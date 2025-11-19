@interface DebugViewControllerPriceTracking
- (BKDebugViewSection)section;
- (DebugViewControllerPriceTracking)init;
- (DebugViewControllerPriceTracking)initWithOwner:(id)a3;
@end

@implementation DebugViewControllerPriceTracking

- (DebugViewControllerPriceTracking)initWithOwner:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(DebugViewControllerPriceTracking *)&v6 init];
}

- (DebugViewControllerPriceTracking)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKDebugViewSection)section
{
  v2 = self;
  v3 = sub_10028CAE0();

  return v3;
}

@end