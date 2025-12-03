@interface CNContactListStyleApplier
+ (void)applyDefaultStyleToContact:(id)contact usingFormatter:(id)formatter ofCell:(id)cell;
- (BOOL)usesInsetPlatterStyle;
- (CNContactListStyleApplier)initWithContactListStyle:(id)style;
- (double)cellEstimatedHeight;
- (id)attributedString:(id)string foregroundColor:(id)color;
- (id)createNewBlockedIcon;
- (unint64_t)tableNoContactsAvailableStyle;
- (void)applyBackgroundColorToBackgroundConfiguration:(id)configuration usingState:(id)state forCell:(id)cell;
- (void)applyCellSeparatorInsetStyleToConfiguration:(id)configuration superviewDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins listAppearance:(int64_t)appearance itemIsFirstInSection:(BOOL)section itemIsLastInSection:(BOOL)inSection itemIsSelected:(BOOL)selected;
- (void)applyContactListDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins toLayoutSection:(id)section collectionViewIsShowingIndexBar:(BOOL)bar;
- (void)applyContactListStyleToBackgroundConfiguration:(id)configuration usingState:(id)state forCell:(id)cell;
- (void)applyContactListStyleToBannerFootnote:(id)footnote primaryAppearance:(BOOL)appearance;
- (void)applyContactListStyleToBannerTitle:(id)title primaryAppearance:(BOOL)appearance;
- (void)applyContactListStyleToBlockedIcon:(id)icon ofCell:(id)cell;
- (void)applyContactListStyleToCell:(id)cell;
- (void)applyContactListStyleToCollectionLayoutConfiguration:(id)configuration;
- (void)applyContactListStyleToCollectionView:(id)view;
- (void)applyContactListStyleToContact:(id)contact usingFormatter:(id)formatter ofCell:(id)cell wantsInlineBlockIcon:(BOOL)icon;
- (void)applyContactListStyleToContentConfiguration:(id)configuration usingState:(id)state forCell:(id)cell;
- (void)applyContactListStyleToEmergencyIcon:(id)icon ofCell:(id)cell;
- (void)applyContactListStyleToHeaderConfiguration:(id)configuration forHeaderFooterView:(id)view;
- (void)applyContactListStyleToHeaderFooter:(id)footer withTitle:(id)title isRTL:(BOOL)l listAppearance:(int64_t)appearance superviewDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)applyContactListStyleToMeContactLabel:(id)label ofCell:(id)cell;
- (void)applyContactListStyleToNavigationBar:(id)bar;
- (void)applyContactListStyleToSearchBar:(id)bar;
- (void)applyContactListStyleToSearchCell:(id)cell;
- (void)applyContactListStyleToSearchHeader:(id)header withTitle:(id)title;
- (void)applyContactListStyleToSubtitleText:(id)text ofSearchResultCell:(id)cell;
- (void)applyEditingStateBackgroundConfigurationToCell:(id)cell;
- (void)applySubtitleTextColorsToSearchCellContentConfiguration:(id)configuration withSubtitleText:(id)text forSelectedState:(BOOL)state;
- (void)applyTextColorsToContentConfiguration:(id)configuration usingState:(id)state forCell:(id)cell;
@end

@implementation CNContactListStyleApplier

- (void)applyContactListStyleToBannerFootnote:(id)footnote primaryAppearance:(BOOL)appearance
{
  footnoteCopy = footnote;
  if (appearance)
  {
    v7 = +[CNUIFontRepository contactListBannerFootnoteFontPrimary];
    +[CNUIColorRepository contactListBannerFootnoteTextColorPrimary];
  }

  else
  {
    v7 = +[CNUIFontRepository contactListBannerFootnoteFontSecondary];
    +[CNUIColorRepository contactListBannerFootnoteTextColorSecondary];
  }
  v6 = ;
  [footnoteCopy setFont:v7];
  [footnoteCopy setTextColor:v6];
}

- (void)applyContactListStyleToBannerTitle:(id)title primaryAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  titleCopy = title;
  if (appearanceCopy)
  {
    v6 = +[CNUIFontRepository contactListBannerTitleFontPrimary];
    [titleCopy setFont:v6];
  }

  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  bannerTitleTextColor = [contactListStyle bannerTitleTextColor];
  [titleCopy setTextColor:bannerTitleTextColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [titleCopy setBackgroundColor:clearColor];
}

- (id)createNewBlockedIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
  v4 = [v2 cnui_symbolImageNamed:@"nosign" scale:1 withColor:v3 useFixedSize:0];

  return v4;
}

