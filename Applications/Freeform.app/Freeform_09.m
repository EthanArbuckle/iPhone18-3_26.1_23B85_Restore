uint64_t sub_10011D644(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) boardItems];
  v5 = objc_opt_class();
  v6 = *(a1 + 48);
  v17 = 0;
  v7 = [v5 generateJsonDataFrom:v4 version:v6 error:&v17];
  v8 = v17;
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013187C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013187F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318884();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]_block_invoke"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLItemProviderItemWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:108 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

    v18 = NSLocalizedDescriptionKey;
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"The object couldn’t be converted to a format compatible with this app." value:0 table:0];
    v19 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v15 = [NSError errorWithDomain:@"com.apple.freeform" code:6 userInfo:v14];

    v8 = v15;
  }

  v3[2](v3, v7, v8);

  return 0;
}

void sub_10011D8CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011D910(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10011D984(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [UTType typeWithIdentifier:*(a1 + 32)];
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013188AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013188C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318954();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]_block_invoke"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLItemProviderItemWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:174 isFatal:0 description:"invalid nil value for '%{public}s'", "utType"];
  }

  v8 = [*(a1 + 40) promisedDataForPublicType:v4];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131897C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013189A4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318A38();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]_block_invoke"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLItemProviderItemWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:176 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

    v17 = NSLocalizedDescriptionKey;
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"The object couldn’t be converted to a format compatible with this app." value:0 table:0];
    v18 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v9 = [NSError errorWithDomain:@"com.apple.freeform" code:6 userInfo:v15];
  }

  v3[2](v3, v8, v9);

  return 0;
}

void sub_10011DCF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011DD34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011DD78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011DDBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011DE00(uint64_t a1)
{
  v2 = [[CRLCanvasImager alloc] initWithBoard:*(a1 + 32)];
  v3 = [*(a1 + 40) boardItems];
  [(CRLCanvasImager *)v2 setInfos:v3];

  v4 = [*(a1 + 40) boardItems];
  v5 = [v4 count];

  if (v5 != 1)
  {
    goto LABEL_15;
  }

  v6 = [*(a1 + 40) boardItems];
  v7 = [v6 firstObject];

  [v7 viewScaleToUseWhenRasterizingSingleBoardItemForCopy];
  v9 = v8;
  if (v8 < 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101318A60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101318A74();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318B08();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]_block_invoke"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLItemProviderItemWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:212 isFatal:0 description:"requestedViewScale should never be negative."];
  }

  if (v9 <= 0.0)
  {

LABEL_15:
    [(CRLCanvasImager *)v2 setContentsScale:2.0];
    v13 = 1;
    goto LABEL_16;
  }

  [(CRLCanvasImager *)v2 setViewScale:v9];

  v13 = 0;
LABEL_16:
  *(*(*(a1 + 56) + 8) + 24) = v13;
  [(CRLCanvasImager *)v2 setMaximumImagePixelSize:sub_10050CFE8()];
  *(*(*(a1 + 64) + 8) + 24) = [(CRLCanvasImager *)v2 newImage];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10011E034(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011E078(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10011E0BC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (*(*(a1[5] + 8) + 24))
  {
    v5 = +[NSMutableDictionary dictionary];
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      v6 = [NSNumber numberWithDouble:144.0];
      [v5 setObject:v6 forKeyedSubscript:kCGImagePropertyDPIWidth];

      v7 = [NSNumber numberWithDouble:144.0];
      [v5 setObject:v7 forKeyedSubscript:kCGImagePropertyDPIHeight];
    }

    v8 = sub_1005356F4(*(*(a1[5] + 8) + 24), v5);
    CGImageRelease(*(*(a1[5] + 8) + 24));

    v9 = 0;
  }

  else
  {
    v14 = NSLocalizedDescriptionKey;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"The iWork object couldn’t be converted to a format compatible with this app." value:0 table:0];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    v9 = [NSError errorWithDomain:@"com.apple.freeform" code:6 userInfo:v12];

    v8 = 0;
  }

  v4[2](v4, v8, v9);

  return 0;
}

uint64_t sub_10011E2E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataUsingEncoding:4];
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101318B30();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101318B44();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318BD8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]_block_invoke"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLItemProviderItemWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:271 isFatal:0 description:"invalid nil value for '%{public}s'", "publicTextData"];
  }

  v3[2](v3, v4, 0);

  return 0;
}

void sub_10011E464(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011E4A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011EB94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011EBD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_10011EC1C(int a1, double a2, double a3, double a4, double a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return CGRectGetMinY(*&a2);
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return CGRectGetMaxY(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidY(*&a2);
  }

  else
  {
    if (!a1)
    {
      return CGRectGetMinX(*&a2);
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CGRectGetMaxX(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidX(*&a2);
  }
}

double sub_10011EC88(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

BOOL sub_10011ECC8(double a1, double a2, double a3, double a4)
{
  if (a1 != a3 && vabdd_f64(a1, a3) >= 0.01)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) < 0.01)
  {
    return 1;
  }

  return a2 == a4;
}

BOOL sub_10011ED08(double a1, double a2, double a3, double a4, double a5)
{
  v5 = vabdd_f64(a1, a3);
  if (a1 != a3 && v5 >= a5)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) < a5)
  {
    return 1;
  }

  return a2 == a4;
}

BOOL sub_10011ED38(double a1, double a2, double a3, double a4)
{
  if (a1 != a3 && vabdd_f64(a1, a3) >= 0.1)
  {
    return 0;
  }

  if (vabdd_f64(a2, a4) < 0.1)
  {
    return 1;
  }

  return a2 == a4;
}

BOOL sub_10011ED78(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return sub_10011EDC8(v6, v5, 0.000000001);
}

BOOL sub_10011EE4C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a5 && vabdd_f64(a1, a5) >= 0.01 || a2 != a6 && vabdd_f64(a2, a6) >= 0.01 || a3 != a7 && vabdd_f64(a3, a7) >= 0.01)
  {
    return 0;
  }

  if (vabdd_f64(a4, a8) < 0.01)
  {
    return 1;
  }

  return a4 == a8;
}

BOOL sub_10011EEBC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = vabdd_f64(a1, a5);
  if (a1 != a5 && v17 >= a9)
  {
    return 0;
  }

  v19 = vabdd_f64(a2, a6);
  v20 = a2 == a6 || v19 < a9;
  if (!v20 || a3 != a7 && vabdd_f64(a3, a7) >= a9)
  {
    return 0;
  }

  if (vabdd_f64(a4, a8) < a9)
  {
    return 1;
  }

  return a4 == a8;
}

BOOL sub_10011EF14(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v18 = CGRectInset(*&a1, -0.01, -0.01);
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;

  return CGRectContainsRect(v18, *&v12);
}

BOOL sub_10011EF78(double a1, double a2, double a3, double a4, double a5, double a6)
{
  height = CGSizeZero.height;
  v15 = CGRectInset(*&a1, -0.01, -0.01);
  v9 = a5;
  v10 = a6;
  width = CGSizeZero.width;
  v12 = height;

  return CGRectContainsRect(v15, *&v9);
}

BOOL sub_10011F010(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a1;
  v7 = a6 - a2;
  v8 = a4 - a2;
  v9 = a5 - a1;
  v10 = v6 * v7 - v8 * v9;
  return v10 == 0.0 || v10 * v10 < (v8 * v8 + v6 * v6) * 0.0001 * (v7 * v7 + v9 * v9);
}

BOOL sub_10011F07C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxX(v24);
  if (MinX <= v16)
  {
    return MaxX >= v16;
  }

  else
  {
    return v18 >= MinX;
  }
}

BOOL sub_10011F144(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinY = CGRectGetMinY(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxY(v24);
  if (MinY <= v16)
  {
    return MaxY >= v16;
  }

  else
  {
    return v18 >= MinY;
  }
}

double sub_10011F20C(float64x2_t *a1, double a2)
{
  __asm { FMOV            V5.2D, #3.0 }

  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[1], _Q5), a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(*a1, 1.0 - a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[2], _Q5), a2), a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(a1[3], a2), a2), a2);
  return result;
}

float64_t sub_10011F264(float64x2_t *a1)
{
  v1 = a1[1];
  v2 = vcgtq_f64(v1, *a1);
  v3 = vbslq_s8(v2, *a1, v1);
  v4 = a1[2];
  v5 = a1[3];
  v6 = vcgtq_f64(v5, v4);
  v7 = vbslq_s8(v6, v4, v5);
  v8 = vbslq_s8(v2, v1, *a1);
  v9 = vbslq_s8(v6, v5, v4);
  v10 = vsubq_f64(vbslq_s8(vcgtq_f64(v9, v8), v9, v8), vbslq_s8(vcgtq_f64(v7, v3), v3, v7));
  if (v10.f64[0] < v10.f64[1])
  {
    v10.f64[0] = v10.f64[1];
  }

  return v10.f64[0];
}

double sub_10011F2B4(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a1;
  v7 = a4 - a2;
  v8 = 1.0 / sqrt(v7 * v7 + v6 * v6);
  return a1 + v6 * v8 * ((a6 - a2) * (v7 * v8) + (a5 - a1) * (v6 * v8));
}

double sub_10011F34C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v50.origin.x = a5;
  v50.origin.y = a6;
  v50.size.width = a7;
  v50.size.height = a8;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = a5;
  v51.origin.y = a6;
  v51.size.width = a7;
  v51.size.height = a8;
  MaxX = CGRectGetMaxX(v51);
  v52.origin.x = a5;
  v52.origin.y = a6;
  v52.size.width = a7;
  v52.size.height = a8;
  MinY = CGRectGetMinY(v52);
  v53.origin.x = a5;
  v53.origin.y = a6;
  v53.size.width = a7;
  v53.size.height = a8;
  MaxY = CGRectGetMaxY(v53);
  v16 = sub_10011F748(a1, a2, a5, a6, a7, a8);
  v40 = a7;
  v41 = a8;
  v17 = sub_10011F748(a3, a4, a5, a6, a7, a8);
  if (!(v16 | v17))
  {
    return a1;
  }

  v19 = v17;
  if ((v16 & v17) == 0)
  {
    *&v18 = 67109378;
    v35 = v18;
    while (1)
    {
      if (v16)
      {
        v21 = v16;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        v28 = a3 - a1;
        v27 = MaxY;
LABEL_23:
        v20 = a1 + v28 * (v27 - a2) / (a4 - a2);
        goto LABEL_24;
      }

      if ((v21 & 2) != 0)
      {
        v28 = a3 - a1;
        v27 = MinY;
        goto LABEL_23;
      }

      if ((v21 & 4) != 0)
      {
        break;
      }

      if ((v21 & 8) != 0)
      {
        v31 = a4 - a2;
        v20 = MinX;
        goto LABEL_36;
      }

      v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101318CA4();
      }

      v23 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v43 = v22;
        v44 = 2082;
        v45 = "CGPoint p_CRLIntersectionPointOfLineWithRect(CGPoint, CGPoint, CGRect)";
        v46 = 2082;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLGeometry.m";
        v48 = 1024;
        v49 = 464;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unhandled intersection scenario", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101318CCC();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v32 = v24;
        v33 = +[CRLAssertionHandler packedBacktraceString];
        *buf = v35;
        v43 = v22;
        v44 = 2114;
        v45 = v33;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v25 = [NSString stringWithUTF8String:"CGPoint p_CRLIntersectionPointOfLineWithRect(CGPoint, CGPoint, CGRect)", v35];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLGeometry.m"];
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:464 isFatal:0 description:"Unhandled intersection scenario"];

      v20 = MinX;
      v27 = MinY;
LABEL_24:
      v29 = sub_10011F748(v20, v27, a5, a6, v40, v41);
      if (v21 == v16)
      {
        v30 = v29;
      }

      else
      {
        v19 = v29;
        v30 = v16;
      }

      if (v21 == v16)
      {
        a1 = v20;
        a2 = v27;
      }

      if (!(v30 | v19))
      {
        return a1;
      }

      if (v21 != v16)
      {
        a3 = v20;
        a4 = v27;
      }

      v16 = v30;
      if ((v30 & v19) != 0)
      {
        return v20;
      }
    }

    v31 = a4 - a2;
    v20 = MaxX;
LABEL_36:
    v27 = a2 + (v20 - a1) * v31 / (a3 - a1);
    goto LABEL_24;
  }

  return INFINITY;
}

uint64_t sub_10011F748(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (a2 <= CGRectGetMaxY(v14))
  {
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (a2 < CGRectGetMinY(v15))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 > CGRectGetMaxX(v16))
  {
    return v12 | 4;
  }

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (a1 < CGRectGetMinX(v17))
  {
    return v12 | 8;
  }

  else
  {
    return v12;
  }
}

