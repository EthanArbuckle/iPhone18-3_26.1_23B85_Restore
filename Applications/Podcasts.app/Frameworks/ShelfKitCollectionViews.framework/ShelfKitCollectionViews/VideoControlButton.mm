@interface VideoControlButton
- (BOOL)isSelected;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23ShelfKitCollectionViews18VideoControlButton)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews18VideoControlButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
- (void)wasTapped;
@end

@implementation VideoControlButton

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VideoControlButton();
  return [(VideoControlButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = type metadata accessor for VideoControlButton();
  v4 = v5.receiver;
  [(VideoControlButton *)&v5 setSelected:selectedCopy];
  sub_2F9250();
}

- (_TtC23ShelfKitCollectionViews18VideoControlButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_selectedGlyph) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_selectedType) = 7;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2F9498();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_2F9B8C();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)wasTapped
{
  selfCopy = self;
  [(VideoControlButton *)selfCopy setSelected:[(VideoControlButton *)selfCopy isSelected]^ 1];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(VideoControlButton *)selfCopy bounds];
  v11.origin.x = UIEdgeInsetsInsetRect_4(v7);
  v10.x = x;
  v10.y = y;
  v8 = CGRectContainsPoint(v11, v10);

  return v8;
}

- (_TtC23ShelfKitCollectionViews18VideoControlButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end