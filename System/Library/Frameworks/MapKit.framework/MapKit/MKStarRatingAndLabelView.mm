@interface MKStarRatingAndLabelView
+ (id)ratingAndReviewsAsAttributedString:(double)string style:(int64_t)style font:(id)font numberOfReviews:(unint64_t)reviews textColor:(id)color theme:(id)theme;
+ (id)reviewsString:(unint64_t)string providerName:(id)name;
+ (id)starRatingAndProviderAsAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font showReviewsOrTips:(BOOL)tips showNumberOfReviews:(BOOL)reviews ratingStyle:(int64_t)style theme:(id)theme;
@end

@implementation MKStarRatingAndLabelView

+ (id)starRatingAndProviderAsAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font showReviewsOrTips:(BOOL)tips showNumberOfReviews:(BOOL)reviews ratingStyle:(int64_t)style theme:(id)theme
{
  reviewsCopy = reviews;
  tipsCopy = tips;
  v55[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  colorCopy = color;
  fontCopy = font;
  themeCopy = theme;
  v54[0] = *MEMORY[0x1E69DB648];
  subtitleFont = fontCopy;
  if (!fontCopy)
  {
    v9 = +[MKFontManager sharedManager];
    subtitleFont = [v9 subtitleFont];
  }

  v55[0] = subtitleFont;
  v54[1] = *MEMORY[0x1E69DB650];
  textColor = colorCopy;
  if (!colorCopy)
  {
    textColor = [themeCopy textColor];
  }

  v55[1] = textColor;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
  if (colorCopy)
  {
    if (fontCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (fontCopy)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  if ([itemCopy _sampleSizeForUserRatingScore])
  {
    [itemCopy _normalizedUserRatingScore];
    v52 = themeCopy;
    v22 = [MKStarRatingView ratingAsAttributedString:fontCopy baseFont:style style:themeCopy theme:v21];
    _reviewsDisplayName = [itemCopy _reviewsDisplayName];
    v24 = [_reviewsDisplayName length] == 0;

    if (v24 && reviewsCopy)
    {
      v25 = @"Place_Header_Reviews_No_Provider_Layout";
    }

    else
    {
      v25 = @"Place_Header_Reviews_Layout";
    }

    if (v24 && reviewsCopy || reviewsCopy)
    {
      v26 = _MKLocalizedStringFromThisBundle(v25);
    }

    else
    {
      v26 = @"%1$@";
    }

    v29 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v26 attributes:v53];
    string = [v29 string];
    v31 = [string rangeOfString:@"%1$@"];
    v33 = v32;

    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v29 replaceCharactersInRange:v31 withAttributedString:{v33, v22}];
    }

    string2 = [v29 string];
    v35 = [string2 rangeOfString:@"%2$d"];
    v37 = v36;

    if (v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      _localizedSampleSizeForUserRatingScoreString = [itemCopy _localizedSampleSizeForUserRatingScoreString];
      v39 = _localizedSampleSizeForUserRatingScoreString;
      if (_localizedSampleSizeForUserRatingScoreString)
      {
        v40 = _localizedSampleSizeForUserRatingScoreString;
      }

      else
      {
        v40 = &stru_1F15B23C0;
      }

      [v29 replaceCharactersInRange:v35 withString:{v37, v40}];
    }

    string3 = [v29 string];
    v42 = [string3 rangeOfString:@"%3$@"];
    v44 = v43;

    themeCopy = v52;
    if (v42 != 0x7FFFFFFFFFFFFFFFLL)
    {
      _reviewsDisplayName2 = [itemCopy _reviewsDisplayName];
      v46 = _reviewsDisplayName2;
      if (_reviewsDisplayName2)
      {
        v47 = _reviewsDisplayName2;
      }

      else
      {
        v47 = &stru_1F15B23C0;
      }

      [v29 replaceCharactersInRange:v42 withString:{v44, v47}];
    }

    v48 = [v29 copy];

    v49 = v53;
  }

  else
  {
    v27 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (tipsCopy)
    {
      v28 = @"No Reviews";
    }

    else
    {
      v28 = @"No Tips";
    }

    v22 = _MKLocalizedStringFromThisBundle(v28);
    v50 = v27;
    v49 = v53;
    v48 = [v50 initWithString:v22 attributes:v53];
  }

  return v48;
}

+ (id)ratingAndReviewsAsAttributedString:(double)string style:(int64_t)style font:(id)font numberOfReviews:(unint64_t)reviews textColor:(id)color theme:(id)theme
{
  v38[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  colorCopy = color;
  themeCopy = theme;
  v17 = [MKStarRatingView ratingAsAttributedString:fontCopy baseFont:style style:themeCopy theme:string];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v19 = [MKStarRatingAndLabelView reviewsString:reviews providerName:0];
  v37[0] = *MEMORY[0x1E69DB650];
  textColor = colorCopy;
  if (!colorCopy)
  {
    textColor = [themeCopy textColor];
  }

  v38[0] = textColor;
  v37[1] = *MEMORY[0x1E69DB648];
  subtitleFont = fontCopy;
  if (!fontCopy)
  {
    v8 = +[MKFontManager sharedManager];
    subtitleFont = [v8 subtitleFont];
  }

  v38[1] = subtitleFont;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v23 = [v18 initWithString:v19 attributes:v22];

  if (fontCopy)
  {
    if (colorCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (colorCopy)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v24 = objc_alloc(MEMORY[0x1E696AD40]);
  v25 = _MKLocalizedStringFromThisBundle(@"PlaceCard_StarAndReviewCount");
  v26 = [v24 initWithString:v25];

  string = [v26 string];
  v28 = [string rangeOfString:@"%1$@"];
  v30 = v29;

  if (v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v26 replaceCharactersInRange:v28 withAttributedString:{v30, v17}];
  }

  string2 = [v26 string];
  v32 = [string2 rangeOfString:@"%2$@"];
  v34 = v33;

  if (v32 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v26 replaceCharactersInRange:v32 withAttributedString:{v34, v23}];
  }

  v35 = [v26 copy];

  return v35;
}

+ (id)reviewsString:(unint64_t)string providerName:(id)name
{
  nameCopy = name;
  v6 = [nameCopy length];
  if (string == 1)
  {
    v9 = MEMORY[0x1E696AEC0];
    if (v6)
    {
      v8 = _MKLocalizedStringFromThisBundle(@"%1$d review on %2$@");
      v14 = nameCopy;
    }

    else
    {
      v8 = _MKLocalizedStringFromThisBundle(@"%d review");
    }

    [v9 localizedStringWithFormat:v8, 1, v14];
  }

  else
  {
    if (string)
    {
      v10 = MEMORY[0x1E696AEC0];
      if (v6)
      {
        v11 = _MKLocalizedStringFromThisBundle(@"PlacecardReviewProvider_Plural");
        [v10 localizedStringWithFormat:v11, string, nameCopy];
      }

      else
      {
        v11 = _MKLocalizedStringFromThisBundle(@"PlacecardReview_Plural");
        [v10 localizedStringWithFormat:v11, string, v14];
      }
      v12 = ;

      goto LABEL_15;
    }

    if (!v6)
    {
      v12 = _MKLocalizedStringFromThisBundle(@"No reviews");
      goto LABEL_15;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = _MKLocalizedStringFromThisBundle(@"No reviews on %@");
    [v7 localizedStringWithFormat:v8, nameCopy, v14];
  }
  v12 = ;

LABEL_15:

  return v12;
}

@end