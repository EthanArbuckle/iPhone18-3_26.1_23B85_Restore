@interface EKPersistentResourceChangeNotification
+ (id)relations;
@end

@implementation EKPersistentResourceChangeNotification

+ (id)relations
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__EKPersistentResourceChangeNotification_relations__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (relations_onceToken_18 != -1)
  {
    dispatch_once(&relations_onceToken_18, block);
  }

  v2 = relations_relations_18;

  return v2;
}

void __51__EKPersistentResourceChangeNotification_relations__block_invoke(uint64_t a1)
{
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___EKPersistentResourceChangeNotification;
  v1 = objc_msgSendSuper2(&v7, sel_relations);
  v2 = [v1 mutableCopy];

  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"notification"];
  v4 = [EKRelation relationWithEntityName:@"ResourceChange" toMany:1 inversePropertyNames:v3];
  [v2 setObject:v4 forKey:*MEMORY[0x1E6992AD0]];

  v5 = [v2 copy];
  v6 = relations_relations_18;
  relations_relations_18 = v5;
}

@end