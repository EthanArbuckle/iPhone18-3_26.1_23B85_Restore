@interface SCNCommonProfileProgramGeneratorMetal
- (__C3DFXProgram)_newProgramWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr;
- (__C3DFXProgram)_newProgramWithHashCodeWithFunctionConstants:(__C3DProgramHashCode *)constants engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr;
- (id)initAllowingHotReload:(BOOL)reload;
- (id)splitInputOutputStructsIfNeededForSourceCode:(id)code generatedFromReplacementStrings:(id)strings perPixelLighting:(BOOL)lighting clipDistanceCount:(unint64_t)count hasBezierCurveDeformer:(BOOL)deformer;
- (void)_loadSourceCode;
- (void)collectShaderForProgram:(__C3DFXMetalProgram *)program hashCode:(id)code newVertexFunctionName:(id)name newFragmentFunctionName:(id)functionName sourceCodeBlock:(id)block additionalFileBlock:(id)fileBlock;
- (void)dealloc;
- (void)emptyShaderCache;
@end

@implementation SCNCommonProfileProgramGeneratorMetal

- (void)_loadSourceCode
{
  *self = 136315138;
  *a2 = "range.rangeValue.length > 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. range not found", self);
}

- (void)emptyShaderCache
{
  [(SCNCommonProfileProgramGeneratorMetal *)self _loadSourceCode];
  v3.receiver = self;
  v3.super_class = SCNCommonProfileProgramGeneratorMetal;
  [(SCNCommonProfileProgramGenerator *)&v3 emptyShaderCache];
}

- (id)initAllowingHotReload:(BOOL)reload
{
  v7.receiver = self;
  v7.super_class = SCNCommonProfileProgramGeneratorMetal;
  v4 = [(SCNCommonProfileProgramGenerator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_allowHotReload = reload;
    v4->_useFunctionConstants = C3DStandardShadersUseFunctionConstants();
    [(SCNCommonProfileProgramGeneratorMetal *)v5 _loadSourceCode];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNCommonProfileProgramGeneratorMetal;
  [(SCNCommonProfileProgramGenerator *)&v3 dealloc];
}

- (__C3DFXProgram)_newProgramWithHashCodeWithFunctionConstants:(__C3DProgramHashCode *)constants engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  constantsCopy = constants;
  ShaderModifiers = C3DProgramHashCodeGetShaderModifiers(constants, 0);
  v8 = 0;
  if (ShaderModifiers | C3DProgramHashCodeGetShaderModifiers(constants, 1))
  {
    *&v30 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    *(&v31 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    *&v32 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    *(&v40 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    *&v41 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    *(&v41 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    __InjectAllModifiersIfNeeded(&constantsCopy);
    v9 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_metal");
    v10 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_util.h");
    v11 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_standard_lighting.h");
    v12 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_standard_constants.h");
    v13 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-PBR.metal");
    v14 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-Lighting.metal");
    v45[0] = v9;
    v45[1] = v10;
    v45[2] = v11;
    v45[3] = v12;
    v45[4] = v13;
    v45[5] = v14;
    v15 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
      v15 = &stru_282DCC058;
    }

    v16 = *(&v31 + 1);
    v17 = *(&v32 + 1);
    if (!*(&v31 + 1))
    {
      v16 = &stru_282DCC058;
    }

    v45[6] = v15;
    v45[7] = v16;
    v18 = *(&v40 + 1);
    if (!*(&v40 + 1))
    {
      v18 = &stru_282DCC058;
    }

    if (!*(&v32 + 1))
    {
      v17 = &stru_282DCC058;
    }

    v45[8] = v18;
    v45[9] = v17;
    if (v41)
    {
      v19 = v41;
    }

    else
    {
      v19 = &stru_282DCC058;
    }

    v45[10] = v19;
    v46 = vbslq_s8(vceqzq_s64(v33), vdupq_n_s64(&stru_282DCC058), v33);
    v20 = -[NSString scn_stringByReplacingCharactersInRanges:withStrings:](self->_originalSourceCode, "scn_stringByReplacingCharactersInRanges:withStrings:", self->_injectionPointRanges, [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:13]);
    if ([*(&v40 + 1) length])
    {
      [v30 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_VERTEX_EXTRA_ARGUMENTS"];
    }

    if ([v41 length])
    {
      [v30 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FRAGMENT_EXTRA_ARGUMENTS"];
    }

    if ([*(&v31 + 1) length])
    {
      [v30 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SHADER_MODIFIERS"];
    }

    if (*(&v30 + 1))
    {
      [*(&v30 + 1) addObject:@"USE_VERTEX_EXTRA_ARGUMENTS"];
      [*(&v30 + 1) addObject:@"USE_FRAGMENT_EXTRA_ARGUMENTS"];
      [*(&v30 + 1) addObject:@"USE_SHADER_MODIFIERS"];
    }

    [v30 setObject:&unk_282E0F8B8 forKeyedSubscript:@"METAL"];
    v21 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    [v21 appendString:@"////////////////////////////////////////////////\n"];
    [v21 appendFormat:@"// CommonProfile Shader v%d\n", 2];
    v8 = [v21 stringByAppendingString:v20];
  }

  NodeHashCode = C3DProgramHashCodeGetNodeHashCode(constants);
  if ((NodeHashCode & 0x20) != 0)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorMetal _newProgramWithHashCodeWithFunctionConstants:engineContext:introspectionDataPtr:];
    }
  }

  ConstantsValues = C3DProgramHashCodeGetConstantsValues(constants);
  v25 = &kStandardPostTessellationVertexEntryPoint;
  if ((NodeHashCode & 4) == 0)
  {
    v25 = kStandardVertexEntryPoint;
  }

  v26 = C3DFXMetalProgramCreateFromSourceWithConstants(*v25, @"standard_frag", 0, v8, v30, *(&v30 + 1), ConstantsValues, 0);
  HashCode = C3DProgramHashCodeGetHashCode(constants);
  C3DFXMetalProgramUpdateHashWithCommonProfileHashCode(v26, HashCode);
  return v26;
}

- (__C3DFXProgram)_newProgramWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr
{
  codeCopy = code;
  *(&v215[2] + 4) = *MEMORY[0x277D85DE8];
  if (self->_useFunctionConstants)
  {

    return [(SCNCommonProfileProgramGeneratorMetal *)self _newProgramWithHashCodeWithFunctionConstants:code engineContext:context introspectionDataPtr:ptr];
  }

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v190 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v183 = 0u;
  codeCopy2 = code;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{0, context, ptr}];
  v182 = v9;
  v10 = 0;
  if (C3DShouldCollectGeneratedShaders())
  {
    v10 = [MEMORY[0x277CBEB58] setWithCapacity:0];
    *&v183 = v10;
  }

  *&v187 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v184 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v184 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v187 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v188 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v188 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v189 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v189 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v190 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v191 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v192 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v192 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v193 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v193 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v194 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  Conditioners = C3DProgramHashCodeGetConditioners(codeCopy);
  IsOpaque = C3DProgramHashCodeIsOpaque(codeCopy);
  HasTexture = C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 7u);
  v12 = C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 4u);
  v13 = C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 5u);
  IsOne = C3DProgramHashCodeGlobalAlphaIsOne(codeCopy);
  HasConstantAlpha = C3DProgramHashCodeHasConstantAlpha(codeCopy);
  LightingEnabled = C3DProgramHashCodeGetLightingEnabled(codeCopy);
  CommonProfileHashCode = C3DProgramHashCodeGetCommonProfileHashCode(codeCopy);
  NodeHashCode = C3DProgramHashCodeGetNodeHashCode(codeCopy);
  v177 = NodeHashCode;
  v157 = v13;
  v154 = v12;
  v16 = (NodeHashCode & 4) != 0 && C3DEngineContextHasFeatures(context, 16);
  EffectPropertyHashCode = C3DProgramHashCodeGetEffectPropertyHashCode(codeCopy, 2u);
  v155 = HasTexture;
  BYTE11(v194) = HasTexture & 1 | ((CommonProfileHashCode & 0x10) != 0);
  RenderMode = C3DProgramHashCodeGetRenderMode(codeCopy);
  EyeCount = C3DProgramHashCodeGetEyeCount(codeCopy);
  if (!RenderMode)
  {
    goto LABEL_23;
  }

  v19 = EyeCount;
  if (![v9 objectForKeyedSubscript:@"USE_POSITION"])
  {
    [v9 setObject:&unk_282E0F8B8 forKeyedSubscript:@"USE_POSITION"];
  }

  [v9 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:", v19), @"USE_MULTIPLE_RENDERING"}];
  MultiVertexOutputStreamGenerator = C3DProgramHashCodeGetMultiVertexOutputStreamGenerator(codeCopy);
  if (MultiVertexOutputStreamGenerator == 2)
  {
    v21 = @"USE_VERTEX_AMPLIFICATION";
    goto LABEL_17;
  }

  if (MultiVertexOutputStreamGenerator == 1)
  {
    v21 = @"USE_INSTANCING";
LABEL_17:
    [v9 setObject:&stru_282DCC058 forKeyedSubscript:v21];
  }

  if (RenderMode == 1)
  {
    v22 = @"USE_LAYERED_RENDERING";
  }

  else
  {
    if (RenderMode != 2)
    {
      goto LABEL_23;
    }

    v22 = @"USE_MULTIPLE_VIEWPORTS_RENDERING";
  }

  [v9 setObject:&stru_282DCC058 forKeyedSubscript:v22];
LABEL_23:
  v161 = v16;
  if (v10)
  {
    [v10 addObject:@"USE_MULTIPLE_RENDERING"];
    [v10 addObject:@"USE_VERTEX_AMPLIFICATION"];
    [v10 addObject:@"USE_INSTANCING"];
    [v10 addObject:@"USE_LAYERED_RENDERING"];
    [v10 addObject:@"USE_MULTIPLE_VIEWPORTS_RENDERING"];
  }

  v23 = SCNMetalLanguageVersion();
  Status = C3DSceneSourceGetStatus(codeCopy);
  if (v23 <= Status)
  {
    v25 = Status;
  }

  else
  {
    v25 = v23;
  }

  if ((RenderMode == 2 || RenderMode == 1) && v25 <= 0x20001)
  {
    v25 = 131073;
  }

  VertexAmplificationEnabled = C3DEngineContextGetVertexAmplificationEnabled(context);
  v27 = 131074;
  if (v25 > 0x20002)
  {
    v27 = v25;
  }

  if (!VertexAmplificationEnabled)
  {
    v27 = v25;
  }

  v169 = v27;
  v28 = __InjectAllModifiersIfNeeded(&codeCopy2);
  if ([v182 objectForKeyedSubscript:@"USE_MODIFIER_FRAMEBUFFER_COLOR0"])
  {
    if (C3DEngineContextHasFeatures(context, 2048))
    {
      [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"C3D_SUPPORTS_PROGRAMMABLE_BLENDING"];
    }

    else
    {
      v29 = scn_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [SCNCommonProfileProgramGeneratorMetal _newProgramWithHashCode:engineContext:introspectionDataPtr:];
      }
    }
  }

  if (v183)
  {
    [v183 addObject:@"USE_MODIFIER_FRAMEBUFFER_COLOR0"];
    [v183 addObject:@"C3D_SUPPORTS_PROGRAMMABLE_BLENDING"];
  }

  v30 = CommonProfileHashCode & 0xF;
  if ([v182 objectForKeyedSubscript:@"USE_CLIP_DISTANCE3"])
  {
    [v182 setObject:@"4" forKeyedSubscript:@"USE_CLIP_DISTANCE_COUNT"];
    v31 = 4;
LABEL_51:
    v167 = v31;
    goto LABEL_52;
  }

  if ([v182 objectForKeyedSubscript:@"USE_CLIP_DISTANCE2"])
  {
    [v182 setObject:@"3" forKeyedSubscript:@"USE_CLIP_DISTANCE_COUNT"];
    v31 = 3;
    goto LABEL_51;
  }

  if ([v182 objectForKeyedSubscript:@"USE_CLIP_DISTANCE1"])
  {
    [v182 setObject:@"2" forKeyedSubscript:@"USE_CLIP_DISTANCE_COUNT"];
    v31 = 2;
    goto LABEL_51;
  }

  if ([v182 objectForKeyedSubscript:@"USE_CLIP_DISTANCE0"])
  {
    [v182 setObject:@"1" forKeyedSubscript:@"USE_CLIP_DISTANCE_COUNT"];
    v31 = 1;
    goto LABEL_51;
  }

  v167 = 0;
