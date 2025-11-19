void C3DAnimationStackInit(_BYTE *a1)
{
  if (*a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationStackInit_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *a1 = 1;
}

void C3DAnimationStackDiscardModelValueItemForAnimationClusterNode(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a2 + 16) + 168) + 20);
  if (v4)
  {
    v9 = 0;
    v10 = *(a2 + 224);
    v11 = 4 * v4;
    do
    {
      v12 = *(v10 + v9);
      if (v12 != -1)
      {
        ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 56), v12);
        v14 = *ValuePtrAtIndex;
        if (*ValuePtrAtIndex)
        {
          goto LABEL_8;
        }

        v15 = scn_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          _C3DAnimationManagerApplyStack_cold_2(v17, v18, v15);
        }

        v14 = *ValuePtrAtIndex;
        if (*ValuePtrAtIndex)
        {
LABEL_8:
          v16 = *(v14 + 16);
          if (a4)
          {
            C3DModelValueStorageReleaseModelValueAndRestorePresentationValueIfNeeded(a3, v14);
          }

          else
          {
            C3DModelValueStorageReleaseModelValue(a3, v14);
          }

          if (v16 == 1)
          {
            *ValuePtrAtIndex = 0;
          }
        }

        v10 = *(a2 + 224);
        *(v10 + v9) = -1;
      }

      v9 += 4;
    }

    while (v11 != v9);
  }
}

void C3DAnimationStackCleanup(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *a1 = 0;
    for (i = *(a1 + 8); i; i = i[22])
    {
      if (*(a1 + 48) == 1)
      {
        v5 = i[2];
        if (v5)
        {
          v6 = (*(v5 + 84) & 0x20) == 0;
        }

        else
        {
          v6 = 1;
        }

        C3DAnimationStackDiscardModelValueItemForAnimationClusterNode(a1, i, a2, v6);
      }

      i[19] = -1;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 56) = 0;
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 8) = 0;
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 24) = 0;
    }
  }
}

void C3DAnimationStackSetTarget(uint64_t a1, CFTypeRef cf)
{
  if (a1 || (v4 = scn_default_log(), !os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    if (!cf)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  C3DAnimationStackSetTarget_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  if (cf)
  {
LABEL_4:
    cf = C3DModelTargetCreateCopy(cf);
  }

LABEL_5:
  v12 = *(a1 + 24);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 24) = v13;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t C3DAnimationStackGetTarget(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationStackSetTarget_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

void C3DAnimationStackAppendAnimationNode(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  *&v75[5] = *MEMORY[0x277D85DE8];
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationStackSetTarget_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if ((*a1 & 1) == 0)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationStackAppendAnimationNode_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  if (*(a1 + 8))
  {
    if (cf)
    {
      v30 = CFRetain(cf);
    }

    else
    {
      v30 = 0;
    }

    v32 = *(a1 + 16);
    *(v32 + 176) = v30;
    *(cf + 21) = v32;
  }

  else
  {
    if (cf)
    {
      v31 = CFRetain(cf);
    }

    else
    {
      v31 = 0;
    }

    *(a1 + 8) = v31;
  }

  *(a1 + 16) = cf;
  C3DAnimationStackSetConstant(a1, 0, a3);
  if (*(a1 + 128) == 1)
  {
    v33 = *(*(cf + 3) + 34) - 3;
    if (v33 <= 5)
    {
      *(cf + 120) = 0x70401020202uLL >> (8 * (v33 & 0x1F));
    }
  }

  if (*(a1 + 48) == 1)
  {
    v34 = CFGetTypeID(cf);
    if (v34 != C3DAnimationClusterNodeGetTypeID())
    {
      v35 = scn_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        C3DAnimationStackAppendAnimationNode_cold_4(v35, v36, v37, v38, v39, v40, v41, v42);
      }
    }

    ModelValueStorage = C3DAnimationManagerGetModelValueStorage(a3);
    if (!ModelValueStorage)
    {
      v43 = scn_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        C3DAnimationStackAppendAnimationNode_cold_5(v43, v44, v45, v46, v47, v48, v49, v50);
      }
    }

    v51 = *(cf + 2);
    v52 = *(*(v51 + 168) + 20);
    if (!*(a1 + 56))
    {
      *(a1 + 56) = C3DArrayCreate(24, *(*(v51 + 168) + 20));
    }

    *(cf + 28) = malloc_type_malloc(4 * v52, 0x100004052888210uLL);
    Count = C3DArrayGetCount(*(a1 + 56));
    Owner = C3DAnimationNodeGetOwner(cf);
    if (v52)
    {
      v54 = 0;
      v69 = v51;
      v70 = cf;
      v71 = v52;
      do
      {
        v55 = C3DCFTypeCopyModelInfoAtSplittedPath(Owner, *(*(*(v51 + 168) + 72) + 8 * v54), 0, 0);
        if (!C3DModelTargetGetTargetAddress(v55))
        {
          *(*(cf + 28) + 4 * v54) = -1;
          if (!v55)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        v56 = C3DModelValueStorageAddAndRetainModelValue(ModelValueStorage, v55);
        if (Count < 1)
        {
          goto LABEL_48;
        }

        v57 = 0;
        v58 = -1;
        v59 = -1;
        do
        {
          ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 56), v57);
          if (*ValuePtrAtIndex)
          {
            if (v56 == *ValuePtrAtIndex)
            {
              v61 = ValuePtrAtIndex;
              v62 = *(ValuePtrAtIndex + 8);
              if (v62 == C3DModelTargetGetTypeSemantic(v55))
              {
                v63 = *(v61 + 9);
                if (v63 == C3DModelTargetGetComponentIndex(v55))
                {
                  v59 = v57;
                  v57 = Count;
                }
              }
            }
          }

          else
          {
            v58 = v57;
          }

          ++v57;
        }

        while (v57 < Count);
        if (v59 != -1)
        {
          cf = v70;
          *(v70[28] + 4 * v54) = v59;
          v51 = v69;
          goto LABEL_50;
        }

        v51 = v69;
        cf = v70;
        if (v58 == -1)
        {
LABEL_48:
          C3DArrayAppendValue(*(a1 + 56), 0);
          v58 = Count++;
        }

        *(*(cf + 28) + 4 * v54) = v58;
        v64 = C3DArrayGetValuePtrAtIndex(*(a1 + 56), v58);
        *v64 = v56;
        *(v64 + 8) = C3DModelTargetGetTypeSemantic(v55);
        *(v64 + 9) = C3DModelTargetGetComponentIndex(v55);
        BaseType = C3DModelTargetGetBaseType(v55);
        *(v64 + 16) = C3DKeyFrameInterpolatorForType(BaseType, *(v64 + 8), 0, 0, 1);
LABEL_50:
        v66 = *(*(*(v51 + 168) + 40) + v54);
        v67 = C3DSizeOfBaseType(v55[16]) == v66;
        v52 = v71;
        if (!v67)
        {
          v68 = scn_default_log();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            C3DAnimationStackAppendAnimationNode_cold_6(buf, v75, v68);
          }
        }

LABEL_53:
        CFRelease(v55);
LABEL_54:
        ++v54;
      }

      while (v54 != v52);
    }
  }
}

void C3DAnimationStackSetConstant(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DStackCFFinalize_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
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
    _C3DAnimationManagerAddAnimationNode_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (*(a1 + 241) != a2)
  {
    if (a2)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    _C3DAnimationManagerUpdateConstantCount(a3, v22);
    *(a1 + 241) = a2;
  }
}

void C3DAnimationStackRemoveAnimationNode(uint64_t a1, void *cf)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationStackSetTarget_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = cf + 21;
  v21 = cf[21];
  cf[19] = -1;
  v22 = cf[22];
  if (v21)
  {
    *(v21 + 176) = v22;
  }

  if (v22)
  {
    *(v22 + 168) = v21;
  }

  if (*(a1 + 8) == cf)
  {
    *(a1 + 8) = v22;
  }

  if (*(a1 + 16) == cf)
  {
    *(a1 + 16) = *v20;
  }

  *v20 = 0;
  cf[22] = 0;
  CFRelease(cf);
}

BOOL C3DAnimationStackIsEmpty(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 8) == 0;
}

void C3DRendererContextSetPlatformSpecificImplementations_ES2(uint64_t a1)
{
  v1 = 0;
  v12 = *MEMORY[0x277D85DE8];
  *(a1 + 776) = C3DES2BindVertexArray;
  *(a1 + 784) = C3DES2GenVertexArrays;
  *(a1 + 792) = C3DES2DeleteVertexArrays;
  *(a1 + 808) = C3DES2MapBufferRange;
  *(a1 + 816) = C3DES2FlushMappedBufferRange;
  *(a1 + 824) = C3DES2UnmapBufferRange;
  *(a1 + 832) = C3DES2RenderbufferStorageMultisample;
  *(a1 + 800) = C3DES2BlitFramebuffer;
  *(a1 + 768) = C3DES2SlotToAttachmentID;
  *a1 = xmmword_21C2802F0;
  *(a1 + 16) = 0xFFFF0000800BLL;
  *(a1 + 24) = 0xFFFF;
  v2 = a1 + 580;
  v3 = (a1 + 36);
  v4 = vdup_n_s32(0x1908u);
  v5 = vdup_n_s32(0x1907u);
  v6 = vdup_n_s32(0x1902u);
  v7 = vdup_n_s32(0x84F9u);
  do
  {
    if (v1 > 0x12u)
    {
      if (v1 > 0x26u)
      {
        switch(v1)
        {
          case '\'':
LABEL_19:
            v3->i32[0] = 36193;
            v3[-1] = v4;
            *(v2 + 4 * v1) = 36193;
            goto LABEL_28;
          case ')':
            v3->i32[0] = 5125;
            v3[-1] = v6;
            v8 = 33190;
            goto LABEL_27;
          case ',':
            v3->i32[0] = 34042;
            v3[-1] = v7;
            *(v2 + 4 * v1) = 35056;
            goto LABEL_28;
        }
      }

      else
      {
        switch(v1)
        {
          case 0x13u:
            v3->i32[0] = 5123;
            v3[-1] = 0x822700001907;
            v8 = 33319;
            goto LABEL_27;
          case 0x17u:
            v3->i32[0] = 36193;
            v3[-1] = 0x822700001907;
            v8 = 33327;
            goto LABEL_27;
          case 0x24u:
            goto LABEL_19;
        }
      }
    }

    else
    {
      if (v1 <= 2u)
      {
        if (v1 - 1 < 2)
        {
          v3->i32[0] = 5121;
          v3[-1] = v4;
          *(v2 + 4 * v1) = 32856;
          goto LABEL_28;
        }

        if (!v1)
        {
          v3->i32[0] = 0xFFFF;
          v3[-1] = 0xFFFF0000FFFFLL;
          *(v2 + 4 * v1) = 0xFFFF;
          goto LABEL_28;
        }

        goto LABEL_30;
      }

      switch(v1)
      {
        case 3u:
          v3->i32[0] = 5121;
          v3[-1] = v5;
          v8 = 33321;
          goto LABEL_27;
        case 0xBu:
          v3->i32[0] = 36193;
          v3[-1] = 0x190300001907;
          v8 = 33325;
          goto LABEL_27;
        case 0xEu:
          v3->i32[0] = 5126;
          v3[-1] = 0x190300001907;
          v8 = 33326;
LABEL_27:
          *(v2 + 4 * v1) = v8;
          goto LABEL_28;
      }
    }

LABEL_30:
    v3->i32[0] = 0;
    v3[-1] = 0;
    *(v2 + 4 * v1) = 0;
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v1;
      _os_log_impl(&dword_21BEF7000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Unknown render buffer format %hhu", buf, 8u);
    }

LABEL_28:
    ++v1;
    v3 = (v3 + 12);
  }

  while (v1 != 46);
}

uint64_t C3DES2SlotToAttachmentID(int a1)
{
  switch(a1)
  {
    case 0:
      return 36064;
    case 5:
      return 36128;
    case 4:
      return 36096;
  }

  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    C3DES2SlotToAttachmentID_cold_1(v2);
  }

  return 0xFFFFLL;
}

void SCNCPlaySound::SCNCPlaySound(SCNCPlaySound *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC3350;
  *(v3 + 24) = a2->var3;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
  *(v3 + 144) = 0;
}

void SCNCPlaySound::~SCNCPlaySound(SCNCPlaySound *this)
{
  SCNCPlaySound::~SCNCPlaySound(this);

  JUMPOUT(0x21CF07610);
}

{
  this->var0 = &unk_282DC3350;

  SCNCAction::~SCNCAction(this);
}

void SCNCPlaySound::cpp_updateWithTargetForTime(SCNCPlaySound *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_updateWithTargetForTime(this, a2, a3);
  if (!this->var19 && this->var21)
  {
    this->var19 = 1;
    [(SCNNode *)a2 addAudioPlayer:[SCNAudioPlayer audioPlayerWithSource:?]];
  }

  v7.n128_f32[0] = SCNCAction::cpp_ratioForTime(this, a3, v6);
  if ((COERCE_UNSIGNED_INT(v7.n128_f32[0] + -1.0) & 0x60000000) == 0 || !this->var21)
  {
    v7.n128_f64[0] = a3;

    SCNCAction::didFinishWithTargetAtTime(this, a2, v7);
  }
}

SCNCAction *SCNCPlaySound::cpp_wasRemovedFromTargetAtTime(SCNCPlaySound *this, SCNNode *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  result = SCNCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  if (__PAIR64__(this->var20, this->var19) == 0x100000001)
  {
    if (this->var21)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(SCNNode *)a2 audioPlayers];
      result = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v12;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            if ([v10 audioSource] == this->var21)
            {
              return [(SCNNode *)a2 removeAudioPlayer:v10];
            }

            v9 = (v9 + 1);
          }

          while (v7 != v9);
          result = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          v7 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

SCNCAction *SCNCPlaySound::cpp_willStartWithTargetAtTime(SCNCPlaySound *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var19 = 0;
  return result;
}

uint64_t SCNCPlaySound::cpp_didFinishWithTargetAtTime(SCNCPlaySound *this, SCNNode *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  result = SCNCAction::cpp_didFinishWithTargetAtTime(this, a2, a3);
  if (__PAIR64__(this->var20, this->var19) == 0x100000001)
  {
    if (this->var21)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(SCNNode *)a2 audioPlayers];
      result = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v12;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            if ([v10 audioSource] == this->var21)
            {
              return [(SCNNode *)a2 removeAudioPlayer:v10];
            }

            ++v9;
          }

          while (v7 != v9);
          result = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          v7 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

double scn_matrix_compute_normal(double _D0, __n128 _Q1, __n128 a3)
{
  _S7 = a3.n128_u32[2];
  _S3 = _Q1.n128_u32[2];
  __asm
  {
    FMLA            S5, S7, V1.S[1]
    FMLA            S17, S7, V0.S[1]
    FMLA            S16, S3, V0.S[1]
  }

  v12 = ((*&_D0 * _S5) - (_Q1.n128_f32[0] * _S17)) + (a3.n128_f32[0] * _S16);
  if (v12 == 0.0)
  {
    v13 = *MEMORY[0x277D860B8];
  }

  else
  {
    v14 = 1.0 / v12;
    *&v13 = _S5 * v14;
    *(&v13 + 1) = -(((a3.n128_f32[0] * -_Q1.n128_f32[2]) + (_Q1.n128_f32[0] * a3.n128_f32[2])) * v14);
  }

  return *&v13;
}

double scn_matrix_fast_invert(int32x4_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  v4 = vzip1q_s32(a1, a3);
  v5 = vzip2q_s32(a1, a3);
  v6 = vzip1q_s32(a2, a4);
  v7 = vzip2q_s32(a2, a4);
  v8 = vzip1q_s32(v4, v6);
  v9 = vzip2q_s32(v4, v6);
  v10 = vzip1q_s32(v5, v7);
  v11 = vzip2q_s32(v5, v7);
  v12 = vextq_s8(v9, v9, 8uLL);
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = vrev64q_s32(vmulq_f32(v10, v13));
  v15 = vrev64q_s32(vmulq_f32(v10, v12));
  v16 = vrev64q_s32(vmulq_f32(v9, v13));
  v17 = vextq_s8(v10, v10, 8uLL);
  v18 = vmlsq_f32(vmlaq_f32(vmlsq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v14, vnegq_f32(v12)), vextq_s8(v14, v14, 8uLL), v12), v15, v13), vextq_s8(v15, v15, 8uLL), v13), v16, v17), vextq_s8(v16, v16, 8uLL), v17);
  v19 = vmulq_f32(v8, v18);
  *v19.i8 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v12.i32[0] = vadd_f32(*v19.i8, vdup_lane_s32(*v19.i8, 1)).u32[0];
  *v13.f32 = vrecpe_f32(v12.u32[0]);
  *v13.f32 = vmul_f32(*v13.f32, vrecps_f32(v12.u32[0], *v13.f32));
  *v12.f32 = vmul_f32(*v13.f32, vrecps_f32(v12.u32[0], *v13.f32));
  *&result = vmulq_n_f32(v18, vadd_f32(*v12.f32, *v12.f32).f32[0] - (vmul_f32(*v12.f32, *v12.f32).f32[0] * vaddv_f32(*v19.i8))).u64[0];
  return result;
}

float32x4_t scn_matrix_multiply_batch(simd_float4x4 *a1, const simd_float4x4 *a2, const simd_float4x4 *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = &a3->columns[2];
    v5 = &a2->columns[2];
    v6 = &a1->columns[2];
    v7 = a4;
    do
    {
      v8 = v5[-2];
      v9 = v5[-1];
      v11 = *v5;
      result = v5[1];
      v5 += 4;
      v12 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4[-2].f32[0]), v9, v4[-2].f32[1]), v11, v4[-2].f32[2]), result, v4[-2].f32[3]);
      v13 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4[-1].f32[0]), v9, v4[-1].f32[1]), v11, v4[-1].f32[2]), result, v4[-1].f32[3]);
      v14 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4->f32[0]), v9, v4->f32[1]), v11, v4->f32[2]), result, v4->f32[3]);
      v15 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4[1].f32[0]), v9, v4[1].f32[1]), v11, v4[1].f32[2]), result, v4[1].f32[3]);
      v6[-2] = v12;
      v6[-1] = v13;
      *v6 = v14;
      v6[1] = v15;
      v6 += 4;
      v4 += 4;
      --v7;
    }

    while (v7);
  }

  return result;
}

float32x4_t *scn_matrix_multiply_batch(float32x4_t *result, simd_float4x4 a2, const simd_float4x4 *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = &a3->columns[2];
    v6 = result + 2;
    do
    {
      v6[-2] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a2.columns[0], v5[-2].f32[0]), a2.columns[1], v5[-2].f32[1]), a2.columns[2], v5[-2].f32[2]), a2.columns[3], v5[-2].f32[3]);
      v6[-1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a2.columns[0], v5[-1].f32[0]), a2.columns[1], v5[-1].f32[1]), a2.columns[2], v5[-1].f32[2]), a2.columns[3], v5[-1].f32[3]);
      *v6 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a2.columns[0], v5->f32[0]), a2.columns[1], v5->f32[1]), a2.columns[2], v5->f32[2]), a2.columns[3], v5->f32[3]);
      v6[1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a2.columns[0], v5[1].f32[0]), a2.columns[1], v5[1].f32[1]), a2.columns[2], v5[1].f32[2]), a2.columns[3], v5[1].f32[3]);
      v5 += 4;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

int32x4_t scn_matrix_transpose_batch(uint64_t a1, int32x4_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (a1 + 32);
    v5 = a2 + 2;
    do
    {
      v6 = v5[-2];
      v7 = v5[-1];
      v8 = *v5;
      v9 = v5[1];
      v5 += 4;
      v10 = v4 - 8;
      v11 = vzip1q_s32(v6, v8);
      v14.val[0] = vzip2q_s32(v6, v8).u64[0];
      v12 = vzip1q_s32(v7, v9);
      v14.val[1] = vzip2q_s32(v7, v9).u64[0];
      result = vzip2q_s32(v11, v12);
      vst2_f32(v10, v11);
      *(v4 - 1) = result;
      vst2_f32(v4, v14);
      v4 += 12;
      --v3;
    }

    while (v3);
  }

  return result;
}

float32_t scn_triangle_point_distance_squared(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a4, a1);
  v6 = vsubq_f32(a3, a2);
  v7 = vsubq_f32(a4, a2);
  v8 = vsubq_f32(a1, a3);
  v9 = vsubq_f32(a4, a3);
  v10 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v11 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v12 = vnegq_f32(v4);
  v13 = vmlaq_f32(vmulq_f32(v11, v12), v8, v10);
  v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(v15, v12), v14, v10);
  v17 = vmlaq_f32(vmulq_f32(v15, vnegq_f32(v6)), v14, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL));
  v18 = vmlaq_f32(vmulq_f32(v15, vnegq_f32(v8)), v14, v11);
  v19 = vmulq_f32(v5, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v20 = vmulq_f32(v7, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
  v21 = vmulq_f32(v9, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
  v22 = vmulq_f32(v5, v14);
  v23 = vzip1q_s32(v19, v21);
  v24 = vzip2q_s32(v19, v21);
  v25 = vzip1q_s32(v20, v22);
  v26 = vaddq_f32(vzip1q_s32(v24, vzip2q_s32(v20, v22)), vaddq_f32(vzip1q_s32(v23, v25), vzip2q_s32(v23, v25)));
  v27 = vmulq_f32(v4, v4);
  v28 = vmulq_f32(v6, v6);
  v29 = vmulq_f32(v8, v8);
  v30 = vmulq_f32(v13, v13);
  v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
  v32 = vzip1q_s32(v27, v29);
  v33 = vzip2q_s32(v27, v29);
  v34 = vzip1q_s32(v28, v31);
  v35 = vaddq_f32(vzip1q_s32(v33, vzip2q_s32(v28, v31)), vaddq_f32(vzip1q_s32(v32, v34), vzip2q_s32(v32, v34)));
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v36 = vandq_s8(v26, v28);
  __asm { FMOV            V16.4S, #1.0 }

  v42 = vandq_s8(vorrq_s8(v36, _Q16), vorrq_s8(vcltzq_f32(v26), vcgtzq_f32(v26)));
  if ((*&v42.i32[2] + vaddv_f32(*v42.i8)) >= 2.0)
  {
    v60.i32[0] = vdivq_f32(vmulq_f32(v26, v26), v35).i32[3];
  }

  else
  {
    v43 = vmulq_f32(v4, v5);
    v44 = vmulq_f32(v6, v7);
    v45 = vmulq_f32(v8, v9);
    v46 = vzip2q_s32(v43, v45);
    v47 = vzip1q_s32(vzip1q_s32(v43, v45), v44);
    v48 = vtrn2q_s32(v43, v44);
    v48.i32[2] = v45.i32[1];
    v49 = vdivq_f32(vaddq_f32(vzip1q_s32(v46, vdupq_laneq_s32(v44, 2)), vaddq_f32(v47, v48)), v35);
    v49.i32[3] = v49.i32[2];
    v50 = vminq_f32(vmaxq_f32(v49, 0), _Q16);
    v51 = vmlaq_n_f32(vnegq_f32(v5), v4, v50.f32[0]);
    v52 = vmlaq_lane_f32(vnegq_f32(v7), v6, *v50.f32, 1);
    v53 = vmlaq_laneq_f32(vnegq_f32(v9), v8, v50, 2);
    v54 = vmulq_f32(v51, v51);
    v55 = vmulq_f32(v52, v52);
    v56 = vmulq_f32(v53, v53);
    v57 = vzip2q_s32(v54, v56);
    v58 = vzip1q_s32(vzip1q_s32(v54, v56), v55);
    v59 = vtrn2q_s32(v54, v55);
    v59.i32[2] = v56.i32[1];
    v60 = vaddq_f32(vzip1q_s32(v57, vdupq_laneq_s32(v55, 2)), vaddq_f32(v58, v59));
    v61 = v60.f32[1];
    if (v60.f32[0] <= v60.f32[1])
    {
      v61 = v60.f32[0];
    }

    v60.i32[0] = v60.i32[2];
    if (v61 <= v60.f32[2])
    {
      v60.f32[0] = v61;
    }
  }

  return v60.f32[0];
}

BOOL scn_plane_intersect_3_planes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t *a7)
{
  v7.i64[0] = a1;
  v7.i64[1] = a2;
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v9.i64[0] = a5;
  v9.i64[1] = a6;
  v10 = vmulq_f32(v7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  if (v10.f32[0] != 0.0)
  {
    v11 = v7;
    v11.f32[0] = -*(&a2 + 1);
    v12 = v8;
    *v12.i32 = -*(&a4 + 1);
    v13 = v9;
    *v13.i32 = -*(&a6 + 1);
    v14 = vmulq_f32(v11, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL))), vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL)));
    v15 = v7;
    v15.f32[1] = -*(&a2 + 1);
    v16 = v8;
    *&v16.i32[1] = -*(&a4 + 1);
    v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
    v17 = v9;
    *&v17.i32[1] = -*(&a6 + 1);
    v18 = vmulq_f32(v15, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL))), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL)));
    v7.f32[2] = -*(&a2 + 1);
    *&v8.i32[2] = -*(&a4 + 1);
    *&v9.i32[2] = -*(&a6 + 1);
    v19 = vmulq_f32(v7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
    v14.f32[1] = v18.f32[2] + vaddv_f32(*v18.f32);
    v14.f32[2] = v19.f32[2] + vaddv_f32(*v19.f32);
    *a7 = vdivq_f32(v14, vdupq_lane_s32(*v10.f32, 0));
  }

  return v10.f32[0] != 0.0;
}

