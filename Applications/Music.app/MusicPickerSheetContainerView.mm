@interface MusicPickerSheetContainerView
- (_TtC5Music29MusicPickerSheetContainerView)initWithCoder:(id)a3;
@end

@implementation MusicPickerSheetContainerView

- (_TtC5Music29MusicPickerSheetContainerView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_sourceTracks) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dataSource;
  type metadata accessor for PickerDataSource();
  swift_allocObject();
  *(&self->super.super.super.isa + v6) = sub_100650034();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end