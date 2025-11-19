@interface CPColumnMaker
- (BOOL)closeImagesBetween:(id)a3 and:(id)a4 bounds:(CGRect)a5;
- (BOOL)column:(id)a3 isLinkedBelowTo:(id)a4;
- (BOOL)cuttingShapeBetween:(id)a3 and:(id)a4;
- (BOOL)intervalOverlapLeft:(double)a3 right:(double)a4 paragraphs:(id)a5;
- (BOOL)paragraph:(id)a3 isAbove:(id)a4;
- (BOOL)paragraph:(id)a3 isBelow:(id)a4;
- (BOOL)paragraph:(id)a3 isLinkedBelowTo:(id)a4;
- (BOOL)paragraph:(id)a3 notOnSameShapeAs:(id)a4;
- (CGRect)pageBounds;
- (CPColumnMaker)init;
- (double)averageSpacing:(id)a3;
- (id)chunkAbove:(id)a3 in:(id)a4;
- (id)paragraphAbove:(id)a3 in:(id)a4;
- (id)paragraphBelow:(id)a3 in:(id)a4;
- (void)anchorImages;
- (void)callOuts;
- (void)dealloc;
- (void)intersectionCallout:(id)a3;
- (void)makeColumnsFrom:(id)a3 zone:(id)a4;
- (void)partitionShapes:(id)a3;
- (void)splitColumns:(id)a3;
@end

@implementation CPColumnMaker

- (CGRect)pageBounds
{
  objc_copyStruct(v6, &self->pageBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)makeColumnsFrom:(id)a3 zone:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = [a3 count];
  v8 = v7;
  if (v7)
  {
    v9 = [a3 count];
    if ((v9 * -0.01 + 15.0) / 100.0 >= 0.0)
    {
      v10 = (v9 * -0.01 + 15.0) / 100.0;
    }

    else
    {
      v10 = 0.0;
    }

    width = self->pageBounds.size.width;
    height = self->pageBounds.size.height;
    if (width < 0.0 || height < 0.0)
    {
      x = self->pageBounds.origin.x;
      y = self->pageBounds.origin.y;
      *(&height - 3) = CGRectStandardize(*(&width - 2));
    }

    self->maxParagraphDistance = v10 * height;
    self->currentZone = a4;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [objc_msgSend(a4 "page")];
    if (v16 <= 0.8)
    {
      [a4 descendantsOfClass:objc_opt_class() to:v15];
    }

    [(CPColumnMaker *)self partitionShapes:v15];

    self->images = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a4 descendantsOfClass:objc_opt_class() to:self->images];
    [(NSMutableArray *)self->images sortUsingSelector:sel_compareZDescending_];
    self->allParagraphs = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:a3];
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:a3];
    [(NSMutableArray *)self->allParagraphs sortUsingSelector:sel_compareY_];
    [v17 sortUsingSelector:sel_compareTopDescending_];
    v18 = 0;
    self->paragraphWrappers = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    do
    {
      v19 = -[CPParagraphFlow initWithParagraph:]([CPParagraphFlow alloc], "initWithParagraph:", [a3 objectAtIndex:v18]);
      [(NSMutableArray *)self->paragraphWrappers addObject:v19];
      [(CPParagraphFlow *)v19 setParagraphsAboveIn:self->allParagraphs];
      [(CPParagraphFlow *)v19 setParagraphsBelowIn:v17];

      ++v18;
    }

    while (v8 != v18);

    [(NSMutableArray *)self->allParagraphs sortUsingSelector:sel_compareX_];
    v20 = [(NSMutableArray *)self->paragraphWrappers count];
    v21 = v20;
    if (v20)
    {
      v22 = 0;
      do
      {
        v23 = [(NSMutableArray *)self->paragraphWrappers objectAtIndex:v22];
        [v23 setParagraphsLeftIn:self->allParagraphs];
        [v23 setParagraphsRightIn:self->allParagraphs];
        ++v22;
      }

      while (v21 != v22);
    }

    [(CPColumnMaker *)self callOuts];
    [(NSMutableArray *)self->paragraphWrappers sortUsingSelector:sel_topDescending_];
    self->columns = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v26 = [(NSMutableArray *)self->paragraphWrappers objectAtIndex:i];
        if (![v26 calloutType] && (objc_msgSend(v26, "placed") & 1) == 0)
        {
          v27 = objc_alloc_init(CPColumn);
          [v24 addObject:v27];

          -[CPChunk add:](v27, "add:", [v26 paragraph]);
          [v26 setPlaced:1];
          v28 = [v26 nextParagraphInColumn:v27];
          if (v28)
          {
            v29 = v28;
            do
            {
              if (![(CPColumnMaker *)self canSafelyAdd:v29 to:v27])
              {
                break;
              }

              v30 = [v29 flowProperties];
              if (![v30 calloutType] && (objc_msgSend(v30, "placed") & 1) == 0)
              {
                [(CPChunk *)v27 add:v29];
                [v30 setPlaced:1];
              }

              v29 = [v30 nextParagraphInColumn:v27];
            }

            while (v29);
          }
        }
      }
    }

    [(CPColumnMaker *)self splitColumns:v24];

    [(CPColumnMaker *)self anchorImages];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    columns = self->columns;
    v32 = [(NSMutableArray *)columns countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v46;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(columns);
          }

          v36 = *(*(&v45 + 1) + 8 * j);
          if ([v36 count])
          {
            [a4 add:v36];
          }
        }

        v33 = [(NSMutableArray *)columns countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v33);
    }

    v37 = [(NSMutableArray *)self->paragraphWrappers count];
    v38 = v37;
    if (v37)
    {
      v39 = 0;
      do
      {
        v40 = [(NSMutableArray *)self->paragraphWrappers objectAtIndex:v39];
        if ([v40 calloutType])
        {
          v41 = objc_alloc_init(CPColumn);
          [(NSMutableArray *)self->columns addObject:v41];
          [a4 add:v41];

          -[CPChunk add:](v41, "add:", [v40 paragraph]);
        }

        ++v39;
      }

      while (v38 != v39);
    }

    v42 = [(NSMutableArray *)self->columns count];
    v43 = v42;
    if (v42)
    {
      v44 = 0;
      do
      {
        [-[NSMutableArray objectAtIndex:](self->columns objectAtIndex:{v44++), "sortUsingSelector:", sel_compareTopDescending_}];
      }

      while (v43 != v44);
    }

    [objc_msgSend(a4 "page")];
  }
}

