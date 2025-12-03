@interface AKSignatureCreationViewController_iOS
- (AKController)controller;
- (AKSignatureCreationControllerDelegate)delegate;
- (AKSignatureCreationViewController_iOS)initWithController:(id)controller;
- (BOOL)becomeFirstResponder;
- (UIResponder)responderToRestore;
- (id)undoManager;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_cancel:(id)_cancel;
- (void)_clear:(id)_clear;
- (void)_done:(id)_done;
- (void)_notifyDidDismiss;
- (void)_removeSignatureDescription;
- (void)_showSignatureDescriptionSelectionAlert;
- (void)_updateSignatureDescriptionWithStringValue:(id)value;
- (void)_validateButtons;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)showEditCustomDescriptionAlert;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation AKSignatureCreationViewController_iOS

- (AKSignatureCreationViewController_iOS)initWithController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = AKSignatureCreationViewController_iOS;
  v5 = [(AKSignatureCreationViewController_iOS *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKSignatureCreationViewController_iOS *)v5 setController:controllerCopy];
    v7 = +[AKController akBundle];
    v8 = [v7 localizedStringForKey:@"New Signature" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
    [(AKSignatureCreationViewController_iOS *)v6 setTitle:v8];

    [(AKSignatureCreationViewController_iOS *)v6 setPreferredContentSize:540.0, 388.0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKSignatureCreationViewController_iOS *)self setView:v4];
}

