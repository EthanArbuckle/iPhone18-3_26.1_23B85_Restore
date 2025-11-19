@interface SCLog
+ (id)client;
+ (id)clientUI;
@end

@implementation SCLog

+ (id)client
{
  if (client_onceToken != -1)
  {
    +[SCLog client];
  }

  v3 = client__client;

  return v3;
}

uint64_t __15__SCLog_client__block_invoke()
{
  client__client = os_log_create(kSCLogSubsystem, "client");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)clientUI
{
  if (clientUI_onceToken != -1)
  {
    +[SCLog clientUI];
  }

  v3 = clientUI__client;

  return v3;
}

uint64_t __17__SCLog_clientUI__block_invoke()
{
  clientUI__client = os_log_create(kSCLogSubsystem, "clientUI");

  return MEMORY[0x1EEE66BB8]();
}

@end