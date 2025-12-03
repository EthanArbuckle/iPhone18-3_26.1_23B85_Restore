@interface AVTAvatarAttributeEditorModelManager
- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)record;
- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)record coreModel:(id)model editorColorsState:(id)state imageProvider:(id)provider colorLayerProvider:(id)layerProvider preloader:(id)preloader environment:(id)environment stickerRenderer:(id)self0;
- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)record coreModel:(id)model imageProvider:(id)provider colorLayerProvider:(id)layerProvider preloader:(id)preloader environment:(id)environment stickerRenderer:(id)renderer;
- (AVTAvatarAttributeEditorModelManagerDelegate)delegate;
- (AVTMemoji)avatar;
- (BOOL)primaryColorOfCategory:(int64_t)category doesMatchColorOfDependentCategory:(int64_t)dependentCategory;
- (BOOL)shouldDisplaySectionForCategory:(int64_t)category;
- (BOOL)shouldDisplaySectionWithDisplayCondition:(id)condition inCategoryAtIndex:(unint64_t)index;
- (id)buildInitialEditorState;
- (id)buildUIModelWithSelectedCategory:(id)category atIndex:(unint64_t)index;
- (void)applyConfigurationToAvatar:(id)avatar animated:(BOOL)animated;
- (void)applyPairColorUpdateIfNeeded:(id)needed forCategoryRight:(int64_t)right categoryLeft:(int64_t)left;
- (void)applyPairColorUpdatesIfNeeded:(id)needed;
- (void)buildIntitialColorsState;
- (void)flushResourcesForEnteringBackground;
- (void)loadResourcesIfNeeded;
- (void)setInitialColorStateForColorPicker:(id)picker forMulticolor:(BOOL)multicolor;
- (void)updateAvatarByApplyingPresetOverrides:(id)overrides animated:(BOOL)animated;
- (void)updateAvatarByDeletingSectionItems:(id)items animated:(BOOL)animated;
- (void)updateAvatarBySelectingSectionItem:(id)item animated:(BOOL)animated;
- (void)updateAvatarBySelectingSupplementalPickerItem:(id)item animated:(BOOL)animated;
- (void)updateAvatarRecordFromAvatar;
- (void)updateAvatarWithAvatarUpdater:(id)updater animated:(BOOL)animated;
- (void)updateEditorStateBySelectingSectionItem:(id)item animated:(BOOL)animated;
@end

@implementation AVTAvatarAttributeEditorModelManager

- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)record
{
  recordCopy = record;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  editorCoreModel = [v5 editorCoreModel];
  v7 = objc_alloc_init(AVTColorLayerProvider);
  v8 = [(AVTAvatarAttributeEditorModelManager *)self initWithAvatarRecord:recordCopy coreModel:editorCoreModel imageProvider:0 colorLayerProvider:v7 preloader:0 environment:v5 stickerRenderer:0];

  return v8;
}

- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)record coreModel:(id)model imageProvider:(id)provider colorLayerProvider:(id)layerProvider preloader:(id)preloader environment:(id)environment stickerRenderer:(id)renderer
{
  rendererCopy = renderer;
  environmentCopy = environment;
  preloaderCopy = preloader;
  layerProviderCopy = layerProvider;
  providerCopy = provider;
  modelCopy = model;
  recordCopy = record;
  v22 = [AVTAvatarEditorColorsState alloc];
  colors = [modelCopy colors];
  variationStore = [colors variationStore];
  v25 = [(AVTAvatarEditorColorsState *)v22 initWithVariationStore:variationStore];

  v26 = [(AVTAvatarAttributeEditorModelManager *)self initWithAvatarRecord:recordCopy coreModel:modelCopy editorColorsState:v25 imageProvider:providerCopy colorLayerProvider:layerProviderCopy preloader:preloaderCopy environment:environmentCopy stickerRenderer:rendererCopy];
  return v26;
}

