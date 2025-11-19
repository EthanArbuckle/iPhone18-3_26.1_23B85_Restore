@interface AAProcessEvent
- (AAProcessEvent)init;
- (NSString)groupName;
@end

@implementation AAProcessEvent

- (NSString)groupName
{
  if (*(self + OBJC_IVAR___AAProcessEvent_groupName + 8))
  {
    v2 = *(self + OBJC_IVAR___AAProcessEvent_groupName);
    v3 = *(self + OBJC_IVAR___AAProcessEvent_groupName + 8);

    v4 = sub_1B6AB92B0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (AAProcessEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end