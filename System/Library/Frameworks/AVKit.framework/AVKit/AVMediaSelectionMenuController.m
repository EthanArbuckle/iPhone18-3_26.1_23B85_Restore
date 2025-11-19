@interface AVMediaSelectionMenuController
+ (id)displayNameForEnhanceDialogueLevel:(int64_t)a3;
- (AVMediaSelectionMenuController)initWithAudibleOptions:(id)a3 legibleOptions:(id)a4 enhanceDialogueOptions:(id)a5;
- (AVMediaSelectionMenuDelegate)delegate;
- (id)_displayNameForMediaSelectionOption:(id)a3;
- (id)_elementsForMediaSelectionOptions:(void *)a1;
- (id)_mediaSelectionMenuImage;
- (uint64_t)_reloadAudibleOptionsMenu;
- (void)_reloadAudioTrackMenuDisplayingInline:(void *)a1;
- (void)_reloadLegibleOptionsMenu;
- (void)_reloadMediaPresentationAudioTrackMenuDisplayingInline:(void *)a1;
- (void)_updateEnablementForMenu:(int)a3 enabled:;
- (void)_updateSelectionForEnhanceDialogueMenu;
- (void)_updateSelectionForMenu:(uint64_t)a3 selectedIndex:;
- (void)_updateSubtitleForEnhanceDialogueMenu;
- (void)setAudibleMediaPresentationLanguages:(id)a3;
- (void)setAudibleOptions:(id)a3;
- (void)setCurrentAudibleOptionIndex:(unint64_t)a3;
- (void)setCurrentEnhanceDialogueOption:(int64_t)a3;
- (void)setCurrentLegibleOptionIndex:(unint64_t)a3;
- (void)setEnhanceDialogueOptions:(id)a3;
- (void)setLegibleOptions:(id)a3;
- (void)setMediaPresentationSelectors:(id)a3;
- (void)setShouldEnableEnhanceDialogueOptions:(BOOL)a3;
@end

@implementation AVMediaSelectionMenuController

- (AVMediaSelectionMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_displayNameForMediaSelectionOption:(id)a3
{
  v4 = a3;
  v5 = [(AVMediaSelectionMenuController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[AVMediaSelectionMenuController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 mediaSelectionMenuController:self displayNameForMediaSelectionOption:v4], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = [v4 localizedDisplayName];
  }

  return v8;
}

- (void)setShouldEnableEnhanceDialogueOptions:(BOOL)a3
{
  if (self->_shouldEnableEnhanceDialogueOptions != a3)
  {
    self->_shouldEnableEnhanceDialogueOptions = a3;
    [(AVMediaSelectionMenuController *)self _updateEnablementForMenu:a3 enabled:?];
  }
}

- (void)_updateEnablementForMenu:(int)a3 enabled:
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [a2 children];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            [v10 setAttributes:[v10 attributes]& 0xFFFFFFFFFFFFFFFELL | a3 ^ 1u];
          }

          else
          {
            v10 = _AVLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *v11 = 0;
              _os_log_error_impl(&dword_18B49C000, v10, OS_LOG_TYPE_ERROR, "We expect all menu elements in this menu to be UIActions.", v11, 2u);
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)setCurrentLegibleOptionIndex:(unint64_t)a3
{
  if (self->_currentLegibleOptionIndex != a3)
  {
    self->_currentLegibleOptionIndex = a3;
    [(AVMediaSelectionMenuController *)self _updateSelectionForMenu:a3 selectedIndex:?];
  }
}

- (void)_updateSelectionForMenu:(uint64_t)a3 selectedIndex:
{
  if (a1)
  {
    v4 = [a2 children];
    if ([v4 count])
    {
      v5 = 0;
      do
      {
        v6 = [v4 objectAtIndexedSubscript:v5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setState:a3 == v5];
        }

        else
        {
          v7 = _AVLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *v8 = 0;
            _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "We expect all menu elements in this menu to be UIActions.", v8, 2u);
          }
        }

        ++v5;
      }

      while (v5 < [v4 count]);
    }
  }
}

