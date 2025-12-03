@interface NFReaderSessionInterface
+ (id)interface;
+ (void)_configureInterface:(id)interface;
@end

@implementation NFReaderSessionInterface

+ (id)interface
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A5A1B0];
  [self _configureInterface:v3];

  return v3;
}

+ (void)_configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v13 = [[v3 alloc] initWithObjects:{objc_opt_class(), 0}];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v13 forSelector:sel_connect_completion_ argumentIndex:0 ofReply:0];
  [interfaceCopy setClasses:v13 forSelector:sel_connect_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v13 forSelector:sel_transceive_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v5 forSelector:sel_ndefWrite_completion_ argumentIndex:0 ofReply:0];
  [interfaceCopy setClasses:v5 forSelector:sel_ndefReadWithCompletion_ argumentIndex:1 ofReply:1];
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 initWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v12 forSelector:sel_performVAS_completion_ argumentIndex:0 ofReply:0];
  [interfaceCopy setClasses:v12 forSelector:sel_performVAS_completion_ argumentIndex:1 ofReply:1];
}

@end