@interface PKHandwritingDataCollectionViewController
- (void)initWithDrawings:(void *)a3 metadata:;
- (void)segmentChanged:(id)a3;
- (void)sendRadarButtonTapped:(id)a3;
- (void)setSegmentControl:(uint64_t)a1;
- (void)viewDidLoad;
@end

@implementation PKHandwritingDataCollectionViewController

- (void)initWithDrawings:(void *)a3 metadata:
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = PKHandwritingDataCollectionViewController;
  v4 = a3;
  v5 = a2;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = [v5 copy];

  v8 = v6[128];
  v6[128] = v7;

  v9 = [v4 copy];
  v10 = v6[129];
  v6[129] = v9;

  return v6;
}

- (void)segmentChanged:(id)a3
{
  v34 = a3;
  if (self)
  {
    v4 = [(PKHandwritingDataCollecting *)self->_currentDataCollector viewController];
    [v4 willMoveToParentViewController:0];

    currentDataCollector = self->_currentDataCollector;
  }

  else
  {
    v31 = [0 viewController];
    [v31 willMoveToParentViewController:0];

    currentDataCollector = 0;
  }

  v6 = [(PKHandwritingDataCollecting *)currentDataCollector viewController];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  if (self)
  {
    v8 = self->_currentDataCollector;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PKHandwritingDataCollecting *)v8 viewController];
  [v9 removeFromParentViewController];

  v10 = [v34 selectedSegmentIndex];
  if (self)
  {
    v11 = 5;
    if (!v10)
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

  v13 = [(PKHandwritingDataCollecting *)v12 viewController];
  [(PKHandwritingDataCollectionViewController *)self addChildViewController:v13];

  v14 = [(PKHandwritingDataCollectionViewController *)self view];
  [v14 bounds];
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

  v24 = [(PKHandwritingDataCollecting *)v23 viewController];
  v25 = [v24 view];
  [v25 setFrame:{v16, v18, v20, v22}];

  v26 = [(PKHandwritingDataCollectionViewController *)self view];
  if (self)
  {
    v27 = [(PKHandwritingDataCollecting *)self->_currentDataCollector viewController];
    v28 = [v27 view];
    [v26 addSubview:v28];

    v29 = self->_currentDataCollector;
  }

  else
  {
    v32 = [0 viewController];
    v33 = [v32 view];
    [v26 addSubview:v33];

    v29 = 0;
  }

  v30 = [(PKHandwritingDataCollecting *)v29 viewController];
  [v30 didMoveToParentViewController:self];
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

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [(PKHandwritingDataCollectionViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  v8 = [(PKHandwritingDataCollectionViewController *)self navigationItem];
  [v8 setLeftBarButtonItem:v7];

  v9 = objc_alloc(MEMORY[0x1E69DC708]);
  v10 = _PencilKitBundle();
  v11 = [v10 localizedStringForKey:@"Submit" value:@"Submit" table:@"Localizable"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:sel_sendRadarButtonTapped_];
  v13 = [(PKHandwritingDataCollectionViewController *)self navigationItem];
  [v13 setRightBarButtonItem:v12];

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
      v47 = [(PKHandwritingDataCollectionViewController *)self navigationItem];
      [v47 setTitleView:v46];

      v48 = self->_segmentControl;
    }

    else
    {
      v68 = [0 navigationItem];
      [v68 setTitleView:0];

      v48 = 0;
    }

    [(UISegmentedControl *)v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [(PKHandwritingDataCollectionViewController *)self view];
    v50 = v49;
    if (self)
    {
      v51 = self->_segmentControl;
    }

    else
    {
      v51 = 0;
    }

    [v49 addSubview:v51];

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
    v53 = [(UISegmentedControl *)v77 topAnchor];
    v75 = [(PKHandwritingDataCollectionViewController *)self view];
    v74 = [v75 safeAreaLayoutGuide];
    [v74 topAnchor];
    v73 = v76 = v53;
    v72 = [v53 constraintEqualToAnchor:8.0 constant:?];
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
    v55 = [(UISegmentedControl *)v70 leadingAnchor];
    v56 = [(PKHandwritingDataCollectionViewController *)self view];
    v57 = [v56 leadingAnchor];
    v69 = v55;
    v58 = [v55 constraintEqualToAnchor:v57 constant:16.0];
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
    v61 = [(UISegmentedControl *)v60 trailingAnchor];
    v62 = [(PKHandwritingDataCollectionViewController *)self view];
    v63 = [v62 trailingAnchor];
    v64 = [v61 constraintEqualToAnchor:v63 constant:-16.0];
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
  v25 = [(PKHandwritingDataCollecting *)v24 viewController];
  [(PKHandwritingDataCollectionViewController *)self addChildViewController:v25];

  v26 = [(PKHandwritingDataCollectionViewController *)self view];
  [v26 bounds];
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

  v36 = [(PKHandwritingDataCollecting *)v35 viewController];
  v37 = [v36 view];
  [v37 setFrame:{v28, v30, v32, v34}];

  v38 = [(PKHandwritingDataCollectionViewController *)self view];
  if (self)
  {
    v39 = [(PKHandwritingDataCollecting *)self->_currentDataCollector viewController];
    v40 = [v39 view];
    [v38 addSubview:v40];

    v41 = self->_currentDataCollector;
  }

  else
  {
    v66 = [0 viewController];
    v67 = [v66 view];
    [v38 addSubview:v67];

    v41 = 0;
  }

  v42 = v41;
  v43 = [(PKHandwritingDataCollecting *)v42 viewController];
  [v43 didMoveToParentViewController:self];
}

- (void)setSegmentControl:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 992), a2);
  }
}

- (void)sendRadarButtonTapped:(id)a3
{
  v3 = self;
  if (self)
  {
    self = self->_currentDataCollector;
  }

  [(PKHandwritingDataCollectionViewController *)self submitFeedback];

  [(PKHandwritingDataCollectionViewController *)v3 dismissViewControllerAnimated:1 completion:0];
}

@end