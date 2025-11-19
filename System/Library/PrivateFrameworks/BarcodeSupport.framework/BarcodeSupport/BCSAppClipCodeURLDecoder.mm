@interface BCSAppClipCodeURLDecoder
+ (id)sharedDecoder;
- (BCSAppClipCodeURLDecoder)init;
- (void)parseEncodedURLData:(id)a3 version:(unint64_t)a4 completion:(id)a5;
@end

@implementation BCSAppClipCodeURLDecoder

+ (id)sharedDecoder
{
  if (sharedDecoder_onceToken != -1)
  {
    +[BCSAppClipCodeURLDecoder sharedDecoder];
  }

  v3 = sharedDecoder_sharedDecoder;

  return v3;
}

uint64_t __41__BCSAppClipCodeURLDecoder_sharedDecoder__block_invoke()
{
  sharedDecoder_sharedDecoder = objc_alloc_init(BCSAppClipCodeURLDecoder);

  return MEMORY[0x2821F96F8]();
}

- (BCSAppClipCodeURLDecoder)init
{
  v7.receiver = self;
  v7.super_class = BCSAppClipCodeURLDecoder;
  v2 = [(BCSAppClipCodeURLDecoder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(BCSParsingServiceConnection);
    serviceConnection = v2->_serviceConnection;
    v2->_serviceConnection = v3;

    v5 = v2;
  }

  return v2;
}

- (void)parseEncodedURLData:(id)a3 version:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  serviceConnection = self->_serviceConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__BCSAppClipCodeURLDecoder_parseEncodedURLData_version_completion___block_invoke;
  v14[3] = &unk_278CFF670;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  [(BCSParsingServiceConnection *)serviceConnection decodeAppClipCodeURLWithEncodedData:v13 codingVersion:a4 requiresAuthorization:0 withReply:v14];
}

void __67__BCSAppClipCodeURLDecoder_parseEncodedURLData_version_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    v7 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:1 invalidContents:0];
  }

  else if ([v5 _bcs_isWalletRemoteRequestURL] && _os_feature_enabled_impl())
  {
    v7 = [[BCSParsedURLData alloc] initWithURL:v6 type:16];
  }

  else
  {
    v7 = [[BCSParsedURLData alloc] initWithURL:v6];
  }

  v8 = v7;
  v9 = [[BCSAppclipCodePayload alloc] initWithData:*(a1 + 32) version:*(a1 + 48)];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__BCSAppClipCodeURLDecoder_parseEncodedURLData_version_completion___block_invoke_2;
  v12[3] = &unk_278CFF210;
  v13 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v14 = v10;
  v15 = v11;
  [BCSAction getActionWithData:v8 codePayload:v9 completionHandler:v12];
}

void __67__BCSAppClipCodeURLDecoder_parseEncodedURLData_version_completion___block_invoke_2(void *a1, void *a2)
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
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSAppClipCodeURLDecoder: App clip code [%p] has resolved to action of class %@", &v9, 0x16u);
    }

    v5 = +[BCSAWDLogger sharedLogger];
    [v5 logBarcodeDetectedEventForAction:v3 startTime:a1[6]];

    (*(a1[5] + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __67__BCSAppClipCodeURLDecoder_parseEncodedURLData_version_completion___block_invoke_2_cold_1(a1);
    }

    v6 = a1[5];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:4 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __67__BCSAppClipCodeURLDecoder_parseEncodedURLData_version_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = 134217984;
  v4 = v1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSAppClipCodeURLDecoder: App clip code payload [%p] is not actionable", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end