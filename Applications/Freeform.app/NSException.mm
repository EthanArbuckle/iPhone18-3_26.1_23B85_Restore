@interface NSException
+ (BOOL)crl_catchExceptionsInBlock:(id)block error:(id *)error;
+ (void)crl_raiseWithError:(id)error;
- (id)crl_error;
@end

@implementation NSException

+ (void)crl_raiseWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
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

  localizedFailureReason = [errorCopy localizedFailureReason];
  v10 = localizedFailureReason;
  if (localizedFailureReason)
  {
    v11 = localizedFailureReason;
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
    v13 = localizedDescription;
    v14 = @"NSError exception";
    if (localizedDescription)
    {
      v14 = localizedDescription;
    }

    v11 = v14;
  }

  v17 = @"CRLErrorExceptionUserInfoKey";
  v18 = errorCopy;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v16 = [NSException exceptionWithName:@"CRLErrorException" reason:v11 userInfo:v15];

  [v16 raise];
}

- (id)crl_error
{
  userInfo = [(NSException *)self userInfo];
  v3 = [userInfo objectForKey:@"CRLErrorExceptionUserInfoKey"];

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

+ (BOOL)crl_catchExceptionsInBlock:(id)block error:(id *)error
{
  blockCopy = block;
  blockCopy[2]();

  return 1;
}

@end