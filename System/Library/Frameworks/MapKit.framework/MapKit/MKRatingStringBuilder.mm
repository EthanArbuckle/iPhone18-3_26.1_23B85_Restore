@interface MKRatingStringBuilder
+ (Class)ratingStringProviderForMapItem:(id)item;
+ (id)carPlayHeaderStringForMapItem:(id)item titleAttributes:(id)attributes providerAttributes:(id)providerAttributes;
+ (id)delimitedPriceRangeAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font;
+ (id)priceLabelStringFromMapItem:(id)item;
+ (id)ratingAndReviewSummaryAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font theme:(id)theme;
+ (id)ratingColorForMapItem:(id)item;
+ (id)ratingSummaryAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font theme:(id)theme;
+ (id)ratingSymbolNameForMapItem:(id)item;
@end

@implementation MKRatingStringBuilder

+ (id)ratingColorForMapItem:(id)item
{
  itemCopy = item;
  v5 = [objc_msgSend(self ratingStringProviderForMapItem:{itemCopy), "ratingColorForMapItem:", itemCopy}];

  return v5;
}

+ (id)carPlayHeaderStringForMapItem:(id)item titleAttributes:(id)attributes providerAttributes:(id)providerAttributes
{
  providerAttributesCopy = providerAttributes;
  attributesCopy = attributes;
  itemCopy = item;
  v11 = [objc_msgSend(self ratingStringProviderForMapItem:{itemCopy), "carPlayHeaderStringForMapItem:titleAttributes:providerAttributes:", itemCopy, attributesCopy, providerAttributesCopy}];

  return v11;
}

+ (id)priceLabelStringFromMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _hasPriceDescription])
  {
    _priceDescription = [itemCopy _priceDescription];
LABEL_5:
    v5 = _priceDescription;
    goto LABEL_7;
  }

  if ([itemCopy _hasPriceRange])
  {
    _priceDescription = [itemCopy _priceRangeString];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)delimitedPriceRangeAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font
{
  v18[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  fontCopy = font;
  _priceRangeString = [item _priceRangeString];
  if ([_priceRangeString length])
  {
    v10 = _MKLocalizedStringFromThisBundle(@"Delimiter [Nano]");
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v10, _priceRangeString];
    v12 = *MEMORY[0x1E69DB648];
    v17[0] = *MEMORY[0x1E69DB650];
    v17[1] = v12;
    v18[0] = colorCopy;
    v18[1] = fontCopy;
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

+ (id)ratingAndReviewSummaryAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font theme:(id)theme
{
  themeCopy = theme;
  fontCopy = font;
  colorCopy = color;
  itemCopy = item;
  v14 = [objc_msgSend(self ratingStringProviderForMapItem:{itemCopy), "ratingAndReviewSummaryAttributedStringForMapItem:textColor:font:theme:", itemCopy, colorCopy, fontCopy, themeCopy}];

  return v14;
}

+ (id)ratingSummaryAttributedStringForMapItem:(id)item textColor:(id)color font:(id)font theme:(id)theme
{
  themeCopy = theme;
  fontCopy = font;
  colorCopy = color;
  itemCopy = item;
  v14 = [objc_msgSend(self ratingStringProviderForMapItem:{itemCopy), "ratingSummaryAttributedStringForMapItem:textColor:font:theme:", itemCopy, colorCopy, fontCopy, themeCopy}];

  return v14;
}

+ (Class)ratingStringProviderForMapItem:(id)item
{
  _geoMapItem = [item _geoMapItem];
  [_geoMapItem _hasAppleRatings];

  v4 = objc_opt_class();

  return v4;
}

+ (id)ratingSymbolNameForMapItem:(id)item
{
  v3 = [self ratingStringProviderForMapItem:item];

  return [v3 ratingSymbolName];
}

@end