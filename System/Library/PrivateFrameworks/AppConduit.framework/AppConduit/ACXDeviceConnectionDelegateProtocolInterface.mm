@interface ACXDeviceConnectionDelegateProtocolInterface
+ (id)interface;
+ (id)new;
+ (void)configureInterface:(id)interface;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&interface_weakInterface_137);
  if (!WeakRetained)
  {
    v4 = MEMORY[0x277CCAE90];
    interfaceProtocol = [selfCopy interfaceProtocol];
    WeakRetained = [v4 interfaceWithProtocol:interfaceProtocol];

    [selfCopy configureInterface:WeakRetained];
    objc_storeWeak(&interface_weakInterface_137, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_applicationsInstalled_onDeviceWithPairingID_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_applicationsUpdated_onDeviceWithPairingID_ argumentIndex:0 ofReply:0];
}

@end