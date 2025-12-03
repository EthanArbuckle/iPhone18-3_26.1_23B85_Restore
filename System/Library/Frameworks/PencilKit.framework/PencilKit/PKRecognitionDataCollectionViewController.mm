@interface PKRecognitionDataCollectionViewController
- (PKRecognitionDataCollectionViewController)initWithDrawings:(id)drawings metadata:(id)metadata;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)saveDataForDrawings:(id)drawings baseURL:(id)l shouldSaveRecognitionData:(BOOL)data;
- (id)synchronousImageForDrawing:(id)drawing;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)adjustCollectionViewHeight;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)submitFeedback;
- (void)viewDidLoad;
@end

@implementation PKRecognitionDataCollectionViewController

- (PKRecognitionDataCollectionViewController)initWithDrawings:(id)drawings metadata:(id)metadata
{
  v13.receiver = self;
  v13.super_class = PKRecognitionDataCollectionViewController;
  metadataCopy = metadata;
  drawingsCopy = drawings;
  v7 = [(PKRecognitionDataCollectionViewController *)&v13 init];
  v8 = [drawingsCopy copy];

  drawings = v7->_drawings;
  v7->_drawings = v8;

  v10 = [metadataCopy copy];
  metadata = v7->_metadata;
  v7->_metadata = v10;

  return v7;
}

