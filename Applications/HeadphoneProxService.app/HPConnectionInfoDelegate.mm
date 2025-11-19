@interface HPConnectionInfoDelegate
+ (id)_populateAllFields:(id)a3 accessoryInfo:(id)a4;
- (void)accessoryEndpointInfoPropertyChanged:(id)a3 properties:(id)a4 forConnection:(id)a5;
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

- (void)accessoryEndpointInfoPropertyChanged:(id)a3 properties:(id)a4 forConnection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(HPConnectionInfoDelegate *)self allowedEndpointUUIDs];
  v12 = [v11 containsObject:v10];

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
    v15 = v8;
    [v13 accessoryInfoForConnection:v9 withReply:v14];
  }
}

+ (id)_populateAllFields:(id)a3 accessoryInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
    v9 = v8;
    if (v7)
    {
      v10 = [v8 ams_dictionaryByAddingEntriesFromDictionary:v7];

      v9 = v10;
    }
  }

  else if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end