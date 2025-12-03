@interface PKInkParser
+ (BOOL)hasDefinitionForIdentifier:(uint64_t)identifier;
+ (PKInkBehavior)inkBehaviorVariantWithDictionary:(void *)dictionary renderingDescriptor:(void *)descriptor identifier:(uint64_t)identifier version:(void *)version variant:;
+ (PKInkRenderingDescriptor)inkRenderingDescriptorWithDictionary:(uint64_t)dictionary;
+ (id)inkBehaviorFromDictionary:(void *)dictionary identifier:(uint64_t)identifier version:(void *)version variant:;
+ (id)inkBehaviorsWithIdentifer:(uint64_t)identifer version:;
+ (id)plistDictionaryForInk:(uint64_t)ink;
+ (id)plistPathForIdentifier:(uint64_t)identifier;
+ (id)v2plistPathForIdentifier:(uint64_t)identifier;
+ (void)loadFunction:(void *)function;
+ (void)loadOutput:(void *)output;
@end

@implementation PKInkParser

+ (BOOL)hasDefinitionForIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [PKInkParser plistPathForIdentifier:v2];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [PKInkParser v2plistPathForIdentifier:v2];
    v4 = v5 != 0;
  }

  return v4;
}

+ (id)plistPathForIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = +[PKMetalResourceHandler inkBundle];
  v4 = [v3 pathForResource:v2 ofType:@"plist"];

  return v4;
}

+ (id)v2plistPathForIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  if ([(__CFString *)v2 isEqualToString:@"com.apple.ink.future"])
  {
    v3 = @"com.apple.ink.crayon";

    v2 = v3;
  }

  v4 = +[PKMetalResourceHandler inkBundle];
  v5 = [(__CFString *)v2 stringByAppendingString:@".v2"];
  v6 = [v4 pathForResource:v5 ofType:@"plist"];

  return v6;
}

+ (id)plistDictionaryForInk:(uint64_t)ink
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(PKInkParser *)v3 plistPathForIdentifier:v2];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4];
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)inkBehaviorFromDictionary:(void *)dictionary identifier:(uint64_t)identifier version:(void *)version variant:
{
  v8 = a2;
  dictionaryCopy = dictionary;
  versionCopy = version;
  objc_opt_self();
  v11 = [v8 objectForKeyedSubscript:dictionaryCopy];
  v12 = [PKInkParser inkRenderingDescriptorWithDictionary:v11];

  v13 = [v8 objectForKeyedSubscript:versionCopy];
  v14 = [PKInkParser inkBehaviorVariantWithDictionary:v13 renderingDescriptor:v12 identifier:dictionaryCopy version:identifier variant:versionCopy];

  return v14;
}

