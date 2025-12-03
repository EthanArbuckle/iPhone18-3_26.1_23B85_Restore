@interface AVTCoreModelColorVariation
- (AVTCoreModelColorVariation)initWithColor:(id)color colorPreset:(id)preset;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVTCoreModelColorVariation

- (AVTCoreModelColorVariation)initWithColor:(id)color colorPreset:(id)preset
{
  colorCopy = color;
  presetCopy = preset;
  v9 = presetCopy;
  if (!colorCopy || !presetCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Missing color or colorPreset!"];
  }

  v13.receiver = self;
  v13.super_class = AVTCoreModelColorVariation;
  v10 = [(AVTCoreModelColorVariation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_color, color);
    objc_storeStrong(&v11->_colorPreset, preset);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      color = [(AVTCoreModelColorVariation *)self color];
      if (!color)
      {
        color2 = [(AVTCoreModelColorVariation *)equalCopy color];
        if (!color2)
        {
LABEL_7:
          colorPreset = [(AVTCoreModelColorVariation *)self colorPreset];
          if (colorPreset || ([(AVTCoreModelColorVariation *)equalCopy colorPreset], (color2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            colorPreset2 = [(AVTCoreModelColorVariation *)self colorPreset];
            colorPreset3 = [(AVTCoreModelColorVariation *)equalCopy colorPreset];
            v13 = [colorPreset2 isEqual:colorPreset3];

            if (colorPreset)
            {
LABEL_16:

              goto LABEL_17;
            }
          }

          else
          {
            v13 = 1;
          }

          goto LABEL_16;
        }
      }

      color3 = [(AVTCoreModelColorVariation *)self color];
      color4 = [(AVTCoreModelColorVariation *)equalCopy color];
      v9 = [color3 isEqual:color4];

      if (color)
      {

        if (v9)
        {
          goto LABEL_7;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_7;
        }
      }
    }

    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  color = [(AVTCoreModelColorVariation *)self color];
  v4 = [color hash];
  color2 = [(AVTCoreModelColorVariation *)self color];
  *(&v6 + 1) = v4;
  *&v6 = [color2 hash];
  v7 = MEMORY[0x1E696AD98];
  colorPreset = [(AVTCoreModelColorVariation *)self colorPreset];
  [colorPreset variation];
  v9 = [v7 numberWithFloat:?];
  v10 = [v9 hash];

  return v10 ^ (v6 >> 32);
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = AVTCoreModelColorVariation;
  v3 = [(AVTCoreModelColorVariation *)&v14 description];
  v4 = [v3 mutableCopy];

  colorPreset = [(AVTCoreModelColorVariation *)self colorPreset];
  name = [colorPreset name];
  [v4 appendFormat:@" name: %@", name];

  color = [(AVTCoreModelColorVariation *)self color];
  v8 = AVTAvatarSettingKindDescription([color settingKind]);
  [v4 appendFormat:@" settingKind: %@", v8];

  v9 = MEMORY[0x1E696AD98];
  colorPreset2 = [(AVTCoreModelColorVariation *)self colorPreset];
  [colorPreset2 variation];
  v11 = [v9 numberWithFloat:?];
  [v4 appendFormat:@" variation: %@", v11];

  v12 = [v4 copy];

  return v12;
}

@end