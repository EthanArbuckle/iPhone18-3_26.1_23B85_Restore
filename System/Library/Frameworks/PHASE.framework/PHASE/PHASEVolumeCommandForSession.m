@interface PHASEVolumeCommandForSession
- (id)description;
- (id)initInternalWithSessionToken:(unsigned int)a3 volume:(id)a4;
@end

@implementation PHASEVolumeCommandForSession

- (id)initInternalWithSessionToken:(unsigned int)a3 volume:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a3)
  {
    v14.receiver = self;
    v14.super_class = PHASEVolumeCommandForSession;
    v9 = [(PHASEVolumeCommand *)&v14 initInternal];
    v10 = v9;
    if (v9)
    {
      *(v9 + 2) = a3;
      objc_storeStrong(v9 + 2, a4);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v12 = **(Phase::Logger::GetInstance(v7) + 448);
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

    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  audioSessionToken = self->_audioSessionToken;
  volume = self->_volume;
  if (volume)
  {
    v2 = [(PHASESessionVolume *)self->_volume description];
    v6 = [v2 UTF8String];
  }

  else
  {
    v6 = "-";
  }

  v7 = [v3 stringWithFormat:@"VolumeCommandForSession: session 0x%x, volume %s", audioSessionToken, v6];
  if (volume)
  {
  }

  return v7;
}

@end