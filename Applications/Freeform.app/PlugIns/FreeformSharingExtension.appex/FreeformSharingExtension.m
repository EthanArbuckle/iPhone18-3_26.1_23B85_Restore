id CRLAppGroupIdentifier()
{
  if (qword_1000B4AB8 != -1)
  {
    sub_10007B724();
  }

  v1 = qword_1000B4AB0;

  return v1;
}

void sub_100001FDC(id a1)
{
  v1 = [NSString stringWithUTF8String:"group.com.apple.freeform"];
  v2 = qword_1000B4AB0;
  qword_1000B4AB0 = v1;

  if (([qword_1000B4AB0 hasPrefix:@"group.com.apple."] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007B738();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007B74C();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007B7F4();
    }

    v3 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007B81C(v3);
    }

    v13 = qword_1000B4AB0;
    CRLSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d App group identifier (%@) has unexpected prefix.", v4, v5, v6, v7, v8, v9, v10, "NSString *CRLAppGroupIdentifier()_block_invoke");
    v11 = [NSString stringWithUTF8String:"NSString *CRLAppGroupIdentifier()_block_invoke"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:56 isFatal:1 description:"App group identifier (%@) has unexpected prefix.", qword_1000B4AB0, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m", 56, v13];

    CRLCrashBreakpoint();
    abort();
  }
}

void sub_10000216C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000021B0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100002234(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id sub_100002488(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 size];
  v2 = CRLRectWithSize();

  return [v1 drawInRect:1 blendMode:v2 alpha:?];
}

void sub_100002720(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setFill];
  [v3 fillRect:CRLRectWithSize()];
}

void sub_100002A18(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100002A5C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000031BC(id a1)
{
  size = 0;
  sysctlbyname("kern.osversion", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0x5A2F81B9uLL);
  sysctlbyname("kern.osversion", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  v3 = qword_1000B4AC0;
  qword_1000B4AC0 = v2;

  free(v1);
}

void sub_1000032A0(id a1)
{
  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0xF3A0382uLL);
  sysctlbyname("hw.model", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  v3 = qword_1000B4AD0;
  qword_1000B4AD0 = v2;

  free(v1);
}

CGContext *CRLCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (qword_1000B4AE8 != -1)
  {
    sub_10007BAA4();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, qword_1000B4AE0, 0x2002u);
  if (!v8)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BAB8();
    }

    v10 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      *transform = 67110402;
      *&transform[4] = v9;
      *&transform[8] = 2082;
      *&transform[10] = "CGContextRef CRLCreateRGBABitmapContext(CGSize, CGFloat, BOOL)";
      *&transform[18] = 2082;
      *&transform[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColorUtils.m";
      *&transform[28] = 1024;
      *&transform[30] = 515;
      *&transform[34] = 2048;
      *&transform[36] = (a2 * a4);
      *&transform[44] = 2048;
      *&transform[46] = (a3 * a4);
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CGBitmapContextCreate returns nil CGContextRef for width %ld, height %ld", transform, 0x36u);
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BACC();
    }

    v11 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BAF4(v11);
    }

    v12 = [NSString stringWithUTF8String:"CGContextRef CRLCreateRGBABitmapContext(CGSize, CGFloat, BOOL)"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLColorUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:515 isFatal:0 description:"CGBitmapContextCreate returns nil CGContextRef for width %ld, height %ld", (a2 * a4), (a3 * a4)];
  }

  CGAffineTransformMakeScale(transform, a4, a4);
  CGContextConcatCTM(v8, transform);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(transform, 1.0, -1.0);
    CGContextConcatCTM(v8, transform);
  }

  return v8;
}

void sub_10000366C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000036B0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100003AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003AD0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a1[4];
  v10 = [a2 substringToIndex:1];
  [v9 appendString:v10];

  ++*(*(a1[5] + 8) + 24);
  v11 = a1[6];
  if (v11)
  {
    LOBYTE(v11) = *(*(a1[5] + 8) + 24) >= v11;
  }

  *a7 = v11;
}

void sub_100003C50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v14 = a2;
  if ([v14 length] >= 2)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"%@.%@" value:0 table:0];

    v11 = *(a1 + 32);
    v12 = [v14 substringToIndex:1];
    v13 = [*(a1 + 40) substringFromIndex:{objc_msgSend(v14, "length")}];
    [v11 appendFormat:v10, v12, v13];
  }

  *a7 = 1;
}

void sub_1000049B8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000049FC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100004F1C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100004F60(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100005418(id a1)
{
  v1 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"*?+[(){}^$|\\./");
  objc_storeStrong(&qword_1000B4AF0, v1);
  if (!qword_1000B4AF0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BDF8();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BE0C();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BEA4();
    }

    v2 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v2);
    }

    v3 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_escapeForIcuRegex]_block_invoke"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:451 isFatal:0 description:"invalid nil value for '%{public}s'", "icuRegexCharSet"];
  }
}

