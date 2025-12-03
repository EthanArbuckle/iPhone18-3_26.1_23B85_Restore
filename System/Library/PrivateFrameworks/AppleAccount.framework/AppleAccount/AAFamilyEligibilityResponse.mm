@interface AAFamilyEligibilityResponse
- (AAFamilyEligibilityResponse)initWithHTTPResponse:(id)response data:(id)data;
- (BOOL)eligible;
- (int64_t)eligibilityStatus;
@end

@implementation AAFamilyEligibilityResponse

- (AAFamilyEligibilityResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v20.receiver = self;
  v20.super_class = AAFamilyEligibilityResponse;
  v4 = [(AAResponse *)&v20 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];
    v7 = [responseDictionary objectForKey:@"family-meta-info"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKeyedSubscript:@"primary-family-feature-description"];
      familyFeaturePrimaryDescriptions = v5->_familyFeaturePrimaryDescriptions;
      v5->_familyFeaturePrimaryDescriptions = v8;

      v10 = [v7 objectForKeyedSubscript:@"secondary-family-feature-description"];
      familyFeatureSecondaryDescriptions = v5->_familyFeatureSecondaryDescriptions;
      v5->_familyFeatureSecondaryDescriptions = v10;

      v12 = [v7 objectForKeyedSubscript:@"secondary-family-feature-description-title"];
      familyFeatureSecondaryTitle = v5->_familyFeatureSecondaryTitle;
      v5->_familyFeatureSecondaryTitle = v12;

      v14 = [v7 objectForKeyedSubscript:@"not-eligible-family-feature-title"];
      underageEligibilityAlertTitle = v5->_underageEligibilityAlertTitle;
      v5->_underageEligibilityAlertTitle = v14;

      v16 = [v7 objectForKeyedSubscript:@"not-eligible-family-feature-description"];
      underageEligibilityAlertMessage = v5->_underageEligibilityAlertMessage;
      v5->_underageEligibilityAlertMessage = v16;

      v18 = [v7 objectForKeyedSubscript:@"has-pending-invites"];
      v5->_hasPendingInvites = [v18 BOOLValue];
    }
  }

  return v5;
}

- (BOOL)eligible
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"eligible"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)eligibilityStatus
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v4 = [responseDictionary objectForKey:@"eligible"];

  responseDictionary2 = [(AAResponse *)self responseDictionary];
  v6 = [responseDictionary2 objectForKey:@"status"];

  if ([v4 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * ([v6 integerValue] == 61);
  }

  return v7;
}

@end