@interface CNContactListStyleWrapperProvider
- (BOOL)cellIsOpaque;
- (BOOL)cellIsVibrant;
- (BOOL)navigationBarIsTranslucent;
- (BOOL)searchBarIsTranslucent;
- (BOOL)tableIsOpaque;
- (BOOL)usesInsetPlatterStyle;
- (CNContactListStyleWrapperProvider)initWithContactStyle:(id)style;
- (id)bannerTitleTextColor;
- (id)cellBackgroundColor;
- (id)cellBackgroundSelectedColor;
- (id)cellBlueSelectionSecondaryTextColor;
- (id)cellNameTextColor;
- (id)cellNameTextEmphasisedFont;
- (id)cellNameTextFont;
- (id)cellNameTextHighlightedColor;
- (id)cellSearchBackgroundColor;
- (id)cellSearchResultTextColor;
- (id)cellSearchResultTextDisabledColor;
- (id)headerBackgroundColor;
- (id)headerIndexTextColor;
- (id)searchBarBackgroundColor;
- (id)searchBarPlaceholderTextColor;
- (id)searchBarPlaceholderTextDisabledColor;
- (id)searchBarTextColor;
- (id)searchBarTextDisabledColor;
- (id)tableBackgroundColor;
- (id)tableBackgroundFilteredColor;
- (id)tableSectionIndexBackgroundColor;
- (id)tableSeparatorColor;
- (int64_t)navigationBarStyle;
- (int64_t)searchBarKeyboardAppearance;
- (int64_t)searchBarStyle;
- (int64_t)tableSeparatorOverlayBlendMode;
- (int64_t)tableSeparatorStyle;
- (unint64_t)tableNoContactsAvailableStyle;
@end

@implementation CNContactListStyleWrapperProvider

- (id)searchBarBackgroundColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  searchBarBackgroundColor = [contactStyle searchBarBackgroundColor];

  return searchBarBackgroundColor;
}

- (int64_t)searchBarStyle
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  barStyle = [contactStyle barStyle];

  return barStyle;
}

- (BOOL)searchBarIsTranslucent
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  usesTranslucentBarStyle = [contactStyle usesTranslucentBarStyle];

  return usesTranslucentBarStyle;
}

- (id)searchBarTextColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  textColor = [contactStyle textColor];

  return textColor;
}

- (int64_t)searchBarKeyboardAppearance
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  keyboardAppearance = [contactStyle keyboardAppearance];

  return keyboardAppearance;
}

- (id)searchBarPlaceholderTextColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  placeholderTextColor = [contactStyle placeholderTextColor];

  contactStyle2 = [(CNContactListStyleWrapperProvider *)self contactStyle];
  placeholderTextColor2 = [contactStyle2 placeholderTextColor];

  if (!placeholderTextColor)
  {
    contactStyle3 = [(CNContactListStyleWrapperProvider *)self contactStyle];
    textColor = [contactStyle3 textColor];

    if (!textColor)
    {
      placeholderTextColor = 0;
      if (placeholderTextColor2)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    v19 = 0.0;
    v20 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    contactStyle4 = [(CNContactListStyleWrapperProvider *)self contactStyle];
    textColor2 = [contactStyle4 textColor];
    [textColor2 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];

    placeholderTextColor = [MEMORY[0x1E69DC888] colorWithRed:v20 green:v19 blue:v18 alpha:v17 * 0.5];
  }

  if (placeholderTextColor2)
  {
    goto LABEL_8;
  }

LABEL_5:
  contactStyle5 = [(CNContactListStyleWrapperProvider *)self contactStyle];
  readOnlyTextColor = [contactStyle5 readOnlyTextColor];

  if (readOnlyTextColor)
  {
    v19 = 0.0;
    v20 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    contactStyle6 = [(CNContactListStyleWrapperProvider *)self contactStyle];
    readOnlyTextColor2 = [contactStyle6 readOnlyTextColor];
    [readOnlyTextColor2 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];

    v15 = [MEMORY[0x1E69DC888] colorWithRed:v20 green:v19 blue:v18 alpha:v17 * 0.5];

    placeholderTextColor = v15;
  }

LABEL_8:

  return placeholderTextColor;
}

- (int64_t)navigationBarStyle
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  barStyle = [contactStyle barStyle];

  return barStyle;
}

- (BOOL)navigationBarIsTranslucent
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  usesTranslucentBarStyle = [contactStyle usesTranslucentBarStyle];

  return usesTranslucentBarStyle;
}

- (BOOL)tableIsOpaque
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  usesOpaqueBackground = [contactStyle usesOpaqueBackground];

  return usesOpaqueBackground;
}

