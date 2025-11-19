id CoalescedRectsForArray(void *a1, int a2, char a3, double a4)
{
  v77 = a1;
  if ([v77 count] <= 1)
  {
    v6 = v77;
    v7 = v77;
    goto LABEL_66;
  }

  v7 = +[NSMutableArray array];
  v83 = +[NSMutableDictionary dictionary];
  v81 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v77 count]);
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v12 = v77;
  v13 = [v12 countByEnumeratingWithState:&v99 objects:v106 count:16];
  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *v100;
  do
  {
    v15 = 0;
    do
    {
      if (*v100 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = sub_1AD0(*(*(&v99 + 1) + 8 * v15));
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v108.origin.x = x;
      v108.origin.y = y;
      v108.size.width = width;
      v108.size.height = height;
      if (CGRectIsNull(v108))
      {
        goto LABEL_22;
      }

      rect = y;
      if (a2)
      {
        v23 = x;
        v109.origin.x = x;
        v109.origin.y = rect;
        v109.size.width = width;
        v109.size.height = height;
        MinX = CGRectGetMinX(v109);
        v110.origin.x = v16;
        v110.origin.y = v18;
        v110.size.width = v20;
        v110.size.height = v22;
        if (MinX >= CGRectGetMinX(v110))
        {
          v117.origin.x = v23;
          v117.origin.y = rect;
          v117.size.width = width;
          v117.size.height = height;
          v30 = CGRectGetMinX(v117);
          v118.origin.x = v16;
          v118.origin.y = v18;
          v118.size.width = v20;
          v118.size.height = v22;
          v26 = v30 - CGRectGetMinX(v118);
        }

        else
        {
          v111.origin.x = v23;
          v111.origin.y = rect;
          v111.size.width = width;
          v111.size.height = height;
          v25 = CGRectGetMinX(v111);
          v112.origin.x = v16;
          v112.origin.y = v18;
          v112.size.width = v20;
          v112.size.height = v22;
          v26 = -(v25 - CGRectGetMinX(v112));
        }

        v119.origin.x = v16;
        v119.origin.y = v18;
        v119.size.width = v20;
        v119.size.height = v22;
        if (v26 > CGRectGetWidth(v119) * 0.5)
        {
          goto LABEL_21;
        }

        v120.origin.x = v23;
        v120.origin.y = rect;
        v120.size.width = width;
        v120.size.height = height;
        MaxY = CGRectGetMaxY(v120);
        v121.origin.x = v16;
        v121.origin.y = v18;
        v121.size.width = v20;
        v121.size.height = v22;
        MinY = CGRectGetMinY(v121);
      }

      else
      {
        v23 = x;
        v113.origin.x = x;
        v113.origin.y = rect;
        v113.size.width = width;
        v113.size.height = height;
        v27 = CGRectGetMinY(v113);
        v114.origin.x = v16;
        v114.origin.y = v18;
        v114.size.width = v20;
        v114.size.height = v22;
        if (v27 >= CGRectGetMinY(v114))
        {
          v122.origin.x = v23;
          v122.origin.y = rect;
          v122.size.width = width;
          v122.size.height = height;
          v33 = CGRectGetMinY(v122);
          v123.origin.x = v16;
          v123.origin.y = v18;
          v123.size.width = v20;
          v123.size.height = v22;
          v29 = v33 - CGRectGetMinY(v123);
        }

        else
        {
          v115.origin.x = v23;
          v115.origin.y = rect;
          v115.size.width = width;
          v115.size.height = height;
          v28 = CGRectGetMinY(v115);
          v116.origin.x = v16;
          v116.origin.y = v18;
          v116.size.width = v20;
          v116.size.height = v22;
          v29 = -(v28 - CGRectGetMinY(v116));
        }

        v124.origin.x = v16;
        v124.origin.y = v18;
        v124.size.width = v20;
        v124.size.height = v22;
        if (v29 > CGRectGetHeight(v124) * 0.5)
        {
LABEL_21:
          v34 = [NSValue valueWithCGRect:v23, rect, width, height];
          [v81 addObject:v34];

LABEL_22:
          x = v16;
          y = v18;
          width = v20;
          height = v22;
          goto LABEL_23;
        }

        v125.origin.x = v23;
        v125.origin.y = rect;
        v125.size.width = width;
        v125.size.height = height;
        MaxY = CGRectGetMaxX(v125);
        v126.origin.x = v16;
        v126.origin.y = v18;
        v126.size.width = v20;
        v126.size.height = v22;
        MinY = CGRectGetMinX(v126);
      }

      if (MaxY < MinY)
      {
        goto LABEL_21;
      }

      v127.origin.x = v23;
      v127.origin.y = rect;
      v127.size.width = width;
      v127.size.height = height;
      v135.origin.x = v16;
      v135.origin.y = v18;
      v135.size.width = v20;
      v135.size.height = v22;
      v128 = CGRectUnion(v127, v135);
      x = v128.origin.x;
      y = v128.origin.y;
      width = v128.size.width;
      height = v128.size.height;
LABEL_23:
      v15 = v15 + 1;
    }

    while (v13 != v15);
    v35 = [v12 countByEnumeratingWithState:&v99 objects:v106 count:16];
    v13 = v35;
  }

  while (v35);
LABEL_27:

  v129.origin.x = x;
  v129.origin.y = y;
  v129.size.width = width;
  v129.size.height = height;
  if (!CGRectIsNull(v129))
  {
    v36 = [NSValue valueWithCGRect:x, y, width, height];
    [v81 addObject:v36];
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v81;
  v37 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
  if (v37)
  {
    v38 = *v96;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v96 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v95 + 1) + 8 * i);
        [v40 CGRectValue];
        v41 = [NSValue valueWithCGSize:?];
        v42 = [v83 objectForKey:v41];
        if (!v42)
        {
          v42 = +[NSMutableArray array];
          [v83 setObject:v42 forKey:v41];
        }

        [v42 addObject:v40];
      }

      v37 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
    }

    while (v37);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v78 = [v83 allValues];
  v43 = [v78 countByEnumeratingWithState:&v91 objects:v104 count:16];
  if (v43)
  {
    v79 = *v92;
    do
    {
      v80 = v43;
      for (j = 0; j != v80; j = j + 1)
      {
        if (*v92 != v79)
        {
          objc_enumerationMutation(v78);
        }

        v45 = *(*(&v91 + 1) + 8 * j);
        v46 = CGRectZero.origin.x;
        v47 = CGRectZero.origin.y;
        v48 = CGRectZero.size.width;
        v49 = CGRectZero.size.height;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v50 = v45;
        v51 = [v50 countByEnumeratingWithState:&v87 objects:v103 count:16];
        if (v51)
        {
          v52 = *v88;
          do
          {
            v53 = 0;
            do
            {
              if (*v88 != v52)
              {
                objc_enumerationMutation(v50);
              }

              v54 = *(*(&v87 + 1) + 8 * v53);
              v130.origin.x = v46;
              v130.origin.y = v47;
              v130.size.width = v48;
              v130.size.height = v49;
              if (CGRectIsEmpty(v130))
              {
                [v54 CGRectValue];
LABEL_56:
                v46 = v55;
                v47 = v56;
                v48 = v57;
                v49 = v58;
                goto LABEL_57;
              }

              [v54 CGRectValue];
              v63 = v59;
              v64 = v60;
              v65 = v61;
              v66 = v62;
              if (a4 == 0.0 || ((a3 & 1) == 0 ? (recta = CGRectGetMinX(*&v59), v132.origin.x = v46, v132.origin.y = v47, v132.size.width = v48, v132.size.height = v49, MaxX = CGRectGetMaxX(v132)) : (recta = CGRectGetMinY(*&v59), v131.origin.x = v46, v131.origin.y = v47, v131.size.width = v48, v131.size.height = v49, MaxX = CGRectGetMaxY(v131)), recta - MaxX < a4))
              {
                v133.origin.x = v46;
                v133.origin.y = v47;
                v133.size.width = v48;
                v133.size.height = v49;
                v136.origin.x = v63;
                v136.origin.y = v64;
                v136.size.width = v65;
                v136.size.height = v66;
                *&v55 = CGRectUnion(v133, v136);
                goto LABEL_56;
              }

              v68 = sub_1BDC(v46, v47, v48, v49);
              [v7 addObject:v68];

              [v54 CGRectValue];
              v73 = sub_1BDC(v69, v70, v71, v72);
              [v7 addObject:v73];

              v46 = CGRectZero.origin.x;
              v47 = CGRectZero.origin.y;
              v48 = CGRectZero.size.width;
              v49 = CGRectZero.size.height;
LABEL_57:
              v53 = v53 + 1;
            }

            while (v51 != v53);
            v74 = [v50 countByEnumeratingWithState:&v87 objects:v103 count:16];
            v51 = v74;
          }

          while (v74);
        }

        v134.origin.x = v46;
        v134.origin.y = v47;
        v134.size.width = v48;
        v134.size.height = v49;
        if (!CGRectIsEmpty(v134))
        {
          v75 = sub_1BDC(v46, v47, v48, v49);
          [v7 addObject:v75];
        }
      }

      v43 = [v78 countByEnumeratingWithState:&v91 objects:v104 count:16];
    }

    while (v43);
  }

  v6 = v77;
