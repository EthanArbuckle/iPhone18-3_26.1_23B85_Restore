@interface CAScrollLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (CAScrollLayerScrollMode)scrollMode;
- (CGRect)_visibleRectOfLayer:(id)layer;
- (void)_scrollPoint:(CGPoint)point fromLayer:(id)layer;
- (void)_scrollRect:(CGRect)rect fromLayer:(id)layer;
- (void)scrollToPoint:(CGPoint)p;
- (void)scrollToRect:(CGRect)r;
- (void)setScrollMode:(CAScrollLayerScrollMode)scrollMode;
@end

@implementation CAScrollLayer

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAScrollLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setScrollMode:(CAScrollLayerScrollMode)scrollMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = scrollMode;
  CA::Layer::setter(self->super._attr.layer, 0x272, 3, v3);
}

- (CAScrollLayerScrollMode)scrollMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x272u, 3, v3);
  return v3[0];
}

- (CGRect)_visibleRectOfLayer:(id)layer
{
  [(CALayer *)self bounds];
  [(CALayer *)self convertRect:layer toLayer:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [layer bounds];
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;

  return CGRectIntersection(*&v13, *&v17);
}

- (void)_scrollRect:(CGRect)rect fromLayer:(id)layer
{
  [(CALayer *)self convertRect:layer fromLayer:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];

  [(CAScrollLayer *)self scrollToRect:?];
}

- (void)_scrollPoint:(CGPoint)point fromLayer:(id)layer
{
  [(CALayer *)self convertPoint:layer fromLayer:point.x, point.y];

  [(CAScrollLayer *)self scrollToPoint:?];
}

- (void)scrollToRect:(CGRect)r
{
  height = r.size.height;
  width = r.size.width;
  y = r.origin.y;
  x = r.origin.x;
  [(CALayer *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = CAInternAtom([(CAScrollLayer *)self scrollMode], 0);
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectContainsRect(v21, v22))
  {
    if (v16 == 305 || v16 == 78)
    {
      if (v9 + v13 >= x + width)
      {
        v17 = v9;
      }

      else
      {
        v17 = x + width - v13;
      }

      if (v17 <= x)
      {
        v9 = v17;
      }

      else
      {
        v9 = x;
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (v16 == 740 || v16 == 78)
    {
      if (v11 + v15 >= y + height)
      {
        v19 = v11;
      }

      else
      {
        v19 = y + height - v15;
      }

      if (v19 <= y)
      {
        v11 = v19;
      }

      else
      {
        v11 = y;
      }
    }

    else if (!v18)
    {
      return;
    }

    [(CALayer *)self setBounds:v9, v11, v13, v15];
  }
}

- (void)scrollToPoint:(CGPoint)p
{
  y = p.y;
  x = p.x;
  [(CALayer *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = CAInternAtom([(CAScrollLayer *)self scrollMode], 0);
  if (v14 == 305 || v14 == 78)
  {
    v7 = x;
  }

  if (v14 == 740 || v14 == 78)
  {
    v9 = y;
  }

  [(CALayer *)self setBounds:v7, v9, v11, v13];
}

+ (id)defaultValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 == 626)
  {
    return @"both";
  }

  if (v5 == 506)
  {
    return *MEMORY[0x1E695E4D0];
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CAScrollLayer;
  return objc_msgSendSuper2(&v7, sel_defaultValueForKey_, key);
}

@end