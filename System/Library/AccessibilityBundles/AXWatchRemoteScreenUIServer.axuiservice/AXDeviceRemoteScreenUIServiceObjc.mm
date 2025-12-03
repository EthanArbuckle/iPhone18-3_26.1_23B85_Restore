@interface AXDeviceRemoteScreenUIServiceObjc
+ (id)sharedInstance;
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier;
@end

@implementation AXDeviceRemoteScreenUIServiceObjc

+ (id)sharedInstance
{
  if (qword_C940 != -1)
  {
    sub_4290();
  }

  v3 = qword_C938;

  return v3;
}

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  withIdentifierCopy = withIdentifier;
  messageCopy = message;
  service = [(AXDeviceRemoteScreenUIServiceObjc *)self service];
  v13 = [service processMessage:messageCopy withIdentifier:identifier fromClientWithIdentifier:withIdentifierCopy error:error];

  return v13;
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AXDeviceRemoteScreenUIServiceObjc connectionWillBeInterruptedForClientWithIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[TWICE]: %s, %@", &v7, 0x16u);
  }

  service = [(AXDeviceRemoteScreenUIServiceObjc *)self service];
  [service clientConnectionWasInterrupted];
}

@end