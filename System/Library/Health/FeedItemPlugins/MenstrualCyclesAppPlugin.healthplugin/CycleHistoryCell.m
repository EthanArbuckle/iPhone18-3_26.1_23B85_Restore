@interface CycleHistoryCell
- (BOOL)isHighlighted;
- (UIColor)backgroundColor;
- (_TtC24MenstrualCyclesAppPlugin16CycleHistoryCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin16CycleHistoryCell)initWithFrame:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CycleHistoryCell

- (_TtC24MenstrualCyclesAppPlugin16CycleHistoryCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_item;
  v9 = type metadata accessor for CycleHistorySingleCycleView();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v10 = [objc_allocWithZone(v9) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_singleCycleView) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for CycleHistoryCell();
  v11 = [(CycleHistoryCell *)&v13 initWithFrame:x, y, width, height];
  sub_29E1613D8();

  return v11;
}

- (_TtC24MenstrualCyclesAppPlugin16CycleHistoryCell)initWithCoder:(id)a3
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CycleHistoryCell();
  v4 = v5.receiver;
  [(CycleHistoryCell *)&v5 setHighlighted:v3];
  sub_29E161170();
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CycleHistoryCell();
  v2 = [(CycleHistoryCell *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CycleHistoryCell();
  v4 = v9.receiver;
  v5 = a3;
  [(CycleHistoryCell *)&v9 setBackgroundColor:v5];
  v6 = [v4 backgroundColor];
  if (v6)
  {
    v7 = v6;
    v8 = *(*&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleHistoryCell_singleCycleView] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView);
    sub_29E1C8D84(v7);
  }

  else
  {
    v8 = v5;
    v5 = v4;
  }
}

@end