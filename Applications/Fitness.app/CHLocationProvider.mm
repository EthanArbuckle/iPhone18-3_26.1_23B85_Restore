@interface CHLocationProvider
+ (CHLocationProvider)shared;
- (CHLocationProvider)init;
- (CHLocationProvider)initWithBridgedValue:(id)value;
@end

@implementation CHLocationProvider

+ (CHLocationProvider)shared
{
  if (qword_1008DA620 != -1)
  {
    swift_once();
  }

  v3 = qword_100925228;

  return v3;
}

- (CHLocationProvider)initWithBridgedValue:(id)value
{
  *(&self->super.isa + OBJC_IVAR___CHLocationProvider_bridgedValue) = value;
  v6.receiver = self;
  v6.super_class = type metadata accessor for LocationProviderBridge();
  valueCopy = value;
  return [(CHLocationProvider *)&v6 init];
}

- (CHLocationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end