@interface _MPNowPlayingInfoTransportableSessionRequest
+ (id)requestWithMediaRemoteRequest:(id)request;
@end

@implementation _MPNowPlayingInfoTransportableSessionRequest

+ (id)requestWithMediaRemoteRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(self);
  identifier = [requestCopy identifier];
  v7 = [identifier copy];
  v8 = v5[2];
  v5[2] = v7;

  type = [requestCopy type];
  v10 = [type copy];
  v11 = v5[3];
  v5[3] = v10;

  destinationPlayerPath = [requestCopy destinationPlayerPath];
  v13 = v5[4];
  v5[4] = destinationPlayerPath;

  destinationCommandInfo = [requestCopy destinationCommandInfo];
  v15 = v5[5];
  v5[5] = destinationCommandInfo;

  LOBYTE(type) = [requestCopy isPreflight];
  *(v5 + 8) = type;

  return v5;
}

@end