@interface ATXCandidateAction
- (id)identifier;
@end

@implementation ATXCandidateAction

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  biomeStoreData = [(ATXCandidate *)self biomeStoreData];
  actionKey = [biomeStoreData actionKey];
  biomeStoreData2 = [(ATXCandidate *)self biomeStoreData];
  v7 = [v3 stringWithFormat:@"%@:%lu", actionKey, objc_msgSend(biomeStoreData2, "hash")];

  return v7;
}

@end