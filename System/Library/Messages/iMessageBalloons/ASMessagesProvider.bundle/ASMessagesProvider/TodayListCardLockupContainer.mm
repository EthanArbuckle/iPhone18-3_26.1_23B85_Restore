@interface TodayListCardLockupContainer
- (CGRect)frame;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)applySizeCategoryUpdates;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation TodayListCardLockupContainer

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TodayListCardLockupContainer();
  [(TodayListCardLockupContainer *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_6F7EC0(x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_6F80F0();
}

- (void)applySizeCategoryUpdates
{
  selfCopy = self;
  sub_6F8A8C();
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_6F9A24();
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_6FC690();
}

@end