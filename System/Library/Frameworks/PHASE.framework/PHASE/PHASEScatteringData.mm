@interface PHASEScatteringData
+ (id)objectForDefault;
- (PHASEScatteringData)init;
- (PHASEScatteringData)initWithScatteringCoefficients:(id)coefficients;
- (PHASEScatteringData)initWithScatteringCoefficients:(id)coefficients frequencyBands:(id)bands;
@end

@implementation PHASEScatteringData

- (PHASEScatteringData)init
{
  [(PHASEScatteringData *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEScatteringData)initWithScatteringCoefficients:(id)coefficients
{
  v33 = *MEMORY[0x277D85DE8];
  coefficientsCopy = coefficients;
  if ([coefficientsCopy count])
  {
    v27.receiver = self;
    v27.super_class = PHASEScatteringData;
    v4 = [(PHASEScatteringData *)&v27 init];
    if (v4)
    {
      v5 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = coefficientsCopy;
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v7)
      {
        v8 = *v24;
        do
        {
          v9 = 0;
          do
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v23 + 1) + 8 * v9);
            [v10 value];
            v12 = v11;
            [v10 value];
            v13 = v10;
            if (v14 != fminf(fmaxf(v12, 0.0), 1.0))
            {
              v15 = [PHASESubband alloc];
              [v10 frequency];
              v16 = [PHASESubband initWithFrequency:v15 value:"initWithFrequency:value:"];

              v13 = v16;
            }

            [v5 addObject:v13];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v7);
      }

      v17 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
      scatteringCoefficients = v4->_scatteringCoefficients;
      v4->_scatteringCoefficients = v17;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    v20 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "PHASEMaterial.mm";
      v31 = 1024;
      v32 = 399;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEScatteringData:initWithScatteringCoefficients]: scatteringCoeffients is empty", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PHASEScatteringData)initWithScatteringCoefficients:(id)coefficients frequencyBands:(id)bands
{
  v44 = *MEMORY[0x277D85DE8];
  coefficientsCopy = coefficients;
  bandsCopy = bands;
  if (![coefficientsCopy count])
  {
    v23 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "PHASEMaterial.mm";
      v38 = 1024;
      v39 = 431;
      v24 = "%25s:%-5d [PHASEScatteringData:initWithScatteringCoefficients:frequencyBands]: scatteringCoeffients is empty";
LABEL_19:
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
    }

LABEL_23:
    selfCopy = 0;
    goto LABEL_24;
  }

  if (![bandsCopy count])
  {
    v23 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "PHASEMaterial.mm";
      v38 = 1024;
      v39 = 438;
      v24 = "%25s:%-5d [PHASEScatteringData:initWithScatteringCoefficients:frequencyBands]: frequencyBands is empty";
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v6 = [coefficientsCopy count];
  v7 = [bandsCopy count];
  if (v6 != v7)
  {
    v25 = **(Phase::Logger::GetInstance(v7) + 448);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v37 = "PHASEMaterial.mm";
      v38 = 1024;
      v39 = 447;
      v40 = 2048;
      v41 = [coefficientsCopy count];
      v42 = 2048;
      v43 = [bandsCopy count];
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEScatteringData:initWithScatteringCoefficients:frequencyBands]: scatteringsCoefficent count %zu must match frequencyBands count %zu", buf, 0x26u);
    }

    goto LABEL_23;
  }

  v34.receiver = self;
  v34.super_class = PHASEScatteringData;
  v8 = [(PHASEScatteringData *)&v34 init];
  if (v8)
  {
    v27 = v8;
    v9 = [coefficientsCopy count];
    if (v9 != [bandsCopy count])
    {
      selfCopy = 0;
      self = v27;
      goto LABEL_24;
    }

    v10 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = coefficientsCopy;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = 0;
      v14 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          [v16 floatValue];
          v17 = [PHASESubband alloc];
          v18 = [bandsCopy objectAtIndexedSubscript:v13];
          [v18 floatValue];
          v19 = [PHASESubband initWithFrequency:v17 value:"initWithFrequency:value:"];

          [v10 addObject:v19];
          ++v13;
        }

        v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
    }

    v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
    scatteringCoefficients = v27->_scatteringCoefficients;
    v27->_scatteringCoefficients = v20;

    v8 = v27;
  }

  self = v8;
  selfCopy = self;
LABEL_24:

  return selfCopy;
}

+ (id)objectForDefault
{
  sGetFrequencies(__p);
  v2 = objc_opt_new();
  for (i = 0; i != 124; i += 4)
  {
    v4 = [PHASESubband alloc];
    LODWORD(v5) = *(__p[0] + i);
    v6 = [(PHASESubband *)v4 initWithFrequency:v5 value:0.0];
    [v2 addObject:v6];
  }

  v7 = [[PHASEScatteringData alloc] initWithScatteringCoefficients:v2];

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

@end