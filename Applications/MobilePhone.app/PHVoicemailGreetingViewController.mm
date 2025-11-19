@interface PHVoicemailGreetingViewController
- (PHVoicemailGreetingViewController)init;
- (PHVoicemailGreetingViewController)initWithAccount:(id)a3;
- (PHVoicemailGreetingViewController)initWithCoder:(id)a3;
- (PHVoicemailGreetingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PHVoicemailGreetingViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_selectedCellIndexPath;
- (id)_titleForCellAtIndexPath:(id)a3;
- (id)createGreetingLabelWithText:(id)a3;
- (id)getGreetingPrompt;
- (id)playbackControlsCell;
- (id)sliderCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)cellSelectionStyleForIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancelButtonTapped;
- (void)_saveButtonTapped;
- (void)_selectCell:(id)a3;
- (void)handlePhoneApplicationDeactivatedNotification:(id)a3;
- (void)playStopButtonTapped;
- (void)recordStopButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCustomizedGreetingCell;
- (void)updateDefaultGreetingCell;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)voicemailGreetingAudioControllerDidChangeState:(int64_t)a3;
- (void)voicemailGreetingDidFinishRecording;
- (void)voicemailGreetingDidSave;
- (void)voicemailGreetingDurationChanged:(double)a3;
- (void)voicemailGreetingFailedWithError:(id)a3;
- (void)voicemailGreetingPlayingProgressChanged:(double)a3;
- (void)voicemailGreetingRecordingProgressChanged:(double)a3;
@end

@implementation PHVoicemailGreetingViewController

