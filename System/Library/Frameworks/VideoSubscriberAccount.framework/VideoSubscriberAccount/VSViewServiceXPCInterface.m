@interface VSViewServiceXPCInterface
+ (id)viewServiceHostInterface;
@end

@implementation VSViewServiceXPCInterface

+ (id)viewServiceHostInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E0E550];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel__request_didFailWithError_ argumentIndex:1 ofReply:0];

  return v2;
}

@end