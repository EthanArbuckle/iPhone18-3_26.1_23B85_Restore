@interface UIView
+ (UIEdgeInsets)mt_layoutMarginsForWidth:(double)width;
+ (double)mt_horizontalMarginsForWidth:(double)width;
- (BOOL)mt_areMarginsGenerous;
- (BOOL)mt_enableAutomaticRTLMirroringForSubviews;
- (BOOL)mt_isExcludedFromAutomaticRTLMirroring;
- (UIEdgeInsets)mt_layoutMargins;
- (UIEdgeInsets)mt_layoutMarginsForWidth:(double)width;
- (id)mt_recursivelyFindFirstViewMeetingCriteria:(id)criteria;
- (void)mt_RTLMirrorIfNeeded;
- (void)mt_setEnableAutomaticRTLMirroringForSubviews:(BOOL)subviews;
- (void)mt_setExcludedFromAutomaticRTLMirroring:(BOOL)mirroring;
- (void)mt_setShouldRTLMirror;
@end

@implementation UIView

- (UIEdgeInsets)mt_layoutMargins
{
  [(UIView *)self bounds];

  [(UIView *)self mt_layoutMarginsForWidth:v3];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)mt_layoutMarginsForWidth:(double)width
{
  [(UIView *)self layoutMargins];
  v5 = v4;
  v7 = v6;
  [objc_opt_class() mt_horizontalMarginsForWidth:width];
  v9 = v8;
  v10 = v5;
  v11 = v7;
  v12 = v9;
  result.right = v12;
  result.bottom = v11;
  result.left = v9;
  result.top = v10;
  return result;
}

- (BOOL)mt_areMarginsGenerous
{
  v3 = objc_opt_class();
  [(UIView *)self bounds];

  return [v3 mt_areMarginsGenerousForWidth:v4];
}

+ (double)mt_horizontalMarginsForWidth:(double)width
{
  v3 = [self mt_areMarginsGenerousForWidth:width];
  result = 16.0;
  if (v3)
  {
    return 20.0;
  }

  return result;
}

+ (UIEdgeInsets)mt_layoutMarginsForWidth:(double)width
{
  v3 = [self mt_areMarginsGenerousForWidth:width];
  v4 = 20.0;
  if (!v3)
  {
    v4 = 16.0;
  }

  v5 = 8.0;
  v6 = 8.0;
  v7 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (id)mt_recursivelyFindFirstViewMeetingCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if (criteriaCopy[2](criteriaCopy, self))
  {
    selfCopy = self;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [(UIView *)self subviews];
    v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) mt_recursivelyFindFirstViewMeetingCriteria:criteriaCopy];
          if (v11)
          {
            selfCopy = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (void)mt_setShouldRTLMirror
{
  if ([(UIView *)self mt_isRTL])
  {
    mt_shouldRTLMirrorStackDepth = [(UIView *)self mt_shouldRTLMirrorStackDepth];
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [mt_shouldRTLMirrorStackDepth integerValue] + 1);
    [(UIView *)self mt_setShouldRTLMirrorStackDepth:v3];
  }
}

- (void)mt_RTLMirrorIfNeeded
{
  if ([(UIView *)self mt_isRTL])
  {
    mt_shouldRTLMirrorStackDepth = [(UIView *)self mt_shouldRTLMirrorStackDepth];
    integerValue = [mt_shouldRTLMirrorStackDepth integerValue];

    v5 = integerValue <= 1 ? 0 : integerValue - 1;
    v6 = [NSNumber numberWithInteger:v5];
    [(UIView *)self mt_setShouldRTLMirrorStackDepth:v6];

    if (integerValue <= 1)
    {
      [(UIView *)self bounds];
      MaxX = CGRectGetMaxX(v28);
      v8 = +[UIScreen mainScreen];
      [v8 scale];
      v10 = v9;

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      subviews = [(UIView *)self subviews];
      v12 = [subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(subviews);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            if (([v16 mt_isExcludedFromAutomaticRTLMirroring] & 1) == 0)
            {
              [v16 frame];
              x = v29.origin.x;
              y = v29.origin.y;
              width = v29.size.width;
              height = v29.size.height;
              v21 = MaxX - CGRectGetMinX(v29);
              v30.origin.x = x;
              v30.origin.y = y;
              v30.size.width = width;
              v30.size.height = height;
              [v16 setFrame:{round(v10 * (v21 - CGRectGetWidth(v30))) / v10, y, width, height}];
            }

            if ([v16 mt_enableAutomaticRTLMirroringForSubviews])
            {
              [v16 mt_RTLMirrorIfNeeded];
            }
          }

          v13 = [subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        contentView = [(UIView *)self contentView];
        [contentView mt_RTLMirrorIfNeeded];
      }
    }
  }
}

- (void)mt_setExcludedFromAutomaticRTLMirroring:(BOOL)mirroring
{
  v4 = [NSNumber numberWithBool:mirroring];
  objc_setAssociatedObject(self, &unk_100583D80, v4, 1);
}

- (BOOL)mt_isExcludedFromAutomaticRTLMirroring
{
  v2 = objc_getAssociatedObject(self, &unk_100583D80);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)mt_setEnableAutomaticRTLMirroringForSubviews:(BOOL)subviews
{
  v4 = [NSNumber numberWithBool:subviews];
  objc_setAssociatedObject(self, &unk_100583D81, v4, 1);
}

- (BOOL)mt_enableAutomaticRTLMirroringForSubviews
{
  v2 = objc_getAssociatedObject(self, &unk_100583D81);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end