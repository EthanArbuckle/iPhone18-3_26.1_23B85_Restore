@interface AKSignatureCreationViewController_iOS
- (AKController)controller;
- (AKSignatureCreationControllerDelegate)delegate;
- (AKSignatureCreationViewController_iOS)initWithController:(id)a3;
- (BOOL)becomeFirstResponder;
- (UIResponder)responderToRestore;
- (id)undoManager;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_cancel:(id)a3;
- (void)_clear:(id)a3;
- (void)_done:(id)a3;
- (void)_notifyDidDismiss;
- (void)_removeSignatureDescription;
- (void)_showSignatureDescriptionSelectionAlert;
- (void)_updateSignatureDescriptionWithStringValue:(id)a3;
- (void)_validateButtons;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)showEditCustomDescriptionAlert;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AKSignatureCreationViewController_iOS

- (AKSignatureCreationViewController_iOS)initWithController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AKSignatureCreationViewController_iOS;
  v5 = [(AKSignatureCreationViewController_iOS *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKSignatureCreationViewController_iOS *)v5 setController:v4];
    v7 = +[AKController akBundle];
    v8 = [v7 localizedStringForKey:@"New Signature" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
    [(AKSignatureCreationViewController_iOS *)v6 setTitle:v8];

    [(AKSignatureCreationViewController_iOS *)v6 setPreferredContentSize:540.0, 388.0];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v6 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [(AKSignatureCreationViewController_iOS *)self traitCollection];
  if ([v3 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v4 = ;
  v5 = [(AKSignatureCreationViewController_iOS *)self view];
  [v5 setBackgroundColor:v4];

  v6 = objc_alloc(MEMORY[0x277D75780]);
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setNavBar:v11];

  v12 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [v13 setDelegate:self];

  v14 = [(AKSignatureCreationViewController_iOS *)self view];
  v15 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [v14 addSubview:v15];

  v16 = _NSDictionaryOfVariableBindings(&cfstr_Navbar.isa, self->_navBar, 0);
  v17 = [(AKSignatureCreationViewController_iOS *)self view];
  v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_navBar]|" options:0 metrics:0 views:v16];
  [v17 addConstraints:v18];

  v19 = [(UINavigationBar *)self->_navBar topAnchor];
  v20 = [(AKSignatureCreationViewController_iOS *)self view];
  v21 = [v20 safeAreaLayoutGuide];
  v22 = [v21 topAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];

  if (_UISolariumEnabled())
  {
    [v23 setConstant:10.0];
  }

  v139 = v23;
  [v23 setActive:1];
  v24 = objc_alloc_init(MEMORY[0x277D757A8]);
  v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setTitleLabel:v25];

  v26 = [(AKSignatureCreationViewController_iOS *)self title];
  v27 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [v27 setText:v26];

  v28 = [(AKSignatureCreationViewController_iOS *)self navBar];
  v29 = [v28 standardAppearance];
  v30 = [v29 titleTextAttributes];
  v31 = [v30 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  v32 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [v32 setFont:v31];

  v33 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [v33 setTextAlignment:1];

  v34 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v7, v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setDownArrowButton:v34];

  v35 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  [v35 addTarget:self action:sel__showSignatureDescriptionSelectionAlert forControlEvents:1];

  v36 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  v37 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
  [v36 setImage:v37 forState:0];

  v38 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  [v38 setContentEdgeInsets:{8.0, 8.0, 8.0, 8.0}];

  v39 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v7, v8, v9, v10}];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 setAlignment:3];
  [v39 setAxis:0];
  v40 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [v39 addArrangedSubview:v40];

  v41 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  [v39 addArrangedSubview:v41];

  v42 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  v147[0] = v42;
  v43 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  v147[1] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
  [v39 setAccessibilityElements:v44];

  [v24 setTitleView:v39];
  v138 = v39;
  v45 = [v39 trailingAnchor];
  v46 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  v47 = [v46 trailingAnchor];
  v48 = [v45 constraintEqualToAnchor:v47 constant:0.0];
  [v48 setActive:1];

  v49 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  LODWORD(v50) = 1144750080;
  [v49 setContentCompressionResistancePriority:0 forAxis:v50];

  v51 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  LODWORD(v52) = 1132068864;
  [v51 setContentCompressionResistancePriority:0 forAxis:v52];

  v53 = [(AKSignatureCreationViewController_iOS *)self navBar];
  v146 = v24;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  [v53 setItems:v54];

  v55 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  v56 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v140 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v140 setWidth:16.0];
  v57 = [(AKSignatureCreationViewController_iOS *)self presentationController];
  v58 = [v57 presentationStyle];

  v136 = v55;
  v137 = v56;
  if (v58 == 7)
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

  v62 = [(AKSignatureCreationViewController_iOS *)self view];
  v63 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [v62 addSubview:v63];

  v64 = [AKSignatureBaselineView alloc];
  v65 = [(AKSignatureCreationViewController_iOS *)self view];
  [v65 bounds];
  v66 = [(AKSignatureBaselineView *)v64 initWithFrame:?];
  [(AKSignatureCreationViewController_iOS *)self setBaselineView:v66];

  v67 = [(AKSignatureCreationViewController_iOS *)self baselineView];
  [v67 setTranslatesAutoresizingMaskIntoConstraints:0];

  v68 = [(AKSignatureCreationViewController_iOS *)self view];
  v69 = [(AKSignatureCreationViewController_iOS *)self baselineView];
  v70 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [v68 insertSubview:v69 aboveSubview:v70];

  v71 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setLabel:v71];

  v72 = [(AKSignatureCreationViewController_iOS *)self label];
  [v72 setTranslatesAutoresizingMaskIntoConstraints:0];

  v73 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v74 = [(AKSignatureCreationViewController_iOS *)self label];
  [v74 setFont:v73];

  v75 = [(AKSignatureCreationViewController_iOS *)self label];
  [v75 setTextAlignment:1];

  v76 = [MEMORY[0x277D75348] colorWithWhite:0.6 alpha:0.8];
  v77 = [(AKSignatureCreationViewController_iOS *)self label];
  [v77 setTextColor:v76];

  v78 = [MEMORY[0x277D75348] clearColor];
  v79 = [(AKSignatureCreationViewController_iOS *)self label];
  [v79 setBackgroundColor:v78];

  v80 = +[AKController akBundle];
  v135 = v24;
  v81 = [v80 localizedStringForKey:@"Sign your name using your finger." value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  v82 = [(AKSignatureCreationViewController_iOS *)self label];
  [v82 setText:v81];

  v83 = [(AKSignatureCreationViewController_iOS *)self view];
  v84 = [(AKSignatureCreationViewController_iOS *)self label];
  v85 = [(AKSignatureCreationViewController_iOS *)self baselineView];
  [v83 insertSubview:v84 aboveSubview:v85];

  v86 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v7, v8, v9, v10}];
  [(AKSignatureCreationViewController_iOS *)self setClearButton:v86];

  v87 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  [v87 setTranslatesAutoresizingMaskIntoConstraints:0];

  v88 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v89 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.counterclockwise"];
  [v88 setImage:v89 forState:0];

  v90 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v91 = +[AKController akBundle];
  v92 = [v91 localizedStringForKey:@"Clear" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  [v90 setTitle:v92 forState:0];

  v93 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v94 = [MEMORY[0x277D75348] tintColor];
  [v93 setTitleColor:v94 forState:0];

  v95 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v96 = [v95 effectiveUserInterfaceLayoutDirection];

  v97 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v98 = v97;
  if (v96 == 1)
  {
    v99 = -8.0;
  }

  else
  {
    v99 = 8.0;
  }

  if (v96 == 1)
  {
    v100 = 8.0;
  }

  else
  {
    v100 = -8.0;
  }

  [v97 setTitleEdgeInsets:{0.0, v99, 0.0, v100}];

  v101 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  [v101 setContentEdgeInsets:{11.0, 2.0, 11.0, 10.0}];

  v102 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  [v102 addTarget:self action:sel__clear_ forControlEvents:64];

  v103 = [(AKSignatureCreationViewController_iOS *)self view];
  v104 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v105 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [v103 insertSubview:v104 aboveSubview:v105];

  v106 = [AKInkSignatureView alloc];
  v107 = [(AKSignatureCreationViewController_iOS *)self view];
  [v107 bounds];
  v108 = [(AKInkSignatureView *)v106 initWithFrame:?];
  [(AKSignatureCreationViewController_iOS *)self setSignatureView:v108];

  v109 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [v109 setTranslatesAutoresizingMaskIntoConstraints:0];

  v110 = [MEMORY[0x277D75348] whiteColor];
  v111 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [v111 setBackgroundColor:v110];

  v112 = [(AKSignatureCreationViewController_iOS *)self view];
  v113 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  v114 = [(AKSignatureCreationViewController_iOS *)self navBar];
  [v112 insertSubview:v113 belowSubview:v114];

  v115 = _NSDictionaryOfVariableBindings(&cfstr_BaselineviewNa.isa, self->_baselineView, self->_navBar, self->_label, self->_signatureView, self->_clearButton, 0);

  v116 = [MEMORY[0x277CBEB18] array];
  v117 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_baselineView(20)]-[_label]-8-[_clearButton]" options:0 metrics:0 views:v115];
  [v116 addObjectsFromArray:v117];

  v118 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_label]|" options:0 metrics:0 views:v115];
  [v116 addObjectsFromArray:v118];

  v119 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_signatureView]|" options:0 metrics:0 views:v115];
  [v116 addObjectsFromArray:v119];

  v134 = v115;
  v120 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_baselineView]|" options:0 metrics:0 views:v115];
  [v116 addObjectsFromArray:v120];

  v121 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_navBar][_signatureView]|" options:0 metrics:0 views:v115];
  [v116 addObjectsFromArray:v121];

  v133 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v131 = [v133 bottomAnchor];
  v132 = [(AKSignatureCreationViewController_iOS *)self view];
  v122 = [v132 safeAreaLayoutGuide];
  v123 = [v122 bottomAnchor];
  v124 = [v131 constraintEqualToAnchor:v123 constant:-8.0];
  v142[0] = v124;
  v125 = [(AKSignatureCreationViewController_iOS *)self clearButton];
  v126 = [v125 centerXAnchor];
  v127 = [(AKSignatureCreationViewController_iOS *)self view];
  v128 = [v127 centerXAnchor];
  v129 = [v126 constraintEqualToAnchor:v128];
  v142[1] = v129;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:2];
  [v116 addObjectsFromArray:v130];

  [MEMORY[0x277CCAAD0] activateConstraints:v116];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(AKSignatureCreationViewController_iOS *)self view];
  v4 = [v3 window];
  v5 = [v4 firstResponder];

  v9.receiver = self;
  v9.super_class = AKSignatureCreationViewController_iOS;
  v6 = [(AKSignatureCreationViewController_iOS *)&v9 becomeFirstResponder];
  if (v6 && v5 != self)
  {
    [(AKSignatureCreationViewController_iOS *)self setResponderToRestore:v5];
  }

  return v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v4 viewDidAppear:a3];
  if (([(AKSignatureCreationViewController_iOS *)self isFirstResponder]& 1) == 0)
  {
    [(AKSignatureCreationViewController_iOS *)self becomeFirstResponder];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(AKSignatureCreationViewController_iOS *)self resignFirstResponder];
  v5 = [(AKSignatureCreationViewController_iOS *)self responderToRestore];
  v6 = v5;
  if (v5)
  {
    [v5 becomeFirstResponder];
  }

  [(AKSignatureCreationViewController_iOS *)self setResponderToRestore:0];
  v7.receiver = self;
  v7.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v7 viewDidDisappear:v3];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = AKSignatureCreationViewController_iOS;
  [(AKSignatureCreationViewController_iOS *)&v16 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(AKSignatureCreationViewController_iOS *)self view];
  [v8 bounds];
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
    [v7 animateAlongsideTransition:v15 completion:v14];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = AKSignatureCreationViewController_iOS;
  v4 = a3;
  [(AKSignatureCreationViewController_iOS *)&v11 traitCollectionDidChange:v4];
  v5 = [(AKSignatureCreationViewController_iOS *)self traitCollection:v11.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(AKSignatureCreationViewController_iOS *)self traitCollection];
    if ([v8 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v9 = ;
    v10 = [(AKSignatureCreationViewController_iOS *)self view];
    [v10 setBackgroundColor:v9];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = AKSignatureCreationViewController_iOS;
  v7 = a4;
  [(AKSignatureCreationViewController_iOS *)&v16 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v8 = [(AKSignatureCreationViewController_iOS *)self traitCollection];
  v9 = [v8 horizontalSizeClass];
  LOBYTE(v9) = v9 != [v6 horizontalSizeClass];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23F42F38C;
  v13[3] = &unk_278C7BAD8;
  v15 = v9;
  v13[4] = self;
  v14 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23F42F410;
  v11[3] = &unk_278C7BB00;
  v12 = v9;
  v11[4] = self;
  v10 = v6;
  [v7 animateAlongsideTransition:v13 completion:v11];
}

- (void)_validateButtons
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(AKSignatureCreationViewController_iOS *)self navBar];
  v4 = [v3 topItem];
  v5 = [v4 rightBarButtonItems];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 action] == sel__clear_)
        {
          v11 = [(AKSignatureCreationViewController_iOS *)self signatureView];
          [v10 setEnabled:{objc_msgSend(v11, "hasStrokes")}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_cancel:(id)a3
{
  v4 = [(AKSignatureCreationViewController_iOS *)self controller];
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 controllerWillDismissSignatureCaptureView:v4];
  }

  v6 = [(AKSignatureCreationViewController_iOS *)self presentingViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23F42F6E4;
  v8[3] = &unk_278C7B540;
  v8[4] = self;
  [v6 dismissViewControllerAnimated:1 completion:v8];

  v7 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [v7 clear];
}

- (void)_clear:(id)a3
{
  v3 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [v3 clear];
}

- (void)_done:(id)a3
{
  v4 = [(AKSignatureCreationViewController_iOS *)self controller];
  v5 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  v20 = 0;
  v6 = [v5 copyPotracedPathAndReturnDrawing:&v20];
  v7 = v20;

  v8 = 0;
  if (!CGPathIsEmpty(v6))
  {
    v9 = [AKSignature alloc];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [(AKSignatureCreationViewController_iOS *)self descriptionTag];
    v12 = [(AKSignatureCreationViewController_iOS *)self customDescription];
    v8 = [(AKSignature *)v9 initWithDrawing:v7 path:v6 baselineOffset:v10 creationDate:v11 descriptionTag:v12 customDescription:0.0];
  }

  CGPathRelease(v6);
  v13 = [(AKSignatureCreationViewController_iOS *)self signatureView];
  [v13 clear];

  if (v8)
  {
    v14 = [v4 signatureModelController];
    [v14 insertObject:v8 inSignaturesAtIndex:0];

    v15 = [v4 signatureModelController];
    [v15 setSelectedSignature:v8];

    v16 = [(AKSignatureCreationViewController_iOS *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v16 signatureCreationControllerDidCreateSignature:self];
    }
  }

  v17 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v17 controllerWillDismissSignatureCaptureView:v4];
  }

  v18 = [(AKSignatureCreationViewController_iOS *)self presentingViewController];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23F42F968;
  v19[3] = &unk_278C7B540;
  v19[4] = self;
  [v18 dismissViewControllerAnimated:1 completion:v19];

  NSLog(&cfstr_AddedSignature.isa, v8);
}

