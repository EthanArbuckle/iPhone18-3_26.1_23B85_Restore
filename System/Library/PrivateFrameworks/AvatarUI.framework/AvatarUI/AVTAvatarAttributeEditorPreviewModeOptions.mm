@interface AVTAvatarAttributeEditorPreviewModeOptions
- (AVTAvatarAttributeEditorPreviewModeOptions)initWithFramingMode:(id)mode bodyPosePack:(id)pack;
@end

@implementation AVTAvatarAttributeEditorPreviewModeOptions

- (AVTAvatarAttributeEditorPreviewModeOptions)initWithFramingMode:(id)mode bodyPosePack:(id)pack
{
  modeCopy = mode;
  packCopy = pack;
  v12.receiver = self;
  v12.super_class = AVTAvatarAttributeEditorPreviewModeOptions;
  v9 = [(AVTAvatarAttributeEditorPreviewModeOptions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_framingMode, mode);
    objc_storeStrong(&v10->_bodyPosePack, pack);
  }

  return v10;
}

@end