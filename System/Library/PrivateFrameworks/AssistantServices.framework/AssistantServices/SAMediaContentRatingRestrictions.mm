@interface SAMediaContentRatingRestrictions
- (id)_ad_SADHash;
@end

@implementation SAMediaContentRatingRestrictions

- (id)_ad_SADHash
{
  countryCode = [(SAMediaContentRatingRestrictions *)self countryCode];
  v4 = [NSString stringWithFormat:@"%@-%ld-%ld-%ld", countryCode, [(SAMediaContentRatingRestrictions *)self movieRestriction], [(SAMediaContentRatingRestrictions *)self tvRestriction], [(SAMediaContentRatingRestrictions *)self appRestriction]];

  return v4;
}

@end