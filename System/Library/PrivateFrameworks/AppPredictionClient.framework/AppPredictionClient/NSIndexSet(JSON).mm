@interface NSIndexSet(JSON)
- (id)atx_asArray;
@end

@implementation NSIndexSet(JSON)

- (id)atx_asArray
{
  v2 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__NSIndexSet_JSON__atx_asArray__block_invoke;
  v6[3] = &unk_1E80C11F0;
  v7 = v2;
  v3 = v2;
  [self enumerateIndexesUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

@end