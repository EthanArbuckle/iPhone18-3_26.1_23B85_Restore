@interface INUIAddVoiceShortcutButton
- (CGSize)intrinsicContentSize;
- (INUIAddVoiceShortcutButton)initWithStyle:(INUIAddVoiceShortcutButtonStyle)style;
- (UIImageView)checkmarkImageView;
- (UIImageView)sphiriImageView;
- (UILabel)addToSiriLabel;
- (UILabel)phraseLabel;
- (double)_cornerRadius;
- (double)_strokeWidthForStyle:(unint64_t)a3;
- (id)_addToSiriFont;
- (id)_addToSiriText;
- (id)_addedToSiriText;
- (id)_backgroundColorForStyle:(unint64_t)a3;
- (id)_checkmarkImage;
- (id)_darkSphiriImage;
- (id)_dynamicBlackColor;
- (id)_dynamicDarkSphiriImage;
- (id)_dynamicLightSphiriImage;
- (id)_dynamicWhiteColor;
- (id)_lightSphiriImage;
- (id)_phraseFont;
- (id)_phraseText;
- (id)_sphiriImageForStyle:(unint64_t)a3;
- (id)_strokeColorForStyle:(unint64_t)a3;
- (id)_textColorForStyle:(unint64_t)a3;
- (id)accessibilityLabel;
- (id)delegate;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (void)_checkAndUpdateForShortcut;
- (void)_configureWithStyle:(unint64_t)a3;
- (void)_createHighlightFilterIfNecessary;
- (void)_didTapButton;
- (void)_updateColors;
- (void)_updateContent;
- (void)_updatePhraseVisibility;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForInterfaceBuilder;
- (void)setDelegate:(id)delegate;
- (void)setHighlighted:(BOOL)a3;
- (void)setShortcut:(INShortcut *)shortcut;
- (void)setStyle:(INUIAddVoiceShortcutButtonStyle)style;
- (void)setVoiceShortcut:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation INUIAddVoiceShortcutButton

- (UILabel)phraseLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_phraseLabel);

  return WeakRetained;
}

- (UILabel)addToSiriLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_addToSiriLabel);

  return WeakRetained;
}

- (UIImageView)checkmarkImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_checkmarkImageView);

  return WeakRetained;
}

- (UIImageView)sphiriImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_sphiriImageView);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [(INUIAddVoiceShortcutButton *)self shortcut:a3];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCAA88]);
    v7 = [(INUIAddVoiceShortcutButton *)self shortcut];
    v8 = [v6 initWithObject:v7];

    v9 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v8];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)prepareForInterfaceBuilder
{
  v3.receiver = self;
  v3.super_class = INUIAddVoiceShortcutButton;
  [(INUIAddVoiceShortcutButton *)&v3 prepareForInterfaceBuilder];
  [(INUIAddVoiceShortcutButton *)self _configureWithStyle:0];
}

