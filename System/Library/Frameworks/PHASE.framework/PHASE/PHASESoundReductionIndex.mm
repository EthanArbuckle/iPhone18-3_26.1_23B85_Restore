@interface PHASESoundReductionIndex
+ (id)objectForDefault;
- (PHASESoundReductionIndex)init;
- (PHASESoundReductionIndex)initWithAttenuationCoefficients:(id)a3 measuredDepth:(float)a4;
- (PHASESoundReductionIndex)initWithSoundReductionIndices:(id)a3 frequencyBands:(id)a4 measuredDepth:(float)a5;
@end

@implementation PHASESoundReductionIndex

- (PHASESoundReductionIndex)init
{
  [(PHASESoundReductionIndex *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESoundReductionIndex)initWithAttenuationCoefficients:(id)a3 measuredDepth:(float)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v6 = [v38 count];
  if (!v6)
  {
    v31 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "PHASEMaterial.mm";
      v47 = 1024;
      v48 = 144;
      v32 = "%25s:%-5d [PHASESoundReductionIndex:initWithScatteringCoefficients]: scatteringCoeffients is empty";
      v33 = v31;
      v34 = 18;
LABEL_25:
      _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    }

LABEL_26:
    v30 = 0;
    goto LABEL_27;
  }

  if (a4 <= 0.0)
  {
    v35 = **(Phase::Logger::GetInstance(v6) + 448);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v46 = "PHASEMaterial.mm";
      v47 = 1024;
      v48 = 153;
      v49 = 2048;
      v50 = a4;
      v32 = "%25s:%-5d [PHASESoundReductionIndex:initWithScatteringCoefficients]: Invalid material depth: %2.2f. Values must be greater than zero.";
      v33 = v35;
      v34 = 28;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v43.receiver = self;
  v43.super_class = PHASESoundReductionIndex;
  v7 = [(PHASESoundReductionIndex *)&v43 init];
  if (v7)
  {
    v37 = v7;
    v8 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v38;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [v13 value];
          if (v15 > 1.0)
          {
            v16 = **(Phase::Logger::GetInstance(v14) + 448);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [v13 value];
              *buf = 136315650;
              v46 = "PHASEMaterial.mm";
              v47 = 1024;
              v48 = 168;
              v49 = 2048;
              v50 = v17;
              _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Input SRI attenuation coefficient value %2.2f. Values greater than 1 are atypical; not clamping.", buf, 0x1Cu);
            }
          }

          v18 = v13;
          [v18 value];
          v20 = v19;
          v21 = [v18 value];
          v22 = v18;
          if (v23 != fmaxf(v20, 0.0))
          {
            v24 = **(Phase::Logger::GetInstance(v21) + 448);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [v18 value];
              *buf = 136315650;
              v46 = "PHASEMaterial.mm";
              v47 = 1024;
              v48 = 176;
              v49 = 2048;
              v50 = v25;
              _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Clamping input SRI attenuation coefficient value from %2.3f to zero.", buf, 0x1Cu);
            }

            v26 = [PHASESubband alloc];
            [v18 frequency];
            v27 = [PHASESubband initWithFrequency:v26 value:"initWithFrequency:value:"];

            v22 = v27;
          }

          [v8 addObject:{v22, v37}];
        }

        v10 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v10);
    }

    v28 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
    attenuationCoefficients = v37->_attenuationCoefficients;
    v37->_attenuationCoefficients = v28;

    v37->_measuredDepth = a4;
    v7 = v37;
  }

  self = v7;
  v30 = self;
LABEL_27:

  return v30;
}

- (PHASESoundReductionIndex)initWithSoundReductionIndices:(id)a3 frequencyBands:(id)a4 measuredDepth:(float)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v34 = a4;
  if (![v33 count])
  {
    v25 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "PHASEMaterial.mm";
      v43 = 1024;
      v44 = 196;
      v26 = "%25s:%-5d [PHASESoundReductionIndex:initWithSoundReductionIndices:frequencyBands:measuredDepth]: soundReductionIndices is empty";
LABEL_19:
      v27 = v25;
      v28 = 18;
LABEL_20:
      _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }

LABEL_26:
    v24 = 0;
    goto LABEL_27;
  }

  if (![v34 count])
  {
    v25 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "PHASEMaterial.mm";
      v43 = 1024;
      v44 = 203;
      v26 = "%25s:%-5d [PHASESoundReductionIndex:initWithSoundReductionIndices:frequencyBands:measuredDepth]: frequencyBands is empty";
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v8 = [v33 count];
  v9 = [v34 count];
  if (v8 != v9)
  {
    v29 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v42 = "PHASEMaterial.mm";
      v43 = 1024;
      v44 = 212;
      v45 = 2048;
      v46 = COERCE_DOUBLE([v33 count]);
      v47 = 2048;
      v48 = [v34 count];
      _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASESoundReductionIndex:initWithSoundReductionIndices:frequencyBands:measuredDepth]: soundReductionIndices count %zu must match frequencyBands count %zu", buf, 0x26u);
    }

    goto LABEL_26;
  }

  if (a5 <= 0.0)
  {
    v30 = **(Phase::Logger::GetInstance(v9) + 448);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136315650;
    v42 = "PHASEMaterial.mm";
    v43 = 1024;
    v44 = 221;
    v45 = 2048;
    v46 = a5;
    v26 = "%25s:%-5d [PHASESoundReductionIndex:initWithSoundReductionIndices:frequencyBands:measuredDepth]: Invalid material depth: %2.2f. Values must be greater than zero.";
    v27 = v30;
    v28 = 28;
    goto LABEL_20;
  }

  v39.receiver = self;
  v39.super_class = PHASESoundReductionIndex;
  v10 = [(PHASESoundReductionIndex *)&v39 init];
  if (v10)
  {
    v32 = v10;
    v11 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v33;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          [v17 floatValue];
          expf(((fmaxf(v18, 0.0) * -10.0) / 10.0) * 0.11513);
          v19 = [PHASESubband alloc];
          v20 = [v34 objectAtIndexedSubscript:v14];
          [v20 floatValue];
          v21 = [PHASESubband initWithFrequency:v19 value:"initWithFrequency:value:"];

          [v11 addObject:v21];
          ++v14;
        }

        v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }

    v22 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
    attenuationCoefficients = v32->_attenuationCoefficients;
    v32->_attenuationCoefficients = v22;

    v32->_measuredDepth = a5;
    v10 = v32;
  }

  self = v10;
  v24 = self;
LABEL_27:

  return v24;
}

+ (id)objectForDefault
{
  sGetFrequencies(__p);
  v2 = objc_opt_new();
  for (i = 0; i != 124; i += 4)
  {
    v4 = [PHASESubband alloc];
    LODWORD(v5) = *(__p[0] + i);
    LODWORD(v6) = 1.0;
    v7 = [(PHASESubband *)v4 initWithFrequency:v5 value:v6];
    [v2 addObject:v7];
  }

  v8 = [PHASESoundReductionIndex alloc];
  LODWORD(v9) = 1041865114;
  v10 = [(PHASESoundReductionIndex *)v8 initWithAttenuationCoefficients:v2 measuredDepth:v9];

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v10;
}

@end