@interface UISceneConfiguration(SwiftUI)
+ (id)_configurationFromConfiguration:()SwiftUI hostClass:bridgingID:sceneDelegateWrapper:;
+ (id)_configurationWithRole:()SwiftUI bridgingID:sceneDelegateWrapper:;
- (id)sceneDelegate;
@end

@implementation UISceneConfiguration(SwiftUI)

- (id)sceneDelegate
{
  v1 = objc_alloc_init([self delegateClass]);

  return v1;
}

+ (id)_configurationWithRole:()SwiftUI bridgingID:sceneDelegateWrapper:
{
  v7 = MEMORY[0x1E69DCE88];
  v8 = a4;
  v9 = a3;
  v10 = [[v7 alloc] _initWithRole:v9 bridgingID:v8 sceneDelegateWrapper:a5];

  return v10;
}

+ (id)_configurationFromConfiguration:()SwiftUI hostClass:bridgingID:sceneDelegateWrapper:
{
  v9 = a5;
  v10 = MEMORY[0x1E69DCE88];
  v11 = a3;
  v12 = [v10 alloc];
  v13 = objc_opt_respondsToSelector();

  v14 = objc_alloc(MEMORY[0x1E69DCE88]);
  v15 = v14;
  if (v13)
  {
    v16 = [v14 _initWithConfiguration:v11 sceneDelegateWrapper:a6];
  }

  else
  {
    role = [v11 role];

    v16 = [v15 _initWithRole:role bridgingID:v9 sceneDelegateWrapper:a6];
    [v16 setDelegateClass:a4];
  }

  return v16;
}

@end