@interface ARQLInlineTouch(ARQLInlineTouch_ASVTouch)
- (float64_t)location;
- (float64_t)previousLocation;
@end

@implementation ARQLInlineTouch(ARQLInlineTouch_ASVTouch)

- (float64_t)location
{
  [self cgLocation];

  return pointToFloat2(v1, v2);
}

- (float64_t)previousLocation
{
  [self cgPreviousLocation];

  return pointToFloat2(v1, v2);
}

@end