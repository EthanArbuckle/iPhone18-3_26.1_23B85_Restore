@interface MusicTermsUpdateOperation
- (BOOL)_authenticateReturningError:(id *)error;
- (BOOL)_runRequestWithTermsCheckURL:(id)l allowingAuthentication:(BOOL)authentication returningError:(id *)error termsContentText:(id *)text hasAcceptedLatestTerms:(BOOL *)terms latestStoreTermsVersion:(unint64_t *)version;
- (BOOL)hasAcceptedLatestTerms;
- (MusicTermsUpdateOperation)initWithAcceptedStoreTermsVersion:(unint64_t)version termsContext:(id)context;
- (NSString)termsContentText;
- (id)error;
- (void)main;
@end

@implementation MusicTermsUpdateOperation

- (MusicTermsUpdateOperation)initWithAcceptedStoreTermsVersion:(unint64_t)version termsContext:(id)context
{
  contextCopy = context;
  v7 = [(MusicTermsUpdateOperation *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_acceptedStoreTermsVersion = version;
    v9 = [contextCopy copy];
    termsContext = v8->_termsContext;
    v8->_termsContext = v9;
  }

  return v8;
}

- (void)main
{
  v20 = 0;
  v19 = 0;
  if (![(MusicTermsUpdateOperation *)self isCancelled])
  {
    uRLBagDictionary = [(MusicTermsUpdateOperation *)self URLBagDictionary];
    v6 = [uRLBagDictionary objectForKey:@"sub-terms-check"];
    if ((_NSIsNSString() & 1) == 0)
    {
      v7 = [uRLBagDictionary objectForKey:@"terms-check"];

      if ((_NSIsNSString() & 1) == 0)
      {

        v6 = 0;
        goto LABEL_10;
      }

      v6 = v7;
    }

    if (v6)
    {
      v8 = [NSURL URLWithString:v6];
      if (v8)
      {
        v9 = v8;
        v18 = 0;
        v17 = 0;
        [(MusicTermsUpdateOperation *)self _runRequestWithTermsCheckURL:v8 allowingAuthentication:1 returningError:&v18 termsContentText:&v17 hasAcceptedLatestTerms:&v20 latestStoreTermsVersion:&v19];
        v3 = v18;
        v4 = v17;

LABEL_11:
        goto LABEL_12;
      }
    }

LABEL_10:
    v3 = SSError();
    v4 = 0;
    goto LABEL_11;
  }

  v3 = SSError();
  v4 = 0;
LABEL_12:
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __33__MusicTermsUpdateOperation_main__block_invoke;
  v12[3] = &unk_CEF310;
  v12[4] = self;
  v13 = v3;
  v16 = v20;
  v14 = v4;
  v15 = v19;
  v10 = v4;
  v11 = v3;
  [(MusicTermsUpdateOperation *)self dispatchAsync:v12];
}

void __33__MusicTermsUpdateOperation_main__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  *(*(a1 + 32) + 16) = *(a1 + 64);
  *(*(a1 + 32) + 24) = *(a1 + 56);
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 32);

  objc_storeStrong(v3, v2);
}

