@interface VCRateControlServerBag
+ (id)groupKeysWithMode:(int)a3 primaryKey:(id)a4;
+ (id)keysWithMode:(int)a3;
+ (id)prefixForMode:(int)a3;
- (BOOL)containsAllSecondaryKeysWithPrimaryKey:(id)a3;
- (NSNumber)experimentGroupIndex;
- (VCRateControlServerBag)initWithMode:(int)a3 serverBagDict:(id)a4;
- (id)getExperimentConfig:(unsigned __int8)a3 defaultValue:(id)a4;
- (id)getExperimentValueForKey:(id)a3;
- (id)valueForSecondaryKeyWithPrimaryKey:(id)a3 secondaryKey:(id)a4 type:(int)a5;
- (id)valueForType:(int)a3 value:(id)a4;
- (int)experimentVersion;
- (void)dealloc;
@end

@implementation VCRateControlServerBag

+ (id)keysWithMode:(int)a3
{
  v3 = *&a3;
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3 == 6 || v3 == 1)
  {
    v6 = [&unk_1F579E738 allKeys];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:{objc_msgSend(a1, "groupKeysWithMode:primaryKey:", v3, *(*(&v15 + 1) + 8 * v10++))}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v8);
    }

    return v5;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v20 = v12;
        v21 = 2080;
        v22 = "+[VCRateControlServerBag keysWithMode:]";
        v23 = 1024;
        v24 = 81;
        v25 = 1024;
        v26 = v3;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Unsupported operating mode %d", buf, 0x22u);
      }
    }

    return MEMORY[0x1E695E0F0];
  }
}

+ (id)groupKeysWithMode:(int)a3 primaryKey:(id)a4
{
  v5 = *&a3;
  v40 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  switch(v5)
  {
    case 1:
      v8 = &unk_1F579E760;
      goto LABEL_7;
    case 8:
      v8 = &unk_1F579E7B0;
      goto LABEL_7;
    case 6:
      v8 = &unk_1F579E788;
LABEL_7:
      v23 = v5;
      v9 = [a1 prefixForMode:v5];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = [v8 objectForKey:a4];
      v10 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v37;
        do
        {
          v13 = 0;
          do
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", v9, a4, *(*(&v36 + 1) + 8 * v13)];
            [v7 addObject:v14];
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v15 = VRTraceErrorLogLevelToCSTR();
              v16 = *MEMORY[0x1E6986650];
              v17 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = [v14 UTF8String];
                  *buf = 136316162;
                  v26 = v15;
                  v27 = 2080;
                  v28 = "+[VCRateControlServerBag groupKeysWithMode:primaryKey:]";
                  v29 = 1024;
                  v30 = 124;
                  v31 = 2080;
                  v32 = v18;
                  v33 = 1024;
                  v34 = v23;
                  _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Adding key:%s for mode %d", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v19 = [v14 UTF8String];
                *buf = 136316162;
                v26 = v15;
                v27 = 2080;
                v28 = "+[VCRateControlServerBag groupKeysWithMode:primaryKey:]";
                v29 = 1024;
                v30 = 124;
                v31 = 2080;
                v32 = v19;
                v33 = 1024;
                v34 = v23;
                _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, "AVCRC [%s] %s:%d Adding key:%s for mode %d", buf, 0x2Cu);
              }
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
        }

        while (v11);
      }

      return v7;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v26 = v21;
      v27 = 2080;
      v28 = "+[VCRateControlServerBag groupKeysWithMode:primaryKey:]";
      v29 = 1024;
      v30 = 116;
      v31 = 1024;
      LODWORD(v32) = v5;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Unsupported operating mode %d", buf, 0x22u);
    }
  }

  return 0;
}

+ (id)prefixForMode:(int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 8:
      v4 = MEMORY[0x1E696AEC0];
      v5 = @"sidecar";
      return [v4 stringWithFormat:@"%@-%@-%@", @"vc", @"vcrc", v5];
    case 6:
      v4 = MEMORY[0x1E696AEC0];
      v5 = @"groupFaceTime";
      return [v4 stringWithFormat:@"%@-%@-%@", @"vc", @"vcrc", v5];
    case 1:
      v4 = MEMORY[0x1E696AEC0];
      v5 = @"faceTime";
      return [v4 stringWithFormat:@"%@-%@-%@", @"vc", @"vcrc", v5];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v7;
      v11 = 2080;
      v12 = "+[VCRateControlServerBag prefixForMode:]";
      v13 = 1024;
      v14 = 142;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Unsupported operating mode %d", buf, 0x22u);
    }
  }

  return &stru_1F570E008;
}

