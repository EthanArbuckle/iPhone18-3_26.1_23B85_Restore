@interface NSDictionary
- (CGRect)coreImageROIrect;
- (float)imageHeightScale;
- (float)imageWidthScale;
- (int)sanityCheckStatus;
- (void)setCoreImageROIrect:(CGRect)a3;
- (void)setImageHeightScale:(float)a3;
- (void)setImageWidthScale:(float)a3;
- (void)setSanityCheckStatus:(int)a3;
@end

@implementation NSDictionary

- (int)sanityCheckStatus
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C858);

  return [AssociatedObject intValue];
}

- (void)setSanityCheckStatus:(int)a3
{
  v4 = [NSNumber numberWithInt:*&a3];

  objc_setAssociatedObject(self, off_8C858, v4, &dword_0 + 1);
}

- (float)imageWidthScale
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C860);

  [AssociatedObject floatValue];
  return result;
}

- (void)setImageWidthScale:(float)a3
{
  v4 = [NSNumber numberWithFloat:?];

  objc_setAssociatedObject(self, off_8C860, v4, &dword_0 + 1);
}

- (float)imageHeightScale
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C868);

  [AssociatedObject floatValue];
  return result;
}

- (void)setImageHeightScale:(float)a3
{
  v4 = [NSNumber numberWithFloat:?];

  objc_setAssociatedObject(self, off_8C868, v4, &dword_0 + 1);
}

- (CGRect)coreImageROIrect
{
  AssociatedObject = objc_getAssociatedObject(self, &off_8C870);

  [AssociatedObject rectValue];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setCoreImageROIrect:(CGRect)a3
{
  v4 = [NSValue valueWithRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  objc_setAssociatedObject(self, &off_8C870, v4, &dword_0 + 1);
}

@end