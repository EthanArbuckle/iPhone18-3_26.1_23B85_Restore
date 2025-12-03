@interface AVTAvatarAttributeEditorSectionColorItem
- (AVTAvatarAttributeEditorSectionColorItem)initWithColor:(id)color skinColor:(id)skinColor imageProvider:(id)provider colorLayerProvider:(id)layerProvider avatarUpdater:(id)updater derivedColorDependent:(BOOL)dependent selected:(BOOL)selected;
- (NSString)description;
- (id)colorPreset;
@end

@implementation AVTAvatarAttributeEditorSectionColorItem

- (AVTAvatarAttributeEditorSectionColorItem)initWithColor:(id)color skinColor:(id)skinColor imageProvider:(id)provider colorLayerProvider:(id)layerProvider avatarUpdater:(id)updater derivedColorDependent:(BOOL)dependent selected:(BOOL)selected
{
  colorCopy = color;
  skinColorCopy = skinColor;
  updaterCopy = updater;
  layerProviderCopy = layerProvider;
  providerForColorIntoLayer = [layerProviderCopy providerForColorIntoLayer];
  providerForGradientFromColor = [layerProviderCopy providerForGradientFromColor];

  v34.receiver = self;
  v34.super_class = AVTAvatarAttributeEditorSectionColorItem;
  v21 = [(AVTAvatarAttributeEditorSectionColorItem *)&v34 init];
  if (v21)
  {
    identifier = [colorCopy identifier];
    identifier = v21->_identifier;
    v21->_identifier = identifier;

    localizedName = [colorCopy localizedName];
    v25 = [localizedName copy];
    localizedName = v21->_localizedName;
    v21->_localizedName = v25;

    v27 = [providerForColorIntoLayer copy];
    layerContentProvider = v21->_layerContentProvider;
    v21->_layerContentProvider = v27;

    v29 = [providerForGradientFromColor copy];
    gradientProvider = v21->_gradientProvider;
    v21->_gradientProvider = v29;

    objc_storeStrong(&v21->_color, color);
    objc_storeStrong(&v21->_skinColor, skinColor);
    v31 = [updaterCopy copy];
    avatarUpdater = v21->_avatarUpdater;
    v21->_avatarUpdater = v31;

    v21->_hasDerivedColorDependency = dependent;
    v21->_selected = selected;
  }

  return v21;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = AVTAvatarAttributeEditorSectionColorItem;
  v3 = [(AVTAvatarAttributeEditorSectionColorItem *)&v8 description];
  v4 = [v3 mutableCopy];

  localizedName = [(AVTAvatarAttributeEditorSectionColorItem *)self localizedName];
  [v4 appendFormat:@" color name: %@", localizedName];

  if ([(AVTAvatarAttributeEditorSectionColorItem *)self isSelected])
  {
    [v4 appendString:@" SELECTED"];
  }

  v6 = [v4 copy];

  return v6;
}

- (id)colorPreset
{
  color = [(AVTAvatarAttributeEditorSectionColorItem *)self color];
  baseColorPreset = [color baseColorPreset];

  return baseColorPreset;
}

@end