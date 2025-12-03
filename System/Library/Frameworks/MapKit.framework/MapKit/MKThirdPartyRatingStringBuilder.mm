@interface MKThirdPartyRatingStringBuilder
+ (id)carPlayHeaderStringForMapItem:(id)item titleAttributes:(id)attributes providerAttributes:(id)providerAttributes;
+ (id)ratingColorForMapItem:(id)item;
@end

@implementation MKThirdPartyRatingStringBuilder

+ (id)ratingColorForMapItem:(id)item
{
  [item _normalizedUserRatingScore];
  v4 = v3;

  return [MKStarRatingView colorForRating:v4];
}

+ (id)carPlayHeaderStringForMapItem:(id)item titleAttributes:(id)attributes providerAttributes:(id)providerAttributes
{
  itemCopy = item;
  providerAttributesCopy = providerAttributes;
  v9 = MEMORY[0x1E696AEC0];
  attributesCopy = attributes;
  [itemCopy _normalizedUserRatingScore];
  v12 = [v9 stringWithFormat:@"%.1f ", v11];
  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:attributesCopy];

  _reviewsDisplayName = [itemCopy _reviewsDisplayName];
  v15 = [_reviewsDisplayName length];

  if (v15)
  {
    v16 = MEMORY[0x1E696AEC0];
    _localizedSampleSizeForUserRatingScoreString = [itemCopy _localizedSampleSizeForUserRatingScoreString];
    v18 = [v16 stringWithFormat:@"(%@) ", _localizedSampleSizeForUserRatingScoreString];

    v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18 attributes:providerAttributesCopy];
    [v13 appendAttributedString:?];
    v19 = _MKLocalizedStringFromThisBundle(@"CarPlay_SearchCell_ReviewsLabel");
    v20 = objc_alloc(MEMORY[0x1E696AAB0]);
    v21 = MEMORY[0x1E696AEC0];
    _reviewsDisplayName2 = [itemCopy _reviewsDisplayName];
    v23 = [v21 stringWithFormat:v19, _reviewsDisplayName2];
    v24 = [v20 initWithString:v23 attributes:providerAttributesCopy];

    [v13 appendAttributedString:v24];
    if ([itemCopy _hasPriceDescription])
    {
      _hasPriceRange = 1;
    }

    else
    {
      _hasPriceRange = [itemCopy _hasPriceRange];
    }

    if ([itemCopy _hasPriceDescription])
    {
      [itemCopy _priceDescription];
    }

    else
    {
      [itemCopy _priceRangeString];
    }
    v27 = ;
    v28 = v27;
    if (_hasPriceRange && [v27 length])
    {
      v32 = _MKLocalizedStringFromThisBundle(@" · [List view details separator]");
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v32, v28];
      v29 = v33 = v18;
      v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v29 attributes:providerAttributesCopy];
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