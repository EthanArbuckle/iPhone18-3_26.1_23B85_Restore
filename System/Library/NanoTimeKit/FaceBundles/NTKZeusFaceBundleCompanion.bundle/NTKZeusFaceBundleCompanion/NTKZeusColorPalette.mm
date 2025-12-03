@interface NTKZeusColorPalette
- (NTKZeusColorPalette)init;
@end

@implementation NTKZeusColorPalette

- (NTKZeusColorPalette)init
{
  zeusCollectionName = [objc_opt_class() zeusCollectionName];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v7.receiver = self;
  v7.super_class = NTKZeusColorPalette;
  v5 = [(NTKZeusColorPalette *)&v7 initWithDomainName:zeusCollectionName inBundle:v4];

  return v5;
}

@end