- (void)setCurrentEnhanceDialogueOption:(int64_t)a3
{
  if (self->_currentEnhanceDialogueOption != a3)
  {
    self->_currentEnhanceDialogueOption = a3;
    [(AVMediaSelectionMenuController *)self _updateSelectionForEnhanceDialogueMenu];

    [(AVMediaSelectionMenuController *)&self->super.isa _updateSubtitleForEnhanceDialogueMenu];
  }
}

- (void)_updateSelectionForEnhanceDialogueMenu
{
  if (a1)
  {
    v2 = [a1 enhanceDialogueOptions];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "currentEnhanceDialogueOption")}];
    v4 = [v2 containsObject:v3];

    if (v4)
    {
      v5 = [a1 enhanceDialogueOptions];
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "currentEnhanceDialogueOption")}];
      v7 = [v5 indexOfObject:v6];
    }

    else
    {
      v7 = -1;
    }

    v8 = a1[7];

    [(AVMediaSelectionMenuController *)a1 _updateSelectionForMenu:v8 selectedIndex:v7];
  }
}

- (void)_updateSubtitleForEnhanceDialogueMenu
{
  if (a1)
  {
    v2 = +[AVMediaSelectionMenuController displayNameForEnhanceDialogueLevel:](AVMediaSelectionMenuController, "displayNameForEnhanceDialogueLevel:", [a1 currentEnhanceDialogueOption]);
    [a1[7] setSubtitle:v2];
  }
}

- (void)setCurrentAudibleOptionIndex:(unint64_t)a3
{
  if (self->_currentAudibleOptionIndex != a3)
  {
    self->_currentAudibleOptionIndex = a3;
    [(AVMediaSelectionMenuController *)self _updateSelectionForMenu:a3 selectedIndex:?];
  }
}

- (void)setLegibleOptions:(id)a3
{
  if (self->_legibleOptions != a3)
  {
    v5 = [a3 copy];
    legibleOptions = self->_legibleOptions;
    self->_legibleOptions = v5;

    [(AVMediaSelectionMenuController *)self _reloadLegibleOptionsMenu];
  }
}

- (void)_reloadLegibleOptionsMenu
{
  if (a1)
  {
    v2 = [a1 legibleOptions];
    v3 = [v2 count];

    if (v3 > 1)
    {
      v5 = MEMORY[0x1E69DCC60];
      v6 = AVLocalizedString(@"OVERFLOW_MENU_SUBTITLES_TITLE");
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"captions.bubble"];
      v8 = [a1 legibleOptions];
      v9 = [(AVMediaSelectionMenuController *)a1 _elementsForMediaSelectionOptions:v8];
      v10 = [v5 menuWithTitle:v6 image:v7 identifier:@"AVSubtitlesMenu" options:0 children:v9];
      v11 = a1[8];
      a1[8] = v10;

      v12 = a1[8];
      v13 = [a1 currentLegibleOptionIndex];

      [(AVMediaSelectionMenuController *)a1 _updateSelectionForMenu:v12 selectedIndex:v13];
    }

    else
    {
      v4 = a1[8];
      a1[8] = 0;
    }
  }
}

- (id)_elementsForMediaSelectionOptions:(void *)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [a1 _displayNameForMediaSelectionOption:v8];
        objc_initWeak(&location, a1);
        v10 = MEMORY[0x1E69DC628];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __68__AVMediaSelectionMenuController__elementsForMediaSelectionOptions___block_invoke;
        v20[3] = &unk_1E7208C60;
        v20[4] = v8;
        objc_copyWeak(&v21, &location);
        v11 = [v10 actionWithTitle:v9 image:0 identifier:0 handler:v20];
        v12 = [MEMORY[0x1E6987FD8] avkit_autoOption];
        v13 = v12 == v8;

        if (v13)
        {
          v14 = [a1 delegate];
          v15 = objc_opt_respondsToSelector();

          if (v15)
          {
            v16 = [a1 delegate];
            v17 = [v16 shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:a1];

            if (v17)
            {
              [v11 setAttributes:1];
            }
          }
        }

        [v4 addObject:v11];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  return v4;
}

