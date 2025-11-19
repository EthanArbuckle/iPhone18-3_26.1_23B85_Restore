@interface PHASEActionTreeBuilder
+ (id)getParamArray:(id)a3 globalParamUIDs:(id)a4 outError:(id *)a5;
- (BOOL)addParameter:(id)a3;
- (BOOL)checkNodeForValidChannelLayouts:(id)a3 assetRegistry:(id)a4 outError:(id *)a5;
- (BOOL)processNode:(id)a3 withArray:(id)a4 assetRegistry:(id)a5 outError:(id *)a6;
- (PHASEActionTreeBuilder)init;
- (id)createParseableDictionaryWithUID:(id)a3 rootNodes:(id)a4 globalParamUIDs:(id)a5 assetRegistry:(id)a6 outError:(id *)a7;
- (id)generateNodeDictionary:(id)a3 outError:(id *)a4;
- (void)fillGeneratorNodeEntries:(id)a3 dictionary:(id)a4;
- (void)fillOutDirectivityFieldsWithParams:(id)a3 dictionary:(id)a4 isListener:(BOOL)a5;
- (void)fillOutDistanceFieldsWithParams:(id)a3 dictionary:(id)a4;
@end

@implementation PHASEActionTreeBuilder

- (PHASEActionTreeBuilder)init
{
  v11.receiver = self;
  v11.super_class = PHASEActionTreeBuilder;
  v2 = [(PHASEActionTreeBuilder *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rootNodes = v2->_rootNodes;
    v2->_rootNodes = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    parameters = v2->_parameters;
    v2->_parameters = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mixNodes = v2->_mixNodes;
    v2->_mixNodes = v7;

    v2->_nextNodeId = 0;
    v9 = v2;
  }

  return v2;
}

- (BOOL)addParameter:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_parameters addObject:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 inputMetaParameterDefinition];

    if (v6)
    {
      v7 = [v5 inputMetaParameterDefinition];
      v8 = [(PHASEActionTreeBuilder *)self addParameter:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)fillGeneratorNodeEntries:(id)a3 dictionary:(id)a4
{
  v26 = a3;
  v6 = a4;
  v7 = [v26 identifier];
  [v6 setObject:v7 forKey:@"Name"];

  v8 = GetCalibrationModeString([v26 calibrationMode]);
  [v6 setObject:v8 forKey:@"CalibrationMode"];

  v9 = 0x277CCA000;
  v10 = MEMORY[0x277CCABB0];
  [v26 level];
  v11 = [v10 numberWithDouble:?];
  [v6 setObject:v11 forKey:@"Level"];

  v12 = MEMORY[0x277CCABB0];
  [v26 rate];
  v13 = [v12 numberWithDouble:?];
  [v6 setObject:v13 forKey:@"Rate"];

  v14 = [v26 group];
  if (v14)
  {
    v9 = [v26 group];
    v15 = [v9 identifier];
  }

  else
  {
    v15 = &stru_284D3D208;
  }

  [v6 setObject:v15 forKey:@"Group"];
  if (v14)
  {
  }

  v16 = [v26 gainMetaParameterDefinition];

  if (v16)
  {
    v17 = [v26 gainMetaParameterDefinition];
    [(PHASEActionTreeBuilder *)self addParameter:v17];

    v18 = [v26 gainMetaParameterDefinition];
    v19 = [v18 identifier];
    [v6 setObject:v19 forKey:@"GainParameterName"];
  }

  v20 = [v26 rateMetaParameterDefinition];

  if (v20)
  {
    v21 = [v26 rateMetaParameterDefinition];
    [(PHASEActionTreeBuilder *)self addParameter:v21];

    v22 = [v26 rateMetaParameterDefinition];
    v23 = [v22 identifier];
    [v6 setObject:v23 forKey:@"RateParameterName"];
  }

  v24 = [v26 mixerDefinition];
  v25 = [v24 identifier];
  [v6 setObject:v25 forKey:@"Submix"];
}

- (id)generateNodeDictionary:(id)a3 outError:(id *)a4
{
  v251 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v203 = a4;
  v204 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = self;
    mixNodes = self->_mixNodes;
    v11 = [v8 mixerDefinition];
    [(NSMutableSet *)mixNodes addObject:v11];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"sampler" forKey:@"Type"];
    [(PHASEActionTreeBuilder *)v9 fillGeneratorNodeEntries:v8 dictionary:v12];
    v13 = [v8 assetIdentifier];
    [v12 setObject:v13 forKey:@"Asset"];

    v14 = GetCullOptionString([v8 cullOption]);
    [v12 setObject:v14 forKey:@"CullOption"];

    v15 = GetPlaybackModeString([v8 playbackMode]);
    [v12 setObject:v15 forKey:@"PlaybackMode"];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v16 = self;
    v17 = self->_mixNodes;
    v18 = [v8 mixerDefinition];
    [(NSMutableSet *)v17 addObject:v18];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"pushstream" forKey:@"Type"];
    [(PHASEActionTreeBuilder *)v16 fillGeneratorNodeEntries:v8 dictionary:v12];
    v19 = [v8 format];
    [v12 setObject:v19 forKey:@"Format"];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "normalize")}];
    [v12 setObject:v20 forKey:@"Normalize"];

    v15 = [v8 targetLKFS];
    [v12 setObject:v15 forKey:@"TargetLKFS"];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v21 = self;
    v22 = self->_mixNodes;
    v23 = [v8 mixerDefinition];
    [(NSMutableSet *)v22 addObject:v23];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"externaloutputpullstream" forKey:@"Type"];
    [(PHASEActionTreeBuilder *)v21 fillGeneratorNodeEntries:v8 dictionary:v12];
    v24 = [v8 uuid];
    v25 = [v24 UUIDString];
    [v12 setObject:v25 forKey:@"UUID"];

    v26 = GetChannelLayoutString([v8 channelLayoutTag]);
    [v12 setObject:v26 forKey:@"ChannelLayoutTag"];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "normalize")}];
    [v12 setObject:v27 forKey:@"Normalize"];

    v15 = [v8 targetLKFS];
    [v12 setObject:v15 forKey:@"TargetLKFS"];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v28 = self;
    v29 = self->_mixNodes;
    v30 = [v8 mixerDefinition];
    [(NSMutableSet *)v29 addObject:v30];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"pullstream" forKey:@"Type"];
    [(PHASEActionTreeBuilder *)v28 fillGeneratorNodeEntries:v8 dictionary:v12];
    v31 = [v8 format];
    [v12 setObject:v31 forKey:@"Format"];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "normalize")}];
    [v12 setObject:v32 forKey:@"Normalize"];

    v15 = [v8 targetLKFS];
    [v12 setObject:v15 forKey:@"TargetLKFS"];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v202 = v7;
    v207 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    [v202 ranges];
    obj = v201 = self;
    v208 = [obj countByEnumeratingWithState:&v231 objects:v250 count:16];
    if (v208)
    {
      v206 = *v232;
      do
      {
        for (i = 0; i != v208; i = i + 1)
        {
          if (*v232 != v206)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v231 + 1) + 8 * i);
          v209 = MEMORY[0x277CBEAC0];
          v210 = [*(v34 + 8) identifier];
          v35 = *(v34 + 16);
          v216 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v36 = MEMORY[0x277CCABB0];
          [v35 startPoint];
          v37 = [v36 numberWithDouble:?];
          [v216 setValue:v37 forKey:@"StartInputValue"];

          v38 = MEMORY[0x277CCABB0];
          [v35 startPoint];
          v40 = [v38 numberWithDouble:v39];
          [v216 setValue:v40 forKey:@"StartOutputValue"];

          v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
          for (j = 0; ; ++j)
          {
            v43 = [v35 segments];
            v44 = [v43 count] > j;

            if (!v44)
            {
              break;
            }

            v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v46 = MEMORY[0x277CCABB0];
            v47 = [v35 segments];
            v48 = [v47 objectAtIndexedSubscript:j];
            [v48 endPoint];
            v49 = [v46 numberWithDouble:?];
            [v45 setValue:v49 forKey:@"InputValue"];

            v50 = MEMORY[0x277CCABB0];
            v51 = [v35 segments];
            v52 = [v51 objectAtIndexedSubscript:j];
            [v52 endPoint];
            v54 = [v50 numberWithDouble:v53];
            [v45 setValue:v54 forKey:@"OutputValue"];

            v55 = [v35 segments];
            v56 = [v55 objectAtIndexedSubscript:j];
            v57 = GetCurveTypeString([v56 curveType]);
            [v45 setValue:v57 forKey:@"CurveType"];

            [v41 addObject:v45];
          }

          [v216 setValue:v41 forKey:@"Segments"];

          v58 = [v209 dictionaryWithObjectsAndKeys:{v210, @"SubTreeNodeName", v216, @"Envelope", 0}];

          [v207 addObject:v58];
        }

        v208 = [obj countByEnumeratingWithState:&v231 objects:v250 count:16];
      }

      while (v208);
    }

    v59 = [v202 blendParameterDefinition];
    v60 = v59 == 0;

    if (!v60)
    {
      v61 = [v202 blendParameterDefinition];
      [(PHASEActionTreeBuilder *)self addParameter:v61];

      v62 = MEMORY[0x277CBEB38];
      v63 = [v202 identifier];
      v64 = [v202 blendParameterDefinition];
      v65 = [v64 identifier];
      v12 = [v62 dictionaryWithObjectsAndKeys:{v63, @"Name", @"blend", @"Type", v207, @"Children", v65, @"BlendParameter", 0}];

      v66 = [v202 blendParameterDefinition];
      [(PHASEActionTreeBuilder *)v201 addParameter:v66];
LABEL_54:

      goto LABEL_12;
    }

    v106 = [v202 spatialMixerDefinitionForDistance];
    v107 = v106 == 0;

    if (!v107)
    {
      v108 = self->_mixNodes;
      v109 = [v202 spatialMixerDefinitionForDistance];
      [(NSMutableSet *)v108 addObject:v109];

      v110 = MEMORY[0x277CBEB38];
      v66 = [v202 identifier];
      v111 = [v202 spatialMixerDefinitionForDistance];
      v112 = [v111 identifier];
      v12 = [v110 dictionaryWithObjectsAndKeys:{v66, @"Name", @"blend", @"Type", v207, @"Children", @"auto_distance", @"BlendParameter", v112, @"DistanceSubmixName", 0}];

      goto LABEL_54;
    }

    v185 = *MEMORY[0x277CCA450];
    v248 = *MEMORY[0x277CCA450];
    v186 = [MEMORY[0x277CCACA8] stringWithFormat:@"Improperly initialized blend node"];
    v249 = v186;
    v187 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v249 forKeys:&v248 count:1];

    v189 = **(Phase::Logger::GetInstance(v188) + 16);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
    {
      v190 = [v187 objectForKeyedSubscript:v185];
      v191 = v190;
      v192 = [v190 UTF8String];
      *buf = 136315650;
      v243 = "PHASEAssetRegistry.mm";
      v244 = 1024;
      v245 = 2349;
      v246 = 2080;
      v247 = v192;
      _os_log_impl(&dword_23A302000, v189, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (v203)
    {
      *v203 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v187];
    }

    goto LABEL_95;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v211 = v7;
    v217 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    v67 = [v211 subtrees];
    v214 = v67;
    v68 = [v67 countByEnumeratingWithState:&v227 objects:v241 count:16];
    if (v68)
    {
      v69 = *v228;
      while (2)
      {
        for (k = 0; k != v68; ++k)
        {
          if (*v228 != v69)
          {
            objc_enumerationMutation(v214);
          }

          v71 = *(*(&v227 + 1) + 8 * k);
          v72 = [v71 subtree];
          v73 = v72 == 0;

          if (v73)
          {
            v98 = *MEMORY[0x277CCA450];
            v239 = *MEMORY[0x277CCA450];
            v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"Switch node subtree is nil"];
            v240 = v99;
            v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v240 forKeys:&v239 count:1];

            v102 = **(Phase::Logger::GetInstance(v101) + 16);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              v103 = [v100 objectForKeyedSubscript:v98];
              v104 = v103;
              v105 = [v103 UTF8String];
              *buf = 136315650;
              v243 = "PHASEAssetRegistry.mm";
              v244 = 1024;
              v245 = 2367;
              v246 = 2080;
              v247 = v105;
              _os_log_impl(&dword_23A302000, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
            }

            if (v203)
            {
              *v203 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v100];
            }

            goto LABEL_95;
          }

          v74 = MEMORY[0x277CBEAC0];
          v75 = [v71 subtree];
          v76 = [v75 identifier];
          v77 = [v71 switchValue];
          v78 = [v74 dictionaryWithObjectsAndKeys:{v76, @"SubTreeNodeName", v77, @"SwitchValue", 0}];

          [v217 addObject:v78];
        }

        v67 = v214;
        v68 = [v214 countByEnumeratingWithState:&v227 objects:v241 count:16];
        if (v68)
        {
          continue;
        }

        break;
      }
    }

    v79 = [v211 switchMetaParameterDefinition];
    [(PHASEActionTreeBuilder *)self addParameter:v79];

    v80 = MEMORY[0x277CBEB38];
    v81 = [v211 identifier];
    v82 = [v211 switchMetaParameterDefinition];
    v83 = [v82 identifier];
    v12 = [v80 dictionaryWithObjectsAndKeys:{v81, @"Name", @"switch", @"Type", v83, @"SwitchParameter", v217, @"Children", 0}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v212 = v7;
      v218 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v84 = [v212 subtrees];
      v215 = v84;
      v85 = [v84 countByEnumeratingWithState:&v223 objects:v238 count:16];
      if (v85)
      {
        v86 = *v224;
        do
        {
          for (m = 0; m != v85; ++m)
          {
            if (*v224 != v86)
            {
              objc_enumerationMutation(v215);
            }

            v88 = *(*(&v223 + 1) + 8 * m);
            v89 = MEMORY[0x277CBEAC0];
            v90 = [v88 subtree];
            v91 = [v90 identifier];
            v92 = MEMORY[0x277CCABB0];
            [v88 weight];
            v93 = [v92 numberWithDouble:?];
            v94 = [v89 dictionaryWithObjectsAndKeys:{v91, @"SubTreeNodeName", v93, @"Weight", 0}];

            [v218 addObject:v94];
          }

          v84 = v215;
          v85 = [v215 countByEnumeratingWithState:&v223 objects:v238 count:16];
        }

        while (v85);
      }

      v95 = MEMORY[0x277CBEB38];
      v96 = [v212 identifier];
      v97 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v212, "uniqueSelectionQueueLength")}];
      v12 = [v95 dictionaryWithObjectsAndKeys:{v96, @"Name", @"random", @"Type", v97, @"UniqueSelectionQueueLength", v218, @"Children", 0}];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v113 = v7;
        v114 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v115 = [v113 children];
        v116 = [v115 countByEnumeratingWithState:&v219 objects:v237 count:16];
        if (v116)
        {
          v117 = *v220;
          do
          {
            for (n = 0; n != v116; ++n)
            {
              if (*v220 != v117)
              {
                objc_enumerationMutation(v115);
              }

              v119 = [*(*(&v219 + 1) + 8 * n) identifier];
              [v114 addObject:v119];
            }

            v116 = [v115 countByEnumeratingWithState:&v219 objects:v237 count:16];
          }

          while (v116);
        }

        v120 = MEMORY[0x277CBEB38];
        v121 = [v113 identifier];
        v12 = [v120 dictionaryWithObjectsAndKeys:{v121, @"Name", @"container", @"Type", v114, @"Children", 0}];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v193 = *MEMORY[0x277CCA450];
            v235 = *MEMORY[0x277CCA450];
            v194 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected object in submix array"];
            v236 = v194;
            v195 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v236 forKeys:&v235 count:1];

            v197 = **(Phase::Logger::GetInstance(v196) + 16);
            if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
            {
              v198 = [v195 objectForKeyedSubscript:v193];
              v199 = v198;
              v200 = [v198 UTF8String];
              *buf = 136315650;
              v243 = "PHASEAssetRegistry.mm";
              v244 = 1024;
              v245 = 2534;
              v246 = 2080;
              v247 = v200;
              _os_log_impl(&dword_23A302000, v197, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
            }

            *v203 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v195];
          }