- (id)accessibilityLabel
{
  v3 = [(INUIAddVoiceShortcutButton *)self voiceShortcut];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(INUIAddVoiceShortcutButton *)self _phraseText];
    v6 = [v4 localizedStringWithFormat:@"Added to Siri with phrase: %@", v5];
  }

  else
  {
    v6 = [(INUIAddVoiceShortcutButton *)self _addToSiriText];
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INUIAddVoiceShortcutButton;
  [(INUIAddVoiceShortcutButton *)&v15 traitCollectionDidChange:v4];
  v5 = [(INUIAddVoiceShortcutButton *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(INUIAddVoiceShortcutButton *)self _updateColors];
  }

  v8 = [(INUIAddVoiceShortcutButton *)self traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = [v4 preferredContentSizeCategory];

  if (v9 != v10)
  {
    v11 = [(INUIAddVoiceShortcutButton *)self addToSiriLabel];
    v12 = [(INUIAddVoiceShortcutButton *)self _addToSiriFont];
    [v11 setFont:v12];

    v13 = [(INUIAddVoiceShortcutButton *)self phraseLabel];
    v14 = [(INUIAddVoiceShortcutButton *)self _phraseFont];
    [v13 setFont:v14];
  }
}

- (void)_checkAndUpdateForShortcut
{
  v3 = [MEMORY[0x277CD42F8] sharedCenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__INUIAddVoiceShortcutButton__checkAndUpdateForShortcut__block_invoke;
  v4[3] = &unk_27872BF08;
  v4[4] = self;
  [v3 getAllVoiceShortcutsWithCompletion:v4];
}

void __56__INUIAddVoiceShortcutButton__checkAndUpdateForShortcut__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = &v47;
  v56 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  if (v9)
  {
    v10 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v9 localizedDescription];
      *buf = 136315394;
      v53 = "[INUIAddVoiceShortcutButton _checkAndUpdateForShortcut]_block_invoke";
      v54 = 2112;
      v55 = v12;
      _os_log_error_impl(&dword_22CA36000, v11, OS_LOG_TYPE_ERROR, "%s Failed to get shortcuts in INUIAddVoiceShortcutButton: %@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  v13 = [*(a1 + 32) shortcut];
  v14 = [v13 userActivity];

  v33 = a1;
  v15 = [*(a1 + 32) shortcut];
  v16 = [v15 intent];

  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v34 = v8;
  obj = v8;
  v42 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v42)
  {
    v41 = *v48;
    v35 = v14 != 0;
    do
    {
      v17 = 0;
      do
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * v17);
        if (!v14)
        {
          goto LABEL_13;
        }

        v4 = [v14 activityType];
        v7 = [v18 shortcut];
        v3 = [v7 userActivity];
        v15 = [v3 activityType];
        if ([v4 isEqualToString:v15])
        {
          v19 = [v14 userInfo];
          v39 = [v18 shortcut];
          v38 = [v39 userActivity];
          [v38 userInfo];
          v37 = v40 = v19;
          LODWORD(v20) = 1;
          if ([v19 isEqualToDictionary:?])
          {
            v21 = 1;
            goto LABEL_15;
          }

          if (!v16)
          {
            v21 = 0;
LABEL_15:

            if ((v20 & 1) == 0)
            {
              goto LABEL_16;
            }

            goto LABEL_19;
          }
        }

        else
        {
LABEL_13:
          LODWORD(v20) = 0;
          v21 = 0;
          if (!v16)
          {
            goto LABEL_18;
          }
        }

        v43 = v20;
        v22 = [v16 _indexingHash];
        [v18 shortcut];
        v44 = v17;
        v23 = v18;
        v24 = v15;
        v25 = v14;
        v26 = v3;
        v27 = v7;
        v28 = v4;
        v30 = v29 = v16;
        v20 = [v30 intent];
        v21 = v22 == [v20 _indexingHash];

        v16 = v29;
        v4 = v28;
        v7 = v27;
        v3 = v26;
        v14 = v25;
        v15 = v24;
        v18 = v23;
        v17 = v44;
        LOBYTE(v20) = v35;
        if (v43)
        {
          goto LABEL_15;
        }

LABEL_18:
        if (!v14)
        {
LABEL_16:
          if (v21)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

LABEL_19:

        if (v21)
        {
LABEL_26:
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __56__INUIAddVoiceShortcutButton__checkAndUpdateForShortcut__block_invoke_62;
          v46[3] = &unk_27872BF30;
          v46[4] = *(v33 + 32);
          v46[5] = v18;
          dispatch_async(MEMORY[0x277D85CD0], v46);

          goto LABEL_27;
        }

LABEL_20:
        ++v17;
      }

      while (v42 != v17);
      v31 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      v42 = v31;
    }

    while (v31);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__INUIAddVoiceShortcutButton__checkAndUpdateForShortcut__block_invoke_2;
  block[3] = &unk_27872BEE0;
  block[4] = *(v33 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_27:

  v9 = 0;
  v8 = v34;
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_didTapButton
{
  v10 = [(INUIAddVoiceShortcutButton *)self delegate];
  v3 = [(INUIAddVoiceShortcutButton *)self voiceShortcut];

  if (v3)
  {
    v4 = [INUIEditVoiceShortcutViewController alloc];
    v5 = [(INUIAddVoiceShortcutButton *)self voiceShortcut];
    v6 = [(INUIEditVoiceShortcutViewController *)v4 initWithVoiceShortcut:v5];

    [v10 presentEditVoiceShortcutViewController:v6 forAddVoiceShortcutButton:self];
  }

  else
  {
    v7 = [(INUIAddVoiceShortcutButton *)self shortcut];

    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = [INUIAddVoiceShortcutViewController alloc];
    v9 = [(INUIAddVoiceShortcutButton *)self shortcut];
    v6 = [(INUIAddVoiceShortcutViewController *)v8 initWithShortcut:v9];

    [v10 presentAddVoiceShortcutViewController:v6 forAddVoiceShortcutButton:self];
  }

LABEL_6:
}

- (void)_updatePhraseVisibility
{
  v3 = [(INUIAddVoiceShortcutButton *)self voiceShortcut];
  if (v3)
  {
    [(INUIAddVoiceShortcutButton *)self bounds];
    v4 = CGRectGetHeight(v9) >= 36.0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(INUIAddVoiceShortcutButton *)self phraseLabel];
  [v5 setHidden:v4 ^ 1];

  v6 = [(INUIAddVoiceShortcutButton *)self addToSiriLeadingConstraint];
  [v6 setActive:v4 ^ 1];

  v7 = [(INUIAddVoiceShortcutButton *)self addedToSiriLeadingConstraint];
  [v7 setActive:v4];
}

- (void)_updateContent
{
  v3 = [(INUIAddVoiceShortcutButton *)self voiceShortcut];

  v4 = [(INUIAddVoiceShortcutButton *)self addToSiriLabel];
  if (v3)
  {
    [(INUIAddVoiceShortcutButton *)self _addedToSiriText];
  }

  else
  {
    [(INUIAddVoiceShortcutButton *)self _addToSiriText];
  }
  v5 = ;
  [v4 _inui_setText:v5];

  v6 = [(INUIAddVoiceShortcutButton *)self phraseLabel];
  v7 = v6;
  if (v3)
  {
    v8 = [(INUIAddVoiceShortcutButton *)self _phraseText];
    [v7 _inui_setText:v8];
  }

  else
  {
    [v6 _inui_setText:0];
  }

  v9 = v3 == 0;
  v10 = v3 == 0;
  v11 = !v9;

  v12 = [(INUIAddVoiceShortcutButton *)self sphiriImageView];
  [v12 setHidden:v11];

  v13 = [(INUIAddVoiceShortcutButton *)self checkmarkImageView];
  [v13 setHidden:v10];

  [(INUIAddVoiceShortcutButton *)self _updatePhraseVisibility];

  [(INUIAddVoiceShortcutButton *)self invalidateIntrinsicContentSize];
}

- (id)_dynamicBlackColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 _inui_colorNamed:@"ColorDark" bundle:v3];

  return v4;
}

- (id)_dynamicWhiteColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 _inui_colorNamed:@"ColorLight" bundle:v3];

  return v4;
}