- (void)viewDidLoad
{
  v151 = *MEMORY[0x1E69E9840];
  v149.receiver = self;
  v149.super_class = PKRecognitionDataCollectionViewController;
  [(PKRecognitionDataCollectionViewController *)&v149 viewDidLoad];
  v3 = _PencilKitBundle();
  v4 = [v3 localizedStringForKey:@"Handwriting Feedback" value:@"Handwriting Feedback" table:@"Localizable"];
  [(PKRecognitionDataCollectionViewController *)self setTitle:v4];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  view = [(PKRecognitionDataCollectionViewController *)self view];
  [view setBackgroundColor:whiteColor];

  v7 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
  [(PKRecognitionDataCollectionViewController *)self setScrollView:v12];

  scrollView = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [scrollView setAlwaysBounceVertical:1];

  scrollView2 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [scrollView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(PKRecognitionDataCollectionViewController *)self view];
  scrollView3 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [view2 addSubview:scrollView3];

  scrollView4 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  frameLayoutGuide = [scrollView4 frameLayoutGuide];
  topAnchor = [frameLayoutGuide topAnchor];
  view3 = [(PKRecognitionDataCollectionViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v23 setActive:1];

  scrollView5 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  frameLayoutGuide2 = [scrollView5 frameLayoutGuide];
  leftAnchor = [frameLayoutGuide2 leftAnchor];
  view4 = [(PKRecognitionDataCollectionViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide2 leftAnchor];
  v30 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v30 setActive:1];

  scrollView6 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  frameLayoutGuide3 = [scrollView6 frameLayoutGuide];
  rightAnchor = [frameLayoutGuide3 rightAnchor];
  view5 = [(PKRecognitionDataCollectionViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide3 rightAnchor];
  v37 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v37 setActive:1];

  scrollView7 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  frameLayoutGuide4 = [scrollView7 frameLayoutGuide];
  bottomAnchor = [frameLayoutGuide4 bottomAnchor];
  view6 = [(PKRecognitionDataCollectionViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v44 setActive:1];

  scrollView8 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  frameLayoutGuide5 = [scrollView8 frameLayoutGuide];
  widthAnchor = [frameLayoutGuide5 widthAnchor];
  scrollView9 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  contentLayoutGuide = [scrollView9 contentLayoutGuide];
  widthAnchor2 = [contentLayoutGuide widthAnchor];
  v51 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v51 setActive:1];

  v52 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
  [(PKRecognitionDataCollectionViewController *)self setDescriptionLabel:v52];

  descriptionLabel = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [descriptionLabel setNumberOfLines:0];

  v54 = _PencilKitBundle();
  v55 = [v54 localizedStringForKey:@"Help us improve handwriting recognition by submitting this drawing to Apple. If you wish to submit only a portion of your drawing value:you can cancel and select the relevant region using the lasso tool. Your submission may contain strokes that were previously made in the area shown in the screenshot table:{but which are no longer visible.", @"Help us improve handwriting recognition by submitting this drawing to Apple. If you wish to submit only a portion of your drawing, you can cancel and select the relevant region using the lasso tool. Your submission may contain strokes that were previously made in the area shown in the screenshot, but which are no longer visible.", @"Localizable"}];
  descriptionLabel2 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [descriptionLabel2 setText:v55];

  v57 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  descriptionLabel3 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [descriptionLabel3 setFont:v57];

  descriptionLabel4 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [descriptionLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView10 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  descriptionLabel5 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [scrollView10 addSubview:descriptionLabel5];

  v62 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v62 setMinimumLineSpacing:20.0];
  [v62 setMinimumInteritemSpacing:20.0];
  [v62 setSectionInset:{0.0, 0.0, 0.0, 0.0}];
  [v62 setItemSize:{240.0, 240.0}];
  v63 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v62 collectionViewLayout:{v8, v9, v10, v11}];
  [(PKRecognitionDataCollectionViewController *)self setCollectionView:v63];

  collectionView = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  collectionView2 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [collectionView2 setBackgroundColor:whiteColor2];

  collectionView3 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [collectionView3 setDataSource:self];

  collectionView4 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [collectionView4 setDelegate:self];

  collectionView5 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = NSStringFromClass(v71);
  [collectionView5 registerClass:v70 forCellWithReuseIdentifier:v72];

  scrollView11 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  collectionView6 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [scrollView11 addSubview:collectionView6];

  scrollView12 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  contentLayoutGuide2 = [scrollView12 contentLayoutGuide];
  topAnchor3 = [contentLayoutGuide2 topAnchor];
  descriptionLabel6 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  topAnchor4 = [descriptionLabel6 topAnchor];
  v80 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-20.0];
  [v80 setActive:1];

  scrollView13 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  contentLayoutGuide3 = [scrollView13 contentLayoutGuide];
  leftAnchor3 = [contentLayoutGuide3 leftAnchor];
  descriptionLabel7 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  leftAnchor4 = [descriptionLabel7 leftAnchor];
  v86 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:-20.0];
  [v86 setActive:1];

  scrollView14 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  contentLayoutGuide4 = [scrollView14 contentLayoutGuide];
  rightAnchor3 = [contentLayoutGuide4 rightAnchor];
  descriptionLabel8 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  rightAnchor4 = [descriptionLabel8 rightAnchor];
  v92 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:20.0];
  [v92 setActive:1];

  descriptionLabel9 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  bottomAnchor3 = [descriptionLabel9 bottomAnchor];
  collectionView7 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  topAnchor5 = [collectionView7 topAnchor];
  v97 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:-20.0];
  [v97 setActive:1];

  scrollView15 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  contentLayoutGuide5 = [scrollView15 contentLayoutGuide];
  leftAnchor5 = [contentLayoutGuide5 leftAnchor];
  collectionView8 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  leftAnchor6 = [collectionView8 leftAnchor];
  v103 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:-20.0];
  [v103 setActive:1];

  scrollView16 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  contentLayoutGuide6 = [scrollView16 contentLayoutGuide];
  rightAnchor5 = [contentLayoutGuide6 rightAnchor];
  collectionView9 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  rightAnchor6 = [collectionView9 rightAnchor];
  v109 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6 constant:20.0];
  [v109 setActive:1];

  scrollView17 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  contentLayoutGuide7 = [scrollView17 contentLayoutGuide];
  bottomAnchor4 = [contentLayoutGuide7 bottomAnchor];
  collectionView10 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  bottomAnchor5 = [collectionView10 bottomAnchor];
  v115 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:20.0];
  [v115 setActive:1];

  collectionView11 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  frameLayoutGuide6 = [collectionView11 frameLayoutGuide];
  widthAnchor3 = [frameLayoutGuide6 widthAnchor];
  collectionView12 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  contentLayoutGuide8 = [collectionView12 contentLayoutGuide];
  widthAnchor4 = [contentLayoutGuide8 widthAnchor];
  v122 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [v122 setActive:1];

  collectionView13 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  frameLayoutGuide7 = [collectionView13 frameLayoutGuide];
  centerXAnchor = [frameLayoutGuide7 centerXAnchor];
  collectionView14 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  contentLayoutGuide9 = [collectionView14 contentLayoutGuide];
  centerXAnchor2 = [contentLayoutGuide9 centerXAnchor];
  v129 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v129 setActive:1];

  collectionView15 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  heightAnchor = [collectionView15 heightAnchor];
  v132 = [heightAnchor constraintEqualToConstant:0.0];
  [(PKRecognitionDataCollectionViewController *)self setCollectionViewHeightConstraint:v132];

  collectionViewHeightConstraint = [(PKRecognitionDataCollectionViewController *)self collectionViewHeightConstraint];
  [collectionViewHeightConstraint setActive:0];

  v134 = MEMORY[0x1E695DF70];
  drawings = [(PKRecognitionDataCollectionViewController *)self drawings];
  v136 = [v134 arrayWithCapacity:{objc_msgSend(drawings, "count")}];

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  drawings2 = [(PKRecognitionDataCollectionViewController *)self drawings];
  v138 = [drawings2 countByEnumeratingWithState:&v145 objects:v150 count:16];
  if (v138)
  {
    v139 = v138;
    v140 = *v146;
    do
    {
      for (i = 0; i != v139; ++i)
      {
        if (*v146 != v140)
        {
          objc_enumerationMutation(drawings2);
        }

        v142 = [(PKRecognitionDataCollectionViewController *)self synchronousImageForDrawing:*(*(&v145 + 1) + 8 * i)];
        [v136 addObject:v142];
      }

      v139 = [drawings2 countByEnumeratingWithState:&v145 objects:v150 count:16];
    }

    while (v139);
  }

  v143 = [MEMORY[0x1E695DEC8] arrayWithArray:v136];
  [(PKRecognitionDataCollectionViewController *)self setDrawingImages:v143];

  collectionView16 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [collectionView16 reloadData];

  [(PKRecognitionDataCollectionViewController *)self adjustCollectionViewHeight];
}

