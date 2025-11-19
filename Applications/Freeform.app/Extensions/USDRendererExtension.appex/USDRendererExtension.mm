void sub_100002814(id a1)
{
  size = 0;
  sysctlbyname("kern.osversion", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0x5A2F81B9uLL);
  sysctlbyname("kern.osversion", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  v3 = qword_1000D9240;
  qword_1000D9240 = v2;

  free(v1);
}

void sub_1000028F8(id a1)
{
  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0xF3A0382uLL);
  sysctlbyname("hw.model", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  v3 = qword_1000D9250;
  qword_1000D9250 = v2;

  free(v1);
}

id CRLAppGroupIdentifier()
{
  if (qword_1000D9268 != -1)
  {
    sub_10008773C();
  }

  v1 = qword_1000D9260;

  return v1;
}

void sub_100002A48(id a1)
{
  v1 = [NSString stringWithUTF8String:"group.com.apple.freeform"];
  v2 = qword_1000D9260;
  qword_1000D9260 = v1;

  if (([qword_1000D9260 hasPrefix:@"group.com.apple."] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_100087750();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100087764();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10008780C();
    }

    v3 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100087834(v3);
    }

    v13 = qword_1000D9260;
    CRLSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d App group identifier (%@) has unexpected prefix.", v4, v5, v6, v7, v8, v9, v10, "NSString *CRLAppGroupIdentifier()_block_invoke");
    v11 = [NSString stringWithUTF8String:"NSString *CRLAppGroupIdentifier()_block_invoke"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:56 isFatal:1 description:"App group identifier (%@) has unexpected prefix.", qword_1000D9260, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m", 56, v13];

    CRLCrashBreakpoint();
    abort();
  }
}

void sub_100002BD8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100002C1C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100002CA0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_100003064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003080(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
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

void sub_100003200(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
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

void sub_100003F68(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100003FAC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000044CC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100004510(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000049C8(id a1)
{
  v1 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"*?+[(){}^$|\\./");
  objc_storeStrong(&qword_1000D9270, v1);
  if (!qword_1000D9270)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_100087B34();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100087B48();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_100087BE0();
    }

    v2 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1000879AC(v2);
    }

    v3 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_escapeForIcuRegex]_block_invoke"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:451 isFatal:0 description:"invalid nil value for '%{public}s'", "icuRegexCharSet"];
  }
}

