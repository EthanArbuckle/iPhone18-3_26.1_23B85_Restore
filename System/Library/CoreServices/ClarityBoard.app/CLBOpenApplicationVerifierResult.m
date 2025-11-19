@interface CLBOpenApplicationVerifierResult
- (CLBOpenApplicationVerifierResult)init;
- (CLBOpenApplicationVerifierResultError)error;
- (NSURL)pptTestURL;
@end

@implementation CLBOpenApplicationVerifierResult

- (CLBOpenApplicationVerifierResultError)error
{
  v2 = self;
  v3 = sub_10008AAB0();

  return v3;
}

- (NSURL)pptTestURL
{
  v3 = sub_10002B6CC(&qword_10032C148);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = self + OBJC_IVAR___CLBOpenApplicationVerifierResult_implementation;
  v7 = type metadata accessor for OpenApplicationVerifierResult();
  sub_10003AFFC(&v6[*(v7 + 20)], v5, &qword_10032C148);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v5, v8);
    v11 = v13;
  }

  return v11;
}

- (CLBOpenApplicationVerifierResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end