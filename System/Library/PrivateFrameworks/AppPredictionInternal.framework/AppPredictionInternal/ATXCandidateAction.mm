@interface ATXCandidateAction
- (id)identifier;
@end

@implementation ATXCandidateAction

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXCandidate *)self biomeStoreData];
  v5 = [v4 actionKey];
  v6 = [(ATXCandidate *)self biomeStoreData];
  v7 = [v3 stringWithFormat:@"%@:%lu", v5, objc_msgSend(v6, "hash")];

  return v7;
}

@end