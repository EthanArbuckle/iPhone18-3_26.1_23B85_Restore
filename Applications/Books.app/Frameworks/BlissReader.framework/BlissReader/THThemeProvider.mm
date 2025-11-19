@interface THThemeProvider
- (THThemeProvider)init;
- (void)dealloc;
@end

@implementation THThemeProvider

- (THThemeProvider)init
{
  v5.receiver = self;
  v5.super_class = THThemeProvider;
  v2 = [(THThemeProvider *)&v5 init];
  if (v2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = xmmword_34AAE0;
    v9 = unk_34AAF0;
    v2->_backgroundColor = CGColorCreate(DeviceRGB, components);
    *v6 = xmmword_34AB00;
    v7 = unk_34AB10;
    v2->_textColor = CGColorCreate(DeviceRGB, v6);
    CGColorSpaceRelease(DeviceRGB);
  }

  return v2;
}

- (void)dealloc
{
  CGColorRelease(self->_backgroundColor);
  CGColorRelease(self->_textColor);
  v3.receiver = self;
  v3.super_class = THThemeProvider;
  [(THThemeProvider *)&v3 dealloc];
}

@end