- (id)_checkmarkImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 _inui_imageNamed:@"Checkmark" inBundle:v3];

  return v4;
}

- (id)_dynamicDarkSphiriImage
{
  v3 = [(INUIAddVoiceShortcutButton *)self _darkSphiriImage];
  v4 = [(INUIAddVoiceShortcutButton *)self _lightSphiriImage];
  v5 = [MEMORY[0x277D755B8] _inui_imageWithLightModeImage:v3 darkModeImage:v4];

  return v5;
}

- (id)_dynamicLightSphiriImage
{
  v3 = [(INUIAddVoiceShortcutButton *)self _lightSphiriImage];
  v4 = [(INUIAddVoiceShortcutButton *)self _darkSphiriImage];
  v5 = [MEMORY[0x277D755B8] _inui_imageWithLightModeImage:v3 darkModeImage:v4];

  return v5;
}

- (id)_darkSphiriImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 _inui_imageNamed:@"SphiriDark" inBundle:v3];

  return v4;
}

- (id)_lightSphiriImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 _inui_imageNamed:@"SphiriLight" inBundle:v3];

  return v4;
}

- (id)_phraseFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(INUIAddVoiceShortcutButton *)self _shouldUseLargerFont];
  v4 = MEMORY[0x277D76968];
  if (!v3)
  {
    v4 = MEMORY[0x277D76940];
  }

  v5 = *v4;

  return [v2 _inui_preferredFontForTextStyle:v5];
}

