@interface PlatformCanvasToolPicker
- (_TtC7Journal24PlatformCanvasToolPicker)init;
- (void)toolPickerVisibilityDidChange:(id)change;
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

- (void)toolPickerVisibilityDidChange:(id)change
{
  v5 = self + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    changeCopy = change;
    selfCopy = self;
    (*(v6 + 8))(selfCopy, [changeCopy isVisible], ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end