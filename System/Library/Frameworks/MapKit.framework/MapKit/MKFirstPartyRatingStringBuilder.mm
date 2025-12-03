@interface MKFirstPartyRatingStringBuilder
+ (id)_colorForPercentage:(double)percentage;
+ (id)_stringForPercentage:(double)percentage;
+ (id)carPlayHeaderStringForMapItem:(id)item titleAttributes:(id)attributes providerAttributes:(id)providerAttributes;
+ (id)compactUserRecommendedRatingSummaryStringForMapItem:(id)item;
+ (id)percentageStringForMapItem:(id)item showNumberOfRatings:(BOOL)ratings textColor:(id)color font:(id)font theme:(id)theme;
+ (id)ratingColorForMapItem:(id)item;
+ (id)ratingPercentageAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font theme:(id)theme;
+ (id)ratingStringForPercentage:(double)percentage font:(id)font color:(id)color includeGlyph:(BOOL)glyph;
+ (id)thumbRecommendStringWithMapItem:(id)item font:(id)font includeGlyph:(BOOL)glyph;
+ (id)userRecommendationStringWithFont:(id)font ratingState:(int64_t)state numberOfPhotosAdded:(unint64_t)added;
@end

@implementation MKFirstPartyRatingStringBuilder

+ (id)ratingColorForMapItem:(id)item
{
  _geoMapItem = [item _geoMapItem];
  _overallAppleRating = [_geoMapItem _overallAppleRating];
  [_overallAppleRating percentage];
  v6 = [self _colorForPercentage:?];

  return v6;
}

+ (id)userRecommendationStringWithFont:(id)font ratingState:(int64_t)state numberOfPhotosAdded:(unint64_t)added
{
  v44[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v10 = objc_opt_new();
  v11 = MEMORY[0x1E69DB650];
  v12 = 0x1E695D000;
  if (state)
  {
    addedCopy = added;
    v13 = MEMORY[0x1E69DCAB8];
    if (state == 2)
    {
      ratingSymbolName = [self ratingSymbolName];
      v15 = [v13 _mapkit_systemImageNamed:ratingSymbolName];

      v16 = 1.0;
      v17 = @"You Recommend [UGC]";
    }

    else
    {
      v15 = [MEMORY[0x1E69DCAB8] _mapkit_systemImageNamed:@"hand.thumbsdown.fill"];
      v16 = 0.0;
      v17 = @"You Dislike [UGC]";
    }

    v39 = _MKLocalizedStringFromThisBundle(v17);
    v18 = [self _colorForPercentage:v16];
    v19 = MEMORY[0x1E69DCAD8];
    [fontCopy pointSize];
    v20 = [v19 _mapkit_configurationWithPointSize:1 weight:? scale:?];
    v21 = [v15 _mapkit_imageWithSymbolConfiguration:v20];

    v22 = [v21 imageWithRenderingMode:2];

    v23 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v23 setImage:v22];
    [v10 addObject:v39];
    v24 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v23];
    [v9 appendAttributedString:v24];

    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v9 appendAttributedString:v25];

    v11 = MEMORY[0x1E69DB650];
    v26 = *MEMORY[0x1E69DB650];
    v43[0] = *MEMORY[0x1E69DB648];
    v43[1] = v26;
    v44[0] = fontCopy;
    v44[1] = v18;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v9 addAttributes:v27 range:{0, objc_msgSend(v9, "length")}];

    v12 = 0x1E695D000uLL;
    added = addedCopy;
  }

  if (added)
  {
    v28 = _MKLocalizedStringFromThisBundle(@"Number Of Photos [UGC]");
    added = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v28, added];
    [v10 addObject:added];
  }

  v30 = _MKLocalizedStringFromThisBundle(@" · [Delimeter]");
  v31 = [v10 componentsJoinedByString:v30];

  v32 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v31];
  v33 = *v11;
  v41[0] = *MEMORY[0x1E69DB648];
  v41[1] = v33;
  v42[0] = fontCopy;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v42[1] = secondaryLabelColor;
  v35 = [*(v12 + 3872) dictionaryWithObjects:v42 forKeys:v41 count:2];

  [v32 addAttributes:v35 range:{0, objc_msgSend(v31, "length")}];
  v36 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v37 = v36;
  if (state)
  {
    [v36 appendAttributedString:v9];
  }

  [v37 appendAttributedString:v32];

  return v37;
}

