@interface ZoomSliderBarButtonItem
- (_TtC7Journal23ZoomSliderBarButtonItem)init;
- (_TtC7Journal23ZoomSliderBarButtonItem)initWithCoder:(id)a3;
@end

@implementation ZoomSliderBarButtonItem

- (_TtC7Journal23ZoomSliderBarButtonItem)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7Journal23ZoomSliderBarButtonItem_slider;
  type metadata accessor for ZoomSliderBarButtonItem.Slider();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.isa + v4) = v5;

  type metadata accessor for ZoomSliderBarButtonItem();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtC7Journal23ZoomSliderBarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end