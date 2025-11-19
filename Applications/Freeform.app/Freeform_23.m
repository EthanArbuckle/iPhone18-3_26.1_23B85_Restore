void sub_1004FF860(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FF8A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004FF980(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  ++*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12))
  {
    dispatch_suspend(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
  v3 = *(*(a1 + 32) + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004FFA58;
  v5[3] = &unk_101839D68;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

void sub_1004FFA58(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_lock((*(a1 + 32) + 32));
  --*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12) - 1)
  {
    dispatch_resume(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
}

void sub_1004FFB70(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  ++*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12))
  {
    dispatch_suspend(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
  v3 = *(*(a1 + 32) + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004FFC48;
  v5[3] = &unk_101839D68;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_barrier_sync(v3, v5);
}

void sub_1004FFC48(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_lock((*(a1 + 32) + 32));
  --*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12) - 1)
  {
    dispatch_resume(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
}

void sub_1005002A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005002E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005006A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005006E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100500728(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050076C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005007B0(uint64_t a1)
{
  *(*(a1 + 32) + 73) = 1;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = *(*(a1 + 32) + 49);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100500F00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100500F44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100500F88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100500FCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100501010(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100501054(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100501098(uint64_t a1)
{
  v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(a1 + 32) + 65) count]);
  v6 = [NSNumberFormatter localizedStringFromNumber:v2 numberStyle:1];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"%@ movies couldn’t be updated." value:0 table:0];
  v5 = [NSString stringWithFormat:v4, v6];

  [*(a1 + 40) presentErrors:*(*(a1 + 32) + 65) withLocalizedDescription:v5 completionHandler:0];
}

void sub_100501430(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100501474(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100502E04(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  if ((v4 >> 3) >> 31)
  {
    v8 = sub_10138848C(&v14, buf);
    v9 = *buf;
    if (v8)
    {
      v10 = v14;
      v11 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v11, buf, v10, v9);
    }

    v12 = [NSString stringWithUTF8String:"CGFloat _CRLPKVectorSafeGet(std::vector<CGFloat>, int)"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKCalculusUtility.mm"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:16 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

    v3 = *a1;
    v5 = 2147483646;
  }

  else
  {
    v5 = (v4 >> 3) - 1;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  return *(v3 + 8 * (v5 & ~(v5 >> 31)));
}

void sub_100502F68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100502FAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100502FF0(int a1, int a2, const void **a3)
{
  v9 = a1 - 1;
  if (a1 >= 1)
  {
    v20[1] = v8;
    v20[2] = v7;
    v20[3] = v6;
    v20[4] = v5;
    v20[11] = v3;
    v20[12] = v4;
    if ((a2 & ~(a2 >> 31)) < v9)
    {
      v9 = a2 & ~(a2 >> 31);
    }

    v11 = ((a1 - v9) & 1) + v9;
    v12 = 2.0 / (v11 + a1);
    v13 = a1 - v11;
    v14 = (a1 - v11) / 2;
    v15 = v12;
    if ((a1 - v11) >= 2)
    {
      v16 = 0.0;
      v17 = v13 / 2;
      do
      {
        v20[0] = v16 / v14 * v15;
        sub_10030DE08(a3, v20);
        v16 = v16 + 1.0;
        --v17;
      }

      while (v17);
    }

    for (; v11; --v11)
    {
      v20[0] = v15;
      sub_10030DE08(a3, v20);
    }

    if (v13 >= 2)
    {
      v18 = v14;
      v19 = 0.0;
      do
      {
        v20[0] = (1.0 - v19 / v18) * v15;
        sub_10030DE08(a3, v20);
        v19 = v19 + 1.0;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_100503114(uint64_t *a1, void *a2, const void **a3)
{
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v22 = 0.0;
      v7 = a2[1] - *a2;
      if (v7)
      {
        v8 = 0;
        v9 = v7 >> 3;
        do
        {
          v10 = v9 / -2;
          if ((v6 + v8 + v10 + 1) >> 31)
          {
            v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013885F4();
            }

            v14 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v24 = v13;
              v25 = 2082;
              v26 = "void _CRLPKConvolve(std::vector<CGFloat>, std::vector<CGFloat>, std::vector<CGFloat> &)";
              v27 = 2082;
              v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKCalculusUtility.mm";
              v29 = 1024;
              v30 = 64;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              dispatch_once(&qword_101AD5A10, &stru_10186AD40);
            }

            v15 = off_1019EDA68;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v18 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v24 = v13;
              v25 = 2114;
              v26 = v18;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v16 = [NSString stringWithUTF8String:"void _CRLPKConvolve(std::vector<CGFloat>, std::vector<CGFloat>, std::vector<CGFloat> &)"];
            v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKCalculusUtility.mm"];
            [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:64 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

            v11 = 0x7FFFFFFF;
          }

          else
          {
            v11 = v6 + v8 + v10 + 1;
          }

          __p = 0;
          v20 = 0;
          v21 = 0;
          sub_100312EF0(&__p, *a1, a1[1], (a1[1] - *a1) >> 3);
          v12 = sub_100502E04(&__p, v11);
          v9 = (a2[1] - *a2) >> 3;
          if (v9 <= v8)
          {
            sub_1002637C8();
          }

          v22 = v22 + v12 * *(*a2 + 8 * v8);
          if (__p)
          {
            v20 = __p;
            operator delete(__p);
            v9 = (a2[1] - *a2) >> 3;
          }

          ++v8;
        }

        while (v8 < v9);
        ++v6;
      }

      else
      {
        ++v6;
      }

      sub_10030DE08(a3, &v22);
    }

    while (v6 < (a1[1] - *a1) >> 3);
  }
}

void sub_1005034B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005034F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050353C(uint64_t *a1, const void **a2)
{
  __src = 0;
  v34 = 0;
  v35 = 0;
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v30 = xmmword_1014635D8;
      v31 = unk_1014635E8;
      v32 = xmmword_1014635F8;
      memset(v29, 0, sizeof(v29));
      *(v29 + 8) = *(v2 + v4);
      if (v5 >= v35)
      {
        v10 = __src;
        v11 = v5 - __src;
        v12 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - __src) >> 4);
        v13 = v12 + 1;
        if (v12 + 1 > 0x333333333333333)
        {
          sub_1000C1D48();
        }

        if (0x999999999999999ALL * ((v35 - __src) >> 4) > v13)
        {
          v13 = 0x999999999999999ALL * ((v35 - __src) >> 4);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v35 - __src) >> 4) >= 0x199999999999999)
        {
          v14 = 0x333333333333333;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_10022A114(&__src, v14);
        }

        v15 = 80 * v12;
        *(v15 + 16) = v29[1];
        *(v15 + 32) = v30;
        *(v15 + 48) = v31;
        *(v15 + 64) = v32;
        *v15 = v29[0];
        v5 = (80 * v12 + 80);
        v16 = (v15 - v11);
        memcpy((v15 - v11), v10, v11);
        v17 = __src;
        __src = v16;
        v34 = v5;
        v35 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v5 = v29[0];
        v7 = v29[1];
        v8 = v30;
        v9 = v32;
        *(v5 + 3) = v31;
        *(v5 + 4) = v9;
        *(v5 + 1) = v7;
        *(v5 + 2) = v8;
        v5 += 80;
      }

      v34 = v5;
      ++v6;
      v2 = *a1;
      v18 = a1[1];
      v4 += 16;
    }

    while (v6 < (v18 - *a1) >> 4);
    if (v18 != v2)
    {
      v19 = 0;
      do
      {
        v20 = sub_1003D6310(&__src, v19, sub_1003D60E0, 0.0);
        v22 = v21;
        v23 = sub_1003D6310(&__src, v19, sub_1003D61A4, 0.0);
        v25 = v24;
        v26 = pow(v22 * v22 + v20 * v20, 1.5);
        if (v26 <= 0.001)
        {
          v27 = 100.0;
        }

        else
        {
          v27 = fabs((v20 * v25 - v22 * v23) / v26);
        }

        *v29 = v27;
        sub_10030DE08(a2, v29);
        ++v19;
      }

      while (v19 < (a1[1] - *a1) >> 4);
    }

    if (__src)
    {
      v34 = __src;
      operator delete(__src);
    }
  }
}

void sub_1005037F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10050381C(uint64_t *a1, const void **a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_10022BBFC(&v12, *a1, a1[1], (a1[1] - *a1) >> 4);
  sub_10050353C(&v12, &v15);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_100502FF0(15, 5, &v9);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100312EF0(&v6, v15, v16, (v16 - v15) >> 3);
  __p = 0;
  v4 = 0;
  v5 = 0;
  sub_100312EF0(&__p, v9, v10, (v10 - v9) >> 3);
  sub_100503114(&v6, &__p, a2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_100503924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v19 = *(v17 - 40);
  if (v19)
  {
    *(v17 - 32) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005048FC(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v6 = *(a1 + 48);
  v7 = a2 / v6;
  v8 = a2 % v6;
  v9 = v6 - 1;
  v10 = (*(a1 + 32) + 16);
  if (v8 == v9)
  {
    v12 = *v10;
    v11 = *(*(a1 + 32) + 24);
  }

  else
  {
    v12 = *v10;
    v11 = *(*(a1 + 32) + 24);
    if (v7 != *(a1 + 56) - 1)
    {
      goto LABEL_5;
    }
  }

  v30 = *(a1 + 64);
  v29.origin.x = v30.origin.x + v12 * v8;
  v29.origin.y = v30.origin.y + v11 * v7;
  v29.size.width = v12;
  v29.size.height = v11;
  *&a3 = CGRectIntersection(v29, v30);
  v12 = v13;
  v11 = v14;
LABEL_5:
  v15 = [NSThread currentThread:a3];
  v16 = [v15 isMainThread];

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = [*(a1 + 40) count];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17 - 1;
  while (1)
  {
    v25 = [*(a1 + 40) objectAtIndex:v18];
    [(CRLTilingTileLayer *)v25 bounds];
    if (v20 == v12 && v19 == v11)
    {
      break;
    }

    if (--v18 == -1)
    {
      goto LABEL_16;
    }
  }

  [*(a1 + 40) removeObjectAtIndex:v18];
  v22 = v25;
  if (v25)
  {
    v23 = 0;
  }

  else
  {
LABEL_16:
    v26 = objc_alloc_init(CRLTilingTileLayer);
    v24 = [*(a1 + 32) contentsFormat];
    [(CRLTilingTileLayer *)v26 setContentsFormat:v24];

    [(CRLTilingTileLayer *)v26 setZPosition:-10000.0];
    -[CRLTilingTileLayer setOpaque:](v26, "setOpaque:", [*(a1 + 32) isOpaque]);
    [(CRLTilingTileLayer *)v26 setAnchorPoint:CGPointZero.x, CGPointZero.y];
    [*(a1 + 32) contentsScale];
    [(CRLTilingTileLayer *)v26 setContentsScale:?];
    -[CRLTilingTileLayer setDrawsAsynchronously:](v26, "setDrawsAsynchronously:", [*(a1 + 32) drawsAsynchronously]);
    [*(a1 + 32) insertSublayer:v26 atIndex:0];
    v22 = v26;
    v23 = 1;
  }

  v27 = v22;
  [(CRLTilingTileLayer *)v22 setIndex:a2];
  [(CRLTilingTileLayer *)v27 updateFrameWithTileSize:*(a1 + 48) tilesWide:*(a1 + 56) tilesHigh:*(*(a1 + 32) + 16), *(*(a1 + 32) + 24)];
  if ((v23 & 1) == 0)
  {
    [(CRLTilingTileLayer *)v27 setNeedsDisplay];
  }
}

void sub_100504DE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100504E24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100504E68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100504EAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100505334(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100505378(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100507194(uint64_t a1, uint64_t a2, double a3, double a4, long double a5, long double a6, long double a7, long double a8)
{
  y = CGPointZero.y;
  if (sub_10011ECC8(CGPointZero.x, y, a5, a6) || sub_10011ECC8(CGPointZero.x, y, a7, a8))
  {
    *(*(a1 + 32) + 8 * a2) = 0;
    return;
  }

  v15 = sub_1001208D0(a5, a6);
  v16 = sub_1001208D0(a7, a8);
  sub_1001211D8(v15, v16);
  v18 = *&v17 & 0x7FFFFFFFFFFFFFFFLL;
  v19 = fabs(v17) / 0.785398163;
  if (v18 >= 0x7FF0000000000000)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(a1 + 32);
  *(v21 + 8 * a2) = v20;
  v22 = sub_100120074(a5, a6);
  v23 = fmin(v22 / sub_100120074(a7, a8), 3.0);
  if (v23 > 1.0)
  {
    v24 = v20 + (v23 + -1.0) * (v23 + -1.0);
LABEL_12:
    *(v21 + 8 * a2) = v24;
    return;
  }

  if (v23 < 1.0)
  {
    v24 = v20 + (v23 + -1.0) * (v23 + -1.0) * 2.0;
    goto LABEL_12;
  }
}

uint64_t sub_10050849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 >= 0x80000000)
  {
    sub_101388A44();
    return 0;
  }

  if (a7 >= 0x80000000)
  {
    sub_101388898();
    return 0;
  }

  dgtsv_NEWLAPACK();
  return 0;
}

void sub_10050850C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100508550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100508594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005085D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_10050861C(double a1, double a2)
{
  v3 = sub_1004C3240(a1, -1.57079633, 1.57079633);
  v4 = sub_1004C3240(a2, -1.57079633, 1.57079633);
  v5 = v3;
  v6 = __sincosf_stret(v5);
  v7 = v4;
  v8 = __sincosf_stret(v7);
  return ((v8.__sinval + v6.__sinval * -0.0625) * ((v6.__sinval + v8.__sinval * -0.0625) * 1.41421354) * (v6.__cosval - v8.__cosval) + 2.0) / (v6.__cosval * 1.85410202 + 3.0 + v8.__cosval * 1.14589798);
}

uint64_t sub_1005086E4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:@"index"];
  v5 = [v4 intValue];

  v6 = [v3 objectForKey:@"index"];

  v7 = [v6 intValue];
  if (v5 > v7)
  {
    return -1;
  }

  else
  {
    return v5 < v7;
  }
}

void sub_100509050(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100509094(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005090D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050911C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10050918C()
{

  return [v0 handleFailureInFunction:v1 file:v2 lineNumber:354 isFatal:0 description:?];
}

void sub_100509490(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005094D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050985C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005098A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005098EC(uint64_t a1)
{
  v43 = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) count];
  v3 = [[NSMutableArray alloc] initWithCapacity:v2];
  v41 = v2;
  v46 = [[NSMutableArray alloc] initWithCapacity:v2];
  v44 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v52 objects:v56 count:16];
  v45 = v3;
  if (v5)
  {
    v6 = v5;
    v49 = 0;
    v48 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v53;
    while (1)
    {
      v10 = 0;
      v47 = v6;
      do
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v52 + 1) + 8 * v10);
        v12 = [v11 boardItem];
        if (!v12)
        {
          v15 = [v11 error];
          v16 = v15;
          if (!v15)
          {
            goto LABEL_27;
          }

          v50 = v8;
          v17 = v7;
          v18 = v9;
          v19 = v4;
          v20 = [v15 domain];
          v21 = v20;
          if (v20 == @"com.apple.freeform.CRLErrorDomainInfoImporter")
          {
            v23 = [v16 code];

            if (v23 == 102)
            {
              [v44 addObject:v16];
            }
          }

          else
          {
          }

          v24 = objc_opt_class();
          v25 = [v16 userInfo];
          v26 = [v25 objectForKeyedSubscript:@"CRLBoardItemImporterErrorMediaTypeKey"];
          v27 = sub_100014370(v24, v26);

          if (v27)
          {
            v28 = [v27 integerValue];
            v4 = v19;
            v6 = v47;
            if (v28 != 102)
            {
              v3 = v45;
              v9 = v18;
              if (v28 != 101)
              {
                v7 = v17;
                if (v28 == 100)
                {
                  v48 = 1;
                }

LABEL_26:
                v8 = v50;
                [v46 addObject:v16];

LABEL_27:
                goto LABEL_28;
              }

              LOBYTE(v49) = 1;
LABEL_25:
              v7 = v17;
              goto LABEL_26;
            }

            BYTE4(v49) = 1;
            v3 = v45;
          }

          else
          {
            v3 = v45;
            v4 = v19;
            v6 = v47;
          }

          v9 = v18;
          goto LABEL_25;
        }

        v13 = [CRLIngestibleBoardItemAndDescription ingestibleBoardItemAndDescriptionWithBoardItem:v12 description:&__NSDictionary0__struct];
        [v3 addObject:v13];

        v14 = [v11 embeddedDataLength];
        v8 += v14;
        v7 += [v11 uploadDataLength] + v14;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = 1;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [v12 isAudioOnly];
            BYTE4(v49) |= v22;
            LOBYTE(v49) = v22 ^ 1 | v49;
          }
        }

LABEL_28:

        v10 = v10 + 1;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (!v6)
      {
        goto LABEL_32;
      }
    }
  }

  v49 = 0;
  v48 = 0;
  v7 = 0;
  v8 = 0;
