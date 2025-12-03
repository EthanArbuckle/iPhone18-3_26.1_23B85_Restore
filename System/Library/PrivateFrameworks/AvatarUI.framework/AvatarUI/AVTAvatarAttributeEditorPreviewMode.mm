@interface AVTAvatarAttributeEditorPreviewMode
- (AVTAvatarAttributeEditorPreviewMode)initWithType:(unint64_t)type options:(id)options;
@end

@implementation AVTAvatarAttributeEditorPreviewMode

- (AVTAvatarAttributeEditorPreviewMode)initWithType:(unint64_t)type options:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = AVTAvatarAttributeEditorPreviewMode;
  v8 = [(AVTAvatarAttributeEditorPreviewMode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_options, options);
  }

  return v9;
}

@end