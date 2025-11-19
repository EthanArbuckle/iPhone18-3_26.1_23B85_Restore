@interface PKRecognitionDataCollectionViewController
- (PKRecognitionDataCollectionViewController)initWithDrawings:(id)a3 metadata:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)saveDataForDrawings:(id)a3 baseURL:(id)a4 shouldSaveRecognitionData:(BOOL)a5;
- (id)synchronousImageForDrawing:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)adjustCollectionViewHeight;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)submitFeedback;
- (void)viewDidLoad;
@end

@implementation PKRecognitionDataCollectionViewController

- (PKRecognitionDataCollectionViewController)initWithDrawings:(id)a3 metadata:(id)a4
{
  v13.receiver = self;
  v13.super_class = PKRecognitionDataCollectionViewController;
  v5 = a4;
  v6 = a3;
  v7 = [(PKRecognitionDataCollectionViewController *)&v13 init];
  v8 = [v6 copy];

  drawings = v7->_drawings;
  v7->_drawings = v8;

  v10 = [v5 copy];
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

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [(PKRecognitionDataCollectionViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
  [(PKRecognitionDataCollectionViewController *)self setScrollView:v12];

  v13 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [v13 setAlwaysBounceVertical:1];

  v14 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(PKRecognitionDataCollectionViewController *)self view];
  v16 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [v15 addSubview:v16];

  v17 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v18 = [v17 frameLayoutGuide];
  v19 = [v18 topAnchor];
  v20 = [(PKRecognitionDataCollectionViewController *)self view];
  v21 = [v20 safeAreaLayoutGuide];
  v22 = [v21 topAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v25 = [v24 frameLayoutGuide];
  v26 = [v25 leftAnchor];
  v27 = [(PKRecognitionDataCollectionViewController *)self view];
  v28 = [v27 safeAreaLayoutGuide];
  v29 = [v28 leftAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v32 = [v31 frameLayoutGuide];
  v33 = [v32 rightAnchor];
  v34 = [(PKRecognitionDataCollectionViewController *)self view];
  v35 = [v34 safeAreaLayoutGuide];
  v36 = [v35 rightAnchor];
  v37 = [v33 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  v38 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v39 = [v38 frameLayoutGuide];
  v40 = [v39 bottomAnchor];
  v41 = [(PKRecognitionDataCollectionViewController *)self view];
  v42 = [v41 safeAreaLayoutGuide];
  v43 = [v42 bottomAnchor];
  v44 = [v40 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v46 = [v45 frameLayoutGuide];
  v47 = [v46 widthAnchor];
  v48 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v49 = [v48 contentLayoutGuide];
  v50 = [v49 widthAnchor];
  v51 = [v47 constraintEqualToAnchor:v50];
  [v51 setActive:1];

  v52 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
  [(PKRecognitionDataCollectionViewController *)self setDescriptionLabel:v52];

  v53 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [v53 setNumberOfLines:0];

  v54 = _PencilKitBundle();
  v55 = [v54 localizedStringForKey:@"Help us improve handwriting recognition by submitting this drawing to Apple. If you wish to submit only a portion of your drawing value:you can cancel and select the relevant region using the lasso tool. Your submission may contain strokes that were previously made in the area shown in the screenshot table:{but which are no longer visible.", @"Help us improve handwriting recognition by submitting this drawing to Apple. If you wish to submit only a portion of your drawing, you can cancel and select the relevant region using the lasso tool. Your submission may contain strokes that were previously made in the area shown in the screenshot, but which are no longer visible.", @"Localizable"}];
  v56 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [v56 setText:v55];

  v57 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v58 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [v58 setFont:v57];

  v59 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

  v60 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v61 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  [v60 addSubview:v61];

  v62 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v62 setMinimumLineSpacing:20.0];
  [v62 setMinimumInteritemSpacing:20.0];
  [v62 setSectionInset:{0.0, 0.0, 0.0, 0.0}];
  [v62 setItemSize:{240.0, 240.0}];
  v63 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v62 collectionViewLayout:{v8, v9, v10, v11}];
  [(PKRecognitionDataCollectionViewController *)self setCollectionView:v63];

  v64 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v64 setTranslatesAutoresizingMaskIntoConstraints:0];

  v65 = [MEMORY[0x1E69DC888] whiteColor];
  v66 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v66 setBackgroundColor:v65];

  v67 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v67 setDataSource:self];

  v68 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v68 setDelegate:self];

  v69 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = NSStringFromClass(v71);
  [v69 registerClass:v70 forCellWithReuseIdentifier:v72];

  v73 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v74 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v73 addSubview:v74];

  v75 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v76 = [v75 contentLayoutGuide];
  v77 = [v76 topAnchor];
  v78 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  v79 = [v78 topAnchor];
  v80 = [v77 constraintEqualToAnchor:v79 constant:-20.0];
  [v80 setActive:1];

  v81 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v82 = [v81 contentLayoutGuide];
  v83 = [v82 leftAnchor];
  v84 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  v85 = [v84 leftAnchor];
  v86 = [v83 constraintEqualToAnchor:v85 constant:-20.0];
  [v86 setActive:1];

  v87 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v88 = [v87 contentLayoutGuide];
  v89 = [v88 rightAnchor];
  v90 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  v91 = [v90 rightAnchor];
  v92 = [v89 constraintEqualToAnchor:v91 constant:20.0];
  [v92 setActive:1];

  v93 = [(PKRecognitionDataCollectionViewController *)self descriptionLabel];
  v94 = [v93 bottomAnchor];
  v95 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v96 = [v95 topAnchor];
  v97 = [v94 constraintEqualToAnchor:v96 constant:-20.0];
  [v97 setActive:1];

  v98 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v99 = [v98 contentLayoutGuide];
  v100 = [v99 leftAnchor];
  v101 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v102 = [v101 leftAnchor];
  v103 = [v100 constraintEqualToAnchor:v102 constant:-20.0];
  [v103 setActive:1];

  v104 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v105 = [v104 contentLayoutGuide];
  v106 = [v105 rightAnchor];
  v107 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v108 = [v107 rightAnchor];
  v109 = [v106 constraintEqualToAnchor:v108 constant:20.0];
  [v109 setActive:1];

  v110 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  v111 = [v110 contentLayoutGuide];
  v112 = [v111 bottomAnchor];
  v113 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v114 = [v113 bottomAnchor];
  v115 = [v112 constraintEqualToAnchor:v114 constant:20.0];
  [v115 setActive:1];

  v116 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v117 = [v116 frameLayoutGuide];
  v118 = [v117 widthAnchor];
  v119 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v120 = [v119 contentLayoutGuide];
  v121 = [v120 widthAnchor];
  v122 = [v118 constraintEqualToAnchor:v121];
  [v122 setActive:1];

  v123 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v124 = [v123 frameLayoutGuide];
  v125 = [v124 centerXAnchor];
  v126 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v127 = [v126 contentLayoutGuide];
  v128 = [v127 centerXAnchor];
  v129 = [v125 constraintEqualToAnchor:v128];
  [v129 setActive:1];

  v130 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  v131 = [v130 heightAnchor];
  v132 = [v131 constraintEqualToConstant:0.0];
  [(PKRecognitionDataCollectionViewController *)self setCollectionViewHeightConstraint:v132];

  v133 = [(PKRecognitionDataCollectionViewController *)self collectionViewHeightConstraint];
  [v133 setActive:0];

  v134 = MEMORY[0x1E695DF70];
  v135 = [(PKRecognitionDataCollectionViewController *)self drawings];
  v136 = [v134 arrayWithCapacity:{objc_msgSend(v135, "count")}];

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v137 = [(PKRecognitionDataCollectionViewController *)self drawings];
  v138 = [v137 countByEnumeratingWithState:&v145 objects:v150 count:16];
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
          objc_enumerationMutation(v137);
        }

        v142 = [(PKRecognitionDataCollectionViewController *)self synchronousImageForDrawing:*(*(&v145 + 1) + 8 * i)];
        [v136 addObject:v142];
      }

      v139 = [v137 countByEnumeratingWithState:&v145 objects:v150 count:16];
    }

    while (v139);
  }

  v143 = [MEMORY[0x1E695DEC8] arrayWithArray:v136];
  [(PKRecognitionDataCollectionViewController *)self setDrawingImages:v143];

  v144 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v144 reloadData];

  [(PKRecognitionDataCollectionViewController *)self adjustCollectionViewHeight];
}

