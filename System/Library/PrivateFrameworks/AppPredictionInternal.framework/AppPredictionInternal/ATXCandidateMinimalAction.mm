@interface ATXCandidateMinimalAction
- (id)description;
- (id)detailedDescription;
- (id)identifier;
@end

@implementation ATXCandidateMinimalAction

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  biomeStoreData = [(ATXCandidate *)self biomeStoreData];
  bundleId = [biomeStoreData bundleId];
  biomeStoreData2 = [(ATXCandidate *)self biomeStoreData];
  actionType = [biomeStoreData2 actionType];
  v8 = MEMORY[0x277CCABB0];
  biomeStoreData3 = [(ATXCandidate *)self biomeStoreData];
  v10 = [v8 numberWithLongLong:{objc_msgSend(biomeStoreData3, "paramHash")}];
  v11 = [v3 stringWithFormat:@"%@:%@:%lld", bundleId, actionType, objc_msgSend(v10, "longLongValue")];

  return v11;
}

- (id)description
{
  biomeStoreData = [(ATXCandidate *)self biomeStoreData];
  actionFromDatastoreLookup = [biomeStoreData actionFromDatastoreLookup];

  v4 = MEMORY[0x277CCACA8];
  actionTitle = [actionFromDatastoreLookup actionTitle];
  actionSubtitle = [actionFromDatastoreLookup actionSubtitle];
  v7 = actionSubtitle;
  v8 = @"<no subtitle>";
  if (actionSubtitle)
  {
    v8 = actionSubtitle;
  }

  v9 = [v4 stringWithFormat:@"%@ | %@", actionTitle, v8];

  return v9;
}

- (id)detailedDescription
{
  biomeStoreData = [(ATXCandidate *)self biomeStoreData];
  actionFromDatastoreLookup = [biomeStoreData actionFromDatastoreLookup];
  actionDescription = [actionFromDatastoreLookup actionDescription];

  return actionDescription;
}

@end