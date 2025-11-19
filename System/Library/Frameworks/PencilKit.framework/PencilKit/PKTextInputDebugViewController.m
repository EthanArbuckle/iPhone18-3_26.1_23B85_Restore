@interface PKTextInputDebugViewController
- (PKTextInputDebugViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureCell:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)_handleCloseButton:(id)a3;
- (void)_handleLogButton:(id)a3;
- (void)_handleRadarButton:(id)a3;
- (void)_handleTargetsButton:(id)a3;
- (void)_reloadDebugStateData;
- (void)_reloadTargetsVisualization;
- (void)_setVisualizeTargets:(BOOL)a3;
- (void)_setupStatusView;
- (void)_updateStatusView;
- (void)_updateTargetsVisualizationView;
- (void)debugViewTableCellDidTapDetailsButton:(id)a3;
- (void)loadView;
- (void)setElementsController:(id)a3;
- (void)setNeedsReloadDebugStateData;
- (void)setNeedsReloadTargetsVisualization;
- (void)setStatusViewAnchorCorner:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKTextInputDebugViewController

- (void)loadView
{
  v3 = [PKTexInputDebugContainerView alloc];
  v4 = [(PKTexInputDebugContainerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PKTextInputDebugViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKTextInputDebugViewController;
  [(PKTextInputDebugViewController *)&v3 viewDidLoad];
  [(PKTextInputDebugViewController *)self _setupStatusView];
  [(PKTextInputDebugViewController *)self setStatusViewAnchorCorner:8];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKTextInputDebugViewController;
  [(PKTextInputDebugViewController *)&v5 viewDidAppear:a3];
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleAutoreloadTimerFired selector:0 userInfo:1 repeats:1.0];
  [(PKTextInputDebugViewController *)self set_autoreloadTimer:v4];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKTextInputDebugViewController;
  [(PKTextInputDebugViewController *)&v5 viewDidDisappear:a3];
  v4 = [(PKTextInputDebugViewController *)self _autoreloadTimer];
  [v4 invalidate];

  [(PKTextInputDebugViewController *)self set_autoreloadTimer:0];
}

- (void)_setupStatusView
{
  v67[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  [(PKTextInputDebugViewController *)self set_statusContainerView:v8];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setOpaque:0];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setTintColor:v9];

  [v8 setClipsToBounds:1];
  v10 = [v8 layer];
  [v10 setCornerRadius:12.0];

  v11 = [(PKTextInputDebugViewController *)self view];
  [v11 addSubview:v8];

  v12 = [objc_alloc(MEMORY[0x1E69DD180]) initWithFrame:{v4, v5, v6, v7}];
  [(PKTextInputDebugViewController *)self set_statusViewToolbar:v12];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setOpaque:0];
  [v8 addSubview:v12];
  v61 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v13 = objc_alloc(MEMORY[0x1E69DC708]);
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant.fill"];
  v15 = [v13 initWithImage:v14 style:0 target:self action:sel__handleRadarButton_];

  v60 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Targets" style:0 target:self action:sel__handleTargetsButton_];
  v59 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Log" style:0 target:self action:sel__handleLogButton_];
  v57 = v15;
  v58 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleCloseButton_];
  v16 = v15;
  v67[0] = v15;
  v67[1] = v61;
  v67[2] = v60;
  v67[3] = v59;
  v67[4] = v58;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:5];
  [v12 setItems:v17];

  [v16 setEnabled:os_variant_has_internal_diagnostics()];
  v18 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:0 style:{v4, v5, v6, v7}];
  [(PKTextInputDebugViewController *)self set_statusTableView:v18];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setAllowsSelection:0];
  [v8 addSubview:v18];
  [v18 setDataSource:self];
  [v18 setDelegate:self];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [v18 registerClass:v19 forCellReuseIdentifier:v21];

  [v18 setOpaque:0];
  [v18 setSeparatorStyle:0];
  [v18 setEstimatedRowHeight:30.0];
  [v18 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v18 setSectionHeaderHeight:28.0];
  [v18 setContentInset:{0.0, 0.0, 12.0, 0.0}];
  v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
  [v8 setBackgroundColor:v22];

  v23 = v12;
  [v12 setBarStyle:1];
  v24 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  [v12 setBackgroundImage:v24 forToolbarPosition:0 barMetrics:0];

  v25 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  [v12 setShadowImage:v25 forToolbarPosition:0];

  v26 = [MEMORY[0x1E69DC888] clearColor];
  [v18 setBackgroundColor:v26];

  v63 = [MEMORY[0x1E695DF70] array];
  v27 = [v8 heightAnchor];
  v28 = [v27 constraintEqualToConstant:500.0];
  v66[0] = v28;
  v29 = [v8 widthAnchor];
  v30 = [v29 constraintEqualToConstant:320.0];
  v66[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  [v63 addObjectsFromArray:v31];

  v32 = v23;
  v54 = [v23 topAnchor];
  v52 = [v8 topAnchor];
  v33 = [v54 constraintEqualToAnchor:v52];
  v65[0] = v33;
  v34 = [v23 leadingAnchor];
  v62 = v8;
  v35 = [v8 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v65[1] = v36;
  v56 = v32;
  v37 = [v32 trailingAnchor];
  v38 = [v8 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  v65[2] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
  [v63 addObjectsFromArray:v40];

  v55 = [v18 topAnchor];
  v53 = [v32 bottomAnchor];
  v51 = [v55 constraintEqualToAnchor:v53];
  v64[0] = v51;
  v50 = [v18 bottomAnchor];
  v49 = [v62 bottomAnchor];
  v41 = [v50 constraintEqualToAnchor:v49];
  v64[1] = v41;
  v42 = [v18 leadingAnchor];
  v43 = [v62 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  v64[2] = v44;
  v45 = [v18 trailingAnchor];
  v46 = [v62 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v64[3] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  [v63 addObjectsFromArray:v48];

  [MEMORY[0x1E696ACD8] activateConstraints:v63];
}

- (void)setStatusViewAnchorCorner:(unint64_t)a3
{
  if (self->_statusViewAnchorCorner != a3)
  {
    self->_statusViewAnchorCorner = a3;
    [(PKTextInputDebugViewController *)self _updateStatusView];
  }
}

- (void)setElementsController:(id)a3
{
  v5 = a3;
  if (self->_elementsController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_elementsController, a3);
    [(PKTextInputDebugViewController *)self setNeedsReloadTargetsVisualization];
    v5 = v6;
  }
}

- (void)setNeedsReloadDebugStateData
{
  if (![(PKTextInputDebugViewController *)self _needsReloadData])
  {
    [(PKTextInputDebugViewController *)self set_needsReloadData:1];

    [(PKTextInputDebugViewController *)self performSelector:sel__reloadDebugStateData withObject:0 afterDelay:0.0];
  }
}

- (void)setNeedsReloadTargetsVisualization
{
  if (![(PKTextInputDebugViewController *)self _needsReloadTargetsVisualization])
  {
    [(PKTextInputDebugViewController *)self set_needsReloadTargetsVisualization:1];

    [(PKTextInputDebugViewController *)self performSelector:sel__reloadTargetsVisualization withObject:0 afterDelay:0.0];
  }
}

- (void)_updateStatusView
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputDebugViewController *)self _statusViewPositionConstraints];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(PKTextInputDebugViewController *)self _statusViewPositionConstraints];
    [v4 deactivateConstraints:v5];

    [(PKTextInputDebugViewController *)self set_statusViewPositionConstraints:0];
  }

  v6 = [(PKTextInputDebugViewController *)self _statusContainerView];
  v7 = [(PKTextInputDebugViewController *)self statusViewAnchorCorner];
  switch(v7)
  {
    case 4uLL:
      v18 = [v6 bottomAnchor];
      v9 = [(PKTextInputDebugViewController *)self view];
      v10 = [v9 bottomAnchor];
      v21 = v18;
      v11 = [v18 constraintEqualToAnchor:v10 constant:-60.0];
      v23[0] = v11;
      v12 = [v6 leadingAnchor];
      v13 = [(PKTextInputDebugViewController *)self view];
      v14 = [v13 leadingAnchor];
      v15 = [v12 constraintEqualToAnchor:v14 constant:22.0];
      v23[1] = v15;
      v16 = v23;
      break;
    case 2uLL:
      v17 = [v6 topAnchor];
      v9 = [(PKTextInputDebugViewController *)self view];
      v10 = [v9 topAnchor];
      v21 = v17;
      v11 = [v17 constraintEqualToAnchor:v10 constant:60.0];
      v24[0] = v11;
      v12 = [v6 trailingAnchor];
      v13 = [(PKTextInputDebugViewController *)self view];
      v14 = [v13 trailingAnchor];
      v15 = [v12 constraintEqualToAnchor:v14 constant:-22.0];
      v24[1] = v15;
      v16 = v24;
      break;
    case 1uLL:
      v8 = [v6 topAnchor];
      v9 = [(PKTextInputDebugViewController *)self view];
      v10 = [v9 topAnchor];
      v21 = v8;
      v11 = [v8 constraintEqualToAnchor:v10 constant:60.0];
      v25[0] = v11;
      v12 = [v6 leadingAnchor];
      v13 = [(PKTextInputDebugViewController *)self view];
      v14 = [v13 leadingAnchor];
      v15 = [v12 constraintEqualToAnchor:v14 constant:22.0];
      v25[1] = v15;
      v16 = v25;
      break;
    default:
      v19 = [v6 bottomAnchor];
      v9 = [(PKTextInputDebugViewController *)self view];
      v10 = [v9 bottomAnchor];
      v21 = v19;
      v11 = [v19 constraintEqualToAnchor:v10 constant:-60.0];
      v22[0] = v11;
      v12 = [v6 trailingAnchor];
      v13 = [(PKTextInputDebugViewController *)self view];
      v14 = [v13 trailingAnchor];
      v15 = [v12 constraintEqualToAnchor:v14 constant:-22.0];
      v22[1] = v15;
      v16 = v22;
      break;
  }

  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  [MEMORY[0x1E696ACD8] activateConstraints:v20];
  [(PKTextInputDebugViewController *)self set_statusViewPositionConstraints:v20];
}

