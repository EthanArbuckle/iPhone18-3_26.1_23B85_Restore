@interface ToggleCell
- (_TtC16MusicApplication10ToggleCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)switchValueChanged:(id)a3;
@end

@implementation ToggleCell

- (_TtC16MusicApplication10ToggleCell)initWithCoder:(id)a3
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
  v2 = self;
  sub_155E70();
}

- (void)switchValueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_156440(v4);
}

@end