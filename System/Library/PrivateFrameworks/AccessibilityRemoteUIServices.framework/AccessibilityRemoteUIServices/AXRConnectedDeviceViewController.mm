@interface AXRConnectedDeviceViewController
- (AXRConnectedDeviceViewController)initWithRemoteDevice:(id)device;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_dismissCurrentPresentedViewController;
- (void)_moreButtonPressed;
- (void)_performDeviceRemoteAction:(id)action;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)remoteDeviceDidUnexpectedlyDisconnect:(id)disconnect;
- (void)viewDidLoad;
- (void)voiceOverTouchPadView:(id)view didReceiveCommand:(id)command;
@end

@implementation AXRConnectedDeviceViewController

- (AXRConnectedDeviceViewController)initWithRemoteDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = AXRConnectedDeviceViewController;
  v5 = [(AXRConnectedDeviceViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AXRConnectedDeviceViewController *)v5 setActiveDevice:deviceCopy];
    activeDevice = [(AXRConnectedDeviceViewController *)v6 activeDevice];
    [activeDevice setConnectionDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
  [activeDevice disconnect];

  [(AXRConnectedDeviceViewController *)self setActiveDevice:0];
  eventProcessor = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor endHandlingHIDEventsForReason:@"AXRemoteDeviceConnection"];

  eventProcessor2 = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor2 cleanup];

  v6.receiver = self;
  v6.super_class = AXRConnectedDeviceViewController;
  [(AXRConnectedDeviceViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v98[3] = *MEMORY[0x277D85DE8];
  v95.receiver = self;
  v95.super_class = AXRConnectedDeviceViewController;
  [(AXRConnectedDeviceViewController *)&v95 viewDidLoad];
  activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
  displayName = [activeDevice displayName];
  [(AXRConnectedDeviceViewController *)self setTitle:displayName];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(AXRConnectedDeviceViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v7 = objc_alloc_init(MEMORY[0x277D752F0]);
  [(AXRConnectedDeviceViewController *)self setCollectionViewFlowLayout:v7];

  v8 = [AXRActionsCollectionView alloc];
  view2 = [(AXRConnectedDeviceViewController *)self view];
  [view2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  collectionViewFlowLayout = [(AXRConnectedDeviceViewController *)self collectionViewFlowLayout];
  v19 = [(AXRActionsCollectionView *)v8 initWithFrame:collectionViewFlowLayout collectionViewLayout:v11, v13, v15, v17];
  [(AXRConnectedDeviceViewController *)self setActionsCollectionView:v19];

  actionsCollectionView = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView setDelegate:self];

  actionsCollectionView2 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView2 setDataSource:self];

  actionsCollectionView3 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView3 setBounces:0];

  actionsCollectionView4 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView4 setScrollEnabled:0];

  actionsCollectionView5 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  actionsCollectionView6 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CellReuseIdentifier"];

  view3 = [(AXRConnectedDeviceViewController *)self view];
  actionsCollectionView7 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [view3 addSubview:actionsCollectionView7];

  v74 = MEMORY[0x277CCAAD0];
  actionsCollectionView8 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  leadingAnchor = [actionsCollectionView8 leadingAnchor];
  view4 = [(AXRConnectedDeviceViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v82 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v98[0] = v82;
  actionsCollectionView9 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  trailingAnchor = [actionsCollectionView9 trailingAnchor];
  view5 = [(AXRConnectedDeviceViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v98[1] = v29;
  actionsCollectionView10 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  bottomAnchor = [actionsCollectionView10 bottomAnchor];
  view6 = [(AXRConnectedDeviceViewController *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v98[2] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:3];
  [v74 activateConstraints:v36];

  activeDevice2 = [(AXRConnectedDeviceViewController *)self activeDevice];
  if ([activeDevice2 contextType] == 1)
  {
    v38 = _AXSVoiceOverTouchEnabled() == 0;

    if (!v38)
    {
      v39 = [AXRVoiceOverTouchPadView alloc];
      view7 = [(AXRConnectedDeviceViewController *)self view];
      [view7 frame];
      actionsCollectionView13 = [(AXRVoiceOverTouchPadView *)v39 initWithFrame:?];

      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 setDelegate:self];
      secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 setBackgroundColor:secondarySystemBackgroundColor];

      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 _setContinuousCornerRadius:42.0];
      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 setAutoresizingMask:18];
      view8 = [(AXRConnectedDeviceViewController *)self view];
      actionsCollectionView11 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
      [view8 insertSubview:actionsCollectionView13 belowSubview:actionsCollectionView11];

      v70 = MEMORY[0x277CCAAD0];
      leadingAnchor3 = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 leadingAnchor];
      view9 = [(AXRConnectedDeviceViewController *)self view];
      safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
      leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
      v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
      v97[0] = v46;
      trailingAnchor3 = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 trailingAnchor];
      view10 = [(AXRConnectedDeviceViewController *)self view];
      safeAreaLayoutGuide3 = [view10 safeAreaLayoutGuide];
      trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
      v79 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
      v97[1] = v79;
      topAnchor = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 topAnchor];
      view11 = [(AXRConnectedDeviceViewController *)self view];
      safeAreaLayoutGuide4 = [view11 safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
      v71 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
      v97[2] = v71;
      bottomAnchor3 = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 bottomAnchor];
      actionsCollectionView12 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
      topAnchor3 = [actionsCollectionView12 topAnchor];
      v51 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-12.0];
      v97[3] = v51;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:4];
      [v70 activateConstraints:v52];

      contextType = 0;
      v54 = 3;
      goto LABEL_6;
    }
  }

  else
  {
  }

  activeDevice3 = [(AXRConnectedDeviceViewController *)self activeDevice];
  contextType = [activeDevice3 contextType];

  v56 = MEMORY[0x277CCAAD0];
  actionsCollectionView13 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  leadingAnchor3 = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 topAnchor];
  view9 = [(AXRConnectedDeviceViewController *)self view];
  safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v96 = v46;
  trailingAnchor3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
  [v56 activateConstraints:trailingAnchor3];
  v54 = 8;
