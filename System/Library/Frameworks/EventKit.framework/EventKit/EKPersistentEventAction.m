@interface EKPersistentEventAction
+ (id)relations;
@end

@implementation EKPersistentEventAction

+ (id)relations
{
  if (relations_onceToken_14 != -1)
  {
    +[EKPersistentEventAction relations];
  }

  v3 = relations_relations_14;

  return v3;
}

void __36__EKPersistentEventAction_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992918]];
  v1 = [EKRelation relationWithEntityName:@"Event" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x1E6992B18], 0}];
  v3 = relations_relations_14;
  relations_relations_14 = v2;
}

@end