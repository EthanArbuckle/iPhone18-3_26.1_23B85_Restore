@interface _SSSScrollViewLayoutRects
- (CGRect)contentInsetRect;
- (CGRect)scrollViewRect;
- (CGRect)visibleRect;
- (_SSSScrollViewLayoutRects)initWithScrollView:(id)a3 visibleRectInScrollView:(CGRect)a4;
- (double)initWithScrollViewRect:(double)a3 contentInsetRect:(double)a4 visibleRect:(double)a5;
- (id)layoutRectsByApplyingTransform:(CGAffineTransform *)a3;
- (id)layoutRectsByConvertingFromView:(id)a3 toView:(id)a4;
@end

@implementation _SSSScrollViewLayoutRects

- (_SSSScrollViewLayoutRects)initWithScrollView:(id)a3 visibleRectInScrollView:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v40.receiver = self;
  v40.super_class = _SSSScrollViewLayoutRects;
  v8 = a3;
  v9 = [(_SSSScrollViewLayoutRects *)&v40 init];
  [v8 bounds];
  v9->_scrollViewRect.origin.x = v10;
  v9->_scrollViewRect.origin.y = v11;
  v9->_scrollViewRect.size.width = v12;
  v9->_scrollViewRect.size.height = v13;
  v9->_visibleRect.origin.x = x;
  v9->_visibleRect.origin.y = y;
  v9->_visibleRect.size.width = width;
  v9->_visibleRect.size.height = height;
  [v8 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v8 contentInset];
  v23 = v15 + v22;
  v25 = v17 + v24;
  v27 = v19 - (v22 + v26);
  v29 = v21 - (v24 + v28);
  v30 = [v8 superview];
  [v8 convertRect:v30 fromView:{v23, v25, v27, v29}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v9->_contentInsetRect.origin.x = v32;
  v9->_contentInsetRect.origin.y = v34;
  v9->_contentInsetRect.size.width = v36;
  v9->_contentInsetRect.size.height = v38;

  return v9;
}

- (double)initWithScrollViewRect:(double)a3 contentInsetRect:(double)a4 visibleRect:(double)a5
{
  v29.receiver = a1;
  v29.super_class = _SSSScrollViewLayoutRects;
  v25 = objc_msgSendSuper2(&v29, "init");
  *(v25 + 1) = a2;
  *(v25 + 2) = a3;
  *(v25 + 3) = a4;
  *(v25 + 4) = a5;
  *(v25 + 40) = a17;
  *(v25 + 7) = a18;
  *(v25 + 8) = a19;
  *(v25 + 9) = a6;
  *(v25 + 10) = a7;
  *(v25 + 11) = a8;
  result = a9;
  *(v25 + 12) = a9;
  return result;
}

- (id)layoutRectsByApplyingTransform:(CGAffineTransform *)a3
{
  [(_SSSScrollViewLayoutRects *)self scrollViewRect];
  v5 = *&a3->c;
  *&v18.a = *&a3->a;
  *&v18.c = v5;
  *&v18.tx = *&a3->tx;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  y = v21.origin.y;
  x = v21.origin.x;
  height = v21.size.height;
  width = v21.size.width;
  [(_SSSScrollViewLayoutRects *)self visibleRect];
  v6 = *&a3->c;
  *&v18.a = *&a3->a;
  *&v18.c = v6;
  *&v18.tx = *&a3->tx;
  v23 = CGRectApplyAffineTransform(v22, &v18);
  v7 = v23.origin.x;
  v8 = v23.origin.y;
  v9 = v23.size.width;
  v10 = v23.size.height;
  [(_SSSScrollViewLayoutRects *)self contentInsetRect];
  v11 = *&a3->c;
  *&v18.a = *&a3->a;
  *&v18.c = v11;
  *&v18.tx = *&a3->tx;
  v25 = CGRectApplyAffineTransform(v24, &v18);
  v12 = [[_SSSScrollViewLayoutRects alloc] initWithScrollViewRect:x contentInsetRect:y visibleRect:width, height, v25.origin.x, v25.origin.y, v25.size.width, v25.size.height, *&v7, *&v8, *&v9, *&v10];

  return v12;
}

- (id)layoutRectsByConvertingFromView:(id)a3 toView:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_SSSScrollViewLayoutRects *)self scrollViewRect];
  [v7 convertRect:v6 toView:?];
  v32 = v9;
  v33 = v8;
  v30 = v11;
  v31 = v10;
  [(_SSSScrollViewLayoutRects *)self visibleRect];
  [v7 convertRect:v6 toView:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(_SSSScrollViewLayoutRects *)self contentInsetRect];
  [v7 convertRect:v6 toView:?];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [[_SSSScrollViewLayoutRects alloc] initWithScrollViewRect:v33 contentInsetRect:v32 visibleRect:v31, v30, v21, v23, v25, v27, v13, v15, v17, v19];

  return v28;
}

- (CGRect)scrollViewRect
{
  x = self->_scrollViewRect.origin.x;
  y = self->_scrollViewRect.origin.y;
  width = self->_scrollViewRect.size.width;
  height = self->_scrollViewRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentInsetRect
{
  x = self->_contentInsetRect.origin.x;
  y = self->_contentInsetRect.origin.y;
  width = self->_contentInsetRect.size.width;
  height = self->_contentInsetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end