LABEL_52:
  if (v30 == 5)
  {
    BYTE11(v194) = 1;
  }

  IsEnabled = 0;
  if ((CommonProfileHashCode & 0xB) != 0)
  {
    v33 = LightingEnabled;
  }

  else
  {
    v33 = 0;
  }

  if (v30 == 5)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v153 = v28;
  if ((CommonProfileHashCode & 0xE) == 2 && v34)
  {
    IsEnabled = C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 3u);
  }

  if ([v182 objectForKeyedSubscript:@"USE_SPECULAR"])
  {
    v35 = 1;
  }

  else
  {
    v35 = IsEnabled;
  }

  v162 = v35;
  if (v35)
  {
    if (BYTE11(v194))
    {
      v36 = &unk_282E0F8D0;
    }

    else
    {
      v36 = &unk_282E0F8B8;
    }

    [v182 setObject:v36 forKeyedSubscript:@"USE_VIEW"];
    if (BYTE11(v194))
    {
      v37 = &unk_282E0F8D0;
    }

    else
    {
      v37 = &unk_282E0F8B8;
    }

    [v182 setObject:v37 forKeyedSubscript:@"USE_SHININESS"];
  }

  BYTE10(v194) = 0;
  WORD4(v194) = 0;
  HIDWORD(v194) = 0;
  BYTE8(v196) = 1;
  AmbientLightingEnabled = C3DProgramHashCodeGetAmbientLightingEnabled(codeCopy);
  contextCopy = context;
  v171 = codeCopy;
  selfCopy = self;
  v165 = CommonProfileHashCode & 0xF;
  v166 = v34;
  v38 = CommonProfileHashCode;
  v39 = Conditioners;
  if (!v34)
  {
    goto LABEL_192;
  }

  if (*(&v191 + 1))
  {
    Declaration = C3DShaderModifierGetDeclaration(*(&v191 + 1));
    if (Declaration)
    {
      [v191 appendString:Declaration];
    }
  }

  if (v30 == 5)
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PBR"];
    v41 = v182;
    v42 = &unk_282E0F8D0;
    v43 = @"USE_VIEW";
LABEL_82:
    [v41 setObject:v42 forKeyedSubscript:v43];
    goto LABEL_83;
  }

  if (v30 == 6)
  {
    v41 = v182;
    v42 = &stru_282DCC058;
    v43 = @"USE_SHADOWONLY";
    goto LABEL_82;
  }

