@interface SCNCommonProfileProgramGeneratorGL
- (SCNCommonProfileProgramGeneratorGL)init;
- (SCNCommonProfileProgramGeneratorGL)initWithProfile:(int)profile;
- (__C3DFXProgram)_newProgramWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr;
@end

@implementation SCNCommonProfileProgramGeneratorGL

- (SCNCommonProfileProgramGeneratorGL)initWithProfile:(int)profile
{
  v5.receiver = self;
  v5.super_class = SCNCommonProfileProgramGeneratorGL;
  result = [(SCNCommonProfileProgramGenerator *)&v5 init];
  if (result)
  {
    result->_profile = profile;
  }

  return result;
}

- (SCNCommonProfileProgramGeneratorGL)init
{
  v3.receiver = self;
  v3.super_class = SCNCommonProfileProgramGeneratorGL;
  return [(SCNCommonProfileProgramGenerator *)&v3 init];
}

- (__C3DFXProgram)_newProgramWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr
{
  *(&v177[2] + 4) = *MEMORY[0x277D85DE8];
  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 100, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CommonProfileHashCode = C3DProgramHashCodeGetCommonProfileHashCode(code);
  NodeHashCode = C3DProgramHashCodeGetNodeHashCode(code);
  HasTexture = C3DProgramHashCodeGetEffectPropertyHasTexture(code, 7u);
  v134 = C3DProgramHashCodeGetEffectPropertyHasTexture(code, 4u);
  IsOpaque = C3DProgramHashCodeIsOpaque(code);
  v138 = C3DProgramHashCodeGetEffectPropertyHasTexture(code, 5u);
  v9 = CommonProfileHashCode & 0xF;
  if (v9 == 5)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v9 = 2;
  }

  v149 = v9;
  EffectPropertyHashCode = C3DProgramHashCodeGetEffectPropertyHashCode(code, 2u);
  IsOne = C3DProgramHashCodeGlobalAlphaIsOne(code);
  HasConstantAlpha = C3DProgramHashCodeHasConstantAlpha(code);
  memset(v175, 0, sizeof(v175));
  v12 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(code, 0, 1, v175, 32);
  memset(v174, 0, sizeof(v174));
  v151 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(code, 1, 1, v174, 32);
  memset(v173, 0, sizeof(v173));
  v143 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(code, 2, 1, v173, 32);
  v170 = 0;
  v13 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(code, 3, 1, &v170, 1);
  if (v13 >= 2)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v13 = 1;
  }

  v128 = v12;
  __AppendModifierDefines(Mutable, v175, v12);
  __AppendModifierDefines(Mutable, v174, v151);
  __AppendModifierDefines(Mutable, v173, v143);
  __AppendModifierDefines(Mutable, &v170, v13);
  ModifierFlag = __GetModifierFlag(v173, v143);
  v125 = __GetModifierFlag(v174, v151);
  LightsCount = C3DProgramHashCodeGetLightsCount(code);
  theDict = Mutable;
  if ((v149 & 0xFFFFFFFB) != 0)
  {
    LightingEnabled = C3DProgramHashCodeGetLightingEnabled(code);
  }

  else
  {
    LightingEnabled = 0;
  }

  IsEnabled = 0;
  v145 = CommonProfileHashCode;
  v152 = LightingEnabled;
  if (LightingEnabled && (v149 & 0xE) == 2)
  {
    IsEnabled = C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 3u);
  }

  v18 = IsEnabled | CheckDefineUsageInModifiers(v174, v151, @"USE_SPECULAR");
  v19 = v18 | CheckDefineUsageInModifiers(&v170, v13, @"USE_SPECULAR");
  v20 = theDict;
  v21 = CommonProfileHashCode;
  appendedString = v19;
  if (v19)
  {
    if ((CommonProfileHashCode >> 4) & 1 | HasTexture & 1)
    {
      CFDictionarySetValue(theDict, @"USE_VIEW", @"2");
      CFDictionarySetValue(theDict, @"USE_SHININESS", @"2");
    }

    else
    {
      CFDictionaryAddValue(theDict, @"USE_VIEW", @"1");
      CFDictionaryAddValue(theDict, @"USE_SHININESS", @"1");
    }
  }

  AmbientLightingEnabled = C3DProgramHashCodeGetAmbientLightingEnabled(code);
  v161 = CFStringCreateMutable(alloc, 0);
  theString = CFStringCreateMutable(alloc, 0);
  v144 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v130 = IsOne;
  v131 = CommonProfileHashCode;
  v132 = (CommonProfileHashCode >> 4) & 1 | HasTexture;
  if (!v152)
  {
    goto LABEL_91;
  }

  if (v170)
  {
    Declaration = C3DShaderModifierGetDeclaration(v170);
    if (Declaration)
    {
      CFStringAppend(theString, Declaration);
    }
  }

  v23 = C3DGetTextResourceWithNameAllowingHotReload(@"SCNShaderLightDecl.glsl");
  CFStringAppend(theString, v23);
  if (!LightsCount)
  {
LABEL_91:
    v26 = 0;
    cf = 0;
    v146 = 0;
    v45 = v152;
    goto LABEL_98;
  }

  v24 = 0;
  v25 = 0;
  cf = 0;
  v153 = 0;
  v26 = 0;
  v27 = v161;
  do
  {
    v28 = v170;
    LightHashCode = C3DProgramHashCodeGetLightHashCode(code, v24);
    v30 = LightHashCode;
    v31 = LightHashCode & 7;
    if ((LightHashCode & 7) == 0)
    {
      goto LABEL_87;
    }

    v32 = CFStringCreateWithFormat(alloc, 0, @"u_light%hu", v24);
    CFStringAppend(v27, @"{\n");
    CFStringAppend(v27, @"    SCNShaderLight _light;\n");
    if ((v30 & 0x1000) != 0)
    {
      CFStringAppend(v27, @"    _light.intensity = vec4(1.);\n");
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"uniform vec4 %@_color;\n", v32);
      CFStringAppendFormat(v27, 0, @"    _light.intensity = %@_color;\n", v32);
    }

    v33 = (v30 >> 3) & 7;
    if (v31 > 2)
    {
      if (v31 == 3 || v31 == 5)
      {
        CFStringAppendFormat(theString, 0, @"uniform vec4 %@_position;\n", v32);
        CFStringAppendFormat(theString, 0, @"uniform vec4 %@_direction;\n", v32);
        v34 = v161;
        if (v33)
        {
          CFStringAppendFormat(v161, 0, @"    vec3 _D = %@_position.xyz - _surface.position;\n", v32);
          CFStringAppendFormat(v161, 0, @"    _light.dist = length(_D);\n");
          CFStringAppendFormat(v161, 0, @"    _light.direction = _D / _light.dist;\n", v120);
        }

        else
        {
          CFStringAppendFormat(v161, 0, @"    _light.direction = normalize(%@_position.xyz - _surface.position);\n", v32);
        }

        CFStringAppendFormat(v161, 0, @"    _light.dir = %@_direction.xyz;\n", v32);
        v26 = 1;
      }

      else
      {
LABEL_38:
        v34 = v161;
        CFStringAppend(v161, @"//Unsupported\n");
      }

LABEL_42:
      CFStringAppendFormat(v34, 0, @"    _light._att = 1.;\n");
      if (!v33)
      {
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    if (v31 == 1)
    {
      CFStringAppendFormat(theString, 0, @"uniform vec4 %@_direction;\n", v32);
      v34 = v161;
      CFStringAppendFormat(v161, 0, @"    _light.direction = %@_direction.xyz;\n", v32);
      goto LABEL_42;
    }

    if (v31 != 2)
    {
      goto LABEL_38;
    }

    CFStringAppendFormat(theString, 0, @"uniform vec4 %@_position;\n", v32);
    if (!v33)
    {
      CFStringAppendFormat(v161, 0, @"    _light.direction = normalize(%@_position.xyz - _surface.position);\n", v32);
      CFStringAppendFormat(v161, 0, @"    _light._att = 1.;\n");
      v26 = 1;
      goto LABEL_52;
    }

    CFStringAppendFormat(v161, 0, @"    vec3 _D = %@_position.xyz - _surface.position;\n", v32);
    CFStringAppendFormat(v161, 0, @"    _light.dist = length(_D);\n");
    CFStringAppendFormat(v161, 0, @"    _light.direction = _D / _light.dist;\n");
    CFStringAppendFormat(v161, 0, @"    _light._att = 1.;\n");
    v26 = 1;
LABEL_43:
    CFStringAppendFormat(theString, 0, @"uniform vec4 %@_attenuation;\n", v32);
    CFStringAppendFormat(v161, 0, @"    vec3 _att = %@_attenuation.xyz;\n", v32);
    if (((v30 >> 3) & 7) <= 2)
    {
      v35 = v161;
      if (v33 == 1)
      {
        v36 = @"    _light._att *= step(_light.dist, _att.x);\n";
      }

      else
      {
        v36 = @"    _light._att *= clamp(_light.dist * _att.x + _att.y, 0.0, 1.0);\n";
      }

      goto LABEL_51;
    }

    if (v33 == 3)
    {
      v35 = v161;
      v36 = @"    float _dstatt = clamp(_light.dist * _att.x + _att.y, 0.0, 1.0);\n    _light._att *= (_dstatt  * _dstatt);\n";
      goto LABEL_51;
    }

    if (v33 == 4)
    {
      v35 = v161;
      v36 = @"    _light._att *= pow(clamp(_light.dist * _att.x + _att.y, 0.0, 1.0), _att.z);\n";
LABEL_51:
      CFStringAppend(v35, v36);
    }

LABEL_52:
    v37 = (v30 >> 6) & 7;
    v27 = v161;
    if (v37)
    {
      CFStringAppendFormat(theString, 0, @"uniform vec4 %@_spotAttenuation;\n", v32);
      CFStringAppendFormat(v161, 0, @"    vec3 _spot = %@_spotAttenuation.xyz;\n", v32);
      if (v37 <= 4)
      {
        CFStringAppend(v161, off_278300318[v37 - 1]);
      }
    }

    if ((v30 & 0x400) != 0)
    {
      CFStringAppendFormat(theString, 0, @"uniform sampler2DShadow %@_shadow;\n", v32);
      CFStringAppendFormat(theString, 0, @"uniform mat4 %@_shadowMatrix;\n", v32);
      v38 = (v30 >> 16) & 0x1F;
      if (v38 < 2)
      {
        CFStringAppendFormat(v161, 0, @"    float _shadowingTerm = __shadow2DProj(%@_shadow, (%@_shadowMatrix * vec4(_surface.position, 1.)));\n", v32, v32, v122, v123, v124);
      }

      else
      {
        if (v25 <= v38)
        {
          v25 = (v30 >> 16) & 0x1F;
        }

        CFStringAppendFormat(theString, 0, @"uniform float %@_shadowRadius;\n", v32);
        CFStringAppendFormat(v161, 0, @"    float _shadowingTerm = 0.0;\n    vec4 _lightScreen = (%@_shadowMatrix * vec4(_surface.position, 1.));\n    float _filteringSizeFactor = %@_shadowRadius * _lightScreen.w;\n    for (int i=0; i < %d; i++){\n        _shadowingTerm += __shadow2DProj(%@_shadow, _lightScreen + (u_shadowKernel[i] * _filteringSizeFactor));\n    }\n    _shadowingTerm /= float(%d);\n", v32, v32, (v30 >> 16) & 0x1F, v32, (v30 >> 16) & 0x1F);
      }

      if ((v30 & 0x800) != 0)
      {
        CFStringAppendFormat(theString, 0, @"uniform vec4 %@_shadowColor;\n", v32);
        CFStringAppendFormat(v161, 0, @"    _light._att *= (1. - _shadowingTerm * %@_shadowColor.a);\n", v32);
      }

      else
      {
        CFStringAppendFormat(v161, 0, @"    _light._att *= (1. - _shadowingTerm);\n", v121);
      }

      v26 = 1;
      v153 = 1;
LABEL_69:
      if (v28)
      {
        goto LABEL_70;
      }

      if ((v30 & 0x1000) != 0)
      {
        goto LABEL_85;
      }

      goto LABEL_76;
    }

    if ((v30 & 0x205) != 0x201)
    {
      goto LABEL_69;
    }

    CFStringAppendFormat(theString, 0, @"uniform sampler2D %@_gobo;\n", v32);
    CFStringAppendFormat(theString, 0, @"uniform mat4 %@_goboMatrix;\n", v32);
    CFStringAppendFormat(theString, 0, @"uniform float %@_goboIntensity;\n", v32);
    if ((v30 & 0x1000) != 0)
    {
      CFStringAppendFormat(v161, 0, @"    _light.intensity *= mix(vec4(1.), texture2DProj(%@_gobo, (%@_goboMatrix * vec4(_surface.position, 1.))), %@_goboIntensity);\n", v32, v32, v32);
      v26 = 1;
      if (!v28)
      {
LABEL_85:
        CFStringAppend(v161, @"    _lightingContribution.modulate *= _light._att * _light.intensity.rgb;\n");
        cf = 1;
        goto LABEL_86;
      }

LABEL_70:
      Code = C3DShaderModifierGetCode(v28);
      if (!Code)
      {
        v40 = scn_default_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:buf engineContext:v177 introspectionDataPtr:v40];
        }
      }

      v27 = v161;
      v41 = v161;
      v42 = Code;
      goto LABEL_74;
    }

    CFStringAppendFormat(v161, 0, @"    _light.intensity *= %@_goboIntensity * texture2DProj(%@_gobo, (%@_goboMatrix * vec4(_surface.position, 1.)));\n", v32, v32, v32);
    v26 = 1;
    if (v28)
    {
      goto LABEL_70;
    }

