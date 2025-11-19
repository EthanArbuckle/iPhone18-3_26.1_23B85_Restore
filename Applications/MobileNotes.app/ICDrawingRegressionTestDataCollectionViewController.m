@interface ICDrawingRegressionTestDataCollectionViewController
- (ICDrawingRegressionTestDataCollectionViewController)initWithDrawingAttachments:(id)a3 description:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)saveDataForDrawingsBaseURL:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)adjustCollectionViewHeight;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)openTapToRadarWithTempDirectoryURL:(id)a3;
- (void)openURL:(id)a3;
- (void)selectAll;
- (void)sendRadarButtonTapped:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICDrawingRegressionTestDataCollectionViewController

- (ICDrawingRegressionTestDataCollectionViewController)initWithDrawingAttachments:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = ICDrawingRegressionTestDataCollectionViewController;
  v8 = [(ICDrawingRegressionTestDataCollectionViewController *)&v32 init];
  if (v8 && [v6 count])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v12 = [v6 firstObject];
    v13 = [v12 managedObjectContext];

    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_10014EDB8;
    v27 = &unk_100645DB8;
    v28 = v6;
    v29 = v9;
    v30 = v10;
    v31 = v11;
    v14 = v11;
    v15 = v10;
    v16 = v9;
    [v13 performBlockAndWait:&v24];
    v17 = [v16 copy];
    drawingAttachments = v8->_drawingAttachments;
    v8->_drawingAttachments = v17;

    v19 = [v15 copy];
    drawings = v8->_drawings;
    v8->_drawings = v19;

    v21 = [v14 copy];
    cellImages = v8->_cellImages;
    v8->_cellImages = v21;

    objc_storeStrong(&v8->_customDescription, a4);
  }

  return v8;
}

- (void)viewDidLoad
{
  v139.receiver = self;
  v139.super_class = ICDrawingRegressionTestDataCollectionViewController;
  [(ICDrawingRegressionTestDataCollectionViewController *)&v139 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Sketches" value:&stru_100661CF0 table:0];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setTitle:v4];

  v5 = +[UIColor whiteColor];
  v6 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonTapped:"];
  v8 = [(ICDrawingRegressionTestDataCollectionViewController *)self navigationItem];
  [v8 setLeftBarButtonItem:v7];

  v9 = [UIBarButtonItem alloc];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Submit" value:&stru_100661CF0 table:0];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:"sendRadarButtonTapped:"];
  v13 = [(ICDrawingRegressionTestDataCollectionViewController *)self navigationItem];
  [v13 setRightBarButtonItem:v12];

  v14 = [UIScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v18 = [v14 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setScrollView:v18];

  v19 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [v19 setAlwaysBounceVertical:1];

  v20 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  v22 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [v21 addSubview:v22];

  v23 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v24 = [v23 topAnchor];
  v25 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  v26 = [v25 safeAreaLayoutGuide];
  v27 = [v26 topAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v30 = [v29 leadingAnchor];
  v31 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  v32 = [v31 safeAreaLayoutGuide];
  v33 = [v32 leadingAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v36 = [v35 trailingAnchor];
  v37 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  v38 = [v37 safeAreaLayoutGuide];
  v39 = [v38 trailingAnchor];
  v40 = [v36 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v42 = [v41 bottomAnchor];
  v43 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  v44 = [v43 safeAreaLayoutGuide];
  v45 = [v44 bottomAnchor];
  v46 = [v42 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setDescriptionLabel:v47];

  v48 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [v48 setNumberOfLines:0];

  v49 = [(ICDrawingRegressionTestDataCollectionViewController *)self customDescription];
  v50 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [v50 setText:v49];

  v51 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v52 = [v51 ic_fontWithSingleLineA];
  v53 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [v53 setFont:v52];

  v54 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

  v55 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v56 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [v55 addSubview:v56];

  v57 = objc_alloc_init(UICollectionViewFlowLayout);
  [v57 setMinimumLineSpacing:20.0];
  [v57 setMinimumInteritemSpacing:20.0];
  [v57 setSectionInset:{0.0, 0.0, 0.0, 0.0}];
  [v57 setItemSize:{240.0, 240.0}];
  v58 = [[UICollectionView alloc] initWithFrame:v57 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setCollectionView:v58];

  v59 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

  v60 = +[UIColor whiteColor];
  v61 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v61 setBackgroundColor:v60];

  v62 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v62 setDataSource:self];

  v63 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v63 setDelegate:self];

  v64 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v64 setAllowsSelection:1];

  v65 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v65 setAllowsMultipleSelection:1];

  v66 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v67 = objc_opt_class();
  v68 = objc_opt_class();
  v69 = NSStringFromClass(v68);
  [v66 registerClass:v67 forCellWithReuseIdentifier:v69];

  v70 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v71 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v70 addSubview:v71];

  v72 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v73 = [v72 contentLayoutGuide];
  v74 = [v73 topAnchor];
  v75 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  v76 = [v75 topAnchor];
  v77 = [v74 constraintEqualToAnchor:v76 constant:-20.0];
  [v77 setActive:1];

  v78 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v79 = [v78 contentLayoutGuide];
  v80 = [v79 leadingAnchor];
  v81 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  v82 = [v81 leadingAnchor];
  v83 = [v80 constraintEqualToAnchor:v82 constant:-20.0];
  [v83 setActive:1];

  v84 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v85 = [v84 contentLayoutGuide];
  v86 = [v85 trailingAnchor];
  v87 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  v88 = [v87 trailingAnchor];
  v89 = [v86 constraintEqualToAnchor:v88 constant:20.0];
  [v89 setActive:1];

  v90 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  v91 = [v90 bottomAnchor];
  v92 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v93 = [v92 topAnchor];
  v94 = [v91 constraintEqualToAnchor:v93 constant:-20.0];
  [v94 setActive:1];

  v95 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v96 = [v95 contentLayoutGuide];
  v97 = [v96 leadingAnchor];
  v98 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v99 = [v98 leadingAnchor];
  v100 = [v97 constraintEqualToAnchor:v99 constant:-20.0];
  [v100 setActive:1];

  v101 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v102 = [v101 contentLayoutGuide];
  v103 = [v102 trailingAnchor];
  v104 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v105 = [v104 trailingAnchor];
  v106 = [v103 constraintEqualToAnchor:v105 constant:20.0];
  [v106 setActive:1];

  v107 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v108 = [v107 contentLayoutGuide];
  v109 = [v108 bottomAnchor];
  v110 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v111 = [v110 bottomAnchor];
  v112 = [v109 constraintEqualToAnchor:v111 constant:20.0];
  [v112 setActive:1];

  v113 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v114 = [v113 frameLayoutGuide];
  v115 = [v114 widthAnchor];
  v116 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v117 = [v116 widthAnchor];
  v118 = [v115 constraintEqualToAnchor:v117 constant:-40.0];
  [v118 setActive:1];

  v119 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v120 = [v119 contentLayoutGuide];
  v121 = [v120 widthAnchor];
  v122 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  v123 = [v122 frameLayoutGuide];
  v124 = [v123 widthAnchor];
  v125 = [v121 constraintEqualToAnchor:v124 constant:-40.0];
  [v125 setActive:1];

  v126 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v127 = [v126 frameLayoutGuide];
  v128 = [v127 centerXAnchor];
  v129 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v130 = [v129 contentLayoutGuide];
  v131 = [v130 centerXAnchor];
  v132 = [v128 constraintEqualToAnchor:v131];
  [v132 setActive:1];

  v133 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v134 = [v133 heightAnchor];
  v135 = [v134 constraintEqualToConstant:0.0];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setCollectionViewHeightConstraint:v135];

  v136 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionViewHeightConstraint];
  [v136 setActive:0];

  v137 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v137 setScrollEnabled:0];

  v138 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v138 reloadData];

  [(ICDrawingRegressionTestDataCollectionViewController *)self selectAll];
  [(ICDrawingRegressionTestDataCollectionViewController *)self adjustCollectionViewHeight];
}