void sub_10011F81C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011F860(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10011F8A4(unint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v14 = a5;
  v15 = a4;
  while (1)
  {
    v18 = sub_10011F748(a2, a3, a6, a7, a8, a9);
    v19 = sub_10011F748(v15, v14, a6, a7, a8, a9);
    result = 1;
    if (!v18 || !v19)
    {
      break;
    }

    if ((v19 & v18) != 0)
    {
      return 0;
    }

    if (a1 >= 0xFB && (a2 == v15 || vabdd_f64(a2, v15) < 0.00000001))
    {
      result = 0;
      if (a3 == v14 || vabdd_f64(a3, v14) < 0.00000001)
      {
        return result;
      }
    }

    v21 = (v15 + a2) * 0.5;
    v22 = (v14 + a3) * 0.5;
    v23 = sub_10011F8A4(++a1, a2, a3, v21, v22, a6, a7, a8, a9);
    a2 = v21;
    a3 = v22;
    v15 = a4;
    v14 = a5;
    if (v23)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10011FA28(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a4 - a2;
  v9 = a1 - a3;
  v10 = a8 - a6;
  v11 = a5 - a7;
  v12 = (a4 - a2) * (a5 - a7) - (a8 - a6) * (a1 - a3);
  if (v12 != 0.0)
  {
    v13 = a6 * v11 + v10 * a5;
    v14 = a2 * v9 + v8 * a1;
    v15 = (v11 * v14 - v9 * v13) / v12;
    if (v15 >= fmin(a1, a3) + -0.01 && v15 <= fmax(a1, a3) + 0.01)
    {
      v16 = (v14 * -v10 + v8 * v13) / v12;
      if (v16 >= fmin(a2, a4) + -0.01 && v16 <= fmax(a2, a4) + 0.01 && v15 >= fmin(a5, a7) + -0.01 && v15 <= fmax(a5, a7) + 0.01 && v16 >= fmin(a6, a8) + -0.01)
      {
        v17 = v16 > fmax(a6, a8) + 0.01;
        return !v17;
      }
    }

    return 0;
  }

  if (fabs((a3 - a1) * (a6 - a2) - v8 * (a5 - a1)) >= 8.90029543e-308)
  {
    return 0;
  }

  v18 = fmin(a1, a3) + -0.01;
  if (a5 >= v18 && a5 <= fmax(a1, a3) + 0.01 && a6 >= fmin(a2, a4) + -0.01 && a6 <= fmax(a2, a4) + 0.01)
  {
    return 1;
  }

  if (a7 < v18 || a7 > fmax(a1, a3) + 0.01 || a8 < fmin(a2, a4) + -0.01)
  {
    return 0;
  }

  v17 = a8 > fmax(a2, a4) + 0.01;
  return !v17;
}

double sub_10011FBF0(double result, double a2, double a3)
{
  if (result < a3)
  {
    return a3;
  }

  return result;
}

CGFloat sub_10011FC04(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 <= 0.0;
  if (a8 > 0.0)
  {
    v8 = 0;
  }

  if (a3 > 0.0 || a4 > 0.0)
  {
    if (v8)
    {
      return a1;
    }

    else if (a1 < a5)
    {
      return a1;
    }
  }

  else if (v8)
  {
    return CGRectZero.origin.x;
  }

  return a5;
}

double sub_10011FCA0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmax(MinX, CGRectGetMinX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmin(MaxX, CGRectGetMaxX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmin(MaxY, CGRectGetMaxY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmax(MinY, CGRectGetMinY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

double sub_10011FDEC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MaxX = CGRectGetMaxX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmin(MaxX, CGRectGetMaxX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmax(MinX, CGRectGetMinX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmax(MinY, CGRectGetMinY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmin(MaxY, CGRectGetMaxY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

BOOL sub_10011FF38(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 < a5)
  {
    result = a1 + a3 > a5;
  }

  else
  {
    result = a5 + a7 > a1;
  }

  if (a2 >= a6)
  {
    if (a6 + a8 > a2)
    {
      return result;
    }

    return 0;
  }

  if (a2 + a4 <= a6)
  {
    return 0;
  }

  return result;
}

double sub_10011FFD8(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

void sub_1001200C4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 < CGRectGetMinX(v16))
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (a2 < CGRectGetMinY(v17))
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
LABEL_7:
      v22.origin.x = a3;
      v22.origin.y = a4;
      v22.size.width = a5;
      v22.size.height = a6;
      CGRectGetMinY(v22);
      return;
    }

    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMinX(v24);
    if (a2 <= MaxY)
    {
      return;
    }

LABEL_13:
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    CGRectGetMaxY(v28);
    return;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MinY = CGRectGetMinY(v20);
  if (a1 <= MaxX)
  {
    if (a2 >= MinY)
    {
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      if (a2 > CGRectGetMaxY(v29))
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        CGRectGetMaxY(v30);
      }
    }

    else
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMinY(v25);
    }

    return;
  }

  if (a2 < MinY)
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxX(v21);
    goto LABEL_7;
  }

  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v15 = CGRectGetMaxY(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMaxX(v27);
  if (a2 > v15)
  {
    goto LABEL_13;
  }
}

double sub_1001202D8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  MidX = CGRectGetMidX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MidY = CGRectGetMidY(v23);
  v16 = sub_1004C3240(MidX, a5, a5 + a7);
  v17 = sub_1004C3240(MidY, a6, a6 + a8);
  v18 = sub_1004C3240(v16, a1, a1 + a3);
  v19 = sub_1004C3240(v17, a2, a2 + a4);
  return sqrt((v17 - v19) * (v17 - v19) + (v16 - v18) * (v16 - v18));
}

double sub_1001203B8(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = sub_1004C3240(a1, a3, a3 + a5);
  sub_1004C3240(a2, a4, a4 + a6);
  return v9;
}

double sub_100120414(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

BOOL sub_100120474(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = CGRectIntersection(*&a1, *&a5);
  v10.origin.x = CGRectNull.origin.x;
  v10.origin.y = CGRectNull.origin.y;
  v10.size.width = CGRectNull.size.width;
  v10.size.height = CGRectNull.size.height;
  return CGRectEqualToRect(v9, v10);
}

double sub_1001204D4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MaxX;
}

double sub_100120534(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMinY(v10);
  return MinX;
}

double sub_100120594(double result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = a3 + a5;
  v13 = a4 + a6;
  if (result < a3 || result > v12 || a2 < a4 || a2 > v13)
  {
    return sub_10011F34C(result, a2, a7, a8, a3, a4, a5, a6);
  }

  return result;
}

double sub_100120604(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  if (!CGRectIsNull(*&a1))
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    MinX = CGRectGetMinX(v13);
    if (MinX >= a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = MinX;
    }

    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMaxX(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMinY(v15);
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMaxY(v16);
    return v11;
  }

  return a5;
}

double sub_1001206EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v17 = CGRectGetMidX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = MidY - CGRectGetMidY(v29);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  *&result = CGRectOffset(*&v19, MidX - v17, v18);
  return result;
}

BOOL sub_1001207D0(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4;
}

void sub_1001208E0(double a1)
{
  if (a1 < 0.0 || a1 >= 360.0)
  {
    fmod(a1 + 360.0, 360.0);
  }
}

void sub_100120958(double a1, double a2, double a3)
{
  v5 = a1;
  if (a1 < 0.0 || a1 >= 360.0)
  {
    v6 = fmod(a1 + 360.0, 360.0);
    if (v6 < 0.0)
    {
      v6 = v6 + 360.0;
    }

    if (v6 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v6;
    }
  }

  if (a2 < 0.0 || a2 >= 360.0)
  {
    v7 = fmod(a2 + 360.0, 360.0);
    if (v7 < 0.0)
    {
      v7 = v7 + 360.0;
    }

    if (v7 == 0.0)
    {
      a2 = 0.0;
    }

    else
    {
      a2 = v7;
    }
  }

  if (vabdd_f64(a2, v5) > 180.0)
  {
    if (v5 <= a2)
    {
      v8 = -360.0;
    }

    else
    {
      v8 = 360.0;
    }

    a2 = a2 + v8;
  }

  v9 = a2 * a3 + v5 * (1.0 - a3);
  if (v9 < 0.0 || v9 >= 360.0)
  {
    fmod(v9 + 360.0, 360.0);
  }
}

double sub_100120B08(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v34 = a1;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  if (MaxX > CGRectGetMaxX(v37))
  {
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    if (MinX > CGRectGetMinX(v39))
    {
      v40.origin.x = a5;
      v40.origin.y = a6;
      v40.size.width = a7;
      v40.size.height = a8;
      v29 = CGRectGetMaxX(v40);
      v41.origin.x = a1;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      v30 = v29 - CGRectGetMaxX(v41);
      v42.origin.x = a5;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = a8;
      v28 = CGRectGetMinX(v42);
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      v17 = v28 - CGRectGetMinX(v43);
      if (v30 < v17)
      {
        v17 = v30;
      }

      v18 = a1 + v17;
LABEL_11:
      v34 = v18;
      goto LABEL_12;
    }
  }

  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  v19 = CGRectGetMinX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  if (v19 < CGRectGetMinX(v45))
  {
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v20 = CGRectGetMaxX(v46);
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    if (v20 < CGRectGetMaxX(v47))
    {
      v48.origin.x = a1;
      v48.origin.y = a2;
      v48.size.width = a3;
      v48.size.height = a4;
      v31 = CGRectGetMinX(v48);
      v49.origin.x = a5;
      v49.origin.y = a6;
      v49.size.width = a7;
      v49.size.height = a8;
      v32 = v31 - CGRectGetMinX(v49);
      v50.origin.x = a1;
      v50.origin.y = a2;
      v50.size.width = a3;
      v50.size.height = a4;
      v21 = CGRectGetMaxX(v50);
      v51.origin.x = a5;
      v51.origin.y = a6;
      v51.size.width = a7;
      v51.size.height = a8;
      v22 = v21 - CGRectGetMaxX(v51);
      if (v32 < v22)
      {
        v22 = v32;
      }

      v18 = a1 - v22;
      goto LABEL_11;
    }
  }

LABEL_12:
  v52.origin.x = a5;
  v52.origin.y = a6;
  v52.size.width = a7;
  v52.size.height = a8;
  MaxY = CGRectGetMaxY(v52);
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  if (MaxY <= CGRectGetMaxY(v53) || (v54.origin.x = a5, v54.origin.y = a6, v54.size.width = a7, v54.size.height = a8, v24 = CGRectGetMinY(v54), v55.origin.x = a1, v55.origin.y = a2, v55.size.width = a3, v55.size.height = a4, v24 <= CGRectGetMinY(v55)))
  {
    v60.origin.x = a5;
    v60.origin.y = a6;
    v60.size.width = a7;
    v60.size.height = a8;
    MinY = CGRectGetMinY(v60);
    v61.origin.x = a1;
    v61.origin.y = a2;
    v61.size.width = a3;
    v61.size.height = a4;
    if (MinY < CGRectGetMinY(v61))
    {
      v62.origin.x = a5;
      v62.origin.y = a6;
      v62.size.width = a7;
      v62.size.height = a8;
      v26 = CGRectGetMaxY(v62);
      v63.origin.x = a1;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      if (v26 < CGRectGetMaxY(v63))
      {
        v64.origin.x = a1;
        v64.origin.y = a2;
        v64.size.width = a3;
        v64.size.height = a4;
        CGRectGetMinY(v64);
        v65.origin.x = a5;
        v65.origin.y = a6;
        v65.size.width = a7;
        v65.size.height = a8;
        CGRectGetMinY(v65);
        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = a3;
        v66.size.height = a4;
        CGRectGetMaxY(v66);
        v67.origin.x = a5;
        v67.origin.y = a6;
        v67.size.width = a7;
        v67.size.height = a8;
        CGRectGetMaxY(v67);
      }
    }
  }

  else
  {
    v56.origin.x = a5;
    v56.origin.y = a6;
    v56.size.width = a7;
    v56.size.height = a8;
    CGRectGetMaxY(v56);
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMaxY(v57);
    v58.origin.x = a5;
    v58.origin.y = a6;
    v58.size.width = a7;
    v58.size.height = a8;
    CGRectGetMinY(v58);
    v59.origin.x = a1;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    CGRectGetMinY(v59);
  }

  return v34;
}

double sub_100120F28(double *a1, double a2, double a3)
{
  v5 = __sincos_stret(a3);
  result = v5.__sinval * a2;
  *a1 = v5.__cosval * a2;
  a1[1] = v5.__sinval * a2;
  return result;
}

double sub_100120F68(long double a1, long double a2)
{
  if (a2 != 0.0)
  {
    return atan2(a2, a1);
  }

  result = 3.14159265;
  if (a1 >= 0.0)
  {
    return 0.0;
  }

  return result;
}

double sub_100120F98(double a1)
{
  if (a1 == 0.0)
  {
    return 1.0;
  }

  return __sincos_stret(a1).__cosval;
}

double sub_10012104C(int a1, double a2, double a3)
{
  if (a1)
  {
    return -a3;
  }

  else
  {
    return a3;
  }
}

double sub_100121068(int a1, double a2, double a3, double a4)
{
  v4 = -a4;
  memset(&v8.c, 0, 32);
  if (a1)
  {
    v4 = a4;
  }

  *&v8.a = 0uLL;
  CGAffineTransformMakeRotation(&v8, v4);
  *&result = *&vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_n_f64(*&v8.c, a3), *&v8.a, a2));
  return result;
}

void sub_1001210C4(double a1)
{
  if (a1 < 0.0 || a1 >= 6.28318531)
  {
    fmod(a1 + 6.28318531, 6.28318531);
  }
}

double sub_100121128(double a1)
{
  v1 = a1 + 3.14159265;
  if (v1 < 0.0 || v1 >= 6.28318531)
  {
    v1 = fmod(v1 + 6.28318531, 6.28318531);
    if (v1 < 0.0)
    {
      v1 = v1 + 6.28318531;
    }

    if (v1 == 0.0)
    {
      v1 = 0.0;
    }
  }

  return v1 + -3.14159265;
}

void sub_1001211D8(double a1, double a2)
{
  if (a1 < 0.0 || a1 >= 6.28318531)
  {
    fmod(a1 + 6.28318531, 6.28318531);
  }

  if (a2 < 0.0 || a2 >= 6.28318531)
  {
    fmod(a2 + 6.28318531, 6.28318531);
  }
}

void sub_1001212C0(double a1, double a2, double a3)
{
  v4 = 0.0;
  if (a2 != 0.0 && a3 != 0.0)
  {
    v7 = 0.0;
    if (a1 >= 360.0)
    {
      v4 = 1.0;
      do
      {
        v7 = v7 + 1.0;
        a1 = a1 + -360.0;
      }

      while (a1 >= 360.0);
    }

    if (a1 < 0.0)
    {
      v4 = -1.0;
      do
      {
        v7 = v7 + -1.0;
        a1 = a1 + 360.0;
      }

      while (a1 < 0.0);
    }

    if (a1 < 0.0 || a1 >= 360.0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101318CF4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101318D08();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101318D90();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = [NSString stringWithUTF8String:"CGFloat CRLEllipseParametricAngleWithPolarAngle(CGFloat, CGFloat, CGFloat)"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLGeometry.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1154 isFatal:0 description:"Angle out of range"];
    }

    if (a1 / 90.0 - floor(a1 / 90.0) >= 0.01 && ceil(a1 / 90.0) - a1 / 90.0 >= 0.01)
    {
      v11 = __sincos_stret(a1 * 3.14159265 / 180.0);
        ;
      }

        ;
      }

      if (i < 0.0 || i >= 360.0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101318DB8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101318DE0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101318E68();
        }

        v13 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v13);
        }

        v14 = [NSString stringWithUTF8String:"CGFloat CRLEllipseParametricAngleWithPolarAngle(CGFloat, CGFloat, CGFloat)"];
        v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLGeometry.m"];
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1172 isFatal:0 description:"Angle out of range"];
      }
    }
  }
}

