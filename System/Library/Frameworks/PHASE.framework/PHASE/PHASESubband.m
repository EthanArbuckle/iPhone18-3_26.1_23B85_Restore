@interface PHASESubband
- (PHASESubband)init;
- (PHASESubband)initWithFrequency:(float)a3 value:(float)a4;
@end

@implementation PHASESubband

- (PHASESubband)init
{
  [(PHASESubband *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESubband)initWithFrequency:(float)a3 value:(float)a4
{
  v5 = self;
  v18 = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    v9 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "PHASEMaterial.mm";
      v14 = 1024;
      v15 = 102;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASESubband:initWithFrequency:value]: Invalid frequency: %2.2f. Values must be positive.", buf, 0x1Cu);
    }

    v8 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PHASESubband;
    v7 = [(PHASESubband *)&v11 init];
    if (v7)
    {
      v7->_frequency = a3;
      v7->_value = a4;
    }

    v5 = v7;
    v8 = v5;
  }

  return v8;
}

@end