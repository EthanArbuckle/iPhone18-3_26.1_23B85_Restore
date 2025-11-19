uint64_t sub_1003E75A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

UIImage *sub_1003E75C0(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) CGImageForSize:0 inContext:0 orContentsScaleProvider:?];

  return [UIImage imageWithCGImage:v1];
}

void sub_1003E797C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E79C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E7DA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E7DE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E7E2C(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = +[NSRunLoop currentRunLoop];
  v3 = [NSDate dateWithTimeIntervalSinceNow:0.1];
  [*(a1 + 32) addToRunLoop:v2 forMode:@"com.apple.freeform.CRLAVPlayerControllerVideoDisplayBarrier"];
  p_info = CRLiOSMultiSelectGestureRecognizer.info;
  *&v5 = 67109378;
  v21 = v5;
  while (([*(a1 + 40) allVideoFramesDisplayed] & 1) == 0)
  {
    v6 = [v2 runMode:@"com.apple.freeform.CRLAVPlayerControllerVideoDisplayBarrier" beforeDate:v3];
    if ((v6 & 1) == 0)
    {
      v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101369A00();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v24 = v7;
        v25 = 2082;
        v26 = "[CRLAVPlayerControllerVideoDisplayBarrier waitUntilAllVideoFramesAreDisplayed]_block_invoke";
        v27 = 2082;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m";
        v29 = 1024;
        v30 = 1766;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Run loop didn't run while waiting for all video frames to display.", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101369A28();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v16 = v9;
        v17 = +[CRLAssertionHandler packedBacktraceString];
        *buf = v21;
        v24 = v7;
        v25 = 2114;
        v26 = v17;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);

        p_info = (CRLiOSMultiSelectGestureRecognizer + 32);
      }

      v10 = p_info + 206;
      v11 = [NSString stringWithUTF8String:"[CRLAVPlayerControllerVideoDisplayBarrier waitUntilAllVideoFramesAreDisplayed]_block_invoke"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:1766 isFatal:0 description:"Run loop didn't run while waiting for all video frames to display."];

      p_info = CRLiOSMultiSelectGestureRecognizer.info;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v14 = v13;
    [v3 timeIntervalSinceReferenceDate];
    if (v14 >= v15)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101369A50();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101369A78();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101369B08();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLAVPlayerControllerVideoDisplayBarrier waitUntilAllVideoFramesAreDisplayed]_block_invoke"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1769 isFatal:0 description:"Timed out while waiting for all video frames to display."];

      break;
    }

    if ((v6 & 1) == 0)
    {
      break;
    }
  }

  [*(a1 + 32) invalidate];
  dispatch_semaphore_signal(*(a1 + 48));

  objc_autoreleasePoolPop(context);
}

void sub_1003E8214(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E8258(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E829C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E82E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E84F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E8534(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E8E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E8ECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E9A28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E9A6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E9D1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E9D60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E9F08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E9F4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__CFString *sub_1003EB144(unsigned int a1)
{
  if (a1 < 5)
  {
    return *(&off_10185F078 + a1);
  }

  if (a1 == 5)
  {
    return @"CRLGestureStateFailed";
  }

  return @"#Unknown CRLGestureState#";
}

BOOL sub_1003EB4DC(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 256 && [(NSString *)v6 isEqualToString:NSCocoaErrorDomain])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSDictionary *)v7 objectForKeyedSubscript:@"CRLIOErrorType"];
    v8 = [v9 isEqual:&off_1018E2D00];
  }

  return v8;
}

BOOL sub_1003EB584(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  if (a3 == 259)
  {
    return [(NSString *)a2 isEqualToString:NSCocoaErrorDomain, a4];
  }

  else
  {
    return 0;
  }
}

BOOL sub_1003EB5B4(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 512 && [(NSString *)v6 isEqualToString:NSCocoaErrorDomain])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSDictionary *)v7 objectForKeyedSubscript:@"CRLIOErrorType"];
    v8 = [v9 isEqual:&off_1018E2D18];
  }

  return v8;
}

void sub_1003EBCF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003EBD34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003EBDD0(id a1)
{
  v1 = [[CRLStrokePattern alloc] initWithPatternType:1 pattern:0 count:0 phase:0.0];
  v2 = qword_101A34E08;
  qword_101A34E08 = v1;
}

void sub_1003EBE64(id a1)
{
  v1 = [[CRLStrokePattern alloc] initWithPatternType:2 pattern:0 count:0 phase:0.0];
  v2 = qword_101A34E18;
  qword_101A34E18 = v1;
}

void sub_1003EBEF8(id a1)
{
  v1 = [[CRLStrokePattern alloc] initWithPattern:&unk_101465748 count:2 phase:0.0];
  v2 = qword_101A34E28;
  qword_101A34E28 = v1;
}

void sub_1003EBF8C(id a1)
{
  v1 = [[CRLStrokePattern alloc] initWithPattern:&unk_101465758 count:2 phase:0.0];
  v2 = qword_101A34E38;
  qword_101A34E38 = v1;
}

void sub_1003EC020(id a1)
{
  v1 = [[CRLStrokePattern alloc] initWithPattern:&unk_101465768 count:2 phase:0.0];
  v2 = qword_101A34E48;
  qword_101A34E48 = v1;
}

void sub_1003EC0B4(id a1)
{
  v1 = [[CRLStrokePattern alloc] initWithPattern:&unk_101465778 count:2 phase:0.0];
  v2 = qword_101A34E58;
  qword_101A34E58 = v1;
}

void sub_1003ECA2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ECA70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ECE00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ECE44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ED16C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ED1B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ED33C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ED380(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ED5DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ED620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ED804(uint64_t a1)
{
  v1 = [*(a1 + 32) i_newStroke];
  v2 = qword_101A34E68;
  qword_101A34E68 = v1;
}

void sub_1003ED8DC(uint64_t a1)
{
  v1 = [*(a1 + 32) i_newEmptyStroke];
  v2 = qword_101A34E78;
  qword_101A34E78 = v1;
}

void sub_1003EF55C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003EF5A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003EF894(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003EF8D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F0250(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F0294(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F1C04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F1C48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F1C8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F1CD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F25C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F260C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F27CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F2810(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F29DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F2A20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F2BA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F2BEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F2FC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F3008(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F37E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F382C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1003F3D64(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = [*(a1 + 32) imageInfo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F3E70;
  v11[3] = &unk_10185F680;
  v11[4] = &v12;
  *&v11[5] = a3;
  *&v11[6] = a4;
  v11[7] = a2;
  [v7 withTemporaryLayoutPerform:v11];

  v8 = v13[3];
  if (v8)
  {
    CFAutorelease(v8);
    v9 = v13[3];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1003F3E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003F3E70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  v6 = [v5 maskLayout];
  if (!v6 || [CRLImageRep p_canRenderWithMaskToBoundsWithImageLayout:v5])
  {
LABEL_3:

    goto LABEL_4;
  }

  v7 = [v5 maskIntersectsImage];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = [CRLImageRep p_newPathToBakeIntoSizedImageForSize:v5 withImageLayout:*(a1 + 56) orientation:*(a1 + 40), *(a1 + 48)];
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136AE60();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136AE74();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136AF10();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v6 = [NSString stringWithUTF8String:"[CRLImageRep processChangedProperty:]_block_invoke"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v9 lineNumber:1205 isFatal:0 description:"invalid nil value for '%{public}s'", "maskPath"];

      goto LABEL_3;
    }
  }

LABEL_4:
}

void sub_1003F4044(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F4088(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F567C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F56C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F5C10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F5C54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F5C98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F5CDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F5D20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F5D64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F6EB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F6EF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F6F38(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if ([v5 needsDownload])
    {
      objc_initWeak(&location, *(a1 + 32));
      v7 = [v6 assetUUID];
      if (qword_101AD5B50 != -1)
      {
        sub_10136B2F8();
      }

      v8 = off_1019EDBA8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 40) UUIDString];
        v10 = [v7 UUIDString];
        *buf = 138543874;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        v27 = 1024;
        v28 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Image Rep becoming asset observer. observerUUID %{public}@, assetUUID %{pubilc}@, isThumbnail %d", buf, 0x1Cu);
      }

      v11 = *(a1 + 40);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1003F735C;
      v18[3] = &unk_10185F890;
      v18[4] = v11;
      v12 = v7;
      v19 = v12;
      v21 = a3;
      objc_copyWeak(&v20, &location);
      [v6 addDownloadObserverWithIdentifier:v11 options:2 handler:v18];
      [v6 downloadIfNeeded];
      objc_destroyWeak(&v20);

      objc_destroyWeak(&location);
    }

    else
    {
      if (qword_101AD5B50 != -1)
      {
        sub_10136B2E4();
      }

      v14 = off_1019EDBA8;
      if (os_log_type_enabled(off_1019EDBA8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [v6 assetUUID];
        v17 = [v16 UUIDString];
        *buf = 138543618;
        v24 = v17;
        v25 = 1024;
        LODWORD(v26) = a3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Image Rep does not need to download asset %{public}@, isThumbnail %d", buf, 0x12u);
      }
    }
  }

  else
  {
    if (qword_101AD5B50 != -1)
    {
      sub_10136B320();
    }

    v13 = off_1019EDBA8;
    if (os_log_type_enabled(off_1019EDBA8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v24) = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Image Rep got a nil image asset, isThumbnail %d", buf, 8u);
    }
  }
}

void sub_1003F7250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003F7290(id a1)
{
  v1 = sub_1004BD804("CRLAssetManagementCat");
  v2 = off_1019EDBA8;
  off_1019EDBA8 = v1;
}

void sub_1003F72D4(id a1)
{
  v1 = sub_1004BD804("CRLAssetManagementCat");
  v2 = off_1019EDBA8;
  off_1019EDBA8 = v1;
}

void sub_1003F7318(id a1)
{
  v1 = sub_1004BD804("CRLAssetManagementCat");
  v2 = off_1019EDBA8;
  off_1019EDBA8 = v1;
}

void sub_1003F735C(uint64_t a1)
{
  if (qword_101AD5B50 != -1)
  {
    sub_10136B334();
  }

  v2 = off_1019EDBA8;
  if (os_log_type_enabled(off_1019EDBA8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 UUIDString];
    v6 = [*(a1 + 40) UUIDString];
    v7 = *(a1 + 56);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Image Rep received asset sucessfully. observerUUID %{public}@, assetUUID %@ isThumbnail %d", &v9, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained p_handleAssetPreparationCompletion];
}

void sub_1003F748C(id a1)
{
  v1 = sub_1004BD804("CRLAssetManagementCat");
  v2 = off_1019EDBA8;
  off_1019EDBA8 = v1;
}

void sub_1003F761C(id a1)
{
  v1 = sub_1004BD804("CRLAssetManagementCat");
  v2 = off_1019EDBA8;
  off_1019EDBA8 = v1;
}

void sub_1003F7FC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F8008(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F804C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F8090(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F850C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F8550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F8594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F85D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F917C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F91C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F99B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F99F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F9A3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F9A80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F9AC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003F9B08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FA2DC(uint64_t a1)
{
  v2 = [*(a1 + 32) interactiveCanvasController];
  v3 = [v2 layerHost];
  v4 = [v3 imageHUDController];

  v5 = [*(a1 + 32) interactiveCanvasController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003FA3A8;
  v7[3] = &unk_10183AE28;
  v6 = *(a1 + 32);
  v7[4] = v4;
  v7[5] = v6;
  [v5 performBlockOnMainThreadAfterLayoutIfNecessary:v7];
}

void sub_1003FAF1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FAF60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FAFA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) directlyManagesLayerContent] || (objc_msgSend(*(a1 + 32), "shadowRenderable"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4) || !objc_msgSend(*(*(a1 + 32) + 344), "sizedImage"))
  {
LABEL_3:
    *(*(a1 + 32) + 481) = 1;
    [*(a1 + 40) invalidateContentLayersForRep:*(a1 + 32)];
    goto LABEL_4;
  }

  [*(a1 + 32) p_updateDirectlyManagesLayerContentForRenderable:v3];
  if (![*(a1 + 32) directlyManagesLayerContent])
  {
    if ([*(a1 + 32) directlyManagesLayerContent])
    {
      [*(a1 + 32) updateRenderableGeometryFromLayout:v3];
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136BB50();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136BB64();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136BBF4();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLImageRep p_injectSizedImageIntoLayerContentsIfReady]_block_invoke"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2698 isFatal:0 description:"directly manages layer content changed when generated sized image"];
    }

    goto LABEL_3;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [*(a1 + 32) willUpdateRenderable:v3];
  if ([*(a1 + 32) directlyManagesLayerContent])
  {
    [*(a1 + 32) updateRenderableGeometryFromLayout:v3];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136BC1C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136BC30();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136BCC0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageRep p_injectSizedImageIntoLayerContentsIfReady]_block_invoke"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:2701 isFatal:0 description:"directly manages layer content changed when generated sized image"];
  }

  [*(a1 + 32) didUpdateRenderable:v3];
  +[CATransaction commit];
LABEL_4:
}

void sub_1003FB2AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FB2F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FB334(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FB378(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FBB9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FBBE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FBC24(uint64_t a1)
{
  v2 = [CRLInstantAlphaHelper removeBackgroundFromCGImage:*(a1 + 40)];
  CGImageRelease(*(a1 + 40));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003FBD04;
  v4[3] = &unk_10185FC68;
  objc_copyWeak(v6, (a1 + 32));
  v6[1] = *(a1 + 48);
  v5 = v2;
  v7 = *(a1 + 56);
  v3 = v2;
  dispatch_async(&_dispatch_main_q, v4);

  objc_destroyWeak(v6);
}

void sub_1003FBD04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained hasBeenRemoved] & 1) == 0)
  {
    v4 = [v3 p_validatedImageProvider];
    v5 = *(a1 + 48);
    v6 = [v4 imageData];
    v7 = [v6 crl_hash];

    if (v5 == v7)
    {
      v8 = [*(a1 + 32) error];
      if ([*(a1 + 32) image])
      {
        os_unfair_lock_lock(v3 + 154);
        v9 = &OBJC_IVAR___CRLImageRep__autoBackgroundRemovalState;
        if (*(a1 + 56))
        {
          v9 = &OBJC_IVAR___CRLImageRep__userInitiatedBackgroundRemovalState;
        }

        *&v3[*v9] = 3;
        objc_storeStrong(v3 + 74, *(a1 + 32));
        os_unfair_lock_unlock(v3 + 154);
        if (*(a1 + 56) == 1)
        {
          [v3 p_calcNewImageGeometryAndReplaceImageWithRemoveImageBackgroundData:*(a1 + 32) dismissMiniFormatter:1];
        }
      }

      else if (v8)
      {
        v10 = *(a1 + 56);
        os_unfair_lock_lock(v3 + 154);
        v11 = 2 * ([v8 code] != 2);
        if (v10 == 1)
        {
          *(v3 + 75) = v11;
          os_unfair_lock_unlock(v3 + 154);
          v12 = [v3 interactiveCanvasController];
          v13 = [v12 layerHost];
          [v13 presentError:v8 completionHandler:0];
        }

        else
        {
          *(v3 + 76) = v11;
          os_unfair_lock_unlock(v3 + 154);
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10136BDB4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10136BDC8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10136BE58();
        }

        v14 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v14);
        }

        v15 = [NSString stringWithUTF8String:"[CRLImageRep p_removeBackgroundFromImageInitiatedByUser:]_block_invoke"];
        v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:2884 isFatal:0 description:"Didn't receive an image or an error from CRLInstantAlphaHelper.removeBackgroundFromCGImage which should not happen"];

        if (*(a1 + 56) == 1)
        {
          v17 = 600;
        }

        else
        {
          v17 = 608;
        }

        *&v3[v17] = 0;
      }
    }
  }
}

void sub_1003FBFD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FC01C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FC2A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FC2E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FC860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003FC884(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FC8C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FC90C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10136C118();
    }

    v7 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10136C12C(v7, v6);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003FCA78;
    block[3] = &unk_10185FD98;
    objc_copyWeak(&v13, (a1 + 56));
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v8 = *(a1 + 80);
    v14 = *(a1 + 64);
    v15 = v8;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v13);
  }
}

void sub_1003FCA34(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003FCA78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_54;
  }

  v3 = +[CRLImageProviderPool sharedPool];
  v4 = [v3 providerForAsset:*(a1 + 32) shouldValidate:1];

  if (!v4 || ([v4 isError] & 1) != 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136C21C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136C230();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136C2C0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageRep p_replaceImageDataWithRemoveImageBackgroundData:rect:]_block_invoke"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:3026 isFatal:0 description:"image provider for current image is invalid"];
    goto LABEL_53;
  }

  v65 = v4;
  v66 = WeakRetained;
  v76 = objc_alloc_init(NSMapTable);
  v75 = objc_alloc_init(NSMapTable);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = [*(a1 + 40) connectedLayouts];
  v8 = [obj countByEnumeratingWithState:&v85 objects:v91 count:16];
  if (!v8)
  {
    goto LABEL_38;
  }

  v9 = v8;
  v73 = *v86;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v86 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v85 + 1) + 8 * i);
      v12 = [v11 connectionLineInfo];
      v13 = [v12 connectionLinePathSource];

      v14 = [v13 headMagnet];
      if (v14)
      {
        v15 = v14;
        v16 = [v13 headMagnet];
        v17 = [v16 magnetType];
        if (v17 != 7)
        {
          v69 = [v13 headMagnet];
          if ([v69 magnetType] != 6)
          {
            v21 = v69;
            goto LABEL_26;
          }
        }

        v18 = [v11 connectedTo];
        v19 = *(a1 + 40);

        if (v17 != 7)
        {
        }

        if (v18 == v19)
        {
          v20 = *(a1 + 48);
          v15 = [v13 headMagnet];
          v16 = [v11 connectedTo];
          v21 = [v20 p_getMagnetUnscaledPositionValueForMagnet:v15 withConnectedItem:v16];
          [v76 setObject:v21 forKey:v11];
LABEL_26:
        }
      }

      v22 = [v13 tailMagnet];
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = v22;
      v24 = [v13 tailMagnet];
      v25 = [v24 magnetType];
      if (v25 != 7)
      {
        v71 = [v13 tailMagnet];
        if ([v71 magnetType] != 6)
        {
          v29 = v71;
          goto LABEL_35;
        }
      }

      v26 = [v11 connectedFrom];
      v27 = *(a1 + 40);

      if (v25 != 7)
      {
      }

      if (v26 == v27)
      {
        v28 = *(a1 + 48);
        v23 = [v13 tailMagnet];
        v24 = [v11 connectedFrom];
        v29 = [v28 p_getMagnetUnscaledPositionValueForMagnet:v23 withConnectedItem:v24];
        [v75 setObject:v29 forKey:v11];
LABEL_35:
      }

LABEL_36:
    }

    v9 = [obj countByEnumeratingWithState:&v85 objects:v91 count:16];
  }

  while (v9);
