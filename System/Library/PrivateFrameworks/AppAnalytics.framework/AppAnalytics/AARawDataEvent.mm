@interface AARawDataEvent
+ (NSString)dataName;
- (AARawDataEvent)init;
- (AARawDataEvent)initWithName:(id)name dictionary:(id)dictionary;
- (AARawDataEvent)initWithName:(id)name dictionary:(id)dictionary requiresDiagnosticsConsent:(BOOL)consent;
- (AARawDataEvent)initWithName:(id)name dictionary:(id)dictionary requiresDiagnosticsConsent:(BOOL)consent requiresTrackingConsent:(BOOL)trackingConsent;
- (id)toDict;
@end

@implementation AARawDataEvent

- (AARawDataEvent)initWithName:(id)name dictionary:(id)dictionary
{
  ObjectType = swift_getObjectType();
  v6 = sub_1B6AB92E0();
  v8 = v7;
  v9 = sub_1B6AB9210();
  v10 = (self + OBJC_IVAR___AARawDataEvent_name);
  *v10 = v6;
  v10[1] = v8;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_dictionary) = v9;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent) = 0;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_requiresTrackingConsent) = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(AARawDataEvent *)&v12 init];
}

- (AARawDataEvent)initWithName:(id)name dictionary:(id)dictionary requiresDiagnosticsConsent:(BOOL)consent
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B6AB92E0();
  v10 = v9;
  v11 = sub_1B6AB9210();
  v12 = (self + OBJC_IVAR___AARawDataEvent_name);
  *v12 = v8;
  v12[1] = v10;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_dictionary) = v11;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent) = consent;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_requiresTrackingConsent) = 1;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(AARawDataEvent *)&v14 init];
}

- (AARawDataEvent)initWithName:(id)name dictionary:(id)dictionary requiresDiagnosticsConsent:(BOOL)consent requiresTrackingConsent:(BOOL)trackingConsent
{
  ObjectType = swift_getObjectType();
  v10 = sub_1B6AB92E0();
  v12 = v11;
  v13 = sub_1B6AB9210();
  v14 = (self + OBJC_IVAR___AARawDataEvent_name);
  *v14 = v10;
  v14[1] = v12;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_dictionary) = v13;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent) = consent;
  *(&self->super.isa + OBJC_IVAR___AARawDataEvent_requiresTrackingConsent) = trackingConsent;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(AARawDataEvent *)&v16 init];
}

+ (NSString)dataName
{
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

- (id)toDict
{
  v2 = *(&self->super.isa + OBJC_IVAR___AARawDataEvent_dictionary);

  v3 = sub_1B6AB91F0();

  return v3;
}

- (AARawDataEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end