LABEL_32:

  v29 = *(v42 + 40);
  v51 = 0;
  v30 = [v29 p_validateSizeOfImportWithTotalSize:v7 totalEmbeddedDataSize:v8 insertedImage:v48 & 1 insertedMovie:v49 & 1 insertedAudio:BYTE4(v49) & 1 preexistingTooLargeErrors:v44 error:&v51];
  v31 = v51;
  if (v30 && ![v44 count])
  {
    v32 = v43;
    v34 = v45;
  }

  else
  {
    v32 = v43;
    if (!v31 || [v44 count] == 1 && v41 == 1)
    {
      v33 = v44;

      v46 = v33;
    }

    else
    {
      [v46 removeAllObjects];
      [v46 addObject:v31];
    }

    v34 = 0;
  }

  v35 = *(v42 + 40);
  v36 = *(v35 + 48);
  *(v35 + 48) = v34;
  v37 = v34;

  v38 = *(v42 + 40);
  v39 = *(v38 + 56);
  *(v38 + 56) = v46;
  v40 = v46;

  (*(*(v42 + 48) + 16))();
  objc_autoreleasePoolPop(v32);
}

void sub_100509E3C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 32) = 1;
  v3 = [*(*(a1 + 32) + 24) importers];
  [v3 makeObjectsPerformSelector:"cancel"];

  objc_autoreleasePoolPop(v2);
}

void sub_10050A088(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) importer:*(a1 + 40) needsMediaCompatibilityFeedbackWithReasons:*(a1 + 56) forMediaType:*(a1 + 64) usingBlock:*(a1 + 48)];
  [*(a1 + 32) p_boardItemProviderDidRequestMediaCompatibilityRequirement:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10050A178(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) p_boardItemProviderDidRequestMediaCompatibilityRequirement:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10050A3C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050A40C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050A450(uint64_t a1, int a2, char a3, char a4)
{
  if (a2)
  {
    [*(a1 + 32) cancel];
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10050A4F4;
  v9[3] = &unk_10186B0A0;
  v9[4] = v7;
  v10 = a3;
  v11 = a4;
  dispatch_async(v8, v9);
}

void sub_10050A4F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) completeImportWithCompatibilityOnAllDevices:*(a1 + 40) allowHEVCContent:*(a1 + 41)];

  objc_autoreleasePoolPop(v2);
}

