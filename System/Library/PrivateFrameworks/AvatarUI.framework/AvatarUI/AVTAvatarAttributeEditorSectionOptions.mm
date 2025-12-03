@interface AVTAvatarAttributeEditorSectionOptions
- (AVTAvatarAttributeEditorSectionOptions)initWithFramingMode:(id)mode poseOverride:(id)override presetOverrides:(id)overrides displayMode:(unint64_t)displayMode stickerConfiguration:(id)configuration showsLabel:(BOOL)label;
- (id)description;
- (id)stringForDisplayMode;
@end

@implementation AVTAvatarAttributeEditorSectionOptions

- (AVTAvatarAttributeEditorSectionOptions)initWithFramingMode:(id)mode poseOverride:(id)override presetOverrides:(id)overrides displayMode:(unint64_t)displayMode stickerConfiguration:(id)configuration showsLabel:(BOOL)label
{
  modeCopy = mode;
  overrideCopy = override;
  overridesCopy = overrides;
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = AVTAvatarAttributeEditorSectionOptions;
  v18 = [(AVTAvatarAttributeEditorSectionOptions *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_framingMode, mode);
    objc_storeStrong(&v19->_poseOverride, override);
    objc_storeStrong(&v19->_presetOverrides, overrides);
    v19->_displayMode = displayMode;
    objc_storeStrong(&v19->_stickerConfiguration, configuration);
    v19->_showsLabel = label;
  }

  return v19;
}

- (id)stringForDisplayMode
{
  displayMode = [(AVTAvatarAttributeEditorSectionOptions *)self displayMode];
  v3 = @"unknown";
  if (displayMode == 1)
  {
    v3 = @"highlightPicker";
  }

  if (displayMode)
  {
    return v3;
  }

  else
  {
    return @"section";
  }
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = AVTAvatarAttributeEditorSectionOptions;
  v3 = [(AVTAvatarAttributeEditorSectionOptions *)&v14 description];
  v4 = [v3 mutableCopy];

  framingMode = [(AVTAvatarAttributeEditorSectionOptions *)self framingMode];
  stringForDisplayMode = [(AVTAvatarAttributeEditorSectionOptions *)self stringForDisplayMode];
  poseOverride = [(AVTAvatarAttributeEditorSectionOptions *)self poseOverride];
  presetOverrides = [(AVTAvatarAttributeEditorSectionOptions *)self presetOverrides];
  avt_description = [presetOverrides avt_description];
  stickerConfiguration = [(AVTAvatarAttributeEditorSectionOptions *)self stickerConfiguration];
  v11 = [stickerConfiguration description];
  [v4 appendFormat:@" framingMode: %@, displayMode: %@, poseOverride: %@, presetOverrides: %@, stickerConfiguration:  %@ showsLabel:%i", framingMode, stringForDisplayMode, poseOverride, avt_description, v11, -[AVTAvatarAttributeEditorSectionOptions showsLabel](self, "showsLabel")];

  v12 = [v4 copy];

  return v12;
}

@end