LABEL_66:

  return v7;
}

double sub_1AD0(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"top"];
  [v2 doubleValue];

  v3 = [v1 objectForKeyedSubscript:@"left"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [v1 objectForKeyedSubscript:@"width"];
  [v6 doubleValue];

  v7 = [v1 objectForKeyedSubscript:@"height"];
  [v7 doubleValue];

  return v5;
}

void sub_1BA4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_1BDC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = objc_alloc_init(NSMutableDictionary);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  v9 = [NSNumber numberWithDouble:CGRectGetMinY(v15)];
  [v8 setObject:v9 forKeyedSubscript:@"top"];

  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v10 = [NSNumber numberWithDouble:CGRectGetMinX(v16)];
  [v8 setObject:v10 forKeyedSubscript:@"left"];

  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  v11 = [NSNumber numberWithDouble:CGRectGetWidth(v17)];
  [v8 setObject:v11 forKeyedSubscript:@"width"];

  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v12 = [NSNumber numberWithDouble:CGRectGetHeight(v18)];
  [v8 setObject:v12 forKeyedSubscript:@"height"];

  return v8;
}

void sub_1D48(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id RectsFilteredOfDuplicates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] > 1)
  {
    sub_20DC(v3, &v35);
    sub_20DC(v4, &v33);
    __p = 0;
    v31 = 0;
    v32 = 0;
    if (v36 == v35)
    {
      v14 = 0;
      v13 = 0;
    }

    else
    {
      v6 = 0;
      if (((v36 - v35) >> 5) <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = (v36 - v35) >> 5;
      }

      do
      {
        v8 = &v35[4 * v6];
        v9 = *(v8 + 1);
        v29.origin = *v8;
        v29.size = v9;
        if (v34 != v33)
        {
          v10 = 0;
          if (((v34 - v33) >> 5) <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = (v34 - v33) >> 5;
          }

          do
          {
            v38 = CGRectIntersection(*(v33 + v10), v29);
            if (CGRectEqualToRect(v38, v29))
            {
              size = CGRectNull.size;
              v29.origin = CGRectNull.origin;
              v29.size = size;
            }

            v10 += 32;
            --v11;
          }

          while (v11);
        }

        if (!CGRectIsNull(v29))
        {
          sub_2318(&__p, &v29);
        }

        ++v6;
      }

      while (v6 != v7);
      v13 = __p;
      v14 = v31;
    }

    sub_2514(&v35, v13, v14, (v14 - v13) >> 5);
    do
    {
      v15 = __p;
      v31 = __p;
      v16 = 0;
      if (v36 == v35)
      {
        v24 = __p;
      }

      else
      {
        v17 = 0;
        if (((v36 - v35) >> 5) <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = (v36 - v35) >> 5;
        }

        do
        {
          v19 = &v35[4 * v17];
          v20 = *(v19 + 1);
          v29.origin = *v19;
          v29.size = v20;
          if (v31 != __p)
          {
            v21 = 0;
            if (((v31 - __p) >> 5) <= 1)
            {
              v22 = 1;
            }

            else
            {
              v22 = (v31 - __p) >> 5;
            }

            do
            {
              v39 = CGRectIntersection(*(__p + v21), v29);
              if (CGRectEqualToRect(v39, v29))
              {
                v23 = CGRectNull.size;
                v29.origin = CGRectNull.origin;
                v29.size = v23;
                v16 = 1;
              }

              v21 += 32;
              --v22;
            }

            while (v22);
          }

          if (!CGRectIsNull(v29))
          {
            sub_2318(&__p, &v29);
          }

          ++v17;
        }

        while (v17 != v18);
        v24 = __p;
        v15 = v31;
      }

      sub_2514(&v35, v24, v15, (v15 - v24) >> 5);
    }

    while ((v16 & 1) != 0);
    v5 = +[NSMutableArray array];
    v25 = v35;
    v26 = v36;
    while (v25 != v26)
    {
      v27 = sub_1BDC(*v25, v25[1], v25[2], v25[3]);
      [v5 addObject:v27];

      v25 += 4;
    }

    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

void sub_2050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v24 = *(v22 - 88);
  if (v24)
  {
    *(v22 - 80) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_20DC(void *a1@<X0>, const void **a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = sub_1AD0(v8);
        v13 = a2[1];
        v14 = a2[2];
        if (v13 >= v14)
        {
          v16 = *a2;
          v17 = v13 - *a2;
          v18 = v17 >> 5;
          v19 = (v17 >> 5) + 1;
          if (v19 >> 59)
          {
            sub_23F0();
          }

          v20 = v14 - v16;
          if (v20 >> 4 > v19)
          {
            v19 = v20 >> 4;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFE0)
          {
            v19 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            sub_2498(a2, v19);
          }

          v21 = 32 * v18;
          *v21 = v9;
          *(v21 + 8) = v10;
          *(v21 + 16) = v11;
          *(v21 + 24) = v12;
          v15 = 32 * v18 + 32;
          memcpy(0, v16, v17);
          v22 = *a2;
          *a2 = 0;
          a2[1] = v15;
          a2[2] = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v13 = v9;
          *(v13 + 1) = v10;
          v15 = (v13 + 32);
          *(v13 + 2) = v11;
          *(v13 + 3) = v12;
        }

        a2[1] = v15;
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }
}

void sub_22D4(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_2318(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_23F0();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2498(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_2408(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2464(exception, a1);
}

std::logic_error *sub_2464(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_2498(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_24E0();
}

void sub_24E0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_2514(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2640(v6, v10);
    }

    sub_23F0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_2640(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2498(a1, a2);
  }

  sub_23F0();
}

void sub_4960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_4988(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) accessibilityElements];
  v6 = [v5 mutableCopy];

  v7 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    v12 = UIAccessibilityTraitHeader;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ((v12 & [v14 accessibilityTraits]) != 0)
        {
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v15 = [WeakRetained baxStoredHeadingsRotorIndex];
    v16 = [v15 integerValue];

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    if ([v3 searchDirection])
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v17 - 1;
    }

    v19 = 0;
    if (v18 < [v7 count])
    {
      v19 = v18;
      if ((v18 & 0x8000000000000000) != 0)
      {
        v19 = [v7 count] - 1;
      }
    }

    v20 = [NSNumber numberWithInteger:v19];
    [WeakRetained baxSetStoredHeadingsRotorIndex:v20];

    v21 = [v7 objectAtIndexedSubscript:v19];
    v22 = [[UIAccessibilityCustomRotorItemResult alloc] initWithTargetElement:v21 targetRange:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void sub_4CFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_4D24(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[BEAccessibilityReadingState currentReadingState];
  v6 = [v5 visibleAnnotations];

  if ([v6 count])
  {
    v7 = [WeakRetained baxStoredHighlightRotorIndex];
    v8 = [v7 integerValue];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if ([v3 searchDirection])
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9 - 1;
    }

    v11 = 0;
    if (v10 < [v6 count])
    {
      v11 = v10;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = [v6 count] - 1;
      }
    }

    v12 = [NSNumber numberWithInteger:v11];
    [WeakRetained baxSetStoredHighlightRotorIndex:v12];

    v13 = [v6 objectAtIndexedSubscript:v11];
    v14 = [v13 objectForKeyedSubscript:@"startPoint"];
    v15 = [v13 objectForKeyedSubscript:@"endPoint"];
    v16 = [v14 objectAtIndexedSubscript:0];
    [v16 doubleValue];
    v18 = v17;
    v19 = [v14 objectAtIndexedSubscript:1];
    [v19 doubleValue];
    v21 = v20;

    v22 = [v15 objectAtIndexedSubscript:0];
    [v22 doubleValue];
    v24 = v23;
    v25 = [v15 objectAtIndexedSubscript:1];
    [v25 doubleValue];
    v27 = v26;

    v28 = [*(a1 + 32) accessibilityElements];
    v29 = [v28 firstObject];
    v30 = [v29 referenceElement];

    v31 = [v30 textMarkerForPoint:{v18, v21}];
    v32 = [v30 textMarkerForPoint:{v24, v27}];
    v33 = v32;
    v34 = &__NSArray0__struct;
    if (v31 && v32)
    {
      v38[0] = v31;
      v38[1] = v32;
      v34 = [NSArray arrayWithObjects:v38 count:2];
    }

    v35 = [[UIAccessibilityCustomRotorItemResult alloc] initWithTargetElement:v30 targetRange:0 targetTextMarkerRange:v34];

    v3 = v37;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void sub_51F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_522C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained baxStoredVisibleLinkInfos];
  v6 = [v5 sortedArrayUsingComparator:&stru_20710];
  if ([v6 count])
  {
    v7 = [WeakRetained baxStoredLinkRotorIndex];
    v8 = [v7 integerValue];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if ([v3 searchDirection])
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9 - 1;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = [*(a1 + 32) count] - 1;
    }

    if (v10 >= [*(a1 + 32) count])
    {
      v10 = 0;
    }

    v11 = [NSNumber numberWithInteger:v10];
    [WeakRetained baxSetStoredLinkRotorIndex:v11];

    v12 = objc_alloc_init(UIAccessibilityCustomRotorItemResult);
    v13 = [v6 objectAtIndex:v10];
    [v12 setTargetElement:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

int64_t sub_5384(id a1, UIAccessibilityLinkSubelement *a2, UIAccessibilityLinkSubelement *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[BEAccessibilityReadingState currentReadingState];
  v7 = [v6 isTextHorizontal];

  [(UIAccessibilityLinkSubelement *)v4 accessibilityFrame];
  v9 = v8;
  v11 = v10;
  [(UIAccessibilityLinkSubelement *)v5 accessibilityFrame];
  if (v7)
  {
    if (v11 != v13)
    {
      [(UIAccessibilityLinkSubelement *)v4 accessibilityFrame];
      v15 = v14;
      [(UIAccessibilityLinkSubelement *)v5 accessibilityFrame];
      if (v15 >= v16)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

      goto LABEL_16;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_16;
  }

  if (v9 == v12)
  {
    goto LABEL_7;
  }

  v18 = +[BEAccessibilityReadingState currentReadingState];
  v19 = [v18 isRTL];

  [(UIAccessibilityLinkSubelement *)v4 accessibilityFrame];
  v21 = v20;
  [(UIAccessibilityLinkSubelement *)v5 accessibilityFrame];
  v23 = -1;
  if (v21 >= v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = -1;
  }

  if (v21 < v22)
  {
    v23 = 1;
  }

  if (v19)
  {
    v17 = v23;
  }

  else
  {
    v17 = v24;
  }

LABEL_16:

  return v17;
}

void sub_589C(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityElements];
  v3 = [v2 lastObject];

  v4 = objc_opt_class();
  v14.receiver = *(a1 + 32);
  v14.super_class = BAXWebPageAccessibilityObjectWrapper;
  v5 = objc_msgSendSuper2(&v14, "accessibilityElements");
  v6 = [v5 firstObject];
  v7 = __BAXCastAsSafeCategory(v4, v6, 0, 0);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) accessibilityElements];
    v9 = [v8 lastObject];
    v10 = [v9 referenceElement];

    v7 = v10;
  }

  v11 = [*(a1 + 40) dataUsingEncoding:4];
  if (v7)
  {
    BEAXPostWebProcessNotification(v7, *(a1 + 48), v11);
  }

  v12 = +[BEAccessibilityReadingState currentReadingState];
  [v12 setDelayForDocumentChanged:0];

  v13 = +[BEAccessibilityReadingState currentReadingState];
  [v13 setNewDocumentFinishedLoading:0];
}

void sub_6B4C(uint64_t a1)
{
  v2 = [*(a1 + 32) _baxIsSettingSelectionTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) _baxIsSettingSelectionTimer];
    [v3 invalidate];
  }

  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&stru_20778 block:1.0];
  [*(a1 + 32) _baxSetIsSettingSelectionTimer:v4];
}

