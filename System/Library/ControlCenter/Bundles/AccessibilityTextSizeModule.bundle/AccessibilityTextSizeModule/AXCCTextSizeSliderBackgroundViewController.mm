@interface AXCCTextSizeSliderBackgroundViewController
- (id)_attachmentAttributedString:(id)string withSystemImage:(id)image;
- (id)_labelSubviewWithAttributedText:(id)text;
- (id)_labelSubviewWithText:(id)text;
- (id)_preferredCategoryWithPerAppSettings;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_contentSizeCategoryDidChangeInternally:(id)internally;
- (void)_layoutPerAppControls;
- (void)_togglePerAppButton:(id)button;
- (void)_updateDefaultLabelPercentageForContentSizeCategory:(id)category;
- (void)_updateDefaultLabelVisibilityForContentSizeCategory:(id)category;
- (void)_updateLabelFonts;
- (void)_updatePerAppControls;
- (void)dealloc;
- (void)moduleDidExpand;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AXCCTextSizeSliderBackgroundViewController

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = AXCCTextSizeSliderBackgroundViewController;
  [(AXCCTextSizeSliderBackgroundViewController *)&v31 viewDidLoad];
  v3 = AXCCLocalizedString(@"text.size.label");
  v4 = [(AXCCTextSizeSliderBackgroundViewController *)self _attachmentAttributedString:v3 withSystemImage:@"textformat.size"];

  v5 = [(AXCCTextSizeSliderBackgroundViewController *)self _labelSubviewWithAttributedText:v4];
  textSizeLabel = self->_textSizeLabel;
  self->_textSizeLabel = v5;

  view = [(AXCCTextSizeSliderBackgroundViewController *)self view];
  [view addSubview:self->_textSizeLabel];

  v8 = [(AXCCTextSizeSliderBackgroundViewController *)self _labelSubviewWithText:&stru_2A23E1258];
  textPercentageLabel = self->_textPercentageLabel;
  self->_textPercentageLabel = v8;

  view2 = [(AXCCTextSizeSliderBackgroundViewController *)self view];
  [view2 addSubview:self->_textPercentageLabel];

  v11 = AXCCLocalizedString(@"default.label");
  v12 = [(AXCCTextSizeSliderBackgroundViewController *)self _labelSubviewWithText:v11];
  defaultLabel = self->_defaultLabel;
  self->_defaultLabel = v12;

  [(UILabel *)self->_defaultLabel setAlpha:0.0];
  view3 = [(AXCCTextSizeSliderBackgroundViewController *)self view];
  [view3 addSubview:self->_defaultLabel];

  initForControlCenter = [[AXCCExpandableButton alloc] initForControlCenter];
  perAppModeSwitcher = self->_perAppModeSwitcher;
  self->_perAppModeSwitcher = initForControlCenter;

  [(AXCCExpandableButton *)self->_perAppModeSwitcher addTarget:self action:sel__togglePerAppButton_ forControlEvents:4096];
  [(AXCCExpandableButton *)self->_perAppModeSwitcher setButtonImageSize:54.0, 54.0];
  [(AXCCExpandableButton *)self->_perAppModeSwitcher setMaximumExpandedSize:0.0, 228.0];
  [(AXCCExpandableButton *)self->_perAppModeSwitcher setExpanded:1];
  view4 = [(AXCCTextSizeSliderBackgroundViewController *)self view];
  [view4 addSubview:self->_perAppModeSwitcher];

  v18 = objc_opt_new();
  switcherOptions = self->_switcherOptions;
  self->_switcherOptions = v18;

  v20 = 0;
  while (v20 < [&unk_2A23E3100 count])
  {
    v21 = MEMORY[0x29EDC7AC8];
    v22 = [&unk_2A23E3100 objectAtIndexedSubscript:v20];
    v23 = [v21 systemImageNamed:v22];

    v24 = objc_alloc_init(AXCCExpandableButtonOption);
    systemWhiteColor = [MEMORY[0x29EDC7A00] systemWhiteColor];
    [(AXCCExpandableButtonOption *)v24 setSelectedBackgroundColor:systemWhiteColor];

    [(AXCCExpandableButtonOption *)v24 setImage:v23];
    [(NSMutableArray *)self->_switcherOptions addObject:v24];

    if (++v20 == 4)
    {
      goto LABEL_8;
    }
  }

  v26 = AXLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_29C947158(v26);
  }