LABEL_38:

  v30 = [*(a1 + 48) interactiveCanvasController];
  v31 = [v30 commandController];
  [v31 openGroup];
  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"Remove Background" value:0 table:@"UndoStrings"];
  [v31 setCurrentGroupActionString:v33];

  [v31 enableProgressiveEnqueuingInCurrentGroup];
  [v31 openGroup];
  v34 = [[_TtC8Freeform38CRLCommandReplaceImageWithImageSubject alloc] initWithImageItem:*(a1 + 56) imageData:*(a1 + 32) isBackgroundRemoved:1 thumbnailData:0];
  v35 = [*(a1 + 40) boardItem];
  v36 = [v35 geometry];
  v37 = [v36 geometryWithNewBounds:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];

  v38 = [CRLCanvasInfoGeometry alloc];
  [v37 size];
  v39 = [(CRLCanvasInfoGeometry *)v38 initWithSize:?];
  v40 = [*(a1 + 56) maskInfo];
  v41 = [v40 pathSource];
  v42 = [v41 copy];

  [v37 size];
  [v42 scaleToNaturalSize:?];
  obja = v42;
  v70 = v39;
  v43 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:*(a1 + 56) imageGeometry:v37 maskGeometry:v39 maskPathSource:v42];
  v44 = [CRLCanvasCommandSelectionBehavior alloc];
  v45 = [v30 canvasEditor];
  v74 = v30;
  v46 = [v30 editorController];
  v47 = [v46 selectionPath];
  v48 = [(CRLCanvasCommandSelectionBehavior *)v44 initWithCanvasEditor:v45 type:2 selectionPath:v47 selectionFlags:4];

  v72 = v34;
  [v31 enqueueCommand:v34 withSelectionBehavior:v48];
  v64 = v43;
  [v31 enqueueCommand:v43 withSelectionBehavior:v48];
  [v31 closeGroup];
  v49 = [*(a1 + 48) interactiveCanvasController];
  [v49 layoutIfNeeded];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v50 = [v76 keyEnumerator];
  v51 = [v50 countByEnumeratingWithState:&v81 objects:v90 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v82;
    do
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v82 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v81 + 1) + 8 * j);
        v56 = [v76 objectForKey:v55];
        [*(a1 + 48) p_enqueueCommandsToUpdateMagnetsForLineEnd:11 withClineLayout:v55 withUnscaledPosition:v56];
      }

      v52 = [v50 countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v52);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v7 = v75;
  v57 = [v75 keyEnumerator];
  v58 = [v57 countByEnumeratingWithState:&v77 objects:v89 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v78;
    do
    {
      for (k = 0; k != v59; k = k + 1)
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v77 + 1) + 8 * k);
        v63 = [v7 objectForKey:v62];
        [*(a1 + 48) p_enqueueCommandsToUpdateMagnetsForLineEnd:10 withClineLayout:v62 withUnscaledPosition:v63];

        v7 = v75;
      }

      v59 = [v57 countByEnumeratingWithState:&v77 objects:v89 count:16];
    }

    while (v59);
  }

  [v31 closeGroup];
  v4 = v65;
  WeakRetained = v66;
  v6 = v76;
LABEL_53:

LABEL_54:
}

void sub_1003FD2A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FD2EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FD8FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FD940(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FDB60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FDBA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003FECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FECC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003FECD8(uint64_t a1)
{
  v5 = +[UIColor secondaryLabelColor];
  v2 = [CRLColor colorWithUIColor:v5];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100400948(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040098C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402574(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004025B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004025FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402640(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402684(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004026C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040270C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402750(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402794(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004027D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040281C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402860(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004028A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004028E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402B90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402BD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402F20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100402F64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100403278(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004032BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100403500(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100403544(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004037A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004037E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

float64x2_t sub_100404888(float64x2_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = &qword_101465840;
  do
  {
    result = a1[2];
    *(a2 + v2) = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[1], *(v3 - 4)), *a1, *(v3 - 8)), result, *v3), a1[3], v3[4]);
    v2 += 16;
    ++v3;
  }

  while (v2 != 64);
  return result;
}

float64x2_t sub_1004048D4(float64x2_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = &qword_1014658C0;
  do
  {
    result = a1[2];
    *(a2 + v2) = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[1], *(v3 - 4)), *a1, *(v3 - 8)), result, *v3), a1[3], v3[4]);
    v2 += 16;
    ++v3;
  }

  while (v2 != 64);
  return result;
}

void sub_100404958(float64x2_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = 1.0 - a3;
  *a2 = sub_100407534(a1, 1.0 - a3, a3, 1.0 - a3, a3, 1.0 - a3, a3);
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_100407534(a1, v8, a3, v8, a3, 1.0 - a4, a4);
  *(a2 + 24) = v10;
  *(a2 + 32) = sub_100407534(a1, v8, a3, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 40) = v11;
  *(a2 + 48) = sub_100407534(a1, 1.0 - a4, a4, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 56) = v12;
}

uint64_t sub_100404A2C(double *a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a1[1];
  v6 = a1[2] - *a1;
  v7 = a1[3] - v5;
  v8 = a2[1];
  v9 = a2[2] - *a2;
  v10 = a2[3] - v8;
  v11 = (v7 * (*a2 - *a1) + (v5 - v8) * v6) / (v10 * v6 - v9 * v7);
  *a4 = v11;
  if (v11 >= 0.0)
  {
    v13 = v11 == 1.0;
    v12 = v11 >= 1.0;
  }

  else
  {
    v12 = 1;
    v13 = 0;
  }

  if (!v13 && v12)
  {
    return 0;
  }

  v14 = (v10 * (*a1 - *a2) + (a2[1] - a1[1]) * v9) / (v7 * v9 - v6 * v10);
  *a3 = v14;
  if (v14 >= 0.0)
  {
    v16 = v14 == 1.0;
    v15 = v14 >= 1.0;
  }

  else
  {
    v15 = 1;
    v16 = 0;
  }

  if (!v16 && v15)
  {
    return 0;
  }

  v17 = a1[1];
  *a5 = *a1 + v14 * v6;
  a5[1] = v17 + *a3 * v7;
  return 1;
}

double sub_100404AD8(double *a1, double a2, double a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 - a1[1];
  v6 = v4 - *a1;
  v7 = v6 * v6 + v5 * v5;
  v8 = (1.0 / sqrtf(v7));
  return a3 * -(v6 * v8) + v5 * v8 * a2 - (v3 * -(v6 * v8) + v5 * v8 * v4);
}

double sub_100404B24(double *a1, double a2, double a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (*a1 == v5 && v4 == v6)
  {
    return 0.0;
  }

  v8 = sub_10011F31C(a2, a3, *a1);
  v10 = v9;
  v11 = sub_10011F31C(v5, v6, v3);
  v13 = sub_10011F328(v8, v10, v11, v12);
  v14 = v13 / sub_10011F068(v5, v6, v3, v4);

  return sub_1004C3240(v14, 0.0, 1.0);
}

void sub_100404BEC(float64x2_t *a1, double a2, double a3, double a4)
{
  v23 = a4 * a4;
  v6 = 0.0;
  v7 = 0.125;
  v8 = 1.0;
  do
  {
    v9 = 0.0;
    if (v6 <= v8)
    {
      v10 = 3.40282347e38;
      v11 = v6;
      do
      {
        v12 = sub_10011F20C(a1, v11);
        v14 = sub_10011F31C(v12, v13, a2);
        v16 = sub_100120084(v14, v15);
        if (v16 < v10)
        {
          v10 = v16;
          v9 = v11;
        }

        v11 = v7 + v11;
      }

      while (v11 <= v8);
    }

    v17 = sub_10011F20C(a1, v6);
    v19 = v18;
    v20 = sub_10011F20C(a1, v8);
    v21 = sub_10011F31C(v17, v19, v20);
    if (sub_100120084(v21, v22) < v23)
    {
      break;
    }

    v6 = fmax(v9 - v7, 0.0);
    v8 = fmin(v7 + v9, 1.0);
    v7 = (v8 - v6) * 0.125;
  }

  while (v7 != 0.0);
}

double sub_100404D1C(float64x2_t *a1, double *a2, uint64_t a3)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = v5 - a2[1];
  v8 = v6 - *a2;
  v9 = v8 * v8 + v7 * v7;
  v10 = (1.0 / sqrtf(v9));
  v11 = v7 * v10;
  v12 = -(v8 * v10);
  v13 = v5 * v12 + v11 * v6;
  v14 = a1->f64[1] * v12 + v11 * a1->f64[0] - v13;
  v36.f64[0] = 0.0;
  v36.f64[1] = v14;
  v15 = a1[1].f64[1] * v12 + v11 * a1[1].f64[0] - v13;
  v37 = 0x3FD5555555555555;
  v38 = v15;
  v16 = a1[2].f64[1] * v12 + v11 * a1[2].f64[0] - v13;
  v39 = 0x3FE5555555555555;
  v40 = v16;
  v17 = v12 * a1[3].f64[1] + v11 * a1[3].f64[0] - v13;
  v41 = 0x3FF0000000000000;
  v42 = v17;
  v18 = v15 * 9.0 + v14 * -3.0 + v16 * -9.0 + v17 * 3.0;
  v19 = v15 * -12.0 + v14 * 6.0 + v16 * 6.0;
  v20 = sqrt((v15 * 3.0 + v14 * -3.0) * (v18 * -4.0) + v19 * v19);
  v21 = v18 + v18;
  v22 = (-v19 - v20) / v21;
  v23 = sub_10011F20C(&v36, (v20 - v19) / v21);
  v25 = v24;
  v26 = sub_10011F20C(&v36, v22);
  v27 = fabs(v25);
  v29 = fabs(v28);
  v31 = v26 > 1.0 || v27 < v29 || v26 < 0.0;
  if (!v31 || (v23 >= 0.0 ? (v32 = v23 > 1.0) : (v32 = 1), v32))
  {
    v33 = v26 < 0.0 || v26 > 1.0;
    v23 = v26;
    v27 = v29;
    if (v33)
    {
      return 3.40282347e38;
    }
  }

  *a3 = sub_10011F20C(a1, v23);
  *(a3 + 8) = v34;
  return v27;
}

uint64_t sub_100404F18(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*result == v2)
  {
    *(result + 16) = *a2;
    *(result + 72) = *(*(a2 + 8) + 48);
    *(result + 56) = *(*(a2 + 8) + 32);
    *(result + 40) = *(*(a2 + 8) + 16);
    *(result + 24) = **(a2 + 8);
  }

  *(result + 8) = v2 + 1;
  return result;
}

uint64_t sub_100404F68(const CGPath *a1, uint64_t a2, _OWORD *a3)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  info = a2;
  CGPathApply(a1, &info, sub_100404F18);
  if (!a3)
  {
    return DWORD2(v7);
  }

  *a3 = v8;
  result = DWORD2(v7);
  if (DWORD2(v7) == 3)
  {
    v5 = v10;
    a3[1] = v9;
    a3[2] = v5;
  }

  return result;
}

void sub_1004054C0(double *a1, double *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v11 = a6;
  v12 = *a1;
  v13 = a1[2];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  v19 = a2[2];
  v18 = a2[3];
  v20 = v18 - a2[1];
  v21 = v19 - *a2;
  v22 = v21 * v21 + v20 * v20;
  v23 = (1.0 / sqrtf(v22));
  v24 = v20 * v23;
  v25 = -(v21 * v23);
  v26 = v18 * v25 + v24 * v19;
  v57 = a1[3];
  v58 = a1[1];
  v59.f64[0] = 0.0;
  v59.f64[1] = v58 * v25 + v24 * v12 - v26;
  v60 = 0x3FD5555555555555;
  v61 = v57 * v25 + v24 * v13 - v26;
  v55 = v17;
  v56 = v15;
  v62 = 0x3FE5555555555555;
  v63 = v15 * v25 + v24 * v14 - v26;
  v64 = 0x3FF0000000000000;
  v65 = v17 * v25 + v24 * v16 - v26;
  v27 = objc_alloc_init(NSMutableArray);
  sub_1004099F4(&v59, &v59, v27, 1.0);
  v28 = [v27 count];
  if (v28 >= 1)
  {
    v29 = v28;
    v30 = 0;
    v54 = v14;
    do
    {
      v31 = [v27 objectAtIndex:v30];
      [v31 doubleValue];
      v33 = v32;

      v35 = v33 * (v33 * (v16 * v33 + (1.0 - v33) * v14) + (1.0 - v33) * (v14 * v33 + (1.0 - v33) * v13)) + (1.0 - v33) * (v33 * (v14 * v33 + (1.0 - v33) * v13) + (1.0 - v33) * (v13 * v33 + (1.0 - v33) * v12));
      v36 = a2[2] - *a2;
      v37 = v35 - *a2;
      if (v36 * v37 > -0.001)
      {
        v34 = 1.0 - v33;
        v38 = v33 * (v33 * (v55 * v33 + v34 * v56) + v34 * (v56 * v33 + v34 * v57)) + v34 * (v33 * (v56 * v33 + v34 * v57) + v34 * (v57 * v33 + v34 * v58));
        v39 = a2[1];
        v40 = a2[3] - v39;
        v41 = v40 * v40 + v36 * v36;
        v42 = (v38 - v39) * (v38 - v39) + v37 * v37;
        if (v40 * (v38 - v39) > -0.001 && v42 <= v41)
        {
          if (!v11)
          {
            break;
          }

          v44 = v13;
          v45 = v16;
          v46 = v12;
          v47 = sqrt(v42) / sqrt(v41);
          v48 = [CRLPathIntersection alloc];
          if (a5)
          {
            v49 = a4;
            v50 = v47;
            v51 = a3;
            v52 = v33;
          }

          else
          {
            v49 = a3;
            v50 = v33;
            v51 = a4;
            v52 = v47;
          }

          v53 = [(CRLPathIntersection *)v48 initWithSegment:v49 atT:v51 onSegmentB:v50 atT:v52 atPoint:v35, v38];
          [v11 addObject:v53];

          v12 = v46;
          v16 = v45;
          v13 = v44;
          v14 = v54;
        }
      }

      ++v30;
    }

    while (v29 != v30);
  }
}

void sub_1004057E0(double *a1, double *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = 0.0;
  v13 = 0.0;
  v11 = CGPointZero;
  if (sub_100404A2C(a1, a2, &v13, &v12, &v11.x))
  {
    v8 = a5;
    v9 = [CRLPathIntersection alloc];
    v10 = [(CRLPathIntersection *)v9 initWithSegment:a3 atT:a4 onSegmentB:v13 atT:v12 atPoint:v11];
    [v8 addObject:v10];
  }
}

double sub_100406200(float64x2_t *a1, double *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = sub_10011F31C(a2[2], a2[3], *a2);
  v8 = sub_10011F2FC(v6, v7);
  v10 = v9;
  v11 = sub_10011F31C(a1->f64[0], a1->f64[1], v5);
  v13 = sub_10011F2FC(v11, v12);
  v43.f64[0] = 0.0;
  v43.f64[1] = sub_10011F328(v8, v10, v13, v14);
  v15 = sub_10011F31C(a1[1].f64[0], a1[1].f64[1], v5);
  v17 = sub_10011F2FC(v15, v16);
  v44 = 0x3FD5555555555555;
  v45 = sub_10011F328(v8, v10, v17, v18);
  v19 = sub_10011F31C(a1[2].f64[0], a1[2].f64[1], v5);
  v21 = sub_10011F2FC(v19, v20);
  v46 = 0x3FE5555555555555;
  v47 = sub_10011F328(v8, v10, v21, v22);
  v23 = sub_10011F31C(a1[3].f64[0], a1[3].f64[1], v5);
  v25 = sub_10011F2FC(v23, v24);
  v48 = 0x3FF0000000000000;
  v49 = sub_10011F328(v8, v10, v25, v26);
  v27 = v45 * 9.0 + v43.f64[1] * -3.0 + v47 * -9.0 + v49 * 3.0;
  v28 = v45 * -12.0 + v43.f64[1] * 6.0 + v47 * 6.0;
  v29 = sqrt((v45 * 3.0 + v43.f64[1] * -3.0) * (v27 * -4.0) + v28 * v28);
  v30 = (-v28 - v29) / (v27 + v27);
  v31 = sub_10011F20C(&v43, (v29 - v28) / (v27 + v27));
  v33 = v32;
  v34 = sub_10011F20C(&v43, v30);
  if ((v34 < 0.0 || v33 > v35 || v34 > 1.0) && v31 >= 0.0 && v31 <= 1.0)
  {
    goto LABEL_18;
  }

  v39 = -2.0;
  if (v34 >= 0.0 && v34 <= 1.0)
  {
    v31 = v34;
    v33 = v35;
LABEL_18:
    *a3 = sub_10011F20C(a1, v31);
    *(a3 + 8) = v41;
    return fabs(v33);
  }

  return v39;
}

void sub_100406794(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004067D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040681C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100406860(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100406BAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100406BF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040707C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004070C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004074AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004074F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100407534(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = vmlaq_n_f64(vmulq_n_f64(v8, a7), v7, a6);
  *&result = *&vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[3], a7), v8, a6), a5), v9, a4), a3), vmlaq_n_f64(vmulq_n_f64(v9, a5), vmlaq_n_f64(vmulq_n_f64(v7, a7), *a1, a6), a4), a2);
  return result;
}