- (void)_notifyDidDismiss
{
  v3 = [(AKSignatureCreationViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 signatureCreationControllerDidDismiss:self];
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v5 = [(AKSignatureCreationViewController_iOS *)self firstResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v5 textFields];
    v4 = [v3 firstObject];
    [v4 becomeFirstResponder];
  }
}

- (void)_showSignatureDescriptionSelectionAlert
{
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  v5 = [v3 popoverPresentationController];
  [v5 setSourceView:v4];

  v6 = [(AKSignatureCreationViewController_iOS *)self downArrowButton];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v3 popoverPresentationController];
  [v15 setSourceRect:{v8, v10, v12, v14}];

  v16 = [v3 popoverPresentationController];
  v17 = 1;
  [v16 setPermittedArrowDirections:1];

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
  v4 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
  [v4 setText:v3];
}

- (void)_updateSignatureDescriptionWithStringValue:(id)a3
{
  v10 = a3;
  v4 = [AKSignatureDescription stringValueForSignatureDescriptionTag:[(AKSignatureCreationViewController_iOS *)self descriptionTag]];
  v5 = [(AKSignatureCreationViewController_iOS *)self undoManager];
  [v5 registerUndoWithTarget:self selector:sel__updateSignatureDescriptionWithStringValue_ object:v4];

  v6 = [AKSignatureDescription signatureDescriptionTagFromStringValue:v10];
  if (v6)
  {
    v7 = v6;
    [(AKSignatureCreationViewController_iOS *)self setDescriptionTag:v6];
    if (v7 == -1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    [(AKSignatureCreationViewController_iOS *)self setCustomDescription:v8];
    v9 = [(AKSignatureCreationViewController_iOS *)self titleLabel];
    [v9 setText:v10];
  }

  else
  {
    [(AKSignatureCreationViewController_iOS *)self _removeSignatureDescription];
  }
}

- (id)undoManager
{
  v3 = [(AKSignatureCreationViewController_iOS *)self _undoManager];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAD90]);
    [(AKSignatureCreationViewController_iOS *)self set_undoManager:v4];
  }

  return [(AKSignatureCreationViewController_iOS *)self _undoManager];
}

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  if (a3 == 1)
  {
    v5 = [(AKSignatureCreationViewController_iOS *)self undoManager:a3];
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