LABEL_8:
  lastObject = [(NSMutableArray *)self->_switcherOptions lastObject];
  v28 = AXCCLocalizedString(@"global.label");
  [lastObject setTitle:v28];

  [(AXCCTextSizeSliderBackgroundViewController *)self _updateLabelFonts];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x29EDC8078] object:0];

  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__contentSizeCategoryDidChangeInternally_ name:@"AXCCInternalTextSizeDidUpdate" object:0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = AXCCTextSizeSliderBackgroundViewController;
  [(AXCCTextSizeSliderBackgroundViewController *)&v9 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    view = [(AXCCTextSizeSliderBackgroundViewController *)self view];
    v7 = [view visualStylingProviderForCategory:1];

    v8 = [[AXCCVisualStylingProvider alloc] initWithVisualStylingProvider:v7];
    [(AXCCExpandableButton *)self->_perAppModeSwitcher setStylingProvider:v8];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXCCTextSizeSliderBackgroundViewController;
  [(AXCCTextSizeSliderBackgroundViewController *)&v4 dealloc];
}

- (void)moduleDidExpand
{
  [(AXCCTextSizeSliderBackgroundViewController *)self _updatePerAppControls];

  [(AXCCTextSizeSliderBackgroundViewController *)self _contentSizeCategoryDidChange:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXCCTextSizeSliderBackgroundViewController;
  [(AXCCTextSizeSliderBackgroundViewController *)&v4 viewWillAppear:appear];
  [(AXCCTextSizeSliderBackgroundViewController *)self _updatePerAppControls];
  [(AXCCTextSizeSliderBackgroundViewController *)self _contentSizeCategoryDidChange:0];
}

- (void)_updateDefaultLabelPercentageForContentSizeCategory:(id)category
{
  AXTextSizePercentage();
  v4 = AXFormatFloatWithPercentage();
  [(UILabel *)self->_textPercentageLabel setText:v4];
}

- (void)_updateDefaultLabelVisibilityForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v5 = MEMORY[0x29EDC7DA0];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C93DC30;
  v7[3] = &unk_29F335450;
  v7[4] = self;
  v8 = categoryCopy;
  v6 = categoryCopy;
  [v5 animateWithDuration:v7 animations:0.1];
}

- (id)_labelSubviewWithText:(id)text
{
  v3 = MEMORY[0x29EDC7B38];
  textCopy = text;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)}];
  whiteColor = [MEMORY[0x29EDC7A00] whiteColor];
  [v6 setTextColor:whiteColor];

  [v6 setText:textCopy];
  [v6 controlCenterApplyPrimaryContentShadow];

  return v6;
}

- (id)_labelSubviewWithAttributedText:(id)text
{
  v3 = MEMORY[0x29EDC7B38];
  textCopy = text;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)}];
  whiteColor = [MEMORY[0x29EDC7A00] whiteColor];
  [v6 setTextColor:whiteColor];

  [v6 setAttributedText:textCopy];
  [v6 controlCenterApplyPrimaryContentShadow];

  return v6;
}

- (id)_attachmentAttributedString:(id)string withSystemImage:(id)image
{
  v5 = MEMORY[0x29EDC7698];
  imageCopy = image;
  stringCopy = string;
  v8 = objc_alloc_init(v5);
  v9 = [MEMORY[0x29EDC7AD0] configurationWithTextStyle:*MEMORY[0x29EDC8128]];
  v10 = [MEMORY[0x29EDC7AC8] systemImageNamed:imageCopy withConfiguration:v9];

  whiteColor = [MEMORY[0x29EDC7A00] whiteColor];
  v12 = [v10 imageWithTintColor:whiteColor];
  [v8 setImage:v12];

  v13 = [MEMORY[0x29EDBA038] attributedStringWithAttachment:v8];
  v14 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:stringCopy];

  [v14 insertAttributedString:v13 atIndex:0];

  return v14;
}

- (id)_preferredCategoryWithPerAppSettings
{
  v11 = *MEMORY[0x29EDCA608];
  categoryName = [(AXCCTextSizeHelper *)self->_helper categoryName];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[AXCCTextSizeHelper state](self->_helper, "state")}];
    v7 = 138412546;
    v8 = categoryName;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_29C939000, v4, OS_LOG_TYPE_INFO, "Preferrefed category: %@ = %@", &v7, 0x16u);
  }

  return categoryName;
}

