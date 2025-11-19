@interface CNContactListStyleApplier
+ (void)applyDefaultStyleToContact:(id)a3 usingFormatter:(id)a4 ofCell:(id)a5;
- (BOOL)usesInsetPlatterStyle;
- (CNContactListStyleApplier)initWithContactListStyle:(id)a3;
- (double)cellEstimatedHeight;
- (id)attributedString:(id)a3 foregroundColor:(id)a4;
- (id)createNewBlockedIcon;
- (unint64_t)tableNoContactsAvailableStyle;
- (void)applyBackgroundColorToBackgroundConfiguration:(id)a3 usingState:(id)a4 forCell:(id)a5;
- (void)applyCellSeparatorInsetStyleToConfiguration:(id)a3 superviewDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a4 listAppearance:(int64_t)a5 itemIsFirstInSection:(BOOL)a6 itemIsLastInSection:(BOOL)a7 itemIsSelected:(BOOL)a8;
- (void)applyContactListDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3 toLayoutSection:(id)a4 collectionViewIsShowingIndexBar:(BOOL)a5;
- (void)applyContactListStyleToBackgroundConfiguration:(id)a3 usingState:(id)a4 forCell:(id)a5;
- (void)applyContactListStyleToBannerFootnote:(id)a3 primaryAppearance:(BOOL)a4;
- (void)applyContactListStyleToBannerTitle:(id)a3 primaryAppearance:(BOOL)a4;
- (void)applyContactListStyleToBlockedIcon:(id)a3 ofCell:(id)a4;
- (void)applyContactListStyleToCell:(id)a3;
- (void)applyContactListStyleToCollectionLayoutConfiguration:(id)a3;
- (void)applyContactListStyleToCollectionView:(id)a3;
- (void)applyContactListStyleToContact:(id)a3 usingFormatter:(id)a4 ofCell:(id)a5 wantsInlineBlockIcon:(BOOL)a6;
- (void)applyContactListStyleToContentConfiguration:(id)a3 usingState:(id)a4 forCell:(id)a5;
- (void)applyContactListStyleToEmergencyIcon:(id)a3 ofCell:(id)a4;
- (void)applyContactListStyleToHeaderConfiguration:(id)a3 forHeaderFooterView:(id)a4;
- (void)applyContactListStyleToHeaderFooter:(id)a3 withTitle:(id)a4 isRTL:(BOOL)a5 listAppearance:(int64_t)a6 superviewDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a7;
- (void)applyContactListStyleToMeContactLabel:(id)a3 ofCell:(id)a4;
- (void)applyContactListStyleToNavigationBar:(id)a3;
- (void)applyContactListStyleToSearchBar:(id)a3;
- (void)applyContactListStyleToSearchCell:(id)a3;
- (void)applyContactListStyleToSearchHeader:(id)a3 withTitle:(id)a4;
- (void)applyContactListStyleToSubtitleText:(id)a3 ofSearchResultCell:(id)a4;
- (void)applyEditingStateBackgroundConfigurationToCell:(id)a3;
- (void)applySubtitleTextColorsToSearchCellContentConfiguration:(id)a3 withSubtitleText:(id)a4 forSelectedState:(BOOL)a5;
- (void)applyTextColorsToContentConfiguration:(id)a3 usingState:(id)a4 forCell:(id)a5;
@end

@implementation CNContactListStyleApplier

- (void)applyContactListStyleToBannerFootnote:(id)a3 primaryAppearance:(BOOL)a4
{
  v5 = a3;
  if (a4)
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
  [v5 setFont:v7];
  [v5 setTextColor:v6];
}

- (void)applyContactListStyleToBannerTitle:(id)a3 primaryAppearance:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (v4)
  {
    v6 = +[CNUIFontRepository contactListBannerTitleFontPrimary];
    [v10 setFont:v6];
  }

  v7 = [(CNContactListStyleApplier *)self contactListStyle];
  v8 = [v7 bannerTitleTextColor];
  [v10 setTextColor:v8];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v10 setBackgroundColor:v9];
}

- (id)createNewBlockedIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
  v4 = [v2 cnui_symbolImageNamed:@"nosign" scale:1 withColor:v3 useFixedSize:0];

  return v4;
}

