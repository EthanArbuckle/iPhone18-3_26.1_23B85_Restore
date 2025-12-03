@interface APRKContentKeyHelper
- (APRKContentKeyHelper)init;
- (APRKContentKeyHelperDelegate)delegate;
- (BOOL)isHandlingContentKeyRequestWithURLString:(id)string;
- (void)_performContentKeyRequest:(id)request isRenewalRequest:(BOOL)renewalRequest;
- (void)contentKeySessionDidGenerateExpiredSessionReport:(id)report;
- (void)forgetAllActiveContentKeyRequests;
- (void)processStreamingKeyRequestWithDictionary:(id)dictionary withCompletionBlock:(id)block;
- (void)processUnhandledURLResponseWithDictionary:(id)dictionary error:(id *)error;
- (void)registerAVURLAsset:(id)asset;
- (void)unregisterAVURLAsset:(id)asset;
@end

@implementation APRKContentKeyHelper

- (APRKContentKeyHelper)init
{
  v11.receiver = self;
  v11.super_class = APRKContentKeyHelper;
  v2 = [(APRKContentKeyHelper *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.APRKMediaPlayer.contentKeySessionQueue", 0);
    contentKeySessionQueue = v2->_contentKeySessionQueue;
    v2->_contentKeySessionQueue = v3;

    v5 = +[APRKUtilities secureStopURL];
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKContentKeyHelper init];
    }

    v6 = [MEMORY[0x277CE64D8] contentKeySessionWithKeySystem:*MEMORY[0x277CE5D20] storageDirectoryAtURL:v5];
    contentKeySession = v2->_contentKeySession;
    v2->_contentKeySession = v6;

    [(AVContentKeySession *)v2->_contentKeySession setDelegate:v2 queue:v2->_contentKeySessionQueue];
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeContentKeyRequests = v2->_activeContentKeyRequests;
    v2->_activeContentKeyRequests = v8;

    v2->_forwardsFPSSecureStopData = 0;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKContentKeyHelper init];
    }
  }

  return v2;
}

- (BOOL)isHandlingContentKeyRequestWithURLString:(id)string
{
  activeContentKeyRequests = self->_activeContentKeyRequests;
  stringCopy = string;
  allKeys = [(NSMutableDictionary *)activeContentKeyRequests allKeys];
  v6 = [allKeys containsObject:stringCopy];

  return v6;
}

- (void)registerAVURLAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    v9 = assetCopy;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
      {
        v7 = v5;
        selfCopy = self;
        LogPrintF();
      }
    }

    [(AVContentKeySession *)self->_contentKeySession addContentKeyRecipient:v9, v7, selfCopy];
  }

  MEMORY[0x2821F96F8]();
}

- (void)unregisterAVURLAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    v9 = assetCopy;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
      {
        v7 = v5;
        selfCopy = self;
        LogPrintF();
      }
    }

    [(AVContentKeySession *)self->_contentKeySession removeContentKeyRecipient:v9, v7, selfCopy];
  }

  MEMORY[0x2821F96F8]();
}

- (void)forgetAllActiveContentKeyRequests
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKContentKeyHelper forgetAllActiveContentKeyRequests];
  }

  activeContentKeyRequests = self->_activeContentKeyRequests;

  [(NSMutableDictionary *)activeContentKeyRequests removeAllObjects];
}

- (void)processUnhandledURLResponseWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy || !error)
  {
    v7 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0960]];
    v8 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0928]];
    v9 = [(NSMutableDictionary *)self->_activeContentKeyRequests objectForKey:v7];
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKContentKeyHelper processUnhandledURLResponseWithDictionary:v9 error:?];
    }

    v10 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0930]];
    if (v10)
    {
      v11 = [MEMORY[0x277CE64D0] contentKeyResponseWithFairPlayStreamingKeyResponseData:v10 renewalDate:v8];
      [v9 processContentKeyResponse:v11];
    }

    [(NSMutableDictionary *)self->_activeContentKeyRequests removeObjectForKey:v7];
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKContentKeyHelper processUnhandledURLResponseWithDictionary:error:];
    }

    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v7 = [v6 initWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    *error = v7;
  }
}