- (id)_addToSiriFont
{
  v2 = MEMORY[0x277D74310];
  v3 = [(INUIAddVoiceShortcutButton *)self _shouldUseLargerFont];
  v4 = MEMORY[0x277D769D0];
  if (!v3)
  {
    v4 = MEMORY[0x277D76968];
  }

  v5 = [v2 _inui_preferredFontDescriptorWithTextStyle:*v4];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];

  return v7;
}

- (id)_phraseText
{
  v2 = [(INUIAddVoiceShortcutButton *)self voiceShortcut];
  v3 = [v2 invocationPhrase];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"“%@”" value:&stru_283FD21E8 table:0];
  v7 = [v4 localizedStringWithFormat:v6, v3];

  return v7;
}

- (id)_addedToSiriText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Added to Siri" value:&stru_283FD21E8 table:0];

  return v3;
}

- (id)_addToSiriText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Add to Siri" value:&stru_283FD21E8 table:0];

  return v3;
}

- (void)_createHighlightFilterIfNecessary
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (!self->_highlightFilter)
  {
    v3 = [(INUIAddVoiceShortcutButton *)self layer];
    v4 = objc_alloc(MEMORY[0x277CD9EA0]);
    v5 = [v4 initWithType:*MEMORY[0x277CDA5B0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v5;

    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    v7 = self->_highlightFilter;
    v8 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    -[CAFilter setValue:forKey:](v7, "setValue:forKey:", [v8 CGColor], @"inputColor");

    v11[0] = self->_highlightFilter;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v3 setFilters:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (double)_strokeWidthForStyle:(unint64_t)a3
{
  result = 0.0;
  if (a3 - 1 <= 4)
  {
    return dbl_22CA48998[a3 - 1];
  }

  return result;
}

- (id)_strokeColorForStyle:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v3 = MEMORY[0x277D75348];
      v4 = 0.0;
      break;
    case 5uLL:
      v5 = [(INUIAddVoiceShortcutButton *)self _dynamicBlackColor];
      v6 = [v5 colorWithAlphaComponent:0.3];

      goto LABEL_10;
    case 3uLL:
      v3 = MEMORY[0x277D75348];
      v4 = 1.0;
      break;
    default:
      v7 = [MEMORY[0x277D75348] clearColor];
      goto LABEL_9;
  }

  v7 = [v3 colorWithWhite:v4 alpha:0.3];
LABEL_9:
  v6 = v7;
LABEL_10:

  return v6;
}

- (id)_textColorForStyle:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      self = [(INUIAddVoiceShortcutButton *)self _dynamicWhiteColor];
    }

    else if (a3 == 5)
    {
      self = [(INUIAddVoiceShortcutButton *)self _dynamicBlackColor];
    }
  }

  else if (a3 < 2)
  {
    self = [MEMORY[0x277D75348] blackColor];
  }

  else if (a3 - 2 < 2)
  {
    self = [MEMORY[0x277D75348] whiteColor];
  }

  return self;
}