- (id)bannerTitleTextColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  textColor = [contactStyle textColor];

  return textColor;
}

- (id)tableBackgroundFilteredColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  groupedBackgroundColor = [contactStyle groupedBackgroundColor];

  return groupedBackgroundColor;
}

- (id)tableBackgroundColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  backgroundColor = [contactStyle backgroundColor];

  return backgroundColor;
}

- (BOOL)usesInsetPlatterStyle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  usesInsetPlatterStyle = [contactStyle usesInsetPlatterStyle];

  return usesInsetPlatterStyle;
}

- (id)cellNameTextFont
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  textFont = [contactStyle textFont];

  return textFont;
}

- (id)cellNameTextEmphasisedFont
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  boldTextFont = [contactStyle boldTextFont];

  return boldTextFont;
}

- (id)cellBackgroundColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  backgroundColor = [contactStyle backgroundColor];

  return backgroundColor;
}

- (BOOL)cellIsOpaque
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  usesOpaqueBackground = [contactStyle usesOpaqueBackground];

  return usesOpaqueBackground;
}

- (id)cellNameTextColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  listTextColor = [contactStyle listTextColor];

  return listTextColor;
}

- (int64_t)tableSeparatorStyle
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  v3 = 2 * ([contactStyle separatorStyle] == 0);

  return v3;
}

- (id)searchBarPlaceholderTextDisabledColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  placeholderTextColor = [contactStyle placeholderTextColor];

  return placeholderTextColor;
}

- (id)searchBarTextDisabledColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  readOnlyTextColor = [contactStyle readOnlyTextColor];

  return readOnlyTextColor;
}

- (int64_t)tableSeparatorOverlayBlendMode
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  separatorBackdropOverlayBlendMode = [contactStyle separatorBackdropOverlayBlendMode];

  return separatorBackdropOverlayBlendMode;
}

- (unint64_t)tableNoContactsAvailableStyle
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  if ([contactStyle barStyle])
  {
    blurSupported = 1;
  }

  else
  {
    contactStyle2 = [(CNContactListStyleWrapperProvider *)self contactStyle];
    blurSupported = [contactStyle2 blurSupported];
  }

  return blurSupported;
}

- (id)tableSeparatorColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  separatorColor = [contactStyle separatorColor];

  return separatorColor;
}

- (id)tableSectionIndexBackgroundColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  sectionIndexBackgroundColor = [contactStyle sectionIndexBackgroundColor];

  return sectionIndexBackgroundColor;
}

- (id)headerIndexTextColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  textColor = [contactStyle textColor];

  return textColor;
}

- (id)headerBackgroundColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  headerBackgroundColor = [contactStyle headerBackgroundColor];
  contactStyle2 = [(CNContactListStyleWrapperProvider *)self contactStyle];
  v6 = contactStyle2;
  if (headerBackgroundColor)
  {
    [contactStyle2 headerBackgroundColor];
  }

  else
  {
    [contactStyle2 backgroundColor];
  }
  v7 = ;

  return v7;
}

- (BOOL)cellIsVibrant
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  blurSupported = [contactStyle blurSupported];

  return blurSupported;
}

- (id)cellBlueSelectionSecondaryTextColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  blueSelectionSecondaryTextColor = [contactStyle blueSelectionSecondaryTextColor];

  return blueSelectionSecondaryTextColor;
}

- (id)cellSearchResultTextDisabledColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  disabledTextColor = [contactStyle disabledTextColor];

  return disabledTextColor;
}

- (id)cellSearchResultTextColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  listTextColor = [contactStyle listTextColor];

  return listTextColor;
}

- (id)cellSearchBackgroundColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  searchCellBackgroundColor = [contactStyle searchCellBackgroundColor];

  return searchCellBackgroundColor;
}

- (id)cellNameTextHighlightedColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  highlightedTextColor = [contactStyle highlightedTextColor];

  return highlightedTextColor;
}

- (id)cellBackgroundSelectedColor
{
  contactStyle = [(CNContactListStyleWrapperProvider *)self contactStyle];
  selectedCellBackgroundColor = [contactStyle selectedCellBackgroundColor];

  return selectedCellBackgroundColor;
}

- (CNContactListStyleWrapperProvider)initWithContactStyle:(id)style
{
  styleCopy = style;
  v10.receiver = self;
  v10.super_class = CNContactListStyleWrapperProvider;
  v6 = [(CNContactListStyleWrapperProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStyle, style);
    v8 = v7;
  }

  return v7;
}

@end