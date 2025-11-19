@interface CPZoneMaker
- (BOOL)overlap:(id)a3 with:(id)a4;
- (id)newZoneForStraddlersFrom:(id)a3;
- (unsigned)categorizeGraphicsIn:(id)a3;
- (void)addObjectsToStraddler:(id)a3 from:(id)a4;
- (void)addZonesWithBoundaryIn:(id)a3 withBorder:(id)a4;
- (void)cutHorizontalBorders:(id)a3 whereObscuredByShape:(id)a4;
- (void)cutVerticalBorders:(id)a3 whereObscuredByShape:(id)a4;
- (void)dealloc;
- (void)makeZonesIn:(id)a3;
- (void)makeZonesWithBoundaryIn:(id)a3;
- (void)mergeQualifyingRectanglesIn:(id)a3;
- (void)splitByRotatation:(id)a3 inPage:(id)a4;
@end

@implementation CPZoneMaker

- (id)newZoneForStraddlersFrom:(id)a3
{
  v4 = [a3 count];
  v5 = 0;
  if (v4)
  {
    v6 = v4 - 1;
    do
    {
      v7 = [a3 objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v5)
          {
            v5 = objc_alloc_init(CPZone);
            [(CPChunk *)v5 setShrinksWithChildren:0];
            [(CPZone *)v5 setIsStraddleZone:1];
          }

          [(CPChunk *)v5 add:v7];
          [a3 removeObjectAtIndex:v6];
        }
      }

      --v6;
    }

    while (v6 != -1);
  }

  return v5;
}

