@interface BEJavascriptUtilities
+ (CGRect)rectFromRectDictionary:(id)a3;
+ (CGSize)_sizeFromArray:(id)a3;
+ (CGSize)sizeFromJSON:(id)a3;
+ (double)floatFromJSON:(id)a3;
+ (id)_combinedRectsOnSameLineWhichAreNearby:(id)a3 isVerticalDocument:(BOOL)a4;
+ (id)_filteredRectsFromArrayOfRects:(id)a3;
+ (id)_reduceRectArrayToContainedRects:(id)a3 isVerticalDocument:(BOOL)a4;
+ (id)collapsedLineRectsFromArrayOfRectDictionaries:(id)a3 isVerticalDocument:(BOOL)a4 needsFiltering:(BOOL)a5;
+ (id)collapsedLineRectsFromArrayOfRects:(id)a3 isVerticalDocument:(BOOL)a4 needsFiltering:(BOOL)a5 wordSpacingMultiplier:(double)a6;
+ (id)keyedRectFromKeyedDOMRect:(id)a3;
+ (id)keyedRectsFromKeyedDOMRects:(id)a3;
@end

@implementation BEJavascriptUtilities

+ (CGSize)_sizeFromArray:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  [a1 floatFromJSON:v5];
  v7 = v6;

  v8 = [v4 lastObject];

  [a1 floatFromJSON:v8];
  v10 = v9;

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (double)floatFromJSON:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    objc_opt_class();
    v8 = BUDynamicCast();
    v9 = v8;
    if (v8)
    {
      [v8 doubleValue];
      v7 = v10;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

+ (CGSize)sizeFromJSON:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();
  if (v5)
  {
    [a1 _sizeFromArray:v5];
    width = v6;
    height = v8;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    objc_opt_class();
    v10 = BUDynamicCast();
    v11 = v10;
    if (v10)
    {
      v12 = [v10 dataUsingEncoding:4];
      v13 = [NSJSONSerialization JSONObjectWithData:v12 options:0 error:0];

      objc_opt_class();
      v14 = BUDynamicCast();
      if (v14)
      {
        [a1 _sizeFromArray:0];
        width = v15;
        height = v16;
      }
    }
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

+ (CGRect)rectFromRectDictionary:(id)a3
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v7 = a3;
  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:@"left"];
  v9 = BUDynamicCast();

  objc_opt_class();
  v10 = [v7 objectForKeyedSubscript:@"top"];
  v11 = BUDynamicCast();

  objc_opt_class();
  v12 = [v7 objectForKeyedSubscript:@"width"];
  v13 = BUDynamicCast();

  objc_opt_class();
  v14 = [v7 objectForKeyedSubscript:@"height"];

  v15 = BUDynamicCast();

  if (v9 && v11 && v13 && v15)
  {
    [v9 doubleValue];
    x = v16;
    [v11 doubleValue];
    y = v17;
    [v13 doubleValue];
    width = v18;
    [v15 doubleValue];
    height = v19;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (id)keyedRectFromKeyedDOMRect:(id)a3
{
  v3 = a3;
  v4 = [v3 allKeys];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v15}];
        v13 = sub_5090(v12, v12);

        if (v13)
        {
          [v5 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)keyedRectsFromKeyedDOMRects:(id)a3
{
  v3 = a3;
  v4 = [v3 allKeys];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v15}];
        v13 = sub_52A4(v12, v12);

        if (v13)
        {
          [v5 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)collapsedLineRectsFromArrayOfRectDictionaries:(id)a3 isVerticalDocument:(BOOL)a4 needsFiltering:(BOOL)a5
{
  v21 = a5;
  v5 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [a1 rectFromRectDictionary:*(*(&v23 + 1) + 8 * i)];
        x = v29.origin.x;
        y = v29.origin.y;
        width = v29.size.width;
        height = v29.size.height;
        if (!CGRectIsNull(v29))
        {
          *v22 = x;
          *&v22[1] = y;
          *&v22[2] = width;
          *&v22[3] = height;
          v18 = [NSValue valueWithBytes:v22 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v8 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v19 = [BEJavascriptUtilities collapsedLineRectsFromArrayOfRects:v8 isVerticalDocument:v5 needsFiltering:v21 wordSpacingMultiplier:0.0];

  return v19;
}

+ (id)_filteredRectsFromArrayOfRects:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableIndexSet indexSet];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v40;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v39 + 1) + 8 * i) CGRectValue];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v19 = v5;
        v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v36;
          do
          {
            for (j = 0; j != v21; j = j + 1)
            {
              if (*v36 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [*(*(&v35 + 1) + 8 * j) CGRectValue];
              v47.origin.x = v24;
              v47.origin.y = v25;
              v47.size.width = v26;
              v28 = v27;
              v46.origin.x = v12;
              v46.origin.y = v14;
              v46.size.width = v16;
              v46.size.height = v18;
              v47.size.height = v28;
              v29 = CGRectIntersectsRect(v46, v47);
              v30 = v28 * 1.5;
              if (v29 && v18 > v28 && v18 > v30)
              {
                [v4 addIndex:{v8, v30}];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v21);
        }

        ++v8;
      }

      v7 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  v33 = [v5 mutableCopy];
  [v33 removeObjectsAtIndexes:v4];

  return v33;
}

