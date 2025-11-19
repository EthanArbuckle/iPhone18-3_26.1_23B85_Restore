@interface GCControllerInputComponent
@end

@implementation GCControllerInputComponent

id __101___GCControllerInputComponent_initWithIdentifier_templateFacadeParameters_templateElementParameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(objc_msgSend(objc_opt_class() "viewClass"))];

  return v3;
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke(uint64_t a1)
{
  v284 = *MEMORY[0x1E69E9840];
  v205 = objc_opt_new();
  v201 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 elementMappings];
    v4 = [v3 allValues];

    v275[0] = MEMORY[0x1E69E9820];
    v275[1] = 3221225472;
    v275[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2;
    v275[3] = &unk_1E841B420;
    v275[4] = *(v201 + 40);
    v5 = [v4 gc_arrayByTransformingElementsWithOptions:1 usingBlock:v275];

    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_99_0];

    v231 = objc_opt_new();
    v232 = objc_opt_new();
    v274 = 0u;
    v273 = 0u;
    v272 = 0u;
    v271 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v271 objects:v283 count:16];
    if (v8)
    {
      v9 = *v272;
      v10 = MEMORY[0x1E695E0F0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v272 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v271 + 1) + 8 * i);
          v13 = [v12 elementKey];
          v14 = [v12 mappingKey];
          v15 = [v231 objectForKeyedSubscript:v13];
          v16 = v15;
          if (!v15)
          {
            v15 = v10;
          }

          v17 = [v15 arrayByAddingObject:v12];
          [v231 setObject:v17 forKeyedSubscript:v13];

          v18 = [v232 objectForKeyedSubscript:v14];
          v19 = v18;
          if (!v18)
          {
            v18 = v10;
          }

          v20 = [v18 arrayByAddingObject:v12];
          [v232 setObject:v20 forKeyedSubscript:v14];
        }

        v8 = [v7 countByEnumeratingWithState:&v271 objects:v283 count:16];
      }

      while (v8);
    }

    v234 = objc_opt_new();
    v233 = objc_opt_new();
    v270 = 0u;
    v269 = 0u;
    v268 = 0u;
    v267 = 0u;
    v21 = *(*(v201 + 40) + 48);
    v22 = [v21 countByEnumeratingWithState:&v267 objects:v282 count:16];
    if (v22)
    {
      v23 = *v268;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v268 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v267 + 1) + 8 * j);
          v26 = [(_GCDevicePhysicalInputElementParameters *)v25 identifier];
          [v234 setObject:v25 forKey:v26];

          v27 = [v25 copy];
          v28 = [(_GCDevicePhysicalInputElementParameters *)v27 identifier];
          [v233 setObject:v27 forKey:v28];
        }

        v22 = [v21 countByEnumeratingWithState:&v267 objects:v282 count:16];
      }

      while (v22);
    }

    v266 = 0u;
    v265 = 0u;
    v264 = 0u;
    v263 = 0u;
    obj = v7;
    v226 = [obj countByEnumeratingWithState:&v263 objects:v281 count:16];
    if (v226)
    {
      v225 = *v264;
      do
      {
        for (k = 0; k != v226; k = k + 1)
        {
          if (*v264 != v225)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v263 + 1) + 8 * k);
          v31 = [v30 elementKey];
          v32 = [v234 objectForKeyedSubscript:v31];

          v33 = [v30 mappingKey];
          v34 = [v233 objectForKeyedSubscript:v33];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = v34;
                v228 = v32;
                v36 = [(_GCDevicePhysicalInputElementParameters *)v35 identifier];
                v37 = [(_GCDevicePhysicalInputElementParameters *)v228 identifier];
                v38 = [v36 isEqualToString:v37];

                if ((v38 & 1) == 0)
                {
                  v222 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 eventUpValueField];
                  v220 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 eventRightValueField];
                  v218 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 eventDownValueField];
                  v216 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 eventLeftValueField];
                  v214 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 eventUpValueField];
                  v212 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 eventRightValueField];
                  v210 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 eventDownValueField];
                  v208 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 eventLeftValueField];
                  v39 = [(_GCDevicePhysicalInputElementParameters *)v228 identifier];
                  v40 = [v232 objectForKey:v39];
                  v41 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_107_0];
                  v42 = [v40 filteredArrayUsingPredicate:v41];
                  v206 = [v42 count] != 0;

                  v43 = [(_GCDevicePhysicalInputElementParameters *)v35 identifier];
                  v44 = [v231 objectForKey:v43];
                  LODWORD(v41) = [v44 count] == 0;

                  if (v41)
                  {
                    v117 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 xySources];
                    v118 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 xySources];
                    v119 = [v117 setByAddingObjectsFromSet:v118];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setXySources:v119, v120];

                    v121 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 xSources];
                    v122 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 xSources];
                    v123 = [v121 setByAddingObjectsFromSet:v122];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setXSources:v123, v124];

                    v125 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 ySources];
                    v126 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 ySources];
                    v127 = [v125 setByAddingObjectsFromSet:v126];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setYSources:v127, v128];

                    v129 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 upSources];
                    v130 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 upSources];
                    v131 = [v129 setByAddingObjectsFromSet:v130];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setUpSources:v131, v132];

                    v133 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 rightSources];
                    v134 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 rightSources];
                    v135 = [v133 setByAddingObjectsFromSet:v134];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setRightSources:v135, v136];

                    v137 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 downSources];
                    v138 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 downSources];
                    v139 = [v137 setByAddingObjectsFromSet:v138];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setDownSources:v139, v140];

                    v141 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 leftSources];
                    v142 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 leftSources];
                    v143 = [v141 setByAddingObjectsFromSet:v142];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setLeftSources:v143, v144];

                    v262[0] = MEMORY[0x1E69E9820];
                    v262[1] = 3221225472;
                    v262[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3;
                    v262[3] = &__block_descriptor_97_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                    v262[4] = v214;
                    v262[5] = v222;
                    v262[6] = v212;
                    v262[7] = v220;
                    v262[8] = v210;
                    v262[9] = v218;
                    v70 = v262;
                    v262[10] = v208;
                    v262[11] = v216;
                  }

                  else
                  {
                    v204 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 xSources];
                    v45 = [(_GCDevicePhysicalInputElementParameters *)v35 identifier];
                    v46 = [v234 objectForKeyedSubscript:v45];
                    v47 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v46 xSources];
                    if ([v204 isEqual:v47])
                    {
                      v203 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 ySources];
                      v48 = [(_GCDevicePhysicalInputElementParameters *)v35 identifier];
                      v49 = [v234 objectForKeyedSubscript:v48];
                      v50 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v49 ySources];
                      v202 = [v203 isEqual:v50];

                      if (v202)
                      {
                        v51 = [(_GCDevicePhysicalInputElementParameters *)v228 localizedName];
                        [(_GCDevicePhysicalInputElementParameters *)v35 setLocalizedName:v51, v52];

                        v53 = [(_GCDevicePhysicalInputElementParameters *)v228 symbol];
                        [(_GCDevicePhysicalInputElementParameters *)v35 setSymbol:v53, v54];

                        v55 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 xySources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setXySources:v55, v56];

                        v57 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 xSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setXSources:v57, v58];

                        v59 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 ySources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setYSources:v59, v60];

                        v61 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 upSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setUpSources:v61, v62];

                        v63 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 rightSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setRightSources:v63, v64];

                        v65 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 downSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setDownSources:v65, v66];

                        v67 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 leftSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setLeftSources:v67, v68];

                        v69 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 isAnalog];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setAnalog:v69];
                        v261[0] = MEMORY[0x1E69E9820];
                        v261[1] = 3221225472;
                        v261[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_4;
                        v261[3] = &__block_descriptor_97_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                        v261[4] = v222;
                        v261[5] = v214;
                        v261[6] = v220;
                        v261[7] = v212;
                        v261[8] = v218;
                        v261[9] = v210;
                        v70 = v261;
                        v261[10] = v216;
                        v261[11] = v208;
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                    }

                    v145 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 xySources];
                    v146 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 xySources];
                    v147 = [v145 setByAddingObjectsFromSet:v146];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setXySources:v147, v148];

                    v149 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 xSources];
                    v150 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 xSources];
                    v151 = [v149 setByAddingObjectsFromSet:v150];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setXSources:v151, v152];

                    v153 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 ySources];
                    v154 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 ySources];
                    v155 = [v153 setByAddingObjectsFromSet:v154];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setYSources:v155, v156];

                    v157 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 upSources];
                    v158 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 upSources];
                    v159 = [v157 setByAddingObjectsFromSet:v158];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setUpSources:v159, v160];

                    v161 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 rightSources];
                    v162 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 rightSources];
                    v163 = [v161 setByAddingObjectsFromSet:v162];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setRightSources:v163, v164];

                    v165 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 downSources];
                    v166 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 downSources];
                    v167 = [v165 setByAddingObjectsFromSet:v166];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setDownSources:v167, v168];

                    v169 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 leftSources];
                    v170 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v228 leftSources];
                    v171 = [v169 setByAddingObjectsFromSet:v170];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v35 setLeftSources:v171, v172];

                    v260[0] = MEMORY[0x1E69E9820];
                    v260[1] = 3221225472;
                    v260[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_5;
                    v260[3] = &__block_descriptor_97_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                    v260[4] = v214;
                    v260[5] = v222;
                    v260[6] = v212;
                    v260[7] = v220;
                    v260[8] = v210;
                    v260[9] = v218;
                    v70 = v260;
                    v260[10] = v208;
                    v260[11] = v216;
                  }

