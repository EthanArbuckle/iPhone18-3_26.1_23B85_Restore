@interface UIApplication(MKLookAroundExtras)
- (id)_mklookaround_possiblePrimaryWindowScene;
- (id)_mklookaround_possibleWindowForControllingOverallAppearance;
@end

@implementation UIApplication(MKLookAroundExtras)

- (id)_mklookaround_possibleWindowForControllingOverallAppearance
{
  v2 = [a1 _mklookaround_possiblePrimaryWindowScene];
  if (v2)
  {
    v3 = [a1 _findWindowForControllingOverallAppearanceInWindowScene:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_mklookaround_possiblePrimaryWindowScene
{
  v1 = [a1 connectedScenes];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_18468];
  v3 = [v1 filteredSetUsingPredicate:v2];
  v4 = [v3 anyObject];

  return v4;
}

@end