- (void)applyContactListStyleToBlockedIcon:(id)a3 ofCell:(id)a4
{
  v6 = a3;
  v5 = [(CNContactListStyleApplier *)self createNewBlockedIcon];
  [v6 setImage:v5];

  [v6 sizeToFit];
}

- (void)applyContactListStyleToEmergencyIcon:(id)a3 ofCell:(id)a4
{
  v4 = MEMORY[0x1E69DCAB8];
  v7 = a3;
  v5 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
  v6 = [v4 cnui_symbolImageNamed:@"staroflife.fill" scale:3 withColor:v5 useFixedSize:0];
  [v7 setImage:v6];

  [v7 sizeToFit];
}

- (void)applyContactListStyleToMeContactLabel:(id)a3 ofCell:(id)a4
{
  v4 = a3;
  v5 = +[CNUIColorRepository contactListMeLabelTextColor];
  [v4 setTextColor:v5];
}

- (void)applySubtitleTextColorsToSearchCellContentConfiguration:(id)a3 withSubtitleText:(id)a4 forSelectedState:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CNContactListStyleApplier *)self contactListStyle];
  v11 = [v10 cellSearchResultTextDisabledColor];

  if (v5)
  {
    v12 = [(CNContactListStyleApplier *)self contactListStyle];
    v13 = [v12 usesInsetPlatterStyle];

    if (v13)
    {
      v14 = [(CNContactListStyleApplier *)self contactListStyle];
      v15 = [v14 cellBlueSelectionSecondaryTextColor];

      v11 = v15;
    }
  }

  v16 = [(CNContactListStyleApplier *)self contactListStyle];
  v17 = [v16 cellSearchResultTextColor];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = [v8 textProperties];
    v19 = [v20 color];
  }

  if ([v9 length])
  {
    v21 = [v9 mutableCopy];
  }

  else
  {
    v21 = 0;
  }

  [v21 addAttribute:*MEMORY[0x1E69DB650] value:v11 range:{0, objc_msgSend(v21, "length")}];
  v22 = *MEMORY[0x1E695CBE0];
  v23 = [v21 length];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __119__CNContactListStyleApplier_applySubtitleTextColorsToSearchCellContentConfiguration_withSubtitleText_forSelectedState___block_invoke;
  v30 = &unk_1E74E2328;
  v31 = v21;
  v32 = v19;
  v24 = v19;
  v25 = v21;
  [v25 enumerateAttribute:v22 inRange:0 options:v23 usingBlock:{0, &v27}];
  [v8 setSecondaryText:{&stru_1F0CE7398, v27, v28, v29, v30}];
  v26 = [v8 secondaryTextProperties];
  [v26 setColor:v24];

  [v8 setSecondaryAttributedText:v25];
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

- (void)applyContactListStyleToSubtitleText:(id)a3 ofSearchResultCell:(id)a4
{
  v10 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v10 contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    v7 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  }

  -[CNContactListStyleApplier applySubtitleTextColorsToSearchCellContentConfiguration:withSubtitleText:forSelectedState:](self, "applySubtitleTextColorsToSearchCellContentConfiguration:withSubtitleText:forSelectedState:", v7, v6, [v10 isSelected]);

  [v10 setContentConfiguration:v7];
}

- (id)attributedString:(id)a3 foregroundColor:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = [v6 string];
  v8 = [v7 length];

  [v6 addAttribute:*MEMORY[0x1E69DB650] value:v5 range:{0, v8}];

  return v6;
}

