@interface DeviceActivityAuthorization
+ (BOOL)isAuthorized:(id)a3;
+ (BOOL)sharingEnabled;
+ (NSArray)authorizedClientIdentifiers;
- (_TtC14DeviceActivity27DeviceActivityAuthorization)init;
@end

@implementation DeviceActivityAuthorization

+ (BOOL)isAuthorized:(id)a3
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

  v2 = [qword_280C356F8 deviceActivity];
  v3 = [v2 allowedClients];

  if (v3)
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

  v2 = [qword_280C356F8 deviceActivity];
  v3 = [v2 shareAcrossDevices];

  if (!v3)
  {
    return 1;
  }

  v4 = [v3 BOOLValue];

  return v4;
}

- (_TtC14DeviceActivity27DeviceActivityAuthorization)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceActivityAuthorization();
  return [(DeviceActivityAuthorization *)&v3 init];
}

@end