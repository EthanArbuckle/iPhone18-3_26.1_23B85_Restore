@interface FigPWDKeyExchangeSenderServerHelperProd
+ (int)InitializeAMS;
- (FigPWDKeyExchangeSenderServerHelperProd)init;
- (int)requestCertURL;
- (int)requestEndpointURL;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dealloc;
- (void)requestCertDataFromServer:(id)server;
- (void)requestKeyDataFromServer:(id)server completionHandler:(id)handler;
@end

@implementation FigPWDKeyExchangeSenderServerHelperProd

+ (int)InitializeAMS
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = dispatch_semaphore_create(0);
  if (!sPWDKeyExchangeTelemetryHelper)
  {
    sPWDKeyExchangeTelemetryHelper = objc_alloc_init(FigPWDKeyExchangeSenderTelementryHelper);
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v4 = [getAMSBagClass() bagForProfile:@"PWDMedia" profileVersion:@"1"];
  v5 = [objc_msgSend(v4 stringForKey:{@"aocp-license-url", "valuePromise"}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__FigPWDKeyExchangeSenderServerHelperProd_InitializeAMS__block_invoke;
  v14[3] = &unk_1E7492208;
  v14[5] = &v19;
  v14[6] = &v15;
  v14[4] = v2;
  [v5 resultWithTimeout:v14 completion:3.0];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *(v16 + 6);
  if (v6)
  {
    [sPWDKeyExchangeTelemetryHelper setResultCode:v6 forKey:*MEMORY[0x1E6960EC0]];
    v7 = 0;
  }

  else
  {
    v7 = FigGetUpTimeNanoseconds();
    [sPWDKeyExchangeTelemetryHelper setTimeRange:UpTimeNanoseconds end:v7 forKey:*MEMORY[0x1E6960EC8]];
  }

  if (*(v16 + 6) || !v20[5])
  {
    v8 = 0;
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3052000000;
    v29 = __Block_byref_object_copy__11;
    v11 = getAMSFairPlayDeviceIdentityProviderClass_softClass;
    v30 = __Block_byref_object_dispose__11;
    v31 = getAMSFairPlayDeviceIdentityProviderClass_softClass;
    if (!getAMSFairPlayDeviceIdentityProviderClass_softClass)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __getAMSFairPlayDeviceIdentityProviderClass_block_invoke;
      v25[3] = &unk_1E7486A28;
      v25[4] = &v26;
      __getAMSFairPlayDeviceIdentityProviderClass_block_invoke(v25);
      v11 = v27[5];
    }

    _Block_object_dispose(&v26, 8);
    v12 = v20[5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__FigPWDKeyExchangeSenderServerHelperProd_InitializeAMS__block_invoke_2;
    v13[3] = &unk_1E7492230;
    v13[4] = v2;
    v13[5] = &v15;
    [v11 initializeSessionWithBag:v4 url:v12 buyParams:0 completionHandler:v13];
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    v8 = *(v16 + 6);
    if (!v8)
    {
      [sPWDKeyExchangeTelemetryHelper setTimeRange:v7 end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960ED8]];
      goto LABEL_9;
    }
  }

  [sPWDKeyExchangeTelemetryHelper setResultCode:v8 forKey:*MEMORY[0x1E6960ED0]];
LABEL_9:
  dispatch_release(v2);

  v9 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v9;
}

intptr_t __56__FigPWDKeyExchangeSenderServerHelperProd_InitializeAMS__block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    *(*(a1[5] + 8) + 40) = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a2];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = [a3 code];
  }

  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

intptr_t __56__FigPWDKeyExchangeSenderServerHelperProd_InitializeAMS__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (FigPWDKeyExchangeSenderServerHelperProd)init
{
  v10.receiver = self;
  v10.super_class = FigPWDKeyExchangeSenderServerHelperProd;
  v2 = [(FigPWDKeyExchangeSenderServerHelperProd *)&v10 init];
  if (v2)
  {
    v3 = [getAMSBagClass() bagForProfile:@"PWDMedia" profileVersion:@"1"];
    v2->_pwdBag = v3;
    v4 = v3;
    v2->_opQueue = objc_alloc_init(MEMORY[0x1E696ADC8]);
    defaultSessionConfiguration = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__11;
    v6 = getAMSURLSessionClass_softClass;
    v20 = __Block_byref_object_dispose__11;
    v21 = getAMSURLSessionClass_softClass;
    if (!getAMSURLSessionClass_softClass)
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __getAMSURLSessionClass_block_invoke;
      v14 = &unk_1E7486A28;
      v15 = &v16;
      __getAMSURLSessionClass_block_invoke(&v11);
      v6 = v17[5];
    }

    _Block_object_dispose(&v16, 8);
    v2->_urlSession = [[v6 alloc] initWithConfiguration:defaultSessionConfiguration delegate:v2 delegateQueue:v2->_opQueue];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__11;
    v7 = getAMSURLRequestEncoderClass_softClass;
    v20 = __Block_byref_object_dispose__11;
    v21 = getAMSURLRequestEncoderClass_softClass;
    if (!getAMSURLRequestEncoderClass_softClass)
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __getAMSURLRequestEncoderClass_block_invoke;
      v14 = &unk_1E7486A28;
      v15 = &v16;
      __getAMSURLRequestEncoderClass_block_invoke(&v11);
      v7 = v17[5];
    }

    _Block_object_dispose(&v16, 8);
    v8 = [[v7 alloc] initWithBag:v2->_pwdBag];
    v2->_requestEncoder = v8;
    [(AMSURLRequestEncoder *)v8 setRequestEncoding:3];
    [(AMSURLRequestEncoder *)v2->_requestEncoder setAccount:0];
    [(AMSURLRequestEncoder *)v2->_requestEncoder setDialogOptions:1];
    v2->_endpointURL = 0;
    v2->_certURL = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigPWDKeyExchangeSenderServerHelperProd;
  [(FigPWDKeyExchangeSenderServerHelperProd *)&v3 dealloc];
}

