@interface PHASEMaterial
- (PHASEMaterial)init;
- (PHASEMaterial)initWithEngine:(PHASEEngine *)engine preset:(PHASEMaterialPreset)preset;
- (PHASEMaterial)initWithEngine:(id)a3 preset:(int64_t)a4 soundReductionIndex:(id)a5 absorptionData:(id)a6 scatteringData:(id)a7;
- (PHASEMaterial)initWithEngine:(id)a3 semantics:(id)a4;
- (PHASEMaterial)initWithEngine:(id)a3 soundReductionIndex:(id)a4 absorptionData:(id)a5 scatteringData:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setAttenuationScale:(float)a3;
- (void)setAttenuationShift:(float)a3;
- (void)setAttenuationTilt:(float)a3;
- (void)writeMaterialCoefs:(BOOL)a3;
@end

@implementation PHASEMaterial

- (PHASEMaterial)init
{
  [(PHASEMaterial *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEMaterial)initWithEngine:(PHASEEngine *)engine preset:(PHASEMaterialPreset)preset
{
  v123 = *MEMORY[0x277D85DE8];
  v98 = engine;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = objc_opt_class();
  if (!v7)
  {
    v17 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 697;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [Database not found] - Returning default material.", buf, 0x12u);
    }

    v18 = +[PHASESoundReductionIndex objectForDefault];
    v19 = +[PHASEAbsorptionData objectForDefault];
    v20 = +[PHASEScatteringData objectForDefault];
    self = [(PHASEMaterial *)self initWithEngine:v98 preset:preset soundReductionIndex:v18 absorptionData:v19 scatteringData:v20];

    goto LABEL_24;
  }

  if (preset > 1833202294)
  {
    switch(preset)
    {
      case PHASEMaterialPresetDrywall:
        v33 = *MEMORY[0x277CE8780];
        v104 = 0;
        v97 = v33;
        v34 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v35 = v104;
        [v6 addEntriesFromDictionary:v34];

        v36 = *MEMORY[0x277CE8788];
        v103 = 0;
        v96 = v36;
        v37 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v38 = v103;

        [v6 addEntriesFromDictionary:v37];
        v14 = *MEMORY[0x277CE8790];
        v102 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Drywall_DoubleSheet" error:&v102];
        v16 = v102;

        [v6 addEntriesFromDictionary:v15];
        break;
      case PHASEMaterialPresetGlass:
        v46 = *MEMORY[0x277CE8780];
        v113 = 0;
        v97 = v46;
        v47 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v48 = v113;
        [v6 addEntriesFromDictionary:v47];

        v49 = *MEMORY[0x277CE8788];
        v112 = 0;
        v96 = v49;
        v50 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v51 = v112;

        [v6 addEntriesFromDictionary:v50];
        v14 = *MEMORY[0x277CE8790];
        v111 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Window_SinglePane" error:&v111];
        v16 = v111;

        [v6 addEntriesFromDictionary:v15];
        break;
      case PHASEMaterialPresetWood:
        v21 = *MEMORY[0x277CE8780];
        v101 = 0;
        v97 = v21;
        v22 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v23 = v101;
        [v6 addEntriesFromDictionary:v22];

        v24 = *MEMORY[0x277CE8788];
        v100 = 0;
        v96 = v24;
        v25 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v26 = v100;

        [v6 addEntriesFromDictionary:v25];
        v14 = *MEMORY[0x277CE8790];
        v99 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Wall_Wood_Medium_BT15 mm_150mm" error:&v99];
        v16 = v99;

        [v6 addEntriesFromDictionary:v15];
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(preset)
    {
      case PHASEMaterialPresetBrick:
        v27 = *MEMORY[0x277CE8780];
        v110 = 0;
        v97 = v27;
        v28 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v29 = v110;
        [v6 addEntriesFromDictionary:v28];

        v30 = *MEMORY[0x277CE8788];
        v109 = 0;
        v96 = v30;
        v31 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v32 = v109;

        [v6 addEntriesFromDictionary:v31];
        v14 = *MEMORY[0x277CE8790];
        v108 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Brickwork_General" error:&v108];
        v16 = v108;

        [v6 addEntriesFromDictionary:v15];
        break;
      case PHASEMaterialPresetConcrete:
        v40 = *MEMORY[0x277CE8780];
        v107 = 0;
        v97 = v40;
        v41 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v42 = v107;
        [v6 addEntriesFromDictionary:v41];

        v43 = *MEMORY[0x277CE8788];
        v106 = 0;
        v96 = v43;
        v44 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v45 = v106;

        [v6 addEntriesFromDictionary:v44];
        v14 = *MEMORY[0x277CE8790];
        v105 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Wall_Concrete_Thickness_GT200mm" error:&v105];
        v16 = v105;

        [v6 addEntriesFromDictionary:v15];
        break;
      case PHASEMaterialPresetCardboard:
        v8 = *MEMORY[0x277CE8780];
        v116 = 0;
        v97 = v8;
        v9 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v10 = v116;
        [v6 addEntriesFromDictionary:v9];

        v11 = *MEMORY[0x277CE8788];
        v115 = 0;
        v96 = v11;
        v12 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v13 = v115;

        [v6 addEntriesFromDictionary:v12];
        v14 = *MEMORY[0x277CE8790];
        v114 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Cardboard_3mm" error:&v114];
        v16 = v114;

        [v6 addEntriesFromDictionary:v15];
        break;
      default:
LABEL_16:
        v39 = **(Phase::Logger::GetInstance(v7) + 448);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v118 = "PHASEMaterial.mm";
          v119 = 1024;
          v120 = 610;
          _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d Preset enumeration not found. Would only be caused by invalid use of API.", buf, 0x12u);
        }

        goto LABEL_54;
    }
  }

  if (v16)
  {
    v53 = **(Phase::Logger::GetInstance(v52) + 448);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [v16 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 687;
      v121 = 2112;
      v122 = v54;
      _os_log_impl(&dword_23A302000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@] - Returning default material.", buf, 0x1Cu);
    }

    v55 = +[PHASESoundReductionIndex objectForDefault];
    v56 = +[PHASEAbsorptionData objectForDefault];
    v57 = +[PHASEScatteringData objectForDefault];
    self = [(PHASEMaterial *)self initWithEngine:v98 preset:preset soundReductionIndex:v55 absorptionData:v56 scatteringData:v57];

    goto LABEL_24;
  }

  if (!v6)
  {
    v59 = **(Phase::Logger::GetInstance(v52) + 448);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v82 = [0 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 629;
      v121 = 2112;
      v122 = v82;
      _os_log_impl(&dword_23A302000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

    goto LABEL_53;
  }

  v59 = [v6 objectForKey:v97];
  v60 = [v6 objectForKey:v96];
  v61 = [v6 objectForKey:v14];
  v95 = v61;
  v94 = v60;
  if (!v59)
  {
    v59 = v60;
    v83 = **(Phase::Logger::GetInstance(v61) + 448);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      v84 = [0 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 646;
      v121 = 2112;
      v122 = v84;
      _os_log_impl(&dword_23A302000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

    goto LABEL_37;
  }

  v62 = [PHASEAbsorptionData alloc];
  v63 = [v59 absorptionReferenceData];
  v64 = [v59 frequencyBands];
  v65 = [(PHASEAbsorptionData *)v62 initWithAbsorptionCoefficients:v63 frequencyBands:v64];
  [v6 setObject:v65 forKeyedSubscript:v97];

  v66 = [v6 objectForKeyedSubscript:v97];
  LODWORD(v64) = v66 == 0;

  if (v64)
  {
    v85 = **(Phase::Logger::GetInstance(v67) + 448);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 640;
      _os_log_impl(&dword_23A302000, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Could not create PHASEAbsorptionData.", buf, 0x12u);
    }

    goto LABEL_52;
  }

  if (!v94)
  {
    v83 = **(Phase::Logger::GetInstance(v67) + 448);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      v86 = [0 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 663;
      v121 = 2112;
      v122 = v86;
      _os_log_impl(&dword_23A302000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

LABEL_37:

LABEL_53:
LABEL_54:
    v58 = 0;
    goto LABEL_55;
  }

  v68 = [PHASEScatteringData alloc];
  v92 = [v94 scatteringReferenceData];
  v69 = [v94 frequencyBands];
  v70 = [(PHASEScatteringData *)v68 initWithScatteringCoefficients:v92 frequencyBands:v69];
  [v6 setObject:v70 forKeyedSubscript:v96];

  v71 = [v6 objectForKeyedSubscript:v96];
  LODWORD(v69) = v71 == 0;

  if (v69)
  {
    v87 = **(Phase::Logger::GetInstance(v72) + 448);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 657;
      _os_log_impl(&dword_23A302000, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Could not create PHASEScatteringData.", buf, 0x12u);
    }

    goto LABEL_52;
  }

  if (!v95)
  {
    v88 = **(Phase::Logger::GetInstance(v72) + 448);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      v89 = [0 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 681;
      v121 = 2112;
      v122 = v89;
      _os_log_impl(&dword_23A302000, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

    goto LABEL_53;
  }

  v73 = [PHASESoundReductionIndex alloc];
  v93 = [(Phase::Logger *)v95 soundReductionIndexReferenceData];
  v74 = [(Phase::Logger *)v95 frequencyBands];
  v75 = [(Phase::Logger *)v95 materialDepth];
  [v75 floatValue];
  v76 = [(PHASESoundReductionIndex *)v73 initWithSoundReductionIndices:v93 frequencyBands:v74 measuredDepth:?];
  [v6 setObject:v76 forKeyedSubscript:v14];

  v77 = [v6 objectForKeyedSubscript:v14];
  LODWORD(v76) = v77 == 0;

  if (v76)
  {
    v90 = **(Phase::Logger::GetInstance(v78) + 448);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 675;
      _os_log_impl(&dword_23A302000, v90, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Could not create PHASESoundReductionIndex.", buf, 0x12u);
    }

LABEL_52:

    goto LABEL_53;
  }

  v79 = [v6 objectForKey:v14];
  v80 = [v6 objectForKey:v97];
  v81 = [v6 objectForKey:v96];
  self = [(PHASEMaterial *)self initWithEngine:v98 preset:preset soundReductionIndex:v79 absorptionData:v80 scatteringData:v81];

LABEL_24:
  v58 = self;
LABEL_55:

  return v58;
}

- (PHASEMaterial)initWithEngine:(id)a3 preset:(int64_t)a4 soundReductionIndex:(id)a5 absorptionData:(id)a6 scatteringData:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (v13 && v14 && v15)
  {
    v21.receiver = self;
    v21.super_class = PHASEMaterial;
    v17 = [(PHASEMaterial *)&v21 init];
    v18 = v17;
    if (v17)
    {
      objc_storeWeak(&v17->_engine, v12);
      v18->_preset = a4;
      objc_storeStrong(&v18->_soundReductionIndex, a5);
      objc_storeStrong(&v18->_absorptionData, a6);
      objc_storeStrong(&v18->_scatteringData, a7);
      *&v18->_attenuationScale = 1065353216;
      v18->_attenuationTilt = 0.0;
      [(PHASEMaterial *)v18 writeMaterialCoefs:1];
    }
  }

  else
  {
    v19 = **(Phase::Logger::GetInstance(v15) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "PHASEMaterial.mm";
      v24 = 1024;
      v25 = 721;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Cannot initialize a PHASEMaterial without valid SRI, absorption and scattering data!", buf, 0x12u);
    }

    v18 = 0;
  }

  return v18;
}

- (PHASEMaterial)initWithEngine:(id)a3 soundReductionIndex:(id)a4 absorptionData:(id)a5 scatteringData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11 && v12 && v13)
  {
    goto LABEL_22;
  }

  sGetFrequencies(__p);
  if (v11)
  {
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_11:
    v23 = objc_opt_new();
    for (i = 0; i != 124; i += 4)
    {
      v25 = [PHASESubband alloc];
      LODWORD(v26) = *(__p[0] + i);
      v27 = [(PHASESubband *)v25 initWithFrequency:v26 value:0.0];
      [v23 addObject:v27];
    }

    v12 = [[PHASEAbsorptionData alloc] initWithAbsorptionCoefficients:v23];

    if (v14)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v15 = objc_opt_new();
  for (j = 0; j != 124; j += 4)
  {
    v17 = [PHASESubband alloc];
    LODWORD(v18) = *(__p[0] + j);
    LODWORD(v19) = 1.0;
    v20 = [(PHASESubband *)v17 initWithFrequency:v18 value:v19];
    [v15 addObject:v20];
  }

  v21 = [PHASESoundReductionIndex alloc];
  LODWORD(v22) = 1041865114;
  v11 = [(PHASESoundReductionIndex *)v21 initWithAttenuationCoefficients:v15 measuredDepth:v22];

  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!v14)
  {
LABEL_14:
    v28 = objc_opt_new();
    for (k = 0; k != 124; k += 4)
    {
      v30 = [PHASESubband alloc];
      LODWORD(v31) = *(__p[0] + k);
      v32 = [(PHASESubband *)v30 initWithFrequency:v31 value:0.0];
      [v28 addObject:v32];
    }

    v33 = [[PHASEScatteringData alloc] initWithScatteringCoefficients:v28];

    v14 = v33;
  }

LABEL_17:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!v11 || !v12 || !v14)
  {
    std::terminate();
  }

LABEL_22:
  v34 = [(PHASEMaterial *)self initWithEngine:v10 preset:1833136740 soundReductionIndex:v11 absorptionData:v12 scatteringData:v14];

  return v34;
}

- (PHASEMaterial)initWithEngine:(id)a3 semantics:(id)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v74 = a3;
  v86 = a4;
  if (!objc_opt_class())
  {
    v19 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v99 = "PHASEMaterial.mm";
      v100 = 1024;
      v101 = 957;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [Database not found] - Falling back to default material.", buf, 0x12u);
    }

    v76 = +[PHASESoundReductionIndex objectForDefault];
    v87 = +[PHASEAbsorptionData objectForDefault];
    obj = +[PHASEScatteringData objectForDefault];
    v18 = [(PHASEMaterial *)self initWithEngine:v74 soundReductionIndex:v76 absorptionData:v87 scatteringData:?];
    self = v18;
    goto LABEL_67;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v82 = *MEMORY[0x277CE8780];
  v76 = v5;
  [v5 addObject:?];
  v78 = *MEMORY[0x277CE8788];
  [v5 addObject:?];
  v75 = *MEMORY[0x277CE8790];
  [v5 addObject:?];
  v87 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [v86 allKeys];
  v6 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
  if (v6)
  {
    v7 = *v94;
    v83 = *MEMORY[0x277CE87A0];
    v8 = *MEMORY[0x277CE8798];
    v9 = *MEMORY[0x277CE87B0];
    v10 = *MEMORY[0x277CE87A8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v94 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v93 + 1) + 8 * i);
        if ([v12 isEqualToString:@"SurfaceMaterial"])
        {
          v13 = [v86 objectForKeyedSubscript:v12];
          [v87 setObject:v13 forKey:v10];
        }

        else if ([v12 isEqualToString:@"ARMeshMaterialID"])
        {
          v13 = [v86 objectForKeyedSubscript:v12];
          [v87 setObject:v13 forKey:v9];
        }

        else if ([v12 isEqualToString:@"Object"])
        {
          v13 = [v86 objectForKeyedSubscript:v12];
          [v87 setObject:v13 forKey:v8];
        }

        else
        {
          v14 = [v12 isEqualToString:@"ARMeshClassificationID"];
          if (!v14)
          {
            v20 = **(Phase::Logger::GetInstance(v14) + 448);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v99 = "PHASEMaterial.mm";
              v100 = 1024;
              v101 = 833;
              v102 = 2112;
              v103 = v12;
              _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Query contains unrecognized key [%@].", buf, 0x1Cu);
            }

            v18 = 0;
            goto LABEL_67;
          }

          v13 = [v86 objectForKeyedSubscript:v12];
          [v87 setObject:v13 forKey:v83];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
    }

    while (v6);
  }

  v15 = [MEMORY[0x277CBEAC0] dictionary];
  v92 = 0;
  v84 = [MEMORY[0x277CE87B8] acousticParameters:v5 forSemanticLabels:v87 error:&v92];
  obj = v92;

  if (obj)
  {
    log = **(Phase::Logger::GetInstance(v16) + 448);
    if (os_log_type_enabled(&log->super, OS_LOG_TYPE_ERROR))
    {
      v17 = [obj localizedDescription];
      *buf = 136315650;
      v99 = "PHASEMaterial.mm";
      v100 = 1024;
      v101 = 951;
      v102 = 2112;
      v103 = v17;
      _os_log_impl(&dword_23A302000, &log->super, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

    v18 = 0;
    goto LABEL_66;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v73 = [v84 allKeys];
  v21 = [v73 countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (!v21)
  {

    goto LABEL_69;
  }

  v71 = 0;
  v72 = 0;
  v80 = *v89;
  log = 0;
LABEL_29:
  v79 = v21;
  v22 = 0;
  while (1)
  {
    if (*v89 != v80)
    {
      objc_enumerationMutation(v73);
    }

    v23 = *(*(&v88 + 1) + 8 * v22);
    if ([v23 isEqualToString:{v82, v71}])
    {
      v24 = [v84 objectForKey:v82];
      if (!v24)
      {
        v68 = **(Phase::Logger::GetInstance(0) + 448);
        if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136315394;
        v99 = "PHASEMaterial.mm";
        v100 = 1024;
        v101 = 874;
        v69 = "%25s:%-5d Error: Empty result for AMAcousticParameterTypeAbsorption.";
        goto LABEL_63;
      }

      v25 = objc_opt_new();
      for (j = 0; ; ++j)
      {
        v27 = [v24 frequencyBands];
        v28 = [v27 count] > j;

        if (!v28)
        {
          break;
        }

        v29 = [PHASESubband alloc];
        v30 = [v24 frequencyBands];
        v31 = [v30 objectAtIndexedSubscript:j];
        [v31 floatValue];
        v33 = v32;
        v34 = [v24 absorptionUserData];
        v35 = [v34 objectAtIndexedSubscript:j];
        [v35 floatValue];
        LODWORD(v37) = v36;
        LODWORD(v38) = v33;
        v39 = [(PHASESubband *)v29 initWithFrequency:v38 value:v37];
        [v25 addObject:v39];
      }

      v54 = log;
      log = [[PHASEAbsorptionData alloc] initWithAbsorptionCoefficients:v25];
      goto LABEL_50;
    }

    if ([v23 isEqualToString:v78])
    {
      v24 = [v84 objectForKey:v78];
      if (!v24)
      {
        v68 = **(Phase::Logger::GetInstance(0) + 448);
        if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136315394;
        v99 = "PHASEMaterial.mm";
        v100 = 1024;
        v101 = 901;
        v69 = "%25s:%-5d Error: Empty result for AMAcousticParameterTypeScattering.";
        goto LABEL_63;
      }

      v25 = objc_opt_new();
      for (k = 0; ; ++k)
      {
        v41 = [v24 frequencyBands];
        v42 = [v41 count] > k;

        if (!v42)
        {
          break;
        }

        v43 = [PHASESubband alloc];
        v44 = [v24 frequencyBands];
        v45 = [v44 objectAtIndexedSubscript:k];
        [v45 floatValue];
        v47 = v46;
        v48 = [v24 scatteringUserData];
        v49 = [v48 objectAtIndexedSubscript:k];
        [v49 floatValue];
        LODWORD(v51) = v50;
        LODWORD(v52) = v47;
        v53 = [(PHASESubband *)v43 initWithFrequency:v52 value:v51];
        [v25 addObject:v53];
      }

      v54 = v72;
      v72 = [[PHASEScatteringData alloc] initWithScatteringCoefficients:v25];
      goto LABEL_50;
    }

    v55 = [v23 isEqualToString:v75];
    if (!v55)
    {
      break;
    }

    v24 = [v84 objectForKey:v75];
    if (v24)
    {
      v25 = objc_opt_new();
      for (m = 0; ; ++m)
      {
        v57 = [v24 frequencyBands];
        v58 = [v57 count] > m;

        if (!v58)
        {
          break;
        }

        v59 = [v24 soundReductionIndexUserData];
        v60 = [v59 objectAtIndexedSubscript:m];
        [v60 floatValue];
        expf(((fmaxf(v61, 0.0) * -10.0) / 10.0) * 0.11513);

        v62 = [PHASESubband alloc];
        v63 = [v24 frequencyBands];
        v64 = [v63 objectAtIndexedSubscript:m];
        [v64 floatValue];
        v65 = [PHASESubband initWithFrequency:v62 value:"initWithFrequency:value:"];
        [v25 addObject:v65];
      }

      v66 = [PHASESoundReductionIndex alloc];
      v54 = [v24 materialDepth];
      [v54 floatValue];
      v67 = [(PHASESoundReductionIndex *)v66 initWithAttenuationCoefficients:v25 measuredDepth:?];

      v71 = v67;
LABEL_50:
    }

    if (++v22 == v79)
    {
      v21 = [v73 countByEnumeratingWithState:&v88 objects:v97 count:16];
      if (!v21)
      {

        if (log && v72 && v71)
        {
          v18 = [(PHASEMaterial *)self initWithEngine:v74 soundReductionIndex:v71 absorptionData:log scatteringData:v72];
          self = v18;
          goto LABEL_65;
        }

LABEL_69:
        std::terminate();
      }

      goto LABEL_29;
    }
  }

  v68 = **(Phase::Logger::GetInstance(v55) + 448);
  if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_64;
  }

  *buf = 136315394;
  v99 = "PHASEMaterial.mm";
  v100 = 1024;
  v101 = 935;
  v69 = "%25s:%-5d Error: Empty result for AMAcousticParameterTypeSoundReductionIndex.";
LABEL_63:
  _os_log_impl(&dword_23A302000, v68, OS_LOG_TYPE_ERROR, v69, buf, 0x12u);
LABEL_64:

  v18 = 0;
LABEL_65:

LABEL_66:
LABEL_67:

  return v18;
}

- (void)writeMaterialCoefs:(BOOL)a3
{
  v3 = a3;
  v32[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    soundReductionIndex = self->_soundReductionIndex;
    if (soundReductionIndex)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v7 = [(PHASESoundReductionIndex *)soundReductionIndex attenuationCoefficients];
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v8)
      {
        v9 = *v26;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v26 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v25 + 1) + 8 * i);
            [v11 value];
            [v11 frequency];
            log2f(v12 / 632.46);
            v13 = [PHASESubband alloc];
            [v11 frequency];
            v14 = [PHASESubband initWithFrequency:v13 value:"initWithFrequency:value:"];
            [v5 addObject:v14];
          }

          v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v8);
      }
    }

    v15 = v5;
    *buf = v15;
    *&buf[8] = self->_soundReductionIndex;
    *&buf[16] = self->_absorptionData;
    *&buf[24] = self->_scatteringData;
    if (v3)
    {
      v16 = [WeakRetained implementation];
      [(PHASEMaterial *)self setGeoMaterialHandle:(*(**(v16 + 368) + 32))(*(v16 + 368), buf)];
    }

    else
    {
      v23 = *([WeakRetained implementation] + 368);
      (*(*v23 + 128))(v23, [(PHASEMaterial *)self geoMaterialHandle], buf);
    }
  }

  else
  {
    v17 = *MEMORY[0x277CCA450];
    v31 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid PHASEEngine"];
    v32[0] = v18;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];

    v20 = **(Phase::Logger::GetInstance(v19) + 448);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v15 objectForKeyedSubscript:v17];
      v22 = v21;
      *buf = 136315650;
      *&buf[4] = "PHASEMaterial.mm";
      *&buf[12] = 1024;
      *&buf[14] = 973;
      *&buf[18] = 2080;
      *&buf[20] = [v21 UTF8String];
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

