@interface AXUniversalDisplayManager
- (_TtC22AccessibilityUIService25AXUniversalDisplayManager)init;
@end

@implementation AXUniversalDisplayManager

- (_TtC22AccessibilityUIService25AXUniversalDisplayManager)init
{
  ObjectType = swift_getObjectType();
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities) = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles) = sub_23DBEEE44(v4);
  sub_23DBF000C();
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(AXUniversalDisplayManager *)&v7 init];

  return v5;
}

@end