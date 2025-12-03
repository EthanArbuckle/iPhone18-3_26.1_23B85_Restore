@interface SingleCycleView
- (UIColor)backgroundColor;
- (_TtC24MenstrualCyclesAppPlugin15SingleCycleView)initWithCoder:(id)coder;
- (void)adaptToColorSchemeChanges;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBackgroundColor:(id)color;
- (void)viewModelProviderDidUpdate:(id)update;
@end

@implementation SingleCycleView

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SingleCycleView();
  backgroundColor = [(SingleCycleView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for SingleCycleView();
  colorCopy = color;
  v5 = v8.receiver;
  [(SingleCycleView *)&v8 setBackgroundColor:colorCopy];
  v6 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView];
  backgroundColor = [v5 backgroundColor];
  [v6 setBackgroundColor_];
}

- (_TtC24MenstrualCyclesAppPlugin15SingleCycleView)initWithCoder:(id)coder
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
  selfCopy = self;
  [(SingleCycleView *)selfCopy layoutMargins];
  v4 = v3;
  [(SingleCycleView *)selfCopy layoutMargins];
  [v2 setContentInset_];
}

- (void)adaptToColorSchemeChanges
{
  selfCopy = self;
  sub_29E1C98B8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29E1C9A70();
}

- (void)viewModelProviderDidUpdate:(id)update
{
  selfCopy = self;
  sub_29E1CAA78();
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
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
    cellCopy = cell;
    selfCopy = self;
    sub_29E1CAEDC(v12);
  }

  (*(v8 + 8))(v10, v7);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource);
  if (v10 && (*(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState) & 1) == 0)
  {
    selfCopy = self;
    v12 = v10;
    sub_29E1C9C4C();
  }

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_29E1CB424(scrollCopy);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_29E1CBB64("[%{public}s] scrollViewDidEndScrollingAnimation: resuming data fetching");
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_29E1CB964(decelerate);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_29E1CBB64("[%{public}s] scrollViewDidEndDecelerating: resuming data fetching");
}

@end