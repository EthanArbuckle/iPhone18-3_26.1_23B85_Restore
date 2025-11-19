void _C3DEntityCleanupActionForKey(CFTypeRef *a1, const void *a2, const char *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
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
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kActionsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v23 = SubAttributeOrderedDictionary;
    if (CFDictionaryGetValue(SubAttributeOrderedDictionary, a3) == a2)
    {
      C3DOrderedDictionaryRemoveValue(v23, a3);
      if (!C3DOrderedDictionaryGetCount(v23))
      {
        _C3DEntitySetAttribute(a1, @"kActionsKey", 0, 1);
      }
    }
  }
}

void C3DEntityRemoveAllActions(void *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DGetScene(a1);
  if (v10)
  {
    AnimationManager = C3DSceneGetAnimationManager(v10);
    if (AnimationManager)
    {
      C3DAnimationManagerRemoveActionsForObject(AnimationManager, a1);
    }
  }

  _C3DEntitySetAttribute(a1, @"kActionsKey", 0, 1);
}

void C3DEntitySetShaderModifiers(CFTypeRef *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  _C3DEntitySetAttribute(a1, @"kShaderModifiers", a2, 1);
  v12 = CFGetTypeID(a1);
  if (CFTypeIsC3DGeometry(v12))
  {
    _C3DGeometryShadingDidUpdate(a1);
  }

  else if (v12 == C3DMaterialGetTypeID())
  {
    _C3DMaterialShadingDidUpdate(a1);
  }
}

const __CFDictionary *C3DEntityGetShaderModifiers(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetAttribute(a1, @"kShaderModifiers");
}

const __CFArray *C3DEntityHasShaderModifiers(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEntityGetShaderModifiers(a1);
  if (result)
  {
    v13 = result;
    Count = CFArrayGetCount(result);
    v15 = Count - 1;
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v16 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
        v18 = C3DShaderModifierGetEntryPoint(ValueAtIndex) == a2;
        result = v18;
        v18 = v18 || v15 == v16++;
      }

      while (!v18);
    }
  }

  return result;
}

void C3DEntitySetShadableMinimumMTLLanguageVersion(CFTypeRef *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  _C3DEntitySetAttribute(a1, @"kShadableMinimumMTLLanguageVersionKey", a2, 1);
}

const __CFDictionary *C3DEntityGetShadableMinimumMTLLanguageVersion(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetAttribute(a1, @"kShadableMinimumMTLLanguageVersionKey");
}

void C3DEntitySetValueForKey(uint64_t a1, void *a2, __int16 *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
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
    C3DEntitySetValueForKey_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  KeyValueStore = _C3DEntityGetKeyValueStore(a1, 1);
  C3DKeyValueStoreSetValueForKey(KeyValueStore, a2, a3);
}

const __CFDictionary *_C3DEntityGetKeyValueStore(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"_kvc");
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a2)
  {
    Value = C3DKeyValueStoreCreate();
    _C3DEntitySetAttribute(a1, @"_kvc", Value, 1);
    CFRelease(Value);
  }

  return Value;
}

void C3DEntityResetValueForKey(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DEntitySetValueForKey_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  KeyValueStore = _C3DEntityGetKeyValueStore(a1, 1);
  C3DKeyValueStoreResetValueForKey(KeyValueStore, a2);
}

const __CFDictionary *C3DEntityGetValueForKey(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DEntitySetValueForKey_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return C3DKeyValueStoreGetValueForKey(result, a2);
    }
  }

  return result;
}

const __CFDictionary *C3DEntityEnumerateKeyValuesWithBlock(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return C3DKeyValueStoreEnumerate(result, a2);
    }
  }

  return result;
}

const __CFDictionary *C3DEntityEnumerateKeyValuesWithBlockBySortingKeys(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return C3DKeyValueStoreEnumerateBySortingKeys(result, a2);
    }
  }

  return result;
}

uint64_t C3DEntityResolveKeypathInKeyValueStore(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, @"_kvc");
  if (!Value)
  {
    return 0;
  }

  return C3DKeyValueStoreSetupModelTargetWithKey(Value, a2, a3, a4);
}

uint64_t C3DEntityGetValueStorageModificationCount(void *a1)
{
  v2 = a1[5];
  if (v2 && (Value = CFDictionaryGetValue(v2, @"_kvc")) != 0)
  {
    Timestamp = C3DKeyValueStoreGetTimestamp(Value);
  }

  else
  {
    Timestamp = 0;
  }

  v5 = CFGetTypeID(a1);
  if (v5 == C3DMaterialGetTypeID())
  {
    return C3DMaterialGetValueStorageModificationCount(a1) + Timestamp;
  }

  return Timestamp;
}

const __CFDictionary *_C3DEntityWillRemoveFromScene(uint64_t a1, uint64_t a2)
{
  result = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (result)
  {

    return C3DOrderedDictionaryApplyFunction(result, _removeAnimationPlayerSceneRef, a2);
  }

  return result;
}

const __CFDictionary *_C3DEntityFinalizeAddToScene(float32x4_t *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DSceneCreateHitTestResultsWithSegment_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  AnimationManager = C3DSceneGetAnimationManager(a2);
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v32 = a1;
    v33 = AnimationManager;
    v34 = a2;
    C3DOrderedDictionaryApplyFunction(SubAttributeOrderedDictionary, _fillAnimationManager, &v32);
  }

  v22 = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kActionsKey", 0);
  if (v22)
  {
    v32 = a1;
    v33 = AnimationManager;
    C3DOrderedDictionaryApplyFunction(v22, _fillAnimationManagerWithActions, &v32);
  }

  result = _C3DEntityGetSubAttributeArray(a1, @"kBindingsKey", 0);
  if (result)
  {
    v24 = result;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    result = [(__CFDictionary *)result countByEnumeratingWithState:&v28 objects:&v32 count:16];
    if (result)
    {
      v25 = result;
      v26 = *v29;
      do
      {
        v27 = 0;
        do
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(v24);
          }

          C3DAnimationManagerAddBinding(AnimationManager, a1, [*(*(&v28 + 1) + 8 * v27) keyPathDst], objc_msgSend(*(*(&v28 + 1) + 8 * v27), "sourceObject"), objc_msgSend(*(*(&v28 + 1) + 8 * v27), "keyPathSrc"), objc_msgSend(*(*(&v28 + 1) + 8 * v27), "options"));
          v27 = (v27 + 1);
        }

        while (v25 != v27);
        result = [(__CFDictionary *)v24 countByEnumeratingWithState:&v28 objects:&v32 count:16];
        v25 = result;
      }

      while (result);
    }
  }

  return result;
}

void _fillAnimationManager(const void *a1, uint64_t *cf, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  C3DAddSceneRef(cf, *(a3 + 16));

  C3DAnimationManagerAddAnimationPlayerForKey(v5, cf, v6, a1);
}

void C3D::MBTileMaxPass::setup(C3D::MBTileMaxPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = (this + 32);
  v3 = (*(*this + 88))(this);
  v4 = C3D::PassDescriptor::inputAtIndex(v2, 0);
  *(v4 + 8) = "VELOCITY";
  *(v4 + 16) = *(v3 + 8);
  *(v4 + 18) = *(v3 + 12);
  v5 = C3D::PassDescriptor::outputAtIndex(v2, 0);
  *(v5 + 8) = "MB-TileMax";
  *(v5 + 28) = 115;
  *(v5 + 16) = (*(v3 + 8) * 0.5);
  *(v5 + 18) = (*(v3 + 12) * 0.5);
  v6 = fmax((*(v3 + 8) * 0.5), (*(v3 + 12) * 0.5));
  v7 = (floorf(log2f(v6)) + 1.0);
  if (v7 >= 6)
  {
    LOBYTE(v7) = 6;
  }

  *(v5 + 30) = v7;
}

uint64_t C3D::MBTileMaxPass::compile(C3D::MBTileMaxPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = *(*(this + 3) + 128);
  v4 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(v3, v4);
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

unint64_t C3D::MBTileMaxPass::execute(C3D::Pass *a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[0] != v4)
  {
    v3->_textures[0] = v4;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v5 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v6 = v5;
  if (v3->_textures[1] != v5)
  {
    v3->_textures[1] = v5;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v7 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 16);
  v8 = [(SCNMTLOpenSubdivComputeEvaluator *)v7 computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v6, v8);
  result = [v6 mipmapLevelCount];
  if (result >= 2)
  {
    v10 = 1;
    v11 = v6;
    do
    {
      v12 = [v6 newTextureViewWithPixelFormat:objc_msgSend(v6 textureType:"pixelFormat") levels:objc_msgSend(v6 slices:"textureType"), v10, 1, 0, 1];
      v13 = v12;
      if (v3->_textures[0] != v11)
      {
        v3->_textures[0] = v11;
        v3->_texturesToBind[0] |= 1uLL;
      }

      if (v3->_textures[1] != v12)
      {
        v3->_textures[1] = v12;
        v3->_texturesToBind[0] |= 2uLL;
      }

      v14 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 16);
      v15 = [(SCNMTLOpenSubdivComputeEvaluator *)v14 computeEvaluator];
      SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v13, v15);

      ++v10;
      result = [v6 mipmapLevelCount];
      v11 = v13;
    }

    while (v10 < result);
  }

  return result;
}

void C3D::MBTileMaxPassResource::~MBTileMaxPassResource(C3D::MBTileMaxPassResource *this)
{
  *this = &unk_282DC6F18;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC6F18;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void _C3DEngineNotificationQueueCFFinalize(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  os_unfair_lock_unlock((a1 + 32));
}

uint64_t __C3DEngineNotificationQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DEngineNotificationQueueGetTypeID_typeID = result;
  return result;
}

uint64_t C3DEngineNotificationQueueCreate(uint64_t a1)
{
  if (C3DEngineNotificationQueueGetTypeID_onceToken != -1)
  {
    C3DEngineNotificationQueueCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DEngineNotificationQueueGetTypeID_typeID, 48);
  v3 = *MEMORY[0x277CBECE8];
  v4 = MEMORY[0x277CBF150];
  *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  *(Instance + 24) = CFDictionaryCreateMutable(v3, 0, 0, v4);
  *(Instance + 56) = a1;
  *(Instance + 32) = 0;
  return Instance;
}

void C3DEngineNotificationQueueEnqueueEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 32));
  if (!a3 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DEngineNotificationQueueEnqueueEvent_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  TypeID = CFGetTypeID(a3);
  if (CFTypeIsC3DGeometry(TypeID))
  {
    TypeID = C3DGeometryGetTypeID();
  }

  Value = CFDictionaryGetValue(*(a1 + 16), TypeID);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    CFDictionarySetValue(*(a1 + 16), TypeID, Value);
    CFRelease(Value);
  }

  v26 = CFDictionaryGetValue(Value, a3);
  v27 = v26;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v28 = v26 & 0xFFFFFF00;
        v29 = 2049;
      }

      else
      {
        v28 = v26 & 0xFFFFFB00;
        v29 = 1027;
      }
    }

    else
    {
      switch(a2)
      {
        case 7:
          v28 = v26 & 0xFFFFFF00;
          v29 = 2051;
          break;
        case 8:
          v32 = ((v26 & 0xFFF7FF00) + 524289);
          goto LABEL_34;
        case 9:
          v28 = v26 & 0xFFFFFD00;
          v29 = 516;
          break;
        default:
          goto LABEL_35;
      }
    }

LABEL_33:
    v32 = (v28 | v29);
LABEL_34:
    CFDictionarySetValue(Value, a3, v32);
    goto LABEL_35;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v28 = v26 & 0xFFFFFD00;
      v29 = 514;
    }

    else
    {
      v28 = v26 & 0xFFFFFB00;
      v29 = 1025;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    v30 = v26 & 0xFFEFFF00;
    if ((v26 & 0x200) != 0)
    {
      v31 = scn_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 134217984;
        v42 = a3;
        _os_log_impl(&dword_21BEF7000, v31, OS_LOG_TYPE_DEFAULT, "Warning: adding a node that was just removed %p", &v41, 0xCu);
      }
    }

    v32 = (v30 + 1048577);
    goto LABEL_34;
  }

  if (a2 != 2)
  {
    goto LABEL_35;
  }

  if (a4)
  {
    if (CFEqual(a4, @"kMeshKey"))
    {
      v28 = v27 & 0xFFFFEF00;
      v29 = 4097;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kCameraKey"))
    {
      v28 = v27 & 0xFFFFDF00;
      v29 = 8193;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kLightKey"))
    {
      v28 = v27 & 0xFFFFBF00;
      v29 = 16385;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kDeformerStackKey"))
    {
      v28 = v27 & 0xFFFDFF00;
      v29 = 131073;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"rendererDelegate"))
    {
      v28 = v27 & 0xFFFF7F00;
      v29 = 32769;
      goto LABEL_33;
    }
  }

  else
  {
    v33 = scn_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      C3DEngineNotificationQueueEnqueueEvent_cold_3(v33, v34, v35, v36, v37, v38, v39, v40);
    }
  }

LABEL_35:
  if ((*(a1 + 48) & 1) == 0)
  {
    *(a1 + 48) = 1;
    _dispatchAutoFlush(a1);
  }

  os_unfair_lock_unlock((a1 + 32));
}

void _dispatchAutoFlush(uint64_t a1)
{
  if (CFDictionaryGetCount(*(a1 + 16)))
  {
    v2 = objc_alloc_init(C3DEngineNotificationQueueTransientWrapper);
    [(C3DEngineNotificationQueueTransientWrapper *)v2 setEngineNotificationQueue:a1];
    v3 = dispatch_time(0, 1000000000);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___dispatchAutoFlush_block_invoke;
    v4[3] = &unk_2782FFC18;
    v4[4] = v2;
    v4[5] = a1;
    dispatch_after(v3, MEMORY[0x277D85CD0], v4);
  }
}

void C3DEngineNotificationQueueStartObserving(_BYTE *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineNotificationQueueStartObserving_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterAddObserver(SharedInstance, a1, __EnqueueNotification, @"kC3DNotificationEntityAttributeDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  a1[49] = 1;
}

void __EnqueueNotification(int a1, uint64_t a2, CFTypeRef cf1, void *a4, const void *a5)
{
  if (CFEqual(cf1, @"kC3DNotificationEntityAttributeDidChange"))
  {
    v8 = C3DGetScene(a4);
    v9 = *(a2 + 56);
    if (v8 == v9 && v9 != 0)
    {

      C3DEngineNotificationQueueEnqueueEvent(a2, 2, a4, a5);
    }
  }

  else
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __EnqueueNotification_cold_1(v11);
    }
  }
}

void C3DEngineNotificationQueueStopObserving(_BYTE *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineNotificationQueueStartObserving_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (a1[49] == 1)
  {
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterRemoveObserver(SharedInstance, a1, @"kC3DNotificationEntityAttributeDidChange", 0);
  }
}

void C3DEngineNotificationQueueSwapForApplying(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineNotificationQueueEnqueueEvent_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  CFDictionaryRemoveAllValues(*(a1 + 24));
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 16) = vextq_s8(*(a1 + 16), *(a1 + 16), 8uLL);
  os_unfair_lock_unlock((a1 + 32));
  *(a1 + 50) = 0;
  *(a1 + 40) = CACurrentMediaTime();
}

void C3DEngineNotificationQueueApplyForEntityType(uint64_t a1, const void *a2, void (__cdecl *a3)(const void *, const void *, void *), void *a4)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {

    CFDictionaryApplyFunction(Value, a3, a4);
  }
}

void ___dispatchAutoFlush_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) engineNotificationQueue];
  if (v2)
  {
    v3 = v2;
    if (CACurrentMediaTime() - *(v2 + 40) >= 1.0)
    {
      *(v3 + 48) = 0;
      os_unfair_lock_lock((*(a1 + 40) + 32));
      v5 = *(v3 + 16);
      *(v3 + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
      if (CFDictionaryGetCount(v5) >= 1)
      {
        *(v3 + 50) = 1;
      }

      os_unfair_lock_unlock((*(a1 + 40) + 32));

      CFRelease(v5);
    }

    else
    {
      os_unfair_lock_lock((*(a1 + 40) + 32));
      _dispatchAutoFlush(v3);
      v4 = (*(a1 + 40) + 32);

      os_unfair_lock_unlock(v4);
    }
  }
}

void _C3DDynamicBatchingSystemCFFinalize(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  free(v2);
}

uint64_t __C3DDynamicBatchingSystemGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DDynamicBatchingSystemGetTypeID_typeID = result;
  return result;
}

uint64_t C3DDynamicBatchingSystemCreate()
{
  if (C3DDynamicBatchingSystemGetTypeID_onceToken != -1)
  {
    C3DDynamicBatchingSystemCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DDynamicBatchingSystemGetTypeID_typeID, 32);
  *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  Integer = C3DPreferencesGetInteger(4);
  if (Integer)
  {
    v2 = Integer;
  }

  else
  {
    v2 = 1000;
  }

  C3DDynamicBatchingSystemSetMaxBatchSize(Instance, v2);
  return Instance;
}

void *C3DDynamicBatchingSystemSetMaxBatchSize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DDynamicBatchingSystemSetMaxBatchSize_cold_1(v4);
    }
  }

  if (a2 <= 1)
  {
    a2 = 1;
  }

  free(*(a1 + 24));
  result = malloc_type_malloc(8 * a2, 0x2004093837F09uLL);
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 24) = result;
  return result;
}

BOOL C3DDynamicBatchingSystemCurrentBatchAppend(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v2 >= v3)
  {
    v6 = scn_default_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, "Warning: overflow the max batch size boundary", v8, 2u);
      return 0;
    }
  }

  else
  {
    v4 = a1[3];
    a1[4] = v2 + 1;
    *(v4 + 8 * v2) = a2;
    return v2 + 1 < v3;
  }

  return result;
}

uint64_t C3DDynamicBatchingSystemGetCurrentBatchNodes(uint64_t a1, void *a2)
{
  v3 = a1 + 24;
  result = *(a1 + 24);
  *a2 = *(v3 + 8);
  return result;
}

void SCNCAction::SCNCAction(SCNCAction *this)
{
  this->var4 = 0;
  this->var1 = 0.0;
  this->var2 = 0;
  this->var0 = &unk_282DC6F78;
  *&this->var5 = xmmword_21C2A2860;
  this->var7 = 0.0;
  this->var8 = 0.0;
  this->var9 = -1.0;
  *&this->var10 = 0;
  *&this->var12 = 0u;
  *&this->var14 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *&this->var16 = _Q0;
  this->var18 = 1.0;
}

void SCNCAction::SCNCAction(SCNCAction *this, const SCNCAction *a2)
{
  this->var0 = &unk_282DC6F78;
  this->var1 = 0.0;
  this->var2 = a2->var2;
  this->var4 = 1;
  *&this->var5 = *&a2->var5;
  *&this->var7 = *&a2->var7;
  this->var9 = -1.0;
  *&this->var10 = *&a2->var10;
  this->var12 = 0;
  this->var13 = 0;
  this->var14 = a2->var14;
  __asm { FMOV            V1.2D, #1.0 }

  *&this->var15 = xmmword_21C280270;
  *&this->var17 = _Q1;
}

void SCNCAction::~SCNCAction(SCNCAction *this)
{
  this->var0 = &unk_282DC6F78;
  var13 = this->var13;
  if (var13)
  {
    CFRelease(var13);
  }

  var12 = this->var12;
  if (var12)
  {
    _Block_release(var12);
  }

  var2 = this->var2;
  if (var2)
  {
    _Block_release(var2);
  }
}

{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

double SCNCAction::cpp_timeByApplyingTimingfunction(SCNCAction *this, double result, uint64_t a3)
{
  if (this->var14 || this->var2)
  {
    v4 = SCNCAction::cpp_ratioForTime(this, result, a3);
    var1 = this->var1;
    v6 = var1;
    if ((LODWORD(v6) & 0x60000000) == 0)
    {
      var1 = 0.000000999999997;
    }

    return this->var5 + v4 * var1;
  }

  return result;
}

double SCNCAction::cpp_ratioForTime(SCNCAction *this, double a2, uint64_t a3)
{
  var1 = this->var1;
  v4 = var1;
  if ((LODWORD(v4) & 0x60000000) == 0)
  {
    var1 = 0.000000999999997;
  }

  var14 = this->var14;
  v6 = this->var15 + this->var18 * ((a2 - this->var5) / var1);
  v7 = LODWORD(v6);
  if (var14 <= 1)
  {
    if (var14 == 1)
    {
      v8 = v6;
      if (v7 > 0x3F800000)
      {
        v8 = 1.0;
      }

      if (v7 < 0)
      {
        v8 = 0.0;
      }

      v9 = 2.0 - v8;
LABEL_17:
      v6 = v8 * (v8 * v9);
      v7 = LODWORD(v6);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (var14 != 2)
  {
    if (var14 == 3)
    {
      v8 = v6;
      if (v7 > 0x3F800000)
      {
        v8 = 1.0;
      }

      if (v7 < 0)
      {
        v8 = 0.0;
      }

      v9 = v8 * -2.0 + 3.0;
      goto LABEL_17;
    }

LABEL_18:
    v10 = v7 > 0x3F800000;
    v11 = 1.0;
    goto LABEL_19;
  }

  v11 = 1.0;
  v14 = (1.0 - v6);
  if (v7 > 0x3F800000)
  {
    v14 = 0.0;
  }

  if (v7 < 0)
  {
    v14 = 1.0;
  }

  v6 = -((2.0 - v14) * v14) * v14 + 1.0;
  v7 = LODWORD(v6);
  v10 = LODWORD(v6) > 0x3F800000;
LABEL_19:
  if (v10)
  {
    v6 = v11;
  }

  if (v7 < 0)
  {
    v6 = 0.0;
  }

  var2 = this->var2;
  if (var2)
  {
    if ((COERCE_UNSIGNED_INT(v6 + -1.0) & 0x60000000) != 0)
    {
      var2[2](var2, a3);
    }

    else
    {
      return 1.0;
    }
  }

  return v6;
}

void SCNCAction::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v6.n128_f32[0] = SCNCAction::cpp_ratioForTime(this, a3, a2);
  if ((COERCE_UNSIGNED_INT(v6.n128_f32[0] + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;

    SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

SCNCAction *SCNCAction::didFinishWithTargetAtTime(SCNCAction *this, SCNNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v5 = this;
  if (!this->var10)
  {
    this->var10 = 1;
    this = this->var12;
    if (this)
    {
      this = (this->var2)();
    }
  }

  if (v5->var4)
  {
    v6 = *(v5->var0 + 14);
    a3.n128_u64[0] = v3;

    return v6(v5, a2, a3);
  }

  return this;
}

SCNCAction *SCNCAction::cpp_wasAddedToTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v3 = this;
  this->var10 = 0;
  var7 = this->var7;
  var8 = this->var8;
  v6 = var8;
  if ((LODWORD(v6) & 0x60000000) != 0)
  {
    v7 = var8 * 0.5;
    v8 = var7 - v7;
    v9 = v7 + var7;
    this = rand();
    var7 = v8 + this / 2147483650.0 * (v9 - v8);
    if (var7 < 0.0)
    {
      var7 = 0.0;
    }
  }

  v3->var1 = var7;
  return this;
}

SCNCAction *SCNCAction::cpp_willStartWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  this->var5 = a3;
  this->var15 = 0.0;
  *&this->var10 = 256;
  return this;
}

double SCNCAction::cpp_willResumeWithTargetAtTime(SCNCAction *this, SCNNode *a2, double result)
{
  var6 = this->var6;
  if (var6 > 0.0)
  {
    result = result - var6 + this->var5;
    this->var5 = result;
    this->var6 = -1.0;
  }

  return result;
}

double SCNCAction::cpp_timeJumpWithTarget(SCNCAction *this, SCNNode *a2, double a3)
{
  result = this->var5 + a3;
  this->var5 = result;
  return result;
}

uint64_t SCNCAction::cpp_didFinishWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  this->var10 = 1;
  result = C3DIsRunningInEditor();
  if ((result & 1) == 0)
  {
    this->var11 = 0;
  }

  return result;
}

uint64_t SCNCAction::updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 7))(this, a2, a3);
  }

  else
  {
    return [this->var3 updateWithTarget:a2 forTime:a3];
  }
}

uint64_t SCNCAction::wasAddedToTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  this->var9 = -1.0;
  v6 = C3DIsRunningInEditor();
  v7.n128_u64[0] = 0;
  if (!v6)
  {
    v7.n128_f64[0] = a3;
  }

  if (this->var4)
  {
    v8 = *(this->var0 + 8);

    return v8(this, a2, v7);
  }

  else
  {
    var3 = this->var3;

    return [var3 wasAddedToTarget:a2 atTime:v7.n128_f64[0]];
  }
}

uint64_t SCNCAction::wasRemovedFromTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 9))(this, a2, a3);
  }

  else
  {
    return [this->var3 wasRemovedFromTarget:a2 atTime:a3];
  }
}

uint64_t SCNCAction::willStartWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  this->var9 = -1.0;
  if (this->var4)
  {
    return (*(this->var0 + 10))(this, a2, a3);
  }

  else
  {
    return [this->var3 willStartWithTarget:a2 atTime:a3];
  }
}

uint64_t SCNCAction::wasPausedWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 11))(this, a2, a3);
  }

  else
  {
    return [this->var3 wasPausedWithTarget:a2 atTime:a3];
  }
}

uint64_t SCNCAction::willResumeWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 12))(this, a2, a3);
  }

  else
  {
    return [this->var3 willResumeWithTarget:a2 atTime:a3];
  }
}

uint64_t SCNCAction::timeJumpWithTarget(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 13))(this, a2, a3);
  }

  else
  {
    return [this->var3 timeJumpWithTarget:a2 timeOffset:a3];
  }
}

double SCNCAction::setSpeed(SCNCAction *this, double a2)
{
  if ((C3DIsRunningInEditor() & 1) == 0)
  {
    v5 = CACurrentMediaTime();
    var5 = this->var5;
    var6 = this->var6;
    if (var6 > var5)
    {
      this->var5 = var5 + v5 - var6;
      this->var6 = v5;
    }

    this->var15 = SCNCAction::cpp_ratioForTime(this, v5, v4);
    this->var5 = v5;
  }

  result = this->var16 * a2;
  this->var17 = a2;
  this->var18 = result;
  return result;
}

