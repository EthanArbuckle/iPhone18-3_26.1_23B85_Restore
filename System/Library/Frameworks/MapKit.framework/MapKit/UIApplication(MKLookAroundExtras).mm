@interface UIApplication(MKLookAroundExtras)
- (id)_mklookaround_possiblePrimaryWindowScene;
- (id)_mklookaround_possibleWindowForControllingOverallAppearance;
@end

@implementation UIApplication(MKLookAroundExtras)

- (id)_mklookaround_possibleWindowForControllingOverallAppearance
{
  _mklookaround_possiblePrimaryWindowScene = [self _mklookaround_possiblePrimaryWindowScene];
  if (_mklookaround_possiblePrimaryWindowScene)
  {
    v3 = [self _findWindowForControllingOverallAppearanceInWindowScene:_mklookaround_possiblePrimaryWindowScene];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_mklookaround_possiblePrimaryWindowScene
{
  connectedScenes = [self connectedScenes];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_18468];
  v3 = [connectedScenes filteredSetUsingPredicate:v2];
  anyObject = [v3 anyObject];

  return anyObject;
}

@end