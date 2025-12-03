@interface UICollectionViewCell
- (BOOL)maps_suppressBackgroundColors;
- (void)_maps_setCollectionViewCellBackgroundConfiguration;
- (void)setMaps_suppressBackgroundColors:(BOOL)colors;
@end

@implementation UICollectionViewCell

- (void)_maps_setCollectionViewCellBackgroundConfiguration
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005FE2D8;
  v3[3] = &unk_1016618D8;
  objc_copyWeak(&v4, &location);
  [(UICollectionViewCell *)self _setBackgroundViewConfigurationProvider:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (BOOL)maps_suppressBackgroundColors
{
  v2 = objc_getAssociatedObject(self, &unk_10195D078);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMaps_suppressBackgroundColors:(BOOL)colors
{
  v4 = [NSNumber numberWithBool:colors];
  objc_setAssociatedObject(self, &unk_10195D078, v4, 1);

  [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
}

@end