LABEL_95:
          v12 = 0;
          goto LABEL_12;
        }

        v122 = v7;
        v123 = self;
        v124 = self->_mixNodes;
        v125 = [v122 mixerDefinition];
        [(NSMutableSet *)v124 addObject:v125];

        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v12 setObject:@"procedure" forKey:@"Type"];
        [(PHASEActionTreeBuilder *)v123 fillGeneratorNodeEntries:v122 dictionary:v12];
        v126 = GetCullOptionString([v122 cullOption]);
        [v12 setObject:v126 forKey:@"CullOption"];

        v127 = GetPlaybackModeString([v122 playbackMode]);
        [v12 setObject:v127 forKey:@"PlaybackMode"];

        v128 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v122, "maxPolyphony")}];
        [v12 setObject:v128 forKey:@"ProcedureMaxPolyphony"];

        v129 = GetVoiceStealingTypeString([v122 voiceStealingType]);
        [v12 setObject:v129 forKey:@"ProcedureVoiceStealingType"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 setObject:@"water" forKey:@"ProcedureType"];
          v130 = v122;
          v131 = MEMORY[0x277CCABB0];
          [v130 fallRate];
          v132 = [v131 numberWithDouble:?];
          [v12 setObject:v132 forKey:@"FallRate"];

          v133 = MEMORY[0x277CCABB0];
          [v130 averageDropDiameter];
          v134 = [v133 numberWithDouble:?];
          [v12 setObject:v134 forKey:@"AverageDropDiameter"];

          v135 = MEMORY[0x277CCABB0];
          [v130 maxDropDiameter];
          v136 = [v135 numberWithDouble:?];
          [v12 setObject:v136 forKey:@"MaxDropDiameter"];

          v137 = MEMORY[0x277CCABB0];
          [v130 impulseShape];
          v138 = [v137 numberWithDouble:?];
          [v12 setObject:v138 forKey:@"ImpulseShape"];

          v139 = MEMORY[0x277CCABB0];
          [v130 impulseGainExponent];
          v140 = [v139 numberWithDouble:?];
          [v12 setObject:v140 forKey:@"ImpulseGainExponent"];

          v141 = MEMORY[0x277CCABB0];
          [v130 impulseGain];
          v142 = [v141 numberWithDouble:?];
          [v12 setObject:v142 forKey:@"ImpulseGain"];

          v143 = MEMORY[0x277CCABB0];
          [v130 chirpRiseRate];
          v144 = [v143 numberWithDouble:?];
          [v12 setObject:v144 forKey:@"ChirpRiseRate"];

          v145 = MEMORY[0x277CCABB0];
          [v130 baseFrequencyMultiplier];
          v146 = [v145 numberWithDouble:?];
          [v12 setObject:v146 forKey:@"BaseFrequencyMultiplier"];

          v147 = MEMORY[0x277CCABB0];
          [v130 bubbleGain];
          v148 = [v147 numberWithDouble:?];
          [v12 setObject:v148 forKey:@"BubbleGain"];

          v149 = [v130 fallRateMetaParameterDefinition];

          if (v149)
          {
            v150 = [v130 fallRateMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v150];

            v151 = [v130 fallRateMetaParameterDefinition];
            v152 = [v151 identifier];
            [v12 setObject:v152 forKey:@"FallRateParameterName"];
          }

          v153 = [v130 averageDropDiameterMetaParameterDefinition];

          if (v153)
          {
            v154 = [v130 averageDropDiameterMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v154];

            v155 = [v130 averageDropDiameterMetaParameterDefinition];
            v156 = [v155 identifier];
            [v12 setObject:v156 forKey:@"AverageDropDiameterParameterName"];
          }

          v157 = [v130 maxDropDiameterMetaParameterDefinition];

          if (v157)
          {
            v158 = [v130 maxDropDiameterMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v158];

            v159 = [v130 maxDropDiameterMetaParameterDefinition];
            v160 = [v159 identifier];
            [v12 setObject:v160 forKey:@"MaxDropDiameterParameterName"];
          }

          v161 = [v130 impulseShapeMetaParameterDefinition];

          if (v161)
          {
            v162 = [v130 impulseShapeMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v162];

            v163 = [v130 impulseShapeMetaParameterDefinition];
            v164 = [v163 identifier];
            [v12 setObject:v164 forKey:@"ImpulseShapeParameterName"];
          }

          v165 = [v130 impulseGainExponentMetaParameterDefinition];

          if (v165)
          {
            v166 = [v130 impulseGainExponentMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v166];

            v167 = [v130 impulseGainExponentMetaParameterDefinition];
            v168 = [v167 identifier];
            [v12 setObject:v168 forKey:@"ImpulseGainExponentParameterName"];
          }

          v169 = [v130 impulseGainMetaParameterDefinition];

          if (v169)
          {
            v170 = [v130 impulseGainMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v170];

            v171 = [v130 impulseGainMetaParameterDefinition];
            v172 = [v171 identifier];
            [v12 setObject:v172 forKey:@"ImpulseGainParameterName"];
          }

          v173 = [v130 chirpRiseRateMetaParameterDefinition];

          if (v173)
          {
            v174 = [v130 chirpRiseRateMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v174];

            v175 = [v130 chirpRiseRateMetaParameterDefinition];
            v176 = [v175 identifier];
            [v12 setObject:v176 forKey:@"ChirpRiseRateParameterName"];
          }

          v177 = [v130 baseFrequencyMultiplierMetaParameterDefinition];

          if (v177)
          {
            v178 = [v130 baseFrequencyMultiplierMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v178];

            v179 = [v130 baseFrequencyMultiplierMetaParameterDefinition];
            v180 = [v179 identifier];
            [v12 setObject:v180 forKey:@"BaseFrequencyMultiplierParameterName"];
          }

          v181 = [v130 bubbleGainMetaParameterDefinition];

          if (v181)
          {
            v182 = [v130 bubbleGainMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v123 addParameter:v182];

            v183 = [v130 bubbleGainMetaParameterDefinition];
            v184 = [v183 identifier];
            [v12 setObject:v184 forKey:@"BubbleGainParameterName"];
          }
        }
      }
    }
  }

