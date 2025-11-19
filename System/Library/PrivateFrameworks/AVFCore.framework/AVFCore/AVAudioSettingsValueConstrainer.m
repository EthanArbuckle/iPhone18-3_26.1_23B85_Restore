@interface AVAudioSettingsValueConstrainer
- (AVAudioSettingsValueConstrainer)init;
- (float)_getAvailableOutputSampleRateFor:(float)a3 rounding:(int64_t)a4;
- (float)applicableOutputSampleRateForDesiredSampleRate:(float)a3 rounding:(int64_t)a4;
- (void)_buildApplicableDataRatesForSampleRates;
- (void)_buildAudioConverter;
- (void)dealloc;
- (void)setInputPropertiesFromASBD:(AudioStreamBasicDescription *)a3;
- (void)setOutputBitsPerChannel:(unsigned int)a3;
- (void)setOutputChannelCount:(unsigned int)a3;
- (void)setOutputFormat:(unsigned int)a3;
- (void)setOutputFormatFlags:(unsigned int)a3;
- (void)setOutputSampleRate:(float)a3;
@end

@implementation AVAudioSettingsValueConstrainer

- (AVAudioSettingsValueConstrainer)init
{
  v3.receiver = self;
  v3.super_class = AVAudioSettingsValueConstrainer;
  result = [(AVAudioSettingsValueConstrainer *)&v3 init];
  if (result)
  {
    *&result->_inputASBD.mBitsPerChannel = 0;
    *&result->_inputASBD.mBytesPerPacket = 0u;
    *&result->_inputASBD.mSampleRate = 0u;
    *&result->_outputASBD.mSampleRate = 0u;
    *&result->_outputASBD.mBytesPerPacket = 0u;
    *&result->_outputASBD.mBitsPerChannel = 0;
    *&result->_needNewConverter = 257;
    result->_needApplicableParameters = 1;
  }

  return result;
}

- (void)dealloc
{
  audioConverter = self->_audioConverter;
  if (audioConverter)
  {
    AudioConverterDispose(audioConverter);
  }

  v4.receiver = self;
  v4.super_class = AVAudioSettingsValueConstrainer;
  [(AVAudioSettingsValueConstrainer *)&v4 dealloc];
}

- (void)_buildAudioConverter
{
  ioPropertyDataSize = 40;
  p_audioConverter = &self->_audioConverter;
  audioConverter = self->_audioConverter;
  if (audioConverter)
  {
    AudioConverterDispose(audioConverter);
    *p_audioConverter = 0;
  }

  AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &self->_inputASBD);
  AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &self->_outputASBD);
  v5 = *&self->_outputASBD.mBytesPerPacket;
  *&v7.mSampleRate = *&self->_outputASBD.mSampleRate;
  *&v7.mBytesPerPacket = v5;
  *&v7.mBitsPerChannel = *&self->_outputASBD.mBitsPerChannel;
  if (v7.mFormatID == 1819304813 && HIDWORD(v5) == 0)
  {
    v7.mChannelsPerFrame = self->_inputASBD.mChannelsPerFrame;
  }

  AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &v7);
  AudioConverterNew(&self->_inputASBD, &v7, p_audioConverter);
  self->_needNewConverter = 0;
}

