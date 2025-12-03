@interface MobileCalDayPlaceholderElement
- (CGRect)accessibilityFrame;
@end

@implementation MobileCalDayPlaceholderElement

- (CGRect)accessibilityFrame
{
  _accessibilityParentView = [(MobileCalDayPlaceholderElement *)self _accessibilityParentView];
  v3 = [_accessibilityParentView _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  [v3 _accessibilityContentFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end