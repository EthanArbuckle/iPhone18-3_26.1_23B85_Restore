@interface EvaluationRequestProcessor
- (EvaluationRequestProcessor)initWithContext:(id)a3 uiDelegate:(id)a4;
- (void)_collectBiomeAnalyticsForRequest:(id)a3 dtoState:(int64_t)a4 ratchetState:(int64_t)a5 result:(id)a6;
- (void)_collectBiomeAnalyticsForRequest:(id)a3 result:(id)a4;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation EvaluationRequestProcessor

- (EvaluationRequestProcessor)initWithContext:(id)a3 uiDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EvaluationRequestProcessor;
  v8 = [(EvaluationRequestProcessor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, v6);
    objc_storeStrong(&v9->_uiDelegate, a4);
  }

  return v9;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = [v9 client];
  v11 = v10;
  if (!v9)
  {
    v14 = @"Unexpected request type";
LABEL_6:
    v15 = [LAErrorHelper errorWithCode:-1000 message:v14];
    v16 = [LACEvaluationResult resultWithFailure:v15];
    v8[2](v8, v16);

    goto LABEL_7;
  }

  if (!v10)
  {
    v14 = @"Missing originator";
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_context);
  uiDelegate = self->_uiDelegate;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000D648;
  v17[3] = &unk_100055138;
  v18 = v9;
  v19 = v8;
  [WeakRetained evaluateRequest:v18 uiDelegate:uiDelegate originator:v11 reply:v17];

LABEL_7:
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  if ([v11 isInteractive] && (objc_msgSend(v11, "isImmediateSuccess") & 1) == 0)
  {
    [(EvaluationRequestProcessor *)self _collectBiomeAnalyticsForRequest:v11 result:v9];
  }

  v10[2](v10, v9);
}

- (void)_collectBiomeAnalyticsForRequest:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 serviceLocator];
  v9 = NSStringFromProtocol(&OBJC_PROTOCOL___LACDTOService);
  v10 = [v8 serviceWithIdentifier:v9];

  if (v10 && ([v10 conformsToProtocol:&OBJC_PROTOCOL___LACDTOService] & 1) != 0)
  {
    v11 = [v10 environmentProvider];
    v12 = [v6 policy];
    v13 = [v6 options];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000D998;
    v15[3] = &unk_100055278;
    v16 = v6;
    v17 = self;
    v18 = v7;
    [v11 fetchEnvironmentForPolicy:v12 options:v13 completion:v15];

    v14 = v16;
  }

  else
  {
    v14 = LACLogDTO();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100022BEC(v14);
    }
  }
}

- (void)_collectBiomeAnalyticsForRequest:(id)a3 dtoState:(int64_t)a4 ratchetState:(int64_t)a5 result:(id)a6
{
  v7 = a6;
  v8 = a3;
  v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 evaluationUserId]);
  v10 = [v8 analytics];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000DD0C;
  v33[3] = &unk_1000552A0;
  v11 = v9;
  v34 = v11;
  v12 = v10;
  v35 = v12;
  v13 = sub_10000DD0C(v33);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000DE40;
  v29[3] = &unk_1000552C8;
  v30 = v12;
  v31 = v11;
  v32 = v7;
  v14 = v7;
  v26 = v11;
  v25 = v12;
  v15 = sub_10000DE40(v29);
  v16 = [LACBiomeEvaluationEvent alloc];
  v17 = [v8 policy];
  v18 = [v14 error];
  v19 = [v18 code];
  v20 = [v8 payload];

  v21 = [v20 objectForKeyedSubscript:LACEvaluationRequestPayloadKeyInternalInfo];
  v22 = [v21 objectForKeyedSubscript:@"CallerId"];
  v23 = [v16 initWithPolicy:v17 errorCode:v19 biometry:v13 passcode:v15 dtoState:a4 ratchetState:a5 callerBundleID:v22];

  v24 = +[LACBiomeEvaluationDonationHelper sharedInstance];
  [v24 donateEvent:v23];
}

@end