void sub_7DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_7DE8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [a1[4] baxStoredLinkInfos];
  v6 = [WeakRetained visibleLinkElements:v5];

  if ([v6 count])
  {
    v7 = [WeakRetained baxStoredLinkRotorIndex];
    v8 = [v7 integerValue];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if ([v3 searchDirection])
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9 - 1;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = [a1[5] count] - 1;
    }

    if (v10 >= [a1[5] count])
    {
      v10 = 0;
    }

    v11 = [NSNumber numberWithInteger:v10];
    [WeakRetained baxSetStoredLinkRotorIndex:v11];

    v12 = objc_alloc_init(UIAccessibilityCustomRotorItemResult);
    v13 = [v6 objectAtIndex:v10];
    [v12 setTargetElement:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_8048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_8070(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[BEAccessibilityReadingState currentReadingState];
  v6 = [v5 visibleAnnotations];

  if ([v6 count])
  {
    v7 = [WeakRetained baxStoredLinkRotorIndex];
    v8 = [v7 integerValue];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if ([v3 searchDirection])
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9 - 1;
    }

    v11 = 0;
    if (v10 < [v6 count])
    {
      v11 = v10;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = [v6 count] - 1;
      }
    }

    v12 = [NSNumber numberWithInteger:v11];
    [WeakRetained baxSetStoredLinkRotorIndex:v12];

    v13 = [v6 objectAtIndexedSubscript:v11];
    v14 = [v13 objectForKeyedSubscript:@"startPoint"];
    v15 = [v13 objectForKeyedSubscript:@"endPoint"];
    v16 = [v14 objectAtIndexedSubscript:0];
    [v16 doubleValue];
    v18 = v17 + 1.0;
    v50 = v14;
    v19 = [v14 objectAtIndexedSubscript:1];
    [v19 doubleValue];
    v21 = v20 + 1.0;

    v22 = [v15 objectAtIndexedSubscript:0];
    [v22 doubleValue];
    v24 = v23 + -1.0;
    v49 = v15;
    v25 = [v15 objectAtIndexedSubscript:1];
    [v25 doubleValue];
    v27 = v26 + -1.0;

    v28 = [WeakRetained baxBookContentElement];
    v29 = [v28 textMarkerForPoint:{v18, v21}];

    v30 = [WeakRetained baxBookContentElement];
    v31 = [v30 textMarkerForPoint:{v24, v27}];

    v32 = [WeakRetained baxBookContentElement];
    v33 = [v32 positionForTextMarker:v29];

    v34 = [WeakRetained baxBookContentElement];
    v35 = [v34 positionForTextMarker:v31];

    v36 = [WeakRetained baxBookContentElement];
    v37 = [v36 _stringFromStartMarker:v29 toEndMarker:v31 attributed:0];

    v51 = v13;
    v38 = [v13 objectForKeyedSubscript:@"text"];
    v52 = v3;
    if (v37)
    {
      v39 = [v37 rangeOfString:v38];
      if (v39 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = &v33[v39 + v40];
        v33 = &v33[v39];
      }
    }

    v41 = [WeakRetained baxBookContentElement];
    v42 = [BEAXWebContentUtilities visibleTextRangeInChapterForBookContentElement:v41];

    v43 = v33 - v42;
    v44 = v35 - v33;
    v45 = [UIAccessibilityCustomRotorItemResult alloc];
    v46 = [WeakRetained baxBookContentElement];
    v47 = [v45 initWithTargetElement:v46 targetRange:0];

    [v47 setTargetNSRange:{v43, v44}];
    v3 = v52;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

void sub_8960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_899C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) lineRectsForTextMarkerRange:*(a1 + 40)];

    _objc_release_x1();
  }

  else
  {
    [*(a1 + 32) frameForTextMarkers:*(a1 + 40)];
    v2 = [NSValue valueWithRect:?];
    v6 = v2;
    v3 = [NSArray arrayWithObjects:&v6 count:1];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void sub_961C(uint64_t a1)
{
  if (([*(a1 + 32) _baxIsTurning] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = UIAccessibilityPageScrolledNotification;
    v4 = [v2 _axPageScrollString];
    [v2 accessibilityOverrideProcessNotification:v3 notificationData:v4];
  }
}

uint64_t sub_9F58(uint64_t a1, int a2)
{
  v4 = _BookEPUBWebProcessPluginLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v11 = 67109378;
    LODWORD(v12[0]) = a2;
    WORD2(v12[0]) = 2114;
    *(v12 + 6) = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Received match state: %d for #fontFamily '%{public}@'", &v11, 0x12u);
  }

  if ((a2 - 3) >= 3)
  {
    if (a2 == 1)
    {
      v6 = _BookEPUBWebProcessPluginLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 138543362;
        v12[0] = v10;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Completed matching #fontFamily '%{public}@'", &v11, 0xCu);
      }

      v8 = 1;
      goto LABEL_9;
    }

    if (a2 != 8)
    {
      return 1;
    }
  }

  v6 = _BookEPUBWebProcessPluginLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v11 = 67240450;
    LODWORD(v12[0]) = a2;
    WORD2(v12[0]) = 2114;
    *(v12 + 6) = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Error state:%{public}u registering #fontFamily:'%{public}@'", &v11, 0x12u);
  }

  v8 = 0;
