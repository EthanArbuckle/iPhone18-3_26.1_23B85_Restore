@interface AVTAvatarAttributeEditorState
+ (id)buildStateFromCoreModel:(id)model avatarConfiguration:(id)configuration;
- (AVTAvatarAttributeEditorState)initWithPairedStates:(id)states multicolorEnabledStates:(id)enabledStates multicolorSelectedStates:(id)selectedStates;
- (BOOL)isCategoryPaired:(int64_t)paired;
- (int64_t)enabledMulticolorSubpickersIndexForMulticolorPickerIdentifier:(id)identifier;
- (int64_t)selectedMulticolorSubpickersIndexForMulticolorPickerIdentifier:(id)identifier;
- (void)setCategory:(int64_t)category inPairedState:(BOOL)state;
- (void)setEnabledMulticolorSubpickersIndex:(int64_t)index forMulticolorPickerIdentifier:(id)identifier;
- (void)setSelectedMulticolorSubpickersIndex:(int64_t)index forMulticolorPickerIdentifier:(id)identifier;
@end

@implementation AVTAvatarAttributeEditorState

+ (id)buildStateFromCoreModel:(id)model avatarConfiguration:(id)configuration
{
  v97 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  configurationCopy = configuration;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v55 = modelCopy;
  obj = [modelCopy groups];
  v58 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
  if (v58)
  {
    v57 = *v90;
    v72 = configurationCopy;
    do
    {
      v7 = 0;
      do
      {
        if (*v90 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v7;
        v8 = *(*(&v89 + 1) + 8 * v7);
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        categories = [v8 categories];
        v63 = [categories countByEnumeratingWithState:&v85 objects:v95 count:16];
        if (v63)
        {
          v62 = *v86;
          do
          {
            v9 = 0;
            do
            {
              if (*v86 != v62)
              {
                objc_enumerationMutation(categories);
              }

              v64 = v9;
              v10 = *(*(&v85 + 1) + 8 * v9);
              pairing = [v10 pairing];

              if (pairing)
              {
                v12 = [configurationCopy presetForCategory:{objc_msgSend(v10, "presetCategory")}];
                [v10 pairing];
                v14 = v13 = configurationCopy;
                v15 = [v13 presetForCategory:{objc_msgSend(v14, "pairedCategory")}];

                identifier = [v12 identifier];
                identifier2 = [v15 identifier];
                v18 = [identifier isEqualToString:identifier2];

                if (v18)
                {
                  v19 = MEMORY[0x1E696AD98];
                  pairing2 = [v10 pairing];
                  v21 = [v19 numberWithInteger:{objc_msgSend(pairing2, "pairedCategory")}];
                  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v21];
                }

                configurationCopy = v72;
              }

              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              pickers = [v10 pickers];
              v22 = [pickers countByEnumeratingWithState:&v81 objects:v94 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v82;
                v65 = *v82;
                do
                {
                  v25 = 0;
                  v66 = v23;
                  do
                  {
                    if (*v82 != v24)
                    {
                      objc_enumerationMutation(pickers);
                    }

                    v26 = *(*(&v81 + 1) + 8 * v25);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v27 = v26;
                      v77 = 0u;
                      v78 = 0u;
                      v79 = 0u;
                      v80 = 0u;
                      subpickers = [v27 subpickers];
                      v28 = [subpickers countByEnumeratingWithState:&v77 objects:v93 count:16];
                      if (v28)
                      {
                        v69 = v27;
                        v70 = v25;
                        v29 = 0;
                        v30 = 0;
                        v31 = *v78;
                        v32 = -1;
                        v73 = *v78;
                        do
                        {
                          v33 = 0;
                          v71 = v30 + v28;
                          v34 = v29;
                          v35 = v32;
                          v76 = v28;
                          do
                          {
                            if (*v78 != v31)
                            {
                              objc_enumerationMutation(subpickers);
                            }

                            v36 = *(*(&v77 + 1) + 8 * v33);
                            v29 = [configurationCopy colorPresetForSettingKind:{objc_msgSend(v36, "destination"), objc_msgSend(v36, "colorCategory")}];
                            if ([v36 destination] != 1 || v34 == 0)
                            {
                              v32 = v30;
                              if (!v29)
                              {
                                v29 = v34;
                                v32 = v35;
                                goto LABEL_40;
                              }
                            }

                            else
                            {
                              colorPreset = [v34 colorPreset];
                              name = [colorPreset name];
                              colorPreset2 = [v29 colorPreset];
                              name2 = [colorPreset2 name];
                              v41 = [name isEqualToString:name2];
                              v32 = v30;
                              if (v41)
                              {
                                colorPreset3 = [v34 colorPreset];
                                [colorPreset3 variation];
                                v44 = v43;
                                colorPreset4 = [v29 colorPreset];
                                [colorPreset4 variation];
                                v47 = v46;

                                configurationCopy = v72;
                                if (v44 == v47)
                                {
                                  v32 = v35;
                                }

                                else
                                {
                                  v32 = v30;
                                }
                              }

                              v31 = v73;
                            }

                            ++v30;

                            ++v33;
                            v34 = v29;
                            v35 = v32;
                          }

                          while (v76 != v33);
                          v28 = [subpickers countByEnumeratingWithState:&v77 objects:v93 count:16];
                          v30 = v71;
                        }

                        while (v28);
LABEL_40:

                        v24 = v65;
                        v23 = v66;
                        v27 = v69;
                        v25 = v70;
                      }

                      else
                      {
                        v32 = -1;
                      }

                      initialState = [v27 initialState];
                      if (initialState <= v32)
                      {
                        v49 = v32;
                      }

                      else
                      {
                        v49 = initialState;
                      }

                      v50 = [MEMORY[0x1E696AD98] numberWithInteger:v49];
                      identifier3 = [v27 identifier];
                      [dictionary2 setObject:v50 forKeyedSubscript:identifier3];
                    }

                    ++v25;
                  }

                  while (v25 != v23);
                  v23 = [pickers countByEnumeratingWithState:&v81 objects:v94 count:16];
                }

                while (v23);
              }

              v9 = v64 + 1;
            }

            while (v64 + 1 != v63);
            v63 = [categories countByEnumeratingWithState:&v85 objects:v95 count:16];
          }

          while (v63);
        }

        v7 = v59 + 1;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
    }

    while (v58);
  }

  v52 = [AVTAvatarAttributeEditorState alloc];
  v53 = [(AVTAvatarAttributeEditorState *)v52 initWithPairedStates:dictionary multicolorEnabledStates:dictionary2 multicolorSelectedStates:MEMORY[0x1E695E0F8]];

  return v53;
}