double SCNCAction::setBaseSpeed(SCNCAction *this, double a2)
{
  if ((C3DIsRunningInEditor() & 1) == 0)
  {
    v5 = CACurrentMediaTime();
    var5 = this->var5;
    var6 = this->var6;
    if (var6 > var5)
    {
      this->var5 = var5 + v5 - var6;
      this->var6 = v5;
    }

    this->var15 = SCNCAction::cpp_ratioForTime(this, v5, v4);
    this->var5 = v5;
  }

  this->var16 = a2;
  result = this->var17 * a2;
  this->var18 = result;
  return result;
}

double SCNCAction::finishTime(SCNCAction *this)
{
  result = this->var9;
  if (result < 0.0)
  {
    return this->var5 + this->var1 * ((1.0 - this->var15) / this->var18);
  }

  return result;
}

void sub_21C11C478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DFXTechniqueCreateSpotShadow(uint64_t a1)
{
  Light = C3DNodeGetLight(a1);
  if (Light)
  {
    v3 = C3DLightGetUsesDeferredShadows(Light) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SceneKit-spotShadowDepth-%p", a1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __C3DFXTechniqueCreateSpotShadow_block_invoke;
  v11[3] = &unk_278300170;
  v11[4] = v4;
  if (v3)
  {
    v5 = @"C3DFXForwardShadowPass.json";
  }

  else
  {
    v5 = @"C3DFXDeferredShadowPass.json";
  }

  v6 = C3DJsonNamed(v5, v11);
  v7 = C3DFXTechniqueCreateWithDescription(v6, a1);
  PassNamed = C3DFXTechniqueGetPassNamed(v7, @"SceneKit_renderSceneFromLight");
  C3DFXPassSetInitializeCallback(PassNamed, _initializeRenderFromLightPass);
  C3DFXPassSetUserInfo(PassNamed, a1);
  if ((v3 & 1) == 0)
  {
    v9 = C3DFXTechniqueGetPassNamed(v7, @"SceneKit_applyDeferredShadows");
    C3DFXPassSetInitializeCallback(v9, _initializeDeferredShadows);
    C3DFXPassSetWillExecuteCallback(v9, _willExecuteDeferredShadows);
    C3DFXPassSetSetupCallback(v9, _setupDeferredShadows);
    C3DFXPassSetUserInfo(v9, a1);
  }

  return v7;
}

void _initializeRenderFromLightPass(uint64_t *a1)
{
  v14[0] = 0;
  v14[1] = 0;
  v2 = C3DMaterialCreate();
  C3DEntitySetName(v2, @"--ShadowMaterial--");
  CommonProfile = C3DMaterialGetCommonProfile(v2);
  C3DEffectCommonProfileSetLightingModel(CommonProfile, 4);
  C3DFXPassSetMaterial(*a1, v2);
  C3DColor4Make(v14, 1.0, 1.0, 1.0, 1.0);
  C3DEffectCommonProfileSetColor(CommonProfile, 2, v14);
  CFRelease(v2);
  HashCode = C3DProgramHashCodeGetHashCode(*a1);
  Light = C3DNodeGetLight(HashCode);
  if (Light)
  {
    v6 = Light;
    FramebufferDescription = C3DFXPassGetFramebufferDescription(*a1);
    *FramebufferDescription = C3DLightGetRealShadowMapSize(v6);
    C3DFramebufferDescriptionSetViewportDependant(FramebufferDescription, 0);
    if (C3DLightGetShadowCascadeCount(v6) < 2 || !C3DLightSupportsShadowCascades(v6))
    {
      __asm { FMOV            V0.2S, #1.0 }

      *&_Q0.n128_i8[8] = vadd_f32(*FramebufferDescription, 0xC0000000C0000000);
      C3DFXPassSetViewport(*a1, _Q0);
    }
  }

  else
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _initializeRenderFromLightPass_cold_1();
    }
  }
}

void _initializeDeferredShadows(uint64_t *a1, int a2)
{
  v4 = *a1;
  HashCode = C3DProgramHashCodeGetHashCode(*a1);
  Light = C3DNodeGetLight(HashCode);
  if (Light)
  {
    v7 = Light;
    if (a2 == 1)
    {
      BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-spotShadow");
      Shader = C3DFXGLSLProgramGetShader(BuiltInProgramWithName, 1);
      Source = C3DFXShaderGetSource(Shader);
      Mutable = CFStringCreateMutable(0, 0);
      EffectiveShadowSampleCount = C3DLightGetEffectiveShadowSampleCount(v7);
      CFStringAppend(Mutable, @"precision highp float;\n");
      CFStringAppend(Mutable, @"#define TARGET_OS_IPHONE 1\n");
      CFStringAppendFormat(Mutable, 0, @"#define MAX_SAMPLE %d\n", EffectiveShadowSampleCount);
      v13 = _createShadowProgramWithLight_k++;
      CFStringAppendFormat(Mutable, 0, @"#define unshareIndex %d\n", v13);
      if (C3DLightGetType(v7) == 3)
      {
        CFStringAppend(Mutable, @"#define SPOT_SHADOW 1\n");
      }

      CFStringAppend(Mutable, @"#define USE_PCF 1\n");
      CFStringAppend(Mutable, Source);
      C3DFXShaderSetSource(Shader, Mutable);
      CFRelease(Mutable);
      C3DFXPassSetProgram(v4, BuiltInProgramWithName);
      CFRelease(BuiltInProgramWithName);
      InputWithName = C3DFXPassGetInputWithName(v4, @"lightDepthSampler");
      if (InputWithName)
      {
        v15 = InputWithName;
        v16 = C3DTextureSamplerDepthCompare();

        C3DFXPassInputSetSampler(v15, v16);
      }
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CD6D70]);
      if (C3DLightSupportsShadowCascades(v7))
      {
        ShadowCascadeCount = C3DLightGetShadowCascadeCount(v7);
      }

      else
      {
        ShadowCascadeCount = 1;
      }

      v27 = ShadowCascadeCount;
      [v18 setConstantValue:&v27 type:29 withName:@"cascadeCount"];
      v26 = C3DLightGetEffectiveShadowSampleCount(v7);
      [v18 setConstantValue:&v26 type:29 withName:@"sampleCount"];
      v25 = 0;
      [v18 setConstantValue:&v25 type:53 withName:@"cascadeBlending"];
      v24 = C3DLightGetShadowCascadeDebugFactor(v7) > 0.0;
      [v18 setConstantValue:&v24 type:53 withName:@"debugCascades"];
      v23 = C3DLightGetType(v7) == 3;
      [v18 setConstantValue:&v23 type:53 withName:@"isSpotLight"];
      v22 = (C3DEngineContextGetCoordinatesSystemOptions(a1[3]) & 8) != 0;
      [v18 setConstantValue:&v22 type:53 withName:@"reverseZ"];
      if (v27 <= 1)
      {
        v20 = @"deferredShadow_frag";
      }

      else
      {
        v20 = @"deferredShadowCascades_frag";
      }

      v21 = C3DFXMetalProgramCreateFromLibraryWithConstants(@"deferredShadow_vert", v20, 0, v18, 0, 0);

      C3DFXProgramSetClientProgram(v21, *(v4 + 80));
      C3DFXPassSetProgram(v4, v21);
      if (v21)
      {
        CFRelease(v21);
      }
    }
  }

  else
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _initializeDeferredShadows_cold_1();
    }
  }
}

void _willExecuteDeferredShadows(uint64_t *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  FXContext = C3DEngineContextGetFXContext(a1[3]);
  v3 = a1[7];
  Light = C3DNodeGetLight(v3);
  if (Light)
  {
    v5 = Light;
    Scene = C3DEngineContextGetScene(a1[3]);
    LightingSystem = C3DSceneGetLightingSystem(Scene);
    MainPassInstance = C3DFXContextGetMainPassInstance(FXContext);
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a1[3]);
    C3DLightingSystemComputeShadowMatrices(LightingSystem, v3, v31, 0, v30, v29, v28, CoordinatesSystemOptions);
    v10 = (MainPassInstance + (*(FXContext + 120) << 6));
    v18 = v10[198];
    v19 = v32;
    v16 = v10[199];
    v17 = v10[200];
    v27 = vaddq_f32(v10[201], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v16, *v33.f32, 1), v18, v33.f32[0]), v17, v33, 2));
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-u_lightPos-symbol", &v27);
    v26 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v16, *v19.f32, 1), v18, v19.f32[0]), v17, v19, 2);
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-u_lightDir-symbol", &v26);
    C3DLightComputeSpotAttenuations(v5);
    v25 = v11;
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-u_lightSpotAtt-symbol", &v25);
    C3DFXTechniqueSetValueForSymbolWithCount(a1[1], @"C3D-light_MVP-symbol", v30, 4);
    C3DFXTechniqueSetValueForSymbolWithCount(a1[1], @"C3D-cascadeScale-symbol", v29, 4);
    C3DFXTechniqueSetValueForSymbolWithCount(a1[1], @"C3D-cascadeBias-symbol", v28, 4);
    ShadowCascadeDebugFactor = C3DLightGetShadowCascadeDebugFactor(v5);
    if (ShadowCascadeDebugFactor > 0.0)
    {
      C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-shadowCascadeDebugFactor-symbol", &ShadowCascadeDebugFactor);
    }

    memset(&v23, 0, sizeof(v23));
    C3DMatrix4x4Invert((MainPassInstance + (*(FXContext + 120) << 6) + 3552), &v23);
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-camera_MVP_i-symbol", &v23);
    RealShadowMapSize = C3DLightGetRealShadowMapSize(v5);
    ShadowRadius = C3DLightGetShadowRadius(v5);
    v13 = RealShadowMapSize.i32[1];
    if (*RealShadowMapSize.i32 >= *&RealShadowMapSize.i32[1])
    {
      v13 = RealShadowMapSize.i32[0];
    }

    v22 = ShadowRadius / fmaxf(*&v13, 1.0);
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-shadowRadius-symbol", &v22);
    v21[0] = C3DLightGetShadowColor(v5);
    v21[1] = v14;
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-shadowColor-symbol", v21);
  }

  else
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _willExecuteDeferredShadows_cold_1();
    }
  }
}

void _setupDeferredShadows(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  Light = C3DNodeGetLight(a1[7]);
  if (Light)
  {
    v3 = Light;
    EffectiveShadowSampleCount = C3DLightGetEffectiveShadowSampleCount(Light);
    if (EffectiveShadowSampleCount >= 2)
    {
      v5 = EffectiveShadowSampleCount;
      C3DLightComputeShadowKernel(v3, v7, EffectiveShadowSampleCount, a1[3]);
      C3DFXTechniqueSetValueForSymbolWithCount(a1[1], @"C3D-shadowKernel-symbol", v7, v5);
    }
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _setupDeferredShadows_cold_1();
    }
  }
}

void sub_21C11E034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  USDKitConverter::~USDKitConverter(va);
  _Unwind_Resume(a1);
}

uint64_t USDKitConverter::makeUSKScene(USDKitConverter *this, NSURL *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *(this + 7) = [USKScene_weak newSceneWithURL:a2];
  [*(this + 7) setDictionaryMetadataWithKey:@"customLayerData" dictionaryKey:@"creator" value:{+[USKData_helper dataWithString:](USKData_helper, "dataWithString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"SceneKit export preview %.02f", 0x3FE51EB860000000))}];
  v3 = [USKObjectPath_helper objectPathWithString:*(this + 3)];
  v4 = [USKHelper scene:*(this + 7) nodeAtPath:v3 type:USKNodeTypeTransform_weak];
  [v4 setDictionaryMetadataWithKey:@"assetInfo" dictionaryKey:@"name" value:{+[USKData_helper dataWithString:](USKData_helper, "dataWithString:", *(this + 1))}];
  [v4 setMetadataWithKey:@"kind" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"component"}];
  [*(this + 7) setMetadataWithKey:@"defaultPrim" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", *(this + 1)))}];
  v5 = [*this attributeForKey:@"kSceneUpAxisAttributeKey"];
  if (!v5)
  {
    goto LABEL_6;
  }

  [v5 SCNVector3Value];
  if (v7 == 1.0)
  {
    v8 = @"X";
    goto LABEL_7;
  }

  if (v6 == 1.0)
  {
    v8 = @"Z";
  }

  else
  {
LABEL_6:
    v8 = @"Y";
  }

LABEL_7:
  [*(this + 7) setMetadataWithKey:@"upAxis" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v8))}];
  [*(this + 7) setMetadataWithKey:@"metersPerUnit" value:{+[USKData_helper dataWithDouble:](USKData_helper, "dataWithDouble:", C3DSceneGetUnit(objc_msgSend(*this, "sceneRef")))}];
  USDKitConverter::prepareSkinning(this);
  USDKitConverter::prepareBlendShapes(this);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [objc_msgSend(*this "rootNode")];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        USDKitConverter::prepareAnimations(this, *(*(&v34 + 1) + 8 * i));
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  USDKitConverter::calculateTimeCodes(this);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [objc_msgSend(*this "rootNode")];
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * j);
        GeomPath = USDKitConverter::getGeomPath(this);
        USDKitConverter::processSCNNode(this, v19, GeomPath, 0, 0);
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v16);
  }

  USDKitConverter::processBlendShapeAnimations(this);
  ShapeBlending::updateAnimationsWithBlendShapeList(this + 55);
  USDKitConverter::processSkinnedMeshes(this);
  if (*(this + 59) > 0.0)
  {
    [objc_msgSend(*this attributeForKey:{@"kSceneStartTimeAttributeKey", "floatValue"}];
    v22 = v21 / *(this + 63) + 0.0;
    v23 = v22;
    if (vabdd_f64(v22, v23) >= 0.001)
    {
      if (1.0 - (v22 - v23) < 0.001)
      {
        v22 = v23 + 1.0;
      }
    }

    else
    {
      v22 = v22;
    }

    [objc_msgSend(*this attributeForKey:{@"kSceneEndTimeAttributeKey", "floatValue"}];
    v25 = v24 / *(this + 63) + 0.0;
    v26 = v25;
    if (vabdd_f64(v25, v26) >= 0.001)
    {
      if (1.0 - (v25 - v26) < 0.001)
      {
        v25 = v26 + 1.0;
      }
    }

    else
    {
      v25 = v25;
    }

    v27 = *(this + 58);
    if (v27 == -1.0 || v27 > v22)
    {
      *(this + 58) = v22;
      v27 = v22;
    }

    v28 = *(this + 59);
    if (v28 == -1.0 || v28 < v25)
    {
      *(this + 59) = v25;
    }

    [*(this + 7) setMetadataWithKey:@"startTimeCode" value:{+[USKData_helper dataWithDouble:](USKData_helper, "dataWithDouble:", v27)}];
    [*(this + 7) setMetadataWithKey:@"endTimeCode" value:{+[USKData_helper dataWithDouble:](USKData_helper, "dataWithDouble:", *(this + 59))}];
  }

  if (*(this + 120) >= 1)
  {
    [*(this + 7) setMetadataWithKey:@"timeCodesPerSecond" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:")}];
  }

  return *(this + 7);
}

void ___ZL21SCNLoadUsdKitIfNeededv_block_invoke()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/USDKit.framework/USDKit", 2);
  if (v0 || (v0 = dlopen("../SharedFrameworks/USDKit.framework/USDKit", 2)) != 0)
  {
    v1 = v0;
    USKObjectPath_weak = NSClassFromString(&cfstr_Uskobjectpath.isa);
    USKToken_weak = NSClassFromString(&cfstr_Usktoken.isa);
    USKData_weak = NSClassFromString(&cfstr_Uskdata.isa);
    USKScene_weak = NSClassFromString(&cfstr_Uskscene.isa);
    v2 = dlsym(v1, "USKDataTypeResourcePath");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    USKDataTypeResourcePath_weak = v3;
    v4 = dlsym(v1, "USKDataTypeInt");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    USKDataTypeInt_weak = v5;
    v6 = dlsym(v1, "USKDataTypeBool");
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    USKDataTypeBool_weak = v7;
    v8 = dlsym(v1, "USKDataTypeDouble3");
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    USKDataTypeDouble3_weak = v9;
    v10 = dlsym(v1, "USKDataTypeDouble4x4");
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    USKDataTypeDouble4x4_weak = v11;
    v12 = dlsym(v1, "USKDataTypeDouble4x4Array");
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    USKDataTypeDouble4x4Array_weak = v13;
    v14 = dlsym(v1, "USKDataTypeFloat");
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    USKDataTypeFloat_weak = v15;
    v16 = dlsym(v1, "USKDataTypeFloat2");
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    USKDataTypeFloat2_weak = v17;
    v18 = dlsym(v1, "USKDataTypeFloat3");
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    USKDataTypeFloat3_weak = v19;
    v20 = dlsym(v1, "USKDataTypeFloat4");
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    USKDataTypeFloat4_weak = v21;
    v22 = dlsym(v1, "USKDataTypeFloat2Array");
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    USKDataTypeFloat2Array_weak = v23;
    v24 = dlsym(v1, "USKDataTypeFloat3Array");
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    USKDataTypeFloat3Array_weak = v25;
    v26 = dlsym(v1, "USKDataTypeFloatArray");
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = 0;
    }

    USKDataTypeFloatArray_weak = v27;
    v28 = dlsym(v1, "USKDataTypeIntArray");
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    USKDataTypeIntArray_weak = v29;
    v30 = dlsym(v1, "USKDataTypeObjectPath");
    if (v30)
    {
      v31 = *v30;
    }

    else
    {
      v31 = 0;
    }

    USKDataTypeObjectPath_weak = v31;
    v32 = dlsym(v1, "USKDataTypeObjectPathArray");
    if (v32)
    {
      v33 = *v32;
    }

    else
    {
      v33 = 0;
    }

    USKDataTypeObjectPathArray_weak = v33;
    v34 = dlsym(v1, "USKDataTypeQuatf");
    if (v34)
    {
      v35 = *v34;
    }

    else
    {
      v35 = 0;
    }

    USKDataTypeQuatf_weak = v35;
    v36 = dlsym(v1, "USKDataTypeQuatfArray");
    if (v36)
    {
      v37 = *v36;
    }

    else
    {
      v37 = 0;
    }

    USKDataTypeQuatfArray_weak = v37;
    v38 = dlsym(v1, "USKDataTypeStringArray");
    if (v38)
    {
      v39 = *v38;
    }

    else
    {
      v39 = 0;
    }

    USKDataTypeStringArray_weak = v39;
    v40 = dlsym(v1, "USKDataTypeToken");
    if (v40)
    {
      v41 = *v40;
    }

    else
    {
      v41 = 0;
    }

    USKDataTypeToken_weak = v41;
    v42 = dlsym(v1, "USKDataTypeTokenArray");
    if (v42)
    {
      v43 = *v42;
    }

    else
    {
      v43 = 0;
    }

    USKDataTypeTokenArray_weak = v43;
    v44 = dlsym(v1, "USKNodeTypeCamera");
    if (v44)
    {
      v45 = *v44;
    }

    else
    {
      v45 = 0;
    }

    USKNodeTypeCamera_weak = v45;
    v46 = dlsym(v1, "USKNodeTypeMaterial");
    if (v46)
    {
      v47 = *v46;
    }

    else
    {
      v47 = 0;
    }

    USKNodeTypeMaterial_weak = v47;
    v48 = dlsym(v1, "USKNodeTypeMesh");
    if (v48)
    {
      v49 = *v48;
    }

    else
    {
      v49 = 0;
    }

    USKNodeTypeMesh_weak = v49;
    v50 = dlsym(v1, "USKNodeTypeMeshGroup");
    if (v50)
    {
      v51 = *v50;
    }

    else
    {
      v51 = 0;
    }

    USKNodeTypeMeshGroup_weak = v51;
    v52 = dlsym(v1, "USKNodeTypeScope");
    if (v52)
    {
      v53 = *v52;
    }

    else
    {
      v53 = 0;
    }

    USKNodeTypeScope_weak = v53;
    v54 = dlsym(v1, "USKNodeTypeShader");
    if (v54)
    {
      v55 = *v54;
    }

    else
    {
      v55 = 0;
    }

    USKNodeTypeShader_weak = v55;
    v56 = dlsym(v1, "USKNodeTypeSkeletalAnimation");
    if (v56)
    {
      v57 = *v56;
    }

    else
    {
      v57 = 0;
    }

    USKNodeTypeSkeletalAnimation_weak = v57;
    v58 = dlsym(v1, "USKNodeTypeSkeleton");
    if (v58)
    {
      v59 = *v58;
    }

    else
    {
      v59 = 0;
    }

    USKNodeTypeSkeleton_weak = v59;
    v60 = dlsym(v1, "USKNodeTypeSkeletonRoot");
    if (v60)
    {
      v61 = *v60;
    }

    else
    {
      v61 = 0;
    }

    USKNodeTypeSkeletonRoot_weak = v61;
    v62 = dlsym(v1, "USKNodeTypeBlendShape");
    if (v62)
    {
      v63 = *v62;
    }

    else
    {
      v63 = 0;
    }

    USKNodeTypeBlendShape_weak = v63;
    v64 = dlsym(v1, "USKNodeTypeTransform");
    if (v64)
    {
      v65 = *v64;
    }

    else
    {
      v65 = 0;
    }

    USKNodeTypeTransform_weak = v65;
    v66 = dlsym(v1, "USKRoleTypeColor");
    if (v66)
    {
      v67 = *v66;
    }

    else
    {
      v67 = 0;
    }

    USKRoleTypeColor_weak = v67;
    v68 = dlsym(v1, "USKRoleTypeNone");
    if (v68)
    {
      v69 = *v68;
    }

    else
    {
      v69 = 0;
    }

    USKRoleTypeNone_weak = v69;
    v70 = dlsym(v1, "USKRoleTypeNormal");
    if (v70)
    {
      v71 = *v70;
    }

    else
    {
      v71 = 0;
    }

    USKRoleTypeNormal_weak = v71;
    v72 = dlsym(v1, "USKRoleTypePoint");
    if (v72)
    {
      v73 = *v72;
    }

    else
    {
      v73 = 0;
    }

    USKRoleTypePoint_weak = v73;
    v74 = dlsym(v1, "USKRoleTypeVector");
    if (v74)
    {
      v75 = *v74;
    }

    else
    {
      v75 = 0;
    }

    USKRoleTypeVector_weak = v75;
    v76 = dlsym(v1, "USKRoleTypeTextureCoordinate");
    if (v76)
    {
      v77 = *v76;
    }

    else
    {
      v77 = 0;
    }

    USKRoleTypeTextureCoordinate_weak = v77;
    v78 = dlsym(v1, "USKSchemaTypeBindingAPI");
    if (v78)
    {
      v79 = *v78;
    }

    else
    {
      v79 = 0;
    }

    USKSchemaTypeBindingAPI_weak = v79;
    SCNLoadUsdKitIfNeeded(void)::loaded = 1;
  }

  else
  {
    v80 = scn_default_log();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      ___ZL21SCNLoadUsdKitIfNeededv_block_invoke_cold_1(v80);
    }
  }
}

void USDKitConverter::USDKitConverter(USDKitConverter *this, SCNScene *a2, NSString *a3, NSURL *a4, NSString *a5)
{
  *this = a2;
  *(this + 2) = a5;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 11) = [MEMORY[0x277CBEB58] setWithCapacity:{8, a4}];
  *(this + 13) = 0;
  *(this + 12) = this + 104;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 15) = this + 128;
  *(this + 19) = 0;
  *(this + 18) = this + 152;
  *(this + 17) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 21) = this + 176;
  *(this + 23) = 0;
  *(this + 25) = 0;
  *(this + 24) = this + 200;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 28) = 0;
  *(this + 31) = this + 256;
  *(this + 27) = this + 224;
  *(this + 30) = 0;
  *(this + 32) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 33) = 0;
  *(this + 34) = this + 280;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 39) = 0;
  *(this + 40) = this + 328;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 344) = 0u;
  *(this + 53) = 0;
  *(this + 52) = this + 424;
  *(this + 49) = this + 400;
  *(this + 54) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 468) = 0u;
  *(this + 61) = 0x7FEFFFFFFFFFFFFFLL;
  *(this + 31) = xmmword_21C2A2880;
  *(this + 1) = v8;
  *(this + 3) = [@"/" stringByAppendingString:{v8, this + 328, this + 280, this + 256, this + 216, this + 192, this + 168, this + 144, this + 120, this + 128, this + 96, this + 104}];
  [-[SCNScene attributeForKey:](a2 attributeForKey:{@"kSceneFrameRateAttributeKey", "floatValue"}];
  if (v9 > 1.0)
  {
    v10 = 1.0 / v9;
    if (v10 > 0.001)
    {
      v11 = *(this + 63);
      if (v11 == 0.0 || v11 > v10)
      {
        *(this + 63) = v10;
      }
    }
  }
}

