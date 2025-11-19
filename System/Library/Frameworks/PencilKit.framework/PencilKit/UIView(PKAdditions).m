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
  v1 = [a1 superview];
  if (v1)
  {
    v2 = v1;
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

      v1 = [v2 superview];
      v2 = v1;
      if (!v1)
      {
        goto LABEL_8;
      }
    }

    v1 = v2;
  }

LABEL_8:

  return v1;
}

- (double)PK_convertRect:()PKAdditions toView:
{
  v12 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = a1;
  }

  else
  {
    v13 = [a1 window];
  }

  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v12;
  }

  else
  {
    v15 = [v12 window];
  }

  v16 = v15;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  if (v14 != v16)
  {
    [a1 convertRect:v14 toView:{a2, a3, a4, a5}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = MEMORY[0x1E69DD0A8];
      v31 = [v14 windowScene];
      v32 = [v30 activeTextEffectsWindowForWindowScene:v31];

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
      v47 = [v16 windowScene];
      v48 = [v46 activeTextEffectsWindowForWindowScene:v47];

      if (v48)
      {
        [v48 convertRect:v16 toWindow:{v23, v25, v27, v29}];
        v39 = v49;
        v41 = v50;
        v43 = v51;
        v45 = v52;
      }
    }

    v17 = v16;
    v18 = v39;
    v19 = v41;
    v20 = v43;
    v21 = v45;
  }

  [v17 convertRect:v12 toView:{v18, v19, v20, v21}];
  v54 = v53;

  return v54;
}

- (double)PK_convertRect:()PKAdditions toCoordinateSpace:
{
  v12 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 PK_convertRect:v12 toView:{a2, a3, a4, a5}];
  }

  else
  {
    [v12 convertRect:a1 fromCoordinateSpace:{a2, a3, a4, a5}];
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
    [a1 PK_convertRect:v12 fromView:{a2, a3, a4, a5}];
  }

  else
  {
    [v12 convertRect:a1 toCoordinateSpace:{a2, a3, a4, a5}];
  }

  v14 = v13;

  return v14;
}

- (id)pk_autoFadeOutShapeRectLayer
{
  v1 = [a1 pk_autoFadeOutShapePointLayer];
  [v1 setBorderColor:{objc_msgSend(v1, "backgroundColor")}];
  [v1 setBorderWidth:2.0];
  v2 = [MEMORY[0x1E69DC888] clearColor];
  [v1 setBackgroundColor:{objc_msgSend(v2, "CGColor")}];

  return v1;
}

- (id)pk_autoFadeOutShapePointLayer
{
  v2 = objc_alloc_init(MEMORY[0x1E6979398]);
  v3 = [MEMORY[0x1E69DC888] pk_randomColor];
  v4 = [v3 colorWithAlphaComponent:0.8];
  [v2 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  [v2 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 10.0, 10.0}];
  v5 = [a1 layer];
  [v5 addSublayer:v2];

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
  v5 = a1;
  v6 = v4;
  v7 = [v5 superview];
  v8 = v7;
  if (v6 && v7)
  {
    while (([v6 isDescendantOfView:v8] & 1) == 0)
    {
      v9 = v8;

      v8 = [v9 superview];

      v5 = v9;
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = v5;
LABEL_7:
  v10 = [v6 superview];
  if (!v10 || v10 == v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = v6;
    do
    {
      v12 = v11;
      v11 = v10;

      v10 = [v11 superview];
    }

    while (v10 && v10 != v8);
  }

  v13 = [v8 subviews];
  v14 = [v13 indexOfObject:v9];
  v15 = [v8 subviews];
  v16 = v14 < [v15 indexOfObject:v11];

  return v16;
}

@end