- (void)addObjectsToStraddler:(id)a3 from:(id)a4
{
  v6 = [a4 count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      v8 = [a4 objectAtIndex:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [a3 add:v8];
          [a4 removeObjectAtIndex:v7];
        }
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)cutVerticalBorders:(id)a3 whereObscuredByShape:(id)a4
{
  [a4 renderedBounds];
  v56 = v7;
  v57 = v6;
  v54 = v9;
  v55 = v8;
  v10 = [a4 zOrder];
  if ([a3 count])
  {
    v11 = 0;
    v12 = 0;
    v13 = fmin(v56, v54) < 0.0;
    do
    {
      v14 = [a3 objectAtIndex:v11];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v56;
      v23 = v57;
      if (v13)
      {
        v58.size.width = v56;
        v58.origin.x = v57;
        v58.size.height = v54;
        v58.origin.y = v55;
        *&v23 = CGRectStandardize(v58);
      }

      v25 = v23 + v24;
      v26 = fmin(v20, v22);
      v27 = v26 < 0.0;
      if (v26 >= 0.0)
      {
        x = v16;
        width = v20;
        if (v16 >= v25)
        {
          return;
        }
      }

      else
      {
        v59.origin.x = v16;
        v59.origin.y = v18;
        v59.size.width = v20;
        v59.size.height = v22;
        if (COERCE_DOUBLE(CGRectStandardize(v59)) >= v25)
        {
          return;
        }

        v60.origin.x = v16;
        v60.origin.y = v18;
        v60.size.width = v20;
        v60.size.height = v22;
        v61 = CGRectStandardize(v60);
        x = v61.origin.x;
        width = v61.size.width;
      }

      v30 = v57;
      if (v13)
      {
        v62.size.width = v56;
        v62.origin.x = v57;
        v62.size.height = v54;
        v62.origin.y = v55;
        *&v30 = CGRectStandardize(v62);
      }

      v31 = v16;
      if (v27)
      {
        v63.origin.x = v16;
        v63.origin.y = v18;
        v63.size.width = v20;
        v63.size.height = v22;
        *&v31 = CGRectStandardize(v63);
      }

      if (v30 >= v31 || v25 <= x + width || v10 <= [v14 zOrder])
      {
        goto LABEL_37;
      }

      v34 = v54;
      v33 = v55;
      if (v13)
      {
        v64.size.width = v56;
        v64.origin.x = v57;
        v64.size.height = v54;
        v64.origin.y = v55;
        *&v32 = CGRectStandardize(v64);
        v34 = v35;
      }

      v36 = v18;
      v37 = v22;
      if (v27)
      {
        v65.origin.x = v16;
        v38 = v33;
        v65.origin.y = v18;
        v65.size.width = v20;
        v65.size.height = v22;
        *&v32 = CGRectStandardize(v65);
        v36 = v39;
        v33 = v38;
        v37 = v40;
      }

      v41 = v55;
      if (v13)
      {
        v66.size.width = v56;
        v66.origin.x = v57;
        v53 = v33;
        v66.size.height = v54;
        v66.origin.y = v55;
        *&v32 = CGRectStandardize(v66);
        v41 = v42;
        v33 = v53;
      }

      v43 = v33 + v34;
      v44 = v36 + v37;
      if (v27)
      {
        v67.origin.x = v16;
        v67.origin.y = v18;
        v67.size.width = v20;
        v67.size.height = v22;
        *&v32 = CGRectStandardize(v67);
        if (v41 > v45)
        {
          goto LABEL_26;
        }

        v68.origin.x = v16;
        v68.origin.y = v18;
        v68.size.width = v20;
        v68.size.height = v22;
        *&v32 = CGRectStandardize(v68);
        v18 = v46;
      }

      else if (v41 > v18)
      {
LABEL_26:
        v47 = v55;
        if (v13)
        {
          v69.size.width = v56;
          v69.origin.x = v57;
          v69.size.height = v54;
          v69.origin.y = v55;
          *&v32 = CGRectStandardize(v69);
        }

        if (v47 >= v44)
        {
          goto LABEL_37;
        }

        if (v43 < v44)
        {
          v48 = [v14 copy];
          [v48 setBounds:{v16, v43, v20, v44 - v43}];
          v12 = (v12 + 1);
          [v48 addToArray:a3 atIndex:v12];
        }

        v49 = v55 - v18;
        v50 = v14;
        v51 = v16;
        v52 = v18;
LABEL_35:
        [v50 setBounds:{v51, v52, v20, v49}];
        goto LABEL_37;
      }

      if (v43 > v18)
      {
        if (v43 >= v44)
        {
          [v14 removeFromArrayAtIndex:{v12, v32}];
          LODWORD(v12) = v12 - 1;
          goto LABEL_37;
        }

        v49 = v44 - v43;
        v50 = v14;
        v51 = v16;
        v52 = v43;
        goto LABEL_35;
      }

LABEL_37:
      v12 = (v12 + 1);
      v11 = v12;
    }

    while ([a3 count] > v12);
  }
}

- (void)cutHorizontalBorders:(id)a3 whereObscuredByShape:(id)a4
{
  [a4 renderedBounds];
  v41 = v7;
  v42 = v6;
  v43 = v9;
  v44 = v8;
  v10 = [a4 zOrder];
  if ([a3 count])
  {
    v11 = 0;
    v12 = 0;
    v13 = fmin(v41, v43) < 0.0;
    do
    {
      v14 = [a3 objectAtIndex:v11];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v43;
      v23 = v44;
      if (v13)
      {
        v45.size.width = v41;
        v45.origin.x = v42;
        v45.size.height = v43;
        v45.origin.y = v44;
        *(&v23 - 1) = CGRectStandardize(v45);
      }

      v25 = v23 + v24;
      v26 = fmin(v20, v22);
      v27 = v26 < 0.0;
      if (v26 >= 0.0)
      {
        y = v18;
        height = v22;
        if (v18 >= v25)
        {
          return;
        }
      }

      else
      {
        v46.origin.x = v16;
        v46.origin.y = v18;
        v46.size.width = v20;
        v46.size.height = v22;
        v47 = CGRectStandardize(v46);
        if (v47.origin.y >= v25)
        {
          return;
        }

        v48.origin.x = v16;
        v48.origin.y = v18;
        v48.size.width = v20;
        v48.size.height = v22;
        v49 = CGRectStandardize(v48);
        y = v49.origin.y;
        height = v49.size.height;
      }

      v30 = v44;
      if (v13)
      {
        v50.size.width = v41;
        v50.origin.x = v42;
        v50.size.height = v43;
        v50.origin.y = v44;
        v51 = CGRectStandardize(v50);
        v30 = v51.origin.y;
      }

      v31 = v18;
      if (v27)
      {
        v52.origin.x = v16;
        v52.origin.y = v18;
        v52.size.width = v20;
        v52.size.height = v22;
        *(&v31 - 1) = CGRectStandardize(v52);
      }

      if (v30 >= v31 || v25 <= y + height || v10 <= [v14 zOrder])
      {
        goto LABEL_33;
      }

      v33 = v41;
      v32 = v42;
      if (v13)
      {
        v53.size.width = v41;
        v53.origin.x = v42;
        v53.size.height = v43;
        v53.origin.y = v44;
        *&v32 = CGRectStandardize(v53);
      }

      v34 = v32 + v33;
      if (v27)
      {
        v54.origin.x = v16;
        v54.origin.y = v18;
        v54.size.width = v20;
        v54.size.height = v22;
        v55 = CGRectStandardize(v54);
        v35 = v55.origin.x + v55.size.width;
        v55.origin.x = v16;
        v55.origin.y = v18;
        v55.size.width = v20;
        v55.size.height = v22;
        if (v42 > COERCE_DOUBLE(CGRectStandardize(v55)))
        {
          goto LABEL_22;
        }

        v56.origin.x = v16;
        v56.origin.y = v18;
        v56.size.width = v20;
        v56.size.height = v22;
        *&v16 = CGRectStandardize(v56);
      }

      else
      {
        v35 = v16 + v20;
        if (v42 > v16)
        {
LABEL_22:
          v36 = v42;
          if (v13)
          {
            v57.size.width = v41;
            v57.origin.x = v42;
            v57.size.height = v43;
            v57.origin.y = v44;
            *&v36 = CGRectStandardize(v57);
          }

          if (v36 >= v35)
          {
            goto LABEL_33;
          }

          if (v34 < v35)
          {
            v37 = [v14 copy];
            [v37 setBounds:{v34, v18, v35 - v34, v22}];
            v12 = (v12 + 1);
            [v37 addToArray:a3 atIndex:v12];
          }

          v38 = v42 - v16;
          v39 = v14;
          v40 = v16;
LABEL_31:
          [v39 setBounds:{v40, v18, v38, v22}];
          goto LABEL_33;
        }
      }

      if (v34 > v16)
      {
        if (v34 >= v35)
        {
          [v14 removeFromArrayAtIndex:v12];
          LODWORD(v12) = v12 - 1;
          goto LABEL_33;
        }

        v38 = v35 - v34;
        v39 = v14;
        v40 = v34;
        goto LABEL_31;
      }

LABEL_33:
      v12 = (v12 + 1);
      v11 = v12;
    }

    while ([a3 count] > v12);
  }
}

- (void)splitByRotatation:(id)a3 inPage:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = [a3 count];
  v7 = [a3 charactersInZone];
  if (v7)
  {
    v8 = v7;
    if ([v7 length])
    {
      v37 = v6;
      [v8 sortBy:compareByRotation];
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = *([v8 charAtIndex:0] + 168);
      if (v10 > 350.0)
      {
        v10 = v10 + -360.0;
      }

      v45 = v10;
      [v8 splitToSubsequences:v9 whereTrue:splitRotationZonesCondition passing:&v45];
      if ([v9 count] < 2)
      {
        [v8 averageRotation];
        v27 = v26;
        [a3 setRotationAngle:?];
        v28 = [v8 length];
        if (v28 >= 1)
        {
          v29 = v28;
          v31 = __sincos_stret(v27);
          v30.f64[0] = v31.__cosval;
          v32 = 0;
          v30.f64[1] = -v31.__sinval;
          v40 = v30;
          do
          {
            v33 = [v8 charAtIndex:v32];
            v34 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v31, v33[15]), v40, v33[14]), 0);
            *(v33 + 6) = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v31, v33[13]), v40, v33[12]), 0);
            *(v33 + 7) = v34;
            v32 = (v32 + 1);
          }

          while (v29 != v32);
        }
      }

      else
      {
        [a3 setCharactersInZone:0];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v11 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v42;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v42 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v41 + 1) + 8 * i);
              v16 = objc_alloc_init(CPZone);
              [(CPObject *)v16 setPage:a4];
              [(CPChunk *)v16 setShrinksWithChildren:0];
              [(CPZone *)v16 setCharactersInZone:v15];
              [v15 averageRotation];
              v18 = v17;
              [(CPZone *)v16 setRotationAngle:?];
              v19 = [v15 length];
              if (v19 >= 1)
              {
                v20 = v19;
                v22 = __sincos_stret(v18);
                v21.f64[0] = v22.__cosval;
                v23 = 0;
                v21.f64[1] = -v22.__sinval;
                v39 = v21;
                do
                {
                  v24 = [v15 charAtIndex:v23];
                  v25 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v22, v24[15]), v39, v24[14]), 0);
                  *(v24 + 6) = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v22, v24[13]), v39, v24[12]), 0);
                  *(v24 + 7) = v25;
                  v23 = (v23 + 1);
                }

                while (v20 != v23);
              }

              [a3 add:v16];
            }

            v12 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v12);
        }
      }

      v6 = v37;
    }
  }

  if (v6 >= 1)
  {
    v35 = 0;
    do
    {
      v36 = [a3 childAtIndex:v35];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CPZoneMaker *)self splitByRotatation:v36 inPage:a4];
      }

      v35 = (v35 + 1);
    }

    while (v6 != v35);
  }
}

