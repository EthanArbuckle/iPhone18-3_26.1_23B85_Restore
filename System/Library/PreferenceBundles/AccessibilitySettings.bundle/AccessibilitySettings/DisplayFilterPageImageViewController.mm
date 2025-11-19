@interface DisplayFilterPageImageViewController
- (DisplayFilterPageImageViewController)initWithImageName:(id)a3 stretchHorizontal:(BOOL)a4;
- (UIImage)displayImage;
- (void)loadView;
- (void)setDisplayImage:(id)a3;
@end

@implementation DisplayFilterPageImageViewController

- (DisplayFilterPageImageViewController)initWithImageName:(id)a3 stretchHorizontal:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = DisplayFilterPageImageViewController;
  v5 = a3;
  v6 = [(DisplayFilterPageImageViewController *)&v10 init];
  [(DisplayFilterPageImageViewController *)v6 setStretchHorizontal:v4, v10.receiver, v10.super_class];
  v7 = AXSettingsBundle();
  v8 = [UIImage imageNamed:v5 inBundle:v7];

  [(DisplayFilterPageImageViewController *)v6 setDisplayImage:v8];
  return v6;
}

- (void)loadView
{
  v16 = [[UIView alloc] initWithFrame:{0.0, 0.0, 200.0, 200.0}];
  [(DisplayFilterPageImageViewController *)self setView:v16];
  v3 = [UIImageView alloc];
  [v16 bounds];
  v4 = [v3 initWithFrame:?];
  [(DisplayFilterPageImageViewController *)self setImageView:v4];
  v5 = [(DisplayFilterPageImageViewController *)self imageView];
  [v5 setAccessibilityIgnoresInvertColors:1];

  [v16 addSubview:v4];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setIsAccessibilityElement:1];
  v6 = settingsLocString(@"DISPLAY_FILTER_PREVIEW_AX_LABEL", @"Accessibility");
  [v16 setAccessibilityLabel:v6];

  v7 = [NSLayoutConstraint constraintWithItem:v4 attribute:3 relatedBy:0 toItem:v16 attribute:3 multiplier:1.0 constant:0.0];
  [v16 addConstraint:v7];
  if ([(DisplayFilterPageImageViewController *)self stretchHorizontal])
  {
    v8 = [NSLayoutConstraint constraintWithItem:v4 attribute:9 relatedBy:0 toItem:v16 attribute:9 multiplier:1.0 constant:0.0];

    [v16 addConstraint:v8];
    v9 = 1.0;
    v10 = v4;
    v11 = 4;
    v12 = v16;
    v13 = 4;
  }

  else
  {
    v8 = [NSLayoutConstraint constraintWithItem:v4 attribute:5 relatedBy:0 toItem:v16 attribute:5 multiplier:1.0 constant:0.0];

    [v16 addConstraint:v8];
    v9 = 1.0;
    v10 = v4;
    v11 = 6;
    v12 = v16;
    v13 = 6;
  }

  v14 = [NSLayoutConstraint constraintWithItem:v10 attribute:v11 relatedBy:0 toItem:v12 attribute:v13 multiplier:v9 constant:0.0];

  [v16 addConstraint:v14];
  v15 = [NSLayoutConstraint constraintWithItem:v4 attribute:8 relatedBy:0 toItem:v4 attribute:7 multiplier:1.0 constant:0.0];

  [v4 addConstraint:v15];
  [(DisplayFilterPageImageViewController *)self setImageAspectConstraint:v15];
  [v16 setClipsToBounds:1];
}

- (UIImage)displayImage
{
  v3 = [(DisplayFilterPageImageViewController *)self view];
  v4 = [(DisplayFilterPageImageViewController *)self imageView];
  v5 = [v4 image];

  return v5;
}

- (void)setDisplayImage:(id)a3
{
  v4 = a3;
  v5 = [(DisplayFilterPageImageViewController *)self view];
  v13 = [(DisplayFilterPageImageViewController *)self imageView];
  [v13 setImage:v4];
  [v4 size];
  v7 = v6;
  [v4 size];
  v9 = v8;

  v10 = [(DisplayFilterPageImageViewController *)self imageAspectConstraint];
  [v13 removeConstraint:v10];

  v11 = [NSLayoutConstraint constraintWithItem:v13 attribute:8 relatedBy:0 toItem:v13 attribute:7 multiplier:v7 / v9 constant:0.0];
  [(DisplayFilterPageImageViewController *)self setImageAspectConstraint:v11];

  v12 = [(DisplayFilterPageImageViewController *)self imageAspectConstraint];
  [v13 addConstraint:v12];
}

@end