uint64_t scn_frustum_classify_aabb(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = vmulq_f32(a2, *a1);
  v7 = vmulq_f32(a2, v3);
  v8 = vmulq_f32(a2, v4);
  v9 = vmulq_f32(a2, v5);
  v10 = vzip1q_s32(v6, v8);
  v11 = vzip2q_s32(v6, v8);
  v12 = vzip1q_s32(v7, v9);
  v13 = vzip2q_s32(v7, v9);
  v14 = vaddq_f32(vzip2q_s32(v11, v13), vaddq_f32(vzip1q_s32(v11, v13), vaddq_f32(vzip1q_s32(v10, v12), vzip2q_s32(v10, v12))));
  v15 = vmulq_f32(a3, vabsq_f32(*a1));
  v16 = vmulq_f32(a3, vabsq_f32(v3));
  v17 = vmulq_f32(a3, vabsq_f32(v4));
  v18 = vmulq_f32(a3, vabsq_f32(v5));
  v19 = vzip1q_s32(v15, v17);
  v20 = vzip2q_s32(v15, v17);
  v21 = vzip1q_s32(v16, v18);
  v22 = vzip2q_s32(v16, v18);
  v23 = vmaxnmq_f32(vsubq_f32(vabsq_f32(v14), vaddq_f32(vzip2q_s32(v20, v22), vaddq_f32(vzip1q_s32(v20, v22), vaddq_f32(vzip1q_s32(v19, v21), vzip2q_s32(v19, v21))))), 0);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v24 = vorrq_s8(vandq_s8(v14, v22), vabsq_f32(v23));
  if ((vmaxvq_u32(vcltzq_f32(v24)) & 0x80000000) != 0)
  {
    return 1;
  }

  v26 = a1[4];
  v25 = a1[5];
  v27 = vmulq_f32(a2, v26);
  v28 = vmulq_f32(a2, v25);
  v29 = vzip1q_s32(v27, v28);
  v30 = vzip2q_s32(v27, v28);
  *v30.i8 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), vadd_f32(*v30.i8, vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL))));
  v31 = vmulq_f32(a3, vabsq_f32(v26));
  v32 = vmulq_f32(a3, vabsq_f32(v25));
  v33 = vzip1q_s32(v31, v32);
  v34 = vzip2q_s32(v31, v32);
  v35 = vorr_s8(vand_s8(*v30.i8, 0x8000000080000000), vabs_f32(vmaxnm_f32(vsub_f32(vabs_f32(*v30.i8), vadd_f32(*&vextq_s8(v34, v34, 8uLL), vadd_f32(*v34.i8, vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL))))), 0)));
  *v34.i8 = vcltz_f32(v35);
  if ((vpmax_u32(*v34.i8, *v34.i8).u32[0] & 0x80000000) != 0)
  {
    return 1;
  }

  *v36.f32 = vmul_f32(*v24.f32, v35);
  v36.i64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
  return (vmaxvq_u32(vceqzq_f32(v36)) >> 30) & 2;
}

double scn_triangle_barycentric_coordinates(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a3, a1);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(v4)), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL), v5);
  v7 = vmulq_f32(v6, v6);
  v7.f32[0] = v7.f32[2] + vaddv_f32(*v7.f32);
  if (fabsf(v7.f32[0]) >= 1.1755e-38)
  {
    v13 = vsubq_f32(a3, a4);
    v14 = vsubq_f32(a2, a4);
    v15 = vsubq_f32(a1, a4);
    v16 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL);
    v17 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
    v18 = vmlaq_f32(vmulq_f32(v17, vnegq_f32(v14)), v16, v13);
    v19 = vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL);
    v20 = vmlaq_f32(vmulq_f32(v19, vnegq_f32(v13)), v17, v15);
    v21 = vmlaq_f32(vmulq_f32(v16, vnegq_f32(v15)), v19, v14);
    v22 = vmulq_f32(v6, v18);
    v23 = vmulq_f32(v6, v20);
    _Q0 = vmulq_f32(v6, v21);
    v24 = vzip2q_s32(v22, _Q0);
    v25 = vzip1q_s32(vzip1q_s32(v22, _Q0), v23);
    v26 = vtrn2q_s32(v22, v23);
    v26.i32[2] = _Q0.i32[1];
    _Q0.i64[0] = vdivq_f32(vaddq_f32(vzip1q_s32(v24, vdupq_laneq_s32(v23, 2)), vaddq_f32(v25, v26)), vdupq_lane_s32(*v7.f32, 0)).u64[0];
  }

  else
  {
    __asm { FMOV            V0.4S, #-1.0 }
  }

  return *_Q0.i64;
}

uint64_t C3DKeyframedAnimationGetTypeID()
{
  if (C3DKeyframedAnimationGetTypeID_onceToken != -1)
  {
    C3DKeyframedAnimationGetTypeID_cold_1();
  }

  return C3DKeyframedAnimationGetTypeID_typeID;
}

double __C3DKeyframedAnimationGetTypeID_block_invoke()
{
  C3DKeyframedAnimationGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DKeyframedAnimationContextClassSerializable;
  unk_281741110 = kC3DC3DKeyframedAnimationContextClassSerializable;
  unk_281741120 = *off_282DC3408;
  return result;
}

uint64_t C3DKeyframedAnimationCreate()
{
  if (C3DKeyframedAnimationGetTypeID_onceToken != -1)
  {
    C3DKeyframedAnimationGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DKeyframedAnimationGetTypeID_typeID, 160);
  C3DAnimationCommonInit(Instance);
  return Instance;
}

float C3DKeyframedAnimationSetController(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 168);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      v12 = CFRetain(cf);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 168) = v12;
  }

  result = *(a1 + 72);
  if (result == 0.0 && v12 != 0)
  {
    Duration = C3DKeyframeControllerGetDuration(v12);
    C3DAnimationSetDuration(a1, Duration);
  }

  return result;
}

uint64_t C3DKeyframedAnimationGetController(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

uint64_t C3DKeyframedAnimationEvaluate(uint64_t a1, int a2, uint64_t a3, double a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframedAnimationEvaluate_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DKeyframedAnimationEvaluate_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  result = *(a1 + 168);
  if (result)
  {
    v25 = C3DKeyframeControllerGetDuration(result) * a4;
    v26 = *(a1 + 168);
    Additive = C3DAnimationGetAdditive(a1);
    return C3DKeyframeControllerEvaluateAtTime(v26, a2, Additive, a3, v25);
  }

  return result;
}

uint64_t C3DKeyframedAnimationSetup(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Controller = C3DKeyframedAnimationGetController(a1);
  if (Controller)
  {
    v11 = Controller;
    if (C3DKeyframeControllerGetCalculationMode(Controller) == 1 || C3DKeyframeControllerGetDuration(v11) == 0.0)
    {
      *v12.i64 = C3DAnimationGetDuration(a1);
      C3DKeyframeControllerSetupKeyTimesForPacedMode(v11, v12, v13);
    }

    KeyCount = C3DKeyframeControllerGetKeyCount(v11);
    if (*(v11 + 114) == 1)
    {
      v15 = KeyCount;
      ValueComponentCount = C3DKeyframeControllerGetValueComponentCount(v11);
      memset(__dst, 0, sizeof(__dst));
      if (v15)
      {
        v16 = 0;
        do
        {
          v17 = v16;
          KeyTimeAtIndex = C3DKeyframeControllerGetKeyTimeAtIndex(v11, v16++);
          if (v16 >= v15)
          {
            v19 = KeyTimeAtIndex + KeyTimeAtIndex - C3DKeyframeControllerGetKeyTimeAtIndex(v11, v17 - 1);
            if (!v17)
            {
LABEL_15:
              v20 = KeyTimeAtIndex - (C3DKeyframeControllerGetKeyTimeAtIndex(v11, v16) - KeyTimeAtIndex);
              goto LABEL_16;
            }
          }

          else
          {
            v19 = C3DKeyframeControllerGetKeyTimeAtIndex(v11, v16);
            if (!v17)
            {
              goto LABEL_15;
            }
          }

          v20 = C3DKeyframeControllerGetKeyTimeAtIndex(v11, v17 - 1);
LABEL_16:
          TensionAtIndex = C3DKeyframeControllerGetTensionAtIndex(v11, v17);
          ContinuityAtIndex = C3DKeyframeControllerGetContinuityAtIndex(v11, v17);
          BiasAtIndex = C3DKeyframeControllerGetBiasAtIndex(v11, v17);
          OutTangentsAtIndex = C3DKeyframeControllerGetOutTangentsAtIndex(v11, v17);
          v25 = C3DKeyframeControllerGetInTangentsAtIndex(v11, v17);
          if (ValueComponentCount)
          {
            v26 = v25;
            v27 = 0;
            v28 = KeyTimeAtIndex - v20;
            v29 = v19 - KeyTimeAtIndex;
            v30 = v19 - KeyTimeAtIndex + KeyTimeAtIndex - v20;
            v31 = (v19 - KeyTimeAtIndex) / v30;
            v32 = (KeyTimeAtIndex - v20) / v30;
            v33 = (1.0 - TensionAtIndex) * (ContinuityAtIndex + 1.0);
            v34 = v31 * (v33 * (BiasAtIndex + 1.0));
            v35 = (1.0 - TensionAtIndex) * (1.0 - ContinuityAtIndex);
            v36 = v31 * (v35 * (1.0 - BiasAtIndex));
            v37 = v32 * (v35 * (BiasAtIndex + 1.0));
            v38 = v32 * (v33 * (1.0 - BiasAtIndex));
            *&v32 = v29 * v36 + v34 * v28;
            *&v28 = v29 * v38 + v37 * v28;
            v47 = LODWORD(v28);
            v48 = LODWORD(v32);
            do
            {
              C3DKeyframeControllerGetValueAtIndex(v11, v17, __dst);
              v39 = *(__dst + v27);
              if (v16 >= v15)
              {
                C3DKeyframeControllerGetValueAtIndex(v11, v17 - 1, __dst);
                v40 = v39 + (v39 - *(__dst + v27));
              }

              else
              {
                C3DKeyframeControllerGetValueAtIndex(v11, v16, __dst);
                v40 = *(__dst + v27);
              }

              if (v17)
              {
                C3DKeyframeControllerGetValueAtIndex(v11, v17 - 1, __dst);
                v41 = *(__dst + v27);
              }

              else
              {
                C3DKeyframeControllerGetValueAtIndex(v11, v16, __dst);
                v41 = v39 - (*(__dst + v27) - v39);
              }

              v42 = (v39 - v41);
              v43 = (v40 - v39);
              *&v44 = v36 * v43 + v34 * v42;
              *(OutTangentsAtIndex + 8 * v27) = __PAIR64__(v44, v48);
              *&v42 = v38 * v43 + v37 * v42;
              *(v26 + 8 * v27++) = __PAIR64__(LODWORD(v42), v47);
            }

            while (ValueComponentCount != v27);
          }
        }

        while (v16 != v15);
      }
    }
  }

  else
  {
    C3DKeyframeControllerGetKeyCount(0);
  }

  return 1;
}

float C3DKeyframedAnimationCopy(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframedAnimationCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DKeyframedAnimationCopy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Controller = C3DKeyframedAnimationGetController(a1);
  return C3DKeyframedAnimationSetController(a2, Controller);
}

id _C3DKeyframedAnimationCFFinalize(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    CFRelease(v2);
    a1[21] = 0;
  }

  return _C3DAnimationCFFinalize(a1);
}

uint64_t _C3DKeyframedAnimationInitWithPropertyList(uint64_t a1, CFTypeRef cf, const __CFDictionary *a3, uint64_t a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!cf)
    {
LABEL_12:
      v21 = scn_default_log();
      result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      if (result)
      {
        _C3DKeyframedAnimationInitWithPropertyList_cold_3(v21);
        return 0;
      }

      return result;
    }
  }

  else if (!cf)
  {
    goto LABEL_12;
  }

  v16 = CFGetTypeID(cf);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(cf, @"keyframeController");
  if (Value)
  {
    result = C3DKeyframeControllerCreateWithPropertyList(Value, a3, a4);
    if (!result)
    {
      return result;
    }

    v19 = result;
    C3DKeyframedAnimationSetController(a1, result);
    CFRelease(v19);
  }

  else
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _C3DKeyframedAnimationInitWithPropertyList_cold_2(v20);
    }
  }

  _C3DAnimationInitWithPropertyList(a1, cf, a3);
  return 1;
}

__CFDictionary *_C3DKeyframedAnimationCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = _C3DAnimationCopyPropertyList(a1, a2, a3, a4);
  CFDictionaryAddValue(v16, @"type", @"keyframedAnimation");
  v17 = *(a1 + 168);
  if (v17)
  {
    v18 = C3DCopyPropertyList(v17, a2, a3, a4);
    CFDictionaryAddValue(v16, @"keyframeController", v18);
    CFRelease(v18);
  }

  return v16;
}

uint64_t SCNPassInitialize(uint64_t *a1)
{
  if (!gPassContext)
  {
    gPassContext = objc_alloc_init(SCNPassContext);
  }

  InitializeBlock = C3DFXPassGetInitializeBlock(*a1);
  *(gPassContext + 8) = a1;
  v3 = *(InitializeBlock + 16);

  return v3();
}

uint64_t SCNPassExecute(uint64_t *a1)
{
  if (!gPassContext)
  {
    gPassContext = objc_alloc_init(SCNPassContext);
  }

  ExecuteBlock = C3DFXPassGetExecuteBlock(*a1);
  *(gPassContext + 8) = a1;
  v3 = *(ExecuteBlock + 16);

  return v3();
}

uint64_t C3DAnimationPlayerGetTypeID()
{
  if (C3DAnimationPlayerGetTypeID_onceToken != -1)
  {
    C3DAnimationPlayerGetTypeID_cold_1();
  }

  return C3DAnimationPlayerGetTypeID_typeID;
}

double __C3DAnimationPlayerGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DAnimationPlayerGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"speed", 0x54u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"blendFactor", 0x50u, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  result = *&kC3DC3DAnimationPlayerContextClassAnimatable;
  xmmword_281741C80 = kC3DC3DAnimationPlayerContextClassAnimatable;
  return result;
}

uint64_t C3DAnimationPlayerCreateWithAnimation(const void *a1)
{
  if (C3DAnimationPlayerGetTypeID_onceToken != -1)
  {
    C3DAnimationPlayerGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationPlayerGetTypeID_typeID, 80);
  if (Instance)
  {
    *(Instance + 72) = CFArrayCreateMutable(0, 1, MEMORY[0x277CBF128]);
    v3 = *(Instance + 64);
    if (v3 != a1)
    {
      if (v3)
      {
        CFRelease(v3);
        *(Instance + 64) = 0;
      }

      if (a1)
      {
        v4 = CFRetain(a1);
      }

      else
      {
        v4 = 0;
      }

      *(Instance + 64) = v4;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *(Instance + 80) = _D0;
    *(Instance + 88) = 1;
  }

  return Instance;
}

CFTypeRef C3DAnimationPlayerSetAnimation(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

uint64_t C3DAnimationPlayerGetAnimation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

void C3DAnimationPlayerRemoveAnimationNode(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    _C3DAnimationManagerAddAnimationNode_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 72);
  v23.length = CFArrayGetCount(v20);
  v23.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v20, v23, a2);
  if (FirstIndexOfValue != -1)
  {
    v22 = FirstIndexOfValue;
    C3DAnimationNodeSetPlayer(a2, 0);
    CFArrayRemoveValueAtIndex(*(a1 + 72), v22);
  }
}

double C3DAnimationPlayerAddAnimationNode(uint64_t a1, void *value)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFArrayAppendValue(*(a1 + 72), value);
  C3DAnimationNodeSetPlayer(value, a1);
  AnimationManager = C3DAnimationNodeGetAnimationManager(value);
  if (!AnimationManager)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    C3DAnimationManagerPlayAnimationNode(AnimationManager, value);
  }

  result = *(a1 + 80);
  *(value + 6) = result;
  return result;
}

void C3DAnimationPlayerSetSpeed(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 84) != a2)
  {
    *(a1 + 84) = a2;
    Count = CFArrayGetCount(*(a1 + 72));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
        C3DAnimationNodeChangeSpeed(ValueAtIndex, a2);
      }
    }
  }
}

float C3DAnimationPlayerGetSpeed(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 84);
}

void C3DAnimationPlayerSetWeight(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) != a2)
  {
    *(a1 + 80) = a2;
    Count = CFArrayGetCount(*(a1 + 72));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        *(CFArrayGetValueAtIndex(*(a1 + 72), i) + 12) = a2;
      }
    }
  }
}

float C3DAnimationPlayerGetWeight(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

void C3DAnimationPlayerSetPaused(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 88) != a2)
  {
    *(a1 + 88) = a2;
    Count = CFArrayGetCount(*(a1 + 72));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
        AnimationManager = C3DAnimationNodeGetAnimationManager(ValueAtIndex);
        if (AnimationManager)
        {
          v17 = AnimationManager;
          C3DTransactionGetAtomicTime();
          C3DAnimationManagerPauseAnimationNode(v17, ValueAtIndex, a2, 0, v18);
        }
      }
    }
  }
}

uint64_t C3DAnimationPlayerGetPaused(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

CFIndex C3DAnimationPlayerPlay(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 88) = 0;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v11 = result;
    for (i = 0; i != v11; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = C3DAnimationNodeGetAnimationManager(ValueAtIndex);
      if (result)
      {
        result = C3DAnimationManagerPlayAnimationNode(result, ValueAtIndex);
      }
    }
  }

  return result;
}

CFIndex C3DAnimationPlayerStop(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 88) = 1;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v11 = result;
    for (i = 0; i != v11; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = C3DAnimationNodeGetAnimationManager(ValueAtIndex);
      if (result)
      {
        result = C3DAnimationManagerStopAnimationNode(result, ValueAtIndex, 0.0);
      }
    }
  }

  return result;
}

CFIndex C3DAnimationPlayerStopWithDuration(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = 1;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v13 = result;
    for (i = 0; i != v13; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = C3DAnimationNodeGetAnimationManager(ValueAtIndex);
      if (result)
      {
        result = C3DAnimationManagerStopAnimationNode(result, ValueAtIndex, a2);
      }
    }
  }

  return result;
}

void _C3DAnimationPlayerCFFinalize(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      C3DAnimationNodeSetPlayer(ValueAtIndex, 0);
    }
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }
}

void _C3DAnimationPlayerSetValue(uint64_t a1, uint64_t a2, float *a3)
{
  if (a1 + 84 == a2)
  {
    C3DAnimationPlayerSetSpeed(a1, *a3);
  }

  else if (a1 + 80 == a2)
  {
    C3DAnimationPlayerSetWeight(a1, *a3);
  }
}

double __C3DAnimationNodeGetTypeID_block_invoke()
{
  C3DAnimationNodeGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_28173FD20 = kC3DC3DAnimationNodeContextClassSerializable;
  unk_28173FD30 = *&off_282DC3498;
  result = *&kC3DC3DAnimationNodeContextClassAnimatable;
  xmmword_28173FCC8 = kC3DC3DAnimationNodeContextClassAnimatable;
  return result;
}

uint64_t C3DAnimationNodeCreateWithAnimation(const void *a1)
{
  if (C3DAnimationNodeGetTypeID_onceToken != -1)
  {
    C3DAnimationNodeCreateWithAnimation_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationNodeGetTypeID_typeID, 208);
  v3 = Instance;
  if (Instance)
  {
    _C3DAnimationNodeInitializeWithAnimation(Instance, a1);
  }

  return v3;
}

float _C3DAnimationNodeInitializeWithAnimation(uint64_t a1, const void *a2)
{
  *(a1 + 60) = 2139095039;
  *(a1 + 72) = -1082130432;
  v4 = *(a1 + 121);
  *(a1 + 152) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = _D0;
  *(a1 + 121) = v4 | 0x24;
  C3DAnimationNodeSetAnimation(a1, a2);
  Duration = C3DAnimationGetDuration(a2);
  if (Duration == 0.0)
  {
    v11 = C3DTransactionGetDuration();
    if (v11 == 0.0)
    {
      v11 = 0.25;
    }
  }

  else
  {
    v11 = Duration;
  }

  result = v11;
  *(a1 + 76) = result;
  return result;
}

CFTypeRef C3DAnimationNodeSetAnimation(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t C3DAnimationNodeGetAnimation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DAnimationNodeGetOwner(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 144);
}

void C3DAnimationNodeSetOwner(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

void C3DAnimationNodeSetStartTime(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 80) = a2;
}

void C3DAnimationNodeRestart(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 121) |= 2u;
}

double C3DAnimationNodeGetStartTime(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

void C3DAnimationNodeTimeJump(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(a1 + 121) & 1) != 0 && (*(*(a1 + 16) + 84) & 8) == 0)
  {
    *(a1 + 80) = *(a1 + 80) + a2;
  }
}

CFTypeRef C3DAnimationNodeSetKey(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 136);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 136) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 136) = result;
  }

  return result;
}

uint64_t C3DAnimationNodeGetCompletionCallbacks(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 208;
}

CFTypeRef C3DAnimationNodeSetCompletionItem(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 200);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 200) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 200) = result;
  }

  return result;
}

uint64_t C3DAnimationNodeGetCompletionItem(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 200);
}

uint64_t C3DAnimationNodeGetParent(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

void C3DAnimationNodeAddChild(uint64_t a1, void *value)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationNodeAddChild_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Mutable = *(a1 + 32);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *(a1 + 32) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
  *(value + 5) = a1;
}

const __CFArray *C3DAnimationNodeGetChildCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *C3DAnimationNodeGetChildAtIndex(uint64_t a1, CFIndex idx)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetValueAtIndex(result, idx);
  }

  return result;
}

void C3DAnimationNodeSetRepeatStep(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 112);
  if (!v3)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationNodeSetRepeatStep_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *v3;
  if (*v3 != a2)
  {
    v14 = *(v3 + 8);
    v13 = *(v3 + 16);
    if (!v14)
    {
      Type = C3DValueGetType(*(v3 + 16));
      v14 = C3DValueCreate(Type, 1);
      *(v3 + 8) = v14;
      v12 = *v3;
    }

    if (v12 - 1 >= a2)
    {
      Bytes = C3DValueGetBytes(v14);
      C3DValueCopyTo(v13, Bytes);
      v12 = 1;
    }

    v17 = a2 - v12;
    if (a2 > v12)
    {
      do
      {
        C3DValueConcat(v14, v13, v14);
        --v17;
      }

      while (v17);
    }

    *v3 = a2;
  }
}

