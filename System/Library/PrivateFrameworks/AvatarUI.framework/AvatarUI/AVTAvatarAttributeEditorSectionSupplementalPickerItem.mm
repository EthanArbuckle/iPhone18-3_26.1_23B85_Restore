@interface AVTAvatarAttributeEditorSectionSupplementalPickerItem
- (AVTAvatarAttributeEditorSectionSupplementalPickerItem)initWithLocalizedName:(id)a3 localizedDescription:(id)a4 avatarUpdater:(id)a5 editorUpdater:(id)a6 selected:(BOOL)a7;
@end

@implementation AVTAvatarAttributeEditorSectionSupplementalPickerItem

- (AVTAvatarAttributeEditorSectionSupplementalPickerItem)initWithLocalizedName:(id)a3 localizedDescription:(id)a4 avatarUpdater:(id)a5 editorUpdater:(id)a6 selected:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v24.receiver = self;
  v24.super_class = AVTAvatarAttributeEditorSectionSupplementalPickerItem;
  v17 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localizedName, a3);
    v19 = MEMORY[0x1BFB0DE80](v15);
    avatarUpdater = v18->_avatarUpdater;
    v18->_avatarUpdater = v19;

    v21 = MEMORY[0x1BFB0DE80](v16);
    editorUpdater = v18->_editorUpdater;
    v18->_editorUpdater = v21;

    objc_storeStrong(&v18->_localizedDescription, a4);
    v18->_selected = a7;
  }

  return v18;
}

@end