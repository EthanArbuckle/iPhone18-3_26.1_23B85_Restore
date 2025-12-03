@interface PersonalAudioStimuliViewController
- (PersonalAudioStimuliViewController)initWithEnrollmentNode:(id)node previousNode:(id)previousNode andDelegate:(id)delegate;
- (int64_t)contentViewLayout;
- (void)_startPlayingStimuli;
- (void)audioSessionWasInterrupted:(id)interrupted;
- (void)didSelectOptionControl:(id)control;
- (void)headphoneStateChangedNotification:(id)notification;
- (void)mediaServerDied;
- (void)nextButtonTapped:(id)tapped;
- (void)registerNotifications;
- (void)skipButtonTapped:(id)tapped;
- (void)updateButtonTrayCaption:(id)caption;
- (void)updateHeadphoneState;
- (void)updateViewForCurrentNode;
- (void)viewDidLoad;
- (void)volumeDidChanged:(id)changed;
@end

@implementation PersonalAudioStimuliViewController

- (PersonalAudioStimuliViewController)initWithEnrollmentNode:(id)node previousNode:(id)previousNode andDelegate:(id)delegate
{
  nodeCopy = node;
  previousNodeCopy = previousNode;
  delegateCopy = delegate;
  v11 = [nodeCopy section] == &dword_4 + 1;
  heading = [nodeCopy heading];
  instructions = [nodeCopy instructions];
  v18.receiver = self;
  v18.super_class = PersonalAudioStimuliViewController;
  v14 = [(PersonalAudioStimuliViewController *)&v18 initWithTitle:heading detailText:instructions icon:0 adoptTableViewScrollView:v11];

  if (v14)
  {
    [(PersonalAudioStimuliViewController *)v14 setDelegate:delegateCopy];
    [(PersonalAudioStimuliViewController *)v14 setCurrentNode:nodeCopy];
    [(PersonalAudioStimuliViewController *)v14 setPreviousNode:previousNodeCopy];
    if (+[HCUtilities deviceIsSmallPhone])
    {
      v15 = &layouts;
    }

    else if ((+[HCUtilities deviceIsBigPhone](HCUtilities, "deviceIsBigPhone") & 1) != 0 || +[HCUtilities deviceIsPad])
    {
      v15 = &xmmword_57208;
    }

    else
    {
      v15 = &xmmword_571E8;
    }

    v16 = v15[1];
    xmmword_574D8 = *v15;
    *&qword_574E8 = v16;
    [(PersonalAudioStimuliViewController *)v14 registerNotifications];
    [(PersonalAudioStimuliViewController *)v14 updateHeadphoneState];
  }

  return v14;
}

- (int64_t)contentViewLayout
{
  if ([(PAEnrollmentNode *)self->_currentNode section]== &dword_4 + 1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (void)registerNotifications
{
  v3 = +[AVSystemController sharedAVSystemController];
  v13[0] = AVSystemController_HeadphoneJackIsConnectedDidChangeNotification;
  v13[1] = AVSystemController_ActiveAudioRouteDidChangeNotification;
  v13[2] = AVSystemController_SystemVolumeDidChangeNotification;
  v13[3] = AVSystemController_ServerConnectionDiedNotification;
  v4 = [NSArray arrayWithObjects:v13 count:4];
  [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"headphoneStateChangedNotification:" name:AVSystemController_HeadphoneJackIsConnectedDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"headphoneStateChangedNotification:" name:AVAudioSessionRouteChangeNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"headphoneStateChangedNotification:" name:AVSystemController_ActiveAudioRouteDidChangeNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"volumeDidChanged:" name:AVSystemController_SystemVolumeDidChangeNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"audioSessionWasInterrupted:" name:AVAudioSessionInterruptionNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = AVSystemController_ServerConnectionDiedNotification;
  v12 = +[AVSystemController sharedAVSystemController];
  [v10 addObserver:self selector:"mediaServerDied" name:v11 object:v12];
}

- (void)mediaServerDied
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(PersonalAudioStimuliViewController *)self performSelector:"registerNotifications" withObject:0 afterDelay:2.0];

  [(PersonalAudioStimuliViewController *)self headphoneStateChangedNotification:0];
}

- (void)headphoneStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = notificationCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Headphone changed %@", buf, 0xCu);
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)updateHeadphoneState
{
  v3 = +[HUAccessoryManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_236AC;
  v4[3] = &unk_48B98;
  v4[4] = self;
  [v3 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v4];
}

- (void)audioSessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  userInfo = [interruptedCopy userInfo];
  v5 = [userInfo valueForKey:AVAudioSessionInterruptionOptionKey];
  [v5 intValue];

  userInfo2 = [interruptedCopy userInfo];

  v7 = [userInfo2 valueForKey:AVAudioSessionInterruptionTypeKey];
  LODWORD(v5) = [v7 intValue];

  if (!v5)
  {
    AXPerformBlockOnMainThread();
  }
}

