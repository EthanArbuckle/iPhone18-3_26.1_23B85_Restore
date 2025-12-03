@interface UIView
+ (UIEdgeInsets)mt_layoutMarginsForWidth:(double)width;
+ (double)mt_horizontalMarginsForWidth:(double)width;
- (BOOL)mt_areMarginsGenerous;
- (UIEdgeInsets)mt_layoutMargins;
- (UIEdgeInsets)mt_layoutMarginsForWidth:(double)width;
- (id)mt_recursivelyFindFirstViewMeetingCriteria:(id)criteria;
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

@end