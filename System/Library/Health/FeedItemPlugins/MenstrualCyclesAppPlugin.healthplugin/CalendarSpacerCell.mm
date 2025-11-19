@interface CalendarSpacerCell
- (_TtC24MenstrualCyclesAppPluginP33_8E406FA80AA561E3BD9142F0947B523C18CalendarSpacerCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPluginP33_8E406FA80AA561E3BD9142F0947B523C18CalendarSpacerCell)initWithFrame:(CGRect)a3;
- (_TtC24MenstrualCyclesAppPluginP33_E2A74A3571DFB3F0DC6AF1D960E826C318CalendarSpacerCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPluginP33_E2A74A3571DFB3F0DC6AF1D960E826C318CalendarSpacerCell)initWithFrame:(CGRect)a3;
@end

@implementation CalendarSpacerCell

- (_TtC24MenstrualCyclesAppPluginP33_8E406FA80AA561E3BD9142F0947B523C18CalendarSpacerCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CalendarSpacerCell();
  return [(CalendarSpacerCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC24MenstrualCyclesAppPluginP33_8E406FA80AA561E3BD9142F0947B523C18CalendarSpacerCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CalendarSpacerCell();
  v4 = a3;
  v5 = [(CalendarSpacerCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC24MenstrualCyclesAppPluginP33_E2A74A3571DFB3F0DC6AF1D960E826C318CalendarSpacerCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = _s24MenstrualCyclesAppPlugin18CalendarSpacerCellCMa_0();
  return [(CalendarSpacerCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC24MenstrualCyclesAppPluginP33_E2A74A3571DFB3F0DC6AF1D960E826C318CalendarSpacerCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _s24MenstrualCyclesAppPlugin18CalendarSpacerCellCMa_0();
  v4 = a3;
  v5 = [(CalendarSpacerCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end