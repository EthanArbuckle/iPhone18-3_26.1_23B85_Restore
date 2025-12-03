@interface BCSQRCodeParser
+ (id)sharedParser;
- (BCSNotificationServiceConnection)notificationServiceConnection;
- (id)_payloadForMRCObject:(id)object;
- (id)_qrCodeFeatureFromImage:(CGImage *)image;
- (void)_parseMetadataObject:(id)object reply:(id)reply completionHandler:(id)handler;
- (void)parseCodeFromImage:(CGImage *)image completionHandler:(id)handler;
- (void)parseCodeFromMetadataMachineReadableCodeObject:(id)object completionHandler:(id)handler;
- (void)parseCodeFromString:(id)string completionHandler:(id)handler;
- (void)postNotificationAfterParsingCodeFromImage:(CGImage *)image completion:(id)completion;
- (void)setPreferredBundleIdentifier:(id)identifier forURL:(id)l;
- (void)startQRCodeParsingSessionWithMetadataObject:(id)object completionHandler:(id)handler;
- (void)stopQRCodeParsingSession;
@end

@implementation BCSQRCodeParser

+ (id)sharedParser
{
  if (sharedParser_onceToken != -1)
  {
    +[BCSQRCodeParser sharedParser];
  }

  v3 = sharedParser_sharedParser;

  return v3;
}

uint64_t __31__BCSQRCodeParser_sharedParser__block_invoke()
{
  sharedParser_sharedParser = objc_alloc_init(BCSQRCodeParser);

  return MEMORY[0x2821F96F8]();
}

- (void)parseCodeFromMetadataMachineReadableCodeObject:(id)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__BCSQRCodeParser_parseCodeFromMetadataMachineReadableCodeObject_completionHandler___block_invoke;
  v11[3] = &unk_278CFF238;
  v11[4] = self;
  v12 = objectCopy;
  v13 = handlerCopy;
  v14 = v8;
  v9 = handlerCopy;
  v10 = objectCopy;
  [(BCSQRCodeParser *)self _parseMetadataObject:v10 reply:v11 completionHandler:v9];
}

void __84__BCSQRCodeParser_parseCodeFromMetadataMachineReadableCodeObject_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _payloadForMRCObject:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__BCSQRCodeParser_parseCodeFromMetadataMachineReadableCodeObject_completionHandler___block_invoke_2;
  v9[3] = &unk_278CFF210;
  v10 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = v7;
  v12 = v8;
  [BCSAction getActionWithData:v5 codePayload:v6 completionHandler:v9];
}

void __84__BCSQRCodeParser_parseCodeFromMetadataMachineReadableCodeObject_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = a1[4];
      v9 = 134218242;
      v10 = v4;
      v11 = 2112;
      v12 = objc_opt_class();
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: AVMetadataMachineReadableCodeObject %p QR code has resolved to action of class %@", &v9, 0x16u);
    }

    v5 = +[BCSAWDLogger sharedLogger];
    [v5 logBarcodeDetectedEventForAction:v3 startTime:a1[6]];

    (*(a1[5] + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __84__BCSQRCodeParser_parseCodeFromMetadataMachineReadableCodeObject_completionHandler___block_invoke_2_cold_1(a1);
    }

    v6 = a1[5];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:4 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_qrCodeFeatureFromImage:(CGImage *)image
{
  v29[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBF758]) initWithCGImage:image options:0];
  v4 = MEMORY[0x277CBF748];
  v5 = *MEMORY[0x277CBF718];
  v6 = *MEMORY[0x277CBF6E0];
  v7 = *MEMORY[0x277CBF6F0];
  v28[0] = *MEMORY[0x277CBF6D8];
  v28[1] = v7;
  v29[0] = v6;
  v29[1] = &unk_28539D438;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v9 = [v4 detectorOfType:v5 context:0 options:v8];

  v10 = [v9 featuresInImage:v3];
  if (![v10 count])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v17 = MEMORY[0x277D86220];
    v18 = "BCSQRCodeParser: no feature detected in the image.";
LABEL_19:
    _os_log_impl(&dword_241993000, v17, OS_LOG_TYPE_INFO, v18, buf, 2u);
    goto LABEL_20;
  }

  if ([v10 count] != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v17 = MEMORY[0x277D86220];
    v18 = "BCSQRCodeParser: we don't support multiple codes in the same image.";
    goto LABEL_19;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v22 + 1) + 8 * v15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v19 = v16;

    if (v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_11:
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v17 = MEMORY[0x277D86220];
    v18 = "BCSQRCodeParser: image has no QR code.";
    goto LABEL_19;
  }