- (VCRateControlServerBag)initWithMode:(int)a3 serverBagDict:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VCRateControlServerBag;
  v6 = [(VCRateControlServerBag *)&v19 init];
  if (!v6)
  {
    return v6;
  }

  if (a3 > 8 || ((1 << a3) & 0x142) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_15;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315906;
    v21 = v16;
    v22 = 2080;
    v23 = "[VCRateControlServerBag initWithMode:serverBagDict:]";
    v24 = 1024;
    v25 = 155;
    v26 = 1024;
    v27 = a3;
    v13 = "AVCRC [%s] %s:%d Unsupported operating mode %d";
    v14 = v17;
    v15 = 34;
    goto LABEL_14;
  }

  if (![a4 count])
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_15;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315650;
    v21 = v11;
    v22 = 2080;
    v23 = "[VCRateControlServerBag initWithMode:serverBagDict:]";
    v24 = 1024;
    v25 = 161;
    v13 = "AVCRC [%s] %s:%d Server bag dictionary is empty.";
    v14 = v12;
    v15 = 28;
LABEL_14:
    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_15:

    return 0;
  }

  v6->_operatingMode = a3;
  v6->_serverBagDict = a4;
  v6->_experimentGroupIndex = &unk_1F579B4A8;
  v6->_experimentEnabled = VCDefaults_GetBoolValueForKey(@"enableVCRateControlExperiment", 1);
  v6->_defaultExperimentConfigString = VCDefaults_CopyStringValueForKey(@"vcrcExperimentConfig");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      experimentEnabled = v6->_experimentEnabled;
      v10 = [objc_msgSend(objc_msgSend(a4 "allKeys")];
      *buf = 136316418;
      v21 = v7;
      v22 = 2080;
      v23 = "[VCRateControlServerBag initWithMode:serverBagDict:]";
      v24 = 1024;
      v25 = 171;
      v26 = 1024;
      v27 = a3;
      v28 = 1024;
      v29 = experimentEnabled;
      v30 = 2080;
      v31 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d operatingMode=%d, experimentEnabled=%d, keys=%s", buf, 0x32u);
    }
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCRateControlServerBag;
  [(VCRateControlServerBag *)&v3 dealloc];
}

- (BOOL)containsAllSecondaryKeysWithPrimaryKey:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[NSDictionary allKeys](self->_serverBagDict, "allKeys")}];
  [v5 addObjectsFromArray:{objc_msgSend(-[VCRateControlServerBag getExperimentConfig:defaultValue:](self, "getExperimentConfig:defaultValue:", 1, &stru_1F570E008), "componentsSeparatedByString:", @", ")}];
  v6 = [VCRateControlServerBag groupKeysWithMode:self->_operatingMode primaryKey:a3];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  return [v7 isSubsetOfSet:v8];
}

- (id)valueForType:(int)a3 value:(id)a4
{
  if (a3 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCRateControlServerBag valueForType:v9 value:v10];
      }
    }

    return &unk_1F579B4A8;
  }

  else
  {
    result = a4;
    if (a3 == 2)
    {
      v5 = MEMORY[0x1E696AD98];
      [a4 doubleValue];
      v7 = 100.0;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = MEMORY[0x1E696AD98];
      [a4 doubleValue];
      v7 = 1000.0;
    }

    v8 = v6 / v7;

    return [v5 numberWithDouble:v8];
  }
}

- (id)valueForSecondaryKeyWithPrimaryKey:(id)a3 secondaryKey:(id)a4 type:(int)a5
{
  v5 = *&a5;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", +[VCRateControlServerBag prefixForMode:](VCRateControlServerBag, "prefixForMode:", self->_operatingMode), a3, a4];
  if ([a3 isEqualToString:@"experiment"])
  {
    if (![(NSDictionary *)self->_serverBagDict objectForKeyedSubscript:v8])
    {
      return &stru_1F570E008;
    }

    goto LABEL_6;
  }

  v10 = [(VCRateControlServerBag *)self getExperimentValueForKey:v8];
  if (v10)
  {
LABEL_7:

    return [(VCRateControlServerBag *)self valueForType:v5 value:v10];
  }

  if ([(NSDictionary *)self->_serverBagDict objectForKeyedSubscript:v8])
  {
LABEL_6:
    v10 = [(NSDictionary *)self->_serverBagDict objectForKeyedSubscript:v8];
    goto LABEL_7;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:v11 secondaryKey:v8 type:v12];
    }
  }

  return &unk_1F579B4A8;
}

- (id)getExperimentConfig:(unsigned __int8)a3 defaultValue:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_experimentEnabled)
  {
    v5 = a3;
    v7 = [(VCRateControlServerBag *)self valueForSecondaryKeyWithPrimaryKey:@"experiment" secondaryKey:@"experimentConfig" type:0];
    defaultExperimentConfigString = self->_defaultExperimentConfigString;
    if (defaultExperimentConfigString)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v9;
          v14 = 2080;
          v15 = "[VCRateControlServerBag getExperimentConfig:defaultValue:]";
          v16 = 1024;
          v17 = 232;
          v18 = 2112;
          v19 = defaultExperimentConfigString;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Use default experiment string:%@", &v12, 0x26u);
        }
      }
    }

    else
    {
      defaultExperimentConfigString = v7;
    }

    if (![(NSString *)defaultExperimentConfigString isEqualToString:&stru_1F570E008])
    {
      return [(NSArray *)[(NSString *)defaultExperimentConfigString componentsSeparatedByString:@";"] objectAtIndexedSubscript:v5];
    }
  }

  return a4;
}