- (PHVoicemailGreetingViewController)init
{
  [(PHVoicemailGreetingViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHVoicemailGreetingViewController)initWithCoder:(id)a3
{
  [(PHVoicemailGreetingViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHVoicemailGreetingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(PHVoicemailGreetingViewController *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (PHVoicemailGreetingViewController)initWithStyle:(int64_t)a3
{
  [(PHVoicemailGreetingViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHVoicemailGreetingViewController)initWithAccount:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PHVoicemailGreetingViewController;
  v6 = [(PHVoicemailGreetingViewController *)&v12 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = objc_alloc_init(MPAnalyticsLogger);
    analyticsReporter = v7->_analyticsReporter;
    v7->_analyticsReporter = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"handlePhoneApplicationDeactivatedNotification:" name:@"PhoneApplicationDeactivatedNotification" object:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = PHVoicemailGreetingViewController;
  [(PHVoicemailGreetingViewController *)&v31 viewDidLoad];
  v3 = [(PHVoicemailGreetingViewController *)self tableView];
  [v3 setRowHeight:UITableViewAutomaticDimension];

  v4 = [(PHVoicemailGreetingViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"kPHVoicemailGreetingSelectionCellIdentifier"];

  v5 = [(PHVoicemailGreetingViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[PHVoicemailGreetingSliderCell reuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(PHVoicemailGreetingViewController *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"kPHVoicemailGreetingPlaybackCellIdentifier"];

  v9 = [(PHVoicemailGreetingViewController *)self account];
  v10 = [v9 customGreetingSupported];
  if (v10)
  {
    v7 = +[NSBundle mainBundle];
    v11 = [v7 localizedStringForKey:@"GREETING" value:&stru_10028F310 table:@"Voicemail"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PHVoicemailGreetingViewController *)self navigationItem];
  [v12 setTitle:v11];

  if (v10)
  {
  }

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped"];
  v14 = [(PHVoicemailGreetingViewController *)self navigationItem];
  [v14 setLeftBarButtonItem:v13];

  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_saveButtonTapped"];
  [(PHVoicemailGreetingViewController *)self setSaveItem:v15];

  v16 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v16 startAnimating];
  v17 = [[UIBarButtonItem alloc] initWithCustomView:v16];
  [(PHVoicemailGreetingViewController *)self setProgressItem:v17];

  v18 = [(PHVoicemailGreetingViewController *)self saveItem];
  v19 = [(PHVoicemailGreetingViewController *)self navigationItem];
  [v19 setRightBarButtonItem:v18];

  v20 = [(PHVoicemailGreetingViewController *)self isPresentedFromSetup];
  v21 = [(PHVoicemailGreetingViewController *)self navigationItem];
  v22 = [v21 rightBarButtonItem];
  [v22 setEnabled:v20];

  v23 = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
  v24 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:v23];
  v25 = [(PHVoicemailGreetingViewController *)self tableView];
  [v25 setTableHeaderView:v24];

  v26 = [PHVoicemailGreetingModel alloc];
  v27 = [(PHVoicemailGreetingViewController *)self account];
  v28 = [(PHVoicemailGreetingModel *)v26 initWithAccount:v27];
  [(PHVoicemailGreetingViewController *)self setGreetingModel:v28];

  v29 = [(PHVoicemailGreetingViewController *)self greetingModel];
  [v29 setDelegate:self];

  v30 = [(PHVoicemailGreetingViewController *)self greetingModel];
  [v30 fetchGreeting];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PHVoicemailGreetingViewController;
  [(PHVoicemailGreetingViewController *)&v7 viewWillAppear:a3];
  v4 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v5 = [v4 isCustomized];

  v6 = [NSIndexPath indexPathForRow:v5 inSection:0];
  [(PHVoicemailGreetingViewController *)self _selectCell:v6];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PHVoicemailGreetingViewController;
  [(PHVoicemailGreetingViewController *)&v7 viewWillDisappear:a3];
  v4 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v5 = [v4 greetingState];

  if (v5 == 4)
  {
    v6 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v6 stopRecording];
  }
}

- (void)handlePhoneApplicationDeactivatedNotification:(id)a3
{
  v4 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v5 = [v4 greetingState];

  if (v5 == 3)
  {
    v6 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v6 pauseGreeting];
  }

  v7 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v8 = [v7 greetingState];

  if (v8 == 4)
  {
    v9 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v9 stopRecording];
  }

  v10 = [(PHVoicemailGreetingViewController *)self greetingDelegate];

  if (v10)
  {
    v11 = [(PHVoicemailGreetingViewController *)self greetingDelegate];
    [v11 voicemailGreetingViewControllerFinished:self];
  }
}

- (id)sliderCell
{
  v2 = [(PHVoicemailGreetingViewController *)self tableView];
  v3 = [NSIndexPath indexPathForRow:0 inSection:1];
  v4 = [v2 cellForRowAtIndexPath:v3];

  return v4;
}

- (id)playbackControlsCell
{
  v2 = [(PHVoicemailGreetingViewController *)self tableView];
  v3 = [NSIndexPath indexPathForRow:1 inSection:1];
  v4 = [v2 cellForRowAtIndexPath:v3];

  return v4;
}

- (id)createGreetingLabelWithText:(id)a3
{
  v4 = a3;
  v5 = [UILabel alloc];
  v6 = [(PHVoicemailGreetingViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:{0.0, 0.0}];

  [v7 setText:v4];
  [v7 setTextAlignment:1];
  v8 = +[UIColor systemGrayColor];
  [v7 setTextColor:v8];

  v9 = +[UIFont telephonyUISubheadlineShortFont];
  [v7 setFont:v9];

  [v7 sizeToFit];
  [v7 frame];
  [v7 setFrame:?];

  return v7;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 section])
  {
    v7 = 0;
    v8 = v6;
  }

  else
  {
    v8 = [v5 indexPathForSelectedRow];
    v9 = [v5 cellForRowAtIndexPath:v8];
    [v9 setAccessoryType:0];

    v7 = v6;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v31 = a4;
  v6 = [a3 cellForRowAtIndexPath:v31];
  [v6 setSelected:0 animated:1];
  [v6 setAccessoryType:3];
  if ([v31 row] == 1)
  {
    v7 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v7 didSelectCustomizedGreeting];

    v8 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    [v8 setUserInteractionEnabled:1];

    v9 = [(PHVoicemailGreetingViewController *)self greetingModel];
    v10 = [v9 greetingExists];

    v11 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [v11 setUserInteractionEnabled:v10];

    if (v10)
    {
      v12 = [(PHVoicemailGreetingViewController *)self greetingModel];
      v13 = [v12 isCustomized];
    }

    else
    {
      v13 = 0;
    }

    v22 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v23 = [v22 playStopButton];
    [v23 setEnabled:v13];
  }

  else
  {
    if ([v31 row])
    {
      goto LABEL_14;
    }

    v14 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v14 didSelectDefaultGreeting];

    v15 = [(PHVoicemailGreetingViewController *)self greetingModel];
    v16 = [v15 shouldShowPlayButtonForDefaultGreeting];

    v17 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [v17 setUserInteractionEnabled:v16];

    v18 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v19 = [v18 playStopButton];
    [v19 setEnabled:v16];

    v20 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v21 = [v20 recordStopButton];
    [v21 setEnabled:0];
  }

  v24 = [(PHVoicemailGreetingViewController *)self greetingModel];
  if ([v24 greetingState] != 2)
  {

    goto LABEL_12;
  }

  v25 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v26 = [v25 shouldShowSaveButton];

  if ((v26 & 1) == 0)
  {
LABEL_12:
    v27 = [(PHVoicemailGreetingViewController *)self isPresentedFromSetup];
    goto LABEL_13;
  }

  v27 = 1;
LABEL_13:
  v28 = [(PHVoicemailGreetingViewController *)self navigationItem];
  v29 = [v28 rightBarButtonItem];
  [v29 setEnabled:v27];

LABEL_14:
  v30 = [(PHVoicemailGreetingViewController *)self greetingModel];
  [v30 resetPlayerToBeginning];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = 2;
  }

  else if (a4)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(PHVoicemailGreetingViewController *)self account];
    if ([v7 customGreetingSupported])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_titleForCellAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 row];
  if (v6 == 1)
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"CUSTOM_GREETING_TITLE";
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"DEFAULT_GREETING_TITLE";
LABEL_5:
    v10 = [v7 localizedStringForKey:v9 value:&stru_10028F310 table:@"Voicemail"];
LABEL_6:

    goto LABEL_7;
  }

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Asked for table view cell at index path with section %ld row %ld, which is invalid", [v5 section], objc_msgSend(v5, "row"));
  NSLog(@"** TUAssertion failure: %@", v12);

  if (_TUAssertShouldCrashApplication())
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHVoicemailGreetingViewController.m" lineNumber:281 description:{@"Asked for table view cell at index path with section %ld row %ld, which is invalid", objc_msgSend(v5, "section"), objc_msgSend(v5, "row")}];
    v10 = 0;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [v6 section];
  if (v7 == 1)
  {
    v12 = [v6 row];
    v13 = [(PHVoicemailGreetingViewController *)self tableView];
    v14 = v13;
    if (v12 == 1)
    {
      v9 = [v13 dequeueReusableCellWithIdentifier:@"kPHVoicemailGreetingPlaybackCellIdentifier" forIndexPath:v6];

      [v9 setDelegate:self];
    }

    else
    {
      v17 = +[PHVoicemailGreetingSliderCell reuseIdentifier];
      v9 = [v14 dequeueReusableCellWithIdentifier:v17 forIndexPath:v6];
    }

    [v9 setSelectionStyle:0];
    v18 = [(PHVoicemailGreetingViewController *)self account];
    v19 = [v18 customGreetingSupported];

    if ((v19 & 1) == 0)
    {
      v20 = +[UIColor secondarySystemGroupedBackgroundColor];
      [v9 setBackgroundColor:v20];
    }
  }

  else if (v7)
  {
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Asked for table view cell at index path with section %ld row %ld, which is invalid", [v6 section], objc_msgSend(v6, "row"));
    NSLog(@"** TUAssertion failure: %@", v15);

    if (_TUAssertShouldCrashApplication())
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PHVoicemailGreetingViewController.m" lineNumber:309 description:{@"Asked for table view cell at index path with section %ld row %ld, which is invalid", objc_msgSend(v6, "section"), objc_msgSend(v6, "row")}];
    }

    v9 = 0;
  }

  else
  {
    v8 = [(PHVoicemailGreetingViewController *)self tableView];
    v9 = [v8 dequeueReusableCellWithIdentifier:@"kPHVoicemailGreetingSelectionCellIdentifier" forIndexPath:v6];

    v10 = [(PHVoicemailGreetingViewController *)self _titleForCellAtIndexPath:v6];
    v11 = [v9 textLabel];
    [v11 setText:v10];

    [v9 setSelectionStyle:{-[PHVoicemailGreetingViewController cellSelectionStyleForIndexPath:](self, "cellSelectionStyleForIndexPath:", v6)}];
  }

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = a4;
  v5 = [v4 section];
  if (v5 == 1)
  {
    if ([v4 row] == 1)
    {
      +[PHVoicemailGreetingPlaybackCell rowHeight];
      v6 = v9;
    }

    else
    {
      v6 = 43.0;
    }
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v7 _scaledValueForValue:43.0];
      v6 = v8;
    }
  }

  return v6;
}

