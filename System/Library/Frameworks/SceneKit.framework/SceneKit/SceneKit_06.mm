uint64_t C3DAnimationManagerPlayAnimationNode(uint64_t a1, uint64_t a2)
{
  if (!a2 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a2 + 121);
  *(a2 + 121) = v20 & 0xFFFBFFFF;
  C3DAnimationNodeSetPaused(a2, 0);
  Animation = C3DAnimationNodeGetAnimation(a2);
  C3DTransactionGetAtomicTime();
  v23 = v22;
  PauseTime = C3DAnimationNodeGetPauseTime(Animation);
  if (C3DAnimationGetIsSceneTimeBased(Animation))
  {
    *(a2 + 80) = C3DAnimationNodeGetPauseTime(Animation);
  }

  else
  {
    v25 = v23 + PauseTime;
    if ((v20 & 0x200000) == 0 || *(a2 + 128) == 0.0)
    {
      C3DAnimationNodeSetStartTime(a2, v25);
      if ((C3DAnimationGetIsSceneTimeBased(Animation) & 1) == 0 && (C3DAnimationGetIsImplicit(Animation) & 1) == 0)
      {
        C3DAnimationNodeRestart(a2);
      }
    }

    else
    {
      v26 = C3DAnimationNodeGetPauseTime(a2);
      C3DAnimationNodeTimeJump(a2, v25 - v26);
      *(a2 + 128) = 0;
    }
  }

  *(a2 + 104) = 0;
  *(a2 + 121) &= 0xFFFFFFF3;
  *(a2 + 72) = -1082130432;
  v27 = *(a2 + 152);
  if (v27 != -1)
  {
    ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 24), v27);
    C3DAnimationStackSetConstant(ValuePtrAtIndex, 0, a1);
  }

  result = C3DAnimationNodeGetChildCount(a2);
  if (result >= 1)
  {
    v30 = result;
    for (i = 0; i != v30; ++i)
    {
      ChildAtIndex = C3DAnimationNodeGetChildAtIndex(a2, i);
      result = C3DAnimationManagerPlayAnimationNode(a1, ChildAtIndex);
    }
  }

  return result;
}

void *C3DAnimationManagerAddAnimationForKey(uint64_t a1, const void *a2, const void *a3, void *a4, const void *a5)
{
  result = _C3DAnimationManagerAddAnimationForKey(a1, a2, a3, a4, a5);
  if (result)
  {

    return C3DAnimationManagerPlayAnimationNode(a1, result);
  }

  return result;
}

const void *_resolveAnimationGroupTargets(uint64_t a1, const void *a2, uint64_t a3, const __CFArray *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  AnimationCount = C3DAnimationGroupGetAnimationCount(a1);
  if (AnimationCount < 1)
  {
    return 0;
  }

  v5 = AnimationCount;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 1;
  do
  {
    AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, v7);
    if (C3DAnimationIsGroup(AnimationAtIndex))
    {
      v11 = _resolveAnimationGroupTargets(AnimationAtIndex, a2, a3, a4);
      v12 = v11;
      if (v11)
      {
        if (v8)
        {
          v13 = CFGetTypeID(v11);
          if (v13 == C3DNodeGetTypeID())
          {
            v14 = _commonAncessor(a4, v6, v12);
LABEL_45:
            v6 = v14;
            v8 = 1;
            goto LABEL_53;
          }
        }
      }

      else if ((C3DWasLinkedBeforeMajorOSYear2018() & 1) == 0)
      {
        goto LABEL_53;
      }

      v8 = 0;
      if (v6)
      {
        v26 = v6 == v12;
      }

      else
      {
        v26 = 1;
      }

      v27 = v26;
      v9 &= v27;
      v6 = v12;
      goto LABEL_53;
    }

    KeyPath = C3DAnimationGetKeyPath(AnimationAtIndex);
    v16 = C3DModelDescriptionResolveRootComponentInPath(KeyPath, a2, a3, 0);
    if (!v16 && (v17 = scn_default_log(), os_log_type_enabled(v17, OS_LOG_TYPE_ERROR)))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = KeyPath;
      _os_log_error_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_ERROR, "Error: failed to resolve animation path (%@)", &buf, 0xCu);
      if (KeyPath)
      {
LABEL_11:
        Count = CFArrayGetCount(KeyPath);
        v19 = v16 == 0;
        if (Count < 1)
        {
          v19 = 1;
        }

        if (!v19)
        {
          TypeID = C3DNodeGetTypeID();
          if (TypeID == CFGetTypeID(v16))
          {
            Name = C3DNodeGetName(v16);
            if (Name)
            {
              v22 = [@"/" stringByAppendingString:Name];
              ValueAtIndex = CFArrayGetValueAtIndex(KeyPath, 0);
              if (!CFEqual(v22, ValueAtIndex))
              {
                *&buf = 0;
                *(&buf + 1) = &buf;
                v47 = 0x2020000000;
                v48 = 0;
                RootNode = C3DSceneGetRootNode(a2);
                if (RootNode)
                {
                  v43[0] = MEMORY[0x277D85DD0];
                  v43[1] = 3221225472;
                  v43[2] = ___resolveAnimationGroupTargets_block_invoke;
                  v43[3] = &unk_2782FC6E8;
                  v43[4] = &buf;
                  v43[5] = Name;
                  C3DNodeApplyHierarchy(RootNode, v43);
                }

                if (*(*(&buf + 1) + 24) > 1)
                {
                  v28 = scn_default_log();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    *v44 = 138412290;
                    v45 = Name;
                    _os_log_error_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_ERROR, "Error: can't update animation keypath using names because it is ambiguous (name=%@)", v44, 0xCu);
                  }
                }

                else
                {
                  v25 = [(__CFArray *)KeyPath mutableCopy];
                  [v25 replaceObjectAtIndex:0 withObject:v22];
                  C3DAnimationSetKeyPath(AnimationAtIndex, v25);
                }

                _Block_object_dispose(&buf, 8);
              }
            }
          }
        }
      }
    }

    else if (KeyPath)
    {
      goto LABEL_11;
    }

    v29 = C3DAnimationGetKeyPath(AnimationAtIndex);
    if (v29)
    {
      v30 = CFArrayGetCount(v29);
      v31 = v16 == 0;
      if (v30 < 1)
      {
        v31 = 1;
      }

      if (!v31)
      {
        v32 = C3DGenericSourceGetTypeID();
        if (v32 == CFGetTypeID(v16))
        {
          Listener = C3DGenericSourceGetListener(v16);
          if (Listener)
          {
            v34 = C3DMorphGetTypeID();
            if (v34 == CFGetTypeID(Listener))
            {
              v16 = Listener;
            }
          }
        }
      }
    }

    if (((v16 != 0) & v8) == 1)
    {
      v35 = CFGetTypeID(v16);
      if (v35 == C3DNodeGetTypeID())
      {
        v14 = _commonAncessor(a4, v6, v16);
        goto LABEL_45;
      }
    }

    v8 = 0;
    if (v6)
    {
      v36 = v6 == v16;
    }

    else
    {
      v36 = 1;
    }

    v37 = v36;
    v9 &= v37;
    v6 = v16;
LABEL_53:
    ++v7;
  }

  while (v5 != v7);
  if (v9)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_21BF68664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *_resolveAnimationClusterTargets(uint64_t a1, const void *a2, uint64_t a3, const __CFArray *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 168) + 20);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v28 = 8 * v4;
  v9 = 1;
  v10 = 1;
  do
  {
    v11 = *(*(*(a1 + 168) + 72) + v7);
    v12 = C3DModelDescriptionResolveRootComponentInPath(v11, a2, a3, 0);
    if (v11)
    {
      if (CFArrayGetCount(v11) >= 1 && v12 != 0)
      {
        TypeID = C3DNodeGetTypeID();
        if (TypeID == CFGetTypeID(v12))
        {
          Name = C3DNodeGetName(v12);
          if (Name)
          {
            v16 = [@"/" stringByAppendingString:Name];
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            if (!CFEqual(v16, ValueAtIndex))
            {
              v31 = 0;
              v32 = &v31;
              v33 = 0x2020000000;
              v34 = 0;
              RootNode = C3DSceneGetRootNode(a2);
              if (RootNode)
              {
                v30[0] = MEMORY[0x277D85DD0];
                v30[1] = 3221225472;
                v30[2] = ___resolveAnimationClusterTargets_block_invoke;
                v30[3] = &unk_2782FC6E8;
                v30[4] = &v31;
                v30[5] = Name;
                C3DNodeApplyHierarchy(RootNode, v30);
              }

              if (v32[6] > 1)
              {
                v22 = scn_default_log();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v36 = Name;
                  _os_log_error_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_ERROR, "Error: can't update animation keypath using names because it is ambiguous (name=%@)", buf, 0xCu);
                }
              }

              else
              {
                v19 = [(__CFArray *)v11 mutableCopy];
                [v19 replaceObjectAtIndex:0 withObject:v16];
                v20 = *(*(*(a1 + 168) + 72) + v7);
                if (v20 != v19)
                {
                  if (v20)
                  {
                    CFRelease(v20);
                    *(*(*(a1 + 168) + 72) + v7) = 0;
                  }

                  if (v19)
                  {
                    v21 = CFRetain(v19);
                  }

                  else
                  {
                    v21 = 0;
                  }

                  *(*(*(a1 + 168) + 72) + v7) = v21;
                }
              }

              _Block_object_dispose(&v31, 8);
            }
          }
        }
      }
    }

    if (v12 == 0 || (v9 & 1) == 0 || (v23 = CFGetTypeID(v12), v23 != C3DNodeGetTypeID()))
    {
      v9 = 0;
      if (v8)
      {
        v24 = v8 == v12;
      }

      else
      {
        v24 = 1;
      }

      v25 = v24;
      v10 &= v25;
      v8 = v12;
    }

    else
    {
      v8 = _commonAncessor(a4, v8, v12);
      v9 = 1;
    }

    v7 += 8;
  }

  while (v28 != v7);
  if (v10)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_21BF689A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void C3DAnimationManagerAddAnimationToSceneForKey(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  if (!a1 && (v9 = scn_default_log(), os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    C3DSceneCreateHitTestResultsWithSegment_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  if (!a2 && (v25 = scn_default_log(), os_log_type_enabled(v25, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v25, v26, v27, v28, v29, v30, v31, v32);
    if (a5)
    {
      goto LABEL_11;
    }
  }

  else if (a5)
  {
    goto LABEL_11;
  }

  v33 = scn_default_log();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v33, v34, v35, v36, v37, v38, v39, v40);
  }

LABEL_11:
  RootNode = C3DSceneGetRootNode(a3);
  if (!RootNode)
  {
    v42 = scn_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v42, v43, v44, v45, v46, v47, v48, v49);
    }
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  TypeID = C3DAnimationGroupGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    v52 = _resolveAnimationGroupTargets(a2, a3, a4, Mutable);
  }

  else
  {
    v53 = C3DAnimationClusterGetTypeID();
    if (v53 == CFGetTypeID(a2))
    {
      v52 = _resolveAnimationClusterTargets(a2, a3, a4, Mutable);
    }

    else
    {
      v52 = 0;
    }
  }

  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = RootNode;
  }

  CFRelease(Mutable);
  v55 = C3DAnimationPlayerCreateWithAnimation(a2);
  C3DEntityAddAnimationForKey(v54, v55, a5);
  C3DAnimationPlayerPlay(v55);
  if (v55)
  {
    CFRelease(v55);
  }
}

void C3DAnimationManagerRemoveAllAnimationsForObject(uint64_t a1, void *key)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    v21 = AnimationPerKeyDictionaryForObject;
    CFRetain(AnimationPerKeyDictionaryForObject);
    Copy = CFDictionaryCreateCopy(0, v21);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __C3DAnimationManagerRemoveAllAnimationsForObject_block_invoke;
    v23[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    v23[4] = a1;
    C3DCFDictionaryApplyBlock(Copy, v23);
    CFDictionaryRemoveValue(*(a1 + 48), key);
    CFRelease(Copy);
    CFRelease(v21);
  }
}

void __C3DAnimationManagerRemoveAllAnimationsForObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    C3DAnimationManagerRemoveAnimationNode(v4, a3);
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __C3DAnimationManagerRemoveAllAnimationsForObject_block_invoke_cold_1(a2, v6);
    }
  }
}

void C3DAnimationManagerRemoveAnimationNode(uint64_t a1, uint64_t a2)
{
  if (!a2 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  CFRetain(a2);
  if (*(a1 + 88))
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerRemoveAnimationNode_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  _animationNodeCompleted(a1, a2);
  if (*(a1 + 88))
  {
    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerRemoveAnimationNode_cold_4(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  _C3DAnimationManagerDiscardAnimationNodeFromStack(a1, a2);
  *(a2 + 121) |= 0x800u;
  C3DAnimationNodeSetOwner(a2, 0);
  v36 = *(a2 + 192);
  if (v36)
  {
    C3DAnimationPlayerRemoveAnimationNode(v36, a2);
  }

  ChildCount = C3DAnimationNodeGetChildCount(a2);
  if (ChildCount >= 1)
  {
    v38 = ChildCount;
    for (i = 0; i != v38; ++i)
    {
      ChildAtIndex = C3DAnimationNodeGetChildAtIndex(a2, i);
      C3DAnimationManagerRemoveAnimationNode(a1, ChildAtIndex);
    }
  }

  CFRelease(a2);
}

void _C3DAnimationManagerRemoveAnimationForKey(uint64_t a1, void *key, const void *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    v31 = AnimationPerKeyDictionaryForObject;
    CFRetain(AnimationPerKeyDictionaryForObject);
    Value = CFDictionaryGetValue(v31, a3);
    if (Value)
    {
      v33 = Value;
      CFRetain(Value);
      C3DAnimationNodeSetOwner(v33, 0);
      C3DAnimationManagerRemoveAnimationNode(a1, v33);
      CFDictionaryRemoveValue(v31, a3);
      CFRelease(v33);
    }

    if (!CFDictionaryGetCount(v31))
    {
      CFDictionaryRemoveValue(*(a1 + 48), key);
    }

    CFRelease(v31);
  }
}

void C3DAnimationManagerChangeSpeedOfAnimationForKey(uint64_t a1, void *key, const void *a3, float a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!a3)
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    Value = CFDictionaryGetValue(AnimationPerKeyDictionaryForObject, a3);
    if (Value)
    {
      C3DAnimationNodeChangeSpeed(Value, a4);
    }
  }
}

void C3DAnimationManagerFadeAndRemoveAllAnimationsForObject(uint64_t a1, void *key, double a3)
{
  if (a3 == 0.0)
  {

    C3DAnimationManagerRemoveAllAnimationsForObject(a1, key);
    return;
  }

  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (!key)
    {
LABEL_8:
      v14 = scn_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerGetAnimationNodeForKey_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else if (!key)
  {
    goto LABEL_8;
  }

  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    v23 = AnimationPerKeyDictionaryForObject;
    CFRetain(AnimationPerKeyDictionaryForObject);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __C3DAnimationManagerFadeAndRemoveAllAnimationsForObject_block_invoke;
    v24[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    *&v24[4] = a3;
    C3DCFDictionaryApplyBlock(v23, v24);
    CFRelease(v23);
  }
}

void __C3DAnimationManagerFadeAndRemoveAllAnimationsForObject_block_invoke(uint64_t a1, uint64_t a2, CFTimeInterval *a3)
{
  a3[11] = CACurrentMediaTime();
  a3[12] = CACurrentMediaTime();
  v5 = *(a1 + 32);
  if (v5 < 0.0001)
  {
    v5 = 0.0001;
  }

  a3[13] = v5;
}

void C3DAnimationManagerFadeAndRemoveAnimationForKey(uint64_t a1, void *key, const void *a3, double a4)
{
  if (a4 == 0.0)
  {

    _C3DAnimationManagerRemoveAnimationForKey(a1, key, a3);
    return;
  }

  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!key)
    {
LABEL_8:
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else if (!key)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    v33 = AnimationPerKeyDictionaryForObject;
    CFRetain(AnimationPerKeyDictionaryForObject);
    Value = CFDictionaryGetValue(v33, a3);
    if (Value)
    {
      v35 = Value;
      Value[11] = CACurrentMediaTime();
      v36 = CACurrentMediaTime();
      v37 = 0.0001;
      if (a4 >= 0.0001)
      {
        v37 = a4;
      }

      v35[12] = v36;
      v35[13] = v37;
    }

    CFRelease(v33);
  }
}

void C3DAnimationManagerExecRemoveAnimation(uint64_t a1, void *key, const void *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  _C3DAnimationManagerRemoveAnimationForKey(a1, key, a3);
}

const __CFDictionary *C3DAnimationManagerGetAnimationNodeForKey(uint64_t a1, void *key, const void *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  return _C3DAnimationManagerGetAnimationNodeForKey(a1, key, a3);
}

uint64_t C3DAnimationManagerStopAnimationNode(uint64_t a1, uint64_t a2, double a3)
{
  if (!a2 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Animation = C3DAnimationNodeGetAnimation(a2);
  if ((C3DAnimationGetIsSceneTimeBased(Animation) & 1) == 0)
  {
    C3DTransactionGetAtomicTime();
  }

  v23 = *(a2 + 121);
  if (a3 == 0.0)
  {
    *(a2 + 121) = v23 & 0xFFFFFFDB | 4;
  }

  else
  {
    *(a2 + 121) = v23 | 8;
    C3DTransactionGetAtomicTime();
    *(a2 + 96) = v24;
    *(a2 + 104) = a3;
  }

  *(a2 + 128) = 0;
  result = C3DAnimationNodeGetChildCount(a2);
  if (result >= 1)
  {
    v26 = result;
    for (i = 0; i != v26; ++i)
    {
      ChildAtIndex = C3DAnimationNodeGetChildAtIndex(a2, i);
      result = C3DAnimationManagerStopAnimationNode(a1, ChildAtIndex, a3);
    }
  }

  return result;
}

uint64_t C3DAnimationManagerPauseAnimationNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (!a2 && (v10 = scn_default_log(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (a4)
  {
    result = C3DAnimationNodeGetPausedByScene(a2);
    if (result == a3)
    {
      return result;
    }

    PausedOrPausedByScene = C3DAnimationNodeGetPausedOrPausedByScene(a2);
    C3DAnimationNodeSetPausedByScene(a2, a3);
  }

  else
  {
    result = C3DAnimationNodeGetPaused(a2);
    if (result == a3)
    {
      return result;
    }

    PausedOrPausedByScene = C3DAnimationNodeGetPausedOrPausedByScene(a2);
    C3DAnimationNodeSetPaused(a2, a3);
  }

  if (C3DAnimationNodeGetPausedOrPausedByScene(a2))
  {
    v28 = 1;
  }

  else
  {
    v28 = (*(a2 + 121) >> 2) & 1;
  }

  if (v28 != PausedOrPausedByScene)
  {
    Animation = C3DAnimationNodeGetAnimation(a2);
    v30 = a5;
    if (C3DAnimationGetIsSceneTimeBased(Animation))
    {
      v30 = *(a1 + 136);
    }

    if (C3DAnimationNodeGetPausedOrPausedByScene(a2))
    {
      C3DAnimationNodeSetPauseTime(a2, v30);
    }

    else
    {
      v31 = *(a2 + 152);
      if (v31 != -1)
      {
        ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 24), v31);
        C3DAnimationStackSetConstant(ValuePtrAtIndex, 0, a1);
      }

      if ((*(a2 + 121) & 4) != 0)
      {
        C3DAnimationNodeSetStartTime(a2, v30);
      }

      else
      {
        PauseTime = C3DAnimationNodeGetPauseTime(a2);
        C3DAnimationNodeTimeJump(a2, v30 - PauseTime);
      }

      *(a2 + 121) &= ~4u;
    }
  }

  result = C3DAnimationNodeGetChildCount(a2);
  if (result >= 1)
  {
    v34 = result;
    for (i = 0; i != v34; ++i)
    {
      ChildAtIndex = C3DAnimationNodeGetChildAtIndex(a2, i);
      result = C3DAnimationManagerPauseAnimationNode(a1, ChildAtIndex, a3, a4, a5);
    }
  }

  return result;
}

uint64_t C3DAnimationManagerGetAnimationForKeyIsPaused(uint64_t a1, void *a2, const void *a3)
{
  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, a2, 0);
  if (!AnimationPerKeyDictionaryForObject)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(AnimationPerKeyDictionaryForObject, a3);
  if (!Value)
  {
    return 0;
  }

  return C3DAnimationNodeGetPaused(Value);
}

const __CFDictionary *C3DAnimationManagerPauseAnimationForKey(uint64_t a1, void *key, const void *a3, uint64_t a4, uint64_t a5, double a6)
{
  if (!a1 && (v12 = scn_default_log(), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v20 = scn_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_6:
  if (!a3)
  {
    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  result = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, key, 0);
  if (result)
  {
    result = CFDictionaryGetValue(result, a3);
    if (result)
    {
      return C3DAnimationManagerPauseAnimationNode(a1, result, a4, a5, a6);
    }
  }

  return result;
}

CFTypeRef C3DAnimationManagerSetModelValueStorage(uint64_t a1, CFTypeRef cf)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DAnimationManagerSetModelValueStorage_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
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

void C3DAnimationManagerApplyBindings(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 64));
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 enumerateObjectsUsingBlock:&__block_literal_global_32];
  }

  os_unfair_lock_unlock((a1 + 64));
}

void *__C3DAnimationManagerApplyBindings_block_invoke(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  TargetAddress = C3DModelTargetGetTargetAddress(a2[2]);
  v4 = a2[4];
  if (v4)
  {
    v5 = C3DModelTargetGetTargetAddress(a2[3]);
    (*(v4 + 16))(v4, TargetAddress, v5, v13);
    TargetAddress = v13;
  }

  Target = C3DModelTargetGetTarget(a2[3]);
  v7 = C3DModelTargetGetTargetAddress(a2[3]);
  BaseType = C3DModelTargetGetBaseType(a2[3]);
  v9 = C3DSizeOfBaseType(BaseType);
  TypeSemantic = C3DModelTargetGetTypeSemantic(a2[3]);
  ComponentIndex = C3DModelTargetGetComponentIndex(a2[3]);
  return C3DSetValue(Target, v7, TargetAddress, v9, TypeSemantic, ComponentIndex);
}

BOOL C3DAnimationManagerAddBinding(uint64_t a1, float32x4_t *a2, const __CFString *a3, float32x4_t *a4, const __CFString *a5, void *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = C3DCFTypeCopyModelInfoAtPath(a2, a3, 0);
  if (!v12)
  {
LABEL_9:
    v19 = CFTypeIsC3DEntity(a2);
    v20 = scn_default_log();
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (!result)
      {
        return result;
      }

      C3DAnimationManagerAddBinding_cold_2(a2, a3, v20);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      C3DAnimationManagerAddBinding_cold_1();
    }

    return 0;
  }

  v13 = v12;
  if (!C3DModelTargetGetTargetAddress(v12))
  {
    CFRelease(v13);
    goto LABEL_9;
  }

  v14 = C3DCFTypeCopyModelInfoAtPath(a4, a5, 0);
  if (!v14)
  {
    v22 = v13;
LABEL_16:
    CFRelease(v22);
    return 0;
  }

  v15 = v14;
  if (!C3DModelTargetGetTargetAddress(v14))
  {
    CFRelease(v13);
    v22 = v15;
    goto LABEL_16;
  }

  BaseType = C3DModelTargetGetBaseType(v13);
  if (BaseType != C3DModelTargetGetBaseType(v15))
  {
    CFRelease(v13);
    CFRelease(v15);
    if (CFTypeIsC3DEntity(a2) && CFTypeIsC3DEntity(a4))
    {
      v23 = scn_default_log();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v26 = 138413058;
      Name = C3DEntityGetName(a2);
      v28 = 2112;
      v29 = a3;
      v30 = 2112;
      v31 = C3DEntityGetName(a4);
      v32 = 2112;
      v33 = a5;
    }

    else
    {
      v23 = scn_default_log();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v26 = 138413058;
      Name = a2;
      v28 = 2112;
      v29 = a3;
      v30 = 2112;
      v31 = a4;
      v32 = 2112;
      v33 = a5;
    }

    _os_log_error_impl(&dword_21BEF7000, v23, OS_LOG_TYPE_ERROR, "Error: Binding: Trying to bind two incompatible keypaths: %@(%@) -> %@(%@)", &v26, 0x2Au);
    return 0;
  }

  C3DAnimationManagerRemoveBinding(a1, a2, a3);
  v17 = objc_alloc_init(C3DAnimationBinding);
  v17->_source = v15;
  v17->_destination = v13;
  if (a2)
  {
    v18 = CFRetain(a2);
  }

  else
  {
    v18 = 0;
  }

  v17->_owner = v18;
  v24 = [a6 objectForKeyedSubscript:@"SCNBindingValueTransformerKey"];
  if (v24)
  {
    v17->_valueTransformer = _Block_copy(v24);
  }

  os_unfair_lock_lock((a1 + 64));
  v25 = *(a1 + 72);
  if (!v25)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(a1 + 72) = v25;
  }

  CFArrayAppendValue(v25, v17);
  os_unfair_lock_unlock((a1 + 64));

  return 1;
}

void C3DAnimationManagerRemoveBinding(uint64_t a1, float32x4_t *a2, const __CFString *a3)
{
  os_unfair_lock_lock((a1 + 64));
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = C3DCFTypeCopyModelInfoAtPath(a2, a3, 0);
    TargetAddress = C3DModelTargetGetTargetAddress(v7);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __C3DAnimationManagerRemoveBinding_block_invoke;
    v9[3] = &__block_descriptor_48_e15_B32__0_8Q16_B24l;
    v9[4] = a2;
    v9[5] = TargetAddress;
    [v6 removeObjectsAtIndexes:{objc_msgSend(v6, "indexesOfObjectsPassingTest:", v9)}];
    CFRelease(v7);
  }

  os_unfair_lock_unlock((a1 + 64));
}

void C3DAnimationManagerRemoveAllBindings(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 64));
  v4 = *(a1 + 72);
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __C3DAnimationManagerRemoveAllBindings_block_invoke;
    v5[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24l;
    v5[4] = a2;
    [v4 removeObjectsAtIndexes:{objc_msgSend(v4, "indexesOfObjectsPassingTest:", v5)}];
  }

  os_unfair_lock_unlock((a1 + 64));
}