void sub_10050AAC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050AB0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050AB50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050AB94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050AF50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050AF94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050AFD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050B01C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050B2A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050B2E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050B328(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050B36C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050B504(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050B548(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050BAA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050BAE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050BB2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050BB70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050BD10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050BD54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050BF04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050BF48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

unint64_t sub_10050CF30()
{
  if (qword_101A352B8 != -1)
  {
    sub_10138979C();
  }

  return atomic_load(&qword_1019F0E28);
}

void sub_10050CF68(id a1)
{
  v1 = +[CRLCapabilities currentCapabilities];
  v2 = [v1 physicalMemory];

  if (v2 >= 0x40000001)
  {
    if (v2 > 0x80000000)
    {
      return;
    }

    v3 = 0x1000000;
  }

  else
  {
    v3 = 0x400000;
  }

  atomic_store(v3, &qword_1019F0E28);
}

id sub_10050D02C(void *a1, void *a2, uint64_t a3, void *a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  [v11 naturalSize];
  v15 = v14;
  v17 = v16;
  v18 = objc_opt_class();
  v19 = sub_100014370(v18, v11);
  v20 = v19;
  if (v19)
  {
    v21 = v15 <= a5;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 && v17 <= a6;
  if (!v22 || (a3 & 4) != 0 && ([v19 isOpaque] & 1) != 0 || (objc_msgSend(v20, "imageData"), v23 = objc_claimAutoreleasedReturnValue(), v24 = sub_10050D1C8(v23), v23, (v24 & 1) == 0))
  {
    v26 = [v12 stringByDeletingPathExtension];
    v27 = v26;
    if (!v26 || ![(__CFString *)v26 length])
    {

      v27 = @"image";
    }

    v28 = [(__CFString *)v27 stringByAppendingString:@"-small"];
    v29 = [[CRLImageResamplingOperation alloc] initWithImageProvider:v11 desiredSize:v13 assetOwner:a5, a6];
    [(CRLImageResamplingOperation *)v29 setDisplayName:v28];
    v25 = [(CRLImageResamplingOperation *)v29 performResampleOperationWithResampleOptions:a3 bitmapContextOptions:9];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t sub_10050D1C8(void *a1)
{
  v1 = a1;
  if (sub_10050E9FC(v1))
  {
    if ([v1 length] < 0x4000001)
    {
      v10 = 1;
    }

    else
    {
      v2 = +[CRLImageProviderPool sharedPool];
      v3 = [v2 temporaryProviderForAsset:v1 shouldValidate:0];

      v4 = objc_opt_class();
      v5 = sub_100014370(v4, v3);
      v6 = [v5 CGImageSource];
      if (v6)
      {
        v7 = CGImageSourceGetType(v6);
        if (v7)
        {
          v8 = sub_1000ECC38();
          v9 = [v7 crl_conformsToUTI:v8];

          v10 = v9 ^ 1;
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

_TtC8Freeform27CRLPreinsertionAssetWrapper *sub_10050D2D4(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = a1;
  v10 = a3;
  if (!v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013897B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013897C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389860();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"CRLPreinsertionAssetWrapper *CRLResampleImageData(CRLAsset *__strong, CGSize, CRLImageResampleOptions, __strong id<CRLAssetOwning>)"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:200 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceImageData"];
  }

  if (a4 <= 0.0 || a5 <= 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389888();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013898B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389940();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"CRLPreinsertionAssetWrapper *CRLResampleImageData(CRLAsset *__strong, CGSize, CRLImageResampleOptions, __strong id<CRLAssetOwning>)"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:201 isFatal:0 description:"bogus size to resample"];
  }

  v17 = 0;
  if (v9 && a4 > 0.0 && a5 > 0.0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = +[CRLImageProviderPool sharedPool];
    v20 = [v19 temporaryProviderForAsset:v9 shouldValidate:1];

    v21 = [v20 isError];
    if ((a2 & 2) != 0)
    {
      if (v21)
      {
LABEL_28:
        v17 = [[_TtC8Freeform27CRLPreinsertionAssetWrapper alloc] initWithAlreadyInsertedAsset:v9 owner:v10];
LABEL_31:

        objc_autoreleasePoolPop(v18);
        goto LABEL_32;
      }
    }

    else
    {
      v22 = objc_opt_class();
      v23 = sub_100014370(v22, v20);
      if (!v23)
      {
        goto LABEL_28;
      }

      v24 = v23;
      v25 = [v23 isValid];

      if ((v25 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v26 = [v9 filename];
    v17 = sub_10050D02C(v20, v26, a2, v10, a4, a5);

    goto LABEL_31;
  }

LABEL_32:

  return v17;
}

void sub_10050D644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050D688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050D6CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050D710(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050D754(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if ([a1 count])
    {
      v3 = [a1 objectAtIndex:0];
      v4 = [v3 pointerValue];

      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10050FC24;
      v5[3] = &unk_10186B670;
      v5[4] = v4;
      sub_100511884(1, 0, v5);
    }
  }
}

void sub_10050D814(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_10050FC24;
  v1[3] = &unk_10186B670;
  v1[4] = a1;
  sub_100511884(1, 0, v1);
}

CGContext *sub_10050D888(CGImageRef image, char a2, double a3, double a4)
{
  if (a3 == CGSizeZero.width && a4 == CGSizeZero.height)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389A34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389A48();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389AD8();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"CGContextRef _CRLBitmapContextCreateMatchingImageIfPossible(CGSize, CGImageRef, CRLBitmapContextOptions)"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
    v21 = "CRLBitmapContextCreate: Input context size of CGSizeZero illegal.";
    v22 = v19;
    v23 = v20;
    v24 = 241;
    goto LABEL_30;
  }

  if (!image)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389968();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138997C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389A0C();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v25);
    }

    v19 = [NSString stringWithUTF8String:"CGContextRef _CRLBitmapContextCreateMatchingImageIfPossible(CGSize, CGImageRef, CRLBitmapContextOptions)"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
    v21 = "Cannot create a context matching a nil image.";
    v22 = v19;
    v23 = v20;
    v24 = 246;
LABEL_30:
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:v24 isFatal:0 description:v21];

    return 0;
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (!CGColorSpaceSupportsOutput(ColorSpace))
  {
    return 0;
  }

  v9 = sub_10012211C(a3);
  v11 = v10;
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  BitsPerPixel = CGImageGetBitsPerPixel(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  Model = CGColorSpaceGetModel(ColorSpace);
  v16 = 0;
  v17 = 0;
  if (Model > kCGColorSpaceModelRGB)
  {
    if ((Model - 3) >= 5)
    {
      if (Model != kCGColorSpaceModelCMYK)
      {
        goto LABEL_40;
      }

      if (BitsPerPixel < 0x28)
      {
        v16 = 0;
        BitsPerComponent = 8;
LABEL_66:
        v17 = 4;
        goto LABEL_40;
      }

      if (BitsPerPixel < 0x40)
      {
        v16 = 0;
        BitsPerComponent = 16;
        v17 = 8;
        goto LABEL_40;
      }

      if (BitsPerPixel < 0x80)
      {
        v16 = 256;
        v17 = 32;
        BitsPerComponent = 32;
        goto LABEL_40;
      }

      return 0;
    }

    goto LABEL_38;
  }

  if (Model == kCGColorSpaceModelUnknown)
  {
LABEL_38:
    v16 = 0;
LABEL_39:
    BitsPerComponent = 8;
    v17 = 1;
    goto LABEL_40;
  }

  if (Model)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
      goto LABEL_40;
    }

    if (BitsPerPixel < 0x18)
    {
      v16 = 6;
      BitsPerComponent = 5;
      v17 = 2;
      goto LABEL_40;
    }

    if (BitsPerPixel >= 0x28)
    {
      if (BitsPerPixel > 0x47)
      {
        if (BitsPerPixel > 0x87)
        {
          return 0;
        }

        v31 = 256;
        BitsPerComponent = 32;
        v17 = 16;
      }

      else
      {
        v31 = ((BitmapInfo << 23) >> 31) & 0x2100;
        BitsPerComponent = 16;
        v17 = 8;
      }
    }

    else
    {
      v31 = 0;
      BitsPerComponent = 8;
      v17 = 4;
    }

    v33 = v31 | 1;
    v34 = v31 | 5;
    if ((BitmapInfo & 0x1F) != 0)
    {
      v16 = v33;
    }

    else
    {
      v16 = v34;
    }

    goto LABEL_40;
  }

  if (BitsPerPixel <= 0xF)
  {
    if ((BitmapInfo & 0x1F) != 0)
    {
      v16 = 7;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_39;
  }

  if (BitsPerPixel > 0x17)
  {
    if (BitsPerPixel < 0x28)
    {
      v16 = 256;
      BitsPerComponent = 32;
      goto LABEL_66;
    }

    return 0;
  }

  v17 = 2;
  if ((BitmapInfo & 0x1F) != 0)
  {
    v32 = 1;
  }

  else
  {
    v32 = 5;
  }

  if (BitsPerComponent > 8)
  {
    v16 = 0;
  }

  else
  {
    v17 = 2;
    v16 = v32;
  }

  if (BitsPerComponent <= 8)
  {
    BitsPerComponent = 8;
  }

  else
  {
    BitsPerComponent = 16;
  }

LABEL_40:
  v28 = sub_1000CDCD4(v17 * v9);
  releaseInfo = objc_alloc_init(NSMutableArray);
  v26 = CGBitmapContextCreateWithData(0, v9, v11, BitsPerComponent, v28, ColorSpace, v16, sub_10050D754, releaseInfo);
  if (v26)
  {
    v30 = [NSValue valueWithPointer:v26];
    [releaseInfo addObject:v30];

    sub_10050DE7C(v26, 0, 0, 0, 0, 1.0);
    if ((a2 & 8) != 0)
    {
      CGContextTranslateCTM(v26, 0.0, v11);
      CGContextScaleCTM(v26, 1.0, -1.0);
    }
  }

  return v26;
}

void sub_10050DD6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050DDB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050DDF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050DE38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = +[NSThread currentThread];
  v13 = [v12 threadDictionary];
  v19 = [v13 objectForKey:@"CRLTilingTileLayerPositionTLSKey"];

  v14 = v19;
  if (v19)
  {
    [v19 CGPointValue];
    v14 = v19;
    x = v15;
    y = v17;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  sub_10050F9A4(a1, a2, a3, a4, v14 != 0, a5, a6, x, y);
}

CGContext *sub_10050DF80(char a1, double a2, double a3)
{
  if (a2 == CGSizeZero.width && a3 == CGSizeZero.height)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389BCC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389BE0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389C70();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    releaseInfo = [NSString stringWithUTF8String:"CGContextRef CRLBitmapContextCreate(CGSize, CRLBitmapContextOptions)"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
    [CRLAssertionHandler handleFailureInFunction:releaseInfo file:v16 lineNumber:413 isFatal:0 description:"CRLBitmapContextCreate: Input context size of CGSizeZero illegal."];

    v17 = 0;
  }

  else
  {
    v5 = sub_10012211C(a2);
    v7 = v6;
    if (a1)
    {
      if ((a1 & 0x20) != 0)
      {
        v18 = sub_1000CCE28();
      }

      else
      {
        v18 = sub_1000CCC44();
      }

      v11 = v18;
      if ((a1 & 4) != 0)
      {
        v20 = 4102;
      }

      else
      {
        v20 = 8198;
      }

      v21 = 5;
      if ((a1 & 4) == 0)
      {
        v21 = 8;
      }

      v22 = 2;
      if ((a1 & 4) == 0)
      {
        v22 = 4;
      }

      if ((a1 & 0x10) != 0)
      {
        v23 = 8193;
      }

      else
      {
        v23 = 8194;
      }

      if ((a1 & 2) != 0)
      {
        v12 = v23;
      }

      else
      {
        v12 = v20;
      }

      if ((a1 & 2) != 0)
      {
        v19 = 8;
      }

      else
      {
        v19 = v21;
      }

      if ((a1 & 2) != 0)
      {
        v13 = 4;
      }

      else
      {
        v13 = v22;
      }
    }

    else
    {
      if ((a1 & 2) != 0)
      {
        v11 = 0;
        v12 = 7;
        v13 = 1;
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101389B00();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101389B14();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101389BA4();
        }

        v8 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v8);
        }

        v9 = [NSString stringWithUTF8String:"CGContextRef CRLBitmapContextCreate(CGSize, CRLBitmapContextOptions)"];
        v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
        [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:464 isFatal:0 description:"Must include a color or alpha channel."];

        v11 = 0;
        v12 = 8194;
        v13 = 4;
      }

      v19 = 8;
    }

    v24 = sub_1000CDCD4(v13 * v5);
    releaseInfo = objc_alloc_init(NSMutableArray);
    v17 = CGBitmapContextCreateWithData(0, v5, v7, v19, v24, v11, v12, sub_10050D754, releaseInfo);
    if (v17)
    {
      v25 = [NSValue valueWithPointer:v17];
      [releaseInfo addObject:v25];

      sub_10050DE7C(v17, 0, 0, 0, 0, 1.0);
      if ((a1 & 8) != 0)
      {
        CGContextTranslateCTM(v17, 0.0, v7);
        CGContextScaleCTM(v17, 1.0, -1.0);
      }
    }
  }

  return v17;
}

void sub_10050E324(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050E368(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050E3AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050E3F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CGContext *sub_10050E434(CGImage *a1, char a2, double a3, double a4)
{
  result = sub_10050D888(a1, a2, a3, a4);
  if (!result)
  {
    ColorSpace = CGImageGetColorSpace(a1);
    if (CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      v10 = a2 | 0x20;
    }

    else
    {
      v10 = a2;
    }

    return sub_10050DF80(v10, a3, a4);
  }

  return result;
}

_TtC8Freeform27CRLPreinsertionAssetWrapper *sub_10050E4B0(void *a1, void *a2, uint64_t a3, char a4)
{
  v6 = a1;
  v7 = a2;
  if ((a4 & 1) != 0 || !sub_10050E868(v6))
  {
    v8 = [[_TtC8Freeform27CRLPreinsertionAssetWrapper alloc] initWithAlreadyInsertedAsset:v6 owner:v7];
    v9 = objc_autoreleasePoolPush();
    v10 = +[CRLImageProviderPool sharedPool];
    v11 = [v10 temporaryProviderForAsset:v6 shouldValidate:1];

    v12 = objc_opt_class();
    v13 = sub_100014370(v12, v11);
    [v11 naturalSize];
    if (v13)
    {
      v16 = v14;
      v17 = v15;
      if (qword_101A352B8 != -1)
      {
        sub_10138979C();
      }

      v18 = atomic_load(&qword_1019F0E28);
      v19 = sub_100121ED4(v16, v17, v18);
      v20 = sub_100120068(v19);
      v22 = v21;
      v23 = [[CRLImageResamplingOperation alloc] initWithImageProvider:v11 desiredSize:v7 assetOwner:v20, v21];
      v24 = [v6 filename];
      [(CRLImageResamplingOperation *)v23 setDisplayName:v24];

      if ((sub_10050D1C8(v6) & 1) == 0)
      {
        if (qword_101A352B8 != -1)
        {
          sub_10138979C();
        }

        v25 = atomic_load(&qword_1019F0E28);
        v26 = sub_100121ED4(v20, v22, v25);
        v28 = sub_100120068(v26);
        v29 = v27;
        if (v28 == v20 && v27 == v22)
        {
          v31 = 66108864.0 / [v6 length];
          if (v31 < 1.0)
          {
            v32 = sub_100121ED4(v20, v22, v22 * v20 * v31 * 0.98);
            v28 = sub_100120068(v32);
            v29 = v33;
          }
        }

        [(CRLImageResamplingOperation *)v23 setDesiredAlternateSizeIfConvertedToPNG:v28, v29];
      }

      v34 = [(CRLImageResamplingOperation *)v23 performResampleOperationWithResampleOptions:18 bitmapContextOptions:9];
      v35 = v34;
      if (v34)
      {
        v36 = v34;

        v8 = v36;
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        v41 = v9;
        if (qword_101AD5A10 != -1)
        {
          sub_101389C98();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101389CAC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101389D48();
        }

        v37 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v37);
        }

        v38 = [NSString stringWithUTF8String:"CRLPreinsertionAssetWrapper *_CRLConvertImageCRLAssetMakeSafeForiOS(CRLAsset *__strong, __strong id<CRLAssetOwning>, BOOL, BOOL)"];
        v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
        [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:554 isFatal:0 description:"invalid nil value for '%{public}s'", "convertedData"];

        v9 = v41;
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v8 = [[_TtC8Freeform27CRLPreinsertionAssetWrapper alloc] initWithAlreadyInsertedAsset:v6 owner:v7];
  }

  return v8;
}

uint64_t sub_10050E868(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  v3 = [v2 identifier];
  v8[0] = @"com.sgi.sgi-image";
  v8[1] = @"com.apple.macpaint-image";
  v4 = [NSArray arrayWithObjects:v8 count:2];
  v5 = [v3 crl_conformsToAnyUTI:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_10050D1C8(v1);
  }

  return v6;
}

void sub_10050E95C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050E9A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10050E9FC(void *a1)
{
  v1 = a1;
  if ([v1 length] < 0x4000001)
  {
    v10 = 1;
  }

  else
  {
    v2 = [v1 type];
    v3 = [v2 identifier];
    v4 = sub_1000ECC38();
    v12[0] = v4;
    v5 = [UTTypePNG identifier];
    v12[1] = v5;
    v6 = [UTTypeTIFF identifier];
    v12[2] = v6;
    v7 = [UTTypeGIF identifier];
    v12[3] = v7;
    v8 = [NSArray arrayWithObjects:v12 count:4];
    v9 = [v3 crl_conformsToAnyUTI:v8];

    v10 = v9 ^ 1;
  }

  return v10;
}

uint64_t sub_10050EB64(void *a1, CGImageSource *a2)
{
  if ([a1 length] < 0x4000001)
  {
    v6 = 1;
  }

  else
  {
    v3 = CGImageSourceGetType(a2);
    if (v3)
    {
      v4 = sub_1000ECC38();
      v5 = [v3 crl_conformsToUTI:v4];

      v6 = v5 ^ 1;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6 & 1;
}

double sub_10050EBF8(CGPDFPage *a1, uint64_t a2, CGFloat *a3, int a4)
{
  if (a1)
  {
    BoxRect = CGPDFPageGetBoxRect(a1, kCGPDFMediaBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    v37 = CGPDFPageGetBoxRect(a1, kCGPDFCropBox);
    v12 = v37.origin.x;
    v13 = v37.origin.y;
    v14 = v37.size.width;
    v15 = v37.size.height;
    v46 = CGPDFPageGetBoxRect(a1, kCGPDFArtBox);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v47 = CGRectIntersection(v38, v46);
    v39.origin.x = v12;
    v39.origin.y = v13;
    v39.size.width = v14;
    v39.size.height = v15;
    v40 = CGRectIntersection(v39, v47);
    v16 = v40.origin.x;
    v17 = v40.origin.y;
    v18 = v40.size.width;
    v19 = v40.size.height;
    MinX = CGRectGetMinX(v40);
    v41.origin.x = v16;
    v41.origin.y = v17;
    v41.size.width = v18;
    v41.size.height = v19;
    MinY = CGRectGetMinY(v41);
    v42.origin.x = v16;
    v42.origin.y = v17;
    v42.size.width = v18;
    v42.size.height = v19;
    MaxX = CGRectGetMaxX(v42);
    v43.origin.x = v16;
    v43.origin.y = v17;
    v43.size.width = v18;
    v43.size.height = v19;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v16;
    v44.origin.y = v17;
    v44.size.width = v18;
    v44.size.height = v19;
    v22 = CGRectGetWidth(v44);
    v45.origin.x = v16;
    v45.origin.y = v17;
    v45.size.width = v18;
    v45.size.height = v19;
    v23 = CGRectGetHeight(v45);
    RotationAngle = CGPDFPageGetRotationAngle(a1);
    if (a4)
    {
      v25 = 0;
    }

    else
    {
      v25 = RotationAngle;
    }

    if (v25 != 90)
    {
      v26 = 0.0;
      if (v25 == 180)
      {
        v27 = xmmword_101464D00;
        v28 = MaxY;
      }

      else
      {
        if (v25 == 270)
        {
          v27 = xmmword_101463BB0;
          v28 = -MinX;
          v26 = -1.0;
          MaxX = MaxY;
          goto LABEL_20;
        }

        MaxX = -MinX;
        v27 = xmmword_101466510;
        v28 = -MinY;
      }

      v32 = v22;
      if (!a2)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v27 = xmmword_101466500;
    v28 = MaxX;
    MaxX = -MinY;
    v26 = 1.0;
LABEL_20:
    v32 = v23;
    v23 = v22;
    if (!a2)
    {
LABEL_25:
      if (a3)
      {
        *a3 = v32;
        a3[1] = v23;
      }

      return v16;
    }

LABEL_24:
    *a2 = v27;
    *(a2 + 16) = v26;
    *(a2 + 24) = v27;
    *(a2 + 32) = MaxX;
    *(a2 + 40) = v28;
    goto LABEL_25;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101389D70();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101389D84();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101389E20();
  }

  v29 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v29);
  }

  v30 = [NSString stringWithUTF8String:"CGRect CRLComputeBoxTransformAndSizeForPDFPageIgnoringAngle(CGPDFPageRef, CGAffineTransform *, CGSize *, BOOL)"];
  v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
  [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:657 isFatal:0 description:"invalid nil value for '%{public}s'", "page"];

  return CGRectZero.origin.x;
}

void sub_10050EF48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050EF8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__n128 sub_10050EFD0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>)
{
  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeTranslation(&v36, a3 * -0.5, a4 * -0.5);
  v16 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v16;
  *&t1.tx = a1[2];
  t2 = v36;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v17 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v17;
  a1[2] = *&v35.tx;
  v18 = a5;
  v17.n128_f64[0] = a6;
  v19 = a7;
  v20 = a8;
  tx = CGRectGetMinX(*(&v17 - 8));
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  Width = CGRectGetWidth(v38);
  v39.origin.x = a5;
  v39.origin.y = a6;
  v39.size.width = a7;
  v39.size.height = a8;
  Height = CGRectGetHeight(v39);
  CGAffineTransformMakeScale(&v35, Width / a3, Height / a4);
  v36 = v35;
  v24 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v24;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v25 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v25;
  a1[2] = *&v35.tx;
  CGAffineTransformMakeTranslation(&v35, Width * 0.5, Height * 0.5);
  v36 = v35;
  v26 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v26;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v27 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v27;
  a1[2] = *&v35.tx;
  CGAffineTransformMakeTranslation(&v35, tx, MinY);
  v36 = v35;
  v28 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v28;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v29 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v29;
  a1[2] = *&v35.tx;
  v30 = a1[1];
  *a2 = *a1;
  a2[1] = v30;
  result = a1[2];
  a2[2] = result;
  return result;
}

void sub_10050F218(uint64_t a1, double a2)
{
  sub_10050DE7C(a1, 0, 0, 0, 0, 1.0);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10050F2C0;
  v4[3] = &unk_10186B608;
  v4[4] = a1;
  *&v4[5] = a2;
  sub_100511884(1, 1, v4);
}

void sub_10050F2C0(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389E48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389E5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389EF8();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"void CRLSetCGContextInfoForShadowContext(CGContextRef, CGFloat)_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:795 isFatal:0 description:"invalid nil value for '%{public}s'", "dict"];
  }

  v7 = *(a1 + 40);
  *&v7 = v7;
  v8 = [NSNumber numberWithFloat:v7];
  [v3 setValue:v8 forKey:@"CRLCGContextInfoDictionaryKeyShadowedLayoutAngle"];
}

void sub_10050F44C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050F490(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10050F4D4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10050F56C;
  v4[3] = &unk_10186B650;
  v5 = a2;
  v6 = a1;
  v3 = v5;
  sub_100511884(1, 1, v4);
}

void sub_10050F56C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v6 = v5;
  [v5 setValue:*(a1 + 32) forKey:@"CRLCGContextInfoDictionaryKeyPdfTagger"];
  [v4 setObject:v6 forKey:*(a1 + 40)];
}

void sub_10050F608(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10050F680;
  v2[3] = &unk_10186B628;
  v2[4] = a1;
  v3 = a2;
  sub_100511884(1, 1, v2);
}

void sub_10050F680(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v7 = v5;
  v6 = [NSNumber numberWithBool:*(a1 + 40)];
  [v7 setValue:v6 forKey:@"CRLCGContextInfoDictionaryKeyIsSixChannelMultiplyContext"];

  [v4 setObject:v7 forKey:*(a1 + 32)];
}

void sub_10050F73C(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10050F7B4;
  v2[3] = &unk_10186B628;
  v2[4] = a1;
  v3 = a2;
  sub_100511884(1, 1, v2);
}

void sub_10050F7B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v7 = v5;
  v6 = [NSNumber numberWithBool:*(a1 + 40)];
  [v7 setValue:v6 forKey:@"CRLCGContextInfoDictionaryKeyIsSixChannelLinearDodgeContext"];

  [v4 setObject:v7 forKey:*(a1 + 32)];
}

void sub_10050F870(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10050F8E8;
  v2[3] = &unk_10186B628;
  v2[4] = a1;
  v3 = a2;
  sub_100511884(1, 1, v2);
}

void sub_10050F8E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v7 = v5;
  v6 = [NSNumber numberWithBool:*(a1 + 40)];
  [v7 setValue:v6 forKey:@"CRLCGContextInfoDictionaryKeyIsSixChannelBlendingSuppressed"];

  [v4 setObject:v7 forKey:*(a1 + 32)];
}

void sub_10050F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, double a7, double a8, double a9)
{
  v18 = [NSMutableDictionary alloc];
  v19 = [NSNumber numberWithBool:a2];
  v20 = [NSNumber numberWithBool:a3];
  v21 = [NSNumber numberWithBool:a4];
  *&v22 = a7;
  v23 = [NSNumber numberWithFloat:v22];
  if (a5)
  {
    [NSValue valueWithCGPoint:a8, a9];
  }

  else
  {
    +[NSNull null];
  }
  v24 = ;
  v25 = [NSNumber numberWithBool:a6];
  v26 = [v18 initWithObjectsAndKeys:{v19, @"CRLCGContextInfoDictionaryKeyIsPrintContext", v20, @"CRLCGContextInfoDictionaryKeyIsPDFContext", v21, @"CRLCGContextInfoDictionaryKeyIsCALayerContext", v23, @"CRLCGContextInfoDictionaryKeyAssociatedScreenScale", v24, @"CRLCGContextInfoDictionaryKeyTileOffset", v25, @"CRLCGContextInfoDictionaryKeyHasBackgroundsSuppressed", 0}];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10050FBA4;
  v28[3] = &unk_10186B650;
  v29 = v26;
  v30 = a1;
  v27 = v26;
  sub_100511884(1, 1, v28);
}

void sub_10050FBA4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v3;
    [v3 addEntriesFromDictionary:v4];
  }

  else
  {
    v5 = v4;
  }

  [v6 setObject:v5 forKey:*(a1 + 40)];
}

const __CFString *sub_10050FC30(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"invalid CRLLineCapStyle";
  }

  else
  {
    return *(&off_10186B7D0 + a1);
  }
}

const __CFString *sub_10050FC54(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"invalid CRLLineJoinStyle";
  }

  else
  {
    return *(&off_10186B7E8 + a1);
  }
}

double sub_10050FC78(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10050FD44;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10050FD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10050FD44(uint64_t a1, void *a2)
{
  v5 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v5 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyShadowedLayoutAngle"];
  [v3 floatValue];
  *(*(*(a1 + 32) + 8) + 24) = v4;
}

uint64_t sub_10050FDC0(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10050FE84;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10050FE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10050FE84(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyIsReflection"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

id sub_10050FEFC(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100510004;
  v8 = sub_100510014;
  v9 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10051001C;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10050FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100510004(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10051001C(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v6 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyPdfTagger"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_100510090(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100510154;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10051013C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100510154(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyIsSixChannelMultiplyContext"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

uint64_t sub_1005101CC(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100510290;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100510278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100510290(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyIsSixChannelLinearDodgeContext"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

uint64_t sub_100510308(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005103CC;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1005103B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005103CC(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyIsSixChannelBlendingSuppressed"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

double sub_100510444(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100510510;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1005104F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100510510(uint64_t a1, void *a2)
{
  v5 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v5 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyLayoutAngle"];
  [v3 floatValue];
  *(*(*(a1 + 32) + 8) + 24) = v4;
}

uint64_t sub_10051058C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100510650;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100510638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100510650(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyIsPrintContext"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

uint64_t sub_1005106C8(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10051078C;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100510774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10051078C(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyHasBackgroundsSuppressed"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

uint64_t sub_100510804(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005108C8;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1005108B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005108C8(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyIsPDFContext"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

uint64_t sub_100510940(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100510A04;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1005109EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100510A04(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyIsCALayerContext"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

double sub_100510A7C(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100510B60;
  v4[3] = &unk_10186B698;
  v4[4] = &v5;
  v4[5] = a1;
  sub_100511884(0, 0, v4);
  v1 = v6[3];
  if (v1 == 0.0)
  {
    +[UIScreen crl_screenScale];
    v1 = v2;
  }

  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_100510B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100510B60(uint64_t a1, void *a2)
{
  v5 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v5 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyAssociatedScreenScale"];
  [v3 floatValue];
  *(*(*(a1 + 32) + 8) + 24) = v4;
}

void sub_100510BDC(void *a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100510C90;
  v5[3] = &unk_10186B6C0;
  v6 = a1;
  v7 = a2;
  v3 = v7;
  v4 = v6;
  sub_100511884(1, 0, v5);
}

void sub_100510C90(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  if (!v3)
  {
    v3 = +[NSMutableDictionary dictionary];
    [v6 setObject:v3 forKey:*(a1 + 32)];
  }

  v4 = [v3 valueForKey:*(a1 + 40)];
  if (!v4)
  {
    v4 = +[NSMutableArray array];
    [v3 setValue:v4 forKey:*(a1 + 40)];
  }

  v5 = +[NSMutableSet set];
  [v4 crl_push:v5];
}

void sub_100510D88(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100510E68;
    v8[3] = &unk_10186B6E8;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    sub_100511884(1, 0, v8);
  }
}

void sub_100510E68(void *a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:a1[4]];
  v4 = [v3 valueForKey:a1[5]];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) addObject:a1[6]];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_100510F80(void *a1, void *a2)
{
  v3 = a2;
  sub_100510D88(a1, @"CRLCGContextInfoDictionaryKeyRenderedWithMissingData", v3);
  v4 = +[NSThread currentThread];
  sub_100510D88(v4, @"CRLCGContextInfoDictionaryKeyThreadRenderedWithMissingData", v3);
}

id sub_100511000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100510004;
  v17 = sub_100510014;
  v18 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100511150;
  v9[3] = &unk_10186B750;
  v5 = v3;
  v10 = v5;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  sub_100511884(1, 0, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_100511138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100511150(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 objectForKey:a1[4]];

  v6 = sub_100014370(v4, v5);

  v7 = [v6 objectForKey:a1[5]];
  v8 = [v7 crl_pop];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!*(*(a1[6] + 8) + 40))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389F20();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389F34();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389FD0();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"NSSet<CRLAsset *> *CRLCGContextStopWatchingDatasNeedDownloadWithObservationContext(__strong id, NSString *__strong)_block_invoke"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLRenderingUtility.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1175 isFatal:0 description:"invalid nil value for '%{public}s'", "datas"];
  }

  if (![v7 count])
  {
    [v6 removeObjectForKey:a1[5]];
  }
}

void sub_100511338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051137C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005113CC(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100511444;
  v2[3] = &unk_10186B628;
  v2[4] = a1;
  v3 = a2;
  sub_100511884(1, 1, v2);
}

void sub_100511444(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  if (!v3)
  {
    v3 = +[NSMutableDictionary dictionary];
    [v5 setObject:v3 forKey:*(a1 + 32)];
  }

  v4 = [NSNumber numberWithBool:*(a1 + 40)];
  [v3 setValue:v4 forKey:@"CRLCGContextInfoDictionaryKeyPrefersRasterRendering"];
}

uint64_t sub_1005114F4(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005115B8;
  v3[3] = &unk_10186B698;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100511884(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1005115A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005115B8(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v4 objectForKeyedSubscript:@"CRLCGContextInfoDictionaryKeyPrefersRasterRendering"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

id sub_100511630(CGImage *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 pathExtension];
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [UTType typeWithFilenameExtension:v8];
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = UTTypePNG;
  }

  v11 = [(UTType *)v10 identifier];
  v12 = [[NSURL alloc] initFileURLWithPath:v5];
  v13 = CGImageDestinationCreateWithURL(v12, v11, 1uLL, 0);

  if (v13)
  {
    CGImageDestinationAddImage(v13, a1, v6);
    if (!CGImageDestinationFinalize(v13))
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101389FF8();
      }

      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10138A00C();
      }

      v5 = 0;
    }

    CFRelease(v13);
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10138A080();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10138A00C();
    }

    v5 = 0;
  }

  return v5;
}

void sub_1005117FC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100511840(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100511884(int a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v9 = v5;
    if (qword_101A35390 != -1)
    {
      sub_10138A094();
    }

    if (a1)
    {
      pthread_rwlock_wrlock(&stru_101A352C8);
      v6 = qword_101A352C0;
      if (!qword_101A352C0 && a2)
      {
        v7 = +[NSMapTable weakToStrongObjectsMapTable];
        v8 = qword_101A352C0;
        qword_101A352C0 = v7;

        v6 = qword_101A352C0;
      }
    }

    else
    {
      pthread_rwlock_rdlock(&stru_101A352C8);
      v6 = qword_101A352C0;
    }

    if (v6)
    {
      v9[2]();
    }

    pthread_rwlock_unlock(&stru_101A352C8);
    v5 = v9;
  }
}

void sub_100511DF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100511E38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100512484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 176), 8);
  _Block_object_dispose((v8 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1005124D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051251C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CGImage *sub_100512560(void *a1)
{
  result = *(a1[4] + 32);
  if (result)
  {
    result = CGImageRetain(result);
    *(*(a1[5] + 8) + 24) = result;
    *(*(a1[6] + 8) + 24) = *(a1[4] + 48);
  }

  return result;
}

void sub_10051286C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005128B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100512ABC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100512B00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100512E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100512E7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100512EC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100512F04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = v3;
    *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 32) + 48);
    *(*(*(a1 + 64) + 8) + 24) = [*(*(a1 + 32) + 40) hasBakedMask];
  }

  else
  {
    [v2 p_desiredSizedImageSize];
    v5 = v4;
    v7 = v6;
    v8 = [*(a1 + 32) p_validatedBitmapImageProvider];
    v12 = v8;
    if (v8)
    {
      v9 = [*(a1 + 32) p_canDrawThumbnailAsSizedImage];
      v8 = v12;
      if ((v9 & 1) == 0)
      {
        if (*(a1 + 80) == 1)
        {
          v10 = [v12 CGImageForSize:0 inContext:*(a1 + 40) orContentsScaleProvider:{v5, v7}];
        }

        else
        {
          v10 = [v12 CGImageOfAnySize];
        }

        *(*(*(a1 + 48) + 8) + 24) = v10;
        *(*(*(a1 + 56) + 8) + 24) = [v12 orientation];
        v8 = v12;
      }
    }

    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      v11 = [*(a1 + 32) p_validatedThumbnailImageProvider];
      *(*(*(a1 + 48) + 8) + 24) = [v11 CGImageOfLargestSafeSize];
      *(*(*(a1 + 56) + 8) + 24) = [v11 orientation];
      *(*(*(a1 + 72) + 8) + 24) = 0;

      v8 = v12;
    }
  }
}

void sub_100513248(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051328C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100513638(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051367C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005138B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005138F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100513C70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100513CB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double *sub_100513DAC(double *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!*(v2 + 32) || (result = *(v2 + 40)) == 0 || (v3 = v1[6], v3 > 100.0) && (result = [result size], v3 > v4 + v4) || (v5 = v1[7], v5 > 100.0) && (result = objc_msgSend(*(*(v1 + 4) + 40), "size"), v5 > v6 + v6))
  {
    *(*(*(v1 + 5) + 8) + 24) = 1;
  }

  return result;
}

void sub_100513F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100513F84(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 4))
  {
    if (!*(result + 5))
    {
      goto LABEL_5;
    }

    result = [*(a1 + 40) isEqualToSizedImageDescription:?];
    if (result)
    {
      return result;
    }

    result = *(a1 + 32);
    if (*(result + 4))
    {
LABEL_5:
      v3 = [*(result + 5) hasBakedMask];
      v4 = [*(a1 + 40) hasBakedMask];
      result = *(a1 + 32);
      if (v3 != v4)
      {
        [result p_invalidateSizedImageOnAccessQueue];
        result = *(a1 + 32);
      }
    }
  }

  if (!*(result + 2))
  {
    goto LABEL_9;
  }

  v5 = [*(result + 2) status];
  result = *(a1 + 32);
  if (v5)
  {
    goto LABEL_9;
  }

  [*(result + 2) desiredSize];
  v7 = v6;
  v9 = v8;
  [*(a1 + 40) size];
  if (v7 == v11 && v9 == v10)
  {
    v13 = *(a1 + 48);
    v14 = [*(*(a1 + 32) + 16) provider];

    if (v13 == v14)
    {
      result = *(a1 + 32);
LABEL_9:
      if (!*(result + 2))
      {
        result = [result p_prepareToGenerateSizedImageWithDescription:*(a1 + 40)];
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      return result;
    }
  }

  v15 = *(*(a1 + 32) + 16);

  return [v15 setStatus:1];
}

void sub_100514294(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005142D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005145AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005145F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100514998(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005149DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100514A20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100514A64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100514CD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100514D14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100514D58(uint64_t a1)
{
  if ([*(a1 + 32) imageDrawingHelperShouldRetryGeneratingSizedImageLater:*(a1 + 40)])
  {
    v2 = *(a1 + 48);

    [v2 setStatus:1];
  }

  else if ([*(a1 + 40) p_generateSizedImage:*(a1 + 48)])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100514E30;
    v5[3] = &unk_10183AE28;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_100514F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100514F40(void *result)
{
  v1 = result[5];
  if (result[4] == *(v1 + 16))
  {
    *(v1 + 24) = 1;
    *(*(result[6] + 8) + 24) = 1;
  }

  return result;
}

void sub_10051502C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100515044(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3 && *(v2 + 24) == 1)
  {
    v4 = [v3 status];
    if (v4 != 1)
    {
      if (v4)
      {
        goto LABEL_13;
      }

      v5 = [*(*(a1 + 32) + 16) sizedImage];
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = v5;
      [*(a1 + 32) p_desiredSizedImageSize];
      v8 = v7;
      v10 = v9;
      [*(*(a1 + 32) + 16) desiredSize];
      if (v8 == v12 && v10 == v11)
      {
        v14 = [*(a1 + 32) p_imageProvider];
        v15 = [*(*(a1 + 32) + 16) provider];

        if (v14 == v15)
        {
          CGImageRelease(*(*(a1 + 32) + 32));
          *(*(a1 + 32) + 32) = CGImageRetain(v6);
          v18 = [TSDSizedImageDescription alloc];
          [*(*(a1 + 32) + 16) desiredSize];
          v21 = -[TSDSizedImageDescription initWithSize:isWideGamut:hasBakedMask:](v18, "initWithSize:isWideGamut:hasBakedMask:", [*(*(a1 + 32) + 16) wideGamut], objc_msgSend(*(*(a1 + 32) + 16), "sizedImageHasMask"), v19, v20);
          v22 = *(a1 + 32);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;

          *(*(a1 + 32) + 48) = [*(*(a1 + 32) + 16) sizedImageOrientation];
          if ([*(*(a1 + 32) + 40) hasBakedMask] && !*(*(a1 + 32) + 56))
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10138AD6C();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10138AD80();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10138AE14();
            }

            v24 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130DA10(v24);
            }

            v25 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_takeSizedImageFromStateIfReady]_block_invoke"];
            v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
            [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:619 isFatal:0 description:"invalid nil value for '%{public}s'", "_sizedImageMaskPath"];
          }

          goto LABEL_13;
        }
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_13:
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    *(v16 + 16) = 0;

    *(*(a1 + 32) + 24) = 0;
  }
}

void sub_1005152F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051533C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051541C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 p_desiredSizedImageDescription];
  [v1 p_prepareToGenerateSizedImageWithDescription:v2];
}

void sub_10051553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef sub_100515554(uint64_t a1)
{
  result = CGImageRetain(*(*(a1 + 32) + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10051567C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_4:
    result = *(v2 + 40);
    if (!result)
    {
      return result;
    }

    result = [result hasBakedMask];
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (([v3 sizedImageHasMask] & 1) == 0)
  {
    v2 = *(a1 + 32);
    goto LABEL_4;
  }

LABEL_6:
  v5 = *(a1 + 32);

  return [v5 p_invalidateSizedImageOnAccessQueue];
}

void sub_1005158B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005158F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100515938(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 32) || *(v2 + 16)) && (([*(v2 + 40) hasBakedMask] & 1) != 0 || (v3 = *(*(a1 + 32) + 16)) != 0 && objc_msgSend(v3, "maskPath")))
  {
    v4 = *(a1 + 32);
    if (*(v4 + 32) || ([v4 p_validatedBitmapImageProvider], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "orientation"), v5, v4 = *(a1 + 32), *(v4 + 32)))
    {
      [*(v4 + 40) size];
    }

    else
    {
      [*(v4 + 16) desiredSize];
    }

    v6 = (*(*(a1 + 40) + 16))();
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = v6;
    v8 = *(a1 + 32);
    if (!*(v8 + 56) && ![*(v8 + 16) maskPath])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138AF0C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138AF20();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138AFC0();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper invalidateSizedImageIfNeededForBakedMaskPathFromBlock:]_block_invoke"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:717 isFatal:0 description:"Need some mask path if comparing masks"];
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 56);
    if (!v13)
    {
      v13 = [*(v12 + 16) maskPath];
    }

    v14 = [CRLBezierPath bezierPathWithCGPath:v13];
    v15 = [CRLBezierPath bezierPathWithCGPath:v7];
    v16 = [v14 isEqual:v15];

    if ((v16 & 1) == 0)
    {
LABEL_24:
      [*(a1 + 32) p_invalidateSizedImageOnAccessQueue];
    }
  }
}

