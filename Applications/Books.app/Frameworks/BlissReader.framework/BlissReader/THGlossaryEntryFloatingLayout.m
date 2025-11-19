@interface THGlossaryEntryFloatingLayout
- (CGRect)boundingBoxForChildren;
- (CGSize)maximumFrameSizeForChild:(id)a3;
- (id)childrenForWrappingDependents;
- (id)computeLayoutGeometry;
- (id)floatingLayouts;
- (void)p_addWrappingRequirementsForLayout:(id)a3 toArray:(id)a4;
- (void)updateChildrenFromInfo;
@end

@implementation THGlossaryEntryFloatingLayout

- (id)floatingLayouts
{
  v3 = [-[THGlossaryEntryFloatingLayout info](self "info")];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [(THGlossaryEntryFloatingLayout *)self layoutController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [v5 layoutForInfo:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (CGRect)boundingBoxForChildren
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v6 = [(THGlossaryEntryFloatingLayout *)self floatingLayouts];
  if ([v6 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [objc_msgSend(*(*(&v19 + 1) + 8 * v10) "geometry")];
          v28.origin.x = v11;
          v28.origin.y = v12;
          v28.size.width = v13;
          v28.size.height = v14;
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          v25 = CGRectUnion(v24, v28);
          x = v25.origin.x;
          y = v25.origin.y;
          width = v25.size.width;
          height = v25.size.height;
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectIsNull(v26))
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)p_addWrappingRequirementsForLayout:(id)a3 toArray:(id)a4
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 children];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = TSUProtocolCast();
        if (!v12)
        {
          v13 = TSUProtocolCast();
          if (!v13)
          {
            continue;
          }

          v12 = v13;
          [(THGlossaryEntryFloatingLayout *)self p_addWrappingRequirementsForLayout:v11 toArray:a4];
        }

        [a4 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)childrenForWrappingDependents
{
  v3 = +[NSMutableArray array];
  [(THGlossaryEntryFloatingLayout *)self p_addWrappingRequirementsForLayout:self toArray:v3];
  return v3;
}

- (void)updateChildrenFromInfo
{
  v3 = [-[THGlossaryEntryFloatingLayout children](self "children")];
  if (v3 != [objc_msgSend(-[THGlossaryEntryFloatingLayout info](self "info")])
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [objc_msgSend(-[THGlossaryEntryFloatingLayout info](self "info")]);
    v5 = [-[THGlossaryEntryFloatingLayout info](self "info")];
    v6 = [(THGlossaryEntryFloatingLayout *)self layoutController];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v6 layoutForInfo:v11 childOfLayout:self];
          if (!v12)
          {
            v12 = [objc_alloc(objc_msgSend(v11 "layoutClass"))];
            if (!v12)
            {
              continue;
            }
          }

          v13 = v12;
          [(NSMutableArray *)v4 addObject:v12];
        }

        v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(THGlossaryEntryFloatingLayout *)self setChildren:v4];
    [(THGlossaryEntryFloatingLayout *)self invalidate];
  }

  [-[THGlossaryEntryFloatingLayout children](self "children")];
}

- (id)computeLayoutGeometry
{
  [(THGlossaryEntryFloatingLayout *)self boundingBoxForChildren];
  v4 = v3;
  v6 = v5;
  objc_opt_class();
  [(THGlossaryEntryFloatingLayout *)self parent];
  [objc_msgSend(TSUDynamicCast() "layoutStyleProvider")];
  v8 = [[TSDLayoutGeometry alloc] initWithFrame:{v7, 0.0, v4, v6}];

  return v8;
}

- (CGSize)maximumFrameSizeForChild:(id)a3
{
  objc_opt_class();
  [(THGlossaryEntryFloatingLayout *)self parent];
  v5 = TSUDynamicCast();
  if (v5)
  {

    [v5 maximumFrameSizeForChild:a3];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = THGlossaryEntryFloatingLayout;
    [(THGlossaryEntryFloatingLayout *)&v8 maximumFrameSizeForChild:a3];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

@end