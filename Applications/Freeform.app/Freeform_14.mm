void sub_10025CCDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025CD20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025CD64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025CDA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D1C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D208(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D24C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D290(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D2D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D598(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D5DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025D9D4(id a1)
{
  v1 = sub_1004BD804("CRLFreehandDrawingStrokeAnimationCat");
  v2 = off_1019EDC98;
  off_1019EDC98 = v1;
}

void sub_10025FBD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025FC1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025FC60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025FCA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025FCE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025FD2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100260184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002601A4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2 != 16)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

BOOL sub_100260C34(uint64_t a1, void *a2)
{
  v3 = [a2 parentRep];
  v4 = v3 == *(a1 + 32);

  return v4;
}

BOOL sub_10026171C(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 24) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    return fabs(*(a1 + 40)) != INFINITY;
  }

  return 0;
}

void sub_1002617B0()
{
  v0 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133D574();
  }

  v1 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133D588(v0, v1);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133D634();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v2, v0);
  }

  v3 = [NSString stringWithUTF8String:"void CRLNotifyCGAssertionAvoided()"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLSafeCGWrappers.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:94 isFatal:0 description:"A CG call was elided because of an invalid parameter."];
}

void sub_1002618CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100261910(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100261C64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100261CA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100262D30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100262D74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100262DB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100262DFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100262E40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100262E84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100262F4C(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 - 1;
  if (v2 == 1)
  {
    return 0.0;
  }

  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (*(a1 + 8) - *a1) >> 4;
  }

  v5 = v4 - 1;
  if (v2 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = (*(a1 + 8) - *a1) >> 4;
  }

  if (v6 >= v2 - 2)
  {
    v6 = v2 - 2;
  }

  if (v2 == v6 || v5 == v6)
  {
    sub_1002637C8();
  }

  v9 = *v1;
  v8 = v1[1];
  v7 = v1 + 3;
  result = 0.0;
  do
  {
    v11 = *(v7 - 1);
    v12 = *v7;
    result = result + sqrt((v8 - *v7) * (v8 - *v7) + (v9 - v11) * (v9 - v11));
    v7 += 2;
    v8 = v12;
    v9 = v11;
    --v3;
  }

  while (v3);
  return result;
}

void sub_100262FE4(const CGPath *a1, float64_t a2, float64_t a3, float64_t a4, float64_t a5, CGFloat a6, CGFloat a7, double a8)
{
  CurrentPoint = CGPathGetCurrentPoint(a1);
  v12.f64[0] = CurrentPoint.y;
  v11.f64[0] = a3;
  v11.f64[1] = a2;
  v12.f64[1] = CurrentPoint.x;
  v13 = vsubq_f64(v11, v12);
  v14 = v11;
  v11.f64[0] = a5;
  v11.f64[1] = a4;
  v15.f64[0] = a7;
  v15.f64[1] = a6;
  v16 = vsubq_f64(v11, v14);
  v17 = vsubq_f64(v15, v11);
  v18 = vsubq_f64(v16, v13);
  v19 = vsubq_f64(v17, v16);
  v20 = vzip1q_s64(v18, v19);
  v21 = vzip2q_s64(v18, v19);
  v22 = vmlaq_f64(vmulq_f64(v20, v20), v21, v21);
  if (v22.f64[0] <= v22.f64[1])
  {
    v22.f64[0] = v22.f64[1];
  }

  v23 = v22.f64[0] * 9.0 * 0.0625;
  if (v23 > a8 * a8)
  {
    v24 = vsubq_f64(v19, v18);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v31 = vmulq_f64(v24, _Q6);
    v32 = vmlaq_f64(v24, _Q5, vaddq_f64(v13, v18));
    v33 = vmulq_f64(vaddq_f64(v18, v24), _Q6);
    v34 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v38 = v34;
      v31 = vmulq_f64(v31, _Q2);
      v33 = vsubq_f64(vmulq_f64(v33, _Q3), v31);
      v32 = vsubq_f64(vmulq_f64(v32, _Q4), vmulq_f64(v33, _Q4));
      v34 *= 2;
      v23 = v23 * 0.0625;
    }

    while (v23 > a8 * a8 && v34 <= 0x10000);
    if (v34 >= 2)
    {
      v39 = (2 * v38) | 1;
      do
      {
        v47 = v31;
        v49 = vaddq_f64(v12, v32);
        v43 = vaddq_f64(v31, v33);
        v45 = vaddq_f64(v32, v33);
        CGPathAddLineToPoint(a1, 0, v49.f64[1], v49.f64[0]);
        v33 = v43;
        v32 = v45;
        v31 = v47;
        v12 = v49;
        --v39;
      }

      while (v39 > 2);
    }
  }

  CGPathAddLineToPoint(a1, 0, a6, a7);
}

void sub_10026317C(const CGPath *a1, double a2, double a3, CGFloat a4, CGFloat a5, double a6)
{
  CurrentPoint = CGPathGetCurrentPoint(a1);

  sub_100262FE4(a1, (CurrentPoint.x + a2 * 2.0) / 3.0, (CurrentPoint.y + a3 * 2.0) / 3.0, (a4 + a2 * 2.0) / 3.0, (a5 + a3 * 2.0) / 3.0, a4, a5, a6);
}

void sub_100263214(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        CGPathAddLineToPoint(*a1, 0, **(a2 + 8), *(*(a2 + 8) + 8));
      }
    }

    else
    {
      CGPathMoveToPoint(*a1, 0, **(a2 + 8), *(*(a2 + 8) + 8));
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        sub_10026317C(*a1, **(a2 + 8), *(*(a2 + 8) + 8), *(*(a2 + 8) + 16), *(*(a2 + 8) + 24), *(a1 + 8));
        break;
      case 3:
        v3 = *(a2 + 8);
        sub_100262FE4(*a1, *v3, v3[1], v3[2], v3[3], v3[4], v3[5], *(a1 + 8));
        break;
      case 4:
        CGPathCloseSubpath(*a1);
        break;
    }
  }
}

void sub_1002632B4(uint64_t a1, uint64_t a2)
{
  if (*a2 != 4)
  {
    if (*a2 > 1u)
    {
      v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133D9B8();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133D9CC(v3, v4);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133DA78();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[CRLAssertionHandler packedBacktraceString];
        sub_101318C3C(v6, v9, v3, v5);
      }

      v7 = [NSString stringWithUTF8String:"void _CRLPKControlPointsFromFlattenedPathApplier(std::vector<CGPoint> *, const CGPathElement *)"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKCGPathUtility.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:206 isFatal:0 description:"If path includes kCGPathElementAddQuadCurveToPoint or kCGPathElementAddCurveToPoint it was not properly flattened."];
    }

    else
    {
      v2 = *(a2 + 8);

      sub_1000DACAC(a1, v2);
    }
  }
}

void sub_100263498(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002634DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100263520(const CGPath *a1, void *a2)
{
  if (a1)
  {
    Mutable = CGPathCreateMutable();
    v5[0] = Mutable;
    v5[1] = 0x3F847AE147AE147BLL;
    CGPathApply(a1, v5, sub_100263214);
    CGPathApply(Mutable, a2, sub_1002632B4);
    CGPathRelease(Mutable);
  }
}

void sub_1002635B8(uint64_t *a1, const void **a2)
{
  v5 = a2[1];
  v4 = a2[2];
  if (v5 >= v4)
  {
    v7 = *a2;
    v8 = v5 - *a2;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
LABEL_31:
      sub_1000C1D48();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_1000E7D14(a2, v13);
    }

    *(8 * v9) = 0;
    v6 = (8 * v9 + 8);
    memcpy(0, v7, v8);
    v14 = *a2;
    *a2 = 0;
    a2[1] = v6;
    a2[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = 0;
    v6 = (v5 + 1);
  }

  a2[1] = v6;
  v15 = *a1;
  v16 = a1[1] - *a1;
  if (v16 != 16)
  {
    v17 = 0;
    v18 = 0;
    v19 = v16 >> 4;
    do
    {
      if (v19 <= v18 || (++v18, v19 <= v18))
      {
        sub_1002637C8();
      }

      v20 = (v15 + v17);
      v21 = sqrt((v20[1] - v20[3]) * (v20[1] - v20[3]) + (*v20 - v20[2]) * (*v20 - v20[2]));
      v22 = a2[2];
      if (v6 >= v22)
      {
        v23 = *a2;
        v24 = v6 - *a2;
        v25 = v24 >> 3;
        v26 = (v24 >> 3) + 1;
        if (v26 >> 61)
        {
          goto LABEL_31;
        }

        v27 = v22 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          sub_1000E7D14(a2, v28);
        }

        *(8 * v25) = v21;
        v6 = (8 * v25 + 8);
        memcpy(0, v23, v24);
        v29 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v6++ = v21;
      }

      a2[1] = v6;
      v15 = *a1;
      v19 = (a1[1] - *a1) >> 4;
      v17 += 16;
    }

    while (v18 < v19 - 1);
  }
}

void sub_100263860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CRLWPCTTypesetterCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100263AE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100263B2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void *sub_100263C64(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_100263D38(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_1000D9518(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_1000F532C(v4);
  }

  operator delete(a2);
  return v3;
}

void sub_100263D78(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100263D78(a1, *a2);
    sub_100263D78(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_1000F532C(v4);
    }

    operator delete(a2);
  }
}

