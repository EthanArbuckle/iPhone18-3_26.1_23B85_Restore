uint64_t __UnbindValueForSymbol(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  UserInfo = C3DFXProgramDelegateGetUserInfo(v6);
  result = C3DFXProgramDelegateGetCallbacks(v6);
  if (result)
  {
    result = *(result + 8);
    if (result)
    {
      v13 = result;
      ProgramID = C3DFXGLSLProgramObjectGetProgramID(v8);
      Node = C3DRendererElementGetNode(v7);

      return v13(v5, a1, ProgramID, (a2 - 1), Node, UserInfo);
    }
  }

  return result;
}

uint64_t C3DRendererElementStateBindProgramRendererElement(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(&v216[1] + 4) = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  *(a1 + 48) = a2;
  MaterialForRenderPass = C3DRendererElementGetMaterialForRenderPass(a2, a4);
  Technique = C3DMaterialGetTechnique(MaterialForRenderPass);
  *(a1 + 368) = Technique;
  if (Technique)
  {
    SingleProgram = C3DFXTechniqueGetSingleProgram(Technique);
    Profile = C3DFXProgramGetProfile(SingleProgram);
    CommonProfile = 0;
    *(a1 + 384) = Profile;
  }

  else
  {
    *(a1 + 384) = 0;
    CommonProfile = C3DMaterialGetCommonProfile(MaterialForRenderPass);
  }

  *(a1 + 376) = CommonProfile;
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(a3);
  PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(a3);
  ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, a2, a4, PreferredRenderMode);
  *(a1 + 392) = ProgramHashCodeForRenderElement;
  if (ProgramHashCodeForRenderElement)
  {
    HasShaderModifiers = C3DProgramHashCodeHasShaderModifiers(ProgramHashCodeForRenderElement);
    v25 = (a1 + 389);
    *(a1 + 389) = HasShaderModifiers;
    v26 = (a1 + 390);
    *(a1 + 390) = 0;
    if (HasShaderModifiers)
    {
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = v28;
        ShaderModifiers = C3DProgramHashCodeGetShaderModifiers(*(a1 + 392), v27);
        if (ShaderModifiers)
        {
          v31 = ShaderModifiers;
          if (!CFArrayGetCount(ShaderModifiers))
          {
            v32 = scn_default_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              C3DRendererElementStateBindProgramRendererElement_cold_2(buf, v216, v32);
            }
          }

          Count = CFArrayGetCount(v31);
          if (Count >= 1)
          {
            v34 = Count;
            for (i = 0; i != v34; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v31, i);
              *v26 |= C3DShaderModifierGetFlags(ValueAtIndex) & 1;
            }
          }
        }

        v28 = 0;
        v27 = 1;
      }

      while ((v29 & 1) != 0);
    }
  }

  else
  {
    v25 = (a1 + 389);
    *(a1 + 389) = 0;
    v26 = (a1 + 390);
  }

  v37 = *(a1 + 32);
  v38 = *(a1 + 16);
  v200 = *(a1 + 24);
  v39 = C3DEngineContextGetProgramHashCodeStore(v37);
  if (a4)
  {
    v40 = C3DFXPassRequiresLighting(a4);
  }

  else
  {
    v40 = 1;
  }

  v41 = C3DEngineContextGetPreferredRenderMode(v37);
  v42 = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(v39, a2, a4, v41);
  Node = C3DRendererElementGetNode(a2);
  v44 = Node;
  v45 = 1.0;
  if (Node && (*v26 & 1) == 0)
  {
    C3DNodeGetWorldAlpha(Node);
    if (v46 == 0.0)
    {
      return 0;
    }

    v45 = v46;
  }

  v47 = C3DRendererElementGetMaterialForRenderPass(a2, a4);
  if (!v47)
  {
    __RendererElementStateUnbindLastUsedCommonProfile(a1, 1);
    if (*(a1 + 328))
    {
      C3DRendererContextUnbindProgramObject(v38);
      v58 = *(a1 + 328);
      if (v58)
      {
        CFRelease(v58);
        *(a1 + 328) = 0;
      }

      *(a1 + 336) = 0;
    }

    goto LABEL_134;
  }

  v197 = v44;
  v213 = 0;
  v192 = v47;
  v201 = v37;
  if (C3DMaterialGetTechnique(v47))
  {
    v48 = 0;
    v194 = 0;
    v49 = 0;
    v190 = 0;
LABEL_30:
    v50 = 0;
    v199 = 1;
    goto LABEL_31;
  }

  if (!v42)
  {
    return 0;
  }

  v48 = C3DMaterialGetCommonProfile(v192);
  v120 = C3DProgramHashCodeNeedTangents(v42);
  v49 = v40 && C3DEffectCommonProfileGetLightingModel(v48) != 4 && C3DEffectCommonProfileGetLightingModel(v48) != 0;
  HasConstantAlpha = C3DProgramHashCodeHasConstantAlpha(v42);
  if (a4 && HasConstantAlpha)
  {
    HasConstantAlpha = C3DFXPassHasConstantAlpha(a4);
  }

  v190 = HasConstantAlpha;
  if ((*v25 & 1) == 0 && (v45 < 1.0 || (C3DEffectCommonProfileIsOpaque(v48) & HasConstantAlpha & 1) == 0))
  {
    v148 = v49;
    TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(v48);
    ConstantAlpha = C3DEffectCommonProfileGetConstantAlpha(v48);
    _ZF = TransparencyMode == 1;
    v49 = v148;
    if (!_ZF && (v45 * ConstantAlpha) <= 0.0)
    {
      return 0;
    }
  }

  v194 = v120;
  if (!v48)
  {
    goto LABEL_30;
  }

  v144 = *(v48 + 194);
  v145 = HIWORD(v144) & 0x1FFF;
  if (v145 == 1)
  {
    v199 = 0;
    v50 = 0;
    goto LABEL_31;
  }

  if (v145)
  {
    if ((v144 & 0x20000) != 0)
    {
      EffectSlot = C3DEffectCommonProfileGetEffectSlot(v48, 0, 0);
      if (EffectSlot)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), EffectSlot);
      }
    }

    if ((*(v48 + 196) & 4) != 0)
    {
      v152 = C3DEffectCommonProfileGetEffectSlot(v48, 2, 0);
      if (v152)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v152);
      }
    }

    if ((*(v48 + 196) & 8) != 0)
    {
      v153 = C3DEffectCommonProfileGetEffectSlot(v48, 3, 0);
      if (v153)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v153);
      }
    }

    if ((*(v48 + 196) & 0x10) != 0)
    {
      v154 = C3DEffectCommonProfileGetEffectSlot(v48, 4, 0);
      if (v154)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v154);
      }
    }

    if ((*(v48 + 196) & 0x20) != 0)
    {
      v155 = C3DEffectCommonProfileGetEffectSlot(v48, 5, 0);
      if (v155)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v155);
      }
    }

    if ((*(v48 + 196) & 0x40) != 0)
    {
      v156 = C3DEffectCommonProfileGetEffectSlot(v48, 6, 0);
      if (v156)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v156);
      }
    }

    if ((*(v48 + 196) & 0x80) != 0)
    {
      v157 = C3DEffectCommonProfileGetEffectSlot(v48, 7, 0);
      if (v157)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v157);
      }
    }

    if (*(v48 + 197))
    {
      v158 = C3DEffectCommonProfileGetEffectSlot(v48, 1, 0);
      if (v158)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v158);
      }
    }

    if ((*(v48 + 197) & 2) != 0)
    {
      v159 = C3DEffectCommonProfileGetEffectSlot(v48, 8, 0);
      if (v159)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v159);
      }
    }

    if ((*(v48 + 197) & 4) != 0)
    {
      v160 = C3DEffectCommonProfileGetEffectSlot(v48, 9, 0);
      if (v160)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v160);
      }
    }

    if ((*(v48 + 197) & 8) != 0)
    {
      v161 = C3DEffectCommonProfileGetEffectSlot(v48, 10, 0);
      if (v161)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v161);
      }
    }

    if ((*(v48 + 197) & 0x10) == 0)
    {
      goto LABEL_256;
    }

    v162 = v48;
    v163 = 11;
  }

  else
  {
    *(v48 + 194) = v144 & 0xE000FFFF | 0x10000;
    v146 = C3DEffectCommonProfileGetEffectSlot(v48, 0, 0);
    if (v146)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v146))
      {
        v147 = 0x20000;
      }

      else
      {
        v147 = 0;
      }
    }

    else
    {
      v147 = 0;
    }

    *(v48 + 194) |= v147;
    v164 = C3DEffectCommonProfileGetEffectSlot(v48, 2, 0);
    if (v164)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v164))
      {
        v165 = 0x40000;
      }

      else
      {
        v165 = 0;
      }
    }

    else
    {
      v165 = 0;
    }

    *(v48 + 194) |= v165;
    v166 = C3DEffectCommonProfileGetEffectSlot(v48, 3, 0);
    if (v166)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v166))
      {
        v167 = 0x80000;
      }

      else
      {
        v167 = 0;
      }
    }

    else
    {
      v167 = 0;
    }

    *(v48 + 194) |= v167;
    v168 = C3DEffectCommonProfileGetEffectSlot(v48, 4, 0);
    if (v168)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v168))
      {
        v169 = 0x100000;
      }

      else
      {
        v169 = 0;
      }
    }

    else
    {
      v169 = 0;
    }

    *(v48 + 194) |= v169;
    v170 = C3DEffectCommonProfileGetEffectSlot(v48, 5, 0);
    if (v170)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v170))
      {
        v171 = 0x200000;
      }

      else
      {
        v171 = 0;
      }
    }

    else
    {
      v171 = 0;
    }

    *(v48 + 194) |= v171;
    v172 = C3DEffectCommonProfileGetEffectSlot(v48, 6, 0);
    if (v172)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v172))
      {
        v173 = 0x400000;
      }

      else
      {
        v173 = 0;
      }
    }

    else
    {
      v173 = 0;
    }

    *(v48 + 194) |= v173;
    v174 = C3DEffectCommonProfileGetEffectSlot(v48, 7, 0);
    if (v174)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v174))
      {
        v175 = 0x800000;
      }

      else
      {
        v175 = 0;
      }
    }

    else
    {
      v175 = 0;
    }

    *(v48 + 194) |= v175;
    v176 = C3DEffectCommonProfileGetEffectSlot(v48, 1, 0);
    if (v176)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v176))
      {
        v177 = 0x1000000;
      }

      else
      {
        v177 = 0;
      }
    }

    else
    {
      v177 = 0;
    }

    *(v48 + 194) |= v177;
    v178 = C3DEffectCommonProfileGetEffectSlot(v48, 8, 0);
    if (v178)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v178))
      {
        v179 = 0x2000000;
      }

      else
      {
        v179 = 0;
      }
    }

    else
    {
      v179 = 0;
    }

    *(v48 + 194) |= v179;
    v180 = C3DEffectCommonProfileGetEffectSlot(v48, 9, 0);
    if (v180)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v180))
      {
        v181 = 0x4000000;
      }

      else
      {
        v181 = 0;
      }
    }

    else
    {
      v181 = 0;
    }

    *(v48 + 194) |= v181;
    v182 = C3DEffectCommonProfileGetEffectSlot(v48, 10, 0);
    if (v182)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v182))
      {
        v183 = 0x8000000;
      }

      else
      {
        v183 = 0;
      }
    }

    else
    {
      v183 = 0;
    }

    *(v48 + 194) |= v183;
    v184 = C3DEffectCommonProfileGetEffectSlot(v48, 11, 0);
    if (v184)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v184))
      {
        v185 = 0x10000000;
      }

      else
      {
        v185 = 0;
      }
    }

    else
    {
      v185 = 0;
    }

    *(v48 + 194) |= v185;
    v186 = C3DEffectCommonProfileGetEffectSlot(v48, 15, 0);
    if (v186)
    {
      C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v186);
    }

    v187 = C3DEffectCommonProfileGetEffectSlot(v48, 12, 0);
    if (v187)
    {
      C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v187);
    }

    v188 = C3DEffectCommonProfileGetEffectSlot(v48, 13, 0);
    if (v188)
    {
      C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v188);
    }

    v162 = v48;
    v163 = 14;
  }

  v189 = C3DEffectCommonProfileGetEffectSlot(v162, v163, 0);
  if (v189)
  {
    C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v189);
  }

LABEL_256:
  v199 = 0;
  v50 = (*(v48 + 194) & 0x1FFF0000) != 0x10000;
LABEL_31:
  v51 = *v25;
  v198 = v48;
  v193 = v49;
  if (v51 == 1)
  {
    v195 = a4;
    v52 = v38;
    v53 = 0;
    *(a1 + 388) = 0;
    do
    {
      v54 = v51;
      if (C3DProgramHashCodeGetShaderModifiers(v42, v53))
      {
        ShaderModifierOwner = __getShaderModifierOwner(a2, v53);
        value.columns[0].i64[0] = MEMORY[0x277D85DD0];
        value.columns[0].i64[1] = 0x40000000;
        value.columns[1].i64[0] = ___ExecuteShaderModifiersTextureProxy_block_invoke;
        value.columns[1].i64[1] = &__block_descriptor_tmp_12;
        value.columns[2].i64[0] = a1;
        C3DEntityEnumerateKeyValuesWithBlock(ShaderModifierOwner, &value);
      }

      LOBYTE(v51) = 0;
      v53 = 1;
    }

    while ((v54 & 1) != 0);
    v38 = v52;
    a4 = v195;
    if (((v50 | *(a1 + 388)) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (!v50)
  {
LABEL_37:
    v56 = 0;
    v57 = v201;
    goto LABEL_44;
  }

  v57 = v201;
  C3DRendererElementStateReset(a1, v201);
  v56 = 1;
LABEL_44:
  C3DEnginePipelineGetRenderComponentsForRenderPass(a2, a4, v57, 0, 0, &v213, 0);
  if (v213 && (ProgramResident = C3DResourceManagerMakeProgramResident(v200, v213, v38)) != 0)
  {
    v60 = ProgramResident;
    v61 = v213;
  }

  else
  {
    v61 = 0;
    v60 = 0;
    v213 = 0;
  }

  v62 = *(a1 + 328);
  if (v62 != v61)
  {
    v63 = v61;
    if (v62)
    {
      CFRelease(*(a1 + 328));
      *(a1 + 328) = 0;
      v63 = v213;
    }

    if (v63)
    {
      v63 = CFRetain(v63);
    }

    *(a1 + 328) = v63;
    if (*(a1 + 336) != v60)
    {
      *(a1 + 336) = v60;
      C3DRendererContextBindProgramObject(v38, v60);
    }
  }

  if (v49)
  {
    v64 = *(a2 + 56);
    v65 = *(a1 + 344) != v64;
    *(a1 + 344) = v64;
  }

  else
  {
    v65 = 0;
  }

  v191 = v65;
  if ((v56 | v65) & 1 | (v62 != v61) || *(a1 + 56) != v48 || (C3DRendererElementIsOpaque(a2) & 1) == 0)
  {
    v196 = v56;
    v66 = v38;
    if (v62 == v61)
    {
      v67 = 1;
    }

    else
    {
      v67 = v199;
    }

    __RendererElementStateUnbindLastUsedCommonProfile(a1, v62 != v61);
    if (v60 && (v67 & 1) == 0)
    {
      UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v60, 187);
      if (UniformLocation != -1)
      {
        v69 = UniformLocation;
        PointOfView = C3DEngineContextGetPointOfView(v201);
        v211 = 0u;
        v212 = 0u;
        v209 = 0u;
        v210 = 0u;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        memset(&value, 0, sizeof(value));
        if (PointOfView)
        {
          if (C3DNodeGetProjectionInfos(PointOfView, &value))
          {
            ZFar = C3DProjectionInfosGetZFar(&value);
            v72 = 1.0 / (ZFar - C3DProjectionInfosGetZNear(&value));
            v[0] = v72;
            C3DRendererContextSetFloatUniformAtLocation(v66, v69, v, 1);
          }
        }
      }

      v73 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 190);
      if (v73 != -1)
      {
        v74 = v73;
        PointOfViewScale = C3DEngineContextGetPointOfViewScale(v201);
        Scene = C3DEngineContextGetScene(v201);
        value.columns[0] = 0uLL;
        value.columns[0] = *C3DSceneGetFogColor(Scene);
        C3DRendererContextSetColor4UniformAtLocation(v66, v74, &value, 1);
        v77 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 191);
        if (v77 != -1)
        {
          v78 = v77;
          *&v[1] = 0;
          v[0] = 0.0;
          *&v79 = C3DSceneComputeFogParameters(Scene, PointOfViewScale);
          *v = v79;
          C3DRendererContextSetVector3UniformAtLocation(v66, v78, v, 1);
        }
      }

      v80 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 189);
      if (v80 != -1)
      {
        v81 = v80;
        if ((__UpdateEffectIfNeeded_initialized & 1) == 0)
        {
          __UpdateEffectIfNeeded_initialized = 1;
          C3DSetupHaltonFilterKernelConic(__UpdateEffectIfNeeded_s_kernel, 31, 1.0, 1.0, -2.0);
        }

        C3DRendererContextSetVector4UniformAtLocation(v66, v81, __UpdateEffectIfNeeded_s_kernel[0].f32, 31);
      }

      v82 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 0);
      if (v82 != -1)
      {
        v83 = v82;
        SystemTime = C3DEngineContextGetSystemTime(v201);
        v85 = *&__UpdateEffectIfNeeded_t0;
        if (*&__UpdateEffectIfNeeded_t0 == 0.0)
        {
          __UpdateEffectIfNeeded_t0 = *&SystemTime;
          v85 = SystemTime;
        }

        v86 = SystemTime - v85;
        value.columns[0].f32[0] = v86;
        C3DRendererContextSetFloatUniformAtLocation(v66, v83, &value, 1);
      }

      v87 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 1);
      if (v87 != -1)
      {
        v88 = v87;
        Viewport = C3DEngineContextGetViewport(v201);
        __asm { FMOV            V1.2S, #1.0 }

        *value.columns[0].f32 = vdiv_f32(_D1, *&vextq_s8(Viewport, Viewport, 8uLL));
        C3DRendererContextSetVector2UniformAtLocation(v66, v88, &value, 1);
      }

      v95 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 14);
      if (v95 != -1)
      {
        v96 = v95;
        Matrix4x4 = C3DEngineContextGetMatrix4x4(v201, 0);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v66, v96, Matrix4x4, 1);
      }

      v98 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 15);
      if (v98 != -1)
      {
        v99 = v98;
        memset(&value, 0, sizeof(value));
        v100 = C3DEngineContextGetMatrix4x4(v201, 0);
        C3DMatrix4x4Invert(v100, &value);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v66, v99, &value, 1);
      }

      v101 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 17);
      if (v101 != -1)
      {
        v102 = v101;
        memset(&value, 0, sizeof(value));
        v103 = C3DEngineContextGetMatrix4x4(v201, 1);
        C3DMatrix4x4Invert(v103, &value);
        *&v[1] = 0;
        v[0] = 0.0;
        C3DMatrix4x4GetTranslation(&value, v);
        C3DRendererContextSetVector3UniformAtLocation(v66, v102, v, 1);
      }

      v104 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 12);
      if (v104 != -1)
      {
        v105 = v104;
        v106 = C3DEngineContextGetMatrix4x4(v201, 1);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v66, v105, v106, 1);
      }

      v107 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 13);
      if (v107 != -1)
      {
        v108 = v107;
        memset(&value, 0, sizeof(value));
        v109 = C3DEngineContextGetMatrix4x4(v201, 1);
        C3DMatrix4x4Invert(v109, &value);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v66, v108, &value, 1);
      }

      v110 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 16);
      LOBYTE(v49) = v193;
      if (v110 != -1)
      {
        v111 = v110;
        memset(&value, 0, sizeof(value));
        v112 = C3DEngineContextGetMatrix4x4(v201, 1);
        v113 = v112[3];
        v115 = *v112;
        v114 = v112[1];
        value.columns[2] = v112[2];
        value.columns[3] = v113;
        value.columns[0] = v115;
        value.columns[1] = v114;
        v116 = C3DEngineContextGetScene(v201);
        C3DSceneComputeViewToCubemapMatrix(v116, &value);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v66, v111, &value, 1);
      }
    }

    *(a1 + 320) = *(a1 + 400);
    v117 = *(a1 + 384);
    if (v117 == 1)
    {
      v121 = C3DBlendStatesDefaultOver();
      v38 = v66;
      C3DRendererContextSetBlendStates(v66, v121);
      v48 = v198;
    }

    else
    {
      v38 = v66;
      v48 = v198;
      if (!v117)
      {
        v118 = v45 * v38[19].f32[1];
        BlendMode = C3DMaterialGetBlendMode(v192);
        C3DRendererContextBindCommonProfile(v38, v200, v198, a1 + 64, v190, BlendMode, v118);
      }
    }

    *(a1 + 400) = *(a1 + 320);
    v122 = v196;
    if ((v199 & 1) == 0)
    {
      v123 = v191;
      if (v62 != v61)
      {
        v123 = 1;
      }

      if (v60 != 0 && v49 && v123)
      {
        v124 = *(a1 + 16);
        *&v207 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        memset(&value, 0, sizeof(value));
        C3DLightingSystemGetLightingSetDesc(*(a1 + 40), *(a1 + 48) + 56, &value);
        v125 = value.columns[0].i64[0];
        if (value.columns[0].i64[0] >= 1)
        {
          v126 = 0;
          do
          {
            v127 = &value + 8 * v126;
            v128 = *(v127 + 1);
            if (v128)
            {
              v129 = *(v127 + 9);
              if (v129)
              {
                C3DRendererContextSetLight(v124, v126, v128, v129, (a1 + 400));
                v125 = value.columns[0].i64[0];
              }
            }

            ++v126;
          }

          while (v126 < v125);
        }

        v130 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 184);
        if (v130 != -1)
        {
          v131 = v130;
          *v = C3DLightingSystemGetAmbientLighting(*(a1 + 40));
          *&v[2] = v132;
          C3DRendererContextSetColor4UniformAtLocation(v124, v131, v, 1);
        }

        v122 = v196;
      }

      if (v122)
      {
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 0, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 1, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 2, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 3, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 4, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 5, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 6, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 7, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 9, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 8, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 10, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 11, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 15, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 12, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 13, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v48, 14, 0);
      }
    }

    *(a1 + 56) = v48;
  }

  if (v197)
  {
    Skinner = C3DNodeGetSkinner(v197);
    if (Skinner)
    {
      v134 = Skinner;
      if (C3DGeometryGetOverrideMaterial(Skinner))
      {
        Geometry = C3DNodeGetGeometry(v197);
        if (C3DSkinnerGetEffectiveCalculationMode(v134, Geometry) == 1)
        {
          if (C3DRendererElementGetMeshElement(a2))
          {
            value.columns[0].i64[0] = 0;
            JointMatrices = C3DSkinnerGetJointMatrices(v134, &value);
            if (value.columns[0].i64[0] >= 1)
            {
              v137 = JointMatrices;
              v138 = C3DFXGLSLProgramObjectGetUniformLocation(v60, 186);
              if (v138 != -1)
              {
                C3DRendererContextSetVector4UniformAtLocation(v38, v138, v137, value.columns[0].i64[0]);
              }
            }
          }
        }
      }
    }
  }

  if (v194)
  {
    Mesh = C3DRendererElementGetMesh(a2);
    C3DMeshCreateTangentsIfNeeded(Mesh, 1);
  }

  if (v48)
  {
    v140 = C3DEffectCommonProfileGetLightingModel(v48) != 4;
    if (C3DEngineContextGetScene(v201))
    {
      if (*(a1 + 428) != v140)
      {
        *(a1 + 428) = v140;
      }
    }
  }

LABEL_134:
  RasterizerStates = C3DFXPassGetRasterizerStates(a4);
  if (RasterizerStates || (RasterizerStates = C3DRendererElementGetRaterizerStates(a2)) != 0)
  {
    C3DRendererContextSetRasterizerStates(v38, RasterizerStates);
  }

  return 1;
}

