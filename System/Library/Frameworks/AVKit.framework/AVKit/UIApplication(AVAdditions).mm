@interface UIApplication(AVAdditions)
- (id)avkit_possiblePrimaryWindowScene;
- (id)avkit_possibleWindowForControllingOverallAppearance;
- (id)avkit_windowSceneWithSessionIdentifier:()AVAdditions;
@end

@implementation UIApplication(AVAdditions)

- (id)avkit_windowSceneWithSessionIdentifier:()AVAdditions
{
  v4 = a3;
  openSessions = [self openSessions];
  v6 = MEMORY[0x1E696AE18];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__UIApplication_AVAdditions__avkit_windowSceneWithSessionIdentifier___block_invoke;
  v13[3] = &unk_1E72079C8;
  v14 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v13];
  v9 = [openSessions filteredSetUsingPredicate:v8];
  anyObject = [v9 anyObject];

  scene = [anyObject scene];

  return scene;
}

- (id)avkit_possibleWindowForControllingOverallAppearance
{
  avkit_possiblePrimaryWindowScene = [self avkit_possiblePrimaryWindowScene];
  if (avkit_possiblePrimaryWindowScene)
  {
    v3 = [self _findWindowForControllingOverallAppearanceInWindowScene:avkit_possiblePrimaryWindowScene];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)avkit_possiblePrimaryWindowScene
{
  connectedScenes = [self connectedScenes];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_6039];
  v3 = [connectedScenes filteredSetUsingPredicate:v2];
  anyObject = [v3 anyObject];

  return anyObject;
}

@end