@interface BSUIOrientationTransformWrapperView
- (BSUIOrientationTransformWrapperView)initWithFrame:(CGRect)frame;
- (CGAffineTransform)convertTransformFromContainerInterfaceOrientationToContentInterfaceOrientation:(SEL)orientation;
- (CGAffineTransform)convertTransformFromContentInterfaceOrientationToContainerInterfaceOrientation:(SEL)orientation;
- (CGPoint)convertPointFromContainerInterfaceOrientationToContentInterfaceOrientation:(CGPoint)orientation;
- (CGPoint)convertPointFromContentInterfaceOrientationToContainerInterfaceOrientation:(CGPoint)orientation;
- (CGRect)convertRectFromContainerInterfaceOrientationToContentInterfaceOrientation:(CGRect)orientation;
- (CGRect)convertRectFromContentInterfaceOrientationToContainerInterfaceOrientation:(CGRect)orientation;
- (CGSize)_referenceContainerSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)description;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateGeometry;
- (void)addContentView:(id)view;
- (void)addHitTestView:(id)view;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setContainerOrientation:(int64_t)orientation;
- (void)setContentOrientation:(int64_t)orientation;
- (void)setFrame:(CGRect)frame;
- (void)setSize:(CGSize)size;
@end

@implementation BSUIOrientationTransformWrapperView

- (void)_updateGeometry
{
  v30 = *MEMORY[0x1E69E9840];
  [(BSUIOrientationTransformWrapperView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  contentOrientation = self->_contentOrientation;
  containerOrientation = self->_containerOrientation;
  if (contentOrientation == containerOrientation)
  {
    transformedView = self->_transformedView;
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    v28[0] = *MEMORY[0x1E695EFD0];
    v28[1] = v14;
    v28[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(_BSUIOrientationTransformedContentView *)transformedView setTransform:v28];
    [(_BSUIOrientationTransformedContentView *)self->_transformedView setFrame:v7, v8, v9, v10];
    Width = v10;
    Height = v9;
  }

  else
  {
    if ((contentOrientation - 3) < 2 == (containerOrientation - 3) < 2)
    {
      Height = v5;
      Width = v6;
    }

    else
    {
      Height = CGRectGetHeight(*&v3);
      v31.origin.x = v7;
      v31.origin.y = v8;
      v31.size.width = v9;
      v31.size.height = v10;
      Width = CGRectGetWidth(v31);
      containerOrientation = self->_containerOrientation;
      contentOrientation = self->_contentOrientation;
    }

    v17 = self->_transformedView;
    _BSUITransformFromOrientationToOrientation(containerOrientation, contentOrientation, v28);
    [(_BSUIOrientationTransformedContentView *)v17 setTransform:v28];
    v18 = self->_transformedView;
    v32.origin.x = v7;
    v32.origin.y = v8;
    v32.size.width = v9;
    v32.size.height = v10;
    MidX = CGRectGetMidX(v32);
    v33.origin.x = v7;
    v33.origin.y = v8;
    v33.size.width = v9;
    v33.size.height = v10;
    [(_BSUIOrientationTransformedContentView *)v18 setCenter:MidX, CGRectGetMidY(v33)];
    [(_BSUIOrientationTransformedContentView *)self->_transformedView setBounds:v7, v8, Height, Width];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  subviews = [(_BSUIOrientationTransformedContentView *)self->_transformedView subviews];
  v21 = [subviews countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v21)
  {
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v24 + 1) + 8 * v23++) setFrame:{v7, v8, Height, Width}];
      }

      while (v21 != v23);
      v21 = [subviews countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v21);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BSUIOrientationTransformWrapperView;
  [(BSUIOrientationTransformWrapperView *)&v3 layoutSubviews];
  [(BSUIOrientationTransformWrapperView *)self _updateGeometry];
}

- (BSUIOrientationTransformWrapperView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = BSUIOrientationTransformWrapperView;
  v3 = [(BSUIOrientationTransformWrapperView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_contentOrientation = 1;
    v3->_containerOrientation = 1;
    v5 = [_BSUIOrientationTransformedContentView alloc];
    [(BSUIOrientationTransformWrapperView *)v4 bounds];
    v6 = [(_BSUIOrientationTransformedContentView *)v5 initWithFrame:?];
    transformedView = v4->_transformedView;
    v4->_transformedView = v6;

    [(BSUIOrientationTransformWrapperView *)v4 addSubview:v4->_transformedView];
  }

  return v4;
}

- (id)description
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:self];
  v3 = BSInterfaceOrientationDescription();
  v4 = [v2 appendObject:v3 withName:@"container"];

  appendSuper = [v2 appendSuper];
  build = [v2 build];

  return build;
}