- (void)makeZonesWithBoundaryIn:(id)a3
{
  v206 = *MEMORY[0x1E69E9840];
  v4 = [a3 count];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  v185 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  v7 = objc_alloc_init(CPZoneBorder);
  [(CPZoneBorder *)v7 setSide:1 ofPage:a3];
  [(CPZoneBorder *)v7 addToArray:v5];

  v8 = objc_alloc_init(CPZoneBorder);
  [(CPZoneBorder *)v8 setSide:2 ofPage:a3];
  [(CPZoneBorder *)v8 addToArray:v6];

  v9 = objc_alloc_init(CPZoneBorder);
  [(CPZoneBorder *)v9 setSide:3 ofPage:a3];
  [(CPZoneBorder *)v9 addToArray:v5];

  v10 = objc_alloc_init(CPZoneBorder);
  v176 = a3;
  [(CPZoneBorder *)v10 setSide:4 ofPage:a3];
  [(CPZoneBorder *)v10 addToArray:v6];

  v184 = v5;
  if (v4)
  {
    v11 = 0;
    v12 = &v197 + 1;
    v174 = v4;
    v173 = &v197 + 8;
    do
    {
      v13 = [v176 childAtIndex:{v11, v173}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 zoneGraphicType];
        switch(v14)
        {
          case 3:
            v64 = [v13 path];
            v65 = v64;
            *(v12 + 3) = 0u;
            *(v12 + 4) = 0u;
            *(v12 + 1) = 0u;
            *(v12 + 2) = 0u;
            *v12 = 0u;
            *&v197 = v13;
            if (v64)
            {
              LODWORD(info) = 0;
              CGPathApply(v64, &info, countElements);
              v66 = info;
            }

            else
            {
              v66 = 0;
            }

            HIDWORD(v197) = v66;
            v198 = 0u;
            v199 = 0u;
            v200 = COERCE_DOUBLE(malloc_type_malloc(16 * v66, 0x1000040451B5BE8uLL));
            LODWORD(v201) = 0;
            v202 = v5;
            v203 = v6;
            v204 = [v5 count];
            v205 = [v6 count];
            CGPathApply(v65, &v197, findLineSegments);
            free(*&v200);
            [v185 addObject:v13];
            break;
          case 2:
            [v13 bounds];
            v19 = v18;
            v21 = v20;
            v187 = v22;
            v181 = v23;
            [v13 renderedBounds];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
            [v13 lineWidth];
            v32 = 0;
            *&v197 = v25;
            *(&v197 + 1) = v27;
            *&v198 = v25;
            v201 = v27;
            *(&v198 + 1) = v31 + v27;
            *(&v199 + 1) = v31 + v27;
            *&v199 = v29 + v25;
            v200 = v29 + v25;
            v34 = v33 * 0.5;
            v35 = v21;
            v36 = v21 + v33 * 0.5;
            v37 = v19;
            v177 = v19 + v33 * 0.5;
            v179 = v36;
            do
            {
              v38 = v32++;
              v39 = *(v12 - 1);
              v40 = *v12;
              v41 = (&v197 + (v32 & 3));
              v42 = *v41;
              v43 = v41[1];
              v44 = fmax(v34 + v39 - v37 - v187, 0.0);
              v45 = v39 + v44 * -0.5;
              v46 = fmax(v179 - *v12, 0.0);
              v47 = *v12 + v46 * 0.5;
              if (v38 == 2)
              {
                v48 = v41[1];
              }

              else
              {
                v48 = *v12 + v46 * 0.5;
              }

              if (v38 == 2)
              {
                v49 = v39 + v44 * -0.5;
              }

              else
              {
                v49 = *v41;
              }

              if (v38 == 2)
              {
                v47 = *v12;
              }

              else
              {
                v45 = *(v12 - 1);
              }

              if (v38 == 2)
              {
                v50 = 4;
              }

              else
              {
                v44 = v46;
                v50 = 1;
              }

              v51 = fmax(v177 - v39, 0.0);
              v52 = fmax(v34 + v40 - v35 - v181, 0.0);
              if (v38)
              {
                v43 = v40 + v52 * -0.5;
              }

              else
              {
                v42 = v39 + v51 * 0.5;
              }

              if (v38)
              {
                v40 = v40 + v52 * -0.5;
              }

              else
              {
                v39 = v39 + v51 * 0.5;
              }

              if (v38)
              {
                v51 = v52;
                v53 = 3;
              }

              else
              {
                v53 = 2;
              }

              if (v38 <= 1)
              {
                v54 = v43;
              }

              else
              {
                v54 = v48;
              }

              if (v38 <= 1)
              {
                v55 = v42;
              }

              else
              {
                v55 = v49;
              }

              if (v38 <= 1)
              {
                v56 = v40;
              }

              else
              {
                v56 = v47;
              }

              if (v38 <= 1)
              {
                v57 = v39;
              }

              else
              {
                v57 = v45;
              }

              if (v38 <= 1)
              {
                v58 = v51;
              }

              else
              {
                v58 = v44;
              }

              if (v38 <= 1)
              {
                v59 = v53;
              }

              else
              {
                v59 = v50;
              }

              v60 = [v13 copy];
              [v60 makeLineFromVertex:v57 toVertex:{v56, v55, v54}];
              [v60 setLineWidth:v58];
              v61 = [[CPZoneBorder alloc] initWithGraphicObject:v60];

              if (!v61)
              {
                break;
              }

              v62 = objc_alloc_init(CPZoneBorderNeighbor);
              [(CPZoneBorderNeighbor *)v62 setNeighborShape:v13];
              [(CPZoneBorderNeighbor *)v62 setShapeSide:v59];
              [(CPZoneBorder *)v61 addNeighbor:v62];

              v63 = [(CPZoneBorder *)v61 isHorizontal]? v184 : v6;
              [(CPZoneBorder *)v61 addToArray:v63];

              v12 += 2;
            }

            while (v32 != 4);
            [v185 addObject:v13];
            v5 = v184;
            v4 = v174;
            v12 = v173;
            break;
          case 1:
            v15 = [[CPZoneBorder alloc] initWithGraphicObject:v13];
            if (!v15)
            {
              goto LABEL_63;
            }

            v16 = v15;
            if ([(CPZoneBorder *)v15 isHorizontal])
            {
              v17 = v5;
            }

            else
            {
              v17 = v6;
            }

            [(CPZoneBorder *)v16 addToArray:v17];

            break;
        }
      }

      v11 = (v11 + 1);
    }

    while (v11 != v4);
  }