void *anonymous namespace::correctPath(_anonymous_namespace_ *this, NSString *a2)
{
  v4 = 0;
  v2 = [objc_msgSend(MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[^A-Za-z0-9]" options:1 error:{&v4), "stringByReplacingMatchesInString:options:range:withTemplate:", this, 0, 0, -[_anonymous_namespace_ length](this, "length"), @"_"}];
  if ([objc_msgSend(MEMORY[0x277CCA900] "decimalDigitCharacterSet")])
  {
    return [@"_" stringByAppendingString:v2];
  }

  return v2;
}

void ShapeBlending::~ShapeBlending(ShapeBlending *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x21CF07610](*v2, 0x1080C406BDE4C18);
      }

      ++v2;
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

void Skinning::~Skinning(uint64_t **this)
{
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        std::__tree<char>::destroy(v4 + 64, *(v4 + 72));
        std::__tree<char>::destroy(v4 + 32, *(v4 + 40));
        v5 = *(v4 + 8);
        if (v5)
        {
          *(v4 + 16) = v5;
          operator delete(v5);
        }

        MEMORY[0x21CF07610](v4, 0x10A0C402AA64608);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v6 = this[3];
  for (i = this[4]; v6 != i; ++v6)
  {
    v8 = *v6;
    if (*v6)
    {
      std::__tree<char>::destroy(v8 + 72, *(v8 + 80));
      std::__tree<char>::destroy(v8 + 48, *(v8 + 56));
      std::__tree<char>::destroy(v8 + 24, *(v8 + 32));
      v9 = *v8;
      if (*v8)
      {
        *(v8 + 8) = v9;
        operator delete(v9);
      }

      MEMORY[0x21CF07610](v8, 0x10A0C400C584343);
    }
  }

  std::__tree<char>::destroy((this + 6), this[7]);
  v10 = this[3];
  if (v10)
  {
    this[4] = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    this[1] = v11;
    operator delete(v11);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void USDKitConverter::prepareSkinning(id *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [objc_msgSend(*this "rootNode")];
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        USDKitConverter::prepareSkinning(this, *(*(&v28 + 1) + 8 * i));
      }

      v4 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  Skinning::createSkeletonsFromSkins((this + 43));
  v8 = this[46];
  v9 = this[47];
  if (v8 != v9)
  {
    do
    {
      v10 = *v8;
      v11 = **v8;
      v12 = (*v8)[1];
      if (v11 == v12)
      {
LABEL_13:
        if (v11 != v12)
        {
          v13 = *v11;
          do
          {
            NodeWithAnimation = *v11;
            if (v13 != NodeWithAnimation)
            {
              std::__tree<SCNNode *>::__emplace_unique_key_args<SCNNode *,SCNNode * const&>((this + 31), &NodeWithAnimation);
            }

            ++v11;
          }

          while (v11 != v12);
        }
      }

      else
      {
        {
          if (++v11 == v12)
          {
            v11 = *v10;
            v12 = v10[1];
            goto LABEL_13;
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = this[46];
    v9 = this[47];
  }

  if (v8 != v9)
  {
    v14 = (this + 35);
    do
    {
      v15 = this[34];
      if (v15 != v14)
      {
        v16 = *v8;
        do
        {
          if (*(*(v15 + 5) + 56) == v16)
          {
            v20 = **v16;
            if (v20)
            {
              v21 = *(v15 + 4);
              v22 = [(_anonymous_namespace_ *)v20 parentNode];
              if (v22)
              {
                v23 = v22;
                do
                {
                  if (v21)
                  {
                    v24 = v21;
                    while (1)
                    {
                      v24 = [(_anonymous_namespace_ *)v24 parentNode];
                      if (!v24)
                      {
                        break;
                      }

                      if (v23 == v24)
                      {
                        v25 = [*this rootNode];
                        {
                          v16[12] = v23;
                        }

                        goto LABEL_25;
                      }
                    }
                  }

                  v23 = [(_anonymous_namespace_ *)v23 parentNode];
                }

                while (v23);
              }
            }
          }

LABEL_25:
          v17 = *(v15 + 1);
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = *(v15 + 2);
              v19 = *v18 == v15;
              v15 = v18;
            }

            while (!v19);
          }

          v15 = v18;
        }

        while (v18 != v14);
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = this[46];
    v9 = this[47];
  }

  while (v8 != v9)
  {
    NodeWithAnimation = Skeleton::findNodeWithAnimation(*v8);
    if (NodeWithAnimation)
    {
      std::__tree<SCNNode *>::__emplace_unique_key_args<SCNNode *,SCNNode * const&>((this + 12), &NodeWithAnimation);
    }

    ++v8;
  }
}

uint64_t USDKitConverter::prepareBlendShapes(id *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [objc_msgSend(*this rootNode];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        USDKitConverter::prepareBlendShape(this, *(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t USDKitConverter::prepareAnimations(USDKitConverter *this, SCNNode *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SCNNode *)a2 animationKeys])
  {
    if ([(NSArray *)[(SCNNode *)a2 animationKeys] count])
    {
      v4 = [(NSArray *)[(SCNNode *)a2 animationKeys] count];
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        while (1)
        {
          v7 = [(SCNNode *)a2 animationPlayerForKey:[(NSArray *)[(SCNNode *)a2 animationKeys] objectAtIndexedSubscript:v6]];
          if (v7)
          {
            break;
          }

          if (v5 == ++v6)
          {
            goto LABEL_9;
          }
        }

        USDKitConverter::prepareCAAnimation(this, [objc_msgSend(v7 "animation")]);
      }
    }
  }

LABEL_9:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(SCNNode *)a2 childNodes];
  result = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        USDKitConverter::prepareAnimations(this, *(*(&v13 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      result = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

uint64_t USDKitConverter::calculateTimeCodes(uint64_t this)
{
  v1 = *(this + 504);
  if (v1 == 0.0)
  {
    *(this + 504) = 0x3FA5555555555555;
    v1 = 0.0416666667;
  }

  v2 = *(this + 496);
  if (v2 >= 0.0)
  {
    v3 = 1.0 / v1 + 0.0;
    v4 = v3;
    if (vabdd_f64(v3, v4) >= 0.001)
    {
      if (1.0 - (v3 - v4) < 0.001)
      {
        v3 = v4 + 1.0;
      }
    }

    else
    {
      v3 = v3;
    }

    *(this + 480) = (v3 + 0.5);
    v5 = *(this + 488) / v1 + 0.0;
    v6 = v5;
    if (vabdd_f64(v5, v6) >= 0.001)
    {
      if (1.0 - (v5 - v6) < 0.001)
      {
        v5 = v6 + 1.0;
      }
    }

    else
    {
      v5 = v5;
    }

    *(this + 464) = v5;
    v7 = v2 / v1 + 0.0;
    v8 = v7;
    if (vabdd_f64(v7, v8) >= 0.001)
    {
      if (1.0 - (v7 - v8) < 0.001)
      {
        v7 = v8 + 1.0;
      }
    }

    else
    {
      v7 = v7;
    }

    *(this + 472) = v7;
  }

  return this;
}

uint64_t *USDKitConverter::processSCNNode(uint64_t *this, SCNNode *a2, NSString *a3, SCNNode *a4, BOOL a5)
{
  v8 = a2;
  v9 = this;
  v56 = *MEMORY[0x277D85DE8];
  v54[0] = a2;
  v10 = this[32];
  if (v10)
  {
    v11 = this + 32;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != this + 32 && v11[4] <= a2)
    {
      return this;
    }
  }

  SkeletonByJoint = Skinning::findSkeletonByJoint((this + 43), a2);
  if (SkeletonByJoint && SkeletonByJoint[16])
  {
    a3 = SkeletonByJoint[16];
  }

  NodeName = USDKitConverter::makeNodeName(v9, a3, v8);
  v17 = [(NSString *)a3 stringByAppendingPathComponent:NodeName];
  for (i = v9[46]; i != v9[47]; ++i)
  {
    v19 = *i;
    if (***i == v8)
    {
      goto LABEL_17;
    }
  }

  v19 = 0;
LABEL_17:
  v20 = (a4 | [(SCNNode *)v8 skinner]) == 0;
  for (j = v9[46]; j != v9[47]; j += 8)
  {
    if (*(*j + 96) == v8)
    {
      UskSkeleton = [USKHelper scene:v9[7] nodeAtPath:[USKObjectPath_helper objectPathWithString:v17] type:USKNodeTypeSkeletonRoot_weak];
      v23 = 0;
      a5 = 1;
      if (!UskSkeleton)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }
  }

  if (v19)
  {
    UskSkeleton = Skeleton::makeUskSkeleton(v19, v9[7], v17);
    v23 = 1;
    a4 = v19;
    if (!UskSkeleton)
    {
      goto LABEL_59;
    }

    goto LABEL_44;
  }

  if ([(SCNNode *)v8 geometry])
  {
    if (!v20)
    {
      v26 = v9[38];
      v25 = v9[39];
      if (v26 >= v25)
      {
        v28 = v9[37];
        v29 = (v26 - v28) >> 4;
        v30 = v29 + 1;
        if ((v29 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v31 = v25 - v28;
        if (v31 >> 3 > v30)
        {
          v30 = v31 >> 3;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<SCNNode *,Skeleton *>>>((v9 + 37), v32);
        }

        v45 = (16 * v29);
        *v45 = v8;
        v45[1] = a4;
        v27 = 16 * v29 + 16;
        v46 = v9[37];
        v47 = v9[38] - v46;
        v48 = 16 * v29 - v47;
        memcpy(v45 - v47, v46, v47);
        v49 = v9[37];
        v9[37] = v48;
        v9[38] = v27;
        v9[39] = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v26 = v8;
        v26[1] = a4;
        v27 = (v26 + 2);
      }

      v9[38] = v27;
      if (!a5)
      {
        a5 = 0;
        goto LABEL_59;
      }

      UskSkeleton = USDKitConverter::processMesh(v9, v8, v17, NodeName);
      v54[2] = v54;
      v23 = 0;
      std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>((v9 + 40), v54)[5] = UskSkeleton;
      a5 = 1;
      v8 = v54[0];
      if (!UskSkeleton)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }

    UskSkeleton = USDKitConverter::processMesh(v9, v8, v17, NodeName);
    a4 = 0;
  }

  else
  {
    if ([(SCNNode *)v8 camera])
    {
      v24 = USDKitConverter::processCamera(v9, v8, v17, [(SCNNode *)v8 camera]);
    }

    else
    {
      v24 = [USKHelper scene:v9[7] nodeAtPath:[USKObjectPath_helper objectPathWithString:v17] type:USKNodeTypeTransform_weak];
    }

    UskSkeleton = v24;
  }

  v23 = 0;
  if (!UskSkeleton)
  {
    goto LABEL_59;
  }

LABEL_44:
  if (-[SCNNode isHidden](v8, "isHidden") || ([v54[0] opacity], v33 == 0.0))
  {
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:UskSkeleton propertyWithName:@"visibility" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"invisible"}];
  }

  v34 = [v54[0] animationKeys];
  v35 = v54[0];
  if (v34)
  {
    v36 = [objc_msgSend(v54[0] "animationKeys")];
    v35 = v54[0];
    if (v36)
    {
      v37 = v9[13];
      if (!v37)
      {
        goto LABEL_57;
      }

      v38 = v9 + 13;
      do
      {
        v39 = *(v37 + 32);
        v13 = v39 >= v54[0];
        v40 = v39 < v54[0];
        if (v13)
        {
          v38 = v37;
        }

        v37 = *(v37 + 8 * v40);
      }

      while (v37);
      if (v38 == v9 + 13 || v54[0] < v38[4])
      {
LABEL_57:
        USDKitConverter::processAnimations(v9, UskSkeleton, v54[0]);
        v35 = v54[0];
      }
    }
  }

  USDKitConverter::processTransforms(v9, UskSkeleton, v35, v23);
  v8 = v54[0];
LABEL_59:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = [(SCNNode *)v8 childNodes];
  this = [(NSArray *)v41 countByEnumeratingWithState:&v50 objects:v55 count:16];
  v42 = this;
  if (this)
  {
    v43 = *v51;
    do
    {
      v44 = 0;
      do
      {
        if (*v51 != v43)
        {
          objc_enumerationMutation(v41);
        }

        USDKitConverter::processSCNNode(v9, *(*(&v50 + 1) + 8 * v44++), v17, a4, a5);
      }

      while (v42 != v44);
      this = [(NSArray *)v41 countByEnumeratingWithState:&v50 objects:v55 count:16];
      v42 = this;
    }

    while (this);
  }

  return this;
}

uint64_t USDKitConverter::getGeomPath(USDKitConverter *this)
{
  result = *(this + 4);
  if (!result)
  {
    v3 = [*(this + 3) stringByAppendingPathComponent:@"Geom"];
    *(this + 4) = v3;
    v4 = [USKObjectPath_helper objectPathWithString:v3];
    [USKHelper scene:*(this + 7) nodeAtPath:v4 type:USKNodeTypeScope_weak];
    return *(this + 4);
  }

  return result;
}

uint64_t USDKitConverter::processBlendShapeAnimations(id *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [objc_msgSend(*this rootNode];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        USDKitConverter::processBlendShapeAnimations(this, *(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t *ShapeBlending::updateAnimationsWithBlendShapeList(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    do
    {
      v3 = *(*v1 + 16);
      if (v3)
      {
        this = [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v3 propertyWithName:@"blendShapes" type:USKDataTypeTokenArray_weak role:{USKRoleTypeNone_weak), "setTokenArray:", *(*v1 + 24)}];
      }

      v1 += 8;
    }

    while (v1 != v2);
  }

  return this;
}

void USDKitConverter::processSkinnedMeshes(USDKitConverter *this)
{
  v2 = *(this + 37);
  v3 = *(this + 38);
  if (v2 != v3)
  {
    v4 = (this + 280);
    v5 = this + 328;
    do
    {
      v6 = *v2;
      v7 = *(v2 + 8);
      v26 = *v2;
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v18 = *v4;
        if (!*v4)
        {
          goto LABEL_29;
        }

        v19 = (this + 280);
        do
        {
          v20 = *(v18 + 4);
          v15 = v20 >= v6;
          v21 = v20 < v6;
          if (v15)
          {
            v19 = v18;
          }

          v18 = *&v18[8 * v21];
        }

        while (v18);
        if (v19 == v4)
        {
          goto LABEL_29;
        }

        if (v6 < v19[4])
        {
          goto LABEL_29;
        }

        v27 = &v26;
        v8 = std::__tree<std::__value_type<SCNNode *,Skin *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,Skin *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,Skin *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 272, &v26)[5];
        v7 = *(v8 + 56);
        if (!v7)
        {
          goto LABEL_29;
        }
      }

      GeomPath = v7[16];
      if (!GeomPath)
      {
        GeomPath = USDKitConverter::getGeomPath(this);
      }

      NodeName = USDKitConverter::makeNodeName(this, GeomPath, v26);
      v11 = [(NSString *)GeomPath stringByAppendingPathComponent:NodeName];
      v12 = *(this + 41);
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = this + 328;
      do
      {
        v14 = *(v12 + 4);
        v15 = v14 >= v26;
        v16 = v14 < v26;
        if (v15)
        {
          v13 = v12;
        }

        v12 = *&v12[8 * v16];
      }

      while (v12);
      if (v13 != v5 && v26 >= *(v13 + 4))
      {
        v27 = &v26;
        v17 = std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 320, &v26)[5];
        if (v17)
        {
LABEL_16:
          if (v7[16])
          {
            USDKitConverter::processMeshSkin(this, v26, v17, v7, v8);
          }
        }
      }

      else
      {
LABEL_15:
        v17 = USDKitConverter::processMesh(this, v26, v11, NodeName);
        if (v17)
        {
          goto LABEL_16;
        }
      }

LABEL_29:
      v2 += 16;
    }

    while (v2 != v3);
  }

  v22 = *(this + 46);
  v23 = *(this + 47);
  while (v22 != v23)
  {
    v24 = *v22;
    if (Skeleton::findNodeWithAnimation(*v22))
    {
      v25 = USDKitConverter::processSkeletonAnimations(this, v24);
      if (v25)
      {
        Skeleton::setSkeletalAnimation(v24, v25);
      }
    }

    ++v22;
  }
}

uint64_t USDKitConverter::prepareSkinning(USDKitConverter *this, SCNNode *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if ([(SCNNode *)a2 skinner])
  {
    [(SCNSkinner *)[(SCNNode *)a2 skinner] skeleton];
    operator new();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(SCNNode *)a2 childNodes];
  result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        USDKitConverter::prepareSkinning(this, *(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void Skinning::createSkeletonsFromSkins(Skinning *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this != v2)
  {
    do
    {
      v4 = *v1;
      v5 = *(*v1 + 8);
      if (*(*v1 + 16) != v5)
      {
        if (!*v4)
        {
          *v4 = Skinning::_findRoot(this, (*v1 + 8));
          v5 = *(v4 + 8);
        }

        SkeletonByJoint = Skinning::findSkeletonByJoint(this, *v5);
        if (!SkeletonByJoint)
        {
          Skinning::createSkeleton(this, *v4);
        }

        v7 = *(v4 + 8);
        v8 = *(v4 + 16);
        while (v7 != v8)
        {
          v9 = *v7++;
          v29 = v9;
          std::__tree<SCNNode *>::__emplace_unique_key_args<SCNNode *,SCNNode * const&>(this + 48, &v29);
        }

        Skin::_setSkeleton(v4, SkeletonByJoint);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v10 = *(this + 3);
        v11 = *(this + 4);
        if (v10 != v11)
        {
          do
          {
            v12 = *v10;
            v28 = v12;
            if (v12 != SkeletonByJoint)
            {
              v13 = SkeletonByJoint[1];
              v14 = v13 - *SkeletonByJoint;
              if (v13 != *SkeletonByJoint)
              {
                v15 = 0;
                v16 = **v12;
                v17 = v14 >> 3;
                if (v17 <= 1)
                {
                  v17 = 1;
                }

                while (*(*SkeletonByJoint + 8 * v15) != v16)
                {
                  if (v17 == ++v15)
                  {
                    goto LABEL_25;
                  }
                }

                if (v15 != -1)
                {
                  v18 = *this;
                  v19 = *(this + 1);
                  while (v18 != v19)
                  {
                    if (*(*v18 + 56) == v28)
                    {
                      Skin::_setSkeleton(*v18, SkeletonByJoint);
                    }

                    ++v18;
                  }

                  std::vector<Statement *>::push_back[abi:nn200100](&v29, &v28);
                }
              }
            }

LABEL_25:
            ++v10;
          }

          while (v10 != v11);
          v20 = v29;
          v21 = v30;
          if (v29 != v30)
          {
            do
            {
              v22 = *v20;
              v24 = *(this + 3);
              v23 = *(this + 4);
              if (v24 != v23)
              {
                v25 = v23 - (v24 + 8);
                if (v23 != v24 + 8)
                {
                  memmove(*(this + 3), (v24 + 8), v23 - (v24 + 8));
                }

                *(this + 4) = v24 + v25;
              }

              if (v22)
              {
                std::__tree<char>::destroy(v22 + 72, *(v22 + 80));
                std::__tree<char>::destroy(v22 + 48, *(v22 + 56));
                std::__tree<char>::destroy(v22 + 24, *(v22 + 32));
                v26 = *v22;
                if (*v22)
                {
                  *(v22 + 8) = v26;
                  operator delete(v26);
                }

                MEMORY[0x21CF07610](v22, 0x10A0C400C584343);
              }

              ++v20;
            }

            while (v20 != v21);
            v20 = v29;
          }

          if (v20)
          {
            v30 = v20;
            operator delete(v20);
          }
        }
      }

      ++v1;
    }

    while (v1 != v2);
    v1 = *this;
    v2 = *(this + 1);
  }

  while (v1 != v2)
  {
    v27 = *v1++;
    Skin::_prepareIndexRemapping(v27);
  }
}

void sub_21C120760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *Skeleton::findNodeWithAnimation(Skeleton *this)
{
  v1 = **this;
  if (v1)
  {
    while (![objc_msgSend(v1 "animationKeys")])
    {
      v1 = [v1 parentNode];
      if (!v1)
      {

        return Skeleton::_findJointWithAnimation(this);
      }
    }
  }

  return v1;
}

__n128 Skin::setJoint(Skin *this, SCNNode *a2, const simd_double4x4 *a3)
{
  v12[0] = a2;
  std::vector<UITouch *>::push_back[abi:nn200100](this + 8, v12);
  v12[2] = v12;
  v5 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 32, v12);
  v6 = *a3->columns[0].f64;
  v7 = *&a3->columns[0].f64[2];
  v8 = *&a3->columns[1].f64[2];
  *(v5 + 5) = *a3->columns[1].f64;
  *(v5 + 6) = v8;
  *(v5 + 3) = v6;
  *(v5 + 4) = v7;
  result = *a3->columns[2].f64;
  v10 = *&a3->columns[2].f64[2];
  v11 = *&a3->columns[3].f64[2];
  *(v5 + 9) = *a3->columns[3].f64;
  *(v5 + 10) = v11;
  *(v5 + 7) = result;
  *(v5 + 8) = v10;
  return result;
}

void *std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *std::__tree<std::__value_type<SCNNode *,Skin *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,Skin *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,Skin *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *Skinning::_findRoot(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (!(v3 >> 3))
  {
    return 0;
  }

  if (v3 >> 3 == 1)
  {
    return *v2;
  }

  v5 = *v2;
  if (v3 < 9)
  {
    return *v2;
  }

  v7 = 1;
  do
  {
    if (v5)
    {
      v8 = *(v2 + 8 * v7);
      while (!v8)
      {
LABEL_13:
        result = [v5 parentNode];
        v5 = result;
        if (!result)
        {
          goto LABEL_16;
        }
      }

      result = v8;
      while (v5 != result)
      {
        result = [result parentNode];
        if (!result)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      result = 0;
    }

LABEL_16:
    ++v7;
    v2 = *a2;
    v5 = result;
  }

  while (v7 < (a2[1] - *a2) >> 3);
  return result;
}

uint64_t *Skinning::findSkeletonByJoint(Skinning *this, SCNNode *a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  while (v2 != v3)
  {
    result = *v2;
    v5 = **v2;
    v6 = (*v2)[1];
    v7 = v6 - v5;
    if (v6 != v5)
    {
      v8 = 0;
      v9 = v7 >> 3;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (*(v5 + 8 * v8) != a2)
      {
        if (v9 == ++v8)
        {
          goto LABEL_10;
        }
      }

      if (v8 != -1)
      {
        return result;
      }
    }

LABEL_10:
    ++v2;
  }

  return 0;
}

__n128 Skin::_setSkeleton(void *a1, uint64_t a2)
{
  a1[7] = a2;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; *(v8 + 8) = v13)
  {
    v5 = *v2++;
    v15 = v5;
    v16 = &v15;
    v6 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>((a1 + 4), &v15);
    v7 = a1[7];
    v16 = &v15;
    v8 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v7 + 72, &v15);
    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v11 = *(v6 + 6);
    *(v8 + 5) = *(v6 + 5);
    *(v8 + 6) = v11;
    *(v8 + 3) = v9;
    *(v8 + 4) = v10;
    result = *(v6 + 7);
    v13 = *(v6 + 8);
    v14 = *(v6 + 10);
    *(v8 + 9) = *(v6 + 9);
    *(v8 + 10) = v14;
    *(v8 + 7) = result;
  }

  return result;
}

void *Skin::_prepareIndexRemapping(void *this)
{
  v9[0] = 0;
  v1 = this[1];
  if (this[2] != v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = *v2[7];
      v5 = *(v2[7] + 8) - v4;
      if (v5)
      {
        v6 = 0;
        v7 = *(v1 + 8 * v3);
        v8 = v5 >> 3;
        if ((v5 >> 3) <= 1)
        {
          v8 = 1;
        }

        while (*(v4 + 8 * v6) != v7)
        {
          if (v8 == ++v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v6 = -1;
      }

      v9[2] = v9;
      this = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((v2 + 8), v9);
      this[5] = v6;
      v3 = v9[0] + 1;
      v9[0] = v3;
      v1 = v2[1];
    }

    while (v3 < (v2[2] - v1) >> 3);
  }

  return this;
}

uint64_t Skeleton::_collectJoints(Skeleton *this, SCNNode *a2, NSString *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = a2;
  std::vector<UITouch *>::push_back[abi:nn200100](this, &v30);
  v5 = [v30 name];
  v31 = &v30;
  std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 24, &v30)[5] = v7;
  [v30 simdTransform];
  v24 = vcvtq_f64_f32(*v9.f32);
  v25 = vcvt_hight_f64_f32(v8);
  v22 = vcvtq_f64_f32(*v10.f32);
  v23 = vcvtq_f64_f32(*v8.f32);
  v20 = vcvtq_f64_f32(*v11.f32);
  v21 = vcvt_hight_f64_f32(v9);
  v31 = &v30;
  v18 = vcvt_hight_f64_f32(v11);
  v19 = vcvt_hight_f64_f32(v10);
  v12 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 48, &v30);
  v12[3] = v23;
  v12[4] = v25;
  v12[5] = v24;
  v12[6] = v21;
  v12[7] = v22;
  v12[8] = v19;
  v12[9] = v20;
  v12[10] = v18;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v30 childNodes];
  result = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (result)
  {
    v15 = result;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        Skeleton::_collectJoints(this, *(*(&v26 + 1) + 8 * v17++), v7);
      }

      while (v15 != v17);
      result = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
      v15 = result;
    }

    while (result);
  }

  return result;
}

void *std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *std::__tree<SCNNode *>::__emplace_unique_key_args<SCNNode *,SCNNode * const&>(uint64_t a1, unint64_t *a2)
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

uint64_t Skeleton::_findJointWithAnimation(Skeleton *this)
{
  v5 = *this;
  if (*(this + 1) == *this)
  {
    return 0;
  }

  v9 = v2;
  v10 = v1;
  v11 = v3;
  v12 = v4;
  v7 = 0;
  while (![objc_msgSend(*(v5 + 8 * v7) animationKeys])
  {
    ++v7;
    v5 = *this;
    if (v7 >= (*(this + 1) - *this) >> 3)
    {
      return 0;
    }
  }

  return *(*this + 8 * v7);
}

uint64_t USDKitConverter::prepareBlendShape(USDKitConverter *this, SCNNode *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if ([(SCNNode *)a2 geometry]&& [(SCNNode *)a2 morpher])
  {
    [(NSArray *)[(SCNMorpher *)[(SCNNode *)a2 morpher] weights] count];
    operator new();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(SCNNode *)a2 childNodes];
  result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        USDKitConverter::prepareBlendShape(this, *(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

NSUInteger USDKitConverter::prepareCAAnimation(USDKitConverter *this, CAAnimationGroup *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return USDKitConverter::prepareCAAnimationGroup(this, a2);
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v5 = [(CAAnimationGroup *)a2 keyTimes];
      result = [v5 count];
      if (result >= 2)
      {
        [objc_msgSend(v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1), "doubleValue"}];
        v7 = v6;
        result = [objc_msgSend(v5 objectAtIndexedSubscript:{0), "doubleValue"}];
        v9 = v7 - v8;
        if (v9 >= 0.0001)
        {
          [(CAAnimationGroup *)a2 duration];
          v11 = v10 / v9;
          [objc_msgSend(v5 objectAtIndexedSubscript:{0), "doubleValue"}];
          v13 = v12;
          [(CAAnimationGroup *)a2 beginTime];
          v15 = v14 + v13 * v11;
          v16 = *(this + 62);
          if (v16 >= 0.0)
          {
            v17 = *(this + 61);
            if (v17 > v15)
            {
              v17 = v15;
            }

            *(this + 61) = v17;
            if (v16 >= v15)
            {
              v15 = v16;
            }
          }

          else
          {
            *(this + 61) = v15;
          }

          *(this + 62) = v15;
          [objc_msgSend(v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1), "doubleValue"}];
          v19 = v18;
          [(CAAnimationGroup *)a2 beginTime];
          v21 = v20 + v19 * v11;
          v22 = *(this + 62);
          if (v22 >= 0.0)
          {
            v23 = *(this + 61);
            if (v23 > v21)
            {
              v23 = v21;
            }

            *(this + 61) = v23;
            if (v22 >= v21)
            {
              v21 = v22;
            }
          }

          else
          {
            *(this + 61) = v21;
          }

          *(this + 62) = v21;
          result = [v5 count];
          if (result >= 2)
          {
            [objc_msgSend(v5 objectAtIndexedSubscript:{1), "doubleValue"}];
            v25 = v24;
            result = [objc_msgSend(v5 objectAtIndexedSubscript:{0), "doubleValue"}];
            v27 = v11 * (v25 - v26);
            if (v27 > 0.001)
            {
              v28 = *(this + 63);
              if (v28 == 0.0 || v28 > v27)
              {
                *(this + 63) = v27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

NSUInteger USDKitConverter::prepareCAAnimationGroup(USDKitConverter *this, CAAnimationGroup *a2)
{
  result = [(NSArray *)[(CAAnimationGroup *)a2 animations] count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      USDKitConverter::prepareCAAnimation(this, [(NSArray *)[(CAAnimationGroup *)a2 animations] objectAtIndex:i]);
      result = [(NSArray *)[(CAAnimationGroup *)a2 animations] count];
    }
  }

  return result;
}

void *USDKitConverter::makeNodeName(USDKitConverter *this, NSString *a2, SCNNode *a3)
{
  v6 = [(SCNNode *)a3 name];
  if (!v6 && (![(SCNNode *)a3 geometry]|| (v6 = [(SCNGeometry *)[(SCNNode *)a3 geometry] name]) == 0) || (v7 = v6, ![(NSString *)v6 length]))
  {
    v9 = MEMORY[0x277CCABB0];
    ++*(this + 30);
    v7 = [@"Node_" stringByAppendingString:{objc_msgSend(objc_msgSend(v9, "numberWithUnsignedLong:"), "stringValue")}];
  }

  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](-[NSString stringByAppendingPathComponent:](a2, "stringByAppendingPathComponent:", v10), "UTF8String"));
  if ((this + 72) != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 64, __p))
  {
    v11 = [v10 stringByAppendingString:@"_"];
    v12 = MEMORY[0x277CCABB0];
    ++*(this + 30);
    v10 = [v11 stringByAppendingString:{objc_msgSend(objc_msgSend(v12, "numberWithUnsignedLong:"), "stringValue")}];
    MEMORY[0x21CF074C0](__p, [[(NSString *)a2 stringByAppendingPathComponent:v10] UTF8String]);
  }

  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this + 64, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_21C121884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id Skeleton::makeUskSkeleton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    *(a1 + 128) = a3;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(a1 + 8) - *a1) >> 3];
    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<simd_double4x4>::reserve(&v31, (*(a1 + 8) - *a1) >> 3);
    __p = 0;
    v29 = 0;
    v30 = 0;
    std::vector<simd_double4x4>::reserve(&__p, (*(a1 + 8) - *a1) >> 3);
    v7 = *a1;
    v8 = *(a1 + 8);
    if (*a1 != v8)
    {
      v9 = (a1 + 80);
      do
      {
        v27 = *v7;
        if (v27)
        {
          *&v26[0] = &v27;
          [v6 addObject:{std::__tree<std::__value_type<SCNNode *, NSString *>, std::__map_value_compare<SCNNode *, std::__value_type<SCNNode *, NSString *>, std::less<SCNNode *>, true>, std::allocator<std::__value_type<SCNNode *, NSString *>>>::__emplace_unique_key_args<SCNNode *, std::piecewise_construct_t const&, std::tuple<SCNNode * const&>, std::tuple<>>(a1 + 24, &v27)[5]}];
          *&v26[0] = &v27;
          v10 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(a1 + 48, &v27);
          std::vector<simd_double4x4>::push_back[abi:nn200100](&v31, v10 + 3);
          v11 = *v9;
          if (!*v9)
          {
            goto LABEL_13;
          }

          v12 = (a1 + 80);
          do
          {
            v13 = v11[4];
            v14 = v13 >= v27;
            v15 = v13 < v27;
            if (v14)
            {
              v12 = v11;
            }

            v11 = v11[v15];
          }

          while (v11);
          if (v12 != v9 && v27 >= v12[4])
          {
            *&v26[0] = &v27;
            v20 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(a1 + 72, &v27);
            std::vector<simd_double4x4>::push_back[abi:nn200100](&__p, v20 + 3);
          }

          else
          {
LABEL_13:
            [v27 simdWorldTransform];
            v26[0] = vcvtq_f64_f32(*v16.f32);
            v26[1] = vcvt_hight_f64_f32(v16);
            v26[2] = vcvtq_f64_f32(*v17.f32);
            v26[3] = vcvt_hight_f64_f32(v17);
            v26[4] = vcvtq_f64_f32(*v18.f32);
            v26[5] = vcvt_hight_f64_f32(v18);
            v26[6] = vcvtq_f64_f32(*v19.f32);
            v26[7] = vcvt_hight_f64_f32(v19);
            std::vector<simd_double4x4>::push_back[abi:nn200100](&__p, v26);
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }

    v21 = *(a1 + 128);
    if (*(a1 + 96))
    {
      v22 = [USKObjectPath_helper objectPathWithString:v21];
      v3 = 0;
    }

    else
    {
      v23 = [USKObjectPath_helper objectPathWithString:v21];
      v3 = [USKHelper scene:a2 nodeAtPath:v23 type:USKNodeTypeSkeletonRoot_weak];
      v22 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [*(a1 + 128) stringByAppendingPathComponent:@"Skeleton"]);
    }

    *(a1 + 112) = v22;
    v24 = [USKHelper scene:"scene:nodeAtPath:type:" nodeAtPath:a2 type:?];
    *(a1 + 104) = v24;
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v24 propertyWithName:@"joints" type:USKDataTypeStringArray_weak role:{USKRoleTypeNone_weak), "setStringArray:", v6}];
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:*(a1 + 104) propertyWithName:@"restTransforms" type:USKDataTypeDouble4x4Array_weak role:{USKRoleTypeNone_weak), "setDouble4x4Array:count:"}];
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:*(a1 + 104) propertyWithName:@"bindTransforms" type:USKDataTypeDouble4x4Array_weak role:{USKRoleTypeNone_weak), "setDouble4x4Array:count:"}];
    if (!v3)
    {
      v3 = *(a1 + 104);
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  return v3;
}

void sub_21C121BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

id USDKitConverter::processMesh(USDKitConverter *this, SCNNode *a2, NSString *a3, NSString *a4)
{
  v15[0] = a2;
  v6 = *(this + 53);
  if (v6)
  {
    v8 = (this + 424);
    do
    {
      v9 = v6[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = v6[v11];
    }

    while (v6);
    if (v8 != (this + 424) && v8[4] <= a2)
    {
      v15[2] = v15;
      v12 = std::__tree<std::__value_type<SCNNode *,Skin *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,Skin *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,Skin *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 416, v15);
      BlendShape::makeUsdSkeleton(v12[5], *(this + 7), a3);
      a3 = [(NSString *)a3 stringByAppendingPathComponent:a4];
      a2 = v15[0];
    }
  }

  if (!USDKitConverter::isMesh(this, a2))
  {
    return 0;
  }

  v13 = [USKHelper scene:*(this + 7) nodeAtPath:[USKObjectPath_helper objectPathWithString:a3] type:USKNodeTypeMesh_weak];
  USDKitConverter::processSCNGeometry(this, v13, a3, [(SCNNode *)v15[0] geometry]);
  if ([(SCNNode *)v15[0] morpher])
  {
    USDKitConverter::processSCNMorpher(this, v13, a3, v15[0]);
  }

  return v13;
}

id USDKitConverter::processCamera(USDKitConverter *this, SCNNode *a2, NSString *a3, SCNCamera *a4)
{
  v5 = [USKHelper scene:*(this + 7) nodeAtPath:[USKObjectPath_helper objectPathWithString:a3] type:USKNodeTypeCamera_weak];
  if ([(SCNCamera *)a4 usesOrthographicProjection])
  {
    v6 = @"orthographic";
  }

  else
  {
    v6 = @"perspective";
  }

  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v5 propertyWithName:@"projection" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v6)}];
  if (![(SCNCamera *)a4 usesOrthographicProjection])
  {
    [(SCNCamera *)a4 fieldOfView];
    v8 = tan(v7 / 180.0 * 3.14159265 * 0.5);
    [(SCNCamera *)a4 focalLength];
    *&v8 = v9 * v8 + v9 * v8;
    v10 = [USKHelper node:v5 propertyWithName:@"horizontalAperture" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
    LODWORD(v11) = LODWORD(v8);
    [v10 setFloatValue:v11];
    v12 = [USKHelper node:v5 propertyWithName:@"verticalAperture" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
    LODWORD(v13) = LODWORD(v8);
    [v12 setFloatValue:v13];
  }

  v14 = [USKHelper node:v5 propertyWithName:@"focalLength" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
  [(SCNCamera *)a4 focalLength];
  *&v15 = v15;
  [v14 setFloatValue:v15];
  v16 = [USKHelper node:v5 propertyWithName:@"clippingRange" type:USKDataTypeFloat2_weak role:USKRoleTypeNone_weak];
  [(SCNCamera *)a4 zNear];
  v25 = v17;
  [(SCNCamera *)a4 zFar];
  v18.f64[0] = v25;
  v18.f64[1] = v19;
  [v16 setFloat2Value:COERCE_DOUBLE(vcvt_f32_f64(v18))];
  if ([(SCNCamera *)a4 wantsDepthOfField])
  {
    v20 = [USKHelper node:v5 propertyWithName:@"fStop" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
    [(SCNCamera *)a4 fStop];
    *&v21 = v21;
    [v20 setFloatValue:v21];
    v22 = [USKHelper node:v5 propertyWithName:@"focusDistance" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
    [(SCNCamera *)a4 focusDistance];
    *&v23 = v23;
    [v22 setFloatValue:v23];
  }

  return v5;
}

void *USDKitConverter::processAnimations(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "animationKeys")];
  if (result)
  {
    v7 = result;
    v8 = 0;
    while (1)
    {
      result = [a3 animationPlayerForKey:{objc_msgSend(objc_msgSend(a3, "animationKeys"), "objectAtIndexedSubscript:", v8)}];
      if (result)
      {
        break;
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    v9 = [objc_msgSend(result "animation")];

    return USDKitConverter::processAnimation(a1, a2, v9);
  }

  return result;
}

uint64_t USDKitConverter::processTransforms(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  [a3 simdTransform];
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v8, *MEMORY[0x277D860B8]), vceqq_f32(v9, *(MEMORY[0x277D860B8] + 16))), vandq_s8(vceqq_f32(v10, *(MEMORY[0x277D860B8] + 32)), vceqq_f32(v11, *(MEMORY[0x277D860B8] + 48))))) & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if ([*(a1 + 88) count])
  {
    if (([*(a1 + 88) containsObject:@"xformOp:transform"] & 1) == 0)
    {
      [a3 position];
      v65.x = 0.0;
      v65.y = 0.0;
      v65.z = 0.0;
      if (!SCNVector3EqualToVector3(v63, v65) && ([*(a1 + 88) containsObject:@"xformOp:translate"] & 1) == 0)
      {
        v12 = [USKHelper node:a2 propertyWithName:@"xformOp:translate" type:USKDataTypeDouble3_weak role:USKRoleTypeNone_weak];
        [a3 position];
        v50 = v13;
        [a3 position];
        v51 = vcvtq_f64_f32(__PAIR64__(v14, v50));
        [a3 position];
        v16.f64[0] = v15;
        v56 = v16;
        v55 = v51;
        [v12 setDouble3Value:&v55];
        [*(a1 + 88) addObject:@"xformOp:translate"];
      }

      [a3 orientation];
      v68.x = 0.0;
      v68.y = 0.0;
      v68.z = 0.0;
      v68.w = 1.0;
      if (SCNVector4EqualToVector4(v67, v68) || ([*(a1 + 88) containsObject:@"xformOp:orient"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "containsObject:", @"xformOp:rotateXYZ") & 1) != 0)
      {
        goto LABEL_26;
      }

      if ([*(a1 + 88) containsObject:@"xformOp:rotateX"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "containsObject:", @"xformOp:rotateY") & 1) != 0 || (objc_msgSend(*(a1 + 88), "containsObject:", @"xformOp:rotateZ"))
      {
        [a3 simdEulerAngles];
        if (v18 != 0.0 && ([*(a1 + 88) containsObject:@"xformOp:rotateX"] & 1) == 0)
        {
          v19 = [USKHelper node:a2 propertyWithName:@"xformOp:rotateX" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
          [a3 simdEulerAngles];
          v21 = v20 / 3.14159265 * 180.0;
          *&v21 = v21;
          [v19 setFloatValue:v21];
          [*(a1 + 88) addObject:@"xformOp:rotateX"];
        }

        [a3 simdEulerAngles];
        LODWORD(v22) = HIDWORD(v22);
        if (*(&v22 + 1) != 0.0 && ([*(a1 + 88) containsObject:{@"xformOp:rotateY", v22}] & 1) == 0)
        {
          v23 = [USKHelper node:a2 propertyWithName:@"xformOp:rotateY" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
          [a3 simdEulerAngles];
          v25 = v24 / 3.14159265 * 180.0;
          *&v25 = v25;
          [v23 setFloatValue:v25];
          [*(a1 + 88) addObject:@"xformOp:rotateY"];
        }

        [a3 simdEulerAngles];
        *&v17 = v26;
        if (v26 == 0.0 || ([*(a1 + 88) containsObject:{@"xformOp:rotateZ", v17}] & 1) != 0)
        {
          goto LABEL_26;
        }

        v27 = @"xformOp:rotateZ";
        v28 = [USKHelper node:a2 propertyWithName:@"xformOp:rotateZ" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
        [a3 simdEulerAngles];
        v30 = v29 / 3.14159265 * 180.0;
        *&v30 = v30;
        [v28 setFloatValue:v30];
      }

      else
      {
        [a3 orientation];
        v52 = v37;
        [a3 orientation];
        v49 = v38;
        [a3 orientation];
        [a3 orientation];
        v39 = COERCE_DOUBLE(__PAIR64__(v49, v52));
        v27 = @"xformOp:orient";
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"xformOp:orient" type:USKDataTypeQuatf_weak role:{USKRoleTypeNone_weak), "setQuatfValue:", v39}];
      }

      [*(a1 + 88) addObject:v27];
LABEL_26:
      [a3 scale];
      v66.x = 1.0;
      v66.y = 1.0;
      v66.z = 1.0;
      if (SCNVector3EqualToVector3(v64, v66) || ([*(a1 + 88) containsObject:@"xformOp:scale"] & 1) != 0)
      {
        goto LABEL_30;
      }

      v31 = @"xformOp:scale";
      v40 = [USKHelper node:a2 propertyWithName:@"xformOp:scale" type:USKDataTypeDouble3_weak role:USKRoleTypeNone_weak];
      [a3 scale];
      v53 = v41;
      [a3 scale];
      v54 = vcvtq_f64_f32(__PAIR64__(v42, v53));
      [a3 scale];
      v44.f64[0] = v43;
      v56 = v44;
      v55 = v54;
      [v40 setDouble3Value:&v55];
      goto LABEL_29;
    }
  }

  else if ((a4 & 1) == 0)
  {
    v31 = @"xformOp:transform";
    v32 = [USKHelper node:a2 propertyWithName:@"xformOp:transform" type:USKDataTypeDouble4x4_weak role:USKRoleTypeNone_weak];
    [a3 simdTransform];
    v55 = vcvtq_f64_f32(*v33.f32);
    v56 = vcvt_hight_f64_f32(v33);
    v57 = vcvtq_f64_f32(*v34.f32);
    v58 = vcvt_hight_f64_f32(v34);
    v59 = vcvtq_f64_f32(*v35.f32);
    v60 = vcvt_hight_f64_f32(v35);
    v61 = vcvtq_f64_f32(*v36.f32);
    v62 = vcvt_hight_f64_f32(v36);
    [v32 setDouble4x4Value:&v55];
LABEL_29:
    [*(a1 + 88) addObject:v31];
  }

LABEL_30:
  v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  for (i = 0; i != 8; ++i)
  {
    v47 = MDLBridgeAllTransforms[i];
    if ([*(a1 + 88) containsObject:v47])
    {
      [v45 addObject:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v47)}];
    }
  }

  if ([v45 count])
  {
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"xformOpOrder" type:USKDataTypeTokenArray_weak role:{USKRoleTypeNone_weak), "setTokenArray:", v45}];
  }

  return [*(a1 + 88) removeAllObjects];
}

