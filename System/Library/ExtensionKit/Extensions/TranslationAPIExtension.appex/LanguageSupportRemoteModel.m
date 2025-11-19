@interface LanguageSupportRemoteModel
- (BOOL)shouldAcceptWithConnection:(id)a3;
- (void)preflightChecker:(id)a3 continueCheckingFromStep:(int64_t)a4 forConfiguration:(id)a5 completion:(id)a6;
- (void)startRequestWithConfiguration:(id)a3;
@end

@implementation LanguageSupportRemoteModel

- (void)preflightChecker:(id)a3 continueCheckingFromStep:(int64_t)a4 forConfiguration:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a5;
  v14 = self;
  sub_100014CB4(a4, v13, sub_1000159D4, v11);
}

- (void)startRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  LanguageSupportRemoteModel.startRequest(configuration:)(v4);
}

- (BOOL)shouldAcceptWithConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  LanguageSupportRemoteModel.shouldAccept(connection:)(v4);

  return 1;
}

@end