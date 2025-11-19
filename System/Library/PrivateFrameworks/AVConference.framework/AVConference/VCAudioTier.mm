@interface VCAudioTier
+ (unsigned)redPayloadOverheadBytesWithNumPayloads:(unsigned int)a3;
+ (unsigned)totalAudioBitrateWithTierConfig:(const tagVCAudioTierConfig *)a3;
- (BOOL)isEqual:(id)a3;
- (VCAudioTier)initWithConfig:(const tagVCAudioTierConfig *)a3;
- (id)description;
- (id)dictionary;
- (void)setUpAssignedPropertiesWithConfig:(const tagVCAudioTierConfig *)a3;
- (void)setUpCalculatedPropertiesWithConfig:(const tagVCAudioTierConfig *)a3;
@end

@implementation VCAudioTier

+ (unsigned)totalAudioBitrateWithTierConfig:(const tagVCAudioTierConfig *)a3
{
  result = a3->var2;
  var4 = a3->var4;
  if (var4)
  {
    var6 = a3->var6;
    v6 = result + result * var4;
    v7 = result + var6 * var4;
    if (var6)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

+ (unsigned)redPayloadOverheadBytesWithNumPayloads:(unsigned int)a3
{
  if (a3)
  {
    return 4 * a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)setUpAssignedPropertiesWithConfig:(const tagVCAudioTierConfig *)a3
{
  self->audioCodecBitrate = a3->var2;
  p_audioCodecBitrate = &self->audioCodecBitrate;
  self->packetsPerBundle = a3->var3;
  var4 = a3->var4;
  self->redNumPayloads = var4;
  self->payloadConfig = a3->var0;
  self->_headerSize = a3->var5;
  var6 = a3->var6;
  p_var6 = &a3->var6;
  self->_bundlingAppliedByCodec = *(p_var6 - 20);
  v7 = var6 == 0;
  self->_isShortREDEnabled = var6 != 0;
  if (var4)
  {
    if (!v7)
    {
      p_audioCodecBitrate = p_var6;
    }

    self->_redPayloadBitrate = *p_audioCodecBitrate;
  }
}

- (void)setUpCalculatedPropertiesWithConfig:(const tagVCAudioTierConfig *)a3
{
  v5 = [VCAudioTier totalAudioBitrateWithTierConfig:?];
  v6 = [VCAudioTier redPayloadOverheadBytesWithNumPayloads:a3->var4];
  v7 = [a3->var0 inputSampleRate];
  v8 = [a3->var0 samplesPerFrame];
  LODWORD(v9) = a3->var3;
  v10 = v7 / v8 / v9;
  self->networkBitrate = v5 + vcvtpd_u64_f64(v10 * ((a3->var5 + [a3->var0 bundleHeaderBytes] + v6) * 8.0));
  v11 = v5 / v10 * 0.125;
  v12 = vcvtad_u64_f64(v11);
  self->_payloadSize = v12;
  redNumPayloads = self->redNumPayloads;
  if (redNumPayloads)
  {
    LODWORD(v11) = self->audioCodecBitrate;
    v14 = vcvtpd_u64_f64((v12 - vcvtpd_u64_f64(*&v11 / v10 * 0.125)) / redNumPayloads);
  }

  else
  {
    v14 = 0;
  }

  self->_redPayloadSize = v14;
  if (self->_bundlingAppliedByCodec)
  {
    packetsPerBundle = [(VCAudioPayloadConfig *)self->payloadConfig internalBundleFactor];
  }

  else
  {
    packetsPerBundle = self->packetsPerBundle;
  }

  self->redMaxDelay20ms = packetsPerBundle * redNumPayloads;
}

- (VCAudioTier)initWithConfig:(const tagVCAudioTierConfig *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = VCAudioTier;
    v4 = [(VCAudioTier *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(VCAudioTier *)v4 setUpAssignedPropertiesWithConfig:a3];
      [(VCAudioTier *)v5 setUpCalculatedPropertiesWithConfig:a3];
    }
  }

  else
  {
    [VCAudioTier initWithConfig:?];
    return 0;
  }

  return v5;
}

- (id)description
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = VCAudioTier;
  v4 = [(VCAudioTier *)&v10 description];
  v5 = [(VCAudioPayloadConfig *)self->payloadConfig payload];
  if (self->_bundlingAppliedByCodec)
  {
    packetsPerBundle = [(VCAudioPayloadConfig *)self->payloadConfig internalBundleFactor];
    if (self->_bundlingAppliedByCodec)
    {
      v7 = "*";
    }

    else
    {
      v7 = "";
    }
  }

  else
  {
    packetsPerBundle = self->packetsPerBundle;
    v7 = "";
  }

  if (self->_isShortREDEnabled)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  return [v3 stringWithFormat:@"{ %@ payload=%d bundle=%d%s audioCodecBitrate=%d redNumPayloads=%d redMaxDelay20ms=%d networkBitrate=%d packetSize=%d payloadSize=%d headerSize=%d redPayloadSize=%u shortREDEnabled=%s }", v4, v5, packetsPerBundle, v7, self->audioCodecBitrate, self->redNumPayloads, self->redMaxDelay20ms, self->networkBitrate, self->_payloadSize + self->_headerSize, self->_payloadSize, self->_headerSize, self->_redPayloadSize, v8];
}

- (id)dictionary
{
  v7[7] = *MEMORY[0x1E69E9840];
  v6[0] = @"payload";
  v7[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCAudioPayloadConfig payload](self->payloadConfig, "payload")}];
  v6[1] = @"bundle";
  v3 = MEMORY[0x1E696AD98];
  if (self->_bundlingAppliedByCodec)
  {
    packetsPerBundle = [(VCAudioPayloadConfig *)self->payloadConfig internalBundleFactor];
  }

  else
  {
    packetsPerBundle = self->packetsPerBundle;
  }

  v7[1] = [v3 numberWithUnsignedInt:packetsPerBundle];
  v6[2] = @"audioCodecBitrate";
  v7[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->audioCodecBitrate];
  v6[3] = @"redNumPayloads";
  v7[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->redNumPayloads];
  v6[4] = @"redMaxDelay";
  v7[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->redMaxDelay20ms];
  v6[5] = @"networkBitrate";
  v7[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->networkBitrate];
  v6[6] = @"shortREDEnabled";
  v7[6] = [MEMORY[0x1E696AD98] numberWithBool:self->_isShortREDEnabled];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  networkBitrate = self->networkBitrate;
  if (networkBitrate != [a3 networkBitrate])
  {
    return 0;
  }

  audioCodecBitrate = self->audioCodecBitrate;
  if (audioCodecBitrate != [a3 audioCodecBitrate])
  {
    return 0;
  }

  packetsPerBundle = self->packetsPerBundle;
  if (packetsPerBundle != [a3 packetsPerBundle])
  {
    return 0;
  }

  redNumPayloads = self->redNumPayloads;
  if (redNumPayloads != [a3 redNumPayloads])
  {
    return 0;
  }

  v9 = [(VCAudioPayloadConfig *)self->payloadConfig payload];
  return v9 == [objc_msgSend(a3 "payloadConfig")];
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCAudioTier initWithConfig:]";
      v8 = 1024;
      v9 = 92;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Attempting to create an audio tier with a nil configuration reference.", &v4, 0x1Cu);
    }
  }
}

@end