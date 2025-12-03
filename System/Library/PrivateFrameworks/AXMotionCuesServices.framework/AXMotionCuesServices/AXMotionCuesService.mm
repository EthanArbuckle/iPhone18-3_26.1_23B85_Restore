@interface AXMotionCuesService
+ (AXMotionCuesService)sharedInstance;
- (AXMotionCuesService)init;
- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier;
- (id)userInterfaceClient:(id)client processMessageFromServer:(id)server withIdentifier:(int64_t)identifier error:(id *)error;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
- (void)simulateDeviceMotion:(id)motion;
@end

@implementation AXMotionCuesService

+ (AXMotionCuesService)sharedInstance
{
  if (qword_281341250 != -1)
  {
    swift_once();
  }

  v3 = qword_281341258;

  return v3;
}

- (AXMotionCuesService)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AXMotionCuesService__client) = 0;
  v4 = OBJC_IVAR___AXMotionCuesService_movingHandlers;
  v5 = MEMORY[0x277D84F90];
  *(&self->super.isa + v4) = sub_23D61E924(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR___AXMotionCuesService_visibleHandlers;
  *(&self->super.isa + v6) = sub_23D61E924(v5);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(AXMotionCuesService *)&v8 init];
}

- (void)simulateDeviceMotion:(id)motion
{
  v4 = sub_23D61F760();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  AXMotionCuesService.simulateDeviceMotion(_:)(v8);
}

- (id)userInterfaceClient:(id)client processMessageFromServer:(id)server withIdentifier:(int64_t)identifier error:(id *)error
{
  if (server)
  {
    v9 = sub_23D61F720();
  }

  else
  {
    v9 = 0;
  }

  clientCopy = client;
  selfCopy = self;
  sub_23D61EE28(v9, identifier);

  v12 = sub_23D61F710();

  return v12;
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
  AXMotionCuesService.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(client);
}

@end