@interface PKHandwritingDataCollectionViewController
- (void)initWithDrawings:(void *)drawings metadata:;
- (void)segmentChanged:(id)changed;
- (void)sendRadarButtonTapped:(id)tapped;
- (void)setSegmentControl:(uint64_t)control;
- (void)viewDidLoad;
@end

@implementation PKHandwritingDataCollectionViewController

- (void)initWithDrawings:(void *)drawings metadata:
{
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = PKHandwritingDataCollectionViewController;
  drawingsCopy = drawings;
  v5 = a2;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = [v5 copy];

  v8 = v6[128];
  v6[128] = v7;

  v9 = [drawingsCopy copy];
  v10 = v6[129];
  v6[129] = v9;

  return v6;
}

- (void)segmentChanged:(id)changed
{
  changedCopy = changed;
  if (self)
  {
    viewController = [(PKHandwritingDataCollecting *)self->_currentDataCollector viewController];
    [viewController willMoveToParentViewController:0];

    currentDataCollector = self->_currentDataCollector;
  }

  else
  {
    viewController2 = [0 viewController];
    [viewController2 willMoveToParentViewController:0];

    currentDataCollector = 0;
  }

  viewController3 = [(PKHandwritingDataCollecting *)currentDataCollector viewController];
  view = [viewController3 view];
  [view removeFromSuperview];

  if (self)
  {
    v8 = self->_currentDataCollector;
  }

  else
  {
    v8 = 0;
  }

  viewController4 = [(PKHandwritingDataCollecting *)v8 viewController];
  [viewController4 removeFromParentViewController];

  selectedSegmentIndex = [changedCopy selectedSegmentIndex];
  if (self)
  {
    v11 = 5;
    if (!selectedSegmentIndex)
    {
      v11 = 4;
    }

    objc_storeStrong(&self->_currentDataCollector, *(&self->super.super.super.isa + OBJC_IVAR___PKHandwritingDataCollectionViewController__drawings[v11]));
    v12 = self->_currentDataCollector;
  }

  else
  {
    v12 = 0;
  }

  viewController5 = [(PKHandwritingDataCollecting *)v12 viewController];
  [(PKHandwritingDataCollectionViewController *)self addChildViewController:viewController5];

  view2 = [(PKHandwritingDataCollectionViewController *)self view];
  [view2 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (self)
  {
    v23 = self->_currentDataCollector;
  }

  else
  {
    v23 = 0;
  }

  viewController6 = [(PKHandwritingDataCollecting *)v23 viewController];
  view3 = [viewController6 view];
  [view3 setFrame:{v16, v18, v20, v22}];

  view4 = [(PKHandwritingDataCollectionViewController *)self view];
  if (self)
  {
    viewController7 = [(PKHandwritingDataCollecting *)self->_currentDataCollector viewController];
    view5 = [viewController7 view];
    [view4 addSubview:view5];

    v29 = self->_currentDataCollector;
  }

  else
  {
    viewController8 = [0 viewController];
    view6 = [viewController8 view];
    [view4 addSubview:view6];

    v29 = 0;
  }

  viewController9 = [(PKHandwritingDataCollecting *)v29 viewController];
  [viewController9 didMoveToParentViewController:self];
}

- (void)viewDidLoad
{
  v79[3] = *MEMORY[0x1E69E9840];
  v78.receiver = self;
  v78.super_class = PKHandwritingDataCollectionViewController;
  [(PKHandwritingDataCollectionViewController *)&v78 viewDidLoad];
  v3 = _PencilKitBundle();
  v4 = [v3 localizedStringForKey:@"Handwriting Feedback" value:@"Handwriting Feedback" table:@"Localizable"];
  [(PKHandwritingDataCollectionViewController *)self setTitle:v4];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  view = [(PKHandwritingDataCollectionViewController *)self view];
  [view setBackgroundColor:whiteColor];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  navigationItem = [(PKHandwritingDataCollectionViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v7];

  v9 = objc_alloc(MEMORY[0x1E69DC708]);
  v10 = _PencilKitBundle();
  v11 = [v10 localizedStringForKey:@"Submit" value:@"Submit" table:@"Localizable"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:sel_sendRadarButtonTapped_];
  navigationItem2 = [(PKHandwritingDataCollectionViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v12];

  if (os_variant_has_internal_diagnostics())
  {
    v44 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:&unk_1F47C1A18];
    [(PKHandwritingDataCollectionViewController *)self setSegmentControl:v44];

    if (self)
    {
      [(UISegmentedControl *)self->_segmentControl setSelectedSegmentIndex:0];
      segmentControl = self->_segmentControl;
    }

    else
    {
      [0 setSelectedSegmentIndex:0];
      segmentControl = 0;
    }

    [(UISegmentedControl *)segmentControl addTarget:self action:sel_segmentChanged_ forControlEvents:4096];
    if (self)
    {
      v46 = self->_segmentControl;
      navigationItem3 = [(PKHandwritingDataCollectionViewController *)self navigationItem];
      [navigationItem3 setTitleView:v46];

      v48 = self->_segmentControl;
    }

    else
    {
      navigationItem4 = [0 navigationItem];
      [navigationItem4 setTitleView:0];

      v48 = 0;
    }

    [(UISegmentedControl *)v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(PKHandwritingDataCollectionViewController *)self view];
    v50 = view2;
    if (self)
    {
      v51 = self->_segmentControl;
    }

    else
    {
      v51 = 0;
    }

    [view2 addSubview:v51];

    if (self)
    {
      v52 = self->_segmentControl;
    }

    else
    {
      v52 = 0;
    }

    v71 = MEMORY[0x1E696ACD8];
    v77 = v52;
    topAnchor = [(UISegmentedControl *)v77 topAnchor];
    view3 = [(PKHandwritingDataCollectionViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    [safeAreaLayoutGuide topAnchor];
    v73 = v76 = topAnchor;
    v72 = [topAnchor constraintEqualToAnchor:8.0 constant:?];
    v79[0] = v72;
    if (self)
    {
      v54 = self->_segmentControl;
    }

    else
    {
      v54 = 0;
    }

    v70 = v54;
    leadingAnchor = [(UISegmentedControl *)v70 leadingAnchor];
    view4 = [(PKHandwritingDataCollectionViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v69 = leadingAnchor;
    v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v79[1] = v58;
    if (self)
    {
      v59 = self->_segmentControl;
    }

    else
    {
      v59 = 0;
    }

    v60 = v59;
    trailingAnchor = [(UISegmentedControl *)v60 trailingAnchor];
    view5 = [(PKHandwritingDataCollectionViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v64 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v79[2] = v64;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
    [v71 activateConstraints:v65];
  }

  v14 = [PKRecognitionDataCollectionViewController alloc];
  if (self)
  {
    v15 = self->_drawings;
    metadata = self->_metadata;
  }

  else
  {
    v15 = 0;
    metadata = 0;
  }

  v17 = metadata;
  v18 = [(PKRecognitionDataCollectionViewController *)v14 initWithDrawings:v15 metadata:v17];
  if (self)
  {
    objc_storeStrong(&self->_handwritingDataCollector, v18);
  }

  v19 = [PKHandwritingSynthesisDataCollectionViewController alloc];
  p_isa = &v19->super.super.super.isa;
  if (self)
  {
    v21 = self->_drawings;
    v22 = [(PKHandwritingSynthesisDataCollectionViewController *)p_isa initWithDrawings:v21];
    objc_storeStrong(&self->_synthesisDataCollector, v22);

    objc_storeStrong(&self->_currentDataCollector, self->_handwritingDataCollector);
    currentDataCollector = self->_currentDataCollector;
  }

  else
  {

    currentDataCollector = 0;
  }

  v24 = currentDataCollector;
  viewController = [(PKHandwritingDataCollecting *)v24 viewController];
  [(PKHandwritingDataCollectionViewController *)self addChildViewController:viewController];

  view6 = [(PKHandwritingDataCollectionViewController *)self view];
  [view6 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (self)
  {
    v35 = self->_currentDataCollector;
  }

  else
  {
    v35 = 0;
  }

  viewController2 = [(PKHandwritingDataCollecting *)v35 viewController];
  view7 = [viewController2 view];
  [view7 setFrame:{v28, v30, v32, v34}];

  view8 = [(PKHandwritingDataCollectionViewController *)self view];
  if (self)
  {
    viewController3 = [(PKHandwritingDataCollecting *)self->_currentDataCollector viewController];
    view9 = [viewController3 view];
    [view8 addSubview:view9];

    v41 = self->_currentDataCollector;
  }

  else
  {
    viewController4 = [0 viewController];
    view10 = [viewController4 view];
    [view8 addSubview:view10];

    v41 = 0;
  }

  v42 = v41;
  viewController5 = [(PKHandwritingDataCollecting *)v42 viewController];
  [viewController5 didMoveToParentViewController:self];
}

- (void)setSegmentControl:(uint64_t)control
{
  if (control)
  {
    objc_storeStrong((control + 992), a2);
  }
}

- (void)sendRadarButtonTapped:(id)tapped
{
  selfCopy = self;
  if (self)
  {
    self = self->_currentDataCollector;
  }

  [(PKHandwritingDataCollectionViewController *)self submitFeedback];

  [(PKHandwritingDataCollectionViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

@end