void sub_100264050(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264094(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264310(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264354(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264600(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002646CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264AB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264AFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264F2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100264F70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002651AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002651F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002653B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002653F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100265F18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100265F5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100265FA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100265FE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100266028(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026606C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002669EC(id a1)
{
  v1 = [CRLCIKernelLoader loadKernelWithMetalName:@"curvedShadowDisplacement" legacyName:@"CRLCurvedShadow_CurveDisplacement"];
  v2 = qword_101A34918;
  qword_101A34918 = v1;
}

void sub_100266AFC(id a1)
{
  v1 = [CRLCIKernelLoader loadKernelWithMetalName:@"curvedShadowBlurBlend" legacyName:@"CRLCurvedShadow_BlurBlend"];
  v2 = qword_101A34928;
  qword_101A34928 = v1;
}

void sub_100267660(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002676A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100267828(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026786C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002679E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100267A28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100267BB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100267BF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100268548(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026858C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100269234(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100269404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100269428(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100269440(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 getPromisedItemResourceValue:&obj forKey:NSURLContentTypeKey error:0];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v4;
}

void sub_1002698CC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100269E38(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

void sub_10026A144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10026A15C(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  if ([v6 resultType] == 2048)
  {
    v7 = [v6 phoneNumber];
    if (![v7 length])
    {
      v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133E9D8();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133E9EC(v8, v9);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133EA98();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133EAC0(v10);
      }

      v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSURL(CRLAdditions) crl_urlFromUserProvidedTelephoneString:withDataDetector:]_block_invoke");
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSURL_CRLAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:292 isFatal:0 description:"Expected phone number match from NSDataDetector"];
    }

    if ([v7 length])
    {
      v13 = +[NSCharacterSet alphanumericCharacterSet];
      v14 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v13];
      v15 = [@"tel:" stringByAppendingString:v14];
      v16 = [NSURL URLWithString:v15];
      v17 = *(*(a1 + 32) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
    }
  }
}

void sub_10026A360(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026A3A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026A65C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026A6A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026A8F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026A934(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026AA18(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026ABC0(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026AC00(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026B808(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026B848(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026B888(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026B8C8(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026B908(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026B948(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026C1A8(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026C4E8(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026C728(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026C830(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026D3AC(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026D3EC(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

void sub_10026D42C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026D470(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026D4B4(id a1)
{
  v1 = sub_1004BD804("CRLMultiSelectGRCat");
  v2 = off_1019EED20;
  off_1019EED20 = v1;
}

_BYTE *sub_10026D600(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10026D610(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void sub_10026D638(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10026DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10026DC7C(uint64_t a1)
{
  v23 = 0;
  v2 = [*(a1 + 32) nsRange];
  v4 = [CRLWPSelection crlaxSelectionWithRange:v2, v3];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v23);
  if (v23 == 1)
  {
    abort();
  }

  v7 = v6;

  [*(a1 + 40) rectForSelection:v7 includeRuby:0 includePaginatedAttachments:0];
  v8 = *(*(a1 + 56) + 8);
  v8[4] = v9;
  v8[5] = v10;
  v8[6] = v11;
  v8[7] = v12;
  [*(a1 + 40) convertNaturalRectToUnscaledCanvas:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
  v13 = *(*(a1 + 56) + 8);
  v13[4] = v14;
  v13[5] = v15;
  v13[6] = v16;
  v13[7] = v17;
  [*(a1 + 48) convertUnscaledToBoundsRect:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
  v18 = *(*(a1 + 56) + 8);
  v18[4] = v19;
  v18[5] = v20;
  v18[6] = v21;
  v18[7] = v22;
}

void sub_10026E02C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026E070(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026E0B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026E0F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10026EB3C(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *a1 = cf;
  *(a1 + 8) = a6;
  *(a1 + 16) = a7;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0x7FFFFFFFFFFFFFFFLL;
  v8 = *&CGAffineTransformIdentity.c;
  *(a1 + 48) = *&CGAffineTransformIdentity.a;
  *(a1 + 64) = v8;
  *(a1 + 80) = *&CGAffineTransformIdentity.tx;
  *(a1 + 96) = a5;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

uint64_t sub_10026EB9C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 48) = v4;
  *(a1 + 96) = *(a2 + 96);
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **sub_10026EC04(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_10026EC3C(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = *a2;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 48) = v4;
  return a1;
}

void sub_10026EF40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026EF84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026F70C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026F750(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026F794(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026F7D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026FA5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10026FAA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100270AD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100270B18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100271108(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4 = 0.2;
  if (!*(*(a1 + 32) + 57))
  {
    v4 = 0.0;
  }

  v6[1] = 3221225472;
  v6[0] = _NSConcreteStackBlock;
  v6[2] = sub_1002711CC;
  v6[3] = &unk_10184DF70;
  v7 = v3;
  v8 = v2;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  result = [UIView animateWithDuration:v6 animations:v4];
  *(*(a1 + 32) + 57) = 0;
  return result;
}

id sub_1002711CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10011ECB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v2 view];
  [v10 setBounds:{v3, v5, v7, v9}];

  [*(*(a1 + 32) + 80) setHidden:0];
  v11 = *(a1 + 48);
  *&v11 = v11;
  [*(*(a1 + 32) + 80) setMinimumValue:v11];
  v12 = *(a1 + 56);
  *&v12 = v12;
  [*(*(a1 + 32) + 80) setMaximumValue:v12];
  [*(*(a1 + 32) + 80) setDetents:*(a1 + 40)];
  v13 = *(a1 + 64);
  *&v13 = v13;
  result = [*(*(a1 + 32) + 80) setValue:0 animated:v13];
  if (*(a1 + 72) == 1)
  {
    v15 = *(a1 + 32);

    return [v15 p_updateViewPosition];
  }

  return result;
}

void sub_1002716BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100271700(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100271744(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100271788(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100271A4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100271A90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100271C2C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_100271FB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100271FF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100272A4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100272A90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100272AD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100272B18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100272B5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100272BA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100272FF8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

CRLPathKnob *sub_1002759A0(uint64_t a1, uint64_t a2)
{
  v4 = [[CRLPathKnob alloc] initWithInControlForNode:*(a1 + 32) onRep:*(a1 + 40)];
  [(CRLPathKnob *)v4 setNextNode:*(a1 + 48)];
  [(CRLPathKnob *)v4 setPrevNode:*(a1 + 56)];
  [(CRLCanvasKnob *)v4 setTag:a2];
  [(CRLPathKnob *)v4 setNodeIndex:*(a1 + 72)];
  [(CRLPathKnob *)v4 setSubpathIndex:*(a1 + 80)];
  v5 = [(CRLCanvasKnob *)v4 renderable];
  [v5 setOpacity:0.0];

  [*(a1 + 64) addObject:v4];

  return v4;
}

void sub_100275F40(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  [v2 selectAllNodes];
}

void sub_10027601C(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  [v2 deselectAllNodes];
}

void sub_100276658(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027669C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100276B0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100276B50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100277360(id a1, CRLPathEditableRep *a2)
{
  v3 = [(CRLPathEditableRep *)a2 editablePathSource];
  v2 = [v3 firstNode];
  if ([v2 type] == 3)
  {
    [v2 setType:1];
  }

  [v3 closePath];
}

void sub_100277E18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100277E5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100278004(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100278048(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002783F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100278434(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100278478(uint64_t a1, void *a2)
{
  v3 = [a2 editablePathSource];
  [v3 toggleSelectedNodesToType:*(a1 + 32)];
}

BOOL sub_1002784CC(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_1002785B4(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  [v2 cutAtSelectedNodes];
}

BOOL sub_1002785F8(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_1002786C8(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  [v2 connectSelectedNodes];
}

BOOL sub_10027870C(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_1002787DC(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  [v2 closeSelectedNodes];
}

BOOL sub_100278820(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_100278CBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100278D00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100278E34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 editablePathSource];
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v5 = [v3 layout];
  v6 = v5;
  if (v5)
  {
    [v5 transformInRoot];
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
  }

  *&v54.a = v56;
  *&v54.c = v57;
  *&v54.tx = v58;
  memset(&v55, 0, sizeof(v55));
  CGAffineTransformInvert(&v55, &v54);
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v11 = +[NSMutableArray array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = [v4 nodes];
  v13 = [v12 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v51;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        if ([v17 isSelected])
        {
          [v17 nodePoint];
          x = sub_100120604(x, y, width, height, vaddq_f64(v58, vmlaq_n_f64(vmulq_n_f64(v57, v18), v56, v19)).f64[0]);
          y = v20;
          width = v21;
          height = v22;
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v14);
  }

  v23 = *(a1 + 32);
  v40 = sub_10011EC1C(v23, x, y, width, height);
  if (v23 > 2)
  {
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v32 = v11;
    v33 = [v32 countByEnumeratingWithState:&v42 objects:v59 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v43;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v42 + 1) + 8 * j);
          [v37 nodePoint];
          [v37 setNodePoint:{vaddq_f64(*&v55.tx, vmlaq_n_f64(vmulq_n_f64(*&v55.c, *&v40), *&v55.a, v58.f64[0] + v38 * v57.f64[0] + v56.f64[0] * v39))}];
        }

        v34 = [v32 countByEnumeratingWithState:&v42 objects:v59 count:16];
      }

      while (v34);
    }
  }

  else
  {
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v24 = v11;
    v25 = [v24 countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v47;
      v41 = vdupq_lane_s64(v40, 0);
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v47 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v46 + 1) + 8 * k);
          [v29 nodePoint];
          [v29 setNodePoint:{vaddq_f64(*&v55.tx, vmlaq_f64(vmulq_n_f64(*&v55.c, v58.f64[1] + v30 * v57.f64[1] + v56.f64[1] * v31), v41, *&v55.a))}];
        }

        v26 = [v24 countByEnumeratingWithState:&v46 objects:v60 count:16];
      }

      while (v26);
    }
  }
}

BOOL sub_100279208(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_100279334(uint64_t a1, void *a2)
{
  v3 = [a2 editablePathSource];
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v8 = +[NSMutableArray array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = [v3 nodes];
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        if ([v14 isSelected])
        {
          [v14 nodePoint];
          x = sub_100120604(x, y, width, height, v15);
          y = v16;
          width = v17;
          height = v18;
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v11);
  }

  v19 = *(a1 + 32);
  if (v19 == 4)
  {
    [v8 sortUsingComparator:&stru_10184E580];
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    MinY = CGRectGetMinY(v57);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v31 = CGRectGetHeight(v58);
    v32 = [v8 count];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = v8;
    v34 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = v31 / v32;
      v37 = *v41;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v41 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v40 + 1) + 8 * j);
          [v39 nodePoint];
          [v39 setNodePoint:?];
          MinY = v36 + MinY;
        }

        v35 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v35);
    }

    goto LABEL_27;
  }

  if (v19 == 1)
  {
    [v8 sortUsingComparator:&stru_10184E560];
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    MinX = CGRectGetMinX(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v21 = CGRectGetWidth(v56);
    v22 = [v8 count];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v23 = v8;
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = v21 / v22;
      v27 = *v45;
      do
      {
        for (k = 0; k != v25; k = k + 1)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v44 + 1) + 8 * k);
          [v29 nodePoint];
          [v29 setNodePoint:MinX];
          MinX = v26 + MinX;
        }

        v25 = [v23 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v25);
    }

LABEL_27:
  }
}

int64_t sub_1002796C8(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 nodePoint];
  v6 = v5;
  [v4 nodePoint];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

int64_t sub_100279720(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 nodePoint];
  v6 = v5;
  [v4 nodePoint];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

BOOL sub_100279778(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_100279BDC(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  [v2 deleteSelectedNodes];
}

BOOL sub_100279C20(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 deletingSelectedNodesWillDeleteShape];

  return v3 ^ 1;
}

void sub_100279C5C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 32) != v5)
  {
    v8 = v5;
    v7 = [v5 canPerformEditorAction:"delete:" withSender:*(a1 + 40)];
    v6 = v8;
    if (v7)
    {
      [v8 performSelector:"delete:" withObject:*(a1 + 40)];
      v6 = v8;
      *a3 = 1;
    }
  }
}

void sub_100279CF4(uint64_t a1, void *a2)
{
  v4 = [a2 editablePathSource];
  v3 = [v4 lastNode];
  [v3 setSelected:1];

  [v4 deleteSelectedNodesForced:0];
  [*(a1 + 32) updateGhost];
}

void sub_100279E70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 layout];
  v5 = v4;
  if (v4)
  {
    [v4 transformInRoot];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformInvert(&v11, &v10);
  v6 = sub_10012119C(&v11, *(a1 + 32), *(a1 + 40));
  v8 = v7;

  v9 = [v3 editablePathSource];

  [v9 offsetSelectedNodesByDelta:{v6, v8}];
}

BOOL sub_100279F28(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_10027AB20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027AB64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027B0B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027B0F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027B1BC(id a1)
{
  v1 = objc_alloc_init(CRLMoviePlaybackRegistry);
  v2 = qword_101A34940;
  qword_101A34940 = v1;
}

void sub_10027B764(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027B7A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027B7EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027B830(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027B874(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_10027B8B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027B8FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027BFD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C014(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C058(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C09C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C0E0(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_10027C124(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C168(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C1AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C1F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C234(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027C278(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_10027C30C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return a3 + a4 < a1 + a2;
  }

  else
  {
    return a1 < a3;
  }
}

void sub_10027C32C(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = (v3 - v2) >> 4;
  if (v5 < 2)
  {
    return;
  }

  v25 = sub_10027C30C;
  v6 = 126 - 2 * __clz(v5);
  if (v3 == v2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_10027C4A0(v2, v3, &v25, v7, 1);
  v9 = *a1;
  v8 = a1[1];
  v10 = (v8 - *a1) >> 4;
  if (v10 >= 2)
  {
    v11 = 0;
    v12 = *v9;
    v13 = 1;
    while (1)
    {
      if (v10 <= v13 + 1)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v10;
      }

      v15 = &v9[2 * v13 + 1];
      v16 = ~v13;
      v17 = v14 - v13;
      while (1)
      {
        v18 = *(v15 - 1);
        if (v12 != v18)
        {
          break;
        }

        v15 += 2;
        --v16;
        if (!--v17)
        {
          goto LABEL_21;
        }
      }

      v19 = &v9[2 * v11];
      v20 = *v15;
      v21 = v19[1] + *v19;
      if (v21 >= v18)
      {
        v22 = v20 + v18;
        if (v21 >= v22)
        {
          goto LABEL_19;
        }

        v20 = v22 - *v19;
      }

      else
      {
        ++v11;
        v19 = &v9[2 * v11];
        *v19 = v18;
      }

      v19[1] = v20;
LABEL_19:
      v13 = -v16;
      if (-v16 < v10)
      {
        v12 = v18;
        if (v11 < v10)
        {
          continue;
        }
      }

LABEL_21:
      if (v11 < v10)
      {
        v23 = 2 * v11;
LABEL_25:
        v24 = &v9[v23 + 2];
        if (v24 != v8)
        {
          a1[1] = v24;
        }
      }

      return;
    }
  }

  if (v8 != v9)
  {
    v23 = 0;
    goto LABEL_25;
  }
}

void sub_10027C4A0(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v53 = a2 - 4;
  v54 = a2 - 2;
  v52 = a2 - 6;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v47 = *(a2 - 2);
        v48 = *(a2 - 1);
        v49 = a2 - 2;
        if ((*a3)(v47, v48, *v9, v9[1]))
        {
          v73 = *v9;
          *v9 = *v49;
          *v49 = v73;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      sub_10027CCD0(v9, v9 + 2, v9 + 4, v54, a3);
      return;
    }

    if (v12 == 5)
    {

      sub_10027CE30(v9, v9 + 2, v9 + 4, v9 + 6, v54, a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_10027CF14(v9, a2, a3);
      }

      else
      {

        sub_10027CFEC(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_10027D618(v9, a2, a2, a3);
      }

      return;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(*v13, v13[1], *v9, v9[1]);
      v16 = (*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]);
      if (v15)
      {
        if (v16)
        {
          v55 = *v9;
          v17 = a2 - 2;
          *v9 = *v54;
          goto LABEL_28;
        }

        v61 = *v9;
        *v9 = *v13;
        *v13 = v61;
        if ((*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]))
        {
          v55 = *v13;
          v17 = a2 - 2;
          *v13 = *v54;
LABEL_28:
          *v17 = v55;
        }
      }

      else if (v16)
      {
        v57 = *v13;
        *v13 = *v54;
        *v54 = v57;
        if ((*a3)(*v13, v13[1], *v9, v9[1]))
        {
          v58 = *v9;
          *v9 = *v13;
          *v13 = v58;
        }
      }

      v21 = (v9 + 2);
      v22 = v13 - 2;
      v23 = (*a3)(*(v13 - 2), *(v13 - 1), a1[2], a1[3]);
      v24 = (*a3)(*(a2 - 4), *(a2 - 3), *(v13 - 2), *(v13 - 1));
      if (v23)
      {
        if (v24)
        {
          v25 = *v21;
          v26 = a2 - 4;
          *v21 = *v53;
          goto LABEL_42;
        }

        v28 = *v21;
        *v21 = *v22;
        *v22 = v28;
        if ((*a3)(*(a2 - 4), *(a2 - 3), *v22, *(v13 - 1)))
        {
          v64 = *v22;
          v26 = a2 - 4;
          *v22 = *v53;
          v25 = v64;
LABEL_42:
          *v26 = v25;
        }
      }

      else if (v24)
      {
        v62 = *v22;
        *v22 = *v53;
        *v53 = v62;
        if ((*a3)(*v22, *(v13 - 1), a1[2], a1[3]))
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
        }
      }

      v29 = (a1 + 4);
      v30 = v13 + 2;
      v31 = (*a3)(v13[2], v13[3], a1[4], a1[5]);
      v32 = (*a3)(*(a2 - 6), *(a2 - 5), v13[2], v13[3]);
      if (v31)
      {
        if (v32)
        {
          v33 = *v29;
          v34 = a2 - 6;
          *v29 = *v52;
          goto LABEL_51;
        }

        v36 = *v29;
        *v29 = *v30;
        *v30 = v36;
        if ((*a3)(*(a2 - 6), *(a2 - 5), *v30, v13[3]))
        {
          v66 = *v30;
          v34 = a2 - 6;
          *v30 = *v52;
          v33 = v66;
LABEL_51:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v65 = *v30;
        *v30 = *v52;
        *v52 = v65;
        if ((*a3)(*v30, v13[3], a1[4], a1[5]))
        {
          v35 = *v29;
          *v29 = *v30;
          *v30 = v35;
        }
      }

      v37 = (*a3)(*v13, v13[1], *v22, *(v13 - 1));
      v38 = (*a3)(*v30, v13[3], *v13, v13[1]);
      if (v37)
      {
        if (v38)
        {
          v67 = *v22;
          *v22 = *v30;
          goto LABEL_60;
        }

        v70 = *v22;
        *v22 = *v13;
        *v13 = v70;
        if ((*a3)(*v30, v13[3], *v13, v13[1]))
        {
          v67 = *v13;
          *v13 = *v30;
LABEL_60:
          *v30 = v67;
        }
      }

      else if (v38)
      {
        v68 = *v13;
        *v13 = *v30;
        *v30 = v68;
        if ((*a3)(*v13, v13[1], *v22, *(v13 - 1)))
        {
          v69 = *v22;
          *v22 = *v13;
          *v13 = v69;
        }
      }

      v71 = *a1;
      *a1 = *v13;
      *v13 = v71;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v18 = v14(*v9, v9[1], *v13, v13[1]);
    v19 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]);
    if (v18)
    {
      if (v19)
      {
        v56 = *v13;
        v20 = a2 - 2;
        *v13 = *v54;
        goto LABEL_37;
      }

      v63 = *v13;
      *v13 = *v9;
      *v9 = v63;
      if ((*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]))
      {
        v56 = *v9;
        v20 = a2 - 2;
        *v9 = *v54;
LABEL_37:
        *v20 = v56;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v19)
    {
      goto LABEL_38;
    }

    v59 = *v9;
    *v9 = *v54;
    *v54 = v59;
    if (!(*a3)(*v9, v9[1], *v13, v13[1]))
    {
      goto LABEL_38;
    }

    v60 = *v13;
    *v13 = *v9;
    *v9 = v60;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (((*a3)(*(a1 - 2), *(a1 - 1), *a1, a1[1]) & 1) == 0)
    {
      v9 = sub_10027D09C(a1, a2, a3);
      goto LABEL_68;
    }

LABEL_63:
    v39 = sub_10027D1D4(a1, a2, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = sub_10027D308(a1, v39, a3);
    v9 = v39 + 2;
    if (sub_10027D308(v39 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v39;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v41)
    {
LABEL_66:
      sub_10027C4A0(a1, v39, a3, -v11, a5 & 1);
      v9 = v39 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v42 = v9 + 2;
  v43 = (*a3)(v9[2], v9[3], *v9, v9[1]);
  v44 = a2 - 2;
  v45 = (*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]);
  if (v43)
  {
    if (v45)
    {
      v72 = *v9;
      *v9 = *v44;
      v46 = v72;
    }

    else
    {
      v75 = *v9;
      *v9 = *v42;
      *v42 = v75;
      if (!(*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]))
      {
        return;
      }

      v46 = *v42;
      *v42 = *v44;
    }

    *v44 = v46;
  }

  else if (v45)
  {
    v51 = *v42;
    *v42 = *v44;
    *v44 = v51;
    if ((*a3)(v9[2], v9[3], *v9, v9[1]))
    {
      v74 = *v9;
      *v9 = *v42;
      *v42 = v74;
    }
  }
}

__n128 sub_10027CCD0(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void, void, void))
{
  v10 = (*a5)(*a2, a2[1], *a1, a1[1]);
  v11 = (*a5)(*a3, a3[1], *a2, a2[1]);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, a2[1], *a1, a1[1]))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, a4[1], *a3, a3[1]))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, a2[1], *a1, a1[1]))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 sub_10027CE30(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (**a6)(void, void, void, void))
{
  v12 = sub_10027CCD0(a1, a2, a3, a4, a6);
  if ((*a6)(*a5, a5[1], *a4, a4[1], v12))
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if ((*a6)(*a4, a4[1], *a3, a3[1]))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if ((*a6)(*a3, a3[1], *a2, a2[1]))
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if ((*a6)(*a2, a2[1], *a1, a1[1]))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10027CF14(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v8[2], v8[3], *v8, v8[1]);
        if (result)
        {
          v10 = *v9;
          v11 = v8[3];
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v10, v11, *(v4 + v12 - 16), *(v4 + v12 - 8));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v10;
          v13[1] = v11;
        }

        v5 = v9 + 2;
        v7 += 16;
        v8 = v9;
      }

      while (v9 + 2 != a2);
    }
  }

  return result;
}

uint64_t sub_10027CFEC(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v4[2], v4[3], *v4, v4[1]);
        if (result)
        {
          v8 = *v7;
          v9 = v4[3];
          v10 = v7;
          do
          {
            v11 = v10 - 1;
            *v10 = *(v10 - 1);
            result = (*a3)(v8, v9, *(v10 - 4), *(v10 - 3));
            v10 = v11;
          }

          while ((result & 1) != 0);
          *v11 = v8;
          v11[1] = v9;
        }

        v5 = v7 + 2;
        v4 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

void *sub_10027D09C(void *a1, _OWORD *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  v7 = a1[1];
  if ((*a3)(*a1, v7, *(a2 - 2), *(a2 - 1)))
  {
    v8 = a1;
    do
    {
      v9 = v8[2];
      v10 = v8[3];
      v8 += 2;
    }

    while (((*a3)(v6, v7, v9, v10) & 1) == 0);
  }

  else
  {
    v11 = a1 + 2;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = (*a3)(v6, v7, *v11, v11[1]);
      v11 = v8 + 2;
    }

    while (!v12);
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *(v4 - 2);
      v14 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v13, v14) & 1) != 0);
  }

  while (v8 < v4)
  {
    v20 = *v8;
    *v8 = *v4;
    *v4 = v20;
    do
    {
      v15 = v8[2];
      v16 = v8[3];
      v8 += 2;
    }

    while (!(*a3)(v6, v7, v15, v16));
    do
    {
      v17 = *(v4 - 2);
      v18 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v17, v18) & 1) != 0);
  }

  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 2) = v6;
  *(v8 - 1) = v7;
  return v8;
}

uint64_t *sub_10027D1D4(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  v8 = a1[1];
  do
  {
    v9 = (*a3)(a1[v6 + 2], a1[v6 + 3], v7, v8);
    v6 += 2;
  }

  while ((v9 & 1) != 0);
  v10 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *(a2 - 2);
      v14 = *(a2 - 1);
      a2 -= 2;
    }

    while (((*a3)(v13, v14, v7, v8) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2 - 2);
      v12 = *(a2 - 1);
      a2 -= 2;
    }

    while (!(*a3)(v11, v12, v7, v8));
  }

  v15 = &a1[v6];
  if (v10 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[2];
        v19 = v15[3];
        v15 += 2;
      }

      while (((*a3)(v18, v19, v7, v8) & 1) != 0);
      do
      {
        v20 = *(v16 - 2);
        v21 = *(v16 - 1);
        v16 -= 2;
      }

      while (!(*a3)(v20, v21, v7, v8));
    }

    while (v15 < v16);
  }

  result = v15 - 2;
  if (v15 - 2 != a1)
  {
    *a1 = *result;
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v8;
  return result;
}

BOOL sub_10027D308(void *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 2;
        v10 = (*a3)(a1[2], a1[3], *a1, a1[1]);
        v11 = a2 - 16;
        v12 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, a1[3]);
        if ((v10 & 1) == 0)
        {
          if (v12)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
            if ((*a3)(a1[2], a1[3], *a1, a1[1]))
            {
              v20 = *a1;
              *a1 = *v9;
              *v9 = v20;
            }
          }

          return 1;
        }

        if (v12)
        {
          v13 = *a1;
          *a1 = *v11;
        }

        else
        {
          v23 = *a1;
          *a1 = *v9;
          *v9 = v23;
          if (!(*a3)(*(a2 - 2), *(a2 - 1), a1[2], a1[3]))
          {
            return 1;
          }

          v13 = *v9;
          *v9 = *v11;
        }

        *v11 = v13;
        return 1;
      case 4:
        sub_10027CCD0(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        break;
      case 5:
        sub_10027CE30(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 16;
    if ((*a3)(*(a2 - 2), *(a2 - 1), *a1, a1[1]))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v15 = (*a3)(a1[2], a1[3], *a1, a1[1]);
  v16 = (a1 + 4);
  v17 = (*a3)(a1[4], a1[5], *v14, a1[3]);
  if (v15)
  {
    if (v17)
    {
      v18 = *a1;
      *a1 = *v16;
    }

    else
    {
      v24 = *a1;
      *a1 = *v14;
      *v14 = v24;
      if (!(*a3)(a1[4], a1[5], a1[2], a1[3]))
      {
        goto LABEL_29;
      }

      v18 = *v14;
      *v14 = *v16;
    }

    *v16 = v18;
  }

  else if (v17)
  {
    v21 = *v14;
    *v14 = *v16;
    *v16 = v21;
    if ((*a3)(a1[2], a1[3], *a1, a1[1]))
    {
      v22 = *a1;
      *a1 = *v14;
      *v14 = v22;
    }
  }

LABEL_29:
  v25 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((*a3)(*v25, *(v25 + 1), *v16, *(v16 + 1)))
    {
      v28 = *v25;
      v29 = *(v25 + 1);
      v30 = v26;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v30 -= 16;
        if (((*a3)(v28, v29, *(v31 + 2), *(v31 + 3)) & 1) == 0)
        {
          v32 = (a1 + v30 + 48);
          goto LABEL_37;
        }
      }

      v32 = a1;
LABEL_37:
      *v32 = v28;
      v32[1] = v29;
      if (++v27 == 8)
      {
        return v25 + 16 == a2;
      }
    }

    v16 = v25;
    v26 += 16;
    v25 += 16;
    if (v25 == a2)
    {
      return 1;
    }
  }
}

char *sub_10027D618(char *a1, char *a2, char *a3, uint64_t (**a4)(void, void, uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        sub_10027D778(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *(v12 + 1), *a1, *(a1 + 1)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_10027D778(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v18 = *a1;
        v15 = sub_10027D8BC(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          sub_10027D96C(a1, (v15 + 16), a4, (v15 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_10027D778(uint64_t result, unsigned int (**a2)(void, void, void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v17 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(*v11, v11[1], v11[2], v11[3]))
      {
        v11 += 2;
        v10 = v12;
      }

      result = (*a2)(*v11, v11[1], *v5, v5[1]);
      if ((result & 1) == 0)
      {
        v13 = *v5;
        v14 = v5[1];
        do
        {
          v15 = v11;
          *v5 = *v11;
          if (v17 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = (v6 + 16 * v16);
          if (2 * v10 + 2 < a3)
          {
            if ((*a2)(*v11, v11[1], v11[2], v11[3]))
            {
              v11 += 2;
              v16 = 2 * v10 + 2;
            }
          }

          result = (*a2)(*v11, v11[1], v13, v14);
          v5 = v15;
          v10 = v16;
        }

        while (!result);
        *v15 = v13;
        v15[1] = v14;
      }
    }
  }

  return result;
}

_OWORD *sub_10027D8BC(_OWORD *a1, unsigned int (**a2)(void, void, uint64_t, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 4);
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 2), *(v12 - 1), v13, *(v12 + 1)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_10027D96C(uint64_t result, uint64_t a2, uint64_t (**a3)(void, void, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 16 * (v4 >> 1));
    v10 = (a2 - 16);
    result = (*a3)(*v9, v9[1], *(a2 - 16), *(a2 - 8));
    if (result)
    {
      v11 = *(a2 - 16);
      v12 = *(a2 - 8);
      do
      {
        v13 = v9;
        *v10 = *v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 16 * v8);
        result = (*a3)(*v9, v9[1], v11, v12);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v11;
      v13[1] = v12;
    }
  }

  return result;
}

id sub_10027DA8C(__int16 a1)
{
  v6 = a1;
  v1 = [[NSString alloc] initWithCharacters:&v6 length:1];
  v2 = [v1 stringByApplyingTransform:NSStringTransformFullwidthToHalfwidth reverse:1];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = [v3 characterAtIndex:0];

  return v4;
}

uint64_t sub_10027DB34(UChar32 a1)
{
  Code = ublock_getCode(a1);
  result = 0;
  if (Code > UBLOCK_BOPOMOFO)
  {
    if (Code <= UBLOCK_BALINESE)
    {
      v3 = (Code - 70);
      if (v3 > 0x25)
      {
        goto LABEL_30;
      }

      if (((1 << (Code - 70)) & 0x3000203) != 0)
      {
        return 6;
      }

      if (v3 != 4)
      {
        if (v3 == 37)
        {
          return 4;
        }

LABEL_30:
        if (Code != UBLOCK_HANGUL_COMPATIBILITY_JAMO)
        {
          if (Code != UBLOCK_BOPOMOFO_EXTENDED)
          {
            return result;
          }

          return 5;
        }
      }

      return 10;
    }

    if ((Code - 148) >= 2)
    {
      if (Code == UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C || Code == UBLOCK_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D)
      {
        return 6;
      }

      return result;
    }

    return 2;
  }

  if (Code <= UBLOCK_HEBREW)
  {
    if ((Code - 1) >= 4)
    {
      if (Code == UBLOCK_HEBREW)
      {
        v4 = 8;
      }

      else
      {
        v4 = 0;
      }

      if (Code == UBLOCK_CYRILLIC)
      {
        return 9;
      }

      else
      {
        return v4;
      }
    }

    return 2;
  }

  if (Code > UBLOCK_CJK_SYMBOLS_AND_PUNCTUATION)
  {
    if (Code != UBLOCK_HIRAGANA)
    {
      if (Code == UBLOCK_KATAKANA)
      {
        return 4;
      }

      return 5;
    }

    return 3;
  }

  else
  {
    switch(Code)
    {
      case UBLOCK_ARABIC:
        return 7;
      case UBLOCK_HANGUL_JAMO:
        return 10;
      case UBLOCK_LATIN_EXTENDED_ADDITIONAL:
        return 2;
    }
  }

  return result;
}

CFTypeRef sub_10027DC6C(void *a1, double a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = +[CRLWPFontList sharedInstance];
    v5 = [v4 fontForPostscriptName:v3 atSize:a2];
    v6 = CFRetain([v5 ctFont]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

const __CTFont *sub_10027DD1C(const __CTFont *a1)
{
  v1 = a1;
  v2 = CTFontCopyFontDescriptor(a1);
  if (!v2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340DC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101340DD4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101340E70();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v17 = [NSString stringWithUTF8String:"CTFontRef CRLWPGetVerticalVersionOfFont(CTFontRef)"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:597 isFatal:0 description:"invalid nil value for '%{public}s'", "fd"];

    goto LABEL_23;
  }

  v3 = v2;
  v4 = CTFontDescriptorCopyAttribute(v2, kCTFontOrientationAttribute);
  if (v4 && (v5 = v4, v6 = [v4 intValue], CFRelease(v5), v6 == 2) || (v7 = CTFontCopyAvailableTables(v1, 0)) == 0)
  {
    CFRelease(v3);
LABEL_23:
    v19 = CFRetain(v1);
    CFAutorelease(v19);
    return v1;
  }

  v8 = v7;
  v23.length = CFArrayGetCount(v7);
  v23.location = 0;
  v9 = v1;
  if (CFArrayGetFirstIndexOfValue(v8, v23, 0x766D7478) != -1)
  {
    v21 = kCTFontOrientationAttribute;
    v22 = &off_1018E21C0;
    v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = CTFontDescriptorCreateWithAttributes(v10);

    v9 = v1;
    if (v11)
    {
      Size = CTFontGetSize(v1);
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v1, Size, 0, v11);
      v14 = CopyWithAttributes;
      v9 = v1;
      if (CopyWithAttributes)
      {
        CFAutorelease(CopyWithAttributes);
        v9 = v14;
      }

      CFRelease(v11);
    }
  }

  CFRelease(v8);
  CFRelease(v3);
  v15 = v9 == v1;
  v1 = v9;
  if (v15)
  {
    goto LABEL_23;
  }

  return v9;
}

void sub_10027DFEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027E030(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CGFloat sub_10027E074(const __CTFont *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = CTFontGetAscent(a1) + 0.0;
  v3 = v2 + CTFontGetDescent(a1);
  return v3 + CTFontGetLeading(a1);
}

id sub_10027E0D0()
{
  if (qword_101A34968 != -1)
  {
    sub_101340E98();
  }

  v1 = qword_101A34960;

  return v1;
}

void sub_10027E114(id a1)
{
  v3 = objc_alloc_init(NSMutableCharacterSet);
  [v3 addCharactersInRange:{10, 1}];
  [v3 addCharactersInRange:{13, 1}];
  [v3 addCharactersInRange:{8233, 1}];
  [v3 addCharactersInRange:{11, 1}];
  [v3 addCharactersInRange:{5, 1}];
  [v3 addCharactersInRange:{12, 1}];
  [v3 addCharactersInRange:{6, 1}];
  [v3 addCharactersInRange:{15, 1}];
  [v3 addCharactersInRange:{4, 1}];
  v1 = [v3 copy];
  v2 = qword_101A34960;
  qword_101A34960 = v1;
}

id sub_10027E214()
{
  if (qword_101A34978 != -1)
  {
    sub_101340EAC();
  }

  v1 = qword_101A34970;

  return v1;
}

void sub_10027E258(id a1)
{
  v1 = sub_10027E0D0();
  v4 = [v1 mutableCopy];

  [v4 addCharactersInRange:{8232, 1}];
  v2 = [v4 copy];
  v3 = qword_101A34970;
  qword_101A34970 = v2;
}

id sub_10027E2F0(uint64_t a1)
{
  v2 = sub_10027E0D0();
  v3 = [v2 longCharacterIsMember:a1];

  return v3;
}

id sub_10027E340(uint64_t a1)
{
  if (qword_101A34988 != -1)
  {
    sub_101340EC0();
  }

  v2 = qword_101A34980;

  return [v2 longCharacterIsMember:a1];
}

void sub_10027E394(id a1)
{
  v1 = +[NSCharacterSet whitespaceCharacterSet];
  v2 = qword_101A34980;
  qword_101A34980 = v1;
}

uint64_t sub_10027E3D4(uint64_t a1)
{
  if (sub_10027E340(a1))
  {
    return 1;
  }

  LODWORD(result) = sub_10027E2F0(a1);
  if (a1 == 8232)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

id sub_10027E430(uint64_t a1)
{
  if (qword_101A34998 != -1)
  {
    sub_101340ED4();
  }

  v2 = qword_101A34990;

  return [v2 longCharacterIsMember:a1];
}

void sub_10027E484(id a1)
{
  v1 = +[NSCharacterSet crlwp_breakingSpaceCharacterSet];
  v2 = qword_101A34990;
  qword_101A34990 = v1;
}

uint64_t sub_10027E4C4(uint64_t a1)
{
  v2 = 1;
  if (a1 <= 8211)
  {
    if (!a1 || a1 == 14)
    {
      return v2;
    }
  }

  else if (a1 == 8212 || a1 == 8232 || a1 == 65532)
  {
    return v2;
  }

  v3 = sub_10027E2F0(a1);
  if (a1 != 8232 && (v3 & 1) == 0)
  {
    v4 = +[NSCharacterSet crlwp_spaceCharacterSet];
    v2 = [v4 longCharacterIsMember:a1];
  }

  return v2;
}

id sub_10027E580(uint64_t a1)
{
  if (qword_101A349A8 != -1)
  {
    sub_101340EE8();
  }

  v2 = qword_101A349A0;

  return [v2 longCharacterIsMember:a1];
}

void sub_10027E5D4(id a1)
{
  v4 = xmmword_101463D30;
  v5 = unk_101463D40;
  v6 = xmmword_101463D50;
  v7 = unk_101463D60;
  LODWORD(v8) = 10551138;
  v1 = [[NSString alloc] initWithCharacters:&v4 length:34];
  v2 = [NSCharacterSet characterSetWithCharactersInString:v1, v4, v5, v6, v7, v8];
  v3 = qword_101A349A0;
  qword_101A349A0 = v2;
}

id sub_10027E6A4(uint64_t a1)
{
  if (qword_101A349B8 != -1)
  {
    sub_101340EFC();
  }

  v2 = qword_101A349B0;

  return [v2 longCharacterIsMember:a1];
}

void sub_10027E6F8(id a1)
{
  memcpy(__dst, &unk_101463D74, sizeof(__dst));
  v1 = [[NSString alloc] initWithCharacters:__dst length:129];
  v2 = [NSMutableCharacterSet characterSetWithCharactersInString:v1];
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = [v2 copy];
  v5 = qword_101A349B0;
  qword_101A349B0 = v4;
}

void sub_10027E7DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10027E810(uint64_t a1)
{
  if (qword_101A349C8 != -1)
  {
    sub_101340F10();
  }

  v2 = qword_101A349C0;

  return [v2 longCharacterIsMember:a1];
}

void sub_10027E864(id a1)
{
  memcpy(__dst, &unk_101463E76, sizeof(__dst));
  v1 = [[NSString alloc] initWithCharacters:__dst length:767];
  v2 = [NSCharacterSet characterSetWithCharactersInString:v1];
  v3 = qword_101A349C0;
  qword_101A349C0 = v2;
}

uint64_t sub_10027E92C(uint64_t a1, uint64_t a2)
{
  if (a1 > 12338)
  {
    if ((a1 - 12339) >= 2)
    {
      v6 = 65073;
      if (a1 != 65073)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 12341;
    }

    v7 = a2 == v6;
    return !v7;
  }

  if ((a1 - 8208) <= 0x16)
  {
    v4 = 1 << (a1 - 16);
    if ((v4 & 0x3D) != 0)
    {
      goto LABEL_4;
    }

    if ((v4 & 0x600000) != 0)
    {
      v7 = a2 == a1;
      return !v7;
    }
  }

  if (a1 != 45)
  {
    if (a1 == 47)
    {
      v7 = a2 == 47;
      return !v7;
    }

LABEL_20:
    if (sub_10027E3D4(a1) && (sub_10027E3D4(a2) & 1) != 0)
    {
      return 0;
    }

    if (sub_10027E810(a1))
    {
      return sub_10027E810(a2) ^ 1;
    }

    else
    {
      return 1;
    }
  }

LABEL_4:
  if ((a2 - 8208) <= 5 && a2 != 8209)
  {
    return 0;
  }

  return a2 != 45;
}

double sub_10027EA40(int a1)
{
  result = 0.0;
  if (a1 > 10628)
  {
    if (((a1 - 12289) > 0x1E || ((1 << (a1 - 1)) & 0x51F9FF81) == 0) && (a1 - 10629) >= 2)
    {
      if (a1 != 12539)
      {
        return result;
      }

      return 0.5;
    }

    return 0.25;
  }

  if (a1 > 122)
  {
    if ((a1 - 8216) <= 5 && ((1 << (a1 - 24)) & 0x33) != 0 || (a1 - 125) <= 0x3E && ((1 << (a1 - 125)) & 0x4000400000000001) != 0 || a1 == 123)
    {
      return 0.25;
    }
  }

  else
  {
    v2 = a1 - 32;
    if ((a1 - 32) > 0x3D)
    {
      return result;
    }

    if (((1 << v2) & 0x2800000000001300) != 0)
    {
      return 0.25;
    }

    if (((1 << v2) & 0xC000000) != 0)
    {
      return 0.5;
    }

    if (a1 == 32)
    {
      return 0.0833333333;
    }
  }

  return result;
}

unint64_t sub_10027EB4C(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340F24();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101340F38();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101340FD4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v6 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPPreviousCharIndexFromTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1318 isFatal:0 description:"invalid nil value for '%{public}s'", "source"];
  }

  if ([v3 charIndexMappedToStorage:v4] >= a1)
  {
    if (!v3)
    {
      a1 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_23;
    }

    v12 = [v3 charIndexMappedFromStorage:a1];
    v13 = v12;
    if (v12)
    {
      if (v12 < 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [v3 string];
        for (i = a1; i == a1 && v13; i = [v3 charIndexMappedToStorage:v13])
        {
          v15 = [v9 rangeOfComposedCharacterSequenceAtIndex:--v13];
          if (v13 >= v15)
          {
            v13 = v15;
          }
        }

        a1 = i;
        goto LABEL_22;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101340FFC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101341024();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013410B4();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v9 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPPreviousCharIndexFromTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1326 isFatal:0 description:"charIndex should be < NSNotFound"];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013410DC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101341104();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101341194();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v9 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPPreviousCharIndexFromTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1325 isFatal:0 description:"charIndex should not be at the start of the text source"];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013411BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013411E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101341274();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v9 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPPreviousCharIndexFromTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1321 isFatal:0 description:"charIndex should be <= end of storage"];
    a1 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_22:
LABEL_23:

  return a1;
}

void sub_10027F13C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F1C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F208(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F24C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F290(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F2D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F318(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10027F35C(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134129C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013412B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134134C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v6 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPNextCharIndexFromTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1347 isFatal:0 description:"invalid nil value for '%{public}s'", "source"];
  }

  if ([v3 charIndexMappedToStorage:v4] < a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101341454();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134147C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134150C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v9 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPNextCharIndexFromTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1350 isFatal:0 description:"charIndex should be <= end of storage"];

    i = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_21;
  }

  if (!v3)
  {
    i = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_43;
  }

  v12 = [v3 charIndexMappedFromStorage:a1];
  v13 = v12;
  if (v12 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101341374();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134139C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134142C();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v17 = [NSString stringWithUTF8String:"CRLWPCharIndex CRLWPNextCharIndexFromTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1353 isFatal:0 description:"charIndex should be < NSNotFound"];

    goto LABEL_42;
  }

  if (v12 >= v4 - 1)
  {
LABEL_42:
    i = [v3 charIndexMappedToStorage:v13 + 1];
    goto LABEL_43;
  }

  v9 = [v3 string];
  for (i = a1; i == a1 && v13 < v4; i = [v3 charIndexMappedToStorage:v13])
  {
    v14 = [v9 rangeOfComposedCharacterSequenceAtIndex:v13];
    if (&v14[v15] <= v13 + 1)
    {
      ++v13;
    }

    else
    {
      v13 = &v14[v15];
    }
  }

LABEL_21:

LABEL_43:
  return i;
}

void sub_10027F84C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F8D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F918(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F95C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10027F9A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

unint64_t sub_10027F9E8(unint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101341534();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101341548();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013415E4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v5 = [NSString stringWithUTF8String:"UTF32Char CRLWPComposedCharacterAtIndexForTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1404 isFatal:0 description:"invalid nil value for '%{public}s'", "source"];
  }

  v7 = [v3 length];
  if (v7 <= a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134160C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101341634();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013416C4();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v13 = [NSString stringWithUTF8String:"UTF32Char CRLWPComposedCharacterAtIndexForTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1406 isFatal:0 description:"index out of bounds"];

    v8 = 0;
  }

  else
  {
    v8 = [v3 characterAtIndex:a1];
    if ((v8 & 0xFC00) == 0xDC00)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134173C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101341764();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013417F4();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v10 = [NSString stringWithUTF8String:"UTF32Char CRLWPComposedCharacterAtIndexForTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1410 isFatal:0 description:"index inside surrogate pair"];
    }

    else if (a1 + 1 < v7 && (v8 & 0xFC00) == 0xD800)
    {
      v16 = [v3 characterAtIndex:?];
      v17 = v16;
      if (v16 >> 10 == 55)
      {
        v8 = (v16 + (v8 << 10) - 56613888);
      }

      else
      {
        v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013416EC();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110402;
          v24 = v18;
          v25 = 2082;
          v26 = "UTF32Char CRLWPComposedCharacterAtIndexForTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)";
          v27 = 2082;
          v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm";
          v29 = 1024;
          v30 = 1414;
          v31 = 1024;
          v32 = v8;
          v33 = 1024;
          v34 = v17;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid surrogate pair: %x:%x", buf, 0x2Eu);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101341714();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_101335C2C();
        }

        v21 = [NSString stringWithUTF8String:"UTF32Char CRLWPComposedCharacterAtIndexForTextSource(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
        [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1414 isFatal:0 description:"invalid surrogate pair: %x:%x", v8, v17];
      }
    }
  }

  return v8;
}

void sub_10028002C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100280070(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002800B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002800F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028013C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100280180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002801C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100280208(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

unint64_t sub_10028024C(unint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134181C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101341830();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013418CC();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v5 = [NSString stringWithUTF8String:"UTF32Char CRLWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1426 isFatal:0 description:"invalid nil value for '%{public}s'", "str"];
  }

  v7 = [v3 length];
  if (v7 <= a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013418F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134191C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013419AC();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v13 = [NSString stringWithUTF8String:"UTF32Char CRLWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1428 isFatal:0 description:"index out of bounds"];

    v8 = 0;
  }

  else
  {
    v8 = [v3 characterAtIndex:a1];
    if ((v8 & 0xFC00) == 0xDC00)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101341A24();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101341A4C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101341ADC();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v10 = [NSString stringWithUTF8String:"UTF32Char CRLWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1432 isFatal:0 description:"index inside surrogate pair"];
    }

    else if (a1 + 1 < v7 && (v8 & 0xFC00) == 0xD800)
    {
      v16 = [v3 characterAtIndex:?];
      v17 = v16;
      if (v16 >> 10 == 55)
      {
        v8 = (v16 + (v8 << 10) - 56613888);
      }

      else
      {
        v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013419D4();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110402;
          v24 = v18;
          v25 = 2082;
          v26 = "UTF32Char CRLWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)";
          v27 = 2082;
          v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm";
          v29 = 1024;
          v30 = 1436;
          v31 = 1024;
          v32 = v8;
          v33 = 1024;
          v34 = v17;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid surrogate pair: %x:%x", buf, 0x2Eu);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013419FC();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_101335C2C();
        }

        v21 = [NSString stringWithUTF8String:"UTF32Char CRLWPComposedCharacterAtIndexForString(NSUInteger, NSString *__strong)"];
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
        [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1436 isFatal:0 description:"invalid surrogate pair: %x:%x", v8, v17];
      }
    }
  }

  return v8;
}

void sub_100280890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002808D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100280918(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028095C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002809A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002809E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100280A28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100280A6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

char *sub_100280AB0(char *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = &a1[a2];
  if (a1 == 0x7FFFFFFFFFFFFFFFLL && a2 == 0)
  {
    v14 = a1;
  }

  else
  {
    if (!v5)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101341B04();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101341B18();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101341BB4();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v10 = [NSString stringWithUTF8String:"NSRange CRLWPRangeByExtendingRangeToWhitespaceForTextSource(NSRange, __strong id<CRLWPTextSource>)"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1451 isFatal:0 description:"invalid nil value for '%{public}s'", "textSource"];
    }

    v12 = [v6 length];
    v13 = [v6 string];
    do
    {
      v14 = a1;
      if (!a1)
      {
        break;
      }

      --a1;
    }

    while ((sub_10027E3D4([v13 characterAtIndex:v14 - 1]) & 1) == 0);
    if (v7 < v12)
    {
      while ((sub_10027E3D4([v13 characterAtIndex:v7]) & 1) == 0)
      {
        if (++v7 >= v12)
        {
          v7 = v12;
          break;
        }
      }
    }
  }

  if (v14 < v7)
  {
    v7 = v14;
  }

  return v7;
}

void sub_100280D38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100280D7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100280DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101341BDC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101341BF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101341C80();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v6 = [NSString stringWithUTF8String:"BOOL CRLWPHasWideBreakingCharacter(CRLWPCharIndex, __strong id<CRLWPTextSource>)"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1472 isFatal:0 description:"bad charIndex"];

    v8 = 0;
  }

  else
  {
    v9 = [v3 characterAtIndex:a1];
    if (v9 >= 0xD)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x1030u >> v9;
    }
  }

  return v8 & 1;
}

void sub_100280F64(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100280FAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100280FF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100281034(UChar32 a1)
{
  v2 = u_charDirection(a1);
  if (v2 > U_BOUNDARY_NEUTRAL)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_101464658[v2];
  }

  if (a1 == 65532)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10028108C(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4)
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = [v3 crlwp_utf32CharacterAtIndex:v5];
      v8 = sub_100281034(v7);
      if (v8 == 1)
      {
        break;
      }

      if (v8 == 2 || a2 && v8 == 3 && u_charDirection(v7) == U_ARABIC_NUMBER)
      {
        goto LABEL_14;
      }

      if ((v7 & 0xFFFF0000) != 0)
      {
        v9 = v5 + 1;
      }

      else
      {
        v9 = v5;
      }

      v5 = v9 + 1;
      if (v9 + 1 >= v4)
      {
        goto LABEL_12;
      }
    }

    v6 = 0;
  }

  else
  {
LABEL_12:
    v6 = -1;
  }

LABEL_14:

  return v6;
}

id sub_100281158(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 firstObject];
  v5 = v4;
  if (v4 && [v4 wantsCustomResolveLogicForProperty:a2 forStyles:v3])
  {
    v6 = [v5 resolvedValueForProperty:a2 inStyles:v3];
  }

  else
  {
    for (i = 0; ; i = v8 + 1)
    {
      v8 = i;
      if ([v3 count] <= i)
      {
        v6 = 0;
        goto LABEL_14;
      }

      v9 = [v3 objectAtIndexedSubscript:i];
      v10 = v9;
      if (v9)
      {
        v6 = [v9 boxedValueForProperty:a2];
        if (v6)
        {
          v11 = +[NSNull null];

          if (v6 != v11)
          {
            goto LABEL_13;
          }

          if (((a2 < 0x33) & (0x40001049405D0uLL >> a2)) != 0)
          {
            break;
          }
        }
      }
    }

    v6 = 0;
LABEL_13:
  }

LABEL_14:

  return v6;
}

id sub_1002812E4(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[NSMutableArray array];
  [v7 crl_addNonNilObject:v5];
  [v7 crl_addNonNilObject:v6];
  v8 = sub_100281158(v7, a3);

  return v8;
}

uint64_t sub_10028139C(void *a1, void *a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = +[NSMutableArray array];
  [v9 crl_addNonNilObject:v7];
  [v9 crl_addNonNilObject:v8];
  v10 = sub_100281450(v9, a3, a4);

  return v10;
}

uint64_t sub_100281450(void *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = a1;
  v6 = [v5 firstObject];
  if ([v6 wantsCustomResolveLogicForProperty:a2 forStyles:v5])
  {
    LODWORD(v3) = [v6 resolvedIntForProperty:a2 inStyles:v5];
    v7 = 0x80000000;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v7 = [*(*(&v13 + 1) + 8 * v11) intValueForProperty:{a2, v13}];
        if (v7 != 0x80000000)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v7 = 0x80000000;
    }
  }

  if (v7 == 0x80000000)
  {
    v3 = v3;
  }

  else
  {
    v3 = v7;
  }

  return v3;
}

double sub_1002815FC(void *a1, void *a2, uint64_t a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = +[NSMutableArray array];
  [v9 crl_addNonNilObject:v7];
  [v9 crl_addNonNilObject:v8];
  v10 = sub_1002816B0(v9, a3, a4);

  return v10;
}

double sub_1002816B0(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = [v5 firstObject];
  if ([v6 wantsCustomResolveLogicForProperty:a2 forStyles:v5])
  {
    [v6 resolvedFloatForProperty:a2 inStyles:v5];
    a3 = v7;
    v8 = INFINITY;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v8 = INFINITY;
    if (v10)
    {
      v11 = *v17;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v12) floatValueForProperty:{a2, v16}];
        v14 = v13;
        if (v13 != INFINITY)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }

      v8 = v14;
    }
  }

  if (v8 != INFINITY)
  {
    a3 = v8;
  }

  return a3;
}

uint64_t sub_10028186C(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101341CA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101341CBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101341D4C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v8 = [NSString stringWithUTF8String:"CTFontRef  _Nonnull CRLWPFastCreateFontForStyle(CRLWPCharacterStyle * _Nullable __strong, CRLWPParagraphStyle * _Nonnull __strong, NSUInteger)"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1807 isFatal:0 description:"paragraphStyle is not allowed to be nil"];
  }

  v10 = +[NSMutableArray array];
  [v10 crl_addNonNilObject:v5];
  [v10 crl_addNonNilObject:v6];
  v11 = sub_100281C64(v10, a3);

  if (!v11)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101341D74();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101341D9C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101341E38();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v13 = [NSString stringWithUTF8String:"CTFontRef  _Nonnull CRLWPFastCreateFontForStyle(CRLWPCharacterStyle * _Nullable __strong, CRLWPParagraphStyle * _Nonnull __strong, NSUInteger)"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1820 isFatal:0 description:"invalid nil value for '%{public}s'", "font"];

    v11 = sub_10027DC6C(@"TimesNewRomanPSMT", 13.0);
  }

  return v11;
}

void sub_100281BDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100281C20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100281C64(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_100281158(v3, 0x11uLL);
  if (!v4)
  {
    v5 = sub_100281158(v3, 9uLL);
    if (!v5)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101341E60();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101341E74();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101341F04();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v7 = [NSString stringWithUTF8String:"CTFontRef  _Nonnull CRLWPCreateFontForStylesWithScale(NSArray<id<CRLWPStyleProxy>> * _Nonnull __strong, NSUInteger)"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1849 isFatal:0 description:"Failed to resolve font name"];

      v5 = @"Helvetica";
    }

    v9 = sub_100281450(v3, 1, 0);
    v10 = sub_100281450(v3, 13, 0);
    v11 = sub_1002816B0(v3, 11, 12.0);
    v12 = sub_100281450(v3, 22, 0);
    v13 = sub_100281158(v3, 0xAuLL);
    v14 = v11 * a2 / 100.0;
    if (v12)
    {
      v14 = v14 * 0.666666687;
    }

    v4 = sub_100281FEC(v5, v9 != 0, v10 != 0, v13, v14);
  }

  return v4;
}

void sub_100281F64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100281FA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CFTypeRef sub_100281FEC(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v9 = a1;
  v10 = a4;
  v11 = +[CRLWPFontList sharedInstance];
  if ([v10 count])
  {
    v12 = [v11 fontForPostscriptName:v9];
    v13 = [v12 copyWithSize:a2 bold:a3 italic:v10 traits:a5];
    v14 = CFRetain([v13 ctFont]);
  }

  else
  {
    v12 = [v11 fontForPostscriptName:v9 atSize:a2 bold:a3 italic:a5];
    v14 = CFRetain([v12 ctFont]);
  }

  return v14;
}

void sub_100282120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100282164(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1002821A8(const __CTFont *a1)
{
  Ascent = CTFontGetAscent(a1);
  Descent = CTFontGetDescent(a1);
  Leading = CTFontGetLeading(a1);
  BoundingBox = CTFontGetBoundingBox(a1);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v9 = floor(Leading + 0.5);
  if (Leading <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  v19 = floor(Ascent + 0.5) + floor(Descent + 0.5);
  v11 = y;
  if (CGRectGetMaxY(BoundingBox) <= Ascent)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v12 = CGRectGetMinY(v23) < -(Descent + Leading);
  }

  else
  {
    v12 = 1;
  }

  v13 = v19 + v10;
  glyphs = 0;
  characters = 192;
  if (v12 && v10 == 0.0 && CTFontGetGlyphsForCharacters(a1, &characters, &glyphs, 1))
  {
    BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(a1, kCTFontOrientationDefault, &glyphs, 0, 1);
    v14 = BoundingRectsForGlyphs.origin.x;
    v15 = BoundingRectsForGlyphs.origin.y;
    v16 = BoundingRectsForGlyphs.size.width;
    v17 = BoundingRectsForGlyphs.size.height;
    if (CGRectGetMaxY(BoundingRectsForGlyphs) > Ascent || (v25.origin.x = v14, v25.origin.y = v15, v25.size.width = v16, v25.size.height = v17, CGRectGetMinY(v25) < -Descent))
    {
      v13 = v13 + floor(v19 * 0.200000003 + 0.5);
    }
  }

  return fmax(v13, 1.0);
}

void sub_10028234C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = +[CRLWPFontMetricsCache sharedCache];
  v5 = v4;
  if (v4)
  {
    [v4 fontHeightInfoForFont:a1];
  }

  else
  {
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }
}

const __CTFont *sub_1002823D8(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = sub_1002815FC(a2, v5, 11, 0.0);
  v7 = sub_10028186C(0, v5, a3);
  Size = CTFontGetSize(v7);
  v9 = a3 / 100.0 * v6;
  if (v9 != Size)
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(v7, v9, 0, 0);
    CFRelease(v7);
    v7 = CopyWithAttributes;
  }

  return v7;
}

void *sub_1002824A0(const void *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    CopyWithAttributes = sub_10027DC6C(v5, a3);
  }

  else if (CTFontGetSize(a1) == a3)
  {
    CopyWithAttributes = CFRetain(a1);
  }

  else
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(a1, a3, 0, 0);
  }

  v8 = CopyWithAttributes;

  return v8;
}

double sub_100282534(void *a1)
{
  v1 = a1;
  v2 = 1.0;
  if ([v1 scaleWithText])
  {
    [v1 scale];
    if (v3 != 1.0)
    {
      [v1 scale];
      v2 = v4;
    }
  }

  return v2;
}

uint64_t sub_1002825A0(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = sub_1002812E4(0, v9, 0x11uLL);
  if (!v13)
  {
    v14 = sub_1002823D8(v9, v10, a5);
    Size = CTFontGetSize(v14);
    v16 = sub_100282534(v12);
    v17 = +[NSNull null];
    v18 = [v11 isEqual:v17];
    v19 = Size * v16;

    if (v18)
    {

      v11 = 0;
    }

    v13 = sub_1002824A0(v14, v11, v19);
    CFRelease(v14);
  }

  return v13;
}

void sub_100282710(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, int a6, double a7)
{
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  sub_10028234C(a1, &v21);
  if (a1 != a2 && *&v26 == 0.0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    sub_10028234C(a2, &v15);
    *&v26 = v20;
  }

  v14 = sub_100282820(a1);
  *&v24 = *&v24 + v14 - (*(&v23 + 1) + *&v22 + *&v23 + *(&v23 + 1));
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  sub_10028289C(&v15, a3, a4, a5, a6, a7);
}

double sub_100282820(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  sub_10028234C(a1, &v3);
  v1 = rint(*&v5 + *(&v6 + 1)) * 5.3636991;
  result = *(&v6 + 1) + *&v3 + *&v6 + *&v5 + *(&v5 + 1) + fmax(*&v4, *(&v3 + 1));
  if (result >= v1)
  {
    return v1;
  }

  return result;
}

double sub_10028289C(double *a1, uint64_t a2, int a3, unint64_t a4, int a5, double a6)
{
  v6 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = v6 + v7;
  v10 = (v6 + v7 + v8 + a1[6]) * 0.0440277313;
  if (a1[11] != 0.0)
  {
    v10 = a1[11];
  }

  v11 = fmax(v10, 1.0);
  if (a5 == 1)
  {
    v12 = -v6;
    v13 = -(v7 + v8 - (v12 - v10) - (v8 + v9 * 0.5));
    if (!a3)
    {
      v13 = v12;
    }

    if (a2 == 2)
    {
      v13 = v10 + v13;
    }

    if (a2 && !a3 && a4 <= 3)
    {
      v13 = v13 - v11;
    }
  }

  else
  {
    if (a3)
    {
      v14 = -(v7 + v8 - (v7 + v10) - (v8 + v9 * 0.5));
    }

    else
    {
      if (!a2 || (v14 = a1[4], a4 >= 4))
      {
        v14 = -a1[10];
      }

      if (v14 < 1.0)
      {
        v14 = floor(v7 + a1[7]) * 5.3636991 * 0.0880554625;
      }
    }

    v15 = fmax(fmax(v10, 1.75) - v10, 0.0) + v14;
    if (a3)
    {
      v15 = v14;
    }

    v16 = v14 - v10;
    if (a2 != 2)
    {
      v16 = v14;
    }

    if (a2 == 3)
    {
      v13 = v15;
    }

    else
    {
      v13 = v16;
    }
  }

  return v13 + a6;
}

void sub_100282A1C(uint64_t a1, int a2, int a3, double a4)
{
  v8 = sub_100282820(a1);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sub_10028234C(a1, &v10);
  *&v13 = *&v13 + v8 - (*&v11 + *&v12 + *(&v12 + 1) + *&v13);
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v14;
  v9[5] = v15;
  v9[0] = v10;
  v9[1] = v11;
  sub_100282AD4(v9, a2, a3, a4);
}

double sub_100282AD4(double *a1, int a2, int a3, double a4)
{
  result = a4 + a1[9] * -0.5;
  if (a2 && !a3)
  {
    return -(a1[4] + a1[5] - result - (a1[5] + (a1[2] + a1[4]) * 0.5));
  }

  if (a2)
  {
    return 0.0;
  }

  return result;
}

void sub_100282B74(CGRect **a1)
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    *&x = CGRectUnion(*&x, *v5++);
  }
}

uint64_t sub_100282BC0(uint64_t a1, int a2, int a3)
{
  v3 = 20;
  for (i = &dword_101464488; *(i - 2) != a1 || *(i - 8) != a2 || *(i - 1) != a3; i += 6)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return *i;
}

BOOL sub_100282C0C()
{
  v0 = [CRLWPEditorHelper editorKeyboardLanguage]_0();
  v1 = [NSLocale characterDirectionForLanguage:v0]== 2;

  return v1;
}

void sub_1002830C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100283108(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028314C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100283190(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100283200(unint64_t a1)
{
  if (a1 >= 5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013420E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013420F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101342188();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v3 = [NSString stringWithUTF8String:"CRLWPParagraphAlignment CRLWPParagraphAlignmentFromNSTextAlignment(NSTextAlignment)"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:3271 isFatal:0 description:"Bad text alignment (%lu).", a1];
  }

  if (a1 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1014646A8[a1 - 1];
  }
}

void sub_1002833BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100283400(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100283444(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100283538();
  objc_sync_enter(v5);
  v6 = [v5 objectForKey:v3];
  if (!v6)
  {
    v6 = v4[2](v4);
    [v5 setObject:v6 forKey:v3];
  }

  objc_sync_exit(v5);

  return v6;
}

void sub_100283510(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

id sub_100283538()
{
  if (qword_101A349D8 != -1)
  {
    sub_1013421B0();
  }

  v1 = qword_101A349E0;

  return v1;
}

void sub_10028357C(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_101A349E0;
  qword_101A349E0 = v1;

  v3 = qword_101A349E0;

  [v3 setName:@"CRLWPObjectCache"];
}

void sub_1002839CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100283A10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028415C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002841A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002841E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100284228(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028478C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002847D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100284814(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100284858(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100285008(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028504C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100285A2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100285A70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002860C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286104(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286148(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028618C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002861D0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = [*(a1 + 32) shapeItem];
    v8 = [v7 id];
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) shapeItem];
      v12 = [v11 id];
      LOBYTE(v10) = [v10 isEqual:v12];

      if (v10)
      {
        objc_storeStrong((*(a1 + 32) + 216), a2);
        *(*(a1 + 32) + 224) = a3;
        [*(a1 + 48) invalidateLayersForDecorator:*(a1 + 32)];
        v13 = [*(a1 + 48) layerHost];
        v14 = [v13 asiOSCVC];
        v15 = [v14 feedbackGenerator];

        if (!v15)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101342994();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_1013429A8();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101342A44();
          }

          v16 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v16);
          }

          v17 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_shapeGestureDetectedWithCompletion:]_block_invoke"];
          v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
          [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:528 isFatal:0 description:"invalid nil value for '%{public}s'", "feedbackGenerator"];
        }

        [*(a1 + 48) convertUnscaledToBoundsPoint:{*(*(a1 + 32) + 128), *(*(a1 + 32) + 136)}];
        [v15 pathCompletedAtLocation:?];
        v19 = *(a1 + 56);
        if (v19)
        {
          (*(v19 + 16))();
        }

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    (*(v20 + 16))();
  }

LABEL_20:
}

void sub_10028644C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286490(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286750(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286794(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286A70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286AB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286DA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100286DEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100287988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002879CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100287A10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100287A54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100287A98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100287ADC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100287FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

id sub_10028802C(uint64_t a1, CGFloat a2, CGFloat a3, double a4)
{
  v11.y = a3;
  v11.x = a2;
  result = CGRectContainsPoint(*(a1 + 80), v11);
  v7 = *(*(a1 + 48) + 8);
  if (result)
  {
    if (*(v7 + 24))
    {
      goto LABEL_10;
    }

    *(*(*(a1 + 56) + 8) + 24) = a4;
    v8 = 1;
  }

  else
  {
    if (!*(v7 + 24))
    {
      goto LABEL_10;
    }

    v9 = *(*(*(a1 + 56) + 8) + 24);
    v10 = *(*(*(a1 + 64) + 8) + 24);
    if (v9 == v10 || vabdd_f64(v9, v10) < fabs(v10 * 0.000000999999997))
    {
      v8 = 0;
      goto LABEL_9;
    }

    result = [*(a1 + 112) p_appendPath:*(a1 + 32) fromStartPercent:*(a1 + 40) toEndPercent:? toPath:?];
    v8 = 0;
  }

  v7 = *(*(a1 + 48) + 8);
LABEL_9:
  *(v7 + 24) = v8;
LABEL_10:
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    **(a1 + 120) = *(*(*(a1 + 48) + 8) + 24) ^ 1;
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = a4;
  return result;
}

void sub_100288138(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028817C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002882E0(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.apple.freeform.freehand-drawing.flood-fill", v3);
  v2 = qword_101A349E8;
  qword_101A349E8 = v1;
}

void sub_1002891A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002891E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100289228(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028926C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002892B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002892F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100289338(uint64_t a1)
{
  v2 = +[NSArray array];
  v3 = *(a1 + 88);
  v4 = *(a1 + 32);
  v14 = v2;
  v5 = [CRLFreehandDrawingFloodFillHelper fillablePathFromPaths:v4 atFillPoint:&v14 withConnectionThreshold:v3 pathsUsedForFilling:*(a1 + 96), 5.0];
  v6 = v14;

  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10028947C;
    block[3] = &unk_10184F6B0;
    block[4] = *(a1 + 40);
    block[5] = v5;
    v13 = *(a1 + 88);
    v8 = v6;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 80);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10028947C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100289568;
  v8[3] = &unk_10184F688;
  v13 = *(a1 + 96);
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 72);
  v12 = *(a1 + 88);
  [v2 performBlockOnMainThreadWhenSafeToEnqueueCommands:v8];
}

void sub_10028A044(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028A088(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_10028A0CC(id a1, CRLFreehandDrawingLayout *a2)
{
  v2 = [(CRLFreehandDrawingLayout *)a2 freehandInfo];
  v3 = [v2 isInBoard];

  return v3;
}

BOOL sub_10028A108(id a1, CRLCanvasRep *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)v2 info];

  v5 = sub_100014370(v3, v4);

  if (v5 && [v5 isFreehandDrawingShape] && objc_msgSend(v5, "isInBoard"))
  {
    v6 = [CRLFreehandDrawingToolFillAndLegacyStroke p_isFillValidToRecolorInShapeInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10028A1B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028A1F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028A56C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028A5B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028A848(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_10028B714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028B758(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028B79C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028B7E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_10028B824(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = -vcvtpd_s64_f64(*(a1 + 32));
  *&result = CGRectInset(*&a2, v5, v5);
  return result;
}

void sub_10028B880(id a1)
{
  v1 = [CRLCIKernelLoader loadKernelWithMetalName:@"diskNonEmpty" legacyName:@"NeverCalled"];
  v2 = qword_101A349F8;
  qword_101A349F8 = v1;
}

void *sub_10028B8D0(void *a1)
{
  *a1 = off_10184F8A0;
  for (i = 1; i != 257; ++i)
  {
    v3 = a1[i];
    a1[i] = 0;
  }

  v4 = 256;
  do
  {
  }

  while (v4 * 8);
  return a1;
}

void sub_10028B944(void *a1)
{
  sub_10028B8D0(a1);

  operator delete();
}

uint64_t sub_10028B97C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 8); !*i; ++i)
  {
    if (--v2 == -256)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return a2 - v2;
}

uint64_t sub_10028B9AC(uint64_t a1, uint64_t a2)
{
  v2 = 255;
  while (!*(a1 + 8 + 8 * v2))
  {
    if (--v2 == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v2 + a2;
}

id sub_10028B9DC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableIndexSet indexSet];
  v5 = 0;
  v6 = a1 + 8;
  do
  {
    if (*(v6 + v5))
    {
      [v4 addIndex:a2];
    }

    ++a2;
    v5 += 8;
  }

  while (v5 != 2048);
  v7 = [[NSIndexSet alloc] initWithIndexSet:v4];

  return v7;
}

void sub_10028BA8C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  v7 = a1 + 8;
  v9 = a2;
  do
  {
    if (*a4 == 1)
    {
      break;
    }

    v8 = *(v7 + v6);
    if (v8)
    {
      v9[2](v9, v8, a3, a4);
    }

    ++a3;
    v6 += 8;
  }

  while (v6 != 2048);
}

void *sub_10028BBC8(void *a1)
{
  *a1 = off_10184F8E8;
  for (i = 1; i != 257; ++i)
  {
    v3 = a1[i];
    if (v3)
    {
      (*(*v3 + 8))(v3);
      a1[i] = 0;
    }
  }

  return a1;
}

void sub_10028BC4C(void *a1)
{
  sub_10028BBC8(a1);

  operator delete();
}

uint64_t sub_10028BD30(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1 + 8;
  for (i = a2 << 8; ; i += 256)
  {
    v5 = *(v3 + v2);
    if (v5)
    {
      result = (*(*v5 + 16))(v5, i);
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    v2 += 8;
    if (v2 == 2048)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10028BDB0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 << 8) + 65280;
  v4 = 2048;
  while (1)
  {
    v5 = *(a1 + v4);
    if (v5)
    {
      result = (*(*v5 + 24))(v5, v3);
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    v3 -= 256;
    v4 -= 8;
    if (!v4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

id sub_10028BE30(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableIndexSet indexSet];
  v5 = 0;
  v6 = a1 + 8;
  v7 = a2 << 8;
  do
  {
    v8 = *(v6 + v5);
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8, v7);
      [v4 addIndexes:v9];
    }

    v7 += 256;
    v5 += 8;
  }

  while (v5 != 2048);
  v10 = [[NSIndexSet alloc] initWithIndexSet:v4];

  return v10;
}

void sub_10028BF2C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = 0;
  v8 = a1 + 8;
  v9 = a3 << 8;
  do
  {
    if (*a4 == 1)
    {
      break;
    }

    v10 = *(v8 + v7);
    if (v10)
    {
      (*(*v10 + 40))(v10, v11, v9, a4);
    }

    v9 += 256;
    v7 += 8;
  }

  while (v7 != 2048);
}

void sub_10028C1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10028C1D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10028C1EC(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [NSString stringWithFormat:@"%@\n   [%lu] = %@", *(*(*(a1 + 32) + 8) + 40), a3, v8];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10028C438(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028C47C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028C828(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028C86C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10028CAD4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1 + 8 * a3;
  v7 = *(v4 + 8);
  v5 = (v4 + 8);
  v6 = v7;
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2 != 0;
  }

  objc_storeStrong(v5, a2);

  return v9;
}

intptr_t sub_10028CE28()
{
  v0 = getsectbyname("__TEXT", "__text");
  addr = v0->addr;
  offset = v0->offset;
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize))
  {
    image_vmaddr_slide = -1;
  }

  else if (_dyld_image_count())
  {
    v4 = 0;
    while (1)
    {
      image_name = _dyld_get_image_name(v4);
      if (!strcmp(image_name, buf))
      {
        break;
      }

      if (++v4 >= _dyld_image_count())
      {
        goto LABEL_7;
      }
    }

    image_vmaddr_slide = _dyld_get_image_vmaddr_slide(v4);
  }

  else
  {
LABEL_7:
    image_vmaddr_slide = 0;
  }

  return addr - offset + image_vmaddr_slide;
}

void sub_10028D25C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (qword_101AD5A10 != -1)
  {
    sub_1013436FC();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101343710(v6);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else if (a3)
  {
LABEL_5:
    v8 = *(a1 + 40);
    v7 = a1 + 40;
    os_unfair_lock_lock((*(v8 + 8) + 32));
    v9 = *(v7 - 8);
    v10 = [NSString stringWithFormat:@"Terminating application due to %@", v5];
LABEL_9:
    v12 = v10;
    [v9 addObject:v10];

    os_unfair_lock_unlock((*(*v7 + 8) + 32));
    goto LABEL_10;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v11 = *(a1 + 40);
    v7 = a1 + 40;
    os_unfair_lock_lock((*(v11 + 8) + 32));
    v9 = *(v7 - 8);
    v10 = [v5 copy];
    goto LABEL_9;
  }

LABEL_10:
}

void sub_10028D360(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028D418(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028D4E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028DC0C(id a1)
{
  v1 = [NSDictionary sharedKeySetForKeys:&off_1018E1B00];
  v2 = qword_101A34A18;
  qword_101A34A18 = v1;

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = qword_101A34A20;
  qword_101A34A20 = v3;

  dword_101A34A28 = 0;
}

void sub_10028DCE8(id a1)
{
  v1 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 2);
  if (v1)
  {
    v1 = dlsym(v1, "SimulateCrash");
  }

  off_101A34A30 = v1;
}

void sub_10028DFC8(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v8 = a2;
  v2 = [NSString stringWithUTF8String:a1];
  v3 = [[NSString alloc] crl_initRedactedWithFormat:v2 arguments:v7];
  v4 = [v3 UTF8String];
  v6 = 0;
  if (v4)
  {
    asprintf(&v6, "%s", v4);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v5 = "CRLSetCrashReporterInfo: unknown reason";
  }

  qword_101AD5C80 = v5;
}

void sub_10028ECE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028ED2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028ED70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028EDB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028EDF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028EE3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028F35C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028F3A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028F7C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028F808(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028F84C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028F890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028FD40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028FD84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10028FFDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100290020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100290494(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002904D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029051C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101343F30();
    }

    v8 = off_1019EDA60;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 domain];
      v12 = 138544130;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      v17 = [v7 code];
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to serialize pasteboard object - Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v12, 0x2Au);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 56), a2);
    *(*(a1 + 32) + 66) = 1;
  }

  *(*(a1 + 32) + 65) = 1;
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1002906FC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10029098C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002909D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100291188(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002911CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100291210(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100291338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029137C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002913C0(uint64_t result, uint64_t a2)
{
  *(a2 + 30) = v2;
  *(a2 + 34) = 2114;
  *(a2 + 36) = result;
  return result;
}

void sub_1002913D4(float a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 8) = 2082;
}

void sub_1002918D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100291918(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100291C5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100291CA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100291EF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100291F34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002922B0(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 == 0)
  {
    v11 = 0;
  }

  else
  {
    v10 = a3 >= v6;
    v9 = a3 - v6;
    v10 = !v10 || v9 >= v7;
    v11 = !v10;
  }

  v12 = *(a1 + 32);
  v15 = v5;
  if (v12)
  {
    v13 = [v12 containsCharacterAtIndex:a3];
    v5 = v15;
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  if (((v11 | v14) & 1) == 0)
  {
    [*(a1 + 40) appendBezierPath:v15];
    v5 = v15;
  }
}

void sub_100292368(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 == 0)
  {
    v11 = 0;
  }

  else
  {
    v10 = a3 >= v6;
    v9 = a3 - v6;
    v10 = !v10 || v9 >= v7;
    v11 = !v10;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v16 = v5;
    v13 = [v12 containsCharacterAtIndex:a3];
    v5 = v16;
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  if (((v11 | v14) & 1) == 0 && (*(a1 + 64) != 0x7FFFFFFFFFFFFFFFLL || *(a1 + 72) != 0))
  {
    v17 = v5;
    [*(a1 + 40) appendBezierPath:v5];
    v5 = v17;
  }
}

void sub_1002927EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100292830(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100292874(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002928B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100292B40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100292B84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100292D1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100292D60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293D9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293DE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293E24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293E68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293EAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293EF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293F34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293F78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100293FBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100294000(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100294340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100294358(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100294370(uint64_t a1)
{
  v2 = [*(a1 + 32) p_repsForStorage:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100294F48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100294F8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100294FD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295014(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295058(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029509C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029553C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295580(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002955C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295608(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10029564C(uint64_t a1)
{
  v2 = [*(a1 + 40) p_blendingColorAttachmentWithContext:*(a1 + 32)];
  v3 = [CRLMetalShader alloc];
  v4 = [*(a1 + 32) device];
  v5 = [(CRLMetalShader *)v3 initDefaultTextureAndOpacityShaderWithDevice:v4 colorAttachment:v2];

  return v5;
}

void sub_1002959F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295A38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295A7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295AC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100295B04(uint64_t a1)
{
  v2 = [CRLMetalShader p_blendingColorAttachmentWithContext:*(a1 + 32)];
  v3 = [CRLMetalShader p_motionBlurVelocityColorAttachmentWithContext:*(a1 + 32)];
  v4 = [CRLMetalShader alloc];
  v5 = [*(a1 + 32) device];
  v6 = [(CRLMetalShader *)v4 initDefaultTextureAndOpacityMotionBlurShaderWithDevice:v5 colorAttachment:v2 velocityAttachment:v3 motionBlur:1];

  return v6;
}

void sub_100295ECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295F10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295F54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100295F98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100295FDC(uint64_t a1)
{
  v2 = [CRLMetalShader p_blendingColorAttachmentWithContext:*(a1 + 32)];
  v3 = [CRLMetalShader alloc];
  v4 = [*(a1 + 32) device];
  v5 = [(CRLMetalShader *)v3 initDefaultBlendShaderWithDevice:v4 colorAttachment:v2 velocityAttachment:0 motionBlur:0];

  return v5;
}

void sub_10029638C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002963D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100296414(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100296458(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10029649C(uint64_t a1)
{
  v2 = [CRLMetalShader p_blendingColorAttachmentWithContext:*(a1 + 32)];
  v3 = [CRLMetalShader p_motionBlurVelocityColorAttachmentWithContext:*(a1 + 32)];
  v4 = [CRLMetalShader alloc];
  v5 = [*(a1 + 32) device];
  v6 = [(CRLMetalShader *)v4 initDefaultBlendShaderWithDevice:v5 colorAttachment:v2 velocityAttachment:v3 motionBlur:1];

  return v6;
}

void sub_100296864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002968A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002968EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100296930(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100296974(uint64_t a1)
{
  v2 = [CRLMetalShader p_blendingColorAttachmentWithContext:*(a1 + 32)];
  v3 = [CRLMetalShader alloc];
  v4 = [*(a1 + 32) device];
  v5 = [(CRLMetalShader *)v3 initDefaultColorShaderWithDevice:v4 colorAttachment:v2];

  return v5;
}

void sub_100296BBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100296C00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100296FCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297010(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297054(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297098(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297A18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297A5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297AA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297AE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297B28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297B6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297BB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100297BF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100298FDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100299020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100299064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002990A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002990EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100299130(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100299980(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002999C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100299F24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100299F68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100299FAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100299FF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029A620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029A664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029ADD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029AE14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029AE58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029AE9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029B36C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029B3B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029D598(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029D5DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029D620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029D664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029DC88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029DCCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10029DDE4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) interactiveCanvasController];
    v6 = [v3 commandController];

    [v6 openGroup];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Delete" value:0 table:@"UndoStrings"];
    [v6 setCurrentGroupActionString:v5];

    [*(a1 + 32) perform_delete];
    [v6 closeGroup];
  }
}

void sub_10029E1F0(uint64_t a1, int a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) canvasEditor];
    if ([v6 canvasEditorCanPasteAsPlainTextWithSender:*(a1 + 40)])
    {
      v3 = +[CRLPasteboard generalPasteboard];
      v4 = [v6 editorController];
      v5 = [v4 selectionPath];
      [v6 pasteWithPasteboard:v3 selectionPath:v5 forceMatchStyle:1 sender:*(a1 + 40)];
    }
  }
}

void sub_10029E370(uint64_t a1, int a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) canvasEditor];
    if ([v6 canvasEditorCanPasteValuesWithSender:*(a1 + 40)])
    {
      v3 = +[CRLPasteboard generalPasteboard];
      v4 = [v6 editorController];
      v5 = [v4 selectionPath];
      [v6 pasteWithPasteboard:v3 selectionPath:v5 forceMatchStyle:0 sender:*(a1 + 40)];
    }
  }
}

void sub_10029E4F0(uint64_t a1, int a2)
{
  if (a2)
  {
    v14 = [*(a1 + 32) canvasEditor];
    if ([v14 canvasEditorCanCopyWithSender:*(a1 + 40)])
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [*(a1 + 32) interactiveCanvasController];
      v5 = [v4 commandController];

      [v5 openGroup];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"Duplicate" value:0 table:@"UndoStrings"];
      [v5 setCurrentGroupActionString:v7];

      v8 = +[CRLPasteboard pasteboardWithUniqueName];
      v9 = objc_autoreleasePoolPush();
      [v14 copyToPasteboard:v8 asPDF:0 nativeOnly:1 withSender:*(a1 + 40)];
      objc_autoreleasePoolPop(v9);
      v10 = [v14 editorController];
      v11 = [v10 selectionPath];
      [v14 pasteWithPasteboard:v8 selectionPath:v11 forceMatchStyle:0 sender:*(a1 + 40)];

      [v5 closeGroup];
      [v8 invalidate];

      objc_autoreleasePoolPop(v3);
      v12 = [*(a1 + 32) canvasEditor];
      LOBYTE(v5) = objc_opt_respondsToSelector();

      if (v5)
      {
        v13 = [*(a1 + 32) canvasEditor];
        [v13 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
      }
    }
  }
}

id sub_10029EC28(uint64_t a1)
{
  [*(a1 + 32) endEditing];
  v2 = *(a1 + 40);

  return [v2 p_setLockStatusOfSelectedDrawables:1];
}

uint64_t sub_10029EC68(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_10029F5F0(id *a1, void *a2)
{
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [a1[4] keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [a1[4] objectForKey:v9];
        v11 = [a1[5] p_commandForUpdatingMagnetAfterGroupingForCline:v9 withPosition:v10 withGroupLayout:v3 forMagnet:1];
        [a1[6] enqueueCommand:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [a1[7] keyEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        v18 = [a1[7] objectForKey:v17];
        v19 = [a1[5] p_commandForUpdatingMagnetAfterGroupingForCline:v17 withPosition:v18 withGroupLayout:v3 forMagnet:0];
        [a1[6] enqueueCommand:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }
}

BOOL sub_1002A03C8(id a1, _TtC8Freeform12CRLBoardItem *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, v2);

  if (v4)
  {
    v5 = [v4 isEffectivelyEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

__n128 sub_1002A0430(uint64_t a1, void *a2)
{
  v3 = [a2 geometry];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  v5 = *(*(a1 + 32) + 8);
  v5[2] = v7;
  v5[3] = v8;
  v5[4] = v9;

  return result;
}

void sub_1002A04A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A04E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A0E50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A0E94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

_TtC8Freeform12CRLBoardItem *__cdecl sub_1002A15BC(id a1, _TtC8Freeform12CRLBoardItem *a2)
{
  v2 = a2;
  objc_opt_class();
  objc_opt_isKindOfClass();
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, v2);

  return v4;
}

void sub_1002A1CF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A1D3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A1D80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A1DC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A2098(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A20DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A33FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A3440(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A3484(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A34C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A3AD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A3B1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A44DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  memset(&v20, 0, sizeof(v20));
  if (v3)
  {
    [v3 transformInRoot];
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 transformInRoot];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    v20 = v19;
  }

  v18 = v20;
  CGAffineTransformInvert(&v19, &v18);
  v20 = v19;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v21 count:16];
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
        v12 = [v11 geometry];
        v19 = v20;
        v13 = [v12 geometryByAppendingTransform:&v19];
        [v11 setGeometry:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v8);
  }
}

void sub_1002A4C80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A4CC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002A4F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A4F20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002A4F38(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  obj = sub_1003038E0(v5, v6, 1, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLBoardItemInsertionEditor);

  if ([obj canHandleInsertionOfBoardItems:a1[4] insertionContext:a1[5]])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), obj);
    *a3 = 1;
  }
}