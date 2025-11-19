@interface TIInputModeTableCell
- (TIInputModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)subtitle;
- (id)title;
- (void)addDownloadIcon;
- (void)dealloc;
- (void)downloadButtonPressed:(id)a3 withEvent:(id)a4;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateLabels;
@end

@implementation TIInputModeTableCell

- (TIInputModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = TIInputModeTableCell;
  v6 = [(TIInputModeTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:?];
  if (v6)
  {
    -[TIInputModeTableCell setInputMode:](v6, "setInputMode:", +[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", [a5 propertyForKey:PSIDKey]));
    [(TIInputModeTableCell *)v6 updateLabels];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIInputModeTableCell;
  [(TIInputModeTableCell *)&v3 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIInputModeTableCell;
  [(TIInputModeTableCell *)&v5 refreshCellContentsWithSpecifier:?];
  -[TIInputModeTableCell setInputMode:](self, "setInputMode:", +[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", [a3 propertyForKey:PSIDKey]));
  [(TIInputModeTableCell *)self updateLabels];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TIInputModeTableCell;
  [(TIInputModeTableCell *)&v3 prepareForReuse];
  [(TIInputModeTableCell *)self setInputMode:0];
  [(TIInputModeTableCell *)self setAccessoryView:0];
}

- (void)updateLabels
{
  [-[TIInputModeTableCell textLabel](self "textLabel")];
  [-[TIInputModeTableCell detailTextLabel](self "detailTextLabel")];
  if ([(TIInputModeTableCell *)self hasDownloadableAssets])
  {

    [(TIInputModeTableCell *)self addDownloadIcon];
  }
}

- (id)title
{
  v3 = [(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] isExtensionInputMode];
  v4 = [(TIInputModeTableCell *)self inputMode];
  if (v3)
  {

    return [(UIKeyboardInputMode *)v4 safe__extendedDisplayName];
  }

  else
  {
    [(UIKeyboardInputMode *)v4 identifier];
    v6 = [TIKeyboardListController keyboardDisplayNameForIdentifier:[(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] languageWithRegion]];
    if ([objc_msgSend(UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:{@"kCFLocaleVariantCodeKey", "length"}])
    {
      v7 = TUIKeyboardTitle();
    }

    else
    {
      v7 = 0;
    }

    if ([v7 length])
    {
      return [NSString stringWithFormat:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARD_LANGUAGE_%@_WITH_VARIANT_%@", &stru_49C80, @"Keyboard"], v6, v7];
    }

    else
    {
      return v6;
    }
  }
}

- (id)subtitle
{
  if ([(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] isExtensionInputMode])
  {
    v3 = +[NSLocale localeForBundleLanguage:](NSLocale, "localeForBundleLanguage:", +[NSBundle mainBundle]);
    v4 = [(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] primaryLanguage];

    return [v3 displayNameForKey:NSLocaleLanguageCode value:v4];
  }

  else
  {
    v5 = [(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] identifier];
    NormalizedIdentifier = UIKeyboardInputModeGetNormalizedIdentifier();
    v7 = [TIKeyboardListController keyboardDisplayNameForIdentifier:[(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] languageWithRegion]];
    ComponentsFromIdentifier = UIKeyboardInputModeGetComponentsFromIdentifier();
    if ([objc_msgSend(ComponentsFromIdentifier objectForKey:{@"kCFLocaleVariantCodeKey", "length"}])
    {
      v9 = TUIKeyboardTitle();
    }

    else
    {
      v9 = 0;
    }

    v10 = [ComponentsFromIdentifier objectForKey:@"sw"];
    if ([v10 length])
    {
      v11 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v10, &stru_49C80, @"KeyboardLayouts"];
    }

    else
    {
      v11 = 0;
    }

    if ([v7 isEqualToString:v11] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", v11) & 1) != 0 || (v14[0] = _NSConcreteStackBlock, v14[1] = 3221225472, v14[2] = sub_F7F8, v14[3] = &unk_492C0, v14[4] = NormalizedIdentifier, objc_msgSend(objc_msgSend(+[TIKeyboardListController inputModes](TIKeyboardListController, "inputModes"), "indexesOfObjectsPassingTest:", v14), "count") <= 1) && (objc_msgSend(objc_msgSend(+[TIKeyboardListController softwareLayoutsForBaseInputMode:](TIKeyboardListController, "softwareLayoutsForBaseInputMode:", NormalizedIdentifier), "firstObject"), "isEqualToString:", v10))
    {
      v11 = 0;
    }

    if (TIInputModeIsChineseShuangpin())
    {
      v11 = TIGetCurrentShuangpinName();
    }

    if (TIInputModeIsChineseWubi())
    {
      v11 = TIGetCurrentWubiStandardName();
    }

    if ([+[TIInputModeAssetStatusManager sharedManager](TIInputModeAssetStatusManager "sharedManager")] == &dword_0 + 2)
    {
      v12 = KeyboardSettingsLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Showing downloading progress title for input mode %@", buf, 0xCu);
      }

      return [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ASSETS_DOWNLOADING_PROGRESS_TITLE", &stru_49C80, @"Keyboard"];
    }

    return v11;
  }
}

- (void)addDownloadIcon
{
  if (![(TIInputModeTableCell *)self accessoryView])
  {
    v3 = TIDownloadButton();
    [(UIButton *)v3 addTarget:self action:"downloadButtonPressed:withEvent:" forControlEvents:64];

    [(TIInputModeTableCell *)self setAccessoryView:v3];
  }
}

- (void)downloadButtonPressed:(id)a3 withEvent:(id)a4
{
  v5 = KeyboardSettingsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = [(TIInputModeTableCell *)self inputMode];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Download button pressed for %@", &v6, 0xCu);
  }

  [+[TIInputModeAssetStatusManager sharedManager](TIInputModeAssetStatusManager "sharedManager")];
}

@end