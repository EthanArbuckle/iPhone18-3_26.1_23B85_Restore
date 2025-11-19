@interface UIView
+ (UIEdgeInsets)mt_layoutMarginsForWidth:(double)a3;
+ (double)mt_horizontalMarginsForWidth:(double)a3;
- (BOOL)mt_areMarginsGenerous;
- (BOOL)mt_enableAutomaticRTLMirroringForSubviews;
- (BOOL)mt_isExcludedFromAutomaticRTLMirroring;
- (UIEdgeInsets)mt_layoutMargins;
- (UIEdgeInsets)mt_layoutMarginsForWidth:(double)a3;
- (id)mt_recursivelyFindFirstViewMeetingCriteria:(id)a3;
- (void)mt_RTLMirrorIfNeeded;
- (void)mt_setEnableAutomaticRTLMirroringForSubviews:(BOOL)a3;
- (void)mt_setExcludedFromAutomaticRTLMirroring:(BOOL)a3;
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

- (UIEdgeInsets)mt_layoutMarginsForWidth:(double)a3
{
  [(UIView *)self layoutMargins];
  v5 = v4;
  v7 = v6;
  [objc_opt_class() mt_horizontalMarginsForWidth:a3];
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

+ (double)mt_horizontalMarginsForWidth:(double)a3
{
  v3 = [a1 mt_areMarginsGenerousForWidth:a3];
  result = 16.0;
  if (v3)
  {
    return 20.0;
  }

  return result;
}

+ (UIEdgeInsets)mt_layoutMarginsForWidth:(double)a3
{
  v3 = [a1 mt_areMarginsGenerousForWidth:a3];
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

- (id)mt_recursivelyFindFirstViewMeetingCriteria:(id)a3
{
  v4 = a3;
  if (v4[2](v4, self))
  {
    v5 = self;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(UIView *)self subviews];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) mt_recursivelyFindFirstViewMeetingCriteria:v4];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (void)mt_setShouldRTLMirror
{
  if ([(UIView *)self mt_isRTL])
  {
    v4 = [(UIView *)self mt_shouldRTLMirrorStackDepth];
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integerValue] + 1);
    [(UIView *)self mt_setShouldRTLMirrorStackDepth:v3];
  }
}

- (void)mt_RTLMirrorIfNeeded
{
  if ([(UIView *)self mt_isRTL])
  {
    v3 = [(UIView *)self mt_shouldRTLMirrorStackDepth];
    v4 = [v3 integerValue];

    v5 = v4 <= 1 ? 0 : v4 - 1;
    v6 = [NSNumber numberWithInteger:v5];
    [(UIView *)self mt_setShouldRTLMirrorStackDepth:v6];

    if (v4 <= 1)
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
      v11 = [(UIView *)self subviews];
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(v11);
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

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v22 = [(UIView *)self contentView];
        [v22 mt_RTLMirrorIfNeeded];
      }
    }
  }
}

- (void)mt_setExcludedFromAutomaticRTLMirroring:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_100583D80, v4, 1);
}

- (BOOL)mt_isExcludedFromAutomaticRTLMirroring
{
  v2 = objc_getAssociatedObject(self, &unk_100583D80);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)mt_setEnableAutomaticRTLMirroringForSubviews:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_100583D81, v4, 1);
}

- (BOOL)mt_enableAutomaticRTLMirroringForSubviews
{
  v2 = objc_getAssociatedObject(self, &unk_100583D81);
  v3 = [v2 BOOLValue];

  return v3;
}

@end