void __68__AVMediaSelectionMenuController__elementsForMediaSelectionOptions___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _AVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[AVMediaSelectionMenuController _elementsForMediaSelectionOptions:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "%s Did select media selection option: %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 delegate];
    v9 = objc_loadWeakRetained((a1 + 40));
    [v8 mediaSelectionMenuController:v9 didSelectOption:*(a1 + 32)];
  }
}

- (void)setEnhanceDialogueOptions:(id)a3
{
  if (self->_enhanceDialogueOptions != a3)
  {
    v5 = [a3 copy];
    enhanceDialogueOptions = self->_enhanceDialogueOptions;
    self->_enhanceDialogueOptions = v5;

    [(AVMediaSelectionMenuController *)self _reloadAudibleOptionsMenu];
  }
}

- (uint64_t)_reloadAudibleOptionsMenu
{
  v70[16] = *MEMORY[0x1E69E9840];
  val = result;
  if (result)
  {
    v1 = +[AVKitGlobalSettings shared];
    v2 = [v1 enhanceDialogueEnabled];

    if (v2 && ([val enhanceDialogueOptions], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4 > 1))
    {
      v55 = MEMORY[0x1E69DCC60];
      v57 = AVLocalizedString(@"ENHANCE_DIALOGUE_FEATURE_TITLE");
      v56 = [val enhanceDialogueOptions];
      v7 = [MEMORY[0x1E695DF70] array];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = [val enhanceDialogueOptions];
      v8 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v8)
      {
        v9 = *v67;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v67 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v66 + 1) + 8 * i);
            v12 = +[AVMediaSelectionMenuController displayNameForEnhanceDialogueLevel:](AVMediaSelectionMenuController, "displayNameForEnhanceDialogueLevel:", [v11 unsignedIntegerValue]);
            objc_initWeak(&location, val);
            v13 = MEMORY[0x1E69DC628];
            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = __69__AVMediaSelectionMenuController__elementsForEnhanceDialogueOptions___block_invoke;
            v61[3] = &unk_1E7207630;
            v14 = v12;
            v62 = v14;
            objc_copyWeak(&v64, &location);
            v63 = v11;
            v15 = [v13 actionWithTitle:v14 image:0 identifier:0 handler:v61];
            [v15 setAttributes:{objc_msgSend(v15, "attributes") | 8}];
            [v7 addObject:v15];

            objc_destroyWeak(&v64);
            objc_destroyWeak(&location);
          }

          v8 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v8);
      }

      v16 = [v55 menuWithTitle:v57 image:0 identifier:@"AVEnhanceDialogueMenu" options:0 children:v7];
      v5 = val;
      v17 = val[7];
      val[7] = v16;

      [(AVMediaSelectionMenuController *)val _updateSelectionForEnhanceDialogueMenu];
      [(AVMediaSelectionMenuController *)val _updateSubtitleForEnhanceDialogueMenu];
      -[AVMediaSelectionMenuController _updateEnablementForMenu:enabled:](val, val[7], [val shouldEnableEnhanceDialogueOptions]);
    }

    else
    {
      v5 = val;
      v6 = val[7];
      val[7] = 0;
    }

    if (v5[7])
    {
      v18 = MEMORY[0x1E69DCC60];
      v19 = AVLocalizedString(@"OVERFLOW_MENU_AUDIO_ADJUSTMENTS_TITLE");
      v70[0] = val[7];
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
      v21 = [v18 menuWithTitle:v19 image:0 identifier:@"AVAdjustmentsMenu" options:1 children:v20];
      v22 = val[1];
      val[1] = v21;

      v5 = val;
    }

    else
    {
      v23 = v5[1];
      v5[1] = 0;
    }

    v24 = v5[3];
    if (!v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v26 = v5[3];
      v5[3] = v25;

      v24 = v5[3];
    }

    [v24 removeAllObjects];
    v27 = v5[11];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __93__AVMediaSelectionMenuController__reloadMediaPresentationSettingsOptionsMenuDisplayingInline__block_invoke;
    v70[3] = &unk_1E7207658;
    v70[4] = v5;
    [v27 enumerateObjectsUsingBlock:v70];
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = val;
    if ([val[3] count])
    {
      [v28 addObjectsFromArray:val[3]];
      v30 = [val delegate];
      v31 = objc_opt_respondsToSelector();

      v29 = val;
      if (v31)
      {
        v32 = [val delegate];
        v33 = [v32 customMediaPresentationSettingsAudioMenuForMediaSelectionMenuController:val];

        if ([v33 count])
        {
          [v28 addObjectsFromArray:v33];
        }

        v29 = val;
      }
    }

    if ([v28 count])
    {
      v34 = AVLocalizedString(@"OVERFLOW_MENU_AUDIO_TITLE");
      v35 = [val delegate];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        v37 = [val delegate];
        v38 = [v37 customMediaPresentationSettingsAudioTitleForMediaSelectionMenuController:val];

        if (v38)
        {
          v39 = v38;

          v34 = v39;
        }
      }

      v40 = [MEMORY[0x1E69DCC60] menuWithTitle:v34 image:0 identifier:@"AVMediaPresentationSettingsMenu" options:1 children:v28];
      v29 = val;
      v41 = val[4];
      val[4] = v40;
    }

    else
    {
      v34 = v29[4];
      v29[4] = 0;
    }

    if (v29[1] || v29[4])
    {
      [(AVMediaSelectionMenuController *)v29 _reloadAudioTrackMenuDisplayingInline:?];
      if (v29[1] || v29[6] || v29[4])
      {
        obja = [MEMORY[0x1E695DF70] array];
        if (val[1])
        {
          [obja addObject:?];
        }

        v42 = obja;
        if (val[4])
        {
          [obja addObject:?];
          v42 = obja;
        }

        if (val[6])
        {
          [v42 addObject:?];
          v42 = obja;
        }

        v43 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFED57D8 image:0 identifier:@"AVAudioMenu" options:0 children:v42];
        v44 = val[2];
        val[2] = v43;

        v45 = MEMORY[0x1E69DCC60];
        v46 = AVLocalizedString(@"OVERFLOW_MENU_AUDIO_TITLE");
        v47 = [(AVMediaSelectionMenuController *)val _mediaSelectionMenuImage];
        v48 = [v45 menuWithTitle:v46 image:v47 identifier:@"AVAudioMenu" options:0 children:obja];
        v49 = val[5];
        val[5] = v48;

        v51 = obja;
      }

      else
      {
        v54 = v29[2];
        v29[2] = 0;

        v51 = v29[5];
        v29[5] = 0;
      }
    }

    else
    {
      [(AVMediaSelectionMenuController *)v29 _reloadAudioTrackMenuDisplayingInline:?];
      v53 = v29[6];
      v52 = v29 + 6;
      objc_storeStrong(v52 - 4, v53);
      v50 = *v52;
      v51 = val[5];
      val[5] = v50;
    }

    return MEMORY[0x1EEE66BB8](v50, v51);
  }

  return result;
}

