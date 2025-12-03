@interface MPNowPlayingInfoTransportableSessionResponse
+ (id)responseWithIdentifier:(id)identifier sessionType:(id)type data:(id)data;
- (id)_init;
@end

@implementation MPNowPlayingInfoTransportableSessionResponse

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPNowPlayingInfoTransportableSessionResponse;
  return [(MPNowPlayingInfoTransportableSessionResponse *)&v3 init];
}

+ (id)responseWithIdentifier:(id)identifier sessionType:(id)type data:(id)data
{
  dataCopy = data;
  typeCopy = type;
  identifierCopy = identifier;
  _init = [[self alloc] _init];
  v12 = [identifierCopy copy];

  v13 = _init[1];
  _init[1] = v12;

  v14 = [typeCopy copy];
  v15 = _init[2];
  _init[2] = v14;

  v16 = _init[3];
  _init[3] = dataCopy;

  return _init;
}

@end