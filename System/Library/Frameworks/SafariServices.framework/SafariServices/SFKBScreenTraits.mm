@interface SFKBScreenTraits
+ (id)traitsWithScreen:(id)screen orientation:(int64_t)orientation;
@end

@implementation SFKBScreenTraits

+ (id)traitsWithScreen:(id)screen orientation:(int64_t)orientation
{
  screenCopy = screen;
  if ([SFKBScreenTraits instancesRespondToSelector:sel_initWithScreen_orientation_allowFloating_ignoreRemoteKeyboard_])
  {
    v6 = [(UIKBScreenTraits *)[SFKBScreenTraits alloc] initWithScreen:screenCopy orientation:orientation allowFloating:0 ignoreRemoteKeyboard:0];
  }

  else
  {
    v6 = [MEMORY[0x1E69DCB68] traitsWithScreen:screenCopy orientation:orientation];
  }

  v7 = v6;

  return v7;
}

@end