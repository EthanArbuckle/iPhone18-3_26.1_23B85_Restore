@interface ICDrawingRegressionTestDataCollectionViewController
- (ICDrawingRegressionTestDataCollectionViewController)initWithDrawingAttachments:(id)attachments description:(id)description;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)saveDataForDrawingsBaseURL:(id)l;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)adjustCollectionViewHeight;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)openTapToRadarWithTempDirectoryURL:(id)l;
- (void)openURL:(id)l;
- (void)selectAll;
- (void)sendRadarButtonTapped:(id)tapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICDrawingRegressionTestDataCollectionViewController

- (ICDrawingRegressionTestDataCollectionViewController)initWithDrawingAttachments:(id)attachments description:(id)description
{
  attachmentsCopy = attachments;
  descriptionCopy = description;
  v32.receiver = self;
  v32.super_class = ICDrawingRegressionTestDataCollectionViewController;
  v8 = [(ICDrawingRegressionTestDataCollectionViewController *)&v32 init];
  if (v8 && [attachmentsCopy count])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [attachmentsCopy count]);
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [attachmentsCopy count]);
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [attachmentsCopy count]);
    firstObject = [attachmentsCopy firstObject];
    managedObjectContext = [firstObject managedObjectContext];

    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_10014EDB8;
    v27 = &unk_100645DB8;
    v28 = attachmentsCopy;
    v29 = v9;
    v30 = v10;
    v31 = v11;
    v14 = v11;
    v15 = v10;
    v16 = v9;
    [managedObjectContext performBlockAndWait:&v24];
    v17 = [v16 copy];
    drawingAttachments = v8->_drawingAttachments;
    v8->_drawingAttachments = v17;

    v19 = [v15 copy];
    drawings = v8->_drawings;
    v8->_drawings = v19;

    v21 = [v14 copy];
    cellImages = v8->_cellImages;
    v8->_cellImages = v21;

    objc_storeStrong(&v8->_customDescription, description);
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
  view = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  [view setBackgroundColor:v5];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonTapped:"];
  navigationItem = [(ICDrawingRegressionTestDataCollectionViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v7];

  v9 = [UIBarButtonItem alloc];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Submit" value:&stru_100661CF0 table:0];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:"sendRadarButtonTapped:"];
  navigationItem2 = [(ICDrawingRegressionTestDataCollectionViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v12];

  v14 = [UIScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v18 = [v14 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setScrollView:v18];

  scrollView = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [scrollView setAlwaysBounceVertical:1];

  scrollView2 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [scrollView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  scrollView3 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [view2 addSubview:scrollView3];

  scrollView4 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  topAnchor = [scrollView4 topAnchor];
  view3 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v28 setActive:1];

  scrollView5 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  leadingAnchor = [scrollView5 leadingAnchor];
  view4 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v34 setActive:1];

  scrollView6 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  trailingAnchor = [scrollView6 trailingAnchor];
  view5 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v40 setActive:1];

  scrollView7 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  bottomAnchor = [scrollView7 bottomAnchor];
  view6 = [(ICDrawingRegressionTestDataCollectionViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v46 setActive:1];

  v47 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setDescriptionLabel:v47];

  descriptionLabel = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [descriptionLabel setNumberOfLines:0];

  customDescription = [(ICDrawingRegressionTestDataCollectionViewController *)self customDescription];
  descriptionLabel2 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [descriptionLabel2 setText:customDescription];

  v51 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  ic_fontWithSingleLineA = [v51 ic_fontWithSingleLineA];
  descriptionLabel3 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [descriptionLabel3 setFont:ic_fontWithSingleLineA];

  descriptionLabel4 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [descriptionLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView8 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  descriptionLabel5 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  [scrollView8 addSubview:descriptionLabel5];

  v57 = objc_alloc_init(UICollectionViewFlowLayout);
  [v57 setMinimumLineSpacing:20.0];
  [v57 setMinimumInteritemSpacing:20.0];
  [v57 setSectionInset:{0.0, 0.0, 0.0, 0.0}];
  [v57 setItemSize:{240.0, 240.0}];
  v58 = [[UICollectionView alloc] initWithFrame:v57 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setCollectionView:v58];

  collectionView = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  v60 = +[UIColor whiteColor];
  collectionView2 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView2 setBackgroundColor:v60];

  collectionView3 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView3 setDataSource:self];

  collectionView4 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView4 setDelegate:self];

  collectionView5 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView5 setAllowsSelection:1];

  collectionView6 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView6 setAllowsMultipleSelection:1];

  collectionView7 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  v67 = objc_opt_class();
  v68 = objc_opt_class();
  v69 = NSStringFromClass(v68);
  [collectionView7 registerClass:v67 forCellWithReuseIdentifier:v69];

  scrollView9 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  collectionView8 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [scrollView9 addSubview:collectionView8];

  scrollView10 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  contentLayoutGuide = [scrollView10 contentLayoutGuide];
  topAnchor3 = [contentLayoutGuide topAnchor];
  descriptionLabel6 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  topAnchor4 = [descriptionLabel6 topAnchor];
  v77 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-20.0];
  [v77 setActive:1];

  scrollView11 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  contentLayoutGuide2 = [scrollView11 contentLayoutGuide];
  leadingAnchor3 = [contentLayoutGuide2 leadingAnchor];
  descriptionLabel7 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  leadingAnchor4 = [descriptionLabel7 leadingAnchor];
  v83 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-20.0];
  [v83 setActive:1];

  scrollView12 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  contentLayoutGuide3 = [scrollView12 contentLayoutGuide];
  trailingAnchor3 = [contentLayoutGuide3 trailingAnchor];
  descriptionLabel8 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  trailingAnchor4 = [descriptionLabel8 trailingAnchor];
  v89 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:20.0];
  [v89 setActive:1];

  descriptionLabel9 = [(ICDrawingRegressionTestDataCollectionViewController *)self descriptionLabel];
  bottomAnchor3 = [descriptionLabel9 bottomAnchor];
  collectionView9 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  topAnchor5 = [collectionView9 topAnchor];
  v94 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:-20.0];
  [v94 setActive:1];

  scrollView13 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  contentLayoutGuide4 = [scrollView13 contentLayoutGuide];
  leadingAnchor5 = [contentLayoutGuide4 leadingAnchor];
  collectionView10 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  leadingAnchor6 = [collectionView10 leadingAnchor];
  v100 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:-20.0];
  [v100 setActive:1];

  scrollView14 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  contentLayoutGuide5 = [scrollView14 contentLayoutGuide];
  trailingAnchor5 = [contentLayoutGuide5 trailingAnchor];
  collectionView11 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  trailingAnchor6 = [collectionView11 trailingAnchor];
  v106 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:20.0];
  [v106 setActive:1];

  scrollView15 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  contentLayoutGuide6 = [scrollView15 contentLayoutGuide];
  bottomAnchor4 = [contentLayoutGuide6 bottomAnchor];
  collectionView12 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  bottomAnchor5 = [collectionView12 bottomAnchor];
  v112 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:20.0];
  [v112 setActive:1];

  collectionView13 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  frameLayoutGuide = [collectionView13 frameLayoutGuide];
  widthAnchor = [frameLayoutGuide widthAnchor];
  scrollView16 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  widthAnchor2 = [scrollView16 widthAnchor];
  v118 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-40.0];
  [v118 setActive:1];

  collectionView14 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  contentLayoutGuide7 = [collectionView14 contentLayoutGuide];
  widthAnchor3 = [contentLayoutGuide7 widthAnchor];
  scrollView17 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  frameLayoutGuide2 = [scrollView17 frameLayoutGuide];
  widthAnchor4 = [frameLayoutGuide2 widthAnchor];
  v125 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:-40.0];
  [v125 setActive:1];

  collectionView15 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  frameLayoutGuide3 = [collectionView15 frameLayoutGuide];
  centerXAnchor = [frameLayoutGuide3 centerXAnchor];
  collectionView16 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  contentLayoutGuide8 = [collectionView16 contentLayoutGuide];
  centerXAnchor2 = [contentLayoutGuide8 centerXAnchor];
  v132 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v132 setActive:1];

  collectionView17 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  heightAnchor = [collectionView17 heightAnchor];
  v135 = [heightAnchor constraintEqualToConstant:0.0];
  [(ICDrawingRegressionTestDataCollectionViewController *)self setCollectionViewHeightConstraint:v135];

  collectionViewHeightConstraint = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionViewHeightConstraint];
  [collectionViewHeightConstraint setActive:0];

  collectionView18 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView18 setScrollEnabled:0];

  collectionView19 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView19 reloadData];

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
      collectionView = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
      v5 = [NSIndexPath indexPathForRow:v3 inSection:0];
      [collectionView selectItemAtIndexPath:v5 animated:0 scrollPosition:0];

      ++v3;
    }

    while (v3 < [(NSArray *)self->_drawings count]);
  }
}