LABEL_12:

  return v12;
}

- (BOOL)processNode:(id)a3 withArray:(id)a4 assetRegistry:(id)a5 outError:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  if ([(PHASEActionTreeBuilder *)self checkNodeForValidChannelLayouts:v10 assetRegistry:v12 outError:a6])
  {
    v13 = [(PHASEActionTreeBuilder *)self generateNodeDictionary:v10 outError:a6];
    if (v13)
    {
      [v11 addObject:v13];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = [v10 children];
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = *v21;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v14);
            }

            if (![(PHASEActionTreeBuilder *)self processNode:*(*(&v20 + 1) + 8 * i) withArray:v11 assetRegistry:v12 outError:a6])
            {
              v18 = 0;
              goto LABEL_16;
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v18 = 1;
LABEL_16:
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)getParamArray:(id)a3 globalParamUIDs:(id)a4 outError:(id *)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v67 = a4;
  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a5)
  {
    *a5 = 0;
  }

  v61 = a5;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v62;
  v68 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v68)
  {
    v66 = *v76;
    while (2)
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v76 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v69 = *(*(&v75 + 1) + 8 * i);
        v7 = [v69 identifier];
        v8 = [v67 containsObject:v7];

        if ((v8 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v65 = v69;
            v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v10 = [v65 envelope];
            v11 = [v10 segments];

            v12 = [v11 countByEnumeratingWithState:&v71 objects:v87 count:16];
            if (v12)
            {
              v13 = *v72;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v72 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v71 + 1) + 8 * j);
                  v16 = MEMORY[0x277CBEAC0];
                  v17 = MEMORY[0x277CCABB0];
                  [v15 endPoint];
                  v18 = [v17 numberWithDouble:?];
                  v19 = MEMORY[0x277CCABB0];
                  [v15 endPoint];
                  v21 = [v19 numberWithDouble:v20];
                  v22 = GetCurveTypeString([v15 curveType]);
                  v23 = [v16 dictionaryWithObjectsAndKeys:{v18, @"InputValue", v21, @"OutputValue", v22, @"CurveType", 0}];

                  [v9 addObject:v23];
                }

                v12 = [v11 countByEnumeratingWithState:&v71 objects:v87 count:16];
              }

              while (v12);
            }

            v24 = MEMORY[0x277CBEAC0];
            v25 = MEMORY[0x277CCABB0];
            v26 = [v65 envelope];
            [v26 startPoint];
            v27 = [v25 numberWithDouble:?];
            v28 = MEMORY[0x277CCABB0];
            v29 = [v65 envelope];
            [v29 startPoint];
            v31 = [v28 numberWithDouble:v30];
            v32 = [v24 dictionaryWithObjectsAndKeys:{v27, @"StartInputValue", v31, @"StartOutputValue", v9, @"Segments", 0}];

            v33 = MEMORY[0x277CBEAC0];
            v34 = [v65 identifier];
            v35 = [v65 inputMetaParameterDefinition];
            v36 = [v35 identifier];
            v37 = [v33 dictionaryWithObjectsAndKeys:{@"mapped_range", @"Type", v34, @"Name", v36, @"LinkedInputParameter", @"float", @"InputType", @"float", @"OutputType", v32, @"Envelope", 0}];

            [v63 addObject:v37];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v69;
              v39 = MEMORY[0x277CBEAC0];
              v40 = [v38 identifier];
              v41 = MEMORY[0x277CCABB0];
              [v38 minimum];
              v42 = [v41 numberWithDouble:?];
              v43 = MEMORY[0x277CCABB0];
              [v38 maximum];
              v44 = [v43 numberWithDouble:?];
              v45 = [v38 value];
              v9 = [v39 dictionaryWithObjectsAndKeys:{v40, @"Name", @"input", @"Type", @"float", @"InputType", v42, @"RangeMin", v44, @"RangeMax", v45, @"DefaultValue", 0}];

              [v63 addObject:v9];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (v61)
                {
                  v52 = *MEMORY[0x277CCA450];
                  v85 = *MEMORY[0x277CCA450];
                  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected object in metaparameter array"];
                  v86 = v53;
                  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];

                  v56 = **(Phase::Logger::GetInstance(v55) + 16);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    v57 = [v54 objectForKeyedSubscript:v52];
                    v58 = v57;
                    v59 = [v57 UTF8String];
                    *buf = 136315650;
                    v80 = "PHASEAssetRegistry.mm";
                    v81 = 1024;
                    v82 = 2676;
                    v83 = 2080;
                    v84 = v59;
                    _os_log_impl(&dword_23A302000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
                  }

                  *v61 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v54];
                }

                v51 = 0;
                v50 = v63;
                goto LABEL_31;
              }

              v46 = v69;
              v47 = MEMORY[0x277CBEAC0];
              v48 = [v46 identifier];
              v49 = [v46 value];
              v9 = [v47 dictionaryWithObjectsAndKeys:{v48, @"Name", @"input", @"Type", @"string", @"InputType", v49, @"DefaultValue", 0}];

              [v63 addObject:v9];
            }
          }
        }
      }

      v68 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
      if (v68)
      {
        continue;
      }

      break;
    }
  }

  v50 = v63;
  v51 = v63;