- (AVTAvatarAttributeEditorState)initWithPairedStates:(id)states multicolorEnabledStates:(id)enabledStates multicolorSelectedStates:(id)selectedStates
{
  statesCopy = states;
  enabledStatesCopy = enabledStates;
  selectedStatesCopy = selectedStates;
  v19.receiver = self;
  v19.super_class = AVTAvatarAttributeEditorState;
  v11 = [(AVTAvatarAttributeEditorState *)&v19 init];
  if (v11)
  {
    v12 = [statesCopy mutableCopy];
    pairedStates = v11->_pairedStates;
    v11->_pairedStates = v12;

    v14 = [enabledStatesCopy mutableCopy];
    multicolorEnabledStates = v11->_multicolorEnabledStates;
    v11->_multicolorEnabledStates = v14;

    v16 = [selectedStatesCopy mutableCopy];
    multicolorSelectedStates = v11->_multicolorSelectedStates;
    v11->_multicolorSelectedStates = v16;
  }

  return v11;
}

- (BOOL)isCategoryPaired:(int64_t)paired
{
  pairedStates = [(AVTAvatarAttributeEditorState *)self pairedStates];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:paired];
  v6 = [pairedStates objectForKeyedSubscript:v5];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setCategory:(int64_t)category inPairedState:(BOOL)state
{
  v8 = [MEMORY[0x1E696AD98] numberWithBool:state];
  pairedStates = [(AVTAvatarAttributeEditorState *)self pairedStates];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  [pairedStates setObject:v8 forKeyedSubscript:v7];
}

- (int64_t)enabledMulticolorSubpickersIndexForMulticolorPickerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  multicolorEnabledStates = [(AVTAvatarAttributeEditorState *)self multicolorEnabledStates];
  v6 = [multicolorEnabledStates objectForKeyedSubscript:identifierCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (void)setEnabledMulticolorSubpickersIndex:(int64_t)index forMulticolorPickerIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E696AD98];
  identifierCopy = identifier;
  v9 = [v6 numberWithInteger:index];
  multicolorEnabledStates = [(AVTAvatarAttributeEditorState *)self multicolorEnabledStates];
  [multicolorEnabledStates setObject:v9 forKeyedSubscript:identifierCopy];
}

- (int64_t)selectedMulticolorSubpickersIndexForMulticolorPickerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  multicolorSelectedStates = [(AVTAvatarAttributeEditorState *)self multicolorSelectedStates];
  v6 = [multicolorSelectedStates objectForKeyedSubscript:identifierCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (void)setSelectedMulticolorSubpickersIndex:(int64_t)index forMulticolorPickerIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E696AD98];
  identifierCopy = identifier;
  v9 = [v6 numberWithInteger:index];
  multicolorSelectedStates = [(AVTAvatarAttributeEditorState *)self multicolorSelectedStates];
  [multicolorSelectedStates setObject:v9 forKeyedSubscript:identifierCopy];
}

@end