+ (PKInkRenderingDescriptor)inkRenderingDescriptorWithDictionary:(uint64_t)dictionary
{
  v62[2] = *MEMORY[0x1E69E9840];
  v53 = a2;
  objc_opt_self();
  v2 = v53;
  objc_opt_self();
  v3 = MEMORY[0x1E695DF70];
  v62[0] = @"type";
  v62[1] = @"blend-mode";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v5 = [v3 arrayWithArray:v4];

  v6 = MEMORY[0x1E695DF70];
  v61[0] = @"particle-spacing";
  v61[1] = @"particle-count";
  v61[2] = @"particle-width";
  v61[3] = @"particle-height";
  v61[4] = @"texture";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:5];
  v8 = [v6 arrayWithArray:v7];

  v9 = MEMORY[0x1E695DF70];
  v60[0] = @"particle-rotation";
  v60[1] = @"particle-spacing-function";
  v60[2] = @"particle-adjust-end-cap-alpha";
  v60[3] = @"is-object-eraser";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
  v11 = [v9 arrayWithArray:v10];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  allKeys = [v2 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v13)
  {
    v14 = *v56;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v55 + 1) + 8 * i);
        v17 = [v5 containsObject:v16];
        v18 = v5;
        if ((v17 & 1) == 0)
        {
          v19 = [v8 containsObject:v16];
          v18 = v8;
          if ((v19 & 1) == 0)
          {
            v20 = [v11 containsObject:v16];
            v18 = v11;
            if (!v20)
            {
              continue;
            }
          }
        }

        [v18 removeObject:v16];
      }

      v13 = [allKeys countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v13);
  }

  [v5 count];
  if ([v8 count])
  {
    v21 = [v2 objectForKeyedSubscript:@"type"];
    [v21 isEqual:@"particle"];
  }

  v22 = [v2 objectForKeyedSubscript:@"blend-mode"];
  if (v22)
  {
    v23 = [v2 objectForKeyedSubscript:@"blend-mode"];
    v24 = [&unk_1F47C22C0 objectForKeyedSubscript:v23];
    unsignedIntegerValue = [v24 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v26 = [v2 objectForKeyedSubscript:@"type"];
  v27 = [&unk_1F47C22E8 objectForKeyedSubscript:v26];
  unsignedIntegerValue2 = [v27 unsignedIntegerValue];

  if (unsignedIntegerValue2 == 1)
  {
    v29 = [v2 objectForKeyedSubscript:@"texture"];
    v30 = [v2 objectForKeyedSubscript:@"particle-spacing"];
    [v30 floatValue];
    v32 = v31;

    v33 = [v2 objectForKeyedSubscript:@"particle-count"];
    if (v33)
    {
      v34 = [v2 objectForKeyedSubscript:@"particle-count"];
      unsignedIntegerValue3 = [v34 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue3 = 1;
    }

    v37 = [v2 objectForKeyedSubscript:@"particle-width"];
    [v37 floatValue];
    v39 = v38;
    v40 = [v2 objectForKeyedSubscript:@"particle-height"];
    [v40 floatValue];
    v42 = v41;

    v43 = [v2 objectForKeyedSubscript:@"particle-rotation"];
    v44 = [&unk_1F47C2310 objectForKeyedSubscript:v43];
    unsignedIntegerValue4 = [v44 unsignedIntegerValue];

    v46 = [v2 objectForKeyedSubscript:@"particle-adjust-end-cap-alpha"];
    bOOLValue = [v46 BOOLValue];

    v36 = [PKInkParticleDescriptor particleDescriptorWithName:v29 particleSpacing:unsignedIntegerValue3 particleCount:unsignedIntegerValue4 particleSize:v32 particleRotation:v39, v42];
    [v36 setAdjustEndCapParticleAlpha:bOOLValue];
    v48 = [v2 objectForKeyedSubscript:@"particle-spacing-function"];

    if (v48)
    {
      v49 = [v2 objectForKeyedSubscript:@"particle-spacing-function"];
      [(PKInkParser *)&v54 loadFunction:v49];
      [v36 setParticleSpacingFunction:&v54];
      v50 = v54;
      v54 = 0;
      if (v50)
      {
        (*(*v50 + 40))(v50);
      }
    }
  }

  else
  {
    v36 = 0;
  }

  v51 = [[PKInkRenderingDescriptor alloc] initWithType:unsignedIntegerValue2 blendMode:unsignedIntegerValue alternateMode:0 particleDescriptor:v36 secondaryParticleDescriptor:0];

  return v51;
}

+ (PKInkBehavior)inkBehaviorVariantWithDictionary:(void *)dictionary renderingDescriptor:(void *)descriptor identifier:(uint64_t)identifier version:(void *)version variant:
{
  v175 = *MEMORY[0x1E69E9840];
  v10 = a2;
  dictionaryCopy = dictionary;
  descriptorCopy = descriptor;
  versionCopy = version;
  objc_opt_self();
  identifierCopy = identifier;
  v11 = v10;
  objc_opt_self();
  v12 = MEMORY[0x1E695DF70];
  v150 = @"stylusSmoothing";
  v151 = @"touch-smoothing";
  v152 = @"velocitySmoothing";
  v153 = @"angleSmoothing";
  v154 = @"end-cap-fade";
  v155 = @"end-cap-time";
  v156 = @"start-cap-fade";
  v157 = @"start-cap-time";
  v158 = @"blendAlpha";
  v159 = @"targetMultiple";
  v160 = @"base-alpha";
  v161 = @"weight-function";
  v162 = @"unclamped-weight";
  v163 = @"supports-combining-strokes";
  v164 = @"radius";
  v165 = @"opacity";
  v166 = @"edge-width";
  v167 = @"aspect-ratio";
  v168 = @"ruler-offset-scale";
  v169 = @"ruler-offset-constant";
  v170 = @"variable-snapped-width";
  v171 = @"brush-opacity";
  v172 = @"show-brush-indicator";
  v173 = @"animation";
  v174 = @"ink-transform";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:25];
  v14 = [v12 arrayWithArray:v13];

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  allKeys = [v11 allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v144 objects:&v148 count:16];
  if (v16)
  {
    v17 = *v145;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v145 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v144 + 1) + 8 * i);
        if ([v14 containsObject:v19])
        {
          [v14 removeObject:v19];
        }
      }

      v16 = [allKeys countByEnumeratingWithState:&v144 objects:&v148 count:16];
    }

    while (v16);
  }

  v20 = [v11 objectForKeyedSubscript:@"stylusSmoothing"];
  if (v20)
  {
    v21 = [v11 objectForKeyedSubscript:@"stylusSmoothing"];
    [v21 floatValue];
    v23 = v22;
  }

  else
  {
    v23 = 0.12;
  }

  v24 = [v11 objectForKeyedSubscript:@"touch-smoothing"];
  if (v24)
  {
    v25 = [v11 objectForKeyedSubscript:@"touch-smoothing"];
    [v25 floatValue];
    v27 = v26;
  }

  else
  {
    v27 = 0.16;
  }

  v28 = [v11 objectForKeyedSubscript:@"velocitySmoothing"];
  if (v28)
  {
    v29 = [v11 objectForKeyedSubscript:@"velocitySmoothing"];
    [v29 floatValue];
    v31 = v30;
  }

  else
  {
    v31 = 0.05;
  }

  v32 = [v11 objectForKeyedSubscript:@"angleSmoothing"];
  if (v32)
  {
    v33 = [v11 objectForKeyedSubscript:@"angleSmoothing"];
    [v33 floatValue];
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  v126 = [[PKInkSmoothingDescriptor alloc] initWithStylusSmoothing:v23 touch:v27 velocity:v31 angle:v35 radius:0.0];
  v36 = [v11 objectForKeyedSubscript:@"show-brush-indicator"];
  bOOLValue = [v36 BOOLValue];

  v38 = [v11 objectForKeyedSubscript:@"ruler-offset-scale"];
  if (v38)
  {
    v39 = [v11 objectForKeyedSubscript:@"ruler-offset-scale"];
    [v39 floatValue];
    v41 = v40;
  }

  else
  {
    v41 = 1.0;
  }

  v42 = [v11 objectForKeyedSubscript:@"ruler-offset-constant"];
  if (v42)
  {
    v43 = [v11 objectForKeyedSubscript:@"ruler-offset-constant"];
    [v43 floatValue];
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = [v11 objectForKeyedSubscript:@"end-cap-fade"];
  [v46 floatValue];
  v48 = v47;

  v49 = [v11 objectForKeyedSubscript:@"end-cap-time"];
  [v49 floatValue];
  v51 = v50;

  v52 = [v11 objectForKeyedSubscript:@"start-cap-fade"];
  [v52 floatValue];
  v54 = v53;

  v55 = [v11 objectForKeyedSubscript:@"start-cap-time"];
  [v55 floatValue];
  v57 = v56;

  v125 = [PKInkFeatheringDescriptor descriptorWithStartCapTime:v57 startCapFade:v54 endCapTime:v51 endCapFade:v48];
  v58 = 0.0;
  v59 = 0.0;
  if ([dictionaryCopy blendMode] == 1)
  {
    v60 = [v11 objectForKeyedSubscript:@"blendAlpha"];
    [v60 floatValue];
    v62 = v61;

    v63 = [v11 objectForKeyedSubscript:@"targetMultiple"];
    [v63 floatValue];
    v58 = v62;
    v59 = v64;
  }

  v65 = [v11 objectForKeyedSubscript:@"base-alpha"];
  [v65 floatValue];
  v67 = v66;

  v68 = [v11 objectForKeyedSubscript:@"unclamped-weight"];
  bOOLValue2 = [v68 BOOLValue];

  v70 = [v11 objectForKeyedSubscript:@"supports-combining-strokes"];
  bOOLValue3 = [v70 BOOLValue];
  v121 = v67;
  v118 = v59;
  v119 = v58;
  v122 = v45;
  v123 = v41;

  v72 = [v11 objectForKeyedSubscript:@"ink-transform"];
  v73 = v72;
  v74 = *MEMORY[0x1E695EFD0];
  v75 = *(MEMORY[0x1E695EFD0] + 8);
  v77 = *(MEMORY[0x1E695EFD0] + 16);
  v76 = *(MEMORY[0x1E695EFD0] + 24);
  v78 = *(MEMORY[0x1E695EFD0] + 32);
  v79 = *(MEMORY[0x1E695EFD0] + 40);
  v120 = v72;
  if (v72 && [v72 count] == 6)
  {
    v80 = [v73 objectAtIndexedSubscript:0];
    [v80 doubleValue];
    v74 = v81;

    v82 = [v73 objectAtIndexedSubscript:1];
    [v82 doubleValue];
    v75 = v83;

    v84 = [v73 objectAtIndexedSubscript:2];
    [v84 doubleValue];
    v77 = v85;

    v86 = [v73 objectAtIndexedSubscript:3];
    [v86 doubleValue];
    v76 = v87;

    v88 = [v73 objectAtIndexedSubscript:4];
    [v88 doubleValue];
    v78 = v89;

    v90 = [v73 objectAtIndexedSubscript:5];
    [v90 doubleValue];
    v79 = v91;
  }

  v92 = [v11 objectForKeyedSubscript:@"weight-function"];

  if (v92)
  {
    v93 = [v11 objectForKeyedSubscript:@"weight-function"];
    [(PKInkParser *)&v150 loadFunction:v93];
    v94 = v150;
  }

  else
  {
    v94 = 0;
  }

  v95 = [v11 objectForKeyedSubscript:@"animation"];
  v96 = v95;
  v116 = v95;
  if (v95)
  {
    v97 = [v95 objectForKeyedSubscript:@"duration"];
    [v97 floatValue];
    v99 = v98;

    v100 = [v96 objectForKeyedSubscript:@"size-delta"];
    [v100 floatValue];
    v102 = v101;

    v124 = [[PKInkAnimationDescriptor alloc] initWithDuration:v99 sizeDelta:v102];
  }

  else
  {
    v124 = 0;
  }

  v103 = [v11 objectForKeyedSubscript:@"radius"];
  [(PKInkParser *)&v148 loadOutput:v103];

  v104 = [v11 objectForKeyedSubscript:@"opacity"];
  [(PKInkParser *)&v144 loadOutput:v104];

  v105 = [v11 objectForKeyedSubscript:@"edge-width"];
  [(PKInkParser *)&v142 loadOutput:v105];

  v106 = [v11 objectForKeyedSubscript:@"aspect-ratio"];
  [(PKInkParser *)&v140 loadOutput:v106];

  v107 = [v11 objectForKeyedSubscript:@"brush-opacity"];
  [(PKInkParser *)&v138 loadOutput:v107];

  v108 = [PKInkBehavior alloc];
  v150 = v74;
  v151 = v75;
  v152 = v77;
  v153 = v76;
  v154 = v78;
  v155 = v79;
  memset(v137, 0, sizeof(v137));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v137, v148, v149, 0xAAAAAAAAAAAAAAABLL * ((v149 - v148) >> 4));
  memset(v136, 0, sizeof(v136));
  memset(v135, 0, sizeof(v135));
  memset(v134, 0, sizeof(v134));
  memset(v133, 0, sizeof(v133));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v133, v144, *(&v144 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v144 + 1) - v144) >> 4));
  memset(v132, 0, sizeof(v132));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v132, v142, v143, 0xAAAAAAAAAAAAAAABLL * ((v143 - v142) >> 4));
  memset(v131, 0, sizeof(v131));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v131, v140, v141, 0xAAAAAAAAAAAAAAABLL * ((v141 - v140) >> 4));
  memset(v130, 0, sizeof(v130));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v130, v138, v139, 0xAAAAAAAAAAAAAAABLL * ((v139 - v138) >> 4));
  BYTE2(v115) = bOOLValue3;
  BYTE1(v115) = bOOLValue;
  LOBYTE(v115) = 0;
  v109 = [PKInkBehavior initWithRenderingDescriptor:v108 blendAlpha:"initWithRenderingDescriptor:blendAlpha:targetMultiple:baseAlpha:inkTransform:useUnclampedWeight:smoothingDescriptor:featheringDescriptor:pencilFeatheringDescriptor:animationDescriptor:identifier:version:variant:uiWidths:defaultWidth:uiAzimuthControl:showBrushIndicator:supportsCombiningStrokes:rulerOffsetScale:rulerOffsetConstant:weightFunction:radiusOutput:radius2Output:azimuthOutput:thresholdOutput:opacityOutput:edgeWidthOutput:aspectRatioOutput:brushOpacityOutput:" targetMultiple:dictionaryCopy baseAlpha:&v150 inkTransform:bOOLValue2 useUnclampedWeight:v126 smoothingDescriptor:v125 featheringDescriptor:0 pencilFeatheringDescriptor:v119 animationDescriptor:v118 identifier:v121 version:0.0 variant:v123 uiWidths:v122 defaultWidth:v124 uiAzimuthControl:descriptorCopy showBrushIndicator:identifierCopy supportsCombiningStrokes:versionCopy rulerOffsetScale:MEMORY[0x1E695E0F0] rulerOffsetConstant:v115 weightFunction:v94 radiusOutput:v137 radius2Output:v136 azimuthOutput:v135 thresholdOutput:v134 opacityOutput:v133 edgeWidthOutput:v132 aspectRatioOutput:v131 brushOpacityOutput:v130];
  v150 = v130;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = v131;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = v132;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = v133;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = v134;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = v135;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = v136;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = v137;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v110 = v109;
  objc_opt_self();
  renderingDescriptor = [(PKInkBehavior *)v110 renderingDescriptor];
  v112 = [renderingDescriptor type] == 1;

  if (v112)
  {
    [(PKInkBehavior *)v110 particleDescriptor];
  }

  renderingDescriptor2 = [(PKInkBehavior *)v110 renderingDescriptor];
  [renderingDescriptor2 blendMode];

  v150 = &v138;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = &v140;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = &v142;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = &v144;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);
  v150 = &v148;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v150);

  return v110;
}