+ (id)carPlayHeaderStringForMapItem:(id)item titleAttributes:(id)attributes providerAttributes:(id)providerAttributes
{
  attributesCopy = attributes;
  _geoMapItem = [item _geoMapItem];
  _overallAppleRating = [_geoMapItem _overallAppleRating];

  [_overallAppleRating percentage];
  v11 = v10;
  v12 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v13 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

  v14 = [self ratingStringForPercentage:v12 font:v13 color:0 includeGlyph:v11];

  return v14;
}

+ (id)percentageStringForMapItem:(id)item showNumberOfRatings:(BOOL)ratings textColor:(id)color font:(id)font theme:(id)theme
{
  ratingsCopy = ratings;
  v28[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  colorCopy = color;
  fontCopy = font;
  themeCopy = theme;
  v16 = [self thumbRecommendStringWithMapItem:itemCopy font:fontCopy includeGlyph:1];
  v17 = 0x1E696A000;
  if (ratingsCopy)
  {
    v18 = [self ratingPercentageAttributedStringForMapItem:itemCopy textColor:colorCopy font:fontCopy theme:themeCopy];
    goto LABEL_10;
  }

  v19 = _MKLocalizedStringFromThisBundle(@"Recommend [UGC]");
  v27[0] = *MEMORY[0x1E69DB648];
  subtitleFont = fontCopy;
  if (!fontCopy)
  {
    ratingsCopy = +[MKFontManager sharedManager];
    subtitleFont = [ratingsCopy subtitleFont];
  }

  v28[0] = subtitleFont;
  v27[1] = *MEMORY[0x1E69DB650];
  textColor = colorCopy;
  if (!colorCopy)
  {
    textColor = [themeCopy textColor];
  }

  v28[1] = textColor;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  if (!colorCopy)
  {

    if (fontCopy)
    {
      goto LABEL_9;
    }

LABEL_14:

    goto LABEL_9;
  }

  if (!fontCopy)
  {
    goto LABEL_14;
  }

LABEL_9:
  v17 = 0x1E696A000uLL;
  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v19 attributes:v22];

LABEL_10:
  v23 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v23 appendAttributedString:v16];
  v24 = [objc_alloc(*(v17 + 2736)) initWithString:@" " attributes:0];
  [v23 appendAttributedString:v24];

  [v23 appendAttributedString:v18];
  v25 = [v23 copy];

  return v25;
}

+ (id)ratingPercentageAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font theme:(id)theme
{
  v27[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  fontCopy = font;
  themeCopy = theme;
  _geoMapItem = [item _geoMapItem];
  _overallAppleRating = [_geoMapItem _overallAppleRating];

  if (_overallAppleRating)
  {
    v14 = _MKLocalizedStringFromThisBundle(@"Recommend (%@) [UGC]");
    v15 = +[MKFirstPartyRatingFormatter stringFromCount:](MKFirstPartyRatingFormatter, "stringFromCount:", [_overallAppleRating numberOfRatingsUsedForScore]);
    v23 = v14;
    v16 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v14, v15];
    v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v16];
    v26[0] = *MEMORY[0x1E69DB648];
    subtitleFont = fontCopy;
    if (!fontCopy)
    {
      v6 = +[MKFontManager sharedManager];
      subtitleFont = [v6 subtitleFont];
    }

    v27[0] = subtitleFont;
    v26[1] = *MEMORY[0x1E69DB650];
    textColor = colorCopy;
    if (!colorCopy)
    {
      textColor = [themeCopy textColor];
    }

    v27[1] = textColor;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    if (colorCopy)
    {
      if (fontCopy)
      {
LABEL_8:
        [v17 setAttributes:v20 range:{0, objc_msgSend(v17, "length")}];
        v21 = [v17 copy];

        goto LABEL_9;
      }
    }

    else
    {

      if (fontCopy)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: overallRating != ((void *)0)", buf, 2u);
  }

  v21 = 0;
LABEL_9:

  return v21;
}

