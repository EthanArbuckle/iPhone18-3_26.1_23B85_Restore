@interface NTKVivaldiFaceColorPalette
- (id)_numeralsShadow;
@end

@implementation NTKVivaldiFaceColorPalette

- (id)_numeralsShadow
{
  v2 = [(NTKVivaldiFaceColorPalette *)self background];
  v3 = NTKColorByBrightening();

  return v3;
}

@end