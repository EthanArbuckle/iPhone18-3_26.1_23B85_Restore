@interface CNPhoneDialer
+ (BOOL)cancelDialMessage:(id)a3 error:(id *)a4;
+ (BOOL)sendMessage:(id)a3 error:(id *)a4;
+ (id)URLWithPhoneNumber:(id)a3;
+ (id)cancelMessageWithDialMessageID:(id)a3;
+ (id)dialMessageWithDataValue:(id)a3 displayName:(id)a4;
+ (id)dialNumber:(id)a3 displayName:(id)a4 error:(id *)a5;
+ (id)messageWithAdditionalParameters:(id)a3;
+ (id)sendDialMessage:(id)a3 displayName:(id)a4 error:(id *)a5;
+ (void)loadIdentityServices;
@end

@implementation CNPhoneDialer

+ (id)dialNumber:(id)a3 displayName:(id)a4 error:(id *)a5
{
  v5 = [a1 URLWithPhoneNumber:{a3, a4, a5}];
  v6 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v6 openSensitiveURL:v5 withOptions:0];

  return 0;
}

+ (id)URLWithPhoneNumber:(id)a3
{
  v3 = [a1 sanitizePhoneNumber:a3];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tel:%@", v3];
  v6 = [v4 URLWithString:v5];

  return v6;
}

+ (id)sendDialMessage:(id)a3 displayName:(id)a4 error:(id *)a5
{
  v7 = [a1 dialMessageWithDataValue:a3 displayName:a4];
  v14 = 0;
  v8 = [a1 sendMessage:v7 error:&v14];
  v9 = v14;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    NSLog(&cfstr_ErrorDialing.isa, v9);
  }

  if (a5)
  {
    v11 = v10;
    *a5 = v10;
  }

  v12 = [v7 objectForKey:@"guid"];

  return v12;
}

+ (id)dialMessageWithDataValue:(id)a3 displayName:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  [v9 setObject:@"dial" forKey:@"command"];
  [v9 setObject:v8 forKey:@"TUCallServicesDestinationIDKey"];
  [v9 setObject:v8 forKey:@"dataValue"];

  [v9 setObject:MEMORY[0x1E695E118] forKey:@"shouldPrompt"];
  [v9 _cn_setNonNilObject:v7 forKey:@"displayName"];

  [v9 setObject:&unk_1F09871C8 forKey:@"ttl"];
  v10 = [a1 messageWithAdditionalParameters:v9];

  return v10;
}

+ (BOOL)cancelDialMessage:(id)a3 error:(id *)a4
{
  v6 = [a1 cancelMessageWithDialMessageID:a3];
  v12 = 0;
  v7 = [a1 sendMessage:v6 error:&v12];
  v8 = v12;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    NSLog(&cfstr_ErrorCancellin.isa, v8);
  }

  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v7;
}

+ (id)cancelMessageWithDialMessageID:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"command";
  v9[1] = @"message";
  v10[0] = @"cancel";
  v10[1] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [a1 messageWithAdditionalParameters:v6];

  return v7;
}

+ (BOOL)sendMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  [a1 loadIdentityServices];
  v7 = [objc_alloc(NSClassFromString(&cfstr_Idsservice.isa)) initWithService:@"com.apple.private.alloy.maps"];
  v8 = [v7 accounts];
  v9 = [v8 anyObject];

  v10 = MEMORY[0x1E695DFD8];
  v11 = [v9 registeredURIs];
  v12 = [v10 setWithArray:v11];

  v14 = 0;
  LOBYTE(a4) = [v7 sendMessage:v6 fromAccount:v9 toDestinations:v12 priority:300 options:0 identifier:&v14 error:a4];

  return a4;
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

+ (id)messageWithAdditionalParameters:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  [v5 setObject:&unk_1F09871E0 forKey:@"protocolVersion"];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  [v5 setObject:v7 forKey:@"guid"];

  v8 = [MEMORY[0x1E695DF00] date];
  [v5 setObject:v8 forKey:@"timestamp"];

  [v5 addEntriesFromDictionary:v4];

  return v5;
}

@end