LABEL_59:
                  *(v70 + 96) = v206;
                  v173 = [v70 copy];
                  v174 = _Block_copy(v173);
                  [v205 addObject:v174];
                }

                goto LABEL_61;
              }
            }

            v35 = _gc_log_device_physicalinput();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v278 = v32;
              v279 = 2112;
              v280 = v34;
              v79 = v35;
              v80 = "#WARNING Can not implement dpad remapping from '%@' -> '%@'.";
LABEL_38:
              _os_log_debug_impl(&dword_1D2CD5000, v79, OS_LOG_TYPE_DEBUG, v80, buf, 0x16u);
            }
          }

          else
          {
            v71 = [(_GCDevicePhysicalInputElementParameters *)v34 identifier];
            v72 = [(_GCDevicePhysicalInputElementParameters *)v32 identifier];
            v73 = [v71 isEqualToString:v72];

            if (v73)
            {
              goto LABEL_62;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v74 = v32;
              v35 = [(_GCDevicePhysicalInputElementParameters *)v74 localizedName];
              v223 = [(_GCDevicePhysicalInputElementParameters *)v74 symbol];
              v207 = [(_GCDevicePhysicalInputButtonElementParameters *)v74 isAnalog];
              v75 = [(_GCDevicePhysicalInputButtonElementParameters *)v74 pressedThreshold];
              v76 = *&v75;
              v229 = [(_GCDevicePhysicalInputButtonElementParameters *)v74 sources];
              v219 = [(_GCDevicePhysicalInputButtonElementParameters *)v74 eventPressedValueField];
              v77 = [(_GCDevicePhysicalInputElementParameters *)v74 identifier];

              v78 = [v232 objectForKey:v77];
              v217 = [v78 count];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v35 = _gc_log_device_physicalinput();
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_61;
                }

                *buf = 138412546;
                v278 = v32;
                v279 = 2112;
                v280 = v34;
                v79 = v35;
                v80 = "#WARNING Can not implement remapping from unknown '%@' -> '%@'.";
                goto LABEL_38;
              }

              v81 = v32;
              v82 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v81 pressedSources];
              v83 = [v82 anyObject];
              v35 = [v83 elementLocalizedName];

              v84 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v81 pressedSources];
              v85 = [v84 anyObject];
              v223 = [v85 symbol];

              v229 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v81 pressedSources];
              v219 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v81 eventPressedValueField];
              v77 = [(_GCDevicePhysicalInputElementParameters *)v81 identifier];
              v78 = [v232 objectForKey:v77];
              v86 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_113];

              v87 = [v78 filteredArrayUsingPredicate:v86];
              v217 = [v87 count];

              v207 = 0;
              v76 = 0.0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v88 = v34;
              v221 = [(_GCDevicePhysicalInputButtonElementParameters *)v88 sources];
              v209 = [(_GCDevicePhysicalInputButtonElementParameters *)v88 eventPressedValueField];
              v89 = [(_GCDevicePhysicalInputElementParameters *)v88 identifier];
              v90 = [v231 objectForKey:v89];
              v91 = [v90 count];

              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_114;
              aBlock[3] = &unk_1E841B488;
              v92 = v88;
              v259 = v92;
              v93 = _Block_copy(aBlock);
              v256[0] = MEMORY[0x1E69E9820];
              v256[1] = 3221225472;
              v256[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_116;
              v256[3] = &unk_1E841B4B0;
              v94 = v92;
              v257 = v94;
              v213 = _Block_copy(v256);
              v254[0] = MEMORY[0x1E69E9820];
              v254[1] = 3221225472;
              v254[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3_118;
              v254[3] = &unk_1E841B4D8;
              v95 = v94;
              v255 = v95;
              v215 = _Block_copy(v254);
              v252[0] = MEMORY[0x1E69E9820];
              v252[1] = 3221225472;
              v252[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_4_120;
              v252[3] = &unk_1E8419678;
              v96 = v95;
              v253 = v96;
              v211 = _Block_copy(v252);
              v250[0] = MEMORY[0x1E69E9820];
              v250[1] = 3221225472;
              v250[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_5_122;
              v250[3] = &unk_1E841B500;
              v97 = v96;
              v251 = v97;
              v98 = _Block_copy(v250);
              v247[0] = MEMORY[0x1E69E9820];
              v247[1] = 3221225472;
              v247[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_6;
              v247[3] = &unk_1E841B528;
              v248 = v97;
              v249 = v234;
              v99 = v97;
              v100 = _Block_copy(v247);

              v101 = &v255;
              v102 = &v257;
              v103 = &v259;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v113 = _gc_log_device_physicalinput();
                if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v278 = v32;
                  v279 = 2112;
                  v280 = v34;
                  _os_log_debug_impl(&dword_1D2CD5000, v113, OS_LOG_TYPE_DEBUG, "#WARNING Can not implement remapping from '%@' -> unknown '%@'.", buf, 0x16u);
                }

                goto LABEL_61;
              }

              v104 = v34;
              v221 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v104 pressedSources];
              v209 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v104 eventPressedValueField];
              v105 = [(_GCDevicePhysicalInputElementParameters *)v104 identifier];
              v106 = [v231 objectForKey:v105];
              v107 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_127_0];
              v108 = [v106 filteredArrayUsingPredicate:v107];
              v91 = [v108 count];

              v245[0] = MEMORY[0x1E69E9820];
              v245[1] = 3221225472;
              v245[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_8;
              v245[3] = &unk_1E841B488;
              v109 = v104;
              v246 = v109;
              v93 = _Block_copy(v245);
              v242[0] = MEMORY[0x1E69E9820];
              v242[1] = 3221225472;
              v242[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_13;
              v242[3] = &unk_1E841B528;
              v243 = v109;
              v244 = v234;
              v110 = v109;
              v100 = _Block_copy(v242);
              v101 = &v244;
              v102 = &v243;
              v103 = &v246;
              v98 = &__block_literal_global_135;
              v215 = &__block_literal_global_131;
              v211 = &__block_literal_global_133;
              v213 = &__block_literal_global_129_0;
            }

            if (v91)
            {
              if (v100[2](v100))
              {
                v213[2](v213, v35);
                v215[2](v215, v223);
                v93[2](v93, v229);
                v211[2](v211, v207);
                v98[2](v98, v76);
                v240[0] = MEMORY[0x1E69E9820];
                v240[1] = 3221225472;
                v240[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_138;
                v240[3] = &__block_descriptor_49_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                v240[4] = v219;
                v240[5] = v209;
                v111 = v240;
              }

              else
              {
                v114 = [v221 setByAddingObjectsFromSet:v229];
                v93[2](v93, v114);

                v239[0] = MEMORY[0x1E69E9820];
                v239[1] = 3221225472;
                v239[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3_139;
                v239[3] = &__block_descriptor_49_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                v239[4] = v209;
                v239[5] = v219;
                v111 = v239;
              }
            }

            else
            {
              v112 = [v221 setByAddingObjectsFromSet:v229];
              v93[2](v93, v112);

              v241[0] = MEMORY[0x1E69E9820];
              v241[1] = 3221225472;
              v241[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_136;
              v241[3] = &__block_descriptor_49_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
              v241[4] = v209;
              v241[5] = v219;
              v111 = v241;
            }

            *(v111 + 48) = v217 != 0;
            v115 = [v111 copy];
            v116 = _Block_copy(v115);
            [v205 addObject:v116];
          }

LABEL_61:

LABEL_62:
        }

        v226 = [obj countByEnumeratingWithState:&v263 objects:v281 count:16];
      }

      while (v226);
    }

    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v227 = obj;
    v175 = [v227 countByEnumeratingWithState:&v235 objects:v276 count:16];
    if (v175)
    {
      v230 = *v236;
      do
      {
        for (m = 0; m != v175; ++m)
        {
          if (*v236 != v230)
          {
            objc_enumerationMutation(v227);
          }

          v177 = *(*(&v235 + 1) + 8 * m);
          v178 = [v177 elementKey];
          v179 = [v234 objectForKeyedSubscript:v178];

          v180 = [v177 mappingKey];
          v181 = [v233 objectForKeyedSubscript:v180];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v182 = v181;
                v183 = v177;
                if ([v183 invertHorizontally])
                {
                  v184 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 eventRightValueField];
                  v185 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 eventLeftValueField];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 setEventLeftValueField:v184];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 setEventRightValueField:v185];
                }

                if ([v183 invertVertically])
                {
                  v186 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 eventUpValueField];
                  v187 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 eventDownValueField];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 setEventUpValueField:v187];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 setEventDownValueField:v186];
                }

                if ([v183 swapAxes])
                {
                  v188 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 eventUpValueField];
                  v189 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 eventRightValueField];
                  v190 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 eventDownValueField];
                  v191 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 eventLeftValueField];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 setEventLeftValueField:v190];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 setEventRightValueField:v188];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 setEventUpValueField:v189];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v182 setEventDownValueField:v191];
                }
              }
            }
          }
        }

        v175 = [v227 countByEnumeratingWithState:&v235 objects:v276 count:16];
      }

      while (v175);
    }

    v192 = [v233 allValues];
  }

  else
  {
    v192 = 0;
  }

  v193 = MEMORY[0x1E695DFD8];
  v194 = [v192 gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_142];
  v195 = [v193 setWithArray:v194];

  v196 = *(v201 + 40);
  objc_sync_enter(v196);
  objc_storeStrong((*(v201 + 40) + 56), *(v201 + 32));
  v197 = [v205 copy];
  v198 = *(v201 + 40);
  v199 = *(v198 + 64);
  *(v198 + 64) = v197;

  [(_GCDevicePhysicalInput *)*(v201 + 48) updateWithElements:v195];
  objc_sync_exit(v196);

  v200 = *MEMORY[0x1E69E9840];
}

