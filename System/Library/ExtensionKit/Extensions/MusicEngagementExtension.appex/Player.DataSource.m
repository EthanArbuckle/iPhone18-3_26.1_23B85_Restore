@interface Player.DataSource
- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4;
- (_TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource)init;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
@end

@implementation Player.DataSource

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized Player.DataSource.controller(_:defersResponseReplacement:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  if ([v6 request])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      (*(&v8->super.isa + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError))(v9, v7);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  return 1;
}

- (_TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end