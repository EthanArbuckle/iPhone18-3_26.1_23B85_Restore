@interface AVTAvatarAttributeEditorMulticolorPickerSectionItem
- (AVTAvatarAttributeEditorMulticolorPickerSectionItem)initWithIdentifier:(id)identifier localizedName:(id)name isPlaceholder:(BOOL)placeholder isRemovable:(BOOL)removable colorItem:(id)item variationStore:(id)store avatarUpdater:(id)updater editorStateUpdater:(id)self0 removalUpdater:(id)self1;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerSectionItem

- (AVTAvatarAttributeEditorMulticolorPickerSectionItem)initWithIdentifier:(id)identifier localizedName:(id)name isPlaceholder:(BOOL)placeholder isRemovable:(BOOL)removable colorItem:(id)item variationStore:(id)store avatarUpdater:(id)updater editorStateUpdater:(id)self0 removalUpdater:(id)self1
{
  identifierCopy = identifier;
  nameCopy = name;
  itemCopy = item;
  storeCopy = store;
  updaterCopy = updater;
  stateUpdaterCopy = stateUpdater;
  removalUpdaterCopy = removalUpdater;
  v36.receiver = self;
  v36.super_class = AVTAvatarAttributeEditorMulticolorPickerSectionItem;
  v21 = [(AVTAvatarAttributeEditorMulticolorPickerSectionItem *)&v36 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, identifier);
    v23 = [nameCopy copy];
    localizedName = v22->_localizedName;
    v22->_localizedName = v23;

    v22->_isPlaceholder = placeholder;
    v22->_isRemovable = removable;
    objc_storeStrong(&v22->_colorItem, item);
    objc_storeStrong(&v22->_variationStore, store);
    v25 = [updaterCopy copy];
    avatarUpdater = v22->_avatarUpdater;
    v22->_avatarUpdater = v25;

    v27 = [stateUpdaterCopy copy];
    editorStateUpdater = v22->_editorStateUpdater;
    v22->_editorStateUpdater = v27;

    v29 = [removalUpdaterCopy copy];
    removalUpdater = v22->_removalUpdater;
    v22->_removalUpdater = v29;
  }

  return v22;
}

@end