LABEL_63:
  [v5 sortUsingSelector:sel_compareYBounds_];
  [v6 sortUsingSelector:sel_compareXBounds_];
  [v185 sortUsingSelector:sel_compareZ_];
  v67 = [v185 count];
  if (v67 >= 1)
  {
    v68 = (v67 & 0x7FFFFFFF) + 1;
    do
    {
      v69 = [v185 objectAtIndex:v68 - 2];
      if ([v69 isUprightRectangle])
      {
        v70 = [v69 fillColor];
        if (v70)
        {
          v78 = (v70 & 0x8000000000000000) != 0 ? CGTaggedColorGetAlpha(v70, v71, v72, v73, v74, v75, v76, v77) : *(v70 + 8 * *(v70 + 56) + 64);
          if (v78 >= 1.0)
          {
            [(CPZoneMaker *)self cutHorizontalBorders:v5 whereObscuredByShape:v69];
            [(CPZoneMaker *)self cutVerticalBorders:v6 whereObscuredByShape:v69];
          }
        }
      }

      --v68;
    }

    while (v68 > 1);
  }

  [(CPCharSequence *)self->charactersOnPage map:cutBordersCrossingText passing:v5];
  [(CPCharSequence *)self->charactersOnPage map:cutBordersCrossingText passing:v6];
  if ([v5 count] >= 2)
  {
    v79 = 1;
    v80 = 1;
    do
    {
      v81 = [v5 objectAtIndex:v79];
      if (v80 >= 1)
      {
        v82 = v81;
        for (i = 0; i < v80; ++i)
        {
          v84 = [v5 objectAtIndex:i];
          if ([v82 continues:v84])
          {
            [v82 combine:v84];
            --i;
            --v80;
          }
        }
      }

      v79 = ++v80;
    }

    while ([v5 count] > v80);
  }

  if ([v6 count] >= 2)
  {
    v85 = 1;
    v86 = 1;
    do
    {
      v87 = [v6 objectAtIndex:v85];
      if (v86 >= 1)
      {
        v88 = v87;
        for (j = 0; j < v86; ++j)
        {
          v90 = [v6 objectAtIndex:j];
          if ([v88 continues:v90])
          {
            [v88 combine:v90];
            --j;
            --v86;
          }
        }
      }

      v85 = ++v86;
    }

    while ([v6 count] > v86);
  }

  if ([v5 count])
  {
    v91 = 0;
    v92 = 0;
    do
    {
      v93 = [v5 objectAtIndex:v91];
      if ([v93 graphicObjectCount] > 0x32 || (objc_msgSend(v93, "bounds"), v94 > 25.0))
      {
        [(CPZoneMaker *)self addZonesWithBoundaryIn:v176 withBorder:v93];
        --v92;
      }

      v91 = ++v92;
    }

    while ([v5 count] > v92);
  }

  if ([v6 count])
  {
    v95 = 0;
    v96 = 0;
    do
    {
      v97 = [v6 objectAtIndex:v95];
      if ([v97 graphicObjectCount] > 0x32 || (objc_msgSend(v97, "bounds"), v98 > 25.0))
      {
        [(CPZoneMaker *)self addZonesWithBoundaryIn:v176 withBorder:v97];
        --v96;
      }

      v95 = ++v96;
    }

    while ([v6 count] > v96);
  }

  v197 = 0u;
  v198 = 0u;
  if ([v5 count])
  {
    v99 = 0;
    do
    {
      v100 = [v5 objectAtIndex:v99];
      if ([v6 count])
      {
        v101 = 0;
        do
        {
          v102 = [v6 objectAtIndex:v101];
          if ([v100 intersectsWith:v102 atRect:&v197])
          {
            [CPZoneBorder addIntersectionBetweenBorder:v100 andBorder:v102 atRect:v197, v198];
          }

          ++v101;
        }

        while ([v6 count] > v101);
      }

      ++v99;
    }

    while ([v5 count] > v99);
  }

  if ([v5 count])
  {
    v103 = 0;
    v104 = 0;
    do
    {
      v105 = [v5 objectAtIndex:v103];
      if ([v105 intersectionCount] <= 1)
      {
        if ([v105 intersectionCount] == 1)
        {
          [v105 removeLooseThreadsStartingFrom:0];
          v104 = [v5 indexOfObject:v105];
        }

        [v105 removeFromArray];
        --v104;
      }

      v103 = ++v104;
    }

    while ([v5 count] > v104);
  }

  if ([v6 count])
  {
    v106 = 0;
    v107 = 0;
    do
    {
      v108 = [v6 objectAtIndex:v106];
      if ([v108 intersectionCount] <= 1)
      {
        if ([v108 intersectionCount] == 1)
        {
          [v108 removeLooseThreadsStartingFrom:0];
          v107 = [v6 indexOfObject:v108];
        }

        [v108 removeFromArray];
        --v107;
      }

      v106 = ++v107;
    }

    while ([v6 count] > v107);
  }

  if ([v5 count])
  {
    v109 = 0;
    do
    {
      v110 = [v5 objectAtIndex:v109];
      [v110 trimToLastIntersections];
      [v110 instantiateVectors];
      ++v109;
    }

    while ([v5 count] > v109);
  }

  if ([v6 count])
  {
    v111 = 0;
    do
    {
      v112 = [v6 objectAtIndex:v111];
      [v112 trimToLastIntersections];
      [v112 instantiateVectors];
      ++v111;
    }

    while ([v6 count] > v111);
  }

  v113 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  while ([v6 count])
  {
    LODWORD(info) = 0;
    v114 = [v6 count];
    v115 = v114;
    if (!v114)
    {
      break;
    }

    v116 = 0;
    while (1)
    {
      v117 = [v6 objectAtIndex:v116];
      if ([v117 hasVectorGoingForward:1 startingAtIndex:&info])
      {
        break;
      }

      if (v115 == ++v116)
      {
        goto LABEL_141;
      }
    }

    v118 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    if ([v117 extractCycleTo:v118 goingForward:1 startingAtIndex:info])
    {
      if ([CPZoneBorder clockwiseWindingNumberOfShapeWithBorders:v118]<= 0)
      {
        v119 = &off_1E6E04288;
      }

      else
      {
        v119 = off_1E6E04280;
      }

      v120 = objc_alloc_init(*v119);
      [v120 setPage:v176];
      [v120 setShrinksWithChildren:0];
      [v120 setZoneBorders:v118];
      [v113 addObject:v120];
    }
  }

