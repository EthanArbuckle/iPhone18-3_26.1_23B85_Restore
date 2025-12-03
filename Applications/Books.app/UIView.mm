@interface UIView
+ (void)animateWithDuration:(double)duration delay:(double)delay timingFunction:(id)function options:(unint64_t)options animations:(id)animations completion:(id)completion;
- (BOOL)bk_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)bkaxAccessibilityShowContextMenuAtPoint:(CGPoint)point;
- (CGRect)untransformedFrame;
- (void)addAnimatablePropertyWithKey:(id)key;
- (void)setUntransformedFrame:(CGRect)frame;
@end

@implementation UIView

- (BOOL)bkaxAccessibilityShowContextMenuAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  v6 = selfCopy;
  v7 = 0;
  do
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    interactions = [v6 interactions];
    v9 = [interactions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(interactions);
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

        v10 = [interactions countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    superview = [v6 superview];

    v6 = superview;
  }

  while (superview);
  return v7;
}

- (void)addAnimatablePropertyWithKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    if (qword_100AF76D8 != -1)
    {
      sub_1007906CC();
    }

    v4 = objc_getAssociatedObject(self, &off_100A07F48);
    if (([v4 containsObject:keyCopy] & 1) == 0)
    {
      if (v4)
      {
        v5 = [v4 setByAddingObject:keyCopy];

        v4 = v5;
      }

      else
      {
        v4 = [NSSet setWithObject:keyCopy];
      }

      objc_setAssociatedObject(self, &off_100A07F48, v4, 0x301);
    }
  }
}

- (BOOL)bk_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v5 = objc_getAssociatedObject(self, &off_100A07F48);
  if ([(UIView *)self bk_shouldAnimatePropertyWithKey:keyCopy])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 containsObject:keyCopy];
  }

  return v6;
}

+ (void)animateWithDuration:(double)duration delay:(double)delay timingFunction:(id)function options:(unint64_t)options animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  if (function)
  {
    functionCopy = function;
    function = objc_alloc_init(BKCustomAnimationCurveFactory);
    [function setTimingFunction:functionCopy];

    options |= 0x60000uLL;
  }

  [UIView _animateWithDuration:options delay:function options:animationsCopy factory:completionCopy animations:duration completion:delay];
}

- (CGRect)untransformedFrame
{
  selfCopy = self;
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

- (void)setUntransformedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_10047AA74(x, y, width, height);
}

@end