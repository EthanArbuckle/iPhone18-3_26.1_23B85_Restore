@interface UGCGlyphButtonAppearance
+ (id)_sharedThumbButtonConfigForInlineMode:(BOOL)mode;
+ (id)thumbsDownButtonAppearanceForInlineMode:(BOOL)mode;
+ (id)thumbsUpButtonAppearanceForInlineMode:(BOOL)mode;
@end

@implementation UGCGlyphButtonAppearance

+ (id)thumbsDownButtonAppearanceForInlineMode:(BOOL)mode
{
  v4 = [self _sharedThumbButtonConfigForInlineMode:?];
  v5 = @"hand.thumbsdown.fill";
  if (!mode)
  {
    v6 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v6 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      v5 = @"hand.thumbsdown";
    }
  }

  [v4 setMutedGlyphName:v5];
  [v4 setUnselectedGlyphName:v5];
  [v4 setSelectedGlyphName:@"hand.thumbsdown.fill"];

  return v4;
}

+ (id)thumbsUpButtonAppearanceForInlineMode:(BOOL)mode
{
  v4 = [self _sharedThumbButtonConfigForInlineMode:?];
  v5 = @"hand.thumbsup.fill";
  if (!mode)
  {
    v6 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v6 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      v5 = @"hand.thumbsup";
    }
  }

  [v4 setMutedGlyphName:v5];
  [v4 setUnselectedGlyphName:v5];
  [v4 setSelectedGlyphName:@"hand.thumbsup.fill"];

  return v4;
}

+ (id)_sharedThumbButtonConfigForInlineMode:(BOOL)mode
{
  v4 = objc_alloc_init(UGCGlyphButtonAppearance);
  if (mode)
  {
    v5 = +[UIColor clearColor];
    [(UGCGlyphButtonAppearance *)v4 setMutedBackgroundColor:v5];

    v6 = +[UIColor labelColor];
    [(UGCGlyphButtonAppearance *)v4 setMutedGlyphColor:v6];

    v7 = +[UIColor clearColor];
    [(UGCGlyphButtonAppearance *)v4 setUnselectedBackgroundColor:v7];

    v8 = +[UIColor labelColor];
    [(UGCGlyphButtonAppearance *)v4 setUnselectedGlyphColor:v8];

    v9 = +[UIColor labelColor];
    [(UGCGlyphButtonAppearance *)v4 setSelectedGlyphColor:v9];

    v10 = +[UIColor clearColor];
    [(UGCGlyphButtonAppearance *)v4 setSelectedBackgroundColor:v10];

    v11 = +[UGCFontManager inlineRatingGlyphButtonFont];
    [(UGCGlyphButtonAppearance *)v4 setSelectedGlyphFontSize:v11];

    v12 = +[UGCFontManager inlineRatingGlyphButtonFont];
    [(UGCGlyphButtonAppearance *)v4 setUnselectedGlyphFontSize:v12];

    +[UGCFontManager inlineRatingGlyphButtonFont];
  }

  else
  {
    v13 = +[MapsTheme ugcGlyphButtonViewMutedBackgroundColor];
    [(UGCGlyphButtonAppearance *)v4 setMutedBackgroundColor:v13];

    v14 = +[MapsTheme ugcGlyphButtonViewMutedGlyphColor];
    [(UGCGlyphButtonAppearance *)v4 setMutedGlyphColor:v14];

    v15 = +[MapsTheme ugcGlyphButtonViewUnselectedBackgroundColor];
    [(UGCGlyphButtonAppearance *)v4 setUnselectedBackgroundColor:v15];

    v16 = +[MapsTheme ugcGlyphButtonViewUnselectedGlyphColor];
    [(UGCGlyphButtonAppearance *)v4 setUnselectedGlyphColor:v16];

    v17 = +[MapsTheme ugcGlyphButtonViewSelectedGlyphColor];
    [(UGCGlyphButtonAppearance *)v4 setSelectedGlyphColor:v17];

    v18 = +[MapsTheme ugcGlyphButtonViewSelectedBackgroundColor];
    [(UGCGlyphButtonAppearance *)v4 setSelectedBackgroundColor:v18];

    v19 = +[UGCFontManager ratingGlyphButtonFont];
    [(UGCGlyphButtonAppearance *)v4 setSelectedGlyphFontSize:v19];

    v20 = +[UGCFontManager ratingGlyphButtonFont];
    [(UGCGlyphButtonAppearance *)v4 setUnselectedGlyphFontSize:v20];

    +[UGCFontManager ratingGlyphButtonFont];
  }
  v21 = ;
  [(UGCGlyphButtonAppearance *)v4 setMutedGlyphFontSize:v21];

  return v4;
}

@end