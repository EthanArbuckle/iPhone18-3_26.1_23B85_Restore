@interface MediaSocialProfileRequestOperation
- (_TtC16MusicApplication34MediaSocialProfileRequestOperation)init;
- (void)execute;
- (void)finishWithError:(id)error;
@end

@implementation MediaSocialProfileRequestOperation

- (void)execute
{
  selfCopy = self;
  sub_15EBE0();
}

- (void)finishWithError:(id)error
{
  v4 = *&self->MPAsyncOperation_opaque[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_responseHandler];
  v5 = *&self->loadedProfile[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 88];
  v13[6] = *&self->loadedProfile[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 72];
  v13[7] = v5;
  v13[8] = *&self->loadedProfile[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 104];
  v14 = *&self->loadedProfile[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 120];
  v6 = *&self->loadedProfile[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 24];
  v13[2] = *&self->loadedProfile[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 8];
  v13[3] = v6;
  v7 = *&self->loadedProfile[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 56];
  v13[4] = *&self->loadedProfile[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 40];
  v13[5] = v7;
  v8 = *&self->responseHandler[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile + 8];
  v13[0] = *&self->MPAsyncOperation_opaque[OBJC_IVAR____TtC16MusicApplication34MediaSocialProfileRequestOperation_loadedProfile];
  v13[1] = v8;
  selfCopy = self;
  sub_C3374(v13, v12);
  errorCopy = error;
  v4(v13, error);
  sub_12E1C(v13, &unk_E05300);
  if (error)
  {
    error = sub_AB3040();
  }

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for MediaSocialProfileRequestOperation();
  [(MediaSocialProfileRequestOperation *)&v11 finishWithError:error];
}

- (_TtC16MusicApplication34MediaSocialProfileRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end