- (void)_reloadAudioTrackMenuDisplayingInline:(void *)a1
{
  v4 = [a1 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [a1 delegate];
    v7 = [v6 isMediaPresentationSettingsEnabledForMediaSelectionMenuController:a1];

    if (v7)
    {
      v8 = [a1 delegate];
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        return;
      }

      v10 = [a1 delegate];
      v11 = [v10 shouldShowMediaAvailablePresentationLanguagesForMediaSelectionMenuController:a1];

      if (v11)
      {

        [AVMediaSelectionMenuController _reloadMediaPresentationAudioTrackMenuDisplayingInline:a1];
        return;
      }

      v25 = [a1 delegate];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        return;
      }

      v27 = [a1 delegate];
      [v27 indexOfSelectedMediaPresentationLanguageForMediaSelectionMenuController:a1];
      v14 = v27;
      goto LABEL_10;
    }
  }

  v12 = [a1 audibleOptions];
  v13 = [v12 count];

  if (v13 <= 1)
  {
    v14 = a1[6];
    a1[6] = 0;
LABEL_10:

    return;
  }

  v15 = MEMORY[0x1E69DCC60];
  v16 = AVLocalizedString(@"OVERFLOW_MENU_AUDIOTRACK_TITLE");
  if (a2)
  {
    v17 = 0;
    v18 = @"AVAudioTrackMenu";
  }

  else
  {
    v17 = [(AVMediaSelectionMenuController *)a1 _mediaSelectionMenuImage];
    v18 = @"AVAudioMenu";
  }

  v19 = [a1 audibleOptions];
  v20 = [(AVMediaSelectionMenuController *)a1 _elementsForMediaSelectionOptions:v19];
  v21 = [v15 menuWithTitle:v16 image:v17 identifier:v18 options:a2 children:v20];
  v22 = a1[6];
  a1[6] = v21;

  if ((a2 & 1) == 0)
  {
  }

  v23 = a1[6];
  v24 = [a1 currentAudibleOptionIndex];

  [(AVMediaSelectionMenuController *)a1 _updateSelectionForMenu:v23 selectedIndex:v24];
}

