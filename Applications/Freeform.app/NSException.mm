@interface NSException
+ (BOOL)crl_catchExceptionsInBlock:(id)a3 error:(id *)a4;
+ (void)crl_raiseWithError:(id)a3;
- (id)crl_error;
@end

@implementation NSException

+ (void)crl_raiseWithError:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131BF6C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131BF80(v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C03C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSException(CRLAdditions) crl_raiseWithError:]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSException_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:14 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "error != nil"];
  }

  v9 = [v3 localizedFailureReason];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v3 localizedDescription];
    v13 = v12;
    v14 = @"NSError exception";
    if (v12)
    {
      v14 = v12;
    }

    v11 = v14;
  }

  v17 = @"CRLErrorExceptionUserInfoKey";
  v18 = v3;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v16 = [NSException exceptionWithName:@"CRLErrorException" reason:v11 userInfo:v15];

  [v16 raise];
}

- (id)crl_error
{
  v2 = [(NSException *)self userInfo];
  v3 = [v2 objectForKey:@"CRLErrorExceptionUserInfoKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    if (v3)
    {
      v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131C064();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131C078(v3, v5, v6);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131C134();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v7);
      }

      v8 = [NSString stringWithUTF8String:"[NSException(CRLAdditions) crl_error]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSException_CRLAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:28 isFatal:0 description:"Unexpected NSException value for CRLErrorExceptionUserInfoKey: %@", v3];
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)crl_catchExceptionsInBlock:(id)a3 error:(id *)a4
{
  v4 = a3;
  v4[2]();

  return 1;
}

@end