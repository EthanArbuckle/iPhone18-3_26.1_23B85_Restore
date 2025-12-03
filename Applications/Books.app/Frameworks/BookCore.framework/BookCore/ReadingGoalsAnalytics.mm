@interface ReadingGoalsAnalytics
- (void)sessionActivityStateDidChange:(id)change;
@end

@implementation ReadingGoalsAnalytics

- (void)sessionActivityStateDidChange:(id)change
{
  v3 = sub_1EDD64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();

  sub_1947A0();

  (*(v4 + 8))(v6, v3);
}

@end