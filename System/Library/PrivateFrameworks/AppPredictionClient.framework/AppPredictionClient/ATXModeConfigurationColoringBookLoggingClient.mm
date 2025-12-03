@interface ATXModeConfigurationColoringBookLoggingClient
- (void)logColoringBookWasSeenForModeIdentifier:(id)identifier;
@end

@implementation ATXModeConfigurationColoringBookLoggingClient

- (void)logColoringBookWasSeenForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__ATXModeConfigurationColoringBookLoggingClient_logColoringBookWasSeenForModeIdentifier___block_invoke;
  block[3] = &unk_1E80C0C90;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(v4, block);
}

void __89__ATXModeConfigurationColoringBookLoggingClient_logColoringBookWasSeenForModeIdentifier___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E698B030]];
  v4 = *MEMORY[0x1E698B078];
  v10 = v3;
  v5 = [v3 dictionaryForKey:*MEMORY[0x1E698B078]];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*(a1 + 32)];
  [v10 setObject:v9 forKey:v4];
}

@end