- (AVTAvatarAttributeEditorModelManager)initWithAvatarRecord:(id)record coreModel:(id)model editorColorsState:(id)state imageProvider:(id)provider colorLayerProvider:(id)layerProvider preloader:(id)preloader environment:(id)environment stickerRenderer:(id)self0
{
  recordCopy = record;
  modelCopy = model;
  stateCopy = state;
  providerCopy = provider;
  layerProviderCopy = layerProvider;
  preloaderCopy = preloader;
  environmentCopy = environment;
  rendererCopy = renderer;
  v37.receiver = self;
  v37.super_class = AVTAvatarAttributeEditorModelManager;
  v18 = [(AVTAvatarAttributeEditorModelManager *)&v37 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_environment, environment);
    objc_storeStrong(&v19->_coreModel, model);
    objc_storeStrong(&v19->_colorsState, state);
    v20 = [recordCopy copy];
    avatarRecord = v19->_avatarRecord;
    v19->_avatarRecord = v20;

    v22 = [MEMORY[0x1E698E328] memojiForRecord:recordCopy usageIntent:4];
    avatar = v19->_avatar;
    v19->_avatar = v22;

    v24 = [AVTAvatarConfiguration configurationFromAvatar:v19->_avatar coreModel:modelCopy];
    avatarConfiguration = v19->_avatarConfiguration;
    v19->_avatarConfiguration = v24;

    objc_storeStrong(&v19->_imageProvider, provider);
    objc_storeStrong(&v19->_colorLayerProvider, layerProvider);
    objc_storeStrong(&v19->_stickerRenderer, renderer);
    objc_storeStrong(&v19->_preloader, preloader);
    logger = [environmentCopy logger];
    logger = v19->_logger;
    v19->_logger = logger;

    buildInitialEditorState = [(AVTAvatarAttributeEditorModelManager *)v19 buildInitialEditorState];
    editorState = v19->_editorState;
    v19->_editorState = buildInitialEditorState;

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

  environment = [(AVTAvatarAttributeEditorModelManager *)self environment];
  [environment flushResourcesForEnteringBackground];
}

- (void)loadResourcesIfNeeded
{
  if (!self->_avatar)
  {
    v4 = MEMORY[0x1E698E328];
    avatarRecord = [(AVTAvatarAttributeEditorModelManager *)self avatarRecord];
    v6 = [v4 memojiForRecord:avatarRecord usageIntent:4];

    avatarConfiguration = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    [avatarConfiguration applyToAvatar:v6 animated:0];

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
  coreModel = [(AVTAvatarAttributeEditorModelManager *)self coreModel];
  groups = [coreModel groups];

  obj = groups;
  v22 = [groups countByEnumeratingWithState:&v41 objects:v48 count:16];
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
        categories = [v6 categories];
        v26 = [categories countByEnumeratingWithState:&v37 objects:v47 count:16];
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
                objc_enumerationMutation(categories);
              }

              v27 = v7;
              v8 = *(*(&v37 + 1) + 8 * v7);
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              pickers = [v8 pickers];
              v9 = [pickers countByEnumeratingWithState:&v33 objects:v46 count:16];
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
                      objc_enumerationMutation(pickers);
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
                      subpickers = [v14 subpickers];
                      v16 = [subpickers countByEnumeratingWithState:&v29 objects:v45 count:16];
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
                              objc_enumerationMutation(subpickers);
                            }

                            [(AVTAvatarAttributeEditorModelManager *)self setInitialColorStateForColorPicker:*(*(&v29 + 1) + 8 * v19++) forMulticolor:1];
                          }

                          while (v17 != v19);
                          v17 = [subpickers countByEnumeratingWithState:&v29 objects:v45 count:16];
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
                  v10 = [pickers countByEnumeratingWithState:&v33 objects:v46 count:16];
                }

                while (v10);
              }

              v7 = v27 + 1;
            }

            while (v27 + 1 != v26);
            v26 = [categories countByEnumeratingWithState:&v37 objects:v47 count:16];
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

