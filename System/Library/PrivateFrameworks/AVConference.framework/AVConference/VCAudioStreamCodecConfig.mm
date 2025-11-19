@interface VCAudioStreamCodecConfig
- (VCAudioStreamCodecConfig)initWithCodecType:(int64_t)a3;
- (unsigned)networkPayload;
- (void)dealloc;
- (void)setupAMRModesWithClientModeMask:(unsigned int)a3;
- (void)setupAMRWBModesWithClientModeMask:(unsigned int)a3;
- (void)setupCodecBandwidthsWithClientBandwidthMask:(unsigned int)a3;
- (void)setupEVSModesWithClientModeMask:(unsigned int)a3;
- (void)setupModesWithClientModeMask:(unsigned int)a3;
@end

@implementation VCAudioStreamCodecConfig

- (VCAudioStreamCodecConfig)initWithCodecType:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCAudioStreamCodecConfig;
  v4 = [(VCAudioStreamCodecConfig *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_codecType = a3;
    v4->_supportedModes = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_supportedBandwidths = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_networkPayload = 0xFFFF;
    v5->_pTime = 20;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioStreamCodecConfig;
  [(VCAudioStreamCodecConfig *)&v3 dealloc];
}

- (unsigned)networkPayload
{
  if (self->_networkPayload == 0xFFFF)
  {
    return [VCPayloadUtils payloadForCodecType:self->_codecType];
  }

  else
  {
    return self->_networkPayload;
  }
}

- (void)setupModesWithClientModeMask:(unsigned int)a3
{
  codecType = self->_codecType;
  if (codecType <= 2)
  {
    if (codecType == 1)
    {
      [(VCAudioStreamCodecConfig *)self setupAMRModesWithClientModeMask:*&a3];
    }

    else if (codecType == 2)
    {
      [(VCAudioStreamCodecConfig *)self setupAMRWBModesWithClientModeMask:*&a3];
    }
  }

  else if ((codecType - 3) < 2 || codecType == 17)
  {
    [(VCAudioStreamCodecConfig *)self setupEVSModesWithClientModeMask:*&a3];
  }
}

- (void)setupCodecBandwidthsWithClientBandwidthMask:(unsigned int)a3
{
  v3 = a3;
  codecType = self->_codecType;
  if (codecType == 4)
  {
    p_supportedBandwidths = &self->_supportedBandwidths;
    [(NSMutableArray *)self->_supportedBandwidths removeAllObjects];
    if (v3)
    {
      [(NSMutableArray *)*p_supportedBandwidths setObject:&unk_1F5798358 atIndexedSubscript:[(NSMutableArray *)*p_supportedBandwidths count]];
      if ((v3 & 2) == 0)
      {
LABEL_9:
        if ((v3 & 4) == 0)
        {
          return;
        }

LABEL_13:
        v6 = &unk_1F5798388;
        goto LABEL_14;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_9;
    }

    [(NSMutableArray *)*p_supportedBandwidths setObject:&unk_1F5798370 atIndexedSubscript:[(NSMutableArray *)*p_supportedBandwidths count]];
    if ((v3 & 4) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  if (codecType == 3)
  {
    p_supportedBandwidths = &self->_supportedBandwidths;
    [(NSMutableArray *)self->_supportedBandwidths removeAllObjects];
    if (v3)
    {
      [(NSMutableArray *)*p_supportedBandwidths setObject:&unk_1F5798358 atIndexedSubscript:[(NSMutableArray *)*p_supportedBandwidths count]];
    }

    if ((v3 & 2) != 0)
    {
      v6 = &unk_1F5798370;
LABEL_14:
      v7 = *p_supportedBandwidths;
      v8 = [(NSMutableArray *)v7 count];

      [(NSMutableArray *)v7 setObject:v6 atIndexedSubscript:v8];
    }
  }
}

- (void)setupAMRModesWithClientModeMask:(unsigned int)a3
{
  v3 = a3;
  [(NSMutableArray *)self->_supportedModes removeAllObjects];
  if (v3)
  {
    [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798358 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798370 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798388 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57983A0 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57983B8 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57983E8 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
    if ((v3 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57983D0 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v3 & 0x80) == 0)
  {
    return;
  }

LABEL_17:
  supportedModes = self->_supportedModes;
  v6 = [(NSMutableArray *)supportedModes count];

  [(NSMutableArray *)supportedModes setObject:&unk_1F5798400 atIndexedSubscript:v6];
}

- (void)setupAMRWBModesWithClientModeMask:(unsigned int)a3
{
  v3 = a3;
  [(NSMutableArray *)self->_supportedModes removeAllObjects];
  if (v3)
  {
    [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798358 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798370 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798388 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57983A0 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57983B8 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57983D0 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798400 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
    if ((v3 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_17:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57983E8 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v3 & 0x100) == 0)
  {
    return;
  }

LABEL_19:
  supportedModes = self->_supportedModes;
  v6 = [(NSMutableArray *)supportedModes count];

  [(NSMutableArray *)supportedModes setObject:&unk_1F5798418 atIndexedSubscript:v6];
}

- (void)setupEVSModesWithClientModeMask:(unsigned int)a3
{
  [(VCAudioStreamCodecConfig *)self setupAMRWBModesWithClientModeMask:?];
  if ((a3 & 0x400) != 0)
  {
    [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798430 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
    if ((a3 & 0x800) == 0)
    {
LABEL_3:
      if ((a3 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a3 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798448 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x1000) == 0)
  {
LABEL_4:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798460 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x2000) == 0)
  {
LABEL_5:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798478 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x4000) == 0)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798490 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57984A8 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x10000) == 0)
  {
LABEL_8:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57984C0 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x20000) == 0)
  {
LABEL_9:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57984D8 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x40000) == 0)
  {
LABEL_10:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F57984F0 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x80000) == 0)
  {
LABEL_11:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798520 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
    if ((a3 & 0x200000) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_23:
  [(NSMutableArray *)self->_supportedModes setObject:&unk_1F5798508 atIndexedSubscript:[(NSMutableArray *)self->_supportedModes count]];
  if ((a3 & 0x100000) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((a3 & 0x200000) == 0)
  {
    return;
  }

LABEL_25:
  supportedModes = self->_supportedModes;
  v6 = [(NSMutableArray *)supportedModes count];

  [(NSMutableArray *)supportedModes setObject:&unk_1F5798538 atIndexedSubscript:v6];
}

@end