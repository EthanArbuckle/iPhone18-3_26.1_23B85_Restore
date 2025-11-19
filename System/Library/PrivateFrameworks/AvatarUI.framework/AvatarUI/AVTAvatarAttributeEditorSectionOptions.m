@interface AVTAvatarAttributeEditorSectionOptions
- (AVTAvatarAttributeEditorSectionOptions)initWithFramingMode:(id)a3 poseOverride:(id)a4 presetOverrides:(id)a5 displayMode:(unint64_t)a6 stickerConfiguration:(id)a7 showsLabel:(BOOL)a8;
- (id)description;
- (id)stringForDisplayMode;
@end

@implementation AVTAvatarAttributeEditorSectionOptions

- (AVTAvatarAttributeEditorSectionOptions)initWithFramingMode:(id)a3 poseOverride:(id)a4 presetOverrides:(id)a5 displayMode:(unint64_t)a6 stickerConfiguration:(id)a7 showsLabel:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = AVTAvatarAttributeEditorSectionOptions;
  v18 = [(AVTAvatarAttributeEditorSectionOptions *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_framingMode, a3);
    objc_storeStrong(&v19->_poseOverride, a4);
    objc_storeStrong(&v19->_presetOverrides, a5);
    v19->_displayMode = a6;
    objc_storeStrong(&v19->_stickerConfiguration, a7);
    v19->_showsLabel = a8;
  }

  return v19;
}

- (id)stringForDisplayMode
{
  v2 = [(AVTAvatarAttributeEditorSectionOptions *)self displayMode];
  v3 = @"unknown";
  if (v2 == 1)
  {
    v3 = @"highlightPicker";
  }

  if (v2)
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

  v5 = [(AVTAvatarAttributeEditorSectionOptions *)self framingMode];
  v6 = [(AVTAvatarAttributeEditorSectionOptions *)self stringForDisplayMode];
  v7 = [(AVTAvatarAttributeEditorSectionOptions *)self poseOverride];
  v8 = [(AVTAvatarAttributeEditorSectionOptions *)self presetOverrides];
  v9 = [v8 avt_description];
  v10 = [(AVTAvatarAttributeEditorSectionOptions *)self stickerConfiguration];
  v11 = [v10 description];
  [v4 appendFormat:@" framingMode: %@, displayMode: %@, poseOverride: %@, presetOverrides: %@, stickerConfiguration:  %@ showsLabel:%i", v5, v6, v7, v9, v11, -[AVTAvatarAttributeEditorSectionOptions showsLabel](self, "showsLabel")];

  v12 = [v4 copy];

  return v12;
}

@end