@interface PKTextInputDebugViewController
- (PKTextInputDebugViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureCell:(id)cell forItemAtIndex:(int64_t)index;
- (void)_handleCloseButton:(id)button;
- (void)_handleLogButton:(id)button;
- (void)_handleRadarButton:(id)button;
- (void)_handleTargetsButton:(id)button;
- (void)_reloadDebugStateData;
- (void)_reloadTargetsVisualization;
- (void)_setVisualizeTargets:(BOOL)targets;
- (void)_setupStatusView;
- (void)_updateStatusView;
- (void)_updateTargetsVisualizationView;
- (void)debugViewTableCellDidTapDetailsButton:(id)button;
- (void)loadView;
- (void)setElementsController:(id)controller;
- (void)setNeedsReloadDebugStateData;
- (void)setNeedsReloadTargetsVisualization;
- (void)setStatusViewAnchorCorner:(unint64_t)corner;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKTextInputDebugViewController;
  [(PKTextInputDebugViewController *)&v5 viewDidAppear:appear];
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleAutoreloadTimerFired selector:0 userInfo:1 repeats:1.0];
  [(PKTextInputDebugViewController *)self set_autoreloadTimer:v4];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKTextInputDebugViewController;
  [(PKTextInputDebugViewController *)&v5 viewDidDisappear:disappear];
  _autoreloadTimer = [(PKTextInputDebugViewController *)self _autoreloadTimer];
  [_autoreloadTimer invalidate];

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
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setTintColor:whiteColor];

  [v8 setClipsToBounds:1];
  layer = [v8 layer];
  [layer setCornerRadius:12.0];

  view = [(PKTextInputDebugViewController *)self view];
  [view addSubview:v8];

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

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v18 setBackgroundColor:clearColor];

  array = [MEMORY[0x1E695DF70] array];
  heightAnchor = [v8 heightAnchor];
  v28 = [heightAnchor constraintEqualToConstant:500.0];
  v66[0] = v28;
  widthAnchor = [v8 widthAnchor];
  v30 = [widthAnchor constraintEqualToConstant:320.0];
  v66[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  [array addObjectsFromArray:v31];

  v32 = v23;
  topAnchor = [v23 topAnchor];
  topAnchor2 = [v8 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v65[0] = v33;
  leadingAnchor = [v23 leadingAnchor];
  v62 = v8;
  leadingAnchor2 = [v8 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v65[1] = v36;
  v56 = v32;
  trailingAnchor = [v32 trailingAnchor];
  trailingAnchor2 = [v8 trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v65[2] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
  [array addObjectsFromArray:v40];

  topAnchor3 = [v18 topAnchor];
  bottomAnchor = [v32 bottomAnchor];
  v51 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v64[0] = v51;
  bottomAnchor2 = [v18 bottomAnchor];
  bottomAnchor3 = [v62 bottomAnchor];
  v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v64[1] = v41;
  leadingAnchor3 = [v18 leadingAnchor];
  leadingAnchor4 = [v62 leadingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v64[2] = v44;
  trailingAnchor3 = [v18 trailingAnchor];
  trailingAnchor4 = [v62 trailingAnchor];
  v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v64[3] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  [array addObjectsFromArray:v48];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)setStatusViewAnchorCorner:(unint64_t)corner
{
  if (self->_statusViewAnchorCorner != corner)
  {
    self->_statusViewAnchorCorner = corner;
    [(PKTextInputDebugViewController *)self _updateStatusView];
  }
}

- (void)setElementsController:(id)controller
{
  controllerCopy = controller;
  if (self->_elementsController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_elementsController, controller);
    [(PKTextInputDebugViewController *)self setNeedsReloadTargetsVisualization];
    controllerCopy = v6;
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
  _statusViewPositionConstraints = [(PKTextInputDebugViewController *)self _statusViewPositionConstraints];

  if (_statusViewPositionConstraints)
  {
    v4 = MEMORY[0x1E696ACD8];
    _statusViewPositionConstraints2 = [(PKTextInputDebugViewController *)self _statusViewPositionConstraints];
    [v4 deactivateConstraints:_statusViewPositionConstraints2];

    [(PKTextInputDebugViewController *)self set_statusViewPositionConstraints:0];
  }

  _statusContainerView = [(PKTextInputDebugViewController *)self _statusContainerView];
  statusViewAnchorCorner = [(PKTextInputDebugViewController *)self statusViewAnchorCorner];
  switch(statusViewAnchorCorner)
  {
    case 4uLL:
      bottomAnchor = [_statusContainerView bottomAnchor];
      view = [(PKTextInputDebugViewController *)self view];
      bottomAnchor2 = [view bottomAnchor];
      v21 = bottomAnchor;
      v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-60.0];
      v23[0] = v11;
      leadingAnchor = [_statusContainerView leadingAnchor];
      view2 = [(PKTextInputDebugViewController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:22.0];
      v23[1] = v15;
      v16 = v23;
      break;
    case 2uLL:
      topAnchor = [_statusContainerView topAnchor];
      view = [(PKTextInputDebugViewController *)self view];
      bottomAnchor2 = [view topAnchor];
      v21 = topAnchor;
      v11 = [topAnchor constraintEqualToAnchor:bottomAnchor2 constant:60.0];
      v24[0] = v11;
      leadingAnchor = [_statusContainerView trailingAnchor];
      view2 = [(PKTextInputDebugViewController *)self view];
      leadingAnchor2 = [view2 trailingAnchor];
      v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-22.0];
      v24[1] = v15;
      v16 = v24;
      break;
    case 1uLL:
      topAnchor2 = [_statusContainerView topAnchor];
      view = [(PKTextInputDebugViewController *)self view];
      bottomAnchor2 = [view topAnchor];
      v21 = topAnchor2;
      v11 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:60.0];
      v25[0] = v11;
      leadingAnchor = [_statusContainerView leadingAnchor];
      view2 = [(PKTextInputDebugViewController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:22.0];
      v25[1] = v15;
      v16 = v25;
      break;
    default:
      bottomAnchor3 = [_statusContainerView bottomAnchor];
      view = [(PKTextInputDebugViewController *)self view];
      bottomAnchor2 = [view bottomAnchor];
      v21 = bottomAnchor3;
      v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:-60.0];
      v22[0] = v11;
      leadingAnchor = [_statusContainerView trailingAnchor];
      view2 = [(PKTextInputDebugViewController *)self view];
      leadingAnchor2 = [view2 trailingAnchor];
      v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-22.0];
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
  _statusTableView = [(PKTextInputDebugViewController *)self _statusTableView];
  [_statusTableView reloadData];

  [(PKTextInputDebugViewController *)self set_needsReloadData:0];
}

- (void)_setVisualizeTargets:(BOOL)targets
{
  if (self->__visualizeTargets != targets)
  {
    self->__visualizeTargets = targets;
    [(PKTextInputDebugViewController *)self _updateTargetsVisualizationView];
    if (self->__visualizeTargets)
    {

      [(PKTextInputDebugViewController *)self setNeedsReloadTargetsVisualization];
    }
  }
}

- (void)_updateTargetsVisualizationView
{
  _visualizeTargets = [(PKTextInputDebugViewController *)self _visualizeTargets];
  _targetsContainerView = [(PKTextInputDebugViewController *)self _targetsContainerView];

  if (!_visualizeTargets || _targetsContainerView)
  {
    if (_targetsContainerView)
    {
      v11 = _visualizeTargets;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      _targetsContainerView2 = [(PKTextInputDebugViewController *)self _targetsContainerView];
      [_targetsContainerView2 removeFromSuperview];

      [(PKTextInputDebugViewController *)self set_targetsContainerView:0];
    }
  }

  else
  {
    v5 = [PKTextInputDebugTargetsView alloc];
    view = [(PKTextInputDebugViewController *)self view];
    [view bounds];
    v7 = [(PKTextInputDebugTargetsView *)v5 initWithFrame:?];
    [(PKTextInputDebugViewController *)self set_targetsContainerView:v7];

    _targetsContainerView3 = [(PKTextInputDebugViewController *)self _targetsContainerView];
    [_targetsContainerView3 setAutoresizingMask:18];

    view2 = [(PKTextInputDebugViewController *)self view];
    _targetsContainerView4 = [(PKTextInputDebugViewController *)self _targetsContainerView];
    _statusContainerView = [(PKTextInputDebugViewController *)self _statusContainerView];
    [view2 insertSubview:_targetsContainerView4 belowSubview:_statusContainerView];
  }
}

- (void)_reloadTargetsVisualization
{
  if ([(PKTextInputDebugViewController *)self _visualizeTargets])
  {
    elementsController = [(PKTextInputDebugViewController *)self elementsController];
    v4 = elementsController;
    if (elementsController)
    {
      v5 = *(elementsController + 40);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    allValues = [v6 allValues];

    v8 = MEMORY[0x1E695E0F0];
    if (allValues)
    {
      v8 = allValues;
    }

    v9 = v8;

    _targetsContainerView = [(PKTextInputDebugViewController *)self _targetsContainerView];
    [_targetsContainerView setVisualizationElements:v9];
  }

  [(PKTextInputDebugViewController *)self set_needsReloadTargetsVisualization:0];
}

- (void)_handleCloseButton:(id)button
{
  delegate = [(PKTextInputDebugViewController *)self delegate];
  [delegate debugViewControllerNeedsDismiss:self];
}

- (void)_handleTargetsButton:(id)button
{
  v4 = [(PKTextInputDebugViewController *)self _visualizeTargets]^ 1;

  [(PKTextInputDebugViewController *)self _setVisualizeTargets:v4];
}

- (void)_handleLogButton:(id)button
{
  v8 = *MEMORY[0x1E69E9840];
  introspectorDataSource = [(PKTextInputDebugViewController *)self introspectorDataSource];
  fullDebugStateDescription = [introspectorDataSource fullDebugStateDescription];

  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = fullDebugStateDescription;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Pencil Text Input State:\n%@", &v6, 0xCu);
  }
}

- (void)_handleRadarButton:(id)button
{
  debugLogController = [(PKTextInputDebugViewController *)self debugLogController];
  sharpenerLogWithCurrentContent = [(PKTextInputDebugLogController *)debugLogController sharpenerLogWithCurrentContent];

  v5 = [[PKTextInputDebugRadarViewController alloc] initWithSharpenerLog:sharpenerLogWithCurrentContent];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [v6 setModalPresentationStyle:2];
  [(PKTextInputDebugViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PKTextInputDebugViewController *)self introspectorDataSource:view];
  debugStateKeys = [v4 debugStateKeys];
  v6 = [debugStateKeys count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  if (![pathCopy section])
  {
    -[PKTextInputDebugViewController _configureCell:forItemAtIndex:](self, "_configureCell:forItemAtIndex:", v10, [pathCopy item]);
  }

  return v10;
}

- (void)_configureCell:(id)cell forItemAtIndex:(int64_t)index
{
  cellCopy = cell;
  introspectorDataSource = [(PKTextInputDebugViewController *)self introspectorDataSource];
  debugStateKeys = [introspectorDataSource debugStateKeys];
  v15 = [debugStateKeys objectAtIndex:index];

  introspectorDataSource2 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v10 = [introspectorDataSource2 debugStateTitleForStateKey:v15];

  introspectorDataSource3 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v12 = [introspectorDataSource3 debugStateDescriptionForStateKey:v15];

  introspectorDataSource4 = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v14 = [introspectorDataSource4 debugStateCanShowDetailsForStateKey:v15];

  [cellCopy setTitleText:v10];
  [cellCopy setValueAttributedText:v12];
  [cellCopy setShowDetailsButton:v14];
  [cellCopy setStatusKey:v15];
  [cellCopy setDelegate:self];
}

- (void)debugViewTableCellDidTapDetailsButton:(id)button
{
  statusKey = [button statusKey];
  introspectorDataSource = [(PKTextInputDebugViewController *)self introspectorDataSource];
  v5 = [introspectorDataSource debugStateDetailViewControllerForStateKey:statusKey];

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