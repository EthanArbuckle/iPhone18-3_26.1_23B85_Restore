@interface CNContactStyle
+ (id)currentStyle;
+ (id)darkStyleWithOverrideUserInterfaceStyle:(int64_t)style;
+ (id)defaultStyle;
+ (id)faceTimeStyle;
+ (id)siriStyle;
+ (id)spotlightStyle;
+ (id)testStyle;
+ (id)watchStyle;
+ (void)setCurrentStyle:(id)style;
- (CNContactStyle)init;
- (CNContactStyle)initWithCoder:(id)coder;
- (UIEdgeInsets)separatorInset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactStyle

+ (id)currentStyle
{
  v3 = sCurrentStyle;
  if (!sCurrentStyle)
  {
    if (CNUIIsFaceTime())
    {
      faceTimeStyle = [self faceTimeStyle];
    }

    else
    {
      if (CNUIIsWatchCompanion())
      {
        [self watchStyle];
      }

      else
      {
        [self defaultStyle];
      }
      faceTimeStyle = ;
    }

    v5 = sCurrentStyle;
    sCurrentStyle = faceTimeStyle;

    v3 = sCurrentStyle;
  }

  return v3;
}

+ (id)defaultStyle
{
  v2 = objc_alloc_init(CNContactStyle);

  return v2;
}

- (CNContactStyle)init
{
  v27.receiver = self;
  v27.super_class = CNContactStyle;
  v2 = [(CNContactStyle *)&v27 init];
  if (v2)
  {
    v3 = +[CNUIColorRepository contactStyleDefaultTextColor];
    [(CNContactStyle *)v2 setTextColor:v3];

    v4 = +[CNUIColorRepository contactStyleDefaultTaglineTextColor];
    [(CNContactStyle *)v2 setTaglineTextColor:v4];

    v5 = +[CNUIColorRepository contactStyleDefaultDisabledTextColor];
    [(CNContactStyle *)v2 setDisabledTextColor:v5];

    v6 = +[CNUIColorRepository contactStyleDefaultBlueSelectionSecondaryTextColor];
    [(CNContactStyle *)v2 setBlueSelectionSecondaryTextColor:v6];

    v7 = +[CNUIColorRepository contactStyleDefaultHighlightedTextColor];
    [(CNContactStyle *)v2 setHighlightedTextColor:v7];

    v8 = +[CNUIColorRepository contactStyleDefaultPlaceholderTextColor];
    [(CNContactStyle *)v2 setPlaceholderTextColor:v8];

    v9 = +[CNUIColorRepository contactStyleDefaultNotesTextColor];
    [(CNContactStyle *)v2 setNotesTextColor:v9];

    v10 = +[CNUIColorRepository contactStyleDefaultReadOnlyTextColor];
    [(CNContactStyle *)v2 setReadOnlyTextColor:v10];

    v11 = +[CNUIColorRepository contactStyleDefaultSuggestedLabelTextColor];
    [(CNContactStyle *)v2 setSuggestedLabelTextColor:v11];

    v12 = +[CNUIColorRepository contactStyleDefaultSuggestedValueTextColor];
    [(CNContactStyle *)v2 setSuggestedValueTextColor:v12];

    [(CNContactStyle *)v2 setContactViewPlatterStyle:1];
    contactViewPlatterStyle = [(CNContactStyle *)v2 contactViewPlatterStyle];
    [(CNContactStyle *)v2 setUsesOpaqueBackground:1];
    v14 = +[CNUIColorRepository contactStyleDefaultTransportBackgroundColor];
    [(CNContactStyle *)v2 setTransportBackgroundColor:v14];

    v15 = +[CNUIColorRepository contactStyleDefaultTransportBorderColor];
    [(CNContactStyle *)v2 setTransportBorderColor:v15];

    if (contactViewPlatterStyle == 1)
    {
      v16 = +[CNUIColorRepository contactStyleWithInsetPlattersDefaultContactHeaderBackgroundColor];
      [(CNContactStyle *)v2 setContactHeaderBackgroundColor:v16];

      v17 = +[CNUIColorRepository contactStyleWithInsetPlattersDefaultContactHeaderDropShadowColor];
      v18 = 7;
    }

    else
    {
      v19 = +[CNUIColorRepository contactStyleDefaultContactHeaderBackgroundColor];
      [(CNContactStyle *)v2 setContactHeaderBackgroundColor:v19];

      v17 = +[CNUIColorRepository contactStyleDefaultContactHeaderDropShadowColor];
      v18 = 4;
    }

    [(CNContactStyle *)v2 setContactHeaderDropShadowColor:v17];

    [(CNContactStyle *)v2 setSectionMaximumPlatterWidth:454.0];
    [(CNContactStyle *)v2 setSectionCornerRadius:8.0];
    [(CNContactStyle *)v2 setSectionContentInset:16.0];
    v20 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
    [(CNContactStyle *)v2 setSeparatorColor:v20];

    [(CNContactStyle *)v2 setSeparatorStyle:1];
    v21 = +[CNUIColorRepository contactStyleDefaultSelectedCellBackgroundColor];
    [(CNContactStyle *)v2 setSelectedCellBackgroundColor:v21];

    v22 = +[CNUIColorRepository contactStyleDefaultGroupedBackgroundColor];
    [(CNContactStyle *)v2 setGroupedBackgroundColor:v22];

    v23 = +[CNUIColorRepository contactStyleDefaultSearchCellBackgroundColor];
    [(CNContactStyle *)v2 setSearchCellBackgroundColor:v23];

    v24 = +[CNUIColorRepository contactListTextColor];
    [(CNContactStyle *)v2 setListTextColor:v24];

    [(CNContactStyle *)v2 setUsesTranslucentBarStyle:0];
    [(CNContactStyle *)v2 setTopActionsViewStyle:v18];
    [(CNContactStyle *)v2 setInlineActionsViewStyle:1];
    v25 = v2;
  }

  return v2;
}

