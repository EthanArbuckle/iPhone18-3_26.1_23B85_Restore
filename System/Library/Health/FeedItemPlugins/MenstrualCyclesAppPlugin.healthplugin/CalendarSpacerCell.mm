@interface CalendarSpacerCell
- (_TtC24MenstrualCyclesAppPluginP33_8E406FA80AA561E3BD9142F0947B523C18CalendarSpacerCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPluginP33_8E406FA80AA561E3BD9142F0947B523C18CalendarSpacerCell)initWithFrame:(CGRect)frame;
- (_TtC24MenstrualCyclesAppPluginP33_E2A74A3571DFB3F0DC6AF1D960E826C318CalendarSpacerCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPluginP33_E2A74A3571DFB3F0DC6AF1D960E826C318CalendarSpacerCell)initWithFrame:(CGRect)frame;
@end

@implementation CalendarSpacerCell

- (_TtC24MenstrualCyclesAppPluginP33_8E406FA80AA561E3BD9142F0947B523C18CalendarSpacerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CalendarSpacerCell();
  return [(CalendarSpacerCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC24MenstrualCyclesAppPluginP33_8E406FA80AA561E3BD9142F0947B523C18CalendarSpacerCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CalendarSpacerCell();
  coderCopy = coder;
  v5 = [(CalendarSpacerCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC24MenstrualCyclesAppPluginP33_E2A74A3571DFB3F0DC6AF1D960E826C318CalendarSpacerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = _s24MenstrualCyclesAppPlugin18CalendarSpacerCellCMa_0();
  return [(CalendarSpacerCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC24MenstrualCyclesAppPluginP33_E2A74A3571DFB3F0DC6AF1D960E826C318CalendarSpacerCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _s24MenstrualCyclesAppPlugin18CalendarSpacerCellCMa_0();
  coderCopy = coder;
  v5 = [(CalendarSpacerCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end