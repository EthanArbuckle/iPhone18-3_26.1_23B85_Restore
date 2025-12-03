@interface INUIAddVoiceShortcutButton
- (CGSize)intrinsicContentSize;
- (INUIAddVoiceShortcutButton)initWithStyle:(INUIAddVoiceShortcutButtonStyle)style;
- (UIImageView)checkmarkImageView;
- (UIImageView)sphiriImageView;
- (UILabel)addToSiriLabel;
- (UILabel)phraseLabel;
- (double)_cornerRadius;
- (double)_strokeWidthForStyle:(unint64_t)style;
- (id)_addToSiriFont;
- (id)_addToSiriText;
- (id)_addedToSiriText;
- (id)_backgroundColorForStyle:(unint64_t)style;
- (id)_checkmarkImage;
- (id)_darkSphiriImage;
- (id)_dynamicBlackColor;
- (id)_dynamicDarkSphiriImage;
- (id)_dynamicLightSphiriImage;
- (id)_dynamicWhiteColor;
- (id)_lightSphiriImage;
- (id)_phraseFont;
- (id)_phraseText;
- (id)_sphiriImageForStyle:(unint64_t)style;
- (id)_strokeColorForStyle:(unint64_t)style;
- (id)_textColorForStyle:(unint64_t)style;
- (id)accessibilityLabel;
- (id)delegate;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (void)_checkAndUpdateForShortcut;
- (void)_configureWithStyle:(unint64_t)style;
- (void)_createHighlightFilterIfNecessary;
- (void)_didTapButton;
- (void)_updateColors;
- (void)_updateContent;
- (void)_updatePhraseVisibility;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForInterfaceBuilder;
- (void)setDelegate:(id)delegate;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setShortcut:(INShortcut *)shortcut;
- (void)setStyle:(INUIAddVoiceShortcutButtonStyle)style;
- (void)setVoiceShortcut:(id)shortcut;
- (void)traitCollectionDidChange:(id)change;
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

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [(INUIAddVoiceShortcutButton *)self shortcut:interaction];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCAA88]);
    shortcut = [(INUIAddVoiceShortcutButton *)self shortcut];
    v8 = [v6 initWithObject:shortcut];

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
  voiceShortcut = [(INUIAddVoiceShortcutButton *)self voiceShortcut];

  if (voiceShortcut)
  {
    v4 = MEMORY[0x277CCACA8];
    _phraseText = [(INUIAddVoiceShortcutButton *)self _phraseText];
    _addToSiriText = [v4 localizedStringWithFormat:@"Added to Siri with phrase: %@", _phraseText];
  }

  else
  {
    _addToSiriText = [(INUIAddVoiceShortcutButton *)self _addToSiriText];
  }

  return _addToSiriText;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = INUIAddVoiceShortcutButton;
  [(INUIAddVoiceShortcutButton *)&v15 traitCollectionDidChange:changeCopy];
  traitCollection = [(INUIAddVoiceShortcutButton *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(INUIAddVoiceShortcutButton *)self _updateColors];
  }

  traitCollection2 = [(INUIAddVoiceShortcutButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    addToSiriLabel = [(INUIAddVoiceShortcutButton *)self addToSiriLabel];
    _addToSiriFont = [(INUIAddVoiceShortcutButton *)self _addToSiriFont];
    [addToSiriLabel setFont:_addToSiriFont];

    phraseLabel = [(INUIAddVoiceShortcutButton *)self phraseLabel];
    _phraseFont = [(INUIAddVoiceShortcutButton *)self _phraseFont];
    [phraseLabel setFont:_phraseFont];
  }
}