id __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v23 = [v3 elementKey];
  v4 = [v3 mappingKey];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = *(*(a1 + 32) + 48);
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {

    v9 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v22 = v3;
  v8 = 0;
  v9 = 0;
  v10 = *v25;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v24 + 1) + 8 * i);
      v13 = [(_GCDevicePhysicalInputElementParameters *)v12 aliases];
      v14 = [v13 containsObject:v23];

      if (v14)
      {
        v15 = [(_GCDevicePhysicalInputElementParameters *)v12 identifier];

        v9 = v15;
      }

      v16 = [(_GCDevicePhysicalInputElementParameters *)v12 aliases];
      v17 = [v16 containsObject:v4];

      if (v17)
      {
        v18 = [(_GCDevicePhysicalInputElementParameters *)v12 identifier];

        v8 = v18;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v7);

  if (!v9)
  {
    v9 = v8;
    v3 = v22;
LABEL_17:
    v8 = _gc_log_device_physicalinput();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_cold_2();
    }

    goto LABEL_19;
  }

  v3 = v22;
  if (v8)
  {
    v19 = [v22 copy];
    [v19 setElementKey:v9];
    [v19 setMappingKey:v8];
    goto LABEL_20;
  }

  v8 = _gc_log_device_physicalinput();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_cold_1();
  }