void C3DRendererElementStateDrawRendererElement(uint64_t a1, uint64_t a2, float32x4_t *a3, void *a4, int a5)
{
  *&v88[5] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  *(a1 + 48) = a2;
  if ((!a5 || C3DRendererElementStateBindProgramRendererElement(a1, a2, a3, a4)) && *(a1 + 328))
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(a3);
    ResourceManager = C3DEngineContextGetResourceManager(a3);
    Node = C3DRendererElementGetNode(a2);
    Mesh = C3DRendererElementGetMesh(a2);
    MeshElement = C3DRendererElementGetMeshElement(a2);
    v23 = *(a1 + 328);
    if (v23)
    {
      OverrideMaterial = C3DGeometryGetOverrideMaterial(v23);
      if (!Node)
      {
        goto LABEL_10;
      }
    }

    else
    {
      OverrideMaterial = 0;
      if (!Node)
      {
LABEL_10:
        if (Mesh)
        {
          C3DRendererContextBindMesh(RendererContextGL, ResourceManager, Mesh);
        }

        v26 = *(a1 + 336);
        if (*(v26 + 40))
        {
          if (*(a1 + 384) == 1)
          {
            C3DGLSLProfileBindProfileInputs(a3, v26, *(a1 + 368));
          }

          else
          {
            __UpdateMatrixUniforms(a1, a2);
            v27 = C3DRendererElementGetNode(a2);
            if (v27)
            {
              LightmapInfo = C3DNodeGetLightmapInfo(v27);
              if (LightmapInfo)
              {
                v29 = LightmapInfo;
                v85 = OverrideMaterial;
                v30 = RendererContextGL;
                Value = CFDictionaryGetValue(LightmapInfo, @"image");
                if (!Value)
                {
                  goto LABEL_79;
                }

                v32 = Value;
                v33 = C3DEngineContextGetResourceManager(a3);
                v83 = C3DEngineContextGetRendererContextGL(a3);
                v34 = *(a1 + 400);
                *(a1 + 400) = v34 + 1;
                TypeID = C3DImageGetTypeID();
                if (TypeID != CFGetTypeID(v32))
                {
                  goto LABEL_79;
                }

                CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(*(a2 + 32));
                if (!CommonProfileIfNoTechnique)
                {
                  goto LABEL_79;
                }

                TextureSampler = C3DEffectCommonProfileGetTextureSampler(CommonProfileIfNoTechnique, 2);
                ImageResident = C3DResourceManagerMakeImageResident(v33, v32, TextureSampler, v83);
                if (!ImageResident)
                {
                  goto LABEL_79;
                }

                v39 = ImageResident;
                valuePtr = 1;
                v40 = C3DRendererElementGetMesh(a2);
                v41 = CFDictionaryGetValue(v29, @"uv_set");
                if (v41)
                {
                  CFNumberGetValue(v41, kCFNumberIntType, &valuePtr);
                }

                SourcesCountForSemantic = C3DMeshGetSourcesCountForSemantic(v40, 3);
                if (SourcesCountForSemantic && (SourcesCountForSemantic - 1 >= valuePtr ? (v43 = valuePtr) : (v43 = (SourcesCountForSemantic - 1)), valuePtr = v43, C3DMeshGetSourceWithSemanticAtIndex(v40, 3, v43, 1)))
                {
                  v44 = v39;
                  v45 = TextureSampler;
                  v46 = v34;
                  v47 = a1 + 32 * v34;
                  *(v47 + 64) = 6;
                  v48 = v47 + 64;
                  v49 = v46;
                  *(v48 + 16) = v46;
                  v50 = *(v48 + 8);
                  cf = v44;
                  if (v50 != v44)
                  {
                    if (v50)
                    {
                      CFRelease(v50);
                      *(v48 + 8) = 0;
                    }

                    *(v48 + 8) = CFRetain(cf);
                  }

                  v51 = *(v48 + 24);
                  if (v51 != v45)
                  {
                    if (v51)
                    {
                      CFRelease(v51);
                      *(v48 + 24) = 0;
                    }

                    v52 = v45;
                    if (v45)
                    {
                      v52 = CFRetain(v45);
                    }

                    *(v48 + 24) = v52;
                  }

                  v53 = *(a1 + 336);
                  RendererContextGL = v30;
                  if (!v53)
                  {
                    v54 = scn_default_log();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
                    {
                      C3DRendererElementStateDrawRendererElement_cold_2(v54, v55, v56, v57, v58, v59, v60, v61);
                    }
                  }

                  OverrideMaterial = v85;
                  if (v49 != C3DFXGLSLProgramObjectGetUniformValueAtIndex(v53, 178))
                  {
                    UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v53, 178);
                    C3DRendererContextSetIntUniformAtLocation(v83, UniformLocation, v49);
                    C3DFXGLSLProgramObjectSetUniformValueAtIndex(v53, 178, v49);
                  }

                  C3DRendererContextBindTexture(v83, cf, v45, 0, v49);
                  if (!MeshElement)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
LABEL_79:
                  v48 = 0;
                  RendererContextGL = v30;
                  OverrideMaterial = v85;
                  if (!MeshElement)
                  {
                    goto LABEL_50;
                  }
                }

                goto LABEL_49;
              }
            }
          }
        }

        else
        {
          __UpdateMatrixUniforms(a1, a2);
        }

        v48 = 0;
        if (!MeshElement)
        {
LABEL_50:
          if (OverrideMaterial)
          {
            __FireProgramDelegateCallback(a1, a2, OverrideMaterial, __BindValueForSymbol);
          }

          v63 = *(a1 + 389);
          if (v63 == 1)
          {
            *v84 = RendererContextGL;
            v86 = OverrideMaterial;
            v64 = 0;
            v65 = *(a1 + 392);
            do
            {
              v66 = v63;
              ShaderModifiers = C3DProgramHashCodeGetShaderModifiers(v65, v64);
              if (ShaderModifiers)
              {
                v68 = ShaderModifiers;
                if (!CFArrayGetCount(ShaderModifiers))
                {
                  v69 = scn_default_log();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
                  {
                    C3DRendererElementStateBindProgramRendererElement_cold_2(&valuePtr, v88, v69);
                  }
                }

                ShaderModifierOwner = __getShaderModifierOwner(a2, v64);
                Count = CFArrayGetCount(v68);
                if (Count >= 1)
                {
                  v72 = Count;
                  for (i = 0; i != v72; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v68, i);
                    if (C3DShaderModifierGetLanguage(ValueAtIndex) == 1)
                    {
                      *(a1 + 400) += C3DShaderModifierBindUniforms(ValueAtIndex, *(a1 + 32), ShaderModifierOwner, *(a1 + 400));
                    }
                  }
                }
              }

              LOBYTE(v63) = 0;
              v64 = 1;
            }

            while ((v66 & 1) != 0);
            v75 = *(a1 + 388);
            RendererContextGL = *v84;
            OverrideMaterial = v86;
            if (v75 == 1)
            {
              v76 = 0;
              v77 = *(a1 + 392);
              do
              {
                v78 = v75;
                if (C3DProgramHashCodeGetShaderModifiers(v77, v76))
                {
                  v79 = __getShaderModifierOwner(a2, v76);
                  C3DEntityEnumerateKeyValuesWithBlock(v79, &__block_literal_global_22_0);
                }

                LOBYTE(v75) = 0;
                v76 = 1;
              }

              while ((v78 & 1) != 0);
              *(a1 + 388) = 0;
              OverrideMaterial = v86;
            }
          }

          C3DRendererContextRenderResidentMeshElement(RendererContextGL);
          if (OverrideMaterial)
          {
            __FireProgramDelegateCallback(a1, a2, OverrideMaterial, __UnbindValueForSymbol);
          }

          if (v48)
          {
            v80 = *(v48 + 8);
            if (v80)
            {
              CFRelease(v80);
              *(v48 + 8) = 0;
            }

            v81 = *(v48 + 24);
            if (v81)
            {
              CFRelease(v81);
              *(v48 + 24) = 0;
            }

            --*(a1 + 400);
          }

          return;
        }

LABEL_49:
        C3DRendererContextBindMeshElement(RendererContextGL, ResourceManager, MeshElement);
        goto LABEL_50;
      }
    }

    WorldMatrix = C3DNodeGetWorldMatrix(Node);
    C3DEngineContextSetMatrix4x4(a3, 2, WorldMatrix);
    goto LABEL_10;
  }
}

void __FireProgramDelegateCallback(uint64_t a1, uint64_t a2, uint64_t a3, void (__cdecl *a4)(const void *, const void *, void *))
{
  context[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 336);
  if (v4)
  {
    if (C3DFXProgramDelegateGetCallbacks(a3))
    {
      context[0] = *(a1 + 32);
      context[1] = a3;
      context[2] = v4;
      context[3] = a2;
      C3DFXGLSLProgramObjectApplyFunctionForAttributes(v4, a4, context);
      C3DFXGLSLProgramObjectApplyFunctionForUniforms(v4, a4, context);
    }
  }
}

void C3DRendererElementStateProcessRendererElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateProcessRendererElement_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  Pass = C3DFXPassInstanceGetPass(v6);
  Node = C3DRendererElementGetNode(a2);
  if (!a1 && (v17 = scn_default_log(), os_log_type_enabled(v17, OS_LOG_TYPE_FAULT)))
  {
    C3DRendererElementStateCreate_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    goto LABEL_9;
  }

  v25 = scn_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    _C3DRendererElementSync_cold_1(v25, v26, v27, v28, v29, v30, v31, v32);
  }

LABEL_9:
  *(a1 + 48) = a2;
  if (C3DRendererElementIsHidden(a2))
  {
    v33 = scn_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateProcessRendererElement_cold_4(v33, v34, v35, v36, v37, v38, v39, v40);
      if (Node)
      {
        goto LABEL_12;
      }

LABEL_22:
      if (C3DRendererElementIsRendererDelegate(a2))
      {
        return;
      }

      goto LABEL_23;
    }
  }

  if (!Node)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (C3DNodeGetOpacity(Node) <= 0.0 && (*(a2 + 72) & 7) != 2)
  {
    v41 = scn_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateProcessRendererElement_cold_5(v41, v42, v43, v44, v45, v46, v47, v48);
    }
  }

  if (C3DRendererElementIsRendererDelegate(a2))
  {
    RendererDelegate = C3DNodeGetRendererDelegate(Node);
    if (RendererDelegate)
    {
      v50 = RendererDelegate;
      C3DRendererElementStateReset(a1, v5);
      WorldMatrix = C3DNodeGetWorldMatrix(Node);
      C3DEngineContextSetMatrix4x4(v5, 2, WorldMatrix);
      C3DRendererDelegateFireWithNode(v50, v5, Node, Pass);
      return;
    }

    v52 = scn_default_log();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateProcessRendererElement_cold_6(v52, v53, v54, v55, v56, v57, v58, v59);
    }
  }

LABEL_23:
  v60 = *(a2 + 40);
  if (v60)
  {
    if (v60 != C3DFXTechniqueGetNullTechnique())
    {
      C3DEngineContextRenderSubTechnique(v5, v60, v6, a2);
      C3DRendererElementStateReset(a1, v5);
    }
  }

  else
  {
    C3DRendererElementStateDrawRendererElement(a1, a2, v5, Pass, 1);
  }
}

void C3DRendererContextDestroyAllVertexArrayObjects(void *context)
{
  v2 = *(context + 15);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, _destroyVertexArray, context);
    CFDictionaryRemoveAllValues(*(context + 15));
    v3 = *(context + 16);
    if (v3)
    {
      CFRelease(v3);
      *(context + 16) = 0;
    }
  }
}

uint64_t _destroyVertexArray(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  result = (*(a3 + 1944))(1, &v5);
  --*(a3 + 428);
  return result;
}

void _C3DRendererContextCFFinalize(char *context)
{
  if (context)
  {
    CFDictionaryApplyFunction(*(context + 15), _destroyVertexArray, context);
    v2 = *(context + 15);
    if (v2)
    {
      CFRelease(v2);
      *(context + 15) = 0;
    }

    v3 = *(context + 16);
    if (v3)
    {
      CFRelease(v3);
      *(context + 16) = 0;
    }

    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = &context[24 * v4 + 1992];
      v8 = *(v7 + 2);
      if (v8)
      {
        CFRelease(v8);
        *(v7 + 2) = 0;
      }

      v9 = *v7;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 0x40000000;
      v20[2] = ___C3DRendererContextCFFinalize_block_invoke;
      v20[3] = &__block_descriptor_tmp_44;
      v20[4] = context;
      C3DArrayApply(v9, v20);
      if (*v7)
      {
        CFRelease(*v7);
        *v7 = 0;
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    v10 = *(context + 255);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = ___C3DRendererContextCFFinalize_block_invoke_2;
    v19[3] = &__block_descriptor_tmp_45_0;
    v19[4] = context;
    C3DArrayApply(v10, v19);
    v11 = *(context + 255);
    if (v11)
    {
      CFRelease(v11);
      *(context + 255) = 0;
    }

    v12 = *(context + 20);
    if (v12)
    {
      C3DResourceManagerRegistryReleaseContext(context, v12);
      C3DEAGLWrapperContextRelease(*(context + 20));
    }

    v13 = *(context + 12);
    if (v13)
    {
      CFRelease(v13);
      *(context + 12) = 0;
    }

    v14 = *(context + 9);
    if (v14)
    {
      CFRelease(v14);
      *(context + 9) = 0;
    }

    v15 = *(context + 14);
    if (v15)
    {
      CFRelease(v15);
      *(context + 14) = 0;
    }

    v16 = *(context + 8);
    if (v16)
    {
      CFRelease(v16);
      *(context + 8) = 0;
    }

    v17 = *(context + 22);
    if (v17)
    {
      CFRelease(v17);
      *(context + 22) = 0;
    }

    v18 = *(context + 257);
    if (v18)
    {
      CFRelease(v18);
      *(context + 257) = 0;
    }
  }
}

CFStringRef _C3DRendererContextCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DRendererContext>");
}

CFStringRef _C3DRendererContextCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DRendererContext>");
}

uint64_t __C3DRendererContextGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRendererContextGetTypeID_typeID = result;
  return result;
}

__n64 C3DRendererContextSetupCommonPipeline(__n64 *a1)
{
  a1[2].n64_u32[1] = 4;
  a1[6].n64_u32[0] = 1;
  C3DRendererContextSetPlatformSpecificImplementations_ES2(&a1[144]);
  a1[2].n64_u32[0] = 1;
  params = 0;
  glGetIntegerv(0xD33u, &params);
  result.n64_u64[0] = a1[3].n64_u64[0];
  if (result.n64_f32[0] == 0.0)
  {
    result.n64_f32[0] = params;
    a1[3].n64_u64[0] = result.n64_u64[0];
  }

  if (result.n64_f32[1] == 0.0)
  {
    result.n64_f32[1] = params;
    a1[3].n64_u64[0] = result.n64_u64[0];
  }

  return result;
}

__n64 __InitStateVarsIfNeeded(__n64 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DRendererContextSetupCommonPipeline(a1);
}

__n64 *C3DRendererContextCreateWithOptions()
{
  if (C3DRendererContextGetTypeID_onceToken != -1)
  {
    C3DRendererContextCreateWithOptions_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DRendererContextGetTypeID_typeID, 2048);
  Instance[21].n64_u64[0] = 0;
  Instance[6].n64_u32[1] = 1065353216;
  Instance[11].n64_u16[0] = 256;
  C3DColor4Make(&Instance[18], 1.0, 1.0, 1.0, 1.0);
  Instance[3].n64_u64[0] = 0;
  __InitStateVarsIfNeeded(Instance);
  Instance[22].n64_u64[0] = 0;
  Instance[15].n64_u64[0] = CFDictionaryCreateMutable(0, 0, 0, 0);
  v1 = C3DArrayCreate(32, 0);
  Instance[249].n64_u64[0] = v1;
  C3DArraySetCount(v1, 3u);
  Instance[250].n64_u32[1] = 0;
  v2 = C3DArrayCreate(32, 0);
  Instance[252].n64_u64[0] = v2;
  C3DArraySetCount(v2, 3u);
  Instance[253].n64_u32[1] = 0;
  Instance[255].n64_u64[0] = C3DArrayCreate(4, 10);
  Instance[256].n64_u32[0] = 0;
  return Instance;
}

void C3DRendererContextSetMaxTextureSize(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 24) = a2;
}

void C3DRendererContextClear(uint64_t a1, GLbitfield mask, __int128 *a3)
{
  *(a1 + 1096) = 0;
  if (a3 && (mask & 0x4000) != 0)
  {
    v4 = *a3;
    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToNonLinear(&v4);
    }

    glClearColor(*&v4, *(&v4 + 1), *(&v4 + 2), *(&v4 + 3));
  }

  if ((mask & 0x100) != 0)
  {
    glDepthMask(1u);
  }

  if ((mask & 0x400) != 0)
  {
    glStencilMask(0xFFFFFFFF);
  }

  glClear(mask);
}

uint64_t C3DRendererContextGetTextureUnitOffset(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

uint64_t C3DRendererContextGetStats(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 184;
}

BOOL C3DRendererContextIsEnabled(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = 2929;
    return glIsEnabled(v2) != 0;
  }

  if (a2 == 2)
  {
    v2 = 2884;
    return glIsEnabled(v2) != 0;
  }

  return 0;
}

void C3DRendererContextSetEnable(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    v3 = 2929;
    if (a3)
    {
LABEL_4:
      glEnable(v3);
      return;
    }
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    v3 = 2884;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  glDisable(v3);
}

void C3DRendererContextResetToDefaultStates(uint64_t a1)
{
  glPushGroupMarkerEXT(0, "Reset all states");
  glActiveTexture(0x84C0u);
  glDisable(0xB71u);
  glDisable(0xB44u);
  C3DRendererContextUnbindProgramObject(a1);
  C3DRendererContextBindMesh(a1, 0, 0);
  C3DRendererContextBindMeshElement(a1, 0, 0);
  v2 = C3DBlendStatesDefaultReplace();
  C3DRendererContextSetBlendStates(a1, v2);

  glPopGroupMarkerEXT();
}

void C3DRendererContextUnbindProgramObject(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    if (!*(a1 + 1076) || (*(a1 + 1076) = 0, glUseProgram(0), ++*(a1 + 228), (v2 = *(a1 + 176)) != 0))
    {
      CFRelease(v2);
      *(a1 + 176) = 0;
    }
  }
}

void C3DRendererContextUnbindBufferObjects(uint64_t a1)
{
  C3DRendererContextBindMesh(a1, 0, 0);

  C3DRendererContextBindMeshElement(a1, 0, 0);
}

void C3DRendererContextSetBlendStates(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1088))
  {
    v2 = a2;
    if (*(a1 + 1080) != a2)
    {
      if (!a2)
      {
        v2 = C3DBlendStatesDefaultReplace();
      }

      Desc = C3DBlendStatesGetDesc(v2, 0);
      v5 = *(a1 + 1080);
      if (v5)
      {
        v11 = HIBYTE(Desc);
        v6 = C3DBlendStatesGetDesc(v5, 0);
        v7 = BYTE2(v6);
        if ((v6 ^ Desc))
        {
          if (Desc)
          {
            glEnable(0xBE2u);
            v7 = 15;
          }

          else
          {
            glDisable(0xBE2u);
          }

          ++*(a1 + 236);
        }

        if ((Desc & 0x100) != 0)
        {
          if (v7 != BYTE2(Desc) || (v6 ^ Desc) & 0xFFFF0000000000 | (BYTE3(v6) ^ BYTE3(Desc)))
          {
            glBlendFuncSeparate(gl_BlendModes[BYTE2(Desc)], gl_BlendModes[BYTE3(Desc)], gl_BlendModes[BYTE5(Desc)], gl_BlendModes[BYTE6(Desc)]);
            ++*(a1 + 236);
          }

          if (BYTE4(v6) == BYTE4(Desc) && HIBYTE(v6) == v11)
          {
            goto LABEL_31;
          }

          glBlendEquationSeparate(*(a1 + 1160 + 4 * BYTE4(Desc)), *(a1 + 1160 + 4 * v11));
        }

        else
        {
          if (v7 != BYTE2(Desc) || BYTE3(v6) != BYTE3(Desc))
          {
            glBlendFunc(gl_BlendModes[BYTE2(Desc)], gl_BlendModes[BYTE3(Desc)]);
            ++*(a1 + 236);
          }

          if (BYTE4(v6) == BYTE4(Desc))
          {
            goto LABEL_31;
          }

          glBlendEquation(*(a1 + 4 * BYTE4(Desc) + 1160));
        }

        v8 = (a1 + 236);
      }

      else
      {
        if (Desc)
        {
          glEnable(0xBE2u);
        }

        else
        {
          glDisable(0xBE2u);
        }

        v8 = (a1 + 236);
        ++*(a1 + 236);
        v9 = gl_BlendModes[BYTE2(Desc)];
        v10 = gl_BlendModes[BYTE3(Desc)];
        if ((Desc & 0x100) != 0)
        {
          glBlendFuncSeparate(v9, v10, gl_BlendModes[BYTE5(Desc)], gl_BlendModes[BYTE6(Desc)]);
          glBlendEquationSeparate(*(a1 + 1160 + 4 * BYTE4(Desc)), *(a1 + 1160 + 4 * HIBYTE(Desc)));
        }

        else
        {
          glBlendFunc(v9, v10);
          glBlendEquation(*(a1 + 4 * BYTE4(Desc) + 1160));
        }
      }

      ++*v8;
LABEL_31:
      *(a1 + 1080) = v2;
    }
  }
}

void C3DRendererContextSetMatrix4x4UniformAtLocation(uint64_t a1, uint64_t location, GLfloat *value, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniformMatrix4fv(location, v4, 0, value);
    if (a1)
    {
      *(a1 + 264) += v4;
    }
  }
}

void C3DRendererContextSetColor4UniformAtLocation(uint64_t a1, uint64_t a2, const GLfloat *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a2 != -1)
  {
    IsEnabled = C3DLinearRenderingIsEnabled();
    if (!IsEnabled)
    {
      v18 = a2;
      v19 = a4;
      v17 = a3;
LABEL_9:
      glUniform4fv(v18, v19, v17);
      if (!a1)
      {
        return;
      }

      goto LABEL_10;
    }

    if (a4 == 1)
    {
      v23 = *a3;
      C3DColor4ConvertToNonLinear(&v23);
      v17 = &v23;
      v18 = a2;
      v19 = 1;
      goto LABEL_9;
    }

    MEMORY[0x28223BE20](IsEnabled);
    memcpy(&v23 - a4, a3, v20);
    if (a4 >= 1)
    {
      v21 = &v23 - a4;
      v22 = a4;
      do
      {
        C3DColor4ConvertToNonLinear(v21++);
        --v22;
      }

      while (v22);
    }

    glUniform4fv(a2, a4, &v23 - 4 * a4);
    if (a1)
    {
LABEL_10:
      *(a1 + 260) += a4;
    }
  }
}

void C3DRendererContextSetVector4UniformAtLocation(uint64_t a1, uint64_t location, GLfloat *v, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniform4fv(location, v4, v);
    if (a1)
    {
      *(a1 + 260) += v4;
    }
  }
}

void C3DRendererContextSetVector3UniformAtLocation(uint64_t a1, uint64_t location, GLfloat *v, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniform3fv(location, v4, v);
    if (a1)
    {
      *(a1 + 256) += v4;
    }
  }
}

void C3DRendererContextSetVector2UniformAtLocation(uint64_t a1, uint64_t location, GLfloat *v, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniform2fv(location, v4, v);
    if (a1)
    {
      *(a1 + 252) += v4;
    }
  }
}

void C3DRendererContextSetIntUniformAtLocation(uint64_t a1, uint64_t location, GLint x)
{
  if (location != -1)
  {
    glUniform1i(location, x);
    if (a1)
    {
      ++*(a1 + 248);
    }
  }
}

void C3DRendererContextSetInt2UniformAtLocation(uint64_t a1, uint64_t location, GLint *a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (location != -1)
  {
    glUniform2i(location, *a3, a3[1]);
    if (a1)
    {
      ++*(a1 + 248);
    }
  }
}

void C3DRendererContextSetInt3UniformAtLocation(uint64_t a1, uint64_t location, GLint *a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (location != -1)
  {
    glUniform3i(location, *a3, a3[1], a3[2]);
    if (a1)
    {
      ++*(a1 + 248);
    }
  }
}

void C3DRendererContextSetInt4UniformAtLocation(uint64_t a1, uint64_t location, GLint *a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (location != -1)
  {
    glUniform4i(location, *a3, a3[1], a3[2], a3[3]);
    if (a1)
    {
      ++*(a1 + 248);
    }
  }
}

void C3DRendererContextSetFloatUniformAtLocation(uint64_t a1, uint64_t location, GLfloat *v, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniform1fv(location, v4, v);
    if (a1)
    {
      *(a1 + 244) += v4;
    }
  }
}

void C3DRendererContextBindProgramObject(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 176);
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 176) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 176) = v5;
  }

  if (cf)
  {
    ProgramID = C3DFXGLSLProgramObjectGetProgramID(cf);
  }

  else
  {
    ProgramID = 0;
  }

  if (*(a1 + 1076) != ProgramID)
  {
    *(a1 + 1076) = ProgramID;
    glUseProgram(ProgramID);
    ++*(a1 + 228);
  }
}

BOOL C3DRendererContextExecuteSlotTextureProxy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DRendererContextExecuteSlotTextureProxy_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  ImageProxy = C3DEffectSlotGetImageProxy(a4);
  if (ImageProxy)
  {
    TextureSampler = C3DEffectSlotGetTextureSampler(a4);
    if (!TextureSampler)
    {
      TextureSampler = C3DTextureSamplerGetDefault();
    }

    C3DRendererContextResetToDefaultStates(a1);
    ImageProxyResident = C3DResourceManagerMakeImageProxyResident(a2, ImageProxy, TextureSampler, a1, a3);
    C3DEffectSlotSetTextureFromImageProxy(a4, ImageProxyResident);
    *(a1 + 1076) = -1;
    *(a1 + 1104) = -1;
    *(a1 + 1112) = -1;
    *(a1 + 1080) = 0;
    *(a1 + 1096) = 0;
  }

  return ImageProxy != 0;
}

uint64_t C3DRendererContextInvalidateCache(uint64_t result)
{
  *(result + 1076) = -1;
  *(result + 1104) = -1;
  *(result + 1112) = -1;
  *(result + 1080) = 0;
  *(result + 1096) = 0;
  return result;
}

void C3DRendererContextSetupResidentMeshSourceAtLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a4 != -1)
  {
    Accessor = C3DMeshSourceGetAccessor(a2);
    v17 = Accessor;
    if (a3)
    {
      v18 = *(a3 + 72);
      if (v18)
      {
        v19 = *v18;
      }

      else
      {
        v19 = 0;
      }

      ValuePtrAtIndex = (v19 + C3DSourceAccessorGetOffset(Accessor));
    }

    else
    {
      ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, 0);
    }

    ComponentsCountPerValue = C3DMeshSourceGetComponentsCountPerValue(a2);
    glEnableVertexAttribArray(a4);
    if (a1)
    {
      ++*(a1 + 216);
    }

    ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v17);
    if (C3DBaseTypeGetCompoundType(ComponentsValueType, ComponentsCountPerValue) == ComponentsValueType)
    {
      ComponentType = C3DBaseTypeGetComponentType(ComponentsValueType);
      ComponentsCountPerValue = C3DBaseTypeGetComponentCount(ComponentsValueType);
      LOWORD(ComponentsValueType) = ComponentType;
    }

    if (ComponentsValueType <= 0xEu)
    {
      if (ComponentsValueType > 3u)
      {
        if (ComponentsValueType != 4)
        {
          if (ComponentsValueType == 6)
          {
            v26 = scn_default_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              C3DRendererContextSetupResidentMeshSourceAtLocation_cold_2();
            }

            goto LABEL_43;
          }

          if (ComponentsValueType == 14)
          {
            v24 = 5122;
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        v25 = 0;
        v24 = 5120;
        goto LABEL_44;
      }

      if (ComponentsValueType == 1)
      {
LABEL_43:
        v25 = 0;
        v24 = 5126;
        goto LABEL_44;
      }

      if (ComponentsValueType == 2)
      {
        v25 = 0;
        v24 = 5124;
        goto LABEL_44;
      }
    }

    else
    {
      if (ComponentsValueType <= 0x14u)
      {
        switch(ComponentsValueType)
        {
          case 0xFu:
            v25 = 0;
            v24 = 5131;
            break;
          case 0x10u:
            v25 = 0;
            v24 = 5121;
            break;
          case 0x11u:
            v24 = 5123;
LABEL_40:
            v25 = 1;
            break;
          default:
            goto LABEL_41;
        }

LABEL_44:
        Library = C3DSceneSourceGetLibrary(v17);
        glVertexAttribPointer(a4, ComponentsCountPerValue, v24, v25, Library, ValuePtrAtIndex);
        if (a1)
        {
          ++*(a1 + 212);
        }

        if (*(a1 + 104))
        {
          InstancingDivisor = C3DMeshSourceGetInstancingDivisor(a2);
          glVertexAttribDivisor(a4, InstancingDivisor);
        }

        return;
      }

      switch(ComponentsValueType)
      {
        case 0x15u:
          v24 = 5121;
          goto LABEL_40;
        case 0x16u:
          v24 = 5120;
          goto LABEL_40;
        case 0x17u:
          v24 = 33640;
          v25 = 1;
          ComponentsCountPerValue = 4;
          goto LABEL_44;
      }
    }

LABEL_41:
    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextSetupResidentMeshSourceAtLocation_cold_3();
    }

    goto LABEL_43;
  }
}