- (id)_backgroundColorForStyle:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      self = [(INUIAddVoiceShortcutButton *)self _dynamicBlackColor];
    }

    else if (a3 == 5)
    {
      self = [(INUIAddVoiceShortcutButton *)self _dynamicWhiteColor];
    }
  }

  else if (a3 < 2)
  {
    self = [MEMORY[0x277D75348] whiteColor];
  }

  else if (a3 - 2 < 2)
  {
    self = [MEMORY[0x277D75348] blackColor];
  }

  return self;
}

- (id)_sphiriImageForStyle:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v3 = [(INUIAddVoiceShortcutButton *)self _dynamicDarkSphiriImage];
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_11;
      }

      v3 = [(INUIAddVoiceShortcutButton *)self _dynamicLightSphiriImage];
    }
  }

  else if (a3 < 2)
  {
    v3 = [(INUIAddVoiceShortcutButton *)self _lightSphiriImage];
  }

  else
  {
    if (a3 - 2 >= 2)
    {
      goto LABEL_11;
    }

    v3 = [(INUIAddVoiceShortcutButton *)self _darkSphiriImage];
  }

  a2 = v3;
LABEL_11:

  return a2;
}

- (void)_updateColors
{
  v3 = [(INUIAddVoiceShortcutButton *)self style];
  v4 = [(INUIAddVoiceShortcutButton *)self layer];
  v5 = [(INUIAddVoiceShortcutButton *)self _backgroundColorForStyle:v3];
  [v4 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];

  v6 = [(INUIAddVoiceShortcutButton *)self layer];
  v7 = [(INUIAddVoiceShortcutButton *)self _strokeColorForStyle:v3];
  [v6 setBorderColor:{objc_msgSend(v7, "CGColor")}];

  v8 = [(INUIAddVoiceShortcutButton *)self layer];
  [(INUIAddVoiceShortcutButton *)self _strokeWidthForStyle:v3];
  [v8 setBorderWidth:?];

  v9 = [(INUIAddVoiceShortcutButton *)self checkmarkImageView];
  v10 = [(INUIAddVoiceShortcutButton *)self _textColorForStyle:v3];
  [v9 _inui_setTintColor:v10];

  v12 = [(INUIAddVoiceShortcutButton *)self addToSiriLabel];
  v11 = [(INUIAddVoiceShortcutButton *)self _textColorForStyle:v3];
  [v12 setTextColor:v11];
}

- (CGSize)intrinsicContentSize
{
  v3 = [MEMORY[0x277D756B8] _inui_labelWithText:0];
  v4 = [(INUIAddVoiceShortcutButton *)self voiceShortcut];

  if (v4)
  {
    [(INUIAddVoiceShortcutButton *)self _addedToSiriText];
  }

  else
  {
    [(INUIAddVoiceShortcutButton *)self _addToSiriText];
  }
  v5 = ;
  [v3 _inui_setText:v5];

  v6 = [(INUIAddVoiceShortcutButton *)self _addToSiriFont];
  [v3 setFont:v6];

  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHorizontalMargin];
  v8 = v7;
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHorizontalPadding];
  v10 = v9 + v8 * 2.0;
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutIconWidthHeight];
  v12 = v10 + v11;
  [v3 intrinsicContentSize];
  v14 = v12 + v13;
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHeight];
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (double)_cornerRadius
{
  [(INUIAddVoiceShortcutButton *)self frame];
  Height = CGRectGetHeight(v5);
  [(INUIAddVoiceShortcutButton *)self cornerRadius];
  if (result >= Height * 0.5)
  {
    return Height * 0.5;
  }

  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = INUIAddVoiceShortcutButton;
  [(INUIAddVoiceShortcutButton *)&v4 layoutSubviews];
  v3 = [(INUIAddVoiceShortcutButton *)self layer];
  [(INUIAddVoiceShortcutButton *)self _cornerRadius];
  [v3 setCornerRadius:?];

  [(INUIAddVoiceShortcutButton *)self _updatePhraseVisibility];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = INUIAddVoiceShortcutButton;
  [(INUIAddVoiceShortcutButton *)&v12 setHighlighted:?];
  [(INUIAddVoiceShortcutButton *)self _createHighlightFilterIfNecessary];
  v5 = [(INUIAddVoiceShortcutButton *)self layer];
  v6 = 0.6;
  if (!v3)
  {
    v6 = 1.0;
  }

  v7 = [MEMORY[0x277D75348] colorWithWhite:v6 alpha:?];
  v8 = MEMORY[0x277D75348];
  v9 = [v5 valueForKeyPath:@"filters.highlightFilter.inputColor"];
  v10 = [v8 colorWithCGColor:v9];

  [v5 setValue:objc_msgSend(v7 forKeyPath:{"CGColor"), @"filters.highlightFilter.inputColor"}];
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
  [v11 setDuration:0.15];
  [v11 setFillMode:*MEMORY[0x277CDA238]];
  [v11 setFromValue:{objc_msgSend(v10, "CGColor")}];
  [v11 setToValue:{objc_msgSend(v7, "CGColor")}];
  [v5 addAnimation:v11 forKey:@"filters.highlightFilter.inputColor"];
}

