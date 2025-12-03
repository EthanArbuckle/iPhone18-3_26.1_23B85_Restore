@interface NSDictionary
- (CGRect)coreImageROIrect;
- (float)imageHeightScale;
- (float)imageWidthScale;
- (int)sanityCheckStatus;
- (void)setCoreImageROIrect:(CGRect)irect;
- (void)setImageHeightScale:(float)scale;
- (void)setImageWidthScale:(float)scale;
- (void)setSanityCheckStatus:(int)status;
@end

@implementation NSDictionary

- (int)sanityCheckStatus
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C858);

  return [AssociatedObject intValue];
}

- (void)setSanityCheckStatus:(int)status
{
  v4 = [NSNumber numberWithInt:*&status];

  objc_setAssociatedObject(self, off_8C858, v4, &dword_0 + 1);
}

- (float)imageWidthScale
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C860);

  [AssociatedObject floatValue];
  return result;
}

- (void)setImageWidthScale:(float)scale
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

- (void)setImageHeightScale:(float)scale
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

- (void)setCoreImageROIrect:(CGRect)irect
{
  v4 = [NSValue valueWithRect:irect.origin.x, irect.origin.y, irect.size.width, irect.size.height];

  objc_setAssociatedObject(self, &off_8C870, v4, &dword_0 + 1);
}

@end