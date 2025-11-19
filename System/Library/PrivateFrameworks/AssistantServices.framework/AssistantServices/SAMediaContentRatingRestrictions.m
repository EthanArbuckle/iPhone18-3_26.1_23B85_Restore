@interface SAMediaContentRatingRestrictions
- (id)_ad_SADHash;
@end

@implementation SAMediaContentRatingRestrictions

- (id)_ad_SADHash
{
  v3 = [(SAMediaContentRatingRestrictions *)self countryCode];
  v4 = [NSString stringWithFormat:@"%@-%ld-%ld-%ld", v3, [(SAMediaContentRatingRestrictions *)self movieRestriction], [(SAMediaContentRatingRestrictions *)self tvRestriction], [(SAMediaContentRatingRestrictions *)self appRestriction]];

  return v4;
}

@end