- (void)applyContactListStyleToBlockedIcon:(id)icon ofCell:(id)cell
{
  iconCopy = icon;
  createNewBlockedIcon = [(CNContactListStyleApplier *)self createNewBlockedIcon];
  [iconCopy setImage:createNewBlockedIcon];

  [iconCopy sizeToFit];
}

- (void)applyContactListStyleToEmergencyIcon:(id)icon ofCell:(id)cell
{
  v4 = MEMORY[0x1E69DCAB8];
  iconCopy = icon;
  v5 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
  v6 = [v4 cnui_symbolImageNamed:@"staroflife.fill" scale:3 withColor:v5 useFixedSize:0];
  [iconCopy setImage:v6];

  [iconCopy sizeToFit];
}

- (void)applyContactListStyleToMeContactLabel:(id)label ofCell:(id)cell
{
  labelCopy = label;
  v5 = +[CNUIColorRepository contactListMeLabelTextColor];
  [labelCopy setTextColor:v5];
}

- (void)applySubtitleTextColorsToSearchCellContentConfiguration:(id)configuration withSubtitleText:(id)text forSelectedState:(BOOL)state
{
  stateCopy = state;
  configurationCopy = configuration;
  textCopy = text;
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  cellSearchResultTextDisabledColor = [contactListStyle cellSearchResultTextDisabledColor];

  if (stateCopy)
  {
    contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
    usesInsetPlatterStyle = [contactListStyle2 usesInsetPlatterStyle];

    if (usesInsetPlatterStyle)
    {
      contactListStyle3 = [(CNContactListStyleApplier *)self contactListStyle];
      cellBlueSelectionSecondaryTextColor = [contactListStyle3 cellBlueSelectionSecondaryTextColor];

      cellSearchResultTextDisabledColor = cellBlueSelectionSecondaryTextColor;
    }
  }

  contactListStyle4 = [(CNContactListStyleApplier *)self contactListStyle];
  cellSearchResultTextColor = [contactListStyle4 cellSearchResultTextColor];
  v18 = cellSearchResultTextColor;
  if (cellSearchResultTextColor)
  {
    color = cellSearchResultTextColor;
  }

  else
  {
    textProperties = [configurationCopy textProperties];
    color = [textProperties color];
  }

  if ([textCopy length])
  {
    v21 = [textCopy mutableCopy];
  }

  else
  {
    v21 = 0;
  }

  [v21 addAttribute:*MEMORY[0x1E69DB650] value:cellSearchResultTextDisabledColor range:{0, objc_msgSend(v21, "length")}];
  v22 = *MEMORY[0x1E695CBE0];
  v23 = [v21 length];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __119__CNContactListStyleApplier_applySubtitleTextColorsToSearchCellContentConfiguration_withSubtitleText_forSelectedState___block_invoke;
  v30 = &unk_1E74E2328;
  v31 = v21;
  v32 = color;
  v24 = color;
  v25 = v21;
  [v25 enumerateAttribute:v22 inRange:0 options:v23 usingBlock:{0, &v27}];
  [configurationCopy setSecondaryText:{&stru_1F0CE7398, v27, v28, v29, v30}];
  secondaryTextProperties = [configurationCopy secondaryTextProperties];
  [secondaryTextProperties setColor:v24];

  [configurationCopy setSecondaryAttributedText:v25];
}

uint64_t __119__CNContactListStyleApplier_applySubtitleTextColorsToSearchCellContentConfiguration_withSubtitleText_forSelectedState___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 BOOLValue];
  if (result)
  {
    v8 = *MEMORY[0x1E69DB650];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);

    return [v9 addAttribute:v8 value:v10 range:{a3, a4}];
  }

  return result;
}

- (void)applyContactListStyleToSubtitleText:(id)text ofSearchResultCell:(id)cell
{
  cellCopy = cell;
  textCopy = text;
  objc_opt_class();
  contentConfiguration = [cellCopy contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v8 = contentConfiguration;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    contentConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  }

  -[CNContactListStyleApplier applySubtitleTextColorsToSearchCellContentConfiguration:withSubtitleText:forSelectedState:](self, "applySubtitleTextColorsToSearchCellContentConfiguration:withSubtitleText:forSelectedState:", contentConfiguration, textCopy, [cellCopy isSelected]);

  [cellCopy setContentConfiguration:contentConfiguration];
}