void sub_100121610(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100121654(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100121698(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001216DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100121740(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetMaxX(v12);
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetMaxY(v13);
}

void sub_1001217FC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMaxX(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetMaxY(v8);
}

double sub_1001218BC(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v42 = CGRectIntersection(*&a1, *&a5);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (!CGRectIsNull(v42))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v11;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v11;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    v37 = CGRectGetMaxY(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v38 = v37 - CGRectGetMaxY(v46);
    v47.origin.x = v11;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    v33 = v38 * CGRectGetWidth(v47);
    v36 = height;
    v39 = x;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v16 = CGRectGetMinY(v48);
    v49.origin.x = v11;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v17 = v16 - CGRectGetMinY(v49);
    v50.origin.x = v11;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    v18 = v17 * CGRectGetWidth(v50);
    v19 = v33;
    if (v18 <= v33)
    {
      v35 = MaxY - MinY;
      v21 = CGRectMinYEdge;
    }

    else
    {
      v51.origin.x = v11;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      v20 = CGRectGetMaxY(v51);
      v52.size.height = v36;
      v52.origin.x = v39;
      v52.origin.y = y;
      v52.size.width = width;
      v35 = v20 - CGRectGetMinY(v52);
      v21 = CGRectMaxYEdge;
      v19 = v18;
    }

    v53.origin.x = v11;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    MaxX = CGRectGetMaxX(v53);
    v54.size.height = v36;
    v54.origin.x = v39;
    v54.origin.y = y;
    v54.size.width = width;
    v23 = MaxX - CGRectGetMaxX(v54);
    v55.origin.x = v11;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    v24 = v23 * CGRectGetHeight(v55);
    if (v24 > v19)
    {
      v56.size.height = v36;
      v56.origin.x = v39;
      v56.origin.y = y;
      v56.size.width = width;
      v25 = CGRectGetMaxX(v56);
      v57.origin.x = v11;
      v57.origin.y = a2;
      v57.size.width = a3;
      v57.size.height = a4;
      v21 = CGRectMinXEdge;
      v35 = v25 - CGRectGetMinX(v57);
      v19 = v24;
    }

    v58.size.height = v36;
    v58.origin.x = v39;
    v58.origin.y = y;
    v58.size.width = width;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v11;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    v27 = MinX - CGRectGetMinX(v59);
    v60.origin.x = v11;
    v60.origin.y = a2;
    v60.size.width = a3;
    v60.size.height = a4;
    v28 = CGRectGetHeight(v60);
    v29 = v35;
    if (v27 * v28 > v19)
    {
      v61.origin.x = v11;
      v61.origin.y = a2;
      v61.size.width = a3;
      v61.size.height = a4;
      v30 = CGRectGetMaxX(v61);
      v62.size.height = v36;
      v62.origin.x = v39;
      v62.origin.y = y;
      v62.size.width = width;
      v29 = v30 - CGRectGetMinX(v62);
      v21 = CGRectMaxXEdge;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    v63.origin.x = v11;
    v63.origin.y = a2;
    v63.size.width = a3;
    v63.size.height = a4;
    CGRectDivide(v63, &slice, &remainder, v29, v21);
    return remainder.origin.x;
  }

  return v11;
}

double sub_100121BA4(int a1, double result, double a3, double a4, double a5)
{
  v5 = result == a4 && a3 == a5;
  if (!v5 && a4 != 0.0 && a5 != 0.0 && a4 != 3.40282347e38 && a5 != 3.40282347e38)
  {
    if (a1)
    {
      v6 = sqrt(a5 * a5 + a4 * a4);
      return a4 / v6 * (a3 * (a5 / v6) + result * (a4 / v6));
    }

    else if (vabdd_f64(result, a4) < 0.01)
    {
      return a3 * a4 / a5;
    }
  }

  return result;
}

double sub_100121C3C(double a1, double a2, double a3, double a4)
{
  v4 = a2 != a4 || a1 != a3;
  v5 = a3 <= 0.0 || !v4;
  if (v5 || a4 <= 0.0)
  {
    goto LABEL_13;
  }

  v6 = a3 / a4;
  if (v6 <= a1 / a2)
  {
    if (v6 < a1 / a2)
    {
      v7 = a1;
      v8 = a1 / v6;
      goto LABEL_14;
    }

LABEL_13:
    v8 = a2;
    v7 = a1;
    goto LABEL_14;
  }

  v7 = a2 * v6;
  v8 = a2;
LABEL_14:
  if (v7 < a1 || v8 < a2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101318E90();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101318EA4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318F2C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"CGSize CRLSizeExpandedToMatchAspectRatio(CGSize, CGSize)"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLGeometry.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1296 isFatal:0 description:"CRLSizeExpandedToMatchAspectRatio() actually shrank the size"];
  }

  return v7;
}

void sub_100121DD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100121E14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100121E58(double a1, double a2, double a3, double a4)
{
  if (a1 / a2 < a3 / a4)
  {
    return a1 * (a4 / a2);
  }

  return a3;
}

double sub_100121E8C(double result, double a2, double a3, double a4)
{
  if (result <= a3)
  {
    v4 = a2 == a4;
    v5 = a2 < a4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (!v5 && !v4)
  {
    if (result / a2 <= a3 / a4)
    {
      if (result / a2 < a3 / a4)
      {
        return result * (a4 / a2);
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double sub_100121ED4(double result, double a2, double a3)
{
  if (result * a2 > a3)
  {
    return sqrt(result / a2 * a3);
  }

  return result;
}

double sub_100121EF4(int a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 / a2;
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = a5 / a3;
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  if (v5 < v6 == a1)
  {
    v5 = v6;
  }

  return a2 * v5;
}

double sub_100121F30(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v11 = a6 / a2;
  v12 = 0.0;
  if (a2 == 0.0)
  {
    v11 = 0.0;
  }

  if (a3 != 0.0)
  {
    v12 = a7 / a3;
  }

  if (v11 < v12 != a1)
  {
    v12 = v11;
  }

  return sub_1001206EC(0.0, 0.0, a2 * v12, a3 * v12, a4, a5, a6, a7);
}

double sub_100121F84(double a1, double a2, double a3, double a4)
{
  v4 = a3 / a1;
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = a4 / a2;
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = v5 != 0.0;
  if (v4 == 0.0)
  {
    v6 = 0;
  }

  if (v4 < v5 != v6)
  {
    v4 = v5;
  }

  return a1 * v4;
}

void sub_100121FD0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a5, -a6);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a7, a7);
  memset(&v15, 0, sizeof(v15));
  t1 = v17;
  v12 = v16;
  CGAffineTransformConcat(&v14, &t1, &v12);
  v12 = v17;
  CGAffineTransformInvert(&t1, &v12);
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectApplyAffineTransform(v18, &v14);
}

double sub_1001220E8(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double sub_100122154(double a1, double a2)
{
  v3 = sub_1004C31F4(a1);
  sub_1004C31F4(a2);
  return v3;
}

double sub_10012218C(double a1, double a2, double a3)
{
  v4 = a2 * a3;
  v5 = sub_1004C31F4(a1 * a3);
  sub_1004C31F4(v4);
  return 1.0 / a3 * v5;
}

double sub_1001221E8(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 == 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101318F54();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101318F68();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318FF0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"CGRect CRLRoundedRectForScale(CGRect, CGFloat)"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLGeometry.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1496 isFatal:0 description:"cannot give scale = 0 for CRLRoundedRectForScale!"];
  }

  else if (!CGRectIsNull(*&a1))
  {
    v26.origin.x = sub_10011FFD8(v8, a2, a3, a4, a5);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    MinX = CGRectGetMinX(v26);
    v18 = sub_1004C31F4(MinX);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MinY = CGRectGetMinY(v27);
    v20 = sub_1004C31F4(MinY);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MaxX = CGRectGetMaxX(v28);
    v22 = sub_1004C31F4(MaxX) - v18;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MaxY = CGRectGetMaxY(v29);
    v24 = sub_1004C31F4(MaxY);
    return sub_10011FFD8(v18, v20, v22, v24 - v20, 1.0 / a5);
  }

  return v8;
}

void sub_10012241C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100122460(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1001224A4(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 == 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101319018();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131902C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013190B4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"CGRect CRLAliasRoundedRectForScale(CGRect, CGFloat)"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLGeometry.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1521 isFatal:0 description:"cannot give scale = 0 for CRLRoundedRectForScale!"];
  }

  else if (!CGRectIsNull(*&a1))
  {
    v37.origin.x = sub_10011FFD8(v8, a2, a3, a4, a5);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    MinX = CGRectGetMinX(v37);
    v18 = floor(MinX);
    v19 = MinX - v18;
    v20 = ceil(MinX);
    if (v19 >= 0.49)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    MinY = CGRectGetMinY(v38);
    v23 = floor(MinY);
    v24 = MinY - v23;
    v25 = ceil(MinY);
    if (v24 >= 0.49)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MaxX = CGRectGetMaxX(v39);
    v28 = floor(MaxX);
    v29 = MaxX - v28;
    v30 = ceil(MaxX);
    if (v29 < 0.49)
    {
      v30 = v28;
    }

    v36 = v30 - v21;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MaxY = CGRectGetMaxY(v40);
    v32 = floor(MaxY);
    v33 = MaxY - v32;
    v34 = ceil(MaxY);
    if (v33 < 0.49)
    {
      v34 = v32;
    }

    return sub_10011FFD8(v21, v26, v36, v34 - v26, 1.0 / a5);
  }

  return v8;
}

void sub_100122724(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100122768(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1001227AC(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8.origin.x = sub_10011FFD8(a1, a2, a3, a4, a5);
  v9 = CGRectIntegral(v8);

  return sub_10011FFD8(v9.origin.x, v9.origin.y, v9.size.width, v9.size.height, 1.0 / a5);
}

double sub_1001227EC(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  if (!CGRectIsNull(*&a1))
  {
    v9.origin.x = v7;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    return floor(COERCE_DOUBLE(CGRectStandardize(v9)));
  }

  return v7;
}

void sub_100123C00(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

void sub_100123C44(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) p_logItemProviderError:UTTypeURL error:a3];
  }

  else
  {
    v5 = objc_alloc_init(CRLSEImportableItem);
    [(CRLSEImportableItem *)v5 setUrl:v6];
    [*(a1 + 40) addObject:v5];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100123CDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  if (a3)
  {
    [v6 p_logItemProviderError:UTTypePlainText error:a3];
  }

  else if (([v6 p_stringIsConsideredEmpty:v5] & 1) == 0)
  {
    v7 = objc_alloc_init(CRLSEImportableItem);
    v8 = [[NSAttributedString alloc] initWithString:v9];
    [(CRLSEImportableItem *)v7 setAttributedText:v8];

    [(CRLSEImportableItem *)v7 setMediaUTI:UTTypePlainText];
    [*(a1 + 40) addObject:v7];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100123DC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) p_logItemProviderError:UTTypePlainText error:a3];
    goto LABEL_36;
  }

  if (![v5 length])
  {
    if (qword_101AD5B70 != -1)
    {
      sub_101319268();
    }

    v13 = off_1019EDBC8;
    if (os_log_type_enabled(off_1019EDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10131927C(v13);
    }

    goto LABEL_36;
  }

  v7 = [*(a1 + 40) suggestedName];
  if ([v7 length])
  {
    v8 = [*(a1 + 40) suggestedName];
    v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [*(a1 + 40) suggestedName];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = [*(a1 + 32) defaultImageFileName];
LABEL_13:
  v14 = v12;
  v15 = +[NSFileManager defaultManager];
  v16 = [v15 temporaryDirectory];
  v17 = +[NSUUID UUID];
  v18 = [v17 UUIDString];
  v19 = [v16 URLByAppendingPathComponent:v18];

  v20 = [v19 URLByAppendingPathComponent:v14];
  v21 = [v20 pathExtension];
  if (!v21 || (v22 = v21, [v20 pathExtension], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "length"), v23, v22, !v24))
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v25 = [*(a1 + 40) registeredTypeIdentifiers];
    v26 = [v25 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v26)
    {
      v27 = v26;
      v42 = v15;
      v43 = v14;
      v44 = v6;
      v45 = a1;
      v28 = *v48;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v48 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [UTType typeWithIdentifier:*(*(&v47 + 1) + 8 * i)];
          if ([v30 conformsToType:UTTypeRAWImage])
          {
            v31 = [v30 preferredFilenameExtension];
            if (v31)
            {
              v32 = v31;
              v33 = [v30 preferredFilenameExtension];
              v34 = [v33 length];

              if (v34)
              {
                v35 = [v30 preferredFilenameExtension];

                v6 = v44;
                a1 = v45;
                v15 = v42;
                v14 = v43;
                goto LABEL_28;
              }
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }

      v6 = v44;
      a1 = v45;
      v15 = v42;
      v14 = v43;
    }

    v35 = @"raw";
LABEL_28:

    v36 = [v20 URLByAppendingPathExtension:v35];

    v20 = v36;
  }

  v46 = 0;
  v37 = [v15 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v46];
  v38 = v46;
  if (v37)
  {
    v39 = [v20 path];
    [v15 createFileAtPath:v39 contents:v6 attributes:0];

    v40 = objc_alloc_init(CRLSEImportableItem);
    [(CRLSEImportableItem *)v40 setUrl:v20];
    [*(a1 + 48) addObject:v40];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101319184();
    }

    v41 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_1013191AC(v41, v38);
    }
  }

LABEL_36:
  dispatch_group_leave(*(a1 + 56));
}

void sub_10012422C(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

void sub_100124270(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001242B4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    if (qword_101AD5B70 != -1)
    {
      sub_101319328();
    }

    if (os_log_type_enabled(off_1019EDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_10131933C();
    }

    if ([*(a1 + 32) p_file:v6 conformsTo:UTTypeImage])
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = sub_1001245C4;
      v30 = sub_1001245D4;
      v31 = 0;
      v8 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
      v9 = v27;
      v25 = v27[5];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1001245DC;
      v19[3] = &unk_10183E670;
      v10 = v6;
      v24 = &v26;
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v20 = v10;
      v21 = v11;
      v22 = v12;
      v23 = *(a1 + 56);
      [v8 coordinateReadingItemAtURL:v10 options:1 error:&v25 byAccessor:v19];
      objc_storeStrong(v9 + 5, v25);

      _Block_object_dispose(&v26, 8);
      v13 = v31;
    }

    else
    {
      v14 = *(a1 + 40);
      v15 = [UTTypeData identifier];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10012493C;
      v16[3] = &unk_10183E698;
      v16[4] = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      [v14 loadItemForTypeIdentifier:v15 options:0 completionHandler:v16];

      v13 = v17;
    }
  }

  else
  {
    [*(a1 + 32) p_logItemProviderError:UTTypeImage error:v7];
    dispatch_group_leave(*(a1 + 56));
  }
}

void sub_100124580(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

uint64_t sub_1001245C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001245DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      v16 = 0;
      goto LABEL_12;
    }
  }

  v6 = [v5 lastPathComponent];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 temporaryDirectory];
  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  v11 = [v8 URLByAppendingPathComponent:v10];

  v12 = [v11 URLByAppendingPathComponent:v6];
  v13 = *(*(a1 + 64) + 8);
  obj = *(v13 + 40);
  LODWORD(v10) = [v7 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  if (v10 && (v14 = *(*(a1 + 64) + 8), v22 = *(v14 + 40), v15 = [v7 copyItemAtURL:v5 toURL:v12 error:&v22], objc_storeStrong((v14 + 40), v22), v15))
  {
    v16 = v12;

    if (qword_101AD5B70 != -1)
    {
      sub_1013193B0();
    }

    if (os_log_type_enabled(off_1019EDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_1013193D8();
    }
  }

  else
  {
    v16 = v5;
  }

LABEL_12:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10131944C();
    }

    v17 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101319474(a1 + 64, v17);
    }
  }

  else
  {
    v18 = [*(a1 + 40) registeredContentTypes];
    if ([v18 count] == 1)
    {
      v19 = [*(a1 + 40) registeredContentTypes];
      v20 = [v19 objectAtIndexedSubscript:0];
    }

    else
    {
      v20 = UTTypeImage;
    }

    v21 = objc_alloc_init(CRLSEImportableItem);
    [(CRLSEImportableItem *)v21 setUrl:v16];
    [(CRLSEImportableItem *)v21 setMediaUTI:v20];
    [*(a1 + 48) addObject:v21];
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_1001248B4(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

void sub_1001248F8(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10012493C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) p_logItemProviderError:UTTypeData error:a3];
  }

  else
  {
    v5 = objc_alloc_init(CRLSEImportableItem);
    [(CRLSEImportableItem *)v5 setImage:v6];
    [*(a1 + 40) addObject:v5];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1001249D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) p_logItemProviderError:UTTypeData error:a3];
    v6 = [*(a1 + 40) registeredTypeIdentifiers];
    v7 = [v6 componentsJoinedByString:{@", "}];

    if (qword_101AD5B70 != -1)
    {
      sub_101319580();
    }

    if (os_log_type_enabled(off_1019EDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_101319594();
    }

    goto LABEL_18;
  }

  v8 = [*(a1 + 40) suggestedName];
  if (![v8 length])
  {

    goto LABEL_10;
  }

  v9 = [*(a1 + 40) suggestedName];
  v10 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];
  v12 = [v11 length];

  if (!v12)
  {
LABEL_10:
    v13 = +[NSUUID UUID];
    v14 = [v13 UUIDString];
    v7 = [v14 stringByAppendingString:@".pdf"];

    goto LABEL_11;
  }

  v7 = [*(a1 + 40) suggestedName];
