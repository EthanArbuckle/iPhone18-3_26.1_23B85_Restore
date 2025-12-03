@interface ADJingleRequest
+ (id)incrementToken;
- (id)init:(id)init withCompletion:(id)completion;
- (void)handleJingleResponse;
- (void)send;
- (void)sendJingleRequest:(id)request withCompletion:(id)completion;
@end

@implementation ADJingleRequest

+ (id)incrementToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++token;
  objc_sync_exit(selfCopy);

  v3 = MEMORY[0x277CCABB0];
  v4 = token;

  return [v3 numberWithInt:v4];
}

- (id)init:(id)init withCompletion:(id)completion
{
  initCopy = init;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = ADJingleRequest;
  v9 = [(ADJingleRequest *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DSID, init);
    v11 = +[ADJingleRequest incrementToken];
    token = v10->_token;
    v10->_token = v11;

    v13 = MEMORY[0x23EF10BF0](completionCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;

    if (init_withCompletion__onceToken != -1)
    {
      [ADJingleRequest init:withCompletion:];
    }

    v15 = [init_withCompletion__defaultHeaders mutableCopy];
    requestHeaders = v10->_requestHeaders;
    v10->_requestHeaders = v15;
  }

  return v10;
}

void __39__ADJingleRequest_init_withCompletion___block_invoke()
{
  v0 = init_withCompletion__defaultHeaders;
  init_withCompletion__defaultHeaders = &unk_28510BE00;
}

- (void)send
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = +[ADAMSBagManager sharedInstance];
  bagKey = [(ADJingleRequest *)self bagKey];
  v5 = [v3 retrieveJingleRequestURLFromAMSBagWithPartialityKey:bagKey];

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = MEMORY[0x277CCACA8];
    v30 = objc_opt_class();
    bagKey2 = [(ADJingleRequest *)self bagKey];
    absoluteString = [v5 absoluteString];
    v33 = [v29 stringWithFormat:@"[%@]: Invalid value for bag key %@: %@ (class: %@)", v30, bagKey2, absoluteString, objc_opt_class()];
    v25 = [v28 initWithAdCode:14 andDescription:v33];

    [v25 AD_Log:@"iAdIDLogging"];
    [(ADJingleRequest *)self setError:v25];
    completionHandler = [(ADJingleRequest *)self completionHandler];

    if (!completionHandler)
    {
LABEL_20:

      goto LABEL_21;
    }

    completionHandler2 = [(ADJingleRequest *)self completionHandler];
    (completionHandler2)[2](completionHandler2, self);
LABEL_19:

    goto LABEL_20;
  }

  v50 = v5;
  mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
  iTunesAccountDSID = [mEMORY[0x277CE9638] iTunesAccountDSID];
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];
  dSID = [activeDSIDRecord DSID];
  v11 = [iTunesAccountDSID isEqualToString:dSID];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CEE6D8]);
    [v12 setRequestEncoding:3];
    mEMORY[0x277CE9638]2 = [MEMORY[0x277CE9638] sharedInstance];
    iTunesStoreAccount = [mEMORY[0x277CE9638]2 iTunesStoreAccount];
    [v12 setAccount:iTunesStoreAccount];

    v49 = v12;
    [v12 setUrlKnownToBeTrusted:1];
    v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    selfCopy = self;
    requestHeaders = [(ADJingleRequest *)self requestHeaders];
    v17 = [requestHeaders countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v55;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(requestHeaders);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            requestHeaders2 = [(ADJingleRequest *)selfCopy requestHeaders];
            v23 = [requestHeaders2 objectForKey:v21];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v51 setValue:v23 forKey:v21];
            }

            else
            {
              v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Non-string value in additional headers: %@", v23];
              _ADLog();
            }
          }

          else
          {
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Non-string key in additional headers: %@", v21];
            _ADLog();
          }
        }

        v18 = [requestHeaders countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v18);
    }

    v25 = v12;
    v5 = v50;
    completionHandler2 = v51;
    v27 = [v49 requestWithMethod:4 URL:v50 parameters:v51];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __23__ADJingleRequest_send__block_invoke;
    v52[3] = &unk_278C58330;
    v52[4] = selfCopy;
    v53 = v50;
    [v27 addFinishBlock:v52];

    goto LABEL_19;
  }

  v36 = objc_alloc(MEMORY[0x277CCA9B8]);
  v37 = MEMORY[0x277CCACA8];
  v38 = objc_opt_class();
  mEMORY[0x277CE9638]3 = [MEMORY[0x277CE9638] sharedInstance];
  iTunesAccountDSID2 = [mEMORY[0x277CE9638]3 iTunesAccountDSID];
  mEMORY[0x277CE9658]2 = [MEMORY[0x277CE9658] sharedInstance];
  [mEMORY[0x277CE9658]2 activeDSIDRecord];
  v43 = v42 = self;
  dSID2 = [v43 DSID];
  v45 = [v37 stringWithFormat:@"[%@]: iTunes DSID mismatch. Active DSID: %@. Record DSID: %@. Cannot request Segments.", v38, iTunesAccountDSID2, dSID2];
  v46 = [v36 initWithAdCode:3 andDescription:v45];

  [v46 AD_Log:@"iAdIDLogging"];
  [(ADJingleRequest *)v42 setError:v46];
  completionHandler3 = [(ADJingleRequest *)v42 completionHandler];

  if (completionHandler3)
  {
    completionHandler4 = [(ADJingleRequest *)v42 completionHandler];
    (completionHandler4)[2](completionHandler4, v42);
  }

