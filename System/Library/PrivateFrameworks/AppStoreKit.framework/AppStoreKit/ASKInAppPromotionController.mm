@interface ASKInAppPromotionController
+ (void)fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation ASKInAppPromotionController

+ (void)fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x1E697BA68];
  identifierCopy = identifier;
  defaultController = [v6 defaultController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __115__ASKInAppPromotionController_fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E870C1E8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [defaultController fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:identifierCopy completionHandler:v10];
}

@end