CFStringRef __CopyHashCodeFromShaderSources()
{
  v6 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  CFStringUpdateHash();
  CFStringUpdateHash();
  CC_SHA256_Final(md, &c);
  v0 = 0;
  v1 = __str;
  do
  {
    snprintf(v1, 3uLL, "%02x", md[v0++]);
    v1 += 2;
  }

  while (v0 != 32);
  return CFStringCreateWithCString(*MEMORY[0x277CBECE8], __str, 0x8000100u);
}

void *C3DRendererContextCreateProgramObjectForProgram(uint64_t a1, uint64_t a2, CFDictionaryRef *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DRendererContextCreateProgramObjectForProgram_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Profile = C3DFXProgramGetProfile(a3);
  if (Profile >= 2)
  {
    if (Profile == 2)
    {
      v30 = scn_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        C3DRendererContextCreateProgramObjectForProgram_cold_3();
      }
    }

    else
    {
      v31 = scn_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        C3DRendererContextCreateProgramObjectForProgram_cold_6();
      }
    }

    return 0;
  }

  ShaderSources = C3DFXGLSLProgramGetShaderSources(a3);
  if (!ShaderSources)
  {
    v33 = scn_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateProgramObjectForProgram_cold_5();
    }

    return 0;
  }

  v25 = v24;
  if (!v24)
  {
    v34 = scn_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateProgramObjectForProgram_cold_4();
    }

    return 0;
  }

  v26 = ShaderSources;
  v27 = __CopyHashCodeFromShaderSources();
  ValueForKey = C3DKeyValueStoreGetValueForKey(a2, v27);
  if (ValueForKey)
  {
    v29 = ValueForKey;
    C3DFXGLSLProgramObjectAttachWithProgram(ValueForKey);
    __FillProgramObjectLocations(a3, v29);
    CFRelease(v27);
    CFRetain(v29);
    return v29;
  }

  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  if (a1)
  {
    ++*(a1 + 240);
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(a3);
  v37 = OverrideMaterial;
  if (!OverrideMaterial)
  {
    v39 = 0;
    Mutable = 0;
    if (*(a1 + 92) != 1)
    {
      goto LABEL_31;
    }

LABEL_30:
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    goto LABEL_31;
  }

  Callbacks = C3DFXProgramDelegateGetCallbacks(OverrideMaterial);
  v39 = Callbacks;
  if (Callbacks && *(Callbacks + 16))
  {
    goto LABEL_30;
  }

  Mutable = 0;
LABEL_31:
  IsClientProgram = C3DFXProgramIsClientProgram(a3);
  v42 = C3DCreateProgram(a1, v26, v25, IsClientProgram, Mutable);
  if (Mutable)
  {
    if (CFStringGetLength(Mutable) >= 1)
    {
      if (v39)
      {
        v43 = C3DErrorCreate(0, Mutable, &stru_282DCC058);
        v44 = *(v39 + 16);
        UserInfo = C3DFXProgramDelegateGetUserInfo(v37);
        v44(0, v43, UserInfo);
        CFRelease(v43);
      }

      else if (*(a1 + 92) == 1)
      {
        v46 = *(a1 + 96);
        if (!v46)
        {
          v46 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(a1 + 96) = v46;
        }

        CFDictionaryAddValue(v46, a3, Mutable);
      }
    }

    CFRelease(Mutable);
  }

  if (v42 && (v47 = C3DFXGLSLProgramObjectCreateWithProgramID(v42)) != 0)
  {
    v29 = v47;
    __FillProgramObjectLocations(a3, v47);
    glUseProgram(params);
    C3DResourceManagerSetGLSLProgramObjectForSourceHash(a2, v27, v29);
  }

  else
  {
    glUseProgram(params);
    v29 = 0;
  }

  CFRelease(v27);
  return v29;
}

void __FillProgramObjectLocations(CFDictionaryRef *a1, uint64_t a2)
{
  *&v55[17] = *MEMORY[0x277D85DE8];
  ProgramID = C3DFXGLSLProgramObjectGetProgramID(a2);
  Profile = C3DFXProgramGetProfile(a1);
  cf = a1;
  v6 = C3DFXGLSLProgramCopyAttributesNames(a1);
  v7 = v6;
  if (!v6 || !Profile)
  {
    for (i = 0; i != 14; ++i)
    {
      CFStringGetCString(kC3DVertexAttribDefaultNames[i], buffer, 64, 0x600u);
      glBindAttribLocation(ProgramID, i, buffer);
    }

LABEL_9:
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  Count = CFArrayGetCount(v6);
  if (Count >= 1)
  {
    v9 = Count;
    for (j = 0; j != v9; ++j)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, j);
      AttributeIndex = C3DFXGLSLProgramGetAttributeIndex(a1, ValueAtIndex);
      CFStringGetCString(ValueAtIndex, buffer, 64, 0x600u);
      glBindAttribLocation(ProgramID, AttributeIndex, buffer);
    }

    goto LABEL_9;
  }

LABEL_10:
  CFRelease(v7);
LABEL_11:
  glLinkProgram(ProgramID);
  *params = 0;
  length = 0;
  glGetProgramiv(ProgramID, 0x8B86u, &params[1]);
  glGetProgramiv(ProgramID, 0x8B87u, params);
  v14 = malloc_type_malloc(params[0] + 1, 0xB7660323uLL);
  v15 = *(a2 + 104);
  if (v15)
  {
    CFRelease(v15);
    *(a2 + 104) = 0;
  }

  *(a2 + 104) = CFDictionaryCreateMutable(0, params[1], MEMORY[0x277CBF138], 0);
  Mutable = CFArrayCreateMutable(0, params[1], MEMORY[0x277CBF128]);
  if (params[1] >= 1)
  {
    v17 = 0;
    v18 = v14 - 1;
    do
    {
      glGetActiveUniform(ProgramID, v17, params[0], &length, 0, 0, v14);
      UniformLocation = glGetUniformLocation(ProgramID, v14);
      v20 = length;
      if (length)
      {
        v21 = length;
        if (v18[length] == 93)
        {
          do
          {
            v20 = v21 - 1;
            length = v21 - 1;
            if (v21 < 2)
            {
              break;
            }

            v22 = v18[v21--];
          }

          while (v22 != 91);
        }
      }

      v14[v20] = 0;
      v23 = CFStringCreateWithCString(0, v14, 0x8000100u);
      CFArrayAppendValue(Mutable, v23);
      CFDictionarySetValue(*(a2 + 104), v23, (UniformLocation + 1));
      CFRelease(v23);
      ++v17;
    }

    while (v17 < params[1]);
  }

  free(v14);
  v51 = 0;
  glGetProgramiv(ProgramID, 0x8B89u, &v51);
  glGetProgramiv(ProgramID, 0x8B8Au, params);
  v24 = malloc_type_malloc(params[0] + 1, 0xFAC7A56AuLL);
  v25 = *(a2 + 112);
  if (v25)
  {
    CFRelease(v25);
    *(a2 + 112) = 0;
  }

  *(a2 + 112) = CFDictionaryCreateMutable(0, v51, MEMORY[0x277CBF138], 0);
  if (v51 >= 1)
  {
    for (k = 0; k < v51; ++k)
    {
      glGetActiveAttrib(ProgramID, k, params[0], &length, 0, 0, v24);
      AttribLocation = glGetAttribLocation(ProgramID, v24);
      v24[length] = 0;
      v28 = CFStringCreateWithCString(0, v24, 0x8000100u);
      CFDictionarySetValue(*(a2 + 112), v28, (AttribLocation + 1));
      CFRelease(v28);
    }
  }

  free(v24);
  if (Mutable)
  {
    v29 = CFArrayGetCount(Mutable);
    MaxUniformIndex = _C3DFXGLSLProgramGetMaxUniformIndex(cf);
    v31 = MaxUniformIndex + 1;
    v32 = MaxUniformIndex + v29;
    v33 = 8 * (MaxUniformIndex + v29);
    v34 = malloc_type_malloc(v33 + 8, 0x100004000313F17uLL);
    v35 = v34;
    if ((v32 & 0x8000000000000000) == 0)
    {
      memset(v34, 255, v33 + 8);
    }

    v47 = v35;
    if (v29 >= 1)
    {
      for (m = 0; m != v29; ++m)
      {
        v37 = CFArrayGetValueAtIndex(Mutable, m);
        UniformIndex = C3DFXGLSLProgramGetUniformIndex(cf, v37);
        if (UniformIndex == -1)
        {
          if (v31 > v32)
          {
            v40 = scn_default_log();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              __FillProgramObjectLocations_cold_1(buffer, v55, v40);
            }
          }

          v39 = v31 + 1;
        }

        else
        {
          v39 = v31;
          v31 = UniformIndex;
        }

        v41 = v31;
        v31 = v39;
        v42 = CFStringGetLength(v37);
        v43 = malloc_type_calloc(v42 + 1, 1uLL, 0x37A345EBuLL);
        CFStringGetCString(v37, v43, v42 + 1, 0x600u);
        v44 = C3DFXGLSLProgramObjectGetProgramID(a2);
        v45 = glGetUniformLocation(v44, v43);
        if (v43)
        {
          free(v43);
        }

        if (v41 <= v32)
        {
          v47[v41] = v45;
        }

        else
        {
          v46 = scn_default_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            __FillProgramObjectLocations_cold_2(&buf, v50, v46);
          }
        }
      }
    }

    C3DFXGLSLProgramObjectSetUniformsLocations(a2, v47, v31);
    free(v47);
    CFRelease(Mutable);
  }
}

void C3DRendererContextDeleteProgramObject(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!C3DVRAMResourceLockCount(a2) && (C3DVRAMResourceIsAttachment(a2) & 1) == 0)
  {
    v12 = CFGetTypeID(a2);
    if (v12 == C3DFXGLSLProgramObjectGetTypeID())
    {
      ProgramID = C3DFXGLSLProgramObjectGetProgramID(a2);
      if (ProgramID)
      {
        if (a1)
        {
          --*(a1 + 400);
        }

        glDeleteProgram(ProgramID);
      }
    }
  }
}

void C3DRendererContextDeleteBufferObject(_DWORD *a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextDeleteBufferObject_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!C3DVRAMResourceLockCount(a2) && (C3DVRAMResourceIsAttachment(a2) & 1) == 0)
  {
    buffers = C3DBufferObjectGetBufferID(a2);
    if (!buffers)
    {
      v14 = scn_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Trying to delete an empty or already released VBO", v15, 2u);
      }

      goto LABEL_17;
    }

    Size = C3DBufferObjectGetSize(a2);
    v13 = *(a2 + 64);
    if (v13 == 1)
    {
      if (a1)
      {
        --a1[105];
        a1[111] -= Size;
        goto LABEL_16;
      }
    }

    else if (v13)
    {
      if (a1)
      {
        goto LABEL_16;
      }
    }

    else if (a1)
    {
      --a1[103];
      a1[110] -= Size;
LABEL_16:
      glDeleteBuffers(1, &buffers);
    }

LABEL_17:
    C3DVRAMResourceSetID(a2, 0);
  }
}

void C3DRendererContextApplyTextureSampler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DRendererContextApplyTextureSampler_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DTextureSamplerSetAnisotropy_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = *(a2 + 88);
  WrapModeS = C3DTextureSamplerGetWrapModeS(a3);
  v24 = 33071.0;
  v25 = 33071.0;
  if (v22 == 3553)
  {
    if ((WrapModeS - 1) > 3)
    {
      v25 = 10497.0;
    }

    else
    {
      v25 = flt_21C281480[WrapModeS - 1];
    }
  }

  glTexParameterf(v22, 0x2802u, v25);
  WrapModeT = C3DTextureSamplerGetWrapModeT(a3);
  if (v22 == 3553)
  {
    if ((WrapModeT - 1) > 3)
    {
      v24 = 10497.0;
    }

    else
    {
      v24 = flt_21C281480[WrapModeT - 1];
    }
  }

  glTexParameterf(v22, 0x2803u, v24);
  ComparisonFunc = C3DTextureSamplerGetComparisonFunc(a3);
  if (ComparisonFunc)
  {
    v28 = ComparisonFunc;
    glTexParameteri(v22, 0x884Cu, 34894);
    v29 = gl_ComparisonFunc[v28];
    v30 = v22;
    v31 = 34893;
  }

  else
  {
    v30 = v22;
    v31 = 34892;
    v29 = 0;
  }

  glTexParameteri(v30, v31, v29);
  MinFilter = C3DTextureSamplerGetMinFilter(a3);
  MagFilter = C3DTextureSamplerGetMagFilter(a3);
  v34 = (*(a2 + 80) << 31 >> 31) & C3DTextureSamplerGetMipFilter(a3);
  v35 = 9729.0;
  v36 = 9729.0;
  switch(v34)
  {
    case 2:
      if (MinFilter > 2)
      {
        break;
      }

      v37 = &unk_21C281430;
      goto LABEL_26;
    case 1:
      if (MinFilter >= 3)
      {
        break;
      }

      v37 = &unk_21C281424;
      goto LABEL_26;
    case 0:
      v36 = 9729.0;
      if (MinFilter < 3)
      {
        v37 = flt_21C28143C;
LABEL_26:
        v36 = v37[MinFilter];
      }

      break;
  }

  if (MagFilter <= 2)
  {
    v35 = flt_21C28143C[MagFilter];
  }

  glTexParameterf(v22, 0x2800u, v35);
  glTexParameterf(v22, 0x2801u, v36);
  v38 = *(a3 + 64);
  if (*&C3DRendererContextApplyTextureSampler_largest_supported_anisotropy < 0.0)
  {
    glGetFloatv(0x84FFu, &C3DRendererContextApplyTextureSampler_largest_supported_anisotropy);
    if (a1)
    {
      ++*(a1 + 240);
    }
  }

  v39 = 1.0;
  if (v38 == -1.0)
  {
    v40 = 1.0;
  }

  else
  {
    v40 = v38;
  }

  if (*&C3DRendererContextApplyTextureSampler_largest_supported_anisotropy < v40)
  {
    v40 = *&C3DRendererContextApplyTextureSampler_largest_supported_anisotropy;
  }

  if (v40 >= 1.0)
  {
    v39 = v40;
  }

  glTexParameterf(v22, 0x84FEu, v39);
}

uint64_t C3DGLTextureTypePixelSize(int a1, int a2)
{
  if ((a2 - 5120) > 6)
  {
    result = 2;
    if (((a2 - 33635) > 3 || a2 == 33636) && (a2 - 32819) >= 2)
    {
      return 4;
    }
  }

  else if (((1 << a2) & 0x70) != 0)
  {
    if (a1 != 6407)
    {
      if (a1 == 32993 || a1 == 6408)
      {
        return 16;
      }

      return 0;
    }

    return 12;
  }

  else if (((1 << a2) & 3) != 0)
  {
    if (a1 != 6407)
    {
      if (a1 == 32993 || a1 == 6408)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (a1 != 6407)
    {
      if (a1 == 32993 || a1 == 6408)
      {
        return 8;
      }

      return 0;
    }

    return 6;
  }

  return result;
}

uint64_t _C3DRendererContextComputeRenderBufferInternalSize(uint64_t a1, int a2, int a3, int a4)
{
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D50u, &params);
  v7 = params;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D51u, &params);
  v8 = params + v7;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D52u, &params);
  v9 = params;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D53u, &params);
  v10 = v8 + v9 + params;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D54u, &params);
  v11 = params;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D55u, &params);
  return (v10 + v11 + params) / 8 * (a3 * a2 * a4);
}

uint64_t __C3DRendererContextGetDefaultInvalidTexture(uint64_t a1)
{
  result = *(a1 + 64);
  if (!result)
  {
    v4 = xmmword_21C281470;
    v3 = C3DTextureSamplerBilinearNoAnisotropy();
    result = _C3DRendererContextCreateTextureWithSize(a1, 4, 4, v3, 6408, 0x80E1u, 0x1401u, &v4);
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t _C3DRendererContextCreateTextureWithSize(_DWORD *a1, GLsizei a2, GLsizei a3, uint64_t a4, GLint a5, GLenum a6, GLenum a7, float32x4_t *a8)
{
  *params = 0;
  glGetIntegerv(0x8069u, params);
  glGenTextures(1, &params[1]);
  if (a1)
  {
    ++a1[101];
    glBindTexture(0xDE1u, params[1]);
    ++a1[58];
  }

  else
  {
    glBindTexture(0xDE1u, params[1]);
  }

  if (a5 == 6408 && a8)
  {
    pixels = C3DMalloc((4 * a3 * a2));
    v17 = vrev32_s16(vmovn_s32(vcvtq_s32_f32(vmulq_f32(*a8, vdupq_n_s32(0x437F0000u)))));
    v18 = vext_s8(v17, v17, 6uLL);
    __pattern4 = vuzp1_s8(v18, v18).u32[0];
    memset_pattern4(pixels, &__pattern4, (4 * a3 * a2));
    glTexImage2D(0xDE1u, 0, 6408, a2, a3, 0, 0x80E1u, 0x1401u, 0);
    if (pixels)
    {
      glTexSubImage2D(0xDE1u, 0, 0, 0, a2, a3, 0x80E1u, 0x1401u, pixels);
      if (a1)
      {
        a1[69] += a3 * a2 * C3DGLTextureTypePixelSize(32993, 5121);
      }

      free(pixels);
    }
  }

  else
  {
    glTexImage2D(0xDE1u, 0, a5, a2, a3, 0, a6, a7, 0);
  }

  v19 = C3DTextureCreate();
  C3DTextureSetID(v19, params[1], 3553);
  C3DTextureSetFormat(v19, a5);
  *&v20 = a2;
  *(&v20 + 1) = a3;
  *(v19 + 64) = v20;
  C3DTextureSetServerStorageSize(v19, 0);
  C3DRendererContextApplyTextureSampler(a1, v19, a4);
  glBindTexture(0xDE1u, 0);
  if (a1)
  {
    ++a1[58];
  }

  glBindTexture(0xDE1u, params[0]);
  return v19;
}

void C3DRendererContextBindTexture(uint64_t a1, uint64_t DefaultInvalidTexture, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5 <= 7)
  {
    if (!a1)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        C3DEngineContextRenderScene_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    TextureUnitOffset = C3DRendererContextGetTextureUnitOffset(a1);
    glActiveTexture(TextureUnitOffset + a5 + 33984);
    if (!DefaultInvalidTexture)
    {
      DefaultInvalidTexture = __C3DRendererContextGetDefaultInvalidTexture(a1);
      if (!DefaultInvalidTexture)
      {
        v18 = scn_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          C3DRendererContextApplyTextureSampler_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
        }

        DefaultInvalidTexture = 0;
      }
    }

    TargetMode = C3DTextureGetTargetMode(DefaultInvalidTexture);
    ID = C3DTextureGetID(DefaultInvalidTexture);
    glBindTexture(TargetMode, ID);
    if (a1)
    {
      ++*(a1 + 232);
    }

    *(a1 + 4 * a5 + 1040) = TargetMode;
    if (*(a1 + 1072) <= a5)
    {
      *(a1 + 1072) = a5 + 1;
    }

    if (a3)
    {
      v28 = *(DefaultInvalidTexture + 96);
      if (v28 != C3DMeshSourceGetMTLVertexFormat(a3))
      {
        C3DRendererContextApplyTextureSampler(a1, DefaultInvalidTexture, a3);
        *(DefaultInvalidTexture + 96) = C3DMeshSourceGetMTLVertexFormat(a3);
      }
    }
  }
}

void _C3DRendererContextBindTextureGL(uint64_t a1, GLenum target, GLuint texture)
{
  glBindTexture(target, texture);
  if (a1)
  {
    ++*(a1 + 232);
  }
}

void C3DRendererContextDeleteTexture(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!C3DVRAMResourceLockCount(a2) && (C3DVRAMResourceIsAttachment(a2) & 1) == 0)
  {
    textures = C3DVRAMResourceGetID(a2);
    if (textures)
    {
      if (a1)
      {
        *(a1 + 452) -= C3DTextureGetServerStorageSize(a2);
        --*(a1 + 404);
      }

      glDeleteTextures(1, &textures);
      *(a2 + 48) = 0;
    }
  }
}

int32x2_t *C3DRendererContextCreateTextureWithImage(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  textures = 0;
  if (!a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  params = 0;
  glGetIntegerv(0x8069u, &params);
  ImageType = C3DImageGetImageType(v4);
  v15 = C3DTextureSamplerUseMipmaps(a3);
  TextureSize = C3DImageGetTextureSize(v4);
  if (C3DImageIsCubeMap(v4))
  {
    v17 = 0;
    v15 = 0;
    v18 = 0;
    *(a3 + 36) = 0;
    v19 = 34067;
    goto LABEL_15;
  }

  v19 = C3DRendererContextInferTextureTargetForImageTypeAndTextureSampler(ImageType);
  v20.n64_u64[0] = C3DRendererContextInferTextureSizeForImageAndTextureSampler(v4, a3).n64_u64[0];
  v21 = vbsl_s8(vcgt_f32(v20.n64_u64[0], a1[3]), a1[3], v20.n64_u64[0]);
  v22 = vceq_f32(v21, TextureSize);
  if ((vpmin_u32(v22, v22).u32[0] & 0x80000000) == 0)
  {
    v23 = C3DImageCopyCGImage(v4);
    if (v23)
    {
      v24 = v23;
      v17 = C3DImageCreateWithCGImageAndSize(v23, *&v21);
      v25 = C3DImageNeedsUnpremultiply(v4);
      C3DImageSetNeedsUnpremultiply(v17, v25);
      CFRelease(v24);
      v4 = v17;
      goto LABEL_12;
    }

    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateTextureWithImage_cold_2();
    }
  }

  v17 = 0;
LABEL_12:
  if (C3DImageHasTextureRawData(v4))
  {
    v18 = 0;
    v19 = 3553;
  }

  else
  {
    v18 = C3DImageCopyBitmap(v4, 1);
    if (!v18)
    {
      v35 = 0;
      goto LABEL_126;
    }
  }

LABEL_15:
  glGenTextures(1, &textures);
  if (!textures)
  {
    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextCreateTextureWithImage_cold_3(v27, v28, v29, v30, v31, v32, v33, v34);
      if (a1)
      {
        goto LABEL_18;
      }

LABEL_21:
      glBindTexture(v19, textures);
      goto LABEL_22;
    }
  }

  if (!a1)
  {
    goto LABEL_21;
  }

LABEL_18:
  ++a1[50].i32[1];
  glBindTexture(v19, textures);
  ++a1[29].i32[0];
