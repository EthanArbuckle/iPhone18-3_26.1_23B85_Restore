@interface AUGenericViewClumpTitleSupplementalView
- (_TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView)initWithCoder:(id)a3;
- (_TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView)initWithFrame:(CGRect)a3;
@end

@implementation AUGenericViewClumpTitleSupplementalView

- (_TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView_label;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for AUGenericViewClumpTitleSupplementalView();
  v9 = [(AUGenericViewClumpTitleSupplementalView *)&v11 initWithFrame:x, y, width, height];
  sub_23710E524();

  return v9;
}

- (_TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView_label;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  result = sub_2371969DC();
  __break(1u);
  return result;
}

@end