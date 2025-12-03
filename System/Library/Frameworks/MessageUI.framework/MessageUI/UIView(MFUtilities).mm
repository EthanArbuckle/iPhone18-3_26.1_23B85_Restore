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

      superview = [selfCopy superview];

      selfCopy = superview;
    }

    while (superview);
  }

  return selfCopy;
}

- (id)mf_frontSibling
{
  superview = [self superview];
  subviews = [superview subviews];
  objectEnumerator = [subviews objectEnumerator];

  v5 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v5 = nextObject;
    if (nextObject == self)
    {
      nextObject2 = [objectEnumerator nextObject];
      goto LABEL_6;
    }
  }

  nextObject2 = 0;
LABEL_6:

  return nextObject2;
}

- (double)mf_currentScreenScale
{
  window = [self window];
  screen = [window screen];

  if (!screen)
  {
    screen = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  [screen scale];
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

  return [self mf_pinToView:a3 layoutMarginEdges:v4 flexibleEdges:0];
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
  aBlock[4] = self;
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
      topAnchor = [self topAnchor];
      goto LABEL_19;
    }

    layoutMarginsGuide = [self layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
LABEL_16:
    v4 = topAnchor2;

    goto LABEL_20;
  }

  if ((a3 & 4) != 0)
  {
    if (!a4)
    {
      topAnchor = [self bottomAnchor];
      goto LABEL_19;
    }

    layoutMarginsGuide = [self layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide bottomAnchor];
    goto LABEL_16;
  }

  if ((a3 & 2) != 0)
  {
    if (!a4)
    {
      topAnchor = [self leadingAnchor];
      goto LABEL_19;
    }

    layoutMarginsGuide = [self layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide leadingAnchor];
    goto LABEL_16;
  }

  if ((a3 & 8) == 0)
  {
    v4 = 0;
    goto LABEL_20;
  }

  if (a4)
  {
    layoutMarginsGuide = [self layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide trailingAnchor];
    goto LABEL_16;
  }

  topAnchor = [self trailingAnchor];
LABEL_19:
  v4 = topAnchor;
LABEL_20:

  return v4;
}

@end