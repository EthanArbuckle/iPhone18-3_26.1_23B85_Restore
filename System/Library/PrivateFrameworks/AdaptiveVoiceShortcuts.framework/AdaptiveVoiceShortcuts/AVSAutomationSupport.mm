@interface AVSAutomationSupport
- (_TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport)init;
- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier;
@end

@implementation AVSAutomationSupport

- (_TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport)init
{
  *(&self->super.isa + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport__client) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AVSAutomationSupport();
  return [(AVSAutomationSupport *)&v3 init];
}

- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier
{
  mainAccessQueue = [objc_opt_self() mainAccessQueue];

  return mainAccessQueue;
}

@end