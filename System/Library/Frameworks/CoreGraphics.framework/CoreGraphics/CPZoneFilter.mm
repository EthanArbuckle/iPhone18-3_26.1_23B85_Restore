@interface CPZoneFilter
+ (void)filterZonesInPage:(id)page;
- (CPZoneFilter)initWithPage:(id)page;
- (void)filterZonesInZone:(id)zone;
- (void)findBackgroundGraphicsInZone:(id)zone;
- (void)findUsedGraphicsInZone:(id)zone;
@end

@implementation CPZoneFilter

- (void)findUsedGraphicsInZone:(id)zone
{
  zoneBorders = [zone zoneBorders];
  v6 = [zoneBorders count];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [zoneBorders objectAtIndex:v8];
      graphicObjects = [v9 graphicObjects];
      v11 = [graphicObjects count];
      v12 = v11;
      if (v11)
      {
        v13 = 0;
        do
        {
          v14 = [graphicObjects objectAtIndex:v13];
          if ([v14 parent] && !objc_msgSend(v14, "user"))
          {
            [v14 setUser:zone];
          }

          ++v13;
        }

        while (v12 != v13);
      }

      neighborCount = [v9 neighborCount];
      if (neighborCount)
      {
        v16 = neighborCount;
        v17 = 0;
        do
        {
          v18 = [objc_msgSend(v9 neighborAtIndex:{v17), "neighborShape"}];
          if (![v18 user])
          {
            [v18 setUser:zone];
          }

          v17 = (v17 + 1);
        }

        while (v16 != v17);
      }

      ++v8;
    }

    while (v8 != v7);
  }

  v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(zone, "count")}];
  [zone childrenOfClass:objc_opt_class() into:v22];
  v19 = [v22 count];
  v20 = v19;
  if (v19)
  {
    v21 = 0;
    do
    {
      -[CPZoneFilter findUsedGraphicsInZone:](self, "findUsedGraphicsInZone:", [v22 objectAtIndex:v21++]);
    }

    while (v20 != v21);
  }
}

- (void)findBackgroundGraphicsInZone:(id)zone
{
  backgroundGraphics = [zone backgroundGraphics];
  v6 = [backgroundGraphics count];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [backgroundGraphics objectAtIndex:v8];
      if (![v9 user])
      {
        [v9 setUser:zone];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(zone, "count")}];
  [zone childrenOfClass:objc_opt_class() into:v13];
  v10 = [v13 count];
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    do
    {
      -[CPZoneFilter findBackgroundGraphicsInZone:](self, "findBackgroundGraphicsInZone:", [v13 objectAtIndex:v12++]);
    }

    while (v11 != v12);
  }
}

- (void)filterZonesInZone:(id)zone
{
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(zone, "count")}];
  [zone childrenOfClass:objc_opt_class() into:v5];
  v6 = [v5 count];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v15 = 0;
  v9 = 0;
  v10 = v6;
  do
  {
    v11 = [v5 objectAtIndex:v8];
    if ([v11 hasRotatedCharacters])
    {
      goto LABEL_10;
    }

    if (![v11 firstDescendantOfClass:objc_opt_class()])
    {
      deZoneDescendantsOf(v11);
LABEL_9:
      [v11 promoteChildren];
      [v11 remove];
      goto LABEL_10;
    }

    [v11 area];
    if (v12 >= self->minArea)
    {
      ++v9;
      [(CPZoneFilter *)self filterZonesInZone:v11];
    }

    else
    {
      deZoneDescendantsOf(v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 promoteChildren];
        [v11 remove];
      }

      else
      {
        ++v15;
      }
    }

    if (v7 == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = 0;
          goto LABEL_9;
        }
      }
    }

LABEL_10:
    ++v8;
  }

  while (v7 != v8);
  if (v9 < v15)
  {
    for (i = 0; i != v10; ++i)
    {
      v14 = [v5 objectAtIndex:i];
      if ([v14 parent] && (objc_msgSend(v14, "hasRotatedCharacters") & 1) == 0)
      {
        [v14 promoteChildren];
        [v14 remove];
      }
    }
  }

LABEL_24:

  deZoneTablesIn(zone);
}

- (CPZoneFilter)initWithPage:(id)page
{
  v9.receiver = self;
  v9.super_class = CPZoneFilter;
  v4 = [(CPZoneFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->page = page;
    [page pageCropBox];
    v5->minArea = v6 * v7 * 0.04;
  }

  return v5;
}

+ (void)filterZonesInPage:(id)page
{
  v4 = [page firstDescendantOfClass:objc_opt_class()];
  if (v4)
  {
    v5 = v4;
    v6 = [[CPZoneFilter alloc] initWithPage:page];
    [(CPZoneFilter *)v6 filterZonesInZone:v5];
    [(CPZoneFilter *)v6 findBackgroundGraphicsInZone:v5];
    [(CPZoneFilter *)v6 findUsedGraphicsInZone:v5];
  }
}

@end