LABEL_9:

  CFRelease(*(a1 + 48));
  (*(*(a1 + 40) + 16))();
  return v8;
}

id BEAXWebNotificationWithName(void *a1)
{
  v1 = a1;
  v2 = sub_BA4C();
  v3 = [v2 valueForKey:v1];

  return v3;
}

id sub_BA4C()
{
  if (qword_26D70 != -1)
  {
    sub_12F28();
  }

  v1 = qword_26D68;

  return v1;
}

id BEAXWebNotificationName(void *a1)
{
  v1 = a1;
  sub_BA4C();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v2 objectForKeyedSubscript:{v6, v10}];
        v8 = [v7 isEqual:v1];

        if (v8)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void BEAXPostWebProcessNotification(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedInt:a2];
  v8 = BEAXWebNotificationName(v7);

  if (objc_opt_respondsToSelector())
  {
    [v5 accessibilityOverrideProcessNotification:v8 notificationData:v6];
  }

  else
  {
    v9 = _BookEPUBWebProcessPluginLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector("accessibilityOverrideProcessNotification:notificationData:");
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Attempting to call selector '%{public}@'", &v11, 0xCu);
    }
  }
}

void sub_BE18(id a1)
{
  v1 = qword_26D68;
  qword_26D68 = &off_21A18;
}