double C3DAnimationNodeGetContentTimeForTime(uint64_t a1, BOOL *a2, _BYTE *a3, BOOL *a4, double a5)
{
  if (!a1)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if ((*(a1 + 123) & 0x60) != 0)
  {
    a5 = *(a1 + 128);
  }

  if (a5 != *(a1 + 60))
  {
    v18 = a5;
    *(a1 + 60) = v18;
    v62 = 0;
    v61 = 1;
    v19 = *(a1 + 40);
    if (v19)
    {
      C3DAnimationNodeGetContentTimeForTime(v19, &v62 + 1, &v62, &v61, a5);
      v21 = v61;
      if (!v61)
      {
        v32 = 0;
        v33 = 0;
        v29.i64[0] = 0;
        v34 = 0.0;
        goto LABEL_94;
      }

      a5 = v20;
    }

    Animation = C3DAnimationNodeGetAnimation(a1);
    Duration = C3DAnimationGetDuration(Animation);
    v24 = Duration;
    if (*(a1 + 40) || (*(Animation + 84) & 8) != 0)
    {
      PauseTime = C3DAnimationNodeGetPauseTime(Animation);
    }

    else
    {
      PauseTime = C3DAnimationNodeGetStartTime(a1);
    }

    v26 = PauseTime;
    v27 = *(a1 + 52);
    v28 = v27 * C3DAnimationGetSpeed(Animation);
    TimeOffset = C3DAnimationGetTimeOffset(Animation);
    if (Duration <= 0.0)
    {
      v24 = 1.0;
    }

    if (v28 < 0.0)
    {
      HIBYTE(v62) ^= 1u;
    }

    *v29.i64 = a5 - v26;
    if (Duration == 0.0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0.0;
LABEL_93:
      v21 = 128;
LABEL_94:
      v56 = v34;
      v57 = *(a1 + 121) & 0xFFFFFC7F | (HIBYTE(v62) << 9);
      v58 = *v29.i64;
      *(a1 + 64) = v56;
      *(a1 + 68) = v58;
      if (v32)
      {
        if (*(a1 + 40))
        {
          v59 = v62 << 8;
        }

        else
        {
          v59 = 256;
        }
      }

      else
      {
        v59 = 0;
      }

      *(a1 + 121) = v57 | v21 | v59;
      if (*(a1 + 112))
      {
        C3DAnimationNodeSetRepeatStep(a1, v33);
      }

      goto LABEL_101;
    }

    if (v28 == 0.0)
    {
      v34 = *(a1 + 64);
    }

    else
    {
      v34 = *v29.i64 * fabsf(v28) / v24;
    }

    *v29.i64 = v34;
    if (v34 < 0.0)
    {
      FillModeMask = C3DAnimationGetFillModeMask(Animation);
      v29.i64[0] = 0;
      if ((FillModeMask & 2) == 0)
      {
        v21 = 0;
        v32 = 0;
        v33 = 0;
        goto LABEL_94;
      }
    }

    v36 = *(Animation + 76);
    v37 = v36 == 3.4028e38 || v36 == INFINITY;
    v38 = *(Animation + 84);
    if ((v38 & 1) != 0 || (v33 = 0, v39 = 1.0, v36 != 0.0) && v36 != 1.0)
    {
      if (v36 == 0.0)
      {
        v39 = 1.0;
      }

      else
      {
        v39 = *(Animation + 76);
      }

      if (v37)
      {
        v40 = v34 * 0.5;
        if ((v38 & 1) == 0)
        {
          v40 = v34;
        }

        v33 = v40;
      }

      else
      {
        if (v38)
        {
          v39 = v39 + v39;
        }

        v41 = v34 * 0.5;
        if ((v38 & 1) == 0)
        {
          v41 = v34;
        }

        v33 = v41;
        v34 = v34 / v39;
      }
    }

    v42 = !v37;
    if (v34 < 1.0)
    {
      v42 = 0;
    }

    v32 = v42 | v62;
    v43 = *(a1 + 88);
    if (v43 != 0.0)
    {
      v32 |= v43 + *(a1 + 104) < a5;
    }

    if (v34 > 1.0 && (v32 & 1) != 0)
    {
      if (((v38 & 0x20) == 0 || (*(a1 + 121) & 0x40) != 0 || *(a1 + 40)) && (C3DAnimationGetFillModeMask(Animation) & 1) == 0)
      {
        v21 = 0;
        v29.i64[0] = 0;
        v32 = 1;
        goto LABEL_94;
      }

      *v29.i64 = v39;
      v34 = 1.0;
      if (v37)
      {
        *v29.i64 = 1.0;
      }
    }

    v44 = 0.0;
    v45 = -(TimeOffset / v24);
    if (v28 >= 0.0)
    {
      v45 = TimeOffset / v24;
    }

    *v30.i64 = v45 + *v29.i64;
    if (TimeOffset == 0.0)
    {
      v30.i64[0] = v29.i64[0];
    }

    else
    {
      v44 = v45;
    }

    if (*v30.i64 <= 1.0)
    {
      v29.i64[0] = v30.i64[0];
      if (*v30.i64 < 0.0)
      {
        *v29.i64 = *v30.i64 - trunc(*v30.i64);
        v47.f64[0] = NAN;
        v47.f64[1] = NAN;
        *v29.i64 = *vbslq_s8(vnegq_f64(v47), v29, v30).i64 + 1.0;
      }
    }

    else
    {
      *v29.i64 = *v30.i64 - trunc(*v30.i64);
      v46.f64[0] = NAN;
      v46.f64[1] = NAN;
      v29.i64[0] = vbslq_s8(vnegq_f64(v46), v29, v30).u64[0];
    }

    if (*(Animation + 84))
    {
      v48 = v34 < 1.0 || v37;
      if (v48)
      {
        if (*v30.i64 >= 0.0)
        {
          v49 = *v30.i64;
        }

        else
        {
          v49 = 1.0 - *v30.i64;
        }
      }

      else
      {
        v50 = v44 + v39;
        if (v50 <= 0.0)
        {
          v49 = 1.0 - v50;
        }

        else
        {
          v49 = v50;
        }
      }

      v51 = v49;
      if (v28 < 0.0)
      {
        if (v51)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      if (v51)
      {
LABEL_82:
        HIBYTE(v62) ^= 1u;
        *v29.i64 = 1.0 - *v29.i64;
      }
    }

LABEL_83:
    if (v28 >= 0.0)
    {
      v52 = *v29.i64;
    }

    else
    {
      v52 = 1.0 - *v29.i64;
    }

    TimingFunction = C3DAnimationGetTimingFunction(Animation);
    if (TimingFunction)
    {
      if (v52 >= 0.0 && v52 <= 1.0)
      {
        C3DTimingFunctionSolve(TimingFunction, v52, Duration);
        v52 = v55;
      }
    }

    *v29.i64 = v24 * v52;
    goto LABEL_93;
  }

LABEL_101:
  if (a2)
  {
    *a2 = (*(a1 + 121) & 0x200) != 0;
  }

  if (a3)
  {
    *a3 = *(a1 + 122) & 1;
  }

  if (a4)
  {
    *a4 = (*(a1 + 121) & 0x80) != 0;
  }

  return *(a1 + 68);
}

float C3DAnimationNodeGetWeightAtTime(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 40))
  {
    WeightAtTime = C3DAnimationNodeGetWeightAtTime(a2);
  }

  else
  {
    WeightAtTime = 1.0;
  }

  Animation = C3DAnimationNodeGetAnimation(a1);
  v14 = Animation;
  v15 = WeightAtTime * (Animation[26] * *(a1 + 48));
  if (Animation[27] != 0.0 || Animation[28] != 0.0)
  {
    v16 = *(a1 + 64);
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v17 = fminf(v16, 1.0);
    v18 = Animation[19];
    if (v18 == INFINITY || v18 == 3.4028e38)
    {
      Duration = C3DAnimationGetDuration(Animation);
    }

    else
    {
      Duration = C3DAnimationGetTotalDuration(Animation);
    }

    v21 = v14[27];
    v22 = v17 * Duration;
    if (v21 != 0.0 && v22 < v21)
    {
      v15 = v15 * (v22 / v21);
    }

    v24 = v14[28];
    if (v24 != 0.0)
    {
      v25 = v14[19];
      v26 = v25 == INFINITY || v25 == 3.4028e38;
      if (!v26 && (v14[21] & 0x50) != 0x40)
      {
        v27 = (1.0 - v17) * Duration;
        if (v27 >= 0.0 && v27 < v24)
        {
          v15 = v15 * (v27 / v24);
        }
      }
    }
  }

  v29 = *(a1 + 104);
  if (v29 != 0.0)
  {
    v30 = 1.0 - (a2 - *(a1 + 96)) / v29;
    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    v31 = v30;
    v15 = v15 * v31;
    if (v31 == 0.0)
    {
      v32 = *(a1 + 121);
      if ((v32 & 8) != 0)
      {
        *(a1 + 121) = v32 & 0xFFFFFFD3 | 4;
      }
    }
  }

  return v15;
}

uint64_t C3DAnimationNodeGetRemovedOnCompletion(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = C3DAnimationGetRemoveOnCompletion(*(a1 + 16));
  if (result)
  {
    if (C3DAnimationNodeGetParent(a1))
    {
      return C3DAnimationNodeGetRemovedOnCompletion();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void C3DAnimationNodeChangeSpeed(uint64_t a1, float a2)
{
  v3 = *(a1 + 52);
  if (v3 != a2)
  {
    if (*(a1 + 121))
    {
      v5 = *(a1 + 16);
      v6 = *(v5 + 80);
      v7 = v3 * v6;
      if (C3DAnimationGetIsSceneTimeBased(v5))
      {
        v8 = *(a1 + 60);
      }

      else
      {
        C3DTransactionGetAtomicTime();
      }

      v9 = v6 * a2;
      if (v7 == 0.0)
      {
        v10 = (*(a1 + 64) * *(a1 + 76));
      }

      else
      {
        v10 = (v8 - *(a1 + 80)) * v7;
      }

      if (v9 != 0.0)
      {
        *(a1 + 80) = -(v10 / v9 - v8);
      }
    }

    *(a1 + 52) = a2;
  }
}

CFTypeRef C3DAnimationNodeSetTarget(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

uint64_t C3DAnimationNodeGetPaused(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 123) >> 5) & 1;
}

void C3DAnimationNodeSetPaused(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 0x200000;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 121) = *(a1 + 121) & 0xFFDFFFFF | v12;
}

void C3DAnimationNodeSetPausedByScene(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 0x400000;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 121) = *(a1 + 121) & 0xFFBFFFFF | v12;
}

double C3DAnimationNodeGetPauseTime(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

void C3DAnimationNodeSetPauseTime(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 128) = a2;
}

uint64_t C3DAnimationNodeCreateWithAnimationGroupAndAddToAnimationManager(uint64_t a1, const void *a2, float32x4_t *a3, const void *a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationNodeCreateWithAnimationGroupAndAddToAnimationManager_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  IsSceneTimeBased = C3DAnimationGetIsSceneTimeBased(a2);
  SubAnimationNodes = _createSubAnimationNodes(a1, a2, a3, IsSceneTimeBased);
  C3DAnimationNodeSetKey(SubAnimationNodes, a4);
  return SubAnimationNodes;
}

uint64_t _createSubAnimationNodes(uint64_t a1, const void *a2, float32x4_t *a3, uint64_t a4)
{
  v8 = C3DAnimationNodeCreateWithAnimation(a2);
  AnimationCount = C3DAnimationGroupGetAnimationCount(a2);
  if (AnimationCount >= 1)
  {
    v10 = AnimationCount;
    for (i = 0; v10 != i; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a2, i);
      if (C3DAnimationIsGroup(AnimationAtIndex))
      {
        SubAnimationNodes = _createSubAnimationNodes(a1, AnimationAtIndex, a3, a4);
        if (SubAnimationNodes)
        {
          v14 = SubAnimationNodes;
          C3DAnimationNodeAddChild(v8, SubAnimationNodes);
LABEL_10:
          CFRelease(v14);
        }
      }

      else
      {
        v15 = C3DAnimationCopyTarget(AnimationAtIndex, a3);
        v14 = v15;
        if (AnimationAtIndex)
        {
          v16 = C3DAnimationNodeCreateWithAnimation(AnimationAtIndex);
          C3DAnimationSetIsSceneTimeBased(AnimationAtIndex, a4);
          C3DAnimationNodeAddChild(v8, v16);
          CFRelease(v16);
          if (v14)
          {
            _C3DAnimationManagerAddAnimationNode(a1, v16, v14);
            goto LABEL_10;
          }
        }

        else if (v15)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v8;
}

uint64_t C3DAnimationNodeCreateWithAnimationCluster(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationNodeCreateWithAnimationCluster_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = C3DAnimationClusterNodeCreateWithAnimation(a2);
  C3DAnimationNodeSetKey(v22, a4);
  return v22;
}

uint64_t C3DAnimationClusterNodeCreateWithAnimation(const void *a1)
{
  if (C3DAnimationClusterNodeGetTypeID_onceToken != -1)
  {
    C3DAnimationClusterNodeCreateWithAnimation_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationClusterNodeGetTypeID_typeID, 216);
  _C3DAnimationNodeInitializeWithAnimation(Instance, a1);
  return Instance;
}

uint64_t C3DAnimationNodeCreateWithAnimationAndAddToAnimationManager(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!a3)
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  v32 = C3DAnimationNodeCreateWithAnimation(a2);
  C3DAnimationNodeSetKey(v32, a4);
  _C3DAnimationManagerAddAnimationNode(a1, v32, a3);
  return v32;
}

uint64_t C3DAnimationClusterNodeGetTypeID()
{
  if (C3DAnimationClusterNodeGetTypeID_onceToken != -1)
  {
    C3DAnimationClusterNodeCreateWithAnimation_cold_1();
  }

  return C3DAnimationClusterNodeGetTypeID_typeID;
}

double __C3DAnimationClusterNodeGetTypeID_block_invoke()
{
  C3DAnimationClusterNodeGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DAnimationClusterNodeContextClassAnimatable;
  xmmword_28173FDB0 = kC3DC3DAnimationClusterNodeContextClassAnimatable;
  return result;
}

void _C3DAnimationNodeCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        *(CFArrayGetValueAtIndex(*(a1 + 32), i) + 5) = 0;
      }
    }

    CFRelease(*(a1 + 32));
  }

  if (*(a1 + 200))
  {
    v6 = *(a1 + 216);
    if (!v6 || (v6(a1), *(a1 + 200)))
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationNodeCFFinalize_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      v15 = *(a1 + 200);
      if (v15)
      {
        CFRelease(v15);
        *(a1 + 200) = 0;
      }
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 16) = 0;
  }

  v17 = *(a1 + 136);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 136) = 0;
  }

  v18 = *(a1 + 24);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 24) = 0;
  }

  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = v19[1];
    if (v20)
    {
      CFRelease(v20);
      v19[1] = 0;
    }

    v21 = v19[3];
    if (v21)
    {
      CFRelease(v21);
      v19[3] = 0;
    }

    v22 = v19[2];
    if (v22)
    {
      CFRelease(v22);
    }

    free(v19);
  }

  v23 = *(a1 + 176);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 176) = 0;
  }
}

const void *_C3DAnimationNodeCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = C3DAnimationNodeGetAnimation(a1);
  if (result)
  {

    return C3DCopyPropertyList(result, a2, a3, a4);
  }

  return result;
}

void _C3DAnimationNodeSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 52) == __dst)
  {
    C3DAnimationNodeChangeSpeed(a1, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

void _C3DAnimationClusterNodeCFFinalize(uint64_t a1)
{
  _C3DAnimationNodeCFFinalize(a1);
  v2 = *(a1 + 224);

  free(v2);
}

void _C3DAnimationClusterNodeSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 52) == __dst)
  {
    C3DAnimationNodeChangeSpeed(a1, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

id C3DFXContextGetCIContext(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 264);
  if (!result)
  {
    RenderContext = C3DEngineContextGetRenderContext(a2);
    if (RenderContext)
    {
      v6 = [MEMORY[0x277CBF740] contextWithMTLDevice:-[SCNMTLRenderContext device](RenderContext)];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(a2);
      v6 = [MEMORY[0x277CBF740] contextWithEAGLContext:C3DRendererContextGetGLContext(RendererContextGL)];
    }

    result = v6;
    *(a1 + 264) = result;
  }

  return result;
}

uint64_t _getCIFilterParameterType(void *a1, CFStringRef theString, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = C3DCreatePathComponentsFromString(theString);
  if ([a1 count] && -[__CFString count](v7, "count"))
  {
    if ([(__CFString *)v7 count]== 2)
    {
      v8 = [(__CFString *)v7 objectAtIndex:0];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v9 = [a1 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v28;
LABEL_6:
        v12 = 0;
        while (1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(a1);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          if ([objc_msgSend(v13 "name")])
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [a1 countByEnumeratingWithState:&v27 objects:v31 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v13 = 0;
      }

      v14 = v7;
      v15 = 1;
    }

    else
    {
      v13 = [a1 objectAtIndex:0];
      v14 = v7;
      v15 = 0;
    }

    v17 = [(__CFString *)v14 objectAtIndex:v15];
    v18 = v17;
    if (v17)
    {
      v19 = CFRetain(v17);
    }

    else
    {
      v19 = 0;
    }

    *a4 = v19;
    if (v13)
    {
      v20 = CFRetain(v13);
    }

    else
    {
      v20 = 0;
    }

    *a3 = v20;
    CFRelease(v7);
    result = [v13 attributes];
    if (result)
    {
      result = [objc_msgSend(v13 "attributes")];
      if (result)
      {
        v21 = result;
        v22 = [result objectForKey:*MEMORY[0x277CBF7F0]];
        if (v22)
        {
          v23 = v22;
          if ([v22 isEqualToString:*MEMORY[0x277CBF858]] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x277CBF850]) & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x277CBF818]) & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x277CBF7F8]))
          {
            return 6;
          }

          if ([v23 isEqualToString:*MEMORY[0x277CBF800]])
          {
            return 3;
          }

          if ([v23 isEqualToString:*MEMORY[0x277CBF828]] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x277CBF810]))
          {
            return 2;
          }

          if ([v23 isEqualToString:*MEMORY[0x277CBF838]] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x277CBF830]))
          {
            return 8;
          }

          v26 = *MEMORY[0x277CBF840];
          if ([v23 isEqualToString:*MEMORY[0x277CBF840]] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", v26))
          {
            return 9;
          }

          v24 = [v23 isEqualToString:*MEMORY[0x277CBF848]] == 0;
          v25 = 10;
        }

        else
        {
          v24 = [objc_msgSend(v21 objectForKey:{*MEMORY[0x277CBF790]), "isEqualToString:", @"NSNumber"}] == 0;
          v25 = 6;
        }

        if (v24)
        {
          return 0;
        }

        else
        {
          return v25;
        }
      }
    }
  }

  else
  {
    CFRelease(v7);
    return 0;
  }

  return result;
}

float32_t _getCIFilterParameterValue(void *a1, uint64_t a2, float32x4_t *a3, int a4)
{
  v6 = [a1 valueForKey:a2];
  v7 = v6;
  if (a4 > 7)
  {
    switch(a4)
    {
      case 8:
        [v6 X];
        v34 = v15;
        [v7 Y];
        v16.f64[0] = v34;
        *&v16.f64[1] = v8.i64[0];
        *v8.f32 = vcvt_f32_f64(v16);
        goto LABEL_12;
      case 9:
        [v6 X];
        v35 = v25;
        [v7 Y];
        v26.f64[0] = v35;
        v26.f64[1] = v27;
        *v28.f32 = vcvt_f32_f64(v26);
        v36 = v28;
        [v7 Z];
        v8.f32[0] = *v8.i64;
        v29 = v36;
        v29.i32[2] = v8.i32[0];
        *a3 = v29;
        return v8.f32[0];
      case 10:
        [v6 X];
        v33 = v9;
        [v7 Y];
        v32 = v10;
        [v7 Z];
        v31 = v11;
        [v7 W];
        v12.f64[0] = v31;
        v12.f64[1] = v13;
        v14.f64[0] = v33;
        v14.f64[1] = v32;
        v8 = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v12);
        *a3 = v8;
        return v8.f32[0];
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        a3->i32[0] = [v6 intValue];
        return v8.f32[0];
      case 3:
        a3->i8[0] = [v6 BOOLValue];
        return v8.f32[0];
      case 6:
        [v6 doubleValue];
LABEL_12:
        a3->i64[0] = v8.i64[0];
        return v8.f32[0];
    }
  }

  v17 = scn_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    _getCIFilterParameterValue_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  return v8.f32[0];
}

void _setCIFilterParameterValue(void *a1, uint64_t a2, float32x2_t *a3, int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4 > 7)
  {
    switch(a4)
    {
      case 8:
        v18 = vcvtq_f64_f32(*a3);
        v8 = MEMORY[0x277CBF788];
        v9 = 2;
        break;
      case 9:
        v18 = vcvtq_f64_f32(*a3);
        v19.f64[0] = a3[1].f32[0];
        v8 = MEMORY[0x277CBF788];
        v9 = 3;
        break;
      case 10:
        v7 = vcvtq_f64_f32(a3[1]);
        v18 = vcvtq_f64_f32(*a3);
        v19 = v7;
        v8 = MEMORY[0x277CBF788];
        v9 = 4;
        break;
      default:
        goto LABEL_12;
    }

    [a1 setValue:objc_msgSend(v8 forKey:{"vectorWithValues:count:", &v18, v9, *&v18, *&v19), a2}];
    return;
  }

  switch(a4)
  {
    case 2:
      v6 = [MEMORY[0x277CCABB0] numberWithInt:a3->u32[0]];
      goto LABEL_15;
    case 3:
      v6 = [MEMORY[0x277CCABB0] numberWithBool:a3->u8[0]];
      goto LABEL_15;
    case 6:
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
LABEL_15:

      [a1 setValue:v6 forKey:a2];
      return;
  }

LABEL_12:
  v10 = scn_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    _getCIFilterParameterValue_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t C3DFXTechniqueCreateCIFilter(uint64_t a1, uint64_t a2)
{
  IsClusteredShadingEnabled = C3DEngineContextIsClusteredShadingEnabled(a2);
  v4 = [@"SceneKit-CI-nodetree-color-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}];
  v5 = [@"SceneKit_renderCINodeTree-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}];
  v6 = [@"SceneKit-CI-effect-color-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __C3DFXTechniqueCreateCIFilter_block_invoke;
  v15[3] = &unk_2782FCA00;
  v15[7] = v5;
  v15[8] = a1;
  v15[4] = &unk_282E0FB58;
  v15[5] = v4;
  v15[6] = v6;
  if (IsClusteredShadingEnabled)
  {
    v7 = @"C3DFXCIFilterPassMetal.json";
  }

  else
  {
    v7 = @"C3DFXCIFilterPass.json";
  }

  v8 = C3DJsonNamed(v7, v15);
  v9 = C3DFXTechniqueCreateWithDescription(v8, a1);
  PassNamed = C3DFXTechniqueGetPassNamed(v9, v5);
  C3DFXPassSetWillExecuteCallback(PassNamed, _willRenderNodeForCIFilter);
  v11 = C3DFXTechniqueGetPassNamed(v9, [@"SceneKit_ApplyCIFilter" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}]);
  v12 = v11;
  if (IsClusteredShadingEnabled)
  {
    C3DFXPassSetDrawInstruction(v11, 7);
  }

  C3DFloorSetReflectionCategoryBitMask(v12, _applyCIFilter);
  v13 = C3DFXTechniqueGetPassNamed(v9, [@"SceneKit_renderCIQuad" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}]);
  C3DFXPassSetInitializeCallback(v13, _initializeRenderFilteredBuffer);
  C3DFXPassSetWillExecuteCallback(v13, _willRenderFilteredBuffer);
  C3DFloorSetReflectionCategoryBitMask(v13, _blendFilteredBuffer);
  return v9;
}

uint64_t __C3DFXTechniqueCreateCIFilter_block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        a2 = [a2 stringByReplacingOccurrencesOfString:*(*(&v10 + 1) + 8 * i) withString:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "stringByAppendingString:", objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1[8]), "stringValue"))}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [objc_msgSend(objc_msgSend(a2 stringByReplacingOccurrencesOfString:@"SceneKit-CI-nodetree-color" withString:{a1[5]), "stringByReplacingOccurrencesOfString:withString:", @"SceneKit-CI-effect-color", a1[6]), "stringByReplacingOccurrencesOfString:withString:", @"SceneKit_renderCINodeTree", a1[7]}];
}

void _willRenderNodeForCIFilter(uint64_t a1)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 24));
  if (RendererContextGL)
  {
    v2 = 0uLL;
    C3DRendererContextClear(RendererContextGL, 0x4500u, &v2);
  }
}

void _applyCIFilter(uint64_t a1)
{
  v137 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  RenderContext = C3DEngineContextGetRenderContext(v2);
  Stats = C3DEngineContextGetStats(v2);
  v5 = CACurrentMediaTime();
  FXContext = C3DEngineContextGetFXContext(*(a1 + 24));
  Viewport = C3DEngineContextGetViewport(*(a1 + 24));
  v7 = *(a1 + 16);
  v103 = FXContext;
  v104 = RenderContext;
  RendererContextGL = C3DEngineContextGetRendererContextGL(v2);
  if (RenderContext)
  {
LABEL_2:
    CIImage = 0;
    goto LABEL_3;
  }

  FramebufferRegistry = C3DFXContextGetFramebufferRegistry(FXContext);
  RenderTargetWithName = C3DFramebufferRegistryGetRenderTargetWithName(FramebufferRegistry, [@"SceneKit-CI-nodetree-color-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v7), "stringValue")}]);
  if (!RenderTargetWithName)
  {
    v91 = scn_default_log();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      _applyCIFilter_cold_3(v91, v92, v93, v94, v95, v96, v97, v98);
    }

    goto LABEL_2;
  }

  v42 = RenderTargetWithName;
  CIImage = C3DRenderTargetGetCIImage(RenderTargetWithName);
  if (!CIImage)
  {
    Texture = C3DRenderTargetGetTexture(v42);
    if (!Texture)
    {
      v44 = scn_default_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        _applyCIFilter_cold_1(v44);
      }
    }

    glFlush();
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    Size = C3DTextureGetSize(Texture);
    CIImage = [objc_alloc(MEMORY[0x277CBF758]) initWithTexture:C3DTextureGetID(Texture) size:0 flipped:DeviceRGB colorSpace:vcvtq_f64_f32(*&Size)];
    CGColorSpaceRelease(DeviceRGB);
    if (!CIImage)
    {
      v47 = scn_default_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        _applyCIFilter_cold_2(v47);
      }
    }

    C3DRenderTargetSetCIImage(v42, CIImage);
  }

LABEL_3:
  v9 = *(a1 + 24);
  v10 = C3DEngineContextGetFXContext(v9);
  v107 = C3DEngineContextGetViewport(v9);
  CurrentPassInstanceAncestor = C3DFXContextGetCurrentPassInstanceAncestor(v10);
  if (CurrentPassInstanceAncestor)
  {
    memset(v120, 0, sizeof(v120));
    WorldMatrix = C3DNodeGetWorldMatrix(v7);
    C3DMatrix4x4Mult(WorldMatrix, CurrentPassInstanceAncestor + 246, v120);
    v118 = 0u;
    v119 = 0u;
    C3DNodeComputeHierarchicalBoundingBox(v7, 1, &v118);
    v13 = 0;
    v14 = 0;
    LODWORD(v15) = vaddq_f32(v118, v119).u32[0];
    LODWORD(v16) = v15;
    *(&v16 + 1) = v118.f32[1] + v119.f32[1];
    *&buf[8] = v118.f32[2] + v119.f32[2];
    *buf = v16;
    v124 = v118.f32[2] - v119.f32[2];
    v123 = v16;
    *(&v15 + 1) = v118.f32[1] - v119.f32[1];
    v126 = v118.f32[2] + v119.f32[2];
    v125 = v15;
    v128 = v118.f32[2] - v119.f32[2];
    v127 = v15;
    LODWORD(v17) = vsubq_f32(v118, v119).u32[0];
    LODWORD(v18) = v17;
    *(&v18 + 1) = v118.f32[1] + v119.f32[1];
    v130 = v118.f32[2] + v119.f32[2];
    v129 = v18;
    v132 = v118.f32[2] - v119.f32[2];
    v131 = v18;
    *(&v17 + 1) = v118.f32[1] - v119.f32[1];
    v134 = v118.f32[2] + v119.f32[2];
    v133 = v17;
    v136 = v118.f32[2] - v119.f32[2];
    v135 = v17;
    v111 = xmmword_21C280320;
    v19 = 1.0;
    v109 = xmmword_21C27FDD0;
    while (2)
    {
      v20 = 16 * v13++;
      while (1)
      {
        v21 = *&buf[v20];
        v21.f32[3] = v19;
        *v22.i64 = C3DVector4MultMatrix4x4(v120, v21);
        LODWORD(v24) = v22.i32[3];
        if (v22.f32[3] <= 0.0)
        {
          break;
        }

        v19 = 1.0;
        v23.f32[0] = (1.0 / v22.f32[3]) * v22.f32[0];
        v22.f32[0] = vmuls_lane_f32(1.0 / v22.f32[3], *v22.f32, 1);
        v25 = v111;
        v25.i32[0] = v23.i32[0];
        v26 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v111, v23), 0), v25, v111);
        v27 = v26;
        v27.i32[1] = v22.i32[0];
        v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v26.i8, 1), v22), 0), v27, v26);
        v29 = v28;
        v29.i32[2] = v23.i32[0];
        v30 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v23, vdupq_laneq_s32(v28, 2)), 0), v29, v28);
        v31 = v30;
        v31.i32[3] = v22.i32[0];
        v111 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v22, vdupq_laneq_s32(v30, 3)), 0), v31, v30);
        ++v13;
        v20 += 16;
        if (v13 == 9)
        {
          v32.i64[0] = 0x3F0000003F000000;
          v32.i64[1] = 0x3F0000003F000000;
          v33 = vmlaq_f32(v32, v32, v111);
          v24 = 0.0;
          if (v14)
          {
            v34 = -1;
          }

          else
          {
            v34 = 0;
          }

          v22 = vbslq_s8(vdupq_n_s32(v34), xmmword_21C27FDD0, v33);
          v109 = v22;
          goto LABEL_15;
        }
      }

      v14 = 1;
      v19 = 1.0;
      if (v13 != 8)
      {
        continue;
      }

      break;
    }

