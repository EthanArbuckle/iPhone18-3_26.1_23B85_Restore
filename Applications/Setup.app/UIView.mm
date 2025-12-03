@interface UIView
- (double)buddy_heightForContainerWidth:(double)width ratio:(double)ratio;
- (id)buddy_scaleHeightTo:(double)to ratio:(double)ratio;
- (id)buddy_scaleWidthTo:(double)to ratio:(double)ratio;
- (void)buddy_setSemanticContentAttributeRecursively:(int64_t)recursively;
@end

@implementation UIView

- (void)buddy_setSemanticContentAttributeRecursively:(int64_t)recursively
{
  selfCopy = self;
  v10 = a2;
  recursivelyCopy = recursively;
  memset(__b, 0, sizeof(__b));
  subviews = [(UIView *)selfCopy subviews];
  v4 = [(NSArray *)subviews countByEnumeratingWithState:__b objects:v12 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(__b[1] + 8 * i);
        [v8 buddy_setSemanticContentAttributeRecursively:recursivelyCopy];
      }

      v4 = [(NSArray *)subviews countByEnumeratingWithState:__b objects:v12 count:16];
    }

    while (v4);
  }

  [(UIView *)selfCopy setSemanticContentAttribute:recursivelyCopy];
}

- (id)buddy_scaleHeightTo:(double)to ratio:(double)ratio
{
  [(UIView *)self bounds];
  [(UIView *)self bounds];
  v14 = v4;
  v13 = v5;
  v16 = v6;
  v15 = v7;
  sub_100155B24();
  [(UIView *)self setBounds:v8, v9, v10, v11, *&v8, *&v9, *&v10, *&v11, *&v8, *&v9, *&v10, *&v11, v13, v14, v15, v16];
  return self;
}

- (id)buddy_scaleWidthTo:(double)to ratio:(double)ratio
{
  [(UIView *)self bounds];
  [(UIView *)self bounds];
  v14 = v4;
  v13 = v5;
  v16 = v6;
  v15 = v7;
  sub_100155B24();
  [(UIView *)self setBounds:v8, v9, v10, v11, *&v8, *&v9, *&v10, *&v11, *&v8, *&v9, *&v10, *&v11, v13, v14, v15, v16];
  return self;
}

- (double)buddy_heightForContainerWidth:(double)width ratio:(double)ratio
{
  [(UIView *)self bounds];
  [(UIView *)self bounds];
  sub_100155B24();
  return v4;
}

@end