- (void)adjustCollectionViewHeight
{
  scrollView = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [scrollView setNeedsLayout];

  scrollView2 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [scrollView2 layoutIfNeeded];

  collectionView = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [collectionView setNeedsLayout];

  collectionView2 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [collectionView2 layoutIfNeeded];

  collectionViewHeightConstraint = [(PKRecognitionDataCollectionViewController *)self collectionViewHeightConstraint];
  [collectionViewHeightConstraint setActive:1];

  collectionView3 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [collectionView3 contentSize];
  v9 = v8;
  collectionViewHeightConstraint2 = [(PKRecognitionDataCollectionViewController *)self collectionViewHeightConstraint];
  [collectionViewHeightConstraint2 setConstant:v9];
}

- (id)saveDataForDrawings:(id)drawings baseURL:(id)l shouldSaveRecognitionData:(BOOL)data
{
  dataCopy = data;
  v96 = *MEMORY[0x1E69E9840];
  drawingsCopy = drawings;
  lCopy = l;
  array = [MEMORY[0x1E695DF70] array];
  if ([drawingsCopy count])
  {
    v8 = 0;
    v81 = drawingsCopy;
    v68 = lCopy;
    while (1)
    {
      v9 = [drawingsCopy objectAtIndexedSubscript:v8];
      v10 = [v9 serializeWithVersion:2];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%d.drawing", v8];
      [lCopy URLByAppendingPathComponent:v11];
      v13 = v12 = lCopy;

      v88 = v10;
      v14 = v10;
      v15 = v13;
      lCopy = v12;
      [v14 writeToURL:v15 atomically:1];
      [array addObject:v15];
      drawingImages = [(PKRecognitionDataCollectionViewController *)self drawingImages];
      v17 = [drawingImages objectAtIndexedSubscript:v8];

      v87 = v17;
      v18 = UIImagePNGRepresentation(v17);
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/image_%d.png", v8];
      v20 = [v12 URLByAppendingPathComponent:v19];

      [v18 writeToURL:v20 atomically:1];
      [array addObject:v20];
      if (dataCopy)
      {
        break;
      }

LABEL_25:

      ++v8;
      drawingsCopy = v81;
      if (v8 >= [v81 count])
      {
        goto LABEL_26;
      }
    }

    v80 = v20;
    [v9 uuid];
    v22 = v21 = v9;
    v23 = [PKRecognitionSessionCache recognitionSessionForUUID:v22];

    session = [(PKRecognitionSessionManager *)v23 session];
    if (session)
    {
      v25 = session;
      v77 = v23;
      v78 = v18;
      v79 = v15;
      v85 = v21;
    }

    else
    {
      v9 = v21;
      if (![v21 recognitionEnabled] || (objc_msgSend(v21, "recognitionSession"), (v60 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_24:

        v20 = v80;
        goto LABEL_25;
      }

      v25 = v60;
      v77 = v23;
      v78 = v18;
      v79 = v15;
      v85 = v21;
    }

    v76 = v25;
    v26 = [objc_alloc(MEMORY[0x1E6997B60]) initWithRecognitionSession:v25];
    [v26 start];
    [v26 waitForPendingUpdates];
    indexableContent = [v26 indexableContent];
    indexableTextRepresentation = [indexableContent indexableTextRepresentation];
    v29 = [indexableTextRepresentation dataUsingEncoding:4];

    v84 = v8;
    v30 = v8;
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/indexableText_%d.txt", v8];
    v32 = [lCopy URLByAppendingPathComponent:v31];

    v74 = v29;
    [v29 writeToURL:v32 atomically:1];
    v73 = v32;
    [array addObject:v32];
    v75 = v26;
    indexableContent2 = [v26 indexableContent];
    presentableTextRepresentation = [indexableContent2 presentableTextRepresentation];
    v35 = [presentableTextRepresentation dataUsingEncoding:4];

    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/presentableText_%d.txt", v30];
    v37 = [lCopy URLByAppendingPathComponent:v36];

    v72 = v35;
    [v35 writeToURL:v37 atomically:1];
    v71 = v37;
    [array addObject:v37];
    v38 = objc_alloc(MEMORY[0x1E6997C10]);
    recognitionSession = [v85 recognitionSession];
    v40 = [v38 initWithRecognitionSession:recognitionSession];

    [v40 setStatusReportingEnabled:1];
    string = [MEMORY[0x1E696AD60] string];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    availableRecognitionSessionStatusKeys = [MEMORY[0x1E6997C10] availableRecognitionSessionStatusKeys];
    v43 = [availableRecognitionSessionStatusKeys countByEnumeratingWithState:&v91 objects:v95 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v92;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v92 != v45)
          {
            objc_enumerationMutation(availableRecognitionSessionStatusKeys);
          }

          v47 = *(*(&v91 + 1) + 8 * i);
          v48 = [MEMORY[0x1E6997C10] localizedNameForRecognitionSessionStatusKey:v47];
          [v40 setEnabled:1 forVisualizationIdentifier:v47];
          v49 = [v40 valueForRecognitionStatusKey:v47];
          [string appendFormat:@"*%@*\n", v48];
          if (v49)
          {
            [string appendFormat:@"%@\n\n", v49];
          }

          else
          {
            [string appendString:@"\n"];
          }
        }

        v44 = [availableRecognitionSessionStatusKeys countByEnumeratingWithState:&v91 objects:v95 count:16];
      }

      while (v44);
    }

    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/visualizationManager_%d.txt", v84];
    lCopy = v68;
    v51 = [v68 URLByAppendingPathComponent:v50];

    v69 = [string dataUsingEncoding:4];
    [v69 writeToURL:v51 atomically:1];
    v70 = v51;
    [array addObject:v51];
    uuid = [v85 uuid];
    v53 = CacheFileURLForDrawing(uuid, 0);

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v53 path];
    LODWORD(v51) = [defaultManager fileExistsAtPath:path];

    if (v51)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%d.sessionCache", v84];
      v57 = [v68 URLByAppendingPathComponent:v56];

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v90 = 0;
      v59 = [defaultManager2 copyItemAtURL:v53 toURL:v57 error:&v90];

      if (v59)
      {
        [array addObject:v57];
      }
    }

    v8 = v84;
    v9 = v85;
    v18 = v78;
    v15 = v79;
    v23 = v77;
    goto LABEL_24;
  }

