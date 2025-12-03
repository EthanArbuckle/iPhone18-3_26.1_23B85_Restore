@interface PKRecognitionDrawingPreviewViewController
- (PKRecognitionDrawingPreviewViewController)initWithDrawingImage:(id)image;
- (void)centerImageView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKRecognitionDrawingPreviewViewController

- (PKRecognitionDrawingPreviewViewController)initWithDrawingImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = PKRecognitionDrawingPreviewViewController;
  v5 = [(PKRecognitionDrawingPreviewViewController *)&v8 init];
  drawingImage = v5->_drawingImage;
  v5->_drawingImage = imageCopy;

  return v5;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PKRecognitionDrawingPreviewViewController;
  [(PKRecognitionDrawingPreviewViewController *)&v21 viewDidLoad];
  v3 = _PencilKitBundle();
  v4 = [v3 localizedStringForKey:@"Drawing Preview" value:@"Drawing Preview" table:@"Localizable"];
  [(PKRecognitionDrawingPreviewViewController *)self setTitle:v4];

  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  view = [(PKRecognitionDrawingPreviewViewController *)self view];
  [view setBackgroundColor:lightGrayColor];

  v7 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(PKRecognitionDrawingPreviewViewController *)self setScrollView:v8];

  scrollView = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView setMinimumZoomScale:0.25];

  scrollView2 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView2 setMaximumZoomScale:3.0];

  scrollView3 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView3 setDelegate:self];

  view2 = [(PKRecognitionDrawingPreviewViewController *)self view];
  scrollView4 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [view2 addSubview:scrollView4];

  v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
  drawingImage = [(PKRecognitionDrawingPreviewViewController *)self drawingImage];
  v16 = [v14 initWithImage:drawingImage];
  [(PKRecognitionDrawingPreviewViewController *)self setImageView:v16];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  imageView = [(PKRecognitionDrawingPreviewViewController *)self imageView];
  [imageView setBackgroundColor:whiteColor];

  scrollView5 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  imageView2 = [(PKRecognitionDrawingPreviewViewController *)self imageView];
  [scrollView5 addSubview:imageView2];
}

- (void)viewDidLayoutSubviews
{
  view = [(PKRecognitionDrawingPreviewViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(PKRecognitionDrawingPreviewViewController *)self view];
  [view2 safeAreaInsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);

  scrollView = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView frame];
  v42.origin.x = v22;
  v42.origin.y = v23;
  v42.size.width = v24;
  v42.size.height = v25;
  v39.origin.x = v14;
  v39.origin.y = v16;
  v39.size.width = v18;
  v39.size.height = v20;
  LOBYTE(view2) = CGRectEqualToRect(v39, v42);

  if ((view2 & 1) == 0)
  {
    scrollView2 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
    [scrollView2 setFrame:{v14, v16, v18, v20}];

    imageView = [(PKRecognitionDrawingPreviewViewController *)self imageView];
    [imageView bounds];
    v29 = v28;
    v31 = v30;
    scrollView3 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
    [scrollView3 setContentSize:{v29, v31}];

    scrollView4 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
    [scrollView4 bounds];
    Width = CGRectGetWidth(v40);
    imageView2 = [(PKRecognitionDrawingPreviewViewController *)self imageView];
    [imageView2 bounds];
    v36 = Width / CGRectGetWidth(v41);
    scrollView5 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
    [scrollView5 setZoomScale:v36];

    [(PKRecognitionDrawingPreviewViewController *)self centerImageView];
  }
}

- (void)centerImageView
{
  scrollView = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  scrollView2 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView2 contentSize];
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

  scrollView3 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView3 bounds];
  v13 = v12;
  scrollView4 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView4 contentSize];
  v16 = (v13 - v15) * 0.5;

  if (v16 >= 0.0)
  {
    v9 = v16;
  }

  scrollView5 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView5 contentSize];
  v18 = v10 + v17 * 0.5;
  scrollView6 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [scrollView6 contentSize];
  v21 = v9 + v20 * 0.5;
  imageView = [(PKRecognitionDrawingPreviewViewController *)self imageView];
  [imageView setCenter:{v18, v21}];
}

@end