LABEL_21:
  v35 = *MEMORY[0x277D85DE8];
}

void __23__ADJingleRequest_send__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 requestBody];
  [v4 setHTTPBody:v5];

  v6 = [MEMORY[0x277CE9638] sharedInstance];
  [v6 jingleTimeoutInterval];
  [v4 setTimeoutInterval:?];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [*(a1 + 32) requestHeaders];
  [v7 setObject:v8 forKey:@"headers"];

  v9 = MEMORY[0x277CCAAA0];
  v10 = [*(a1 + 32) requestBody];
  v11 = [v9 JSONObjectWithData:v10 options:0 error:0];
  [v7 setObject:v11 forKey:@"body"];

  v12 = MEMORY[0x277CCACA8];
  v13 = [*(a1 + 40) absoluteString];
  v14 = [v7 AD_jsonString];
  v15 = [v12 stringWithFormat:@"POSTing to Jingle (%@): %@", v13, v14];
  _ADLog();

  v16 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __23__ADJingleRequest_send__block_invoke_2;
  v17[3] = &unk_278C58308;
  v17[4] = v16;
  [v16 sendJingleRequest:v4 withCompletion:v17];
}

void __23__ADJingleRequest_send__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    v7 = [v5 data];
    v8 = [v7 copy];
    [*(a1 + 32) setResponseBody:v8];

    v9 = [v5 responseHeaders];
    v10 = [v9 copy];
    [*(a1 + 32) setResponseHeaders:v10];

    v11 = [v6 copy];
    [*(a1 + 32) setError:v11];

    [*(a1 + 32) setStatusCode:{objc_msgSend(v5, "responseStatusCode")}];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:12 andDescription:@"Jingle response is nil."];
    [*(a1 + 32) setError:v12];
  }

  v13 = [MEMORY[0x277CE96B8] workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __23__ADJingleRequest_send__block_invoke_3;
  v14[3] = &unk_278C57E10;
  v14[4] = *(a1 + 32);
  [v13 addOperationWithBlock:v14];
}