LABEL_11:
  v15 = +[NSFileManager defaultManager];
  v16 = [v15 temporaryDirectory];
  v17 = +[NSUUID UUID];
  v18 = [v17 UUIDString];
  v19 = [v16 URLByAppendingPathComponent:v18];

  v20 = [v19 URLByAppendingPathComponent:v7];
  v25 = 0;
  LODWORD(v18) = [v15 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v25];
  v21 = v25;
  if (v18)
  {
    v22 = [v20 path];
    [v15 createFileAtPath:v22 contents:v5 attributes:0];

    v23 = objc_alloc_init(CRLSEImportableItem);
    [(CRLSEImportableItem *)v23 setUrl:v20];
    [*(a1 + 48) addObject:v23];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101319608();
    }

    v24 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_1013191AC(v24, v21);
    }
  }

LABEL_18:
  dispatch_group_leave(*(a1 + 56));
}

void sub_100124CC8(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

void sub_100124D0C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100124D50(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) p_logItemProviderError:UTTypeData error:a3];
    v6 = [*(a1 + 40) registeredTypeIdentifiers];
    v7 = [v6 componentsJoinedByString:{@", "}];

    if (qword_101AD5B70 != -1)
    {
      sub_101319630();
    }

    if (os_log_type_enabled(off_1019EDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_101319594();
    }
  }

  else
  {
    v7 = objc_alloc_init(CRLSEImportableItem);
    [(CRLSEImportableItem *)v7 setUrl:v5];
    [*(a1 + 48) addObject:v7];
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_100124E44(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

void sub_100124F2C(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

void sub_10012525C(id a1)
{
  v1 = sub_1004BD804("CRLSharingExtensionCat");
  v2 = off_1019EDBC8;
  off_1019EDBC8 = v1;
}

uint64_t sub_100125560()
{

  return objc_opt_class();
}

id sub_100125F34(void *a1)
{
  v1 = a1;
  v2 = [v1 parentInfo];
  if (v2)
  {
    v3 = v1;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = v2;

      v2 = [v4 parentInfo];

      v3 = v4;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

LABEL_8:
  v5 = objc_opt_class();
  v11 = sub_100303920(v4, v5, 1, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLCanvasElementInfo);

  return v11;
}

id sub_10012602C(void *a1)
{
  v1 = sub_100125F34(a1);
  v8 = sub_1003035DC(v1, 1, v2, v3, v4, v5, v6, v7, &OBJC_PROTOCOL___CRLCanvasLockableElementInfo);
  v9 = [v8 locked];

  return v9;
}

void sub_100126218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100126230(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100126248(uint64_t a1)
{
  [*(a1 + 48) p_loadBrushIfNeeded:*(a1 + 32)];
  v6 = [*(a1 + 48) p_storagesByBrushName];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v2 deepCopy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100126430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100126448(uint64_t a1)
{
  v2 = objc_alloc_init(NSCache);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:@"CRLBrushStrokeLoaderStorageCache"];
  v5 = [*(a1 + 48) p_allStorageCaches];
  [v5 addObject:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_100126520(id a1)
{
  v1 = +[NSMutableArray array];
  v2 = qword_101A34610;
  qword_101A34610 = v1;
}

void sub_1001269F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100126A34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100126F70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100126FB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100126FF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012703C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100127C0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100127C50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100127C94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100127CD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001284D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100128518(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012855C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001285A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100128CFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100128D40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100128D84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100128DC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100129954(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100129998(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100129E44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100129E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_100129F20(id a1, CRLFreehandDrawingLayout *a2)
{
  v2 = [(CRLFreehandDrawingLayout *)a2 freehandInfo];
  v3 = [v2 prohibitsClustering];

  return v3 ^ 1;
}

void sub_10012A4A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012A4E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012ADE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012AE28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10012B69C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 p_multiselectInfo];
  v5 = [v4 representedSelectedBoardItems];
  v6 = [v3 info];

  v7 = [v5 containsObject:v6];
  return v7;
}

void sub_10012B71C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012B760(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012B94C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012B990(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012C228(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012C26C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_10012C340(id a1, CRLCanvasRep *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_10012C4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012C504(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v11 = sub_100014370(v6, v5);

  v7 = v11;
  if (v11)
  {
    v8 = [v11 storage];
    v9 = [*(a1 + 32) info];
    v10 = [v9 textStorage];

    v7 = v11;
    if (v8 == v10)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void sub_10012CC1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012CC60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012EEF0(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10012F0F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012F134(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012F660(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012F6A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012FC20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10012FC64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013036C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001303B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100131014(id a1)
{
  size = 0;
  sysctlbyname("kern.osversion", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0x5A2F81B9uLL);
  sysctlbyname("kern.osversion", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  v3 = qword_101A34640;
  qword_101A34640 = v2;

  free(v1);
}

void sub_1001310F8(id a1)
{
  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0xF3A0382uLL);
  sysctlbyname("hw.model", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  v3 = qword_101A34650;
  qword_101A34650 = v2;

  free(v1);
}

uint64_t sub_100131204()
{
  v0 = sub_100011CCC();
  v1 = sub_10013123C(v0);

  return v1;
}

uint64_t sub_10013123C(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 count];
  if (v2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [v1 objectAtIndexedSubscript:0];
    v5 = 1000000 * [v4 integerValue];

    if (v3 != 1)
    {
      v6 = [v1 objectAtIndexedSubscript:1];
      v5 += 1000 * [v6 integerValue];

      if (v3 >= 3)
      {
        v7 = [v1 objectAtIndexedSubscript:2];
        v5 += [v7 integerValue];
      }
    }
  }

  return v5;
}

void sub_100131554(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100131598(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001317AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001317F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100131E14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100131E58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100131E9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100131EE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001324FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100132540(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100132584(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001325C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001328EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100132930(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100132B38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100132B7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100132BC0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) needsDownload])
  {
    v2 = 0;
    goto LABEL_11;
  }

  v3 = *(*(a1 + 32) + 8);
  if (!v3 || (+[_TtC8Freeform8CRLAsset null], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {
    v21 = NSLocalizedDescriptionKey;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Some images can’t be displayed." value:0 table:0];
    v22 = v11;
    v5 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    v12 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainMediaCompatibility" code:100 userInfo:v5];
    v2 = 0;
    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    *(v13 + 24) = v12;
    goto LABEL_9;
  }

  v5 = [*(*(a1 + 32) + 8) type];
  v6 = sub_1000ECC48();
  v20[0] = v6;
  v7 = [UTType typeWithIdentifier:@"com.adobe.encapsulated-postscript"];
  v20[1] = v7;
  v2 = 2;
  v8 = [NSArray arrayWithObjects:v20 count:2];
  v9 = [v5 crl_conformsToAnyUTType:v8];

  if ((v9 & 1) == 0)
  {
    if ([*(a1 + 32) isCancelled])
    {
      v2 = 0;
      goto LABEL_10;
    }

    v17 = +[CRLImageProviderPool sharedPool];
    v2 = 1;
    v14 = [v17 temporaryProviderForAsset:*(*(a1 + 32) + 8) shouldValidate:1];

    if (([v14 isError] & 1) == 0)
    {
      v18 = +[CRLIngestionTypes imageUTTypesThatRequireConversion];
      v19 = [v5 crl_conformsToAnyUTType:v18];

      if (v19)
      {
        v2 = 2;
      }

      else
      {
        v2 = 5;
      }
    }

LABEL_9:
  }

LABEL_10:

LABEL_11:
  v15 = *(a1 + 48);
  if (v2 < v15)
  {
    v15 = v2;
  }

  *(*(a1 + 32) + 16) = v15;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100133A54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100133A98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100134588(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001345CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100134B3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100134B80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013577C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001357C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

float sub_10013592C(uint64_t a1, double a2, double a3)
{
  result = a2;
  v4 = a3;
  *(a1 + 4) = result;
  *(a1 + 8) = v4;
  return result;
}

void sub_100136A68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100136AAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100136FB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100136FFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013716C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001371B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100137338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013737C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001374EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100137530(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001376B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001376FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013786C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001378B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100137B50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100137B94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100137BD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100137C1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100137DBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100137E00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013805C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001380A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100138414(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100138458(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001385E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100138624(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100138798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001387DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100138F38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100138F7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100138FC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100139004(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001392D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100139314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100139760(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001397A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100139980(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_1001399C0(v3) * 57.2957795;
}

double sub_1001399C0(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 * a1[2] - *a1 * a1[3] > 0.0)
  {
    v2 = -v2;
    v1 = -v1;
  }

  return atan2(v1, v2);
}

CGAffineTransform *sub_100139A38@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v2 = 1.0 / sqrt(*(a1 + 8) * *(a1 + 8) + *a1 * *a1);
  v3 = 1.0 / sqrt(*(a1 + 24) * *(a1 + 24) + *(a1 + 16) * *(a1 + 16));
  v4 = *(a1 + 16);
  *&v6.a = *a1;
  *&v6.c = v4;
  *&v6.tx = *(a1 + 32);
  return CGAffineTransformScale(a2, &v6, v2, v3);
}

BOOL sub_100139A98(double *a1, double a2, double a3)
{
  v3 = 1.0 / (a2 * 0.5);
  v4 = 1.0 / (a3 * 0.5);
  if (v3 >= v4)
  {
    v3 = v4;
  }

  v5 = fabs(a1[3]);
  if (fabs(*a1) < v3 && v5 < v3)
  {
    return 1;
  }

  if (fabs(a1[1]) >= v3)
  {
    return 0;
  }

  return fabs(a1[2]) < v3;
}

BOOL sub_100139B08(double *a1, double a2)
{
  if (fabs(*a1) < a2 && fabs(a1[3]) < a2)
  {
    return 1;
  }

  if (fabs(a1[1]) >= a2)
  {
    return 0;
  }

  return fabs(a1[2]) < a2;
}

BOOL sub_100139B5C(double *a1)
{
  if (fabs(*a1) < 1.0e-12 && fabs(a1[3]) < 1.0e-12)
  {
    return 1;
  }

  if (fabs(a1[1]) >= 1.0e-12)
  {
    return 0;
  }

  return fabs(a1[2]) < 1.0e-12;
}

CGAffineTransform *sub_100139C04@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v13 = *&CGAffineTransformIdentity.a;
  v14 = *&CGAffineTransformIdentity.c;
  *a3 = *&CGAffineTransformIdentity.a;
  *(a3 + 16) = v14;
  v15 = *&CGAffineTransformIdentity.tx;
  *(a3 + 32) = v15;
  if (result)
  {
    v30 = v14;
    v31 = v13;
    v16 = a4;
    v17 = a5;
    v29 = v15;
    v18 = a6;
    MinX = CGRectGetMinX(*(&a7 - 3));
    v34.origin.x = a4;
    v34.origin.y = a5;
    v34.size.width = a6;
    v34.size.height = a7;
    MaxX = CGRectGetMaxX(v34);
    *&v33.a = v31;
    *&v33.c = v30;
    *&v33.tx = v29;
    CGAffineTransformTranslate(a3, &v33, MinX + MaxX, 0.0);
    v21 = *(a3 + 16);
    *&v32.a = *a3;
    *&v32.c = v21;
    *&v32.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v33, &v32, -1.0, 1.0);
    v22 = *&v33.c;
    *a3 = *&v33.a;
    *(a3 + 16) = v22;
    *(a3 + 32) = *&v33.tx;
  }

  if (a2)
  {
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    MinY = CGRectGetMinY(v35);
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    MaxY = CGRectGetMaxY(v36);
    v25 = *(a3 + 16);
    *&v32.a = *a3;
    *&v32.c = v25;
    *&v32.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v33, &v32, 0.0, MinY + MaxY);
    v26 = *&v33.c;
    *a3 = *&v33.a;
    *(a3 + 16) = v26;
    *(a3 + 32) = *&v33.tx;
    v27 = *(a3 + 16);
    *&v32.a = *a3;
    *&v32.c = v27;
    *&v32.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v33, &v32, 1.0, -1.0);
    v28 = *&v33.c;
    *a3 = *&v33.a;
    *(a3 + 16) = v28;
    *(a3 + 32) = *&v33.tx;
  }

  return result;
}

CGAffineTransform *sub_100139D98@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v6 = a2[1];
  *&v12.a = *a2;
  *&v12.c = v6;
  *&v12.tx = a2[2];
  CGAffineTransformInvert(&t1, &v12);
  v7 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v7;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  v8 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v8;
  *&t1.tx = a2[2];
  return CGAffineTransformConcat(a3, &v12, &t1);
}

CGAffineTransform *sub_100139E2C@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v5 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v5;
  *&t1.tx = a2[2];
  v6 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v6;
  *&v9.tx = a1[2];
  CGAffineTransformConcat(&v11, &t1, &v9);
  v7 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v7;
  *&v9.tx = a2[2];
  CGAffineTransformInvert(&t1, &v9);
  return CGAffineTransformConcat(a3, &v11, &t1);
}

CGAffineTransform *sub_100139EB4@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -a3, -a4);
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, a3, a4);
  t1 = v13;
  v8 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v8;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  t1 = v14;
  return CGAffineTransformConcat(a2, &v12, &t1);
}

CGAffineTransform *sub_100139F80@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v18 = sub_100120090(a3, a4, a5, a6);
  v38 = a7;
  v19 = sub_100120090(a7, a8, a9, a10);
  if (v18 < 0.0001 || v19 < 0.0001)
  {

    return CGAffineTransformMakeTranslation(a2, a7 - a3, a8 - a4);
  }

  else
  {
    sx = v19 / v18;
    v20 = sub_10011F31C(a3, a4, a5);
    v22 = sub_1001208D0(v20, v21);
    v23 = sub_10011F31C(a7, a8, a9);
    v25 = sub_1001208D0(v23, v24);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    CGAffineTransformMakeTranslation(a2, -a3, -a4);
    CGAffineTransformMakeRotation(&t2, -v22);
    v26 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v26;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v27 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v27;
    *(a2 + 32) = *&v41.tx;
    v28 = 1.0;
    if (!a1)
    {
      v28 = sx;
    }

    CGAffineTransformMakeScale(&t2, sx, v28);
    v29 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v29;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v30 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v30;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeRotation(&t2, v25);
    v31 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v31;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v32 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v32;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeTranslation(&t2, v38, a8);
    v33 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v33;
    *&t1.tx = *(a2 + 32);
    result = CGAffineTransformConcat(&v41, &t1, &t2);
    v35 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v35;
    *(a2 + 32) = *&v41.tx;
  }

  return result;
}

BOOL sub_10013A1E4(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 16);
  *&v8.a = *a1;
  *&v8.c = v6;
  *&v8.tx = *(a1 + 32);
  if (CGAffineTransformIsIdentity(&v8))
  {
    return 0;
  }

  if (a3 == a3 * *(a1 + 24) + *(a1 + 8) * a2)
  {
    return a2 != a3 * *(a1 + 16) + *a1 * a2;
  }

  return 1;
}

BOOL sub_10013A268(double *a1)
{
  if (a1[1] == 0.0 && a1[2] == 0.0)
  {
    return 1;
  }

  if (*a1 == 0.0)
  {
    return a1[3] == 0.0;
  }

  return 0;
}

double sub_10013A2AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sqrt(v4 * v4 + *a1 * *a1);
  v8 = sqrt(v6 * v6 + v5 * v5);
  v9 = *a1 * v6 - v5 * v4;
  v10 = -v8;
  v11 = -v7;
  if (*a1 < v6)
  {
    v10 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v9 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v9 < 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v14;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, 1.0 / v12, 1.0 / v13);
  v15 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v21.tx;
  v16 = atan2(*(a1 + 8), *a1);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformRotate(&v21, &v20, -v16);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  *(a1 + 32) = *&v21.tx;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

CGFloat sub_10013A3DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v6;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformRotate(a2, &v13, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  *&v12.a = *a2;
  *&v12.c = v9;
  *&v12.tx = *(a2 + 32);
  CGAffineTransformScale(&v13, &v12, v7, v8);
  v10 = *&v13.c;
  *a2 = *&v13.a;
  *(a2 + 16) = v10;
  result = v13.tx;
  *(a2 + 32) = *&v13.tx;
  return result;
}

void sub_10013A468(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  v17[1] = a1[2];
  sub_10013A2AC(&v16, &v18);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  v15[2] = a2[2];
  sub_10013A2AC(v15, &v16);
  if ((v18.f64[0] >= 0.0 || *(&v16 + 1) >= 0.0) && (v18.f64[1] >= 0.0 || *&v16 >= 0.0))
  {
    v9 = __x;
  }

  else
  {
    v18 = vnegq_f64(v18);
    v9 = __x + dbl_101462AC0[__x < 0.0];
  }

  v10 = fmod(v9, 6.28318531);
  __x = v10;
  v11 = fmod(*v17, 6.28318531);
  *v17 = v11;
  if (vabdd_f64(v10, v11) > 3.14159265)
  {
    v12 = v10 <= v11;
    if (v10 > v11)
    {
      v11 = v10;
    }

    v13 = &v16;
    if (!v12)
    {
      v13 = &v18;
    }

    v13[1].f64[0] = v11 + -6.28318531;
  }

  for (i = 0; i != 9; ++i)
  {
    v18.f64[i] = v18.f64[i] + (*(&v17[-1] + i * 8) - v18.f64[i]) * a4;
  }

  sub_10013A3DC(&v18, a3);
}

BOOL sub_10013A608(double *a1, double *a2, double a3)
{
  v3 = vabdd_f64(*a1, *a2);
  if (*a1 != *a2 && v3 >= a3)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  v7 = vabdd_f64(v5, v6);
  if (v5 != v6 && v7 >= a3)
  {
    return 0;
  }

  v9 = a1[2];
  v10 = a2[2];
  v11 = vabdd_f64(v9, v10);
  if (v9 != v10 && v11 >= a3)
  {
    return 0;
  }

  v13 = a1[3];
  v14 = a2[3];
  v15 = vabdd_f64(v13, v14);
  if (v13 != v14 && v15 >= a3)
  {
    return 0;
  }

  v17 = a1[4];
  v18 = a2[4];
  if (v17 != v18 && vabdd_f64(v17, v18) >= a3)
  {
    return 0;
  }

  v19 = a1[5];
  v20 = a2[5];
  if (v19 != v20 && vabdd_f64(v19, v20) >= a3)
  {
    return 0;
  }

  v21 = a1[6];
  v22 = a2[6];
  if (v21 != v22 && vabdd_f64(v21, v22) >= a3)
  {
    return 0;
  }

  v23 = a1[7];
  v24 = a2[7];
  if (v23 != v24 && vabdd_f64(v23, v24) >= a3)
  {
    return 0;
  }

  v25 = a1[8];
  v26 = a2[8];
  if (v25 != v26 && vabdd_f64(v25, v26) >= a3)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27 != v28 && vabdd_f64(v27, v28) >= a3)
  {
    return 0;
  }

  v29 = a1[10];
  v30 = a2[10];
  if (v29 != v30 && vabdd_f64(v29, v30) >= a3)
  {
    return 0;
  }

  v31 = a1[11];
  v32 = a2[11];
  if (v31 != v32 && vabdd_f64(v31, v32) >= a3)
  {
    return 0;
  }

  v33 = a1[12];
  v34 = a2[12];
  if (v33 != v34 && vabdd_f64(v33, v34) >= a3)
  {
    return 0;
  }

  v35 = a1[13];
  v36 = a2[13];
  if (v35 != v36 && vabdd_f64(v35, v36) >= a3)
  {
    return 0;
  }

  v37 = a1[14];
  v38 = a2[14];
  if (v37 != v38 && vabdd_f64(v37, v38) >= a3)
  {
    return 0;
  }

  v40 = a1[15];
  v41 = a2[15];
  return vabdd_f64(v40, v41) < a3 || v40 == v41;
}

void sub_10013A9E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013AA2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013AC08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013AC4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013B358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013B39C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013B3E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013B424(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013B7D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013B81C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013B860(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013B8A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013C198(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013C1DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013C67C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013C6C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013C96C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013C9B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013C9F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013CA38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013CD20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013CD64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10013CE8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_10013CF2C(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C1D48();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_10013DF58(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
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
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

__n128 *sub_10013D78C(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C1D48();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      sub_10013DF58(a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    sub_10013E158(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *a3;
    v6[1].n128_u64[0] = a3[1].n128_u64[0];
    *v6 = v17;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = (__src + 24);
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = &v6[1].n128_i8[8];
      v10 = *(v6 - 24);
      v6[1].n128_u64[0] = v6[-1].n128_u64[1];
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1].n128_i8[8], __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    v27 = a3 + v26;
    v28 = *v27;
    v4[1].n128_u64[0] = *(v27 + 2);
    *v4 = v28;
  }

  return v4;
}

void sub_10013D968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013DF58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

void *sub_10013DFB0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_10013E10C(v6, v11);
    }

    sub_1000C1D48();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_10013E10C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10013DF58(a1, a2);
  }

  sub_1000C1D48();
}

__n128 sub_10013E158(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      sub_10013DF58(a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = (v5 + 24 * v7);
    a1[2] = &v8[v9];
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] = (a1[2] + 24);
  return result;
}

id sub_10013E3F4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [*(a1 + 32) setTransform:v4];
}

id sub_10013E53C(uint64_t a1)
{
  [*(a1 + 32) updateFrame];
  memset(&v6, 0, sizeof(v6));
  [*(a1 + 32) bounds];
  MaxX = CGRectGetMaxX(v7);
  CGAffineTransformMakeTranslation(&v6, MaxX * 0.5, 0.0);
  v4 = v6;
  CGAffineTransformScale(&v5, &v4, 0.25, 0.25);
  v6 = v5;
  [*(a1 + 32) setTransform:&v5];
  return [*(a1 + 32) setAlpha:0.25];
}

id sub_10013E5F4(uint64_t a1)
{
  [*(a1 + 32) remove];
  v2 = *(a1 + 32);

  return [v2 setTarget:0];
}

void sub_10013EA18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10013F300(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013F344(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10013F528(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10013F56C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10013F6C4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10013F740(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x34u);
}

id sub_100140718(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 p_transformInfo];
  v5 = [v4 representedShapeInfos];
  v6 = [v3 info];

  v7 = [v5 containsObject:v6];
  return v7;
}

void sub_100140798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001407DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001409C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100140A0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100140BE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100140C2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100140E08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100140E4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001412FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141340(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141384(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001413C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001415C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014160C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141AA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141AEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141B30(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131D3C8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131D3DC(v8, v7);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131D4C4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLImageCompatibilityConverter p_performAsyncMediaConversionWorkWithCompletionHandler:]_block_invoke"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityConverter.m"];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v7 domain];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, v11, 114, 0, "Error saving image data! errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v13, v14, [v7 code], v7);
  }

  v15 = *(a1 + 32);
  if (v15[1] != v6)
  {
    objc_storeStrong(v15 + 3, a2);
    v15 = *(a1 + 32);
  }

  [v15 p_completeConversionWithCompletionHandler:*(a1 + 40)];
}

void sub_100141CF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141D38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141D7C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131D4EC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131D500(v8, v7);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131D5E8();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLImageCompatibilityConverter p_performAsyncMediaConversionWorkWithCompletionHandler:]_block_invoke"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityConverter.m"];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v7 domain];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, v11, 126, 0, "Error saving image data! errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v13, v14, [v7 code], v7);
  }

  v15 = *(a1 + 32);
  if (v15[1] != v6)
  {
    objc_storeStrong(v15 + 3, a2);
    v15 = *(a1 + 32);
  }

  [v15 p_completeConversionWithCompletionHandler:*(a1 + 40)];
}

void sub_100141F40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141F84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100141FC8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131D610();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131D624(v8, v7);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131D70C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLImageCompatibilityConverter p_performAsyncMediaConversionWorkWithCompletionHandler:]_block_invoke"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityConverter.m"];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v7 domain];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, v11, 141, 0, "Error saving image data! errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v13, v14, [v7 code], v7);
  }

  v15 = *(a1 + 32);
  if (v15[1] != v6)
  {
    objc_storeStrong(v15 + 3, a2);
    v15 = *(a1 + 32);
  }

  [v15 p_completeConversionWithCompletionHandler:*(a1 + 40)];
}

void sub_10014218C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001421D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014249C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x4Au);
}

void sub_100142700(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100142744(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100142ABC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100142B00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100142D8C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100142DD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100142E14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100143054(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];

  v3 = [NSString alloc];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"com.apple.Unknown";
  }

  v5 = [v3 initWithFormat:@"%@_%d", v4, getpid()];
  v6 = qword_101A34670;
  qword_101A34670 = v5;

  if (!qword_101A34670)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131D99C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131D9B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131DA60();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLTemporaryDirectory _createDirectoryWithSignature:subdirectory:error:]_block_invoke"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:114 isFatal:0 description:"invalid nil value for '%{public}s'", "secretSubdirectoryNameBase"];
  }
}