- (int64_t)cellSelectionStyleForIndexPath:(id)a3
{
  v4 = [a3 row];
  if (v4 == 1)
  {
    v5 = [(PHVoicemailGreetingViewController *)self greetingModel];
    v6 = [v5 isCustomized];
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    v5 = [(PHVoicemailGreetingViewController *)self greetingModel];
    v6 = [v5 isDefault];
  }

  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_selectedCellIndexPath
{
  v3 = [(PHVoicemailGreetingViewController *)self account];
  v4 = [v3 customGreetingSupported];

  if (v4 && (-[PHVoicemailGreetingViewController tableView](self, "tableView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 numberOfRowsInSection:0], v5, v6 >= 1))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [NSIndexPath indexPathForRow:v7 inSection:0];
      v10 = [(PHVoicemailGreetingViewController *)self tableView];
      v11 = [v10 cellForRowAtIndexPath:v9];
      v12 = [v11 accessoryType];

      if (v12 == 3)
      {
        v13 = v9;

        v8 = v13;
      }

      ++v7;
      v14 = [(PHVoicemailGreetingViewController *)self tableView];
      v15 = [v14 numberOfRowsInSection:0];
    }

    while (v15 > v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_cancelButtonTapped
{
  v3 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v4 = [v3 greetingState];

  v5 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v6 = v5;
  if (v4 == 3)
  {
    [v5 pauseGreeting];
  }

  else
  {
    v7 = [v5 greetingState];

    if (v7 != 5)
    {
      goto LABEL_6;
    }

    v6 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v6 saveGreeting];
  }

LABEL_6:
  v8 = [(PHVoicemailGreetingViewController *)self greetingDelegate];
  [v8 voicemailGreetingViewControllerFinished:self];
}

- (void)_saveButtonTapped
{
  v3 = [(PHVoicemailGreetingViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];
  [v4 setEnabled:0];

  v5 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v6 = [v5 greetingState];

  if (v6 == 3)
  {
    v7 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v7 pauseGreeting];
  }

  v8 = [(PHVoicemailGreetingViewController *)self greetingModel];
  [v8 saveGreeting];
}

- (void)playStopButtonTapped
{
  v3 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v4 = [v3 greetingState];

  v5 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v9 = v5;
  if (v4 == 2)
  {
    [v5 playGreeting];

    v6 = +[PHAudioDeviceController sharedAudioDeviceController];
    v7 = [v6 receiverRouteIsPicked];

    v8 = +[PHAudioDeviceController sharedAudioDeviceController];
    v9 = v8;
    if (v7)
    {
      [v8 pickSpeakerRoute];
    }

    else
    {
      [v8 restorePickedRoute];
    }
  }

  else
  {
    [v5 pauseGreeting];
  }
}

- (void)recordStopButtonTapped
{
  v3 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v4 = [v3 greetingState];

  if (v4 == 2)
  {
    v7 = [(PHVoicemailGreetingViewController *)self navigationItem];
    v8 = [v7 rightBarButtonItem];
    [v8 setEnabled:0];

    v9 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v10 = [v9 recordingLabel];
    [v10 setHidden:0];

    v11 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v11 startRecording];
  }

  else
  {
    if (v4 != 4)
    {
      return;
    }

    v5 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [v5 stopRecording];

    v11 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v6 = [v11 recordingLabel];
    [v6 setHidden:1];
  }
}

- (void)voicemailGreetingDidSave
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHVoicemailGreetingAudioController: voicemail greeting did save", v6, 2u);
  }

  v4 = [(PHVoicemailGreetingViewController *)self analyticsReporter];
  [v4 logCustomGreetingUpdated];

  v5 = [(PHVoicemailGreetingViewController *)self greetingDelegate];
  [v5 voicemailGreetingViewControllerFinished:self];
}

- (void)_selectCell:(id)a3
{
  v13 = a3;
  v4 = [(PHVoicemailGreetingViewController *)self tableView];
  v5 = [v4 cellForRowAtIndexPath:v13];

  if (v5)
  {
    v6 = [(PHVoicemailGreetingViewController *)self tableView];
    v7 = [v6 indexPathForSelectedRow];
    v8 = [v13 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [v5 setSelectionStyle:0];
      v9 = [(PHVoicemailGreetingViewController *)self tableView];
      v10 = [(PHVoicemailGreetingViewController *)self tableView:v9 willSelectRowAtIndexPath:v13];

      v11 = [(PHVoicemailGreetingViewController *)self tableView];
      [v11 selectRowAtIndexPath:v13 animated:1 scrollPosition:0];

      v12 = [(PHVoicemailGreetingViewController *)self tableView];
      [(PHVoicemailGreetingViewController *)self tableView:v12 didSelectRowAtIndexPath:v13];

      [v5 setSelectionStyle:3];
    }
  }
}

- (void)updateDefaultGreetingCell
{
  v3 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v4 = [v3 isCallScreeningEnabled];

  if (v4)
  {
    v5 = [(PHVoicemailGreetingViewController *)self greetingModel];
    v6 = [v5 shouldShowPlayButtonForDefaultGreeting];

    v7 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [v7 showTimelineSlider];

    v8 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [v8 setUserInteractionEnabled:v6];

    v9 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    [v9 setUserInteractionEnabled:1];

    v10 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v11 = [v10 playStopButton];
    [v11 setEnabled:v6];

    v12 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v13 = [v12 playStopButton];
    v14 = [UIImage systemImageNamed:@"play.fill"];
    [v13 setImage:v14 forState:0];

    v15 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v16 = [v15 recordStopButton];
    [v16 setEnabled:0];

    v17 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v18 = [v17 recordStopButton];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"RECORD" value:&stru_10028F310 table:@"Voicemail"];
    [v18 setTitle:v20 forState:0];

    v21 = [(PHVoicemailGreetingViewController *)self account];
    LODWORD(v18) = [v21 customGreetingSupported];

    if (v18)
    {
      v22 = [NSIndexPath indexPathForRow:0 inSection:0];
      [(PHVoicemailGreetingViewController *)self _selectCell:v22];
    }

    v31 = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
    v23 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:?];
    v24 = [(PHVoicemailGreetingViewController *)self tableView];
    [v24 setTableHeaderView:v23];
  }

  else
  {
    v25 = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
    v26 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:v25];
    v27 = [(PHVoicemailGreetingViewController *)self tableView];
    [v27 setTableHeaderView:v26];

    v28 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [v28 showProgressView];

    v29 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [v29 setUserInteractionEnabled:0];

    v30 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    [v30 setUserInteractionEnabled:0];

    v31 = [NSIndexPath indexPathForRow:0 inSection:0];
    [(PHVoicemailGreetingViewController *)self _selectCell:?];
  }
}