void _C3DAnimationManagerCFFinalize(void *a1)
{
  v2 = a1[3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___C3DAnimationManagerCFFinalize_block_invoke;
  v13[3] = &__block_descriptor_40_e13_v24__0q8r_v16l;
  v13[4] = a1;
  C3DArrayApply(v2, v13);
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
    a1[10] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
    a1[2] = 0;
  }

  v9 = a1[14];
  if (v9)
  {
    CFRelease(v9);
    a1[14] = 0;
  }

  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
    a1[15] = 0;
  }

  v11 = a1[16];
  if (v11)
  {
    CFRelease(v11);
    a1[16] = 0;
  }

  v12 = a1[9];
  if (v12)
  {
    CFRelease(v12);
    a1[9] = 0;
  }
}

void _C3DAnimationManagerFillLibraryForSerialization(uint64_t a1, void *context)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    CFDictionaryApplyFunction(v12, __fillLibraryWithAnimationPerObject, context);
  }
}

void __fillLibraryWithAnimationPerObject(int a1, CFDictionaryRef theDict, void *a3)
{
  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, __fillLibraryWithAnimationPerKey, a3);
  }
}

void __fillLibraryWithAnimationPerKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  Animation = C3DAnimationNodeGetAnimation(a2);
  if (!Animation)
  {
    return;
  }

  v5 = Animation;
  v6 = CFGetTypeID(Animation);
  if (v6 == C3DKeyframedAnimationGetTypeID())
  {
    v7 = C3DAnimationGroupCreate();
    C3DAnimationGroupAddAnimation(v7, v5);
    C3DLibraryAddEntry(a3, v7);
    v8 = v7;
LABEL_8:

    CFRelease(v8);
    return;
  }

  v9 = CFGetTypeID(v5);
  if (v9 == C3DAnimationClusterGetTypeID())
  {
    v10 = C3DAnimationGroupCreateWithAnimationCluster(v5);
    C3DLibraryAddEntry(a3, v10);
    v8 = v10;
    goto LABEL_8;
  }

  C3DLibraryAddEntry(a3, v5);
}

BOOL _C3DAnimationManagerUpdateRelativeTimeOfAnimation(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
  v20 = *(a2 + 16);
  if (C3DAnimationNodeGetPausedOrPausedByScene(a2))
  {
    return 0;
  }

  v21 = *(a2 + 121);
  if ((v21 & 4) != 0)
  {
    return 0;
  }

  v22 = *(v20 + 84);
  if ((v22 & 8) != 0)
  {
    v23 = 1;
    if ((v21 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(a1 + 91) == 1)
  {
    v23 = (v22 & 0x200) == 0;
    if ((v21 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = 0;
    if ((v21 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

  *(a2 + 121) = v21 & 0xFFFFFFF9;
  PauseTime = C3DAnimationNodeGetPauseTime(v20);
  if (!v23)
  {
    if (PauseTime == 0.0)
    {
      PauseTime = 0.0;
    }

    PauseTime = PauseTime + *(a1 + 144);
  }

  *(a2 + 80) = PauseTime;
LABEL_20:
  v43 = 0;
  v42 = 0;
  v25 = *(a2 + 121);
  v26 = 144;
  if (v23)
  {
    v26 = 136;
  }

  ContentTimeForTime = C3DAnimationNodeGetContentTimeForTime(a2, &v43 + 1, &v43, &v42, *(a1 + v26));
  v28 = *(a2 + 121);
  v29 = HIBYTE(v43);
  v30 = v42;
  *(a2 + 121) = v28 & 0xFFFFFFCF | (16 * HIBYTE(v43)) | (32 * v42);
  if ((v28 & 0x20) != 0 || v30)
  {
    v31 = *(v20 + 72);
    v32 = v31;
    v33 = v31 == 0.0;
    v34 = 1.0;
    if (!v33)
    {
      v34 = v32;
    }

    v35 = ContentTimeForTime / v34;
    v36 = *(a2 + 72);
    v37 = v35;
    *(a2 + 72) = v37;
    v38 = *(v20 + 96);
    if (v38)
    {
      C3DAnimationEventsTriggerEventsWithTimeChanges(a1, v38, (v28 >> 4) & 1, v29, a2, v36, v35);
    }
  }

  if ((*(a1 + 90) & 1) == 0)
  {
    v39 = *(a2 + 121);
    if ((v39 & 1) == 0)
    {
      *(a2 + 121) = v39 | 1;
      if (*(v20 + 144))
      {
        _C3DAnimationManagerAppendCallback(a1, a2, 1);
      }
    }

    if (v43 == 1 && ((*(v20 + 84) & 8) == 0 || *(a2 + 88) != 0.0))
    {
      *(a2 + 121) |= 0x400u;
      _animationNodeCompleted(a1, a2);
    }
  }

  if (v23)
  {
    return 0;
  }

  result = 1;
  if (v25 & 0x100) != 0 && (v43)
  {
    v41 = *(a2 + 40);
    if (v41)
    {
      return (*(v41 + 122) & 1) == 0;
    }

    return 0;
  }

  return result;
}

void _animationNodeCompleted(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 90) & 1) == 0)
  {
    v2 = *(a2 + 121);
    if ((v2 & 0x40) == 0)
    {
      *(a2 + 121) = v2 | 0x40;
      _C3DAnimationManagerAppendCallback(a1, a2, 6);
    }
  }
}

uint64_t _commonAncessor(const __CFArray *a1, const void *a2, uint64_t a3)
{
  Parent = a3;
  if (a2 == a3)
  {
    return Parent;
  }

  Count = CFArrayGetCount(a1);
  if (Count)
  {
    if (!Parent)
    {
LABEL_11:
      v12 = scn_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        _commonAncessor_cold_1(v12);
      }

      return 0;
    }

    v7 = Count;
    while (2)
    {
      if (Parent != a2)
      {
        v8 = 0;
        v9 = v7;
        while (v9-- >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
          v8 |= ValueAtIndex == a2;
          if (ValueAtIndex == Parent)
          {
            if (v8)
            {
              return a2;
            }

            return Parent;
          }
        }

        Parent = C3DNodeGetParent(Parent);
        if (Parent)
        {
          continue;
        }

        goto LABEL_11;
      }

      break;
    }
  }

  else if (Parent)
  {
    v13 = Parent;
    do
    {
      CFArrayAppendValue(a1, v13);
      v13 = C3DNodeGetParent(v13);
    }

    while (v13);
  }

  return Parent;
}

uint64_t ___resolveAnimationGroupTargets_block_invoke(uint64_t a1, uint64_t a2)
{
  Name = C3DNodeGetName(a2);
  if (Name && CFEqual(Name, *(a1 + 40)) && (++*(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 32) + 8) + 24) > 1))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t ___resolveAnimationClusterTargets_block_invoke(uint64_t a1, uint64_t a2)
{
  Name = C3DNodeGetName(a2);
  if (Name && CFEqual(Name, *(a1 + 40)) && (++*(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 32) + 8) + 24) > 1))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

double __C3DKeyframeControllerGetTypeID_block_invoke()
{
  C3DKeyframeControllerGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DKeyframeControllerContextClassSerializable;
  unk_28173FB50 = kC3DC3DKeyframeControllerContextClassSerializable;
  unk_28173FB60 = *off_282DC2FE0;
  return result;
}

uint64_t C3DPreviousKeyFrameIndexForTime(float *a1, int a2, float *a3)
{
  v4 = a2 - 1;
  v5 = *a3;
  if (a2 - 1 < 1)
  {
LABEL_10:
    result = 0;
    if (*a1 > v5)
    {
      *a3 = *a1;
    }
  }

  else
  {
    result = 0;
    do
    {
      v7 = (result + v4) >> 1;
      if (a1[v7] >= v5)
      {
        v4 = v7 - 1;
      }

      else
      {
        if (result == v7)
        {
          if (a1[v4] <= v5)
          {
            return v4;
          }

          else
          {
            return result;
          }
        }

        result = (result + v4) >> 1;
      }
    }

    while (v4 > result);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t _C3DKeyframeControllerCreate()
{
  if (C3DKeyframeControllerGetTypeID_onceToken != -1)
  {
    _C3DKeyframeControllerCreate_cold_1();
  }

  v1 = C3DKeyframeControllerGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 104);
}

const void *C3DKeyframeControllerCreateWithPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _C3DKeyframeControllerCreate();
  v7 = v6;
  if (v6 && (C3DInitWithPropertyList(v6, a1, a2, a3) & 1) == 0)
  {
    CFRelease(v7);
    return 0;
  }

  return v7;
}

uint64_t C3DKeyframeControllerCreateWithCapacity(unsigned int a1, unsigned int a2, char a3, int a4, int a5, int a6, int a7)
{
  v14 = _C3DKeyframeControllerCreate();
  v15 = v14;
  if (v14)
  {
    _C3DKeyframeControllerSetupWithCapacity(v14, a1, a2, a3, a4, a5, a6, a7);
  }

  return v15;
}

uint64_t (*_C3DKeyframeControllerSetupWithCapacity(uint64_t a1, unsigned int a2, unsigned int a3, char a4, int a5, int a6, int a7, int a8))()
{
  if (!a1 && (v16 = scn_default_log(), os_log_type_enabled(v16, OS_LOG_TYPE_FAULT)))
  {
    _C3DKeyframeControllerSetupWithCapacity_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v24 = scn_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    _C3DKeyframeControllerSetupWithCapacity_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
  }

LABEL_6:
  *(a1 + 40) = C3DMalloc(4 * a2);
  *(a1 + 24) = a2;
  v32 = C3DSizeOfBaseType(a3);
  *(a1 + 30) = v32;
  *(a1 + 28) = a3;
  *(a1 + 115) = a4;
  *(a1 + 48) = C3DMalloc(v32 * a2);
  if (a5)
  {
    *(a1 + 64) = C3DMalloc(a2);
  }

  if (a7)
  {
    *(a1 + 72) = C3DMalloc(4 * a2);
    *(a1 + 80) = C3DMalloc(4 * a2);
    *(a1 + 88) = C3DMalloc(4 * a2);
  }

  *(a1 + 114) = a8;
  if (a8)
  {
    ComponentCount = C3DBaseTypeGetComponentCount(a3);
    *(a1 + 113) = ComponentCount;
    *(a1 + 96) = C3DMalloc(ComponentCount * 8 * a2);
    *(a1 + 104) = C3DMalloc(8 * a2 * *(a1 + 113));
  }

  if (a6)
  {
    *(a1 + 56) = C3DMalloc(16 * a2);
  }

  result = C3DKeyFrameInterpolatorForType(*(a1 + 28), *(a1 + 115), 0, *(a1 + 31), *(a1 + 64) == 0);
  *(a1 + 32) = result;
  return result;
}

BOOL C3DKeyframeControllerSetKeyframeAtIndex(uint64_t a1, unsigned int a2, void *__src, char a4, uint64_t a5, const void *a6, const void *a7, double a8, float a9, float a10, float a11)
{
  if (!a1)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = *(a1 + 24);
  if (v30 <= a2)
  {
    v45 = scn_default_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_3();
    }
  }

  else
  {
    v31 = a8;
    v32 = *(a1 + 48);
    *(*(a1 + 40) + 4 * a2) = v31;
    v33 = *(a1 + 16);
    if (v33 <= a8)
    {
      v33 = a8;
    }

    *(a1 + 16) = v33;
    memcpy((v32 + *(a1 + 30) * a2), __src, *(a1 + 30));
    v34 = *(a1 + 64);
    if (v34 && *(a1 + 24) > a2)
    {
      *(v34 + a2) = a4;
    }

    v35 = *(a1 + 72);
    if (v35)
    {
      *(v35 + 4 * a2) = a9;
    }

    v36 = *(a1 + 80);
    if (v36)
    {
      *(v36 + 4 * a2) = a10;
    }

    v37 = *(a1 + 88);
    if (v37)
    {
      *(v37 + 4 * a2) = a11;
    }

    if (a6)
    {
      v38 = *(a1 + 96);
      if (v38)
      {
        *(a1 + 114) = 0;
        memcpy((v38 + 8 * *(a1 + 113) * a2), a6, 8 * *(a1 + 113));
      }
    }

    if (a7)
    {
      v39 = *(a1 + 104);
      if (v39)
      {
        *(a1 + 114) = 0;
        memcpy((v39 + 8 * *(a1 + 113) * a2), a7, 8 * *(a1 + 113));
      }
    }

    v40 = *(a1 + 56);
    if (v40)
    {
      v41 = 4 * a2;
      if (a5)
      {
        ControlPoints = C3DTimingFunctionGetControlPoints(a5);
        v40 = *(a1 + 56);
        v43 = 4 * v41;
        v44 = *ControlPoints;
      }

      else
      {
        v43 = 4 * v41;
        v44 = 0uLL;
      }

      *(v40 + v43) = v44;
    }
  }

  return v30 > a2;
}

double C3DKeyframeControllerGetDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DKeyframeControllerEvaluateAtTime(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5)
{
  if (!a1)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (!*(a1 + 48))
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerEvaluateAtTime_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  if (!*(a1 + 32))
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerEvaluateAtTime_cold_3(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  if (!*(a1 + 24))
  {
    v34 = scn_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerEvaluateAtTime_cold_4(v34, v35, v36, v37, v38, v39, v40, v41);
    }
  }

  v42 = *(a1 + 31);
  v43 = a5;
  v64 = v43;
  v44 = *(a1 + 40);
  v45 = *(a1 + 24);
  v46 = C3DPreviousKeyFrameIndexForTime(v44, v45, &v64);
  v48 = v46;
  v49 = v45 - 1;
  if (v46 + 1 < v45 - 1)
  {
    v50 = v46 + 1;
  }

  else
  {
    v50 = v45 - 1;
  }

  v51 = *(a1 + 48);
  v52 = *(a1 + 30);
  v53 = *(a1 + 64);
  if (v53)
  {
    if (v46 < v49)
    {
      v49 = v46;
    }

    v42 = *(v53 + v49);
  }

  v54 = v51 + v46 * v52;
  v55 = v51 + (v50 * v52);
  if (v42 == 1 || *(a1 + 28) == 3)
  {
    v56 = *(a1 + 32);
    v47.n128_f64[0] = v64;
    if (a2)
    {
      v57 = v55;
    }

    else
    {
      v57 = v54;
    }

    v58 = v42;
    v59 = v57;
  }

  else
  {
    v61 = v44[v46];
    v62 = v44[v50] - v61;
    if (v62 == 0.0)
    {
      v47.n128_u32[0] = 0;
    }

    else
    {
      v47.n128_f32[0] = (v64 - v61) / v62;
    }

    v63 = *(a1 + 56);
    if (v63)
    {
      v47.n128_f32[0] = C3DTimingFunctionSolveCurve((v63 + 16 * v46), v47.n128_f32[0]);
    }

    if (v42)
    {
      v47.n128_f64[0] = v47.n128_f32[0];
      (*(a1 + 32))(v54, v55, v42, *(a1 + 104) + 8 * v48 * *(a1 + 113), *(a1 + 96) + 8 * v50 * *(a1 + 113), a3, a4, v47);
      return 1;
    }

    v56 = *(a1 + 32);
    v47.n128_f64[0] = v47.n128_f32[0];
    v57 = v54;
    v59 = v55;
    v58 = 0;
  }

  v56(v57, v59, v58, 0, 0, a3, a4, v47);
  return 1;
}

uint64_t C3DKeyframeControllerGetKeyCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DKeyframeControllerGetValueType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 28);
}

uint64_t C3DKeyframeControllerGetKeyframeSemantic(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DKeyFrameInterpolatorGetSemantic(*(a1 + 32));
}

double C3DKeyframeControllerGetKeyTimeAtIndex(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 40);
  result = 0.0;
  if (v12)
  {
    if (*(a1 + 24) > a2)
    {
      return *(v12 + 4 * a2);
    }
  }

  return result;
}

uint64_t C3DKeyframeControllerGetValueAtIndex(uint64_t a1, int a2, void *__dst)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 48);
  if (!v14)
  {
    return 0;
  }

  memcpy(__dst, (v14 + *(a1 + 30) * a2), *(a1 + 30));
  return *(a1 + 30);
}

void C3DKeyframeControllerSetupKeyTimesForPacedMode(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!*(a1 + 48))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerEvaluateAtTime_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = *(a1 + 24);
  if (v20 >= 2)
  {
    if (!*(a1 + 40))
    {
      *(a1 + 40) = C3DMalloc(4 * v20);
    }

    v21 = *(a1 + 28);
    v22 = (v20 - 1);
    v23 = *(a1 + 48);
    v24 = 0.0;
    v25 = 1;
    do
    {
      v26 = v23;
      v27 = v25 * *(a1 + 30);
      v23 = (*(a1 + 48) + v27);
      switch(v21)
      {
        case 1:
        case 7:
          a2.f32[0] = vabds_f32(v26->f32[0], v23->f32[0]);
          goto LABEL_29;
        case 2:
          v31 = v26->f32[0];
          v32 = v23->f32[0];
          goto LABEL_27;
        case 3:
        case 16:
          LODWORD(v31) = v26->u8[0];
          LODWORD(v32) = v23->u8[0];
          goto LABEL_27;
        case 4:
          LODWORD(v31) = v26->i8[0];
          LODWORD(v32) = v23->i8[0];
          goto LABEL_27;
        case 6:
          v34 = vabdd_f64(*v26, *v23);
          break;
        case 8:
        case 18:
          v28 = vsub_f32(*v26, *v23);
          *a2.f32 = vmul_f32(v28, v28);
          goto LABEL_15;
        case 9:
        case 19:
          *a2.f32 = *v26;
          a2.i32[2] = v26[1].i32[0];
          *a3.f32 = *v23;
          a3.i32[2] = v23[1].i32[0];
          v29 = vsubq_f32(a2, a3);
          a2 = vmulq_f32(v29, v29);
          a2.f32[0] = a2.f32[2] + vaddv_f32(*a2.f32);
          goto LABEL_16;
        case 10:
        case 20:
          v30 = vsubq_f32(*v26->f32, *v23->f32);
          a2 = vmulq_f32(v30, v30);
          a3 = vextq_s8(a2, a2, 8uLL);
          *a2.f32 = vadd_f32(*a2.f32, *a3.f32);
LABEL_15:
          a2.f32[0] = vaddv_f32(*a2.f32);
LABEL_16:
          a2.f32[0] = sqrtf(a2.f32[0]);
          goto LABEL_29;
        case 11:
          a2.f32[0] = C3DMatrix4x4Distance(v26);
          goto LABEL_29;
        case 13:
          a2.f32[0] = C3DColor4Distance(v26, (*(a1 + 48) + v27));
LABEL_29:
          v34 = a2.f32[0];
          break;
        case 14:
          LODWORD(v31) = v26->i16[0];
          LODWORD(v32) = v23->i16[0];
          goto LABEL_27;
        case 17:
          LODWORD(v31) = v26->u16[0];
          LODWORD(v32) = v23->u16[0];
LABEL_27:
          v34 = fabs((LODWORD(v31) - LODWORD(v32)));
          break;
        default:
          v33 = scn_default_log();
          v34 = 0.0;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v41 = v21;
            _os_log_impl(&dword_21BEF7000, v33, OS_LOG_TYPE_DEFAULT, "Warning: _C3DKeyDistance - can't compute key distance for type %d", buf, 8u);
          }

          break;
      }

      v24 = v24 + v34;
      v35 = v24;
      v36 = *(a1 + 40);
      *&v36[v25++] = v35;
      v37 = v25 - v22;
    }

    while (v25 - v22 != 1);
    *v36 = 0;
    do
    {
      if (v24 == 0.0)
      {
        v38 = (v37 / v20) + -1.0;
      }

      else
      {
        v38 = *&v36[v37] / v24;
      }

      v39 = v38;
      *&v36[v37++] = v39;
    }

    while (v20 != v37);
    *(a1 + 16) = *&v36[v22];
  }
}

void C3DKeyframeControllerSetCalculationMode(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 112) = a2;
}

uint64_t C3DKeyframeControllerGetCalculationMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

uint64_t (*C3DKeyframeControllerSetDefaultInterpolationMode(uint64_t a1, signed int a2))()
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 31) = a2;
  result = C3DKeyFrameInterpolatorForType(*(a1 + 28), *(a1 + 115), 0, a2, *(a1 + 64) == 0);
  *(a1 + 32) = result;
  return result;
}

uint64_t C3DKeyframeControllerGetDefaultInterpolationMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 31);
}

void _C3DKeyframeControllerRemoveUselessKeys(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 31);
  if (*(a1 + 96))
  {
    if (v10 == 2)
    {
LABEL_6:
      v11 = scn_default_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v12 = "Warning: can't simplify keyframes because of cubic interpolation";
      goto LABEL_17;
    }
  }

  else
  {
    if (*(a1 + 104))
    {
      v13 = v10 == 2;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + 72) || *(a1 + 88) || *(a1 + 80))
  {
    v11 = scn_default_log();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "Warning: can't simplify keyframes because of tcb values";
    goto LABEL_17;
  }

  if (*(a1 + 56) || *(a1 + 64))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Warning: can't simplify keyframes because of timing functions";
LABEL_17:
      _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    }
  }

  else
  {
    v14 = *(a1 + 24);
    if (v14 >= 3)
    {
      v39 = 0u;
      v40 = 0u;
      *buf = 0u;
      v38 = 0u;
      memset(v36, 0, sizeof(v36));
      memset(__dst, 0, sizeof(__dst));
      memset(v34, 0, sizeof(v34));
      Mutable = C3DIndexSetCreateMutable();
      v16 = 0;
      v17 = 0;
      v18 = *(a1 + 28);
      v20 = v10 == 1 || *(a1 + 28) == 3;
      v33 = v14;
      do
      {
        C3DKeyframeControllerGetValueAtIndex(a1, v16 + 1, buf);
        C3DKeyframeControllerGetValueAtIndex(a1, v17, __dst);
        if (v20)
        {
          v21.n128_u64[0] = 0;
          (*(a1 + 32))(__dst, __dst, v10, 0, 0, 0, v36, v21);
        }

        else
        {
          C3DKeyframeControllerGetValueAtIndex(a1, v16 + 2, v34);
          KeyTimeAtIndex = C3DKeyframeControllerGetKeyTimeAtIndex(a1, v16 + 1);
          v23 = C3DKeyframeControllerGetKeyTimeAtIndex(a1, v17);
          v24.n128_f64[0] = (KeyTimeAtIndex - v23) / (C3DKeyframeControllerGetKeyTimeAtIndex(a1, v16 + 2) - v23);
          (*(a1 + 32))(__dst, v34, v10, 0, 0, 0, v36, v24);
        }

        if (_compareValuesWithAccuracy(buf, v36, v18))
        {
          v17 = v16 + 1;
        }

        else
        {
          C3DIndexSetAddIndex(Mutable, v16 + 1, v25);
        }

        ++v16;
      }

      while ((v14 - 1) - 1 != v16);
      Count = C3DIndexSetGetCount(Mutable);
      if (Count >= 1)
      {
        v27 = v14 - Count;
        v29 = *(a1 + 40);
        v28 = *(a1 + 48);
        *(a1 + 24) = v33 - Count;
        *(a1 + 40) = C3DMalloc(4 * (v33 - Count));
        v30 = C3DMalloc(v27 * *(a1 + 30));
        v31 = 0;
        v32 = 0;
        *(a1 + 48) = v30;
        do
        {
          if (!C3DIndexSetContainsIndex(Mutable, v31))
          {
            C3DKeyframeControllerSetKeyframeAtIndex(a1, v32++, &v28[v31 * *(a1 + 30)], v10, 0, 0, 0, v29[v31], 0.0, 0.0, 0.0);
          }

          ++v31;
        }

        while (v33 != v31);
        if (v29)
        {
          free(v29);
        }

        if (v28)
        {
          free(v28);
        }
      }

      CFRelease(Mutable);
    }
  }
}

uint64_t _compareValuesWithAccuracy(float *a1, float *a2, int a3)
{
  result = 1;
  if (a3 > 12)
  {
    if ((a3 - 14) >= 7)
    {
      if (a3 != 13)
      {
        return result;
      }

      goto LABEL_21;
    }

LABEL_13:
    v11 = C3DSizeOfBaseType(a3);
    return memcmp(a1, a2, v11) != 0;
  }

  if (a3 > 6)
  {
    v12 = C3DSizeOfBaseType(a3);
    if (v12 < 4)
    {
      return 0;
    }

    if (vabds_f32(*a1, *a2) <= 0.000001)
    {
      v7 = v12 >> 2;
      v13 = 1;
      do
      {
        v9 = v13;
        if (v7 == v13)
        {
          break;
        }

        v14 = vabds_f32(a1[v13], a2[v13]);
        ++v13;
      }

      while (v14 <= 0.000001);
      return v9 < v7;
    }

    return 1;
  }

  if ((a3 - 2) < 4)
  {
    goto LABEL_13;
  }

  if (a3 == 1)
  {
LABEL_21:
    v15 = C3DSizeOfBaseType(a3);
    if (v15 < 4)
    {
      return 0;
    }

    if (vabds_f32(*a1, *a2) <= 0.000001)
    {
      v7 = v15 >> 2;
      v16 = 1;
      do
      {
        v9 = v16;
        if (v7 == v16)
        {
          break;
        }

        v17 = vabds_f32(a1[v16], a2[v16]);
        ++v16;
      }

      while (v17 <= 0.000001);
      return v9 < v7;
    }

    return 1;
  }

  if (a3 != 6)
  {
    return result;
  }

  v6 = C3DSizeOfBaseType(6);
  if (v6 < 8)
  {
    return 0;
  }

  if (vabdd_f64(*a1, *a2) > 0.000001)
  {
    return 1;
  }

  v7 = v6 >> 3;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    v10 = vabdd_f64(*&a1[2 * v8], *&a2[2 * v8]);
    ++v8;
  }

  while (v10 <= 0.000001);
  return v9 < v7;
}