LABEL_141:
  [v113 sortUsingSelector:sel_compareArea_];
  v121 = [v113 count];
  v122 = v121;
  v123 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v121];
  v188 = v121;
  if (v121)
  {
    v124 = 0;
    v125 = 1;
    do
    {
      v126 = [v113 objectAtIndex:v124++];
      v127 = v125;
      if (v124 >= v122)
      {
LABEL_146:
        [v123 addObject:v126];
      }

      else
      {
        while (1)
        {
          v128 = [v113 objectAtIndex:v127];
          if ([v128 contains:v126])
          {
            break;
          }

          if (v188 == ++v127)
          {
            goto LABEL_146;
          }
        }

        [v128 add:v126];
      }

      ++v125;
    }

    while (v124 != v122);
  }

  v180 = v122;
  v195 = 0;
  v129 = [(CPCharSequence *)self->charactersOnPage length];
  if (v129)
  {
    v130 = v129;
    v131 = 0;
    v132 = 0;
    v175 = v129;
    do
    {
      while (1)
      {
        v133 = [(CPCharSequence *)self->charactersOnPage charAtIndex:v131];
        findZone(&v133->var0.var0.origin.x, v123, &v195);
        v134 = v195;
        if (v195)
        {
          break;
        }

LABEL_154:
        v195 = 0;
        if (!v132)
        {
          v132 = objc_alloc_init(CPZone);
          [(CPObject *)v132 setPage:v176];
          [(CPZone *)v132 setIsStraddleZone:1];
          [(CPChunk *)v132 setShrinksWithChildren:0];
        }

        [(CPZone *)v132 addPDFChar:v133];
        v131 = (v131 + 1);
        if (v131 >= v130)
        {
          goto LABEL_167;
        }
      }

      while (1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v134 = [v134 parent];
        if (!v134)
        {
          goto LABEL_154;
        }
      }

      v182 = v132;
      info = v134;
      v194 = v131;
      v135 = [(CPCharSequence *)self->charactersOnPage mapWithIndex:continueZone from:(v131 + 1) length:v130 - v131 - 1 passing:&info];
      v136 = v135;
      if (v135)
      {
        v137 = v130 - v131;
      }

      else
      {
        v137 = (v194 - v131);
      }

      v138 = [v134 charactersInZone];
      if (v138)
      {
        v139 = v138;
        v178 = [v138 length];
        [(CPCharSequence *)self->charactersOnPage copyToSubsequence:v139 from:v131 length:v137];
        [v134 updatedCharSequenceFrom:v178 length:v137];
      }

      else
      {
        v140 = [(CPCharSequence *)self->charactersOnPage newSubsequenceFrom:v131 length:v137];
        [v134 setCharactersInZone:v140];
      }

      v195 = info;
      v131 = v194;
      v132 = v182;
      v130 = v175;
    }

    while (!v136);
  }

  else
  {
    v132 = 0;
  }