+ (id)inkBehaviorsWithIdentifer:(uint64_t)identifer version:
{
  v46[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_self();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifer = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%lu", v3, identifer];
  v31 = [(PKInkParser *)v4 v2plistPathForIdentifier:v3];
  if (v31 && ([MEMORY[0x1E695DFF8] fileURLWithPath:v31], v6 = objc_claimAutoreleasedReturnValue(), +[PKInkBehavior loadInkV2WithURL:](PKInkBehavior, "loadInkV2WithURL:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v34 = v7;
    if ([v7 version] == identifer)
    {
      v8 = [PKInkKey alloc];
      version = [v7 version];
      variant = [v7 variant];
      v11 = [(PKInkKey *)v8 initWithIdentifier:v3 version:version variant:variant];

      v45 = v11;
      v46[0] = v7;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    }

    else
    {
      v11 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        identiferCopy2 = identifer;
        v43 = 2112;
        v44 = v3;
        _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Couldn't find version: %lu for V2 ink: %@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = [PKInkParser plistDictionaryForInk:v3];
    if (v13)
    {
      v14 = v3;
    }

    else
    {
      v15 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        identiferCopy2 = v3;
        _os_log_fault_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_FAULT, "Could not find ink for %@", buf, 0xCu);
      }

      v14 = @"com.apple.ink.pen";
      v13 = [PKInkParser plistDictionaryForInk:v14];
    }

    v34 = v13;
    v16 = [v13 objectForKeyedSubscript:identifer];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        identiferCopy2 = identifer;
        v43 = 2112;
        v44 = v14;
        _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Couldn't find version: %lu for ink: %@", buf, 0x16u);
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%lu", v14, 0];

      identifer = v19;
    }

    v20 = [v34 objectForKeyedSubscript:identifer];
    v32 = [PKInkParser inkRenderingDescriptorWithDictionary:v20];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allKeys = [v34 allKeys];
    v22 = [allKeys countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v22)
    {
      v23 = *v37;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = *(*(&v36 + 1) + 8 * i);
          if (([v25 isEqualToString:identifer] & 1) == 0 && objc_msgSend(v25, "hasPrefix:", identifer))
          {
            v26 = [v25 substringFromIndex:{objc_msgSend(identifer, "length") + 1}];
            v27 = [v34 objectForKeyedSubscript:v25];
            v28 = [PKInkParser inkBehaviorVariantWithDictionary:v27 renderingDescriptor:v32 identifier:v14 version:identifer variant:v26];
            v29 = [[PKInkKey alloc] initWithIdentifier:v14 version:identifer variant:v26];
            [dictionary setObject:v28 forKeyedSubscript:v29];
          }
        }

        v22 = [allKeys countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v22);
    }

    v12 = dictionary;
    v3 = v14;
    v11 = v32;
  }

  return v12;
}