LABEL_20:
  v19 = 0;
LABEL_21:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)parseCodeFromImage:(CGImage *)image completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!self->_parsingServiceConnection)
  {
    v7 = objc_alloc_init(BCSParsingServiceConnection);
    parsingServiceConnection = self->_parsingServiceConnection;
    self->_parsingServiceConnection = v7;
  }

  v9 = [(BCSQRCodeParser *)self _qrCodeFeatureFromImage:image];
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = v9;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: Start parsing CIQRCodeFeature %p", buf, 0xCu);
    }

    v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v11 = self->_parsingServiceConnection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__BCSQRCodeParser_parseCodeFromImage_completionHandler___block_invoke;
    v14[3] = &unk_278CFF260;
    v15 = v9;
    v16 = handlerCopy;
    v17 = v10;
    [(BCSParsingServiceConnection *)v11 parseQRCodeFeature:v15 withReply:v14];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:2 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __56__BCSQRCodeParser_parseCodeFromImage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 134218240;
      v16 = v7;
      v17 = 2048;
      v18 = [v5 type];
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: QR code from CIQRCodeFeature %p has type %ld", buf, 0x16u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__BCSQRCodeParser_parseCodeFromImage_completionHandler___block_invoke_11;
    v11[3] = &unk_278CFF210;
    v12 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13 = v8;
    v14 = v9;
    [BCSAction getActionWithData:v5 codePayload:0 completionHandler:v11];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __56__BCSQRCodeParser_parseCodeFromImage_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__BCSQRCodeParser_parseCodeFromImage_completionHandler___block_invoke_11(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = a1[4];
      v9 = 134218242;
      v10 = v4;
      v11 = 2112;
      v12 = objc_opt_class();
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: QR code from CIQRCodeFeature %p has resolved to action of class %@", &v9, 0x16u);
    }

    v5 = +[BCSAWDLogger sharedLogger];
    [v5 logBarcodeDetectedEventForAction:v3 startTime:a1[6]];

    (*(a1[5] + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __56__BCSQRCodeParser_parseCodeFromImage_completionHandler___block_invoke_11_cold_1(a1);
    }

    v6 = a1[5];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:4 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)parseCodeFromString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  parsingServiceConnection = self->_parsingServiceConnection;
  if (!parsingServiceConnection)
  {
    v10 = objc_alloc_init(BCSParsingServiceConnection);
    v11 = self->_parsingServiceConnection;
    self->_parsingServiceConnection = v10;

    parsingServiceConnection = self->_parsingServiceConnection;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke;
  v13[3] = &unk_278CFF2B0;
  v14 = handlerCopy;
  v15 = v8;
  v12 = handlerCopy;
  [(BCSParsingServiceConnection *)parsingServiceConnection parseQRCodeString:stringCopy withReply:v13];
}

void __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke_cold_1(v5);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke_13;
    v11[3] = &unk_278CFF288;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    [BCSAction getActionWithData:v5 codePayload:0 completionHandler:v11];
    v9 = v12;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke_cold_2();
    }

    v10 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:3 userInfo:0];
    (*(v10 + 16))(v10, 0, v9);
  }
}

void __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke_13_cold_1();
    }

    v4 = +[BCSAWDLogger sharedLogger];
    [v4 logBarcodeDetectedEventForAction:v3 startTime:*(a1 + 40)];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke_13_cold_2();
    }

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:4 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

- (void)postNotificationAfterParsingCodeFromImage:(CGImage *)image completion:(id)completion
{
  completionCopy = completion;
  if (!self->_parsingServiceConnection)
  {
    v7 = objc_alloc_init(BCSParsingServiceConnection);
    parsingServiceConnection = self->_parsingServiceConnection;
    self->_parsingServiceConnection = v7;
  }

  v9 = [(BCSQRCodeParser *)self _qrCodeFeatureFromImage:image];
  if (v9)
  {
    v10 = self->_parsingServiceConnection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke;
    v12[3] = &unk_278CFF2F8;
    v12[4] = self;
    v13 = completionCopy;
    [(BCSParsingServiceConnection *)v10 parseQRCodeFeature:v9 withReply:v12];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

void __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke_cold_1(v5);
    }

    v7 = [*(a1 + 32) notificationServiceConnection];
    [v7 notifyParsedCodeWithData:v5 codePayload:0 shouldReplacePreviousNotifications:1 withReply:&__block_literal_global_17];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke_14_cold_1(v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: Finished notification successfully", v6, 2u);
  }
}

