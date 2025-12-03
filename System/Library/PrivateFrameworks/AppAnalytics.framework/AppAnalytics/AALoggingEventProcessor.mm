@interface AALoggingEventProcessor
- (AALoggingEventProcessor)init;
- (AALoggingEventProcessor)initWithFormat:(int64_t)format subsystem:(id)subsystem;
@end

@implementation AALoggingEventProcessor

- (AALoggingEventProcessor)initWithFormat:(int64_t)format subsystem:(id)subsystem
{
  if (subsystem)
  {
    subsystem = sub_1B6AB92E0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return BridgingLoggingEventProcessor.init(format:subsystem:)(format, subsystem, v6);
}

- (AALoggingEventProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end