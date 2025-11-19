@interface ACXDeviceConnectionDelegateProtocolInterface
+ (id)interface;
+ (id)new;
+ (void)configureInterface:(id)a3;
- (ACXDeviceConnectionDelegateProtocolInterface)init;
@end

@implementation ACXDeviceConnectionDelegateProtocolInterface

- (ACXDeviceConnectionDelegateProtocolInterface)init
{
  result = _os_crash();
  __break(1u);
  return result;
}

+ (id)new
{
  result = _os_crash();
  __break(1u);
  return result;
}

+ (id)interface
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&interface_weakInterface_137);
  if (!WeakRetained)
  {
    v4 = MEMORY[0x277CCAE90];
    v5 = [v2 interfaceProtocol];
    WeakRetained = [v4 interfaceWithProtocol:v5];

    [v2 configureInterface:WeakRetained];
    objc_storeWeak(&interface_weakInterface_137, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

+ (void)configureInterface:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [v4 setClasses:v6 forSelector:sel_applicationsInstalled_onDeviceWithPairingID_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v4 setClasses:v9 forSelector:sel_applicationsUpdated_onDeviceWithPairingID_ argumentIndex:0 ofReply:0];
}

@end