@interface _NotificationCenterActorQueueManager
- (void)dealloc;
@end

@implementation _NotificationCenterActorQueueManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  MEMORY[0x1865CB630](v5, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(_NotificationCenterActorQueueManager *)&v6 dealloc];
}

@end