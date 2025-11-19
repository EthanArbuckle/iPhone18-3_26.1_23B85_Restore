@interface MKStarRatingAndLabelView
+ (id)ratingAndReviewsAsAttributedString:(double)a3 style:(int64_t)a4 font:(id)a5 numberOfReviews:(unint64_t)a6 textColor:(id)a7 theme:(id)a8;
+ (id)reviewsString:(unint64_t)a3 providerName:(id)a4;
+ (id)starRatingAndProviderAsAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5 showReviewsOrTips:(BOOL)a6 showNumberOfReviews:(BOOL)a7 ratingStyle:(int64_t)a8 theme:(id)a9;
@end

@implementation MKStarRatingAndLabelView

+ (id)starRatingAndProviderAsAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5 showReviewsOrTips:(BOOL)a6 showNumberOfReviews:(BOOL)a7 ratingStyle:(int64_t)a8 theme:(id)a9
{
  v11 = a7;
  v12 = a6;
  v55[2] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v54[0] = *MEMORY[0x1E69DB648];
  v19 = v17;
  if (!v17)
  {
    v9 = +[MKFontManager sharedManager];
    v19 = [v9 subtitleFont];
  }

  v55[0] = v19;
  v54[1] = *MEMORY[0x1E69DB650];
  v20 = v16;
  if (!v16)
  {
    v20 = [v18 textColor];
  }

  v55[1] = v20;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
  if (v16)
  {
    if (v17)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v17)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  if ([v15 _sampleSizeForUserRatingScore])
  {
    [v15 _normalizedUserRatingScore];
    v52 = v18;
    v22 = [MKStarRatingView ratingAsAttributedString:v17 baseFont:a8 style:v18 theme:v21];
    v23 = [v15 _reviewsDisplayName];
    v24 = [v23 length] == 0;

    if (v24 && v11)
    {
      v25 = @"Place_Header_Reviews_No_Provider_Layout";
    }

    else
    {
      v25 = @"Place_Header_Reviews_Layout";
    }

    if (v24 && v11 || v11)
    {
      v26 = _MKLocalizedStringFromThisBundle(v25);
    }

    else
    {
      v26 = @"%1$@";
    }

    v29 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v26 attributes:v53];
    v30 = [v29 string];
    v31 = [v30 rangeOfString:@"%1$@"];
    v33 = v32;

    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v29 replaceCharactersInRange:v31 withAttributedString:{v33, v22}];
    }

    v34 = [v29 string];
    v35 = [v34 rangeOfString:@"%2$d"];
    v37 = v36;

    if (v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = [v15 _localizedSampleSizeForUserRatingScoreString];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = &stru_1F15B23C0;
      }

      [v29 replaceCharactersInRange:v35 withString:{v37, v40}];
    }

    v41 = [v29 string];
    v42 = [v41 rangeOfString:@"%3$@"];
    v44 = v43;

    v18 = v52;
    if (v42 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = [v15 _reviewsDisplayName];
      v46 = v45;
      if (v45)
      {
        v47 = v45;
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
    if (v12)
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

+ (id)ratingAndReviewsAsAttributedString:(double)a3 style:(int64_t)a4 font:(id)a5 numberOfReviews:(unint64_t)a6 textColor:(id)a7 theme:(id)a8
{
  v38[2] = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v17 = [MKStarRatingView ratingAsAttributedString:v14 baseFont:a4 style:v16 theme:a3];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v19 = [MKStarRatingAndLabelView reviewsString:a6 providerName:0];
  v37[0] = *MEMORY[0x1E69DB650];
  v20 = v15;
  if (!v15)
  {
    v20 = [v16 textColor];
  }

  v38[0] = v20;
  v37[1] = *MEMORY[0x1E69DB648];
  v21 = v14;
  if (!v14)
  {
    v8 = +[MKFontManager sharedManager];
    v21 = [v8 subtitleFont];
  }

  v38[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v23 = [v18 initWithString:v19 attributes:v22];

  if (v14)
  {
    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v15)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v24 = objc_alloc(MEMORY[0x1E696AD40]);
  v25 = _MKLocalizedStringFromThisBundle(@"PlaceCard_StarAndReviewCount");
  v26 = [v24 initWithString:v25];

  v27 = [v26 string];
  v28 = [v27 rangeOfString:@"%1$@"];
  v30 = v29;

  if (v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v26 replaceCharactersInRange:v28 withAttributedString:{v30, v17}];
  }

  v31 = [v26 string];
  v32 = [v31 rangeOfString:@"%2$@"];
  v34 = v33;

  if (v32 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v26 replaceCharactersInRange:v32 withAttributedString:{v34, v23}];
  }

  v35 = [v26 copy];

  return v35;
}

+ (id)reviewsString:(unint64_t)a3 providerName:(id)a4
{
  v5 = a4;
  v6 = [v5 length];
  if (a3 == 1)
  {
    v9 = MEMORY[0x1E696AEC0];
    if (v6)
    {
      v8 = _MKLocalizedStringFromThisBundle(@"%1$d review on %2$@");
      v14 = v5;
    }

    else
    {
      v8 = _MKLocalizedStringFromThisBundle(@"%d review");
    }

    [v9 localizedStringWithFormat:v8, 1, v14];
  }

  else
  {
    if (a3)
    {
      v10 = MEMORY[0x1E696AEC0];
      if (v6)
      {
        v11 = _MKLocalizedStringFromThisBundle(@"PlacecardReviewProvider_Plural");
        [v10 localizedStringWithFormat:v11, a3, v5];
      }

      else
      {
        v11 = _MKLocalizedStringFromThisBundle(@"PlacecardReview_Plural");
        [v10 localizedStringWithFormat:v11, a3, v14];
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
    [v7 localizedStringWithFormat:v8, v5, v14];
  }
  v12 = ;

LABEL_15:

  return v12;
}

@end