- (void)adjustCollectionViewHeight
{
  v3 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [v3 setNeedsLayout];

  v4 = [(PKRecognitionDataCollectionViewController *)self scrollView];
  [v4 layoutIfNeeded];

  v5 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v5 setNeedsLayout];

  v6 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v6 layoutIfNeeded];

  v7 = [(PKRecognitionDataCollectionViewController *)self collectionViewHeightConstraint];
  [v7 setActive:1];

  v11 = [(PKRecognitionDataCollectionViewController *)self collectionView];
  [v11 contentSize];
  v9 = v8;
  v10 = [(PKRecognitionDataCollectionViewController *)self collectionViewHeightConstraint];
  [v10 setConstant:v9];
}

- (id)saveDataForDrawings:(id)a3 baseURL:(id)a4 shouldSaveRecognitionData:(BOOL)a5
{
  v82 = a5;
  v96 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v86 = [MEMORY[0x1E695DF70] array];
  if ([v6 count])
  {
    v8 = 0;
    v81 = v6;
    v68 = v7;
    while (1)
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = [v9 serializeWithVersion:2];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%d.drawing", v8];
      [v7 URLByAppendingPathComponent:v11];
      v13 = v12 = v7;

      v88 = v10;
      v14 = v10;
      v15 = v13;
      v7 = v12;
      [v14 writeToURL:v15 atomically:1];
      [v86 addObject:v15];
      v16 = [(PKRecognitionDataCollectionViewController *)self drawingImages];
      v17 = [v16 objectAtIndexedSubscript:v8];

      v87 = v17;
      v18 = UIImagePNGRepresentation(v17);
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/image_%d.png", v8];
      v20 = [v12 URLByAppendingPathComponent:v19];

      [v18 writeToURL:v20 atomically:1];
      [v86 addObject:v20];
      if (v82)
      {
        break;
      }

LABEL_25:

      ++v8;
      v6 = v81;
      if (v8 >= [v81 count])
      {
        goto LABEL_26;
      }
    }

    v80 = v20;
    [v9 uuid];
    v22 = v21 = v9;
    v23 = [PKRecognitionSessionCache recognitionSessionForUUID:v22];

    v24 = [(PKRecognitionSessionManager *)v23 session];
    if (v24)
    {
      v25 = v24;
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
    v27 = [v26 indexableContent];
    v28 = [v27 indexableTextRepresentation];
    v29 = [v28 dataUsingEncoding:4];

    v84 = v8;
    v30 = v8;
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/indexableText_%d.txt", v8];
    v32 = [v7 URLByAppendingPathComponent:v31];

    v74 = v29;
    [v29 writeToURL:v32 atomically:1];
    v73 = v32;
    [v86 addObject:v32];
    v75 = v26;
    v33 = [v26 indexableContent];
    v34 = [v33 presentableTextRepresentation];
    v35 = [v34 dataUsingEncoding:4];

    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/presentableText_%d.txt", v30];
    v37 = [v7 URLByAppendingPathComponent:v36];

    v72 = v35;
    [v35 writeToURL:v37 atomically:1];
    v71 = v37;
    [v86 addObject:v37];
    v38 = objc_alloc(MEMORY[0x1E6997C10]);
    v39 = [v85 recognitionSession];
    v40 = [v38 initWithRecognitionSession:v39];

    [v40 setStatusReportingEnabled:1];
    v41 = [MEMORY[0x1E696AD60] string];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v42 = [MEMORY[0x1E6997C10] availableRecognitionSessionStatusKeys];
    v43 = [v42 countByEnumeratingWithState:&v91 objects:v95 count:16];
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
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v91 + 1) + 8 * i);
          v48 = [MEMORY[0x1E6997C10] localizedNameForRecognitionSessionStatusKey:v47];
          [v40 setEnabled:1 forVisualizationIdentifier:v47];
          v49 = [v40 valueForRecognitionStatusKey:v47];
          [v41 appendFormat:@"*%@*\n", v48];
          if (v49)
          {
            [v41 appendFormat:@"%@\n\n", v49];
          }

          else
          {
            [v41 appendString:@"\n"];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v91 objects:v95 count:16];
      }

      while (v44);
    }

    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/visualizationManager_%d.txt", v84];
    v7 = v68;
    v51 = [v68 URLByAppendingPathComponent:v50];

    v69 = [v41 dataUsingEncoding:4];
    [v69 writeToURL:v51 atomically:1];
    v70 = v51;
    [v86 addObject:v51];
    v52 = [v85 uuid];
    v53 = CacheFileURLForDrawing(v52, 0);

    v54 = [MEMORY[0x1E696AC08] defaultManager];
    v55 = [v53 path];
    LODWORD(v51) = [v54 fileExistsAtPath:v55];

    if (v51)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/drawing_%d.sessionCache", v84];
      v57 = [v68 URLByAppendingPathComponent:v56];

      v58 = [MEMORY[0x1E696AC08] defaultManager];
      v90 = 0;
      v59 = [v58 copyItemAtURL:v53 toURL:v57 error:&v90];

      if (v59)
      {
        [v86 addObject:v57];
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
  v62 = [(PKRecognitionDataCollectionViewController *)self metadata];
  v89 = 0;
  v63 = [v61 dataWithJSONObject:v62 options:0 error:&v89];
  v64 = v89;

  if (!v63)
  {
    NSLog(&cfstr_ErrorSavingMet.isa, v64);
  }

  v65 = [v7 URLByAppendingPathComponent:@"/metadata.txt"];
  [v63 writeToURL:v65 atomically:1];
  [v86 addObject:v65];
  v66 = [MEMORY[0x1E695DEC8] arrayWithArray:v86];

  return v66;
}