LABEL_26:
  v61 = MEMORY[0x1E696ACB0];
  metadata = [(PKRecognitionDataCollectionViewController *)self metadata];
  v89 = 0;
  v63 = [v61 dataWithJSONObject:metadata options:0 error:&v89];
  v64 = v89;

  if (!v63)
  {
    NSLog(&cfstr_ErrorSavingMet.isa, v64);
  }

  v65 = [lCopy URLByAppendingPathComponent:@"/metadata.txt"];
  [v63 writeToURL:v65 atomically:1];
  [array addObject:v65];
  v66 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v66;
}

- (id)synchronousImageForDrawing:(id)drawing
{
  drawingCopy = drawing;
  v4 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__30;
  v30 = __Block_byref_object_dispose__30;
  v31 = 0;
  [drawingCopy _canvasBounds];
  v7 = v6;
  MaxY = v5;
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    [drawingCopy bounds];
    MaxY = CGRectGetMaxY(v33);
    v7 = 768.0;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v12 = v11;

  if (v12 < v7)
  {
    v7 = v12;
  }

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v15 = v14;

  if (v15 < MaxY)
  {
    MaxY = v15;
  }

  v16 = [PKImageRenderer alloc];
  mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen3 scale];
  v19 = [(PKImageRenderer *)v16 initWithSize:v7 scale:MaxY, v18];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__PKRecognitionDataCollectionViewController_synchronousImageForDrawing___block_invoke;
  v23[3] = &unk_1E82D82B8;
  v25 = &v26;
  v20 = v4;
  v24 = v20;
  [(PKImageRenderer *)v19 renderDrawing:drawingCopy completion:v23];
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  v21 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v21;
}

