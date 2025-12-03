@interface ARParentTechnique
- (BOOL)vioThrottled;
- (BOOL)vlfLocalized;
- (void)setVioThrottled:(BOOL)throttled;
@end

@implementation ARParentTechnique

- (BOOL)vlfLocalized
{
  vlfLocation = [(ARParentTechnique *)self vlfLocation];
  v3 = vlfLocation != 0;

  return v3;
}

- (void)setVioThrottled:(BOOL)throttled
{
  v4 = off_101932C40;
  v5 = [NSNumber numberWithBool:throttled];
  objc_setAssociatedObject(self, v4, v5, 3);
}

- (BOOL)vioThrottled
{
  v2 = objc_getAssociatedObject(self, off_101932C40);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end