void sub_100407578(float64x2_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v13 = a2;
  v14 = a5;
  v78 = 0;
  v79 = 0.0;
  [v13 transformedTotalCoordinate:a3 betweenElement:a4 andElement:&v78 getElement:&v79 getPercentage:{a1->f64[0], a1->f64[1]}];
  v76 = v15;
  v77 = v16;
  v82.f64[0] = v15;
  v82.f64[1] = v16;
  [v13 curvatureAt:v78 fromElement:v79];
  v18 = v17;
  [v13 myGradientAt:v78 fromElement:v79];
  v20 = v19;
  v22 = v21;
  [v13 transformedTotalCoordinate:a3 betweenElement:a4 andElement:&v78 getElement:&v79 getPercentage:{a1[3].f64[0], a1[3].f64[1]}];
  v74 = v23;
  v75 = v24;
  v87 = v23;
  v88 = v24;
  [v13 curvatureAt:v78 fromElement:v79];
  v26 = v25;
  [v13 myGradientAt:v78 fromElement:v79];
  v72 = v28;
  v73 = v27;
  v29 = 0.5;
  if (v18 <= 0.5)
  {
    v30 = v18;
  }

  else
  {
    v30 = 0.5;
  }

  if (v30 >= -0.5)
  {
    v31 = v30;
  }

  else
  {
    v31 = -0.5;
  }

  if (v26 <= 0.5)
  {
    v29 = v26;
  }

  if (v29 < -0.5)
  {
    v29 = -0.5;
  }

  [v13 lineWidth];
  v33 = v32 * a1->f64[1];
  v34 = v32 * a1[2].f64[1];
  v35 = v32 * a1[3].f64[1];
  v36 = a1[1].f64[0] - a1->f64[0];
  v37 = v32 * a1[1].f64[1] - v33;
  v38 = sub_10011F340(v20, v22, 1.0 - v33 * v31);
  v39 = v37 * sub_10011F2FC(-v22, v20) + v36 * v38;
  v83 = sub_10011F334(v76, v77, v39);
  v84 = v40;
  v41 = a1[2].f64[0] - a1[3].f64[0];
  v42 = sub_10011F340(v73, v72, 1.0 - v35 * v71);
  v43 = (v34 - v35) * sub_10011F2FC(-v72, v73) + v41 * v42;
  v85 = sub_10011F334(v74, v75, v43);
  v86 = v44;
  if (a6 && (a6 > 19 || (v45 = sub_10011F31C(v74, v75, v76), sub_100120084(v45, v46) <= 0.5)) || (v47 = sub_10011F20C(&v82, 0.33), v49 = v48, [v13 transformedTotalCoordinate:a3 betweenElement:a4 andElement:&v78 getElement:&v79 getPercentage:{sub_10011F20C(a1, 0.33)}], v51 = sub_10011F31C(v47, v49, v50), v53 = sub_100120084(v51, v52) + 0.0, v54 = sub_10011F20C(&v82, 0.5), v56 = v55, objc_msgSend(v13, "transformedTotalCoordinate:betweenElement:andElement:getElement:getPercentage:", a3, a4, &v78, &v79, sub_10011F20C(a1, 0.5)), v58 = sub_10011F31C(v54, v56, v57), v60 = v53 + sub_100120084(v58, v59), v61 = sub_10011F20C(&v82, 0.66), v63 = v62, objc_msgSend(v13, "transformedTotalCoordinate:betweenElement:andElement:getElement:getPercentage:", a3, a4, &v78, &v79, sub_10011F20C(a1, 0.66)), v65 = sub_10011F31C(v61, v63, v64), v60 + sub_100120084(v65, v66) <= 0.2))
  {
    if (a7)
    {
      [v14 moveToPoint:*&v82];
    }

    else
    {
      [v14 currentPoint];
      v67 = v82;
      v69 = sub_10011F31C(v82.f64[0], v82.f64[1], v68);
      if (sub_100120084(v69, v70) > 1.0)
      {
        [v14 lineToPoint:*&v67];
      }
    }

    [v14 curveToPoint:v87 controlPoint1:v88 controlPoint2:{v83, v84, v85, v86}];
  }

  else
  {
    sub_100404958(a1, v81, 0.0, 0.5);
    sub_100404958(a1, v80, 0.5, 1.0);
    sub_100407578(v81, v13, a3, a4, v14, (a6 + 1), a7);
    sub_100407578(v80, v13, a3, a4, v14, (a6 + 1), 0);
  }
}

void sub_1004079FC(float64x2_t *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [v11 count];
  v13 = v12 - 1;
  if ((v12 - 1) < 2)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v108 = v12 - 1;
  v104 = v10;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = a1[1].f64[0];
  v18 = a1[2].f64[0];
  v19 = a1[3].f64[0];
  v20 = fmin(a1->f64[0], fmin(v17, fmin(v18, v19)));
  v21 = 2 - v12;
  v22 = fmax(a1->f64[0], fmax(v17, fmax(v18, v19)));
  v23 = 1;
  do
  {
    v24 = [v11 objectAtIndex:v23];
    [v24 t];
    v26 = v25;
    if (v25 > v20 && v25 < v22)
    {
      if (!v14)
      {
        v14 = objc_alloc_init(NSMutableArray);
      }

      v111.f64[0] = v26;
      v111.f64[1] = -100.0;
      v112.f64[0] = v26;
      v112.f64[1] = 100.0;
      sub_1004054C0(a1->f64, v111.f64, v23, v23, 0, v14);
    }

    v28 = a1[3].f64[0];
    if (v26 < v28)
    {
      v15 = v23;
    }

    if (v26 > v28)
    {
      v29 = v23;
    }

    else
    {
      v29 = 0;
    }

    if (!v16)
    {
      v16 = v29;
    }

    ++v23;
  }

  while (v21 + v23 != 1);
  v10 = v104;
  v13 = v108;
  if (!v16)
  {
LABEL_23:
    v16 = v13;
    if (!v14)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

  if (!v14)
  {
LABEL_37:
    v73 = [v11 objectAtIndex:v15];
    v74 = [v11 objectAtIndex:v16];
    [v73 t];
    v110 = v75;
    [v74 t];
    v77 = v76;
    [v73 skew];
    v79 = v78;
    [v74 skew];
    v81 = v80;
    [v9 lineWidth];
    v83 = v82;
    [v9 length];
    v84 = 0;
    v85 = vdupq_n_s64(0x7FF0000000000000uLL);
    v86 = vdupq_lane_s64(v110, 0);
    v87 = vdupq_lane_s64(COERCE__INT64(v77 - *&v110), 0);
    v88 = vdupq_lane_s64(COERCE__INT64(v79 + v81), 0);
    v89 = vdupq_lane_s64(COERCE__INT64(-v79), 0);
    v90.f64[0] = NAN;
    v90.f64[1] = NAN;
    v91 = vnegq_f64(v90);
    __asm
    {
      FMOV            V7.2D, #0.5
      FMOV            V16.2D, #1.0
    }

    v95 = v83 / v94;
    do
    {
      f64 = a1[v84].f64;
      v116 = vld2q_f64(f64);
      v97 = vdivq_f64(vsubq_f64(v116.val[0], v86), v87);
      v116.val[0] = vmlaq_f64(v116.val[0], v116.val[1], vmulq_n_f64(vmlaq_f64(v89, v88, vmaxnmq_f64(vminnmq_f64(vbslq_s8(vcgeq_s64(vandq_s8(v97, v91), v85), _Q7, v97), _Q16), 0)), v95));
      *f64 = v116.val[0].f64[0];
      a1[v84 + 1].f64[0] = v116.val[0].f64[1];
      v84 += 2;
    }

    while (v84 != 4);
    sub_100407578(a1, v9, [v73 segment] + 1, objc_msgSend(v74, "segment"), v10, 0, a4);

    goto LABEL_40;
  }

LABEL_24:
  if (![v14 count])
  {
    goto LABEL_37;
  }

  v105 = v10;
  [v14 sortUsingSelector:"compareT:"];
  v109 = 0.0;
  v98 = [[CRLPathIntersection alloc] initWithSegment:v15 atT:1.0 atPoint:1000.0, 0.0];
  [v14 addObject:?];
  v103 = [v14 count];
  if (v103)
  {
    v30 = 0;
    v99 = v103 - 1;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v101 = vdupq_n_s64(0x7FF0000000000000uLL);
    v102 = vnegq_f64(v31);
    __asm { FMOV            V0.2D, #0.5 }

    v100 = _Q0;
    do
    {
      v36 = [v14 objectAtIndex:v30];
      [v36 t];
      v37 = a1[1];
      v111 = *a1;
      v112 = v37;
      v38 = a1[3];
      v113 = a1[2];
      v114 = v38;
      v39 = vmlaq_n_f64(vmulq_n_f64(v113, v109), v112, 1.0 - v109);
      v106 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v38, v109), v113, 1.0 - v109), v109), v39, 1.0 - v109), v109), vmlaq_n_f64(vmulq_n_f64(v39, v109), vmlaq_n_f64(vmulq_n_f64(v112, v109), v111, 1.0 - v109), 1.0 - v109), 1.0 - v109);
      v41 = vmlaq_n_f64(vmulq_n_f64(v112, v40), v111, 1.0 - v40);
      v42 = vmlaq_n_f64(vmulq_n_f64(v113, v40), v112, 1.0 - v40);
      v43 = vmlaq_n_f64(vmulq_n_f64(v114, v40), v113, 1.0 - v40);
      v111 = v106;
      v112 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v43, v109), v42, 1.0 - v109), v109), vmlaq_n_f64(vmulq_n_f64(v42, v109), v41, 1.0 - v109), 1.0 - v109);
      v44 = vmlaq_n_f64(vmulq_n_f64(v42, v40), v41, 1.0 - v40);
      v45 = vmlaq_n_f64(vmulq_n_f64(v43, v40), v42, 1.0 - v40);
      v46 = vmlaq_n_f64(vmulq_n_f64(v45, v109), v44, 1.0 - v109);
      v109 = v40;
      v113 = v46;
      v114 = vmlaq_n_f64(vmulq_n_f64(v45, v40), v44, 1.0 - v40);
      [v36 point];
      v48 = v47;
      v49 = [v36 segment];
      v50 = [v36 segment];
      if (v106.f64[0] <= v48)
      {
        if (v30 == v99)
        {
          v51 = v50 + 1;
        }

        else
        {
          v51 = v50;
        }

        v49 -= v30 != v99;
      }

      else
      {
        v51 = v50 + 1;
      }

      v52 = [v11 objectAtIndex:{v49, v106.f64[0]}];
      v53 = [v11 objectAtIndex:v51];
      [v52 t];
      v107 = v54;
      [v53 t];
      v56 = v55;
      [v52 skew];
      v58 = v57;
      [v53 skew];
      v60 = v59;
      [v9 lineWidth];
      v62 = v61;
      [v9 length];
      v63 = 0;
      v64 = vdupq_lane_s64(v107, 0);
      v65 = vdupq_lane_s64(COERCE__INT64(v56 - *&v107), 0);
      v66 = vdupq_lane_s64(COERCE__INT64(v58 + v60), 0);
      v67 = vdupq_lane_s64(COERCE__INT64(-v58), 0);
      v69 = v62 / v68;
      do
      {
        v70 = &v111.f64[v63];
        v115 = vld2q_f64(v70);
        v71 = vdivq_f64(vsubq_f64(v115.val[0], v64), v65);
        __asm { FMOV            V17.2D, #1.0 }

        v115.val[0] = vmlaq_f64(v115.val[0], v115.val[1], vmulq_n_f64(vmlaq_f64(v67, v66, vmaxnmq_f64(vminnmq_f64(vbslq_s8(vcgeq_s64(vandq_s8(v71, v102), v101), v100, v71), _Q17), 0)), v69));
        *v70 = v115.val[0].f64[0];
        *(&v111 + v63 * 8 + 16) = v115.val[0].f64[1];
        v63 += 4;
      }

      while (v63 != 8);
      sub_100407578(&v111, v9, [v52 segment] + 1, objc_msgSend(v53, "segment"), v105, 0, a4 & 1);

      LOBYTE(a4) = 0;
      ++v30;
    }

    while (v30 != v103);
  }

  v10 = v105;
LABEL_40:
}

void sub_1004088C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100408908(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CGFloat sub_10040907C(const CGPath *a1, double *a2)
{
  v4 = sub_10011F31C(a2[2], a2[3], *a2);
  v6 = sub_10011F2FC(v4, v5);
  v9[0] = a2;
  v9[1] = 0xC000000000000000;
  v10 = CGPointZero;
  v11 = v6;
  v12 = v7;
  sub_1001902A0(a1, v9, sub_1004090F4);
  return v10.x;
}

void sub_1004090F4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3)
  {
    v5 = *(a2 + 8);
    v16 = *(v5 + 48);
    v18 = CGPointZero;
    v6 = sub_100406200(v5, *a1, &v18);
    if (v6 > *(a1 + 8))
    {
      *(a1 + 16) = v18;
      *(a1 + 8) = v6;
    }

    v4 = v16;
  }

  else if (*a2 == 1)
  {
    v4 = *(*(a2 + 8) + 16);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136D3F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136D408();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136D490();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"void CRLPathNearestAngleOnPathToLineApplier(void * _Nonnull, const CRLPathSegment * _Nonnull)"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPathDistortion.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2077 isFatal:0 description:"CRLPathNearestAngleOnPathToLineApplier doesn't handle quad curves or some other element type"];

    v4 = *(*(a2 + 8) + 32);
  }

  v10 = *(&v4 + 1);
  v17 = v4;
  v11 = sub_10011F31C(*&v4, *(&v4 + 1), **a1);
  v13 = sub_10011F2FC(v11, v12);
  v15 = sub_10011F328(*(a1 + 32), *(a1 + 40), v13, v14);
  if (v15 > *(a1 + 8))
  {
    *(a1 + 16) = v17;
    *(a1 + 24) = v10;
    *(a1 + 8) = v15;
  }
}

void sub_1004092E4(float64x2_t *a1, double *a2, uint64_t a3, uint64_t a4, int a5, void *a6, double a7, double a8, double a9, double a10)
{
  v36 = a6;
  v39 = 0.0;
  v40 = 0.0;
  sub_100409594(a1->f64, a2, &v40, &v39);
  v19 = v40;
  if (v40 <= 1.0)
  {
    v20 = v39;
    if (v39 >= 0.0)
    {
      if ((v39 - v40) * a7 >= 0.0001)
      {
        if (v39 - v40 >= 0.8)
        {
          v34 = (v40 + v39) * 0.5;
          sub_100404958(a1, v41, v40, v34);
          sub_1004092E4(a2, v41, a4, a3, a5 ^ 1u, v36, a9, a10, (v20 - v34) * a7, a8 + v19 * a7);
          sub_100404958(a1, v41, (v19 + v20) * 0.5, v20);
          v27 = a8 + v34 * a7;
          v28 = a5 ^ 1u;
          v29 = a2;
          v30 = a9;
          v31 = a10;
          v32 = a4;
          v33 = (v20 - v34) * a7;
        }

        else
        {
          sub_100404958(a1, v41, v40, v39);
          v27 = a8 + v19 * a7;
          v28 = a5 ^ 1u;
          v29 = a2;
          v30 = a9;
          v31 = a10;
          v32 = a4;
          v33 = (v20 - v19) * a7;
        }

        sub_1004092E4(v29, v41, v32, a3, v28, v36, v30, v31, v33, v27);
      }

      else
      {
        v37 = 0.0;
        v38 = 0.0;
        sub_100404958(a1, v41, v40, v39);
        sub_100409594(a2, v41, &v38, &v37);
        if ((v37 - v38) * a9 < 0.1)
        {
          v21 = (v37 + v38) * a9 * 0.5 + a10;
          v22 = [CRLPathIntersection alloc];
          if (a5)
          {
            v23 = a4;
            v24 = v21;
            v25 = a3;
            v26 = (v19 + v20) * a7 * 0.5 + a8;
          }

          else
          {
            v23 = a3;
            v24 = (v19 + v20) * a7 * 0.5 + a8;
            v25 = a4;
            v26 = v21;
          }

          v35 = [(CRLPathIntersection *)v22 initWithSegment:v23 atT:v25 onSegmentB:v24 atT:v26 atPoint:CGPointZero.x, CGPointZero.y, v36];
          [v36 addObject:v35];
        }
      }
    }
  }
}

double *sub_100409594(double *a1, double *a2, double *a3, double *a4)
{
  v6 = a2[6];
  v7 = a2[7];
  v8 = v7 - a2[1];
  v9 = v6 - *a2;
  v10 = v9 * v9 + v8 * v8;
  v11 = (1.0 / sqrtf(v10));
  v12 = v8 * v11;
  v13 = -(v9 * v11);
  v14 = v7 * v13 + v12 * v6;
  v15 = a1[1] * v13 + v12 * *a1 - v14;
  v39[0] = 0;
  *&v39[1] = v15;
  v16 = a1[3] * v13 + v12 * a1[2] - v14;
  v39[2] = 0x3FD5555555555555;
  *&v39[3] = v16;
  v17 = v13 * a1[5] + v12 * a1[4] - v14;
  v39[4] = 0x3FE5555555555555;
  *&v39[5] = v17;
  v18 = v13 * a1[7] + v12 * a1[6] - v14;
  v39[6] = 0x3FF0000000000000;
  *&v39[7] = v18;
  v20 = a2[2];
  v19 = a2[3];
  v21 = v13 * v19 + v12 * v20 - v14;
  v22 = v13 * a2[5] + v12 * a2[4] - v14;
  v23 = fmin(v22, 0.0);
  v24 = fmin(v21, v23);
  v25 = fmax(v22, 0.0);
  v26 = fmax(v21, v25);
  if (v24 == v26)
  {
    v27 = sqrt(v8 * v8 + v9 * v9);
    v28 = v20 + v8 / v27 * 1.0e-10;
    v29 = v19 + v9 / v27 * 1.0e-10;
    a2[2] = v28;
    a2[3] = v29;
    v30 = v13 * v29 + v12 * v28 - v14;
    v24 = fmin(v30, v23);
    v26 = fmax(v30, v25);
  }

  if (v24 == v26)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136D4B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136D4CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136D554();
    }

    v31 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v31);
    }

    v32 = [NSString stringWithUTF8String:"void clipToFatCurve(CRLDoublePoint *, CRLDoublePoint *, CRLDoubleFloat * _Nonnull, CRLDoubleFloat * _Nonnull)"];
    v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPathDistortion.m"];
    [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:500 isFatal:0 description:"Degenerate curve! Cannot do intersection logic correctly"];
  }

  *a3 = 2.0;
  *a4 = -1.0;
  sub_100409930(a3, a4, v39, v24);
  result = sub_100409930(a3, a4, v39, v26);
  for (i = 0; i != 8; i += 2)
  {
    v36 = *&v39[i + 1];
    if (v36 > v24 && v36 < v26)
    {
      v38 = *&v39[i];
      *a3 = fmin(*a3, v38);
      *a4 = fmax(*a4, v38);
    }
  }

  return result;
}