LABEL_6:

  activeDevice4 = [(AXRConnectedDeviceViewController *)self activeDevice];
  v58 = [activeDevice4 remoteActionsForPreferredContextType:contextType];

  if (v54 > [v58 count])
  {
    v54 = [v58 count];
  }

  v59 = [v58 subarrayWithRange:{0, v54}];
  remoteActionsToShow = self->_remoteActionsToShow;
  self->_remoteActionsToShow = v59;

  v61 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v62 = dispatch_queue_attr_make_with_qos_class(v61, QOS_CLASS_USER_INTERACTIVE, 0);

  v63 = dispatch_queue_create("com.apple.AXRemoteUIServices.EventSenderQueue", v62);
  eventSenderQueue = self->_eventSenderQueue;
  self->_eventSenderQueue = v63;

  v65 = [objc_alloc(MEMORY[0x277CE7D68]) initWithHIDTapIdentifier:@"com.apple.AXRemoteUIServices.EventProcessor" HIDEventTapPriority:70 systemEventTapIdentifier:0 systemEventTapPriority:30];
  [(AXRConnectedDeviceViewController *)self setEventProcessor:v65];

  eventProcessor = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor setHIDEventFilterMask:40];

  objc_initWeak(&location, self);
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke;
  v92[3] = &unk_278BED628;
  objc_copyWeak(&v93, &location);
  eventProcessor2 = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor2 setHIDEventHandler:v92];

  eventProcessor3 = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor3 beginHandlingHIDEventsForReason:@"AXRemoteDeviceConnection"];

  objc_destroyWeak(&v93);
  objc_destroyWeak(&location);

  v69 = *MEMORY[0x277D85DE8];
}