- (void)updateCustomizedGreetingCell
{
  v3 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v4 = [v3 greetingExists];

  v5 = [(PHVoicemailGreetingViewController *)self sliderCell];
  [v5 showTimelineSlider];

  v6 = [(PHVoicemailGreetingViewController *)self sliderCell];
  [v6 setUserInteractionEnabled:v4];

  v7 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  v8 = [v7 playStopButton];
  [v8 setEnabled:v4];

  v9 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  v10 = [v9 playStopButton];
  v11 = [UIImage systemImageNamed:@"play.fill"];
  [v10 setImage:v11 forState:0];

  v12 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  v13 = [v12 recordStopButton];
  [v13 setEnabled:1];

  v14 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  v15 = [v14 recordStopButton];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"RECORD" value:&stru_10028F310 table:@"Voicemail"];
  [v15 setTitle:v17 forState:0];

  v18 = [NSIndexPath indexPathForRow:1 inSection:0];
  [(PHVoicemailGreetingViewController *)self _selectCell:v18];

  v21 = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
  v19 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:v21];
  v20 = [(PHVoicemailGreetingViewController *)self tableView];
  [v20 setTableHeaderView:v19];
}

- (void)voicemailGreetingAudioControllerDidChangeState:(int64_t)a3
{
  v5 = [(PHVoicemailGreetingViewController *)self tableView];
  [v5 setUserInteractionEnabled:1];

  v6 = [(PHVoicemailGreetingViewController *)self tableView];
  [v6 setAllowsSelection:1];

  v7 = [(PHVoicemailGreetingViewController *)self account];
  v8 = [v7 customGreetingSupported];
  if (v8)
  {
    v9 = [(PHVoicemailGreetingViewController *)self saveItem];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PHVoicemailGreetingViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];

  if (v8)
  {
  }

  v11 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  v12 = [v11 recordStopButton];
  v13 = [(PHVoicemailGreetingViewController *)self account];
  [v12 setHidden:{objc_msgSend(v13, "customGreetingSupported") ^ 1}];

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        if (a3 != 5)
        {
          return;
        }

        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"SAVING_GREETING" value:&stru_10028F310 table:@"Voicemail"];
        v18 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:v17];
        v19 = [(PHVoicemailGreetingViewController *)self tableView];
        [v19 setTableHeaderView:v18];

        v52 = [(PHVoicemailGreetingViewController *)self tableView];
        [v52 setUserInteractionEnabled:0];
        goto LABEL_34;
      }

      v38 = [(PHVoicemailGreetingViewController *)self sliderCell];
      [v38 showProgressView];

      v39 = [(PHVoicemailGreetingViewController *)self tableView];
      [v39 setAllowsSelection:0];

      v40 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
      v41 = [v40 playStopButton];
      v42 = [UIImage systemImageNamed:@"play.fill"];
      [v41 setImage:v42 forState:0];

      v43 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
      v44 = [v43 playStopButton];
      [v44 setEnabled:0];

      v52 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
      v45 = [v52 recordStopButton];
      v46 = +[NSBundle mainBundle];
      v47 = [v46 localizedStringForKey:@"STOP" value:&stru_10028F310 table:@"Voicemail"];
      [v45 setTitle:v47 forState:0];

      goto LABEL_33;
    }

    v26 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [v26 showTimelineSlider];

    v27 = [(PHVoicemailGreetingViewController *)self tableView];
    [v27 setAllowsSelection:0];

    v28 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v29 = [v28 playStopButton];
    v30 = [UIImage systemImageNamed:@"pause.fill"];
    [v29 setImage:v30 forState:0];

