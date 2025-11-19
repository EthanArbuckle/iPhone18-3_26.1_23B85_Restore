@interface ARParentTechnique
- (BOOL)vioThrottled;
- (BOOL)vlfLocalized;
- (void)setVioThrottled:(BOOL)a3;
@end

@implementation ARParentTechnique

- (BOOL)vlfLocalized
{
  v2 = [(ARParentTechnique *)self vlfLocation];
  v3 = v2 != 0;

  return v3;
}

- (void)setVioThrottled:(BOOL)a3
{
  v4 = off_101932C40;
  v5 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, v4, v5, 3);
}

- (BOOL)vioThrottled
{
  v2 = objc_getAssociatedObject(self, off_101932C40);
  v3 = [v2 BOOLValue];

  return v3;
}

@end