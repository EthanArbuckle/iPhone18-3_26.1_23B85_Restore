@interface AMSSigningSecurityService
+ (AMSSigningSecurityService)sharedService;
- (AMSSigningSecurityService)init;
- (AMSSigningSecurityService)initWithServiceBroker:(id)a3;
- (id)_defaultSecurityServiceWithDelegate:(id)a3;
- (id)_handleResponse:(id)a3 bag:(id)a4 securityServicePromise:(id)a5 onDenied:(id)a6;
- (id)_headersForRequest:(id)a3 buyParams:(id)a4 securityServicePromise:(id)a5 onDenied:(id)a6;
- (id)handleResponse:(id)a3 bag:(id)a4;
- (id)headersForRequest:(id)a3 buyParams:(id)a4 bag:(id)a5;
- (id)signatureForRequest:(id)a3;
- (void)_handleSecurityServicePromise:(id)a3 onConnected:(id)a4 onDenied:(id)a5 onError:(id)a6;
@end

@implementation AMSSigningSecurityService

- (AMSSigningSecurityService)init
{
  v3 = objc_opt_new();
  v4 = [(AMSSigningSecurityService *)self initWithServiceBroker:v3];

  return v4;
}

- (AMSSigningSecurityService)initWithServiceBroker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSSigningSecurityService;
  v6 = [(AMSSigningSecurityService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceBroker, a3);
  }

  return v7;
}

+ (AMSSigningSecurityService)sharedService
{
  if (_MergedGlobals_146 != -1)
  {
    dispatch_once(&_MergedGlobals_146, &__block_literal_global_129);
  }

  v3 = qword_1ED6E30E8;

  return v3;
}

uint64_t __42__AMSSigningSecurityService_sharedService__block_invoke()
{
  qword_1ED6E30E8 = objc_alloc_init(AMSSigningSecurityService);

  return MEMORY[0x1EEE66BB8]();
}

- (id)handleResponse:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSSigningSecurityService *)self serviceBroker];
  v9 = [v8 securityServiceProxyWithDelegate:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__AMSSigningSecurityService_handleResponse_bag___block_invoke;
  v14[3] = &unk_1E73B6AA8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [(AMSSigningSecurityService *)self _handleResponse:v11 bag:v10 securityServicePromise:v9 onDenied:v14];

  return v12;
}

id __48__AMSSigningSecurityService_handleResponse_bag___block_invoke(uint64_t a1)
{
  v1 = [AMSAbsinthe handleResponse:*(a1 + 32) bag:*(a1 + 40)];
  v2 = [AMSPromise promiseFinishedWithDefaultErrorOrResult:v1];

  return v2;
}

- (id)headersForRequest:(id)a3 buyParams:(id)a4 bag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AMSSigningSecurityService *)self serviceBroker];
  v12 = [v11 securityServiceProxyWithDelegate:0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__AMSSigningSecurityService_headersForRequest_buyParams_bag___block_invoke;
  v18[3] = &unk_1E73B5860;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = [(AMSSigningSecurityService *)self _headersForRequest:v15 buyParams:v14 securityServicePromise:v12 onDenied:v18];

  return v16;
}

- (id)signatureForRequest:(id)a3
{
  v4 = a3;
  v5 = [(AMSSigningSecurityService *)self serviceBroker];
  v6 = [(AMSSigningSecurityService *)self serviceBroker];
  v7 = [v6 securityServiceProxyWithDelegate:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AMSSigningSecurityService_signatureForRequest___block_invoke;
  v11[3] = &unk_1E73BBE10;
  v12 = v4;
  v8 = v4;
  v9 = [v5 callService:v7 then:v11];

  return v9;
}

AMSPromise *__49__AMSSigningSecurityService_signatureForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSPromise);
  v5 = *(a1 + 32);
  v6 = [(AMSPromise *)v4 completionHandlerAdapter];
  [v3 signChallengeForRequest:v5 completion:v6];

  return v4;
}