- (id)_mediaSelectionMenuImage
{
  v2 = @"waveform.circle";
  v3 = @"waveform.circle";
  v4 = [a1 delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v4 mediaSelectionOptionsImageNameForMediaSelectionMenuController:a1];
  }

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v2];

  return v5;
}

- (void)_reloadMediaPresentationAudioTrackMenuDisplayingInline:(void *)a1
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1 && [a1[12] count])
  {
    v2 = [a1 audibleMediaPresentationLanguages];
    v18 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v2;
    v3 = [obj countByEnumeratingWithState:&v22 objects:buf count:16];
    if (v3)
    {
      v4 = *v23;
      v5 = MEMORY[0x1E69E9820];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v23 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          objc_initWeak(&location, a1);
          v8 = MEMORY[0x1E69DC628];
          v19[0] = v5;
          v19[1] = 3221225472;
          v19[2] = __90__AVMediaSelectionMenuController__elementsForMediaPresentationSettingsAvailableLanguages___block_invoke;
          v19[3] = &unk_1E7208C60;
          objc_copyWeak(&v20, &location);
          v19[4] = v7;
          v9 = [v8 actionWithTitle:v7 image:0 identifier:0 handler:v19];
          [v18 addObject:v9];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }

        v3 = [obj countByEnumeratingWithState:&v22 objects:buf count:16];
      }

      while (v3);
    }

    v10 = MEMORY[0x1E69DCC60];
    v11 = AVLocalizedString(@"OVERFLOW_MENU_AUDIOTRACK_TITLE");
    v12 = [v10 menuWithTitle:v11 image:0 identifier:@"AVAudioTrackMenu" options:1 children:v18];
    v13 = a1[6];
    a1[6] = v12;

    v14 = [a1 delegate];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 indexOfSelectedMediaPresentationLanguageForMediaSelectionMenuController:a1];
    }

    else
    {
      v15 = 0;
    }

    v16 = _AVLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[AVMediaSelectionMenuController _reloadMediaPresentationAudioTrackMenuDisplayingInline:]";
      v28 = 2048;
      v29 = v15;
      _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s cmss menu index of language lang: %ld", buf, 0x16u);
    }

    [(AVMediaSelectionMenuController *)a1 _updateSelectionForMenu:v15 selectedIndex:?];
  }
}

