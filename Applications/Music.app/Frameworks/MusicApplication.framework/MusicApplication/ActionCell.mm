@interface ActionCell
- (NSString)title;
- (_TtC16MusicApplication10ActionCell)initWithCoder:(id)coder;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title;
- (void)tintColorDidChange;
@end

@implementation ActionCell

- (_TtC16MusicApplication10ActionCell)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC16MusicApplication10ActionCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC16MusicApplication10ActionCell_titleAlignment) = 4;
  v4 = self + OBJC_IVAR____TtC16MusicApplication10ActionCell_textComponents;
  whiteColor = [objc_opt_self() whiteColor];
  *v4 = 0;
  v4[8] = 4;
  *(v4 + 2) = whiteColor;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)title
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v7 = v6;
  titleCopy = title;
  selfCopy = self;
  sub_419598(v5, v7);
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for ActionCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(ActionCell *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(ActionCell *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != [(ActionCell *)selfCopy isHighlighted])
  {
    sub_419980();
  }
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_419844(selected);
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