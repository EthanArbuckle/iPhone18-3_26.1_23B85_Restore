@interface NSDictionary(Foundation_Extensions)
- (id)muDeepMutableCopy;
@end

@implementation NSDictionary(Foundation_Extensions)

- (id)muDeepMutableCopy
{
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__NSDictionary_Foundation_Extensions__muDeepMutableCopy__block_invoke;
  v5[3] = &unk_1E845C368;
  v3 = v2;
  v6 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

@end