LABEL_15:
    FirstPassInstanceWithName = C3DFXContextGetFirstPassInstanceWithName(v10, [@"SceneKit_renderCINodeTree-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v7, *v22.i64, v24), "stringValue")}]);
    v36 = vmulq_f32(vdupq_laneq_s64(v107, 1), v109);
    if (FirstPassInstanceWithName)
    {
      v37 = *(FirstPassInstanceWithName + 5120);
      if ((vminvq_u32(vceqzq_f32(v37)) & 0x80000000) == 0)
      {
        v38 = vcgtq_f32(v36, v37);
        v39.i64[0] = *(FirstPassInstanceWithName + 5120);
        v39.i64[1] = v36.i64[1];
        v36.i64[1] = *(FirstPassInstanceWithName + 5128);
        v36 = vbslq_s8(v38, v39, v36);
      }
    }
  }

  else
  {
    v36 = 0uLL;
  }

  v48 = v36.f32[2];
  if (v36.f32[2] <= v36.f32[0] || (v49 = v36.f32[3], v50 = v36.f32[1], v36.f32[3] <= v36.f32[1]))
  {
    v89 = scn_default_log();
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v90 = "Warning: CIFilter should have been clipped by the culling";
LABEL_61:
    _os_log_impl(&dword_21BEF7000, v89, OS_LOG_TYPE_DEFAULT, v90, buf, 2u);
    goto LABEL_62;
  }

  v112 = v36.f32[0];
  if (v36.f32[3] < Viewport.n128_f32[0] || v36.f32[3] < Viewport.n128_f32[1] || (v51 = Viewport.n128_f32[2], v36.f32[0] >= Viewport.n128_f32[2]) || (v52 = Viewport.n128_f32[3], v36.f32[1] >= Viewport.n128_f32[3]))
  {
    v89 = scn_default_log();
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v90 = "Warning: CIFilter should have been clipped by the culling (2)";
    goto LABEL_61;
  }

  v53 = [MEMORY[0x277CBF750] filterWithName:{@"CICrop", *v36.i64}];
  [v53 setDefaults];
  v54 = (v49 - v50);
  if (RenderContext)
  {
    v50 = Viewport.n128_f32[3] - (v50 + v54);
  }

  [v53 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", v112, v50, (v48 - v112), v54), @"inputRectangle"}];
  v55 = *MEMORY[0x277CBFAF0];
  [v53 setValue:CIImage forKey:*MEMORY[0x277CBFAF0]];
  v56 = *MEMORY[0x277CBFB50];
  v57 = [v53 valueForKey:*MEMORY[0x277CBFB50]];
  CIContext = C3DFXContextGetCIContext(v103, *(a1 + 24));
  Filters = C3DNodeGetFilters(v7);
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v59 = [(__CFDictionary *)Filters countByEnumeratingWithState:&v114 objects:v121 count:16];
  if (v59)
  {
    v60 = *v115;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v115 != v60)
        {
          objc_enumerationMutation(Filters);
        }

        v62 = *(*(&v114 + 1) + 8 * i);
        [v62 setValue:v57 forKey:v55];
        v57 = [v62 valueForKey:v56];
      }

      v59 = [(__CFDictionary *)Filters countByEnumeratingWithState:&v114 objects:v121 count:16];
    }

    while (v59);
  }

  [v57 extent];
  v65 = Viewport.n128_f32[3];
  *v67.i64 = *v66.i64 + v63;
  v68.i64[0] = v63 < 0.0;
  v68.i64[1] = v104 == 0;
  *&v67.i64[1] = v69;
  *&v66.i64[1] = Viewport.n128_f32[3] - (v69 + v64);
  v70 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v68, 0x3FuLL)), v67, v66);
  if (v63 >= 0.0)
  {
    v71 = v63;
  }

  else
  {
    v71 = 0.0;
  }

  v72 = v64 + *&v70.i64[1];
  *&v73.f64[1] = v70.i64[1];
  v73.f64[0] = Viewport.n128_f32[2];
  v74.i64[1] = 0;
  v75 = vcgtq_f64(COERCE_UNSIGNED_INT64(v71 + *v70.i64), v73);
  if ((vmovn_s64(*&v75).i32[1] & 1) == 0)
  {
    v72 = v64;
  }

  *v74.i64 = Viewport.n128_f32[2] - v71;
  v76 = vbslq_s8(v75, v74, v70);
  v110 = v76;
  v113 = v71;
  v77 = *&v76.i64[1];
  if (*&v76.i64[1] + v72 > v65)
  {
    v72 = v65 - *&v76.i64[1];
  }

  v108 = v72;
  v78 = C3DFXContextGetFirstPassInstanceWithName(v103, [@"SceneKit_renderCINodeTree-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v7), "stringValue")}]);
  v79.f64[0] = v113;
  v79.f64[1] = v108;
  v80 = vcvt_f32_f64(v79);
  *v81.f32 = vcvt_f32_f64(v110);
  *&v79.f64[0] = __PAIR64__(v80.u32[1], v81.u32[0]);
  v99 = *v81.f32;
  v100 = v80;
  v81.i32[0] = v80.i32[0];
  v81.i64[1] = *&v79.f64[0];
  v106 = v81;
  *(v78 + 5120) = v81;
  v82 = C3DFXContextGetCurrentPassInstanceAncestor(v103);
  v83 = v106;
  if (v82 && (vminvq_u32(vceqzq_f32(v106)) & 0x80000000) == 0)
  {
    v84 = *(v82 + 5120);
    v85 = vextq_s8(v84, v84, 8uLL).u64[0];
    v86 = vceqz_f32(v85);
    if (((v86.i32[0] | v86.i32[1]) & 1) == 0)
    {
      v87 = vadd_f32(v99, v100);
      v88 = vadd_f32(v85, *v84.i8);
      *v83.f32 = vbsl_s8(vcgt_f32(__PAIR64__(v99.u32[1], v100.u32[0]), *v84.i8), *v84.i8, __PAIR64__(v99.u32[1], v100.u32[0]));
      *&v83.u32[2] = vsub_f32(vbsl_s8(vcgt_f32(v87, v88), v87, v88), *v83.f32);
    }

    *(v82 + 5120) = v83;
  }

  if (!v104)
  {
    glViewport(0, 0, v51, v52);
    glEnable(0xC11u);
    glScissor(v113, v77, v110.f64[0], v108);
    memset(buf, 0, sizeof(buf));
    C3DRendererContextClear(RendererContextGL, 0x4000u, buf);
    glDisable(0xC11u);
    glDisable(0xB44u);
    [CIContext drawImage:v57 inRect:v113 fromRect:{v77, v110.f64[0], v108, v113, v77, v110.f64[0], v108}];
  }

LABEL_62:
  *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v5;
}

void _initializeRenderFilteredBuffer(uint64_t *a1)
{
  Program = C3DFXPassGetProgram(*a1);

  C3DFXProgramSetOpaque(Program, 0);
}

void _willRenderFilteredBuffer(uint64_t a1)
{
  FXContext = C3DEngineContextGetFXContext(*(a1 + 24));
  CurrentPassInstance = C3DFXContextGetCurrentPassInstance(FXContext);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  WorldMatrix = C3DNodeGetWorldMatrix(*(a1 + 16));
  C3DMatrix4x4Mult(WorldMatrix, (CurrentPassInstance + 3168), &v34);
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  C3DVector3MultMatrix4x4(&v30, 0);
  v6 = fmax(*(CurrentPassInstance + 4832) / (*(CurrentPassInstance + 4832) - *(CurrentPassInstance + 4824)) - *(CurrentPassInstance + 4832) * *(CurrentPassInstance + 4824) / (*(CurrentPassInstance + 4824) - *(CurrentPassInstance + 4832)) / v5, 0.0);
  v29 = v6;
  v7 = *(a1 + 16);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), [@"C3D-CIFilter_middleZ" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v7), "stringValue")}], &v29);
  v25 = *(C3DFXContextGetFirstPassInstanceWithName(FXContext, [@"SceneKit_renderCINodeTree-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v7), "stringValue")}]) + 5120);
  v26 = *(CurrentPassInstance + 4720);
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 24));
  v9.f64[0] = v25.f32[0];
  if (RenderContext)
  {
    __asm { FMOV            V4.2D, #0.5 }

    v15 = vmulq_f64(vcvt_hight_f64_f32(v26), _Q4);
    v9.f64[1] = v25.f32[1];
    __asm { FMOV            V1.2D, #-1.0 }

    v30 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vdivq_f64(v9, v15), _Q1)), vdivq_f64(vcvt_hight_f64_f32(v25), v15));
    v17 = *(a1 + 8);
    v18 = [@"C3D-CIFilter_extent" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v7), "stringValue")}];
    v19 = v17;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *&v20 = vdiv_f32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL));
    __asm { FMOV            V3.2S, #1.0 }

    *(&v20 + 1) = _D3;
    v28 = v20;
    v22 = vcvt_hight_f64_f32(v26);
    v9.f64[1] = v25.f32[1];
    __asm { FMOV            V1.2D, #0.5 }

    v24 = vdivq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(v9, _Q1, vsubq_f64(vcvt_hight_f64_f32(v25), v22)))), vmulq_f64(v22, _Q1));
    *&v24.f64[0] = vcvt_f32_f64(v24);
    *_Q1.f64 = v29 * 2.0 + -1.0;
    LODWORD(v24.f64[1]) = LODWORD(_Q1.f64[0]);
    v27 = v24;
    C3DMatrix4x4MakeScale(&v30, &v28);
    C3DMatrix4x4Translate(&v30, &v27);
    v19 = *(a1 + 8);
    v18 = @"C3D-CIFilter_modelMatrix";
  }

  C3DFXTechniqueSetValueForSymbol(v19, v18, &v30);
}

void WireframeMesh::WireframeMesh(WireframeMesh *this, __C3DMesh *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  WireframeMesh::Prepare(this, a2);
}

void sub_21BF8E634(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void WireframeMesh::Prepare(WireframeMesh *this, __C3DMesh *a2)
{
  PositionSource = C3DMeshGetPositionSource(a2, 1);
  v45 = a2;
  ElementsCount = C3DMeshGetElementsCount(a2);
  if (ElementsCount >= 1)
  {
    v4 = 0;
    allocator = *MEMORY[0x277CBECE8];
    v43 = this;
    do
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(v45, v4, 1);
      Type = C3DMeshElementGetType(ElementAtIndex);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
      if (Type > 5 || ((1 << Type) & 0x23) == 0 || PrimitiveCount == 0)
      {
        break;
      }

      v10 = PrimitiveCount;
      v11 = 3 * PrimitiveCount;
      v12 = 12 * PrimitiveCount;
      v57 = malloc_type_malloc(12 * PrimitiveCount, 0x100004052888210uLL);
      bytes = malloc_type_malloc(16 * v11, 0x100004052888210uLL);
      v60[0] = 0;
      Indexes = C3DMeshElementGetIndexes(ElementAtIndex, v60);
      v46 = v4;
      length = 16 * v11;
      v48 = v11;
      v49 = v12;
      if (v60[0] == 4)
      {
        BytePtr = CFDataGetBytePtr(Indexes);
        v51 = 0;
        v52 = 0;
      }

      else if (v60[0] == 2)
      {
        v51 = CFDataGetBytePtr(Indexes);
        v52 = 0;
        BytePtr = 0;
      }

      else
      {
        if (v60[0] == 1)
        {
          v52 = CFDataGetBytePtr(Indexes);
        }

        else
        {
          v52 = 0;
        }

        BytePtr = 0;
        v51 = 0;
      }

      if (v10 >= 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 6;
        v17 = 1;
        v18 = 2;
        v55 = v10;
        v54 = Type;
        do
        {
          if (Type == 5)
          {
            v19 = 0;
            v10 = (2 * (v15 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v20 = 2 * v15 + 2;
          }

          else if (Type == 1)
          {
            v21 = 2 * v15;
            if (v15)
            {
              v10 = v21 | 1;
              v20 = v21 + 2;
            }

            else
            {
              v10 = v21 | 2;
              v20 = v21 | 1;
            }

            v19 = v15;
          }

          else if (Type)
          {
            v19 = 0;
            v10 = 0;
            v20 = 0;
          }

          else
          {
            v19 = 3 * v15;
            v10 = v14 + 1;
            v20 = v14 + 2;
          }

          switch(v60[0])
          {
            case 4:
              v19 = *&BytePtr[4 * v19];
              v10 = *&BytePtr[4 * v10];
              v20 = *&BytePtr[4 * v20];
              break;
            case 2:
              v19 = *&v51[2 * v19];
              v10 = *&v51[2 * v10];
              v20 = *&v51[2 * v20];
              break;
            case 1:
              v19 = v52[v19];
              v10 = v52[v10];
              v20 = v52[v20];
              break;
          }

          v58 = v20;
          v59 = v17;
          v22 = 1 - 3 * (v17 / 3);
          *&bytes[4 * v16 - 24] = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v19);
          *&bytes[4 * v16 - 16] = v23;
          *&bytes[4 * v16 - 12] = (v14 % 3);
          *&v57[4 * v14] = v14;
          *&bytes[4 * v16 - 8] = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v10);
          *&bytes[4 * v16] = v24;
          *&bytes[4 * v16 + 4] = (v14 + v22);
          *&v57[4 * (v14 + 1)] = v14 + 1;
          *&bytes[4 * v16 + 8] = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v58);
          *&bytes[4 * v16 + 16] = v25;
          *&bytes[4 * v16 + 20] = (v14 + 2 - 3 * (v18 / 3));
          *&v57[4 * (v14 + 2)] = v14 + 2;
          ++v15;
          v16 += 12;
          v17 = v59 + 3;
          v18 += 3;
          v14 += 3;
          LODWORD(v10) = v55;
          Type = v54;
        }

        while (v55 != v15);
      }

      v26 = C3DMeshCreate();
      v27 = CFDataCreate(allocator, bytes, length);
      v28 = C3DMeshSourceCreate(v27, 0, v48, 4, 1);
      CFRelease(v27);
      C3DMeshAddSource(v26, v28, 0, 0);
      CFRelease(v28);
      v29 = C3DMeshElementCreate();
      C3DMeshElementSetType(v29, 0);
      v30 = CFDataCreate(allocator, v57, v49);
      C3DMeshElementSetPrimitives(v29, v10, v30, 4);
      CFRelease(v30);
      v32 = *(v43 + 1);
      v31 = *(v43 + 2);
      if (v32 >= v31)
      {
        v34 = (v32 - *v43) >> 4;
        v35 = v34 + 1;
        if ((v34 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v36 = v31 - *v43;
        if (v36 >> 3 > v35)
        {
          v35 = v36 >> 3;
        }

        v37 = v36 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v35;
        if (v37)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<__C3DMesh *,__C3DMeshElement *>>>(v43, v37);
        }

        v38 = (16 * v34);
        *v38 = v26;
        v38[1] = v29;
        v33 = 16 * v34 + 16;
        v39 = *(v43 + 1) - *v43;
        v40 = (16 * v34 - v39);
        memcpy(v40, *v43, v39);
        v41 = *v43;
        *v43 = v40;
        *(v43 + 1) = v33;
        *(v43 + 2) = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *v32 = v26;
        v32[1] = v29;
        v33 = (v32 + 2);
      }

      *(v43 + 1) = v33;
      free(v57);
      free(bytes);
      v4 = v46 + 1;
    }

    while ((v46 + 1) != ElementsCount);
  }
}

void WireframeMesh::~WireframeMesh(WireframeMesh *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      v4 = *(v2 + 8);
      CFRelease(*v2);
      CFRelease(v4);
      v2 += 16;
    }

    while (v2 != v3);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void sub_21BF8EBA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WireframeMesh::Draw(WireframeMesh *this, __C3DEngineContext *a2, __C3DFXProgram *a3, const C3DMatrix4x4 *a4, const C3DColor4 *a5, uint64_t a6)
{
  *(this + 3) = a6;
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2);
  if (RendererContextGL)
  {
    v12 = RendererContextGL;
    glPushGroupMarkerEXT(0, "SceneKit - Draw wireframe");
    ResourceManager = C3DEngineContextGetResourceManager(a2);
    ProgramResident = C3DResourceManagerMakeProgramResident(ResourceManager, a3, v12);
    C3DRendererContextBindProgramObject(v12, ProgramResident);
    v15 = C3DBlendStatesDefaultOver();
    C3DRendererContextSetBlendStates(v12, v15);
    C3DRendererContextSetEnableReadsFromDepth(v12, 1);
    UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(ProgramResident, @"u_modelViewProjectionTransform");
    C3DRendererContextSetMatrix4x4UniformAtLocation(v12, UniformLocationOfSymbolNamed, a4->components, 1);
    C3DRendererContextSetEnable(v12, 2, 1);
    C3DRendererContextSetEnable(v12, 1, 1);
    glEnable(0x8037u);
    glPolygonOffset(-2.0, -2.0);
    v17 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(ProgramResident, @"u_color");
    C3DRendererContextSetColor4UniformAtLocation(v12, v17, a5->var0.var0, 1);
    v18 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(ProgramResident, @"u_transform");
    C3DRendererContextSetMatrix4x4UniformAtLocation(v12, v18, a4->components, 1);
    v19 = *this;
    v20 = *(this + 1);
    while (v19 != v20)
    {
      v21 = *v19;
      v22 = *(v19 + 8);
      v19 += 16;
      C3DRendererContextBindMesh(v12, ResourceManager, v21);
      C3DRendererContextBindMeshElement(v12, ResourceManager, v22);
      C3DRendererContextRenderResidentMeshElement(v12);
    }

    C3DRendererContextUnbindProgramObject(v12);
    glDisable(0x8037u);
    glPopGroupMarkerEXT();
  }

  result = C3DEngineContextGetRenderContext(a2);
  if (result)
  {
    v24 = result;
    [(SCNMTLRenderContext *)result pushDebugGroup:?];
    v25 = *this;
    v26 = *(this + 1);
    if (*this != v26)
    {
      do
      {
        v27 = *v25;
        v28 = v25[1];
        v25 += 2;
        v29 = *&a4->components[4];
        v30 = *&a4->components[8];
        v31 = *&a4->components[12];
        v34[0] = *a4->components;
        v34[1] = v29;
        v34[2] = v30;
        v34[3] = v31;
        v34[4] = *a5;
        v32 = C3DBlendStatesDefaultOver();
        LOBYTE(v33) = 1;
        [(SCNMTLRenderContext *)v24 authoring_renderMesh:v27 meshElement:v28 withProgram:a3 uniforms:v34 uniformsLength:80 rasterizerStates:0 blendStates:v32 texture:0 depthBias:v33];
      }

      while (v25 != v26);
    }

    return [(SCNMTLRenderContext *)v24 popDebugGroup];
  }

  return result;
}

uint64_t WireframeMeshRenderer::GetWireframeMesh(WireframeMeshRenderer *this, __C3DMesh *a2)
{
  v8 = a2;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = (this + 32);
  do
  {
    v4 = v2[4];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = v2[v6];
  }

  while (v2);
  if (v3 == (this + 32) || v3[4] > a2)
  {
LABEL_9:
    operator new();
  }

  return v3[5];
}

uint64_t WireframeMeshRenderer::DrawInstances(WireframeMeshRenderer *this, __C3DEngineContext *a2, __C3DFXProgram *a3)
{
  v4 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    do
    {
      v8 = *v4++;
      WireframeMesh::Draw(*v8, a2, a3, (v8 + 32), (v8 + 16), *(this + 6));
      MEMORY[0x21CF07610](v8, 0x1020C406DF670C8);
    }

    while (v4 != v5);
    v4 = *this;
  }

  *(this + 1) = v4;
  ++*(this + 6);

  return WireframeMeshRenderer::Purge(this);
}

uint64_t WireframeMeshRenderer::Purge(uint64_t this)
{
  v1 = (this + 24);
  v2 = *(this + 24);
  v3 = (this + 32);
  if (v2 != (this + 32))
  {
    v4 = this;
    do
    {
      v5 = v2[5];
      if (*(v5 + 3) >= *(v4 + 48) - 100)
      {
        v7 = v2[1];
        if (v7)
        {
          do
          {
            v6 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v6 = v2[2];
            v8 = *v6 == v2;
            v2 = v6;
          }

          while (!v8);
        }
      }

      else
      {
        v6 = std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(v1, v2);
        operator delete(v2);
        WireframeMesh::~WireframeMesh(v5);
        this = MEMORY[0x21CF07610]();
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return this;
}

void C3DWireframeAddInstance(WireframeMeshRenderer *a1, __C3DMesh *a2, C3DColor4 a3, _OWORD *a4)
{
  v4 = a4[1];
  *v6.components = *a4;
  *&v6.components[4] = v4;
  v5 = a4[3];
  *&v6.components[8] = a4[2];
  *&v6.components[12] = v5;
  WireframeMeshRenderer::AddInstance(a1, a2, a3, &v6);
}

void C3DWireframeDrawInstances(WireframeMeshRenderer *a1, __C3DEngineContext *a2, __C3DFXProgram *a3)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2);
  if (RendererContextGL)
  {
    v7 = RendererContextGL;
    C3DRendererContextResetToDefaultStates(RendererContextGL);
    WireframeMeshRenderer::DrawInstances(a1, a2, a3);
    C3DRendererContextResetToDefaultStates(v7);

    C3DRendererContextSetEnable(v7, 1, 1);
  }

  else
  {

    WireframeMeshRenderer::DrawInstances(a1, a2, a3);
  }
}

WireframeMeshRenderer *C3DWireframeRendererDestroy(WireframeMeshRenderer *result)
{
  if (result)
  {
    WireframeMeshRenderer::~WireframeMeshRenderer(result);

    JUMPOUT(0x21CF07610);
  }

  return result;
}

void WireframeMeshRenderer::~WireframeMeshRenderer(WireframeMeshRenderer *this)
{
  std::__tree<char>::destroy(this + 24, *(this + 4));
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<__C3DMesh *,__C3DMeshElement *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__emplace_unique_key_args<__C3DMesh *,std::piecewise_construct_t const&,std::tuple<__C3DMesh * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t SCNPhysicsShapeDestroyShape(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 8);
  if (v2 == 21)
  {
    v7 = *(result + 80);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v2 != 22)
  {
    if (v2 == 31)
    {
      v3 = *(result + 28);
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = 96 * v3;
        do
        {
          v6 = v1[5] + v4;
          if (*(v6 + 88))
          {
            SCNPhysicsShapeDestroyShape(*(v6 + 64));
          }

          v4 += 96;
        }

        while (v5 != v4);
      }
    }

    goto LABEL_14;
  }

  v7 = *(*(result + 48) + 80);
  if (v7)
  {
LABEL_13:
    (*(*v7 + 8))(v7);
  }

LABEL_14:
  v8 = *(*v1 + 8);

  return v8(v1);
}

