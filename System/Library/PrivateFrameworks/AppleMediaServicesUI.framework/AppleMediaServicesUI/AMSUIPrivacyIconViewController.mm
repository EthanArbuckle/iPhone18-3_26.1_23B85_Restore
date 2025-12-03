@interface AMSUIPrivacyIconViewController
- (AMSUIPrivacyIconViewController)initWithImage:(id)image;
- (CGSize)preferredContentSize;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIPrivacyIconViewController

- (AMSUIPrivacyIconViewController)initWithImage:(id)image
{
  imageCopy = image;
  v10.receiver = self;
  v10.super_class = AMSUIPrivacyIconViewController;
  v5 = [(AMSUIPrivacyIconViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [imageCopy imageWithRenderingMode:2];
    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    imageView = v5->_imageView;
    v5->_imageView = v7;
  }

  return v5;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AMSUIPrivacyIconViewController;
  [(AMSUIPrivacyIconViewController *)&v6 viewDidLoad];
  imageView = [(AMSUIPrivacyIconViewController *)self imageView];
  [imageView setContentMode:1];

  view = [(AMSUIPrivacyIconViewController *)self view];
  imageView2 = [(AMSUIPrivacyIconViewController *)self imageView];
  [view addSubview:imageView2];
}

- (void)viewWillLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = AMSUIPrivacyIconViewController;
  [(AMSUIPrivacyIconViewController *)&v18 viewWillLayoutSubviews];
  view = [(AMSUIPrivacyIconViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  imageView = [(AMSUIPrivacyIconViewController *)self imageView];
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  [imageView sizeThatFits:{CGRectGetWidth(v19) + -44.0, 38.0}];
  v14 = v13;

  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v15 = CGRectGetMidX(v20) + v14 * -0.5;
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  v16 = CGRectGetMinY(v21) + 22.0;
  imageView2 = [(AMSUIPrivacyIconViewController *)self imageView];
  [imageView2 setFrame:{v15, v16, v14, 38.0}];
}

- (CGSize)preferredContentSize
{
  view = [(AMSUIPrivacyIconViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  imageView = [(AMSUIPrivacyIconViewController *)self imageView];
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  [imageView sizeThatFits:{CGRectGetWidth(v18) + -44.0, 38.0}];
  v14 = v13;

  v15 = v14 + 44.0;
  v16 = 60.0;
  result.height = v16;
  result.width = v15;
  return result;
}

@end