- (void)volumeDidChanged:(id)changed
{
  currentNode = [(PersonalAudioStimuliViewController *)self currentNode];
  section = [currentNode section];

  if (section == &dword_0 + 2)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)updateButtonTrayCaption:(id)caption
{
  objc_storeStrong(&self->_captionText, caption);
  captionCopy = caption;
  buttonTray = [(PersonalAudioStimuliViewController *)self buttonTray];
  [buttonTray setCaptionText:captionCopy style:2];
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = PersonalAudioStimuliViewController;
  [(PersonalAudioStimuliViewController *)&v46 viewDidLoad];
  [(PersonalAudioStimuliViewController *)self setEdgesForExtendedLayout:5];
  v3 = +[NSMutableArray array];
  v4 = +[OBBoldTrayButton boldButton];
  nextButton = self->_nextButton;
  self->_nextButton = v4;

  [(OBTrayButton *)self->_nextButton addTarget:self action:"nextButtonTapped:" forControlEvents:64];
  buttonTray = [(PersonalAudioStimuliViewController *)self buttonTray];
  [buttonTray addButton:self->_nextButton];

  if ((+[HCUtilities deviceIsSmallPhone]& 1) == 0)
  {
    v7 = [PersonalAudioVisualizerView alloc];
    currentNode = [(PersonalAudioStimuliViewController *)self currentNode];
    v9 = -[PersonalAudioVisualizerView initWithTuningIndex:](v7, "initWithTuningIndex:", [currentNode index]);
    visualizerView = self->_visualizerView;
    self->_visualizerView = v9;

    [(PersonalAudioVisualizerView *)self->_visualizerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PersonalAudioStimuliViewController *)self contentView];
    [contentView addSubview:self->_visualizerView];

    v12 = _NSDictionaryOfVariableBindings(@"_visualizerView", self->_visualizerView, 0);
    v13 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_visualizerView]-|", 0, 0, v12);
    [v3 addObjectsFromArray:v13];
  }

  v14 = objc_alloc_init(PersonalAudioOptionControl);
  optionControl = self->_optionControl;
  self->_optionControl = v14;

  [(PersonalAudioOptionControl *)self->_optionControl setDelegate:self];
  [(PersonalAudioOptionControl *)self->_optionControl setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(PersonalAudioStimuliViewController *)self contentView];
  [contentView2 addSubview:self->_optionControl];

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v17 = qword_574F8;
  v51 = qword_574F8;
  if (!qword_574F8)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_25A9C;
    v47[3] = &unk_48A48;
    v47[4] = &v48;
    sub_25A9C(v47);
    v17 = v49[3];
  }

  v18 = v17;
  _Block_object_dispose(&v48, 8);
  v19 = [[v17 alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  volumeSlider = self->_volumeSlider;
  self->_volumeSlider = v19;

  v21 = +[UIColor systemGrayColor];
  v22 = [UIImage _systemImageNamed:@"speaker.fill"];
  v23 = [v22 imageWithTintColor:v21 renderingMode:1];

  v24 = [UIImage _systemImageNamed:@"speaker.wave.3.fill"];
  v25 = [v24 imageWithTintColor:v21 renderingMode:1];

  v45 = v23;
  [(MPVolumeSlider *)self->_volumeSlider setMinimumValueImage:v23];
  [(MPVolumeSlider *)self->_volumeSlider setMaximumValueImage:v25];
  [(MPVolumeSlider *)self->_volumeSlider setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(PersonalAudioStimuliViewController *)self contentView];
  [contentView3 addSubview:self->_volumeSlider];

  v27 = objc_alloc_init(UILabel);
  instructions = self->_instructions;
  self->_instructions = v27;

  [(UILabel *)self->_instructions setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_instructions setTextAlignment:1];
  [(UILabel *)self->_instructions setNumberOfLines:0];
  v29 = self->_instructions;
  v30 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [(UILabel *)v29 setFont:v30];

  [(UILabel *)self->_instructions setText:0];
  contentView4 = [(PersonalAudioStimuliViewController *)self contentView];
  [contentView4 addSubview:self->_instructions];

  v32 = +[OBLinkTrayButton linkButton];
  linkButton = self->_linkButton;
  self->_linkButton = v32;

  [(OBLinkTrayButton *)self->_linkButton addTarget:self action:"skipButtonTapped:" forControlEvents:64];
  v34 = _NSDictionaryOfVariableBindings(@"_optionControl", self->_optionControl, 0);
  v35 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_optionControl]-|", 0, 0, v34);
  [v3 addObjectsFromArray:v35];

  v36 = _NSDictionaryOfVariableBindings(@"_instructions", self->_instructions, 0);
  v37 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_instructions]-|", 0, 0, v36);
  [v3 addObjectsFromArray:v37];

  v38 = _NSDictionaryOfVariableBindings(@"_volumeSlider", self->_volumeSlider, 0);
  v39 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_volumeSlider]-|", 0, 0, v38);
  [v3 addObjectsFromArray:v39];

  if (self->_visualizerView)
  {
    v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"V:|-(%lf)-[_visualizerView]-(%lf)-[_optionControl]-(%lf)-[_instructions]-(%lf)-[_volumeSlider]-|", xmmword_574D8, qword_574E8, qword_574F0);
    v41 = self->_optionControl;
    _NSDictionaryOfVariableBindings(@"_visualizerView, _optionControl, _instructions, _volumeSlider", self->_visualizerView, v41, self->_instructions, self->_volumeSlider, 0);
  }

  else
  {
    v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"V:|-(%lf)-[_optionControl]-(%lf)-[_instructions]-(%lf)-[_volumeSlider]-|", *(&xmmword_574D8 + 1), qword_574E8, qword_574F0);
    _NSDictionaryOfVariableBindings(@"_optionControl, _instructions, _volumeSlider", self->_optionControl, self->_instructions, self->_volumeSlider, 0);
  }
  v42 = ;
  v43 = [NSLayoutConstraint constraintsWithVisualFormat:v40 options:0 metrics:0 views:v42];
  [v3 addObjectsFromArray:v43];

  contentView5 = [(PersonalAudioStimuliViewController *)self contentView];
  [contentView5 addConstraints:v3];

  [(PersonalAudioStimuliViewController *)self updateViewForCurrentNode];
}

