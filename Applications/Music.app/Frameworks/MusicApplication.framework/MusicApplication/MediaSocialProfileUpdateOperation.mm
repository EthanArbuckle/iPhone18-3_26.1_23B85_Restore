@interface MediaSocialProfileUpdateOperation
- (_TtC16MusicApplication33MediaSocialProfileUpdateOperation)init;
- (void)execute;
- (void)finishWithError:(id)error;
@end

@implementation MediaSocialProfileUpdateOperation

- (void)execute
{
  selfCopy = self;
  sub_135F20();
}

- (void)finishWithError:(id)error
{
  v5 = *&self->MPAsyncOperation_opaque[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_responseHandler];
  if (!v5)
  {
    selfCopy = self;
    errorCopy = error;
    if (error)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  selfCopy2 = self;
  errorCopy2 = error;
  v5(error);
  if (!error)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_AB3040();
LABEL_6:
  v11.receiver = self;
  v11.super_class = type metadata accessor for MediaSocialProfileUpdateOperation();
  [(MediaSocialProfileUpdateOperation *)&v11 finishWithError:v8];
}

- (_TtC16MusicApplication33MediaSocialProfileUpdateOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end