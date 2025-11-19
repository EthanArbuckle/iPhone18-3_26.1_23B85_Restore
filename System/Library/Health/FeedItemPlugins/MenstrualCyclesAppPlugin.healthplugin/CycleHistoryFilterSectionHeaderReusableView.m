@interface CycleHistoryFilterSectionHeaderReusableView
- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView)initWithFrame:(CGRect)a3;
@end

@implementation CycleHistoryFilterSectionHeaderReusableView

- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabel;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabelText);
  v10 = type metadata accessor for CycleHistoryFilterSectionHeaderReusableView();
  *v9 = 0;
  v9[1] = 0;
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(CycleHistoryFilterSectionHeaderReusableView *)&v13 initWithFrame:x, y, width, height];
  sub_29E27D400();

  return v11;
}

- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabelText);
  *v5 = 0;
  v5[1] = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end