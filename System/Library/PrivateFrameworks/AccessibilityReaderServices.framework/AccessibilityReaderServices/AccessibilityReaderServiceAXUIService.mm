@interface AccessibilityReaderServiceAXUIService
- (_TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService)init;
- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(int64_t)a4;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
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

- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(int64_t)a4
{
  v4 = [objc_opt_self() mainAccessQueue];

  return v4;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_23D825944(a3);
}

@end