@interface CPLayoutMaker
- (BOOL)column:(id)a3 fits:(id)a4;
- (void)makeLayouts:(id)a3 from:(id)a4;
@end

@implementation CPLayoutMaker

- (void)makeLayouts:(id)a3 from:(id)a4
{
  [a4 sortUsingSelector:sel_compareTopDescending_];
  v7 = [a4 count];
  v8 = v7;
  if (v7)
  {
    v9 = objc_alloc_init(CPLayoutArea);
    -[CPLayoutArea setHasRotatedCharacters:](v9, "setHasRotatedCharacters:", [a3 hasRotatedCharacters]);
    [a3 add:v9];

    v10 = 0;
    do
    {
      v11 = [a4 objectAtIndex:v10];
      if (![(CPLayoutMaker *)self column:v11 fits:v9])
      {
        [(CPChunk *)v9 sortUsingSelector:sel_compareX_];
        v9 = objc_alloc_init(CPLayoutArea);
        -[CPLayoutArea setHasRotatedCharacters:](v9, "setHasRotatedCharacters:", [a3 hasRotatedCharacters]);
        [a3 add:v9];
      }

      [(CPChunk *)v9 add:v11];
      ++v10;
    }

    while (v8 != v10);

    [(CPChunk *)v9 sortUsingSelector:sel_compareX_];
  }
}

- (BOOL)column:(id)a3 fits:(id)a4
{
  v6 = [a4 count];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  [a3 normalizedBounds];
  v12 = v8;
  rect1 = v9;
  v13 = v10;
  v14 = v11;
  if (v10 < 0.0 || v11 < 0.0)
  {
    v15 = CGRectStandardize(*&v8);
    v38.origin.x = v12;
    v38.origin.y = rect1;
    v38.size.width = v13;
    v38.size.height = v14;
    v39 = CGRectStandardize(v38);
    v36 = v39.origin.x + v39.size.width;
    v39.origin.x = v12;
    v39.origin.y = rect1;
    v39.size.width = v13;
    v39.size.height = v14;
    *(&v9 - 1) = CGRectStandardize(v39);
  }

  else
  {
    v36 = v8 + v10;
    *&v15 = v8;
  }

  v16 = 0;
  v34 = v14;
  v35 = v9 + v11;
  v33 = v13;
  while (1)
  {
    v17 = *&v15;
    [objc_msgSend(a4 childAtIndex:{v16), "normalizedBounds"}];
    v19 = v18;
    y = v20;
    v23 = v22;
    v25 = v24;
    v40.origin.x = v12;
    v40.origin.y = rect1;
    v40.size.width = v13;
    v40.size.height = v14;
    v46.origin.x = v19;
    v46.origin.y = y;
    v46.size.width = v23;
    v46.size.height = v25;
    if (CGRectIntersectsRect(v40, v46))
    {
      break;
    }

    if (v23 < 0.0 || v25 < 0.0)
    {
      v27 = v12;
      v41.origin.x = v19;
      v41.origin.y = y;
      v41.size.width = v23;
      v41.size.height = v25;
      v28 = COERCE_DOUBLE(CGRectStandardize(v41));
      v42.origin.x = v19;
      v42.origin.y = y;
      v42.size.width = v23;
      v42.size.height = v25;
      v43 = CGRectStandardize(v42);
      v26 = v43.origin.x + v43.size.width;
      if (v17 >= v28 && v17 <= v26)
      {
        return 0;
      }

      v44.origin.x = v19;
      v44.origin.y = y;
      v44.size.width = v23;
      v44.size.height = v25;
      v45 = CGRectStandardize(v44);
      y = v45.origin.y;
      v19 = v28;
      v12 = v27;
      v13 = v33;
      *&v15 = v17;
    }

    else
    {
      v26 = v19 + v23;
      *&v15 = v17;
      if (v17 >= v19 && v17 <= v26)
      {
        return 0;
      }
    }

    if (v36 <= v26 && v36 >= v19 || v35 < y)
    {
      return 0;
    }

    v16 = (v16 + 1);
    v14 = v34;
    if (v7 == v16)
    {
      return 1;
    }
  }

  return 0;
}

@end