LABEL_83:
  LightsMask = C3DProgramHashCodeGetLightsMask(codeCopy);
  LightsCount = C3DProgramHashCodeGetLightsCount(codeCopy);
  if (LightsCount)
  {
    v46 = 0;
    v47 = LightsCount;
    v173 = LightsMask;
    v172 = LightsCount;
    do
    {
      if (((LightsMask >> v46) & 1) == 0)
      {
        goto LABEL_180;
      }

      LightHashCode = C3DProgramHashCodeGetLightHashCode(codeCopy2, v46);
      v49 = LightHashCode;
      v50 = "true";
      if ((LightHashCode & 0x2000000) == 0)
      {
        v50 = "false";
      }

      v51 = ((LightHashCode >> 21) & 6) != 0 ? v50 : "false";
      v52 = LightHashCode & 7;
      if (!v52)
      {
        goto LABEL_180;
      }

      v53 = (LightHashCode >> 21) & 7;
      v54 = LightHashCode & 0x400;
      if (v54)
      {
        if (BYTE11(v194) == 1)
        {
          if (v52 == 2)
          {
            [*(&v193 + 1) appendFormat:@", depthcube<float> u_shadowTexture%d\n", v46];
          }

          else if (v53 < 2)
          {
            [*(&v193 + 1) appendFormat:@", depth2d<float> u_shadowTexture%d\n", v46];
          }

          else
          {
            [*(&v193 + 1) appendFormat:@", depth2d_array<float> u_shadowTexture%d\n", v46];
          }
        }

        else
        {
          [v193 appendFormat:@", depth2d<float> u_shadowTexture%d\n", v46];
          v53 = 1;
        }
      }

      v55 = v49 & 0x205;
      C3DProgramHashCodeGetCommonProfileHashCode(codeCopy2);
      if (v55 == 513)
      {
        if (BYTE11(v194))
        {
          v56 = 184;
        }

        else
        {
          v56 = 176;
        }

        [(__C3DProgramHashCode *)*(&codeCopy2 + v56) appendFormat:@", texture2d<half> u_goboTexture%d\n", v46];
        [(__C3DProgramHashCode *)*(&codeCopy2 + v56) appendFormat:@", sampler u_goboTexture%dSampler\n", v46];
      }

      v57 = v49 >> 13;
      if (v52 == 5)
      {
        v58 = @", texture2d<half> u_iesTexture%d\n";
      }

      else
      {
        if (v52 != 6)
        {
          goto LABEL_111;
        }

        v58 = @", device packed_float2* u_areaPolygonPositions%d\n";
        if (v57 != 4)
        {
          goto LABEL_111;
        }
      }

      [*(&v193 + 1) appendFormat:v58, v46];
LABEL_111:
      v59 = (v49 >> 16) & 0x1F;
      v60 = (v49 & 0x407) != 1 || v55 == 513;
      v61 = v60;
      BYTE8(v194) |= v61;
      BYTE9(v194) |= v54 >> 10;
      v62 = HIDWORD(v194);
      if (HIDWORD(v194) <= v59)
      {
        v62 = (v49 >> 16) & 0x1F;
      }

      HIDWORD(v194) = v62;
      if (C3DProgramHashCodeGetRenderMode(codeCopy2))
      {
        v63 = C3DProgramHashCodeGetMultiVertexOutputStreamGenerator(codeCopy2);
        if (v63 == 1)
        {
          if (BYTE11(v194) == 1)
          {
            v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"USE_MULTIPLE_RENDERING * %d + in.sliceIndex", v46];
          }

          else
          {
            v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"USE_MULTIPLE_RENDERING * %d + out.sliceIndex", v46];
          }
        }

        else if (v63 == 2)
        {
          v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"USE_MULTIPLE_RENDERING * %d + amplificationID", v46];
        }

        else
        {
          v65 = scn_default_log();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            [SCNCommonProfileProgramGeneratorMetal _newProgramWithHashCode:v198 engineContext:v65 introspectionDataPtr:?];
          }

          v64 = 0;
        }
      }

      else
      {
        v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v46];
      }

      v66 = v49 & 0x1000;
      if ((v49 & 7) <= 2)
      {
        if (v52 == 1)
        {
          if (v55 == 513)
          {
            BYTE10(v194) |= v66 >> 12;
            v60 = v66 == 0;
            v67 = "true";
            if (v60)
            {
              v67 = "false";
            }

            v147 = v46;
            v148 = v67;
            v146 = v46;
            [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_goboTexture%d, u_goboTexture%dSampler, %s);\n", v64];
          }

          else if (v54)
          {
            if (v53 < 2)
            {
              if (v59 < 2)
              {
                v146 = v46;
                [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_shadowTexture%d);\n", v64];
              }

              else
              {
                v146 = v46;
                v147 = (v49 >> 16) & 0x1F;
                if ((v49 & 0x4000000) != 0)
                {
                  [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_shadowTexture%d, %d);\n", v64];
                }

                else
                {
                  [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_shadowTexture%d, u_shadowKernel, %d);\n", v64];
                }
              }
            }

            else
            {
              v70 = "true";
              if ((v49 & 0x1000000) == 0)
              {
                v70 = "false";
              }

              v151 = (v49 >> 16) & 0x1F;
              v152 = v51;
              v147 = v53;
              v148 = v70;
              v146 = v46;
              [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_shadowTexture%d, %d, %s, u_shadowKernel, %d, %s);\n", v64];
            }
          }

          else
          {
            [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@]);\n", v64];
          }
        }

        else
        {
          if (v52 != 2)
          {
LABEL_152:
            v68 = scn_default_log();
            LightsMask = v173;
            v47 = v172;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
            {
              [SCNCommonProfileProgramGeneratorMetal _newProgramWithHashCode:v214 engineContext:v215 introspectionDataPtr:v68];
            }

            goto LABEL_180;
          }

          if (v54 && BYTE8(v196) == 1)
          {
            v146 = v46;
            v147 = (v49 >> 16) & 0x1F;
            [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_omni(scn_lights[%@], u_shadowTexture%d, u_shadowKernel, %d);\n", v64];
          }

          else
          {
            [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_omni(scn_lights[%@]);\n", v64];
          }
        }

        goto LABEL_179;
      }

      if (v52 == 3)
      {
        if ((v49 & 0x1605) == 0x601)
        {
          v148 = v46;
          v151 = v46;
          v146 = v46;
          v147 = (v49 >> 16) & 0x1F;
          [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_spot(scn_lights[%@], u_shadowTexture%d, u_shadowKernel, %d, u_goboTexture%d, u_goboTexture%dSampler);\n", v64];
        }

        else if (v55 == 513)
        {
          BYTE10(v194) |= v66 >> 12;
          v60 = v66 == 0;
          v69 = "true";
          if (v60)
          {
            v69 = "false";
          }

          v147 = v46;
          v148 = v69;
          v146 = v46;
          [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_spot(scn_lights[%@], u_goboTexture%d, u_goboTexture%dSampler, %s);\n", v64];
        }

        else if (v54)
        {
          v146 = v46;
          v147 = (v49 >> 16) & 0x1F;
          [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_spot(scn_lights[%@], u_shadowTexture%d, u_shadowKernel, %d);\n", v64];
        }

        else
        {
          [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_spot(scn_lights[%@]);\n", v64];
        }

        goto LABEL_179;
      }

      if (v52 == 5)
      {
        if (v54)
        {
          v147 = v46;
          v148 = (v49 >> 16) & 0x1F;
          v146 = v46;
          [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_ies(scn_lights[%@], u_iesTexture%d, u_shadowTexture%d, u_shadowKernel, %d);\n", v64];
        }

        else
        {
          v146 = v46;
          [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_ies(scn_lights[%@], u_iesTexture%d);\n", v64];
        }

LABEL_179:
        LightsMask = v173;
        v47 = v172;
        goto LABEL_180;
      }

      if (v52 != 6)
      {
        goto LABEL_152;
      }

      if ((v49 >> 13) <= 1u)
      {
        LightsMask = v173;
        v47 = v172;
        if (v49 >> 13)
        {
          [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_area_rectangle(scn_lights[%@], u_areaLightBakedDataTexture);\n", v64, v146];
        }

        else
        {
          [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_area_line(scn_lights[%@], u_areaLightBakedDataTexture);\n", v64, v146];
        }
      }

      else
      {
        LightsMask = v173;
        v47 = v172;
        switch(v57)
        {
          case 2:
            [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_area_ellipse(scn_lights[%@], u_areaLightBakedDataTexture);\n", v64, v146];
            break;
          case 3:
            [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_area_ellipsoid(scn_lights[%@], u_areaLightBakedDataTexture);\n", v64, v146];
            break;
          case 4:
            [*(&v190 + 1) appendFormat:@"\t_lightingContribution.add_area_polygon(scn_lights[%@], u_areaLightBakedDataTexture, u_areaPolygonPositions%d);\n", v64, v46];
            break;
        }
      }

LABEL_180:
      ++v46;
    }

    while (v47 != v46);
  }

  [v182 setObject:@"uchar" forKeyedSubscript:@"C3DLightIndexType"];
  [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"C3D_USE_TEXTURE_FOR_LIGHT_INDICES"];
  codeCopy = v171;
  v30 = CommonProfileHashCode & 0xF;
  v34 = v166;
  v38 = CommonProfileHashCode;
  v39 = Conditioners;
  if (C3DProgramHashCodeGetReflectionProbesEnabled(v171))
  {
    if (C3DEngineContextHasFeatures(contextCopy, 256))
    {
      [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"C3D_SUPPORT_CUBE_ARRAY"];
    }

    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"C3D_USE_REFLECTION_PROBES"];
  }

  if (*(&v191 + 1))
  {
    v71 = v182;
    Description = @"SCNLightingModelCustom";
  }

  else
  {
    Description = C3DLightingModelGetDescription(v165);
    v71 = v182;
  }

  [v71 setObject:Description forKeyedSubscript:@"LIGHTING_MODEL"];
  if (((C3DProgramHashCodeGetLocalLightingEnabled(v171) & 1) != 0 || C3DProgramHashCodeGetReflectionProbesEnabled(v171)) && C3DEngineContextIsClusteredShadingEnabled(contextCopy))
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_CLUSTERED_LIGHTING"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

LABEL_192:
  if (v183)
  {
    [v183 addObject:@"USE_PBR"];
    [v183 addObject:@"USE_SHADOWONLY"];
    [v183 addObject:@"C3D_USE_TEXTURE_FOR_LIGHT_INDICES"];
    [v183 addObject:@"C3D_SUPPORT_CUBE_ARRAY"];
    [v183 addObject:@"C3D_USE_REFLECTION_PROBES"];
    [v183 addObject:@"LIGHTING_MODEL"];
    [v183 addObject:@"USE_CLUSTERED_LIGHTING"];
  }

  if (v30 == 4 && (v38 & 0x280) != 0)
  {
    BYTE11(v194) = 1;
  }

  if (C3DProgramHashCodeHasFog(codeCopy))
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FOG"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  if ((v34 & ((v39 & 0x10) >> 4)) == 1)
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SSAO"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 0x13u) && C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 0x14u) && C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 4u))
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FRESNEL"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_VIEW"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
  }

  if ((v34 & ((v38 & 0x40) != 0)) == 1)
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"AVOID_OVERLIGHTING"];
  }

  if (AmbientLightingEnabled)
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_AMBIENT_LIGHTING"];
  }

  if (v183)
  {
    [v183 addObject:@"USE_FOG"];
    [v183 addObject:@"USE_SSAO"];
    [v183 addObject:@"USE_FRESNEL"];
    [v183 addObject:@"AVOID_OVERLIGHTING"];
    [v183 addObject:@"USE_AMBIENT_LIGHTING"];
  }

  if (v34)
  {
    ProbesLightingOrder = C3DProgramHashCodeGetProbesLightingOrder(codeCopy);
    if (ProbesLightingOrder)
    {
      v74 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:ProbesLightingOrder];
      [v182 setObject:v74 forKeyedSubscript:@"USE_PROBES_LIGHTING"];
    }

    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_LIGHTING"];
    if (BYTE11(v194) == 1)
    {
      [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PER_PIXEL_LIGHTING"];
      [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
      if (v162 || (BYTE8(v194) & 1) != 0)
      {
        [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
      }

      if (BYTE10(v194) == 1)
      {
        v75 = v182;
        v76 = &unk_282E0F8D0;
        v77 = @"USE_MODULATE";
LABEL_226:
        [v75 setObject:v76 forKeyedSubscript:v77];
      }
    }

    else
    {
      [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PER_VERTEX_LIGHTING"];
      if (![v182 objectForKeyedSubscript:@"USE_NORMAL"])
      {
        [v182 setObject:&unk_282E0F8B8 forKeyedSubscript:@"USE_NORMAL"];
      }

      if (![v182 objectForKeyedSubscript:@"USE_VIEW"])
      {
        [v182 setObject:&unk_282E0F8B8 forKeyedSubscript:@"USE_VIEW"];
      }

      if (![v182 objectForKeyedSubscript:@"USE_POSITION"])
      {
        v75 = v182;
        v76 = &unk_282E0F8B8;
        v77 = @"USE_POSITION";
        goto LABEL_226;
      }
    }
  }

  if (v183)
  {
    [v183 addObject:@"USE_PROBES_LIGHTING"];
    [v183 addObject:@"USE_LIGHTING"];
    [v183 addObject:@"USE_PER_PIXEL_LIGHTING"];
    [v183 addObject:@"USE_PER_VERTEX_LIGHTING"];
  }

  if (C3DProgramHashCodeHasNormals(codeCopy))
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"HAS_NORMAL"];
  }

  if ((v177 & 2) != 0)
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"HAS_VERTEX_COLOR"];
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_VERTEX_COLOR"];
  }

  if (C3DProgramHashCodeUseDynamicBatching(codeCopy))
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_INSTANCING"];
  }

  if (C3DProgramHashCodeUsePointRendering(codeCopy))
  {
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_POINT_RENDERING"];
    if (v39)
    {
      goto LABEL_237;
    }
  }

  else if (v39)
  {
LABEL_237:
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"DISABLE_LINEAR_RENDERING"];
    if ((v39 & 0x40) != 0)
    {
      goto LABEL_238;
    }

LABEL_242:
    if ((v39 & 8) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_243;
  }

  if ((v39 & 0x40) == 0)
  {
    goto LABEL_242;
  }

LABEL_238:
  [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"DISABLE_SPECULAR"];
  if ((v39 & 8) != 0)
  {
LABEL_243:
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_MOTIONBLUR"];
  }

LABEL_244:
  if (v183)
  {
    [v183 addObject:@"HAS_NORMAL"];
    [v183 addObject:@"HAS_VERTEX_COLOR"];
    [v183 addObject:@"USE_VERTEX_COLOR"];
    [v183 addObject:@"USE_INSTANCING"];
    [v183 addObject:@"USE_POINT_RENDERING"];
    [v183 addObject:@"DISABLE_LINEAR_RENDERING"];
    [v183 addObject:@"DISABLE_SPECULAR"];
    [v183 addObject:@"USE_MOTIONBLUR"];
  }

  if ((v39 & 0x80) != 0)
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_COLOR1_OUTPUT"];
    if ((v39 & 2) == 0)
    {
LABEL_248:
      if ((v39 & 4) == 0)
      {
        goto LABEL_249;
      }

      goto LABEL_258;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_248;
  }

  [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
  [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_NORMALS_OUTPUT"];
  if ((v39 & 4) == 0)
  {
LABEL_249:
    if ((v39 & 0x100) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_259;
  }

LABEL_258:
  [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_REFLECTANCE_ROUGHNESS_OUTPUT"];
  if ((v39 & 0x100) == 0)
  {
LABEL_250:
    if ((v39 & 0x20) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

LABEL_259:
  [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_RADIANCE_OUTPUT"];
  if ((v39 & 0x20) != 0)
  {
LABEL_251:
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_OUTLINE"];
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_MODELTRANSFORM"];
  }

LABEL_252:
  if (v183)
  {
    [v183 addObject:@"USE_COLOR1_OUTPUT"];
    [v183 addObject:@"USE_NORMALS_OUTPUT"];
    [v183 addObject:@"USE_REFLECTANCE_ROUGHNESS_OUTPUT"];
    [v183 addObject:@"USE_RADIANCE_OUTPUT"];
    [v183 addObject:@"USE_OUTLINE"];
  }

  if (C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 8u))
  {
    __AddProperty(&codeCopy2, 8u, 1, 1);
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_AMBIENT_AS_AMBIENTOCCLUSION"];
  }

  else
  {
    __AddProperty(&codeCopy2, 1u, 1, (v38 >= 0) & AmbientLightingEnabled);
  }

  __AddProperty(&codeCopy2, 2u, 2, 1);
  __AddProperty(&codeCopy2, 3u, 3, (v162 | v154) & 1);
  __AddProperty(&codeCopy2, 9u, 9, 1);
  __AddProperty(&codeCopy2, 0, 0, 1);
  __AddProperty(&codeCopy2, 6u, 6, 1);
  __AddProperty(&codeCopy2, 7u, 7, v155);
  if (BYTE8(v183) == 1)
  {
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_TANGENT"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_BITANGENT"];
  }

  __AddProperty(&codeCopy2, 0xAu, 10, v30 == 5);
  __AddProperty(&codeCopy2, 0xBu, 11, v30 == 5);
  if (v30 == 5)
  {
    v78 = C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 0xCu);
  }

  else
  {
    v78 = 0;
  }

  __AddProperty(&codeCopy2, 0xCu, 12, v78);
  __AddProperty(&codeCopy2, 0xDu, 13, v78);
  __AddProperty(&codeCopy2, 0xEu, 14, v78);
  if (BYTE8(v183) == 1)
  {
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_TANGENT"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_BITANGENT"];
  }

  v79 = v157 & (IsOpaque ^ 1);
  __AddProperty(&codeCopy2, 4u, 4, 1);
  if (BYTE8(v183) == 1)
  {
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_VIEW"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  v80 = (CommonProfileHashCode >> 11) & 0xF;
  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 2u))
  {
    v81 = C3DProgramHashCodeGetEffectPropertyHashCode(codeCopy, 2u);
    if (v81)
    {
      v82 = (v81 >> 5) & 1;
      v83 = v82;
    }

    else
    {
      LODWORD(v82) = 0;
      v83 = (v81 & 8) == 0;
    }
  }

  else
  {
    LODWORD(v82) = 0;
    v83 = 0;
  }

  if ((v80 == 1) & IsOne | v79 & 1)
  {
    v84 = !((v80 == 1) & IsOne);
  }

  else
  {
    v84 = v82 | HasConstantAlpha ^ 1;
  }

  __AddProperty(&codeCopy2, 5u, 5, v84 & 1);
  if (v80 == 1 && [v182 objectForKeyedSubscript:@"USE_TRANSPARENT"])
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_TRANSPARENCY_RGBZERO"];
  }

  if (v30 == 5)
  {
    v85 = C3DPBROpacityIsEnabled();
    if (v80 != 1 && v85)
    {
      [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PBR_TRANSPARENCY"];
    }

    if (C3DWasLinkedBeforeMajorOSYear2023())
    {
      [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PBR_LAMBERTIAN_REFLECTION"];
    }
  }

  if ((v38 & 0x8000) == 0)
  {
    if ((v38 & 0x20) != 0)
    {
      goto LABEL_293;
    }

LABEL_292:
    if (v80 != 3)
    {
      goto LABEL_294;
    }

    goto LABEL_293;
  }

  [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"LOCK_AMBIENT_WITH_DIFFUSE"];
  if ((v38 & 0x20) == 0)
  {
    goto LABEL_292;
  }

LABEL_293:
  [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_DOUBLE_SIDED"];
LABEL_294:
  if ((IsOne & 1) == 0)
  {
    if (((v79 | v82) & 1) != 0 || (v153 & 2) != 0)
    {
      [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_TRANSPARENCY"];
    }

    if ((HasConstantAlpha & 1) == 0)
    {
      [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_NODE_OPACITY"];
    }
  }

  if ((EffectPropertyHashCode & 0x400) != 0 || !v83)
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"DIFFUSE_PREMULTIPLIED"];
  }

  if (v183)
  {
    [v183 addObject:@"USE_TRANSPARENCY_RGBZERO"];
    [v183 addObject:@"LOCK_AMBIENT_WITH_DIFFUSE"];
    [v183 addObject:@"USE_DOUBLE_SIDED"];
    [v183 addObject:@"USE_TRANSPARENCY"];
    [v183 addObject:@"USE_PBR_TRANSPARENCY"];
    [v183 addObject:@"USE_PBR_LAMBERTIAN_REFLECTION"];
    [v183 addObject:@"USE_NODE_OPACITY"];
    [v183 addObject:@"DIFFUSE_PREMULTIPLIED"];
  }

  CustomSlotCount = C3DProgramHashCodeGetCustomSlotCount(codeCopy);
  if (CustomSlotCount >= 1)
  {
    v88 = CustomSlotCount;
    for (i = 0; i != v88; ++i)
    {
      CustomSlotSortedName = C3DProgramHashCodeGetCustomSlotSortedName(codeCopy, i);
      CustomSlotUVSet = C3DProgramHashCodeGetCustomSlotUVSet(codeCopy, i);
      if (CustomSlotUVSet != -1)
      {
        v92 = CustomSlotUVSet;
        [v187 appendFormat:@"    float2 %@Texcoord;\n", CustomSlotSortedName];
        [*(&v189 + 1) appendFormat:@"    _surface.%@Texcoord = in.texcoord%d;\n", CustomSlotSortedName, v92];
      }
    }
  }

  if ((v79 | v82) == 1)
  {
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_DISCARD"];
  }

  v93 = selfCopy;
  if (v183)
  {
    [v183 addObject:@"USE_DISCARD"];
  }

  UVSetsCount = C3DProgramHashCodeGetUVSetsCount(codeCopy2);
  if (UVSetsCount)
  {
    if (UVSetsCount >= 8)
    {
      v95 = 8;
    }

    else
    {
      v95 = UVSetsCount;
    }

    if (UVSetsCount < 1)
    {
      v97 = 0;
    }

    else
    {
      v96 = 0;
      v97 = 0;
      do
      {
        UVSetInfo = C3DProgramHashCodeGetUVSetInfo(codeCopy2, v96);
        [*(&v187 + 1) appendString:g_varyingTexCoordDecl[v96]];
        if (HIBYTE(UVSetInfo) == 255)
        {
          v99 = UVSetInfo;
          [*(&v188 + 1) appendFormat:@"out.texcoord%d = _geometry.texcoords[%d].xy;\n", v96, UVSetInfo, v147, v148, v151, v152];
        }

        else
        {
          v100 = v190;
          LODWORD(v190) = v190 + 1;
          v99 = UVSetInfo;
          [*(&v188 + 1) appendFormat:@"out.texcoord%d = (scn_commonprofile.textureTransforms[%d] * float4(_geometry.texcoords[%d], 0., 1.)).xy;\n", v96, v100, UVSetInfo, v148, v151, v152];
        }

        [v182 setObject:&stru_282DCC058 forKeyedSubscript:g_NeedTexCoordDefines[v99]];
        if (v97 <= (v99 + 1))
        {
          v97 = (v99 + 1);
        }

        ++v96;
      }

      while (v95 != v96);
    }

    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_TEXCOORD"];
    codeCopy = v171;
    v93 = selfCopy;
  }

  else
  {
    v97 = 0;
  }

  if (v190)
  {
    v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [v182 setObject:v101 forKeyedSubscript:@"TEXTURE_TRANSFORM_COUNT"];
  }

  v102 = [MEMORY[0x277CCABB0] numberWithLong:v97];
  [v182 setObject:v102 forKeyedSubscript:@"kSCNTexcoordCount"];
  if (v183)
  {
    [v183 addObject:@"USE_TEXCOORD"];
    [v183 addObject:@"TEXTURE_TRANSFORM_COUNT"];
    for (j = 0; j != 8; ++j)
    {
      [v183 addObject:g_NeedTexCoordDefines[j]];
    }
  }

  v104 = C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 0xFu);
  __AddProperty(&codeCopy2, 0xFu, 15, v104);
  if (v104)
  {
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_TANGENT"];
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_BITANGENT"];
  }

  if ([objc_msgSend(v182 objectForKeyedSubscript:{@"USE_VIEW", "intValue"}] == 2)
  {
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  if ([v182 objectForKeyedSubscript:@"USE_NORMAL"] && !objc_msgSend(v182, "objectForKeyedSubscript:", @"HAS_NORMAL"))
  {
    [v182 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  v105 = @"USE_MODELVIEWTRANSFORM";
  if (![v182 objectForKeyedSubscript:@"USE_POSITION"] && !objc_msgSend(v182, "objectForKeyedSubscript:", @"USE_INSTANCING"))
  {
    v105 = @"USE_MODELVIEWPROJECTIONTRANSFORM";
  }

  [v182 setObject:&stru_282DCC058 forKeyedSubscript:v105];
  if ([v182 objectForKeyedSubscript:@"USE_NORMAL"] || objc_msgSend(v182, "objectForKeyedSubscript:", @"USE_TANGENT") || objc_msgSend(v182, "objectForKeyedSubscript:", @"USE_BITANGENT"))
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_MODELVIEWTRANSFORM"];
  }

  if ((v177 & 0x8000000) != 0)
  {
    [v194 appendString:{@"interpolant<float2, interpolation::perspective> bezierCurveUV;\n"}];
    [*(&v193 + 1) appendString:{@", device void const *scn_bezier_curve_data\n"}];
    [*(&v193 + 1) appendString:{@", device packed_float3 const *scn_bezier_curve_controlPoints\n"}];
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"NEED_IN_TEXCOORD0"];
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"IS_BEZIER_CURVE"];
    v106 = v169;
    if (v169 <= 0x20003)
    {
      v106 = 131075;
    }

    LODWORD(v169) = v106;
    v176 = 1;
  }

  else
  {
    v176 = 0;
  }

  if (v183)
  {
    [v183 addObject:@"IS_BEZIER_CURVE"];
  }

  if ([v184 length])
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SHADER_MODIFIERS"];
  }

  if ([v187 length])
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SURFACE_EXTRA_DECL"];
  }

  if ([v194 length])
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_EXTRA_VARYINGS"];
  }

  if (v183)
  {
    [v183 addObject:@"USE_SHADER_MODIFIERS"];
    [v183 addObject:@"USE_SURFACE_EXTRA_DECL"];
    [v183 addObject:@"USE_EXTRA_VARYINGS"];
  }

  v174 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_metal");
  v107 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_util.h");
  if (v165 == 5 || v93->_useFunctionConstants)
  {
    v108 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-PBR.metal");
  }

  else
  {
    v108 = &stru_282DCC058;
  }

  __configureOpenSubdivSupport(&codeCopy2, v161, codeCopy);
  if ([v182 objectForKeyedSubscript:@"HAS_NORMAL"] || objc_msgSend(v182, "objectForKeyedSubscript:", @"USE_OPENSUBDIV"))
  {
    [v182 setObject:@"1" forKeyedSubscript:@"HAS_OR_GENERATES_NORMAL"];
  }

  v110 = &stru_282DCC058;
  if (v161)
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_TESSELLATION"];
    v110 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_tessellation.h");
    v111 = (v177 >> 3) & 3;
    if (v111 == 1)
    {
      v112 = @"TESSELLATION_SMOOTHING_MODE_PN_TRIANGLE";
    }

    else
    {
      if (v111 != 2)
      {
        goto LABEL_379;
      }

      v112 = @"TESSELLATION_SMOOTHING_MODE_PHONG";
    }

    [v182 setObject:&stru_282DCC058 forKeyedSubscript:v112];
  }

LABEL_379:
  if (v183)
  {
    C3DSubdivisionOsdGPUGetAllPossibleMacros(v183, v109);
    [v183 addObject:@"HAS_OR_GENERATES_NORMAL"];
    [v183 addObject:@"USE_TESSELLATION"];
  }

  v113 = (v177 >> 27) & 1;
  v213[0] = v187;
  v213[1] = v192;
  if (*(&v186 + 1))
  {
    v114 = *(&v186 + 1);
  }

  else
  {
    v114 = &stru_282DCC058;
  }

  v213[2] = v114;
  v115 = -[NSString scn_stringByReplacingCharactersInRanges:withStrings:](v93->_originalLightingSourceCode, "scn_stringByReplacingCharactersInRanges:withStrings:", v93->_lightingInjectionPointRanges, [MEMORY[0x277CBEA60] arrayWithObjects:v213 count:3]);
  v199[0] = v174;
  v199[1] = v107;
  v199[2] = v108;
  v199[3] = v110;
  v199[4] = *(&v187 + 1);
  v199[5] = v194;
  v199[6] = v184;
  v199[7] = v115;
  v201 = v196;
  v202 = v193;
  if (v185)
  {
    v116 = v185;
  }

  else
  {
    v116 = &stru_282DCC058;
  }

  v203 = v189;
  v204 = v116;
  if (BYTE11(v194))
  {
    v117 = &stru_282DCC058;
  }

  else
  {
    v117 = *(&v190 + 1);
  }

  if (!v166)
  {
    v117 = &stru_282DCC058;
  }

  v205 = v117;
  v206 = *(&v188 + 1);
  v200 = v195;
  v207 = *(&v193 + 1);
  v208 = *(&v189 + 1);
  v118 = *(&v185 + 1);
  if (!*(&v185 + 1))
  {
    v118 = &stru_282DCC058;
  }

  v209 = v118;
  v210 = *(&v192 + 1);
  if ((v166 & BYTE11(v194)) != 0)
  {
    v119 = *(&v190 + 1);
  }

  else
  {
    v119 = &stru_282DCC058;
  }

  if (v186)
  {
    v120 = v186;
  }

  else
  {
    v120 = &stru_282DCC058;
  }

  v211 = v119;
  v212 = v120;
  v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v199 count:22];
  v122 = [(NSString *)v93->_originalSourceCode scn_stringByReplacingCharactersInRanges:v93->_injectionPointRanges withStrings:v121];
  v178 = (v177 >> 27) & 1;
  v123 = [(SCNCommonProfileProgramGeneratorMetal *)v93 splitInputOutputStructsIfNeededForSourceCode:v122 generatedFromReplacementStrings:v121 perPixelLighting:BYTE11(v194) clipDistanceCount:v167 hasBezierCurveDeformer:v113];
  if (C3DShouldCollectGeneratedShaders())
  {
    v175 = v123;
    v124 = [v121 mutableCopy];
    v125 = [(NSArray *)v93->_injectionPointRanges count];
    v126 = contextCopy;
    if (v125)
    {
      v127 = v125;
      v128 = 0;
      while (1)
      {
        v129 = [-[NSArray objectAtIndexedSubscript:](selfCopy->_injectionPointRanges objectAtIndexedSubscript:{v128), "rangeValue"}];
        v130 = [(NSString *)selfCopy->_originalSourceCode substringWithRange:v129, v130];
        if (![(__CFString *)v130 hasPrefix:@"#import"])
        {
          break;
        }

        if (([(__CFString *)v130 containsString:@"C3D-Lighting.metal"]& 1) == 0)
        {
          v132 = [v121 objectAtIndexedSubscript:v128];
          v133 = MEMORY[0x277CCACA8];
          v149 = v130;
          goto LABEL_409;
        }

LABEL_414:
        if (v127 == ++v128)
        {
          goto LABEL_415;
        }
      }

      if ([v196 length] && -[__CFString containsString:](v130, "containsString:", @"__OpenSubdivDeclShared__"))
      {
        v132 = [v121 objectAtIndexedSubscript:v128];
        v133 = MEMORY[0x277CCACA8];
        v149 = @"#generate __OpenSubdivDeclShared__.metal";
LABEL_409:
        v134 = [v133 stringWithFormat:@"%@%@\n%@%@\n%@", @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v132, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v149, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n"];
      }

      else
      {
        if (![*(&v195 + 1) length] || !-[__CFString containsString:](v130, "containsString:", @"__OpenSubdivDeclPerPatchType__"))
        {
          goto LABEL_414;
        }

        v135 = [v121 objectAtIndexedSubscript:v128];
        v136 = MEMORY[0x277CCACA8];
        v150 = [MEMORY[0x277CCACA8] stringWithFormat:@"#generate __OpenSubdivDeclShared__patchType%d.metal", C3DProgramHashCodeOpenSubdivPatchType(v171)];
        v137 = v136;
        v126 = contextCopy;
        v134 = [v137 stringWithFormat:@"%@%@\n%@%@\n%@", @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v135, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v150, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n"];
      }

      [v124 setObject:v134 atIndexedSubscript:v128];
      goto LABEL_414;
    }

LABEL_415:
    v138 = [(NSString *)selfCopy->_originalSourceCode scn_stringByReplacingCharactersInRanges:selfCopy->_injectionPointRanges withStrings:v124];
    v139 = [(SCNCommonProfileProgramGeneratorMetal *)selfCopy splitInputOutputStructsIfNeededForSourceCode:v138 generatedFromReplacementStrings:v124 perPixelLighting:BYTE11(v194) clipDistanceCount:v167 hasBezierCurveDeformer:v178];

    codeCopy = v171;
    v123 = v175;
  }

  else
  {
    v139 = 0;
    v126 = contextCopy;
  }

  if ([v193 length])
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_VERTEX_EXTRA_ARGUMENTS"];
  }

  if ([*(&v193 + 1) length])
  {
    [v182 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FRAGMENT_EXTRA_ARGUMENTS"];
  }

  [v182 setObject:&unk_282E0F8B8 forKeyedSubscript:@"METAL"];
  if ((C3DEngineContextGetCoordinatesSystemOptions(v126) & 8) != 0)
  {
    [v182 setObject:&unk_282E0F8B8 forKeyedSubscript:@"USE_REVERSE_Z"];
  }

  RenderingOptionForKey = C3DEngineContextGetRenderingOptionForKey(v126, @"debugRendering");
  if (RenderingOptionForKey)
  {
    valuePtr = 0;
    CFNumberGetValue(RenderingOptionForKey, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr)
    {
      v141 = [MEMORY[0x277CCABB0] numberWithInt:?];
      [v182 setObject:v141 forKeyedSubscript:@"DEBUG_PIXEL"];
    }
  }

  if (v183)
  {
    [v183 addObject:@"USE_VERTEX_EXTRA_ARGUMENTS"];
    [v183 addObject:@"USE_FRAGMENT_EXTRA_ARGUMENTS"];
    [v183 addObject:@"USE_ARGUMENT_BUFFERS"];
    [v183 addObject:@"USE_REVERSE_Z"];
    [v183 addObject:@"DEBUG_PIXEL"];
  }

  v142 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v142 appendString:@"////////////////////////////////////////////////\n"];
  [v142 appendFormat:@"// CommonProfile Shader v%d\n", 2];
  v143 = [v142 stringByAppendingString:v123];
  if (C3DShouldCollectGeneratedShaders())
  {
    v139 = [v142 stringByAppendingString:v139];
  }

  v144 = C3DFXMetalProgramCreateFromSource(@"commonprofile_vert", @"commonprofile_frag", v176, v143, v139, v182, v183, v169, 0);
  HashCode = C3DProgramHashCodeGetHashCode(codeCopy);
  C3DFXMetalProgramUpdateHashWithCommonProfileHashCode(v144, HashCode);
  return v144;
}

- (id)splitInputOutputStructsIfNeededForSourceCode:(id)code generatedFromReplacementStrings:(id)strings perPixelLighting:(BOOL)lighting clipDistanceCount:(unint64_t)count hasBezierCurveDeformer:(BOOL)deformer
{
  deformerCopy = deformer;
  lightingCopy = lighting;
  v52[4] = *MEMORY[0x277D85DE8];
  if (count || deformer)
  {
    v11 = self->_commonProfileIORange.length + self->_commonProfileIORange.location;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3010000000;
    v47 = &unk_21C362C36;
    commonProfileIORange = self->_commonProfileIORange;
    injectionPointRanges = self->_injectionPointRanges;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __176__SCNCommonProfileProgramGeneratorMetal_splitInputOutputStructsIfNeededForSourceCode_generatedFromReplacementStrings_perPixelLighting_clipDistanceCount_hasBezierCurveDeformer___block_invoke;
    v43[3] = &unk_278300870;
    v43[4] = self;
    v43[5] = strings;
    v43[6] = &v44;
    v43[7] = v11;
    [(NSArray *)injectionPointRanges enumerateObjectsUsingBlock:v43];
    v13 = [code substringWithRange:{v45[4], v45[5]}];
    v14 = [v13 length] - 19;
    if (count)
    {
      v15 = [v13 stringByReplacingCharactersInRange:v14 withString:{19, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"    float clipDistance [[clip_distance]] [%d];\n} commonprofile_io_vert;\n\n", count)}];
    }

    else
    {
      v15 = [v13 stringByReplacingCharactersInRange:v14 withString:{19, @"} commonprofile_io_vert;"}];
    }

    v16 = v15;
    if (deformerCopy)
    {
      v16 = [v15 stringByReplacingOccurrencesOfString:@"interpolant<float2 withString:{interpolation::perspective> bezierCurveUV;\n", @"float2 bezierCurveUV;\n"}];
    }

    v17 = v45[5] + v45[4];
    v18 = [code rangeOfString:@"vertex commonprofile_io" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
    v20 = v19;
    v42 = [code rangeOfString:@"commonprofile_io out;" options:0 range:{v18 + v20, objc_msgSend(code, "length") - (v18 + v20)}];
    v22 = v21;
    if (lightingCopy)
    {
      v23 = v21;
      v24 = v16;
      v25 = [code rangeOfString:@"commonprofile_io out;" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
      v27 = v26;
      v52[0] = [MEMORY[0x277CCAE60] valueWithRange:{v45[4], 0}];
      v52[1] = [MEMORY[0x277CCAE60] valueWithRange:{v25, v27}];
      v52[2] = [MEMORY[0x277CCAE60] valueWithRange:{v18, v20}];
      v52[3] = [MEMORY[0x277CCAE60] valueWithRange:{v42, v23}];
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
      v51[0] = v24;
      v51[1] = @"commonprofile_io_vert out;";
      v51[2] = @"vertex commonprofile_io_vert";
      v51[3] = @"commonprofile_io_vert out;";
      v29 = [code scn_stringByReplacingCharactersInRanges:v28 withStrings:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v51, 4)}];
    }

    else
    {
      v30 = [code rangeOfString:@"commonprofile_io out;" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
      v32 = v31;
      v41 = v16;
      v33 = [code rangeOfString:@"commonprofile_io in;" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
      v35 = v34;
      v36 = [code rangeOfString:@"commonprofile_io io" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
      v38 = v37;
      v50[0] = [MEMORY[0x277CCAE60] valueWithRange:{v45[4], 0}];
      v50[1] = [MEMORY[0x277CCAE60] valueWithRange:{v30, v32}];
      v50[2] = [MEMORY[0x277CCAE60] valueWithRange:{v33, v35}];
      v50[3] = [MEMORY[0x277CCAE60] valueWithRange:{v36, v38}];
      v50[4] = [MEMORY[0x277CCAE60] valueWithRange:{v18, v20}];
      v50[5] = [MEMORY[0x277CCAE60] valueWithRange:{v42, v22}];
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:6];
      v49[0] = v41;
      v49[1] = @"commonprofile_io_vert out;";
      v49[2] = @"commonprofile_io_vert in;";
      v49[3] = @"commonprofile_io_vert io";
      v49[4] = @"vertex commonprofile_io_vert";
      v49[5] = @"commonprofile_io_vert out;";
      v29 = [code scn_stringByReplacingCharactersInRanges:v39 withStrings:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v49, 6)}];
    }

    code = v29;
    _Block_object_dispose(&v44, 8);
  }

  return code;
}