btStridingMeshInterface *_createShapeForGeometry(__C3DGeometry *a1, NSDictionary *a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = CFGetTypeID(a1);
  if (v4 == C3DParametricGeometryGetTypeID() && ![(NSDictionary *)a2 objectForKey:@"SCNPhysicsShapeTypeKey"])
  {
    memset(&__s1, 0, 48);
    C3DParametricGeometryGetCallbacks(a1, &__s1);
    if (!memcmp(&__s1, kC3DBoxCallBacks, 0x30uLL))
    {
      FloatValue = C3DParametricGeometryGetFloatValue(a1, 0);
      v68 = C3DParametricGeometryGetFloatValue(a1, 1);
      v9 = C3DParametricGeometryGetFloatValue(a1, 2);
      v8 = btAlignedAllocInternal(80, 16);
      v10 = v9;
      v11.f64[0] = FloatValue;
      v11.f64[1] = v68;
      *v77.var0.var0 = vmul_f32(vcvt_f32_f64(v11), 0x3F0000003F000000);
      v77.var0.var0[2] = v10 * 0.5;
      v77.var0.var0[3] = 0.0;
      btBoxShape::btBoxShape(v8, &v77);
      return v8;
    }

    if (!memcmp(&__s1, kC3DPyramidCallBacks, 0x30uLL))
    {
      v12 = C3DParametricGeometryGetFloatValue(a1, 0);
      v13 = C3DParametricGeometryGetFloatValue(a1, 1);
      v14 = C3DParametricGeometryGetFloatValue(a1, 2);
      v15 = v12;
      v77.var0.var0[0] = 0.0;
      v16 = v13;
      *&v14 = v14;
      v77.var0.var0[1] = v16;
      *&v77.var0.var0[2] = 0;
      v78 = v15 * -0.5;
      v79 = 0;
      v80 = *&v14 * -0.5;
      v81 = 0;
      v82 = v15 * -0.5;
      v83 = 0;
      v84 = *&v14 * 0.5;
      v85 = 0;
      v86 = v15 * 0.5;
      v87 = 0;
      v88 = *&v14 * -0.5;
      v89 = 0;
      v90 = v15 * 0.5;
      v91 = 0;
      v92 = *&v14 * 0.5;
      v93 = 0;
      v8 = btAlignedAllocInternal(192, 16);
      btConvexHullShape::btConvexHullShape(v8, v77.var0.var0, 5, 16, 0, 0);
      return v8;
    }

    if (!memcmp(&__s1, kC3DCylinderCallBacks, 0x30uLL))
    {
      v17 = C3DParametricGeometryGetFloatValue(a1, 4);
      v18 = C3DParametricGeometryGetFloatValue(a1, 1);
      v8 = btAlignedAllocInternal(80, 16);
      *&v19 = v17;
      v20 = v18;
      LODWORD(v77.var0.var0[0]) = v19;
      v77.var0.var0[1] = v20 * 0.5;
      *&v77.var0.var0[2] = v19;
      btCylinderShape::btCylinderShape(v8, &v77);
      return v8;
    }

    if (!memcmp(&__s1, kC3DConeCallBacks, 0x30uLL))
    {
      v21 = C3DParametricGeometryGetFloatValue(a1, 5);
      if (v21 != 0.0 && (_createShapeForGeometry(__C3DGeometry *,NSDictionary *)::done & 1) == 0)
      {
        _createShapeForGeometry(__C3DGeometry *,NSDictionary *)::done = 1;
        v22 = scn_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          _createShapeForGeometry();
        }
      }

      v23 = C3DParametricGeometryGetFloatValue(a1, 6);
      v24 = C3DParametricGeometryGetFloatValue(a1, 1);
      v8 = btAlignedAllocInternal(96, 16);
      v25 = v23;
      v26 = v24;
      btConeShape::btConeShape(v8, v25, v26);
      return v8;
    }

    if (!memcmp(&__s1, kC3DTubeCallBacks, 0x30uLL))
    {
      v27 = C3DParametricGeometryGetFloatValue(a1, 8);
      v28 = C3DParametricGeometryGetFloatValue(a1, 1);
      v8 = btAlignedAllocInternal(80, 16);
      *&v29 = v27;
      v30 = v28;
      LODWORD(v77.var0.var0[0]) = v29;
      v77.var0.var0[1] = v30 * 0.5;
      *&v77.var0.var0[2] = v29;
      btCylinderShape::btCylinderShape(v8, &v77);
      return v8;
    }

    if (!memcmp(&__s1, kC3DCapsuleCallBacks, 0x30uLL))
    {
      v31 = C3DParametricGeometryGetFloatValue(a1, 4);
      v32 = C3DParametricGeometryGetFloatValue(a1, 1);
      v8 = btAlignedAllocInternal(80, 16);
      v33 = v31;
      v34 = v32;
      btCapsuleShape::btCapsuleShape(v8, v33, v34 + (v33 * -2.0));
      return v8;
    }

    if (!memcmp(&__s1, kC3DTorusCallBacks, 0x30uLL))
    {
      v35 = C3DParametricGeometryGetFloatValue(a1, 9);
      v36 = C3DParametricGeometryGetFloatValue(a1, 10);
      v37 = 0;
      *&v36 = v36;
      v38 = v35;
      v63 = vdupq_lane_s32(*&v36, 0);
      v64 = v38;
      v39 = xmmword_21C280330;
      v40 = &v77;
      v62 = vdupq_n_s64(0x400921FB54442D18uLL);
      v41 = 0uLL;
      do
      {
        v66 = v41;
        v69 = v39;
        v42.i64[0] = 0x3E0000003E000000;
        v42.i64[1] = 0x3E0000003E000000;
        v43 = vmulq_f32(vcvtq_f32_u32(v39), v42);
        v44 = vcvtq_f64_f32(*v43.f32);
        v45 = vmulq_f64(vcvt_hight_f64_f32(v43), v62);
        v46 = vmulq_f64(v44, v62);
        v67 = vcvt_f32_f64(vaddq_f64(v45, v45));
        *&v45.f64[0] = vcvt_f32_f64(vaddq_f64(v46, v46));
        v65 = *v45.f64;
        v47 = __sincosf_stret(*(v45.f64 + 1));
        v49 = __sincosf_stret(v65);
        v48.i64[0] = __PAIR64__(LODWORD(v47.__sinval), LODWORD(v49.__sinval));
        v72 = v48;
        v50 = __sincosf_stret(v67.f32[0]);
        v51 = v72;
        v51.i32[2] = LODWORD(v50.__sinval);
        v73 = v51;
        v52 = __sincosf_stret(v67.f32[1]);
        v41 = v66;
        v53 = v73;
        v53.i32[3] = LODWORD(v52.__sinval);
        v54.i64[0] = __PAIR64__(LODWORD(v47.__cosval), LODWORD(v49.__cosval));
        v54.i64[1] = __PAIR64__(LODWORD(v52.__cosval), LODWORD(v50.__cosval));
        v55 = vmulq_n_f32(v53, v64);
        v56 = vmulq_n_f32(v54, v64);
        v57 = v66;
        vst4q_f32(v40->var0.var0, *(&v41 - 1));
        v40 += 4;
        *&v76[v37] = v63;
        v58.i64[0] = 0x400000004;
        v58.i64[1] = 0x400000004;
        v39 = vaddq_s32(v69, v58);
        v37 += 4;
      }

      while (v37 != 8);
      v8 = btAlignedAllocInternal(192, 16);
      btMultiSphereShape::btMultiSphereShape(v8, &v77, v76, 8);
      return v8;
    }

    if (!memcmp(&__s1, kC3DSphereCallBacks, 0x30uLL))
    {
      v59 = C3DParametricGeometryGetFloatValue(a1, 4);
      v8 = btAlignedAllocInternal(80, 16);
      btConvexInternalShape::btConvexInternalShape(v8);
      *v8 = &unk_282DCA7E8;
      *(v8 + 8) = 8;
      v60 = v59;
      *(v8 + 48) = v60;
      *(v8 + 64) = v60;
      return v8;
    }

    if (!memcmp(&__s1, kC3DPlaneCallBacks, 0x30uLL))
    {
      v74 = C3DParametricGeometryGetFloatValue(a1, 0);
      v70 = C3DParametricGeometryGetFloatValue(a1, 1);
      v8 = btAlignedAllocInternal(224, 16);
      v61.f64[0] = v74;
      v61.f64[1] = v70;
      v77 = *&vmul_f32(vcvt_f32_f64(v61), 0x3F0000003F000000);
      btBox2dShape::btBox2dShape(v8, &v77);
      return v8;
    }

    return 0;
  }

  if (v4 == C3DFloorGetTypeID())
  {
    v5 = C3DGetScene(a1);
    *&v77.var0.var0[1] = 0;
    v77.var0.var0[0] = 0.0;
    if (v5)
    {
      C3DSceneGetUpAxis(v5, &v77);
    }

    else
    {
      v77 = xmmword_21C27F8C0;
    }

    v8 = btAlignedAllocInternal(112, 16);
    __s1.i64[0] = *v77.var0.var0;
    __s1.i64[1] = LODWORD(v77.var0.var0[2]);
    btStaticPlaneShape::btStaticPlaneShape(v8, &__s1, 0.0);
    return v8;
  }

  Mesh = C3DGeometryGetMesh(a1);
  if (!Mesh)
  {
    return 0;
  }

  return _createShapeForEntity(Mesh, a2);
}

btStridingMeshInterface *_createShapeForNode(__C3DMesh *a1, NSDictionary *a2)
{
  v4 = [(NSDictionary *)a2 valueForKey:@"SCNPhysicsShapeKeepAsCompoundKey"];
  if (v4 && ![v4 BOOLValue])
  {
    return _createShapeForEntity(a1, a2);
  }

  v14.columns[0].i64[0] = 0;
  v14.columns[0].i64[1] = &v14;
  v14.columns[1].i64[0] = 0x2020000000;
  v14.columns[1].i32[2] = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___Z19_createShapeForNodeP9__C3DNodeP12NSDictionary_block_invoke;
  v15[3] = &unk_2782FCA90;
  v15[4] = &v14;
  C3DNodeApplyHierarchy(a1, v15);
  v5 = *(v14.columns[0].i64[1] + 24);
  _Block_object_dispose(&v14, 8);
  if (v5 < 2)
  {
    return _createShapeForEntity(a1, a2);
  }

  v6 = btAlignedAllocInternal(128, 16);
  btCompoundShape::btCompoundShape(v6, 1);
  WorldMatrix = C3DNodeGetWorldMatrix(a1);
  C3DMatrix4x4Invert(WorldMatrix, &v14);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___Z19_createShapeForNodeP9__C3DNodeP12NSDictionary_block_invoke_2;
  v10[3] = &unk_2782FCAB8;
  v11 = v14;
  v12 = a2;
  v13 = v6;
  C3DNodeApplyHierarchy(a1, v10);
  if (*(v6 + 7))
  {
    btCompoundShape::createAabbTreeFromChildren(v6);
  }

  else
  {
    (*(*v6 + 8))(v6);
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _createShapeForNode();
    }

    return 0;
  }

  return v6;
}

btCompoundShape *_createShapeForArrayOfShapes(NSArray *a1, NSArray *a2)
{
  v4 = btAlignedAllocInternal(128, 16);
  btCompoundShape::btCompoundShape(v4, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___Z28_createShapeForArrayOfShapesP7NSArrayS0__block_invoke;
  v7[3] = &unk_2782FCA68;
  v7[4] = a2;
  v7[5] = v4;
  [(NSArray *)a1 enumerateObjectsUsingBlock:v7];
  if (*(v4 + 7))
  {
    btCompoundShape::createAabbTreeFromChildren(v4);
  }

  else
  {
    (*(*v4 + 8))(v4);
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _createShapeForNode();
    }

    return 0;
  }

  return v4;
}

BOOL __fillMeshElementInfo(uint64_t a1, const UInt8 **a2, _DWORD *a3, int *a4, int *a5)
{
  if (C3DMeshElementGetType(a1))
  {
    v10 = scn_default_log();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *v18 = 0;
    _os_log_impl(&dword_21BEF7000, v10, OS_LOG_TYPE_INFO, "Info: Non triangle list element type not yet supported in physics shape generation", v18, 2u);
    return 0;
  }

  v19 = 0;
  Indexes = C3DMeshElementGetIndexes(a1, &v19);
  if (Indexes)
  {
    v13 = Indexes;
    IndexCount = C3DMeshElementGetIndexCount(a1);
    *a2 = CFDataGetBytePtr(v13);
    v15 = v19;
    *a3 = 3 * v19;
    *a4 = IndexCount / 3;
    switch(v15)
    {
      case 1:
        v16 = 5;
        goto LABEL_11;
      case 4:
        v16 = 2;
        goto LABEL_11;
      case 2:
        v16 = 3;
LABEL_11:
        *a5 = v16;
        return 1;
    }

    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __fillMeshElementInfo(v17);
    }
  }

  return 0;
}

uint64_t _createMeshInterfaceForMesh(__C3DMesh *a1)
{
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 1);
  if (!SourceWithSemanticAtIndex)
  {
    return 0;
  }

  v3 = SourceWithSemanticAtIndex;
  Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex);
  Library = C3DSceneSourceGetLibrary(Accessor);
  Count = C3DMeshSourceGetCount(v3);
  Data = C3DMeshSourceGetData(v3);
  BytePtr = CFDataGetBytePtr(Data);
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
  if (ComponentsValueType != 1)
  {
    if (ComponentsValueType == 6)
    {
      v10 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  v10 = 0;
LABEL_7:
  v11 = btAlignedAllocInternal(112, 16);
  *(v11 + 16) = xmmword_21C280340;
  *v11 = &unk_282DCA948;
  *(v11 + 56) = 1;
  *(v11 + 48) = 0;
  *(v11 + 36) = 0;
  *(v11 + 40) = 0;
  *(v11 + 72) = 0;
  ElementsCount = C3DMeshGetElementsCount(a1);
  if (ElementsCount >= 1)
  {
    v13 = ElementsCount;
    for (i = 0; i != v13; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 1);
      v21 = BytePtr;
      v22 = Library;
      v23 = 2;
      v24 = v10;
      v20[1] = Count;
      v17 = 0;
      if (__fillMeshElementInfo(ElementAtIndex, &v19, v20, &v18, &v17))
      {
        btTriangleIndexVertexArray::addIndexedMesh(v11, &v18, v17);
      }
    }
  }

  return v11;
}

__n128 btTriangleIndexVertexArray::addIndexedMesh(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 36);
  if (v6 == *(a1 + 40))
  {
    v7 = v6 ? 2 * v6 : 1;
    if (v6 < v7)
    {
      if (v7)
      {
        v8 = btAlignedAllocInternal(48 * v7, 16);
        v6 = *(a1 + 36);
      }

      else
      {
        v8 = 0;
      }

      if (v6 >= 1)
      {
        v9 = 0;
        v10 = 48 * v6;
        do
        {
          v11 = (v8 + v9);
          v12 = (*(a1 + 48) + v9);
          v13 = *v12;
          v14 = v12[2];
          v11[1] = v12[1];
          v11[2] = v14;
          *v11 = v13;
          v9 += 48;
        }

        while (v10 != v9);
      }

      v15 = *(a1 + 48);
      if (v15 && *(a1 + 56) == 1)
      {
        btAlignedFreeInternal(v15);
      }

      *(a1 + 56) = 1;
      *(a1 + 48) = v8;
      *(a1 + 40) = v7;
      v6 = *(a1 + 36);
    }
  }

  v16 = *(a1 + 48) + 48 * v6;
  result = *a2;
  v18 = *(a2 + 32);
  *(v16 + 16) = *(a2 + 16);
  *(v16 + 32) = v18;
  *v16 = result;
  LODWORD(v16) = *(a1 + 36);
  *(a1 + 36) = v16 + 1;
  *(*(a1 + 48) + 48 * v16 + 36) = a3;
  return result;
}

btC3DMultiMeshInterface *_createMeshInterfaceForEntity(__C3DMesh *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == C3DMeshGetTypeID())
  {

    return _createMeshInterfaceForMesh(a1);
  }

  else
  {
    if (v2 != C3DNodeGetTypeID())
    {
      return 0;
    }

    v4 = btAlignedAllocInternal(96, 16);
    btC3DMultiMeshInterface::btC3DMultiMeshInterface(v4, a1);
    return v4;
  }
}

btStridingMeshInterface *_createConvexHullForEntity(__C3DMesh *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  MeshInterfaceForEntity = _createMeshInterfaceForEntity(a1);
  if (!MeshInterfaceForEntity)
  {
    return MeshInterfaceForEntity;
  }

  v31 = a1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  for (i = 0; ; ++i)
  {
    v7 = v5;
    v8 = v4;
    if (i >= (*(*MeshInterfaceForEntity + 56))(MeshInterfaceForEntity))
    {
      break;
    }

    v36 = 0;
    *v37 = 0;
    v35 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    (*(*MeshInterfaceForEntity + 32))(MeshInterfaceForEntity, v37, &v36 + 4, &v36, &v35, &v34, &v33 + 4, &v33, &v32, i);
    v4 += HIDWORD(v36);
    if ((v36 & 0x8000000000000000) == 0 && HIDWORD(v36) && v3 < v4)
    {
      if (v4)
      {
        v5 = btAlignedAllocInternal(16 * v4, 16);
      }

      else
      {
        v5 = 0;
      }

      if (v8 >= 1)
      {
        v9 = v8;
        v10 = v5;
        v11 = v7;
        do
        {
          v12 = *v11;
          v11 += 2;
          *v10++ = v12;
          --v9;
        }

        while (v9);
LABEL_16:
        btAlignedFreeInternal(v7);
        v3 = v4;
        goto LABEL_17;
      }

      if (v7)
      {
        goto LABEL_16;
      }

      v3 = v4;
    }

LABEL_17:
    if (v36)
    {
      if ((_createConvexHullForEntity(__C3DEntity *)::done & 1) == 0)
      {
        _createConvexHullForEntity(__C3DEntity *)::done = 1;
        v13 = scn_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v39 = v36;
          _os_log_error_impl(&dword_21BEF7000, v13, OS_LOG_TYPE_ERROR, "Error: vertex format not supported for physics shape creation (%d)", buf, 8u);
        }
      }
    }

    else
    {
      v14 = HIDWORD(v36);
      if (SHIDWORD(v36) >= 1)
      {
        v15 = v35;
        v16 = (v5 + 16 * v8);
        v17 = (*v37 + 8);
        do
        {
          *&v18 = *(v17 - 1);
          DWORD2(v18) = *v17;
          v17 = (v17 + v15);
          *(&v18 + 1) = DWORD2(v18);
          *v16++ = v18;
          --v14;
        }

        while (v14);
      }
    }
  }

  v19 = btAlignedAllocInternal(128, 16);
  btConvexTriangleMeshShape::btConvexTriangleMeshShape(v19, MeshInterfaceForEntity, 1);
  v20 = btAlignedAllocInternal(80, 16);
  btShapeHull::btShapeHull(v20, v19);
  v21 = (*(*v19 + 96))(v19);
  btShapeHull::buildHull(v20, v21);
  (*(*v19 + 8))(v19);
  (*(*MeshInterfaceForEntity + 8))(MeshInterfaceForEntity);
  v22 = *(v20 + 2);
  v23 = btShapeHull::numVertices(v20);
  v24 = *(v20 + 6);
  v25 = btShapeHull::numTriangles(v20);
  if (v23 && v22)
  {
    v26 = v25;
    MeshInterfaceForEntity = btAlignedAllocInternal(192, 16);
    btConvexHullShape::btConvexHullShape(MeshInterfaceForEntity, v22, v23, 16, v24, v26);
  }

  else
  {
    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      ObjCWrapper = C3DEntityGetObjCWrapper(v31);
      *v37 = 138412290;
      *&v37[4] = ObjCWrapper;
      _os_log_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_DEFAULT, "Warning: Cannot create convex hull for entity %@", v37, 0xCu);
    }

    MeshInterfaceForEntity = 0;
  }

  btShapeHull::~btShapeHull(v20);
  btAlignedFreeInternal(v29);
  if (v7)
  {
    btAlignedFreeInternal(v7);
  }

  return MeshInterfaceForEntity;
}

void sub_21BF90E5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    btAlignedFreeInternal(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t btAlignedObjectArray<btVector3>::~btAlignedObjectArray(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t _createConcaveTriMeshForEntity(__C3DMesh *a1)
{
  MeshInterfaceForEntity = _createMeshInterfaceForEntity(a1);
  if (MeshInterfaceForEntity)
  {
    v2 = MeshInterfaceForEntity;
    v3 = btAlignedAllocInternal(112, 16);
    btBvhTriangleMeshShape::btBvhTriangleMeshShape(v3, v2, 1, 1);
    operator new();
  }

  return 0;
}

void sub_21BF90FA8(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x21CF07610](v3, v1);
  _Unwind_Resume(a1);
}

double ___Z28_createShapeForArrayOfShapesP7NSArrayS0__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 _handle];
  if (v5)
  {
    v7 = v5;
    v8 = [*(a1 + 32) objectAtIndex:a3];
    if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v9 SCNMatrix4Value];
      *v10.var0.var0 = *v14.var1.var0.var0;
      *v11.var0.var0 = __PAIR64__(LODWORD(v14.var0.var0[1].var0.var0[0]), LODWORD(v14.var0.var0[0].var0.var0[0]));
      *&v11.var0.var0[2] = LODWORD(v14.var0.var0[2].var0.var0[0]);
      *v12.var0.var0 = __PAIR64__(LODWORD(v14.var0.var0[1].var0.var0[1]), LODWORD(v14.var0.var0[0].var0.var0[1]));
      v12.var0.var0[2] = v14.var0.var0[2].var0.var0[1];
      *v13.var0.var0 = __PAIR64__(LODWORD(v14.var0.var0[1].var0.var0[2]), LODWORD(v14.var0.var0[0].var0.var0[2]));
      v13.var0.var0[2] = v14.var0.var0[2].var0.var0[2];
      *&v10.var0.var0[2] = LODWORD(v14.var1.var0.var0[2]);
      v14.var0.var0[0] = v11;
      v14.var0.var0[1] = v12;
      v14.var0.var0[2] = v13;
      v14.var1 = v10;
    }

    else
    {
      v14.var0.var0[0] = xmmword_21C27F910;
      v14.var0.var0[1] = xmmword_21C27F8C0;
      v14.var0.var0[2] = xmmword_21C27F600;
      v14.var1 = 0uLL;
    }

    *&result = btCompoundShape::addChildShape(*(a1 + 40), &v14, v7, 0).n128_u64[0];
  }

  return result;
}

btStridingMeshInterface *_createShapeForEntity(__C3DMesh *a1, NSDictionary *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)a2 valueForKey:@"SCNPhysicsShapeTypeKey"];
  if ([v3 isEqualToString:@"boundingBox"])
  {
    v10.i32[2] = 0;
    v10.i64[0] = 0;
    v9.i32[2] = 0;
    v9.i64[0] = 0;
    v4 = CFGetTypeID(a1);
    if (v4 == C3DMeshGetTypeID())
    {
      C3DMeshGetBoundingBox(a1, &v10, &v9);
    }

    else
    {
      C3DGetBoundingBox(a1, 1, &v10, &v9);
    }

    v21 = v10.i32[2];
    v22 = v10.i64[0];
    v23 = vtrn1q_s32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v10);
    v6 = v9;
    v6.i32[0] = v10.i32[0];
    v6.i32[3] = v9.i32[0];
    v24 = v6;
    v7 = vextq_s8(v10, vrev64q_s32(v10), 4uLL);
    v7.i32[2] = v9.i32[0];
    v26 = v9.i32[2];
    v25 = v7;
    v20 = v10.i64[0];
    v27 = v9.i64[0];
    v28 = v10.i32[2];
    v29 = v9.i64[0];
    v30 = v9.i32[2];
    v17 = xmmword_21C2803EC;
    v18 = unk_21C2803FC;
    v19 = xmmword_21C28040C;
    v13 = xmmword_21C2803AC;
    v14 = unk_21C2803BC;
    v15 = xmmword_21C2803CC;
    v16 = unk_21C2803DC;
    *v11 = xmmword_21C28038C;
    v12 = unk_21C28039C;
    v5 = btAlignedAllocInternal(192, 16);
    btConvexHullShape::btConvexHullShape(v5, &v20, 8, 12, v11, 12);
    return v5;
  }

  if ([v3 isEqualToString:@"convexDecomposition"])
  {
    return 0;
  }

  if ([v3 isEqualToString:@"concaveMesh"])
  {

    return _createConcaveTriMeshForEntity(a1);
  }

  else
  {

    return _createConvexHullForEntity(a1);
  }
}

uint64_t ___Z19_createShapeForNodeP9__C3DNodeP12NSDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  Geometry = C3DNodeGetGeometry(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (Geometry)
  {
    ++v5;
  }

  *(v4 + 24) = v5;
  return 2 * (*(*(*(a1 + 32) + 8) + 24) > 1);
}

uint64_t ___Z19_createShapeForNodeP9__C3DNodeP12NSDictionary_block_invoke_2(uint64_t a1, float32x4_t *a2)
{
  Geometry = C3DNodeGetGeometry(a2);
  if (Geometry)
  {
    ShapeForGeometry = _createShapeForGeometry(Geometry, *(a1 + 96));
    if (ShapeForGeometry)
    {
      v6 = ShapeForGeometry;
      WorldMatrix = C3DNodeGetWorldMatrix(a2);
      C3DMatrix4x4Mult(WorldMatrix, (a1 + 32), &v10);
      *v9.var0.var0[0].var0.var0 = __PAIR64__(v11, v10);
      *&v9.var0.var0[0].var0.var0[2] = v14;
      *v9.var0.var0[1].var0.var0 = __PAIR64__(v12, DWORD1(v10));
      *&v9.var0.var0[1].var0.var0[2] = v15;
      *v9.var0.var0[2].var0.var0 = __PAIR64__(v13, DWORD2(v10));
      *&v9.var0.var0[2].var0.var0[2] = v16;
      *v9.var1.var0.var0 = v17;
      *&v9.var1.var0.var0[2] = v18;
      btCompoundShape::addChildShape(*(a1 + 104), &v9, v6, 1);
    }
  }

  return 0;
}

void sub_21BF915BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

btCollisionShape *C3DPhysicsShapeGetDefaultShapeForEntity(CFTypeRef *a1, SCNVector3 a2)
{
  x = a2.x;
  if (a2.x == 1.0 && a2.y == 1.0 && a2.z == 1.0)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], @"physicsShape");
    Attribute = C3DEntityGetAttribute(a1, Copy);
    if (Attribute)
    {
      goto LABEL_14;
    }
  }

  else
  {
    z = a2.z;
    y = a2.y;
    Copy = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"physicsShape[%f,%f,%f]", a2.x, a2.y, a2.z);
    v9 = C3DEntityGetAttribute(a1, Copy);
    if (v9)
    {
      Attribute = v9;
      goto LABEL_14;
    }

    *&v10 = x;
    *&v11 = y;
    *&v12 = z;
    Attribute = [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNVector3:", v10, v11, v12), @"SCNPhysicsShapeScaleKey"}];
  }

  Attribute = [[SCNPhysicsShape alloc] initWithCachedObject:a1 options:Attribute];
  C3DEntitySetAttribute(a1, Copy, Attribute);

LABEL_14:
  CFRelease(Copy);

  return [(SCNPhysicsShape *)Attribute _handle];
}

btCollisionShape *C3DPhysicsShapeGetDefaultShapeForNode(float32x4_t *a1)
{
  v9.i32[2] = 0;
  v9.i64[0] = 0;
  WorldMatrix = C3DNodeGetWorldMatrix(a1);
  C3DMatrix4x4GetScale(WorldMatrix, &v9);
  Geometry = C3DNodeGetGeometry(a1);
  if (Geometry)
  {
    v5 = v9.i32[1];
    v4 = v9.i32[0];
    v6 = v9.i32[2];
  }

  else
  {
    if (!C3DNodeComputeHierarchicalBoundingBox(a1, 1, v8))
    {
      return 0;
    }

    v5 = v9.i32[1];
    v4 = v9.i32[0];
    v6 = v9.i32[2];
    Geometry = a1;
  }

  return C3DPhysicsShapeGetDefaultShapeForEntity(Geometry, *&v4);
}

