@interface UIView
+ (UIEdgeInsets)mt_layoutMarginsForWidth:(double)a3;
+ (double)mt_horizontalMarginsForWidth:(double)a3;
- (BOOL)mt_areMarginsGenerous;
- (UIEdgeInsets)mt_layoutMargins;
- (UIEdgeInsets)mt_layoutMarginsForWidth:(double)a3;
- (id)mt_recursivelyFindFirstViewMeetingCriteria:(id)a3;
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

@end