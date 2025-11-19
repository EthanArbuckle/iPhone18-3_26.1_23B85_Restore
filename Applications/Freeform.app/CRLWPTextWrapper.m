@interface CRLWPTextWrapper
+ (double)p_skipHintForRect:(CGRect)a3 wrapSegments:(id)a4 type:(int64_t)a5;
+ (double)unobstructedSpanForWrapSegments:(id)a3 startingSpan:(CGRect)a4 columnBounds:(CGRect)a5;
+ (id)horizontalIntersectionsOfRectList:(id)a3 withRectList:(id)a4 minWidth:(double)a5;
+ (void)splitLine:(CGRect)a3 lineSegmentRects:(id)a4 wrapSegments:(id)a5 type:(int64_t)a6 skipHint:(double *)a7;
@end

@implementation CRLWPTextWrapper

+ (void)splitLine:(CGRect)a3 lineSegmentRects:(id)a4 wrapSegments:(id)a5 type:(int64_t)a6 skipHint:(double *)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  v16 = a5;
  v17 = v16;
  if (a7)
  {
    *a7 = 1.0;
  }

  [v16 bounds];
  v63.origin.x = v18;
  v63.origin.y = v19;
  v63.size.width = v20;
  v63.size.height = v21;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  if (CGRectIntersectsRect(v57, v63))
  {
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    MaxX = CGRectGetMaxX(v59);
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    MinY = CGRectGetMinY(v60);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    MaxY = CGRectGetMaxY(v61);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v51 = CGRectGetHeight(v62);
    __p = 0;
    v55 = 0;
    v56 = 0;
    sub_100191580(&__p, 0x40uLL);
    v26 = [v17 segmentCount];
    v27 = [v17 segments];
    if (v26)
    {
      v29 = 0;
      v30 = (v27 + 16);
      do
      {
        v31 = *(v30 - 1);
        v32 = v30[1];
        if (v32 > MinY && v31 < MaxY)
        {
          v34 = *(v30 - 2);
          v35 = *v30;
          v53 = 0;
          if (v31 <= MinY)
          {
            v36 = 1;
            LOBYTE(v53) = 1;
            v34 = v34 + (MinY - v31) / (v32 - v31) * (v35 - v34);
            v31 = MinY;
          }

          else
          {
            v36 = 0;
          }

          if (v32 >= MaxY && v31 < MaxY)
          {
            v38 = 1;
            BYTE1(v53) = 1;
            v35 = v34 + (MaxY - v31) / (v32 - v31) * (v35 - v34);
          }

          else
          {
            v38 = 0;
          }

          if (v35 >= v34)
          {
            v39 = v34;
          }

          else
          {
            v39 = v35;
          }

          if (v34 >= v35)
          {
            v35 = v34;
          }

          *&v52 = v39;
          *(&v52 + 1) = v35;
          if (!v29)
          {
            goto LABEL_32;
          }

          v40 = *v29;
          v28.n128_u64[0] = *(v29 + 1);
          if (v35 >= v28.n128_f64[0])
          {
            v35 = *(v29 + 1);
          }

          v41 = v40 >= v39 ? *v29 : v39;
          if (v41 <= v35)
          {
            if (v39 >= v40)
            {
              v42 = *v29;
            }

            else
            {
              v42 = v39;
            }

            *v29 = v42;
            if (v28.n128_f64[0] < *(&v52 + 1))
            {
              v28.n128_f64[0] = *(&v52 + 1);
            }

            *(v29 + 1) = v28.n128_u64[0];
            v29[16] = v29[16] != v36;
            v29[17] = v29[17] != v38;
          }

          else
          {
LABEL_32:
            sub_100191640(&__p, &v52);
            v29 = &v55[-2].n128_i8[8];
          }
        }

        v30 += 4;
        --v26;
      }

      while (v26);
    }

    v43 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v55 - __p) >> 3));
    if (v55 == __p)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    sub_100191F5C(__p, v55, &v52, v44, 1, v28);
    v45 = __p;
    if (__p != v55)
    {
      v46 = a6 != 1;
      v47 = a6 != 1;
      do
      {
        if (!v46 && !v47 && MinX < v45->n128_f64[0])
        {
          if (MaxX - MinX >= v45->n128_f64[0] - MinX)
          {
            v48 = v45->n128_f64[0] - MinX;
          }

          else
          {
            v48 = MaxX - MinX;
          }

          [v15 addRect:{MinX, MinY, v48, v51}];
        }

        if (MinX < v45->n128_f64[1])
        {
          MinX = v45->n128_f64[1];
        }

        if (MinX >= MaxX)
        {
          break;
        }

        v47 = v45[1].n128_u8[1] != v47;
        v46 = v45[1].n128_u8[0] != v46;
        v45 = (v45 + 24);
      }

      while (v45 != v55);
    }

    if (a6 == 1 && MinX < MaxX)
    {
      [v15 addRect:{MinX, MinY, MaxX - MinX, v51}];
    }

    if (a7)
    {
      v49 = [v15 count];
      if (a6 == 1 && !v49)
      {
        [a1 p_skipHintForRect:v17 wrapSegments:1 type:{x, y, width, height}];
        *a7 = v50;
      }
    }

    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }
  }

  else if (a6 == 1)
  {
    [v15 addRect:{x, y, width, height}];
  }
}