void __90__AVMediaSelectionMenuController__elementsForMediaPresentationSettingsAvailableLanguages___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = WeakRetained;
  v5 = [v4 audibleMediaPresentationSelectors];
  v6 = [v5 firstObject];
  v7 = v3;
  v8 = v6;
  if (v4)
  {
    v9 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = _AVLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[AVMediaSelectionMenuController _updateMediaPresentationSettingsLanguage:forSelector:]";
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s cmss audio language changed to: %@", buf, 0x16u);
      }

      [v9 mediaSelectionMenuController:v4 selectMediaPresentationLanguage:v7];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = [v9 mediaSelectionMenuController:v4 complementarySettingsForSelector:v8];
    v12 = _AVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v19 = "[AVMediaSelectionMenuController _updateMediaPresentationSettingsLanguage:forSelector:]";
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s cmss \n\ncomplementarySettings: %@ \n\nselector: %@", buf, 0x20u);
    }

    if ([v11 count])
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [v9 mediaSelectionMenuController:v4 selectedPresentationSettingForSelector:v8];
        v14 = _AVLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v19 = "[AVMediaSelectionMenuController _updateMediaPresentationSettingsLanguage:forSelector:]";
          v20 = 2112;
          v21 = v13;
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s cmss \n\ncurrentSettings: %@ \n\nselector: %@", buf, 0x20u);
        }

        if ([v11 containsObject:v13] & 1) == 0 && (objc_opt_respondsToSelector())
        {
          v15 = [v11 firstObject];
          [v9 mediaSelectionMenuController:v4 selectMediaPresentationSetting:v15 forSelector:v8];
        }

LABEL_22:
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v13 = [v9 mediaSelectionMenuController:v4 effectiveSettingForSelector:v8];
      v16 = _AVLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v19 = "[AVMediaSelectionMenuController _updateMediaPresentationSettingsLanguage:forSelector:]";
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s cmss \n\neffectiveSettings: %@ \n\nselector: %@", buf, 0x20u);
      }

      if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v9 mediaSelectionMenuController:v4 selectMediaPresentationSetting:v13 forSelector:v8];
      }

      goto LABEL_22;
    }

LABEL_24:
  }

  v17 = objc_loadWeakRetained((a1 + 40));
  [AVMediaSelectionMenuController _reloadMediaPresentationAudioTrackMenuDisplayingInline:];
}

