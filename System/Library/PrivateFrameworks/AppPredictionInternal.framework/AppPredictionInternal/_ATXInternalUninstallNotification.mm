@interface _ATXInternalUninstallNotification
+ (void)postNotificationWithUninstallSet:(id)set histogramBundleIdTable:(id)table;
- (_ATXInternalUninstallNotification)init;
@end

@implementation _ATXInternalUninstallNotification

- (_ATXInternalUninstallNotification)init
{
  v6.receiver = self;
  v6.super_class = _ATXInternalUninstallNotification;
  v2 = [(_ATXInternalUninstallNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd._ATXInternalUninstallNotification.appUninstalled"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

+ (void)postNotificationWithUninstallSet:(id)set histogramBundleIdTable:(id)table
{
  v18 = *MEMORY[0x277D85DE8];
  setCopy = set;
  tableCopy = table;
  [_ATXInternalNotification postData:setCopy forNotificationNamed:@"com.apple.duetexpertd._ATXInternalUninstallNotification.appUninstalled"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = setCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [tableCopy remove:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end