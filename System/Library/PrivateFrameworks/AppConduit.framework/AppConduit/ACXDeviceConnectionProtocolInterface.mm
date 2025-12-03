@interface ACXDeviceConnectionProtocolInterface
+ (id)interface;
+ (id)new;
+ (void)configureInterface:(id)interface;
- (ACXDeviceConnectionProtocolInterface)init;
@end

@implementation ACXDeviceConnectionProtocolInterface

- (ACXDeviceConnectionProtocolInterface)init
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
  WeakRetained = objc_loadWeakRetained(&interface_weakInterface);
  if (!WeakRetained)
  {
    v4 = MEMORY[0x277CCAE90];
    interfaceProtocol = [selfCopy interfaceProtocol];
    WeakRetained = [v4 interfaceWithProtocol:interfaceProtocol];

    [selfCopy configureInterface:WeakRetained];
    objc_storeWeak(&interface_weakInterface, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v7 forSelector:sel_fetchLocalizedValuesFromAllDevicesForInfoPlistKeys_forAppWithBundleID_fetchingFirstMatchingLocalizationInList_completion_ argumentIndex:0 ofReply:1];
}

@end