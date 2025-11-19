@interface PHASETapDescription
- (NSString)uidString;
- (PHASETapDescription)initWithAudioSessionToken:(unsigned int)a3 tapType:(int64_t)a4;
- (PHASETapDescription)initWithProcessIdentifier:(int)a3 tapType:(int64_t)a4;
- (PHASETapDescription)initWithSceneIdentifier:(id)a3 tapType:(int64_t)a4;
- (PHASETapDescription)initWithStreamType:(int64_t)a3 tapType:(int64_t)a4;
- (id)initInternalWithType:(int64_t)a3;
- (id)initScreenSharingTapOfType:(int64_t)a3;
- (id)initSystemTapOfType:(int64_t)a3;
@end

@implementation PHASETapDescription

- (id)initInternalWithType:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = PHASETapDescription;
  v4 = [(PHASETapDescription *)&v12 init];
  v5 = v4;
  if (v4)
  {
    uidString = v4->_uidString;
    v4->_uidString = 0;

    v5->_type = a3;
    *&v5->_binding = xmmword_23A555530;
    v5->_audioSessionToken = 0;
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = 0;

    v5->_processIdentifier = 0;
    v8 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:6553601];
    v9 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:0 interleaved:v8 channelLayout:48000.0];
    format = v5->_format;
    v5->_format = v9;
  }

  return v5;
}

- (id)initSystemTapOfType:(int64_t)a3
{
  result = [(PHASETapDescription *)self initInternalWithType:a3];
  if (result)
  {
    *(result + 4) = 0;
  }

  return result;
}

- (id)initScreenSharingTapOfType:(int64_t)a3
{
  result = [(PHASETapDescription *)self initInternalWithType:a3];
  if (result)
  {
    *(result + 4) = 5;
  }

  return result;
}

- (PHASETapDescription)initWithProcessIdentifier:(int)a3 tapType:(int64_t)a4
{
  v5 = self;
  v16 = *MEMORY[0x277D85DE8];
  if (a3 <= 0)
  {
    v8 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "PHASETaps.mm";
      v12 = 1024;
      v13 = 124;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: tap desc: invalid processIdentifier %d", &v10, 0x18u);
    }

    v7 = 0;
  }

  else
  {
    v6 = [(PHASETapDescription *)self initInternalWithType:a4];
    if (v6)
    {
      v6[4] = 1;
      *(v6 + 5) = a3;
    }

    v5 = v6;
    v7 = v5;
  }

  return v7;
}

- (PHASETapDescription)initWithAudioSessionToken:(unsigned int)a3 tapType:(int64_t)a4
{
  v5 = self;
  v16 = *MEMORY[0x277D85DE8];
  if (a3 + 1 > 1)
  {
    v8 = [(PHASETapDescription *)self initInternalWithType:a4];
    if (v8)
    {
      v8[4] = 2;
      *(v8 + 4) = a3;
    }

    v5 = v8;
    v7 = v5;
  }

  else
  {
    v6 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "PHASETaps.mm";
      v12 = 1024;
      v13 = 141;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: tap desc: invalid audioSessionToken 0x%x", &v10, 0x18u);
    }

    v7 = 0;
  }

  return v7;
}

- (PHASETapDescription)initWithSceneIdentifier:(id)a3 tapType:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (v7 && (v7 = [(Phase::Logger *)v7 length]) != 0)
  {
    v9 = [(PHASETapDescription *)self initInternalWithType:a4];
    v10 = v9;
    if (v9)
    {
      v9[4] = 3;
      objc_storeStrong(v9 + 6, a3);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v12 = **(Phase::Logger::GetInstance(v7) + 448);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "PHASETaps.mm";
      v16 = 1024;
      v17 = 158;
      v18 = 2080;
      v19 = [(Phase::Logger *)v8 UTF8String];
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: tap desc: invalid sceneIdentifier %s", &v14, 0x1Cu);
    }

    v11 = 0;
  }

  return v11;
}

- (PHASETapDescription)initWithStreamType:(int64_t)a3 tapType:(int64_t)a4
{
  v4 = self;
  v16 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v5 = [(PHASETapDescription *)self initInternalWithType:a4];
    if (v5)
    {
      v5[2] = xmmword_23A554A00;
    }

    v4 = v5;
    v6 = v4;
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "PHASETaps.mm";
      v12 = 1024;
      v13 = 175;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: tap desc: invalid streamType %ld", &v10, 0x1Cu);
    }

    v6 = 0;
  }

  return v6;
}

- (NSString)uidString
{
  uidString = self->_uidString;
  if (uidString && [(NSMutableString *)uidString length])
  {
    goto LABEL_22;
  }

  v4 = objc_opt_new();
  v5 = self->_uidString;
  self->_uidString = v4;

  type = self->_type;
  v7 = "Default";
  if (type == 1)
  {
    v7 = "PreSpatial_PreSessionVolume";
  }

  if (type)
  {
    v8 = v7;
  }

  else
  {
    v8 = "PreSpatial";
  }

  [(NSMutableString *)self->_uidString appendFormat:@"PhaseTap-%s-", v8];
  binding = self->_binding;
  if (binding > 2)
  {
    switch(binding)
    {
      case 3:
        [(NSMutableString *)self->_uidString appendFormat:@"SceneID-%s", [(NSString *)self->_sceneIdentifier UTF8String]];
        goto LABEL_22;
      case 4:
        v10 = self->_uidString;
        streamType = self->_streamType;
        v11 = @"Stream-%d";
        break;
      case 5:
        v10 = self->_uidString;
        v11 = @"ScreenSharing";
        break;
      default:
        goto LABEL_22;
    }

    goto LABEL_21;
  }

  switch(binding)
  {
    case 0:
      v10 = self->_uidString;
      v11 = @"System";
LABEL_21:
      [(NSMutableString *)v10 appendFormat:v11, streamType];
      break;
    case 1:
      [(NSMutableString *)self->_uidString appendFormat:@"Process-%d", self->_processIdentifier];
      break;
    case 2:
      [(NSMutableString *)self->_uidString appendFormat:@"SessionID-0x%x", self->_audioSessionToken];
      break;
  }

LABEL_22:
  v12 = [(NSMutableString *)self->_uidString copy];

  return v12;
}

@end