unint64_t __176__SCNCommonProfileProgramGeneratorMetal_splitInputOutputStructsIfNeededForSourceCode_generatedFromReplacementStrings_perPixelLighting_clipDistanceCount_hasBezierCurveDeformer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 rangeValue];
  v7 = v6;
  if (result >= *(*(a1 + 32) + 56))
  {
    if (result >= *(a1 + 56))
    {
      return result;
    }

    v8 = 40;
  }

  else
  {
    v8 = 32;
  }

  result = [objc_msgSend(*(a1 + 40) objectAtIndexedSubscript:{a3), "length"}];
  *(*(*(a1 + 48) + 8) + v8) += result - v7;
  return result;
}

- (void)collectShaderForProgram:(__C3DFXMetalProgram *)program hashCode:(id)code newVertexFunctionName:(id)name newFragmentFunctionName:(id)functionName sourceCodeBlock:(id)block additionalFileBlock:(id)fileBlock
{
  v71 = *MEMORY[0x277D85DE8];
  PreprocessorsMacros = C3DFXMetalProgramGetPreprocessorsMacros(program);
  cf = program;
  SourceCodeForShaderCollection = C3DFXMetalProgramGetSourceCodeForShaderCollection(program);
  v12 = [SourceCodeForShaderCollection length];
  v13 = [SourceCodeForShaderCollection mutableCopy];
  [v13 replaceOccurrencesOfString:@"commonprofile_vert" withString:name options:0 range:{0, v12}];
  [v13 replaceOccurrencesOfString:@"commonprofile_frag" withString:functionName options:0 range:{0, v12}];
  v14 = [v13 length];
  v15 = [v13 rangeOfString:@"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n" options:2 range:{0, v14}];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v15;
    v58 = v13;
    do
    {
      v18 = v17 + v16;
      v19 = v13;
      v20 = [v13 rangeOfString:@"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n" options:2 range:{v17 + v16, v14 - (v17 + v16)}];
      v22 = v20 + v21;
      v23 = [v19 rangeOfString:@"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n" options:2 range:{v20 + v21, v14 - (v20 + v21)}];
      v25 = v24;
      v26 = [v19 substringWithRange:{v22, v23 - v22}];
      if ([v26 hasPrefix:@"#import"])
      {
        v27 = [v26 substringFromIndex:{objc_msgSend(v26, "rangeOfString:", @""}];
        v28 = [v27 substringToIndex:{objc_msgSend(v27, "rangeOfString:", @""}];
        v29 = [objc_msgSend(v28 "pathExtension")];
        v30 = v28;
        if ((v29 & 1) == 0)
        {
          v30 = [v28 stringByAppendingPathExtension:@"h"];
        }

        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"_import/%@", v30];
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"#import %@", v31];
        v33 = C3DGetTextResourceWithNameAllowingHotReload(v28);
        (*(fileBlock + 2))(fileBlock, v33, v31);
        v13 = v58;
      }

      else
      {
        if (![v26 hasPrefix:@"#generate"])
        {
          [SCNCommonProfileProgramGeneratorMetal collectShaderForProgram:hashCode:newVertexFunctionName:newFragmentFunctionName:sourceCodeBlock:additionalFileBlock:];
        }

        v34 = [v26 substringFromIndex:{objc_msgSend(v26, "rangeOfString:", @""}];
        v35 = [v34 substringToIndex:{objc_msgSend(v34, "rangeOfString:", @""}];
        if (([objc_msgSend(v35 "pathExtension")] & 1) == 0)
        {
          v35 = [v35 stringByAppendingPathExtension:@"h"];
        }

        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"_import/%@", v35];
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"#import %@", v36];
        v37 = v20 - v18;
        v13 = v58;
        (*(fileBlock + 2))(fileBlock, [v58 substringWithRange:{v18, v37}], v36);
      }

      [v13 replaceCharactersInRange:v23 withString:{v25, &stru_282DCC058}];
      [v13 replaceCharactersInRange:v22 withString:{v23 - v22, v32}];
      [v13 replaceCharactersInRange:v17 withString:{v22 - v17, &stru_282DCC058}];
      v14 = [v13 length];
      v17 = [v13 rangeOfString:@"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n" options:2 range:{0, v14}];
    }

    while (v17 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v38 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v39 = v13;
  [v13 insertString:@"\n" atIndex:0];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v40 = [objc_msgSend(objc_msgSend(PreprocessorsMacros "allKeys")];
  v41 = [v40 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v66;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v66 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v65 + 1) + 8 * i);
        v46 = [PreprocessorsMacros objectForKeyedSubscript:v45];
        [v39 insertString:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"stringWithFormat:", @"#define %@ %@\n", v45, v46), 0}];
        if ([v46 isEqual:&stru_282DCC058])
        {
          [v38 appendFormat:@" -D%@", v45, v54];
        }

        else
        {
          [v38 appendFormat:@" -D%@=%@", v45, v46];
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v42);
  }

  PreprocessorAllPossibleMacros = C3DFXMetalProgramGetPreprocessorAllPossibleMacros(cf);
  if ([PreprocessorAllPossibleMacros count])
  {
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v48 = [objc_msgSend(objc_msgSend(PreprocessorAllPossibleMacros "allObjects")];
    v49 = [v48 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v62;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v62 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v61 + 1) + 8 * j);
          if (![PreprocessorsMacros objectForKeyedSubscript:v53])
          {
            [v38 appendFormat:@" -U%@", v53];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v50);
    }
  }

  (*(fileBlock + 2))(fileBlock, v38, [MEMORY[0x277CCACA8] stringWithFormat:@"_unifdef/%@.h", code]);

  (*(block + 2))(block, v39);
}

- (void)_newProgramWithHashCode:(uint8_t *)buf engineContext:(_BYTE *)a2 introspectionDataPtr:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Multiple rendering is lacking a multiple output vertex streams generator", buf, 2u);
}

- (void)_newProgramWithHashCode:(uint8_t *)a1 engineContext:(void *)a2 introspectionDataPtr:(NSObject *)a3 .cold.3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Infinite lights can only be dir or unranged omni", a1);
}

@end