- (UIEdgeInsets)separatorInset
{
  top = self->_separatorInset.top;
  left = self->_separatorInset.left;
  bottom = self->_separatorInset.bottom;
  right = self->_separatorInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  textColor = self->_textColor;
  coderCopy = coder;
  [coderCopy encodeObject:textColor forKey:@"textColor"];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
}

- (CNContactStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CNContactStyle;
  v5 = [(CNContactStyle *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    [(CNContactStyle *)v5 setTextColor:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    [(CNContactStyle *)v5 setBackgroundColor:v7];

    v8 = v5;
  }

  return v5;
}

+ (void)setCurrentStyle:(id)style
{
  objc_storeStrong(&sCurrentStyle, style);
  styleCopy = style;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CNContactStyleCurrentStyleDidChangeNotification" object:0];
}

+ (id)testStyle
{
  v2 = +[CNContactStyle defaultStyle];
  blueColor = [MEMORY[0x1E69DC888] blueColor];
  [v2 setTextColor:blueColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v2 setSectionHeaderTextColor:blackColor];

  textColor = [v2 textColor];
  [v2 setTaglineTextColor:textColor];

  cyanColor = [MEMORY[0x1E69DC888] cyanColor];
  [v2 setDisabledTextColor:cyanColor];

  brownColor = [MEMORY[0x1E69DC888] brownColor];
  [v2 setPlaceholderTextColor:brownColor];

  orangeColor = [MEMORY[0x1E69DC888] orangeColor];
  [v2 setHighlightedTextColor:orangeColor];

  purpleColor = [MEMORY[0x1E69DC888] purpleColor];
  [v2 setHeaderBackgroundColor:purpleColor];

  textColor2 = [v2 textColor];
  [v2 setListTextColor:textColor2];

  greenColor = [MEMORY[0x1E69DC888] greenColor];
  [v2 setBackgroundColor:greenColor];

  greenColor2 = [MEMORY[0x1E69DC888] greenColor];
  [v2 setSearchBarBackgroundColor:greenColor2];

  magentaColor = [MEMORY[0x1E69DC888] magentaColor];
  [v2 setTransportBackgroundColor:magentaColor];

  brownColor2 = [MEMORY[0x1E69DC888] brownColor];
  [v2 setTransportBorderColor:brownColor2];

  yellowColor = [MEMORY[0x1E69DC888] yellowColor];
  [v2 setSeparatorColor:yellowColor];

  redColor = [MEMORY[0x1E69DC888] redColor];
  [v2 setSectionBackgroundColor:redColor];

  brownColor3 = [MEMORY[0x1E69DC888] brownColor];
  [v2 setSelectedCellBackgroundColor:brownColor3];

  [v2 setBarStyle:1];
  [v2 setKeyboardAppearance:1];

  return v2;
}

+ (id)siriStyle
{
  v2 = +[CNContactStyle defaultStyle];
  siriui_textColor = [MEMORY[0x1E69DC888] siriui_textColor];
  [v2 setTextColor:siriui_textColor];

  siriui_textColor2 = [MEMORY[0x1E69DC888] siriui_textColor];
  [v2 setSectionHeaderTextColor:siriui_textColor2];

  textColor = [v2 textColor];
  [v2 setTaglineTextColor:textColor];

  siriui_textColor3 = [MEMORY[0x1E69DC888] siriui_textColor];
  [v2 setNotesTextColor:siriui_textColor3];

  textColor2 = [v2 textColor];
  [v2 setListTextColor:textColor2];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setContactHeaderBackgroundColor:clearColor2];

  siriui_keylineColor = [MEMORY[0x1E69DC888] siriui_keylineColor];
  [v2 setContactHeaderDropShadowColor:siriui_keylineColor];

  siriui_keylineColor2 = [MEMORY[0x1E69DC888] siriui_keylineColor];
  [v2 setSeparatorColor:siriui_keylineColor2];

  [v2 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];
  siriui_highlightColor = [MEMORY[0x1E69DC888] siriui_highlightColor];
  [v2 setSelectedCellBackgroundColor:siriui_highlightColor];

  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setSectionBackgroundColor:clearColor3];

  [v2 setModalTransitionStyle:14];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] systemDarkBlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v14 = ;
  [v2 setTintColorOverride:v14];

  return v2;
}

