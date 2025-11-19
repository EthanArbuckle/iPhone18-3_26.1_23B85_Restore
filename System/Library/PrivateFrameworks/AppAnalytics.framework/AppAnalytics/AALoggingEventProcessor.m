@interface AALoggingEventProcessor
- (AALoggingEventProcessor)init;
- (AALoggingEventProcessor)initWithFormat:(int64_t)a3 subsystem:(id)a4;
@end

@implementation AALoggingEventProcessor

- (AALoggingEventProcessor)initWithFormat:(int64_t)a3 subsystem:(id)a4
{
  if (a4)
  {
    a4 = sub_1B6AB92E0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return BridgingLoggingEventProcessor.init(format:subsystem:)(a3, a4, v6);
}

- (AALoggingEventProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end