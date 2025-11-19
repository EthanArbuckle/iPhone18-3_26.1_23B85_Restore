@interface PHASEAbsorptionData
+ (id)objectForDefault;
- (PHASEAbsorptionData)init;
- (PHASEAbsorptionData)initWithAbsorptionCoefficients:(id)a3;
- (PHASEAbsorptionData)initWithAbsorptionCoefficients:(id)a3 frequencyBands:(id)a4;
@end

@implementation PHASEAbsorptionData

- (PHASEAbsorptionData)init
{
  [(PHASEAbsorptionData *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEAbsorptionData)initWithAbsorptionCoefficients:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v27 = a3;
  if ([v27 count])
  {
    v32.receiver = self;
    v32.super_class = PHASEAbsorptionData;
    v4 = [(PHASEAbsorptionData *)&v32 init];
    if (v4)
    {
      v26 = v4;
      v5 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = v27;
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v41 count:16];
      if (v7)
      {
        v8 = *v29;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            [v10 value];
            v12 = v11;
            v13 = [v10 value];
            v14 = fminf(fmaxf(v12, 0.0), 1.0);
            v15 = v10;
            if (v16 != v14)
            {
              v17 = **(Phase::Logger::GetInstance(v13) + 448);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                [v10 value];
                *buf = 136315906;
                v34 = "PHASEMaterial.mm";
                v35 = 1024;
                v36 = 304;
                v37 = 2048;
                v38 = v18;
                v39 = 2048;
                v40 = v14;
                _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Clamping input absorption coefficient value from %2.3f to %2.3f.", buf, 0x26u);
              }

              v19 = [PHASESubband alloc];
              [v10 frequency];
              v20 = [PHASESubband initWithFrequency:v19 value:"initWithFrequency:value:"];

              v15 = v20;
            }

            [v5 addObject:{v15, v26}];
          }

          v7 = [v6 countByEnumeratingWithState:&v28 objects:v41 count:16];
        }

        while (v7);
      }

      v21 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
      absorptionCoefficients = v26->_absorptionCoefficients;
      v26->_absorptionCoefficients = v21;

      v4 = v26;
    }

    self = v4;
    v23 = self;
  }

  else
  {
    v24 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "PHASEMaterial.mm";
      v35 = 1024;
      v36 = 288;
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEAbsorptionData:initWithAbsorptionCoefficients]: absorptionCoeffients is empty", buf, 0x12u);
    }

    v23 = 0;
  }

  return v23;
}

- (PHASEAbsorptionData)initWithAbsorptionCoefficients:(id)a3 frequencyBands:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v28 = a4;
  if (![v27 count])
  {
    v22 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "PHASEMaterial.mm";
      v37 = 1024;
      v38 = 320;
      v23 = "%25s:%-5d [PHASEAbsorptionData:initWithAbsorptionCoefficients:frequencyBands]: absorptionCoeffients is empty";
LABEL_18:
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x12u);
    }

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  if (![v28 count])
  {
    v22 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "PHASEMaterial.mm";
      v37 = 1024;
      v38 = 327;
      v23 = "%25s:%-5d [PHASEAbsorptionData:initWithAbsorptionCoefficients:frequencyBands]: frequencyBands is empty";
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v6 = [v27 count];
  v7 = [v28 count];
  if (v6 != v7)
  {
    v24 = **(Phase::Logger::GetInstance(v7) + 448);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v36 = "PHASEMaterial.mm";
      v37 = 1024;
      v38 = 336;
      v39 = 2048;
      v40 = [v27 count];
      v41 = 2048;
      v42 = [v28 count];
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEAbsorptionData:initWithAbsorptionCoefficients:frequencyBands]: aborptionCoefficent count %zu must match frequencyBands count %zu", buf, 0x26u);
    }

    goto LABEL_22;
  }

  v33.receiver = self;
  v33.super_class = PHASEAbsorptionData;
  v8 = [(PHASEAbsorptionData *)&v33 init];
  if (v8)
  {
    v26 = v8;
    v9 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v27;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = 0;
      v13 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          [v15 floatValue];
          v16 = [PHASESubband alloc];
          v17 = [v28 objectAtIndexedSubscript:v12];
          [v17 floatValue];
          v18 = [PHASESubband initWithFrequency:v16 value:"initWithFrequency:value:"];

          [v9 addObject:v18];
          ++v12;
        }

        v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    v19 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
    absorptionCoefficients = v26->_absorptionCoefficients;
    v26->_absorptionCoefficients = v19;

    v8 = v26;
  }

  self = v8;
  v21 = self;
LABEL_23:

  return v21;
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

  v7 = [[PHASEAbsorptionData alloc] initWithAbsorptionCoefficients:v2];

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

@end