- (void)setContentOrientation:(int64_t)orientation
{
  if (self->_contentOrientation != orientation)
  {
    self->_contentOrientation = orientation;
    [(_BSUIOrientationTransformedContentView *)self->_transformedView setContentOrientation:?];

    [(BSUIOrientationTransformWrapperView *)self _updateGeometry];
  }
}

- (void)setContainerOrientation:(int64_t)orientation
{
  if (self->_containerOrientation != orientation)
  {
    self->_containerOrientation = orientation;
    [(BSUIOrientationTransformWrapperView *)self _updateGeometry];
  }
}

- (void)addContentView:(id)view
{
  viewCopy = view;
  [(_BSUIOrientationTransformedContentView *)self->_transformedView addSubview:?];
  [(BSUIOrientationTransformWrapperView *)self _updateGeometry];
}

- (void)addHitTestView:(id)view
{
  viewCopy = view;
  hitTestViews = self->_hitTestViews;
  v8 = viewCopy;
  if (!hitTestViews)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_hitTestViews;
    self->_hitTestViews = v6;

    hitTestViews = self->_hitTestViews;
    viewCopy = v8;
  }

  [(NSMutableArray *)hitTestViews addObject:viewCopy];
}

- (CGSize)_referenceContainerSize
{
  [(BSUIOrientationTransformWrapperView *)self bounds];
  v4 = v3;
  v6 = v5;
  containerOrientation = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  if ((containerOrientation - 3) >= 2)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if ((containerOrientation - 3) >= 2)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGPoint)convertPointFromContainerInterfaceOrientationToContentInterfaceOrientation:(CGPoint)orientation
{
  y = orientation.y;
  x = orientation.x;
  [(BSUIOrientationTransformWrapperView *)self _referenceContainerSize];
  v7 = v6;
  v9 = v8;
  containerOrientation = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  contentOrientation = [(BSUIOrientationTransformWrapperView *)self contentOrientation];
  v12.n128_f64[0] = x;
  v13.n128_f64[0] = y;
  v14.n128_u64[0] = v7;
  v15.n128_u64[0] = v9;

  MEMORY[0x1EEE4E3C0](containerOrientation, contentOrientation, v12, v13, v14, v15);
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGRect)convertRectFromContainerInterfaceOrientationToContentInterfaceOrientation:(CGRect)orientation
{
  height = orientation.size.height;
  width = orientation.size.width;
  y = orientation.origin.y;
  x = orientation.origin.x;
  [(BSUIOrientationTransformWrapperView *)self _referenceContainerSize];
  v9 = v8;
  v11 = v10;
  containerOrientation = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  contentOrientation = [(BSUIOrientationTransformWrapperView *)self contentOrientation];
  v14.n128_f64[0] = x;
  v15.n128_f64[0] = y;
  v16.n128_f64[0] = width;
  v17.n128_f64[0] = height;
  v18.n128_u64[0] = v9;
  v19.n128_u64[0] = v11;

  MEMORY[0x1EEE4E3C8](containerOrientation, contentOrientation, v14, v15, v16, v17, v18, v19);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGAffineTransform)convertTransformFromContainerInterfaceOrientationToContentInterfaceOrientation:(SEL)orientation
{
  v7 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v7;
  *&retstr->tx = *&a4->tx;
  containerOrientation = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  result = [(BSUIOrientationTransformWrapperView *)self contentOrientation];
  if (containerOrientation != result)
  {
    memset(&v14, 0, sizeof(v14));
    _BSUITransformFromOrientationToOrientation(containerOrientation, result, &v14);
    v13 = v14;
    CGAffineTransformInvert(&t2, &v13);
    v10 = *&a4->c;
    *&v11.a = *&a4->a;
    *&v11.c = v10;
    *&v11.tx = *&a4->tx;
    CGAffineTransformConcat(&v13, &v11, &t2);
    t2 = v14;
    return CGAffineTransformConcat(retstr, &t2, &v13);
  }

  return result;
}

