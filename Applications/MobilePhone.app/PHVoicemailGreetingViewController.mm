@interface PHVoicemailGreetingViewController
- (PHVoicemailGreetingViewController)init;
- (PHVoicemailGreetingViewController)initWithAccount:(id)account;
- (PHVoicemailGreetingViewController)initWithCoder:(id)coder;
- (PHVoicemailGreetingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PHVoicemailGreetingViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_selectedCellIndexPath;
- (id)_titleForCellAtIndexPath:(id)path;
- (id)createGreetingLabelWithText:(id)text;
- (id)getGreetingPrompt;
- (id)playbackControlsCell;
- (id)sliderCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)cellSelectionStyleForIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancelButtonTapped;
- (void)_saveButtonTapped;
- (void)_selectCell:(id)cell;
- (void)handlePhoneApplicationDeactivatedNotification:(id)notification;
- (void)playStopButtonTapped;
- (void)recordStopButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCustomizedGreetingCell;
- (void)updateDefaultGreetingCell;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)voicemailGreetingAudioControllerDidChangeState:(int64_t)state;
- (void)voicemailGreetingDidFinishRecording;
- (void)voicemailGreetingDidSave;
- (void)voicemailGreetingDurationChanged:(double)changed;
- (void)voicemailGreetingFailedWithError:(id)error;
- (void)voicemailGreetingPlayingProgressChanged:(double)changed;
- (void)voicemailGreetingRecordingProgressChanged:(double)changed;
@end

@implementation PHVoicemailGreetingViewController

