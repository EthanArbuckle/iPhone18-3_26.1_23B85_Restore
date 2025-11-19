@interface ADPeerLocationConnection
- (ADPeerLocationConnection)initWithDelegate:(id)a3;
- (void)getBestLocationWithCompletion:(id)a3;
- (void)peerConnection:(id)a3 handlePBSubclass:(id)a4 completion:(id)a5;
- (void)peerConnection:(id)a3 peerAvailabilityDidChange:(BOOL)a4;
- (void)peerLocationPolicySuggestsClearingCachedLocation:(id)a3;
@end

@implementation ADPeerLocationConnection

- (void)peerConnection:(id)a3 peerAvailabilityDidChange:(BOOL)a4
{
  if (!a4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100135E3C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)peerConnection:(id)a3 handlePBSubclass:(id)a4 completion:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100135EB8;
  v5[3] = &unk_100514A68;
  v5[4] = self;
  [a4 _ad_performForPeerLocationWithCompletion:v5];
}

- (void)peerLocationPolicySuggestsClearingCachedLocation:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100136028;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getBestLocationWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100136114;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (ADPeerLocationConnection)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ADPeerLocationConnection;
  v5 = [(ADPeerLocationConnection *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("ADPeerLocationConnection", v6);

    queue = v5->_queue;
    v5->_queue = v7;

    objc_storeWeak(&v5->_delegate, v4);
    v9 = [[ADPeerConnection alloc] initWithServiceIdentifier:@"com.apple.private.alloy.siri.location" forRequests:j__objc_msgSend__ADPBLocationRequestType requireConnectedPeer:1];
    peerConnection = v5->_peerConnection;
    v5->_peerConnection = v9;

    [(ADPeerConnection *)v5->_peerConnection setDelegate:v5 forRequestTypes:sub_1002BEC68];
    v11 = objc_alloc_init(ADPeerLocationPolicy);
    locationPolicy = v5->_locationPolicy;
    v5->_locationPolicy = v11;

    [(ADPeerLocationPolicy *)v5->_locationPolicy setDelegate:v5];
  }

  return v5;
}

@end