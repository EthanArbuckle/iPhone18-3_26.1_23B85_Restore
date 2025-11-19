@interface CHLocationProvider
+ (CHLocationProvider)shared;
- (CHLocationProvider)init;
- (CHLocationProvider)initWithBridgedValue:(id)a3;
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

- (CHLocationProvider)initWithBridgedValue:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___CHLocationProvider_bridgedValue) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for LocationProviderBridge();
  v4 = a3;
  return [(CHLocationProvider *)&v6 init];
}

- (CHLocationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end