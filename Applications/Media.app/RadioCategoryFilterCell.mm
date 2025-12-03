@interface RadioCategoryFilterCell
- (_TtC5Media23RadioCategoryFilterCell)initWithCoder:(id)coder;
- (_TtC5Media23RadioCategoryFilterCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)controlChangedWithSender:(id)sender;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation RadioCategoryFilterCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for RadioCategoryFilterCell();
  attributesCopy = attributes;
  v5 = v8.receiver;
  v6 = [(RadioCategoryFilterCell *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];
  [v6 size];
  [v6 setSize:?];

  return v6;
}

- (void)controlChangedWithSender:(id)sender
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler);
  if (v3)
  {
    v5 = *&self->segmentedControl[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler];
    senderCopy = sender;
    selfCopy = self;
    sub_10005BF90(v3);
    v3([senderCopy selectedSegmentIndex]);

    sub_10003DEF8(v3);
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_100051C4C(contextCopy, coordinatorCopy);
}

- (_TtC5Media23RadioCategoryFilterCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl) = 0;
  v8 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler);
  v9 = type metadata accessor for RadioCategoryFilterCell();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(RadioCategoryFilterCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC5Media23RadioCategoryFilterCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl) = 0;
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RadioCategoryFilterCell();
  coderCopy = coder;
  v6 = [(RadioCategoryFilterCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end