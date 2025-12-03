@interface LibraryUIUtilities
+ (id)capsuleBarButtonItemWithTitle:(id)title systemImageName:(id)name target:(id)target action:(SEL)action;
+ (id)createPlacedCardSavedButtonConfig;
+ (id)iOSNavbarTitleButtonItemWithTitle:(id)title;
+ (id)threeDotsBarButtonItemWithMenuProvider:(id)provider;
- (_TtC4Maps18LibraryUIUtilities)init;
@end

@implementation LibraryUIUtilities

+ (id)capsuleBarButtonItemWithTitle:(id)title systemImageName:(id)name target:(id)target action:(SEL)action
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  swift_unknownObjectRetain();
  v14 = sub_1003602C0(v8, v10, v11, v13, target, action);
  swift_unknownObjectRelease();

  return v14;
}

+ (id)threeDotsBarButtonItemWithMenuProvider:(id)provider
{
  v3 = _Block_copy(provider);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_100360804(sub_100360BBC, v4);

  return v5;
}

+ (id)iOSNavbarTitleButtonItemWithTitle:(id)title
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_100360A58();

  return v3;
}

+ (id)createPlacedCardSavedButtonConfig
{
  v2 = type metadata accessor for InfoCardButtonConfiguration();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_type] = 7;
  v3[OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_shouldBlur] = 0;
  *&v3[OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_tintColor] = 0;
  *&v3[OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_visibility] = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, "init");

  return v4;
}

- (_TtC4Maps18LibraryUIUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LibraryUIUtilities();
  return [(LibraryUIUtilities *)&v3 init];
}

@end