LABEL_22:
  v35 = C3DTextureCreate();
  v35[8] = TextureSize;
  C3DTextureSetID(v35, textures, v19);
  v35[5] = v4;
  if (!v4)
  {
    v36 = scn_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }

  v140[0] = 0;
  glGetIntegerv(0x8069u, v140);
  v44 = C3DImageGetTextureSize(v4);
  v45.n64_u64[0] = C3DRendererContextInferTextureSizeForImageAndTextureSampler(v4, a3).n64_u64[0];
  v46 = a1[3];
  v47 = vcgt_f32(v45.n64_u64[0], v46);
  v48.i32[0] = vbsl_s8(vdup_lane_s32(v47, 0), v46, v45.n64_u64[0]).u32[0];
  v124 = v48.i32[0];
  v48.i32[1] = v45.n64_i32[1];
  v121 = vbsl_s8(vdup_lane_s32(v47, 1), *&v46, *&v48).i32[1];
  v48.i32[1] = v121;
  v49 = vceq_f32(v48, v44);
  if ((vpmin_u32(v49, v49).u32[0] & 0x80000000) != 0 || (v122 = *&v48, (v50 = C3DImageCopyCGImage(v4)) == 0))
  {
    v52 = 0;
  }

  else
  {
    v51 = v50;
    v52 = C3DImageCreateWithCGImageAndSize(v50, v122);
    v53 = C3DImageNeedsUnpremultiply(v4);
    C3DImageSetNeedsUnpremultiply(v52, v53);
    CFRelease(v51);
    v4 = v52;
  }

  if (C3DImageHasTextureRawData(v4))
  {
    v123 = v52;
    TextureRawData = C3DImageGetTextureRawData(v4);
    IsCubeMap = C3DImageIsCubeMap(v4);
    ValueAtIndex = *(TextureRawData + 40);
    if (IsCubeMap)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    }

    Count = CFArrayGetCount(ValueAtIndex);
    v131 = MEMORY[0x277D85DD0];
    v58.n128_u64[0] = 0x40000000;
    v132 = 0x40000000;
    v133 = ___C3DRendererContextFillTextureWithImage_block_invoke;
    v134 = &__block_descriptor_tmp_51;
    v135.i64[0] = Count;
    v135.u64[1] = v44;
    v136 = TextureRawData;
    v137 = a1;
    if (IsCubeMap)
    {
      for (i = 0; i != 6; ++i)
      {
        v60 = CFArrayGetValueAtIndex(*(TextureRawData + 40), i);
        (v133)(&v131, i, v60, (i + 34069));
      }
    }

    else
    {
      ___C3DRendererContextFillTextureWithImage_block_invoke(&v131, 0, *(TextureRawData + 40), v19, v58);
    }

    v73 = 0;
    v74 = Count != 1;
    goto LABEL_122;
  }

  v119 = v17;
  v61 = C3DImageCopyBitmap(v4, 1);
  if (v61)
  {
    v62 = v61;
    v118 = v19;
    v117 = v18;
    if ((C3DLinearRenderingIsEnabled() & 1) != 0 || C3DWideGamutIsUsed())
    {
      v63 = C3DCreateSRGBBitmapContextWithContext(v62);
      if (v63 != v62 && (_C3DRendererContextFillTextureWithImage_done & 1) == 0)
      {
        _C3DRendererContextFillTextureWithImage_done = 1;
        v64 = scn_default_log();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          C3DRendererContextCreateTextureWithImage_cold_5();
        }
      }

      CGContextRelease(v62);
      v62 = v63;
    }

    Data = CGBitmapContextGetData(v62);
    if (Data)
    {
      v66 = Data;
      v114 = v15;
      v125 = __PAIR64__(v121, v124);
      BytesPerRow = CGBitmapContextGetBytesPerRow(v62);
      BitsPerComponent = CGBitmapContextGetBitsPerComponent(v62);
      v69 = CGBitmapContextGetBitsPerPixel(v62) / BitsPerComponent;
      v120 = BitsPerComponent;
      Width = CGBitmapContextGetWidth(v62);
      v113 = BytesPerRow;
      Height = CGBitmapContextGetHeight(v62);
      if (BytesPerRow == ((BitsPerComponent * v69 * Width) >> 3))
      {
        v70 = v69;
        v71 = 1;
        v72 = v114;
      }

      else
      {
        v70 = v69;
        v77 = ~(BytesPerRow / v69 * v69) + BytesPerRow;
        v72 = v114;
        if (v77 > 7)
        {
          v71 = 1;
        }

        else
        {
          v71 = dword_21C281448[v77];
        }
      }

      glPixelStorei(0xCF5u, v71);
      BitmapInfo = CGBitmapContextGetBitmapInfo(v62);
      v79 = BitmapInfo & 0x1B;
      v80 = v70;
      if (v79 == 1)
      {
        v81 = BitmapInfo & 0x7000;
        v82 = v72;
        v83 = v125;
        if ((BitmapInfo & 0x7000) != 0)
        {
          v84 = Width;
          if (v81 != 12288)
          {
            v79 = v81 == 0x4000;
          }
        }

        else
        {
          v84 = Width;
        }
      }

      else
      {
        v79 = 0;
        v82 = v72;
        v84 = Width;
        v83 = v125;
      }

      v85 = vcvtq_f64_f32(v83);
      v123 = v52;
      if (v80 == 1)
      {
        v73 = 6409;
      }

      else
      {
        v86 = v79 | ((BitmapInfo & 0x100) >> 8);
        if (v80 == 4)
        {
          v73 = 6408;
          if (v86)
          {
            v87 = 6408;
          }

          else
          {
            v87 = 32993;
          }

          v116 = v87;
          if ((BitmapInfo & 0x100) != 0)
          {
            v88 = 5131;
          }

          else
          {
            v88 = 5123;
          }

          if (v120 == 16)
          {
            v89 = v88;
          }

          else
          {
            v89 = 5121;
          }

LABEL_86:
          v127 = vcvtq_u64_f64(v85);
          v112 = v80;
          if (C3DImageNeedsUnpremultiply(v4) && C3DImageHasAlpha(v4))
          {
            v91 = 0;
            v92 = v89;
            v93 = v127;
            if (v89 != 5123 && v116 == 6408)
            {
              v94 = C3DMalloc(Height * v113);
              v91 = v94;
              if (Height)
              {
                v98 = 0;
                v99 = 0;
                v82 = v114;
                do
                {
                  v100 = v98;
                  for (j = v84; j; --j)
                  {
                    v102 = (v66 + v100);
                    v103 = &v94[v100];
                    v104 = v102[3];
                    if (v102[3])
                    {
                      if (v104 == 255)
                      {
                        *v103 = *v102;
                        v103[1] = v102[1];
                        LOBYTE(v105) = v102[2];
                      }

                      else
                      {
                        v106 = 1.0 / v104;
                        LOBYTE(v95) = *v102;
                        v107 = v106 * LODWORD(v95);
                        LOBYTE(v96) = v102[1];
                        v96 = v106 * LODWORD(v96);
                        LOBYTE(v97) = v102[2];
                        v108 = v106 * v97;
                        if (v107 > 1.0)
                        {
                          v107 = 1.0;
                        }

                        if (v96 > 1.0)
                        {
                          v96 = 1.0;
                        }

                        v97 = 1132396544;
                        if (v108 > 1.0)
                        {
                          v108 = 1.0;
                        }

                        *v103 = (v107 * 255.0);
                        v95 = v96 * 255.0;
                        v103[1] = (v96 * 255.0);
                        v105 = (v108 * 255.0);
                      }

                      v103[2] = v105;
                      v103[3] = v102[3];
                    }

                    else
                    {
                      *v103 = 0;
                    }

                    v100 += 4;
                  }

                  ++v99;
                  v98 += v113;
                }

                while (v99 != Height);
              }

              else
              {
                v82 = v114;
              }

              v92 = v89;
              v93 = v127;
            }

            if (v91)
            {
              v66 = v91;
            }
          }

          else
          {
            v91 = 0;
            v92 = v89;
            v93 = v127;
          }

          v131 = MEMORY[0x277D85DD0];
          v132 = 0x40000000;
          v133 = ___C3DRendererContextFillTextureWithImage_block_invoke_52;
          v134 = &__block_descriptor_tmp_54_0;
          v135 = v93;
          v137 = __PAIR64__(v116, v73);
          v138 = v92;
          v139 = v82;
          v136 = a1;
          if (C3DImageIsCubeMap(v4))
          {
            v109 = C3DImageGetImageType(v4);
            v130[0] = MEMORY[0x277D85DD0];
            v130[1] = 0x40000000;
            v130[2] = ___C3DRendererContextFillTextureWithImage_block_invoke_2;
            v130[3] = &unk_2782FD068;
            v130[4] = &v131;
            C3DImageEnumerateCubeMapFacePixelBuffers(v109, v127.i64[0], v113, v127.i64[0] * ((v112 * v120) >> 3), (v112 * v120) >> 3, v66, v130);
          }

          else
          {
            (v133)(&v131, v118, v66);
          }

          v18 = v117;
          if (v62)
          {
            CFRelease(v62);
          }

          v19 = v118;
          if (v91)
          {
            free(v91);
          }

          v74 = 1;
          v17 = v119;
LABEL_122:
          C3DTextureSetFormat(v35, v73);
          v52 = v123;
          if (!v123)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        }

        if (v86)
        {
          v73 = 6407;
        }

        else
        {
          v126 = v85;
          v90 = scn_default_log();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            C3DRendererContextCreateTextureWithImage_cold_6();
          }

          v73 = 6407;
          v85 = v126;
        }
      }

      if (v120 == 16)
      {
        v89 = 5123;
      }

      else
      {
        v89 = 5121;
      }

      v116 = v73;
      goto LABEL_86;
    }

    v76 = scn_default_log();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateTextureWithImage_cold_7();
    }

    if (v62)
    {
      CFRelease(v62);
    }
  }

  else
  {
    v75 = scn_default_log();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateTextureWithImage_cold_8(v4, v75);
    }
  }

  v74 = 1;
  v17 = v119;
  if (v52)
  {
LABEL_123:
    C3DImageReleaseBitmapCache(v52);
    CFRelease(v52);
  }

LABEL_124:
  glBindTexture(0xDE1u, v140[0]);
  v35[10].i8[0] = v35[10].i8[0] & 0xFE | v74;
  C3DTextureSetServerStorageSize(v35, 0);
  glBindTexture(v19, 0);
  if (a1)
  {
    ++a1[29].i32[0];
  }

LABEL_126:
  if (v17)
  {
    C3DImageReleaseBitmapCache(v17);
    CFRelease(v17);
  }

  glBindTexture(0xDE1u, params);
  if (v18)
  {
    CFRelease(v18);
  }

  return v35;
}

uint64_t C3DRendererContextInferTextureTargetForImageTypeAndTextureSampler(unsigned int a1)
{
  v1 = C3DEngineContextInferTextureTypeForImageTypeAndTextureSampler(a1);
  if (v1 != 2)
  {
    if (v1 == 4)
    {
      return 34067;
    }

    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_DEFAULT, "Warning: C3DRendererContextInferTextureTargetForImageTypeAndTextureSampler: called with kC3DTextureUntype type should be resolved before calling it, using GL_TEXTURE_2D as fallback", v4, 2u);
    }
  }

  return 3553;
}

__n64 C3DRendererContextInferTextureSizeForImageAndTextureSampler(uint64_t a1, uint64_t a2)
{
  TextureSize = C3DImageGetTextureSize(a1);
  ImageType = C3DImageGetImageType(a1);
  if (C3DRendererContextInferTextureTargetForImageTypeAndTextureSampler(ImageType) == 3553 && ((WrapModeS = C3DTextureSamplerGetWrapModeS(a2), WrapModeT = C3DTextureSamplerGetWrapModeT(a2), C3DTextureSamplerGetMipFilter(a2)) || (WrapModeS & 0xFFFFFFFD) != 1 || (WrapModeT & 0xFFFFFFFD) != 1))
  {
    result.n64_u64[0] = TextureSize;
    if ((*TextureSize.i32 & (*TextureSize.i32 - 1)) != 0)
    {
      v8 = 1;
      do
      {
        v9 = v8;
        v8 *= 2;
      }

      while (v9 < *TextureSize.i32);
      result.n64_f32[0] = v9;
    }

    if ((*&TextureSize.i32[1] & (*&TextureSize.i32[1] - 1)) != 0)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        v10 *= 2;
      }

      while (v11 < *&TextureSize.i32[1]);
      result.n64_f32[1] = v11;
    }
  }

  else
  {
    return TextureSize;
  }

  return result;
}

uint64_t C3DCreateTextureFromIOSurface(uint64_t a1, const void *a2, int a3, uint64_t a4, double a5)
{
  textures = 0;
  glGenTextures(1, &textures);
  glBindTexture(0xDE1u, textures);
  if (a1)
  {
    ++*(a1 + 232);
  }

  glTexParameteri(0xDE1u, 0x2801u, 9729);
  glTexParameteri(0xDE1u, 0x2800u, 9729);
  glTexParameteri(0xDE1u, 0x2802u, 33071);
  glTexParameteri(0xDE1u, 0x2803u, 33071);
  GLContext = C3DRendererContextGetGLContext(a1);
  C3DIOSurfaceToTexImage(a2, GLContext, 0xDE1u, a3, a5);
  v11 = C3DTextureCreate();
  C3DTextureSetID(v11, textures, 3553);
  *(v11 + 64) = a5;
  *(v11 + 80) &= ~1u;
  *(v11 + 104) = CFRetain(a2);
  C3DTextureSetFormat(v11, a3);
  C3DTextureSetServerStorageSize(v11, 0);
  C3DRendererContextApplyTextureSampler(a1, v11, a4);
  glBindTexture(0xDE1u, 0);
  if (a1)
  {
    ++*(a1 + 232);
  }

  return v11;
}

double *C3DRendererContextCreateRenderTargetWithDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = BYTE1(a2);
  if (BYTE1(a2) != C3DFramebufferGetSampleCount(a3))
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextCreateRenderTargetWithDescription_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v23 = C3DRenderTargetCreate();
  Size = C3DFramebufferGetSize(a3);
  C3DRenderTargetSetDescription(v23, a2);
  v24 = Size;
  v23[5] = Size;
  if ((a2 & 0x1000000) != 0)
  {
    if (!a1)
    {
      v25 = scn_default_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
      v24 = Size;
      if (v26)
      {
        C3DEngineContextRenderScene_cold_2(v25, v27, v28, v29, v30, v31, v32, v33);
        v24 = Size;
      }
    }

    if (*&v24 == 0.0 || (v34 = *(&v24 + 1), *(&v24 + 1) == 0.0))
    {
      v42 = scn_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        C3DRendererContextCreateRenderTargetWithDescription_cold_4();
      }

      goto LABEL_25;
    }

    v35 = C3DTextureSamplerNearest();
    v36 = (a1 + 12 * a2);
    v37 = v36[295];
    if ((a2 & 0x8000000) != 0)
    {
      v43 = SCNIOSurfaceCreateWithSize(Size);
      TextureWithSize = C3DCreateTextureFromIOSurface(a1, v43, v37, v35, Size);
      CFRelease(v43);
      if (!TextureWithSize)
      {
LABEL_25:
        CFRelease(v23);
        return 0;
      }
    }

    else
    {
      TextureWithSize = _C3DRendererContextCreateTextureWithSize(a1, *&Size, v34, v35, v37, v36[296], v36[297], 0);
      if (!TextureWithSize)
      {
        goto LABEL_25;
      }
    }

    C3DRenderTargetSetTexture(v23, TextureWithSize);
    *(v23 + 8) = C3DTextureGetServerStorageSize(TextureWithSize);
    CFRelease(TextureWithSize);
    return v23;
  }

  if (*&Size == 0.0 || *(&Size + 1) == 0.0)
  {
    v39 = scn_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateRenderTargetWithDescription_cold_5();
    }

    v40 = 0;
    v41 = 0;
  }

  else
  {
    renderbuffers = 0;
    glGenRenderbuffers(1, &renderbuffers);
    if (a1)
    {
      ++*(a1 + 416);
      params = 0;
      glGetIntegerv(0x8CA7u, &params);
      ++*(a1 + 240);
    }

    else
    {
      params = 0;
      glGetIntegerv(0x8CA7u, &params);
    }

    glBindRenderbuffer(0x8D41u, renderbuffers);
    if (a2 == 41 || a2 == 44 || (v44 = *(a3 + 136)) == 0)
    {
      v48 = a1 + 4 * a2;
      v46 = *&Size;
      v47 = *(&Size + 1);
      if (v14 < 2)
      {
        glRenderbufferStorage(0x8D41u, *(v48 + 1732), *&Size, *(&Size + 1));
      }

      else
      {
        v45 = (*(a1 + 1984))(36161, v14, *(v48 + 1732), *&Size, *(&Size + 1));
      }
    }

    else
    {
      v45 = (*(v44 + 16))();
      v46 = *&Size;
      v47 = *(&Size + 1);
    }

    v40 = _C3DRendererContextComputeRenderBufferInternalSize(v45, v46, v47, v14);
    glBindRenderbuffer(0x8D41u, params);
    v41 = renderbuffers;
  }

  C3DRenderTargetSetRenderBuffer(v23, v41);
  *(v23 + 8) = v40;
  if (a1)
  {
    *(a1 + 436) += v40;
  }

  return v23;
}

BOOL C3DRendererContextSetupFramebuffer(uint64_t a1, uint64_t a2)
{
  context[2] = *MEMORY[0x277D85DE8];
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DRendererContextSetupFramebuffer_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  FBO = C3DFramebufferGetFBO(a2);
  if (FBO)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextSetupFramebuffer_cold_3();
    }
  }

  else
  {
    framebuffers = 0;
    glGenFramebuffers(1, &framebuffers);
    if (a1)
    {
      ++*(a1 + 408);
    }

    C3DFramebufferSetFBO(a2, framebuffers);
    C3DRendererContextBindFramebuffer(a1, a2);
    RenderTargetDescriptions = C3DFramebufferGetRenderTargetDescriptions(a2);
    if (RenderTargetDescriptions && (v23 = RenderTargetDescriptions, CFDictionaryGetCount(RenderTargetDescriptions) >= 1))
    {
      context[0] = a1;
      context[1] = a2;
      CFDictionaryApplyFunction(v23, _attachRenderTargetDescription, context);
    }

    else
    {
      RenderTarget = C3DFramebufferGetRenderTarget(a2, 0);
      if (RenderTarget)
      {
        C3DRenderContextAttachRenderTargetToFramebuffer(a1, RenderTarget, 0);
      }

      v25 = C3DFramebufferGetRenderTarget(a2, 4);
      if (v25)
      {
        C3DRenderContextAttachRenderTargetToFramebuffer(a1, v25, 4);
      }

      v26 = C3DFramebufferGetRenderTarget(a2, 5);
      if (v26)
      {
        C3DRenderContextAttachRenderTargetToFramebuffer(a1, v26, 5);
      }
    }

    C3DRendererContextUnbindFramebuffer(a1);
  }

  return FBO == 0;
}

void C3DRendererContextBindFramebuffer(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetupFramebuffer_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
    v12 = C3DStackCreate(8u, kCFTypeStackCallBacks, 8uLL);
    *(a1 + 72) = v12;
  }

  if (!C3DStackGetCount(v12))
  {
    params = 0;
    glGetIntegerv(0x8CA6u, &params);
    ++*(a1 + 240);
    *(a1 + 80) = params;
  }

  C3DStackPush(*(a1 + 72));
  C3DStackSetValue(*(a1 + 72), a2);
  _C3DRendererContextBindFramebuffer(a1, a2);
}

void _attachRenderTargetDescription(char a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = C3DSceneSourcePerformConsistencyCheck(a2);
  RenderTargetWithDescription = C3DRendererContextCreateRenderTargetWithDescription(v4, v6, v5);
  v8 = a1;
  C3DRenderContextAttachRenderTargetToFramebuffer(v4, RenderTargetWithDescription, v8);
  C3DFramebufferAddRenderTarget(v5, RenderTargetWithDescription, v8);

  CFRelease(RenderTargetWithDescription);
}

uint64_t C3DRenderContextAttachRenderTargetToFramebuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a1 + 1920))(a3);
  if (*(a2 + 19))
  {
    Texture = C3DRenderTargetGetTexture(a2);
    ID = C3DTextureGetID(Texture);
    TargetMode = C3DTextureGetTargetMode(Texture);
    glFramebufferTexture2D(0x8D40u, v5, TargetMode, ID, 0);
  }

  else
  {
    RenderBuffer = C3DRenderTargetGetRenderBuffer(a2);
    glFramebufferRenderbuffer(0x8D40u, v5, 0x8D41u, RenderBuffer);
  }

  result = C3DAnimationGetKeyPath(a2);
  *(a1 + 432) += result;
  return result;
}

void C3DRendererContextUnbindFramebuffer(uint64_t a1)
{
  Value = C3DStackGetValue(*(a1 + 72));
  if (Value)
  {
    v3 = Value;
    if ((*(Value + 128) & 1) == 0)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        C3DRendererContextUnbindFramebuffer_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    *(v3 + 128) &= ~1u;
  }

  else
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextUnbindFramebuffer_cold_2();
    }
  }

  C3DStackPop(*(a1 + 72));
  if (C3DStackGetCount(*(a1 + 72)))
  {
    v13 = C3DStackGetValue(*(a1 + 72));
    if (v13)
    {
      _C3DRendererContextBindFramebuffer(a1, v13);
      return;
    }
  }

  else
  {
    LODWORD(v13) = *(a1 + 80);
  }

  glBindFramebuffer(0x8D40u, v13);
  ++*(a1 + 204);
}

void _C3DRendererContextBindFramebuffer(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetupFramebuffer_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  FBO = C3DFramebufferGetFBO(a2);
  *(a2 + 128) |= 1u;
  glBindFramebuffer(0x8D40u, FBO);
  if (a1)
  {
    ++*(a1 + 204);
  }
}

void C3DRendererContextRestoreFramebuffer(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      Value = C3DStackGetValue(v2);
      if (Value)
      {

        _C3DRendererContextBindFramebuffer(a1, Value);
      }
    }
  }
}

uint64_t C3DRendererContextGetBoundFramebuffer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 72)) != 0)
  {
    return C3DStackGetValue(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DRendererContextResolveFramebuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, __int128 *a6)
{
  FBO = C3DFramebufferGetFBO(a3);
  glBindFramebuffer(0x8CA8u, FBO);
  v12 = C3DFramebufferGetFBO(a2);
  glBindFramebuffer(0x8CA9u, v12);
  if (a1)
  {
    ++*(a1 + 204);
  }

  Size = C3DFramebufferGetSize(a2);
  if (a6)
  {
    v14 = *a6;
  }

  else
  {
    *&v14 = 0;
    *(&v14 + 1) = Size;
  }

  if (a4)
  {
    v15 = 0x4000;
  }

  else
  {
    v15 = 0;
  }

  if (a5)
  {
    v15 |= 0x100u;
  }

  return (*(a1 + 1952))(*&v14, *(&v14 + 1), *(&v14 + 2), *(&v14 + 3), *&v14, *(&v14 + 1), *(&v14 + 2), *(&v14 + 3), v15 | 0x260000000000, a1);
}

void _C3DRendererContextDeleteRenderBuffer(uint64_t a1, GLuint a2)
{
  renderbuffers = a2;
  if (a1)
  {
    --*(a1 + 416);
  }

  else
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  glDeleteRenderbuffers(1, &renderbuffers);
}

void C3DRendererContextDeleteRenderTarget(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 19))
  {
    Texture = C3DRenderTargetGetTexture(a2);
    C3DRendererContextDeleteTexture(a1, Texture);
    if (!a1)
    {
      return;
    }

    v5 = 452;
  }

  else
  {
    RenderBuffer = C3DRenderTargetGetRenderBuffer(a2);
    _C3DRendererContextDeleteRenderBuffer(a1, RenderBuffer);
    if (!a1)
    {
      return;
    }

    v5 = 436;
  }

  *(a1 + v5) -= C3DAnimationGetKeyPath(a2);
  *(a1 + 432) -= C3DAnimationGetKeyPath(a2);
}

void C3DRendererContextDeleteFramebuffer(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 0x40000000;
    context[2] = __C3DRendererContextDeleteFramebuffer_block_invoke;
    context[3] = &__block_descriptor_tmp_20_1;
    context[4] = a1;
    C3DFramebufferApplyToRenderTargets(a2, context);
  }

  framebuffers = C3DFramebufferGetFBO(a2);
  if (framebuffers)
  {
    if (a1)
    {
      --*(a1 + 408);
    }

    glDeleteFramebuffers(1, &framebuffers);
  }

  C3DFramebufferCleanup(a2);
}

void C3DRendererContextSetRasterizerStates(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = C3DRasterizerStatesDefault();
  }

  if (*(a1 + 1096) != v2)
  {
    v41 = 0;
    *flag = 0;
    v44 = 0;
    v43 = 0;
    C3DRasterizerStatesGetDesc(v2, &v41);
    v4 = *(a1 + 1096);
    if (v4)
    {
      v37 = 0;
      v38 = 0;
      v40 = 0;
      v39 = 0;
      C3DRasterizerStatesGetDesc(v4, &v37);
      if (v37 == v41)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      if (v38 == flag[0])
      {
        v6 = v37 != v41;
      }

      else
      {
        v6 = v5;
      }

      if (flag[0] == 1 && BYTE2(v38) != flag[2] || (v38 & 1) == 0)
      {
        v6 |= 4u;
      }

      if (flag[0] && BYTE1(v38) != flag[1] || (v38 & 1) == 0)
      {
        v6 |= 8u;
      }

      if ((flag[3] & 1) != 0 || BYTE3(v38) == 1)
      {
        LOBYTE(v6) = v6 | 0x10;
      }

      else if (!v6)
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          C3DRendererContextSetRasterizerStates_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
        }

        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = -1;
    }

    v15 = flag[0];
    v16 = flag[1];
    v17 = flag[2];
    v18 = flag[3];
    v19 = flag[4];
    v20 = flag[5];
    v36 = flag[7];
    v21 = v43;
    v35 = BYTE1(v43);
    v34 = BYTE2(v43);
    v33 = BYTE3(v43);
    v26 = BYTE4(v43);
    v28 = BYTE5(v43);
    v31 = BYTE6(v43);
    mask = flag[6];
    v30 = v44;
    v29 = BYTE1(v44);
    v27 = BYTE2(v44);
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }

    if (v41 == 2)
    {
      glDisable(0xB44u);
    }

    else
    {
      if (v41 == 1)
      {
        glEnable(0xB44u);
        v22 = 1028;
      }

      else
      {
        if (v41)
        {
          goto LABEL_40;
        }

        glEnable(0xB44u);
        v22 = 1029;
      }

      glCullFace(v22);
    }

LABEL_40:
    ++*(a1 + 236);
    if ((v6 & 2) == 0)
    {
LABEL_29:
      if ((v6 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_45;
    }

LABEL_41:
    if (v15)
    {
      glEnable(0xB71u);
    }

    else
    {
      glDisable(0xB71u);
    }

    ++*(a1 + 236);
    if ((v6 & 4) == 0)
    {
LABEL_30:
      if ((v6 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_46;
    }

LABEL_45:
    glDepthFunc(gl_ComparisonFunc[v17]);
    ++*(a1 + 236);
    if ((v6 & 8) == 0)
    {
LABEL_31:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

LABEL_46:
    glDepthMask(v16);
    ++*(a1 + 236);
    if ((v6 & 0x10) == 0)
    {
LABEL_54:
      *(a1 + 1096) = v2;
      return;
    }

LABEL_47:
    if (v18)
    {
      glEnable(0xB90u);
      v23 = gl_ComparisonFunc[v20];
      if (v19)
      {
        glStencilFuncSeparate(0x404u, v23, v21, mask);
        glStencilOpSeparate(0x404u, gl_StencilOp[v33], gl_StencilOp[v34], gl_StencilOp[v35]);
        glStencilMaskSeparate(0x404u, v36);
        glStencilFuncSeparate(0x405u, gl_ComparisonFunc[v26], v21, v28);
        glStencilOpSeparate(0x405u, gl_StencilOp[v27], gl_StencilOp[v29], gl_StencilOp[v30]);
        v24 = 1029;
        v25 = v31;
      }

      else
      {
        glStencilFuncSeparate(0x408u, v23, v21, mask);
        glStencilOpSeparate(0x408u, gl_StencilOp[v33], gl_StencilOp[v34], gl_StencilOp[v35]);
        v24 = 1032;
        v25 = v36;
      }

      glStencilMaskSeparate(v24, v25);
    }

    else
    {
      glDisable(0xB90u);
    }

    ++*(a1 + 236);
    goto LABEL_54;
  }
}

void C3DRendererContextRenderResidentMeshElement(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  __drawCall(a1);
}

void __drawCall(uint64_t a1)
{
  v1 = *(a1 + 1124);
  v2 = *(a1 + 1144);
  v3 = vadd_s32(*(a1 + 188), (v2 | 0x100000000));
  *(a1 + 188) = v3;
  v4 = *(a1 + 1128);
  v5 = *(a1 + 184) + v4;
  *(a1 + 184) = v5;
  v6 = *(a1 + 1120);
  if (v6 > 0)
  {
    switch(v6)
    {
      case 1:
        v7 = *(a1 + 1132);
        v8 = *(a1 + 1136);

        glDrawElements(v1, v4, v7, v8);
        return;
      case 2:
        v10 = *(a1 + 1148) - 1;
        *(a1 + 184) = v5 + v4 * v10;
        *(a1 + 188) = v3.i32[0] + v10 * v2;
        __assert_rtn("__drawCall", "C3DRendererContextGL.c", 3465, "0");
      case 3:
        __drawCall_cold_1();
    }

    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __drawCall_cold_2();
    }

    return;
  }

  glDrawArrays(v1, 0, v4);
}

double C3DRendererContextGetViewport()
{
  v1 = 0uLL;
  glGetFloatv(0xBA2u, &v1);
  return *&v1;
}

void C3DRendererContextSetLight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  if (!*(a1 + 176))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetLight_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (a2 >= 8)
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetLight_cold_2(a2, v18);
    }
  }

  v19 = *(a1 + 176);
  v20 = 16 * a2;
  UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v19, 16 * a2 + 18);
  if (UniformLocation != -1)
  {
    C3DLightGetColorModulatedByIntensity(a3, v22, v23, v24, v25, v26, v27, v28);
    *&v54[0] = v29;
    *(&v54[0] + 1) = v30;
    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToNonLinear(v54);
    }

    glUniform4fv(UniformLocation, 1, v54);
  }

  v31 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v20 + 19);
  if (v31 != -1)
  {
    glUniform4f(v31, COERCE_GLFLOAT(*(a4 + 16)), COERCE_GLFLOAT(HIDWORD(*(a4 + 16))), COERCE_GLFLOAT(*(a4 + 24)), 0.0);
  }

  v32 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v20 + 20);
  if (v32 != -1)
  {
    glUniform4f(v32, COERCE_GLFLOAT(*(a4 + 32)), COERCE_GLFLOAT(HIDWORD(*(a4 + 32))), COERCE_GLFLOAT(*(a4 + 40)), 0.0);
  }

  v33 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v20 + 23);
  if (v33 != -1)
  {
    glUniform4f(v33, COERCE_GLFLOAT(*(a4 + 80)), COERCE_GLFLOAT(HIDWORD(*(a4 + 80))), COERCE_GLFLOAT(*(a4 + 88)), 0.0);
  }

  v34 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v20 + 24);
  if (v34 != -1)
  {
    glUniform4f(v34, COERCE_GLFLOAT(*(a4 + 96)), COERCE_GLFLOAT(HIDWORD(*(a4 + 96))), COERCE_GLFLOAT(*(a4 + 104)), 0.0);
  }

  if (*(a4 + 408) && *(a4 + 400))
  {
    if (a3 && *(a3 + 168) == 1 && (*(a3 + 169) & 1) == 0)
    {
      v35 = v20 + 30;
      v36 = v20 + 31;
      v37 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v20 + 32);
      if (v37 == -1)
      {
LABEL_34:
        v42 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v35);
        if (v42 != -1)
        {
          if (*a5 >= 8)
          {
            v43 = scn_default_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              C3DRendererContextSetLight_cold_3(v43, v44, v45, v41, v46, v47, v48, v49);
            }
          }

          C3DRendererContextBindTexture(a1, *(a4 + 400), *(a4 + 408), v41, *a5);
          glUniform1i(v42, *a5);
          C3DFXGLSLProgramObjectSetUniformValueAtIndex(v19, v35, *a5);
          ++*a5;
        }

        v50 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v36);
        if (v50 != -1)
        {
          v51 = *(a4 + 144);
          v54[0] = *(a4 + 128);
          v54[1] = v51;
          v52 = *(a4 + 176);
          v54[2] = *(a4 + 160);
          v54[3] = v52;
          glUniformMatrix4fv(v50, 1, 0, v54);
          ++*(a1 + 264);
        }

        v53 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v20 + 33);
        if (v53 != -1)
        {
          v54[0] = *(a3 + 112);
          if (C3DLinearRenderingIsEnabled())
          {
            C3DColor4ConvertToNonLinear(v54);
          }

          glUniform4fv(v53, 1, v54);
        }

        return;
      }

      RealShadowMapSize = C3DLightGetRealShadowMapSize(a3);
      if (*RealShadowMapSize.i32 <= *&RealShadowMapSize.i32[1])
      {
        RealShadowMapSize.i32[0] = RealShadowMapSize.i32[1];
      }

      if (*RealShadowMapSize.i32 < 1.0)
      {
        *RealShadowMapSize.i32 = 1.0;
      }

      *v54 = *(a3 + 140) / *RealShadowMapSize.i32;
      v39 = v54;
    }

    else
    {
      v35 = v20 + 25;
      v36 = v20 + 26;
      v37 = C3DFXGLSLProgramObjectGetUniformLocation(v19, v20 + 27);
      if (v37 == -1)
      {
        goto LABEL_34;
      }

      Gobo = C3DLightGetGobo(a3, 0);
      if (!Gobo)
      {
        goto LABEL_34;
      }

      v39 = (Gobo + 72);
    }

    glUniform1fv(v37, 1, v39);
    ++*(a1 + 244);
    goto LABEL_34;
  }
}

