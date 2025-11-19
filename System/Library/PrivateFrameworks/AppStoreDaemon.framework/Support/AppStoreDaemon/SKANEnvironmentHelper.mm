@interface SKANEnvironmentHelper
+ (BOOL)shouldUseDevelopmentSettingsForEnvironment:(id)a3;
+ (id)environmentForParams:(id)a3;
+ (id)pingbackDelayOverrideForEnvironment:(id)a3;
+ (id)shouldUseProxyOverrideForEnvironment:(id)a3;
+ (id)windowDurationOverrideForEnvironment:(id)a3;
- (_TtC9appstored21SKANEnvironmentHelper)init;
@end

@implementation SKANEnvironmentHelper

+ (id)environmentForParams:(id)a3
{
  v3 = a3;
  v4 = sub_100162408(v3);

  return v4;
}

+ (BOOL)shouldUseDevelopmentSettingsForEnvironment:(id)a3
{
  v3 = a3;
  v4 = a3;
  LOBYTE(v3) = sub_10016268C(v3);

  return v3 & 1;
}

+ (id)pingbackDelayOverrideForEnvironment:(id)a3
{
  v4 = a3;
  v5 = sub_1001628D8(a3, sub_1003D5E54);

  return v5;
}

+ (id)windowDurationOverrideForEnvironment:(id)a3
{
  v4 = a3;
  sub_100162794(a3);
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)shouldUseProxyOverrideForEnvironment:(id)a3
{
  v4 = a3;
  v5 = sub_1001628D8(a3, sub_1003D5ECC);

  return v5;
}

- (_TtC9appstored21SKANEnvironmentHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SKANEnvironmentHelper();
  return [(SKANEnvironmentHelper *)&v3 init];
}

@end