void *std::vector<simd_double4x4>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<simd_double4x4>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<simd_double4x4>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = (v4 - *a1) >> 7;
    v14 = v13 + 1;
    if ((v13 + 1) >> 57)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = v5 - *a1;
    if (v15 >> 6 > v14)
    {
      v14 = v15 >> 6;
    }

    if (v15 >= 0x7FFFFFFFFFFFFF80)
    {
      v16 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<simd_double4x4>>(a1, v16);
    }

    v17 = (v13 << 7);
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    v17[2] = a2[2];
    v17[3] = v20;
    *v17 = v18;
    v17[1] = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[7];
    v17[6] = a2[6];
    v17[7] = v23;
    v17[4] = v21;
    v17[5] = v22;
    v12 = (v13 << 7) + 128;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy(v17 - v24, *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[7];
    v4[6] = a2[6];
    v4[7] = v11;
    v4[4] = v9;
    v4[5] = v10;
    v12 = (v4 + 8);
  }

  *(a1 + 8) = v12;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<simd_double4x4>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<SCNNode *,Skeleton *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

id BlendShape::makeUsdSkeleton(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [USKObjectPath_helper objectPathWithString:?];
  v7 = [USKHelper scene:a2 nodeAtPath:v6 type:USKNodeTypeSkeletonRoot_weak];
  v8 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a3 stringByAppendingPathComponent:@"Skeleton"]);
  *(a1 + 8) = [USKHelper scene:a2 nodeAtPath:v8 type:USKNodeTypeSkeleton_weak];
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v7 propertyWithName:@"skel:skeleton" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", v8}];
  return v7;
}

SCNGeometryPrimitiveType USDKitConverter::isMesh(USDKitConverter *this, SCNNode *a2)
{
  v2 = [(SCNNode *)a2 geometry];
  if ([(SCNGeometry *)v2 geometryElementCount]< 1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = [(SCNGeometry *)v2 geometryElementAtIndex:v3];
    if ([(SCNGeometryElement *)v4 primitiveType]== SCNGeometryPrimitiveTypeTriangles || [(SCNGeometryElement *)v4 primitiveType]== SCNGeometryPrimitiveTypePolygon)
    {
      break;
    }

    result = [(SCNGeometryElement *)v4 primitiveType];
    if (result == SCNGeometryPrimitiveTypeTriangleStrip)
    {
      return result;
    }

    if (++v3 >= [(SCNGeometry *)v2 geometryElementCount])
    {
      return 0;
    }
  }

  return 1;
}

