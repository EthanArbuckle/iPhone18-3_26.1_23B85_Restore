@interface PersonalAudioEnrollmentViewController
- (PersonalAudioEnrollmentViewController)init;
- (void)cancelModalFlow;
- (void)didSelectAudiogram:(id)a3;
- (void)didSelectEnrollmentNode:(id)a3;
- (void)mediaServerDied;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)overviewNextButtonTapped:(id)a3;
- (void)registerNotifications;
- (void)showOverviewWithANCBullet:(BOOL)a3;
- (void)showWelcomeController;
- (void)startEnrollmentWithAudiogram:(id)a3;
- (void)updateHeadphoneState;
- (void)updateIntroButtonTrayCaption:(id)a3;
- (void)viewDidLoad;
- (void)welcomeNextButtonTapped:(id)a3;
@end

@implementation PersonalAudioEnrollmentViewController

- (PersonalAudioEnrollmentViewController)init
{
  v26.receiver = self;
  v26.super_class = PersonalAudioEnrollmentViewController;
  v2 = [(PersonalAudioEnrollmentViewController *)&v26 init];
  v3 = v2;
  if (v2)
  {
    [(PersonalAudioEnrollmentViewController *)v2 setDelegate:v2];
    [(PersonalAudioEnrollmentViewController *)v3 updateHeadphoneState];
    if (!sub_17204())
    {
      objc_initWeak(&location, v3);
      v32 = 0;
      v33 = &v32;
      v34 = 0x2050000000;
      v4 = qword_57498;
      v35 = qword_57498;
      if (!qword_57498)
      {
        v27 = _NSConcreteStackBlock;
        v28 = 3221225472;
        v29 = sub_19334;
        v30 = &unk_48A48;
        v31 = &v32;
        sub_19334(&v27);
        v4 = v33[3];
      }

      v5 = v4;
      _Block_object_dispose(&v32, 8);
      v6 = [v4 audiogramSampleType];
      v7 = objc_alloc_init(sub_17254());
      v32 = 0;
      v33 = &v32;
      v34 = 0x2050000000;
      v8 = qword_574B0;
      v35 = qword_574B0;
      if (!qword_574B0)
      {
        v27 = _NSConcreteStackBlock;
        v28 = 3221225472;
        v29 = sub_19554;
        v30 = &unk_48A48;
        v31 = &v32;
        sub_19554(&v27);
        v8 = v33[3];
      }

      v9 = v8;
      _Block_object_dispose(&v32, 8);
      v10 = [v8 alloc];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_17334;
      v23[3] = &unk_48DD0;
      objc_copyWeak(&v24, &location);
      v11 = [v10 initWithSampleType:v6 predicate:0 limit:0 sortDescriptors:0 resultsHandler:v23];
      [v7 executeQuery:v11];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    v12 = +[PASettings sharedInstance];
    -[PersonalAudioEnrollmentViewController setPersonalAudioWasEnabled:](v3, "setPersonalAudioWasEnabled:", [v12 personalMediaEnabled]);

    v13 = +[PASettings sharedInstance];
    v14 = [v13 personalMediaConfiguration];
    [(PersonalAudioEnrollmentViewController *)v3 setCurrentPersonalAudioConfiguration:v14];

    v15 = +[PASettings sharedInstance];
    -[PersonalAudioEnrollmentViewController setCurrentPersonalAudioAccommodationTypes:](v3, "setCurrentPersonalAudioAccommodationTypes:", [v15 personalAudioAccommodationTypes]);

    v16 = +[PASettings sharedInstance];
    [v16 setPersonalMediaConfiguration:0];

    v17 = +[PASettings sharedInstance];
    [v17 setPersonalMediaEnabled:1];

    v18 = +[PASettings sharedInstance];
    [v18 personalAudioAccommodationTypes];

    v19 = compoundAttributeByAddingAttribute();
    v20 = +[PASettings sharedInstance];
    [v20 setPersonalAudioAccommodationTypes:v19];

    v21 = [(PersonalAudioEnrollmentViewController *)v3 presentationController];
    [v21 setDelegate:v3];
  }

  return v3;
}

- (void)registerNotifications
{
  v3 = +[AVSystemController sharedAVSystemController];
  v14[0] = AVSystemController_HeadphoneJackIsConnectedDidChangeNotification;
  v14[1] = AVSystemController_ActiveAudioRouteDidChangeNotification;
  v14[2] = AVSystemController_ServerConnectionDiedNotification;
  v4 = [NSArray arrayWithObjects:v14 count:3];
  [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"headphoneStateChangedNotification:" name:AVSystemController_HeadphoneJackIsConnectedDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = +[AVAudioSession sharedInstance];
  [v6 addObserver:self selector:"headphoneStateChangedNotification:" name:AVAudioSessionRouteChangeNotification object:v7];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = AVSystemController_ActiveAudioRouteDidChangeNotification;
  v10 = +[AVSystemController sharedAVSystemController];
  [v8 addObserver:self selector:"headphoneStateChangedNotification:" name:v9 object:v10];

  v11 = +[NSNotificationCenter defaultCenter];
  v12 = AVSystemController_ServerConnectionDiedNotification;
  v13 = +[AVSystemController sharedAVSystemController];
  [v11 addObserver:self selector:"mediaServerDied" name:v12 object:v13];
}

- (void)mediaServerDied
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(PersonalAudioEnrollmentViewController *)self performSelector:"registerNotifications" withObject:0 afterDelay:2.0];

  [(PersonalAudioEnrollmentViewController *)self headphoneStateChangedNotification:0];
}

