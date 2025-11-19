@interface StatefulManager
- (void)client:(id)a3 clearingSpaceForDownload:(id)a4 clearingSpace:(BOOL)a5;
- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5;
- (void)client:(id)a3 downloadDidStart:(id)a4;
- (void)client:(id)a3 downloadProgressDidChange:(id)a4;
- (void)client:(id)a3 downloadWasInvalidatedForNewUpdatesAvailable:(id)a4;
- (void)client:(id)a3 handleUIForDDMDeclaration:(id)a4;
- (void)client:(id)a3 inUserInteraction:(id)a4;
- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 installDidFinish:(id)a4;
- (void)client:(id)a3 installDidStart:(id)a4;
- (void)client:(id)a3 rollbackDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 rollbackDidFinish:(id)a4;
- (void)client:(id)a3 rollbackDidStart:(id)a4;
- (void)client:(id)a3 scanRequestDidFinishForOptions:(id)a4 results:(id)a5 error:(id)a6;
- (void)client:(id)a3 scanRequestDidStartForOptions:(id)a4;
@end

@implementation StatefulManager

- (void)client:(id)a3 scanRequestDidStartForOptions:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_8351C(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 scanRequestDidFinishForOptions:(id)a4 results:(id)a5 error:(id)a6
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(a6);
  _objc_retain(self);
  if (a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = 0;
  }

  sub_83C74(a3, a4, a5, v6);

  _objc_release(self);
  _objc_release(a5);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 downloadDidStart:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_84FF8(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 downloadProgressDidChange:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_859CC(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 downloadWasInvalidatedForNewUpdatesAvailable:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_870A8(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(self);
  sub_879D0(a3, a4, a5);
  _objc_release(self);
  _objc_release(a5);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(self);
  sub_88D44(a3, a4, a5);

  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 clearingSpaceForDownload:(id)a4 clearingSpace:(BOOL)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  v6 = sub_992B0();
  sub_8A4B0(a3, a4, v6 & 1);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 installDidStart:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_8BCBC(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(self);
  sub_8CCC4(a3, a4, a5);

  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 installDidFinish:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_8E168(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 rollbackDidStart:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_8EB24(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 rollbackDidFinish:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_8F22C(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 rollbackDidFail:(id)a4 withError:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(self);
  sub_90B84(a3, a4, a5);

  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)client:(id)a3 inUserInteraction:(id)a4
{
  _objc_retain(a3);
  v6 = _Block_copy(a4);
  _objc_retain(self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_929AC(a3, sub_96F18, v7);

  _objc_release(self);
  _objc_release(a3);
}

- (void)client:(id)a3 handleUIForDDMDeclaration:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_92F84(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

@end