- (id)synchronousImageForDrawing:(id)a3
{
  v3 = a3;
  v4 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__30;
  v30 = __Block_byref_object_dispose__30;
  v31 = 0;
  [v3 _canvasBounds];
  v7 = v6;
  MaxY = v5;
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    [v3 bounds];
    MaxY = CGRectGetMaxY(v33);
    v7 = 768.0;
  }

  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 bounds];
  v12 = v11;

  if (v12 < v7)
  {
    v7 = v12;
  }

  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 bounds];
  v15 = v14;

  if (v15 < MaxY)
  {
    MaxY = v15;
  }

  v16 = [PKImageRenderer alloc];
  v17 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v17 scale];
  v19 = [(PKImageRenderer *)v16 initWithSize:v7 scale:MaxY, v18];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__PKRecognitionDataCollectionViewController_synchronousImageForDrawing___block_invoke;
  v23[3] = &unk_1E82D82B8;
  v25 = &v26;
  v20 = v4;
  v24 = v20;
  [(PKImageRenderer *)v19 renderDrawing:v3 completion:v23];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PKRecognitionDataCollectionViewController *)self drawingImages];
  v7 = [v5 row];

  v10 = [v6 objectAtIndexedSubscript:v7];

  v8 = [[PKRecognitionDrawingPreviewViewController alloc] initWithDrawingImage:v10];
  v9 = [(PKRecognitionDataCollectionViewController *)self navigationController];
  [v9 pushViewController:v8 animated:1];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

  v11 = [v10 contentView];
  v12 = [v11 subviews];
  v13 = [v12 copy];

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

  v19 = [(PKRecognitionDataCollectionViewController *)self drawingImages];
  v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v20];
  v22 = [v21 layer];
  [v22 setMinificationFilter:*MEMORY[0x1E6979D68]];

  [v21 setContentMode:1];
  v23 = [v10 contentView];
  [v23 addSubview:v21];

  v24 = [v10 contentView];
  [v24 bounds];
  [v21 setFrame:?];

  v25 = [MEMORY[0x1E69DC888] lightGrayColor];
  v26 = [v25 CGColor];
  v27 = [v10 layer];
  [v27 setBorderColor:v26];

  v28 = [v10 layer];
  [v28 setBorderWidth:0.5];

  v29 = [v10 layer];
  [v29 setCornerRadius:8.0];

  return v10;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PKRecognitionDataCollectionViewController *)self drawingImages:a3];
  v5 = [v4 count];

  return v5;
}

- (void)submitFeedback
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = MEMORY[0x1E695DFF8];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6];
  v8 = [v7 URLByAppendingPathComponent:v4];

  v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v18 = 0;
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v18];
  v11 = v18;
  v12 = v11;
  if (v10)
  {
    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [v13 BOOLForKey:@"PKShouldForceFeedbackAssistant"];

    v15 = (v14 & 1) == 0 && (os_variant_has_internal_diagnostics() & 1) != 0;
    v16 = [(PKRecognitionDataCollectionViewController *)self drawings];
    v17 = [(PKRecognitionDataCollectionViewController *)self saveDataForDrawings:v16 baseURL:v8 shouldSaveRecognitionData:v15];

    [PKHandwritingDebugUtility submitFeedbackWithAttachments:v17 title:@"Handwriting Feedback: "];
  }

  else
  {
    NSLog(&cfstr_Error.isa, v11);
  }
}

@end