- (id)attributedString:(id)string foregroundColor:(id)color
{
  colorCopy = color;
  v6 = [string mutableCopy];
  string = [v6 string];
  v8 = [string length];

  [v6 addAttribute:*MEMORY[0x1E69DB650] value:colorCopy range:{0, v8}];

  return v6;
}

- (void)applyContactListStyleToContact:(id)contact usingFormatter:(id)formatter ofCell:(id)cell wantsInlineBlockIcon:(BOOL)icon
{
  iconCopy = icon;
  v46[2] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v10 = MEMORY[0x1E696AD40];
  formatterCopy = formatter;
  contactCopy = contact;
  v13 = objc_alloc_init(v10);
  if (iconCopy)
  {
    createNewBlockedIcon = [(CNContactListStyleApplier *)self createNewBlockedIcon];
    v15 = MEMORY[0x1E696AAB0];
    v16 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:createNewBlockedIcon];
    v17 = [v15 attributedStringWithAttachment:v16];
    [v13 appendAttributedString:v17];

    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v13 appendAttributedString:v18];
  }

  v19 = *MEMORY[0x1E69DB648];
  v20 = [(CNContactListStyleApplier *)self contactListStyle:cellCopy];
  cellNameTextFont = [v20 cellNameTextFont];
  v46[0] = cellNameTextFont;
  v45[1] = *MEMORY[0x1E695C2F8];
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  cellNameTextEmphasisedFont = [contactListStyle cellNameTextEmphasisedFont];
  v46[1] = cellNameTextEmphasisedFont;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

  v25 = [formatterCopy attributedStringForObjectValue:contactCopy withDefaultAttributes:v24];

  if (![v25 length])
  {
    v26 = [v24 mutableCopy];
    contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
    cellNameTextFont2 = [contactListStyle2 cellNameTextFont];
    fontDescriptor = [cellNameTextFont2 fontDescriptor];
    v30 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

    v31 = MEMORY[0x1E69DB878];
    contactListStyle3 = [(CNContactListStyleApplier *)self contactListStyle];
    cellNameTextFont3 = [contactListStyle3 cellNameTextFont];
    [cellNameTextFont3 pointSize];
    v34 = [v31 fontWithDescriptor:v30 size:?];
    [v26 setObject:v34 forKeyedSubscript:v19];

    v35 = objc_alloc(MEMORY[0x1E696AD40]);
    v36 = CNContactsUIBundle();
    v37 = [v36 localizedStringForKey:@"NO_NAME" value:&stru_1F0CE7398 table:@"Localized"];
    v38 = [v35 initWithString:v37 attributes:v26];

    v25 = v38;
  }

  [v13 appendAttributedString:v25];
  objc_opt_class();
  contentConfiguration = [v44 contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v40 = contentConfiguration;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;

  if (!v41)
  {
    contentConfiguration = [v44 defaultContentConfiguration];
  }

  [contentConfiguration setAttributedText:v13];
  textProperties = [contentConfiguration textProperties];
  [textProperties setAdjustsFontSizeToFitWidth:0];

  [v44 setContentConfiguration:contentConfiguration];
}

- (void)applyContactListStyleToCollectionView:(id)view
{
  viewCopy = view;
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  [viewCopy setOpaque:{objc_msgSend(contactListStyle, "tableIsOpaque")}];
}

- (void)applyContactListStyleToCollectionLayoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:29];

  if (v6)
  {
    [configurationCopy setHeaderTopPadding:0.0];
  }

  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  tableBackgroundFilteredColor = [contactListStyle tableBackgroundFilteredColor];
  if (tableBackgroundFilteredColor)
  {
    v9 = tableBackgroundFilteredColor;
    appearance = [configurationCopy appearance];

    if (appearance == 1)
    {
      contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
      tableBackgroundFilteredColor2 = [contactListStyle2 tableBackgroundFilteredColor];
LABEL_10:
      v16 = tableBackgroundFilteredColor2;
      [configurationCopy setBackgroundColor:tableBackgroundFilteredColor2];

      goto LABEL_11;
    }
  }

  else
  {
  }

  contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
  tableBackgroundColor = [contactListStyle2 tableBackgroundColor];
  if (tableBackgroundColor)
  {
    v14 = tableBackgroundColor;
    appearance2 = [configurationCopy appearance];

    if (appearance2 == 1)
    {
      goto LABEL_12;
    }

    contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
    tableBackgroundFilteredColor2 = [contactListStyle2 tableBackgroundColor];
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
}