- (void)_checkAndUpdateForShortcut
{
  mEMORY[0x277CD42F8] = [MEMORY[0x277CD42F8] sharedCenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__INUIAddVoiceShortcutButton__checkAndUpdateForShortcut__block_invoke;
  v4[3] = &unk_27872BF08;
  v4[4] = self;
  [mEMORY[0x277CD42F8] getAllVoiceShortcutsWithCompletion:v4];
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
  delegate = [(INUIAddVoiceShortcutButton *)self delegate];
  voiceShortcut = [(INUIAddVoiceShortcutButton *)self voiceShortcut];

  if (voiceShortcut)
  {
    v4 = [INUIEditVoiceShortcutViewController alloc];
    voiceShortcut2 = [(INUIAddVoiceShortcutButton *)self voiceShortcut];
    v6 = [(INUIEditVoiceShortcutViewController *)v4 initWithVoiceShortcut:voiceShortcut2];

    [delegate presentEditVoiceShortcutViewController:v6 forAddVoiceShortcutButton:self];
  }

  else
  {
    shortcut = [(INUIAddVoiceShortcutButton *)self shortcut];

    if (!shortcut)
    {
      goto LABEL_6;
    }

    v8 = [INUIAddVoiceShortcutViewController alloc];
    shortcut2 = [(INUIAddVoiceShortcutButton *)self shortcut];
    v6 = [(INUIAddVoiceShortcutViewController *)v8 initWithShortcut:shortcut2];

    [delegate presentAddVoiceShortcutViewController:v6 forAddVoiceShortcutButton:self];
  }

LABEL_6:
}

- (void)_updatePhraseVisibility
{
  voiceShortcut = [(INUIAddVoiceShortcutButton *)self voiceShortcut];
  if (voiceShortcut)
  {
    [(INUIAddVoiceShortcutButton *)self bounds];
    v4 = CGRectGetHeight(v9) >= 36.0;
  }

  else
  {
    v4 = 0;
  }

  phraseLabel = [(INUIAddVoiceShortcutButton *)self phraseLabel];
  [phraseLabel setHidden:v4 ^ 1];

  addToSiriLeadingConstraint = [(INUIAddVoiceShortcutButton *)self addToSiriLeadingConstraint];
  [addToSiriLeadingConstraint setActive:v4 ^ 1];

  addedToSiriLeadingConstraint = [(INUIAddVoiceShortcutButton *)self addedToSiriLeadingConstraint];
  [addedToSiriLeadingConstraint setActive:v4];
}

- (void)_updateContent
{
  voiceShortcut = [(INUIAddVoiceShortcutButton *)self voiceShortcut];

  addToSiriLabel = [(INUIAddVoiceShortcutButton *)self addToSiriLabel];
  if (voiceShortcut)
  {
    [(INUIAddVoiceShortcutButton *)self _addedToSiriText];
  }

  else
  {
    [(INUIAddVoiceShortcutButton *)self _addToSiriText];
  }
  v5 = ;
  [addToSiriLabel _inui_setText:v5];

  phraseLabel = [(INUIAddVoiceShortcutButton *)self phraseLabel];
  v7 = phraseLabel;
  if (voiceShortcut)
  {
    _phraseText = [(INUIAddVoiceShortcutButton *)self _phraseText];
    [v7 _inui_setText:_phraseText];
  }

  else
  {
    [phraseLabel _inui_setText:0];
  }

  v9 = voiceShortcut == 0;
  v10 = voiceShortcut == 0;
  v11 = !v9;

  sphiriImageView = [(INUIAddVoiceShortcutButton *)self sphiriImageView];
  [sphiriImageView setHidden:v11];

  checkmarkImageView = [(INUIAddVoiceShortcutButton *)self checkmarkImageView];
  [checkmarkImageView setHidden:v10];

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
  _darkSphiriImage = [(INUIAddVoiceShortcutButton *)self _darkSphiriImage];
  _lightSphiriImage = [(INUIAddVoiceShortcutButton *)self _lightSphiriImage];
  v5 = [MEMORY[0x277D755B8] _inui_imageWithLightModeImage:_darkSphiriImage darkModeImage:_lightSphiriImage];

  return v5;
}

- (id)_dynamicLightSphiriImage
{
  _lightSphiriImage = [(INUIAddVoiceShortcutButton *)self _lightSphiriImage];
  _darkSphiriImage = [(INUIAddVoiceShortcutButton *)self _darkSphiriImage];
  v5 = [MEMORY[0x277D755B8] _inui_imageWithLightModeImage:_lightSphiriImage darkModeImage:_darkSphiriImage];

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
  _shouldUseLargerFont = [(INUIAddVoiceShortcutButton *)self _shouldUseLargerFont];
  v4 = MEMORY[0x277D76968];
  if (!_shouldUseLargerFont)
  {
    v4 = MEMORY[0x277D76940];
  }

  v5 = *v4;

  return [v2 _inui_preferredFontForTextStyle:v5];
}

- (id)_addToSiriFont
{
  v2 = MEMORY[0x277D74310];
  _shouldUseLargerFont = [(INUIAddVoiceShortcutButton *)self _shouldUseLargerFont];
  v4 = MEMORY[0x277D769D0];
  if (!_shouldUseLargerFont)
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
  voiceShortcut = [(INUIAddVoiceShortcutButton *)self voiceShortcut];
  invocationPhrase = [voiceShortcut invocationPhrase];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"“%@”" value:&stru_283FD21E8 table:0];
  v7 = [v4 localizedStringWithFormat:v6, invocationPhrase];

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
    layer = [(INUIAddVoiceShortcutButton *)self layer];
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
    [layer setFilters:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (double)_strokeWidthForStyle:(unint64_t)style
{
  result = 0.0;
  if (style - 1 <= 4)
  {
    return dbl_22CA48998[style - 1];
  }

  return result;
}

- (id)_strokeColorForStyle:(unint64_t)style
{
  switch(style)
  {
    case 1uLL:
      v3 = MEMORY[0x277D75348];
      v4 = 0.0;
      break;
    case 5uLL:
      _dynamicBlackColor = [(INUIAddVoiceShortcutButton *)self _dynamicBlackColor];
      v6 = [_dynamicBlackColor colorWithAlphaComponent:0.3];

      goto LABEL_10;
    case 3uLL:
      v3 = MEMORY[0x277D75348];
      v4 = 1.0;
      break;
    default:
      clearColor = [MEMORY[0x277D75348] clearColor];
      goto LABEL_9;
  }

  clearColor = [v3 colorWithWhite:v4 alpha:0.3];
LABEL_9:
  v6 = clearColor;
LABEL_10:

  return v6;
}

- (id)_textColorForStyle:(unint64_t)style
{
  if (style > 3)
  {
    if (style == 4)
    {
      self = [(INUIAddVoiceShortcutButton *)self _dynamicWhiteColor];
    }

    else if (style == 5)
    {
      self = [(INUIAddVoiceShortcutButton *)self _dynamicBlackColor];
    }
  }

  else if (style < 2)
  {
    self = [MEMORY[0x277D75348] blackColor];
  }

  else if (style - 2 < 2)
  {
    self = [MEMORY[0x277D75348] whiteColor];
  }

  return self;
}

- (id)_backgroundColorForStyle:(unint64_t)style
{
  if (style > 3)
  {
    if (style == 4)
    {
      self = [(INUIAddVoiceShortcutButton *)self _dynamicBlackColor];
    }

    else if (style == 5)
    {
      self = [(INUIAddVoiceShortcutButton *)self _dynamicWhiteColor];
    }
  }

  else if (style < 2)
  {
    self = [MEMORY[0x277D75348] whiteColor];
  }

  else if (style - 2 < 2)
  {
    self = [MEMORY[0x277D75348] blackColor];
  }

  return self;
}

- (id)_sphiriImageForStyle:(unint64_t)style
{
  if (style > 3)
  {
    if (style == 4)
    {
      _dynamicDarkSphiriImage = [(INUIAddVoiceShortcutButton *)self _dynamicDarkSphiriImage];
    }

    else
    {
      if (style != 5)
      {
        goto LABEL_11;
      }

      _dynamicDarkSphiriImage = [(INUIAddVoiceShortcutButton *)self _dynamicLightSphiriImage];
    }
  }

  else if (style < 2)
  {
    _dynamicDarkSphiriImage = [(INUIAddVoiceShortcutButton *)self _lightSphiriImage];
  }

  else
  {
    if (style - 2 >= 2)
    {
      goto LABEL_11;
    }

    _dynamicDarkSphiriImage = [(INUIAddVoiceShortcutButton *)self _darkSphiriImage];
  }

  a2 = _dynamicDarkSphiriImage;
LABEL_11:

  return a2;
}

- (void)_updateColors
{
  style = [(INUIAddVoiceShortcutButton *)self style];
  layer = [(INUIAddVoiceShortcutButton *)self layer];
  v5 = [(INUIAddVoiceShortcutButton *)self _backgroundColorForStyle:style];
  [layer setBackgroundColor:{objc_msgSend(v5, "CGColor")}];

  layer2 = [(INUIAddVoiceShortcutButton *)self layer];
  v7 = [(INUIAddVoiceShortcutButton *)self _strokeColorForStyle:style];
  [layer2 setBorderColor:{objc_msgSend(v7, "CGColor")}];

  layer3 = [(INUIAddVoiceShortcutButton *)self layer];
  [(INUIAddVoiceShortcutButton *)self _strokeWidthForStyle:style];
  [layer3 setBorderWidth:?];

  checkmarkImageView = [(INUIAddVoiceShortcutButton *)self checkmarkImageView];
  v10 = [(INUIAddVoiceShortcutButton *)self _textColorForStyle:style];
  [checkmarkImageView _inui_setTintColor:v10];

  addToSiriLabel = [(INUIAddVoiceShortcutButton *)self addToSiriLabel];
  v11 = [(INUIAddVoiceShortcutButton *)self _textColorForStyle:style];
  [addToSiriLabel setTextColor:v11];
}

- (CGSize)intrinsicContentSize
{
  v3 = [MEMORY[0x277D756B8] _inui_labelWithText:0];
  voiceShortcut = [(INUIAddVoiceShortcutButton *)self voiceShortcut];

  if (voiceShortcut)
  {
    [(INUIAddVoiceShortcutButton *)self _addedToSiriText];
  }

  else
  {
    [(INUIAddVoiceShortcutButton *)self _addToSiriText];
  }
  v5 = ;
  [v3 _inui_setText:v5];

  _addToSiriFont = [(INUIAddVoiceShortcutButton *)self _addToSiriFont];
  [v3 setFont:_addToSiriFont];

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
  layer = [(INUIAddVoiceShortcutButton *)self layer];
  [(INUIAddVoiceShortcutButton *)self _cornerRadius];
  [layer setCornerRadius:?];

  [(INUIAddVoiceShortcutButton *)self _updatePhraseVisibility];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v12.receiver = self;
  v12.super_class = INUIAddVoiceShortcutButton;
  [(INUIAddVoiceShortcutButton *)&v12 setHighlighted:?];
  [(INUIAddVoiceShortcutButton *)self _createHighlightFilterIfNecessary];
  layer = [(INUIAddVoiceShortcutButton *)self layer];
  v6 = 0.6;
  if (!highlightedCopy)
  {
    v6 = 1.0;
  }

  v7 = [MEMORY[0x277D75348] colorWithWhite:v6 alpha:?];
  v8 = MEMORY[0x277D75348];
  v9 = [layer valueForKeyPath:@"filters.highlightFilter.inputColor"];
  v10 = [v8 colorWithCGColor:v9];

  [layer setValue:objc_msgSend(v7 forKeyPath:{"CGColor"), @"filters.highlightFilter.inputColor"}];
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
  [v11 setDuration:0.15];
  [v11 setFillMode:*MEMORY[0x277CDA238]];
  [v11 setFromValue:{objc_msgSend(v10, "CGColor")}];
  [v11 setToValue:{objc_msgSend(v7, "CGColor")}];
  [layer addAnimation:v11 forKey:@"filters.highlightFilter.inputColor"];
}

- (void)setVoiceShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if (([shortcutCopy isEqual:self->_voiceShortcut] & 1) == 0)
  {
    objc_storeStrong(&self->_voiceShortcut, shortcut);
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.IntentsUI.INUIAddVoiceShortcutViewController.didAddVoiceShortcut" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didUpdateVoiceShortcut" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didDeleteVoiceShortcut" object:0];

  v6.receiver = self;
  v6.super_class = INUIAddVoiceShortcutButton;
  [(INUIAddVoiceShortcutButton *)&v6 dealloc];
}

- (void)_configureWithStyle:(unint64_t)style
{
  v117[2] = *MEMORY[0x277D85DE8];
  self->_style = style;
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultCornerRadius];
  self->_cornerRadius = v5;
  layer = [(INUIAddVoiceShortcutButton *)self layer];
  v7 = [(INUIAddVoiceShortcutButton *)self _backgroundColorForStyle:style];
  [layer setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

  layer2 = [(INUIAddVoiceShortcutButton *)self layer];
  [layer2 setMasksToBounds:1];

  layer3 = [(INUIAddVoiceShortcutButton *)self layer];
  v10 = [(INUIAddVoiceShortcutButton *)self _strokeColorForStyle:style];
  [layer3 setBorderColor:{objc_msgSend(v10, "CGColor")}];

  layer4 = [(INUIAddVoiceShortcutButton *)self layer];
  [(INUIAddVoiceShortcutButton *)self _strokeWidthForStyle:style];
  [layer4 setBorderWidth:?];

  layer5 = [(INUIAddVoiceShortcutButton *)self layer];
  [layer5 setCornerCurve:*MEMORY[0x277CDA138]];

  LODWORD(v13) = 1148846080;
  [(UIView *)self _inui_setContentHuggingPriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(UIView *)self _inui_setContentHuggingPriority:1 forAxis:v14];
  v15 = MEMORY[0x277D755E8];
  v16 = [(INUIAddVoiceShortcutButton *)self _sphiriImageForStyle:style];
  v17 = [v15 _inui_imageViewWithImage:v16];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setAccessibilityIgnoresInvertColors:1];
  [(INUIAddVoiceShortcutButton *)self addSubview:v17];
  v18 = v17;
  objc_storeWeak(&self->_sphiriImageView, v17);
  v19 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(INUIAddVoiceShortcutButton *)self addLayoutGuide:?];
  v20 = MEMORY[0x277D755E8];
  _checkmarkImage = [(INUIAddVoiceShortcutButton *)self _checkmarkImage];
  v22 = [v20 _inui_imageViewWithImage:_checkmarkImage];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(INUIAddVoiceShortcutButton *)self _textColorForStyle:style];
  [v22 _inui_setTintColor:v23];

  [v22 setHidden:1];
  [(INUIAddVoiceShortcutButton *)self addSubview:v22];
  objc_storeWeak(&self->_checkmarkImageView, v22);
  v24 = MEMORY[0x277D756B8];
  _addToSiriText = [(INUIAddVoiceShortcutButton *)self _addToSiriText];
  v26 = [v24 _inui_labelWithText:_addToSiriText];

  v27 = v26;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [(INUIAddVoiceShortcutButton *)self _textColorForStyle:style];
  [v27 setTextColor:v28];

  _addToSiriFont = [(INUIAddVoiceShortcutButton *)self _addToSiriFont];
  [v27 setFont:_addToSiriFont];

  v113 = v27;
  objc_storeWeak(&self->_addToSiriLabel, v27);
  v112 = [MEMORY[0x277D756B8] _inui_labelWithText:0];
  [v112 setTranslatesAutoresizingMaskIntoConstraints:0];
  grayColor = [MEMORY[0x277D75348] grayColor];
  [v112 setTextColor:grayColor];

  _phraseFont = [(INUIAddVoiceShortcutButton *)self _phraseFont];
  [v112 setFont:_phraseFont];

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
  heightAnchor = [v18 heightAnchor];
  widthAnchor = [v18 widthAnchor];
  v39 = [heightAnchor constraintEqualToAnchor:widthAnchor];

  v105 = v39;
  LODWORD(v40) = 1148846080;
  [v39 setPriority:v40];
  heightAnchor2 = [v22 heightAnchor];
  widthAnchor2 = [v22 widthAnchor];
  v115 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2];

  LODWORD(v43) = 1148846080;
  [v115 setPriority:v43];
  v44 = v36;
  leadingAnchor = [v36 leadingAnchor];
  trailingAnchor = [v18 trailingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];

  addToSiriLeadingConstraint = self->_addToSiriLeadingConstraint;
  self->_addToSiriLeadingConstraint = v47;
  v114 = v47;

  v91 = MEMORY[0x277CCAAD0];
  leadingAnchor2 = [v19 leadingAnchor];
  leadingAnchor3 = [(INUIAddVoiceShortcutButton *)self leadingAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHorizontalMargin];
  v108 = [leadingAnchor2 constraintGreaterThanOrEqualToAnchor:leadingAnchor3 constant:?];
  v116[0] = v108;
  trailingAnchor2 = [v19 trailingAnchor];
  trailingAnchor3 = [(INUIAddVoiceShortcutButton *)self trailingAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHorizontalMargin];
  v103 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-v49];
  v116[1] = v103;
  centerXAnchor = [v19 centerXAnchor];
  centerXAnchor2 = [(INUIAddVoiceShortcutButton *)self centerXAnchor];
  v99 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v116[2] = v99;
  centerYAnchor = [v19 centerYAnchor];
  centerYAnchor2 = [(INUIAddVoiceShortcutButton *)self centerYAnchor];
  v96 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v116[3] = v96;
  topAnchor = [v35 topAnchor];
  topAnchor2 = [v19 topAnchor];
  v93 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v116[4] = v93;
  leadingAnchor4 = [v35 leadingAnchor];
  v50 = v44;
  v81 = v44;
  trailingAnchor4 = [v44 trailingAnchor];
  v89 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4];
  v116[5] = v89;
  v111 = v35;
  bottomAnchor = [v35 bottomAnchor];
  bottomAnchor2 = [v19 bottomAnchor];
  v86 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v116[6] = v86;
  trailingAnchor5 = [v35 trailingAnchor];
  v51 = v19;
  trailingAnchor6 = [v19 trailingAnchor];
  v82 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v116[7] = v82;
  centerYAnchor3 = [v18 centerYAnchor];
  centerYAnchor4 = [v19 centerYAnchor];
  v78 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v116[8] = v78;
  v107 = v18;
  heightAnchor3 = [v18 heightAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutIconWidthHeight];
  v76 = [heightAnchor3 constraintEqualToConstant:?];
  v116[9] = v76;
  v116[10] = v39;
  leadingAnchor5 = [v18 leadingAnchor];
  v100 = v19;
  leadingAnchor6 = [v19 leadingAnchor];
  v73 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v116[11] = v73;
  centerYAnchor5 = [v22 centerYAnchor];
  centerYAnchor6 = [(INUIAddVoiceShortcutButton *)self centerYAnchor];
  v52 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v116[12] = v52;
  v84 = v22;
  heightAnchor4 = [v22 heightAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutIconWidthHeight];
  v54 = [heightAnchor4 constraintEqualToConstant:?];
  v116[13] = v54;
  v116[14] = v115;
  leadingAnchor7 = [v22 leadingAnchor];
  leadingAnchor8 = [v51 leadingAnchor];
  v57 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v116[15] = v57;
  v116[16] = v114;
  widthAnchor3 = [v50 widthAnchor];
  [(INUIAddVoiceShortcutButton *)self INUIAddVoiceShortcutDefaultHorizontalPadding];
  v59 = [widthAnchor3 constraintEqualToConstant:?];
  v116[17] = v59;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:18];
  [v91 activateConstraints:v60];

  leadingAnchor9 = [v81 leadingAnchor];
  trailingAnchor7 = [v84 trailingAnchor];
  v63 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7];
  addedToSiriLeadingConstraint = self->_addedToSiriLeadingConstraint;
  self->_addedToSiriLeadingConstraint = v63;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleVoiceShortcutUpdateNotification_ name:@"com.apple.IntentsUI.INUIAddVoiceShortcutViewController.didAddVoiceShortcut" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleVoiceShortcutUpdateNotification_ name:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didUpdateVoiceShortcut" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__handleVoiceShortcutUpdateNotification_ name:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didDeleteVoiceShortcut" object:0];

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