- (void)setAttenuationScale:(float)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  if (a3 < 0.0)
  {
    v5 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "PHASEMaterial.mm";
      v8 = 1024;
      v9 = 1010;
      v10 = 2048;
      v11 = v3;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Input multipler %2.2f for setattenuationScale must be non-negative. Clamping.", &v6, 0x1Cu);
    }

    v3 = fmaxf(v3, 0.0);
  }

  if (self->_attenuationScale != v3)
  {
    self->_attenuationScale = v3;
    [(PHASEMaterial *)self writeMaterialCoefs:0];
  }
}

- (void)setAttenuationShift:(float)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  if (fabsf(a3) > 1.0)
  {
    v5 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "PHASEMaterial.mm";
      v8 = 1024;
      v9 = 1026;
      v10 = 2048;
      v11 = v3;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Input offset %2.2f for setattenuationShift is out-of-range. Clamping to [-1, 1].", &v6, 0x1Cu);
    }

    v3 = fminf(fmaxf(v3, -1.0), 1.0);
  }

  if (self->_attenuationShift != v3)
  {
    self->_attenuationShift = v3;
    [(PHASEMaterial *)self writeMaterialCoefs:0];
  }
}

- (void)setAttenuationTilt:(float)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  if (fabsf(a3) > 1.0)
  {
    v5 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "PHASEMaterial.mm";
      v8 = 1024;
      v9 = 1041;
      v10 = 2048;
      v11 = v3;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Input slope %2.2f for setattenuationTilt is out-of-range. Clamping to [-1, 1].", &v6, 0x1Cu);
    }

    v3 = fminf(fmaxf(v3, -1.0), 1.0);
  }

  if (self->_attenuationTilt != v3)
  {
    self->_attenuationTilt = v3;
    [(PHASEMaterial *)self writeMaterialCoefs:0];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v6 = [(PHASEMaterial *)self preset];
  v7 = [(PHASEMaterial *)self soundReductionIndex];
  v8 = [(PHASEMaterial *)self absorptionData];
  v9 = [(PHASEMaterial *)self scatteringData];
  v10 = [v4 initWithEngine:WeakRetained preset:v6 soundReductionIndex:v7 absorptionData:v8 scatteringData:v9];

  [(PHASEMaterial *)self attenuationScale];
  [v10 setAttenuationScale:?];
  [(PHASEMaterial *)self attenuationShift];
  [v10 setAttenuationShift:?];
  [(PHASEMaterial *)self attenuationTilt];
  [v10 setAttenuationTilt:?];
  return v10;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_engine);
    v5 = *([v4 implementation] + 368);
    (*(*v5 + 336))(v5, [(PHASEMaterial *)self geoMaterialHandle]);
  }

  v6.receiver = self;
  v6.super_class = PHASEMaterial;
  [(PHASEMaterial *)&v6 dealloc];
}

@end