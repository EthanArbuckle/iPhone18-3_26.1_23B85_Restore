@interface THDrawablesZOrder
- (THDrawablesZOrder)initWithContext:(id)a3;
- (id)drawableAtZOrder:(unint64_t)a3;
- (id)orderedDrawables:(id)a3;
- (unint64_t)insertDrawable:(id)a3 atZOrder:(unint64_t)a4;
- (unint64_t)zOrderOfDrawable:(id)a3;
- (void)dealloc;
- (void)moveDrawable:(id)a3 toZOrder:(unint64_t)a4;
- (void)moveDrawableAtZOrder:(unint64_t)a3 toZOrder:(unint64_t)a4;
- (void)moveDrawables:(id)a3 toZOrder:(unint64_t)a4;
- (void)removeAllDrawables;
- (void)removeDrawable:(id)a3;
- (void)removeDrawableAtZOrder:(unint64_t)a3;
- (void)swapDrawableAtZOrder:(unint64_t)a3 withDrawableAtZOrder:(unint64_t)a4;
@end

@implementation THDrawablesZOrder

- (THDrawablesZOrder)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = THDrawablesZOrder;
  v3 = [(THDrawablesZOrder *)&v5 initWithContext:a3];
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

- (id)drawableAtZOrder:(unint64_t)a3
{
  if ([(NSMutableArray *)self->mDrawables count]<= a3)
  {
    return 0;
  }

  mDrawables = self->mDrawables;

  return [(NSMutableArray *)mDrawables objectAtIndex:a3];
}

- (unint64_t)zOrderOfDrawable:(id)a3
{
  if (a3)
  {
    return [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:?];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)insertDrawable:(id)a3 atZOrder:(unint64_t)a4
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 && [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSMutableArray *)self->mDrawables count];
    if (v8 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = v8;
    }

    [(NSMutableArray *)self->mDrawables insertObject:a3 atIndex:v4];
  }

  return v4;
}

- (void)removeDrawableAtZOrder:(unint64_t)a3
{
  if ([(NSMutableArray *)self->mDrawables count]> a3)
  {
    mDrawables = self->mDrawables;

    [(NSMutableArray *)mDrawables removeObjectAtIndex:a3];
  }
}

- (void)removeDrawable:(id)a3
{
  v4 = [(THDrawablesZOrder *)self zOrderOfDrawable:a3];

  [(THDrawablesZOrder *)self removeDrawableAtZOrder:v4];
}

- (void)moveDrawableAtZOrder:(unint64_t)a3 toZOrder:(unint64_t)a4
{
  if (a3 != a4 && a3 + 1 != a4)
  {
    v7 = [(NSMutableArray *)self->mDrawables count];
    if (a4 != 0xFFFFFFFF || v7 - 1 != a3)
    {
      v10 = [(NSMutableArray *)self->mDrawables objectAtIndex:a3];
      v8 = v10;
      [(NSMutableArray *)self->mDrawables removeObjectAtIndex:a3];
      if (a4 == 0xFFFFFFFF)
      {
        v9 = [(NSMutableArray *)self->mDrawables count];
      }

      else
      {
        v9 = ((__PAIR128__(a4, a3) - a4) >> 64);
      }

      [(NSMutableArray *)self->mDrawables insertObject:v10 atIndex:v9];
    }
  }
}

- (void)moveDrawable:(id)a3 toZOrder:(unint64_t)a4
{
  v6 = [(THDrawablesZOrder *)self zOrderOfDrawable:a3];

  [(THDrawablesZOrder *)self moveDrawableAtZOrder:v6 toZOrder:a4];
}

- (void)moveDrawables:(id)a3 toZOrder:(unint64_t)a4
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        [(THDrawablesZOrder *)self moveDrawable:*(*(&v11 + 1) + 8 * v10) toZOrder:a4];
        if (a4 != 0xFFFFFFFF)
        {
          ++a4;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)swapDrawableAtZOrder:(unint64_t)a3 withDrawableAtZOrder:(unint64_t)a4
{
  v7 = [(NSMutableArray *)self->mDrawables count];
  if (a3 != a4 && v7 > a3 && v7 > a4)
  {
    mDrawables = self->mDrawables;

    [(NSMutableArray *)mDrawables exchangeObjectAtIndex:a3 withObjectAtIndex:a4];
  }
}

- (id)orderedDrawables:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (objc_opt_respondsToSelector())
    {
      sub_3A260(&v26, [(NSMutableArray *)v3 count]);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v5)
    {
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
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

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v5);
    }

    v17 = v26;
    if (v27 == v26)
    {
      v3 = 0;
      if (!v26)
      {
        return v3;
      }

      goto LABEL_25;
    }

    v3 = [NSMutableArray arrayWithCapacity:(v27 - v26) >> 4];
    v17 = v26;
    v18 = v27;
    if (v26 != v27)
    {
      do
      {
        [(NSMutableArray *)v3 addObject:*v17, v20, v21];
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

  return v3;
}

- (void)removeAllDrawables
{
  for (i = self->mDrawables; [(NSMutableArray *)i count]; i = self->mDrawables)
  {
    [(THDrawablesZOrder *)self removeDrawableAtZOrder:0];
  }
}

@end