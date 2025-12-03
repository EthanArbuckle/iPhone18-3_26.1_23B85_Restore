@interface NSObject(CNUtils)
- (void)cn_updateDictionaryForKey:()CNUtils withChanges:;
@end

@implementation NSObject(CNUtils)

- (void)cn_updateDictionaryForKey:()CNUtils withChanges:
{
  v6 = a4;
  v7 = a3;
  v8 = [self valueForKey:v7];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__NSObject_CNUtils__cn_updateDictionaryForKey_withChanges___block_invoke;
  v11[3] = &unk_1E74E62A0;
  v12 = v9;
  v10 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];
  [self setValue:v10 forKey:v7];
}

@end