- (void)applyContactListStyleToSearchBar:(id)bar
{
  v42[1] = *MEMORY[0x1E69E9840];
  barCopy = bar;
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  searchBarBackgroundColor = [contactListStyle searchBarBackgroundColor];

  if (searchBarBackgroundColor)
  {
    contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
    searchBarBackgroundColor2 = [contactListStyle2 searchBarBackgroundColor];
    [barCopy setBackgroundColor:searchBarBackgroundColor2];
  }

  contactListStyle3 = [(CNContactListStyleApplier *)self contactListStyle];
  searchBarStyle = [contactListStyle3 searchBarStyle];

  if (searchBarStyle)
  {
    contactListStyle4 = [(CNContactListStyleApplier *)self contactListStyle];
    [barCopy setBarStyle:{objc_msgSend(contactListStyle4, "searchBarStyle")}];
  }

  contactListStyle5 = [(CNContactListStyleApplier *)self contactListStyle];
  searchBarIsTranslucent = [contactListStyle5 searchBarIsTranslucent];

  if (searchBarIsTranslucent)
  {
    contactListStyle6 = [(CNContactListStyleApplier *)self contactListStyle];
    [barCopy setTranslucent:{objc_msgSend(contactListStyle6, "searchBarIsTranslucent")}];
  }

  contactListStyle7 = [(CNContactListStyleApplier *)self contactListStyle];
  searchBarTextColor = [contactListStyle7 searchBarTextColor];

  if (searchBarTextColor)
  {
    searchField = [barCopy searchField];
    isEnabled = [searchField isEnabled];

    contactListStyle8 = [(CNContactListStyleApplier *)self contactListStyle];
    v20 = contactListStyle8;
    if (isEnabled)
    {
      [contactListStyle8 searchBarTextColor];
    }

    else
    {
      [contactListStyle8 searchBarTextDisabledColor];
    }
    v21 = ;
    searchField2 = [barCopy searchField];
    [searchField2 setTextColor:v21];
  }

  contactListStyle9 = [(CNContactListStyleApplier *)self contactListStyle];
  searchBarKeyboardAppearance = [contactListStyle9 searchBarKeyboardAppearance];

  if (searchBarKeyboardAppearance)
  {
    contactListStyle10 = [(CNContactListStyleApplier *)self contactListStyle];
    searchBarKeyboardAppearance2 = [contactListStyle10 searchBarKeyboardAppearance];
    searchField3 = [barCopy searchField];
    [searchField3 setKeyboardAppearance:searchBarKeyboardAppearance2];
  }

  searchField4 = [barCopy searchField];
  isEnabled2 = [searchField4 isEnabled];
  contactListStyle11 = [(CNContactListStyleApplier *)self contactListStyle];
  v31 = contactListStyle11;
  if (isEnabled2)
  {
    [contactListStyle11 searchBarPlaceholderTextColor];
  }

  else
  {
    [contactListStyle11 searchBarPlaceholderTextDisabledColor];
  }
  v32 = ;

  searchField5 = [barCopy searchField];
  placeholder = [searchField5 placeholder];

  if (placeholder && v32)
  {
    v41 = *MEMORY[0x1E69DB650];
    v42[0] = v32;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v36 = objc_alloc(MEMORY[0x1E696AD40]);
    searchField6 = [barCopy searchField];
    placeholder2 = [searchField6 placeholder];
    v39 = [v36 initWithString:placeholder2 attributes:v35];
    searchField7 = [barCopy searchField];
    [searchField7 setAttributedPlaceholder:v39];
  }
}

- (void)applyContactListStyleToNavigationBar:(id)bar
{
  barCopy = bar;
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  navigationBarStyle = [contactListStyle navigationBarStyle];

  if (navigationBarStyle)
  {
    contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
    [barCopy setBarStyle:{objc_msgSend(contactListStyle2, "navigationBarStyle")}];
  }

  contactListStyle3 = [(CNContactListStyleApplier *)self contactListStyle];
  navigationBarIsTranslucent = [contactListStyle3 navigationBarIsTranslucent];

  if (navigationBarIsTranslucent)
  {
    contactListStyle4 = [(CNContactListStyleApplier *)self contactListStyle];
    [barCopy setTranslucent:{objc_msgSend(contactListStyle4, "navigationBarIsTranslucent")}];
  }
}

