@interface DisplayFilterPageImageViewController
- (DisplayFilterPageImageViewController)initWithImageName:(id)name stretchHorizontal:(BOOL)horizontal;
- (UIImage)displayImage;
- (void)loadView;
- (void)setDisplayImage:(id)image;
@end

@implementation DisplayFilterPageImageViewController

- (DisplayFilterPageImageViewController)initWithImageName:(id)name stretchHorizontal:(BOOL)horizontal
{
  horizontalCopy = horizontal;
  v10.receiver = self;
  v10.super_class = DisplayFilterPageImageViewController;
  nameCopy = name;
  v6 = [(DisplayFilterPageImageViewController *)&v10 init];
  [(DisplayFilterPageImageViewController *)v6 setStretchHorizontal:horizontalCopy, v10.receiver, v10.super_class];
  v7 = AXSettingsBundle();
  v8 = [UIImage imageNamed:nameCopy inBundle:v7];

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
  imageView = [(DisplayFilterPageImageViewController *)self imageView];
  [imageView setAccessibilityIgnoresInvertColors:1];

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
  view = [(DisplayFilterPageImageViewController *)self view];
  imageView = [(DisplayFilterPageImageViewController *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setDisplayImage:(id)image
{
  imageCopy = image;
  view = [(DisplayFilterPageImageViewController *)self view];
  imageView = [(DisplayFilterPageImageViewController *)self imageView];
  [imageView setImage:imageCopy];
  [imageCopy size];
  v7 = v6;
  [imageCopy size];
  v9 = v8;

  imageAspectConstraint = [(DisplayFilterPageImageViewController *)self imageAspectConstraint];
  [imageView removeConstraint:imageAspectConstraint];

  v11 = [NSLayoutConstraint constraintWithItem:imageView attribute:8 relatedBy:0 toItem:imageView attribute:7 multiplier:v7 / v9 constant:0.0];
  [(DisplayFilterPageImageViewController *)self setImageAspectConstraint:v11];

  imageAspectConstraint2 = [(DisplayFilterPageImageViewController *)self imageAspectConstraint];
  [imageView addConstraint:imageAspectConstraint2];
}

@end