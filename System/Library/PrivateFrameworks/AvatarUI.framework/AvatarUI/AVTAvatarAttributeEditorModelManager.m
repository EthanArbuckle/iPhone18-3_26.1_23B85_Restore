@interface AVTAvatarAttributeEditorModelManager
- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)a3;
- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)a3 coreModel:(id)a4 editorColorsState:(id)a5 imageProvider:(id)a6 colorLayerProvider:(id)a7 preloader:(id)a8 environment:(id)a9 stickerRenderer:(id)a10;
- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)a3 coreModel:(id)a4 imageProvider:(id)a5 colorLayerProvider:(id)a6 preloader:(id)a7 environment:(id)a8 stickerRenderer:(id)a9;
- (AVTAvatarAttributeEditorModelManagerDelegate)delegate;
- (AVTMemoji)avatar;
- (BOOL)primaryColorOfCategory:(int64_t)a3 doesMatchColorOfDependentCategory:(int64_t)a4;
- (BOOL)shouldDisplaySectionForCategory:(int64_t)a3;
- (BOOL)shouldDisplaySectionWithDisplayCondition:(id)a3 inCategoryAtIndex:(unint64_t)a4;
- (id)buildInitialEditorState;
- (id)buildUIModelWithSelectedCategory:(id)a3 atIndex:(unint64_t)a4;
- (void)applyConfigurationToAvatar:(id)a3 animated:(BOOL)a4;
- (void)applyPairColorUpdateIfNeeded:(id)a3 forCategoryRight:(int64_t)a4 categoryLeft:(int64_t)a5;
- (void)applyPairColorUpdatesIfNeeded:(id)a3;
- (void)buildIntitialColorsState;
- (void)flushResourcesForEnteringBackground;
- (void)loadResourcesIfNeeded;
- (void)setInitialColorStateForColorPicker:(id)a3 forMulticolor:(BOOL)a4;
- (void)updateAvatarByApplyingPresetOverrides:(id)a3 animated:(BOOL)a4;
- (void)updateAvatarByDeletingSectionItems:(id)a3 animated:(BOOL)a4;
- (void)updateAvatarBySelectingSectionItem:(id)a3 animated:(BOOL)a4;
- (void)updateAvatarBySelectingSupplementalPickerItem:(id)a3 animated:(BOOL)a4;
- (void)updateAvatarRecordFromAvatar;
- (void)updateAvatarWithAvatarUpdater:(id)a3 animated:(BOOL)a4;
- (void)updateEditorStateBySelectingSectionItem:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTAvatarAttributeEditorModelManager

- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)a3
{
  v4 = a3;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [v5 editorCoreModel];
  v7 = objc_alloc_init(AVTColorLayerProvider);
  v8 = [(AVTAvatarAttributeEditorModelManager *)self initWithAvatarRecord:v4 coreModel:v6 imageProvider:0 colorLayerProvider:v7 preloader:0 environment:v5 stickerRenderer:0];

  return v8;
}

- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)a3 coreModel:(id)a4 imageProvider:(id)a5 colorLayerProvider:(id)a6 preloader:(id)a7 environment:(id)a8 stickerRenderer:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [AVTAvatarEditorColorsState alloc];
  v23 = [v20 colors];
  v24 = [v23 variationStore];
  v25 = [(AVTAvatarEditorColorsState *)v22 initWithVariationStore:v24];

  v26 = [(AVTAvatarAttributeEditorModelManager *)self initWithAvatarRecord:v21 coreModel:v20 editorColorsState:v25 imageProvider:v19 colorLayerProvider:v18 preloader:v17 environment:v16 stickerRenderer:v15];
  return v26;
}

- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)a3 coreModel:(id)a4 editorColorsState:(id)a5 imageProvider:(id)a6 colorLayerProvider:(id)a7 preloader:(id)a8 environment:(id)a9 stickerRenderer:(id)a10
{
  v16 = a3;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v17 = a9;
  v31 = a10;
  v37.receiver = self;
  v37.super_class = AVTAvatarAttributeEditorModelManager;
  v18 = [(AVTAvatarAttributeEditorModelManager *)&v37 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_environment, a9);
    objc_storeStrong(&v19->_coreModel, a4);
    objc_storeStrong(&v19->_colorsState, a5);
    v20 = [v16 copy];
    avatarRecord = v19->_avatarRecord;
    v19->_avatarRecord = v20;

    v22 = [MEMORY[0x1E698E328] memojiForRecord:v16 usageIntent:4];
    avatar = v19->_avatar;
    v19->_avatar = v22;

    v24 = [AVTAvatarConfiguration configurationFromAvatar:v19->_avatar coreModel:v36];
    avatarConfiguration = v19->_avatarConfiguration;
    v19->_avatarConfiguration = v24;

    objc_storeStrong(&v19->_imageProvider, a6);
    objc_storeStrong(&v19->_colorLayerProvider, a7);
    objc_storeStrong(&v19->_stickerRenderer, a10);
    objc_storeStrong(&v19->_preloader, a8);
    v26 = [v17 logger];
    logger = v19->_logger;
    v19->_logger = v26;

    v28 = [(AVTAvatarAttributeEditorModelManager *)v19 buildInitialEditorState];
    editorState = v19->_editorState;
    v19->_editorState = v28;

    [(AVTAvatarAttributeEditorModelManager *)v19 buildIntitialColorsState];
  }

  return v19;
}

- (AVTMemoji)avatar
{
  [(AVTAvatarAttributeEditorModelManager *)self loadResourcesIfNeeded];
  avatar = self->_avatar;

  return avatar;
}

- (void)flushResourcesForEnteringBackground
{
  avatar = self->_avatar;
  self->_avatar = 0;

  v4 = [(AVTAvatarAttributeEditorModelManager *)self environment];
  [v4 flushResourcesForEnteringBackground];
}

- (void)loadResourcesIfNeeded
{
  if (!self->_avatar)
  {
    v4 = MEMORY[0x1E698E328];
    v5 = [(AVTAvatarAttributeEditorModelManager *)self avatarRecord];
    v6 = [v4 memojiForRecord:v5 usageIntent:4];

    v7 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    [v7 applyToAvatar:v6 animated:0];

    avatar = self->_avatar;
    self->_avatar = v6;
  }
}

- (void)buildIntitialColorsState
{
  v49 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = [(AVTAvatarAttributeEditorModelManager *)self coreModel];
  v4 = [v3 groups];

  obj = v4;
  v22 = [v4 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v22)
  {
    v21 = *v42;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v41 + 1) + 8 * v5);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v24 = [v6 categories];
        v26 = [v24 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v26)
        {
          v25 = *v38;
          do
          {
            v7 = 0;
            do
            {
              if (*v38 != v25)
              {
                objc_enumerationMutation(v24);
              }

              v27 = v7;
              v8 = *(*(&v37 + 1) + 8 * v7);
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v28 = [v8 pickers];
              v9 = [v28 countByEnumeratingWithState:&v33 objects:v46 count:16];
              if (v9)
              {
                v10 = v9;
                v11 = *v34;
                do
                {
                  v12 = 0;
                  do
                  {
                    if (*v34 != v11)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v13 = *(*(&v33 + 1) + 8 * v12);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v14 = v13;
                      v29 = 0u;
                      v30 = 0u;
                      v31 = 0u;
                      v32 = 0u;
                      v15 = [v14 subpickers];
                      v16 = [v15 countByEnumeratingWithState:&v29 objects:v45 count:16];
                      if (v16)
                      {
                        v17 = v16;
                        v18 = *v30;
                        do
                        {
                          v19 = 0;
                          do
                          {
                            if (*v30 != v18)
                            {
                              objc_enumerationMutation(v15);
                            }

                            [(AVTAvatarAttributeEditorModelManager *)self setInitialColorStateForColorPicker:*(*(&v29 + 1) + 8 * v19++) forMulticolor:1];
                          }

                          while (v17 != v19);
                          v17 = [v15 countByEnumeratingWithState:&v29 objects:v45 count:16];
                        }

                        while (v17);
                      }
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(AVTAvatarAttributeEditorModelManager *)self setInitialColorStateForColorPicker:v13 forMulticolor:0];
                      }
                    }

                    ++v12;
                  }

                  while (v12 != v10);
                  v10 = [v28 countByEnumeratingWithState:&v33 objects:v46 count:16];
                }

                while (v10);
              }

              v7 = v27 + 1;
            }

            while (v27 + 1 != v26);
            v26 = [v24 countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v26);
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v22);
  }
}