- (void)applyContactListStyleToContact:(id)a3 usingFormatter:(id)a4 ofCell:(id)a5 wantsInlineBlockIcon:(BOOL)a6
{
  v6 = a6;
  v46[2] = *MEMORY[0x1E69E9840];
  v43 = a5;
  v10 = MEMORY[0x1E696AD40];
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  if (v6)
  {
    v14 = [(CNContactListStyleApplier *)self createNewBlockedIcon];
    v15 = MEMORY[0x1E696AAB0];
    v16 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v14];
    v17 = [v15 attributedStringWithAttachment:v16];
    [v13 appendAttributedString:v17];

    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v13 appendAttributedString:v18];
  }

  v19 = *MEMORY[0x1E69DB648];
  v20 = [(CNContactListStyleApplier *)self contactListStyle:v43];
  v21 = [v20 cellNameTextFont];
  v46[0] = v21;
  v45[1] = *MEMORY[0x1E695C2F8];
  v22 = [(CNContactListStyleApplier *)self contactListStyle];
  v23 = [v22 cellNameTextEmphasisedFont];
  v46[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

  v25 = [v11 attributedStringForObjectValue:v12 withDefaultAttributes:v24];

  if (![v25 length])
  {
    v26 = [v24 mutableCopy];
    v27 = [(CNContactListStyleApplier *)self contactListStyle];
    v28 = [v27 cellNameTextFont];
    v29 = [v28 fontDescriptor];
    v30 = [v29 fontDescriptorWithSymbolicTraits:1];

    v31 = MEMORY[0x1E69DB878];
    v32 = [(CNContactListStyleApplier *)self contactListStyle];
    v33 = [v32 cellNameTextFont];
    [v33 pointSize];
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
  v39 = [v44 contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;

  if (!v41)
  {
    v39 = [v44 defaultContentConfiguration];
  }

  [v39 setAttributedText:v13];
  v42 = [v39 textProperties];
  [v42 setAdjustsFontSizeToFitWidth:0];

  [v44 setContentConfiguration:v39];
}

- (void)applyContactListStyleToCollectionView:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListStyleApplier *)self contactListStyle];
  [v4 setOpaque:{objc_msgSend(v5, "tableIsOpaque")}];
}

- (void)applyContactListStyleToCollectionLayoutConfiguration:(id)a3
{
  v17 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:29];

  if (v6)
  {
    [v17 setHeaderTopPadding:0.0];
  }

  v7 = [(CNContactListStyleApplier *)self contactListStyle];
  v8 = [v7 tableBackgroundFilteredColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v17 appearance];

    if (v10 == 1)
    {
      v11 = [(CNContactListStyleApplier *)self contactListStyle];
      v12 = [v11 tableBackgroundFilteredColor];
LABEL_10:
      v16 = v12;
      [v17 setBackgroundColor:v12];

      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = [(CNContactListStyleApplier *)self contactListStyle];
  v13 = [v11 tableBackgroundColor];
  if (v13)
  {
    v14 = v13;
    v15 = [v17 appearance];

    if (v15 == 1)
    {
      goto LABEL_12;
    }

    v11 = [(CNContactListStyleApplier *)self contactListStyle];
    v12 = [v11 tableBackgroundColor];
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
}

- (void)applyContactListStyleToSearchBar:(id)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactListStyleApplier *)self contactListStyle];
  v6 = [v5 searchBarBackgroundColor];

  if (v6)
  {
    v7 = [(CNContactListStyleApplier *)self contactListStyle];
    v8 = [v7 searchBarBackgroundColor];
    [v4 setBackgroundColor:v8];
  }

  v9 = [(CNContactListStyleApplier *)self contactListStyle];
  v10 = [v9 searchBarStyle];

  if (v10)
  {
    v11 = [(CNContactListStyleApplier *)self contactListStyle];
    [v4 setBarStyle:{objc_msgSend(v11, "searchBarStyle")}];
  }

  v12 = [(CNContactListStyleApplier *)self contactListStyle];
  v13 = [v12 searchBarIsTranslucent];

  if (v13)
  {
    v14 = [(CNContactListStyleApplier *)self contactListStyle];
    [v4 setTranslucent:{objc_msgSend(v14, "searchBarIsTranslucent")}];
  }

  v15 = [(CNContactListStyleApplier *)self contactListStyle];
  v16 = [v15 searchBarTextColor];

  if (v16)
  {
    v17 = [v4 searchField];
    v18 = [v17 isEnabled];

    v19 = [(CNContactListStyleApplier *)self contactListStyle];
    v20 = v19;
    if (v18)
    {
      [v19 searchBarTextColor];
    }

    else
    {
      [v19 searchBarTextDisabledColor];
    }
    v21 = ;
    v22 = [v4 searchField];
    [v22 setTextColor:v21];
  }

  v23 = [(CNContactListStyleApplier *)self contactListStyle];
  v24 = [v23 searchBarKeyboardAppearance];

  if (v24)
  {
    v25 = [(CNContactListStyleApplier *)self contactListStyle];
    v26 = [v25 searchBarKeyboardAppearance];
    v27 = [v4 searchField];
    [v27 setKeyboardAppearance:v26];
  }

  v28 = [v4 searchField];
  v29 = [v28 isEnabled];
  v30 = [(CNContactListStyleApplier *)self contactListStyle];
  v31 = v30;
  if (v29)
  {
    [v30 searchBarPlaceholderTextColor];
  }

  else
  {
    [v30 searchBarPlaceholderTextDisabledColor];
  }
  v32 = ;

  v33 = [v4 searchField];
  v34 = [v33 placeholder];

  if (v34 && v32)
  {
    v41 = *MEMORY[0x1E69DB650];
    v42[0] = v32;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v36 = objc_alloc(MEMORY[0x1E696AD40]);
    v37 = [v4 searchField];
    v38 = [v37 placeholder];
    v39 = [v36 initWithString:v38 attributes:v35];
    v40 = [v4 searchField];
    [v40 setAttributedPlaceholder:v39];
  }
}