LABEL_31:

  return v51;
}

- (void)fillOutDistanceFieldsWithParams:(id)a3 dictionary:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v30 = v6;
  v31 = v5;
  if (v5)
  {
    v7 = [v5 fadeOutParameters];

    if (v7)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [v5 fadeOutParameters];
      [v9 cullDistance];
      v10 = [v8 numberWithDouble:?];
      [v30 setObject:v10 forKey:@"FadeOutCullDistance"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v30 setObject:@"geometric_spreading" forKey:@"DistanceModelType"];
      v11 = v5;
      v12 = MEMORY[0x277CCABB0];
      [v11 rolloffFactor];
      v13 = [v12 numberWithDouble:?];
      [v30 setObject:v13 forKey:@"RolloffFactor"];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v30 setObject:@"envelope" forKey:@"DistanceModelType"];
        v29 = v5;
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = [v29 envelope];
        v16 = [v15 segments];

        v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v17)
        {
          v18 = *v33;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v32 + 1) + 8 * i);
              v21 = MEMORY[0x277CBEB38];
              v22 = MEMORY[0x277CCABB0];
              [v20 endPoint];
              v23 = [v22 numberWithDouble:?];
              v24 = MEMORY[0x277CCABB0];
              [v20 endPoint];
              v26 = [v24 numberWithDouble:v25];
              v27 = GetCurveTypeString([v20 curveType]);
              v28 = [v21 dictionaryWithObjectsAndKeys:{v23, @"Distance", v26, @"Gain", v27, @"CurveType", 0, v29}];

              [v14 addObject:v28];
            }

            v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v17);
        }

        [v30 setObject:v14 forKey:@"EnvelopeSegments"];
      }
    }
  }

  else
  {
    [v6 setObject:@"none" forKey:@"DistanceModelType"];
  }
}