- (void)_reloadDebugStateData
{
  v3 = [(PKTextInputDebugViewController *)self _statusTableView];
  [v3 reloadData];

  [(PKTextInputDebugViewController *)self set_needsReloadData:0];
}

- (void)_setVisualizeTargets:(BOOL)a3
{
  if (self->__visualizeTargets != a3)
  {
    self->__visualizeTargets = a3;
    [(PKTextInputDebugViewController *)self _updateTargetsVisualizationView];
    if (self->__visualizeTargets)
    {

      [(PKTextInputDebugViewController *)self setNeedsReloadTargetsVisualization];
    }
  }
}

- (void)_updateTargetsVisualizationView
{
  v3 = [(PKTextInputDebugViewController *)self _visualizeTargets];
  v4 = [(PKTextInputDebugViewController *)self _targetsContainerView];

  if (!v3 || v4)
  {
    if (v4)
    {
      v11 = v3;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      v12 = [(PKTextInputDebugViewController *)self _targetsContainerView];
      [v12 removeFromSuperview];

      [(PKTextInputDebugViewController *)self set_targetsContainerView:0];
    }
  }

  else
  {
    v5 = [PKTextInputDebugTargetsView alloc];
    v6 = [(PKTextInputDebugViewController *)self view];
    [v6 bounds];
    v7 = [(PKTextInputDebugTargetsView *)v5 initWithFrame:?];
    [(PKTextInputDebugViewController *)self set_targetsContainerView:v7];

    v8 = [(PKTextInputDebugViewController *)self _targetsContainerView];
    [v8 setAutoresizingMask:18];

    v13 = [(PKTextInputDebugViewController *)self view];
    v9 = [(PKTextInputDebugViewController *)self _targetsContainerView];
    v10 = [(PKTextInputDebugViewController *)self _statusContainerView];
    [v13 insertSubview:v9 belowSubview:v10];
  }
}