LABEL_76:
    v43 = C3DProgramHashCodeGetCommonProfileHashCode(code) & 0xF;
    if (v43 == 5)
    {
      v44 = scn_default_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:v172 engineContext:v44 introspectionDataPtr:?];
      }

      v43 = 2;
    }

    CFStringAppend(v161, @"    _light.intensity.rgb *= _light._att * max(0.0, dot(_surface.normal, _light.direction));\n    _lightingContribution.diffuse += _light.intensity.rgb;\n");
    if (!appendedString)
    {
      goto LABEL_86;
    }

    if (v43 == 3)
    {
      v41 = v161;
      v42 = @"    vec3 _halfVector = normalize(_light.direction + _surface.view);\n    _lightingContribution.specular += pow(max(0.0, dot(_surface.normal, _halfVector)), _surface.shininess) * _light.intensity.rgb;\n";
    }

    else
    {
      if (v43 != 2)
      {
        goto LABEL_86;
      }

      v41 = v161;
      v42 = @"    vec3 _R = reflect(-_light.direction, _surface.normal);\n    _lightingContribution.specular += pow(max(0.0, dot(_R, _surface.view)), _surface.shininess) * _light.intensity.rgb;\n";
    }

LABEL_74:
    CFStringAppend(v41, v42);
LABEL_86:
    CFStringAppend(v27, @"}\n");
    CFRelease(v32);
