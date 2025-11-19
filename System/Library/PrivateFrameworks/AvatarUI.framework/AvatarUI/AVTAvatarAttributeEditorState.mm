@interface AVTAvatarAttributeEditorState
+ (id)buildStateFromCoreModel:(id)a3 avatarConfiguration:(id)a4;
- (AVTAvatarAttributeEditorState)initWithPairedStates:(id)a3 multicolorEnabledStates:(id)a4 multicolorSelectedStates:(id)a5;
- (BOOL)isCategoryPaired:(int64_t)a3;
- (int64_t)enabledMulticolorSubpickersIndexForMulticolorPickerIdentifier:(id)a3;
- (int64_t)selectedMulticolorSubpickersIndexForMulticolorPickerIdentifier:(id)a3;
- (void)setCategory:(int64_t)a3 inPairedState:(BOOL)a4;
- (void)setEnabledMulticolorSubpickersIndex:(int64_t)a3 forMulticolorPickerIdentifier:(id)a4;
- (void)setSelectedMulticolorSubpickersIndex:(int64_t)a3 forMulticolorPickerIdentifier:(id)a4;
@end

@implementation AVTAvatarAttributeEditorState

+ (id)buildStateFromCoreModel:(id)a3 avatarConfiguration:(id)a4
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v60 = [MEMORY[0x1E695DF90] dictionary];
  v67 = [MEMORY[0x1E695DF90] dictionary];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v55 = v5;
  obj = [v5 groups];
  v58 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
  if (v58)
  {
    v57 = *v90;
    v72 = v6;
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
        v61 = [v8 categories];
        v63 = [v61 countByEnumeratingWithState:&v85 objects:v95 count:16];
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
                objc_enumerationMutation(v61);
              }

              v64 = v9;
              v10 = *(*(&v85 + 1) + 8 * v9);
              v11 = [v10 pairing];

              if (v11)
              {
                v12 = [v6 presetForCategory:{objc_msgSend(v10, "presetCategory")}];
                [v10 pairing];
                v14 = v13 = v6;
                v15 = [v13 presetForCategory:{objc_msgSend(v14, "pairedCategory")}];

                v16 = [v12 identifier];
                v17 = [v15 identifier];
                v18 = [v16 isEqualToString:v17];

                if (v18)
                {
                  v19 = MEMORY[0x1E696AD98];
                  v20 = [v10 pairing];
                  v21 = [v19 numberWithInteger:{objc_msgSend(v20, "pairedCategory")}];
                  [v60 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v21];
                }

                v6 = v72;
              }

              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v68 = [v10 pickers];
              v22 = [v68 countByEnumeratingWithState:&v81 objects:v94 count:16];
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
                      objc_enumerationMutation(v68);
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
                      v74 = [v27 subpickers];
                      v28 = [v74 countByEnumeratingWithState:&v77 objects:v93 count:16];
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
                              objc_enumerationMutation(v74);
                            }

                            v36 = *(*(&v77 + 1) + 8 * v33);
                            v29 = [v6 colorPresetForSettingKind:{objc_msgSend(v36, "destination"), objc_msgSend(v36, "colorCategory")}];
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
                              v75 = [v34 colorPreset];
                              v38 = [v75 name];
                              v39 = [v29 colorPreset];
                              v40 = [v39 name];
                              v41 = [v38 isEqualToString:v40];
                              v32 = v30;
                              if (v41)
                              {
                                v42 = [v34 colorPreset];
                                [v42 variation];
                                v44 = v43;
                                v45 = [v29 colorPreset];
                                [v45 variation];
                                v47 = v46;

                                v6 = v72;
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
                          v28 = [v74 countByEnumeratingWithState:&v77 objects:v93 count:16];
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

                      v48 = [v27 initialState];
                      if (v48 <= v32)
                      {
                        v49 = v32;
                      }

                      else
                      {
                        v49 = v48;
                      }

                      v50 = [MEMORY[0x1E696AD98] numberWithInteger:v49];
                      v51 = [v27 identifier];
                      [v67 setObject:v50 forKeyedSubscript:v51];
                    }

                    ++v25;
                  }

                  while (v25 != v23);
                  v23 = [v68 countByEnumeratingWithState:&v81 objects:v94 count:16];
                }

                while (v23);
              }

              v9 = v64 + 1;
            }

            while (v64 + 1 != v63);
            v63 = [v61 countByEnumeratingWithState:&v85 objects:v95 count:16];
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
  v53 = [(AVTAvatarAttributeEditorState *)v52 initWithPairedStates:v60 multicolorEnabledStates:v67 multicolorSelectedStates:MEMORY[0x1E695E0F8]];

  return v53;
}

- (AVTAvatarAttributeEditorState)initWithPairedStates:(id)a3 multicolorEnabledStates:(id)a4 multicolorSelectedStates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = AVTAvatarAttributeEditorState;
  v11 = [(AVTAvatarAttributeEditorState *)&v19 init];
  if (v11)
  {
    v12 = [v8 mutableCopy];
    pairedStates = v11->_pairedStates;
    v11->_pairedStates = v12;

    v14 = [v9 mutableCopy];
    multicolorEnabledStates = v11->_multicolorEnabledStates;
    v11->_multicolorEnabledStates = v14;

    v16 = [v10 mutableCopy];
    multicolorSelectedStates = v11->_multicolorSelectedStates;
    v11->_multicolorSelectedStates = v16;
  }

  return v11;
}

- (BOOL)isCategoryPaired:(int64_t)a3
{
  v4 = [(AVTAvatarAttributeEditorState *)self pairedStates];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)setCategory:(int64_t)a3 inPairedState:(BOOL)a4
{
  v8 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v6 = [(AVTAvatarAttributeEditorState *)self pairedStates];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (int64_t)enabledMulticolorSubpickersIndexForMulticolorPickerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorState *)self multicolorEnabledStates];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (void)setEnabledMulticolorSubpickersIndex:(int64_t)a3 forMulticolorPickerIdentifier:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v9 = [v6 numberWithInteger:a3];
  v8 = [(AVTAvatarAttributeEditorState *)self multicolorEnabledStates];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

- (int64_t)selectedMulticolorSubpickersIndexForMulticolorPickerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorState *)self multicolorSelectedStates];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (void)setSelectedMulticolorSubpickersIndex:(int64_t)a3 forMulticolorPickerIdentifier:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v9 = [v6 numberWithInteger:a3];
  v8 = [(AVTAvatarAttributeEditorState *)self multicolorSelectedStates];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

@end