void sub_BEE4(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_26D80;
  qword_26D80 = v1;

  if (_AXSApplicationAccessibilityEnabled())
  {
    [qword_26D80 loadAccessibilitySupportWithDelay];
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:qword_26D80 selector:"loadAccessibilitySupportWithDelay" name:kAXSApplicationAccessibilityEnabledNotification object:0];
}

void BAXPerformBlockOnMainThread(void *a1)
{
  block = a1;
  if (+[NSThread isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

void BAXPerformBlockOnMainThreadAfterDelay(void *a1, double a2)
{
  v2 = (a2 * 1000000000.0);
  block = a1;
  v3 = dispatch_time(0, v2);
  dispatch_after(v3, &_dispatch_main_q, block);
}

uint64_t sub_C3A4(uint64_t a1)
{
  qword_26D90 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_CDB0(uint64_t a1, uint64_t a2)
{
  v14 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = +[BEAccessibilityReadingState currentReadingState];
  v5 = [v4 bookLayout];

  [v14 frameInScreenCoordinates];
  if (v5 == &dword_0 + 3)
  {
    if (CGRectGetMinY(*&v6) > *(a1 + 56))
    {
      goto LABEL_8;
    }

    [v14 frameCenterPoint];
    v16.x = v10;
    v16.y = v11;
    if (!CGRectContainsPoint(*(a1 + 64), v16))
    {
      goto LABEL_8;
    }

LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = a2 - *(a1 + 96);
    goto LABEL_8;
  }

  if (CGRectGetMinX(*&v6) <= *(a1 + 48))
  {
    [v14 frameCenterPoint];
    v17.x = v12;
    v17.y = v13;
    if (CGRectContainsPoint(*(a1 + 64), v17))
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_DB04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v7 = objc_opt_class();
  v8 = __BAXCastAsSafeCategory(v7, v16, 0, 0);
  v9 = [v8 baxAttachmentElement];
  if (v9)
  {
    [*(a1 + 32) addAttribute:UIAccessibilityTokenAttachment value:v9 range:{a3, a4}];
  }

  else if (BAXShouldPerformValidationChecks())
  {
    v10 = BAXShouldCrashOnValidationErrorAfterLaunch();
    if (__BAXHandleValidationErrorWithDescription(v10, 0, @"We probably need to handle attachments like this one: %@", v11, v12, v13, v14, v15, *(a1 + 40)))
    {
      abort();
    }
  }
}

void sub_DE90(void *a1, NSUInteger *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 accessibilityElementCount];
  if (v7 < 1)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = 0;
  v38 = v7;
  v39 = v5;
  do
  {
    v10 = [v5 accessibilityElementAtIndex:v9];
    if ([v10 accessibilityElementCount] >= 1)
    {
      sub_DE90(v10, a2, v6);
      goto LABEL_20;
    }

    v40 = v9;
    v11 = [v10 lineRectsAndText];
    v41 = v10;
    *a2 = [v10 elementTextRange];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (!v12)
    {
      goto LABEL_19;
    }

    v13 = v12;
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = [v16 valueForKey:@"text"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [[NSAttributedString alloc] initWithString:v17];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_17;
          }

          v18 = v17;
        }

        v19 = v18;
        v20 = *a2;
        v21 = [v18 length];
        *a2 += [v19 length];
        v22 = [v16 valueForKey:@"rect"];
        [v22 CGRectValue];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        [BEAXLineInfo addOffsetForPoint:v24, v26];
        v32 = v31;
        v34 = v33;
        v35 = [v6 lastObject];
        v49.location = [v35 rangeInChapter];
        v49.length = v36;
        v48.location = v20;
        v48.length = v21;
        if (!NSIntersectionRange(v48, v49).length)
        {
          v37 = [[BEAXLineInfo alloc] initWithRange:v20 frame:v21 attributedText:v19 element:v41, v32, v34, v28, v30];
          [v6 addObject:v37];
        }

LABEL_17:
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v13);
LABEL_19:

    v8 = v38;
    v5 = v39;
    v9 = v40;
    v10 = v41;
LABEL_20:

    ++v9;
  }

  while (v9 != v8);
LABEL_21:
}

void sub_F51C(uint64_t a1)
{
  v2 = [*(a1 + 32) _baxIsSettingSelectionTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) _baxIsSettingSelectionTimer];
    [v3 invalidate];
  }

  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&stru_20930 block:1.0];
  [*(a1 + 32) _baxSetIsSettingSelectionTimer:v4];
}