void sub_100143210(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100143254(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100143B88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100143BCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100143D6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100143DB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100144740(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100144784(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100145608(uint64_t a1)
{
  v9 = [*(a1 + 32) interactiveCanvasController];
  v2 = [v9 selectionModelTranslator];
  v3 = [*(a1 + 32) editorController];
  v4 = [v3 selectionPath];
  v5 = [v2 boardItemsForSelectionPath:v4];

  if ([v5 count])
  {
    v6 = [*(a1 + 32) p_filterNonDisplayedInfos:v5];
    if (v6 != v5)
    {
      v7 = [*(a1 + 32) selectionPathWithInfos:v6];
      v8 = [*(a1 + 32) editorController];
      [v8 setSelectionPath:v7];
    }
  }
}

void sub_100145B60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100145BA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100145D34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100145D78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100147B68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100147BAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100147E8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100147ED0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001484D4(uint64_t a1)
{
  v2 = [*(a1 + 32) layerHost];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001485DC;
  v8[3] = &unk_101840068;
  v9 = *(a1 + 32);
  *&v3 = *(a1 + 48);
  *(&v3 + 1) = *(a1 + 56);
  v7 = v3;
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v10 = v7;
  v11 = v6;
  v12 = *(a1 + 80);
  [v2 continueAsynchronousWorkOnMainThreadUsingBlock:v8];
}

void sub_1001485DC(uint64_t a1)
{
  v2 = [*(a1 + 32) layerHost];
  [v2 endModalOperationWithToken:*(a1 + 40)];

  if ([*(a1 + 48) isCancelled])
  {
    goto LABEL_11;
  }

  v3 = [*(a1 + 48) boardItems];
  v4 = [*(a1 + 48) producesValidGeometry];
  v5 = *(a1 + 56);
  v6 = +[CRLInsertionContext nonInteractiveInsertionContext];
  [v5 prepareGeometryForInsertingBoardItems:v3 withInsertionContext:v6 ignoreCanvasBackgroundAlignmentProvidedSnapping:0 hasValidGeometries:v4];

  v7 = [*(a1 + 56) canvasEditorHelper];
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v26 = 0;
  v10 = [v7 commandForReplacingImagePlaceholderInSelection:v8 withBoardItems:v3 isCrossDocument:0 withSender:v9 outSelectionBehavior:&v26];
  v11 = v26;

  v12 = *(a1 + 56);
  if (v10)
  {
    v13 = [v12 interactiveCanvasController];
    v14 = [(CRLCanvasCommandSelectionBehavior *)v13 commandController];
    [v14 enqueueCommand:v10 withSelectionBehavior:v11];
LABEL_6:

    goto LABEL_7;
  }

  v15 = [v12 p_commandForPastingProvidedBoardItems:v3 withPasteboard:*(a1 + 80) sender:*(a1 + 72) hasValidGeometries:v4 allowPositionChange:v4 ^ 1];
  if (v15)
  {
    v10 = v15;
    v16 = [CRLCanvasCommandSelectionBehavior alloc];
    v17 = *(a1 + 56);
    v18 = [NSSet setWithArray:v3];
    v13 = [(CRLCanvasCommandSelectionBehavior *)v16 initWithCanvasEditor:v17 type:0 constructedInfos:v18];

    v14 = [*(a1 + 56) interactiveCanvasController];
    v19 = [v14 commandController];
    [v19 enqueueCommand:v10 withSelectionBehavior:v13];

    goto LABEL_6;
  }

LABEL_7:
  v20 = [*(a1 + 48) errors];
  if ([v20 count])
  {
    v21 = *(a1 + 32);
    v22 = [*(a1 + 48) localizedErrorDescription];
    [v21 presentErrors:v20 withLocalizedDescription:v22 completionHandler:0];
  }

  else
  {
    v22 = [*(a1 + 56) canvasEditorHelper];
    v23 = [*(a1 + 48) boardItems];
    [v22 donateBoardItemsInsertion:v23];
  }

LABEL_11:
  v24 = [*(a1 + 56) interactiveCanvasController];
  v25 = [v24 editingCoordinator];
  [v25 resumeCollaborationWithReason:@"CRLCanvasEditorPastingImportableBoardItems"];
}

void sub_100148CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100148CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    *&v5 = 67109378;
    v23 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v3 layoutForInfo:{*(*(&v25 + 1) + 8 * v8), v23}];
        v10 = v9;
        if (v9)
        {
          v11 = *(*(a1 + 40) + 8);
          v12 = [v9 geometryInRoot];
          [v12 frame];
          v38.origin.x = v13;
          v38.origin.y = v14;
          v38.size.width = v15;
          v38.size.height = v16;
          *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(v11[1], v38);
        }

        else
        {
          v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10131DF20();
          }

          v18 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v30 = v17;
            v31 = 2082;
            v32 = "[CRLCanvasEditor p_boundingRectForPastingBoardItems:]_block_invoke";
            v33 = 2082;
            v34 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m";
            v35 = 1024;
            v36 = 1370;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should always be able to get a layout with temporaryLayoutControllerForInfos.", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10131DF48();
          }

          v19 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v21 = v19;
            v22 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v23;
            v30 = v17;
            v31 = 2114;
            v32 = v22;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v12 = [NSString stringWithUTF8String:"[CRLCanvasEditor p_boundingRectForPastingBoardItems:]_block_invoke"];
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v12 file:v20 lineNumber:1370 isFatal:0 description:"Should always be able to get a layout with temporaryLayoutControllerForInfos."];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v6);
  }
}

