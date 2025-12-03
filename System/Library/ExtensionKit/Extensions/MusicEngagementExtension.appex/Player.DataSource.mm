@interface Player.DataSource
- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error;
- (_TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource)init;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
@end

@implementation Player.DataSource

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  v6 = _Block_copy(replacement);
  _Block_copy(v6);
  controllerCopy = controller;
  selfCopy = self;
  specialized Player.DataSource.controller(_:defersResponseReplacement:)(controllerCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  if ([controllerCopy request])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      (*(&selfCopy->super.isa + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError))(v9, errorCopy);
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