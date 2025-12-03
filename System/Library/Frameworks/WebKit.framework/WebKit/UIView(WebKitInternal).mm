@interface UIView(WebKitInternal)
- (BOOL)_wk_isAncestorOf:()WebKitInternal;
- (uint64_t)_wk_collectDescendantsIncludingSelf:()WebKitInternal matching:;
- (uint64_t)_wk_convertQuad:()WebKitInternal toCoordinateSpace:;
- (void)_wk_parentScrollView;
- (void)_wk_previousSibling;
- (void)_wk_viewControllerForFullScreenPresentation;
@end

@implementation UIView(WebKitInternal)

- (void)_wk_parentScrollView
{
  superview = [self superview];
  if (!superview)
  {
    return 0;
  }

  v2 = superview;
  v3 = superview;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    superview2 = [v2 superview];
    v5 = superview2;
    if (!superview2)
    {
      goto LABEL_8;
    }

    v6 = superview2;

    v2 = v5;
  }

  v7 = v2;

  v5 = v2;
LABEL_8:

  return v5;
}

- (BOOL)_wk_isAncestorOf:()WebKitInternal
{
  superview = [a3 superview];
  if (!superview)
  {
    return 0;
  }

  v5 = superview;
  v6 = superview;
  if (v5 == self)
  {
    v9 = 1;
  }

  else
  {
    v7 = v5;
    while (1)
    {
      superview2 = [v7 superview];
      v5 = superview2;
      v9 = superview2 != 0;
      if (!superview2)
      {
        break;
      }

      v10 = superview2;

      v7 = v5;
      if (v5 == self)
      {
        goto LABEL_10;
      }
    }

    v5 = v7;
  }

LABEL_10:

  return v9;
}

- (uint64_t)_wk_collectDescendantsIncludingSelf:()WebKitInternal matching:
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(a4 + 16))(a4, self))
  {
    v7 = *(a3 + 12);
    if (v7 == *(a3 + 8))
    {
      if (v7 + (v7 >> 1) <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v7 + (v7 >> 1);
      }

      if (v8 <= 0x10)
      {
        v9 = 16;
      }

      else
      {
        v9 = v8;
      }

      WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a3, v9);
      v7 = *(a3 + 12);
      *(*a3 + 8 * v7) = self;
      if (!self)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(*a3 + 8 * v7) = self;
      if (!self)
      {
LABEL_13:
        *(a3 + 12) = v7 + 1;
        goto LABEL_14;
      }
    }

    selfCopy = self;
    LODWORD(v7) = *(a3 + 12);
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  subviews = [self subviews];
  result = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (result)
  {
    v13 = result;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v16 + 1) + 8 * v15++) _wk_collectDescendantsIncludingSelf:a3 matching:a4];
      }

      while (v13 != v15);
      result = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
      v13 = result;
    }

    while (result);
  }

  return result;
}

- (void)_wk_viewControllerForFullScreenPresentation
{
  presentedViewController = [objc_msgSend(self "window")];
  do
  {
    v3 = presentedViewController;
    presentedViewController = [presentedViewController presentedViewController];
  }

  while (presentedViewController);
  v4 = [objc_msgSend(v3 "viewIfLoaded")];
  if (v4 == [self window])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_wk_convertQuad:()WebKitInternal toCoordinateSpace:
{
  WebCore::FloatPoint::operator CGPoint();
  [self convertPoint:a2 toCoordinateSpace:?];
  v21.x = v6;
  v21.y = v7;
  WebCore::FloatPoint::FloatPoint(&v22, &v21);
  WebCore::FloatPoint::operator CGPoint();
  [self convertPoint:a2 toCoordinateSpace:?];
  v19.x = v8;
  v19.y = v9;
  WebCore::FloatPoint::FloatPoint(&v20, &v19);
  WebCore::FloatPoint::operator CGPoint();
  [self convertPoint:a2 toCoordinateSpace:?];
  v17.x = v10;
  v17.y = v11;
  WebCore::FloatPoint::FloatPoint(&v18, &v17);
  WebCore::FloatPoint::operator CGPoint();
  [self convertPoint:a2 toCoordinateSpace:?];
  v16.x = v12;
  v16.y = v13;
  result = WebCore::FloatPoint::FloatPoint((a3 + 3), &v16);
  v15 = v20;
  *a3 = v22;
  a3[1] = v15;
  a3[2] = v18;
  return result;
}

- (void)_wk_previousSibling
{
  v17 = *MEMORY[0x1E69E9840];
  superview = [self superview];
  if (!superview)
  {
    return 0;
  }

  v3 = superview;
  v4 = superview;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subviews = [v3 subviews];
  v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v13;
LABEL_4:
    v9 = 0;
    v10 = v7;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(subviews);
      }

      v7 = *(*(&v12 + 1) + 8 * v9);
      if (v7 == self)
      {
        break;
      }

      ++v9;
      v10 = v7;
      if (v6 == v9)
      {
        v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
        v10 = v7;
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end