void sub_1004098A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004098EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double *sub_100409930(double *result, double *a2, uint64_t a3, double a4)
{
  v4 = 0;
  v5 = (a3 + 24);
  v6 = 3;
  do
  {
    if (v4 <= 2)
    {
      v7 = (a3 + 16 * v4);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v7[1];
        if ((v10 <= a4 || *v9 <= a4) && (v10 >= a4 || *v9 >= a4))
        {
          v11 = *v7;
          v12 = *(v9 - 1) - *v7;
          if (v12 != 0.0)
          {
            v11 = v12 * (a4 - (v10 - v11 * (*v9 - v10) / v12)) / (*v9 - v10);
          }

          if (v11 < *result)
          {
            *result = v11;
          }

          if (v11 > *a2)
          {
            *a2 = v11;
          }
        }

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    ++v4;
    v5 += 2;
    --v6;
  }

  while (v4 != 4);
  return result;
}

void sub_1004099F4(float64x2_t *a1, uint64_t a2, void *a3, double a4)
{
  v15 = 2.0;
  v13 = a3;
  v14 = -1.0;
  sub_100409930(&v15, &v14, a2, 0.0);
  v7 = v15;
  if (v15 <= 1.0)
  {
    v8 = v14;
    if (v14 >= 0.0)
    {
      if (v14 - v15 >= 0.00005)
      {
        if (v14 - v15 >= a4 * 0.8)
        {
          v12 = (v15 + v14) * 0.5;
          sub_100404958(a1, v16, v15, v12);
          sub_1004099F4(a1, v16, v13, v12 - v7);
          sub_100404958(a1, v16, (v7 + v8) * 0.5, v8);
          v11 = v8 - v12;
          v10 = a1;
        }

        else
        {
          sub_100404958(a1, v16, v15, v14);
          v10 = a1;
          v11 = v8 - v7;
        }

        sub_1004099F4(v10, v16, v13, v11);
      }

      else
      {
        v9 = [NSNumber numberWithDouble:(v15 + v14) * 0.5];
        [v13 addObject:v9];
      }
    }
  }
}

void sub_100409B94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100409BD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100409F10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100409F54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040A114(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040A158(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040A944(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040A988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040A9CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040AA10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040AA54(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

uint64_t sub_10040AA98(uint64_t result)
{
  *(*(result + 32) + 112) = 0;
  *(*(result + 32) + 113) = 0;
  return result;
}

uint64_t sub_10040AAAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10040AAC4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 canInsertBoardItemsFromDragOperationForDragInfo:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) nativeProvidersForDynamicDragInsertionWithDragInfo:*(a1 + 40)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040AC04;
  block[3] = &unk_10183AB38;
  block[4] = v7;
  dispatch_sync(v8, block);
  v9 = dispatch_get_global_queue(2, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10040AC50;
  v10[3] = &unk_101855C38;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  dispatch_async(v9, v10);
}

void sub_10040AC04(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  *(*(a1 + 32) + 112) = 0;
  *(*(a1 + 32) + 113) = 0;
}

void sub_10040AC50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(*(a1 + 40) + 8) + 40) count];
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v27 = v2;
    if (qword_101AD5B68 != -1)
    {
      sub_10136D82C();
    }

    v4 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 40) + 8) + 40);
      v6 = v4;
      *buf = 134217984;
      *v38 = [v5 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "creating infos from %lu native objects on pasteboard for drag-insert", buf, 0xCu);
    }

    v7 = [NSMutableArray arrayWithCapacity:v3];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = *(*(*(a1 + 40) + 8) + 40);
    v8 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        v11 = 0;
        do
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * v11);
          v13 = [*(a1 + 32) interactiveCanvasController];
          v14 = [v13 editingCoordinator];
          v15 = [v14 boardItemFactory];
          v16 = [v12 newBoardItemWithFactory:v15 bakedSize:0];

          if (v16)
          {
            [v7 addObject:v16];
          }

          else
          {
            v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10136D840();
            }

            v18 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              *v38 = v17;
              *&v38[4] = 2082;
              *&v38[6] = "[CRLDragAndDropController draggingEntered:atScaledPoint:]_block_invoke_2";
              v39 = 2082;
              v40 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m";
              v41 = 1024;
              v42 = 231;
              v43 = 2082;
              v44 = "boardItem";
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10136D868();
            }

            v19 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v22 = v19;
              v23 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              *v38 = v17;
              *&v38[4] = 2114;
              *&v38[6] = v23;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v20 = [NSString stringWithUTF8String:"[CRLDragAndDropController draggingEntered:atScaledPoint:]_block_invoke"];
            v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
            [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:231 isFatal:0 description:"invalid nil value for '%{public}s'", "boardItem"];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v9);
    }

    v2 = v27;
  }

  else
  {
    v7 = 0;
  }

  v24 = *(a1 + 32);
  v25 = *(v24 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040B1DC;
  block[3] = &unk_101860668;
  v30 = v7;
  v31 = v24;
  v32 = *(a1 + 48);
  v26 = v7;
  dispatch_async(v25, block);

  objc_autoreleasePoolPop(v2);
}

void sub_10040B110(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040B154(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040B198(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040B1DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 120) addObjectsFromArray:?];
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    if (qword_101AD5B68 != -1)
    {
      sub_10136D890();
    }

    v3 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 48) + 8) + 40);
      v5 = v3;
      *buf = 134217984;
      v17 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "making %lu infos from importable items provided for drag insert", buf, 0xCu);
    }

    v6 = [[CRLPasteboardMultipleImportableBoardItemProvider alloc] initWithImportableBoardItemProviders:*(*(*(a1 + 48) + 8) + 40)];
    v7 = [*(a1 + 40) p_alertPresenter];
    [(CRLPasteboardMultipleImportableBoardItemProvider *)v6 setAlertPresenter:v7];

    objc_storeStrong((*(a1 + 40) + 128), v6);
    v8 = [*(a1 + 40) interactiveCanvasController];
    v9 = [v8 editingCoordinator];
    v10 = [v9 boardItemFactory];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10040B464;
    v14[3] = &unk_10183AE28;
    v14[4] = *(a1 + 40);
    v15 = v6;
    v11 = v6;
    [(CRLPasteboardMultipleImportableBoardItemProvider *)v11 provideBoardItemsWithFactory:v10 completionHandler:v14];
  }

  else
  {
    *(*(a1 + 40) + 112) = 1;
    *(*(a1 + 40) + 113) = 1;
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

void sub_10040B420(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040B464(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10040B4FC;
  v5[3] = &unk_10183AE28;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void sub_10040B4FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v3 = [*(a1 + 32) boardItems];
    if ([v3 count])
    {
      [*(*(a1 + 40) + 120) addObjectsFromArray:v3];
    }

    *(*(a1 + 40) + 112) = 1;
    *(*(a1 + 40) + 113) = 1;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 128);
  *(v4 + 128) = 0;

  objc_autoreleasePoolPop(v2);
}

void sub_10040B59C(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040BB38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040BB7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040BBD4(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040BEB4(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040BEF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040BF3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040C384(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040C3C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040C40C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040C450(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040C494(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040C4D8(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040C604(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040C9E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040CA28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040CA6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040CAB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040CE7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040CEC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040CF04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040CF48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040D15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10040D174(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
    {
      [*(a1 + 40) setShouldHidePromisedFileTypes:1];
      v3 = [*(a1 + 32) dragOperationForDragInfo:*(a1 + 40) atUnscaledPoint:{*(a1 + 64), *(a1 + 72)}];
      [*(a1 + 40) setShouldHidePromisedFileTypes:0];
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    [*(a1 + 48) p_updateHighlightStateForDragInfo:*(a1 + 40) atUnscaledPoint:v3 dragOperation:v4 dragDestination:{*(a1 + 64), *(a1 + 72)}];
    if (v3 != 64)
    {
      *(*(a1 + 48) + 56) = *(a1 + 64);
      if (qword_101AD5B68 != -1)
      {
        sub_10136E064();
      }

      v5 = off_1019EDBC0;
      if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 64);
        v8 = *(a1 + 72);
        v9 = v5;
        v40.x = v7;
        v40.y = v8;
        v10 = NSStringFromCGPoint(v40);
        *buf = 138412546;
        v37 = v6;
        v38 = 2112;
        v39 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "p_performDragOperationWithDragInfo:onDragDestination: %@ atUnscaledPoint: %@", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
      v12 = [*(a1 + 32) repToHighlightForDragInfo:*(a1 + 40) atUnscaledPoint:{*(a1 + 64), *(a1 + 72)}];
      if (!*(a1 + 32) && (*(*(a1 + 48) + 96) & 1) == 0)
      {
        v13 = [WeakRetained canvasEditor];
        v14 = [v13 repToHighlightForDragInfo:*(a1 + 40) atUnscaledPoint:{*(a1 + 64), *(a1 + 72)}];

        v12 = v14;
      }

      v15 = [v12 info];
      v16 = v15;
      if (v15 && [v15 isSelectable] && objc_msgSend(v12, "shouldSelectInfoWhenTargetOfDrag:", *(a1 + 40)) && (objc_msgSend(WeakRetained, "currentSelectionPathContainsInfo:", v16) & 1) == 0)
      {
        v17 = [WeakRetained canvasEditor];
        v18 = [v17 selectionPathWithInfo:v16];

        v19 = [WeakRetained editorController];
        [v19 setSelectionPath:v18];
      }

      v20 = *(a1 + 32);
      if (v20 && !*(*(a1 + 48) + 88))
      {
        *(*(*(a1 + 56) + 8) + 24) = [v20 handleDragOperation:v3 withDragInfo:*(a1 + 40) atUnscaledPoint:{*(a1 + 64), *(a1 + 72)}];
        if (qword_101AD5B68 != -1)
        {
          sub_10136E078();
        }

        v24 = off_1019EDBC0;
        if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 32);
          v26 = *(*(*(a1 + 56) + 8) + 24);
          *buf = 138412546;
          v37 = v25;
          v38 = 1024;
          LODWORD(v39) = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "dragDestination %@ handled drag operation. Success: %i", buf, 0x12u);
        }
      }

      else if ([*(a1 + 48) p_shouldInsertDraggedBoardItems:*(a1 + 40)])
      {
        v21 = *(a1 + 48);
        if (v21[17])
        {
          [v21[17] commitDragToInsert];
          v22 = *(a1 + 48);
          v23 = *(v22 + 136);
          *(v22 + 136) = 0;

          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        else
        {
          *(*(*(a1 + 56) + 8) + 24) = [v21 insertBoardItemsForDragInfo:*(a1 + 40) atPoint:v12 onRep:{*(a1 + 64), *(a1 + 72)}];
        }
      }

      if (*(*(a1 + 48) + 136))
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10136E0A0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10136E0C8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10136E164();
        }

        v27 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v27);
        }

        v28 = [NSString stringWithUTF8String:"[CRLDragAndDropController p_performDragOperationWithDragInfo:onDragDestination:atUnscaledPoint:]_block_invoke"];
        v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
        [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:645 isFatal:0 description:"expected nil value for '%{public}s'", "self->_dragToInsertController"];

        v30 = *(*(a1 + 48) + 136);
      }

      else
      {
        v30 = 0;
      }

      [v30 cancelDragToInsert];
      v31 = *(a1 + 48);
      v32 = *(v31 + 136);
      *(v31 + 136) = 0;

      v33 = *(a1 + 48);
      v34 = *(v33 + 144);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10040D7A0;
      block[3] = &unk_10183AB38;
      block[4] = v33;
      dispatch_async(v34, block);
    }
  }
}

void sub_10040D690(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040D6D4(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040D718(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040D75C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040D7A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 128) cancel];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = 0;

  objc_autoreleasePoolPop(v2);
}

void sub_10040DA20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040DA64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040DAA8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 128) cancel];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = 0;

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10040DCF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040DDC4;
  block[3] = &unk_101860A38;
  v10 = v3;
  v11 = &v12;
  block[4] = v4;
  v6 = v3;
  dispatch_sync(v5, block);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_10040DDC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 112) == 1)
  {
    v3 = *(v1 + 120);
    if (v3)
    {
      if ([v3 count])
      {
        v4 = *(*(a1 + 32) + 120);
        v8 = [*(a1 + 40) info];
        if ([v4 containsObject:?])
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        else
        {
          v5 = *(*(a1 + 32) + 120);
          v6 = [*(a1 + 40) repForSelecting];
          v7 = [v6 info];
          *(*(*(a1 + 48) + 8) + 24) = [v5 containsObject:v7] ^ 1;
        }
      }
    }
  }
}

void sub_10040E7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10040E824(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040E868(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040E8AC(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040E8F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040E934(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040E978(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 112);
  v2 = [*(a1[4] + 120) copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10040E9D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040EA1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040EF34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040EF78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040F520(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040F564(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040F768(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10040F9FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 layoutForInfo:{*(*(&v16 + 1) + 8 * v8), v16}];
        v10 = *(*(a1 + 40) + 8);
        v11 = [v9 geometryInRoot];
        [v11 frame];
        v21.origin.x = v12;
        v21.origin.y = v13;
        v21.size.width = v14;
        v21.size.height = v15;
        *(*(*(a1 + 40) + 8) + 32) = CGRectUnion(v10[1], v21);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void sub_10040FF00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040FF44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10040FF88(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) p_modalOperationPresenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004100A0;
  v9[3] = &unk_101860C60;
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v14 = *(a1 + 80);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  [v3 continueAsynchronousWorkOnMainThreadUsingBlock:v9];
}

void sub_1004100A0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) p_modalOperationPresenter];
    [v2 endModalOperationWithToken:*(a1 + 32)];
  }

  if ([*(a1 + 48) isCancelled])
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 48) boardItems];
    if ([v5 count])
    {
      v6 = [*(a1 + 56) canvasEditor];
      if (qword_101AD5B68 != -1)
      {
        sub_10136E89C();
      }

      v7 = off_1019EDBC0;
      if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Inserting importable infos %@", buf, 0xCu);
      }

      v8 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:0 required:1 shouldEndEditing:0 fromDragToInsertController:0 insertFloating:*(*(a1 + 40) + 104) targetZOrder:*(a1 + 80), *(a1 + 88)];
      if ([v5 count] >= 2 && objc_msgSend(*(a1 + 48), "producesValidGeometry"))
      {
        [CRLDragAndDropController adjustGeometriesOfBoardItems:v5 toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:*(a1 + 80), *(a1 + 88)];
        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      [v6 insertBoardItemsFromDragAndDrop:v5 atPoint:*(a1 + 64) onRep:v8 insertionContext:v9 alreadyPositionedInputInfos:{*(a1 + 80), *(a1 + 88)}];
    }

    v10 = [*(a1 + 48) errors];
    if ([v10 count])
    {
      v11 = [*(a1 + 40) p_modalOperationPresenter];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1004103B8;
      v13[3] = &unk_101842D00;
      v13[4] = *(a1 + 40);
      v14 = v10;
      v15 = *(a1 + 48);
      v16 = *(a1 + 72);
      [v11 continueAsynchronousWorkOnMainThreadUsingBlock:v13];
    }

    else
    {
      v12 = *(a1 + 72);
      if (v12)
      {
        (*(v12 + 16))();
      }
    }
  }
}

void sub_100410374(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

uint64_t sub_1004103B8(uint64_t a1)
{
  v2 = [*(a1 + 32) p_errorPresenter];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) localizedErrorDescription];
  [v2 presentErrors:v3 withLocalizedDescription:v4 completionHandler:0];

  result = *(a1 + 56);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_100410A84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100410AC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100410B0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100410B50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100410C20(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a3 < 0.0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136E98C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136E9A0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136EA34();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v7 = [NSString stringWithUTF8String:"[CRLBezierPathBooleanOperationInputPathMap p_mapBooleanSubpathIndex:toInputBezierPathT:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:740 isFatal:0 description:"inputBezierPathT (%f) should be greater than or equal to zero.", *&a3];
    }

    v10 = a1[7];
    v9 = a1[8];
    if (v10 >= v9)
    {
      v12 = a1[6];
      v13 = v10 - v12;
      v14 = (v10 - v12) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        sub_1000C1D48();
      }

      v16 = v9 - v12;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      v17 = v16 >= 0x7FFFFFFFFFFFFFF0;
      v18 = 0xFFFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v15;
      }

      if (v18)
      {
        sub_1000DB4D8((a1 + 6), v18);
      }

      v19 = v14;
      v20 = 16 * v14;
      *v20 = a2;
      *(v20 + 8) = a3;
      v11 = 16 * v14 + 16;
      v21 = (v20 - 16 * v19);
      memcpy(v21, v12, v13);
      v22 = a1[6];
      a1[6] = v21;
      a1[7] = v11;
      a1[8] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v10 = a2;
      *(v10 + 8) = a3;
      v11 = v10 + 16;
    }

    a1[7] = v11;
  }
}

void sub_100410E98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100410EDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100410F20(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a3 < 0.0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136EA5C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136EA70();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136EB04();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v7 = [NSString stringWithUTF8String:"[CRLBezierPathBooleanOperationInputPathMap p_replaceLastMappingWithBooleanSubpathIndex:mappedToInputBezierPathT:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:745 isFatal:0 description:"inputBezierPathT (%f) should be greater than or equal to zero.", *&a3];
    }

    v9 = a1[7];
    if (v9 == a1[6])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136EB2C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136EB54();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136EBE4();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v11 = [NSString stringWithUTF8String:"[CRLBezierPathBooleanOperationInputPathMap p_replaceLastMappingWithBooleanSubpathIndex:mappedToInputBezierPathT:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:747 isFatal:0 description:"Unable to replace last point in empty path map."];

      sub_100410C20(a1, a2, a3);
    }

    else
    {
      *(v9 - 16) = a2;
      *(v9 - 8) = a3;
    }
  }
}

