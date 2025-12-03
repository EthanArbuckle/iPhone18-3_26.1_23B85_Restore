@interface AXFavoritesEntryCell
- (AXFavoritesEntryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_imageForActionType:(id)type;
@end

@implementation AXFavoritesEntryCell

- (AXFavoritesEntryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v28.receiver = self;
  v28.super_class = AXFavoritesEntryCell;
  v9 = [(PSTableCell *)&v28 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    v11 = [(AXFavoritesEntryCell *)v9 _favoritesEntryForSpecifier:specifierCopy];
    v12 = [specifierCopy propertyForKey:@"favoritesController"];
    actionType = [v11 actionType];
    if ([(AXFavoritesEntryCell *)v10 _shouldShowDetailForActionType:actionType])
    {
      v14 = objc_opt_new();
      v15 = [(AXFavoritesEntryCell *)v10 _imageForActionType:actionType];
      detailTextLabel = [(AXFavoritesEntryCell *)v10 detailTextLabel];
      textColor = [detailTextLabel textColor];
      v18 = [v15 imageWithTintColor:textColor];
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

      detailTextLabel2 = [(AXFavoritesEntryCell *)v10 detailTextLabel];
      [detailTextLabel2 setAttributedText:v20];
    }
  }

  return v10;
}

- (id)_imageForActionType:(id)type
{
  typeCopy = type;
  if ([*MEMORY[0x1E695C158] isEqualToString:typeCopy])
  {
    favoritesAudioGlyphImage = [MEMORY[0x1E69DCAB8] favoritesAudioGlyphImage];
LABEL_9:
    v5 = favoritesAudioGlyphImage;
    goto LABEL_10;
  }

  if ([*MEMORY[0x1E695C198] isEqualToString:typeCopy])
  {
    favoritesAudioGlyphImage = [MEMORY[0x1E69DCAB8] favoritesTTYDirectGlyphImage];
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C1A0] isEqualToString:typeCopy])
  {
    favoritesAudioGlyphImage = [MEMORY[0x1E69DCAB8] favoritesTTYRelayGlyphImage];
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C1B0] isEqualToString:typeCopy])
  {
    favoritesAudioGlyphImage = [MEMORY[0x1E69DCAB8] favoritesVideoGlyphImage];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

@end