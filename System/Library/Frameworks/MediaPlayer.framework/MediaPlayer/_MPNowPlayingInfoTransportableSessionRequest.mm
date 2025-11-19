@interface _MPNowPlayingInfoTransportableSessionRequest
+ (id)requestWithMediaRemoteRequest:(id)a3;
@end

@implementation _MPNowPlayingInfoTransportableSessionRequest

+ (id)requestWithMediaRemoteRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 identifier];
  v7 = [v6 copy];
  v8 = v5[2];
  v5[2] = v7;

  v9 = [v4 type];
  v10 = [v9 copy];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [v4 destinationPlayerPath];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [v4 destinationCommandInfo];
  v15 = v5[5];
  v5[5] = v14;

  LOBYTE(v9) = [v4 isPreflight];
  *(v5 + 8) = v9;

  return v5;
}

@end