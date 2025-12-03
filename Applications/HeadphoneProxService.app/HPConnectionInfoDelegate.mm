@interface HPConnectionInfoDelegate
+ (id)_populateAllFields:(id)fields accessoryInfo:(id)info;
- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection;
- (void)start;
- (void)stop;
@end

@implementation HPConnectionInfoDelegate

- (void)start
{
  v3 = objc_opt_new();
  [(HPConnectionInfoDelegate *)self setAllowedEndpointUUIDs:v3];

  v4 = +[ACCConnectionInfo sharedInstance];
  [v4 registerDelegate:self];
}

- (void)stop
{
  v3 = +[ACCConnectionInfo sharedInstance];
  [v3 registerDelegate:0];

  [(HPConnectionInfoDelegate *)self setAllowedEndpointUUIDs:0];
}

- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection
{
  propertiesCopy = properties;
  connectionCopy = connection;
  changedCopy = changed;
  allowedEndpointUUIDs = [(HPConnectionInfoDelegate *)self allowedEndpointUUIDs];
  v12 = [allowedEndpointUUIDs containsObject:changedCopy];

  if (v12)
  {
    if (dword_10011C1F0 <= 30 && (dword_10011C1F0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF3A0();
    }

    v13 = +[ACCConnectionInfo sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003230;
    v14[3] = &unk_1001026C8;
    v14[4] = self;
    v15 = propertiesCopy;
    [v13 accessoryInfoForConnection:connectionCopy withReply:v14];
  }
}

+ (id)_populateAllFields:(id)fields accessoryInfo:(id)info
{
  fieldsCopy = fields;
  infoCopy = info;
  v7 = infoCopy;
  if (fieldsCopy)
  {
    v8 = fieldsCopy;
    v9 = v8;
    if (v7)
    {
      v10 = [v8 ams_dictionaryByAddingEntriesFromDictionary:v7];

      v9 = v10;
    }
  }

  else if (infoCopy)
  {
    v9 = infoCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end