- (void)viewDidLoad
{
  v147[2] = *MEMORY[0x277D85DE8];
  v141.receiver = self;
  v141.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v141 viewDidLoad];
  traitCollection = [(AKSignatureCreationViewController_iOS *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v4 = ;
  view = [(AKSignatureCreationViewController_iOS *)self view];
  [view setBackgroundColor:v4];

  v6 = objc_alloc(MEMORY[0x277D75780]);
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setNavBar:v11];

  navBar = [(AKSignatureCreationViewController_iOS *)self navBar];
  [navBar setTranslatesAutoresizingMaskIntoConstraints:0];

  navBar2 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [navBar2 setDelegate:self];

  view2 = [(AKSignatureCreationViewController_iOS *)self view];
  navBar3 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [view2 addSubview:navBar3];

  v16 = _NSDictionaryOfVariableBindings(&cfstr_Navbar.isa, self->_navBar, 0);
  view3 = [(AKSignatureCreationViewController_iOS *)self view];
  v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_navBar]|" options:0 metrics:0 views:v16];
  [view3 addConstraints:v18];

  topAnchor = [(UINavigationBar *)self->_navBar topAnchor];
  view4 = [(AKSignatureCreationViewController_iOS *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];

  if (_UISolariumEnabled())
  {
    [v23 setConstant:10.0];
  }

  v139 = v23;
  [v23 setActive:1];
  v24 = objc_alloc_init(MEMORY[0x277D757A8]);
  v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setTitleLabel:v25];

  title = [(AKSignatureCreationViewController_iOS *)self title];
  titleLabel = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [titleLabel setText:title];

  navBar4 = [(AKSignatureCreationViewController_iOS *)self navBar];
  standardAppearance = [navBar4 standardAppearance];
  titleTextAttributes = [standardAppearance titleTextAttributes];
  v31 = [titleTextAttributes objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  titleLabel2 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [titleLabel2 setFont:v31];

  titleLabel3 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [titleLabel3 setTextAlignment:1];

  v34 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v7, v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setDownArrowButton:v34];

  downArrowButton = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  [downArrowButton addTarget:self action:sel__showSignatureDescriptionSelectionAlert forControlEvents:1];

  downArrowButton2 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  v37 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
  [downArrowButton2 setImage:v37 forState:0];

  downArrowButton3 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  [downArrowButton3 setContentEdgeInsets:{8.0, 8.0, 8.0, 8.0}];

  v39 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v7, v8, v9, v10}];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 setAlignment:3];
  [v39 setAxis:0];
  titleLabel4 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [v39 addArrangedSubview:titleLabel4];

  downArrowButton4 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  [v39 addArrangedSubview:downArrowButton4];

  titleLabel5 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  v147[0] = titleLabel5;
  downArrowButton5 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  v147[1] = downArrowButton5;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
  [v39 setAccessibilityElements:v44];

  [v24 setTitleView:v39];
  v138 = v39;
  trailingAnchor = [v39 trailingAnchor];
  downArrowButton6 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  trailingAnchor2 = [downArrowButton6 trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  [v48 setActive:1];

  downArrowButton7 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  LODWORD(v50) = 1144750080;
  [downArrowButton7 setContentCompressionResistancePriority:0 forAxis:v50];

  titleLabel6 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  LODWORD(v52) = 1132068864;
  [titleLabel6 setContentCompressionResistancePriority:0 forAxis:v52];

  navBar5 = [(AKSignatureCreationViewController_iOS *)self navBar];
  v146 = v24;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  [navBar5 setItems:v54];

  v55 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  v56 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v140 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v140 setWidth:16.0];
  presentationController = [(AKSignatureCreationViewController_iOS *)self presentationController];
  presentationStyle = [presentationController presentationStyle];

  v136 = v55;
  v137 = v56;
  if (presentationStyle == 7)
  {
    v145 = v56;
    v59 = &v145;
  }

  else
  {
    v144[0] = v55;
    v144[1] = v140;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:2];
    [v24 setLeftBarButtonItems:v60];

    v143 = v56;
    v59 = &v143;
  }

  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
  [v24 setRightBarButtonItems:v61];

  view5 = [(AKSignatureCreationViewController_iOS *)self view];
  navBar6 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [view5 addSubview:navBar6];

  v64 = [AKSignatureBaselineView alloc];
  view6 = [(AKSignatureCreationViewController_iOS *)self view];
  [view6 bounds];
  v66 = [(AKSignatureBaselineView *)v64 initWithFrame:?];
  [(AKSignatureCreationViewController_iOS *)self setBaselineView:v66];

  baselineView = [(AKSignatureCreationViewController_iOS *)self baselineView];
  [baselineView setTranslatesAutoresizingMaskIntoConstraints:0];

  view7 = [(AKSignatureCreationViewController_iOS *)self view];
  baselineView2 = [(AKSignatureCreationViewController_iOS *)self baselineView];
  navBar7 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [view7 insertSubview:baselineView2 aboveSubview:navBar7];

  v71 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setLabel:v71];

  label = [(AKSignatureCreationViewController_iOS *)self label];
  [label setTranslatesAutoresizingMaskIntoConstraints:0];

  v73 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  label2 = [(AKSignatureCreationViewController_iOS *)self label];
  [label2 setFont:v73];

  label3 = [(AKSignatureCreationViewController_iOS *)self label];
  [label3 setTextAlignment:1];

  v76 = [MEMORY[0x277D75348] colorWithWhite:0.6 alpha:0.8];
  label4 = [(AKSignatureCreationViewController_iOS *)self label];
  [label4 setTextColor:v76];

  clearColor = [MEMORY[0x277D75348] clearColor];
  label5 = [(AKSignatureCreationViewController_iOS *)self label];
  [label5 setBackgroundColor:clearColor];

  v80 = +[AKController akBundle];
  v135 = v24;
  v81 = [v80 localizedStringForKey:@"Sign your name using your finger." value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  label6 = [(AKSignatureCreationViewController_iOS *)self label];
  [label6 setText:v81];

  view8 = [(AKSignatureCreationViewController_iOS *)self view];
  label7 = [(AKSignatureCreationViewController_iOS *)self label];
  baselineView3 = [(AKSignatureCreationViewController_iOS *)self baselineView];
  [view8 insertSubview:label7 aboveSubview:baselineView3];

  v86 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v7, v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setClearButton:v86];

  clearButton = [(AKSignatureCreationViewController_iOS *)self clearButton];
  [clearButton setTranslatesAutoresizingMaskIntoConstraints:0];

  clearButton2 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v89 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.counterclockwise"];
  [clearButton2 setImage:v89 forState:0];

  clearButton3 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v91 = +[AKController akBundle];
  v92 = [v91 localizedStringForKey:@"Clear" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  [clearButton3 setTitle:v92 forState:0];

  clearButton4 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  tintColor = [MEMORY[0x277D75348] tintColor];
  [clearButton4 setTitleColor:tintColor forState:0];

  clearButton5 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  effectiveUserInterfaceLayoutDirection = [clearButton5 effectiveUserInterfaceLayoutDirection];

  clearButton6 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v98 = clearButton6;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v99 = -8.0;
  }

  else
  {
    v99 = 8.0;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v100 = 8.0;
  }

  else
  {
    v100 = -8.0;
  }

  [clearButton6 setTitleEdgeInsets:{0.0, v99, 0.0, v100}];

  clearButton7 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  [clearButton7 setContentEdgeInsets:{11.0, 2.0, 11.0, 10.0}];

  clearButton8 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  [clearButton8 addTarget:self action:sel__clear_ forControlEvents:64];

  view9 = [(AKSignatureCreationViewController_iOS *)self view];
  clearButton9 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  navBar8 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [view9 insertSubview:clearButton9 aboveSubview:navBar8];

  v106 = [AKInkSignatureView alloc];
  view10 = [(AKSignatureCreationViewController_iOS *)self view];
  [view10 bounds];
  v108 = [(AKInkSignatureView *)v106 initWithFrame:?];
  [(AKSignatureCreationViewController_iOS *)self setSignatureView:v108];

  signatureView = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [signatureView setTranslatesAutoresizingMaskIntoConstraints:0];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  signatureView2 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [signatureView2 setBackgroundColor:whiteColor];

  view11 = [(AKSignatureCreationViewController_iOS *)self view];
  signatureView3 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  navBar9 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [view11 insertSubview:signatureView3 belowSubview:navBar9];

  v115 = _NSDictionaryOfVariableBindings(&cfstr_BaselineviewNa.isa, self->_baselineView, self->_navBar, self->_label, self->_signatureView, self->_clearButton, 0);

  array = [MEMORY[0x277CBEB18] array];
  v117 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_baselineView(20)]-[_label]-8-[_clearButton]" options:0 metrics:0 views:v115];
  [array addObjectsFromArray:v117];

  v118 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_label]|" options:0 metrics:0 views:v115];
  [array addObjectsFromArray:v118];

  v119 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_signatureView]|" options:0 metrics:0 views:v115];
  [array addObjectsFromArray:v119];

  v134 = v115;
  v120 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_baselineView]|" options:0 metrics:0 views:v115];
  [array addObjectsFromArray:v120];

  v121 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_navBar][_signatureView]|" options:0 metrics:0 views:v115];
  [array addObjectsFromArray:v121];

  clearButton10 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  bottomAnchor = [clearButton10 bottomAnchor];
  view12 = [(AKSignatureCreationViewController_iOS *)self view];
  safeAreaLayoutGuide2 = [view12 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v124 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v142[0] = v124;
  clearButton11 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  centerXAnchor = [clearButton11 centerXAnchor];
  view13 = [(AKSignatureCreationViewController_iOS *)self view];
  centerXAnchor2 = [view13 centerXAnchor];
  v129 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v142[1] = v129;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:2];
  [array addObjectsFromArray:v130];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (BOOL)becomeFirstResponder
{
  view = [(AKSignatureCreationViewController_iOS *)self view];
  window = [view window];
  firstResponder = [window firstResponder];

  v9.receiver = self;
  v9.super_class = AKSignatureCreationViewController_iOS;
  becomeFirstResponder = [(AKSignatureCreationViewController_iOS *)&v9 becomeFirstResponder];
  if (becomeFirstResponder && firstResponder != self)
  {
    [(AKSignatureCreationViewController_iOS *)self setResponderToRestore:firstResponder];
  }

  return becomeFirstResponder;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v4 viewDidAppear:appear];
  if (([(AKSignatureCreationViewController_iOS *)self isFirstResponder]& 1) == 0)
  {
    [(AKSignatureCreationViewController_iOS *)self becomeFirstResponder];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(AKSignatureCreationViewController_iOS *)self resignFirstResponder];
  responderToRestore = [(AKSignatureCreationViewController_iOS *)self responderToRestore];
  v6 = responderToRestore;
  if (responderToRestore)
  {
    [responderToRestore becomeFirstResponder];
  }

  [(AKSignatureCreationViewController_iOS *)self setResponderToRestore:0];
  v7.receiver = self;
  v7.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v7 viewDidDisappear:disappearCopy];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v16 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(AKSignatureCreationViewController_iOS *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;

  if (width != v10 || height != v12)
  {
    v14[4] = self;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23F42F084;
    v15[3] = &unk_278C7BAB0;
    v15[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23F42F0CC;
    v14[3] = &unk_278C7BAB0;
    [coordinatorCopy animateAlongsideTransition:v15 completion:v14];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = AKSignatureCreationViewController_iOS;
  changeCopy = change;
  [(AKSignatureCreationViewController_iOS *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(AKSignatureCreationViewController_iOS *)self traitCollection:v11.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    traitCollection = [(AKSignatureCreationViewController_iOS *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v9 = ;
    view = [(AKSignatureCreationViewController_iOS *)self view];
    [view setBackgroundColor:v9];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = AKSignatureCreationViewController_iOS;
  coordinatorCopy = coordinator;
  [(AKSignatureCreationViewController_iOS *)&v16 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  traitCollection = [(AKSignatureCreationViewController_iOS *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  LOBYTE(horizontalSizeClass) = horizontalSizeClass != [collectionCopy horizontalSizeClass];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23F42F38C;
  v13[3] = &unk_278C7BAD8;
  v15 = horizontalSizeClass;
  v13[4] = self;
  v14 = collectionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23F42F410;
  v11[3] = &unk_278C7BB00;
  v12 = horizontalSizeClass;
  v11[4] = self;
  v10 = collectionCopy;
  [coordinatorCopy animateAlongsideTransition:v13 completion:v11];
}

- (void)_validateButtons
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  navBar = [(AKSignatureCreationViewController_iOS *)self navBar];
  topItem = [navBar topItem];
  rightBarButtonItems = [topItem rightBarButtonItems];

  v6 = [rightBarButtonItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(rightBarButtonItems);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 action] == sel__clear_)
        {
          signatureView = [(AKSignatureCreationViewController_iOS *)self signatureView];
          [v10 setEnabled:{objc_msgSend(signatureView, "hasStrokes")}];
        }
      }

      v7 = [rightBarButtonItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_cancel:(id)_cancel
{
  controller = [(AKSignatureCreationViewController_iOS *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate controllerWillDismissSignatureCaptureView:controller];
  }

  presentingViewController = [(AKSignatureCreationViewController_iOS *)self presentingViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23F42F6E4;
  v8[3] = &unk_278C7B540;
  v8[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v8];

  signatureView = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [signatureView clear];
}

- (void)_clear:(id)_clear
{
  signatureView = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [signatureView clear];
}

- (void)_done:(id)_done
{
  controller = [(AKSignatureCreationViewController_iOS *)self controller];
  signatureView = [(AKSignatureCreationViewController_iOS *)self signatureView];
  v20 = 0;
  v6 = [signatureView copyPotracedPathAndReturnDrawing:&v20];
  v7 = v20;

  v8 = 0;
  if (!CGPathIsEmpty(v6))
  {
    v9 = [AKSignature alloc];
    date = [MEMORY[0x277CBEAA8] date];
    descriptionTag = [(AKSignatureCreationViewController_iOS *)self descriptionTag];
    customDescription = [(AKSignatureCreationViewController_iOS *)self customDescription];
    v8 = [(AKSignature *)v9 initWithDrawing:v7 path:v6 baselineOffset:date creationDate:descriptionTag descriptionTag:customDescription customDescription:0.0];
  }

  CGPathRelease(v6);
  signatureView2 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [signatureView2 clear];

  if (v8)
  {
    signatureModelController = [controller signatureModelController];
    [signatureModelController insertObject:v8 inSignaturesAtIndex:0];

    signatureModelController2 = [controller signatureModelController];
    [signatureModelController2 setSelectedSignature:v8];

    delegate = [(AKSignatureCreationViewController_iOS *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate signatureCreationControllerDidCreateSignature:self];
    }
  }

  delegate2 = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate2 controllerWillDismissSignatureCaptureView:controller];
  }

  presentingViewController = [(AKSignatureCreationViewController_iOS *)self presentingViewController];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23F42F968;
  v19[3] = &unk_278C7B540;
  v19[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v19];

  NSLog(&cfstr_AddedSignature.isa, v8);
}

- (void)_notifyDidDismiss
{
  delegate = [(AKSignatureCreationViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signatureCreationControllerDidDismiss:self];
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  firstResponder = [(AKSignatureCreationViewController_iOS *)self firstResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textFields = [firstResponder textFields];
    firstObject = [textFields firstObject];
    [firstObject becomeFirstResponder];
  }
}

- (void)_showSignatureDescriptionSelectionAlert
{
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  downArrowButton = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  popoverPresentationController = [v3 popoverPresentationController];
  [popoverPresentationController setSourceView:downArrowButton];

  downArrowButton2 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  [downArrowButton2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  popoverPresentationController2 = [v3 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v8, v10, v12, v14}];

  popoverPresentationController3 = [v3 popoverPresentationController];
  v17 = 1;
  [popoverPresentationController3 setPermittedArrowDirections:1];

  objc_initWeak(location, self);
  objc_initWeak(&from, v3);
  do
  {
    v18 = [AKSignatureDescription stringValueForSignatureDescriptionTag:v17];
    v19 = MEMORY[0x277D750F8];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_23F42FF3C;
    v40[3] = &unk_278C7BB28;
    objc_copyWeak(&v42, location);
    v20 = v18;
    v41 = v20;
    v21 = [v19 actionWithTitle:v20 style:0 handler:v40];
    [v21 _setChecked:{v17 == -[AKSignatureCreationViewController_iOS descriptionTag](self, "descriptionTag")}];
    [v3 addAction:v21];

    objc_destroyWeak(&v42);
    ++v17;
  }

  while (v17 != 6);
  v22 = MEMORY[0x277D750F8];
  v23 = +[AKController akBundle];
  v24 = [v23 localizedStringForKey:@"Custom Label" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_23F42FF8C;
  v37[3] = &unk_278C7BB50;
  objc_copyWeak(&v38, &from);
  objc_copyWeak(&v39, location);
  v25 = [v22 actionWithTitle:v24 style:0 handler:v37];

  [v25 _setChecked:{-[AKSignatureCreationViewController_iOS descriptionTag](self, "descriptionTag") == -1}];
  [v3 addAction:v25];
  v26 = MEMORY[0x277D750F8];
  v27 = +[AKController akBundle];
  v28 = [v27 localizedStringForKey:@"No Label" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_23F430094;
  v34[3] = &unk_278C7BB50;
  objc_copyWeak(&v35, &from);
  objc_copyWeak(&v36, location);
  v29 = [v26 actionWithTitle:v28 style:2 handler:v34];
  [v3 addAction:v29];

  v30 = MEMORY[0x277D750F8];
  v31 = +[AKController akBundle];
  v32 = [v31 localizedStringForKey:@"Cancel" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  v33 = [v30 actionWithTitle:v32 style:1 handler:0];
  [v3 addAction:v33];

  [(AKSignatureCreationViewController_iOS *)self presentViewController:v3 animated:1 completion:0];
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

- (void)showEditCustomDescriptionAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Custom Label" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  v6 = [v3 alertControllerWithTitle:v5 message:0 preferredStyle:1];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23F4304DC;
  v23[3] = &unk_278C7BB78;
  objc_copyWeak(&v24, &location);
  [v6 addTextFieldWithConfigurationHandler:v23];
  v7 = MEMORY[0x277D750F8];
  v8 = +[AKController akBundle];
  v9 = [v8 localizedStringForKey:@"Cancel" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23F4305B8;
  v21[3] = &unk_278C7BBA0;
  objc_copyWeak(&v22, &from);
  v10 = [v7 actionWithTitle:v9 style:1 handler:v21];
  [v6 addAction:v10];

  v11 = MEMORY[0x277D750F8];
  v12 = +[AKController akBundle];
  v13 = [v12 localizedStringForKey:@"Done" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23F430600;
  v18 = &unk_278C7BB50;
  objc_copyWeak(&v19, &from);
  objc_copyWeak(&v20, &location);
  v14 = [v11 actionWithTitle:v13 style:0 handler:&v15];
  [v6 addAction:{v14, v15, v16, v17, v18}];

  [(AKSignatureCreationViewController_iOS *)self presentViewController:v6 animated:1 completion:0];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_removeSignatureDescription
{
  [(AKSignatureCreationViewController_iOS *)self setDescriptionTag:0];
  [(AKSignatureCreationViewController_iOS *)self setCustomDescription:0];
  v5 = +[AKController akBundle];
  v3 = [v5 localizedStringForKey:@"New Signature" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  titleLabel = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [titleLabel setText:v3];
}

- (void)_updateSignatureDescriptionWithStringValue:(id)value
{
  valueCopy = value;
  v4 = [AKSignatureDescription stringValueForSignatureDescriptionTag:[(AKSignatureCreationViewController_iOS *)self descriptionTag]];
  undoManager = [(AKSignatureCreationViewController_iOS *)self undoManager];
  [undoManager registerUndoWithTarget:self selector:sel__updateSignatureDescriptionWithStringValue_ object:v4];

  v6 = [AKSignatureDescription signatureDescriptionTagFromStringValue:valueCopy];
  if (v6)
  {
    v7 = v6;
    [(AKSignatureCreationViewController_iOS *)self setDescriptionTag:v6];
    if (v7 == -1)
    {
      v8 = valueCopy;
    }

    else
    {
      v8 = 0;
    }

    [(AKSignatureCreationViewController_iOS *)self setCustomDescription:v8];
    titleLabel = [(AKSignatureCreationViewController_iOS *)self titleLabel];
    [titleLabel setText:valueCopy];
  }

  else
  {
    [(AKSignatureCreationViewController_iOS *)self _removeSignatureDescription];
  }
}

- (id)undoManager
{
  _undoManager = [(AKSignatureCreationViewController_iOS *)self _undoManager];

  if (!_undoManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAD90]);
    [(AKSignatureCreationViewController_iOS *)self set_undoManager:v4];
  }

  return [(AKSignatureCreationViewController_iOS *)self _undoManager];
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  if (ended == 1)
  {
    v5 = [(AKSignatureCreationViewController_iOS *)self undoManager:ended];
    [v5 undo];
  }
}

- (AKSignatureCreationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (UIResponder)responderToRestore
{
  WeakRetained = objc_loadWeakRetained(&self->_responderToRestore);

  return WeakRetained;
}

@end