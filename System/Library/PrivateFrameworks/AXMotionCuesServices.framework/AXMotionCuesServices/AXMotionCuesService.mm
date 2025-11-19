@interface AXMotionCuesService
+ (AXMotionCuesService)sharedInstance;
- (AXMotionCuesService)init;
- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(int64_t)a4;
- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(int64_t)a5 error:(id *)a6;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)simulateDeviceMotion:(id)a3;
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

- (void)simulateDeviceMotion:(id)a3
{
  v4 = sub_23D61F760();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  AXMotionCuesService.simulateDeviceMotion(_:)(v8);
}

- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(int64_t)a5 error:(id *)a6
{
  if (a4)
  {
    v9 = sub_23D61F720();
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_23D61EE28(v9, a5);

  v12 = sub_23D61F710();

  return v12;
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
  AXMotionCuesService.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(a3);
}

@end