- (void)processStreamingKeyRequestWithDictionary:(id)dictionary withCompletionBlock:(id)block
{
  dictionaryCopy = dictionary;
  blockCopy = block;
  if (dictionaryCopy)
  {
    v8 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0DD0]];
    v9 = [v8 objectForKey:*MEMORY[0x277CC0EE8]];
    appIDData = self->_appIDData;
    self->_appIDData = v9;

    v11 = [v8 objectForKey:*MEMORY[0x277CC0EF0]];
    v12 = [v8 objectForKey:*MEMORY[0x277CC0FC0]];
    v13 = [v8 objectForKey:*MEMORY[0x277CC0F80]];
    v14 = [v12 objectForKey:*MEMORY[0x277CC0960]];
    if (v14 && self->_appIDData)
    {
      v15 = [(NSMutableDictionary *)self->_activeContentKeyRequests objectForKey:v14];
      v16 = v15;
      if (v15)
      {
        v25 = v15;
        allKeys = [v13 allKeys];
        v18 = [allKeys containsObject:@"CSKRO_RemoteContext"];

        if (v18)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v20 = [v13 objectForKey:@"CSKRO_RemoteContext"];
          [v19 setObject:v20 forKey:@"CSKRO_RemoteContext"];
        }

        else
        {
          v19 = 0;
        }

        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKContentKeyHelper processStreamingKeyRequestWithDictionary:withCompletionBlock:];
        }

        v22 = self->_appIDData;
        if (v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v13;
        }

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __85__APRKContentKeyHelper_processStreamingKeyRequestWithDictionary_withCompletionBlock___block_invoke;
        v26[3] = &unk_278C62698;
        v27 = blockCopy;
        v24 = v23;
        v16 = v25;
        [v25 makeStreamingContentKeyRequestDataForApp:v22 contentIdentifier:v11 options:v24 completionHandler:v26];
      }

      else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKContentKeyHelper processStreamingKeyRequestWithDictionary:withCompletionBlock:];
      }
    }

    goto LABEL_26;
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKContentKeyHelper processStreamingKeyRequestWithDictionary:withCompletionBlock:];
    if (!blockCopy)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  if (blockCopy)
  {
LABEL_11:
    v21 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = [v21 initWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v8);
LABEL_26:
  }

LABEL_27:
}

void __85__APRKContentKeyHelper_processStreamingKeyRequestWithDictionary_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5 && gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __85__APRKContentKeyHelper_processStreamingKeyRequestWithDictionary_withCompletionBlock___block_invoke_cold_1();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)_performContentKeyRequest:(id)request isRenewalRequest:(BOOL)renewalRequest
{
  renewalRequestCopy = renewalRequest;
  activeContentKeyRequests = self->_activeContentKeyRequests;
  requestCopy = request;
  identifier = [requestCopy identifier];
  [(NSMutableDictionary *)activeContentKeyRequests setObject:requestCopy forKey:identifier];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier2 = [requestCopy identifier];

  [dictionary setObject:identifier2 forKey:*MEMORY[0x277CC0960]];
  [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CC0940]];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sMessageID];
  [dictionary setObject:v10 forKey:*MEMORY[0x277CC0950]];

  if (renewalRequestCopy)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CC0948]];
  }

  ++sMessageID;
  delegate = [(APRKContentKeyHelper *)self delegate];
  [delegate contentKeyHelper:self wantsToPerformContentKeyRequestWithDictionary:dictionary];
}

- (void)contentKeySessionDidGenerateExpiredSessionReport:(id)report
{
  v26 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  if (self->_appIDData)
  {
    v5 = +[APRKUtilities secureStopURL];
    v6 = [MEMORY[0x277CE64D8] pendingExpiredSessionReportsWithAppIdentifier:self->_appIDData storageDirectoryAtURL:v5];
    v7 = v6;
    if (self->_forwardsFPSSecureStopData && v6 != 0)
    {
      v17 = v5;
      v18 = reportCopy;
      if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKContentKeyHelper contentKeySessionDidGenerateExpiredSessionReport:v7];
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v23 = @"record";
            v24 = v14;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:{1, v17, v18, v19}];
            delegate = [(APRKContentKeyHelper *)self delegate];
            [delegate contentKeyHelper:self didGenerateSecureStopRecordPayload:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v11);
      }

      v5 = v17;
      reportCopy = v18;
    }

    if (v7)
    {
      [MEMORY[0x277CE64D8] removePendingExpiredSessionReports:v7 withAppIdentifier:self->_appIDData storageDirectoryAtURL:v5];
    }
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKContentKeyHelper contentKeySessionDidGenerateExpiredSessionReport:];
  }
}

- (APRKContentKeyHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processUnhandledURLResponseWithDictionary:(void *)a1 error:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
}

- (void)contentKeySessionDidGenerateExpiredSessionReport:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 debugDescription];
  LogPrintF();
}

@end