@interface DeviceActivityAuthorization
+ (BOOL)isAuthorized:(id)authorized;
+ (BOOL)sharingEnabled;
+ (NSArray)authorizedClientIdentifiers;
- (_TtC14DeviceActivity27DeviceActivityAuthorization)init;
@end

@implementation DeviceActivityAuthorization

+ (BOOL)isAuthorized:(id)authorized
{
  v3 = sub_238031EA4();
  v5 = _s14DeviceActivity0aB13AuthorizationC12isAuthorizedySbSSFZ_0(v3, v4);

  return v5 & 1;
}

+ (NSArray)authorizedClientIdentifiers
{
  if (qword_280C356F0 != -1)
  {
    swift_once();
  }

  deviceActivity = [qword_280C356F8 deviceActivity];
  allowedClients = [deviceActivity allowedClients];

  if (allowedClients)
  {
    sub_237FBDA34();
    sub_237FBDA80();
    v4 = sub_238032074();

    sub_237FBCD7C(v4);
  }

  v5 = sub_238031F84();

  return v5;
}

+ (BOOL)sharingEnabled
{
  if (qword_280C356F0 != -1)
  {
    swift_once();
  }

  deviceActivity = [qword_280C356F8 deviceActivity];
  shareAcrossDevices = [deviceActivity shareAcrossDevices];

  if (!shareAcrossDevices)
  {
    return 1;
  }

  bOOLValue = [shareAcrossDevices BOOLValue];

  return bOOLValue;
}

- (_TtC14DeviceActivity27DeviceActivityAuthorization)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceActivityAuthorization();
  return [(DeviceActivityAuthorization *)&v3 init];
}

@end