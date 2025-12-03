@interface NSError
+ (id)crl_errorWithCode:(int64_t)code userInfo:(id)info;
+ (id)crl_errorWithDomain:(id)domain code:(int64_t)code alertTitle:(id)title alertMessage:(id)message userInfo:(id)info;
+ (id)crl_errorWithDomain:(id)domain code:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion;
+ (id)crl_errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlyingError:(id)error;
+ (id)crl_errorWithError:(id)error alertTitle:(id)title alertMessage:(id)message additionalUserInfo:(id)info;
- (BOOL)crl_isErrorPassingTest:(id)test;
- (id)crl_errorPreservingAlertTitle;
- (id)crl_errorPreservingCancel;
- (id)crl_localizedAlertMessage;
- (id)crl_localizedAlertTitle;
- (void)crl_enumerateErrorUsingBlock:(id)block;
@end

@implementation NSError

+ (id)crl_errorWithDomain:(id)domain code:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion
{
  domainCopy = domain;
  descriptionCopy = description;
  suggestionCopy = suggestion;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v14 = v13;
  if (descriptionCopy)
  {
    [v13 setObject:descriptionCopy forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (suggestionCopy)
  {
    [v14 setObject:suggestionCopy forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v15 = [self errorWithDomain:domainCopy code:code userInfo:v14];

  return v15;
}

+ (id)crl_errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  if (code >= 3)
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

  v12 = [self errorWithDomain:@"com.apple.freeform" code:code userInfo:infoCopy];

  return v12;
}

+ (id)crl_errorWithDomain:(id)domain code:(int64_t)code alertTitle:(id)title alertMessage:(id)message userInfo:(id)info
{
  domainCopy = domain;
  titleCopy = title;
  messageCopy = message;
  infoCopy = info;
  v16 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(infoCopy, "count") + 4}];
  v17 = v16;
  if (infoCopy)
  {
    [v16 addEntriesFromDictionary:infoCopy];
  }

  if (titleCopy)
  {
    [v17 setObject:titleCopy forKeyedSubscript:NSLocalizedDescriptionKey];
    [v17 setObject:titleCopy forKeyedSubscript:@"CRLLocalizedErrorAlertTitle"];
  }

  if (messageCopy)
  {
    [v17 setObject:messageCopy forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    [v17 setObject:messageCopy forKeyedSubscript:@"CRLLocalizedErrorAlertMessage"];
    [v17 setObject:messageCopy forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  }

  v18 = [self errorWithDomain:domainCopy code:code userInfo:v17];

  return v18;
}

+ (id)crl_errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlyingError:(id)error
{
  domainCopy = domain;
  errorCopy = error;
  descriptionCopy = description;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  [v13 setObject:descriptionCopy forKeyedSubscript:NSLocalizedDescriptionKey];

  if (errorCopy)
  {
    [v13 setObject:errorCopy forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v14 = [self errorWithDomain:domainCopy code:code userInfo:v13];

  return v14;
}

+ (id)crl_errorWithError:(id)error alertTitle:(id)title alertMessage:(id)message additionalUserInfo:(id)info
{
  infoCopy = info;
  if (error)
  {
    messageCopy = message;
    titleCopy = title;
    errorCopy = error;
    userInfo = [errorCopy userInfo];
    v15 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(infoCopy, "count") + objc_msgSend(userInfo, "count") + 1}];
    v16 = v15;
    if (userInfo)
    {
      [v15 addEntriesFromDictionary:userInfo];
    }

    if (infoCopy)
    {
      [v16 addEntriesFromDictionary:infoCopy];
    }

    [v16 setObject:errorCopy forKeyedSubscript:NSUnderlyingErrorKey];
    domain = [errorCopy domain];
    code = [errorCopy code];

    v19 = [self crl_errorWithDomain:domain code:code alertTitle:titleCopy alertMessage:messageCopy userInfo:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)crl_errorPreservingAlertTitle
{
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [userInfo objectForKeyedSubscript:@"CRLLocalizedErrorAlertTitle"];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:v4])
  {

LABEL_5:
    selfCopy = self;
    goto LABEL_6;
  }

  v9 = [userInfo mutableCopy];
  [v9 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];
  v10 = objc_opt_class();
  domain = [(NSError *)self domain];
  selfCopy = [v10 errorWithDomain:domain code:-[NSError code](self userInfo:{"code"), v9}];

LABEL_6:

  return selfCopy;
}

- (id)crl_errorPreservingCancel
{
  selfCopy = self;
  if ([(NSError *)selfCopy crl_isCancelError])
  {
    if ([(NSError *)selfCopy code]== 3072)
    {
      domain = [(NSError *)selfCopy domain];
      v4 = NSCocoaErrorDomain;
      v5 = [domain isEqualToString:NSCocoaErrorDomain];

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
    v11 = selfCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:v4 code:3072 userInfo:v7];

    selfCopy = v8;
  }

LABEL_7:

  return selfCopy;
}

- (id)crl_localizedAlertTitle
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"CRLLocalizedErrorAlertTitle"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
  }

  v6 = v5;

  return v6;
}

- (id)crl_localizedAlertMessage
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"CRLLocalizedErrorAlertMessage"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [userInfo objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v6 = v5;

  return v6;
}

- (void)crl_enumerateErrorUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    selfCopy = self;
    v12 = 0;
    if (selfCopy)
    {
      v6 = selfCopy;
      do
      {
        userInfo = [(NSError *)v6 userInfo];
        domain = [(NSError *)v6 domain];
        blockCopy[2](blockCopy, domain, [(NSError *)v6 code], userInfo, &v12);

        v9 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
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

- (BOOL)crl_isErrorPassingTest:(id)test
{
  testCopy = test;
  v5 = testCopy;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (testCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100014674;
    v8[3] = &unk_1000C3180;
    v9 = testCopy;
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