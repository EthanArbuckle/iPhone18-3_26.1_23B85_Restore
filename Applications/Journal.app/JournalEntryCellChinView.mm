@interface JournalEntryCellChinView
- (NSDirectionalEdgeInsets)hitTestDirectionalInsets;
- (void)changeJournal:(id)a3;
- (void)handleTapUnsupportedTriangleView;
- (void)setHitTestDirectionalInsets:(NSDirectionalEdgeInsets)a3;
- (void)updateOverflowMenu:(id)a3;
@end

@implementation JournalEntryCellChinView

- (NSDirectionalEdgeInsets)hitTestDirectionalInsets
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JournalEntryCellChinView();
  [(JournalEntryCellChinView *)&v6 hitTestDirectionalInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setHitTestDirectionalInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v10.receiver = self;
  v10.super_class = type metadata accessor for JournalEntryCellChinView();
  v7 = v10.receiver;
  [(JournalEntryCellChinView *)&v10 setHitTestDirectionalInsets:top, leading, bottom, trailing];
  v8 = *&v7[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_metadataButton];
  [v7 hitTestDirectionalInsets];
  [v8 setHitTestDirectionalInsets:?];
  v9 = *&v7[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton];
  [v7 hitTestDirectionalInsets];
  [v9 setHitTestDirectionalInsets:?];
}

- (void)updateOverflowMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006005A8(v4);
}

- (void)handleTapUnsupportedTriangleView
{
  v4 = self;
  v2 = UIView.viewControllerForPresenting.getter();
  if (v2)
  {
    v3 = v2;
    sub_1004164C0(v2);
  }
}

- (void)changeJournal:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100600748(v4);
}

@end