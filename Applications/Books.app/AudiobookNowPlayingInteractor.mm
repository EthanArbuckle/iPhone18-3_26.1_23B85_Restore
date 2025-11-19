@interface AudiobookNowPlayingInteractor
- (BOOL)isPreordered;
- (REBuyBookServiceDelegate)serviceDelegate;
- (_TtC5Books29AudiobookNowPlayingInteractor)init;
- (void)buyBookWithCompletion:(id)a3;
@end

@implementation AudiobookNowPlayingInteractor

- (REBuyBookServiceDelegate)serviceDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC5Books29AudiobookNowPlayingInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isPreordered
{
  v2 = self;
  v3 = sub_1002D6298();

  return v3;
}

- (void)buyBookWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1002D78C0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end