@interface PHASEVolumeCommandForSession
- (id)description;
- (id)initInternalWithSessionToken:(unsigned int)token volume:(id)volume;
@end

@implementation PHASEVolumeCommandForSession

- (id)initInternalWithSessionToken:(unsigned int)token volume:(id)volume
{
  v21 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  v8 = volumeCopy;
  if (token)
  {
    v14.receiver = self;
    v14.super_class = PHASEVolumeCommandForSession;
    initInternal = [(PHASEVolumeCommand *)&v14 initInternal];
    v10 = initInternal;
    if (initInternal)
    {
      *(initInternal + 2) = token;
      objc_storeStrong(initInternal + 2, volume);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v12 = **(Phase::Logger::GetInstance(volumeCopy) + 448);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "PHASESessionVolume.mm";
      v17 = 1024;
      v18 = 89;
      v19 = 1024;
      v20 = 0;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: invalid audio session token 0x%x", buf, 0x18u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  audioSessionToken = self->_audioSessionToken;
  volume = self->_volume;
  if (volume)
  {
    v2 = [(PHASESessionVolume *)self->_volume description];
    uTF8String = [v2 UTF8String];
  }

  else
  {
    uTF8String = "-";
  }

  v7 = [v3 stringWithFormat:@"VolumeCommandForSession: session 0x%x, volume %s", audioSessionToken, uTF8String];
  if (volume)
  {
  }

  return v7;
}

@end