void sub_100148FF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100149034(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100149FFC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 interactiveCanvasController];
  v6 = [v5 board];
  v7 = [v2 isConnectedWithBoardItem:v4 boardItemOwner:v6];

  return v7;
}

void sub_10014A59C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014A5E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

int64_t sub_10014A624(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_class();
  v12 = sub_1003038E0(v5, v6, 1, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLCanvasElementInfo);

  v13 = objc_opt_class();
  v19 = sub_1003038E0(v4, v13, 1, v14, v15, v16, v17, v18, &OBJC_PROTOCOL___CRLCanvasElementInfo);

  v20 = [v12 geometry];
  [v20 position];
  v22 = v21;
  v24 = v23;

  v25 = [v19 geometry];
  [v25 position];
  v27 = v26;
  v29 = v28;

  v30 = 1;
  v31 = -1;
  if (v22 >= v27)
  {
    v31 = v22 > v27;
  }

  if (v24 <= v29)
  {
    v30 = v31;
  }

  if (v24 >= v29)
  {
    v32 = v30;
  }

  else
  {
    v32 = -1;
  }

  return v32;
}

int64_t sub_10014A750(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_class();
  v12 = sub_1003038E0(v5, v6, 1, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLCanvasElementInfo);

  v13 = objc_opt_class();
  v19 = sub_1003038E0(v4, v13, 1, v14, v15, v16, v17, v18, &OBJC_PROTOCOL___CRLCanvasElementInfo);

  v20 = [v12 geometry];
  [v20 transformedBounds];
  MaxX = CGRectGetMaxX(v32);
  v22 = [v12 geometry];
  [v22 transformedBounds];
  MinY = CGRectGetMinY(v33);

  v24 = [v19 geometry];
  [v24 transformedBounds];
  v25 = CGRectGetMaxX(v34);
  v26 = [v19 geometry];
  [v26 transformedBounds];
  v27 = CGRectGetMinY(v35);

  v28 = 1;
  if (MaxX <= v25)
  {
    v29 = 0;
  }

  else
  {
    v29 = -1;
  }

  if (MaxX < v25)
  {
    v29 = 1;
  }

  if (MinY <= v27)
  {
    v28 = v29;
  }

  if (MinY >= v27)
  {
    v30 = v28;
  }

  else
  {
    v30 = -1;
  }

  return v30;
}