- (CGPoint)convertPointFromContentInterfaceOrientationToContainerInterfaceOrientation:(CGPoint)orientation
{
  y = orientation.y;
  x = orientation.x;
  [(BSUIOrientationTransformWrapperView *)self _referenceContainerSize];
  v7 = v6;
  v9 = v8;
  contentOrientation = [(BSUIOrientationTransformWrapperView *)self contentOrientation];
  containerOrientation = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  v12.n128_f64[0] = x;
  v13.n128_f64[0] = y;
  v14.n128_u64[0] = v7;
  v15.n128_u64[0] = v9;

  MEMORY[0x1EEE4E3C0](contentOrientation, containerOrientation, v12, v13, v14, v15);
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGRect)convertRectFromContentInterfaceOrientationToContainerInterfaceOrientation:(CGRect)orientation
{
  height = orientation.size.height;
  width = orientation.size.width;
  y = orientation.origin.y;
  x = orientation.origin.x;
  [(BSUIOrientationTransformWrapperView *)self _referenceContainerSize];
  v9 = v8;
  v11 = v10;
  contentOrientation = [(BSUIOrientationTransformWrapperView *)self contentOrientation];
  containerOrientation = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  v14.n128_f64[0] = x;
  v15.n128_f64[0] = y;
  v16.n128_f64[0] = width;
  v17.n128_f64[0] = height;
  v18.n128_u64[0] = v9;
  v19.n128_u64[0] = v11;

  MEMORY[0x1EEE4E3C8](contentOrientation, containerOrientation, v14, v15, v16, v17, v18, v19);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGAffineTransform)convertTransformFromContentInterfaceOrientationToContainerInterfaceOrientation:(SEL)orientation
{
  v7 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v7;
  *&retstr->tx = *&a4->tx;
  containerOrientation = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  result = [(BSUIOrientationTransformWrapperView *)self contentOrientation];
  if (containerOrientation != result)
  {
    memset(&v15, 0, sizeof(v15));
    _BSUITransformFromOrientationToOrientation(containerOrientation, result, &v15);
    t2 = v15;
    CGAffineTransformInvert(&v14, &t2);
    v10 = *&a4->c;
    *&t1.a = *&a4->a;
    *&t1.c = v10;
    *&t1.tx = *&a4->tx;
    v11 = v15;
    CGAffineTransformConcat(&t2, &t1, &v11);
    return CGAffineTransformConcat(retstr, &v14, &t2);
  }

  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = BSUIOrientationTransformWrapperView;
  v5 = [(BSUIOrientationTransformWrapperView *)&v18 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self || v5 == self->_transformedView)
  {

    v6 = 0;
  }

  hitTestViews = self->_hitTestViews;
  if (hitTestViews && ([(NSMutableArray *)hitTestViews containsObject:v6]& 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_hitTestViews;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if (([(BSUIOrientationTransformWrapperView *)v6 isDescendantOfView:*(*(&v14 + 1) + 8 * i), v14]& 1) != 0)
          {
            v9 = v6;
            goto LABEL_16;
          }
        }

        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v12 = v9;
    v6 = v12;
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (self->_transformedView)
  {
    [(_BSUIOrientationTransformedContentView *)self->_transformedView frame:fits.width];
  }

  else
  {
    [(BSUIOrientationTransformWrapperView *)self bounds:fits.width];
  }

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = BSUIOrientationTransformWrapperView;
  [(BSUIOrientationTransformWrapperView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(BSUIOrientationTransformWrapperView *)self _updateGeometry];
}

- (void)setSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = BSUIOrientationTransformWrapperView;
  [(BSUIOrientationTransformWrapperView *)&v4 setSize:size.width, size.height];
  [(BSUIOrientationTransformWrapperView *)self _updateGeometry];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = BSUIOrientationTransformWrapperView;
  [(BSUIOrientationTransformWrapperView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(BSUIOrientationTransformWrapperView *)self _updateGeometry];
}

- (void)setCenter:(CGPoint)center
{
  v4.receiver = self;
  v4.super_class = BSUIOrientationTransformWrapperView;
  [(BSUIOrientationTransformWrapperView *)&v4 setCenter:center.x, center.y];
  [(BSUIOrientationTransformWrapperView *)self _updateGeometry];
}

@end