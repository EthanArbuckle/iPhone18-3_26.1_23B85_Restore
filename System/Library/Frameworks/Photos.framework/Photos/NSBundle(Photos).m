@interface NSBundle(Photos)
- (uint64_t)ph_isFirstPartyBundle;
@end

@implementation NSBundle(Photos)

- (uint64_t)ph_isFirstPartyBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__NSBundle_Photos__ph_isFirstPartyBundle__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = a1;
  if (ph_isFirstPartyBundle_onceToken != -1)
  {
    dispatch_once(&ph_isFirstPartyBundle_onceToken, block);
  }

  return ph_isFirstPartyBundle_isFirstPartyBundle;
}

@end