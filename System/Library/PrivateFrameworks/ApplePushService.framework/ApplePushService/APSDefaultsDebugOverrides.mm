@interface APSDefaultsDebugOverrides
- (APSDefaultsDebugOverrides)init;
- (APSDefaultsDebugOverrides)initWithUserDefaults:(id)defaults;
- (BOOL)disableFilterOptimization;
- (BOOL)forceInvalidAlbertCert;
- (BOOL)forceInvalidBAACert;
- (NSDictionary)connectionRetryPhases;
- (NSNumber)forcedInvalidPresences;
- (NSNumber)overrideFilterVersion;
- (id)overrideFilterDisableResponseForConnectionType:(int64_t)type;
@end

@implementation APSDefaultsDebugOverrides

- (APSDefaultsDebugOverrides)init
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v4 = [(APSDefaultsDebugOverrides *)self initWithUserDefaults:standardUserDefaults];

  return v4;
}

- (APSDefaultsDebugOverrides)initWithUserDefaults:(id)defaults
{
  *(&self->super.isa + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults) = defaults;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DefaultsDebugOverrides();
  defaultsCopy = defaults;
  return [(APSDefaultsDebugOverrides *)&v6 init];
}

- (BOOL)forceInvalidAlbertCert
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 BOOLForKey:v4];

  return v2;
}

- (BOOL)disableFilterOptimization
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 BOOLForKey:v4];

  return v2;
}

- (id)overrideFilterDisableResponseForConnectionType:(int64_t)type
{
  selfCopy = self;
  v5 = sub_1000CBD48(type);

  return v5;
}

- (NSNumber)overrideFilterVersion
{
  selfCopy = self;
  v3.super.super.isa = sub_1000CC0C8().super.super.isa;

  return v3.super.super.isa;
}

- (NSDictionary)connectionRetryPhases
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 dictionaryForKey:v4];

  if (v5)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (NSNumber)forcedInvalidPresences
{
  selfCopy = self;
  v3.super.super.isa = sub_1000CC3AC().super.super.isa;

  return v3.super.super.isa;
}

- (BOOL)forceInvalidBAACert
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 BOOLForKey:v4];

  return v2;
}

@end