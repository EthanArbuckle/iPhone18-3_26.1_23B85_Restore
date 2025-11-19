@interface EKPersistentSuggestedEventInfo
+ (id)relations;
+ (id)suggestedEventInfoWithOpaqueKey:(id)a3 uniqueKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)semanticIdentifier;
@end

@implementation EKPersistentSuggestedEventInfo

+ (id)suggestedEventInfoWithOpaqueKey:(id)a3 uniqueKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setOpaqueKey:v6];

  [v7 setUniqueKey:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(EKPersistentSuggestedEventInfo *)self opaqueKey];
  [v4 setOpaqueKey:v5];

  v6 = [(EKPersistentSuggestedEventInfo *)self uniqueKey];
  [v4 setUniqueKey:v6];

  v7 = [(EKPersistentSuggestedEventInfo *)self extractionGroupIdentifier];
  [v4 setExtractionGroupIdentifier:v7];

  [v4 setChangesAcknowledged:{-[EKPersistentSuggestedEventInfo changesAcknowledged](self, "changesAcknowledged")}];
  [v4 setChangedFields:{-[EKPersistentSuggestedEventInfo changedFields](self, "changedFields")}];
  v8 = [(EKPersistentSuggestedEventInfo *)self timestampAsDate];
  [v4 setTimestampAsDate:v8];

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
  v3 = [(EKPersistentObject *)self uniqueIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKPersistentSuggestedEventInfo;
    v5 = [(EKPersistentObject *)&v8 semanticIdentifier];
  }

  v6 = v5;

  return v6;
}

@end