- (void)_parseMetadataObject:(id)object reply:(id)reply completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  replyCopy = reply;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = objectCopy;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: Start parsing AVMetadataMachineReadableCodeObject %p", buf, 0xCu);
  }

  type = [objectCopy type];
  basicDescriptor = [objectCopy basicDescriptor];
  if (basicDescriptor)
  {
    if (!self->_parsingServiceConnection)
    {
      v13 = objc_alloc_init(BCSParsingServiceConnection);
      parsingServiceConnection = self->_parsingServiceConnection;
      self->_parsingServiceConnection = v13;
    }

    if ([type isEqualToString:*MEMORY[0x277CE5A80]])
    {
      v15 = self->_parsingServiceConnection;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __64__BCSQRCodeParser__parseMetadataObject_reply_completionHandler___block_invoke;
      v25[3] = &unk_278CFF320;
      v26 = objectCopy;
      v27 = handlerCopy;
      v28 = replyCopy;
      [(BCSParsingServiceConnection *)v15 parseQRCodeMetadata:basicDescriptor withReply:v25];

      v16 = v26;
LABEL_18:

      goto LABEL_19;
    }

    if ([type isEqualToString:@"com.apple.AppClipCode"])
    {
      v16 = [basicDescriptor objectForKeyedSubscript:@"RawData"];
      v17 = [basicDescriptor objectForKeyedSubscript:@"Version"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        integerValue = [v17 integerValue];
        *buf = 134218240;
        v30 = objectCopy;
        v31 = 2048;
        v32 = integerValue;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: AVMetadataMachineReadableCodeObject %p has app clip code version %ld", buf, 0x16u);
      }

      v19 = self->_parsingServiceConnection;
      integerValue2 = [v17 integerValue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __64__BCSQRCodeParser__parseMetadataObject_reply_completionHandler___block_invoke_18;
      v22[3] = &unk_278CFF348;
      v23 = objectCopy;
      v24 = replyCopy;
      [(BCSParsingServiceConnection *)v19 decodeAppClipCodeURLWithEncodedData:v16 codingVersion:integerValue2 requiresAuthorization:0 withReply:v22];

      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSQRCodeParser _parseMetadataObject:objectCopy reply:? completionHandler:?];
      if (!handlerCopy)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSQRCodeParser _parseMetadataObject:reply:completionHandler:];
    if (!handlerCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (handlerCopy)
  {
LABEL_17:
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:2 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
    goto LABEL_18;
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

void __64__BCSQRCodeParser__parseMetadataObject_reply_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v11 = 134218240;
      v12 = v7;
      v13 = 2048;
      v14 = [v5 type];
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: AVMetadataMachineReadableCodeObject %p QR code has type %ld", &v11, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __64__BCSQRCodeParser__parseMetadataObject_reply_completionHandler___block_invoke_cold_1(a1);
    }

    v8 = a1[5];
    if (v8)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:3 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __64__BCSQRCodeParser__parseMetadataObject_reply_completionHandler___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 _bcs_isWalletRemoteRequestURL] && _os_feature_enabled_impl())
    {
      v7 = [[BCSParsedURLData alloc] initWithURL:v5 type:16];
    }

    else
    {
      v7 = [[BCSParsedURLData alloc] initWithURL:v5];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __64__BCSQRCodeParser__parseMetadataObject_reply_completionHandler___block_invoke_18_cold_1();
    }

    v7 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:1 invalidContents:0];
  }

  v8 = v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v11 = 134218243;
    v12 = v9;
    v13 = 2113;
    v14 = v5;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: AVMetadataMachineReadableCodeObject %p has app clip code with url %{private}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (BCSNotificationServiceConnection)notificationServiceConnection
{
  notificationServiceConnection = self->_notificationServiceConnection;
  if (!notificationServiceConnection)
  {
    v4 = objc_alloc_init(BCSNotificationServiceConnection);
    v5 = self->_notificationServiceConnection;
    self->_notificationServiceConnection = v4;

    notificationServiceConnection = self->_notificationServiceConnection;
  }

  return notificationServiceConnection;
}

