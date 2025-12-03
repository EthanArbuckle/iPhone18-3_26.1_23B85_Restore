@interface PHASEActionTreeBuilder
+ (id)getParamArray:(id)array globalParamUIDs:(id)ds outError:(id *)error;
- (BOOL)addParameter:(id)parameter;
- (BOOL)checkNodeForValidChannelLayouts:(id)layouts assetRegistry:(id)registry outError:(id *)error;
- (BOOL)processNode:(id)node withArray:(id)array assetRegistry:(id)registry outError:(id *)error;
- (PHASEActionTreeBuilder)init;
- (id)createParseableDictionaryWithUID:(id)d rootNodes:(id)nodes globalParamUIDs:(id)ds assetRegistry:(id)registry outError:(id *)error;
- (id)generateNodeDictionary:(id)dictionary outError:(id *)error;
- (void)fillGeneratorNodeEntries:(id)entries dictionary:(id)dictionary;
- (void)fillOutDirectivityFieldsWithParams:(id)params dictionary:(id)dictionary isListener:(BOOL)listener;
- (void)fillOutDistanceFieldsWithParams:(id)params dictionary:(id)dictionary;
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

- (BOOL)addParameter:(id)parameter
{
  parameterCopy = parameter;
  [(NSMutableSet *)self->_parameters addObject:parameterCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = parameterCopy;
    inputMetaParameterDefinition = [v5 inputMetaParameterDefinition];

    if (inputMetaParameterDefinition)
    {
      inputMetaParameterDefinition2 = [v5 inputMetaParameterDefinition];
      v8 = [(PHASEActionTreeBuilder *)self addParameter:inputMetaParameterDefinition2];
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

- (void)fillGeneratorNodeEntries:(id)entries dictionary:(id)dictionary
{
  entriesCopy = entries;
  dictionaryCopy = dictionary;
  identifier = [entriesCopy identifier];
  [dictionaryCopy setObject:identifier forKey:@"Name"];

  v8 = GetCalibrationModeString([entriesCopy calibrationMode]);
  [dictionaryCopy setObject:v8 forKey:@"CalibrationMode"];

  group2 = 0x277CCA000;
  v10 = MEMORY[0x277CCABB0];
  [entriesCopy level];
  v11 = [v10 numberWithDouble:?];
  [dictionaryCopy setObject:v11 forKey:@"Level"];

  v12 = MEMORY[0x277CCABB0];
  [entriesCopy rate];
  v13 = [v12 numberWithDouble:?];
  [dictionaryCopy setObject:v13 forKey:@"Rate"];

  group = [entriesCopy group];
  if (group)
  {
    group2 = [entriesCopy group];
    identifier2 = [group2 identifier];
  }

  else
  {
    identifier2 = &stru_284D3D208;
  }

  [dictionaryCopy setObject:identifier2 forKey:@"Group"];
  if (group)
  {
  }

  gainMetaParameterDefinition = [entriesCopy gainMetaParameterDefinition];

  if (gainMetaParameterDefinition)
  {
    gainMetaParameterDefinition2 = [entriesCopy gainMetaParameterDefinition];
    [(PHASEActionTreeBuilder *)self addParameter:gainMetaParameterDefinition2];

    gainMetaParameterDefinition3 = [entriesCopy gainMetaParameterDefinition];
    identifier3 = [gainMetaParameterDefinition3 identifier];
    [dictionaryCopy setObject:identifier3 forKey:@"GainParameterName"];
  }

  rateMetaParameterDefinition = [entriesCopy rateMetaParameterDefinition];

  if (rateMetaParameterDefinition)
  {
    rateMetaParameterDefinition2 = [entriesCopy rateMetaParameterDefinition];
    [(PHASEActionTreeBuilder *)self addParameter:rateMetaParameterDefinition2];

    rateMetaParameterDefinition3 = [entriesCopy rateMetaParameterDefinition];
    identifier4 = [rateMetaParameterDefinition3 identifier];
    [dictionaryCopy setObject:identifier4 forKey:@"RateParameterName"];
  }

  mixerDefinition = [entriesCopy mixerDefinition];
  identifier5 = [mixerDefinition identifier];
  [dictionaryCopy setObject:identifier5 forKey:@"Submix"];
}

- (id)generateNodeDictionary:(id)dictionary outError:(id *)error
{
  v251 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (error)
  {
    *error = 0;
  }

  errorCopy = error;
  v204 = dictionaryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    selfCopy = self;
    mixNodes = self->_mixNodes;
    mixerDefinition = [v8 mixerDefinition];
    [(NSMutableSet *)mixNodes addObject:mixerDefinition];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"sampler" forKey:@"Type"];
    [(PHASEActionTreeBuilder *)selfCopy fillGeneratorNodeEntries:v8 dictionary:v12];
    assetIdentifier = [v8 assetIdentifier];
    [v12 setObject:assetIdentifier forKey:@"Asset"];

    v14 = GetCullOptionString([v8 cullOption]);
    [v12 setObject:v14 forKey:@"CullOption"];

    targetLKFS = GetPlaybackModeString([v8 playbackMode]);
    [v12 setObject:targetLKFS forKey:@"PlaybackMode"];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    selfCopy2 = self;
    v17 = self->_mixNodes;
    mixerDefinition2 = [v8 mixerDefinition];
    [(NSMutableSet *)v17 addObject:mixerDefinition2];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"pushstream" forKey:@"Type"];
    [(PHASEActionTreeBuilder *)selfCopy2 fillGeneratorNodeEntries:v8 dictionary:v12];
    format = [v8 format];
    [v12 setObject:format forKey:@"Format"];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "normalize")}];
    [v12 setObject:v20 forKey:@"Normalize"];

    targetLKFS = [v8 targetLKFS];
    [v12 setObject:targetLKFS forKey:@"TargetLKFS"];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    selfCopy3 = self;
    v22 = self->_mixNodes;
    mixerDefinition3 = [v8 mixerDefinition];
    [(NSMutableSet *)v22 addObject:mixerDefinition3];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"externaloutputpullstream" forKey:@"Type"];
    [(PHASEActionTreeBuilder *)selfCopy3 fillGeneratorNodeEntries:v8 dictionary:v12];
    uuid = [v8 uuid];
    uUIDString = [uuid UUIDString];
    [v12 setObject:uUIDString forKey:@"UUID"];

    v26 = GetChannelLayoutString([v8 channelLayoutTag]);
    [v12 setObject:v26 forKey:@"ChannelLayoutTag"];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "normalize")}];
    [v12 setObject:v27 forKey:@"Normalize"];

    targetLKFS = [v8 targetLKFS];
    [v12 setObject:targetLKFS forKey:@"TargetLKFS"];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    selfCopy4 = self;
    v29 = self->_mixNodes;
    mixerDefinition4 = [v8 mixerDefinition];
    [(NSMutableSet *)v29 addObject:mixerDefinition4];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"pullstream" forKey:@"Type"];
    [(PHASEActionTreeBuilder *)selfCopy4 fillGeneratorNodeEntries:v8 dictionary:v12];
    format2 = [v8 format];
    [v12 setObject:format2 forKey:@"Format"];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "normalize")}];
    [v12 setObject:v32 forKey:@"Normalize"];

    targetLKFS = [v8 targetLKFS];
    [v12 setObject:targetLKFS forKey:@"TargetLKFS"];
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
          identifier = [*(v34 + 8) identifier];
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
            segments = [v35 segments];
            v44 = [segments count] > j;

            if (!v44)
            {
              break;
            }

            v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v46 = MEMORY[0x277CCABB0];
            segments2 = [v35 segments];
            v48 = [segments2 objectAtIndexedSubscript:j];
            [v48 endPoint];
            v49 = [v46 numberWithDouble:?];
            [v45 setValue:v49 forKey:@"InputValue"];

            v50 = MEMORY[0x277CCABB0];
            segments3 = [v35 segments];
            v52 = [segments3 objectAtIndexedSubscript:j];
            [v52 endPoint];
            v54 = [v50 numberWithDouble:v53];
            [v45 setValue:v54 forKey:@"OutputValue"];

            segments4 = [v35 segments];
            v56 = [segments4 objectAtIndexedSubscript:j];
            v57 = GetCurveTypeString([v56 curveType]);
            [v45 setValue:v57 forKey:@"CurveType"];

            [v41 addObject:v45];
          }

          [v216 setValue:v41 forKey:@"Segments"];

          v58 = [v209 dictionaryWithObjectsAndKeys:{identifier, @"SubTreeNodeName", v216, @"Envelope", 0}];

          [v207 addObject:v58];
        }

        v208 = [obj countByEnumeratingWithState:&v231 objects:v250 count:16];
      }

      while (v208);
    }

    blendParameterDefinition = [v202 blendParameterDefinition];
    v60 = blendParameterDefinition == 0;

    if (!v60)
    {
      blendParameterDefinition2 = [v202 blendParameterDefinition];
      [(PHASEActionTreeBuilder *)self addParameter:blendParameterDefinition2];

      v62 = MEMORY[0x277CBEB38];
      identifier2 = [v202 identifier];
      blendParameterDefinition3 = [v202 blendParameterDefinition];
      identifier3 = [blendParameterDefinition3 identifier];
      v12 = [v62 dictionaryWithObjectsAndKeys:{identifier2, @"Name", @"blend", @"Type", v207, @"Children", identifier3, @"BlendParameter", 0}];

      blendParameterDefinition4 = [v202 blendParameterDefinition];
      [(PHASEActionTreeBuilder *)v201 addParameter:blendParameterDefinition4];
LABEL_54:

      goto LABEL_12;
    }

    spatialMixerDefinitionForDistance = [v202 spatialMixerDefinitionForDistance];
    v107 = spatialMixerDefinitionForDistance == 0;

    if (!v107)
    {
      v108 = self->_mixNodes;
      spatialMixerDefinitionForDistance2 = [v202 spatialMixerDefinitionForDistance];
      [(NSMutableSet *)v108 addObject:spatialMixerDefinitionForDistance2];

      v110 = MEMORY[0x277CBEB38];
      blendParameterDefinition4 = [v202 identifier];
      spatialMixerDefinitionForDistance3 = [v202 spatialMixerDefinitionForDistance];
      identifier4 = [spatialMixerDefinitionForDistance3 identifier];
      v12 = [v110 dictionaryWithObjectsAndKeys:{blendParameterDefinition4, @"Name", @"blend", @"Type", v207, @"Children", @"auto_distance", @"BlendParameter", identifier4, @"DistanceSubmixName", 0}];

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
      uTF8String = [v190 UTF8String];
      *buf = 136315650;
      v243 = "PHASEAssetRegistry.mm";
      v244 = 1024;
      v245 = 2349;
      v246 = 2080;
      v247 = uTF8String;
      _os_log_impl(&dword_23A302000, v189, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (errorCopy)
    {
      *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v187];
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
    subtrees = [v211 subtrees];
    v214 = subtrees;
    v68 = [subtrees countByEnumeratingWithState:&v227 objects:v241 count:16];
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
          subtree = [v71 subtree];
          v73 = subtree == 0;

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
              uTF8String2 = [v103 UTF8String];
              *buf = 136315650;
              v243 = "PHASEAssetRegistry.mm";
              v244 = 1024;
              v245 = 2367;
              v246 = 2080;
              v247 = uTF8String2;
              _os_log_impl(&dword_23A302000, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
            }

            if (errorCopy)
            {
              *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v100];
            }

            goto LABEL_95;
          }

          v74 = MEMORY[0x277CBEAC0];
          subtree2 = [v71 subtree];
          identifier5 = [subtree2 identifier];
          switchValue = [v71 switchValue];
          v78 = [v74 dictionaryWithObjectsAndKeys:{identifier5, @"SubTreeNodeName", switchValue, @"SwitchValue", 0}];

          [v217 addObject:v78];
        }

        subtrees = v214;
        v68 = [v214 countByEnumeratingWithState:&v227 objects:v241 count:16];
        if (v68)
        {
          continue;
        }

        break;
      }
    }

    switchMetaParameterDefinition = [v211 switchMetaParameterDefinition];
    [(PHASEActionTreeBuilder *)self addParameter:switchMetaParameterDefinition];

    v80 = MEMORY[0x277CBEB38];
    identifier6 = [v211 identifier];
    switchMetaParameterDefinition2 = [v211 switchMetaParameterDefinition];
    identifier7 = [switchMetaParameterDefinition2 identifier];
    v12 = [v80 dictionaryWithObjectsAndKeys:{identifier6, @"Name", @"switch", @"Type", identifier7, @"SwitchParameter", v217, @"Children", 0}];
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
      subtrees2 = [v212 subtrees];
      v215 = subtrees2;
      v85 = [subtrees2 countByEnumeratingWithState:&v223 objects:v238 count:16];
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
            subtree3 = [v88 subtree];
            identifier8 = [subtree3 identifier];
            v92 = MEMORY[0x277CCABB0];
            [v88 weight];
            v93 = [v92 numberWithDouble:?];
            v94 = [v89 dictionaryWithObjectsAndKeys:{identifier8, @"SubTreeNodeName", v93, @"Weight", 0}];

            [v218 addObject:v94];
          }

          subtrees2 = v215;
          v85 = [v215 countByEnumeratingWithState:&v223 objects:v238 count:16];
        }

        while (v85);
      }

      v95 = MEMORY[0x277CBEB38];
      identifier9 = [v212 identifier];
      v97 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v212, "uniqueSelectionQueueLength")}];
      v12 = [v95 dictionaryWithObjectsAndKeys:{identifier9, @"Name", @"random", @"Type", v97, @"UniqueSelectionQueueLength", v218, @"Children", 0}];
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
        children = [v113 children];
        v116 = [children countByEnumeratingWithState:&v219 objects:v237 count:16];
        if (v116)
        {
          v117 = *v220;
          do
          {
            for (n = 0; n != v116; ++n)
            {
              if (*v220 != v117)
              {
                objc_enumerationMutation(children);
              }

              identifier10 = [*(*(&v219 + 1) + 8 * n) identifier];
              [v114 addObject:identifier10];
            }

            v116 = [children countByEnumeratingWithState:&v219 objects:v237 count:16];
          }

          while (v116);
        }

        v120 = MEMORY[0x277CBEB38];
        identifier11 = [v113 identifier];
        v12 = [v120 dictionaryWithObjectsAndKeys:{identifier11, @"Name", @"container", @"Type", v114, @"Children", 0}];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
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
              uTF8String3 = [v198 UTF8String];
              *buf = 136315650;
              v243 = "PHASEAssetRegistry.mm";
              v244 = 1024;
              v245 = 2534;
              v246 = 2080;
              v247 = uTF8String3;
              _os_log_impl(&dword_23A302000, v197, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
            }

            *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v195];
          }

