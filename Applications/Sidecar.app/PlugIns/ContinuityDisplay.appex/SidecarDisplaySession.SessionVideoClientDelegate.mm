@interface SidecarDisplaySession.SessionVideoClientDelegate
- (void)remoteVideoClient:(id)a3 remoteMediaDidStall:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 remoteScreenAttributesDidChange:(id)a4;
- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4;
- (void)remoteVideoClient:(id)a3 remoteVideoDidPause:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 videoDidDegrade:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 videoDidSuspend:(BOOL)a4;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3;
- (void)remoteVideoClientDidReceiveLastFrame:(id)a3;
- (void)remoteVideoServerDidDie:(id)a3;
@end

@implementation SidecarDisplaySession.SessionVideoClientDelegate

- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000176EC(v4);
}

- (void)remoteVideoClient:(id)a3 remoteVideoDidPause:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1000178BC(v6, a4);
}

- (void)remoteVideoClient:(id)a3 remoteMediaDidStall:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100017938(v6, a4);
}

- (void)remoteVideoClient:(id)a3 videoDidDegrade:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1000179B4(v6, a4);
}

- (void)remoteVideoClient:(id)a3 videoDidSuspend:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100017A30(v6, a4);
}

- (void)remoteVideoClientDidReceiveLastFrame:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100017BB0(v4);
}

- (void)remoteVideoServerDidDie:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100017D04(v4);
}

- (void)remoteVideoClient:(id)a3 remoteScreenAttributesDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100017F74(v6, v7);
}

- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100017FFC(v6, v7);
}

@end