- (void)fillOutDirectivityFieldsWithParams:(id)a3 dictionary:(id)a4 isListener:(BOOL)a5
{
  v5 = a5;
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v52 = v8;
  v53 = v7;
  if (v7)
  {
    v51 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v5)
      {
        v9 = @"ListenerDirectivityModelType";
      }

      else
      {
        v9 = @"SourceDirectivityModelType";
      }

      [v52 setObject:@"cardioid" forKey:v9];
      v54 = v7;
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = [v54 subbandParameters];
      v11 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v11)
      {
        v12 = *v63;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v63 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v62 + 1) + 8 * i);
            v15 = MEMORY[0x277CBEB38];
            v16 = MEMORY[0x277CCABB0];
            [v14 frequency];
            v17 = [v16 numberWithDouble:?];
            v18 = MEMORY[0x277CCABB0];
            [v14 pattern];
            v19 = [v18 numberWithDouble:?];
            v20 = MEMORY[0x277CCABB0];
            [v14 sharpness];
            v21 = [v20 numberWithDouble:?];
            v22 = [v15 dictionaryWithObjectsAndKeys:{v17, @"Frequency", v19, @"Pattern", v21, @"Sharpness", 0}];

            [v10 addObject:v22];
          }

          v11 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
        }

        while (v11);
      }

      if (v51)
      {
        v23 = @"ListenerCardioidDirectivitySubbands";
      }

      else
      {
        v23 = @"SourceCardioidDirectivitySubbands";
      }

      [v52 setObject:v10 forKey:v23];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v5)
        {
          v25 = @"ListenerDirectivityModelType";
        }

        else
        {
          v25 = @"SourceDirectivityModelType";
        }

        [v52 setObject:@"cone" forKey:v25];
        v50 = v7;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        obja = objc_alloc_init(MEMORY[0x277CBEB18]);
        v55 = [v50 subbandParameters];
        v26 = [v55 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v26)
        {
          v27 = *v59;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v59 != v27)
              {
                objc_enumerationMutation(v55);
              }

              v29 = *(*(&v58 + 1) + 8 * j);
              v30 = MEMORY[0x277CBEB38];
              v31 = MEMORY[0x277CCABB0];
              [v29 frequency];
              v32 = [v31 numberWithDouble:?];
              v33 = MEMORY[0x277CCABB0];
              [v29 innerAngle];
              v34 = [v33 numberWithDouble:?];
              v35 = MEMORY[0x277CCABB0];
              [v29 outerAngle];
              v36 = [v35 numberWithDouble:?];
              v37 = MEMORY[0x277CCABB0];
              [v29 outerGain];
              v38 = [v37 numberWithDouble:?];
              v39 = [v30 dictionaryWithObjectsAndKeys:{v32, @"Frequency", v34, @"InnerAngle", v36, @"OuterAngle", v38, @"OuterGain", 0, v50}];

              [obja addObject:v39];
            }

            v26 = [v55 countByEnumeratingWithState:&v58 objects:v66 count:16];
          }

          while (v26);
        }

        if (v51)
        {
          v40 = @"ListenerConeDirectivitySubbands";
        }

        else
        {
          v40 = @"SourceConeDirectivitySubbands";
        }

        [v52 setObject:obja forKey:v40];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v5)
          {
            v41 = @"ListenerDirectivityModelType";
          }

          else
          {
            v41 = @"SourceDirectivityModelType";
          }

          [v52 setObject:@"sphericalcap" forKey:v41];
          v42 = v7;
          v43 = MEMORY[0x277CBEB38];
          v44 = MEMORY[0x277CCABB0];
          [v42 sphereRadius];
          v45 = [v44 numberWithDouble:?];
          v46 = MEMORY[0x277CCABB0];
          [v42 capOpeningAngle];
          v47 = [v46 numberWithDouble:?];
          v48 = [v43 dictionaryWithObjectsAndKeys:{v45, @"SphereRadius", v47, @"CapOpeningAngle", 0}];

          if (v51)
          {
            v49 = @"ListenerSphericalCapDirectivityParameters";
          }

          else
          {
            v49 = @"SourceSphericalCapDirectivityParameters";
          }

          [v52 setObject:v48 forKey:v49];
        }
      }
    }
  }

  else
  {
    if (v5)
    {
      v24 = @"ListenerDirectivityModelType";
    }

    else
    {
      v24 = @"SourceDirectivityModelType";
    }

    [v8 setObject:@"none" forKey:v24];
  }
}