- (void)setVoiceShortcut:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_voiceShortcut] & 1) == 0)
  {
    objc_storeStrong(&self->_voiceShortcut, a3);
    [(INUIAddVoiceShortcutButton *)self _updateContent];
  }
}

- (void)setShortcut:(INShortcut *)shortcut
{
  v5 = shortcut;
  if (self->_shortcut != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_shortcut, shortcut);
    [(INUIAddVoiceShortcutButton *)self _checkAndUpdateForShortcut];
    v5 = v6;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(INUIAddVoiceShortcutButton *)self removeTarget:self action:sel__didTapButton forControlEvents:64];
    v5 = obj;
    if (obj)
    {
      [(INUIAddVoiceShortcutButton *)self addTarget:self action:sel__didTapButton forControlEvents:64];
      v5 = obj;
    }
  }
}

- (void)setStyle:(INUIAddVoiceShortcutButtonStyle)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(INUIAddVoiceShortcutButton *)self _updateColors];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.IntentsUI.INUIAddVoiceShortcutViewController.didAddVoiceShortcut" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didUpdateVoiceShortcut" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didDeleteVoiceShortcut" object:0];

  v6.receiver = self;
  v6.super_class = INUIAddVoiceShortcutButton;
  [(INUIAddVoiceShortcutButton *)&v6 dealloc];
}

