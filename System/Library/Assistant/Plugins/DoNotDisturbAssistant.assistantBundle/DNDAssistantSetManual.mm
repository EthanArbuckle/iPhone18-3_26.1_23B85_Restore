@interface DNDAssistantSetManual
- (void)performWithCompletion:(id)completion;
@end

@implementation DNDAssistantSetManual

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_BF8;
  v7[3] = &unk_4120;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

@end