- (BOOL)checkNodeForValidChannelLayouts:(id)a3 assetRegistry:(id)a4 outError:(id *)a5
{
  v69[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_38;
  }

  v9 = v7;
  v10 = [v9 mixerDefinition];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v20 = [v9 mixerDefinition];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
LABEL_37:

LABEL_38:
      v56 = 1;
      goto LABEL_39;
    }

    v12 = [v9 mixerDefinition];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v9;
      v23 = [v22 assetIdentifier];
      v25 = [v8 getSoundAssetInfo:{Phase::GetStringHashId(v23, v24)}];

      if (!v25)
      {
LABEL_14:

LABEL_36:
        goto LABEL_37;
      }

      v26 = *(v25 + 36);
      v27 = [v12 inputChannelLayout];
      v28 = [v27 layoutTag];

      if (v26 == v28)
      {
        goto LABEL_36;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v44 = [v9 format];
        v45 = [v44 channelLayout];
        v46 = [v45 layoutTag];
        v47 = [v12 inputChannelLayout];
        v48 = [v47 layoutTag];

        if (v46 == v48)
        {
          goto LABEL_36;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_36;
        }

        v57 = [v12 inputChannelLayout];
        v58 = [v57 layoutTag];

        if (v58 == 6553601)
        {
          goto LABEL_36;
        }
      }
    }

    v49 = *MEMORY[0x277CCA450];
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Channel layout mismatch between generator node and ambient mixer.", *MEMORY[0x277CCA450]];
    v61 = v50;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

    v52 = **(Phase::Logger::GetInstance(v51) + 16);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [v36 objectForKeyedSubscript:v49];
      v54 = v53;
      v55 = [v53 UTF8String];
      *buf = 136315650;
      v63 = "PHASEAssetRegistry.mm";
      v64 = 1024;
      v65 = 2907;
      v66 = 2080;
      v67 = v55;
      _os_log_impl(&dword_23A302000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (!a5)
    {
      goto LABEL_33;
    }

    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924646 userInfo:v36];
    goto LABEL_32;
  }

  v12 = [v9 mixerDefinition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    v14 = [v13 assetIdentifier];
    v16 = [v8 getSoundAssetInfo:{Phase::GetStringHashId(v14, v15)}];

    if (v16)
    {
      v17 = *(v16 + 36);
      v18 = [v12 inputChannelLayout];
      v19 = [v18 layoutTag];

      if (v17 == v19)
      {
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v29 = [v9 format];
    v30 = [v29 channelLayout];
    v31 = [v30 layoutTag];
    v32 = [v12 inputChannelLayout];
    v33 = [v32 layoutTag];

    if (v31 == v33)
    {
      goto LABEL_36;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_36;
    }

    v42 = [v12 inputChannelLayout];
    v43 = [v42 layoutTag];

    if (v43 == 6553601)
    {
      goto LABEL_36;
    }
  }

LABEL_17:
  v34 = *MEMORY[0x277CCA450];
  v68 = *MEMORY[0x277CCA450];
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Channel layout mismatch between generator node and channel mixer."];
  v69[0] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];

  v38 = **(Phase::Logger::GetInstance(v37) + 16);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = [v36 objectForKeyedSubscript:v34];
    v40 = v39;
    *buf = 136315650;
    v63 = "PHASEAssetRegistry.mm";
    v64 = 1024;
    v65 = 2856;
    v66 = 2080;
    v67 = [v39 UTF8String];
    _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
  }

  if (!a5)
  {
    goto LABEL_33;
  }

  v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924646 userInfo:v36];