void USDKitConverter::processSCNGeometry(USDKitConverter *a1, uint64_t a2, void *a3, void *a4)
{
  v128 = a3;
  v131 = a1;
  v157 = *MEMORY[0x277D85DE8];
  v135 = a2;
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"subdivisionScheme" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"none"}];
  v137 = a4;
  if ([a4 geometrySourceChannels] && objc_msgSend(objc_msgSend(a4, "geometrySourceChannels"), "count") >= 2)
  {
    v132 = [objc_msgSend(a4 "geometrySourceChannels")];
    v130 = 1;
  }

  else
  {
    v130 = 0;
    v132 = 1;
  }

  v5 = [v137 geometryElementCount];
  if (v5 < 1)
  {
    v12 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v137;
    do
    {
      v10 = [v9 geometryElementAtIndex:v8];
      v11 = [v10 primitiveCount];
      if ([v10 primitiveType] == 1 && objc_msgSend(v10, "indexCount") >= 3)
      {
        v7 = v7 + 3 * [v10 indexCount] - 6;
      }

      else
      {
        v7 += [v10 indexCount];
      }

      v6 += v11;
      ++v8;
      v9 = v137;
      v5 = [v137 geometryElementCount];
    }

    while (v8 < v5);
    v12 = v7;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    if (v6)
    {
      std::vector<float>::__vallocate[abi:nn200100](&v151, v6);
    }
  }

  v127[1] = v127;
  MEMORY[0x28223BE20](v5);
  v142 = (v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v14)
  {
    v15 = v132;
    v16 = v142;
    bzero(v142, 24 * ((24 * v132 - 24) / 0x18) + 24);
    do
    {
      std::vector<unsigned int>::reserve(v16++, v12);
      --v15;
    }

    while (v15);
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v17 = [v137 geometryElements];
  v139 = [v17 countByEnumeratingWithState:&v147 objects:v156 count:16];
  if (v139)
  {
    v136 = v17;
    v140 = 0;
    *&v138 = *v148;
    do
    {
      for (i = 0; i != v139; ++i)
      {
        if (*v148 != v138)
        {
          objc_enumerationMutation(v136);
        }

        v18 = *(*(&v147 + 1) + 8 * i);
        if ([v18 data])
        {
          v19 = [objc_msgSend(v18 "data")];
          if ([v18 primitiveType] == 4)
          {
            v20 = 0;
            v21 = 4 * v140;
            while ([v18 primitiveCount] > v20)
            {
              v22 = [v18 bytesPerIndex];
              switch(v22)
              {
                case 1:
                  v23 = *v19;
                  break;
                case 4:
                  v23 = *v19;
                  break;
                case 2:
                  v23 = *v19;
                  break;
                default:
                  v23 = *v19;
                  break;
              }

              *&v151[4 * v20++ + v21] = v23;
              v19 += [v18 bytesPerIndex];
            }
          }

          v143.i64[0] = [v18 indicesChannelCount];
          if ([v18 hasInterleavedIndicesChannels])
          {
            v24 = v143.i64[0];
          }

          else
          {
            v24 = 1;
          }

          if (v143.i64[0])
          {
            v144.i64[0] = 0;
            do
            {
              v25 = [v18 hasInterleavedIndicesChannels];
              v26 = v144.i64[0];
              if ((v25 & 1) == 0)
              {
                v27 = [v18 indexCount];
                v26 = v27 * v144.i64[0];
              }

              v28 = [v18 primitiveType];
              p_begin = &v142[v144.i64[0]].__begin_;
              if (v28 == 1)
              {
                for (j = 2; j < [v18 indexCount]; ++j)
                {
                  v31 = [v18 bytesPerIndex];
                  v32 = [v18 bytesPerIndex];
                  v33 = v31 * (2 * v24 + v26);
                  switch(v32)
                  {
                    case 1:
                      v34 = v19[v33];
                      break;
                    case 4:
                      v34 = *&v19[v33];
                      break;
                    case 2:
                      v34 = *&v19[v33];
                      break;
                    default:
                      v34 = v19[v33];
                      break;
                  }

                  v154.i32[0] = v34;
                  v35 = [v18 bytesPerIndex];
                  v36 = [v18 bytesPerIndex];
                  v37 = v35 * (v24 + v26);
                  switch(v36)
                  {
                    case 1:
                      v38 = v19[v37];
                      break;
                    case 4:
                      v38 = *&v19[v37];
                      break;
                    case 2:
                      v38 = *&v19[v37];
                      break;
                    default:
                      v38 = v19[v37];
                      break;
                  }

                  LODWORD(v145) = v38;
                  v39 = [v18 bytesPerIndex];
                  v40 = [v18 bytesPerIndex];
                  v41 = v39 * v26;
                  switch(v40)
                  {
                    case 1:
                      v42 = v19[v41];
                      break;
                    case 4:
                      v42 = *&v19[v41];
                      break;
                    case 2:
                      v42 = *&v19[v41];
                      break;
                    default:
                      v42 = v19[v41];
                      break;
                  }

                  v146 = v42;
                  if (j)
                  {
                    v43 = &v145;
                  }

                  else
                  {
                    v43 = &v146;
                  }

                  std::vector<int>::push_back[abi:nn200100](p_begin, v43);
                  if (j)
                  {
                    v44 = &v146;
                  }

                  else
                  {
                    v44 = &v145;
                  }

                  std::vector<int>::push_back[abi:nn200100](p_begin, v44);
                  std::vector<int>::push_back[abi:nn200100](p_begin, &v154);
                  v26 += v24;
                }
              }

              else
              {
                for (k = 0; k < [v18 indexCount]; ++k)
                {
                  v46 = [v18 bytesPerIndex];
                  v47 = [v18 bytesPerIndex];
                  v48 = v46 * v26;
                  switch(v47)
                  {
                    case 1:
                      v49 = v19[v48];
                      break;
                    case 4:
                      v49 = *&v19[v48];
                      break;
                    case 2:
                      v49 = *&v19[v48];
                      break;
                    default:
                      v49 = v19[v48];
                      break;
                  }

                  v154.i32[0] = v49;
                  std::vector<int>::push_back[abi:nn200100](p_begin, &v154);
                  v26 += v24;
                }
              }

              ++v144.i64[0];
            }

            while (v144.i64[0] != v143.i64[0]);
          }

          v50 = [v18 primitiveCount];
          v140 += v50;
        }
      }

      v139 = [v136 countByEnumeratingWithState:&v147 objects:v156 count:16];
    }

    while (v139);
  }

  else
  {
    v140 = 0;
  }

  v51 = [USKHelper node:v135 propertyWithName:@"faceVertexCounts" type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
  [v51 setIntArray:v151 count:v140];
  v52 = 0;
  i = 0;
  v53 = 0;
  LODWORD(v136) = v130 ^ 1;
  v139 = @"kGeometrySourceSemanticVertex";
  v134 = @"kGeometrySourceSemanticNormal";
  v133 = @"kGeometrySourceSemanticColor";
  v129 = @"kGeometrySourceSemanticTexcoord";
  while (1)
  {
    v54 = [objc_msgSend(v137 "geometrySources")];
    if (i >= v54)
    {
      break;
    }

    v55 = [v137 geometrySources];
    v56 = [v55 objectAtIndexedSubscript:i];
    v57 = [v56 vectorCount];
    v58 = [objc_msgSend(v56 "data")];
    v59 = [v56 dataOffset];
    v60 = [v56 semantic];
    v61 = [v60 isEqualToString:v139];
    v62 = v61;
    v63 = v61;
    if (((v61 | v136) & 1) == 0)
    {
      if (i >= v132)
      {
        v63 = 0;
      }

      else
      {
        v64 = [v137 geometrySourceChannels];
        v63 = [objc_msgSend(v64 objectAtIndexedSubscript:{i), "intValue"}] != 0;
      }
    }

    LODWORD(v140) = v53;
    v65 = v58 + v59;
    if (v62 & 1) != 0 || (v66 = [v56 semantic], (objc_msgSend(v66, "isEqualToString:", v134)) || (v67 = objc_msgSend(v56, "semantic"), objc_msgSend(v67, "isEqualToString:", v133)))
    {
      v154 = 0uLL;
      v155.i64[0] = 0;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v154, v57);
      v69 = v57;
      if (v57 >= 1)
      {
        do
        {
          *&v68 = *v65;
          DWORD2(v68) = *(v65 + 8);
          v145 = v68;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v154, &v145);
          if (v62)
          {
            v70.i64[0] = *v65;
            v70.i32[2] = *(v65 + 8);
            if (v52)
            {
              v71 = v144;
              v71.i32[3] = 0;
              v70.i32[3] = 0;
              v72 = vminnmq_f32(v71, v70);
              v73 = v143;
              v73.i32[3] = 0;
              v143 = vmaxnmq_f32(v73, v70);
              v144 = v72;
              v52 = 1;
            }

            else
            {
              v52 = 1;
              v143 = v70;
              v144 = v70;
            }
          }

          v65 += [v56 dataStride];
          --v69;
        }

        while (v69);
      }

      *&v145 = [v56 semantic];
      v75 = v63;
      v76 = USKDataTypeFloat3Array_weak;
      v77 = [v56 semantic];
      v78 = [v77 isEqualToString:v139];
      v79 = &USKRoleTypePoint_weak;
      if ((v78 & 1) == 0)
      {
        v80 = [v77 isEqualToString:v134];
        v79 = &USKRoleTypeNormal_weak;
        if ((v80 & 1) == 0)
        {
          v81 = [v77 isEqualToString:v129];
          v79 = &USKRoleTypeTextureCoordinate_weak;
          if ((v81 & 1) == 0)
          {
            v82 = [v77 isEqualToString:v133];
            v79 = &USKRoleTypeNone_weak;
            if (v82)
            {
              v79 = &USKRoleTypeColor_weak;
            }
          }
        }
      }

      v83 = [USKHelper node:v135 propertyWithName:v74 type:v76 role:*v79];
      [v83 setFloat3Array:v154.i64[0] count:v57];
      if (v75)
      {
        if ((v62 & 1) == 0)
        {
          [v83 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"faceVarying"}];
        }

        *&v145 = [v56 semantic];
        v86 = [USKHelper node:v135 propertyWithName:v85 type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
        if (v130)
        {
          v87 = [v137 geometrySourceChannels];
          [objc_msgSend(v87 objectAtIndexedSubscript:{i), "intValue"}];
        }

        [v86 setIntArray:? count:?];
      }

      else
      {
        v88 = [v56 semantic];
        if ([v88 isEqualToString:v133])
        {
          [v83 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"vertex"}];
        }
      }

      if (v154.i64[0])
      {
        v154.i64[1] = v154.i64[0];
        operator delete(v154.i64[0]);
      }

LABEL_119:
      v53 = v140;
      goto LABEL_120;
    }

    v89 = [v56 semantic];
    if (![v89 isEqualToString:v129])
    {
      goto LABEL_119;
    }

    v154 = 0uLL;
    v155.i64[0] = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&v154, v57);
    v91 = v57;
    if (v57 >= 1)
    {
      do
      {
        LODWORD(v90) = *v65;
        *(&v90 + 1) = 1.0 - *(v65 + 4);
        v92 = v154.i64[1];
        if (v154.i64[1] >= v155.i64[0])
        {
          v138 = v90;
          v94 = (v154.i64[1] - v154.i64[0]) >> 3;
          if ((v94 + 1) >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v95 = (v155.i64[0] - v154.i64[0]) >> 2;
          if (v95 <= v94 + 1)
          {
            v95 = v94 + 1;
          }

          if (v155.i64[0] - v154.i64[0] >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v96 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v96 = v95;
          }

          if (v96)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(&v154, v96);
          }

          *(8 * v94) = v138;
          v93 = 8 * v94 + 8;
          v97 = (8 * v94 - (v154.i64[1] - v154.i64[0]));
          memcpy(v97, v154.i64[0], v154.i64[1] - v154.i64[0]);
          v98 = v154.i64[0];
          v154.i64[0] = v97;
          v154.i64[1] = v93;
          v155.i64[0] = 0;
          if (v98)
          {
            operator delete(v98);
          }
        }

        else
        {
          *v154.i64[1] = v90;
          v93 = v92 + 8;
        }

        v154.i64[1] = v93;
        v65 += [v56 dataStride];
        --v91;
      }

      while (v91);
    }

    *&v145 = [v56 semantic];
    v100 = v140;
    if (v140 >= 1)
    {
      v99 = -[__CFString stringByAppendingString:](v99, "stringByAppendingString:", [objc_msgSend(MEMORY[0x277CCABB0] numberWithInt:{v140), "stringValue"}]);
    }

    v101 = [USKHelper node:v135 propertyWithName:v99 type:USKDataTypeFloat2Array_weak role:USKRoleTypeTextureCoordinate_weak];
    [v101 setFloat2Array:v154.i64[0] count:v57];
    if (v63)
    {
      [v101 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"faceVarying"}];
      *&v145 = [v56 semantic];
      v104 = [USKHelper node:v135 propertyWithName:v103 type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
      if (v130)
      {
        v105 = [v137 geometrySourceChannels];
        [objc_msgSend(v105 objectAtIndexedSubscript:{i), "intValue"}];
      }

      [v104 setIntArray:? count:?];
    }

    else
    {
      [v101 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"vertex"}];
    }

    if (v154.i64[0])
    {
      v154.i64[1] = v154.i64[0];
      operator delete(v154.i64[0]);
    }

    v53 = v100 + 1;
LABEL_120:
    ++i;
  }

  if (v52)
  {
    v106 = [USKHelper node:v135 propertyWithName:@"extent" type:USKDataTypeFloat3Array_weak role:USKRoleTypeNone_weak];
    v154 = v144;
    v155 = v143;
    [v106 setFloat3Array:&v154 count:2];
  }

  if ([v137 geometryElementCount] > 1)
  {
    v154 = 0uLL;
    v155.i64[0] = 0;
    v109 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v137, "geometryElementCount")}];
    v110 = 0;
    for (m = 0; m < [v137 geometryElementCount]; ++m)
    {
      v112 = v137;
      v113 = [v137 geometryElementAtIndex:m];
      if (m >= [objc_msgSend(v112 "materials")])
      {
        v114 = [v137 firstMaterial];
      }

      else
      {
        v114 = [objc_msgSend(v137 "materials")];
      }

      v115 = v114;
      if (v114)
      {
        v116 = USDKitConverter::processMaterial(v131, v114);
        v117 = [objc_msgSend(v116 "stringValue")];
        v118 = [objc_msgSend(v128 stringByAppendingPathComponent:{v117), "stringByAppendingString:", @"_meshGroup"}];
        if ([v109 containsObject:v118])
        {
          v118 = [v118 stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", m), "stringValue")}];
        }

        [v109 addObject:v118];
        v119 = [USKObjectPath_helper objectPathWithString:v118];
        v120 = [USKHelper scene:*(v131 + 7) nodeAtPath:v119 type:USKNodeTypeMeshGroup_weak];
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v120 propertyWithName:@"elementType" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"face"}];
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v120 propertyWithName:@"familyName" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"materialBind"}];
        std::vector<float>::resize(&v154, 0);
        v121 = 0;
        v122 = v110;
        while ([v113 primitiveCount] > v121)
        {
          LODWORD(v145) = v122;
          std::vector<int>::push_back[abi:nn200100](&v154, &v145);
          ++v121;
          ++v122;
        }

        v123 = [USKHelper node:v120 propertyWithName:@"indices" type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
        [v123 setIntArray:v154.i64[0] count:{objc_msgSend(v113, "primitiveCount")}];
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v120 propertyWithName:@"material:binding" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", v116}];
        if (!m && [(SCNMaterial *)v115 isDoubleSided])
        {
          [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v135 propertyWithName:@"doubleSided" type:USKDataTypeBool_weak role:{USKRoleTypeNone_weak), "setBoolValue:", 1}];
        }
      }

      v110 += [v113 primitiveCount];
    }

    if (v154.i64[0])
    {
      v154.i64[1] = v154.i64[0];
      operator delete(v154.i64[0]);
    }
  }

  else
  {
    v107 = [v137 firstMaterial];
    if (v107)
    {
      v108 = USDKitConverter::processMaterial(v131, v107);
      [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v135 propertyWithName:@"material:binding" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", v108}];
      if ([(SCNMaterial *)v107 isDoubleSided])
      {
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v135 propertyWithName:@"doubleSided" type:USKDataTypeBool_weak role:{USKRoleTypeNone_weak), "setBoolValue:", 1}];
      }
    }
  }

  if (v132)
  {
    v124 = &v142[v132 - 1];
    v125 = -24 * v132;
    do
    {
      v126 = *v124;
      if (*v124)
      {
        *(v124 + 1) = v126;
        operator delete(v126);
      }

      v124 -= 24;
      v125 += 24;
    }

    while (v125);
  }

  if (v151)
  {
    v152 = v151;
    operator delete(v151);
  }
}

void sub_21C123B20(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    v4 = v1[17] + 24 * v3 - 24;
    v5 = -24 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v6;
        operator delete(v6);
      }

      v4 -= 24;
      v5 += 24;
    }

    while (v5);
  }

  v7 = v1[35];
  if (v7)
  {
    v1[36] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

unint64_t USDKitConverter::processSCNMorpher(USDKitConverter *a1, void *a2, void *a3, void *a4)
{
  v6 = [a4 geometry];
  v7 = [a4 morpher];
  v65 = a4;
  if ([v7 calculationMode])
  {
    v72 = 0uLL;
  }

  else
  {
    result = [objc_msgSend(v6 "geometrySources")];
    if (result)
    {
      v72 = 0uLL;
      for (i = 0; i < result; ++i)
      {
        v10 = [objc_msgSend(v6 "geometrySources")];
        if ([objc_msgSend(v10 "semantic")])
        {
          *&v72 = v10;
        }

        else
        {
          v11 = [objc_msgSend(v10 "semantic")];
          v12 = *(&v72 + 1);
          if (v11)
          {
            v12 = v10;
          }

          *(&v72 + 1) = v12;
        }

        result = [objc_msgSend(v6 "geometrySources")];
      }
    }

    else
    {
      v72 = 0uLL;
    }

    if (v72 == 0)
    {
      return result;
    }
  }

  v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v7, "targets"), "count")}];
  v67 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v7, "targets"), "count")}];
  if ([objc_msgSend(v7 "targets")])
  {
    v13 = 0;
    do
    {
      v71 = v13;
      v14 = [objc_msgSend(v7 "targets")];
      v15 = [@"blendShape" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", v13), "stringValue")}];
      v16 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a3 stringByAppendingPathComponent:v15]);
      [v68 addObject:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", USDKitConverter::makeUniqueBlendShapeName(a1, v15, a3))}];
      [v67 addObject:v16];
      if (C3DSceneSourceGetSceneCount())
      {
        v17 = USKNodeTypeBlendShape_weak;
        v18 = v16;
      }

      else
      {
        v18 = v16;
        v17 = @"BlendShape";
      }

      v70 = [USKHelper scene:*(a1 + 7) nodeAtPath:v18 type:v17];
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      while (v21 < [objc_msgSend(v14 "geometrySources")])
      {
        v24 = [objc_msgSend(v14 "geometrySources")];
        if ([objc_msgSend(v24 "semantic")])
        {
          v20 = [v24 vectorCount];
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v83, v20);
        }

        else
        {
          if ([objc_msgSend(v24 "semantic")])
          {
            v19 = [v24 vectorCount];
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v80, v19);
            v22 = v24;
          }

          v24 = v23;
        }

        ++v21;
        v23 = v24;
      }

      if (v20 <= v19)
      {
        v25 = v19;
      }

      else
      {
        v25 = v20;
      }

      memset(&v79, 0, sizeof(v79));
      std::vector<unsigned int>::reserve(&v79, v25);
      if (v23)
      {
        v27 = ([v7 calculationMode] | v72) != 0;
        if (!v22)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v27 = 0;
        if (!v22)
        {
LABEL_35:
          v28 = 0;
          goto LABEL_36;
        }
      }

      v28 = ([v7 calculationMode] | *(&v72 + 1)) != 0;
LABEL_36:
      v78 = 0;
      if (v25 >= 1)
      {
        do
        {
          *&v26 = 0;
          v74 = v26;
          *&v26 = 0;
          v73 = v26;
          v75 = 0.0;
          *&v26 = 0;
          v76 = v26;
          if (v27 && (v29 = [objc_msgSend(v23 "data")], v30 = objc_msgSend(v23, "dataOffset"), v31 = v78, v32 = v29 + v30 + objc_msgSend(v23, "dataStride") * v31, *&v33 = *v32, v76 = v33, v75 = *(v32 + 8), !objc_msgSend(v7, "calculationMode")))
          {
            v45 = [objc_msgSend(v72 "data")];
            v46 = [v72 dataOffset];
            v47 = v78;
            v48 = (v45 + v46 + [v72 dataStride] * v47);
            *(&v49 + 1) = *(&v76 + 1);
            *&v49 = vsub_f32(*&v76, *v48);
            v76 = v49;
            v75 = v75 - v48[1].f32[0];
            if (v28)
            {
LABEL_40:
              v34 = [objc_msgSend(v22 "data")];
              v35 = [v22 dataOffset];
              v36 = v78;
              v37 = v34 + v35 + [v22 dataStride] * v36;
              *&v38 = *v37;
              v74 = v38;
              LODWORD(v38) = *(v37 + 8);
              v73 = v38;
              if (![v7 calculationMode])
              {
                v39 = [objc_msgSend(*(&v72 + 1) "data")];
                v40 = [*(&v72 + 1) dataOffset];
                v41 = v78;
                v42 = (v39 + v40 + [*(&v72 + 1) dataStride] * v41);
                *(&v43 + 1) = *(&v74 + 1);
                *&v43 = vsub_f32(*&v74, *v42);
                v74 = v43;
                v44 = v73;
                *&v44 = *&v73 - v42[1].f32[0];
                v73 = v44;
              }
            }
          }

          else if (v28)
          {
            goto LABEL_40;
          }

          if (*&v76 != 0.0 || (v50.i32[0] = vdup_lane_s32(*&v76, 1).u32[0], v50.i64[1] = v74, v50.f32[1] = v75, (vaddvq_s32(vbicq_s8(xmmword_21C27FE30, vceqzq_f32(v50))) & 0xF) != 0) || (*(&v26 + 1) = *(&v73 + 1), *&v73 != 0.0))
          {
            if (v27)
            {
              v51 = v76;
              *(&v51 + 2) = v75;
              v77 = v51;
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v83, &v77);
            }

            if (v28)
            {
              v52 = v74;
              DWORD2(v52) = v73;
              v77 = v52;
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v80, &v77);
            }

            std::vector<int>::push_back[abi:nn200100](&v79.__begin_, &v78);
          }

          v53 = ++v78;
        }

        while (v25 > v53);
      }

      if (v84 != v83)
      {
        v54 = [v23 semantic];
        v55 = [v54 isEqualToString:@"kGeometrySourceSemanticVertex"];
        v56 = @"offsets";
        if ((v55 & 1) == 0)
        {
          if ([v54 isEqualToString:{@"kGeometrySourceSemanticNormal", @"offsets"}])
          {
            v56 = @"normalOffsets";
          }

          else
          {
            v56 = &stru_282DCC058;
          }
        }

        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v70 propertyWithName:v56 type:USKDataTypeFloat3Array_weak role:{USKRoleTypeVector_weak), "setFloat3Array:count:"}];
      }

      if (v81 != v80)
      {
        v57 = [v22 semantic];
        v58 = [v57 isEqualToString:@"kGeometrySourceSemanticVertex"];
        v59 = @"offsets";
        if ((v58 & 1) == 0)
        {
          if ([v57 isEqualToString:{@"kGeometrySourceSemanticNormal", @"offsets"}])
          {
            v59 = @"normalOffsets";
          }

          else
          {
            v59 = &stru_282DCC058;
          }
        }

        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v70 propertyWithName:v59 type:USKDataTypeFloat3Array_weak role:{USKRoleTypeVector_weak), "setFloat3Array:count:"}];
      }

      [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v70 propertyWithName:@"pointIndices" type:USKDataTypeIntArray_weak role:{USKRoleTypeNone_weak), "setIntArray:count:"}];
      if (v79.__begin_)
      {
        v79.__end_ = v79.__begin_;
        operator delete(v79.__begin_);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      v13 = v71 + 1;
    }

    while (v71 + 1 < [objc_msgSend(v7 "targets")]);
  }

  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"skel:blendShapes" type:USKDataTypeTokenArray_weak role:{USKRoleTypeNone_weak), "setTokenArray:", v68}];
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"skel:blendShapeTargets" type:USKDataTypeObjectPathArray_weak role:{USKRoleTypeNone_weak), "setObjectPathArray:", v67}];
  result = [a2 applyType:USKSchemaTypeBindingAPI_weak];
  v60 = *(a1 + 53);
  if (v60)
  {
    v61 = (a1 + 424);
    do
    {
      v62 = v60[4];
      v63 = v62 >= v65;
      v64 = v62 < v65;
      if (v63)
      {
        v61 = v60;
      }

      v60 = v60[v64];
    }

    while (v60);
    if (v61 != (a1 + 424) && v61[4] <= v65)
    {
      *(v61[5] + 24) = v68;
    }
  }

  return result;
}

void sub_21C124470(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 136);
  if (v4)
  {
    *(v1 - 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 112);
  if (v5)
  {
    *(v1 - 104) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

__CFString *anonymous namespace::semanticToProperty(id *this, NSString *const *a2)
{
  v2 = a2;
  if ([*this isEqualToString:@"kGeometrySourceSemanticVertex"])
  {
    return @"points";
  }

  if ([*this isEqualToString:@"kGeometrySourceSemanticNormal"])
  {
    v5 = @"normals";
    v6 = @"primvars:normals";
    v7 = v2 == 0;
  }

  else
  {
    if ([*this isEqualToString:@"kGeometrySourceSemanticTexcoord"])
    {
      return @"primvars:st";
    }

    v8 = [*this isEqualToString:@"kGeometrySourceSemanticColor"];
    v5 = &stru_282DCC058;
    v6 = @"primvars:displayColor";
    v7 = v8 == 0;
  }

  if (v7)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

__CFString *anonymous namespace::semanticToIndicesProperty(id *this, NSString *const *a2)
{
  if ([*this isEqualToString:@"kGeometrySourceSemanticVertex"])
  {
    return @"faceVertexIndices";
  }

  if ([*this isEqualToString:@"kGeometrySourceSemanticNormal"])
  {
    return @"primvars:normals:indices";
  }

  if ([*this isEqualToString:@"kGeometrySourceSemanticTexcoord"])
  {
    return @"primvars:st:indices";
  }

  if ([*this isEqualToString:@"kGeometrySourceSemanticColor"])
  {
    return @"primvars:displayColor:indices";
  }

  return &stru_282DCC058;
}

id USDKitConverter::processMaterial(USDKitConverter *this, SCNMaterial *a2)
{
  v2 = this;
  v114[2] = *MEMORY[0x277D85DE8];
  v109 = a2;
  v3 = this + 128;
  v4 = *(this + 16);
  v5 = this + 120;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 4) <= a2)
  {
    __p.__r_.__value_.__r.__words[0] = &v109;
    return std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v5, &v109)[5];
  }

  else
  {
LABEL_9:
    v100 = v5;
    v10 = [(SCNMaterial *)a2 name];
    if (!v10 || (v11 = v10, ![(NSString *)v10 length]))
    {
      v11 = [@"Material_" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", *(v2 + 17)), "stringValue")}];
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, [v13 UTF8String]);
    v14 = v2 + 152;
    if ((v2 + 152) != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v2 + 144, &__p.__r_.__value_.__l.__data_))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&__str, size + 1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(p_str, p_p, size);
      }

      *(&p_str->__r_.__value_.__l.__data_ + size) = 95;
      std::to_string(&v110, *(v2 + 20));
      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v110;
      }

      else
      {
        v18 = v110.__r_.__value_.__r.__words[0];
      }

      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v110.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&__str, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      *&v112[1] = *(&v20->__r_.__value_.__l + 2);
      v112[0] = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v14 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v2 + 144, v112))
      {
        v22 = 1;
        do
        {
          v23 = v2;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = __p.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:nn200100](&__str, v24 + 4);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__str;
          }

          else
          {
            v25 = __str.__r_.__value_.__r.__words[0];
          }

          if (v24)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = &__p;
            }

            else
            {
              v26 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v25, v26, v24);
          }

          strcpy(v25 + v24, "_un_");
          std::to_string(&v110, v22);
          if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &v110;
          }

          else
          {
            v27 = v110.__r_.__value_.__r.__words[0];
          }

          if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = v110.__r_.__value_.__l.__size_;
          }

          v29 = std::string::append(&__str, v27, v28);
          v30 = v29->__r_.__value_.__r.__words[0];
          v114[0] = v29->__r_.__value_.__l.__size_;
          *(v114 + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
          v31 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v112[1]) < 0)
          {
            operator delete(*&v112[0]);
          }

          *&v112[0] = v30;
          *(&v112[0] + 1) = v114[0];
          *(v112 + 15) = *(v114 + 7);
          BYTE7(v112[1]) = v31;
          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v110.__r_.__value_.__l.__data_);
          }

          v2 = v23;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          ++v22;
        }

        while (v14 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v23 + 144, v112));
      }

      if ((SBYTE7(v112[1]) & 0x80u) == 0)
      {
        v32 = v112;
      }

      else
      {
        v32 = *&v112[0];
      }

      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v32];
      if (SBYTE7(v112[1]) < 0)
      {
        operator delete(*&v112[0]);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(v112, [v13 UTF8String]);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v2 + 144, v112);
    if (SBYTE7(v112[1]) < 0)
    {
      operator delete(*&v112[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v102 = [USDKitConverter::getMaterialsPath(v2) stringByAppendingPathComponent:v13];
    v101 = [USKObjectPath_helper objectPathWithString:v102];
    v103 = [USKHelper scene:*(v2 + 7) nodeAtPath:v101 type:USKNodeTypeMaterial_weak];
    v33 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [v102 stringByAppendingPathComponent:@"surfaceShader"]);
    v34 = [USKHelper scene:*(v2 + 7) nodeAtPath:v33 type:USKNodeTypeShader_weak];
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v34 propertyWithName:@"info:id" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"UsdPreviewSurface"}];
    [USKHelper node:v34 propertyWithName:@"outputs:surface" type:USKDataTypeToken_weak role:USKRoleTypeNone_weak];
    v35 = [v109 emission];
    if ([v109 selfIllumination])
    {
      [objc_msgSend(v109 "selfIllumination")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v109 emission] || (objc_msgSend(objc_msgSend(v109, "emission"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_msgSend(objc_msgSend(v109, "emission"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v35 = [v109 selfIllumination];
        }
      }
    }

    [v109 transparency];
    v37 = v36;
    if ([v109 transparencyMode] == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      v38 = [objc_msgSend(objc_msgSend(v109 "transparent")];
      if (__p.__r_.__value_.__s.__data_[0] == 1)
      {
        v40 = v38;
        v41 = v39;
        [v109 transparency];
        v42 = *(&v40 + 1) * 0.71516 + *&v40 * 0.212671 + v41 * 0.072169;
        v37 = 1.0 - v42 * v43;
      }
    }

    memset(v112, 0, 24);
    std::vector<MaterialMap>::reserve(v112, 8uLL);
    v44 = [v109 normal];
    std::string::basic_string[abi:nn200100]<0>(&__str, "rgb");
    MaterialMap::MaterialMap(&__p, @"normal", v44, &USKRoleTypeNormal_weak, &__str, 0);
    v45 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v46 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v45 = v46;
      v47 = *v105;
      *(v45 + 40) = v106;
      *(v45 + 24) = v47;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v48 = v108;
      *(v45 + 48) = v107;
      *(v45 + 64) = v48;
      *(&v112[0] + 1) = v45 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v49 = *(&v112[0] + 1);
    if ([objc_msgSend(v109 "lightingModelName")])
    {
      v50 = [v109 metalness];
      std::string::basic_string[abi:nn200100]<0>(&__str, "r");
      MaterialMap::MaterialMap(&__p, @"metallic", v50, &USKRoleTypeNone_weak, &__str, 0);
      v51 = *(&v112[0] + 1);
      if (*(&v112[0] + 1) >= *&v112[1])
      {
        *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(v105[0]);
        }
      }

      else
      {
        v52 = *&__p.__r_.__value_.__l.__data_;
        *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
        *v51 = v52;
        v53 = *v105;
        *(v51 + 40) = v106;
        *(v51 + 24) = v53;
        v105[1] = 0;
        v106 = 0;
        v105[0] = 0;
        v54 = v108;
        *(v51 + 48) = v107;
        *(v51 + 64) = v54;
        *(&v112[0] + 1) = v51 + 80;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v55 = [v109 roughness];
      std::string::basic_string[abi:nn200100]<0>(&__str, "r");
      MaterialMap::MaterialMap(&__p, @"roughness", v55, &USKRoleTypeNone_weak, &__str, 0);
      v56 = *(&v112[0] + 1);
      if (*(&v112[0] + 1) >= *&v112[1])
      {
        *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(v105[0]);
        }
      }

      else
      {
        v57 = *&__p.__r_.__value_.__l.__data_;
        *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
        *v56 = v57;
        v58 = *v105;
        *(v56 + 40) = v106;
        *(v56 + 24) = v58;
        v105[1] = 0;
        v106 = 0;
        v105[0] = 0;
        v59 = v108;
        *(v56 + 48) = v107;
        *(v56 + 64) = v59;
        *(&v112[0] + 1) = v56 + 80;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v60 = [v109 diffuse];
    std::string::basic_string[abi:nn200100]<0>(&__str, "rgb");
    MaterialMap::MaterialMap(&__p, @"diffuseColor", v60, &USKRoleTypeColor_weak, &__str, 0);
    v61 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v62 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v61 = v62;
      v63 = *v105;
      *(v61 + 40) = v106;
      *(v61 + 24) = v63;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v64 = v108;
      *(v61 + 48) = v107;
      *(v61 + 64) = v64;
      *(&v112[0] + 1) = v61 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__str, "rgb");
    MaterialMap::MaterialMap(&__p, @"emissiveColor", v35, &USKRoleTypeColor_weak, &__str, 0);
    v65 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v66 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v65 = v66;
      v67 = *v105;
      *(v65 + 40) = v106;
      *(v65 + 24) = v67;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v68 = v108;
      *(v65 + 48) = v107;
      *(v65 + 64) = v68;
      *(&v112[0] + 1) = v65 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v69 = [v109 transparent];
    std::string::basic_string[abi:nn200100]<0>(&__str, "a");
    *&v70 = v37;
    MaterialMap::MaterialMap(&__p, @"opacity", v69, &USKRoleTypeNone_weak, &__str, [MEMORY[0x277CCABB0] numberWithFloat:v70]);
    v71 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v72 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v71 = v72;
      v73 = *v105;
      *(v71 + 40) = v106;
      *(v71 + 24) = v73;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v74 = v108;
      *(v71 + 48) = v107;
      *(v71 + 64) = v74;
      *(&v112[0] + 1) = v71 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v75 = [v109 ambientOcclusion];
    std::string::basic_string[abi:nn200100]<0>(&__str, "r");
    MaterialMap::MaterialMap(&__p, @"occlusion", v75, &USKRoleTypeNone_weak, &__str, 0);
    v76 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v77 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v76 = v77;
      v78 = *v105;
      *(v76 + 40) = v106;
      *(v76 + 24) = v78;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v79 = v108;
      *(v76 + 48) = v107;
      *(v76 + 64) = v79;
      *(&v112[0] + 1) = v76 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v80 = *(&v112[0] + 1);
    v81 = *&v112[0];
    if (*&v112[0] != *(&v112[0] + 1))
    {
      do
      {
        v82 = *(v81 + 8);
        if (v82 && [v82 contents])
        {
          *(v81 + 56) = USDKitConverter::textureFileWithMaterialProperty(v2, *(v81 + 8));
        }

        v81 += 80;
      }

      while (v81 != v80);
      v80 = *(&v112[0] + 1);
      v81 = *&v112[0];
    }

    v97 = v49;
    v98 = v33;
    v99 = v34;
    if (v80 != v81)
    {
      v83 = 0;
      do
      {
        v84 = v81 + 80 * v83;
        if (*(v84 + 56))
        {
          v85 = *(v84 + 64) == 0;
        }

        else
        {
          v85 = 0;
        }

        if (v85)
        {
          v87 = *v84;
          memset(&__p, 0, sizeof(__p));
          __str.__r_.__value_.__r.__words[0] = v81 + 80 * v83;
          std::vector<Statement *>::push_back[abi:nn200100](&__p, &__str);
          v86 = v83 + 1;
          v80 = *(&v112[0] + 1);
          v81 = *&v112[0];
          if (v83 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v112[0] + 1) - *&v112[0]) >> 4))
          {
            v88 = 80 * v83;
            v89 = v86;
            do
            {
              v90 = v81 + v88;
              if ([*(v84 + 56) isEqualToString:*(v81 + v88 + 136)])
              {
                v87 = [objc_msgSend(v87 stringByAppendingString:{@"_", "stringByAppendingString:", *(v90 + 80)}];
                __str.__r_.__value_.__r.__words[0] = v90 + 80;
                std::vector<Statement *>::push_back[abi:nn200100](&__p, &__str);
              }

              ++v89;
              v80 = *(&v112[0] + 1);
              v81 = *&v112[0];
              v88 += 80;
            }

            while (v89 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v112[0] + 1) - *&v112[0]) >> 4));
          }

          v91 = *&__p.__r_.__value_.__l.__data_;
          v92 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
          {
            do
            {
              v93 = *v92++;
              *(v93 + 64) = v87;
            }

            while (v92 != *(&v91 + 1));
          }

          if (v91)
          {
            __p.__r_.__value_.__l.__size_ = v91;
            operator delete(v91);
            v80 = *(&v112[0] + 1);
            v81 = *&v112[0];
          }
        }

        else
        {
          v86 = v83 + 1;
        }

        v83 = v86;
      }

      while (v86 < 0xCCCCCCCCCCCCCCCDLL * ((v80 - v81) >> 4));
    }

    for (i = v101; v81 != v80; v81 += 80)
    {
      USDKitConverter::processTextureShader(v2, v81, (v97 - 80), v102, v99, v103, v101);
    }

    v95 = [USKHelper node:v103 propertyWithName:@"outputs:surface" type:USKDataTypeToken_weak role:USKRoleTypeNone_weak];
    v113 = [v98 pathByAppendingPropertyComponent:@"outputs:surface"];
    [v95 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v113, 1)}];
    __str.__r_.__value_.__r.__words[0] = &v109;
    std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v100, &v109)[5] = v101;
    __p.__r_.__value_.__r.__words[0] = v112;
    std::vector<MaterialMap>::__destroy_vector::operator()[abi:nn200100](&__p);
  }

  return i;
}

