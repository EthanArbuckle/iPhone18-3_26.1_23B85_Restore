@interface StartSharingTimeSelectionCell
- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithCoder:(id)a3;
- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation StartSharingTimeSelectionCell

- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875EA80();
  sub_23863505C(a3, v7, v8, a5);
  v10 = v9;

  return v10;
}

- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v6 = sub_23875EA80();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_23863525C(a3, v6, v8);

  return v9;
}

- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithCoder:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow) = 0;
  result = sub_23875F520();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_23863BB04();
}

@end