- (void)handleJingleResponse
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_error)
  {
    v4 = objc_opt_class();
    error = [(ADJingleRequest *)self error];
    code = [error code];
    token = [(ADJingleRequest *)self token];
    error2 = [(ADJingleRequest *)self error];
    localizedDescription = [error2 localizedDescription];
    v10 = [v3 stringWithFormat:@"[%@]: Error %ld in Jingle response for %@: %@", v4, code, token, localizedDescription];
    _ADLog();

LABEL_3:
    goto LABEL_4;
  }

  token2 = [(ADJingleRequest *)self token];
  v13 = [v3 stringWithFormat:@"Jingle response for %@ received with status %ld", token2, -[ADJingleRequest statusCode](self, "statusCode")];
  _ADLog();

  if ([(ADJingleRequest *)self statusCode]!= 200)
  {
    if ([(ADJingleRequest *)self statusCode]== 401)
    {
      v27 = +[ADJingleRequestManager sharedInstance];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __39__ADJingleRequest_handleJingleResponse__block_invoke;
      v33[3] = &unk_278C58358;
      v33[4] = self;
      [v27 authenticateUser:v33];

      return;
    }

    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    statusCode = [(ADJingleRequest *)self statusCode];
    error = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HTTP response code: %ld", -[ADJingleRequest statusCode](self, "statusCode")];
    token = [v28 initWithAdCode:statusCode andDescription:error];
    [(ADJingleRequest *)self setError:token];
    goto LABEL_3;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  responseBody = [(ADJingleRequest *)self responseBody];
  v17 = [v15 initWithData:responseBody encoding:4];
  v18 = [v14 stringWithFormat:@"Jingle response body:\n %@", v17];
  _ADLog();

  if (MGGetBoolAnswer())
  {
    mEMORY[0x277CE9630] = [MEMORY[0x277CE9630] sharedInstance];
    if ([mEMORY[0x277CE9630] BOOLForKey:@"ForceU13SegmentResponse"])
    {
LABEL_13:

LABEL_14:
      error = [MEMORY[0x277CCAAA0] JSONObjectWithData:self->_responseBody options:1 error:0];
      mEMORY[0x277CE9630]2 = [MEMORY[0x277CE9630] sharedInstance];
      v22 = [mEMORY[0x277CE9630]2 BOOLForKey:@"ForceU13SegmentResponse"];

      if (v22)
      {
        [error setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"u13flag"];
      }

      mEMORY[0x277CE9630]3 = [MEMORY[0x277CE9630] sharedInstance];
      v24 = [mEMORY[0x277CE9630]3 BOOLForKey:@"ForceT13SegmentResponse"];

      if (v24)
      {
        [error setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"t13flag"];
      }

      mEMORY[0x277CE9630]4 = [MEMORY[0x277CE9630] sharedInstance];
      v26 = [mEMORY[0x277CE9630]4 BOOLForKey:@"ForceU18SegmentResponse"];

      if (v26)
      {
        [error setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"u18flag"];
      }

      token = [MEMORY[0x277CCAAA0] dataWithJSONObject:error options:1 error:0];
      [(ADJingleRequest *)self setResponseBody:token];
      goto LABEL_3;
    }

    mEMORY[0x277CE9630]5 = [MEMORY[0x277CE9630] sharedInstance];
    if ([mEMORY[0x277CE9630]5 BOOLForKey:@"ForceT13SegmentResponse"])
    {

      goto LABEL_13;
    }

    mEMORY[0x277CE9630]6 = [MEMORY[0x277CE9630] sharedInstance];
    v31 = [mEMORY[0x277CE9630]6 BOOLForKey:@"ForceU18SegmentResponse"];

    if (v31)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  completionHandler = [(ADJingleRequest *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(ADJingleRequest *)self completionHandler];
    completionHandler2[2](completionHandler2, self);
  }
}

void __39__ADJingleRequest_handleJingleResponse__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 send];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:8 andDescription:@"Jingle authentication error."];
    [*(a1 + 32) setError:v4];
  }
}

- (void)sendJingleRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x277CCAD38];
  requestCopy = request;
  defaultSessionConfiguration = [v6 defaultSessionConfiguration];
  v9 = [objc_alloc(MEMORY[0x277CEE6F0]) initWithConfiguration:defaultSessionConfiguration delegate:0 delegateQueue:0];
  v10 = objc_alloc_init(MEMORY[0x277CEE630]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __52__ADJingleRequest_sendJingleRequest_withCompletion___block_invoke;
  v17 = &unk_278C583A8;
  v18 = v10;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = v10;
  v13 = [v9 dataTaskWithRequest:requestCopy completionHandler:&v14];

  [v13 resume];
  [v9 finishTasksAndInvalidate];
}

void __52__ADJingleRequest_sendJingleRequest_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) finishWithResult:a2 error:a3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__ADJingleRequest_sendJingleRequest_withCompletion___block_invoke_2;
  v5[3] = &unk_278C58380;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 addFinishBlock:v5];
}

uint64_t __52__ADJingleRequest_sendJingleRequest_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end