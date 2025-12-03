@interface NPHCSAppCellularDataUsageItem
- (BOOL)isCellularDataEnabled;
- (BOOL)isForAnApp;
- (BOOL)isWiFiDataEnabled;
- (NPHCSAppCellularDataUsageItem)init;
- (NPHCSAppCellularDataUsageItem)initWithCTAppDataUsageItem:(id)item;
- (id)chinaSKUWirelessDataOptionForCellularSetup:(BOOL)setup;
- (void)setDisplayName:(id)name;
- (void)setUsagePoliciesForCellular:(BOOL)cellular andWifi:(BOOL)wifi;
@end

@implementation NPHCSAppCellularDataUsageItem

- (NPHCSAppCellularDataUsageItem)init
{
  v3.receiver = self;
  v3.super_class = NPHCSAppCellularDataUsageItem;
  return [(NPHCSAppCellularDataUsageItem *)&v3 init];
}

- (NPHCSAppCellularDataUsageItem)initWithCTAppDataUsageItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = NPHCSAppCellularDataUsageItem;
  v5 = [(NPHCSAppCellularDataUsageItem *)&v17 init];
  if (v5)
  {
    bundleId = [itemCopy bundleId];
    [(NPHCSAppCellularDataUsageItem *)v5 setBundleID:bundleId];

    displayName = [itemCopy displayName];
    [(NPHCSAppCellularDataUsageItem *)v5 setDisplayName:displayName];

    used = [itemCopy used];
    native = [used native];
    cellularHome = [native cellularHome];
    used2 = [itemCopy used];
    native2 = [used2 native];
    -[NPHCSAppCellularDataUsageItem setBytesUsed:](v5, "setBytesUsed:", &cellularHome[[native2 cellularRoaming]]);

    v13 = [CTDataUsagePolicies alloc];
    bundleID = [(NPHCSAppCellularDataUsageItem *)v5 bundleID];
    v15 = [v13 init:bundleID withCellularPolicy:1 wifiPolicy:1 isManaged:0 andIsRestricted:0];
    [(NPHCSAppCellularDataUsageItem *)v5 setDataUsagePolicy:v15];
  }

  return v5;
}

- (id)chinaSKUWirelessDataOptionForCellularSetup:(BOOL)setup
{
  setupCopy = setup;
  if ([(NPHCSAppCellularDataUsageItem *)self isForAnApp])
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DATA_OFF" value:&stru_1CD90 table:0];

    if ([(NPHCSAppCellularDataUsageItem *)self isWiFiDataEnabled])
    {
      v7 = @"WIFI_ON";
      if (setupCopy && [(NPHCSAppCellularDataUsageItem *)self isCellularDataEnabled])
      {
        v7 = @"ALL_ON_SHORT";
      }

      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = NPHWiFiStringKey(v7);
      v10 = [v8 localizedStringForKey:v9 value:&stru_1CD90 table:0];

      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isForAnApp
{
  bundleID = [(NPHCSAppCellularDataUsageItem *)self bundleID];
  v3 = [bundleID length] != 0;

  return v3;
}

- (BOOL)isWiFiDataEnabled
{
  dataUsagePolicy = [(NPHCSAppCellularDataUsageItem *)self dataUsagePolicy];
  v3 = [dataUsagePolicy wifi] == &dword_0 + 1;

  return v3;
}

- (BOOL)isCellularDataEnabled
{
  dataUsagePolicy = [(NPHCSAppCellularDataUsageItem *)self dataUsagePolicy];
  v3 = [dataUsagePolicy cellular] == &dword_0 + 1;

  return v3;
}

- (void)setDisplayName:(id)name
{
  if (self->_displayName != name)
  {
    v4 = [name copy];
    displayName = self->_displayName;
    self->_displayName = v4;

    v6 = objc_alloc_init(NSMutableParagraphStyle);
    LODWORD(v7) = 1.0;
    [v6 setHyphenationFactor:v7];
    v8 = [NSAttributedString alloc];
    v9 = self->_displayName;
    v12 = NSParagraphStyleAttributeName;
    v13 = v6;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [v8 initWithString:v9 attributes:v10];

    [(NPHCSAppCellularDataUsageItem *)self setHyphenatedDisplayName:v11];
  }
}

- (void)setUsagePoliciesForCellular:(BOOL)cellular andWifi:(BOOL)wifi
{
  wifiCopy = wifi;
  cellularCopy = cellular;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(NPHCSAppCellularDataUsageItem *)self bundleID];
    v16 = 136315906;
    v17 = "[NPHCSAppCellularDataUsageItem setUsagePoliciesForCellular:andWifi:]";
    v18 = 2112;
    v19 = bundleID;
    v20 = 1024;
    v21 = cellularCopy;
    v22 = 1024;
    v23 = wifiCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s setting: %@, %i, %i", &v16, 0x22u);
  }

  v9 = [CTDataUsagePolicies alloc];
  bundleID2 = [(NPHCSAppCellularDataUsageItem *)self bundleID];
  v11 = [v9 init:bundleID2 withCellularPolicy:cellularCopy wifiPolicy:wifiCopy isManaged:0 andIsRestricted:0];

  [(NPHCSAppCellularDataUsageItem *)self setDataUsagePolicy:v11];
  v12 = [CoreTelephonyClient alloc];
  v13 = dispatch_queue_create("com.apple.nanophone.telephonypoliciesqueue", 0);
  v14 = [v12 initWithQueue:v13];

  v15 = [NSSet setWithObject:v11];
  [v14 setRemotePolicies:v15 completion:&stru_1C978];
}

@end