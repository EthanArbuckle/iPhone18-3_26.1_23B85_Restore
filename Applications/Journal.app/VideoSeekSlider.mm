@interface VideoSeekSlider
- (_TtC7Journal15VideoSeekSlider)initWithCoder:(id)coder;
- (void)editingDidBegin;
- (void)editingDidEnd;
@end

@implementation VideoSeekSlider

- (_TtC7Journal15VideoSeekSlider)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal15VideoSeekSlider_isTrackingObserver) = 0;
  type metadata accessor for VideoSeekSlider();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)editingDidBegin
{
  if ((*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing) & 1) == 0)
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing) = 1;
    [(VideoSeekSlider *)self sendActionsForControlEvents:0x10000];
  }
}

- (void)editingDidEnd
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing) == 1)
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing) = 0;
    [(VideoSeekSlider *)self sendActionsForControlEvents:0x40000];
  }
}

@end