@interface THFlowSectionLayout
- (void)ensurePageLayoutCreated;
- (void)invalidatePosition;
- (void)invalidateSize;
@end

@implementation THFlowSectionLayout

- (void)ensurePageLayoutCreated
{
  if (![-[THFlowSectionLayout children](self "children")])
  {
    if (![objc_msgSend(-[THFlowSectionLayout info](self "info")])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v3 = objc_alloc_init(NSMutableArray);
    v4 = [(THFlowSectionLayout *)self layoutController];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [-[THFlowSectionLayout info](self info];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v4 layoutForInfo:v10 childOfLayout:self];
          if (!v11)
          {
            v11 = [objc_alloc(objc_msgSend(v10 "layoutClass"))];
            if (!v11)
            {
              continue;
            }
          }

          v12 = v11;
          [v3 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [(THFlowSectionLayout *)self setChildren:v3];

    [-[THFlowSectionLayout children](self "children")];
    [-[THFlowSectionLayout children](self "children")];
  }
}

- (void)invalidateSize
{
  v3.receiver = self;
  v3.super_class = THFlowSectionLayout;
  [(THFlowSectionLayout *)&v3 invalidateSize];
  [-[THSectionLayout dependentLayouts](self "dependentLayouts")];
}

- (void)invalidatePosition
{
  v3.receiver = self;
  v3.super_class = THFlowSectionLayout;
  [(THFlowSectionLayout *)&v3 invalidatePosition];
  [-[THSectionLayout dependentLayouts](self "dependentLayouts")];
}

@end