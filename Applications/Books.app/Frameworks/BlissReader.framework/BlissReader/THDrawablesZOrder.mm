@interface THDrawablesZOrder
- (THDrawablesZOrder)initWithContext:(id)context;
- (id)drawableAtZOrder:(unint64_t)order;
- (id)orderedDrawables:(id)drawables;
- (unint64_t)insertDrawable:(id)drawable atZOrder:(unint64_t)order;
- (unint64_t)zOrderOfDrawable:(id)drawable;
- (void)dealloc;
- (void)moveDrawable:(id)drawable toZOrder:(unint64_t)order;
- (void)moveDrawableAtZOrder:(unint64_t)order toZOrder:(unint64_t)zOrder;
- (void)moveDrawables:(id)drawables toZOrder:(unint64_t)order;
- (void)removeAllDrawables;
- (void)removeDrawable:(id)drawable;
- (void)removeDrawableAtZOrder:(unint64_t)order;
- (void)swapDrawableAtZOrder:(unint64_t)order withDrawableAtZOrder:(unint64_t)zOrder;
@end

@implementation THDrawablesZOrder

- (THDrawablesZOrder)initWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = THDrawablesZOrder;
  v3 = [(THDrawablesZOrder *)&v5 initWithContext:context];
  if (v3)
  {
    v3->mDrawables = objc_alloc_init(NSMutableArray);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THDrawablesZOrder;
  [(THDrawablesZOrder *)&v3 dealloc];
}

- (id)drawableAtZOrder:(unint64_t)order
{
  if ([(NSMutableArray *)self->mDrawables count]<= order)
  {
    return 0;
  }

  mDrawables = self->mDrawables;

  return [(NSMutableArray *)mDrawables objectAtIndex:order];
}

- (unint64_t)zOrderOfDrawable:(id)drawable
{
  if (drawable)
  {
    return [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:?];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)insertDrawable:(id)drawable atZOrder:(unint64_t)order
{
  orderCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (drawable && [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSMutableArray *)self->mDrawables count];
    if (v8 >= order)
    {
      orderCopy = order;
    }

    else
    {
      orderCopy = v8;
    }

    [(NSMutableArray *)self->mDrawables insertObject:drawable atIndex:orderCopy];
  }

  return orderCopy;
}

- (void)removeDrawableAtZOrder:(unint64_t)order
{
  if ([(NSMutableArray *)self->mDrawables count]> order)
  {
    mDrawables = self->mDrawables;

    [(NSMutableArray *)mDrawables removeObjectAtIndex:order];
  }
}

- (void)removeDrawable:(id)drawable
{
  v4 = [(THDrawablesZOrder *)self zOrderOfDrawable:drawable];

  [(THDrawablesZOrder *)self removeDrawableAtZOrder:v4];
}

- (void)moveDrawableAtZOrder:(unint64_t)order toZOrder:(unint64_t)zOrder
{
  if (order != zOrder && order + 1 != zOrder)
  {
    v7 = [(NSMutableArray *)self->mDrawables count];
    if (zOrder != 0xFFFFFFFF || v7 - 1 != order)
    {
      v10 = [(NSMutableArray *)self->mDrawables objectAtIndex:order];
      v8 = v10;
      [(NSMutableArray *)self->mDrawables removeObjectAtIndex:order];
      if (zOrder == 0xFFFFFFFF)
      {
        v9 = [(NSMutableArray *)self->mDrawables count];
      }

      else
      {
        v9 = ((__PAIR128__(zOrder, order) - zOrder) >> 64);
      }

      [(NSMutableArray *)self->mDrawables insertObject:v10 atIndex:v9];
    }
  }
}

- (void)moveDrawable:(id)drawable toZOrder:(unint64_t)order
{
  v6 = [(THDrawablesZOrder *)self zOrderOfDrawable:drawable];

  [(THDrawablesZOrder *)self moveDrawableAtZOrder:v6 toZOrder:order];
}

- (void)moveDrawables:(id)drawables toZOrder:(unint64_t)order
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [drawables countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(drawables);
        }

        [(THDrawablesZOrder *)self moveDrawable:*(*(&v11 + 1) + 8 * v10) toZOrder:order];
        if (order != 0xFFFFFFFF)
        {
          ++order;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [drawables countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)swapDrawableAtZOrder:(unint64_t)order withDrawableAtZOrder:(unint64_t)zOrder
{
  v7 = [(NSMutableArray *)self->mDrawables count];
  if (order != zOrder && v7 > order && v7 > zOrder)
  {
    mDrawables = self->mDrawables;

    [(NSMutableArray *)mDrawables exchangeObjectAtIndex:order withObjectAtIndex:zOrder];
  }
}

- (id)orderedDrawables:(id)drawables
{
  drawablesCopy = drawables;
  if (drawables)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (objc_opt_respondsToSelector())
    {
      sub_3A260(&v26, [(NSMutableArray *)drawablesCopy count]);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(NSMutableArray *)drawablesCopy countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v5)
    {
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(drawablesCopy);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:v8, v20, v21];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = v8;
            v21 = v9;
            v11 = v26;
            v10 = v27;
            if (v27 != v26)
            {
              v12 = (v27 - v26) >> 4;
              do
              {
                v13 = v12 >> 1;
                v14 = &v11[2 * (v12 >> 1)];
                v15 = v14[1];
                v16 = v14 + 2;
                v12 += ~(v12 >> 1);
                if (v15 < v9)
                {
                  v11 = v16;
                }

                else
                {
                  v12 = v13;
                }
              }

              while (v12);
              v10 = v11;
            }

            sub_3A338(&v26, v10, &v20);
          }
        }

        v5 = [(NSMutableArray *)drawablesCopy countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v5);
    }

    v17 = v26;
    if (v27 == v26)
    {
      drawablesCopy = 0;
      if (!v26)
      {
        return drawablesCopy;
      }

      goto LABEL_25;
    }

    drawablesCopy = [NSMutableArray arrayWithCapacity:(v27 - v26) >> 4];
    v17 = v26;
    v18 = v27;
    if (v26 != v27)
    {
      do
      {
        [(NSMutableArray *)drawablesCopy addObject:*v17, v20, v21];
        v17 += 2;
      }

      while (v17 != v18);
      v17 = v26;
    }

    if (v17)
    {
LABEL_25:
      v27 = v17;
      operator delete(v17);
    }
  }

  return drawablesCopy;
}

- (void)removeAllDrawables
{
  for (i = self->mDrawables; [(NSMutableArray *)i count]; i = self->mDrawables)
  {
    [(THDrawablesZOrder *)self removeDrawableAtZOrder:0];
  }
}

@end