- (void)updateHeadphoneState
{
  v3 = +[HUAccessoryManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1769C;
  v4[3] = &unk_48B98;
  v4[4] = self;
  [v3 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v4];
}

- (void)updateIntroButtonTrayCaption:(id)a3
{
  introController = self->_introController;
  v4 = a3;
  v5 = [(OBTextWelcomeController *)introController buttonTray];
  [v5 setCaptionText:v4 style:2];
}

- (void)cancelModalFlow
{
  v3 = paLocString();
  v4 = [UIAlertController alertControllerWithTitle:0 message:v3 preferredStyle:0];

  v5 = paLocString();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_179F4;
  v9[3] = &unk_48EA0;
  v9[4] = self;
  v6 = [UIAlertAction actionWithTitle:v5 style:2 handler:v9];
  [v4 addAction:v6];

  v7 = paLocString();
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:&stru_48EE0];
  [v4 addAction:v8];

  [(PersonalAudioEnrollmentViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 performSelector:"currentNode"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 stimuli];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(PAEnrollmentNode *)self->_currentNode stimuli];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_17CB4;
    v15[3] = &unk_48F30;
    v16 = v7;
    [v10 enumerateObjectsUsingBlock:v15];
  }

  else
  {
    v11 = +[PAStimulus sinStimulus];
    [v11 stop];

    v12 = +[PAStimulus musicStimulus];
    [v12 stop];
  }

  [(PersonalAudioEnrollmentViewController *)self setCurrentNode:v7];
  if ([v7 section] <= 4)
  {
    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelModalFlow"];
    v14 = [v6 navigationItem];
    [v14 setRightBarButtonItem:v13];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PersonalAudioEnrollmentViewController;
  [(PersonalAudioEnrollmentViewController *)&v3 viewDidLoad];
  [(PersonalAudioEnrollmentViewController *)self showWelcomeController];
}

- (void)showWelcomeController
{
  if ([(PersonalAudioEnrollmentViewController *)self didLoadRouteInfo])
  {
    v3 = [(PersonalAudioEnrollmentViewController *)self welcomeController];

    if (!v3)
    {
      v4 = [OBWelcomeController alloc];
      v5 = paLocString();
      v58 = [v4 initWithTitle:v5 detailText:0 icon:0];

      v6 = [v58 headerView];
      [v6 setTitleHyphenationFactor:0.0];

      v7 = +[OBBoldTrayButton boldButton];
      v8 = paLocString();
      [v7 setTitle:v8 forState:0];

      [v7 addTarget:self action:"welcomeNextButtonTapped:" forControlEvents:64];
      v9 = [v58 buttonTray];
      [v9 addButton:v7];

      v10 = [UIImage systemImageNamed:@"phone.fill"];
      v11 = +[UIColor systemBlueColor];
      v12 = [v10 imageWithTintColor:v11 renderingMode:1];
      v13 = [v12 resizeHearingImageToNewSize:{48.0, 48.0}];

      if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
      {
        v14 = [v13 imageWithHorizontallyFlippedOrientation];

        v13 = v14;
      }

      v15 = paLocString();
      v16 = paLocString();
      [v58 addBulletedListItemWithTitle:v15 description:v16 image:v13];

      v17 = [UIImage _systemImageNamed:@"music"];
      v18 = +[UIColor systemBlueColor];
      v19 = [v17 imageWithTintColor:v18 renderingMode:1];
      v20 = [v19 resizeHearingImageToNewSize:{48.0, 48.0}];

      [v20 size];
      v22 = v21;
      v24 = v23;
      v25 = +[UIColor systemBlueColor];
      v26 = [UIImage _tintedImageForSize:v25 withTint:0 effectsImage:v20 maskImage:0 style:v22, v24];

      v27 = paLocString();
      v28 = paLocString();
      [v58 addBulletedListItemWithTitle:v27 description:v28 image:v26];

      if (!sub_17204() && [sub_17254() isHealthDataAvailable])
      {
        v29 = paLocString();
        v30 = [(PersonalAudioEnrollmentViewController *)self audiograms];
        v31 = [v30 count];

        if (v31)
        {
          v32 = paLocString();

          v29 = v32;
        }

        v33 = [UIImage _systemImageNamed:@"waveform.path"];
        v34 = +[UIColor systemBlueColor];
        v35 = [v33 imageWithTintColor:v34 renderingMode:1];
        v36 = [v35 resizeHearingImageToNewSize:{48.0, 48.0}];

        [v36 size];
        v38 = v37;
        v40 = v39;
        v41 = +[UIColor systemBlueColor];
        v42 = [UIImage _tintedImageForSize:v41 withTint:0 effectsImage:v36 maskImage:0 style:v38, v40];

        v43 = paLocString();
        [v58 addBulletedListItemWithTitle:v43 description:v29 image:v42];
      }

      if ([(PersonalAudioEnrollmentViewController *)self currentDevicePSEVersion])
      {
        v44 = [UIImage _systemImageNamed:@"person.open.fill"];
        v45 = +[UIColor systemBlueColor];
        v46 = [v44 imageWithTintColor:v45 renderingMode:1];
        v47 = [v46 resizeHearingImageToNewSize:{48.0, 48.0}];

        [v47 size];
        v49 = v48;
        v51 = v50;
        v52 = +[UIColor systemBlueColor];
        v53 = [UIImage _tintedImageForSize:v52 withTint:0 effectsImage:v47 maskImage:0 style:v49, v51];

        v54 = paLocString();
        v55 = paLocString();
        [v58 addBulletedListItemWithTitle:v54 description:v55 image:v53];
      }

      v56 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelModalFlow"];
      v57 = [v58 navigationItem];
      [v57 setRightBarButtonItem:v56];

      [(PersonalAudioEnrollmentViewController *)self pushViewController:v58 animated:1];
      [(PersonalAudioEnrollmentViewController *)self setWelcomeController:v58];
    }
  }
}

