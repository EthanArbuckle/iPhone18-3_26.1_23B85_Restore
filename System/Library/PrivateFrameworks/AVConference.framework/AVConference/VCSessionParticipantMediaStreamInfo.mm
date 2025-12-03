@interface VCSessionParticipantMediaStreamInfo
- (VCSessionParticipantMediaStreamInfo)init;
- (void)addStreamConfig:(id)config;
- (void)dealloc;
@end

@implementation VCSessionParticipantMediaStreamInfo

- (VCSessionParticipantMediaStreamInfo)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCSessionParticipantMediaStreamInfo;
  v2 = [(VCSessionParticipantMediaStreamInfo *)&v4 init];
  if (v2)
  {
    v2->_streamConfigs = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionParticipantMediaStreamInfo;
  [(VCSessionParticipantMediaStreamInfo *)&v3 dealloc];
}

- (void)addStreamConfig:(id)config
{
  [(NSMutableArray *)self->_streamConfigs addObject:?];
  if (self->_isOneToOneSupported)
  {
    v5 = 1;
  }

  else
  {
    v5 = [objc_msgSend(config "multiwayConfig")];
  }

  self->_isOneToOneSupported = v5;
}

@end