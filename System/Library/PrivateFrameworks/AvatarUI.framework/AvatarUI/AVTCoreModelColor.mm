@interface AVTCoreModelColor
- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind;
- (AVTCoreModelColor)initWithColorPreset:(id)preset settingKind:(id)kind order:(unint64_t)order derivedColorsByCategories:(id)categories;
- (AVTCoreModelColor)initWithColorPreset:(id)preset settingKind:(id)kind order:(unint64_t)order showSlider:(BOOL)slider rangeMin:(float)min rangeMax:(float)max derivedColorsByCategories:(id)categories;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)identifier;
- (NSString)localizedName;
- (id)copyForCategory:(int64_t)category destination:(int64_t)destination;
- (id)copyForPairedCategory:(int64_t)category;
- (id)copyWithRangeMin:(float)min rangeMax:(float)max showSlider:(BOOL)slider;
- (id)thumbnail;
- (id)volatileIdentifierForScope:(id)scope;
- (unint64_t)hash;
@end

@implementation AVTCoreModelColor

- (AVTCoreModelColor)initWithColorPreset:(id)preset settingKind:(id)kind order:(unint64_t)order derivedColorsByCategories:(id)categories
{
  LODWORD(v6) = -1.0;
  LODWORD(v7) = 1.0;
  return [(AVTCoreModelColor *)self initWithColorPreset:preset settingKind:kind.var0 order:kind.var1 showSlider:order rangeMin:0 rangeMax:categories derivedColorsByCategories:v6, v7];
}

- (AVTCoreModelColor)initWithColorPreset:(id)preset settingKind:(id)kind order:(unint64_t)order showSlider:(BOOL)slider rangeMin:(float)min rangeMax:(float)max derivedColorsByCategories:(id)categories
{
  var1 = kind.var1;
  var0 = kind.var0;
  presetCopy = preset;
  categoriesCopy = categories;
  v25.receiver = self;
  v25.super_class = AVTCoreModelColor;
  v20 = [(AVTCoreModelColor *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_settingKind.destination = var0;
    v20->_settingKind.category = var1;
    objc_storeStrong(&v20->_baseColorPreset, preset);
    v21->_order = order;
    v21->_showSlider = slider;
    v21->_rangeMin = min;
    v21->_rangeMax = max;
    v22 = [categoriesCopy copy];
    derivedColorsByCategories = v21->_derivedColorsByCategories;
    v21->_derivedColorsByCategories = v22;
  }

  return v21;
}

- (id)copyWithRangeMin:(float)min rangeMax:(float)max showSlider:(BOOL)slider
{
  sliderCopy = slider;
  v9 = [AVTCoreModelColor alloc];
  baseColorPreset = self->_baseColorPreset;
  order = self->_order;
  derivedColorsByCategories = self->_derivedColorsByCategories;
  destination = self->_settingKind.destination;
  category = self->_settingKind.category;
  *&v15 = min;
  *&v16 = max;

  return [(AVTCoreModelColor *)v9 initWithColorPreset:baseColorPreset settingKind:destination order:category showSlider:order rangeMin:sliderCopy rangeMax:derivedColorsByCategories derivedColorsByCategories:v15, v16];
}

- (id)copyForPairedCategory:(int64_t)category
{
  settingKind = [(AVTCoreModelColor *)self settingKind];

  return [(AVTCoreModelColor *)self copyForCategory:category destination:settingKind];
}

- (id)copyForCategory:(int64_t)category destination:(int64_t)destination
{
  v6 = AVTAvatarSettingColorIndexForColorDestination(destination);
  v7 = MEMORY[0x1E698E290];
  baseColorPreset = [(AVTCoreModelColor *)self baseColorPreset];
  name = [baseColorPreset name];
  baseColorPreset2 = [(AVTCoreModelColor *)self baseColorPreset];
  [baseColorPreset2 variation];
  v11 = [v7 colorPresetWithName:name category:category colorIndex:v6 variation:?];

  v12 = [AVTCoreModelColor alloc];
  v13 = AVTColorSettingKind(category, v6);
  v15 = v14;
  order = [(AVTCoreModelColor *)self order];
  derivedColorsByCategories = [(AVTCoreModelColor *)self derivedColorsByCategories];
  v18 = [(AVTCoreModelColor *)v12 initWithColorPreset:v11 settingKind:v13 order:v15 derivedColorsByCategories:order, derivedColorsByCategories];

  return v18;
}

- (NSString)localizedName
{
  baseColorPreset = [(AVTCoreModelColor *)self baseColorPreset];
  localizedName = [baseColorPreset localizedName];
  v4 = [localizedName copy];

  return v4;
}

- (NSString)identifier
{
  baseColorPreset = [(AVTCoreModelColor *)self baseColorPreset];
  name = [baseColorPreset name];
  v4 = [name copy];

  return v4;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = AVTCoreModelColor;
  v3 = [(AVTCoreModelColor *)&v9 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" %lu", -[AVTCoreModelColor order](self, "order")];
  identifier = [(AVTCoreModelColor *)self identifier];
  [v4 appendFormat:@" identifier: %@", identifier];

  v6 = AVTAvatarSettingKindDescription([(AVTCoreModelColor *)self settingKind]);
  [v4 appendFormat:@" setting: %@", v6];

  v7 = [v4 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(AVTCoreModelColor *)self identifier];
      if (identifier || ([(AVTCoreModelColor *)equalCopy identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        identifier2 = [(AVTCoreModelColor *)self identifier];
        identifier3 = [(AVTCoreModelColor *)equalCopy identifier];
        v9 = [identifier2 isEqual:identifier3];

        if (identifier)
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

      settingKind = [(AVTCoreModelColor *)self settingKind];
      v13 = v12;
      settingKind2 = [(AVTCoreModelColor *)equalCopy settingKind];
      if (AVTAvatarSettingKindEqual(settingKind, v13, settingKind2, v15))
      {
        derivedColorsByCategories = [(AVTCoreModelColor *)self derivedColorsByCategories];
        if (derivedColorsByCategories || ([(AVTCoreModelColor *)equalCopy derivedColorsByCategories], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          derivedColorsByCategories2 = [(AVTCoreModelColor *)self derivedColorsByCategories];
          derivedColorsByCategories3 = [(AVTCoreModelColor *)equalCopy derivedColorsByCategories];
          v10 = [derivedColorsByCategories2 isEqual:derivedColorsByCategories3];

          if (derivedColorsByCategories)
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
  identifier = [(AVTCoreModelColor *)self identifier];
  v4 = [identifier hash];
  identifier2 = [(AVTCoreModelColor *)self identifier];
  *(&v6 + 1) = v4;
  *&v6 = [identifier2 hash];
  settingKind = [(AVTCoreModelColor *)self settingKind];
  v9 = AVTAvatarSettingKindHash(settingKind, v8);

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

- (id)volatileIdentifierForScope:(id)scope
{
  string = [MEMORY[0x1E696AD60] string];
  settingKind = [(AVTCoreModelColor *)self settingKind];
  v7 = AVTAvatarSettingKindIdentifier(settingKind, v6);
  identifier = [(AVTCoreModelColor *)self identifier];
  [string appendFormat:@"color_%@_%@", v7, identifier];

  v9 = [string copy];

  return v9;
}

- (id)thumbnail
{
  baseColorPreset = [(AVTCoreModelColor *)self baseColorPreset];
  thumbnail = [baseColorPreset thumbnail];

  return thumbnail;
}

@end