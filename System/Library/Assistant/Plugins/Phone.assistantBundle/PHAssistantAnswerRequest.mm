@interface PHAssistantAnswerRequest
- (void)performWithCompletion:(id)a3;
@end

@implementation PHAssistantAnswerRequest

- (void)performWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = self;
    _os_log_impl(&dword_233521000, v5, OS_LOG_TYPE_DEFAULT, "Received Siri request to answer: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilephone.%@", objc_opt_class()];
  v7 = dispatch_queue_create([v6 UTF8String], 0);

  v8 = [MEMORY[0x277D6EDF8] callCenterWithQueue:v7];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_233522510;
  block[3] = &unk_2789DD7C0;
  v13 = v8;
  v14 = v4;
  v9 = v4;
  v10 = v8;
  dispatch_sync(v7, block);

  v11 = *MEMORY[0x277D85DE8];
}

@end