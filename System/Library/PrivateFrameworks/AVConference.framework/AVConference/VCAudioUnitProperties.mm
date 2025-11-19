@interface VCAudioUnitProperties
- (VoiceIOFarEndVersionInfo)farEndVersionInfo;
- (id)description;
- (void)dealloc;
- (void)setFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)a3;
@end

@implementation VCAudioUnitProperties

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioUnitProperties;
  [(VCAudioUnitProperties *)&v3 dealloc];
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = self->_audioUnitType - 1;
  if (v3 > 3)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1E85F7620[v3];
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v5;
  v19 = v5;
  *__str = v5;
  v17 = v5;
  *v12 = v5;
  v13 = v5;
  v14 = v5;
  v15 = v5;
  v6 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = VCAudioUnitProperties;
  v7 = [(VCAudioUnitProperties *)&v11 description];
  audioUnitType = self->_audioUnitType;
  v9 = FormatToCStr(&self->_frameFormatMic, __str, 0x40uLL);
  return [v6 stringWithFormat:@"%@ type=%s(%d) micFormat=%s, %u speakerFormat=%s, %u operatingRole=%d deviceRole=%d vpOperatingMode=%d vpEnableSpatialChat=%d audioRecording=%d enableDNNVAD=%d", v7, v4, audioUnitType, v9, self->_frameFormatMic.samplesPerFrame, FormatToCStr(&self->_frameFormatSpeaker, v12, 0x40uLL), self->_frameFormatSpeaker.samplesPerFrame, self->_operatingMode, self->_deviceRole, self->_vpOperatingMode, self->_vpEnableSpatialChat, self->_allowAudioRecording, self->_enableDNNVAD];
}

- (VoiceIOFarEndVersionInfo)farEndVersionInfo
{
  v3 = *&self[1].farEndOSVersion[16];
  v4 = *&self[1].farEndOSVersion[48];
  *&retstr->farEndOSVersion[32] = *&self[1].farEndOSVersion[32];
  *&retstr->farEndOSVersion[48] = v4;
  retstr->farEndAUVersion = self[1].farEndAUVersion;
  v5 = *&self[1].farEndHwModel[16];
  v6 = *&self[1].farEndHwModel[48];
  *&retstr->farEndHwModel[32] = *&self[1].farEndHwModel[32];
  *&retstr->farEndHwModel[48] = v6;
  *retstr->farEndOSVersion = *self[1].farEndOSVersion;
  *&retstr->farEndOSVersion[16] = v3;
  *retstr->farEndHwModel = *self[1].farEndHwModel;
  *&retstr->farEndHwModel[16] = v5;
  return self;
}

- (void)setFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)a3
{
  *self->_farEndVersionInfo.farEndHwModel = *a3->farEndHwModel;
  v3 = *&a3->farEndHwModel[16];
  v4 = *&a3->farEndHwModel[32];
  v5 = *&a3->farEndHwModel[48];
  *self->_farEndVersionInfo.farEndOSVersion = *a3->farEndOSVersion;
  *&self->_farEndVersionInfo.farEndHwModel[48] = v5;
  *&self->_farEndVersionInfo.farEndHwModel[32] = v4;
  *&self->_farEndVersionInfo.farEndHwModel[16] = v3;
  v6 = *&a3->farEndOSVersion[16];
  v7 = *&a3->farEndOSVersion[32];
  v8 = *&a3->farEndOSVersion[48];
  self->_farEndVersionInfo.farEndAUVersion = a3->farEndAUVersion;
  *&self->_farEndVersionInfo.farEndOSVersion[48] = v8;
  *&self->_farEndVersionInfo.farEndOSVersion[32] = v7;
  *&self->_farEndVersionInfo.farEndOSVersion[16] = v6;
  self->_isFarEndVersionInfoValid = 1;
}

@end