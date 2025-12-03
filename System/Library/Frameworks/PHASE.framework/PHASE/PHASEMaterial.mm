@interface PHASEMaterial
- (PHASEMaterial)init;
- (PHASEMaterial)initWithEngine:(PHASEEngine *)engine preset:(PHASEMaterialPreset)preset;
- (PHASEMaterial)initWithEngine:(id)engine preset:(int64_t)preset soundReductionIndex:(id)index absorptionData:(id)data scatteringData:(id)scatteringData;
- (PHASEMaterial)initWithEngine:(id)engine semantics:(id)semantics;
- (PHASEMaterial)initWithEngine:(id)engine soundReductionIndex:(id)index absorptionData:(id)data scatteringData:(id)scatteringData;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setAttenuationScale:(float)scale;
- (void)setAttenuationShift:(float)shift;
- (void)setAttenuationTilt:(float)tilt;
- (void)writeMaterialCoefs:(BOOL)coefs;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        [dictionary addEntriesFromDictionary:v34];

        v36 = *MEMORY[0x277CE8788];
        v103 = 0;
        v96 = v36;
        v37 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v38 = v103;

        [dictionary addEntriesFromDictionary:v37];
        v14 = *MEMORY[0x277CE8790];
        v102 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Drywall_DoubleSheet" error:&v102];
        v16 = v102;

        [dictionary addEntriesFromDictionary:v15];
        break;
      case PHASEMaterialPresetGlass:
        v46 = *MEMORY[0x277CE8780];
        v113 = 0;
        v97 = v46;
        v47 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v48 = v113;
        [dictionary addEntriesFromDictionary:v47];

        v49 = *MEMORY[0x277CE8788];
        v112 = 0;
        v96 = v49;
        v50 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v51 = v112;

        [dictionary addEntriesFromDictionary:v50];
        v14 = *MEMORY[0x277CE8790];
        v111 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Window_SinglePane" error:&v111];
        v16 = v111;

        [dictionary addEntriesFromDictionary:v15];
        break;
      case PHASEMaterialPresetWood:
        v21 = *MEMORY[0x277CE8780];
        v101 = 0;
        v97 = v21;
        v22 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v23 = v101;
        [dictionary addEntriesFromDictionary:v22];

        v24 = *MEMORY[0x277CE8788];
        v100 = 0;
        v96 = v24;
        v25 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v26 = v100;

        [dictionary addEntriesFromDictionary:v25];
        v14 = *MEMORY[0x277CE8790];
        v99 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Wall_Wood_Medium_BT15 mm_150mm" error:&v99];
        v16 = v99;

        [dictionary addEntriesFromDictionary:v15];
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
        [dictionary addEntriesFromDictionary:v28];

        v30 = *MEMORY[0x277CE8788];
        v109 = 0;
        v96 = v30;
        v31 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v32 = v109;

        [dictionary addEntriesFromDictionary:v31];
        v14 = *MEMORY[0x277CE8790];
        v108 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Brickwork_General" error:&v108];
        v16 = v108;

        [dictionary addEntriesFromDictionary:v15];
        break;
      case PHASEMaterialPresetConcrete:
        v40 = *MEMORY[0x277CE8780];
        v107 = 0;
        v97 = v40;
        v41 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v42 = v107;
        [dictionary addEntriesFromDictionary:v41];

        v43 = *MEMORY[0x277CE8788];
        v106 = 0;
        v96 = v43;
        v44 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v45 = v106;

        [dictionary addEntriesFromDictionary:v44];
        v14 = *MEMORY[0x277CE8790];
        v105 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Wall_Concrete_Thickness_GT200mm" error:&v105];
        v16 = v105;

        [dictionary addEntriesFromDictionary:v15];
        break;
      case PHASEMaterialPresetCardboard:
        v8 = *MEMORY[0x277CE8780];
        v116 = 0;
        v97 = v8;
        v9 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v10 = v116;
        [dictionary addEntriesFromDictionary:v9];

        v11 = *MEMORY[0x277CE8788];
        v115 = 0;
        v96 = v11;
        v12 = [MEMORY[0x277CE87B8] acousticParameters:? forMaterialName:? error:?];
        v13 = v115;

        [dictionary addEntriesFromDictionary:v12];
        v14 = *MEMORY[0x277CE8790];
        v114 = 0;
        v15 = [MEMORY[0x277CE87B8] acousticParameters:v14 forMaterialName:@"Cardboard_3mm" error:&v114];
        v16 = v114;

        [dictionary addEntriesFromDictionary:v15];
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
      localizedDescription = [v16 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 687;
      v121 = 2112;
      v122 = localizedDescription;
      _os_log_impl(&dword_23A302000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@] - Returning default material.", buf, 0x1Cu);
    }

    v55 = +[PHASESoundReductionIndex objectForDefault];
    v56 = +[PHASEAbsorptionData objectForDefault];
    v57 = +[PHASEScatteringData objectForDefault];
    self = [(PHASEMaterial *)self initWithEngine:v98 preset:preset soundReductionIndex:v55 absorptionData:v56 scatteringData:v57];

    goto LABEL_24;
  }

  if (!dictionary)
  {
    v59 = **(Phase::Logger::GetInstance(v52) + 448);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      localizedDescription2 = [0 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 629;
      v121 = 2112;
      v122 = localizedDescription2;
      _os_log_impl(&dword_23A302000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

    goto LABEL_53;
  }

  v59 = [dictionary objectForKey:v97];
  v60 = [dictionary objectForKey:v96];
  v61 = [dictionary objectForKey:v14];
  v95 = v61;
  v94 = v60;
  if (!v59)
  {
    v59 = v60;
    v83 = **(Phase::Logger::GetInstance(v61) + 448);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      localizedDescription3 = [0 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 646;
      v121 = 2112;
      v122 = localizedDescription3;
      _os_log_impl(&dword_23A302000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

    goto LABEL_37;
  }

  v62 = [PHASEAbsorptionData alloc];
  absorptionReferenceData = [v59 absorptionReferenceData];
  frequencyBands = [v59 frequencyBands];
  v65 = [(PHASEAbsorptionData *)v62 initWithAbsorptionCoefficients:absorptionReferenceData frequencyBands:frequencyBands];
  [dictionary setObject:v65 forKeyedSubscript:v97];

  v66 = [dictionary objectForKeyedSubscript:v97];
  LODWORD(frequencyBands) = v66 == 0;

  if (frequencyBands)
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
      localizedDescription4 = [0 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 663;
      v121 = 2112;
      v122 = localizedDescription4;
      _os_log_impl(&dword_23A302000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

LABEL_37:

LABEL_53:
LABEL_54:
    selfCopy = 0;
    goto LABEL_55;
  }

  v68 = [PHASEScatteringData alloc];
  scatteringReferenceData = [v94 scatteringReferenceData];
  frequencyBands2 = [v94 frequencyBands];
  v70 = [(PHASEScatteringData *)v68 initWithScatteringCoefficients:scatteringReferenceData frequencyBands:frequencyBands2];
  [dictionary setObject:v70 forKeyedSubscript:v96];

  v71 = [dictionary objectForKeyedSubscript:v96];
  LODWORD(frequencyBands2) = v71 == 0;

  if (frequencyBands2)
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
      localizedDescription5 = [0 localizedDescription];
      *buf = 136315650;
      v118 = "PHASEMaterial.mm";
      v119 = 1024;
      v120 = 681;
      v121 = 2112;
      v122 = localizedDescription5;
      _os_log_impl(&dword_23A302000, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

    goto LABEL_53;
  }

  v73 = [PHASESoundReductionIndex alloc];
  soundReductionIndexReferenceData = [(Phase::Logger *)v95 soundReductionIndexReferenceData];
  frequencyBands3 = [(Phase::Logger *)v95 frequencyBands];
  materialDepth = [(Phase::Logger *)v95 materialDepth];
  [materialDepth floatValue];
  v76 = [(PHASESoundReductionIndex *)v73 initWithSoundReductionIndices:soundReductionIndexReferenceData frequencyBands:frequencyBands3 measuredDepth:?];
  [dictionary setObject:v76 forKeyedSubscript:v14];

  v77 = [dictionary objectForKeyedSubscript:v14];
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

  v79 = [dictionary objectForKey:v14];
  v80 = [dictionary objectForKey:v97];
  v81 = [dictionary objectForKey:v96];
  self = [(PHASEMaterial *)self initWithEngine:v98 preset:preset soundReductionIndex:v79 absorptionData:v80 scatteringData:v81];

LABEL_24:
  selfCopy = self;
LABEL_55:

  return selfCopy;
}

- (PHASEMaterial)initWithEngine:(id)engine preset:(int64_t)preset soundReductionIndex:(id)index absorptionData:(id)data scatteringData:(id)scatteringData
{
  v26 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  indexCopy = index;
  dataCopy = data;
  scatteringDataCopy = scatteringData;
  v16 = scatteringDataCopy;
  if (indexCopy && dataCopy && scatteringDataCopy)
  {
    v21.receiver = self;
    v21.super_class = PHASEMaterial;
    v17 = [(PHASEMaterial *)&v21 init];
    v18 = v17;
    if (v17)
    {
      objc_storeWeak(&v17->_engine, engineCopy);
      v18->_preset = preset;
      objc_storeStrong(&v18->_soundReductionIndex, index);
      objc_storeStrong(&v18->_absorptionData, data);
      objc_storeStrong(&v18->_scatteringData, scatteringData);
      *&v18->_attenuationScale = 1065353216;
      v18->_attenuationTilt = 0.0;
      [(PHASEMaterial *)v18 writeMaterialCoefs:1];
    }
  }

  else
  {
    v19 = **(Phase::Logger::GetInstance(scatteringDataCopy) + 448);
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

- (PHASEMaterial)initWithEngine:(id)engine soundReductionIndex:(id)index absorptionData:(id)data scatteringData:(id)scatteringData
{
  engineCopy = engine;
  indexCopy = index;
  dataCopy = data;
  scatteringDataCopy = scatteringData;
  v14 = scatteringDataCopy;
  if (indexCopy && dataCopy && scatteringDataCopy)
  {
    goto LABEL_22;
  }

  sGetFrequencies(__p);
  if (indexCopy)
  {
    if (dataCopy)
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

    dataCopy = [[PHASEAbsorptionData alloc] initWithAbsorptionCoefficients:v23];

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
  indexCopy = [(PHASESoundReductionIndex *)v21 initWithAttenuationCoefficients:v15 measuredDepth:v22];

  if (!dataCopy)
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

  if (!indexCopy || !dataCopy || !v14)
  {
    std::terminate();
  }

LABEL_22:
  v34 = [(PHASEMaterial *)self initWithEngine:engineCopy preset:1833136740 soundReductionIndex:indexCopy absorptionData:dataCopy scatteringData:v14];

  return v34;
}

- (PHASEMaterial)initWithEngine:(id)engine semantics:(id)semantics
{
  v105 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  semanticsCopy = semantics;
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
    v18 = [(PHASEMaterial *)self initWithEngine:engineCopy soundReductionIndex:v76 absorptionData:v87 scatteringData:?];
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
  obj = [semanticsCopy allKeys];
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
          v13 = [semanticsCopy objectForKeyedSubscript:v12];
          [v87 setObject:v13 forKey:v10];
        }

        else if ([v12 isEqualToString:@"ARMeshMaterialID"])
        {
          v13 = [semanticsCopy objectForKeyedSubscript:v12];
          [v87 setObject:v13 forKey:v9];
        }

        else if ([v12 isEqualToString:@"Object"])
        {
          v13 = [semanticsCopy objectForKeyedSubscript:v12];
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

          v13 = [semanticsCopy objectForKeyedSubscript:v12];
          [v87 setObject:v13 forKey:v83];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
    }

    while (v6);
  }

  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v92 = 0;
  v84 = [MEMORY[0x277CE87B8] acousticParameters:v5 forSemanticLabels:v87 error:&v92];
  obj = v92;

  if (obj)
  {
    log = **(Phase::Logger::GetInstance(v16) + 448);
    if (os_log_type_enabled(&log->super, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [obj localizedDescription];
      *buf = 136315650;
      v99 = "PHASEMaterial.mm";
      v100 = 1024;
      v101 = 951;
      v102 = 2112;
      v103 = localizedDescription;
      _os_log_impl(&dword_23A302000, &log->super, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: [%@]", buf, 0x1Cu);
    }

    v18 = 0;
    goto LABEL_66;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  allKeys = [v84 allKeys];
  v21 = [allKeys countByEnumeratingWithState:&v88 objects:v97 count:16];
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
      objc_enumerationMutation(allKeys);
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
        frequencyBands = [v24 frequencyBands];
        v28 = [frequencyBands count] > j;

        if (!v28)
        {
          break;
        }

        v29 = [PHASESubband alloc];
        frequencyBands2 = [v24 frequencyBands];
        v31 = [frequencyBands2 objectAtIndexedSubscript:j];
        [v31 floatValue];
        v33 = v32;
        absorptionUserData = [v24 absorptionUserData];
        v35 = [absorptionUserData objectAtIndexedSubscript:j];
        [v35 floatValue];
        LODWORD(v37) = v36;
        LODWORD(v38) = v33;
        v39 = [(PHASESubband *)v29 initWithFrequency:v38 value:v37];
        [v25 addObject:v39];
      }

      materialDepth = log;
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
        frequencyBands3 = [v24 frequencyBands];
        v42 = [frequencyBands3 count] > k;

        if (!v42)
        {
          break;
        }

        v43 = [PHASESubband alloc];
        frequencyBands4 = [v24 frequencyBands];
        v45 = [frequencyBands4 objectAtIndexedSubscript:k];
        [v45 floatValue];
        v47 = v46;
        scatteringUserData = [v24 scatteringUserData];
        v49 = [scatteringUserData objectAtIndexedSubscript:k];
        [v49 floatValue];
        LODWORD(v51) = v50;
        LODWORD(v52) = v47;
        v53 = [(PHASESubband *)v43 initWithFrequency:v52 value:v51];
        [v25 addObject:v53];
      }

      materialDepth = v72;
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
        frequencyBands5 = [v24 frequencyBands];
        v58 = [frequencyBands5 count] > m;

        if (!v58)
        {
          break;
        }

        soundReductionIndexUserData = [v24 soundReductionIndexUserData];
        v60 = [soundReductionIndexUserData objectAtIndexedSubscript:m];
        [v60 floatValue];
        expf(((fmaxf(v61, 0.0) * -10.0) / 10.0) * 0.11513);

        v62 = [PHASESubband alloc];
        frequencyBands6 = [v24 frequencyBands];
        v64 = [frequencyBands6 objectAtIndexedSubscript:m];
        [v64 floatValue];
        v65 = [PHASESubband initWithFrequency:v62 value:"initWithFrequency:value:"];
        [v25 addObject:v65];
      }

      v66 = [PHASESoundReductionIndex alloc];
      materialDepth = [v24 materialDepth];
      [materialDepth floatValue];
      v67 = [(PHASESoundReductionIndex *)v66 initWithAttenuationCoefficients:v25 measuredDepth:?];

      v71 = v67;
LABEL_50:
    }

    if (++v22 == v79)
    {
      v21 = [allKeys countByEnumeratingWithState:&v88 objects:v97 count:16];
      if (!v21)
      {

        if (log && v72 && v71)
        {
          v18 = [(PHASEMaterial *)self initWithEngine:engineCopy soundReductionIndex:v71 absorptionData:log scatteringData:v72];
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

- (void)writeMaterialCoefs:(BOOL)coefs
{
  coefsCopy = coefs;
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
      attenuationCoefficients = [(PHASESoundReductionIndex *)soundReductionIndex attenuationCoefficients];
      v8 = [attenuationCoefficients countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v8)
      {
        v9 = *v26;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v26 != v9)
            {
              objc_enumerationMutation(attenuationCoefficients);
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

          v8 = [attenuationCoefficients countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v8);
      }
    }

    v15 = v5;
    *buf = v15;
    *&buf[8] = self->_soundReductionIndex;
    *&buf[16] = self->_absorptionData;
    *&buf[24] = self->_scatteringData;
    if (coefsCopy)
    {
      implementation = [WeakRetained implementation];
      [(PHASEMaterial *)self setGeoMaterialHandle:(*(**(implementation + 368) + 32))(*(implementation + 368), buf)];
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

- (void)setAttenuationScale:(float)scale
{
  scaleCopy = scale;
  v12 = *MEMORY[0x277D85DE8];
  if (scale < 0.0)
  {
    v5 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "PHASEMaterial.mm";
      v8 = 1024;
      v9 = 1010;
      v10 = 2048;
      v11 = scaleCopy;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Input multipler %2.2f for setattenuationScale must be non-negative. Clamping.", &v6, 0x1Cu);
    }

    scaleCopy = fmaxf(scaleCopy, 0.0);
  }

  if (self->_attenuationScale != scaleCopy)
  {
    self->_attenuationScale = scaleCopy;
    [(PHASEMaterial *)self writeMaterialCoefs:0];
  }
}

- (void)setAttenuationShift:(float)shift
{
  shiftCopy = shift;
  v12 = *MEMORY[0x277D85DE8];
  if (fabsf(shift) > 1.0)
  {
    v5 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "PHASEMaterial.mm";
      v8 = 1024;
      v9 = 1026;
      v10 = 2048;
      v11 = shiftCopy;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Input offset %2.2f for setattenuationShift is out-of-range. Clamping to [-1, 1].", &v6, 0x1Cu);
    }

    shiftCopy = fminf(fmaxf(shiftCopy, -1.0), 1.0);
  }

  if (self->_attenuationShift != shiftCopy)
  {
    self->_attenuationShift = shiftCopy;
    [(PHASEMaterial *)self writeMaterialCoefs:0];
  }
}

- (void)setAttenuationTilt:(float)tilt
{
  tiltCopy = tilt;
  v12 = *MEMORY[0x277D85DE8];
  if (fabsf(tilt) > 1.0)
  {
    v5 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "PHASEMaterial.mm";
      v8 = 1024;
      v9 = 1041;
      v10 = 2048;
      v11 = tiltCopy;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Input slope %2.2f for setattenuationTilt is out-of-range. Clamping to [-1, 1].", &v6, 0x1Cu);
    }

    tiltCopy = fminf(fmaxf(tiltCopy, -1.0), 1.0);
  }

  if (self->_attenuationTilt != tiltCopy)
  {
    self->_attenuationTilt = tiltCopy;
    [(PHASEMaterial *)self writeMaterialCoefs:0];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  preset = [(PHASEMaterial *)self preset];
  soundReductionIndex = [(PHASEMaterial *)self soundReductionIndex];
  absorptionData = [(PHASEMaterial *)self absorptionData];
  scatteringData = [(PHASEMaterial *)self scatteringData];
  v10 = [v4 initWithEngine:WeakRetained preset:preset soundReductionIndex:soundReductionIndex absorptionData:absorptionData scatteringData:scatteringData];

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