LABEL_167:
  v183 = v132;
  v141 = [v185 count];
  if (v141 >= 1)
  {
    v142 = v141 & 0x7FFFFFFF;
    do
    {
      v143 = [v185 objectAtIndex:v142 - 1];
      if ([v113 count])
      {
        v144 = 0;
        do
        {
          v145 = [v113 objectAtIndex:v144];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v145 hasNeighborShape:v143])
            {
              [v145 swollenZoneBounds];
              v147 = v146;
              v149 = v148;
              v151 = v150;
              v153 = v152;
              [v143 bounds];
              v158 = v157;
              if (v157 != INFINITY)
              {
                v159 = v154;
                if (v154 != INFINITY)
                {
                  v160 = v155;
                  v161 = v156;
                  v207.origin.x = v147;
                  v207.origin.y = v149;
                  v207.size.width = v151;
                  v207.size.height = v153;
                  if (CGRectContainsRect(v207, *&v158))
                  {
                    [v145 add:v143];
                  }
                }
              }
            }
          }

          ++v144;
        }

        while ([v113 count] > v144);
      }
    }

    while (v142-- >= 2);
  }

  v163 = [v176 newTakeChildren];
  v164 = v183;
  if (v188)
  {
    v165 = 0;
    do
    {
      v166 = [v113 objectAtIndex:v165];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v166 addContentFrom:v163];
      }

      ++v165;
    }

    while (v180 != v165);
  }

  if (v183)
  {
    [(CPZoneMaker *)self addObjectsToStraddler:v183 from:v163];
    v167 = v184;
    v168 = v176;
  }

  else
  {
    v164 = [(CPZoneMaker *)self newZoneForStraddlersFrom:v163];
    v167 = v184;
    v168 = v176;
    if (!v164)
    {
      goto LABEL_189;
    }
  }

  [v123 addObject:v164];

