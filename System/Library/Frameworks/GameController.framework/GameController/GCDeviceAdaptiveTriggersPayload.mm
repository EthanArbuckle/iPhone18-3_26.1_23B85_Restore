@interface GCDeviceAdaptiveTriggersPayload
- (BOOL)hasEqualAmplitudes:(id)amplitudes;
- (BOOL)hasEqualStrengths:(id)strengths;
- (BOOL)isEqual:(id)equal;
- (GCDeviceAdaptiveTriggersPayload)initWithCoder:(id)coder;
- (id)initFeedbackWithResistiveStrengths:(id *)strengths;
- (id)initFeedbackWithStartPosition:(float)position resistiveStrength:(float)strength;
- (id)initOff;
- (id)initSlopeFeedbackWithStartPosition:(float)position endPosition:(float)endPosition startStrength:(float)strength endStrength:(float)endStrength;
- (id)initVibrationWithAmplitudes:(id *)amplitudes frequency:(float)frequency;
- (id)initVibrationWithStartPosition:(float)position amplitude:(float)amplitude frequency:(float)frequency;
- (id)initWeaponWithStartPosition:(float)position endPosition:(float)endPosition resistiveStrength:(float)strength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDeviceAdaptiveTriggersPayload

- (id)initSlopeFeedbackWithStartPosition:(float)position endPosition:(float)endPosition startStrength:(float)strength endStrength:(float)endStrength
{
  v28[2] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = GCDeviceAdaptiveTriggersPayload;
  v10 = [(GCDeviceAdaptiveTriggersPayload *)&v27 init];
  v11 = v10;
  if (v10)
  {
    mode = v10->_mode;
    v10->_mode = &unk_1F4E8DF88;

    *&v13 = position;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    startPosition = v11->_startPosition;
    v11->_startPosition = v14;

    *&v16 = endPosition;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    endPosition = v11->_endPosition;
    v11->_endPosition = v17;

    *&v19 = strength;
    v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
    v28[0] = v20;
    *&v21 = endStrength;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    v28[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    strengths = v11->_strengths;
    v11->_strengths = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)initFeedbackWithStartPosition:(float)position resistiveStrength:(float)strength
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = GCDeviceAdaptiveTriggersPayload;
  v6 = [(GCDeviceAdaptiveTriggersPayload *)&v18 init];
  v7 = v6;
  if (v6)
  {
    mode = v6->_mode;
    v6->_mode = &unk_1F4E8DFA0;

    *&v9 = position;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    startPosition = v7->_startPosition;
    v7->_startPosition = v10;

    *&v12 = strength;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    v19[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    strengths = v7->_strengths;
    v7->_strengths = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)initFeedbackWithResistiveStrengths:(id *)strengths
{
  v13.receiver = self;
  v13.super_class = GCDeviceAdaptiveTriggersPayload;
  v4 = [(GCDeviceAdaptiveTriggersPayload *)&v13 init];
  v5 = v4;
  if (v4)
  {
    mode = v4->_mode;
    v4->_mode = &unk_1F4E8DFA0;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    for (i = 0; i != 10; ++i)
    {
      *&v8 = strengths->var0[i];
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
      [(NSArray *)v7 addObject:v10];
    }

    strengths = v5->_strengths;
    v5->_strengths = v7;
  }

  return v5;
}

- (id)initWeaponWithStartPosition:(float)position endPosition:(float)endPosition resistiveStrength:(float)strength
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = GCDeviceAdaptiveTriggersPayload;
  v8 = [(GCDeviceAdaptiveTriggersPayload *)&v23 init];
  v9 = v8;
  if (v8)
  {
    mode = v8->_mode;
    v8->_mode = &unk_1F4E8DFB8;

    *&v11 = position;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    startPosition = v9->_startPosition;
    v9->_startPosition = v12;

    *&v14 = endPosition;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    endPosition = v9->_endPosition;
    v9->_endPosition = v15;

    *&v17 = strength;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    v24[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    strengths = v9->_strengths;
    v9->_strengths = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)initVibrationWithStartPosition:(float)position amplitude:(float)amplitude frequency:(float)frequency
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = GCDeviceAdaptiveTriggersPayload;
  v8 = [(GCDeviceAdaptiveTriggersPayload *)&v23 init];
  v9 = v8;
  if (v8)
  {
    mode = v8->_mode;
    v8->_mode = &unk_1F4E8DFD0;

    *&v11 = position;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    startPosition = v9->_startPosition;
    v9->_startPosition = v12;

    *&v14 = amplitude;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    v24[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    amplitudes = v9->_amplitudes;
    v9->_amplitudes = v16;

    *&v18 = frequency;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    frequency = v9->_frequency;
    v9->_frequency = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)initVibrationWithAmplitudes:(id *)amplitudes frequency:(float)frequency
{
  v18.receiver = self;
  v18.super_class = GCDeviceAdaptiveTriggersPayload;
  v6 = [(GCDeviceAdaptiveTriggersPayload *)&v18 init];
  v7 = v6;
  if (v6)
  {
    mode = v6->_mode;
    v6->_mode = &unk_1F4E8DFD0;

    *&v9 = frequency;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    frequency = v7->_frequency;
    v7->_frequency = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    for (i = 0; i != 10; ++i)
    {
      *&v13 = amplitudes->var0[i];
      v15 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      [(NSArray *)v12 addObject:v15];
    }

    amplitudes = v7->_amplitudes;
    v7->_amplitudes = v12;
  }

  return v7;
}

- (id)initOff
{
  v6.receiver = self;
  v6.super_class = GCDeviceAdaptiveTriggersPayload;
  v2 = [(GCDeviceAdaptiveTriggersPayload *)&v6 init];
  v3 = v2;
  if (v2)
  {
    mode = v2->_mode;
    v2->_mode = &unk_1F4E8DFE8;
  }

  return v3;
}

- (BOOL)hasEqualStrengths:(id)strengths
{
  strengthsCopy = strengths;
  strengths = [strengthsCopy strengths];
  v6 = [strengths count];
  v7 = [(NSArray *)self->_strengths count];

  if (v6 == v7)
  {
    strengths2 = [strengthsCopy strengths];
    v9 = [strengths2 count];

    if (v9)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        strengths3 = [strengthsCopy strengths];
        v13 = [strengths3 objectAtIndexedSubscript:v10];
        [v13 floatValue];
        v15 = v14;
        v16 = [(NSArray *)self->_strengths objectAtIndexedSubscript:v10];
        [v16 floatValue];
        v11 &= vabds_f32(v15, v17) < 0.0001;

        ++v10;
        strengths4 = [strengthsCopy strengths];
        v19 = [strengths4 count];
      }

      while (v19 > v10);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasEqualAmplitudes:(id)amplitudes
{
  amplitudesCopy = amplitudes;
  amplitudes = [amplitudesCopy amplitudes];
  v6 = [amplitudes count];
  v7 = [(NSArray *)self->_amplitudes count];

  if (v6 == v7)
  {
    amplitudes2 = [amplitudesCopy amplitudes];
    v9 = [amplitudes2 count];

    if (v9)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        amplitudes3 = [amplitudesCopy amplitudes];
        v13 = [amplitudes3 objectAtIndexedSubscript:v10];
        [v13 floatValue];
        v15 = v14;
        v16 = [(NSArray *)self->_amplitudes objectAtIndexedSubscript:v10];
        [v16 floatValue];
        v11 &= vabds_f32(v15, v17) < 0.0001;

        ++v10;
        amplitudes4 = [amplitudesCopy amplitudes];
        v19 = [amplitudes4 count];
      }

      while (v19 > v10);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v5 = equalCopy;
  mode = [(GCDeviceAdaptiveTriggersPayload *)v5 mode];
  mode = self->_mode;

  if (mode != mode)
  {
    goto LABEL_4;
  }

  integerValue = [(NSNumber *)self->_mode integerValue];
  v8 = 1;
  if (integerValue <= 2)
  {
    if (integerValue == 1)
    {
      if ([(GCDeviceAdaptiveTriggersPayload *)self hasEqualStrengths:v5])
      {
        startPosition = [(GCDeviceAdaptiveTriggersPayload *)v5 startPosition];
        [startPosition floatValue];
        v20 = v19;
        [(NSNumber *)self->_startPosition floatValue];
        v8 = vabds_f32(v20, v21) < 0.0001;
LABEL_25:

        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (integerValue != 2)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (integerValue != 3)
  {
    if (integerValue != 4)
    {
      goto LABEL_5;
    }

LABEL_15:
    if ([(GCDeviceAdaptiveTriggersPayload *)self hasEqualStrengths:v5])
    {
      startPosition = [(GCDeviceAdaptiveTriggersPayload *)v5 startPosition];
      [startPosition floatValue];
      v13 = v12;
      [(NSNumber *)self->_startPosition floatValue];
      if (vabds_f32(v13, v14) < 0.0001)
      {
        endPosition = [(GCDeviceAdaptiveTriggersPayload *)v5 endPosition];
        [endPosition floatValue];
        v17 = v16;
        endPosition = self->_endPosition;
LABEL_23:
        [(NSNumber *)endPosition floatValue];
        v8 = vabds_f32(v17, v26) < 0.0001;

        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_4;
  }

  if ([(GCDeviceAdaptiveTriggersPayload *)self hasEqualAmplitudes:v5])
  {
    startPosition = [(GCDeviceAdaptiveTriggersPayload *)v5 frequency];
    [startPosition floatValue];
    v23 = v22;
    [(NSNumber *)self->_frequency floatValue];
    if (vabds_f32(v23, v24) < 0.0001)
    {
      endPosition = [(GCDeviceAdaptiveTriggersPayload *)v5 startPosition];
      [endPosition floatValue];
      v17 = v25;
      endPosition = self->_startPosition;
      goto LABEL_23;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

LABEL_4:
  v8 = 0;
LABEL_5:

LABEL_8:
  return v8;
}

- (GCDeviceAdaptiveTriggersPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = GCDeviceAdaptiveTriggersPayload;
  v5 = [(GCDeviceAdaptiveTriggersPayload *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mode"];
    mode = v5->_mode;
    v5->_mode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startPosition"];
    startPosition = v5->_startPosition;
    v5->_startPosition = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endPosition"];
    endPosition = v5->_endPosition;
    v5->_endPosition = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_strengths"];
    strengths = v5->_strengths;
    v5->_strengths = v12;

    v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_amplitudes"];
    amplitudes = v5->_amplitudes;
    v5->_amplitudes = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_frequency"];
    frequency = v5->_frequency;
    v5->_frequency = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  mode = self->_mode;
  coderCopy = coder;
  [coderCopy encodeObject:mode forKey:@"_mode"];
  [coderCopy encodeObject:self->_startPosition forKey:@"_startPosition"];
  [coderCopy encodeObject:self->_endPosition forKey:@"_endPosition"];
  [coderCopy encodeObject:self->_strengths forKey:@"_strengths"];
  [coderCopy encodeObject:self->_amplitudes forKey:@"_amplitudes"];
  [coderCopy encodeObject:self->_frequency forKey:@"_frequency"];
}

@end