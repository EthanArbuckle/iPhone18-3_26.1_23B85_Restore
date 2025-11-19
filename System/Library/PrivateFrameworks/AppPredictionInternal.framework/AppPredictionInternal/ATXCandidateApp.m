@interface ATXCandidateApp
- (id)identifier;
@end

@implementation ATXCandidateApp

- (id)identifier
{
  v2 = [(ATXCandidate *)self biomeStoreData];
  v3 = [v2 bundleID];

  return v3;
}

@end