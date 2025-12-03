@interface CarCardAccessoryBar
- (NSArray)focusOrderSubItems;
- (_TtC4Maps19CarCardAccessoryBar)initWithParentViewController:(id)controller;
- (_TtC4Maps19CarCardAccessoryBar)initWithParentViewController:(id)controller accessoryTapHandler:(id)handler;
- (void)updateWithTitle:(id)title primaryAccessory:(id)accessory secondaryAccessory:(id)secondaryAccessory leadingImage:(id)image;
@end

@implementation CarCardAccessoryBar

- (_TtC4Maps19CarCardAccessoryBar)initWithParentViewController:(id)controller accessoryTapHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = sub_100240E1C(controller, sub_100241168, v6);

  return v7;
}

- (void)updateWithTitle:(id)title primaryAccessory:(id)accessory secondaryAccessory:(id)secondaryAccessory leadingImage:(id)image
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  accessoryCopy = accessory;
  secondaryAccessoryCopy = secondaryAccessory;
  imageCopy = image;
  selfCopy = self;
  sub_100240470(v10, v12, accessoryCopy, secondaryAccessory, image);
}

- (NSArray)focusOrderSubItems
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController);
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

- (_TtC4Maps19CarCardAccessoryBar)initWithParentViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end