- (PHVoicemailGreetingViewController)init
{
  [(PHVoicemailGreetingViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHVoicemailGreetingViewController)initWithCoder:(id)coder
{
  [(PHVoicemailGreetingViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHVoicemailGreetingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(PHVoicemailGreetingViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (PHVoicemailGreetingViewController)initWithStyle:(int64_t)style
{
  [(PHVoicemailGreetingViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHVoicemailGreetingViewController)initWithAccount:(id)account
{
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = PHVoicemailGreetingViewController;
  v6 = [(PHVoicemailGreetingViewController *)&v12 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
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
  tableView = [(PHVoicemailGreetingViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(PHVoicemailGreetingViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"kPHVoicemailGreetingSelectionCellIdentifier"];

  tableView3 = [(PHVoicemailGreetingViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[PHVoicemailGreetingSliderCell reuseIdentifier];
  [tableView3 registerClass:v6 forCellReuseIdentifier:v7];

  tableView4 = [(PHVoicemailGreetingViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"kPHVoicemailGreetingPlaybackCellIdentifier"];

  account = [(PHVoicemailGreetingViewController *)self account];
  customGreetingSupported = [account customGreetingSupported];
  if (customGreetingSupported)
  {
    v7 = +[NSBundle mainBundle];
    v11 = [v7 localizedStringForKey:@"GREETING" value:&stru_10028F310 table:@"Voicemail"];
  }

  else
  {
    v11 = 0;
  }

  navigationItem = [(PHVoicemailGreetingViewController *)self navigationItem];
  [navigationItem setTitle:v11];

  if (customGreetingSupported)
  {
  }

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped"];
  navigationItem2 = [(PHVoicemailGreetingViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v13];

  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_saveButtonTapped"];
  [(PHVoicemailGreetingViewController *)self setSaveItem:v15];

  v16 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v16 startAnimating];
  v17 = [[UIBarButtonItem alloc] initWithCustomView:v16];
  [(PHVoicemailGreetingViewController *)self setProgressItem:v17];

  saveItem = [(PHVoicemailGreetingViewController *)self saveItem];
  navigationItem3 = [(PHVoicemailGreetingViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:saveItem];

  isPresentedFromSetup = [(PHVoicemailGreetingViewController *)self isPresentedFromSetup];
  navigationItem4 = [(PHVoicemailGreetingViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setEnabled:isPresentedFromSetup];

  getGreetingPrompt = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
  v24 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:getGreetingPrompt];
  tableView5 = [(PHVoicemailGreetingViewController *)self tableView];
  [tableView5 setTableHeaderView:v24];

  v26 = [PHVoicemailGreetingModel alloc];
  account2 = [(PHVoicemailGreetingViewController *)self account];
  v28 = [(PHVoicemailGreetingModel *)v26 initWithAccount:account2];
  [(PHVoicemailGreetingViewController *)self setGreetingModel:v28];

  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  [greetingModel setDelegate:self];

  greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
  [greetingModel2 fetchGreeting];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PHVoicemailGreetingViewController;
  [(PHVoicemailGreetingViewController *)&v7 viewWillAppear:appear];
  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  isCustomized = [greetingModel isCustomized];

  v6 = [NSIndexPath indexPathForRow:isCustomized inSection:0];
  [(PHVoicemailGreetingViewController *)self _selectCell:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PHVoicemailGreetingViewController;
  [(PHVoicemailGreetingViewController *)&v7 viewWillDisappear:disappear];
  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingState = [greetingModel greetingState];

  if (greetingState == 4)
  {
    greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel2 stopRecording];
  }
}

- (void)handlePhoneApplicationDeactivatedNotification:(id)notification
{
  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingState = [greetingModel greetingState];

  if (greetingState == 3)
  {
    greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel2 pauseGreeting];
  }

  greetingModel3 = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingState2 = [greetingModel3 greetingState];

  if (greetingState2 == 4)
  {
    greetingModel4 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel4 stopRecording];
  }

  greetingDelegate = [(PHVoicemailGreetingViewController *)self greetingDelegate];

  if (greetingDelegate)
  {
    greetingDelegate2 = [(PHVoicemailGreetingViewController *)self greetingDelegate];
    [greetingDelegate2 voicemailGreetingViewControllerFinished:self];
  }
}

- (id)sliderCell
{
  tableView = [(PHVoicemailGreetingViewController *)self tableView];
  v3 = [NSIndexPath indexPathForRow:0 inSection:1];
  v4 = [tableView cellForRowAtIndexPath:v3];

  return v4;
}

- (id)playbackControlsCell
{
  tableView = [(PHVoicemailGreetingViewController *)self tableView];
  v3 = [NSIndexPath indexPathForRow:1 inSection:1];
  v4 = [tableView cellForRowAtIndexPath:v3];

  return v4;
}

- (id)createGreetingLabelWithText:(id)text
{
  textCopy = text;
  v5 = [UILabel alloc];
  view = [(PHVoicemailGreetingViewController *)self view];
  [view bounds];
  v7 = [v5 initWithFrame:{0.0, 0.0}];

  [v7 setText:textCopy];
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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v7 = 0;
    indexPathForSelectedRow = pathCopy;
  }

  else
  {
    indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
    v9 = [viewCopy cellForRowAtIndexPath:indexPathForSelectedRow];
    [v9 setAccessoryType:0];

    v7 = pathCopy;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  [v6 setSelected:0 animated:1];
  [v6 setAccessoryType:3];
  if ([pathCopy row] == 1)
  {
    greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel didSelectCustomizedGreeting];

    playbackControlsCell = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    [playbackControlsCell setUserInteractionEnabled:1];

    greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
    greetingExists = [greetingModel2 greetingExists];

    sliderCell = [(PHVoicemailGreetingViewController *)self sliderCell];
    [sliderCell setUserInteractionEnabled:greetingExists];

    if (greetingExists)
    {
      greetingModel3 = [(PHVoicemailGreetingViewController *)self greetingModel];
      isCustomized = [greetingModel3 isCustomized];
    }

    else
    {
      isCustomized = 0;
    }

    playbackControlsCell2 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    playStopButton = [playbackControlsCell2 playStopButton];
    [playStopButton setEnabled:isCustomized];
  }

  else
  {
    if ([pathCopy row])
    {
      goto LABEL_14;
    }

    greetingModel4 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel4 didSelectDefaultGreeting];

    greetingModel5 = [(PHVoicemailGreetingViewController *)self greetingModel];
    shouldShowPlayButtonForDefaultGreeting = [greetingModel5 shouldShowPlayButtonForDefaultGreeting];

    sliderCell2 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [sliderCell2 setUserInteractionEnabled:shouldShowPlayButtonForDefaultGreeting];

    playbackControlsCell3 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    playStopButton2 = [playbackControlsCell3 playStopButton];
    [playStopButton2 setEnabled:shouldShowPlayButtonForDefaultGreeting];

    playbackControlsCell4 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    recordStopButton = [playbackControlsCell4 recordStopButton];
    [recordStopButton setEnabled:0];
  }

  greetingModel6 = [(PHVoicemailGreetingViewController *)self greetingModel];
  if ([greetingModel6 greetingState] != 2)
  {

    goto LABEL_12;
  }

  greetingModel7 = [(PHVoicemailGreetingViewController *)self greetingModel];
  shouldShowSaveButton = [greetingModel7 shouldShowSaveButton];

  if ((shouldShowSaveButton & 1) == 0)
  {
LABEL_12:
    isPresentedFromSetup = [(PHVoicemailGreetingViewController *)self isPresentedFromSetup];
    goto LABEL_13;
  }

  isPresentedFromSetup = 1;
LABEL_13:
  navigationItem = [(PHVoicemailGreetingViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:isPresentedFromSetup];

LABEL_14:
  greetingModel8 = [(PHVoicemailGreetingViewController *)self greetingModel];
  [greetingModel8 resetPlayerToBeginning];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    v8 = 2;
  }

  else if (section)
  {
    v8 = 0;
  }

  else
  {
    account = [(PHVoicemailGreetingViewController *)self account];
    if ([account customGreetingSupported])
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

- (id)_titleForCellAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
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

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Asked for table view cell at index path with section %ld row %ld, which is invalid", [pathCopy section], objc_msgSend(pathCopy, "row"));
  NSLog(@"** TUAssertion failure: %@", v12);

  if (_TUAssertShouldCrashApplication())
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHVoicemailGreetingViewController.m" lineNumber:281 description:{@"Asked for table view cell at index path with section %ld row %ld, which is invalid", objc_msgSend(pathCopy, "section"), objc_msgSend(pathCopy, "row")}];
    v10 = 0;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == 1)
  {
    v12 = [pathCopy row];
    tableView = [(PHVoicemailGreetingViewController *)self tableView];
    v14 = tableView;
    if (v12 == 1)
    {
      v9 = [tableView dequeueReusableCellWithIdentifier:@"kPHVoicemailGreetingPlaybackCellIdentifier" forIndexPath:pathCopy];

      [v9 setDelegate:self];
    }

    else
    {
      v17 = +[PHVoicemailGreetingSliderCell reuseIdentifier];
      v9 = [v14 dequeueReusableCellWithIdentifier:v17 forIndexPath:pathCopy];
    }

    [v9 setSelectionStyle:0];
    account = [(PHVoicemailGreetingViewController *)self account];
    customGreetingSupported = [account customGreetingSupported];

    if ((customGreetingSupported & 1) == 0)
    {
      v20 = +[UIColor secondarySystemGroupedBackgroundColor];
      [v9 setBackgroundColor:v20];
    }
  }

  else if (section)
  {
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Asked for table view cell at index path with section %ld row %ld, which is invalid", [pathCopy section], objc_msgSend(pathCopy, "row"));
    NSLog(@"** TUAssertion failure: %@", v15);

    if (_TUAssertShouldCrashApplication())
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PHVoicemailGreetingViewController.m" lineNumber:309 description:{@"Asked for table view cell at index path with section %ld row %ld, which is invalid", objc_msgSend(pathCopy, "section"), objc_msgSend(pathCopy, "row")}];
    }

    v9 = 0;
  }

  else
  {
    tableView2 = [(PHVoicemailGreetingViewController *)self tableView];
    v9 = [tableView2 dequeueReusableCellWithIdentifier:@"kPHVoicemailGreetingSelectionCellIdentifier" forIndexPath:pathCopy];

    v10 = [(PHVoicemailGreetingViewController *)self _titleForCellAtIndexPath:pathCopy];
    textLabel = [v9 textLabel];
    [textLabel setText:v10];

    [v9 setSelectionStyle:{-[PHVoicemailGreetingViewController cellSelectionStyleForIndexPath:](self, "cellSelectionStyleForIndexPath:", pathCopy)}];
  }

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == 1)
  {
    if ([pathCopy row] == 1)
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
    if (!section)
    {
      v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v7 _scaledValueForValue:43.0];
      v6 = v8;
    }
  }

  return v6;
}

- (int64_t)cellSelectionStyleForIndexPath:(id)path
{
  v4 = [path row];
  if (v4 == 1)
  {
    greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
    isCustomized = [greetingModel isCustomized];
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
    isCustomized = [greetingModel isDefault];
  }

  if (isCustomized)
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
  account = [(PHVoicemailGreetingViewController *)self account];
  customGreetingSupported = [account customGreetingSupported];

  if (customGreetingSupported && (-[PHVoicemailGreetingViewController tableView](self, "tableView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 numberOfRowsInSection:0], v5, v6 >= 1))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [NSIndexPath indexPathForRow:v7 inSection:0];
      tableView = [(PHVoicemailGreetingViewController *)self tableView];
      v11 = [tableView cellForRowAtIndexPath:v9];
      accessoryType = [v11 accessoryType];

      if (accessoryType == 3)
      {
        v13 = v9;

        v8 = v13;
      }

      ++v7;
      tableView2 = [(PHVoicemailGreetingViewController *)self tableView];
      v15 = [tableView2 numberOfRowsInSection:0];
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
  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingState = [greetingModel greetingState];

  greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingModel3 = greetingModel2;
  if (greetingState == 3)
  {
    [greetingModel2 pauseGreeting];
  }

  else
  {
    greetingState2 = [greetingModel2 greetingState];

    if (greetingState2 != 5)
    {
      goto LABEL_6;
    }

    greetingModel3 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel3 saveGreeting];
  }

LABEL_6:
  greetingDelegate = [(PHVoicemailGreetingViewController *)self greetingDelegate];
  [greetingDelegate voicemailGreetingViewControllerFinished:self];
}

- (void)_saveButtonTapped
{
  navigationItem = [(PHVoicemailGreetingViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingState = [greetingModel greetingState];

  if (greetingState == 3)
  {
    greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel2 pauseGreeting];
  }

  greetingModel3 = [(PHVoicemailGreetingViewController *)self greetingModel];
  [greetingModel3 saveGreeting];
}

- (void)playStopButtonTapped
{
  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingState = [greetingModel greetingState];

  greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
  v9 = greetingModel2;
  if (greetingState == 2)
  {
    [greetingModel2 playGreeting];

    v6 = +[PHAudioDeviceController sharedAudioDeviceController];
    receiverRouteIsPicked = [v6 receiverRouteIsPicked];

    v8 = +[PHAudioDeviceController sharedAudioDeviceController];
    v9 = v8;
    if (receiverRouteIsPicked)
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
    [greetingModel2 pauseGreeting];
  }
}

- (void)recordStopButtonTapped
{
  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingState = [greetingModel greetingState];

  if (greetingState == 2)
  {
    navigationItem = [(PHVoicemailGreetingViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

    playbackControlsCell = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    recordingLabel = [playbackControlsCell recordingLabel];
    [recordingLabel setHidden:0];

    greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel2 startRecording];
  }

  else
  {
    if (greetingState != 4)
    {
      return;
    }

    greetingModel3 = [(PHVoicemailGreetingViewController *)self greetingModel];
    [greetingModel3 stopRecording];

    greetingModel2 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    recordingLabel2 = [greetingModel2 recordingLabel];
    [recordingLabel2 setHidden:1];
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

  analyticsReporter = [(PHVoicemailGreetingViewController *)self analyticsReporter];
  [analyticsReporter logCustomGreetingUpdated];

  greetingDelegate = [(PHVoicemailGreetingViewController *)self greetingDelegate];
  [greetingDelegate voicemailGreetingViewControllerFinished:self];
}

- (void)_selectCell:(id)cell
{
  cellCopy = cell;
  tableView = [(PHVoicemailGreetingViewController *)self tableView];
  v5 = [tableView cellForRowAtIndexPath:cellCopy];

  if (v5)
  {
    tableView2 = [(PHVoicemailGreetingViewController *)self tableView];
    indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
    v8 = [cellCopy isEqual:indexPathForSelectedRow];

    if ((v8 & 1) == 0)
    {
      [v5 setSelectionStyle:0];
      tableView3 = [(PHVoicemailGreetingViewController *)self tableView];
      v10 = [(PHVoicemailGreetingViewController *)self tableView:tableView3 willSelectRowAtIndexPath:cellCopy];

      tableView4 = [(PHVoicemailGreetingViewController *)self tableView];
      [tableView4 selectRowAtIndexPath:cellCopy animated:1 scrollPosition:0];

      tableView5 = [(PHVoicemailGreetingViewController *)self tableView];
      [(PHVoicemailGreetingViewController *)self tableView:tableView5 didSelectRowAtIndexPath:cellCopy];

      [v5 setSelectionStyle:3];
    }
  }
}

- (void)updateDefaultGreetingCell
{
  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  isCallScreeningEnabled = [greetingModel isCallScreeningEnabled];

  if (isCallScreeningEnabled)
  {
    greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
    shouldShowPlayButtonForDefaultGreeting = [greetingModel2 shouldShowPlayButtonForDefaultGreeting];

    sliderCell = [(PHVoicemailGreetingViewController *)self sliderCell];
    [sliderCell showTimelineSlider];

    sliderCell2 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [sliderCell2 setUserInteractionEnabled:shouldShowPlayButtonForDefaultGreeting];

    playbackControlsCell = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    [playbackControlsCell setUserInteractionEnabled:1];

    playbackControlsCell2 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    playStopButton = [playbackControlsCell2 playStopButton];
    [playStopButton setEnabled:shouldShowPlayButtonForDefaultGreeting];

    playbackControlsCell3 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    playStopButton2 = [playbackControlsCell3 playStopButton];
    v14 = [UIImage systemImageNamed:@"play.fill"];
    [playStopButton2 setImage:v14 forState:0];

    playbackControlsCell4 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    recordStopButton = [playbackControlsCell4 recordStopButton];
    [recordStopButton setEnabled:0];

    playbackControlsCell5 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    recordStopButton2 = [playbackControlsCell5 recordStopButton];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"RECORD" value:&stru_10028F310 table:@"Voicemail"];
    [recordStopButton2 setTitle:v20 forState:0];

    account = [(PHVoicemailGreetingViewController *)self account];
    LODWORD(recordStopButton2) = [account customGreetingSupported];

    if (recordStopButton2)
    {
      v22 = [NSIndexPath indexPathForRow:0 inSection:0];
      [(PHVoicemailGreetingViewController *)self _selectCell:v22];
    }

    getGreetingPrompt = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
    v23 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:?];
    tableView = [(PHVoicemailGreetingViewController *)self tableView];
    [tableView setTableHeaderView:v23];
  }

  else
  {
    getGreetingPrompt2 = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
    v26 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:getGreetingPrompt2];
    tableView2 = [(PHVoicemailGreetingViewController *)self tableView];
    [tableView2 setTableHeaderView:v26];

    sliderCell3 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [sliderCell3 showProgressView];

    sliderCell4 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [sliderCell4 setUserInteractionEnabled:0];

    playbackControlsCell6 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    [playbackControlsCell6 setUserInteractionEnabled:0];

    getGreetingPrompt = [NSIndexPath indexPathForRow:0 inSection:0];
    [(PHVoicemailGreetingViewController *)self _selectCell:?];
  }
}

- (void)updateCustomizedGreetingCell
{
  greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
  greetingExists = [greetingModel greetingExists];

  sliderCell = [(PHVoicemailGreetingViewController *)self sliderCell];
  [sliderCell showTimelineSlider];

  sliderCell2 = [(PHVoicemailGreetingViewController *)self sliderCell];
  [sliderCell2 setUserInteractionEnabled:greetingExists];

  playbackControlsCell = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  playStopButton = [playbackControlsCell playStopButton];
  [playStopButton setEnabled:greetingExists];

  playbackControlsCell2 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  playStopButton2 = [playbackControlsCell2 playStopButton];
  v11 = [UIImage systemImageNamed:@"play.fill"];
  [playStopButton2 setImage:v11 forState:0];

  playbackControlsCell3 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  recordStopButton = [playbackControlsCell3 recordStopButton];
  [recordStopButton setEnabled:1];

  playbackControlsCell4 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  recordStopButton2 = [playbackControlsCell4 recordStopButton];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"RECORD" value:&stru_10028F310 table:@"Voicemail"];
  [recordStopButton2 setTitle:v17 forState:0];

  v18 = [NSIndexPath indexPathForRow:1 inSection:0];
  [(PHVoicemailGreetingViewController *)self _selectCell:v18];

  getGreetingPrompt = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
  v19 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:getGreetingPrompt];
  tableView = [(PHVoicemailGreetingViewController *)self tableView];
  [tableView setTableHeaderView:v19];
}

- (void)voicemailGreetingAudioControllerDidChangeState:(int64_t)state
{
  tableView = [(PHVoicemailGreetingViewController *)self tableView];
  [tableView setUserInteractionEnabled:1];

  tableView2 = [(PHVoicemailGreetingViewController *)self tableView];
  [tableView2 setAllowsSelection:1];

  account = [(PHVoicemailGreetingViewController *)self account];
  customGreetingSupported = [account customGreetingSupported];
  if (customGreetingSupported)
  {
    saveItem = [(PHVoicemailGreetingViewController *)self saveItem];
  }

  else
  {
    saveItem = 0;
  }

  navigationItem = [(PHVoicemailGreetingViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:saveItem];

  if (customGreetingSupported)
  {
  }

  playbackControlsCell = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  recordStopButton = [playbackControlsCell recordStopButton];
  account2 = [(PHVoicemailGreetingViewController *)self account];
  [recordStopButton setHidden:{objc_msgSend(account2, "customGreetingSupported") ^ 1}];

  if (state > 2)
  {
    if (state != 3)
    {
      if (state != 4)
      {
        if (state != 5)
        {
          return;
        }

        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"SAVING_GREETING" value:&stru_10028F310 table:@"Voicemail"];
        v18 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:v17];
        tableView3 = [(PHVoicemailGreetingViewController *)self tableView];
        [tableView3 setTableHeaderView:v18];

        tableView4 = [(PHVoicemailGreetingViewController *)self tableView];
        [tableView4 setUserInteractionEnabled:0];
        goto LABEL_34;
      }

      sliderCell = [(PHVoicemailGreetingViewController *)self sliderCell];
      [sliderCell showProgressView];

      tableView5 = [(PHVoicemailGreetingViewController *)self tableView];
      [tableView5 setAllowsSelection:0];

      playbackControlsCell2 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
      playStopButton = [playbackControlsCell2 playStopButton];
      v42 = [UIImage systemImageNamed:@"play.fill"];
      [playStopButton setImage:v42 forState:0];

      playbackControlsCell3 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
      playStopButton2 = [playbackControlsCell3 playStopButton];
      [playStopButton2 setEnabled:0];

      tableView4 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
      recordStopButton2 = [tableView4 recordStopButton];
      v46 = +[NSBundle mainBundle];
      v47 = [v46 localizedStringForKey:@"STOP" value:&stru_10028F310 table:@"Voicemail"];
      [recordStopButton2 setTitle:v47 forState:0];

      goto LABEL_33;
    }

    sliderCell2 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [sliderCell2 showTimelineSlider];

    tableView6 = [(PHVoicemailGreetingViewController *)self tableView];
    [tableView6 setAllowsSelection:0];

    playbackControlsCell4 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    playStopButton3 = [playbackControlsCell4 playStopButton];
    v30 = [UIImage systemImageNamed:@"pause.fill"];
    [playStopButton3 setImage:v30 forState:0];

LABEL_32:
    tableView4 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    recordStopButton2 = [tableView4 recordStopButton];
    [recordStopButton2 setEnabled:0];
LABEL_33:

    goto LABEL_34;
  }

  if (state)
  {
    if (state != 1)
    {
      if (state == 2)
      {
        greetingModel = [(PHVoicemailGreetingViewController *)self greetingModel];
        isDefault = [greetingModel isDefault];

        if (isDefault)
        {

          [(PHVoicemailGreetingViewController *)self updateDefaultGreetingCell];
        }

        else
        {
          greetingModel2 = [(PHVoicemailGreetingViewController *)self greetingModel];
          isCustomized = [greetingModel2 isCustomized];

          if (isCustomized)
          {

            [(PHVoicemailGreetingViewController *)self updateCustomizedGreetingCell];
          }
        }
      }

      return;
    }

    tableView7 = [(PHVoicemailGreetingViewController *)self tableView];
    [tableView7 setUserInteractionEnabled:0];

    sliderCell3 = [(PHVoicemailGreetingViewController *)self sliderCell];
    [sliderCell3 showProgressView];

    progressItem = [(PHVoicemailGreetingViewController *)self progressItem];
    navigationItem2 = [(PHVoicemailGreetingViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:progressItem];

    account3 = [(PHVoicemailGreetingViewController *)self account];
    customGreetingSupported2 = [account3 customGreetingSupported];
    if (customGreetingSupported2)
    {
      recordStopButton = +[NSBundle mainBundle];
      v37 = [recordStopButton localizedStringForKey:@"RETRIEVING_GREETING" value:&stru_10028F310 table:@"Voicemail"];
    }

    else
    {
      v37 = 0;
    }

    v50 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:v37];
    tableView8 = [(PHVoicemailGreetingViewController *)self tableView];
    [tableView8 setTableHeaderView:v50];

    if (customGreetingSupported2)
    {
    }

    playbackControlsCell4 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
    playStopButton3 = [playbackControlsCell4 playStopButton];
    [playStopButton3 setEnabled:0];
    goto LABEL_32;
  }

  getGreetingPrompt = [(PHVoicemailGreetingViewController *)self getGreetingPrompt];
  v21 = [(PHVoicemailGreetingViewController *)self createGreetingLabelWithText:getGreetingPrompt];
  tableView9 = [(PHVoicemailGreetingViewController *)self tableView];
  [tableView9 setTableHeaderView:v21];

  sliderCell4 = [(PHVoicemailGreetingViewController *)self sliderCell];
  [sliderCell4 showProgressView];

  sliderCell5 = [(PHVoicemailGreetingViewController *)self sliderCell];
  [sliderCell5 setUserInteractionEnabled:0];

  playbackControlsCell5 = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  [playbackControlsCell5 setUserInteractionEnabled:0];

  tableView4 = [NSIndexPath indexPathForRow:0 inSection:0];
  [(PHVoicemailGreetingViewController *)self _selectCell:tableView4];
LABEL_34:
}

- (void)voicemailGreetingPlayingProgressChanged:(double)changed
{
  sliderCell = [(PHVoicemailGreetingViewController *)self sliderCell];
  timelineSlider = [sliderCell timelineSlider];
  [timelineSlider setElapsedTime:changed];
}

- (void)voicemailGreetingFailedWithError:(id)error
{
  errorCopy = error;
  localizedDescription = [errorCopy localizedDescription];
  localizedFailureReason = [errorCopy localizedFailureReason];

  v6 = [UIAlertController alertControllerWithTitle:localizedDescription message:localizedFailureReason preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_10028F310 table:@"Voicemail"];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  [(PHVoicemailGreetingViewController *)self presentViewController:v6 animated:1 completion:0];
  if ([(PHVoicemailGreetingViewController *)self hasRecordedNewGreeting])
  {
    navigationItem = [(PHVoicemailGreetingViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];
  }

  playbackControlsCell = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  recordingLabel = [playbackControlsCell recordingLabel];
  [recordingLabel setHidden:1];
}

- (void)voicemailGreetingRecordingProgressChanged:(double)changed
{
  changedCopy = changed;
  sliderCell = [(PHVoicemailGreetingViewController *)self sliderCell];
  progressView = [sliderCell progressView];
  *&v5 = changedCopy;
  [progressView setProgress:v5];
}

- (void)voicemailGreetingDurationChanged:(double)changed
{
  sliderCell = [(PHVoicemailGreetingViewController *)self sliderCell];
  timelineSlider = [sliderCell timelineSlider];
  [timelineSlider setDuration:changed];
}

- (void)voicemailGreetingDidFinishRecording
{
  navigationItem = [(PHVoicemailGreetingViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  playbackControlsCell = [(PHVoicemailGreetingViewController *)self playbackControlsCell];
  recordingLabel = [playbackControlsCell recordingLabel];
  [recordingLabel setHidden:1];

  [(PHVoicemailGreetingViewController *)self setHasRecordedNewGreeting:1];
}

- (id)getGreetingPrompt
{
  account = [(PHVoicemailGreetingViewController *)self account];
  if ([account customGreetingSupported])
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