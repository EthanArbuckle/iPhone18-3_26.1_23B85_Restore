@interface AVTAvatarAttributeEditorMulticolorSectionProvider
- (AVTAvatarAttributeEditorMulticolorSectionProvider)initWithIdentifier:(id)identifier localizedName:(id)name subpickers:(id)subpickers subpickerRemovalUpdaters:(id)updaters nestedPresetPickers:(id)pickers supplementalPicker:(id)picker pickerItems:(id)items editorState:(id)self0;
- (AVTAvatarAttributeEditorMulticolorSectionProvider)initWithLocalizedName:(id)name subpickers:(id)subpickers nestedPresetPickers:(id)pickers supplementalPicker:(id)picker pickerItems:(id)items editorState:(id)state;
- (NSArray)sections;
- (id)subpickerSectionIdentifiers;
- (void)createPickerSectionIfNeeded;
@end

@implementation AVTAvatarAttributeEditorMulticolorSectionProvider

- (AVTAvatarAttributeEditorMulticolorSectionProvider)initWithLocalizedName:(id)name subpickers:(id)subpickers nestedPresetPickers:(id)pickers supplementalPicker:(id)picker pickerItems:(id)items editorState:(id)state
{
  v14 = MEMORY[0x1E696AFB0];
  stateCopy = state;
  itemsCopy = items;
  pickerCopy = picker;
  pickersCopy = pickers;
  subpickersCopy = subpickers;
  nameCopy = name;
  uUID = [v14 UUID];
  uUIDString = [uUID UUIDString];
  v23 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self initWithIdentifier:uUIDString localizedName:nameCopy subpickers:subpickersCopy nestedPresetPickers:pickersCopy supplementalPicker:pickerCopy pickerItems:itemsCopy editorState:stateCopy];

  return v23;
}

- (AVTAvatarAttributeEditorMulticolorSectionProvider)initWithIdentifier:(id)identifier localizedName:(id)name subpickers:(id)subpickers subpickerRemovalUpdaters:(id)updaters nestedPresetPickers:(id)pickers supplementalPicker:(id)picker pickerItems:(id)items editorState:(id)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  subpickersCopy = subpickers;
  updatersCopy = updaters;
  pickersCopy = pickers;
  pickerCopy = picker;
  itemsCopy = items;
  stateCopy = state;
  v28.receiver = self;
  v28.super_class = AVTAvatarAttributeEditorMulticolorSectionProvider;
  v19 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_localizedName, name);
    objc_storeStrong(&v20->_subpickerRemovalUpdaters, updaters);
    objc_storeStrong(&v20->_nestedPresetPickers, pickers);
    objc_storeStrong(&v20->_supplementalPicker, picker);
    objc_storeStrong(&v20->_pickerItems, items);
    objc_storeStrong(&v20->_subpickers, subpickers);
    objc_storeStrong(&v20->_editorState, state);
  }

  return v20;
}

- (void)createPickerSectionIfNeeded
{
  pickerSection = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self pickerSection];

  if (!pickerSection)
  {
    v4 = [AVTAvatarAttributeEditorMulticolorPickerSection alloc];
    identifier = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self identifier];
    localizedName = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self localizedName];
    pickerItems = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self pickerItems];
    v8 = [(AVTAvatarAttributeEditorMulticolorPickerSection *)v4 initWithIdentifier:identifier localizedName:localizedName items:pickerItems];

    [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self setPickerSection:v8];
  }
}

- (id)subpickerSectionIdentifiers
{
  subpickers = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self subpickers];
  v3 = [subpickers avt_map:&__block_literal_global_20];

  return v3;
}

- (NSArray)sections
{
  v27 = *MEMORY[0x1E69E9840];
  editorState = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self editorState];
  identifier = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self identifier];
  v5 = [editorState selectedMulticolorSubpickersIndexForMulticolorPickerIdentifier:identifier];

  v6 = MEMORY[0x1E695DF70];
  nestedPresetPickers = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self nestedPresetPickers];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(nestedPresetPickers, "count") + 2}];

  [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self createPickerSectionIfNeeded];
  pickerSection = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self pickerSection];
  [v8 addObject:pickerSection];

  subpickers = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self subpickers];
  v11 = [subpickers objectAtIndexedSubscript:v5];

  [v8 addObject:v11];
  nestedPresetPickers2 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self nestedPresetPickers];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v14 = [nestedPresetPickers2 objectForKeyedSubscript:v13];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v22 + 1) + 8 * i) setShouldDisplayInsetSeparatorAfterSection:{1, v22}];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  if (v15)
  {
    [v8 addObjectsFromArray:v15];
  }

  v20 = [v8 copy];

  return v20;
}

@end