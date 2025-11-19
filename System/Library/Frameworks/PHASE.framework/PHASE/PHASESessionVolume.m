@interface PHASESessionVolume
- (PHASESessionVolume)initWithValue:(float)a3 unit:(int64_t)a4 muted:(BOOL)a5;
- (PHASESessionVolume)initWithValues:(float)a3 raw:(float)a4 unit:(int64_t)a5 muted:(BOOL)a6;
- (id)description;
@end

@implementation PHASESessionVolume

- (PHASESessionVolume)initWithValue:(float)a3 unit:(int64_t)a4 muted:(BOOL)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PHASESessionVolume;
  v8 = [(PHASESessionVolume *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = a3;
    v8->_unit = a4;
    v8->_muted = a5;
    if (a4)
    {
      v10 = **(Phase::Logger::GetInstance(v8) + 448);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v20 = "PHASESessionVolume.mm";
        v21 = 1024;
        v22 = 43;
        v23 = 2048;
        v24 = *&a4;
        v25 = 2048;
        v26 = a3;
        v11 = "%25s:%-5d Error: unimplemented volume unit %ld, value %f";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_23A302000, v12, v13, v11, buf, 0x26u);
      }
    }

    else
    {
      v14 = 1.0;
      if (a3 <= 1.0)
      {
        v14 = a3;
      }

      if (a3 >= 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      if (v15 != a3)
      {
        v16 = **(Phase::Logger::GetInstance(v8) + 448);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v20 = "PHASESessionVolume.mm";
          v21 = 1024;
          v22 = 36;
          v23 = 2048;
          v24 = a3;
          v25 = 2048;
          v26 = v15;
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

- (PHASESessionVolume)initWithValues:(float)a3 raw:(float)a4 unit:(int64_t)a5 muted:(BOOL)a6
{
  result = [(PHASESessionVolume *)self initWithValue:a5 unit:a6 muted:?];
  if (result)
  {
    result->_raw = a4;
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