- (int)requestCertURL
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!self->_certURL)
  {
    v3 = dispatch_semaphore_create(0);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v5 = [-[AMSBag stringForKey:](self->_pwdBag stringForKey:{@"fps-cert", "valuePromise"}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__FigPWDKeyExchangeSenderServerHelperProd_requestCertURL__block_invoke;
    v9[3] = &unk_1E7492258;
    v9[5] = v3;
    v9[6] = &v10;
    v9[4] = self;
    [v5 resultWithTimeout:v9 completion:3.0];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    v6 = *(v11 + 6);
    if (v6)
    {
      [sPWDKeyExchangeTelemetryHelper setResultCode:v6 forKey:*MEMORY[0x1E6960E98]];
    }

    else
    {
      [sPWDKeyExchangeTelemetryHelper setTimeRange:UpTimeNanoseconds end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960EA0]];
    }
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

intptr_t __57__FigPWDKeyExchangeSenderServerHelperProd_requestCertURL__block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    *(a1[4] + 48) = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a2];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = [a3 code];
  }

  v4 = a1[5];

  return dispatch_semaphore_signal(v4);
}

- (int)requestEndpointURL
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!self->_endpointURL)
  {
    v3 = dispatch_semaphore_create(0);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v5 = [-[AMSBag stringForKey:](self->_pwdBag stringForKey:{@"aocp-license-url", "valuePromise"}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__FigPWDKeyExchangeSenderServerHelperProd_requestEndpointURL__block_invoke;
    v9[3] = &unk_1E7492258;
    v9[5] = v3;
    v9[6] = &v10;
    v9[4] = self;
    [v5 resultWithTimeout:v9 completion:3.0];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    v6 = *(v11 + 6);
    if (v6)
    {
      [sPWDKeyExchangeTelemetryHelper setResultCode:v6 forKey:*MEMORY[0x1E6960EB0]];
    }

    else
    {
      [sPWDKeyExchangeTelemetryHelper setTimeRange:UpTimeNanoseconds end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960EB8]];
    }
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

intptr_t __61__FigPWDKeyExchangeSenderServerHelperProd_requestEndpointURL__block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    *(a1[4] + 40) = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a2];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = [a3 code];
  }

  v4 = a1[5];

  return dispatch_semaphore_signal(v4);
}

- (void)requestCertDataFromServer:(id)server
{
  if (!self->_certURL)
  {
    [(FigPWDKeyExchangeSenderServerHelperProd *)self requestCertURL];
  }

  v5 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:self->_certURL cachePolicy:1 timeoutInterval:3.0];
  v6 = [(AMSURLSession *)self->_urlSession dataTaskPromiseWithRequest:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__FigPWDKeyExchangeSenderServerHelperProd_requestCertDataFromServer___block_invoke;
  v7[3] = &unk_1E7492280;
  v7[4] = server;
  [v6 resultWithCompletion:v7];
}

void __69__FigPWDKeyExchangeSenderServerHelperProd_requestCertDataFromServer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))(*(a1 + 32), [a2 data], a3);

  objc_autoreleasePoolPop(v6);
}

- (void)requestKeyDataFromServer:(id)server completionHandler:(id)handler
{
  if (!self->_endpointURL)
  {
    [(FigPWDKeyExchangeSenderServerHelperProd *)self requestEndpointURL];
  }

  v7 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:self->_endpointURL cachePolicy:1 timeoutInterval:3.0];
  [v7 setHTTPMethod:@"POST"];
  [v7 setHTTPBody:server];
  v8 = [(AMSURLRequestEncoder *)self->_requestEncoder requestByEncodingRequest:v7 parameters:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__FigPWDKeyExchangeSenderServerHelperProd_requestKeyDataFromServer_completionHandler___block_invoke;
  v9[3] = &unk_1E74922A8;
  v9[4] = self;
  v9[5] = handler;
  [v8 resultWithCompletion:v9];
}

void __86__FigPWDKeyExchangeSenderServerHelperProd_requestKeyDataFromServer_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a2 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) dataTaskPromiseWithRequest:a2];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__FigPWDKeyExchangeSenderServerHelperProd_requestKeyDataFromServer_completionHandler___block_invoke_2;
    v8[3] = &unk_1E7492280;
    v8[4] = *(a1 + 40);
    [v7 resultWithCompletion:v8];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __86__FigPWDKeyExchangeSenderServerHelperProd_requestKeyDataFromServer_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 data];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v6 = objc_autoreleasePoolPush();
  (*(handler + 2))(handler, 1, 0);

  objc_autoreleasePoolPop(v6);
}

@end