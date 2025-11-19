@interface _MFConversationViewCollectionViewAccessibility
- (CGRect)_accessibilityBoundsOfCellsToLoad;
@end

@implementation _MFConversationViewCollectionViewAccessibility

- (CGRect)_accessibilityBoundsOfCellsToLoad
{
  *&r2.origin.y = self;
  *&r2.size.width = _MFConversationViewCollectionViewAccessibility;
  [(CGFloat *)&r2.origin.y _accessibilityBoundsOfCellsToLoad];
  r2.origin.x = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(_MFConversationViewCollectionViewAccessibility *)self contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(_MFConversationViewCollectionViewAccessibility *)self contentSize];
  v17 = v16;
  v19 = v18;
  v23.size.height = v9 + [(_MFConversationViewCollectionViewAccessibility *)self _axHeightOfCellsToLoad];
  v21.origin.x = -v13;
  v21.origin.y = -v11;
  v21.size.width = v17 - v15;
  v21.size.height = v19 - v13;
  v23.origin.x = r2.origin.x;
  v23.origin.y = v5;
  v23.size.width = v7;
  return CGRectIntersection(v21, v23);
}

@end