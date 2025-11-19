@interface AARawEvent
- (AARawEvent)init;
- (AARawEvent)initWithName:(id)a3 properties:(id)a4;
- (AARawEvent)initWithName:(id)a3 sessionGroup:(id)a4 requiresDiagnosticsConsent:(BOOL)a5 requiresTrackingConsent:(BOOL)a6 timestampGranularity:(int64_t)a7 timeDurationGranularity:(int64_t)a8 properties:(id)a9 samplingThreshold:(int64_t)a10;
- (AARawEvent)initWithName:(id)a3 sessionGroup:(id)a4 requiresDiagnosticsConsent:(BOOL)a5 timestampGranularity:(int64_t)a6 timeDurationGranularity:(int64_t)a7 properties:(id)a8;
- (AARawEvent)initWithName:(id)a3 sessionGroup:(id)a4 requiresDiagnosticsConsent:(BOOL)a5 timestampGranularity:(int64_t)a6 timeDurationGranularity:(int64_t)a7 properties:(id)a8 samplingThreshold:(int64_t)a9;
- (AARawEvent)initWithName:(id)a3 sessionGroup:(id)a4 timestampGranularity:(int64_t)a5 properties:(id)a6;
@end

@implementation AARawEvent

- (AARawEvent)initWithName:(id)a3 properties:(id)a4
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  type metadata accessor for BridgedRawEventProperty();
  v7 = sub_1B6AB9210();
  return BridgedRawEvent.init(name:properties:)(v4, v6, v7);
}

- (AARawEvent)initWithName:(id)a3 sessionGroup:(id)a4 timestampGranularity:(int64_t)a5 properties:(id)a6
{
  v8 = sub_1B6AB92E0();
  v10 = v9;
  type metadata accessor for BridgedRawEventProperty();
  v11 = sub_1B6AB9210();
  return BridgedRawEvent.init(name:sessionGroup:timestampGranularity:properties:)(v8, v10, a4, a5, v11);
}

- (AARawEvent)initWithName:(id)a3 sessionGroup:(id)a4 requiresDiagnosticsConsent:(BOOL)a5 timestampGranularity:(int64_t)a6 timeDurationGranularity:(int64_t)a7 properties:(id)a8
{
  ObjectType = swift_getObjectType();
  v14 = sub_1B6AB92E0();
  v16 = v15;
  type metadata accessor for BridgedRawEventProperty();
  v17 = sub_1B6AB9210();
  v18 = (self + OBJC_IVAR___AARawEvent_name);
  *v18 = v14;
  v18[1] = v16;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_properties) = v17;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent) = a5;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_sessionGroup) = a4;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timestampGranularity) = a6;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timeDurationGranularity) = a7;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_samplingThreshold) = -1;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresTrackingConsent) = 1;
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = a4;
  return [(AARawEvent *)&v21 init];
}

- (AARawEvent)initWithName:(id)a3 sessionGroup:(id)a4 requiresDiagnosticsConsent:(BOOL)a5 timestampGranularity:(int64_t)a6 timeDurationGranularity:(int64_t)a7 properties:(id)a8 samplingThreshold:(int64_t)a9
{
  ObjectType = swift_getObjectType();
  v15 = sub_1B6AB92E0();
  v17 = v16;
  type metadata accessor for BridgedRawEventProperty();
  v18 = sub_1B6AB9210();
  v19 = (self + OBJC_IVAR___AARawEvent_name);
  *v19 = v15;
  v19[1] = v17;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_properties) = v18;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent) = a5;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_sessionGroup) = a4;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timestampGranularity) = a6;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timeDurationGranularity) = a7;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_samplingThreshold) = a9;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresTrackingConsent) = 1;
  v22.receiver = self;
  v22.super_class = ObjectType;
  v20 = a4;
  return [(AARawEvent *)&v22 init];
}

- (AARawEvent)initWithName:(id)a3 sessionGroup:(id)a4 requiresDiagnosticsConsent:(BOOL)a5 requiresTrackingConsent:(BOOL)a6 timestampGranularity:(int64_t)a7 timeDurationGranularity:(int64_t)a8 properties:(id)a9 samplingThreshold:(int64_t)a10
{
  ObjectType = swift_getObjectType();
  v16 = sub_1B6AB92E0();
  v18 = v17;
  type metadata accessor for BridgedRawEventProperty();
  v19 = sub_1B6AB9210();
  v20 = (self + OBJC_IVAR___AARawEvent_name);
  *v20 = v16;
  v20[1] = v18;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_properties) = v19;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent) = a5;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresTrackingConsent) = a6;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_sessionGroup) = a4;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timestampGranularity) = a7;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timeDurationGranularity) = a8;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_samplingThreshold) = a10;
  v24.receiver = self;
  v24.super_class = ObjectType;
  v21 = a4;
  return [(AARawEvent *)&v24 init];
}

- (AARawEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end