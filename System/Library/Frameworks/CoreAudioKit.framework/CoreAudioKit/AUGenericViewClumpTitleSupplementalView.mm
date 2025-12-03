@interface AUGenericViewClumpTitleSupplementalView
- (_TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView)initWithCoder:(id)coder;
- (_TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView)initWithFrame:(CGRect)frame;
@end

@implementation AUGenericViewClumpTitleSupplementalView

- (_TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView_label;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for AUGenericViewClumpTitleSupplementalView();
  height = [(AUGenericViewClumpTitleSupplementalView *)&v11 initWithFrame:x, y, width, height];
  sub_23710E524();

  return height;
}

- (_TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView_label;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  result = sub_2371969DC();
  __break(1u);
  return result;
}

@end