@interface NLXPCSpellServerClient
+ (id)spellServerClient;
+ (void)requestAssetsForLanguage:(id)language;
- (NLXPCSpellServerClient)initWithServerName:(id)name;
- (void)dealloc;
- (void)sendCommand:(id)command;
@end

@implementation NLXPCSpellServerClient

- (NLXPCSpellServerClient)initWithServerName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = NLXPCSpellServerClient;
  v5 = [(NLXPCSpellServerClient *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F10DA4E8];
    v7 = [nameCopy copy];
    serverName = v5->_serverName;
    v5->_serverName = v7;

    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v5->_serverName options:0];
    connection = v5->_connection;
    v5->_connection = v9;

    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v6];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__NLXPCSpellServerClient_initWithServerName___block_invoke;
    v12[3] = &unk_1E7628FC8;
    v13 = v5;
    [(NSXPCConnection *)v5->_connection setInvalidationHandler:v12];
    [(NSXPCConnection *)v5->_connection resume];
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = NLXPCSpellServerClient;
  [(NLXPCSpellServerClient *)&v3 dealloc];
}

- (void)sendCommand:(id)command
{
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:command format:100 options:0 error:0];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_11];
  v6 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  v7 = [@"!!!command!!!" stringByAppendingString:v6];

  [v5 _xpc_checkString:v7 offset:0 types:2 options:&unk_1F10D14D8 orthography:0 learnedDictionaries:0 completionHandler:&__block_literal_global_31_0];
}

+ (id)spellServerClient
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__NLXPCSpellServerClient_spellServerClient__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (spellServerClient_onceToken != -1)
  {
    dispatch_once(&spellServerClient_onceToken, block);
  }

  v2 = spellServerClient__xpcServer;

  return v2;
}

uint64_t __43__NLXPCSpellServerClient_spellServerClient__block_invoke(uint64_t a1)
{
  spellServerClient__xpcServer = [objc_alloc(*(a1 + 32)) initWithServerName:@"mul-xpc (Apple)_OpenStep"];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)requestAssetsForLanguage:(id)language
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (language)
  {
    languageCopy = language;
    spellServerClient = [self spellServerClient];
    v8[0] = @"Command";
    v8[1] = @"Language";
    v9[0] = @"RequestAssets";
    v9[1] = languageCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

    [spellServerClient sendCommand:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end