void sub_21C125454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  a18 = (v46 - 176);
  std::vector<MaterialMap>::__destroy_vector::operator()[abi:nn200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t USDKitConverter::getMaterialsPath(USDKitConverter *this)
{
  result = *(this + 5);
  if (!result)
  {
    v3 = [*(this + 3) stringByAppendingPathComponent:@"Materials"];
    *(this + 5) = v3;
    v4 = [USKObjectPath_helper objectPathWithString:v3];
    [USKHelper scene:*(this + 7) nodeAtPath:v4 type:USKNodeTypeScope_weak];
    return *(this + 5);
  }

  return result;
}

void *std::vector<MaterialMap>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<MaterialMap>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_21C125710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MaterialMap>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t USDKitConverter::textureFileWithMaterialProperty(USDKitConverter *this, SCNMaterialProperty *a2)
{
  v4 = [(SCNMaterialProperty *)a2 contents];
  v5 = *(this + 22);
  if (v5)
  {
    v6 = (this + 176);
    do
    {
      v7 = v5[4];
      v8 = v7 >= v4;
      v9 = v7 < v4;
      if (v8)
      {
        v6 = v5;
      }

      v5 = v5[v9];
    }

    while (v5);
    if (v6 != (this + 176) && v4 >= v6[4])
    {
      v54 = [(SCNMaterialProperty *)a2 contents];
      *v55 = &v54;
      return std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 168, &v54)[5];
    }
  }

  v54 = 0;
  [(SCNMaterialProperty *)a2 contents];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([(SCNMaterialProperty *)a2 contents], objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [(SCNMaterialProperty *)a2 __runtimeResolvedPath];
    {
      v15 = File;
      v16 = [-[_anonymous_namespace_ pathExtension](File "pathExtension")];
      v17 = [-[_anonymous_namespace_ lastPathComponent](v15 "lastPathComponent")];
      v55[0] = 0;
      updated = USDKitConverter::updateTexturePaths(this, v19, v15, v55);
      if (updated < 1)
      {
        v21 = @"textures";
      }

      else
      {
        v21 = [@"textures" stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", updated), "stringValue")}];
      }

      v22 = [(__CFString *)v21 stringByAppendingPathComponent:v19];
      if (v55[0])
      {
        v25 = [*(this + 2) stringByAppendingPathComponent:v22];
        v26 = [MEMORY[0x277CCAA00] defaultManager];
        [v26 createDirectoryAtPath:objc_msgSend(*(this + 2) withIntermediateDirectories:"stringByAppendingPathComponent:" attributes:v21) error:{1, 0, &v54}];
        [v26 copyItemAtPath:v15 toPath:v25 error:&v54];
      }

      return v22;
    }
  }

  else
  {
    [(SCNMaterialProperty *)a2 contents];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [@"textures" stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"texgen_%lu.png", *(this + 23))}];
      v23 = [*(this + 2) stringByAppendingPathComponent:v22];
      v53 = [(SCNMaterialProperty *)a2 contents];
      *v55 = &v53;
      std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 168, &v53)[5] = v22;
      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v24 = [(SCNMaterialProperty *)a2 contents];
      [v24 writeToURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", v23)}];
      return v22;
    }
  }

  v27 = [(SCNMaterialProperty *)a2 getC3DImageRef];
  v53 = v27;
  if (!v27)
  {
    return 0;
  }

  v28 = v27;
  v29 = *(this + 25);
  if (v29)
  {
    v30 = this + 192;
    v31 = (this + 200);
    do
    {
      v32 = v29[4];
      v8 = v32 >= v28;
      v33 = v32 < v28;
      if (v8)
      {
        v31 = v29;
      }

      v29 = v29[v33];
    }

    while (v29);
    if (v31 != (this + 200) && v28 >= v31[4])
    {
      v41 = MEMORY[0x277CCACA8];
      *v55 = &v53;
      v42 = std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::__emplace_unique_key_args<__C3DImage *,std::piecewise_construct_t const&,std::tuple<__C3DImage * const&>,std::tuple<>>(v30, &v53);
      v43 = v42 + 5;
      if (*(v42 + 63) < 0)
      {
        v43 = *v43;
      }

      return [v41 stringWithUTF8String:v43];
    }
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v48 = ___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke;
  v49 = &unk_278300198;
  v50 = a2;
  v51 = this;
  v52 = v28;
  v34 = C3DImageCopyUSDZEmbeddedData(v28, 0);
  if (!v34 && ((Data = C3DImageGetData(v28)) == 0 || (v34 = CFRetain(Data)) == 0) || (v35 = v34, v36 = CGImageSourceCreateWithData(v34, 0), v37 = [objc_msgSend(MEMORY[0x277CE1CB8] typeWithIdentifier:{CGImageSourceGetType(v36)), "preferredFilenameExtension"}], v46[0] = MEMORY[0x277D85DD0], v46[1] = 3221225472, v46[2] = ___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke_2, v46[3] = &__block_descriptor_40_e18_B16__0__NSString_8l, v46[4] = v35, v22 = v48(v47, v37, v46), CFRelease(v35), CFRelease(v36), !v22))
  {
    v39 = C3DImageCopyCGImage(v28);
    if (v39)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = ___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke_3;
      v45[3] = &__block_descriptor_40_e18_B16__0__NSString_8l;
      v45[4] = v39;
      return v48(v47, @"png", v45);
    }

    return 0;
  }

  return v22;
}

id USDKitConverter::processTextureShader(uint64_t a1, unsigned __int16 *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v176[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 1);
  if (!v8 || ![v8 contents])
  {
    return 0;
  }

  if (!*(a2 + 7))
  {
    v17 = [@"inputs:" stringByAppendingString:*a2];
    [*(a2 + 1) contents];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = [*(a2 + 1) contents];
    if (isKindOfClass)
    {
      *&m.m11 = 0;
      v170 = 0.0;
      *&v171.m11 = 0;
      *&v169.m11 = 0;
      [v19 getRed:&m green:&v171 blue:&v169 alpha:&v170];
      *&v21 = *&m.m11;
      v22 = (a2 + 12);
      v23 = *(a2 + 47);
      if ((v23 & 0x80) != 0)
      {
        if (*(a2 + 4) == 1)
        {
          v98 = **v22;
          if (v98 == 103)
          {
            goto LABEL_67;
          }

          if (v98 == 114)
          {
            goto LABEL_47;
          }
        }

        if (*(a2 + 4) == 1)
        {
          v24 = **v22;
          goto LABEL_50;
        }
      }

      else if (v23 == 1)
      {
        v24 = *v22;
        if (v24 != 103)
        {
          if (v24 != 114)
          {
LABEL_50:
            if (v24 == 98)
            {
              v162 = *&v169.m11;
              v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:*(a2 + 2), v170, v21];
              *&v100 = MaterialMap::getFloatScale(a2);
              v101 = v162;
              goto LABEL_68;
            }

            goto LABEL_52;
          }

LABEL_47:
          v167 = *&m.m11;
          v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:*(a2 + 2), v170];
          *&v100 = MaterialMap::getFloatScale(a2);
          v101 = v167;
LABEL_68:
          *&v100 = *&v100 * v101;
          goto LABEL_69;
        }

LABEL_67:
        v164 = *&v171.m11;
        *&v20 = *&v169.m11;
        v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:*(a2 + 2), v170, v21, v20];
        *&v100 = MaterialMap::getFloatScale(a2);
        v101 = v164;
        goto LABEL_68;
      }

LABEL_52:
      if ((v23 & 0x80) != 0)
      {
        if (*(a2 + 4) != 1)
        {
LABEL_59:
          v163 = *&v171.m11;
          v168 = *&m.m11;
          v105 = *(a2 + 2);
LABEL_71:
          v110 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat3_weak role:v105, v170];
          v111 = __PAIR64__(LODWORD(v163), LODWORD(v168));
LABEL_72:
          [v110 setFloat3Value:*&v111];
          return 0;
        }

        v22 = *v22;
      }

      else if (v23 != 1)
      {
        goto LABEL_59;
      }

      v105 = *(a2 + 2);
      if (*v22 != 97)
      {
        v163 = *&v171.m11;
        v168 = *&m.m11;
        goto LABEL_71;
      }

      v106 = v170;
      v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:v105];
      *&v100 = MaterialMap::getFloatScale(a2) * v106;
LABEL_69:
      [v99 setFloatValue:v100];
      return 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    [objc_msgSend(*(a2 + 1) "contents")];
    v166 = v91;
    v92 = a2 + 12;
    v93 = *(a2 + 47);
    if (v93 < 0)
    {
      if (*(a2 + 4) != 3)
      {
LABEL_66:
        v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:*(a2 + 2)];
        *&v100 = *v166.i32 * MaterialMap::getFloatScale(a2);
        goto LABEL_69;
      }

      v92 = *v92;
    }

    else if (v93 != 3)
    {
      goto LABEL_66;
    }

    v107 = *v92;
    v108 = *(v92 + 2);
    if (v107 == 26482 && v108 == 98)
    {
      v110 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat3_weak role:*(a2 + 2)];
      v111 = vdupq_lane_s32(v166, 0).u64[0];
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  v165 = a1;
  v160 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a4 stringByAppendingPathComponent:{objc_msgSend(*(a2 + 6), "stringByAppendingString:", @"_texCoordReader"}]);
  v15 = [USKHelper scene:"scene:nodeAtPath:type:" nodeAtPath:*(a1 + 56) type:?];
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v15 propertyWithName:@"info:id" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"UsdPrimvarReader_float2"}];
  [USKHelper node:v15 propertyWithName:@"outputs:result" type:USKDataTypeFloat2_weak role:USKRoleTypeNone_weak];
  v16 = [USKHelper node:v15 propertyWithName:@"inputs:varname" type:USKDataTypeToken_weak role:USKRoleTypeNone_weak];
  if ([*a2 isEqualToString:*a3])
  {
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a6 propertyWithName:@"inputs:frame:stPrimvarName" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", *(a2 + 6))}];
    v176[0] = [a7 pathByAppendingPropertyComponent:@"inputs:frame:stPrimvarName"];
    [v16 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v176, 1)}];
  }

  else if (!a3[7] || ([a3[6] isEqualToString:*(a2 + 6)] & 1) == 0)
  {
    [v16 setTokenValue:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", *(a2 + 6))}];
  }

  memset(&v169, 0, sizeof(v169));
  v25 = *(a2 + 1);
  if (v25)
  {
    [v25 contentsTransform];
  }

  m = v169;
  if (!SCNMatrix4IsIdentity(&m))
  {
    v26 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a4 stringByAppendingPathComponent:{objc_msgSend(*(a2 + 8), "stringByAppendingString:", @"_transform2D"}]);
    v29 = [USKHelper scene:*(a1 + 56) nodeAtPath:v26 type:USKNodeTypeShader_weak];
    [v29 setDictionaryMetadataWithKey:@"sdrMetadata" dictionaryKey:@"role" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"math"}];
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v29 propertyWithName:@"info:id" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"UsdTransform2d"}];
    v30 = [USKHelper node:v29 propertyWithName:@"inputs:in" type:USKDataTypeFloat2_weak role:USKRoleTypeNone_weak];
    v175 = [v160 pathByAppendingPropertyComponent:@"outputs:result"];
    [v30 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v175, 1)}];
    v31 = 0;
    v32 = *&v169.m11;
    v33 = *MEMORY[0x277D860B8];
    v34 = *(MEMORY[0x277D860B8] + 16);
    v35 = vmulq_f32(v32, v32);
    *v35.i8 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    v36 = vmulq_f32(*&v169.m21, *&v169.m21);
    *v36.i8 = vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
    v37 = vsqrt_f32(vadd_f32(vzip1_s32(*v35.i8, *v36.i8), vzip2_s32(*v35.i8, *v36.i8)));
    v38 = vmulq_f32(*&v169.m31, *&v169.m31);
    v39 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
    *v39.i32 = sqrtf(vaddv_f32(v39));
    *v40.f32 = v37;
    v40.i64[1] = __PAIR64__(1.0, v39.u32[0]);
    __asm { FMOV            V4.4S, #1.0 }

    v45 = vdivq_f32(_Q4, v40);
    v46 = *(MEMORY[0x277D860B8] + 32);
    v47 = *(MEMORY[0x277D860B8] + 48);
    v48 = vdupq_lane_s32(v37, 0);
    v49 = vdupq_lane_s32(v37, 1);
    v50 = vdivq_f32(*&v169.m21, v49);
    v51 = vdivq_f32(*&v169.m31, vdupq_lane_s32(v39, 0));
    v52 = vzip1q_s32(v50, v47);
    v171 = v169;
    do
    {
      *(&m.m11 + v31) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v171.m11 + v31))), v34, *(&v171.m11 + v31), 1), v46, *(&v171.m11 + v31), 2), xmmword_21C27F7F0, *(&v171.m11 + v31), 3);
      v31 += 16;
    }

    while (v31 != 64);
    v53 = 0;
    v58.i64[0] = 0;
    v58.i32[2] = 0;
    v54 = vdivq_f32(v32, v48);
    v55 = vzip1q_s32(v54, v51);
    v56.i64[0] = 0;
    v56.i64[1] = v45.u32[2];
    v57.i32[0] = 0;
    v57.i64[1] = 0;
    v57.i32[1] = v45.i32[1];
    v58.i32[3] = v45.i32[3];
    v171 = m;
    do
    {
      *(&m.m11 + v53) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45.u32[0], COERCE_FLOAT(*(&v171.m11 + v53))), v57, *(&v171.m11 + v53), 1), v56, *(&v171.m11 + v53), 2), v58, *(&v171.m11 + v53), 3);
      v53 += 16;
    }

    while (v53 != 64);
    v59 = 0;
    v60 = vzip1q_s32(v55, v52);
    v61 = vzip2q_s32(v50, v47);
    v62 = vzip2q_s32(v54, v51);
    v63 = vzip1q_s32(v62, v61);
    v64 = vzip2q_s32(v55, v52);
    v65 = vzip2q_s32(v62, v61);
    v171 = m;
    v27 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
    p_info = &OBJC_METACLASS___SCNMovieExportOperation.info;
    do
    {
      *(&m.m11 + v59) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*(&v171.m11 + v59))), v64, *(&v171.m11 + v59), 1), v63, *(&v171.m11 + v59), 2), v65, *(&v171.m11 + v59), 3);
      v59 += 16;
    }

    while (v59 != 64);
    v66 = 0;
    v171 = m;
    do
    {
      *(&m.m11 + v66) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v171.m11 + v66))), v34, *(&v171.m11 + v66), 1), v46, *(&v171.m11 + v66), 2), xmmword_21C27F800, *(&v171.m11 + v66), 3);
      v66 += 16;
    }

    while (v66 != 64);
    v69 = vmulq_n_f32(v54, *v37.i32);
    v67 = vmulq_f32(v49, v50);
    v68 = vmulq_n_f32(v51, *v39.i32);
    v70 = vnegq_f32(v69);
    v69.i32[1] = v70.i32[1];
    v70.f32[0] = -v67.f32[0];
    v71 = v67;
    v71.f32[0] = -v67.f32[0];
    v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vnegq_f32(v71)), v68, vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL));
    v73 = vmulq_f32(v69, vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL));
    _NF = (v73.f32[2] + vaddv_f32(*v73.f32)) < 0.0;
    v74 = 1.0;
    if (_NF)
    {
      v74 = -1.0;
    }

    v75 = vmulq_f32(v69, v69);
    v76 = vmulq_f32(v71, v71);
    v77 = vadd_f32(vzip1_s32(*v75.i8, *v76.i8), vzip2_s32(*v75.i8, *v76.i8));
    v78 = vextq_s8(v76, v76, 8uLL);
    *v78.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v75, v75, 8uLL), *v78.f32), v77));
    v79 = vmulq_f32(v68, v68);
    v78.i32[2] = sqrtf(v79.f32[2] + vaddv_f32(*v79.f32));
    v80 = vmulq_n_f32(v78, v74);
    v81 = vcltzq_f32(v80);
    v82 = vmvnq_s8(vorrq_s8(v81, vcgezq_f32(v80)));
    v82.i32[3] = v82.i32[2];
    v82.i32[0] = vmaxvq_u32(v82);
    v81.i32[0] = -1;
    v83 = 0.0;
    v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v82, v81), 0), v80, 0);
    v85 = vceqzq_f32(v84);
    v85.i32[3] = v85.i32[2];
    if ((vmaxvq_u32(v85) & 0x80000000) != 0)
    {
      v84.i64[0] = 0;
LABEL_77:
      v159 = *&m.m41;
      v161 = *v84.i64;
      v115 = vmulq_f32(v47, v47);
      v116 = vadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL));
      v116.f32[0] = vaddv_f32(v116);
      if (v116.f32[0] != 0.0)
      {
        v117 = v47.f32[2];
        v118 = v47.f32[1];
        v119 = v47.f32[3];
        v120 = (vmuls_lane_f32(-v47.f32[1], v47, 3) + (v47.f32[0] * v47.f32[2])) / v116.f32[0];
        if (v120 <= 0.499)
        {
          if (v120 >= -0.499)
          {
            v121 = *&v115.i32[1];
            v122 = v115.i64[1];
            v156 = v47;
            v157 = *v115.i32;
            *&v123 = atan2f(((v47.f32[2] * v47.f32[3]) + (v47.f32[0] * v47.f32[1])) + ((v47.f32[2] * v47.f32[3]) + (v47.f32[0] * v47.f32[1])), *&v115.i32[3] + ((*v115.i32 - *&v115.i32[1]) - *&v115.i32[2]));
            v158 = v123;
            atan2f(((v156.f32[0] * v119) + (v118 * v117)) + ((v156.f32[0] * v119) + (v118 * v117)), *(&v122 + 1) + (*&v122 + (-v157 - v121)));
            asinf(v120 * -2.0);
            v116.i32[1] = HIDWORD(v158);
            v83 = *&v158;
          }

          else
          {
            atan2f(v47.f32[0], v47.f32[3]);
            v83 = 0.0;
          }

          *v84.i64 = v161;
        }

        else
        {
          atan2f(v47.f32[0], v47.f32[3]);
          *v84.i64 = v161;
          v83 = 0.0;
        }
      }

      v124 = v83;
      if (v83 != 0.0)
      {
        v125 = [USKHelper node:v29 propertyWithName:@"inputs:rotation" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
        v126 = v124 / 3.14159265 * 180.0;
        *&v126 = v126;
        [v125 setFloatValue:v126];
        *v84.i64 = v161;
      }

      if (v84.f32[0] != 0.0 || v84.f32[1] != 0.0)
      {
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v29 propertyWithName:@"inputs:scale" type:USKDataTypeFloat2_weak role:{USKRoleTypeNone_weak, *&v156), "setFloat2Value:", v161}];
      }

      if (v159.f32[0] != 0.0 || (v116.i32[0] = v159.i32[1], v159.f32[1] != 0.0))
      {
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v29 propertyWithName:@"inputs:translation" type:USKDataTypeFloat2_weak role:{USKRoleTypeNone_weak, *&v156), "setFloat2Value:", COERCE_DOUBLE(__PAIR64__(vnegq_f32(v159).u32[1], v159.u32[0]))}];
      }

      [USKHelper node:v29 propertyWithName:@"outputs:result" type:USKDataTypeFloat2_weak role:USKRoleTypeNone_weak, *&v116, *&v156];
      goto LABEL_93;
    }

    v70.i32[1] = v67.i32[1];
    v70.i32[2] = v67.i32[2];
    v86 = vdivq_f32(v69, vdupq_lane_s32(*v84.f32, 0));
    v87 = vdivq_f32(v70, vdupq_lane_s32(*v84.f32, 1));
    v88 = vdivq_f32(v68, vdupq_laneq_s32(v84, 2));
    v89 = v88.f32[2] + (*v86.i32 + v87.f32[1]);
    if (v89 > 0.0)
    {
      *v88.f32 = vsub_f32(*&vzip2q_s32(v87, vuzp1q_s32(v87, v88)), *&vtrn2q_s32(v88, vzip2q_s32(v88, v86)));
      v88.f32[2] = *&v86.i32[1] - v87.f32[0];
      v90 = v89 + 1.0;
      v88.f32[3] = v89 + 1.0;
LABEL_76:
      v87.i32[0] = 0;
      v113 = vmulq_n_f32(v88, 0.5 / sqrtf(v90));
      v114 = vmvnq_s8(vceqq_f32(v113, v113));
      v114.i32[0] = vmaxvq_u32(v114);
      v47 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v87, v114), 0), v47, v113);
      goto LABEL_77;
    }

    if (*v86.i32 <= v87.f32[1] || *v86.i32 <= v88.f32[2])
    {
      if (v87.f32[1] > v88.f32[2])
      {
        v95 = v87;
        v95.f32[1] = (v87.f32[1] + 1.0) - *v86.i32;
        v95.i32[3] = v88.i32[0];
        v96 = vzip2q_s32(vzip1q_s32(v86, v88), vtrn1q_s32(v88, v86));
        v87 = vaddq_f32(v87, v96);
        v97 = vsubq_f32(v95, v96);
        v88 = vtrn2q_s32(vrev64q_s32(v87), v97);
        v90 = *&v97.i32[1];
        goto LABEL_76;
      }

      *v88.f32 = vadd_f32(*v88.f32, *&vzip2q_s32(v86, v87));
      v90 = ((v88.f32[2] + 1.0) - *v86.i32) - v87.f32[1];
      v88.f32[2] = v90;
      v104 = *&v86.i32[1] - v87.f32[0];
    }

    else
    {
      v90 = ((*v86.i32 + 1.0) - v87.f32[1]) - v88.f32[2];
      *&v102 = v87.f32[0] + *&v86.i32[1];
      v103 = v88.f32[0] + *&v86.i32[2];
      v104 = v87.f32[2] - v88.f32[1];
      v88.i64[0] = __PAIR64__(v102, LODWORD(v90));
      v88.f32[2] = v103;
    }

    v88.f32[3] = v104;
    goto LABEL_76;
  }

  v26 = v160;
  v27 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
  p_info = (&OBJC_METACLASS___SCNMovieExportOperation + 32);
