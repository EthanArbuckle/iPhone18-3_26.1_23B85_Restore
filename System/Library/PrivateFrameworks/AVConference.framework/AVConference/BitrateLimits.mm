@interface BitrateLimits
- (BitrateLimits)initWithOperatingMode:(unsigned __int8)a3 withBitrateCap:(unint64_t)a4 useCaseWatchContinuity:(BOOL)a5;
- (unint64_t)defaultValueForNetwork:(BOOL)a3;
- (void)capDefaultValues:(unint64_t)a3;
- (void)dealloc;
- (void)setupDefaultValuesAudio;
@end

@implementation BitrateLimits

- (BitrateLimits)initWithOperatingMode:(unsigned __int8)a3 withBitrateCap:(unint64_t)a4 useCaseWatchContinuity:(BOOL)a5
{
  v7 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = BitrateLimits;
  v8 = [(BitrateLimits *)&v17 init];
  v9 = v8;
  if (v8)
  {
    if (v7 > 5)
    {
      if (v7 <= 7)
      {
        if (v7 != 6)
        {
          v10 = [(BitrateLimits *)v8 commonAudioOnlyLimitsLegacy];
          goto LABEL_23;
        }

        v18[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        v9->defaultValue = a4;
        v9->defaultValueCellular = a4;
        v9->defaultValue2G = a4;
        v9->limits = v14;
        goto LABEL_24;
      }

      if (v7 == 8)
      {
        v10 = [(BitrateLimits *)v8 commonAudioOnlyLimits];
        v11 = &unk_1F579D320;
        goto LABEL_22;
      }

      if (v7 != 9)
      {
        goto LABEL_24;
      }

      v12 = [(BitrateLimits *)v8 commonAudioVideoLimits];
      v13 = &unk_1F579D338;
    }

    else
    {
      if (v7 > 2)
      {
        if ((v7 - 4) >= 2)
        {
          if (v7 == 3)
          {
            v10 = [(BitrateLimits *)v8 commonAudioOnlyLimits];
            if (!a5)
            {
              v11 = &unk_1F579D2F0;
              goto LABEL_22;
            }

LABEL_23:
            v9->limits = v10;
            [(BitrateLimits *)v9 setupDefaultValuesAudio];
          }

LABEL_24:
          [(BitrateLimits *)v9 capDefaultValues:a4];
          v15 = v9->limits;
          return v9;
        }
      }

      else if (v7 >= 2)
      {
        if (v7 == 2)
        {
          v10 = [(BitrateLimits *)v8 commonAudioOnlyLimitsLegacy];
          if (!a5)
          {
            v11 = &unk_1F579D2D8;
LABEL_22:
            v10 = [(NSArray *)v10 arrayByAddingObjectsFromArray:v11];
            goto LABEL_23;
          }

          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v12 = [(BitrateLimits *)v8 commonAudioVideoLimits];
      v13 = &unk_1F579D308;
    }

    v9->limits = [v12 arrayByAddingObjectsFromArray:v13];
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

- (void)capDefaultValues:(unint64_t)a3
{
  v5 = [(NSArray *)self->limits count]- 1;
  v6 = +[VCArrayUtils insertionIndexForValue:array:](VCArrayUtils, "insertionIndexForValue:array:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3], self->limits);
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

- (unint64_t)defaultValueForNetwork:(BOOL)a3
{
  v3 = 8;
  if (a3)
  {
    v3 = 16;
  }

  return *(&self->super.isa + v3);
}

@end