void sub_100004B34(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100004B78(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

CFStringTokenizerTokenType sub_1000063A0(uint64_t a1, CFStringTokenizerRef tokenizer)
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

void sub_10000645C(id a1)
{
  v3 = -4;
  v1 = [[NSString alloc] initWithCharacters:&v3 length:1];
  v2 = qword_1000D9280;
  qword_1000D9280 = v1;
}

void sub_100006600(id a1)
{
  qword_1000D9298 = [NSCharacterSet characterSetWithCharactersInString:@"ـ‑-‐–—"];

  _objc_release_x1();
}

void sub_1000066A4(id a1)
{
  qword_1000D92A8 = [NSCharacterSet characterSetWithCharactersInString:@"'’‘‚“”„«»‹›」「』『"];

  _objc_release_x1();
}

void sub_100006DF0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100006E34(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000072B8(uint64_t a1, uint64_t a2, void *a3)
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

int64_t sub_10000734C(id a1, NSValue *a2, NSValue *a3)
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

void sub_100007678(id a1)
{
  v1 = [NSMutableCharacterSet characterSetWithRange:0, 32];
  v2 = qword_1000D92B0;
  qword_1000D92B0 = v1;

  [qword_1000D92B0 addCharactersInString:@"\"];
  v4 = 539566120;
  v3 = [[NSString alloc] initWithCharacters:&v4 length:2];
  [qword_1000D92B0 addCharactersInString:v3];
}

void sub_100007888(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000078CC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100007EF8(id a1)
{
  CRLDefaultCat_log_t = CRLLogCreateCategory("CRLDefaultCat");

  _objc_release_x1();
}

void sub_1000083E8(id a1)
{
  v4 = 0;
  v1 = [[NSRegularExpression alloc] initWithPattern:@"<REDACT .*? REDACT>" options:8 error:&v4];
  v2 = v4;
  v3 = qword_1000D92C0;
  qword_1000D92C0 = v1;
}

void sub_100008628(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

void sub_1000091DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&a38);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100009300(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100009344(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

_BYTE *sub_100009388(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000FD74();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_100009440(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_100009484(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000094C8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10000950C(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_100009550(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_100009594(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_1000095D8(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_10000961C(id a1)
{
  CRLSurfaceCat_log_t = CRLLogCreateCategory("CRLSurfaceCat");

  _objc_release_x1();
}

void sub_100009854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_10000FE1C(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000098F8(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_10000993C(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

uint64_t sub_100009980(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_10000F9C8("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return sub_100009A00(v3);
  }

  return result;
}

uint64_t sub_100009A00(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return sub_1000883E0(v7);
  }

  v4 = *(sub_10000FE4C(v2) + 14);
  result = *a1;
  if (v4 != 1 || result == 0)
  {
    return sub_1000883E0(v7);
  }

  return result;
}

void sub_100009CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a27)
{
  sub_10000FE1C(&a27);

  _Unwind_Resume(a1);
}

void sub_10000B56C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000F714(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000BED4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_10000F728(a1);
}

uint64_t sub_10000BF14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000FA9C(v3);
  }

  return a1;
}

uint64_t sub_10000BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_1000100B8(a1, a2, a2 + 4 * a3);
  return a1;
}

uint64_t sub_10000BFC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000FA9C(v3);
  }

  return a1;
}

uint64_t sub_10000C01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_100010504(a1, a2, a2 + 12 * a3);
  return a1;
}

uint64_t sub_10000C070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_100011CE8(a1, a2, a2 + 8 * a3);
  return a1;
}

uint64_t sub_10000C0C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000FA9C(v3);
  }

  return a1;
}

uint64_t sub_10000C11C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000FA9C(v3);
  }

  return a1;
}

uint64_t sub_10000C178(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10000C1BC(void *a1)
{
  v2 = a1[4];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728((a1 + 2));
  v4 = a1[1];
  if (v4)
  {
    sub_10000FA9C(v4);
  }

  return a1;
}

void sub_10000CB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int16 a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, __int16 a51, uint64_t a52, uint64_t a53, uint64_t a54, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a55)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::~UsdGeomXformCommonAPI((v55 - 160));
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(&a43);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(&a51);
  sub_10000FE1C(&a55);

  _Unwind_Resume(a1);
}

void sub_10000CF50(id a1)
{
  CRLSurfaceCat_log_t = CRLLogCreateCategory("CRLSurfaceCat");

  _objc_release_x1();
}

void usd_initialize_once(void)
{
  if (atomic_load_explicit(&qword_1000D92D0, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&qword_1000D92D0, &v3, sub_100012FA4);
  }
}

_DWORD *sub_10000CFF8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (v4 || (a1 = *(a1 + 8)) != 0)
  {
    sub_10000FA10(a2, (a1 + 16));
    v5 = a2 + 1;
    v6 = (a1 + 20);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    sub_10000FA10(a2, v8);
    v5 = a2 + 1;
    v6 = v8 + 1;
  }

  return sub_10000FA5C(v5, v6);
}

void sub_10000D078(id a1)
{
  CRLSurfaceCat_log_t = CRLLogCreateCategory("CRLSurfaceCat");

  _objc_release_x1();
}

void sub_10000DD10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000F714(a1);
}

void sub_10000E808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45)
{
  if (a2)
  {
    sub_10000F714(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000EA78(id a1)
{
  CRLSurfaceCat_log_t = CRLLogCreateCategory("CRLSurfaceCat");

  _objc_release_x1();
}

uint64_t *sub_10000EABC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FC6C(v1, *(v1 + 8));
    operator delete();
  }

  return result;
}

void sub_10000EB10(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void makeOptions(void *a1@<X8>)
{
  *a1 = 0;
  sub_100009388(__p, pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::kOptionPreserveUSDFormat);
  v4 = &off_1000C2E58 + 3;
  v3[0] = 1;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  sub_10000FAF0(v3);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100009388(__p, pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::kOptionUseTemporaryDirectory);
  v4 = &off_1000C2F10;
  sub_100012F04();
}

void sub_10000EC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10000FAF0(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10000EABC(v15);
  _Unwind_Resume(a1);
}

void sub_10000F100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_10000EABC(&a24);

  _Unwind_Resume(a1);
}

void sub_10000F230(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_10000F274(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_10000F2B8(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_10000F2FC(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_10000F5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10000EABC(&a17);
  sub_10000EABC((v25 - 56));

  _Unwind_Resume(a1);
}

void sub_10000F68C(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

void sub_10000F6D0(id a1)
{
  CRLThreeDimensionalObjectsCat_log_t = CRLLogCreateCategory("CRLThreeDimensionalObjectsCat");

  _objc_release_x1();
}

uint64_t sub_10000F728(uint64_t a1)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr();
    if ((atomic_fetch_add((Ptr + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
    {
      sub_10000F780(Ptr);
    }
  }

  return a1;
}

unsigned __int8 *sub_10000F780(unsigned __int8 *result)
{
  v1 = result[14];
  if (v1 > 3)
  {
    if (result[14] <= 5u)
    {
      if (v1 == 4)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_TargetPathNode::~Sdf_TargetPathNode(result);
      }

      else
      {
        if (v1 != 5)
        {
          return result;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_MapperPathNode::~Sdf_MapperPathNode(result);
      }
    }

    else
    {
      switch(v1)
      {
        case 6u:
          pxrInternal__aapl__pxrReserved__::Sdf_RelationalAttributePathNode::~Sdf_RelationalAttributePathNode(result);
          break;
        case 7u:
          pxrInternal__aapl__pxrReserved__::Sdf_MapperArgPathNode::~Sdf_MapperArgPathNode(result);
          break;
        case 8u:
          pxrInternal__aapl__pxrReserved__::Sdf_ExpressionPathNode::~Sdf_ExpressionPathNode(result);
          break;
        default:
          return result;
      }
    }

    goto LABEL_24;
  }

  if (result[14] > 1u)
  {
    if (v1 != 2)
    {
      if (v1 != 3)
      {
        return result;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PrimPropertyPathNode::~Sdf_PrimPropertyPathNode(result);
LABEL_24:

      return pxrInternal__aapl__pxrReserved__::Sdf_PropPartPathNode::operator delete();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::~Sdf_PrimVariantSelectionNode(result);
  }

  else if (result[14])
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PrimPathNode::~Sdf_PrimPathNode(result);
  }

  else
  {
    sub_10000F864(result);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_PrimPartPathNode::operator delete();
}

pxrInternal__aapl__pxrReserved__::Sdf_PathNode *sub_10000F864(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  if ((*(this + 2) & 0x80000000) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_RemovePathTokenFromTable(this);
  }

  if (*this && (atomic_fetch_add((*this + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
  {
    sub_10000F780();
  }

  return this;
}

uint64_t sub_10000F8C4(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *a1 = 1;
  v5 = *a2;
  *(a1 + 8) = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  sub_10000FA10((a1 + 16), a3);
  sub_10000FA5C((a1 + 20), a3 + 1);
  *(a1 + 24) = 0;
  v6 = *(a1 + 8);
  if (v6 && (*(v6 + 57) & 8) == 0 && *(v6 + 16) == *(a1 + 16))
  {
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
  }

  return a1;
}

void sub_10000F990(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_10000BED4(v1 + 16);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_10000FA9C(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10000F9C8(unint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a2)
  {
    if (a2 != result)
    {
      v3 = (a2 - 1);
      if (a2 - 1 > result)
      {
        while (*v3 != a3)
        {
          if (--v3 == result)
          {
            goto LABEL_8;
          }
        }

        result = v3;
      }
    }

LABEL_8:
    ++result;
  }

  return result;
}

_DWORD *sub_10000FA10(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    atomic_fetch_add_explicit((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr() + 8), 1u, memory_order_relaxed);
  }

  return a1;
}

_DWORD *sub_10000FA5C(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr();
  }

  return a1;
}

atomic_ullong *sub_10000FA9C(atomic_ullong *result)
{
  add_explicit = atomic_fetch_add_explicit(result + 6, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  if (result && add_explicit == 1)
  {
    pxrInternal__aapl__pxrReserved__::Usd_PrimData::~Usd_PrimData(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10000FAF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (*(a1 + 8) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_10000FB40(uint64_t a1, int *a2)
{
  v4 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
  sub_10000F728(&v4);
  return a1;
}

uint64_t sub_10000FB98(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return a1;
}

uint64_t sub_10000FBF4(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_10000FC6C(v2, *(v2 + 8));
    operator delete();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000FC6C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000FC6C(a1, *a2);
    sub_10000FC6C(a1, a2[1]);
    sub_10000FCC8((a2 + 4));

    operator delete(a2);
  }
}

void sub_10000FCC8(uint64_t a1)
{
  sub_10000FAF0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10000FD18(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_10000F728(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000FA9C(v3);
  }

  return a1;
}

void sub_10000FD8C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000FDE8(exception, a1);
}

std::logic_error *sub_10000FDE8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_10000FE4C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_10000F9C8("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return sub_10000FECC(v3);
  }

  return result;
}

void sub_10000FECC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000FECC(a1);
    sub_10000FECC(a1);
    sub_10000FF28(a2 + 32);

    operator delete(a2);
  }
}

void sub_10000FF28(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_10000FF80(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_10000FFF8((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_100088BAC(v4, &v6);
    }
  }

  return a1;
}

void sub_10000FFE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100088B64(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10000FFF8@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = atomic_load(a1);
  if (!result)
  {
    operator new();
  }

  *a2 = result;
  atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  return result;
}

void sub_1000100B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_100010118(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_100010168(a1, (a3 - a2) >> 2, v6);
}

void sub_100010118(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_100010354(a1);
    }

    *a1 = 0;
  }
}

void sub_100010168(unint64_t *a1, unint64_t a2, int ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_1000103C0(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = **a3;
            v13 = *a3[1];
            if (v12 != v13)
            {
              v14 = 4 * v3;
              do
              {
                v15 = *v12++;
                *(v7 + v14) = v15;
                v14 += 4;
              }

              while (v12 != v13);
            }
          }

          v16 = v7;
LABEL_34:
          if (v16 != a1[4])
          {
            sub_100010354(a1);
            a1[4] = v16;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a1;
      }

      v23 = sub_1000103C0(a1, a2);
      v16 = v23;
      if (v3)
      {
        v24 = 4 * v22;
        v25 = v23;
        do
        {
          v26 = *v7;
          v7 = (v7 + 4);
          *v25 = v26;
          v25 = (v25 + 4);
          v24 -= 4;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v27 = **a3;
        v28 = *a3[1];
        if (v27 != v28)
        {
          v29 = 4 * v3;
          do
          {
            v30 = *v27++;
            *(v23 + v29) = v30;
            v29 += 4;
          }

          while (v27 != v28);
        }
      }

      goto LABEL_34;
    }

    if (4 * a2 / a2 == 4)
    {
      v17 = sub_1000103C0(a1, a2);
      v16 = v17;
      v18 = **a3;
      v19 = *a3[1];
      if (v18 != v19)
      {
        v20 = v17;
        do
        {
          v21 = *v18++;
          *v20 = v21;
          v20 = (v20 + 4);
        }

        while (v18 != v19);
      }

      goto LABEL_34;
    }
  }

  sub_100010118(a1);
}

void sub_100010354(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = a1 + 24;
    if (*(a1 + 24))
    {
      sub_100088C28(*(a1 + 24), v2);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete((*(a1 + 32) - 16));
    }

    *v2 = 0;
    *(v2 + 8) = 0;
  }
}

void *sub_1000103C0(uint64_t a1, unint64_t a2)
{
  sub_100010490(&v6);
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void *sub_100010454(void *a1)
{
  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100010490(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    *a1 = v3;
    *(a1 + 8) = 2 * (v3 != 0);
    if (v3)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_100010504(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_100010118(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_100010570(a1, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 2), v6);
}

void sub_100010570(unint64_t *a1, unint64_t a2, uint64_t ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_1000107B8(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = v10 + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 8);
                  *v12 = v13;
                  v11 += 12;
                }

                while (12 * v3 != v11);
              }
            }

            v14 = **a3;
            v15 = *a3[1];
            if (v14 != v15)
            {
              v16 = 12 * v3;
              do
              {
                v17 = v7 + v16;
                v18 = *v14;
                *(v17 + 2) = *(v14 + 2);
                *v17 = v18;
                v14 = (v14 + 12);
                v16 += 12;
              }

              while (v14 != v15);
            }
          }

          v19 = v7;
LABEL_34:
          if (v19 != a1[4])
          {
            sub_100010354(a1);
            a1[4] = v19;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a1;
      }

      v26 = sub_1000107B8(a1, a2);
      v19 = v26;
      if (v3)
      {
        v27 = 12 * v25;
        v28 = v26;
        do
        {
          v29 = *v7;
          *(v28 + 2) = *(v7 + 2);
          *v28 = v29;
          v28 = (v28 + 12);
          v7 = (v7 + 12);
          v27 -= 12;
        }

        while (v27);
      }

      if (v3 < a2)
      {
        v30 = **a3;
        v31 = *a3[1];
        if (v30 != v31)
        {
          v32 = 12 * v3;
          do
          {
            v33 = v26 + v32;
            v34 = *v30;
            *(v33 + 2) = *(v30 + 2);
            *v33 = v34;
            v30 = (v30 + 12);
            v32 += 12;
          }

          while (v30 != v31);
        }
      }

      goto LABEL_34;
    }

    if (a2 < 0x1555555555555556)
    {
      v20 = sub_1000107B8(a1, a2);
      v19 = v20;
      v21 = **a3;
      v22 = *a3[1];
      if (v21 != v22)
      {
        v23 = v20;
        do
        {
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          v23 = (v23 + 12);
          v21 = (v21 + 12);
        }

        while (v21 != v22);
      }

      goto LABEL_34;
    }
  }

  sub_100010118(a1);
}

void *sub_1000107B8(uint64_t a1, unint64_t a2)
{
  sub_100010490(&v6);
  if (a2 > 0xAAAAAAAAAAAAAA9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 12 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_100010910(uint64_t a1)
{
  v204 = (a1 + 1616);
  sub_100011C3C(&v204);
  v2 = *(a1 + 1608);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 1600);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 1592);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 1584);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 1576);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 1568);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 1560);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 1552);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 1544);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 1536);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 1528);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 1520);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 1512);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 1504);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 1496);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 1488);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 1480);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 1472);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 1464);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 1456);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 1448);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 1440);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 1432);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 1424);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 1416);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 1408);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 1400);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 1392);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 1384);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 1376);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 1368);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 1360);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 1352);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 1344);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 1336);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 1328);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 1320);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(a1 + 1312);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(a1 + 1304);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(a1 + 1296);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(a1 + 1288);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(a1 + 1280);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(a1 + 1272);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(a1 + 1264);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(a1 + 1256);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(a1 + 1248);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(a1 + 1240);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(a1 + 1232);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(a1 + 1224);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(a1 + 1216);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(a1 + 1208);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(a1 + 1200);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(a1 + 1192);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(a1 + 1184);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(a1 + 1176);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(a1 + 1168);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(a1 + 1160);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(a1 + 1152);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(a1 + 1144);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(a1 + 1136);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(a1 + 1128);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(a1 + 1120);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(a1 + 1112);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = *(a1 + 1104);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = *(a1 + 1096);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(a1 + 1088);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = *(a1 + 1080);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = *(a1 + 1072);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = *(a1 + 1064);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = *(a1 + 1056);
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = *(a1 + 1048);
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = *(a1 + 1040);
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = *(a1 + 1032);
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = *(a1 + 1024);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(a1 + 1016);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = *(a1 + 1008);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = *(a1 + 1000);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = *(a1 + 992);
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = *(a1 + 984);
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = *(a1 + 976);
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = *(a1 + 968);
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v83 = *(a1 + 960);
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v84 = *(a1 + 952);
  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = *(a1 + 944);
  if ((v85 & 7) != 0)
  {
    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v86 = *(a1 + 936);
  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v87 = *(a1 + 928);
  if ((v87 & 7) != 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v88 = *(a1 + 920);
  if ((v88 & 7) != 0)
  {
    atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v89 = *(a1 + 912);
  if ((v89 & 7) != 0)
  {
    atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v90 = *(a1 + 904);
  if ((v90 & 7) != 0)
  {
    atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v91 = *(a1 + 896);
  if ((v91 & 7) != 0)
  {
    atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v92 = *(a1 + 888);
  if ((v92 & 7) != 0)
  {
    atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v93 = *(a1 + 880);
  if ((v93 & 7) != 0)
  {
    atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v94 = *(a1 + 872);
  if ((v94 & 7) != 0)
  {
    atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v95 = *(a1 + 864);
  if ((v95 & 7) != 0)
  {
    atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v96 = *(a1 + 856);
  if ((v96 & 7) != 0)
  {
    atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v97 = *(a1 + 848);
  if ((v97 & 7) != 0)
  {
    atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v98 = *(a1 + 840);
  if ((v98 & 7) != 0)
  {
    atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v99 = *(a1 + 832);
  if ((v99 & 7) != 0)
  {
    atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100 = *(a1 + 824);
  if ((v100 & 7) != 0)
  {
    atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v101 = *(a1 + 816);
  if ((v101 & 7) != 0)
  {
    atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v102 = *(a1 + 808);
  if ((v102 & 7) != 0)
  {
    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v103 = *(a1 + 800);
  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v104 = *(a1 + 792);
  if ((v104 & 7) != 0)
  {
    atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v105 = *(a1 + 784);
  if ((v105 & 7) != 0)
  {
    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v106 = *(a1 + 776);
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v107 = *(a1 + 768);
  if ((v107 & 7) != 0)
  {
    atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v108 = *(a1 + 760);
  if ((v108 & 7) != 0)
  {
    atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v109 = *(a1 + 752);
  if ((v109 & 7) != 0)
  {
    atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v110 = *(a1 + 744);
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v111 = *(a1 + 736);
  if ((v111 & 7) != 0)
  {
    atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v112 = *(a1 + 728);
  if ((v112 & 7) != 0)
  {
    atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v113 = *(a1 + 720);
  if ((v113 & 7) != 0)
  {
    atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v114 = *(a1 + 712);
  if ((v114 & 7) != 0)
  {
    atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v115 = *(a1 + 704);
  if ((v115 & 7) != 0)
  {
    atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v116 = *(a1 + 696);
  if ((v116 & 7) != 0)
  {
    atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v117 = *(a1 + 688);
  if ((v117 & 7) != 0)
  {
    atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v118 = *(a1 + 680);
  if ((v118 & 7) != 0)
  {
    atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v119 = *(a1 + 672);
  if ((v119 & 7) != 0)
  {
    atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v120 = *(a1 + 664);
  if ((v120 & 7) != 0)
  {
    atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v121 = *(a1 + 656);
  if ((v121 & 7) != 0)
  {
    atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v122 = *(a1 + 648);
  if ((v122 & 7) != 0)
  {
    atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v123 = *(a1 + 640);
  if ((v123 & 7) != 0)
  {
    atomic_fetch_add_explicit((v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v124 = *(a1 + 632);
  if ((v124 & 7) != 0)
  {
    atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v125 = *(a1 + 624);
  if ((v125 & 7) != 0)
  {
    atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v126 = *(a1 + 616);
  if ((v126 & 7) != 0)
  {
    atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v127 = *(a1 + 608);
  if ((v127 & 7) != 0)
  {
    atomic_fetch_add_explicit((v127 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v128 = *(a1 + 600);
  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v129 = *(a1 + 592);
  if ((v129 & 7) != 0)
  {
    atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v130 = *(a1 + 584);
  if ((v130 & 7) != 0)
  {
    atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v131 = *(a1 + 576);
  if ((v131 & 7) != 0)
  {
    atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v132 = *(a1 + 568);
  if ((v132 & 7) != 0)
  {
    atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v133 = *(a1 + 560);
  if ((v133 & 7) != 0)
  {
    atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v134 = *(a1 + 552);
  if ((v134 & 7) != 0)
  {
    atomic_fetch_add_explicit((v134 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v135 = *(a1 + 544);
  if ((v135 & 7) != 0)
  {
    atomic_fetch_add_explicit((v135 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v136 = *(a1 + 536);
  if ((v136 & 7) != 0)
  {
    atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v137 = *(a1 + 528);
  if ((v137 & 7) != 0)
  {
    atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v138 = *(a1 + 520);
  if ((v138 & 7) != 0)
  {
    atomic_fetch_add_explicit((v138 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v139 = *(a1 + 512);
  if ((v139 & 7) != 0)
  {
    atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v140 = *(a1 + 504);
  if ((v140 & 7) != 0)
  {
    atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v141 = *(a1 + 496);
  if ((v141 & 7) != 0)
  {
    atomic_fetch_add_explicit((v141 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v142 = *(a1 + 488);
  if ((v142 & 7) != 0)
  {
    atomic_fetch_add_explicit((v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v143 = *(a1 + 480);
  if ((v143 & 7) != 0)
  {
    atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v144 = *(a1 + 472);
  if ((v144 & 7) != 0)
  {
    atomic_fetch_add_explicit((v144 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v145 = *(a1 + 464);
  if ((v145 & 7) != 0)
  {
    atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v146 = *(a1 + 456);
  if ((v146 & 7) != 0)
  {
    atomic_fetch_add_explicit((v146 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v147 = *(a1 + 448);
  if ((v147 & 7) != 0)
  {
    atomic_fetch_add_explicit((v147 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v148 = *(a1 + 440);
  if ((v148 & 7) != 0)
  {
    atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v149 = *(a1 + 432);
  if ((v149 & 7) != 0)
  {
    atomic_fetch_add_explicit((v149 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v150 = *(a1 + 424);
  if ((v150 & 7) != 0)
  {
    atomic_fetch_add_explicit((v150 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v151 = *(a1 + 416);
  if ((v151 & 7) != 0)
  {
    atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v152 = *(a1 + 408);
  if ((v152 & 7) != 0)
  {
    atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v153 = *(a1 + 400);
  if ((v153 & 7) != 0)
  {
    atomic_fetch_add_explicit((v153 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v154 = *(a1 + 392);
  if ((v154 & 7) != 0)
  {
    atomic_fetch_add_explicit((v154 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v155 = *(a1 + 384);
  if ((v155 & 7) != 0)
  {
    atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v156 = *(a1 + 376);
  if ((v156 & 7) != 0)
  {
    atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v157 = *(a1 + 368);
  if ((v157 & 7) != 0)
  {
    atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v158 = *(a1 + 360);
  if ((v158 & 7) != 0)
  {
    atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v159 = *(a1 + 352);
  if ((v159 & 7) != 0)
  {
    atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v160 = *(a1 + 344);
  if ((v160 & 7) != 0)
  {
    atomic_fetch_add_explicit((v160 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v161 = *(a1 + 336);
  if ((v161 & 7) != 0)
  {
    atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v162 = *(a1 + 328);
  if ((v162 & 7) != 0)
  {
    atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v163 = *(a1 + 320);
  if ((v163 & 7) != 0)
  {
    atomic_fetch_add_explicit((v163 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v164 = *(a1 + 312);
  if ((v164 & 7) != 0)
  {
    atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v165 = *(a1 + 304);
  if ((v165 & 7) != 0)
  {
    atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v166 = *(a1 + 296);
  if ((v166 & 7) != 0)
  {
    atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v167 = *(a1 + 288);
  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v168 = *(a1 + 280);
  if ((v168 & 7) != 0)
  {
    atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v169 = *(a1 + 272);
  if ((v169 & 7) != 0)
  {
    atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v170 = *(a1 + 264);
  if ((v170 & 7) != 0)
  {
    atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v171 = *(a1 + 256);
  if ((v171 & 7) != 0)
  {
    atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v172 = *(a1 + 248);
  if ((v172 & 7) != 0)
  {
    atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v173 = *(a1 + 240);
  if ((v173 & 7) != 0)
  {
    atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v174 = *(a1 + 232);
  if ((v174 & 7) != 0)
  {
    atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v175 = *(a1 + 224);
  if ((v175 & 7) != 0)
  {
    atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v176 = *(a1 + 216);
  if ((v176 & 7) != 0)
  {
    atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v177 = *(a1 + 208);
  if ((v177 & 7) != 0)
  {
    atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v178 = *(a1 + 200);
  if ((v178 & 7) != 0)
  {
    atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v179 = *(a1 + 192);
  if ((v179 & 7) != 0)
  {
    atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v180 = *(a1 + 184);
  if ((v180 & 7) != 0)
  {
    atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v181 = *(a1 + 176);
  if ((v181 & 7) != 0)
  {
    atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v182 = *(a1 + 168);
  if ((v182 & 7) != 0)
  {
    atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v183 = *(a1 + 160);
  if ((v183 & 7) != 0)
  {
    atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v184 = *(a1 + 152);
  if ((v184 & 7) != 0)
  {
    atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v185 = *(a1 + 144);
  if ((v185 & 7) != 0)
  {
    atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v186 = *(a1 + 136);
  if ((v186 & 7) != 0)
  {
    atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v187 = *(a1 + 128);
  if ((v187 & 7) != 0)
  {
    atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v188 = *(a1 + 120);
  if ((v188 & 7) != 0)
  {
    atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v189 = *(a1 + 112);
  if ((v189 & 7) != 0)
  {
    atomic_fetch_add_explicit((v189 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v190 = *(a1 + 104);
  if ((v190 & 7) != 0)
  {
    atomic_fetch_add_explicit((v190 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v191 = *(a1 + 96);
  if ((v191 & 7) != 0)
  {
    atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v192 = *(a1 + 88);
  if ((v192 & 7) != 0)
  {
    atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v193 = *(a1 + 80);
  if ((v193 & 7) != 0)
  {
    atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v194 = *(a1 + 72);
  if ((v194 & 7) != 0)
  {
    atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v195 = *(a1 + 64);
  if ((v195 & 7) != 0)
  {
    atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v196 = *(a1 + 56);
  if ((v196 & 7) != 0)
  {
    atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v197 = *(a1 + 48);
  if ((v197 & 7) != 0)
  {
    atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v198 = *(a1 + 40);
  if ((v198 & 7) != 0)
  {
    atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v199 = *(a1 + 32);
  if ((v199 & 7) != 0)
  {
    atomic_fetch_add_explicit((v199 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v200 = *(a1 + 24);
  if ((v200 & 7) != 0)
  {
    atomic_fetch_add_explicit((v200 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v201 = *(a1 + 16);
  if ((v201 & 7) != 0)
  {
    atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v202 = *(a1 + 8);
  if ((v202 & 7) != 0)
  {
    atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_100011C3C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *sub_100011C90(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init *a1)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init::New(a1);
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::~Sdf_ValueTypeNamesType(result);
      operator delete();
    }

    return atomic_load(a1);
  }

  return result;
}

void sub_100011CE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_100010118(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_100011D48(a1, (a3 - a2) >> 3, v6);
}

void sub_100011D48(unint64_t *a1, unint64_t a2, uint64_t ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_100011F34(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = **a3;
            v13 = *a3[1];
            if (v12 != v13)
            {
              v14 = v3;
              do
              {
                v15 = *v12++;
                v7[v14++] = v15;
              }

              while (v12 != v13);
            }
          }

          v16 = v7;
LABEL_34:
          if (v16 != a1[4])
          {
            sub_100010354(a1);
            a1[4] = v16;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a1;
      }

      v23 = sub_100011F34(a1, a2);
      v16 = v23;
      if (v3)
      {
        v24 = 8 * v22;
        v25 = v23;
        do
        {
          v26 = *v7++;
          *v25++ = v26;
          v24 -= 8;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v27 = **a3;
        v28 = *a3[1];
        if (v27 != v28)
        {
          v29 = v3;
          do
          {
            v30 = *v27++;
            v23[v29++] = v30;
          }

          while (v27 != v28);
        }
      }

      goto LABEL_34;
    }

    if (8 * a2 / a2 == 8)
    {
      v17 = sub_100011F34(a1, a2);
      v16 = v17;
      v18 = **a3;
      v19 = *a3[1];
      if (v18 != v19)
      {
        v20 = v17;
        do
        {
          v21 = *v18++;
          *v20++ = v21;
        }

        while (v18 != v19);
      }

      goto LABEL_34;
    }
  }

  sub_100010118(a1);
}

void *sub_100011F34(uint64_t a1, unint64_t a2)
{
  sub_100010490(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_100011FC8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *sub_100011FF8(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_100012014(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

atomic_uint **sub_100012140@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = (&off_1000C2D90 + 1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

uint64_t sub_100012230(uint64_t a1)
{
  v40 = (a1 + 304);
  sub_100011C3C(&v40);
  v2 = *(a1 + 296);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 288);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 280);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 272);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 264);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 256);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 248);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 240);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 232);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 224);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 216);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 208);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 200);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 192);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 184);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 176);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 168);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 160);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 152);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 144);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 136);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 128);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 120);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 112);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 104);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 96);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 88);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 80);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 72);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 64);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 56);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 48);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 40);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 32);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 24);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 16);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 8);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

_BYTE *sub_100012718@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_1000C2E58 + 3;
  *a2 = *result;
  return result;
}

uint64_t *sub_100012734(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_100012754(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_1000128D8(result);
}

unint64_t sub_10001276C(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = 0;
  v2 = *(v1 + 23);
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 23);
  }

  else
  {
    v4 = *(v1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v6, v3, v4);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

void *sub_1000127F4(uint64_t **a1, void *a2)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return sub_100012B74(a2, v4, v5);
}

uint64_t *sub_1000128D8(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

BOOL sub_100012954(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_1000129C8(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_100012A30();
  }

  return *a1;
}

void *sub_100012AD0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000FD74();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_100012B74(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100012D1C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100012CB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100012C94);
}

uint64_t sub_100012D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10000FD74();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100012EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100012FA4()
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v1);
  pxrInternal__aapl__pxrReserved__::usd_initialize(v1, v0);
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v1);
}

void sub_100013020(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10001304C(uint64_t a1)
{

  return sub_10000F728(a1);
}

void sub_10001316C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100013328(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001336C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000135D8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001361C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000139A4(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000139E8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

BOOL sub_100014148(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v9 = @"com.apple.freeform";
  }

  else
  {
    if (a3 == 28)
    {
      v8 = &NSPOSIXErrorDomain;
    }

    else
    {
      if (a3 != 640)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = &NSCocoaErrorDomain;
    }

    v9 = *v8;
  }

  v10 = [(NSString *)v6 isEqualToString:v9];
LABEL_10:

  return v10;
}

BOOL sub_1000141EC(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 3072)
  {
    v8 = &NSCocoaErrorDomain;
LABEL_7:
    v9 = *v8;
    goto LABEL_8;
  }

  if (a3 != 104)
  {
    if (a3 != -999)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v8 = &NSURLErrorDomain;
    goto LABEL_7;
  }

  v9 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
LABEL_8:
  v10 = [(NSString *)v6 isEqualToString:v9];
LABEL_10:

  return v10;
}

BOOL sub_100014290(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 17)
  {
    v8 = &NSPOSIXErrorDomain;
  }

  else
  {
    if (a3 != 516)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = &NSCocoaErrorDomain;
  }

  v9 = [(NSString *)v6 isEqualToString:*v8];
LABEL_7:

  return v9;
}

BOOL sub_100014320(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v8 = &NSPOSIXErrorDomain;
  }

  else
  {
    if (a3 != 260 && a3 != 4)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = &NSCocoaErrorDomain;
  }

  v9 = [(NSString *)v6 isEqualToString:*v8];
LABEL_8:

  return v9;
}

BOOL sub_1000143B8(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = 0;
  if (a3 <= 512)
  {
    if (a3 == 1)
    {
      v9 = &NSPOSIXErrorDomain;
      goto LABEL_9;
    }

    if (a3 != 257)
    {
      goto LABEL_10;
    }

LABEL_7:
    v9 = &NSCocoaErrorDomain;
LABEL_9:
    v8 = [(NSString *)v6 isEqualToString:*v9];
    goto LABEL_10;
  }

  if (a3 == 513 || a3 == 5124)
  {
    goto LABEL_7;
  }

LABEL_10:

  return v8;
}

BOOL sub_100014464(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  if (a3 == 3328)
  {
    return [(NSString *)a2 isEqualToString:NSCocoaErrorDomain, a4];
  }

  else
  {
    return 0;
  }
}

void sub_10001465C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t CRLImageSourceOrientation(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = [(__CFDictionary *)v1 objectForKey:kCGImagePropertyOrientation];
  v3 = [v2 intValue];

  v4 = 0;
  if (v3 - 1 <= 7)
  {
    v4 = qword_1000A51F8[v3 - 1];
  }

  return v4;
}

void sub_10001555C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000155A0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000155E4(id a1)
{
  qword_1000D92D8 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void sub_100015950(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100015994(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100015C90(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100015CD4(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100015FD0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100016014(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001630C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100016350(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100016648(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001668C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100016984(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000169C8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100016CC4(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100016D08(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100017004(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100017048(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100017344(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100017388(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100017684(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000176C8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000179C0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100017A04(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100017CFC(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100017D40(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000180B4(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000180F8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000183F0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100018434(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001872C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_100018770(id a1)
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

CGImageRef sub_100018A58(uint64_t a1, CGImageRef image, double a3)
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

  sub_100018D54(v41, 0.0, 0.0, Width, Height, v18, v19, v15, v16);
  sub_100018D54(v39, 0.0, 0.0, v10, v13, v18, v19, v15, v16);
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

void sub_100018D54(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
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

void sub_100019284(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_1000192C8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

uint64_t sub_100019390(uint64_t a1)
{
  v2 = [UIImage alloc];
  v3 = [*(a1 + 32) CGImage];
  [*(a1 + 32) scale];
  *(*(a1 + 32) + 32) = [v2 initWithCGImage:v3 scale:objc_msgSend(*(a1 + 32) orientation:{"imageOrientation"), v4}];

  return _objc_release_x1();
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

void sub_100019660(id a1)
{
  qword_1000D92E8 = objc_alloc_init(CRLLogHelper);

  _objc_release_x1();
}

void sub_100019848(id a1)
{
  CRLPerformanceCat_log_t = CRLLogCreateCategory("CRLPerformanceCat");

  _objc_release_x1();
}

void sub_100019888(id a1)
{
  CRLPerformanceCat_log_t = CRLLogCreateCategory("CRLPerformanceCat");

  _objc_release_x1();
}

uint64_t CRLCapabilitiesDeviceTypeFromHWModelString(void *a1)
{
  v1 = a1;
  v2 = +[NSCharacterSet decimalDigitCharacterSet];
  v3 = [v1 componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 firstObject];

  if ([v4 length])
  {
    if ([v4 isEqualToString:@"iPad"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"iPhone"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"iPod"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"iMac"])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:@"MacBook"])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:@"MacBookAir"])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:@"MacBookPro"])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"Macmini"])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:@"MacPro"])
    {
      v5 = 9;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10001A2B0(uint64_t a1)
{
  result = [*(a1 + 32) p_isMetalCapable];
  byte_1000D9300 = result;
  return result;
}

void sub_10001A318(id a1)
{
  qword_1000D9310 = objc_alloc_init(CRLCapabilities);

  _objc_release_x1();
}

void sub_10001A538(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001A57C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001A73C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001A780(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001A904(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001A948(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001AB3C(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001AB80(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001ABC4(id a1)
{
  qword_1000D9318 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_10001AD70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

os_log_t CRLLogCreateCategory(char *category)
{
  v1 = os_log_create("com.apple.freeform", category);

  return v1;
}

id sub_10001AF90(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

id sub_10001B074(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_10001B19C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001B1B4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) allObjects];

  return _objc_release_x1();
}

uint64_t sub_10001B2F4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSSet setWithSet:*(*(a1 + 32) + 8)];

  return _objc_release_x1();
}

uint64_t sub_10001B584(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) description];

  return _objc_release_x1();
}

id CRLLogGetNameDictionary()
{
  if (qword_1000D9340 != -1)
  {
    sub_1000894AC();
  }

  v1 = qword_1000D9338;

  return v1;
}

void sub_10001B65C(id a1)
{
  qword_1000D9338 = +[NSMapTable strongToStrongObjectsMapTable];

  _objc_release_x1();
}

void *CRLLogEnsureCreated(void *a1, void *a2, dispatch_once_t *a3)
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10001B76C;
  v14 = &unk_1000C3890;
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

void sub_10001B76C(uint64_t a1)
{
  v2 = os_log_create("com.apple.freeform", [*(a1 + 32) UTF8String]);

  **(a1 + 40) = v2;
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

void sub_10001BBEC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (CRLAssertCat_init_token != -1)
  {
    sub_1000894C0();
  }

  v6 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_1000894D4(v6);
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

void sub_10001BCF0(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001BDA8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001BE78(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001C59C(id a1)
{
  v1 = [NSDictionary sharedKeySetForKeys:&off_1000C8F50];
  v2 = qword_1000D9358;
  qword_1000D9358 = v1;

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = qword_1000D9360;
  qword_1000D9360 = v3;

  dword_1000D9368 = 0;
}

void sub_10001C678(id a1)
{
  v1 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 2);
  if (v1)
  {
    v1 = dlsym(v1, "SimulateCrash");
  }

  off_1000D9370 = v1;
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

void sub_10001CC74(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001CCB8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001D030(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001D074(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001D300(id a1)
{
  CRLDefaultCat_log_t = CRLLogCreateCategory("CRLDefaultCat");

  _objc_release_x1();
}

void sub_10001D344(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001D388(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001D5C8(id a1)
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
  v6 = qword_1000D9388;
  qword_1000D9388 = v5;

  if (!qword_1000D9388)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_100089920();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100089934();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_1000899E4();
    }

    v7 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100087834(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLTemporaryDirectory _createDirectoryWithSignature:subdirectory:error:]_block_invoke"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTemporaryDirectory.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:114 isFatal:0 description:"invalid nil value for '%{public}s'", "secretSubdirectoryNameBase"];
  }
}

void sub_10001D784(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001D7C8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

CGContext *CRLCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (qword_1000D93B0[0] != -1)
  {
    sub_100089A20();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, qword_1000D93A8, 0x2002u);
  if (!v8)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_100089A34();
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
      sub_100089A48();
    }

    v11 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100089A70(v11);
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

void sub_10001DE64(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

void sub_10001DEA8(id a1)
{
  CRLAssertCat_log_t = CRLLogCreateCategory("CRLAssertCat");

  _objc_release_x1();
}

uint64_t sub_10001DF64(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

void sub_10001DFE0(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol:v6];

  *a3 = v7;
}

id sub_10001E04C()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___CRLUSDRenderingExtensionAPIEndpointProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  if (qword_1000D5FE0 != -1)
  {
    swift_once();
  }

  [v2 setInterface:qword_1000E3418 forSelector:"makeCoreRERendererProxyForUUID:delegateProxy:flags:response:" argumentIndex:1 ofReply:0];
  if (qword_1000D5FE8 != -1)
  {
    swift_once();
  }

  result = [v2 setInterface:qword_1000E3420 forSelector:"makeCoreRERendererProxyForUUID:delegateProxy:flags:response:" argumentIndex:0 ofReply:1];
  qword_1000E3428 = v2;
  return result;
}

Swift::Int sub_10001E17C()
{
  v1 = *v0;
  sub_10008B268();
  sub_10008B278(v1);
  return sub_10008B2C8();
}

Swift::Int sub_10001E1F0()
{
  v1 = *v0;
  sub_10008B268();
  sub_10008B278(v1);
  return sub_10008B2C8();
}

unint64_t sub_10001E234()
{
  v1 = 0x656E6E6F63736964;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_10001E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002B074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001E2DC(uint64_t a1)
{
  v2 = sub_10002E808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E318(uint64_t a1)
{
  v2 = sub_10002E808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E354(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v25 = a2;
  v26 = sub_10002A958(&qword_1000D6888);
  v24 = *(v26 - 8);
  __chkstk_darwin();
  v23 = &v19 - v4;
  v5 = sub_10002A958(&qword_1000D6890);
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = sub_10002A958(&qword_1000D6898);
  v20 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = sub_10002A958(&unk_1000D68A0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v19 - v13;
  sub_10002E7C4(a1, a1[3]);
  sub_10002E808();
  v15 = v27;
  sub_10008B328();
  if (!v15)
  {
    v28 = 0;
    sub_10002E950();
    sub_10008B0A8();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_10002E8FC();
    sub_10008B0A8();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_10002E8A8();
  v17 = v23;
  sub_10008B0A8();
  v18 = v26;
  sub_10008B0D8();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10001E728@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10001E764(uint64_t a1)
{
  v2 = sub_10002E8FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E7A0(uint64_t a1)
{
  v2 = sub_10002E8FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10001E7E4()
{
  sub_10008B268();
  sub_10008B278(0);
  return sub_10008B2C8();
}

Swift::Int sub_10001E850()
{
  sub_10008B268();
  sub_10008B278(0);
  return sub_10008B2C8();
}

uint64_t sub_10001E89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10008B158();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001E91C(uint64_t a1)
{
  v2 = sub_10002E8A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E958(uint64_t a1)
{
  v2 = sub_10002E8A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E994(uint64_t a1)
{
  v2 = sub_10002E950();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E9D0(uint64_t a1)
{
  v2 = sub_10002E950();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001EA1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002B1A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_10001EA64()
{
  v1 = *(v0 + 8);
  sub_10008B268();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_10008B278(2uLL);
      sub_10008AB98();
      return sub_10008B2C8();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_10008B278(v2);
  return sub_10008B2C8();
}

void sub_10001EAE4()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 1;
LABEL_5:
    sub_10008B278(v2);
    return;
  }

  sub_10008B278(2uLL);

  sub_10008AB98();
}

Swift::Int sub_10001EB6C()
{
  v1 = *(v0 + 8);
  sub_10008B268();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_10008B278(2uLL);
      sub_10008AB98();
      return sub_10008B2C8();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_10008B278(v2);
  return sub_10008B2C8();
}

uint64_t sub_10001EBE8(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_10008B158();
  }

  return 1;
}

uint64_t sub_10001EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a3;
  v5[9] = a4;
  v5[6] = a1;
  v5[7] = a2;
  v5[5] = v4;
  v5[10] = sub_10008ACE8();
  v5[11] = sub_10008ACD8();
  v7 = sub_10008AC88();
  v5[12] = v7;
  v5[13] = v6;

  return _swift_task_switch(sub_10001ECEC, v7, v6);
}

uint64_t sub_10001ECEC()
{
  v8 = *(v0 + 64);
  v1 = sub_10008ACD8();
  *(v0 + 112) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *(v2 + 16) = v0 + 40;
  *(v2 + 24) = v8;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  v4 = sub_10002A958(&unk_1000D66C0);
  *v3 = v0;
  v3[1] = sub_10001EE04;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, &protocol witness table for MainActor, v5, v6, sub_10002A948, v2, v4);
}

uint64_t sub_10001EE04()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10001EF94;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10001EF28;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001EF28()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_10001EF94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = a4;
  v5[4] = a1;
  v5[5] = a2;
  v5[3] = v4;
  v5[8] = sub_10008ACE8();
  v5[9] = sub_10008ACD8();
  v7 = sub_10008AC88();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_10001F0B0, v7, v6);
}

uint64_t sub_10001F0B0()
{
  v8 = *(v0 + 48);
  v1 = sub_10008ACD8();
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v0 + 24;
  *(v2 + 24) = v8;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = sub_10002A958(&qword_1000D6768);
  *v3 = v0;
  v3[1] = sub_10001F1C8;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, &protocol witness table for MainActor, v5, v6, sub_10002BC50, v2, v4);
}

uint64_t sub_10001F1C8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_10001F354;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_10001F2EC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001F2EC()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10001F354()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10001F3CC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a4;
  v22 = a3;
  v11 = sub_10002A958(&qword_1000D66F8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = *(a2 + 16);
  (*(v12 + 16))(&v21 - v13, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v14, v11);
  aBlock[4] = a6;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001FDA8;
  aBlock[3] = a7;
  v18 = _Block_copy(aBlock);

  v19 = [v15 remoteObjectProxyWithErrorHandler:{v18, v21}];
  _Block_release(v18);
  sub_10008AE78();
  swift_unknownObjectRelease();
  sub_10002A9E0(aBlock, v24);
  sub_10002AA3C();
  swift_dynamicCast();
  v24[0] = v23;
  v20 = v23;
  v22(v24, a1);

  sub_10002E85C(aBlock);
}

void sub_10001F620(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_10002A958(&qword_1000D8000);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *(a2 + 16);
  (*(v7 + 16))(&v16 - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_10002A9B4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001FDA8;
  aBlock[3] = &unk_1000C3F30;
  v13 = _Block_copy(aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler:v13];
  _Block_release(v13);
  sub_10008AE78();
  swift_unknownObjectRelease();
  sub_10002A9E0(aBlock, v18);
  sub_10002AA3C();
  swift_dynamicCast();
  v18[0] = v17;
  v15 = v17;
  a3(v18, a1);

  sub_10002E85C(aBlock);
}

void sub_10001F884(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_10002A958(&qword_1000D6770);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *(a2 + 16);
  (*(v7 + 16))(&v16 - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_10002BC74;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001FDA8;
  aBlock[3] = &unk_1000C41B0;
  v13 = _Block_copy(aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler:v13];
  _Block_release(v13);
  sub_10008AE78();
  swift_unknownObjectRelease();
  sub_10002A9E0(aBlock, v18);
  sub_10002AA3C();
  swift_dynamicCast();
  v18[0] = v17;
  v15 = v17;
  a3(v18, a1);

  sub_10002E85C(aBlock);
}

void sub_10001FAE8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_10002A958(&qword_1000D6730);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *(a2 + 16);
  (*(v7 + 16))(&v16 - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_10002B874;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001FDA8;
  aBlock[3] = &unk_1000C4110;
  v13 = _Block_copy(aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler:v13];
  _Block_release(v13);
  sub_10008AE78();
  swift_unknownObjectRelease();
  sub_10002A9E0(aBlock, v18);
  sub_10002AA3C();
  swift_dynamicCast();
  v18[0] = v17;
  v15 = v17;
  a3(v18, a1);

  sub_10002E85C(aBlock);
}

uint64_t sub_10001FD4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_errorRetain();
  sub_10002A958(a3);
  return sub_10008AC98();
}

void sub_10001FDA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10001FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = sub_10008ACE8();
  v5[8] = sub_10008ACD8();
  v5[2] = v4;
  v5[9] = sub_10008ACD8();
  v7 = sub_10008AC88();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_10001FECC, v7, v6);
}

uint64_t sub_10001FECC()
{
  v4 = *(v0 + 40);
  *(v0 + 96) = sub_10008ACD8();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v4;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10001FFD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10001FFD0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100020178;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1000200F4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000200F4()
{

  v1 = sub_10008AC88();

  return _swift_task_switch(sub_10002F1A4, v1, v0);
}

uint64_t sub_100020178()
{

  v1 = sub_10008AC88();

  return _swift_task_switch(sub_10002F198, v1, v0);
}

uint64_t sub_100020218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = sub_10008ACE8();
  v5[8] = sub_10008ACD8();
  v5[2] = v4;
  v5[9] = sub_10008ACD8();
  v7 = sub_10008AC88();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_1000202D4, v7, v6);
}

uint64_t sub_1000202D4()
{
  v7 = *(v0 + 40);
  v1 = sub_10008ACD8();
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v7;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1000203D8;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, v4, v5, sub_10002BD90, v2, &type metadata for () + 8);
}

uint64_t sub_1000203D8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1000205E4;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1000204FC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000204FC()
{

  v1 = sub_10008AC88();

  return _swift_task_switch(sub_100020580, v1, v0);
}

uint64_t sub_100020580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000205E4()
{

  v1 = sub_10008AC88();

  return _swift_task_switch(sub_100020684, v1, v0);
}

uint64_t sub_100020684()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000206E8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = sub_100089BD8();
    v2 = sub_100040920(v1);
    if (v4 == -1)
    {
      sub_10002A958(&qword_1000D66F8);
      sub_10008AC98();
    }

    else
    {
      v5 = v2;
      v6 = v3;
      v7 = v4;
      sub_10002ACC4();
      swift_allocError();
      *v8 = v5;
      *(v8 + 8) = v6;
      *(v8 + 16) = v7;
      sub_10002A958(&qword_1000D66F8);
      sub_10008AC98();
    }
  }

  else
  {
    sub_10002A958(&qword_1000D66F8);
    sub_10008ACA8();
  }
}

uint64_t sub_1000207F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10002A958(&qword_1000D67D8);
  v7[6] = swift_task_alloc();
  sub_10008ACE8();
  v7[7] = sub_10008ACD8();
  v9 = sub_10008AC88();

  return _swift_task_switch(sub_1000208C4, v9, v8);
}

uint64_t sub_1000208C4()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];

  ObjectType = swift_getObjectType();
  (*(v2 + 8))(ObjectType, v2);
  v5 = sub_100089DA8();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v3(v1, 0);
  sub_10002E21C(v1, &qword_1000D67D8);

  v6 = v0[1];

  return v6();
}

void sub_100020A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002A958(&qword_1000D67D8);
  __chkstk_darwin();
  v7 = &v12 - v6;
  sub_10002E1B4(a1, &v12 - v6, &qword_1000D67D8);
  v8 = sub_100089DA8();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    isa = sub_100089D68().super.isa;
    (*(v9 + 8))(v7, v8);
  }

  if (a2)
  {
    v11 = sub_100089BD8();
  }

  else
  {
    v11 = 0;
  }

  (*(a3 + 16))(a3, isa, v11);
}

uint64_t sub_100020B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v13;
  v8[7] = v14;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v8[9] = swift_task_alloc();
  sub_10008ACE8();
  v8[10] = sub_10008ACD8();
  v10 = sub_10008AC88();
  v8[11] = v10;
  v8[12] = v9;

  return _swift_task_switch(sub_100020C74, v10, v9);
}

uint64_t sub_100020C74()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002BB7C(&qword_1000D67D0, type metadata accessor for CRLUSDRendering.SceneRequest);
  sub_100089B18();
  v7 = v0[3];
  ObjectType = swift_getObjectType();
  v6 = (*(v7 + 16) + **(v7 + 16));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100020EAC;
  v3 = v0[9];
  v4 = v0[3];

  return v6(v3, ObjectType, v4);
}

uint64_t sub_100020EAC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(*v1 + 112) = v0;

  sub_10002E14C(v3, type metadata accessor for CRLUSDRendering.SceneRequest);
  v4 = *(v2 + 96);
  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_100021090;
  }

  else
  {
    v6 = sub_100021018;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100021018()
{
  v1 = *(v0 + 48);

  v1(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100021090()
{

  v1 = v0[14];
  v2 = v0[6];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_100021214(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100089BD8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100021278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v13;
  v8[25] = v14;
  v8[22] = a7;
  v8[23] = a8;
  v8[21] = a5;
  v8[11] = a4;
  sub_10008ACE8();
  v8[26] = sub_10008ACD8();
  v10 = sub_10008AC88();
  v8[27] = v10;
  v8[28] = v9;

  return _swift_task_switch(sub_100021324, v10, v9);
}

uint64_t sub_100021324()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002DFAC();
  sub_100089B18();
  v8 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  *(v0 + 80) = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  v7 = (*(v8 + 24) + **(v8 + 24));
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_100021538;
  v5 = *(v0 + 168);

  return v7(v0 + 16, ObjectType, v5);
}

uint64_t sub_100021538()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1000216BC;
  }

  else
  {
    v5 = sub_10002164C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002164C()
{
  v1 = *(v0 + 192);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000216BC()
{

  v1 = v0[30];
  v2 = v0[24];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100021838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a4;
  v8[4] = a5;
  sub_10008ACE8();
  v8[9] = sub_10008ACD8();
  v10 = sub_10008AC88();
  v8[10] = v10;
  v8[11] = v9;

  return _swift_task_switch(sub_1000218E0, v10, v9);
}

uint64_t sub_1000218E0()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002A958(&qword_1000D6700);
  sub_10002DDE0();
  sub_100089B18();
  v7 = v0[4];
  ObjectType = swift_getObjectType();
  v2 = v0[2];
  v0[12] = v2;
  v6 = (*(v7 + 40) + **(v7 + 40));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100021AF8;
  v4 = v0[4];

  return v6(v2, ObjectType, v4);
}

uint64_t sub_100021AF8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100021C84;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100021C14;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100021C14()
{
  v1 = *(v0 + 56);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100021C84()
{

  v1 = v0[14];
  v2 = v0[7];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100021E0C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v11 = sub_10008A958();
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  v8[8] = sub_10008ACE8();
  v8[9] = sub_10008ACD8();
  ObjectType = swift_getObjectType();
  v16 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_100021FC4;
  v14.n128_f32[0] = a1;

  return v16(ObjectType, a6, v14);
}

uint64_t sub_100021FC4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  *(v5 + 112) = a3;
  *(v5 + 104) = v3;

  v7 = sub_10008AC88();
  if (v3)
  {
    v8 = sub_100022438;
  }

  else
  {
    v8 = sub_10002212C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10002212C()
{
  v1 = *(v0 + 88);

  if (!v1)
  {
    (*(v0 + 24))(0, 0xF000000000000000, 0, 0xF000000000000000, 0);
    goto LABEL_13;
  }

  v2 = *(v0 + 88);
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_11;
  }

  v4 = Mutable;
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  sub_10008A948();
  sub_10008A938();
  (*(v6 + 8))(v5, v7);
  v8 = sub_10008AB08();

  v9 = CGImageDestinationCreateWithData(v4, v8, 1uLL, 0);

  if (!v9)
  {
    v9 = v4;
LABEL_10:

LABEL_11:
    sub_10002ACC4();
    v17 = swift_allocError();
    *v18 = 0xD000000000000019;
    *(v18 + 8) = 0x80000001000A1FE0;
    *(v18 + 16) = 0;
    swift_willThrow();

    goto LABEL_12;
  }

  CGImageDestinationAddImage(v9, v2, 0);
  if (!CGImageDestinationFinalize(v9))
  {

    goto LABEL_10;
  }

  v10 = *(v0 + 112);
  v11 = v4;
  v12 = sub_100089D08();
  v14 = v13;

  if ((v10 & 1) == 0)
  {
    v26 = v11;
    *(v0 + 16) = *(v0 + 96);
    if (qword_1000D5FD0 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 104);
    sub_10002DC98();
    v23 = sub_100089B28();
    if (!v22)
    {
      v15 = v23;
      v16 = v24;
      goto LABEL_21;
    }

    v17 = v22;

    sub_10002AC1C(v12, v14);
LABEL_12:
    v19 = *(v0 + 24);
    swift_errorRetain();
    v19(0, 0xF000000000000000, 0, 0xF000000000000000, v17);

    goto LABEL_13;
  }

  v15 = 0;
  v16 = 0xF000000000000000;
LABEL_21:
  v25 = *(v0 + 24);
  sub_10002AC70(v12, v14);
  v25(v12, v14, v15, v16, 0);

  sub_10002AC1C(v12, v14);
  sub_10002AC1C(v12, v14);

  sub_10002AC08(v15, v16);
LABEL_13:

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100022438()
{

  v1 = v0[13];
  v2 = v0[3];
  swift_errorRetain();
  v2(0, 0xF000000000000000, 0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100022560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = v14;
  v8[47] = v15;
  v8[44] = a7;
  v8[45] = a8;
  v8[42] = a4;
  v8[43] = a5;
  v9 = sub_10008A958();
  v8[48] = v9;
  v8[49] = *(v9 - 8);
  v8[50] = swift_task_alloc();
  sub_10008ACE8();
  v8[51] = sub_10008ACD8();
  v11 = sub_10008AC88();
  v8[52] = v11;
  v8[53] = v10;

  return _swift_task_switch(sub_100022664, v11, v10);
}

uint64_t sub_100022664()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002D9B8();
  sub_100089B18();
  v11 = *(v0 + 344);
  ObjectType = swift_getObjectType();
  v2 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v4;
  v5 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v5;
  v6 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v6;
  v10 = (*(v11 + 8) + **(v11 + 8));
  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  *v7 = v0;
  v7[1] = sub_100022890;
  v8 = *(v0 + 344);

  return v10(v0 + 16, ObjectType, v8);
}

uint64_t sub_100022890(uint64_t a1)
{
  v3 = *v2;
  v3[55] = a1;
  v3[56] = v1;

  if (v1)
  {
    v4 = v3[52];
    v5 = v3[53];
    v6 = sub_100022BE4;
  }

  else
  {
    sub_10002DA0C((v3 + 2));
    v4 = v3[52];
    v5 = v3[53];
    v6 = sub_1000229AC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000229AC()
{
  v1 = v0[55];

  if (v1)
  {
    v2 = v0[55];
    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      v4 = Mutable;
      v6 = v0[49];
      v5 = v0[50];
      v7 = v0[48];
      sub_10008A948();
      sub_10008A938();
      (*(v6 + 8))(v5, v7);
      v8 = sub_10008AB08();

      v9 = CGImageDestinationCreateWithData(v4, v8, 1uLL, 0);

      if (v9)
      {
        CGImageDestinationAddImage(v9, v2, 0);
        if (CGImageDestinationFinalize(v9))
        {
          v10 = v0[46];
          v11 = v4;
          v12 = sub_100089D08();
          v14 = v13;

          sub_10002AC70(v12, v14);
          v10(v12, v14, 0);
          sub_10002AC1C(v12, v14);
          sub_10002AC1C(v12, v14);

          goto LABEL_11;
        }
      }

      else
      {
        v9 = v4;
      }
    }

    sub_10002ACC4();
    v15 = swift_allocError();
    *v16 = 0xD000000000000019;
    *(v16 + 8) = 0x80000001000A1FE0;
    *(v16 + 16) = 0;
    swift_willThrow();

    v17 = v0[46];
    swift_errorRetain();
    v17(0, 0xF000000000000000, v15);
  }

  else
  {
    (v0[46])(0, 0xF000000000000000, 0);
  }

LABEL_11:

  v18 = v0[1];

  return v18();
}

uint64_t sub_100022BE4()
{

  sub_10002DA0C((v0 + 2));
  v1 = v0[56];
  v2 = v0[46];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100022D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = v14;
  v8[47] = v15;
  v8[44] = a7;
  v8[45] = a8;
  v8[42] = a4;
  v8[43] = a5;
  v8[48] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  sub_10002A958(&qword_1000D6728);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v9 = sub_100089CD8();
  v8[53] = v9;
  v8[54] = *(v9 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  sub_10008ACE8();
  v8[57] = sub_10008ACD8();
  v11 = sub_10008AC88();
  v8[58] = v11;
  v8[59] = v10;

  return _swift_task_switch(sub_100022F08, v11, v10);
}

uint64_t sub_100022F08()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002D9B8();
  sub_100089B18();
  v12 = *(v0 + 344);
  ObjectType = swift_getObjectType();
  v2 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v4;
  v5 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v5;
  v6 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v6;
  v11 = (*(v12 + 16) + **(v12 + 16));
  v7 = swift_task_alloc();
  *(v0 + 480) = v7;
  *v7 = v0;
  v7[1] = sub_100023174;
  v8 = *(v0 + 416);
  v9 = *(v0 + 344);

  return v11(v8, v0 + 16, ObjectType, v9);
}

uint64_t sub_100023174()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_100023698;
  }

  else
  {
    sub_10002DA0C(v2 + 16);
    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_100023290;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100023290()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[46];
    sub_10002E21C(v0[52], &qword_1000D6728);
    v4(0, 0xF000000000000000, 0);
  }

  else
  {
    v5 = v0[61];
    v6 = v0[55];
    v7 = v0[56];
    v8 = v0[53];
    v9 = v0[54];
    v10 = v0[51];
    v11 = v0[49];
    (*(v9 + 32))(v7, v0[52], v8);
    v12 = *(v9 + 16);
    v12(v6, v7, v8);
    v12(v11, v6, v8);
    v12(v10, v6, v8);
    (*(v9 + 56))(v10, 0, 1, v8);
    v13 = sub_100089C28();
    if (v5)
    {
      v15 = v0[55];
      v16 = v0[56];
      v17 = v0[53];
      v18 = v0[54];
      v19 = v0[49];
      sub_10002E21C(v0[51], &qword_1000D6728);
      v20 = *(v18 + 8);
      v20(v15, v17);
      v20(v16, v17);
      v20(v19, v17);
      v35 = v0[46];
      swift_errorRetain();
      v35(0, 0xF000000000000000, v5);
    }

    else
    {
      v21 = v13;
      v22 = v14;
      v24 = v0[54];
      v23 = v0[55];
      v25 = v0[53];
      v26 = v0[50];
      v28 = v0[48];
      v27 = v0[49];
      sub_10002E21C(v0[51], &qword_1000D6728);
      v29 = v25;
      v30 = *(v24 + 8);
      v30(v23, v29);
      v31 = (v27 + *(v28 + 20));
      *v31 = v21;
      v31[1] = v22;
      sub_10002D860(v27, v26);
      if (qword_1000D5FD0 != -1)
      {
        swift_once();
      }

      sub_10002BB7C(&qword_1000D67A0, type metadata accessor for CRLUSDRendering.BookmarkableURL);
      v32 = sub_100089B28();
      v33 = v0[56];
      v34 = v0[53];
      v38 = v0[46];
      v39 = v32;
      v40 = v30;
      v42 = v41;
      sub_10002E14C(v0[50], type metadata accessor for CRLUSDRendering.BookmarkableURL);
      sub_10002AC70(v39, v42);
      v38(v39, v42, 0);
      sub_10002AC1C(v39, v42);
      sub_10002AC1C(v39, v42);
      v40(v33, v34);
    }
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_100023698()
{

  sub_10002DA0C((v0 + 2));
  v1 = v0[61];
  v2 = v0[46];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100023864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v14;
  v8[6] = v15;
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a4;
  v8[7] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v8[10] = type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  v8[11] = swift_task_alloc();
  sub_10002A958(&qword_1000D6728);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v9 = sub_100089CD8();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  sub_10008ACE8();
  v8[18] = sub_10008ACD8();
  v11 = sub_10008AC88();
  v8[19] = v11;
  v8[20] = v10;

  return _swift_task_switch(sub_100023A24, v11, v10);
}

uint64_t sub_100023A24()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002BB7C(&qword_1000D6798, type metadata accessor for CRLUSDRendering.CompressionRequest);
  sub_100089B18();
  v1 = _s18CompressionBackendCMa();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_100023CBC;
  v3 = v0[13];
  v4 = v0[11];

  return (sub_100084FC4)(v3, v4, v1, &off_1000C7498);
}

uint64_t sub_100023CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 176) = v0;

  sub_10002E14C(v3, type metadata accessor for CRLUSDRendering.CompressionRequest);
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_100024240;
  }

  else
  {
    v6 = sub_100023E28;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100023E28()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_10002E21C(v0[13], &qword_1000D6728);
    v4(0, 0xF000000000000000, 0);
  }

  else
  {
    v5 = v0[22];
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[14];
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[8];
    (*(v9 + 32))(v7, v0[13], v8);
    v12 = *(v9 + 16);
    v12(v6, v7, v8);
    v12(v11, v6, v8);
    v12(v10, v6, v8);
    (*(v9 + 56))(v10, 0, 1, v8);
    v13 = sub_100089C28();
    if (v5)
    {
      v15 = v0[16];
      v16 = v0[17];
      v17 = v0[14];
      v18 = v0[15];
      v19 = v0[8];
      sub_10002E21C(v0[12], &qword_1000D6728);
      v20 = *(v18 + 8);
      v20(v15, v17);
      v20(v16, v17);
      v20(v19, v17);
      v35 = v0[5];
      swift_errorRetain();
      v35(0, 0xF000000000000000, v5);
    }

    else
    {
      v21 = v13;
      v22 = v14;
      v24 = v0[15];
      v23 = v0[16];
      v25 = v0[14];
      v27 = v0[8];
      v26 = v0[9];
      v28 = v0[7];
      sub_10002E21C(v0[12], &qword_1000D6728);
      v29 = v25;
      v30 = *(v24 + 8);
      v30(v23, v29);
      v31 = (v27 + *(v28 + 20));
      *v31 = v21;
      v31[1] = v22;
      sub_10002D860(v27, v26);
      if (qword_1000D5FD0 != -1)
      {
        swift_once();
      }

      sub_10002BB7C(&qword_1000D67A0, type metadata accessor for CRLUSDRendering.BookmarkableURL);
      v32 = sub_100089B28();
      v33 = v0[17];
      v34 = v0[14];
      v38 = v0[5];
      v39 = v32;
      v40 = v30;
      v42 = v41;
      sub_10002E14C(v0[9], type metadata accessor for CRLUSDRendering.BookmarkableURL);
      sub_10002AC70(v39, v42);
      v38(v39, v42, 0);
      sub_10002AC1C(v39, v42);
      sub_10002AC1C(v39, v42);
      v40(v33, v34);
    }
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_100024240()
{

  v1 = v0[22];
  v2 = v0[5];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

void sub_100024468(void **a1, uint64_t a2)
{
  v19 = a2;
  v4 = sub_10002A958(&qword_1000D66F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *a1;
  if (qword_1000D5FD0 != -1)
  {
    swift_once();
  }

  type metadata accessor for CRLUSDRendering.SceneRequest(0);
  sub_10002BB7C(&qword_1000D6720, type metadata accessor for CRLUSDRendering.SceneRequest);
  v9 = sub_100089B28();
  if (!v2)
  {
    v11 = v9;
    v12 = v10;
    isa = sub_100089CF8().super.isa;
    sub_10002AC1C(v11, v12);
    v14 = v4;
    (*(v5 + 16))(v7, v19, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, v7, v14);
    aBlock[4] = sub_10002F18C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000246EC;
    aBlock[3] = &unk_1000C40C0;
    v17 = _Block_copy(aBlock);

    [v8 loadScene:isa response:v17];
    _Block_release(v17);
  }
}

void sub_1000246EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100024758(void **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = sub_10002A958(&qword_1000D66F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = *a1;
  v13 = a4[3];
  v27 = a4[2];
  v28 = v13;
  v29 = *(a4 + 8);
  v14 = a4[1];
  aBlock = *a4;
  v26 = v14;
  if (qword_1000D5FD0 != -1)
  {
    swift_once();
  }

  sub_10002B7C4();
  v15 = sub_100089B28();
  if (!v4)
  {
    v17 = v15;
    v24 = v12;
    v18 = v16;
    v30 = 0;
    isa = sub_100089CF8().super.isa;
    sub_10002AC1C(v17, v18);
    (*(v9 + 16))(v11, a2, v8);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v21 = swift_allocObject();
    (*(v9 + 32))(v21 + v20, v11, v8);
    *&v27 = sub_10002F18C;
    *(&v27 + 1) = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_1000246EC;
    *(&v26 + 1) = &unk_1000C4070;
    v22 = _Block_copy(&aBlock);

    [v24 updateScene:isa response:v22];
    _Block_release(v22);
  }
}

void sub_1000249BC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10002A958(&qword_1000D66F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  v22 = *a1;
  aBlock[0] = a4;
  if (qword_1000D5FD0 != -1)
  {
    swift_once();
  }

  sub_10002A958(&qword_1000D6700);
  sub_10002AF1C();
  v12 = sub_100089B28();
  if (!v4)
  {
    v14 = v12;
    v15 = v13;
    v20[1] = 0;
    isa = sub_100089CF8().super.isa;
    sub_10002AC1C(v14, v15);
    (*(v9 + 16))(v11, a2, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v11, v8);
    aBlock[4] = sub_10002AFF4;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000246EC;
    aBlock[3] = &unk_1000C4020;
    v19 = _Block_copy(aBlock);

    [v22 performActions:isa response:v19];
    _Block_release(v19);
  }
}

void sub_100024C20(void **a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = sub_10002A958(&qword_1000D8000);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = *a1;
  (*(v9 + 16))(aBlock - v11, a2, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_10002AB30;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002514C;
  aBlock[3] = &unk_1000C3F80;
  v16 = _Block_copy(aBlock);

  *&v17 = a4;
  [v13 takeSnapshotAt:v16 response:v17];
  _Block_release(v16);
}

void sub_100024E14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >> 60 != 15)
  {
    sub_10002AC70(a1, a2);
    isa = sub_100089CF8().super.isa;
    v10 = CGImageSourceCreateWithData(isa, 0);

    if (v10)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
      if (ImageAtIndex)
      {
        if (a4 >> 60 != 15)
        {
          v14 = ImageAtIndex;
          sub_10002AC70(a3, a4);
          if (qword_1000D5FD8 != -1)
          {
            swift_once();
          }

          sub_10002A958(&qword_1000D66E0);
          sub_10002AD18();
          sub_100089B18();
          if ((v16 & 1) == 0)
          {
            v15 = v14;
            sub_10002A958(&qword_1000D8000);
            sub_10008ACA8();
            sub_10002AC08(a1, a2);

            sub_10002AC08(a3, a4);
            return;
          }

          sub_10002AC08(a3, a4);
          ImageAtIndex = v14;
        }

        v12 = ImageAtIndex;
        sub_10002A958(&qword_1000D8000);
        sub_10008ACA8();
        sub_10002AC08(a1, a2);

        return;
      }
    }

    sub_10002ACC4();
    swift_allocError();
    *v13 = 0xD000000000000019;
    *(v13 + 8) = 0x80000001000A1D90;
    *(v13 + 16) = 0;
    sub_10002A958(&qword_1000D8000);
    sub_10008AC98();
    sub_10002AC08(a1, a2);
    return;
  }

  if (a5)
  {
    swift_errorRetain();
    sub_10002A958(&qword_1000D8000);
    sub_10008AC98();
  }

  else
  {
    sub_10002A958(&qword_1000D8000);
    sub_10008ACA8();
  }
}

uint64_t sub_10002514C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_100089D08();
    v10 = v9;

    if (a3)
    {
LABEL_3:
      v11 = a3;
      a3 = sub_100089D08();
      v13 = v12;

      goto LABEL_6;
    }
  }

  else
  {

    v10 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v13 = 0xF000000000000000;
LABEL_6:
  v14 = a4;
  v7(v6, v10, a3, v13, a4);

  sub_10002AC08(a3, v13);
  sub_10002AC08(v6, v10);
}

void sub_100025240(void **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = sub_10002A958(&qword_1000D6770);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = *a1;
  v13 = a4[7];
  v34 = a4[6];
  v35 = v13;
  v14 = a4[9];
  v36 = a4[8];
  v37 = v14;
  v15 = a4[3];
  v30 = a4[2];
  v31 = v15;
  v16 = a4[5];
  v32 = a4[4];
  v33 = v16;
  v17 = a4[1];
  aBlock = *a4;
  v29 = v17;
  if (qword_1000D5FD0 != -1)
  {
    swift_once();
  }

  sub_10002B888();
  v18 = sub_100089B28();
  if (!v4)
  {
    v20 = v18;
    v27 = v12;
    v21 = v19;
    v38 = 0;
    isa = sub_100089CF8().super.isa;
    sub_10002AC1C(v20, v21);
    (*(v9 + 16))(v11, a2, v8);
    v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v24 = swift_allocObject();
    (*(v9 + 32))(v24 + v23, v11, v8);
    *&v30 = sub_10002BC88;
    *(&v30 + 1) = v24;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v29 = sub_100025654;
    *(&v29 + 1) = &unk_1000C4200;
    v25 = _Block_copy(&aBlock);

    [v27 createSurfaceSnapshot:isa response:v25];
    _Block_release(v25);
  }
}

void sub_1000254BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      swift_errorRetain();
      sub_10002A958(&qword_1000D6770);
      sub_10008AC98();
    }

    else
    {
      sub_10002A958(&qword_1000D6770);
      sub_10008ACA8();
    }
  }

  else
  {
    sub_10002AC70(a1, a2);
    isa = sub_100089CF8().super.isa;
    v6 = CGImageSourceCreateWithData(isa, 0);

    if (v6)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
      if (ImageAtIndex)
      {
        v8 = ImageAtIndex;
        sub_10002A958(&qword_1000D6770);
        sub_10008ACA8();
        sub_10002AC08(a1, a2);

        return;
      }
    }

    sub_10002ACC4();
    swift_allocError();
    *v9 = 0xD000000000000019;
    *(v9 + 8) = 0x80000001000A1D90;
    *(v9 + 16) = 0;
    sub_10002A958(&qword_1000D6770);
    sub_10008AC98();
    sub_10002AC08(a1, a2);
  }
}

uint64_t sub_100025654(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_100089D08();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_10002AC08(v4, v8);
}

uint64_t sub_100025700(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_10008ACE8();
  v3[7] = sub_10008ACD8();
  v5 = sub_10008AC88();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1000257A0, v5, v4);
}

uint64_t sub_1000257A0()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v0[2] = v1;
  v0[11] = sub_10008ACD8();
  v5 = sub_10008AC88();
  v0[12] = v5;
  v0[13] = v4;

  return _swift_task_switch(sub_10002584C, v5, v4);
}

uint64_t sub_10002584C()
{
  v1 = v0[10];
  v2 = sub_10008ACD8();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v3[2] = v0 + 2;
  v3[3] = sub_10002B834;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_10002A958(&qword_1000D6728);
  *v4 = v0;
  v4[1] = sub_100025980;
  v6 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v2, &protocol witness table for MainActor, 0xD000000000000016, 0x80000001000A1DD0, sub_10002B850, v3, v5);
}

uint64_t sub_100025980()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100025BCC;
  }

  else
  {
    v5 = sub_100025AFC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100025AFC()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_100025B68, v1, v2);
}

uint64_t sub_100025B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100025BCC()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_100025C38, v1, v2);
}

uint64_t sub_100025C38()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100025C9C(void **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = sub_10002A958(&qword_1000D6730);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = *a1;
  v14 = a4[7];
  v36 = a4[6];
  v37 = v14;
  v15 = a4[9];
  v38 = a4[8];
  v39 = v15;
  v16 = a4[3];
  v32 = a4[2];
  v33 = v16;
  v17 = a4[5];
  v34 = a4[4];
  v35 = v17;
  v18 = a4[1];
  aBlock = *a4;
  v31 = v18;
  if (qword_1000D5FD0 != -1)
  {
    swift_once();
  }

  sub_10002B888();
  v19 = sub_100089B28();
  if (!v4)
  {
    v21 = v19;
    v29 = v13;
    v22 = a3;
    v23 = v20;
    v40 = 0;
    isa = sub_100089CF8().super.isa;
    sub_10002AC1C(v21, v23);
    (*(v10 + 16))(v12, a2, v9);
    v25 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    (*(v10 + 32))(v26 + v25, v12, v9);
    *&v32 = sub_10002B9AC;
    *(&v32 + 1) = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_100025654;
    *(&v31 + 1) = &unk_1000C4160;
    v27 = _Block_copy(&aBlock);

    [v29 createSurfaceModel:isa response:v27];
    _Block_release(v27);
  }
}

uint64_t sub_100025F30(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v8 = sub_10002A958(&qword_1000D6728);
  v9 = __chkstk_darwin(v8 - 8);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = sub_100089CD8();
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  v15 = __chkstk_darwin(v13);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v49 = &v44 - v18;
  __chkstk_darwin(v17);
  v50 = &v44 - v19;
  v20 = sub_10002A958(&qword_1000D6740);
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = sub_10002A958(&qword_1000D6748);
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v44 - v28;
  if (a2 >> 60 != 15)
  {
    sub_10002AC70(a1, a2);
    if (qword_1000D5FD8 != -1)
    {
      swift_once();
    }

    sub_10002BA44();
    sub_100089B18();
    v47 = a1;
    v48 = a2;
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      v31 = &qword_1000D6740;
      v32 = v22;
    }

    else
    {
      sub_10002BBC4(v22, v29);
      sub_10002E1B4(v29, v27, &qword_1000D6748);
      v33 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
      if ((*(*(v33 - 8) + 48))(v27, 1, v33) != 1)
      {
        LOBYTE(v56) = 0;
        v37 = v53;
        v38 = v54;
        v46 = *(v54 + 16);
        v46(v12, v27, v53);
        v45 = *(v38 + 56);
        v45(v12, 0, 1, v37);
        v39 = v51;
        sub_100089C68();
        sub_10002E21C(v12, &qword_1000D6728);
        v40 = *(v54 + 32);
        v41 = v49;
        v40(v49, v39, v37);
        sub_10002E14C(v27, type metadata accessor for CRLUSDRendering.BookmarkableURL);
        v42 = v50;
        v40(v50, v41, v37);
        v43 = v52;
        v46(v52, v42, v37);
        v45(v43, 0, 1, v37);
        sub_10002A958(&qword_1000D6730);
        sub_10008ACA8();
        sub_10002AC08(v47, v48);
        (*(v54 + 8))(v42, v37);
        return sub_10002E21C(v29, &qword_1000D6748);
      }

      sub_10002E21C(v29, &qword_1000D6748);
      v32 = v27;
      v31 = &qword_1000D6748;
    }

    sub_10002E21C(v32, v31);
    v34 = v47;
    sub_10002ACC4();
    v35 = swift_allocError();
    *v36 = 0xD000000000000015;
    *(v36 + 8) = 0x80000001000A1E10;
    *(v36 + 16) = 0;
    v56 = v35;
    sub_10002A958(&qword_1000D6730);
    sub_10008AC98();
    return sub_10002AC08(v34, v48);
  }

  if (a3)
  {
    v56 = a3;
    swift_errorRetain();
    sub_10002A958(&qword_1000D6730);
    return sub_10008AC98();
  }

  else
  {
    (*(v54 + 56))(v52, 1, 1, v53);
    sub_10002A958(&qword_1000D6730);
    return sub_10008ACA8();
  }
}

uint64_t sub_10002661C()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared24AsyncRendererSenderProxy_uuid;
  v2 = sub_100089DA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000266C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared24AsyncRendererSenderProxy_uuid;
  v4 = sub_100089DA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100026738(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008ACE8();
  v2[4] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1000267D0, v4, v3);
}

uint64_t sub_1000267D0()
{
  v1 = swift_task_alloc();
  v0[3].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1000268D0;

  return (sub_10001FE10)(0x6E65635364616F6CLL, 0xED0000293A5F2865, sub_10002B818, v1);
}

uint64_t sub_1000268D0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_10002F19C;
  }

  else
  {
    v5 = sub_10002F1A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100026A28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008ACE8();
  v2[4] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100026AC0, v4, v3);
}

uint64_t sub_100026AC0()
{
  v1 = swift_task_alloc();
  v0[3].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_100026BC0;

  return (sub_10001FE10)(0x6353657461647075, 0xEF293A5F28656E65, sub_10002B7A8, v1);
}

uint64_t sub_100026BC0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100026D7C;
  }

  else
  {
    v5 = sub_100026D18;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100026D18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100026D7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100026DE0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008ACE8();
  v2[4] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100026E78, v4, v3);
}

uint64_t sub_100026E78()
{
  v1 = swift_task_alloc();
  v0[3].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1000268D0;

  return sub_10001FE10(0xD000000000000012, 0x80000001000A1DB0, sub_10002AE38, v1);
}

uint64_t sub_100026F70(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  sub_10008ACE8();
  *(v2 + 24) = sub_10008ACD8();
  v4 = sub_10008AC88();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_10002700C, v4, v3);
}

uint64_t sub_10002700C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100027110;

  return sub_10001EC48(0xD000000000000011, 0x80000001000A1D20, sub_10002A320, v3);
}

uint64_t sub_100027110(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_1000272DC;
  }

  else
  {
    *(v8 + 92) = a3;
    *(v8 + 72) = a2;
    *(v8 + 80) = a1;

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_10002726C;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10002726C()
{
  v1 = *(v0 + 92);

  v2 = *(v0 + 8);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_1000272DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027340(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008ACE8();
  v2[4] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1000273D8, v4, v3);
}

uint64_t sub_1000273D8()
{
  v1 = swift_task_alloc();
  v0[3].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1000274D0;

  return sub_10001F00C(0xD000000000000019, 0x80000001000A1E30, sub_10002BC34, v1);
}

uint64_t sub_1000274D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_100026D7C;
  }

  else
  {
    v4[10] = a1;

    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_100027618;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100027618()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_100027680(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027728;

  return sub_100025700(a1, a2);
}

uint64_t sub_100027728()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002781C(char *a1, uint64_t a2, unint64_t a3)
{
  v28 = a1;
  v6 = sub_100089DA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = &v3[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v27 = *(v12 + 1);
    v15 = sub_10008AD08();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = *(v7 + 16);
    v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16(v26, v28, v6);
    sub_10008ACE8();
    swift_unknownObjectRetain();
    v28 = v3;
    sub_10002AC70(a2, a3);
    v17 = sub_10008ACD8();
    v18 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v25 = a3;
    v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 2) = v17;
    *(v20 + 3) = &protocol witness table for MainActor;
    v21 = v26;
    v22 = v27;
    *(v20 + 4) = v14;
    *(v20 + 5) = v22;
    (*(v7 + 32))(&v20[v18], v21, v6);
    *&v20[v19] = v28;
    v23 = &v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
    v24 = v25;
    *v23 = a2;
    v23[1] = v24;
    sub_10004BA04(0, 0, v11, &unk_1000A57D0, v20);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100027AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v15;
  v8[20] = a4;
  v8[21] = a6;
  v9 = sub_100089DA8();
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v8[26] = *(v10 + 64);
  v8[27] = swift_task_alloc();
  sub_10002A958(&qword_1000D6780);
  v8[28] = swift_task_alloc();
  v8[29] = sub_10008ACE8();
  v8[30] = sub_10008ACD8();
  v12 = sub_10008AC88();

  return _swift_task_switch(sub_100027BE4, v12, v11);
}

uint64_t sub_100027BE4()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002C3CC();
  sub_100089B18();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);

  v8 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v8;
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = *(v0 + 144);
  v9 = sub_10008AD08();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  (*(v3 + 16))(v1, v7, v5);
  swift_unknownObjectRetain();
  v10 = sub_10008ACD8();
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  *(v12 + 3) = &protocol witness table for MainActor;
  *(v12 + 4) = v6;
  (*(v3 + 32))(&v12[v11], v1, v5);
  v13 = &v12[(v4 + v11 + 15) & 0xFFFFFFFFFFFFFFF0];
  v14 = *(v0 + 32);
  *v13 = *(v0 + 16);
  *(v13 + 1) = v14;
  *(v13 + 2) = *(v0 + 48);
  *(v13 + 6) = *(v0 + 64);
  sub_10004BA04(0, 0, v2, &unk_1000A57D8, v12);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100027FB4(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a3;
  v40 = a4;
  v38 = a1;
  v8 = sub_100089DA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = &v5[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v36 = *(v14 + 1);
    v17 = sub_10008AD08();
    v18 = *(*(v17 - 8) + 56);
    v37 = v13;
    v18(v13, 1, 1, v17);
    v19 = *(v9 + 16);
    v34 = v8;
    v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19(v35, v38, v8);
    sub_10008ACE8();
    swift_unknownObjectRetain();
    v38 = v5;
    v20 = v39;
    sub_10002AC70(a2, v39);

    v21 = sub_10008ACD8();
    v22 = *(v9 + 80);
    v33 = a5;
    v23 = (v22 + 48) & ~v22;
    v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = v21;
    *(v26 + 3) = &protocol witness table for MainActor;
    v27 = v35;
    v28 = v36;
    *(v26 + 4) = v16;
    *(v26 + 5) = v28;
    (*(v9 + 32))(&v26[v23], v27, v34);
    v29 = v37;
    *&v26[v24] = v38;
    v30 = &v26[v25];
    *v30 = a2;
    v30[1] = v20;
    v31 = &v26[(v25 + 23) & 0xFFFFFFFFFFFFFFF8];
    v32 = v33;
    *v31 = v40;
    *(v31 + 1) = v32;
    sub_10004BA04(0, 0, v29, &unk_1000A57C0, v26);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100028260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v14;
  *(v8 + 152) = v13;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 72) = a4;
  *(v8 + 176) = sub_10008ACE8();
  *(v8 + 184) = sub_10008ACD8();
  v10 = sub_10008AC88();
  *(v8 + 192) = v10;
  *(v8 + 200) = v9;

  return _swift_task_switch(sub_100028314, v10, v9);
}

uint64_t sub_100028314()
{
  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_10002C3CC();
  sub_100089B18();
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 208) = sub_10008ACD8();
  v3 = sub_10008AC88();
  *(v0 + 216) = v3;
  *(v0 + 224) = v2;

  return _swift_task_switch(sub_10002848C, v3, v2);
}

uint64_t sub_10002848C()
{
  v1 = v0[17];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[29] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0 + 2;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_100028594;

  return sub_100020218(0xD00000000000002DLL, 0x80000001000A1F30, sub_10002C420, v3);
}

uint64_t sub_100028594()
{
  v2 = *v1;
  v2[31] = v0;

  sub_10002C440((v2 + 2));

  v3 = v2[28];
  v4 = v2[27];
  if (v0)
  {
    v5 = sub_1000287D0;
  }

  else
  {
    v5 = sub_1000286FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000286FC()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return _swift_task_switch(sub_100028760, v1, v2);
}

uint64_t sub_100028760()
{
  v1 = *(v0 + 160);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000287D0()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return _swift_task_switch(sub_100028834, v1, v2);
}

uint64_t sub_100028834()
{

  v1 = v0[31];
  v2 = v0[20];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100028A3C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35 = a2;
  v36 = a6;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v10 = sub_100089DA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  v17 = v7 + OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v31 = *(v17 + 8);
    v20 = sub_10008AD08();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    (*(v11 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
    sub_10008ACE8();
    v32 = v32;
    v33 = v33;
    v34 = v34;
    swift_unknownObjectRetain();

    v21 = sub_10008ACD8();
    v22 = (*(v11 + 80) + 80) & ~*(v11 + 80);
    v23 = a7;
    v24 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 2) = v21;
    *(v25 + 3) = &protocol witness table for MainActor;
    v26 = v32;
    v27 = v33;
    *(v25 + 4) = v35;
    *(v25 + 5) = v26;
    v28 = v34;
    *(v25 + 6) = v27;
    *(v25 + 7) = v28;
    v29 = v31;
    *(v25 + 8) = v19;
    *(v25 + 9) = v29;
    (*(v11 + 32))(&v25[v22], v13, v10);
    v30 = &v25[v24];
    *v30 = v36;
    *(v30 + 1) = v23;
    sub_10004BA04(0, 0, v16, &unk_1000A57B0, v25);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100028CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v14;
  *(v8 + 56) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 80) = sub_10008ACE8();
  *(v8 + 88) = sub_10008ACD8();
  v10 = sub_10008AC88();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return _swift_task_switch(sub_100028D94, v10, v9);
}

uint64_t sub_100028D94()
{
  v1 = MTLCreateSystemDefaultDevice();
  v0[14] = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = v0[2];
  if ([v1 registryID] != v3)
  {
    swift_unknownObjectRelease();
LABEL_10:

    sub_10002ACC4();
    v11 = swift_allocError();
    *v12 = 0xD00000000000002FLL;
    *(v12 + 8) = 0x80000001000A1EB0;
    *(v12 + 16) = 5;
    swift_willThrow();
    goto LABEL_15;
  }

  v4 = [swift_unknownObjectRetain() newSharedTextureWithHandle:*(v0[3] + OBJC_IVAR___CRLUSDRenderingCoreRESharedTextureHandle_handle)];
  v0[15] = v4;
  if (v4)
  {
    v5 = [v2 newSharedEventWithHandle:v0[4]];
    v0[16] = v5;
    if (v5)
    {
      v6 = [v2 newSharedEventWithHandle:v0[5]];
      v0[17] = v6;
      if (v6)
      {
        v7 = v0[3];
        swift_unknownObjectRelease();
        v8 = v7;
        v0[18] = sub_10008ACD8();
        v10 = sub_10008AC88();
        v0[19] = v10;
        v0[20] = v9;

        return _swift_task_switch(sub_100029014, v10, v9);
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_10002ACC4();
  v11 = swift_allocError();
  *v13 = 0xD00000000000001ELL;
  *(v13 + 8) = 0x80000001000A1EE0;
  *(v13 + 16) = 5;
  swift_willThrow();
  swift_unknownObjectRelease_n();
LABEL_15:
  v14 = v0[8];
  swift_errorRetain();
  v14(v11);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100029014()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = *(v0 + 120);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_100029124;

  return (sub_100020218)(0xD00000000000002CLL, 0x80000001000A1F00, sub_10002C120, v3);
}

uint64_t sub_100029124()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_100029398;
  }

  else
  {
    v5 = sub_10002927C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002927C()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_1000292E0, v1, v2);
}

uint64_t sub_1000292E0()
{
  v1 = v0[8];
  v2 = v0[3];

  v1(0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100029398()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_1000293FC, v1, v2);
}

uint64_t sub_1000293FC()
{
  v1 = v0[3];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2 = v0[23];
  v3 = v0[8];
  swift_errorRetain();
  v3(v2);

  v4 = v0[1];

  return v4();
}

id sub_100029684()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000296CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10008ACE8();
  v6[5] = sub_10008ACD8();
  v8 = sub_10008AC88();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100029768, v8, v7);
}

uint64_t sub_100029768()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[4].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_100029868;

  return sub_100020218(0xD00000000000001ELL, 0x80000001000A1E50, sub_10002BD1C, v2);
}

uint64_t sub_100029868()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_100029A20;
  }

  else
  {
    v5 = sub_1000299C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000299C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100029A20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100029A8C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = *a1;
  v8.super.isa = sub_100089D68().super.isa;
  v15 = *a5;
  v16 = a5[1];
  v17 = a5[2];
  v18 = *(a5 + 6);
  if (qword_1000D5FD0 != -1)
  {
    swift_once();
  }

  sub_10002BD3C();
  v9 = sub_100089B28();
  if (v5)
  {

    sub_10002A958(&qword_1000D66F8);
    return sub_10008AC98();
  }

  else
  {
    v12 = v9;
    v13 = v10;
    isa = sub_100089CF8().super.isa;
    sub_10002AC1C(v12, v13);
    [v7 rendererStateChanged:v8.super.isa state:{isa, v15, v16, v17, v18}];

    sub_10002A958(&qword_1000D66F8);
    return sub_10008ACA8();
  }
}

void sub_100029BEC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v29 = a2;
  v8 = sub_10002A958(&qword_1000D66F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = *a1;
  v13.super.isa = sub_100089D68().super.isa;
  v14 = a5[1];
  aBlock = *a5;
  v26 = v14;
  v27 = a5[2];
  v28 = *(a5 + 6);
  if (qword_1000D5FD0 != -1)
  {
    swift_once();
  }

  sub_10002BD3C();
  v15 = sub_100089B28();
  if (v5)
  {
  }

  else
  {
    v17 = v15;
    v24 = v12;
    v18 = v16;
    isa = sub_100089CF8().super.isa;
    sub_10002AC1C(v17, v18);
    (*(v9 + 16))(v11, v29, v8);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v21 = swift_allocObject();
    (*(v9 + 32))(v21 + v20, v11, v8);
    *&v27 = sub_10002F18C;
    *(&v27 + 1) = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_1000246EC;
    *(&v26 + 1) = &unk_1000C42A0;
    v22 = _Block_copy(&aBlock);

    [v24 rendererStateChangedWithAcknowledge:v13.super.isa state:isa response:v22];
    _Block_release(v22);
  }
}

void sub_100029E6C(id *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v24 = a6;
  v19 = a5;
  v20 = a2;
  v9 = sub_10002A958(&qword_1000D66F8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v23 = *a1;
  v22 = [a3 device];
  v21 = [v22 registryID];
  isa = sub_100089D68().super.isa;
  v14 = [a4 newSharedEventHandle];
  v15 = [v19 newSharedEventHandle];
  (*(v10 + 16))(v12, v20, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v12, v9);
  aBlock[4] = sub_10002F18C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000246EC;
  aBlock[3] = &unk_1000C42F0;
  v18 = _Block_copy(aBlock);

  [v23 rendererSharedTextureChangedXPC:isa deviceID:v21 textureHandle:v24 rendererFrameCountHandle:v14 displayerFrameCountHandle:v15 response:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_10002A0C0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLUSDRendererExtensionShared.AsyncRendererSenderProxy()
{
  result = qword_1000D62E0;
  if (!qword_1000D62E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A178()
{
  result = sub_100089DA8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_10002A280(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002A290(uint64_t result, int a2, int a3)
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

__n128 sub_10002A2E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002A2EC(uint64_t a1, int a2)
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

uint64_t sub_10002A354(uint64_t a1, id *a2)
{
  result = sub_10008AB18();
  *a2 = 0;
  return result;
}

uint64_t sub_10002A3CC(uint64_t a1, id *a2)
{
  v3 = sub_10008AB28();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10002A44C@<X0>(void *a1@<X8>)
{
  sub_10008AB38();
  v2 = sub_10008AB08();

  *a1 = v2;
  return result;
}

uint64_t sub_10002A490()
{
  sub_10008AB38();
  v0 = sub_10008ABC8();

  return v0;
}

uint64_t sub_10002A4CC()
{
  sub_10008AB38();
  sub_10008AB98();
}

Swift::Int sub_10002A520()
{
  sub_10008AB38();
  sub_10008B268();
  sub_10008AB98();
  v0 = sub_10008B2C8();

  return v0;
}

_DWORD *sub_10002A5E4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_10002A630(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10002A660@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_10002A68C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_10002A73C()
{
  v0 = sub_10008AB38();
  v2 = v1;
  if (v0 == sub_10008AB38() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10008B158();
  }

  return v5 & 1;
}

uint64_t sub_10002A7D8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10002E9A4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10002A818@<X0>(void *a1@<X8>)
{
  v2 = sub_10008AB08();

  *a1 = v2;
  return result;
}

uint64_t sub_10002A860@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008AB38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002A88C(uint64_t a1)
{
  v2 = sub_10002BB7C(&qword_1000D85D0, type metadata accessor for CIContextOption);
  v3 = sub_10002BB7C(&qword_1000D68B0, type metadata accessor for CIContextOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002A958(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002A9C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002A9E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10002AA3C()
{
  result = qword_1000D66D0;
  if (!qword_1000D66D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D66D0);
  }

  return result;
}

uint64_t sub_10002AA88()
{
  v1 = sub_10002A958(&qword_1000D8000);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10002AB30(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_10002A958(&qword_1000D8000);

  sub_100024E14(a1, a2, a3, a4, a5);
}

uint64_t sub_10002AC08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002AC1C(a1, a2);
  }

  return a1;
}

uint64_t sub_10002AC1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002AC70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10002ACC4()
{
  result = qword_1000D9050;
  if (!qword_1000D9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9050);
  }

  return result;
}

unint64_t sub_10002AD18()
{
  result = qword_1000D66E8;
  if (!qword_1000D66E8)
  {
    sub_10002AD9C(&qword_1000D66E0);
    sub_10002ADE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D66E8);
  }

  return result;
}

uint64_t sub_10002AD9C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10002ADE4()
{
  result = qword_1000D66F0;
  if (!qword_1000D66F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D66F0);
  }

  return result;
}

unint64_t sub_10002AF1C()
{
  result = qword_1000D6708;
  if (!qword_1000D6708)
  {
    sub_10002AD9C(&qword_1000D6700);
    sub_10002AFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6708);
  }

  return result;
}

unint64_t sub_10002AFA0()
{
  result = qword_1000D6710;
  if (!qword_1000D6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6710);
  }

  return result;
}

void sub_10002AFF8(uint64_t a1)
{
  sub_10002A958(&qword_1000D66F8);

  sub_1000206E8(a1);
}

uint64_t sub_10002B074(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001000A2030 == a2 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEC00000064657463 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000A2050 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_10008B158();

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

uint64_t sub_10002B1A0(void *a1)
{
  v34 = sub_10002A958(&qword_1000D6840);
  v32 = *(v34 - 8);
  __chkstk_darwin();
  v33 = &v27 - v2;
  v29 = sub_10002A958(&qword_1000D6848);
  v31 = *(v29 - 8);
  __chkstk_darwin();
  v4 = &v27 - v3;
  v5 = sub_10002A958(&qword_1000D6850);
  v30 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = sub_10002A958(&qword_1000D6858);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = a1[3];
  v36 = a1;
  v13 = sub_10002E7C4(a1, v12);
  sub_10002E808();
  v14 = v35;
  sub_10008B308();
  if (v14)
  {
    goto LABEL_11;
  }

  v28 = v5;
  v35 = 0;
  v16 = v33;
  v15 = v34;
  v17 = sub_10008B098();
  v18 = (2 * *(v17 + 16)) | 1;
  v37 = v17;
  v38 = v17 + 32;
  v39 = 0;
  v40 = v18;
  v19 = sub_10003F2F4();
  v13 = v11;
  if (v19 == 3 || v39 != v40 >> 1)
  {
    v21 = sub_10008AF08();
    swift_allocError();
    v23 = v22;
    sub_10002A958(&qword_1000D6868);
    *v23 = &type metadata for CRLUSDRendererExtensionShared.ExtensionError;
    sub_10008B008();
    sub_10008AEF8();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
LABEL_9:
    (*(v9 + 8))(v13, v8);
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (!v19)
  {
    v41 = 0;
    sub_10002E950();
    v25 = v35;
    sub_10008AFF8();
    if (!v25)
    {
      (*(v30 + 8))(v7, v28);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v19 == 1)
  {
    v41 = 1;
    sub_10002E8FC();
    v20 = v35;
    sub_10008AFF8();
    if (!v20)
    {
      (*(v31 + 8))(v4, v29);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
      goto LABEL_11;
    }

    (*(v9 + 8))(v11, v8);
    goto LABEL_10;
  }

  v41 = 2;
  sub_10002E8A8();
  v26 = v35;
  sub_10008AFF8();
  if (!v26)
  {
    v13 = sub_10008B038();
    (*(v32 + 8))(v16, v15);
  }

  (*(v9 + 8))(v11, v8);
  swift_unknownObjectRelease();
LABEL_11:
  sub_10002E85C(v36);
  return v13;
}

unint64_t sub_10002B7C4()
{
  result = qword_1000D6718;
  if (!qword_1000D6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6718);
  }

  return result;
}

unint64_t sub_10002B888()
{
  result = qword_1000D6738;
  if (!qword_1000D6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6738);
  }

  return result;
}

uint64_t sub_10002B8DC()
{
  v1 = sub_10002A958(&qword_1000D6730);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002B9AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_10002A958(&qword_1000D6730) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_100025F30(a1, a2, a3, v8, v9);
}

unint64_t sub_10002BA44()
{
  result = qword_1000D6750;
  if (!qword_1000D6750)
  {
    sub_10002AD9C(&qword_1000D6740);
    sub_10002BAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6750);
  }

  return result;
}

unint64_t sub_10002BAC8()
{
  result = qword_1000D6758;
  if (!qword_1000D6758)
  {
    sub_10002AD9C(&qword_1000D6748);
    sub_10002BB7C(&qword_1000D6760, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6758);
  }

  return result;
}

uint64_t sub_10002BB7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002BBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002A958(&qword_1000D6748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10002BC88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10002A958(&qword_1000D6770);

  sub_1000254BC(a1, a2, a3);
}

unint64_t sub_10002BD3C()
{
  result = qword_1000D6778;
  if (!qword_1000D6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6778);
  }

  return result;
}

uint64_t sub_10002BE00(uint64_t *a1)
{
  v2 = sub_10002A958(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10002BE84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002BEC4()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10002BFC0(uint64_t a1)
{
  sub_100089DA8();
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F13C;

  return sub_100028CDC(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_10002C144()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_10002AC1C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10002C254(uint64_t a1)
{
  v3 = *(sub_100089DA8() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[2];
  v6 = v1[4];
  v12 = v1[3];
  v7 = v1[5];
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_100028260(a1, v13, v12, v6, v7, v1 + v4, v8, v9);
}

unint64_t sub_10002C3CC()
{
  result = qword_1000D6788;
  if (!qword_1000D6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6788);
  }

  return result;
}

uint64_t sub_10002C494()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_10002AC1C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10002C590(uint64_t a1)
{
  v3 = *(sub_100089DA8() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + v5);
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002F13C;

  return sub_100027AA0(a1, v6, v7, v9, v10, v1 + v4, v8, v11);
}

uint64_t sub_10002C6EC()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10002C7DC(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));

  return _swift_deallocObject(v0, v5 + 56, v3 | 0xF);
}

uint64_t sub_10002C7DC(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 62 == 1)
  {

    return sub_10002C83C(result, a2, a3);
  }

  else if (!(a6 >> 62))
  {
  }

  return result;
}

uint64_t sub_10002C83C(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  if (a3 == 4)
  {
    return sub_10002C888(result, a2);
  }

  if (a3 == 5)
  {
  }

  return result;
}

uint64_t sub_10002C888(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10002C89C(uint64_t a1)
{
  v4 = *(sub_100089DA8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_1000296CC(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_10002C9C8(uint64_t a1, void (**a2)(void, void, void))
{
  sub_10002A958(&qword_1000D67D8);
  v4 = (__chkstk_darwin)();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = a1 + OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_renderer;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(v13 + 8);
    v17 = sub_10008AD08();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    sub_10008ACE8();
    _Block_copy(a2);

    swift_unknownObjectRetain();
    v18 = sub_10008ACD8();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = sub_10002E1AC;
    v19[5] = v12;
    v19[6] = v15;
    v19[7] = v16;
    sub_10004BA04(0, 0, v11, &unk_1000A5860, v19);

    return swift_unknownObjectRelease();
  }

  else
  {
    v21 = sub_100089DA8();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v8, 1, 1, v21);
    sub_10002D714();
    swift_allocError();
    *v23 = xmmword_1000A5430;
    sub_10002E1B4(v8, v6, &qword_1000D67D8);
    v24 = (*(v22 + 48))(v6, 1, v21);
    _Block_copy(a2);
    isa = 0;
    if (v24 != 1)
    {
      isa = sub_100089D68().super.isa;
      (*(v22 + 8))(v6, v21);
    }

    v26 = sub_100089BD8();
    (a2)[2](a2, isa, v26);

    sub_10002E21C(v8, &qword_1000D67D8);
  }
}

uint64_t sub_10002CD54(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[1] = a6;
  v14 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v14 - 8);
  v16 = v30 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = &a3[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_renderer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v30[0] = a8;
    v21 = a7;
    v22 = *(v18 + 1);
    v23 = sub_10008AD08();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    sub_10008ACE8();
    _Block_copy(a4);
    swift_unknownObjectRetain();
    v24 = a3;
    sub_10002AC70(a1, a2);

    v25 = sub_10008ACD8();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v20;
    v26[5] = v22;
    v26[6] = v24;
    v26[7] = a1;
    v26[8] = a2;
    v26[9] = v21;
    v26[10] = v17;
    sub_10004BA04(0, 0, v16, v30[0], v26);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10002D714();
    swift_allocError();
    *v28 = xmmword_1000A5430;
    _Block_copy(a4);
    v29 = sub_100089BD8();
    (a4)[2](a4, v29);
  }
}

uint64_t sub_10002CFBC(char *a1, void (**a2)(void, void, void, void), float a3)
{
  v6 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = &a1[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_renderer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(v10 + 1);
    v14 = sub_10008AD08();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_10008ACE8();
    _Block_copy(a2);
    swift_unknownObjectRetain();

    v15 = a1;
    v16 = sub_10008ACD8();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v12;
    *(v17 + 40) = v13;
    *(v17 + 48) = a3;
    *(v17 + 56) = sub_10002DB54;
    *(v17 + 64) = v9;
    *(v17 + 72) = v15;
    sub_10004BA04(0, 0, v8, &unk_1000A5818, v17);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10002D714();
    swift_allocError();
    *v19 = xmmword_1000A5430;
    _Block_copy(a2);
    v20 = sub_100089BD8();
    (a2)[2](a2, 0, 0, v20);
  }
}