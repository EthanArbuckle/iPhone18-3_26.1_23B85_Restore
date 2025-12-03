@interface BCSAnalyticsLogger
+ (id)sharedLogger;
- (id)_eventPayloadForAction:(id)action;
- (id)_initWithQueue:(id)queue;
- (id)_stringForCodeType:(int64_t)type;
- (id)_stringForDataType:(int64_t)type;
- (void)_sendEventLazyWithName:(id)name payload:(id)payload;
- (void)didScanNFCTagOfType:(int64_t)type;
- (void)logBarcodeActivatedEventForAction:(id)action;
- (void)logBarcodeDetectedEventForAction:(id)action fromBundleID:(id)d;
- (void)logBarcodePreviewedEventForContentType:(int64_t)type;
@end

@implementation BCSAnalyticsLogger

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    +[BCSAnalyticsLogger sharedLogger];
  }

  v3 = sharedLogger_sharedLogger;

  return v3;
}

void __34__BCSAnalyticsLogger_sharedLogger__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("com.apple.BarcodeSupport.Analytics", v0);

  v1 = [[BCSAnalyticsLogger alloc] _initWithQueue:v3];
  v2 = sharedLogger_sharedLogger;
  sharedLogger_sharedLogger = v1;
}

- (id)_initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = BCSAnalyticsLogger;
  v6 = [(BCSAnalyticsLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)didScanNFCTagOfType:(int64_t)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (type)
  {
    v4 = @"appclip";
  }

  else
  {
    v4 = @"url";
  }

  v9 = @"tagDataType";
  v10[0] = v4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = v4;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(BCSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.BarcodeSupport.DidScanNFCTag" payload:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendEventLazyWithName:(id)name payload:(id)payload
{
  nameCopy = name;
  payloadCopy = payload;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__BCSAnalyticsLogger__sendEventLazyWithName_payload___block_invoke;
  v11[3] = &unk_278CFEE40;
  v12 = nameCopy;
  v13 = payloadCopy;
  v9 = payloadCopy;
  v10 = nameCopy;
  dispatch_async(queue, v11);
}

void __53__BCSAnalyticsLogger__sendEventLazyWithName_payload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

- (id)_stringForCodeType:(int64_t)type
{
  v3 = @"QR";
  if (type == 2)
  {
    v3 = @"NFC";
  }

  if (type == 3)
  {
    return @"Appclip";
  }

  else
  {
    return v3;
  }
}

- (id)_stringForDataType:(int64_t)type
{
  if (type > 0x11)
  {
    return @"Other";
  }

  else
  {
    return *(&off_278CFEE60 + type);
  }
}

- (id)_eventPayloadForAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [dictionary setObject:bundleIdentifier forKeyedSubscript:@"client"];

    v8 = -[BCSAnalyticsLogger _stringForCodeType:](self, "_stringForCodeType:", [actionCopy codeType]);
    [dictionary setObject:v8 forKeyedSubscript:@"codeType"];

    data = [actionCopy data];
    v10 = -[BCSAnalyticsLogger _stringForDataType:](self, "_stringForDataType:", [data type]);
    [dictionary setObject:v10 forKeyedSubscript:@"dataType"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = actionCopy;
      appLinks = [v12 appLinks];
      v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(appLinks, "count")}];
      [dictionary setObject:v14 forKeyedSubscript:@"applinks"];

      v15 = MEMORY[0x277CCABB0];
      mustOpenAppLinkInApp = [v12 mustOpenAppLinkInApp];

      v17 = [v15 numberWithBool:mustOpenAppLinkInApp];
      [dictionary setObject:v17 forKeyedSubscript:@"openInApp"];
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (void)logBarcodeDetectedEventForAction:(id)action fromBundleID:(id)d
{
  dCopy = d;
  v6 = [(BCSAnalyticsLogger *)self _eventPayloadForAction:action];
  v7 = [v6 mutableCopy];

  if (dCopy)
  {
    [v7 setObject:dCopy forKeyedSubscript:@"client"];
  }

  [(BCSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.BarcodeSupport.DidDetectBarcode" payload:v7];
}

- (void)logBarcodeActivatedEventForAction:(id)action
{
  v4 = [(BCSAnalyticsLogger *)self _eventPayloadForAction:action];
  [(BCSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.BarcodeSupport.DidActivateBarcode" payload:v4];
}

- (void)logBarcodePreviewedEventForContentType:(int64_t)type
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"contentType";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(BCSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.BarcodeSupport.DidPreviewContent" payload:v5];

  v6 = *MEMORY[0x277D85DE8];
}

@end