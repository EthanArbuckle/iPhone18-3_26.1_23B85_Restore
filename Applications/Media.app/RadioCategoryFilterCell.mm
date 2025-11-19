@interface RadioCategoryFilterCell
- (_TtC5Media23RadioCategoryFilterCell)initWithCoder:(id)a3;
- (_TtC5Media23RadioCategoryFilterCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)controlChangedWithSender:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation RadioCategoryFilterCell

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for RadioCategoryFilterCell();
  v4 = a3;
  v5 = v8.receiver;
  v6 = [(RadioCategoryFilterCell *)&v8 preferredLayoutAttributesFittingAttributes:v4];
  [v6 size];
  [v6 setSize:?];

  return v6;
}

- (void)controlChangedWithSender:(id)a3
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler);
  if (v3)
  {
    v5 = *&self->segmentedControl[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler];
    v6 = a3;
    v7 = self;
    sub_10005BF90(v3);
    v3([v6 selectedSegmentIndex]);

    sub_10003DEF8(v3);
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100051C4C(v6, v7);
}

- (_TtC5Media23RadioCategoryFilterCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl) = 0;
  v8 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler);
  v9 = type metadata accessor for RadioCategoryFilterCell();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(RadioCategoryFilterCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC5Media23RadioCategoryFilterCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl) = 0;
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RadioCategoryFilterCell();
  v5 = a3;
  v6 = [(RadioCategoryFilterCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end