void C3DKeyframeControllerRemoveUselessKeys(uint64_t a1, _BYTE *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  _C3DKeyframeControllerRemoveUselessKeys(a1);
  if (a1 || (v4 = scn_default_log(), !os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  if (a2)
  {
LABEL_4:
    *a2 = 0;
  }

LABEL_5:
  if ((!*(a1 + 96) && !*(a1 + 104) || *(a1 + 31) != 2) && !*(a1 + 72) && !*(a1 + 88) && !*(a1 + 80) && !*(a1 + 56) && !*(a1 + 64) && C3DKeyframeControllerGetKeyCount(a1) == 2)
  {
    memset(__dst, 0, sizeof(__dst));
    memset(v14, 0, sizeof(v14));
    v12 = *(a1 + 28);
    if (C3DKeyframeControllerGetValueAtIndex(a1, 0, __dst))
    {
      if (C3DKeyframeControllerGetValueAtIndex(a1, 1, v14))
      {
        v13 = _compareValuesWithAccuracy(__dst, v14, v12);
        if (a2)
        {
          if ((v13 & 1) == 0)
          {
            *a2 = 1;
          }
        }
      }
    }
  }
}

uint64_t __C3DKeyframeControllerCopyGenericSource(uint64_t a1, const UInt8 *a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v8 = a4;
  v9 = a4 * a3 * *(a1 + 24);
  if (a6)
  {
    v10 = CFDataCreate(0, a2, v9);
  }

  else
  {
    v10 = CFDataCreateWithBytesNoCopy(0, a2, v9, *MEMORY[0x277CBED00]);
  }

  v11 = v10;
  v12 = C3DSourceAccessorCreate(a5, v8, *(a1 + 24), 0, 0);
  Mutable = C3DGenericSourceCreateMutable(v12, 0);
  C3DGenericSourceSetData(Mutable, v11);
  C3DSourceAccessorSetSource(v12, Mutable);
  CFRelease(v11);
  CFRelease(v12);
  return Mutable;
}

uint64_t C3DKeyframeControllerCopyValuesAsGenericSource(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return __C3DKeyframeControllerCopyGenericSource(a1, v1, *(a1 + 30), 1u, *(a1 + 28), 0);
  }

  else
  {
    return 0;
  }
}

void _C3DKeyframeControllerCFFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[12];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[13];
  if (v10)
  {

    free(v10);
  }
}

uint64_t _C3DKeyframeControllerInitWithPropertyList(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  values[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"keyframeVersion");
  if (!Value)
  {
    v17 = 0.04;
LABEL_9:
    v21 = CFDictionaryGetValue(theDict, @"keyframeType");
    if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFNumberGetTypeID()))
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v22, kCFNumberIntType, &valuePtr);
      v24 = valuePtr;
    }

    else
    {
      v24 = 0;
    }

    if (v17 < 0.05)
    {
      if ((v24 - 3) > 2)
      {
        if ((v24 - 6) < 3)
        {
          LOWORD(v24) = v24 - 3;
        }
      }

      else
      {
        LOWORD(v24) = v24 + 5;
      }
    }

    v25 = CFDictionaryGetValue(theDict, @"keyCount");
    if (v25)
    {
      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v26, kCFNumberIntType, &valuePtr);
      }
    }

    v28 = CFDictionaryGetValue(theDict, @"data");
    if (v28)
    {
      v29 = v28;
      v30 = CFDictionaryGetValue(theDict, @"keyCount");
      if (v30 && (v31 = v30, v32 = CFGetTypeID(v30), v32 == CFNumberGetTypeID()))
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v31, kCFNumberIntType, &valuePtr);
        v33 = valuePtr;
      }

      else
      {
        v33 = 0;
      }

      Length = CFDataGetLength(v29);
      v35 = C3DSizeOfBaseType(v24) + 8;
      BytePtr = CFDataGetBytePtr(v29);
      if (v33 != (Length / v35))
      {
        v37 = scn_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          _C3DKeyframeControllerInitWithPropertyList_cold_14(v37, v38, v39, v40, v41, v42, v43, v44);
        }
      }

      v45 = Length / v35;
      _C3DKeyframeControllerSetupWithCapacity(v7, v45, v24, 0, 0, 0, 0, 0);
      if (v45)
      {
        v46 = 0;
        v47 = (BytePtr + 8);
        do
        {
          C3DKeyframeControllerSetKeyframeAtIndex(v7, v46++, v47, 0, 0, 0, 0, *(v47 - 1), 0.0, 0.0, 0.0);
          v47 += v35;
        }

        while (v46 < v45);
      }

      goto LABEL_82;
    }

    v48 = CFDictionaryGetValue(theDict, @"keyframes");
    if (!v48 || (v49 = v48, Count = CFArrayGetCount(v48), _C3DKeyframeControllerSetupWithCapacity(v7, Count, v24, 0, 0, 0, 0, 0), v51 = CFArrayGetCount(v49), v51 < 2))
    {
LABEL_82:
      *(v7 + 32) = C3DKeyFrameInterpolatorForType(v24, 0, 0, *(v7 + 31), *(v7 + 64) == 0);
      goto LABEL_83;
    }

    v52 = 0;
    v226 = 0.0;
    valuePtr = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v49, v52);
      v54 = CFGetTypeID(ValueAtIndex);
      if (v54 != CFNumberGetTypeID())
      {
        v59 = scn_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          _C3DKeyframeControllerInitWithPropertyList_cold_15(&buf, v225, v59);
        }

        goto LABEL_77;
      }

      CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &v226);
      v55 = CFArrayGetValueAtIndex(v49, v52 + 1);
      v56 = v55;
      if (v24 > 7u)
      {
        if (v24 - 8 >= 4 && v24 != 13)
        {
          if (v24 != 16)
          {
LABEL_80:
            v73 = scn_default_log();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              _C3DKeyframeControllerInitWithPropertyList_cold_22(&v222, v223, v73);
            }

            goto LABEL_76;
          }

LABEL_59:
          v64 = CFGetTypeID(v55);
          if (v64 != CFNumberGetTypeID())
          {
            v65 = scn_default_log();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
            {
              _C3DKeyframeControllerInitWithPropertyList_cold_16(v236, &v237, v65);
            }
          }

          v62 = v56;
          v63 = kCFNumberCharType;
LABEL_75:
          CFNumberGetValue(v62, v63, &valuePtr);
          goto LABEL_76;
        }

        C3DInitC3DFloatArrayWithPropertyList(v55, &valuePtr, 0);
      }

      else
      {
        if (v24 > 3u)
        {
          switch(v24)
          {
            case 4u:
              goto LABEL_59;
            case 5u:
              v70 = CFGetTypeID(v55);
              if (v70 != CFNumberGetTypeID())
              {
                v71 = scn_default_log();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
                {
                  _C3DKeyframeControllerInitWithPropertyList_cold_16(v234, &v235, v71);
                }
              }

              v62 = v56;
              v63 = kCFNumberLongType;
              break;
            case 6u:
              v60 = CFGetTypeID(v55);
              if (v60 != CFNumberGetTypeID())
              {
                v61 = scn_default_log();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
                {
                  _C3DKeyframeControllerInitWithPropertyList_cold_16(v232, &v233, v61);
                }
              }

              v62 = v56;
              v63 = kCFNumberDoubleType;
              break;
            default:
              goto LABEL_80;
          }

          goto LABEL_75;
        }

        if (v24 == 1)
        {
          v66 = CFGetTypeID(v55);
          if (v66 != CFNumberGetTypeID())
          {
            v67 = scn_default_log();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
            {
              _C3DKeyframeControllerInitWithPropertyList_cold_16(values, (values + 4), v67);
            }
          }

          v62 = v56;
          v63 = kCFNumberFloatType;
          goto LABEL_75;
        }

        if (v24 == 2)
        {
          v68 = CFGetTypeID(v55);
          if (v68 != CFNumberGetTypeID())
          {
            v69 = scn_default_log();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
            {
              _C3DKeyframeControllerInitWithPropertyList_cold_16(v240, &v241, v69);
            }
          }

          v62 = v56;
          v63 = kCFNumberIntType;
          goto LABEL_75;
        }

        if (v24 != 3)
        {
          goto LABEL_80;
        }

        v57 = CFGetTypeID(v55);
        if (v57 != CFBooleanGetTypeID())
        {
          v58 = scn_default_log();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            _C3DKeyframeControllerInitWithPropertyList_cold_19(v238, &v239, v58);
          }
        }

        LOBYTE(valuePtr) = CFBooleanGetValue(v56) != 0;
      }

LABEL_76:
      C3DKeyframeControllerSetKeyframeAtIndex(v7, v52, &valuePtr, 0, 0, 0, 0, v226, 0.0, 0.0, 0.0);
LABEL_77:
      v72 = v52 + 3;
      v52 += 2;
      if (v72 >= v51)
      {
        goto LABEL_82;
      }
    }
  }

  v17 = C3DParseVersionNumber(Value);
  if (v17 <= 0.11)
  {
    goto LABEL_9;
  }

  v231 = 0;
  v229 = 0u;
  v230 = 0u;
  valuePtr = 0u;
  v228 = 0u;
  v18 = CFDictionaryGetValue(theDict, @"keytimes");
  if (v18)
  {
    v19 = v18;
    Empty = C3DGenericSourceCreateEmpty();
    *&valuePtr = Empty;
    C3DInitWithPropertyList(Empty, v19, a3, a4);
  }

  else
  {
    Empty = 0;
  }

  v77 = CFDictionaryGetValue(theDict, @"keytimes-data");
  theDicta = theDict;
  if (v77 && Empty)
  {
    v78 = v77;
    values[0] = C3DGenericSourceGetAccessor(Empty);
    v79 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    DeserializedDataWithAccessors = C3DGenericSourceCreateDeserializedDataWithAccessors(Empty, v78, v79);
    C3DSourceAccessorsConvertToCurrentPlatform(v79);
    CFRelease(v79);
    if (DeserializedDataWithAccessors)
    {
      C3DGenericSourceSetData(Empty, DeserializedDataWithAccessors);
      CFRelease(DeserializedDataWithAccessors);
    }

    else
    {
      v81 = scn_default_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    theDict = theDicta;
  }

  v82 = CFDictionaryGetValue(theDict, @"values");
  if (v82)
  {
    v83 = v82;
    v84 = C3DGenericSourceCreateEmpty();
    *(&valuePtr + 1) = v84;
    C3DInitWithPropertyList(v84, v83, a3, a4);
  }

  else
  {
    v84 = 0;
  }

  v85 = CFDictionaryGetValue(theDict, @"values-data");
  if (v85 && v84)
  {
    v86 = v85;
    values[0] = C3DGenericSourceGetAccessor(v84);
    v87 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v88 = C3DGenericSourceCreateDeserializedDataWithAccessors(v84, v86, v87);
    C3DSourceAccessorsConvertToCurrentPlatform(v87);
    CFRelease(v87);
    if (v88)
    {
      C3DGenericSourceSetData(v84, v88);
      CFRelease(v88);
    }

    else
    {
      v89 = scn_default_log();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    theDict = theDicta;
  }

  v90 = CFDictionaryGetValue(theDict, @"timingFunctions");
  if (v90)
  {
    v91 = v90;
    v92 = C3DGenericSourceCreateEmpty();
    *&v228 = v92;
    C3DInitWithPropertyList(v92, v91, a3, a4);
  }

  else
  {
    v92 = 0;
  }

  v93 = CFDictionaryGetValue(theDict, @"timingFunctions-data");
  if (v93 && v92)
  {
    v94 = v93;
    values[0] = C3DGenericSourceGetAccessor(v92);
    v95 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v96 = C3DGenericSourceCreateDeserializedDataWithAccessors(v92, v94, v95);
    C3DSourceAccessorsConvertToCurrentPlatform(v95);
    CFRelease(v95);
    if (v96)
    {
      C3DGenericSourceSetData(v92, v96);
      CFRelease(v96);
    }

    else
    {
      v97 = scn_default_log();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    theDict = theDicta;
  }

  v98 = CFDictionaryGetValue(theDict, @"interpolationModes");
  if (v98)
  {
    v99 = v98;
    *(&v228 + 1) = C3DGenericSourceCreateEmpty();
    v219 = *(&v228 + 1);
    C3DInitWithPropertyList(*(&v228 + 1), v99, a3, a4);
  }

  else
  {
    v219 = 0;
  }

  v100 = CFDictionaryGetValue(theDict, @"interpolationModes-data");
  if (v100 && v219)
  {
    v101 = v100;
    values[0] = C3DGenericSourceGetAccessor(v219);
    v102 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v103 = C3DGenericSourceCreateDeserializedDataWithAccessors(v219, v101, v102);
    C3DSourceAccessorsConvertToCurrentPlatform(v102);
    CFRelease(v102);
    if (v103)
    {
      C3DGenericSourceSetData(v219, v103);
      CFRelease(v103);
    }

    else
    {
      v104 = scn_default_log();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    theDict = theDicta;
  }

  v105 = CFDictionaryGetValue(theDict, @"tensionValues");
  if (v105)
  {
    v106 = v105;
    v107 = C3DGenericSourceCreateEmpty();
    *&v229 = v107;
    C3DInitWithPropertyList(v107, v106, a3, a4);
  }

  else
  {
    v107 = 0;
  }

  v108 = CFDictionaryGetValue(theDict, @"tensionValues-data");
  if (v108 && v107)
  {
    v109 = v108;
    values[0] = C3DGenericSourceGetAccessor(v107);
    v110 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v111 = C3DGenericSourceCreateDeserializedDataWithAccessors(v107, v109, v110);
    C3DSourceAccessorsConvertToCurrentPlatform(v110);
    CFRelease(v110);
    if (v111)
    {
      C3DGenericSourceSetData(v107, v111);
      CFRelease(v111);
    }

    else
    {
      v112 = scn_default_log();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    theDict = theDicta;
  }

  v113 = CFDictionaryGetValue(theDict, @"continuityValues");
  if (v113)
  {
    v114 = v113;
    v115 = C3DGenericSourceCreateEmpty();
    *(&v229 + 1) = v115;
    C3DInitWithPropertyList(v115, v114, a3, a4);
  }

  else
  {
    v115 = 0;
  }

  v116 = CFDictionaryGetValue(theDict, @"continuityValues-data");
  if (v116 && v115)
  {
    v117 = v116;
    values[0] = C3DGenericSourceGetAccessor(v115);
    v118 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v119 = C3DGenericSourceCreateDeserializedDataWithAccessors(v115, v117, v118);
    C3DSourceAccessorsConvertToCurrentPlatform(v118);
    CFRelease(v118);
    if (v119)
    {
      C3DGenericSourceSetData(v115, v119);
      CFRelease(v119);
    }

    else
    {
      v120 = scn_default_log();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    theDict = theDicta;
  }

  v208 = v92;
  v216 = v107;
  v121 = CFDictionaryGetValue(theDict, @"biasValues");
  if (v121)
  {
    v122 = v121;
    v123 = C3DGenericSourceCreateEmpty();
    *&v230 = v123;
    C3DInitWithPropertyList(v123, v122, a3, a4);
  }

  else
  {
    v123 = 0;
  }

  v124 = CFDictionaryGetValue(theDict, @"biasValues-data");
  if (v124 && v123)
  {
    v125 = v124;
    values[0] = C3DGenericSourceGetAccessor(v123);
    v126 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v127 = C3DGenericSourceCreateDeserializedDataWithAccessors(v123, v125, v126);
    C3DSourceAccessorsConvertToCurrentPlatform(v126);
    CFRelease(v126);
    if (v127)
    {
      C3DGenericSourceSetData(v123, v127);
      CFRelease(v127);
    }

    else
    {
      v128 = scn_default_log();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    theDict = theDicta;
  }

  v129 = CFDictionaryGetValue(theDict, @"inTangents");
  if (v129)
  {
    v130 = v129;
    *(&v230 + 1) = C3DGenericSourceCreateEmpty();
    v210 = *(&v230 + 1);
    C3DInitWithPropertyList(*(&v230 + 1), v130, a3, a4);
  }

  else
  {
    v210 = 0;
  }

  v131 = CFDictionaryGetValue(theDict, @"inTangents-data");
  if (v131 && v210)
  {
    v132 = v131;
    values[0] = C3DGenericSourceGetAccessor(v210);
    v133 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v134 = C3DGenericSourceCreateDeserializedDataWithAccessors(v210, v132, v133);
    C3DSourceAccessorsConvertToCurrentPlatform(v133);
    CFRelease(v133);
    if (v134)
    {
      C3DGenericSourceSetData(v210, v134);
      CFRelease(v134);
    }

    else
    {
      v135 = scn_default_log();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    theDict = theDicta;
  }

  v136 = CFDictionaryGetValue(theDict, @"outTangents");
  if (v136)
  {
    v137 = v136;
    v138 = C3DGenericSourceCreateEmpty();
    v231 = v138;
    C3DInitWithPropertyList(v138, v137, a3, a4);
  }

  else
  {
    v138 = 0;
  }

  v139 = CFDictionaryGetValue(theDicta, @"outTangents-data");
  if (!v139 || !v138)
  {
    goto LABEL_175;
  }

  v140 = v139;
  values[0] = C3DGenericSourceGetAccessor(v138);
  v141 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
  v142 = C3DGenericSourceCreateDeserializedDataWithAccessors(v138, v140, v141);
  C3DSourceAccessorsConvertToCurrentPlatform(v141);
  CFRelease(v141);
  if (v142)
  {
    C3DGenericSourceSetData(v138, v142);
    CFRelease(v142);
    if (!Empty)
    {
      goto LABEL_172;
    }

LABEL_176:
    Accessor = C3DGenericSourceGetAccessor(Empty);
    if (!v84)
    {
      goto LABEL_173;
    }

    goto LABEL_177;
  }

  v145 = scn_default_log();
  if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
  {
    _C3DKeyframeControllerInitWithPropertyList_cold_2();
    if (Empty)
    {
      goto LABEL_176;
    }
  }

  else
  {
LABEL_175:
    if (Empty)
    {
      goto LABEL_176;
    }
  }

LABEL_172:
  Accessor = 0;
  if (!v84)
  {
LABEL_173:
    v144 = 0;
    goto LABEL_178;
  }

LABEL_177:
  v144 = C3DGenericSourceGetAccessor(v84);
LABEL_178:
  v146 = v219;
  if (v92)
  {
    v147 = C3DGenericSourceGetAccessor(v92);
    if (v219)
    {
LABEL_180:
      v148 = C3DGenericSourceGetAccessor(v219);
      goto LABEL_183;
    }
  }

  else
  {
    v147 = 0;
    if (v219)
    {
      goto LABEL_180;
    }
  }

  v148 = 0;
LABEL_183:
  v149 = v216;
  if (v216)
  {
    v149 = C3DGenericSourceGetAccessor(v216);
  }

  v220 = v149;
  if (v115)
  {
    v150 = C3DGenericSourceGetAccessor(v115);
  }

  else
  {
    v150 = 0;
  }

  v218 = v150;
  if (v123)
  {
    v151 = C3DGenericSourceGetAccessor(v123);
  }

  else
  {
    v151 = 0;
  }

  v152 = v216;
  v217 = v151;
  if (v210)
  {
    v153 = C3DGenericSourceGetAccessor(v210);
  }

  else
  {
    v153 = 0;
  }

  v215 = v153;
  if (v138)
  {
    v154 = C3DGenericSourceGetAccessor(v138);
    if (!Accessor)
    {
LABEL_201:
      for (i = 0; i != 72; i += 8)
      {
        v158 = *(&valuePtr + i);
        if (v158)
        {
          CFRelease(v158);
          *(&valuePtr + i) = 0;
        }
      }

      v159 = scn_default_log();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_13();
      }

      return 0;
    }
  }

  else
  {
    v154 = 0;
    if (!Accessor)
    {
      goto LABEL_201;
    }
  }

  if (!v144)
  {
    goto LABEL_201;
  }

  v213 = v154;
  v214 = v147;
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v144);
  if (C3DSourceAccessorGetData(Accessor))
  {
    v156 = C3DSourceAccessorGetCount(Accessor);
  }

  else
  {
    v156 = 0;
  }

  Data = C3DSourceAccessorGetData(v144);
  if (Data)
  {
    LODWORD(Data) = C3DSourceAccessorGetCount(v144);
  }

  if (!v156)
  {
    v166 = scn_default_log();
    if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
    {
      _C3DKeyframeControllerInitWithPropertyList_cold_11(v166, v167, v168, v169, v170, v171, v172, v173);
    }

    goto LABEL_218;
  }

  if (!ComponentsValueType || v156 != Data)
  {
LABEL_218:
    for (j = 0; j != 72; j += 8)
    {
      v175 = *(&valuePtr + j);
      if (v175)
      {
        CFRelease(v175);
        *(&valuePtr + j) = 0;
      }
    }

    v176 = scn_default_log();
    if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
    {
      _C3DKeyframeControllerInitWithPropertyList_cold_12();
    }

    return 0;
  }

  v212 = Accessor;
  v161 = CFDictionaryGetValue(theDicta, @"semantic");
  if (v161)
  {
    v162 = v161;
    v163 = v144;
    v164 = CFGetTypeID(v161);
    if (v164 == CFNumberGetTypeID())
    {
      LODWORD(values[0]) = 0;
      CFNumberGetValue(v162, kCFNumberIntType, values);
      v165 = values[0];
    }

    else
    {
      v165 = 0;
    }

    v144 = v163;
  }

  else
  {
    v165 = 0;
  }

  v177 = v208 != 0;
  v207 = v165;
  v209 = ComponentsValueType;
  _C3DKeyframeControllerSetupWithCapacity(v7, v156, ComponentsValueType, v165, v146 != 0, v177, v152 != 0, v210 != 0);
  v178 = 0;
  v179 = v156 - 2;
  v211 = v156;
  v180 = v7;
  do
  {
    ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(v212, v178);
    if (ValuePtrAtIndex)
    {
      v182 = *ValuePtrAtIndex;
    }

    else
    {
      v182 = 0.0;
    }

    v183 = v214;
    v184 = v144;
    v185 = C3DSourceAccessorGetValuePtrAtIndex(v144, v178);
    if (!v214)
    {
      goto LABEL_235;
    }

    v186 = C3DSourceAccessorGetValuePtrAtIndex(v214, v178);
    if (v186)
    {
      v183 = C3DTimingFunctionCreateWithControlPoints(*v186, v186[1], v186[2], v186[3]);
LABEL_235:
      if (!v148)
      {
        goto LABEL_242;
      }

      goto LABEL_236;
    }

    v183 = 0;
    if (!v148)
    {
      goto LABEL_242;
    }

LABEL_236:
    if (v178 >= v179)
    {
      v187 = v179;
    }

    else
    {
      v187 = v178;
    }

    v188 = C3DSourceAccessorGetValuePtrAtIndex(v148, v187);
    if (v188)
    {
      v189 = *v188;
      goto LABEL_243;
    }

LABEL_242:
    v189 = 0;
LABEL_243:
    if (v220)
    {
      v190 = C3DSourceAccessorGetValuePtrAtIndex(v220, v178);
    }

    else
    {
      v190 = 0;
    }

    v191 = v148;
    if (v218)
    {
      v192 = C3DSourceAccessorGetValuePtrAtIndex(v218, v178);
    }

    else
    {
      v192 = 0;
    }

    v193 = v217;
    if (v217)
    {
      v193 = C3DSourceAccessorGetValuePtrAtIndex(v217, v178);
    }

    v194 = 0.0;
    v195 = 0.0;
    if (v190)
    {
      v195 = *v190;
    }

    if (v192)
    {
      v194 = *v192;
    }

    if (v193)
    {
      v196 = *v193;
      if (v215)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v196 = 0.0;
      if (v215)
      {
LABEL_257:
        v197 = C3DSourceAccessorGetValuePtrAtIndex(v215, v178);
        goto LABEL_260;
      }
    }

    v197 = 0;
LABEL_260:
    if (v213)
    {
      v198 = C3DSourceAccessorGetValuePtrAtIndex(v213, v178);
    }

    else
    {
      v198 = 0;
    }

    C3DKeyframeControllerSetKeyframeAtIndex(v180, v178, v185, v189, v183, v197, v198, v182, v195, v194, v196);
    if (v183)
    {
      CFRelease(v183);
    }

    ++v178;
    v144 = v184;
    v148 = v191;
  }

  while (v211 != v178);
  v7 = v180;
  for (k = 0; k != 72; k += 8)
  {
    v200 = *(&valuePtr + k);
    if (v200)
    {
      CFRelease(v200);
      *(&valuePtr + k) = 0;
    }
  }

  *(v180 + 32) = C3DKeyFrameInterpolatorForType(v209, v207, 0, *(v180 + 31), *(v180 + 64) == 0);
  v201 = CFDictionaryGetValue(theDicta, @"interpolationMode");
  if (v201)
  {
    v202 = v201;
    v203 = CFGetTypeID(v201);
    if (v203 == CFNumberGetTypeID())
    {
      LODWORD(values[0]) = 0;
      CFNumberGetValue(v202, kCFNumberIntType, values);
      *(v180 + 31) = values[0];
    }
  }

  v204 = CFDictionaryGetValue(theDicta, @"calculationMode");
  if (v204)
  {
    v205 = v204;
    v206 = CFGetTypeID(v204);
    if (v206 == CFNumberGetTypeID())
    {
      LODWORD(values[0]) = 0;
      CFNumberGetValue(v205, kCFNumberIntType, values);
      *(v180 + 112) = values[0];
    }
  }

LABEL_83:
  KeyCount = C3DKeyframeControllerGetKeyCount(v7);
  if (KeyCount)
  {
    KeyTimeAtIndex = C3DKeyframeControllerGetKeyTimeAtIndex(v7, KeyCount - 1);
  }

  else
  {
    KeyTimeAtIndex = 0.0;
  }

  *(v7 + 16) = KeyTimeAtIndex;
  return 1;
}

__CFDictionary *_C3DKeyframeControllerCopyPropertyList(char *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!cf)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v16, 15, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"keyframeVersion", @"0.12");
  LODWORD(valuePtr) = cf[31];
  v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"interpolationMode", v18);
  CFRelease(v18);
  LODWORD(valuePtr) = cf[112];
  v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"calculationMode", v19);
  CFRelease(v19);
  if (*(cf + 5))
  {
    v20 = C3DMalloc(8 * *(cf + 6));
    v21 = v20;
    v22 = *(cf + 6);
    if (v22)
    {
      v23 = *(cf + 5);
      v24 = v20;
      do
      {
        v25 = *v23++;
        *v24++ = v25;
        --v22;
      }

      while (v22);
    }

    v26 = __C3DKeyframeControllerCopyGenericSource(cf, v20, 8, 1u, 6, 1);
    free(v21);
    if (v26)
    {
      v27 = C3DCopyPropertyList(v26, a2, a3, a4);
      if (v27)
      {
        v28 = v27;
        CFDictionaryAddValue(Mutable, @"keytimes", v27);
        CFRelease(v28);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v26);
        v29 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        SerializedDataWithAccessors = C3DGenericSourceCreateSerializedDataWithAccessors(v26, v29);
        CFRelease(v29);
        CFDictionaryAddValue(Mutable, @"keytimes-data", SerializedDataWithAccessors);
        CFRelease(SerializedDataWithAccessors);
      }

      CFRelease(v26);
    }
  }

  v31 = C3DKeyframeControllerCopyValuesAsGenericSource(cf);
  if (v31)
  {
    v32 = v31;
    v33 = C3DCopyPropertyList(v31, a2, a3, a4);
    if (v33)
    {
      v34 = v33;
      CFDictionaryAddValue(Mutable, @"values", v33);
      CFRelease(v34);
    }

    if (Mutable)
    {
      valuePtr = C3DGenericSourceGetAccessor(v32);
      v35 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
      v36 = C3DGenericSourceCreateSerializedDataWithAccessors(v32, v35);
      CFRelease(v35);
      CFDictionaryAddValue(Mutable, @"values-data", v36);
      CFRelease(v36);
    }

    CFRelease(v32);
  }

  v37 = *(cf + 7);
  if (v37)
  {
    v38 = __C3DKeyframeControllerCopyGenericSource(cf, v37, 4, 4u, 7, 0);
    if (v38)
    {
      v39 = v38;
      v40 = C3DCopyPropertyList(v38, a2, a3, a4);
      if (v40)
      {
        v41 = v40;
        CFDictionaryAddValue(Mutable, @"timingFunctions", v40);
        CFRelease(v41);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v39);
        v42 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v43 = C3DGenericSourceCreateSerializedDataWithAccessors(v39, v42);
        CFRelease(v42);
        CFDictionaryAddValue(Mutable, @"timingFunctions-data", v43);
        CFRelease(v43);
      }

      CFRelease(v39);
    }
  }

  v44 = *(cf + 8);
  if (v44)
  {
    v45 = __C3DKeyframeControllerCopyGenericSource(cf, v44, 1, 1u, 4, 0);
    if (v45)
    {
      v46 = v45;
      v47 = C3DCopyPropertyList(v45, a2, a3, a4);
      if (v47)
      {
        v48 = v47;
        CFDictionaryAddValue(Mutable, @"interpolationModes", v47);
        CFRelease(v48);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v46);
        v49 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v50 = C3DGenericSourceCreateSerializedDataWithAccessors(v46, v49);
        CFRelease(v49);
        CFDictionaryAddValue(Mutable, @"interpolationModes-data", v50);
        CFRelease(v50);
      }

      CFRelease(v46);
    }
  }

  v51 = *(cf + 9);
  if (v51)
  {
    v52 = __C3DKeyframeControllerCopyGenericSource(cf, v51, 4, 1u, 1, 0);
    if (v52)
    {
      v53 = v52;
      v54 = C3DCopyPropertyList(v52, a2, a3, a4);
      if (v54)
      {
        v55 = v54;
        CFDictionaryAddValue(Mutable, @"tensionValues", v54);
        CFRelease(v55);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v53);
        v56 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v57 = C3DGenericSourceCreateSerializedDataWithAccessors(v53, v56);
        CFRelease(v56);
        CFDictionaryAddValue(Mutable, @"tensionValues-data", v57);
        CFRelease(v57);
      }

      CFRelease(v53);
    }
  }

  v58 = *(cf + 10);
  if (v58)
  {
    v59 = __C3DKeyframeControllerCopyGenericSource(cf, v58, 4, 1u, 1, 0);
    if (v59)
    {
      v60 = v59;
      v61 = C3DCopyPropertyList(v59, a2, a3, a4);
      if (v61)
      {
        v62 = v61;
        CFDictionaryAddValue(Mutable, @"continuityValues", v61);
        CFRelease(v62);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v60);
        v63 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v64 = C3DGenericSourceCreateSerializedDataWithAccessors(v60, v63);
        CFRelease(v63);
        CFDictionaryAddValue(Mutable, @"continuityValues-data", v64);
        CFRelease(v64);
      }

      CFRelease(v60);
    }
  }

  v65 = *(cf + 11);
  if (v65)
  {
    v66 = __C3DKeyframeControllerCopyGenericSource(cf, v65, 4, 1u, 1, 0);
    if (v66)
    {
      v67 = v66;
      v68 = C3DCopyPropertyList(v66, a2, a3, a4);
      if (v68)
      {
        v69 = v68;
        CFDictionaryAddValue(Mutable, @"biasValues", v68);
        CFRelease(v69);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v67);
        v70 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v71 = C3DGenericSourceCreateSerializedDataWithAccessors(v67, v70);
        CFRelease(v70);
        CFDictionaryAddValue(Mutable, @"biasValues-data", v71);
        CFRelease(v71);
      }

      CFRelease(v67);
    }
  }

  v72 = *(cf + 12);
  if (v72)
  {
    v73 = __C3DKeyframeControllerCopyGenericSource(cf, v72, 8, cf[113], 8, 0);
    if (v73)
    {
      v74 = v73;
      v75 = C3DCopyPropertyList(v73, a2, a3, a4);
      if (v75)
      {
        v76 = v75;
        CFDictionaryAddValue(Mutable, @"inTangents", v75);
        CFRelease(v76);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v74);
        v77 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v78 = C3DGenericSourceCreateSerializedDataWithAccessors(v74, v77);
        CFRelease(v77);
        CFDictionaryAddValue(Mutable, @"inTangents-data", v78);
        CFRelease(v78);
      }

      CFRelease(v74);
    }
  }

  v79 = *(cf + 13);
  if (v79)
  {
    v80 = __C3DKeyframeControllerCopyGenericSource(cf, v79, 8, cf[113], 8, 0);
    if (v80)
    {
      v81 = v80;
      v82 = C3DCopyPropertyList(v80, a2, a3, a4);
      if (v82)
      {
        v83 = v82;
        CFDictionaryAddValue(Mutable, @"outTangents", v82);
        CFRelease(v83);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v81);
        v84 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v85 = C3DGenericSourceCreateSerializedDataWithAccessors(v81, v84);
        CFRelease(v84);
        CFDictionaryAddValue(Mutable, @"outTangents-data", v85);
        CFRelease(v85);
      }

      CFRelease(v81);
    }
  }

  KeyframeSemantic = C3DKeyframeControllerGetKeyframeSemantic(cf);
  if (KeyframeSemantic)
  {
    LODWORD(valuePtr) = KeyframeSemantic;
    v87 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"semantic", v87);
    CFRelease(v87);
  }

  return Mutable;
}

