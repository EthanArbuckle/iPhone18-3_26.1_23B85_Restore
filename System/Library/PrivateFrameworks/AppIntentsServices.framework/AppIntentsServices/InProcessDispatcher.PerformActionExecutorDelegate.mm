@interface InProcessDispatcher.PerformActionExecutorDelegate
- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsChoiceWithRequest:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
@end

@implementation InProcessDispatcher.PerformActionExecutorDelegate

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2219F18C8();
}

- (void)executor:(id)a3 needsChoiceWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2219F3E58();
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2219F18C8();
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2219F18C8();
}

- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2219F3E58();
}

- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2219F3E58();
}

@end