@interface AVTAvatarAttributeEditorMulticolorSectionProvider
- (AVTAvatarAttributeEditorMulticolorSectionProvider)initWithIdentifier:(id)a3 localizedName:(id)a4 subpickers:(id)a5 subpickerRemovalUpdaters:(id)a6 nestedPresetPickers:(id)a7 supplementalPicker:(id)a8 pickerItems:(id)a9 editorState:(id)a10;
- (AVTAvatarAttributeEditorMulticolorSectionProvider)initWithLocalizedName:(id)a3 subpickers:(id)a4 nestedPresetPickers:(id)a5 supplementalPicker:(id)a6 pickerItems:(id)a7 editorState:(id)a8;
- (NSArray)sections;
- (id)subpickerSectionIdentifiers;
- (void)createPickerSectionIfNeeded;
@end

@implementation AVTAvatarAttributeEditorMulticolorSectionProvider

- (AVTAvatarAttributeEditorMulticolorSectionProvider)initWithLocalizedName:(id)a3 subpickers:(id)a4 nestedPresetPickers:(id)a5 supplementalPicker:(id)a6 pickerItems:(id)a7 editorState:(id)a8
{
  v14 = MEMORY[0x1E696AFB0];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v14 UUID];
  v22 = [v21 UUIDString];
  v23 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self initWithIdentifier:v22 localizedName:v20 subpickers:v19 nestedPresetPickers:v18 supplementalPicker:v17 pickerItems:v16 editorState:v15];

  return v23;
}

- (AVTAvatarAttributeEditorMulticolorSectionProvider)initWithIdentifier:(id)a3 localizedName:(id)a4 subpickers:(id)a5 subpickerRemovalUpdaters:(id)a6 nestedPresetPickers:(id)a7 supplementalPicker:(id)a8 pickerItems:(id)a9 editorState:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = AVTAvatarAttributeEditorMulticolorSectionProvider;
  v19 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_localizedName, a4);
    objc_storeStrong(&v20->_subpickerRemovalUpdaters, a6);
    objc_storeStrong(&v20->_nestedPresetPickers, a7);
    objc_storeStrong(&v20->_supplementalPicker, a8);
    objc_storeStrong(&v20->_pickerItems, a9);
    objc_storeStrong(&v20->_subpickers, a5);
    objc_storeStrong(&v20->_editorState, a10);
  }

  return v20;
}

- (void)createPickerSectionIfNeeded
{
  v3 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self pickerSection];

  if (!v3)
  {
    v4 = [AVTAvatarAttributeEditorMulticolorPickerSection alloc];
    v5 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self identifier];
    v6 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self localizedName];
    v7 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self pickerItems];
    v8 = [(AVTAvatarAttributeEditorMulticolorPickerSection *)v4 initWithIdentifier:v5 localizedName:v6 items:v7];

    [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self setPickerSection:v8];
  }
}

- (id)subpickerSectionIdentifiers
{
  v2 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self subpickers];
  v3 = [v2 avt_map:&__block_literal_global_20];

  return v3;
}

- (NSArray)sections
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self editorState];
  v4 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self identifier];
  v5 = [v3 selectedMulticolorSubpickersIndexForMulticolorPickerIdentifier:v4];

  v6 = MEMORY[0x1E695DF70];
  v7 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self nestedPresetPickers];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count") + 2}];

  [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self createPickerSectionIfNeeded];
  v9 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self pickerSection];
  [v8 addObject:v9];

  v10 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self subpickers];
  v11 = [v10 objectAtIndexedSubscript:v5];

  [v8 addObject:v11];
  v12 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)self nestedPresetPickers];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v14 = [v12 objectForKeyedSubscript:v13];

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