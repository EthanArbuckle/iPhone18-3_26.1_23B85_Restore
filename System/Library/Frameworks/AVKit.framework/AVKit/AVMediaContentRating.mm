@interface AVMediaContentRating
+ (id)contentRestrictionsCountryCode;
- (AVMediaContentRating)init;
- (AVMediaContentRating)initWithRating:(id)rating rank:(int64_t)rank countryCode:(id)code domain:(int64_t)domain;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMediaContentRating:(id)rating;
- (BOOL)isImageMask;
- (UIImage)image;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVMediaContentRating

- (id)description
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  countryCode = [(AVMediaContentRating *)self countryCode];
  v5 = [currentLocale localizedStringForCountryCode:countryCode];
  v6 = v5;
  if (v5)
  {
    countryCode2 = v5;
  }

  else
  {
    countryCode2 = [(AVMediaContentRating *)self countryCode];
  }

  v8 = countryCode2;

  v9 = MEMORY[0x1E696AEC0];
  displayName = [(AVMediaContentRating *)self displayName];
  rank = [(AVMediaContentRating *)self rank];
  countryCode3 = [(AVMediaContentRating *)self countryCode];
  domain = [(AVMediaContentRating *)self domain];
  v14 = @"Unknown";
  if (domain == 1)
  {
    v14 = @"Movies";
  }

  if (domain == 2)
  {
    v14 = @"TVShows";
  }

  v15 = v14;
  isRestricted = [(AVMediaContentRating *)self isRestricted];
  v17 = @"not restricted";
  if (isRestricted)
  {
    v17 = @"restricted";
  }

  v18 = [v9 stringWithFormat:@"<AVMediaContentRating: %@ %d %@ %@ (%@) - %@>", displayName, rank, countryCode3, v8, v15, v17];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AVMediaContentRating *)self isEqualToMediaContentRating:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMediaContentRating:(id)rating
{
  ratingCopy = rating;
  v5 = ratingCopy;
  if (ratingCopy == self)
  {
    v11 = 1;
  }

  else if (ratingCopy && (v6 = [(AVMediaContentRating *)ratingCopy domain], v6 == [(AVMediaContentRating *)self domain]))
  {
    countryCode = [(AVMediaContentRating *)v5 countryCode];
    countryCode2 = [(AVMediaContentRating *)self countryCode];
    if ([countryCode isEqualToString:countryCode2])
    {
      displayName = [(AVMediaContentRating *)v5 displayName];
      displayName2 = [(AVMediaContentRating *)self displayName];
      v11 = [displayName isEqualToString:displayName2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  displayName = [(AVMediaContentRating *)self displayName];
  v4 = [displayName hash];
  rank = [(AVMediaContentRating *)self rank];

  return rank ^ v4;
}

- (BOOL)isImageMask
{
  displayName = [(AVMediaContentRating *)self displayName];
  v3 = [AVMediaContentRatings isRatingImageMask:displayName];

  return v3;
}

- (UIImage)image
{
  displayName = [(AVMediaContentRating *)self displayName];
  v3 = [AVMediaContentRatings imageForRating:displayName];

  return v3;
}

- (AVMediaContentRating)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"init unavailable"];

  return 0;
}

- (AVMediaContentRating)initWithRating:(id)rating rank:(int64_t)rank countryCode:(id)code domain:(int64_t)domain
{
  ratingCopy = rating;
  codeCopy = code;
  v18.receiver = self;
  v18.super_class = AVMediaContentRating;
  v12 = [(AVMediaContentRating *)&v18 init];
  if (v12)
  {
    v13 = [ratingCopy copy];
    displayName = v12->_displayName;
    v12->_displayName = v13;

    v12->_rank = rank;
    v15 = [codeCopy copy];
    countryCode = v12->_countryCode;
    v12->_countryCode = v15;

    v12->_domain = domain;
    [(AVMediaContentRating *)v12 _setRestricted:[(AVMediaContentRating *)v12 _isCurrentlyRestricted]];
  }

  return v12;
}

+ (id)contentRestrictionsCountryCode
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  countryCode = [currentLocale countryCode];

  return countryCode;
}

@end