LABEL_19:
  v19 = 0;
LABEL_20:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t __50___GCControllerInputComponent_setSettingsProfile___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 remappingOrder];
  if (v6 <= [v5 remappingOrder])
  {
    v8 = [v4 remappingOrder];
    v7 = v8 < [v5 remappingOrder];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_104(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v21 floatValueForElement:v5];
  v8 = v7;
  [v6 floatValueForElement:*(a1 + 40)];
  if (v8 >= *&v9)
  {
    *&v9 = v8;
  }

  [v21 setFloatValue:*(a1 + 32) forElement:v9];
  [v21 floatValueForElement:*(a1 + 48)];
  v11 = v10;
  [v6 floatValueForElement:*(a1 + 56)];
  if (v11 >= *&v12)
  {
    *&v12 = v11;
  }

  [v21 setFloatValue:*(a1 + 48) forElement:v12];
  [v21 floatValueForElement:*(a1 + 64)];
  v14 = v13;
  [v6 floatValueForElement:*(a1 + 72)];
  if (v14 >= *&v15)
  {
    *&v15 = v14;
  }

  [v21 setFloatValue:*(a1 + 64) forElement:v15];
  [v21 floatValueForElement:*(a1 + 80)];
  v17 = v16;
  [v6 floatValueForElement:*(a1 + 88)];
  v19 = v18;

  if (v17 >= v19)
  {
    *&v20 = v17;
  }

  else
  {
    *&v20 = v19;
  }

  [v21 setFloatValue:*(a1 + 80) forElement:v20];
  if ((*(a1 + 96) & 1) == 0)
  {
    [v21 setFloatValue:*(a1 + 40) forElement:0.0];
    [v21 setFloatValue:*(a1 + 56) forElement:0.0];
    [v21 setFloatValue:*(a1 + 72) forElement:0.0];
    [v21 setFloatValue:*(a1 + 88) forElement:0.0];
  }
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v6 floatValueForElement:v5];
  [v10 setFloatValue:*(a1 + 40) forElement:?];
  [v6 floatValueForElement:*(a1 + 48)];
  [v10 setFloatValue:*(a1 + 56) forElement:?];
  [v6 floatValueForElement:*(a1 + 64)];
  [v10 setFloatValue:*(a1 + 72) forElement:?];
  [v6 floatValueForElement:*(a1 + 80)];
  v8 = v7;

  LODWORD(v9) = v8;
  [v10 setFloatValue:*(a1 + 88) forElement:v9];
  if ((*(a1 + 96) & 1) == 0)
  {
    [v10 setFloatValue:*(a1 + 32) forElement:0.0];
    [v10 setFloatValue:*(a1 + 48) forElement:0.0];
    [v10 setFloatValue:*(a1 + 64) forElement:0.0];
    [v10 setFloatValue:*(a1 + 80) forElement:0.0];
  }
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v21 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v21 floatValueForElement:v5];
  v8 = v7;
  [v6 floatValueForElement:*(a1 + 40)];
  if (v8 >= *&v9)
  {
    *&v9 = v8;
  }

  [v21 setFloatValue:*(a1 + 32) forElement:v9];
  [v21 floatValueForElement:*(a1 + 48)];
  v11 = v10;
  [v6 floatValueForElement:*(a1 + 56)];
  if (v11 >= *&v12)
  {
    *&v12 = v11;
  }

  [v21 setFloatValue:*(a1 + 48) forElement:v12];
  [v21 floatValueForElement:*(a1 + 64)];
  v14 = v13;
  [v6 floatValueForElement:*(a1 + 72)];
  if (v14 >= *&v15)
  {
    *&v15 = v14;
  }

  [v21 setFloatValue:*(a1 + 64) forElement:v15];
  [v21 floatValueForElement:*(a1 + 80)];
  v17 = v16;
  [v6 floatValueForElement:*(a1 + 88)];
  v19 = v18;

  if (v17 >= v19)
  {
    *&v20 = v17;
  }

  else
  {
    *&v20 = v19;
  }

  [v21 setFloatValue:*(a1 + 80) forElement:v20];
  if ((*(a1 + 96) & 1) == 0)
  {
    [v21 setFloatValue:*(a1 + 40) forElement:0.0];
    [v21 setFloatValue:*(a1 + 56) forElement:0.0];
    [v21 setFloatValue:*(a1 + 72) forElement:0.0];
    [v21 setFloatValue:*(a1 + 88) forElement:0.0];
  }
}