- (void)selectAll
{
  if ([(NSArray *)self->_drawings count])
  {
    v3 = 0;
    do
    {
      v4 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
      v5 = [NSIndexPath indexPathForRow:v3 inSection:0];
      [v4 selectItemAtIndexPath:v5 animated:0 scrollPosition:0];

      ++v3;
    }

    while (v3 < [(NSArray *)self->_drawings count]);
  }
}

- (void)adjustCollectionViewHeight
{
  v3 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [v3 setNeedsLayout];

  v4 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [v4 layoutIfNeeded];

  v5 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v5 setNeedsLayout];

  v6 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v6 layoutIfNeeded];

  v7 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [v7 contentSize];
  v9 = v8;

  v10 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionViewHeightConstraint];
  [v10 setConstant:v9];

  v11 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionViewHeightConstraint];
  [v11 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICDrawingRegressionTestDataCollectionViewController;
  [(ICDrawingRegressionTestDataCollectionViewController *)&v3 viewDidLayoutSubviews];
  [(ICDrawingRegressionTestDataCollectionViewController *)self adjustCollectionViewHeight];
}

- (void)openURL:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)sendRadarButtonTapped:(id)a3
{
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  v6 = NSTemporaryDirectory();
  v7 = [NSURL fileURLWithPath:v6];
  v8 = [v7 URLByAppendingPathComponent:v5 isDirectory:1];

  v9 = objc_alloc_init(NSFileManager);
  v10 = 0;
  if ([v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v10])
  {
    [(ICDrawingRegressionTestDataCollectionViewController *)self openTapToRadarWithTempDirectoryURL:v8];
    [(ICDrawingRegressionTestDataCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)openTapToRadarWithTempDirectoryURL:(id)a3
{
  v31 = [(ICDrawingRegressionTestDataCollectionViewController *)self saveDataForDrawingsBaseURL:a3];
  v3 = objc_alloc_init(NSURLComponents);
  [v3 setScheme:@"tap-to-radar"];
  [v3 setHost:@"new"];
  v4 = +[NSMutableArray array];
  v5 = [[NSURLQueryItem alloc] initWithName:@"ComponentName" value:@"PencilKit"];
  [v4 addObject:v5];

  v6 = [[NSURLQueryItem alloc] initWithName:@"ComponentVersion" value:@"all"];
  [v4 addObject:v6];

  v7 = [[NSURLQueryItem alloc] initWithName:@"ComponentID" value:@"808171"];
  [v4 addObject:v7];

  v8 = [[NSURLQueryItem alloc] initWithName:@"AutoDiagnostics" value:@"0"];
  [v4 addObject:v8];

  v9 = +[NSProcessInfo processInfo];
  v10 = [v9 operatingSystemVersionString];

  v29 = v10;
  v11 = [NSString stringWithFormat:@"Regression Test Data: %@", v10];
  v12 = [[NSURLQueryItem alloc] initWithName:@"Title" value:v11];
  [v4 addObject:v12];

  v13 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:@"Other Bug"];
  [v4 addObject:v13];

  v14 = [[NSURLQueryItem alloc] initWithName:@"Reproducibility" value:@"Not Applicable"];
  [v4 addObject:v14];

  v15 = [[NSURLQueryItem alloc] initWithName:@"Description" value:@"Fullscreen drawing regression test data and images. Please note that your submission may contain erased strokes which are no longer visible."];
  [v4 addObject:v15];

  v16 = +[NSMutableArray array];
  v17 = +[NSMutableArray array];
  if ([v31 count])
  {
    v18 = 0;
    do
    {
      v19 = [v31 objectAtIndexedSubscript:v18];
      v20 = [v19 path];

      v21 = [v20 pathExtension];
      v22 = [v21 compare:@"png" options:1];

      if (v22)
      {
        v23 = v16;
      }

      else
      {
        v23 = v17;
      }

      [v23 addObject:v20];

      ++v18;
    }

    while ([v31 count] > v18);
  }

  if ([v17 count])
  {
    v24 = [v17 componentsJoinedByString:{@", "}];
    v25 = [[NSURLQueryItem alloc] initWithName:@"Screenshot" value:v24];
    [v4 addObject:v25];
  }

  if ([v16 count])
  {
    v26 = [v16 componentsJoinedByString:{@", "}];
    v27 = [[NSURLQueryItem alloc] initWithName:@"Attachments" value:v26];
    [v4 addObject:v27];
  }

  [v3 setQueryItems:v4];
  v28 = [v3 URL];
  [(ICDrawingRegressionTestDataCollectionViewController *)self openURL:v28];
}

- (id)saveDataForDrawingsBaseURL:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];

  obj = v7;
  v23 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v29 + 1) + 8 * i) item];
        v10 = [(ICDrawingRegressionTestDataCollectionViewController *)self drawings];
        v11 = [v10 objectAtIndexedSubscript:v9];

        v12 = [v11 serializeWithPathData:1];
        v13 = [NSString stringWithFormat:@"/drawing_%d.data", v9];
        v14 = [v4 URLByAppendingPathComponent:v13 isDirectory:0];

        [v12 writeToURL:v14 atomically:1];
        [v5 addObject:v14];
        v15 = [(ICDrawingRegressionTestDataCollectionViewController *)self drawingAttachments];
        v16 = [v15 objectAtIndexedSubscript:v9];

        v17 = [v16 managedObjectContext];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001506C4;
        v24[3] = &unk_100649858;
        v25 = v16;
        v26 = v4;
        v28 = v9;
        v27 = v5;
        v18 = v16;
        [v17 performBlockAndWait:v24];
      }

      v23 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v23);
  }

  v19 = [NSArray arrayWithArray:v5];

  return v19;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = [(ICDrawingRegressionTestDataCollectionViewController *)self navigationItem:a3];
  v4 = [v5 rightBarButtonItem];
  [v4 setEnabled:1];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v9 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView:a3];
  v5 = [v9 indexPathsForSelectedItems];
  v6 = [v5 count] != 0;
  v7 = [(ICDrawingRegressionTestDataCollectionViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:v6];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
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
      for (i = 0; i != v16; i = i + 1)
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

  v19 = [(ICDrawingRegressionTestDataCollectionViewController *)self cellImages];
  v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v21 = [[UIImageView alloc] initWithImage:v20];
  v22 = [v21 layer];
  [v22 setMinificationFilter:kCAFilterTrilinear];

  [v21 setContentMode:1];
  v23 = [v10 contentView];
  [v23 addSubview:v21];

  v24 = [v10 contentView];
  [v24 bounds];
  [v21 setFrame:?];

  v25 = +[UIColor lightGrayColor];
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
  v4 = [(ICDrawingRegressionTestDataCollectionViewController *)self cellImages:a3];
  v5 = [v4 count];

  return v5;
}

@end