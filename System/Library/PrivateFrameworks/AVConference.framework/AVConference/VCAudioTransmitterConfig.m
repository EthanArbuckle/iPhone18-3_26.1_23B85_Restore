@interface VCAudioTransmitterConfig
- (id)description;
- (tagVCAudioFrameFormat)inputFormat;
- (void)dealloc;
- (void)setInputFormat:(tagVCAudioFrameFormat *)a3;
- (void)setSframeCryptor:(tagVCCryptor *)a3;
@end

@implementation VCAudioTransmitterConfig

- (void)setSframeCryptor:(tagVCCryptor *)a3
{
  sframeCryptor = self->_sframeCryptor;
  self->_sframeCryptor = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (sframeCryptor)
  {

    CFRelease(sframeCryptor);
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  sframeCryptor = self->_sframeCryptor;
  if (sframeCryptor)
  {
    CFRelease(sframeCryptor);
  }

  v4.receiver = self;
  v4.super_class = VCAudioTransmitterConfig;
  [(VCAudioTransmitterConfig *)&v4 dealloc];
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = VCAudioTransmitterConfig;
  v4 = [(VCAudioTransmitterConfig *)&v16 description];
  v5 = "NO";
  if (self->_useRateControl)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if (self->_allowAudioSwitching)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (self->_supportsAdaptation)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if (self->_redEnabled)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if (self->_transmitROC)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (self->_ignoreSilence)
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if (self->_useWifiTiers)
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  if (self->_ramStadSRCEnabled)
  {
    v13 = "YES";
  }

  else
  {
    v13 = "NO";
  }

  if (self->_isHigherAudioREDCutoverU1Enabled)
  {
    v14 = "YES";
  }

  else
  {
    v14 = "NO";
  }

  if (self->_isACC24Enabled)
  {
    v5 = "YES";
  }

  return [v3 stringWithFormat:@"{ %@ audioPayloads=%@ chosenAudioPayload=%@ chosenDTXPayload=%@ chosenRedPayloadType=%d packetsPerBundle=%d useRateControl=%s bundlingScheme=%d allowAudioSwitching=%s supportsAdaptation=%s operatingMode=%d isRedEnabled=%s transmitROC=%s ignoreSilence=%s useWifiTiers=%s qualityIndex=%d ramStadSRCEnabled=%s isHigherAudioREDCutoverU1Enabled=%s isACC24Enabled=%s }", v4, *&self->_audioPayloads, self->_chosenDTXPayload, self->_chosenRedPayloadType, self->_packetsPerBundle, v6, self->_bundlingScheme, v7, v8, self->_operatingMode, v9, v10, v11, v12, self->_qualityIndex, v13, v14, v5];
}

- (tagVCAudioFrameFormat)inputFormat
{
  v3 = *&self[3].format.mSampleRate;
  *&retstr->format.mSampleRate = *&self[2].format.mBitsPerChannel;
  *&retstr->format.mBytesPerPacket = v3;
  *&retstr->format.mBitsPerChannel = *&self[3].format.mBytesPerPacket;
  return self;
}

- (void)setInputFormat:(tagVCAudioFrameFormat *)a3
{
  v3 = *&a3->format.mSampleRate;
  v4 = *&a3->format.mBitsPerChannel;
  *&self->_inputFormat.format.mBytesPerPacket = *&a3->format.mBytesPerPacket;
  *&self->_inputFormat.format.mBitsPerChannel = v4;
  *&self->_inputFormat.format.mSampleRate = v3;
}

@end