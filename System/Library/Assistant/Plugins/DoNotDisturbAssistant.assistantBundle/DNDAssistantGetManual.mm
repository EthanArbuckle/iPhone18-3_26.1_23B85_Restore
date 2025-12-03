@interface DNDAssistantGetManual
- (void)performWithCompletion:(id)completion;
@end

@implementation DNDAssistantGetManual

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FB0;
  block[3] = &unk_4148;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

@end