- (void)welcomeNextButtonTapped:(id)a3
{
  if (!sub_17204() && [sub_17254() isHealthDataAvailable] && _os_feature_enabled_impl())
  {
    v4 = [PersonalAudioAudiogramViewController alloc];
    v7 = [(PersonalAudioEnrollmentViewController *)self audiograms];
    v5 = [(PersonalAudioAudiogramViewController *)v4 initWithAudiograms:v7 andDelegate:self];
    [(PersonalAudioEnrollmentViewController *)self pushViewController:v5 animated:1];
  }

  else
  {
    v6 = +[HUAccessoryManager sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_18544;
    v8[3] = &unk_48B98;
    v8[4] = self;
    [v6 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v8];
  }
}

- (void)overviewNextButtonTapped:(id)a3
{
  introController = self->_introController;
  self->_introController = 0;

  introControllerNextButton = self->_introControllerNextButton;
  self->_introControllerNextButton = 0;

  v6 = [(PersonalAudioEnrollmentViewController *)self selectedAudiogram];
  [(PersonalAudioEnrollmentViewController *)self startEnrollmentWithAudiogram:v6];
}

- (void)showOverviewWithANCBullet:(BOOL)a3
{
  v3 = a3;
  v5 = [OBTextWelcomeController alloc];
  v6 = paLocString();
  v7 = [v5 initWithTitle:v6 detailText:0 symbolName:0];
  introController = self->_introController;
  self->_introController = v7;

  v9 = self->_introController;
  v10 = paLocString();
  [(OBTextWelcomeController *)v9 addBulletedListItemWithTitle:v10 description:&stru_49868];

  v11 = self->_introController;
  v12 = paLocString();
  [(OBTextWelcomeController *)v11 addBulletedListItemWithTitle:v12 description:&stru_49868];

  if (v3)
  {
    v13 = self->_introController;
    v14 = paLocString();
    [(OBTextWelcomeController *)v13 addBulletedListItemWithTitle:v14 description:&stru_49868];
  }

  v15 = self->_introController;
  v16 = paLocString();
  [(OBTextWelcomeController *)v15 addBulletedListItemWithTitle:v16 description:&stru_49868];

  v17 = +[OBBoldTrayButton boldButton];
  introControllerNextButton = self->_introControllerNextButton;
  self->_introControllerNextButton = v17;

  v19 = self->_introControllerNextButton;
  v20 = paLocString();
  [(OBBoldTrayButton *)v19 setTitle:v20 forState:0];

  [(OBBoldTrayButton *)self->_introControllerNextButton addTarget:self action:"overviewNextButtonTapped:" forControlEvents:64];
  v21 = [(OBTextWelcomeController *)self->_introController buttonTray];
  [v21 addButton:self->_introControllerNextButton];

  [(PersonalAudioEnrollmentViewController *)self pushViewController:self->_introController animated:1];
  [(PersonalAudioEnrollmentViewController *)self registerNotifications];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)startEnrollmentWithAudiogram:(id)a3
{
  v4 = a3;
  v5 = [PAEnrollment enrollmentWithAudiogram:v4];
  [(PersonalAudioEnrollmentViewController *)self setEnrollment:v5];
  v6 = [v5 enrollmentNodeAfter:0 withSelectedNode:0];
  if (v6)
  {
    v7 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16[0] = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Found first node. Starting enrollment %@", &v15, 0xCu);
    }

    [(PersonalAudioEnrollmentViewController *)self setCurrentNode:v6];
    v8 = [[PersonalAudioStimuliViewController alloc] initWithEnrollmentNode:v6 previousNode:0 andDelegate:self];
    [(PersonalAudioEnrollmentViewController *)self pushViewController:v8 animated:1];

    v9 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Setting listening mode to anc", &v15, 2u);
    }

    v10 = +[HUAccessoryManager sharedInstance];
    [v10 setCurrentRouteListeningMode:4];
  }

  else
  {
    v11 = +[PASettings sharedInstance];
    [v11 setConfigurationCameFromEnrollment:1];

    v12 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = +[PASettings sharedInstance];
      v14 = [v13 audiogramConfiguration];
      v15 = 67109376;
      LODWORD(v16[0]) = v4 != 0;
      WORD2(v16[0]) = 1024;
      *(v16 + 6) = v14 != 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Skipping enrollment because no first node. Audiogram: %d, %d", &v15, 0xEu);
    }

    [(PersonalAudioEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:&stru_48F50];
  }
}

