@interface AVTColorLayerProvider
- (id)providerForColorIntoLayer;
- (id)providerForGradientFromColor;
- (void)renderColorGradientForModelColor:(id)a3 skinColor:(id)a4 handler:(id)a5;
@end

@implementation AVTColorLayerProvider

- (id)providerForColorIntoLayer
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AVTColorLayerProvider_providerForColorIntoLayer__block_invoke;
  v4[3] = &unk_1E7F3CF08;
  v4[4] = self;
  v2 = [v4 copy];

  return v2;
}

- (id)providerForGradientFromColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVTColorLayerProvider_providerForGradientFromColor__block_invoke;
  v4[3] = &unk_1E7F3CF30;
  v4[4] = self;
  v2 = [v4 copy];

  return v2;
}

- (void)renderColorGradientForModelColor:(id)a3 skinColor:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v17 = [v9 baseColorPreset];
  [v9 rangeMin];
  v11 = v10;
  [v9 rangeMax];
  v13 = v12;

  LODWORD(v14) = v11;
  LODWORD(v15) = v13;
  v16 = [v17 gradientLayerWithRangeMin:v8 max:v14 withSkinColor:v15];

  v7[2](v7, v16);
}

@end