+ (double)unobstructedSpanForWrapSegments:(id)a3 startingSpan:(CGRect)a4 columnBounds:(CGRect)a5
{
  width = a5.size.width;
  height = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  v6 = a4.size.height;
  v7 = a4.size.width;
  v8 = a4.origin.y;
  v9 = a4.origin.x;
  v10 = a3;
  v56.origin.x = v9;
  v56.origin.y = v8;
  v56.size.width = v7;
  v56.size.height = v6;
  MinX = CGRectGetMinX(v56);
  v57.origin.x = v9;
  v57.origin.y = v8;
  v57.size.width = v7;
  v57.size.height = v6;
  MaxX = CGRectGetMaxX(v57);
  v58.origin.x = v9;
  v58.origin.y = v8;
  v58.size.width = v7;
  v58.size.height = v6;
  v47 = CGRectGetHeight(v58);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  sub_100191580(&v53, 0x40uLL);
  v13 = [v10 segmentCount];
  v14 = [v10 segments];
  if (v13)
  {
    v16 = 0;
    v17 = (v14 + 16);
    do
    {
      v15.n128_f64[0] = *(v17 - 2);
      v18 = *v17;
      if ((v15.n128_f64[0] > MinX || v18 > MinX) && (v15.n128_f64[0] < MaxX || v18 < MaxX))
      {
        v21 = *(v17 - 1);
        v22 = v17[1];
        v52 = 0;
        if (v15.n128_f64[0] >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v15.n128_f64[0];
        }

        if (v15.n128_f64[0] >= v18)
        {
          v24 = v22;
        }

        else
        {
          v24 = v21;
        }

        if (v15.n128_f64[0] >= v18)
        {
          v25 = v15.n128_f64[0];
        }

        else
        {
          v25 = v18;
        }

        if (v15.n128_f64[0] >= v18)
        {
          v26 = v21;
        }

        else
        {
          v26 = v22;
        }

        if (v23 > MinX || v25 <= MinX)
        {
          v28 = 0;
        }

        else
        {
          v28 = 1;
          LOBYTE(v52) = 1;
          v24 = v21 + (MinX - v15.n128_f64[0]) / (v18 - v15.n128_f64[0]) * (v22 - v21);
          v23 = MinX;
        }

        if (v25 >= MaxX && v23 < MaxX)
        {
          v30 = 1;
          BYTE1(v52) = 1;
          v26 = v21 + (MaxX - v15.n128_f64[0]) / (v18 - v15.n128_f64[0]) * (v22 - v21);
        }

        else
        {
          v30 = 0;
        }

        if (v26 >= v24)
        {
          v31 = v24;
        }

        else
        {
          v31 = v26;
        }

        if (v24 < v26)
        {
          v24 = v26;
        }

        *&v51 = v31;
        *(&v51 + 1) = v24;
        if (!v16)
        {
          goto LABEL_48;
        }

        v33 = *v16;
        v32 = v16[1];
        if (v24 >= v32)
        {
          v24 = v16[1];
        }

        v34 = v33 >= v31 ? *v16 : v31;
        if (v34 <= v24)
        {
          if (v31 >= v33)
          {
            v31 = *v16;
          }

          *v16 = v31;
          v15.n128_u64[0] = *(&v51 + 1);
          if (v32 >= *(&v51 + 1))
          {
            v15.n128_f64[0] = v32;
          }

          v16[1] = v15.n128_f64[0];
          *(v16 + 16) = *(v16 + 16) != v28;
          *(v16 + 17) = *(v16 + 17) != v30;
        }

        else
        {
LABEL_48:
          sub_100191640(&v53, &v51);
          v16 = &v54[-2].n128_f64[1];
        }
      }

      v17 += 4;
      --v13;
    }

    while (v13);
  }

  v35 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 3));
  if (v54 == v53)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  sub_100191F5C(v53, v54, &v51, v36, 1, v15);
  v59.origin.x = v9;
  v59.origin.y = v8;
  v59.size.width = v7;
  v59.size.height = v6;
  MinY = CGRectGetMinY(v59);
  v38 = v53;
  if (v53 != v54)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      if (!v40 && !v39 && MinY < v38->n128_f64[0] && v38->n128_f64[0] - MinY >= v47)
      {
        break;
      }

      v42 = v38[1].n128_u8[0];
      v43 = v38[1].n128_u8[1];
      v44 = v38->n128_f64[1];
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      MaxY = CGRectGetMaxY(v60);
      if (MinY < v44 + 1.0)
      {
        MinY = v44 + 1.0;
      }

      if (MinY >= MaxY)
      {
        break;
      }

      v39 = v43 != v39;
      v40 = v42 != v40;
      v38 = (v38 + 24);
    }

    while (v38 != v54);
    v38 = v53;
  }

  if (v38)
  {
    v54 = v38;
    operator delete(v38);
  }

  return MinY;
}