uint64_t sub_FAA4(uint64_t a1)
{
  qword_26DA8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id _BookEPUBWebProcessPluginLog()
{
  if (qword_26DB8 != -1)
  {
    sub_12F3C();
  }

  v1 = qword_26DB0;

  return v1;
}

void sub_10308(id a1)
{
  qword_26DB0 = os_log_create("com.apple.iBooks", "BookEPUBWebProcessPlugin");

  _objc_release_x1();
}

id BookEPUBWebProcessPluginRectFilteringLog()
{
  if (qword_26DC8 != -1)
  {
    sub_12F50();
  }

  v1 = qword_26DC0;

  return v1;
}

void sub_10390(id a1)
{
  qword_26DC0 = os_log_create("com.apple.iBooks", "RectFiltering");

  _objc_release_x1();
}

JSValue *__cdecl sub_10450(id a1, JSValue *a2, JSValue *a3, JSValue *a4, JSValue *a5, JSValue *a6)
{
  v7 = a3;
  v8 = a2;
  v9 = [(JSValue *)v8 toArray];
  v10 = [(JSValue *)v7 toArray];

  v11 = RectsFilteredOfDuplicates(v9, v10);

  v12 = [(JSValue *)v8 context];

  v13 = [JSValue valueWithObject:v11 inContext:v12];

  return v13;
}

uint64_t BAXShouldPerformValidationChecks()
{
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }

  return 0;
}

uint64_t __BAXHandleValidationErrorWithDescription(int a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a1;
  v11 = a3;
  v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

  NSLog(@"*** BAX validation error: %@", v12);
  if (v12)
  {
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1 && a2 != 0)
  {
    if (qword_26DE8 != -1)
    {
      sub_12FA0();
    }

    v10 = 0;
  }

  return v10;
}

uint64_t BAXShouldCrashOnValidationErrorAfterLaunch()
{
  if (qword_26DE0 != -1)
  {
    sub_12FC8();
  }

  return 0;
}

uint64_t __BAXPerformSafeBlock(void *a1)
{
  v1 = a1;
  v1[2]();

  return 0;
}

id __BAXCastAsSafeCategory(void *a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a2;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v8 = [a1 baxTargetClassName];
  v9 = v8;
  if (!a3)
  {
    if (!v8 || !NSClassFromString(v8))
    {
      goto LABEL_20;
    }

    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_18;
  }

  if (qword_26DD0 == -1)
  {
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_12F64();
  if (a4)
  {
LABEL_5:
    *a4 = 0;
  }

LABEL_6:
  if (!v9)
  {
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v10 = NSClassFromString(v9);
  v11 = v10;
  if (qword_26DD0 == -1)
  {
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = v10;
  sub_12F64();
  v11 = v16;
  if (a4)
  {
LABEL_9:
    *a4 = 0;
  }

LABEL_10:
  if (!v11)
  {
    goto LABEL_20;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (qword_26DD0 == -1)
  {
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v15 = isKindOfClass;
  sub_12F64();
  isKindOfClass = v15;
  if (a4)
  {
LABEL_13:
    *a4 = 0;
  }

LABEL_18:
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = v7;
LABEL_21:

LABEL_22:

  return v13;
}

id __BAXCastAsClass(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v6 = a2;
  if (!v6)
  {
    goto LABEL_8;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (a3)
  {
    if (qword_26DD0 == -1)
    {
      if (!a4)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    sub_12F64();
    if (a4)
    {
LABEL_5:
      *a4 = 0;
    }
  }

LABEL_6:
  if (isKindOfClass)
  {
    v8 = v6;
    goto LABEL_9;
  }

LABEL_8:
  v8 = 0;
LABEL_9:

  return v8;
}

id __BAXCastAsProtocol(void *a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = [v8 conformsToProtocol:v7];
  if (a3)
  {
    if (qword_26DD0 == -1)
    {
      if (!a4)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    sub_12F64();
    if (a4)
    {
LABEL_5:
      *a4 = 0;
    }
  }

LABEL_6:
  if (v10)
  {
    v11 = v9;
    goto LABEL_9;
  }

LABEL_8:
  v11 = 0;
LABEL_9:

  return v11;
}

void BAXInstallSafeCategory(NSString *a1)
{
  v1 = NSClassFromString(a1);
  v2 = v1;
  if (qword_26DD0 == -1)
  {
    if (!v1)
    {
      return;
    }
  }

  else
  {
    sub_12F64();
    if (!v2)
    {
      return;
    }
  }

  [(objc_class *)v2 performSelector:"_baxInitializeSafeCategory"];
}

uint64_t BAXShouldCrashOnValidationError()
{
  if (qword_26DD8 != -1)
  {
    sub_1302C();
  }

  return 0;
}

void BAXInstallSafeCategories(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (!v2)
  {
    goto LABEL_27;
  }

  __base = malloc_type_malloc(40 * v2, 0x800402FCC0CB6uLL);
  if (!__base)
  {
    goto LABEL_27;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v1;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_23;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v35;
  do
  {
    v7 = 0;
    do
    {
      if (*v35 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v34 + 1) + 8 * v7);
      v9 = NSClassFromString(v8);
      v10 = v9;
      if (qword_26DD0 == -1)
      {
        if (!v9)
        {
          goto LABEL_14;
        }

LABEL_10:
        v11 = [(objc_class *)v10 baxTargetClassName];
        v12 = NSClassFromString(v11);
        v13 = v12;
        if (qword_26DD0 == -1)
        {
          if (v12)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_12F78();
          if (v13)
          {
LABEL_12:
            v14 = &__base[40 * v5];
            *v14 = v10;
            objc_storeStrong(v14 + 1, v8);
            v15 = sub_11434(v10, v8);
            v16 = v14[2];
            v14[2] = v15;

            v14[3] = v13;
            v17 = sub_11434(v13, v11);
            v18 = v14[4];
            v14[4] = v17;

            ++v5;
          }
        }

        goto LABEL_14;
      }

      sub_12F78();
      if (v10)
      {
        goto LABEL_10;
      }

LABEL_14:
      v7 = v7 + 1;
    }

    while (v4 != v7);
    v19 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    v4 = v19;
  }

  while (v19);
LABEL_23:

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  __compar[0] = _NSConcreteStackBlock;
  __compar[1] = 3221225472;
  __compar[2] = sub_114F8;
  __compar[3] = &unk_209E0;
  v23 = v20;
  v31 = v23;
  v24 = v21;
  v32 = v24;
  v25 = v22;
  v33 = v25;
  qsort_b(__base, v5, 0x28uLL, __compar);
  if (v5)
  {
    v26 = __base;
    do
    {
      [*v26 _baxInstallSafeCategoryOnClass:{*(v26 + 3), v27}];
      v26 += 40;
      --v5;
    }

    while (v5);
  }

  free(__base);

  v1 = v27;
LABEL_27:
}

id sub_11434(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableString alloc] initWithString:v3];
  v5 = [a1 superclass];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v4 insertString:@" atIndex:{", 0}];
      v7 = NSStringFromClass(v6);
      [v4 insertString:v7 atIndex:0];

      v6 = [(objc_class *)v6 superclass];
    }

    while (v6);
  }

  return v4;
}

uint64_t sub_114F8(void **a1, void **a2, uint64_t a3)
{
  result = [a2[4] compare:*(a3 + 32)];
  if (!result)
  {
    if (sub_11584(a2, a3, a1[4], a1[5], a1[6]))
    {
      return 1;
    }

    else if (sub_11584(a3, a2, a1[4], a1[5], a1[6]))
    {
      return -1;
    }

    else
    {
      return [a2[2] compare:*(a3 + 16)];
    }
  }

  return result;
}

uint64_t sub_11584(void **a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  sub_12B28(*a1, v9, v10, v11);
  v12 = 0;
  while ([v9 count])
  {
    v13 = [v9 objectAtIndex:0];
    [v9 removeObjectAtIndex:0];
    [v11 addObject:v13];
    if ([(NSString *)v13 isEqualToString:*(a2 + 8)])
    {
      [v9 removeAllObjects];
      v12 = 1;
    }

    else
    {
      v14 = NSClassFromString(v13);
      sub_12B28(v14, v9, v10, v11);
    }
  }

  [v11 removeAllObjects];

  return v12 & 1;
}

id BAXLocString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_20BC0 table:@"Accessibility"];

  if (v3 == v1)
  {
    if (qword_26DD0 != -1)
    {
      sub_12F64();
    }

    v3 = 0;
  }

  return v3;
}

