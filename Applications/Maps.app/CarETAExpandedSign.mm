@interface CarETAExpandedSign
- (CarETACardSignDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (_TtC4Maps18CarETAExpandedSign)initWithDataSource:(id)source delegate:(id)delegate parentViewController:(id)controller;
- (_TtC4Maps18CarETAExpandedSign)initWithParentViewController:(id)controller;
- (_TtP4Maps28CarETAExpandedSignDataSource_)dataSource;
- (void)setLatestETA:(id)a;
- (void)updateContent;
@end

@implementation CarETAExpandedSign

- (_TtP4Maps28CarETAExpandedSignDataSource_)dataSource
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps18CarETAExpandedSign)initWithDataSource:(id)source delegate:(id)delegate parentViewController:(id)controller
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1000E64B8(source, delegate, controller);
  v9 = v8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

- (NSArray)focusOrderSubItems
{
  v2 = *(self + OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController);
  if (v2)
  {
    selfCopy = self;
    v4 = v2;
    sub_10017AF5C();
  }

  sub_1000CE6B8(&qword_101914ED0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)updateContent
{
  selfCopy = self;
  sub_1000E4AF4();
}

- (CarETACardSignDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setLatestETA:(id)a
{
  v4 = *(self + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_latestETA);
  *(self + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_latestETA) = a;
  aCopy = a;
}

- (_TtC4Maps18CarETAExpandedSign)initWithParentViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end