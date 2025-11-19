@interface AVTAvatarAttributeEditorMulticolorPickerSectionItem
- (AVTAvatarAttributeEditorMulticolorPickerSectionItem)initWithIdentifier:(id)a3 localizedName:(id)a4 isPlaceholder:(BOOL)a5 isRemovable:(BOOL)a6 colorItem:(id)a7 variationStore:(id)a8 avatarUpdater:(id)a9 editorStateUpdater:(id)a10 removalUpdater:(id)a11;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerSectionItem

- (AVTAvatarAttributeEditorMulticolorPickerSectionItem)initWithIdentifier:(id)a3 localizedName:(id)a4 isPlaceholder:(BOOL)a5 isRemovable:(BOOL)a6 colorItem:(id)a7 variationStore:(id)a8 avatarUpdater:(id)a9 editorStateUpdater:(id)a10 removalUpdater:(id)a11
{
  v35 = a3;
  v17 = a4;
  v34 = a7;
  v33 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v36.receiver = self;
  v36.super_class = AVTAvatarAttributeEditorMulticolorPickerSectionItem;
  v21 = [(AVTAvatarAttributeEditorMulticolorPickerSectionItem *)&v36 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, a3);
    v23 = [v17 copy];
    localizedName = v22->_localizedName;
    v22->_localizedName = v23;

    v22->_isPlaceholder = a5;
    v22->_isRemovable = a6;
    objc_storeStrong(&v22->_colorItem, a7);
    objc_storeStrong(&v22->_variationStore, a8);
    v25 = [v18 copy];
    avatarUpdater = v22->_avatarUpdater;
    v22->_avatarUpdater = v25;

    v27 = [v19 copy];
    editorStateUpdater = v22->_editorStateUpdater;
    v22->_editorStateUpdater = v27;

    v29 = [v20 copy];
    removalUpdater = v22->_removalUpdater;
    v22->_removalUpdater = v29;
  }

  return v22;
}

@end