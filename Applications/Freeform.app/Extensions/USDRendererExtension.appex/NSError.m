@interface NSError
+ (id)crl_errorWithCode:(int64_t)a3 userInfo:(id)a4;
+ (id)crl_errorWithDomain:(id)a3 code:(int64_t)a4 alertTitle:(id)a5 alertMessage:(id)a6 userInfo:(id)a7;
+ (id)crl_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 recoverySuggestion:(id)a6;
+ (id)crl_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 underlyingError:(id)a6;
+ (id)crl_errorWithError:(id)a3 alertTitle:(id)a4 alertMessage:(id)a5 additionalUserInfo:(id)a6;
- (BOOL)crl_isErrorPassingTest:(id)a3;
- (id)crl_errorPreservingAlertTitle;
- (id)crl_errorPreservingCancel;
- (id)crl_localizedAlertMessage;
- (id)crl_localizedAlertTitle;
- (void)crl_enumerateErrorUsingBlock:(id)a3;
@end

@implementation NSError

+ (id)crl_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 recoverySuggestion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v14 = v13;
  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v12)
  {
    [v14 setObject:v12 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v15 = [a1 errorWithDomain:v10 code:a4 userInfo:v14];

  return v15;
}

+ (id)crl_errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  if (a3 >= 3)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_100088E2C();
    }

    v8 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100088E40(v7, v8);
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_100088EEC();
    }

    v9 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100088F14(v9, v7);
    }

    v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSError(CRLAdditions) crl_errorWithCode:userInfo:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSError_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:40 isFatal:0 description:"Bad error code"];
  }

  v12 = [a1 errorWithDomain:@"com.apple.freeform" code:a3 userInfo:v6];

  return v12;
}

+ (id)crl_errorWithDomain:(id)a3 code:(int64_t)a4 alertTitle:(id)a5 alertMessage:(id)a6 userInfo:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v15, "count") + 4}];
  v17 = v16;
  if (v15)
  {
    [v16 addEntriesFromDictionary:v15];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:NSLocalizedDescriptionKey];
    [v17 setObject:v13 forKeyedSubscript:@"CRLLocalizedErrorAlertTitle"];
  }

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    [v17 setObject:v14 forKeyedSubscript:@"CRLLocalizedErrorAlertMessage"];
    [v17 setObject:v14 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  }

  v18 = [a1 errorWithDomain:v12 code:a4 userInfo:v17];

  return v18;
}

+ (id)crl_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 underlyingError:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  [v13 setObject:v12 forKeyedSubscript:NSLocalizedDescriptionKey];

  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v14 = [a1 errorWithDomain:v10 code:a4 userInfo:v13];

  return v14;
}

+ (id)crl_errorWithError:(id)a3 alertTitle:(id)a4 alertMessage:(id)a5 additionalUserInfo:(id)a6
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = [v13 userInfo];
    v15 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count") + objc_msgSend(v14, "count") + 1}];
    v16 = v15;
    if (v14)
    {
      [v15 addEntriesFromDictionary:v14];
    }

    if (v10)
    {
      [v16 addEntriesFromDictionary:v10];
    }

    [v16 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
    v17 = [v13 domain];
    v18 = [v13 code];

    v19 = [a1 crl_errorWithDomain:v17 code:v18 alertTitle:v12 alertMessage:v11 userInfo:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)crl_errorPreservingAlertTitle
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v3 objectForKeyedSubscript:@"CRLLocalizedErrorAlertTitle"];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:v4])
  {

LABEL_5:
    v7 = self;
    goto LABEL_6;
  }

  v9 = [v3 mutableCopy];
  [v9 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];
  v10 = objc_opt_class();
  v11 = [(NSError *)self domain];
  v7 = [v10 errorWithDomain:v11 code:-[NSError code](self userInfo:{"code"), v9}];

LABEL_6:

  return v7;
}

- (id)crl_errorPreservingCancel
{
  v2 = self;
  if ([(NSError *)v2 crl_isCancelError])
  {
    if ([(NSError *)v2 code]== 3072)
    {
      v3 = [(NSError *)v2 domain];
      v4 = NSCocoaErrorDomain;
      v5 = [v3 isEqualToString:NSCocoaErrorDomain];

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = NSCocoaErrorDomain;
    }

    v6 = objc_opt_class();
    v10 = NSUnderlyingErrorKey;
    v11 = v2;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:v4 code:3072 userInfo:v7];

    v2 = v8;
  }

LABEL_7:

  return v2;
}

- (id)crl_localizedAlertTitle
{
  v2 = [(NSError *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"CRLLocalizedErrorAlertTitle"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  }

  v6 = v5;

  return v6;
}

- (id)crl_localizedAlertMessage
{
  v2 = [(NSError *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"CRLLocalizedErrorAlertMessage"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v6 = v5;

  return v6;
}

- (void)crl_enumerateErrorUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    v12 = 0;
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = [(NSError *)v6 userInfo];
        v8 = [(NSError *)v6 domain];
        v4[2](v4, v8, [(NSError *)v6 code], v7, &v12);

        v9 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];
        v10 = v9;
        if (v9 != v6)
        {
          v11 = v9;

          v6 = v11;
        }
      }

      while (v6 && (v12 & 1) == 0);
    }
  }
}

- (BOOL)crl_isErrorPassingTest:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100014674;
    v8[3] = &unk_1000C3180;
    v9 = v4;
    v10 = &v11;
    [(NSError *)self crl_enumerateErrorUsingBlock:v8];

    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

@end