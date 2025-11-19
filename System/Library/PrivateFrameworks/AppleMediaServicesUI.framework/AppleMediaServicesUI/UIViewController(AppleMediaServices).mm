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
  v1 = [a1 view];
  v2 = [v1 ams_backgroundColor];

  return v2;
}

- (id)ams_frontmostController
{
  v1 = a1;
  v2 = [v1 presentedViewController];

  if (v2)
  {
    do
    {
      v3 = [v1 presentedViewController];

      v4 = [v3 presentedViewController];

      v1 = v3;
    }

    while (v4);
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

- (id)ams_navigationController
{
  v2 = [a1 navigationController];

  if (v2)
  {
    [a1 navigationController];
  }

  else
  {
    [a1 ams_parentViewControllerOfClass:objc_opt_class()];
  }
  v3 = ;

  return v3;
}

- (uint64_t)ams_navigationIndex
{
  v1 = [a1 ams_navigationItemViewController];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 ams_navigationController];
    v4 = [v3 viewControllers];
    v5 = [v4 indexOfObject:v2];
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

  return [a1 ams_parentViewControllerOfClass:v2];
}

- (id)ams_parentViewControllerOfClass:()AppleMediaServices
{
  v1 = a1;
  if (v1)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2 = [v1 parentViewController];

      v1 = v2;
    }

    while (v2);
  }

  return v1;
}

- (id)ams_navigationItemViewController
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
  }

  else
  {
    if (v1)
    {
      v3 = [v1 parentViewController];
      if (v3)
      {
        while (1)
        {
          v4 = v3;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          v3 = [v4 parentViewController];
          v1 = v4;
          if (!v3)
          {
            goto LABEL_9;
          }
        }

        v3 = v4;
      }

LABEL_9:
    }

    v1 = v1;
    v2 = v1;
  }

  return v2;
}

- (void)ams_setBackgroundColor:()AppleMediaServices
{
  v4 = a3;
  v5 = [a1 view];
  [v5 ams_setBackgroundColor:v4];
}

- (void)ams_dismissViewControllerAnimated:()AppleMediaServices includePresented:completion:
{
  v8 = a5;
  v9 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__UIViewController_AppleMediaServices__ams_dismissViewControllerAnimated_includePresented_completion___block_invoke;
  aBlock[3] = &unk_1E7F27240;
  v22 = a3;
  v10 = v9;
  v20 = v10;
  v11 = v8;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v13 addObject:v10];
  if (a4)
  {
    v14 = [v10 presentedViewController];
    if (v14)
    {
      v15 = v14;
      do
      {
        [v13 addObject:v15];
        v16 = [v15 presentedViewController];

        v15 = v16;
      }

      while (v16);
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
  v5 = [a1 childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v10 == v4 || ([v10 ams_hasDescendentChildViewController:v4] & 1) != 0)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v2 = [a1 parentViewController];

  if (v2)
  {
    [a1 ams_willMoveToParentViewController:0];
    v3 = [a1 view];
    [v3 removeFromSuperview];

    [a1 removeFromParentViewController];
  }
}

- (void)ams_setChildViewController:()AppleMediaServices
{
  v6 = a3;
  [v6 ams_removeFromParentViewController];
  [a1 addChildViewController:v6];
  v4 = [a1 view];
  v5 = [v6 view];
  [v4 addSubview:v5];

  [v6 ams_didMoveToParentViewController:a1];
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
  [a1 transitionFromViewController:a3 toViewController:a4 duration:5242880 options:&__block_literal_global_38 animations:v10 completion:0.3];
}

@end