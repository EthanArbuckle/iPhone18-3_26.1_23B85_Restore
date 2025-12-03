@interface BitrateLimits
- (BitrateLimits)initWithOperatingMode:(unsigned __int8)mode withBitrateCap:(unint64_t)cap useCaseWatchContinuity:(BOOL)continuity;
- (unint64_t)defaultValueForNetwork:(BOOL)network;
- (void)capDefaultValues:(unint64_t)values;
- (void)dealloc;
- (void)setupDefaultValuesAudio;
@end

@implementation BitrateLimits

- (BitrateLimits)initWithOperatingMode:(unsigned __int8)mode withBitrateCap:(unint64_t)cap useCaseWatchContinuity:(BOOL)continuity
{
  modeCopy = mode;
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = BitrateLimits;
  v8 = [(BitrateLimits *)&v17 init];
  v9 = v8;
  if (v8)
  {
    if (modeCopy > 5)
    {
      if (modeCopy <= 7)
      {
        if (modeCopy != 6)
        {
          commonAudioOnlyLimitsLegacy = [(BitrateLimits *)v8 commonAudioOnlyLimitsLegacy];
          goto LABEL_23;
        }

        v18[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:cap];
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        v9->defaultValue = cap;
        v9->defaultValueCellular = cap;
        v9->defaultValue2G = cap;
        v9->limits = v14;
        goto LABEL_24;
      }

      if (modeCopy == 8)
      {
        commonAudioOnlyLimitsLegacy = [(BitrateLimits *)v8 commonAudioOnlyLimits];
        v11 = &unk_1F579D320;
        goto LABEL_22;
      }

      if (modeCopy != 9)
      {
        goto LABEL_24;
      }

      commonAudioVideoLimits = [(BitrateLimits *)v8 commonAudioVideoLimits];
      v13 = &unk_1F579D338;
    }

    else
    {
      if (modeCopy > 2)
      {
        if ((modeCopy - 4) >= 2)
        {
          if (modeCopy == 3)
          {
            commonAudioOnlyLimitsLegacy = [(BitrateLimits *)v8 commonAudioOnlyLimits];
            if (!continuity)
            {
              v11 = &unk_1F579D2F0;
              goto LABEL_22;
            }

LABEL_23:
            v9->limits = commonAudioOnlyLimitsLegacy;
            [(BitrateLimits *)v9 setupDefaultValuesAudio];
          }

LABEL_24:
          [(BitrateLimits *)v9 capDefaultValues:cap];
          v15 = v9->limits;
          return v9;
        }
      }

      else if (modeCopy >= 2)
      {
        if (modeCopy == 2)
        {
          commonAudioOnlyLimitsLegacy = [(BitrateLimits *)v8 commonAudioOnlyLimitsLegacy];
          if (!continuity)
          {
            v11 = &unk_1F579D2D8;
LABEL_22:
            commonAudioOnlyLimitsLegacy = [(NSArray *)commonAudioOnlyLimitsLegacy arrayByAddingObjectsFromArray:v11];
            goto LABEL_23;
          }

          goto LABEL_23;
        }

        goto LABEL_24;
      }

      commonAudioVideoLimits = [(BitrateLimits *)v8 commonAudioVideoLimits];
      v13 = &unk_1F579D308;
    }

    v9->limits = [commonAudioVideoLimits arrayByAddingObjectsFromArray:v13];
    [(BitrateLimits *)v9 setUpDefaultValuesAudioVideo];
    goto LABEL_24;
  }

  return v9;
}

- (void)setupDefaultValuesAudio
{
  self->defaultValue = 40000;
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forcedCellularAudioTxRateMaxCap", 40000);
  self->defaultValueCellular = IntValueForKey;
  self->defaultValue2G = IntValueForKey;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = BitrateLimits;
  [(BitrateLimits *)&v3 dealloc];
}

- (void)capDefaultValues:(unint64_t)values
{
  v5 = [(NSArray *)self->limits count]- 1;
  v6 = +[VCArrayUtils insertionIndexForValue:array:](VCArrayUtils, "insertionIndexForValue:array:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:values], self->limits);
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  defaultValue2G = [-[NSArray objectAtIndexedSubscript:](self->limits objectAtIndexedSubscript:{v7), "unsignedIntegerValue"}];
  v9 = vdupq_n_s64(defaultValue2G);
  *&self->defaultValue = vbslq_s8(vcgtq_u64(v9, *&self->defaultValue), *&self->defaultValue, v9);
  if (self->defaultValue2G < defaultValue2G)
  {
    defaultValue2G = self->defaultValue2G;
  }

  self->defaultValue2G = defaultValue2G;
}

- (unint64_t)defaultValueForNetwork:(BOOL)network
{
  v3 = 8;
  if (network)
  {
    v3 = 16;
  }

  return *(&self->super.isa + v3);
}

@end