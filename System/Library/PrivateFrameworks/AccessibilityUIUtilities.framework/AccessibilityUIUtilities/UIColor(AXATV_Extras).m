@interface UIColor(AXATV_Extras)
- (double)_atvaccessibilityAlphaComponent;
@end

@implementation UIColor(AXATV_Extras)

- (double)_atvaccessibilityAlphaComponent
{
  v3 = 1.0;
  if (([a1 getWhite:0 alpha:&v3] & 1) == 0 && (objc_msgSend(a1, "getHue:saturation:brightness:alpha:", 0, 0, 0, &v3) & 1) == 0)
  {
    [a1 getRed:0 green:0 blue:0 alpha:&v3];
  }

  return v3;
}

@end