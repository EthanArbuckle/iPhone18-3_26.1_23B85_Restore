@interface UINavigationController(MFUtilities)
- (id)mf_viewControllerOfClass:()MFUtilities startFromTopOfStack:;
@end

@implementation UINavigationController(MFUtilities)

- (id)mf_viewControllerOfClass:()MFUtilities startFromTopOfStack:
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  viewControllers = [self viewControllers];
  v7 = viewControllers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__UINavigationController_MFUtilities__mf_viewControllerOfClass_startFromTopOfStack___block_invoke;
  v11[3] = &unk_1E8070A80;
  if (a4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v11[4] = &v12;
  v11[5] = a3;
  [viewControllers enumerateObjectsWithOptions:v8 usingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

@end