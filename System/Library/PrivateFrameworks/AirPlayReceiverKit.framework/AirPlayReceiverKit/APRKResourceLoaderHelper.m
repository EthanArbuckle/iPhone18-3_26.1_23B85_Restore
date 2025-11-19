@interface APRKResourceLoaderHelper
- (APRKResourceLoaderHelper)init;
- (APRKResourceLoaderHelperDelegate)delegate;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (BOOL)resourceLoader:(id)a3 shouldWaitForResponseToAuthenticationChallenge:(id)a4;
- (void)forgetAllActiveResourceLoadingRequests;
- (void)processUnhandledURLResponseWithDictionary:(id)a3 error:(id *)a4;
- (void)registerAVURLAsset:(id)a3;
- (void)resourceLoader:(id)a3 didCancelAuthenticationChallenge:(id)a4;
- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4;
- (void)unregisterAVURLAsset:(id)a3;
@end

@implementation APRKResourceLoaderHelper

- (APRKResourceLoaderHelper)init
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = APRKResourceLoaderHelper;
  v2 = [(APRKResourceLoaderHelper *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeResourceLoadingRequests = v2->_activeResourceLoadingRequests;
    v2->_activeResourceLoadingRequests = v3;

    v5 = dispatch_queue_create("com.apple.APRKMediaPlayer.resourceLoaderQueue", 0);
    resourceLoaderQueue = v2->_resourceLoaderQueue;
    v2->_resourceLoaderQueue = v5;

    v12[0] = @"Accept-Encoding";
    v12[1] = @"User-Agent";
    v13[0] = @"gzip";
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"AppleCoreMedia/1.0.0.%.*s (Apple TV U; CPU OS 12_0 like Mac OS X; en_us)", APSVersionUtilsGetShortVersionLength(), "920.10.1"];;
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    headersDictionary = v2->_headersDictionary;
    v2->_headersDictionary = v8;

    v2->_requestIDCnt = 0;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKResourceLoaderHelper init];
    }
  }

  return v2;
}

- (void)registerAVURLAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = v4;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), v5 = v10, v6))
      {
        v8 = v5;
        v9 = self;
        LogPrintF();
        v5 = v10;
      }
    }

    v7 = [v5 resourceLoader];
    [v7 setDelegate:self queue:self->_resourceLoaderQueue];
  }

  MEMORY[0x2821F96F8]();
}

- (void)unregisterAVURLAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = v4;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), v5 = v10, v6))
      {
        v8 = v5;
        v9 = self;
        LogPrintF();
        v5 = v10;
      }
    }

    v7 = [v5 resourceLoader];
    [v7 setDelegate:0 queue:self->_resourceLoaderQueue];
  }

  MEMORY[0x2821F96F8]();
}

- (void)forgetAllActiveResourceLoadingRequests
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKResourceLoaderHelper forgetAllActiveResourceLoadingRequests];
  }

  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_activeResourceLoadingRequests removeAllObjects];
  objc_sync_exit(obj);
}

- (void)processUnhandledURLResponseWithDictionary:(id)a3 error:(id *)a4
{
  v45 = a3;
  v6 = [v45 objectForKey:*MEMORY[0x277CC0950]];
  v7 = [v45 objectForKey:*MEMORY[0x277CC0958]];
  v8 = [v7 integerValue];

  v9 = [v45 objectForKey:*MEMORY[0x277CC0960]];
  v10 = [v45 objectForKey:*MEMORY[0x277CC0938]];
  v11 = [v45 objectForKey:*MEMORY[0x277CC0928]];
  v12 = [v45 objectForKey:*MEMORY[0x277CC0930]];
  if (gLogCategory_AirPlayReceiverKit > 30 || gLogCategory_AirPlayReceiverKit == -1 && !_LogCategory_Initialize())
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA590];
    v18 = -6708;
LABEL_14:
    v19 = [v16 initWithDomain:v17 code:v18 userInfo:0];
    goto LABEL_15;
  }

  [APRKResourceLoaderHelper processUnhandledURLResponseWithDictionary:error:];
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8 == 0;
  }

  if (!v13)
  {
    v14 = self;
    objc_sync_enter(v14);
    v15 = [(NSMutableDictionary *)v14->_activeResourceLoadingRequests objectForKey:v6];
    objc_sync_exit(v14);

    if (v15)
    {
      goto LABEL_19;
    }

    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA590];
    v18 = -6727;
    goto LABEL_14;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1 userInfo:0];