- (void)applyContactListStyleToHeaderConfiguration:(id)configuration forHeaderFooterView:(id)view
{
  configurationCopy = configuration;
  viewCopy = view;
  traitCollection = [viewCopy traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v11 = [featureFlags isFeatureEnabled:29];

  if (v11)
  {
    traitCollection2 = [viewCopy traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];

    if (layoutDirection == 1)
    {
      v14 = 18.0;
    }

    else
    {
      v14 = 0.0;
    }

    contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
    [contactListStyle sectionHeaderFooterLeadingLayoutMargin];
    v17 = v16;

    if (!_splitViewControllerContext)
    {
      v17 = v14;
    }

    [configurationCopy directionalLayoutMargins];
    v19 = v18;
    [configurationCopy directionalLayoutMargins];
    v21 = v20;
    [configurationCopy directionalLayoutMargins];
    [configurationCopy setDirectionalLayoutMargins:{v19, v17, v21}];
  }

  v22 = MEMORY[0x1E69DDD40];
  if (!_splitViewControllerContext)
  {
    v22 = MEMORY[0x1E69DDD78];
  }

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v22];
  textProperties = [configurationCopy textProperties];
  [textProperties setFont:v23];

  [viewCopy setContentConfiguration:configurationCopy];
}

- (void)applyContactListStyleToHeaderFooter:(id)footer withTitle:(id)title isRTL:(BOOL)l listAppearance:(int64_t)appearance superviewDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  lCopy = l;
  footerCopy = footer;
  titleCopy = title;
  if (footerCopy)
  {
    objc_opt_class();
    contentConfiguration = [footerCopy contentConfiguration];
    if (objc_opt_isKindOfClass())
    {
      v13 = contentConfiguration;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v14)
    {
      contentConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
    }

    [contentConfiguration setText:titleCopy];
    v15 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1;
    textProperties = [contentConfiguration textProperties];
    [textProperties setNumberOfLines:v15];

    if (lCopy)
    {
      [contentConfiguration setAxesPreservingSuperviewLayoutMargins:0];
      [contentConfiguration directionalLayoutMargins];
      v18 = v17;
      [footerCopy directionalLayoutMargins];
      [footerCopy directionalLayoutMargins];
      [contentConfiguration setDirectionalLayoutMargins:v18];
    }

    [footerCopy setContentConfiguration:contentConfiguration];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __130__CNContactListStyleApplier_applyContactListStyleToHeaderFooter_withTitle_isRTL_listAppearance_superviewDirectionalLayoutMargins___block_invoke;
    v20[3] = &unk_1E74E2300;
    v20[4] = self;
    v21 = contentConfiguration;
    v19 = contentConfiguration;
    [footerCopy setConfigurationUpdateHandler:v20];
  }
}

