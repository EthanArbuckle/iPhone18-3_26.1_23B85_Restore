@interface TIMultilingualInputModeTableCell
- (BOOL)hasDownloadableAssets;
- (TIMultilingualInputModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)subtitle;
- (id)title;
- (void)addDownloadIcon;
- (void)dealloc;
- (void)downloadButtonPressed:(id)a3 withEvent:(id)a4;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateLabels;
@end

@implementation TIMultilingualInputModeTableCell

- (TIMultilingualInputModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = TIMultilingualInputModeTableCell;
  v6 = [(TIMultilingualInputModeTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:?];
  if (v6)
  {
    -[TIMultilingualInputModeTableCell setInputModes:](v6, "setInputModes:", [a5 propertyForKey:PSValueKey]);
    [(TIMultilingualInputModeTableCell *)v6 updateLabels];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIMultilingualInputModeTableCell;
  [(TIMultilingualInputModeTableCell *)&v3 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIMultilingualInputModeTableCell;
  [(TIMultilingualInputModeTableCell *)&v5 refreshCellContentsWithSpecifier:?];
  -[TIMultilingualInputModeTableCell setInputModes:](self, "setInputModes:", [a3 propertyForKey:PSValueKey]);
  [(TIMultilingualInputModeTableCell *)self updateLabels];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TIMultilingualInputModeTableCell;
  [(TIMultilingualInputModeTableCell *)&v3 prepareForReuse];
  [(TIMultilingualInputModeTableCell *)self setInputModes:0];
  [(TIMultilingualInputModeTableCell *)self setAccessoryView:0];
}

- (void)updateLabels
{
  [-[TIMultilingualInputModeTableCell textLabel](self "textLabel")];
  [-[TIMultilingualInputModeTableCell detailTextLabel](self "detailTextLabel")];
  if ([(TIMultilingualInputModeTableCell *)self hasDownloadableAssets])
  {

    [(TIMultilingualInputModeTableCell *)self addDownloadIcon];
  }
}

- (id)title
{
  v2 = [(TIMultilingualInputModeTableCell *)self inputModes];

  return TIUIGetLocalizedConcatenatedLanguageNamesForInputModes(v2);
}

- (id)subtitle
{
  LanguageCount = TIUIMultilingualSetGetLanguageCount([(TIMultilingualInputModeTableCell *)self inputModes]);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  if (LanguageCount == 2)
  {
    v4 = @"BILINGUAL_KEYBOARD_TITLE_SHORT";
  }

  else
  {
    v4 = @"MULTILINGUAL_KEYBOARD_TITLE_SHORT";
  }

  return [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_49C80 table:@"Keyboard"];
}

- (BOOL)hasDownloadableAssets
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TIMultilingualInputModeTableCell *)self inputModes];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v3 = [+[TIInputModeAssetStatusManager sharedManager](TIInputModeAssetStatusManager "sharedManager")];
      if (v3 == &dword_0 + 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        return v3;
      }
    }
  }

  return v3;
}

- (void)addDownloadIcon
{
  if (![(TIMultilingualInputModeTableCell *)self accessoryView])
  {
    v3 = TIDownloadButton();
    [(UIButton *)v3 addTarget:self action:"downloadButtonPressed:withEvent:" forControlEvents:64];

    [(TIMultilingualInputModeTableCell *)self setAccessoryView:v3];
  }
}

- (void)downloadButtonPressed:(id)a3 withEvent:(id)a4
{
  v4 = [(NSArray *)[(TIMultilingualInputModeTableCell *)self inputModes:a3] copy];
  v5 = +[TIInputModeAssetStatusManager sharedManager];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    *&v7 = 138412290;
    v13 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = KeyboardSettingsLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v19 = v11;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Download button pressed for %@", buf, 0xCu);
        }

        [v5 startDownloadingAssetsForInputMode:{v11, v13}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }
}

@end