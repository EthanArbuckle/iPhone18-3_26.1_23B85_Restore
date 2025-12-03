@interface CycleHistoryCell
- (BOOL)isHighlighted;
- (UIColor)backgroundColor;
- (_TtC24MenstrualCyclesAppPlugin16CycleHistoryCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin16CycleHistoryCell)initWithFrame:(CGRect)frame;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CycleHistoryCell

- (_TtC24MenstrualCyclesAppPlugin16CycleHistoryCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  v9 = type metadata accessor for CycleHistorySingleCycleView();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v10 = [objc_allocWithZone(v9) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_singleCycleView) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for CycleHistoryCell();
  height = [(CycleHistoryCell *)&v13 initWithFrame:x, y, width, height];
  sub_29E1613D8();

  return height;
}

- (_TtC24MenstrualCyclesAppPlugin16CycleHistoryCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CycleHistoryCell();
  return [(CycleHistoryCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CycleHistoryCell();
  v4 = v5.receiver;
  [(CycleHistoryCell *)&v5 setHighlighted:highlightedCopy];
  sub_29E161170();
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CycleHistoryCell();
  backgroundColor = [(CycleHistoryCell *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CycleHistoryCell();
  v4 = v9.receiver;
  colorCopy = color;
  [(CycleHistoryCell *)&v9 setBackgroundColor:colorCopy];
  backgroundColor = [v4 backgroundColor];
  if (backgroundColor)
  {
    v7 = backgroundColor;
    v8 = *(*&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_singleCycleView] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView);
    sub_29E1C8D84(v7);
  }

  else
  {
    v8 = colorCopy;
    colorCopy = v4;
  }
}

@end