- (void)_reloadTargetsVisualization
{
  if ([(PKTextInputDebugViewController *)self _visualizeTargets])
  {
    v3 = [(PKTextInputDebugViewController *)self elementsController];
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 40);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 allValues];

    v8 = MEMORY[0x1E695E0F0];
    if (v7)
    {
      v8 = v7;
    }

    v9 = v8;

    v10 = [(PKTextInputDebugViewController *)self _targetsContainerView];
    [v10 setVisualizationElements:v9];
  }

  [(PKTextInputDebugViewController *)self set_needsReloadTargetsVisualization:0];
}

- (void)_handleCloseButton:(id)a3
{
  v4 = [(PKTextInputDebugViewController *)self delegate];
  [v4 debugViewControllerNeedsDismiss:self];
}

- (void)_handleTargetsButton:(id)a3
{
  v4 = [(PKTextInputDebugViewController *)self _visualizeTargets]^ 1;

  [(PKTextInputDebugViewController *)self _setVisualizeTargets:v4];
}

- (void)_handleLogButton:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v4 = [v3 fullDebugStateDescription];

  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Pencil Text Input State:\n%@", &v6, 0xCu);
  }
}

- (void)_handleRadarButton:(id)a3
{
  v4 = [(PKTextInputDebugViewController *)self debugLogController];
  v7 = [(PKTextInputDebugLogController *)v4 sharpenerLogWithCurrentContent];

  v5 = [[PKTextInputDebugRadarViewController alloc] initWithSharpenerLog:v7];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [v6 setModalPresentationStyle:2];
  [(PKTextInputDebugViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PKTextInputDebugViewController *)self introspectorDataSource:a3];
  v5 = [v4 debugStateKeys];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  if (![v6 section])
  {
    -[PKTextInputDebugViewController _configureCell:forItemAtIndex:](self, "_configureCell:forItemAtIndex:", v10, [v6 item]);
  }

  return v10;
}

- (void)_configureCell:(id)a3 forItemAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v8 = [v7 debugStateKeys];
  v15 = [v8 objectAtIndex:a4];

  v9 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v10 = [v9 debugStateTitleForStateKey:v15];

  v11 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v12 = [v11 debugStateDescriptionForStateKey:v15];

  v13 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v14 = [v13 debugStateCanShowDetailsForStateKey:v15];

  [v6 setTitleText:v10];
  [v6 setValueAttributedText:v12];
  [v6 setShowDetailsButton:v14];
  [v6 setStatusKey:v15];
  [v6 setDelegate:self];
}

- (void)debugViewTableCellDidTapDetailsButton:(id)a3
{
  v7 = [a3 statusKey];
  v4 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v5 = [v4 debugStateDetailViewControllerForStateKey:v7];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
    [v6 setModalPresentationStyle:2];
    [(PKTextInputDebugViewController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (PKTextInputDebugViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end