@interface WODataLinkMonitor
+ (WODataLinkMonitor)shared;
- (WODataLinkMonitor)init;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
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

- (void)addObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1002C8FCC(a3, v5);
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1002C86F8(a3);
  swift_unknownObjectRelease();
}

- (WODataLinkMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end