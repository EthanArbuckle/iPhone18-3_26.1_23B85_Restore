@interface AVTAvatarAttributeEditorPreviewMode
- (AVTAvatarAttributeEditorPreviewMode)initWithType:(unint64_t)a3 options:(id)a4;
@end

@implementation AVTAvatarAttributeEditorPreviewMode

- (AVTAvatarAttributeEditorPreviewMode)initWithType:(unint64_t)a3 options:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AVTAvatarAttributeEditorPreviewMode;
  v8 = [(AVTAvatarAttributeEditorPreviewMode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_options, a4);
  }

  return v9;
}

@end