LABEL_95:
          v12 = 0;
          goto LABEL_12;
        }

        v122 = v7;
        selfCopy5 = self;
        v124 = self->_mixNodes;
        mixerDefinition5 = [v122 mixerDefinition];
        [(NSMutableSet *)v124 addObject:mixerDefinition5];

        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v12 setObject:@"procedure" forKey:@"Type"];
        [(PHASEActionTreeBuilder *)selfCopy5 fillGeneratorNodeEntries:v122 dictionary:v12];
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

          fallRateMetaParameterDefinition = [v130 fallRateMetaParameterDefinition];

          if (fallRateMetaParameterDefinition)
          {
            fallRateMetaParameterDefinition2 = [v130 fallRateMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:fallRateMetaParameterDefinition2];

            fallRateMetaParameterDefinition3 = [v130 fallRateMetaParameterDefinition];
            identifier12 = [fallRateMetaParameterDefinition3 identifier];
            [v12 setObject:identifier12 forKey:@"FallRateParameterName"];
          }

          averageDropDiameterMetaParameterDefinition = [v130 averageDropDiameterMetaParameterDefinition];

          if (averageDropDiameterMetaParameterDefinition)
          {
            averageDropDiameterMetaParameterDefinition2 = [v130 averageDropDiameterMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:averageDropDiameterMetaParameterDefinition2];

            averageDropDiameterMetaParameterDefinition3 = [v130 averageDropDiameterMetaParameterDefinition];
            identifier13 = [averageDropDiameterMetaParameterDefinition3 identifier];
            [v12 setObject:identifier13 forKey:@"AverageDropDiameterParameterName"];
          }

          maxDropDiameterMetaParameterDefinition = [v130 maxDropDiameterMetaParameterDefinition];

          if (maxDropDiameterMetaParameterDefinition)
          {
            maxDropDiameterMetaParameterDefinition2 = [v130 maxDropDiameterMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:maxDropDiameterMetaParameterDefinition2];

            maxDropDiameterMetaParameterDefinition3 = [v130 maxDropDiameterMetaParameterDefinition];
            identifier14 = [maxDropDiameterMetaParameterDefinition3 identifier];
            [v12 setObject:identifier14 forKey:@"MaxDropDiameterParameterName"];
          }

          impulseShapeMetaParameterDefinition = [v130 impulseShapeMetaParameterDefinition];

          if (impulseShapeMetaParameterDefinition)
          {
            impulseShapeMetaParameterDefinition2 = [v130 impulseShapeMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:impulseShapeMetaParameterDefinition2];

            impulseShapeMetaParameterDefinition3 = [v130 impulseShapeMetaParameterDefinition];
            identifier15 = [impulseShapeMetaParameterDefinition3 identifier];
            [v12 setObject:identifier15 forKey:@"ImpulseShapeParameterName"];
          }

          impulseGainExponentMetaParameterDefinition = [v130 impulseGainExponentMetaParameterDefinition];

          if (impulseGainExponentMetaParameterDefinition)
          {
            impulseGainExponentMetaParameterDefinition2 = [v130 impulseGainExponentMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:impulseGainExponentMetaParameterDefinition2];

            impulseGainExponentMetaParameterDefinition3 = [v130 impulseGainExponentMetaParameterDefinition];
            identifier16 = [impulseGainExponentMetaParameterDefinition3 identifier];
            [v12 setObject:identifier16 forKey:@"ImpulseGainExponentParameterName"];
          }

          impulseGainMetaParameterDefinition = [v130 impulseGainMetaParameterDefinition];

          if (impulseGainMetaParameterDefinition)
          {
            impulseGainMetaParameterDefinition2 = [v130 impulseGainMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:impulseGainMetaParameterDefinition2];

            impulseGainMetaParameterDefinition3 = [v130 impulseGainMetaParameterDefinition];
            identifier17 = [impulseGainMetaParameterDefinition3 identifier];
            [v12 setObject:identifier17 forKey:@"ImpulseGainParameterName"];
          }

          chirpRiseRateMetaParameterDefinition = [v130 chirpRiseRateMetaParameterDefinition];

          if (chirpRiseRateMetaParameterDefinition)
          {
            chirpRiseRateMetaParameterDefinition2 = [v130 chirpRiseRateMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:chirpRiseRateMetaParameterDefinition2];

            chirpRiseRateMetaParameterDefinition3 = [v130 chirpRiseRateMetaParameterDefinition];
            identifier18 = [chirpRiseRateMetaParameterDefinition3 identifier];
            [v12 setObject:identifier18 forKey:@"ChirpRiseRateParameterName"];
          }

          baseFrequencyMultiplierMetaParameterDefinition = [v130 baseFrequencyMultiplierMetaParameterDefinition];

          if (baseFrequencyMultiplierMetaParameterDefinition)
          {
            baseFrequencyMultiplierMetaParameterDefinition2 = [v130 baseFrequencyMultiplierMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:baseFrequencyMultiplierMetaParameterDefinition2];

            baseFrequencyMultiplierMetaParameterDefinition3 = [v130 baseFrequencyMultiplierMetaParameterDefinition];
            identifier19 = [baseFrequencyMultiplierMetaParameterDefinition3 identifier];
            [v12 setObject:identifier19 forKey:@"BaseFrequencyMultiplierParameterName"];
          }

          bubbleGainMetaParameterDefinition = [v130 bubbleGainMetaParameterDefinition];

          if (bubbleGainMetaParameterDefinition)
          {
            bubbleGainMetaParameterDefinition2 = [v130 bubbleGainMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy5 addParameter:bubbleGainMetaParameterDefinition2];

            bubbleGainMetaParameterDefinition3 = [v130 bubbleGainMetaParameterDefinition];
            identifier20 = [bubbleGainMetaParameterDefinition3 identifier];
            [v12 setObject:identifier20 forKey:@"BubbleGainParameterName"];
          }
        }
      }
    }
  }