- (void)applyContactListStyleToNavigationBar:(id)a3
{
  v10 = a3;
  v4 = [(CNContactListStyleApplier *)self contactListStyle];
  v5 = [v4 navigationBarStyle];

  if (v5)
  {
    v6 = [(CNContactListStyleApplier *)self contactListStyle];
    [v10 setBarStyle:{objc_msgSend(v6, "navigationBarStyle")}];
  }

  v7 = [(CNContactListStyleApplier *)self contactListStyle];
  v8 = [v7 navigationBarIsTranslucent];

  if (v8)
  {
    v9 = [(CNContactListStyleApplier *)self contactListStyle];
    [v10 setTranslucent:{objc_msgSend(v9, "navigationBarIsTranslucent")}];
  }
}

- (void)applyContactListStyleToHeaderConfiguration:(id)a3 forHeaderFooterView:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [v6 traitCollection];
  v8 = [v7 _splitViewControllerContext];

  v9 = [MEMORY[0x1E69966E8] currentEnvironment];
  v10 = [v9 featureFlags];
  v11 = [v10 isFeatureEnabled:29];

  if (v11)
  {
    v12 = [v6 traitCollection];
    v13 = [v12 layoutDirection];

    if (v13 == 1)
    {
      v14 = 18.0;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = [(CNContactListStyleApplier *)self contactListStyle];
    [v15 sectionHeaderFooterLeadingLayoutMargin];
    v17 = v16;

    if (!v8)
    {
      v17 = v14;
    }

    [v25 directionalLayoutMargins];
    v19 = v18;
    [v25 directionalLayoutMargins];
    v21 = v20;
    [v25 directionalLayoutMargins];
    [v25 setDirectionalLayoutMargins:{v19, v17, v21}];
  }

  v22 = MEMORY[0x1E69DDD40];
  if (!v8)
  {
    v22 = MEMORY[0x1E69DDD78];
  }

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v22];
  v24 = [v25 textProperties];
  [v24 setFont:v23];

  [v6 setContentConfiguration:v25];
}

- (void)applyContactListStyleToHeaderFooter:(id)a3 withTitle:(id)a4 isRTL:(BOOL)a5 listAppearance:(int64_t)a6 superviewDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a7
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    objc_opt_class();
    v12 = [v10 contentConfiguration];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v14)
    {
      v12 = [MEMORY[0x1E69DCC28] headerConfiguration];
    }

    [v12 setText:v11];
    v15 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1;
    v16 = [v12 textProperties];
    [v16 setNumberOfLines:v15];

    if (v7)
    {
      [v12 setAxesPreservingSuperviewLayoutMargins:0];
      [v12 directionalLayoutMargins];
      v18 = v17;
      [v10 directionalLayoutMargins];
      [v10 directionalLayoutMargins];
      [v12 setDirectionalLayoutMargins:v18];
    }

    [v10 setContentConfiguration:v12];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __130__CNContactListStyleApplier_applyContactListStyleToHeaderFooter_withTitle_isRTL_listAppearance_superviewDirectionalLayoutMargins___block_invoke;
    v20[3] = &unk_1E74E2300;
    v20[4] = self;
    v21 = v12;
    v19 = v12;
    [v10 setConfigurationUpdateHandler:v20];
  }
}

