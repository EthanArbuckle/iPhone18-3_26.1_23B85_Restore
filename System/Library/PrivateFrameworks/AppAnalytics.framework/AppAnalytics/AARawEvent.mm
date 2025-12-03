@interface AARawEvent
- (AARawEvent)init;
- (AARawEvent)initWithName:(id)name properties:(id)properties;
- (AARawEvent)initWithName:(id)name sessionGroup:(id)group requiresDiagnosticsConsent:(BOOL)consent requiresTrackingConsent:(BOOL)trackingConsent timestampGranularity:(int64_t)granularity timeDurationGranularity:(int64_t)durationGranularity properties:(id)properties samplingThreshold:(int64_t)self0;
- (AARawEvent)initWithName:(id)name sessionGroup:(id)group requiresDiagnosticsConsent:(BOOL)consent timestampGranularity:(int64_t)granularity timeDurationGranularity:(int64_t)durationGranularity properties:(id)properties;
- (AARawEvent)initWithName:(id)name sessionGroup:(id)group requiresDiagnosticsConsent:(BOOL)consent timestampGranularity:(int64_t)granularity timeDurationGranularity:(int64_t)durationGranularity properties:(id)properties samplingThreshold:(int64_t)threshold;
- (AARawEvent)initWithName:(id)name sessionGroup:(id)group timestampGranularity:(int64_t)granularity properties:(id)properties;
@end

@implementation AARawEvent

- (AARawEvent)initWithName:(id)name properties:(id)properties
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  type metadata accessor for BridgedRawEventProperty();
  v7 = sub_1B6AB9210();
  return BridgedRawEvent.init(name:properties:)(v4, v6, v7);
}

- (AARawEvent)initWithName:(id)name sessionGroup:(id)group timestampGranularity:(int64_t)granularity properties:(id)properties
{
  v8 = sub_1B6AB92E0();
  v10 = v9;
  type metadata accessor for BridgedRawEventProperty();
  v11 = sub_1B6AB9210();
  return BridgedRawEvent.init(name:sessionGroup:timestampGranularity:properties:)(v8, v10, group, granularity, v11);
}

- (AARawEvent)initWithName:(id)name sessionGroup:(id)group requiresDiagnosticsConsent:(BOOL)consent timestampGranularity:(int64_t)granularity timeDurationGranularity:(int64_t)durationGranularity properties:(id)properties
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
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent) = consent;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_sessionGroup) = group;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timestampGranularity) = granularity;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timeDurationGranularity) = durationGranularity;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_samplingThreshold) = -1;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresTrackingConsent) = 1;
  v21.receiver = self;
  v21.super_class = ObjectType;
  groupCopy = group;
  return [(AARawEvent *)&v21 init];
}

- (AARawEvent)initWithName:(id)name sessionGroup:(id)group requiresDiagnosticsConsent:(BOOL)consent timestampGranularity:(int64_t)granularity timeDurationGranularity:(int64_t)durationGranularity properties:(id)properties samplingThreshold:(int64_t)threshold
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
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent) = consent;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_sessionGroup) = group;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timestampGranularity) = granularity;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timeDurationGranularity) = durationGranularity;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_samplingThreshold) = threshold;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresTrackingConsent) = 1;
  v22.receiver = self;
  v22.super_class = ObjectType;
  groupCopy = group;
  return [(AARawEvent *)&v22 init];
}

- (AARawEvent)initWithName:(id)name sessionGroup:(id)group requiresDiagnosticsConsent:(BOOL)consent requiresTrackingConsent:(BOOL)trackingConsent timestampGranularity:(int64_t)granularity timeDurationGranularity:(int64_t)durationGranularity properties:(id)properties samplingThreshold:(int64_t)self0
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
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent) = consent;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_requiresTrackingConsent) = trackingConsent;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_sessionGroup) = group;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timestampGranularity) = granularity;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_timeDurationGranularity) = durationGranularity;
  *(&self->super.isa + OBJC_IVAR___AARawEvent_samplingThreshold) = threshold;
  v24.receiver = self;
  v24.super_class = ObjectType;
  groupCopy = group;
  return [(AARawEvent *)&v24 init];
}

- (AARawEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end