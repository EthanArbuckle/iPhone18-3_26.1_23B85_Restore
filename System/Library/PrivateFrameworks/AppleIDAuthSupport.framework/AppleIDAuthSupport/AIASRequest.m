@interface AIASRequest
- (AIASRequest)initWithURL:(id)a3 data:(__CFDictionary *)a4 clientInfo:(id)a5 proxiedClientInfo:(id)a6 companionClientInfo:(id)a7 appleITeamId:(id)a8 appleIClientId:(id)a9 additionalHeaders:(id)a10;
- (void)resume;
@end

@implementation AIASRequest

- (AIASRequest)initWithURL:(id)a3 data:(__CFDictionary *)a4 clientInfo:(id)a5 proxiedClientInfo:(id)a6 companionClientInfo:(id)a7 appleITeamId:(id)a8 appleIClientId:(id)a9 additionalHeaders:(id)a10
{
  v53[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v46 = a8;
  v20 = a9;
  v21 = a10;
  v49.receiver = self;
  v49.super_class = AIASRequest;
  v22 = [(AIASRequest *)&v49 init];
  if (v22)
  {
    v45 = v16;
    v23 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v16];
    [(AIASRequest *)v22 setURLRequest:v23];

    v52 = @"Version";
    v53[0] = @"1.0.1";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v50[0] = @"Header";
    v50[1] = @"Request";
    v44 = v24;
    v51[0] = v24;
    v51[1] = a4;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v26 = v17;
    if (!v17)
    {
      v26 = AppleIDAuthSupportGetClientInfo();
    }

    v27 = [MEMORY[0x277CCAC58] dataWithPropertyList:v25 format:100 options:0 error:0];
    if (v27)
    {
      v28 = [(AIASRequest *)v22 URLRequest];
      [v28 setHTTPMethod:@"POST"];

      v29 = [(AIASRequest *)v22 URLRequest];
      [v29 setHTTPBody:v27];

      v30 = [(AIASRequest *)v22 URLRequest];
      [v30 setValue:@"text/x-xml-plist" forHTTPHeaderField:@"Content-Type"];

      v31 = [(AIASRequest *)v22 URLRequest];
      v32 = v31;
      if (v17)
      {
        v33 = @"X-MMe-Client-Info";
      }

      else
      {
        [v31 setValue:v26 forHTTPHeaderField:@"User-Agent"];

        v31 = [(AIASRequest *)v22 URLRequest];
        v32 = v31;
        v33 = @"X-GS-Client-Info";
      }

      [v31 setValue:v26 forHTTPHeaderField:v33];
      v35 = v46;

      if (v18)
      {
        v36 = [(AIASRequest *)v22 URLRequest];
        [v36 setValue:v18 forHTTPHeaderField:@"X-MMe-Proxied-Client-Info"];
      }

      if (v19)
      {
        v37 = [(AIASRequest *)v22 URLRequest];
        [v37 setValue:v19 forHTTPHeaderField:@"X-MMe-Companion-Client-Info"];
      }

      if (v46)
      {
        v38 = [(AIASRequest *)v22 URLRequest];
        [v38 setValue:v46 forHTTPHeaderField:@"X-Apple-I-Team-Id"];
      }

      if (v20)
      {
        v39 = [(AIASRequest *)v22 URLRequest];
        [v39 setValue:v20 forHTTPHeaderField:@"X-Apple-I-Client-Id"];
      }

      if (v21)
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __127__AIASRequest_initWithURL_data_clientInfo_proxiedClientInfo_companionClientInfo_appleITeamId_appleIClientId_additionalHeaders___block_invoke;
        v47[3] = &unk_278CAB7C0;
        v48 = v22;
        [v21 enumerateKeysAndObjectsUsingBlock:v47];
      }

      v40 = [MEMORY[0x277CBEB28] data];
      [(AIASRequest *)v22 setData:v40];

      [(AIASRequest *)v22 setDone:0];
      [(AIASRequest *)v22 setSuccess:0];
      v41 = dispatch_semaphore_create(0);
      [(AIASRequest *)v22 setSema:v41];

      [(AIASRequest *)v22 setError:0];
      [(AIASRequest *)v22 setNetworkTaskDescription:0];
      v34 = v22;
    }

    else
    {
      v34 = 0;
      v35 = v46;
    }

    v16 = v45;
  }

  else
  {
    v34 = 0;
    v26 = v17;
    v35 = v46;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v34;
}

void __127__AIASRequest_initWithURL_data_clientInfo_proxiedClientInfo_companionClientInfo_appleITeamId_appleIClientId_additionalHeaders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([v5 length] < 2 || (objc_msgSend(v5, "substringToIndex:", 2), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "caseInsensitiveCompare:", @"X-"), v7, v8))
    {
      v9 = _AIDASOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v5;
        v10 = "Rejecting additional header %@: key must begin with X-";
LABEL_9:
        _os_log_impl(&dword_24056C000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, 0xCu);
      }
    }

    else
    {
      v12 = [*(a1 + 32) URLRequest];
      v13 = [v12 valueForHTTPHeaderField:v5];

      if (!v13)
      {
        v9 = [*(a1 + 32) URLRequest];
        [v9 setValue:v6 forHTTPHeaderField:v5];
        goto LABEL_10;
      }

      v9 = _AIDASOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v5;
        v10 = "Rejecting additional header %@: key is already set via other options";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v9 = _AIDASOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      v10 = "Rejecting additional header %@: key and value must be strings";
      goto LABEL_9;
    }
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v2 = [(AIASRequest *)self task];
  [v2 resume];
}

@end