- (BOOL)primaryColorOfCategory:(int64_t)a3 doesMatchColorOfDependentCategory:(int64_t)a4
{
  v7 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v8 = [v7 colorPresetForSettingKind:{1, a3}];

  v9 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v10 = [v9 colorPresetForSettingKind:{1, a4}];

  v11 = [v8 colorPreset];
  v12 = [v11 name];
  v13 = [v10 colorPreset];
  v14 = [v13 name];
  if ([v12 isEqualToString:v14])
  {
    v15 = [v8 colorPreset];
    [v15 variation];
    v17 = v16;
    v18 = [v10 colorPreset];
    [v18 variation];
    v20 = v17 == v19;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setInitialColorStateForColorPicker:(id)a3 forMulticolor:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [v15 colorCategory] == 15 && -[AVTAvatarAttributeEditorModelManager primaryColorOfCategory:doesMatchColorOfDependentCategory:](self, "primaryColorOfCategory:doesMatchColorOfDependentCategory:", 1, 15);
  if ([v15 colorCategory] == 16)
  {
    v7 = [(AVTAvatarAttributeEditorModelManager *)self primaryColorOfCategory:2 doesMatchColorOfDependentCategory:16];
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (v6 || v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v8 = [v15 destination];
  v9 = [v15 colorCategory];
  v10 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v11 = [v10 colorPresetForSettingKind:{v8, v9}];

  v12 = [(AVTAvatarAttributeEditorModelManager *)self colorsState];
  v13 = [v11 colorPreset];
  v14 = [v11 color];
  [v12 setSelectedColorPreset:v13 forCoreModelColor:v14];

LABEL_10:
}

- (id)buildUIModelWithSelectedCategory:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AVTAvatarAttributeEditorModelManager *)self coreModel];
  v8 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v9 = [(AVTAvatarAttributeEditorModelManager *)self imageProvider];
  v10 = [(AVTAvatarAttributeEditorModelManager *)self colorLayerProvider];
  v11 = [(AVTAvatarAttributeEditorModelManager *)self stickerRenderer];
  v12 = [AVTAvatarAttributeEditorModelBuilder buildDataSourceCategoriesFromCoreModel:v7 selectingFromAvatarConfiguration:v8 imageProvider:v9 colorLayerProvider:v10 stickerRenderer:v11 modelManager:self withSelectedCategory:v6 atIndex:a4];

  return v12;
}

- (id)buildInitialEditorState
{
  v3 = [(AVTAvatarAttributeEditorModelManager *)self coreModel];
  v4 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v5 = [AVTAvatarAttributeEditorState buildStateFromCoreModel:v3 avatarConfiguration:v4];

  return v5;
}

- (void)updateAvatarRecordFromAvatar
{
  v3 = [(AVTAvatarAttributeEditorModelManager *)self avatar];
  v5 = [v3 dataRepresentation];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't encode avatar"];
  }

  v4 = [(AVTAvatarAttributeEditorModelManager *)self avatarRecord];
  [v4 setAvatarData:v5];
}