- (void)_configureWithStyle:(unint64_t)a3
{
  v117[2] = *MEMORY[0x277D85DE8];
  self->_style = a3;
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultCornerRadius];
  self->_cornerRadius = v5;
  v6 = [(INUIAddVoiceShortcutButton *)self layer];
  v7 = [(INUIAddVoiceShortcutButton *)self _backgroundColorForStyle:a3];
  [v6 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

  v8 = [(INUIAddVoiceShortcutButton *)self layer];
  [v8 setMasksToBounds:1];

  v9 = [(INUIAddVoiceShortcutButton *)self layer];
  v10 = [(INUIAddVoiceShortcutButton *)self _strokeColorForStyle:a3];
  [v9 setBorderColor:{objc_msgSend(v10, "CGColor")}];

  v11 = [(INUIAddVoiceShortcutButton *)self layer];
  [(INUIAddVoiceShortcutButton *)self _strokeWidthForStyle:a3];
  [v11 setBorderWidth:?];

  v12 = [(INUIAddVoiceShortcutButton *)self layer];
  [v12 setCornerCurve:*MEMORY[0x277CDA138]];

  LODWORD(v13) = 1148846080;
  [(UIView *)self _inui_setContentHuggingPriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(UIView *)self _inui_setContentHuggingPriority:1 forAxis:v14];
  v15 = MEMORY[0x277D755E8];
  v16 = [(INUIAddVoiceShortcutButton *)self _sphiriImageForStyle:a3];
  v17 = [v15 _inui_imageViewWithImage:v16];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setAccessibilityIgnoresInvertColors:1];
  [(INUIAddVoiceShortcutButton *)self addSubview:v17];
  v18 = v17;
  objc_storeWeak(&self->_sphiriImageView, v17);
  v19 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(INUIAddVoiceShortcutButton *)self addLayoutGuide:?];
  v20 = MEMORY[0x277D755E8];
  v21 = [(INUIAddVoiceShortcutButton *)self _checkmarkImage];
  v22 = [v20 _inui_imageViewWithImage:v21];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(INUIAddVoiceShortcutButton *)self _textColorForStyle:a3];
  [v22 _inui_setTintColor:v23];

  [v22 setHidden:1];
  [(INUIAddVoiceShortcutButton *)self addSubview:v22];
  objc_storeWeak(&self->_checkmarkImageView, v22);
  v24 = MEMORY[0x277D756B8];
  v25 = [(INUIAddVoiceShortcutButton *)self _addToSiriText];
  v26 = [v24 _inui_labelWithText:v25];

  v27 = v26;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [(INUIAddVoiceShortcutButton *)self _textColorForStyle:a3];
  [v27 setTextColor:v28];

  v29 = [(INUIAddVoiceShortcutButton *)self _addToSiriFont];
  [v27 setFont:v29];

  v113 = v27;
  objc_storeWeak(&self->_addToSiriLabel, v27);
  v112 = [MEMORY[0x277D756B8] _inui_labelWithText:0];
  [v112 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [MEMORY[0x277D75348] grayColor];
  [v112 setTextColor:v30];

  v31 = [(INUIAddVoiceShortcutButton *)self _phraseFont];
  [v112 setFont:v31];

  [v112 setHidden:1];
  objc_storeWeak(&self->_phraseLabel, v112);
  v32 = MEMORY[0x277D75A68];
  v117[0] = v27;
  v117[1] = v112;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
  v34 = [v32 _inui_stackViewWithArrangedSubviews:v33 userInteractionEnabled:0];

  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v34 _inui_setAxis:1];
  [v34 setAlignment:1];
  v35 = v34;
  [(INUIAddVoiceShortcutButton *)self addSubview:v34];
  v36 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(INUIAddVoiceShortcutButton *)self addLayoutGuide:v36];
  v37 = [v18 heightAnchor];
  v38 = [v18 widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  v105 = v39;
  LODWORD(v40) = 1148846080;
  [v39 setPriority:v40];
  v41 = [v22 heightAnchor];
  v42 = [v22 widthAnchor];
  v115 = [v41 constraintEqualToAnchor:v42];

  LODWORD(v43) = 1148846080;
  [v115 setPriority:v43];
  v44 = v36;
  v45 = [v36 leadingAnchor];
  v46 = [v18 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  addToSiriLeadingConstraint = self->_addToSiriLeadingConstraint;
  self->_addToSiriLeadingConstraint = v47;
  v114 = v47;

  v91 = MEMORY[0x277CCAAD0];
  v110 = [v19 leadingAnchor];
  v109 = [(INUIAddVoiceShortcutButton *)self leadingAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHorizontalMargin];
  v108 = [v110 constraintGreaterThanOrEqualToAnchor:v109 constant:?];
  v116[0] = v108;
  v106 = [v19 trailingAnchor];
  v104 = [(INUIAddVoiceShortcutButton *)self trailingAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHorizontalMargin];
  v103 = [v106 constraintLessThanOrEqualToAnchor:v104 constant:-v49];
  v116[1] = v103;
  v102 = [v19 centerXAnchor];
  v101 = [(INUIAddVoiceShortcutButton *)self centerXAnchor];
  v99 = [v102 constraintEqualToAnchor:v101];
  v116[2] = v99;
  v98 = [v19 centerYAnchor];
  v97 = [(INUIAddVoiceShortcutButton *)self centerYAnchor];
  v96 = [v98 constraintEqualToAnchor:v97];
  v116[3] = v96;
  v95 = [v35 topAnchor];
  v94 = [v19 topAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v116[4] = v93;
  v92 = [v35 leadingAnchor];
  v50 = v44;
  v81 = v44;
  v90 = [v44 trailingAnchor];
  v89 = [v92 constraintEqualToAnchor:v90];
  v116[5] = v89;
  v111 = v35;
  v88 = [v35 bottomAnchor];
  v87 = [v19 bottomAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v116[6] = v86;
  v85 = [v35 trailingAnchor];
  v51 = v19;
  v83 = [v19 trailingAnchor];
  v82 = [v85 constraintEqualToAnchor:v83];
  v116[7] = v82;
  v80 = [v18 centerYAnchor];
  v79 = [v19 centerYAnchor];
  v78 = [v80 constraintEqualToAnchor:v79];
  v116[8] = v78;
  v107 = v18;
  v77 = [v18 heightAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutIconWidthHeight];
  v76 = [v77 constraintEqualToConstant:?];
  v116[9] = v76;
  v116[10] = v39;
  v75 = [v18 leadingAnchor];
  v100 = v19;
  v74 = [v19 leadingAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v116[11] = v73;
  v72 = [v22 centerYAnchor];
  v71 = [(INUIAddVoiceShortcutButton *)self centerYAnchor];
  v52 = [v72 constraintEqualToAnchor:v71];
  v116[12] = v52;
  v84 = v22;
  v53 = [v22 heightAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutIconWidthHeight];
  v54 = [v53 constraintEqualToConstant:?];
  v116[13] = v54;
  v116[14] = v115;
  v55 = [v22 leadingAnchor];
  v56 = [v51 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  v116[15] = v57;
  v116[16] = v114;
  v58 = [v50 widthAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHorizontalPadding];
  v59 = [v58 constraintEqualToConstant:?];
  v116[17] = v59;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:18];
  [v91 activateConstraints:v60];

  v61 = [v81 leadingAnchor];
  v62 = [v84 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  addedToSiriLeadingConstraint = self->_addedToSiriLeadingConstraint;
  self->_addedToSiriLeadingConstraint = v63;

  v65 = [MEMORY[0x277CCAB98] defaultCenter];
  [v65 addObserver:self selector:sel__handleVoiceShortcutUpdateNotification_ name:@"com.apple.IntentsUI.INUIAddVoiceShortcutViewController.didAddVoiceShortcut" object:0];

  v66 = [MEMORY[0x277CCAB98] defaultCenter];
  [v66 addObserver:self selector:sel__handleVoiceShortcutUpdateNotification_ name:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didUpdateVoiceShortcut" object:0];

  v67 = [MEMORY[0x277CCAB98] defaultCenter];
  [v67 addObserver:self selector:sel__handleVoiceShortcutUpdateNotification_ name:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didDeleteVoiceShortcut" object:0];

  v68 = objc_alloc(MEMORY[0x277D75468]);
  v69 = [v68 initWithDelegate:self];
  [(INUIAddVoiceShortcutButton *)self addInteraction:v69];

  v70 = *MEMORY[0x277D85DE8];
}

- (INUIAddVoiceShortcutButton)initWithStyle:(INUIAddVoiceShortcutButtonStyle)style
{
  v8.receiver = self;
  v8.super_class = INUIAddVoiceShortcutButton;
  v4 = [(INUIAddVoiceShortcutButton *)&v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    [(INUIAddVoiceShortcutButton *)v4 _configureWithStyle:style];
    v6 = v5;
  }

  return v5;
}

@end