@interface RemoteAppIntentsActor.PerformActionExecutorDelegate
- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsChoiceWithRequest:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
@end

@implementation RemoteAppIntentsActor.PerformActionExecutorDelegate

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_221A6A6A4(v6, v7, sub_221A5F368);
}

- (void)executor:(id)a3 needsChoiceWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_221A6A6A4(v6, v7, sub_221A5F804);
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_221A6A6A4(v6, v7, sub_221A5F368);
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_221A6A6A4(v6, v7, sub_221A5F368);
}

- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_221A6A6A4(v6, v7, sub_221A5F368);
}

- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_221A6A6A4(v6, v7, sub_221A5F368);
}

@end