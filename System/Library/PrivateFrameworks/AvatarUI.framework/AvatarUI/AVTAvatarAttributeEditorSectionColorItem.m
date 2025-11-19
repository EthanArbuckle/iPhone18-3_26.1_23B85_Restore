@interface AVTAvatarAttributeEditorSectionColorItem
- (AVTAvatarAttributeEditorSectionColorItem)initWithColor:(id)a3 skinColor:(id)a4 imageProvider:(id)a5 colorLayerProvider:(id)a6 avatarUpdater:(id)a7 derivedColorDependent:(BOOL)a8 selected:(BOOL)a9;
- (NSString)description;
- (id)colorPreset;
@end

@implementation AVTAvatarAttributeEditorSectionColorItem

- (AVTAvatarAttributeEditorSectionColorItem)initWithColor:(id)a3 skinColor:(id)a4 imageProvider:(id)a5 colorLayerProvider:(id)a6 avatarUpdater:(id)a7 derivedColorDependent:(BOOL)a8 selected:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a6;
  v19 = [v18 providerForColorIntoLayer];
  v20 = [v18 providerForGradientFromColor];

  v34.receiver = self;
  v34.super_class = AVTAvatarAttributeEditorSectionColorItem;
  v21 = [(AVTAvatarAttributeEditorSectionColorItem *)&v34 init];
  if (v21)
  {
    v22 = [v15 identifier];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v15 localizedName];
    v25 = [v24 copy];
    localizedName = v21->_localizedName;
    v21->_localizedName = v25;

    v27 = [v19 copy];
    layerContentProvider = v21->_layerContentProvider;
    v21->_layerContentProvider = v27;

    v29 = [v20 copy];
    gradientProvider = v21->_gradientProvider;
    v21->_gradientProvider = v29;

    objc_storeStrong(&v21->_color, a3);
    objc_storeStrong(&v21->_skinColor, a4);
    v31 = [v17 copy];
    avatarUpdater = v21->_avatarUpdater;
    v21->_avatarUpdater = v31;

    v21->_hasDerivedColorDependency = a8;
    v21->_selected = a9;
  }

  return v21;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = AVTAvatarAttributeEditorSectionColorItem;
  v3 = [(AVTAvatarAttributeEditorSectionColorItem *)&v8 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTAvatarAttributeEditorSectionColorItem *)self localizedName];
  [v4 appendFormat:@" color name: %@", v5];

  if ([(AVTAvatarAttributeEditorSectionColorItem *)self isSelected])
  {
    [v4 appendString:@" SELECTED"];
  }

  v6 = [v4 copy];

  return v6;
}

- (id)colorPreset
{
  v2 = [(AVTAvatarAttributeEditorSectionColorItem *)self color];
  v3 = [v2 baseColorPreset];

  return v3;
}

@end