void sub_10014B960(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014B9A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014BB34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014BB78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014D4E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014D528(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014ECF0(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x2A8]);
  objc_destroyWeak(&STACK[0x2F8]);
  _Unwind_Resume(a1);
}

id sub_10014ED4C(uint64_t a1)
{
  v2 = *(a1 + 120);
  v7[4] = *(a1 + 104);
  v7[5] = v2;
  v3 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v3;
  v4 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v4;
  v5 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v5;
  [*(a1 + 32) setTransform:v7];
  return [*(a1 + 32) setDisableLayout:*(a1 + 168)];
}

void sub_10014EDBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[10] - 1;
    WeakRetained[10] = v4;
    if (!v4)
    {
      v5 = objc_loadWeakRetained(WeakRetained + 1);
      v6 = *&CATransform3DIdentity.m33;
      v21[4] = *&CATransform3DIdentity.m31;
      v21[5] = v6;
      v7 = *&CATransform3DIdentity.m43;
      v21[6] = *&CATransform3DIdentity.m41;
      v21[7] = v7;
      v8 = *&CATransform3DIdentity.m13;
      v21[0] = *&CATransform3DIdentity.m11;
      v21[1] = v8;
      v9 = *&CATransform3DIdentity.m23;
      v21[2] = *&CATransform3DIdentity.m21;
      v21[3] = v9;
      [v3 setTransform:v21];
      [v3 p_setViewScale:*(a1 + 48)];
      [v3 setContentInset:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
      [v3 fixFrameAndScrollView];
      if ([v5 shouldCanvasScrollingSizeGrowToFitBoardContent])
      {
        v10 = [v3 canvasView];
        v11 = [v10 enclosingScrollView];
        [v11 setContentOffset:0 animated:{*(a1 + 88), *(a1 + 96)}];

        [v5 i_viewScaleDidChange];
        [v5 i_viewScrollDidChange];
        [v5 viewDidEndZooming];
        [v3 p_scrollViewContentOffsetForUnscaledContentCenter:*(a1 + 104) viewScale:*(a1 + 112) contentInset:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
        v13 = v12;
        v15 = v14;
        v16 = [v3 canvasView];
        v17 = [v16 enclosingScrollView];
        [v17 setContentOffset:0 animated:{v13, v15}];
      }

      else
      {
        [v5 i_viewScaleDidChange];
        [v5 i_viewScrollDidChange];
        [v5 viewDidEndZooming];
      }
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      v19 = *(v20 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 16);
LABEL_11:
      v19();
    }
  }
}

void sub_10014EF94(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 48) != 0.0)
  {
    v28 = v6;
    v29 = v5;
    v30 = v3;
    v31 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v10 = (a3 - *(a1 + 56)) / *(a1 + 48);
      *&v10 = v10;
      [*(a1 + 32) solveForInput:v10];
      v11 = *(a1 + 80);
      v21[0] = *(a1 + 64);
      v21[1] = v11;
      v12 = *(a1 + 112);
      v21[2] = *(a1 + 96);
      v22 = v12;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v13 = *(a1 + 144);
      v23 = *(a1 + 128);
      v24 = v13;
      sub_10013A468(&v22, v21, &v25, v14);
      v18 = v25;
      v19 = v26;
      v20 = v27;
      v15 = [WeakRetained associatedBackgroundLayer];
      v22 = v18;
      v23 = v19;
      v24 = v20;
      [v15 setDynamicTransform:&v22];

      v17 = v26;
      v16 = v27;
      *(WeakRetained + 168) = v25;
      *(WeakRetained + 184) = v17;
      *(WeakRetained + 200) = v16;
    }
  }
}

