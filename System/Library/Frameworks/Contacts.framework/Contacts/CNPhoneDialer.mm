@interface CNPhoneDialer
+ (BOOL)cancelDialMessage:(id)message error:(id *)error;
+ (BOOL)sendMessage:(id)message error:(id *)error;
+ (id)URLWithPhoneNumber:(id)number;
+ (id)cancelMessageWithDialMessageID:(id)d;
+ (id)dialMessageWithDataValue:(id)value displayName:(id)name;
+ (id)dialNumber:(id)number displayName:(id)name error:(id *)error;
+ (id)messageWithAdditionalParameters:(id)parameters;
+ (id)sendDialMessage:(id)message displayName:(id)name error:(id *)error;
+ (void)loadIdentityServices;
@end

@implementation CNPhoneDialer

+ (id)dialNumber:(id)number displayName:(id)name error:(id *)error
{
  v5 = [self URLWithPhoneNumber:{number, name, error}];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v5 withOptions:0];

  return 0;
}

+ (id)URLWithPhoneNumber:(id)number
{
  v3 = [self sanitizePhoneNumber:number];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tel:%@", v3];
  v6 = [v4 URLWithString:v5];

  return v6;
}

+ (id)sendDialMessage:(id)message displayName:(id)name error:(id *)error
{
  v7 = [self dialMessageWithDataValue:message displayName:name];
  v14 = 0;
  v8 = [self sendMessage:v7 error:&v14];
  v9 = v14;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    NSLog(&cfstr_ErrorDialing.isa, v9);
  }

  if (error)
  {
    v11 = v10;
    *error = v10;
  }

  v12 = [v7 objectForKey:@"guid"];

  return v12;
}

+ (id)dialMessageWithDataValue:(id)value displayName:(id)name
{
  v6 = MEMORY[0x1E695DF90];
  nameCopy = name;
  valueCopy = value;
  dictionary = [v6 dictionary];
  [dictionary setObject:@"dial" forKey:@"command"];
  [dictionary setObject:valueCopy forKey:@"TUCallServicesDestinationIDKey"];
  [dictionary setObject:valueCopy forKey:@"dataValue"];

  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"shouldPrompt"];
  [dictionary _cn_setNonNilObject:nameCopy forKey:@"displayName"];

  [dictionary setObject:&unk_1F09871C8 forKey:@"ttl"];
  v10 = [self messageWithAdditionalParameters:dictionary];

  return v10;
}

+ (BOOL)cancelDialMessage:(id)message error:(id *)error
{
  v6 = [self cancelMessageWithDialMessageID:message];
  v12 = 0;
  v7 = [self sendMessage:v6 error:&v12];
  v8 = v12;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    NSLog(&cfstr_ErrorCancellin.isa, v8);
  }

  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v7;
}

+ (id)cancelMessageWithDialMessageID:(id)d
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"command";
  v9[1] = @"message";
  v10[0] = @"cancel";
  v10[1] = d;
  v4 = MEMORY[0x1E695DF20];
  dCopy = d;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [self messageWithAdditionalParameters:v6];

  return v7;
}

+ (BOOL)sendMessage:(id)message error:(id *)error
{
  messageCopy = message;
  [self loadIdentityServices];
  v7 = [objc_alloc(NSClassFromString(&cfstr_Idsservice.isa)) initWithService:@"com.apple.private.alloy.maps"];
  accounts = [v7 accounts];
  anyObject = [accounts anyObject];

  v10 = MEMORY[0x1E695DFD8];
  registeredURIs = [anyObject registeredURIs];
  v12 = [v10 setWithArray:registeredURIs];

  v14 = 0;
  LOBYTE(error) = [v7 sendMessage:messageCopy fromAccount:anyObject toDestinations:v12 priority:300 options:0 identifier:&v14 error:error];

  return error;
}

+ (void)loadIdentityServices
{
  if (loadIdentityServices_onceToken != -1)
  {
    +[CNPhoneDialer loadIdentityServices];
  }
}

void __37__CNPhoneDialer_loadIdentityServices__block_invoke()
{
  dispatch_sync(MEMORY[0x1E69E96A0], &__block_literal_global_60);
  if (!NSClassFromString(&cfstr_Idsservice.isa))
  {
    NSLog(&cfstr_CouldNotLoadId.isa);
  }
}

void __37__CNPhoneDialer_loadIdentityServices__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/IDS.framework"];
  [v0 load];
}

+ (id)messageWithAdditionalParameters:(id)parameters
{
  v3 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  dictionary = [v3 dictionary];
  [dictionary setObject:&unk_1F09871E0 forKey:@"protocolVersion"];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [dictionary setObject:uUIDString forKey:@"guid"];

  date = [MEMORY[0x1E695DF00] date];
  [dictionary setObject:date forKey:@"timestamp"];

  [dictionary addEntriesFromDictionary:parametersCopy];

  return dictionary;
}

@end