@interface PHASESessionVolume
- (PHASESessionVolume)initWithValue:(float)value unit:(int64_t)unit muted:(BOOL)muted;
- (PHASESessionVolume)initWithValues:(float)values raw:(float)raw unit:(int64_t)unit muted:(BOOL)muted;
- (id)description;
@end

@implementation PHASESessionVolume

- (PHASESessionVolume)initWithValue:(float)value unit:(int64_t)unit muted:(BOOL)muted
{
  v27 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PHASESessionVolume;
  v8 = [(PHASESessionVolume *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = value;
    v8->_unit = unit;
    v8->_muted = muted;
    if (unit)
    {
      v10 = **(Phase::Logger::GetInstance(v8) + 448);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v20 = "PHASESessionVolume.mm";
        v21 = 1024;
        v22 = 43;
        v23 = 2048;
        valueCopy3 = *&unit;
        v25 = 2048;
        valueCopy = value;
        v11 = "%25s:%-5d Error: unimplemented volume unit %ld, value %f";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_23A302000, v12, v13, v11, buf, 0x26u);
      }
    }

    else
    {
      valueCopy2 = 1.0;
      if (value <= 1.0)
      {
        valueCopy2 = value;
      }

      if (value >= 0.0)
      {
        v15 = valueCopy2;
      }

      else
      {
        v15 = 0.0;
      }

      if (v15 != value)
      {
        v16 = **(Phase::Logger::GetInstance(v8) + 448);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v20 = "PHASESessionVolume.mm";
          v21 = 1024;
          v22 = 36;
          v23 = 2048;
          valueCopy3 = value;
          v25 = 2048;
          valueCopy = v15;
          v11 = "%25s:%-5d Warning: clamping scalar volume %f to %f";
          v12 = v16;
          v13 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_13;
        }
      }
    }
  }

  return v9;
}

- (PHASESessionVolume)initWithValues:(float)values raw:(float)raw unit:(int64_t)unit muted:(BOOL)muted
{
  result = [(PHASESessionVolume *)self initWithValue:unit unit:muted muted:?];
  if (result)
  {
    result->_raw = raw;
  }

  return result;
}

- (id)description
{
  if (self->_unit)
  {
    v2 = "unknown";
  }

  else
  {
    v2 = "scalar";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f %s", self->_value, v2];
}

@end