void sub_100005584(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000055C8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

CFStringTokenizerTokenType sub_100006DF0(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  do
  {
    while (1)
    {
      Token = CFStringTokenizerAdvanceToNextToken(tokenizer);
      v5 = Token;
      if (Token)
      {
        break;
      }

      if (CFStringTokenizerGetCurrentTokenRange(tokenizer).location == -1)
      {
        return v5;
      }
    }
  }

  while ((Token & 0x10) != 0 && (*(a1 + 32) & 1) == 0);
  return v5;
}

void sub_100006EAC(id a1)
{
  v3 = -4;
  v1 = [[NSString alloc] initWithCharacters:&v3 length:1];
  v2 = qword_1000B4B00;
  qword_1000B4B00 = v1;
}

void sub_100007050(id a1)
{
  qword_1000B4B18 = [NSCharacterSet characterSetWithCharactersInString:@"ـ‑-‐–—"];

  _objc_release_x1();
}

void sub_1000070F4(id a1)
{
  qword_1000B4B28 = [NSCharacterSet characterSetWithCharactersInString:@"'’‘‚“”„«»‹›」「』『"];

  _objc_release_x1();
}

void sub_100007840(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100007884(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100007D08(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) rangeOfString:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1 + 40);
    v8 = [NSValue valueWithRange:v5, v6];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

int64_t sub_100007D9C(id a1, NSValue *a2, NSValue *a3)
{
  v4 = a3;
  v5 = [(NSValue *)a2 rangeValue];
  v6 = [(NSValue *)v4 rangeValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

void sub_1000080C8(id a1)
{
  v1 = [NSMutableCharacterSet characterSetWithRange:0, 32];
  v2 = qword_1000B4B30;
  qword_1000B4B30 = v1;

  [qword_1000B4B30 addCharactersInString:@"\"];
  v4 = 539566120;
  v3 = [[NSString alloc] initWithCharacters:&v4 length:2];
  [qword_1000B4B30 addCharactersInString:v3];
}

void sub_1000082D8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000831C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100008948(id a1)
{
  CRLDefaultCat_log_t = CRLLogCreateCategory("CRLDefaultCat");

  _objc_release_x1();
}

void sub_100008E38(id a1)
{
  v4 = 0;
  v1 = [[NSRegularExpression alloc] initWithPattern:@"<REDACT .*? REDACT>" options:8 error:&v4];
  v2 = v4;
  v3 = qword_1000B4B40;
  qword_1000B4B40 = v1;
}

void sub_10000906C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

uint64_t CRLImageSourceOrientation(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = [(__CFDictionary *)v1 objectForKey:kCGImagePropertyOrientation];
  v3 = [v2 intValue];

  v4 = 0;
  if (v3 - 1 <= 7)
  {
    v4 = qword_100083FE0[v3 - 1];
  }

  return v4;
}

void sub_100009F30(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100009F74(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100009FB8(id a1)
{
  qword_1000B4B50 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void sub_10000A324(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000A368(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000A664(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000A6A8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000A9A4(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000A9E8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000ACE0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000AD24(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000B01C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000B060(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000B358(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000B39C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000B698(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000B6DC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000B9D8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000BA1C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000BD18(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000BD5C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000C058(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000C09C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000C394(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000C3D8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000C6D0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000C714(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000CA88(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000CACC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000CDC4(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000CE08(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000D100(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000D144(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

BOOL CRLCGImageIsEmpty(CGImage *a1)
{
  if (!a1)
  {
    return 1;
  }

  memset(data, 0, sizeof(data));
  v2 = CGBitmapContextCreateWithData(data, 1uLL, 1uLL, 8uLL, 1uLL, 0, 7u, 0, 0);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  CGContextDrawImage(v2, v5, a1);
  CFRelease(v2);
  return LOBYTE(data[0]) == 0;
}

CGImageRef sub_10000D42C(uint64_t a1, CGImageRef image, double a3)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v8 = fabs(*(a1 + 40));
  [*(a1 + 32) scale];
  v10 = ceil(v8 * v9 * a3);
  v11 = fabs(*(a1 + 48));
  [*(a1 + 32) scale];
  v13 = ceil(v11 * v12 * a3);
  v14 = *(a1 + 64);
  if (*(a1 + 56) * a3 >= Height)
  {
    v15 = Height;
  }

  else
  {
    v15 = *(a1 + 56) * a3;
  }

  if (v14 * a3 >= Height - v15)
  {
    v16 = Height - v15;
  }

  else
  {
    v16 = v14 * a3;
  }

  v17 = *(a1 + 80);
  if (*(a1 + 72) * a3 >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = *(a1 + 72) * a3;
  }

  if (v17 * a3 >= Width - v18)
  {
    v19 = Width - v18;
  }

  else
  {
    v19 = v17 * a3;
  }

  sub_10000D728(v41, 0.0, 0.0, Width, Height, v18, v19, v15, v16);
  sub_10000D728(v39, 0.0, 0.0, v10, v13, v18, v19, v15, v16);
  v20 = CRLCreateRGBABitmapContext(1, v10, v13, 1.0);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = &v42;
  v23 = &v40;
  v24 = 9;
  do
  {
    v25 = *(v22 - 2);
    v26 = *(v22 - 1);
    v27 = *v22;
    v28 = v22[1];
    v29 = *(v23 - 2);
    v30 = *(v23 - 1);
    v31 = *v23;
    v32 = v23[1];
    v43.origin.x = v25;
    v43.origin.y = v26;
    v43.size.width = *v22;
    v43.size.height = v28;
    if (!CGRectIsEmpty(v43))
    {
      v44.origin.x = v25;
      v44.origin.y = v26;
      v44.size.width = v27;
      v44.size.height = v28;
      if (!CGRectIsNull(v44))
      {
        v45.origin.x = v29;
        v45.origin.y = v30;
        v45.size.width = v31;
        v45.size.height = v32;
        if (!CGRectIsEmpty(v45))
        {
          v46.origin.x = v29;
          v46.origin.y = v30;
          v46.size.width = v31;
          v46.size.height = v32;
          if (!CGRectIsNull(v46))
          {
            v47.origin.x = v25;
            v47.origin.y = v26;
            v47.size.width = v27;
            v47.size.height = v28;
            v33 = CGImageCreateWithImageInRect(image, v47);
            if (v33)
            {
              v34 = v33;
              CGContextSaveGState(v21);
              v48.origin.x = v29;
              v48.origin.y = v30;
              v48.size.width = v31;
              v48.size.height = v32;
              MaxY = CGRectGetMaxY(v48);
              v49.origin.x = v29;
              v49.origin.y = v30;
              v49.size.width = v31;
              v49.size.height = v32;
              MinY = CGRectGetMinY(v49);
              CGContextTranslateCTM(v21, 0.0, MaxY + MinY);
              CGContextScaleCTM(v21, 1.0, -1.0);
              v50.origin.x = v29;
              v50.origin.y = v30;
              v50.size.width = v31;
              v50.size.height = v32;
              CGContextDrawImage(v21, v50, v34);
              CGImageRelease(v34);
              CGContextRestoreGState(v21);
            }
          }
        }
      }
    }

    v22 += 4;
    v23 += 4;
    --v24;
  }

  while (v24);
  v37 = CGBitmapContextCreateImage(v21);
  CGContextRelease(v21);
  return v37;
}

void sub_10000D728(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  remainder.origin = origin;
  remainder.size = size;
  slice.origin = origin;
  slice.size = size;
  v28.origin = origin;
  v28.size = size;
  v29.origin = origin;
  v29.size = size;
  v24.origin = origin;
  v24.size = size;
  v25.origin = origin;
  v25.size = size;
  v26.origin = origin;
  v26.size = size;
  CGRectDivide(*&a2, &slice, &remainder, a8, CGRectMinYEdge);
  CGRectDivide(remainder, &v29, &v28, a9, CGRectMaxYEdge);
  remainder.origin = origin;
  remainder.size = size;
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectDivide(v30, &v24, &remainder, a6, CGRectMinXEdge);
  CGRectDivide(remainder, &v26, &v25, a7, CGRectMaxXEdge);
  v17 = 0;
  v18 = a1 + 16;
  do
  {
    v19 = 0;
    v20 = v18;
    do
    {
      *(v20 - 16) = CGRectIntersection(*(&slice + v19), *(&v24 + v17));
      v20 += 96;
      v19 += 32;
    }

    while (v19 != 96);
    ++v17;
    v18 += 32;
  }

  while (v17 != 3);
}

void sub_10000DC58(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000DC9C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

uint64_t sub_10000DD64(uint64_t a1)
{
  v2 = [UIImage alloc];
  v3 = [*(a1 + 32) CGImage];
  [*(a1 + 32) scale];
  *(*(a1 + 32) + 32) = [v2 initWithCGImage:v3 scale:objc_msgSend(*(a1 + 32) orientation:{"imageOrientation"), v4}];

  return _objc_release_x1();
}

uint64_t CRLUILayoutIsRTL()
{
  if (qword_1000B4B68 != -1)
  {
    sub_10007C1DC();
  }

  return byte_1000B4B60;
}

void sub_10000E600(id a1)
{
  CRLSharingExtensionCat_log_t = CRLLogCreateCategory("CRLSharingExtensionCat");

  _objc_release_x1();
}

void sub_10000E644(uint64_t a1, void *a2, uint64_t a3)
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

void sub_10000E6DC(uint64_t a1, void *a2, uint64_t a3)
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

void sub_10000E7C0(uint64_t a1, void *a2, uint64_t a3)
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
    if (CRLSharingExtensionCat_init_token != -1)
    {
      sub_10007C37C();
    }

    v13 = CRLSharingExtensionCat_log_t;
    if (os_log_type_enabled(CRLSharingExtensionCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007C390(v13);
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
    if (CRLDefaultCat_init_token != -1)
    {
      sub_10007C298();
    }

    v41 = CRLDefaultCat_log_t;
    if (os_log_type_enabled(CRLDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007C2C0(v41, v38);
    }
  }

LABEL_36:
  dispatch_group_leave(*(a1 + 56));
}

void sub_10000EC2C(id a1)
{
  CRLSharingExtensionCat_log_t = CRLLogCreateCategory("CRLSharingExtensionCat");

  _objc_release_x1();
}

void sub_10000EC70(id a1)
{
  CRLDefaultCat_log_t = CRLLogCreateCategory("CRLDefaultCat");

  _objc_release_x1();
}

void sub_10000ECB4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    if (CRLSharingExtensionCat_init_token != -1)
    {
      sub_10007C43C();
    }

    if (os_log_type_enabled(CRLSharingExtensionCat_log_t, OS_LOG_TYPE_DEBUG))
    {
      sub_10007C450();
    }

    if ([*(a1 + 32) p_file:v6 conformsTo:UTTypeImage])
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = sub_10000EFC4;
      v30 = sub_10000EFD4;
      v31 = 0;
      v8 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
      v9 = v27;
      v25 = v27[5];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000EFDC;
      v19[3] = &unk_1000A67C8;
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
      v16[2] = sub_10000F33C;
      v16[3] = &unk_1000A67F0;
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

void sub_10000EF80(id a1)
{
  CRLSharingExtensionCat_log_t = CRLLogCreateCategory("CRLSharingExtensionCat");

  _objc_release_x1();
}

uint64_t sub_10000EFC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000EFDC(uint64_t a1, void *a2)
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

    if (CRLSharingExtensionCat_init_token != -1)
    {
      sub_10007C4C4();
    }

    if (os_log_type_enabled(CRLSharingExtensionCat_log_t, OS_LOG_TYPE_DEBUG))
    {
      sub_10007C4EC();
    }
  }

  else
  {
    v16 = v5;
  }

LABEL_12:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (CRLDefaultCat_init_token != -1)
    {
      sub_10007C560();
    }

    v17 = CRLDefaultCat_log_t;
    if (os_log_type_enabled(CRLDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007C588(a1 + 64, v17);
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

void sub_10000F2B4(id a1)
{
  CRLSharingExtensionCat_log_t = CRLLogCreateCategory("CRLSharingExtensionCat");

  _objc_release_x1();
}

void sub_10000F2F8(id a1)
{
  CRLDefaultCat_log_t = CRLLogCreateCategory("CRLDefaultCat");

  _objc_release_x1();
}

void sub_10000F33C(uint64_t a1, void *a2, uint64_t a3)
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

void sub_10000F3D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) p_logItemProviderError:UTTypeData error:a3];
    v6 = [*(a1 + 40) registeredTypeIdentifiers];
    v7 = [v6 componentsJoinedByString:{@", "}];

    if (CRLSharingExtensionCat_init_token != -1)
    {
      sub_10007C694();
    }

    if (os_log_type_enabled(CRLSharingExtensionCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007C6A8();
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
    if (CRLDefaultCat_init_token != -1)
    {
      sub_10007C71C();
    }

    v24 = CRLDefaultCat_log_t;
    if (os_log_type_enabled(CRLDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007C2C0(v24, v21);
    }
  }

LABEL_18:
  dispatch_group_leave(*(a1 + 56));
}

void sub_10000F6C8(id a1)
{
  CRLSharingExtensionCat_log_t = CRLLogCreateCategory("CRLSharingExtensionCat");

  _objc_release_x1();
}

void sub_10000F70C(id a1)
{
  CRLDefaultCat_log_t = CRLLogCreateCategory("CRLDefaultCat");

  _objc_release_x1();
}

void sub_10000F750(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) p_logItemProviderError:UTTypeData error:a3];
    v6 = [*(a1 + 40) registeredTypeIdentifiers];
    v7 = [v6 componentsJoinedByString:{@", "}];

    if (CRLSharingExtensionCat_init_token != -1)
    {
      sub_10007C744();
    }

    if (os_log_type_enabled(CRLSharingExtensionCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007C6A8();
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

void sub_10000F844(id a1)
{
  CRLSharingExtensionCat_log_t = CRLLogCreateCategory("CRLSharingExtensionCat");

  _objc_release_x1();
}

void sub_10000F92C(id a1)
{
  CRLSharingExtensionCat_log_t = CRLLogCreateCategory("CRLSharingExtensionCat");

  _objc_release_x1();
}

void sub_10000FC5C(id a1)
{
  CRLSharingExtensionCat_log_t = CRLLogCreateCategory("CRLSharingExtensionCat");

  _objc_release_x1();
}

uint64_t sub_10000FF94()
{

  return objc_opt_class();
}

void sub_10000FFF0(id a1)
{
  qword_1000B4B70 = objc_alloc_init(CRLLogHelper);

  _objc_release_x1();
}

void sub_1000101D8(id a1)
{
  CRLPerformanceCat_log_t = CRLLogCreateCategory("CRLPerformanceCat");

  _objc_release_x1();
}

void sub_100010218(id a1)
{
  CRLPerformanceCat_log_t = CRLLogCreateCategory("CRLPerformanceCat");

  _objc_release_x1();
}

void sub_100010620(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100010664(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000106A8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000106EC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000107C8(uint64_t a1)
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
  v5[2] = sub_1000108A0;
  v5[3] = &unk_1000A68C8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

void sub_1000108A0(uint64_t a1)
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

void sub_1000109B8(uint64_t a1)
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
  v5[2] = sub_100010A90;
  v5[3] = &unk_1000A68C8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_barrier_sync(v3, v5);
}

void sub_100010A90(uint64_t a1)
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

void sub_100010C5C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1000110D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011198;
      block[3] = &unk_1000A6A38;
      v6 = v2;
      dispatch_async(v3, block);
    }

    else
    {
      v4 = v2[2];

      v4();
    }
  }
}

void sub_100011A0C(id a1)
{
  size = 0;
  sysctlbyname("hw.machine", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0xDD849C12uLL);
  sysctlbyname("hw.machine", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  free(v1);
  objc_storeStrong(&qword_1000B4B80, v2);
  if (!qword_1000B4B80)
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007CD74();
    }

    v4 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007CD9C(v3, v4);
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007CE58();
    }

    v5 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007B9B8(v5, v3);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIDevice(CRLAdditions) crl_platformString]_block_invoke");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIDevice_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:46 isFatal:0 description:"invalid nil value for '%{public}s'", "s_platformString"];
  }
}

void sub_100011BD0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100011C14(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

__CFData *CGImagePNGRepresentationWithProperties(CGImage *a1, void *a2)
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

id CGImageJPEGRepresentation(uint64_t a1, CGFloat a2)
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

__CFData *CGImageTIFFRepresentation(CGImage *a1)
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

void sub_10001239C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000123E0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100012424(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100012468(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000125F8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001263C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100012854(id a1)
{
  qword_1000B4BA8 = [UITraitCollection traitCollectionWithUserInterfaceLevel:0];

  _objc_release_x1();
}

void sub_1000128DC(id a1)
{
  qword_1000B4BB0 = [UITraitCollection traitCollectionWithUserInterfaceLevel:1];

  _objc_release_x1();
}

void sub_100012950(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x36u);
}

id sub_1000129FC(uint64_t a1)
{
  result = [*(a1 + 32) p_crl_uncachedScreenClass];
  qword_1000B4BC8 = result;
  return result;
}

void sub_100013188(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000131CC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100013210(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100013254(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100013298(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000132DC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100013320(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100013364(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000133A8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000133EC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100013578(id a1)
{
  v5 = +[UIScreen mainScreen];
  [v5 nativeScale];
  v2 = v1;
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  *&qword_1000B1B00 = v2 / v4;
}

void sub_100013630(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1080.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C00 = v8;
}

void sub_1000136DC(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1112.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C10 = v8;
}

void sub_100013788(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1180.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C20 = v8;
}

void sub_100013834(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1194.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C30 = v8;
}

void sub_1000138E0(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1366.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C40 = v8;
}

void sub_10001398C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= 1366.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C50 = v8;
}

void sub_100013A38(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 568.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C60 = v8;
}

void sub_100013AE4(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= 568.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C70 = v8;
}

void sub_100013B90(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 667.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C80 = v8;
}

void sub_100013C3C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= 667.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4C90 = v8;
}

void sub_100013CE8(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 693.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4CA0 = v8;
}

void sub_100013D94(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 736.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4CB0 = v8;
}

void sub_100013E40(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 812.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4CC0 = v8;
}

void sub_100013EEC(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= 812.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4CD0 = v8;
}

void sub_100013F98(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 844.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4CE0 = v8;
}

void sub_100014044(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 896.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4CF0 = v8;
}

void sub_1000140F0(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 926.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_1000B4D00 = v8;
}

void sub_100014394(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000143D8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000145D0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100014614(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

intptr_t CRLDynamicBaseAddress()
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

void sub_100014AD8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (CRLAssertCat_init_token != -1)
  {
    sub_10007D868();
  }

  v6 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10007D87C(v6);
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

void sub_100014BDC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100014C94(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100014D64(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100015488(id a1)
{
  v1 = [NSDictionary sharedKeySetForKeys:&off_1000AAEB8];
  v2 = qword_1000B4D20;
  qword_1000B4D20 = v1;

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = qword_1000B4D28;
  qword_1000B4D28 = v3;

  dword_1000B4D30 = 0;
}

void sub_100015564(id a1)
{
  v1 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 2);
  if (v1)
  {
    v1 = dlsym(v1, "SimulateCrash");
  }

  off_1000B4D38 = v1;
}

void CRLSetCrashReporterInfov(uint64_t a1, uint64_t a2)
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

  __crashreporter_info__ = v5;
}

os_log_t CRLLogCreateCategory(char *category)
{
  v1 = os_log_create("com.apple.freeform", category);

  return v1;
}

id sub_100015B20(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

id sub_100015C04(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100015D2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100015D44(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) allObjects];

  return _objc_release_x1();
}

uint64_t sub_100015E84(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSSet setWithSet:*(*(a1 + 32) + 8)];

  return _objc_release_x1();
}

uint64_t sub_100016114(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) description];

  return _objc_release_x1();
}

id CRLLogGetNameDictionary()
{
  if (qword_1000B4D58[0] != -1)
  {
    sub_10007DA60();
  }

  v1 = qword_1000B4D50;

  return v1;
}

void sub_1000161EC(id a1)
{
  qword_1000B4D50 = +[NSMapTable strongToStrongObjectsMapTable];

  _objc_release_x1();
}

void *CRLLogEnsureCreated(void *a1, void *a2, dispatch_once_t *a3)
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000162FC;
  v14 = &unk_1000A71A0;
  v15 = a1;
  v16 = a2;
  v5 = *a3;
  v6 = a1;
  if (v5 != -1)
  {
    dispatch_once(a3, &v11);
  }

  v7 = CRLLogGetNameDictionary();
  [v7 setObject:v6 forKey:{*a2, v11, v12, v13, v14, v15, v16}];

  v8 = *a2;
  v9 = v8;

  return v8;
}

void sub_1000162FC(uint64_t a1)
{
  v2 = os_log_create("com.apple.freeform", [*(a1 + 32) UTF8String]);

  **(a1 + 40) = v2;
}

uint64_t sub_100016390()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x444974726F706D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564496472616F62;
  }
}

uint64_t sub_1000163F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100021AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100016434(uint64_t a1)
{
  v2 = sub_1000239BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100016470(uint64_t a1)
{
  v2 = sub_1000239BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000164B0(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B25B8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_1000239BC();
  sub_10007EBE4();
  v8[15] = 0;
  type metadata accessor for CRLSEBoardIdentifier(0);
  sub_100021088(&qword_1000B23E8, type metadata accessor for CRLSEBoardIdentifier);
  sub_10007EA04();
  if (!v1)
  {
    type metadata accessor for CRLSEBoard(0);
    v8[14] = 1;
    sub_10007EA24();
    v8[13] = 2;
    sub_10007DEB4();
    sub_100021088(&qword_1000B2390, &type metadata accessor for UUID);
    sub_10007EA04();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000166E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_10001FF68(&qword_1000B2210);
  __chkstk_darwin();
  v4 = &v23 - v3;
  sub_10001FF68(&qword_1000B2208);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v27 = sub_10001FF68(&qword_1000B25A8);
  v25 = *(v27 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = type metadata accessor for CRLSEBoard(0);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLSEBoardIdentifier(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v26 = v9;
  v13 = *(v9 + 24);
  v14 = sub_10007DEB4();
  v15 = *(*(v14 - 8) + 56);
  v29 = v13;
  v15(&v11[v13], 1, 1, v14);
  v16 = a1[3];
  v30 = a1;
  sub_100021160(a1, v16);
  sub_1000239BC();
  v17 = v28;
  sub_10007EBD4();
  if (v17)
  {
    sub_1000211F8(v30);
    sub_100023AE0(v11, &qword_1000B2208);
    return sub_100023AE0(&v11[v29], &qword_1000B2210);
  }

  else
  {
    v18 = v25;
    v33 = 0;
    sub_100021088(&qword_1000B23D8, type metadata accessor for CRLSEBoardIdentifier);
    sub_10007E974();
    sub_100023A10(v6, v11, &qword_1000B2208);
    v32 = 1;
    v19 = sub_10007E994();
    v20 = &v11[*(v26 + 20)];
    *v20 = v19;
    v20[1] = v21;
    v31 = 2;
    sub_100021088(&qword_1000B2328, &type metadata accessor for UUID);
    sub_10007E974();
    (*(v18 + 8))(v8, v27);
    sub_100023A10(v4, &v11[v29], &qword_1000B2210);
    sub_100021574(v11, v24, type metadata accessor for CRLSEBoard);
    sub_1000211F8(v30);
    return sub_1000214C0(v11, type metadata accessor for CRLSEBoard);
  }
}

uint64_t sub_100016BDC(void *a1)
{
  v3 = v1;
  v5 = sub_10001FF68(&qword_1000B2578);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100021160(a1, a1[3]);
  sub_1000238CC();
  sub_10007EBE4();
  v12 = 0;
  type metadata accessor for CRLSELibraryViewModel.Item(0);
  sub_100021088(&qword_1000B2580, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_10007EA54();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CRLSELibraryViewModelItemNode(0) + 20));
    v10[15] = 1;
    sub_10001FF68(&unk_1000B43E0);
    sub_100023920(&qword_1000B2588, &qword_1000B2590);
    sub_10007EA54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100016DF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin();
  v20 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B2558);
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_1000238CC();
  sub_10007EBD4();
  if (v2)
  {
    return sub_1000211F8(a1);
  }

  v11 = v10;
  v12 = v18;
  v23 = 0;
  sub_100021088(&qword_1000B2568, type metadata accessor for CRLSELibraryViewModel.Item);
  v13 = v19;
  sub_10007E9C4();
  sub_100021458(v20, v11, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_10001FF68(&unk_1000B43E0);
  v22 = 1;
  sub_100023920(&qword_1000B2570, &unk_1000B43F0);
  sub_10007E9C4();
  v14 = *(v8 + 20);
  (*(v12 + 8))(v7, v13);
  *(v11 + v14) = v21;
  sub_100021574(v11, v17, type metadata accessor for CRLSELibraryViewModelItemNode);
  sub_1000211F8(a1);
  return sub_1000214C0(v11, type metadata accessor for CRLSELibraryViewModelItemNode);
}

uint64_t sub_10001717C(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B2428);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_10002274C();
  sub_10007EBE4();
  v8[15] = 0;
  sub_10007DEB4();
  sub_100021088(&qword_1000B2390, &type metadata accessor for UUID);
  sub_10007EA54();
  if (!v1)
  {
    type metadata accessor for CRLSEBoardIdentifierStorage(0);
    v8[14] = 1;
    sub_10007EA24();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100017338@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10007DEB4();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10001FF68(&qword_1000B2418);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_10002274C();
  sub_10007EBD4();
  if (v2)
  {
    return sub_1000211F8(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_100021088(&qword_1000B2328, &type metadata accessor for UUID);
  v14 = v26;
  sub_10007E9C4();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_10007E994();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_100021574(v19, v18, type metadata accessor for CRLSEBoardIdentifierStorage);
  sub_1000211F8(a1);
  return sub_1000214C0(v19, type metadata accessor for CRLSEBoardIdentifierStorage);
}

uint64_t sub_100017690()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_1000176C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_10007EAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007EAA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000177A0(uint64_t a1)
{
  v2 = sub_1000238CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000177DC(uint64_t a1)
{
  v2 = sub_1000238CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100017848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100021FE0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10001EB4C(v7, v8);
}

uint64_t sub_1000178C8()
{
  if (*v0)
  {
    return 0x6D614E72656E776FLL;
  }

  else
  {
    return 0x4955556472616F62;
  }
}

uint64_t sub_10001790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4955556472616F62 && a2 == 0xE900000000000044;
  if (v6 || (sub_10007EAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007EAA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000179F8(uint64_t a1)
{
  v2 = sub_10002274C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100017A34(uint64_t a1)
{
  v2 = sub_10002274C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100017AA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001FF68(&qword_1000B23F0);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLSEBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_1000226F8();
  sub_10007EBD4();
  if (!v2)
  {
    v12 = v15;
    sub_100021088(&qword_1000B2400, type metadata accessor for CRLSEBoardIdentifierStorage);
    v13 = v17;
    sub_10007E9C4();
    (*(v16 + 8))(v8, v6);
    sub_100021458(v13, v11, type metadata accessor for CRLSEBoardIdentifierStorage);
    sub_100021458(v11, v12, type metadata accessor for CRLSEBoardIdentifier);
  }

  return sub_1000211F8(a1);
}

uint64_t sub_100017D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007EAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100017DF8(uint64_t a1)
{
  v2 = sub_1000226F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100017E34(uint64_t a1)
{
  v2 = sub_1000226F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100017E88(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B2408);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100021160(a1, a1[3]);
  sub_1000226F8();
  sub_10007EBE4();
  type metadata accessor for CRLSEBoardIdentifierStorage(0);
  sub_100021088(&qword_1000B2410, type metadata accessor for CRLSEBoardIdentifierStorage);
  sub_10007EA54();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100018000(uint64_t a1, uint64_t a2)
{
  if ((sub_10007DE74() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CRLSEBoardIdentifierStorage(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_10007EAA4();
}

Swift::Int sub_100018080()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLSEBoardIdentifierStorage(0);
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_100018124()
{
  sub_10007DEB4();
  sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLSEBoardIdentifierStorage(0);

  return sub_10007E494();
}

Swift::Int sub_1000181C4()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLSEBoardIdentifierStorage(0);
  sub_10007E494();
  return sub_10007EB54();
}

void sub_100018264(uint64_t a1)
{
  v2 = v1;
  v30[1] = a1;
  v30[0] = sub_10007DEB4();
  v3 = *(v30[0] - 8);
  __chkstk_darwin(v30[0]);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v30 - v16;
  v18 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v18);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021574(v2, v20, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v27 = sub_10001FF68(&qword_1000B2A20);

      v28 = *(v27 + 64);
      v29 = v30[0];
      (*(v3 + 32))(v5, v20, v30[0]);
      sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
      sub_10007E3D4();
      (*(v3 + 8))(v5, v29);
      sub_100023AE0(&v20[v28], &unk_1000B2A00);
      return;
    }

    sub_100021458(v20, v8, type metadata accessor for CRLSELibraryViewModel.Board);
    sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
    sub_10007E3D4();
    type metadata accessor for CRLSEBoardIdentifierStorage(0);
    sub_10007E494();
    v22 = type metadata accessor for CRLSELibraryViewModel.Board;
    v23 = v8;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10007EB14(*v20);
      return;
    }

    sub_100021458(v20, v17, type metadata accessor for CRLSELibraryViewModel.Filter);
    sub_100021574(v17, v15, type metadata accessor for CRLSELibraryViewModel.Filter);
    v24 = sub_10001FF68(&unk_1000B4240);
    v25 = (*(*(v24 - 8) + 48))(v15, 5, v24);
    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = 2;
      }

      else if (v25 == 4)
      {
        v26 = 3;
      }

      else
      {
        v26 = 4;
      }

      goto LABEL_16;
    }

    if (v25)
    {
      v26 = v25 != 1;
LABEL_16:
      sub_10007EB14(v26);
      v22 = type metadata accessor for CRLSELibraryViewModel.Filter;
      v23 = v17;
      goto LABEL_17;
    }

    sub_100021458(v15, v11, type metadata accessor for CRLSELibraryViewModel.Folder);
    sub_10007EB14(5uLL);
    sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
    sub_10007E3D4();
    type metadata accessor for CRLFolderIdentifierStorage(0);
    sub_10007E494();
    sub_10007E494();
    sub_1000214C0(v17, type metadata accessor for CRLSELibraryViewModel.Filter);
    v22 = type metadata accessor for CRLSELibraryViewModel.Folder;
    v23 = v11;
  }

LABEL_17:
  sub_1000214C0(v23, v22);
}

uint64_t sub_1000187F4()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021574(v1, v10, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100021458(v10, v4, type metadata accessor for CRLSELibraryViewModel.Board);
      v12 = *&v4[*(v2 + 24)];

      sub_1000214C0(v4, type metadata accessor for CRLSELibraryViewModel.Board);
    }

    else
    {
      v13 = sub_10001FF68(&qword_1000B2A20);
      v12 = *&v10[*(v13 + 48)];
      sub_100023AE0(&v10[*(v13 + 64)], &unk_1000B2A00);
      v14 = sub_10007DEB4();
      (*(*(v14 - 8) + 8))(v10, v14);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100021458(v10, v7, type metadata accessor for CRLSELibraryViewModel.Filter);
    v12 = sub_100018B58();
    sub_1000214C0(v7, type metadata accessor for CRLSELibraryViewModel.Filter);
  }

  else if (*v10)
  {
    return 0x737265646C6F46;
  }

  else
  {
    type metadata accessor for CRLSEExtensionContextManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v17 = sub_10007E404();
    v18 = sub_10007E404();
    v19 = sub_10007E404();
    v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

    v12 = sub_10007E444();
  }

  return v12;
}

uint64_t sub_100018B58()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021574(v1, v7, type metadata accessor for CRLSELibraryViewModel.Filter);
  v8 = sub_10001FF68(&unk_1000B4240);
  v9 = (*(*(v8 - 8) + 48))(v7, 5, v8);
  if (v9 > 2)
  {
    if (v9 != 3 && v9 != 4)
    {
      type metadata accessor for CRLSEExtensionContextManager();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v20 = sub_10007E404();
      v21 = sub_10007E404();
      v14 = sub_10007E404();
      v16 = [v19 localizedStringForKey:v20 value:v21 table:v14];

      goto LABEL_9;
    }

LABEL_3:
    type metadata accessor for CRLSEExtensionContextManager();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:v10];
    v12 = sub_10007E404();
    v13 = sub_10007E404();
    v14 = sub_10007E404();
    v16 = [v11 localizedStringForKey:v12 value:v13 table:v14];

LABEL_9:
    v15 = sub_10007E444();

    return v15;
  }

  if (v9)
  {
    goto LABEL_3;
  }

  sub_100021458(v7, v4, type metadata accessor for CRLSELibraryViewModel.Folder);
  v15 = *&v4[*(v2 + 20)];

  sub_1000214C0(v4, type metadata accessor for CRLSELibraryViewModel.Folder);
  return v15;
}

id sub_1000190A0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021574(v1, v10, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000214C0(v10, type metadata accessor for CRLSELibraryViewModel.Board);
    }

    else
    {
      v14 = sub_10001FF68(&qword_1000B2A20);

      sub_100023AE0(&v10[*(v14 + 64)], &unk_1000B2A00);
      v15 = sub_10007DEB4();
      (*(*(v15 - 8) + 8))(v10, v15);
    }

    return 0;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100021458(v10, v7, type metadata accessor for CRLSELibraryViewModel.Filter);
    sub_100021574(v7, v5, type metadata accessor for CRLSELibraryViewModel.Filter);
    v13 = sub_10001FF68(&unk_1000B4240);
    if (!(*(*(v13 - 8) + 48))(v5, 5, v13))
    {
      sub_1000214C0(v5, type metadata accessor for CRLSELibraryViewModel.Folder);
    }

    v16 = objc_opt_self();
    v17 = sub_10007E404();

    v18 = [v16 systemImageNamed:v17];

    sub_1000214C0(v7, type metadata accessor for CRLSELibraryViewModel.Filter);
    return v18;
  }

  else
  {
    return 0;
  }
}

void sub_100019440()
{
  v1 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021574(v0, v3, type metadata accessor for CRLSELibraryViewModel.Filter);
  v4 = sub_10001FF68(&unk_1000B4240);
  v5 = (*(*(v4 - 8) + 48))(v3, 5, v4);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = [objc_opt_self() systemRedColor];
    }

    else if (v5 == 4)
    {
      v6 = [objc_opt_self() systemBlueColor];
    }

    else
    {
      v6 = [objc_opt_self() systemGrayColor];
    }
  }

  else
  {
    if (!v5)
    {
      v7 = sub_10007E404();
      v8 = [objc_opt_self() colorNamed:v7];

      if (v8)
      {
        sub_1000214C0(v3, type metadata accessor for CRLSELibraryViewModel.Folder);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    if (v5 == 1)
    {
      v6 = [objc_opt_self() systemCyanColor];
    }

    else
    {
      v6 = [objc_opt_self() systemOrangeColor];
    }
  }

  v9 = v6;
}

uint64_t sub_100019664()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021574(v1, v10, type metadata accessor for CRLSELibraryViewModel.Item);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      sub_100021458(v10, v4, type metadata accessor for CRLSELibraryViewModel.Board);
      v14 = v4[*(v2 + 36)];
      sub_1000214C0(v4, type metadata accessor for CRLSELibraryViewModel.Board);
      return v14;
    }

    v15 = sub_10001FF68(&qword_1000B2A20);

    sub_100023AE0(&v10[*(v15 + 64)], &unk_1000B2A00);
    v16 = sub_10007DEB4();
    (*(*(v16 - 8) + 8))(v10, v16);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_100021458(v10, v7, type metadata accessor for CRLSELibraryViewModel.Filter);
    v12 = sub_10001FF68(&unk_1000B4240);
    if ((*(*(v12 - 8) + 48))(v7, 5, v12))
    {
      v13 = type metadata accessor for CRLSELibraryViewModel.Filter;
    }

    else
    {
      v13 = type metadata accessor for CRLSELibraryViewModel.Folder;
    }

    sub_1000214C0(v7, v13);
  }

  return 0;
}

uint64_t sub_100019920(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B2368);
  v65 = *(v2 - 8);
  v66 = v2;
  __chkstk_darwin(v2);
  v63 = &v52 - v3;
  v4 = sub_10001FF68(&unk_1000B2A00);
  __chkstk_darwin(v4 - 8);
  v68 = &v52 - v5;
  v69 = sub_10007DEB4();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001FF68(&qword_1000B2370);
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v60 = &v52 - v8;
  v58 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v58);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001FF68(&qword_1000B2378);
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v55 = &v52 - v11;
  v54 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v54);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001FF68(&qword_1000B2380);
  v53 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10001FF68(&qword_1000B2388);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v21 = &v52 - v20;
  sub_100021160(a1, a1[3]);
  sub_1000211A4();
  v73 = v21;
  sub_10007EBE4();
  sub_100021574(v70, v19, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = v59;
      sub_100021458(v19, v59, type metadata accessor for CRLSELibraryViewModel.Board);
      v78 = 2;
      sub_100021298();
      v28 = v60;
      v30 = v73;
      v29 = v74;
      sub_10007E9E4();
      sub_100021088(&qword_1000B23A0, type metadata accessor for CRLSELibraryViewModel.Board);
      v31 = v62;
      sub_10007EA54();
      (*(v61 + 8))(v28, v31);
      sub_1000214C0(v27, type metadata accessor for CRLSELibraryViewModel.Board);
      return (*(v72 + 8))(v30, v29);
    }

    else
    {
      v36 = sub_10001FF68(&qword_1000B2A20);
      v37 = &v19[*(v36 + 48)];
      v39 = *v37;
      v38 = v37[1];
      v62 = v39;
      v70 = v38;
      v40 = *(v36 + 64);
      v41 = v67;
      v42 = v64;
      v43 = v69;
      (*(v67 + 32))(v64, v19, v69);
      v44 = v68;
      sub_1000213E8(&v19[v40], v68);
      v82 = 3;
      sub_100021244();
      v45 = v63;
      v47 = v73;
      v46 = v74;
      sub_10007E9E4();
      v81 = 0;
      sub_100021088(&qword_1000B2390, &type metadata accessor for UUID);
      v48 = v66;
      v49 = v71;
      sub_10007EA54();
      if (v49)
      {

        (*(v65 + 8))(v45, v48);
        sub_100023AE0(v44, &unk_1000B2A00);
        (*(v41 + 8))(v42, v43);
        return (*(v72 + 8))(v47, v46);
      }

      else
      {
        v80 = 1;
        sub_10007EA24();

        v79 = 2;
        sub_10007DE44();
        sub_100021088(&qword_1000B2398, &type metadata accessor for Date);
        v50 = v68;
        sub_10007EA04();
        v51 = v69;
        (*(v65 + 8))(v45, v48);
        sub_100023AE0(v50, &unk_1000B2A00);
        (*(v41 + 8))(v42, v51);
        return (*(v72 + 8))(v73, v74);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100021458(v19, v13, type metadata accessor for CRLSELibraryViewModel.Filter);
    v77 = 1;
    sub_1000212EC();
    v32 = v55;
    v33 = v73;
    v34 = v74;
    sub_10007E9E4();
    sub_100021088(&qword_1000B23A8, type metadata accessor for CRLSELibraryViewModel.Filter);
    v35 = v57;
    sub_10007EA54();
    (*(v56 + 8))(v32, v35);
    sub_1000214C0(v13, type metadata accessor for CRLSELibraryViewModel.Filter);
    return (*(v72 + 8))(v33, v34);
  }

  else
  {
    v23 = *v19;
    v76 = 0;
    sub_100021340();
    v25 = v73;
    v24 = v74;
    sub_10007E9E4();
    v75 = v23;
    sub_100021520();
    sub_10007EA54();
    (*(v53 + 8))(v16, v14);
    return (*(v72 + 8))(v25, v24);
  }
}

uint64_t sub_10001A3B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_10001FF68(&qword_1000B22E8);
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  __chkstk_darwin(v3);
  v80 = &v63 - v5;
  v70 = sub_10001FF68(&qword_1000B22F0);
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v79 = &v63 - v6;
  v7 = sub_10001FF68(&qword_1000B22F8);
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin(v7);
  v76 = &v63 - v8;
  v9 = sub_10001FF68(&qword_1000B2300);
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin(v9);
  v78 = &v63 - v10;
  v11 = sub_10001FF68(&qword_1000B2308);
  v81 = *(v11 - 8);
  v82 = v11;
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  v77 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v14 = __chkstk_darwin(v77);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v63 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v63 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v63 - v24;
  __chkstk_darwin(v23);
  v27 = &v63 - v26;
  v28 = a1[3];
  v85 = a1;
  sub_100021160(a1, v28);
  sub_1000211A4();
  v29 = v84;
  sub_10007EBD4();
  if (!v29)
  {
    v64 = v25;
    v84 = v22;
    v65 = v19;
    v66 = v27;
    v30 = v78;
    v31 = v79;
    v67 = v16;
    v32 = v80;
    v33 = v82;
    v34 = v83;
    v35 = sub_10007E9D4();
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = *(v35 + 32);
      if (v36 == 1 && v37 != 4)
      {
        if (*(v35 + 32) <= 1u)
        {
          if (*(v35 + 32))
          {
            v88 = 1;
            sub_1000212EC();
            v51 = v76;
            sub_10007E944();
            type metadata accessor for CRLSELibraryViewModel.Filter(0);
            sub_100021088(&qword_1000B2350, type metadata accessor for CRLSELibraryViewModel.Filter);
            v52 = v72;
            sub_10007E9C4();
            v53 = v81;
            (*(v71 + 8))(v51, v52);
            (*(v53 + 8))(v13, v33);
            swift_unknownObjectRelease();
            v57 = v84;
            swift_storeEnumTagMultiPayload();
            v46 = v66;
            sub_100021458(v57, v66, type metadata accessor for CRLSELibraryViewModel.Item);
          }

          else
          {
            v87 = 0;
            sub_100021340();
            v43 = v30;
            sub_10007E944();
            sub_100021394();
            v44 = v69;
            sub_10007E9C4();
            (*(v68 + 8))(v43, v44);
            (*(v81 + 8))(v13, v33);
            swift_unknownObjectRelease();
            v45 = v64;
            *v64 = v86;
            swift_storeEnumTagMultiPayload();
            v46 = v66;
            sub_100021458(v45, v66, type metadata accessor for CRLSELibraryViewModel.Item);
          }

          v47 = v34;
          goto LABEL_22;
        }

        if (v37 == 2)
        {
          v89 = 2;
          sub_100021298();
          sub_10007E944();
          type metadata accessor for CRLSELibraryViewModel.Board(0);
          v84 = 0;
          sub_100021088(&qword_1000B2340, type metadata accessor for CRLSELibraryViewModel.Board);
          v48 = v65;
          v49 = v70;
          v50 = v84;
          sub_10007E9C4();
          if (v50)
          {
            (*(v73 + 8))(v31, v49);
            (*(v81 + 8))(v13, v33);
            goto LABEL_18;
          }

          (*(v73 + 8))(v31, v49);
          (*(v81 + 8))(v13, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v66;
          sub_100021458(v48, v66, type metadata accessor for CRLSELibraryViewModel.Item);
        }

        else
        {
          v93 = 3;
          sub_100021244();
          sub_10007E944();
          sub_10007DEB4();
          v92 = 0;
          sub_100021088(&qword_1000B2328, &type metadata accessor for UUID);
          v55 = v67;
          v56 = v74;
          sub_10007E9C4();
          v91 = 1;
          v58 = sub_10007E994();
          v60 = v59;
          v61 = &v55[*(sub_10001FF68(&qword_1000B2A20) + 48)];
          *v61 = v58;
          v61[1] = v60;
          sub_10007DE44();
          v90 = 2;
          sub_100021088(&qword_1000B2330, &type metadata accessor for Date);
          v62 = v67;
          sub_10007E974();
          (*(v75 + 8))(v32, v56);
          (*(v81 + 8))(v13, v82);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v66;
          sub_100021458(v62, v66, type metadata accessor for CRLSELibraryViewModel.Item);
        }

        v47 = v83;
LABEL_22:
        sub_100021458(v46, v47, type metadata accessor for CRLSELibraryViewModel.Item);
        return sub_1000211F8(v85);
      }
    }

    v39 = sub_10007E874();
    swift_allocError();
    v40 = v33;
    v42 = v41;
    sub_10001FF68(&qword_1000B2318);
    *v42 = v77;
    sub_10007E954();
    sub_10007E864();
    (*(*(v39 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v39);
    swift_willThrow();
    (*(v81 + 8))(v13, v40);
LABEL_18:
    swift_unknownObjectRelease();
  }

  return sub_1000211F8(v85);
}

uint64_t sub_10001B024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6472616F62 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007EAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001B0A8(uint64_t a1)
{
  v2 = sub_100021298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B0E4(uint64_t a1)
{
  v2 = sub_100021298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B120()
{
  v1 = 0x7972617262696CLL;
  v2 = 0x6472616F62;
  if (*v0 != 2)
  {
    v2 = 0x42676E69646E6570;
  }

  if (*v0)
  {
    v1 = 0x7265746C6966;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001B19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100023110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001B1D0(uint64_t a1)
{
  v2 = sub_1000211A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B20C(uint64_t a1)
{
  v2 = sub_1000211A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B258(uint64_t a1)
{
  v2 = sub_1000212EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B294(uint64_t a1)
{
  v2 = sub_1000212EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007EAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001B350(uint64_t a1)
{
  v2 = sub_100021340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B38C(uint64_t a1)
{
  v2 = sub_100021340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B3C8()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x746964457473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_10001B424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100023270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001B44C(uint64_t a1)
{
  v2 = sub_100021244();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B488(uint64_t a1)
{
  v2 = sub_100021244();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B52C()
{
  if (*v0)
  {
    return 0x646C6F4672657375;
  }

  else
  {
    return 0x69466D6574737973;
  }
}

uint64_t sub_10001B57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69466D6574737973 && a2 == 0xED0000737265746CLL;
  if (v6 || (sub_10007EAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C6F4672657375 && a2 == 0xEB00000000737265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007EAA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10001B664(uint64_t a1)
{
  v2 = sub_1000237D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B6A0(uint64_t a1)
{
  v2 = sub_1000237D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B6E8(uint64_t a1)
{
  v2 = sub_100023878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B724(uint64_t a1)
{
  v2 = sub_100023878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B760@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10001B790(uint64_t a1)
{
  v2 = sub_100023824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B7CC(uint64_t a1)
{
  v2 = sub_100023824();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B808(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_10001FF68(&qword_1000B2540);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_10001FF68(&qword_1000B2548);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_10001FF68(&qword_1000B2550);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100021160(a1, a1[3]);
  sub_1000237D0();
  sub_10007EBE4();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100023824();
    sub_10007E9E4();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_100023878();
    sub_10007E9E4();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_10001BAC4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100023394(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10001BB10(uint64_t a1)
{
  v2 = sub_100022998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001BB4C(uint64_t a1)
{
  v2 = sub_100022998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001BB88()
{
  v1 = *v0;
  v2 = 0x6472616F426C6C61;
  v3 = 0x646572616873;
  v4 = 0x796C746E65636572;
  if (v1 != 4)
  {
    v4 = 0x7265646C6F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73746E65636572;
  if (v1 != 1)
  {
    v5 = 0x657469726F766166;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001BC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100025734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001BC70(uint64_t a1)
{
  v2 = sub_1000227A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001BCAC(uint64_t a1)
{
  v2 = sub_1000227A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001BCE8(uint64_t a1)
{
  v2 = sub_1000228F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001BD24(uint64_t a1)
{
  v2 = sub_1000228F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int UUID.UUIDCodingError.hashValue.getter()
{
  sub_10007EB04();
  sub_10007EB14(0);
  return sub_10007EB54();
}

Swift::Int sub_10001BDA4()
{
  sub_10007EB04();
  sub_10007EB14(0);
  return sub_10007EB54();
}

uint64_t sub_10001BE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007EAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001BE90(uint64_t a1)
{
  v2 = sub_1000227F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001BECC(uint64_t a1)
{
  v2 = sub_1000227F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001BF08(uint64_t a1)
{
  v2 = sub_100022848();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001BF44(uint64_t a1)
{
  v2 = sub_100022848();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001BF80(uint64_t a1)
{
  v2 = sub_100022944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001BFBC(uint64_t a1)
{
  v2 = sub_100022944();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001BFF8(uint64_t a1)
{
  v2 = sub_10002289C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C034(uint64_t a1)
{
  v2 = sub_10002289C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001C070(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B24A8);
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v36 - v3;
  v48 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v48);
  v49 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B24B0);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v36 - v6;
  v7 = sub_10001FF68(&qword_1000B24B8);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v36 - v8;
  v9 = sub_10001FF68(&qword_1000B24C0);
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_10001FF68(&qword_1000B24C8);
  v38 = *(v12 - 8);
  v39 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = sub_10001FF68(&qword_1000B24D0);
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10001FF68(&qword_1000B24D8);
  v53 = *(v21 - 8);
  v54 = v21;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  sub_100021160(a1, a1[3]);
  sub_1000227A0();
  sub_10007EBE4();
  sub_100021574(v55, v20, type metadata accessor for CRLSELibraryViewModel.Filter);
  v24 = sub_10001FF68(&unk_1000B4240);
  v25 = (*(*(v24 - 8) + 48))(v20, 5, v24);
  if (v25 <= 2)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        v56 = 0;
        sub_100022998();
        v26 = v54;
        sub_10007E9E4();
        (*(v37 + 8))(v17, v15);
        return (*(v53 + 8))(v23, v26);
      }

      v57 = 1;
      sub_100022944();
      v35 = v54;
      sub_10007E9E4();
      (*(v38 + 8))(v14, v39);
      return (*(v53 + 8))(v23, v35);
    }

    v32 = v49;
    sub_100021458(v20, v49, type metadata accessor for CRLSELibraryViewModel.Folder);
    v61 = 5;
    sub_1000227F4();
    v33 = v50;
    v29 = v54;
    sub_10007E9E4();
    sub_100021088(&qword_1000B24E0, type metadata accessor for CRLSELibraryViewModel.Folder);
    v34 = v52;
    sub_10007EA54();
    (*(v51 + 8))(v33, v34);
    sub_1000214C0(v32, type metadata accessor for CRLSELibraryViewModel.Folder);
    return (*(v53 + 8))(v23, v29);
  }

  if (v25 != 3)
  {
    if (v25 == 4)
    {
      v59 = 3;
      sub_10002289C();
      v28 = v42;
      v29 = v54;
      sub_10007E9E4();
      v31 = v43;
      v30 = v44;
    }

    else
    {
      v60 = 4;
      sub_100022848();
      v28 = v45;
      v29 = v54;
      sub_10007E9E4();
      v31 = v46;
      v30 = v47;
    }

    (*(v31 + 8))(v28, v30);
    return (*(v53 + 8))(v23, v29);
  }

  v58 = 2;
  sub_1000228F0();
  v35 = v54;
  sub_10007E9E4();
  (*(v40 + 8))(v11, v41);
  return (*(v53 + 8))(v23, v35);
}

void sub_10001C840()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021574(v1, v7, type metadata accessor for CRLSELibraryViewModel.Filter);
  v8 = sub_10001FF68(&unk_1000B4240);
  v9 = (*(*(v8 - 8) + 48))(v7, 5, v8);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = 2;
    }

    else if (v9 == 4)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }
  }

  else
  {
    if (!v9)
    {
      sub_100021458(v7, v4, type metadata accessor for CRLSELibraryViewModel.Folder);
      sub_10007EB14(5uLL);
      sub_10007DEB4();
      sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
      sub_10007E3D4();
      type metadata accessor for CRLFolderIdentifierStorage(0);
      sub_10007E494();
      sub_10007E494();
      sub_1000214C0(v4, type metadata accessor for CRLSELibraryViewModel.Folder);
      return;
    }

    v10 = v9 != 1;
  }

  sub_10007EB14(v10);
}

uint64_t sub_10001CA90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_10001FF68(&qword_1000B2430);
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  __chkstk_darwin(v3);
  v73 = &v57 - v5;
  v6 = sub_10001FF68(&qword_1000B2438);
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v76 = &v57 - v7;
  v8 = sub_10001FF68(&qword_1000B2440);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  __chkstk_darwin(v8);
  v75 = &v57 - v10;
  v11 = sub_10001FF68(&qword_1000B2448);
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v72 = &v57 - v12;
  v13 = sub_10001FF68(&qword_1000B2450);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v71 = &v57 - v14;
  v15 = sub_10001FF68(&qword_1000B2458);
  v59 = *(v15 - 8);
  v60 = v15;
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  v18 = sub_10001FF68(&qword_1000B2460);
  v77 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v22 = __chkstk_darwin(v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v57 - v25;
  v27 = a1[3];
  v79 = a1;
  sub_100021160(a1, v27);
  sub_1000227A0();
  v28 = v78;
  sub_10007EBD4();
  if (!v28)
  {
    v58 = v24;
    v29 = v75;
    v30 = v76;
    v78 = v26;
    v31 = v20;
    v32 = sub_10007E9D4();
    if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 6))
    {
      v39 = sub_10007E874();
      swift_allocError();
      v41 = v40;
      sub_10001FF68(&qword_1000B2318);
      *v41 = v21;
      sub_10007E954();
      sub_10007E864();
      (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v39);
      swift_willThrow();
      (*(v77 + 8))(v20, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v32 + 32) > 2u)
      {
        if (v33 == 3)
        {
          v83 = 3;
          sub_10002289C();
          v46 = v29;
          sub_10007E944();
          v47 = v77;
          (*(v66 + 8))(v46, v65);
          (*(v47 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v48 = sub_10001FF68(&unk_1000B4240);
          v38 = v78;
          (*(*(v48 - 8) + 56))(v78, 4, 5, v48);
        }

        else
        {
          v43 = v77;
          if (v33 == 4)
          {
            v84 = 4;
            sub_100022848();
            sub_10007E944();
            (*(v67 + 8))(v30, v68);
            (*(v43 + 8))(v31, v18);
            swift_unknownObjectRelease();
            v44 = sub_10001FF68(&unk_1000B4240);
            v38 = v78;
            (*(*(v44 - 8) + 56))(v78, 5, 5, v44);
          }

          else
          {
            v85 = 5;
            sub_1000227F4();
            sub_10007E944();
            v52 = v31;
            type metadata accessor for CRLSELibraryViewModel.Folder(0);
            sub_100021088(&qword_1000B2478, type metadata accessor for CRLSELibraryViewModel.Folder);
            v53 = v58;
            v54 = v69;
            v55 = v73;
            sub_10007E9C4();
            (*(v70 + 8))(v55, v54);
            (*(v43 + 8))(v52, v18);
            swift_unknownObjectRelease();
            v56 = sub_10001FF68(&unk_1000B4240);
            (*(*(v56 - 8) + 56))(v53, 0, 5, v56);
            v38 = v78;
            sub_100021458(v53, v78, type metadata accessor for CRLSELibraryViewModel.Filter);
          }
        }

        v34 = v74;
      }

      else
      {
        v34 = v74;
        if (*(v32 + 32))
        {
          if (v33 == 1)
          {
            v81 = 1;
            sub_100022944();
            v35 = v71;
            sub_10007E944();
            v36 = v77;
            (*(v61 + 8))(v35, v62);
            (*(v36 + 8))(v31, v18);
            swift_unknownObjectRelease();
            v37 = sub_10001FF68(&unk_1000B4240);
            v38 = v78;
            (*(*(v37 - 8) + 56))(v78, 2, 5, v37);
          }

          else
          {
            v82 = 2;
            sub_1000228F0();
            v49 = v72;
            sub_10007E944();
            v50 = v77;
            (*(v63 + 8))(v49, v64);
            (*(v50 + 8))(v31, v18);
            swift_unknownObjectRelease();
            v51 = sub_10001FF68(&unk_1000B4240);
            v38 = v78;
            (*(*(v51 - 8) + 56))(v78, 3, 5, v51);
          }
        }

        else
        {
          v80 = 0;
          sub_100022998();
          sub_10007E944();
          (*(v59 + 8))(v17, v60);
          (*(v77 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v45 = sub_10001FF68(&unk_1000B4240);
          v38 = v78;
          (*(*(v45 - 8) + 56))(v78, 1, 5, v45);
        }
      }

      sub_100021458(v38, v34, type metadata accessor for CRLSELibraryViewModel.Filter);
    }
  }

  return sub_1000211F8(v79);
}

Swift::Int sub_10001D63C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_10007EB04();
  a3(v5);
  return sub_10007EB54();
}

Swift::Int sub_10001D6A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_10007EB04();
  a4(v6);
  return sub_10007EB54();
}

Swift::Int sub_10001D6E8()
{
  v1 = *v0;
  sub_10007EB04();
  sub_10007EB14(v1);
  return sub_10007EB54();
}

Swift::Int sub_10001D730()
{
  v1 = *v0;
  sub_10007EB04();
  sub_10007EB14(v1);
  return sub_10007EB54();
}

uint64_t sub_10001D774()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10001D7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010008C6B0 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_10007EAA4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10001D894(uint64_t a1)
{
  v2 = sub_1000229EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D8D0(uint64_t a1)
{
  v2 = sub_1000229EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D90C(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B2500);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_1000229EC();
  sub_10007EBE4();
  v8[15] = 0;
  type metadata accessor for CRLFolderIdentifier(0);
  sub_100021088(&qword_1000B2508, type metadata accessor for CRLFolderIdentifier);
  sub_10007EA54();
  if (!v1)
  {
    type metadata accessor for CRLSELibraryViewModel.Folder(0);
    v8[14] = 1;
    sub_10007EA24();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10001DAC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  __chkstk_darwin(v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10001FF68(&qword_1000B24E8);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_1000229EC();
  sub_10007EBD4();
  if (v2)
  {
    return sub_1000211F8(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  sub_100021088(&qword_1000B24F8, type metadata accessor for CRLFolderIdentifier);
  v14 = v25;
  v13 = v26;
  sub_10007E9C4();
  sub_100021458(v14, v11, type metadata accessor for CRLFolderIdentifier);
  v27 = 1;
  v15 = sub_10007E994();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = (v11 + *(v22 + 20));
  *v19 = v15;
  v19[1] = v17;
  sub_100021574(v11, v18, type metadata accessor for CRLSELibraryViewModel.Folder);
  sub_1000211F8(a1);
  return sub_1000214C0(v11, type metadata accessor for CRLSELibraryViewModel.Folder);
}

uint64_t sub_10001DDFC(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B23E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_1000226A4();
  sub_10007EBE4();
  v8[15] = 0;
  type metadata accessor for CRLSEBoardIdentifier(0);
  sub_100021088(&qword_1000B23E8, type metadata accessor for CRLSEBoardIdentifier);
  sub_10007EA54();
  if (!v1)
  {
    type metadata accessor for CRLSELibraryViewModel.Board(0);
    v8[14] = 1;
    sub_10007EA24();
    v8[13] = 2;
    sub_10007EA24();
    v8[12] = 3;
    sub_10007EA24();
    v8[11] = 4;
    sub_10007DE44();
    sub_100021088(&qword_1000B2398, &type metadata accessor for Date);
    sub_10007EA04();
    v8[10] = 5;
    sub_10007EA34();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10001E0BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_10001FF68(&unk_1000B2A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for CRLSEBoardIdentifier(0);
  __chkstk_darwin(v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10001FF68(&qword_1000B23C8);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v30 - v8;
  v10 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v35 = a1;
  sub_100021160(a1, v13);
  sub_1000226A4();
  v14 = v34;
  sub_10007EBD4();
  if (v14)
  {
    return sub_1000211F8(v35);
  }

  v34 = v5;
  v15 = v31;
  v16 = v12;
  v41 = 0;
  sub_100021088(&qword_1000B23D8, type metadata accessor for CRLSEBoardIdentifier);
  v17 = v32;
  v18 = v33;
  sub_10007E9C4();
  sub_100021458(v17, v16, type metadata accessor for CRLSEBoardIdentifier);
  v40 = 1;
  v19 = sub_10007E994();
  v21 = (v16 + v10[5]);
  *v21 = v19;
  v21[1] = v22;
  v39 = 2;
  v23 = sub_10007E994();
  v24 = (v16 + v10[6]);
  *v24 = v23;
  v24[1] = v25;
  v38 = 3;
  v26 = sub_10007E994();
  v27 = (v16 + v10[7]);
  *v27 = v26;
  v27[1] = v28;
  sub_10007DE44();
  v37 = 4;
  sub_100021088(&qword_1000B2330, &type metadata accessor for Date);
  v29 = v34;
  sub_10007E974();
  sub_1000213E8(v29, v16 + v10[8]);
  v36 = 5;
  LOBYTE(v17) = sub_10007E9A4();
  (*(v15 + 8))(v9, v18);
  *(v16 + v10[9]) = v17 & 1;
  sub_100021574(v16, v30, type metadata accessor for CRLSELibraryViewModel.Board);
  sub_1000211F8(v35);
  return sub_1000214C0(v16, type metadata accessor for CRLSELibraryViewModel.Board);
}

Swift::Int sub_10001E6A0()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_10007E494();
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_10001E764()
{
  sub_10007DEB4();
  sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_10007E494();

  return sub_10007E494();
}

Swift::Int sub_10001E81C()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100021088(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_10007E494();
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_10001E8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10007DE74() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_10007EAA4() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 20);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_10007EAA4();
}

unint64_t sub_10001E998()
{
  v1 = *v0;
  v2 = 0x6564496472616F62;
  v3 = 0xD000000000000010;
  v4 = 0x746964457473616CLL;
  if (v1 != 4)
  {
    v4 = 0x6465726168537369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C69466567616D69;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001EA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100025940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001EAA4(uint64_t a1)
{
  v2 = sub_1000226A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001EAE0(uint64_t a1)
{
  v2 = sub_1000226A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001EB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100021574(v13, v10, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100021574(v14, v7, type metadata accessor for CRLSELibraryViewModelItemNode);
      if ((sub_100021FE0(v10, v7) & 1) == 0)
      {
        break;
      }

      v16 = sub_10001EB4C(*&v10[*(v4 + 20)], *&v7[*(v4 + 20)]);
      sub_1000214C0(v7, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_1000214C0(v10, type metadata accessor for CRLSELibraryViewModelItemNode);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1000214C0(v7, type metadata accessor for CRLSELibraryViewModelItemNode);
    sub_1000214C0(v10, type metadata accessor for CRLSELibraryViewModelItemNode);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_10001ED54(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v67[-v8];
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_10001FF68(&qword_1000B2598);
  __chkstk_darwin(v74);
  v81 = &v67[-v13];
  v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v67[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v79 = &v67[-v19];
  __chkstk_darwin(v18);
  v78 = &v67[-v20];
  v84 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v21 = __chkstk_darwin(v84);
  v80 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v76 = &v67[-v24];
  __chkstk_darwin(v23);
  v75 = &v67[-v25];
  v83 = sub_10001FF68(&qword_1000B25A0);
  __chkstk_darwin(v83);
  v27 = &v67[-v26];
  v82 = _s4NodeVMa(0);
  v28 = __chkstk_darwin(v82);
  v30 = &v67[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v33 = &v67[-v32];
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
    goto LABEL_44;
  }

  if (!v34 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v69 = v12;
  v70 = v17;
  v71 = v7;
  v72 = v9;
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = a1 + v35;
  v37 = a2 + v35;
  v77 = *(v31 + 72);
  v73 = v30;
  while (1)
  {
    sub_100021574(v36, v33, _s4NodeVMa);
    sub_100021574(v37, v30, _s4NodeVMa);
    v38 = *(v83 + 48);
    sub_100021574(v33, v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100021574(v30, &v27[v38], type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v50 = v75;
      sub_100021574(v27, v75, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_39;
      }

      v51 = *v50;
      v52 = v27[v38];
      sub_1000214C0(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (v51 != v52)
      {
        goto LABEL_43;
      }

      goto LABEL_32;
    }

    v40 = v80;
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    sub_100021574(v27, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v65 = _s5BoardVMa;
LABEL_38:
      sub_1000214C0(v40, v65);
LABEL_39:
      sub_100023AE0(v27, &qword_1000B25A0);
      goto LABEL_43;
    }

    v53 = v72;
    sub_100021458(v40, v72, _s5BoardVMa);
    sub_100021458(&v27[v38], v7, _s5BoardVMa);
    v54 = sub_10004E760(v53, v7);
    sub_1000214C0(v7, _s5BoardVMa);
    sub_1000214C0(v53, _s5BoardVMa);
    sub_1000214C0(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if ((v54 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_32:
    v64 = sub_10001ED54(*&v33[*(v82 + 20)], *&v30[*(v82 + 20)]);
    sub_1000214C0(v30, _s4NodeVMa);
    sub_1000214C0(v33, _s4NodeVMa);
    if (v64)
    {
      v37 += v77;
      v36 += v77;
      if (--v34)
      {
        continue;
      }
    }

    return v64 & 1;
  }

  v40 = v76;
  sub_100021574(v27, v76, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v65 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    goto LABEL_38;
  }

  v41 = v78;
  sub_100021458(v40, v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v42 = v79;
  sub_100021458(&v27[v38], v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v43 = *(v74 + 48);
  v44 = v81;
  sub_100021574(v41, v81, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100021574(v42, &v44[v43], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v45 = sub_10001FF68(&unk_1000B3390);
  v46 = *(*(v45 - 8) + 48);
  v47 = v46(v44, 5, v45);
  if (v47 > 2)
  {
    v30 = v73;
    if (v47 == 3)
    {
      v61 = &v81[v43];
      v49 = v81;
      if (v46(v61, 5, v45) != 3)
      {
        goto LABEL_41;
      }
    }

    else if (v47 == 4)
    {
      v55 = &v81[v43];
      v49 = v81;
      if (v46(v55, 5, v45) != 4)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v63 = &v81[v43];
      v49 = v81;
      if (v46(v63, 5, v45) != 5)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_31;
  }

  v30 = v73;
  if (v47)
  {
    if (v47 == 1)
    {
      v48 = &v81[v43];
      v49 = v81;
      if (v46(v48, 5, v45) != 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v62 = &v81[v43];
      v49 = v81;
      if (v46(v62, 5, v45) != 2)
      {
        goto LABEL_41;
      }
    }

LABEL_31:
    sub_1000214C0(v49, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_1000214C0(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_1000214C0(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_1000214C0(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v7 = v71;
    goto LABEL_32;
  }

  v56 = v81;
  sub_100021574(v81, v70, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (!v46(&v56[v43], 5, v45))
  {
    v57 = v81;
    v58 = &v81[v43];
    v59 = v69;
    sub_100021458(v58, v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v60 = v70;
    v68 = sub_100038A84(v70, v59);
    sub_1000214C0(v59, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_1000214C0(v60, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v49 = v57;
    v30 = v73;
    if ((v68 & 1) == 0)
    {
      sub_1000214C0(v57, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  sub_1000214C0(v70, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v49 = v81;
  v30 = v73;
LABEL_41:
  sub_100023AE0(v49, &qword_1000B2598);
LABEL_42:
  sub_1000214C0(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1000214C0(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1000214C0(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_43:
  sub_1000214C0(v30, _s4NodeVMa);
  sub_1000214C0(v33, _s4NodeVMa);
LABEL_44:
  v64 = 0;
  return v64 & 1;
}

uint64_t sub_10001F774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLDisjointPosition.Element();
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100021574(v13, v10, type metadata accessor for CRLDisjointPosition.Element);
      sub_100021574(v14, v7, type metadata accessor for CRLDisjointPosition.Element);
      if (*v10 != *v7)
      {
        break;
      }

      v16 = sub_10007DE74();
      sub_1000214C0(v7, type metadata accessor for CRLDisjointPosition.Element);
      sub_1000214C0(v10, type metadata accessor for CRLDisjointPosition.Element);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1000214C0(v7, type metadata accessor for CRLDisjointPosition.Element);
    sub_1000214C0(v10, type metadata accessor for CRLDisjointPosition.Element);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_10001F97C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for CRLBoardLibraryViewModelWrappedNode(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_10007E844();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_10007E844();
LABEL_26:
        v17 = v16;
        v18 = sub_10007E704();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_10007E704();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_10007E904();
  }

  result = sub_10007E904();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_10001FC40()
{
  type metadata accessor for CRLSELibraryViewModel.Filter(319);
  if (v0 <= 0x3F)
  {
    sub_100020564(319, &qword_1000B1E30, type metadata accessor for CRLSELibraryViewModel.Board);
    if (v1 <= 0x3F)
    {
      sub_10001FD30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10001FD30()
{
  if (!qword_1000B1E38)
  {
    sub_10007DEB4();
    sub_10001FDB8(&unk_1000B2A00);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000B1E38);
    }
  }
}

uint64_t sub_10001FDB8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001FE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLSEBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10001FF68(&unk_1000B2A00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10001FF68(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001FFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLSEBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_10001FF68(&unk_1000B2A00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000200F8()
{
  type metadata accessor for CRLSEBoardIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_100020AE8(319, &unk_1000B1ED0, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000201D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100020274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000202E4()
{
  result = type metadata accessor for CRLSEBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000203D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&unk_1000B4240);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100020460(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10001FF68(&unk_1000B4240);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000204F0()
{
  sub_100020564(319, &unk_1000B20B0, type metadata accessor for CRLSELibraryViewModel.Folder);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100020564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000205FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000206EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000207C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002088C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002095C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100020A34()
{
  type metadata accessor for CRLSELibraryViewModel.Item(319);
  if (v0 <= 0x3F)
  {
    sub_100020AE8(319, &unk_1000B21D0, type metadata accessor for CRLSELibraryViewModelItemNode, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100020AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 sub_100020B4C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100020B58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100020B78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100020BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001FF68(&qword_1000B2208);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10001FF68(&qword_1000B2210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100020D1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001FF68(&qword_1000B2208);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_10001FF68(&qword_1000B2210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100020E7C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020EB4()
{
  sub_100020AE8(319, &qword_1000B2280, type metadata accessor for CRLSEBoardIdentifier, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100020AE8(319, &unk_1000B2288, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100020FA4()
{
  result = qword_1000B22C0;
  if (!qword_1000B22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B22C0);
  }

  return result;
}

uint64_t sub_100021088(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100021160(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000211A4()
{
  result = qword_1000B2310;
  if (!qword_1000B2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2310);
  }

  return result;
}

uint64_t sub_1000211F8(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100021244()
{
  result = qword_1000B2320;
  if (!qword_1000B2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2320);
  }

  return result;
}

unint64_t sub_100021298()
{
  result = qword_1000B2338;
  if (!qword_1000B2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2338);
  }

  return result;
}

unint64_t sub_1000212EC()
{
  result = qword_1000B2348;
  if (!qword_1000B2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2348);
  }

  return result;
}

unint64_t sub_100021340()
{
  result = qword_1000B2358;
  if (!qword_1000B2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2358);
  }

  return result;
}

unint64_t sub_100021394()
{
  result = qword_1000B2360;
  if (!qword_1000B2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2360);
  }

  return result;
}

uint64_t sub_1000213E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&unk_1000B2A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000214C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100021520()
{
  result = qword_1000B23B0;
  if (!qword_1000B23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B23B0);
  }

  return result;
}

uint64_t sub_100021574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000215DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100021610()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100021648()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10002167C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1000216B0(uint64_t a1, id *a2)
{
  result = sub_10007E424();
  *a2 = 0;
  return result;
}

uint64_t sub_100021728(uint64_t a1, id *a2)
{
  v3 = sub_10007E434();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000217A8@<X0>(void *a1@<X8>)
{
  sub_10007E444();
  v2 = sub_10007E404();

  *a1 = v2;
  return result;
}

uint64_t sub_1000217EC()
{
  sub_10007E444();
  v0 = sub_10007E514();

  return v0;
}

uint64_t sub_100021828()
{
  sub_10007E444();
  sub_10007E494();
}

Swift::Int sub_10002187C()
{
  sub_10007E444();
  sub_10007EB04();
  sub_10007E494();
  v0 = sub_10007EB54();

  return v0;
}

uint64_t sub_1000218F0()
{
  v0 = sub_10007E444();
  v2 = v1;
  if (v0 == sub_10007E444() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10007EAA4();
  }

  return v5 & 1;
}

uint64_t sub_100021978@<X0>(void *a1@<X8>)
{
  v2 = sub_10007E404();

  *a1 = v2;
  return result;
}

uint64_t sub_1000219C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007E444();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000219EC(uint64_t a1)
{
  v2 = sub_100021088(&qword_1000B27C8, type metadata accessor for URLResourceKey);
  v3 = sub_100021088(&qword_1000B27D0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100021AA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444974726F706D69 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100021BC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FF68(&qword_1000B4250);
  v9 = __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = *(v9 + 56);
  sub_100021574(a1, &v27 - v10, type metadata accessor for CRLSELibraryViewModel.Filter);
  sub_100021574(a2, &v11[v12], type metadata accessor for CRLSELibraryViewModel.Filter);
  v13 = sub_10001FF68(&unk_1000B4240);
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v11, 5, v13);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      if (v14(&v11[v12], 5, v13) != 3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v15 == 4)
    {
      if (v14(&v11[v12], 5, v13) != 4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v14(&v11[v12], 5, v13) == 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v15)
    {
      if (v15 == 1)
      {
        if (v14(&v11[v12], 5, v13) != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v14(&v11[v12], 5, v13) != 2)
      {
        goto LABEL_18;
      }

LABEL_17:
      sub_1000214C0(v11, type metadata accessor for CRLSELibraryViewModel.Filter);
      return 1;
    }

    sub_100021574(v11, v8, type metadata accessor for CRLSELibraryViewModel.Filter);
    if (!v14(&v11[v12], 5, v13))
    {
      sub_100021458(&v11[v12], v6, type metadata accessor for CRLSELibraryViewModel.Folder);
      if ((sub_10007DE74() & 1) == 0 || ((v17 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v18 = *&v8[v17], v19 = *&v8[v17 + 8], v20 = &v6[v17], v18 == *v20) ? (v21 = v19 == *(v20 + 1)) : (v21 = 0), !v21 && (sub_10007EAA4() & 1) == 0 || ((v22 = *(v4 + 20), v23 = *&v8[v22], v24 = *&v8[v22 + 8], v25 = &v6[v22], v23 == *v25) ? (v26 = v24 == *(v25 + 1)) : (v26 = 0), !v26 && (sub_10007EAA4() & 1) == 0)))
      {
        sub_1000214C0(v6, type metadata accessor for CRLSELibraryViewModel.Folder);
        sub_1000214C0(v8, type metadata accessor for CRLSELibraryViewModel.Folder);
        sub_1000214C0(v11, type metadata accessor for CRLSELibraryViewModel.Filter);
        return 0;
      }

      sub_1000214C0(v6, type metadata accessor for CRLSELibraryViewModel.Folder);
      sub_1000214C0(v8, type metadata accessor for CRLSELibraryViewModel.Folder);
      goto LABEL_17;
    }

    sub_1000214C0(v8, type metadata accessor for CRLSELibraryViewModel.Folder);
  }

LABEL_18:
  sub_100023AE0(v11, &qword_1000B4250);
  return 0;
}

uint64_t sub_100021FE0(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_10007DEB4();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = (__chkstk_darwin)();
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v53 = &v52 - v5;
  v6 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  v7 = __chkstk_darwin(v6 - 8);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v52 - v9;
  v10 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v52 - v24;
  __chkstk_darwin(v23);
  v27 = &v52 - v26;
  v28 = sub_10001FF68(&qword_1000B23C0);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v52 - v30;
  v32 = &v52 + *(v29 + 56) - v30;
  sub_100021574(v58, &v52 - v30, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_100021574(v59, v32, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100021574(v31, v27, type metadata accessor for CRLSELibraryViewModel.Item);
      if (!swift_getEnumCaseMultiPayload())
      {
        v34 = *v27 ^ *v32 ^ 1;
LABEL_23:
        sub_1000214C0(v31, type metadata accessor for CRLSELibraryViewModel.Item);
        return v34 & 1;
      }

      goto LABEL_18;
    }

    sub_100021574(v31, v25, type metadata accessor for CRLSELibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000214C0(v25, type metadata accessor for CRLSELibraryViewModel.Filter);
      goto LABEL_18;
    }

    sub_100021458(v25, v15, type metadata accessor for CRLSELibraryViewModel.Filter);
    sub_100021458(v32, v13, type metadata accessor for CRLSELibraryViewModel.Filter);
    v34 = sub_100021BC4(v15, v13);
    sub_1000214C0(v13, type metadata accessor for CRLSELibraryViewModel.Filter);
    v41 = v15;
    v42 = type metadata accessor for CRLSELibraryViewModel.Filter;
LABEL_22:
    sub_1000214C0(v41, v42);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100021574(v31, v22, type metadata accessor for CRLSELibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1000214C0(v22, type metadata accessor for CRLSELibraryViewModel.Board);
      goto LABEL_18;
    }

    v35 = v52;
    sub_100021458(v22, v52, type metadata accessor for CRLSELibraryViewModel.Board);
    v36 = v54;
    sub_100021458(v32, v54, type metadata accessor for CRLSELibraryViewModel.Board);
    if (sub_10007DE74())
    {
      v37 = *(type metadata accessor for CRLSEBoardIdentifierStorage(0) + 20);
      v38 = *(v35 + v37);
      v39 = *(v35 + v37 + 8);
      v40 = (v36 + v37);
      if (v38 == *v40 && v39 == v40[1])
      {
        v34 = 1;
      }

      else
      {
        v34 = sub_10007EAA4();
      }
    }

    else
    {
      v34 = 0;
    }

    sub_1000214C0(v36, type metadata accessor for CRLSELibraryViewModel.Board);
    v41 = v35;
    v42 = type metadata accessor for CRLSELibraryViewModel.Board;
    goto LABEL_22;
  }

  sub_100021574(v31, v19, type metadata accessor for CRLSELibraryViewModel.Item);
  v43 = sub_10001FF68(&qword_1000B2A20);

  v44 = *(v43 + 64);
  if (swift_getEnumCaseMultiPayload() == 3)
  {

    v59 = *(v43 + 64);
    v46 = v56;
    v45 = v57;
    v47 = *(v56 + 32);
    v48 = v53;
    v47(v53, v19, v57);
    v49 = v55;
    v47(v55, v32, v45);
    v34 = sub_10007DE74();
    v50 = *(v46 + 8);
    v50(v49, v45);
    v50(v48, v45);
    sub_100023AE0(&v32[v59], &unk_1000B2A00);
    sub_100023AE0(&v19[v44], &unk_1000B2A00);
    goto LABEL_23;
  }

  sub_100023AE0(&v19[v44], &unk_1000B2A00);
  (*(v56 + 8))(v19, v57);
LABEL_18:
  sub_100023AE0(v31, &qword_1000B23C0);
  v34 = 0;
  return v34 & 1;
}

unint64_t sub_1000226A4()
{
  result = qword_1000B23D0;
  if (!qword_1000B23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B23D0);
  }

  return result;
}

unint64_t sub_1000226F8()
{
  result = qword_1000B23F8;
  if (!qword_1000B23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B23F8);
  }

  return result;
}

unint64_t sub_10002274C()
{
  result = qword_1000B2420;
  if (!qword_1000B2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2420);
  }

  return result;
}

unint64_t sub_1000227A0()
{
  result = qword_1000B2468;
  if (!qword_1000B2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2468);
  }

  return result;
}

unint64_t sub_1000227F4()
{
  result = qword_1000B2470;
  if (!qword_1000B2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2470);
  }

  return result;
}

unint64_t sub_100022848()
{
  result = qword_1000B2480;
  if (!qword_1000B2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2480);
  }

  return result;
}

unint64_t sub_10002289C()
{
  result = qword_1000B2488;
  if (!qword_1000B2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2488);
  }

  return result;
}

unint64_t sub_1000228F0()
{
  result = qword_1000B2490;
  if (!qword_1000B2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2490);
  }

  return result;
}

unint64_t sub_100022944()
{
  result = qword_1000B2498;
  if (!qword_1000B2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2498);
  }

  return result;
}

unint64_t sub_100022998()
{
  result = qword_1000B24A0;
  if (!qword_1000B24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B24A0);
  }

  return result;
}

unint64_t sub_1000229EC()
{
  result = qword_1000B24F0;
  if (!qword_1000B24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B24F0);
  }

  return result;
}

BOOL sub_100022A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007DEB4();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v49 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001FF68(&qword_1000B2210);
  __chkstk_darwin(v6 - 8);
  v50 = &v49 - v7;
  v51 = sub_10001FF68(&qword_1000B25C0);
  __chkstk_darwin(v51);
  v52 = &v49 - v8;
  v9 = type metadata accessor for CRLSEBoardIdentifier(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001FF68(&qword_1000B2208);
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_10001FF68(&qword_1000B25C8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v49 - v18;
  v20 = *(v17 + 56);
  v55 = a1;
  sub_100023A78(a1, &v49 - v18, &qword_1000B2208);
  v56 = a2;
  sub_100023A78(a2, &v19[v20], &qword_1000B2208);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) == 1)
  {
    if (v21(&v19[v20], 1, v9) == 1)
    {
LABEL_3:
      sub_100023AE0(v19, &qword_1000B2208);
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_100023A78(v19, v15, &qword_1000B2208);
  if (v21(&v19[v20], 1, v9) == 1)
  {
    sub_1000214C0(v15, type metadata accessor for CRLSEBoardIdentifier);
LABEL_12:
    v36 = &qword_1000B25C8;
LABEL_13:
    v37 = v19;
LABEL_14:
    sub_100023AE0(v37, v36);
    return 0;
  }

  sub_100021458(&v19[v20], v12, type metadata accessor for CRLSEBoardIdentifier);
  if ((sub_10007DE74() & 1) == 0)
  {
    sub_1000214C0(v12, type metadata accessor for CRLSEBoardIdentifier);
    sub_1000214C0(v15, type metadata accessor for CRLSEBoardIdentifier);
    v36 = &qword_1000B2208;
    goto LABEL_13;
  }

  v39 = *(type metadata accessor for CRLSEBoardIdentifierStorage(0) + 20);
  v40 = *&v15[v39];
  v41 = *&v15[v39 + 8];
  v42 = &v12[v39];
  if (v40 == *v42 && v41 == *(v42 + 1))
  {
    sub_1000214C0(v12, type metadata accessor for CRLSEBoardIdentifier);
    sub_1000214C0(v15, type metadata accessor for CRLSEBoardIdentifier);
    goto LABEL_3;
  }

  v48 = sub_10007EAA4();
  sub_1000214C0(v12, type metadata accessor for CRLSEBoardIdentifier);
  sub_1000214C0(v15, type metadata accessor for CRLSEBoardIdentifier);
  sub_100023AE0(v19, &qword_1000B2208);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v22 = type metadata accessor for CRLSEBoard(0);
  v23 = *(v22 + 20);
  v24 = v55;
  v25 = v56;
  v26 = *(v55 + v23);
  v27 = *(v55 + v23 + 8);
  v28 = (v56 + v23);
  if ((v26 != *v28 || v27 != v28[1]) && (sub_10007EAA4() & 1) == 0)
  {
    return 0;
  }

  v29 = *(v22 + 24);
  v30 = *(v51 + 48);
  v31 = v24 + v29;
  v32 = v52;
  sub_100023A78(v31, v52, &qword_1000B2210);
  sub_100023A78(v25 + v29, v32 + v30, &qword_1000B2210);
  v34 = v53;
  v33 = v54;
  v35 = *(v53 + 48);
  if (v35(v32, 1, v54) != 1)
  {
    v43 = v50;
    sub_100023A78(v32, v50, &qword_1000B2210);
    if (v35(v32 + v30, 1, v33) != 1)
    {
      v44 = v32 + v30;
      v45 = v49;
      (*(v34 + 32))(v49, v44, v33);
      sub_100021088(&qword_1000B25D0, &type metadata accessor for UUID);
      v46 = sub_10007E3F4();
      v47 = *(v34 + 8);
      v47(v45, v33);
      v47(v43, v33);
      sub_100023AE0(v32, &qword_1000B2210);
      return (v46 & 1) != 0;
    }

    (*(v34 + 8))(v43, v33);
    goto LABEL_22;
  }

  if (v35(v32 + v30, 1, v33) != 1)
  {
LABEL_22:
    v36 = &qword_1000B25C0;
    v37 = v32;
    goto LABEL_14;
  }

  sub_100023AE0(v32, &qword_1000B2210);
  return 1;
}

uint64_t sub_100023110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6472616F62 && a2 == 0xE500000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x42676E69646E6570 && a2 == 0xEC0000006472616FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100023270(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746964457473616CLL && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v5 = sub_10007EAA4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100023394(void *a1)
{
  v24 = sub_10001FF68(&qword_1000B2510);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_10001FF68(&qword_1000B2518);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_10001FF68(&qword_1000B2520);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_100021160(a1, a1[3]);
  sub_1000237D0();
  v10 = v26;
  sub_10007EBD4();
  if (v10)
  {
    return sub_1000211F8(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_10007E9D4();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_10007E874();
    swift_allocError();
    v18 = v17;
    sub_10001FF68(&qword_1000B2318);
    *v18 = &type metadata for CRLSELibraryViewModel.Library;
    sub_10007E954();
    sub_10007E864();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_1000211F8(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_100023824();
    sub_10007E944();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_100023878();
    sub_10007E944();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_1000211F8(v26);
  return v27;
}

unint64_t sub_1000237D0()
{
  result = qword_1000B2528;
  if (!qword_1000B2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2528);
  }

  return result;
}

unint64_t sub_100023824()
{
  result = qword_1000B2530;
  if (!qword_1000B2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2530);
  }

  return result;
}

unint64_t sub_100023878()
{
  result = qword_1000B2538;
  if (!qword_1000B2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2538);
  }

  return result;
}

unint64_t sub_1000238CC()
{
  result = qword_1000B2560;
  if (!qword_1000B2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2560);
  }

  return result;
}

uint64_t sub_100023920(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001FDB8(&unk_1000B43E0);
    sub_100021088(a2, type metadata accessor for CRLSELibraryViewModelItemNode);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000239BC()
{
  result = qword_1000B25B0;
  if (!qword_1000B25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B25B0);
  }

  return result;
}

uint64_t sub_100023A10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10001FF68(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023A78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10001FF68(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023AE0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10001FF68(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_100023B40(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023B4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100023B6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t _s4NodeV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4NodeV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLBoardLibraryViewModel.Filter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardLibraryViewModel.Filter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLSELibraryViewModel.Item.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLSELibraryViewModel.Item.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s15UUIDCodingErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s15UUIDCodingErrorOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLBoardLibraryViewModel.Item.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardLibraryViewModel.Item.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100024320()
{
  result = qword_1000B25F0;
  if (!qword_1000B25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B25F0);
  }

  return result;
}

unint64_t sub_100024378()
{
  result = qword_1000B25F8;
  if (!qword_1000B25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B25F8);
  }

  return result;
}

unint64_t sub_1000243D0()
{
  result = qword_1000B2600;
  if (!qword_1000B2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2600);
  }

  return result;
}

unint64_t sub_100024428()
{
  result = qword_1000B2608;
  if (!qword_1000B2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2608);
  }

  return result;
}

unint64_t sub_100024480()
{
  result = qword_1000B2610;
  if (!qword_1000B2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2610);
  }

  return result;
}

unint64_t sub_1000244D8()
{
  result = qword_1000B2618;
  if (!qword_1000B2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2618);
  }

  return result;
}

unint64_t sub_100024530()
{
  result = qword_1000B2620;
  if (!qword_1000B2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2620);
  }

  return result;
}

unint64_t sub_100024588()
{
  result = qword_1000B2628;
  if (!qword_1000B2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2628);
  }

  return result;
}

unint64_t sub_1000245E0()
{
  result = qword_1000B2630;
  if (!qword_1000B2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2630);
  }

  return result;
}

unint64_t sub_100024638()
{
  result = qword_1000B2638;
  if (!qword_1000B2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2638);
  }

  return result;
}

unint64_t sub_100024690()
{
  result = qword_1000B2640;
  if (!qword_1000B2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2640);
  }

  return result;
}

unint64_t sub_1000246E8()
{
  result = qword_1000B2648;
  if (!qword_1000B2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2648);
  }

  return result;
}

unint64_t sub_100024740()
{
  result = qword_1000B2650;
  if (!qword_1000B2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2650);
  }

  return result;
}

unint64_t sub_100024798()
{
  result = qword_1000B2658;
  if (!qword_1000B2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2658);
  }

  return result;
}

unint64_t sub_1000248C8()
{
  result = qword_1000B2678;
  if (!qword_1000B2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2678);
  }

  return result;
}

unint64_t sub_100024920()
{
  result = qword_1000B2680;
  if (!qword_1000B2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2680);
  }

  return result;
}

unint64_t sub_100024978()
{
  result = qword_1000B2688;
  if (!qword_1000B2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2688);
  }

  return result;
}

unint64_t sub_1000249D0()
{
  result = qword_1000B2690;
  if (!qword_1000B2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2690);
  }

  return result;
}

unint64_t sub_100024A28()
{
  result = qword_1000B2698;
  if (!qword_1000B2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2698);
  }

  return result;
}

unint64_t sub_100024A80()
{
  result = qword_1000B26A0;
  if (!qword_1000B26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26A0);
  }

  return result;
}

unint64_t sub_100024AD8()
{
  result = qword_1000B26A8;
  if (!qword_1000B26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26A8);
  }

  return result;
}

unint64_t sub_100024B30()
{
  result = qword_1000B26B0;
  if (!qword_1000B26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26B0);
  }

  return result;
}

unint64_t sub_100024B88()
{
  result = qword_1000B26B8;
  if (!qword_1000B26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26B8);
  }

  return result;
}

unint64_t sub_100024BE0()
{
  result = qword_1000B26C0;
  if (!qword_1000B26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26C0);
  }

  return result;
}

unint64_t sub_100024C38()
{
  result = qword_1000B26C8;
  if (!qword_1000B26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26C8);
  }

  return result;
}

unint64_t sub_100024C90()
{
  result = qword_1000B26D0;
  if (!qword_1000B26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26D0);
  }

  return result;
}

unint64_t sub_100024CE8()
{
  result = qword_1000B26D8;
  if (!qword_1000B26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26D8);
  }

  return result;
}

unint64_t sub_100024D40()
{
  result = qword_1000B26E0;
  if (!qword_1000B26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26E0);
  }

  return result;
}

unint64_t sub_100024D98()
{
  result = qword_1000B26E8;
  if (!qword_1000B26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26E8);
  }

  return result;
}

unint64_t sub_100024DF0()
{
  result = qword_1000B26F0;
  if (!qword_1000B26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26F0);
  }

  return result;
}

unint64_t sub_100024E48()
{
  result = qword_1000B26F8;
  if (!qword_1000B26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B26F8);
  }

  return result;
}

unint64_t sub_100024EA0()
{
  result = qword_1000B2700;
  if (!qword_1000B2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2700);
  }

  return result;
}

unint64_t sub_100024EF8()
{
  result = qword_1000B2708;
  if (!qword_1000B2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2708);
  }

  return result;
}

unint64_t sub_100024F50()
{
  result = qword_1000B2710;
  if (!qword_1000B2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2710);
  }

  return result;
}

unint64_t sub_100024FA8()
{
  result = qword_1000B2718;
  if (!qword_1000B2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2718);
  }

  return result;
}

unint64_t sub_100025000()
{
  result = qword_1000B2720;
  if (!qword_1000B2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2720);
  }

  return result;
}

unint64_t sub_100025058()
{
  result = qword_1000B2728;
  if (!qword_1000B2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2728);
  }

  return result;
}

unint64_t sub_1000250B0()
{
  result = qword_1000B2730;
  if (!qword_1000B2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2730);
  }

  return result;
}

unint64_t sub_100025108()
{
  result = qword_1000B2738;
  if (!qword_1000B2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2738);
  }

  return result;
}

unint64_t sub_100025160()
{
  result = qword_1000B2740;
  if (!qword_1000B2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2740);
  }

  return result;
}

unint64_t sub_1000251B8()
{
  result = qword_1000B2748;
  if (!qword_1000B2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2748);
  }

  return result;
}

unint64_t sub_100025210()
{
  result = qword_1000B2750;
  if (!qword_1000B2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2750);
  }

  return result;
}

unint64_t sub_100025268()
{
  result = qword_1000B2758;
  if (!qword_1000B2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2758);
  }

  return result;
}

unint64_t sub_1000252C0()
{
  result = qword_1000B2760;
  if (!qword_1000B2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2760);
  }

  return result;
}

unint64_t sub_100025318()
{
  result = qword_1000B2768;
  if (!qword_1000B2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2768);
  }

  return result;
}

unint64_t sub_100025370()
{
  result = qword_1000B2770;
  if (!qword_1000B2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2770);
  }

  return result;
}

unint64_t sub_1000253C8()
{
  result = qword_1000B2778;
  if (!qword_1000B2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2778);
  }

  return result;
}

unint64_t sub_100025420()
{
  result = qword_1000B2780;
  if (!qword_1000B2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2780);
  }

  return result;
}

unint64_t sub_100025478()
{
  result = qword_1000B2788;
  if (!qword_1000B2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2788);
  }

  return result;
}

unint64_t sub_1000254D0()
{
  result = qword_1000B2790;
  if (!qword_1000B2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2790);
  }

  return result;
}

unint64_t sub_100025528()
{
  result = qword_1000B2798;
  if (!qword_1000B2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2798);
  }

  return result;
}

unint64_t sub_100025580()
{
  result = qword_1000B27A0;
  if (!qword_1000B27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B27A0);
  }

  return result;
}

unint64_t sub_1000255D8()
{
  result = qword_1000B27A8;
  if (!qword_1000B27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B27A8);
  }

  return result;
}

unint64_t sub_100025630()
{
  result = qword_1000B27B0;
  if (!qword_1000B27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B27B0);
  }

  return result;
}

unint64_t sub_100025688()
{
  result = qword_1000B27B8;
  if (!qword_1000B27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B27B8);
  }

  return result;
}

unint64_t sub_1000256E0()
{
  result = qword_1000B27C0;
  if (!qword_1000B27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B27C0);
  }

  return result;
}

uint64_t sub_100025734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6472616F426C6C61 && a2 == 0xE900000000000073;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E65636572 && a2 == 0xE700000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE900000000000073 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646572616873 && a2 == 0xE600000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xEF646574656C6544 || (sub_10007EAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646C6F66 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100025940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69466567616D69 && a2 == 0xED0000656D616E65 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010008C690 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746964457473616CLL && a2 == 0xEA00000000006465 || (sub_10007EAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465726168537369 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_100025B6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t UUID.init(crl_data:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_17:
      sub_100025E84();
      swift_allocError();
      swift_willThrow();
      return sub_100025ED8(a1, a2);
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_24;
      }

      v9 = sub_10007DB44();
      if (!v9)
      {
        goto LABEL_29;
      }

      v10 = v9;
      v11 = sub_10007DB64();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_26;
      }

      v12 = a1 - v11 + v10;
      sub_10007DB54();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_23;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v14 = *(a1 + 16);
    v15 = sub_10007DB44();
    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = v15;
    v17 = sub_10007DB64();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      sub_10007DB54();
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_21:
      sub_10007DE84();
      return sub_100025ED8(a1, a2);
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_10007DB54();
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_10007DB54();
  __break(1u);
  return result;
}

unint64_t sub_100025E84()
{
  result = qword_1000B27E0;
  if (!qword_1000B27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B27E0);
  }

  return result;
}

uint64_t sub_100025ED8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t UUID.crl_data()()
{
  v9 = sub_10007DE94();
  v10 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  sub_10007DE94();
  return sub_1000260B8(&v9, 16);
}

uint64_t sub_100026000(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000260B8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100026000(a1, &a1[a2]);
  }

  sub_10007DB74();
  swift_allocObject();
  sub_10007DB34();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_10007DDB4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_10002616C()
{
  result = qword_1000B27E8;
  if (!qword_1000B27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B27E8);
  }

  return result;
}

uint64_t Error.publicDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v5 = sub_10001FF68(&unk_1000B27F0);
  __chkstk_darwin(v5 - 8);
  v68 = (&v58 - v6);
  v7 = sub_10007EB94();
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  v9 = __chkstk_darwin(v7);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v58 - v11;
  v12 = sub_10007EBC4();
  v67 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 - 8);
  v17 = __chkstk_darwin(v13);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v58 - v20;
  v22 = v3;
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v23 = sub_10007E464();
  v25 = v24;
  sub_10002694C();
  if (!swift_dynamicCastMetatype())
  {
    v62 = v19;
    v63 = v25;
    v64 = v23;
    v71 = v12;
    v75[1] = a1;
    v26 = sub_100026998(&DynamicType);
    v29 = *(v16 + 16);
    v28 = v16 + 16;
    v27 = v29;
    v29(v26, v22, a1);
    sub_10007EB74();
    v30 = v68;
    sub_10007EBA4();
    v31 = v69;
    v32 = v70;
    v33 = v15;
    if ((*(v70 + 48))(v30, 1, v69) == 1)
    {
      (*(v67 + 8))(v15, v71);
      sub_1000269FC(v30);
      return v64;
    }

    v59 = a1;
    v60 = v27;
    v61 = v28;
    v41 = v66;
    (*(v32 + 32))(v66, v30, v31);
    v42 = v65;
    (*(v32 + 104))(v65, enum case for Mirror.DisplayStyle.enum(_:), v31);
    v43 = sub_10007EB84();
    v46 = *(v32 + 8);
    v44 = v32 + 8;
    v45 = v46;
    (v46)(v42, v31);
    if ((v43 & 1) == 0)
    {
      DynamicType = 0;
      v74 = 0xE000000000000000;
      v79._countAndFlagsBits = v64;
      v79._object = v63;
      sub_10007E4C4(v79);

      v80._countAndFlagsBits = 40;
      v80._object = 0xE100000000000000;
      sub_10007E4C4(v80);
      sub_10007E8D4();
      v81._countAndFlagsBits = 41;
      v81._object = 0xE100000000000000;
      sub_10007E4C4(v81);
      v52 = DynamicType;
      (v45)(v41, v31);
      (*(v67 + 8))(v33, v71);
      return v52;
    }

    v68 = v45;
    v65 = v22;
    v70 = v44;
    sub_10007EBB4();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = sub_10007E814();
    swift_getObjectType();
    result = sub_10007E814();
    if (v47 != result)
    {
      __break(1u);
      return result;
    }

    v48 = sub_10007E824();
    swift_unknownObjectRelease();
    if (v48)
    {
      swift_unknownObjectRelease();

      v49 = v69;
      v50 = v71;
      v51 = v64;
    }

    else
    {
      sub_10007E8E4();
      swift_unknownObjectRelease();

      v54 = DynamicType;
      v53 = v74;
      sub_1000211F8(v75);
      v49 = v69;
      v50 = v71;
      v51 = v64;
      if (v53)
      {
LABEL_15:
        v56 = v67;
        v57 = v68;
        DynamicType = v51;
        v74 = v63;
        v82._countAndFlagsBits = 46;
        v82._object = 0xE100000000000000;
        sub_10007E4C4(v82);
        v83._countAndFlagsBits = v54;
        v83._object = v53;
        sub_10007E4C4(v83);

        v52 = DynamicType;
        v57(v66, v49);
        (*(v56 + 8))(v33, v50);
        return v52;
      }
    }

    v60(v62, v65, v59);
    v54 = sub_10007E454();
    v53 = v55;

    goto LABEL_15;
  }

  (*(v16 + 16))(v21, v22, a1);
  if (sub_10007EA84())
  {
    (*(v16 + 8))(v21, a1);
  }

  else
  {
    swift_allocError();
    (*(v16 + 32))(v35, v21, a1);
  }

  v36 = sub_10007DC74();

  DynamicType = 0;
  v74 = 0xE000000000000000;
  sub_10007E804(25);

  DynamicType = 0x20726F727245534ELL;
  v74 = 0xEF3D6E69616D6F44;
  v37 = [v36 domain];
  v38 = sub_10007E444();
  v40 = v39;

  v76._countAndFlagsBits = v38;
  v76._object = v40;
  sub_10007E4C4(v76);

  v77._countAndFlagsBits = 0x3D65646F4320;
  v77._object = 0xE600000000000000;
  sub_10007E4C4(v77);
  v72 = [v36 code];
  v78._countAndFlagsBits = sub_10007EA74();
  sub_10007E4C4(v78);

  return DynamicType;
}

unint64_t sub_10002694C()
{
  result = qword_1000B4410;
  if (!qword_1000B4410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B4410);
  }

  return result;
}

uint64_t *sub_100026998(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000269FC(uint64_t a1)
{
  v2 = sub_10001FF68(&unk_1000B27F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Error.fullDescription.getter(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_10007E464();
}

id sub_100026B5C(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_100026BA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001FF68(&qword_1000B2940);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
  swift_beginAccess();
  sub_100032A2C(a1, v2 + v7);
  swift_endAccess();
  v8 = [v2 navigationItem];
  v9 = [v8 rightBarButtonItem];

  if (v9)
  {
    sub_100023A78(v2 + v7, v6, &qword_1000B2940);
    v10 = type metadata accessor for CRLSEBoard(0);
    v11 = (*(*(v10 - 8) + 48))(v6, 1, v10) != 1;
    sub_100023AE0(v6, &qword_1000B2940);
    [v9 setEnabled:v11];
  }

  return sub_100023AE0(a1, &qword_1000B2940);
}

id sub_100026D44()
{
  v1 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController____lazy_storage___extensionContextManager;
  v2 = *(v0 + OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController____lazy_storage___extensionContextManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController____lazy_storage___extensionContextManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CRLSEExtensionContextManager()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100026DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007DD94();
  v13 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  result = CRLAppGroupIdentifier();
  if (result)
  {
    v7 = result;
    v8 = [v5 containerURLForSecurityApplicationGroupIdentifier:result];

    if (v8)
    {
      sub_10007DD24();

      (*(v13 + 32))(a1, v4, v2);
      return (*(v13 + 56))(a1, 0, 1, v2);
    }

    else
    {
      if (qword_1000B1C10 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.crlSharingExtension;
      v10 = sub_10007E624();
      sub_100069E88(v9, &_mh_execute_header, v10, "Unable to resolve container URL", 31, 2, &_swiftEmptyArrayStorage);
      v11 = *(v13 + 56);

      return v11(a1, 1, 1, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100026FD8()
{
  v1 = sub_10001FF68(&qword_1000B2940);
  __chkstk_darwin(v1 - 8);
  v3 = v28 - v2;
  v4 = OBJC_IVAR____TtC24FreeformSharingExtension23CRLSEMainViewController_selectedBoard;
  swift_beginAccess();
  sub_100023A78(v0 + v4, v3, &qword_1000B2940);
  v5 = type metadata accessor for CRLSEBoard(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5))
  {
    sub_100023AE0(v3, &qword_1000B2940);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = &v3[*(v5 + 20)];
    v6 = *v8;
    v7 = *(v8 + 1);

    sub_100023AE0(v3, &qword_1000B2940);
  }

  v28[8] = v6;
  v29[0] = v7;
  type metadata accessor for CRLSEExtensionContextManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11 = sub_10007E404();
  v12 = sub_10007E404();
  v13 = sub_10007E404();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  v15 = sub_10007E444();
  v17 = v16;

  v18 = 0;
  v29[1] = v15;
  v29[2] = v17;
  v19 = &_swiftEmptyArrayStorage;
LABEL_5:
  v20 = &v29[2 * v18];
  while (++v18 != 3)
  {
    v21 = v20 + 2;
    v22 = *v20;
    v20 += 2;
    if (v22)
    {
      v23 = *(v21 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10006DD28(0, *(v19 + 2) + 1, 1, v19);
      }

      v25 = *(v19 + 2);
      v24 = *(v19 + 3);
      if (v25 >= v24 >> 1)
      {
        v19 = sub_10006DD28((v24 > 1), v25 + 1, 1, v19);
      }

      *(v19 + 2) = v25 + 1;
      v26 = &v19[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      goto LABEL_5;
    }
  }

  sub_10001FF68(&qword_1000B2A28);
  swift_arrayDestroy();
  return v19;
}