- (void)skipButtonTapped:(id)tapped
{
  self->_skippedSection = 1;
  section = [(PAEnrollmentNode *)self->_currentNode section];
  if (section == &dword_4 + 1)
  {
    v6 = +[HUAccessoryManager sharedInstance];
    [v6 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:&stru_49098];
  }

  else
  {
    if (section != &dword_4 + 2)
    {
      goto LABEL_6;
    }

    v5 = +[PASettings sharedInstance];
    [v5 setPersonalMediaConfiguration:0];

    v6 = +[PASettings sharedInstance];
    [v6 setPersonalMediaEnabled:0];
  }

LABEL_6:

  [(PersonalAudioStimuliViewController *)self nextButtonTapped:0];
}

- (void)updateViewForCurrentNode
{
  self->_skippedSection = 0;
  if (!self->_currentRouteSupported)
  {
    [(PersonalAudioStimuliViewController *)self setSelectedNode:0];
    currentNode = [(PersonalAudioStimuliViewController *)self currentNode];
    stimuli = [currentNode stimuli];
    [stimuli enumerateObjectsUsingBlock:&stru_490E0];

    [(PersonalAudioOptionControl *)self->_optionControl setHidden:1];
    [(PersonalAudioVisualizerView *)self->_visualizerView setHidden:1];
    [(MPVolumeSlider *)self->_volumeSlider setHidden:1];
    [(UILabel *)self->_instructions setHidden:1];
    v15 = paLocString();
    [(PersonalAudioStimuliViewController *)self updateButtonTrayCaption:v15];

    nextButton = self->_nextButton;
    v17 = paLocString();
    [(OBTrayButton *)nextButton setTitle:v17 forState:0];

    goto LABEL_37;
  }

  [(PersonalAudioStimuliViewController *)self updateButtonTrayCaption:&stru_49868];
  v3 = paLocString();
  visualizerView = self->_visualizerView;
  currentNode2 = [(PersonalAudioStimuliViewController *)self currentNode];
  stimuli2 = [currentNode2 stimuli];
  -[PersonalAudioVisualizerView setHidden:](visualizerView, "setHidden:", [stimuli2 count] == 0);

  [(UILabel *)self->_instructions setHidden:0];
  currentNode3 = [(PersonalAudioStimuliViewController *)self currentNode];
  options = [currentNode3 options];

  if ([options count] < 2 || (-[PersonalAudioStimuliViewController currentNode](self, "currentNode"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "section"), v9, v10 == &dword_4 + 1))
  {
    p_optionControl = &self->_optionControl;
    v12 = 1;
    goto LABEL_12;
  }

  p_optionControl = &self->_optionControl;
  optionControl = self->_optionControl;
  firstObject = [options firstObject];
  lastObject = [options lastObject];
  [(PersonalAudioOptionControl *)optionControl updateWithLeftNode:firstObject andRightNode:lastObject];

  lastObject2 = [options lastObject];
  LOBYTE(firstObject) = [lastObject2 isSelected];

  if (firstObject)
  {
    v22 = 2;
LABEL_10:
    [(PersonalAudioOptionControl *)*p_optionControl selectItem:v22];
    goto LABEL_11;
  }

  firstObject2 = [options firstObject];
  isSelected = [firstObject2 isSelected];

  if (isSelected)
  {
    v22 = 1;
    goto LABEL_10;
  }

LABEL_11:
  v12 = 0;
LABEL_12:
  [(PersonalAudioOptionControl *)*p_optionControl setHidden:v12];
  volumeSlider = self->_volumeSlider;
  currentNode4 = [(PersonalAudioStimuliViewController *)self currentNode];
  -[MPVolumeSlider setHidden:](volumeSlider, "setHidden:", [currentNode4 section] != &dword_4);

  currentNode5 = [(PersonalAudioStimuliViewController *)self currentNode];
  options2 = [currentNode5 options];
  v29 = [options2 count];

  if (v29 == &dword_0 + 1)
  {
    currentNode6 = [(PersonalAudioStimuliViewController *)self currentNode];
    options3 = [currentNode6 options];
    firstObject3 = [options3 firstObject];
    [(PersonalAudioStimuliViewController *)self setSelectedNode:firstObject3];
  }

  currentNode7 = [(PersonalAudioStimuliViewController *)self currentNode];
  section = [currentNode7 section];

  v36 = 0;
  tuningDescription = 0;
  if (section <= 4)
  {
    if (section == (&dword_0 + 1))
    {
      v46 = paLocString();
      [(PersonalAudioStimuliViewController *)self updateButtonTrayCaption:v46];
    }

    else
    {
      if (section != (&dword_0 + 2))
      {
        if (section == &dword_4)
        {
          previousNode = [(PersonalAudioStimuliViewController *)self previousNode];
          section2 = [previousNode section];

          v36 = section2 == &dword_0 + 2;
          if (section2 == &dword_0 + 2)
          {
            LODWORD(v40) = 0.25;
            [(MPVolumeSlider *)self->_volumeSlider setValue:v40];
          }

          tuningDescription = paLocString();
        }

        goto LABEL_34;
      }

      LODWORD(v35) = 0.5;
      [(MPVolumeSlider *)self->_volumeSlider setValue:v35];
      v74 = 0;
      v75 = &v74;
      v76 = 0x3032000000;
      v77 = sub_24F14;
      v78 = sub_24F24;
      v79 = 0;
      currentNode8 = [(PersonalAudioStimuliViewController *)self currentNode];
      options4 = [currentNode8 options];
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_24F2C;
      v73[3] = &unk_490C0;
      v73[4] = &v74;
      [options4 enumerateObjectsUsingBlock:v73];

      v49 = +[PASettings sharedInstance];
      [v49 setPersonalMediaConfiguration:v75[5]];

      v50 = +[PASettings sharedInstance];
      [v50 setPersonalMediaEnabled:v75[5] != 0];

      _Block_object_dispose(&v74, 8);
    }

    tuningDescription = 0;
    goto LABEL_29;
  }

  if (section - 7 < 2)
  {
    v45 = paLocString();

LABEL_33:
    tuningDescription = 0;
    v36 = 0;
    v3 = v45;
    goto LABEL_34;
  }

  if (section == (&dword_4 + 1))
  {
    v51 = +[PAStimulus sinStimulus];
    [v51 stop];

    v52 = +[PAStimulus musicStimulus];
    [v52 stop];

    v53 = +[PASettings sharedInstance];
    currentRouteAddress = [(PersonalAudioStimuliViewController *)self currentRouteAddress];
    [v53 setTransparencyCustomized:1 forAddress:currentRouteAddress];

    tableView = [(PersonalAudioStimuliViewController *)self tableView];

    if (!tableView)
    {
      v56 = objc_alloc_init(AudioAccommodationsTransparencyViewController);
      transparencyConroller = self->_transparencyConroller;
      self->_transparencyConroller = v56;

      [(AudioAccommodationsTransparencyViewController *)self->_transparencyConroller setDisplayingInEnrollment:1];
      [(AudioAccommodationsTransparencyViewController *)self->_transparencyConroller loadView];
      table = [(AudioAccommodationsTransparencyViewController *)self->_transparencyConroller table];
      transparencyTable = self->_transparencyTable;
      self->_transparencyTable = table;

      v60 = self->_transparencyTable;
      v61 = +[UIColor clearColor];
      [(UITableView *)v60 setBackgroundColor:v61];

      [(UITableView *)self->_transparencyTable setUserInteractionEnabled:1];
      [(PersonalAudioStimuliViewController *)self setTableView:self->_transparencyTable];
      AXPerformSafeBlock();
    }

    v62 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    currentRouteAddress2 = [(PersonalAudioStimuliViewController *)self currentRouteAddress];
    [v62 setUserInfo:currentRouteAddress2];

    [(AudioAccommodationsTransparencyViewController *)self->_transparencyConroller setSpecifier:v62];
    [(AudioAccommodationsTransparencyViewController *)self->_transparencyConroller reloadSpecifiers];
    linkButton = self->_linkButton;
    v65 = paLocString();
    [(OBLinkTrayButton *)linkButton setTitle:v65 forState:0];

    buttonTray = [(PersonalAudioStimuliViewController *)self buttonTray];
    [buttonTray addButton:self->_linkButton];

    v45 = paLocString();

    goto LABEL_33;
  }

  if (section == (&dword_4 + 2))
  {
    currentNode9 = [(PersonalAudioStimuliViewController *)self currentNode];
    tuningDescription = [currentNode9 tuningDescription];

    v42 = self->_linkButton;
    v43 = paLocString();
    [(OBLinkTrayButton *)v42 setTitle:v43 forState:0];

    buttonTray2 = [(PersonalAudioStimuliViewController *)self buttonTray];
    [buttonTray2 addButton:self->_linkButton];

LABEL_29:
    v36 = 0;
  }

LABEL_34:
  instructions = [(PersonalAudioStimuliViewController *)self instructions];
  [instructions setText:tuningDescription];

  [(OBTrayButton *)self->_nextButton setTitle:v3 forState:0];
  if (!v36)
  {
    [(PersonalAudioStimuliViewController *)self _startPlayingStimuli];
  }

LABEL_37:
  v68 = self->_nextButton;
  if (self->_currentRouteSupported)
  {
    selectedNode = [(PersonalAudioStimuliViewController *)self selectedNode];
    if (selectedNode)
    {
      [(OBTrayButton *)v68 setEnabled:1];
    }

    else
    {
      currentNode10 = [(PersonalAudioStimuliViewController *)self currentNode];
      options5 = [currentNode10 options];
      if ([options5 count])
      {
        currentNode11 = [(PersonalAudioStimuliViewController *)self currentNode];
        -[OBTrayButton setEnabled:](v68, "setEnabled:", [currentNode11 section] == &dword_4 + 1);
      }

      else
      {
        [(OBTrayButton *)v68 setEnabled:1];
      }
    }
  }

  else
  {
    [(OBTrayButton *)self->_nextButton setEnabled:0];
  }
}

