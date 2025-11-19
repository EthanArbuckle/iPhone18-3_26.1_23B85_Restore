@interface THWControlContainerLayout
- (id)additionalLayouts;
- (id)childInfosForLayout;
- (id)wpLayoutParentForLayout:(id)a3;
- (unint64_t)index;
- (unint64_t)tag;
- (void)setIndex:(unint64_t)a3;
- (void)setTag:(unint64_t)a3;
- (void)validate;
@end

@implementation THWControlContainerLayout

- (void)validate
{
  [(THWControlContainerLayout *)self invalidateFrame];
  v3.receiver = self;
  v3.super_class = THWControlContainerLayout;
  [(THWControlContainerLayout *)&v3 validate];
}

- (unint64_t)tag
{
  v2 = [(THWControlContainerLayout *)self info];

  return [v2 tag];
}

- (void)setTag:(unint64_t)a3
{
  v4 = [(THWControlContainerLayout *)self info];

  [v4 setTag:a3];
}

- (unint64_t)index
{
  v2 = [(THWControlContainerLayout *)self info];

  return [v2 index];
}

- (void)setIndex:(unint64_t)a3
{
  v4 = [(THWControlContainerLayout *)self info];

  [v4 setIndex:a3];
}

- (id)childInfosForLayout
{
  v3 = [-[THWControlContainerLayout info](self "info")];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 controlContainerChildrenForLayout:self];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = TSUProtocolCast();
          if (v10)
          {
            v11 = v10;
            if (!v7)
            {
              v7 = +[NSMutableArray array];
            }

            [v7 addObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
      return v7;
    }

    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 controlContainerChildInfosForLayout:self];
}

- (id)wpLayoutParentForLayout:(id)a3
{
  v5 = [-[THWControlContainerLayout info](self "info")];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v5 controlContainer:self wpLayoutParentForLayout:a3];
}

- (id)additionalLayouts
{
  v3 = [-[THWControlContainerLayout info](self "info")];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 controlContainerChildrenForLayout:self];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          objc_opt_class();
          v10 = TSUDynamicCast();
          if (v10)
          {
            v11 = v10;
            if (!v7)
            {
              v7 = +[NSMutableArray array];
            }

            [v7 addObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
      return v7;
    }

    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 controlContainerAdditionalChildLayouts:self];
}

@end