LABEL_93:
  v112 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a4 stringByAppendingPathComponent:{objc_msgSend(*(a2 + 8), "stringByAppendingString:", @"_texture"}]);
  v127 = [USKHelper scene:*(v165 + 56) nodeAtPath:v112 type:USKNodeTypeShader_weak];
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v127 propertyWithName:@"info:id" type:USKDataTypeToken_weak role:{v27[88]), "setTokenValue:", objc_msgSend(p_info + 321, "tokenWithString:", @"UsdUVTexture"}];
  if ([*a2 isEqualToString:*a3])
  {
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v127 propertyWithName:@"inputs:scale" type:USKDataTypeFloat4_weak role:{v27[88]), "setFloat4Value:", 2.00000048}];
    v128 = [USKHelper node:v127 propertyWithName:@"inputs:bias" type:USKDataTypeFloat4_weak role:v27[88]];
    __asm { FMOV            V0.4S, #-1.0 }

    [v128 setFloat4Value:*&_Q0];
  }

  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v127 propertyWithName:@"inputs:file" type:USKDataTypeResourcePath_weak role:{v27[88]), "setResourcePath:", *(a2 + 7)}];
  if (v26)
  {
    v130 = [USKHelper node:v127 propertyWithName:@"inputs:st" type:USKDataTypeFloat2_weak role:v27[88]];
    v174 = [v26 pathByAppendingPropertyComponent:@"outputs:result"];
    [v130 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v174, 1)}];
  }

  v131 = [USKHelper node:v127 propertyWithName:@"inputs:wrapS" type:USKDataTypeToken_weak role:v27[88]];
  v132 = [*(a2 + 1) wrapS] - 1;
  if (v132 > 3)
  {
    v133 = @"repeat";
  }

  else
  {
    v133 = off_278300218[v132];
  }

  [v131 setTokenValue:{objc_msgSend(p_info + 321, "tokenWithString:", v133)}];
  v134 = [USKHelper node:v127 propertyWithName:@"inputs:wrapT" type:USKDataTypeToken_weak role:v27[88]];
  v135 = [*(a2 + 1) wrapT] - 1;
  if (v135 > 3)
  {
    v136 = @"repeat";
  }

  else
  {
    v136 = off_278300218[v135];
  }

  [v134 setTokenValue:{objc_msgSend(p_info + 321, "tokenWithString:", v136)}];
  if ([*(a2 + 1) minificationFilter])
  {
    v137 = [USKHelper node:v127 propertyWithName:@"inputs:minFilter" type:USKDataTypeToken_weak role:v27[88]];
    v138 = [*(a2 + 1) minificationFilter];
    if (v138 == 1)
    {
      v139 = @"nearest";
    }

    else
    {
      v139 = &stru_282DCC058;
    }

    if (v138 == 2)
    {
      v140 = @"linear";
    }

    else
    {
      v140 = v139;
    }

    [v137 setTokenValue:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v140)}];
  }

  if ([*(a2 + 1) magnificationFilter])
  {
    v141 = [USKHelper node:v127 propertyWithName:@"inputs:magFilter" type:USKDataTypeToken_weak role:v27[88]];
    v142 = [*(a2 + 1) magnificationFilter];
    if (v142 == 1)
    {
      v143 = @"nearest";
    }

    else
    {
      v143 = &stru_282DCC058;
    }

    if (v142 == 2)
    {
      v144 = @"linear";
    }

    else
    {
      v144 = v143;
    }

    [v141 setTokenValue:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v144)}];
  }

  if (*(a2 + 47) >= 0)
  {
    v145 = a2 + 12;
  }

  else
  {
    v145 = *(a2 + 3);
  }

  v146 = [MEMORY[0x277CCACA8] stringWithUTF8String:v145];
  v147 = *(a2 + 47);
  if ((v147 & 0x80u) != 0)
  {
    v147 = *(a2 + 4);
  }

  if (v147 == 1)
  {
    v148 = &USKDataTypeFloat_weak;
  }

  else
  {
    v148 = &USKDataTypeFloat3_weak;
  }

  v149 = *v148;
  if ([*(a2 + 1) textureComponents] == 8)
  {
    v150 = USKDataTypeFloat_weak;
    v151 = @"r";
  }

  else if ([*(a2 + 1) textureComponents] == 4)
  {
    v150 = USKDataTypeFloat_weak;
    v151 = @"g";
  }

  else if ([*(a2 + 1) textureComponents] == 2)
  {
    v150 = USKDataTypeFloat_weak;
    v151 = @"b";
  }

  else
  {
    v152 = [*(a2 + 1) textureComponents];
    if (v152 == 1)
    {
      v151 = @"a";
    }

    else
    {
      v151 = v146;
    }

    if (v152 == 1)
    {
      v150 = USKDataTypeFloat_weak;
    }

    else
    {
      v150 = v149;
    }
  }

  v153 = [@"outputs:" stringByAppendingString:v151];
  [USKHelper node:v127 propertyWithName:v153 type:v150 role:v27[88]];
  v154 = +[USKHelper node:propertyWithName:type:role:](USKHelper, "node:propertyWithName:type:role:", a5, [@"inputs:" stringByAppendingString:*a2], v150, *(a2 + 2));
  v173 = [v112 pathByAppendingPropertyComponent:v153];
  [v154 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v173, 1)}];
  return v112;
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<MaterialMap>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<MaterialMap>,MaterialMap*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = v6[4];
      *(a4 + 48) = v6[3];
      *(a4 + 64) = v9;
      v6 += 5;
      a4 += 80;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      v5 += 10;
    }
  }
}

uint64_t std::__split_buffer<MaterialMap>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MaterialMap>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MaterialMap>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 80;
      *(a1 + 16) = v2 - 80;
      if (*(v2 - 33) < 0)
      {
        operator delete(*(v2 - 56));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<MaterialMap>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[4];
  *(v7 + 48) = a2[3];
  *(v7 + 64) = v10;
  *&v19 = 80 * v2 + 80;
  v11 = *(a1 + 8);
  v12 = 80 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<MaterialMap>,MaterialMap*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<MaterialMap>::~__split_buffer(&v17);
  return v16;
}

void sub_21C12722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MaterialMap>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *MaterialMap::MaterialMap(std::string *a1, std::string::size_type a2, void *a3, std::string::size_type *a4, std::string *__str, std::string::size_type a6)
{
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__l.__size_ = 0;
  a1[2].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__r.__words[0] = @"st";
  a1->__r_.__value_.__r.__words[0] = a2;
  a1->__r_.__value_.__l.__size_ = a3;
  a1->__r_.__value_.__r.__words[2] = *a4;
  std::string::operator=(a1 + 1, __str);
  if ([a3 mappingChannel] >= 1)
  {
    a1[2].__r_.__value_.__r.__words[0] = [@"st" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(a3, "mappingChannel")), "stringValue")}];
  }

  a1[3].__r_.__value_.__r.__words[0] = a6;
  return a1;
}

void sub_21C1272F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t USDKitConverter::updateTexturePaths(USDKitConverter *this, NSString *a2, NSString *a3, BOOL *a4)
{
  *a4 = 1;
  std::string::basic_string[abi:nn200100]<0>(v26, -[NSString UTF8String](a2, "UTF8String"));
  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](a3, "UTF8String"));
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 216, v26);
  v8 = v7;
  if ((this + 224) == v7)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<std::string>::push_back[abi:nn200100](&v21, __p);
    v28 = v26;
    v19 = (std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 216, v26) + 56);
    if (v19 != &v21)
    {
      std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(v19, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
    }

    v29 = &v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v29);
    v11 = 0;
  }

  else
  {
    v9 = v7[7];
    v10 = v7[8] - v9;
    if (v10)
    {
      v11 = 0;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      if ((v25 & 0x80u) == 0)
      {
        v13 = v25;
      }

      else
      {
        v13 = __p[1];
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if (v12 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v12;
      }

      while (1)
      {
        v16 = *(v9 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v9 + 8);
        }

        if (v16 == v13)
        {
          v18 = v17 >= 0 ? v9 : *v9;
          if (!memcmp(v18, v14, v13))
          {
            break;
          }
        }

        ++v11;
        v9 += 24;
        if (v15 == v11)
        {
          goto LABEL_20;
        }
      }

      *a4 = 0;
    }

    else
    {
LABEL_20:
      std::vector<std::string>::push_back[abi:nn200100]((v8 + 7), __p);
      v11 = -1431655765 * ((v8[8] - v8[7]) >> 3) - 1;
    }
  }

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  return v11;
}

void sub_21C127508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v7 = [@"textures" stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"texgen_%lu", *(v6 + 184)), "stringByAppendingPathExtension:", a2)}];
  v8 = [*(v6 + 16) stringByAppendingPathComponent:v7];
  v12 = [*(a1 + 32) contents];
  v13 = &v12;
  std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v6 + 168, &v12)[5] = v7;
  v9 = [v7 UTF8String];
  v13 = (a1 + 48);
  v10 = std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::__emplace_unique_key_args<__C3DImage *,std::piecewise_construct_t const&,std::tuple<__C3DImage * const&>,std::tuple<>>(v6 + 192, (a1 + 48));
  MEMORY[0x21CF074C0](v10 + 5, v9);
  if ((*(a3 + 16))(a3, v8))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

BOOL ___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke_3(uint64_t a1, const __CFString *a2)
{
  v3 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  v4 = CGImageDestinationCreateWithURL(v3, [*MEMORY[0x277CE1E10] identifier], 1uLL, 0);
  CFRelease(v3);
  if (v4)
  {
    CGImageDestinationAddImage(v4, *(a1 + 32), 0);
    CGImageDestinationFinalize(v4);
    CFRelease(*(a1 + 32));
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  CFRelease(v5);
  return v4 != 0;
}

_anonymous_namespace_ *anonymous namespace::findFile(_anonymous_namespace_ *this, objc_object *a2)
{
  v2 = this;
  if (this)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [MEMORY[0x277CCAA00] defaultManager];
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![-[_anonymous_namespace_ query](v2 "query")])
      {
        v2 = [(_anonymous_namespace_ *)v2 path];
        v3 = [MEMORY[0x277CCAA00] defaultManager];
        if (v2)
        {
LABEL_4:
          if ([v3 fileExistsAtPath:v2])
          {
            return v2;
          }
        }
      }
    }

    else
    {
      [MEMORY[0x277CCAA00] defaultManager];
    }

    return 0;
  }

  return v2;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:nn200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:nn200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

void *std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::__emplace_unique_key_args<__C3DImage *,std::piecewise_construct_t const&,std::tuple<__C3DImage * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

float MaterialMap::getFloatScale(MaterialMap *this)
{
  if (!*(this + 9))
  {
    return 1.0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1.0;
  }

  v2 = *(this + 9);

  [v2 floatValue];
  return result;
}

void std::vector<MaterialMap>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MaterialMap>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MaterialMap>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  a1[1] = v2;
}

NSString *USDKitConverter::makeUniqueBlendShapeName(USDKitConverter *this, NSString *a2, NSString *a3)
{
  v3 = a3;
  v6 = [(NSString *)a3 length];
  if (v6 > [USDKitConverter::getGeomPath(this) length])
  {
    GeomPath = USDKitConverter::getGeomPath(this);
    if ([GeomPath isEqualToString:{-[NSString substringToIndex:](v3, "substringToIndex:", objc_msgSend(USDKitConverter::getGeomPath(this), "length"))}])
    {
      v3 = -[NSString substringFromIndex:](v3, "substringFromIndex:", [USDKitConverter::getGeomPath(this) length]);
    }
  }

  v8 = [[(NSString *)v3 stringByAppendingString:@":"] stringByAppendingString:a2];
  if ([(NSString *)v8 characterAtIndex:0]== 47)
  {
    v8 = [(NSString *)v8 substringFromIndex:1];
  }

  return [(NSString *)v8 stringByReplacingOccurrencesOfString:@"/" withString:@":"];
}

unint64_t USDKitConverter::processAnimation(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return USDKitConverter::processAnimationGroup(a1, a2, a3);
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return result;
  }

  v7 = [a3 keyTimes];
  result = [v7 count];
  if (!result)
  {
    return result;
  }

  [objc_msgSend(v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 1), "doubleValue"}];
  v9 = v8;
  result = [objc_msgSend(v7 objectAtIndexedSubscript:{0), "doubleValue"}];
  v11 = v9 - v10;
  if (v9 - v10 < 0.0001)
  {
    return result;
  }

  [a3 duration];
  v13 = v12;
  v14 = [objc_msgSend(a3 "keyPath")];
  v15 = [v14 count] - 1;
  v16 = [v14 objectAtIndex:v15];
  if ([v14 count] < 2)
  {
    v17 = 0;
    goto LABEL_21;
  }

  if ([v16 isEqualToString:@"x"])
  {
    v17 = @"X";
  }

  else if ([v16 isEqualToString:@"y"])
  {
    v17 = @"Y";
  }

  else if ([v16 isEqualToString:@"z"])
  {
    v17 = @"Z";
  }

  else
  {
    if (![v16 isEqualToString:@"w"])
    {
      v17 = 0;
      if (!v15)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v17 = @"W";
  }

  v15 = [v14 count] - 2;
  v16 = [v14 objectAtIndex:v15];
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_19:
  if ([v16 isEqualToString:@"euler"])
  {
    v16 = [objc_msgSend(objc_msgSend(v14 objectAtIndex:{v15 - 1), "stringByAppendingString:", @".", "stringByAppendingString:", v16}];
  }

LABEL_21:
  v18 = v13 / v11;
  if ([v16 isEqualToString:@"transform"])
  {
    if ([v7 count])
    {
      v19 = 0;
      do
      {
        [objc_msgSend(v7 objectAtIndexedSubscript:{v19), "doubleValue"}];
        v21 = v20;
        [a3 beginTime];
        v23 = v22;
        v24 = [a3 values];
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v25 = [v24 objectAtIndexedSubscript:v19];
        if (v25)
        {
          [v25 SCNMatrix4Value];
          v114 = vcvt_hight_f64_f32(v125);
          v116 = vcvt_hight_f64_f32(v124);
          v107 = vcvt_hight_f64_f32(v123);
          v110 = vcvt_hight_f64_f32(v122);
          v26 = [USKHelper node:a2 propertyWithName:@"xformOp:transform" type:USKDataTypeDouble4x4_weak role:USKRoleTypeNone_weak, vcvtq_f64_f32(*v123.f32), vcvtq_f64_f32(*v125.f32), vcvtq_f64_f32(*v124.f32), vcvtq_f64_f32(*v122.f32)];
        }

        else
        {
          v107 = 0u;
          v110 = 0u;
          v114 = 0u;
          v124 = 0u;
          v125 = 0u;
          v116 = 0u;
          v122 = 0u;
          v123 = 0u;
          v26 = [USKHelper node:a2 propertyWithName:@"xformOp:transform" type:USKDataTypeDouble4x4_weak role:USKRoleTypeNone_weak, 0, 0, 0, 0, 0, 0, 0, 0];
        }

        v121[0] = v106;
        v121[1] = v110;
        v121[2] = v103;
        v121[3] = v107;
        v121[4] = v105;
        v121[5] = v116;
        v121[6] = v104;
        v121[7] = v114;
        v27 = (v23 + v21 * v18) / *(a1 + 504) + 0.0;
        v28 = v27;
        if (vabdd_f64(v27, v28) >= 0.001)
        {
          if (1.0 - (v27 - v28) < 0.001)
          {
            v27 = v28 + 1.0;
          }
        }

        else
        {
          v27 = v27;
        }

        [v26 setDouble4x4Value:v121 atTime:v27];
        ++v19;
      }

      while (v19 < [v7 count]);
    }

    return [*(a1 + 88) addObject:@"xformOp:transform"];
  }

  if ([v16 isEqualToString:@"position"])
  {
    if (!v17)
    {
      if ([v7 count])
      {
        v52 = 0;
        do
        {
          [objc_msgSend(v7 objectAtIndexedSubscript:{v52), "doubleValue"}];
          v54 = v53;
          [a3 beginTime];
          v56 = v55 + v54 * v18;
          [objc_msgSend(objc_msgSend(a3 "values")];
          v111 = v57;
          v118 = v58;
          v59 = [USKHelper node:a2 propertyWithName:@"xformOp:translate" type:USKDataTypeFloat3_weak role:USKRoleTypeNone_weak];
          v60 = v56 / *(a1 + 504) + 0.0;
          v61 = v60;
          if (vabdd_f64(v60, v61) >= 0.001)
          {
            if (1.0 - (v60 - v61) < 0.001)
            {
              v60 = v61 + 1.0;
            }
          }

          else
          {
            v60 = v60;
          }

          [v59 setFloat3Value:COERCE_DOUBLE(__PAIR64__(v111 atTime:{v118)), v60}];
          ++v52;
        }

        while (v52 < [v7 count]);
      }

      v40 = *(a1 + 88);
      v41 = @"xformOp:translate";
      goto LABEL_62;
    }

    v29 = [@"xformOp:translate" stringByAppendingString:v17];
    if ([v7 count])
    {
      v30 = 0;
      do
      {
        [objc_msgSend(v7 objectAtIndexedSubscript:{v30), "doubleValue"}];
        v32 = v31;
        [a3 beginTime];
        v34 = v33 + v32 * v18;
        [objc_msgSend(objc_msgSend(a3 "values")];
        v36 = v35;
        v37 = [USKHelper node:a2 propertyWithName:v29 type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
        v38 = v34 / *(a1 + 504) + 0.0;
        v39 = v38;
        if (vabdd_f64(v38, v39) >= 0.001)
        {
          if (1.0 - (v38 - v39) < 0.001)
          {
            v38 = v39 + 1.0;
          }
        }

        else
        {
          v38 = v38;
        }

        LODWORD(v39) = v36;
        [v37 setFloatValue:v39 atTime:v38];
        ++v30;
      }

      while (v30 < [v7 count]);
    }
  }

  else
  {
    if (([v16 isEqualToString:@"orientation"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"quaternion"))
    {
      if ([v7 count])
      {
        v42 = 0;
        do
        {
          [objc_msgSend(v7 objectAtIndexedSubscript:{v42), "doubleValue"}];
          v44 = v43;
          [a3 beginTime];
          v46 = v45 + v44 * v18;
          [objc_msgSend(objc_msgSend(a3 "values")];
          v108 = v47;
          v117 = v48;
          v49 = [USKHelper node:a2 propertyWithName:@"xformOp:orient" type:USKDataTypeQuatf_weak role:USKRoleTypeNone_weak];
          v50 = v46 / *(a1 + 504) + 0.0;
          v51 = v50;
          if (vabdd_f64(v50, v51) >= 0.001)
          {
            if (1.0 - (v50 - v51) < 0.001)
            {
              v50 = v51 + 1.0;
            }
          }

          else
          {
            v50 = v50;
          }

          [v49 setQuatfValue:COERCE_DOUBLE(__PAIR64__(v108 atTime:{v117)), v50}];
          ++v42;
        }

        while (v42 < [v7 count]);
      }

      v40 = *(a1 + 88);
      v41 = @"xformOp:orient";
      goto LABEL_62;
    }

    if (([v16 isEqualToString:@"eulerAngles"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"rotation.euler"))
    {
      if (!v17)
      {
        if ([v7 count])
        {
          v73 = 0;
          v109 = vdupq_n_s64(0x4066800000000000uLL);
          v112 = vdupq_n_s64(0x400921FB54442D18uLL);
          do
          {
            [objc_msgSend(v7 objectAtIndexedSubscript:{v73), "doubleValue"}];
            v75 = v74;
            [a3 beginTime];
            v77 = v76 + v75 * v18;
            [objc_msgSend(objc_msgSend(a3 "values")];
            v115 = v79;
            v119 = v78;
            v80 = [USKHelper node:a2 propertyWithName:@"xformOp:rotateXYZ" type:USKDataTypeFloat3_weak role:USKRoleTypeNone_weak];
            v81 = v77 / *(a1 + 504) + 0.0;
            v82 = v81;
            if (vabdd_f64(v81, v82) >= 0.001)
            {
              if (1.0 - (v81 - v82) < 0.001)
              {
                v81 = v82 + 1.0;
              }
            }

            else
            {
              v81 = v81;
            }

            [v80 setFloat3Value:COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v115 atTime:{v119)), v112), v109))), v81}];
            ++v73;
          }

          while (v73 < [v7 count]);
        }

        v40 = *(a1 + 88);
        v41 = @"xformOp:rotateXYZ";
        goto LABEL_62;
      }

      v29 = [@"xformOp:rotate" stringByAppendingString:v17];
      if ([v7 count])
      {
        v62 = 0;
        do
        {
          [objc_msgSend(v7 objectAtIndexedSubscript:{v62), "doubleValue"}];
          v64 = v63;
          [a3 beginTime];
          v66 = v65 + v64 * v18;
          [objc_msgSend(objc_msgSend(a3 "values")];
          v68 = v67;
          v69 = [USKHelper node:a2 propertyWithName:v29 type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
          v70 = v66 / *(a1 + 504) + 0.0;
          v71 = v70;
          if (vabdd_f64(v70, v71) >= 0.001)
          {
            if (1.0 - (v70 - v71) < 0.001)
            {
              v70 = v71 + 1.0;
            }
          }

          else
          {
            v70 = v70;
          }

          v72 = v68 / 3.14159265 * 180.0;
          *&v72 = v72;
          [v69 setFloatValue:v72 atTime:v70];
          ++v62;
        }

        while (v62 < [v7 count]);
      }
    }

    else
    {
      result = [v16 isEqualToString:@"scale"];
      if (!result)
      {
        return result;
      }

      if (!v17)
      {
        if ([v7 count])
        {
          v93 = 0;
          do
          {
            [objc_msgSend(v7 objectAtIndexedSubscript:{v93), "doubleValue"}];
            v95 = v94;
            [a3 beginTime];
            v97 = v96 + v95 * v18;
            [objc_msgSend(objc_msgSend(a3 "values")];
            v113 = v98;
            v120 = v99;
            v100 = [USKHelper node:a2 propertyWithName:@"xformOp:scale" type:USKDataTypeFloat3_weak role:USKRoleTypeNone_weak];
            v101 = v97 / *(a1 + 504) + 0.0;
            v102 = v101;
            if (vabdd_f64(v101, v102) >= 0.001)
            {
              if (1.0 - (v101 - v102) < 0.001)
              {
                v101 = v102 + 1.0;
              }
            }

            else
            {
              v101 = v101;
            }

            [v100 setFloat3Value:COERCE_DOUBLE(__PAIR64__(v113 atTime:{v120)), v101}];
            ++v93;
          }

          while (v93 < [v7 count]);
        }

        v40 = *(a1 + 88);
        v41 = @"xformOp:scale";
        goto LABEL_62;
      }

      v29 = [@"xformOp:scale" stringByAppendingString:v17];
      if ([v7 count])
      {
        v83 = 0;
        do
        {
          [objc_msgSend(v7 objectAtIndexedSubscript:{v83), "doubleValue"}];
          v85 = v84;
          [a3 beginTime];
          v87 = v86 + v85 * v18;
          [objc_msgSend(objc_msgSend(a3 "values")];
          v89 = v88;
          v90 = [USKHelper node:a2 propertyWithName:v29 type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
          v91 = v87 / *(a1 + 504) + 0.0;
          v92 = v91;
          if (vabdd_f64(v91, v92) >= 0.001)
          {
            if (1.0 - (v91 - v92) < 0.001)
            {
              v91 = v92 + 1.0;
            }
          }

          else
          {
            v91 = v91;
          }

          LODWORD(v92) = v89;
          [v90 setFloatValue:v92 atTime:v91];
          ++v83;
        }

        while (v83 < [v7 count]);
      }
    }
  }

  v40 = *(a1 + 88);
  v41 = v29;
LABEL_62:

  return [v40 addObject:v41];
}

unint64_t USDKitConverter::processAnimationGroup(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "animations")];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      USDKitConverter::processAnimation(a1, a2, [objc_msgSend(a3 "animations")]);
      result = [objc_msgSend(a3 "animations")];
    }
  }

  return result;
}

uint64_t USDKitConverter::processBlendShapeAnimations(USDKitConverter *this, SCNNode *a2)
{
  v2 = a2;
  v45 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v4 = *(this + 53);
  if (v4)
  {
    v5 = (this + 424);
    do
    {
      v6 = v4[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = v4[v8];
    }

    while (v4);
    if (v5 != (this + 424) && v5[4] <= a2 && [(SCNNode *)a2 animationKeys]&& [(NSArray *)[(SCNNode *)v2 animationKeys] count])
    {
      v9 = [(NSArray *)[(SCNNode *)v2 animationKeys] objectAtIndexedSubscript:0];
      AnimationsPath = USDKitConverter::getAnimationsPath(this);
      v13 = [USKHelper scene:*(this + 7) nodeAtPath:v12 type:USKNodeTypeSkeletalAnimation_weak];
      __p = &v43;
      v14 = std::__tree<std::__value_type<SCNNode *,Skin *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,Skin *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,Skin *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 416, &v43);
      BlendShape::setSkelAnimation(v14[5], v12, v13);
      v15 = [(NSArray *)[(SCNNode *)v43 animationKeys] count];
      __p = 0;
      v41 = 0;
      v42 = 0;
      memset(v39, 0, sizeof(v39));
      std::vector<std::vector<float>>::resize(v39, v15);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          v17 = [(NSArray *)[(SCNNode *)v43 animationKeys] objectAtIndexedSubscript:i];
          v18 = [(SCNNode *)v43 animationPlayerForKey:v17];
          if (v18)
          {
            USDKitConverter::processBlendShapeAnimation(this, v13, [objc_msgSend(v18 "animation")], &__p, v39);
          }
        }
      }

      v19 = [USKHelper node:v13 propertyWithName:@"blendShapeWeights" type:USKDataTypeFloatArray_weak role:USKRoleTypeNone_weak];
      memset(&v38, 0, sizeof(v38));
      std::vector<float>::resize(&v38, v15);
      v20 = __p;
      if (v41 != __p)
      {
        v21 = 0;
        do
        {
          v22 = v20[v21];
          if (v15)
          {
            v23 = v39[0];
            begin = v38.__begin_;
            v25 = v15;
            do
            {
              v26 = *v23;
              v23 += 3;
              *begin++ = *(v26 + 4 * v21);
              --v25;
            }

            while (v25);
          }

          v27 = v22 / *(this + 63) + 0.0;
          v28 = v27;
          if (vabdd_f64(v27, v28) >= 0.001)
          {
            if (1.0 - (v27 - v28) < 0.001)
            {
              v27 = v28 + 1.0;
            }
          }

          else
          {
            v27 = v27;
          }

          [v19 setFloatArray:v27 count:? atTime:?];
          ++v21;
          v20 = __p;
        }

        while (v21 < (v41 - __p) >> 3);
      }

      if (v38.__begin_)
      {
        v38.__end_ = v38.__begin_;
        operator delete(v38.__begin_);
      }

      v38.__begin_ = v39;
      std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&v38);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      v2 = v43;
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = [(SCNNode *)v2 childNodes];
  result = [(NSArray *)v29 countByEnumeratingWithState:&v34 objects:v44 count:16];
  v31 = result;
  if (result)
  {
    v32 = *v35;
    do
    {
      v33 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v29);
        }

        USDKitConverter::processBlendShapeAnimations(this, *(*(&v34 + 1) + 8 * v33++));
      }

      while (v31 != v33);
      result = [(NSArray *)v29 countByEnumeratingWithState:&v34 objects:v44 count:16];
      v31 = result;
    }

    while (result);
  }

  return result;
}

