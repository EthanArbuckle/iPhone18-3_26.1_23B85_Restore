@interface AAUIFamilyDetailsCache
+ (id)sharedCache;
- (unint64_t)pendingInviteCount;
- (void)invalidate;
@end

@implementation AAUIFamilyDetailsCache

+ (id)sharedCache
{
  if (sharedCache_onceToken_0 != -1)
  {
    +[AAUIFamilyDetailsCache sharedCache];
  }

  v3 = sharedCache__sharedCache;

  return v3;
}

uint64_t __37__AAUIFamilyDetailsCache_sharedCache__block_invoke()
{
  sharedCache__sharedCache = objc_alloc_init(AAUIFamilyDetailsCache);

  return MEMORY[0x1EEE66BB8]();
}

- (void)invalidate
{
  sharedCache = [getFAFamilyDetailsCacheClass() sharedCache];
  [sharedCache invalidate];
}

- (unint64_t)pendingInviteCount
{
  sharedCache = [getFAFamilyDetailsCacheClass() sharedCache];
  pendingInviteCount = [sharedCache pendingInviteCount];

  return pendingInviteCount;
}

@end