void sub_100515B7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100515BC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100515D34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    result = 0;
  }

  else
  {
    result = *(v2 + 16);
    if (result)
    {
      result = [result sizedImageHasMask];
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100515E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100515E50(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) status] == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1005166E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005166F8(uint64_t a1, void *a2)
{
  v8 = [a2 pureGeometry];
  [v8 frame];
  v3 = *(*(a1 + 32) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
}

void sub_100516BD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100516C14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100516C58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100516C9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051726C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005172B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005172F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100517338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100517B0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100517B50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100517B94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100517BD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100517C1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100517C60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100517CA4(uint64_t a1, void *a2)
{
  result = [a2 minimumSize];
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

void sub_100518A38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100518A7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100518C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CRLBrushStrokeDirectMetalRenderingContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10051923C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100519280(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100519720(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100519764(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005197A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005197EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100519C54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100519C98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100519CDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100519D20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051A37C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051A3C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B508(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B54C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B590(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B5D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B618(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_1000C1D48();
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
      sub_100522C18(a1, v11);
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

void sub_10051B6F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B734(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B778(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B7BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B800(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B844(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B888(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051B8CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051C574(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051C5B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051C5FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051C640(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051C684(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051C6C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051CD24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051CD68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051CDAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051CDF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051CE34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051CE78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051E664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10051E88C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051E8D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051E914(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051E958(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051E99C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051E9E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051EA24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10051EA68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005206E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100520724(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100520768(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v47 = a2[2];
  v48 = v2;
  v49 = a2[4];
  v50 = *(a2 + 10);
  v3 = a2[1];
  v45 = *a2;
  v46 = v3;
  v4 = *(a2 + 136);
  v41 = *(a2 + 120);
  v42 = v4;
  v43 = *(a2 + 152);
  v44 = *(a2 + 21);
  v5 = *(a2 + 104);
  v39 = *(a2 + 88);
  v40 = v5;
  v6 = a2[14];
  v35 = a2[13];
  v36 = v6;
  v37 = a2[15];
  v38 = *(a2 + 32);
  v7 = a2[12];
  v33 = a2[11];
  v34 = v7;
  v8 = *(a2 + 312);
  v29 = *(a2 + 296);
  v30 = v8;
  v31 = *(a2 + 328);
  v32 = *(a2 + 43);
  v9 = *(a2 + 280);
  v27 = *(a2 + 264);
  v28 = v9;
  if (*(a1 + 32))
  {
    v11 = 0;
    do
    {
      v12 = *(a1 + 40) + v11;
      if ((*(a1 + 80) & 1) == 0)
      {
        v12 = *(a1 + 48) + ~v12;
      }

      v13 = (*(a1 + 56) + 32 * v12);
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[6];
      v20 = v13[7];
      v23 = v47;
      v24 = v48;
      v25 = v49;
      v26 = v50;
      v21 = v45;
      v22 = v46;
      sub_10017AA3C(&v21, v11, v14, v15);
      v23 = v41;
      v24 = v42;
      v25 = v43;
      v26 = v44;
      v21 = v39;
      v22 = v40;
      sub_10017AA3C(&v21, v11, v16, v17);
      v23 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      v21 = v33;
      v22 = v34;
      sub_10017AA3C(&v21, v11, v18, v19);
      v23 = v29;
      v24 = v30;
      v25 = v31;
      v26 = v32;
      v21 = v27;
      v22 = v28;
      sub_10017AA1C(&v21, v11++, v20);
    }

    while (v11 < *(a1 + 32));
  }
}

uint64_t sub_100520950(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return sub_100522DCC(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 5);
}

void sub_10052096C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void sub_100520984(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005209C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100521050(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100521094(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100521300(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100521344(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052154C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100521590(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005217B4(id a1)
{
  v1 = dispatch_queue_create("com.apple.freeform.CRLBrushStrokeMetalTextureQueue", 0);
  v2 = qword_101A353B8;
  qword_101A353B8 = v1;
}

void sub_100521838(id a1)
{
  v1 = dispatch_queue_create("com.apple.freeform.CRLBrushStrokeMetalShaderQueue", 0);
  v2 = qword_101A353C8;
  qword_101A353C8 = v1;
}

void sub_1005219C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1005219E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100521A00(id a1)
{
  v1 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
  v2 = qword_101A353D8;
  qword_101A353D8 = v1;
}

void sub_100521A4C(uint64_t a1)
{
  v2 = [qword_101A353D8 objectForKeyedSubscript:*(a1 + 32)];
  if (!v2)
  {
    v2 = +[NSMutableDictionary dictionary];
    [qword_101A353D8 setObject:? forKeyedSubscript:?];
  }

  v3 = [*(a1 + 40) strokeName];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 40) strokeName];
    v8 = [CRLBrushStrokeLoader storageForBrushStrokeNamed:v7];

    if (!v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138CC80();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138CC94();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138CD28();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v10 = [NSString stringWithUTF8String:"[CRLBrushStroke p_metalTextureForCurrentStrokeAndDevice:]_block_invoke"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1752 isFatal:0 description:"invalid nil value for '%{public}s'", "storage"];
    }

    v12 = [v8 image];
    if (v12)
    {
      v13 = [[MTKTextureLoader alloc] initWithDevice:*(a1 + 32)];
      v14 = [v12 CGImage];
      v51[0] = MTKTextureLoaderOptionOrigin;
      v51[1] = MTKTextureLoaderOptionSRGB;
      v52[0] = MTKTextureLoaderOriginFlippedVertically;
      v52[1] = &__kCFBooleanFalse;
      v15 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
      v34 = 0;
      v16 = [v13 newTextureWithCGImage:v14 options:v15 error:&v34];
      v17 = v34;
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v16;

      v20 = *(*(*(a1 + 48) + 8) + 40);
      if (v20)
      {
        v21 = [*(a1 + 40) strokeName];
        [v2 setObject:v20 forKeyedSubscript:v21];
      }

      else
      {
        v23 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138CD50();
        }

        v24 = off_1019EDA68;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v33 = NSStringFromClass(v30);
          v32 = [v17 domain];
          v31 = [v17 code];
          *buf = 67110914;
          v36 = v23;
          v37 = 2082;
          v38 = "[CRLBrushStroke p_metalTextureForCurrentStrokeAndDevice:]_block_invoke";
          v39 = 2082;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm";
          v41 = 1024;
          v42 = 1767;
          v43 = 2114;
          v44 = v33;
          v45 = 2114;
          v46 = v32;
          v47 = 2048;
          v48 = v31;
          v49 = 2112;
          v50 = v17;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to load brush texture with error errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x4Au);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138CD78();
        }

        v25 = off_1019EDA68;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v21 = [NSString stringWithUTF8String:"[CRLBrushStroke p_metalTextureForCurrentStrokeAndDevice:]_block_invoke"];
        v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = [v17 domain];
        +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v21, v26, 1767, 0, "Unable to load brush texture with error errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v28, v29, [v17 code], v17);
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138CDA0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138CDC8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138CE5C();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v13 = [NSString stringWithUTF8String:"[CRLBrushStroke p_metalTextureForCurrentStrokeAndDevice:]_block_invoke"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v17 lineNumber:1754 isFatal:0 description:"invalid nil value for '%{public}s'", "strokePatternTextureImage"];
    }
  }
}

void sub_100522210(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100522254(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100522298(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005222DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100522320(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100522364(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005224F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_100522518(id a1)
{
  v1 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
  v2 = qword_101A353E8;
  qword_101A353E8 = v1;
}

void sub_100522564(void *a1)
{
  v12 = [qword_101A353E8 objectForKeyedSubscript:a1[4]];
  if (!v12)
  {
    v12 = +[NSMutableDictionary dictionary];
    [qword_101A353E8 setObject:? forKeyedSubscript:?];
  }

  v2 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v3 = [v12 objectForKeyedSubscript:v2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    v6 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v6 setPixelFormat:a1[6]];
    [v6 setBlendingEnabled:1];
    [v6 setDestinationAlphaBlendFactor:5];
    [v6 setDestinationRGBBlendFactor:5];
    v7 = [[CRLMetalShader alloc] initDefaultShaderWithVertexShader:@"brushStrokeVertexShader" fragmentShader:@"brushStrokeFragmentShader" device:a1[4] colorAttachment:v6];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(a1[5] + 8) + 40);
    v11 = [NSNumber numberWithUnsignedInteger:a1[6]];
    [v12 setObject:v10 forKeyedSubscript:v11];
  }
}

void sub_1005226E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_10052286C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_100522890(id a1)
{
  v1 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
  v2 = qword_101A353F8;
  qword_101A353F8 = v1;
}

void sub_1005228DC(void *a1)
{
  v12 = [qword_101A353F8 objectForKeyedSubscript:a1[4]];
  if (!v12)
  {
    v12 = +[NSMutableDictionary dictionary];
    [qword_101A353F8 setObject:? forKeyedSubscript:?];
  }

  v2 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v3 = [v12 objectForKeyedSubscript:v2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    v6 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v6 setPixelFormat:a1[6]];
    [v6 setBlendingEnabled:1];
    [v6 setDestinationAlphaBlendFactor:5];
    [v6 setDestinationRGBBlendFactor:5];
    v7 = [[CRLMetalShader alloc] initDefaultTextureAndColorShaderWithDevice:a1[4] colorAttachment:v6];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(a1[5] + 8) + 40);
    v11 = [NSNumber numberWithUnsignedInteger:a1[6]];
    [v12 setObject:v10 forKeyedSubscript:v11];
  }
}

void sub_100522A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_100522C18(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1000C1E4C();
}

void *sub_100522C60(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100522CD8(result, a2);
  }

  return result;
}

void sub_100522CBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100522CD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1001DEEE4(a1, a2);
  }

  sub_1000C1D48();
}

uint64_t sub_100522D14(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100522D90(result, a4);
  }

  return result;
}

void sub_100522D74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100522D90(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100522C18(a1, a2);
  }

  sub_1000C1D48();
}

uint64_t sub_100522DCC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100522D90(result, a4);
  }

  return result;
}

void sub_100522E2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005234A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005234E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005239FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100523A40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100524E80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100524EC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100525EB0(id a1)
{
  v1 = objc_alloc_init(CRLiOSVisualEffectHelper);
  v2 = qword_101A35470;
  qword_101A35470 = v1;
}

id sub_1005262D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];

  return [v2 renderInContext:v3];
}

void sub_100526E18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100526E5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100527090(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005270D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100527408(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [*(a1 + 40) p_scrimOwnerForView:v7];
        v9 = [v8 viewForScrimOpacityAnimation];
        [v8 willBeginScrimOpacityAnimation];
        v10 = *(a1 + 40);
        if (v10)
        {
          [v10 p_touchDownAffineTransformForView:v7];
        }

        else
        {
          v13 = 0u;
          v14 = 0u;
          v12 = 0u;
        }

        v11[0] = v12;
        v11[1] = v13;
        v11[2] = v14;
        [v7 setTransform:v11];
        [v9 setAlpha:1.0];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

void sub_100527580(uint64_t a1)
{
  v2 = [*(a1 + 32) p_activeTouchDownAnimatorForView:*(a1 + 40)];
  v3 = *(a1 + 48);

  if (v2 == v3)
  {
    [*(a1 + 32) p_setActiveTouchDownAnimator:0 forView:*(a1 + 40)];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 56);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 32) p_scrimOwnerForView:{*(*(&v10 + 1) + 8 * v8), v10}];
        [v9 didEndScrimOpacityAnimation];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1005278A4(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v11 = *&CGAffineTransformIdentity.c;
    v12 = *&CGAffineTransformIdentity.a;
    v10 = *&CGAffineTransformIdentity.tx;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [*(a1 + 40) p_scrimOwnerForView:{v7, v10, v11, v12}];
        v9 = [v8 viewForScrimOpacityAnimation];
        [v8 willBeginScrimOpacityAnimation];
        v13[0] = v12;
        v13[1] = v11;
        v13[2] = v10;
        [v7 setTransform:v13];
        [v9 setAlpha:0.0];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_100527A10(uint64_t a1)
{
  v2 = [*(a1 + 32) p_activeTouchUpAnimatorForView:*(a1 + 40)];
  v3 = *(a1 + 48);

  if (v2 == v3)
  {
    [*(a1 + 32) p_setActiveTouchUpAnimator:0 forView:*(a1 + 40)];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 56);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 32) p_scrimOwnerForView:{*(*(&v10 + 1) + 8 * v8), v10}];
        [v9 didEndScrimOpacityAnimation];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_100527B90(id a1)
{
  v1 = [[UICubicTimingParameters alloc] initWithControlPoint1:0.25 controlPoint2:{0.0, 0.75, 1.0}];
  v2 = qword_101A35480;
  qword_101A35480 = v1;
}

void sub_100527C24(id a1)
{
  v1 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:400.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  v2 = qword_101A35490;
  qword_101A35490 = v1;
}

void sub_100527CB4(id a1)
{
  v2 = [CASpringAnimation animationWithKeyPath:@"transform"];
  [v2 setMass:1.0];
  [v2 setStiffness:400.0];
  [v2 setDamping:25.0];
  [v2 setInitialVelocity:0.0];
  [v2 settlingDuration];
  qword_101A354A0 = v1;
}

void sub_100528238(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052827C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005282C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100528304(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100528518(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052855C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100528770(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005287B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005289E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100528A2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100528C0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100528C50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100528CF8(id a1)
{
  v4[0] = kCAContextDisplayName;
  v4[1] = kCAContextIgnoresHitTest;
  v5[0] = @"SnapshotContext";
  v5[1] = kCFBooleanTrue;
  v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  v2 = [CAContext remoteContextWithOptions:v1];
  v3 = qword_101A354B0;
  qword_101A354B0 = v2;
}

void sub_1005295B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005295F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100529638(id a1)
{
  v1 = sub_1004BD804("CRLAnimationImplCat");
  v2 = off_1019EDC58;
  off_1019EDC58 = v1;
}

void sub_10052967C(id a1)
{
  v1 = sub_1004BD804("CRLAnimationImplCat");
  v2 = off_1019EDC58;
  off_1019EDC58 = v1;
}

void sub_1005296C0(id a1)
{
  v1 = sub_1004BD804("CRLAnimationImplCat");
  v2 = off_1019EDC58;
  off_1019EDC58 = v1;
}

void sub_100529820(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100529864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052A788(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052A7CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052A810(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052A854(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052B410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10052B438(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[22];
    v5 = v2;
    if (v3)
    {
      (*(v3 + 16))();
      v2 = v5;
      v4 = v5[22];
    }

    else
    {
      v4 = 0;
    }

    v2[22] = 0;

    v2 = v5;
  }
}

uint64_t sub_10052B95C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10052B97C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052B9C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052BA04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[22];
    v5 = v2;
    if (v3)
    {
      (*(v3 + 16))();
      v2 = v5;
      v4 = v5[22];
    }

    else
    {
      v4 = 0;
    }

    v2[22] = 0;

    v2 = v5;
  }
}

void sub_10052BA84(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10052BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10052BE34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052BE78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052BEBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 addObject:v5];
  v6 = [v5 size];

  *(*(*(a1 + 40) + 8) + 24) += v6;
}

int64_t sub_10052BF20(id a1, CRLZipEntry *a2, CRLZipEntry *a3)
{
  v4 = a3;
  v5 = [(CRLZipEntry *)a2 offset];
  v6 = [(CRLZipEntry *)v4 offset];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

void sub_10052C288(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052C2CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052C310(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v9 = v5;
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "size") + objc_msgSend(*(a1 + 32), "completedUnitCount")}];
    [*(a1 + 48) copyRemainingEntries:*(a1 + 56) fromArchive:*(a1 + 64) progress:*(a1 + 32) completionHandler:*(a1 + 72)];
  }

  else
  {
    v7 = *(a1 + 72);
    if (!v7)
    {
      goto LABEL_8;
    }

    v9 = v5;
    if (v5)
    {
      (*(v7 + 16))(v7, v5);
    }

    else
    {
      v8 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
      (*(v7 + 16))(v7, v8);
    }
  }

  v6 = v9;
LABEL_8:
}

void sub_10052C668(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052C6AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052C6F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052C734(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10052C848(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = v7;
  if (a2)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[2](v7, v8 == 0);
    }
  }

  return _objc_release_x2(v7);
}

void sub_10052D59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&a64, 8);
  _Unwind_Resume(a1);
}

void sub_10052D60C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D650(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D694(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D6D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D71C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D760(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D7A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D7E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D870(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D8B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052D8F8(void *a1, uint64_t a2, NSObject *a3, void *a4, _BYTE *a5)
{
  v12 = a4;
  if (a3)
  {
    *(*(a1[5] + 8) + 24) += dispatch_data_get_size(a3);
  }

  (*(a1[4] + 16))();
  v8 = v12;
  if (!v12 && (*a5 & 1) != 0)
  {
    v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  }

  if (v8)
  {
    v9 = *(a1[6] + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      v13 = v8;
      objc_storeStrong(v10, v8);
      v8 = v13;
    }
  }
}

void sub_10052D9E8(void *a1, uint64_t a2)
{
  v2 = a2;
  v7 = 0;
  v4 = a1[4];
  if (!a2)
  {
    v2 = *(*(a1[5] + 8) + 40);
  }

  (*(v4 + 16))(v4, 1, a1[6], a1[6], v2, &v7);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10052E5D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a1 & 1) == 0)
  {
    v9 = sub_1005332F0(@"PDF assertion failure: ", a2, &a9);
    if ([v9 length])
    {
      if (qword_101AD5CE0 != -1)
      {
        sub_10138E840();
      }

      v10 = off_1019F0EA8;
      if (os_log_type_enabled(off_1019F0EA8, OS_LOG_TYPE_ERROR))
      {
        sub_10138E868(v9, v10);
      }
    }

    [NSException raise:NSInternalInconsistencyException format:@"%@", v9, &a9];
  }
}

void sub_10052EC98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052ECDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052F02C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052F070(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052F3EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052F430(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10052FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100533440(&__p, 4 * a1);
  v10 = [NSString stringWithCharacters:"stringWithCharacters:length:" length:?];
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  v11 = sub_1005332F0(v10, a2, &a9);

  if ([v11 length])
  {
    if (qword_101AD5CE0 != -1)
    {
      sub_10138E8E0();
    }

    v12 = off_1019F0EA8;
    if (os_log_type_enabled(off_1019F0EA8, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p) = 138412290;
      *(&__p + 4) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@", &__p, 0xCu);
    }
  }
}

void sub_100530760(uint64_t a1)
{
  v24 = [*(a1 + 32) topOfContextStack];
  v2 = objc_opt_class();
  v3 = sub_100014370(v2, v24);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 taggerStateOutsideCore];

    if (v5)
    {
      v6 = objc_opt_class();
      v7 = [*(a1 + 40) parentRep];
      v8 = sub_100014370(v6, v7);

      if (v8)
      {
        v9 = [v8 info];
        v10 = [v9 accessibilityDescription];
        v11 = [v10 length];

        if (v11)
        {
          v12 = [v9 fill];
          if (v12)
          {
          }

          else
          {
            v13 = [v9 stroke];
            if (!v13 || ([v9 stroke], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isNullStroke"), v14, v13, v15))
            {
              CGContextSaveGState([*(a1 + 32) cgContext]);
              v16 = [*(a1 + 32) cgContext];
              v17 = +[CRLColor clearColor];
              CGContextSetFillColorWithColor(v16, [v17 CGColor]);

              v18 = [*(a1 + 32) cgContext];
              v19 = [v8 layout];
              v20 = [v19 geometry];
              [v20 size];
              v26.origin.x = sub_10011ECB4();
              CGContextFillRect(v18, v26);

              CGContextRestoreGState([*(a1 + 32) cgContext]);
            }
          }
        }
      }

      v21 = *(a1 + 32);
      v22 = [v4 taggerStateOutsideCore];
      [v21 setState:v22];

      [v4 setTaggerStateOutsideCore:0];
    }
  }

  v23 = [[CRLPdfTaggerTextStorageChunkContext alloc] initWithStateOfTagger:*(a1 + 32) textStorageChunk:*(a1 + 40) limitSelection:*(a1 + 48)];
  [*(a1 + 32) pushContext:v23];
}

id sub_100530AA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 restoreStateFromTopOfContextStackWithExpectedClass:v2];
}

void sub_100530BC8(uint64_t a1)
{
  v2 = [[CRLPdfTaggerTextColumnContext alloc] initWithStateOfTagger:*(a1 + 32) column:*(a1 + 40) limitSelection:*(a1 + 48)];
  [*(a1 + 32) pushContext:?];
}

id sub_100530CB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 restoreStateFromTopOfContextStackWithExpectedClass:v2];
}

void sub_10053138C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_1005313D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }
}

id *sub_1005319EC(id *result)
{
  if (result[6])
  {
    v1 = result;
    [result[4] advanceParagraphEnumeratorToCharIndex:result[5]];
    if ([v1[4] charIndexIsAtStartOfParagraph:v1[5]])
    {
      [v1[4] beginParagraphWithLineFragmentRange:{v1[5], v1[6]}];
    }

    v2 = v1[4];

    return [v2 assertTopOfContextStackIsParagraph:1];
  }

  return result;
}

id *sub_100531AC8(id *result)
{
  if (result[6])
  {
    v1 = result;
    [result[4] assertTopOfContextStackIsParagraph:1];
    result = [v1[4] charIndexIsAtEndOfParagraph:v1[5] + v1[6]];
    if (result)
    {
      v2 = v1[4];
      v3 = v1[5];
      v4 = v1[6];

      return [v2 endParagraphWithLineFragmentRange:{v3, v4}];
    }
  }

  return result;
}

void sub_100531BA4(uint64_t a1)
{
  v2 = [(CRLPdfTaggerContext *)[CRLPdfTaggerListLabelContext alloc] initWithStateOfTagger:*(a1 + 32)];
  [*(a1 + 32) pushContext:?];
  if (!+[CRLPdfTagger isHeaderTag:](CRLPdfTagger, "isHeaderTag:", [*(a1 + 32) topmostTagType]))
  {
    [*(a1 + 32) beginTagWithType:302];
  }
}

id sub_100531CB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 restoreStateFromTopOfContextStackWithExpectedClass:v2];
}

void sub_100531D6C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if ([*(a1 + 32) charIndexIsAtStartOfParagraph:*(a1 + 40)])
    {
      [*(a1 + 32) beginParagraphBodyWithLineFragmentRange:{*(a1 + 40), *(a1 + 48)}];
    }

    v2 = [[CRLPdfTaggerLineFragmentContext alloc] initWithStateOfTagger:*(a1 + 32) lineFragmentCharRange:*(a1 + 40), *(a1 + 48)];
    [*(a1 + 32) pushContext:?];
  }
}

id *sub_100531E8C(id *result)
{
  if (result[6])
  {
    v1 = result;
    [result[4] restoreStateFromTopOfContextStackWithExpectedClass:objc_opt_class()];
    result = [v1[4] charIndexIsAtEndOfParagraph:v1[5] + v1[6]];
    if (result)
    {
      v2 = v1[4];
      v3 = v1[5];
      v4 = v1[6];

      return [v2 endParagraphBodyWithLineFragmentRange:{v3, v4}];
    }
  }

  return result;
}

void sub_100532050(uint64_t a1)
{
  v2 = [[CRLPdfTaggerPrimaryTextRunContext alloc] initWithStateOfTagger:*(a1 + 32) charRange:*(a1 + 40), *(a1 + 48)];
  [*(a1 + 32) pushContext:v2];
  if (*(a1 + 56) == 1)
  {
    v3 = [*(a1 + 32) topmostParagraphContext];
    if ([v3 needsSpans])
    {
      v4 = [*(a1 + 32) indexOfFirstVisibleCharInParagraphAtOrAfterCharIndex:*(a1 + 40)];
      v6 = 0;
      v5 = [*(a1 + 32) retrieveHighestInfoAtCharIndex:v4 returnTagType:&v6];
      if (!v6)
      {
        v6 = 500;
      }

      [*(a1 + 32) beginTagWithType:?];
    }
  }
}

id sub_1005321A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 restoreStateFromTopOfContextStackWithExpectedClass:v2];
}

void sub_100532264(uint64_t a1)
{
  v3 = [(CRLPdfTaggerSecondaryTextRunContext *)[CRLPdfTaggerAncillaryTextRunContext alloc] initWithStateOfTagger:*(a1 + 32) charRange:*(a1 + 40) baseTextRange:*(a1 + 48), *(a1 + 56), *(a1 + 64)];
  [*(a1 + 32) pushContext:?];
  v2 = [*(a1 + 32) topmostParagraphContext];
  if ([v2 needsSpans])
  {
    [*(a1 + 32) beginTagWithType:500];
  }
}

id sub_10053238C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 restoreStateFromTopOfContextStackWithExpectedClass:v2];
}

void sub_1005326A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1005326C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100532828(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1005328FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([objc_opt_class() shouldMapDrawableRep:v3])
  {
    [*(a1 + 32) beginDrawable:v3];
  }
}

void sub_1005329E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([objc_opt_class() shouldMapDrawableRep:v3])
  {
    [*(a1 + 32) endDrawable:v3];
  }
}

void sub_100532EA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100532EE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053314C(uint64_t a1)
{
  v2 = [(CRLPdfTaggerContext *)[CRLPdfTaggerCommentContext alloc] initWithStateOfTagger:*(a1 + 32)];
  [*(a1 + 32) pushContext:?];
  [*(a1 + 32) beginTagWithType:507];
}

id sub_10053323C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 restoreStateFromTopOfContextStackWithExpectedClass:v2];
}