- (void)applyContactListStyleToSearchHeader:(id)a3 withTitle:(id)a4
{
  v6 = MEMORY[0x1E69DCC28];
  v7 = a4;
  v8 = a3;
  v9 = [v6 headerConfiguration];
  v10 = [v7 uppercaseString];

  [v9 setText:v10];
  v11 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1;
  v12 = [v9 textProperties];
  [v12 setNumberOfLines:v11];

  [v8 setContentConfiguration:v9];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CNContactListStyleApplier_applyContactListStyleToSearchHeader_withTitle___block_invoke;
  v14[3] = &unk_1E74E2300;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v8 setConfigurationUpdateHandler:v14];
}

- (void)applyContactListStyleToSearchCell:(id)a3
{
  v8 = a3;
  [(CNContactListStyleApplier *)self applyContactListStyleToCell:?];
  v4 = [(CNContactListStyleApplier *)self contactListStyle];
  v5 = [v4 cellSearchBackgroundColor];

  if (v5)
  {
    v6 = [(CNContactListStyleApplier *)self contactListStyle];
    v7 = [v6 cellSearchBackgroundColor];
    [v8 setBackgroundColor:v7];
  }
}

- (void)applyEditingStateBackgroundConfigurationToCell:(id)a3
{
  v3 = MEMORY[0x1E69DC6E8];
  v4 = a3;
  v5 = [v3 clearConfiguration];
  [v4 setBackgroundConfiguration:v5];
}

- (void)applyContactListStyleToContentConfiguration:(id)a3 usingState:(id)a4 forCell:(id)a5
{
  v8 = a5;
  v9 = a4;
  v17 = [a3 updatedConfigurationForState:v9];
  [(CNContactListStyle *)self->_contactListStyle cellTopLayoutMargin];
  v11 = v10;
  [(CNContactListStyle *)self->_contactListStyle cellLeadingLayoutMargin];
  v13 = v12;
  [(CNContactListStyle *)self->_contactListStyle cellBottomLayoutMargin];
  v15 = v14;
  [(CNContactListStyle *)self->_contactListStyle cellTrailingLayoutMargin];
  [v17 setDirectionalLayoutMargins:{v11, v13, v15, v16}];
  [(CNContactListStyleApplier *)self applyTextColorsToContentConfiguration:v17 usingState:v9 forCell:v8];

  [v8 applyAccessories];
  [v8 setContentConfiguration:v17];
}

- (void)applyContactListStyleToBackgroundConfiguration:(id)a3 usingState:(id)a4 forCell:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 isEditing])
  {
    [MEMORY[0x1E69DC6E8] clearConfiguration];
  }

  else
  {
    [v22 updatedConfigurationForState:v8];
  }
  v10 = ;
  v11 = [MEMORY[0x1E69966E8] currentEnvironment];
  v12 = [v11 featureFlags];
  v13 = [v12 isFeatureEnabled:29];

  if (v13)
  {
    v14 = [v8 traitCollection];
    v15 = [v14 _splitViewControllerContext];

    if (v15)
    {
      v16 = *MEMORY[0x1E69DC5C0];
      v17 = *(MEMORY[0x1E69DC5C0] + 8);
      v18 = *(MEMORY[0x1E69DC5C0] + 16);
      v19 = *(MEMORY[0x1E69DC5C0] + 24);
    }

    else
    {
      [v9 directionalLayoutMargins];
      v17 = -v20;
      [v9 directionalLayoutMargins];
      v19 = -v21;
      v16 = 0.0;
      v18 = 0.0;
    }

    [v10 setBackgroundInsets:{v16, v17, v18, v19}];
  }

  [(CNContactListStyleApplier *)self applyBackgroundColorToBackgroundConfiguration:v10 usingState:v8 forCell:v9];
  [v9 setBackgroundConfiguration:v10];
}

