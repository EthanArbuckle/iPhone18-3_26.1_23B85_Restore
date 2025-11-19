@interface MKRatingStringBuilder
+ (Class)ratingStringProviderForMapItem:(id)a3;
+ (id)carPlayHeaderStringForMapItem:(id)a3 titleAttributes:(id)a4 providerAttributes:(id)a5;
+ (id)delimitedPriceRangeAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5;
+ (id)priceLabelStringFromMapItem:(id)a3;
+ (id)ratingAndReviewSummaryAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5 theme:(id)a6;
+ (id)ratingColorForMapItem:(id)a3;
+ (id)ratingSummaryAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5 theme:(id)a6;
+ (id)ratingSymbolNameForMapItem:(id)a3;
@end

@implementation MKRatingStringBuilder

+ (id)ratingColorForMapItem:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 ratingStringProviderForMapItem:{v4), "ratingColorForMapItem:", v4}];

  return v5;
}

+ (id)carPlayHeaderStringForMapItem:(id)a3 titleAttributes:(id)a4 providerAttributes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_msgSend(a1 ratingStringProviderForMapItem:{v10), "carPlayHeaderStringForMapItem:titleAttributes:providerAttributes:", v10, v9, v8}];

  return v11;
}

+ (id)priceLabelStringFromMapItem:(id)a3
{
  v3 = a3;
  if ([v3 _hasPriceDescription])
  {
    v4 = [v3 _priceDescription];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 _hasPriceRange])
  {
    v4 = [v3 _priceRangeString];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)delimitedPriceRangeAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [a3 _priceRangeString];
  if ([v9 length])
  {
    v10 = _MKLocalizedStringFromThisBundle(@"Delimiter [Nano]");
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v10, v9];
    v12 = *MEMORY[0x1E69DB648];
    v17[0] = *MEMORY[0x1E69DB650];
    v17[1] = v12;
    v18[0] = v7;
    v18[1] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11];
    [v14 setAttributes:v13 range:{0, objc_msgSend(v14, "length")}];
    v15 = [v14 copy];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  return v15;
}

+ (id)ratingAndReviewSummaryAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5 theme:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_msgSend(a1 ratingStringProviderForMapItem:{v13), "ratingAndReviewSummaryAttributedStringForMapItem:textColor:font:theme:", v13, v12, v11, v10}];

  return v14;
}

+ (id)ratingSummaryAttributedStringForMapItem:(id)a3 textColor:(id)a4 font:(id)a5 theme:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_msgSend(a1 ratingStringProviderForMapItem:{v13), "ratingSummaryAttributedStringForMapItem:textColor:font:theme:", v13, v12, v11, v10}];

  return v14;
}

+ (Class)ratingStringProviderForMapItem:(id)a3
{
  v3 = [a3 _geoMapItem];
  [v3 _hasAppleRatings];

  v4 = objc_opt_class();

  return v4;
}

+ (id)ratingSymbolNameForMapItem:(id)a3
{
  v3 = [a1 ratingStringProviderForMapItem:a3];

  return [v3 ratingSymbolName];
}

@end