@interface CNContactStyle
+ (id)currentStyle;
+ (id)darkStyleWithOverrideUserInterfaceStyle:(int64_t)a3;
+ (id)defaultStyle;
+ (id)faceTimeStyle;
+ (id)siriStyle;
+ (id)spotlightStyle;
+ (id)testStyle;
+ (id)watchStyle;
+ (void)setCurrentStyle:(id)a3;
- (CNContactStyle)init;
- (CNContactStyle)initWithCoder:(id)a3;
- (UIEdgeInsets)separatorInset;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactStyle

+ (id)currentStyle
{
  v3 = sCurrentStyle;
  if (!sCurrentStyle)
  {
    if (CNUIIsFaceTime())
    {
      v4 = [a1 faceTimeStyle];
    }

    else
    {
      if (CNUIIsWatchCompanion())
      {
        [a1 watchStyle];
      }

      else
      {
        [a1 defaultStyle];
      }
      v4 = ;
    }

    v5 = sCurrentStyle;
    sCurrentStyle = v4;

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
    v13 = [(CNContactStyle *)v2 contactViewPlatterStyle];
    [(CNContactStyle *)v2 setUsesOpaqueBackground:1];
    v14 = +[CNUIColorRepository contactStyleDefaultTransportBackgroundColor];
    [(CNContactStyle *)v2 setTransportBackgroundColor:v14];

    v15 = +[CNUIColorRepository contactStyleDefaultTransportBorderColor];
    [(CNContactStyle *)v2 setTransportBorderColor:v15];

    if (v13 == 1)
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

- (void)encodeWithCoder:(id)a3
{
  textColor = self->_textColor;
  v5 = a3;
  [v5 encodeObject:textColor forKey:@"textColor"];
  [v5 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
}

- (CNContactStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNContactStyle;
  v5 = [(CNContactStyle *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    [(CNContactStyle *)v5 setTextColor:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    [(CNContactStyle *)v5 setBackgroundColor:v7];

    v8 = v5;
  }

  return v5;
}

+ (void)setCurrentStyle:(id)a3
{
  objc_storeStrong(&sCurrentStyle, a3);
  v4 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"CNContactStyleCurrentStyleDidChangeNotification" object:0];
}

+ (id)testStyle
{
  v2 = +[CNContactStyle defaultStyle];
  v3 = [MEMORY[0x1E69DC888] blueColor];
  [v2 setTextColor:v3];

  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v2 setSectionHeaderTextColor:v4];

  v5 = [v2 textColor];
  [v2 setTaglineTextColor:v5];

  v6 = [MEMORY[0x1E69DC888] cyanColor];
  [v2 setDisabledTextColor:v6];

  v7 = [MEMORY[0x1E69DC888] brownColor];
  [v2 setPlaceholderTextColor:v7];

  v8 = [MEMORY[0x1E69DC888] orangeColor];
  [v2 setHighlightedTextColor:v8];

  v9 = [MEMORY[0x1E69DC888] purpleColor];
  [v2 setHeaderBackgroundColor:v9];

  v10 = [v2 textColor];
  [v2 setListTextColor:v10];

  v11 = [MEMORY[0x1E69DC888] greenColor];
  [v2 setBackgroundColor:v11];

  v12 = [MEMORY[0x1E69DC888] greenColor];
  [v2 setSearchBarBackgroundColor:v12];

  v13 = [MEMORY[0x1E69DC888] magentaColor];
  [v2 setTransportBackgroundColor:v13];

  v14 = [MEMORY[0x1E69DC888] brownColor];
  [v2 setTransportBorderColor:v14];

  v15 = [MEMORY[0x1E69DC888] yellowColor];
  [v2 setSeparatorColor:v15];

  v16 = [MEMORY[0x1E69DC888] redColor];
  [v2 setSectionBackgroundColor:v16];

  v17 = [MEMORY[0x1E69DC888] brownColor];
  [v2 setSelectedCellBackgroundColor:v17];

  [v2 setBarStyle:1];
  [v2 setKeyboardAppearance:1];

  return v2;
}

+ (id)siriStyle
{
  v2 = +[CNContactStyle defaultStyle];
  v3 = [MEMORY[0x1E69DC888] siriui_textColor];
  [v2 setTextColor:v3];

  v4 = [MEMORY[0x1E69DC888] siriui_textColor];
  [v2 setSectionHeaderTextColor:v4];

  v5 = [v2 textColor];
  [v2 setTaglineTextColor:v5];

  v6 = [MEMORY[0x1E69DC888] siriui_textColor];
  [v2 setNotesTextColor:v6];

  v7 = [v2 textColor];
  [v2 setListTextColor:v7];

  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v8];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setContactHeaderBackgroundColor:v9];

  v10 = [MEMORY[0x1E69DC888] siriui_keylineColor];
  [v2 setContactHeaderDropShadowColor:v10];

  v11 = [MEMORY[0x1E69DC888] siriui_keylineColor];
  [v2 setSeparatorColor:v11];

  [v2 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];
  v12 = [MEMORY[0x1E69DC888] siriui_highlightColor];
  [v2 setSelectedCellBackgroundColor:v12];

  v13 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setSectionBackgroundColor:v13];

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
  v2 = [a1 defaultStyle];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setTextColor:v3];

  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setSectionHeaderTextColor:v4];

  v5 = [v2 textColor];
  [v2 setTaglineTextColor:v5];

  v6 = [v2 textColor];
  [v2 setNotesTextColor:v6];

  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setHighlightedTextColor:v7];

  v8 = [v2 textColor];
  [v2 setListTextColor:v8];

  [v2 setUsesOpaqueBackground:1];
  v9 = [MEMORY[0x1E69DC888] colorWithRed:0.09 green:0.09 blue:0.09 alpha:1.0];
  [v2 setBackgroundColor:v9];

  v10 = [MEMORY[0x1E69DC888] colorWithRed:0.11 green:0.11 blue:0.11 alpha:1.0];
  [v2 setSearchBarBackgroundColor:v10];

  v11 = [v2 backgroundColor];
  [v2 setContactHeaderBackgroundColor:v11];

  v12 = [MEMORY[0x1E69DC888] colorWithRed:0.95 green:0.95 blue:0.97 alpha:0.5];
  [v2 setContactHeaderDropShadowColor:v12];

  v13 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.58 blue:0.0 alpha:1.0];
  [v2 setTransportBoldBackgroundColor:v13];

  v14 = [MEMORY[0x1E69DC888] colorWithRed:0.176470588 green:0.176470588 blue:0.176470588 alpha:1.0];
  [v2 setTransportBackgroundColor:v14];

  v15 = [MEMORY[0x1E69DC888] colorWithRed:0.09 green:0.09 blue:0.09 alpha:1.0];
  [v2 setSectionBackgroundColor:v15];

  v16 = [MEMORY[0x1E69DC888] colorWithRed:0.16 green:0.16 blue:0.16 alpha:1.0];
  [v2 setSeparatorColor:v16];

  v17 = [MEMORY[0x1E69DC888] colorWithRed:0.09 green:0.09 blue:0.09 alpha:1.0];
  [v2 setHeaderBackgroundColor:v17];

  v18 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.12];
  [v2 setSelectedCellBackgroundColor:v18];

  [v2 setBarStyle:1];
  [v2 setUsesTranslucentBarStyle:0];
  [v2 setKeyboardAppearance:1];

  return v2;
}