LABEL_32:
  *a5 = v41;
LABEL_33:

  v56 = 0;
LABEL_39:

  return v56;
}

- (id)createParseableDictionaryWithUID:(id)a3 rootNodes:(id)a4 globalParamUIDs:(id)a5 assetRegistry:(id)a6 outError:(id *)a7
{
  v161 = *MEMORY[0x277D85DE8];
  v120 = a3;
  v118 = a4;
  v121 = a5;
  v128 = a6;
  self->_nextNodeId = 0;
  v129 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a7)
  {
    *a7 = 0;
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = v118;
  v12 = [obj countByEnumeratingWithState:&v142 objects:v160 count:16];
  if (!v12)
  {
LABEL_11:
    v126 = self;
    v117 = a7;

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v116 = self->_mixNodes;
    v15 = a7;
    v110 = [(NSMutableSet *)v116 countByEnumeratingWithState:&v138 objects:v159 count:16];
    if (!v110)
    {
LABEL_52:

      v90 = [(NSMutableSet *)v126->_parameters allObjects];
      v116 = [PHASEActionTreeBuilder getParamArray:v90 globalParamUIDs:v121 outError:v117];

      if (!v116)
      {
        v116 = 0;
        goto LABEL_61;
      }

      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v120, @"Name", v116, @"Parameters", v115, @"Submixes", v129, @"Nodes", 0}];
LABEL_62:

      v91 = v115;
      goto LABEL_63;
    }

    v113 = *v139;
LABEL_13:
    v119 = 0;
    while (1)
    {
      if (*v139 != v113)
      {
        objc_enumerationMutation(v116);
      }

      v125 = *(*(&v138 + 1) + 8 * v119);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v123 = v125;
        v122 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v16 = [v123 spatialPipeline];
        v114 = [v16 entries];

        v108 = [v114 countByEnumeratingWithState:&v134 objects:v158 count:16];
        if (v108)
        {
          v109 = *v135;
          do
          {
            for (i = 0; i != v108; ++i)
            {
              if (*v135 != v109)
              {
                objc_enumerationMutation(v114);
              }

              v17 = *(*(&v134 + 1) + 8 * i);
              v18 = [v123 spatialPipeline];
              v19 = [v18 entries];
              v111 = v17;
              v20 = [v19 objectForKeyedSubscript:v17];
              LODWORD(v17) = v20 == 0;

              if (v17)
              {
                std::terminate();
              }

              v21 = [v123 spatialPipeline];
              v22 = [v21 entries];
              v23 = [v22 objectForKeyedSubscript:v111];

              v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v132 = 0u;
              v133 = 0u;
              v130 = 0u;
              v131 = 0u;
              v25 = [v23 tweakParams];
              v26 = [v25 countByEnumeratingWithState:&v130 objects:v157 count:16];
              if (v26)
              {
                v27 = *v131;
                while (2)
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v131 != v27)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v29 = *(*(&v130 + 1) + 8 * j);
                    v30 = [v23 tweakParams];
                    v31 = [v30 objectForKeyedSubscript:v29];

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v24 setObject:v31 forKeyedSubscript:v29];
                    }

                    else
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v92 = *MEMORY[0x277CCA450];
                        v155 = *MEMORY[0x277CCA450];
                        v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected object in tweak param struct.  Must be a number or parameter."];
                        v156 = v93;
                        v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v156 forKeys:&v155 count:1];

                        v96 = **(Phase::Logger::GetInstance(v95) + 16);
                        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                        {
                          v97 = [v94 objectForKeyedSubscript:v92];
                          v98 = v97;
                          v99 = [v97 UTF8String];
                          *buf = 136315650;
                          v150 = "PHASEAssetRegistry.mm";
                          v151 = 1024;
                          v152 = 2978;
                          v153 = 2080;
                          v154 = v99;
                          _os_log_impl(&dword_23A302000, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
                        }

                        if (v117)
                        {
                          *v117 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v94];
                        }

                        goto LABEL_60;
                      }

                      v32 = v31;
                      v33 = [v32 identifier];
                      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"metaparam_", v29];
                      [v24 setObject:v33 forKeyedSubscript:v34];

                      [(PHASEActionTreeBuilder *)v126 addParameter:v32];
                    }
                  }

                  v26 = [v25 countByEnumeratingWithState:&v130 objects:v157 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              v35 = MEMORY[0x277CBEB38];
              v36 = GetSpatialCategoryStringFromSpatialCategoryKey(v111);
              v37 = MEMORY[0x277CCABB0];
              [v23 sendLevel];
              v38 = [v37 numberWithDouble:?];
              v39 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
              v40 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
              v41 = [v35 dictionaryWithObjectsAndKeys:{v36, @"Category", v38, @"Send", v39, @"SendHF", v40, @"SendLF", v24, @"TweakParams", 0}];

              v42 = [v23 sendLevelMetaParameterDefinition];
              LOBYTE(v39) = v42 == 0;

              if ((v39 & 1) == 0)
              {
                v43 = [v23 sendLevelMetaParameterDefinition];
                v44 = [v43 identifier];
                [v41 setObject:v44 forKey:@"SendParameterName"];

                v45 = [v23 sendLevelMetaParameterDefinition];
                [(PHASEActionTreeBuilder *)v126 addParameter:v45];
              }

              [v122 addObject:v41];
            }

            v108 = [v114 countByEnumeratingWithState:&v134 objects:v158 count:16];
          }

          while (v108);
        }

        v46 = MEMORY[0x277CBEB38];
        v47 = [v123 identifier];
        v48 = MEMORY[0x277CCABB0];
        [v123 gain];
        v49 = [v48 numberWithDouble:?];
        v50 = [v46 dictionaryWithObjectsAndKeys:{v47, @"Name", @"spatial", @"Type", v49, @"Gain", v122, @"SpatialCategories", 0}];

        v51 = [v123 gainMetaParameterDefinition];
        LOBYTE(v47) = v51 == 0;

        if ((v47 & 1) == 0)
        {
          v52 = [v123 gainMetaParameterDefinition];
          v53 = [v52 identifier];
          [v50 setObject:v53 forKey:@"GainParameterName"];

          v54 = [v123 gainMetaParameterDefinition];
          [(PHASEActionTreeBuilder *)v126 addParameter:v54];
        }

        v55 = [v123 distanceModelParameters];
        [(PHASEActionTreeBuilder *)v126 fillOutDistanceFieldsWithParams:v55 dictionary:v50];

        v56 = [v123 listenerDirectivityModelParameters];
        [(PHASEActionTreeBuilder *)v126 fillOutDirectivityFieldsWithParams:v56 dictionary:v50 isListener:1];

        v57 = [v123 sourceDirectivityModelParameters];
        [(PHASEActionTreeBuilder *)v126 fillOutDirectivityFieldsWithParams:v57 dictionary:v50 isListener:0];

        v58 = MEMORY[0x277CCABB0];
        [v123 listenerDopplerFactor];
        v59 = [v58 numberWithDouble:?];
        [v50 setObject:v59 forKey:@"ListenerDopplerFactor"];

        v60 = MEMORY[0x277CCABB0];
        [v123 sourceDopplerFactor];
        v61 = [v60 numberWithDouble:?];
        [v50 setObject:v61 forKey:@"SourceDopplerFactor"];

        [v115 addObject:v50];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v62 = v125;
          v63 = MEMORY[0x277CBEB38];
          v64 = [v62 identifier];
          v65 = MEMORY[0x277CCABB0];
          [v62 gain];
          v66 = [v65 numberWithDouble:?];
          v67 = [v62 inputChannelLayout];
          v68 = GetChannelLayoutString([v67 layoutTag]);
          v122 = [v63 dictionaryWithObjectsAndKeys:{v64, @"Name", @"channel", @"Type", v66, @"Gain", v68, @"ChannelLayout", 0}];

          v69 = [v62 gainMetaParameterDefinition];
          LOBYTE(v64) = v69 == 0;

          if ((v64 & 1) == 0)
          {
            v70 = [v62 gainMetaParameterDefinition];
            v71 = [v70 identifier];
            [v122 setObject:v71 forKey:@"GainParameterName"];

            v72 = [v62 gainMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)v126 addParameter:v72];
          }

          [v115 addObject:v122];
          goto LABEL_50;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v15)
          {
            goto LABEL_62;
          }

          v101 = *MEMORY[0x277CCA450];
          v146 = *MEMORY[0x277CCA450];
          v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected object in submix array"];
          v147 = v102;
          v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:&v146 count:1];

          v104 = **(Phase::Logger::GetInstance(v103) + 16);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            v105 = [v123 objectForKeyedSubscript:v101];
            v106 = v105;
            v107 = [v105 UTF8String];
            *buf = 136315650;
            v150 = "PHASEAssetRegistry.mm";
            v151 = 1024;
            v152 = 3084;
            v153 = 2080;
            v154 = v107;
            _os_log_impl(&dword_23A302000, v104, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
          }

          *v117 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v123];
