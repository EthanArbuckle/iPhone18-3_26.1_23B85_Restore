@interface GAXStyleProvider_Phone
- (UIEdgeInsets)hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:(int64_t)a3;
- (UIOffset)featureViewToggleOffset;
@end

@implementation GAXStyleProvider_Phone

- (UIEdgeInsets)hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:(int64_t)a3
{
  v3 = 17.0;
  v4 = 0.0;
  v5 = 17.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIOffset)featureViewToggleOffset
{
  v2 = -2.0;
  v3 = 0.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

@end