- (void)_updateLabelFonts
{
  _preferredCategoryWithPerAppSettings = [(AXCCTextSizeSliderBackgroundViewController *)self _preferredCategoryWithPerAppSettings];
  v3 = [MEMORY[0x29EDC7D80] traitCollectionWithPreferredContentSizeCategory:_preferredCategoryWithPerAppSettings];
  textSizeLabel = self->_textSizeLabel;
  v5 = AXCCLocalizedString(@"text.size.label");
  v6 = [(AXCCTextSizeSliderBackgroundViewController *)self _attachmentAttributedString:v5 withSystemImage:@"textformat.size"];
  [(UILabel *)textSizeLabel setAttributedText:v6];

  v7 = [MEMORY[0x29EDC76B0] preferredFontForTextStyle:*MEMORY[0x29EDC8128] compatibleWithTraitCollection:v3];
  [(UILabel *)self->_textSizeLabel setFont:v7];

  v8 = [MEMORY[0x29EDC76B0] preferredFontForTextStyle:*MEMORY[0x29EDC8120] compatibleWithTraitCollection:v3];
  [(UILabel *)self->_textPercentageLabel setFont:v8];

  _preferredCategoryWithPerAppSettings2 = [(AXCCTextSizeSliderBackgroundViewController *)self _preferredCategoryWithPerAppSettings];
  [(AXCCTextSizeSliderBackgroundViewController *)self _updateDefaultLabelPercentageForContentSizeCategory:_preferredCategoryWithPerAppSettings2];

  v10 = [MEMORY[0x29EDC76B8] defaultFontDescriptorWithTextStyle:*MEMORY[0x29EDC80E0] addingSymbolicTraits:2 options:0];
  v11 = MEMORY[0x29EDC76B0];
  [v10 pointSize];
  v12 = [v11 fontWithDescriptor:v10 size:?];
  [(UILabel *)self->_defaultLabel setFont:v12];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  [(AXCCTextSizeSliderBackgroundViewController *)self _updateLabelFonts];
  _preferredCategoryWithPerAppSettings = [(AXCCTextSizeSliderBackgroundViewController *)self _preferredCategoryWithPerAppSettings];
  [(AXCCTextSizeSliderBackgroundViewController *)self _updateDefaultLabelPercentageForContentSizeCategory:_preferredCategoryWithPerAppSettings];
  [(AXCCTextSizeSliderBackgroundViewController *)self _updateDefaultLabelVisibilityForContentSizeCategory:_preferredCategoryWithPerAppSettings];
  view = [(AXCCTextSizeSliderBackgroundViewController *)self view];
  [view setNeedsLayout];
}

- (void)_contentSizeCategoryDidChangeInternally:(id)internally
{
  object = [internally object];
  if ([(AXCCTextSizeHelper *)self->_helper state]== 3)
  {
    v4 = object;
  }

  else
  {
    categoryName = [(AXCCTextSizeHelper *)self->_helper categoryName];

    v4 = categoryName;
  }

  v13 = v4;
  v6 = [MEMORY[0x29EDC7D80] traitCollectionWithPreferredContentSizeCategory:v4];
  font = [(UILabel *)self->_textSizeLabel font];
  v8 = [font _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];
  [(UILabel *)self->_textSizeLabel setFont:v8];

  font2 = [(UILabel *)self->_textPercentageLabel font];
  v10 = [font2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];
  [(UILabel *)self->_textPercentageLabel setFont:v10];

  [(AXCCTextSizeSliderBackgroundViewController *)self _updateDefaultLabelPercentageForContentSizeCategory:v13];
  [(AXCCTextSizeSliderBackgroundViewController *)self _updateDefaultLabelVisibilityForContentSizeCategory:v13];
  view = [(AXCCTextSizeSliderBackgroundViewController *)self view];
  [view setNeedsLayout];
}

