@interface UIVisualEffectView(MapKitTheming)
+ (id)photoSmallAttributionVisualEffectView;
@end

@implementation UIVisualEffectView(MapKitTheming)

+ (id)photoSmallAttributionVisualEffectView
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (MapKitIdiomIsMacCatalyst())
  {
    v0 = MEMORY[0x1E69DD290];
    v1 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.370000005];
    v2 = [v0 effectCompositingColor:v1];

    v3 = [MEMORY[0x1E69DC730] effectWithBlurRadius:15.0];
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = MEMORY[0x1E69DD290];
    v12[0] = v2;
    v12[1] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v7 = [v5 effectCombiningEffects:v6];
    v8 = [v4 initWithEffect:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E69DD298]);
    v10 = [MEMORY[0x1E69DC730] effectWithStyle:2];
    v8 = [v9 initWithEffect:v10];
  }

  return v8;
}

@end