@interface UIView
- (double)buddy_heightForContainerWidth:(double)a3 ratio:(double)a4;
- (id)buddy_scaleHeightTo:(double)a3 ratio:(double)a4;
- (id)buddy_scaleWidthTo:(double)a3 ratio:(double)a4;
- (void)buddy_setSemanticContentAttributeRecursively:(int64_t)a3;
@end

@implementation UIView

- (void)buddy_setSemanticContentAttributeRecursively:(int64_t)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  memset(__b, 0, sizeof(__b));
  v3 = [(UIView *)v11 subviews];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:__b objects:v12 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(__b[1] + 8 * i);
        [v8 buddy_setSemanticContentAttributeRecursively:v9];
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:__b objects:v12 count:16];
    }

    while (v4);
  }

  [(UIView *)v11 setSemanticContentAttribute:v9];
}

- (id)buddy_scaleHeightTo:(double)a3 ratio:(double)a4
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

- (id)buddy_scaleWidthTo:(double)a3 ratio:(double)a4
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

- (double)buddy_heightForContainerWidth:(double)a3 ratio:(double)a4
{
  [(UIView *)self bounds];
  [(UIView *)self bounds];
  sub_100155B24();
  return v4;
}

@end