- (void)_startPlayingStimuli
{
  if (self->_currentRouteSupported)
  {
    objc_initWeak(&location, self);
    currentNode = [(PersonalAudioStimuliViewController *)self currentNode];
    stimuli = [currentNode stimuli];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_250CC;
    v5[3] = &unk_49130;
    objc_copyWeak(&v6, &location);
    [stimuli enumerateObjectsUsingBlock:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)didSelectOptionControl:(id)control
{
  controlCopy = control;
  selectedNode = [controlCopy selectedNode];
  [(PersonalAudioStimuliViewController *)self setSelectedNode:selectedNode];

  currentNode = [(PersonalAudioStimuliViewController *)self currentNode];
  options = [currentNode options];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_2545C;
  v21[3] = &unk_49158;
  v21[4] = self;
  [options enumerateObjectsUsingBlock:v21];

  nextButton = self->_nextButton;
  selectedNode2 = [(PersonalAudioStimuliViewController *)self selectedNode];
  [(OBTrayButton *)nextButton setEnabled:selectedNode2 != 0];

  currentNode2 = [(PersonalAudioStimuliViewController *)self currentNode];
  section = [currentNode2 section];

  if (section != &dword_0 + 2)
  {
    v12 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      selectedNode3 = [controlCopy selectedNode];
      configuration = [selectedNode3 configuration];
      *buf = 138412290;
      v23 = configuration;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Using configuration: %@", buf, 0xCu);
    }

    v15 = +[PASettings sharedInstance];
    selectedNode4 = [(PersonalAudioStimuliViewController *)self selectedNode];
    configuration2 = [selectedNode4 configuration];
    [v15 setPersonalMediaConfiguration:configuration2];

    v18 = +[PASettings sharedInstance];
    selectedNode5 = [(PersonalAudioStimuliViewController *)self selectedNode];
    configuration3 = [selectedNode5 configuration];
    [v18 setPersonalMediaEnabled:configuration3 != 0];
  }
}

- (void)nextButtonTapped:(id)tapped
{
  currentNode = [(PersonalAudioStimuliViewController *)self currentNode];
  stimuli = [currentNode stimuli];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_2568C;
  v17[3] = &unk_48F30;
  v17[4] = self;
  [stimuli enumerateObjectsUsingBlock:v17];

  if (!self->_skippedSection)
  {
    currentNode2 = [(PersonalAudioStimuliViewController *)self currentNode];
    section = [currentNode2 section];

    if (section == &dword_4 + 2)
    {
      v8 = +[PASettings sharedInstance];
      currentNode3 = [(PersonalAudioStimuliViewController *)self currentNode];
      configuration = [currentNode3 configuration];
      [v8 setPersonalMediaEnabled:configuration != 0];

      v11 = +[PASettings sharedInstance];
      currentNode4 = [(PersonalAudioStimuliViewController *)self currentNode];
      configuration2 = [currentNode4 configuration];
      [v11 setPersonalMediaConfiguration:configuration2];

      currentNode5 = [(PersonalAudioStimuliViewController *)self currentNode];
      [(PersonalAudioStimuliViewController *)self setSelectedNode:currentNode5];
    }
  }

  delegate = [(PersonalAudioStimuliViewController *)self delegate];
  selectedNode = [(PersonalAudioStimuliViewController *)self selectedNode];
  [delegate didSelectEnrollmentNode:selectedNode];
}

@end