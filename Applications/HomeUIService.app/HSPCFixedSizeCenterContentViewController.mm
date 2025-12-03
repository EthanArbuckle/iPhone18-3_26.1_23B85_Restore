@interface HSPCFixedSizeCenterContentViewController
- (CGSize)contentSize;
- (HSPCFixedSizeCenterContentViewController)initWithCenterContentView:(id)view size:(CGSize)size pinSides:(BOOL)sides;
- (void)viewDidLoad;
@end

@implementation HSPCFixedSizeCenterContentViewController

- (HSPCFixedSizeCenterContentViewController)initWithCenterContentView:(id)view size:(CGSize)size pinSides:(BOOL)sides
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = HSPCFixedSizeCenterContentViewController;
  v11 = [(HSPCFixedSizeCenterContentViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_centerContentView, view);
    v12->_contentSize.width = width;
    v12->_contentSize.height = height;
    v12->_pinSides = sides;
  }

  return v12;
}

- (void)viewDidLoad
{
  v42.receiver = self;
  v42.super_class = HSPCFixedSizeCenterContentViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v42 viewDidLoad];
  contentView = [(HSPCFixedSizeCenterContentViewController *)self contentView];
  mainContentGuide = [contentView mainContentGuide];

  centerContentView = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
  [centerContentView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(HSPCFixedSizeCenterContentViewController *)self contentView];
  centerContentView2 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
  [contentView2 addSubview:centerContentView2];

  contentView3 = [(HSPCFixedSizeCenterContentViewController *)self contentView];
  [contentView3 setClipsToBounds:0];

  contentView4 = [(HSPCFixedSizeCenterContentViewController *)self contentView];
  superview = [contentView4 superview];
  [superview setClipsToBounds:0];

  centerContentView3 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
  heightAnchor = [centerContentView3 heightAnchor];
  [(HSPCFixedSizeCenterContentViewController *)self contentSize];
  v13 = [heightAnchor constraintEqualToConstant:v12];
  v45[0] = v13;
  centerContentView4 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
  widthAnchor = [centerContentView4 widthAnchor];
  [(HSPCFixedSizeCenterContentViewController *)self contentSize];
  v16 = [widthAnchor constraintEqualToConstant:?];
  v45[1] = v16;
  v17 = [NSArray arrayWithObjects:v45 count:2];
  [NSLayoutConstraint activateConstraints:v17];

  LODWORD(heightAnchor) = [(HSPCFixedSizeCenterContentViewController *)self pinSides];
  centerContentView5 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
  v40 = centerContentView5;
  if (heightAnchor)
  {
    leadingAnchor = [centerContentView5 leadingAnchor];
    leadingAnchor2 = [mainContentGuide leadingAnchor];
    v39 = leadingAnchor;
    v37 = [leadingAnchor constraintEqualToAnchor:?];
    v44[0] = v37;
    centerContentView6 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
    topAnchor = [centerContentView6 topAnchor];
    topAnchor2 = [mainContentGuide topAnchor];
    v35 = topAnchor;
    v21 = [topAnchor constraintEqualToAnchor:?];
    v44[1] = v21;
    centerContentView7 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
    trailingAnchor = [centerContentView7 trailingAnchor];
    trailingAnchor2 = [mainContentGuide trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v44[2] = v25;
    centerContentView8 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
    bottomAnchor = [centerContentView8 bottomAnchor];
    bottomAnchor2 = [mainContentGuide bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v44[3] = v29;
    v30 = v44;
  }

  else
  {
    centerXAnchor = [centerContentView5 centerXAnchor];
    leadingAnchor2 = [mainContentGuide centerXAnchor];
    v39 = centerXAnchor;
    v37 = [centerXAnchor constraintEqualToAnchor:?];
    v43[0] = v37;
    centerContentView6 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
    centerYAnchor = [centerContentView6 centerYAnchor];
    topAnchor2 = [mainContentGuide centerYAnchor];
    v35 = centerYAnchor;
    v21 = [centerYAnchor constraintEqualToAnchor:?];
    v43[1] = v21;
    centerContentView7 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
    trailingAnchor = [centerContentView7 topAnchor];
    trailingAnchor2 = [mainContentGuide topAnchor];
    v25 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:0.0];
    v43[2] = v25;
    centerContentView8 = [(HSPCFixedSizeCenterContentViewController *)self centerContentView];
    bottomAnchor = [centerContentView8 bottomAnchor];
    bottomAnchor2 = [mainContentGuide bottomAnchor];
    v29 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:0.0];
    v43[3] = v29;
    v30 = v43;
  }

  v33 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v33];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end