void btC3DMultiMeshInterface::btC3DMultiMeshInterface(btC3DMultiMeshInterface *this, float32x4_t *a2)
{
  *(this + 1) = xmmword_21C280340;
  *this = &unk_282DC34D8;
  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 36) = 0;
  *(this + 88) = 1;
  *(this + 10) = 0;
  *(this + 68) = 0;
  WorldMatrix = C3DNodeGetWorldMatrix(a2);
  C3DMatrix4x4Invert(WorldMatrix, &v8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN23btC3DMultiMeshInterfaceC2EP9__C3DNode_block_invoke;
  v5[3] = &__block_descriptor_104_e20_q16__0____C3DNode__8l;
  v7 = this;
  v6 = v8;
  C3DNodeApplyHierarchy(a2, v5);
}

void sub_21BF91C04(_Unwind_Exception *a1)
{
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 64);
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 32);
  C3DSceneSourcePerformConsistencyCheck(v1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN23btC3DMultiMeshInterfaceC2EP9__C3DNode_block_invoke(float32x4_t *a1, float32x4_t *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a1[6].i64[0];
  Geometry = C3DNodeGetGeometry(a2);
  if (Geometry)
  {
    Mesh = C3DGeometryGetMesh(Geometry);
    if (Mesh)
    {
      v7 = Mesh;
      WorldMatrix = C3DNodeGetWorldMatrix(a2);
      C3DMatrix4x4Mult(WorldMatrix, a1 + 2, v43);
      SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v7, 0, 0, 1);
      v10 = SourceWithSemanticAtIndex;
      if (SourceWithSemanticAtIndex)
      {
        Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex);
        Library = C3DSceneSourceGetLibrary(Accessor);
        Count = C3DMeshSourceGetCount(v10);
        Data = C3DMeshSourceGetData(v10);
        BytePtr = CFDataGetBytePtr(Data);
        v16 = *(v4 + 68);
        v17 = v16 + Count;
        if (Count >= 1 && *(v4 + 72) < v17)
        {
          if (v17)
          {
            v18 = btAlignedAllocInternal(16 * v17, 16);
          }

          else
          {
            v18 = 0;
          }

          if (*(v4 + 68) >= 1)
          {
            v19 = 0;
            v20 = 16 * *(v4 + 68);
            do
            {
              *(v18 + v19) = *(*(v4 + 80) + v19);
              v19 += 16;
            }

            while (v20 != v19);
          }

          v21 = *(v4 + 80);
          if (v21 && *(v4 + 88) == 1)
          {
            btAlignedFreeInternal(v21);
          }

          *(v4 + 88) = 1;
          *(v4 + 80) = v18;
          *(v4 + 72) = v17;
        }

        *(v4 + 68) = v17;
        ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
        v24 = ComponentsValueType;
        if (ComponentsValueType == 6 || ComponentsValueType == 1)
        {
          if (Count >= 1)
          {
            v25 = v16;
            v26 = Count;
            do
            {
              if (v24 == 1)
              {
                v23.i64[0] = *BytePtr;
                v23.i32[2] = *(BytePtr + 2);
              }

              else
              {
                v23 = *BytePtr;
                *v23.f32 = vcvt_f32_f64(*BytePtr);
                v27 = *(BytePtr + 2);
                v23.f32[2] = v27;
              }

              v28 = vmvnq_s8(vceqq_f32(v23, v23));
              v28.i32[3] = 0;
              *buf = v43[0];
              v45 = v43[1];
              v46 = v43[2];
              v47 = v43[3];
              *v23.i64 = C3DVector3MultMatrix4x4(buf, vbicq_s8(v23, vcltzq_s32(v28)));
              v23.i32[3] = 0;
              *(*(v4 + 80) + 16 * v25++) = v23;
              BytePtr += Library;
              --v26;
            }

            while (v26);
          }
        }

        else
        {
          v29 = scn_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v24;
            _os_log_impl(&dword_21BEF7000, v29, OS_LOG_TYPE_DEFAULT, "Warning: Physics shape construction does not support meshes with positions value type different from double or float. (%d)", buf, 8u);
          }
        }

        ElementsCount = C3DMeshGetElementsCount(v7);
        if (ElementsCount >= 1)
        {
          for (i = 0; i != ElementsCount; i = (i + 1))
          {
            CFRetain(v7);
            v32 = *(v4 + 36);
            if (v32 == *(v4 + 40))
            {
              v33 = v32 ? 2 * v32 : 1;
              if (v32 < v33)
              {
                if (v33)
                {
                  v34 = btAlignedAllocInternal(32 * v33, 16);
                  v32 = *(v4 + 36);
                }

                else
                {
                  v34 = 0;
                }

                if (v32 >= 1)
                {
                  v35 = 0;
                  v36 = 32 * v32;
                  do
                  {
                    v37 = (v34 + v35);
                    v38 = (*(v4 + 48) + v35);
                    v39 = v38[1];
                    *v37 = *v38;
                    v37[1] = v39;
                    v35 += 32;
                  }

                  while (v36 != v35);
                }

                v40 = *(v4 + 48);
                if (v40 && *(v4 + 56) == 1)
                {
                  btAlignedFreeInternal(v40);
                }

                *(v4 + 56) = 1;
                *(v4 + 48) = v34;
                *(v4 + 40) = v33;
                v32 = *(v4 + 36);
              }
            }

            v41 = *(v4 + 48) + 32 * v32;
            *v41 = v7;
            *(v41 + 8) = i;
            *(v41 + 16) = v16;
            *(v41 + 20) = Count;
            ++*(v4 + 36);
          }
        }
      }
    }
  }

  return 0;
}

void btC3DMultiMeshInterface::~btC3DMultiMeshInterface(btC3DMultiMeshInterface *this)
{
  btC3DMultiMeshInterface::~btC3DMultiMeshInterface(this);

  btAlignedFreeInternal(v1);
}

{
  *this = &unk_282DC34D8;
  v2 = *(this + 9);
  if (v2 >= 1)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(this + 6) + v3);
      if (v5)
      {
        CFRelease(v5);
        v2 = *(this + 9);
      }

      v3 += 32;
    }
  }

  v6 = *(this + 10);
  if (v6 && *(this + 88) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 88) = 1;
  *(this + 10) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  v7 = *(this + 6);
  if (v7 && *(this + 56) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;

  C3DSceneSourcePerformConsistencyCheck(this);
}

void btC3DMultiMeshInterface::getLockedVertexIndexBase()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    btC3DMultiMeshInterface::getLockedVertexIndexBase();
  }
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1(&dword_21BEF7000, v0, v1, "Unreachable code: This is not yet implemented", v2, v3, v4, v5, v6);
}

const void *btC3DMultiMeshInterface::getLockedReadOnlyVertexIndexBase(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, const UInt8 **a6, _DWORD *a7, int *a8, int *a9, int a10)
{
  v13 = *(a1 + 48) + 32 * a10;
  *a3 = *(v13 + 20);
  *a2 = *(a1 + 80) + 16 * *(v13 + 16);
  *a4 = 0;
  *a5 = 16;
  result = C3DMeshGetElementAtIndex(*v13, *(v13 + 8), 1);
  if (result)
  {

    return __fillMeshElementInfo(result, a6, a7, a8, a9);
  }

  return result;
}

void sub_21BF921A8(_Unwind_Exception *a1)
{
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 64);
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 32);
  C3DSceneSourcePerformConsistencyCheck(v1);
  _Unwind_Resume(a1);
}

void btTriangleInfoMap::btTriangleInfoMap(btTriangleInfoMap *this)
{
  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 44) = 0;
  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 76) = 0;
  *(this + 128) = 1;
  *(this + 15) = 0;
  *(this + 108) = 0;
  *this = &unk_282DC3560;
  *(this + 136) = xmmword_21C280350;
  *(this + 19) = 0x322BCC7640C90FDBLL;
}

void btTriangleInfoMap::~btTriangleInfoMap(btTriangleInfoMap *this)
{
  btHashMap<btHashInt,btTriangleInfo>::~btHashMap(this + 8);
}

{
  v2 = *(this + 15);
  if (v2 && *(this + 128) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 128) = 1;
  *(this + 15) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v3 = *(this + 11);
  if (v3 && *(this + 96) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v4 = *(this + 7);
  if (v4 && *(this + 64) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v5 = *(this + 3);
  if (v5 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;

  JUMPOUT(0x21CF07610);
}

const char *btTriangleInfoMap::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = *(a1 + 136);
  *(a2 + 48) = *(a1 + 156);
  v6 = *(a1 + 12);
  *(a2 + 56) = v6;
  if (v6)
  {
    v7 = (*(*a3 + 56))(a3, *(a1 + 24));
    *a2 = v7;
    if (v7)
    {
      v8 = *(a2 + 56);
      v9 = (*(*a3 + 32))(a3, 4, v8);
      v10 = *(a1 + 24);
      if (v8 >= 1)
      {
        v11 = *(v9 + 8);
        v12 = *(a1 + 24);
        do
        {
          v13 = *v12++;
          *v11++ = v13;
          --v8;
        }

        while (v8);
      }

      (*(*a3 + 40))(a3, v9, "int", 1497453121, v10);
    }
  }

  else
  {
    *a2 = 0;
  }

  v14 = *(a1 + 44);
  *(a2 + 52) = v14;
  if (v14)
  {
    v15 = (*(*a3 + 56))(a3, *(a1 + 56));
    *(a2 + 8) = v15;
    if (v15)
    {
      v16 = *(a2 + 52);
      v17 = (*(*a3 + 32))(a3, 4, v16);
      v18 = *(a1 + 56);
      if (v16 >= 1)
      {
        v19 = *(v17 + 8);
        v20 = *(a1 + 56);
        do
        {
          v21 = *v20++;
          *v19++ = v21;
          --v16;
        }

        while (v16);
      }

      (*(*a3 + 40))(a3, v17, "int", 1497453121, v18);
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }

  v22 = *(a1 + 76);
  *(a2 + 60) = v22;
  if (v22)
  {
    v23 = (*(*a3 + 56))(a3, *(a1 + 88));
    *(a2 + 16) = v23;
    if (v23)
    {
      v24 = *(a2 + 60);
      v25 = (*(*a3 + 32))(a3, 16, v24);
      v26 = *(a1 + 88);
      if (v24 >= 1)
      {
        v27 = *(v25 + 8);
        v28 = *(a1 + 88);
        do
        {
          *(v27 + 4) = *(v28 + 1);
          *(v27 + 12) = v28[3];
          v29 = *v28;
          v28 += 4;
          *v27 = v29;
          v27 += 16;
          --v24;
        }

        while (v24);
      }

      (*(*a3 + 40))(a3, v25, "btTriangleInfoData", 1497453121, v26);
    }
  }

  else
  {
    *(a2 + 16) = 0;
  }

  v30 = *(a1 + 108);
  *(a2 + 64) = v30;
  if (v30)
  {
    v31 = (*(*a3 + 56))(a3, *(a1 + 120));
    *(a2 + 24) = v31;
    if (v31)
    {
      v32 = *(a2 + 60);
      v33 = (*(*a3 + 32))(a3, 4, v32);
      v34 = *(a1 + 120);
      if (v32 >= 1)
      {
        v35 = *(v33 + 8);
        v36 = *(a1 + 120);
        do
        {
          v37 = *v36++;
          *v35++ = v37;
          --v32;
        }

        while (v32);
      }

      (*(*a3 + 40))(a3, v33, "int", 1497453121, v34);
    }
  }

  else
  {
    *(a2 + 24) = 0;
  }

  return "btTriangleInfoMapData";
}

uint64_t btHashMap<btHashInt,btTriangleInfo>::~btHashMap(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && *(a1 + 120) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(a1 + 120) = 1;
  *(a1 + 112) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  v3 = *(a1 + 80);
  if (v3 && *(a1 + 88) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(a1 + 88) = 1;
  *(a1 + 80) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void btBox2dShape::btBox2dShape(btBox2dShape *this, float32x4_t *a2)
{
  btPolyhedralConvexShape::btPolyhedralConvexShape(this);
  *v4 = &unk_282DC98B0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = vneg_f32(*a2->f32);
  *(v4 + 104) = 0;
  v5 = -a2->f32[1];
  *(v4 + 112) = a2->i32[0];
  *(v4 + 116) = v5;
  *(v4 + 120) = 0;
  *(v4 + 128) = a2->i32[0];
  *(v4 + 132) = a2->i32[1];
  *(v4 + 136) = 0;
  *(v4 + 144) = -a2->f32[0];
  *(v4 + 148) = a2->i32[1];
  *(v4 + 152) = xmmword_21C280360;
  *(v4 + 168) = 0;
  *(v4 + 176) = 1065353216;
  *(v4 + 188) = 0;
  *(v4 + 180) = 0;
  *(v4 + 196) = xmmword_21C280370;
  *(v4 + 212) = 0;
  *(v4 + 220) = 0;
  if (a2->f32[0] <= a2->f32[1])
  {
    v6 = a2->f32[0];
  }

  else
  {
    v6 = a2->f32[1];
  }

  v7 = off_282DC9910(v4);
  v8.n128_f32[0] = v6 * 0.1;
  if ((v6 * 0.1) < v7)
  {
    (*(*this + 88))(this, v8.n128_f32[0]);
  }

  *(this + 2) = 17;
  *v9.i64 = (*(*this + 96))(this, v8);
  v15 = v9;
  v10 = (*(*this + 96))(this);
  v14 = LODWORD(v10);
  v11 = (*(*this + 96))(this);
  v12 = v15;
  v12.i32[1] = v14;
  v12.f32[2] = v11;
  v13 = vsubq_f32(vmulq_f32(*a2, *(this + 2)), v12);
  v13.i32[3] = 0;
  *(this + 3) = v13;
}

uint64_t scn_cone_x4_fill(uint64_t result, int32x4_t *a2, unsigned int a3)
{
  if (a3 + 3 >= 4)
  {
    v3 = 0;
    v4 = a2 + 6;
    v5 = result + 64;
    v6.i64[0] = 0x7F0000007FLL;
    v6.i64[1] = 0x7F0000007FLL;
    v7 = vnegq_f32(v6);
    do
    {
      v8 = 0uLL;
      v9 = 0;
      v10 = 0;
      v11 = v7;
      v12 = 0uLL;
      if (v3 < a3)
      {
        v11 = v4[-6];
        v12 = v4[-5];
        v9.i32[0] = v4[-4].i32[0];
        v10 = v4[-4].i32[1];
      }

      v13 = 0;
      v14 = v7;
      v15 = 0;
      if (v3 + 1 < a3)
      {
        v14 = v4[-3];
        v8 = v4[-2];
        v15 = *v4[-1].i8;
      }

      v16 = 0uLL;
      v17 = 0uLL;
      v18 = v7;
      if (v3 + 2 < a3)
      {
        v18 = *v4;
        v17 = v4[1];
        v13 = v4[2].i64[0];
      }

      v19 = 0;
      v20 = v7;
      if (v3 + 3 < a3)
      {
        v20 = v4[3];
        v16 = v4[4];
        v19 = v4[5].i64[0];
      }

      v21 = vzip1q_s32(v11, v18);
      v32.val[0] = vzip2q_s32(v11, v18).u64[0];
      v22 = vzip1q_s32(v14, v20);
      v32.val[1] = vzip2q_s32(v14, v20).u64[0];
      *&v23 = __PAIR64__(v15.u32[1], v10);
      *(&v23 + 1) = __PAIR64__(HIDWORD(v19), HIDWORD(v13));
      v24 = vzip1q_s32(v12, v17);
      *&v25 = vzip1_s32(v9, v15);
      *(&v25 + 1) = __PAIR64__(v19, v13);
      v26 = (v5 - 64);
      vst2_f32(v26, v21);
      v27 = (v5 - 32);
      vst2_f32(v27, v32);
      v31.val[0] = vzip2q_s32(v12, v17).u64[0];
      v28 = vzip1q_s32(v8, v16);
      v31.val[1] = vzip2q_s32(v8, v16).u64[0];
      v29 = (v5 - 16);
      vst2_f32(v29, v24);
      *(v5 - 48) = vzip2q_s32(v21, v22);
      *v5 = vzip2q_s32(v24, v28);
      v30 = (v5 + 16);
      vst2_f32(v30, v31);
      *(v5 + 32) = v25;
      *(v5 + 48) = v23;
      v3 += 4;
      v4 += 12;
      v5 += 128;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v3);
  }

  return result;
}

float32x4_t *scn_cone_x4_filter(float32x4_t *result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v14 = vnegq_f32(v8);
    v15 = vnegq_f32(*a3);
    v16 = vnegq_f32(v7);
    v17 = vnegq_f32(v12);
    v18 = vnegq_f32(*a4);
    v19 = vnegq_f32(v11);
    v20 = result + 4;
    do
    {
      v21 = v20[-4];
      v22 = v20[-3];
      v23 = v20[-2];
      v24 = v20[2];
      v25 = vnegq_f32(v24);
      v26 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v22), v21, v6), v23, v8));
      v27 = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v22), v21, v10), v23, v12));
      if ((vminvq_u32(vornq_s8(vmvnq_s8(vcgeq_f32(v26, v25)), vcgeq_f32(v27, v25))) & 0x80000000) != 0)
      {
        if ((v5 & 1) == 0)
        {
          *(a5 + (v5 >> 1)) = 0;
        }
      }

      else
      {
        v28 = v20[3];
        v29 = v20[1];
        v30 = v20[-1];
        v31 = vmlaq_f32(vmulq_f32(*v20, v14), v29, v7);
        v32 = vmlaq_f32(vmulq_f32(v29, v15), v30, v8);
        v33 = vmlaq_f32(vmulq_f32(v30, v16), *v20, v6);
        v34 = vmlaq_f32(vmulq_f32(*v20, vnegq_f32(v33)), v29, v32);
        v35 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v31)), v30, v33);
        v36 = vmlaq_f32(vmulq_f32(v30, vnegq_f32(v32)), *v20, v31);
        v37 = vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v34, v34), v36, v36);
        v38 = vrsqrteq_f32(v37);
        v39 = vmulq_f32(v38, vrsqrtsq_f32(v37, vmulq_f32(v38, v38)));
        v40 = vbicq_s8(vmulq_f32(v39, vrsqrtsq_f32(v37, vmulq_f32(v39, v39))), vceqzq_f32(v37));
        v41 = vmlaq_f32(v21, v24, v30);
        v42 = vmlaq_f32(v22, v24, *v20);
        v43 = vmlaq_f32(v23, v24, v29);
        v44 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, vmlaq_f32(v42, v28, vmulq_f32(v40, vnegq_f32(v35)))), vmlaq_f32(v41, v28, vmulq_f32(v40, vnegq_f32(v34))), v6), vmlaq_f32(v43, v28, vmulq_f32(v40, vnegq_f32(v36))), v8));
        v45 = vmlaq_f32(vmulq_f32(*v20, v17), v29, v11);
        v46 = vmlaq_f32(vmulq_f32(v29, v18), v30, v12);
        v47 = vmlaq_f32(vmulq_f32(v30, v19), *v20, v10);
        v48 = vmlaq_f32(vmulq_f32(*v20, vnegq_f32(v47)), v29, v46);
        v49 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v45)), v30, v47);
        v50 = vmlaq_f32(vmulq_f32(v30, vnegq_f32(v46)), *v20, v45);
        v51 = vmlaq_f32(vmlaq_f32(vmulq_f32(v49, v49), v48, v48), v50, v50);
        v52 = vrsqrteq_f32(v51);
        v53 = vmulq_f32(v52, vrsqrtsq_f32(v51, vmulq_f32(v52, v52)));
        v54 = vbicq_s8(vmulq_f32(v53, vrsqrtsq_f32(v51, vmulq_f32(v53, v53))), vceqzq_f32(v51));
        v55 = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, vmlaq_f32(v42, v28, vmulq_f32(v54, vnegq_f32(v49)))), vmlaq_f32(v41, v28, vmulq_f32(v54, vnegq_f32(v48))), v10), vmlaq_f32(v43, v28, vmulq_f32(v54, vnegq_f32(v50))), v12));
        v56 = vaddvq_s32(vandq_s8(vandq_s8(vorrq_s8(vcltzq_f32(vmulq_f32(v26, v44)), vcgezq_f32(vminnmq_f32(v26, v44))), vorrq_s8(vcltzq_f32(vmulq_f32(v27, v55)), vcgezq_f32(vminnmq_f32(v27, v55)))), xmmword_21C27FE30));
        v57 = v5 >> 1;
        if (v5)
        {
          v56 = *(a5 + v57) | (16 * v56);
        }

        *(a5 + v57) = v56;
      }

      ++v5;
      v20 += 8;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t scn_sphere_x4_fill(uint64_t result, int32x4_t *a2, unsigned int a3)
{
  if (a3 + 3 >= 4)
  {
    v3 = 0;
    v4 = (result + 32);
    v5 = a2 + 2;
    do
    {
      v6 = xmmword_21C280420;
      if (v3 < a3)
      {
        v6 = v5[-2];
      }

      v7 = xmmword_21C280420;
      if (v3 + 1 < a3)
      {
        v7 = v5[-1];
      }

      v8 = xmmword_21C280420;
      if (v3 + 2 < a3)
      {
        v8 = *v5;
      }

      v9 = xmmword_21C280420;
      if (v3 + 3 < a3)
      {
        v9 = v5[1];
      }

      v10 = vzip1q_s32(v6, v8);
      v16.val[0] = vzip2q_s32(v6, v8).u64[0];
      v11 = vzip1q_s32(v7, v9);
      *&v12 = vuzp2q_s32(vuzp2q_s32(v6, v7), v6).u64[0];
      *(&v12 + 1) = __PAIR64__(v9.u32[3], v8.u32[3]);
      v16.val[1] = vzip2q_s32(v7, v9).u64[0];
      v13 = v4 - 8;
      vst2_f32(v13, v10);
      *(v4 - 1) = vzip2q_s32(v10, v11);
      v14 = v4 + 16;
      vst2_f32(v4, v16);
      v15 = v4 + 4;
      *v15 = v12;
      v3 += 4;
      v5 += 4;
      v4 = v14;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v3);
  }

  return result;
}

float32x4_t *scn_sphere_x4_filter(float32x4_t *result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v14 = result + 2;
    do
    {
      v15 = vnegq_f32(v14[1]);
      v16 = vaddvq_s32(vandq_s8(vandq_s8(vcgeq_f32(vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v14[-1]), v14[-2], v6), *v14, v8)), v15), vcgeq_f32(vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v14[-1]), v14[-2], v10), *v14, v12)), v15)), xmmword_21C27FE30));
      v17 = v5 >> 1;
      if (v5)
      {
        v16 = *(a5 + v17) | (16 * v16);
      }

      *(a5 + v17) = v16;
      ++v5;
      v14 += 4;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t C3DWrapModeToMTLAddressMode(int a1)
{
  if (a1 >= 5)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DWrapModeToMTLAddressMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_AddressMode[a1];
}

uint64_t C3DFilterModeToMTLFilter(int a1)
{
  if (a1 >= 3)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFilterModeToMTLFilter_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_FilterMode[a1];
}

uint64_t C3DFilterModeToMTLMipFilter(int a1)
{
  if (a1 >= 3)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFilterModeToMTLFilter_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_MipFilterMode[a1];
}

uint64_t C3DImageTypeToMTLTextureType(int a1)
{
  if (a1 >= 8)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageTypeToMTLTextureType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_TextureType[a1];
}

uint64_t C3DCullModeToMTLCullMode(int a1)
{
  if (a1 >= 3)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCullModeToMTLCullMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_CullMode[a1];
}

uint64_t C3DFillModeToMTLFillMode(unsigned int a1)
{
  if (a1 >= 2)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFillModeToMTLFillMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_FillMode[a1];
}

uint64_t C3DBlendFactorToMTLBlendFactor(unsigned int a1)
{
  if (a1 >= 0xF)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DBlendFactorToMTLBlendFactor_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_BlendModes[a1];
}

uint64_t C3DBlendOpToMTLBlendOperation(unsigned int a1)
{
  if (a1 >= 5)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DBlendOpToMTLBlendOperation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_BlendOps[a1];
}

uint64_t C3DComparisonFuncToMTLCompareFunction(unsigned int a1)
{
  if (a1 >= 8)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DComparisonFuncToMTLCompareFunction_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_ComparisonFunc[a1];
}

uint64_t C3DComparisonFuncToMTLCompareFunctionReverse(unsigned int a1)
{
  if (a1 >= 8)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DComparisonFuncToMTLCompareFunction_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_ComparisonFuncReverse[a1];
}

uint64_t C3DStencilOpToMTLStencilOperation(unsigned int a1)
{
  if (a1 >= 8)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DStencilOpToMTLStencilOperation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_StencilOp[a1];
}