+ (id)collapsedLineRectsFromArrayOfRects:(id)a3 isVerticalDocument:(BOOL)a4 needsFiltering:(BOOL)a5 wordSpacingMultiplier:(double)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = v9;
  if (a6 == 0.0)
  {
    v11 = 200.0;
  }

  else
  {
    v11 = a6 * 200.0;
  }

  if (v11 <= [v9 count])
  {
    v13 = &__NSArray0__struct;
  }

  else
  {
    if (v7)
    {
      v12 = [BEJavascriptUtilities _filteredRectsFromArrayOfRects:v10];
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    v15 = [BEJavascriptUtilities _reduceRectArrayToContainedRects:v14 isVerticalDocument:v8];
    v13 = [BEJavascriptUtilities _combinedRectsOnSameLineWhichAreNearby:v15 isVerticalDocument:v8];
  }

  return v13;
}

+ (id)_combinedRectsOnSameLineWhichAreNearby:(id)a3 isVerticalDocument:(BOOL)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  if ([v5 count])
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    height = v14;

    v16 = [v5 objectAtIndexedSubscript:0];
    [v6 setObject:v16 atIndexedSubscript:0];

    if ([v5 count] >= 2)
    {
      v17 = 1;
      v18 = 1;
      do
      {
        v19 = [v5 objectAtIndexedSubscript:v18];
        [v19 CGRectValue];
        x = v20;
        y = v21;
        width = v22;
        rect = v23;
        if (a4)
        {
          MinX = CGRectGetMinX(*&v20);
          v39.origin.x = v9;
          v39.origin.y = v11;
          v39.size.width = v13;
          v39.size.height = height;
          if (MinX != CGRectGetMinX(v39))
          {
            goto LABEL_13;
          }

          v40.origin.x = v9;
          v40.origin.y = v11;
          v40.size.width = v13;
          v40.size.height = height;
          MaxY = CGRectGetMaxY(v40);
          v41.origin.x = x;
          v41.origin.y = y;
          v41.size.width = width;
          v41.size.height = rect;
          if (vabdd_f64(MaxY, CGRectGetMinY(v41)) >= 15.0)
          {
            goto LABEL_13;
          }

          v42.origin.x = v9;
          v42.origin.y = v11;
          v42.size.width = v13;
          v42.size.height = height;
          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = width;
          v51.size.height = rect;
          v43 = CGRectUnion(v42, v51);
          x = v43.origin.x;
          y = v43.origin.y;
          width = v43.size.width;
          height = v43.size.height;
          v36 = v43;
          v29 = &v36;
        }

        else
        {
          MinY = CGRectGetMinY(*&v20);
          v44.origin.x = v9;
          v44.origin.y = v11;
          v44.size.width = v13;
          v44.size.height = height;
          if (MinY != CGRectGetMinY(v44) || (v45.origin.x = v9, v45.origin.y = v11, v45.size.width = v13, v45.size.height = height, MaxX = CGRectGetMaxX(v45), v46.origin.x = x, v46.origin.y = y, v46.size.width = width, v46.size.height = rect, vabdd_f64(MaxX, CGRectGetMinX(v46)) >= 15.0) && (v47.origin.x = v9, v47.origin.y = v11, v47.size.width = v13, v47.size.height = height, v32 = CGRectGetMinX(v47), v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = rect, vabdd_f64(v32, CGRectGetMaxX(v48)) >= 15.0))
          {
LABEL_13:
            [v6 setObject:v19 atIndexedSubscript:v17++];
            height = rect;
            goto LABEL_14;
          }

          v49.origin.x = v9;
          v49.origin.y = v11;
          v49.size.width = v13;
          v49.size.height = height;
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = rect;
          v50 = CGRectUnion(v49, v52);
          x = v50.origin.x;
          y = v50.origin.y;
          width = v50.size.width;
          height = v50.size.height;
          v37 = v50;
          v29 = &v37;
        }

        v33 = [NSValue valueWithBytes:v29 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v6 setObject:v33 atIndexedSubscript:v17 - 1];

LABEL_14:
        ++v18;
        v9 = x;
        v11 = y;
        v13 = width;
      }

      while (v18 < [v5 count]);
    }
  }

  return v6;
}