- (id)_handleResponse:(id)a3 bag:(id)a4 securityServicePromise:(id)a5 onDenied:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __81__AMSSigningSecurityService__handleResponse_bag_securityServicePromise_onDenied___block_invoke;
  v24[3] = &unk_1E73BBE38;
  v25 = v9;
  v26 = v12;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__AMSSigningSecurityService__handleResponse_bag_securityServicePromise_onDenied___block_invoke_3;
  v21[3] = &unk_1E73B36D0;
  v22 = v26;
  v23 = v10;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__AMSSigningSecurityService__handleResponse_bag_securityServicePromise_onDenied___block_invoke_4;
  v19[3] = &unk_1E73B34B8;
  v13 = v22;
  v20 = v13;
  v14 = v10;
  v15 = v9;
  [(AMSSigningSecurityService *)self _handleSecurityServicePromise:v11 onConnected:v24 onDenied:v21 onError:v19];

  v16 = v20;
  v17 = v13;

  return v13;
}

void __81__AMSSigningSecurityService__handleResponse_bag_securityServicePromise_onDenied___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__AMSSigningSecurityService__handleResponse_bag_securityServicePromise_onDenied___block_invoke_2;
  v4[3] = &unk_1E73B7C48;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 handleResponse:v3 completion:v4];
}

void __81__AMSSigningSecurityService__handleResponse_bag_securityServicePromise_onDenied___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [AMSPromise promiseFinishedWithDefaultErrorOrResult:a2];
  [v2 finishWithPromise:v3];
}

void __81__AMSSigningSecurityService__handleResponse_bag_securityServicePromise_onDenied___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 finishWithPromise:v2];
}

- (id)_headersForRequest:(id)a3 buyParams:(id)a4 securityServicePromise:(id)a5 onDenied:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = objc_opt_new();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __90__AMSSigningSecurityService__headersForRequest_buyParams_securityServicePromise_onDenied___block_invoke;
  v27[3] = &unk_1E73BBE60;
  v28 = v10;
  v29 = v11;
  v30 = v14;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__AMSSigningSecurityService__headersForRequest_buyParams_securityServicePromise_onDenied___block_invoke_3;
  v24[3] = &unk_1E73B36D0;
  v25 = v30;
  v26 = v12;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__AMSSigningSecurityService__headersForRequest_buyParams_securityServicePromise_onDenied___block_invoke_4;
  v22[3] = &unk_1E73B34B8;
  v15 = v25;
  v23 = v15;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(AMSSigningSecurityService *)self _handleSecurityServicePromise:v13 onConnected:v27 onDenied:v24 onError:v22];

  v19 = v23;
  v20 = v15;

  return v15;
}

void __90__AMSSigningSecurityService__headersForRequest_buyParams_securityServicePromise_onDenied___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__AMSSigningSecurityService__headersForRequest_buyParams_securityServicePromise_onDenied___block_invoke_2;
  v5[3] = &unk_1E73B5C00;
  v6 = *(a1 + 48);
  [a2 signedHeadersForRequest:v3 buyParams:v4 completion:v5];
}

void __90__AMSSigningSecurityService__headersForRequest_buyParams_securityServicePromise_onDenied___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 finishWithPromise:v2];
}

- (id)_defaultSecurityServiceWithDelegate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 securityServiceProxyWithDelegate:v3];

  return v5;
}

- (void)_handleSecurityServicePromise:(id)a3 onConnected:(id)a4 onDenied:(id)a5 onError:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__AMSSigningSecurityService__handleSecurityServicePromise_onConnected_onDenied_onError___block_invoke;
  v15[3] = &unk_1E73BBE88;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [a3 addFinishBlock:v15];
}

void __88__AMSSigningSecurityService__handleSecurityServicePromise_onConnected_onDenied_onError___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v11 = v5;
  if (v15)
  {
    v12 = *(a1[4] + 16);
LABEL_3:
    v12();
    goto LABEL_4;
  }

  if (v5)
  {
    if ([v5 code] != 11)
    {
      v12 = *(a1[6] + 16);
      goto LABEL_3;
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v13 = AMSErrorWithFormat(0, @"AMSSigningSecurityService Error", @"Connection request was unresponsive", v6, v7, v8, v9, v10, v14);
    (*(a1[6] + 16))();
  }

LABEL_4:
}

@end