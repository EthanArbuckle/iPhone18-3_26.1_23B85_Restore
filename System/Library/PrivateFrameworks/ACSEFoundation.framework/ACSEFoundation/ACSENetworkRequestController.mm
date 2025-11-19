@interface ACSENetworkRequestController
- (ACSENetworkRequestController)initWithSession:(id)a3 numberOfSecondsBetweenRetries:(id)a4;
- (void)executeRequest:(id)a3 acceptedStatusCodes:(id)a4 completion:(id)a5;
@end

@implementation ACSENetworkRequestController

- (ACSENetworkRequestController)initWithSession:(id)a3 numberOfSecondsBetweenRetries:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ACSENetworkRequestController;
  v8 = [(ACSENetworkRequestController *)&v13 init];
  session = v8->_session;
  v8->_session = v6;
  v10 = v6;

  numberOfSecondsBetweenRetries = v8->_numberOfSecondsBetweenRetries;
  v8->_numberOfSecondsBetweenRetries = v7;

  return v8;
}

- (void)executeRequest:(id)a3 acceptedStatusCodes:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSArray *)self->_numberOfSecondsBetweenRetries copy];
  objc_initWeak(&location, self);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v12 = [ACSERetryController alloc];
  v13 = [(NSArray *)self->_numberOfSecondsBetweenRetries count];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__ACSENetworkRequestController_executeRequest_acceptedStatusCodes_completion___block_invoke;
  v20[3] = &unk_278BBCEF8;
  objc_copyWeak(&v26, &location);
  v14 = v10;
  v24 = v14;
  v25 = &v27;
  v15 = v8;
  v21 = v15;
  v16 = v9;
  v22 = v16;
  v17 = v11;
  v23 = v17;
  v18 = [(ACSERetryController *)v12 initWithMaxNumberOfRetries:v13 block:v20];
  v19 = v28[5];
  v28[5] = v18;

  [v28[5] executeBlock];
  _Block_object_dispose(&v27, 8);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __78__ACSENetworkRequestController_executeRequest_acceptedStatusCodes_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__ACSENetworkRequestController_executeRequest_acceptedStatusCodes_completion___block_invoke_2;
    v16[3] = &unk_278BBCED0;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *&v7 = *(a1 + 56);
    *(&v7 + 1) = *(a1 + 64);
    v15 = v7;
    v8 = *(a1 + 48);
    *&v9 = v6;
    *(&v9 + 1) = v8;
    v17 = v9;
    v18 = v15;
    v10 = [v4 dataTaskWithRequest:v5 completionHandler:v16];
    [v10 resume];
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] forACSEError:0];
    (*(v11 + 16))(v11, 0, 0, v12);

    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

void __78__ACSENetworkRequestController_executeRequest_acceptedStatusCodes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "statusCode")}];
  LODWORD(v10) = [v10 containsObject:v11];

  if (v10)
  {
    goto LABEL_2;
  }

  if ([v9 statusCode] == 429 || objc_msgSend(v9, "statusCode") == 503)
  {
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA9B8] forACSEError:1];
    (*(v12 + 16))(v12, v19, v9, v13);

    goto LABEL_6;
  }

  v16 = [*(*(*(a1 + 56) + 8) + 40) numberOfAttempts] - 1;
  if (v16 >= [*(a1 + 40) count])
  {
LABEL_2:
    (*(*(a1 + 48) + 16))();
LABEL_6:
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    goto LABEL_7;
  }

  v17 = [*(a1 + 40) objectAtIndexedSubscript:v16];
  v18 = [v17 unsignedIntegerValue];

  [*(*(*(a1 + 56) + 8) + 40) retryAfterSeconds:v18];
LABEL_7:
}

@end