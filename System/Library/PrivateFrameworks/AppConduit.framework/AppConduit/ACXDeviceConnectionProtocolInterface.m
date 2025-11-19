@interface ACXDeviceConnectionProtocolInterface
+ (id)interface;
+ (id)new;
+ (void)configureInterface:(id)a3;
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
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&interface_weakInterface);
  if (!WeakRetained)
  {
    v4 = MEMORY[0x277CCAE90];
    v5 = [v2 interfaceProtocol];
    WeakRetained = [v4 interfaceWithProtocol:v5];

    [v2 configureInterface:WeakRetained];
    objc_storeWeak(&interface_weakInterface, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

+ (void)configureInterface:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v4 setClasses:v7 forSelector:sel_fetchLocalizedValuesFromAllDevicesForInfoPlistKeys_forAppWithBundleID_fetchingFirstMatchingLocalizationInList_completion_ argumentIndex:0 ofReply:1];
}

@end