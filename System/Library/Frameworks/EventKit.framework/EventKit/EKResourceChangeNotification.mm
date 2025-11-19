@interface EKResourceChangeNotification
+ (id)knownRelationshipMultiValueKeys;
- (void)addResourceChange:(id)a3;
- (void)removeResourceChange:(id)a3;
@end

@implementation EKResourceChangeNotification

+ (id)knownRelationshipMultiValueKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EKResourceChangeNotification_knownRelationshipMultiValueKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (knownRelationshipMultiValueKeys_onceToken_1 != -1)
  {
    dispatch_once(&knownRelationshipMultiValueKeys_onceToken_1, block);
  }

  v2 = knownRelationshipMultiValueKeys_keys_1;

  return v2;
}

void __63__EKResourceChangeNotification_knownRelationshipMultiValueKeys__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObject:*MEMORY[0x1E6992AD0]];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___EKResourceChangeNotification;
  v3 = objc_msgSendSuper2(&v6, sel_knownRelationshipMultiValueKeys);
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];
  v5 = knownRelationshipMultiValueKeys_keys_1;
  knownRelationshipMultiValueKeys_keys_1 = v4;
}

- (void)addResourceChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Nil resource change passed."];
    v4 = 0;
  }

  [(EKObject *)self addCachedMeltedObject:v4 forMultiValueKey:*MEMORY[0x1E6992AD0]];
}

- (void)removeResourceChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Nil resource change passed."];
    v4 = 0;
  }

  [(EKObject *)self removeCachedMeltedObject:v4 forMultiValueKey:*MEMORY[0x1E6992AD0]];
}

@end