- (int)experimentVersion
{
  result = [(VCRateControlServerBag *)self containsAllSecondaryKeysWithPrimaryKey:@"experiment"];
  if (result)
  {
    v4 = [(VCRateControlServerBag *)self getExperimentConfig:0 defaultValue:@"0"];

    return [v4 intValue];
  }

  return result;
}

- (NSNumber)experimentGroupIndex
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(NSNumber *)self->_experimentGroupIndex isEqualToNumber:&unk_1F579B4A8];
  experimentGroupIndex = self->_experimentGroupIndex;
  if (!v3)
  {
    v6 = experimentGroupIndex;
    goto LABEL_8;
  }

  self->_experimentGroupIndex = &unk_1F579B4C0;
  CFRetain(&unk_1F579B4C0);
  if (experimentGroupIndex)
  {
    CFRelease(experimentGroupIndex);
  }

  if (![(VCRateControlServerBag *)self containsAllSecondaryKeysWithPrimaryKey:@"experiment"])
  {
    return self->_experimentGroupIndex;
  }

  v5 = [(VCRateControlServerBag *)self getExperimentConfig:2 defaultValue:&stru_1F570E008];
  if (![v5 isEqualToString:&stru_1F570E008])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(v5, "componentsSeparatedByString:", @", ")}];
    [objc_msgSend(v8 objectAtIndexedSubscript:{0), "doubleValue"}];
    if (v9 < 0.05)
    {
      [v8 setObject:&unk_1F579E4D0 atIndexedSubscript:0];
    }

    v10 = arc4random();
    if ([v8 count])
    {
      v11 = 0;
      v12 = 0;
      v13 = v10 / 4294967300.0;
      v14 = 0.0;
      while (1)
      {
        [objc_msgSend(v8 objectAtIndexedSubscript:{v11), "doubleValue"}];
        v14 = v14 + v15;
        [objc_msgSend(v8 objectAtIndexedSubscript:{v11), "doubleValue"}];
        if (v16 >= 0.05 && v13 <= v14)
        {
          break;
        }

        v11 = ++v12;
        if ([v8 count] <= v12)
        {
          goto LABEL_29;
        }
      }

      v18 = self->_experimentGroupIndex;
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v12];
      self->_experimentGroupIndex = v19;
      if (v19)
      {
        CFRetain(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136316418;
          v23 = v20;
          v24 = 2080;
          v25 = "[VCRateControlServerBag experimentGroupIndex]";
          v26 = 1024;
          v27 = 274;
          v28 = 1024;
          v29 = v12;
          v30 = 2112;
          v31 = v5;
          v32 = 2048;
          v33 = v13;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d VCRC Experiment groupIndex=%d populationDistribution=%@ randomValue=%f", &v22, 0x36u);
        }
      }
    }

LABEL_29:

    return self->_experimentGroupIndex;
  }

  v6 = self->_experimentGroupIndex;
LABEL_8:

  return v6;
}

- (id)getExperimentValueForKey:(id)a3
{
  v5 = [(VCRateControlServerBag *)self experimentGroupIndex];
  if ([(NSNumber *)v5 isEqualToNumber:&unk_1F579B4A8])
  {
    return 0;
  }

  v6 = [objc_msgSend(-[VCRateControlServerBag getExperimentConfig:defaultValue:](self getExperimentConfig:1 defaultValue:{&stru_1F570E008), "componentsSeparatedByString:", @", "), "indexOfObject:", a3}];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  v9 = [objc_msgSend(objc_msgSend(-[VCRateControlServerBag getExperimentConfig:defaultValue:](self getExperimentConfig:3 defaultValue:{&stru_1F570E008), "componentsSeparatedByString:", @", "), "objectAtIndexedSubscript:", -[NSNumber unsignedIntValue](v5, "unsignedIntValue")), "componentsSeparatedByString:", @"_"}];

  return [v9 objectAtIndexedSubscript:v8];
}

- (void)valueForType:(uint64_t)a1 value:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCRateControlServerBag valueForType:value:]";
  v6 = 1024;
  v7 = 200;
  v8 = 1024;
  v9 = -1;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Invalid type=%d", &v2, 0x22u);
}

- (void)valueForSecondaryKeyWithPrimaryKey:(uint64_t)a1 secondaryKey:(void *)a2 type:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:secondaryKey:type:]";
  v8 = 1024;
  v9 = 218;
  v10 = 2080;
  v11 = [a2 UTF8String];
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Could not find key %s in VCRC Server Bag!", &v4, 0x26u);
}

@end