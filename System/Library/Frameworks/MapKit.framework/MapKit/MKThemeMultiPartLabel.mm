@interface MKThemeMultiPartLabel
- (void)infoCardThemeChanged;
- (void)set_mapkit_themeColorProvider:(id)provider;
- (void)willMoveToWindow:(id)window;
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
    mk_theme = [(UIView *)self mk_theme];
    v5 = mapkit_themeColorProvider[2](mapkit_themeColorProvider, mk_theme);
    [(MKMultiPartLabel *)self setTextColor:v5];
  }
}

- (void)set_mapkit_themeColorProvider:(id)provider
{
  v4 = [provider copy];
  mapkit_themeColorProvider = self->__mapkit_themeColorProvider;
  self->__mapkit_themeColorProvider = v4;

  if (self->__mapkit_themeColorProvider)
  {

    [(MKThemeMultiPartLabel *)self infoCardThemeChanged];
  }
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = MKThemeMultiPartLabel;
  [(MKThemeMultiPartLabel *)&v4 willMoveToWindow:window];
  if (self->__mapkit_themeColorProvider)
  {
    [(MKThemeMultiPartLabel *)self infoCardThemeChanged];
  }
}

@end