- (id)_payloadForMRCObject:(id)object
{
  objectCopy = object;
  type = [objectCopy type];
  v5 = [type isEqualToString:*MEMORY[0x277CE5A80]];

  if (v5)
  {
    v6 = [BCSQRCodePayload alloc];
    descriptor = [objectCopy descriptor];
    v8 = [(BCSQRCodePayload *)v6 initWithBarcodeDescriptor:descriptor];
LABEL_5:

    goto LABEL_7;
  }

  type2 = [objectCopy type];
  v10 = [type2 isEqualToString:@"com.apple.AppClipCode"];

  if (v10)
  {
    descriptor = [objectCopy basicDescriptor];
    v11 = [descriptor objectForKeyedSubscript:@"RawData"];
    v12 = [descriptor objectForKeyedSubscript:@"Version"];
    v8 = -[BCSAppclipCodePayload initWithData:version:]([BCSAppclipCodePayload alloc], "initWithData:version:", v11, [v12 unsignedIntegerValue]);

    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)startQRCodeParsingSessionWithMetadataObject:(id)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__BCSQRCodeParser_startQRCodeParsingSessionWithMetadataObject_completionHandler___block_invoke;
  v10[3] = &unk_278CFF370;
  v10[4] = self;
  v11 = objectCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = objectCopy;
  [(BCSQRCodeParser *)self _parseMetadataObject:v9 reply:v10 completionHandler:v8];
}

void __81__BCSQRCodeParser_startQRCodeParsingSessionWithMetadataObject_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__BCSQRCodeParser_startQRCodeParsingSessionWithMetadataObject_completionHandler___block_invoke_2;
  block[3] = &unk_278CFEF98;
  v4 = a1[5];
  block[4] = a1[4];
  v8 = v4;
  v5 = v3;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0);
  }
}

void __81__BCSQRCodeParser_startQRCodeParsingSessionWithMetadataObject_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _payloadForMRCObject:*(a1 + 40)];
  v2 = [*(a1 + 32) notificationServiceConnection];
  [v2 notifyParsedCodeWithData:*(a1 + 48) codePayload:v3 shouldReplacePreviousNotifications:1 withReply:&__block_literal_global_28];
}

void __81__BCSQRCodeParser_startQRCodeParsingSessionWithMetadataObject_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke_14_cold_1(v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSQRCodeParser: Finished notification successfully", v6, 2u);
  }
}

- (void)stopQRCodeParsingSession
{
  notificationServiceConnection = [(BCSQRCodeParser *)self notificationServiceConnection];
  [notificationServiceConnection cancelNotificationsForCodeType:1];
}

- (void)setPreferredBundleIdentifier:(id)identifier forURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  parsingServiceConnection = self->_parsingServiceConnection;
  if (!parsingServiceConnection)
  {
    v8 = objc_alloc_init(BCSParsingServiceConnection);
    v9 = self->_parsingServiceConnection;
    self->_parsingServiceConnection = v8;

    parsingServiceConnection = self->_parsingServiceConnection;
  }

  [(BCSParsingServiceConnection *)parsingServiceConnection setPreferredBundleIdentifier:identifierCopy forURL:lCopy];
}

void __84__BCSQRCodeParser_parseCodeFromMetadataMachineReadableCodeObject_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__BCSQRCodeParser_parseCodeFromImage_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__BCSQRCodeParser_parseCodeFromImage_completionHandler___block_invoke_11_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 type];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_241993000, MEMORY[0x277D86220], v1, "BCSQRCodeParser: Detected QR code has type %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__BCSQRCodeParser_parseCodeFromString_completionHandler___block_invoke_13_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_241993000, MEMORY[0x277D86220], v0, "BCSQRCodeParser: Detected QR code has resolved to action of class %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 type];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_241993000, MEMORY[0x277D86220], v1, "BCSQRCodeParser: QR code from image has type %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__BCSQRCodeParser_postNotificationAfterParsingCodeFromImage_completion___block_invoke_14_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_parseMetadataObject:(void *)a1 reply:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 type];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_parseMetadataObject:reply:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__BCSQRCodeParser__parseMetadataObject_reply_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__BCSQRCodeParser__parseMetadataObject_reply_completionHandler___block_invoke_18_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end