void sub_11B04(id a1)
{
  if (qword_26DD8 != -1)
  {
    sub_1302C();
  }
}

void sub_11B34(id a1)
{
  if (qword_26DD8 != -1)
  {
    sub_1302C();
  }
}

void __BAXValidateMethodSignature(int a1, int a2, int a3, Method m, uint64_t a5, void *a6)
{
  if (!m)
  {
    return;
  }

  v7 = method_copyReturnType(m);
  v8 = v7;
  if (qword_26DD0 != -1)
  {
    sub_12F64();
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v7)
  {
LABEL_4:
    free(v8);
  }

LABEL_5:
  NumberOfArguments = method_getNumberOfArguments(m);
  if (NumberOfArguments != 2)
  {
    v10 = NumberOfArguments;
    v11 = 2;
    while (1)
    {
      v12 = a6++;
      if (!*v12)
      {
        goto LABEL_15;
      }

      v13 = method_copyArgumentType(m, v11);
      v14 = v13;
      if (qword_26DD0 != -1)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (v10 == ++v11)
      {
        goto LABEL_15;
      }
    }

    sub_12F78();
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_10:
    free(v14);
    goto LABEL_11;
  }

LABEL_15:
  if (qword_26DD0 != -1)
  {
    sub_12F78();
  }
}

void __BAXValidateSymbol(char *__symbol)
{
  if (!dlsym(&dword_8, __symbol))
  {
    dlsym(0xFFFFFFFFFFFFFFFELL, __symbol);
    if (qword_26DD0 != -1)
    {
      sub_12F64();
    }
  }
}

void __BAXValidateClassMethod(NSString *a1, void *a2)
{
  v3 = a2;
  v4 = NSClassFromString(a1);
  v5 = NSSelectorFromString(v3);

  class_getClassMethod(v4, v5);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }
}

void __BAXValidateClassMethodComplete(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = a1;
  v12 = NSClassFromString(v11);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }

  v13 = NSSelectorFromString(v10);
  ClassMethod = class_getClassMethod(v12, v13);
  v18 = ClassMethod;
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }

  __BAXValidateMethodSignature(ClassMethod, v15, v16, v18, v17, &a9);
}

void __BAXValidateIsKindOfClass(NSString *a1, void *a2)
{
  aClassName = a2;
  v3 = NSClassFromString(a1);
  v4 = NSClassFromString(aClassName);
  if (v3)
  {
    v5 = v4;
    if (v4)
    {
      do
      {
        Superclass = class_getSuperclass(v3);
        if (!Superclass)
        {
          break;
        }

        v3 = Superclass;
      }

      while (Superclass != v5);
    }
  }

  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }
}

void __BAXValidateIvarType(NSString *a1, const char *a2)
{
  v3 = NSClassFromString(a1);
  InstanceVariable = class_getInstanceVariable(v3, a2);
  ivar_getTypeEncoding(InstanceVariable);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }
}

void __BAXValidateInstanceMethod(NSString *a1, void *a2)
{
  v3 = a2;
  v4 = NSClassFromString(a1);
  v5 = NSSelectorFromString(v3);

  class_getInstanceMethod(v4, v5);
  outCount = 0;
  v6 = class_copyMethodList(v4, &outCount);
  if (v6)
  {
    free(v6);
  }

  if (qword_26DD0 != -1)
  {
    sub_12F78();
  }
}

