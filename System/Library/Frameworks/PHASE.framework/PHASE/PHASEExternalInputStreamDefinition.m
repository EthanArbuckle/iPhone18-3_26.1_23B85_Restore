@interface PHASEExternalInputStreamDefinition
- (PHASEExternalInputStreamDefinition)init;
- (PHASEExternalInputStreamDefinition)initWithStreamType:(int64_t)a3 format:(id)a4 maximumFrames:(unsigned int)a5 audioSessionToken:(unsigned int)a6;
- (id)description;
@end

@implementation PHASEExternalInputStreamDefinition

- (PHASEExternalInputStreamDefinition)init
{
  [(PHASEExternalInputStreamDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalInputStreamDefinition)initWithStreamType:(int64_t)a3 format:(id)a4 maximumFrames:(unsigned int)a5 audioSessionToken:(unsigned int)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PHASEExternalInputStreamDefinition;
  v12 = [(PHASEExternalInputStreamDefinition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_streamType = a3;
    objc_storeStrong(&v12->_format, a4);
    v13->_maximumFrames = a5;
    v13->_audioSessionToken = a6;
    if (!a6)
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