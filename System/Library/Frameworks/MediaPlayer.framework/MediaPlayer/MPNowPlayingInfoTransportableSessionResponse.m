@interface MPNowPlayingInfoTransportableSessionResponse
+ (id)responseWithIdentifier:(id)a3 sessionType:(id)a4 data:(id)a5;
- (id)_init;
@end

@implementation MPNowPlayingInfoTransportableSessionResponse

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPNowPlayingInfoTransportableSessionResponse;
  return [(MPNowPlayingInfoTransportableSessionResponse *)&v3 init];
}

+ (id)responseWithIdentifier:(id)a3 sessionType:(id)a4 data:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _init];
  v12 = [v10 copy];

  v13 = v11[1];
  v11[1] = v12;

  v14 = [v9 copy];
  v15 = v11[2];
  v11[2] = v14;

  v16 = v11[3];
  v11[3] = v8;

  return v11;
}

@end