void sub_100411214(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100411258(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10041129C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004112E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004119B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004119F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100411A38@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v21 = CGRectIntegral(*&a2);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v10 = CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v11 = CGRectGetWidth(v22);
  if (v10 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v13 = CGRectGetHeight(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v14 = CGRectGetHeight(v24);
  if (v13 < 0.0)
  {
    v14 = -v14;
  }

  if (v12 <= v14)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v15 = CGRectGetHeight(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v16 = CGRectGetHeight(v28);
  }

  else
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v15 = CGRectGetWidth(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v16 = CGRectGetWidth(v26);
  }

  if (v15 < 0.0)
  {
    v16 = -v16;
  }

  v17 = 1063256060.0 / v16;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v18 = -(v17 * CGRectGetMidX(v29));
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidY = CGRectGetMidY(v30);
  *a1 = v17;
  result = -(v17 * MidY);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100411BA0(uint64_t *a1, void *a2, _OWORD *a3, int a4, int a5)
{
  v7 = a2;
  __src = 0;
  v114 = 0;
  v115 = 0;
  v109 = v7;
  v8 = [v7 elementCount];
  if (!v8)
  {
    v101 = *a1;
    v100 = a1[1];
    v107 = v100 - *a1;
    v106 = 0x6DB6DB6DB6DB6DB7 * (v107 >> 3);
    goto LABEL_108;
  }

  v104 = a5;
  v9 = 0;
  v110 = vdupq_n_s64(1uLL);
  do
  {
    v10 = [v7 elementAtIndex:v9];
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = v114;
        v12 = v114[-1];
        v13 = vdupq_n_s64(1uLL);
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_9;
        }

        v11 = v114;
        v12 = v114[-1];
        v13 = xmmword_101465920;
      }

      v11[-1] = vaddq_s64(v12, v13);
    }

    else if (v9 + 1 < v8)
    {
      v14 = v114;
      if (v114 >= v115)
      {
        v16 = __src;
        v17 = v114 - __src;
        v18 = (v114 - __src) >> 4;
        v19 = v18 + 1;
        if ((v18 + 1) >> 60)
        {
          sub_1000C1D48();
        }

        v20 = v115 - __src;
        if ((v115 - __src) >> 3 > v19)
        {
          v19 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v21 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_1000DB4D8(&__src, v21);
        }

        v22 = (16 * v18);
        v23 = &v22[-((v114 - __src) >> 4)];
        *v22 = vdupq_n_s64(1uLL);
        v15 = v22 + 1;
        memcpy(v23, v16, v17);
        v24 = __src;
        __src = v23;
        v114 = v15;
        v115 = 0;
        if (v24)
        {
          operator delete(v24);
        }

        v7 = v109;
      }

      else
      {
        *v114 = v110;
        v15 = v14 + 1;
      }

      v114 = v15;
    }

LABEL_9:
    ++v9;
  }

  while (v8 != v9);
  v112 = v8;
  v25 = 0;
  v111 = a1;
  v107 = a1[1] - *a1;
  v106 = 0x6DB6DB6DB6DB6DB7 * (v107 >> 3);
  *(&v26 + 1) = *&CGPointZero.y;
  *&v26 = 67109378;
  v103 = v26;
  do
  {
    v117[0] = xmmword_1014629F0;
    v117[1] = xmmword_1014629F0;
    v117[2] = xmmword_1014629F0;
    v27 = [v7 elementAtIndex:v25 associatedPoints:{v117, v103}];
    v28 = v25 - 1;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v49 = v111[1];
        v50 = ((*(v49 - 24) - *(v49 - 32)) >> 4) - 1;
        v52 = *(v49 - 48);
        v51 = *(v49 - 40);
        if (v52 >= v51)
        {
          v58 = *(v49 - 56);
          v59 = v52 - v58;
          v60 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v58) >> 3);
          v61 = v60 + 1;
          if (v60 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000C1D48();
          }

          v62 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v58) >> 3);
          if (2 * v62 > v61)
          {
            v61 = 2 * v62;
          }

          if (v62 >= 0x555555555555555)
          {
            v63 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            sub_1004181A4(v49 - 56, v63);
          }

          v77 = 24 * v60;
          *v77 = v50;
          *(v77 + 8) = 1;
          *(v77 + 16) = v28;
          v53 = 24 * v60 + 24;
          v78 = 24 * v60 - v59;
          memcpy((v77 - v59), v58, v59);
          v79 = *(v49 - 56);
          *(v49 - 56) = v78;
          *(v49 - 48) = v53;
          *(v49 - 40) = 0;
          if (v79)
          {
            operator delete(v79);
          }

          v7 = v109;
        }

        else
        {
          *v52 = v50;
          *(v52 + 8) = 1;
          v53 = v52 + 24;
          *(v52 + 16) = v28;
        }

        *(v49 - 48) = v53;
        sub_1004181FC(v49 - 32, *(v49 - 24), v117, &v118, 3);
      }

      else if (v27 == 3)
      {
        v45 = v111[1];
        *(v45 - 8) = 0;
        sub_100417A00((v45 - 56), v25 - 1);
      }
    }

    else if (v27)
    {
      if (v27 == 1)
      {
        v29 = v111[1];
        v30 = *(v29 - 56);
        v31 = *(v29 - 48);
        v32 = v31 - v30;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
        if (v33 < 2 || (*(v31 - 16) & 1) != 0 || (v34 = *(v29 - 24), v35 = *(v34 - 32), v36 = *(v34 - 24), v37 = *(v34 - 16), v38 = *(v34 - 8), v39 = a3[1], *buf = *a3, *&buf[16] = v39, *&buf[32] = a3[2], !sub_100417CA4(buf, v35, v36, v37, v38, *v117, *(v117 + 1))))
        {
          v54 = (v29 - 32);
          v55 = ((*(v29 - 24) - *(v29 - 32)) >> 4) - 1;
          v56 = *(v29 - 40);
          if (v31 >= v56)
          {
            v64 = v33 + 1;
            if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1000C1D48();
            }

            v65 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v30) >> 3);
            if (2 * v65 > v64)
            {
              v64 = 2 * v65;
            }

            if (v65 >= 0x555555555555555)
            {
              v66 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v66 = v64;
            }

            if (v66)
            {
              sub_1004181A4(v29 - 56, v66);
            }

            v80 = 8 * ((v31 - v30) >> 3);
            *v80 = v55;
            *(v80 + 8) = 0;
            *(v80 + 16) = v28;
            v57 = v80 + 24;
            memcpy((v80 - v32), v30, v32);
            v81 = *(v29 - 56);
            *(v29 - 56) = 8 * ((v31 - v30) >> 3) - v32;
            *(v29 - 48) = v57;
            *(v29 - 40) = 0;
            if (v81)
            {
              operator delete(v81);
            }
          }

          else
          {
            *v31 = v55;
            *(v31 + 8) = 0;
            v57 = v31 + 24;
            *(v31 + 16) = v28;
          }

          *(v29 - 48) = v57;
          v83 = *(v29 - 24);
          v82 = *(v29 - 16);
          if (v83 >= v82)
          {
            v85 = (v83 - *v54) >> 4;
            v86 = v85 + 1;
            if ((v85 + 1) >> 60)
            {
              sub_1000C1D48();
            }

            v87 = v82 - *v54;
            if (v87 >> 3 > v86)
            {
              v86 = v87 >> 3;
            }

            if (v87 >= 0x7FFFFFFFFFFFFFF0)
            {
              v88 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v88 = v86;
            }

            if (v88)
            {
              sub_1000DB4D8(v29 - 32, v88);
            }

            v89 = (16 * v85);
            *v89 = v117[0];
            v84 = 16 * v85 + 16;
            v90 = *(v29 - 32);
            v91 = *(v29 - 24) - v90;
            v92 = v89 - v91;
            memcpy(v89 - v91, v90, v91);
            v93 = *(v29 - 32);
            *(v29 - 32) = v92;
            *(v29 - 24) = v84;
            *(v29 - 16) = 0;
            if (v93)
            {
              operator delete(v93);
            }
          }

          else
          {
            *v83 = v117[0];
            v84 = (v83 + 1);
          }

          v7 = v109;
          *(v29 - 24) = v84;
        }

        else
        {
          if (v104)
          {
            v40 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10136ECE4();
            }

            v41 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              *&buf[4] = v40;
              *&buf[8] = 2082;
              *&buf[10] = "NSRange CRLBooleanPath::addPath(CRLBezierPath *const  _Nonnull __strong, const CGAffineTransform, const BOOL, const BOOL)";
              *&buf[18] = 2082;
              *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm";
              *&buf[28] = 1024;
              *&buf[30] = 621;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We are currently unable to populate an input path map accurately when consuming collinear point(s).", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10136ED0C();
            }

            v42 = off_1019EDA68;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v99 = +[CRLAssertionHandler packedBacktraceString];
              *buf = v103;
              *&buf[4] = v40;
              *&buf[8] = 2114;
              *&buf[10] = v99;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v43 = [NSString stringWithUTF8String:"NSRange CRLBooleanPath::addPath(CRLBezierPath *const  _Nonnull __strong, const CGAffineTransform, const BOOL, const BOOL)"];
            v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
            [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:621 isFatal:0 description:"We are currently unable to populate an input path map accurately when consuming collinear point(s)."];

            v31 = *(v29 - 48);
            v34 = *(v29 - 24);
          }

          *(v31 - 8) = v28;
          *(v34 - 16) = v117[0];
          v7 = v109;
        }
      }
    }

    else if (v25 + 1 < v112)
    {
      v46 = v111;
      v47 = v111[1];
      if (a4 && v47 - *v111 > v107)
      {
        sub_100417A00((v47 - 56), v25 - 2);
        v46 = v111;
        v47 = v111[1];
      }

      if (v47 >= v46[2])
      {
        v48 = sub_100417DBC(v46);
      }

      else
      {
        *(v47 + 48) = 0;
        *(v47 + 16) = 0u;
        *(v47 + 32) = 0u;
        *v47 = 0u;
        v48 = v47 + 56;
        *(v47 + 48) = 1;
      }

      v111[1] = v48;
      v67 = (__src + 16 * ~v106 + 0xDB6DB6DB6DB6DB70 * ((v48 - *v111) >> 3));
      v68 = v67[1];
      sub_100417B44((v48 - 56), *v67);
      v69 = (v48 - 32);
      sub_100417C04((v48 - 32), v68);
      v71 = *(v48 - 24);
      v70 = *(v48 - 16);
      if (v71 >= v70)
      {
        v73 = (v71 - *v69) >> 4;
        v74 = v73 + 1;
        if ((v73 + 1) >> 60)
        {
          sub_1000C1D48();
        }

        v75 = v70 - *v69;
        if (v75 >> 3 > v74)
        {
          v74 = v75 >> 3;
        }

        if (v75 >= 0x7FFFFFFFFFFFFFF0)
        {
          v76 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v76 = v74;
        }

        if (v76)
        {
          sub_1000DB4D8(v48 - 32, v76);
        }

        v94 = (16 * v73);
        *v94 = v117[0];
        v72 = 16 * v73 + 16;
        v95 = *(v48 - 32);
        v96 = *(v48 - 24) - v95;
        v97 = v94 - v96;
        memcpy(v94 - v96, v95, v96);
        v98 = *(v48 - 32);
        *(v48 - 32) = v97;
        *(v48 - 24) = v72;
        *(v48 - 16) = 0;
        if (v98)
        {
          operator delete(v98);
        }
      }

      else
      {
        *v71 = v117[0];
        v72 = (v71 + 1);
      }

      *(v48 - 24) = v72;
    }

    ++v25;
  }

  while (v112 != v25);
  v101 = *v111;
  v100 = v111[1];
  v8 = v112;
LABEL_108:
  if (a4 && v100 - v101 > v107)
  {
    sub_100417A00((v100 - 56), v8);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  return v106;
}

void sub_1004125B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004127F4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = 0;
  v11 = a5 + 2;
  v12 = 2;
  while (1)
  {
    v13 = a1[v12];
    if ((v13 & 0x80000000) == 0)
    {
      v14 = 0;
      v15 = *&a1[v12 + 1];
      while (1)
      {
        if (v13 == LODWORD(a2[v14 + 2]))
        {
          v16 = *&a2[v14 + 3];
          if (vabdd_f64(v15, v16) <= 1.0 || v16 == 0.0 || v15 == 0.0)
          {
            break;
          }
        }

        v14 += 2;
        if (v14 == 4)
        {
          goto LABEL_11;
        }
      }

      v17 = &v11[2 * v10];
      *v17 = v13;
      v18 = v15;
      v19 = v16;
      v17[1] = sub_1004193A4(a1, a2, a5, v18, v19);
      if (++v10 > 1u)
      {
        break;
      }
    }

LABEL_11:
    v12 += 2;
    if (v12 == 6)
    {
      v20 = 2;
      while (1)
      {
        v21 = a3[v20];
        if ((v21 & 0x80000000) == 0)
        {
          v22 = 0;
          v23 = *&a3[v20 + 1];
          while (1)
          {
            if (v21 == LODWORD(a4[v22 + 2]))
            {
              v24 = *&a4[v22 + 3];
              if (vabdd_f64(v23, v24) <= 1.0 || v24 == 0.0 || v23 == 0.0)
              {
                break;
              }
            }

            v22 += 2;
            if (v22 == 4)
            {
              goto LABEL_22;
            }
          }

          v25 = &v11[2 * v10];
          *v25 = v21;
          v26 = v23;
          v27 = v24;
          v25[1] = sub_1004193A4(a3, a4, a5, v26, v27);
          if (++v10 > 1u)
          {
            return;
          }
        }

LABEL_22:
        v20 += 2;
        if (v20 == 6)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_100412994(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  v4 = sub_100418E80(a1, a2, a3, a4, v6);
  v7 = v6;
  sub_1001EDD70(&v7);
  return v4;
}

void sub_1004129E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001EDD70(va);
  _Unwind_Resume(a1);
}

void sub_1004129F8(uint64_t **a1, _OWORD *a2, uint64_t *a3, char a4, uint64_t a5)
{
  memset(&v64, 0, sizeof(v64));
  v9 = a2[1];
  *&v65.a = *a2;
  *&v65.c = v9;
  *&v65.tx = a2[2];
  CGAffineTransformInvert(&v64, &v65);
  v10 = *a1;
  v53 = a1[1];
  if (*a1 != v53)
  {
    while (1)
    {
      v11 = *v10;
      v12 = v10[1] - *v10;
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
        if (v14 <= 1)
        {
          v14 = 1;
        }

        v15 = (v11 + 24);
        do
        {
          v16 = 0;
          v17 = v15;
          v18 = 32;
          do
          {
            if (*(v17 - 2) != -1)
            {
              if ((v16 & 1) != 0 || *v17 == *v17)
              {
                goto LABEL_14;
              }

              v16 = 1;
            }

            v17 += 2;
            v18 -= 16;
          }

          while (v18);
          ++v13;
          v15 += 6;
        }

        while (v13 != v14);
      }

      v13 = 0;
LABEL_14:
      v63 = 0.0;
      v61 = 0u;
      v62 = 0u;
      sub_1004195D4(v10, v13, a3, &v61);
      *&v62 = v13;
      v60 = 0.0;
      v58 = 0u;
      v59 = 0u;
      v19 = v13;
      if (!v13)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - v11) >> 4);
      }

      sub_1004195D4(v10, v19 - 1, a3, &v58);
      v20 = v61;
      if (v61 != -1)
      {
        v21 = v11 + 48 * v13;
        if ((*(v21 + 16) & 0x80000000) != 0 || (*(v21 + 32) & 0x80000000) != 0)
        {
          v27 = *(&v62 + 1);
          v25 = sub_10041DD00((*a3 + 56 * v61), *(&v62 + 1));
          v26 = v28;
          goto LABEL_27;
        }
      }

      v22 = (v11 + 48 * v13);
      v23 = *v22;
      v24 = v22[1];
      v25 = v64.tx + v64.c * v24 + v64.a * v23;
      v26 = v64.ty + v64.d * v24 + v64.b * v23;
      if (v61 != -1)
      {
        break;
      }

      v29 = v11 + 48 * v13;
      v32 = *(v29 + 16);
      v30 = v29 + 16;
      v31 = v32;
      if (v32 != -1)
      {
        v33 = 0;
        goto LABEL_26;
      }

      v31 = *(v30 + 16);
      if (v31 != -1)
      {
        v33 = 1;
LABEL_26:
        v27 = *(v30 + 16 * v33 + 8);
        v20 = v31;
LABEL_27:
        v34 = *(*a3 + 56 * v20);
        v35 = 0xAAAAAAAAAAAAAAABLL * ((*(*a3 + 56 * v20 + 8) - v34) >> 3);
        if (v27 >= v35)
        {
          v36 = v27 - v35;
        }

        else
        {
          v36 = v27;
        }

        v37 = v36 - v36 + *(v34 + 24 * v36 + 16);
        goto LABEL_31;
      }

      v20 = -1;
      v37 = 0.0;
LABEL_31:
      sub_10041DB70(a5, v20, v25, v26, v37);
      if (v12 >= 1)
      {
        v38 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
        v39 = v13 - 0x5555555555555555 * (v12 >> 4);
        v40 = v38 - 1;
        do
        {
          ++v13;
          v57 = 0.0;
          v55 = 0u;
          v56 = 0u;
          sub_1004195D4(v10, v13, a3, &v55);
          *&v56 = v62;
          v41 = *v10 + 48 * (v13 % v38);
          if ((v55 & 0x8000000000000000) != 0 || v55 != v61 || BYTE8(v55) != BYTE8(v61) || !v40 || (v42 = *(v41 + 32), (v42 & 0x80000000) == 0) && (*(v41 + 16) != v42 || *(v41 + 24) != *(v41 + 40)))
          {
            if (*&v62 + 1.0 == v13 || v61 == -1)
            {
              if (v40)
              {
                if (v55 == -1)
                {
                  v47 = 0.0;
                }

                else
                {
                  v44 = *(&v56 + 1);
                  v45 = *(*a3 + 56 * v55);
                  v46 = (0xAAAAAAAAAAAAAAABLL * ((*(*a3 + 56 * v55 + 8) - v45) >> 3));
                  if (*(&v56 + 1) >= v46)
                  {
                    v44 = *(&v56 + 1) - v46;
                  }

                  v47 = v44 - v44 + *(v45 + 24 * v44 + 16);
                }

                v51 = vaddq_f64(*&v64.tx, vmlaq_n_f64(vmulq_n_f64(*&v64.c, *(v41 + 8)), *&v64.a, *v41));
                v52 = a2[1];
                *&v65.a = *a2;
                *&v65.c = v52;
                *&v65.tx = a2[2];
                sub_10041DC0C(a5, &v65, v55, v51.f64[0], v51.f64[1], v47);
              }
            }

            else
            {
              v48.f64[0] = v25;
              v49 = v26;
              if (v40)
              {
                v48 = vaddq_f64(*&v64.tx, vmlaq_n_f64(vmulq_n_f64(*&v64.c, *(v41 + 8)), *&v64.a, *v41));
                v49 = v48.f64[1];
              }

              v50 = a2[1];
              *&v65.a = *a2;
              *&v65.c = v50;
              *&v65.tx = a2[2];
              sub_10041DE18((*a3 + 56 * v61), v61, BYTE8(v61), v40 == 0, &v65, a5, *(&v62 + 1), v60, v48.f64[0], v49);
            }

            *&v56 = v13;
            v63 = v57;
            v61 = v55;
            v62 = v56;
          }

          v58 = v55;
          v59 = v56;
          v60 = v57;
          --v40;
        }

        while (v13 < v39);
      }

      if ((a4 & 1) == 0)
      {
        sub_10041DCB0(a5);
      }

      v10 += 3;
      if (v10 == v53)
      {
        return;
      }
    }

    v27 = *(&v62 + 1);
    goto LABEL_27;
  }
}

id sub_100412EEC(void **a1)
{
  sub_10041932C(a1);
  v2 = *a1;

  return v2;
}