+ (id)darkStyleWithOverrideUserInterfaceStyle:(int64_t)a3
{
  v4 = [a1 defaultStyle];
  if (darkStyleWithOverrideUserInterfaceStyle__onceToken != -1)
  {
    dispatch_once(&darkStyleWithOverrideUserInterfaceStyle__onceToken, &__block_literal_global_26275);
  }

  v5 = darkStyleWithOverrideUserInterfaceStyle__blurSupported == 1 && !UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsReduceTransparencyEnabled();
  [v4 setBlurSupported:v5];
  if (a3 == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v6 = ;
  [v4 setTextColor:v6];
  [v4 setSectionHeaderTextColor:v6];
  [v4 setHighlightedTextColor:v6];
  v7 = [v4 textColor];
  [v4 setTaglineTextColor:v7];

  [v4 setNotesTextColor:v6];
  [v4 setSuggestedLabelTextColor:v6];
  [v4 setSuggestedValueTextColor:v6];
  v8 = [v4 textColor];
  [v4 setListTextColor:v8];

  [v4 setUsesOpaqueBackground:0];
  [v4 setBackgroundColor:0];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setSearchBarBackgroundColor:v9];

  [v4 setContactHeaderBackgroundColor:0];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.14];
  [v4 setTransportBackgroundColor:v10];

  v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.14];
  [v4 setTransportBorderColor:v11];

  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.14];
  [v4 setTransportBoldBackgroundColor:v12];

  v13 = [MEMORY[0x1E69DC888] colorWithRed:0.95 green:0.95 blue:0.97 alpha:0.5];
  [v4 setContactHeaderDropShadowColor:v13];

  [v4 setTintColorOverride:v6];
  [v4 setSectionBackgroundColor:0];
  if ([v4 blurSupported])
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v4 setSeparatorBackdropOverlayBlendMode:v14];
  [v4 setSeparatorStyle:1];
  if ([v4 blurSupported])
  {
    +[CNUIColorRepository faceTimeLightSeparatorColor];
  }

  else
  {
    +[CNUIColorRepository faceTimeSeparatorColorWithBlurUnsupported];
  }
  v15 = ;
  [v4 setSeparatorColor:v15];

  if (darkStyleWithOverrideUserInterfaceStyle__blurSupported)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
  }
  v16 = ;
  [v4 setHeaderBackgroundColor:v16];

  [v4 setSelectedCellBackgroundColor:0];
  v17 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setGroupedBackgroundColor:v17];

  [v4 setBarStyle:1];
  [v4 setUsesTranslucentBarStyle:1];
  [v4 setKeyboardAppearance:1];
  [v4 setShouldPresentInCurrentContext:1];
  [v4 setModalTransitionStyle:14];
  [v4 setTopActionsViewStyle:6];
  [v4 setInlineActionsViewStyle:3];

  return v4;
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