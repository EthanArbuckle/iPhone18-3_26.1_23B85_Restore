@interface SystemIntentExecutorDelegate
- (void)executor:(id)a3 didCompleteExecutionWithResult:(id)a4 error:(id)a5;
- (void)executor:(void *)a3 needsDisambiguationWithRequest:(void *)a4;
@end

@implementation SystemIntentExecutorDelegate

- (void)executor:(void *)a3 needsDisambiguationWithRequest:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_18F16B9EC();
}

- (void)executor:(id)a3 didCompleteExecutionWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_18F16B7F4(v11, a4, a5);
}

@end