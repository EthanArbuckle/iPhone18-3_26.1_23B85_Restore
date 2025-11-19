@interface MKThirdPartyRatingStringBuilder
+ (id)carPlayHeaderStringForMapItem:(id)a3 titleAttributes:(id)a4 providerAttributes:(id)a5;
+ (id)ratingColorForMapItem:(id)a3;
@end

@implementation MKThirdPartyRatingStringBuilder

+ (id)ratingColorForMapItem:(id)a3
{
  [a3 _normalizedUserRatingScore];
  v4 = v3;

  return [MKStarRatingView colorForRating:v4];
}

+ (id)carPlayHeaderStringForMapItem:(id)a3 titleAttributes:(id)a4 providerAttributes:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x1E696AEC0];
  v10 = a4;
  [v7 _normalizedUserRatingScore];
  v12 = [v9 stringWithFormat:@"%.1f ", v11];
  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:v10];

  v14 = [v7 _reviewsDisplayName];
  v15 = [v14 length];

  if (v15)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v7 _localizedSampleSizeForUserRatingScoreString];
    v18 = [v16 stringWithFormat:@"(%@) ", v17];

    v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18 attributes:v8];
    [v13 appendAttributedString:?];
    v19 = _MKLocalizedStringFromThisBundle(@"CarPlay_SearchCell_ReviewsLabel");
    v20 = objc_alloc(MEMORY[0x1E696AAB0]);
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v7 _reviewsDisplayName];
    v23 = [v21 stringWithFormat:v19, v22];
    v24 = [v20 initWithString:v23 attributes:v8];

    [v13 appendAttributedString:v24];
    if ([v7 _hasPriceDescription])
    {
      v25 = 1;
    }

    else
    {
      v25 = [v7 _hasPriceRange];
    }

    if ([v7 _hasPriceDescription])
    {
      [v7 _priceDescription];
    }

    else
    {
      [v7 _priceRangeString];
    }
    v27 = ;
    v28 = v27;
    if (v25 && [v27 length])
    {
      v32 = _MKLocalizedStringFromThisBundle(@" · [List view details separator]");
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v32, v28];
      v29 = v33 = v18;
      v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v29 attributes:v8];
      [v13 appendAttributedString:v30];
      v26 = [v13 copy];

      v18 = v33;
    }

    else
    {
      v26 = [v13 copy];
    }
  }

  else
  {
    v26 = [v13 copy];
  }

  return v26;
}

@end