void __72__PKRecognitionDataCollectionViewController_synchronousImageForDrawing___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  drawingImages = [(PKRecognitionDataCollectionViewController *)self drawingImages];
  v7 = [pathCopy row];

  v10 = [drawingImages objectAtIndexedSubscript:v7];

  v8 = [[PKRecognitionDrawingPreviewViewController alloc] initWithDrawingImage:v10];
  navigationController = [(PKRecognitionDataCollectionViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v36 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  contentView = [v10 contentView];
  subviews = [contentView subviews];
  v13 = [subviews copy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v31 + 1) + 8 * i) removeFromSuperview];
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  drawingImages = [(PKRecognitionDataCollectionViewController *)self drawingImages];
  v20 = [drawingImages objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v20];
  layer = [v21 layer];
  [layer setMinificationFilter:*MEMORY[0x1E6979D68]];

  [v21 setContentMode:1];
  contentView2 = [v10 contentView];
  [contentView2 addSubview:v21];

  contentView3 = [v10 contentView];
  [contentView3 bounds];
  [v21 setFrame:?];

  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  cGColor = [lightGrayColor CGColor];
  layer2 = [v10 layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [v10 layer];
  [layer3 setBorderWidth:0.5];

  layer4 = [v10 layer];
  [layer4 setCornerRadius:8.0];

  return v10;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PKRecognitionDataCollectionViewController *)self drawingImages:view];
  v5 = [v4 count];

  return v5;
}

- (void)submitFeedback
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v5 = MEMORY[0x1E695DFF8];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6];
  v8 = [v7 URLByAppendingPathComponent:uUIDString];

  v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v18 = 0;
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v18];
  v11 = v18;
  v12 = v11;
  if (v10)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [standardUserDefaults BOOLForKey:@"PKShouldForceFeedbackAssistant"];

    v15 = (v14 & 1) == 0 && (os_variant_has_internal_diagnostics() & 1) != 0;
    drawings = [(PKRecognitionDataCollectionViewController *)self drawings];
    v17 = [(PKRecognitionDataCollectionViewController *)self saveDataForDrawings:drawings baseURL:v8 shouldSaveRecognitionData:v15];

    [PKHandwritingDebugUtility submitFeedbackWithAttachments:v17 title:@"Handwriting Feedback: "];
  }

  else
  {
    NSLog(&cfstr_Error.isa, v11);
  }
}

@end