@interface SwitchAppOwnerTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation SwitchAppOwnerTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [BagService appstoredServiceForAccount:*(&self->super._finished + 1)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003CCA10;
  v7[3] = &unk_10051F508;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 upToDateBagWithCompletionHandler:v7];
}

@end