- (void)applyContactListStyleToCell:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 backgroundConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v5 = [v4 defaultBackgroundConfiguration];
  }

  objc_opt_class();
  v8 = [v4 contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    v8 = [v4 defaultContentConfiguration];
  }

  v11 = [(CNContactListStyleApplier *)self contactListStyle];
  [v4 setOpaque:{objc_msgSend(v11, "cellIsOpaque")}];

  [v4 setContentConfiguration:v8];
  [v4 setBackgroundConfiguration:v5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__CNContactListStyleApplier_applyContactListStyleToCell___block_invoke;
  v14[3] = &unk_1E74E22D8;
  v14[4] = self;
  v15 = v5;
  v16 = v8;
  v12 = v5;
  v13 = v8;
  [v4 setConfigurationUpdateHandler:v14];
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

- (void)applyContactListDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3 toLayoutSection:(id)a4 collectionViewIsShowingIndexBar:(BOOL)a5
{
  trailing = a3.trailing;
  v19 = a4;
  [v19 contentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [MEMORY[0x1E69966E8] currentEnvironment];
  v14 = [v13 featureFlags];
  v15 = [v14 isFeatureEnabled:29];

  if (v15)
  {
    [v19 contentInsets];
    v10 = v16 + 2.0;
    v12 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v17 = [(CNContactListStyleApplier *)self contactListStyle];
    v18 = [v17 usesInsetPlatterStyle];

    if (!v18)
    {
      goto LABEL_5;
    }
  }

  [v19 setContentInsets:{v8, v10, v12, trailing}];
LABEL_5:
}

- (void)applyCellSeparatorInsetStyleToConfiguration:(id)a3 superviewDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a4 listAppearance:(int64_t)a5 itemIsFirstInSection:(BOOL)a6 itemIsLastInSection:(BOOL)a7 itemIsSelected:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  trailing = a4.trailing;
  leading = a4.leading;
  v48 = a3;
  [v48 topSeparatorInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v47 = v21;
  [v48 bottomSeparatorInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v46 = v28;
  if (!v10 || ([MEMORY[0x1E69966E8] currentEnvironment], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "featureFlags"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isFeatureEnabled:", 29), v30, v29, v31))
  {
    [(CNContactListStyle *)self->_contactListStyle tableSeparatorLeadingInsetForListAppearance:a5];
    v18 = v32;
  }

  if (!v9)
  {
    leading = v25;
  }

  v33 = [MEMORY[0x1E69966E8] currentEnvironment];
  v34 = [v33 featureFlags];
  v35 = [v34 isFeatureEnabled:29];

  v36 = 0.0;
  v37 = 0.0;
  if ((v35 & 1) == 0)
  {
    v38 = [(CNContactListStyleApplier *)self contactListStyle];
    v39 = [v38 usesInsetPlatterStyle];

    if (v39)
    {
      v36 = v46;
    }

    else
    {
      v36 = trailing;
    }

    if (v39)
    {
      v37 = v47;
    }

    else
    {
      v37 = trailing;
    }
  }

  [v48 setTopSeparatorInsets:{v16, v18, v20, v37}];
  [v48 setBottomSeparatorInsets:{v23, leading, v27, v36}];
  v40 = [MEMORY[0x1E69966E8] currentEnvironment];
  v41 = [v40 featureFlags];
  v42 = [v41 isFeatureEnabled:29];

  if (!v42)
  {
    v44 = [(CNContactListStyleApplier *)self contactListStyle];
    [v48 setBottomSeparatorVisibility:{objc_msgSend(v44, "tableSeparatorStyle")}];

    goto LABEL_19;
  }

  if (v9 || v8)
  {
    [v48 setBottomSeparatorVisibility:2];
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_19:
    v45 = [(CNContactListStyleApplier *)self contactListStyle];
    [v48 setTopSeparatorVisibility:{objc_msgSend(v45, "tableSeparatorStyle")}];

    goto LABEL_23;
  }

  v43 = [(CNContactListStyleApplier *)self contactListStyle];
  [v48 setBottomSeparatorVisibility:{objc_msgSend(v43, "tableSeparatorStyle")}];

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v8)
  {
    goto LABEL_19;
  }

  [v48 setTopSeparatorVisibility:1];
LABEL_23:
}

- (void)applyTextColorsToContentConfiguration:(id)a3 usingState:(id)a4 forCell:(id)a5
{
  v36 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 isDisabled])
  {
    v10 = +[CNUIColorRepository contactStyleDefaultDisabledTextColor];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = [(CNContactListStyleApplier *)self contactListStyle];
    v12 = [v11 cellNameTextColor];

    if (v12)
    {
      v13 = [(CNContactListStyleApplier *)self contactListStyle];
      v10 = [v13 cellNameTextColor];
    }

    else
    {
      v13 = [v9 defaultContentConfiguration];
      v14 = [v13 updatedConfigurationForState:v8];
      v15 = [v14 textProperties];
      v10 = [v15 color];
    }

    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v16 = [v36 textProperties];
  v17 = [v16 color];
  v18 = [v17 isEqual:v10];

  v19 = MEMORY[0x1E6996570];
  if ((v18 & 1) == 0)
  {
    v20 = [v36 textProperties];
    [v20 setColor:v10];

    v21 = *v19;
    v22 = [v36 attributedText];
    v23 = [v22 string];
    LODWORD(v21) = (*(v21 + 16))(v21, v23);

    if (v21)
    {
      v24 = [v36 attributedText];
      v25 = [v36 textProperties];
      v26 = [v25 color];
      v27 = [(CNContactListStyleApplier *)self attributedString:v24 foregroundColor:v26];
      [v36 setAttributedText:v27];
    }
  }

  v28 = [v36 secondaryTextProperties];
  v29 = [v28 color];
  v30 = [v29 isEqual:v10];

  if ((v30 & 1) == 0)
  {
    v31 = [v36 secondaryTextProperties];
    [v31 setColor:v10];

    v32 = *v19;
    v33 = [v36 secondaryAttributedText];
    v34 = [v33 string];
    LODWORD(v32) = (*(v32 + 16))(v32, v34);

    if (v32)
    {
      v35 = [v36 secondaryAttributedText];
      -[CNContactListStyleApplier applySubtitleTextColorsToSearchCellContentConfiguration:withSubtitleText:forSelectedState:](self, "applySubtitleTextColorsToSearchCellContentConfiguration:withSubtitleText:forSelectedState:", v36, v35, [v8 isSelected]);
    }
  }

LABEL_14:
}

- (void)applyBackgroundColorToBackgroundConfiguration:(id)a3 usingState:(id)a4 forCell:(id)a5
{
  v11 = a3;
  v7 = [a4 isSelected];
  v8 = [(CNContactListStyleApplier *)self contactListStyle];
  v9 = v8;
  if (v7)
  {
    [v8 cellBackgroundSelectedColor];
  }

  else
  {
    [v8 cellBackgroundColor];
  }
  v10 = ;

  if (v10)
  {
    [v11 setBackgroundColor:v10];
  }
}

- (BOOL)usesInsetPlatterStyle
{
  v2 = [(CNContactListStyleApplier *)self contactListStyle];
  v3 = [v2 usesInsetPlatterStyle];

  return v3;
}

- (unint64_t)tableNoContactsAvailableStyle
{
  v2 = [(CNContactListStyleApplier *)self contactListStyle];
  v3 = [v2 tableNoContactsAvailableStyle];

  return v3;
}

- (double)cellEstimatedHeight
{
  v2 = [(CNContactListStyleApplier *)self contactListStyle];
  v3 = [v2 cellNameTextFont];
  [v3 _scaledValueForValue:44.0];
  v5 = v4;

  return v5;
}

- (CNContactListStyleApplier)initWithContactListStyle:(id)a3
{
  v5 = a3;
  if (v5 && (v9.receiver = self, v9.super_class = CNContactListStyleApplier, v6 = [(CNContactListStyleApplier *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_contactListStyle, a3);
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)applyDefaultStyleToContact:(id)a3 usingFormatter:(id)a4 ofCell:(id)a5
{
  v26[3] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = *MEMORY[0x1E69DB648];
  v25[0] = *MEMORY[0x1E69DB648];
  v9 = a4;
  v10 = a3;
  v11 = +[CNUIFontRepository contactStyleDefaultTextFont];
  v26[0] = v11;
  v25[1] = *MEMORY[0x1E69DB650];
  v12 = +[CNUIColorRepository contactStyleDefaultTextColor];
  v26[1] = v12;
  v25[2] = *MEMORY[0x1E695C2F8];
  v13 = +[CNUIFontRepository contactStyleDefaultBoldTextFont];
  v26[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v15 = [v9 attributedStringForObjectValue:v10 withDefaultAttributes:v14];

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
  v22 = [v7 contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (!v24)
  {
    v22 = [v7 defaultContentConfiguration];
  }

  [v22 setAttributedText:v15];
  [v7 setContentConfiguration:v22];
}

@end