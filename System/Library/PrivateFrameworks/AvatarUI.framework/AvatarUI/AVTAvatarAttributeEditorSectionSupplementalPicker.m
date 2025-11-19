@interface AVTAvatarAttributeEditorSectionSupplementalPicker
+ (id)pickerForMulticolorPicker:(id)a3 isMultipleSelected:(BOOL)a4 switchToSingleColorAvatarUpdater:(id)a5 switchToMultipleColorAvatarUpdater:(id)a6;
+ (id)pickerForPairableModelCategory:(id)a3 isPaired:(BOOL)a4 avatarUpdaterOnPair:(id)a5;
+ (id)pickerFromEditorSection:(id)a3;
- (AVTAvatarAttributeEditorSectionSupplementalPicker)initWithLocalizedTitle:(id)a3 choices:(id)a4;
- (id)copyWithLocalizedTitle:(id)a3;
@end

@implementation AVTAvatarAttributeEditorSectionSupplementalPicker

+ (id)pickerFromEditorSection:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v4 = [v3 sectionItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerFromEditorSection___block_invoke;
  v10[3] = &unk_1E7F3C280;
  v10[4] = &v11;
  v5 = [v4 avt_map:v10];

  v6 = [AVTAvatarAttributeEditorSectionSupplementalPicker alloc];
  v7 = [v12[5] localizedName];
  v8 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)v6 initWithLocalizedTitle:v7 choices:v5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

AVTAvatarAttributeEditorSectionSupplementalPickerItem *__77__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerFromEditorSection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isSelected])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v5 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
  v6 = [v4 localizedName];
  v7 = [v4 avatarUpdater];
  v8 = -[AVTAvatarAttributeEditorSectionSupplementalPickerItem initWithLocalizedName:localizedDescription:avatarUpdater:editorUpdater:selected:](v5, "initWithLocalizedName:localizedDescription:avatarUpdater:editorUpdater:selected:", v6, 0, v7, 0, [v4 isSelected]);

  return v8;
}

+ (id)pickerForPairableModelCategory:(id)a3 isPaired:(BOOL)a4 avatarUpdaterOnPair:(id)a5
{
  v5 = a4;
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a3 pairing];
  if (v8)
  {
    v9 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
    v10 = [v8 localizedPairTitle];
    v11 = [v8 localizedPairedDescription];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __113__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForPairableModelCategory_isPaired_avatarUpdaterOnPair___block_invoke;
    v26[3] = &unk_1E7F3C2A8;
    v12 = v8;
    v27 = v12;
    v13 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)v9 initWithLocalizedName:v10 localizedDescription:v11 avatarUpdater:0 editorUpdater:v26 selected:v5];

    v14 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
    v15 = [v12 localizedUnpairTitle];
    v16 = [v12 localizedUnpairedDescription];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __113__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForPairableModelCategory_isPaired_avatarUpdaterOnPair___block_invoke_2;
    v24[3] = &unk_1E7F3C2A8;
    v17 = v12;
    v25 = v17;
    v18 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)v14 initWithLocalizedName:v15 localizedDescription:v16 avatarUpdater:v7 editorUpdater:v24 selected:v5 ^ 1];

    if (v5)
    {
      [v17 localizedPairTitle];
    }

    else
    {
      [v17 localizedUnpairTitle];
    }
    v20 = ;
    v21 = [AVTAvatarAttributeEditorSectionSupplementalPicker alloc];
    v28[0] = v13;
    v28[1] = v18;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v19 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)v21 initWithLocalizedTitle:v20 choices:v22];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __113__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForPairableModelCategory_isPaired_avatarUpdaterOnPair___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCategory:objc_msgSend(v2 inPairedState:{"pairedCategory"), 1}];
}

void __113__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForPairableModelCategory_isPaired_avatarUpdaterOnPair___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCategory:objc_msgSend(v2 inPairedState:{"pairedCategory"), 0}];
}

+ (id)pickerForMulticolorPicker:(id)a3 isMultipleSelected:(BOOL)a4 switchToSingleColorAvatarUpdater:(id)a5 switchToMultipleColorAvatarUpdater:(id)a6
{
  v8 = a4;
  v40[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 auxiliaryPicker];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 items];
    v15 = [v14 objectAtIndexedSubscript:0];

    v16 = [v13 items];
    v17 = [v16 objectAtIndexedSubscript:1];

    v34 = v11;
    v18 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
    v19 = [v15 title];
    [v15 message];
    v20 = v35 = v10;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __166__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForMulticolorPicker_isMultipleSelected_switchToSingleColorAvatarUpdater_switchToMultipleColorAvatarUpdater___block_invoke;
    v38[3] = &unk_1E7F3C2A8;
    v21 = v9;
    v39 = v21;
    v22 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)v18 initWithLocalizedName:v19 localizedDescription:v20 avatarUpdater:v35 editorUpdater:v38 selected:v8 ^ 1];

    v23 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
    v24 = [v17 title];
    v25 = [v17 message];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __166__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForMulticolorPicker_isMultipleSelected_switchToSingleColorAvatarUpdater_switchToMultipleColorAvatarUpdater___block_invoke_2;
    v36[3] = &unk_1E7F3C2A8;
    v37 = v21;
    v26 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)v23 initWithLocalizedName:v24 localizedDescription:v25 avatarUpdater:v34 editorUpdater:v36 selected:v8];

    if (v8)
    {
      v27 = v17;
    }

    else
    {
      v27 = v15;
    }

    v28 = [v27 title];
    v29 = [AVTAvatarAttributeEditorSectionSupplementalPicker alloc];
    v40[0] = v22;
    v40[1] = v26;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v31 = v29;
    v11 = v34;
    v32 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)v31 initWithLocalizedTitle:v28 choices:v30];

    v10 = v35;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

void __166__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForMulticolorPicker_isMultipleSelected_switchToSingleColorAvatarUpdater_switchToMultipleColorAvatarUpdater___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  [v3 setEnabledMulticolorSubpickersIndex:0 forMulticolorPickerIdentifier:v4];
}

void __166__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForMulticolorPicker_isMultipleSelected_switchToSingleColorAvatarUpdater_switchToMultipleColorAvatarUpdater___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 subpickers];
  v5 = [v7 count] - 1;
  v6 = [*(a1 + 32) identifier];
  [v4 setEnabledMulticolorSubpickersIndex:v5 forMulticolorPickerIdentifier:v6];
}

- (AVTAvatarAttributeEditorSectionSupplementalPicker)initWithLocalizedTitle:(id)a3 choices:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTAvatarAttributeEditorSectionSupplementalPicker;
  v9 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedTitle, a3);
    objc_storeStrong(&v10->_choices, a4);
  }

  return v10;
}

- (id)copyWithLocalizedTitle:(id)a3
{
  v4 = a3;
  v5 = [AVTAvatarAttributeEditorSectionSupplementalPicker alloc];
  v6 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)self choices];
  v7 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)v5 initWithLocalizedTitle:v4 choices:v6];

  return v7;
}

@end