void sub_100413888(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004138CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100413910(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100413954(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100413998(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004139DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100413A20(void *a1, int a2, void *a3, uint64_t a4, __int128 *a5, void *a6)
{
  v19 = a1;
  v9 = a3;
  v22 = a6;
  v27[5] = 0;
  v28 = 2;
  v29 = 0;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(v40, 0, 29);
  v40[29] = 1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44[3] = 0;
  v45 = 1;
  v46 = 0;
  v27[4] = &off_1018610B8;
  v27[0] = off_101861508;
  v27[1] = sub_1004127F4;
  v27[3] = v27;
  sub_100418B10(v44, v27);
  sub_10041F170(v27);
  LOBYTE(v45) = 1;
  v10 = [v9 objectAtIndexedSubscript:0];
  v21 = [v10 windingRule];

  if (a2 && [v19 windingRule] != v21)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136EFC4();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10136EFEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136F07C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v13 = [NSString stringWithUTF8String:"CRLBezierPath * _Nonnull _performBooleanOperation(CRLBezierPath *const  _Nonnull __strong, const BOOL, NSArray<CRLBezierPath *> *const  _Nonnull __strong, const Clipper2Lib::ClipType, const CGAffineTransform, CRLBezierPathBooleanOperationInputPathMap *const  _Nullable __strong)"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1234 isFatal:0 description:"All input paths must use the same winding rule."];
  }

  memset(v23, 0, 24);
  v15 = a5[1];
  buf = *a5;
  v25 = v15;
  v26 = a5[2];
  v16 = sub_100411BA0(v23, v19, &buf, a2, v22 != 0);
  sub_10136E8B0(v22, v16, v17);
  v18 = a5[1];
  buf = *a5;
  v25 = v18;
  v26 = a5[2];
  sub_100412640();
}

void sub_100414818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  sub_1004CCA8C(&STACK[0x300]);

  _Unwind_Resume(a1);
}

id sub_100414AE4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136F0F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136F108();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136F1A4();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v25 = [NSString stringWithUTF8String:"CRLBezierPath * _Nonnull _performLinePathBooleanOperation(const Clipper2Lib::ClipType, CRLBezierPath *const  _Nonnull __strong, CRLBezierPath *const  _Nonnull __strong, CRLBezierPathBooleanOperationInputPathMap *const  _Nullable __strong)"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:1402 isFatal:0 description:"invalid nil value for '%{public}s'", "lineSubjectPath"];

    if (v8)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (!v8)
  {
LABEL_23:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136F1CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136F1F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136F290();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v28 = [NSString stringWithUTF8String:"CRLBezierPath * _Nonnull _performLinePathBooleanOperation(const Clipper2Lib::ClipType, CRLBezierPath *const  _Nonnull __strong, CRLBezierPath *const  _Nonnull __strong, CRLBezierPathBooleanOperationInputPathMap *const  _Nullable __strong)"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:1403 isFatal:0 description:"invalid nil value for '%{public}s'", "filledClipPath"];

LABEL_32:
    v23 = +[CRLBezierPath bezierPath];
    goto LABEL_34;
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v42[0] = v7;
  v42[1] = v8;
  v14 = [NSArray arrayWithObjects:v42 count:2];
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v15)
  {
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        if (([v18 isEmpty] & 1) == 0)
        {
          [v18 controlPointBounds];
          v48.origin.x = v19;
          v48.origin.y = v20;
          v48.size.width = v21;
          v48.size.height = v22;
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          v46 = CGRectUnion(v45, v48);
          x = v46.origin.x;
          y = v46.origin.y;
          width = v46.size.width;
          height = v46.size.height;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v15);
  }

  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  if (!CGRectIsNull(v47))
  {
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v30 = sub_100411A38(&v39, x);
    v38 = v8;
    v31 = [NSArray arrayWithObjects:&v38 count:1, v30];
    v37[0] = v39;
    v37[1] = v40;
    v37[2] = v41;
    sub_100413A20(v7, 0, v31, a1, v37, v9);
  }

  v23 = +[CRLBezierPath bezierPath];
  [v7 copyPathAttributesTo:v23];
LABEL_34:

  return v23;
}

void sub_100415DF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100415E3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100415E80(void *a1, unint64_t a2)
{
  v21 = a1;
  if ([v21 containsElementsOtherThanMoveAndClose])
  {
    v20 = [v21 arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:1];
    v3 = +[NSMutableArray array];
    v4 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v20;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          if ([v9 containsClosePathElement])
          {
            v10 = v4;
          }

          else
          {
            v10 = v3;
          }

          [v10 addObject:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v6);
    }

    if (a2 && [v3 count] >= a2)
    {
      v11 = [NSIndexSet indexSetWithIndexesInRange:0, a2];
      v16 = [v3 objectsAtIndexes:v11];
    }

    else
    {
      v11 = [CRLBezierPath appendBezierPaths:v4];
      if ([v11 containsElementsOtherThanMoveAndClose])
      {
        v19 = v11;
        if (a2 && a2 < [v3 count])
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10136F638();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10136F660();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10136F6F0();
          }

          v12 = off_1019EDA68;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v13 = [NSString stringWithUTF8String:"NSArray<CRLBezierPath *> * _Nonnull _pathsBySeparatingVisuallyDistinctSubregionsOfPath(CRLBezierPath *const  _Nonnull __strong, const NSUInteger)"];
          v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
          [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1560 isFatal:0 description:"closedStopCount should not be greater than stopAfterFoundCount."];
        }

        v22 = v19;
        [v22 controlPointBounds];
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        sub_100411A38(&v28, v17);
        memset(v27, 0, sizeof(v27));
        v32 = v28;
        v33 = v29;
        v34 = v30;
        sub_100411BA0(v27, v22, &v32, 1, 0);
        v32 = v28;
        v33 = v29;
        v34 = v30;
        sub_100412640();
      }

      v16 = v3;
    }

    v15 = v16;
  }

  else
  {
    v15 = &__NSArray0__struct;
  }

  return v15;
}

void sub_1004166C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100416704(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004168F8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10041693C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100416980(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100417868(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004178AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004178F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100417934(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100417978(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004179BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100417A00(const void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 != *a1)
  {
    v7 = a1[3];
    v8 = a1[4];
    v9 = ((v8 - v7) >> 4) - 1;
    if (*(v4 - 3) != v9 && (*(v8 - 2) != *v7 || *(v8 - 1) != v7[1]))
    {
      v11 = a1[2];
      if (v4 >= v11)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
        v14 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3) + 1;
        if (v14 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000C1D48();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v3) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 < 0x555555555555555)
        {
          v13 = v14;
        }

        if (v13)
        {
          sub_1004181A4(a1, v13);
        }

        v16 = 8 * (v5 >> 3);
        *v16 = v9;
        *(v16 + 8) = 0;
        *(v16 + 16) = a2;
        v12 = v16 + 24;
        v17 = v16 - v5;
        memcpy((v16 - v5), v3, v5);
        v18 = *a1;
        *a1 = v17;
        a1[1] = v12;
        a1[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v4 = v9;
        v4[8] = 0;
        v12 = (v4 + 24);
        *(v4 + 2) = a2;
      }

      a1[1] = v12;
    }
  }
}

void *sub_100417B44(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_1004181A4(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void *sub_100417C04(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_1000DB4D8(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

BOOL sub_100417CA4(double *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = v10 + a3 * v8 + *a1 * a2;
  v13 = v11 + a3 * v9 + v7 * a2;
  v14 = v10 + a5 * v8 + *a1 * a4;
  return (v13 - (v11 + a5 * v9 + v7 * a4)) * (v14 - (v10 + a7 * v8 + *a1 * a6)) == ((v11 + a5 * v9 + v7 * a4) - (v11 + a7 * v9 + v7 * a6)) * (v12 - v14);
}

void sub_100417D34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100417D78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100417DBC(uint64_t *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x492492492492492)
  {
    sub_1000C1D48();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_100417F00(a1, v4);
  }

  v5 = 56 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *(v5 + 48) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 1;
  *&v14 = 56 * v1 + 56;
  v6 = a1[1];
  v7 = 56 * v1 + *a1 - v6;
  sub_100417F5C(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_100418128(&v12);
  return v11;
}

void sub_100417EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100418128(va);
  _Unwind_Resume(a1);
}

void sub_100417F00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_100417F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_100418044(a1, v5);
      v5 += 56;
    }
  }

  return sub_10041809C(v9);
}

void sub_100418044(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t sub_10041809C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004180D4(a1);
  }

  return a1;
}

void sub_1004180D4(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_100418044(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_100418128(void **a1)
{
  sub_10041815C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10041815C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_100418044(v4, i - 56);
  }
}

void sub_1004181A4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

char *sub_1004181FC(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_1000C1D48();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      sub_1000DB4D8(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &a4[v5];
      v25 = &a4[v5 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_100418428(uint64_t *a1, __int32 a2, float64x2_t *a3, uint64_t a4, char a5)
{
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v10 = 0;
    do
    {
      if (!v10)
      {
        v11 = vcvtq_s64_f64(vaddq_f64(a3[2], vmlaq_n_f64(vmulq_n_f64(a3[1], *(a1[3] + 8)), *a3, *a1[3])));
        v12 = *(a4 + 8);
        v13 = *(a4 + 16);
        if (v12 >= v13)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12->i64 - *a4) >> 4);
          v16 = v15 + 1;
          if (v15 + 1 > 0x555555555555555)
          {
            sub_1000C1D48();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a4) >> 4);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x2AAAAAAAAAAAAAALL)
          {
            v18 = 0x555555555555555;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_1001EE080(a4, v18);
          }

          v19 = 48 * v15;
          *v19 = v11;
          *(v19 + 16) = a2;
          *(v19 + 20) = 0;
          *(v19 + 24) = 0;
          *(v19 + 32) = 0xFFFFFFFFLL;
          *(v19 + 40) = 0xBFF0000000000000;
          i64 = 48 * v15 + 48;
          v20 = *(a4 + 8) - *a4;
          v21 = 48 * v15 - v20;
          memcpy((v19 - v20), *a4, v20);
          v22 = *a4;
          *a4 = v21;
          *(a4 + 8) = i64;
          *(a4 + 16) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v12 = v11;
          v12[1].i32[0] = a2;
          v12[1].i32[1] = 0;
          v12[1].i64[1] = 0;
          v12[2].i64[0] = 0xFFFFFFFFLL;
          i64 = v12[3].i64;
          v12[2].i64[1] = 0xBFF0000000000000;
        }

        *(a4 + 8) = i64;
        v6 = *a1;
      }

      v23 = v6 + 24 * v10;
      if (*(v23 + 8) == 1)
      {
        v62[0] = 0;
        v62[1] = v62;
        v62[2] = 0x5012000000;
        v62[3] = sub_100418958;
        v62[4] = nullsub_49;
        v62[5] = &unk_1016A8115;
        v65 = 0;
        v67 = 0;
        v64 = 0;
        v63 = a2;
        v66 = -1;
        v68 = 0xBFF0000000000000;
        v24 = a1[3] + 16 * *v23;
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = *(v24 + 32);
        v28 = *(v24 + 40);
        v29 = *(v24 + 48);
        v30 = *(v24 + 56);
        v69 = *v24;
        v56 = v69;
        v70 = v25;
        v71 = v26;
        v72 = v27;
        v73 = v28;
        v74 = v29;
        v75 = v30;
        v31 = sub_10011F264(&v69);
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_100418968;
        v57[3] = &unk_101861088;
        v57[4] = v62;
        v57[5] = v10;
        v32 = a3[1];
        v58 = *a3;
        v59 = v32;
        v60 = a3[2];
        v61 = a4;
        [CRLBezierPath subdivideBezierWithFlatness:v57 startPoint:fmin(v31 * 0.002 controlPoint1:0.6) controlPoint2:*&v56 endPoint:v25 addLineBlock:v26, v27, v28, v29, v30];
        _Block_object_dispose(v62, 8);
        ++v10;
      }

      else
      {
        v33 = ++v10;
        v34 = a1[3];
        v35 = vcvtq_s64_f64(vaddq_f64(a3[2], vmlaq_n_f64(vmulq_n_f64(a3[1], *(v34 + 16 * ((*v23 + 1) % ((a1[4] - v34) >> 4)) + 8)), *a3, *(v34 + 16 * ((*v23 + 1) % ((a1[4] - v34) >> 4))))));
        v36 = *(a4 + 8);
        v37 = *(a4 + 16);
        if (v36 >= v37)
        {
          v39 = 0xAAAAAAAAAAAAAAABLL * ((v36 - *a4) >> 4);
          v40 = v39 + 1;
          if (v39 + 1 > 0x555555555555555)
          {
            sub_1000C1D48();
          }

          v41 = 0xAAAAAAAAAAAAAAABLL * ((v37 - *a4) >> 4);
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x2AAAAAAAAAAAAAALL)
          {
            v42 = 0x555555555555555;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            sub_1001EE080(a4, v42);
          }

          v43 = 48 * v39;
          *v43 = v35;
          *(v43 + 16) = a2;
          *(v43 + 20) = 0;
          *(v43 + 24) = v33;
          *(v43 + 32) = 0xFFFFFFFFLL;
          *(v43 + 40) = 0xBFF0000000000000;
          v38 = 48 * v39 + 48;
          v44 = *(a4 + 8) - *a4;
          v45 = 48 * v39 - v44;
          memcpy((v43 - v44), *a4, v44);
          v46 = *a4;
          *a4 = v45;
          *(a4 + 8) = v38;
          *(a4 + 16) = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          *v36 = v35;
          *(v36 + 16) = a2;
          *(v36 + 20) = 0;
          *(v36 + 24) = v33;
          *(v36 + 32) = 0xFFFFFFFFLL;
          v38 = v36 + 48;
          *(v36 + 40) = 0xBFF0000000000000;
        }

        *(a4 + 8) = v38;
      }

      v6 = *a1;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }

  if (a5)
  {
    v48 = *a4;
    v47 = *(a4 + 8);
    if (0xAAAAAAAAAAAAAAABLL * ((v47 - *a4) >> 4) >= 2)
    {
      v50 = *(v47 - 48);
      v51 = *(v47 - 40);
      v49 = v47 - 48;
      v53 = *v48;
      v52 = v48[1];
      if (v50 == v53 && v51 == v52)
      {
        *(a4 + 8) = v49;
      }
    }
  }
}

__n128 sub_100418958(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_100418968(uint64_t a1, double a2, double a3, double a4)
{
  *(*(*(a1 + 32) + 8) + 56) = *(a1 + 40) + a4;
  v4 = *(a1 + 96);
  v5 = vcvtq_s64_f64(vaddq_f64(*(a1 + 80), vmlaq_n_f64(vmulq_n_f64(*(a1 + 64), a3), *(a1 + 48), a2)));
  v6 = *(*(a1 + 32) + 8);
  v8 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v8 >= v7)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8->i64 - *v4) >> 4);
    v13 = v12 + 1;
    if (v12 + 1 > 0x555555555555555)
    {
      sub_1000C1D48();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_1001EE080(*(a1 + 96), v15);
    }

    v16 = 48 * v12;
    v18 = v6[3];
    v17 = v6[4];
    *v16 = v5;
    *(v16 + 16) = v18;
    *(v16 + 32) = v17;
    i64 = 48 * v12 + 48;
    v19 = *(v4 + 8) - *v4;
    v20 = v16 - v19;
    memcpy((v16 - v19), *v4, v19);
    v21 = *v4;
    *v4 = v20;
    *(v4 + 8) = i64;
    *(v4 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v10 = v6[3];
    v9 = v6[4];
    *v8 = v5;
    v8[1] = v10;
    v8[2] = v9;
    i64 = v8[3].i64;
  }

  *(v4 + 8) = i64;
}

void sub_100418AD8(uint64_t a1)
{
  sub_1004CCA8C(a1);

  operator delete();
}

void *sub_100418B10(void *a1, uint64_t a2)
{
  sub_100418B84(v4, a2);
  sub_100418C1C(v4, a1);
  sub_10041F170(v4);
  return a1;
}

uint64_t sub_100418B84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_100418C1C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100418E74(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000C8ECC(a1);
}

uint64_t sub_100418E80(uint64_t a1, int a2, int a3, uint64_t *a4, uint64_t *a5)
{
  sub_1001EDDC4(a4);
  sub_1001EDDC4(a5);
  if (sub_1004CF758(a1, a2, a3, 0))
  {
    sub_1004D2028(a1, a4, a5);
  }

  sub_1004CCBA8(a1);
  return *(a1 + 221);
}

uint64_t sub_100418F04(uint64_t a1)
{
  *a1 = +[CRLBezierPath bezierPath];
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1014629F0;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  sub_100418F98(v3, 0);

  return a1;
}

uint64_t sub_100418F98(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = +[CRLBezierPath bezierPath];
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1014629F0;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = -1;
  return a1;
}

uint64_t sub_100419008(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100419090(result, a4);
  }

  return result;
}

void sub_100419070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004192A4(&a9);
  _Unwind_Resume(a1);
}

void sub_100419090(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_100417F00(a1, a2);
  }

  sub_1000C1D48();
}

uint64_t sub_1004190E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_1004191DC(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      sub_10022BBFC(v4 + 24, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 4);
      *(v4 + 48) = *(v6 + 48);
      v6 += 56;
      v4 = v11 + 56;
      v11 += 56;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10041809C(v8);
  return v4;
}

uint64_t sub_1004191DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100419258(result, a4);
  }

  return result;
}

void sub_10041923C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100419258(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1004181A4(a1, a2);
  }

  sub_1000C1D48();
}

void sub_1004192A4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_100418044(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10041932C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = (a1 + 32);
  if (!sub_1001208AC(v3, v4))
  {
    [*a1 lineToPoint:{v3, v4}];
    sub_100410C20(*(a1 + 8), *(a1 + 48), *(a1 + 56));
    *v2 = xmmword_1014629F0;
    *(a1 + 48) = -1;
    *(a1 + 56) = 0;
  }
}

float sub_1004193A4(void *a1, void *a2, void *a3, float a4, float a5)
{
  v5 = vabds_f32(a4, a5);
  v6 = (a4 + 1);
  if (a5 != 0.0)
  {
    v6 = a5;
  }

  v7 = (a5 + 1);
  if (a4 == 0.0)
  {
    v6 = a5;
  }

  else
  {
    v7 = a4;
  }

  if (v5 > 1.0)
  {
    a5 = v6;
    a4 = v7;
  }

  v8 = a1[1];
  v9 = ((*a3 - *a1) * (*a2 - *a1) + (a3[1] - v8) * (a2[1] - v8)) / ((*a2 - *a1) * (*a2 - *a1) + (a2[1] - v8) * (a2[1] - v8));
  return v9 * a5 + a4 * (1.0 - v9);
}

void sub_10041943C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100419480(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004194C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100419508(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10041954C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  if (sub_1004CF758(a1, a2, a3, 1))
  {
    sub_1001EDDC4(a5);
    (*(*a4 + 24))(a4);
    sub_1004D24D8(a1, a4, a5);
  }

  sub_1004CCBA8(a1);
  return *(a1 + 221);
}

__n128 sub_1004195D4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0;
  v5 = *a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v7 = *a1 + 48 * (a2 % v6);
  v27 = 0;
  v29 = 0u;
  v8 = (a2 + 1) % v6;
  v30 = 0;
  v32 = 0u;
  v33 = 0;
  v35 = 0u;
  v36 = 0;
  v26 = 0u;
  v25 = -1;
  v9 = &v28;
  v28 = -1;
  v31 = -1;
  v34 = -1;
  v10 = *a3;
  v11 = v5 + 48 * v8 + 24;
  for (i = 16; i != 48; i += 16)
  {
    v13 = *(v7 + i);
    if (v13 != -1)
    {
      v14 = *(v7 + i + 8);
      v15 = v11;
      v16 = 32;
      while (v13 != *(v15 - 2))
      {
LABEL_21:
        v15 += 2;
        v16 -= 16;
        if (!v16)
        {
          goto LABEL_22;
        }
      }

      v17 = *v15;
      if (v14 == *v15)
      {
        continue;
      }

      v18 = &v25 + 4 * v4;
      if (vabdd_f64(v14, v17) <= 1.0)
      {
        *v18 = v13;
        *(v18 + 8) = v17 > v14;
      }

      else
      {
        v19 = (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 56 * v13 + 8) - *(v10 + 56 * v13)) >> 3));
        if (v19 - v17 <= 1.0 && v14 < 1.0)
        {
          *v18 = v13;
          *(v18 + 8) = 0;
          *(v18 + 2) = v14 + v19;
          goto LABEL_20;
        }

        if (v19 - v14 > 1.0 || v17 >= 1.0)
        {
          goto LABEL_21;
        }

        *v18 = v13;
        *(v18 + 8) = 1;
        v17 = v17 + v19;
      }

      *(v18 + 2) = v14;
LABEL_20:
      *(v18 + 3) = v17;
      ++v4;
      goto LABEL_21;
    }