LABEL_12:

  return v12;
}

- (BOOL)processNode:(id)node withArray:(id)array assetRegistry:(id)registry outError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  arrayCopy = array;
  registryCopy = registry;
  if (error)
  {
    *error = 0;
  }

  if ([(PHASEActionTreeBuilder *)self checkNodeForValidChannelLayouts:nodeCopy assetRegistry:registryCopy outError:error])
  {
    v13 = [(PHASEActionTreeBuilder *)self generateNodeDictionary:nodeCopy outError:error];
    if (v13)
    {
      [arrayCopy addObject:v13];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      children = [nodeCopy children];
      v15 = [children countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = *v21;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(children);
            }

            if (![(PHASEActionTreeBuilder *)self processNode:*(*(&v20 + 1) + 8 * i) withArray:arrayCopy assetRegistry:registryCopy outError:error])
            {
              v18 = 0;
              goto LABEL_16;
            }
          }

          v15 = [children countByEnumeratingWithState:&v20 objects:v24 count:16];
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

+ (id)getParamArray:(id)array globalParamUIDs:(id)ds outError:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  dsCopy = ds;
  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (error)
  {
    *error = 0;
  }

  errorCopy = error;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = arrayCopy;
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
        identifier = [v69 identifier];
        v8 = [dsCopy containsObject:identifier];

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
            envelope = [v65 envelope];
            segments = [envelope segments];

            v12 = [segments countByEnumeratingWithState:&v71 objects:v87 count:16];
            if (v12)
            {
              v13 = *v72;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v72 != v13)
                  {
                    objc_enumerationMutation(segments);
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

                v12 = [segments countByEnumeratingWithState:&v71 objects:v87 count:16];
              }

              while (v12);
            }

            v24 = MEMORY[0x277CBEAC0];
            v25 = MEMORY[0x277CCABB0];
            envelope2 = [v65 envelope];
            [envelope2 startPoint];
            v27 = [v25 numberWithDouble:?];
            v28 = MEMORY[0x277CCABB0];
            envelope3 = [v65 envelope];
            [envelope3 startPoint];
            v31 = [v28 numberWithDouble:v30];
            v32 = [v24 dictionaryWithObjectsAndKeys:{v27, @"StartInputValue", v31, @"StartOutputValue", v9, @"Segments", 0}];

            v33 = MEMORY[0x277CBEAC0];
            identifier2 = [v65 identifier];
            inputMetaParameterDefinition = [v65 inputMetaParameterDefinition];
            identifier3 = [inputMetaParameterDefinition identifier];
            v37 = [v33 dictionaryWithObjectsAndKeys:{@"mapped_range", @"Type", identifier2, @"Name", identifier3, @"LinkedInputParameter", @"float", @"InputType", @"float", @"OutputType", v32, @"Envelope", 0}];

            [v63 addObject:v37];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v69;
              v39 = MEMORY[0x277CBEAC0];
              identifier4 = [v38 identifier];
              v41 = MEMORY[0x277CCABB0];
              [v38 minimum];
              v42 = [v41 numberWithDouble:?];
              v43 = MEMORY[0x277CCABB0];
              [v38 maximum];
              v44 = [v43 numberWithDouble:?];
              value = [v38 value];
              v9 = [v39 dictionaryWithObjectsAndKeys:{identifier4, @"Name", @"input", @"Type", @"float", @"InputType", v42, @"RangeMin", v44, @"RangeMax", value, @"DefaultValue", 0}];

              [v63 addObject:v9];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy)
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
                    uTF8String = [v57 UTF8String];
                    *buf = 136315650;
                    v80 = "PHASEAssetRegistry.mm";
                    v81 = 1024;
                    v82 = 2676;
                    v83 = 2080;
                    v84 = uTF8String;
                    _os_log_impl(&dword_23A302000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
                  }

                  *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v54];
                }

                v51 = 0;
                v50 = v63;
                goto LABEL_31;
              }

              v46 = v69;
              v47 = MEMORY[0x277CBEAC0];
              identifier5 = [v46 identifier];
              value2 = [v46 value];
              v9 = [v47 dictionaryWithObjectsAndKeys:{identifier5, @"Name", @"input", @"Type", @"string", @"InputType", value2, @"DefaultValue", 0}];

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