- (void)applyContactListStyleToSearchHeader:(id)header withTitle:(id)title
{
  v6 = MEMORY[0x1E69DCC28];
  titleCopy = title;
  headerCopy = header;
  headerConfiguration = [v6 headerConfiguration];
  uppercaseString = [titleCopy uppercaseString];

  [headerConfiguration setText:uppercaseString];
  v11 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1;
  textProperties = [headerConfiguration textProperties];
  [textProperties setNumberOfLines:v11];

  [headerCopy setContentConfiguration:headerConfiguration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CNContactListStyleApplier_applyContactListStyleToSearchHeader_withTitle___block_invoke;
  v14[3] = &unk_1E74E2300;
  v14[4] = self;
  v15 = headerConfiguration;
  v13 = headerConfiguration;
  [headerCopy setConfigurationUpdateHandler:v14];
}

- (void)applyContactListStyleToSearchCell:(id)cell
{
  cellCopy = cell;
  [(CNContactListStyleApplier *)self applyContactListStyleToCell:?];
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  cellSearchBackgroundColor = [contactListStyle cellSearchBackgroundColor];

  if (cellSearchBackgroundColor)
  {
    contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
    cellSearchBackgroundColor2 = [contactListStyle2 cellSearchBackgroundColor];
    [cellCopy setBackgroundColor:cellSearchBackgroundColor2];
  }
}

- (void)applyEditingStateBackgroundConfigurationToCell:(id)cell
{
  v3 = MEMORY[0x1E69DC6E8];
  cellCopy = cell;
  clearConfiguration = [v3 clearConfiguration];
  [cellCopy setBackgroundConfiguration:clearConfiguration];
}

- (void)applyContactListStyleToContentConfiguration:(id)configuration usingState:(id)state forCell:(id)cell
{
  cellCopy = cell;
  stateCopy = state;
  v17 = [configuration updatedConfigurationForState:stateCopy];
  [(CNContactListStyle *)self->_contactListStyle cellTopLayoutMargin];
  v11 = v10;
  [(CNContactListStyle *)self->_contactListStyle cellLeadingLayoutMargin];
  v13 = v12;
  [(CNContactListStyle *)self->_contactListStyle cellBottomLayoutMargin];
  v15 = v14;
  [(CNContactListStyle *)self->_contactListStyle cellTrailingLayoutMargin];
  [v17 setDirectionalLayoutMargins:{v11, v13, v15, v16}];
  [(CNContactListStyleApplier *)self applyTextColorsToContentConfiguration:v17 usingState:stateCopy forCell:cellCopy];

  [cellCopy applyAccessories];
  [cellCopy setContentConfiguration:v17];
}

- (void)applyContactListStyleToBackgroundConfiguration:(id)configuration usingState:(id)state forCell:(id)cell
{
  configurationCopy = configuration;
  stateCopy = state;
  cellCopy = cell;
  if ([stateCopy isEditing])
  {
    [MEMORY[0x1E69DC6E8] clearConfiguration];
  }

  else
  {
    [configurationCopy updatedConfigurationForState:stateCopy];
  }
  v10 = ;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v13 = [featureFlags isFeatureEnabled:29];

  if (v13)
  {
    traitCollection = [stateCopy traitCollection];
    _splitViewControllerContext = [traitCollection _splitViewControllerContext];

    if (_splitViewControllerContext)
    {
      v16 = *MEMORY[0x1E69DC5C0];
      v17 = *(MEMORY[0x1E69DC5C0] + 8);
      v18 = *(MEMORY[0x1E69DC5C0] + 16);
      v19 = *(MEMORY[0x1E69DC5C0] + 24);
    }

    else
    {
      [cellCopy directionalLayoutMargins];
      v17 = -v20;
      [cellCopy directionalLayoutMargins];
      v19 = -v21;
      v16 = 0.0;
      v18 = 0.0;
    }

    [v10 setBackgroundInsets:{v16, v17, v18, v19}];
  }

  [(CNContactListStyleApplier *)self applyBackgroundColorToBackgroundConfiguration:v10 usingState:stateCopy forCell:cellCopy];
  [cellCopy setBackgroundConfiguration:v10];
}

- (void)applyContactListStyleToCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  backgroundConfiguration = [cellCopy backgroundConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v6 = backgroundConfiguration;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    backgroundConfiguration = [cellCopy defaultBackgroundConfiguration];
  }

  objc_opt_class();
  contentConfiguration = [cellCopy contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v9 = contentConfiguration;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    contentConfiguration = [cellCopy defaultContentConfiguration];
  }

  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  [cellCopy setOpaque:{objc_msgSend(contactListStyle, "cellIsOpaque")}];

  [cellCopy setContentConfiguration:contentConfiguration];
  [cellCopy setBackgroundConfiguration:backgroundConfiguration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__CNContactListStyleApplier_applyContactListStyleToCell___block_invoke;
  v14[3] = &unk_1E74E22D8;
  v14[4] = self;
  v15 = backgroundConfiguration;
  v16 = contentConfiguration;
  v12 = backgroundConfiguration;
  v13 = contentConfiguration;
  [cellCopy setConfigurationUpdateHandler:v14];
}

void __57__CNContactListStyleApplier_applyContactListStyleToCell___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  [v5 applyContactListStyleToBackgroundConfiguration:v6 usingState:v7 forCell:v8];
  [*(a1 + 32) applyContactListStyleToContentConfiguration:*(a1 + 48) usingState:v7 forCell:v8];
}

