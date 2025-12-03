@interface UIButton
+ (id)_maps_cardButtonCloseButton;
+ (id)_maps_cardButtonMacCustomButtonWithSystemImageNamed:(id)named;
- (BOOL)isTextTruncated;
- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)leading;
@end

@implementation UIButton

- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)leading
{
  leadingCopy = leading;
  titleLabel = [(UIButton *)self titleLabel];
  LOBYTE(leadingCopy) = [titleLabel isTextTruncatedIgnoringLeading:leadingCopy];

  return leadingCopy;
}

- (BOOL)isTextTruncated
{
  titleLabel = [(UIButton *)self titleLabel];
  isTextTruncated = [titleLabel isTextTruncated];

  return isTextTruncated;
}

+ (id)_maps_cardButtonMacCustomButtonWithSystemImageNamed:(id)named
{
  namedCopy = named;
  v4 = [UIButton buttonWithType:0];
  if (_UISolariumEnabled())
  {
    v5 = 28.0;
  }

  else
  {
    v5 = 24.0;
  }

  widthAnchor = [v4 widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:v5];
  v16[0] = v7;
  heightAnchor = [v4 heightAnchor];
  widthAnchor2 = [v4 widthAnchor];
  v10 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v16[1] = v10;
  v11 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v11];

  v12 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:v5];
  v13 = [UIImage systemImageNamed:namedCopy withConfiguration:v12];

  v14 = [v13 imageWithRenderingMode:2];

  [v4 setImage:v14 forState:0];

  return v4;
}

+ (id)_maps_cardButtonCloseButton
{
  if (_UISolariumEnabled())
  {
    v2 = +[UIButtonConfiguration _glassButtonConfiguration];
    v3 = [UIButton buttonWithConfiguration:v2 primaryAction:0];

    widthAnchor = [v3 widthAnchor];
    v5 = [widthAnchor constraintEqualToConstant:44.0];
    v13[0] = v5;
    heightAnchor = [v3 heightAnchor];
    widthAnchor2 = [v3 widthAnchor];
    v8 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v13[1] = v8;
    v9 = [NSArray arrayWithObjects:v13 count:2];
    [NSLayoutConstraint activateConstraints:v9];

    v10 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:18.0];
    v11 = [UIImage systemImageNamed:@"xmark" withConfiguration:v10];

    [v3 setImage:v11 forState:0];
  }

  else
  {
    v3 = [UIButton buttonWithType:7];
  }

  return v3;
}

@end