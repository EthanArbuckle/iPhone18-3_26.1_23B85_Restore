@interface ActionCell
- (NSString)title;
- (_TtC16MusicApplication10ActionCell)initWithCoder:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation ActionCell

- (_TtC16MusicApplication10ActionCell)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC16MusicApplication10ActionCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC16MusicApplication10ActionCell_titleAlignment) = 4;
  v4 = self + OBJC_IVAR____TtC16MusicApplication10ActionCell_textComponents;
  v5 = [objc_opt_self() whiteColor];
  *v4 = 0;
  v4[8] = 4;
  *(v4 + 2) = v5;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)title
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)a3
{
  v5 = sub_AB92A0();
  v7 = v6;
  v9 = a3;
  v8 = self;
  sub_419598(v5, v7);
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for ActionCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(ActionCell *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(ActionCell *)&v8 setHighlighted:v3];
  if (v7 != [(ActionCell *)v6 isHighlighted])
  {
    sub_419980();
  }
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_419844(a3);
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActionCell();
  v2 = v3.receiver;
  [(ActionCell *)&v3 tintColorDidChange];
  sub_419980();
}

@end