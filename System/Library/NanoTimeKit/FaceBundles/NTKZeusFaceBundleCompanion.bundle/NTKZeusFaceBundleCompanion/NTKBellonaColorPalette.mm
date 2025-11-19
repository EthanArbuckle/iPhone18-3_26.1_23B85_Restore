@interface NTKBellonaColorPalette
- (NTKBellonaColorPalette)init;
@end

@implementation NTKBellonaColorPalette

- (NTKBellonaColorPalette)init
{
  v3 = +[NTKBellonaFace pigmentFaceDomain];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v7.receiver = self;
  v7.super_class = NTKBellonaColorPalette;
  v5 = [(NTKBellonaColorPalette *)&v7 initWithDomainName:v3 inBundle:v4];

  return v5;
}

@end