- (void)_updatePerAppControls
{
  v34 = *MEMORY[0x29EDCA608];
  [(AXCCTextSizeHelper *)self->_helper refreshAppInfo];
  [(AXCCTextSizeHelper *)self->_helper refreshCategoryName];
  if (self->_perAppModeSwitcher)
  {
    isPerAppAvailable = [(AXCCTextSizeHelper *)self->_helper isPerAppAvailable];
    perAppModeSwitcher = self->_perAppModeSwitcher;
    if (isPerAppAvailable)
    {
      [(AXCCExpandableButton *)perAppModeSwitcher setHidden:0];
      v5 = objc_opt_new();
      appsNames = [(AXCCTextSizeHelper *)self->_helper appsNames];
      appsIdentifiers = [(AXCCTextSizeHelper *)self->_helper appsIdentifiers];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = appsNames;
      v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v27)
      {
        v7 = 0;
        v26 = *v30;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v30 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v29 + 1) + 8 * i);
            if ([(NSMutableArray *)self->_switcherOptions count]- 1 <= v7)
            {
              v21 = AXLogCommon();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_29C94719C(v21);
              }

              goto LABEL_21;
            }

            v10 = v5;
            v11 = [(NSMutableArray *)self->_switcherOptions objectAtIndex:v7];
            v12 = MEMORY[0x29EDBA0F8];
            v13 = AXCCLocalizedString(@"perapp.label");
            v14 = [v12 localizedStringWithFormat:v13, v9];
            [v11 setTitle:v14];

            v15 = [appsIdentifiers objectAtIndexedSubscript:v7];
            v16 = [v15 isEqualToString:@"com.apple.springboard"];

            v17 = MEMORY[0x29EDC7AC8];
            if (v16)
            {
              v18 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"square.3.stack.3d.top.fill"];
              [v11 setImage:v18];
            }

            else
            {
              v18 = [appsIdentifiers objectAtIndexedSubscript:v7];
              v19 = [v17 _applicationIconImageForBundleIdentifier:v18 format:0];
              [v11 setImage:v19];
            }

            v5 = v10;
            [v10 addObject:v11];
            ++v7;
          }

          v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      if ([v5 count])
      {
        lastObject = [(NSMutableArray *)self->_switcherOptions lastObject];
        [v5 addObject:lastObject];

        [(AXCCExpandableButton *)self->_perAppModeSwitcher setOptions:v5];
        [(AXCCExpandableButton *)self->_perAppModeSwitcher setExpanded:1];
        v23 = appsIdentifiers;
        if ([(AXCCTextSizeHelper *)self->_helper state]== 3)
        {
          options = [(AXCCExpandableButton *)self->_perAppModeSwitcher options];
          -[AXCCExpandableButton setSelectedOptionIndex:](self->_perAppModeSwitcher, "setSelectedOptionIndex:", [options count] - 1);
        }

        else
        {
          [(AXCCExpandableButton *)self->_perAppModeSwitcher setSelectedOptionIndex:[(AXCCTextSizeHelper *)self->_helper state]];
        }
      }

      else
      {
        [(AXCCExpandableButton *)self->_perAppModeSwitcher setOptions:0];
        [(AXCCExpandableButton *)self->_perAppModeSwitcher setHidden:1];
        v23 = appsIdentifiers;
      }
    }

    else
    {
      [(AXCCExpandableButton *)perAppModeSwitcher setOptions:0];
      v20 = self->_perAppModeSwitcher;

      [(AXCCExpandableButton *)v20 setHidden:1];
    }
  }
}

- (void)_togglePerAppButton:(id)button
{
  selectedOptionIndex = [(AXCCExpandableButton *)self->_perAppModeSwitcher selectedOptionIndex];
  options = [(AXCCExpandableButton *)self->_perAppModeSwitcher options];
  v6 = [options count] - 1;

  if (selectedOptionIndex == v6)
  {
    selectedOptionIndex2 = 3;
  }

  else
  {
    selectedOptionIndex2 = [(AXCCExpandableButton *)self->_perAppModeSwitcher selectedOptionIndex];
  }

  [(AXCCTextSizeHelper *)self->_helper setState:selectedOptionIndex2];

  [(AXCCTextSizeSliderBackgroundViewController *)self _contentSizeCategoryDidChange:0];
}