void C3DRendererContextBindCommonProfile(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, GLfloat a7)
{
  v37[0] = a3;
  v37[1] = a4;
  v38 = 0;
  v40 = a2;
  v39 = a7;
  __SetupCommonProfileEffectProperty(a1, 7, v37);
  __SetupCommonProfileEffectProperty(a1, 2, v37);
  if (C3DEffectCommonProfileIsUsingSelfIllumination(a3))
  {
    v13 = 9;
  }

  else
  {
    v13 = 0;
  }

  __SetupCommonProfileEffectProperty(a1, v13, v37);
  __SetupCommonProfileEffectProperty(a1, 6, v37);
  if (!__SetupCommonProfileEffectProperty(a1, 8, v37))
  {
    __SetupCommonProfileEffectProperty(a1, 1, v37);
  }

  __SetupCommonProfileEffectProperty(a1, 3, v37);
  __SetupCommonProfileEffectProperty(a1, 16, v37);
  __SetupCommonProfileEffectProperty(a1, 19, v37);
  if (*(a3 + 24) == 5)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextBindCommonProfile_cold_1();
    }

    *(a3 + 24) = 2;
  }

  if (a1[11].i8[1] == 1)
  {
    __SetupCommonProfileEffectProperty(a1, 4, v37);
  }

  TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(a3);
  FloatProperty = C3DEffectCommonProfileGetFloatProperty(a3, 18);
  *(a4 + 260) = TransparencyMode;
  v17 = __SetupCommonProfileEffectProperty(a1, 5, v37);
  if (a7 >= 1.0 && C3DEffectCommonProfileIsOpaque(a3) && (a5 & 1) != 0)
  {
    v23 = C3DBlendStatesDefaultReplace();
    C3DRendererContextSetBlendStates(a1, v23);
    *(a4 + 260) = -1;
    goto LABEL_32;
  }

  v18 = a1[22];
  UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v18, 168);
  if (UniformLocation != -1)
  {
    v20 = FloatProperty * a7;
    if (TransparencyMode == 1)
    {
      v20 = FloatProperty;
    }

    glUniform1f(UniformLocation, v20);
  }

  v21 = C3DFXGLSLProgramObjectGetUniformLocation(v18, 9);
  if (v21 != -1)
  {
    glUniform1f(v21, a7);
  }

  if (C3DEffectCommonProfileContainsContentForEffectProperty(a3, 2))
  {
    v22 = C3DEffectCommonProfileContentIsOpaqueForEffectProperty(a3, 2) ^ 1;
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  v24 = v17 | v22 | a5 ^ 1;
  if (TransparencyMode != 1)
  {
    if ((v24 & 1) == 0)
    {
      ConstantAlpha = C3DEffectCommonProfileGetConstantAlpha(a3);
      glBlendColor(0.0, 0.0, 0.0, ConstantAlpha * a7);
      v34 = C3DBlendStatesDefaultConstantAlpha();
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v24)
  {
LABEL_29:
    v34 = C3DBlendStatesDefaultOver();
    goto LABEL_31;
  }

  v25 = a7;
  Color = C3DEffectCommonProfileGetColor(a3, 5);
  v27 = Color[1];
  v28 = Color[2];
  v29 = v27 * 0.71516 + *Color * 0.212671 + v28 * 0.072169;
  v30 = (1.0 - (FloatProperty * *Color)) * v25;
  v31 = (1.0 - (FloatProperty * v27)) * v25;
  v32 = (1.0 - (FloatProperty * v28)) * v25;
  v33 = (1.0 - (FloatProperty * v29)) * v25;
  glBlendColor(v30, v31, v32, v33);
  v34 = C3DBlendStatesDefaultConstantColor();
LABEL_31:
  C3DRendererContextSetBlendStates(a1, v34);
LABEL_32:
  if (a6 > 3)
  {
    switch(a6)
    {
      case 4:
        v36 = C3DBlendStatesDefaultScreen();
        break;
      case 5:
        v36 = C3DBlendStatesDefaultReplace();
        break;
      case 6:
        v36 = C3DBlendStatesDefaultMax();
        break;
      default:
        return;
    }
  }

  else
  {
    switch(a6)
    {
      case 1:
        v36 = C3DBlendStatesDefaultAdditive();
        break;
      case 2:
        v36 = C3DBlendStatesDefaultSubtract();
        break;
      case 3:
        v36 = C3DBlendStatesDefaultMultiplicative();
        break;
      default:
        return;
    }
  }

  C3DRendererContextSetBlendStates(a1, v36);
}

BOOL __SetupCommonProfileEffectProperty(float32x2_t *a1, int a2, uint64_t *a3)
{
  if (!*&a1[22])
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetLight_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1[22];
  v15 = *a3;
  v16 = a3[1];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(*a3, a2, 0);
  if (EffectSlot)
  {
    v18 = EffectSlot;
    Texture = C3DEffectSlotGetTexture(EffectSlot);
    TextureSampler = C3DEffectSlotGetTextureSampler(v18);
    if (Texture)
    {
      goto LABEL_6;
    }

    Texture = C3DEffectSlotGetImage(v18);
    if (Texture)
    {
      v27 = a3[3];
      Default = TextureSampler;
      if (!TextureSampler)
      {
        Default = C3DTextureSamplerGetDefault();
      }

      Texture = C3DResourceManagerMakeImageResident(v27, Texture, Default, a1);
      if (Texture)
      {
LABEL_6:
        v22 = v16 + 32 * *(v16 + 256);
        if (!TextureSampler)
        {
          TextureSampler = C3DTextureSamplerGetDefault();
        }

        v23 = *(v22 + 8);
        if (v23 != Texture)
        {
          if (v23)
          {
            CFRelease(v23);
            *(v22 + 8) = 0;
          }

          *(v22 + 8) = CFRetain(Texture);
        }

        v24 = (v16 + 256);
        v25 = *(v22 + 24);
        if (v25 != TextureSampler)
        {
          if (v25)
          {
            CFRelease(v25);
            *(v22 + 24) = 0;
          }

          if (TextureSampler)
          {
            v26 = CFRetain(TextureSampler);
          }

          else
          {
            v26 = 0;
          }

          *(v22 + 24) = v26;
        }

        *v22 = a2;
        v29 = *v24;
        *(v22 + 16) = *v24;
        if (v29 >= 8)
        {
          v30 = scn_default_log();
          result = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          __SetupCommonProfileEffectProperty_cold_4();
          return 0;
        }

        C3DRendererContextBindTexture(a1, Texture, TextureSampler, v20, v29);
        ++*v24;
        if ((a2 - 10) <= 0xA)
        {
          if ((__SetupCommonProfileEffectProperty_done & 1) == 0)
          {
            __SetupCommonProfileEffectProperty_done = 1;
            v32 = scn_default_log();
            result = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            __SetupCommonProfileEffectProperty_cold_3();
          }

          return 0;
        }

        v33 = s_PropertyToTextureUniformIndex[a2];
        if (*(v22 + 16) != C3DFXGLSLProgramObjectGetUniformValueAtIndex(v14, v33))
        {
          UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v14, v33);
          if (UniformLocation != -1)
          {
            glUniform1i(UniformLocation, *(v22 + 16));
            C3DFXGLSLProgramObjectSetUniformValueAtIndex(v14, v33, *(v22 + 16));
          }
        }

        if ((a2 - 21) >= 0xFFFFFFFFFFFFFFF5)
        {
          if ((__SetupCommonProfileEffectProperty_done_58 & 1) == 0)
          {
            __SetupCommonProfileEffectProperty_done_58 = 1;
            v36 = scn_default_log();
            result = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            __SetupCommonProfileEffectProperty_cold_2();
          }

          return 0;
        }

        v35 = C3DFXGLSLProgramObjectGetUniformLocation(v14, s_PropertyToIntensityUniformIndex[a2]);
        if (v35 == -1)
        {
          LOBYTE(Texture) = 1;
        }

        else
        {
          LODWORD(v67[0]) = C3DEffectSlotGetIntensity(v18);
          LOBYTE(Texture) = 1;
          glUniform1fv(v35, 1, v67);
          ++a1[30].i32[1];
        }
      }
    }

    if ((a2 - 10) >= 0xB)
    {
      v37 = C3DFXGLSLProgramObjectGetUniformLocation(v14, s_PropertyToTextureMatrixUniformIndex[a2]);
      if (v37 != -1)
      {
        ImageTransform = C3DEffectSlotGetImageTransform(v18);
        memset(v67, 0, sizeof(v67));
        if (!ImageTransform)
        {
          ImageTransform = v67;
          C3DMatrix4x4MakeIdentity(v67);
        }

        glUniformMatrix4fv(v37, 1, 0, ImageTransform);
        ++a1[33].i32[0];
      }
    }

    if (Texture)
    {
      return 1;
    }
  }

  result = 0;
  if (a2 > 4)
  {
    if (a2 <= 8)
    {
      if (a2 == 5)
      {
        v51 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 169);
        if (v51 != -1)
        {
          v40 = v51;
          v41 = v15;
          v42 = 5;
          goto LABEL_78;
        }
      }

      else
      {
        if (a2 != 6)
        {
          return result;
        }

        v49 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 164);
        if (v49 != -1)
        {
          v40 = v49;
          v41 = v15;
          v42 = 6;
          goto LABEL_78;
        }
      }
    }

    else
    {
      if (a2 != 9)
      {
        if (a2 == 16)
        {
          v62 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 147);
          if (v62 != -1)
          {
            v63 = v62;
            v64 = C3DWasLinkedBeforeMajorOSYear2014();
            FloatProperty = C3DEffectCommonProfileGetFloatProperty(v15, 16);
            if (v64)
            {
              v66 = FloatProperty < 1.0;
              FloatProperty = 1.0;
              if (v66)
              {
                FloatProperty = C3DEffectCommonProfileGetFloatProperty(v15, 16);
              }
            }

            glUniform1f(v63, FloatProperty * 128.0);
          }
        }

        else
        {
          if (a2 != 19)
          {
            return result;
          }

          v43 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 183);
          if (v43 != -1)
          {
            v44 = v43;
            v45 = C3DEffectCommonProfileGetFloatProperty(v15, 19);
            v46 = C3DEffectCommonProfileGetFloatProperty(v15, 20);
            v47 = ((1.0 - v45) * (1.0 - v45)) / ((v45 + 1.0) * (v45 + 1.0));
            glUniform3f(v44, v47, 1.0 - v47, v46);
          }
        }

        return 0;
      }

      v53 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 160);
      if (v53 != -1)
      {
        v40 = v53;
        v41 = v15;
        v42 = 9;
        goto LABEL_78;
      }
    }
  }

  else if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v48 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 152);
      if (v48 == -1)
      {
        return 0;
      }

      v40 = v48;
      v41 = v15;
      v42 = 1;
      goto LABEL_78;
    }

    v50 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 160);
    if (v50 != -1)
    {
      v40 = v50;
      v41 = v15;
      v42 = 0;
      goto LABEL_78;
    }
  }

  else if (a2 == 2)
  {
    v52 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 148);
    if (v52 != -1)
    {
      v40 = v52;
      v41 = v15;
      v42 = 2;
      goto LABEL_78;
    }
  }

  else if (a2 == 3)
  {
    v54 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 156);
    if (v54 != -1)
    {
      v40 = v54;
      v41 = v15;
      v42 = 3;
      goto LABEL_78;
    }
  }

  else
  {
    v39 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 179);
    if (v39 != -1)
    {
      v40 = v39;
      v41 = v15;
      v42 = 4;
LABEL_78:
      ColorModulatedByIntensity = C3DEffectCommonProfileGetColorModulatedByIntensity(v41, v42);
      v57 = v56;
      *&v67[0] = ColorModulatedByIntensity;
      *(&v67[0] + 1) = v56;
      if (C3DLinearRenderingIsEnabled())
      {
        C3DColor4ConvertToNonLinear(v67);
        v59 = *(v67 + 1);
        v58 = *v67;
        v61 = *(v67 + 3);
        v60 = *(v67 + 2);
      }

      else
      {
        v59 = *(&ColorModulatedByIntensity + 1);
        v58 = *&ColorModulatedByIntensity;
        v61 = *(&v57 + 1);
        v60 = *&v57;
      }

      glUniform4f(v40, v58, v59, v60, v61);
    }
  }

  return 0;
}

void C3DRendererContextUnbindCommonProfile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 256);
  if (v4)
  {
    v5 = (a3 + 24);
    do
    {
      v6 = *(v5 - 2);
      if (v6)
      {
        CFRelease(v6);
        *(v5 - 2) = 0;
        if (*v5)
        {
          CFRelease(*v5);
          *v5 = 0;
        }
      }

      v5 += 4;
      --v4;
    }

    while (v4);
  }

  *(a3 + 256) = 0;
  if (*(a3 + 260) != 255)
  {

    glBlendColor(0.0, 0.0, 0.0, 0.0);
  }
}

void C3DRendererContextSetFrontFace(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 2305;
  }

  else
  {
    v3 = 2304;
  }

  glFrontFace(v3);
  if (a1)
  {
    ++*(a1 + 236);
  }
}

BOOL C3DRendererContextGetFrontFace(uint64_t a1)
{
  params = 0;
  glGetIntegerv(0xB46u, &params);
  if (a1)
  {
    ++*(a1 + 240);
  }

  return params != 2304;
}

void C3DRendererContextSetEnableWriteToDepth(uint64_t a1, int a2)
{
  glDepthMask(a2 != 0);
  *(a1 + 1096) = 0;
  ++*(a1 + 236);
}

void C3DRendererContextSetEnableReadsFromDepth(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 515;
  }

  else
  {
    v3 = 519;
  }

  glDepthFunc(v3);
  if (a1)
  {
    ++*(a1 + 236);
  }
}

uint64_t C3DRendererContextAllocateBufferObject(_DWORD *a1, int a2, GLsizeiptr a3, int a4)
{
  if (a4)
  {
    v7 = 35040;
  }

  else
  {
    v7 = 35044;
  }

  buffers = 0;
  glGenBuffers(1, &buffers);
  if (a2 == 1)
  {
    glBindBuffer(0x8893u, buffers);
    glBufferData(0x8893u, a3, 0, v7);
    if (a1)
    {
      ++a1[105];
      a1[111] += a3;
    }
  }

  else if (!a2)
  {
    glBindBuffer(0x8892u, buffers);
    glBufferData(0x8892u, a3, 0, v7);
    if (a1)
    {
      ++a1[103];
      a1[110] += a3;
    }
  }

  return C3DBufferObjectCreate(buffers, a2, a3, 0);
}

uint64_t C3DRendererContextCreateBufferObjectForMeshSource(uint64_t a1, uint64_t a2)
{
  buffers = 0;
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Data = C3DMeshSourceGetData(a2);
  if (Data)
  {
    v13 = Data;
    glGenBuffers(1, &buffers);
    if (a1)
    {
      ++*(a1 + 412);
    }

    glBindBuffer(0x8892u, buffers);
    if (C3DMeshSourceIsMutable(a2))
    {
      v14 = 35048;
    }

    else
    {
      v14 = 35044;
    }

    Length = CFDataGetLength(v13);
    BytePtr = CFDataGetBytePtr(v13);
    glBufferData(0x8892u, Length, BytePtr, v14);
    if (a1)
    {
      *(a1 + 440) += Length;
    }

    return C3DBufferObjectCreate(buffers, 0, Length, v13);
  }

  else
  {
    if ((C3DRendererContextCreateBufferObjectForMeshSource_done & 1) == 0)
    {
      C3DRendererContextCreateBufferObjectForMeshSource_done = 1;
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        C3DRendererContextCreateBufferObjectForMeshSource_cold_2();
      }
    }

    return 0;
  }
}

uint64_t C3DRendererContextCreateBufferObjectForMeshElement(uint64_t a1, uint64_t a2)
{
  *buffers = 0;
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextCreateBufferObjectForMeshElement_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Indexes = C3DMeshElementGetIndexes(a2, buffers);
  Length = CFDataGetLength(Indexes);
  glGenBuffers(1, &buffers[1]);
  if (a1)
  {
    ++*(a1 + 420);
    glBindBuffer(0x8893u, buffers[1]);
    BytePtr = CFDataGetBytePtr(Indexes);
    glBufferData(0x8893u, Length, BytePtr, 0x88E4u);
    *(a1 + 444) += Length;
  }

  else
  {
    glBindBuffer(0x8893u, buffers[1]);
    v15 = CFDataGetBytePtr(Indexes);
    glBufferData(0x8893u, Length, v15, 0x88E4u);
  }

  return C3DBufferObjectCreate(buffers[1], 1, Length, a2);
}

void C3DRendererContextUnbindTexture(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (*(a1 + 20) > a3)
    {
      TextureUnitOffset = C3DRendererContextGetTextureUnitOffset(a1);
      glActiveTexture(a3 + TextureUnitOffset + 33984);
      TargetMode = C3DTextureGetTargetMode(a2);
      glBindTexture(TargetMode, 0);
      ++*(a1 + 232);
      *(a1 + 4 * a3 + 1040) = 0;
    }
  }
}

void C3DRendererContextUnbindTextureUnits(uint64_t a1)
{
  v2 = *(a1 + 1072);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 1040;
    v5 = 33984;
    do
    {
      v6 = *(v4 + 4 * v3);
      if (v6)
      {
        glActiveTexture(v5);
        glBindTexture(v6, 0);
        ++*(a1 + 232);
        *(v4 + 4 * v3) = 0;
        v2 = *(a1 + 1072);
      }

      ++v3;
      ++v5;
    }

    while (v3 < v2);
  }

  *(a1 + 1072) = 0;
}

void C3DRendererContextBindMesh(uint64_t a1, uint64_t a2, void *key)
{
  if (*(a1 + 1104) != key)
  {
    v14 = v3;
    v15 = v4;
    *(a1 + 1104) = key;
    *(a1 + 1112) = -1;
    if (!key)
    {
      glBindBuffer(0x8892u, 0);
      Value = 0;
LABEL_9:
      (*(a1 + 1928))(Value, a1);
      ++*(a1 + 224);
      return;
    }

    Value = CFDictionaryGetValue(*(a1 + 120), key);
    v13 = Value;
    if (Value)
    {
      if (C3DMeshIsMutable(key))
      {
        if (!*(a1 + 128))
        {
          *(a1 + 128) = CFDictionaryCreateMutable(0, 0, 0, 0);
        }

        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 0x40000000;
        v11[2] = __C3DRendererContextBindMesh_block_invoke_2;
        v11[3] = &__block_descriptor_tmp_31_1;
        v11[4] = a1;
        v11[5] = key;
        v11[6] = a2;
        C3DMeshApplySources(key, 1, v11);
        glBindBuffer(0x8892u, 0);
        v9 = *(a1 + 128);
        MutabilityTimeStamp = C3DMeshGetMutabilityTimeStamp(key);
        CFDictionarySetValue(v9, key, MutabilityTimeStamp);
      }

      goto LABEL_9;
    }

    (*(a1 + 1936))(1, &v13, a1);
    ++*(a1 + 428);
    (*(a1 + 1928))(v13, a1);
    ++*(a1 + 224);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __C3DRendererContextBindMesh_block_invoke;
    v12[3] = &__block_descriptor_tmp_30;
    v12[4] = a2;
    v12[5] = a1;
    C3DMeshApplySources(key, 1, v12);
    CFDictionarySetValue(*(a1 + 120), key, v13);
    glBindBuffer(0x8892u, 0);
  }
}

void C3DRendererContextBindMeshElement(uint64_t a1, uint64_t a2, const void *a3)
{
  if (*(a1 + 1112) == a3)
  {
    return;
  }

  v31 = v3;
  v32 = v4;
  *(a1 + 1112) = a3;
  if (!a3)
  {
    Value = 0;
    *(a1 + 1144) = 0;
    *(a1 + 1136) = 0;
    *(a1 + 1120) = 0u;
    goto LABEL_46;
  }

  v30 = 0;
  Indexes = C3DMeshElementGetIndexes(a3, &v30);
  if (C3DMeshElementIsVolatile(a3))
  {
    if (!*(a1 + 2056))
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        C3DRendererContextBindMeshElement_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    Value = CFDictionaryGetValue(*(a1 + 2056), a3);
    *(a1 + 1120) = 1;
    if (v30 != 4)
    {
      if (v30 != 2)
      {
        if (v30 != 1)
        {
          v18 = scn_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          return;
        }

        goto LABEL_21;
      }

LABEL_22:
      v22 = 5123;
      goto LABEL_24;
    }

LABEL_23:
    v22 = 5125;
    goto LABEL_24;
  }

  if (!Indexes)
  {
    Value = 0;
    *(a1 + 1120) = 0;
LABEL_25:
    if (*(a1 + 104))
    {
      InstanceCount = C3DMeshElementGetInstanceCount(a3);
      if (InstanceCount >= 2)
      {
        *(a1 + 1148) = InstanceCount;
        if (Indexes)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        *(a1 + 1120) = v24;
      }
    }

    PrimitiveCount = C3DMeshElementGetPrimitiveCount(a3);
    if (C3DMeshElementGetPrimitiveRange(a3) != -1)
    {
      PrimitiveCount = v26;
    }

    Type = C3DMeshElementGetType(a3);
    *(a1 + 1144) = PrimitiveCount;
    if (Type <= 1u)
    {
      if (!Type)
      {
        *(a1 + 1124) = 4;
        PrimitiveCount *= 3;
        goto LABEL_45;
      }

      if (Type == 1)
      {
        v28 = 5;
        goto LABEL_41;
      }
    }

    else
    {
      switch(Type)
      {
        case 2u:
          *(a1 + 1124) = 1;
          PrimitiveCount *= 2;
          goto LABEL_45;
        case 3u:
          *(a1 + 1124) = 0;
          goto LABEL_45;
        case 5u:
          v28 = 6;
LABEL_41:
          *(a1 + 1124) = v28;
          PrimitiveCount += 2;
LABEL_45:
          *(a1 + 1128) = PrimitiveCount;
          break;
      }
    }

LABEL_46:
    glBindBuffer(0x8893u, Value);
    ++*(a1 + 220);
    return;
  }

  *(a1 + 1120) = 1;
  MeshElementResident = C3DResourceManagerMakeMeshElementResident(a2, a3, a1);
  Value = C3DBufferObjectGetBufferID(MeshElementResident);
  v20 = MeshElementResident[9];
  if (v20)
  {
    SharedIndexBufferOffset = *v20;
  }

  else
  {
    SharedIndexBufferOffset = C3DMeshElementGetSharedIndexBufferOffset(a3);
  }

  *(a1 + 1136) = SharedIndexBufferOffset;
  switch(v30)
  {
    case 4:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 1:
LABEL_21:
      v22 = 5121;
LABEL_24:
      *(a1 + 1132) = v22;
      goto LABEL_25;
  }

  v29 = scn_default_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
LABEL_49:
    C3DRendererContextBindMeshElement_cold_1();
  }
}

void _C3DRendererContextMeshWillDie(uint64_t a1, const void *a2, NSObject *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 120), a2);
  if (Value)
  {
    C3DRendererContextRetainContext(a1);
    CFRetain(a1);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___C3DRendererContextMeshWillDie_block_invoke;
    v8[3] = &__block_descriptor_tmp_28_1;
    v8[4] = a1;
    v9 = Value;
    dispatch_async(a3, v8);
    *(a1 + 1104) = -1;
    CFDictionaryRemoveValue(*(a1 + 120), a2);
    v7 = *(a1 + 128);
    if (v7)
    {
      CFDictionaryRemoveValue(v7, a2);
    }
  }
}

void __C3DRendererContextBindMesh_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  MeshSourceResident = C3DResourceManagerMakeMeshSourceResident(*(a1 + 32), a2, *(a1 + 40));
  if (MeshSourceResident)
  {
    v9 = MeshSourceResident;
    BufferID = C3DBufferObjectGetBufferID(MeshSourceResident);
    glBindBuffer(0x8892u, BufferID);
    v11 = *(a1 + 40);
    if (v11)
    {
      ++*(v11 + 208);
    }

    AttributeIndexFromSemanticAndUVSet = _GetAttributeIndexFromSemanticAndUVSet(a3, a4);

    C3DRendererContextSetupResidentMeshSourceAtLocation(v11, a2, v9, AttributeIndexFromSemanticAndUVSet);
  }
}

