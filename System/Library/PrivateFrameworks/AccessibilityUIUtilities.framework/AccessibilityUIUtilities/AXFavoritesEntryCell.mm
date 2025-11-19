@interface AXFavoritesEntryCell
- (AXFavoritesEntryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)_imageForActionType:(id)a3;
@end

@implementation AXFavoritesEntryCell

- (AXFavoritesEntryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v28.receiver = self;
  v28.super_class = AXFavoritesEntryCell;
  v9 = [(PSTableCell *)&v28 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(AXFavoritesEntryCell *)v9 _favoritesEntryForSpecifier:v8];
    v12 = [v8 propertyForKey:@"favoritesController"];
    v13 = [v11 actionType];
    if ([(AXFavoritesEntryCell *)v10 _shouldShowDetailForActionType:v13])
    {
      v14 = objc_opt_new();
      v15 = [(AXFavoritesEntryCell *)v10 _imageForActionType:v13];
      v16 = [(AXFavoritesEntryCell *)v10 detailTextLabel];
      v17 = [v16 textColor];
      v18 = [v15 imageWithTintColor:v17];
      [v14 setImage:v18];

      v19 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v14];
      v20 = [v19 mutableCopy];

      v21 = [v12 transportNameForFavoritesEntry:v11];
      if ([v21 length])
      {
        v22 = objc_alloc(MEMORY[0x1E696AAB0]);
        v23 = AXUILocalizedStringForKey(@"FAVORITES_TRANSPORT_SEPARATOR");
        v24 = [v22 initWithString:v23];
        [v20 appendAttributedString:v24];

        v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21];
        [v20 appendAttributedString:v25];
      }

      v26 = [(AXFavoritesEntryCell *)v10 detailTextLabel];
      [v26 setAttributedText:v20];
    }
  }

  return v10;
}

- (id)_imageForActionType:(id)a3
{
  v3 = a3;
  if ([*MEMORY[0x1E695C158] isEqualToString:v3])
  {
    v4 = [MEMORY[0x1E69DCAB8] favoritesAudioGlyphImage];
LABEL_9:
    v5 = v4;
    goto LABEL_10;
  }

  if ([*MEMORY[0x1E695C198] isEqualToString:v3])
  {
    v4 = [MEMORY[0x1E69DCAB8] favoritesTTYDirectGlyphImage];
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C1A0] isEqualToString:v3])
  {
    v4 = [MEMORY[0x1E69DCAB8] favoritesTTYRelayGlyphImage];
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C1B0] isEqualToString:v3])
  {
    v4 = [MEMORY[0x1E69DCAB8] favoritesVideoGlyphImage];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

@end