LABEL_15:
  v20 = v19;
  if (v19)
  {
    if (a4)
    {
      v21 = v19;
      v15 = 0;
      *a4 = v20;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_31;
  }

  v15 = 0;
LABEL_19:
  if ((v8 - 301) > 4 || v8 == 304)
  {
    if (v12)
    {
      v44 = v12;
      v35 = v10;
      v36 = v11;
      v37 = objc_alloc(MEMORY[0x277CBAB48]);
      [MEMORY[0x277CBEBC0] URLWithString:v9];
      v38 = self;
      v40 = v39 = v9;
      v23 = [v37 initWithURL:v40 statusCode:v8 HTTPVersion:@"HTTP/1.1" headerFields:v35];

      v9 = v39;
      self = v38;
      [v15 setResponse:v23];
      v41 = [v15 dataRequest];
      [v41 respondWithData:v44];

      v11 = v36;
      v10 = v35;
      v12 = v44;
      [v15 finishLoading];
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:v8 userInfo:0];
      [v15 finishLoadingWithError:v23];
    }
  }

  else
  {
    v23 = [v10 objectForKey:@"Location"];
    if (v23)
    {
      v24 = MEMORY[0x277CBABA0];
      v43 = v12;
      v25 = v10;
      v26 = v11;
      [MEMORY[0x277CBEBC0] URLWithString:v23];
      v27 = v42 = v9;
      v28 = [v24 requestWithURL:v27];

      v29 = objc_alloc(MEMORY[0x277CBAB48]);
      v30 = [MEMORY[0x277CBEBC0] URLWithString:v42];
      v31 = [v29 initWithURL:v30 statusCode:v8 HTTPVersion:@"HTTP/1.1" headerFields:v25];

      [v15 setResponse:v31];
      [v15 setRedirect:v28];
      v32 = [v15 contentInformationRequest];
      [v32 setRenewalDate:v26];

      v33 = [v15 dataRequest];
      [v33 respondWithData:v43];

      v11 = v26;
      v10 = v25;
      v12 = v43;
      [v15 finishLoading];

      v9 = v42;
    }

    else
    {
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:v8 userInfo:0];
      [v15 finishLoadingWithError:v28];
    }
  }

  if (v6)
  {
    v34 = self;
    objc_sync_enter(v34);
    [(NSMutableDictionary *)v34->_activeResourceLoadingRequests removeObjectForKey:v6];
    objc_sync_exit(v34);
  }

  v20 = 0;
LABEL_31:
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v25[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 serializableRepresentation];
  v9 = *MEMORY[0x277CC0940];
  v10 = [v8 objectForKey:*MEMORY[0x277CC0940]];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [v7 contentInformationRequest];
    [v12 setContentType:*MEMORY[0x277CE6180]];

    [v7 finishLoading];
  }

  else
  {
    v13 = MEMORY[0x277CCABB0];
    ++self->_requestIDCnt;
    v14 = [v13 numberWithLongLong:?];
    v15 = self;
    objc_sync_enter(v15);
    [(NSMutableDictionary *)v15->_activeResourceLoadingRequests setObject:v7 forKey:v14];
    objc_sync_exit(v15);

    v24[0] = *MEMORY[0x277CC0960];
    v16 = [v7 request];
    v17 = [v16 URL];
    v18 = [v17 absoluteString];
    v25[0] = v18;
    v25[1] = MEMORY[0x277CBEC28];
    v19 = *MEMORY[0x277CC0950];
    v24[1] = v9;
    v24[2] = v19;
    v24[3] = *MEMORY[0x277CC0938];
    headersDictionary = v15->_headersDictionary;
    v25[2] = v14;
    v25[3] = headersDictionary;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKResourceLoaderHelper *)v8 resourceLoader:v19 shouldWaitForLoadingOfRequestedResource:v7];
    }

    v22 = [(APRKResourceLoaderHelper *)v15 delegate];
    [v22 resourceLoaderHelper:v15 wantsToPerformUnhandledURLRequestWithDictionary:v21 forRequestID:v14];
  }

  return 1;
}

- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_activeResourceLoadingRequests allKeysForObject:v6];
  [(NSMutableDictionary *)v7->_activeResourceLoadingRequests removeObjectsForKeys:v8];

  objc_sync_exit(v7);
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForResponseToAuthenticationChallenge:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKResourceLoaderHelper resourceLoader:shouldWaitForResponseToAuthenticationChallenge:];
  }

  return 0;
}

- (void)resourceLoader:(id)a3 didCancelAuthenticationChallenge:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKResourceLoaderHelper resourceLoader:didCancelAuthenticationChallenge:];
  }
}

- (APRKResourceLoaderHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resourceLoader:(void *)a3 shouldWaitForLoadingOfRequestedResource:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 objectForKey:a2];
  v5 = [a3 request];
  v6 = [v5 URL];
  v7 = [v6 absoluteString];
  OUTLINED_FUNCTION_1();
}

@end