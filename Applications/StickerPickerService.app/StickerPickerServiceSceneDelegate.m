@interface StickerPickerServiceSceneDelegate
- (_TtC20StickerPickerService33StickerPickerServiceSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
@end

@implementation StickerPickerServiceSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10000A2BC(v8);
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a6;
  v11 = self;
  sub_10000A494(v9, a4);

  swift_unknownObjectRelease();
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000093DC(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000A6A4(v4, "sceneDidBecomeActive %@");
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000A6A4(v4, "sceneWillResignActive %@");
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000096CC(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000A7EC(v4);
}

- (_TtC20StickerPickerService33StickerPickerServiceSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickerPickerServiceSceneDelegate();
  return [(StickerPickerServiceSceneDelegate *)&v3 init];
}

@end