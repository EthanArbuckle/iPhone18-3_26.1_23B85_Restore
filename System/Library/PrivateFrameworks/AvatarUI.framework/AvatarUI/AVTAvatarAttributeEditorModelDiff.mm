@interface AVTAvatarAttributeEditorModelDiff
- (AVTAvatarAttributeEditorModelDiff)initWithSectionDiffs:(id)diffs sectionItemDiffs:(id)itemDiffs;
@end

@implementation AVTAvatarAttributeEditorModelDiff

- (AVTAvatarAttributeEditorModelDiff)initWithSectionDiffs:(id)diffs sectionItemDiffs:(id)itemDiffs
{
  diffsCopy = diffs;
  itemDiffsCopy = itemDiffs;
  v12.receiver = self;
  v12.super_class = AVTAvatarAttributeEditorModelDiff;
  v9 = [(AVTAvatarAttributeEditorModelDiff *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionDiffs, diffs);
    objc_storeStrong(&v10->_sectionItemDiffs, itemDiffs);
  }

  return v10;
}

@end