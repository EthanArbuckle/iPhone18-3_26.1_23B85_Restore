@interface CarETAExpandedSign
- (CarETACardSignDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (_TtC4Maps18CarETAExpandedSign)initWithDataSource:(id)a3 delegate:(id)a4 parentViewController:(id)a5;
- (_TtC4Maps18CarETAExpandedSign)initWithParentViewController:(id)a3;
- (_TtP4Maps28CarETAExpandedSignDataSource_)dataSource;
- (void)setLatestETA:(id)a3;
- (void)updateContent;
@end

@implementation CarETAExpandedSign

- (_TtP4Maps28CarETAExpandedSignDataSource_)dataSource
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps18CarETAExpandedSign)initWithDataSource:(id)a3 delegate:(id)a4 parentViewController:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1000E64B8(a3, a4, a5);
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
    v3 = self;
    v4 = v2;
    sub_10017AF5C();
  }

  sub_1000CE6B8(&qword_101914ED0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)updateContent
{
  v2 = self;
  sub_1000E4AF4();
}

- (CarETACardSignDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setLatestETA:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_latestETA);
  *(self + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_latestETA) = a3;
  v3 = a3;
}

- (_TtC4Maps18CarETAExpandedSign)initWithParentViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end