- (void)updateEditorStateBySelectingSectionItem:(id)a3 animated:(BOOL)a4
{
  v13 = a3;
  v5 = [v13 conformsToProtocol:&unk_1F39ECD80];
  v6 = v13;
  if (v5)
  {
    v7 = v13;
    v8 = [v7 editorStateUpdater];
    if (v8)
    {
      v9 = v8;
      v10 = [(AVTAvatarAttributeEditorModelManager *)self editorState];

      if (v10)
      {
        v11 = [v7 editorStateUpdater];
        v12 = [(AVTAvatarAttributeEditorModelManager *)self editorState];
        (v11)[2](v11, v12);
      }
    }

    v6 = v13;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)updateAvatarBySelectingSectionItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([v7 conformsToProtocol:&unk_1F39BBC08])
  {
    v6 = [v7 avatarUpdater];
    [(AVTAvatarAttributeEditorModelManager *)self updateAvatarWithAvatarUpdater:v6 animated:v4];
  }
}

- (void)updateAvatarByDeletingSectionItems:(id)a3 animated:(BOOL)a4
{
  v17 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v11}];
        }

        v12 = v11;
        v13 = [v12 removalUpdater];

        if (v13)
        {
          v14 = [v12 removalUpdater];
          v15 = MEMORY[0x1BFB0DE80]();
          [v5 addObject:v15];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [AVTAvatarUpdaterFactory updaterForAggregatingUpdaters:v5];
  [(AVTAvatarAttributeEditorModelManager *)self updateAvatarWithAvatarUpdater:v16 animated:v17];
  [(AVTAvatarAttributeEditorModelManager *)self updateAvatarRecordFromAvatar];
}

- (void)updateAvatarBySelectingSupplementalPickerItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  v6 = [v13 editorUpdater];
  if (v6)
  {
    v7 = v6;
    v8 = [(AVTAvatarAttributeEditorModelManager *)self editorState];

    if (v8)
    {
      v9 = [v13 editorUpdater];
      v10 = [(AVTAvatarAttributeEditorModelManager *)self editorState];
      (v9)[2](v9, v10);
    }
  }

  v11 = [v13 avatarUpdater];

  if (v11)
  {
    v12 = [v13 avatarUpdater];
    [(AVTAvatarAttributeEditorModelManager *)self updateAvatarWithAvatarUpdater:v12 animated:v4];
  }
}

- (void)updateAvatarWithAvatarUpdater:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v12 = v6;
    v7 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    v8 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    v12[2](v12, v8);

    v9 = [(AVTAvatarAttributeEditorModelManager *)self presetOverriddenConfiguration];

    if (v9)
    {
      v10 = [(AVTAvatarAttributeEditorModelManager *)self presetOverriddenConfiguration];

      v11 = [(AVTAvatarAttributeEditorModelManager *)self presetOverriddenConfiguration];
      v12[2](v12, v11);

      v7 = v10;
    }

    [(AVTAvatarAttributeEditorModelManager *)self applyConfigurationToAvatar:v7 animated:v4];
    [(AVTAvatarAttributeEditorModelManager *)self updateAvatarRecordFromAvatar];

    v6 = v12;
  }
}

- (void)updateAvatarByApplyingPresetOverrides:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    v8 = [v7 copy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 addPreset:{*(*(&v16 + 1) + 8 * i), v16}];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [(AVTAvatarAttributeEditorModelManager *)self setPresetOverriddenConfiguration:v8];
    v14 = [(AVTAvatarAttributeEditorModelManager *)self presetOverriddenConfiguration];
    [(AVTAvatarAttributeEditorModelManager *)self applyConfigurationToAvatar:v14 animated:v4];
  }

  else
  {
    [(AVTAvatarAttributeEditorModelManager *)self setPresetOverriddenConfiguration:0];
    v15 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    [(AVTAvatarAttributeEditorModelManager *)self applyConfigurationToAvatar:v15 animated:1];

    [(AVTAvatarAttributeEditorModelManager *)self updateAvatarRecordFromAvatar];
  }
}

