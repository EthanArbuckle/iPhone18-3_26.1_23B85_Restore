@interface AVTAvatarAttributeEditorSectionSupplementalPickerItem
- (AVTAvatarAttributeEditorSectionSupplementalPickerItem)initWithLocalizedName:(id)name localizedDescription:(id)description avatarUpdater:(id)updater editorUpdater:(id)editorUpdater selected:(BOOL)selected;
@end

@implementation AVTAvatarAttributeEditorSectionSupplementalPickerItem

- (AVTAvatarAttributeEditorSectionSupplementalPickerItem)initWithLocalizedName:(id)name localizedDescription:(id)description avatarUpdater:(id)updater editorUpdater:(id)editorUpdater selected:(BOOL)selected
{
  nameCopy = name;
  descriptionCopy = description;
  updaterCopy = updater;
  editorUpdaterCopy = editorUpdater;
  v24.receiver = self;
  v24.super_class = AVTAvatarAttributeEditorSectionSupplementalPickerItem;
  v17 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localizedName, name);
    v19 = MEMORY[0x1BFB0DE80](updaterCopy);
    avatarUpdater = v18->_avatarUpdater;
    v18->_avatarUpdater = v19;

    v21 = MEMORY[0x1BFB0DE80](editorUpdaterCopy);
    editorUpdater = v18->_editorUpdater;
    v18->_editorUpdater = v21;

    objc_storeStrong(&v18->_localizedDescription, description);
    v18->_selected = selected;
  }

  return v18;
}

@end