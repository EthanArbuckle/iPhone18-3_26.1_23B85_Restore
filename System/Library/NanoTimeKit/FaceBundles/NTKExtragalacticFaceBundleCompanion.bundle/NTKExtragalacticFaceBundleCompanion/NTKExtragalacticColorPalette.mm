@interface NTKExtragalacticColorPalette
- (NTKExtragalacticColorPalette)init;
@end

@implementation NTKExtragalacticColorPalette

- (NTKExtragalacticColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKExtragalacticColorPalette;
  return [(NTKFaceColorPalette *)&v5 initWithFaceClass:v3];
}

@end