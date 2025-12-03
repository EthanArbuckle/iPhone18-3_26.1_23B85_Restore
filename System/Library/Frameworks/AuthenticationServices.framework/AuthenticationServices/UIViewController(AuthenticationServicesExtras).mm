@interface UIViewController(AuthenticationServicesExtras)
- (id)_as_applicationBackgroundBlock;
- (id)_as_presentedViewControllerStackForPasswordManagerUpToClasses:()AuthenticationServicesExtras;
- (id)_as_viewControllerToPresentFrom;
- (void)_as_restorePresentedViewControllerStackForPasswordManager:()AuthenticationServicesExtras;
- (void)_as_setApplicationBackgroundBlock:()AuthenticationServicesExtras;
@end

@implementation UIViewController(AuthenticationServicesExtras)

- (id)_as_applicationBackgroundBlock
{
  v1 = objc_getAssociatedObject(self, applicationBackgroundBlockKey);
  v2 = v1;
  if (v1)
  {
    block = [v1 block];
    v4 = _Block_copy(block);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_as_setApplicationBackgroundBlock:()AuthenticationServicesExtras
{
  v4 = a3;
  v5 = applicationBackgroundBlockKey;
  v7 = v4;
  if (v4)
  {
    v6 = [[ASBackgroundObserver alloc] initWithViewController:self block:v4];
    objc_setAssociatedObject(self, v5, v6, 1);
  }

  else
  {
    objc_setAssociatedObject(self, applicationBackgroundBlockKey, 0, 1);
  }
}

- (id)_as_viewControllerToPresentFrom
{
  selfCopy = self;
  presentedViewController = [selfCopy presentedViewController];
  if (presentedViewController)
  {
    while (1)
    {
      v3 = presentedViewController;
      if ([presentedViewController isBeingDismissed])
      {
        break;
      }

      presentedViewController = [v3 presentedViewController];
      selfCopy = v3;
      if (!presentedViewController)
      {
        selfCopy = v3;
        v3 = 0;
        break;
      }
    }
  }

  return selfCopy;
}

- (id)_as_presentedViewControllerStackForPasswordManagerUpToClasses:()AuthenticationServicesExtras
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  presentedViewController = [self presentedViewController];

  if (presentedViewController)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      array = MEMORY[0x1E695E0F0];
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        presentedViewController2 = [self presentedViewController];
        LOBYTE(v12) = objc_opt_isKindOfClass();

        if (v12)
        {
          break;
        }

        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      array = [MEMORY[0x1E695DF70] array];
      presentedViewController3 = [self presentedViewController];
      [array addObject:presentedViewController3];

      presentedViewController4 = [self presentedViewController];
      v16 = [presentedViewController4 _as_presentedViewControllerStackForPasswordManagerUpToClasses:v6];
      [array addObjectsFromArray:v16];

      v6 = presentedViewController4;
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)_as_restorePresentedViewControllerStackForPasswordManager:()AuthenticationServicesExtras
{
  v4 = a3;
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __108__UIViewController_AuthenticationServicesExtras___as_restorePresentedViewControllerStackForPasswordManager___block_invoke;
    v7[3] = &unk_1E7AF76A8;
    v8 = firstObject;
    v9 = v4;
    v6 = firstObject;
    [self presentViewController:v6 animated:0 completion:v7];
  }
}

@end