- (void)adjustCollectionViewHeight
{
  scrollView = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [scrollView setNeedsLayout];

  scrollView2 = [(ICDrawingRegressionTestDataCollectionViewController *)self scrollView];
  [scrollView2 layoutIfNeeded];

  collectionView = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView setNeedsLayout];

  collectionView2 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView2 layoutIfNeeded];

  collectionView3 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  [collectionView3 contentSize];
  v9 = v8;

  collectionViewHeightConstraint = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionViewHeightConstraint];
  [collectionViewHeightConstraint setConstant:v9];

  collectionViewHeightConstraint2 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionViewHeightConstraint];
  [collectionViewHeightConstraint2 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICDrawingRegressionTestDataCollectionViewController;
  [(ICDrawingRegressionTestDataCollectionViewController *)&v3 viewDidLayoutSubviews];
  [(ICDrawingRegressionTestDataCollectionViewController *)self adjustCollectionViewHeight];
}

- (void)openURL:(id)l
{
  lCopy = l;
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:lCopy options:&__NSDictionary0__struct completionHandler:0];
}

- (void)sendRadarButtonTapped:(id)tapped
{
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];

  v6 = NSTemporaryDirectory();
  v7 = [NSURL fileURLWithPath:v6];
  v8 = [v7 URLByAppendingPathComponent:uUIDString isDirectory:1];

  v9 = objc_alloc_init(NSFileManager);
  v10 = 0;
  if ([v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v10])
  {
    [(ICDrawingRegressionTestDataCollectionViewController *)self openTapToRadarWithTempDirectoryURL:v8];
    [(ICDrawingRegressionTestDataCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)openTapToRadarWithTempDirectoryURL:(id)l
{
  v31 = [(ICDrawingRegressionTestDataCollectionViewController *)self saveDataForDrawingsBaseURL:l];
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
  operatingSystemVersionString = [v9 operatingSystemVersionString];

  v29 = operatingSystemVersionString;
  v11 = [NSString stringWithFormat:@"Regression Test Data: %@", operatingSystemVersionString];
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
      path = [v19 path];

      pathExtension = [path pathExtension];
      v22 = [pathExtension compare:@"png" options:1];

      if (v22)
      {
        v23 = v16;
      }

      else
      {
        v23 = v17;
      }

      [v23 addObject:path];

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

- (id)saveDataForDrawingsBaseURL:(id)l
{
  lCopy = l;
  v5 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  collectionView = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  obj = indexPathsForSelectedItems;
  v23 = [indexPathsForSelectedItems countByEnumeratingWithState:&v29 objects:v33 count:16];
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

        item = [*(*(&v29 + 1) + 8 * i) item];
        drawings = [(ICDrawingRegressionTestDataCollectionViewController *)self drawings];
        v11 = [drawings objectAtIndexedSubscript:item];

        v12 = [v11 serializeWithPathData:1];
        v13 = [NSString stringWithFormat:@"/drawing_%d.data", item];
        v14 = [lCopy URLByAppendingPathComponent:v13 isDirectory:0];

        [v12 writeToURL:v14 atomically:1];
        [v5 addObject:v14];
        drawingAttachments = [(ICDrawingRegressionTestDataCollectionViewController *)self drawingAttachments];
        v16 = [drawingAttachments objectAtIndexedSubscript:item];

        managedObjectContext = [v16 managedObjectContext];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001506C4;
        v24[3] = &unk_100649858;
        v25 = v16;
        v26 = lCopy;
        v28 = item;
        v27 = v5;
        v18 = v16;
        [managedObjectContext performBlockAndWait:v24];
      }

      v23 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v23);
  }

  v19 = [NSArray arrayWithArray:v5];

  return v19;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = [(ICDrawingRegressionTestDataCollectionViewController *)self navigationItem:view];
  rightBarButtonItem = [v5 rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v9 = [(ICDrawingRegressionTestDataCollectionViewController *)self collectionView:view];
  indexPathsForSelectedItems = [v9 indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems count] != 0;
  navigationItem = [(ICDrawingRegressionTestDataCollectionViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v6];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
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

  cellImages = [(ICDrawingRegressionTestDataCollectionViewController *)self cellImages];
  v20 = [cellImages objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v21 = [[UIImageView alloc] initWithImage:v20];
  layer = [v21 layer];
  [layer setMinificationFilter:kCAFilterTrilinear];

  [v21 setContentMode:1];
  contentView2 = [v10 contentView];
  [contentView2 addSubview:v21];

  contentView3 = [v10 contentView];
  [contentView3 bounds];
  [v21 setFrame:?];

  v25 = +[UIColor lightGrayColor];
  cGColor = [v25 CGColor];
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
  v4 = [(ICDrawingRegressionTestDataCollectionViewController *)self cellImages:view];
  v5 = [v4 count];

  return v5;
}

@end