__int16 *C3D::PropagateMissingTextureParameters(__int16 *result, __int16 *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    v2 = *result;
  }

  *a2 = v2;
  v3 = a2[1];
  if (!v3)
  {
    v3 = result[1];
  }

  a2[1] = v3;
  v4 = a2[2];
  if (!v4)
  {
    v4 = result[2];
  }

  a2[2] = v4;
  v5 = a2[3];
  if (v5 <= result[3])
  {
    LOWORD(v5) = result[3];
  }

  a2[3] = v5;
  v6 = *(a2 + 8);
  if (!v6)
  {
    v6 = *(result + 8);
  }

  *(a2 + 8) = v6;
  v7 = *(a2 + 9);
  if (!v7)
  {
    v7 = *(result + 9);
  }

  *(a2 + 9) = v7;
  v8 = *(a2 + 10);
  if (!v8)
  {
    v8 = *(result + 10);
  }

  *(a2 + 10) = v8;
  v9 = *(a2 + 11);
  if (!v9)
  {
    v9 = *(result + 11);
  }

  *(a2 + 11) = v9;
  v10 = a2[6];
  if (!v10)
  {
    v10 = result[6];
  }

  a2[6] = v10;
  v11 = *(a2 + 14);
  if (v11 <= *(result + 14))
  {
    LOBYTE(v11) = *(result + 14);
  }

  *(a2 + 14) = v11;
  return result;
}

MTLTexture *C3D::CreateSharedTexture(MTLTexture *a1, uint64_t a2, void *a3, void *a4)
{
  if (([(MTLTexture *)a1 isFramebufferOnly]& 1) != 0 || [(MTLTexture *)a1 textureType]!= 2 || [(MTLTexture *)a1 sampleCount]!= 1)
  {
    return 0;
  }

  *v16._buffers = *a2;
  LODWORD(v16._buffers[2]) = *(a2 + 16);
  v8 = SCNMTLTextureDescToMTLTextureDescriptor(&v16);
  IsUnsignedInt = SCNMTLPixelFormatIsUnsignedInt([v8 pixelFormat]);
  [v8 setTextureType:{-[MTLTexture textureType](a1, "textureType")}];
  [v8 setSampleCount:1];
  [v8 setPixelFormat:70];
  [v8 setStorageMode:0];
  v10 = [a4 newTextureWithDescriptor:v8];
  v11 = @"copy_no_alpha_texture";
  if (IsUnsignedInt)
  {
    v11 = @"copy_no_alpha_uint_texture";
  }

  if (*(a2 + 12) == 252)
  {
    v12 = @"copy_no_alpha_depth_texture";
  }

  else
  {
    v12 = v11;
  }

  v13 = [a4 newComputePipelineStateWithFunctionName:v12];
  v16._encoder = 0;
  v16._bufferPool = 0;
  SCNMTLComputeCommandEncoder::beginEncoding(&v16, a3, 0, 0, 0);
  if (v16._textures[0] != v10)
  {
    v16._textures[0] = v10;
    v16._texturesToBind[0] |= 1uLL;
  }

  if (v16._textures[1] != a1)
  {
    v16._textures[1] = a1;
    v16._texturesToBind[0] |= 2uLL;
  }

  v14 = [(SCNMTLOpenSubdivComputeEvaluator *)v13 computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOnTexture2D(&v16, v10, v14);
  SCNMTLComputeCommandEncoder::endEncoding(&v16);

  return v10;
}

void *SCNMTLComputeCommandEncoder::beginEncoding(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a1[207])
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      SCNMTLComputeCommandEncoder::beginEncoding(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  bzero(a1, 0x6B0uLL);
  *(a1 + 420) = a3;
  a1[208] = a2;
  result = [a2 computeCommandEncoder];
  a1[207] = result;
  a1[209] = a5;
  if (a4)
  {
    return [result setLabel:a4];
  }

  return result;
}

uint64_t C3D::SetupDefaultRenderPassDescriptor(C3D *this, __C3DEngineContext *a2, MTLRenderPassDescriptor *a3)
{
  v3 = a3;
  RenderContext = C3DEngineContextGetRenderContext(this);
  for (i = 0; i != 8; ++i)
  {
    [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
    [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
  }

  [-[__C3DEngineContext depthAttachment](a2 "depthAttachment")];
  [-[__C3DEngineContext depthAttachment](a2 "depthAttachment")];
  [-[__C3DEngineContext stencilAttachment](a2 "stencilAttachment")];
  [(__C3DEngineContext *)a2 setRenderTargetArrayLength:0];
  [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
  result = [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
  if (v3)
  {
    [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
    ViewBackgroundColor = C3DEngineContextGetViewBackgroundColor(this);
    v10 = ViewBackgroundColor.n128_f32[0];
    v11 = ViewBackgroundColor.n128_f32[1];
    v12 = ViewBackgroundColor.n128_f32[2];
    v13 = ViewBackgroundColor.n128_f32[3];
    v14 = [-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];

    return [v14 setClearColor:{v10, v11, v12, v13}];
  }

  return result;
}

void *C3D::RenderGraph::GraphNode::successorsAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(a4, a3);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = 4 * v8;
    do
    {
      v11 = *v9;
      if (a2 == BYTE2(v11))
      {
        result = C3D::Array<C3D::RenderGraph::Link,0u,C3D::StackAllocator>::push_back<C3D::RenderGraph::Link&>(a4, &v11);
      }

      ++v9;
      v10 -= 4;
    }

    while (v10);
  }

  return result;
}

_DWORD *C3D::Array<C3D::RenderGraph::Link,0u,C3D::StackAllocator>::push_back<C3D::RenderGraph::Link&>(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = C3DStackAllocatorAllocateAligned(*result, 4 * v7, 4, 0);
    result = memcpy(Aligned, v6, 4 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v7;
    v6 = Aligned;
    v4 = v3[2];
  }

  *(v6 + v4) = *a2;
  ++v3[2];
  return result;
}

void *C3D::RenderGraph::GraphNode::predecessorsAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(a4, a3);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);
    v10 = 4 * v8;
    do
    {
      v11 = *v9;
      if (a2 == BYTE2(v11))
      {
        result = C3D::Array<C3D::RenderGraph::Link,0u,C3D::StackAllocator>::push_back<C3D::RenderGraph::Link&>(a4, &v11);
      }

      ++v9;
      v10 -= 4;
    }

    while (v10);
  }

  return result;
}

void C3D::RenderGraph::~RenderGraph(C3D::RenderGraph *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::~Hash(v2);
    MEMORY[0x21CF07610](v3, 0x1030C408C11463FLL);
  }

  C3DScratchAllocatorDelete(*(this + 2));
  v4 = *(this + 24);
  if (v4)
  {
    CFRelease(v4);
    *(this + 24) = 0;
  }

  v5 = *(this + 25);
  if (v5)
  {
    CFRelease(v5);
    *(this + 25) = 0;
  }
}

uint64_t C3D::RenderGraph::createPersistentResource(uint64_t a1, uint64_t a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 40, 8, 0);
  result = C3D::RefCountedResource::RefCountedResource(Aligned);
  *result = a2;
  *(result + 32) = 1;
  *(result + 34) |= 1u;
  return result;
}

void C3D::RenderGraph::addDependency(C3D::RenderGraph *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = *(this + 3);
  v7 = *(v6 + 8);
  if (v7 <= a2)
  {
    C3D::RenderGraph::addDependency();
  }

  if (v7 <= a3)
  {
    C3D::RenderGraph::addDependency();
  }

  v11 = a2;
  v12 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v6, a2);
  v13 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), a3);
  if (a4 != 255)
  {
    v14 = C3D::Pass::descriptor(*v12);
    if (C3D::PassDescriptor::inputCount(v14) <= a4)
    {
      C3D::RenderGraph::addDependency();
    }
  }

  if (a5 == 255)
  {
    goto LABEL_9;
  }

  v15 = C3D::Pass::descriptor(*v13);
  if (C3D::PassDescriptor::outputCount(v15) <= a5)
  {
    C3D::RenderGraph::addDependency();
  }

  if (a4 == 255 || (v16 = C3D::Pass::descriptor(*v12), v17 = C3D::PassDescriptor::inputAtIndex(v16, a4), v18 = C3D::Pass::descriptor(*v13), v19 = C3D::PassDescriptor::outputAtIndex(v18, a5), C3D::PassIODescriptor::isPartiallyCompatible(v19, v17)))
  {
LABEL_9:
    *buf = a3 & 0x7FFF | (a4 << 16) | (a5 << 24);
    v20 = *(v12 + 16);
    if (v20)
    {
      v21 = 4 * v20;
      v22 = *(v12 + 24);
      while ((*v22 & 0xFFFF7FFF) != (a3 & 0x7FFF | (a4 << 16) | (a5 << 24)))
      {
        ++v22;
        v21 -= 4;
        if (!v21)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v22 = *(v12 + 24);
    }

    if (v22 == (*(v12 + 24) + 4 * v20))
    {
LABEL_16:
      C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>((v12 + 8), buf);
    }

    *buf = v11 & 0x7FFF | (a5 << 16) | (a4 << 24);
    v23 = *(v13 + 40);
    if (v23)
    {
      v24 = 4 * v23;
      v25 = *(v13 + 48);
      while ((*v25 & 0xFFFF7FFF) != (v11 & 0x7FFF | (a5 << 16) | (a4 << 24)))
      {
        ++v25;
        v24 -= 4;
        if (!v24)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v25 = *(v13 + 48);
    }

    if (v25 == (*(v13 + 48) + 4 * v23))
    {
LABEL_24:
      C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>((v13 + 32), buf);
    }
  }

  else
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      C3D::RenderGraph::addDependency();
    }

    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      C3D::RenderGraph::addDependency();
    }

    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = (***v13)();
      C3D::PassIODescriptor::description(v19, &__p);
      v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      v36 = v30;
      v37 = 1024;
      v38 = a5;
      v39 = 2080;
      v40 = v31;
      _os_log_error_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_ERROR, "Error: Output descriptor of pass %s at port %d: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v29 = scn_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = (***v12)();
      C3D::PassIODescriptor::description(v17, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v36 = v32;
      v37 = 1024;
      v38 = a4;
      v39 = 2080;
      v40 = p_p;
      _os_log_error_impl(&dword_21BEF7000, v29, OS_LOG_TYPE_ERROR, "Error: Input descriptor of pass %s at port %d: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

uint64_t C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 8);
      v7 = 136315906;
      v8 = "i < size()";
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = a2;
      v13 = 1024;
      v14 = v6;
      _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Out of bound Array:%p access %d size %d", &v7, 0x22u);
    }
  }

  return *(a1 + 16) + 56 * a2;
}

void C3D::RenderGraph::addDependency(C3D::RenderGraph *this, const C3D::Pass *a2, const C3D::Pass *a3, unsigned int a4, unsigned int a5)
{
  if (C3DMeshElementGetPrimitiveCount(a2) == -1)
  {
    C3D::RenderGraph::addDependency();
  }

  if (C3DMeshElementGetPrimitiveCount(a3) == -1)
  {
    C3D::RenderGraph::addDependency();
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  v11 = C3DMeshElementGetPrimitiveCount(a3);

  C3D::RenderGraph::addDependency(this, PrimitiveCount, v11, a4, a5);
}

void C3D::RenderGraph::addDependency(C3D::RenderGraph *this, unsigned int a2, unsigned int a3)
{
  v4 = *(this + 3);
  v5 = *(v4 + 8);
  if (v5 <= a2)
  {
    C3D::RenderGraph::addDependency();
  }

  if (v5 <= a3)
  {
    C3D::RenderGraph::addDependency();
  }

  v8 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v4, a2);
  v9 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), a3);
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1));
  C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(&v19, StackAllocator);
  C3D::RenderGraph::matchingPortForNodes(this, v8, v9, &v19);
  if (v20)
  {
    v11 = v21;
    v12 = &v21[2 * v20];
    do
    {
      C3D::RenderGraph::addDependency(this, a2, a3, *v11, v11[1]);
      v11 += 2;
    }

    while (v11 != v12);
  }

  else
  {
    v13 = C3D::Pass::descriptor(*v8);
    v14 = C3D::PassDescriptor::inputCount(v13);
    v15 = C3D::Pass::descriptor(*v9);
    v16 = C3D::PassDescriptor::outputCount(v15);
    if (v14 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 255;
    }

    if (v16 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 255;
    }

    C3D::RenderGraph::addDependency(this, a2, a3, v17, v18);
  }
}

uint64_t C3D::RenderGraph::matchingPortForNodes(uint64_t a1, uint64_t a2, C3D::Pass **a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 8);
  v7 = *a2;
  v37 = *a3;
  StackAllocator = C3DEngineContextGetStackAllocator(*(a1 + 8));
  C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(&v39, StackAllocator);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(a2 + 24);
    v11 = 4 * v9;
    do
    {
      if ((~*v10 & 0xFF0000) != 0)
      {
        LOBYTE(v38) = BYTE2(*v10);
        C3D::Array<unsigned char,16u,C3D::StackAllocator>::push_back<unsigned char>(&v39, &v38);
      }

      ++v10;
      v11 -= 4;
    }

    while (v11);
  }

  v12 = C3D::Pass::descriptor(v37);
  result = C3D::PassDescriptor::outputCount(v12);
  v36 = result;
  if (!result)
  {
    return result;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = C3D::Pass::descriptor(v37);
    v18 = C3D::PassDescriptor::outputAtIndex(v17, v14);
    v19 = C3D::Pass::descriptor(v7);
    result = C3D::PassDescriptor::inputCount(v19);
    v20 = result;
    if (!result)
    {
      goto LABEL_45;
    }

    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = C3D::Pass::descriptor(v7);
      v24 = C3D::PassDescriptor::inputAtIndex(v23, v21);
      v25 = __s + __n;
      v26 = memchr(__s, v22, __n);
      v27 = !v26 || v26 == v25;
      v28 = v27;
      result = C3D::PassIODescriptor::isMatching(v18, v24);
      if ((v28 & result) == 1)
      {
        break;
      }

LABEL_42:
      v21 = ++v22;
      if (v22 >= v20)
      {
        goto LABEL_45;
      }
    }

    if (v6)
    {
      if (!*(a4 + 8))
      {
        goto LABEL_37;
      }

      v29 = 0;
      do
      {
        if (*C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v29) == v22 || (result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v29), *(result + 1) == v16))
        {
          result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v29);
          *result = v22;
          *(result + 1) = v16;
          goto LABEL_42;
        }

        ++v29;
        v30 = *(a4 + 8);
      }

      while (v29 < v30);
      if (!v30)
      {
        goto LABEL_37;
      }

      v31 = 0;
      v32 = 0;
      do
      {
        result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v31);
        if (*result == 255)
        {
          result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v31);
          if (*(result + 1) == 255)
          {
            result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v31);
            *result = v22;
            *(result + 1) = v16;
            v32 = 1;
            v15 = 1;
          }
        }

        ++v31;
      }

      while (v31 < *(a4 + 8));
      if ((v32 & 1) == 0)
      {
LABEL_37:
        if (v15)
        {
          LOBYTE(v38) = v22;
          HIBYTE(v38) = v16;
          result = C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(a4, &v38);
        }
      }

      goto LABEL_42;
    }

    v33 = *(a4 + 8);
    if (v33)
    {
      v34 = 2 * v33;
      v35 = *(a4 + 16);
      while (*v35 != v22 && v35[1] != v16)
      {
        v35 += 2;
        v34 -= 2;
        if (!v34)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v35 = *(a4 + 16);
    }

    if (v35 != (*(a4 + 16) + 2 * v33))
    {
      goto LABEL_42;
    }

LABEL_44:
    LOBYTE(v38) = v22;
    HIBYTE(v38) = v16;
    result = C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(a4, &v38);
LABEL_45:
    v14 = ++v16;
  }

  while (v16 < v36);
  return result;
}

void C3D::RenderGraph::addDependency(C3D::RenderGraph *this, const C3D::Pass *a2, const C3D::Pass *a3)
{
  if (C3DMeshElementGetPrimitiveCount(a2) == -1)
  {
    C3D::RenderGraph::addDependency();
  }

  if (C3DMeshElementGetPrimitiveCount(a3) == -1)
  {
    C3D::RenderGraph::addDependency();
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  v7 = C3DMeshElementGetPrimitiveCount(a3);

  C3D::RenderGraph::addDependency(this, PrimitiveCount, v7);
}

void C3D::RenderGraph::removeDependency(C3D::RenderGraph *this, const C3D::Pass *a2, const C3D::Pass *a3)
{
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  v6 = C3DMeshElementGetPrimitiveCount(a3);
  v7 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), PrimitiveCount);
  v8 = *(this + 3);
  v9 = v6;
  v10 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v8, v6);
  if (*(v10 + 40))
  {
    v11 = v10;
    v12 = 0;
    do
    {
      if ((*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v12) & 0x7FFF) == PrimitiveCount)
      {
        v13 = *(v11 + 40) - 1;
        v14 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v12);
        v15 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v13);
        v16 = *v14;
        *v14 = *v15;
        *v15 = v16;
        C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(v11 + 32, v13);
      }

      else
      {
        ++v12;
      }
    }

    while (v12 < *(v11 + 40));
  }

  if (*(v7 + 16))
  {
    v17 = 0;
    do
    {
      if ((*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 8, v17) & 0x7FFF) == v9)
      {
        v18 = *(v7 + 16) - 1;
        v19 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 8, v17);
        v20 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 8, v18);
        v21 = *v19;
        *v19 = *v20;
        *v20 = v21;
        C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(v7 + 8, v18);
      }

      else
      {
        ++v17;
      }
    }

    while (v17 < *(v7 + 16));
  }
}

uint64_t C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 8);
      v7 = 136315906;
      v8 = "i < size()";
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = a2;
      v13 = 1024;
      v14 = v6;
      _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Out of bound Array:%p access %d size %d", &v7, 0x22u);
    }
  }

  return *(a1 + 16) + 4 * a2;
}

void C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 16);
      if (*(a1 + 12) < a2)
      {
        v6 = (a2 * 1.5);
        Aligned = C3DScratchAllocatorAllocateAligned(*a1, 4 * v6, 4, 0);
        memcpy(Aligned, v5, 4 * *(a1 + 8));
        *(a1 + 16) = Aligned;
        *(a1 + 12) = v6;
        v5 = Aligned;
        v2 = *(a1 + 8);
      }

      bzero(&v5[4 * v2], 4 * (a2 - v2));
    }

    *(a1 + 8) = a2;
  }
}

void C3D::RenderGraph::setCustomTechnique(C3D::RenderGraph *this, CFTypeRef cf)
{
  v3 = *(this + 24);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(this + 24) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(this + 24) = v5;
    *(this + 208) = 0;
    v6 = *(this + 25);
    if (v6)
    {
      CFRelease(v6);
      *(this + 25) = 0;
    }
  }
}

