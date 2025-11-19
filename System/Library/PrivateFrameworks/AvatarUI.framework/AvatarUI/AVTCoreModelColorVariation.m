@interface AVTCoreModelColorVariation
- (AVTCoreModelColorVariation)initWithColor:(id)a3 colorPreset:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVTCoreModelColorVariation

- (AVTCoreModelColorVariation)initWithColor:(id)a3 colorPreset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Missing color or colorPreset!"];
  }

  v13.receiver = self;
  v13.super_class = AVTCoreModelColorVariation;
  v10 = [(AVTCoreModelColorVariation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_color, a3);
    objc_storeStrong(&v11->_colorPreset, a4);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AVTCoreModelColorVariation *)self color];
      if (!v6)
      {
        v3 = [(AVTCoreModelColorVariation *)v5 color];
        if (!v3)
        {
LABEL_7:
          v10 = [(AVTCoreModelColorVariation *)self colorPreset];
          if (v10 || ([(AVTCoreModelColorVariation *)v5 colorPreset], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v11 = [(AVTCoreModelColorVariation *)self colorPreset];
            v12 = [(AVTCoreModelColorVariation *)v5 colorPreset];
            v13 = [v11 isEqual:v12];

            if (v10)
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

      v7 = [(AVTCoreModelColorVariation *)self color];
      v8 = [(AVTCoreModelColorVariation *)v5 color];
      v9 = [v7 isEqual:v8];

      if (v6)
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
  v3 = [(AVTCoreModelColorVariation *)self color];
  v4 = [v3 hash];
  v5 = [(AVTCoreModelColorVariation *)self color];
  *(&v6 + 1) = v4;
  *&v6 = [v5 hash];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(AVTCoreModelColorVariation *)self colorPreset];
  [v8 variation];
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

  v5 = [(AVTCoreModelColorVariation *)self colorPreset];
  v6 = [v5 name];
  [v4 appendFormat:@" name: %@", v6];

  v7 = [(AVTCoreModelColorVariation *)self color];
  v8 = AVTAvatarSettingKindDescription([v7 settingKind]);
  [v4 appendFormat:@" settingKind: %@", v8];

  v9 = MEMORY[0x1E696AD98];
  v10 = [(AVTCoreModelColorVariation *)self colorPreset];
  [v10 variation];
  v11 = [v9 numberWithFloat:?];
  [v4 appendFormat:@" variation: %@", v11];

  v12 = [v4 copy];

  return v12;
}

@end