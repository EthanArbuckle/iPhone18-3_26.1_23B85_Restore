@interface CRLWPStorageStyleProvider
- (id)characterStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)dropCapStyleAtParIndex:(unint64_t)a3;
- (id)listStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
@end

@implementation CRLWPStorageStyleProvider

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    sub_10139CA80();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10139CA94();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10139CB1C();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLWPStorageStyleProvider paragraphStyleAtParIndex:effectiveRange:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorageStyleProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:20 isFatal:0 description:"Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation."];

  return 0;
}

- (id)characterStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    sub_10139CB44();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10139CB58();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10139CBE0();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLWPStorageStyleProvider characterStyleAtCharIndex:effectiveRange:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorageStyleProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:25 isFatal:0 description:"Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation."];

  return 0;
}

- (id)listStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    sub_10139CC08();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10139CC1C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10139CCA4();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLWPStorageStyleProvider listStyleAtParIndex:effectiveRange:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorageStyleProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:30 isFatal:0 description:"Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation."];

  return 0;
}

- (id)dropCapStyleAtParIndex:(unint64_t)a3
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10139CCCC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10139CCE0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10139CD68();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLWPStorageStyleProvider dropCapStyleAtParIndex:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorageStyleProvider.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:35 isFatal:0 description:"Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation."];

  return 0;
}

@end