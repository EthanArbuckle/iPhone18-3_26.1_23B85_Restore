@interface MTDeviceSetupRequestFactory
+ (id)makeRequestFrom:(id)from;
+ (id)makeRequestWithEcosystemName:(id)name homes:(id)homes blockedDevicePairings:(id)pairings;
- (MTDeviceSetupRequestFactory)init;
@end

@implementation MTDeviceSetupRequestFactory

+ (id)makeRequestFrom:(id)from
{
  if (from)
  {
    fromCopy = from;
    v4 = sub_239856AB4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = sub_23982E0E0(v4, v6);
  sub_23982D9B4(v4, v6);

  return v7;
}

+ (id)makeRequestWithEcosystemName:(id)name homes:(id)homes blockedDevicePairings:(id)pairings
{
  v5 = sub_239856C34();
  v7 = v6;
  v8 = sub_239856CA4();
  sub_23982EAE8(0, &qword_27DF7C4A8, off_278AA14B8);
  v9 = sub_239856CA4();
  v10 = sub_23982E3DC(v5, v7, v8, v9);

  return v10;
}

- (MTDeviceSetupRequestFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MTDeviceSetupRequestFactory();
  return [(MTDeviceSetupRequestFactory *)&v3 init];
}

@end