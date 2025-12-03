@interface AccessibilityReaderServiceAXUIService
- (_TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService)init;
- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
@end

@implementation AccessibilityReaderServiceAXUIService

- (_TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService)init
{
  *(&self->super.isa + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService__client) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService_accessibilityReaderEnabled) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService_accessibilityReaderUIViewEnabled) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccessibilityReaderServiceAXUIService();
  return [(AccessibilityReaderServiceAXUIService *)&v3 init];
}

- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier
{
  mainAccessQueue = [objc_opt_self() mainAccessQueue];

  return mainAccessQueue;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  sub_23D825944(client);
}

@end