@interface AXBNameRecognitionManager
+ (_TtC9BackBoard25AXBNameRecognitionManager)shared;
- (_TtC9BackBoard25AXBNameRecognitionManager)init;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
- (void)initializeMonitoring;
@end

@implementation AXBNameRecognitionManager

+ (_TtC9BackBoard25AXBNameRecognitionManager)shared
{
  if (qword_2A1989698 != -1)
  {
    swift_once();
  }

  v3 = qword_2A19896A0;

  return v3;
}

- (void)initializeMonitoring
{
  selfCopy = self;
  sub_29BBE033C();
}

- (_TtC9BackBoard25AXBNameRecognitionManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_state) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_nameRecognitionClient) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXBNameRecognitionManager();
  return [(AXBNameRecognitionManager *)&v3 init];
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  AXBNameRecognitionManager.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(client);
}

@end