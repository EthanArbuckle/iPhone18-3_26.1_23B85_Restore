@interface MKFirstPartyRatingStringBuilder
+ (id)_colorForPercentage:(double)a3;
+ (id)_stringForPercentage:(double)a3;
+ (id)carPlayHeaderStringForMapItem:(id)a3 titleAttributes:(id)a4 providerAttributes:(id)a5;
+ (id)compactUserRecommendedRatingSummaryStringForMapItem:(id)a3;
+ (id)percentageStringForMapItem:(id)a3 showNumberOfRatings:(BOOL)a4 textColor:(id)a5 font:(id)a6 theme:(id)a7;
+ (id)ratingColorForMapItem:(id)a3;
+ (id)ratingPercentageAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5 theme:(id)a6;
+ (id)ratingStringForPercentage:(double)a3 font:(id)a4 color:(id)a5 includeGlyph:(BOOL)a6;
+ (id)thumbRecommendStringWithMapItem:(id)a3 font:(id)a4 includeGlyph:(BOOL)a5;
+ (id)userRecommendationStringWithFont:(id)a3 ratingState:(int64_t)a4 numberOfPhotosAdded:(unint64_t)a5;
@end

@implementation MKFirstPartyRatingStringBuilder

+ (id)ratingColorForMapItem:(id)a3
{
  v4 = [a3 _geoMapItem];
  v5 = [v4 _overallAppleRating];
  [v5 percentage];
  v6 = [a1 _colorForPercentage:?];

  return v6;
}

+ (id)userRecommendationStringWithFont:(id)a3 ratingState:(int64_t)a4 numberOfPhotosAdded:(unint64_t)a5
{
  v44[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v10 = objc_opt_new();
  v11 = MEMORY[0x1E69DB650];
  v12 = 0x1E695D000;
  if (a4)
  {
    v40 = a5;
    v13 = MEMORY[0x1E69DCAB8];
    if (a4 == 2)
    {
      v14 = [a1 ratingSymbolName];
      v15 = [v13 _mapkit_systemImageNamed:v14];

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
    v18 = [a1 _colorForPercentage:v16];
    v19 = MEMORY[0x1E69DCAD8];
    [v8 pointSize];
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
    v44[0] = v8;
    v44[1] = v18;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v9 addAttributes:v27 range:{0, objc_msgSend(v9, "length")}];

    v12 = 0x1E695D000uLL;
    a5 = v40;
  }

  if (a5)
  {
    v28 = _MKLocalizedStringFromThisBundle(@"Number Of Photos [UGC]");
    v29 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v28, a5];
    [v10 addObject:v29];
  }

  v30 = _MKLocalizedStringFromThisBundle(@" · [Delimeter]");
  v31 = [v10 componentsJoinedByString:v30];

  v32 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v31];
  v33 = *v11;
  v41[0] = *MEMORY[0x1E69DB648];
  v41[1] = v33;
  v42[0] = v8;
  v34 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v42[1] = v34;
  v35 = [*(v12 + 3872) dictionaryWithObjects:v42 forKeys:v41 count:2];

  [v32 addAttributes:v35 range:{0, objc_msgSend(v31, "length")}];
  v36 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v37 = v36;
  if (a4)
  {
    [v36 appendAttributedString:v9];
  }

  [v37 appendAttributedString:v32];

  return v37;
}

+ (id)carPlayHeaderStringForMapItem:(id)a3 titleAttributes:(id)a4 providerAttributes:(id)a5
{
  v7 = a4;
  v8 = [a3 _geoMapItem];
  v9 = [v8 _overallAppleRating];

  [v9 percentage];
  v11 = v10;
  v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

  v14 = [a1 ratingStringForPercentage:v12 font:v13 color:0 includeGlyph:v11];

  return v14;
}

