@interface PHASEVolumeCommandForVolumeCategoryModeAndSession
- (PHASEVolumeCommandForVolumeCategoryModeAndSession)initWithCategory:(id)category mode:(id)mode sessionToken:(unsigned int)token;
- (id)description;
@end

@implementation PHASEVolumeCommandForVolumeCategoryModeAndSession

- (PHASEVolumeCommandForVolumeCategoryModeAndSession)initWithCategory:(id)category mode:(id)mode sessionToken:(unsigned int)token
{
  v22 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  modeCopy = mode;
  v10 = modeCopy;
  if (token)
  {
    v15.receiver = self;
    v15.super_class = PHASEVolumeCommandForVolumeCategoryModeAndSession;
    v11 = [(PHASEVolumeCommandForVolumeCategoryMode *)&v15 initInternalWithCategory:categoryCopy mode:modeCopy];
    if (v11)
    {
      v11[8] = token;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v13 = **(Phase::Logger::GetInstance(modeCopy) + 448);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "PHASESessionVolume.mm";
      v18 = 1024;
      v19 = 187;
      v20 = 1024;
      v21 = 0;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: invalid audio session token 0x%x", buf, 0x18u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  volumeCategory = [(PHASEVolumeCommandForVolumeCategoryMode *)self volumeCategory];
  v5 = [volumeCategory description];
  uTF8String = [v5 UTF8String];
  volumeMode = [(PHASEVolumeCommandForVolumeCategoryMode *)self volumeMode];
  v8 = [volumeMode description];
  v9 = [v3 stringWithFormat:@"VolumeCommandForVolumeCategoryModeAndSession: category/mode [%s, %s], session 0x%x", uTF8String, objc_msgSend(v8, "UTF8String"), self->_audioSessionToken];

  return v9;
}

@end