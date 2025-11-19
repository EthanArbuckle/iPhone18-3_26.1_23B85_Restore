@interface UIView
+ (void)animateWithDuration:(double)a3 delay:(double)a4 timingFunction:(id)a5 options:(unint64_t)a6 animations:(id)a7 completion:(id)a8;
- (BOOL)bk_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)bkaxAccessibilityShowContextMenuAtPoint:(CGPoint)a3;
- (CGRect)untransformedFrame;
- (void)addAnimatablePropertyWithKey:(id)a3;
- (void)setUntransformedFrame:(CGRect)a3;
@end

@implementation UIView

- (BOOL)bkaxAccessibilityShowContextMenuAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  do
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v6 interactions];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              if (objc_opt_respondsToSelector())
              {
                [v14 _presentMenuAtLocation:{x, y}];

                v7 = 1;
                goto LABEL_16;
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v15 = [v6 superview];

    v6 = v15;
  }

  while (v15);
  return v7;
}

- (void)addAnimatablePropertyWithKey:(id)a3
{
  v6 = a3;
  if (v6)
  {
    if (qword_100AF76D8 != -1)
    {
      sub_1007906CC();
    }

    v4 = objc_getAssociatedObject(self, &off_100A07F48);
    if (([v4 containsObject:v6] & 1) == 0)
    {
      if (v4)
      {
        v5 = [v4 setByAddingObject:v6];

        v4 = v5;
      }

      else
      {
        v4 = [NSSet setWithObject:v6];
      }

      objc_setAssociatedObject(self, &off_100A07F48, v4, 0x301);
    }
  }
}

- (BOOL)bk_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, &off_100A07F48);
  if ([(UIView *)self bk_shouldAnimatePropertyWithKey:v4])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 containsObject:v4];
  }

  return v6;
}

+ (void)animateWithDuration:(double)a3 delay:(double)a4 timingFunction:(id)a5 options:(unint64_t)a6 animations:(id)a7 completion:(id)a8
{
  v15 = a7;
  v13 = a8;
  if (a5)
  {
    v14 = a5;
    a5 = objc_alloc_init(BKCustomAnimationCurveFactory);
    [a5 setTimingFunction:v14];

    a6 |= 0x60000uLL;
  }

  [UIView _animateWithDuration:a6 delay:a5 options:v15 factory:v13 animations:a3 completion:a4];
}

- (CGRect)untransformedFrame
{
  v2 = self;
  v3 = sub_10047A8AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)setUntransformedFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_10047AA74(x, y, width, height);
}

@end