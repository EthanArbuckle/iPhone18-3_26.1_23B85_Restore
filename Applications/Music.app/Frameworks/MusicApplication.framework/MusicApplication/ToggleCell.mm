@interface ToggleCell
- (_TtC16MusicApplication10ToggleCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)switchValueChanged:(id)changed;
@end

@implementation ToggleCell

- (_TtC16MusicApplication10ToggleCell)initWithCoder:(id)coder
{
  *&self->_TtC16MusicApplication15MultiChoiceCell_opaque[OBJC_IVAR____TtC16MusicApplication10ToggleCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  self->_TtC16MusicApplication15MultiChoiceCell_opaque[OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled] = 0;
  *&self->_TtC16MusicApplication15MultiChoiceCell_opaque[OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView] = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_155E70();
}

- (void)switchValueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_156440(changedCopy);
}

@end