uint64_t __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 senderID] != 0x8000000817319372)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_5;
    }

    v7 = [WeakRetained presentedViewController];

    if (v7)
    {
      goto LABEL_5;
    }

    if ([v3 type] == 5000 && (objc_msgSend(v3, "accessibilityData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "page"), v9, v10 == 2))
    {
      v11 = [v3 accessibilityData];
      v12 = [v11 usage];

      if (v12 == 2)
      {
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_2;
        v28 = &unk_278BED5B0;
        v29 = v6;
        AXPerformBlockAsynchronouslyOnMainThread();
LABEL_14:
        v4 = 1;
        goto LABEL_6;
      }

      v14 = [v6 activeDevice];
      v15 = [v14 customizedRemoteActionForHandGestureEventUsage:v12];

      if (v15 && ([v15 isEqualToString:*MEMORY[0x277CE74E8]] & 1) == 0)
      {
        v16 = v6[124];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_3;
        v20[3] = &unk_278BED5D8;
        v21 = v15;
        v22 = v6;
        v24 = v12;
        v23 = v3;
        v17 = v15;
        dispatch_async(v16, v20);

        goto LABEL_14;
      }
    }

    else if ([v3 type] == 1100)
    {
      v13 = v6[124];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_4;
      block[3] = &unk_278BED600;
      block[4] = v6;
      v19 = v3;
      dispatch_async(v13, block);

      goto LABEL_14;
    }

LABEL_5:
    v4 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

void __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activeDevice];
  [v3 deviceType];
  v4 = AXRLocalizedStringForRemoteActionWithDeviceType();

  v5 = *(a1 + 56);
  v6 = AXLocalizedStringForHandGestureEventUsage();
  v7 = [MEMORY[0x277CE7D38] sharedInstance];
  v23 = v4;
  [v7 presentBannerWithTitle:v4 message:v6 duration:1.0];

  v22 = [*(a1 + 40) activeDevice];
  v31[0] = *MEMORY[0x277CE74F8];
  v8 = *(a1 + 32);
  v29 = *MEMORY[0x277CE74E0];
  v30 = v8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v32[0] = v24;
  v31[1] = *MEMORY[0x277CE7488];
  v9 = *MEMORY[0x277CE7490];
  v27[0] = *MEMORY[0x277CE7498];
  v27[1] = v9;
  v28[0] = v4;
  v28[1] = v6;
  v27[2] = *MEMORY[0x277CE7480];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  v28[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v32[1] = v11;
  v31[2] = *MEMORY[0x277CE75B0];
  v25[0] = *MEMORY[0x277CE75A8];
  v12 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 56)];
  v26[0] = v12;
  v25[1] = *MEMORY[0x277CE75C0];
  v13 = MEMORY[0x277CCABB0];
  v14 = [*(a1 + 48) accessibilityData];
  [v14 eventValue1];
  v15 = [v13 numberWithFloat:?];
  v26[1] = v15;
  v25[2] = *MEMORY[0x277CE75B8];
  v16 = MEMORY[0x277CCABB0];
  v17 = [*(a1 + 48) accessibilityData];
  [v17 eventValue2];
  v18 = [v16 numberWithFloat:?];
  v26[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v32[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  [v22 sendPayload:v20 withEventID:*MEMORY[0x277CE7478]];

  v21 = *MEMORY[0x277D85DE8];
}

void __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeDevice];
  v9 = *MEMORY[0x277CE75D0];
  v7 = *MEMORY[0x277CE75C8];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "scrollAmount")}];
  v8 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v2 sendPayload:v5 withEventID:*MEMORY[0x277CE7478]];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_moreButtonPressed
{
  v3 = [AXRDeviceActionsViewController alloc];
  activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
  v8 = [(AXRDeviceActionsViewController *)v3 initWithRemoteDevice:activeDevice delegate:self];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel__dismissCurrentPresentedViewController];
  navigationItem = [(AXRDeviceActionsViewController *)v8 navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(AXRConnectedDeviceViewController *)self presentViewController:v7 animated:1 completion:&__block_literal_global_0];
}