+ (id)compactUserRecommendedRatingSummaryStringForMapItem:(id)item
{
  _geoMapItem = [item _geoMapItem];
  _overallAppleRating = [_geoMapItem _overallAppleRating];

  v6 = _MKLocalizedStringFromThisBundle(@"Percentage (Count) [UGC]");
  [_overallAppleRating percentage];
  v7 = [self _stringForPercentage:?];
  v8 = +[MKFirstPartyRatingFormatter stringFromCount:](MKFirstPartyRatingFormatter, "stringFromCount:", [_overallAppleRating numberOfRatingsUsedForScore]);
  v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v7, v8];

  return v9;
}

+ (id)ratingStringForPercentage:(double)percentage font:(id)font color:(id)color includeGlyph:(BOOL)glyph
{
  glyphCopy = glyph;
  v37[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  colorCopy = color;
  if (percentage < 0.0 || percentage > 1.0)
  {
    v31 = objc_opt_new();
  }

  else
  {
    v34 = glyphCopy;
    v13 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v14 = MEMORY[0x1E69DCAB8];
    ratingSymbolName = [self ratingSymbolName];
    v16 = [v14 _mapkit_systemImageNamed:ratingSymbolName];

    v17 = MEMORY[0x1E69DCAD8];
    [fontCopy pointSize];
    v18 = *MEMORY[0x1E69DB958];
    v33 = [v17 _mapkit_configurationWithPointSize:1 weight:? scale:?];
    v19 = [v16 _mapkit_imageWithSymbolConfiguration:?];

    v20 = [v19 imageWithRenderingMode:2];

    [v13 setImage:v20];
    v21 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
    [v21 appendAttributedString:v22];

    if (!colorCopy)
    {
      colorCopy = [self _colorForPercentage:percentage];
    }

    v35 = fontCopy;
    v36[0] = *MEMORY[0x1E69DB648];
    v23 = [fontCopy _mapkit_fontWithWeight:v18];
    v36[1] = *MEMORY[0x1E69DB650];
    v37[0] = v23;
    v37[1] = colorCopy;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

    [v21 addAttributes:v24 range:{0, objc_msgSend(v21, "length")}];
    v25 = [self _stringForPercentage:percentage];
    v26 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:0];
    [v26 appendAttributedString:v27];

    v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v25];
    [v26 appendAttributedString:v28];

    [v26 setAttributes:v24 range:{0, objc_msgSend(v26, "length")}];
    v29 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v30 = v29;
    if (v34)
    {
      [v29 appendAttributedString:v21];
    }

    [v30 appendAttributedString:v26];
    v31 = [v30 copy];

    fontCopy = v35;
  }

  return v31;
}

+ (id)_stringForPercentage:(double)percentage
{
  v4 = _MKLocalizedStringFromThisBundle(@"%lu%% [UGC]");
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, (percentage * 100.0)];

  return v5;
}

+ (id)thumbRecommendStringWithMapItem:(id)item font:(id)font includeGlyph:(BOOL)glyph
{
  glyphCopy = glyph;
  fontCopy = font;
  _geoMapItem = [item _geoMapItem];
  _overallAppleRating = [_geoMapItem _overallAppleRating];

  [_overallAppleRating percentage];
  v11 = [self ratingStringForPercentage:fontCopy font:0 color:glyphCopy includeGlyph:?];

  return v11;
}

+ (id)_colorForPercentage:(double)percentage
{
  if (percentage <= 0.5)
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    v3 = +[MKInfoCardThemeManager currentTheme];
    systemGrayColor = [v3 textColor];
  }

  return systemGrayColor;
}

@end