void __93__AVMediaSelectionMenuController__reloadMediaPresentationSettingsOptionsMenuDisplayingInline__block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v3;
    v4 = v3;
    v45 = a1;
    v5 = *(a1 + 32);
    v52 = v4;
    val = v5;
    if (v5)
    {
      v51 = [MEMORY[0x1E695DF70] array];
      v46 = [v5 delegate];
      if (objc_opt_respondsToSelector())
      {
        v49 = [v46 mediaSelectionMenuController:v5 complementarySettingsForSelectedMediaPresentationSettingsForSelector:v52];
      }

      else
      {
        v49 = 0;
      }

      v6 = [v52 settings];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v46 shouldFilterMediaPresentationOptionsToAvailableCacheForMediaSelectionMenuController:v5])
      {
        v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v49];
        v48 = [v6 filteredArrayUsingPredicate:v7];

        v8 = _AVLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v64 = "[AVMediaSelectionMenuController _elementsForMediaPresentationSettingsSelector:]";
          v65 = 2112;
          v66 = v48;
          _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s cmss offline settings filtered to cache: %@", buf, 0x16u);
        }
      }

      else
      {
        v48 = v6;
      }

      v9 = _AVLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v64 = "[AVMediaSelectionMenuController _elementsForMediaPresentationSettingsSelector:]";
        v65 = 2112;
        v66 = v52;
        v67 = 2112;
        v68 = v49;
        _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s cmss \n\nselector:%@ \n\ncomplementarySettings: %@", buf, 0x20u);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = [v52 settings];
      v10 = [obj countByEnumeratingWithState:&v57 objects:buf count:16];
      if (v10)
      {
        v11 = *v58;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v58 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v57 + 1) + 8 * i);
            v14 = [MEMORY[0x1E695DF58] preferredLocale];
            v15 = [v14 languageIdentifier];
            v16 = [v13 displayNameForLocaleIdentifier:v15];

            objc_initWeak(&location, val);
            v17 = MEMORY[0x1E69DC628];
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __80__AVMediaSelectionMenuController__elementsForMediaPresentationSettingsSelector___block_invoke;
            v53[3] = &unk_1E7207630;
            v53[4] = v13;
            objc_copyWeak(&v55, &location);
            v54 = v52;
            v18 = [v17 actionWithTitle:v16 image:0 identifier:0 handler:v53];
            v19 = [v18 attributes];
            LODWORD(v15) = [v49 containsObject:v13];
            v20 = _AVLog();
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            if (v15)
            {
              if (v21)
              {
                *v61 = 136315138;
                v62 = "[AVMediaSelectionMenuController _elementsForMediaPresentationSettingsSelector:]";
                _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "%s cmss option available", v61, 0xCu);
              }

              v22 = [v48 containsObject:v13];
              v23 = -2;
              if (v22)
              {
                v23 = -6;
              }

              v24 = v23 & v19;
            }

            else
            {
              if (v21)
              {
                *v61 = 136315138;
                v62 = "[AVMediaSelectionMenuController _elementsForMediaPresentationSettingsSelector:]";
                _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "%s cmss option not available", v61, 0xCu);
              }

              v25 = [v48 containsObject:v13];
              v26 = 5;
              if (v25)
              {
                v26 = 1;
              }

              v24 = v26 | v19;
            }

            [v18 setAttributes:v24];
            [v51 addObject:v18];

            objc_destroyWeak(&v55);
            objc_destroyWeak(&location);
          }

          v10 = [obj countByEnumeratingWithState:&v57 objects:buf count:16];
        }

        while (v10);
      }
    }

    else
    {
      v51 = 0;
    }

    v27 = [MEMORY[0x1E695DF58] preferredLocale];
    v28 = [v27 languageIdentifier];
    v29 = [v52 displayNameForLocaleIdentifier:v28];

    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = @"<display_name>";
    }

    v31 = MEMORY[0x1E69DCC60];
    v32 = [MEMORY[0x1E696AFB0] UUID];
    v33 = [v32 UUIDString];
    v34 = [v33 stringByAppendingPathExtension:v30];
    v35 = [v31 menuWithTitle:v30 image:0 identifier:v34 options:0 children:v51];

    [*(*(v45 + 32) + 24) addObject:v35];
    v36 = [*(v45 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v37 = [v36 mediaSelectionMenuController:*(v45 + 32) indexOfEffectivePresentationSettingForSelector:v52];
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_45:

        v3 = v44;
        goto LABEL_46;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = _AVLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v51 objectAtIndexedSubscript:v37];
      v40 = [v39 title];
      *buf = 136315906;
      v64 = "[AVMediaSelectionMenuController _reloadMediaPresentationSettingsOptionsMenuDisplayingInline]_block_invoke";
      v65 = 2048;
      v66 = v37;
      v67 = 2112;
      v68 = v40;
      v69 = 2112;
      v70 = v52;
      _os_log_impl(&dword_18B49C000, v38, OS_LOG_TYPE_DEFAULT, "%s cmss menu index: %ld subtitle: %@ of selector: %@", buf, 0x2Au);
    }

    v41 = *(v45 + 32);
    v42 = [v51 objectAtIndexedSubscript:v37];
    v43 = [v42 title];
    if (v41)
    {
      [v35 setSubtitle:v43];
    }

    [(AVMediaSelectionMenuController *)*(v45 + 32) _updateSelectionForMenu:v35 selectedIndex:v37];
    goto LABEL_45;
  }

LABEL_46:
}

