@interface UIViewController(EKUINavigationBarStyles)
- (uint64_t)ekui_adjustNavAndToolBarToTranslucentGrayStyles;
- (uint64_t)ekui_adjustNavAndToolBarToTransparentStyles;
- (void)ekui_adjustNavBarToTranslucentGrayStyle;
- (void)ekui_adjustNavBarToTranslucentGrayStyleWithSeparator;
- (void)ekui_adjustNavBarToTransparentStyle;
- (void)ekui_adjustToolBarToTranslucentGrayStyle;
- (void)ekui_adjustToolBarToTransparentStyle;
@end

@implementation UIViewController(EKUINavigationBarStyles)

- (uint64_t)ekui_adjustNavAndToolBarToTranslucentGrayStyles
{
  [self ekui_adjustNavBarToTranslucentGrayStyle];

  return [self ekui_adjustToolBarToTranslucentGrayStyle];
}

- (void)ekui_adjustNavBarToTranslucentGrayStyle
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setShadowColor:clearColor];

  navigationItem = [self navigationItem];
  [navigationItem setScrollEdgeAppearance:v4];
}

- (void)ekui_adjustToolBarToTranslucentGrayStyle
{
  navigationController = [self navigationController];
  toolbar = [navigationController toolbar];

  standardAppearance = [toolbar standardAppearance];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [standardAppearance setShadowColor:separatorColor];

  [toolbar setScrollEdgeAppearance:standardAppearance];
}

- (void)ekui_adjustNavBarToTranslucentGrayStyleWithSeparator
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [v4 setShadowColor:separatorColor];

  navigationItem = [self navigationItem];
  [navigationItem setScrollEdgeAppearance:v4];
}

- (uint64_t)ekui_adjustNavAndToolBarToTransparentStyles
{
  [self ekui_adjustNavBarToTransparentStyle];

  return [self ekui_adjustToolBarToTransparentStyle];
}

- (void)ekui_adjustNavBarToTransparentStyle
{
  v8 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v8 configureWithOpaqueBackground];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v8 setBackgroundColor:systemBackgroundColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v8 setShadowColor:clearColor];

  navigationItem = [self navigationItem];
  [navigationItem setScrollEdgeAppearance:v8];

  v5 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [v5 setShadowColor:separatorColor];

  navigationItem2 = [self navigationItem];
  [navigationItem2 setStandardAppearance:v5];
}

- (void)ekui_adjustToolBarToTransparentStyle
{
  navigationController = [self navigationController];
  toolbar = [navigationController toolbar];

  scrollEdgeAppearance = [toolbar scrollEdgeAppearance];
  [scrollEdgeAppearance configureWithOpaqueBackground];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [scrollEdgeAppearance setBackgroundColor:systemBackgroundColor];

  [scrollEdgeAppearance setShadowColor:0];
  [toolbar setScrollEdgeAppearance:scrollEdgeAppearance];
}

@end