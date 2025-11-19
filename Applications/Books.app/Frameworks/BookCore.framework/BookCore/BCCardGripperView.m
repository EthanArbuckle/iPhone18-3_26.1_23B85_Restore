@interface BCCardGripperView
+ (BCCardGripperView)cardGripperViewWithStyle:(int64_t)a3;
+ (id)_buttonImageForStyle:(int64_t)a3;
- (BCCardGripperView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (BCCardGripperViewAccessibilityDelegate)accessibilityDelegate;
- (BOOL)accessibilityActivate;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)imageSize;
- (UIViewController)menuViewController;
- (id)_accessibilityParentForFindingScrollParent;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)accessibilityTraits;
@end

@implementation BCCardGripperView

+ (BCCardGripperView)cardGripperViewWithStyle:(int64_t)a3
{
  v3 = [[BCCardGripperView alloc] initWithFrame:a3 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v3;
}

+ (id)_buttonImageForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:12.0];
    v4 = @"xmark";
    goto LABEL_5;
  }

  if (!a3)
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

- (BCCardGripperView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v28.receiver = self;
  v28.super_class = BCCardGripperView;
  v5 = [(BCCardGripperView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [objc_opt_class() _buttonImageForStyle:a4];
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
    v26 = [(BCCardGripperView *)v5 widthAnchor];
    v25 = [(UIView *)v5->_button widthAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v29[0] = v24;
    v23 = [(BCCardGripperView *)v5 heightAnchor];
    v12 = [(UIView *)v5->_button heightAnchor];
    v13 = [v23 constraintEqualToAnchor:v12];
    v29[1] = v13;
    v14 = [(UIView *)v5->_button centerXAnchor];
    v15 = [(BCCardGripperView *)v5 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v29[2] = v16;
    v17 = [(UIView *)v5->_button centerYAnchor];
    v18 = [(BCCardGripperView *)v5 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v29[3] = v19;
    v20 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v20];

    v21 = [[UIPointerInteraction alloc] initWithDelegate:v5];
    [(BCCardGripperView *)v5 addInteraction:v21];
  }

  return v5;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(BCCardGripperView *)self _accessibilityAncestorIsKindOf:NSClassFromString(@"BCCardSetWideTouchScrollView")];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = BCCardGripperView;
    v3 = [(BCCardGripperView *)&v5 _accessibilityParentForFindingScrollParent];
  }

  return v3;
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
  v3 = [(BCCardGripperView *)self accessibilityDelegate];
  [v3 accessibilityDidActivateGripperView:self];

  return 1;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [(BCCardGripperView *)self bounds:a3];

  return [UIPointerRegion regionWithRect:0 identifier:?];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  [(BCCardGripperView *)self bounds:a3];
  v7 = fmax(v5, v6);
  v8 = [UIBezierPath bezierPathWithOvalInRect:(v5 - v7) * 0.5, (v6 - v7) * 0.5, v7, v7];
  v9 = [UIPointerShape shapeWithPath:v8];

  v10 = [[UITargetedPreview alloc] initWithView:self];
  v11 = [UIPointerLiftEffect effectWithPreview:v10];
  v12 = [UIPointerStyle styleWithEffect:v11 shape:v9];

  return v12;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11898;
  v7[3] = &unk_2C80D8;
  v7[4] = self;
  v4 = [(BCCardGripperView *)self actionProvider];
  v5 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v7 actionProvider:v4];

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