void __80__AVMediaSelectionMenuController__elementsForMediaPresentationSettingsSelector___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _AVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[AVMediaSelectionMenuController _elementsForMediaPresentationSettingsSelector:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "%s cmss did select custom media presentation option: %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained delegate];

  if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    [v5 mediaSelectionMenuController:v6 selectMediaPresentationSetting:*(a1 + 32) forSelector:*(a1 + 40)];

    if (objc_opt_respondsToSelector())
    {
      v7 = objc_loadWeakRetained((a1 + 48));
      v8 = [v5 shouldShowMediaAvailablePresentationLanguagesForMediaSelectionMenuController:v7];

      if (v8)
      {
        v9 = objc_loadWeakRetained((a1 + 48));
        [AVMediaSelectionMenuController _reloadMediaPresentationAudioTrackMenuDisplayingInline:v9];
      }
    }
  }
}

void __69__AVMediaSelectionMenuController__elementsForEnhanceDialogueOptions___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _AVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[AVMediaSelectionMenuController _elementsForEnhanceDialogueOptions:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "%s Did select enhance dialogue option: %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 delegate];
    v9 = objc_loadWeakRetained((a1 + 48));
    [v8 mediaSelectionMenuController:v9 didSelectEnhanceDialogueOption:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  }
}

- (void)setAudibleMediaPresentationLanguages:(id)a3
{
  if (self->_audibleMediaPresentationLanguages != a3)
  {
    v5 = [a3 copy];
    audibleMediaPresentationLanguages = self->_audibleMediaPresentationLanguages;
    self->_audibleMediaPresentationLanguages = v5;

    [(AVMediaSelectionMenuController *)self _reloadAudibleOptionsMenu];
  }
}

- (void)setMediaPresentationSelectors:(id)a3
{
  if (self->_audibleMediaPresentationSelectors != a3)
  {
    v5 = [a3 copy];
    audibleMediaPresentationSelectors = self->_audibleMediaPresentationSelectors;
    self->_audibleMediaPresentationSelectors = v5;

    [(AVMediaSelectionMenuController *)self _reloadAudibleOptionsMenu];
  }
}

- (void)setAudibleOptions:(id)a3
{
  if (self->_audibleOptions != a3)
  {
    v5 = [a3 copy];
    audibleOptions = self->_audibleOptions;
    self->_audibleOptions = v5;

    [(AVMediaSelectionMenuController *)self _reloadAudibleOptionsMenu];
  }
}

- (AVMediaSelectionMenuController)initWithAudibleOptions:(id)a3 legibleOptions:(id)a4 enhanceDialogueOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = AVMediaSelectionMenuController;
  v11 = [(AVMediaSelectionMenuController *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    audibleOptions = v11->_audibleOptions;
    v11->_audibleOptions = v12;

    v14 = [v10 copy];
    enhanceDialogueOptions = v11->_enhanceDialogueOptions;
    v11->_enhanceDialogueOptions = v14;

    v16 = [v9 copy];
    legibleOptions = v11->_legibleOptions;
    v11->_legibleOptions = v16;

    v11->_currentAudibleOptionIndex = 0;
    v11->_currentEnhanceDialogueOption = 0;
    v11->_currentLegibleOptionIndex = 0;
    [(AVMediaSelectionMenuController *)v11 _reloadAudibleOptionsMenu];
    [(AVMediaSelectionMenuController *)v11 _reloadLegibleOptionsMenu];
  }

  return v11;
}

+ (id)displayNameForEnhanceDialogueLevel:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = @"ENHANCE_DIALOGUE_OPTION_ENHANCE_MORE";
      goto LABEL_13;
    }

    if (a3 == 3)
    {
      v3 = @"ENHANCE_DIALOGUE_OPTION_ISOLATE";
      goto LABEL_13;
    }
  }

  else
  {
    if (!a3)
    {
      v3 = @"ENHANCE_DIALOGUE_OPTION_OFF";
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      v3 = @"ENHANCE_DIALOGUE_OPTION_ENHANCE";
LABEL_13:
      v5 = AVLocalizedString(v3);
      goto LABEL_14;
    }
  }

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Encountered unknown Enhance Dialogue level.", v7, 2u);
  }

  v5 = 0;
LABEL_14:

  return v5;
}

@end