LABEL_60:

LABEL_61:
          v15 = 0;
          goto LABEL_62;
        }

        v73 = v125;
        [v73 orientation];
        v124 = v74;
        v75 = [MEMORY[0x277CCABB0] numberWithFloat:*&v74];
        v148[0] = v75;
        HIDWORD(v76) = DWORD1(v124);
        LODWORD(v76) = DWORD1(v124);
        v77 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
        v148[1] = v77;
        v78 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v124), DWORD2(v124)))}];
        v148[2] = v78;
        v79 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v124), HIDWORD(v124)))}];
        v148[3] = v79;
        v122 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:4];

        v80 = MEMORY[0x277CBEB38];
        v81 = [v73 identifier];
        v82 = MEMORY[0x277CCABB0];
        [v73 gain];
        v83 = [v82 numberWithDouble:?];
        v84 = [v73 inputChannelLayout];
        v85 = GetChannelLayoutString([v84 layoutTag]);
        v50 = [v80 dictionaryWithObjectsAndKeys:{v81, @"Name", @"ambient", @"Type", v83, @"Gain", v122, @"Orientation", v85, @"ChannelLayout", 0}];

        v86 = [v73 gainMetaParameterDefinition];
        LOBYTE(v84) = v86 == 0;

        if ((v84 & 1) == 0)
        {
          v87 = [v73 gainMetaParameterDefinition];
          v88 = [v87 identifier];
          [v50 setObject:v88 forKey:@"GainParameterName"];

          v89 = [v73 gainMetaParameterDefinition];
          [(PHASEActionTreeBuilder *)v126 addParameter:v89];
        }

        [v115 addObject:v50];
      }

LABEL_50:
      ++v119;
      v15 = v117;
      if (v119 == v110)
      {
        v110 = [(NSMutableSet *)v116 countByEnumeratingWithState:&v138 objects:v159 count:16];
        if (v110)
        {
          goto LABEL_13;
        }

        goto LABEL_52;
      }
    }
  }

  v13 = *v143;
LABEL_5:
  v14 = 0;
  while (1)
  {
    if (*v143 != v13)
    {
      objc_enumerationMutation(obj);
    }

    if (![(PHASEActionTreeBuilder *)self processNode:*(*(&v142 + 1) + 8 * v14) withArray:v129 assetRegistry:v128 outError:a7])
    {
      break;
    }

    if (v12 == ++v14)
    {
      v12 = [obj countByEnumeratingWithState:&v142 objects:v160 count:16];
      if (!v12)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  v15 = 0;
  v91 = obj;
LABEL_63:

  return v15;
}

@end