uint64_t _GetAttributeIndexFromSemanticAndUVSet(int a1, uint64_t a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0;
      case 1:
        return 1;
      case 2:
        return 3;
    }

    return -1;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 4;
    }

    if (a1 == 6)
    {
      return 5;
    }

    return -1;
  }

  if (a1 != 3)
  {
    return 2;
  }

  if (a2 == -1)
  {
    return 6;
  }

  return a2 + 6;
}

void __C3DRendererContextBindMesh_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (C3DMeshSourceIsMutable(a2))
  {
    if (C3DGenericSourceIsPrimary(a2))
    {
      Value = CFDictionaryGetValue(*(*(a1 + 32) + 128), *(a1 + 40));
      if (C3DMeshGetMutabilityTimeStamp(*(a1 + 40)) != Value)
      {
        Data = C3DMeshSourceGetData(a2);
        if (Data)
        {
          v6 = Data;
          Length = CFDataGetLength(Data);
          BytePtr = CFDataGetBytePtr(v6);
          MeshSourceResident = C3DResourceManagerMakeMeshSourceResident(*(a1 + 48), a2, *(a1 + 32));
          BufferID = C3DBufferObjectGetBufferID(MeshSourceResident);
          glBindBuffer(0x8892u, BufferID);
          v11 = *(a1 + 32);
          if (v11)
          {
            ++*(v11 + 208);
          }

          if (Length == MeshSourceResident[17])
          {
            v12 = (*(v11 + 1960))(34962, 0, Length, 38);
            memcpy(v12, BytePtr, Length);
            v13 = *(*(a1 + 32) + 1976);

            v13(34962);
          }

          else
          {
            glBufferData(0x8892u, Length, BytePtr, 0x88E8u);
            MeshSourceResident[17] = Length;
          }
        }
      }
    }
  }
}

uint64_t C3DRendererContextBindEffectSlot(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!a3)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a5 > 7)
  {
    return 0;
  }

  Texture = C3DEffectSlotGetTexture(a3);
  TextureSampler = C3DEffectSlotGetTextureSampler(a3);
  if (TextureSampler)
  {
    if (!Texture)
    {
LABEL_10:
      Image = C3DEffectSlotGetImage(a3);
      if (Image)
      {
        Texture = C3DResourceManagerMakeImageResident(a2, Image, TextureSampler, a1);
      }

      else
      {
        Texture = 0;
      }
    }
  }

  else
  {
    TextureSampler = C3DTextureSamplerGetDefault();
    if (!Texture)
    {
      goto LABEL_10;
    }
  }

  if (a6 != -1)
  {
    ImageTransform = C3DEffectSlotGetImageTransform(a3);
    memset(v26, 0, sizeof(v26));
    if (!ImageTransform)
    {
      ImageTransform = v26;
      C3DMatrix4x4MakeIdentity(v26);
    }

    glUniformMatrix4fv(a6, 1, 0, ImageTransform);
    if (a1)
    {
      ++a1[33].i32[0];
    }
  }

  result = 0;
  if (Texture && TextureSampler)
  {
    C3DRendererContextBindTexture(a1, Texture, TextureSampler, v22, a5);
    if (a4 != -1)
    {
      glUniform1i(a4, a5);
      if (a1)
      {
        ++a1[31].i32[0];
      }
    }

    return 1;
  }

  return result;
}

uint64_t __ReserveAndBindVolatileVBO(_DWORD *a1, unint64_t a2, void *a3, int a4, int a5)
{
  v5 = a5;
  v10 = gl_ArrayBufferType[a5];
  v11 = &a1[6 * a5];
  Count = C3DArrayGetCount(*(v11 + 249));
  ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v11 + 249), v11[501]);
  v14 = *ValuePtrAtIndex;
  if (!*ValuePtrAtIndex)
  {
LABEL_25:
    v24 = 0x800000;
    if (a2 > 0x800000)
    {
      v24 = a2;
    }

    if (a4)
    {
      v25 = a2;
    }

    else
    {
      v25 = v24;
    }

    result = C3DRendererContextAllocateBufferObject(a1, v5, v25, 1);
    *ValuePtrAtIndex = result;
    *(ValuePtrAtIndex + 8) = a2;
    *(ValuePtrAtIndex + 20) = a1[14];
    *a3 = 0;
    return result;
  }

  target = v10;
  v15 = (v11 + 498);
  while (1)
  {
    Size = C3DBufferObjectGetSize(v14);
    v17 = Size;
    v18 = a1[14] - *(ValuePtrAtIndex + 20);
    if (!v18)
    {
      v18 = 0x7FFFFFFF;
    }

    v19 = *(ValuePtrAtIndex + 8);
    if (Size > 0x800000 && !v19 && v18 >= 3)
    {
      v19 = 0;
      if (*(ValuePtrAtIndex + 16) > 0x3Cu)
      {
        v17 = 0;
      }
    }

    if (v19 + a2 > v17 || v18 < 3)
    {
      break;
    }

    if (!v19 || (a4 & 1) == 0)
    {
      BufferID = C3DBufferObjectGetBufferID(*ValuePtrAtIndex);
      glBindBuffer(target, BufferID);
      ++a1[52];
      *(ValuePtrAtIndex + 20) = a1[14];
      result = *ValuePtrAtIndex;
      v28 = *(ValuePtrAtIndex + 8);
      *a3 = v28;
      *(ValuePtrAtIndex + 8) = v28 + a2;
      return result;
    }

LABEL_22:
    v22 = v11[500];
    v23 = (v11[501] + 1) % Count;
    v11[501] = v23;
    if (v22 == v23)
    {
      C3DArraySetCount(*v15, Count + 1);
    }

    Count = C3DArrayGetCount(*v15);
    ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v11 + 249), v11[501]);
    v14 = *ValuePtrAtIndex;
    if (!*ValuePtrAtIndex)
    {
      goto LABEL_25;
    }
  }

  if (v19 || v18 < 3)
  {
    goto LABEL_22;
  }

  v29 = 0x800000;
  if (a2 > 0x800000)
  {
    v29 = a2;
  }

  if (a4)
  {
    v30 = a2;
  }

  else
  {
    v30 = v29;
  }

  C3DRendererContextDeleteBufferObject(a1, *ValuePtrAtIndex);
  if (*ValuePtrAtIndex)
  {
    CFRelease(*ValuePtrAtIndex);
    *ValuePtrAtIndex = 0;
  }

  result = C3DRendererContextAllocateBufferObject(a1, v5, v30, 1);
  *ValuePtrAtIndex = result;
  *(ValuePtrAtIndex + 8) = a2;
  *(ValuePtrAtIndex + 20) = a1[14];
  *a3 = 0;
  if (a4)
  {
    *(ValuePtrAtIndex + 8) = v17;
  }

  return result;
}

uint64_t C3DRendererContextMapVolatileMesh(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int a5)
{
  if (C3DMeshIsVolatile(a3))
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v43 = 0;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 0x40000000;
    v39[2] = __C3DRendererContextMapVolatileMesh_block_invoke;
    v39[3] = &unk_2782FCEF8;
    v39[4] = &v40;
    v39[5] = a4;
    C3DMeshApplySources(a3, 1, v39);
    v10 = v41[3];
    if (v10 && (v38 = 0, (v11 = __ReserveAndBindVolatileVBO(a1, v10, &v38, a5, 0)) != 0) && (v12 = v11, v13 = v38, (v14 = (*(a1 + 1960))(34962, v38, v41[3], 38, a1)) != 0))
    {
      v15 = v14;
      *(C3DArrayGetValuePtrAtIndex(*(a1 + 1992), *(a1 + 2004)) + 24) = v14;
      value_4[0] = 0;
      value_4[1] = value_4;
      value_4[2] = 0x2000000000;
      value_4[3] = 0;
      value = 0;
      v16 = *(a1 + 2048);
      if (v16 >= C3DArrayGetCount(*(a1 + 2040)))
      {
        (*(a1 + 1936))(1, &value, a1);
        ++*(a1 + 428);
        C3DArrayAppendValue(*(a1 + 2040), &value);
        v17 = value;
      }

      else
      {
        v17 = *C3DArrayGetValuePtrAtIndex(*(a1 + 2040), *(a1 + 2048));
        value = v17;
      }

      ++*(a1 + 2048);
      (*(a1 + 1928))(v17, a1);
      ++*(a1 + 224);
      v32 = 0;
      v33 = &v32;
      v34 = 0x2000000000;
      v35 = 0;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 0x40000000;
      v31[2] = __C3DRendererContextMapVolatileMesh_block_invoke_2;
      v31[3] = &unk_2782FCF20;
      v31[4] = &v32;
      v31[5] = value_4;
      v31[6] = v15;
      v31[7] = v13;
      v31[8] = a1;
      v31[9] = v12;
      C3DMeshApplySources(a3, 1, v31);
      if (*(v33 + 24) == 1)
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 0x40000000;
        v30[2] = __C3DRendererContextMapVolatileMesh_block_invoke_3;
        v30[3] = &__block_descriptor_tmp_36_0;
        v30[4] = a2;
        v30[5] = a1;
        C3DMeshApplySources(a3, 1, v30);
        BufferID = C3DBufferObjectGetBufferID(v12);
        glBindBuffer(0x8892u, BufferID);
        ++*(a1 + 208);
      }

      CFDictionarySetValue(*(a1 + 120), a3, value);
      (*(a1 + 1928))(0, a1);
      Mutable = *(a1 + 2008);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        *(a1 + 2008) = Mutable;
      }

      CFArrayAppendValue(Mutable, a3);
      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(value_4, 8);
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextMapVolatileMesh_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    return 0;
  }

  return v26;
}

uint64_t __C3DRendererContextMapVolatileMesh_block_invoke(uint64_t a1, uint64_t a2)
{
  result = C3DMeshSourceIsVolatile(a2);
  if (result)
  {
    Accessor = C3DMeshSourceGetAccessor(a2);
    C3DSourceAccessorSetCount(Accessor, *(a1 + 40));
    result = C3DSourceAccessorGetLength(Accessor);
    *(*(*(a1 + 32) + 8) + 24) += result;
  }

  return result;
}

void __C3DRendererContextMapVolatileMesh_block_invoke_2(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (C3DMeshSourceIsVolatile(a2))
  {
    Accessor = C3DMeshSourceGetAccessor(a2);
    Length = C3DSourceAccessorGetLength(Accessor);
    C3DMeshSourceSetVolatileData(a2, a1[6] + *(*(a1[5] + 8) + 24));
    C3DSourceAccessorSetOffset(Accessor, *(*(a1[5] + 8) + 24) + a1[7]);
    *(*(a1[5] + 8) + 24) += Length;
    AttributeIndexFromSemanticAndUVSet = _GetAttributeIndexFromSemanticAndUVSet(a3, a4);
    v11 = a1[8];
    v12 = a1[9];

    C3DRendererContextSetupResidentMeshSourceAtLocation(v11, a2, v12, AttributeIndexFromSemanticAndUVSet);
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 1;
  }
}

void __C3DRendererContextMapVolatileMesh_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((C3DMeshSourceIsVolatile(a2) & 1) == 0)
  {
    MeshSourceResident = C3DResourceManagerMakeMeshSourceResident(*(a1 + 32), a2, *(a1 + 40));
    BufferID = C3DBufferObjectGetBufferID(MeshSourceResident);
    glBindBuffer(0x8892u, BufferID);
    v10 = *(a1 + 40);
    if (v10)
    {
      ++*(v10 + 208);
    }

    AttributeIndexFromSemanticAndUVSet = _GetAttributeIndexFromSemanticAndUVSet(a3, a4);

    C3DRendererContextSetupResidentMeshSourceAtLocation(v10, a2, MeshSourceResident, AttributeIndexFromSemanticAndUVSet);
  }
}

void C3DRendererContextUnmapVolatileMesh(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = __C3DRendererContextUnmapVolatileMesh_block_invoke;
  v2[3] = &__block_descriptor_tmp_39_0;
  v2[4] = a1;
  C3DMeshApplySources(a2, 1, v2);
  glBindBuffer(0x8892u, 0);
}

void __C3DRendererContextUnmapVolatileMesh_block_invoke(uint64_t a1, uint64_t a2)
{
  if (C3DMeshSourceIsVolatile(a2))
  {
    Accessor = C3DMeshSourceGetAccessor(a2);
    VolatileValuePtrAtIndex = C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0);
    v6 = *(a1 + 32);
    v7 = *(v6 + 1992);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __C3DRendererContextUnmapVolatileMesh_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_38;
    v8[4] = VolatileValuePtrAtIndex;
    v8[5] = v6;
    C3DArrayApply(v7, v8);
    C3DMeshSourceSetVolatileData(a2, 0);
  }
}

uint64_t __C3DRendererContextUnmapVolatileMesh_block_invoke_2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 32);
  v4 = a3[3];
  if (v3 >= v4 && v3 < v4 + a3[1])
  {
    v6 = result;
    BufferID = C3DBufferObjectGetBufferID(*a3);
    glBindBuffer(0x8892u, BufferID);
    result = (*(*(v6 + 40) + 1976))(34962);
    a3[3] = 0;
  }

  return result;
}

uint64_t C3DRendererContextMapVolatileMeshElement(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  if (!C3DMeshElementIsVolatile(a2))
  {
    v9 = scn_default_log();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    C3DRendererContextMapVolatileMesh_cold_1(v9, v11, v12, v13, v14, v15, v16, v17);
    return 0;
  }

  Type = C3DMeshElementGetType(a2);
  if (Type <= 1)
  {
    v18 = a3 + 2;
    if (Type != 1)
    {
      v18 = a3;
    }

    if (Type)
    {
      a3 = v18;
    }

    else
    {
      a3 *= 3;
    }

    if (!a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    switch(Type)
    {
      case 2u:
        a3 *= 2;
        if (a3)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      case 4u:
        v19 = scn_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          C3DRendererContextMapVolatileMeshElement_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
        }

        goto LABEL_22;
      case 5u:
        a3 += 2;
        break;
    }

    if (!a3)
    {
LABEL_22:
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        C3DRendererContextMapVolatileMeshElement_cold_3(v27, v28, v29, v30, v31, v32, v33, v34);
      }

      a3 = 0;
    }
  }

LABEL_25:
  v35 = a3 * C3DMeshElementGetBytesPerIndex(a2);
  if (!v35)
  {
    return 0;
  }

  v49 = 0;
  result = __ReserveAndBindVolatileVBO(a1, v35, &v49, a4, 1);
  if (result)
  {
    v36 = result;
    result = (*(a1 + 1960))(34963, v49, v35, 38, a1);
    if (result)
    {
      v37 = result;
      *(C3DArrayGetValuePtrAtIndex(*(a1 + 2016), *(a1 + 2028)) + 24) = result;
      C3DMeshElementSetVolatileDataPtr(a2, v37);
      if (!*(a1 + 2056))
      {
        Mutable = CFDictionaryCreateMutable(0, 3, 0, 0);
        *(a1 + 2056) = Mutable;
        if (!Mutable)
        {
          v39 = scn_default_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            C3DRendererContextMapVolatileMeshElement_cold_4(v39, v40, v41, v42, v43, v44, v45, v46);
          }
        }
      }

      BufferID = C3DBufferObjectGetBufferID(v36);
      CFDictionarySetValue(*(a1 + 2056), a2, BufferID);
      *(a1 + 1120) = 1;
      v48 = *(a1 + 2032);
      if (!v48)
      {
        v48 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        *(a1 + 2032) = v48;
      }

      CFArrayAppendValue(v48, a2);
      return 1;
    }
  }

  return result;
}

void C3DRendererContextUnmapVolatileMeshElement(uint64_t a1, uint64_t a2)
{
  if (!C3DMeshElementIsVolatile(a2))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextUnmapVolatileMeshElement_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  VolatileDataPtr = C3DMeshElementGetVolatileDataPtr(a2);
  v13 = *(a1 + 2016);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = __C3DRendererContextUnmapVolatileMeshElement_block_invoke;
  v14[3] = &__block_descriptor_tmp_42_0;
  v14[4] = VolatileDataPtr;
  v14[5] = a1;
  C3DArrayApply(v13, v14);
  C3DMeshElementSetVolatileDataPtr(a2, 0);
  glBindBuffer(0x8893u, 0);
}

uint64_t __C3DRendererContextUnmapVolatileMeshElement_block_invoke(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 32);
  v4 = a3[3];
  if (v3 >= v4 && v3 < v4 + a3[1])
  {
    v6 = result;
    BufferID = C3DBufferObjectGetBufferID(*a3);
    glBindBuffer(0x8893u, BufferID);
    result = (*(*(v6 + 40) + 1976))(34963);
    a3[3] = 0;
  }

  return result;
}

void C3DRendererContextResetVolatileObjects(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 1992;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = gl_ArrayBufferType[v2];
    v7 = v3 + 24 * v2;
    v8 = *(v7 + 16);
    if (v8)
    {
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          if (v5)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 16), i);
            CFDictionaryRemoveValue(*(a1 + 120), ValueAtIndex);
          }
        }
      }

      CFArrayRemoveAllValues(*(v7 + 16));
    }

    v13 = *v7;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 0x40000000;
    v17[2] = __C3DRendererContextResetVolatileObjects_block_invoke;
    v17[3] = &__block_descriptor_tmp_43_0;
    v18 = v6;
    v17[4] = a1;
    C3DArrayApply(v13, v17);
    v14 = C3DArrayGetCount(*v7);
    v4 = 0;
    v15 = (*(v7 + 12) + 1) % v14;
    *(v7 + 8) = v15;
    *(v7 + 12) = v15;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v16 = *(a1 + 2056);
  if (v16)
  {
    CFDictionaryRemoveAllValues(v16);
  }

  *(a1 + 2048) = 0;
}

unint64_t __C3DRendererContextResetVolatileObjects_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  if (*a3 && (!*(a3 + 24) || (BufferID = C3DBufferObjectGetBufferID(result), glBindBuffer(*(a1 + 40), BufferID), (*(*(a1 + 32) + 1976))(*(a1 + 40)), (result = *a3) != 0)) && (v7 = *(a3 + 8), result = C3DBufferObjectGetSize(result), v7 < result))
  {
    ++*(a3 + 16);
  }

  else
  {
    *(a3 + 16) = 0;
  }

  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  return result;
}

const __CFDictionary *C3DRendererContextGetCompilationErrors(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    result = CFDictionaryGetCount(result);
    if (result)
    {
      return *(a1 + 96);
    }
  }

  return result;
}

void C3DRendererContextBumpTimeStamp(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
  }

  ++*(a1 + 56);
}

uint64_t kSCNMaterialPropertyTextureProviderSourceCallbackCreateTextureProxy(__C3DEngineContext *a1, __C3DTextureSampler *a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6[0] = xmmword_282DC3BA0;
  v6[1] = *off_282DC3BB0;
  v4 = C3DTextureProxyCreate();
  C3DTextureProxySetCallbacks(v4, v6);
  C3DTextureProxySetSource(v4, a3);
  return v4;
}

uint64_t __renderToTexture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke;
  v10[3] = &unk_2782FD0B8;
  v10[4] = a4;
  v8[4] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_79;
  v9[3] = &unk_2782FD0E0;
  v9[4] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_82;
  v8[3] = &unk_2782FD108;
  if (objc_opt_respondsToSelector())
  {
    return [a1 renderToTexture:a2 computeCommandHandler:v10 blitCommandHandler:v9 completionHandler:v8 helper:a3];
  }

  else
  {
    return [a1 renderToTexture:a2 computeCommandHandler:v10 blitCommandHandler:v9 helper:a3];
  }
}

uint64_t ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [(SCNMTLRenderContext *)*(result + 32) resourceComputeEncoder];
    if (!v3[207])
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    bzero(v3, 0x678uLL);
    return (*(a2 + 16))(a2, v3[207]);
  }

  return result;
}

uint64_t ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_79(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [(SCNMTLRenderContext *)*(result + 32) resourceBlitEncoder];
    if (!*v3)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_79_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    return (*(a2 + 16))(a2, *v3);
  }

  return result;
}

uint64_t ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_82(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [(SCNMTLRenderContext *)*(result + 32) resourceComputeEncoder];
    if (!*(v3 + 1656))
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    return [*(v3 + 1664) addCompletedHandler:a2];
  }

  return result;
}

void C3DRendererContextSetGLContext(__n64 *a1, void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetGLContext_cold_1(v4);
    }
  }

  v5 = a1[20].n64_u64[0];
  if (v5 != a2)
  {
    if (v5)
    {
      C3DResourceManagerRegistryReleaseContext(a1, v5);
      v6 = a1[20].n64_u64[0];
      if (v6)
      {
        C3DEAGLWrapperContextRelease(v6);
      }
    }

    if (a2)
    {
      C3DEAGLWrapperContextRetain(a2);
    }

    a1[20].n64_u64[0] = a2;
    __InitStateVarsIfNeeded(a1);
    v7 = a1[20].n64_u64[0];
    if (v7)
    {
      C3DResourceManagerRegistryRetainContext(v7);
    }
  }
}

uint64_t C3DRendererContextGetGLContext(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetGLContext_cold_1(v2);
    }
  }

  return *(a1 + 160);
}

void _C3DParticleManagerCFFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[14];
  if (v3)
  {
    CFRelease(v3);
    a1[14] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
    a1[8] = 0;
  }

  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
    a1[6] = 0;
  }

  v9 = a1[10];
  if (v9)
  {
    CFRelease(v9);
    a1[10] = 0;
  }

  v10 = a1[11];
  if (v10)
  {
    CFRelease(v10);
    a1[11] = 0;
  }

  v11 = a1[12];
  if (v11)
  {
    CFRelease(v11);
    a1[12] = 0;
  }

  v12 = a1[13];
  if (v12)
  {
    CFRelease(v12);
    a1[13] = 0;
  }
}

CFStringRef _C3DParticleManagerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleManagerRef>");
}

CFStringRef _C3DParticleManagerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleManagerRef>");
}

uint64_t __C3DParticleManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DParticleManagerGetTypeID_typeID = result;
  return result;
}

void *C3DParticleManagerCreate(uint64_t a1)
{
  if (C3DParticleManagerGetTypeID_onceToken != -1)
  {
    C3DParticleManagerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DParticleManagerGetTypeID_typeID, 104);
  Instance[2] = a1;
  v3 = *MEMORY[0x277CBECE8];
  Instance[3] = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  Instance[14] = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  return Instance;
}

void C3DParticleManagerRegisterSystem(uint64_t a1, float32x4_t *a2)
{
  ParticleSystems = C3DNodeGetParticleSystems(a2);
  if (ParticleSystems)
  {
    v5 = ParticleSystems;
    Count = CFArrayGetCount(ParticleSystems);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        C3DParticleManagerAddSystem(a1, a2, ValueAtIndex, 0);
      }
    }
  }
}

double C3DParticleManagerAddSystem(uint64_t a1, float32x4_t *a2, const void *a3, __int128 *a4)
{
  if (C3DParticleSystemGetIsLocal(a3))
  {
    goto LABEL_8;
  }

  Count = CFArrayGetCount(*(a1 + 24));
  if (Count < 1)
  {
    goto LABEL_8;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v10);
    if (C3DParticleSystemInstanceGetSystem(ValueAtIndex) == a3)
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_8;
    }
  }

  if (!ValueAtIndex)
  {
LABEL_8:
    ValueAtIndex = C3DParticleSystemInstanceCreate(a2, a3, a1);
    CFArrayAppendValue(*(a1 + 24), ValueAtIndex);
    CFRelease(ValueAtIndex);
  }

  *&result = C3DParticleSystemInstanceAddEmitter(ValueAtIndex, a4, a2).n128_u64[0];
  return result;
}

void C3DParticleManagerUnregisterSystem(uint64_t a1, uint64_t a2)
{
  if (C3DNodeGetParticleSystems(a2))
  {

    C3DParticleManagerRemoveAllInstanceOfSystemsOnNode(a1, a2);
  }
}

void C3DParticleManagerRemoveAllInstanceOfSystemsOnNode(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v6);
      Library = C3DSceneSourceGetLibrary(ValueAtIndex);
      System = C3DParticleSystemInstanceGetSystem(ValueAtIndex);
      if (C3DParticleSystemGetIsLocal(System))
      {
        v10 = Library == a2;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 24), v6);
        --v5;
      }

      else
      {
        if (Library == a2)
        {
          C3DParticleSystemInstanceSetNode(ValueAtIndex, 0);
        }

        C3DParticleSystemInstanceRemoveEmittersWithNode(ValueAtIndex, a2);
        ++v6;
      }
    }

    while (v6 < v5);
  }
}

void C3DParticleManagerRemoveSystem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v8);
      if (C3DSceneSourceGetLibrary(ValueAtIndex) == a2 && C3DParticleSystemInstanceGetSystem(ValueAtIndex) == a3)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 24), v8);
        --v7;
      }

      else
      {
        ++v8;
      }
    }

    while (v8 < v7);
  }
}

void C3DParticleManagerRemoveAllInstanceOfSystem(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v6);
      if (C3DParticleSystemInstanceGetSystem(ValueAtIndex) == a2)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 24), v6);
        --v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v5);
  }
}

void C3DParticleManagerResetAllInstanceOfSystem(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
      if (C3DParticleSystemInstanceGetSystem(ValueAtIndex) == a2)
      {
        C3DParticleSystemInstanceReset(ValueAtIndex);
      }
    }
  }
}

__CFArray *C3DParticleManagerGetParticleSystemsForNode(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
      if (C3DSceneSourceGetLibrary(ValueAtIndex) == a2)
      {
        System = C3DParticleSystemInstanceGetSystem(ValueAtIndex);
        CFArrayAppendValue(Mutable, System);
      }
    }
  }

  return Mutable;
}

void __C3DParticleManagerRemoveActiveSystemInstance(uint64_t a1, const void *a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (CFArrayGetValueAtIndex(*(a1 + 24), v6) != a2)
    {
      if (v5 == ++v6)
      {
        return;
      }
    }

    v7 = *(a1 + 24);

    CFArrayRemoveValueAtIndex(v7, v6);
  }
}

