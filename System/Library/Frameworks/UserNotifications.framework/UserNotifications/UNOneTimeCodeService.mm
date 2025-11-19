@interface UNOneTimeCodeService
+ (id)clientInterface;
+ (id)serverInterface;
@end

@implementation UNOneTimeCodeService

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[UNOneTimeCodeService clientInterface];
  }

  v3 = clientInterface___interface;

  return v3;
}

void __39__UNOneTimeCodeService_clientInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30A0810];
  v1 = clientInterface___interface;
  clientInterface___interface = v0;

  v2 = clientInterface___interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_detectedOneTimeCodes_ argumentIndex:0 ofReply:0];
}

+ (id)serverInterface
{
  if (serverInterface_onceToken != -1)
  {
    +[UNOneTimeCodeService serverInterface];
  }

  v3 = serverInterface___interface;

  return v3;
}

void __39__UNOneTimeCodeService_serverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30A98A8];
  v1 = serverInterface___interface;
  serverInterface___interface = v0;

  v2 = serverInterface___interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_consumeCode_ argumentIndex:0 ofReply:0];
}

@end