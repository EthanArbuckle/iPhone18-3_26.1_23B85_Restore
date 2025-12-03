@interface ATXCandidateApp
- (id)identifier;
@end

@implementation ATXCandidateApp

- (id)identifier
{
  biomeStoreData = [(ATXCandidate *)self biomeStoreData];
  bundleID = [biomeStoreData bundleID];

  return bundleID;
}

@end