@interface AVTColorLayerProvider
- (id)providerForColorIntoLayer;
- (id)providerForGradientFromColor;
- (void)renderColorGradientForModelColor:(id)color skinColor:(id)skinColor handler:(id)handler;
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

- (void)renderColorGradientForModelColor:(id)color skinColor:(id)skinColor handler:(id)handler
{
  handlerCopy = handler;
  skinColorCopy = skinColor;
  colorCopy = color;
  baseColorPreset = [colorCopy baseColorPreset];
  [colorCopy rangeMin];
  v11 = v10;
  [colorCopy rangeMax];
  v13 = v12;

  LODWORD(v14) = v11;
  LODWORD(v15) = v13;
  v16 = [baseColorPreset gradientLayerWithRangeMin:skinColorCopy max:v14 withSkinColor:v15];

  handlerCopy[2](handlerCopy, v16);
}

@end