@interface EKPersistentInviteReplyNotification
+ (id)defaultPropertiesToLoad;
+ (id)relations;
@end

@implementation EKPersistentInviteReplyNotification

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_8 != -1)
  {
    +[EKPersistentInviteReplyNotification defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_7;

  return v3;
}

void __62__EKPersistentInviteReplyNotification_defaultPropertiesToLoad__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992AD8];
  v4[0] = *MEMORY[0x1E6992B00];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E6992A90];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = defaultPropertiesToLoad_defaultPropertiesToLoad_7;
  defaultPropertiesToLoad_defaultPropertiesToLoad_7 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EKPersistentInviteReplyNotification_relations__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (relations_onceToken_12 != -1)
  {
    dispatch_once(&relations_onceToken_12, block);
  }

  v2 = relations_relations_12;

  return v2;
}

void __48__EKPersistentInviteReplyNotification_relations__block_invoke(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___EKPersistentInviteReplyNotification;
  v1 = objc_msgSendSuper2(&v6, sel_relations);
  v2 = [v1 mutableCopy];
  v3 = relations_relations_12;
  relations_relations_12 = v2;

  v4 = relations_relations_12;
  v5 = [EKRelation relationWithEntityName:@"Calendar" toMany:0 inversePropertyNames:0 ownsRelated:0];
  [v4 setObject:v5 forKey:*MEMORY[0x1E6992AC0]];
}

@end