uint64_t C3D::RenderGraph::finalTechnique(C3D::RenderGraph *this)
{
  if ((*(this + 208) & 1) == 0)
  {
    v2 = *(this + 25);
    if (v2)
    {
      CFRelease(v2);
      *(this + 25) = 0;
    }

    PointOfView = C3DEngineContextGetPointOfView(*(this + 1));
    if (PointOfView && (Camera = C3DNodeGetCamera(PointOfView)) != 0)
    {
      Technique = C3DCameraGetTechnique(Camera);
    }

    else
    {
      Technique = 0;
    }

    Mutable = CFArrayCreateMutable(0, 10, MEMORY[0x277CBF128]);
    Scene = C3DEngineContextGetScene(*(this + 1));
    LightingSystem = C3DSceneGetLightingSystem(Scene);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN3C3D11RenderGraph14finalTechniqueEv_block_invoke;
    v15[3] = &__block_descriptor_40_e21_v16__0____C3DLight__8l;
    v15[4] = Mutable;
    C3DLightingSystemEnumerateLightsWithTechnique(LightingSystem, v15);
    if (Technique)
    {
      CFArrayAppendValue(Mutable, Technique);
    }

    v9 = *(this + 24);
    if (v9)
    {
      CFArrayAppendValue(Mutable, v9);
    }

    if (CFArrayGetCount(Mutable))
    {
      v10 = C3DFXTechniqueCreateBySequencingTechniques(Mutable, 0);
      v11 = *(this + 25);
      if (v11 != v10)
      {
        if (v11)
        {
          CFRelease(v11);
          *(this + 25) = 0;
        }

        if (v10)
        {
          v12 = CFRetain(v10);
        }

        else
        {
          v12 = 0;
        }

        *(this + 25) = v12;
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      v13 = *(this + 25);
      if (v13)
      {
        CFRelease(v13);
        *(this + 25) = 0;
      }
    }

    CFRelease(Mutable);
    *(this + 208) = 1;
  }

  return *(this + 25);
}

void ___ZN3C3D11RenderGraph14finalTechniqueEv_block_invoke(uint64_t a1, uint64_t a2)
{
  Technique = C3DLightGetTechnique(a2);
  if (Technique)
  {
    v4 = Technique;
    v5 = *(a1 + 32);

    CFArrayAppendValue(v5, v4);
  }
}

void C3D::RenderGraph::reset(C3D::RenderGraph *this)
{
  if ((*(this + 210) & 1) == 0)
  {
    C3D::RenderGraph::checkResources(this);
  }

  C3D::RenderGraphResourceManager::purgeIfNeeded(*(this + 16));
  v3 = *(this + 2);
  v2 = (this + 16);
  C3DScratchAllocatorReset(v3);
  Aligned = C3DScratchAllocatorAllocateAligned(*v2, 24, 8, 0);
  v2[1] = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(Aligned, *v2);
  v2[15] = C3D::ScratchAllocate<C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>,void *&>(*v2, v2);
  v5 = C3DScratchAllocatorAllocateAligned(*v2, 24, 8, 0);
  v2[16] = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(v5, *v2);

  C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_allocate(v2 + 5, 32);
}

uint64_t C3D::RenderGraph::checkResources(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(v1 + 8);
      if (v3)
      {
        v4 = *(v1 + 16);
        v5 = &v4[v3];
        do
        {
          v6 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v2 + 24), *v4);
          v7 = C3D::Pass::resource(*v6);
          this = C3D::PassResource::outputCount(v7);
          if (this)
          {
            v8 = 0;
            do
            {
              v9 = C3D::Pass::resource(*v6);
              C3D::PassResource::outputAtIndex(v9, v8++);
              v10 = C3D::Pass::resource(*v6);
              this = C3D::PassResource::outputCount(v10);
            }

            while (v8 < this);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      v1 = *(v1 + 24);
    }

    while (v1);
  }

  return this;
}

void *C3D::ScratchAllocate<C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>,void *&>(uint64_t a1, void **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(a1, 40, 8, 0);
  C3D::ScratchAllocator::ScratchAllocator(&v5, *a2);
  *Aligned = v5;
  C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_allocate(Aligned, 32);
  return Aligned;
}

uint64_t C3D::RenderGraph::setup(C3D::RenderGraph *this)
{
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1));
  C3DStackAllocatorPushFrame(StackAllocator);
  *(this + 209) = 1;
  RenderContext = C3DEngineContextGetRenderContext(*(this + 1));
  if (*(this + 21))
  {
    [-[SCNMTLRenderContext layerTarget](RenderContext) setFramebufferOnly:0];
  }

  v4 = *(*(this + 3) + 8);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), i);
      (*(**v6 + 8))(*v6);
    }
  }

  C3D::RenderGraph::resolvePartialDependencies(this);
  C3D::RenderGraph::removeInvalidPasses(this);
  v7 = C3D::RenderGraph::sort(this);
  *(this + 211) = v7;
  if (v7)
  {
    C3D::RenderGraph::resolvePartialCompatibility(this);
    C3D::RenderGraph::validate(this);
  }

  *(this + 209) = 0;

  return C3DStackAllocatorPopFrame(StackAllocator);
}

void C3D::RenderGraph::resolvePartialDependencies(C3D::RenderGraph *this)
{
  v53 = *MEMORY[0x277D85DE8];
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1));
  C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(&v42, StackAllocator);
  v3 = *(this + 3);
  v4 = *(v3 + 8);
  if (*(v3 + 8))
  {
    v5 = 0;
    while (1)
    {
      v6 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v5);
      C3D::Array<C3D::RenderGraph::Link,16u,C3D::StackAllocator>::resize(&v42, 0);
      v44 = 16;
      v45 = &v46;
      if (*(v6 + 40))
      {
        v7 = 0;
        do
        {
          v8 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v6 + 32, v7);
          if (HIBYTE(*v8) == 255 || (*v8 & 0xFF0000) == 0xFF0000)
          {
            C3D::Array<C3D::RenderGraph::Link,0u,C3D::StackAllocator>::push_back<C3D::RenderGraph::Link&>(&v42, v8);
            v9 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v6 + 32, v7);
            v10 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v6 + 32, *(v6 + 40) - 1);
            v11 = *v9;
            *v9 = *v10;
            *v10 = v11;
            C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(v6 + 32, *(v6 + 40) - 1);
          }

          else
          {
            ++v7;
          }
        }

        while (v7 < *(v6 + 40));
      }

      if (v43)
      {
        std::__introsort<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *,false>(v45, &v45[v43], 126 - 2 * __clz(v43), 1);
        if (v43)
        {
          break;
        }
      }

LABEL_41:
      if (++v5 == v4)
      {
        return;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v42, v12);
      v14 = v13;
      if (!v12)
      {
        break;
      }

      v15 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v42, v12 - 1);
      v16 = *v14;
      if (((*v14 ^ *v15) & 0x7FFF) != 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      if (++v12 >= v43)
      {
        if (v43)
        {
          for (i = 0; i < v43; ++i)
          {
            v23 = *(this + 3);
            v24 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v42, i);
            v25 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v23, *v24 & 0x7FFF);
            C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(&v39, StackAllocator);
            if (i < v43)
            {
              v26 = i;
              do
              {
                v27 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v42, v26);
                v28 = v27;
                if (v26)
                {
                  v29 = *v27;
                  if (((*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v42, v26 - 1) ^ v29) & 0x7FFF) != 0)
                  {
                    break;
                  }
                }

                v30 = *v28;
                buf[0] = HIBYTE(*v28);
                buf[1] = BYTE2(v30);
                C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(&v39, buf);
                ++v26;
              }

              while (v26 < v43);
            }

            C3D::RenderGraph::matchingPortForNodes(this, v25, v6, &v39);
            v31 = v40;
            if (v40)
            {
              goto LABEL_35;
            }

            v32 = scn_default_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              v37 = (***v6)();
              v38 = (***v25)();
              *buf = 136315650;
              v48 = "!portsPairs.empty()";
              v49 = 2080;
              v50 = v37;
              v51 = 2080;
              v52 = v38;
              _os_log_fault_impl(&dword_21BEF7000, v32, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Unable to resolve dependency between %s and %s", buf, 0x20u);
            }

            v31 = v40;
            if (v40)
            {
LABEL_35:
              v33 = v41;
              v34 = &v41[2 * v31];
              do
              {
                v35 = *v33;
                if (v35 != 255)
                {
                  v36 = v33[1];
                  if (v36 != 255)
                  {
                    C3D::RenderGraph::addDependency(this, *v25, *v6, v35, v36);
                  }
                }

                v33 += 2;
              }

              while (v33 != v34);
            }
          }
        }

        goto LABEL_41;
      }
    }

    v16 = *v13;
LABEL_17:
    v17 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v16 & 0x7FFF);
    if (*(v17 + 16))
    {
      v18 = 0;
      do
      {
        while ((*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v17 + 8, v18) & 0x7FFF) == v5)
        {
          v19 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v17 + 8, v18);
          v20 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v17 + 8, *(v17 + 16) - 1);
          v21 = *v19;
          *v19 = *v20;
          *v20 = v21;
          C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(v17 + 8, *(v17 + 16) - 1);
          if (*(v17 + 16) <= v18)
          {
            goto LABEL_23;
          }
        }

        ++v18;
      }

      while (v18 < *(v17 + 16));
    }

    goto LABEL_23;
  }
}

void C3D::RenderGraph::removeInvalidPasses(C3D::RenderGraph *this)
{
  v49 = *MEMORY[0x277D85DE8];
  C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::resize(this + 32, 0);
  *(this + 11) = 0;
  *(this + 6) = this + 56;
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1));
  v41 = StackAllocator;
  C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_allocate(&v41, 32);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v39, StackAllocator);
  v3 = *(this + 3);
  v4 = *(v3 + 8);
  if (*(v3 + 8))
  {
    v5 = 0;
    do
    {
      *buf = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v5);
      if (*C3D::Pass::descriptor(**buf) == 5)
      {
        C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v39, buf);
      }

      ++v5;
    }

    while (v4 != v5);
  }

  if (!v40)
  {
    goto LABEL_34;
  }

  do
  {
    v6 = *C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::back(&v39);
    C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::pop_back(&v39);
    *buf = *v6;
    C3D::Hash<C3D::Pass *,C3D::StackAllocator>::insert(&v41, *buf, buf);
    C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::Array(v38, *(this + 2), *(v6 + 16));
    v7 = *(v6 + 16);
    if (!v7)
    {
      continue;
    }

    v8 = 0;
    v9 = *(v6 + 24);
    v10 = &v9[v7];
    do
    {
      v11 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v9 & 0x7FFF);
      v37 = v11;
      v12 = *v9 & 0xFF0000;
      if (HIBYTE(*v9) == 255 || v12 == 16711680)
      {
        v16 = HIBYTE(*v9) == 255;
        v17 = scn_default_log();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        if (v16)
        {
          if (v12 == 16711680)
          {
            if (v18)
            {
              v19 = (***v6)();
              v20 = (***v37)();
              v21 = (***v37)();
              *buf = 136315650;
              *&buf[4] = v19;
              v47 = 2080;
              *v48 = v20;
              *&v48[8] = 2080;
              *&v48[10] = v21;
              _os_log_error_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_ERROR, "Error: Pass %s has an unresolved dependency with pass %s. Pass %s will be ignored", buf, 0x20u);
            }

            goto LABEL_26;
          }

          if (v18)
          {
            v28 = (***v6)();
            v29 = *(v9 + 2);
            v30 = (***v37)();
            v31 = (***v37)();
            *buf = 136315906;
            *&buf[4] = v28;
            v47 = 1024;
            *v48 = v29;
            *&v48[4] = 2080;
            *&v48[6] = v30;
            *&v48[14] = 2080;
            *&v48[16] = v31;
            _os_log_error_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_ERROR, "Error: Pass %s has an unresolved dependency from output port %d of pass %s. Pass %s will be ignored", buf, 0x26u);
          }
        }

        else if (v18)
        {
          v24 = (***v6)();
          v25 = *(v9 + 3);
          v26 = (***v37)();
          v27 = (***v37)();
          *buf = 136315906;
          *&buf[4] = v24;
          v47 = 1024;
          *v48 = v25;
          *&v48[4] = 2080;
          *&v48[6] = v26;
          *&v48[14] = 2080;
          *&v48[16] = v27;
          _os_log_error_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_ERROR, "Error: Pass %s has an unresolved dependency on input port %d with pass %s. Pass %s will be ignored", buf, 0x26u);
        }

        v22 = *v9;
        v23 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v9 & 0x7FFF);
        C3D::RenderGraph::logDependencyInputMismatch(this, v6, v23, BYTE2(v22), HIBYTE(v22));
LABEL_26:
        v8 = 1;
        goto LABEL_27;
      }

      v13 = (v45 - 1) & *v11;
      v14 = *(v44 + 2 * v13);
      if (v14 < 2)
      {
        goto LABEL_15;
      }

      while ((v14 & 2) == 0 || *(v42 + 8 * v13) != *v11)
      {
        ++v13;
        v15 = v14 >= 4;
        v14 >>= 1;
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      if (!v43)
      {
LABEL_15:
        C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>(v38, v9);
        C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v39, &v37);
      }

LABEL_27:
      ++v9;
    }

    while (v9 != v10);
    if (v8)
    {
      C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(v6 + 8, v38);
    }
  }

  while (v40);
LABEL_34:
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v33 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), i);
      v34 = (v45 - 1) & *v33;
      v35 = *(v44 + 2 * v34);
      if (v35 < 2)
      {
        goto LABEL_40;
      }

      while ((v35 & 2) == 0 || *(v42 + 8 * v34) != *v33)
      {
        ++v34;
        v15 = v35 >= 4;
        v35 >>= 1;
        if (!v15)
        {
          goto LABEL_40;
        }
      }

      if (!v43)
      {
LABEL_40:
        v36 = scn_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          C3D::RenderGraph::removeInvalidPasses(buf, v33);
        }

        C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::push_back<C3D::Pass *&>(this + 8, v33);
      }
    }
  }
}

BOOL C3D::RenderGraph::sort(C3D::RenderGraph *this)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(this + 2), 40, 8, 0);
  v3 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(Aligned, *(this + 2));
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(this + 12) = v3;
  if (*(*(this + 3) + 8) >= 0x7FFFu)
  {
    C3D::RenderGraph::sort();
  }

  C3D::RenderGraph::clearAllDirtyBits(this, 1);
  v4 = *(*(this + 3) + 8);
  LOWORD(v61[0]) = 0;
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v5);
      if (!*(v6 + 16))
      {
        v7 = *(this + 10);
        if (v7)
        {
          v8 = 8 * v7;
          v9 = *(this + 6);
          while (*v9 != *v6)
          {
            ++v9;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v9 = *(this + 6);
        }

        if (v9 == (*(this + 6) + 8 * v7))
        {
LABEL_12:
          C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::push_back<unsigned short &>(*(this + 12), v61);
        }
      }

      ++LOWORD(v61[0]);
      v5 = LOWORD(v61[0]);
    }

    while (v4 > LOWORD(v61[0]));
  }

  v10 = *(this + 12);
  if (!*(v10 + 8))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3D::RenderGraph::sort(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = *(this + 12);
    if (!v10)
    {
      *(this + 13) = 0;
      return 1;
    }
  }

  v19 = v10;
  do
  {
    v20 = v19;
    if (v10 != v19)
    {
      *(v10 + 24) = v19;
      *(v19 + 32) = v10;
    }

    v21 = *(v19 + 8);
    if (!v21)
    {
      break;
    }

    v19 = 0;
    v22 = *(v20 + 16);
    v23 = &v22[v21];
    do
    {
      v24 = *v22;
      v25 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v24);
      v26 = *(v25 + 40);
      if (v26)
      {
        v27 = *(v25 + 48);
        v28 = &v27[v26];
        do
        {
          v29 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v27 & 0x7FFF);
          v30 = *(v29 + 16);
          if (v30)
          {
            v31 = 0;
            v32 = *(v29 + 24);
            v33 = 4 * v30;
            do
            {
              if ((*v32 & 0x8000) != 0)
              {
                ++v31;
              }

              else if ((*v32 & 0x7FFF) == v24)
              {
                ++v31;
                *v32 |= 0x8000u;
              }

              ++v32;
              v33 -= 4;
            }

            while (v33);
          }

          else
          {
            v31 = 0;
          }

          v34 = *(this + 6);
          v35 = *(this + 10);
          v36 = &v34[v35];
          if (v35)
          {
            v37 = 8 * v35;
            while (*v34 != *v29)
            {
              ++v34;
              v37 -= 8;
              if (!v37)
              {
                v34 = v36;
                break;
              }
            }
          }

          if (v34 == v36 && v31 == v30)
          {
            if (!v19)
            {
              v19 = C3DScratchAllocatorAllocateAligned(*(this + 2), 40, 8, 0);
              v38 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(v19, *(this + 2));
              *(v38 + 3) = 0;
              *(v38 + 4) = 0;
            }

            v39 = *v27 & 0x7FFF;
            LOWORD(v61[0]) = *v27 & 0x7FFF;
            v40 = *(v19 + 8);
            if (v40)
            {
              v41 = 2 * v40;
              v42 = *(v19 + 16);
              while (*v42 != v39)
              {
                ++v42;
                v41 -= 2;
                if (!v41)
                {
                  goto LABEL_50;
                }
              }
            }

            else
            {
              v42 = *(v19 + 16);
            }

            if (v42 == (*(v19 + 16) + 2 * v40))
            {
LABEL_50:
              C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::push_back<unsigned short &>(v19, v61);
            }
          }

          ++v27;
        }

        while (v27 != v28);
      }

      ++v22;
    }

    while (v22 != v23);
    v10 = v20;
  }

  while (v19);
  v43 = *(this + 12);
  *(this + 13) = v20;
  if (!v43)
  {
    return 1;
  }

  while (1)
  {
    v44 = *(v43 + 8);
    if (v44)
    {
      break;
    }

LABEL_73:
    v43 = *(v43 + 24);
    result = 1;
    if (!v43)
    {
      return result;
    }
  }

  v45 = *(v43 + 16);
  v46 = &v45[v44];
  while (1)
  {
    v47 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v45);
    v48 = v47;
    v49 = *(v47 + 16);
    if (v49)
    {
      break;
    }

LABEL_61:
    C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::Array(v61, *(this + 2), *(v47 + 40));
    v52 = *(v48 + 40);
    if (v52)
    {
      v53 = *(v48 + 48);
      v54 = &v53[v52];
      do
      {
        v55 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v53 & 0x7FFF);
        v56 = *(this + 10);
        if (v56)
        {
          v57 = 8 * v56;
          v58 = *(this + 6);
          while (*v58 != *v55)
          {
            ++v58;
            v57 -= 8;
            if (!v57)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
          v58 = *(this + 6);
        }

        if (v58 == (*(this + 6) + 8 * v56))
        {
LABEL_70:
          C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>(v61, v53);
        }

        ++v53;
      }

      while (v53 != v54);
    }

    C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(v48 + 32, v61);
    if (++v45 == v46)
    {
      goto LABEL_73;
    }
  }

  v50 = *(v47 + 24);
  v51 = 4 * v49;
  while ((*v50 & 0x8000) != 0)
  {
    ++v50;
    v51 -= 4;
    if (!v51)
    {
      goto LABEL_61;
    }
  }

  C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v50 & 0x7FFF);
  if (C3D::RenderGraph::sort(void)::done)
  {
    return 0;
  }

  C3D::RenderGraph::sort(void)::done = 1;
  v60 = scn_default_log();
  result = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
  if (result)
  {
    C3D::RenderGraph::sort();
    return 0;
  }

  return result;
}

void C3D::RenderGraph::resolvePartialCompatibility(C3D::RenderGraph *this)
{
  v101 = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  if (v2)
  {
    while (1)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        break;
      }

LABEL_77:
      v2 = *(v2 + 24);
      if (!v2)
      {
        goto LABEL_78;
      }
    }

    v4 = *(v2 + 16);
    v82 = &v4[v3];
    while (1)
    {
      v5 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v4);
      v6 = C3D::Pass::descriptor(*v5);
      v7 = C3D::PassDescriptor::inputCount(v6);
      v8 = C3D::Pass::descriptor(*v5);
      v9 = C3D::PassDescriptor::outputCount(v8);
      v10 = v7;
      if (v7)
      {
        v11 = 0;
        do
        {
          if ((*(C3D::Pass::inputBufferParameterAtIndex(*v5, v11) + 66) & 0x80) != 0)
          {
            v12 = C3D::Pass::outputBufferParameterAtIndex(*v5, v11);
            v13 = v12;
            if (v2 == *(this + 12) && (*(v12 + 66) & 0x100) == 0)
            {
              v14 = scn_default_log();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                C3D::RenderGraph::resolvePartialCompatibility(v100, v5);
              }

              v15 = scn_default_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::resolvePartialCompatibility(v98, &v99, v15);
              }
            }

            *(v13 + 66) |= 0x80u;
          }

          ++v11;
        }

        while (v10 != v11);
      }

      if (v9)
      {
        break;
      }

LABEL_50:
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v37 = C3D::Pass::inputBufferParameterAtIndex(*v5, i);
          if ((*(v37 + 66) & 0x80) != 0)
          {
            v38 = v37;
            v39 = C3D::Pass::outputBufferParameterAtIndex(*v5, i);
            C3D::PropagateMissingTextureParameters((v38 + 16), (v39 + 16));
            C3D::PropagateMissingTextureParameters((v39 + 16), (v38 + 16));
          }
        }

        v40 = 0;
        do
        {
          v41 = C3D::Pass::inputBufferParameterAtIndex(*v5, v40);
          if ((*(v41 + 66) & 4) != 0)
          {
            v42 = v41;
            v43 = C3D::Pass::descriptor(*v5);
            if (C3D::PassDescriptor::outputCount(v43) == 1)
            {
              v44 = C3D::Pass::descriptor(*v5);
              v45 = C3D::PassDescriptor::outputAtIndex(v44, 0);
            }

            else
            {
              if (!**(v42 + 1))
              {
                v46 = scn_default_log();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::resolvePartialCompatibility(v93, &v94, v46);
                }
              }

              v45 = C3D::Pass::outputBufferParameterNamed(*v5, *(v42 + 1));
              if (!v45)
              {
                v47 = scn_default_log();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
                {
                  v49 = *(v42 + 1);
                  *buf = 136315394;
                  v90 = "outputParam";
                  v91 = 2080;
                  v92 = v49;
                  _os_log_fault_impl(&dword_21BEF7000, v47, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Can't dispatch input to output, unable to find output named %s.", buf, 0x16u);
                }

                v45 = 0;
              }
            }

            if (*v42 != *v45)
            {
              v48 = scn_default_log();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::resolvePartialCompatibility(v87, &v88, v48);
              }
            }

            C3D::PropagateMissingTextureParameters(v42 + 8, v45 + 8);
          }

          ++v40;
        }

        while (v10 > v40);
      }

      v50 = *(v5 + 40);
      if (v50)
      {
        v51 = *(v5 + 48);
        v52 = 4 * v50;
        do
        {
          v53 = *v51;
          v54 = C3D::Pass::outputBufferParameterAtIndex(*v5, BYTE2(*v51));
          v55 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v53 & 0x7FFF);
          v56 = C3D::Pass::inputBufferParameterAtIndex(*v55, HIBYTE(v53));
          if (!C3D::PassIODescriptor::isCompatible(v54, v56))
          {
            C3D::PropagateMissingTextureParameters(v54 + 8, v56 + 8);
            C3D::PropagateMissingTextureParameters(v56 + 8, v54 + 8);
          }

          ++v51;
          v52 -= 4;
        }

        while (v52);
      }

      if (++v4 == v82)
      {
        goto LABEL_77;
      }
    }

    for (j = 0; j != v9; ++j)
    {
      if ((*(C3D::Pass::outputBufferParameterAtIndex(*v5, j) + 66) & 0x80) != 0)
      {
        v17 = C3D::Pass::inputBufferParameterAtIndex(*v5, j);
        v18 = v17;
        if (v2 == *(this + 12) && (*(v17 + 66) & 0x100) == 0)
        {
          v19 = scn_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::resolvePartialCompatibility(v97, v5);
          }

          v20 = scn_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            C3D::RenderGraph::resolvePartialCompatibility(v95, &v96, v20);
          }
        }

        *(v18 + 66) |= 0x80u;
      }
    }

    v21 = 0;
    while (1)
    {
      v22 = C3D::Pass::outputBufferParameterAtIndex(*v5, v21);
      v23 = *(v5 + 40);
      if (v23)
      {
        v24 = *(v5 + 48);
        v25 = 4 * v23 - 4;
        do
        {
          v26 = *(v24 + 2);
          v27 = v26 == v21;
          v28 = v26 == v21 || v25 == 0;
          v25 -= 4;
          v24 += 4;
        }

        while (!v28);
        v30 = (v22 + 66);
        v29 = *(v22 + 66);
        if ((v29 & 8) == 0)
        {
          goto LABEL_39;
        }

        if (v26 == v21)
        {
          v31 = v29 & 0xFFF7;
          goto LABEL_48;
        }
      }

      else
      {
        v30 = (v22 + 66);
        v29 = *(v22 + 66);
        if ((v29 & 8) == 0)
        {
          v27 = 0;
LABEL_39:
          if (v27 || (v29 & 0x80) == 0)
          {
            goto LABEL_49;
          }

          v31 = v29 | 8;
LABEL_48:
          *v30 = v31;
          goto LABEL_49;
        }
      }

      if ((v29 & 0x80) != 0)
      {
        v32 = C3D::Pass::inputBufferParameterAtIndex(*v5, v21);
        v33 = *(v5 + 16);
        if (v33)
        {
          v34 = *(v5 + 24);
          v35 = 4 * v33;
          while (*(v34 + 2) != v21)
          {
            v34 += 4;
            v35 -= 4;
            if (!v35)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_49;
        }

LABEL_47:
        *(v32 + 66) &= ~0x80u;
        v31 = *v30 & 0xFF7C | 2;
        goto LABEL_48;
      }

LABEL_49:
      if (++v21 == v9)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_78:
  for (k = *(this + 13); k; k = *(k + 32))
  {
    v58 = *(k + 8);
    if (v58)
    {
      v59 = *(k + 16);
      v60 = &v59[v58];
      do
      {
        v61 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v59);
        v62 = C3D::Pass::descriptor(*v61);
        v63 = C3D::PassDescriptor::inputCount(v62);
        if (v63)
        {
          v64 = v63;
          v65 = 0;
          do
          {
            v66 = C3D::Pass::inputBufferParameterAtIndex(*v61, v65);
            if ((*(v66 + 66) & 4) != 0)
            {
              v67 = v66;
              v68 = C3D::Pass::descriptor(*v61);
              if (C3D::PassDescriptor::outputCount(v68) == 1)
              {
                v69 = C3D::Pass::descriptor(*v61);
                v70 = C3D::PassDescriptor::outputAtIndex(v69, 0);
              }

              else
              {
                if (!**(v67 + 1))
                {
                  v71 = scn_default_log();
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
                  {
                    C3D::RenderGraph::resolvePartialCompatibility(v85, &v86, v71);
                  }
                }

                v70 = C3D::Pass::outputBufferParameterNamed(*v61, *(v67 + 1));
                if (!v70)
                {
                  v72 = scn_default_log();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
                  {
                    v74 = *(v67 + 1);
                    *buf = 136315394;
                    v90 = "outputParam";
                    v91 = 2080;
                    v92 = v74;
                    _os_log_fault_impl(&dword_21BEF7000, v72, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Can't dispatch input to output, unable to find output named %s.", buf, 0x16u);
                  }

                  v70 = 0;
                }
              }

              if (*v67 != *v70)
              {
                v73 = scn_default_log();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::resolvePartialCompatibility(v83, &v84, v73);
                }
              }

              C3D::PropagateMissingTextureParameters(v70 + 8, v67 + 8);
            }

            ++v65;
          }

          while (v65 < v64);
        }

        v75 = *(v61 + 16);
        if (v75)
        {
          v76 = *(v61 + 24);
          v77 = 4 * v75;
          do
          {
            v78 = *v76;
            v79 = C3D::Pass::inputBufferParameterAtIndex(*v61, BYTE2(*v76));
            v80 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v78 & 0x7FFF);
            v81 = C3D::Pass::outputBufferParameterAtIndex(*v80, HIBYTE(v78));
            if (!C3D::PassIODescriptor::isCompatible(v79, v81))
            {
              C3D::PropagateMissingTextureParameters(v79 + 8, v81 + 8);
            }

            ++v76;
            v77 -= 4;
          }

          while (v77);
        }

        ++v59;
      }

      while (v59 != v60);
    }
  }
}

