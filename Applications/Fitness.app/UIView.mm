@interface UIView
- (double)centerXForElementAt:(int64_t)at width:(double)width percent:(double)percent;
- (double)scaledValueForSmallWidth:(double)width bigWidth:(double)bigWidth;
- (double)valueForSmallWidth:(double)width mediumWidth:(double)mediumWidth largeWidth:(double)largeWidth;
- (void)ch_transformViewsForRightToLeftLanguages:(id)languages;
@end

@implementation UIView

- (double)scaledValueForSmallWidth:(double)width bigWidth:(double)bigWidth
{
  v4 = +[UIScreen mainScreen];
  [v4 bounds];

  UIRoundToViewScale();
  return result;
}

- (double)valueForSmallWidth:(double)width mediumWidth:(double)mediumWidth largeWidth:(double)largeWidth
{
  v8 = +[UIScreen mainScreen];
  [v8 bounds];
  v10 = v9;

  if (v10 <= 375.0)
  {
    result = mediumWidth;
  }

  else
  {
    result = largeWidth;
  }

  if (v10 <= 320.0)
  {
    return width;
  }

  return result;
}

- (double)centerXForElementAt:(int64_t)at width:(double)width percent:(double)percent
{
  [(UIView *)self bounds];
  if (percent > 0.01)
  {
    [(UIView *)self scaledValueForSmallWidth:3.5 + 78.0 bigWidth:19.0 + 88.0];
    [(UIView *)self scaledValueForSmallWidth:30.0 bigWidth:40.0];
  }

  UIRoundToViewScale();
  return result;
}

- (void)ch_transformViewsForRightToLeftLanguages:(id)languages
{
  languagesCopy = languages;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [languagesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(languagesCopy);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        [v8 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        superview = [v8 superview];
        [superview bounds];
        Width = CGRectGetWidth(v25);
        v26.origin.x = v10;
        v26.origin.y = v12;
        v26.size.width = v14;
        v26.size.height = v16;
        v19 = Width - CGRectGetWidth(v26) - v10;

        [v8 setFrame:{v19, v12, v14, v16}];
      }

      v5 = [languagesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }
}

@end