void C3DParticleManagerUpdate(uint64_t a1, uint64_t a2, double a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count)
  {
    v7 = Count;
    MEMORY[0x28223BE20](Count);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v8 >= 0x200)
    {
      v10 = 512;
    }

    else
    {
      v10 = v8;
    }

    bzero(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v20.location = 0;
    v20.length = v7;
    CFArrayGetValues(*(a1 + 24), v20, v9);
    if (v7 < 1)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = *v9;
        C3DParticleSystemInstanceSync(*v9, a2);
        C3DParticleSystemInstanceUpdate(v12, a3);
        if (C3DSceneSourceGetStatus(v12) == 2)
        {
          System = C3DParticleSystemInstanceGetSystem(v12);
          if ((C3DParticleSystemGetLoops(System) & 1) == 0 && (C3DIsRunningInXcode() & 1) == 0)
          {
            Library = C3DSceneSourceGetLibrary(v12);
            v15 = C3DParticleSystemInstanceGetSystem(v12);
            SCNNodeRemoveDeadParticleInstance(Library, v15);
          }

          if (C3DIsRunningInXcode())
          {
            if (C3DParticleSystemGetLoops(System))
            {
              v16 = C3DSceneSourceGetLibrary(v12);
              if (v16)
              {
                v17 = v16;
                if (C3DNodeGetParticleSystems(v16))
                {
                  C3DParticleManagerRemoveAllInstanceOfSystemsOnNode(a1, v17);
                }

                C3DParticleManagerRegisterSystem(a1, v17);
                C3DParticleSystemInstanceSetNode(v12, v17);
              }
            }
          }

          else
          {
            __C3DParticleManagerRemoveActiveSystemInstance(a1, v12);
          }
        }

        else
        {
          v11 |= C3DParticleSystemGetSoftParticlesEnabled(v12[6]);
        }

        ++v9;
        --v7;
      }

      while (v7);
    }

    if (*(a1 + 32) != (v11 & 1))
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance();
      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", *(a1 + 16), 0, 1u);
      *(a1 + 32) = v11 & 1;
    }
  }
}

void C3DParticleManagerCull(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  FrameStamp = C3DSceneGetFrameStamp(*(a1 + 16));
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v12 = Count;
    v13 = 0;
    v14 = (a2 + 96 * a4);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v13);
      if (C3DParticleSystemInstanceGetParticlesCount(ValueAtIndex) && (*(a2 + 4689) != 1 || C3DParticleSystemGetBlendMode(ValueAtIndex[6]) == 5))
      {
        v24 = 0u;
        v25 = 0u;
        WorldBoundingBox = C3DParticleSystemInstanceGetWorldBoundingBox(ValueAtIndex);
        v24 = WorldBoundingBox;
        v25 = v17;
        if ((*(a2 + 4692) & 1) != 0 || (v18 = v14[4], v23[2] = v14[3], v23[3] = v18, v19 = v14[6], v23[4] = v14[5], v23[5] = v19, v20 = v14[2], v23[0] = v14[1], v23[1] = v20, scn_frustum_classify_aabb(v23, WorldBoundingBox, v17) != 1))
        {
          C3DParticleSystemInstancePushRendererElements(ValueAtIndex, a2, a3, FrameStamp, &v24, a4, a5, a6);
        }
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

uint64_t C3DParticleManagerGetSharedQuadsMeshElement(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (!v4 || C3DMeshElementGetPrimitiveCount(v4) < 2 * a2)
  {
    v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
    v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
    v7 = v6 | HIWORD(v6);
    if ((v7 + 1) > 0x100)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 256;
    }

    v9 = 2 * v8;
    v10 = 4 * v8;
    v11 = C3DMeshElementCreate();
    if ((4 * v8) > 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v10 <= 0x10000)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = v10 >= 0x101;
    if (v10 < 0x101)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    if (!v14)
    {
      v13 = 0;
    }

    v16 = ((6 * v8) << v13);
    v17 = C3DMallocWithName(v16);
    if (v15 == 1)
    {
      v23 = 0;
      v24 = v17;
      do
      {
        *v24 = v23;
        v24[1] = v23 | 1;
        v24[2] = v23 | 2;
        v24[3] = v23;
        v24[4] = v23 | 2;
        v24[5] = v23 | 3;
        v24 += 6;
        v23 += 4;
        --v8;
      }

      while (v8);
    }

    else if (v15 == 2)
    {
      v21 = 0;
      v22 = v17;
      do
      {
        *v22 = v21;
        *(v22 + 1) = v21 | 1;
        *(v22 + 2) = v21 | 2;
        *(v22 + 3) = v21;
        *(v22 + 4) = v21 | 2;
        *(v22 + 5) = v21 | 3;
        v22 += 12;
        v21 += 4;
        --v8;
      }

      while (v8);
    }

    else
    {
      v18 = 0;
      v19 = v17;
      do
      {
        v19->i32[0] = v18;
        v19->i32[1] = v18 + 1;
        v20 = vorr_s8(vdup_n_s32(v18), 0x300000002);
        v19[1].i32[0] = v20.i32[0];
        v19[1].i32[1] = v18;
        v19[2] = v20;
        v18 += 4;
        v19 += 3;
        --v8;
      }

      while (v8);
    }

    v25 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v17, v16, *MEMORY[0x277CBECE8]);
    C3DMeshElementSetPrimitives(v11, v9, v25, v15);
    CFRelease(v25);
    v26 = *(a1 + 40);
    if (v26 != v11)
    {
      if (v26)
      {
        CFRelease(v26);
        *(a1 + 40) = 0;
      }

      if (v11)
      {
        v27 = CFRetain(v11);
      }

      else
      {
        v27 = 0;
      }

      *(a1 + 40) = v27;
    }

    CFRelease(v11);
  }

  return *(a1 + 40);
}

CFTypeRef C3DParticleManagerGetSharedPyramidQuadsMeshElement(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  if (v4 && C3DMeshElementGetPrimitiveCount(v4) >= 4 * a2)
  {
    return *(a1 + 56);
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 0x100)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 256;
  }

  v9 = 4 * v8;
  v10 = 5 * v8;
  v11 = C3DMeshElementCreate();
  if ((5 * v8) >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v10 < 0x10000)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = v10 >= 0x100;
  if (v10 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12;
  }

  if (!v14)
  {
    v13 = 0;
  }

  v16 = ((12 * v8) << v13);
  v17 = C3DMallocWithName(v16);
  if (v15 == 1)
  {
    v24 = 0;
    v25 = v17;
    do
    {
      *v25 = v24;
      v25[1] = v24 + 1;
      v25[2] = v24 + 4;
      v25[3] = v24 + 1;
      v25[4] = v24 + 2;
      v25[5] = v24 + 4;
      v25[6] = v24 + 2;
      v25[7] = v24 + 3;
      v25[8] = v24 + 4;
      v25[9] = v24 + 3;
      v25[10] = v24;
      v25[11] = v24 + 4;
      v25 += 12;
      v24 += 5;
      --v8;
    }

    while (v8);
  }

  else if (v15 == 2)
  {
    v22 = 0;
    v23 = v17;
    do
    {
      *v23 = v22;
      *(v23 + 1) = v22 + 1;
      *(v23 + 2) = v22 + 4;
      *(v23 + 3) = v22 + 1;
      *(v23 + 4) = v22 + 2;
      *(v23 + 5) = v22 + 4;
      *(v23 + 6) = v22 + 2;
      *(v23 + 7) = v22 + 3;
      *(v23 + 8) = v22 + 4;
      *(v23 + 9) = v22 + 3;
      *(v23 + 10) = v22;
      *(v23 + 11) = v22 + 4;
      v23 += 24;
      v22 += 5;
      --v8;
    }

    while (v8);
  }

  else
  {
    v18 = 0;
    v19 = v17;
    do
    {
      *v19 = v18;
      *(v19 + 1) = v18 + 1;
      v20 = v18 + 4;
      *(v19 + 2) = v18 + 4;
      *(v19 + 3) = v18 + 1;
      *(v19 + 4) = v18 + 2;
      *(v19 + 5) = v18 + 4;
      *(v19 + 6) = v18 + 2;
      *(v19 + 7) = v18 + 3;
      *(v19 + 9) = v18 + 3;
      *(v19 + 10) = v18;
      v18 += 5;
      *(v19 + 8) = v20;
      *(v19 + 11) = v20;
      v19 += 48;
      --v8;
    }

    while (v8);
  }

  v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v17, v16, *MEMORY[0x277CBECE8]);
  C3DMeshElementSetPrimitives(v11, v9, v26, v15);
  CFRelease(v26);
  result = *(a1 + 56);
  if (result != v11)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    if (v11)
    {
      result = CFRetain(v11);
    }

    else
    {
      result = 0;
    }

    *(a1 + 56) = result;
  }

  return result;
}

uint64_t C3DParticleManagerGetSharedQuadMeshSource(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a1 + 80;
    if (!*(a1 + 80))
    {
      v7 = xmmword_21C2814C0;
      v8 = unk_21C2814D0;
      v9 = 0xBF800000BF800000;
      v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v7, 40);
      v4 = v3;
      v5 = 5;
LABEL_6:
      *v2 = C3DMeshSourceCreate(v3, 3, v5, 2, 1);
      CFRelease(v4);
    }
  }

  else
  {
    v2 = a1 + 64;
    if (!*(a1 + 64))
    {
      v7 = xmmword_21C2814E8;
      v8 = unk_21C2814F8;
      v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v7, 32);
      v4 = v3;
      v5 = 4;
      goto LABEL_6;
    }
  }

  return *v2;
}

uint64_t C3DParticleManagerGetSharedPyramidMeshElement(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  if (!v1)
  {
    v6 = 17039364;
    *bytes = 0x300030200020100;
    v3 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 12);
    v1 = C3DMeshElementCreate();
    C3DMeshElementInit(v1, 0, 4, v3, 1);
    CFRelease(v3);
    *(a1 + 88) = v1;
  }

  return v1;
}

uint64_t C3DParticleManagerGetSharedPyramidStereoMeshElement(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 104);
  if (!v1)
  {
    v5 = xmmword_21C281514;
    v6 = 0x609050908050807;
    v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v5, 24);
    v1 = C3DMeshElementCreate();
    C3DMeshElementInit(v1, 0, 4, v3, 1);
    CFRelease(v3);
    *(a1 + 104) = v1;
  }

  return v1;
}

uint64_t C3DParticleManagerGetSharedQuadsStereoMeshElement(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  if (!v1)
  {
    v6 = 67438340;
    *bytes = 0x706000103000302;
    v3 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 12);
    v1 = C3DMeshElementCreate();
    C3DMeshElementInit(v1, 0, 3, v3, 1);
    CFRelease(v3);
    *(a1 + 48) = v1;
  }

  return v1;
}

uint64_t C3DParticleManagerGetSharedQuadStereoMeshSource(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a1 + 96;
    if (!*(a1 + 96))
    {
      v9 = xmmword_21C281558;
      v10 = unk_21C281568;
      v11 = xmmword_21C281578;
      v7 = xmmword_21C281538;
      v8 = unk_21C281548;
      v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v7, 80);
      v4 = v3;
      v5 = 10;
LABEL_6:
      *v2 = C3DMeshSourceCreate(v3, 3, v5, 2, 1);
      CFRelease(v4);
    }
  }

  else
  {
    v2 = a1 + 72;
    if (!*(a1 + 72))
    {
      v7 = xmmword_21C281588;
      v8 = unk_21C281598;
      v9 = xmmword_21C2815A8;
      v10 = unk_21C2815B8;
      v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v7, 64);
      v4 = v3;
      v5 = 8;
      goto LABEL_6;
    }
  }

  return *v2;
}

void *C3DParticleManagerComputeTechniqueForSystem(uint64_t a1, __n128 *a2, char a3, uint64_t a4, int a5, int a6)
{
  v100[0] = a3;
  RenderContext = C3DEngineContextGetRenderContext(a4);
  RenderingMode = C3DParticleSystemGetRenderingMode(a2);
  v13 = RenderingMode;
  v14 = 0;
  if (RenderingMode <= 1)
  {
    if (!RenderingMode)
    {
      v15 = @"C3D-ParticleSystem";
      goto LABEL_12;
    }

    if (RenderingMode == 1)
    {
      v15 = @"C3D-ParticleSystem_PointSprite";
      goto LABEL_12;
    }
  }

  else
  {
    if ((RenderingMode - 2) < 2)
    {
      v15 = @"C3D-ParticleSystem_Trail";
      goto LABEL_12;
    }

    if (RenderingMode == 4)
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        C3DParticleManagerComputeTechniqueForSystem_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
      }

      v15 = &stru_282DCC058;
LABEL_12:
      BlackPassEnabled = C3DParticleSystemGetBlackPassEnabled(a2);
      LightingEnabled = C3DParticleSystemGetLightingEnabled(a2);
      if (C3DParticleSystemGetParticleColorController(a2))
      {
        v25 = 1;
      }

      else
      {
        v25 = C3DParticleSystemGetParticleOpacityController(a2) != 0;
      }

      v98 = v25;
      v27 = C3DParticleSystemGetStretchFactor(a2) != 0.0 && v13 == 0;
      v97 = v27;
      HasTextureAnimation = C3DParticleSystemHasTextureAnimation(a2);
      SoftParticlesEnabled = C3DParticleSystemGetSoftParticlesEnabled(a2);
      BlendMode = C3DParticleSystemGetBlendMode(a2);
      OrientationMode = C3DParticleSystemGetOrientationMode(a2);
      v93 = a5 == 2;
      v92 = a5 == 1;
      v91 = a6 == 2;
      if (([(SCNMTLRenderContext *)RenderContext enableARMode]& 1) != 0)
      {
        v29 = 1;
      }

      else
      {
        v29 = [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing];
      }

      v90 = v29;
      EyeCount = C3DEngineContextGetEyeCount(a4);
      v30 = vmvnq_s8(vceqzq_f32(C3DParticleSystemGetOrientationDirection(a2)));
      v30.i32[3] = v30.i32[2];
      if ((vmaxvq_u32(v30) & 0x80000000) != 0)
      {
        OrientationMode = 4;
      }

      ImageSequenceAnimationMode = C3DParticleSystemGetImageSequenceAnimationMode(a2);
      HasCubeMapTexture = C3DParticleSystemHasCubeMapTexture(a2);
      IsLocal = C3DParticleSystemGetIsLocal(a2);
      v86 = IsLocal;
      v32 = *MEMORY[0x277CBECE8];
      if (SoftParticlesEnabled)
      {
        v33 = 68;
      }

      else
      {
        v33 = 45;
      }

      if (IsLocal)
      {
        v34 = 76;
      }

      else
      {
        v34 = 71;
      }

      if (HasTextureAnimation)
      {
        v35 = ImageSequenceAnimationMode;
      }

      else
      {
        v35 = 0;
      }

      v81 = v33;
      v80 = v35;
      v36 = 65;
      if (!HasTextureAnimation)
      {
        v36 = 45;
      }

      v37 = 66;
      if (!BlackPassEnabled)
      {
        v37 = 45;
      }

      v38 = 70;
      if (!v100[0])
      {
        v38 = 45;
      }

      v39 = 75;
      if (!HasCubeMapTexture)
      {
        v39 = 45;
      }

      v40 = 83;
      if (!v97)
      {
        v40 = 45;
      }

      if (LightingEnabled)
      {
        v41 = 76;
      }

      else
      {
        v41 = 45;
      }

      v42 = 67;
      if (!v98)
      {
        v42 = 45;
      }

      v43 = 82;
      if (!v90)
      {
        v43 = 45;
      }

      v44 = 77;
      if (!v91)
      {
        v44 = 45;
      }

      v45 = 95;
      if (v92)
      {
        v45 = 89;
      }

      v46 = 86;
      if (!v93)
      {
        v46 = 45;
      }

      v47 = CFStringCreateWithFormat(v32, 0, @"%@%1d%1d%c%c%c%c%c%c%c%c%c%c%c%1dO%1d%c%c", v15, BlendMode, EyeCount, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v80, OrientationMode, v81, v34);
      v48 = CFDictionaryGetValue(*(a1 + 112), v47);
      v49 = SoftParticlesEnabled;
      v14 = v48;
      if (v48)
      {
        goto LABEL_156;
      }

      v83 = v49;
      if (RenderContext)
      {
        v50 = objc_alloc_init(MEMORY[0x277CD6D70]);
        [v50 setConstantValue:&LightingEnabled type:53 withName:@"enableLighting"];
        [v50 setConstantValue:&v98 type:53 withName:@"enableColorRamp"];
        [v50 setConstantValue:&HasCubeMapTexture type:53 withName:@"enableCubeMap"];
        [v50 setConstantValue:&v97 type:53 withName:@"enableStretch"];
        [v50 setConstantValue:&HasTextureAnimation type:53 withName:@"enableAnimation"];
        [v50 setConstantValue:v100 type:53 withName:@"enableFog"];
        [v50 setConstantValue:&v93 type:53 withName:@"enableMultipleViewport"];
        [v50 setConstantValue:&v92 type:53 withName:@"enableLayeredRendering"];
        [v50 setConstantValue:&v91 type:53 withName:@"useVertexAmplification"];
        [v50 setConstantValue:&EyeCount type:33 withName:@"eyeCount"];
        [v50 setConstantValue:&v90 type:53 withName:@"ARMode"];
        [v50 setConstantValue:&v86 type:53 withName:@"isLocal"];
        [v50 setConstantValue:&OrientationMode type:33 withName:@"orientation"];
        [v50 setConstantValue:&ImageSequenceAnimationMode type:33 withName:@"animationMode"];
        [v50 setConstantValue:&BlendMode type:33 withName:@"blendMode"];
        if ((a5 - 1) >= 2)
        {
          v51 = @"uberparticle_vert";
        }

        else
        {
          v51 = @"uberparticle_stereo_vert";
        }

        if (HasCubeMapTexture)
        {
          v52 = @"uberparticleCube_frag";
        }

        else
        {
          v52 = @"uberparticle_frag";
        }

        v53 = C3DFXMetalProgramCreateFromLibraryWithConstants(v51, v52, 0, v50, 0, 0);
      }

      else
      {
        v54 = [(__CFString *)v15 stringByAppendingString:@".vsh"];
        v55 = [(__CFString *)v15 stringByAppendingString:@".fsh"];
        v56 = C3DGetTextResourceWithNameAllowingHotReload(v54);
        v57 = C3DGetTextResourceWithNameAllowingHotReload(v55);
        if (!v56 || !v57)
        {
          v62 = scn_default_log();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            C3DParticleManagerComputeTechniqueForSystem_cold_2(v15, v62);
          }

          v14 = 0;
          goto LABEL_156;
        }

        value = v57;
        v58 = MEMORY[0x277CBF128];
        Mutable = CFArrayCreateMutable(v32, 0, MEMORY[0x277CBF128]);
        v60 = CFArrayCreateMutable(v32, 0, v58);
        CFArrayAppendValue(Mutable, @"precision highp float;\n");
        CFArrayAppendValue(v60, @"precision mediump float;\n");
        if (LightingEnabled == 1)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_LIGHTING");
        }

        if (v98)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_COLOR_RAMP");
        }

        if (HasCubeMapTexture == 1)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_CUBE_MAP");
          CFArrayAppendValue(v60, @"#define ENABLE_CUBE_MAP");
        }

        if (v97)
        {
          v61 = @"#define ENABLE_STRETCH";
        }

        else if (OrientationMode - 1 > 2)
        {
          v61 = @"#define ENABLE_BILLBOARD_SCREEN";
        }

        else
        {
          v61 = off_2782FD150[OrientationMode - 1];
        }

        CFArrayAppendValue(Mutable, v61);
        if (v100[0] == 1)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_FOG");
          CFArrayAppendValue(v60, @"#define ENABLE_FOG");
        }

        if (HasTextureAnimation)
        {
          v63 = CFStringCreateWithFormat(v32, 0, @"#define ENABLE_ANIMATION %d", ImageSequenceAnimationMode);
          CFArrayAppendValue(Mutable, v63);
          CFArrayAppendValue(v60, v63);
          CFRelease(v63);
        }

        if (v83)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_SOFT");
          CFArrayAppendValue(v60, @"#define ENABLE_SOFT");
        }

        CFArrayAppendValue(Mutable, v56);
        v64 = CFStringCreateByCombiningStrings(v32, Mutable, @"\n");
        CFRelease(Mutable);
        CFArrayAppendValue(v60, value);
        v65 = CFStringCreateByCombiningStrings(v32, v60, @"\n");
        CFRelease(v60);
        v53 = C3DFXGLSLProgramCreateWithSources(v64, v65);
        CFRelease(v64);
        CFRelease(v65);
      }

      if (BlackPassEnabled)
      {
        v66 = 2;
      }

      else
      {
        v66 = 1;
      }

      v14 = C3DFXTechniqueCreateWithCapacity(v66);
      CFDictionarySetValue(*(a1 + 112), v47, v14);
      CFRelease(v14);
      C3DFXProgramSetOpaque(v53, 0);
      C3DFXProgramSetClientProgram(v53, 0);
      memset(v85, 0, 28);
      C3DRasterizerStatesDescGetDefault(v85);
      BYTE9(v85[0]) = C3DParticleSystemGetWritesToDepthBuffer(a2);
      LODWORD(v85[0]) = 2;
      v84[0] = v85[0];
      *(v84 + 12) = *(v85 + 12);
      v67 = C3DRasterizerStatesCreate(v84);
      v68 = 0;
      if (BlackPassEnabled)
      {
        v68 = C3DFXPassCreate();
        C3DFXPassSetClearBehavior(v68, 0, 0, 0);
        C3DFXPassSetName(v68, @"BlackPass");
        C3DFXPassSetInstallViewport(v68, 0);
        C3DFXPassSetDrawInstruction(v68, 1);
        C3DFXPassSetProgram(v68, v53);
        v69 = C3DBlendStatesDefaultOverBlack();
        C3DFXPassSetBlendStates(v68, v69);
        C3DFXPassSetRasterizerStates(v68, v67);
        C3DFXTechniqueAppendPass(v14, v68);
        CFRelease(v68);
      }

      v70 = 0;
      if (BlendMode > 2)
      {
        switch(BlendMode)
        {
          case 3:
            v71 = C3DBlendStatesDefaultScreen();
            break;
          case 4:
            v71 = C3DBlendStatesDefaultOver();
            break;
          case 5:
            v71 = C3DBlendStatesDefaultReplace();
            break;
          default:
            goto LABEL_109;
        }
      }

      else if (BlendMode)
      {
        if (BlendMode == 1)
        {
          v71 = C3DBlendStatesDefaultSubtract();
        }

        else
        {
          if (BlendMode != 2)
          {
            goto LABEL_109;
          }

          v71 = C3DBlendStatesDefaultMultiplicative();
        }
      }

      else
      {
        v71 = C3DBlendStatesDefaultAdditive();
      }

      v70 = v71;
LABEL_109:
      v72 = C3DFXPassCreate();
      C3DFXPassSetClearBehavior(v72, 0, 0, 0);
      C3DFXPassSetName(v72, v47);
      C3DFXPassSetInstallViewport(v72, 0);
      C3DFXPassSetDrawInstruction(v72, 1);
      C3DFXPassSetRasterizerStates(v72, v67);
      C3DFXPassSetBlendStates(v72, v70);
      C3DFXPassSetProgram(v72, v53);
      C3DRasterizerStatesRelease(v67);
      CFRelease(v53);
      C3DFXTechniqueAppendPass(v14, v72);
      CFRelease(v72);
      if (RenderContext)
      {
        if ((HasCubeMapTexture & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      else
      {
        C3DFXTechniqueDeclareSymbol(v14, @"viewTransform", 11, 1u);
        C3DFXPassBindInputWithSymbol(v72, @"viewTransform", @"viewTransform");
        if (v68)
        {
          C3DFXPassBindInputWithSymbol(v68, @"viewTransform", @"viewTransform");
        }

        if ((HasCubeMapTexture & 1) == 0)
        {
LABEL_119:
          if (LightingEnabled == 1)
          {
            C3DFXTechniqueDeclareSymbol(v14, @"u_lightPosition0", 9, 1u);
            C3DFXPassBindInputWithSymbol(v72, @"u_lightPosition0", @"u_lightPosition0");
            if (v68)
            {
              C3DFXPassBindInputWithSymbol(v68, @"u_lightPosition0", @"u_lightPosition0");
              C3DFXTechniqueDeclareSymbol(v14, @"u_lightColor0", 13, 1u);
              C3DFXPassBindInputWithSymbol(v72, @"u_lightColor0", @"u_lightColor0");
              v73 = v68;
            }

            else
            {
              C3DFXTechniqueDeclareSymbol(v14, @"u_lightColor0", 13, 1u);
              v73 = v72;
            }

            C3DFXPassBindInputWithSymbol(v73, @"u_lightColor0", @"u_lightColor0");
          }

          if (v98)
          {
            C3DFXTechniqueDeclareSymbol(v14, @"u_colorRamp", 5, 1u);
            C3DFXPassBindInputWithSymbol(v72, @"u_colorRamp", @"u_colorRamp");
            if (v68)
            {
              C3DFXPassBindInputWithSymbol(v68, @"u_colorRamp", @"u_colorRamp");
            }
          }

          if (v97)
          {
            C3DFXTechniqueDeclareSymbol(v14, @"u_stretchFactor", 1, 1u);
            C3DFXPassBindInputWithSymbol(v72, @"u_stretchFactor", @"u_stretchFactor");
            if (v68)
            {
              C3DFXPassBindInputWithSymbol(v68, @"u_stretchFactor", @"u_stretchFactor");
            }
          }

          if (HasTextureAnimation)
          {
            C3DFXTechniqueDeclareSymbol(v14, @"u_frameSize", 10, 1u);
            C3DFXPassBindInputWithSymbol(v72, @"u_frameSize", @"u_frameSize");
            if (v68)
            {
              C3DFXPassBindInputWithSymbol(v68, @"u_frameSize", @"u_frameSize");
            }
          }

          v74 = v83;
          if (RenderContext)
          {
            v74 = 0;
          }

          if (v74 == 1)
          {
            C3DFXTechniqueDeclareSymbol(v14, @"u_softParameters", 10, 1u);
            C3DFXPassBindInputWithSymbol(v72, @"u_softParameters", @"u_softParameters");
            if (v68)
            {
              C3DFXPassBindInputWithSymbol(v68, @"u_softParameters", @"u_softParameters");
              C3DFXPassBindInputWithSemantic(v72, @"u_invProj", 16);
              C3DFXPassBindInputWithSemantic(v68, @"u_invProj", 16);
              C3DFXPassBindInputWithSemantic(v72, @"u_depthSampler0", 28);
              v75 = v68;
            }

            else
            {
              C3DFXPassBindInputWithSemantic(v72, @"u_invProj", 16);
              v75 = v72;
            }

            C3DFXPassBindInputWithSemantic(v75, @"u_depthSampler0", 28);
          }

          if (v100[0] == 1)
          {
            C3DFXTechniqueDeclareSymbol(v14, @"u_fogParameters", 9, 1u);
            C3DFXPassBindInputWithSymbol(v72, @"u_fogParameters", @"u_fogParameters");
            if (!v68)
            {
              C3DFXTechniqueDeclareSymbol(v14, @"u_fogColor", 13, 1u);
              C3DFXPassBindInputWithSymbol(v72, @"u_fogColor", @"u_fogColor");
              if (RenderContext)
              {
LABEL_149:
                C3DFXTechniqueDeclareSymbol(v14, @"u_textureSampler0", 5, 1u);
                C3DFXPassBindInputWithSymbol(v72, @"u_textureSampler0", @"u_textureSampler0");
                if (v68)
                {
                  C3DFXPassBindInputWithSymbol(v68, @"u_textureSampler0", @"u_textureSampler0");
                }

                v77 = C3DFXSamplerCreate();
                C3DFXTechniqueSetValueForSymbol(v14, @"u_textureSampler0", v77);
                if (HasTextureAnimation)
                {
                  v78 = C3DTextureSamplerTrilinearRepeatNoAnisotropy();
                }

                else
                {
                  v78 = C3DTextureSamplerBilinearMipMapClampNoAnisotropy();
                }

                C3DFXSamplerSetTextureSampler(v77, v78);
                CFRelease(v77);
                C3DFXPassSetWillExecuteCallback(v72, _willExecuteParticleSystemPass);
                C3DFloorSetReflectionCategoryBitMask(v72, _executeParticleSystemPass);
                if (v68)
                {
                  C3DFXPassSetWillExecuteCallback(v68, _willExecuteParticleSystemPass);
                  C3DFloorSetReflectionCategoryBitMask(v68, _executeParticleSystemPass);
                }

LABEL_156:
                CFRelease(v47);
                return v14;
              }

              v76 = v72;
LABEL_148:
              C3DFXPassBindInputWithSemantic(v76, @"u_projectionTransform", 10);
              goto LABEL_149;
            }

            C3DFXPassBindInputWithSymbol(v68, @"u_fogParameters", @"u_fogParameters");
            C3DFXTechniqueDeclareSymbol(v14, @"u_fogColor", 13, 1u);
            C3DFXPassBindInputWithSymbol(v72, @"u_fogColor", @"u_fogColor");
            C3DFXPassBindInputWithSymbol(v68, @"u_fogColor", @"u_fogColor");
          }

          if (RenderContext)
          {
            goto LABEL_149;
          }

          C3DFXPassBindInputWithSemantic(v72, @"u_projectionTransform", 10);
          if (!v68)
          {
            goto LABEL_149;
          }

          v76 = v68;
          goto LABEL_148;
        }

        C3DFXTechniqueDeclareSymbol(v14, @"u_viewToCubeWorld", 11, 1u);
        C3DFXPassBindInputWithSymbol(v72, @"u_viewToCubeWorld", @"u_viewToCubeWorld");
        if (v68)
        {
          C3DFXPassBindInputWithSymbol(v68, @"u_viewToCubeWorld", @"u_viewToCubeWorld");
        }
      }

      C3DFXTechniqueDeclareSymbol(v14, @"u_fresnelExponent", 1, 1u);
      C3DFXPassBindInputWithSymbol(v72, @"u_fresnelExponent", @"u_fresnelExponent");
      if (v68)
      {
        C3DFXPassBindInputWithSymbol(v68, @"u_fresnelExponent", @"u_fresnelExponent");
      }

      goto LABEL_119;
    }
  }

  return v14;
}