void C3D::RenderGraph::validate(C3D::RenderGraph *this)
{
  v118 = *MEMORY[0x277D85DE8];
  for (i = *(this + 12); i; i = *(v89 + 24))
  {
    v89 = i;
    v3 = *(i + 8);
    if (v3)
    {
      v4 = *(i + 16);
      v90 = &v4[v3];
      do
      {
        v91 = v4;
        v5 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v4);
        v6 = C3D::Pass::descriptor(*v5);
        if (C3D::PassDescriptor::inputCount(v6))
        {
          v7 = 0;
          do
          {
            v8 = C3D::Pass::descriptor(*v5);
            v9 = C3D::PassDescriptor::inputAtIndex(v8, v7);
            if ((*(v9 + 66) & 0x80) != 0)
            {
              v10 = C3D::Pass::descriptor(*v5);
              v11 = C3D::PassDescriptor::outputAtIndex(v10, v7);
              if (*C3D::Pass::descriptor(*v5) == 2 && (*(v9 + 66) & 3) != 1)
              {
                if ((C3D::RenderGraph::validate(void)::done & 1) == 0)
                {
                  C3D::RenderGraph::validate(void)::done = 1;
                  v12 = scn_default_log();
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                  {
                    v21 = (***v5)();
                    v22 = *(v9 + 8);
                    *v96 = 136315650;
                    *&v96[4] = v21;
                    *&v96[12] = 2048;
                    *&v96[14] = v7;
                    *&v96[22] = 2080;
                    *&v96[24] = v22;
                    _os_log_error_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_ERROR, "Error: ReadWrite pass %s require input %zu:%s with load mode set to Load, forcing it.", v96, 0x20u);
                  }
                }

                *(v9 + 66) = *(v9 + 66) & 0xFFFC | 1;
              }

              if (!C3D::PassIODescriptor::isCompatible(v9, v11))
              {
                v13 = scn_default_log();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  C3D::RenderGraph::validate(v117, v5);
                }

                v14 = scn_default_log();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  C3D::PassIODescriptor::description(v9, v96);
                  v17 = v96[23];
                  v18 = *v96;
                  C3D::PassIODescriptor::description(v11, &__p);
                  v19 = v96;
                  if (v17 < 0)
                  {
                    v19 = v18;
                  }

                  p_p = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315394;
                  v114 = v19;
                  v115 = 2080;
                  v116 = p_p;
                  _os_log_error_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_ERROR, "Error: Input %s doesn't match output %s.", buf, 0x16u);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if ((v96[23] & 0x80000000) != 0)
                  {
                    operator delete(*v96);
                  }
                }

                v15 = scn_default_log();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::resolvePartialCompatibility(v111, &v112, v15);
                }
              }
            }

            v16 = C3D::Pass::descriptor(*v5);
            ++v7;
          }

          while (v7 < C3D::PassDescriptor::inputCount(v16));
        }

        v23 = *(v5 + 40);
        if (v23)
        {
          v24 = *(v5 + 48);
          v25 = 4 * v23;
          do
          {
            v26 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v24 & 0x7FFF);
            if (HIBYTE(*v24) == 255 || (*v24 & 0xFF0000) == 0xFF0000)
            {
              v27 = scn_default_log();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v48 = (***v26)();
                v49 = (***v5)();
                *v96 = 136315394;
                *&v96[4] = v48;
                *&v96[12] = 2080;
                *&v96[14] = v49;
                _os_log_error_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_ERROR, "Error: Unresolved dependency between %s and %s\n", v96, 0x16u);
              }

              v28 = scn_default_log();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v109, &v110, v28);
              }
            }

            v29 = C3D::Pass::descriptor(*v5);
            v30 = C3D::PassDescriptor::outputAtIndex(v29, *(v24 + 2));
            v31 = C3D::Pass::descriptor(*v26);
            v32 = C3D::PassDescriptor::inputAtIndex(v31, *(v24 + 3));
            if (*v30 == 1 && *(v30 + 31) == 1)
            {
              v33 = scn_default_log();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v64 = *(v30 + 31);
                v65 = (***v5)();
                v66 = *(v24 + 2);
                v67 = *(v30 + 8);
                *v96 = 67109890;
                *&v96[4] = v64;
                *&v96[8] = 2080;
                *&v96[10] = v65;
                *&v96[18] = 1024;
                *&v96[20] = v66;
                *&v96[24] = 2080;
                *&v96[26] = v67;
                _os_log_error_impl(&dword_21BEF7000, v33, OS_LOG_TYPE_ERROR, "Error: Invalid output texture sampleCount %d for pass %s %d:%s, if no multisample needed, set it to 0", v96, 0x22u);
              }

              v34 = scn_default_log();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v107, &v108, v34);
              }
            }

            if (*v32 == 1 && *(v32 + 31) == 1)
            {
              v35 = scn_default_log();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v68 = *(v32 + 31);
                v69 = (***v26)();
                v70 = *(v24 + 3);
                v71 = *(v32 + 8);
                *v96 = 67109890;
                *&v96[4] = v68;
                *&v96[8] = 2080;
                *&v96[10] = v69;
                *&v96[18] = 1024;
                *&v96[20] = v70;
                *&v96[24] = 2080;
                *&v96[26] = v71;
                _os_log_error_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_ERROR, "Error: Invalid input texture sampleCount %d for pass %s %d:%s, if no multisample needed, set it to 0", v96, 0x22u);
              }

              v36 = scn_default_log();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v105, &v106, v36);
              }
            }

            if (!C3D::PassIODescriptor::isValid(v30))
            {
              v37 = scn_default_log();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                C3D::RenderGraph::validate(v104, v5);
              }

              v38 = scn_default_log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v50 = *(v24 + 3);
                C3D::PassIODescriptor::description(v30, v96);
                v51 = v96;
                if (v96[23] < 0)
                {
                  v51 = *v96;
                }

                LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
                HIDWORD(__p.__r_.__value_.__r.__words[0]) = v50;
                LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__r_.__value_.__r.__words[1] + 2) = v51;
                _os_log_error_impl(&dword_21BEF7000, v38, OS_LOG_TYPE_ERROR, "Error: Invalid output parameters for port %d: %s", &__p, 0x12u);
                if ((v96[23] & 0x80000000) != 0)
                {
                  operator delete(*v96);
                }
              }

              v39 = scn_default_log();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v102, &v103, v39);
              }
            }

            if (!C3D::PassIODescriptor::isValid(v32))
            {
              v40 = scn_default_log();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                C3D::RenderGraph::validate(v101, v26);
              }

              v41 = scn_default_log();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v52 = *(v24 + 2);
                C3D::PassIODescriptor::description(v32, v96);
                v53 = v96;
                if (v96[23] < 0)
                {
                  v53 = *v96;
                }

                LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
                HIDWORD(__p.__r_.__value_.__r.__words[0]) = v52;
                LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__r_.__value_.__r.__words[1] + 2) = v53;
                _os_log_error_impl(&dword_21BEF7000, v41, OS_LOG_TYPE_ERROR, "Error: Buffer input parameters for port %d: %s", &__p, 0x12u);
                if ((v96[23] & 0x80000000) != 0)
                {
                  operator delete(*v96);
                }
              }

              v42 = scn_default_log();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v99, &v100, v42);
              }
            }

            if (!C3D::PassIODescriptor::isCompatible(v30, v32))
            {
              v43 = scn_default_log();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v54 = (***v5)();
                v55 = (***v26)();
                *v96 = 136315394;
                *&v96[4] = v54;
                *&v96[12] = 2080;
                *&v96[14] = v55;
                _os_log_error_impl(&dword_21BEF7000, v43, OS_LOG_TYPE_ERROR, "Error: Compatibility mismatch between %s and %s\n", v96, 0x16u);
              }

              v44 = scn_default_log();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v56 = *v24;
                v57 = BYTE2(*v24);
                *v96 = 67109376;
                *&v96[4] = v57;
                *&v96[8] = 1024;
                *&v96[10] = HIBYTE(v56);
                _os_log_error_impl(&dword_21BEF7000, v44, OS_LOG_TYPE_ERROR, "Error: Output buffer parameters for port %d isn't compatible with input port %d\n", v96, 0xEu);
              }

              v45 = scn_default_log();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v58 = (***v5)();
                v59 = *(v24 + 3);
                C3D::PassIODescriptor::description(v30, &__p);
                v60 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v60 = __p.__r_.__value_.__r.__words[0];
                }

                *v96 = 136315650;
                *&v96[4] = v58;
                *&v96[12] = 1024;
                *&v96[14] = v59;
                *&v96[18] = 2080;
                *&v96[20] = v60;
                _os_log_error_impl(&dword_21BEF7000, v45, OS_LOG_TYPE_ERROR, "Error: Output descriptor of pass %s at port %d: %s", v96, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v46 = scn_default_log();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v61 = (***v26)();
                v62 = *(v24 + 2);
                C3D::PassIODescriptor::description(v32, &__p);
                v63 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v63 = __p.__r_.__value_.__r.__words[0];
                }

                *v96 = 136315650;
                *&v96[4] = v61;
                *&v96[12] = 1024;
                *&v96[14] = v62;
                *&v96[18] = 2080;
                *&v96[20] = v63;
                _os_log_error_impl(&dword_21BEF7000, v46, OS_LOG_TYPE_ERROR, "Error: Input descriptor of pass %s at port %d: %s", v96, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v47 = scn_default_log();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v97, &v98, v47);
              }
            }

            ++v24;
            v25 -= 4;
          }

          while (v25);
        }

        StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1));
        C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(v96, StackAllocator);
        v73 = *(v5 + 16);
        if (v73)
        {
          v74 = *(v5 + 24);
          v75 = 4 * v73;
          do
          {
            v76 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v74 & 0x7FFF);
            v77 = *v74;
            buf[0] = BYTE2(*v74);
            buf[1] = HIBYTE(v77);
            C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(v96, buf);
            if (HIBYTE(*v74) == 255 || (*v74 & 0xFF0000) == 0xFF0000)
            {
              v78 = scn_default_log();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                v80 = (***v5)();
                v81 = (***v76)();
                LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
                *(__p.__r_.__value_.__r.__words + 4) = v80;
                WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__r_.__value_.__r.__words[1] + 6) = v81;
                _os_log_error_impl(&dword_21BEF7000, v78, OS_LOG_TYPE_ERROR, "Error: Unresolved dependency between %s and %s\n", &__p, 0x16u);
              }

              v79 = scn_default_log();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v94, &v95, v79);
              }
            }

            ++v74;
            v75 -= 4;
          }

          while (v75);
        }

        v82 = 126 - 2 * __clz(*&v96[8]);
        if (*&v96[8])
        {
          v83 = v82;
        }

        else
        {
          v83 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *,false>(*&v96[16], (*&v96[16] + 2 * *&v96[8]), v83, 1);
        v84 = *&v96[8];
        if (*&v96[8])
        {
          v85 = 0;
          do
          {
            if (v85)
            {
              v86 = *C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v96, v85);
              if (v86 == *C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v96, v85 - 1))
              {
                v87 = scn_default_log();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
                {
                  v88 = (***v5)();
                  LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
                  *(__p.__r_.__value_.__r.__words + 4) = "index == 0 || inputPorts[index].a != inputPorts[index - 1].a";
                  WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
                  *(&__p.__r_.__value_.__r.__words[1] + 6) = v85;
                  HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
                  v93 = v88;
                  _os_log_fault_impl(&dword_21BEF7000, v87, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Multiple dependencies on the same input %zu on %s", &__p, 0x20u);
                }
              }
            }

            ++v85;
          }

          while (v84 != v85);
        }

        v4 = v91 + 1;
      }

      while (v91 + 1 != v90);
    }
  }
}

void sub_21BF71A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void C3D::RenderGraph::allocateResources(C3D::RenderGraph *this)
{
  *(&v128[2] + 4) = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(*(this + 1));
  v99 = [(SCNMTLRenderContext *)RenderContext frameTexturePool];
  v104 = this;
  v2 = *(this + 12);
  if (!v2)
  {
    return;
  }

  while (1)
  {
    v98 = v2;
    v96 = *(v2 + 8);
    if (v96)
    {
      break;
    }

LABEL_143:
    v2 = *(v98 + 24);
    if (!v2)
    {
      return;
    }
  }

  v3 = 0;
  v97 = 0;
  while (1)
  {
    v4 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v98, v3);
    v105 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v104[3], *v4);
    v5 = *C3D::Pass::descriptor(*v105);
    v6 = *(v98 + 24);
    v101 = v5;
    if (v6 && ((v7 = *(v6 + 24), v5 == 2) ? (v8 = v7 == 0) : (v8 = 0), v8))
    {
      v92 = [(SCNMTLRenderContext *)RenderContext clientRenderPassDescriptor];
      LOBYTE(v103) = 0;
      if (v96 - 1 == v3)
      {
        BYTE4(v103) = 0;
        v102 = 0;
        if (v92)
        {
          BYTE4(v103) = [objc_msgSend(objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "colorAttachments")] != 0;
          LOBYTE(v103) = [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "depthAttachment")] != 0;
          v102 = [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "stencilAttachment")] != 0;
        }
      }

      else
      {
        BYTE4(v103) = 0;
        v102 = 0;
      }
    }

    else
    {
      v103 = 0;
      v102 = 0;
    }

    v9 = C3D::Pass::resource(*v105);
    v10 = C3D::PassResource::outputCount(v9);
    if (v10 != C3D::PassDescriptor::outputCount((*v105 + 32)))
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::allocateResources(v127, v128, v11);
      }
    }

    StackAllocator = C3DEngineContextGetStackAllocator(v104[1]);
    C3DStackAllocatorPushFrame(StackAllocator);
    C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v109, StackAllocator);
    if (C3D::PassDescriptor::inputCount((*v105 + 32)))
    {
      v12 = 0;
      do
      {
        v13 = C3D::Pass::inputBufferParameterAtIndex(*v105, v12);
        if ((*(v13 + 66) & 0x80) != 0)
        {
          v14 = C3D::Pass::outputBufferParameterAtIndex(*v105, v12);
          if ((*(v14 + 66) & 8) != 0)
          {
            v15 = C3D::Pass::resource(*v105);
            if (C3D::PassResource::outputAtIndex(v15, v12))
            {
              v16 = scn_default_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                v24 = (***v105)();
                v25 = *(v14 + 8);
                *buf = 136315906;
                *&buf[4] = "resOutput == nullptr";
                *&buf[12] = 2080;
                *&buf[14] = v24;
                v123 = 1024;
                v124 = v12;
                v125 = 2080;
                v126 = v25;
                _os_log_fault_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Readwrite pass %s has an initialised output at index %d:%s should be null", buf, 0x26u);
              }
            }

            v17 = C3D::Pass::resource(*v105);
            v108 = C3D::PassResource::inputAtIndex(v17, v12);
            if (!v108)
            {
              v18 = scn_default_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
              {
                v26 = (***v105)();
                v27 = *(v13 + 8);
                *buf = 136315906;
                *&buf[4] = "resInput";
                *&buf[12] = 2080;
                *&buf[14] = v26;
                v123 = 1024;
                v124 = v12;
                v125 = 2080;
                v126 = v27;
                _os_log_fault_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Readwrite pass %s has an uninitialised input at index %d:%s should be null", buf, 0x26u);
              }
            }

            v19 = C3D::Pass::resource(*v105);
            C3D::PassResource::setOutputAtIndex(v19, v108, v12);
            ++*(v108 + 33);
            v20 = C3D::PassDescriptor::inputAtIndex((*v105 + 32), v12);
            *v14 = *v20;
            v21 = v20[1];
            v22 = v20[2];
            v23 = v20[4];
            *(v14 + 48) = v20[3];
            *(v14 + 64) = v23;
            *(v14 + 16) = v21;
            *(v14 + 32) = v22;
            C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v109, &v108);
          }
        }

        ++v12;
      }

      while (v12 < C3D::PassDescriptor::inputCount((*v105 + 32)));
    }

    v28 = *(v105 + 40);
    if (v28)
    {
      v29 = *(v105 + 48);
      v30 = 4 * v28;
      do
      {
        v31 = *v29;
        v32 = BYTE2(*v29);
        v33 = C3D::PassDescriptor::outputAtIndex((*v105 + 32), v32);
        v34 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v104[3], v31 & 0x7FFF);
        v35 = C3D::PassDescriptor::inputAtIndex((*v34 + 32), HIBYTE(v31));
        v36 = v35;
        v37 = v35[64];
        v38 = BYTE4(v103);
        if (v37 != 1)
        {
          v38 = 0;
        }

        if (v35[65])
        {
          v39 = 0;
        }

        else
        {
          v39 = v38;
        }

        v40 = v103;
        if (v37 != 2)
        {
          v40 = 0;
        }

        v8 = v37 == 3;
        v41 = v102;
        if (!v8)
        {
          v41 = 0;
        }

        if ((v39 & 1) == 0 && (v40 & 1) == 0 && !v41)
        {
          if ((*(v33 + 31) & 0xFE) != 0)
          {
            v42 = *(v33 + 31);
          }

          else
          {
            v42 = 1;
          }

          if ((v35[31] & 0xFE) != 0)
          {
            v43 = v35[31];
          }

          else
          {
            v43 = 1;
          }

          v45 = *v33 == 1 && v42 != v43;
          v46 = C3D::Pass::resource(*v105);
          v47 = C3D::PassResource::outputAtIndex(v46, BYTE2(v31));
          if (v47)
          {
            v48 = C3D::Pass::resource(*v34);
            v49 = C3D::PassResource::inputAtIndex(v48, HIBYTE(v31));
            if (v49)
            {
              if (v49 != v47)
              {
                v50 = scn_default_log();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::allocateResources(v120, &v121, v50);
                }
              }
            }

            else
            {
              v55 = C3D::Pass::resource(*v34);
              C3D::PassResource::setInputAtIndex(v55, v47, HIBYTE(v31));
            }

            if ((*(v33 + 66) & 0x100) == 0)
            {
              ++*(v47 + 33);
            }

            if (v45 && !*(v47 + 24))
            {
              *(v36 + 32) = 1;
              *buf = *(v36 + 16);
              *&buf[16] = *(v36 + 32);
              *(v47 + 24) = SCNMTLTexturePool::allocate(v99, buf, 0, 0);
            }

            LOBYTE(v106) = 0;
            *buf = 0;
            C3D::RenderGraph::lastNodeUsingResourceAtIndex(v104, v33, v31 & 0x7FFF, HIBYTE(v31), buf, &v108, &v106, &v107[1]);
            if (*buf && *buf != v34)
            {
              C3D::RenderGraph::propagateReadWriteResources(v104, *buf, v31 & 0x7FFF, HIBYTE(v31), v47);
            }
          }

          else if ((*(v33 + 66) & 0x80) != 0)
          {
            v56 = C3D::Pass::resource(*v105);
            v57 = C3D::PassResource::inputAtIndex(v56, BYTE2(v31));
            if (!v57)
            {
              v58 = scn_default_log();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::allocateResources(v118, &v119, v58);
              }
            }

            v59 = C3D::Pass::resource(*v105);
            C3D::PassResource::setOutputAtIndex(v59, v57, BYTE2(v31));
            v60 = C3D::Pass::resource(*v34);
            C3D::PassResource::setInputAtIndex(v60, v57, HIBYTE(v31));
          }

          else
          {
            *v107 = 0;
            v108 = 0;
            v106 = 0;
            C3D::RenderGraph::lastNodeUsingResourceAtIndex(v104, v33, v31 & 0x7FFF, HIBYTE(v31), &v108, &v106, &v107[1], v107);
            if (v101 == 2)
            {
              v51 = *v105;
              RenderMode = C3D::RenderPass::getRenderMode(*v105);
              v53 = v106;
              if (*RenderMode == 1 && SCNMTLTextureTypeIsArray(*(v106 + 24)))
              {
                v54 = *(C3D::Pass::descriptor(v51) + 6);
              }

              else
              {
                v54 = 0;
              }

              *(v53 + 11) = v54;
            }

            v61 = v107[0];
            C3D::RenderGraph::computeResourceUsageForOutputDescriptor(v104, v105, v33, v36, v107[0]);
            buf[0] = BYTE2(v31);
            if (*(C3D::Pass::descriptor(*v105) + 6) > 1u)
            {
              v62 = 0;
            }

            else
            {
              v62 = C3D::__deduceMemoryLess(v104, v105, StackAllocator, buf, 1);
            }

            Resource = C3D::RenderGraph::createResource(v104, v33, v106, v107[1], v61, v62);
            v64 = C3D::Pass::resource(*v105);
            C3D::PassResource::setOutputAtIndex(v64, Resource, BYTE2(v31));
            v65 = C3D::Pass::resource(*v34);
            C3D::PassResource::setInputAtIndex(v65, Resource, HIBYTE(v31));
            if (v108 && v108 != v34)
            {
              C3D::RenderGraph::propagateReadWriteResources(v104, v108, v31 & 0x7FFF, HIBYTE(v31), Resource);
            }

            if ((*(v33 + 66) & 8) != 0)
            {
              v66 = scn_default_log();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
              {
                v67 = (***v105)();
                v68 = *(v33 + 8);
                *buf = 136315906;
                *&buf[4] = "!outputResDesc.usedInternally";
                *&buf[12] = 2080;
                *&buf[14] = v67;
                v123 = 1024;
                v124 = v32;
                v125 = 2080;
                v126 = v68;
                _os_log_fault_impl(&dword_21BEF7000, v66, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Pass %s resource at index %d:%s should not be tagged as usedInternally", buf, 0x26u);
              }
            }
          }
        }

        ++v29;
        v30 -= 4;
      }

      while (v30);
    }

    if (C3D::PassDescriptor::outputCount((*v105 + 32)))
    {
      break;
    }

LABEL_114:
    (*(**v105 + 16))();
    if (v110)
    {
      v82 = v111;
      v83 = 8 * v110;
      do
      {
        v84 = *v82;
        v85 = *(*v82 + 33) - 1;
        *(*v82 + 33) = v85;
        if (v85 < 0)
        {
          v86 = scn_default_log();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
          {
            C3D::RenderGraph::allocateResources(v116, &v117, v86);
          }

          v85 = *(v84 + 33);
        }

        if (!v85 && (*(v84 + 34) & 1) == 0)
        {
          v87 = *(v84 + 32);
          if (v87 == 2)
          {
            if (!*(v84 + 8))
            {
              v91 = scn_default_log();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::allocateResources(v112, &v113, v91);
              }
            }

            *v84 = 0;
            *(v84 + 8) = 0;
            *(v84 + 16) = 0;
          }

          else if (v87 == 1)
          {
            if (!*v84)
            {
              v88 = scn_default_log();
              if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::allocateResources(v114, &v115, v88);
              }
            }

            v89 = *(v84 + 34);
            if ((v89 & 2) == 0)
            {
              SCNMTLTexturePool::free(v99, *v84);
              v89 = *(v84 + 34);
            }

            if ((v89 & 4) == 0)
            {
              v90 = *(v84 + 24);
              if (v90)
              {
                SCNMTLTexturePool::free(v99, v90);
              }
            }
          }
        }

        ++v82;
        v83 -= 8;
      }

      while (v83);
    }

    C3DStackAllocatorPopFrame(StackAllocator);
    C3D::RenderGraph::freeConsumedResources(v104, v105, v99);
    v3 = ++v97;
    if (v96 <= v97)
    {
      goto LABEL_143;
    }
  }

  v69 = 0;
  while (1)
  {
    v70 = C3D::PassDescriptor::outputAtIndex((*v105 + 32), v69);
    v71 = v70;
    v72 = *(v70 + 64);
    v73 = BYTE4(v103);
    if (v72 != 1)
    {
      v73 = 0;
    }

    if (*(v70 + 65))
    {
      v74 = 0;
    }

    else
    {
      v74 = v73;
    }

    v75 = v103;
    if (v72 != 2)
    {
      v75 = 0;
    }

    v8 = v72 == 3;
    v76 = v102;
    if (!v8)
    {
      v76 = 0;
    }

    if ((v74 & 1) != 0 || (v75 & 1) != 0 || v76)
    {
      goto LABEL_113;
    }

    if (v101 == 2)
    {
      v77 = *v105;
      if (*C3D::RenderPass::getRenderMode(*v105) == 1 && SCNMTLTextureTypeIsArray(*(v71 + 24)))
      {
        v78 = *(C3D::Pass::descriptor(v77) + 6);
      }

      else
      {
        v78 = 0;
      }

      *(v71 + 22) = v78;
    }

    if ((*(v71 + 66) & 0x108) != 8)
    {
      goto LABEL_113;
    }

    v79 = C3D::Pass::resource(*v105);
    if (C3D::PassResource::outputAtIndex(v79, v69))
    {
      if ((*(v71 + 66) & 0x80) == 0)
      {
        break;
      }
    }

    *buf = 0;
    C3D::RenderGraph::computeResourceUsageForOutputDescriptor(v104, v105, v71, 0, 0);
    LOBYTE(v108) = v69;
    if (*(C3D::Pass::descriptor(*v105) + 6) > 1u)
    {
      v80 = 0;
    }

    else
    {
      v80 = C3D::__deduceMemoryLess(v104, v105, StackAllocator, &v108, 1);
    }

    *buf = C3D::RenderGraph::createResource(v104, v71, 0, 0, 0, v80);
    v81 = C3D::Pass::resource(*v105);
    C3D::PassResource::setOutputAtIndex(v81, *buf, v69);
    C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v109, buf);
LABEL_113:
    if (++v69 >= C3D::PassDescriptor::outputCount((*v105 + 32)))
    {
      goto LABEL_114;
    }
  }

  v93 = scn_default_log();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
  {
    C3D::RenderGraph::allocateResources();
  }

  v94 = scn_default_log();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
  {
    C3D::RenderGraph::allocateResources();
  }
}

uint64_t C3D::__nextPassInStage(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 8) - 1 == a3)
  {
    result = *(a2 + 24);
    if (!result)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v6 = a3 + 1;
    result = a2;
  }

  v7 = *C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](result, v6);
  if (v7 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return *C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](a1, v7);
  }
}

