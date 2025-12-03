@interface CALayer(AmbientUI)
+ (id)ringLayerWithBlendMode:()AmbientUI cornerRadius:borderWidth:;
@end

@implementation CALayer(AmbientUI)

+ (id)ringLayerWithBlendMode:()AmbientUI cornerRadius:borderWidth:
{
  v7 = MEMORY[0x277CD9ED0];
  v8 = a5;
  layer = [v7 layer];
  [layer setOpacity:0.0];
  [layer setCornerRadius:self];
  [layer setBorderWidth:a2];
  v10 = [MEMORY[0x277CD9EA0] filterWithType:v8];

  [layer setCompositingFilter:v10];

  return layer;
}

@end