+ (id)watchStyle
{
  defaultStyle = [self defaultStyle];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [defaultStyle setTextColor:whiteColor];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [defaultStyle setSectionHeaderTextColor:whiteColor2];

  textColor = [defaultStyle textColor];
  [defaultStyle setTaglineTextColor:textColor];

  textColor2 = [defaultStyle textColor];
  [defaultStyle setNotesTextColor:textColor2];

  whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
  [defaultStyle setHighlightedTextColor:whiteColor3];

  textColor3 = [defaultStyle textColor];
  [defaultStyle setListTextColor:textColor3];

  [defaultStyle setUsesOpaqueBackground:1];
  v9 = [MEMORY[0x1E69DC888] colorWithRed:0.09 green:0.09 blue:0.09 alpha:1.0];
  [defaultStyle setBackgroundColor:v9];

  v10 = [MEMORY[0x1E69DC888] colorWithRed:0.11 green:0.11 blue:0.11 alpha:1.0];
  [defaultStyle setSearchBarBackgroundColor:v10];

  backgroundColor = [defaultStyle backgroundColor];
  [defaultStyle setContactHeaderBackgroundColor:backgroundColor];

  v12 = [MEMORY[0x1E69DC888] colorWithRed:0.95 green:0.95 blue:0.97 alpha:0.5];
  [defaultStyle setContactHeaderDropShadowColor:v12];

  v13 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.58 blue:0.0 alpha:1.0];
  [defaultStyle setTransportBoldBackgroundColor:v13];

  v14 = [MEMORY[0x1E69DC888] colorWithRed:0.176470588 green:0.176470588 blue:0.176470588 alpha:1.0];
  [defaultStyle setTransportBackgroundColor:v14];

  v15 = [MEMORY[0x1E69DC888] colorWithRed:0.09 green:0.09 blue:0.09 alpha:1.0];
  [defaultStyle setSectionBackgroundColor:v15];

  v16 = [MEMORY[0x1E69DC888] colorWithRed:0.16 green:0.16 blue:0.16 alpha:1.0];
  [defaultStyle setSeparatorColor:v16];

  v17 = [MEMORY[0x1E69DC888] colorWithRed:0.09 green:0.09 blue:0.09 alpha:1.0];
  [defaultStyle setHeaderBackgroundColor:v17];

  v18 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.12];
  [defaultStyle setSelectedCellBackgroundColor:v18];

  [defaultStyle setBarStyle:1];
  [defaultStyle setUsesTranslucentBarStyle:0];
  [defaultStyle setKeyboardAppearance:1];

  return defaultStyle;
}