- (void)applyContactListDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins toLayoutSection:(id)section collectionViewIsShowingIndexBar:(BOOL)bar
{
  trailing = margins.trailing;
  sectionCopy = section;
  [sectionCopy contentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v15 = [featureFlags isFeatureEnabled:29];

  if (v15)
  {
    [sectionCopy contentInsets];
    v10 = v16 + 2.0;
    v12 = 0.0;
    v8 = 0.0;
  }

  else
  {
    contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
    usesInsetPlatterStyle = [contactListStyle usesInsetPlatterStyle];

    if (!usesInsetPlatterStyle)
    {
      goto LABEL_5;
    }
  }

  [sectionCopy setContentInsets:{v8, v10, v12, trailing}];
LABEL_5:
}

- (void)applyCellSeparatorInsetStyleToConfiguration:(id)configuration superviewDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins listAppearance:(int64_t)appearance itemIsFirstInSection:(BOOL)section itemIsLastInSection:(BOOL)inSection itemIsSelected:(BOOL)selected
{
  selectedCopy = selected;
  inSectionCopy = inSection;
  sectionCopy = section;
  trailing = margins.trailing;
  leading = margins.leading;
  configurationCopy = configuration;
  [configurationCopy topSeparatorInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v47 = v21;
  [configurationCopy bottomSeparatorInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v46 = v28;
  if (!sectionCopy || ([MEMORY[0x1E69966E8] currentEnvironment], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "featureFlags"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isFeatureEnabled:", 29), v30, v29, v31))
  {
    [(CNContactListStyle *)self->_contactListStyle tableSeparatorLeadingInsetForListAppearance:appearance];
    v18 = v32;
  }

  if (!inSectionCopy)
  {
    leading = v25;
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v35 = [featureFlags isFeatureEnabled:29];

  v36 = 0.0;
  v37 = 0.0;
  if ((v35 & 1) == 0)
  {
    contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
    usesInsetPlatterStyle = [contactListStyle usesInsetPlatterStyle];

    if (usesInsetPlatterStyle)
    {
      v36 = v46;
    }

    else
    {
      v36 = trailing;
    }

    if (usesInsetPlatterStyle)
    {
      v37 = v47;
    }

    else
    {
      v37 = trailing;
    }
  }

  [configurationCopy setTopSeparatorInsets:{v16, v18, v20, v37}];
  [configurationCopy setBottomSeparatorInsets:{v23, leading, v27, v36}];
  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags2 = [currentEnvironment2 featureFlags];
  v42 = [featureFlags2 isFeatureEnabled:29];

  if (!v42)
  {
    contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
    [configurationCopy setBottomSeparatorVisibility:{objc_msgSend(contactListStyle2, "tableSeparatorStyle")}];

    goto LABEL_19;
  }

  if (inSectionCopy || selectedCopy)
  {
    [configurationCopy setBottomSeparatorVisibility:2];
    if (sectionCopy)
    {
      goto LABEL_21;
    }

LABEL_19:
    contactListStyle3 = [(CNContactListStyleApplier *)self contactListStyle];
    [configurationCopy setTopSeparatorVisibility:{objc_msgSend(contactListStyle3, "tableSeparatorStyle")}];

    goto LABEL_23;
  }

  contactListStyle4 = [(CNContactListStyleApplier *)self contactListStyle];
  [configurationCopy setBottomSeparatorVisibility:{objc_msgSend(contactListStyle4, "tableSeparatorStyle")}];

  if (!sectionCopy)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (selectedCopy)
  {
    goto LABEL_19;
  }

  [configurationCopy setTopSeparatorVisibility:1];
LABEL_23:
}

- (void)applyTextColorsToContentConfiguration:(id)configuration usingState:(id)state forCell:(id)cell
{
  configurationCopy = configuration;
  stateCopy = state;
  cellCopy = cell;
  if ([stateCopy isDisabled])
  {
    cellNameTextColor2 = +[CNUIColorRepository contactStyleDefaultDisabledTextColor];
    if (!cellNameTextColor2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
    cellNameTextColor = [contactListStyle cellNameTextColor];

    if (cellNameTextColor)
    {
      contactListStyle2 = [(CNContactListStyleApplier *)self contactListStyle];
      cellNameTextColor2 = [contactListStyle2 cellNameTextColor];
    }

    else
    {
      contactListStyle2 = [cellCopy defaultContentConfiguration];
      v14 = [contactListStyle2 updatedConfigurationForState:stateCopy];
      textProperties = [v14 textProperties];
      cellNameTextColor2 = [textProperties color];
    }

    if (!cellNameTextColor2)
    {
      goto LABEL_14;
    }
  }

  textProperties2 = [configurationCopy textProperties];
  color = [textProperties2 color];
  v18 = [color isEqual:cellNameTextColor2];

  v19 = MEMORY[0x1E6996570];
  if ((v18 & 1) == 0)
  {
    textProperties3 = [configurationCopy textProperties];
    [textProperties3 setColor:cellNameTextColor2];

    v21 = *v19;
    attributedText = [configurationCopy attributedText];
    string = [attributedText string];
    LODWORD(v21) = (*(v21 + 16))(v21, string);

    if (v21)
    {
      attributedText2 = [configurationCopy attributedText];
      textProperties4 = [configurationCopy textProperties];
      color2 = [textProperties4 color];
      v27 = [(CNContactListStyleApplier *)self attributedString:attributedText2 foregroundColor:color2];
      [configurationCopy setAttributedText:v27];
    }
  }

  secondaryTextProperties = [configurationCopy secondaryTextProperties];
  color3 = [secondaryTextProperties color];
  v30 = [color3 isEqual:cellNameTextColor2];

  if ((v30 & 1) == 0)
  {
    secondaryTextProperties2 = [configurationCopy secondaryTextProperties];
    [secondaryTextProperties2 setColor:cellNameTextColor2];

    v32 = *v19;
    secondaryAttributedText = [configurationCopy secondaryAttributedText];
    string2 = [secondaryAttributedText string];
    LODWORD(v32) = (*(v32 + 16))(v32, string2);

    if (v32)
    {
      secondaryAttributedText2 = [configurationCopy secondaryAttributedText];
      -[CNContactListStyleApplier applySubtitleTextColorsToSearchCellContentConfiguration:withSubtitleText:forSelectedState:](self, "applySubtitleTextColorsToSearchCellContentConfiguration:withSubtitleText:forSelectedState:", configurationCopy, secondaryAttributedText2, [stateCopy isSelected]);
    }
  }

LABEL_14:
}

- (void)applyBackgroundColorToBackgroundConfiguration:(id)configuration usingState:(id)state forCell:(id)cell
{
  configurationCopy = configuration;
  isSelected = [state isSelected];
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  v9 = contactListStyle;
  if (isSelected)
  {
    [contactListStyle cellBackgroundSelectedColor];
  }

  else
  {
    [contactListStyle cellBackgroundColor];
  }
  v10 = ;

  if (v10)
  {
    [configurationCopy setBackgroundColor:v10];
  }
}

- (BOOL)usesInsetPlatterStyle
{
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  usesInsetPlatterStyle = [contactListStyle usesInsetPlatterStyle];

  return usesInsetPlatterStyle;
}

- (unint64_t)tableNoContactsAvailableStyle
{
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  tableNoContactsAvailableStyle = [contactListStyle tableNoContactsAvailableStyle];

  return tableNoContactsAvailableStyle;
}

- (double)cellEstimatedHeight
{
  contactListStyle = [(CNContactListStyleApplier *)self contactListStyle];
  cellNameTextFont = [contactListStyle cellNameTextFont];
  [cellNameTextFont _scaledValueForValue:44.0];
  v5 = v4;

  return v5;
}

- (CNContactListStyleApplier)initWithContactListStyle:(id)style
{
  styleCopy = style;
  if (styleCopy && (v9.receiver = self, v9.super_class = CNContactListStyleApplier, v6 = [(CNContactListStyleApplier *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_contactListStyle, style);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)applyDefaultStyleToContact:(id)contact usingFormatter:(id)formatter ofCell:(id)cell
{
  v26[3] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v8 = *MEMORY[0x1E69DB648];
  v25[0] = *MEMORY[0x1E69DB648];
  formatterCopy = formatter;
  contactCopy = contact;
  v11 = +[CNUIFontRepository contactStyleDefaultTextFont];
  v26[0] = v11;
  v25[1] = *MEMORY[0x1E69DB650];
  v12 = +[CNUIColorRepository contactStyleDefaultTextColor];
  v26[1] = v12;
  v25[2] = *MEMORY[0x1E695C2F8];
  v13 = +[CNUIFontRepository contactStyleDefaultBoldTextFont];
  v26[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v15 = [formatterCopy attributedStringForObjectValue:contactCopy withDefaultAttributes:v14];

  if (![v15 length])
  {
    v16 = [v14 mutableCopy];
    v17 = +[CNUIFontRepository contactStyleDefaultItalicTextFont];
    [v16 setObject:v17 forKeyedSubscript:v8];

    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = CNContactsUIBundle();
    v20 = [v19 localizedStringForKey:@"NO_NAME" value:&stru_1F0CE7398 table:@"Localized"];
    v21 = [v18 initWithString:v20 attributes:v16];

    v15 = v21;
  }

  objc_opt_class();
  contentConfiguration = [cellCopy contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v23 = contentConfiguration;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (!v24)
  {
    contentConfiguration = [cellCopy defaultContentConfiguration];
  }

  [contentConfiguration setAttributedText:v15];
  [cellCopy setContentConfiguration:contentConfiguration];
}

@end