+ (id)horizontalIntersectionsOfRectList:(id)a3 withRectList:(id)a4 minWidth:(double)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = 0;
  v10 = 0;
  v33 = 0.000000999999997;
  while (v10 < [v6 count] && v9 < objc_msgSend(v7, "count"))
  {
    [v6 rectAtIndex:v10];
    rect = v11;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v7 rectAtIndex:v9];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v38.origin.x = rect;
    v38.origin.y = v13;
    v38.size.width = v15;
    v38.size.height = v17;
    MaxX = CGRectGetMaxX(v38);
    v39.origin.x = v19;
    v39.origin.y = v21;
    v39.size.width = v23;
    v39.size.height = v25;
    v26 = CGRectGetMaxX(v39);
    v40.origin.x = v19;
    v40.origin.y = v21;
    v40.size.width = v23;
    v40.size.height = v25;
    if (MaxX <= CGRectGetMinX(v40))
    {
      goto LABEL_10;
    }

    v41.origin.x = rect;
    v41.origin.y = v13;
    v41.size.width = v15;
    v41.size.height = v17;
    if (v26 <= CGRectGetMinX(v41))
    {
      goto LABEL_11;
    }

    v42.origin.x = rect;
    v42.origin.y = v13;
    v42.size.width = v15;
    v42.size.height = v17;
    v45.origin.x = v19;
    v45.origin.y = v21;
    v45.size.width = v23;
    v45.size.height = v25;
    v43 = CGRectIntersection(v42, v45);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    if (CGRectGetWidth(v43) >= a5)
    {
      [v8 addRect:{x, y, width, height}];
    }

    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v31 = CGRectGetMaxX(v44);
    if (v31 == MaxX || vabdd_f64(v31, MaxX) < fabs(MaxX * v33))
    {
LABEL_10:
      ++v10;
    }

    else
    {
LABEL_11:
      ++v9;
    }
  }

  return v8;
}

+ (double)p_skipHintForRect:(CGRect)a3 wrapSegments:(id)a4 type:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if ([v9 segmentCount] < 1)
  {
    v15 = 1.0;
  }

  else
  {
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MinX = CGRectGetMinX(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MaxX = CGRectGetMaxX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    MinY = CGRectGetMinY(v38);
    v13 = [v9 segmentCount];
    v14 = [v9 segments];
    v15 = 1.0;
    if (v13)
    {
      v16 = MinY + 1.0;
      v17 = ceilf(v16);
      v18 = v13 - 1;
      v19 = (v14 + 16);
      v20 = 1.79769313e308;
      do
      {
        v21 = *(v19 - 1);
        v22 = v19[1];
        if (v22 > v17 && v21 < v20)
        {
          v24 = *(v19 - 2);
          v25 = *v19;
          if ((v24 > MinX || v25 > MinX) && (v24 < MaxX || v25 < MaxX))
          {
            if (v24 >= v25)
            {
              v28 = *v19;
            }

            else
            {
              v28 = *(v19 - 2);
            }

            if (v24 >= v25)
            {
              v29 = v19[1];
            }

            else
            {
              v29 = *(v19 - 1);
            }

            if (v24 >= v25)
            {
              v30 = *(v19 - 2);
            }

            else
            {
              v30 = *v19;
            }

            if (v24 >= v25)
            {
              v31 = *(v19 - 1);
            }

            else
            {
              v31 = v19[1];
            }

            if (v28 < MinX)
            {
              v29 = v21 + (MinX - v24) / (v25 - v24) * (v22 - v21);
            }

            if (v30 > MaxX)
            {
              v31 = v21 + (MaxX - v24) / (v25 - v24) * (v22 - v21);
            }

            if (v31 >= v29)
            {
              v32 = v29;
            }

            else
            {
              v32 = v31;
            }

            if (v32 < v20)
            {
              v20 = v32;
            }
          }
        }

        v33 = v20 <= v17 || v18-- == 0;
        v19 += 4;
      }

      while (!v33);
      if (v20 < 1.79769313e308 && v20 > v17)
      {
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        v15 = v20 - CGRectGetMinY(v39);
      }
    }
  }

  return v15;
}

@end