- (id)error
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __34__MusicTermsUpdateOperation_error__block_invoke;
  v4[3] = &unk_CEF288;
  v4[4] = self;
  v4[5] = &v5;
  [(MusicTermsUpdateOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)hasAcceptedLatestTerms
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __51__MusicTermsUpdateOperation_hasAcceptedLatestTerms__block_invoke;
  v4[3] = &unk_CEF288;
  v4[4] = self;
  v4[5] = &v5;
  [(MusicTermsUpdateOperation *)self dispatchSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSString)termsContentText
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __45__MusicTermsUpdateOperation_termsContentText__block_invoke;
  v4[3] = &unk_CEF288;
  v4[4] = self;
  v4[5] = &v5;
  [(MusicTermsUpdateOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)_authenticateReturningError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v4 = +[ICUserIdentity activeAccount];
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  v6 = (v25 + 5);
  obj = v25[5];
  v7 = [v5 DSIDForUserIdentity:v4 outError:&obj];
  objc_storeStrong(v6, obj);

  if (v7)
  {
    v8 = objc_alloc_init(AMSAuthenticateOptions);
    [v8 setAuthenticationType:0];
    v9 = [[AMSAuthenticateRequest alloc] initWithDSID:v7 altDSID:0 username:0 options:v8];
    v10 = dispatch_semaphore_create(0);
    v11 = +[UIApplication sharedApplication];
    keyWindow = [v11 keyWindow];
    rootViewController = [keyWindow rootViewController];

    v14 = [[AMSUIAuthenticateTask alloc] initWithRequest:v9 presentingViewController:rootViewController];
    performAuthentication = [v14 performAuthentication];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __57__MusicTermsUpdateOperation__authenticateReturningError___block_invoke;
    v20[3] = &unk_CEF338;
    v22 = &v24;
    v16 = v10;
    v21 = v16;
    [performAuthentication addFinishBlock:v20];

    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v17 = SSError();
    v8 = v25[5];
    v25[5] = v17;
  }

  if (error)
  {
    *error = v25[5];
  }

  v18 = v25[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v18;
}

void __57__MusicTermsUpdateOperation__authenticateReturningError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_runRequestWithTermsCheckURL:(id)l allowingAuthentication:(BOOL)authentication returningError:(id *)error termsContentText:(id *)text hasAcceptedLatestTerms:(BOOL *)terms latestStoreTermsVersion:(unint64_t *)version
{
  lCopy = l;
  v75[0] = 0;
  longLongValue = 0;
  v14 = [[NSMutableURLRequest alloc] initWithURL:lCopy];
  [v14 setHTTPMethod:@"POST"];
  v15 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v16 = v15;
  termsContext = self->_termsContext;
  if (termsContext)
  {
    [v15 setObject:termsContext forKey:@"context"];
  }

  if (self->_acceptedStoreTermsVersion)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:?];
    [v16 setObject:v18 forKey:@"accepted"];
  }

  errorCopy = error;
  textCopy = text;
  termsCopy = terms;
  if ([v16 count])
  {
    v19 = [NSJSONSerialization dataWithJSONObject:v16 options:0 error:0];
  }

  else
  {
    v19 = 0;
  }

  [v14 setHTTPBody:v19];
  v20 = [(MusicTermsUpdateOperation *)self newLoadURLOperationWithRequest:v14];
  v21 = +[SSVURLProtocolConsumer consumer];
  [v20 setDataConsumer:v21];

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__0;
  v72 = __Block_byref_object_dispose__0;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__0;
  v66 = __Block_byref_object_dispose__0;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  objc_initWeak(&location, v20);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = __160__MusicTermsUpdateOperation__runRequestWithTermsCheckURL_allowingAuthentication_returningError_termsContentText_hasAcceptedLatestTerms_latestStoreTermsVersion___block_invoke;
  v55[3] = &unk_CEF360;
  v55[4] = &v68;
  v55[5] = &v62;
  objc_copyWeak(&v56, &location);
  v55[6] = &v58;
  [v20 setOutputBlock:v55];
  [(MusicTermsUpdateOperation *)self runChildOperation:v20];
  versionCopy = version;
  v23 = v59[3];
  if (!v23)
  {
    userInfo = [0 userInfo];
    v25 = [userInfo objectForKey:SSErrorHTTPStatusCodeKey];
    integerValue = [v25 integerValue];
    v59[3] = integerValue;

    v23 = v59[3];
  }

  if (v23 != 401)
  {
    v33 = v63[5];
    if (v33)
    {
      v34 = v33;
LABEL_30:
      v31 = v34;
      v32 = 0;
      goto LABEL_31;
    }

    if (!_NSIsNSDictionary())
    {
      v34 = SSError();
      goto LABEL_30;
    }

    v35 = [v69[5] objectForKey:@"status"];
    if (objc_opt_respondsToSelector())
    {
      integerValue2 = [v35 integerValue];
      if (integerValue2 == "b" || integerValue2 == "ary/PrivateFrameworks/CarKit.framework/CarKit")
      {
        v51 = 0;
        v42 = [(MusicTermsUpdateOperation *)self _authenticateReturningError:&v51];
        v43 = v51;
        v44 = v43;
        if (v43)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42;
        }

        if (v45 == 1)
        {
          v49 = 0;
          v50 = 0;
          [(MusicTermsUpdateOperation *)self _runRequestWithTermsCheckURL:lCopy allowingAuthentication:0 returningError:&v50 termsContentText:&v49 hasAcceptedLatestTerms:v75 latestStoreTermsVersion:&longLongValue];
          v31 = v50;
          v32 = v49;
        }

        else
        {
          v31 = v43;
          v32 = 0;
        }

LABEL_51:

        goto LABEL_52;
      }

      if (!integerValue2)
      {
        v37 = [v69[5] objectForKey:@"isCurrent"];
        if (objc_opt_respondsToSelector())
        {
          v75[0] = [v37 BOOLValue];
        }

        v38 = [v69[5] objectForKey:@"termsContentText"];

        if (_NSIsNSString())
        {
          v32 = v38;
        }

        else
        {
          v32 = 0;
        }

        v44 = [v69[5] objectForKey:@"latestTermsVersionId"];

        v31 = 0;
        if (objc_opt_respondsToSelector())
        {
          longLongValue = [v44 longLongValue];
        }

        goto LABEL_51;
      }
    }

    v31 = SSError();
    v32 = 0;
LABEL_52:

    goto LABEL_31;
  }

  v54 = 0;
  v27 = [(MusicTermsUpdateOperation *)self _authenticateReturningError:&v54];
  v28 = v54;
  v29 = v28;
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  if (v30 == 1)
  {
    v52 = 0;
    v53 = 0;
    [(MusicTermsUpdateOperation *)self _runRequestWithTermsCheckURL:lCopy allowingAuthentication:0 returningError:&v53 termsContentText:&v52 hasAcceptedLatestTerms:v75 latestStoreTermsVersion:&longLongValue];
    v31 = v53;
    v32 = v52;
  }

  else
  {
    v31 = v28;
    v32 = 0;
  }

LABEL_31:
  if (errorCopy)
  {
    v39 = v31;
    *errorCopy = v31;
  }

  if (textCopy)
  {
    v40 = v32;
    *textCopy = v32;
  }

  if (termsCopy)
  {
    *termsCopy = v75[0];
  }

  if (versionCopy)
  {
    *versionCopy = longLongValue;
  }

  objc_destroyWeak(&v56);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  return v31 == 0;
}

void __160__MusicTermsUpdateOperation__runRequestWithTermsCheckURL_allowingAuthentication_returningError_termsContentText_hasAcceptedLatestTerms_latestStoreTermsVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13 = [WeakRetained URLResponse];
  *(*(*(a1 + 48) + 8) + 24) = [v13 statusCode];
}

@end