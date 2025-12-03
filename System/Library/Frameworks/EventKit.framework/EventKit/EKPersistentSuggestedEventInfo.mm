@interface EKPersistentSuggestedEventInfo
+ (id)relations;
+ (id)suggestedEventInfoWithOpaqueKey:(id)key uniqueKey:(id)uniqueKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)semanticIdentifier;
@end

@implementation EKPersistentSuggestedEventInfo

+ (id)suggestedEventInfoWithOpaqueKey:(id)key uniqueKey:(id)uniqueKey
{
  uniqueKeyCopy = uniqueKey;
  keyCopy = key;
  v7 = objc_opt_new();
  [v7 setOpaqueKey:keyCopy];

  [v7 setUniqueKey:uniqueKeyCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  opaqueKey = [(EKPersistentSuggestedEventInfo *)self opaqueKey];
  [v4 setOpaqueKey:opaqueKey];

  uniqueKey = [(EKPersistentSuggestedEventInfo *)self uniqueKey];
  [v4 setUniqueKey:uniqueKey];

  extractionGroupIdentifier = [(EKPersistentSuggestedEventInfo *)self extractionGroupIdentifier];
  [v4 setExtractionGroupIdentifier:extractionGroupIdentifier];

  [v4 setChangesAcknowledged:{-[EKPersistentSuggestedEventInfo changesAcknowledged](self, "changesAcknowledged")}];
  [v4 setChangedFields:{-[EKPersistentSuggestedEventInfo changedFields](self, "changedFields")}];
  timestampAsDate = [(EKPersistentSuggestedEventInfo *)self timestampAsDate];
  [v4 setTimestampAsDate:timestampAsDate];

  return v4;
}

+ (id)relations
{
  if (relations_onceToken_15 != -1)
  {
    +[EKPersistentSuggestedEventInfo relations];
  }

  v3 = relations_relations_15;

  return v3;
}

void __43__EKPersistentSuggestedEventInfo_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69929E8]];
  v1 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x1E6992B18], 0}];
  v3 = relations_relations_15;
  relations_relations_15 = v2;
}

- (id)semanticIdentifier
{
  uniqueIdentifier = [(EKPersistentObject *)self uniqueIdentifier];
  v4 = uniqueIdentifier;
  if (uniqueIdentifier)
  {
    semanticIdentifier = uniqueIdentifier;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKPersistentSuggestedEventInfo;
    semanticIdentifier = [(EKPersistentObject *)&v8 semanticIdentifier];
  }

  v6 = semanticIdentifier;

  return v6;
}

@end