- (void)didSelectAudiogram:(id)a3
{
  v4 = a3;
  [(PersonalAudioEnrollmentViewController *)self setSelectedAudiogram:v4];
  if (v4)
  {
    [(PersonalAudioEnrollmentViewController *)self startEnrollmentWithAudiogram:v4];
  }

  else
  {
    v5 = +[HUAccessoryManager sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_18C9C;
    v6[3] = &unk_48B98;
    v6[4] = self;
    [v5 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v6];
  }
}

- (void)didSelectEnrollmentNode:(id)a3
{
  v4 = a3;
  v5 = [(PersonalAudioEnrollmentViewController *)self enrollment];
  v6 = [(PersonalAudioEnrollmentViewController *)self currentNode];
  v7 = [v5 enrollmentNodeAfter:v6 withSelectedNode:v4];

  if ([v7 section] == &dword_4 + 1)
  {
    v8 = +[HUAccessoryManager sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_19084;
    v31[3] = &unk_48B20;
    v31[4] = self;
    [v8 getCurrentRouteListeningModeWithCompletion:v31];

    v9 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Setting listening mode to transparency", buf, 2u);
    }

    v10 = +[HUAccessoryManager sharedInstance];
    [v10 setCurrentRouteListeningMode:8];
  }

  if (!v7)
  {
    v14 = [(PersonalAudioEnrollmentViewController *)self currentNode];
    v15 = [v14 stimuli];

    v16 = +[PASettings sharedInstance];
    [v16 setConfigurationCameFromEnrollment:1];

    v17 = [(PersonalAudioEnrollmentViewController *)self currentNode];
    v18 = [v17 configuration];

    if (v18)
    {
      v19 = [(PersonalAudioEnrollmentViewController *)self currentNode];
      v20 = [v19 configuration];
      v21 = [v20 level];

      v22 = +[PASettings sharedInstance];
      v23 = [(PersonalAudioEnrollmentViewController *)self currentNode];
      v24 = [v23 configuration];
      if (v21 == &dword_C)
      {
        [v22 setAudiogramConfiguration:v24];

LABEL_13:
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_19090;
        v28[3] = &unk_48A20;
        v29 = v15;
        v12 = v15;
        [(PersonalAudioEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:v28];
        v13 = v29;
        goto LABEL_14;
      }

      [v22 setPersonalMediaConfiguration:v24];

      v26 = +[PASettings sharedInstance];
      v22 = v26;
      v27 = 1;
    }

    else
    {
      v25 = +[PASettings sharedInstance];
      [v25 setPersonalMediaConfiguration:0];

      v26 = +[PASettings sharedInstance];
      v22 = v26;
      v27 = 0;
    }

    [v26 setPersonalMediaEnabled:v27];
    goto LABEL_13;
  }

  v11 = [PersonalAudioStimuliViewController alloc];
  v12 = [(PersonalAudioEnrollmentViewController *)self currentNode];
  v13 = [(PersonalAudioStimuliViewController *)v11 initWithEnrollmentNode:v7 previousNode:v12 andDelegate:self];
  [(PersonalAudioEnrollmentViewController *)self pushViewController:v13 animated:1];
LABEL_14:
}

@end