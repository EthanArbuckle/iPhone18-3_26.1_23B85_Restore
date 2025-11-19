@interface SFKBScreenTraits
+ (id)traitsWithScreen:(id)a3 orientation:(int64_t)a4;
@end

@implementation SFKBScreenTraits

+ (id)traitsWithScreen:(id)a3 orientation:(int64_t)a4
{
  v5 = a3;
  if ([SFKBScreenTraits instancesRespondToSelector:sel_initWithScreen_orientation_allowFloating_ignoreRemoteKeyboard_])
  {
    v6 = [(UIKBScreenTraits *)[SFKBScreenTraits alloc] initWithScreen:v5 orientation:a4 allowFloating:0 ignoreRemoteKeyboard:0];
  }

  else
  {
    v6 = [MEMORY[0x1E69DCB68] traitsWithScreen:v5 orientation:a4];
  }

  v7 = v6;

  return v7;
}

@end