@interface BCCardGripperView
+ (BCCardGripperView)cardGripperViewWithStyle:(int64_t)style;
+ (id)_buttonImageForStyle:(int64_t)style;
- (BCCardGripperView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (BCCardGripperViewAccessibilityDelegate)accessibilityDelegate;
- (BOOL)accessibilityActivate;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)imageSize;
- (UIViewController)menuViewController;
- (id)_accessibilityParentForFindingScrollParent;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (unint64_t)accessibilityTraits;
@end

@implementation BCCardGripperView

+ (BCCardGripperView)cardGripperViewWithStyle:(int64_t)style
{
  v3 = [[BCCardGripperView alloc] initWithFrame:style style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v3;
}

+ (id)_buttonImageForStyle:(int64_t)style
{
  if (style == 1)
  {
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:12.0];
    v4 = @"xmark";
    goto LABEL_5;
  }

  if (!style)
  {
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:3 scale:17.0];
    v4 = @"xmark.circle.fill";
LABEL_5:
    v5 = [UIImage systemImageNamed:v4 withConfiguration:v3];
    v6 = +[UIColor tertiaryLabelColor];
    v7 = [v5 imageWithTintColor:v6 renderingMode:1];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BCCardGripperView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v28.receiver = self;
  v28.super_class = BCCardGripperView;
  v5 = [(BCCardGripperView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = [objc_opt_class() _buttonImageForStyle:style];
    v7 = [v6 imageWithAlignmentRectInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    v27 = v7;
    [v7 size];
    v5->_imageSize.width = v8;
    v5->_imageSize.height = v9;
    v10 = [[UIImageView alloc] initWithImage:v7];
    button = v5->_button;
    v5->_button = v10;

    [(BCCardGripperView *)v5 addSubview:v5->_button];
    [(UIView *)v5->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [(BCCardGripperView *)v5 widthAnchor];
    widthAnchor2 = [(UIView *)v5->_button widthAnchor];
    v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v29[0] = v24;
    heightAnchor = [(BCCardGripperView *)v5 heightAnchor];
    heightAnchor2 = [(UIView *)v5->_button heightAnchor];
    v13 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v29[1] = v13;
    centerXAnchor = [(UIView *)v5->_button centerXAnchor];
    centerXAnchor2 = [(BCCardGripperView *)v5 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v29[2] = v16;
    centerYAnchor = [(UIView *)v5->_button centerYAnchor];
    centerYAnchor2 = [(BCCardGripperView *)v5 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v29[3] = v19;
    v20 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v20];

    v21 = [[UIPointerInteraction alloc] initWithDelegate:v5];
    [(BCCardGripperView *)v5 addInteraction:v21];
  }

  return v5;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(BCCardGripperView *)self bounds];
  Width = CGRectGetWidth(v25);
  [(BCCardGripperView *)self imageSize];
  v9 = Width / v8;
  v10 = v9 * -16.0;
  v11 = v9 * -20.0;
  if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  [(BCCardGripperView *)self bounds];
  v14 = v12 + v13;
  v16 = v10 + v15;
  v18 = v17 - (v11 + v10);
  v20 = v19 - (v11 + v10);
  v21 = x;
  v22 = y;

  return CGRectContainsPoint(*&v14, *&v21);
}

- (id)_accessibilityParentForFindingScrollParent
{
  _accessibilityParentForFindingScrollParent = [(BCCardGripperView *)self _accessibilityAncestorIsKindOf:NSClassFromString(@"BCCardSetWideTouchScrollView")];
  if (!_accessibilityParentForFindingScrollParent)
  {
    v5.receiver = self;
    v5.super_class = BCCardGripperView;
    _accessibilityParentForFindingScrollParent = [(BCCardGripperView *)&v5 _accessibilityParentForFindingScrollParent];
  }

  return _accessibilityParentForFindingScrollParent;
}

- (id)accessibilityLabel
{
  v2 = IMCommonCoreBundle();
  v3 = [v2 localizedStringForKey:@"Close" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  return v3;
}

- (id)accessibilityHint
{
  v2 = IMCommonCoreBundle();
  v3 = [v2 localizedStringForKey:@"Double tap to dismiss the popover" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = BCCardGripperView;
  return UIAccessibilityTraitButton | [(BCCardGripperView *)&v3 accessibilityTraits];
}

- (BOOL)accessibilityActivate
{
  accessibilityDelegate = [(BCCardGripperView *)self accessibilityDelegate];
  [accessibilityDelegate accessibilityDidActivateGripperView:self];

  return 1;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [(BCCardGripperView *)self bounds:interaction];

  return [UIPointerRegion regionWithRect:0 identifier:?];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  [(BCCardGripperView *)self bounds:interaction];
  v7 = fmax(v5, v6);
  v8 = [UIBezierPath bezierPathWithOvalInRect:(v5 - v7) * 0.5, (v6 - v7) * 0.5, v7, v7];
  v9 = [UIPointerShape shapeWithPath:v8];

  v10 = [[UITargetedPreview alloc] initWithView:self];
  v11 = [UIPointerLiftEffect effectWithPreview:v10];
  v12 = [UIPointerStyle styleWithEffect:v11 shape:v9];

  return v12;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11898;
  v7[3] = &unk_2C80D8;
  v7[4] = self;
  actionProvider = [(BCCardGripperView *)self actionProvider];
  v5 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v7 actionProvider:actionProvider];

  return v5;
}

- (BCCardGripperViewAccessibilityDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIViewController)menuViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_menuViewController);

  return WeakRetained;
}

@end