id sub_1005332F0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [NSString stringWithUTF8String:a2];
  v7 = [[NSString alloc] initWithFormat:v6 arguments:a3];
  if ([v5 length])
  {
    v8 = [v5 stringByAppendingString:v7];

    v7 = v8;
  }

  return v7;
}

void sub_1005333C0(id a1)
{
  v1 = sub_1004BD804("CRLPdfTaggingLogCat");
  v2 = off_1019F0EA8;
  off_1019F0EA8 = v1;
}

void sub_100533400(id a1)
{
  v1 = sub_1004BD804("CRLPdfTaggingLogCat");
  v2 = off_1019F0EA8;
  off_1019F0EA8 = v1;
}

void *sub_100533440(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100200CEC(result, a2);
  }

  return result;
}

void sub_1005335C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100533F28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100533F6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100533FB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100533FF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100534184(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005341C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005343E0(id a1)
{
  v1 = [UITraitCollection traitCollectionWithUserInterfaceLevel:0];
  v2 = qword_101A354C0;
  qword_101A354C0 = v1;
}

void sub_100534468(id a1)
{
  v1 = [UITraitCollection traitCollectionWithUserInterfaceLevel:1];
  v2 = qword_101A354C8;
  qword_101A354C8 = v1;
}

void sub_1005344BC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x36u);
}