+ (id)darkStyleWithOverrideUserInterfaceStyle:(int64_t)style
{
  defaultStyle = [self defaultStyle];
  if (darkStyleWithOverrideUserInterfaceStyle__onceToken != -1)
  {
    dispatch_once(&darkStyleWithOverrideUserInterfaceStyle__onceToken, &__block_literal_global_26275);
  }

  v5 = darkStyleWithOverrideUserInterfaceStyle__blurSupported == 1 && !UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsReduceTransparencyEnabled();
  [defaultStyle setBlurSupported:v5];
  if (style == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v6 = ;
  [defaultStyle setTextColor:v6];
  [defaultStyle setSectionHeaderTextColor:v6];
  [defaultStyle setHighlightedTextColor:v6];
  textColor = [defaultStyle textColor];
  [defaultStyle setTaglineTextColor:textColor];

  [defaultStyle setNotesTextColor:v6];
  [defaultStyle setSuggestedLabelTextColor:v6];
  [defaultStyle setSuggestedValueTextColor:v6];
  textColor2 = [defaultStyle textColor];
  [defaultStyle setListTextColor:textColor2];

  [defaultStyle setUsesOpaqueBackground:0];
  [defaultStyle setBackgroundColor:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [defaultStyle setSearchBarBackgroundColor:clearColor];

  [defaultStyle setContactHeaderBackgroundColor:0];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.14];
  [defaultStyle setTransportBackgroundColor:v10];

  v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.14];
  [defaultStyle setTransportBorderColor:v11];

  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.14];
  [defaultStyle setTransportBoldBackgroundColor:v12];

  v13 = [MEMORY[0x1E69DC888] colorWithRed:0.95 green:0.95 blue:0.97 alpha:0.5];
  [defaultStyle setContactHeaderDropShadowColor:v13];

  [defaultStyle setTintColorOverride:v6];
  [defaultStyle setSectionBackgroundColor:0];
  if ([defaultStyle blurSupported])
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [defaultStyle setSeparatorBackdropOverlayBlendMode:v14];
  [defaultStyle setSeparatorStyle:1];
  if ([defaultStyle blurSupported])
  {
    +[CNUIColorRepository faceTimeLightSeparatorColor];
  }

  else
  {
    +[CNUIColorRepository faceTimeSeparatorColorWithBlurUnsupported];
  }
  v15 = ;
  [defaultStyle setSeparatorColor:v15];

  if (darkStyleWithOverrideUserInterfaceStyle__blurSupported)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
  }
  v16 = ;
  [defaultStyle setHeaderBackgroundColor:v16];

  [defaultStyle setSelectedCellBackgroundColor:0];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [defaultStyle setGroupedBackgroundColor:clearColor2];

  [defaultStyle setBarStyle:1];
  [defaultStyle setUsesTranslucentBarStyle:1];
  [defaultStyle setKeyboardAppearance:1];
  [defaultStyle setShouldPresentInCurrentContext:1];
  [defaultStyle setModalTransitionStyle:14];
  [defaultStyle setTopActionsViewStyle:6];
  [defaultStyle setInlineActionsViewStyle:3];

  return defaultStyle;
}

void __58__CNContactStyle_darkStyleWithOverrideUserInterfaceStyle___block_invoke()
{
  v1 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2030];
  [v1 blurRadius];
  darkStyleWithOverrideUserInterfaceStyle__blurSupported = v0 > 0.0;
}

+ (id)spotlightStyle
{
  v2 = objc_opt_class();

  return [v2 darkStyleWithOverrideUserInterfaceStyle:0];
}

+ (id)faceTimeStyle
{
  v2 = objc_opt_class();

  return [v2 darkStyleWithOverrideUserInterfaceStyle:2];
}

@end