- (BOOL)primaryColorOfCategory:(int64_t)category doesMatchColorOfDependentCategory:(int64_t)dependentCategory
{
  avatarConfiguration = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v8 = [avatarConfiguration colorPresetForSettingKind:{1, category}];

  avatarConfiguration2 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v10 = [avatarConfiguration2 colorPresetForSettingKind:{1, dependentCategory}];

  colorPreset = [v8 colorPreset];
  name = [colorPreset name];
  colorPreset2 = [v10 colorPreset];
  name2 = [colorPreset2 name];
  if ([name isEqualToString:name2])
  {
    colorPreset3 = [v8 colorPreset];
    [colorPreset3 variation];
    v17 = v16;
    colorPreset4 = [v10 colorPreset];
    [colorPreset4 variation];
    v20 = v17 == v19;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setInitialColorStateForColorPicker:(id)picker forMulticolor:(BOOL)multicolor
{
  multicolorCopy = multicolor;
  pickerCopy = picker;
  v6 = [pickerCopy colorCategory] == 15 && -[AVTAvatarAttributeEditorModelManager primaryColorOfCategory:doesMatchColorOfDependentCategory:](self, "primaryColorOfCategory:doesMatchColorOfDependentCategory:", 1, 15);
  if ([pickerCopy colorCategory] == 16)
  {
    v7 = [(AVTAvatarAttributeEditorModelManager *)self primaryColorOfCategory:2 doesMatchColorOfDependentCategory:16];
    if (!multicolorCopy)
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
  if (multicolorCopy)
  {
    goto LABEL_8;
  }

LABEL_9:
  destination = [pickerCopy destination];
  colorCategory = [pickerCopy colorCategory];
  avatarConfiguration = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v11 = [avatarConfiguration colorPresetForSettingKind:{destination, colorCategory}];

  colorsState = [(AVTAvatarAttributeEditorModelManager *)self colorsState];
  colorPreset = [v11 colorPreset];
  color = [v11 color];
  [colorsState setSelectedColorPreset:colorPreset forCoreModelColor:color];

LABEL_10:
}

- (id)buildUIModelWithSelectedCategory:(id)category atIndex:(unint64_t)index
{
  categoryCopy = category;
  coreModel = [(AVTAvatarAttributeEditorModelManager *)self coreModel];
  avatarConfiguration = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  imageProvider = [(AVTAvatarAttributeEditorModelManager *)self imageProvider];
  colorLayerProvider = [(AVTAvatarAttributeEditorModelManager *)self colorLayerProvider];
  stickerRenderer = [(AVTAvatarAttributeEditorModelManager *)self stickerRenderer];
  v12 = [AVTAvatarAttributeEditorModelBuilder buildDataSourceCategoriesFromCoreModel:coreModel selectingFromAvatarConfiguration:avatarConfiguration imageProvider:imageProvider colorLayerProvider:colorLayerProvider stickerRenderer:stickerRenderer modelManager:self withSelectedCategory:categoryCopy atIndex:index];

  return v12;
}

- (id)buildInitialEditorState
{
  coreModel = [(AVTAvatarAttributeEditorModelManager *)self coreModel];
  avatarConfiguration = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
  v5 = [AVTAvatarAttributeEditorState buildStateFromCoreModel:coreModel avatarConfiguration:avatarConfiguration];

  return v5;
}

- (void)updateAvatarRecordFromAvatar
{
  avatar = [(AVTAvatarAttributeEditorModelManager *)self avatar];
  dataRepresentation = [avatar dataRepresentation];

  if (!dataRepresentation)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't encode avatar"];
  }

  avatarRecord = [(AVTAvatarAttributeEditorModelManager *)self avatarRecord];
  [avatarRecord setAvatarData:dataRepresentation];
}

- (void)updateEditorStateBySelectingSectionItem:(id)item animated:(BOOL)animated
{
  itemCopy = item;
  v5 = [itemCopy conformsToProtocol:&unk_1F39ECD80];
  v6 = itemCopy;
  if (v5)
  {
    v7 = itemCopy;
    editorStateUpdater = [v7 editorStateUpdater];
    if (editorStateUpdater)
    {
      v9 = editorStateUpdater;
      editorState = [(AVTAvatarAttributeEditorModelManager *)self editorState];

      if (editorState)
      {
        editorStateUpdater2 = [v7 editorStateUpdater];
        editorState2 = [(AVTAvatarAttributeEditorModelManager *)self editorState];
        (editorStateUpdater2)[2](editorStateUpdater2, editorState2);
      }
    }

    v6 = itemCopy;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)updateAvatarBySelectingSectionItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_1F39BBC08])
  {
    avatarUpdater = [itemCopy avatarUpdater];
    [(AVTAvatarAttributeEditorModelManager *)self updateAvatarWithAvatarUpdater:avatarUpdater animated:animatedCopy];
  }
}

- (void)updateAvatarByDeletingSectionItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = itemsCopy;
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
        removalUpdater = [v12 removalUpdater];

        if (removalUpdater)
        {
          removalUpdater2 = [v12 removalUpdater];
          v15 = MEMORY[0x1BFB0DE80]();
          [array addObject:v15];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [AVTAvatarUpdaterFactory updaterForAggregatingUpdaters:array];
  [(AVTAvatarAttributeEditorModelManager *)self updateAvatarWithAvatarUpdater:v16 animated:animatedCopy];
  [(AVTAvatarAttributeEditorModelManager *)self updateAvatarRecordFromAvatar];
}

- (void)updateAvatarBySelectingSupplementalPickerItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  editorUpdater = [itemCopy editorUpdater];
  if (editorUpdater)
  {
    v7 = editorUpdater;
    editorState = [(AVTAvatarAttributeEditorModelManager *)self editorState];

    if (editorState)
    {
      editorUpdater2 = [itemCopy editorUpdater];
      editorState2 = [(AVTAvatarAttributeEditorModelManager *)self editorState];
      (editorUpdater2)[2](editorUpdater2, editorState2);
    }
  }

  avatarUpdater = [itemCopy avatarUpdater];

  if (avatarUpdater)
  {
    avatarUpdater2 = [itemCopy avatarUpdater];
    [(AVTAvatarAttributeEditorModelManager *)self updateAvatarWithAvatarUpdater:avatarUpdater2 animated:animatedCopy];
  }
}

- (void)updateAvatarWithAvatarUpdater:(id)updater animated:(BOOL)animated
{
  animatedCopy = animated;
  updaterCopy = updater;
  if (updaterCopy)
  {
    v12 = updaterCopy;
    avatarConfiguration = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    avatarConfiguration2 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    v12[2](v12, avatarConfiguration2);

    presetOverriddenConfiguration = [(AVTAvatarAttributeEditorModelManager *)self presetOverriddenConfiguration];

    if (presetOverriddenConfiguration)
    {
      presetOverriddenConfiguration2 = [(AVTAvatarAttributeEditorModelManager *)self presetOverriddenConfiguration];

      presetOverriddenConfiguration3 = [(AVTAvatarAttributeEditorModelManager *)self presetOverriddenConfiguration];
      v12[2](v12, presetOverriddenConfiguration3);

      avatarConfiguration = presetOverriddenConfiguration2;
    }

    [(AVTAvatarAttributeEditorModelManager *)self applyConfigurationToAvatar:avatarConfiguration animated:animatedCopy];
    [(AVTAvatarAttributeEditorModelManager *)self updateAvatarRecordFromAvatar];

    updaterCopy = v12;
  }
}

- (void)updateAvatarByApplyingPresetOverrides:(id)overrides animated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x1E69E9840];
  overridesCopy = overrides;
  if (overridesCopy)
  {
    avatarConfiguration = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    v8 = [avatarConfiguration copy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = overridesCopy;
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
    presetOverriddenConfiguration = [(AVTAvatarAttributeEditorModelManager *)self presetOverriddenConfiguration];
    [(AVTAvatarAttributeEditorModelManager *)self applyConfigurationToAvatar:presetOverriddenConfiguration animated:animatedCopy];
  }

  else
  {
    [(AVTAvatarAttributeEditorModelManager *)self setPresetOverriddenConfiguration:0];
    avatarConfiguration2 = [(AVTAvatarAttributeEditorModelManager *)self avatarConfiguration];
    [(AVTAvatarAttributeEditorModelManager *)self applyConfigurationToAvatar:avatarConfiguration2 animated:1];

    [(AVTAvatarAttributeEditorModelManager *)self updateAvatarRecordFromAvatar];
  }
}