- (void)_layoutPerAppControls
{
  view = [(AXCCTextSizeSliderBackgroundViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ((CCUIIsPortrait() & 1) != 0 || ([MEMORY[0x29EDC7A58] currentDevice], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "userInterfaceIdiom"), v12, v13 == 1))
  {
    [(AXCCExpandableButton *)self->_perAppModeSwitcher setAxis:0];
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    Width = CGRectGetWidth(v24);
    v25.origin.x = v5;
    v25.origin.y = v7;
    v25.size.width = v9;
    v25.size.height = v11;
    Height = CGRectGetHeight(v25);
    CCUISliderExpandedContentModuleHeight();
    v17 = (Height - v16) * 0.5;
    v26.origin.x = v5;
    v26.origin.y = v7;
    v26.size.width = v9;
    v26.size.height = v11;
    v18 = (CGRectGetWidth(v26) - Width) * 0.5;
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    v19 = CGRectGetHeight(v27) - (v17 + v17) * 0.5;
  }

  else
  {
    [(AXCCExpandableButton *)self->_perAppModeSwitcher setAxis:1];
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    v20 = CGRectGetWidth(v28);
    CCUISliderExpandedContentModuleWidth();
    Width = (v20 - v21) * 0.5;
    v29.origin.x = v5;
    v29.origin.y = v7;
    v29.size.width = v9;
    v29.size.height = v11;
    v17 = CGRectGetHeight(v29);
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    v18 = CGRectGetWidth(v30) - (Width + Width) * 0.5;
    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    v19 = (CGRectGetHeight(v31) - v17) * 0.5;
  }

  perAppModeSwitcher = self->_perAppModeSwitcher;

  [(AXCCExpandableButton *)perAppModeSwitcher setFrame:v18, v19, Width, v17];
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = AXCCTextSizeSliderBackgroundViewController;
  [(AXCCTextSizeSliderBackgroundViewController *)&v28 viewWillLayoutSubviews];
  [(UILabel *)self->_textSizeLabel setNumberOfLines:1];
  [(UILabel *)self->_textSizeLabel sizeToFit];
  view = [(AXCCTextSizeSliderBackgroundViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  Width = CGRectGetWidth(v29);
  CCUISliderExpandedContentModuleWidth();
  v14 = v13;
  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  Height = CGRectGetHeight(v30);
  CCUISliderExpandedContentModuleHeight();
  v17 = v16;
  if ((CCUIIsPortrait() & 1) != 0 || ([MEMORY[0x29EDC7A58] currentDevice], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "userInterfaceIdiom"), v18, v19 == 1))
  {
    v20 = (Height - v17) * 0.5;
    [(UILabel *)self->_textSizeLabel frame];
    if (v21 > v9)
    {
      [(UILabel *)self->_textSizeLabel frame];
      [(UILabel *)self->_textSizeLabel setFrame:?];
    }

    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    CGRectGetMidX(v31);
  }

  else
  {
    v22 = (Width - v14) * 0.5;
    v32.origin.x = v5;
    v32.origin.y = v7;
    v32.size.width = v9;
    v32.size.height = v11;
    v20 = CGRectGetHeight(v32);
    [(UILabel *)self->_textSizeLabel frame];
    if (v23 > v22)
    {
      [(UILabel *)self->_textSizeLabel setNumberOfLines:0];
      [(UILabel *)self->_textSizeLabel frame];
      [(UILabel *)self->_textSizeLabel setFrame:?];
      [(UILabel *)self->_textSizeLabel sizeToFit];
      [(UILabel *)self->_textSizeLabel frame];
      if (v24 > v11)
      {
        [(UILabel *)self->_textSizeLabel frame];
        [(UILabel *)self->_textSizeLabel setFrame:?];
      }
    }

    v33.origin.x = v5;
    v33.origin.y = v7;
    v33.size.width = v9;
    v33.size.height = v11;
    CGRectGetMidY(v33);
    [(UILabel *)self->_textSizeLabel frame];
  }

  UIPointRoundToViewScale();
  [(UILabel *)self->_textSizeLabel setCenter:?];
  textSizeLabel = self->_textSizeLabel;
  [(UILabel *)textSizeLabel frame];
  UIRectIntegralWithScale();
  [(UILabel *)textSizeLabel setFrame:?];
  [(UILabel *)self->_textPercentageLabel sizeToFit];
  [(UILabel *)self->_textPercentageLabel frame];
  [(UILabel *)self->_textSizeLabel center];
  [(UILabel *)self->_textSizeLabel frame];
  CGRectGetMaxY(v34);
  textPercentageLabel = self->_textPercentageLabel;
  UIRectIntegralWithScale();
  [(UILabel *)textPercentageLabel setFrame:?];
  [(UILabel *)self->_defaultLabel sizeToFit];
  [(UILabel *)self->_defaultLabel frame];
  [(UILabel *)self->_textSizeLabel center];
  [(UILabel *)self->_textPercentageLabel frame];
  CGRectGetMaxY(v35);
  defaultLabel = self->_defaultLabel;
  UIRectIntegralWithScale();
  [(UILabel *)defaultLabel setFrame:?];
  [(UILabel *)self->_textPercentageLabel frame];
  if (CGRectGetMaxY(v36) - v20 + 5.0 > 0.0)
  {
    [(UILabel *)self->_textSizeLabel frame];
    [(UILabel *)self->_textSizeLabel setFrame:?];
    [(UILabel *)self->_textPercentageLabel frame];
    [(UILabel *)self->_textPercentageLabel setFrame:?];
  }

  [(AXCCTextSizeSliderBackgroundViewController *)self _layoutPerAppControls];
}

@end