@interface EKPersistentNotification
+ (id)relations;
@end

@implementation EKPersistentNotification

+ (id)relations
{
  if (relations_onceToken_2 != -1)
  {
    +[EKPersistentNotification relations];
  }

  v3 = relations_relations_2;

  return v3;
}

void __37__EKPersistentNotification_relations__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6992A98];
  v0 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69927B0]];
  v1 = [EKRelation relationWithEntityName:@"Calendar" toMany:0 inversePropertyNames:v0 ownsRelated:0];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = relations_relations_2;
  relations_relations_2 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end