- (void)fillOutDistanceFieldsWithParams:(id)params dictionary:(id)dictionary
{
  v37 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  dictionaryCopy = dictionary;
  v30 = dictionaryCopy;
  v31 = paramsCopy;
  if (paramsCopy)
  {
    fadeOutParameters = [paramsCopy fadeOutParameters];

    if (fadeOutParameters)
    {
      v8 = MEMORY[0x277CCABB0];
      fadeOutParameters2 = [paramsCopy fadeOutParameters];
      [fadeOutParameters2 cullDistance];
      v10 = [v8 numberWithDouble:?];
      [v30 setObject:v10 forKey:@"FadeOutCullDistance"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v30 setObject:@"geometric_spreading" forKey:@"DistanceModelType"];
      v11 = paramsCopy;
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
        v29 = paramsCopy;
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        envelope = [v29 envelope];
        segments = [envelope segments];

        v17 = [segments countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v17)
        {
          v18 = *v33;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(segments);
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

            v17 = [segments countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v17);
        }

        [v30 setObject:v14 forKey:@"EnvelopeSegments"];
      }
    }
  }

  else
  {
    [dictionaryCopy setObject:@"none" forKey:@"DistanceModelType"];
  }
}

- (void)fillOutDirectivityFieldsWithParams:(id)params dictionary:(id)dictionary isListener:(BOOL)listener
{
  listenerCopy = listener;
  v68 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  dictionaryCopy = dictionary;
  v52 = dictionaryCopy;
  v53 = paramsCopy;
  if (paramsCopy)
  {
    v51 = listenerCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (listenerCopy)
      {
        v9 = @"ListenerDirectivityModelType";
      }

      else
      {
        v9 = @"SourceDirectivityModelType";
      }

      [v52 setObject:@"cardioid" forKey:v9];
      v54 = paramsCopy;
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
        if (listenerCopy)
        {
          v25 = @"ListenerDirectivityModelType";
        }

        else
        {
          v25 = @"SourceDirectivityModelType";
        }

        [v52 setObject:@"cone" forKey:v25];
        v50 = paramsCopy;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        obja = objc_alloc_init(MEMORY[0x277CBEB18]);
        subbandParameters = [v50 subbandParameters];
        v26 = [subbandParameters countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v26)
        {
          v27 = *v59;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v59 != v27)
              {
                objc_enumerationMutation(subbandParameters);
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

            v26 = [subbandParameters countByEnumeratingWithState:&v58 objects:v66 count:16];
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
          if (listenerCopy)
          {
            v41 = @"ListenerDirectivityModelType";
          }

          else
          {
            v41 = @"SourceDirectivityModelType";
          }

          [v52 setObject:@"sphericalcap" forKey:v41];
          v42 = paramsCopy;
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
    if (listenerCopy)
    {
      v24 = @"ListenerDirectivityModelType";
    }

    else
    {
      v24 = @"SourceDirectivityModelType";
    }

    [dictionaryCopy setObject:@"none" forKey:v24];
  }
}

- (BOOL)checkNodeForValidChannelLayouts:(id)layouts assetRegistry:(id)registry outError:(id *)error
{
  v69[1] = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  registryCopy = registry;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_38;
  }

  v9 = layoutsCopy;
  mixerDefinition = [v9 mixerDefinition];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    mixerDefinition2 = [v9 mixerDefinition];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
LABEL_37:

LABEL_38:
      v56 = 1;
      goto LABEL_39;
    }

    mixerDefinition3 = [v9 mixerDefinition];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v9;
      assetIdentifier = [v22 assetIdentifier];
      v25 = [registryCopy getSoundAssetInfo:{Phase::GetStringHashId(assetIdentifier, v24)}];

      if (!v25)
      {
LABEL_14:

LABEL_36:
        goto LABEL_37;
      }

      v26 = *(v25 + 36);
      inputChannelLayout = [mixerDefinition3 inputChannelLayout];
      layoutTag = [inputChannelLayout layoutTag];

      if (v26 == layoutTag)
      {
        goto LABEL_36;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        format = [v9 format];
        channelLayout = [format channelLayout];
        layoutTag2 = [channelLayout layoutTag];
        inputChannelLayout2 = [mixerDefinition3 inputChannelLayout];
        layoutTag3 = [inputChannelLayout2 layoutTag];

        if (layoutTag2 == layoutTag3)
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

        inputChannelLayout3 = [mixerDefinition3 inputChannelLayout];
        layoutTag4 = [inputChannelLayout3 layoutTag];

        if (layoutTag4 == 6553601)
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
      uTF8String = [v53 UTF8String];
      *buf = 136315650;
      v63 = "PHASEAssetRegistry.mm";
      v64 = 1024;
      v65 = 2907;
      v66 = 2080;
      uTF8String2 = uTF8String;
      _os_log_impl(&dword_23A302000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (!error)
    {
      goto LABEL_33;
    }

    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924646 userInfo:v36];
    goto LABEL_32;
  }

  mixerDefinition3 = [v9 mixerDefinition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    assetIdentifier2 = [v13 assetIdentifier];
    v16 = [registryCopy getSoundAssetInfo:{Phase::GetStringHashId(assetIdentifier2, v15)}];

    if (v16)
    {
      v17 = *(v16 + 36);
      inputChannelLayout4 = [mixerDefinition3 inputChannelLayout];
      layoutTag5 = [inputChannelLayout4 layoutTag];

      if (v17 == layoutTag5)
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
    format2 = [v9 format];
    channelLayout2 = [format2 channelLayout];
    layoutTag6 = [channelLayout2 layoutTag];
    inputChannelLayout5 = [mixerDefinition3 inputChannelLayout];
    layoutTag7 = [inputChannelLayout5 layoutTag];

    if (layoutTag6 == layoutTag7)
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

    inputChannelLayout6 = [mixerDefinition3 inputChannelLayout];
    layoutTag8 = [inputChannelLayout6 layoutTag];

    if (layoutTag8 == 6553601)
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
    uTF8String2 = [v39 UTF8String];
    _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
  }

  if (!error)
  {
    goto LABEL_33;
  }

  v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924646 userInfo:v36];