+ (id)percentageStringForMapItem:(id)a3 showNumberOfRatings:(BOOL)a4 textColor:(id)a5 font:(id)a6 theme:(id)a7
{
  v10 = a4;
  v28[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a1 thumbRecommendStringWithMapItem:v12 font:v14 includeGlyph:1];
  v17 = 0x1E696A000;
  if (v10)
  {
    v18 = [a1 ratingPercentageAttributedStringForMapItem:v12 textColor:v13 font:v14 theme:v15];
    goto LABEL_10;
  }

  v19 = _MKLocalizedStringFromThisBundle(@"Recommend [UGC]");
  v27[0] = *MEMORY[0x1E69DB648];
  v20 = v14;
  if (!v14)
  {
    v10 = +[MKFontManager sharedManager];
    v20 = [v10 subtitleFont];
  }

  v28[0] = v20;
  v27[1] = *MEMORY[0x1E69DB650];
  v21 = v13;
  if (!v13)
  {
    v21 = [v15 textColor];
  }

  v28[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  if (!v13)
  {

    if (v14)
    {
      goto LABEL_9;
    }

LABEL_14:

    goto LABEL_9;
  }

  if (!v14)
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

+ (id)ratingPercentageAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5 theme:(id)a6
{
  v27[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v24 = a6;
  v12 = [a3 _geoMapItem];
  v13 = [v12 _overallAppleRating];

  if (v13)
  {
    v14 = _MKLocalizedStringFromThisBundle(@"Recommend (%@) [UGC]");
    v15 = +[MKFirstPartyRatingFormatter stringFromCount:](MKFirstPartyRatingFormatter, "stringFromCount:", [v13 numberOfRatingsUsedForScore]);
    v23 = v14;
    v16 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v14, v15];
    v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v16];
    v26[0] = *MEMORY[0x1E69DB648];
    v18 = v11;
    if (!v11)
    {
      v6 = +[MKFontManager sharedManager];
      v18 = [v6 subtitleFont];
    }

    v27[0] = v18;
    v26[1] = *MEMORY[0x1E69DB650];
    v19 = v10;
    if (!v10)
    {
      v19 = [v24 textColor];
    }

    v27[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    if (v10)
    {
      if (v11)
      {
LABEL_8:
        [v17 setAttributes:v20 range:{0, objc_msgSend(v17, "length")}];
        v21 = [v17 copy];

        goto LABEL_9;
      }
    }

    else
    {

      if (v11)
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

+ (id)compactUserRecommendedRatingSummaryStringForMapItem:(id)a3
{
  v4 = [a3 _geoMapItem];
  v5 = [v4 _overallAppleRating];

  v6 = _MKLocalizedStringFromThisBundle(@"Percentage (Count) [UGC]");
  [v5 percentage];
  v7 = [a1 _stringForPercentage:?];
  v8 = +[MKFirstPartyRatingFormatter stringFromCount:](MKFirstPartyRatingFormatter, "stringFromCount:", [v5 numberOfRatingsUsedForScore]);
  v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v7, v8];

  return v9;
}

+ (id)ratingStringForPercentage:(double)a3 font:(id)a4 color:(id)a5 includeGlyph:(BOOL)a6
{
  v6 = a6;
  v37[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if (a3 < 0.0 || a3 > 1.0)
  {
    v31 = objc_opt_new();
  }

  else
  {
    v34 = v6;
    v13 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v14 = MEMORY[0x1E69DCAB8];
    v15 = [a1 ratingSymbolName];
    v16 = [v14 _mapkit_systemImageNamed:v15];

    v17 = MEMORY[0x1E69DCAD8];
    [v10 pointSize];
    v18 = *MEMORY[0x1E69DB958];
    v33 = [v17 _mapkit_configurationWithPointSize:1 weight:? scale:?];
    v19 = [v16 _mapkit_imageWithSymbolConfiguration:?];

    v20 = [v19 imageWithRenderingMode:2];

    [v13 setImage:v20];
    v21 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
    [v21 appendAttributedString:v22];

    if (!v11)
    {
      v11 = [a1 _colorForPercentage:a3];
    }

    v35 = v10;
    v36[0] = *MEMORY[0x1E69DB648];
    v23 = [v10 _mapkit_fontWithWeight:v18];
    v36[1] = *MEMORY[0x1E69DB650];
    v37[0] = v23;
    v37[1] = v11;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

    [v21 addAttributes:v24 range:{0, objc_msgSend(v21, "length")}];
    v25 = [a1 _stringForPercentage:a3];
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

    v10 = v35;
  }

  return v31;
}

+ (id)_stringForPercentage:(double)a3
{
  v4 = _MKLocalizedStringFromThisBundle(@"%lu%% [UGC]");
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, (a3 * 100.0)];

  return v5;
}

+ (id)thumbRecommendStringWithMapItem:(id)a3 font:(id)a4 includeGlyph:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 _geoMapItem];
  v10 = [v9 _overallAppleRating];

  [v10 percentage];
  v11 = [a1 ratingStringForPercentage:v8 font:0 color:v5 includeGlyph:?];

  return v11;
}

+ (id)_colorForPercentage:(double)a3
{
  if (a3 <= 0.5)
  {
    v4 = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    v3 = +[MKInfoCardThemeManager currentTheme];
    v4 = [v3 textColor];
  }

  return v4;
}

@end