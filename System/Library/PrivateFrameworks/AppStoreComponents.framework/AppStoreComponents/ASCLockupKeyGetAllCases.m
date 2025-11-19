@interface ASCLockupKeyGetAllCases
@end

@implementation ASCLockupKeyGetAllCases

uint64_t ___ASCLockupKeyGetAllCases_block_invoke()
{
  _ASCLockupKeyGetAllCases_allCases = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"id", @"icon", @"title", @"subtitle", @"shortName", @"developerName", @"eula", @"privacyPolicyUrl", @"genreName", @"genreID", @"subgenres", @"bundleID", @"ageRating", @"ageRatingValue", @"developerId", @"webDistributionDomains", @"supportUrl", @"contentRatingsBySystem", @"distributorBundleId", @"appVersionId", @"isDistributor", 0}];

  return MEMORY[0x2821F96F8]();
}

@end