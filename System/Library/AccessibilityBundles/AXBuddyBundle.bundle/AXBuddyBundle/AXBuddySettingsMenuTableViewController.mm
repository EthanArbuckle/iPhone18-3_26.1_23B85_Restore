@interface AXBuddySettingsMenuTableViewController
- (id)SCATVC;
- (id)createWelcomeControllerWithAXSettingsController:(id)a3 title:(id)a4;
- (id)keyboardSettingsVC;
- (id)speechVC;
- (id)tableSections;
- (id)touchAndReachVC;
- (id)voiceOverVC;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation AXBuddySettingsMenuTableViewController

- (void)dealloc
{
  AXUISettingsCleanUpWelcomeControllerTableViewObservations();
  v3.receiver = self;
  v3.super_class = AXBuddySettingsMenuTableViewController;
  [(AXBuddySettingsMenuTableViewController *)&v3 dealloc];
}

- (id)voiceOverVC
{
  v2 = AXSettingsBundle();
  v3 = [v2 classNamed:@"VoiceOverController"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)speechVC
{
  v2 = AXSettingsBundle();
  v3 = [v2 classNamed:@"SpeechController"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)touchAndReachVC
{
  v2 = AXSettingsBundle();
  v3 = [v2 classNamed:@"AXTouchAndReachability"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)keyboardSettingsVC
{
  v2 = AXSettingsBundle();
  v3 = [v2 classNamed:@"AXKeyboardsController"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)SCATVC
{
  v2 = AXSettingsBundle();
  v3 = [v2 classNamed:@"SCATController"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)createWelcomeControllerWithAXSettingsController:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AXSettingsBundle();
  v8 = [v7 classNamed:v5];

  if (v8)
  {
    v9 = objc_alloc_init(v8);
    v10 = AXUISettingsCreatePreferencesController();
  }

  else
  {
    v11 = AXLogSettings();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_5668(v5, v11);
    }

    v10 = [[OBWelcomeController alloc] initWithTitle:v6 detailText:0 icon:0 contentLayout:3];
  }

  return v10;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((AXUISettingsHandleWelcomeControllerTableViewUpdate() & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = AXBuddySettingsMenuTableViewController;
    [(AXBuddySettingsMenuTableViewController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)tableSections
{
  objc_initWeak(&location, self);
  v69 = objc_alloc_init(NSMutableArray);
  v2 = [AXBuddySettingsLargeVCPushItem alloc];
  v65 = settingsLocString(@"VOICEOVER_TITLE", @"Accessibility");
  v67 = AXSettingsBundle();
  v3 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v63 = [UIImage imageNamed:@"VoiceOver" inBundle:v67 compatibleWithTraitCollection:v3];
  v50 = v3;
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_2B30;
  v87[3] = &unk_C338;
  objc_copyWeak(&v88, &location);
  v61 = [(AXBuddySettingsVCPushItem *)v2 initWithName:v65 image:v63 viewControllerInstantiator:v87];
  v94[0] = v61;
  v4 = [AXBuddySettingsLargeVCPushItem alloc];
  v54 = settingsLocString(@"ZOOM_TITLE", @"Accessibility");
  v59 = AXSettingsBundle();
  v57 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v55 = [UIImage imageNamed:@"Zoom" inBundle:v59 compatibleWithTraitCollection:v57];
  v5 = [UIColor colorWithRed:0.290196078 green:0.290196078 blue:0.290196078 alpha:1.0];
  y = CGPointZero.y;
  v53 = AXUIIconImageWithBackgroundForImage();
  v49 = v5;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_2BB4;
  v85[3] = &unk_C338;
  objc_copyWeak(&v86, &location);
  v52 = [(AXBuddySettingsVCPushItem *)v4 initWithName:v54 image:v53 viewControllerInstantiator:v85];
  v94[1] = v52;
  v7 = [AXBuddySettingsLargeVCPushItem alloc];
  v8 = settingsLocString(@"DISPLAY_AND_TEXT", @"Accessibility");
  v9 = AXSettingsBundle();
  v10 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v11 = [UIImage imageNamed:@"Text Size" inBundle:v9 compatibleWithTraitCollection:v10];
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_2C38;
  v83[3] = &unk_C338;
  objc_copyWeak(&v84, &location);
  v12 = [(AXBuddySettingsVCPushItem *)v7 initWithName:v8 image:v11 viewControllerInstantiator:v83];
  v94[2] = v12;
  v13 = [AXBuddySettingsLargeVCPushItem alloc];
  v14 = settingsLocString(@"MOTION_TITLE", @"Accessibility");
  v15 = AXSettingsBundle();
  v16 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v17 = [UIImage imageNamed:@"Motion" inBundle:v15 compatibleWithTraitCollection:v16];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_2CBC;
  v81[3] = &unk_C338;
  objc_copyWeak(&v82, &location);
  v18 = [(AXBuddySettingsVCPushItem *)v13 initWithName:v14 image:v17 viewControllerInstantiator:v81];
  v94[3] = v18;
  v51 = [NSArray arrayWithObjects:v94 count:4];

  [v69 addObjectsFromArray:v51];
  if (AXDeviceSupportsAccessibilityReader())
  {
    v19 = [AXBuddySettingsLargeVCPushItem alloc];
    v20 = settingsLocString(@"READ_AND_SPEAK_TITLE", @"Accessibility");
    v21 = AXSettingsBundle();
    v22 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
    v23 = [UIImage imageNamed:@"Speech" inBundle:v21 compatibleWithTraitCollection:v22];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_2D40;
    v79[3] = &unk_C338;
    v24 = &v80;
    objc_copyWeak(&v80, &location);
    v25 = [(AXBuddySettingsVCPushItem *)v19 initWithName:v20 image:v23 viewControllerInstantiator:v79];
    v93 = v25;
    v26 = [NSArray arrayWithObjects:&v93 count:1];
    [v69 addObjectsFromArray:v26];
  }

  else
  {
    v27 = [AXBuddySettingsLargeVCPushItem alloc];
    v20 = settingsLocString(@"SPEECH_TITLE", @"Accessibility");
    v21 = AXSettingsBundle();
    v22 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
    v23 = [UIImage imageNamed:@"Speech" inBundle:v21 compatibleWithTraitCollection:v22];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_2DC4;
    v77[3] = &unk_C338;
    v24 = &v78;
    objc_copyWeak(&v78, &location);
    v25 = [(AXBuddySettingsVCPushItem *)v27 initWithName:v20 image:v23 viewControllerInstantiator:v77];
    v92 = v25;
    v26 = [NSArray arrayWithObjects:&v92 count:1];
    [v69 addObjectsFromArray:v26];
  }

  objc_destroyWeak(v24);
  v28 = [AXBuddySettingsTableSection alloc];
  v29 = settingsLocString(@"VISION", @"Accessibility");
  v58 = [(AXBuddySettingsTableSection *)v28 initWithName:v29 subitems:v69];

  v30 = [AXBuddySettingsLargeVCPushItem alloc];
  v66 = settingsLocString(@"TOUCH", @"Accessibility");
  v68 = AXSettingsBundle();
  v31 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v64 = [UIImage imageNamed:@"Touch" inBundle:v68 compatibleWithTraitCollection:v31];
  v56 = v31;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_2E48;
  v75[3] = &unk_C338;
  objc_copyWeak(&v76, &location);
  v62 = [(AXBuddySettingsVCPushItem *)v30 initWithName:v66 image:v64 viewControllerInstantiator:v75];
  v91[0] = v62;
  v32 = [AXBuddySettingsLargeVCPushItem alloc];
  v60 = AXBuddyBundleLocString(@"SWITCH_CONTROL_TITLE");
  v33 = AXSettingsBundle();
  v34 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v35 = [UIImage imageNamed:@"SwitchControl" inBundle:v33 compatibleWithTraitCollection:v34];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_2ECC;
  v73[3] = &unk_C338;
  objc_copyWeak(&v74, &location);
  v36 = [(AXBuddySettingsVCPushItem *)v32 initWithName:v60 image:v35 viewControllerInstantiator:v73];
  v91[1] = v36;
  v37 = [AXBuddySettingsLargeVCPushItem alloc];
  v38 = settingsLocString(@"KEYBOARDS", @"Accessibility");
  v39 = AXSettingsBundle();
  v40 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v41 = [UIImage imageNamed:@"Keyboards" inBundle:v39 compatibleWithTraitCollection:v40];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_2F48;
  v71[3] = &unk_C338;
  objc_copyWeak(&v72, &location);
  v42 = [(AXBuddySettingsVCPushItem *)v37 initWithName:v38 image:v41 viewControllerInstantiator:v71];
  v91[2] = v42;
  v43 = [NSArray arrayWithObjects:v91 count:3];

  v44 = [AXBuddySettingsTableSection alloc];
  v45 = settingsLocString(@"MOBILITY_HEADING", @"Accessibility");
  v46 = [(AXBuddySettingsTableSection *)v44 initWithName:v45 subitems:v43];

  v90[0] = v58;
  v90[1] = v46;
  v47 = [NSArray arrayWithObjects:v90 count:2];

  objc_destroyWeak(&v72);
  objc_destroyWeak(&v74);
  objc_destroyWeak(&v76);

  objc_destroyWeak(&v82);
  objc_destroyWeak(&v84);
  objc_destroyWeak(&v86);
  objc_destroyWeak(&v88);

  objc_destroyWeak(&location);

  return v47;
}

@end