@interface PHASEExternalInputStreamDefinition
- (PHASEExternalInputStreamDefinition)init;
- (PHASEExternalInputStreamDefinition)initWithStreamType:(int64_t)type format:(id)format maximumFrames:(unsigned int)frames audioSessionToken:(unsigned int)token;
- (id)description;
@end

@implementation PHASEExternalInputStreamDefinition

- (PHASEExternalInputStreamDefinition)init
{
  [(PHASEExternalInputStreamDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalInputStreamDefinition)initWithStreamType:(int64_t)type format:(id)format maximumFrames:(unsigned int)frames audioSessionToken:(unsigned int)token
{
  formatCopy = format;
  v15.receiver = self;
  v15.super_class = PHASEExternalInputStreamDefinition;
  v12 = [(PHASEExternalInputStreamDefinition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_streamType = type;
    objc_storeStrong(&v12->_format, format);
    v13->_maximumFrames = frames;
    v13->_audioSessionToken = token;
    if (!token)
    {
      v13->_audioSessionToken = sDefaultAudioSessionToken();
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  audioSessionToken = self->_audioSessionToken;
  streamType = self->_streamType;
  v6 = [(AVAudioFormat *)self->_format description];
  v7 = [v3 stringWithFormat:@"<ExternalInputStreamDefinition@%p, type %d, audioSession 0x%x, format %s, max frames %d>", self, streamType, audioSessionToken, objc_msgSend(v6, "UTF8String"), self->_maximumFrames];

  return v7;
}

@end