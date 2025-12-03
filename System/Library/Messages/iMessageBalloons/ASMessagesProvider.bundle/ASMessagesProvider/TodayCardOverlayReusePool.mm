@interface TodayCardOverlayReusePool
- (void)clearStackFor:(id)for;
@end

@implementation TodayCardOverlayReusePool

- (void)clearStackFor:(id)for
{
  v4 = sub_756CE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v8 = *(v5 + 8);

  v8(v7, v4);
  swift_beginAccess();
  *self->stack = _swiftEmptyArrayStorage;
}

@end