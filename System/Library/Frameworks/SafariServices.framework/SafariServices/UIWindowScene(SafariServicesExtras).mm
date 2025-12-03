@interface UIWindowScene(SafariServicesExtras)
- (void)_sf_destroyScene;
- (void)_sf_openFaceTimeMultiWayURL:()SafariServicesExtras completionHandler:;
- (void)_sf_openTelURL:()SafariServicesExtras completionHandler:;
@end

@implementation UIWindowScene(SafariServicesExtras)

- (void)_sf_openTelURL:()SafariServicesExtras completionHandler:
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFaceTimeMultiwayURL])
  {
    [self _sf_openFaceTimeMultiWayURL:v6 completionHandler:v7];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithURL:v6];
    if ([v8 isValid])
    {
      if ([v8 showUIPrompt])
      {
        v9 = +[SFTelephonyURLHandler sharedInstance];
        if (([v9 openURLForDialRequest:v8 withScene:self completionHandler:v7] & 1) == 0)
        {
          v10 = objc_alloc(getTPDialPromptAlertClass());
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __72__UIWindowScene_SafariServicesExtras___sf_openTelURL_completionHandler___block_invoke;
          v12[3] = &unk_1E8490340;
          v15 = v7;
          v13 = v8;
          selfCopy = self;
          v11 = [v10 initWithDialRequest:v13 dialAction:v12];
          [v11 show];
        }
      }

      else
      {
        [self openURL:v6 options:0 completionHandler:v7];
      }
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)_sf_openFaceTimeMultiWayURL:()SafariServicesExtras completionHandler:
{
  v6 = a4;
  v7 = MEMORY[0x1E69D8C10];
  v8 = a3;
  v9 = [[v7 alloc] initWithURL:v8];

  if (v9)
  {
    v10 = objc_alloc(getTPDialPromptAlertClass());
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__UIWindowScene_SafariServicesExtras___sf_openFaceTimeMultiWayURL_completionHandler___block_invoke;
    v12[3] = &unk_1E8490340;
    v15 = v6;
    v13 = v9;
    selfCopy = self;
    v11 = [v10 initWithJoinRequest:v13 dialAction:v12];
    [v11 show];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)_sf_destroyScene
{
  v2 = objc_alloc(MEMORY[0x1E69DC930]);
  v5 = [v2 initWithPreferredAnimationType:1 callbackQueue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_5];
  _FBSScene = [self _FBSScene];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [_FBSScene sendActions:v4];
}

@end