- (void)anchorImages
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->columns count];
  if (([(NSMutableArray *)self->images count]+ v3) <= 0xC8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->columns;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v33;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v33 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          images = self->images;
          v10 = [(NSMutableArray *)images countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v29;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v29 != v12)
                {
                  objc_enumerationMutation(images);
                }

                v14 = *(*(&v28 + 1) + 8 * j);
                [v14 top];
                v16 = v15;
                [v8 bottom];
                if (v16 <= v17)
                {
                  [v8 bottom];
                  v19 = v18;
                  [v14 top];
                  if (v19 - v20 <= self->maxParagraphDistance)
                  {
                    [v14 left];
                    v22 = v21;
                    [v8 left];
                    if (v22 >= v23)
                    {
                      [v14 right];
                      v25 = v24;
                      [v8 right];
                      if (v25 <= v26)
                      {
                        [v14 setAnchoringParagraph:{objc_msgSend(v8, "lastChild")}];
                      }
                    }
                  }
                }
              }

              v11 = [(NSMutableArray *)images countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v11);
          }
        }

        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v5);
    }
  }
}

- (void)splitColumns:(id)a3
{
  v41 = [a3 count];
  if (v41)
  {
    v4 = 0;
    do
    {
      v5 = [a3 objectAtIndex:{v4, v41}];
      [v5 normalizedBounds];
      v45 = v7;
      v46 = v6;
      v43 = v9;
      v44 = v8;
      v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:{objc_msgSend(v5, "children")}];
      v11 = objc_alloc_init(CPColumn);
      v12 = [v10 count];
      if (v12 != 1)
      {
        v13 = v12;
        for (i = 1; i != v13; ++i)
        {
          v15 = [v10 objectAtIndex:i - 1];
          [(CPChunk *)v11 add:v15];
          v16 = [v10 objectAtIndex:i];
          [v15 normalizedBounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          [v16 normalizedBounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;
          if (v22 < 0.0 || v24 < 0.0)
          {
            v47.origin.x = v18;
            v47.origin.y = v20;
            v47.size.width = v22;
            v47.size.height = v24;
            *&v25 = CGRectStandardize(v47);
            v20 = v33;
          }

          if (v30 < 0.0 || v32 < 0.0)
          {
            v48.origin.x = v26;
            v48.origin.y = v28;
            v48.size.width = v30;
            v48.size.height = v32;
            *&v25 = CGRectStandardize(v48);
            v28 = v34;
            v32 = v35;
          }

          [(CPColumnMaker *)self averageSpacing:v15, v25];
          v37 = v36;
          [(CPColumnMaker *)self averageSpacing:v16];
          v39 = fmax(v37, v38);
          v40 = 1.0;
          if (v39 > 20.0)
          {
            v40 = v39 / 12.0 * 5.0 / 100.0 + 1.0;
          }

          if (vabdd_f64(v20, v28 + v32) > v40 * self->maxParagraphDistance && !-[CPColumnMaker closeImagesBetween:and:bounds:](self, "closeImagesBetween:and:bounds:", v15, [v10 objectAtIndex:i], v46, v45, v44, v43))
          {
            [(NSMutableArray *)self->columns addObject:v11];

            v11 = objc_alloc_init(CPColumn);
          }
        }
      }

      -[CPChunk add:](v11, "add:", [v10 lastObject]);
      [(NSMutableArray *)self->columns addObject:v11];

      ++v4;
    }

    while (v4 != v41);
  }
}

- (double)averageSpacing:(id)a3
{
  v4 = [a3 count];
  if (!v4)
  {
    return 0.0;
  }

  if (v4 == 1)
  {
    [a3 normalizedBounds];
    if (v7 < 0.0 || v8 < 0.0)
    {
      *(&v8 - 3) = CGRectStandardize(*&v5);
    }
  }

  else
  {
    v9 = 0;
    v10 = v4;
    v11 = v4 - 1;
    v12 = 0.0;
    do
    {
      v13 = v9 + 1;
      [objc_msgSend(a3 "childAtIndex:"baseline"")];
      v15 = v14;
      [objc_msgSend(a3 childAtIndex:{v13), "baseline"}];
      v12 = v12 + v15 - v16;
      v9 = v13;
    }

    while (v11 != v13);
    return v12 / v10;
  }

  return v8;
}

- (BOOL)closeImagesBetween:(id)a3 and:(id)a4 bounds:(CGRect)a5
{
  r2_16 = a5.size.width;
  r2_24 = a5.size.height;
  r2_8 = a5.origin.y;
  x = a5.origin.x;
  v83 = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  [a3 normalizedBounds];
  v11 = v10;
  v68 = v12;
  v14 = v13;
  rect_8 = v15;
  [a4 normalizedBounds];
  rect = v16;
  rect_24 = v18;
  v67 = v17;
  rect_16 = v19;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  images = self->images;
  v21 = [(NSMutableArray *)images countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (!v21)
  {
    goto LABEL_29;
  }

  v22 = v21;
  v61 = v11;
  v62 = v14;
  v23 = *v78;
  v24 = 0.0;
  v25 = 0.0;
  v26 = INFINITY;
  r2 = INFINITY;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v78 != v23)
      {
        objc_enumerationMutation(images);
      }

      v28 = *(*(&v77 + 1) + 8 * i);
      [v28 bounds];
      v85 = CGRectInset(v84, 2.0, 2.0);
      v29 = v85.origin.x;
      y = v85.origin.y;
      width = v85.size.width;
      height = v85.size.height;
      v85.origin.x = x;
      v85.origin.y = r2_8;
      v85.size.width = r2_16;
      v85.size.height = r2_24;
      v92.origin.x = v29;
      v92.origin.y = y;
      v92.size.width = width;
      v92.size.height = height;
      if (CGRectContainsRect(v85, v92))
      {
        [v9 addObject:v28];
        v86.origin.x = v29;
        v86.origin.y = y;
        v86.size.width = width;
        v86.size.height = height;
        v93.origin.x = r2;
        v93.origin.y = v26;
        v93.size.width = v25;
        v93.size.height = v24;
        v87 = CGRectUnion(v86, v93);
        r2 = v87.origin.x;
        v26 = v87.origin.y;
        v25 = v87.size.width;
        v24 = v87.size.height;
      }
    }

    v22 = [(NSMutableArray *)images countByEnumeratingWithState:&v77 objects:v82 count:16];
  }

  while (v22);
  if (v25 == 0.0)
  {
    goto LABEL_29;
  }

  v33 = v25;
  [v9 sortUsingSelector:sel_compareTopDescending_];
  v34 = [v9 count];
  v35 = 1;
  v36 = v68;
  while (v34 != v35)
  {
    v37 = [v9 objectAtIndex:v35 - 1];
    v38 = [v9 objectAtIndex:v35];
    [v37 bottom];
    v40 = v39;
    [v38 top];
    ++v35;
    if (v40 - v41 > self->maxParagraphDistance)
    {
      goto LABEL_29;
    }
  }

  v42 = rect_8;
  if (v62 < 0.0 || rect_8 < 0.0)
  {
    v43 = v61;
    v44 = v62;
    v45 = v68;
    v88 = CGRectStandardize(*(&v42 - 3));
    v36 = v88.origin.y;
  }

  if (v33 < 0.0 || v24 < 0.0)
  {
    v89.origin.x = r2;
    v89.origin.y = v26;
    v89.size.width = v33;
    v89.size.height = v24;
    v90 = CGRectStandardize(v89);
    v46 = v36 - (v90.origin.y + v90.size.height);
    v90.origin.x = r2;
    v90.origin.y = v26;
    v90.size.width = v33;
    v90.size.height = v24;
    v91 = CGRectStandardize(v90);
    v26 = v91.origin.y;
  }

  else
  {
    v46 = v36 - (v26 + v24);
  }

  v48 = rect_24;
  v47 = v67;
  v49 = rect_16;
  if (rect_16 < 0.0 || rect_24 < 0.0)
  {
    v50 = rect;
    *(&v47 - 1) = CGRectStandardize(*(&v47 - 1));
  }

  v51 = v47 + v48;
  maxParagraphDistance = self->maxParagraphDistance;
  v53 = v26 - v51;
  if (v46 < maxParagraphDistance && v53 < maxParagraphDistance)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v57 = [v9 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v74;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v74 != v59)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v73 + 1) + 8 * j) setAnchoringParagraph:a3];
        }

        v58 = [v9 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v58);
    }

    v55 = 1;
  }

  else
  {
LABEL_29:
    v55 = 0;
  }

  return v55;
}