void sub_1005351EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100535230(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__CFData *sub_1005356F4(CGImage *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableData data];
  v5 = [UTTypePNG identifier];
  v6 = CGImageDestinationCreateWithData(v4, v5, 1uLL, 0);

  CGImageDestinationAddImage(v6, a1, v3);
  if (!CGImageDestinationFinalize(v6))
  {

    v4 = 0;
  }

  CFRelease(v6);

  return v4;
}

id sub_1005357C4(uint64_t a1, CGFloat a2)
{
  v3 = [[UIImage alloc] initWithCGImage:a1];
  if (v3)
  {
    v4 = v3;
    v5 = UIImageJPEGRepresentation(v3, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__CFData *sub_10053583C(CGImage *a1)
{
  v2 = +[NSMutableData data];
  v3 = [UTTypeTIFF identifier];
  v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

  CGImageDestinationAddImage(v4, a1, 0);
  if (!CGImageDestinationFinalize(v4))
  {

    v2 = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

void sub_100535EEC(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100535F2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100535F70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100535FB4(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100535FF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100536038(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100536208(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100536368(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100536528(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053656C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005366F8(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100536968(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100536C04(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100536C44(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100536D90(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100536F78(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100537B24(id a1)
{
  v1 = sub_1004BD804("CRLScribbleInteractionDelegateCategory");
  v2 = off_1019F0EB0;
  off_1019F0EB0 = v1;
}

void sub_100537C30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100538104(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10053818C;
  v2[3] = &unk_10185DEB0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 crlaxEnumerateSmartFieldsUsingBlock:v2];
}

void sub_100538FF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100539034(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100539078(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005390BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053978C(id *a1, void *a2)
{
  objc_storeStrong(a1 + 6, a2);
  v10 = a2;
  v4 = a1;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("CRLMultipleItemImporter", v5);
  v7 = v4[1];
  v4[1] = v6;

  v8 = v4[8];
  v4[8] = &__NSArray0__struct;

  v9 = v4[9];
  v4[9] = &__NSArray0__struct;
}

void sub_100539844(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 usesProgressDialog])
        {
          v13 = [v12 progress];
          if (v13)
          {
            [v5 addObject:v13];
            v9 = 1;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v3[33] = v9 & 1;
  v14 = [[CRLProgressGroup alloc] initWithChildren:v5];
  v15 = *(v3 + 3);
  *(v3 + 3) = v14;
}

void sub_100539E74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100539EB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10053A0FC(uint64_t a1)
{
  v1 = a1;
  if ([*(a1 + 32) isCancelled])
  {
    return (*(*(v1 + 40) + 16))();
  }

  v21 = v1;
  v2 = [*(*(v1 + 32) + 16) importers];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v22 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  v23 = v5;
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  v8 = *v25;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v24 + 1) + 8 * i);
      v11 = [v10 boardItem];
      v12 = [v10 error];
      [v10 embeddedDataLength];
      [v10 uploadDataLength];
      if (!v11)
      {
        if (!v12)
        {
          v13 = [v10 URL];

          if (v13)
          {
            v28 = NSURLErrorKey;
            v14 = [v10 URL];
            v29 = v14;
            v15 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          }

          else
          {
            v15 = 0;
          }

          v12 = [NSError errorWithDomain:NSURLErrorDomain code:-3001 userInfo:v15];
        }

        v16 = [v12 domain];
        v17 = v16;
        if (v16 == @"com.apple.freeform.CRLErrorDomainInfoImporter")
        {
          v18 = [v12 code];

          if (v18 == 102)
          {
            [v22 addObject:v12];
          }

          v5 = v23;
        }

        else
        {
        }

LABEL_20:
        [v4 addObject:v12];
        goto LABEL_21;
      }

      [v3 addObject:v11];
      if ([v12 crl_errorShouldAlwaysBeReportedDuringImport])
      {
        goto LABEL_20;
      }

LABEL_21:
    }

    v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v7);
LABEL_23:

  if ([v22 count])
  {
    v1 = v21;
    if ([v22 count] == 1 && objc_msgSend(v23, "count") == 1)
    {
      v19 = v4;
      v4 = v22;
    }

    else
    {
      [v4 removeAllObjects];
      v19 = [v22 firstObject];
      [v4 addObject:v19];
    }

    [v3 removeAllObjects];
  }

  else
  {
    v1 = v21;
  }

  [*(v1 + 32) setBoardItems:v3];
  [*(v1 + 32) setErrors:v4];

  return (*(*(v1 + 40) + 16))();
}

void sub_10053A504(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v1 = [*(*(a1 + 32) + 16) importers];
  [v1 makeObjectsPerformSelector:"cancel"];
}

id sub_10053A72C(void *a1)
{
  [*(a1[4] + 16) importer:a1[5] needsMediaCompatibilityFeedbackWithReasons:a1[7] forMediaType:a1[8] usingBlock:a1[6]];
  v2 = a1[4];
  v3 = a1[5];

  return [v2 p_importerDidRequestMediaCompatibilityRequirement:v3];
}

void sub_10053AA24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053AA68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053AAAC(uint64_t a1, int a2, char a3, char a4)
{
  if (a2)
  {
    [*(a1 + 32) cancel];
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10053AB50;
  v9[3] = &unk_10186B0A0;
  v9[4] = v7;
  v10 = a3;
  v11 = a4;
  dispatch_async(v8, v9);
}

void sub_10053B2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSUInteger sub_10053B2D4(NSRange *a1, NSRange range2, uint64_t a3, _BYTE *a4)
{
  v7 = NSIntersectionRange(a1[3], range2);
  result = v7.location;
  v8 = *(a1[2].length + 8);
  if (v7.length)
  {
    *(v8 + 24) = 1;
    v9 = *(a1[2].location + 16);

    return v9();
  }

  else
  {
    *a4 = *(v8 + 24);
  }

  return result;
}

void sub_10053BCE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053BD2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053C2E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053C32C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

const __CFString *sub_10053C730(unint64_t a1)
{
  if (a1 < 8)
  {
    return *(&off_10186DB00 + a1);
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10138F7F4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10138F808();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10138F8B8();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v4 = [NSString stringWithUTF8String:"NSString *NSStringFromCRLWPSelectionType(CRLWPSelectionType)"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:92 isFatal:0 description:"Unknown selection type: %lu", a1];

  return @"<UNKNOWN SELECTION TYPE>";
}

void sub_10053C8E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053C928(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053CF98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053CFDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053D020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053D064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053D0A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053D0EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053D394(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053D3D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053DA14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053DA58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053E948(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053E98C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053EB04(id a1, _NSRange a2, unint64_t a3, BOOL *a4)
{
  if (a2.location + a2.length >= 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138FDDC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138FDF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138FE78();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"[CRLWPSelection i_setVisualRanges:]_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:529 isFatal:0 description:"illegal visual range"];
  }
}

void sub_10053EC9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053ECE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053F008(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053F04C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSValue valueWithRange:a2, a3];
  [v3 addObject:?];
}

void sub_10053FFB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10053FFF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100540038(id a1)
{
  v1 = sub_1004BD804("CRLFloodFillCat");
  v2 = off_1019F0F78;
  off_1019F0F78 = v1;
}

NSString *__cdecl sub_100540078(id a1, CRLBezierPath *a2)
{
  v2 = a2;
  v3 = [NSString stringWithUTF8String:[(CRLBezierPath *)v2 cString]];

  return v3;
}

void sub_1005400E4(id a1)
{
  v1 = sub_1004BD804("CRLFloodFillCat");
  v2 = off_1019F0F78;
  off_1019F0F78 = v1;
}

void sub_100540124(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100540168(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100540708(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) p_flattenedPathForPath:a2];

  return v2;
}

void sub_10054073C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  if ([v4 containsElementsOtherThanMoveAndClose])
  {
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x5812000000;
    v26[3] = sub_1005409D0;
    v26[4] = sub_1005409DC;
    v26[5] = &unk_1016A8115;
    memset(v27, 0, sizeof(v27));
    v28 = 1065353216;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x5812000000;
    v23[3] = sub_1005409E4;
    v23[4] = sub_1005409F0;
    v23[5] = &unk_1016A8115;
    memset(v24, 0, sizeof(v24));
    v25 = 1065353216;
    v5 = *(a1 + 56);
    [v4 length];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005409F8;
    v12[3] = &unk_10186DCF0;
    v16 = v23;
    v17 = a2;
    v18 = v5 * 2.5 / v6;
    v15 = v26;
    v13 = *(a1 + 40);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v7 = *(a1 + 48);
    v8 = *(a1 + 80);
    v14 = v7;
    v22 = v8;
    [v4 iterateOverPathWithPointDistancePerIteration:v12 usingBlock:1.0];
    v9 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100541098;
    v11[3] = &unk_10186DD18;
    v10 = *(a1 + 80);
    v11[4] = v26;
    v11[5] = v10;
    dispatch_sync(v9, v11);

    _Block_object_dispose(v23, 8);
    sub_1000D9C84(v24);
    _Block_object_dispose(v26, 8);
    sub_1000D9C84(v27);
  }
}

void sub_100540978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  sub_1000D9C84(v31 + 48);
  _Block_object_dispose((v32 - 152), 8);
  sub_1000D9C84(v30 + 48);

  _Unwind_Resume(a1);
}

void sub_1005409F8(uint64_t a1, double a2, double a3, double a4)
{
  v8 = sub_1000D9958((*(*(a1 + 48) + 8) + 48), (a1 + 64));
  if (v8 && vabdd_f64(v8[10], a4) < *(a1 + 72))
  {
    sub_1000D9D60((*(*(a1 + 48) + 8) + 48), (a1 + 64));
    sub_1000D9D60((*(*(a1 + 56) + 8) + 48), (a1 + 64));
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100540E1C;
  v46[3] = &unk_10186DCA0;
  v46[4] = *(a1 + 64);
  *&v46[5] = a4;
  v46[6] = v10;
  v46[7] = *(a1 + 88);
  v46[8] = *(a1 + 96);
  *&v46[9] = a2;
  *&v46[10] = a3;
  if (v9)
  {
    [v9 closestHitsTo:v46 withSearchThreshold:a2 passingTest:{a3, v11}];
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  for (i = *(*(*(a1 + 48) + 8) + 64); i; i = *i)
  {
    v13 = *(i + 3);
    v40 = *(i + 2);
    v41 = v13;
    v14 = *(i + 5);
    v42 = *(i + 4);
    v43 = v14;
    v39 = *(i + 1);
    sub_100542764(&v44, &v39);
  }

  v15 = v47;
  for (j = v48; v15 != j; v15 += 56)
  {
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 2);
    v38 = *(v15 + 6);
    v36 = v18;
    v37 = v19;
    v35 = v17;
    sub_1000D9D60((*(*(a1 + 56) + 8) + 48), &v37);
    v20 = *(*(a1 + 56) + 8);
    LODWORD(v39) = 0;
    sub_100542830((v20 + 48), &v37);
    v21 = sub_1000D9958((*(*(a1 + 48) + 8) + 48), &v37);
    v22 = *(a1 + 48);
    if (!v21 || v21[11] > v38)
    {
      v23 = *(a1 + 64);
      v40 = v35;
      v41 = v36;
      v42 = v37;
      *&v43 = v38;
      *&v39 = v23;
      *(&v39 + 1) = a4;
      sub_1000D9D60((*(v22 + 8) + 48), &v37);
      sub_100542A6C((*(*(a1 + 48) + 8) + 48), &v37);
      sub_1002EF18C(&v44, &v37);
    }
  }

  v24 = v44;
  if (v44 != v45)
  {
    do
    {
      *&v39 = v24[4];
      v25 = sub_1000D9958((*(*(a1 + 56) + 8) + 48), &v39);
      if (!v25)
      {
        sub_1000D9CD0("unordered_map::at: key not found");
      }

      v26 = v25[3] + 1;
      if (v26 < 5)
      {
        sub_1000D9D60((*(*(a1 + 56) + 8) + 48), &v39);
        v30 = *(*(a1 + 56) + 8);
        *&v35 = v26;
        sub_100542D20((v30 + 48), &v39);
      }

      else
      {
        v27 = *(a1 + 40);
        v28 = *(a1 + 48);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100540EFC;
        block[3] = &unk_10186DCC8;
        v29 = *(a1 + 104);
        block[4] = v28;
        block[5] = v29;
        block[6] = v39;
        dispatch_sync(v27, block);
        sub_1000D9D60((*(*(a1 + 48) + 8) + 48), &v39);
        sub_1000D9D60((*(*(a1 + 56) + 8) + 48), &v39);
      }

      v31 = v24[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v24[2];
          v33 = *v32 == v24;
          v24 = v32;
        }

        while (!v33);
      }

      v24 = v32;
    }

    while (v32 != v45);
  }

  sub_1000D87F0(&v44, v45[0]);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_100540DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, void *a37)
{
  sub_1000D87F0(&a36, a37);
  v39 = *(v37 - 120);
  if (v39)
  {
    *(v37 - 112) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100540E1C(uint64_t a1, unint64_t a2, double a3, double a4, double a5)
{
  v15 = a2;
  v5 = *(a1 + 32);
  if (v5 > a2)
  {
    return 0;
  }

  if (v5 == a2)
  {
    v10 = *(a1 + 40);
    if (v10 > a5 || vabdd_f64(a5, v10) < *(a1 + 48))
    {
      return 0;
    }
  }

  v11 = sub_1000D9958(*(a1 + 56), (a1 + 32));
  if (!v11 || (v12 = v11[3], (v13 = sub_1000D9958(*(a1 + 56), &v15)) == 0))
  {
    sub_1000D9CD0("unordered_map::at: key not found");
  }

  v14 = *(a1 + 64) + v12 * 0.5 + v13[3] * 0.5;
  return sub_100120090(*(a1 + 72), *(a1 + 80), a3, a4) <= v14;
}

void sub_100540EFC(void *a1)
{
  v1 = a1[5];
  v2 = sub_1000D9958((*(a1[4] + 8) + 48), a1 + 6);
  if (!v2)
  {
    sub_1000D9CD0("unordered_map::at: key not found");
  }

  sub_100540F58(v1, (v2 + 3));
}

void sub_100540F58(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_1000C1D48();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_100542CC4(a1, v13);
    }

    v14 = 72 * v10;
    *v14 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a2 + 32);
    v17 = *(a2 + 48);
    *(v14 + 64) = *(a2 + 64);
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    v9 = 72 * v10 + 72;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v6;
    v9 = v4 + 72;
  }

  *(a1 + 8) = v9;
}

void sub_100541098(uint64_t a1)
{
  for (i = *(*(*(a1 + 32) + 8) + 64); i; i = *i)
  {
    v3 = *(i + 3);
    v5[1] = *(i + 2);
    v5[2] = v3;
    v4 = *(i + 5);
    v5[3] = *(i + 4);
    v5[4] = v4;
    v5[0] = *(i + 1);
    sub_100540F58(*(a1 + 40), v5 + 8);
  }
}

void sub_100541108(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      v7 = v2[3];
      v8 = v2[4];
      v9 = v2[5];
      v10 = *(v2 + 6);
      v11 = v2[7];
      v12 = [*(a1 + 32) objectAtIndexedSubscript:*v2];
      v13 = [*(a1 + 56) p_bezierPathWithSectionOfBezierPath:v12 centeredAtPercentAlongPath:v6 withMaximumLength:5.0];
      v14 = [*(a1 + 32) objectAtIndexedSubscript:v10];
      v15 = [*(a1 + 56) p_bezierPathWithSectionOfBezierPath:v14 centeredAtPercentAlongPath:v11 withMaximumLength:5.0];
      if (![CRLBezierPathBooleanOperationHelper hasAnyCrossingBetweenPath:v13 andPath:v15])
      {
        v16 = [CRLBezierPath bezierPathWithStart:v5 end:v7, v8, v9];
        [*(a1 + 40) addObject:v16];
      }

      v2 += 9;
    }

    while (v2 != v3);
  }
}

void sub_10054227C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005422C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100542304(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100542348(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054238C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005423D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100542414(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100542458(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054249C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005424E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void *sub_100542524(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_100542764(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_100542830(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_100542A6C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100542CC4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

void *sub_100542D20(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100543310(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100543354(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1005447F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) crlaxCompleteConnectionsCustomContent];
  [v1 addObjectsFromArray:v2];
}

void sub_100545738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100545750(uint64_t a1)
{
  [*(a1 + 32) transformToConvertNaturalFromLayerRelative];
  v2 = *(*(a1 + 40) + 8);
  result = v6;
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  return result;
}

void sub_100545FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100545FD0(uint64_t a1)
{
  result = [*(a1 + 32) convertNaturalPointFromUnscaledCanvas:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

void sub_1005460EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100546104(uint64_t a1)
{
  result = [*(a1 + 32) convertNaturalRectFromUnscaledCanvas:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

void sub_10054620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100546224(uint64_t a1)
{
  result = [*(a1 + 32) convertNaturalPointToUnscaledCanvas:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

void sub_100546340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100546358(uint64_t a1)
{
  result = [*(a1 + 32) convertNaturalRectToUnscaledCanvas:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

id sub_1005475C4(uint64_t a1)
{
  [*(a1 + 32) crlaxPerformCleanupTasksPriorToRemovalFromCanvas];
  result = [*(a1 + 32) crlaxRespondsToSelector:"crlaxPerformExtraCleanupTasksPriorToRemovalFromCanvas" fromExtrasProtocol:&OBJC_PROTOCOL___CRLCanvasRepAccessibilityExtras];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 crlaxPerformExtraCleanupTasksPriorToRemovalFromCanvas];
  }

  return result;
}

uint64_t sub_100547F48(CGFloat *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = 0;
  v7 = v5;
  v8 = objc_opt_class();
  v9 = __CRLAccessibilityCastAsSafeCategory(v8, v7, 1, &v36);
  if (v36 == 1 || (v10 = v9, v7, [v10 crlaxFrameInUnscaledCanvas], v12 = v11, v14 = v13, v16 = v15, v18 = v17, v19 = a1[4], v20 = a1[5], v21 = a1[6], v22 = a1[7], v10, v35 = 0, v23 = v6, v24 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v24, v23, 1, &v35), v25 = objc_claimAutoreleasedReturnValue(), v35 == 1))
  {
    abort();
  }

  v26 = v25;
  v27 = sub_1001202D8(v19, v20, v21, v22, v12, v14, v16, v18);

  [v26 crlaxFrameInUnscaledCanvas];
  v32 = sub_1001202D8(a1[4], a1[5], a1[6], a1[7], v28, v29, v30, v31);

  if (v27 <= v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  return v33;
}

void sub_100549240(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100549284(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054A350(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054A394(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054AA08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054AA4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054AD8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054ADD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054C4EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054C530(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054C574(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054C5B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054C5FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10054C640(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}