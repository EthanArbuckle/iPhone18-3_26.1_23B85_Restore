@interface ICMigrationDeviceInfo
+ (void)logDeviceList:(id)list;
- (ICMigrationDeviceInfo)initWithName:(id)name upgradable:(BOOL)upgradable upgraded:(BOOL)upgraded;
@end

@implementation ICMigrationDeviceInfo

- (ICMigrationDeviceInfo)initWithName:(id)name upgradable:(BOOL)upgradable upgraded:(BOOL)upgraded
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ICMigrationDeviceInfo;
  v10 = [(ICMigrationDeviceInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v11->_upgradable = upgradable;
    v11->_upgraded = upgraded;
  }

  return v11;
}

+ (void)logDeviceList:(id)list
{
  listCopy = list;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [listCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(listCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = +[REMLogStore utility];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          loggableDescription = [v9 loggableDescription];
          *buf = v12;
          v18 = loggableDescription;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [listCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }
}

@end