uint64_t SCNMTLPixelFormatSRGBVariant(uint64_t result)
{
  if (result > 499)
  {
    if (result > 506)
    {
      if (result <= 509)
      {
        if (result == 507)
        {
          return 527;
        }

        else if (result == 508)
        {
          return 528;
        }

        else
        {
          return 529;
        }
      }

      else if (result > 551)
      {
        if (result == 552)
        {
          return 553;
        }

        else if (result == 554)
        {
          return 555;
        }
      }

      else if (result == 510)
      {
        return 530;
      }

      else if (result == 550)
      {
        return 551;
      }
    }

    else if (result <= 502)
    {
      if (result == 500)
      {
        return 520;
      }

      else if (result == 501)
      {
        return 521;
      }

      else
      {
        return 522;
      }
    }

    else if (result > 504)
    {
      if (result == 505)
      {
        return 525;
      }

      else
      {
        return 526;
      }
    }

    else if (result == 503)
    {
      return 523;
    }

    else
    {
      return 524;
    }
  }

  else if (result <= 163)
  {
    if (result > 79)
    {
      switch(result)
      {
        case 80:
          return 81;
        case 160:
          return 161;
        case 162:
          return 163;
      }
    }

    else
    {
      switch(result)
      {
        case 10:
          return 11;
        case 30:
          return 31;
        case 70:
          return 71;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 178:
        result = 179;
        break;
      case 179:
      case 181:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 209:
        return result;
      case 180:
        result = 181;
        break;
      case 182:
        result = 183;
        break;
      case 204:
        result = 186;
        break;
      case 205:
        result = 187;
        break;
      case 206:
        result = 188;
        break;
      case 207:
        result = 189;
        break;
      case 208:
        result = 190;
        break;
      case 210:
        result = 192;
        break;
      case 211:
        result = 193;
        break;
      case 212:
        result = 194;
        break;
      case 213:
        result = 195;
        break;
      case 214:
        result = 196;
        break;
      case 215:
        result = 197;
        break;
      case 216:
        result = 198;
        break;
      case 217:
        result = 199;
        break;
      case 218:
        result = 200;
        break;
      default:
        if (result == 164)
        {
          result = 165;
        }

        else if (result == 166)
        {
          result = 167;
        }

        break;
    }
  }

  return result;
}

uint64_t SCNMTLPixelFormatNonSRGBVariant(uint64_t result)
{
  if (result <= 160)
  {
    if (result > 70)
    {
      if (result == 71)
      {
        return 70;
      }

      else if (result == 81)
      {
        return 80;
      }
    }

    else if (result == 11)
    {
      return 10;
    }

    else if (result == 31)
    {
      return 30;
    }
  }

  else if (result > 550)
  {
    switch(result)
    {
      case 551:
        return 550;
      case 553:
        return 552;
      case 555:
        return 554;
    }
  }

  else
  {
    switch(result)
    {
      case 161:
        result = 160;
        break;
      case 163:
        result = 162;
        break;
      case 165:
        result = 164;
        break;
      case 167:
        result = 166;
        break;
      case 179:
        result = 178;
        break;
      case 181:
        result = 180;
        break;
      case 183:
        result = 182;
        break;
      case 186:
        result = 204;
        break;
      case 187:
        result = 205;
        break;
      case 188:
        result = 206;
        break;
      case 189:
        result = 207;
        break;
      case 190:
        result = 208;
        break;
      case 192:
        result = 210;
        break;
      case 193:
        result = 211;
        break;
      case 194:
        result = 212;
        break;
      case 195:
        result = 213;
        break;
      case 196:
        result = 214;
        break;
      case 197:
        result = 215;
        break;
      case 198:
        result = 216;
        break;
      case 199:
        result = 217;
        break;
      case 200:
        result = 218;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t C3DRenderBufferFormatToMTLPixelFormat(int a1, uint64_t a2, char a3)
{
  v3 = a1 - 1;
  result = 80;
  switch(v3)
  {
    case 0:
      result = C3DMetalFramebufferPixelFormat(a3);
      break;
    case 1:
    case 26:
      return result;
    case 2:
      result = 10;
      break;
    case 3:
      result = 12;
      break;
    case 4:
      result = 13;
      break;
    case 5:
      result = 14;
      break;
    case 6:
      result = 20;
      break;
    case 7:
      result = 22;
      break;
    case 8:
      result = 23;
      break;
    case 9:
      result = 24;
      break;
    case 10:
      result = 25;
      break;
    case 11:
      result = 53;
      break;
    case 12:
      result = 54;
      break;
    case 13:
      result = 55;
      break;
    case 14:
      result = 30;
      break;
    case 15:
      result = 32;
      break;
    case 16:
      result = 33;
      break;
    case 17:
      result = 34;
      break;
    case 18:
      result = 60;
      break;
    case 19:
      result = 62;
      break;
    case 20:
      result = 63;
      break;
    case 21:
      result = 64;
      break;
    case 22:
      result = 65;
      break;
    case 23:
      result = 103;
      break;
    case 24:
      result = 104;
      break;
    case 25:
      result = 105;
      break;
    case 27:
      result = 70;
      break;
    case 28:
      result = 72;
      break;
    case 29:
      result = 73;
      break;
    case 30:
      result = 74;
      break;
    case 31:
      result = 110;
      break;
    case 32:
      result = 112;
      break;
    case 33:
      result = 113;
      break;
    case 34:
      result = 114;
      break;
    case 35:
      result = 115;
      break;
    case 36:
      result = 123;
      break;
    case 37:
      result = 124;
      break;
    case 38:
      result = 125;
      break;
    case 39:
      result = 250;
      break;
    case 40:
    case 41:
      result = 252;
      break;
    case 42:
    case 43:
      result = 253;
      break;
    case 44:
      result = 260;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t C3DMeshElementTypeToMTLPrimitiveType(int a1)
{
  if (a1 <= 1)
  {
    v2 = 4;
    if (a1 != 1)
    {
      v2 = 0;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (a1 == 5)
    {
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        C3DMeshElementTypeToMTLPrimitiveType_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    else
    {
      if (a1 != 4)
      {
        return a1 == 2;
      }

      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3DMeshElementTypeToMTLPrimitiveType_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    return 0;
  }
}

uint64_t SCNMTLPixelFormatFromBitmapContextDescription(uint64_t a1, uint64_t a2, CGContextRef context, char a4)
{
  v38 = *MEMORY[0x277D85DE8];
  BitmapInfo = CGBitmapContextGetBitmapInfo(context);
  ColorSpace = CGBitmapContextGetColorSpace(context);
  v10 = BitmapInfo & 0x7000;
  if ((BitmapInfo & 0x1B) == 2)
  {
    v11 = 0;
    v12 = v10 != 4096 && v10 != 0x2000;
LABEL_14:
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if ((BitmapInfo & 0x1B) != 1)
  {
    v11 = 0;
    goto LABEL_26;
  }

  v11 = 1;
  if ((BitmapInfo & 0x7000) == 0 || v10 == 12288)
  {
LABEL_26:
    v12 = 1;
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v12 = 1;
  if (v10 == 0x4000)
  {
    goto LABEL_14;
  }

  v11 = 0;
  if ((BitmapInfo & 0x100) != 0)
  {
LABEL_27:
    if (a2 == 32)
    {
      switch(a1)
      {
        case 1:
          return 55;
        case 4:
          return 125;
        case 2:
          return 105;
      }
    }

    else if (a2 == 16)
    {
      switch(a1)
      {
        case 1:
          return 25;
        case 4:
          return 115;
        case 2:
          return 65;
      }
    }

    goto LABEL_50;
  }

LABEL_15:
  if (!C3DLinearRenderingIsEnabled())
  {
    goto LABEL_34;
  }

  if (ColorSpace == C3DColorSpaceExtendedLinearSRGB() || ColorSpace == C3DColorSpaceLinearSRGB() || ColorSpace == C3DColorSpaceLinearGray() || (v14 = C3DColorSpaceLinearDisplayP3(), (a4 & 1) != 0) || ColorSpace == v14)
  {
    if (a2 == 16)
    {
      if (a1 == 1)
      {
        return 20;
      }

      if (a1 == 4 && (v11 & 1) != 0)
      {
        return 110;
      }

      goto LABEL_50;
    }

LABEL_34:
    if (a2 == 8)
    {
      if (a1 == 1)
      {
        return 10;
      }

      if (a1 == 2)
      {
        return 30;
      }

      if (a1 == 4 && v11 == 1)
      {
        return 70;
      }

      if (a1 == 4 && !v12)
      {
        return 80;
      }
    }

    goto LABEL_50;
  }

  if (a2 == 8)
  {
    if (a1 == 1)
    {
      return 11;
    }

    if (a1 == 2)
    {
      return 31;
    }

    if (a1 == 4 && v11 == 1)
    {
      return 71;
    }

    if (a1 == 4 && !v12)
    {
      return 81;
    }
  }

LABEL_50:
  v16 = scn_default_log();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    return 70;
  }

  v18 = (BitmapInfo >> 12) & 7;
  if (v18 > 4)
  {
    v19 = @"byteOrderUnknown";
  }

  else
  {
    v19 = off_2782FCB20[v18];
  }

  if ((BitmapInfo & 0x1F) > 7)
  {
    v20 = @"alphaUnknown";
  }

  else
  {
    v20 = off_2782FCB48[BitmapInfo & 0x1F];
  }

  v21 = @"yes";
  v22 = 138414082;
  v23 = context;
  v24 = 1024;
  if ((BitmapInfo & 0x100) == 0)
  {
    v21 = @"no";
  }

  v25 = a1;
  v26 = 1024;
  v27 = a2;
  v28 = 1024;
  v29 = BitmapInfo;
  v30 = 2112;
  v31 = v19;
  v32 = 2112;
  v33 = v20;
  v34 = 2112;
  v35 = v21;
  v36 = 2112;
  v37 = ColorSpace;
  v15 = 70;
  _os_log_error_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_ERROR, "Error: Failed to create Metal pixel format for %@ [%d components, %d bits per component, bitmap info: %u (%@|%@), float components: %@, color space: %@]", &v22, 0x46u);
  return v15;
}

uint64_t SCNMTLVertexFormatToC3DBaseType(unint64_t a1)
{
  if (a1 >= 0x36)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      SCNMTLVertexFormatToC3DBaseType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return __SCNMTLVertexFormatToC3DBaseTypeArray[a1];
}

uint64_t SCNMTLDataTypeFromC3DBaseType(int a1)
{
  if (a1 >= 46)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      SCNMTLDataTypeFromC3DBaseType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return mtl_DataType[a1];
}

uint64_t SCNMTLVertexFormatFromC3DBaseType(int a1)
{
  if (a1 >= 46)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      SCNMTLDataTypeFromC3DBaseType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return __SCNMTLAttributeFormatFromC3DBaseType[a1];
}

uint64_t SCNMTLPixelFormatIsUnsignedInt(uint64_t a1)
{
  result = 1;
  if ((a1 - 13) > 0x3C || ((1 << (a1 - 13)) & 0x1004010000100401) == 0)
  {
    v3 = a1 - 91;
    if (v3 > 0x20 || ((1 << v3) & 0x100401001) == 0)
    {
      return 0;
    }
  }

  return result;
}

__CFString *SCNMTLPixelFormatToString(uint64_t a1)
{
  if (a1 <= 122)
  {
    switch(a1)
    {
      case '5':
        result = @"R32Uint";
        break;
      case '6':
        result = @"R32Sint";
        break;
      case '7':
        result = @"R32Float";
        break;
      case '8':
      case '9':
      case ':':
      case ';':
      case '=':
      case 'B':
      case 'C':
      case 'D':
      case 'E':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'R':
      case 'S':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case '\\':
      case ']':
      case '_':
      case 'a':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
      case 'o':
        goto LABEL_28;
      case '<':
        result = @"RG16Unorm";
        break;
      case '>':
        result = @"RG16Snorm";
        break;
      case '?':
        result = @"RG16Uint";
        break;
      case '@':
        result = @"RG16Sint";
        break;
      case 'A':
        result = @"RG16Float";
        break;
      case 'F':
        result = @"RGBA8Unorm";
        break;
      case 'G':
        result = @"RGBA8Unorm_sRGB";
        break;
      case 'H':
        result = @"RGBA8Snorm";
        break;
      case 'I':
        result = @"RGBA8Uint";
        break;
      case 'J':
        result = @"RGBA8Sint";
        break;
      case 'P':
        result = @"BGRA8Unorm";
        break;
      case 'Q':
        result = @"BGRA8Unorm_sRGB";
        break;
      case 'Z':
        result = @"RGB10A2Unorm";
        break;
      case '[':
        result = @"RGB10A2Uint";
        break;
      case '^':
        result = @"BGR10A2Unorm";
        break;
      case 'g':
        result = @"RG32Uint";
        break;
      case 'h':
        result = @"RG32Sint";
        break;
      case 'i':
        result = @"RG32Float";
        break;
      case 'n':
        result = @"RGBA16Unorm";
        break;
      case 'p':
        result = @"RGBA16Snorm";
        break;
      case 'q':
        result = @"RGBA16Uint";
        break;
      case 'r':
        result = @"RGBA16Sint";
        break;
      case 's':
        result = @"RGBA16Float";
        break;
      default:
        result = @"Invalid";
        switch(a1)
        {
          case 0:
            return result;
          case 1:
            result = @"A8Unorm";
            break;
          case 10:
            result = @"R8Unorm";
            break;
          case 11:
            result = @"R8Unorm_sRGB";
            break;
          case 12:
            result = @"R8Snorm";
            break;
          case 13:
            result = @"R8Uint";
            break;
          case 14:
            result = @"R8Sint";
            break;
          case 20:
            result = @"R16Unorm";
            break;
          case 22:
            result = @"R16Snorm";
            break;
          case 23:
            result = @"R16Uint";
            break;
          case 24:
            result = @"R16Sint";
            break;
          case 25:
            result = @"R16Float";
            break;
          case 30:
            result = @"RG8Unorm";
            break;
          case 31:
            result = @"RG8Unorm_sRGB";
            break;
          case 32:
            result = @"RG8Snorm";
            break;
          case 33:
            result = @"RG8Uint";
            break;
          case 34:
            result = @"RG8Sint";
            break;
          default:
            goto LABEL_28;
        }

        break;
    }
  }

  else
  {
    if (a1 > 252)
    {
      if (a1 <= 552)
      {
        if (a1 == 253)
        {
          return @"Stencil8";
        }

        if (a1 == 552)
        {
          return @"BGRA10_XR";
        }
      }

      else
      {
        switch(a1)
        {
          case 553:
            return @"BGRA10_XR_sRGB";
          case 554:
            return @"BGR10_XR";
          case 555:
            return @"BGR10_XR_sRGB";
        }
      }
    }

    else
    {
      if (a1 <= 124)
      {
        if (a1 == 123)
        {
          return @"RGBA32Uint";
        }

        else
        {
          return @"RGBA32Sint";
        }
      }

      switch(a1)
      {
        case 125:
          return @"RGBA32Float";
        case 250:
          return @"Depth16Unorm";
        case 252:
          return @"Depth32Float";
      }
    }

LABEL_28:
    v4 = [MEMORY[0x277CCACA8] stringWithCString:MTLPixelFormatGetName() encoding:1];

    return [v4 stringByReplacingOccurrencesOfString:@"MTLPixelFormat" withString:&stru_282DCC058];
  }

  return result;
}

__CFString *SCNMTLStorageModeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unkown";
  }

  else
  {
    return off_2782FCB88[a1];
  }
}

__CFString *SCNMTLCPUCacheModeToString(uint64_t a1)
{
  if (a1)
  {
    return @"MTLCPUCacheModeWriteCombined";
  }

  else
  {
    return @"MTLCPUCacheModeDefaultCache";
  }
}

uint64_t SCNMTLFunctionTypeToProgramStage(uint64_t a1)
{
  if (a1 != 3)
  {
    return a1 == 2;
  }

  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    SCNMTLFunctionTypeToProgramStage_cold_1(v2);
  }

  return 2;
}

uint64_t SCNMTLTextureTypeGetArrayElementType(uint64_t a1)
{
  v1 = 5;
  v2 = 2;
  if (a1 != 3)
  {
    v2 = a1;
  }

  if (a1 != 6)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t SCNMTLTextureTypeMultisampledEquivalent(uint64_t a1)
{
  v1 = 4;
  if (a1 != 2)
  {
    v1 = a1;
  }

  if (a1 == 3)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t SCNMTLTextureTypeNonMultisampledEquivalent(uint64_t a1)
{
  v1 = 2;
  if (a1 != 4)
  {
    v1 = a1;
  }

  if (a1 == 8)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

__CFString *SCNMTLTextureTypeToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Unkown";
  }

  else
  {
    return off_2782FCBA8[a1];
  }
}

uint64_t SCNMTLTextureToC3DTextureType(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [a1 textureType];
  if (v2 < 8 && ((0xA5u >> v2) & 1) != 0)
  {
    return dword_21C280B9C[v2];
  }

  v4 = scn_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v5)
  {
    v6[0] = 67109120;
    v6[1] = [a1 textureType];
    _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_DEFAULT, "Warning: unsupported texture type %d", v6, 8u);
    return 0;
  }

  return result;
}

BOOL C3DValueWriteToMTLData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  Type = C3DValueGetType(a1);
  Bytes = C3DValueGetBytes(a1);
  v10 = Bytes;
  switch(a2)
  {
    case 3:
      result = 0;
      if (Type <= 6u)
      {
        if (Type <= 2u)
        {
          if (Type != 1)
          {
            if (Type == 2)
            {
              v20 = v10->i32[0];
LABEL_157:
              *a3 = v20;
              return 1;
            }

            return result;
          }

LABEL_123:
          v20 = *v10->i32;
          goto LABEL_157;
        }

        if (Type != 3)
        {
          if (Type == 6)
          {
            v20 = *v10->i32;
            goto LABEL_157;
          }

          return result;
        }

        LOBYTE(v8) = v10->i8[0];
LABEL_155:
        v20 = v8;
        goto LABEL_157;
      }

      if (Type > 0xEu)
      {
        if (Type == 15)
        {
          v20 = __from_half(v10->u16[0]);
          goto LABEL_157;
        }

        if (Type != 17)
        {
          return result;
        }

        LOWORD(v8) = v10->i16[0];
        goto LABEL_155;
      }

      if (Type == 7)
      {
        goto LABEL_123;
      }

      if (Type == 14)
      {
        v20 = v10->i16[0];
        goto LABEL_157;
      }

      return result;
    case 4:
      result = 0;
      if (Type <= 0x1Cu)
      {
        if (Type == 8)
        {
          goto LABEL_97;
        }

        if (Type == 18)
        {
          v32 = vcvt_f32_s32(*v10);
          goto LABEL_98;
        }

        return result;
      }

      switch(Type)
      {
        case 0x1Du:
          LOWORD(v8) = v10->i16[0];
          *&v25 = v8;
          v9.i16[0] = v10->i16[1];
          *v9.i32 = v9.u32[0];
          break;
        case 0x20u:
          *&v25 = v10->i16[0];
          *v9.i32 = v10->i16[1];
          break;
        case 0x2Bu:
          v48 = __from_half(v10->u16[0]);
          *a3 = __PAIR64__(COERCE_UNSIGNED_INT(__from_half(v10->u16[1])), LODWORD(v48));
          return 1;
        default:
          return result;
      }

      HIDWORD(v25) = v9.i32[0];
      goto LABEL_149;
    case 5:
      result = 0;
      if (Type > 0x1Du)
      {
        if (Type == 30)
        {
          v9 = vmovl_u16(*v10);
          *v9.i8 = vcvt_f32_u32(*v9.i8);
          v27 = WORD2(*v10);
LABEL_144:
          *&v9.i32[2] = v27;
          goto LABEL_145;
        }

        if (Type != 33)
        {
          if (Type != 44)
          {
            return result;
          }

          v51 = *v10;
          *v26.i32 = __from_half(v10->u16[0]);
          v47 = v26;
          v45 = __from_half(v51.u16[1]);
          v27 = __from_half(v51.u16[2]);
          v9 = v47;
          *&v9.i32[1] = v45;
          goto LABEL_144;
        }

        v9 = vmovl_s16(*v10);
        *v9.i8 = vcvt_f32_s32(*v9.i8);
        v21 = WORD2(*v10);
      }

      else
      {
        if (Type == 9 || Type == 10)
        {
LABEL_102:
          v16 = *v10->i8;
LABEL_103:
          *a3 = v16;
          return 1;
        }

        if (Type != 19)
        {
          return result;
        }

        *v9.i8 = vcvt_f32_s32(*v10);
        v21 = v10[1];
      }

      v27 = v21;
      goto LABEL_144;
    case 6:
      result = 0;
      if (Type <= 0x1Eu)
      {
        if (Type == 10)
        {
          goto LABEL_102;
        }

        if (Type != 20)
        {
          return result;
        }

        v33 = *v10->i8;
      }

      else
      {
        if (Type == 31)
        {
          v16 = vcvtq_f32_u32(vmovl_u16(*v10));
          goto LABEL_103;
        }

        if (Type != 34)
        {
          if (Type != 45)
          {
            return result;
          }

          v49 = *v10;
          v46 = __from_half(v10->u16[0]);
          v44 = __from_half(v49.u16[1]);
          v43 = __from_half(v49.u16[2]);
          v19 = __from_half(v49.u16[3]);
          v9.i64[0] = __PAIR64__(LODWORD(v44), LODWORD(v46));
          v9.i64[1] = __PAIR64__(LODWORD(v19), LODWORD(v43));
LABEL_145:
          *a3 = v9;
          return 1;
        }

        v33 = vmovl_s16(*v10);
      }

      v16 = vcvtq_f32_s32(v33);
      goto LABEL_103;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
      goto LABEL_23;
    case 15:
      if (Type != 11)
      {
        return 0;
      }

      v16 = *Bytes->i8;
      v17 = *Bytes[2].i8;
      v18 = *Bytes[6].i8;
      *(a3 + 32) = *Bytes[4].i8;
      *(a3 + 48) = v18;
      *(a3 + 16) = v17;
      goto LABEL_103;
    case 16:
      result = 0;
      if (Type > 6u)
      {
        if (Type <= 0xEu)
        {
          if (Type != 7)
          {
            if (Type != 14)
            {
              return result;
            }

            v15 = v10->i16[0];
            goto LABEL_153;
          }

LABEL_122:
          v15 = *v10->i32;
LABEL_153:
          *a3 = __to_half(v15);
          return 1;
        }

        if (Type != 17)
        {
          if (Type != 15)
          {
            return result;
          }

          *a3 = v10->i16[0];
          return 1;
        }

        LOWORD(v8) = v10->i16[0];
      }

      else
      {
        if (Type <= 2u)
        {
          if (Type != 1)
          {
            if (Type != 2)
            {
              return result;
            }

            v15 = v10->i32[0];
            goto LABEL_153;
          }

          goto LABEL_122;
        }

        if (Type != 3)
        {
          if (Type != 6)
          {
            return result;
          }

          v15 = *v10->i32;
          goto LABEL_153;
        }

        LOBYTE(v8) = v10->i8[0];
      }

      v15 = v8;
      goto LABEL_153;
    case 17:
      result = 0;
      if (Type > 0x1Cu)
      {
        switch(Type)
        {
          case 0x1Du:
            LOWORD(v8) = v10->i16[0];
            v39 = __to_half(v8);
            LOWORD(v40) = v10->i16[1];
            v41 = v40;
            break;
          case 0x20u:
            v39 = __to_half(v10->i16[0]);
            v41 = v10->i16[1];
            break;
          case 0x2Bu:
LABEL_62:
            v12 = v10->i32[0];
LABEL_72:
            *a3 = v12;
            return 1;
          default:
            return result;
        }

        *(a3 + 2) = __to_half(v41);
        *a3 = v39;
        return 1;
      }

      if (Type == 8)
      {
        LODWORD(v60) = HIDWORD(*v10);
        v34 = __to_half(COERCE_FLOAT(*v10));
        v35 = v60;
      }

      else
      {
        if (Type != 18)
        {
          return result;
        }

        v59 = HIDWORD(*v10);
        v34 = __to_half(v10->i32[0]);
        v35 = v59;
      }

      *(a3 + 2) = __to_half(v35);
      *a3 = v34;
      return 1;
    case 18:
      result = 0;
      if (Type > 0x1Du)
      {
        if (Type != 30)
        {
          if (Type != 33)
          {
            if (Type == 44)
            {
              goto LABEL_97;
            }

            return result;
          }

          v58 = *v10;
          v22 = __to_half(v10->i16[0]);
          v23 = __to_half(v58.i16[1]);
          v24 = v58.i16[2];
          goto LABEL_147;
        }

        v57 = *v10;
        v22 = __to_half(v10->u16[0]);
        v23 = __to_half(v57.u16[1]);
        v36 = v57.u16[2];
      }

      else
      {
        if (Type != 9 && Type != 10)
        {
          if (Type != 19)
          {
            return result;
          }

          v50 = *v10->i8;
          v22 = __to_half(*v10->i8);
          v23 = __to_half(SDWORD1(v50));
          v24 = DWORD2(v50);
LABEL_147:
          v36 = v24;
          goto LABEL_148;
        }

        v53 = *v10->i8;
        v22 = __to_half(COERCE_FLOAT(*v10->i8));
        v23 = __to_half(*(&v53 + 1));
        v36 = *(&v53 + 2);
      }

LABEL_148:
      v42 = __to_half(v36);
      LOWORD(v25) = v22;
      WORD1(v25) = v23;
      WORD2(v25) = v42;
      goto LABEL_149;
    case 19:
      result = 0;
      if (Type <= 0x1Eu)
      {
        if (Type == 10)
        {
          v56 = *v10->i8;
          v28 = __to_half(COERCE_FLOAT(*v10->i8));
          v29 = __to_half(*(&v56 + 1));
          v30 = __to_half(*(&v56 + 2));
          v37 = *(&v56 + 3);
          goto LABEL_128;
        }

        if (Type != 20)
        {
          return result;
        }

        v52 = *v10->i8;
        v28 = __to_half(*v10->i8);
        v29 = __to_half(SDWORD1(v52));
        v30 = __to_half(SDWORD2(v52));
        v31 = HIDWORD(v52);
      }

      else
      {
        if (Type == 31)
        {
          v54 = *v10;
          v28 = __to_half(v10->u16[0]);
          v29 = __to_half(v54.u16[1]);
          v30 = __to_half(v54.u16[2]);
          v37 = v54.u16[3];
LABEL_128:
          v38 = __to_half(v37);
          LOWORD(v25) = v28;
          WORD1(v25) = v29;
          WORD2(v25) = v30;
          HIWORD(v25) = v38;
          goto LABEL_149;
        }

        if (Type != 34)
        {
          if (Type == 45)
          {
            goto LABEL_97;
          }

          return result;
        }

        v55 = *v10;
        v28 = __to_half(v10->i16[0]);
        v29 = __to_half(v55.i16[1]);
        v30 = __to_half(v55.i16[2]);
        v31 = v55.i16[3];
      }

      v37 = v31;
      goto LABEL_128;
    case 29:
    case 33:
      result = 0;
      if (Type > 0xDu)
      {
        if (Type == 14 || Type == 17)
        {
          v12 = v10->i16[0];
          goto LABEL_72;
        }
      }

      else
      {
        if (Type == 2)
        {
          goto LABEL_62;
        }

        if (Type == 3)
        {
          v12 = v10->u8[0];
          goto LABEL_72;
        }
      }

      return result;
    case 30:
    case 34:
      if (Type == 32 || Type == 29)
      {
        LODWORD(v25) = Bytes->i16[0];
        HIDWORD(v25) = Bytes->i16[1];
LABEL_149:
        *a3 = v25;
      }

      else
      {
        if (Type != 18)
        {
          return 0;
        }

LABEL_97:
        v32 = *v10;
LABEL_98:
        *a3 = v32;
      }

      return 1;
    case 31:
    case 35:
      if (Type == 33 || Type == 30)
      {
        goto LABEL_68;
      }

      if (Type == 19)
      {
        goto LABEL_102;
      }

      return 0;
    case 32:
    case 36:
      if (Type == 34 || Type == 31)
      {
LABEL_68:
        v16 = vmovl_s16(*Bytes);
        goto LABEL_103;
      }

      if (Type == 20)
      {
        goto LABEL_102;
      }

      return 0;
    default:
      if (a2 == 53)
      {
        if (Type == 17 || Type == 14)
        {
          v13 = Bytes->i16[0] != 0;
          goto LABEL_108;
        }

        if (Type == 3)
        {
          v13 = Bytes->i8[0];
LABEL_108:
          *a3 = v13;
          return 1;
        }
      }

      else
      {
LABEL_23:
        v14 = scn_default_log();
        result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 138412290;
        v62 = MTLDataTypeString();
        _os_log_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_DEFAULT, "Warning: C3DValueWriteToMTLData - Unsupported data type %@", buf, 0xCu);
      }

      return 0;
  }
}

float __from_half(unsigned int a1)
{
  v1 = (a1 >> 10) & 0x1F;
  if (v1 && v1 != 31)
  {
    v1 = (v1 << 23) + 939524096;
  }

  else if (v1 == 31)
  {
    v1 = 2139095040;
  }

  LODWORD(result) = (a1 << 16) & 0x80000000 | (a1 >> 7) & 7 | (8 * (a1 & 0x3FF)) & 0x1FFF | ((a1 & 0x3FF) << 13) | v1;
  return result;
}

uint64_t __to_half(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = v2 - 112;
  v4 = v2 - 113;
  v5 = v1 | 0x7BFF;
  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    LOWORD(v6) = v1 + 1;
  }

  else
  {
    v6 = HIWORD(LODWORD(a1)) & 0x8000;
  }

  v7 = v6 | 0x7C00;
  if (v2 == 255)
  {
    v5 = v7;
  }

  if (v2 >= 0x71)
  {
    v8 = v5;
  }

  else
  {
    v8 = HIWORD(a1) & 0x8000;
  }

  v9 = HIWORD(LODWORD(a1)) & 0x8000 | (LODWORD(a1) >> 13) & 0x3FF | (v3 << 10);
  if (v4 > 0x1D)
  {
    LOWORD(v9) = v8;
  }

  return v9;
}

void C3DValueWriteToStructMember(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!C3DValueWriteToMTLData(a1, [a2 dataType], a3 + objc_msgSend(a2, "offset")))
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109378;
      v6[1] = C3DValueGetType(a1);
      v7 = 2112;
      v8 = a2;
      _os_log_impl(&dword_21BEF7000, v5, OS_LOG_TYPE_DEFAULT, "Warning: value unsupported %d of member %@", v6, 0x12u);
    }
  }
}