- (void)applyPairColorUpdateIfNeeded:(id)a3 forCategoryRight:(int64_t)a4 categoryLeft:(int64_t)a5
{
  v8 = a3;
  v9 = AVTAvatarSettingColorIndexForColorDestination(1);
  v10 = [(AVTAvatarAttributeEditorModelManager *)self avatar];
  v32 = [v10 colorPresetForCategory:a4 colorIndex:v9];

  v11 = [(AVTAvatarAttributeEditorModelManager *)self avatar];
  v12 = [v11 colorPresetForCategory:a5 colorIndex:v9];

  v13 = [v8 colorPresetForSettingKind:{1, a4}];
  v14 = [v13 colorPreset];

  v15 = [v8 colorPresetForSettingKind:{1, a5}];

  v16 = [v15 colorPreset];

  if (v14 | v32)
  {
    v17 = [v14 name];
    v18 = [v32 name];
    if ([v17 isEqualToString:v18] && (objc_msgSend(v14, "variation"), v20 = v19, objc_msgSend(v32, "variation"), v20 == v21) || !(v16 | v12))
    {
    }

    else
    {
      v22 = [v16 name];
      v23 = [v12 name];
      v31 = v22;
      v24 = v22;
      v25 = v23;
      if ([v24 isEqualToString:v23])
      {
        [v16 variation];
        v27 = v26;
        [v12 variation];
        v29 = v28;

        if (v27 == v29)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v30 = [(AVTAvatarAttributeEditorModelManager *)self avatar];
      [v30 setColorPreset:v14 forCategory:a4 colorIndex:v9];

      v17 = [(AVTAvatarAttributeEditorModelManager *)self avatar];
      [v17 setColorPreset:v16 forCategory:a5 colorIndex:v9];
    }
  }

LABEL_12:
}

- (void)applyPairColorUpdatesIfNeeded:(id)a3
{
  v4 = a3;
  [(AVTAvatarAttributeEditorModelManager *)self applyPairColorUpdateIfNeeded:v4 forCategoryRight:31 categoryLeft:30];
  [(AVTAvatarAttributeEditorModelManager *)self applyPairColorUpdateIfNeeded:v4 forCategoryRight:26 categoryLeft:25];
}

- (void)applyConfigurationToAvatar:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(AVTAvatarAttributeEditorModelManager *)self applyPairColorUpdatesIfNeeded:v6];
  v7 = [(AVTAvatarAttributeEditorModelManager *)self logger];
  v8 = [v6 description];
  [v7 logUpdatingLiveAvatarWithConfiguration:v8];

  v9 = [(AVTAvatarAttributeEditorModelManager *)self avatar];
  [v6 applyToAvatar:v9 animated:v4];
}

- (BOOL)shouldDisplaySectionForCategory:(int64_t)a3
{
  v5 = [(AVTAvatarAttributeEditorModelManager *)self editorState];
  v6 = [v5 isCategoryPaired:a3];

  v7 = [(AVTAvatarAttributeEditorModelManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(AVTAvatarAttributeEditorModelManager *)self delegate];
    v9 = [v8 shouldDisplaySectionForCategory:a3];
  }

  else
  {
    v9 = 1;
  }

  return (v6 ^ 1) & v9;
}

- (BOOL)shouldDisplaySectionWithDisplayCondition:(id)a3 inCategoryAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AVTAvatarAttributeEditorModelManager *)self delegate];
  v8 = [v7 conformsToProtocol:&unk_1F39D17F0];

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = [(AVTAvatarAttributeEditorModelManager *)self delegate];
    [v9 raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v10}];
  }

  v11 = [(AVTAvatarAttributeEditorModelManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 shouldDisplaySectionWithDisplayCondition:v6 inCategoryAtIndex:a4];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (AVTAvatarAttributeEditorModelManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end