LABEL_22:
    ;
  }

  result.n128_u64[0] = 0;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = -1;
  if (v4 > 0)
  {
    if (v4 == 1)
    {
      v23 = &v25;
    }

    else
    {
      v24 = 32 * v4 - 32;
      v23 = &v25;
      do
      {
        if (vabdd_f64(*(v9 + 2), *(v9 + 3)) < vabdd_f64(*(v23 + 2), *(v23 + 3)))
        {
          v23 = v9;
        }

        v9 += 4;
        v24 -= 32;
      }

      while (v24);
    }

    *a4 = *v23;
    *(a4 + 8) = *(v23 + 8);
    result = *(v23 + 1);
    *(a4 + 24) = result;
  }

  return result;
}

void sub_1004197F0(void *a1)
{
  sub_10041BA3C(a1);

  operator delete();
}

uint64_t sub_1004199E8(uint64_t a1)
{
  sub_100419A20(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100419A20(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_100419A94(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      sub_1001EE034(v6, v11);
    }

    sub_1000C1D48();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
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

void sub_100419BF0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_100419CA0(a1, v5);
  }
}

void sub_100419CA0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_1000C1D48();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_1003131A8(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_1004199E8(v14);
  }
}

void *sub_100419DC4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000DB64C(result, a2);
  }

  return result;
}

void sub_100419E2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100419E48(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      sub_1000C1D48();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_1001EE080(a1, v15);
    }

    v36 = 16 * (v13 >> 4);
    v37 = 48 * a5;
    v38 = v36;
    do
    {
      v39 = *v7;
      v40 = v7[2];
      v38[1] = v7[1];
      v38[2] = v40;
      *v38 = v39;
      v38 += 3;
      v7 += 3;
      v37 -= 48;
    }

    while (v37);
    memcpy((v36 + 48 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 48 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v36;
  }

  v16 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 4)) >= a5)
  {
    v30 = 3 * a5;
    v31 = &__dst[48 * a5];
    v32 = (v10 - 48 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[2];
      v33[1] = v32[1];
      v33[2] = v35;
      *v33 = v34;
      v33 += 3;
      v32 += 3;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[48 * a5], __dst, v10 - v31);
    }

    v29 = 16 * v30;
    v27 = v5;
    v28 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[48 * a5];
    v21 = v10 + v18;
    if (&v19[-48 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -48 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 32);
        v24[1] = *(v23 - v7 + 16);
        v24[2] = v26;
        *v24 = v25;
        v23 += 48;
        v22 += 48;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[48 * a5], v5, v19 - v20);
    }

    v27 = v5;
    v28 = v7;
    v29 = v10 - v5;
LABEL_28:
    memmove(v27, v28, v29);
  }

  return v5;
}

void sub_10041A0D8(uint64_t **a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = (a2 - v8) >> 4;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                sub_10041B020(v8, (v8 + 16), (a2 - 16));
                return;
              case 4:

                sub_10041B2CC(v8, (v8 + 16), (v8 + 32), (a2 - 16));
                return;
              case 5:

                sub_10041B4CC(v8, (v8 + 16), (v8 + 32), (v8 + 48), (a2 - 16));
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              v147 = *(a2 - 16);
              v146 = a2 - 16;
              v148 = *v8;
              v149 = *v147;
              v150 = *(*v147 + 16);
              v151 = *(*v147 + 32);
              if (v150 >= v151)
              {
                v152 = v151;
              }

              else
              {
                v152 = v150;
              }

              v153 = *v148;
              v154 = *(*v148 + 16);
              v155 = *(*v148 + 32);
              if (v154 >= v155)
              {
                v156 = *(*v148 + 32);
              }

              else
              {
                v156 = *(*v148 + 16);
              }

              if (v152 < v156)
              {
                goto LABEL_219;
              }

              v157 = (v153 + 24);
              v158 = v149 + 40;
              v159 = v149 + 24;
              v160 = (v153 + 40);
              if (v154 < v155)
              {
                v160 = v157;
              }

              v161 = (v150 >= v151 ? v158 : v159);
              if (v152 == v156 && *v161 < *v160)
              {
LABEL_219:
                v378 = *v8;
                v163 = *v146;
                *(v8 + 8) = *(v146 + 8);
                *v8 = v163;
                *(v146 + 8) = WORD4(v378);
                *v146 = v378;
              }

              return;
            }
          }

          if (v9 <= 23)
          {
            v164 = v8 + 16;
            v166 = v8 == a2 || v164 == a2;
            if (a4)
            {
              if (!v166)
              {
                v167 = 0;
                v168 = v8;
                do
                {
                  v169 = v164;
                  v170 = *(v168 + 16);
                  v171 = *v168;
                  v172 = *v170;
                  v173 = *(*v170 + 16);
                  v174 = *(*v170 + 32);
                  if (v173 >= v174)
                  {
                    v175 = *(*v170 + 32);
                  }

                  else
                  {
                    v175 = *(*v170 + 16);
                  }

                  v176 = *v171;
                  v177 = *(*v171 + 16);
                  v178 = *(*v171 + 32);
                  if (v177 >= v178)
                  {
                    v179 = *(*v171 + 32);
                  }

                  else
                  {
                    v179 = *(*v171 + 16);
                  }

                  if (v175 < v179)
                  {
                    goto LABEL_255;
                  }

                  v180 = (v176 + 24);
                  v181 = v172 + 40;
                  v182 = v172 + 24;
                  v183 = (v176 + 40);
                  if (v177 < v178)
                  {
                    v183 = v180;
                  }

                  v184 = (v173 >= v174 ? v181 : v182);
                  if (v175 == v179 && *v184 < *v183)
                  {
LABEL_255:
                    v186 = *(v168 + 24);
                    *v169 = *v168;
                    *(v169 + 8) = *(v168 + 8);
                    v187 = v8;
                    if (v168 != v8)
                    {
                      v188 = v167;
                      do
                      {
                        v189 = v8 + v188;
                        v190 = *(v8 + v188 - 16);
                        v191 = *v170;
                        v192 = *(*v170 + 16);
                        v193 = *(*v170 + 32);
                        if (v192 >= v193)
                        {
                          v194 = *(*v170 + 32);
                        }

                        else
                        {
                          v194 = *(*v170 + 16);
                        }

                        v195 = *v190;
                        v196 = *(*v190 + 16);
                        v197 = *(*v190 + 32);
                        if (v196 >= v197)
                        {
                          v198 = *(*v190 + 32);
                        }

                        else
                        {
                          v198 = *(*v190 + 16);
                        }

                        if (v194 >= v198)
                        {
                          v199 = (v195 + 24);
                          v200 = v191 + 40;
                          v201 = v191 + 24;
                          v202 = (v195 + 40);
                          if (v196 < v197)
                          {
                            v202 = v199;
                          }

                          v203 = (v192 >= v193 ? v200 : v201);
                          if (v194 != v198 || *v203 >= *v202)
                          {
                            v187 = v8 + v188;
                            goto LABEL_276;
                          }
                        }

                        *v189 = *(v8 + v188 - 16);
                        *(v189 + 8) = *(v8 + v188 - 8);
                        v188 -= 16;
                      }

                      while (v188);
                      v187 = v8;
                    }

LABEL_276:
                    *v187 = v170;
                    *(v187 + 8) = v186;
                  }

                  v164 = v169 + 16;
                  v167 += 16;
                  v168 = v169;
                }

                while (v169 + 16 != a2);
              }
            }

            else if (!v166)
            {
              do
              {
                v339 = v164;
                v340 = a1[2];
                v341 = *a1;
                v342 = *v340;
                v343 = *(*v340 + 16);
                v344 = *(*v340 + 32);
                if (v343 >= v344)
                {
                  v345 = *(*v340 + 32);
                }

                else
                {
                  v345 = *(*v340 + 16);
                }

                v346 = *v341;
                v347 = *(*v341 + 16);
                v348 = *(*v341 + 32);
                if (v347 >= v348)
                {
                  v349 = *(*v341 + 32);
                }

                else
                {
                  v349 = *(*v341 + 16);
                }

                if (v345 < v349)
                {
                  goto LABEL_440;
                }

                v350 = (v346 + 24);
                v351 = v342 + 40;
                v352 = v342 + 24;
                v353 = (v346 + 40);
                if (v347 < v348)
                {
                  v353 = v350;
                }

                v354 = (v343 >= v344 ? v351 : v352);
                if (v345 == v349 && *v354 < *v353)
                {
LABEL_440:
                  v356 = a1[3];
                  do
                  {
                    do
                    {
                      v357 = a1;
                      a1[2] = *a1;
                      v358 = *(a1 + 4);
                      v360 = *(a1 - 2);
                      a1 -= 2;
                      v359 = v360;
                      *(v357 + 12) = v358;
                      v361 = *v340;
                      v362 = *(*v340 + 16);
                      v363 = *(*v340 + 32);
                      if (v362 >= v363)
                      {
                        v364 = *(*v340 + 32);
                      }

                      else
                      {
                        v364 = *(*v340 + 16);
                      }

                      v365 = *v359;
                      v366 = *(*v359 + 16);
                      v367 = *(*v359 + 32);
                      if (v366 >= v367)
                      {
                        v368 = *(*v359 + 32);
                      }

                      else
                      {
                        v368 = *(*v359 + 16);
                      }
                    }

                    while (v364 < v368);
                    v369 = (v365 + 24);
                    v370 = (v361 + 40);
                    v371 = (v361 + 24);
                    v372 = (v365 + 40);
                    if (v366 < v367)
                    {
                      v372 = v369;
                    }

                    if (v362 >= v363)
                    {
                      v373 = v370;
                    }

                    else
                    {
                      v373 = v371;
                    }
                  }

                  while (v364 == v368 && *v373 < *v372);
                  *v357 = v340;
                  *(v357 + 4) = v356;
                }

                v164 = (v339 + 2);
                a1 = v339;
              }

              while (v339 + 2 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v205 = (v9 - 2) >> 1;
              v206 = v205;
              do
              {
                v207 = v206;
                if (v205 >= v206)
                {
                  v208 = (2 * v206) | 1;
                  v209 = (v8 + 16 * v208);
                  if (2 * v207 + 2 < v9)
                  {
                    v210 = v209[2];
                    v211 = **v209;
                    v212 = *(v211 + 16);
                    v213 = *(v211 + 32);
                    v214 = v212 >= v213 ? *(v211 + 32) : *(v211 + 16);
                    v215 = *v210;
                    v216 = *(*v210 + 16);
                    v217 = *(*v210 + 32);
                    v218 = v216 >= v217 ? *(*v210 + 32) : *(*v210 + 16);
                    if (v214 < v218)
                    {
                      goto LABEL_300;
                    }

                    v219 = (v215 + 24);
                    v220 = v211 + 40;
                    v221 = v211 + 24;
                    v222 = (v215 + 40);
                    if (v216 < v217)
                    {
                      v222 = v219;
                    }

                    v223 = (v212 >= v213 ? v220 : v221);
                    if (v214 == v218 && *v223 < *v222)
                    {
LABEL_300:
                      v209 += 2;
                      v208 = 2 * v207 + 2;
                    }
                  }

                  v225 = (v8 + 16 * v207);
                  v226 = *v225;
                  v227 = **v209;
                  v228 = *(v227 + 16);
                  v229 = *(v227 + 32);
                  if (v228 >= v229)
                  {
                    v230 = *(v227 + 32);
                  }

                  else
                  {
                    v230 = *(v227 + 16);
                  }

                  v231 = *v226;
                  v232 = *(*v226 + 16);
                  v233 = *(*v226 + 32);
                  if (v232 >= v233)
                  {
                    v234 = *(*v226 + 32);
                  }

                  else
                  {
                    v234 = *(*v226 + 16);
                  }

                  if (v230 >= v234)
                  {
                    v235 = (v231 + 24);
                    v236 = (v227 + 40);
                    v237 = (v227 + 24);
                    v238 = (v231 + 40);
                    if (v232 < v233)
                    {
                      v238 = v235;
                    }

                    if (v228 >= v229)
                    {
                      v239 = v236;
                    }

                    else
                    {
                      v239 = v237;
                    }

                    if (v230 != v234 || *v239 >= *v238)
                    {
                      v241 = *(v225 + 4);
                      do
                      {
                        v242 = v225;
                        v225 = v209;
                        v243 = *v209;
                        *(v242 + 4) = *(v225 + 4);
                        *v242 = v243;
                        if (v205 < v208)
                        {
                          break;
                        }

                        v244 = 2 * v208;
                        v208 = (2 * v208) | 1;
                        v209 = (v8 + 16 * v208);
                        v245 = v244 + 2;
                        if (v245 < v9)
                        {
                          v246 = v209[2];
                          v247 = **v209;
                          v248 = *(v247 + 16);
                          v249 = *(v247 + 32);
                          v250 = v248 >= v249 ? *(v247 + 32) : *(v247 + 16);
                          v251 = *v246;
                          v252 = *(*v246 + 16);
                          v253 = *(*v246 + 32);
                          v254 = v252 >= v253 ? *(*v246 + 32) : *(*v246 + 16);
                          if (v250 < v254)
                          {
                            goto LABEL_337;
                          }

                          v255 = (v251 + 24);
                          v256 = v247 + 40;
                          v257 = v247 + 24;
                          v258 = (v251 + 40);
                          if (v252 < v253)
                          {
                            v258 = v255;
                          }

                          v259 = (v248 >= v249 ? v256 : v257);
                          if (v250 == v254 && *v259 < *v258)
                          {
LABEL_337:
                            v209 += 2;
                            v208 = v245;
                          }
                        }

                        v261 = **v209;
                        v262 = *(v261 + 16);
                        v263 = *(v261 + 32);
                        v264 = v262 >= v263 ? *(v261 + 32) : *(v261 + 16);
                        v265 = *v226;
                        v266 = *(*v226 + 16);
                        v267 = *(*v226 + 32);
                        v268 = v266 >= v267 ? *(*v226 + 32) : *(*v226 + 16);
                        if (v264 < v268)
                        {
                          break;
                        }

                        v269 = (v265 + 24);
                        v270 = v261 + 40;
                        v271 = v261 + 24;
                        v272 = (v265 + 40);
                        if (v266 < v267)
                        {
                          v272 = v269;
                        }

                        v273 = (v262 >= v263 ? v270 : v271);
                      }

                      while (v264 != v268 || *v273 >= *v272);
                      *v225 = v226;
                      *(v225 + 4) = v241;
                    }
                  }
                }

                v206 = v207 - 1;
              }

              while (v207);
              do
              {
                v275 = 0;
                v379 = *v8;
                v276 = v8;
                do
                {
                  v277 = v276;
                  v278 = v276 + 16 * v275;
                  v276 = v278 + 16;
                  v279 = 2 * v275;
                  v275 = (2 * v275) | 1;
                  v280 = v279 + 2;
                  if (v280 < v9)
                  {
                    v283 = *(v278 + 32);
                    v282 = v278 + 32;
                    v281 = v283;
                    v284 = **(v282 - 16);
                    v285 = *(v284 + 16);
                    v286 = *(v284 + 32);
                    v287 = v285 >= v286 ? *(v284 + 32) : *(v284 + 16);
                    v288 = *v281;
                    v289 = *(*v281 + 16);
                    v290 = *(*v281 + 32);
                    v291 = v289 >= v290 ? *(*v281 + 32) : *(*v281 + 16);
                    if (v287 < v291)
                    {
                      goto LABEL_376;
                    }

                    v292 = (v288 + 24);
                    v293 = v284 + 40;
                    v294 = v284 + 24;
                    v295 = (v288 + 40);
                    if (v289 < v290)
                    {
                      v295 = v292;
                    }

                    v296 = (v285 >= v286 ? v293 : v294);
                    if (v287 == v291 && *v296 < *v295)
                    {
LABEL_376:
                      v276 = v282;
                      v275 = v280;
                    }
                  }

                  v298 = *v276;
                  *(v277 + 8) = *(v276 + 8);
                  *v277 = v298;
                }

                while (v275 <= ((v9 - 2) >> 1));
                a2 -= 16;
                if (v276 == a2)
                {
                  *(v276 + 8) = WORD4(v379);
                  *v276 = v379;
                }

                else
                {
                  v299 = *a2;
                  *(v276 + 8) = *(a2 + 8);
                  *v276 = v299;
                  *(a2 + 8) = WORD4(v379);
                  *a2 = v379;
                  v300 = (v276 - v8 + 16) >> 4;
                  v301 = v300 - 2;
                  if (v300 >= 2)
                  {
                    v302 = v301 >> 1;
                    v303 = v8 + 16 * (v301 >> 1);
                    v304 = *v276;
                    v305 = **v303;
                    v306 = *(v305 + 16);
                    v307 = *(v305 + 32);
                    v308 = v306 >= v307 ? *(v305 + 32) : *(v305 + 16);
                    v309 = *v304;
                    v310 = *(*v304 + 16);
                    v311 = *(*v304 + 32);
                    v312 = v310 >= v311 ? *(*v304 + 32) : *(*v304 + 16);
                    if (v308 < v312)
                    {
                      goto LABEL_397;
                    }

                    v313 = (v309 + 24);
                    v314 = v305 + 40;
                    v315 = v305 + 24;
                    v316 = (v309 + 40);
                    if (v310 < v311)
                    {
                      v316 = v313;
                    }

                    v317 = (v306 >= v307 ? v314 : v315);
                    if (v308 == v312 && *v317 < *v316)
                    {
LABEL_397:
                      v319 = *(v276 + 8);
                      v320 = *(v303 + 8);
                      *v276 = *v303;
                      *(v276 + 8) = v320;
                      if (v301 >= 2)
                      {
                        while (1)
                        {
                          v322 = v302 - 1;
                          v302 = (v302 - 1) >> 1;
                          v321 = v8 + 16 * v302;
                          v323 = **v321;
                          v324 = *(v323 + 16);
                          v325 = *(v323 + 32);
                          v326 = v324 >= v325 ? *(v323 + 32) : *(v323 + 16);
                          v327 = *v304;
                          v328 = *(*v304 + 16);
                          v329 = *(*v304 + 32);
                          v330 = v328 >= v329 ? *(*v304 + 32) : *(*v304 + 16);
                          if (v326 >= v330)
                          {
                            v331 = (v327 + 24);
                            v332 = v323 + 40;
                            v333 = v323 + 24;
                            v334 = (v327 + 40);
                            if (v328 < v329)
                            {
                              v334 = v331;
                            }

                            v335 = (v324 >= v325 ? v332 : v333);
                            if (v326 != v330 || *v335 >= *v334)
                            {
                              break;
                            }
                          }

                          v337 = *v321;
                          *(v303 + 8) = *(v321 + 8);
                          *v303 = v337;
                          v303 = v8 + 16 * v302;
                          if (v322 <= 1)
                          {
                            goto LABEL_417;
                          }
                        }
                      }

                      v321 = v303;
LABEL_417:
                      *v321 = v304;
                      *(v321 + 8) = v319;
                    }
                  }
                }
              }

              while (v9-- > 2);
            }

            return;
          }

          v10 = v9 >> 1;
          v11 = v8 + 16 * (v9 >> 1);
          if (v9 < 0x81)
          {
            sub_10041B020(&a1[2 * (v9 >> 1)], a1, (a2 - 16));
          }

          else
          {
            sub_10041B020(a1, &a1[2 * (v9 >> 1)], (a2 - 16));
            sub_10041B020(a1 + 2, (v11 - 16), (a2 - 32));
            sub_10041B020(a1 + 4, &a1[2 * v10 + 2], (a2 - 48));
            sub_10041B020((v11 - 16), v11, &a1[2 * v10 + 2]);
            v375 = *a1;
            v12 = *v11;
            *(a1 + 4) = *(v11 + 8);
            *a1 = v12;
            *(v11 + 8) = WORD4(v375);
            *v11 = v375;
          }

          --a3;
          v13 = *a1;
          v14 = **a1;
          if (a4)
          {
            v15 = *(v14 + 16);
            v16 = *(v14 + 32);
            if (v15 >= v16)
            {
              v17 = *(v14 + 32);
            }

            else
            {
              v17 = *(v14 + 16);
            }

            break;
          }

          v18 = *(a1 - 2);
          v19 = *v18;
          v20 = *(*v18 + 16);
          v21 = *(*v18 + 32);
          v22 = v20 >= v21 ? *(*v18 + 32) : *(*v18 + 16);
          v15 = *(v14 + 16);
          v16 = *(v14 + 32);
          v17 = v15 >= v16 ? *(v14 + 32) : *(v14 + 16);
          if (v22 < v17)
          {
            break;
          }

          v23 = (v14 + 24);
          v24 = v19 + 40;
          v25 = v19 + 24;
          if (v15 >= v16)
          {
            v23 = (v14 + 40);
          }

          v26 = *v23;
          v27 = (v20 >= v21 ? v24 : v25);
          if (v22 == v17 && *v27 < v26)
          {
            break;
          }

          v89 = **(a2 - 16);
          v90 = *(v89 + 16);
          v91 = *(v89 + 32);
          if (v90 >= v91)
          {
            v92 = *(v89 + 32);
          }

          else
          {
            v92 = *(v89 + 16);
          }

          if (v17 < v92)
          {
            goto LABEL_140;
          }

          v93 = (v89 + 24);
          if (v90 >= v91)
          {
            v93 = (v89 + 40);
          }

          if (v17 == v92 && v26 < *v93)
          {
LABEL_140:
            v104 = a1 + 2;
            do
            {
              v8 = v104;
              v105 = **v104;
              v106 = *(v105 + 16);
              v107 = *(v105 + 32);
              if (v106 >= v107)
              {
                v108 = *(v105 + 32);
              }

              else
              {
                v108 = *(v105 + 16);
              }

              if (v17 < v108)
              {
                break;
              }

              v109 = (v105 + 24);
              v110 = (v105 + 40);
              if (v106 < v107)
              {
                v110 = v109;
              }

              v111 = *v110;
              v104 = (v8 + 16);
            }

            while (v17 != v108 || v26 >= v111);
          }

          else
          {
            v95 = a1 + 2;
            do
            {
              v8 = v95;
              if (v95 >= a2)
              {
                break;
              }

              v96 = **v95;
              v97 = *(v96 + 16);
              v98 = *(v96 + 32);
              v99 = v97 >= v98 ? *(v96 + 32) : *(v96 + 16);
              if (v17 < v99)
              {
                break;
              }

              v100 = (v96 + 24);
              v101 = (v96 + 40);
              if (v97 < v98)
              {
                v101 = v100;
              }

              v102 = *v101;
              v95 = (v8 + 16);
            }

            while (v17 != v99 || v26 >= v102);
          }

          v113 = a2;
          if (v8 < a2)
          {
            v113 = a2 - 16;
            while (1)
            {
              v114 = v90 >= v91 ? v91 : v90;
              if (v17 >= v114)
              {
                v115 = (v89 + 24);
                v116 = (v89 + 40);
                if (v90 < v91)
                {
                  v116 = v115;
                }

                if (v17 != v114 || v26 >= *v116)
                {
                  break;
                }
              }

              v117 = *(v113 - 16);
              v113 -= 16;
              v89 = *v117;
              v90 = *(*v117 + 16);
              v91 = *(*v117 + 32);
            }
          }

          v118 = a1[1];
          while (v8 < v113)
          {
            v377 = *v8;
            v119 = *v113;
            *(v8 + 8) = *(v113 + 8);
            *v8 = v119;
            *(v113 + 8) = WORD4(v377);
            *v113 = v377;
            v120 = *v13;
            v121 = *(*v13 + 16);
            v122 = *(*v13 + 32);
            if (v121 >= v122)
            {
              v123 = *(*v13 + 32);
            }

            else
            {
              v123 = *(*v13 + 16);
            }

            v124 = (v8 + 16);
            do
            {
              v8 = v124;
              v125 = **v124;
              v126 = *(v125 + 16);
              v127 = *(v125 + 32);
              if (v126 >= v127)
              {
                v128 = *(v125 + 32);
              }

              else
              {
                v128 = *(v125 + 16);
              }

              if (v123 < v128)
              {
                break;
              }

              v129 = (v125 + 24);
              v130 = (v125 + 40);
              if (v126 < v127)
              {
                v130 = v129;
              }

              v131 = *v130;
              v132 = (v121 >= v122 ? v120 + 40 : v120 + 24);
              v133 = *v132;
              v124 = (v8 + 16);
            }

            while (v123 != v128 || v133 >= v131);
            do
            {
              do
              {
                v135 = *(v113 - 16);
                v113 -= 16;
                v136 = *v135;
                v137 = *(*v135 + 16);
                v138 = *(*v135 + 32);
                if (v137 >= v138)
                {
                  v139 = v138;
                }

                else
                {
                  v139 = v137;
                }
              }

              while (v123 < v139);
              v140 = (v136 + 24);
              v141 = (v136 + 40);
              if (v137 < v138)
              {
                v141 = v140;
              }

              v142 = *v141;
              if (v121 >= v122)
              {
                v143 = (v120 + 40);
              }

              else
              {
                v143 = (v120 + 24);
              }
            }

            while (v123 == v139 && *v143 < v142);
          }

          if ((v8 - 16) != a1)
          {
            v145 = *(v8 - 16);
            *(a1 + 4) = *(v8 - 8);
            *a1 = v145;
          }

          a4 = 0;
          *(v8 - 16) = v13;
          *(v8 - 8) = v118;
        }

        v29 = a1[1];
        for (i = 2; ; i += 2)
        {
          v31 = *a1[i];
          v32 = *(v31 + 16);
          v33 = *(v31 + 32);
          v34 = v32 >= v33 ? *(v31 + 32) : *(v31 + 16);
          if (v34 >= v17)
          {
            v35 = (v14 + 24);
            v36 = v31 + 40;
            v37 = v31 + 24;
            if (v15 >= v16)
            {
              v35 = (v14 + 40);
            }

            v38 = *v35;
            v39 = (v32 >= v33 ? v36 : v37);
            if (v34 != v17 || *v39 >= v38)
            {
              break;
            }
          }
        }

        v41 = &a1[i];
        v42 = (a2 - 16);
        if (i == 2)
        {
          v52 = (a2 - 16);
          while (v41 < (v52 + 2))
          {
            v43 = v52;
            v53 = **v52;
            v54 = *(v53 + 16);
            v55 = *(v53 + 32);
            if (v54 >= v55)
            {
              v56 = *(v53 + 32);
            }

            else
            {
              v56 = *(v53 + 16);
            }

            if (v56 >= v17)
            {
              v57 = (v53 + 40);
              v58 = (v53 + 24);
              if (v54 >= v55)
              {
                v58 = v57;
              }

              v59 = *v58;
              v52 = v43 - 2;
              if (v56 != v17 || v59 >= v38)
              {
                continue;
              }
            }

            goto LABEL_79;
          }

          v43 = v52 + 2;
        }

        else
        {
          do
          {
            v43 = v42;
            v44 = **v42;
            v45 = *(v44 + 16);
            v46 = *(v44 + 32);
            if (v45 >= v46)
            {
              v47 = *(v44 + 32);
            }

            else
            {
              v47 = *(v44 + 16);
            }

            if (v47 < v17)
            {
              break;
            }

            v48 = (v44 + 40);
            v49 = (v44 + 24);
            if (v45 >= v46)
            {
              v49 = v48;
            }

            v50 = *v49;
            v42 = v43 - 2;
          }

          while (v47 != v17 || v50 >= v38);
        }

