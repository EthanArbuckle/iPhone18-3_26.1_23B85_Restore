@interface PKRecognitionDrawingPreviewViewController
- (PKRecognitionDrawingPreviewViewController)initWithDrawingImage:(id)a3;
- (void)centerImageView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKRecognitionDrawingPreviewViewController

- (PKRecognitionDrawingPreviewViewController)initWithDrawingImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKRecognitionDrawingPreviewViewController;
  v5 = [(PKRecognitionDrawingPreviewViewController *)&v8 init];
  drawingImage = v5->_drawingImage;
  v5->_drawingImage = v4;

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

  v5 = [MEMORY[0x1E69DC888] lightGrayColor];
  v6 = [(PKRecognitionDrawingPreviewViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(PKRecognitionDrawingPreviewViewController *)self setScrollView:v8];

  v9 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v9 setMinimumZoomScale:0.25];

  v10 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v10 setMaximumZoomScale:3.0];

  v11 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v11 setDelegate:self];

  v12 = [(PKRecognitionDrawingPreviewViewController *)self view];
  v13 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v12 addSubview:v13];

  v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v15 = [(PKRecognitionDrawingPreviewViewController *)self drawingImage];
  v16 = [v14 initWithImage:v15];
  [(PKRecognitionDrawingPreviewViewController *)self setImageView:v16];

  v17 = [MEMORY[0x1E69DC888] whiteColor];
  v18 = [(PKRecognitionDrawingPreviewViewController *)self imageView];
  [v18 setBackgroundColor:v17];

  v19 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  v20 = [(PKRecognitionDrawingPreviewViewController *)self imageView];
  [v19 addSubview:v20];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(PKRecognitionDrawingPreviewViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PKRecognitionDrawingPreviewViewController *)self view];
  [v12 safeAreaInsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);

  v21 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
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
    v26 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
    [v26 setFrame:{v14, v16, v18, v20}];

    v27 = [(PKRecognitionDrawingPreviewViewController *)self imageView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v32 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
    [v32 setContentSize:{v29, v31}];

    v33 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
    [v33 bounds];
    Width = CGRectGetWidth(v40);
    v35 = [(PKRecognitionDrawingPreviewViewController *)self imageView];
    [v35 bounds];
    v36 = Width / CGRectGetWidth(v41);
    v37 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
    [v37 setZoomScale:v36];

    [(PKRecognitionDrawingPreviewViewController *)self centerImageView];
  }
}

- (void)centerImageView
{
  v3 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;
  v6 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
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

  v11 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v11 bounds];
  v13 = v12;
  v14 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v14 contentSize];
  v16 = (v13 - v15) * 0.5;

  if (v16 >= 0.0)
  {
    v9 = v16;
  }

  v23 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v23 contentSize];
  v18 = v10 + v17 * 0.5;
  v19 = [(PKRecognitionDrawingPreviewViewController *)self scrollView];
  [v19 contentSize];
  v21 = v9 + v20 * 0.5;
  v22 = [(PKRecognitionDrawingPreviewViewController *)self imageView];
  [v22 setCenter:{v18, v21}];
}

@end