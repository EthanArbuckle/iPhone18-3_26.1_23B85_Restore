@interface _MKUILabel
- (void)didMoveToWindow;
- (void)infoCardThemeChanged;
- (void)set_mapkit_themeColorProvider:(id)a3;
@end

@implementation _MKUILabel

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _MKUILabel;
  [(_MKUILabel *)&v3 didMoveToWindow];
  if (self->__mapkit_themeColorProvider)
  {
    [(_MKUILabel *)self infoCardThemeChanged];
  }
}

- (void)infoCardThemeChanged
{
  v6.receiver = self;
  v6.super_class = _MKUILabel;
  [(UIView *)&v6 infoCardThemeChanged];
  mapkit_themeColorProvider = self->__mapkit_themeColorProvider;
  if (mapkit_themeColorProvider)
  {
    v4 = [(UIView *)self mk_theme];
    v5 = mapkit_themeColorProvider[2](mapkit_themeColorProvider, v4);
    [(_MKUILabel *)self setTextColor:v5];
  }
}

- (void)set_mapkit_themeColorProvider:(id)a3
{
  v4 = [a3 copy];
  mapkit_themeColorProvider = self->__mapkit_themeColorProvider;
  self->__mapkit_themeColorProvider = v4;

  if (self->__mapkit_themeColorProvider)
  {

    [(_MKUILabel *)self infoCardThemeChanged];
  }
}

@end