LABEL_79:
        v8 = v41;
        if (v41 < v43)
        {
          v61 = v43;
          do
          {
            v376 = *v8;
            v62 = *v61;
            *(v8 + 8) = *(v61 + 4);
            *v8 = v62;
            *(v61 + 4) = WORD4(v376);
            *v61 = v376;
            v63 = *v13;
            v64 = *(*v13 + 16);
            v65 = *(*v13 + 32);
            if (v64 >= v65)
            {
              v66 = *(*v13 + 32);
            }

            else
            {
              v66 = *(*v13 + 16);
            }

            do
            {
              do
              {
                v67 = *(v8 + 16);
                v8 += 16;
                v68 = *v67;
                v69 = *(*v67 + 16);
                v70 = *(*v67 + 32);
                if (v69 >= v70)
                {
                  v71 = v70;
                }

                else
                {
                  v71 = v69;
                }
              }

              while (v71 < v66);
              v72 = (v63 + 24);
              v73 = (v68 + 40);
              v74 = (v68 + 24);
              if (v64 >= v65)
              {
                v72 = (v63 + 40);
              }

              v75 = *v72;
              if (v69 >= v70)
              {
                v76 = v73;
              }

              else
              {
                v76 = v74;
              }
            }

            while (v71 == v66 && *v76 < v75);
            v78 = v61 - 2;
            do
            {
              v61 = v78;
              v79 = **v78;
              v80 = *(v79 + 16);
              v81 = *(v79 + 32);
              if (v80 >= v81)
              {
                v82 = *(v79 + 32);
              }

              else
              {
                v82 = *(v79 + 16);
              }

              if (v82 < v66)
              {
                break;
              }

              v83 = (v79 + 40);
              v84 = (v79 + 24);
              if (v80 >= v81)
              {
                v84 = v83;
              }

              v85 = *v84;
              v78 = v61 - 2;
            }

            while (v82 != v66 || v85 >= v75);
          }

          while (v8 < v61);
        }

        if ((v8 - 16) != a1)
        {
          v87 = *(v8 - 16);
          *(a1 + 4) = *(v8 - 8);
          *a1 = v87;
        }

        *(v8 - 16) = v13;
        *(v8 - 8) = v29;
        if (v41 >= v43)
        {
          break;
        }

LABEL_115:
        sub_10041A0D8(a1, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }

      v88 = sub_10041B770(a1, v8 - 16);
      if (sub_10041B770(v8, a2))
      {
        break;
      }

      if (!v88)
      {
        goto LABEL_115;
      }
    }

    a2 = v8 - 16;
    if (!v88)
    {
      continue;
    }

    break;
  }
}

uint64_t **sub_10041B020(uint64_t **result, uint64_t **a2, uint64_t **a3)
{
  v3 = *result;
  v4 = **a2;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  if (v5 >= v6)
  {
    v7 = *(v4 + 32);
  }

  else
  {
    v7 = *(v4 + 16);
  }

  v8 = *v3;
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 32);
  if (v9 >= v10)
  {
    v11 = *(*v3 + 32);
  }

  else
  {
    v11 = *(*v3 + 16);
  }

  if (v7 >= v11)
  {
    v12 = (v8 + 24);
    v13 = (v8 + 40);
    if (v9 < v10)
    {
      v13 = v12;
    }

    v14 = *v13;
    v15 = (v5 >= v6 ? v4 + 40 : v4 + 24);
    v16 = *v15;
    if (v7 != v11 || v16 >= v14)
    {
      v18 = **a3;
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      if (v19 >= v20)
      {
        v21 = *(v18 + 32);
      }

      else
      {
        v21 = *(v18 + 16);
      }

      if (v21 < v7)
      {
        goto LABEL_28;
      }

      v22 = (v18 + 40);
      v23 = (v18 + 24);
      if (v19 >= v20)
      {
        v23 = v22;
      }

      if (v21 == v7 && *v23 < v16)
      {
LABEL_28:
        v66 = *a2;
        v25 = *(a3 + 4);
        *a2 = *a3;
        *(a2 + 4) = v25;
        *a3 = v66;
        *(a3 + 4) = WORD4(v66);
        v26 = *result;
        v27 = **a2;
        v28 = *(v27 + 16);
        v29 = *(v27 + 32);
        if (v28 >= v29)
        {
          v30 = *(v27 + 32);
        }

        else
        {
          v30 = *(v27 + 16);
        }

        v31 = *v26;
        v32 = *(*v26 + 16);
        v33 = *(*v26 + 32);
        if (v32 >= v33)
        {
          v34 = *(*v26 + 32);
        }

        else
        {
          v34 = *(*v26 + 16);
        }

        if (v30 < v34)
        {
          goto LABEL_42;
        }

        v35 = v27 + 40;
        v36 = v27 + 24;
        v37 = (v31 + 40);
        if (v32 < v33)
        {
          v37 = (v31 + 24);
        }

        v38 = (v28 >= v29 ? v35 : v36);
        if (v30 == v34 && *v38 < *v37)
        {
LABEL_42:
          v67 = *result;
          v39 = *(a2 + 4);
          *result = *a2;
          *(result + 4) = v39;
          *a2 = v67;
          *(a2 + 4) = WORD4(v67);
        }
      }

      return result;
    }
  }

  v40 = **a3;
  v41 = *(v40 + 16);
  v42 = *(v40 + 32);
  if (v41 >= v42)
  {
    v43 = *(v40 + 32);
  }

  else
  {
    v43 = *(v40 + 16);
  }

  if (v43 < v7)
  {
    goto LABEL_71;
  }

  v44 = (v4 + 24);
  v45 = v40 + 40;
  v46 = v40 + 24;
  v47 = (v4 + 40);
  if (v5 < v6)
  {
    v47 = v44;
  }

  v48 = *v47;
  v49 = (v41 >= v42 ? v45 : v46);
  if (v43 == v7 && *v49 < v48)
  {
LABEL_71:
    v69 = *result;
    v65 = *(a3 + 4);
    *result = *a3;
    *(result + 4) = v65;
    goto LABEL_72;
  }

  v68 = *result;
  v51 = *(a2 + 4);
  *result = *a2;
  *(result + 4) = v51;
  *a2 = v68;
  *(a2 + 4) = WORD4(v68);
  v52 = *a2;
  v53 = **a3;
  v54 = *(v53 + 16);
  v55 = *(v53 + 32);
  if (v54 >= v55)
  {
    v56 = *(v53 + 32);
  }

  else
  {
    v56 = *(v53 + 16);
  }

  v57 = *v52;
  v58 = *(*v52 + 16);
  v59 = *(*v52 + 32);
  if (v58 >= v59)
  {
    v60 = *(*v52 + 32);
  }

  else
  {
    v60 = *(*v52 + 16);
  }

  if (v56 < v60)
  {
    goto LABEL_70;
  }

  v61 = (v53 + 40);
  result = (v53 + 24);
  v62 = (v57 + 40);
  if (v58 < v59)
  {
    v62 = (v57 + 24);
  }

  v63 = (v54 >= v55 ? v61 : result);
  if (v56 == v60 && *v63 < *v62)
  {
LABEL_70:
    v69 = *a2;
    v64 = *(a3 + 4);
    *a2 = *a3;
    *(a2 + 4) = v64;
LABEL_72:
    *a3 = v69;
    *(a3 + 4) = WORD4(v69);
  }

  return result;
}

__n128 sub_10041B2CC(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  sub_10041B020(a1, a2, a3);
  v9 = *a3;
  v10 = **a4;
  v11 = *(v10 + 16);
  v12 = *(v10 + 32);
  if (v11 >= v12)
  {
    v13 = *(v10 + 32);
  }

  else
  {
    v13 = *(v10 + 16);
  }

  v14 = *v9;
  v15 = *(*v9 + 16);
  v16 = *(*v9 + 32);
  if (v15 >= v16)
  {
    v17 = *(*v9 + 32);
  }

  else
  {
    v17 = *(*v9 + 16);
  }

  if (v13 < v17)
  {
    goto LABEL_18;
  }

  v18 = (v14 + 24);
  v19 = v10 + 40;
  v20 = v10 + 24;
  v21 = (v14 + 40);
  if (v15 < v16)
  {
    v21 = v18;
  }

  result.n128_u64[0] = *v21;
  v22 = (v11 >= v12 ? v19 : v20);
  if (v13 == v17 && *v22 < result.n128_f64[0])
  {
LABEL_18:
    v55 = *a3;
    v24 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v24;
    *a4 = v55;
    *(a4 + 4) = WORD4(v55);
    v25 = *a2;
    v26 = **a3;
    v27 = *(v26 + 16);
    v28 = *(v26 + 32);
    if (v27 >= v28)
    {
      v29 = *(v26 + 32);
    }

    else
    {
      v29 = *(v26 + 16);
    }

    v30 = *v25;
    v31 = *(*v25 + 16);
    v32 = *(*v25 + 32);
    if (v31 >= v32)
    {
      v33 = *(*v25 + 32);
    }

    else
    {
      v33 = *(*v25 + 16);
    }

    if (v29 < v33)
    {
      goto LABEL_35;
    }

    v34 = (v30 + 24);
    v35 = v26 + 40;
    v36 = v26 + 24;
    v37 = (v30 + 40);
    if (v31 < v32)
    {
      v37 = v34;
    }

    result.n128_u64[0] = *v37;
    v38 = (v27 >= v28 ? v35 : v36);
    if (v29 == v33 && *v38 < result.n128_f64[0])
    {
LABEL_35:
      result = *a2;
      v56 = *a2;
      v40 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v40;
      *a3 = v56.n128_u64[0];
      *(a3 + 4) = v56.n128_u16[4];
      v41 = *a1;
      v42 = **a2;
      v43 = *(v42 + 16);
      v44 = *(v42 + 32);
      if (v43 >= v44)
      {
        v45 = *(v42 + 32);
      }

      else
      {
        v45 = *(v42 + 16);
      }

      v46 = *v41;
      v47 = *(*v41 + 16);
      v48 = *(*v41 + 32);
      if (v47 >= v48)
      {
        v49 = *(*v41 + 32);
      }

      else
      {
        v49 = *(*v41 + 16);
      }

      if (v45 < v49)
      {
        goto LABEL_49;
      }

      v50 = v42 + 40;
      v51 = v42 + 24;
      v52 = (v46 + 40);
      if (v47 < v48)
      {
        v52 = (v46 + 24);
      }

      v53 = (v43 >= v44 ? v50 : v51);
      if (v45 == v49)
      {
        result.n128_u64[0] = *v52;
        if (*v53 < *v52)
        {
LABEL_49:
          result = *a1;
          v57 = *a1;
          v54 = *(a2 + 4);
          *a1 = *a2;
          *(a1 + 4) = v54;
          *a2 = v57.n128_u64[0];
          *(a2 + 4) = v57.n128_u16[4];
        }
      }
    }
  }

  return result;
}