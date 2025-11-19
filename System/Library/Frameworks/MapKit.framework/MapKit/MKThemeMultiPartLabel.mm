@interface MKThemeMultiPartLabel
- (void)infoCardThemeChanged;
- (void)set_mapkit_themeColorProvider:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation MKThemeMultiPartLabel

- (void)infoCardThemeChanged
{
  v6.receiver = self;
  v6.super_class = MKThemeMultiPartLabel;
  [(UIView *)&v6 infoCardThemeChanged];
  mapkit_themeColorProvider = self->__mapkit_themeColorProvider;
  if (mapkit_themeColorProvider)
  {
    v4 = [(UIView *)self mk_theme];
    v5 = mapkit_themeColorProvider[2](mapkit_themeColorProvider, v4);
    [(MKMultiPartLabel *)self setTextColor:v5];
  }
}

- (void)set_mapkit_themeColorProvider:(id)a3
{
  v4 = [a3 copy];
  mapkit_themeColorProvider = self->__mapkit_themeColorProvider;
  self->__mapkit_themeColorProvider = v4;

  if (self->__mapkit_themeColorProvider)
  {

    [(MKThemeMultiPartLabel *)self infoCardThemeChanged];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = MKThemeMultiPartLabel;
  [(MKThemeMultiPartLabel *)&v4 willMoveToWindow:a3];
  if (self->__mapkit_themeColorProvider)
  {
    [(MKThemeMultiPartLabel *)self infoCardThemeChanged];
  }
}

@end