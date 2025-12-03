@interface MPCustomDataPlaybackQueue
- (MPCustomDataPlaybackQueue)initWithIdentifier:(id)identifier data:(id)data options:(id)options;
- (NSData)data;
- (NSString)identifier;
- (id)description;
@end

@implementation MPCustomDataPlaybackQueue

- (NSData)data
{
  [(MPRemotePlaybackQueue *)self _mediaRemotePlaybackQueue];
  v2 = MRSystemAppPlaybackQueueCopyCustomData();

  return v2;
}

- (NSString)identifier
{
  [(MPRemotePlaybackQueue *)self _mediaRemotePlaybackQueue];
  v2 = MRSystemAppPlaybackQueueCopyCustomDataIdentifier();

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(MPCustomDataPlaybackQueue *)self identifier];
  data = [(MPCustomDataPlaybackQueue *)self data];
  v7 = [v3 stringWithFormat:@"<%@:%p identifier=%@ dataLength=%lu>", v4, self, identifier, objc_msgSend(data, "length")];

  return v7;
}

- (MPCustomDataPlaybackQueue)initWithIdentifier:(id)identifier data:(id)data options:(id)options
{
  optionsCopy = options;
  dataCopy = data;
  identifierCopy = identifier;
  v11 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetCustomDataIdentifier();

  MRSystemAppPlaybackQueueSetCustomData();
  v12 = [(MPRemotePlaybackQueue *)self initWithMediaRemotePlaybackQueue:v11 options:optionsCopy];

  return v12;
}

@end