- (void)callOuts
{
  v3 = [(NSMutableArray *)self->paragraphWrappers count];
  if ((v3 & 0xFFFFFFFE) != 0)
  {
    v4 = v3;
    [-[CPObject page](self->currentZone "page")];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = 0;
    v14 = v4;
    v15 = fmin(v9, v11) < 0.0;
    v16 = v7 + v11;
    do
    {
      v17 = [(NSMutableArray *)self->paragraphWrappers objectAtIndex:v13];
      [objc_msgSend(objc_msgSend(v17 "paragraph")];
      v19 = v18;
      if (v15)
      {
        v74.origin.x = v6;
        v74.origin.y = v8;
        v74.size.width = v10;
        v74.size.height = v12;
        v75 = CGRectStandardize(v74);
        v20 = v75.origin.y + v75.size.height - v19;
        v75.origin.x = v6;
        v75.origin.y = v8;
        v75.size.width = v10;
        v75.size.height = v12;
        v76 = CGRectStandardize(v75);
      }

      else
      {
        v20 = v16 - v18;
        v76.size.height = v12;
      }

      if (v20 > v76.size.height * 0.1)
      {
        break;
      }

      if ([objc_msgSend(v17 "paragraph")] == 1 && !objc_msgSend(v17, "inOrder"))
      {
        if (!CheckParagraphUnilined(v17))
        {
          break;
        }

        [v17 dBelow];
        v22 = v21;
        if (![v17 outOrder])
        {
          goto LABEL_16;
        }

        if ([v17 outOrder] >= 1)
        {
          [objc_msgSend(v17 "paragraph")];
          if (v25 < 0.0 || v26 < 0.0)
          {
            *(&v26 - 3) = CGRectStandardize(*&v23);
          }

          if (v22 > v26)
          {
LABEL_16:
            [v17 setCalloutType:1];
          }
        }
      }

      ++v13;
    }

    while (v4 != v13);
    v27 = v4 - 1;
    do
    {
      v28 = [(NSMutableArray *)self->paragraphWrappers objectAtIndex:v27];
      [objc_msgSend(v28 "paragraph")];
      if (v31 < 0.0 || v32 < 0.0)
      {
        *(&v30 - 1) = CGRectStandardize(*&v29);
      }

      v33 = v30 + v32;
      if (v15)
      {
        v77.origin.x = v6;
        v77.origin.y = v8;
        v77.size.width = v10;
        v77.size.height = v12;
        v78 = CGRectStandardize(v77);
        v34 = v33 - v78.origin.y;
        v78.origin.x = v6;
        v78.origin.y = v8;
        v78.size.width = v10;
        v78.size.height = v12;
        v79 = CGRectStandardize(v78);
      }

      else
      {
        v34 = v33 - v8;
        v79.size.height = v12;
      }

      if (v34 > v79.size.height * 0.1)
      {
        break;
      }

      if ([objc_msgSend(v28 "paragraph")] == 1 && !objc_msgSend(v28, "outOrder"))
      {
        [v28 dAbove];
        v36 = v35;
        if (![v28 inOrder])
        {
          goto LABEL_36;
        }

        if ([v28 inOrder] >= 1)
        {
          [objc_msgSend(v28 "paragraph")];
          if (v39 < 0.0 || v40 < 0.0)
          {
            *(&v40 - 3) = CGRectStandardize(*&v37);
          }

          if (v36 > v40)
          {
            goto LABEL_36;
          }
        }

        if ([v28 inOrder] > 1 || (v41 = objc_msgSend(objc_msgSend(v28, "paragraphsAbove"), "objectAtIndex:", 0), objc_msgSend(v41, "alignment"), objc_msgSend(v41, "left"), v43 = v42, objc_msgSend(v41, "right"), objc_msgSend(v41, "center"), objc_msgSend(objc_msgSend(v28, "paragraph"), "left"), v45 = v44, objc_msgSend(objc_msgSend(v28, "paragraph"), "right"), objc_msgSend(objc_msgSend(v28, "paragraph"), "center"), vabdd_f64(v43, v45) > 1.0))
        {
LABEL_36:
          if (!CheckParagraphUnilined(v28))
          {
            break;
          }

          [v28 setCalloutType:1];
        }
      }

      --v27;
    }

    while (v27);
    for (i = 0; v14 != i; ++i)
    {
      v47 = [(NSMutableArray *)self->paragraphWrappers objectAtIndex:i];
      if (![v47 calloutType])
      {
        if (![v47 inOrder] && objc_msgSend(v47, "outOrder") == 2)
        {
          [objc_msgSend(v47 "paragraph")];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;
          [v47 belowBounds];
          x = v56;
          v73 = v58;
          v60 = v59;
          v62 = v61;
          v63 = fmin(v53, v55);
          v64 = v63 < 0.0;
          v65 = v49;
          if (v63 < 0.0)
          {
            v80.origin.x = v49;
            v80.origin.y = v51;
            v80.size.width = v53;
            v80.size.height = v55;
            *&v65 = CGRectStandardize(v80);
          }

          v66 = fmin(v60, v62);
          v67 = v66 < 0.0;
          v72 = x;
          if (v66 >= 0.0)
          {
            v68 = v65 - x;
            v83.size.width = v60;
            if (v64)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v81.origin.x = x;
            v81.origin.y = v73;
            v81.size.width = v60;
            v81.size.height = v62;
            v68 = v65 - COERCE_DOUBLE(CGRectStandardize(v81));
            v82.origin.x = x;
            v82.origin.y = v73;
            v82.size.width = v60;
            v82.size.height = v62;
            v83 = CGRectStandardize(v82);
            x = v83.origin.x;
            if (!v64)
            {
              goto LABEL_53;
            }

LABEL_52:
            v84.origin.x = v49;
            v84.origin.y = v51;
            width = v83.size.width;
            v84.size.width = v53;
            v84.size.height = v55;
            v85 = CGRectStandardize(v84);
            v49 = v85.origin.x;
            v53 = v85.size.width;
            v83.size.width = width;
          }

LABEL_53:
          if (v68 >= 0.0)
          {
            v70 = v68;
            v71 = x + v83.size.width - (v49 + v53);
            if (v71 >= 0.0)
            {
              if (v67)
              {
                v86.origin.x = v72;
                v86.origin.y = v73;
                v86.size.width = v60;
                v86.size.height = v62;
                v87 = CGRectStandardize(v86);
                v60 = v87.size.width;
              }

              if (v70 + v71 > v60 * 0.5)
              {
                [v47 setCalloutType:{2, v70 + v71}];
              }
            }
          }

          continue;
        }

        [(CPColumnMaker *)self intersectionCallout:v47];
      }
    }
  }
}

- (void)intersectionCallout:(id)a3
{
  v3 = a3;
  [objc_msgSend(a3 "paragraph")];
  v45 = v5;
  v46 = v6;
  r1 = v7;
  v9 = v8;
  [v3 area];
  v41 = v10;
  v11 = [(NSMutableArray *)self->paragraphWrappers count];
  [objc_msgSend(objc_msgSend(v3 "paragraph")];
  v13 = v11;
  if (v11)
  {
    v14 = v12;
    v15 = 0;
    v16 = fmin(v46, v9) < 0.0;
    v42 = v12;
    v43 = v9;
    while (1)
    {
      v17 = [(NSMutableArray *)self->paragraphWrappers objectAtIndex:v15];
      v18 = [v17 paragraph];
      if (v18 != [v3 paragraph])
      {
        [objc_msgSend(v17 "paragraph")];
        v23 = v22;
        v24 = v19;
        v25 = v20;
        v26 = v21;
        v27 = fmin(v20, v21);
        v28 = v27 < 0.0;
        if (v27 < 0.0)
        {
          v29 = v23;
          *(&v19 - 1) = CGRectStandardize(*(&v19 - 1));
        }

        if (v19 + v21 > v14)
        {
          v50.origin.x = v45;
          v50.size.width = v46;
          v50.origin.y = r1;
          v50.size.height = v9;
          v48 = v23;
          v58.origin.x = v23;
          v58.origin.y = v24;
          v58.size.width = v25;
          v58.size.height = v26;
          v51 = CGRectIntersection(v50, v58);
          x = v51.origin.x;
          y = v51.origin.y;
          width = v51.size.width;
          height = v51.size.height;
          [v17 area];
          v44 = v34;
          if (width < 0.0 || height < 0.0)
          {
            v52.origin.x = x;
            v52.origin.y = y;
            v52.size.width = width;
            v52.size.height = height;
            v53 = CGRectStandardize(v52);
            v35 = v53.size.width;
            v53.origin.x = x;
            v53.origin.y = y;
            v53.size.width = width;
            v53.size.height = height;
            v54 = CGRectStandardize(v53);
            height = v54.size.height;
          }

          else
          {
            v35 = width;
          }

          v36 = v35 * height;
          v14 = v42;
          v9 = v43;
          if (v36 > 1.0)
          {
            [objc_msgSend(objc_msgSend(v17 "paragraph")];
            v38 = v37;
            v39 = r1;
            v40 = v43;
            if (v16)
            {
              v55.origin.x = v45;
              v55.size.width = v46;
              v55.origin.y = r1;
              v55.size.height = v43;
              *(&v39 - 1) = CGRectStandardize(v55);
            }

            if (v39 + v40 > v38)
            {
              if (v28)
              {
                v56.origin.x = v48;
                v56.origin.y = v24;
                v56.size.width = v25;
                v56.size.height = v26;
                v57 = CGRectStandardize(v56);
                v24 = v57.origin.y;
                v26 = v57.size.height;
              }

              if (v24 + v26 > v42 && v36 > fmax(v41, v44) * 0.02)
              {
                break;
              }
            }
          }
        }
      }

      if (v13 == ++v15)
      {
        return;
      }
    }

    if (v41 >= v44 * 0.25)
    {
      if (v44 >= v41 * 0.25 && [v17 inOrder] <= 1)
      {
        if ([v17 outOrder] > 1)
        {
          v3 = v17;
        }
      }

      else
      {
        v3 = v17;
      }
    }

    [v3 setCalloutType:3];
  }
}

- (BOOL)column:(id)a3 isLinkedBelowTo:(id)a4
{
  if (![a3 count] || !objc_msgSend(a4, "count"))
  {
    return 0;
  }

  v7 = [a3 lastChild];

  return [(CPColumnMaker *)self paragraph:v7 isLinkedBelowTo:a4];
}

- (BOOL)paragraph:(id)a3 isLinkedBelowTo:(id)a4
{
  v7 = [a4 count];
  if (v7)
  {
    v8 = [objc_msgSend(a3 "flowProperties")];
    v9 = [a4 inOrder];
    LOBYTE(v7) = 0;
    if (v9 == 1 && v8 == 1)
    {
      LOBYTE(v7) = -[CPColumnMaker paragraphAbove:in:](self, "paragraphAbove:in:", [a4 firstChild], self->allParagraphs) == a3;
    }
  }

  return v7;
}

- (id)chunkAbove:(id)a3 in:(id)a4
{
  v6 = [a4 count];
  if (!v6)
  {
    return 0;
  }

  [a3 bounds];
  x = v7;
  v12 = v8;
  width = v9;
  v14 = v10;
  if (v9 < 0.0 || v10 < 0.0)
  {
    v35 = CGRectStandardize(*&v7);
    v15 = v35.origin.y + v35.size.height;
    v35.origin.x = x;
    v35.origin.y = v12;
    v35.size.width = width;
    v35.size.height = v14;
    *&v16 = CGRectStandardize(v35);
    v36.origin.x = x;
    v36.origin.y = v12;
    v36.size.width = width;
    v36.size.height = v14;
    v37 = CGRectStandardize(v36);
    x = v37.origin.x;
    width = v37.size.width;
  }

  else
  {
    v15 = v8 + v10;
    v16 = v7;
  }

  if (v6 < 1)
  {
    return 0;
  }

  v17 = x + width;
  v18 = (v6 & 0x7FFFFFFF) + 1;
  while (1)
  {
    v19 = [a4 objectAtIndex:v18 - 2];
    v20 = [v19 count];
    if (v19 != a3 && v20 != 0)
    {
      [v19 bounds];
      if (v24 < 0.0 || v25 < 0.0)
      {
        *(&v23 - 1) = CGRectStandardize(*&v22);
      }

      if (v23 - v15 >= -15.0)
      {
        [v19 bounds];
        if (v28 < 0.0 || v29 < 0.0)
        {
          *&v26 = CGRectStandardize(*&v26);
        }

        if (v26 <= v17)
        {
          [v19 bounds];
          if (v32 < 0.0 || v33 < 0.0)
          {
            *&v30 = CGRectStandardize(*&v30);
          }

          if (v30 + v32 >= v16)
          {
            break;
          }
        }
      }
    }

    if (--v18 <= 1)
    {
      return 0;
    }
  }

  return v19;
}

- (id)paragraphAbove:(id)a3 in:(id)a4
{
  v7 = [a4 count];
  if (!v7)
  {
    return 0;
  }

  [a3 normalizedBounds];
  x = v8;
  v13 = v9;
  width = v10;
  v15 = v11;
  if (v10 < 0.0 || v11 < 0.0)
  {
    v16 = COERCE_DOUBLE(CGRectStandardize(*&v8)) + -4.0;
    v30.origin.x = x;
    v30.origin.y = v13;
    v30.size.width = width;
    v30.size.height = v15;
    v31 = CGRectStandardize(v30);
    x = v31.origin.x;
    width = v31.size.width;
  }

  else
  {
    v16 = v8 + -4.0;
  }

  if (v7 < 1)
  {
    return 0;
  }

  v17 = x + width + 4.0;
  v18 = (v7 & 0x7FFFFFFF) + 1;
  while (1)
  {
    v19 = [a4 objectAtIndex:v18 - 2];
    if (v19 != a3)
    {
      v20 = v19;
      if (![(CPColumnMaker *)self paragraph:v19 isBelow:a3])
      {
        [v20 normalizedBounds];
        if (v23 < 0.0 || v24 < 0.0)
        {
          *&v21 = CGRectStandardize(*&v21);
        }

        if (v21 <= v17)
        {
          [v20 normalizedBounds];
          if (v27 < 0.0 || v28 < 0.0)
          {
            *&v25 = CGRectStandardize(*&v25);
          }

          if (v25 + v27 >= v16)
          {
            break;
          }
        }
      }
    }

    if (--v18 <= 1)
    {
      return 0;
    }
  }

  return v20;
}

- (id)paragraphBelow:(id)a3 in:(id)a4
{
  v7 = [a4 count];
  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  [a3 normalizedBounds];
  x = v9;
  v14 = v10;
  width = v11;
  v16 = v12;
  if (v11 < 0.0 || v12 < 0.0)
  {
    v17 = COERCE_DOUBLE(CGRectStandardize(*&v9)) + -4.0;
    v31.origin.x = x;
    v31.origin.y = v14;
    v31.size.width = width;
    v31.size.height = v16;
    v32 = CGRectStandardize(v31);
    x = v32.origin.x;
    width = v32.size.width;
  }

  else
  {
    v17 = v9 + -4.0;
  }

  v18 = 0;
  v19 = x + width + 4.0;
  while (1)
  {
    v20 = [a4 objectAtIndex:v18];
    if (v20 != a3)
    {
      v21 = v20;
      if (![(CPColumnMaker *)self paragraph:v20 isAbove:a3])
      {
        [v21 normalizedBounds];
        if (v24 < 0.0 || v25 < 0.0)
        {
          *&v22 = CGRectStandardize(*&v22);
        }

        if (v22 <= v19)
        {
          [v21 normalizedBounds];
          if (v28 < 0.0 || v29 < 0.0)
          {
            *&v26 = CGRectStandardize(*&v26);
          }

          if (v26 + v28 >= v17)
          {
            break;
          }
        }
      }
    }

    if (v8 == ++v18)
    {
      return 0;
    }
  }

  return v21;
}

- (BOOL)paragraph:(id)a3 isBelow:(id)a4
{
  v6 = [a3 count];
  if (v6)
  {
    [a3 normalizedBounds];
    if (v9 < 0.0 || v10 < 0.0)
    {
      *&v7 = CGRectStandardize(*&v7);
    }

    v11 = v8 + v10;
    [objc_msgSend(a4 lastChild];
    LOBYTE(v6) = v11 < v12;
  }

  return v6;
}

- (BOOL)paragraph:(id)a3 isAbove:(id)a4
{
  v6 = [a3 count];
  if (v6)
  {
    [a4 normalizedBounds];
    if (v9 < 0.0 || v10 < 0.0)
    {
      *&v7 = CGRectStandardize(*&v7);
    }

    v11 = v8 + v10;
    [objc_msgSend(a3 lastChild];
    LOBYTE(v6) = v12 > v11;
  }

  return v6;
}

- (BOOL)paragraph:(id)a3 notOnSameShapeAs:(id)a4
{
  v7 = [(NSMutableArray *)self->otherShapes count];
  v8 = v7;
  if (v7)
  {
    [a3 normalizedBounds];
    v38 = v10;
    v39 = v9;
    v36 = v12;
    v37 = v11;
    [a4 normalizedBounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v8 - 1;
    while (1)
    {
      v25 = [(NSMutableArray *)self->otherShapes objectAtIndex:v21];
      [v25 bounds];
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      if (v23)
      {
        if (v22)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v41.origin.y = v38;
        v41.origin.x = v39;
        v41.size.height = v36;
        v41.size.width = v37;
        if (CGRectContainsRect(*&v26, v41))
        {
          v23 = v25;
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          goto LABEL_5;
        }
      }

      v40.origin.x = v30;
      v40.origin.y = v31;
      v40.size.width = v32;
      v40.size.height = v33;
      v42.origin.x = v14;
      v42.origin.y = v16;
      v42.size.width = v18;
      v42.size.height = v20;
      if (CGRectContainsRect(v40, v42))
      {
        v22 = v25;
      }

      else
      {
        v22 = 0;
      }

LABEL_5:
      if (v22)
      {
        v34 = v23 == 0;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        v34 = v24 == v21++;
        if (!v34)
        {
          continue;
        }
      }

      return v23 != v22;
    }
  }

  return 0;
}

- (BOOL)cuttingShapeBetween:(id)a3 and:(id)a4
{
  v7 = [(NSMutableArray *)self->thinHorizontalShapes count];
  v8 = v7;
  if (v7)
  {
    [a3 normalizedBounds];
    x = v9;
    y = v11;
    width = v13;
    v16 = v15;
    [a4 normalizedBounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v58 = v16;
    v60 = y;
    v25 = fmin(width, v16);
    v26 = v25 < 0.0;
    if (v25 < 0.0)
    {
      v62.origin.x = x;
      v62.size.height = v16;
      v62.origin.y = y;
      v62.size.width = width;
      v63 = CGRectStandardize(v62);
      y = v63.origin.y;
    }

    v27 = fmin(v22, v24);
    v28 = v27 < 0.0;
    v29 = v20;
    v30 = v24;
    if (v27 < 0.0)
    {
      v64.origin.x = v18;
      v64.origin.y = v20;
      v64.size.width = v22;
      v64.size.height = v24;
      *(&v29 - 1) = CGRectStandardize(v64);
    }

    v55 = v30;
    v56 = v29;
    rect = v20;
    v31 = x;
    if (v26)
    {
      v65.origin.x = x;
      v65.size.height = v58;
      v65.origin.y = v60;
      v65.size.width = width;
      *&v31 = CGRectStandardize(v65);
    }

    v32 = v18;
    if (v28)
    {
      v66.origin.x = v18;
      v66.origin.y = rect;
      v66.size.width = v22;
      v66.size.height = v24;
      *&v32 = CGRectStandardize(v66);
    }

    if (v26)
    {
      v67.origin.x = x;
      v67.size.height = v58;
      v67.origin.y = v60;
      v67.size.width = width;
      v68 = CGRectStandardize(v67);
      x = v68.origin.x;
      width = v68.size.width;
    }

    v61 = fmin(v31, v32);
    v33 = x + width;
    if (v28)
    {
      v69.origin.x = v18;
      v69.origin.y = rect;
      v69.size.width = v22;
      v69.size.height = v24;
      v70 = CGRectStandardize(v69);
      v18 = v70.origin.x;
      v22 = v70.size.width;
    }

    v34 = 0;
    v35 = v56 + v55;
    v36 = fmax(v33, v18 + v22);
    v59 = (v36 - v61) * 0.1;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->thinHorizontalShapes objectAtIndex:{v34), "bounds"}];
      v41 = v40;
      v42 = v37;
      v43 = v38;
      v44 = v39;
      v45 = fmin(v38, v39);
      v46 = v45 < 0.0;
      if (v45 >= 0.0)
      {
        if (v37 + v39 > y || v37 + v39 < v35 || v37 > y || v37 < v35)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v47 = v41;
        v71 = CGRectStandardize(*(&v37 - 1));
        if (v71.origin.y + v71.size.height > y)
        {
          goto LABEL_51;
        }

        v72.origin.x = v41;
        v72.origin.y = v42;
        v72.size.width = v43;
        v72.size.height = v44;
        v73 = CGRectStandardize(v72);
        if (v73.origin.y + v73.size.height < v35)
        {
          goto LABEL_51;
        }

        v74.origin.x = v41;
        v74.origin.y = v42;
        v74.size.width = v43;
        v74.size.height = v44;
        v75 = CGRectStandardize(v74);
        if (v75.origin.y > y)
        {
          goto LABEL_51;
        }

        if (v46)
        {
          v76.origin.x = v41;
          v76.origin.y = v42;
          v76.size.width = v43;
          v76.size.height = v44;
          v77 = CGRectStandardize(v76);
          if (v77.origin.y < v35)
          {
            goto LABEL_51;
          }

          goto LABEL_33;
        }

        if (v42 < v35)
        {
          goto LABEL_51;
        }
      }

      if (!v46)
      {
        if (v41 >= v36 || v41 + v43 <= v61)
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

LABEL_33:
      v78.origin.x = v41;
      v78.origin.y = v42;
      v78.size.width = v43;
      v78.size.height = v44;
      if (COERCE_DOUBLE(CGRectStandardize(v78)) >= v36)
      {
        goto LABEL_51;
      }

      if (v46)
      {
        v79.origin.x = v41;
        v79.origin.y = v42;
        v79.size.width = v43;
        v79.size.height = v44;
        v80 = CGRectStandardize(v79);
        if (v80.origin.x + v80.size.width <= v61)
        {
          goto LABEL_51;
        }

LABEL_44:
        v81.origin.x = v41;
        v81.origin.y = v42;
        v81.size.width = v43;
        v81.size.height = v44;
        v82 = CGRectStandardize(v81);
        v52 = v82.origin.x + v82.size.width - v36;
        v82.origin.x = v41;
        v82.origin.y = v42;
        v82.size.width = v43;
        v82.size.height = v44;
        *&v41 = CGRectStandardize(v82);
        goto LABEL_46;
      }

      if (v41 + v43 <= v61)
      {
        goto LABEL_51;
      }

LABEL_43:
      if (v46)
      {
        goto LABEL_44;
      }

      v52 = v41 + v43 - v36;
LABEL_46:
      if (v52 > v59 || v61 - v41 > v59)
      {
        return 1;
      }

LABEL_51:
      ++v34;
    }

    while (v8 != v34);
  }

  return 0;
}

- (void)partitionShapes:(id)a3
{
  self->thinHorizontalShapes = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  p_thinHorizontalShapes = &self->thinHorizontalShapes;
  self->otherShapes = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  p_otherShapes = &self->otherShapes;
  v7 = [a3 count];
  v8 = v7;
  if (v7)
  {
    for (i = 0; v8 != i; ++i)
    {
      v10 = [a3 objectAtIndex:i];
      [v10 bounds];
      v15 = v11;
      v16 = v12;
      v17 = v13;
      height = v14;
      if (v13 < 0.0 || v14 < 0.0)
      {
        v24 = CGRectStandardize(*&v11);
        v19 = p_thinHorizontalShapes;
        if (v24.size.height > 1.0)
        {
          v25.origin.x = v15;
          v25.origin.y = v16;
          v25.size.width = v17;
          v25.size.height = height;
          v26 = CGRectStandardize(v25);
          width = v26.size.width;
          v26.origin.x = v15;
          v26.origin.y = v16;
          v26.size.width = v17;
          v26.size.height = height;
          v27 = CGRectStandardize(v26);
          height = v27.size.height;
          v17 = width;
LABEL_9:
          if (v17 / height > 4.0 || v17 / height == 0.0)
          {
            v19 = p_thinHorizontalShapes;
          }

          else
          {
            v19 = p_otherShapes;
          }
        }
      }

      else
      {
        v19 = p_thinHorizontalShapes;
        if (v14 > 1.0)
        {
          goto LABEL_9;
        }
      }

      [*v19 addObject:v10];
    }
  }

  v22 = *p_otherShapes;

  [(NSMutableArray *)v22 sortUsingSelector:sel_compareZDescending_];
}

- (BOOL)intervalOverlapLeft:(double)a3 right:(double)a4 paragraphs:(id)a5
{
  v8 = [a5 count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      [objc_msgSend(a5 objectAtIndex:{v10), "normalizedBounds"}];
      x = v12;
      v17 = v13;
      width = v14;
      v19 = v15;
      if (v14 < 0.0 || v15 < 0.0)
      {
        *&v20 = CGRectStandardize(*&v12);
        v23.origin.x = x;
        v23.origin.y = v17;
        v23.size.width = width;
        v23.size.height = v19;
        v24 = CGRectStandardize(v23);
        x = v24.origin.x;
        width = v24.size.width;
      }

      else
      {
        v20 = v12;
      }

      if (x + width + 4.0 > a3 && v20 + -4.0 < a4)
      {
        break;
      }

      v11 = ++v10 < v9;
    }

    while (v9 != v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPColumnMaker;
  [(CPColumnMaker *)&v3 dealloc];
}

- (CPColumnMaker)init
{
  v3.receiver = self;
  v3.super_class = CPColumnMaker;
  result = [(CPColumnMaker *)&v3 init];
  if (result)
  {
    result->columns = 0;
    result->thinHorizontalShapes = 0;
    result->otherShapes = 0;
  }

  return result;
}

@end