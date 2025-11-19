@interface ICDrawingRegressionTestDataCollectionPreviewViewController
- (ICDrawingRegressionTestDataCollectionPreviewViewController)initWithDrawingImage:(id)a3;
- (void)centerImageView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICDrawingRegressionTestDataCollectionPreviewViewController

- (ICDrawingRegressionTestDataCollectionPreviewViewController)initWithDrawingImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICDrawingRegressionTestDataCollectionPreviewViewController;
  v5 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)&v8 init];
  drawingImage = v5->_drawingImage;
  v5->_drawingImage = v4;

  return v5;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = ICDrawingRegressionTestDataCollectionPreviewViewController;
  [(ICDrawingRegressionTestDataCollectionPreviewViewController *)&v20 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Sketch Preview" value:&stru_100661CF0 table:0];
  [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self setTitle:v4];

  v5 = +[UIColor lightGrayColor];
  v6 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self setScrollView:v7];

  v8 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v8 setMinimumZoomScale:0.25];

  v9 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v9 setMaximumZoomScale:3.0];

  v10 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v10 setDelegate:self];

  v11 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self view];
  v12 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v11 addSubview:v12];

  v13 = [UIImageView alloc];
  v14 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self drawingImage];
  v15 = [v13 initWithImage:v14];
  [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self setImageView:v15];

  v16 = +[UIColor whiteColor];
  v17 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self imageView];
  [v17 setBackgroundColor:v16];

  v18 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  v19 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self imageView];
  [v18 addSubview:v19];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self view];
  [v12 safeAreaInsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);

  v21 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v21 frame];
  v42.origin.x = v22;
  v42.origin.y = v23;
  v42.size.width = v24;
  v42.size.height = v25;
  v39.origin.x = v14;
  v39.origin.y = v16;
  v39.size.width = v18;
  v39.size.height = v20;
  LOBYTE(v12) = CGRectEqualToRect(v39, v42);

  if ((v12 & 1) == 0)
  {
    v26 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
    [v26 setFrame:{v14, v16, v18, v20}];

    v27 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self imageView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v32 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
    [v32 setContentSize:{v29, v31}];

    v33 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
    [v33 bounds];
    Width = CGRectGetWidth(v40);
    v35 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self imageView];
    [v35 bounds];
    v36 = Width / CGRectGetWidth(v41);
    v37 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
    [v37 setZoomScale:v36];

    [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self centerImageView];
  }
}

- (void)centerImageView
{
  v3 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;
  v6 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v6 contentSize];
  v8 = (v5 - v7) * 0.5;

  v9 = 0.0;
  if (v8 >= 0.0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v11 bounds];
  v13 = v12;
  v14 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v14 contentSize];
  v16 = (v13 - v15) * 0.5;

  if (v16 >= 0.0)
  {
    v9 = v16;
  }

  v23 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v23 contentSize];
  v18 = v10 + v17 * 0.5;
  v19 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self scrollView];
  [v19 contentSize];
  v21 = v9 + v20 * 0.5;
  v22 = [(ICDrawingRegressionTestDataCollectionPreviewViewController *)self imageView];
  [v22 setCenter:{v18, v21}];
}

@end