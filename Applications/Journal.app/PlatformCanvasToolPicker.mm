@interface PlatformCanvasToolPicker
- (_TtC7Journal24PlatformCanvasToolPicker)init;
- (void)toolPickerVisibilityDidChange:(id)a3;
@end

@implementation PlatformCanvasToolPicker

- (_TtC7Journal24PlatformCanvasToolPicker)init
{
  *&self->delegate[OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker____lazy_storage___toolPicker) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlatformCanvasToolPicker();
  return [(PlatformCanvasToolPicker *)&v4 init];
}

- (void)toolPickerVisibilityDidChange:(id)a3
{
  v5 = self + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = a3;
    v9 = self;
    (*(v6 + 8))(v9, [v8 isVisible], ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end