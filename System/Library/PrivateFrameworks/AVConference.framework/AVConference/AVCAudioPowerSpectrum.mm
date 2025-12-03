@interface AVCAudioPowerSpectrum
- (AVCAudioPowerSpectrum)init;
- (AVCAudioPowerSpectrum)initWithCoder:(id)coder;
- (void)applyChannelBins:(_VCAudioPowerSpectrumEntry *)bins binCount:(unsigned int)count channelID:(unsigned __int16)d;
- (void)checkNumChannels:(unsigned __int16)channels;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCAudioPowerSpectrum

- (AVCAudioPowerSpectrum)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVCAudioPowerSpectrum;
  v2 = [(AVCAudioPowerSpectrum *)&v4 init];
  if (v2)
  {
    v2->_channels = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCAudioPowerSpectrum;
  [(AVCAudioPowerSpectrum *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  *&v3 = self->_minFrequency;
  [coder encodeFloat:@"minFrequency" forKey:v3];
  *&v6 = self->_maxFrequency;
  [coder encodeFloat:@"maxFrequency" forKey:v6];
  channels = self->_channels;

  [coder encodeObject:channels forKey:@"channels"];
}

- (AVCAudioPowerSpectrum)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = AVCAudioPowerSpectrum;
  v4 = [(AVCAudioPowerSpectrum *)&v8 init];
  if (v4)
  {
    [coder decodeFloatForKey:@"minFrequency"];
    v4->_minFrequency = v5;
    [coder decodeFloatForKey:@"maxFrequency"];
    v4->_maxFrequency = v6;
    v4->_channels = [coder decodeObjectForKey:@"channels"];
  }

  return v4;
}

- (void)applyChannelBins:(_VCAudioPowerSpectrumEntry *)bins binCount:(unsigned int)count channelID:(unsigned __int16)d
{
  dCopy = d;
  v6 = *&count;
  v31 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_channels count]> d)
  {
    [-[NSMutableArray objectAtIndexedSubscript:](self->_channels objectAtIndexedSubscript:{dCopy), "applyChannelBins:binCount:", bins, v6}];
    if (v6)
    {
      self->_minFrequency = bins->var0.min;
      self->_maxFrequency = bins[(v6 - 1)].var0.max;
    }

    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = [(NSMutableArray *)self->_channels count];
    v19 = 136316162;
    v20 = v10;
    v21 = 2080;
    v22 = "[AVCAudioPowerSpectrum(VCPrivateAccess) applyChannelBins:binCount:channelID:]";
    v23 = 1024;
    v24 = 73;
    v25 = 1024;
    *v26 = dCopy;
    *&v26[4] = 2048;
    *&v26[6] = v12;
    v13 = " [%s] %s:%d Number of channels is incorrect (%d >= %lu)";
    v14 = v11;
    v15 = 44;
LABEL_15:
    _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v13, &v19, v15);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [(AVCAudioPowerSpectrum *)self performSelector:sel_logPrefix];
  }

  else
  {
    v9 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v18 = [(NSMutableArray *)self->_channels count];
      v19 = 136316674;
      v20 = v16;
      v21 = 2080;
      v22 = "[AVCAudioPowerSpectrum(VCPrivateAccess) applyChannelBins:binCount:channelID:]";
      v23 = 1024;
      v24 = 73;
      v25 = 2112;
      *v26 = v9;
      *&v26[8] = 2048;
      *&v26[10] = self;
      v27 = 1024;
      v28 = dCopy;
      v29 = 2048;
      v30 = v18;
      v13 = " [%s] %s:%d %@(%p) Number of channels is incorrect (%d >= %lu)";
      v14 = v17;
      v15 = 64;
      goto LABEL_15;
    }
  }
}

- (void)checkNumChannels:(unsigned __int16)channels
{
  channelsCopy = channels;
  for (i = [(NSMutableArray *)self->_channels count]; i < channelsCopy; ++i)
  {
    v6 = objc_alloc_init(AVCAudioPowerSpectrumChannel);
    [(NSMutableArray *)self->_channels addObject:v6];
  }

  if ([(NSMutableArray *)self->_channels count]> channelsCopy)
  {
    v7 = [(NSMutableArray *)self->_channels count]- channelsCopy;
    channels = self->_channels;

    [(NSMutableArray *)channels removeObjectsInRange:channelsCopy, v7];
  }
}

@end