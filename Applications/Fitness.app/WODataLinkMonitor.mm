@interface WODataLinkMonitor
+ (WODataLinkMonitor)shared;
- (WODataLinkMonitor)init;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation WODataLinkMonitor

+ (WODataLinkMonitor)shared
{
  if (qword_1008DA878 != -1)
  {
    swift_once();
  }

  v3 = qword_100925570;

  return v3;
}

- (void)addObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002C8FCC(observer, selfCopy);
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002C86F8(observer);
  swift_unknownObjectRelease();
}

- (WODataLinkMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end