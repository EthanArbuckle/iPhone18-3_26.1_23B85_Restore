@interface UIViewController(AppleMediaServices)
- (id)ams_backgroundColor;
- (id)ams_frontmostController;
- (id)ams_navigationController;
- (id)ams_navigationItemViewController;
- (id)ams_parentViewControllerOfClass:()AppleMediaServices;
- (uint64_t)ams_hasDescendentChildViewController:()AppleMediaServices;
- (uint64_t)ams_navigationIndex;
- (uint64_t)ams_parentContainer;
- (void)ams_dismissViewControllerAnimated:()AppleMediaServices includePresented:completion:;
- (void)ams_removeFromParentViewController;
- (void)ams_setBackgroundColor:()AppleMediaServices;
- (void)ams_setChildViewController:()AppleMediaServices;
- (void)ams_transitionFromViewController:()AppleMediaServices toViewController:completionHandler:;
@end

@implementation UIViewController(AppleMediaServices)

- (id)ams_backgroundColor
{
  view = [self view];
  ams_backgroundColor = [view ams_backgroundColor];

  return ams_backgroundColor;
}

- (id)ams_frontmostController
{
  selfCopy = self;
  presentedViewController = [selfCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [selfCopy presentedViewController];

      v3PresentedViewController = [presentedViewController2 presentedViewController];

      selfCopy = presentedViewController2;
    }

    while (v3PresentedViewController);
  }

  else
  {
    presentedViewController2 = selfCopy;
  }

  return presentedViewController2;
}

- (id)ams_navigationController
{
  navigationController = [self navigationController];

  if (navigationController)
  {
    [self navigationController];
  }

  else
  {
    [self ams_parentViewControllerOfClass:objc_opt_class()];
  }
  v3 = ;

  return v3;
}

- (uint64_t)ams_navigationIndex
{
  ams_navigationItemViewController = [self ams_navigationItemViewController];
  v2 = ams_navigationItemViewController;
  if (ams_navigationItemViewController)
  {
    ams_navigationController = [ams_navigationItemViewController ams_navigationController];
    viewControllers = [ams_navigationController viewControllers];
    v5 = [viewControllers indexOfObject:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)ams_parentContainer
{
  v2 = objc_opt_class();

  return [self ams_parentViewControllerOfClass:v2];
}

- (id)ams_parentViewControllerOfClass:()AppleMediaServices
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parentViewController = [selfCopy parentViewController];

      selfCopy = parentViewController;
    }

    while (parentViewController);
  }

  return selfCopy;
}

- (id)ams_navigationItemViewController
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
  }

  else
  {
    if (selfCopy)
    {
      parentViewController = [selfCopy parentViewController];
      if (parentViewController)
      {
        while (1)
        {
          v4 = parentViewController;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          parentViewController = [v4 parentViewController];
          selfCopy = v4;
          if (!parentViewController)
          {
            goto LABEL_9;
          }
        }

        parentViewController = v4;
      }

LABEL_9:
    }

    selfCopy = selfCopy;
    v2 = selfCopy;
  }

  return v2;
}

- (void)ams_setBackgroundColor:()AppleMediaServices
{
  v4 = a3;
  view = [self view];
  [view ams_setBackgroundColor:v4];
}

- (void)ams_dismissViewControllerAnimated:()AppleMediaServices includePresented:completion:
{
  v8 = a5;
  selfCopy = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__UIViewController_AppleMediaServices__ams_dismissViewControllerAnimated_includePresented_completion___block_invoke;
  aBlock[3] = &unk_1E7F27240;
  v22 = a3;
  v10 = selfCopy;
  v20 = v10;
  v11 = v8;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v13 addObject:v10];
  if (a4)
  {
    presentedViewController = [v10 presentedViewController];
    if (presentedViewController)
    {
      v15 = presentedViewController;
      do
      {
        [v13 addObject:v15];
        presentedViewController2 = [v15 presentedViewController];

        v15 = presentedViewController2;
      }

      while (presentedViewController2);
    }
  }

  v17 = [v13 count] - 1;
  if (v17 >= 0)
  {
    do
    {
      v18 = [v13 objectAtIndexedSubscript:v17];
      v12[2](v12, v18);

      --v17;
    }

    while (v17 != -1);
  }
}

- (uint64_t)ams_hasDescendentChildViewController:()AppleMediaServices
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  childViewControllers = [self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v10 == v4 || ([v10 ams_hasDescendentChildViewController:v4] & 1) != 0)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v7 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
      v11 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)ams_removeFromParentViewController
{
  parentViewController = [self parentViewController];

  if (parentViewController)
  {
    [self ams_willMoveToParentViewController:0];
    view = [self view];
    [view removeFromSuperview];

    [self removeFromParentViewController];
  }
}

- (void)ams_setChildViewController:()AppleMediaServices
{
  v6 = a3;
  [v6 ams_removeFromParentViewController];
  [self addChildViewController:v6];
  view = [self view];
  view2 = [v6 view];
  [view addSubview:view2];

  [v6 ams_didMoveToParentViewController:self];
}

- (void)ams_transitionFromViewController:()AppleMediaServices toViewController:completionHandler:
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__UIViewController_AppleMediaServices__ams_transitionFromViewController_toViewController_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7F258D8;
  v11 = v8;
  v9 = v8;
  [self transitionFromViewController:a3 toViewController:a4 duration:5242880 options:&__block_literal_global_38 animations:v10 completion:0.3];
}

@end