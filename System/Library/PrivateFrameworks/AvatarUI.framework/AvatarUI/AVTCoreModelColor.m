@interface AVTCoreModelColor
- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind;
- (AVTCoreModelColor)initWithColorPreset:(id)a3 settingKind:(id)a4 order:(unint64_t)a5 derivedColorsByCategories:(id)a6;
- (AVTCoreModelColor)initWithColorPreset:(id)a3 settingKind:(id)a4 order:(unint64_t)a5 showSlider:(BOOL)a6 rangeMin:(float)a7 rangeMax:(float)a8 derivedColorsByCategories:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)identifier;
- (NSString)localizedName;
- (id)copyForCategory:(int64_t)a3 destination:(int64_t)a4;
- (id)copyForPairedCategory:(int64_t)a3;
- (id)copyWithRangeMin:(float)a3 rangeMax:(float)a4 showSlider:(BOOL)a5;
- (id)thumbnail;
- (id)volatileIdentifierForScope:(id)a3;
- (unint64_t)hash;
@end

@implementation AVTCoreModelColor

- (AVTCoreModelColor)initWithColorPreset:(id)a3 settingKind:(id)a4 order:(unint64_t)a5 derivedColorsByCategories:(id)a6
{
  LODWORD(v6) = -1.0;
  LODWORD(v7) = 1.0;
  return [(AVTCoreModelColor *)self initWithColorPreset:a3 settingKind:a4.var0 order:a4.var1 showSlider:a5 rangeMin:0 rangeMax:a6 derivedColorsByCategories:v6, v7];
}

- (AVTCoreModelColor)initWithColorPreset:(id)a3 settingKind:(id)a4 order:(unint64_t)a5 showSlider:(BOOL)a6 rangeMin:(float)a7 rangeMax:(float)a8 derivedColorsByCategories:(id)a9
{
  var1 = a4.var1;
  var0 = a4.var0;
  v18 = a3;
  v19 = a9;
  v25.receiver = self;
  v25.super_class = AVTCoreModelColor;
  v20 = [(AVTCoreModelColor *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_settingKind.destination = var0;
    v20->_settingKind.category = var1;
    objc_storeStrong(&v20->_baseColorPreset, a3);
    v21->_order = a5;
    v21->_showSlider = a6;
    v21->_rangeMin = a7;
    v21->_rangeMax = a8;
    v22 = [v19 copy];
    derivedColorsByCategories = v21->_derivedColorsByCategories;
    v21->_derivedColorsByCategories = v22;
  }

  return v21;
}

- (id)copyWithRangeMin:(float)a3 rangeMax:(float)a4 showSlider:(BOOL)a5
{
  v5 = a5;
  v9 = [AVTCoreModelColor alloc];
  baseColorPreset = self->_baseColorPreset;
  order = self->_order;
  derivedColorsByCategories = self->_derivedColorsByCategories;
  destination = self->_settingKind.destination;
  category = self->_settingKind.category;
  *&v15 = a3;
  *&v16 = a4;

  return [(AVTCoreModelColor *)v9 initWithColorPreset:baseColorPreset settingKind:destination order:category showSlider:order rangeMin:v5 rangeMax:derivedColorsByCategories derivedColorsByCategories:v15, v16];
}

- (id)copyForPairedCategory:(int64_t)a3
{
  v5 = [(AVTCoreModelColor *)self settingKind];

  return [(AVTCoreModelColor *)self copyForCategory:a3 destination:v5];
}

- (id)copyForCategory:(int64_t)a3 destination:(int64_t)a4
{
  v6 = AVTAvatarSettingColorIndexForColorDestination(a4);
  v7 = MEMORY[0x1E698E290];
  v8 = [(AVTCoreModelColor *)self baseColorPreset];
  v9 = [v8 name];
  v10 = [(AVTCoreModelColor *)self baseColorPreset];
  [v10 variation];
  v11 = [v7 colorPresetWithName:v9 category:a3 colorIndex:v6 variation:?];

  v12 = [AVTCoreModelColor alloc];
  v13 = AVTColorSettingKind(a3, v6);
  v15 = v14;
  v16 = [(AVTCoreModelColor *)self order];
  v17 = [(AVTCoreModelColor *)self derivedColorsByCategories];
  v18 = [(AVTCoreModelColor *)v12 initWithColorPreset:v11 settingKind:v13 order:v15 derivedColorsByCategories:v16, v17];

  return v18;
}

- (NSString)localizedName
{
  v2 = [(AVTCoreModelColor *)self baseColorPreset];
  v3 = [v2 localizedName];
  v4 = [v3 copy];

  return v4;
}

- (NSString)identifier
{
  v2 = [(AVTCoreModelColor *)self baseColorPreset];
  v3 = [v2 name];
  v4 = [v3 copy];

  return v4;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = AVTCoreModelColor;
  v3 = [(AVTCoreModelColor *)&v9 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" %lu", -[AVTCoreModelColor order](self, "order")];
  v5 = [(AVTCoreModelColor *)self identifier];
  [v4 appendFormat:@" identifier: %@", v5];

  v6 = AVTAvatarSettingKindDescription([(AVTCoreModelColor *)self settingKind]);
  [v4 appendFormat:@" setting: %@", v6];

  v7 = [v4 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AVTCoreModelColor *)self identifier];
      if (v6 || ([(AVTCoreModelColor *)v5 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = [(AVTCoreModelColor *)self identifier];
        v8 = [(AVTCoreModelColor *)v5 identifier];
        v9 = [v7 isEqual:v8];

        if (v6)
        {

          if (!v9)
          {
            goto LABEL_15;
          }
        }

        else
        {

          if ((v9 & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      v11 = [(AVTCoreModelColor *)self settingKind];
      v13 = v12;
      v14 = [(AVTCoreModelColor *)v5 settingKind];
      if (AVTAvatarSettingKindEqual(v11, v13, v14, v15))
      {
        v16 = [(AVTCoreModelColor *)self derivedColorsByCategories];
        if (v16 || ([(AVTCoreModelColor *)v5 derivedColorsByCategories], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v17 = [(AVTCoreModelColor *)self derivedColorsByCategories];
          v18 = [(AVTCoreModelColor *)v5 derivedColorsByCategories];
          v10 = [v17 isEqual:v18];

          if (v16)
          {
LABEL_19:

            goto LABEL_16;
          }
        }

        else
        {
          v10 = 1;
        }

        goto LABEL_19;
      }
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v10 = 1;
LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(AVTCoreModelColor *)self identifier];
  v4 = [v3 hash];
  v5 = [(AVTCoreModelColor *)self identifier];
  *(&v6 + 1) = v4;
  *&v6 = [v5 hash];
  v7 = [(AVTCoreModelColor *)self settingKind];
  v9 = AVTAvatarSettingKindHash(v7, v8);

  return v9 ^ (v6 >> 32);
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind
{
  category = self->_settingKind.category;
  destination = self->_settingKind.destination;
  result.var1 = category;
  result.var0 = destination;
  return result;
}

- (id)volatileIdentifierForScope:(id)a3
{
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [(AVTCoreModelColor *)self settingKind];
  v7 = AVTAvatarSettingKindIdentifier(v5, v6);
  v8 = [(AVTCoreModelColor *)self identifier];
  [v4 appendFormat:@"color_%@_%@", v7, v8];

  v9 = [v4 copy];

  return v9;
}

- (id)thumbnail
{
  v2 = [(AVTCoreModelColor *)self baseColorPreset];
  v3 = [v2 thumbnail];

  return v3;
}

@end