LABEL_87:
    v24 = (v24 + 1);
  }

  while (LightsCount != v24);
  IsOne = v130;
  LOWORD(CommonProfileHashCode) = v131;
  v45 = v152;
  if (v153)
  {
    CFStringAppend(theString, @"float __shadow2DProj(sampler2DShadow tex, vec4 coord) {return shadow2DProjEXT( tex, coord);}\n");
    if (v25 >= 2)
    {
      CFStringAppendFormat(theString, 0, @"uniform vec4 u_shadowKernel[%d];\n", v25);
    }

    v146 = 1;
  }

  else
  {
    v146 = 0;
  }

  v20 = theDict;
  v21 = v145;
LABEL_98:
  v47 = (v21 & 0x280) != 0 && v149 == 4;
  if (C3DProgramHashCodeHasFog(code))
  {
    CFDictionaryAddValue(v20, @"USE_FOG", &stru_282DCC058);
    CFDictionaryAddValue(v20, @"USE_POSITION", @"2");
  }

  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 0x13u) && C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 0x14u) && C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 4u))
  {
    CFDictionaryAddValue(v20, @"USE_FRESNEL", &stru_282DCC058);
    CFDictionaryAddValue(v20, @"USE_VIEW", @"2");
    CFDictionaryAddValue(v20, @"USE_NORMAL", @"2");
    CFDictionaryAddValue(v20, @"USE_POSITION", @"2");
  }

  if ((v45 & ((v21 & 0x40) != 0)) == 1)
  {
    CFDictionaryAddValue(v20, @"AVOID_OVERLIGHTING", &stru_282DCC058);
  }

  v150 = v47 | v132;
  if (AmbientLightingEnabled)
  {
    CFDictionaryAddValue(v20, @"USE_AMBIENT_LIGHTING", &stru_282DCC058);
  }

  if (v45)
  {
    CFDictionaryAddValue(v20, @"USE_LIGHTING", &stru_282DCC058);
    if (v150)
    {
      CFDictionaryAddValue(v20, @"USE_PER_PIXEL_LIGHTING", &stru_282DCC058);
      CFDictionarySetValue(v20, @"USE_NORMAL", @"2");
      if (((appendedString == 0) & (v26 ^ 1)) == 0)
      {
        CFDictionarySetValue(v20, @"USE_POSITION", @"2");
      }

      if (cf)
      {
        v48 = @"USE_MODULATE";
        v49 = @"2";
        goto LABEL_124;
      }
    }

    else
    {
      CFDictionaryAddValue(v20, @"USE_NORMAL", @"1");
      CFDictionaryAddValue(v20, @"USE_PER_VERTEX_LIGHTING", &stru_282DCC058);
      if (!CFDictionaryGetValue(v20, @"USE_VIEW"))
      {
        CFDictionarySetValue(v20, @"USE_VIEW", @"1");
      }

      if (!CFDictionaryGetValue(v20, @"USE_POSITION"))
      {
        v48 = @"USE_POSITION";
        v49 = @"1";
LABEL_124:
        CFDictionarySetValue(v20, v48, v49);
      }
    }
  }

  if ((NodeHashCode & 2) != 0)
  {
    CFDictionaryAddValue(v20, @"USE_VERTEX_COLOR", &stru_282DCC058);
  }

  codeCopy = code;
  v169 = 0;
  v162 = v20;
  v164 = CFStringCreateMutable(alloc, 0);
  v165 = CFStringCreateMutable(alloc, 0);
  v166 = CFStringCreateMutable(alloc, 0);
  v167 = CFStringCreateMutable(alloc, 0);
  v50 = C3DGetTextResourceWithNameAllowingHotReload(@"SCNShaderSurfaceDecl.glsl");
  MutableCopy = CFStringCreateMutableCopy(alloc, 0, v50);
  if (C3DProgramHashCodeGetEffectPropertyHasTexture(code, 8u))
  {
    __AddTextureProperty(&v162, 8u, 1, AmbientLightingEnabled);
    CFDictionaryAddValue(v20, @"USE_AMBIENT_AS_AMBIENTOCCLUSION", &stru_282DCC058);
  }

  else
  {
    __AddTextureProperty(&v162, 1u, 1, ((CommonProfileHashCode & 0x8000u) == 0) & AmbientLightingEnabled);
  }

  __AddTextureProperty(&v162, 2u, 2, 1);
  __AddTextureProperty(&v162, 3u, 3, (appendedString | v134) & 1);
  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 9u))
  {
    __AddTextureProperty(&v162, 9u, 0, 1);
    CFDictionaryAddValue(v20, @"USE_EMISSION_AS_SELFILLUMINATION", &stru_282DCC058);
  }

  else
  {
    __AddTextureProperty(&v162, 0, 0, 1);
  }

  __AddTextureProperty(&v162, 6u, 6, 1);
  __AddTextureProperty(&v162, 7u, 7, 1);
  if (v169 == 1)
  {
    CFDictionarySetValue(v20, @"USE_TANGENT", @"2");
    CFDictionarySetValue(v20, @"USE_BITANGENT", @"2");
  }

  v51 = v138 & (IsOpaque ^ 1);
  __AddTextureProperty(&v162, 4u, 4, 1);
  if (v169 == 1)
  {
    CFDictionarySetValue(v20, @"USE_VIEW", @"2");
    CFDictionarySetValue(v20, @"USE_NORMAL", @"2");
    CFDictionarySetValue(v20, @"USE_POSITION", @"2");
  }

  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 2u))
  {
    v52 = C3DProgramHashCodeGetEffectPropertyHashCode(code, 2u);
    if (v52)
    {
      v53 = (v52 >> 5) & 1;
      v137 = (v52 >> 5) & 1;
    }

    else
    {
      LODWORD(v53) = 0;
      LOBYTE(v137) = (v52 & 8) == 0;
    }
  }

  else
  {
    LODWORD(v53) = 0;
    LOBYTE(v137) = 0;
  }

  v139 = CommonProfileHashCode & 0x7800;
  v154 = v51;
  if ((v139 == 2048) & IsOne | v51 & 1)
  {
    v54 = !(((CommonProfileHashCode & 0x7800) == 2048) & IsOne);
  }

  else
  {
    v54 = v53 | HasConstantAlpha ^ 1;
  }

  __AddTextureProperty(&v162, 5u, 5, v54 & 1);
  CustomSlotCount = C3DProgramHashCodeGetCustomSlotCount(code);
  if (CustomSlotCount >= 1)
  {
    v56 = CustomSlotCount;
    v57 = 0;
    v58 = MutableCopy;
    v59 = v167;
    do
    {
      CustomSlotSortedName = C3DProgramHashCodeGetCustomSlotSortedName(code, v57);
      CustomSlotUVSet = C3DProgramHashCodeGetCustomSlotUVSet(code, v57);
      if (CustomSlotUVSet != -1)
      {
        v62 = CustomSlotUVSet;
        CFStringAppendFormat(v58, 0, @"    vec2 %@Texcoord;\n", CustomSlotSortedName);
        CFStringAppendFormat(v59, 0, @"    _surface.%@Texcoord = v_texcoord%d;\n", CustomSlotSortedName, v62);
      }

      ++v57;
    }

    while (v56 != v57);
  }

  v63 = theDict;
  v135 = v154 | v53;
  if ((v154 | v53))
  {
    CFDictionarySetValue(theDict, @"USE_DISCARD", @"2");
  }

  appendedStringa = MutableCopy;
  CFStringAppend(MutableCopy, @"\n} _surface;\n");
  UVSetsCount = C3DProgramHashCodeGetUVSetsCount(code);
  v65 = UVSetsCount;
  v66 = v161;
  v155 = UVSetsCount;
  if (UVSetsCount)
  {
    if (UVSetsCount < 1)
    {
      v68 = 0;
    }

    else
    {
      v67 = 0;
      v68 = 0;
      v69 = v164;
      v70 = v165;
      v71 = v166;
      do
      {
        UVSetInfo = C3DProgramHashCodeGetUVSetInfo(code, v67);
        CFStringAppendFormat(v69, 0, @"varying vec2 v_texcoord%d;\n", v67);
        if (HIBYTE(UVSetInfo) == 255)
        {
          v74 = UVSetInfo;
          CFStringAppendFormat(v71, 0, @"v_texcoord%d = _geometry.texcoords[%d];\n", v67, UVSetInfo, v122);
        }

        else
        {
          if (UVSetInfo >> 8 > 20)
          {
            v73 = C3DProgramHashCodeGetCustomSlotSortedName(code, (HIBYTE(UVSetInfo) - 27));
          }

          else
          {
            v73 = __stringForProperty();
          }

          v75 = v73;
          CFStringAppendFormat(v70, 0, @"uniform mat4 u_%@TextureMatrix;\n", v73);
          v74 = UVSetInfo;
          CFStringAppendFormat(v71, 0, @"v_texcoord%d = (u_%@TextureMatrix * vec4(_geometry.texcoords[%d], 0., 1.)).xy;\n", v67, v75, UVSetInfo);
        }

        v76 = CFStringCreateWithFormat(alloc, 0, @"NEED_IN_TEXCOORD%d", v74);
        v63 = theDict;
        CFDictionaryAddValue(theDict, v76, &stru_282DCC058);
        CFRelease(v76);
        if (v68 <= (v74 + 1))
        {
          v68 = (v74 + 1);
        }

        ++v67;
        v65 = v155;
      }

      while (v155 != v67);
    }

    CFDictionaryAddValue(v63, @"USE_TEXCOORD", &stru_282DCC058);
    v66 = v161;
  }

  else
  {
    v68 = 0;
  }

  Value = CFDictionaryGetValue(v63, @"USE_VIEW");
  if (Value && CFStringCompare(Value, @"2", 0) == kCFCompareEqualTo)
  {
    CFDictionarySetValue(v63, @"USE_POSITION", @"2");
  }

  v78 = CFStringCreateMutable(alloc, 0);
  v79 = v78;
  if (v146)
  {
    CFStringAppend(v78, @"#extension GL_EXT_shadow_samplers : require\n\n");
  }

  v80 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-UberShader.vsh");
  if (v80)
  {
    cfa = CFStringCreateMutableCopy(alloc, 0, v80);
    v81 = CFStringCreateMutable(alloc, 0);
    v82 = C3DGetTextResourceWithNameAllowingHotReload(@"SCNShaderGeometryDecl.glsl");
    CFStringAppend(v81, v82);
    CFStringAppend(v81, appendedStringa);
    if ((v150 & 1) == 0)
    {
      CFStringAppend(v81, @"struct SCNShaderLightingContribution {vec3 ambient; vec3 diffuse; vec3 specular; vec3 modulate;} _lightingContribution;\n");
    }

    v83 = CFDictionaryCreateMutableCopy(alloc, 0, v63);
    v84 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (CFDictionaryContainsKey(v63, @"USE_POSITION") || CFDictionaryContainsKey(v63, @"USE_VIEW") || ((v152 ^ 1 | v150) & 1) == 0)
    {
      CFDictionarySetValue(v84, @"u_modelViewTransform", @"mat4");
      CFDictionarySetValue(v84, @"u_projectionTransform", @"mat4");
      CFDictionarySetValue(v83, @"SEPARATE_PROJECTION", @"1");
      if (!CFDictionaryGetValue(v63, @"USE_POSITION"))
      {
        v85 = @"USE_POSITION";
        v86 = @"1";
        v87 = v63;
        goto LABEL_184;
      }
    }

    else
    {
      v85 = @"u_modelViewProjectionTransform";
      v86 = @"mat4";
      v87 = v84;
LABEL_184:
      CFDictionarySetValue(v87, v85, v86);
    }

    if (CFDictionaryContainsKey(v63, @"USE_NORMAL") || CFDictionaryContainsKey(v63, @"USE_TANGENT") || CFDictionaryContainsKey(v63, @"USE_PER_VERTEX_LIGHTING"))
    {
      CFDictionarySetValue(v84, @"u_normalTransform", @"mat4");
    }

    v89 = NodeHashCode >> 28;
    if (v155)
    {
      CFStringAppend(v81, v165);
      CFStringAppend(v81, v164);
      v90 = v166;
      v180.length = CFStringGetLength(cfa);
      v180.location = 0;
      CFStringFindAndReplace(cfa, @"__DoTexcoord__", v90, v180, 0);
    }

    CFStringAppendFormat(v81, 0, @"#define kSCNTexcoordCount %ld\n", v68);
    if (v89)
    {
      CFDictionaryAddValue(v83, @"USE_SKINNING", &stru_282DCC058);
      v91 = CFStringCreateWithFormat(alloc, 0, @"%ld", v89);
      CFDictionaryAddValue(v83, @"MAX_BONE_INFLUENCES", v91);
      CFRelease(v91);
    }

    if (v128)
    {
      CFDictionaryAddValue(v83, @"USE_GEOMETRY_MODIFIER", &stru_282DCC058);
      __ReplaceCodeWithModifiers(v175, v128, cfa, v81, v83, v84, @"__DoGeometryModifier__");
    }

    if (!(v150 & 1 | ((v152 & 1) == 0)))
    {
      CFStringAppend(v81, theString);
      CFDictionaryApplyFunction(v144, __appendDictionary_0, v84);
      v181.length = CFStringGetLength(cfa);
      v181.location = 0;
      CFStringFindAndReplace(cfa, @"__DoLighting__", v66, v181, 0);
    }

    CFDictionaryApplyFunction(v84, __AppendUniformsDeclaration, v79);
    CFStringAppend(v81, cfa);
    Count = CFDictionaryGetCount(v83);
    v93 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v94 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(v83, v93, v94);
    if (Count >= 1)
    {
      v95 = v93;
      v96 = v94;
      do
      {
        v98 = *v95++;
        v97 = v98;
        v99 = *v96++;
        CFStringAppendFormat(v79, 0, @"#define %@ %@\n", v97, v99);
        --Count;
      }

      while (Count);
    }

    free(v93);
    free(v94);
    CFStringAppend(v79, v81);
    CFRelease(v83);
    CFRelease(v84);
    CFRelease(v81);
    CFRelease(cfa);
    v65 = v155;
    v63 = theDict;
    v66 = v161;
  }

  else
  {
    v88 = scn_default_log();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }
  }

  v100 = CFStringCreateMutable(alloc, 0);
  v101 = v100;
  if (v146)
  {
    CFStringAppend(v100, @"#extension GL_EXT_shadow_samplers : require\n\n");
  }

  CFStringAppend(v101, @"#extension GL_OES_standard_derivatives : enable\n\n");
  v102 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-UberShader.fsh");
  if (v102)
  {
    v103 = CFStringCreateMutableCopy(alloc, 0, v102);
    v104 = CFStringCreateMutable(alloc, 0);
    CFStringAppend(v104, appendedStringa);
    CFStringAppend(v104, @"struct SCNShaderLightingContribution {vec3 ambient; vec3 diffuse; vec3 specular; vec3 modulate;} _lightingContribution;\n");
    v105 = CFDictionaryCreateMutableCopy(alloc, 0, v63);
    v106 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v151)
    {
      CFDictionaryAddValue(v105, @"USE_SURFACE_MODIFIER", &stru_282DCC058);
      __ReplaceCodeWithModifiers(v174, v151, v103, v104, v105, v106, @"__DoSurfaceModifier__");
    }

    if (v143)
    {
      CFDictionaryAddValue(v105, @"USE_FRAGMENT_MODIFIER", &stru_282DCC058);
      __ReplaceCodeWithModifiers(v173, v143, v103, v104, v105, v106, @"__DoFragmentModifier__");
    }

    if (v131 < 0)
    {
      CFDictionaryAddValue(v105, @"LOCK_AMBIENT_WITH_DIFFUSE", &stru_282DCC058);
      if ((v145 & 0x20) != 0)
      {
LABEL_210:
        CFDictionaryAddValue(v105, @"USE_DOUBLE_SIDED", &stru_282DCC058);
      }
    }

    else if ((v145 & 0x20) != 0)
    {
      goto LABEL_210;
    }

    if ((v130 & 1) == 0)
    {
      if ((v135 | (((v125 | ModifierFlag) & 2) >> 1)) == 1)
      {
        CFDictionaryAddValue(v105, @"USE_TRANSPARENCY", &stru_282DCC058);
      }

      if (v139 == 2048)
      {
        CFDictionaryAddValue(v105, @"USE_NODE_OPACITY", &stru_282DCC058);
      }
    }

    v107 = v137;
    if ((EffectPropertyHashCode & 0x400) != 0)
    {
      v107 = 0;
    }

    if ((v107 & 1) == 0)
    {
      CFDictionaryAddValue(v105, @"DIFFUSE_PREMULTIPLIED", &stru_282DCC058);
    }

    if (v139 == 2048)
    {
      CFDictionaryAddValue(v105, @"USE_TRANSPARENCY_RGBZERO", &stru_282DCC058);
    }

    if (v65)
    {
      CFStringAppend(v104, v164);
      v108 = v167;
      v178 = CFStringFind(v103, @"__DoTexcoord__", 0);
      CFStringReplace(v103, v178, v108);
    }

    if ((v152 & v150) == 1)
    {
      CFStringAppend(v104, theString);
      CFDictionaryApplyFunction(v144, __appendDictionary_0, v106);
      v179 = CFStringFind(v103, @"__DoLighting__", 0);
      CFStringReplace(v103, v179, v66);
    }

    CFStringAppend(v101, @"precision highp float;\n");
    v156 = v106;
    CFDictionaryApplyFunction(v106, __AppendUniformsDeclaration, v101);
    alloca = v103;
    CFStringAppend(v104, v103);
    v109 = CFDictionaryGetCount(v105);
    v110 = malloc_type_malloc(8 * v109, 0x80040B8603338uLL);
    v111 = malloc_type_malloc(8 * v109, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(v105, v110, v111);
    if (v109 >= 1)
    {
      v112 = v110;
      v113 = v111;
      do
      {
        v115 = *v112++;
        v114 = v115;
        v116 = *v113++;
        CFStringAppendFormat(v101, 0, @"#define %@ %@\n", v114, v116);
        --v109;
      }

      while (v109);
    }

    free(v110);
    free(v111);
    CFStringAppend(v101, v104);
    CFRelease(v105);
    CFRelease(v156);
    CFRelease(v104);
    CFRelease(alloca);
    v63 = theDict;
    v66 = v161;
  }

  else
  {
    v117 = scn_default_log();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }
  }

  CFRelease(v164);
  CFRelease(v165);
  CFRelease(v166);
  CFRelease(v167);
  CFRelease(appendedStringa);
  v118 = C3DFXGLSLProgramCreateWithSources(v79, v101);
  C3DFXProgramSetProfile(v118, 0);
  C3DCommonProfileShaderAssignAttributesAndUniformsIndexes(v118);
  CFRelease(v79);
  CFRelease(v101);
  CFRelease(v144);
  CFRelease(v66);
  CFRelease(theString);
  CFRelease(v63);
  return v118;
}

- (void)_newProgramWithHashCode:(uint8_t *)buf engineContext:(void *)a2 introspectionDataPtr:(os_log_t)log .cold.3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "modCode";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

- (void)_newProgramWithHashCode:(uint8_t *)buf engineContext:(_BYTE *)a2 introspectionDataPtr:(os_log_t)log .cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Physically based lighting model is not supported by the OpenGL renderer, using Phong instead (2)", buf, 2u);
}

@end