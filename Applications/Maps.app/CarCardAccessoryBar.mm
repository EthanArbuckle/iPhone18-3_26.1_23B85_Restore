@interface CarCardAccessoryBar
- (NSArray)focusOrderSubItems;
- (_TtC4Maps19CarCardAccessoryBar)initWithParentViewController:(id)a3;
- (_TtC4Maps19CarCardAccessoryBar)initWithParentViewController:(id)a3 accessoryTapHandler:(id)a4;
- (void)updateWithTitle:(id)a3 primaryAccessory:(id)a4 secondaryAccessory:(id)a5 leadingImage:(id)a6;
@end

@implementation CarCardAccessoryBar

- (_TtC4Maps19CarCardAccessoryBar)initWithParentViewController:(id)a3 accessoryTapHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = sub_100240E1C(a3, sub_100241168, v6);

  return v7;
}

- (void)updateWithTitle:(id)a3 primaryAccessory:(id)a4 secondaryAccessory:(id)a5 leadingImage:(id)a6
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = self;
  sub_100240470(v10, v12, v13, a5, a6);
}

- (NSArray)focusOrderSubItems
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController);
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

- (_TtC4Maps19CarCardAccessoryBar)initWithParentViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end