LABEL_189:
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v169 = [v123 countByEnumeratingWithState:&v189 objects:v196 count:16];
  if (v169)
  {
    v170 = v169;
    v171 = *v190;
    do
    {
      for (k = 0; k != v170; ++k)
      {
        if (*v190 != v171)
        {
          objc_enumerationMutation(v123);
        }

        [(CPZoneMaker *)self splitByRotatation:*(*(&v189 + 1) + 8 * k) inPage:v168];
      }

      v170 = [v123 countByEnumeratingWithState:&v189 objects:v196 count:16];
    }

    while (v170);
  }

  [v168 addChildren:v163];
  [v168 addChildren:v123];
}

- (void)addZonesWithBoundaryIn:(id)a3 withBorder:(id)a4
{
  v6 = [a3 newTakeChildrenAmong:{objc_msgSend(a4, "graphicObjects")}];
  v7 = [CPCompoundGraphic alloc];
  [a4 bounds];
  v8 = [(CPCompoundGraphic *)v7 initWithGraphicObjects:v6 withRenderedBounds:?];

  [(CPObject *)v8 recomputeZOrder];
  [a3 add:v8];

  [a4 removeFromArray];
}

- (void)mergeQualifyingRectanglesIn:(id)a3
{
  v4 = [a3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [a3 childAtIndex:v6];
      if (canBeMerged(v7))
      {
        v8 = [v7 fillColor];
        if (v8)
        {
          v9 = v8;
          [v7 bounds];
          v14 = (v6 + 1);
          if (v14 < v5)
          {
            v15 = v10;
            v16 = v11;
            v17 = fmax(v12, v13);
            v18 = v17 * 0.00000011920929 + 1.17549435e-38 + v17 * 0.00000011920929 + 1.17549435e-38;
            v55 = v11 + v13 + v18;
            v56 = v13;
            v57 = v12;
            v54 = v15 + v12 + v18;
            while (1)
            {
              v19 = [a3 childAtIndex:{v14, *&v54}];
              if (canBeMerged(v19))
              {
                v20 = [v19 fillColor];
                if (v20)
                {
                  if (CGColorEqualToColor(v9, v20))
                  {
                    [v19 bounds];
                    v25 = v24;
                    v27 = vabdd_f64(v15, v24) < v18;
                    v26 = vabdd_f64(v57, v22);
                    v27 = v27 && v26 < v18;
                    v28 = !v27 || v16 > v18 + v21 + v23;
                    if (!v28 && v21 <= v55)
                    {
                      break;
                    }

                    v30 = v21;
                    v31 = v22;
                    v32 = v23;
                    v33 = vabdd_f64(v56, v23);
                    v34 = vabdd_f64(v16, v21) < v18 && v33 < v18;
                    v35 = !v34 || v15 > v18 + v25 + v22;
                    if (!v35 && v25 <= v54)
                    {
                      break;
                    }

                    v58.origin.x = v15;
                    v58.origin.y = v16;
                    v58.size.height = v56;
                    v58.size.width = v57;
                    v59 = CGRectInset(v58, -v18, -v18);
                    v65.origin.x = v25;
                    v65.origin.y = v30;
                    v65.size.width = v31;
                    v65.size.height = v32;
                    if (CGRectContainsRect(v59, v65))
                    {
                      break;
                    }

                    v60.origin.x = v25;
                    v60.origin.y = v30;
                    v60.size.width = v31;
                    v60.size.height = v32;
                    v61 = CGRectInset(v60, -v18, -v18);
                    v66.origin.x = v15;
                    v66.origin.y = v16;
                    v66.size.height = v56;
                    v66.size.width = v57;
                    if (CGRectContainsRect(v61, v66))
                    {
                      break;
                    }
                  }
                }
              }

              v14 = (v14 + 1);
              if (v5 == v14)
              {
                goto LABEL_39;
              }
            }

            [v7 bounds];
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v44 = v43;
            [v19 bounds];
            v67.origin.x = v45;
            v67.origin.y = v46;
            v67.size.width = v47;
            v67.size.height = v48;
            v62.origin.x = v38;
            v62.origin.y = v40;
            v62.size.width = v42;
            v62.size.height = v44;
            v63 = CGRectUnion(v62, v67);
            x = v63.origin.x;
            y = v63.origin.y;
            width = v63.size.width;
            height = v63.size.height;
            Mutable = CGPathCreateMutable();
            v64.origin.x = x;
            v64.origin.y = y;
            v64.size.width = width;
            v64.size.height = height;
            CGPathAddRect(Mutable, 0, v64);
            [v7 setPath:Mutable];
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            [v19 remove];
            --v5;
            LODWORD(v6) = v6 - 1;
          }
        }
      }

LABEL_39:
      v6 = (v6 + 1);
    }

    while (v6 < v5);
  }
}