CFTypeRef _willExecuteParticleSystemPass(void *a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = a1[8];
  v3 = *(*(v2 + 48) + 48);
  Scene = C3DEngineContextGetScene(a1[3]);
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[4];
  if (!v7)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _willExecuteParticleSystemPass_cold_1(v8);
    }
  }

  v9 = v7[62];
  v81 = v7[61];
  v82 = v9;
  v10 = v7[64];
  v83 = v7[63];
  v84 = v10;
  if (C3DEngineContextGetRenderContext(a1[3]))
  {
    if ((C3DParticleSystemHasCubeMapTexture(v3) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v55.f32[0] = C3DParticleSystemGetFresnelExponent(v3) * 0.5;
    C3DFXTechniqueSetValueForSymbol(v5, @"u_fresnelExponent", &v55);
    goto LABEL_15;
  }

  v55 = v81;
  v56 = v82;
  v57 = v83;
  v58 = v84;
  IsLocal = C3DParticleSystemGetIsLocal(v3);
  if (v6)
  {
    v12 = IsLocal;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(v6);
    C3DMatrix4x4Mult(WorldMatrix, &v55, &v55);
  }

  C3DFXTechniqueSetValueForSymbol(v5, @"viewTransform", &v55);
  if (C3DParticleSystemHasCubeMapTexture(v3))
  {
    v55 = v81;
    v56 = v82;
    v57 = v83;
    v58 = v84;
    C3DSceneComputeViewToCubemapMatrix(Scene, &v55);
    C3DFXTechniqueSetValueForSymbol(v5, @"u_viewToCubeWorld", &v55);
    goto LABEL_14;
  }

LABEL_15:
  if (C3DParticleSystemGetLightingEnabled(v3))
  {
    LightingSystem = C3DSceneGetLightingSystem(Scene);
    v72 = 0;
    v73 = &v72;
    v74 = 0x3010000000;
    v75 = &unk_21C362C36;
    v76 = xmmword_21C2814B0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3020000000;
    v80 = xmmword_21C2814A0;
    if (C3DEngineContextIsClusteredShadingEnabled(a1[3]))
    {
      v15 = *(v2 + 8);
      if (v15)
      {
        CategoryBitMask = C3DNodeGetCategoryBitMask(v15);
      }

      else
      {
        CategoryBitMask = -1;
      }

      v26 = a1[3];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = ___willExecuteParticleSystemPass_block_invoke;
      v64[3] = &unk_2782FD130;
      v65 = v81;
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v69 = &v77;
      v70 = &v72;
      v71 = CategoryBitMask;
      C3DLightingSystemEnumerateGlobalLights(LightingSystem, v26, v64);
      C3DFXTechniqueSetValueForSymbol(v5, @"u_lightPosition0", &v78[2]);
      C3DFXTechniqueSetValueForSymbol(v5, @"u_lightColor0", v73 + 4);
    }

    else
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      C3DLightingSystemGetLightingSetDesc(LightingSystem, v2 + 56, &v55);
      v17 = v55.i64[1];
      if (v55.i64[1])
      {
        if (C3DLightGetType(v55.i64[1]) == 1)
        {
          v24 = v78;
          v18 = vdupq_n_s32(0x47C35000u);
          v25 = vmulq_f32(*(*(&v59 + 1) + 32), v18);
        }

        else
        {
          v25 = *(*(&v59 + 1) + 16);
          v24 = v78;
        }

        v24[2] = v25;
        C3DLightGetColorModulatedByIntensity(v17, v25, v18, v19, v20, v21, v22, v23);
        v27 = v73;
        v73[4] = v28;
        v27[5] = v29;
      }

      C3DFXTechniqueSetValueForSymbol(v5, @"u_lightPosition0", &v78[2]);
      C3DFXTechniqueSetValueForSymbol(v5, @"u_lightColor0", v73 + 4);
    }

    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(&v72, 8);
  }

  if (C3DParticleSystemHasFogSupport(v3))
  {
    PointOfViewScale = C3DEngineContextGetPointOfViewScale(a1[3]);
    *v31.f32 = C3DSceneComputeFogParameters(Scene, PointOfViewScale);
    v53 = v31.f32[0];
    v55 = v31;
    FogColor = C3DSceneGetFogColor(Scene);
    v55.f32[0] = -v53;
    C3DFXTechniqueSetValueForSymbol(v5, @"u_fogParameters", &v55);
    C3DFXTechniqueSetValueForSymbol(v5, @"u_fogColor", FogColor);
  }

  if (C3DParticleSystemGetSoftParticlesEnabled(v3))
  {
    Viewport = C3DEngineContextGetViewport(a1[3]);
    __asm { FMOV            V1.2S, #1.0 }

    Viewport.n128_u64[0] = vdiv_f32(_D1, *&vextq_s8(Viewport, Viewport, 8uLL));
    v39.i64[0] = 0x400000003F800000;
    v39.i64[1] = Viewport.n128_u64[0];
    v55 = v39;
    C3DFXTechniqueSetValueForSymbol(v5, @"u_softParameters", &v55);
  }

  if (C3DParticleSystemGetParticleColorController(v3) || C3DParticleSystemGetParticleOpacityController(v3))
  {
    ColorRamp = C3DParticleSystemGetColorRamp(v3);
    C3DFXTechniqueSetValueForSymbol(v5, @"u_colorRamp", ColorRamp);
  }

  RenderingMode = C3DParticleSystemGetRenderingMode(v3);
  if (C3DParticleSystemGetStretchFactor(v3) != 0.0 && !RenderingMode)
  {
    v55.i32[0] = C3DParticleSystemGetStretchFactor(v3);
    C3DFXTechniqueSetValueForSymbol(v5, @"u_stretchFactor", &v55);
  }

  if (C3DParticleSystemHasTextureAnimation(v3))
  {
    ImageSequenceRowCount = C3DParticleSystemGetImageSequenceRowCount(v3);
    ImageSequenceColumnCount = C3DParticleSystemGetImageSequenceColumnCount(v3);
    *&v44 = 1.0 / ImageSequenceColumnCount;
    *&v45 = 1.0 / ImageSequenceRowCount;
    v52 = v44;
    v54 = v45;
    v46.i64[0] = __PAIR64__(v45, v44);
    v46.f32[2] = ImageSequenceColumnCount;
    v51 = (ImageSequenceColumnCount * ImageSequenceRowCount);
    v46.f32[3] = v51;
    v55 = v46;
    if (C3DWasLinkedBeforeMajorOSYear2016())
    {
      v47.i64[0] = __PAIR64__(v52, v54);
      v47.f32[2] = ImageSequenceRowCount;
      v47.f32[3] = v51;
      v55 = v47;
    }

    C3DFXTechniqueSetValueForSymbol(v5, @"u_frameSize", &v55);
  }

  ParticleTexture = C3DParticleSystemGetParticleTexture(v3);
  if (!ParticleTexture)
  {
    ParticleTexture = C3DImageGetDefault();
  }

  ValueForSymbol = C3DFXTechniqueGetValueForSymbol(v5, @"u_textureSampler0", 0);
  return C3DFXSamplerSetImage(ValueForSymbol, ParticleTexture);
}

void sub_21BFB37A0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t _executeParticleSystemPass(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 48);
  v3 = CFGetTypeID(v2);
  if (v3 != C3DParticleSystemInstanceGetTypeID())
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _executeParticleSystemPass_cold_1(v4);
    }
  }

  return C3DParticleSystemInstanceDraw(v2, *(a1 + 24), *(a1 + 64), *a1, *(a1 + 80), *(a1 + 81));
}

void C3DParticleManagerEnumerateInstancesWithLightEmission(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex;
        v9 = ValueAtIndex[6];
        if (v9)
        {
          if (C3DParticleSystemGetLightEmissionRadiusFactor(v9) > 0.0)
          {
            (*(a2 + 16))(a2, v8);
          }
        }
      }
    }
  }
}

void ___willExecuteParticleSystemPass_block_invoke(float32x4_t *a1, unsigned int a2, float32x4_t **a3, uint64_t *a4)
{
  if (a2)
  {
    v7 = a2;
    while (1)
    {
      v8 = *a4;
      if ((a1[7].i64[0] & C3DLightGetCategoryBitMask(*a4)) != 0)
      {
        break;
      }

      ++a3;
      ++a4;
      if (!--v7)
      {
        return;
      }
    }

    v29 = a1[3];
    v31 = a1[2];
    v27 = a1[5];
    v28 = a1[4];
    WorldMatrix = C3DNodeGetWorldMatrix(*a3);
    v10 = 0;
    v11 = WorldMatrix[1];
    v12 = WorldMatrix[2];
    v13 = WorldMatrix[3];
    v33[0] = *WorldMatrix;
    v33[1] = v11;
    v33[2] = v12;
    v33[3] = v13;
    memset(v34, 0, sizeof(v34));
    v35 = 0u;
    v36 = 0u;
    do
    {
      v34[v10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(v33[v10])), v29, *&v33[v10], 1), v28, v33[v10], 2), v27, v33[v10], 3);
      ++v10;
    }

    while (v10 != 4);
    v30 = v36;
    v32 = v35;
    if (C3DLightGetType(v8) == 1)
    {
      v16 = v32;
      v20 = vmulq_f32(v16, v16);
      *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
      *v20.f32 = vrsqrte_f32(v21);
      *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
      v15 = vmul_f32(*v20.f32, *v20.f32);
      *(*(a1[6].i64[0] + 8) + 32) = vmulq_n_f32(v32, vmul_f32(*v20.f32, vrsqrts_f32(v21, v15)).f32[0]);
      v22 = *(a1[6].i64[0] + 8);
      v14 = vdupq_n_s32(0x47C35000u);
      v23 = vmulq_f32(v22[2], v14);
    }

    else
    {
      v22 = *(a1[6].i64[0] + 8);
      v23 = v30;
    }

    v22[2] = v23;
    C3DLightGetColorModulatedByIntensity(v8, v23, v14, *&v15, *v16.i64, v17, v18, v19);
    v24 = *(a1[6].i64[1] + 8);
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
  }
}

uint64_t C3DMeshSourceCreatedDeindexedCopy(const __C3DMeshSource *a1, unsigned int a2, unsigned int *a3)
{
  v18 = 0u;
  v19 = 0u;
  C3DMeshSourceGetContent(a1, &v18);
  v6 = BYTE6(v19);
  v7 = a2;
  v8 = BYTE6(v19) * a2;
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v10 = v9;
  if (a2)
  {
    v11 = a2;
    v12 = v9;
    do
    {
      v13 = *a3++;
      memcpy(v12, (v18 + v13 * v6), v6);
      v12 += v6;
      --v11;
    }

    while (v11);
  }

  v14 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v10, v8, *MEMORY[0x277CBECF0]);
  Semantic = C3DMeshSourceGetSemantic(a1);
  v16 = C3DMeshSourceCreateWithData(Semantic, v14, BYTE7(v19), BYTE8(v19), v7, v6, 0);
  CFRelease(v14);
  return v16;
}

uint64_t SCNMTLComputeCommandEncoder::setBuffers(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = result + 248 + 8 * a4;
    v7 = result + 8 * a4;
    while (1)
    {
      v8 = *(a2 + 8 * v5);
      v9 = *(a3 + 8 * v5);
      v10 = v5 + a4;
      if (*(v7 + 8 * v5) != v8)
      {
        break;
      }

      v11 = v6;
      if (*(v7 + 8 * v5 + 248) != v9)
      {
        goto LABEL_6;
      }

LABEL_7:
      ++v5;
      v6 += 8;
      if (a5 == v5)
      {
        return result;
      }
    }

    *(v7 + 8 * v5) = v8;
    v11 = (result + 248 + 8 * v10);
LABEL_6:
    *v11 = v9;
    *(result + 1704 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (a4 + v5);
    goto LABEL_7;
  }

  return result;
}

uint64_t C3DFXTechniqueCreateJittering()
{
  v0 = C3DDictionaryNamed(@"C3DFXJitteringPass.plist");
  v1 = C3DFXTechniqueCreateWithDescription(v0, 0);
  PassNamed = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_JitterCopyFirstFrame");
  C3DFXPassSetInitializeCallback(PassNamed, _initializeCopy);
  v3 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_JitterToEven");
  C3DFXPassSetWillExecuteCallback(v3, _willExecuteJittering);
  C3DFXPassSetInitializeCallback(v3, _initialize);
  v4 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_JitterToOdd");
  C3DFXPassSetWillExecuteCallback(v4, _willExecuteJittering);
  C3DFXPassSetInitializeCallback(v4, _initialize);
  v5 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_JitterResolve");
  C3DFXPassSetWillExecuteCallback(v5, _willExecuteJitteringResolve);
  C3DFXPassSetInitializeCallback(v5, _initializeResolve);
  return v1;
}

void _initializeCopy(uint64_t *a1, int a2)
{
  if (a2)
  {
    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-Copy");
  }

  else
  {
    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"Copy_vert", @"Copy_frag");
  }

  v4 = BuiltInProgramWithName;
  C3DFXPassSetProgram(*a1, BuiltInProgramWithName);
  C3DFXProgramSetClientProgram(v4, *(*a1 + 80));
  if (v4)
  {

    CFRelease(v4);
  }
}

float _willExecuteJittering(uint64_t a1)
{
  JitteringStep = C3DEngineContextGetJitteringStep(*(a1 + 24));
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-jitter-factor", &JitteringStep);
  return result;
}

void _initialize(uint64_t *a1, int a2)
{
  if (a2)
  {
    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-IncrementalAverage");
  }

  else
  {
    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"IncrementalAverage_vert", @"IncrementalAverage_frag");
  }

  v4 = BuiltInProgramWithName;
  C3DFXPassSetProgram(*a1, BuiltInProgramWithName);
  C3DFXProgramSetClientProgram(v4, *(*a1 + 80));
  if (v4)
  {

    CFRelease(v4);
  }
}

void _initializeResolve(uint64_t *a1, int a2)
{
  if (a2)
  {
    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-Copy");
  }

  else
  {
    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"Copy_vert", @"Copy_frag");
  }

  v4 = BuiltInProgramWithName;
  C3DFXPassSetProgram(*a1, BuiltInProgramWithName);
  C3DFXProgramSetClientProgram(v4, *(*a1 + 80));
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t C3DBufferObjectGetTypeID()
{
  if (C3DBufferObjectGetTypeID_onceToken != -1)
  {
    C3DBufferObjectGetTypeID_cold_1();
  }

  return C3DBufferObjectGetTypeID_typeID;
}

CFStringRef _C3DBufferObjectCFCopyDebugDescription(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  ID = C3DVRAMResourceGetID(a1);
  v4 = a1[14];
  v5 = a1[16];
  v6 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<C3DBufferObject vbo:%ld addr:%p lockCount:%d target:%d retainCount:%d>", ID, a1, v4, v5, v6);
}

uint64_t __C3DBufferObjectGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DBufferObjectGetTypeID_typeID = result;
  return result;
}

uint64_t C3DBufferObjectCreate(unsigned int a1, int a2, int a3, uint64_t a4)
{
  if (C3DBufferObjectGetTypeID_onceToken != -1)
  {
    C3DBufferObjectGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DBufferObjectGetTypeID_typeID, 64);
  *(Instance + 68) = a3;
  *(Instance + 40) = a4;
  C3DVRAMResourceSetID(Instance, a1);
  *(Instance + 64) = a2;
  return Instance;
}

uint64_t C3DBufferObjectGetBufferID(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextDeleteBufferObject_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DVRAMResourceGetID(a1);
}

uint64_t C3DBufferObjectGetTarget(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextDeleteBufferObject_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

uint64_t C3DBufferObjectGetSize(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextDeleteBufferObject_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 68);
}

uint64_t (*C3DConvertGetConverter(int a1, int a2))(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a1 <= 23)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        if (a2 == 40)
        {
          v3 = C3DConvert_short2n_to_float2;
        }

        else
        {
          v3 = 0;
        }

        v4 = a2 == 36;
        v5 = C3DConvert_ushort2n_to_float2;
      }

      else
      {
        if (a1 != 9)
        {
          return 0;
        }

        if (a2 == 24)
        {
          v3 = C3DConvert_unorm10a2_to_float3;
        }

        else
        {
          v3 = 0;
        }

        v4 = a2 == 23;
        v5 = C3DConvert_snorm10a2_to_float3;
      }

      goto LABEL_35;
    }

    if (a1 == 10)
    {
      if (a2 == 28)
      {
        v3 = C3DConvert_char4n_to_float4;
      }

      else
      {
        v3 = 0;
      }

      v4 = a2 == 27;
      v5 = C3DConvert_uchar4n_to_float4;
      goto LABEL_35;
    }

    if (a1 != 23)
    {
      return 0;
    }

    v2 = C3DConvert_float3_to_snorm10a2;
LABEL_39:
    if (a2 == 9)
    {
      return v2;
    }

    return 0;
  }

  if (a1 <= 27)
  {
    if (a1 != 24)
    {
      if (a1 != 27)
      {
        return 0;
      }

      if (a2 == 10)
      {
        v3 = C3DConvert_float4_to_uchar4n;
      }

      else
      {
        v3 = 0;
      }

      v4 = a2 == 9;
      v5 = C3DConvert_float3_to_uchar4n;
      goto LABEL_35;
    }

    v2 = C3DConvert_float3_to_unorm10a2;
    goto LABEL_39;
  }

  if (a1 != 28)
  {
    if (a1 == 36)
    {
      v2 = C3DConvert_float2_to_ushort2n;
LABEL_42:
      if (a2 != 8)
      {
        return 0;
      }

      return v2;
    }

    if (a1 == 40)
    {
      v2 = C3DConvert_float2_to_short2n;
      goto LABEL_42;
    }

    return 0;
  }

  if (a2 == 10)
  {
    v3 = C3DConvert_float4_to_char4n;
  }

  else
  {
    v3 = 0;
  }

  v4 = a2 == 9;
  v5 = C3DConvert_float3_to_char4n;
LABEL_35:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t C3DConvert_float3_to_snorm10a2(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm
    {
      FMOV            V1.4S, #-1.0
      FMOV            V2.4S, #1.0
    }

    do
    {
      v14 = a3 + v5;
      v15.i64[0] = *v14;
      v15.i32[2] = *(v14 + 8);
      v15.i32[3] = 1.0;
      v16 = vandq_s8(vcvtq_s32_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v15, _Q1), _Q2), xmmword_21C2815D0)), xmmword_21C2815E0);
      LODWORD(v14) = v16.i32[0] | (v16.i32[1] << 10);
      *v16.i8 = vshl_u32(*&vextq_s8(v16, v16, 8uLL), 0x1E00000014);
      *(result + v6) = v14 | v16.i32[0] | v16.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float3_to_uchar4n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x437F0000u);
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v10 = a3 + v5;
      v11.i64[0] = *v10;
      v11.i64[1] = *(v10 + 8);
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v12, v8, v11)), v9);
      LODWORD(v10) = v13.i32[0] | (v13.i32[1] << 8);
      *v13.i8 = vshl_u32(*&vextq_s8(v13, v13, 8uLL), 0x1800000010);
      *(result + v6) = v10 | v13.i32[0] | v13.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float4_to_uchar4n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x437F0000u);
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v10, v8, *(a3 + v5))), v9);
      v12 = v11.i32[0] | (v11.i32[1] << 8);
      *v11.i8 = vshl_u32(*&vextq_s8(v11, v11, 8uLL), 0x1800000010);
      *(result + v6) = v12 | v11.i32[0] | v11.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float3_to_char4n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V0.4S, #-1.0 }

    v13 = vdupq_n_s32(0x42FF0000u);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      v15 = a3 + v5;
      v16.i64[0] = *v15;
      v16.i64[1] = *(v15 + 8);
      v17 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q0, vcgezq_f32(v16)), v13, v16)), v14);
      LODWORD(v15) = v17.i32[0] | (v17.i32[1] << 8);
      *v17.i8 = vshl_u32(*&vextq_s8(v17, v17, 8uLL), 0x1800000010);
      *(result + v6) = v15 | v17.i32[0] | v17.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float4_to_char4n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V0.4S, #-1.0 }

    v13 = vdupq_n_s32(0x42FF0000u);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      v15 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q0, vcgezq_f32(*(a3 + v5))), v13, *(a3 + v5))), v14);
      v16 = v15.i32[0] | (v15.i32[1] << 8);
      *v15.i8 = vshl_u32(*&vextq_s8(v15, v15, 8uLL), 0x1800000010);
      *(result + v6) = v16 | v15.i32[0] | v15.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float3_to_unorm10a2(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    do
    {
      v8 = a3 + v5;
      v9.i64[0] = *v8;
      v9.i32[2] = *(v8 + 8);
      v9.i32[3] = 1.0;
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vcvtq_s32_f32(vmlaq_f32(v10, xmmword_21C2815F0, v9));
      v10.i32[0] = vmovn_s32(v11).u32[0];
      *v11.i8 = vshl_u32(vand_s8(*&vextq_s8(v11, v11, 8uLL), 0xFFFF0000FFFFLL), 0x1E00000014);
      *(result + v6) = v10.u16[0] | (v10.u16[1] << 10) | v11.i32[0] | v11.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float2_to_ushort2n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v9 = (result + v6);
      v10 = vcvt_s32_f32(vmul_f32(*(a3 + v5), v8));
      *v9 = v10.i16[0];
      v9[1] = v10.i16[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float2_to_short2n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v9 = (result + v6);
      v10 = vcvt_s32_f32(vmul_f32(*(a3 + v5), v8));
      *v9 = v10.i16[0];
      v9[1] = v10.i16[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_ushort2n_to_float2(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x4B400000u);
    v9 = vdup_n_s32(0xCB400000);
    v10 = vdup_n_s32(0x38000100u);
    do
    {
      v11 = (a3 + v5);
      v12.i32[0] = *v11;
      v12.i32[1] = v11[1];
      *(result + v6) = vmul_f32(vadd_f32(vadd_s32(v12, v8), v9), v10);
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_short2n_to_float2(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x4B400000u);
    v9 = vdup_n_s32(0xCB400000);
    v10 = vdup_n_s32(0x38000100u);
    do
    {
      v11 = (a3 + v5);
      v12.i32[0] = *v11;
      v12.i32[1] = v11[1];
      *(result + v6) = vmul_f32(vadd_f32(vadd_s32(v12, v8), v9), v10);
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_snorm10a2_to_float3(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x3B004020u);
    do
    {
      v9 = (a3 + v5);
      v10 = vld1q_dup_f32(v9);
      v11 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_21C281600), xmmword_21C2815E0)), v8);
      v12 = result + v6;
      *v12 = v11.i64[0];
      *(v12 + 8) = v11.i32[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_unorm10a2_to_float3(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x3A802008u);
    do
    {
      v9 = (a3 + v5);
      v10 = vld1q_dup_f32(v9);
      v11 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_21C281600), xmmword_21C2815E0)), v8);
      v12 = result + v6;
      *v12 = v11.i64[0];
      *(v12 + 8) = v11.i32[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

void C3DConvert_uchar4n_to_float4()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    C3DConvert_uchar4n_to_float4_cold_1();
  }
}

void C3DConvert_char4n_to_float4()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    C3DConvert_uchar4n_to_float4_cold_1();
  }
}

uint64_t C3DConvertIsConvertible(unsigned int a1, unsigned int a2)
{
  if (C3DBaseTypeIsFloatingValue(a1))
  {
    IsFloatingValue = C3DBaseTypeIsFloatingValue(a2);
  }

  else
  {
    IsFloatingValue = 0;
  }

  return (C3DConvertGetConverter(a1, a2) != 0) | IsFloatingValue & 1u;
}

void C3DConvertBatch(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = a2 >> 16;
  v9 = HIDWORD(a2);
  v10 = a4 >> 16;
  if (HIDWORD(a2) != HIDWORD(a4))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DConvertBatch_cold_1(v11);
    }
  }

  Converter = C3DConvertGetConverter(v8, v10);
  if (Converter)
  {
    Converter(a1, v6, a3, v4, v9);
  }

  else if (C3DBaseTypeIsFloatingValue(v8) && C3DBaseTypeIsFloatingValue(v10) && v9)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      *v18.i64 = C3DConvertFloatingTypeToFloat4(v10, (a3 + v16), v13, v14, v15);
      C3DConvertFloatingTypeFromFloat4(v8, a1 + v17, v18);
      v17 += v6;
      v16 += v4;
      --v9;
    }

    while (v9);
  }
}