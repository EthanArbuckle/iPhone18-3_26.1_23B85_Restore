@interface MPCustomDataPlaybackQueue
- (MPCustomDataPlaybackQueue)initWithIdentifier:(id)a3 data:(id)a4 options:(id)a5;
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
  v5 = [(MPCustomDataPlaybackQueue *)self identifier];
  v6 = [(MPCustomDataPlaybackQueue *)self data];
  v7 = [v3 stringWithFormat:@"<%@:%p identifier=%@ dataLength=%lu>", v4, self, v5, objc_msgSend(v6, "length")];

  return v7;
}

- (MPCustomDataPlaybackQueue)initWithIdentifier:(id)a3 data:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetCustomDataIdentifier();

  MRSystemAppPlaybackQueueSetCustomData();
  v12 = [(MPRemotePlaybackQueue *)self initWithMediaRemotePlaybackQueue:v11 options:v8];

  return v12;
}

@end