- (unsigned)categorizeGraphicsIn:(id)a3
{
  v4 = [a3 count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [a3 childAtIndex:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v8 isNarrow] && objc_msgSend(v8, "isVisible"))
      {
        [v8 setZoneGraphicType:1];
        ++v6;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 canBeContainer] && objc_msgSend(v8, "isVisible"))
        {
          if ([v8 isUprightRectangle])
          {
            [v8 setZoneGraphicType:2];
            v6 += 4;
          }

          else
          {
            v9 = [v8 path];
            if (v9)
            {
              v10 = v9;
              if (!CGPathIsEmpty(v9))
              {
                v15 = 256;
                v12 = 0x3FF0000000000000;
                v13 = 0u;
                v14 = 0u;
                CGPathApply(v10, &v12, checkRectilinear);
                if (BYTE1(v15) == 1 && (v15 & 1) != 0)
                {
                  [v8 setZoneGraphicType:3];
                  LODWORD(v12) = 0;
                  CGPathApply(v10, &v12, countElements);
                  v6 += v12;
                }
              }
            }
          }
        }
      }
    }

    v7 = (v7 + 1);
  }

  while (v5 != v7);
  return v6;
}

- (void)makeZonesIn:(id)a3
{
  v5 = [a3 PDFContext];
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + 2064);
    if (v7)
    {
      v8 = -1431655765 * ((*(v5 + 2072) - v7) >> 6);

      v9 = [[CPCharSequence alloc] initWithSizeFor:v8];
      self->charactersOnPage = v9;
      [(CPCharSequence *)v9 addChars:*(v6 + 2064) length:v8];
      [CPObjectUtility complexityOfPage:a3];
      v11 = v10;
      [a3 setComplexity:?];
      v12 = v11;
      if (v11 <= 0.8)
      {
        if ([(CPZoneMaker *)self categorizeGraphicsIn:a3, v12]> 0x7D0)
        {
          v17 = objc_alloc_init(CPZone);
          [(CPObject *)v17 setPage:a3];
          [(CPChunk *)v17 setShrinksWithChildren:0];
          [(CPZone *)v17 setIsStraddleZone:1];
          [(CPChunk *)v17 addChildrenOf:a3];
          [(CPZone *)v17 setCharactersInZone:self->charactersOnPage];
          [a3 add:v17];
        }

        else
        {
          [(CPZoneMaker *)self mergeQualifyingRectanglesIn:a3];
          [(CPZoneMaker *)self makeZonesWithBoundaryIn:a3];
        }

        [CPCompoundGraphicMaker makeCompoundGraphicsInZonesOf:a3];
      }

      else
      {
        v13 = [a3 newTakeChildren];
        v14 = [CPCompoundGraphic alloc];
        [a3 pageCropBox];
        v15 = [(CPCompoundGraphic *)v14 initWithGraphicObjects:v13 withRenderedBounds:?];

        [a3 pageCropBox];
        [(CPChunk *)v15 setBounds:?];
        v16 = objc_alloc_init(CPZone);
        [(CPObject *)v16 setPage:a3];
        [(CPChunk *)v16 setShrinksWithChildren:0];
        [(CPZone *)v16 setIsStraddleZone:1];
        [(CPChunk *)v16 add:v15];

        [(CPZone *)v16 setCharactersInZone:self->charactersOnPage];
        [a3 add:v16];
      }

      self->charactersOnPage = 0;
      v18 = objc_alloc_init(CPBody);
      [(CPChunk *)v18 setShrinksWithChildren:0];
      [(CPChunk *)v18 addChildrenOf:a3];
      [a3 add:v18];
      [a3 setHasZones:1];
      [a3 pageCropBox];
      [(CPChunk *)v18 setBounds:?];
    }
  }
}

- (BOOL)overlap:(id)a3 with:(id)a4
{
  [a3 top];
  v7 = v6;
  [a3 bottom];
  v9 = v8;
  [a4 top];
  v11 = v10;
  [a4 bottom];
  return v11 >= v9 && v7 >= v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPZoneMaker;
  [(CPZoneMaker *)&v3 dealloc];
}

@end