LABEL_32:
  *error = v41;
LABEL_33:

  v56 = 0;
LABEL_39:

  return v56;
}

- (id)createParseableDictionaryWithUID:(id)d rootNodes:(id)nodes globalParamUIDs:(id)ds assetRegistry:(id)registry outError:(id *)error
{
  v161 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nodesCopy = nodes;
  dsCopy = ds;
  registryCopy = registry;
  self->_nextNodeId = 0;
  v129 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (error)
  {
    *error = 0;
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = nodesCopy;
  v12 = [obj countByEnumeratingWithState:&v142 objects:v160 count:16];
  if (!v12)
  {
LABEL_11:
    selfCopy = self;
    errorCopy = error;

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v116 = self->_mixNodes;
    errorCopy2 = error;
    v110 = [(NSMutableSet *)v116 countByEnumeratingWithState:&v138 objects:v159 count:16];
    if (!v110)
    {
LABEL_52:

      allObjects = [(NSMutableSet *)selfCopy->_parameters allObjects];
      v116 = [PHASEActionTreeBuilder getParamArray:allObjects globalParamUIDs:dsCopy outError:errorCopy];

      if (!v116)
      {
        v116 = 0;
        goto LABEL_61;
      }

      errorCopy2 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{dCopy, @"Name", v116, @"Parameters", v115, @"Submixes", v129, @"Nodes", 0}];
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
        spatialPipeline = [v123 spatialPipeline];
        entries = [spatialPipeline entries];

        v108 = [entries countByEnumeratingWithState:&v134 objects:v158 count:16];
        if (v108)
        {
          v109 = *v135;
          do
          {
            for (i = 0; i != v108; ++i)
            {
              if (*v135 != v109)
              {
                objc_enumerationMutation(entries);
              }

              v17 = *(*(&v134 + 1) + 8 * i);
              spatialPipeline2 = [v123 spatialPipeline];
              entries2 = [spatialPipeline2 entries];
              v111 = v17;
              v20 = [entries2 objectForKeyedSubscript:v17];
              LODWORD(v17) = v20 == 0;

              if (v17)
              {
                std::terminate();
              }

              spatialPipeline3 = [v123 spatialPipeline];
              entries3 = [spatialPipeline3 entries];
              v23 = [entries3 objectForKeyedSubscript:v111];

              v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v132 = 0u;
              v133 = 0u;
              v130 = 0u;
              v131 = 0u;
              tweakParams = [v23 tweakParams];
              v26 = [tweakParams countByEnumeratingWithState:&v130 objects:v157 count:16];
              if (v26)
              {
                v27 = *v131;
                while (2)
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v131 != v27)
                    {
                      objc_enumerationMutation(tweakParams);
                    }

                    v29 = *(*(&v130 + 1) + 8 * j);
                    tweakParams2 = [v23 tweakParams];
                    v31 = [tweakParams2 objectForKeyedSubscript:v29];

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
                          uTF8String = [v97 UTF8String];
                          *buf = 136315650;
                          v150 = "PHASEAssetRegistry.mm";
                          v151 = 1024;
                          v152 = 2978;
                          v153 = 2080;
                          v154 = uTF8String;
                          _os_log_impl(&dword_23A302000, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
                        }

                        if (errorCopy)
                        {
                          *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v94];
                        }

                        goto LABEL_60;
                      }

                      v32 = v31;
                      identifier = [v32 identifier];
                      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"metaparam_", v29];
                      [v24 setObject:identifier forKeyedSubscript:v34];

                      [(PHASEActionTreeBuilder *)selfCopy addParameter:v32];
                    }
                  }

                  v26 = [tweakParams countByEnumeratingWithState:&v130 objects:v157 count:16];
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

              sendLevelMetaParameterDefinition = [v23 sendLevelMetaParameterDefinition];
              LOBYTE(v39) = sendLevelMetaParameterDefinition == 0;

              if ((v39 & 1) == 0)
              {
                sendLevelMetaParameterDefinition2 = [v23 sendLevelMetaParameterDefinition];
                identifier2 = [sendLevelMetaParameterDefinition2 identifier];
                [v41 setObject:identifier2 forKey:@"SendParameterName"];

                sendLevelMetaParameterDefinition3 = [v23 sendLevelMetaParameterDefinition];
                [(PHASEActionTreeBuilder *)selfCopy addParameter:sendLevelMetaParameterDefinition3];
              }

              [v122 addObject:v41];
            }

            v108 = [entries countByEnumeratingWithState:&v134 objects:v158 count:16];
          }

          while (v108);
        }

        v46 = MEMORY[0x277CBEB38];
        identifier3 = [v123 identifier];
        v48 = MEMORY[0x277CCABB0];
        [v123 gain];
        v49 = [v48 numberWithDouble:?];
        v50 = [v46 dictionaryWithObjectsAndKeys:{identifier3, @"Name", @"spatial", @"Type", v49, @"Gain", v122, @"SpatialCategories", 0}];

        gainMetaParameterDefinition = [v123 gainMetaParameterDefinition];
        LOBYTE(identifier3) = gainMetaParameterDefinition == 0;

        if ((identifier3 & 1) == 0)
        {
          gainMetaParameterDefinition2 = [v123 gainMetaParameterDefinition];
          identifier4 = [gainMetaParameterDefinition2 identifier];
          [v50 setObject:identifier4 forKey:@"GainParameterName"];

          gainMetaParameterDefinition3 = [v123 gainMetaParameterDefinition];
          [(PHASEActionTreeBuilder *)selfCopy addParameter:gainMetaParameterDefinition3];
        }

        distanceModelParameters = [v123 distanceModelParameters];
        [(PHASEActionTreeBuilder *)selfCopy fillOutDistanceFieldsWithParams:distanceModelParameters dictionary:v50];

        listenerDirectivityModelParameters = [v123 listenerDirectivityModelParameters];
        [(PHASEActionTreeBuilder *)selfCopy fillOutDirectivityFieldsWithParams:listenerDirectivityModelParameters dictionary:v50 isListener:1];

        sourceDirectivityModelParameters = [v123 sourceDirectivityModelParameters];
        [(PHASEActionTreeBuilder *)selfCopy fillOutDirectivityFieldsWithParams:sourceDirectivityModelParameters dictionary:v50 isListener:0];

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
          identifier5 = [v62 identifier];
          v65 = MEMORY[0x277CCABB0];
          [v62 gain];
          v66 = [v65 numberWithDouble:?];
          inputChannelLayout = [v62 inputChannelLayout];
          v68 = GetChannelLayoutString([inputChannelLayout layoutTag]);
          v122 = [v63 dictionaryWithObjectsAndKeys:{identifier5, @"Name", @"channel", @"Type", v66, @"Gain", v68, @"ChannelLayout", 0}];

          gainMetaParameterDefinition4 = [v62 gainMetaParameterDefinition];
          LOBYTE(identifier5) = gainMetaParameterDefinition4 == 0;

          if ((identifier5 & 1) == 0)
          {
            gainMetaParameterDefinition5 = [v62 gainMetaParameterDefinition];
            identifier6 = [gainMetaParameterDefinition5 identifier];
            [v122 setObject:identifier6 forKey:@"GainParameterName"];

            gainMetaParameterDefinition6 = [v62 gainMetaParameterDefinition];
            [(PHASEActionTreeBuilder *)selfCopy addParameter:gainMetaParameterDefinition6];
          }

          [v115 addObject:v122];
          goto LABEL_50;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy2)
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
            uTF8String2 = [v105 UTF8String];
            *buf = 136315650;
            v150 = "PHASEAssetRegistry.mm";
            v151 = 1024;
            v152 = 3084;
            v153 = 2080;
            v154 = uTF8String2;
            _os_log_impl(&dword_23A302000, v104, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
          }

          *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924648 userInfo:v123];
