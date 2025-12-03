@interface StatefulManager
- (void)client:(id)client clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space;
- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error;
- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy;
- (void)client:(id)client downloadDidStart:(id)start;
- (void)client:(id)client downloadProgressDidChange:(id)change;
- (void)client:(id)client downloadWasInvalidatedForNewUpdatesAvailable:(id)available;
- (void)client:(id)client handleUIForDDMDeclaration:(id)declaration;
- (void)client:(id)client inUserInteraction:(id)interaction;
- (void)client:(id)client installDidFail:(id)fail withError:(id)error;
- (void)client:(id)client installDidFinish:(id)finish;
- (void)client:(id)client installDidStart:(id)start;
- (void)client:(id)client rollbackDidFail:(id)fail withError:(id)error;
- (void)client:(id)client rollbackDidFinish:(id)finish;
- (void)client:(id)client rollbackDidStart:(id)start;
- (void)client:(id)client scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error;
- (void)client:(id)client scanRequestDidStartForOptions:(id)options;
@end

@implementation StatefulManager

- (void)client:(id)client scanRequestDidStartForOptions:(id)options
{
  _objc_retain(client);
  _objc_retain(options);
  _objc_retain(self);
  sub_8351C(client, options);
  _objc_release(self);
  _objc_release(options);
  _objc_release(client);
}

- (void)client:(id)client scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error
{
  _objc_retain(client);
  _objc_retain(options);
  _objc_retain(results);
  _objc_retain(error);
  _objc_retain(self);
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = 0;
  }

  sub_83C74(client, options, results, errorCopy);

  _objc_release(self);
  _objc_release(results);
  _objc_release(options);
  _objc_release(client);
}

- (void)client:(id)client downloadDidStart:(id)start
{
  _objc_retain(client);
  _objc_retain(start);
  _objc_retain(self);
  sub_84FF8(client, start);
  _objc_release(self);
  _objc_release(start);
  _objc_release(client);
}

- (void)client:(id)client downloadProgressDidChange:(id)change
{
  _objc_retain(client);
  _objc_retain(change);
  _objc_retain(self);
  sub_859CC(client, change);
  _objc_release(self);
  _objc_release(change);
  _objc_release(client);
}

- (void)client:(id)client downloadWasInvalidatedForNewUpdatesAvailable:(id)available
{
  _objc_retain(client);
  _objc_retain(available);
  _objc_retain(self);
  sub_870A8(client, available);
  _objc_release(self);
  _objc_release(available);
  _objc_release(client);
}

- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy
{
  _objc_retain(client);
  _objc_retain(finish);
  _objc_retain(policy);
  _objc_retain(self);
  sub_879D0(client, finish, policy);
  _objc_release(self);
  _objc_release(policy);
  _objc_release(finish);
  _objc_release(client);
}

- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error
{
  _objc_retain(client);
  _objc_retain(fail);
  _objc_retain(error);
  _objc_retain(self);
  sub_88D44(client, fail, error);

  _objc_release(self);
  _objc_release(fail);
  _objc_release(client);
}

- (void)client:(id)client clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space
{
  _objc_retain(client);
  _objc_retain(download);
  _objc_retain(self);
  v6 = sub_992B0();
  sub_8A4B0(client, download, v6 & 1);
  _objc_release(self);
  _objc_release(download);
  _objc_release(client);
}

- (void)client:(id)client installDidStart:(id)start
{
  _objc_retain(client);
  _objc_retain(start);
  _objc_retain(self);
  sub_8BCBC(client, start);
  _objc_release(self);
  _objc_release(start);
  _objc_release(client);
}

- (void)client:(id)client installDidFail:(id)fail withError:(id)error
{
  _objc_retain(client);
  _objc_retain(fail);
  _objc_retain(error);
  _objc_retain(self);
  sub_8CCC4(client, fail, error);

  _objc_release(self);
  _objc_release(fail);
  _objc_release(client);
}

- (void)client:(id)client installDidFinish:(id)finish
{
  _objc_retain(client);
  _objc_retain(finish);
  _objc_retain(self);
  sub_8E168(client, finish);
  _objc_release(self);
  _objc_release(finish);
  _objc_release(client);
}

- (void)client:(id)client rollbackDidStart:(id)start
{
  _objc_retain(client);
  _objc_retain(start);
  _objc_retain(self);
  sub_8EB24(client, start);
  _objc_release(self);
  _objc_release(start);
  _objc_release(client);
}

- (void)client:(id)client rollbackDidFinish:(id)finish
{
  _objc_retain(client);
  _objc_retain(finish);
  _objc_retain(self);
  sub_8F22C(client, finish);
  _objc_release(self);
  _objc_release(finish);
  _objc_release(client);
}

- (void)client:(id)client rollbackDidFail:(id)fail withError:(id)error
{
  _objc_retain(client);
  _objc_retain(fail);
  _objc_retain(error);
  _objc_retain(self);
  sub_90B84(client, fail, error);

  _objc_release(self);
  _objc_release(fail);
  _objc_release(client);
}

- (void)client:(id)client inUserInteraction:(id)interaction
{
  _objc_retain(client);
  v6 = _Block_copy(interaction);
  _objc_retain(self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_929AC(client, sub_96F18, v7);

  _objc_release(self);
  _objc_release(client);
}

- (void)client:(id)client handleUIForDDMDeclaration:(id)declaration
{
  _objc_retain(client);
  _objc_retain(declaration);
  _objc_retain(self);
  sub_92F84(client, declaration);
  _objc_release(self);
  _objc_release(declaration);
  _objc_release(client);
}

@end