LABEL_32:
    v52 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v45 = [v52 recordStopButton];
    [v45 setEnabled:0];
LABEL_33:

    goto LABEL_34;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v14 = [(PHVoicemailGreetingViewController *)self greetingModel];
        v15 = [v14 isDefault];

        if (v15)
        {

          [(PHVoicemailGreetingViewController *)self updateDefaultGreetingCell];
        }

        else
        {
          v48 = [(PHVoicemailGreetingViewController *)self greetingModel];
          v49 = [v48 isCustomized];

          if (v49)
          {

            [(PHVoicemailGreetingViewController *)self updateCustomizedGreetingCell];
          }
        }
      }

      return;
    }

    v31 = [(PHVoicemailGreetingViewController *)self tableView];
    [v31 setUserInteractionEnabled:0];

    v32 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [v32 showProgressView];

    v33 = [(PHVoicemailGreetingViewController *)self progressItem];
    v34 = [(PHVoicemailGreetingViewController *)self navigationItem];
    [v34 setRightBarButtonItem:v33];

    v35 = [(PHVoicemailGreetingViewController *)self account];
    v36 = [v35 customGreetingSupported];
    if (v36)
    {
      v12 = +[NSBundle mainBundle];
      v37 = [v12 localizedStringForKey:@"RETRIEVING_GREETING" value:&stru_10028F310 table:@"Voicemail"];
    }

    else
    {
      v37 = 0;
    }

    v50 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:v37];
    v51 = [(PHVoicemailGreetingViewController *)self tableView];
    [v51 setTableHeaderView:v50];

    if (v36)
    {
    }

    v28 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    v29 = [v28 playStopButton];
    [v29 setEnabled:0];
    goto LABEL_32;
  }

  v20 = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
  v21 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:v20];
  v22 = [(PHVoicemailGreetingViewController *)self tableView];
  [v22 setTableHeaderView:v21];

  v23 = [(PHVoicemailGreetingViewController *)self sliderCell];
  [v23 showProgressView];

  v24 = [(PHVoicemailGreetingViewController *)self sliderCell];
  [v24 setUserInteractionEnabled:0];

  v25 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  [v25 setUserInteractionEnabled:0];

  v52 = [NSIndexPath indexPathForRow:0 inSection:0];
  [(PHVoicemailGreetingViewController *)self _selectCell:v52];
