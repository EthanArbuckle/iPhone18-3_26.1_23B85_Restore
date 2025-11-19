@interface NSURL
@end

@implementation NSURL

id __209__NSURL_HealthKit___hk_tapToRadarURLForBundleID_component_title_description_classification_reproducibility_keywords_autoDiagnostics_attachments_collaborationContactHandles_diagnosticExtensionOptions_behavior___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringValue];
  v4 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:*(a1 + 32)];

  return v4;
}

uint64_t __61__NSURL__HKURLSupport___hk_extractEncodedHKProfileIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"pi"];

  return v3;
}

@end