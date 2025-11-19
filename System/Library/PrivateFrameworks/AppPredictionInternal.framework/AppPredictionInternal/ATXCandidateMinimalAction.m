@interface ATXCandidateMinimalAction
- (id)description;
- (id)detailedDescription;
- (id)identifier;
@end

@implementation ATXCandidateMinimalAction

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXCandidate *)self biomeStoreData];
  v5 = [v4 bundleId];
  v6 = [(ATXCandidate *)self biomeStoreData];
  v7 = [v6 actionType];
  v8 = MEMORY[0x277CCABB0];
  v9 = [(ATXCandidate *)self biomeStoreData];
  v10 = [v8 numberWithLongLong:{objc_msgSend(v9, "paramHash")}];
  v11 = [v3 stringWithFormat:@"%@:%@:%lld", v5, v7, objc_msgSend(v10, "longLongValue")];

  return v11;
}

- (id)description
{
  v2 = [(ATXCandidate *)self biomeStoreData];
  v3 = [v2 actionFromDatastoreLookup];

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 actionTitle];
  v6 = [v3 actionSubtitle];
  v7 = v6;
  v8 = @"<no subtitle>";
  if (v6)
  {
    v8 = v6;
  }

  v9 = [v4 stringWithFormat:@"%@ | %@", v5, v8];

  return v9;
}

- (id)detailedDescription
{
  v2 = [(ATXCandidate *)self biomeStoreData];
  v3 = [v2 actionFromDatastoreLookup];
  v4 = [v3 actionDescription];

  return v4;
}

@end