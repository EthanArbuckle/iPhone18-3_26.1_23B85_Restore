@interface AVTAvatarAttributeEditorModelDiff
- (AVTAvatarAttributeEditorModelDiff)initWithSectionDiffs:(id)a3 sectionItemDiffs:(id)a4;
@end

@implementation AVTAvatarAttributeEditorModelDiff

- (AVTAvatarAttributeEditorModelDiff)initWithSectionDiffs:(id)a3 sectionItemDiffs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTAvatarAttributeEditorModelDiff;
  v9 = [(AVTAvatarAttributeEditorModelDiff *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionDiffs, a3);
    objc_storeStrong(&v10->_sectionItemDiffs, a4);
  }

  return v10;
}

@end