@interface PHASENumberMetaParameterDefinition
- (PHASENumberMetaParameterDefinition)init;
- (PHASENumberMetaParameterDefinition)initWithValue:(double)value;
- (PHASENumberMetaParameterDefinition)initWithValue:(double)value identifier:(NSString *)identifier;
- (PHASENumberMetaParameterDefinition)initWithValue:(double)value minimum:(double)minimum maximum:(double)maximum;
- (PHASENumberMetaParameterDefinition)initWithValue:(double)value minimum:(double)minimum maximum:(double)maximum identifier:(NSString *)identifier;
@end

@implementation PHASENumberMetaParameterDefinition

- (PHASENumberMetaParameterDefinition)init
{
  [(PHASENumberMetaParameterDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASENumberMetaParameterDefinition)initWithValue:(double)value identifier:(NSString *)identifier
{
  v6 = identifier;
  v7 = [(PHASENumberMetaParameterDefinition *)self initWithValue:value minimum:-INFINITY maximum:INFINITY];
  v8 = v7;
  if (v7)
  {
    [(PHASEDefinition *)v7 setIdentifier:v6];
    v9 = v8;
  }

  return v8;
}

- (PHASENumberMetaParameterDefinition)initWithValue:(double)value
{
  v3 = [(PHASENumberMetaParameterDefinition *)self initWithValue:value minimum:-INFINITY maximum:INFINITY];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (PHASENumberMetaParameterDefinition)initWithValue:(double)value minimum:(double)minimum maximum:(double)maximum identifier:(NSString *)identifier
{
  v10 = identifier;
  v11 = [(PHASENumberMetaParameterDefinition *)self initWithValue:value minimum:minimum maximum:maximum];
  v12 = v11;
  if (v11)
  {
    [(PHASEDefinition *)v11 setIdentifier:v10];
    v13 = v12;
  }

  return v12;
}

- (PHASENumberMetaParameterDefinition)initWithValue:(double)value minimum:(double)minimum maximum:(double)maximum
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v19.receiver = self;
  v19.super_class = PHASENumberMetaParameterDefinition;
  v10 = [(PHASEMetaParameterDefinition *)&v19 initWithValue:v9];

  if (!v10)
  {
    goto LABEL_11;
  }

  if (minimum > maximum)
  {
    v12 = **(Phase::Logger::GetInstance(v11) + 448);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "PHASEMetaParameter.mm";
      v22 = 1024;
      v23 = 108;
      v24 = 2048;
      v25 = minimum;
      v26 = 2048;
      v27 = maximum;
      v13 = "%25s:%-5d PHASENumberMetaParameterDefinition:initWithValue: was called with a minimum %f > maximum %f";
      v14 = v12;
      v15 = 38;
LABEL_10:
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (value < minimum || value > maximum)
  {
    v17 = **(Phase::Logger::GetInstance(v11) + 448);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v21 = "PHASEMetaParameter.mm";
      v22 = 1024;
      v23 = 116;
      v24 = 2048;
      v25 = value;
      v26 = 2048;
      v27 = minimum;
      v28 = 2048;
      v29 = maximum;
      v13 = "%25s:%-5d PHASENumberMetaParameterDefinition:initWithValue: was called with a value %f out-of-range [%f, %f]";
      v14 = v17;
      v15 = 48;
      goto LABEL_10;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v10->_minimum = minimum;
  v10->_maximum = maximum;
  v16 = v10;
LABEL_12:

  return v16;
}

@end