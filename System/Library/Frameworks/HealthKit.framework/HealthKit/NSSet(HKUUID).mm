@interface NSSet(HKUUID)
- (id)hk_dataForAllUUIDs;
@end

@implementation NSSet(HKUUID)

- (id)hk_dataForAllUUIDs
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__NSSet_HKUUID__hk_dataForAllUUIDs__block_invoke;
  v5[3] = &unk_1E7379E68;
  v3 = v2;
  v6 = v3;
  [self hk_enumerateUUIDsWithError:0 block:v5];

  return v3;
}

@end