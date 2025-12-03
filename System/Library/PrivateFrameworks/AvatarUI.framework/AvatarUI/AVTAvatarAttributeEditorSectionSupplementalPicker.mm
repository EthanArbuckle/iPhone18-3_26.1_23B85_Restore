@interface AVTAvatarAttributeEditorSectionSupplementalPicker
+ (id)pickerForMulticolorPicker:(id)picker isMultipleSelected:(BOOL)selected switchToSingleColorAvatarUpdater:(id)updater switchToMultipleColorAvatarUpdater:(id)avatarUpdater;
+ (id)pickerForPairableModelCategory:(id)category isPaired:(BOOL)paired avatarUpdaterOnPair:(id)pair;
+ (id)pickerFromEditorSection:(id)section;
- (AVTAvatarAttributeEditorSectionSupplementalPicker)initWithLocalizedTitle:(id)title choices:(id)choices;
- (id)copyWithLocalizedTitle:(id)title;
@end

@implementation AVTAvatarAttributeEditorSectionSupplementalPicker

+ (id)pickerFromEditorSection:(id)section
{
  sectionCopy = section;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  sectionItems = [sectionCopy sectionItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerFromEditorSection___block_invoke;
  v10[3] = &unk_1E7F3C280;
  v10[4] = &v11;
  v5 = [sectionItems avt_map:v10];

  v6 = [AVTAvatarAttributeEditorSectionSupplementalPicker alloc];
  localizedName = [v12[5] localizedName];
  v8 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)v6 initWithLocalizedTitle:localizedName choices:v5];

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

+ (id)pickerForPairableModelCategory:(id)category isPaired:(BOOL)paired avatarUpdaterOnPair:(id)pair
{
  pairedCopy = paired;
  v28[2] = *MEMORY[0x1E69E9840];
  pairCopy = pair;
  pairing = [category pairing];
  if (pairing)
  {
    v9 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
    localizedPairTitle = [pairing localizedPairTitle];
    localizedPairedDescription = [pairing localizedPairedDescription];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __113__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForPairableModelCategory_isPaired_avatarUpdaterOnPair___block_invoke;
    v26[3] = &unk_1E7F3C2A8;
    v12 = pairing;
    v27 = v12;
    v13 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)v9 initWithLocalizedName:localizedPairTitle localizedDescription:localizedPairedDescription avatarUpdater:0 editorUpdater:v26 selected:pairedCopy];

    v14 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
    localizedUnpairTitle = [v12 localizedUnpairTitle];
    localizedUnpairedDescription = [v12 localizedUnpairedDescription];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __113__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForPairableModelCategory_isPaired_avatarUpdaterOnPair___block_invoke_2;
    v24[3] = &unk_1E7F3C2A8;
    v17 = v12;
    v25 = v17;
    v18 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)v14 initWithLocalizedName:localizedUnpairTitle localizedDescription:localizedUnpairedDescription avatarUpdater:pairCopy editorUpdater:v24 selected:pairedCopy ^ 1];

    if (pairedCopy)
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

+ (id)pickerForMulticolorPicker:(id)picker isMultipleSelected:(BOOL)selected switchToSingleColorAvatarUpdater:(id)updater switchToMultipleColorAvatarUpdater:(id)avatarUpdater
{
  selectedCopy = selected;
  v40[2] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  updaterCopy = updater;
  avatarUpdaterCopy = avatarUpdater;
  auxiliaryPicker = [pickerCopy auxiliaryPicker];
  v13 = auxiliaryPicker;
  if (auxiliaryPicker)
  {
    items = [auxiliaryPicker items];
    v15 = [items objectAtIndexedSubscript:0];

    items2 = [v13 items];
    v17 = [items2 objectAtIndexedSubscript:1];

    v34 = avatarUpdaterCopy;
    v18 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
    title = [v15 title];
    [v15 message];
    v20 = v35 = updaterCopy;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __166__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForMulticolorPicker_isMultipleSelected_switchToSingleColorAvatarUpdater_switchToMultipleColorAvatarUpdater___block_invoke;
    v38[3] = &unk_1E7F3C2A8;
    v21 = pickerCopy;
    v39 = v21;
    v22 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)v18 initWithLocalizedName:title localizedDescription:v20 avatarUpdater:v35 editorUpdater:v38 selected:selectedCopy ^ 1];

    v23 = [AVTAvatarAttributeEditorSectionSupplementalPickerItem alloc];
    title2 = [v17 title];
    message = [v17 message];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __166__AVTAvatarAttributeEditorSectionSupplementalPicker_pickerForMulticolorPicker_isMultipleSelected_switchToSingleColorAvatarUpdater_switchToMultipleColorAvatarUpdater___block_invoke_2;
    v36[3] = &unk_1E7F3C2A8;
    v37 = v21;
    v26 = [(AVTAvatarAttributeEditorSectionSupplementalPickerItem *)v23 initWithLocalizedName:title2 localizedDescription:message avatarUpdater:v34 editorUpdater:v36 selected:selectedCopy];

    if (selectedCopy)
    {
      v27 = v17;
    }

    else
    {
      v27 = v15;
    }

    title3 = [v27 title];
    v29 = [AVTAvatarAttributeEditorSectionSupplementalPicker alloc];
    v40[0] = v22;
    v40[1] = v26;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v31 = v29;
    avatarUpdaterCopy = v34;
    v32 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)v31 initWithLocalizedTitle:title3 choices:v30];

    updaterCopy = v35;
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

- (AVTAvatarAttributeEditorSectionSupplementalPicker)initWithLocalizedTitle:(id)title choices:(id)choices
{
  titleCopy = title;
  choicesCopy = choices;
  v12.receiver = self;
  v12.super_class = AVTAvatarAttributeEditorSectionSupplementalPicker;
  v9 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedTitle, title);
    objc_storeStrong(&v10->_choices, choices);
  }

  return v10;
}

- (id)copyWithLocalizedTitle:(id)title
{
  titleCopy = title;
  v5 = [AVTAvatarAttributeEditorSectionSupplementalPicker alloc];
  choices = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)self choices];
  v7 = [(AVTAvatarAttributeEditorSectionSupplementalPicker *)v5 initWithLocalizedTitle:titleCopy choices:choices];

  return v7;
}

@end