BOOL __50___GCControllerInputComponent_setSettingsProfile___block_invoke_111(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t __50___GCControllerInputComponent_setSettingsProfile___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [(_GCDevicePhysicalInputElementParameters *)v1 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v1 isEqual:v4];

  return v5;
}

BOOL __50___GCControllerInputComponent_setSettingsProfile___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t __50___GCControllerInputComponent_setSettingsProfile___block_invoke_13(uint64_t a1)
{
  v2 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)*(a1 + 32) pressedSources];
  v3 = *(a1 + 40);
  v4 = [(_GCDevicePhysicalInputElementParameters *)*(a1 + 32) identifier];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v5 pressedSources];
  v7 = [v2 isEqual:v6];

  return v7;
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v12 floatValueForElement:v5];
  v8 = v7;
  [v6 floatValueForElement:*(a1 + 40)];
  v10 = v9;

  if (v8 >= v10)
  {
    *&v11 = v8;
  }

  else
  {
    *&v11 = v10;
  }

  [v12 setFloatValue:*(a1 + 32) forElement:v11];
  if ((*(a1 + 48) & 1) == 0)
  {
    [v12 setFloatValue:*(a1 + 40) forElement:0.0];
  }
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_138(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 floatValueForElement:*(a1 + 32)];
  [v5 setFloatValue:*(a1 + 40) forElement:?];
  if ((*(a1 + 48) & 1) == 0)
  {
    [v5 setFloatValue:*(a1 + 32) forElement:0.0];
  }
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3_139(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v12 floatValueForElement:v5];
  v8 = v7;
  [v6 floatValueForElement:*(a1 + 40)];
  v10 = v9;

  if (v8 >= v10)
  {
    *&v11 = v8;
  }

  else
  {
    *&v11 = v10;
  }

  [v12 setFloatValue:*(a1 + 32) forElement:v11];
  if ((*(a1 + 48) & 1) == 0)
  {
    [v12 setFloatValue:*(a1 + 40) forElement:0.0];
  }
}

id __50___GCControllerInputComponent_setSettingsProfile___block_invoke_4_140(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(objc_msgSend(objc_opt_class() "viewClass"))];

  return v3;
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_35();
  OUTLINED_FUNCTION_1_27(&dword_1D2CD5000, v0, v1, "Ignoring mapping %@.  No element for destination alias '%{public}@'.");
  v2 = *MEMORY[0x1E69E9840];
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_35();
  OUTLINED_FUNCTION_1_27(&dword_1D2CD5000, v0, v1, "Ignoring mapping %@.  No element for source alias '%{public}@'.");
  v2 = *MEMORY[0x1E69E9840];
}

@end