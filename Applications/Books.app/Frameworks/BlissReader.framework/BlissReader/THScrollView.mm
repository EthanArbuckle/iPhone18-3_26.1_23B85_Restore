@interface THScrollView
- (BOOL)isAncestorScrollViewDragging;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)parentScrollView;
- (void)dealloc;
- (void)setContentOffset:(CGPoint)a3;
@end

@implementation THScrollView

- (BOOL)isAncestorScrollViewDragging
{
  objc_opt_class();
  [(THScrollView *)self delegate];
  v3 = TSUDynamicCast();
  if (v3 && ([objc_msgSend(objc_msgSend(v3 "layerHost")] & 1) != 0)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = THScrollView;
  return [(THScrollView *)&v5 isAncestorScrollViewDragging];
}

- (void)dealloc
{
  [(THScrollView *)self setDeadTouchRectsForPan:0];
  v3.receiver = self;
  v3.super_class = THScrollView;
  [(THScrollView *)&v3 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v44.receiver = self;
  v44.super_class = THScrollView;
  v7 = [(THScrollView *)&v44 hitTest:a4 withEvent:?];
  if ([(THScrollView *)self preventChildInducedBounce])
  {
    v8 = v7;
    while (1)
    {
      while (1)
      {
        v9 = [v8 superview];
        if (!v9)
        {
          return v7;
        }

        v8 = v9;
        objc_opt_class();
        v10 = TSUDynamicCast();
        [(THScrollView *)self frame];
        v12 = v11;
        [(THScrollView *)self frame];
        v14 = v13;
        [(THScrollView *)v10 frame];
        v16 = v15;
        [(THScrollView *)v10 frame];
        if (v10 == self)
        {
          break;
        }

        v18 = v17 >= v14 * 0.9 && v16 >= v12 * 0.9;
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v18 = 0;
      if (v10)
      {
LABEL_11:
        if (!v18)
        {
          if ([(THScrollView *)self suspendScrolling])
          {
            goto LABEL_13;
          }

          if (v10 == self || ![(THScrollView *)v10 isScrollEnabled])
          {
LABEL_22:
            v19 = self;
            v20 = 1;
          }

          else
          {
            objc_opt_class();
            v22 = TSUDynamicCast();
            if (v22)
            {
              v23 = v22;
              if ([v22 handleNaturally])
              {
                goto LABEL_22;
              }

              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v25 = [v23 deadTouchRectsForPan];
              v26 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v41;
                while (2)
                {
                  for (i = 0; i != v27; i = i + 1)
                  {
                    if (*v41 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    [*(*(&v40 + 1) + 8 * i) CGRectValue];
                    v31 = v30;
                    v33 = v32;
                    v35 = v34;
                    v37 = v36;
                    [(THScrollView *)self convertPoint:0 toView:x, y];
                    v46.x = v38;
                    v46.y = v39;
                    v47.origin.x = v31;
                    v47.origin.y = v33;
                    v47.size.width = v35;
                    v47.size.height = v37;
                    if (CGRectContainsPoint(v47, v46))
                    {
                      [(THScrollView *)self setScrollEnabled:1];
                      return self;
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
                  if (v27)
                  {
                    continue;
                  }

                  break;
                }
              }

              if ([(THScrollView *)v10 isSettledOnFirstOrLastPage])
              {
                v20 = [v23 disableParentScrollOnFirstOrLastPage] ^ 1;
              }

              else
              {
                v20 = 0;
              }

              v19 = self;
            }

            else
            {
LABEL_13:
              v19 = self;
              v20 = 0;
            }
          }

          [(THScrollView *)v19 setScrollEnabled:v20];
          return v7;
        }
      }
    }
  }

  if (!-[THScrollView handleNaturally](self, "handleNaturally") && [-[THScrollView parentScrollView](self "parentScrollView")])
  {
    v21 = [(THScrollView *)self pageCount]> 2 || [(THScrollView *)self disableParentScrollOnFirstOrLastPage];
    [(THScrollView *)self setBounces:v21];
  }

  return v7;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->mPreventBounceAnimation && [(THScrollView *)self isPagingEnabled]&& [(THScrollView *)self isDecelerating]&& ([(THScrollView *)self isTracking]& 1) == 0)
  {
    [(THScrollView *)self contentOffset];
    v7 = v6;
    [(THScrollView *)self spi_pageDecelerationTarget];
    v9 = v8;
    [(THScrollView *)self bounds];
    v11 = v10;
    [(THScrollView *)self contentSize];
    v13 = v11 * round(v9 / v11);
    if (v11 + v13 <= v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12 - v11;
    }

    if (x < v14)
    {
      v15 = v14;
      v16 = v7;
      v17 = fminf(v15, v16);
      v18 = x;
      v19 = fmaxf(v17, v18);
LABEL_12:
      x = v19;
      goto LABEL_13;
    }

    if (x > v14)
    {
      v20 = v14;
      v21 = v7;
      v22 = fmaxf(v20, v21);
      v23 = x;
      v19 = fminf(v22, v23);
      goto LABEL_12;
    }
  }

LABEL_13:
  v24.receiver = self;
  v24.super_class = THScrollView;
  [(THScrollView *)&v24 setContentOffset:x, y];
}

- (id)parentScrollView
{
  v2 = [(THScrollView *)self superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  do
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    v5 = [v3 superview];
    if (!v5)
    {
      break;
    }

    v3 = v5;
  }

  while (!v4);
  return v4;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(THScrollView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  objc_opt_class();
  [(THScrollView *)self delegate];
  v16 = TSUDynamicCast();
  if (v16)
  {
    v17 = v16;
    [v16 delegate];
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(v17 "delegate")];
      v9 = v18;
      v11 = v19;
      v13 = v20;
      v15 = v21;
    }
  }

  v36.origin.x = v9;
  v36.origin.y = v11;
  v36.size.width = v13;
  v36.size.height = v15;
  v35.x = x;
  v35.y = y;
  if (CGRectContainsPoint(v36, v35))
  {
    LOBYTE(v22) = 1;
  }

  else if ((-[THScrollView clipsToBounds](self, "clipsToBounds") & 1) != 0 || (v32 = 0u, v33 = 0u, v30 = 0u, v31 = 0u, v23 = -[THScrollView subviews](self, "subviews", 0), (v24 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16]) == 0))
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v25 = v24;
    v22 = 0;
    v26 = *v31;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * i);
        [v28 convertPoint:self fromView:{x, y}];
        v22 |= [v28 pointInside:a4 withEvent:?];
      }

      v25 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v25);
  }

  return v22 & 1;
}

@end