void sub_21C129144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *__p, char *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  __p = &a21;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t USDKitConverter::getAnimationsPath(USDKitConverter *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = [*(this + 3) stringByAppendingPathComponent:@"Animations"];
    *(this + 6) = v3;
    v4 = [USKObjectPath_helper objectPathWithString:v3];
    [USKHelper scene:*(this + 7) nodeAtPath:v4 type:USKNodeTypeScope_weak];
    return *(this + 6);
  }

  return result;
}

uint64_t BlendShape::setSkelAnimation(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 16))
  {
    v4 = result;
    v5 = *(result + 8);
    if (v5)
    {
      result = [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v5 propertyWithName:@"skel:animationSource" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", a2}];
      *(v4 + 16) = a3;
    }
  }

  return result;
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

unint64_t USDKitConverter::processBlendShapeAnimation(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return USDKitConverter::processBlendShapeAnimationGroup(a1, a2, a3, a4, a5);
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v11 = [a3 keyTimes];
      result = [v11 count];
      if (result)
      {
        [objc_msgSend(v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1), "doubleValue"}];
        v13 = v12;
        result = [objc_msgSend(v11 objectAtIndexedSubscript:{0), "doubleValue"}];
        v15 = v13 - v14;
        if (v13 - v14 >= 0.0001)
        {
          [a3 duration];
          v17 = v16;
          v18 = [objc_msgSend(a3 "keyPath")];
          v19 = [v18 objectAtIndex:{objc_msgSend(v18, "count") - 1}];
          result = [v19 length];
          if (result >= 9)
          {
            result = [objc_msgSend(v19 substringToIndex:{7), "isEqualToString:", @"weights"}];
            if (result)
            {
              v20 = [objc_msgSend(v19 substringFromIndex:{8), "intValue"}];
              std::vector<double>::resize(a4, [v11 count]);
              std::vector<float>::resize((*a5 + 24 * v20), [v11 count]);
              v21 = [a3 values];
              result = [v11 count];
              if (result)
              {
                v22 = 0;
                v23 = 24 * v20;
                v24 = v17 / v15;
                do
                {
                  [objc_msgSend(v11 objectAtIndexedSubscript:{v22), "doubleValue"}];
                  v26 = v25;
                  [a3 beginTime];
                  *(*a4 + 8 * v22) = v27 + v26 * v24;
                  [objc_msgSend(v21 objectAtIndexedSubscript:{v22), "floatValue"}];
                  *(*(*a5 + v23) + 4 * v22++) = v28;
                  result = [v11 count];
                }

                while (v22 < result);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

unint64_t USDKitConverter::processBlendShapeAnimationGroup(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = [objc_msgSend(a3 "animations")];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      USDKitConverter::processBlendShapeAnimation(a1, a2, [objc_msgSend(a3 "animations")], a4, a5);
      result = [objc_msgSend(a3 "animations")];
    }
  }

  return result;
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void USDKitConverter::processMeshSkin(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    if (!a4)
    {
      return;
    }

    [a2 simdWorldTransform];
    v46 = vcvtq_f64_f32(*v28.f32);
    v47 = vcvt_hight_f64_f32(v28);
    v48 = vcvtq_f64_f32(*v29.f32);
    v49 = vcvt_hight_f64_f32(v29);
    v50 = vcvtq_f64_f32(*v30.f32);
    v51 = vcvt_hight_f64_f32(v30);
    v52 = vcvtq_f64_f32(*v31.f32);
    v53 = vcvt_hight_f64_f32(v31);
    v32 = a4;
    v33 = a2;
    goto LABEL_15;
  }

  v9 = [a2 skinner];
  v10 = [objc_msgSend(objc_msgSend(v9 "boneWeights")];
  v11 = [objc_msgSend(v9 "boneWeights")];
  v12 = [objc_msgSend(objc_msgSend(v9 "boneIndices")];
  v13 = [objc_msgSend(v9 "boneIndices")];
  if (!v10 || !v12)
  {
    v34 = [v9 skeleton];
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = a2;
    }

    if (v9)
    {
      [v9 baseGeometryBindTransform];
      v36 = vcvt_hight_f64_f32(v49);
      v37 = vcvt_hight_f64_f32(v48);
      v38 = vcvt_hight_f64_f32(v47);
      v39 = vcvt_hight_f64_f32(v46);
      v40 = vcvtq_f64_f32(*v49.f32);
      v41 = vcvtq_f64_f32(*v48.f32);
      v42 = vcvtq_f64_f32(*v47.f32);
      v43 = vcvtq_f64_f32(*v46.f32);
    }

    else
    {
      v43 = 0uLL;
      v39 = 0uLL;
      v42 = 0uLL;
      v38 = 0uLL;
      v41 = 0uLL;
      v37 = 0uLL;
      v40 = 0uLL;
      v36 = 0uLL;
    }

    v46 = v43;
    v47 = v39;
    v48 = v42;
    v49 = v38;
    v50 = v41;
    v51 = v37;
    v52 = v40;
    v53 = v36;
    v32 = a4;
    v33 = v35;
LABEL_15:
    Skeleton::bindRigidDeformation(v32, v33, a3, &v46);
    return;
  }

  v14 = v13;
  v15 = [objc_msgSend(v9 "boneWeights")];
  v45 = [objc_msgSend(v9 "boneWeights")] * v15;
  v44 = [objc_msgSend(v9 "boneWeights")];
  v16 = [objc_msgSend(v9 "boneIndices")];
  v17 = [objc_msgSend(v9 "boneIndices")] * v16;
  v18 = [objc_msgSend(v9 "boneIndices")];
  v19 = [objc_msgSend(v9 "boneIndices")];
  if (v9)
  {
    [v9 baseGeometryBindTransform];
    v20 = vcvt_hight_f64_f32(v49);
    v21 = vcvt_hight_f64_f32(v48);
    v22 = vcvt_hight_f64_f32(v47);
    v23 = vcvt_hight_f64_f32(v46);
    v24 = vcvtq_f64_f32(*v49.f32);
    v25 = vcvtq_f64_f32(*v48.f32);
    v26 = vcvtq_f64_f32(*v47.f32);
    v27 = vcvtq_f64_f32(*v46.f32);
  }

  else
  {
    v27 = 0uLL;
    v23 = 0uLL;
    v26 = 0uLL;
    v22 = 0uLL;
    v25 = 0uLL;
    v21 = 0uLL;
    v24 = 0uLL;
    v20 = 0uLL;
  }

  v46 = v27;
  v47 = v23;
  v48 = v26;
  v49 = v22;
  v50 = v25;
  v51 = v21;
  v52 = v24;
  v53 = v20;
  Skin::addMeshSkinData(a5, a3, v10 + v11, v45, v44, (v12 + v14), v17, v18, v19, &v46);
}

id USDKitConverter::processSkeletonAnimations(USDKitConverter *this, void ***a2)
{
  result = Skeleton::findNodeWithAnimation(a2);
  if (result)
  {
    v3 = result;
    v4 = [result animationKeys];
    result = [v4 count];
    if (result)
    {
      v112 = v3;
      v5 = 0;
      __asm { FMOV            V0.2D, #1.0 }

      v111 = _Q0;
      __asm { FMOV            V0.4S, #1.0 }

      v122 = _Q0;
      v12 = xmmword_21C27F610;
      LODWORD(v12) = -1;
      v123 = v12;
      v110 = v4;
      while (2)
      {
        v113 = v5;
        v13 = [v4 objectAtIndex:?];
        v14 = [objc_msgSend(v112 animationPlayerForKey:{v13), "animation"}];
        v139 = xmmword_21C2A2890;
        v140 = v111;
        v142[0] = 0;
        v142[1] = 0;
        v141 = v142;
        AnimationData::processSkeletonAnimation(&v139, [v14 caAnimation]);
        v15 = objc_opt_new();
        v136 = 0;
        v137 = 0;
        v138 = 0;
        v16 = *a2;
        v17 = a2[1];
        while (v16 != v17)
        {
          v18 = *v16;
          std::string::basic_string[abi:nn200100]<0>(&v143, [objc_msgSend(*v16 "name")]);
          v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v141, &v143);
          if (v142 == v19)
          {
            if (![v18 identifier])
            {
              goto LABEL_14;
            }

            MEMORY[0x21CF074C0](&v143, [objc_msgSend(v18 "identifier")]);
            v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v141, &v143);
          }

          if (v19 != v142)
          {
            v20 = **a2;
            v21 = &stru_282DCC058;
            do
            {
              v22 = [v18 name];
              if (v18 == v20)
              {
                break;
              }

              v18 = [v18 parentNode];
            }

            while (v18);
            [v15 addObject:v21];
            std::vector<std::string>::push_back[abi:nn200100](&v136, &v143);
          }

LABEL_14:
          if (v144.i8[7] < 0)
          {
            operator delete(v143.i64[0]);
          }

          ++v16;
        }

        v24 = [v15 count];
        if (v24)
        {
          AnimationsPath = USDKitConverter::getAnimationsPath(this);
          v27 = [USKHelper scene:*(this + 7) nodeAtPath:v109 type:USKNodeTypeSkeletalAnimation_weak];
          [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v27 propertyWithName:@"joints" type:USKDataTypeStringArray_weak role:{USKRoleTypeNone_weak), "setStringArray:", v15}];

          v133 = 0;
          v134 = 0;
          v135 = 0;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v133, 0xAAAAAAAAAAAAAAABLL * (v137 - v136));
          __p = 0;
          v131 = 0;
          v132 = 0;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, 0xAAAAAAAAAAAAAAABLL * (v137 - v136));
          v127 = 0;
          v128 = 0;
          v129 = 0;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v127, 0xAAAAAAAAAAAAAAABLL * (v137 - v136));
          v117 = *(&v139 + 1) - *&v139;
          v28 = ((*(&v139 + 1) - *&v139) / *&v140 + 0.5);
          if ((v28 & 0x80000000) == 0)
          {
            v29 = 0;
            v115 = v28;
            v114 = v28 + 1;
            v120 = v24;
            v116 = v27;
            do
            {
              v30 = *&v139;
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v133, 0);
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, 0);
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v127, 0);
              v32 = v136;
              v31 = v137;
              v121 = v137;
              while (v32 != v31)
              {
                v126.i32[2] = 0;
                v126.i64[0] = 0;
                v125 = v122;
                v143.i64[0] = v32;
                v33 = std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v141, v32);
                v125 = v122;
                v126 = 0u;
                v35 = *(v33 + 56);
                v34 = *(v33 + 64);
                v124 = xmmword_21C27F610;
                if (v35 != v34)
                {
                  v124 = xmmword_21C27F610;
                  do
                  {
                    v36 = *v35;
                    v37 = [*v35 keyTimes];
                    if ([v37 count])
                    {
                      v38 = [objc_msgSend(v36 "keyPath")];
                      [v36 duration];
                      v40 = v39;
                      [objc_msgSend(v37 objectAtIndexedSubscript:{objc_msgSend(v37, "count") - 1), "doubleValue"}];
                      v42 = v41;
                      [objc_msgSend(v37 objectAtIndexedSubscript:{0), "doubleValue"}];
                      v43 = 0;
                      if (v42 - v44 >= 0.0001 && v40 >= 0.0001)
                      {
                        [v36 beginTime];
                        if ([v37 count] <= v29)
                        {
                          v43 = [v37 count] - 1;
                        }

                        else
                        {
                          [objc_msgSend(v37 objectAtIndexedSubscript:{v29), "doubleValue"}];
                          v43 = v29;
                        }
                      }

                      v45 = [v38 objectAtIndex:1];
                      if ([v45 isEqualToString:@"transform"])
                      {
                        if ([objc_msgSend(v36 "keyTimes")])
                        {
                          v46 = [v36 values];
                          v145 = 0u;
                          v146 = 0u;
                          v143 = 0u;
                          v144 = 0u;
                          v47 = [v46 objectAtIndexedSubscript:v43];
                          if (v47)
                          {
                            [v47 SCNMatrix4Value];
                            v48 = v143;
                            v49 = v144;
                            v50 = v143.i32[3];
                            v52 = v145;
                            v51 = v146;
                            v53 = vuzp1q_s32(v146, vextq_s8(v52, v52, 0xCuLL));
                            v53.i32[0] = v146.i32[1];
                            v54 = vextq_s8(v144, vextq_s8(v144, v145, 4uLL), 8uLL);
                            v54.i32[0] = v145.i32[2];
                            v55 = vext_s8(*v48.f32, *&vextq_s8(v48, v48, 8uLL), 4uLL);
                          }

                          else
                          {
                            v51 = 0uLL;
                            v55 = 0;
                            v50 = 0;
                            v52.i32[0] = 0;
                            v52.i32[3] = 0;
                            v49 = 0uLL;
                            v48.i32[0] = 0;
                            v48.i32[3] = 0;
                            v53 = 0uLL;
                            v54 = 0uLL;
                          }

                          *&v48.i32[1] = v55;
                          v63 = v48;
                          v63.i32[3] = v50;
                          v64 = vextq_s8(v54, vrev64q_s32(v54), 4uLL);
                          v64.i32[0] = v49.i32[0];
                          v65 = vextq_s8(v53, v54, 8uLL);
                          v65.i32[0] = v52.i32[0];
                          v66 = vmulq_f32(v65, v65);
                          v65.i32[3] = v52.i32[3];
                          v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), vnegq_f32(v64)), v65, vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL));
                          v68 = vmulq_f32(v48, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
                          if ((v68.f32[2] + vaddv_f32(*v68.f32)) >= 0.0)
                          {
                            v69 = 1.0;
                          }

                          else
                          {
                            v69 = -1.0;
                          }

                          v70 = vmulq_f32(v63, v63);
                          v71 = vmulq_f32(v64, v64);
                          v72 = vadd_f32(vzip1_s32(*v70.i8, *v71.i8), vzip2_s32(*v70.i8, *v71.i8));
                          v73 = vextq_s8(v71, v71, 8uLL);
                          *v73.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *v73.f32), v72));
                          v73.i32[2] = sqrtf(v66.f32[2] + vaddv_f32(*v66.f32));
                          v74 = vmulq_n_f32(v73, v69);
                          v75 = vmvnq_s8(vorrq_s8(vcltzq_f32(v74), vcgezq_f32(v74)));
                          v75.i32[3] = v75.i32[2];
                          v75.i32[0] = vmaxvq_u32(v75);
                          v76 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v75, v123), 0), v74, 0);
                          v125 = v76;
                          v77 = vceqzq_f32(v76);
                          v77.i32[3] = v77.i32[2];
                          if ((vmaxvq_u32(v77) & 0x80000000) != 0)
                          {
                            v124 = *(MEMORY[0x277D860B8] + 48);
                            v125 = 0uLL;
                          }

                          else
                          {
                            v78 = vextq_s8(v54, v49, 4uLL);
                            v78.i32[0] = v49.i32[0];
                            v52.i32[1] = v53.i32[3];
                            v52.i32[2] = v54.i32[0];
                            v79 = vdivq_f32(v48, vdupq_lane_s32(*v76.f32, 0));
                            v80 = vdivq_f32(v78, vdupq_lane_s32(*v76.f32, 1));
                            v81 = vdivq_f32(v52, vdupq_laneq_s32(v76, 2));
                            v82 = v81.f32[2] + (*v79.i32 + v80.f32[1]);
                            if (v82 > 0.0)
                            {
                              *v81.f32 = vsub_f32(*&vzip2q_s32(v80, vuzp1q_s32(v80, v81)), *&vtrn2q_s32(v81, vzip2q_s32(v81, v79)));
                              v81.f32[2] = *&v79.i32[1] - v80.f32[0];
                              v83 = v82 + 1.0;
                              v81.f32[3] = v82 + 1.0;
                              goto LABEL_65;
                            }

                            if (*v79.i32 > v80.f32[1] && *v79.i32 > v81.f32[2])
                            {
                              v83 = ((*v79.i32 + 1.0) - v80.f32[1]) - v81.f32[2];
                              *&v88 = v80.f32[0] + *&v79.i32[1];
                              v89 = v81.f32[0] + *&v79.i32[2];
                              v90 = v80.f32[2] - v81.f32[1];
                              v81.i64[0] = __PAIR64__(v88, LODWORD(v83));
                              v81.f32[2] = v89;
                              goto LABEL_64;
                            }

                            if (v80.f32[1] <= v81.f32[2])
                            {
                              *v81.f32 = vadd_f32(*v81.f32, *&vzip2q_s32(v79, v80));
                              v83 = ((v81.f32[2] + 1.0) - *v79.i32) - v80.f32[1];
                              v81.f32[2] = v83;
                              v90 = *&v79.i32[1] - v80.f32[0];
LABEL_64:
                              v81.f32[3] = v90;
                            }

                            else
                            {
                              v85 = v80;
                              v85.f32[1] = (v80.f32[1] + 1.0) - *v79.i32;
                              v85.i32[3] = v81.i32[0];
                              v86 = vzip2q_s32(vzip1q_s32(v79, v81), vtrn1q_s32(v81, v79));
                              v80 = vaddq_f32(v80, v86);
                              v87 = vsubq_f32(v85, v86);
                              v81 = vtrn2q_s32(vrev64q_s32(v80), v87);
                              v83 = *&v87.i32[1];
                            }

LABEL_65:
                            v80.i32[0] = 0;
                            v96 = vmulq_n_f32(v81, 0.5 / sqrtf(v83));
                            v97 = vmvnq_s8(vceqq_f32(v96, v96));
                            v97.i32[0] = vmaxvq_u32(v97);
                            v124 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v80, v97), 0), *(MEMORY[0x277D860B8] + 48), v96);
                          }

                          v58 = vextq_s8(vextq_s8(v51, v51, 4uLL), v53, 0xCuLL);
                          goto LABEL_67;
                        }
                      }

                      else
                      {
                        if (([v45 isEqualToString:@"position"] & 1) == 0 && !objc_msgSend(v45, "isEqualToString:", @"translation"))
                        {
                          if (([v45 isEqualToString:@"orientation"] & 1) != 0 || objc_msgSend(v45, "isEqualToString:", @"quaternion"))
                          {
                            if ([objc_msgSend(v36 "keyTimes")])
                            {
                              [objc_msgSend(objc_msgSend(v36 "values")];
                              v60.i32[1] = v59;
                              v60.i64[1] = __PAIR64__(v62, v61);
                              v124 = v60;
                            }
                          }

                          else if ([v45 isEqualToString:@"scale"] && objc_msgSend(objc_msgSend(v36, "keyTimes"), "count"))
                          {
                            v91 = [v36 values];
                            if (v43 >= [v91 count])
                            {
                              v92 = 0;
                            }

                            else
                            {
                              v92 = v43;
                            }

                            [objc_msgSend(v91 objectAtIndexedSubscript:{v92), "SCNVector3Value"}];
                            v94.i32[1] = v93;
                            v94.i32[2] = v95;
                            v125 = v94;
                          }

                          goto LABEL_68;
                        }

                        if ([objc_msgSend(v36 "keyTimes")])
                        {
                          [objc_msgSend(objc_msgSend(v36 "values")];
                          v58.i32[1] = v56;
                          v58.i32[2] = v57;
LABEL_67:
                          v126 = v58;
                        }
                      }
                    }

LABEL_68:
                    ++v35;
                  }

                  while (v35 != v34);
                }

                _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v133, &v126);
                v24 = v120;
                v98 = v131;
                if (v131 >= v132)
                {
                  v100 = (v131 - __p) >> 4;
                  if ((v100 + 1) >> 60)
                  {
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  v101 = (v132 - __p) >> 3;
                  if (v101 <= v100 + 1)
                  {
                    v101 = v100 + 1;
                  }

                  if (v132 - __p >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v102 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v102 = v101;
                  }

                  if (v102)
                  {
                    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v102);
                  }

                  *(16 * v100) = v124;
                  v99 = 16 * v100 + 16;
                  v103 = (16 * v100 - (v131 - __p));
                  memcpy(v103, __p, v131 - __p);
                  v104 = __p;
                  __p = v103;
                  v131 = v99;
                  v132 = 0;
                  if (v104)
                  {
                    operator delete(v104);
                  }
                }

                else
                {
                  *v131 = v124;
                  v99 = (v98 + 16);
                }

                v131 = v99;
                _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v127, &v125);
                v32 += 3;
                v31 = v121;
              }

              v105 = (v117 * v29 / v115 + v30) / *(this + 63) + 0.0;
              v106 = v105;
              if (vabdd_f64(v105, v106) >= 0.001)
              {
                v107 = v116;
                if (1.0 - (v105 - v106) < 0.001)
                {
                  v105 = v106 + 1.0;
                }
              }

              else
              {
                v105 = v105;
                v107 = v116;
              }

              [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v107 propertyWithName:@"translations" type:USKDataTypeFloat3Array_weak role:{USKRoleTypeNone_weak), "setFloat3Array:count:atTime:", v105}];
              [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v107 propertyWithName:@"rotations" type:USKDataTypeQuatfArray_weak role:{USKRoleTypeNone_weak), "setQuatfArray:count:atTime:", v105}];
              [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v107 propertyWithName:@"scales" type:USKDataTypeFloat3Array_weak role:{USKRoleTypeNone_weak), "setFloat3Array:count:atTime:", v105}];
              ++v29;
            }

            while (v29 != v114);
          }

          if (v127)
          {
            v128 = v127;
            operator delete(v127);
          }

          if (__p)
          {
            v131 = __p;
            operator delete(__p);
          }

          if (v133)
          {
            v134 = v133;
            operator delete(v133);
          }
        }

        else
        {
        }

        v143.i64[0] = &v136;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v143);
        std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(&v141, v142[0]);
        if (!v24)
        {
          v4 = v110;
          v108 = [v110 count];
          v5 = v113 + 1;
          if (v113 + 1 >= v108)
          {
            return 0;
          }

          continue;
        }

        return v109;
      }
    }
  }

  return result;
}