+ (void)loadFunction:(void *)function
{
  v19 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  objc_opt_self();
  v3 = functionCopy;
  objc_opt_self();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [v3 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v14 objects:buf count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (([&unk_1F47C1DF0 containsObject:v8] & 1) == 0)
        {
          [&unk_1F47C1E08 containsObject:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v14 objects:buf count:16];
    }

    while (v5);
  }

  v9 = [v3 objectForKeyedSubscript:@"type"];
  if (![(__CFString *)v9 length])
  {
    v10 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "No function type, assuming piecewise", buf, 2u);
    }

    v9 = @"piecewise";
  }

  if ([(__CFString *)v9 isEqualToString:@"piecewise"])
  {
    operator new();
  }

  if ([(__CFString *)v9 isEqualToString:@"identity"])
  {
    operator new();
  }

  if ([(__CFString *)v9 isEqualToString:@"constant"])
  {
    v11 = [v3 objectForKeyedSubscript:@"defaultValue"];
    [v11 floatValue];

    operator new();
  }

  *self = 0;
}

+ (void)loadOutput:(void *)output
{
  v42 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  objc_opt_self();
  *self = 0;
  *(self + 8) = 0;
  *(self + 16) = 0;
  v30 = +[PKInkProperties inputNames];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = outputCopy;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v4)
  {
    v5 = *v38;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v36 = 0;
        v8 = [v7 objectForKeyedSubscript:{@"input-mask", outputCopy}];
        v9 = [v8 componentsSeparatedByString:{@", "}];

        LODWORD(v8) = [v9 containsObject:@"touch"];
        v10 = [v9 containsObject:@"force-touch"];
        v11 = [v9 containsObject:@"stylus"];
        v12 = 4;
        if (!v8)
        {
          v12 = 0;
        }

        if (v10)
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
        }

        v32[0] = v13 | v12 | v11;
        v35 = 0;
        if (!v32[0])
        {
          v32[0] = 7;
        }

        v14 = [v9 containsObject:@"phone"];
        if ([v9 containsObject:@"pad"])
        {
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15 | v14;
        if (!v16)
        {
          v16 = 3;
        }

        v32[1] = v16;
        v33 = 3;
        v17 = [v9 containsObject:@"snapped"];
        if ([v9 containsObject:@"unsnapped"])
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 | v17;
        if (!v19)
        {
          v19 = 3;
        }

        v33 = v19;
        integerValue = 0;
        v20 = [v7 objectForKeyedSubscript:@"input"];
        if (v20)
        {
          v21 = [v30 objectForKeyedSubscript:v20];
          v22 = v21;
          if (v21)
          {
            integerValue = [v21 integerValue];
          }
        }

        if (integerValue != 5)
        {
          v23 = [v7 objectForKeyedSubscript:@"function"];
          [(PKInkParser *)&v31 loadFunction:v23];
          v24 = v36;
          v36 = v31;
          if (v24)
          {
            (*(*v24 + 40))(v24);
          }
        }

        v25 = *(self + 8);
        if (v25 >= *(self + 16))
        {
          v26 = std::vector<PKOutputFunction>::__emplace_back_slow_path<PKOutputFunction>(self, v32);
        }

        else
        {
          PKOutputFunction::PKOutputFunction(*(self + 8), v32);
          v26 = v25 + 48;
        }

        *(self + 8) = v26;

        v27 = v36;
        v36 = 0;
        if (v27)
        {
          (*(*v27 + 40))(v27);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v4);
  }
}

@end