+ (id)_reduceRectArrayToContainedRects:(id)a3 isVerticalDocument:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v64;
    v49 = v6;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v63 + 1) + 8 * i);
        [v12 CGRectValue];
        x = v70.origin.x;
        y = v70.origin.y;
        width = v70.size.width;
        height = v70.size.height;
        if (CGRectGetWidth(v70) > 1.0)
        {
          v71.origin.x = x;
          v71.origin.y = y;
          v71.size.width = width;
          v71.size.height = height;
          if (CGRectGetHeight(v71) > 1.0)
          {
            v57 = y;
            v58 = x;
            rect1 = width;
            v17 = x;
            v18 = y;
            v19 = width;
            v20 = height;
            if (v4)
            {
              MinY = CGRectGetMinY(*&v17);
              v72.origin.x = x;
              v72.origin.y = y;
              v72.size.width = width;
              v72.size.height = height;
              MaxY = CGRectGetMaxY(v72);
              v21 = 5.0;
              v22 = 0.0;
            }

            else
            {
              MinY = CGRectGetMinX(*&v17);
              v73.origin.x = x;
              v73.origin.y = y;
              v73.size.width = width;
              v73.size.height = height;
              MaxY = CGRectGetMaxX(v73);
              v21 = 0.0;
              v22 = 5.0;
            }

            v74.origin.x = x;
            v74.origin.y = y;
            v74.size.width = width;
            v23 = height;
            v74.size.height = height;
            v75 = CGRectInset(v74, v21, v22);
            v52 = v75.origin.y;
            v53 = v75.origin.x;
            v50 = v75.size.height;
            v51 = v75.size.width;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v24 = v7;
            v25 = v7;
            v26 = [v25 countByEnumeratingWithState:&v59 objects:v67 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v60;
              do
              {
                for (j = 0; j != v27; j = j + 1)
                {
                  if (*v60 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  [*(*(&v59 + 1) + 8 * j) CGRectValue];
                  v30 = v76.origin.x;
                  v31 = v76.origin.y;
                  v32 = v76.size.width;
                  v33 = v76.size.height;
                  if (CGRectGetWidth(v76) > 1.0)
                  {
                    v77.origin.x = v30;
                    v77.origin.y = v31;
                    v77.size.width = v32;
                    v77.size.height = v33;
                    if (CGRectGetHeight(v77) > 1.0)
                    {
                      v78.origin.y = v57;
                      v78.origin.x = v58;
                      v78.size.width = rect1;
                      v78.size.height = v23;
                      v84.origin.x = v30;
                      v84.origin.y = v31;
                      v84.size.width = v32;
                      v84.size.height = v33;
                      if (!CGRectEqualToRect(v78, v84))
                      {
                        v34 = v30;
                        v35 = v31;
                        v36 = v32;
                        v37 = v33;
                        if (v4)
                        {
                          MinX = CGRectGetMinY(*&v34);
                          v79.origin.x = v30;
                          v79.origin.y = v31;
                          v79.size.width = v32;
                          v79.size.height = v33;
                          MaxX = CGRectGetMaxY(v79);
                          v40 = 5.0;
                          v41 = 0.0;
                        }

                        else
                        {
                          MinX = CGRectGetMinX(*&v34);
                          v80.origin.x = v30;
                          v80.origin.y = v31;
                          v80.size.width = v32;
                          v80.size.height = v33;
                          MaxX = CGRectGetMaxX(v80);
                          v40 = 0.0;
                          v41 = 5.0;
                        }

                        v81.origin.x = v30;
                        v81.origin.y = v31;
                        v81.size.width = v32;
                        v81.size.height = v33;
                        v82 = CGRectInset(v81, v40, v41);
                        v42 = v82.origin.x;
                        v43 = v82.origin.y;
                        v44 = v82.size.width;
                        v45 = v82.size.height;
                        if (MinY <= MinX && MaxY >= MaxX)
                        {
                          v83.origin.y = v52;
                          v83.origin.x = v53;
                          v83.size.height = v50;
                          v83.size.width = v51;
                          if (CGRectIntersectsRect(v83, *&v42) && (MinY != MinX || MaxY != MaxX))
                          {

                            v7 = v24;
                            v6 = v49;
                            goto LABEL_36;
                          }
                        }
                      }
                    }
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v59 objects:v67 count:16];
              }

              while (v27);
            }

            v7 = v24;
            v6 = v49;
          }
        }

        [v6 addObject:v12];
LABEL_36:
        ;
      }

      v9 = [v7 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v9);
  }

  return v6;
}

@end