CGImageRef C3DCreateImageWithTexture(void *a1)
{
  v2 = [a1 pixelFormat];
  if (v2 > 79)
  {
    if ((v2 - 80) < 2)
    {
      v3 = 8194;
      goto LABEL_9;
    }

    if (v2 == 125)
    {
      v3 = 16641;
      v4 = 32;
      goto LABEL_10;
    }

    if (v2 == 115)
    {
      v3 = 12545;
      v4 = 16;
LABEL_10:
      v5 = ((v4 * [a1 width]) >> 1) & 0xFFFFFFFC;
      v6 = malloc_type_malloc(v5 * [a1 height], 0x100004077774924uLL);
      v7 = [a1 width];
      v8 = [a1 height];
      v9 = C3DColorSpaceSRGB();
      v10 = CGBitmapContextCreate(v6, v7, v8, v4, v5, v9, v3);
      if ([a1 storageMode] == 2)
      {
        v11 = [objc_msgSend(a1 "device")];
        v12 = [objc_msgSend(a1 "device")];
        v13 = [v12 commandBuffer];
        v14 = [v13 blitCommandEncoder];
        [v14 copyFromTexture:a1 toTexture:v11];
        [v14 endEncoding];
        [v13 commit];
        [v13 waitUntilCompleted];

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = [a1 width];
        v22 = [a1 height];
        v23 = 1;
        [v11 getBytes:v6 bytesPerRow:v5 fromRegion:&v18 mipmapLevel:0];
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = [a1 width];
        v22 = [a1 height];
        v23 = 1;
        [a1 getBytes:v6 bytesPerRow:v5 fromRegion:&v18 mipmapLevel:0];
      }

      Image = CGBitmapContextCreateImage(v10);
      CGContextRelease(v10);
      free(v6);
      return Image;
    }
  }

  else if ((v2 - 70) < 5)
  {
    v3 = 16385;
LABEL_9:
    v4 = 8;
    goto LABEL_10;
  }

  v17 = scn_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    C3DCreateImageWithTexture_cold_1(a1, v17);
  }

  return 0;
}

uint64_t SCNTextureUsageFromString(const void *a1)
{
  if (CFEqual(a1, @"shaderRead"))
  {
    return 1;
  }

  if (CFEqual(a1, @"shaderWrite"))
  {
    return 2;
  }

  if (CFEqual(a1, @"renderTarget"))
  {
    return 4;
  }

  return 16 * (CFEqual(a1, @"pixelFormatView") != 0);
}

__CFString *SCNTextureUsageToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = v2;
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    [v2 appendString:@"MTLTextureUsageShaderRead"];
    if ((a1 & 2) == 0)
    {
      if ((a1 & 4) == 0)
      {
        if ((a1 & 0x10) == 0)
        {
          return v3;
        }

        goto LABEL_22;
      }

      goto LABEL_14;
    }

    [v3 appendString:@" | "];
LABEL_11:
    [v3 appendString:@"MTLTextureUsageShaderWrite"];
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    if ((a1 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_14:
    [v3 appendString:@" | "];
    v4 = 0;
    goto LABEL_15;
  }

  if ((a1 & 2) != 0)
  {
    goto LABEL_11;
  }

  if ((a1 & 4) == 0)
  {
    if ((a1 & 0x10) == 0)
    {
      return @"MTLTextureUsageUnknown";
    }

    goto LABEL_20;
  }

LABEL_13:
  v4 = 1;
LABEL_15:
  [v3 appendString:@"MTLTextureUsageRenderTarget"];
LABEL_16:
  if ((a1 & 0x10) == 0)
  {
    if (!v4)
    {
      return v3;
    }

    return @"MTLTextureUsageUnknown";
  }

  if (!v4)
  {
LABEL_22:
    [v3 appendString:@" | "];
    [v3 appendString:@"MTLTextureUsagePixelFormatView"];
    return v3;
  }

LABEL_20:
  [v3 appendString:@"MTLTextureUsagePixelFormatView"];
  return @"MTLTextureUsageUnknown";
}

uint64_t SCNTextureUsageFromStrings(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    v5 |= SCNTextureUsageFromString(ValueAtIndex);
    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t C3DMeshSourceCreateWithMTLBuffer(__int16 a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2 && (v12 = scn_default_log(), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    C3DMeshSourceCreateWithMTLBuffer_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v20 = scn_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    C3DMeshSourceCreateWithMTLBuffer_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_6:
  v28 = SCNMTLVertexFormatToC3DBaseType(a3);
  ComponentType = C3DBaseTypeGetComponentType(v28);
  ComponentCount = C3DBaseTypeGetComponentCount(v28);
  v31 = C3DSourceAccessorCreate(ComponentType, ComponentCount, a4, a5, a6);
  v32 = C3DMeshSourceCreateWithAccessor(v31, a1);
  if (!v32)
  {
    v33 = scn_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v33, v34, v35, v36, v37, v38, v39, v40);
    }
  }

  C3DSourceAccessorSetSource(v31, v32);
  if (v31)
  {
    CFRelease(v31);
  }

  *(v32 + 72) = CFRetain(a2);
  *(v32 + 80) = a3;
  return v32;
}

__IOSurface *SCNMTLEnsureIOSurfaceBackingBufferValidity(__IOSurface *result, id *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      result = [*a2 iosurface];
      if (result)
      {
        v6 = result;
        IOSurfaceIncrementUseCount(result);
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __SCNMTLEnsureIOSurfaceBackingBufferValidity_block_invoke;
        v7[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v7[4] = v6;
        result = [(__IOSurface *)v4 addCompletedHandler:v7];
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t SCNMTLDeviceSupportsMemorylessStorage(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsMemorylessRenderTargets];
  }

  else
  {

    return [a1 supportsFeatureSet:5];
  }
}

uint64_t SCNMetalLanguageVersion()
{
  if (SCNMetalLanguageVersion_onceToken != -1)
  {
    SCNMetalLanguageVersion_cold_1();
  }

  return SCNMetalLanguageVersion_languageVersion;
}

uint64_t __SCNMetalLanguageVersion_block_invoke()
{
  result = C3DWasLinkedBeforeMajorOSYear2019();
  if (result)
  {
    v1 = 0x20000;
  }

  else
  {
    v1 = 131073;
    result = C3DWasLinkedBeforeMajorOSYear2020();
    if ((result & 1) == 0)
    {
      result = C3DWasLinkedBeforeMajorOSYear2021();
      if (result)
      {
        v1 = 131075;
      }

      else
      {
        v1 = 0x20000;
      }
    }
  }

  SCNMetalLanguageVersion_languageVersion = v1;
  return result;
}

__CFString *copyPathExtension(uint64_t a1)
{
  URL = C3DImageGetURL(a1);
  if (!URL)
  {
    return 0;
  }

  v2 = CFURLCopyPathExtension(URL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v2);
  CFStringLowercase(MutableCopy, 0);
  CFRelease(v3);
  return MutableCopy;
}

uint64_t C3DImageGetURL(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 96) == 1)
  {
    return *(a1 + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DImageGetTypeID()
{
  if (C3DImageGetTypeID_onceToken != -1)
  {
    C3DImageGetTypeID_cold_1();
  }

  return C3DImageGetTypeID_typeID;
}

double __C3DImageGetTypeID_block_invoke()
{
  C3DImageGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DImageContextClassSerializable;
  unk_2817412E0 = kC3DC3DImageContextClassSerializable;
  unk_2817412F0 = *off_282DC35D0;
  qword_281741298 = _C3DImageCopyInstanceVariables;
  return result;
}

uint64_t C3DImageCreate()
{
  if (C3DImageGetTypeID_onceToken != -1)
  {
    C3DImageGetTypeID_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DImageGetTypeID_typeID, 112);
  *(result + 116) &= 0xFCu;
  *(result + 120) = 1;
  return result;
}

uint64_t C3DImageCreateWithURL(const void *a1)
{
  v2 = C3DImageCreate();
  if (v2)
  {
    *(v2 + 88) = CFRetain(a1);
    *(v2 + 96) = 1;
  }

  return v2;
}

uint64_t C3DImageCreateWithData(const void *a1)
{
  v2 = C3DImageCreate();
  if (v2)
  {
    *(v2 + 88) = CFRetain(a1);
    *(v2 + 96) = 2;
  }

  return v2;
}

uint64_t C3DImageCreateWithRawData(const void *a1, unsigned __int8 a2, char a3, double a4)
{
  v8 = C3DImageCreateWithData(a1);
  _C3DImageCreateTextureRawData(v8, 0, 1, a4);
  TextureRawData = C3DImageGetTextureRawData(v8);
  *(TextureRawData + 4) = a2;
  *(TextureRawData + 5) = a3;
  *(TextureRawData + 10) = 1;
  if (a3 == 4)
  {
    v10 = a2;
    if (a2 == 128)
    {
LABEL_16:
      v12 = 125;
LABEL_22:
      *(TextureRawData + 36) = v12;
      goto LABEL_25;
    }

    if (a2 == 64)
    {
LABEL_17:
      v12 = 110;
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v10 = a2;
    if (a2 > 0x3Fu)
    {
      goto LABEL_14;
    }

    if (a2 == 16)
    {
LABEL_21:
      v12 = 30;
      goto LABEL_22;
    }

LABEL_12:
    if (v10 == 32)
    {
LABEL_13:
      v11 = xmmword_21C280BE0;
LABEL_24:
      *(TextureRawData + 24) = v11;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (a3 != 1)
  {
    goto LABEL_25;
  }

  v10 = a2;
  if (a2 <= 0x1Fu)
  {
    if (a2 == 8)
    {
      v11 = xmmword_21C280BF0;
      goto LABEL_24;
    }

    if (a2 != 16)
    {
      goto LABEL_25;
    }

    *(TextureRawData + 24) = vdup_n_s32(0x1909u);
    *(TextureRawData + 32) = 5123;
    goto LABEL_21;
  }

  if (a2 == 32)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v10 == 64)
  {
    goto LABEL_17;
  }

  if (v10 == 128)
  {
    goto LABEL_16;
  }

LABEL_25:
  CFArrayAppendValue(*(TextureRawData + 40), a1);
  return v8;
}

uint64_t _C3DImageCreateTextureRawData(uint64_t a1, int a2, char a3, double a4)
{
  pthread_mutex_lock(&bitmapAccessSharedMutex);
  if (*(a1 + 72))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DImageCreateTextureRawData_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  *(a1 + 72) = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040B13EBABEuLL);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v17 = *(a1 + 72);
  *(v17 + 40) = Mutable;
  *v17 = a2;
  *(a1 + 80) &= ~2u;
  *(a1 + 104) = a4;
  *(a1 + 116) = *(a1 + 116) & 0xFE | a3 | 0xC;
  return pthread_mutex_unlock(&bitmapAccessSharedMutex);
}

uint64_t C3DImageGetTextureRawData(uint64_t a1)
{
  pthread_mutex_lock(&bitmapAccessSharedMutex);
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 80) & 2) != 0)
  {
    *(a1 + 116) &= ~8u;
  }

  C3DImageGetSize(a1);
  v10 = *(a1 + 72);
  pthread_mutex_unlock(&bitmapAccessSharedMutex);
  return v10;
}

uint64_t C3DImageCreateWithPath(CFStringRef filePath)
{
  if (!filePath)
  {
    return 0;
  }

  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = C3DImageCreateWithURL(v1);
  CFRelease(v2);
  return v3;
}

uint64_t C3DImageCreateVerticalStripCubemapWithFaceImages(uint64_t *a1)
{
  v2 = 0;
  image[7] = *MEMORY[0x277D85DE8];
  do
  {
    if (!a1[v2])
    {
      v19 = scn_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        C3DImageCreateVerticalStripCubemapWithFaceImages_cold_2();
      }

      return 0;
    }

    ++v2;
  }

  while (v2 != 6);
  v3 = 0;
  v4 = 0;
  do
  {
    Size = C3DImageGetSize(a1[v3]);
    v6 = *(&Size + 1);
    if (*&Size != *(&Size + 1))
    {
      v37 = *&Size;
      v20 = scn_default_log();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LODWORD(image[0]) = 67109632;
      HIDWORD(image[0]) = v3;
      LOWORD(image[1]) = 2048;
      *(&image[1] + 2) = v37;
      WORD1(image[2]) = 2048;
      *(&image[2] + 4) = v6;
      v21 = "Error: Cannot build cubemap from array of images because image at index %d is not square: %fx%f";
      v22 = v20;
      v23 = 28;
      goto LABEL_46;
    }

    v7 = floorf(*&Size);
    if (v3)
    {
      v8 = floorf(*(&Size + 1));
      if (v7 != v4 || v8 != v4)
      {
        v38 = *&Size;
        v24 = scn_default_log();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        LODWORD(image[0]) = 67110144;
        HIDWORD(image[0]) = v3;
        LOWORD(image[1]) = 2048;
        *(&image[1] + 2) = v38;
        WORD1(image[2]) = 2048;
        *(&image[2] + 4) = v6;
        WORD2(image[3]) = 2048;
        *(&image[3] + 6) = v4;
        HIWORD(image[4]) = 2048;
        image[5] = v4;
        v21 = "Error: Cannot build cubemap from array of images because image at index %d (%fx%f) does not have the expected size (%zux%zu)";
        v22 = v24;
        v23 = 48;
LABEL_46:
        _os_log_error_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_ERROR, v21, image, v23);
        return 0;
      }
    }

    else
    {
      v4 = v7;
    }

    ++v3;
  }

  while (v3 != 6);
  v10 = 0;
  v11 = 0;
  while (1)
  {
    TextureRawData = C3DImageGetTextureRawData(a1[v10]);
    if (!TextureRawData)
    {
      break;
    }

    if (v10 * 8)
    {
      if (!C3DTextureRawDataIsEqual(v11, TextureRawData))
      {
        break;
      }
    }

    else
    {
      v11 = TextureRawData;
    }

    if (++v10 == 6)
    {
      v13 = C3DImageGetTextureRawData(*a1);
      v14 = C3DImageCreate();
      *&v15 = v4;
      *(&v15 + 1) = (6 * v4);
      _C3DImageCreateTextureRawData(v14, *v13, 0, v15);
      *(v14 + 116) |= 0x38u;
      *(v14 + 120) = 5;
      v16 = C3DImageGetTextureRawData(v14);
      C3DTextureRawDataCopyAttributes(v16, v13);
      for (i = 0; i != 6; ++i)
      {
        v18 = C3DImageGetTextureRawData(a1[i]);
        CFArrayAppendValue(*(v16 + 40), *(v18 + 40));
      }

      return v14;
    }
  }

  v27 = 0;
  memset(image, 0, 48);
  while (1)
  {
    v28 = C3DImageCopyCGImage(a1[v27]);
    if (!v28)
    {
      break;
    }

    image[v27++] = v28;
    if (v27 == 6)
    {
      ColorSpace = CGImageGetColorSpace(image[0]);
      v30 = CGBitmapContextCreate(0, v4, 6 * v4, 8uLL, 4 * v4, ColorSpace, 0x4001u);
      v31 = v4;
      for (j = 5; j != -1; --j)
      {
        v40.origin.x = 0.0;
        v40.origin.y = 0.0;
        v40.size.width = v31;
        v40.size.height = v31;
        CGContextDrawImage(v30, v40, image[j]);
        CGContextTranslateCTM(v30, 0.0, v31);
      }

      v33 = CGBitmapContextCreateImage(v30);
      v14 = C3DImageCreateWithCGImage(v33);
      *(v14 + 120) = 5;
      CGImageRelease(v33);
      CGContextRelease(v30);
      goto LABEL_40;
    }
  }

  v34 = scn_default_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    C3DImageCreateVerticalStripCubemapWithFaceImages_cold_1();
  }

  v14 = 0;
LABEL_40:
  for (k = 0; k != 6; ++k)
  {
    v36 = image[k];
    if (v36)
    {
      CFRelease(v36);
      image[k] = 0;
    }
  }

  return v14;
}

double C3DImageGetSize(uint64_t a1)
{
  if ((*(a1 + 116) & 8) == 0)
  {
    *(a1 + 104) = 0;
    if (_mayBeASTC(a1))
    {
      if (C3DASTCIsSupported() && (_loadASTC(a1) & 1) != 0)
      {
        goto LABEL_62;
      }

      if ((_mayBeKTX(a1) & 1) == 0)
      {
LABEL_9:
        if ((C3DASTCIsSupported() & 1) == 0 && *(a1 + 96) == 1)
        {
          v2 = *(a1 + 88);
          if (v2)
          {
            v3 = [objc_msgSend(v2 "URLByDeletingPathExtension")];
            if (C3DFileMayExistAtURL(v3))
            {
              v4 = *(a1 + 88);
              if (v4 != v3)
              {
                if (v4)
                {
                  CFRelease(v4);
                  *(a1 + 88) = 0;
                }

                if (v3)
                {
                  v5 = CFRetain(v3);
                }

                else
                {
                  v5 = 0;
                }

                *(a1 + 88) = v5;
              }
            }
          }
        }

LABEL_20:
        if (_mayBePVRTC(a1) && (_loadPVRTC(a1) & 1) != 0)
        {
          goto LABEL_62;
        }

        pthread_mutex_lock(&bitmapAccessSharedMutex);
        v6 = *(a1 + 64);
        if (v6)
        {
          Width = CGBitmapContextGetWidth(v6);
          Height = CGBitmapContextGetHeight(*(a1 + 64));
          *&v8 = Width;
          *(&v8 + 1) = Height;
          *(a1 + 104) = v8;
          pthread_mutex_unlock(&bitmapAccessSharedMutex);
          goto LABEL_62;
        }

        pthread_mutex_unlock(&bitmapAccessSharedMutex);
        v9 = *(a1 + 96);
        if (v9 == 1)
        {
          v12 = *(a1 + 88);
          if (v12)
          {
            v11 = C3DCreateImageSourceWithURL(v12);
            goto LABEL_30;
          }
        }

        else if (v9 == 2)
        {
          v10 = *(a1 + 88);
          if (v10)
          {
            v11 = CGImageSourceCreateWithData(v10, 0);
LABEL_30:
            v13 = v11;
            if (v11)
            {
              Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionaryAddValue(Mutable, *MEMORY[0x277CD3618], *MEMORY[0x277CBED10]);
              v15 = CGImageSourceCopyPropertiesAtIndex(v13, 0, Mutable);
              CFRelease(Mutable);
              v16 = 0;
              if (v15)
              {
                Value = CFDictionaryGetValue(v15, *MEMORY[0x277CD3450]);
                v18 = CFDictionaryGetValue(v15, *MEMORY[0x277CD3448]);
                v19 = CFDictionaryGetValue(v15, *MEMORY[0x277CD3410]);
                if (Value && v18)
                {
                  v20 = v19;
                  valuePtr = 0;
                  CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr + 4);
                  CFNumberGetValue(v18, kCFNumberFloatType, &valuePtr);
                  if (v20)
                  {
                    HIDWORD(v39) = 0;
                    CFNumberGetValue(v20, kCFNumberIntType, &v39 + 4);
                    v21 = SHIDWORD(v39) > 4;
                  }

                  else
                  {
                    v21 = 0;
                  }

                  v22 = CFDictionaryGetValue(v15, *MEMORY[0x277CD2F28]);
                  if (v22)
                  {
                    v23 = v22;
                    v24 = CFDictionaryGetValue(v15, *MEMORY[0x277CD2F30]);
                    if (v24)
                    {
                      v25 = v24;
                      v39 = 0;
                      CFNumberGetValue(v23, kCFNumberFloatType, &v39 + 4);
                      CFNumberGetValue(v25, kCFNumberFloatType, &v39);
                      if (*(&v39 + 1) != *&v39 && *&v39 > 0.01)
                      {
                        v26 = *&v39 / *(&v39 + 1);
                        if (*&v39 <= *(&v39 + 1))
                        {
                          v26 = 1.0;
                        }

                        if (*(&v39 + 1) <= *&v39)
                        {
                          v27 = 1.0;
                        }

                        else
                        {
                          v27 = *(&v39 + 1) / *&v39;
                        }

                        if (v21)
                        {
                          v28 = v26;
                        }

                        else
                        {
                          v28 = v27;
                        }

                        if (!v21)
                        {
                          v27 = v26;
                        }

                        *&valuePtr = v27 * *&valuePtr;
                        *(&valuePtr + 1) = v28 * *(&valuePtr + 1);
                      }
                    }
                  }

                  v29 = *&valuePtr;
                  if (v21)
                  {
                    *&v30 = *&valuePtr;
                  }

                  else
                  {
                    *&v30 = *(&valuePtr + 1);
                  }

                  if (v21)
                  {
                    v29 = *(&valuePtr + 1);
                  }

                  *(&v30 + 1) = v29;
                  v38 = v30;
                  CFRelease(v15);
                  v16 = v38;
                }

                else
                {
                  CFRelease(v15);
                  v16 = 0;
                }
              }

              *(a1 + 104) = v16;
              CFRelease(v13);
              if (COERCE_FLOAT(*(a1 + 104)) > 0.0)
              {
                goto LABEL_62;
              }
            }
          }
        }

        v31 = C3DImageCopyCGImage(a1);
        if (!v31)
        {
          if ((C3DIsRunningInSCNTool() & 1) == 0)
          {
            v36 = scn_default_log();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              C3DImageGetSize_cold_1();
            }
          }

          *(a1 + 116) |= 0x28u;
          if (C3DImageIsCubeMap(a1))
          {
            v34 = 16;
          }

          else
          {
            v34 = 0;
          }

          v33 = *(a1 + 116);
          goto LABEL_63;
        }

        v32 = v31;
        *(a1 + 104) = CGImageGetWidth(v31);
        *(a1 + 108) = CGImageGetHeight(v32);
        CFRelease(v32);
LABEL_62:
        v33 = *(a1 + 116) | 0x28;
        v34 = 16;
LABEL_63:
        *(a1 + 116) = v33 & 0xEF | v34;
        return *(a1 + 104);
      }
    }

    else if (!_mayBeKTX(a1))
    {
      goto LABEL_20;
    }

    if (_loadKTX(a1))
    {
      goto LABEL_62;
    }

    goto LABEL_9;
  }

  return *(a1 + 104);
}