uint64_t sub_10014F098(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidate];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 paused];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) associatedBackgroundLayer];
    v11 = *&CGAffineTransformIdentity.c;
    v13[0] = *&CGAffineTransformIdentity.a;
    v12 = v13[0];
    v13[1] = v11;
    v14 = *&CGAffineTransformIdentity.tx;
    v10 = v14;
    [v5 setDynamicTransform:v13];

    v6 = *(a1 + 32);
    v7 = *(v6 + 160);
    *(v6 + 160) = 0;

    v8 = (*(a1 + 32) + 168);
    *v8 = v12;
    v8[1] = v11;
    v8[2] = v10;
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10014F474(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014F4B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014F4FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014F540(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10014FFC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100150008(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100151334(uint64_t a1)
{
  [*(a1 + 32) attemptRecoveryFromError:*(a1 + 40) optionIndex:*(a1 + 64) delegate:*(a1 + 48) didRecoverSelector:"p_didPresentErrorWithRecovery:contextInfo:" contextInfo:0];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1001513A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1001547D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100154814(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100154858(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 p_updateConstraintsForSizeClassChange];
  [v3 p_updateHUDAppearance];
}

void sub_1001548AC(uint64_t a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  v2 = [*(a1 + 32) textLabel];
  UIAccessibilityPostNotification(v1, v2);
}

void sub_10015509C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001550E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155124(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155168(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001556AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001556F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155734(uint64_t a1)
{
  v1 = [*(a1 + 32) HUDView];
  [v1 setAlpha:0.0];
}

void sub_100155B54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155B98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155BDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155C20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155C64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155CA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100155CEC(uint64_t a1)
{
  v1 = [*(a1 + 32) HUDView];
  [v1 setAlpha:1.0];
}

void sub_100155F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100155FAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100155FC4(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = objc_opt_respondsToSelector();
  v6 = v10;
  if (v5)
  {
    *a3 = 1;
    v7 = [v10 quickSelectHUDTitle];
    v8 = *(*(a1 + 32) + 8);
    v9 = v7;
    if (!v7)
    {
      v9 = *(v8 + 40);
    }

    objc_storeStrong((v8 + 40), v9);

    v6 = v10;
  }
}

void sub_1001561BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001561D4(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = objc_opt_respondsToSelector();
  v6 = v10;
  if (v5)
  {
    *a3 = 1;
    v7 = [v10 quickSelectHUDIconSystemImageName];
    v8 = *(*(a1 + 32) + 8);
    v9 = v7;
    if (!v7)
    {
      v9 = *(v8 + 40);
    }

    objc_storeStrong((v8 + 40), v9);

    v6 = v10;
  }
}

void sub_100157E54(uint64_t a1)
{
  v2 = [*(a1 + 32) crlaxInteractiveCanvasController];
  v3 = [v2 crlaxTarget];
  v4 = [v3 commandController];

  if (*(a1 + 80) == 1 && ([v4 isGroupOpen] & 1) == 0)
  {
    [v4 openGroup];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v16 = 0;
  v6 = [*(a1 + 32) crlaxTarget];
  v7 = [v6 layout];

  v8 = objc_opt_class();
  v9 = __CRLAccessibilityCastAsClass(v8, v7, 1, &v16);
  if (v16 == 1)
  {
    abort();
  }

  v10 = v9;

  [v10 setUserDidSetControlPoint:1];
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = [v14 crlaxInteractiveCanvasController];
  [v13 performMoveOfKnob:v11 toUnscaledPosition:v12 withTracker:v14 rep:v15 andICC:{*(a1 + 64), *(a1 + 72)}];

  if (v5)
  {
    [v4 closeGroup];
  }
}

id sub_10015AEFC(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);

    return [v4 addObject:v3];
  }

  return result;
}

void sub_10015B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10015B3B4(uint64_t a1, void *a2, void *a3)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
        }

        else
        {
          [a3 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_10015BB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015BB30(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    result = *(result + 32);
    if (result)
    {
      result = (*(result + 16))();
      v1 = *(*(v2 + 40) + 8);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t sub_10015BB88(uint64_t a1, uint64_t a2)
{
  close(*(a1 + 40));
  if (a2)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10131EDFC();
    }

    v4 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10131EE10(v4, a2);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_10015BC20(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10015BC64(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

uint64_t sub_10015BEA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10131EE9C();
    }

    v4 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10131EE10(v4, a2);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_10015BF34(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10015C1C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015C20C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015C250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [NSError crl_fileReadPOSIXErrorWithNumber:a4 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10015C53C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015C580(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015C5C4(void *a1, uint64_t a2, void *a3, int a4)
{
  size = a3;
  v10 = size;
  if (a4)
  {
    v8 = a1[4];
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:a4 userInfo:0];
    (*(v8 + 16))(v8, a2, 0, v9);
  }

  else
  {
    if (size)
    {
      size = dispatch_data_get_size(size);
    }

    atomic_exchange((*(a1[5] + 8) + 24), a1[6] - size);
    (*(a1[4] + 16))();
  }
}

void sub_10015C8A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015C8EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

intptr_t sub_10015C930(uint64_t a1)
{
  descriptor = dispatch_io_get_descriptor(*(*(a1 + 32) + 16));
  if (descriptor == -1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131F228();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131F23C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F2C4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v3 = [NSString stringWithUTF8String:"[CRLFileIOChannel close]_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v6 lineNumber:275 isFatal:0 description:"Channel file descriptor is closed"];

    goto LABEL_16;
  }

  if (fcntl(descriptor, 51, 0) == -1)
  {
    v3 = [NSError crl_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    if (qword_101AD5A08 != -1)
    {
      sub_10131F124();
    }

    v4 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10131F138(v4, v3);
    }

LABEL_16:
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10015CAF4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10015CB38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015CB7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015CD18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015CD5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015CEEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015CF30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D124(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D168(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D1AC(uint64_t a1)
{
  descriptor = dispatch_io_get_descriptor(*(*(a1 + 32) + 16));
  if (descriptor == -1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131F538();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131F54C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F5D4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFileIOChannel flushWithCompletion:]_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:314 isFatal:0 description:"Channel file descriptor is closed"];
  }

  else if (fsync(descriptor) == -1)
  {
    v3 = [NSError crl_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_14;
  }

  v3 = 0;
LABEL_14:
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_10015D334(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D378(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D574(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D5B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D5FC(void *a1)
{
  descriptor = dispatch_io_get_descriptor(*(a1[4] + 16));
  if (descriptor == -1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131F6C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131F6D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F75C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFileIOChannel truncateToLength:completion:]_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:332 isFatal:0 description:"Channel is closed"];
  }

  else if (ftruncate(descriptor, a1[6]) == -1)
  {
    v3 = [NSError crl_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_14;
  }

  v3 = 0;
LABEL_14:
  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_10015D788(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D7CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015D8A8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10015ECEC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10015ED30(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10015ED8C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10015F7F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015F83C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015FCDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015FD20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015FD64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10015FDA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100160690(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001606D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100160718(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016075C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001614B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001614F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016153C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100161580(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001615C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100161608(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016164C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100161690(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001616D4(uint64_t a1)
{
  v2 = [*(a1 + 32) interactiveCanvasController];
  v3 = [v2 layerHost];
  v6 = [v3 canvasLayer];

  v4 = [v6 isLayoutDisabled];
  [v6 setDisableLayout:1];
  [*(a1 + 32) deleteForward:0];
  [v6 setDisableLayout:v4];
  v5 = [*(a1 + 32) storage];
  [*(a1 + 40) setChangeCount:{objc_msgSend(v5, "changeCount")}];
}

void sub_10016179C(uint64_t a1)
{
  v3 = [*(a1 + 32) owningRep];
  v2 = [v3 commandController];
  [v2 closeGroupWithSelectionBehavior:*(a1 + 40)];
}

void sub_100161800(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = [*(a1 + 32) owningRep];
    v2 = [v3 commandController];
    [v2 closeGroup];
  }
}

void sub_1001621D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100162218(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100162540(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [*(a1 + 32) setTransform:v4];
}

id sub_100162688(uint64_t a1)
{
  [*(a1 + 32) updateFrame];
  memset(&v6, 0, sizeof(v6));
  [*(a1 + 32) bounds];
  MaxY = CGRectGetMaxY(v7);
  CGAffineTransformMakeTranslation(&v6, 0.0, MaxY * 0.5);
  v4 = v6;
  CGAffineTransformScale(&v5, &v4, 0.25, 0.25);
  v6 = v5;
  [*(a1 + 32) setTransform:&v5];
  return [*(a1 + 32) setAlpha:0.25];
}

id sub_100162740(uint64_t a1)
{
  [*(a1 + 32) remove];
  v2 = *(a1 + 32);

  return [v2 setTarget:0];
}

void sub_100162B80(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100163B90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100163BD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100163EB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100163EF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100164618(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016465C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100164BF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100164C3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001657CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100165810(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100165854(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100165898(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001658DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100165920(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100165E34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100165E78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001662C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100166308(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100166488(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001664CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100166770(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001667B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100166D68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100166DAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001677C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016780C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016814C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100168164(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) selectionForEditor:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 40) info];
      v8 = [v9 currentSelectionContainsInfo:v7];

      if (v8)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }
}

void sub_100168634(id a1)
{
  v1 = [CRLColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
  v2 = qword_101A34690;
  qword_101A34690 = v1;
}

void sub_10016A460(void *a1)
{
  v1 = [a1 copy];
  [v1 performSelector:"crl_runBlock" withObject:0 afterDelay:0.0];
}

void sub_10016A608(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016A64C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016AAB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016AAF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016ABB0(uint64_t a1)
{
  v2 = +[UIMenuController sharedMenuController];
  [v2 setMenuVisible:1 animated:*(a1 + 32)];
}

void sub_10016ACE0(uint64_t a1)
{
  v2 = +[UIMenuController sharedMenuController];
  v3 = v2;
  if (*(a1 + 72) == 1)
  {
    [v2 showMenuFromView:*(a1 + 32) rect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10016ADC8;
    v5[3] = &unk_1018412F8;
    v5[4] = v2;
    v6 = *(a1 + 32);
    v4 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = v4;
    [UIView performWithoutAnimation:v5];
  }
}

void sub_10016B314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016B358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016B39C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016B3E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016B424(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016B468(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016B868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016B888(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);

  if (v1)
  {
    v2 = +[UIMenuController sharedMenuController];
    v3 = objc_loadWeakRetained(&to);
    v4 = [v3 shouldDismissOnChange];

    if (v4 || ([v2 update], v5 = objc_loadWeakRetained(&to), objc_msgSend(v5, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, v5, (v7 & 1) != 0) && (v8 = objc_loadWeakRetained(&to), objc_msgSend(v8, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_loadWeakRetained(&to), v11 = objc_msgSend(v9, "contextMenuPositionShouldUpdateForContextMenuController:", v10), v10, v9, v8, v11))
    {
      [v2 hideMenu];
    }

    v12 = objc_loadWeakRetained(&to);
    [v12 setResetOperation:0];
  }

  objc_destroyWeak(&to);
}

id sub_10016BB74()
{
  if (qword_101A346A8 != -1)
  {
    sub_101320F58();
  }

  v1 = qword_101A346A0;

  return v1;
}

void sub_10016BBB8(id a1)
{
  v1 = MTLCreateSystemDefaultDevice();
  v2 = qword_101A346A0;
  qword_101A346A0 = v1;
}

CGImageRef sub_10016BBEC(void *a1)
{
  v1 = a1;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v3 = sub_10016BC2C(v1, DeviceRGB);

  return v3;
}

CGImageRef sub_10016BC2C(void *a1, CGColorSpace *a2)
{
  v3 = a1;
  if ([v3 pixelFormat] == 110 || objc_msgSend(v3, "pixelFormat") == 112 || objc_msgSend(v3, "pixelFormat") == 113 || objc_msgSend(v3, "pixelFormat") == 114)
  {
    v4 = 16;
  }

  else if ([v3 pixelFormat] == 115)
  {
    v4 = 16;
  }

  else
  {
    v4 = 8;
  }

  v5 = [v3 height];
  v6 = (v4 >> 1) * v5 * [v3 width];
  v7 = malloc_type_malloc(v6, 0x9E427506uLL);
  v8 = [v3 width] * (v4 >> 1);
  memset(v13, 0, 24);
  v13[3] = [v3 width];
  v13[4] = [v3 height];
  v13[5] = 1;
  [v3 getBytes:v7 bytesPerRow:v8 fromRegion:v13 mipmapLevel:0];
  if ([v3 pixelFormat] == 80 || objc_msgSend(v3, "pixelFormat") == 81 || objc_msgSend(v3, "pixelFormat") == 552 || objc_msgSend(v3, "pixelFormat") == 553)
  {
    v9 = 8194;
  }

  else
  {
    v9 = 16385;
  }

  if ([v3 pixelFormat] == 115)
  {
    v9 = 4353;
  }

  v10 = CGDataProviderCreateWithData(0, v7, v6, sub_10016BE30);
  v11 = CGImageCreate([v3 width], objc_msgSend(v3, "height"), v4, 4 * v4, v8, a2, v9, v10, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v10);
  CGColorSpaceRelease(a2);

  return v11;
}

id sub_10016BE38(void *a1)
{
  v1 = a1;
  if (qword_101A346C0 != -1)
  {
    sub_101320F6C();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10016BFC0;
  v13 = sub_10016BFD0;
  v14 = 0;
  v2 = qword_101A346B8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016BFD8;
  v6[3] = &unk_101839FF8;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_10016BF60(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_101A346B0;
  qword_101A346B0 = v1;

  v3 = dispatch_queue_create("com.apple.freeform.CRLMetalDrawableCommandQueueAccessingQueue", 0);
  v4 = qword_101A346B8;
  qword_101A346B8 = v3;
}

uint64_t sub_10016BFC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10016BFD8(uint64_t a1)
{
  v2 = qword_101A346B0;
  v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryID]);
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [*(a1 + 32) newCommandQueue];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1 + 32);
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = qword_101A346B0;
    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 registryID]);
    [v12 setObject:v11 forKeyedSubscript:v13];
  }
}

void sub_10016C34C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016C390(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016C694(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016C6D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016C938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

id sub_10016C974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained p_tintedImageWithScale:1.0];

  return v2;
}

id sub_10016C9C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained p_tintedImageWithScale:0.5];

  return v2;
}

id sub_10016CA14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained p_tintedImageWithScale:0.25];

  return v2;
}

void sub_10016CDC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016CE04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016D780(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016D7C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016D808(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016D84C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016D890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016D8D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016E13C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016E180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016E984(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016E9C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_10016EA0C(id a1, CRLCanvasRenderable *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(CRLCanvasRenderable *)a2 name:a3];
  v5 = [v4 isEqualToString:@"CRLImageFillSublayer"];

  return v5;
}

void sub_10016EA50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016EA94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016ED54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016ED98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016F524(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016F568(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016F5AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016F5F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016F634(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016F678(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016F99C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016F9E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016FA24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016FA68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016FC34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10016FC78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100170260(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001702A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001702E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017032C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100170370(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001703B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100170AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef sub_100170ADC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (!v3 || v2[15] != *(a1 + 48) || (v4 = v2[16], v4 >= 4))
  {
    CGImageRelease(v3);
    *(*(a1 + 32) + 112) = CGImageCreateCopy(*(a1 + 48));
    *(*(a1 + 32) + 120) = *(a1 + 48);
    *(*(a1 + 32) + 128) = 0;
    v2 = *(a1 + 32);
    v4 = v2[16];
  }

  v2[16] = v4 + 1;
  result = CGImageRetain(*(*(a1 + 32) + 112));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100171260(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001712A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017153C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100171580(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100171820(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100171864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100171AF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100171B34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001727BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100172800(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100172B6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100172BB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100172BF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100172C38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100172DA8(id a1)
{
  v1 = sub_1004BD804("CRLViewControllerCat");
  v2 = off_1019EDAA8;
  off_1019EDAA8 = v1;
}

void sub_100172DEC(id a1)
{
  v1 = sub_1004BD804("CRLViewControllerCat");
  v2 = off_1019EDAA8;
  off_1019EDAA8 = v1;
}

id sub_100173128(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:*(a1 + 40)];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(*(a1 + 48) + 48);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);

  return [v4 setFrame:{v2, v3, v5, v6}];
}

void sub_10017348C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001734D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017361C(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_1001736FC(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_10017428C(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_1001742CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100174310(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100174354(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100174398(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001743DC(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_10017441C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100174460(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001744A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001744E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017452C(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_10017456C(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_1001745AC(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_100174E5C(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_100174E9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100174EE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100174F24(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_100174F64(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_100175430(id a1)
{
  v1 = sub_1004BD804("CRLNudgeGRCat");
  v2 = off_1019ED810;
  off_1019ED810 = v1;
}

void sub_100175714(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100175730(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_1001762CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100176310(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100176694(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001766D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017671C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == v3)
  {

    v4 = 0;
  }

  v5 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_100176820(id a1)
{
  v1 = objc_alloc_init(CRLWPFontVerifier);
  v2 = qword_101A346C8;
  qword_101A346C8 = v1;
}

void sub_100176DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100176DC0(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_101A346E0;
  qword_101A346E0 = v1;
}

uint64_t sub_100176DFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100176E14(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v11 = a1[4];
  v12 = a1[5];
  v13 = a2;
  v14 = [v12 locale];
  v15 = [v13 capitalizedStringWithLocale:v14];

  v16 = [v11 stringByReplacingCharactersInRange:a3 withString:{a4, v15}];
  v17 = *(a1[6] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  *a7 = 1;
}

void sub_1001775C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017760C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100177650(id a1)
{
  v1 = objc_alloc_init(CRLRulerUnits);
  v2 = qword_101A346F8;
  qword_101A346F8 = v1;
}

void sub_100177EF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100177F34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100178874()
{
  result = objc_opt_respondsToSelector();
  byte_101A34700 = result & 1;
  return result;
}

uint64_t sub_100178954()
{
  result = objc_opt_respondsToSelector();
  byte_101A34710 = result & 1;
  return result;
}

uint64_t sub_100178A60()
{
  result = objc_opt_respondsToSelector();
  byte_101A34720 = result & 1;
  return result;
}

uint64_t sub_100178B58()
{
  result = objc_opt_respondsToSelector();
  byte_101A34730 = result & 1;
  return result;
}

void sub_10017903C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}