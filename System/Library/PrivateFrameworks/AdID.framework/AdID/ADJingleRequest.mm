@interface ADJingleRequest
+ (id)incrementToken;
- (id)init:(id)a3 withCompletion:(id)a4;
- (void)handleJingleResponse;
- (void)send;
- (void)sendJingleRequest:(id)a3 withCompletion:(id)a4;
@end

@implementation ADJingleRequest

+ (id)incrementToken
{
  v2 = a1;
  objc_sync_enter(v2);
  ++token;
  objc_sync_exit(v2);

  v3 = MEMORY[0x277CCABB0];
  v4 = token;

  return [v3 numberWithInt:v4];
}

- (id)init:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ADJingleRequest;
  v9 = [(ADJingleRequest *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DSID, a3);
    v11 = +[ADJingleRequest incrementToken];
    token = v10->_token;
    v10->_token = v11;

    v13 = MEMORY[0x23EF10BF0](v8);
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
  v4 = [(ADJingleRequest *)self bagKey];
  v5 = [v3 retrieveJingleRequestURLFromAMSBagWithPartialityKey:v4];

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = MEMORY[0x277CCACA8];
    v30 = objc_opt_class();
    v31 = [(ADJingleRequest *)self bagKey];
    v32 = [v5 absoluteString];
    v33 = [v29 stringWithFormat:@"[%@]: Invalid value for bag key %@: %@ (class: %@)", v30, v31, v32, objc_opt_class()];
    v25 = [v28 initWithAdCode:14 andDescription:v33];

    [v25 AD_Log:@"iAdIDLogging"];
    [(ADJingleRequest *)self setError:v25];
    v34 = [(ADJingleRequest *)self completionHandler];

    if (!v34)
    {
LABEL_20:

      goto LABEL_21;
    }

    v26 = [(ADJingleRequest *)self completionHandler];
    (v26)[2](v26, self);
LABEL_19:

    goto LABEL_20;
  }

  v50 = v5;
  v6 = [MEMORY[0x277CE9638] sharedInstance];
  v7 = [v6 iTunesAccountDSID];
  v8 = [MEMORY[0x277CE9658] sharedInstance];
  v9 = [v8 activeDSIDRecord];
  v10 = [v9 DSID];
  v11 = [v7 isEqualToString:v10];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CEE6D8]);
    [v12 setRequestEncoding:3];
    v13 = [MEMORY[0x277CE9638] sharedInstance];
    v14 = [v13 iTunesStoreAccount];
    [v12 setAccount:v14];

    v49 = v12;
    [v12 setUrlKnownToBeTrusted:1];
    v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v15 = self;
    v16 = [(ADJingleRequest *)self requestHeaders];
    v17 = [v16 countByEnumeratingWithState:&v54 objects:v58 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [(ADJingleRequest *)v15 requestHeaders];
            v23 = [v22 objectForKey:v21];

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

        v18 = [v16 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v18);
    }

    v25 = v12;
    v5 = v50;
    v26 = v51;
    v27 = [v49 requestWithMethod:4 URL:v50 parameters:v51];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __23__ADJingleRequest_send__block_invoke;
    v52[3] = &unk_278C58330;
    v52[4] = v15;
    v53 = v50;
    [v27 addFinishBlock:v52];

    goto LABEL_19;
  }

  v36 = objc_alloc(MEMORY[0x277CCA9B8]);
  v37 = MEMORY[0x277CCACA8];
  v38 = objc_opt_class();
  v39 = [MEMORY[0x277CE9638] sharedInstance];
  v40 = [v39 iTunesAccountDSID];
  v41 = [MEMORY[0x277CE9658] sharedInstance];
  [v41 activeDSIDRecord];
  v43 = v42 = self;
  v44 = [v43 DSID];
  v45 = [v37 stringWithFormat:@"[%@]: iTunes DSID mismatch. Active DSID: %@. Record DSID: %@. Cannot request Segments.", v38, v40, v44];
  v46 = [v36 initWithAdCode:3 andDescription:v45];

  [v46 AD_Log:@"iAdIDLogging"];
  [(ADJingleRequest *)v42 setError:v46];
  v47 = [(ADJingleRequest *)v42 completionHandler];

  if (v47)
  {
    v48 = [(ADJingleRequest *)v42 completionHandler];
    (v48)[2](v48, v42);
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
    v5 = [(ADJingleRequest *)self error];
    v6 = [v5 code];
    v7 = [(ADJingleRequest *)self token];
    v8 = [(ADJingleRequest *)self error];
    v9 = [v8 localizedDescription];
    v10 = [v3 stringWithFormat:@"[%@]: Error %ld in Jingle response for %@: %@", v4, v6, v7, v9];
    _ADLog();

LABEL_3:
    goto LABEL_4;
  }

  v12 = [(ADJingleRequest *)self token];
  v13 = [v3 stringWithFormat:@"Jingle response for %@ received with status %ld", v12, -[ADJingleRequest statusCode](self, "statusCode")];
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
    v29 = [(ADJingleRequest *)self statusCode];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HTTP response code: %ld", -[ADJingleRequest statusCode](self, "statusCode")];
    v7 = [v28 initWithAdCode:v29 andDescription:v5];
    [(ADJingleRequest *)self setError:v7];
    goto LABEL_3;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [(ADJingleRequest *)self responseBody];
  v17 = [v15 initWithData:v16 encoding:4];
  v18 = [v14 stringWithFormat:@"Jingle response body:\n %@", v17];
  _ADLog();

  if (MGGetBoolAnswer())
  {
    v19 = [MEMORY[0x277CE9630] sharedInstance];
    if ([v19 BOOLForKey:@"ForceU13SegmentResponse"])
    {
LABEL_13:

LABEL_14:
      v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:self->_responseBody options:1 error:0];
      v21 = [MEMORY[0x277CE9630] sharedInstance];
      v22 = [v21 BOOLForKey:@"ForceU13SegmentResponse"];

      if (v22)
      {
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"u13flag"];
      }

      v23 = [MEMORY[0x277CE9630] sharedInstance];
      v24 = [v23 BOOLForKey:@"ForceT13SegmentResponse"];

      if (v24)
      {
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"t13flag"];
      }

      v25 = [MEMORY[0x277CE9630] sharedInstance];
      v26 = [v25 BOOLForKey:@"ForceU18SegmentResponse"];

      if (v26)
      {
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"u18flag"];
      }

      v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:1 error:0];
      [(ADJingleRequest *)self setResponseBody:v7];
      goto LABEL_3;
    }

    v20 = [MEMORY[0x277CE9630] sharedInstance];
    if ([v20 BOOLForKey:@"ForceT13SegmentResponse"])
    {

      goto LABEL_13;
    }

    v30 = [MEMORY[0x277CE9630] sharedInstance];
    v31 = [v30 BOOLForKey:@"ForceU18SegmentResponse"];

    if (v31)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  v11 = [(ADJingleRequest *)self completionHandler];

  if (v11)
  {
    v32 = [(ADJingleRequest *)self completionHandler];
    v32[2](v32, self);
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

- (void)sendJingleRequest:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAD38];
  v7 = a3;
  v8 = [v6 defaultSessionConfiguration];
  v9 = [objc_alloc(MEMORY[0x277CEE6F0]) initWithConfiguration:v8 delegate:0 delegateQueue:0];
  v10 = objc_alloc_init(MEMORY[0x277CEE630]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __52__ADJingleRequest_sendJingleRequest_withCompletion___block_invoke;
  v17 = &unk_278C583A8;
  v18 = v10;
  v19 = v5;
  v11 = v5;
  v12 = v10;
  v13 = [v9 dataTaskWithRequest:v7 completionHandler:&v14];

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