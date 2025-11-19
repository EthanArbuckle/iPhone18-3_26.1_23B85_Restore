@interface AVMediaContentRating
+ (id)contentRestrictionsCountryCode;
- (AVMediaContentRating)init;
- (AVMediaContentRating)initWithRating:(id)a3 rank:(int64_t)a4 countryCode:(id)a5 domain:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMediaContentRating:(id)a3;
- (BOOL)isImageMask;
- (UIImage)image;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVMediaContentRating

- (id)description
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [(AVMediaContentRating *)self countryCode];
  v5 = [v3 localizedStringForCountryCode:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(AVMediaContentRating *)self countryCode];
  }

  v8 = v7;

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(AVMediaContentRating *)self displayName];
  v11 = [(AVMediaContentRating *)self rank];
  v12 = [(AVMediaContentRating *)self countryCode];
  v13 = [(AVMediaContentRating *)self domain];
  v14 = @"Unknown";
  if (v13 == 1)
  {
    v14 = @"Movies";
  }

  if (v13 == 2)
  {
    v14 = @"TVShows";
  }

  v15 = v14;
  v16 = [(AVMediaContentRating *)self isRestricted];
  v17 = @"not restricted";
  if (v16)
  {
    v17 = @"restricted";
  }

  v18 = [v9 stringWithFormat:@"<AVMediaContentRating: %@ %d %@ %@ (%@) - %@>", v10, v11, v12, v8, v15, v17];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AVMediaContentRating *)self isEqualToMediaContentRating:v4];
  }

  return v5;
}

- (BOOL)isEqualToMediaContentRating:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (v6 = [(AVMediaContentRating *)v4 domain], v6 == [(AVMediaContentRating *)self domain]))
  {
    v7 = [(AVMediaContentRating *)v5 countryCode];
    v8 = [(AVMediaContentRating *)self countryCode];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(AVMediaContentRating *)v5 displayName];
      v10 = [(AVMediaContentRating *)self displayName];
      v11 = [v9 isEqualToString:v10];
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
  v3 = [(AVMediaContentRating *)self displayName];
  v4 = [v3 hash];
  v5 = [(AVMediaContentRating *)self rank];

  return v5 ^ v4;
}

- (BOOL)isImageMask
{
  v2 = [(AVMediaContentRating *)self displayName];
  v3 = [AVMediaContentRatings isRatingImageMask:v2];

  return v3;
}

- (UIImage)image
{
  v2 = [(AVMediaContentRating *)self displayName];
  v3 = [AVMediaContentRatings imageForRating:v2];

  return v3;
}

- (AVMediaContentRating)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"init unavailable"];

  return 0;
}

- (AVMediaContentRating)initWithRating:(id)a3 rank:(int64_t)a4 countryCode:(id)a5 domain:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = AVMediaContentRating;
  v12 = [(AVMediaContentRating *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    displayName = v12->_displayName;
    v12->_displayName = v13;

    v12->_rank = a4;
    v15 = [v11 copy];
    countryCode = v12->_countryCode;
    v12->_countryCode = v15;

    v12->_domain = a6;
    [(AVMediaContentRating *)v12 _setRestricted:[(AVMediaContentRating *)v12 _isCurrentlyRestricted]];
  }

  return v12;
}

+ (id)contentRestrictionsCountryCode
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 countryCode];

  return v3;
}

@end