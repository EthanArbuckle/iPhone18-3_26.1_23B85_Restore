@interface AudiobookNowPlayingInteractor
- (BOOL)isPreordered;
- (REBuyBookServiceDelegate)serviceDelegate;
- (_TtC5Books29AudiobookNowPlayingInteractor)init;
- (void)buyBookWithCompletion:(id)completion;
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
  selfCopy = self;
  v3 = sub_1002D6298();

  return v3;
}

- (void)buyBookWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1002D78C0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end