- (void)applyPairColorUpdateIfNeeded:(id)needed forCategoryRight:(int64_t)right categoryLeft:(int64_t)left
{
  neededCopy = needed;
  v9 = AVTAvatarSettingColorIndexForColorDestination(1);
  avatar = [(AVTAvatarAttributeEditorModelManager *)self avatar];
  v32 = [avatar colorPresetForCategory:right colorIndex:v9];

  avatar2 = [(AVTAvatarAttributeEditorModelManager *)self avatar];
  v12 = [avatar2 colorPresetForCategory:left colorIndex:v9];

  v13 = [neededCopy colorPresetForSettingKind:{1, right}];
  colorPreset = [v13 colorPreset];

  v15 = [neededCopy colorPresetForSettingKind:{1, left}];

  colorPreset2 = [v15 colorPreset];

  if (colorPreset | v32)
  {
    name = [colorPreset name];
    name2 = [v32 name];
    if ([name isEqualToString:name2] && (objc_msgSend(colorPreset, "variation"), v20 = v19, objc_msgSend(v32, "variation"), v20 == v21) || !(colorPreset2 | v12))
    {
    }

    else
    {
      name3 = [colorPreset2 name];
      name4 = [v12 name];
      v31 = name3;
      v24 = name3;
      v25 = name4;
      if ([v24 isEqualToString:name4])
      {
        [colorPreset2 variation];
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

      avatar3 = [(AVTAvatarAttributeEditorModelManager *)self avatar];
      [avatar3 setColorPreset:colorPreset forCategory:right colorIndex:v9];

      name = [(AVTAvatarAttributeEditorModelManager *)self avatar];
      [name setColorPreset:colorPreset2 forCategory:left colorIndex:v9];
    }
  }

LABEL_12:
}

- (void)applyPairColorUpdatesIfNeeded:(id)needed
{
  neededCopy = needed;
  [(AVTAvatarAttributeEditorModelManager *)self applyPairColorUpdateIfNeeded:neededCopy forCategoryRight:31 categoryLeft:30];
  [(AVTAvatarAttributeEditorModelManager *)self applyPairColorUpdateIfNeeded:neededCopy forCategoryRight:26 categoryLeft:25];
}

- (void)applyConfigurationToAvatar:(id)avatar animated:(BOOL)animated
{
  animatedCopy = animated;
  avatarCopy = avatar;
  [(AVTAvatarAttributeEditorModelManager *)self applyPairColorUpdatesIfNeeded:avatarCopy];
  logger = [(AVTAvatarAttributeEditorModelManager *)self logger];
  v8 = [avatarCopy description];
  [logger logUpdatingLiveAvatarWithConfiguration:v8];

  avatar = [(AVTAvatarAttributeEditorModelManager *)self avatar];
  [avatarCopy applyToAvatar:avatar animated:animatedCopy];
}

- (BOOL)shouldDisplaySectionForCategory:(int64_t)category
{
  editorState = [(AVTAvatarAttributeEditorModelManager *)self editorState];
  v6 = [editorState isCategoryPaired:category];

  delegate = [(AVTAvatarAttributeEditorModelManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(AVTAvatarAttributeEditorModelManager *)self delegate];
    v9 = [delegate2 shouldDisplaySectionForCategory:category];
  }

  else
  {
    v9 = 1;
  }

  return (v6 ^ 1) & v9;
}

- (BOOL)shouldDisplaySectionWithDisplayCondition:(id)condition inCategoryAtIndex:(unint64_t)index
{
  conditionCopy = condition;
  delegate = [(AVTAvatarAttributeEditorModelManager *)self delegate];
  v8 = [delegate conformsToProtocol:&unk_1F39D17F0];

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    delegate2 = [(AVTAvatarAttributeEditorModelManager *)self delegate];
    [v9 raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", delegate2}];
  }

  delegate3 = [(AVTAvatarAttributeEditorModelManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [delegate3 shouldDisplaySectionWithDisplayCondition:conditionCopy inCategoryAtIndex:index];
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