LABEL_34:
}

- (void)voicemailGreetingPlayingProgressChanged:(double)a3
{
  v5 = [(PHVoicemailGreetingViewController *)self sliderCell];
  v4 = [v5 timelineSlider];
  [v4 setElapsedTime:a3];
}

- (void)voicemailGreetingFailedWithError:(id)a3
{
  v4 = a3;
  v14 = [v4 localizedDescription];
  v5 = [v4 localizedFailureReason];

  v6 = [UIAlertController alertControllerWithTitle:v14 message:v5 preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_10028F310 table:@"Voicemail"];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  [(PHVoicemailGreetingViewController *)self presentViewController:v6 animated:1 completion:0];
  if ([(PHVoicemailGreetingViewController *)self hasRecordedNewGreeting])
  {
    v10 = [(PHVoicemailGreetingViewController *)self navigationItem];
    v11 = [v10 rightBarButtonItem];
    [v11 setEnabled:1];
  }

  v12 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  v13 = [v12 recordingLabel];
  [v13 setHidden:1];
}

- (void)voicemailGreetingRecordingProgressChanged:(double)a3
{
  v3 = a3;
  v6 = [(PHVoicemailGreetingViewController *)self sliderCell];
  v4 = [v6 progressView];
  *&v5 = v3;
  [v4 setProgress:v5];
}

- (void)voicemailGreetingDurationChanged:(double)a3
{
  v5 = [(PHVoicemailGreetingViewController *)self sliderCell];
  v4 = [v5 timelineSlider];
  [v4 setDuration:a3];
}

- (void)voicemailGreetingDidFinishRecording
{
  v3 = [(PHVoicemailGreetingViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];
  [v4 setEnabled:1];

  v5 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  v6 = [v5 recordingLabel];
  [v6 setHidden:1];

  [(PHVoicemailGreetingViewController *)self setHasRecordedNewGreeting:1];
}

- (id)getGreetingPrompt
{
  v2 = [(PHVoicemailGreetingViewController *)self account];
  if ([v2 customGreetingSupported])
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"GREETING_PROMPT" value:&stru_10028F310 table:@"Voicemail"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end