- (void)_dismissCurrentPresentedViewController
{
  presentedViewController = [(AXRConnectedDeviceViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_performDeviceRemoteAction:(id)action
{
  actionCopy = action;
  activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
  eventSenderQueue = self->_eventSenderQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__AXRConnectedDeviceViewController__performDeviceRemoteAction___block_invoke;
  v9[3] = &unk_278BED600;
  v10 = activeDevice;
  v11 = actionCopy;
  v7 = actionCopy;
  v8 = activeDevice;
  dispatch_async(eventSenderQueue, v9);
}

void __63__AXRConnectedDeviceViewController__performDeviceRemoteAction___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CE74F8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6 = *MEMORY[0x277CE74E0];
  v7 = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 sendPayload:v4 withEventID:*MEMORY[0x277CE7478]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  remoteActionsToShow = [(AXRConnectedDeviceViewController *)self remoteActionsToShow];
  v7 = [remoteActionsToShow count];

  if (item == v7)
  {
    [(AXRConnectedDeviceViewController *)self _moreButtonPressed];
  }

  else
  {
    remoteActionsToShow2 = [(AXRConnectedDeviceViewController *)self remoteActionsToShow];
    v9 = [remoteActionsToShow2 objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    [(AXRConnectedDeviceViewController *)self _performDeviceRemoteAction:v9];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AXRConnectedDeviceViewController *)self remoteActionsToShow:view];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"CellReuseIdentifier" forIndexPath:pathCopy];
  item = [pathCopy item];
  remoteActionsToShow = [(AXRConnectedDeviceViewController *)self remoteActionsToShow];
  v10 = [remoteActionsToShow count];

  if (item == v10)
  {
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle"];
    v12 = AXRLocalizedStringForKey();
    [v7 setImage:v11 title:v12];
  }

  else
  {
    remoteActionsToShow2 = [(AXRConnectedDeviceViewController *)self remoteActionsToShow];
    v11 = [remoteActionsToShow2 objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
    v12 = AXRUIImageForRemoteActionWithDeviceType(v11, [activeDevice deviceType]);

    activeDevice2 = [(AXRConnectedDeviceViewController *)self activeDevice];
    [activeDevice2 deviceType];
    v16 = AXRLocalizedStringForRemoteActionWithDeviceType();
    [v7 setImage:v12 title:v16];
  }

  return v7;
}

- (void)remoteDeviceDidUnexpectedlyDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__AXRConnectedDeviceViewController_remoteDeviceDidUnexpectedlyDisconnect___block_invoke;
  v6[3] = &unk_278BED5B0;
  v7 = disconnectCopy;
  v5 = disconnectCopy;
  [(AXRConnectedDeviceViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

void __74__AXRConnectedDeviceViewController_remoteDeviceDidUnexpectedlyDisconnect___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CE7D38] sharedInstance];
  v2 = [*(a1 + 32) displayName];
  v3 = AXRLocalizedStringForKey();
  [v4 presentBannerWithTitle:v2 message:v3 duration:3.0];
}

- (void)voiceOverTouchPadView:(id)view didReceiveCommand:(id)command
{
  commandCopy = command;
  eventSenderQueue = self->_eventSenderQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__AXRConnectedDeviceViewController_voiceOverTouchPadView_didReceiveCommand___block_invoke;
  v8[3] = &unk_278BED600;
  v8[4] = self;
  v9 = commandCopy;
  v7 = commandCopy;
  dispatch_async(eventSenderQueue, v8);
}

void __76__AXRConnectedDeviceViewController_voiceOverTouchPadView_didReceiveCommand___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeDevice];
  v9 = *MEMORY[0x277CE75E0];
  v3 = *(a1 + 40);
  v7 = *MEMORY[0x277CE75D8];
  v8 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v2 sendPayload:v5 withEventID:*MEMORY[0x277CE7478]];

  v6 = *MEMORY[0x277D85DE8];
}

@end