uint64_t C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 8);
      v7 = 136315906;
      v8 = "i < size()";
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = a2;
      v13 = 1024;
      v14 = v6;
      _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Out of bound Array:%p access %d size %d", &v7, 0x22u);
    }
  }

  return *(a1 + 16) + 2 * a2;
}

uint64_t C3D::__deduceMemoryLess(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v39 = a3;
  v40 = 0;
  v41 = &v42;
  if (!a3)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  Aligned = C3DStackAllocatorAllocateAligned(v39, (16 * (HIDWORD(v40) + a5)), 8, 0);
  memcpy(Aligned, v41, 16 * v40);
  v41 = Aligned;
  HIDWORD(v40) += a5;
  v19 = v40;
  if (a5 >= 1)
  {
    v20 = a5;
    do
    {
      v22 = *a4++;
      v21 = v22;
      v23 = v41;
      if ((v19 + 1) > HIDWORD(v40))
      {
        v24 = C3DStackAllocatorAllocateAligned(v39, 16 * ((HIDWORD(v40) + 1) * 1.5), 8, 0);
        memcpy(v24, v41, 16 * v40);
        v41 = v24;
        HIDWORD(v40) = ((HIDWORD(v40) + 1) * 1.5);
        v23 = v24;
        v19 = v40;
      }

      v25 = &v23[16 * v19];
      *v25 = a2;
      v25[8] = v21;
      v19 = v40 + 1;
      LODWORD(v40) = v40 + 1;
      --v20;
    }

    while (v20);
  }

  if (!v19)
  {
    return 1;
  }

  while (1)
  {
    v26 = &v41[16 * v19];
    v27 = *(v26 - 2);
    v28 = *(v26 - 8);
    v29 = *v27;
    LODWORD(v40) = v19 - 1;
    v30 = *(C3D::PassDescriptor::outputAtIndex((v29 + 32), v28) + 31);
    C3D::RenderGraph::GraphNode::successorsAtIndex(v27, v28, a3, &v36);
    if (v37)
    {
      break;
    }

LABEL_15:
    v19 = v40;
    if (!v40)
    {
      return 1;
    }
  }

  v31 = v38;
  v32 = 4 * v37;
  while (1)
  {
    v33 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v31 & 0x7FFF);
    v34 = C3D::PassDescriptor::inputAtIndex((*v33 + 32), *(v31 + 3));
    if (v30 < 2 || *(v34 + 31) >= 2u)
    {
      return 0;
    }

    v31 += 4;
    v32 -= 4;
    if (!v32)
    {
      goto LABEL_15;
    }
  }
}

uint64_t C3D::__deduceStoreAction(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!SCNMTLTextureTypeIsMultisampled([objc_msgSend(a2 "texture")]))
  {
    return 1;
  }

  if (a3 == 2 && !C3DEngineContextHasFeatures(*(a1 + 8), 4))
  {
    return 0;
  }

  v38 = a5;
  v39 = 0;
  v40 = &v41;
  if (!a5)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  Aligned = C3DStackAllocatorAllocateAligned(v38, (16 * (HIDWORD(v39) + 10)), 8, 0);
  memcpy(Aligned, v40, 16 * v39);
  v40 = Aligned;
  HIDWORD(v39) += 10;
  v36.n128_u64[0] = a4;
  v36.n128_u8[8] = a6;
  C3D::Array<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair,0u,C3D::StackAllocator>::push_back<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair>(&v38, &v36);
  v21 = v39;
  if (v39)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = &v40[16 * v21];
      v25 = *(v24 - 8);
      v26 = *(v24 - 2);
      LODWORD(v39) = v21 - 1;
      C3D::RenderGraph::GraphNode::successorsAtIndex(v26, v25, a5, &v36);
      if (v36.n128_u32[2])
      {
        v27 = v37;
        v28 = 4 * v36.n128_u32[2];
        while (1)
        {
          v29 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v27 & 0x7FFF);
          v30 = C3D::PassDescriptor::inputAtIndex((*v29 + 32), *(v27 + 3));
          v31 = *(v30 + 31);
          v23 |= v31 > 1;
          v22 |= v31 < 2;
          if (v23 & 1) != 0 && (v22)
          {
            break;
          }

          if ((*(v30 + 66) & 0x80) != 0)
          {
            v35.n128_u64[0] = v29;
            v35.n128_u8[8] = *(v27 + 3);
            C3D::Array<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair,0u,C3D::StackAllocator>::push_back<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair>(&v38, &v35);
          }

          v27 += 4;
          v28 -= 4;
          if (!v28)
          {
            goto LABEL_18;
          }
        }

        v23 = 1;
        v22 = 1;
      }

LABEL_18:
      v21 = v39;
    }

    while (v39);
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v33 = v23 & ([objc_msgSend(a2 "texture")] != 3);
  v34 = 2;
  if ((v22 & 1 & v33) != 0)
  {
    v34 = 3;
  }

  if (v22)
  {
    return v34;
  }

  else
  {
    return v33;
  }
}

__n128 C3D::Array<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair,0u,C3D::StackAllocator>::push_back<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = C3DStackAllocatorAllocateAligned(*a1, 16 * v7, 8, 0);
    memcpy(Aligned, v6, 16 * *(a1 + 8));
    *(a1 + 16) = Aligned;
    *(a1 + 12) = v7;
    v6 = Aligned;
    v4 = *(a1 + 8);
  }

  result = *a2;
  v6[v4] = *a2;
  ++*(a1 + 8);
  return result;
}

