@interface TVSetupRemoteLauncher
+ (void)launchRemoteWithDeviceIdentifier:(id)identifier;
@end

@implementation TVSetupRemoteLauncher

+ (void)launchRemoteWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = qword_100026600;
  v18 = qword_100026600;
  if (!qword_100026600)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100001E30;
    v13 = &unk_100020A88;
    v14 = &v15;
    sub_100001E30(&v10);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  v6 = [[v4 alloc] initWithDeviceIdentifier:identifierCopy identifierType:0 deviceType:1 launchContext:11 launchMethod:1];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v7 = qword_100026610;
  v18 = qword_100026610;
  if (!qword_100026610)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100001FF8;
    v13 = &unk_100020A88;
    v14 = &v15;
    sub_100001FF8(&v10);
    v7 = v16[3];
  }

  v8 = v7;
  _Block_object_dispose(&v15, 8);
  sharedInstance = [v7 sharedInstance];
  [sharedInstance presentWithContext:v6];
}

@end