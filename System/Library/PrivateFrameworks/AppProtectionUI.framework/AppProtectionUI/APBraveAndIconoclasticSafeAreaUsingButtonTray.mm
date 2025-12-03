@interface APBraveAndIconoclasticSafeAreaUsingButtonTray
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
@end

@implementation APBraveAndIconoclasticSafeAreaUsingButtonTray

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for APBraveAndIconoclasticSafeAreaUsingButtonTray();
  v2 = v13.receiver;
  [(APBraveAndIconoclasticSafeAreaUsingButtonTray *)&v13 layoutSubviews];
  [v2 layoutMargins];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_stack];
  [v2 bounds];
  [v7 setFrame_];
  v12 = *&v2[OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_background];
  [v2 bounds];
  [v12 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(APBraveAndIconoclasticSafeAreaUsingButtonTray *)self systemLayoutSizeFittingSize:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  [(APBraveAndIconoclasticSafeAreaUsingButtonTray *)selfCopy layoutMargins];
  UIEdgeInsetsInsetRect(0.0, 0.0, width, height, v10, v11);
  v13 = v12;
  v15 = v14;
  *&v12 = priority;
  *&v14 = fittingPriority;
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI45APBraveAndIconoclasticSafeAreaUsingButtonTray_stack) systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:v15 verticalFittingPriority:{v12, v14}];

  v16 = CGPointMake(width);
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(APBraveAndIconoclasticSafeAreaUsingButtonTray *)selfCopy bounds];
  [(APBraveAndIconoclasticSafeAreaUsingButtonTray *)selfCopy sizeThatFits:CGPointMake(v3)];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end