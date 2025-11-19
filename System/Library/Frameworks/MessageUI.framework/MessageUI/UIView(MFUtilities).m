@interface UIView(MFUtilities)
- (double)mf_currentScreenScale;
- (id)_mf_anchorForEdge:()MFUtilities relativeToMargin:;
- (id)mf_enclosingScrollView;
- (id)mf_frontSibling;
- (uint64_t)mf_pinToView:()MFUtilities usingLayoutMargins:;
- (void)mf_pinToView:()MFUtilities layoutMarginEdges:flexibleEdges:;
@end

@implementation UIView(MFUtilities)

- (id)mf_enclosingScrollView
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

      v2 = [v1 superview];

      v1 = v2;
    }

    while (v2);
  }

  return v1;
}

- (id)mf_frontSibling
{
  v2 = [a1 superview];
  v3 = [v2 subviews];
  v4 = [v3 objectEnumerator];

  v5 = 0;
  while (1)
  {
    v6 = [v4 nextObject];

    if (!v6)
    {
      break;
    }

    v5 = v6;
    if (v6 == a1)
    {
      v7 = [v4 nextObject];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (double)mf_currentScreenScale
{
  v1 = [a1 window];
  v2 = [v1 screen];

  if (!v2)
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  [v2 scale];
  v4 = v3;

  return v4;
}

- (uint64_t)mf_pinToView:()MFUtilities usingLayoutMargins:
{
  if (a4)
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return [a1 mf_pinToView:a3 layoutMarginEdges:v4 flexibleEdges:0];
}

- (void)mf_pinToView:()MFUtilities layoutMarginEdges:flexibleEdges:
{
  v21[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__UIView_MFUtilities__mf_pinToView_layoutMarginEdges_flexibleEdges___block_invoke;
  aBlock[3] = &unk_1E8070AD0;
  v19 = a5;
  aBlock[4] = a1;
  v9 = v8;
  v18 = v9;
  v20 = a4;
  v10 = _Block_copy(aBlock);
  v11 = MEMORY[0x1E696ACD8];
  v12 = v10[2](v10, 1);
  v21[0] = v12;
  v13 = v10[2](v10, 4);
  v21[1] = v13;
  v14 = v10[2](v10, 2);
  v21[2] = v14;
  v15 = v10[2](v10, 8);
  v21[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v11 activateConstraints:v16];
}

- (id)_mf_anchorForEdge:()MFUtilities relativeToMargin:
{
  if (a3)
  {
    if (!a4)
    {
      v7 = [a1 topAnchor];
      goto LABEL_19;
    }

    v5 = [a1 layoutMarginsGuide];
    v6 = [v5 topAnchor];
LABEL_16:
    v4 = v6;

    goto LABEL_20;
  }

  if ((a3 & 4) != 0)
  {
    if (!a4)
    {
      v7 = [a1 bottomAnchor];
      goto LABEL_19;
    }

    v5 = [a1 layoutMarginsGuide];
    v6 = [v5 bottomAnchor];
    goto LABEL_16;
  }

  if ((a3 & 2) != 0)
  {
    if (!a4)
    {
      v7 = [a1 leadingAnchor];
      goto LABEL_19;
    }

    v5 = [a1 layoutMarginsGuide];
    v6 = [v5 leadingAnchor];
    goto LABEL_16;
  }

  if ((a3 & 8) == 0)
  {
    v4 = 0;
    goto LABEL_20;
  }

  if (a4)
  {
    v5 = [a1 layoutMarginsGuide];
    v6 = [v5 trailingAnchor];
    goto LABEL_16;
  }

  v7 = [a1 trailingAnchor];
LABEL_19:
  v4 = v7;
LABEL_20:

  return v4;
}

@end