- (void)_buildApplicableDataRatesForSampleRates
{
  v44 = *MEMORY[0x1E69E9840];
  mSampleRate = self->_outputASBD.mSampleRate;
  availableOutputDataRates = self->_availableOutputDataRates;
  if (availableOutputDataRates)
  {

    self->_availableOutputDataRates = 0;
  }

  self->_availableOutputDataRates = objc_alloc_init(MEMORY[0x1E695DF70]);
  applicableOutputSampleRatesForDataRate = self->_applicableOutputSampleRatesForDataRate;
  if (applicableOutputSampleRatesForDataRate)
  {

    self->_applicableOutputSampleRatesForDataRate = 0;
  }

  self->_applicableOutputSampleRatesForDataRate = objc_alloc_init(MEMORY[0x1E695DF70]);
  applicableOutputDataRatesForSampleRate = self->_applicableOutputDataRatesForSampleRate;
  if (applicableOutputDataRatesForSampleRate)
  {

    self->_applicableOutputDataRatesForSampleRate = 0;
  }

  self->_applicableOutputDataRatesForSampleRate = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_availableOutputSampleRates;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v37 + 1) + 8 * i) minimum];
        self->_outputASBD.mSampleRate = v11;
        [(AVAudioSettingsValueConstrainer *)self _buildAudioConverter];
        v12 = [(AVAudioSettingsValueConstrainer *)self _fetchApplicableOutputDataRates];
        [(NSMutableArray *)self->_applicableOutputDataRatesForSampleRate addObject:v12];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v33 + 1) + 8 * j);
              if ([(NSMutableArray *)self->_availableOutputDataRates indexOfObject:v17]== 0x7FFFFFFFFFFFFFFFLL)
              {
                [(NSMutableArray *)self->_availableOutputDataRates addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v14);
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v8);
  }

  if ([(NSMutableArray *)self->_availableOutputDataRates count])
  {
    v18 = 0;
    do
    {
      -[NSMutableArray addObject:](self->_applicableOutputSampleRatesForDataRate, "addObject:", [MEMORY[0x1E695DF70] array]);
      ++v18;
    }

    while (v18 < [(NSMutableArray *)self->_availableOutputDataRates count]);
  }

  if ([(NSArray *)self->_availableOutputSampleRates count])
  {
    v19 = 0;
    do
    {
      v20 = [(NSArray *)self->_availableOutputSampleRates objectAtIndex:v19];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = [(NSMutableArray *)self->_applicableOutputDataRatesForSampleRate objectAtIndex:v19];
      v22 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v30;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [(NSMutableArray *)self->_availableOutputDataRates indexOfObject:*(*(&v29 + 1) + 8 * k)];
            if (v26 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v27 = [(NSMutableArray *)self->_applicableOutputSampleRatesForDataRate objectAtIndex:v26];
              if ([v27 indexOfObject:v20] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v27 addObject:v20];
              }
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
        }

        while (v23);
      }

      ++v19;
    }

    while (v19 < [(NSArray *)self->_availableOutputSampleRates count]);
  }

  self->_outputASBD.mSampleRate = mSampleRate;
  self->_needNewConverter = 1;
  self->_needApplicableParameters = 0;
}

- (void)setInputPropertiesFromASBD:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_inputASBD.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_inputASBD.mBytesPerPacket = v4;
  *&self->_inputASBD.mSampleRate = v3;
  self->_needNewConverter = 1;
}

- (void)setOutputSampleRate:(float)a3
{
  v3 = a3;
  if (self->_outputASBD.mSampleRate != v3)
  {
    self->_outputASBD.mSampleRate = v3;
    self->_needNewConverter = 1;
  }
}

- (void)setOutputFormat:(unsigned int)a3
{
  if (self->_outputASBD.mFormatID != a3)
  {
    self->_outputASBD.mFormatID = a3;
    self->_needNewConverter = 1;
  }
}

- (void)setOutputFormatFlags:(unsigned int)a3
{
  if (self->_outputASBD.mFormatFlags != a3)
  {
    self->_outputASBD.mFormatFlags = a3;
    self->_needNewConverter = 1;
  }
}

- (void)setOutputBitsPerChannel:(unsigned int)a3
{
  if (self->_outputASBD.mBitsPerChannel != a3)
  {
    self->_outputASBD.mBitsPerChannel = a3;
    self->_needNewConverter = 1;
  }
}

- (void)setOutputChannelCount:(unsigned int)a3
{
  if (self->_outputASBD.mChannelsPerFrame != a3)
  {
    self->_outputASBD.mChannelsPerFrame = a3;
    self->_needNewConverter = 1;
  }
}

- (float)applicableOutputSampleRateForDesiredSampleRate:(float)a3 rounding:(int64_t)a4
{
  [(AVAudioSettingsValueConstrainer *)self _bringUpToDate];
  v7 = [(AVAudioSettingsValueConstrainer *)self outputDataRate];
  if (v7)
  {
    v9 = indexOfValueInAudioValueRangeArray(self->_availableOutputDataRates, a4, v7);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(NSMutableArray *)self->_applicableOutputSampleRatesForDataRate objectAtIndex:v9];
      v11 = indexOfValueInAudioValueRangeArray(v10, a4, a3);
      a3 = 0.0;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [objc_msgSend(v10 objectAtIndex:{v11), "minimum"}];
        return v12;
      }
    }

    return a3;
  }

  else
  {
    *&v8 = a3;

    [(AVAudioSettingsValueConstrainer *)self _getAvailableOutputSampleRateFor:a4 rounding:v8];
  }

  return result;
}

- (float)_getAvailableOutputSampleRateFor:(float)a3 rounding:(int64_t)a4
{
  [(AVAudioSettingsValueConstrainer *)self _bringUpToDate];
  availableOutputSampleRates = self->_availableOutputSampleRates;
  if (availableOutputSampleRates)
  {
    v8 = indexOfValueInAudioValueRangeArray(availableOutputSampleRates, a4, a3);
    a3 = 0.0;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [-[NSArray objectAtIndex:](availableOutputSampleRates objectAtIndex:{v8), "minimum"}];
      return v9;
    }
  }

  return a3;
}

@end