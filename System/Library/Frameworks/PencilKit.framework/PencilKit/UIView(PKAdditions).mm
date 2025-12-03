@interface UIView(PKAdditions)
- (BOOL)PK_isBelowViewInDepth:()PKAdditions;
- (double)PK_convertRect:()PKAdditions fromCoordinateSpace:;
- (double)PK_convertRect:()PKAdditions toCoordinateSpace:;
- (double)PK_convertRect:()PKAdditions toView:;
- (id)PK_enclosingScrollableScrollView;
- (id)pk_autoFadeOutShapePointLayer;
- (id)pk_autoFadeOutShapeRectLayer;
@end

@implementation UIView(PKAdditions)

- (id)PK_enclosingScrollableScrollView
{
  superview = [self superview];
  if (superview)
  {
    v2 = superview;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v2 isScrollEnabled])
        {
          break;
        }
      }

      superview = [v2 superview];
      v2 = superview;
      if (!superview)
      {
        goto LABEL_8;
      }
    }

    superview = v2;
  }

LABEL_8:

  return superview;
}

- (double)PK_convertRect:()PKAdditions toView:
{
  v12 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self window];
  }

  v14 = selfCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = v12;
  }

  else
  {
    window = [v12 window];
  }

  v16 = window;
  selfCopy2 = self;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  if (v14 != v16)
  {
    [self convertRect:v14 toView:{a2, a3, a4, a5}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = MEMORY[0x1E69DD0A8];
      windowScene = [v14 windowScene];
      v32 = [v30 activeTextEffectsWindowForWindowScene:windowScene];

      if (v32 && v32 != v14)
      {
        [v32 convertRect:v14 fromWindow:{v23, v25, v27, v29}];
        v23 = v33;
        v25 = v34;
        v27 = v35;
        v29 = v36;
        v37 = v32;

        v14 = v37;
      }
    }

    [v16 convertRect:v14 toCoordinateSpace:{v23, v25, v27, v29}];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = MEMORY[0x1E69DD0A8];
      windowScene2 = [v16 windowScene];
      v48 = [v46 activeTextEffectsWindowForWindowScene:windowScene2];

      if (v48)
      {
        [v48 convertRect:v16 toWindow:{v23, v25, v27, v29}];
        v39 = v49;
        v41 = v50;
        v43 = v51;
        v45 = v52;
      }
    }

    selfCopy2 = v16;
    v18 = v39;
    v19 = v41;
    v20 = v43;
    v21 = v45;
  }

  [selfCopy2 convertRect:v12 toView:{v18, v19, v20, v21}];
  v54 = v53;

  return v54;
}

- (double)PK_convertRect:()PKAdditions toCoordinateSpace:
{
  v12 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self PK_convertRect:v12 toView:{a2, a3, a4, a5}];
  }

  else
  {
    [v12 convertRect:self fromCoordinateSpace:{a2, a3, a4, a5}];
  }

  v14 = v13;

  return v14;
}

- (double)PK_convertRect:()PKAdditions fromCoordinateSpace:
{
  v12 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self PK_convertRect:v12 fromView:{a2, a3, a4, a5}];
  }

  else
  {
    [v12 convertRect:self toCoordinateSpace:{a2, a3, a4, a5}];
  }

  v14 = v13;

  return v14;
}

- (id)pk_autoFadeOutShapeRectLayer
{
  pk_autoFadeOutShapePointLayer = [self pk_autoFadeOutShapePointLayer];
  [pk_autoFadeOutShapePointLayer setBorderColor:{objc_msgSend(pk_autoFadeOutShapePointLayer, "backgroundColor")}];
  [pk_autoFadeOutShapePointLayer setBorderWidth:2.0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [pk_autoFadeOutShapePointLayer setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

  return pk_autoFadeOutShapePointLayer;
}

- (id)pk_autoFadeOutShapePointLayer
{
  v2 = objc_alloc_init(MEMORY[0x1E6979398]);
  pk_randomColor = [MEMORY[0x1E69DC888] pk_randomColor];
  v4 = [pk_randomColor colorWithAlphaComponent:0.8];
  [v2 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  [v2 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 10.0, 10.0}];
  layer = [self layer];
  [layer addSublayer:v2];

  v6 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIView_PKAdditions__pk_autoFadeOutShapePointLayer__block_invoke;
  block[3] = &unk_1E82D7148;
  v7 = v2;
  v10 = v7;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);

  return v7;
}

- (BOOL)PK_isBelowViewInDepth:()PKAdditions
{
  v4 = a3;
  selfCopy = self;
  v6 = v4;
  superview = [selfCopy superview];
  superview2 = superview;
  if (v6 && superview)
  {
    while (([v6 isDescendantOfView:superview2] & 1) == 0)
    {
      v9 = superview2;

      superview2 = [v9 superview];

      selfCopy = v9;
      if (!superview2)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = selfCopy;
LABEL_7:
  superview3 = [v6 superview];
  if (!superview3 || superview3 == superview2)
  {
    v11 = v6;
  }

  else
  {
    v11 = v6;
    do
    {
      v12 = v11;
      v11 = superview3;

      superview3 = [v11 superview];
    }

    while (superview3 && superview3 != superview2);
  }

  subviews = [superview2 subviews];
  v14 = [subviews indexOfObject:v9];
  subviews2 = [superview2 subviews];
  v16 = v14 < [subviews2 indexOfObject:v11];

  return v16;
}

@end