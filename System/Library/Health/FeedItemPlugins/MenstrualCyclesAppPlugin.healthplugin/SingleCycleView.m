@interface SingleCycleView
- (UIColor)backgroundColor;
- (_TtC24MenstrualCyclesAppPlugin15SingleCycleView)initWithCoder:(id)a3;
- (void)adaptToColorSchemeChanges;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)viewModelProviderDidUpdate:(id)a3;
@end

@implementation SingleCycleView

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SingleCycleView();
  v2 = [(SingleCycleView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for SingleCycleView();
  v4 = a3;
  v5 = v8.receiver;
  [(SingleCycleView *)&v8 setBackgroundColor:v4];
  v6 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView];
  v7 = [v5 backgroundColor];
  [v6 setBackgroundColor_];
}

- (_TtC24MenstrualCyclesAppPlugin15SingleCycleView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_filter) = 51;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient;
  if (qword_2A1817020 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1841160;
  v6 = [objc_allocWithZone(MEMORY[0x29EDBBAA0]) init];
  sub_29E1C8EF4(v5);
  *(&self->super.super.super.isa + v4) = v6;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)layoutMarginsDidChange
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView);
  v5 = self;
  [(SingleCycleView *)v5 layoutMargins];
  v4 = v3;
  [(SingleCycleView *)v5 layoutMargins];
  [v2 setContentInset_];
}

- (void)adaptToColorSchemeChanges
{
  v2 = self;
  sub_29E1C98B8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_29E1C9A70();
}

- (void)viewModelProviderDidUpdate:(id)a3
{
  v3 = self;
  sub_29E1CAA78();
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  type metadata accessor for CycleHistoryCycleDayCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a4;
    v14 = self;
    sub_29E1CAEDC(v12);
  }

  (*(v8 + 8))(v10, v7);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource);
  if (v10 && (*(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState) & 1) == 0)
  {
    v11 = self;
    v12 = v10;
    sub_29E1C9C4C();
  }

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E1CB424(v4);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E1CBB64("[%{public}s] scrollViewDidEndScrollingAnimation: resuming data fetching");
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_29E1CB964(a4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E1CBB64("[%{public}s] scrollViewDidEndDecelerating: resuming data fetching");
}

@end