void __BAXValidateInstanceMethodComplete(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = a1;
  v12 = NSClassFromString(v11);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }

  v13 = NSSelectorFromString(v10);
  InstanceMethod = class_getInstanceMethod(v12, v13);
  v18 = InstanceMethod;
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }

  __BAXValidateMethodSignature(InstanceMethod, v15, v16, v18, v17, &a9);
}

void __BAXValidateProperty(NSString *a1, const char *a2)
{
  v3 = NSClassFromString(a1);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }

  class_getProperty(v3, a2);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }
}

void __BAXValidateClass(NSString *a1)
{
  v1 = NSClassFromString(a1);
  class_getName(v1);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }
}

void __BAXValidateIvar(NSString *a1, const char *a2)
{
  v3 = NSClassFromString(a1);
  class_getInstanceVariable(v3, a2);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }
}

void __BAXValidateProtocolProperty(NSString *a1, const char *a2)
{
  v3 = NSProtocolFromString(a1);
  protocol_getProperty(v3, a2, 0, 1);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }
}

void __BAXValidateProtocolMethod(NSString *a1, void *a2, BOOL a3, BOOL a4)
{
  v7 = a2;
  p = NSProtocolFromString(a1);
  v8 = NSSelectorFromString(v7);

  protocol_getMethodDescription(p, v8, a3, a4);
  if (qword_26DD0 != -1)
  {
    sub_12F64();
  }
}

objc_ivar *__bax_verbose_encode_with_type_encoding_group_class(objc_class *a1, const char *a2)
{
  result = class_getInstanceVariable(a1, a2);
  if (result)
  {

    return ivar_getTypeEncoding(result);
  }

  return result;
}

id __BAXGetAssociatedBool(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 BOOLValue];

  return v3;
}

void __BAXSetAssociatedBool(void *a1, const void *a2, int a3)
{
  object = a1;
  if (a3)
  {
    v5 = [NSNumber numberWithBool:1];
  }

  else
  {
    v5 = 0;
  }

  objc_setAssociatedObject(object, a2, v5, &dword_0 + 1);
}

id __BAXGetAssociatedInteger(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 integerValue];

  return v3;
}

void __BAXSetAssociatedInteger(void *a1, const void *a2, void *a3)
{
  object = a1;
  if (a3)
  {
    a3 = [NSNumber numberWithInteger:a3];
  }

  objc_setAssociatedObject(object, a2, a3, &dword_0 + 1);
}

id __BAXGetAssociatedUnsignedInteger(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

void __BAXSetAssociatedUnsignedInteger(void *a1, const void *a2, void *a3)
{
  object = a1;
  if (a3)
  {
    a3 = [NSNumber numberWithUnsignedInteger:a3];
  }

  objc_setAssociatedObject(object, a2, a3, &dword_0 + 1);
}

id __BAXGetAssociatedRange(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rangeValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __BAXSetAssociatedRange(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  object = a1;
  if (a3 | a4)
  {
    v7 = [NSValue valueWithRange:a3, a4];
  }

  else
  {
    v7 = 0;
  }

  objc_setAssociatedObject(object, a2, v7, &dword_0 + 1);
}

double __BAXGetAssociatedTimeInterval(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void __BAXSetAssociatedTimeInterval(void *a1, const void *a2, double a3)
{
  object = a1;
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[NSNumber alloc] initWithDouble:a3];
  }

  objc_setAssociatedObject(object, a2, v5, &dword_0 + 1);
}

double __BAXGetAssociatedCGFloat(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void __BAXSetAssociatedCGFloat(void *a1, const void *a2, double a3)
{
  object = a1;
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSNumber numberWithDouble:a3];
  }

  objc_setAssociatedObject(object, a2, v5, &dword_0 + 1);
}

double __BAXGetAssociatedCGPoint(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 CGPointValue];
    x = v4;
  }

  else
  {
    x = CGPointZero.x;
  }

  return x;
}

void __BAXSetAssociatedCGPoint(void *a1, const void *a2, double a3, double a4)
{
  object = a1;
  if (a3 == CGPointZero.x && a4 == CGPointZero.y)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSValue valueWithCGPoint:a3, a4];
  }

  objc_setAssociatedObject(object, a2, v8, &dword_0 + 1);
}

double __BAXGetAssociatedCGRect(void *a1, const void *a2)
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 CGRectValue];
    x = v4;
  }

  else
  {
    x = CGRectZero.origin.x;
  }

  return x;
}

void __BAXSetAssociatedCGRect(void *a1, const void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  object = a1;
  v15.origin.x = CGRectZero.origin.x;
  v15.origin.y = CGRectZero.origin.y;
  v15.size.width = CGRectZero.size.width;
  v15.size.height = CGRectZero.size.height;
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (CGRectEqualToRect(v14, v15))
  {
    v11 = 0;
  }

  else
  {
    v11 = [NSValue valueWithCGRect:a3, a4, a5, a6];
  }

  objc_setAssociatedObject(object, a2, v11, &dword_0 + 1);
}

id __stringForNextArgument(void *a1)
{
  v1 = a1;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 string];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id __BAXStringForVariables(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [NSMutableString stringWithString:&stru_20BC0];
  v11 = __stringForNextArgument(v9);
  if ([v11 length])
  {
    [v10 appendString:v11];
  }

  v16 = &a9;
  while (1)
  {
    v12 = v16++;
    v13 = *v12;
    v14 = __stringForNextArgument(v13);
    if (![v14 length])
    {
      goto LABEL_9;
    }

    if ([v14 isEqualToString:@"__BAXStringForVariablesSentinel"])
    {
      break;
    }

    if ([v10 length])
    {
      [v10 appendString:{@", "}];
    }

    [v10 appendString:v14];
LABEL_9:
  }

  return v10;
}

void sub_12B28(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [a1 baxAddSafeCategoryDependenciesToCollection:v8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if (([v9 containsObject:{v15, v16}] & 1) == 0 && (objc_msgSend(v7, "containsObject:", v15) & 1) == 0)
        {
          [v7 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [v10 removeAllObjects];
}

void sub_12FDC(void *a1)
{
  objc_begin_catch(a1);
  if (qword_26DD0 != -1)
  {
    dispatch_once(&qword_26DD0, &stru_20A00);
  }

  objc_end_catch();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}