void C3D::__setupRenderEncoder(uint64_t a1, C3D::RenderPass *this, uint64_t a3, uint64_t a4)
{
  v109 = *MEMORY[0x277D85DE8];
  v8 = *C3D::RenderPass::getRenderMode(this);
  switch(v8)
  {
    case 2:
      v26 = C3D::Pass::descriptor(this);
      v27 = *(v26 + 6);
      v28 = *(this + 118);
      if (v28 == 1)
      {
        *(a4 + 64) = v27;
      }

      else if (v28 == 2)
      {
        v26 = SCNMTLRenderCommandEncoder::setVertexAmplificationCount(a4, v27, 2);
      }

      else
      {
        v68 = scn_default_log();
        v26 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
        if (v26)
        {
          C3D::__setupRenderEncoder();
        }
      }

      if (*(this + 121) == 1)
      {
        MEMORY[0x28223BE20](v26);
        v70 = (&v102 - v69);
        if (v27)
        {
          v71 = ldexpf(1.0, *(a3 + 18));
          v72 = 0;
          f64 = v70[1].f64;
          __asm { FMOV            V1.4S, #-1.0 }

          v105 = _Q1;
          _Q1.i64[1] = 0x3FF0000000000000;
          v104 = xmmword_21C280270;
          _Q1.i64[0] = 136315650;
          *&v75 = 1.0 / v71;
          v102 = _Q1;
          v103 = v75;
          do
          {
            v76 = *(this + v72 + 8);
            if ((vminvq_u32(vmvnq_s8(vceqq_f32(v76, v105))) & 0x80000000) == 0)
            {
              v106 = *(this + v72 + 8);
              v77 = scn_default_log();
              v78 = os_log_type_enabled(v77, OS_LOG_TYPE_FAULT);
              v76 = v106;
              if (v78)
              {
                v80 = (**this)(this);
                *buf = v102.i32[0];
                *&buf[4] = "simd_all(viewport != -1)";
                *&buf[12] = 2080;
                *&buf[14] = v80;
                *&buf[22] = 1024;
                *&buf[24] = v72;
                _os_log_fault_impl(&dword_21BEF7000, v77, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Pass %s has specific viewport but it's not specified for index : %d", buf, 0x1Cu);
                v76 = v106;
              }
            }

            v79 = vmulq_n_f32(v76, *&v103);
            *(f64 - 1) = vcvtq_f64_f32(*v79.f32);
            *f64 = vcvt_hight_f64_f32(v79);
            f64[1] = v104;
            ++v72;
            f64 += 3;
          }

          while (v27 != v72);
        }

        [*(a4 + 3392) setViewports:v70 count:{v27, *&v102}];
        if ([(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
        {
          break;
        }

        MEMORY[0x28223BE20](0);
        if (v27)
        {
          v97 = (&v102 - 2 * v27 + 1);
          v98 = v70 + 1;
          v99 = v27;
          do
          {
            v100 = vcvtq_u64_f64(*v98);
            v97[-1] = vcvtq_u64_f64(v98[-1]);
            *v97 = v100;
            v97 += 2;
            v98 += 3;
            --v99;
          }

          while (v99);
        }

        v67 = *(a4 + 3392);
      }

      else
      {
        if (*(this + 120) != 1)
        {
          break;
        }

        v81 = v27;
        MEMORY[0x28223BE20](v26);
        v83 = &v102.f32[-4 * v82];
        v84 = *(a3 + 18);
        v85 = [(SCNMTLRenderContext *)a1 engineContext];
        if (v27)
        {
          v86 = v85;
          v87 = ldexpf(1.0, v84);
          v88 = 0;
          v89 = (v83 + 2);
          v90.f32[0] = 1.0 / v87;
          v105 = v90;
          v106 = xmmword_21C280270;
          do
          {
            ViewportAtIndex = C3DEngineContextGetViewportAtIndex(v86, v88);
            v92 = vmulq_n_f32(ViewportAtIndex, v105.f32[0]);
            v89[-2] = vcvtq_f64_f32(*v92.f32);
            v89[-1] = vcvt_hight_f64_f32(v92);
            *v89 = v106;
            v89 += 3;
            ++v88;
          }

          while (v81 != v88);
        }

        [*(a4 + 3392) setViewports:v83 count:v81];
        if ([(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
        {
          break;
        }

        MEMORY[0x28223BE20](0);
        if (v81)
        {
          v93 = (&v102 - 2 * v81 + 1);
          v94 = (v83 + 1);
          v95 = v81;
          do
          {
            v96 = vcvtq_u64_f64(*v94);
            v93[-1] = vcvtq_u64_f64(v94[-1]);
            *v93 = v96;
            v93 += 2;
            v94 += 3;
            --v95;
          }

          while (v95);
        }

        v67 = *(a4 + 3392);
      }

LABEL_72:
      [v67 setScissorRects:? count:?];
      break;
    case 1:
      v23 = [*(a3 + 8) renderTargetArrayLength];
      v24 = v23;
      v25 = *(this + 118);
      if (v25 == 1)
      {
        *(a4 + 64) = v23;
      }

      else if (v25 == 2)
      {
        v23 = SCNMTLRenderCommandEncoder::setVertexAmplificationCount(a4, v23, 1);
      }

      else
      {
        v35 = scn_default_log();
        v23 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        if (v23)
        {
          C3D::__setupRenderEncoder();
        }
      }

      if (*(this + 121) != 1)
      {
        if (*(this + 120) == 1)
        {
          MEMORY[0x28223BE20](v23);
          v50 = &v102.f32[-4 * v49];
          v51 = *(a3 + 18);
          v52 = [(SCNMTLRenderContext *)a1 engineContext];
          v53 = v24;
          if (v24)
          {
            v54 = v52;
            v55 = ldexpf(1.0, v51);
            v56 = 0;
            v57 = (v50 + 2);
            v58.f32[0] = 1.0 / v55;
            v105 = v58;
            v106 = xmmword_21C280270;
            do
            {
              v59 = C3DEngineContextGetViewportAtIndex(v54, v56);
              v60 = vmulq_n_f32(v59, v105.f32[0]);
              v57[-2] = vcvtq_f64_f32(*v60.f32);
              v57[-1] = vcvt_hight_f64_f32(v60);
              *v57 = v106;
              v57 += 3;
              ++v56;
            }

            while (v24 != v56);
          }

          [*(a4 + 3392) setViewports:v50 count:v24];
          if (![(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
          {
            MEMORY[0x28223BE20](0);
            if (v24)
            {
              v61 = (&v102 - 2 * v24 + 1);
              v62 = (v50 + 1);
              do
              {
                v63 = vcvtq_u64_f64(*v62);
                v61[-1] = vcvtq_u64_f64(v62[-1]);
                *v61 = v63;
                v61 += 2;
                v62 += 3;
                --v53;
              }

              while (v53);
            }

            [*(a4 + 3392) setScissorRects:? count:?];
          }
        }

        break;
      }

      MEMORY[0x28223BE20](v23);
      v37 = (&v102 - v36);
      v38 = v24;
      if (v24)
      {
        v39 = ldexpf(1.0, *(a3 + 18));
        v40 = 0;
        v41 = v37[1].f64;
        __asm { FMOV            V1.4S, #-1.0 }

        v105 = _Q1;
        _Q1.i64[1] = 0x3FF0000000000000;
        v104 = xmmword_21C280270;
        _Q1.i64[0] = 136315650;
        *&v43 = 1.0 / v39;
        v102 = _Q1;
        v103 = v43;
        do
        {
          v44 = *(this + v40 + 8);
          if ((vminvq_u32(vmvnq_s8(vceqq_f32(v44, v105))) & 0x80000000) == 0)
          {
            v106 = *(this + v40 + 8);
            v45 = scn_default_log();
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_FAULT);
            v44 = v106;
            if (v46)
            {
              v48 = (**this)(this);
              *buf = v102.i32[0];
              *&buf[4] = "simd_all(viewport != -1)";
              *&buf[12] = 2080;
              *&buf[14] = v48;
              *&buf[22] = 1024;
              *&buf[24] = v40;
              _os_log_fault_impl(&dword_21BEF7000, v45, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Pass %s has specific viewport but it's not specified for index : %d", buf, 0x1Cu);
              v44 = v106;
            }
          }

          v47 = vmulq_n_f32(v44, *&v103);
          *(v41 - 1) = vcvtq_f64_f32(*v47.f32);
          *v41 = vcvt_hight_f64_f32(v47);
          v41[1] = v104;
          ++v40;
          v41 += 3;
        }

        while (v24 != v40);
      }

      [*(a4 + 3392) setViewports:v37 count:{v24, *&v102}];
      if ([(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
      {
        break;
      }

      MEMORY[0x28223BE20](0);
      if (v24)
      {
        v64 = (&v102 - 2 * v24 + 1);
        v65 = v37 + 1;
        do
        {
          v66 = vcvtq_u64_f64(*v65);
          v64[-1] = vcvtq_u64_f64(v65[-1]);
          *v64 = v66;
          v64 += 2;
          v65 += 3;
          --v38;
        }

        while (v38);
      }

      v67 = *(a4 + 3392);
      goto LABEL_72;
    case 0:
      if (*(a4 + 72) != 1)
      {
        *(a4 + 72) = 1;
        [*(a4 + 3392) setVertexAmplificationCount:1 viewMappings:0];
      }

      if (*(this + 121) == 1)
      {
        __asm { FMOV            V0.4S, #-1.0 }

        v106 = *(this + *(a3 + 16) + 8);
        if ((vminvq_u32(vmvnq_s8(vceqq_f32(v106, _Q0))) & 0x80000000) == 0)
        {
          v14 = scn_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            C3D::__setupRenderEncoder(this, (a3 + 16), v14);
          }
        }

        *v15.i32 = ldexpf(1.0, *(a3 + 18));
        v16 = *(a4 + 3392);
        v105 = vdivq_f32(v106, vdupq_lane_s32(v15, 0));
        v106 = vextq_s8(v105, v105, 8uLL);
        *buf = vcvtq_f64_f32(*v105.f32);
        *&buf[16] = vcvt_hight_f64_f32(v105);
        v108 = xmmword_21C280270;
        [v16 setViewport:buf];
        *(a4 + 64) = 1;
        v17 = *(a4 + 3392);
        v18 = vcvt_u32_f32(*v105.f32);
        *&v19 = v18.u32[0];
        *(&v19 + 1) = v18.u32[1];
        v20 = v19;
        v21 = vcvt_u32_f32(v106.n128_u64[0]);
      }

      else
      {
        if (*(this + 120) != 1)
        {
          break;
        }

        v29 = [(SCNMTLRenderContext *)a1 engineContext];
        v106 = C3DEngineContextGetViewportAtIndex(v29, *(a3 + 16));
        v30 = [(SCNMTLRenderContext *)a1 engineContext];
        v31 = vmul_n_f32(*&vextq_s8(v106, v106, 8uLL), C3DEngineContextGetSuperSamplingFactor(v30));
        v32 = *(a4 + 3392);
        *buf = vcvtq_f64_f32(v106.n128_u64[0]);
        *&buf[16] = vcvtq_f64_f32(v31);
        v108 = xmmword_21C280270;
        [v32 setViewport:buf];
        *(a4 + 64) = 1;
        if ([(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
        {
          break;
        }

        v33 = vcvt_u32_f32(v106.n128_u64[0]);
        v21 = vcvt_u32_f32(v31);
        v17 = *(a4 + 3392);
        *&v34 = v33.u32[0];
        *(&v34 + 1) = v33.u32[1];
        v20 = v34;
      }

      *&v22 = v21.u32[0];
      *(&v22 + 1) = v21.u32[1];
      *buf = v20;
      *&buf[16] = v22;
      [v17 setScissorRect:buf];
      break;
  }

  v101 = *(this + 56);
  if (*(a4 + 68) != v101)
  {
    *(a4 + 68) = v101;
    [*(a4 + 3392) setStencilReferenceValue:?];
  }
}

uint64_t SCNMTLRenderCommandEncoder::setVertexAmplificationCount(uint64_t result, unsigned int a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(result + 72) == a2)
  {
    return result;
  }

  v4 = result;
  *(result + 72) = a2;
  if (a2 > 1)
  {
    if (a3 == 2)
    {
      v6 = xmmword_21C27F640;
    }

    else
    {
      if (a3 != 1)
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          SCNMTLRenderCommandEncoder::setVertexAmplificationCount();
        }

        return [*(v4 + 3392) setVertexAmplificationCount:a2 viewMappings:&v8];
      }

      v6 = xmmword_21C280280;
    }

    v8 = v6;
    return [*(v4 + 3392) setVertexAmplificationCount:a2 viewMappings:&v8];
  }

  v5 = *(result + 3392);

  return [v5 setVertexAmplificationCount:1 viewMappings:0];
}

void C3D::__renderSlice(void *a1, C3D::Pass *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, uint64_t a6, int a7, uint64_t *a8)
{
  v94 = a3;
  v114 = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  RenderContext = C3DEngineContextGetRenderContext(v10);
  v13 = *a6;
  v12 = *(a6 + 8);
  StackAllocator = C3DEngineContextGetStackAllocator(v10);
  v14 = C3D::Pass::descriptor(a2);
  v104 = a2;
  if (C3D::PassDescriptor::outputCount(v14))
  {
    v15 = 0;
    do
    {
      v16 = C3D::Pass::descriptor(a2);
      if (*C3D::PassDescriptor::outputAtIndex(v16, v15) == 1)
      {
        v17 = C3D::Pass::descriptor(v104);
        v18 = *(C3D::PassDescriptor::outputAtIndex(v17, v15) + 24);
        if (SCNMTLTextureTypeIsArray(v18) || SCNMTLTextureTypeIsCube(v18))
        {
          v19 = *(a6 + 16);
          v20 = *(a6 + 16);
        }

        else
        {
          v20 = 0;
          v19 = *(a6 + 16);
        }

        if (v19)
        {
          v21 = v104[120];
        }

        else
        {
          v21 = 0;
        }

        v22 = C3D::Pass::descriptor(v104);
        v23 = *(C3D::PassDescriptor::outputAtIndex(v22, v15) + 64);
        switch(v23)
        {
          case 3:
            v27 = [objc_msgSend(v12 "stencilAttachment")] == 0;
            [objc_msgSend(v12 "stencilAttachment")];
            [objc_msgSend(v12 "stencilAttachment")];
            if (v27)
            {
              v20 = 0;
            }

            [objc_msgSend(v12 stencilAttachment];
            if ((v21 & 1) != 0 && [objc_msgSend(v12 "stencilAttachment")] == 2)
            {
              [objc_msgSend(v12 "stencilAttachment")];
            }

            break;
          case 2:
            v26 = [objc_msgSend(v12 "depthAttachment")] == 0;
            [objc_msgSend(v12 "depthAttachment")];
            [objc_msgSend(v12 "depthAttachment")];
            if (v26)
            {
              v20 = 0;
            }

            [objc_msgSend(v12 depthAttachment];
            if ((v21 & 1) != 0 && [objc_msgSend(v12 "depthAttachment")] == 2)
            {
              [objc_msgSend(v12 "depthAttachment")];
            }

            break;
          case 1:
            v24 = C3D::Pass::descriptor(v104);
            v25 = *(C3D::PassDescriptor::outputAtIndex(v24, v15) + 65);
            [objc_msgSend(objc_msgSend(v12 "colorAttachments")];
            [objc_msgSend(objc_msgSend(v12 "colorAttachments")];
            if (![objc_msgSend(objc_msgSend(v12 "colorAttachments")])
            {
              v20 = 0;
            }

            [objc_msgSend(objc_msgSend(v12 colorAttachments];
            if ((v21 & 1) != 0 && [objc_msgSend(objc_msgSend(v12 "colorAttachments")] == 2)
            {
              [objc_msgSend(objc_msgSend(v12 "colorAttachments")];
            }

            break;
          default:
            v28 = scn_default_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              C3D::__renderSlice(buf, v113, v28);
            }

            break;
        }
      }

      v29 = C3D::Pass::descriptor(v104);
      ++v15;
      a2 = v104;
    }

    while (v15 < C3D::PassDescriptor::outputCount(v29));
  }

  v96 = [objc_msgSend(v12 stencilAttachment];
  v30 = [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
  v31 = [(SCNMTLRenderContext *)RenderContext currentCommandBuffer];
  if ([(SCNMTLRenderContext *)RenderContext clientRenderCommandEncoder])
  {
    if (a7)
    {
      v32 = [(SCNMTLRenderContext *)RenderContext clientCommandBuffer];
      if (v32)
      {
        v31 = v32;
      }

      v33 = [(SCNMTLRenderContext *)RenderContext clientRenderCommandEncoder];
      SCNMTLRenderCommandEncoder::useCommandEncoder(v13, v31, v33, v30);
    }

    else
    {
      v35 = *a8;
      if (!*a8)
      {
        v35 = [-[SCNMTLRenderContext commandQueue](RenderContext) commandBuffer];
        *a8 = v35;
      }

      SCNMTLRenderCommandEncoder::useCommandEncoder(v13, *a8, [v35 renderCommandEncoderWithDescriptor:v12], v30);
    }
  }

  else
  {
    if ([(SCNMTLRenderContext *)RenderContext commandBufferStatusMonitor])
    {
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:(**v104)(v104)];
    }

    else
    {
      v34 = 0;
    }

    bzero(v13, 0xD70uLL);
    *(v13 + 64) = 1;
    *(v13 + 72) = 1;
    *(v13 + 3384) = v31;
    v36 = [v31 renderCommandEncoderWithDescriptor:v12];
    *(v13 + 3392) = v36;
    *(v13 + 3400) = v30;
    if (v34)
    {
      [v36 setLabel:v34];
    }

    *(v13 + 24) = 0u;
    *(v13 + 8) = 0u;
  }

  v37 = *(a6 + 16);
  v38 = *(C3D::Pass::descriptor(v104) + 6);
  v39 = v104[117];
  v40 = v104[118];
  v41 = (*(*v104 + 64))(v104);
  v42 = a1[14];
  if (v42)
  {
    v43 = ((*(*v42 + 64))(v42) == v41) << 32;
  }

  else
  {
    v43 = 0;
  }

  [(SCNMTLRenderContext *)RenderContext beginRenderPass:v12 renderEncoder:v13 parameters:v43 | (v40 << 24) | (v39 << 16) | (v38 << 8) | v37];
  C3D::__setupRenderEncoder(RenderContext, v104, a6, v13);
  C3D::RenderPass::setStates(v104, a6);
  (*(*v104 + 32))(v104, a6);
  v45 = 0;
  v46 = *a5;
  while (1)
  {
    v47 = *(v46 + 24);
    if (!v47)
    {
      goto LABEL_115;
    }

    v48 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v47, 0);
    v49 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](a1[3], *v48);
    if (v96)
    {
      goto LABEL_116;
    }

    v45 = v49;
    v50 = a4;
    if (a4[10])
    {
      break;
    }

LABEL_59:
    if (*(*a5 + 8) - 1 != *v95)
    {
      goto LABEL_116;
    }

    if (*(*v45 + 8) != 2)
    {
      goto LABEL_116;
    }

    v55 = *(a6 + 16);
    if (*(C3D::Pass::descriptor(v104) + 6) - 1 != v55 && !*C3D::RenderPass::getRenderMode(v104))
    {
      goto LABEL_116;
    }

    v56 = *(a6 + 18);
    v57 = *(C3D::Pass::descriptor(v104) + 8);
    if (v57 + *(C3D::Pass::descriptor(v104) + 10) - 1 != v56)
    {
      goto LABEL_116;
    }

    if (!C3D::PassDescriptor::outputCount((*v45 + 32)))
    {
      goto LABEL_116;
    }

    v58 = 0;
    v59 = 0;
    v60 = 0;
    do
    {
      v61 = *(C3D::PassDescriptor::outputAtIndex((*v45 + 32), v58) + 66);
      v62 = C3D::PassDescriptor::outputCount((*v45 + 32));
      v59 += v61 >> 7;
      v58 = ++v60;
    }

    while (v62 > v60);
    if (!v59)
    {
      goto LABEL_116;
    }

    if (C3D::PassDescriptor::outputCount((*a4 + 32)) < v59)
    {
      goto LABEL_116;
    }

    v63 = C3D::PassDescriptor::outputCount((*v45 + 32));
    if (v63 > C3D::PassDescriptor::outputCount((*a4 + 32)))
    {
      goto LABEL_116;
    }

    v64 = a4;
    if (a4[10])
    {
      v65 = 0;
      v66 = 0;
      do
      {
        v67 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[]((v64 + 8), v65);
        v68 = *v67;
        if (C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](a1[3], *v67 & 0x7FFF) == v45 && (*(C3D::PassDescriptor::outputAtIndex((*a4 + 32), BYTE2(v68)) + 66) & 0x80) != 0 && (*(C3D::PassDescriptor::inputAtIndex((*v45 + 32), HIBYTE(v68)) + 66) & 0x80) == 0)
        {
          goto LABEL_116;
        }

        v65 = ++v66;
        v64 = a4;
      }

      while (a4[10] > v66);
    }

    if (C3D::PassDescriptor::outputCount((*v45 + 32)))
    {
      v69 = 0;
      v100 = 0;
      while (1)
      {
        v70 = C3D::PassDescriptor::outputAtIndex((*v45 + 32), v69);
        v71 = *(v70 + 66);
        if ((v71 & 0x80) != 0)
        {
          v74 = C3D::PassDescriptor::inputAtIndex((*v45 + 32), v69);
          v75 = *a4;
          C3D::RenderGraph::GraphNode::predecessorsAtIndex(v45, v69, StackAllocator, &v105);
          v76 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v105, 0);
          v77 = C3D::PassDescriptor::outputAtIndex((v75 + 32), *(v76 + 3));
          if (*(v77 + 31) == 1)
          {
            v78 = scn_default_log();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
            {
              C3D::__renderSlice(v110, &v111, v78);
            }
          }

          if (*(v74 + 31) == 1)
          {
            v79 = scn_default_log();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
            {
              C3D::__renderSlice(v108, &v109, v79);
            }
          }

          v80 = *(v77 + 31);
          v81 = *(v74 + 31);
          if (!C3D::PassIODescriptor::isPartiallyCompatible(v77, v74) || *(v74 + 65) != *(v77 + 65))
          {
            goto LABEL_103;
          }

          v73 = 0;
          if ((*(v74 + 66) & 3) != 1 || v80 != v81)
          {
            goto LABEL_104;
          }

          ++v100;
        }

        else if ((v71 & 3) == 2 && C3D::PassDescriptor::outputCount((*a4 + 32)))
        {
          v72 = 0;
          while (*(C3D::PassDescriptor::outputAtIndex((*a4 + 32), v72) + 64) != *(v70 + 64) || *(C3D::PassDescriptor::outputAtIndex((*a4 + 32), v72) + 65) != *(v70 + 65))
          {
            if (++v72 >= C3D::PassDescriptor::outputCount((*a4 + 32)))
            {
              goto LABEL_85;
            }
          }

          v73 = 1;
        }

        else
        {
LABEL_85:
          v73 = 0;
        }

        v82 = C3D::PassDescriptor::outputCount((*v45 + 32));
        ++v69;
        v83 = v73 ^ 1;
        if (v69 >= v82)
        {
          v83 = 0;
        }

        if ((v83 & 1) == 0)
        {
          goto LABEL_104;
        }
      }
    }

    v100 = 0;
LABEL_103:
    v73 = 0;
LABEL_104:
    if ((v73 & 1) != 0 || v100 != v59)
    {
      goto LABEL_116;
    }

    v84 = *v45;
    a1[15] = *v45;
    v85 = *(C3D::Pass::descriptor(v84) + 10);
    if (v85 <= 1)
    {
      v86 = 1;
    }

    else
    {
      v86 = v85;
    }

    v87 = *(C3D::Pass::descriptor(v84) + 8);
    v88 = *(C3D::Pass::descriptor(v84) + 6);
    v89 = C3D::Pass::descriptor(v84);
    v90 = v87 + v86;
    if (v87 < v90)
    {
      v91 = *(v89 + 4);
      v92 = v91 + v88;
      do
      {
        v93 = v91;
        if (v91 < v92)
        {
          do
          {
            *(a6 + 16) = v93;
            *(a6 + 18) = v87;
            C3D::__setupRenderEncoder(RenderContext, v84, a6, v13);
            C3D::RenderPass::setStates(*v45, a6);
            (*(**v45 + 32))(*v45, a6);
            ++v93;
          }

          while (v93 < v92);
        }

        LOWORD(v87) = v87 + 1;
      }

      while (v87 < v90);
    }

    v46 = *(*a5 + 24);
    *a5 = v46;
    *v95 = 0;
LABEL_115:
    if (!v45)
    {
      goto LABEL_116;
    }
  }

  v51 = 0;
  while (1)
  {
    C3D::RenderGraph::GraphNode::successorsAtIndex(v50, v51, StackAllocator, &v105);
    if (v106)
    {
      break;
    }

LABEL_58:
    ++v51;
    v50 = a4;
    if (a4[10] <= v51)
    {
      goto LABEL_59;
    }
  }

  v52 = v107;
  v53 = 4 * v106;
  while (1)
  {
    v54 = *v45;
    if (v54 != *C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](a1[3], *v52 & 0x7FFF))
    {
      break;
    }

    ++v52;
    v53 -= 4;
    if (!v53)
    {
      goto LABEL_58;
    }
  }

LABEL_116:
  if (*(v13 + 3392) && (![(SCNMTLRenderContext *)RenderContext clientRenderCommandEncoder]|| (a7 & 1) == 0))
  {
    v44 = SCNMTLRenderCommandEncoder::endEncoding(v13);
  }

  if (a7 && *a8)
  {
    [*a8 commit];
    *a8 = 0;
  }

  [(SCNMTLRenderContext *)RenderContext endRenderPass];
}

double SCNMTLRenderCommandEncoder::useCommandEncoder(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    SCNMTLRenderCommandEncoder::useCommandEncoder(v8, v9, v10, v11, v12, v13, v14, v15);
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
    SCNMTLRenderCommandEncoder::useCommandEncoder(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  bzero(a1, 0xD70uLL);
  *(a1 + 16) = 1;
  a1[72] = 1;
  *(a1 + 20) = 257;
  a1[42] = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 423) = a2;
  *(a1 + 424) = a3;
  *(a1 + 425) = a4;
  return result;
}

uint64_t C3D::RenderGraph::isMainPass(C3D::RenderGraph *this, uint64_t a2)
{
  result = *(this + 14);
  if (result)
  {
    return (*(*result + 64))(result) == a2;
  }

  return result;
}

double SCNMTLRenderCommandEncoder::endEncoding(SCNMTLRenderCommandEncoder *this)
{
  if (!this->var24[1])
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      SCNMTLRenderCommandEncoder::endEncoding(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  [this->var24[1] endEncoding];
  result = 0.0;
  *this->var24 = 0u;
  return result;
}

void C3D::RenderGraph::execute(C3D::RenderGraph *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v2 = v1;
  *(&v142[2] + 4) = *MEMORY[0x277D85DE8];
  if (*(v1 + 210) & 1) == 0 && (*(v1 + 211))
  {
    if (*(v1 + 212) == 1)
    {
      C3D::RenderGraph::logFrame(v1);
    }

    RenderContext = C3DEngineContextGetRenderContext(*(v2 + 8));
    v125 = [(SCNMTLRenderContext *)RenderContext currentCommandBuffer];
    StackAllocator = C3DEngineContextGetStackAllocator(*(v2 + 8));
    C3DStackAllocatorPushFrame(StackAllocator);
    v130._encoder = 0;
    v130._bufferPool = 0;
    v129._encoder = 0;
    v129._commandBuffer = 0;
    if (*(v2 + 168))
    {
      operator new();
    }

    v6 = *(v2 + 96);
    v128 = v6;
    if (!v6)
    {
LABEL_210:
      *(v2 + 120) = 0;
      C3DStackAllocatorPopFrame(StackAllocator);
      return;
    }

    *&v3 = 136315394;
    v115 = v3;
    while (1)
    {
      v127 = 0;
      v7 = (v6 + 8);
      if (*(v6 + 8))
      {
        break;
      }

LABEL_209:
      v6 = *(v6 + 24);
      v128 = v6;
      if (!v6)
      {
        goto LABEL_210;
      }
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v6, v8);
      v11 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v2 + 24), *v10);
      v12 = *v11;
      *(v2 + 120) = *v11;
      v13 = *C3D::Pass::descriptor(v12);
      if (v13 <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 5)
        {
          (*(*v12 + 24))(v12);
          goto LABEL_168;
        }

        if (v13 == 4)
        {
          if (v125 && !v129._encoder)
          {
            SCNMTLBlitCommandEncoder::beginEncoding(&v129, v125, 0);
          }

          if (*(C3D::Pass::descriptor(v12) + 6))
          {
            v14 = 0;
            do
            {
              *buf = &v129;
              *&buf[8] = v14;
              (*(*v12 + 48))(v12, buf);
              ++v14;
            }

            while (v14 < *(C3D::Pass::descriptor(v12) + 6));
          }

          PassInStage = C3D::__nextPassInStage(*(v2 + 24), v6, v9);
          if (v125 && (!PassInStage || *C3D::Pass::descriptor(PassInStage) != 4))
          {
            SCNMTLBlitCommandEncoder::endEncoding(&v129);
          }

          goto LABEL_168;
        }

LABEL_54:
        v27 = scn_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          C3D::RenderGraph::execute(v132, &v133, v27);
        }

        goto LABEL_168;
      }

      if (v125 && !v130._encoder)
      {
        v21 = [(SCNMTLRenderContext *)RenderContext features];
        SCNMTLComputeCommandEncoder::beginEncoding(&v130, v125, v21, 0, 0);
      }

      if (*(C3D::Pass::descriptor(v12) + 6))
      {
        v22 = 0;
        do
        {
          *buf = &v130;
          *&buf[8] = v22;
          (*(*v12 + 40))(v12, buf);
          ++v22;
        }

        while (v22 < *(C3D::Pass::descriptor(v12) + 6));
      }

      v23 = C3D::__nextPassInStage(*(v2 + 24), v6, v9);
      if (v125 && (*(v2 + 168) || !v23 || *C3D::Pass::descriptor(v23) != 3))
      {
        SCNMTLComputeCommandEncoder::endEncoding(&v130);
      }

LABEL_168:
      if (*(v2 + 168))
      {
        v80 = C3D::Pass::resource(*v11);
        v81 = C3D::PassResource::outputCount(v80);
        v82 = v127;
        if (v81)
        {
          v83 = 0;
          v121 = v127;
          do
          {
            v84 = C3D::Pass::resource(*v11);
            v85 = C3D::PassResource::outputAtIndex(v84, v83);
            if (!v85)
            {
              goto LABEL_202;
            }

            if (!*(v2 + 184))
            {
              *(v2 + 184) = C3D::RenderGraph::graphDescription(v2);
            }

            v86 = 0;
            v87 = v2 + 96;
            while (1)
            {
              v88 = *v87;
              v89 = *(*v87 + 8);
              if (v89)
              {
                break;
              }

LABEL_179:
              v87 = v88 + 24;
              ++v86;
            }

            v90 = *(v88 + 16);
            v91 = 2 * v89;
            while (1)
            {
              v92 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v2 + 24), *v90);
              PrimitiveCount = C3DMeshElementGetPrimitiveCount(*v92);
              if (PrimitiveCount != C3DMeshElementGetPrimitiveCount(*v11))
              {
                break;
              }

              ++v90;
              v91 -= 2;
              if (!v91)
              {
                goto LABEL_179;
              }
            }

            v94 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(v2 + 184) objectForKeyedSubscript:{@"stages", "objectAtIndex:", v86), "objectAtIndex:", v82), "objectForKey:", @"outputs", "objectAtIndex:", v83}];
            if (!v94)
            {
              v95 = scn_default_log();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315650;
                *&buf[4] = "outputDesc";
                *&buf[12] = 1024;
                *&buf[14] = v83;
                *&buf[18] = 1024;
                *&buf[20] = v86;
                _os_log_fault_impl(&dword_21BEF7000, v95, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Missing output at index %d for stage %d", buf, 0x18u);
              }
            }

            if (*(v85 + 32) != 1)
            {
              goto LABEL_202;
            }

            v96 = C3D::Pass::outputBufferParameterAtIndex(*v11, v83);
            *buf = *(v96 + 16);
            *&buf[16] = *(v96 + 32);
            v97 = ([*v85 sampleCount] == 1 ? C3D::RefCountedResource::textureOrFinal(v85, RenderContext) : C3D::RefCountedResource::resolveTextureOrFinal(v85, RenderContext));
            v98 = v97;
            v99 = [(SCNMTLRenderContext *)RenderContext resourceManager];
            SharedTexture = C3D::CreateSharedTexture(v98, buf, v125, v99);
            if (!SharedTexture)
            {
              goto LABEL_202;
            }

            v101 = (***v11)();
            if (v101)
            {
              v102 = strdup(v101);
            }

            else
            {
              v102 = 0;
            }

            LODWORD(v103) = MEMORY[0];
            v104 = MEMORY[8];
            if ((MEMORY[0] + 1) <= MEMORY[4])
            {
              v107 = MEMORY[8];
              if (v102)
              {
                goto LABEL_200;
              }
            }

            else
            {
              __s1b = v102;
              v105 = ((MEMORY[4] + 1) * 1.5);
              v106 = malloc_type_malloc(32 * v105, 0x5437EE60uLL);
              v107 = v106;
              v103 = MEMORY[0];
              if (MEMORY[0])
              {
                v108 = 0;
                v109 = 0;
                do
                {
                  v110 = &v106[v108];
                  v111 = MEMORY[8] + v108;
                  *v110 = *(MEMORY[8] + v108);
                  *(v110 + 2) = *(v111 + 16);
                  *(v110 + 6) = *(v111 + 24);
                  *v111 = 0;
                  *(v111 + 8) = 0;
                  *(v111 + 16) = 0;
                  *(v111 + 24) = -1;
                  ++v109;
                  v108 += 32;
                }

                while (v109 < v103);
              }

              MEMORY[8] = v106;
              MEMORY[4] = v105;
              if (v104 != 16)
              {
                free(v104);
                LODWORD(v103) = MEMORY[0];
                v107 = MEMORY[8];
              }

              v82 = v121;
              v102 = __s1b;
              if (__s1b)
              {
LABEL_200:
                v112 = strdup(v102);
                goto LABEL_201;
              }
            }

            v112 = 0;
LABEL_201:
            v113 = &v107[32 * v103];
            *v113 = v112;
            *(v113 + 1) = v94;
            *(v113 + 2) = SharedTexture;
            *(v113 + 6) = v83;
            MEMORY[0] = v103 + 1;
            free(v102);
LABEL_202:
            v114 = C3D::Pass::resource(*v11);
            ++v83;
          }

          while (v83 < C3D::PassResource::outputCount(v114));
        }
      }

      else
      {
        LOWORD(v82) = v127;
      }

      v9 = v82 + 1;
      v127 = v82 + 1;
      v8 = (v82 + 1);
      v6 = v128;
      v7 = (v128 + 8);
      if (*(v128 + 8) <= v8)
      {
        goto LABEL_209;
      }
    }

    if (v13 == 1)
    {
      v24 = C3D::Pass::descriptor(v12);
      v25 = *(v24 + 6);
      if (*(v24 + 6))
      {
        v26 = 0;
        do
        {
          *buf = v125;
          *&buf[8] = v26;
          (*(*v12 + 56))(v12, buf);
          ++v26;
        }

        while (v26 < v25);
      }

      goto LABEL_168;
    }

    if (v13 != 2)
    {
      goto LABEL_54;
    }

    v117 = *C3D::RenderPass::getRenderMode(v12);
    v16 = *(v2 + 152);
    v17 = *(v6 + 24);
    v18 = v17 && !*(v17 + 24) && [(SCNMTLRenderContext *)RenderContext clientRenderPassDescriptor]&& *v7 - 1 == v8;
    for (i = 0; i != 8; ++i)
    {
      [objc_msgSend(objc_msgSend(v16 colorAttachments];
      [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
    }

    [objc_msgSend(v16 "depthAttachment")];
    [objc_msgSend(v16 "depthAttachment")];
    [objc_msgSend(v16 "stencilAttachment")];
    if (v117 == 1)
    {
      v20 = *(C3D::Pass::descriptor(v12) + 6);
    }

    else
    {
      v20 = 0;
    }

    [v16 setRenderTargetArrayLength:v20];
    if (v12 == *(v2 + 112))
    {
      v28 = [-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) rasterizationRateMap];
    }

    else
    {
      v28 = 0;
    }

    [v16 setRasterizationRateMap:v28];
    v29 = C3D::Pass::descriptor(v12);
    if (!C3D::PassDescriptor::outputCount(v29))
    {
      v118 = 0;
LABEL_139:
      if (v18 && [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "stencilAttachment")])
      {
        [v16 setStencilAttachment:{objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext), "stencilAttachment")}];
      }

      v68 = *(C3D::Pass::descriptor(v12) + 10);
      if (v68 <= 1)
      {
        v69 = 1;
      }

      else
      {
        v69 = v68;
      }

      v70 = *(C3D::Pass::descriptor(v12) + 8);
      v71 = *(C3D::Pass::descriptor(v12) + 6);
      v72 = C3D::Pass::descriptor(v12);
      if (v117)
      {
        v73 = 1;
      }

      else
      {
        v73 = v71;
      }

      __s1a = v70 + v69;
      if (!(v118 & 1 | (v70 >= (v70 + v69))))
      {
        v120 = *(v72 + 4);
        v74 = v120 + v73;
        do
        {
          v75 = v120;
          if (v120 < v74)
          {
            do
            {
              if (v18 && (([(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing]& 1) != 0 || [(SCNMTLRenderContext *)RenderContext enableARMode]))
              {
                RenderPassDescriptorForEye = C3DEngineContextGetRenderPassDescriptorForEye(*(v2 + 8), v75);
                v77 = [objc_msgSend(objc_msgSend(RenderPassDescriptorForEye "colorAttachments")];
                if (!v77)
                {
                  v77 = [objc_msgSend(objc_msgSend(RenderPassDescriptorForEye "colorAttachments")];
                }

                [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
                [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
                [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
                if ([objc_msgSend(v16 "depthAttachment")] || objc_msgSend(objc_msgSend(v16, "depthAttachment"), "resolveTexture"))
                {
                  v78 = [objc_msgSend(RenderPassDescriptorForEye "depthAttachment")];
                  if (!v78)
                  {
                    v78 = [objc_msgSend(RenderPassDescriptorForEye "depthAttachment")];
                  }

                  [objc_msgSend(v16 "depthAttachment")];
                  [objc_msgSend(v16 "depthAttachment")];
                  [objc_msgSend(v16 "depthAttachment")];
                }

                if ([objc_msgSend(v16 "stencilAttachment")] || objc_msgSend(objc_msgSend(v16, "stencilAttachment"), "resolveTexture"))
                {
                  v79 = [objc_msgSend(RenderPassDescriptorForEye "stencilAttachment")];
                  if (!v79)
                  {
                    v79 = [objc_msgSend(RenderPassDescriptorForEye "stencilAttachment")];
                  }

                  [objc_msgSend(v16 "stencilAttachment")];
                  [objc_msgSend(v16 "stencilAttachment")];
                  [objc_msgSend(v16 "stencilAttachment")];
                }
              }

              *buf = &v131;
              *&buf[8] = v16;
              *&buf[16] = v75;
              *&buf[18] = v70;
              *&buf[20] = 0;
              C3D::__renderSlice(v2, v12, &v127, v11, &v128, buf, v18, (v2 + 160));
              ++v75;
            }

            while (v75 < v74);
          }

          ++v70;
        }

        while (v70 < __s1a);
      }

      goto LABEL_168;
    }

    v118 = 0;
    v30 = 0;
    while (1)
    {
      v31 = C3D::Pass::descriptor(v12);
      v32 = C3D::PassDescriptor::outputAtIndex(v31, v30);
      if (*v32 == 1)
      {
        v33 = *(v32 + 8);
        v34 = *(v32 + 31);
        ViewBackgroundColor = *(v32 + 48);
        v35 = *(v32 + 65);
        __s1 = *(v32 + 66);
        v36 = C3D::Pass::descriptor(v12);
        v37 = *(C3D::PassDescriptor::outputAtIndex(v36, v30) + 64);
        switch(v37)
        {
          case 3:
            if (v18 && [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "stencilAttachment")])
            {
              v40 = [-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) stencilAttachment];
              [v16 setStencilAttachment:v40];
              if (v34 <= 1 && [v40 resolveTexture])
              {
                [objc_msgSend(v16 "stencilAttachment")];
                [objc_msgSend(v16 "stencilAttachment")];
                [objc_msgSend(v16 "stencilAttachment")];
              }

LABEL_110:
              if (C3DEngineContextHasFeatures(*(v2 + 8), 0x4000))
              {
                v55 = [(SCNMTLRenderContext *)RenderContext device];
                if (SCNMTLDeviceSupportsStencilResolve(v55))
                {
                  if ([(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
                  {
                    [objc_msgSend(v16 "stencilAttachment")];
                  }
                }
              }

              break;
            }

            v51 = C3D::Pass::resource(v12);
            v52 = C3D::PassResource::outputAtIndex(v51, v30);
            if (v52)
            {
              if ((__s1 & 8) != 0 && !*(v2 + 168))
              {
                v53 = 0;
              }

              else
              {
                v53 = C3D::__deduceStoreAction(v2, [v16 stencilAttachment], 3, v11, StackAllocator, v30);
              }

              [objc_msgSend(v16 "stencilAttachment")];
              if ([objc_msgSend(v16 "stencilAttachment")] == 2 || objc_msgSend(objc_msgSend(v16, "stencilAttachment"), "storeAction") == 3)
              {
                [objc_msgSend(v16 "stencilAttachment")];
              }

              if (*(v52 + 32) != 1)
              {
                v54 = scn_default_log();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::execute(v137, &v138, v54);
                }
              }

              [objc_msgSend(v16 "stencilAttachment")];
              [objc_msgSend(v16 "stencilAttachment")];
              goto LABEL_110;
            }

            break;
          case 2:
            if (v18 && [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "depthAttachment")])
            {
              v39 = [-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) depthAttachment];
              [v16 setDepthAttachment:v39];
              if (v34 <= 1 && [v39 resolveTexture])
              {
                [objc_msgSend(v16 "depthAttachment")];
                [objc_msgSend(v16 "depthAttachment")];
                [objc_msgSend(v16 "depthAttachment")];
              }

LABEL_91:
              CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(v2 + 8));
              if (C3DEngineContextHasFeatures(*(v2 + 8), 4) && [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
              {
                if ((CoordinatesSystemOptions & 8) != 0)
                {
                  v49 = 2;
                }

                else
                {
                  v49 = 1;
                }

                [objc_msgSend(v16 "depthAttachment")];
              }

              v50 = [v16 depthAttachment];
              if ((CoordinatesSystemOptions & 8) != 0)
              {
                [v50 setClearDepth:0.0];
              }

              else
              {
                [v50 setClearDepth:1.0];
              }

              break;
            }

            v42 = C3D::Pass::resource(v12);
            v43 = C3D::PassResource::outputAtIndex(v42, v30);
            v44 = v43;
            if (v43)
            {
              if (*(v43 + 32) != 1)
              {
                v45 = scn_default_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::execute(v139, &v140, v45);
                }
              }

              v46 = [v16 depthAttachment];
              [v46 setTexture:{C3D::Pass::outputTextureAtIndex(v12, v30)}];
              [v46 setLoadAction:__s1 & 3];
              if ((__s1 & 8) != 0 && !*(v2 + 168))
              {
                v47 = 0;
              }

              else
              {
                v47 = C3D::__deduceStoreAction(v2, v46, 2, v11, StackAllocator, v30);
              }

              [v46 setStoreAction:v47];
              if ([v46 storeAction] == 2 || objc_msgSend(v46, "storeAction") == 3)
              {
                [v46 setResolveTexture:*(v44 + 24)];
              }

              goto LABEL_91;
            }

            break;
          case 1:
            if (v35 == 255)
            {
              v38 = scn_default_log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
              {
                *buf = v115;
                *&buf[4] = "attachmentID < 255";
                *&buf[12] = 2080;
                *&buf[14] = v33;
                _os_log_fault_impl(&dword_21BEF7000, v38, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Attachment ID not set for %s", buf, 0x16u);
              }
            }

            else
            {
              if (v35)
              {
                v56 = 0;
              }

              else
              {
                v56 = v18;
              }

              if (v56 == 1)
              {
                v57 = [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "colorAttachments")];
                [objc_msgSend(v16 "colorAttachments")];
                if (v34 <= 1 && [v57 resolveTexture])
                {
                  [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
                  [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
                  [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
                }

                break;
              }
            }

            v58 = C3D::Pass::resource(v12);
            v59 = C3D::PassResource::outputAtIndex(v58, v30);
            v60 = v59;
            if (v59)
            {
              if (*(v59 + 32) != 1)
              {
                v61 = scn_default_log();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::execute(v141, v142, v61);
                }
              }

              v62 = [objc_msgSend(v16 "colorAttachments")];
              [v62 setTexture:{C3D::Pass::outputTextureAtIndex(v12, v30)}];
              v63 = [v62 texture] == 0;
              [v62 setStoreAction:{C3D::__deduceStoreAction(v2, v62, 1, v11, StackAllocator, v30)}];
              if ([v62 storeAction] == 2 || objc_msgSend(v62, "storeAction") == 3)
              {
                [v62 setResolveTexture:{C3D::RefCountedResource::resolveTextureOrFinal(v60, RenderContext)}];
                v64 = [objc_msgSend(v62 "resolveTexture")];
                LODWORD(v64) = v64 == [objc_msgSend(v62 "texture")];
                v65 = [v62 resolveTexture];
                if (!v64 || (v66 = [v65 height], LOBYTE(v66) = v66 != objc_msgSend(objc_msgSend(v62, "texture"), "height"), (objc_msgSend(v62, "resolveTexture") == 0) | v66 & 1))
                {
                  *(v2 + 120) = 0;
                  C3DStackAllocatorPopFrame(StackAllocator);
                  return;
                }
              }

              [v62 setLoadAction:__s1 & 3];
              v118 |= v63;
              if ([v62 loadAction] == 2)
              {
                if ((__s1 & 0x40) == 0)
                {
                  ViewBackgroundColor = C3DEngineContextGetViewBackgroundColor(*(v2 + 8));
                }

                [v62 setClearColor:{ViewBackgroundColor.n128_f32[0], ViewBackgroundColor.n128_f32[1], ViewBackgroundColor.n128_f32[2], ViewBackgroundColor.n128_f32[3]}];
              }
            }

            break;
          default:
            v41 = scn_default_log();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              C3D::__renderSlice(v135, v136, v41);
            }

            break;
        }
      }

      v67 = C3D::Pass::descriptor(v12);
      if (++v30 >= C3D::PassDescriptor::outputCount(v67))
      {
        goto LABEL_139;
      }
    }
  }

  v4 = *(v1 + 168);
  if (v4)
  {
    v5 = *(v2 + 184);
    if (v5 || (v5 = C3D::RenderGraph::graphDescription(v2), *(v2 + 184) = v5, (v4 = *(v2 + 168)) != 0))
    {
      (*(v4 + 16))(v4, v5);

      *(v2 + 168) = 0;
      *(v2 + 184) = 0;
    }
  }
}