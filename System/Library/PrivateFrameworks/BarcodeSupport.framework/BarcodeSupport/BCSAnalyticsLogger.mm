@interface BCSAnalyticsLogger
+ (id)sharedLogger;
- (id)_eventPayloadForAction:(id)a3;
- (id)_initWithQueue:(id)a3;
- (id)_stringForCodeType:(int64_t)a3;
- (id)_stringForDataType:(int64_t)a3;
- (void)_sendEventLazyWithName:(id)a3 payload:(id)a4;
- (void)didScanNFCTagOfType:(int64_t)a3;
- (void)logBarcodeActivatedEventForAction:(id)a3;
- (void)logBarcodeDetectedEventForAction:(id)a3 fromBundleID:(id)a4;
- (void)logBarcodePreviewedEventForContentType:(int64_t)a3;
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

- (id)_initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BCSAnalyticsLogger;
  v6 = [(BCSAnalyticsLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = v7;
  }

  return v7;
}

- (void)didScanNFCTagOfType:(int64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a3)
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

- (void)_sendEventLazyWithName:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__BCSAnalyticsLogger__sendEventLazyWithName_payload___block_invoke;
  v11[3] = &unk_278CFEE40;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

void __53__BCSAnalyticsLogger__sendEventLazyWithName_payload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

- (id)_stringForCodeType:(int64_t)a3
{
  v3 = @"QR";
  if (a3 == 2)
  {
    v3 = @"NFC";
  }

  if (a3 == 3)
  {
    return @"Appclip";
  }

  else
  {
    return v3;
  }
}

- (id)_stringForDataType:(int64_t)a3
{
  if (a3 > 0x11)
  {
    return @"Other";
  }

  else
  {
    return *(&off_278CFEE60 + a3);
  }
}

- (id)_eventPayloadForAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 bundleIdentifier];
    [v5 setObject:v7 forKeyedSubscript:@"client"];

    v8 = -[BCSAnalyticsLogger _stringForCodeType:](self, "_stringForCodeType:", [v4 codeType]);
    [v5 setObject:v8 forKeyedSubscript:@"codeType"];

    v9 = [v4 data];
    v10 = -[BCSAnalyticsLogger _stringForDataType:](self, "_stringForDataType:", [v9 type]);
    [v5 setObject:v10 forKeyedSubscript:@"dataType"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = v4;
      v13 = [v12 appLinks];
      v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      [v5 setObject:v14 forKeyedSubscript:@"applinks"];

      v15 = MEMORY[0x277CCABB0];
      v16 = [v12 mustOpenAppLinkInApp];

      v17 = [v15 numberWithBool:v16];
      [v5 setObject:v17 forKeyedSubscript:@"openInApp"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)logBarcodeDetectedEventForAction:(id)a3 fromBundleID:(id)a4
{
  v8 = a4;
  v6 = [(BCSAnalyticsLogger *)self _eventPayloadForAction:a3];
  v7 = [v6 mutableCopy];

  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"client"];
  }

  [(BCSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.BarcodeSupport.DidDetectBarcode" payload:v7];
}

- (void)logBarcodeActivatedEventForAction:(id)a3
{
  v4 = [(BCSAnalyticsLogger *)self _eventPayloadForAction:a3];
  [(BCSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.BarcodeSupport.DidActivateBarcode" payload:v4];
}

- (void)logBarcodePreviewedEventForContentType:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"contentType";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(BCSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.BarcodeSupport.DidPreviewContent" payload:v5];

  v6 = *MEMORY[0x277D85DE8];
}

@end