LABEL_60:

LABEL_61:
          errorCopy2 = 0;
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
        identifier7 = [v73 identifier];
        v82 = MEMORY[0x277CCABB0];
        [v73 gain];
        v83 = [v82 numberWithDouble:?];
        inputChannelLayout2 = [v73 inputChannelLayout];
        v85 = GetChannelLayoutString([inputChannelLayout2 layoutTag]);
        v50 = [v80 dictionaryWithObjectsAndKeys:{identifier7, @"Name", @"ambient", @"Type", v83, @"Gain", v122, @"Orientation", v85, @"ChannelLayout", 0}];

        gainMetaParameterDefinition7 = [v73 gainMetaParameterDefinition];
        LOBYTE(inputChannelLayout2) = gainMetaParameterDefinition7 == 0;

        if ((inputChannelLayout2 & 1) == 0)
        {
          gainMetaParameterDefinition8 = [v73 gainMetaParameterDefinition];
          identifier8 = [gainMetaParameterDefinition8 identifier];
          [v50 setObject:identifier8 forKey:@"GainParameterName"];

          gainMetaParameterDefinition9 = [v73 gainMetaParameterDefinition];
          [(PHASEActionTreeBuilder *)selfCopy addParameter:gainMetaParameterDefinition9];
        }

        [v115 addObject:v50];
      }

LABEL_50:
      ++v119;
      errorCopy2 = errorCopy;
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

    if (![(PHASEActionTreeBuilder *)self processNode:*(*(&v142 + 1) + 8 * v14) withArray:v129 assetRegistry:registryCopy outError:error])
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

  errorCopy2 = 0;
  v91 = obj;
LABEL_63:

  return errorCopy2;
}

@end