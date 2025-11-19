void C3DEnginePipelineRemoveNodeFromRendering(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 228);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      ElementInSpanAtIndex = C3DRendererElementStoreGetElementInSpanAtIndex(*(a1 + 48), *(a2 + 224), i);
      __UntrackRendererElementsDependencies(a1, ElementInSpanAtIndex);
    }
  }

  v7 = *(a2 + 232);
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      v9 = 0;
      do
      {
        v10 = *(a2 + 232) + 12 * v9;
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = 0;
          v13 = *(v10 + 12) | (v11 << 32);
          do
          {
            v14 = C3DRendererElementStoreGetElementInSpanAtIndex(*(a1 + 48), v13, v12);
            if (v14)
            {
              __UntrackRendererElementsDependencies(a1, v14);
            }

            ++v12;
          }

          while (v11 != v12);
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  __UntrackNodeDependencies(a1, a2);

  C3DRendererElementStoreDeallocateSpanForNode(a1, a2);
}

uint64_t C3DEnginePipelineAddNodeToRendering(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = C3DNodeIsHiddenOrIsHiddenByAncestor(a3);
  if ((result & 1) == 0 && !a3[57])
  {
    result = C3DNodeGetRenderableAttributeHash(a3);
    if (result)
    {
      _C3DEnginePipelineAllocateAndTrackRendererElements(a1, a2, a3, result);

      return __TrackRenderNodeDependencies(a1, a3);
    }
  }

  return result;
}

void __HandleNodeNotification(_DWORD *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  if (a2 != 1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __HandleNodeNotification_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      if ((a2 & 0x80000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if ((a2 & 0x80000) != 0)
  {
LABEL_4:
    C3DEnginePipelineRemoveNodeFromRendering(v6, a1);
    C3DEnginePipelineAddNodeToRendering(v6, v7, a1);
  }

LABEL_5:
  if ((a2 & 0x100000) != 0)
  {
    v16 = C3DGetScene(a1);
    if (C3DNodeHasCamera(a1))
    {
      C3DEngineContextSetDefaultPointOfView(a3[1], 0);
    }

    if (v16 == C3DEngineContextGetScene(a3[1]))
    {
      C3DEnginePipelineAddNodeToRendering(v6, v7, a1);
      return;
    }
  }

  if ((a2 & 0x3F000) == 0)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x1000) != 0)
  {
    C3DEnginePipelineSyncNodeAttribute(v6, a1, @"kMeshKey", a3);
    if ((a2 & 0x2000) == 0)
    {
LABEL_12:
      if ((a2 & 0x4000) == 0)
      {
        goto LABEL_13;
      }

LABEL_20:
      C3DEnginePipelineSyncNodeAttribute(v6, a1, @"kLightKey", a3);
      if ((a2 & 0x20000) == 0)
      {
LABEL_14:
        if ((a2 & 0x8000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((a2 & 0x2000) == 0)
  {
    goto LABEL_12;
  }

  C3DEnginePipelineSyncNodeAttribute(v6, a1, @"kCameraKey", a3);
  C3DEngineContextSetDefaultPointOfView(a3[1], 0);
  if ((a2 & 0x4000) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((a2 & 0x20000) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  C3DEnginePipelineSyncNodeAttribute(v6, a1, @"kDeformerStackKey", a3);
  if ((a2 & 0x8000) != 0)
  {
LABEL_15:
    C3DEnginePipelineSyncNodeAttribute(v6, a1, @"rendererDelegate", a3);
  }

LABEL_16:
  v17 = (a2 >> 7) & 8 | (a2 >> 9) & 4;
  if (v17)
  {
    C3DEnginePipelineUpdateNodeRendererElements(v6, a1, v17);
  }
}

uint64_t C3DEnginePipelineUpdateNodeRendererElements(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 228);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = *(result + 48);
    v8 = *(a2 + 224) | (v3 << 32);
    do
    {
      ElementInSpanAtIndex = C3DRendererElementStoreGetElementInSpanAtIndex(v7, v8, v6);
      result = C3DEnginePipelineSyncRendererElement(v5, ElementInSpanAtIndex, a3);
      ++v6;
    }

    while (v3 != v6);
  }

  return result;
}

void __HandleMaterialDidChangeNotifications(void *key, __int16 a2, uint64_t a3)
{
  context[2] = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    if ((a2 & 0x200) != 0)
    {
      Value = CFDictionaryGetValue(*(*a3 + 40), key);
      if (Value)
      {
        Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], Value);
        context[0] = a3;
        context[1] = key;
        CFSetApplyFunction(Copy, __ApplyMaterialDidChange, context);
        CFRelease(Copy);
      }
    }
  }

  else
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __HandleMaterialDidChangeNotifications_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

uint64_t __ApplyMaterialDidChange(uint64_t a1, uint64_t **a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *a2;
  if (!*a2)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __ApplyMaterialDidChange_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  Node = C3DRendererElementGetNode(a1);
  if (Node)
  {
    C3DNodeBoundingBoxDidUpdate(Node);
  }

  return C3DEnginePipelineSyncRendererElement(*v12, a1, 27);
}

void __HandleGeometryDidChangeNotifications(uint64_t a1, __int16 a2, __int128 *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = *a3;
  if (a2 == 3 || (v5 = scn_default_log(), !os_log_type_enabled(v5, OS_LOG_TYPE_FAULT)))
  {
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __HandleGeometryDidChangeNotifications_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
  if ((a2 & 0x400) != 0)
  {
LABEL_4:
    v16 = xmmword_282DC46A8;
    v17 = qword_282DC46B8;
    *&v18 = v15;
    *(&v18 + 1) = a1;
    RootNode = C3DSceneGetRootNode(*(v15 + 16));
    C3DNodeIterateTree(RootNode, &v16, 0, &v18);
  }

LABEL_5:
  if ((a2 & 0x800) != 0)
  {
    v16 = xmmword_282DC46C0;
    v17 = qword_282DC46D0;
    v18 = v15;
    v19 = a1;
    v14 = C3DSceneGetRootNode(*(v15 + 16));
    C3DNodeIterateTree(v14, &v16, 0, &v18);
  }
}

uint64_t __InvalidateRendererElementsHashCodeForGeometry(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (C3DNodeGetGeometry(a1) == v4)
  {
    C3DEnginePipelineUpdateNodeRendererElements(v3, a1, 3);
  }

  return 0;
}

uint64_t __RebuildRendererElementsForGeometry(_DWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (C3DNodeGetGeometry(a1) == v5)
  {
    C3DEnginePipelineRemoveNodeFromRendering(v3, a1);
    C3DEnginePipelineAddNodeToRendering(v3, v4, a1);
  }

  return 0;
}

void __HandleLightDidChangeNotifications(uint64_t a1, __int16 a2, __int128 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (a2 != 4 && (v16 = *a3, v6 = scn_default_log(), v7 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT), v5 = v16, v7))
  {
    __HandleLightDidChangeNotifications_cold_1(v6, v8, v9, v10, v11, v12, v13, v14);
    v5 = v16;
    if ((a2 & 0x200) == 0)
    {
      return;
    }
  }

  else if ((a2 & 0x200) == 0)
  {
    return;
  }

  v17 = xmmword_282DC46D8;
  v18 = qword_282DC46E8;
  v19 = v5;
  v20 = a1;
  RootNode = C3DSceneGetRootNode(*(v5 + 16));
  C3DNodeIterateTree(RootNode, &v17, 0, &v19);
}

uint64_t __RebuildRendererElementsForLight(_DWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (C3DNodeGetLight(a1) == v5)
  {
    C3DEnginePipelineRemoveNodeFromRendering(v3, a1);
    C3DEnginePipelineAddNodeToRendering(v3, v4, a1);
  }

  return 0;
}

CFIndex C3DEnginePipelineApplyNotificationQueue(uint64_t *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __ApplyMaterialDidChange_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *a1;
  NotificationQueue = C3DEnginePipelineGetNotificationQueue(*a1);
  v12 = NotificationQueue;
  if (NotificationQueue)
  {
    v13 = C3DEngineNotificationQueueNeedsFullReset(NotificationQueue);
  }

  else
  {
    v13 = 0;
  }

  PointOfViewIfAny = C3DEngineContextGetPointOfViewIfAny(a1[1]);
  v16 = PointOfViewIfAny && (Camera = C3DNodeGetCamera(PointOfViewIfAny)) != 0 && C3DCameraGetScreenSpaceAmbientOcclusionIntensity(Camera) > 0.0;
  v17 = *(v10 + 58);
  v18 = v17 != v16;
  if (v17 != v16)
  {
    *(v10 + 58) = v16;
  }

  v19 = C3DSceneGetFogEndDistance(*(v10 + 16)) > 0.0;
  if (*(v10 + 56) != v19)
  {
    *(v10 + 56) = v19;
    v18 = 1;
  }

  if (!C3DEngineContextIsClusteredShadingEnabled(a1[1]) || (LightingSystem = C3DSceneGetLightingSystem(*(v10 + 16))) == 0)
  {
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v18 | C3DLightingSystemGetGlobalLightHashCodeForCaching(LightingSystem, a1[1], v10 + 60)))
  {
LABEL_20:
    C3DRendererElementStoreApplyForAllRendererElements(*(v10 + 48), __ResyncRendererElements, v10);
  }

LABEL_21:
  if (v12)
  {
    C3DEngineNotificationQueueSwapForApplying(v12);
    if (v13)
    {
      __ResyncAllNodes(a1);
    }

    else
    {
      TypeID = C3DNodeGetTypeID();
      C3DEngineNotificationQueueApplyForEntityType(v12, TypeID, __HandleNodeNotification, a1);
      v22 = C3DGeometryGetTypeID();
      C3DEngineNotificationQueueApplyForEntityType(v12, v22, __HandleGeometryDidChangeNotifications, a1);
      v23 = C3DMaterialGetTypeID();
      C3DEngineNotificationQueueApplyForEntityType(v12, v23, __HandleMaterialDidChangeNotifications, a1);
      v24 = C3DLightGetTypeID();
      C3DEngineNotificationQueueApplyForEntityType(v12, v24, __HandleLightDidChangeNotifications, a1);
    }
  }

  RendererElementStore = C3DEnginePipelineGetRendererElementStore(v10);
  Capacity = C3DRendererElementStoreGetCapacity(RendererElementStore);
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(a1[1]);
  C3DProgramHashCodeStoreSetCapacity(ProgramHashCodeStore, Capacity);
  SortSystem = C3DEngineContextGetSortSystem(a1[1]);
  C3DSortSystemSetCapacity(SortSystem, Capacity);
  return C3DSortSystemPrepare(SortSystem, v10);
}

uint64_t C3DEnginePipelineGetNotificationQueue(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_3(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

uint64_t C3DEnginePipelineGetRendererElementStore(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_3(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

void __HandleNodeWillDieNotification(uint64_t a1, uint64_t a2, __CFString *a3, uint64_t a4)
{
  context[2] = *MEMORY[0x277D85DE8];
  if (@"kC3DNotificationNodeWillDie" != a3)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __HandleNodeWillDieNotification_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  context[0] = a2;
  context[1] = a4;
  v14 = *(a2 + 24);
  if (v14)
  {
    CFDictionaryApplyFunction(v14, __RemoveValueFromAttributesCachedList, context);
  }
}

void __TrackRendererElementsDependencies(uint64_t a1, const void *a2)
{
  Material = C3DRendererElementGetMaterial(a2);
  if (Material)
  {
    v5 = Material;
    Value = CFDictionaryGetValue(*(a1 + 40), Material);
    if (!Value)
    {
      Value = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
      CFDictionarySetValue(*(a1 + 40), v5, Value);
      CFRelease(Value);
    }

    CFSetAddValue(Value, a2);
  }
}

uint64_t __TrackRenderNodeDependencies(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (C3DNodeGetLight(a2))
  {
    C3DEnginePipelineAddNodeForKeyIfAbsent(a1, a2, @"kLightKey");
  }

  if (C3DNodeGetCamera(a2))
  {
    C3DEnginePipelineAddNodeForKeyIfAbsent(a1, a2, @"kCameraKey");
  }

  result = C3DNodeGetDeformerStack(a2);
  if (result)
  {
    return C3DEnginePipelineAddNodeForKeyIfAbsent(a1, a2, @"kDeformerStackKey");
  }

  return result;
}

BOOL C3DEnginePipelineAddNodeForKeyIfAbsent(uint64_t a1, const void *a2, void *key)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
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
    C3DGeometryTrackNode_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!key)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  NodesForKey = __C3DEnginePipelineGetNodesForKey(a1, key, 1, 0);
  v31 = CFSetContainsValue(NodesForKey, a2);
  if (!v31)
  {
    CFSetAddValue(NodesForKey, a2);
  }

  return v31 == 0;
}

void __UntrackRendererElementsDependencies(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Material = C3DRendererElementGetMaterial(a2);
  if (Material)
  {
    v13 = Material;
    Value = CFDictionaryGetValue(*(a1 + 40), Material);
    if (Value)
    {
      v15 = Value;
      CFSetRemoveValue(Value, a2);
      if (!CFSetGetCount(v15))
      {
        CFDictionaryRemoveValue(*(a1 + 40), v13);
      }
    }
  }
}

uint64_t __UntrackNodeDependencies(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  C3DEnginePipelineRemoveNodeForKey(a1, a2, @"kCameraKey");
  return C3DEnginePipelineRemoveNodeForKey(a1, a2, @"kDeformerStackKey");
}

uint64_t C3DEnginePipelineRemoveNodeForKey(uint64_t a1, const void *a2, void *key)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
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
    C3DGeometryTrackNode_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!key)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  result = __C3DEnginePipelineGetNodesForKey(a1, key, 0, 0);
  if (result)
  {
    v31 = result;
    if (CFSetGetCount(result) < 1)
    {
      return 0;
    }

    else
    {
      result = CFSetContainsValue(v31, a2);
      if (result)
      {
        CFSetRemoveValue(v31, a2);
        return 1;
      }
    }
  }

  return result;
}

void _C3DEnginePipelineAllocateAndTrackRendererElements(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  SpanForNode = C3DRendererElementStoreAllocateSpanForNode(a1, a2, a3, a4);
  if (SpanForNode != 0xFFFFFFFF)
  {
    v7 = SpanForNode;
    v8 = HIDWORD(SpanForNode);
    if (HIDWORD(SpanForNode))
    {
      v17 = 0;
      *(a3 + 224) = SpanForNode;
      do
      {
        ElementInSpanAtIndex = C3DRendererElementStoreGetElementInSpanAtIndex(*(a1 + 48), *(a3 + 224), v17);
        __TrackRendererElementsDependencies(a1, ElementInSpanAtIndex);
        ++v17;
      }

      while (v8 != v17);
    }

    else
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        _C3DEnginePipelineAllocateAndTrackRendererElements_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      *(a3 + 224) = v7;
    }

    if (C3DNodeHasGeometryLOD(a3))
    {
      Geometry = C3DNodeGetGeometry(a3);
      if (Geometry)
      {
        LOD = C3DGeometryGetLOD(Geometry);
        Count = CFArrayGetCount(LOD);
        if (Count >= 1)
        {
          v22 = Count;
          for (i = 0; i != v22; ++i)
          {
            v24 = *(a3 + 232) + 12 * i;
            v25 = *(v24 + 16);
            if (v25)
            {
              v26 = 0;
              v27 = *(v24 + 12) | (v25 << 32);
              do
              {
                v28 = C3DRendererElementStoreGetElementInSpanAtIndex(*(a1 + 48), v27, v26);
                if (v28)
                {
                  __TrackRendererElementsDependencies(a1, v28);
                }

                ++v26;
              }

              while (v25 != v26);
            }
          }
        }
      }
    }
  }
}

const void *__C3DEnginePipelineGetNodesForKey(uint64_t a1, void *key, int a3, int a4)
{
  Mutable = *(a1 + 24);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 24) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (Value)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3 == 0;
  }

  if (!v10)
  {
    Value = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    CFDictionarySetValue(*(a1 + 24), key, Value);
    CFRelease(Value);
  }

  if (Value)
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && CFEqual(key, @"kDeformerStackKey"))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ____C3DEnginePipelineGetNodesForKey_block_invoke;
    v13[3] = &unk_2782FD978;
    v13[4] = &v14;
    v13[5] = Value;
    C3DCFSetApplyBlock(Value, v13);
    if (v15[3])
    {
      Value = v15[3];
    }

    _Block_object_dispose(&v14, 8);
  }

  return Value;
}

void sub_21BFD1E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void C3DEnginePipelineReset(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineReset_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFDictionaryRemoveAllValues(v10);
  }

  C3DRendererElementStoreClear(*(a1 + 48));
  v11 = *(a1 + 24);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 24) = 0;
  }
}

void C3DEnginePipelineRenderSubTree(void *a1, uint64_t a2)
{
  v128[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __ApplyMaterialDidChange_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[1];
  v12 = a1[2];
  RenderContext = C3DEngineContextGetRenderContext(v11);
  FXContext = C3DEngineContextGetFXContext(v11);
  SortSystem = C3DEngineContextGetSortSystem(v11);
  v14 = *(FXContext + 120);
  Stats = C3DEngineContextGetStats(v11);
  v15 = *(*a1 + 48);
  if (!v12)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineRenderSubTree_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  Pass = C3DFXPassInstanceGetPass(v12);
  RendererContextGL = C3DEngineContextGetRendererContextGL(v11);
  v90 = v15;
  if (RendererContextGL && (RendererElementState = C3DEngineContextGetRendererElementState(v11)) != 0)
  {
    v101 = RendererElementState;
    C3DRendererElementStateBeginProcessing(RendererElementState, Pass, v11);
    v93 = 0;
  }

  else
  {
    v101 = 0;
    v93 = 1;
  }

  v104 = a1;
  v94 = Pass;
  v95 = FXContext;
  v96 = v11;
  v107 = C3DFXPassRequiresLighting(*(v12 + 4736));
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(*(v12 + 4816));
  v87 = v12 + 80;
  v27 = *(*(v12 + 80) + 48);
  Capacity = C3DRendererElementStoreGetCapacity(v27);
  C3DProgramHashCodeStoreSetCapacity(ProgramHashCodeStore, Capacity);
  IsClusteredShadingEnabled = C3DEngineContextIsClusteredShadingEnabled(*(v12 + 4816));
  v29 = C3DEngineContextGetFXContext(*(v12 + 4816));
  LightingSystem = C3DSceneGetLightingSystem(*(v12 + 4808));
  C3DLightingSystemBeginQueries(LightingSystem, v12 + (*(v29 + 120) << 6) + 3168, *(v12 + 4816));
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  C3DLightingSystemGetLightingContext(LightingSystem, *(v12 + 4816), &v121);
  v128[0] = 0;
  v120 = 0;
  v98 = LightingSystem;
  InfiniteLightSet = C3DLightingSystemGetInfiniteLightSet(LightingSystem, v128, &v120);
  if (InfiniteLightSet)
  {
    C3DLightingSystemCheckLightingSetTextureUsage(LightingSystem, v128);
    LightingSetProgramHashCodes = C3DLightingSystemGetLightingSetProgramHashCodes(LightingSystem, v128, &v121.i32[1]);
    v121.i16[0] = (LightingSetProgramHashCodes << 7) | v121.i16[0] & 0x807F;
  }

  v88 = v14;
  v97 = v12 + 16 * v14;
  v32 = *(v97 + 5000);
  v105 = v12;
  if (v32)
  {
    v33 = *(v97 + 4992);
    v102 = ProgramHashCodeStore;
    v103 = v27;
    do
    {
      v34 = *v33++;
      v15 = v15 & 0xFFFFFFFF00000000 | v34;
      Element = C3DRendererElementStoreGetElement(v27, v15);
      if (!C3DRendererElementIsRendererDelegate(Element))
      {
        v36 = *(Element + 8);
        v37 = *(Element + 72);
        if ((v37 & 0x40) != 0)
        {
          if (!IsClusteredShadingEnabled)
          {
            if (InfiniteLightSet)
            {
              *(Element + 56) = v128[0];
            }

            else
            {
              v111 = 0u;
              v112 = 0u;
              C3DNodeGetLocalBoundingBox(v36, &v111);
              WorldMatrix = C3DNodeGetWorldMatrix(v36);
              v118 = 0u;
              v119 = 0u;
              v39 = WorldMatrix[1];
              v40 = WorldMatrix[2];
              v41 = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v39, *v111.f32, 1), *WorldMatrix, v111.f32[0]), v40, v111, 2));
              v41.i32[3] = 1.0;
              v42 = v112;
              v42.i32[1] = v112.i32[0];
              v42.i32[2] = v112.i32[0];
              v43 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(*WorldMatrix, v42)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v112.f32, 1), v112), v39))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v112, v112), v112), v40)));
              v118 = v41;
              v119 = v43;
              CategoryBitMask = C3DNodeGetCategoryBitMask(v36);
              C3DLightingSystemQuery(v98, &v118, CategoryBitMask, (Element + 56));
              v45 = C3DLightingSystemGetLightingSetProgramHashCodes(v98, Element + 56, &v121.i32[1]);
              v121.i16[0] = (v45 << 7) | v121.i16[0] & 0x807F;
              v37 = *(Element + 72);
            }
          }

          *(Element + 72) = (8 * v121.i16[0]) & 0x380 | v37 & 0xFC7F;
        }

        v46 = C3DFXPassInstanceGetPass(v12);
        PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(*(v12 + 4816));
        ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, Element, v46, PreferredRenderMode);
        if (ProgramHashCodeForRenderElement)
        {
          if (v107)
          {
            if (!IsClusteredShadingEnabled)
            {
              goto LABEL_29;
            }

            v115 = v125;
            v116 = v126;
            v117 = v127;
            v111 = v121;
            v112 = v122;
            v113 = v123;
            v114 = v124;
            if (!C3DProgramHashCodeMatchLightHashCodesAndLightingContext(ProgramHashCodeForRenderElement, &v111))
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v49 = *(v12 + 4736);
          if (!v49 || !C3DFXPassGetOverridingProgramHashCode(0, v49, Element))
          {
LABEL_29:
            Mesh = C3DRendererElementGetMesh(Element);
            MeshElement = C3DRendererElementGetMeshElement(Element);
            Geometry = C3DRendererElementGetGeometry(Element);
            Material = C3DRendererElementGetMaterial(Element);
            v54 = *(Element + 8);
            if (v54)
            {
              if ((*(v54 + 221) & 0x10) != 0)
              {
                v55 = *(Element + 40);
                if (v55)
                {
                  C3DFXTechniqueEnsureThatPassesShouldExecute(v55);
                }
              }
            }

            v12 = v105;
            v109 = (*(v12 + 24) << 16) | (((8 * (*(v12 + 27) & 3)) & 0x9F | (*(Element + 72) >> 11) & 7 | (32 * (*(v12 + 28) & 3u))) << 24) | C3DEngineContextGetCommonProfileConditioners(*(v105 + 4816)) | v109 & 0xFFFFFFFF00000000;
            v56 = C3DProgramHashCodeCreate(v36, Geometry, Mesh, MeshElement, &v121, Material, v109);
            ProgramHashCodeStore = v102;
            C3DProgramHashCodeStoreRegisterProgramForRendererElement(v102, Element, v56, *(v105 + 4736), 0);
            if (v56)
            {
              CFRelease(v56);
            }

            v27 = v103;
          }
        }
      }

      --v32;
    }

    while (v32);
  }

  if (C3DFXPassGetDrawInstruction(*v12) != 6)
  {
    v57 = CACurrentMediaTime();
    ParticleManager = C3DSceneGetParticleManager(*(v12 + 4808), 0);
    if (ParticleManager)
    {
      v59 = ParticleManager;
      if (C3DFXPassGetLayerMask(*v12))
      {
        C3DParticleManagerCull(v59, v87, v96, v88, 0, 0);
      }
    }

    *(Stats + 120) = *(Stats + 120) + CACurrentMediaTime() - v57;
  }

  if (v107)
  {
    v60 = C3DSceneGetLightingSystem(*(v12 + 4808));
    C3DLightingSystemEndQueries(v60);
  }

  v61 = *(v97 + 5000);
  v62 = *(v97 + 4992);
  v63 = CACurrentMediaTime();
  C3DSortSystemSyncKeys(SortSystem, v96, v62, v61, 0);
  C3DSortSystemSort(SortSystem, v96, v62, v61);
  *(Stats + 152) = *(Stats + 152) + CACurrentMediaTime() - v63;
  if (C3DEngineContextGetMaxDrawingCommand(v96))
  {
    v64 = C3DEngineContextGetStats(v96);
    v65 = C3DEngineContextGetMaxDrawingCommand(v96) + ~*(v64 + 12);
    if (v61 >= v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = v61;
    }

    v67 = 0;
    if (C3DEngineContextGetIsolateMode(v96) && v64)
    {
      v61 = (v61 + *(v64 + 12) + 1);
      MaxDrawingCommand = C3DEngineContextGetMaxDrawingCommand(v96);
      v69 = v66 - 1;
      if (!v66)
      {
        v69 = 0;
      }

      if (v61 >= MaxDrawingCommand)
      {
        v67 = v69;
      }

      else
      {
        v67 = 0;
      }
    }
  }

  else
  {
    v67 = 0;
    v66 = v61;
  }

  v70 = CACurrentMediaTime();
  if (RenderContext)
  {
    v104[40] = v107;
    [(SCNMTLRenderContext *)RenderContext processRendererElements:v62 count:v66 engineIterationContext:v104];
  }

  else
  {
    WarmUpAbortHandler = C3DEngineContextGetWarmUpAbortHandler(v96);
    v72 = v66 >= v67;
    v73 = v66 - v67;
    if (v73 != 0 && v72)
    {
      v61 = WarmUpAbortHandler;
      v74 = (v62 + 4 * v67);
      do
      {
        v75 = *v74++;
        v62 = v62 & 0xFFFFFFFF00000000 | v75;
        v76 = C3DRendererElementStoreGetElement(v90, v62);
        C3DRendererElementStateProcessRendererElement(v101, v76, v104);
        if (v61 && ((*(v61 + 16))(v61) & 1) != 0)
        {
          break;
        }

        ++*(Stats + 12);
        --v73;
      }

      while (v73);
    }
  }

  *(Stats + 152) = *(Stats + 152) + CACurrentMediaTime() - v70;
  if (RendererContextGL)
  {
    ShowsAuthoringEnvironment = C3DRendererContextGetShowsAuthoringEnvironment(RendererContextGL);
  }

  else
  {
    ShowsAuthoringEnvironment = 0;
  }

  v78 = RenderContext;
  if (RenderContext)
  {
    v78 = [(SCNMTLRenderContext *)RenderContext showsAuthoringEnvironment];
  }

  if (v78 | ShowsAuthoringEnvironment)
  {
    AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(v96, 1);
    if (C3DAuthoringEnvironmentShouldDisplayConstraints(AuthoringEnvironment))
    {
      ControllerManager = C3DSceneGetControllerManager(*(*v104 + 16));
      C3DConstraintManagerAppendAuthoringInfo(ControllerManager, AuthoringEnvironment);
    }

    if (*(v95 + 248) == v94)
    {
      v82 = *(v105 + 5000);
      if (v82)
      {
        v83 = *(v105 + 4992);
        do
        {
          v84 = *v83++;
          v61 = v61 & 0xFFFFFFFF00000000 | v84;
          v85 = C3DRendererElementStoreGetElement(v90, v61);
          v86 = *(v85 + 8);
          if (v86)
          {
            C3DAuthoringEnvironmentAppendDebugNode(AuthoringEnvironment, v86, v85);
          }

          --v82;
        }

        while (v82);
      }

      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __C3DEnginePipelineRenderSubTree_block_invoke;
      v110[3] = &__block_descriptor_40_e315_q16__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8l;
      v110[4] = AuthoringEnvironment;
      C3DNodeApplyHierarchy(a2, v110);
      C3DAuthoringEnvironmentDrawZbufferDependant(AuthoringEnvironment);
    }

    if (v105 == *(v95 + 256))
    {
      C3DAuthoringEnvironmentDrawZbufferIndependant(AuthoringEnvironment, v80);
    }

    C3DAuthoringEnvironmentDrawPending(AuthoringEnvironment);
  }

  if ((v93 & 1) == 0)
  {
    C3DRendererElementStateEndProcessing(v101, v94, v96);
  }
}

uint64_t __C3DEnginePipelineRenderSubTree_block_invoke(uint64_t a1, float32x4_t *a2)
{
  if (C3DNodeIsHiddenOrTransparent(a2))
  {
    return 1;
  }

  C3DAuthoringEnvironmentAppendDebugNodeAttributes(*(a1 + 32), a2);
  return 0;
}

void C3DEnginePipelineGetRenderComponentsForRenderPass(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  RenderContext = C3DEngineContextGetRenderContext(a3);
  if (!RenderContext)
  {
    if (a2 && C3DFXPassIsOverridingPrograms(a2))
    {
      OverridingProgramHashCode = C3DFXPassGetOverridingProgramHashCode(a3, a2, a1);
    }

    else
    {
      OverridingProgramHashCode = 0;
    }

    MaterialForRenderPass = C3DRendererElementGetMaterialForRenderPass(a1, a2);
    v18 = MaterialForRenderPass;
    if (!MaterialForRenderPass || C3DMaterialGetTechnique(MaterialForRenderPass))
    {
      if (!a2 || (Program = C3DFXPassGetProgram(a2)) == 0)
      {
        Technique = *(a1 + 40);
        if (v18 && !Technique)
        {
          Technique = C3DMaterialGetTechnique(v18);
        }

        if (Technique)
        {
          goto LABEL_38;
        }

        v23 = scn_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          C3DEnginePipelineGetRenderComponentsForRenderPass_cold_4(v23);
        }

        return;
      }

LABEL_39:
      OverridingProgramHashCode = 0;
      if (!a4)
      {
LABEL_41:
        if (a6)
        {
          *a6 = Program;
        }

        if (a5)
        {
          *a5 = OverridingProgramHashCode;
        }

        return;
      }

LABEL_40:
      *a4 = v18;
      goto LABEL_41;
    }

    if (!OverridingProgramHashCode)
    {
      ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(a3);
      PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(a3);
      OverridingProgramHashCode = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, a1, a2, PreferredRenderMode);
    }

    CommonProfile = C3DMaterialGetCommonProfile(v18);
    if (!CommonProfile)
    {
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

  v15 = RenderContext;
  v16 = C3DEngineContextGetProgramHashCodeStore(a3);
  if (a2)
  {
    v17 = C3DRendererElementGetMaterialForRenderPass(a1, a2);
  }

  else
  {
    if (C3DRendererElementIsRendererDelegate(a1))
    {
      v18 = 0;
      goto LABEL_30;
    }

    if ((*(a1 + 72) & 0x400) != 0 || ![(SCNMTLRenderContext *)v15 getCurrentPassMaterial])
    {
      v18 = *(a1 + 32);
      goto LABEL_30;
    }

    v17 = [(SCNMTLRenderContext *)v15 getCurrentPassMaterial];
  }

  v18 = v17;
LABEL_30:
  v35 = [(SCNMTLRenderContext *)v15 getCurrentPassHash];
  ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(v16, a1, a2, v35);
  if (v18)
  {
    OverridingProgramHashCode = ProgramHashCodeForRenderElement;
    if (!C3DMaterialGetTechnique(v18))
    {
      CommonProfile = C3DMaterialGetCommonProfile(v18);
      if (!CommonProfile)
      {
        v27 = scn_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
LABEL_48:
          C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v27, v28, v29, v30, v31, v32, v33, v34);
        }
      }

LABEL_49:
      Program = C3DEngineContextEvaluateProgramWithHashCode(a3, OverridingProgramHashCode, CommonProfile, a7);
      if (!a4)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  if (a2)
  {
    Program = C3DFXPassGetProgram(a2);
    if (Program)
    {
      goto LABEL_39;
    }
  }

  Technique = *(a1 + 40);
  if (v18 && !Technique)
  {
    Technique = C3DMaterialGetTechnique(v18);
  }

  if (Technique)
  {
LABEL_38:
    Program = C3DFXTechniqueGetSingleProgram(Technique);
    goto LABEL_39;
  }

  v37 = scn_default_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
  {
    C3DFXTechniqueAppendPass_cold_1(v37, v38, v39, v40, v41, v42, v43, v44);
  }
}

BOOL C3DTriangle3BarycentricCoordinates(_OWORD *a1, __int128 *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  v11 = *a1;
  v12 = DWORD2(v3);
  v13 = 1065353216;
  v14 = v4;
  v15 = DWORD2(v4);
  v16 = 1065353216;
  v5 = a1[2];
  v17 = *(a1 + 4);
  v18 = DWORD2(v5);
  v19 = 1065353216;
  v6 = *a2;
  v20 = *a2;
  v21 = DWORD2(v6);
  v22 = 1065353216;
  v7 = C3DGaussianSolve(&v11, 4u, 3, a3);
  if (!v7)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_DEFAULT, "Warning: C3DTriangle3BarycentricCoordinates: unable to solve the equation", v10, 2u);
    }
  }

  return v7;
}

BOOL C3DTriangle3ContainsPoint(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vsubq_f32(a1[1], *a1);
  v3 = vsubq_f32(a1[2], *a1);
  v4 = vsubq_f32(*a2, *a1);
  v5 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v6 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v7 = vnegq_f32(v3);
  v8 = vmlaq_f32(vmulq_f32(v6, v7), v4, v5);
  v9 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  v10 = vmulq_f32(vmlaq_f32(vmulq_f32(v9, v7), v2, v5), v8);
  if ((v10.f32[1] + (v10.f32[2] + v10.f32[0])) < 0.0)
  {
    return 0;
  }

  v11 = vnegq_f32(v2);
  v12 = vmlaq_f32(vmulq_f32(v6, v11), v4, v9);
  v13 = vmlaq_f32(vmulq_f32(v5, v11), v3, v9);
  v14 = vmulq_f32(v13, v12);
  if ((v14.f32[1] + (v14.f32[2] + v14.f32[0])) < 0.0)
  {
    return 0;
  }

  result = 0;
  v16 = vmulq_f32(v13, v13);
  v17 = sqrtf(v16.f32[1] + (v16.f32[2] + v16.f32[0]));
  v18 = vmulq_f32(v8, v8);
  v19 = sqrtf(v18.f32[1] + (v18.f32[2] + v18.f32[0])) / v17;
  if (v19 <= 1.0)
  {
    v20 = vmulq_f32(v12, v12);
    v21 = sqrtf(v20.f32[1] + (v20.f32[2] + v20.f32[0])) / v17;
    if (v21 <= 1.0)
    {
      return (v19 + v21) <= 1.0;
    }
  }

  return result;
}

void C3D::BlitPass::BlitPass(C3D::BlitPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  C3D::Pass::Pass(this, a2, a3);
  *v3 = &unk_282DC4700;
  *(v3 + 32) = 4;
}

float compute_sh(uint64_t a1, unsigned int a2, int a3, int a4, float *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  LODWORD(v6) = 0;
  v7 = a4 * a4;
  memset(v43, 0, sizeof(v43));
  if (a2)
  {
    v8 = 0;
    v9 = a2;
    v6 = 1.0;
    v10 = 1.0 / v9 + -1.0;
    v11 = (1.0 - 1.0 / v9 + 1.0 - 1.0 / v9) / (v9 + -1.0);
    __asm
    {
      FMOV            V4.4S, #-1.0
      FMOV            V5.4S, #1.0
    }

    _S17 = 3.0;
    do
    {
      v19 = 0;
      v20 = v10 + (v8 * v11);
      LODWORD(v21) = _Q4.i32[0];
      v22 = _Q5;
      do
      {
        _Q24.f32[0] = v10 + (v19 * v11);
        v23.f32[0] = _Q24.f32[0];
        v24 = 0uLL;
        if (a3 > 2)
        {
          if (a3 == 3)
          {
            v24 = _Q4;
            v24.f32[0] = v10 + (v19 * v11);
            v24.f32[2] = -v20;
          }

          else
          {
            if (a3 == 4)
            {
              v24.i64[1] = _Q5.i64[1];
            }

            else
            {
              if (a3 != 5)
              {
                goto LABEL_18;
              }

              _Q24.f32[0] = -_Q24.f32[0];
              v24.i64[1] = _Q4.i64[1];
            }

            v24.i32[0] = _Q24.i32[0];
            v24.f32[1] = -v20;
          }
        }

        else if (a3)
        {
          if (a3 == 1)
          {
            *(&v21 + 1) = -v20;
            v24.i64[0] = v21;
            v24.i64[1] = _Q24.i64[0];
          }

          else if (a3 == 2)
          {
            v24 = _Q5;
            v24.f32[2] = v10 + (v8 * v11);
            v24.i32[0] = _Q24.i32[0];
          }
        }

        else
        {
          v22.f32[1] = -v20;
          v24 = v22;
          v24.f32[2] = -_Q24.f32[0];
        }

LABEL_18:
        if (a4 < 1)
        {
          goto LABEL_22;
        }

        v44 = 1049652929;
        if (a4 != 1)
        {
          _Q24 = vmulq_f32(v24, v24);
          *&v25 = _Q24.f32[2] + vaddv_f32(*_Q24.f32);
          *_Q24.f32 = vrsqrte_f32(v25);
          *_Q24.f32 = vmul_f32(*_Q24.f32, vrsqrts_f32(v25, vmul_f32(*_Q24.f32, *_Q24.f32)));
          v26 = vmulq_n_f32(v24, vmul_f32(*_Q24.f32, vrsqrts_f32(v25, vmul_f32(*_Q24.f32, *_Q24.f32))).f32[0]);
          *_Q24.f32 = vmul_f32(*&vextq_s8(v26, v26, 4uLL), 0x3EFA2A2CBEFA2A2CLL);
          v45 = _Q24.i64[0];
          v46 = -0.4886 * v26.f32[0];
          if (a4 >= 3)
          {
            _Q24 = vmulq_f32(v26, v26);
            v47 = vmuls_lane_f32(v26.f32[0] * 1.0925, *v26.f32, 1);
            __asm { FMLA            S27, S17, V24.S[2] }

            *&v28 = v26.f32[0] * -1.0925;
            v29 = xmmword_21C2A1720;
            v29.i32[0] = vmuls_lane_f32(-1.0925, *v26.f32, 1);
            v30 = vdupq_laneq_s32(v26, 2);
            v29.i32[2] = v30.i32[2];
            v30.i32[1] = _S27;
            v30.i64[1] = __PAIR64__(_Q24.f32[0] - _Q24.f32[1], v28);
            v48 = vmulq_f32(v30, v29);
          }

LABEL_22:
          if (!v7)
          {
            goto LABEL_25;
          }
        }

        v23.f32[1] = v10 + (v8 * v11);
        v31 = vaddv_f32(vmul_f32(v23, v23)) + 1.0;
        *&v31 = (4.0 / (a2 * a2)) / (v31 * sqrt(v31));
        v32 = vmulq_n_f32(*(a1 + 16 * (v8 * a2 + v19)), *&v31);
        v33 = &v44;
        v34 = v43;
        v35 = (a4 * a4);
        do
        {
          v36 = *v33++;
          _Q24 = vmlaq_n_f32(*v34, v32, v36);
          *v34++ = _Q24;
          --v35;
        }

        while (v35);
LABEL_25:
        ++v19;
      }

      while (v19 != a2);
      ++v8;
    }

    while (v8 != a2);
  }

  if (v7)
  {
    v37 = 2 * v7;
    v38 = v43;
    v39 = (a4 * a4);
    v40 = a5;
    do
    {
      v41 = *v38++;
      *v40 = *v40 + *&v41;
      ++v40;
      a5[v7] = *(&v41 + 1) + a5[v7];
      *&v6 = *(&v41 + 2) + a5[v37];
      a5[v37++] = *&v6;
      ++v7;
      --v39;
    }

    while (v39);
  }

  return *&v6;
}

void convert_rgba8unorm_to_rgbaf32(char *a1, int a2, char *a3, int a4, int a5, unsigned int a6)
{
  if (a6)
  {
    v11 = 0;
    v24 = vdupq_n_s32(0x3B808081u);
    v12 = a6;
    do
    {
      if (a5)
      {
        v13 = &a1[(v11 * a2)];
        v14 = &a3[(v11 * a4)];
        v15 = a5;
        do
        {
          v16 = vld1q_dup_f32(v14);
          v17.i64[0] = 0xFF000000FFLL;
          v17.i64[1] = 0xFF000000FFLL;
          v18 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_21C280C00), v17)), v24);
          v25 = v18;
          if (v18.f32[0] <= 0.04045)
          {
            v20 = v18.f32[0] / 12.92;
          }

          else
          {
            v19 = powf((v18.f32[0] + 0.055) / 1.055, 2.4);
            v18 = v25;
            v20 = v19;
          }

          if (v18.f32[1] <= 0.04045)
          {
            v22 = v18.f32[1] / 12.92;
          }

          else
          {
            v21 = powf((v18.f32[1] + 0.055) / 1.055, 2.4);
            v18.i64[1] = v25.i64[1];
            v22 = v21;
          }

          if (v18.f32[2] <= 0.04045)
          {
            v23 = v18.f32[2] / 12.92;
          }

          else
          {
            v23 = powf((v18.f32[2] + 0.055) / 1.055, 2.4);
            v18.i32[3] = v25.i32[3];
          }

          *v13 = v20;
          v13[1] = v22;
          v13[2] = v23;
          v13[3] = v18.f32[3];
          ++v14;
          v13 += 4;
          --v15;
        }

        while (v15);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

uint64_t convert_rgba16f_to_rgbaf32(uint64_t result, int a2, char *a3, int a4, int a5, unsigned int a6)
{
  if (a6)
  {
    v6 = 0;
    v7 = a6;
    do
    {
      if (a5)
      {
        v8 = (result + (v6 * a2));
        v9 = &a3[(v6 * a4)];
        v10 = a5;
        do
        {
          v11 = *v9;
          v12 = (v11 >> 10) & 0x1F;
          if (v12)
          {
            v13 = v12 == 31;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            if (v12 == 31)
            {
              v12 = 2139095040;
            }
          }

          else
          {
            v12 = (v12 << 23) + 939524096;
          }

          v14 = v9[1];
          v15 = (v14 >> 10) & 0x1F;
          if (v15)
          {
            v16 = v15 == 31;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            if (v15 == 31)
            {
              v15 = 2139095040;
            }
          }

          else
          {
            v15 = (v15 << 23) + 939524096;
          }

          v17 = v9[2];
          v18 = (v17 >> 10) & 0x1F;
          if (v18 && v18 != 31)
          {
            v19 = (v18 << 23) + 939524096;
          }

          else if (v18 == 31)
          {
            v19 = 2139095040;
          }

          else
          {
            v19 = (v17 >> 10) & 0x1F;
          }

          v20 = v9[3];
          v21 = (v20 >> 10) & 0x1F;
          if (v21 && v21 != 31)
          {
            v21 = (v21 << 23) + 939524096;
          }

          else if (v21 == 31)
          {
            v21 = 2139095040;
          }

          *v8 = v12 | (v11 << 16) & 0x80000000 | (v11 >> 7) & 7 | (8 * (v11 & 0x3FF)) & 0x1FFF | ((v11 & 0x3FF) << 13);
          v8[1] = v15 | (v14 << 16) & 0x80000000 | (v14 >> 7) & 7 | (8 * (v14 & 0x3FF)) & 0x1FFF | ((v14 & 0x3FF) << 13);
          v8[2] = v19 | (v17 << 16) & 0x80000000 | (v17 >> 7) & 7 | (8 * (v17 & 0x3FF)) & 0x1FFF | ((v17 & 0x3FF) << 13);
          v8[3] = v21 | (v20 << 16) & 0x80000000 | (v20 >> 7) & 7 | (8 * (v20 & 0x3FF)) & 0x1FFF | ((v20 & 0x3FF) << 13);
          v9 += 4;
          v8 += 4;
          --v10;
        }

        while (v10);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

__n128 C3DRay3Make(_OWORD *a1, _OWORD *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  a1[1] = *a3;
  return result;
}

float32x4_t C3DRay3MakeWithSegment(float32x4_t *a1, float32x4_t *a2)
{
  *a1 = *a2;
  v2 = vsubq_f32(a2[1], *a2);
  v3 = vmulq_f32(v2, v2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  result = vmulq_n_f32(v2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  a1[1] = result;
  return result;
}

void sub_21BFD3BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BFD3E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SCNRenderThread_start__(void *a1)
{
  v1 = a1;
  if (__SCNRenderThread_start___once != -1)
  {
    dispatch_once(&__SCNRenderThread_start___once, &__block_literal_global_47);
  }

  pthread_setspecific(__SCNRenderThread_start___block_key, v1);
  v2 = objc_autoreleasePoolPush();
  v1[2](v1);
  objc_autoreleasePoolPop(v2);
  pthread_exit(0);
}

void C3DRendererContextSetTypedBytesUniformAtLocation(uint64_t a1, uint64_t location, int a3, GLfloat *v, int a5)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a1 && (v10 = scn_default_log(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a5)
    {
      goto LABEL_6;
    }
  }

  else if (a5)
  {
    goto LABEL_6;
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (a3 <= 9)
  {
    if (a3 > 5)
    {
      if (a3 != 6)
      {
        if (a3 == 8)
        {
          C3DRendererContextSetVector2UniformAtLocation(a1, location, v, a5);
          return;
        }

        if (a3 == 9)
        {
          C3DRendererContextSetVector3UniformAtLocation(a1, location, v, a5);
          return;
        }

        goto LABEL_37;
      }

      v31 = *v;
      *v34.i32 = v31;
      v27 = a5;
      v30 = &v34;
      v28 = a1;
      v29 = location;
    }

    else
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v26 = *v;
          goto LABEL_31;
        }

        if (a3 == 3)
        {
          v26 = *v;
LABEL_31:
          C3DRendererContextSetIntUniformAtLocation(a1, location, v26);
          return;
        }

        goto LABEL_37;
      }

      v27 = a5;
      v28 = a1;
      v29 = location;
      v30 = v;
    }

    C3DRendererContextSetFloatUniformAtLocation(v28, v29, v30, v27);
    return;
  }

  if (a3 > 17)
  {
    switch(a3)
    {
      case 18:
        *v34.i8 = vcvt_s32_f32(*v);
        C3DRendererContextSetInt2UniformAtLocation(a1, location, v34.i32, a5);
        return;
      case 19:
        for (i = 0; i != 3; ++i)
        {
          v34.i32[i] = v[i];
        }

        C3DRendererContextSetInt3UniformAtLocation(a1, location, v34.i32, a5);
        return;
      case 20:
        v34 = vcvtq_s32_f32(*v);
        C3DRendererContextSetInt4UniformAtLocation(a1, location, v34.i32, a5);
        return;
    }
  }

  else
  {
    switch(a3)
    {
      case 10:
        C3DRendererContextSetVector4UniformAtLocation(a1, location, v, a5);
        return;
      case 11:
        C3DRendererContextSetMatrix4x4UniformAtLocation(a1, location, v, a5);
        return;
      case 13:
        C3DRendererContextSetColor4UniformAtLocation(a1, location, v, a5);
        return;
    }
  }

LABEL_37:
  if ((C3DRendererContextSetTypedBytesUniformAtLocation_done & 1) == 0)
  {
    C3DRendererContextSetTypedBytesUniformAtLocation_done = 1;
    v33 = scn_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextSetTypedBytesUniformAtLocation_cold_3(a3, v33);
    }
  }
}

void C3DRendererContextSetValueUniformAtLocation(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (!a3)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  Type = C3DValueGetType(a3);
  if (Type == a4)
  {
    v19 = a4;
LABEL_44:
    Bytes = C3DValueGetBytes(a3);
    C3DRendererContextSetTypedBytesUniformAtLocation(a1, a2, v19, Bytes, a5);
    return;
  }

  v19 = Type;
  if (a4 <= 9)
  {
    if (a4 <= 5)
    {
      if (a4 == 1)
      {
        if (Type == 6)
        {
          LOWORD(a4) = 6;
        }

        else
        {
          LOWORD(a4) = 1;
        }
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_44;
        }

        if ((Type - 18) >= 3)
        {
          v19 = Type;
        }

        else
        {
          v19 = 2;
        }
      }

      goto LABEL_43;
    }

    if (a4 == 6)
    {
      if (Type == 1)
      {
        LOWORD(a4) = 1;
      }

      else
      {
        LOWORD(a4) = 6;
      }

      goto LABEL_43;
    }

    if (a4 != 8)
    {
      if (a4 != 9)
      {
        goto LABEL_44;
      }

      v22 = Type == 10;
      goto LABEL_40;
    }

    v23 = Type - 9;
    goto LABEL_39;
  }

  if (a4 > 17)
  {
    if (a4 != 18)
    {
      if (a4 != 19)
      {
        if (a4 != 20)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      v22 = Type == 20;
LABEL_40:
      if (v22)
      {
        v19 = a4;
      }

      else
      {
        v19 = Type;
      }

      goto LABEL_43;
    }

    v23 = Type - 19;
LABEL_39:
    v22 = (v23 & 0xFFFE) == 0;
    goto LABEL_40;
  }

  switch(a4)
  {
    case 10:
      v20 = Type == 13;
      v21 = 10;
      break;
    case 11:
      goto LABEL_43;
    case 13:
      v20 = Type == 10;
      v21 = 13;
      break;
    default:
      goto LABEL_44;
  }

  if (v20)
  {
    LOWORD(a4) = Type;
  }

  else
  {
    LOWORD(a4) = v21;
  }

LABEL_43:
  if (v19 == a4)
  {
    goto LABEL_44;
  }

  if ((C3DRendererContextSetValueUniformAtLocation_done & 1) == 0)
  {
    C3DRendererContextSetValueUniformAtLocation_done = 1;
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextSetValueUniformAtLocation_cold_2(v25);
    }
  }
}

void _C3DFXProgramDelegateCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }
}

uint64_t __C3DFXProgramDelegateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXProgramDelegateGetTypeID_typeID = result;
  return result;
}

uint64_t C3DFXProgramDelegateCreate(_OWORD *a1, const void *a2)
{
  if (C3DFXProgramDelegateGetTypeID_onceToken != -1)
  {
    C3DFXProgramDelegateCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXProgramDelegateGetTypeID_typeID, 40);
  v5 = a1[1];
  *(Instance + 16) = *a1;
  *(Instance + 32) = v5;
  v6 = *(Instance + 48);
  if (v6 != a2)
  {
    if (v6)
    {
      CFRelease(v6);
      *(Instance + 48) = 0;
    }

    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *(Instance + 48) = v7;
  }

  return Instance;
}

id C3DFXProgramCFFinalize(void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationProgramWillDie", a1, 0, 1u);
  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
    a1[9] = 0;
  }

  return C3DEntityCFFinalize(a1);
}

uint64_t C3DFXProgramDelegateGetUserInfo(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXProgramDelegateGetUserInfo_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

uint64_t C3DFXProgramGetProfile(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

void C3DFXProgramSetProfile(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 64) = a2;
}

uint64_t C3DFXProgramDelegateGetCallbacks(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXProgramDelegateGetUserInfo_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 16;
}

CFTypeRef C3DFXProgramSetDelegate(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

uint64_t C3DFXProgramIsClientProgram(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 68) >> 1) & 1;
}

void C3DFXProgramSetClientProgram(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 68) = *(a1 + 68) & 0xFD | v12;
}

void C3DFXProgramSetOpaque(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 68) = *(a1 + 68) & 0xFE | a2;
}

void SCNSetPerformanceStatisticsEnabled(int a1)
{
  if (SCNGetPerformanceStatisticsEnabled::onceToken != -1)
  {
    SCNSetPerformanceStatisticsEnabled_cold_1();
  }

  {
    if (a1)
    {
      if (SCNInitializeForDebugging(void)::onceToken != -1)
      {
        SCNSetPerformanceStatisticsEnabled_cold_2();
      }
    }
  }
}

float SCNConvertEngineStatsToPerformanceData(uint64_t a1, _BYTE *a2, int a3)
{
  *a2 = 2;
  v3 = *(a1 + 328);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0 / v3;
  }

  v5 = &a2[44 * a3];
  v5->i32[1] = *(a1 + 4);
  v5->i32[2] = vcvtas_u32_f32(v4);
  v6.f64[0] = *(a1 + 104);
  v7 = *(a1 + 96);
  v5->f32[3] = v7;
  v8.f64[0] = *(a1 + 128) + *(a1 + 136) + *(a1 + 144);
  v8.f64[1] = *(a1 + 152);
  v6.f64[1] = *(a1 + 168);
  v9 = vcvt_hight_f32_f64(vcvt_f32_f64(v6), *(a1 + 184));
  v5[1] = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 112)), v8);
  v5[2] = v9;
  result = *(a1 + 288);
  v11 = &a2[8 * a3];
  v11[24] = result;
  v11[23] = *(a1 + 280);
  a2[1] = a3;
  return result;
}

void SCNPushPerformanceStatistics(uint64_t a1)
{
  {
    SCNPushPerformanceStatistics_cold_1();
  }

  SCNConvertEngineStatsToPerformanceData(a1, &_scnPerformanceData, (byte_27CDDB9DD & 1) == 0);
}

void SCNGetPerformanceStatistics(_OWORD *a1@<X8>)
{
  {
    SCNGetPerformanceStatistics_cold_1();
  }

  v2 = unk_27CDDBA2C;
  a1[4] = xmmword_27CDDBA1C;
  a1[5] = v2;
  *(a1 + 92) = unk_27CDDBA38;
  v3 = unk_27CDDB9EC;
  *a1 = _scnPerformanceData;
  a1[1] = v3;
  v4 = unk_27CDDBA0C;
  a1[2] = xmmword_27CDDB9FC;
  a1[3] = v4;
}

uint64_t SCNGetGraphicsPerformanceStatistics(void)
{
  v0 = CACurrentMediaTime();
  if (v0 - *&_graphicsPerformanceStatisticsDictionaryQueryTime > 1.0)
  {
    v1 = _accelerator;
    if (!_accelerator)
    {
      existing = 0;
      v2 = *MEMORY[0x277CD2898];
      v3 = IOServiceMatching("IOAcceleratorES");
      if (!IOServiceGetMatchingServices(v2, v3, &existing))
      {
        _accelerator = IOIteratorNext(existing);
      }

      IOObjectRelease(existing);
      v1 = _accelerator;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v1, @"PerformanceStatistics", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      if (_graphicsPerformanceStatisticsDictionary)
      {
        CFRelease(_graphicsPerformanceStatisticsDictionary);
      }

      _graphicsPerformanceStatisticsDictionary = v5;
    }

    _graphicsPerformanceStatisticsDictionaryQueryTime = *&v0;
  }

  return [_graphicsPerformanceStatisticsDictionary copy];
}

uint64_t _SCNStartCollectingPerformanceStatisticsForPid(int a1)
{
  v18 = a1;
  v1 = CSSymbolicatorCreateWithPid();
  v3 = v2;
  if (CSIsNull())
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x4012000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = &unk_21C362C36;
  v16 = 0;
  v17 = 0;
  CSSymbolicatorForeachSymbolWithMangledNameAtTime();
  v5 = v11[6];
  v6 = v11[7];
  if (CSIsNull() || (CSSymbolicatorGetTask(), (mapped_memory_cache_for_task = create_mapped_memory_cache_for_task()) == 0))
  {
    CSRelease();
    v4 = 0;
  }

  else
  {
    if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
    {
      _SCNStartCollectingPerformanceStatisticsForPid_cold_1();
    }

    v19 = &v18;
    v8 = std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(qword_27CDD9F40, &v18);
    v8[3] = v1;
    v8[4] = v3;
    v8[5] = v5;
    v8[6] = v6;
    v4 = 1;
    v8[7] = mapped_memory_cache_for_task;
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_21BFD4F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SCNStopCollectingPerformanceStatisticsForPid(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    _SCNStopCollectingPerformanceStatisticsForPid_cold_1();
  }

  std::unordered_map<int,SCNPerformanceDataMapping>::unordered_map(v3, qword_27CDD9F40);
  v1 = std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::find<int>(v3, &v4);
  if (v1)
  {
    destroy_mapped_memory_cache();
    v1[5] = 0;
    v1[6] = 0;
    v1[7] = 0;
    CSRelease();
    v1[3] = 0;
    v1[4] = 0;
    std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::erase(v3, v1);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::~__hash_table(v3);
  return 1;
}

void *_SCNGetPerformanceStatisticsFromPerformanceData(unsigned __int8 *a1, int a2)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = &a1[44 * a2];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", v5[2]), @"scenekit.fps"}];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", v5[1]), @"scenekit.primcnt"}];
  LODWORD(v6) = v5[3];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v6), @"scenekit.frmtime"}];
  LODWORD(v7) = v5[4];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v7), @"scenekit.phytime"}];
  LODWORD(v8) = v5[5];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v8), @"scenekit.prttime"}];
  LODWORD(v9) = v5[6];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v9), @"scenekit.animtime"}];
  LODWORD(v10) = v5[9];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v10), @"scenekit.clientTime"}];
  LODWORD(v11) = v5[7];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v11), @"scenekit.rendertime"}];
  LODWORD(v12) = v5[8];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v12), @"scenekit.consttime"}];
  LODWORD(v13) = v5[10];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v13), @"scenekit.cpuidletime"}];
  LODWORD(v14) = v5[11];
  [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v14), @"scenekit.cawaittime"}];
  if (*a1 < 2u)
  {
    [v4 setObject:&unk_282E0FC00 forKeyedSubscript:@"scenekit.shaderCompilationTime"];
    v18 = v4;
    v17 = &unk_282E0FC00;
  }

  else
  {
    v16 = &a1[8 * a2];
    LODWORD(v15) = *(v16 + 24);
    [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v15), @"scenekit.shaderCompilationTime"}];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v16 + 23)];
    v18 = v4;
  }

  [v18 setObject:v17 forKeyedSubscript:@"scenekit.shaderGenerationCount"];
  v19 = SCNGetGraphicsPerformanceStatistics();
  [v4 setObject:objc_msgSend(v19 forKeyedSubscript:{"objectForKeyedSubscript:", @"Device Utilization %", @"scenekit.deviceutil"}];
  [v4 setObject:objc_msgSend(v19 forKeyedSubscript:{"objectForKeyedSubscript:", @"Renderer Utilization %", @"scenekit.rendererutil"}];
  [v4 setObject:objc_msgSend(v19 forKeyedSubscript:{"objectForKeyedSubscript:", @"Tiler Utilization %", @"scenekit.tilerutil"}];

  return v4;
}

uint64_t *_SCNGetPerformanceStatisticsForPid(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    _SCNStopCollectingPerformanceStatisticsForPid_cold_1();
  }

  std::unordered_map<int,SCNPerformanceDataMapping>::unordered_map(v3, qword_27CDD9F40);
  v1 = std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::find<int>(v3, &v4);
  if (v1)
  {
    if (CSSymbolGetRange())
    {
      clear_mapped_memory();
      v1 = 0;
      mapped_memory_read();
    }

    else
    {
      v1 = 0;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::~__hash_table(v3);
  return v1;
}

void sub_21BFD5404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *_SCNGetCollectedShadersForPid()
{
  v25 = *MEMORY[0x277D85DE8];
  CSSymbolicatorCreateWithPid();
  if (CSIsNull())
  {
    v0 = &unk_282E0FC20;
  }

  else
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x4012000000;
    v23[3] = __Block_byref_object_copy__4;
    v23[4] = __Block_byref_object_dispose__4;
    v23[5] = &unk_21C362C36;
    v23[6] = 0;
    v23[7] = 0;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = ___ZL26_SCNGetDebuggingInfoForPidi_block_invoke;
    v21 = &unk_2782FDAA0;
    v22 = v23;
    CSSymbolicatorForeachSymbolWithMangledNameAtTime();
    if (CSIsNull())
    {
      CSRelease();
      v0 = &unk_282E0FC48;
    }

    else
    {
      CSSymbolicatorGetTask();
      if (create_mapped_memory_cache_for_task())
      {
        if (CSSymbolGetRange())
        {
          clear_mapped_memory();
          v17 = 0;
          v0 = &unk_282E0FCC0;
          mapped_memory_read();
        }

        else
        {
          v0 = &unk_282E0FC98;
        }
      }

      else
      {
        CSRelease();
        v0 = &unk_282E0FC70;
      }
    }

    _Block_object_dispose(v23, 8);
  }

  v12 = v0;
  if ([v0 valueForKey:@"containerPath"])
  {
    v1 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = [v11 contentsOfDirectoryAtPath:v1 error:0];
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v3)
    {
      v4 = *v14;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v14 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v13 + 1) + 8 * i);
          if ([v6 hasPrefix:@"commonProfile_"])
          {
            if ([objc_msgSend(v6 "pathExtension")])
            {
              v7 = [v1 stringByAppendingPathComponent:v6];
              v8 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v7 encoding:4 error:0];
              v9 = [objc_msgSend(v6 substringFromIndex:{14), "stringByDeletingPathExtension"}];
              if (v8)
              {
                if (v9)
                {
                  [v12 setValue:v8 forKey:v9];
                  [v11 removeItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] error:{"fileURLWithPath:", v7), 0}];
                }
              }
            }
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v3);
    }
  }

  return v12;
}

void sub_21BFD5858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SCNGetShaderCollectionOutputURL()
{
  v0 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];

  return [v0 URLByAppendingPathComponent:@"SceneKitShaderCache"];
}

CFTypeRef SCNSetShaderCollectionEnabled(CFTypeRef result)
{
  {
    if (result)
    {
      v6[3] = v1;
      v6[4] = v2;
      v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v4 = [MEMORY[0x277CCAA00] defaultManager];
      if ([v4 fileExistsAtPath:{objc_msgSend(v3, "path")}])
      {
        [v4 removeItemAtURL:v3 error:0];
      }

      v6[0] = 0;
      if (([v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:v6] & 1) == 0)
      {
        v5 = scn_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          SCNSetShaderCollectionEnabled_cold_1(v3, v6, v5);
        }

        v3 = 0;
      }

      return C3DSetShaderCompilationDirectory(v3);
    }
  }

  return result;
}

uint64_t C3DShouldCollectGeneratedShaders()
{
  {
    v0 = 1;
  }

  else
  {
    if (C3DShouldCollectGeneratedShaders::onceToken != -1)
    {
      C3DShouldCollectGeneratedShaders_cold_1();
    }

    v0 = C3DShouldCollectGeneratedShaders::traceResources;
  }

  return v0 & 1;
}

uint64_t __C3DShouldCollectGeneratedShaders_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  C3DShouldCollectGeneratedShaders::traceResources = result;
  return result;
}

char *___ZL25SCNInitializeForDebuggingv_block_invoke()
{
  result = strncpy(byte_27CDDB8D9, [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")], 0x100uLL);
  result[256] = 0;
  return result;
}

uint64_t ___ZL26_SCNGetDebuggingInfoForPidi_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull();
  if ((result & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 48) = a2;
    *(v7 + 56) = a3;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<int,SCNPerformanceDataMapping>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::__emplace_unique_key_args<int,std::pair<int const,SCNPerformanceDataMapping> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::__emplace_unique_key_args<int,std::pair<int const,SCNPerformanceDataMapping> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(std::unordered_map<int,SCNPerformanceDataMapping>::~unordered_map[abi:nn200100], a2, a3);
}

double OUTLINED_FUNCTION_1_9()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 40) = 1065353216;
  return result;
}

uint64_t C3DSerializeFloatAsNumber(void *cf, const void *a2, float a3)
{
  result = 0;
  valuePtr = a3;
  if (cf && a2)
  {
    v6 = CFGetAllocator(cf);
    result = CFNumberCreate(v6, kCFNumberFloatType, &valuePtr);
    if (result)
    {
      v7 = result;
      CFDictionarySetValue(cf, a2, result);
      CFRelease(v7);
      return 1;
    }
  }

  return result;
}

uint64_t _C3DInitNumberArrayWithPropertyList(const void *a1, char *a2, CFErrorRef *a3)
{
  if (a1 && (v4 = a2) != 0)
  {
    v6 = CFGetTypeID(a1);
    if (v6 != CFArrayGetTypeID())
    {
      return 1;
    }

    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
      return 1;
    }

    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
      v11 = CFGetTypeID(ValueAtIndex);
      if (v11 != CFNumberGetTypeID())
      {
        break;
      }

      if (!CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, v4))
      {
        v16 = scn_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _C3DInitNumberArrayWithPropertyList_cold_2();
        }

        goto LABEL_12;
      }

      v4 += 4;
      if (v8 == ++v9)
      {
        return 1;
      }
    }

    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _C3DInitNumberArrayWithPropertyList_cold_1();
    }
  }

  else
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _C3DInitNumberArrayWithPropertyList_cold_3();
    }
  }

LABEL_12:
  if (!a3 || *a3)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a3 = MalformedDocumentError;
  return result;
}

__CFArray *_C3DCreatePropertyListFromBuffer(char *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (a2 >= 1)
  {
    do
    {
      v6 = CFNumberCreate(v4, kCFNumberFloatType, v3);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
      v3 += 4;
      --a2;
    }

    while (a2);
  }

  return Mutable;
}

CFDataRef C3DCreateSerializedDataFromC3DFloatBuffer(uint64_t a1, uint64_t a2)
{
  v4 = 4 * a2;
  v5 = malloc_type_malloc(4 * a2, 0xE0781382uLL);
  v6 = v5;
  if (a2 >= 1)
  {
    v7 = 0;
    do
    {
      *&v5[4 * v7] = bswap32(*(a1 + 4 * v7));
      ++v7;
    }

    while (a2 != v7);
    v8 = CFDataCreate(0, v5, v4);
    goto LABEL_6;
  }

  v8 = CFDataCreate(0, v5, v4);
  if (v6)
  {
LABEL_6:
    free(v6);
  }

  return v8;
}

const UInt8 *C3DInitC3DFloatArrayWithSerializedData(const __CFData *a1, uint64_t a2, _DWORD *a3)
{
  result = CFDataGetBytePtr(a1);
  if (a2 >= 1)
  {
    do
    {
      v6 = *result;
      result += 4;
      *a3++ = bswap32(v6);
      --a2;
    }

    while (a2);
  }

  return result;
}

CFMutableDictionaryRef C3DCreatePropertyListFromDictionary(const void *a1, uint64_t a2, uint64_t a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9[0] = Mutable;
  v9[1] = a3;
  v9[2] = a2;
  CFDictionaryApplyFunction(a1, _serializeDictionary, v9);
  return Mutable;
}

void _serializeDictionary(const void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = *a3;
  v8 = CFGetTypeID(a1);
  if (v8 != CFStringGetTypeID())
  {
    return;
  }

  v9 = CFGetTypeID(a2);
  if (C3DTypeConformsToProtocol(v9, 0))
  {
    v10 = C3DCopyPropertyList(a2, v5, v6, 0);
    if (!v10)
    {
      return;
    }

LABEL_10:
    v11 = v10;
    CFDictionaryAddValue(v7, a1, v10);

    CFRelease(v11);
    return;
  }

  if (v9 == CFDictionaryGetTypeID())
  {
    v10 = C3DCreatePropertyListFromDictionary(a2, v6, v5);
    if (!v10)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v9 == CFDictionaryGetTypeID())
  {
    v10 = C3DCreatePropertyListFromArray(a2, v6, v5);
    if (!v10)
    {
      return;
    }

    goto LABEL_10;
  }

  _serializableCFTypeIDs();
  v12 = 0;
  while (_serializableCFTypeIDs_serializableTypes[v12] != v9)
  {
    if (++v12 == 6)
    {
      return;
    }
  }

  CFDictionaryAddValue(v7, a1, a2);
}

CFMutableArrayRef C3DCreatePropertyListFromArray(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v8[0] = Mutable;
  v8[1] = a3;
  v8[2] = a2;
  v9.length = CFArrayGetCount(a1);
  v9.location = 0;
  CFArrayApplyFunction(a1, v9, _serializeArray, v8);
  return Mutable;
}

void _serializeArray(const void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = CFGetTypeID(a1);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (C3DTypeConformsToProtocol(v5, 0))
  {
    v8 = C3DCopyPropertyList(a1, v6, v7, 0);
    if (!v8)
    {
      return;
    }

LABEL_9:
    v9 = v8;
    CFArrayAppendValue(v4, v8);

    CFRelease(v9);
    return;
  }

  if (v5 == CFDictionaryGetTypeID())
  {
    v8 = C3DCreatePropertyListFromDictionary(a1, v7, v6);
    if (!v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v5 == CFDictionaryGetTypeID())
  {
    v8 = C3DCreatePropertyListFromArray(a1, v7, v6);
    if (!v8)
    {
      return;
    }

    goto LABEL_9;
  }

  _serializableCFTypeIDs();
  v10 = 0;
  while (_serializableCFTypeIDs_serializableTypes[v10] != v5)
  {
    if (++v10 == 6)
    {
      return;
    }
  }

  CFArrayAppendValue(v4, a1);
}

uint64_t C3DBaseTypeForCFNumberType(uint64_t a1)
{
  v1 = a1 - 5;
  if (a1 - 5) < 9 && ((0x19Du >> v1))
  {
    return word_21C2A19EC[v1];
  }

  else
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      C3DBaseTypeForCFNumberType_cold_1();
    }

    return 0;
  }
}

BOOL C3DConvertToPlatformIndependentData(char *__src, char *__dst, unint64_t a3, unint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a8 * a7 > a3)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      C3DConvertToPlatformIndependentData_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  if (a9 * a7 > a4)
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DConvertToPlatformIndependentData_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  if (a7 >= 1)
  {
    v32 = 0;
    v33 = a5 - 1;
    while (2)
    {
      switch(v33)
      {
        case 0:
          if (a6 >= 1)
          {
            v42 = 0;
            do
            {
              *&__dst[4 * v42] = bswap32(*&__src[4 * v42]);
              ++v42;
            }

            while (a6 > v42);
          }

          goto LABEL_66;
        case 1:
          if (a6 >= 1)
          {
            v45 = 0;
            do
            {
              *&__dst[4 * v45] = *&__src[4 * v45];
              ++v45;
            }

            while (a6 > v45);
          }

          goto LABEL_66;
        case 2:
        case 3:
        case 15:
          memcpy(__dst, __src, a6);
          goto LABEL_66;
        case 4:
          v41 = scn_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            C3DConvertToPlatformIndependentData_cold_3(&v60, v61, v41);
          }

          goto LABEL_66;
        case 5:
          if (a6 >= 1)
          {
            v43 = 0;
            do
            {
              *&__dst[8 * v43] = bswap64(*&__src[8 * v43]);
              ++v43;
            }

            while (a6 > v43);
          }

          goto LABEL_66;
        case 6:
          if (a6 >= 1)
          {
            v44 = 0;
            do
            {
              *&__dst[4 * v44] = bswap32(*&__src[4 * v44]);
              ++v44;
            }

            while (a6 > v44);
          }

          goto LABEL_66;
        case 7:
          if (a6 >= 1)
          {
            v52 = 0;
            v53 = 0;
            do
            {
              *&__dst[4 * v53] = vrev32_s8(*&__src[4 * v53]);
              ++v52;
              v53 += 2;
            }

            while (a6 > v52);
          }

          goto LABEL_66;
        case 8:
          if (a6 >= 1)
          {
            v36 = 0;
            v37 = 0;
            do
            {
              v38 = 4 * v37;
              *&__dst[v38] = vrev32_s8(*&__src[v38]);
              *&__dst[v38 + 8] = bswap32(*&__src[v38 + 8]);
              ++v36;
              v37 += 3;
            }

            while (a6 > v36);
          }

          goto LABEL_66;
        case 9:
          if (a6 >= 1)
          {
            v39 = 0;
            v40 = 0;
            do
            {
              *&__dst[4 * v40] = vrev32q_s8(*&__src[4 * v40]);
              ++v39;
              v40 += 4;
            }

            while (a6 > v39);
          }

          goto LABEL_66;
        case 10:
          if (a6 >= 1)
          {
            v46 = 0;
            v47 = 0;
            do
            {
              v48 = 16 * v46;
              v49 = 16 * v46 + 16;
              if (v49 > (16 * v46))
              {
                do
                {
                  *&__dst[4 * v48] = bswap32(*&__src[4 * v48]);
                  ++v48;
                }

                while (v49 > v48);
              }

              v46 = ++v47;
            }

            while (v47 < a6);
          }

          goto LABEL_66;
        case 11:
          if (a6 >= 1)
          {
            v54 = 0;
            v55 = 0;
            do
            {
              v56 = 9 * v54;
              v57 = v56 + 9;
              while (v57 > v56)
              {
                *&__dst[4 * v56] = bswap32(*&__src[4 * v56]);
                LOWORD(v56) = v56 + 1;
              }

              v54 = ++v55;
            }

            while (v55 < a6);
          }

          goto LABEL_66;
        case 12:
          if (a6 >= 1)
          {
            v50 = 0;
            v51 = 0;
            do
            {
              *&__dst[4 * v50] = vrev32q_s8(*&__src[4 * v50]);
              ++v51;
              v50 += 4;
            }

            while (a6 > v51);
          }

          goto LABEL_66;
        case 13:
        case 16:
          if (a6 >= 1)
          {
            v34 = 0;
            do
            {
              *&__dst[2 * v34] = *&__src[2 * v34];
              ++v34;
            }

            while (a6 > v34);
          }

          goto LABEL_66;
        case 14:
          if (a6 >= 1)
          {
            v35 = 0;
            do
            {
              *&__dst[2 * v35] = *&__src[2 * v35];
              ++v35;
            }

            while (a6 > v35);
          }

          goto LABEL_66;
        case 22:
        case 23:
          *__dst = *__src;
LABEL_66:
          __dst += a9;
          __src += a8;
          if (++v32 == a7)
          {
            return 1;
          }

          continue;
        default:
          v59 = scn_default_log();
          result = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
          if (result)
          {
            C3DConvertToPlatformIndependentData_cold_4();
            return 0;
          }

          return result;
      }
    }
  }

  return 1;
}

BOOL C3DConvertFromPlatformIndependentData(char *__src, char *__dst, unint64_t a3, unint64_t a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a8 * a7 <= a3)
  {
    if (a9 * a7 <= a4)
    {
      if (a7 >= 1)
      {
        if (a5 - 6 >= 0xF && (a5 > 0x18 || ((1 << a5) & 0x1800016) == 0))
        {
          v42 = scn_default_log();
          result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
          if (result)
          {
            C3DConvertFromPlatformIndependentData_cold_1();
            return 0;
          }

          return result;
        }

        v17 = 0;
        v18 = a5 - 1;
        do
        {
          switch(v18)
          {
            case 0u:
              if (a6 >= 1)
              {
                v40 = 0;
                do
                {
                  *&__dst[4 * v40] = bswap32(*&__src[4 * v40]);
                  ++v40;
                }

                while (a6 > v40);
              }

              break;
            case 1u:
              if (a6 >= 1)
              {
                v36 = 0;
                do
                {
                  *&__dst[4 * v36] = *&__src[4 * v36];
                  ++v36;
                }

                while (a6 > v36);
              }

              break;
            case 3u:
            case 0xFu:
              memcpy(__dst, __src, a6);
              break;
            case 5u:
              if (a6 >= 1)
              {
                v34 = 0;
                do
                {
                  *&__dst[8 * v34] = bswap64(*&__src[8 * v34]);
                  ++v34;
                }

                while (a6 > v34);
              }

              break;
            case 6u:
              if (a6 >= 1)
              {
                v35 = 0;
                do
                {
                  *&__dst[4 * v35] = bswap32(*&__src[4 * v35]);
                  ++v35;
                }

                while (a6 > v35);
              }

              break;
            case 7u:
            case 0x11u:
              if (a6 >= 1)
              {
                v26 = 0;
                v27 = 0;
                do
                {
                  *&__dst[4 * v26] = bswap32(*&__src[4 * v26]);
                  *&__dst[(4 * v26) | 4] = bswap32(*&__src[(4 * v26) | 4]);
                  ++v27;
                  v26 += 2;
                }

                while (a6 > v27);
              }

              break;
            case 8u:
            case 0x12u:
              if (a6 >= 1)
              {
                v20 = 0;
                v21 = 0;
                do
                {
                  v22 = 4 * v20;
                  *&__dst[v22] = bswap32(*&__src[v22]);
                  *&__dst[v22 + 4] = bswap32(*&__src[v22 + 4]);
                  *&__dst[v22 + 8] = bswap32(*&__src[v22 + 8]);
                  ++v21;
                  v20 += 3;
                }

                while (a6 > v21);
              }

              break;
            case 9u:
            case 0x13u:
              if (a6 >= 1)
              {
                v23 = 0;
                v24 = 0;
                do
                {
                  v25 = 4 * v23;
                  *&__dst[v25] = bswap32(*&__src[v25]);
                  *&__dst[v25 | 4] = bswap32(*&__src[v25 | 4]);
                  *&__dst[v25 | 8] = bswap32(*&__src[v25 | 8]);
                  *&__dst[v25 | 0xC] = bswap32(*&__src[v25 | 0xC]);
                  ++v24;
                  v23 += 4;
                }

                while (a6 > v24);
              }

              break;
            case 0xAu:
              if (a6 >= 1)
              {
                v31 = 0;
                do
                {
                  v32 = 64 * v31;
                  v33 = 16;
                  do
                  {
                    *&__dst[v32] = bswap32(*&__src[v32]);
                    v32 += 4;
                    --v33;
                  }

                  while (v33);
                  ++v31;
                }

                while (a6 > v31);
              }

              break;
            case 0xBu:
              if (a6 >= 1)
              {
                v28 = 0;
                do
                {
                  v29 = 36 * v28;
                  v30 = 9;
                  do
                  {
                    *&__dst[v29] = bswap32(*&__src[v29]);
                    v29 += 4;
                    --v30;
                  }

                  while (v30);
                  ++v28;
                }

                while (a6 > v28);
              }

              break;
            case 0xCu:
              if (a6 >= 1)
              {
                v37 = 0;
                v38 = 0;
                do
                {
                  v39 = 4 * v37;
                  *&__dst[v39] = bswap32(*&__src[v39]);
                  *&__dst[v39 | 4] = bswap32(*&__src[v39 | 4]);
                  *&__dst[v39 | 8] = bswap32(*&__src[v39 | 8]);
                  *&__dst[v39 | 0xC] = bswap32(*&__src[v39 | 0xC]);
                  ++v38;
                  v37 += 4;
                }

                while (a6 > v38);
              }

              break;
            case 0xDu:
            case 0x10u:
              if (a6 >= 1)
              {
                v19 = 0;
                do
                {
                  *&__dst[2 * v19] = *&__src[2 * v19];
                  ++v19;
                }

                while (a6 > v19);
              }

              break;
            case 0xEu:
              if (a6 >= 1)
              {
                v41 = 0;
                do
                {
                  *&__dst[2 * v41] = *&__src[2 * v41];
                  ++v41;
                }

                while (a6 > v41);
              }

              break;
            default:
              *__dst = *__src;
              break;
          }

          __dst += a9;
          __src += a8;
          ++v17;
        }

        while (v17 != a7);
      }

      return 1;
    }

    v12 = scn_default_log();
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      C3DConvertFromPlatformIndependentData_cold_2();
      return 0;
    }
  }

  else
  {
    v9 = scn_default_log();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      C3DConvertFromPlatformIndependentData_cold_3();
      return 0;
    }
  }

  return result;
}

CFDataRef C3DCopyLittleEndianToHostRepresentationOfData(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  v5 = C3DBaseTypeForCFNumberType(a2);
  v6 = C3DSizeOfBaseType(v5);
  if (!v5)
  {
    return 0;
  }

  v7 = v6 * a3;
  if (!(v6 * a3))
  {
    return 0;
  }

  v8 = malloc_type_malloc(v6 * a3, 0x24FDF311uLL);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v11 = C3DSizeOfBaseType(v5);
  v12 = C3DSizeOfBaseType(v5);
  if (!C3DConvertFromPlatformIndependentData(BytePtr, v8, Length, v7, v5, 1, a3, v11, v12))
  {
    free(v8);
    return 0;
  }

  v13 = *MEMORY[0x277CBECE8];
  v14 = *MEMORY[0x277CBECE8];

  return CFDataCreateWithBytesNoCopy(v13, v8, v7, v14);
}

uint64_t C3DSizeOfBaseType(int a1)
{
  if (a1 >= 46)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSizeOfBaseType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return __C3DSizeOfBaseTypeArray[a1];
}

CFDataRef C3DCopyHostToLittleEndianRepresentationOfData(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  Length = CFDataGetLength(a1);
  v7 = C3DBaseTypeForCFNumberType(a2);
  v8 = C3DSizeOfBaseType(v7);
  if (!v7)
  {
    return 0;
  }

  v9 = v8 * a3;
  if (!(v8 * a3))
  {
    return 0;
  }

  v10 = malloc_type_malloc(v8 * a3, 0x2F96E996uLL);
  BytePtr = CFDataGetBytePtr(a1);
  v12 = C3DSizeOfBaseType(v7);
  v13 = C3DSizeOfBaseType(v7);
  if (!C3DConvertToPlatformIndependentData(BytePtr, v10, Length, v9, v7, 1, a3, v12, v13))
  {
    free(v10);
    return 0;
  }

  v14 = *MEMORY[0x277CBECE8];
  v15 = *MEMORY[0x277CBECE8];

  return CFDataCreateWithBytesNoCopy(v14, v10, v9, v15);
}

uint64_t C3DBaseTypeArraySizeFromString(const __CFString *a1)
{
  v2 = CFStringFind(a1, @"[", 4uLL);
  if (!v2.length)
  {
    return 1;
  }

  v6.length = CFStringGetLength(a1) - v2.location - 2;
  v6.location = v2.location + 1;
  v3 = CFStringCreateWithSubstring(0, a1, v6);
  IntValue = CFStringGetIntValue(v3);
  CFRelease(v3);
  return IntValue;
}

uint64_t C3DBaseTypeFromGLSLString(const __CFString *a1)
{
  v2 = CFStringFind(a1, @"[", 4uLL);
  if (v2.length)
  {
    v7.length = v2.location;
    v7.location = 0;
    v3 = CFStringCreateWithSubstring(0, a1, v7);
    v4 = __C3DBaseTypeFromGLSLString(v3);
    CFRelease(v3);
    return v4;
  }

  else
  {

    return __C3DBaseTypeFromGLSLString(a1);
  }
}

uint64_t __C3DBaseTypeFromGLSLString(const __CFString *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (CFStringCompare(a1, @"int", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"BOOL", 0) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(a1, @"sampler1D", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"sampler2D", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"sampler3D", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"samplerCube", 0) == kCFCompareEqualTo)
  {
    return 5;
  }

  if (CFStringCompare(a1, @"float", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(a1, @"vec2", 0) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(a1, @"vec3", 0) == kCFCompareEqualTo)
  {
    return 9;
  }

  if (CFStringCompare(a1, @"vec4", 0) == kCFCompareEqualTo)
  {
    return 10;
  }

  if (CFStringCompare(a1, @"ivec2", 0) == kCFCompareEqualTo)
  {
    return 18;
  }

  if (CFStringCompare(a1, @"ivec3", 0) == kCFCompareEqualTo)
  {
    return 19;
  }

  if (CFStringCompare(a1, @"ivec4", 0) == kCFCompareEqualTo)
  {
    return 20;
  }

  if (CFStringCompare(a1, @"mat4", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"mat44", 0) == kCFCompareEqualTo)
  {
    return 11;
  }

  result = CFStringCompare(a1, @"none", 0);
  if (result)
  {
    v3 = scn_default_log();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v4 = 138412290;
      v5 = a1;
      _os_log_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_DEFAULT, "Warning: C3DBaseTypeFromGLSLString: unknown type name '%@'", &v4, 0xCu);
      return 0;
    }
  }

  return result;
}

uint64_t C3DBaseTypeFromMetalString(const __CFString *a1)
{
  v2 = CFStringFind(a1, @"[", 4uLL);
  if (v2.length)
  {
    v7.length = v2.location;
    v7.location = 0;
    v3 = CFStringCreateWithSubstring(0, a1, v7);
    v4 = __C3DBaseTypeFromMetalString(v3);
    CFRelease(v3);
    return v4;
  }

  else
  {

    return __C3DBaseTypeFromMetalString(a1);
  }
}

uint64_t __C3DBaseTypeFromMetalString(const __CFString *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (CFStringCompare(a1, @"int", 0) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(a1, @"BOOL", 0) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(a1, @"texture1d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texture2d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texture3d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texturecube", 0) == kCFCompareEqualTo)
  {
    return 5;
  }

  if (CFStringCompare(a1, @"float", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(a1, @"float2", 0) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(a1, @"float3", 0) == kCFCompareEqualTo)
  {
    return 9;
  }

  if (CFStringCompare(a1, @"float4", 0) == kCFCompareEqualTo)
  {
    return 10;
  }

  if (CFStringCompare(a1, @"int2", 0) == kCFCompareEqualTo)
  {
    return 18;
  }

  if (CFStringCompare(a1, @"int3", 0) == kCFCompareEqualTo)
  {
    return 19;
  }

  if (CFStringCompare(a1, @"int4", 0) == kCFCompareEqualTo)
  {
    return 20;
  }

  if (CFStringCompare(a1, @"float4x4", 0) == kCFCompareEqualTo)
  {
    return 11;
  }

  result = CFStringCompare(a1, @"none", 0);
  if (result)
  {
    v3 = scn_default_log();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v4 = 138412290;
      v5 = a1;
      _os_log_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_DEFAULT, "Warning: C3DBaseTypeFromMetalString: unknown type name '%@'", &v4, 0xCu);
      return 0;
    }
  }

  return result;
}

uint64_t C3DBaseTypeFromMetalOrGLSLString(const __CFString *a1)
{
  v2 = CFStringFind(a1, @"[", 4uLL);
  if (v2.length)
  {
    v7.length = v2.location;
    v7.location = 0;
    v3 = CFStringCreateWithSubstring(0, a1, v7);
    v4 = __C3DBaseTypeFromMetalOrGLSLString(v3);
    CFRelease(v3);
    return v4;
  }

  else
  {

    return __C3DBaseTypeFromMetalOrGLSLString(a1);
  }
}

uint64_t __C3DBaseTypeFromMetalOrGLSLString(const __CFString *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (CFStringCompare(a1, @"int", 0) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(a1, @"BOOL", 0) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(a1, @"texture1d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"sampler1D", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texture2d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"sampler2D", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texture3d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"sampler3D", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texturecube", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"samplerCube", 0) == kCFCompareEqualTo)
  {
    return 5;
  }

  if (CFStringCompare(a1, @"float", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(a1, @"float2", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"vec2", 0) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(a1, @"float3", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"vec3", 0) == kCFCompareEqualTo)
  {
    return 9;
  }

  if (CFStringCompare(a1, @"float4", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"vec4", 0) == kCFCompareEqualTo)
  {
    return 10;
  }

  if (CFStringCompare(a1, @"int2", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"ivec2", 0) == kCFCompareEqualTo)
  {
    return 18;
  }

  if (CFStringCompare(a1, @"int3", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"ivec3", 0) == kCFCompareEqualTo)
  {
    return 19;
  }

  if (CFStringCompare(a1, @"int4", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"ivec4", 0) == kCFCompareEqualTo)
  {
    return 20;
  }

  if (CFStringCompare(a1, @"float4x4", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"mat4", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"mat44", 0) == kCFCompareEqualTo)
  {
    return 11;
  }

  result = CFStringCompare(a1, @"none", 0);
  if (result)
  {
    v3 = scn_default_log();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v4 = 138412290;
      v5 = a1;
      _os_log_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_DEFAULT, "Warning: C3DBaseTypeFromMetalOrGLSLString: unknown type name '%@'", &v4, 0xCu);
      return 0;
    }
  }

  return result;
}

__CFString *C3DBaseTypeStringDescription(int a1)
{
  if (a1 >= 46)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSizeOfBaseType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return @"unknown type";
  }

  else if (a1 > 0x2D)
  {
    return @"unknown type";
  }

  else
  {
    return __C3DBaseTypeStringDescriptionArray[a1];
  }
}

uint64_t C3DBaseTypeGetComponentType(unsigned int a1)
{
  if (a1 < 0x2E)
  {
    return __C3DBaseTypeDescArray[3 * a1];
  }

  else
  {
    v1 = scn_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      C3DBaseTypeGetComponentType_cold_1();
    }

    return 0;
  }
}

uint64_t C3DBaseTypeGetComponentCount(unsigned int a1)
{
  if (a1 < 0x2E)
  {
    return HIBYTE(__C3DBaseTypeDescArray[3 * a1 + 1]);
  }

  v1 = scn_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    C3DBaseTypeGetComponentType_cold_1();
  }

  return 1;
}

uint64_t C3DBaseTypeGetBytesPerComponent(unsigned int a1)
{
  if (a1 < 0x2E)
  {
    return LOBYTE(__C3DBaseTypeDescArray[3 * a1 + 1]);
  }

  v1 = scn_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    C3DBaseTypeGetComponentType_cold_1();
  }

  return 0;
}

uint64_t C3DBaseTypeIsFloatingValue(unsigned int a1)
{
  if (a1 < 0x2E)
  {
    v2 = __C3DBaseTypeDescArray[3 * a1 + 2];
  }

  else
  {
    v1 = scn_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      C3DBaseTypeGetComponentType_cold_1();
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t C3DBaseTypeGetCompoundType(int a1, int a2)
{
  LOWORD(v2) = a1;
  if (a1 <= 15)
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        if ((a2 - 1) >= 4)
        {
          v13 = scn_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            C3DBaseTypeGetCompoundType_cold_2();
          }

          LOWORD(v2) = 1;
          return v2;
        }

        v3 = 16 * (a2 - 1);
        v4 = 0xA000900080001;
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_42;
        }

        if ((a2 - 1) >= 4)
        {
          v14 = scn_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            C3DBaseTypeGetCompoundType_cold_1();
          }

          LOWORD(v2) = 2;
          return v2;
        }

        v3 = 16 * (a2 - 1);
        v4 = 0x14001300120002;
      }
    }

    else
    {
      switch(a1)
      {
        case 4:
          if (a2 != 1)
          {
            if (a2 == 4)
            {
              LOWORD(v2) = 26;
              return v2;
            }

            v20 = scn_default_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              C3DBaseTypeGetCompoundType_cold_9();
            }
          }

          LOWORD(v2) = 4;
          return v2;
        case 14:
          if ((a2 - 1) >= 4)
          {
            v15 = scn_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              C3DBaseTypeGetCompoundType_cold_5();
            }

            LOWORD(v2) = 14;
            return v2;
          }

          v3 = 16 * (a2 - 1);
          v4 = 0x2200210020000ELL;
          break;
        case 15:
          if ((a2 - 1) >= 4)
          {
            v18 = scn_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              C3DBaseTypeGetCompoundType_cold_3();
            }

            LOWORD(v2) = 15;
            return v2;
          }

          v3 = 16 * (a2 - 1);
          v4 = 0x2D002C002B000FLL;
          break;
        default:
          goto LABEL_42;
      }
    }

    v2 = v4 >> v3;
    return v2;
  }

  if (a1 > 21)
  {
    switch(a1)
    {
      case 22:
        if (a2 != 1)
        {
          if (a2 == 4)
          {
            LOWORD(v2) = 28;
            return v2;
          }

          v23 = scn_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            C3DBaseTypeGetCompoundType_cold_8();
          }
        }

        LOWORD(v2) = 22;
        return v2;
      case 35:
        if ((a2 - 1) >= 4)
        {
          v17 = scn_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            C3DBaseTypeGetCompoundType_cold_6();
          }

          LOWORD(v2) = 35;
        }

        else
        {
          LOWORD(v2) = a2 + 34;
        }

        return v2;
      case 39:
        if ((a2 - 1) >= 4)
        {
          v19 = scn_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            C3DBaseTypeGetCompoundType_cold_4();
          }

          LOWORD(v2) = 39;
        }

        else
        {
          LOWORD(v2) = a2 + 38;
        }

        return v2;
    }

LABEL_42:
    if (a2 != 1)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        C3DBaseTypeGetCompoundType_cold_12(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    return v2;
  }

  if (a1 == 16)
  {
    if (a2 != 1)
    {
      if (a2 == 4)
      {
        LOWORD(v2) = 25;
        return v2;
      }

      v22 = scn_default_log();
      LOWORD(v2) = 16;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      C3DBaseTypeGetCompoundType_cold_11();
    }

    LOWORD(v2) = 16;
    return v2;
  }

  if (a1 != 17)
  {
    if (a1 == 21)
    {
      if (a2 != 1)
      {
        if (a2 == 4)
        {
          LOWORD(v2) = 27;
          return v2;
        }

        v21 = scn_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          C3DBaseTypeGetCompoundType_cold_10();
        }
      }

      LOWORD(v2) = 21;
      return v2;
    }

    goto LABEL_42;
  }

  if ((a2 - 1) >= 4)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      C3DBaseTypeGetCompoundType_cold_7();
    }

    LOWORD(v2) = 17;
  }

  else
  {
    v2 = 0x1F001E001D0011uLL >> (16 * (a2 - 1));
  }

  return v2;
}

BOOL C3DBaseTypeDescription(int a1, uint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  if (a1 >= 46 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DSizeOfBaseType_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    if (a3 && a4)
    {
      goto LABEL_8;
    }
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DBaseTypeDescription_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_8:
  v24 = &__C3DBaseTypeDescArray[3 * a1];
  v25 = v24[3];
  *a2 = v24[2];
  *a3 = v25;
  LOBYTE(v24) = v24[4];
  *a4 = v24 & 1;
  return C3DBaseTypeFromDescription(*a2, v25, v24 & 1) == a1;
}

uint64_t C3DBaseTypeFromDescription(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 > 3)
  {
    if (a1 == 8)
    {
      LOWORD(v8) = 6;
      return v8;
    }

    if (a1 != 4)
    {
      goto LABEL_31;
    }

    v7 = a2 - 1;
    if (a3)
    {
      if ((a2 - 1) < 4)
      {
        v8 = 0xA000900080001uLL >> (16 * v7);
        return v8;
      }

      goto LABEL_13;
    }

    if ((a2 - 1) < 4)
    {
      v5 = 16 * v7;
      v6 = 0x14001300120002;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (a1 == 1)
  {
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_25:
    if ((C3DBaseTypeFromDescription_done_155 & 1) == 0)
    {
      C3DBaseTypeFromDescription_done_155 = 1;
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        C3DBaseTypeFromDescription_cold_1();
      }
    }

    if (a2 == 1)
    {
      LOWORD(v8) = 16;
      return v8;
    }

    if (a2 == 4)
    {
      LOWORD(v8) = 25;
      return v8;
    }

    goto LABEL_31;
  }

  if (a1 == 2)
  {
    v4 = a2 - 1;
    if (a3)
    {
      if ((a2 - 1) < 4)
      {
        v5 = 16 * v4;
        v6 = 0x2D002C002B000FLL;
LABEL_24:
        v8 = v6 >> v5;
        return v8;
      }

LABEL_13:
      if ((C3DBaseTypeFromDescription_done & 1) == 0)
      {
        C3DBaseTypeFromDescription_done = 1;
        v9 = scn_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          C3DBaseTypeFromDescription_cold_1();
        }
      }

      if (a2 == 1)
      {
        LOWORD(v8) = 21;
        return v8;
      }

      if (a2 == 4)
      {
        LOWORD(v8) = 27;
        return v8;
      }

      goto LABEL_31;
    }

    if ((a2 - 1) < 4)
    {
      v5 = 16 * v4;
      v6 = 0x2200210020000ELL;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

LABEL_31:
  v11 = scn_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    C3DBaseTypeFromDescription_cold_3();
  }

  LOWORD(v8) = 0;
  return v8;
}

float32_t C3DAddBaseType(int a1, float32x2_t *a2, float32x2_t *a3, float32x4_t *a4, float32x4_t a5)
{
  if (!a2 && (v9 = scn_default_log(), os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    C3DAddBaseType_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
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
    C3DAddBaseType_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  if (!a4)
  {
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      C3DAddBaseType_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  switch(a1)
  {
    case 1:
    case 7:
      a5.f32[0] = a2->f32[0] + a3->f32[0];
      a4->i32[0] = a5.i32[0];
      break;
    case 2:
      a4->i32[0] = a3->i32[0] + a2->i32[0];
      break;
    case 3:
    case 4:
    case 5:
    case 12:
    case 16:
      v33 = scn_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        C3DAddBaseType_cold_5();
      }

      break;
    case 6:
      *a5.i64 = *a2 + *a3;
      goto LABEL_20;
    case 8:
    case 18:
      *a5.f32 = vadd_f32(*a2, *a3);
LABEL_20:
      a4->i64[0] = a5.i64[0];
      break;
    case 9:
    case 10:
    case 19:
    case 20:
      a5 = vaddq_f32(*a2->f32, *a3->f32);
      *a4 = a5;
      break;
    case 11:
      a5.i32[0] = C3DMatrix4x4Add(a2, a3, a4).u32[0];
      break;
    case 13:
      a5.f32[0] = C3DColor4Add(a2, a3, a4->f32);
      break;
    case 14:
    case 17:
      a4->i16[0] = a3->i16[0] + a2->i16[0];
      break;
    case 15:
      v35 = scn_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        C3DAddBaseType_cold_4();
      }

      break;
    default:
      v34 = scn_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        C3DAddBaseType_cold_6();
      }

      break;
  }

  return a5.f32[0];
}

float32_t C3DConcatBaseType(int a1, float32x2_t *a2, float32x2_t *a3, float32x4_t *a4, float32x4_t a5)
{
  if (!a2 && (v9 = scn_default_log(), os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    C3DAddBaseType_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
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
    C3DAddBaseType_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  if (!a4)
  {
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      C3DAddBaseType_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  if (a1 != 11)
  {
    return C3DAddBaseType(a1, a2, a3, a4, a5);
  }

  v33 = C3DMatrix4x4Mult(a2, a3, a4);
  return *&v33;
}

float32_t C3DSubBaseType(int a1, float32x2_t *a2, float32x2_t *a3, float32x4_t *a4, float32x4_t a5)
{
  if (!a2 && (v9 = scn_default_log(), os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    C3DAddBaseType_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
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
    C3DAddBaseType_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  if (!a4)
  {
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      C3DAddBaseType_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  switch(a1)
  {
    case 1:
    case 7:
      a5.f32[0] = a2->f32[0] - a3->f32[0];
      a4->i32[0] = a5.i32[0];
      break;
    case 2:
      a4->i32[0] = a2->i32[0] - a3->i32[0];
      break;
    case 3:
    case 4:
    case 5:
    case 12:
    case 16:
      v33 = scn_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        C3DSubBaseType_cold_5();
      }

      break;
    case 6:
      *a5.i64 = *a2 - *a3;
      goto LABEL_20;
    case 8:
    case 18:
      *a5.f32 = vsub_f32(*a2, *a3);
LABEL_20:
      a4->i64[0] = a5.i64[0];
      break;
    case 9:
    case 10:
    case 19:
    case 20:
      a5 = vsubq_f32(*a2->f32, *a3->f32);
      *a4 = a5;
      break;
    case 11:
      a5.i32[0] = C3DMatrix4x4Sub(a2, a3, a4).u32[0];
      break;
    case 13:
      a5.f32[0] = C3DColor4Sub(a2, a3, a4->f32);
      break;
    case 14:
    case 17:
      a4->i16[0] = a2->i16[0] - a3->i16[0];
      break;
    case 15:
      v35 = scn_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        C3DSubBaseType_cold_4();
      }

      break;
    default:
      v34 = scn_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        C3DSubBaseType_cold_6();
      }

      break;
  }

  return a5.f32[0];
}

UInt8 *C3DCreateCStringFromStringWithEncoding(CFStringRef theString, CFStringEncoding a2)
{
  if (!theString)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateCStringFromStringWithEncoding_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
  if ((MaximumSizeForEncoding & 0x8000000000000000) == 0)
  {
    v14 = MaximumSizeForEncoding;
    v15 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0x3E99D061uLL);
    v18.location = 0;
    v18.length = Length;
    if (CFStringGetBytes(theString, v18, a2, 0x20u, 0, v15, v14 + 1, 0))
    {
      return v15;
    }

    free(v15);
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    C3DCreateCStringFromStringWithEncoding_cold_2();
  }

  return 0;
}

id C3DCopyRelativeFromFileURL(void *a1, void *a2)
{
  v3 = [a1 URLByDeletingLastPathComponent];

  return C3DCopyRelativeFromFolderURL(v3, a2);
}

id C3DCopyRelativeFromFolderURL(void *a1, void *a2)
{
  v3 = [a1 path];
  v7 = [a2 path];
  if (v3)
  {
    v4 = &stru_282DCC058;
    while (([v3 isEqualToString:@"/"] & 1) == 0)
    {
      if ([v7 hasPrefix:v3])
      {
        v5 = [v7 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(v3, "length"), &stru_282DCC058}];
        if ([v5 characterAtIndex:0] == 47)
        {
          v5 = [v5 substringFromIndex:1];
        }

        v7 = [(__CFString *)v4 stringByAppendingPathComponent:v5];
        break;
      }

      v3 = [v3 stringByDeletingLastPathComponent];
      v4 = [(__CFString *)v4 stringByAppendingPathComponent:@".."];
      if (!v3)
      {
        break;
      }
    }
  }

  return v7;
}

CFErrorRef C3DErrorCreate(CFIndex a1, void *a2, void *a3)
{
  values[2] = *MEMORY[0x277D85DE8];
  values[0] = a2;
  values[1] = a3;
  v4 = *MEMORY[0x277CBEE68];
  keys[0] = *MEMORY[0x277CBEE58];
  keys[1] = v4;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = CFDictionaryCreate(0, keys, values, v5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = CFErrorCreate(0, @"SCNKitErrorDomain", a1, v6);
  CFRelease(v6);
  return v7;
}

uint64_t C3DMakePowerOfTwo(int a1)
{
  v1 = 1;
  do
  {
    v2 = v1;
    v1 = (2 * v1);
  }

  while (v2 < a1);
  return v2;
}

double C3DParseVersionNumber(CFStringRef theString)
{
  if (theString)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @".");
    if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
    {
      v3 = 0.0;
    }

    else
    {
      v2 = 0;
      v3 = 0.0;
      v4 = 1.0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v2);
        v3 = v3 + CFStringGetIntValue(ValueAtIndex) * v4;
        v4 = v4 / 100.0;
        ++v2;
      }

      while (v2 < CFArrayGetCount(ArrayBySeparatingStrings));
    }

    CFRelease(ArrayBySeparatingStrings);
  }

  else
  {
    v6 = scn_default_log();
    v3 = 0.0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, "Warning: C3DParseVersionNumber - No version found", v8, 2u);
    }
  }

  return v3;
}

const char *SCNStringGetCString(const char *result)
{
  if (result)
  {
    v1 = result;
    result = CFStringGetCStringPtr(result, 0x600u);
    if (!result)
    {

      return [v1 UTF8String];
    }
  }

  return result;
}

CFCharacterSetRef C3DStringTokenizerInit(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  if (theString)
  {
    *(a1 + 144) = theString;
    *(a1 + 168) = a3;
    *(a1 + 176) = a4;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    *(a1 + 152) = CharactersPtr;
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    *(a1 + 160) = CStringPtr;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
  }

  *(a1 + 200) = a3;
  *(a1 + 208) = 0;
  *(a1 + 216) = a5;
  *(a1 + 224) = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  result = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  *(a1 + 232) = result;
  return result;
}

void C3DInlineBufferConsumeWhitespaces(UniChar *buffer, uint64_t *a2, uint64_t a3)
{
  for (i = *a2; i < a3; *a2 = i)
  {
    if (i < 0 || (v7 = *(buffer + 20), v7 <= i))
    {
      v9 = 0;
    }

    else
    {
      v8 = *(buffer + 17);
      if (v8)
      {
        v9 = *(v8 + 2 * *(buffer + 19) + 2 * i);
      }

      else
      {
        v10 = *(buffer + 18);
        if (v10)
        {
          v9 = *(v10 + *(buffer + 19) + i);
        }

        else
        {
          if (*(buffer + 22) <= i || (v11 = *(buffer + 21), v11 > i))
          {
            v12 = i - 4;
            if (i < 4)
            {
              v12 = 0;
            }

            if (v12 + 64 < v7)
            {
              v7 = v12 + 64;
            }

            *(buffer + 21) = v12;
            *(buffer + 22) = v7;
            v13.length = v7 - v12;
            v13.location = *(buffer + 19) + v12;
            CFStringGetCharacters(*(buffer + 16), v13, buffer);
            v11 = *(buffer + 21);
          }

          v9 = buffer[i - v11];
        }
      }
    }

    if (v9 != 12288 && (v9 - 0x2000) >= 0xCu && v9 >= 0x21u && (v9 - 127) > 0x21u)
    {
      break;
    }

    i = *a2 + 1;
  }
}

BOOL C3DSourceCodeHasPrefix(const __CFString *a1, const __CFString *a2)
{
  Length = CFStringGetLength(a1);
  v5 = CFStringGetLength(a2);
  theString = a1;
  v46 = 0;
  v47 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v44 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v32 = 0uLL;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v48 = 0;
  v49 = 0;
  v45 = CStringPtr;
  v31[0] = a2;
  v33 = v5;
  v34 = 0;
  v8 = CFStringGetCharactersPtr(a2);
  v9 = 0;
  v31[1] = v8;
  if (!v8)
  {
    v9 = CFStringGetCStringPtr(a2, 0x600u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *buffer = 0u;
  v36 = 0u;
  *(&v33 + 1) = 0;
  v34 = 0;
  *&v32 = v9;
  v21 = 0;
  v22 = 0;
  C3DInlineBufferConsumeWhitespaces(buffer, &v22, Length);
LABEL_6:
  C3DInlineBufferConsumeWhitespaces(v23, &v21, v5);
  v10 = v21;
  while (1)
  {
    if (v10 == v5)
    {
      return 1;
    }

    v11 = v22;
    if (v22 == Length)
    {
      goto LABEL_51;
    }

    if (v22 < 0 || (v12 = v47, v47 <= v22))
    {
      v13 = 0;
    }

    else if (v44)
    {
      v13 = v44[v46 + v22];
    }

    else if (v45)
    {
      v13 = v45[v46 + v22];
    }

    else
    {
      if (v49 <= v22 || (v16 = v48, v48 > v22))
      {
        v17 = v22 - 4;
        if (v22 < 4)
        {
          v17 = 0;
        }

        if (v17 + 64 < v47)
        {
          v12 = v17 + 64;
        }

        v48 = v17;
        v49 = v12;
        v50.length = v12 - v17;
        v50.location = v46 + v17;
        CFStringGetCharacters(theString, v50, buffer);
        v16 = v48;
      }

      v13 = buffer[v11 - v16];
    }

    if (v10 < 0 || (v14 = v33, v33 <= v10))
    {
      v15 = 0;
    }

    else if (v31[1])
    {
      v15 = *(&v31[1]->isa + *(&v32 + 1) + v10);
    }

    else if (v32)
    {
      v15 = *(v32 + *(&v32 + 1) + v10);
    }

    else
    {
      if (v34 <= v10 || (v18 = *(&v33 + 1), *(&v33 + 1) > v10))
      {
        v19 = v10 - 4;
        if (v10 < 4)
        {
          v19 = 0;
        }

        if (v19 + 64 < v33)
        {
          v14 = v19 + 64;
        }

        *(&v33 + 1) = v19;
        v34 = v14;
        v51.length = v14 - v19;
        v51.location = *(&v32 + 1) + v19;
        CFStringGetCharacters(v31[0], v51, v23);
        v18 = *(&v33 + 1);
      }

      v15 = v23[v10 - v18];
    }

    if (v15 == 12288 || (v15 - 0x2000) < 0xCu || v15 < 0x21u || (v15 - 127) <= 0x21u)
    {
      if (v13 == 12288 || (v13 - 0x2000) < 0xCu || v13 < 0x21u || (v13 - 127) <= 0x21u)
      {
        C3DInlineBufferConsumeWhitespaces(buffer, &v22, Length);
        goto LABEL_6;
      }

LABEL_51:
      C3DInlineBufferConsumeWhitespaces(v23, &v21, v5);
      return v21 == v5;
    }

    if (v13 != v15)
    {
      return 0;
    }

    v21 = ++v10;
    v22 = v11 + 1;
  }
}

IOSurfaceRef SCNIOSurfaceCreateWithSize(double a1)
{
  v1 = *&a1;
  v11[6] = *MEMORY[0x277D85DE8];
  v2 = *(&a1 + 1);
  v10[0] = *MEMORY[0x277CD2B88];
  v11[0] = [MEMORY[0x277CCABB0] numberWithInt:*&a1];
  v10[1] = *MEMORY[0x277CD2A28];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  v4 = *MEMORY[0x277CD2960];
  v11[1] = v3;
  v11[2] = &unk_282E0F618;
  v5 = *MEMORY[0x277CD2968];
  v10[2] = v4;
  v10[3] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:(4 * v1)];
  v7 = *MEMORY[0x277CD2A70];
  v11[3] = v6;
  v11[4] = &unk_282E0F630;
  v8 = *MEMORY[0x277CD2948];
  v10[4] = v7;
  v10[5] = v8;
  v11[5] = [MEMORY[0x277CCABB0] numberWithInt:(4 * v2 * v1)];
  return IOSurfaceCreate([MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6]);
}

uint64_t C3DIOSurfaceToTexImage(uint64_t a1, void *a2, unsigned int a3, int a4, double a5)
{
  if (a4 != 6408)
  {
    C3DIOSurfaceToTexImage_cold_1();
  }

  BYTE4(v6) = 0;
  LODWORD(v6) = 0;
  return [a2 texImageIOSurface:a1 target:a3 internalFormat:6408 width:*&a5 height:*(&a5 + 1) format:6408 type:33639 plane:v6 invert:?];
}

CFURLRef C3DCopyResolvedURLFromFileURL(const __CFURL *a1)
{
  v2 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (v2)
  {
    v3 = v2;
    v4 = C3DCopyResolvedPathFromPath(v2);
    if (v4)
    {
      v5 = v4;
      if (CFEqual(v3, v4))
      {
        v6 = 0;
      }

      else
      {
        v7 = CFURLHasDirectoryPath(a1);
        v6 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, v7);
      }

      CFRelease(v5);
      CFRelease(v3);
      if (v6)
      {
        return v6;
      }
    }

    else
    {
      CFRelease(v3);
    }
  }

  return CFRetain(a1);
}

CFStringRef C3DCopyResolvedPathFromPath(const __CFString *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = C3DCreateCStringFromStringWithEncoding(a1, 0x8000100u);
  realpath_DARWIN_EXTSN(v1, cStr);
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  free(v1);
  return v2;
}

id C3DURLCreateCopyAppendingPathComponent(CFURLRef url, CFStringRef pathComponent)
{
  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], url, pathComponent, 0);
  v3 = [(__CFURL *)v2 standardizedURL];
  if (v2)
  {
    v5 = v3;
    CFRelease(v2);
    v3 = v5;
  }

  return v3;
}

uint64_t C3DGetCPUCaps()
{
  result = C3DGetCPUCaps_cpuCaps;
  if (C3DGetCPUCaps_cpuCaps == -1)
  {
    C3DGetCPUCaps_cpuCaps = 0;
    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse2", &v3, &v2, 0, 0) && v3)
    {
      C3DGetCPUCaps_cpuCaps |= 1u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse3", &v3, &v2, 0, 0) && v3)
    {
      C3DGetCPUCaps_cpuCaps |= 2u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.supplementalsse3", &v3, &v2, 0, 0) && v3)
    {
      C3DGetCPUCaps_cpuCaps |= 2u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse4_1", &v3, &v2, 0, 0) && v3)
    {
      C3DGetCPUCaps_cpuCaps |= 8u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse4_2", &v3, &v2, 0, 0) && v3)
    {
      C3DGetCPUCaps_cpuCaps |= 0x10u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.avx1_0", &v3, &v2, 0, 0) && v3)
    {
      C3DGetCPUCaps_cpuCaps |= 0x20u;
    }

    v3 = 0;
    v2 = 4;
    v1 = sysctlbyname("hw.optional.fma", &v3, &v2, 0, 0);
    result = C3DGetCPUCaps_cpuCaps;
    if (!v1)
    {
      if (v3)
      {
        result = C3DGetCPUCaps_cpuCaps | 0x40u;
        C3DGetCPUCaps_cpuCaps |= 0x40u;
      }
    }
  }

  return result;
}

uint64_t _C3DStringTokenizerAdvanceToNextToken(uint64_t *a1, int a2)
{
  v2 = a1[26] + a1[25];
  v3 = a1[1] + *a1;
  *(a1 + 217) = 0;
  if (v2 >= v3)
  {
    return 0;
  }

  v6 = (a1 + 2);
  while (1)
  {
    v7 = v2 - *a1;
    if (v7 < 0 || (v8 = a1[22], v8 <= v7))
    {
      v10 = 0;
    }

    else
    {
      v9 = a1[19];
      if (v9)
      {
        v10 = *(v9 + 2 * a1[21] + 2 * v7);
      }

      else
      {
        v31 = a1[20];
        if (v31)
        {
          v10 = *(v31 + a1[21] + v7);
        }

        else
        {
          if (a1[24] <= v7 || (v32 = a1[23], v32 > v7))
          {
            v33 = v7 - 4;
            if (v7 < 4)
            {
              v33 = 0;
            }

            if (v33 + 64 < v8)
            {
              v8 = v33 + 64;
            }

            a1[23] = v33;
            a1[24] = v8;
            v56.length = v8 - v33;
            v56.location = a1[21] + v33;
            CFStringGetCharacters(a1[18], v56, v6);
            v32 = a1[23];
          }

          v10 = v6[v7 - v32];
        }
      }
    }

    v11 = v2 + 1;
    if (!CFCharacterSetIsCharacterMember(a1[28], v10))
    {
      break;
    }

    v12 = -v2;
    v13 = v2 + 65;
    do
    {
      v14 = *a1;
      v15 = v2 - *a1 + 1;
      if (v15 < 0 || (v16 = a1[22], v16 <= v15))
      {
        v19 = 0;
      }

      else
      {
        v17 = a1[19];
        if (v17)
        {
          v18 = v17 - 2 * v14 + 2 * a1[21] + 2 * v2;
LABEL_14:
          v19 = *(v18 + 2);
          goto LABEL_16;
        }

        v20 = a1[20];
        if (!v20)
        {
          if (a1[24] <= v15 || (v21 = a1[23], v21 > v15))
          {
            v22 = v11 - v14;
            if ((v11 - v14) >= 4)
            {
              v22 = 4;
            }

            v23 = v14 + v22;
            v24 = v2 - (v14 + v22);
            v25 = v24 + 1;
            v26 = v24 + 65;
            if (v26 >= v16)
            {
              v26 = a1[22];
            }

            a1[23] = v25;
            a1[24] = v26;
            v27 = v2 + a1[21] - v14 - v22;
            v28 = v13 - v14 - v22;
            if (v16 >= v28)
            {
              v16 = v28;
            }

            v55.length = v12 + v23 + v16 - 1;
            v55.location = v27 + 1;
            CFStringGetCharacters(a1[18], v55, v6);
            v21 = a1[23];
          }

          v18 = &v6[v2 - (v21 + v14)];
          goto LABEL_14;
        }

        v19 = *(v20 + v2 + a1[21] - v14 + 1);
      }

LABEL_16:
      ++v2;
      --v12;
      ++v13;
      ++v11;
    }

    while (CFCharacterSetIsCharacterMember(a1[28], v19));
    v29 = a1[25] + a1[26];
    a1[25] = v29;
    a1[26] = v2 - v29;
    if (*(a1 + 216) == 1)
    {
      result = 1;
      *(a1 + 217) = 1;
      return result;
    }

LABEL_35:
    if (v2 >= v3)
    {
      return 0;
    }
  }

  if (v10 != 95 && !CFCharacterSetIsCharacterMember(a1[29], v10))
  {
    v30 = a1[25] + a1[26];
    a1[25] = v30;
    a1[26] = v11 - v30;
    ++v2;
    if ((a1[27] & 1) == 0)
    {
      goto LABEL_35;
    }

    return 1;
  }

  v34 = 0;
  v35 = v2 + 1;
  while (2)
  {
    v36 = -v35;
    v37 = v35 + 64;
    v38 = v11;
    while (2)
    {
      v11 = v38;
      v39 = *a1;
      v40 = v35 - *a1;
      if (v40 < 0 || (v41 = a1[22], v41 <= v40))
      {
        v43 = 0;
      }

      else
      {
        v42 = a1[19];
        if (v42)
        {
          v43 = *(v42 - 2 * v39 + 2 * a1[21] + 2 * v35);
        }

        else
        {
          v46 = a1[20];
          if (v46)
          {
            v43 = *(v46 + a1[21] - v39 + v35);
          }

          else
          {
            if (a1[24] <= v40 || (v47 = a1[23], v47 > v40))
            {
              if (v40 >= 4)
              {
                v40 = 4;
              }

              v48 = v39 + v40;
              v49 = v35 - (v39 + v40);
              v50 = v49 + 64;
              if (v49 + 64 >= v41)
              {
                v50 = a1[22];
              }

              a1[23] = v49;
              a1[24] = v50;
              v51 = a1[21] - v39 - v40;
              v52 = v37 - v39 - v40;
              if (v41 >= v52)
              {
                v41 = v52;
              }

              v57.location = v35 + v51;
              v57.length = v36 + v48 + v41;
              CFStringGetCharacters(a1[18], v57, v6);
              v47 = a1[23];
            }

            v43 = v6[v35 - (v47 + v39)];
          }
        }

        if (v43 == 95)
        {
          CFCharacterSetIsCharacterMember(a1[28], 0x5Fu);
LABEL_56:
          --v36;
          ++v37;
          v38 = ++v35;
          if (v34)
          {
            goto LABEL_76;
          }

          continue;
        }
      }

      break;
    }

    IsCharacterMember = CFCharacterSetIsCharacterMember(a1[29], v43);
    v45 = CFCharacterSetIsCharacterMember(a1[28], v43);
    if (IsCharacterMember)
    {
      goto LABEL_56;
    }

    if (a2)
    {
      ++v35;
      v34 = 1;
      if (v43 == 42)
      {
        v11 = v35;
        continue;
      }

      if (v45)
      {
        continue;
      }
    }

    break;
  }

LABEL_76:
  v53 = a1[25] + a1[26];
  a1[25] = v53;
  a1[26] = v11 - v53;
  return 1;
}

uint64_t C3DStringNamed(void *a1)
{
  v1 = C3DURLOfResourceNamed(a1);
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x277CCACA8];

    return [v3 stringWithContentsOfURL:v2 encoding:4 error:0];
  }

  else
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      C3DStringNamed_cold_1();
    }

    return 0;
  }
}

CFURLRef C3DURLOfResourceNamed(void *a1)
{
  result = [a1 length];
  if (result)
  {
    v3 = [a1 lastPathComponent];
    if ([a1 isEqualToString:v3])
    {
      v4 = 0;
    }

    else
    {
      v4 = [a1 stringByDeletingLastPathComponent];
    }

    v5 = [a1 pathExtension];
    v6 = [v3 stringByDeletingPathExtension];
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.SceneKit");
    v8 = CFBundleCopyResourceURL(BundleWithIdentifier, v6, v5, 0);
    if (!v8)
    {
      MainBundle = CFBundleGetMainBundle();
      v8 = CFBundleCopyResourceURL(MainBundle, v6, v5, v4);
    }

    return v8;
  }

  return result;
}

CFURLRef C3DCopyURLOfResourceNamed(void *a1)
{
  v1 = C3DURLOfResourceNamed(a1);
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

uint64_t C3DURLIsInMainBundle(const __CFURL *a1)
{
  MainBundle = CFBundleGetMainBundle();
  v3 = 0;
  if (!a1)
  {
    return v3;
  }

  v4 = MainBundle;
  if (!MainBundle)
  {
    return v3;
  }

  *packageCreator = 0;
  CFBundleGetPackageInfo(MainBundle, &packageCreator[1], packageCreator);
  if (packageCreator[1] != 1095782476)
  {
    return 0;
  }

  v5 = CFBundleCopyBundleURL(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFURLCopyPath(v5);
  v8 = CFURLCopyPath(a1);
  v9 = v8;
  if (v7 && v8)
  {
    v10 = CFStringFind([(__CFString *)v8 stringByStandardizingPath], [(__CFString *)v7 stringByStandardizingPath], 1uLL);
    if (v10.location)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10.length <= 0;
    }

    v12 = !v11;
    goto LABEL_15;
  }

  v12 = 0;
  v3 = 0;
  if (v7)
  {
LABEL_15:
    CFRelease(v7);
    v3 = v12;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(v6);
  return v3;
}

uint64_t C3DDictionaryNamed(void *a1)
{
  v2 = C3DGetTextResourceWithNameAllowingHotReload(a1);
  if (!v2 || (v3 = [v2 dataUsingEncoding:4], v7 = 0, (result = objc_msgSend(MEMORY[0x277CCAC58], "propertyListWithData:options:format:error:", v3, 0, &v7, 0)) == 0))
  {
    v5 = C3DURLOfResourceNamed(a1);
    if (v5)
    {
      return [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5];
    }

    else
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        C3DDictionaryNamed_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t C3DJsonNamed(void *a1, uint64_t a2)
{
  v14 = 0;
  v4 = C3DGetTextResourceWithNameAllowingHotReload(a1);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v5 = (*(a2 + 16))(a2, v4);
    }

    v6 = [v5 dataUsingEncoding:4];
    result = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v14];
    if (v14)
    {
      v8 = scn_default_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

LABEL_6:
      C3DJsonNamed_cold_1();
      return 0;
    }

    if (result)
    {
      return result;
    }
  }

  v9 = C3DURLOfResourceNamed(a1);
  if (!v9)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      C3DJsonNamed_cold_3();
    }

    return 0;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v9 encoding:4 error:0];
  if (a2)
  {
    v10 = (*(a2 + 16))(a2, v10);
  }

  v11 = [v10 dataUsingEncoding:4];
  result = [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:0 error:&v14];
  if (v14)
  {
    v12 = scn_default_log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t C3DPtrFromMTLBuffer(void *a1, void *a2)
{
  *a2 = [a1 length];

  return [a1 contents];
}

uint64_t C3DDataFromMTLBuffer(void *a1)
{
  if ([a1 storageMode] == 2)
  {
    if ((C3DDataFromMTLBuffer_done & 1) == 0)
    {
      C3DDataFromMTLBuffer_done = 1;
      v2 = scn_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        C3DDataFromMTLBuffer_cold_1();
      }
    }

    return 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEA90];
    v5 = [a1 contents];
    v6 = [a1 length];

    return [v4 dataWithBytesNoCopy:v5 length:v6 freeWhenDone:0];
  }
}

uint64_t C3DASTCIsSupported()
{
  if (C3DMetalIsSupported_onceToken != -1)
  {
    C3DASTCIsSupported_cold_1();
  }

  return kASTCIsSupported;
}

void _SCNSetLinearRenderingEnabled(int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (C3DLinearRenderingIsEnabled_onceToken != -1)
  {
    C3DLinearRenderingIsEnabled_cold_1();
  }

  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_21BEF7000, v2, OS_LOG_TYPE_INFO, "Info: linear rendering forced to %d", v4, 8u);
  }

  if (a1)
  {
    if (C3DMetalIsSupported_onceToken != -1)
    {
      _SCNSetLinearRenderingEnabled_cold_2();
    }

    v3 = C3DMetalIsSupported_supported;
  }

  else
  {
    v3 = 0;
  }

  _gC3DEnableLinearRendering = v3 & 1;
}

uint64_t C3DDeduceSphericalHarmonicsOrderFromDataLength(unint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DDeduceSphericalHarmonicsOrderFromDataLength_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sqrt((a1 / 0xC));
  if (12 * (v10 * v10) != a1)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DDeduceSphericalHarmonicsOrderFromDataLength_cold_2();
    }
  }

  return v10;
}

uint64_t C3DIsRunningInXcode()
{
  if (C3DIsRunningInXcode_onceToken != -1)
  {
    C3DIsRunningInXcode_cold_1();
  }

  return C3DIsRunningInXcode_runningXcode;
}

Class __C3DIsRunningInXcode_block_invoke()
{
  result = NSClassFromString(&cfstr_Skescenedocume.isa);
  C3DIsRunningInXcode_runningXcode = result != 0;
  return result;
}

uint64_t C3DIsRunningInSCNTool()
{
  if (C3DIsRunningInSCNTool_onceToken != -1)
  {
    C3DIsRunningInSCNTool_cold_1();
  }

  return C3DIsRunningInSCNTool_runningSCNTool;
}

Class __C3DIsRunningInSCNTool_block_invoke()
{
  result = NSClassFromString(&cfstr_Skedocumentsan.isa);
  C3DIsRunningInSCNTool_runningSCNTool = result != 0;
  return result;
}

uint64_t C3DPBROpacityIsEnabled()
{
  if (C3DPBROpacityIsEnabled_onceToken != -1)
  {
    C3DPBROpacityIsEnabled_cold_1();
  }

  return C3DPBROpacityIsEnabled_usePBROpacity;
}

uint64_t __C3DPBROpacityIsEnabled_block_invoke()
{
  result = C3DWasLinkedBeforeMajorOSYear2023();
  C3DPBROpacityIsEnabled_usePBROpacity = result ^ 1;
  return result;
}

CFTypeRef C3DSetShaderCompilationDirectory(CFTypeRef cf)
{
  result = kShaderCompilationDirectory;
  if (kShaderCompilationDirectory != cf)
  {
    if (kShaderCompilationDirectory)
    {
      CFRelease(kShaderCompilationDirectory);
      kShaderCompilationDirectory = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    kShaderCompilationDirectory = result;
  }

  return result;
}

CFTypeRef C3DSetShaderCacheLibraryURL(CFTypeRef cf)
{
  result = kShaderCacheLibraryURL;
  if (kShaderCacheLibraryURL != cf)
  {
    if (kShaderCacheLibraryURL)
    {
      CFRelease(kShaderCacheLibraryURL);
      kShaderCacheLibraryURL = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    kShaderCacheLibraryURL = result;
  }

  return result;
}

const __CFString *C3DCreatePathComponentsFromString(const __CFString *theString)
{
  if (theString)
  {
    return CFStringCreateArrayBySeparatingStrings(0, theString, @".");
  }

  return theString;
}

const __CFArray *C3DCreatePathFromComponents(const __CFArray *theArray)
{
  if (theArray)
  {
    return CFStringCreateByCombiningStrings(0, theArray, @".");
  }

  return theArray;
}

__CFArray *C3DCFArrayCreateBySortingStringValues(CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theArray);
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;
  CFArraySortValues(MutableCopy, v4, _C3DCFArrayCreateBySortingStringValuesComparatorFunction, 0);
  return MutableCopy;
}

CFArrayRef C3DCFDictionaryCopyAllKeys(const __CFDictionary *a1)
{
  if (a1 && (Count = CFDictionaryGetCount(a1)) != 0)
  {
    v3 = Count;
    v4 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a1, v4, 0);
    v5 = CFArrayCreate(*MEMORY[0x277CBECE8], v4, v3, MEMORY[0x277CBF128]);
    free(v4);
    return v5;
  }

  else
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = MEMORY[0x277CBF128];

    return CFArrayCreate(v7, 0, 0, v8);
  }
}

void C3DCFSetApplyBlock(const __CFSet *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      context = a2;
      CFSetApplyFunction(a1, _C3DCFSetApplyBlock, &context);
    }
  }
}

void C3DCFArrayApplyBlock(const __CFArray *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3[0] = 0;
      v3[1] = a2;
      v4.length = CFArrayGetCount(a1);
      v4.location = 0;
      CFArrayApplyFunction(a1, v4, _C3DCFArrayApplyBlock, v3);
    }
  }
}

uint64_t _C3DCFArrayApplyBlock(uint64_t a1, void *a2)
{
  v2 = a2[1];
  ++*a2;
  return (*(v2 + 16))();
}

void C3DCFDictionaryApplyBlock(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      context = a2;
      CFDictionaryApplyFunction(a1, _C3DCFDictionaryApplyBlock, &context);
    }
  }
}

void C3DCFDictionaryApplyBlockBySortingStringKeys(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = C3DCFDictionaryCopyAllKeys(a1);
      v5 = C3DCFArrayCreateBySortingStringValues(v4);
      CFRelease(v4);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __C3DCFDictionaryApplyBlockBySortingStringKeys_block_invoke;
      v6[3] = &unk_2782FDC38;
      v6[4] = a2;
      v6[5] = a1;
      C3DCFArrayApplyBlock(v5, v6);
      CFRelease(v5);
    }
  }
}

uint64_t __C3DCFDictionaryApplyBlockBySortingStringKeys_block_invoke(uint64_t a1, int a2, void *key)
{
  CFDictionaryGetValue(*(a1 + 40), key);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void _serializableCFTypeIDs()
{
  if (!_serializableCFTypeIDs_serializableTypes)
  {
    _serializableCFTypeIDs_serializableTypes = CFNumberGetTypeID();
    qword_27CDD9FA8 = CFDataGetTypeID();
    qword_27CDD9FB0 = CFStringGetTypeID();
    qword_27CDD9FB8 = CFDateGetTypeID();
    qword_27CDD9FC0 = CFArrayGetTypeID();
    qword_27CDD9FC8 = CFDictionaryGetTypeID();
  }
}

void OUTLINED_FUNCTION_5_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t SCNNodeGetBoundingSphere(void *a1, int a2)
{
  v74 = *MEMORY[0x277D85DE8];
  if (![a1 count])
  {
    return 0;
  }

  v4 = [objc_msgSend(a1 "firstObject")];
  if (!v4)
  {
    return 0;
  }

  v5 = C3DGetScene(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  C3DSceneLock(v5);
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v69 = __SCNNodeGetBoundingSphere_block_invoke;
  v70 = &__block_descriptor_40_e5_v8__0l;
  v71 = v6;
  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__rehash<true>(v66, vcvtps_u32_f32([a1 count] / 1.0));
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = [a1 countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v7)
  {
    v8 = *v63;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v10 = *(*(&v62 + 1) + 8 * i);
        v59 = [v10 nodeRef];
        v50 = &v59;
        std::__hash_table<std::__hash_value_type<__C3DNode *,SCNNode *>,std::__unordered_map_hasher<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::hash<__C3DNode *>,std::equal_to<__C3DNode *>,true>,std::__unordered_map_equal<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::equal_to<__C3DNode *>,std::hash<__C3DNode *>,true>,std::allocator<std::__hash_value_type<__C3DNode *,SCNNode *>>>::__emplace_unique_key_args<__C3DNode *,std::piecewise_construct_t const&,std::tuple<__C3DNode *&&>,std::tuple<>>(v66, &v59)[3] = v10;
      }

      v7 = [a1 countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v7);
  }

  v59 = 0xA00000000;
  v60 = v61;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = [a1 countByEnumeratingWithState:&v55 objects:v72 count:{16, v61}];
  if (v11)
  {
    v12 = *v56;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(a1);
        }

        v50 = [*(*(&v55 + 1) + 8 * j) nodeRef];
        v14 = std::__hash_table<std::__hash_value_type<__C3DNode *,SCNNode *>,std::__unordered_map_hasher<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::hash<__C3DNode *>,std::equal_to<__C3DNode *>,true>,std::__unordered_map_equal<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::equal_to<__C3DNode *>,std::hash<__C3DNode *>,true>,std::allocator<std::__hash_value_type<__C3DNode *,SCNNode *>>>::find<__C3DNode *>(v66, &v50);
        std::__hash_table<std::__hash_value_type<int,SCNPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SCNPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SCNPerformanceDataMapping>>>::erase(v66, v14);
        v15 = v50;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3321888768;
        v53[2] = __SCNNodeGetBoundingSphere_block_invoke_2;
        v53[3] = &__block_descriptor_80_e8_32c115_ZTSNSt3__113unordered_mapIP9__C3DNodeP7SCNNodeNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S4_EEEEEE_e20_q16__0____C3DNode__8l;
        std::unordered_map<__C3DNode *,SCNNode *>::unordered_map(v54, v66);
        v54[5] = &v59;
        C3DNodeApplyHierarchySkippingHiddenNodes(v15, v53);
        std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::~__hash_table(v54);
      }

      v11 = [a1 countByEnumeratingWithState:&v55 objects:v72 count:16];
    }

    while (v11);
  }

  v50 = 0xA00000000;
  v51 = v52;
  v16 = v59;
  if (v59)
  {
    v17 = 0;
    v18 = v60;
    v19 = 8 * v59;
    v47 = 0u;
    do
    {
      v20 = *v18;
      if (C3DGetBoundingSphere(*v18, 0, &v49))
      {
        WorldMatrix = C3DNodeGetWorldMatrix(v20);
        C3DSphereXFormMatrix4x4(&v49, WorldMatrix, &v49);
        if ((v17 & 1) != 0 && (v22 = vsubq_f32(v47, v49), v23 = vmulq_f32(v22, v22), v24 = sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)), (v47.f32[3] + v24) >= v49.f32[3]))
        {
          if ((v49.f32[3] + v24) > v47.f32[3])
          {
            v27 = ((v47.f32[3] + v49.f32[3]) + v24) * 0.5;
            v28 = vmlaq_n_f32(v47, v22, (v47.f32[3] - v27) / v24);
            v28.f32[3] = v27;
            v47 = v28;
          }

          v17 = 1;
        }

        else
        {
          v17 = 1;
          v47 = v49;
        }
      }

      else if ((a2 & 1) != 0 && (C3DNodeHasCamera(v20) & 1) != 0 || (a2 & 0x100) != 0 && (C3DNodeHasLight(v20) & 1) != 0 || (ParticleSystems = C3DNodeGetParticleSystems(v20)) != 0 && (Count = CFArrayGetCount(ParticleSystems), (a2 & 0x10000) != 0) && Count > 0 || (a2 & 0x1000000) != 0 && !C3DNodeHasChildren(v20))
      {
        v48.n128_u32[2] = 0;
        v48.n128_u64[0] = 0;
        C3DNodeGetWorldPosition(v20, &v48);
        _ZN3C3D5ArrayIDv3_fLj10ENS_15MallocAllocatorEE9push_backIRS1_EEvOT_(&v50, &v48);
      }

      ++v18;
      v19 -= 8;
    }

    while (v19);
    v29 = v51;
    v16 = v50;
    v30 = v47;
  }

  else
  {
    v17 = 0;
    v30 = 0uLL;
    v29 = v52;
  }

  v32 = v30.f32[3];
  if (v30.f32[3] >= 1.0 || v30.f32[3] <= 0.0)
  {
    v32 = 1.0;
  }

  v34 = v30.i64[1];
  v35 = v30.i64[0];
  if (v16)
  {
    v36 = 16 * v16;
    v37 = v29;
    do
    {
      v38 = *v37;
      v38.f32[3] = v32;
      v39 = v38.i64[1];
      v31 = v37->i64[0];
      if (v17)
      {
        v40.i64[0] = v35;
        v40.i64[1] = v34;
        v41 = vsubq_f32(v40, *v37);
        v42 = vmulq_f32(v41, v41);
        v43 = sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
        if ((*(&v34 + 1) + v43) >= v32)
        {
          v31 = v35;
          v39 = v34;
          if ((v32 + v43) > *(&v34 + 1))
          {
            v44 = vmlaq_n_f32(v40, vsubq_f32(v40, v38), (*(&v34 + 1) - (((v32 + *(&v34 + 1)) + v43) * 0.5)) / v43);
            v44.f32[3] = ((v32 + *(&v34 + 1)) + v43) * 0.5;
            v39 = v44.i64[1];
            v31 = v44.i64[0];
          }
        }
      }

      ++v37;
      v17 = 1;
      v35 = v31;
      v34 = v39;
      v36 -= 16;
    }

    while (v36);
  }

  else
  {
    v31 = v30.i64[0];
  }

  if (v29 != v52)
  {
    free(v29);
  }

  if (v60 != v46)
  {
    free(v60);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::~__hash_table(v66);
  v69(v68);
  return v31;
}

void sub_21BFDB384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a58 != a9)
  {
    free(a58);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::~__hash_table(&STACK[0x220]);
  (STACK[0x258])(&STACK[0x248]);
  _Unwind_Resume(a1);
}

uint64_t __SCNNodeGetBoundingSphere_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (std::__hash_table<std::__hash_value_type<__C3DNode *,SCNNode *>,std::__unordered_map_hasher<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::hash<__C3DNode *>,std::equal_to<__C3DNode *>,true>,std::__unordered_map_equal<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::equal_to<__C3DNode *>,std::hash<__C3DNode *>,true>,std::allocator<std::__hash_value_type<__C3DNode *,SCNNode *>>>::find<__C3DNode *>((a1 + 32), &v4))
  {
    return 1;
  }

  C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::push_back<unsigned long long const&>(*(a1 + 72), &v4);
  return 0;
}

__n128 _ZN3C3D5ArrayIDv3_fLj10ENS_15MallocAllocatorEE9push_backIRS1_EEvOT_(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if ((*a1 + 1) > *(a1 + 4))
  {
    _ZN3C3D5ArrayIDv3_fLj10ENS_15MallocAllocatorEE14GrowCapacityByEjb(a1, 1, 0);
    v4 = *a1;
  }

  result = *a2;
  *(*(a1 + 8) + 16 * v4) = *a2;
  ++*a1;
  return result;
}

void *std::__hash_table<std::__hash_value_type<__C3DNode *,SCNNode *>,std::__unordered_map_hasher<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::hash<__C3DNode *>,std::equal_to<__C3DNode *>,true>,std::__unordered_map_equal<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::equal_to<__C3DNode *>,std::hash<__C3DNode *>,true>,std::allocator<std::__hash_value_type<__C3DNode *,SCNNode *>>>::__emplace_unique_key_args<__C3DNode *,std::piecewise_construct_t const&,std::tuple<__C3DNode *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<__C3DNode *,SCNNode *>,std::__unordered_map_hasher<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::hash<__C3DNode *>,std::equal_to<__C3DNode *>,true>,std::__unordered_map_equal<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::equal_to<__C3DNode *>,std::hash<__C3DNode *>,true>,std::allocator<std::__hash_value_type<__C3DNode *,SCNNode *>>>::find<__C3DNode *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::unordered_map<__C3DNode *,SCNNode *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<__C3DNode *,SCNNode *>,std::__unordered_map_hasher<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::hash<__C3DNode *>,std::equal_to<__C3DNode *>,true>,std::__unordered_map_equal<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::equal_to<__C3DNode *>,std::hash<__C3DNode *>,true>,std::allocator<std::__hash_value_type<__C3DNode *,SCNNode *>>>::__emplace_unique_key_args<__C3DNode *,std::pair<__C3DNode * const,SCNNode *> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<__C3DNode *,SCNNode *>,std::__unordered_map_hasher<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::hash<__C3DNode *>,std::equal_to<__C3DNode *>,true>,std::__unordered_map_equal<__C3DNode *,std::__hash_value_type<__C3DNode *,SCNNode *>,std::equal_to<__C3DNode *>,std::hash<__C3DNode *>,true>,std::allocator<std::__hash_value_type<__C3DNode *,SCNNode *>>>::__emplace_unique_key_args<__C3DNode *,std::pair<__C3DNode * const,SCNNode *> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void _ZN3C3D5ArrayIDv3_fLj10ENS_15MallocAllocatorEE14GrowCapacityByEjb(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = 1.5;
  if (a3)
  {
    v5 = 1.0;
  }

  v6 = (v5 * (a1[1] + a2));
  v7 = malloc_type_malloc(16 * v6, 0x5437EE60uLL);
  memcpy(v7, v4, 16 * *a1);
  *(a1 + 1) = v7;
  a1[1] = v6;
  if (v4 != a1 + 4)
  {

    free(v4);
  }
}

void _C3DFXShaderCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t __C3DFXShaderGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXShaderGetTypeID_typeID = result;
  qword_281742A58 = _C3DFXShaderCopyInstanceVariables;
  return result;
}

uint64_t C3DFXShaderCreate(int a1)
{
  if (C3DFXShaderGetTypeID_onceToken != -1)
  {
    C3DFXShaderCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DFXShaderGetTypeID_typeID, 16);
  if (result)
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t C3DFXShaderGetStage(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXShaderGetStage_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

CFTypeRef C3DFXShaderSetSource(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXShaderGetStage_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

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

uint64_t C3DFXShaderGetSource(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXShaderGetSource_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

__CFArray *_C3DFXShaderCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = 2;
  valuePtr = 5;
  v12 = a1 + 24;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v13);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v12);
  CFDictionarySetValue(v3, @"name", @"source");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = 0;
  valuePtr = 2;
  v12 = a1 + 16;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v13);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v12);
  CFDictionarySetValue(v7, @"name", @"stage");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  return Mutable;
}

void OUTLINED_FUNCTION_2_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void _C3DLightProbesSystemCFFinalize(void **a1)
{
  free(a1[3]);
  free(a1[2]);

  __cleanupTetrahedronsData(a1);
}

uint64_t __C3DLightProbesSystemGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DLightProbesSystemGetTypeID_typeID = result;
  return result;
}

uint64_t C3DLightProbesSystemCreate()
{
  if (C3DLightProbesSystemGetTypeID_onceToken != -1)
  {
    C3DLightProbesSystemCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DLightProbesSystemGetTypeID_typeID, 240);
  *(result + 232) = 3;
  return result;
}

void _resizeProbesData(uint64_t a1, int a2)
{
  v4 = *(a1 + 232);
  if (v4 == 2)
  {
    v5 = 48;
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    v5 = 112;
LABEL_5:
    v6 = malloc_type_calloc((a2 + 4), v5, 0xE872879EuLL);
    v7 = malloc_type_calloc((a2 + 4), 0x10uLL, 0x1000040451B5BE8uLL);
    if (*(a1 + 24))
    {
      if (!*(a1 + 36))
      {
        v8 = scn_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          _resizeProbesData_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
        }
      }

      if (!*(a1 + 16))
      {
        v16 = scn_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          _resizeProbesData_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      memcpy(v6, *(a1 + 24), (*(a1 + 36) + 4) * v5);
      free(*(a1 + 24));
      memcpy(v7, *(a1 + 16), 16 * (*(a1 + 36) + 4));
      free(*(a1 + 16));
    }

    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 36) = a2;
    return;
  }

  v24 = scn_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    _resizeProbesData_cold_3();
  }
}

void _computeTetrahedronMatrices(uint64_t a1, simd_float3x3 a2)
{
  v3 = *(a1 + 224);
  if (v3)
  {
    v4 = *(a1 + 16) + 64;
    v5 = *(a1 + 192);
    v6 = *(a1 + 64) + 32;
    v7 = (*(a1 + 48) + 8);
    do
    {
      v8 = v7[1];
      if (v8 == 0x7FFFFFFF)
      {
        v9 = *(v7 - 2);
        v10 = *(v7 - 1);
        v11 = *(v5 + 16 * v9);
        v12 = *v7;
        _Q4 = *(v5 + 16 * v12);
        v14 = *(v4 + 16 * v12);
        _Q16 = vsubq_f32(*(v4 + 16 * v9), v14);
        _Q18 = vsubq_f32(v11, _Q4);
        _Q25 = vsubq_f32(*(v4 + 16 * v10), v14);
        _Q5 = vsubq_f32(*(v5 + 16 * v10), _Q4);
        _Q19 = vnegq_f32(_Q4);
        v19 = _Q18.f32[1];
        _S29 = _Q5.i32[2];
        _S27 = _Q5.i32[1];
        _S20 = vmuls_lane_f32(-_Q18.f32[2], *_Q5.f32, 1);
        __asm { FMLA            S3, S29, V18.S[1] }

        v27 = -_Q18.f32[0];
        _S21 = vmuls_lane_f32(_Q5.f32[0], _Q18, 2);
        _Q3.f32[1] = _S21 - (_Q5.f32[2] * _Q18.f32[0]);
        _Q3.f32[2] = (-_Q18.f32[1] * _Q5.f32[0]) + (_Q18.f32[0] * _Q5.f32[1]);
        _S24 = vmuls_lane_f32(_Q16.f32[0], *_Q5.f32, 1);
        __asm { FMLS            S11, S24, V4.S[2] }

        _S24 = _Q25.f32[1];
        _S9 = vmuls_lane_f32(_Q18.f32[0], *_Q25.f32, 1);
        __asm { FMLS            S11, S9, V4.S[2] }

        _S26 = -_Q18.f32[1] * _Q25.f32[0];
        __asm { FMLS            S11, S26, V4.S[2] }

        _S26 = vmuls_lane_f32(_Q5.f32[0], _Q16, 2);
        __asm { FMLS            S11, S26, V4.S[1] }

        _S26 = vmuls_lane_f32(-_Q16.f32[2], *_Q5.f32, 1);
        __asm { FMLS            S11, S26, V4.S[0] }

        _S26 = vmuls_lane_f32(_Q25.f32[0], _Q18, 2);
        __asm { FMLS            S11, S26, V4.S[1] }

        _Q23.f32[0] = vmuls_lane_f32(-_Q18.f32[2], *_Q25.f32, 1);
        __asm { FMLS            S11, S23, V4.S[0] }

        _Q23.f32[0] = vmuls_lane_f32(-_Q16.f32[0], _Q5, 2);
        __asm { FMLS            S11, S23, V4.S[1] }

        _Q23.f32[0] = vmuls_lane_f32(_Q5.f32[2], *_Q16.f32, 1);
        __asm { FMLS            S11, S23, V4.S[0] }

        _S26 = _Q25.f32[2];
        _S14 = vmuls_lane_f32(-_Q18.f32[0], _Q25, 2);
        __asm { FMLS            S11, S14, V4.S[1] }

        _S15 = vmuls_lane_f32(_Q18.f32[1], _Q25, 2);
        __asm { FMLS            S11, S15, V4.S[0] }

        v50 = vmulq_f32(v14, _Q3);
        _Q3.f32[3] = _S11 - (v50.f32[2] + vaddv_f32(*v50.f32));
        __asm
        {
          FMLA            S23, S26, V18.S[1]
          FMLS            S23, S24, V18.S[2]
          FMLS            S23, S27, V16.S[2]
        }

        _Q23.f32[1] = ((_S14 - (_Q5.f32[2] * _Q16.f32[0])) + (_Q16.f32[2] * _Q5.f32[0])) + (_Q18.f32[2] * _Q25.f32[0]);
        _Q23.f32[2] = (((-_Q16.f32[1] * _Q5.f32[0]) + (_Q16.f32[0] * _Q5.f32[1])) + (_Q18.f32[0] * _Q25.f32[1])) - (_Q25.f32[0] * _Q18.f32[1]);
        _S27 = vmuls_lane_f32(_Q16.f32[0], *_Q25.f32, 1);
        v53 = -_Q16.f32[1] * _Q25.f32[0];
        __asm { FMLS            S29, S27, V4.S[2] }

        _S27 = vmuls_lane_f32(-_Q16.f32[0], _Q25, 2);
        __asm { FMLS            S29, S27, V4.S[1] }

        _S27 = vmuls_lane_f32(_Q16.f32[1], _Q25, 2);
        __asm { FMLS            S29, S27, V4.S[0] }

        _S30 = vmuls_lane_f32(_Q25.f32[0], _Q16, 2);
        __asm { FMLS            S29, S30, V4.S[1] }

        _Q25.f32[0] = vmuls_lane_f32(-_Q16.f32[2], *_Q25.f32, 1);
        __asm { FMLS            S29, S25, V4.S[0] }

        v62 = vmulq_f32(v14, _Q23);
        _Q23.f32[3] = _S29 - (v62.f32[2] + vaddv_f32(*v62.f32));
        _Q18.f32[0] = vmuls_lane_f32(_Q18.f32[0], *_Q5.f32, 1);
        __asm
        {
          FMLS            S19, S18, V4.S[2]
          FMLS            S19, S21, V4.S[1]
          FMLS            S19, S20, V4.S[0]
          FMLS            S27, S24, V16.S[2]
        }

        _Q18.i32[3] = 0;
        v65.i32[0] = _S27;
        v65.f32[1] = _S30 - (_S26 * _Q16.f32[0]);
        v65.f32[2] = v53 + (_Q16.f32[0] * _S24);
        _Q6 = vmulq_f32(v14, v65);
        v65.f32[3] = -(_Q6.f32[2] + vaddv_f32(*_Q6.f32));
        _Q6.f32[0] = vmuls_lane_f32(v19, _Q5, 2);
        __asm { FMLS            S19, S6, V4.S[0] }

        _Q5.f32[0] = vmuls_lane_f32(v27, _Q5, 2);
        __asm { FMLS            S19, S5, V4.S[1] }

        if (fabsf(_Q19.f32[0]) > 0.0001)
        {
          v67 = vdupq_lane_s32(*_Q19.f32, 0);
          _Q3 = vdivq_f32(_Q3, v67);
          _Q23 = vdivq_f32(_Q23, v67);
          v65 = vdivq_f32(v65, v67);
        }

        *(v6 - 32) = _Q3;
        *(v6 - 16) = _Q23;
        *v6 = v65;
      }

      else
      {
        v68 = *(v4 + 16 * v8);
        a2.columns[0] = vsubq_f32(*(v4 + 16 * *(v7 - 2)), v68);
        v69 = vsubq_f32(*(v4 + 16 * *(v7 - 1)), v68);
        a2.columns[2] = vsubq_f32(*(v4 + 16 * *v7), v68);
        a2.columns[0].i32[3] = a2.columns[1].i32[3];
        v69.i32[3] = v71;
        v70 = a2.columns[1].i32[3];
        a2.columns[2].i32[3] = v72;
        a2.columns[1] = v69;
        a2 = __invert_f3(a2);
        *(v6 - 16) = 0u;
        *v6 = 0u;
        a2.columns[0].i32[3] = 0;
        a2.columns[1].i32[3] = *(v6 - 4);
        a2.columns[2].i32[3] = *(v6 + 12);
        *(v6 - 32) = a2;
        a2.columns[1].i32[3] = v70;
      }

      v6 += 48;
      v7 += 12;
      --v3;
    }

    while (v3);
  }
}

void _computeNeighbourIndexes(uint64_t a1, unsigned int a2)
{
  *&v62[5] = *MEMORY[0x277D85DE8];
  v58 = malloc_type_calloc(8uLL, (*(a1 + 32) + 4), 0x2004093837F09uLL);
  if (a2)
  {
    v4 = 0;
    v5 = *(a1 + 48);
    v55 = a2;
    v6 = v5 + 16;
    do
    {
      v7 = 0;
      v8 = v5 + 48 * v4;
      v9 = &dword_21C2A1A78;
      do
      {
        *(v6 + v7) = -1;
        v10 = *(v8 + 4 * *(v9 - 2));
        if (v10 >= *(v8 + 4 * *(v9 - 1)))
        {
          v10 = *(v8 + 4 * *(v9 - 1));
        }

        if (v10 >= *(v8 + 4 * *v9))
        {
          v11 = *(v8 + 4 * *v9);
        }

        else
        {
          v11 = v10;
        }

        Mutable = v58[v11];
        if (!Mutable)
        {
          Mutable = C3DIndexSetCreateMutable();
          v58[v11] = Mutable;
        }

        v9 += 3;
        *v3.i64 = C3DIndexSetAddIndex(Mutable, v4, v3);
        v7 += 4;
      }

      while (v7 != 16);
      ++v4;
      v6 += 48;
    }

    while (v4 != a2);
    for (i = 0; i != v55; ++i)
    {
      v14 = 0;
      v56 = v5 + 48 * i;
      v57 = v56 + 16;
      do
      {
        if (*(v57 + 4 * v14) == -1)
        {
          v15 = &g_TetrahedronFaces[3 * v14];
          v16 = *(v56 + 4 * *v15);
          v17 = *(v56 + 4 * v15[1]);
          v18 = *(v56 + 4 * v15[2]);
          if (v16 >= v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v16;
          }

          if (v16 <= v17)
          {
            v20 = v17;
          }

          else
          {
            v20 = v16;
          }

          if (v19 >= v18)
          {
            v21 = v18;
          }

          else
          {
            v21 = v19;
          }

          if (v20 <= v18)
          {
            v22 = v18;
          }

          else
          {
            v22 = v20;
          }

          if (v21 != v17 && v22 != v17)
          {
            v18 = v17;
          }

          if (v21 == v16 || v22 == v16)
          {
            v25 = v18;
          }

          else
          {
            v25 = v16;
          }

          v26 = v58[v21];
          if (!v26)
          {
            v27 = scn_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              _computeNeighbourIndexes_cold_1(v61, v62, v27);
            }
          }

          FirstIndex = C3DIndexSetGetFirstIndex(v26);
          if (FirstIndex != -1)
          {
            v29 = FirstIndex;
            v30 = -1;
            do
            {
              if (v29 == i)
              {
                v31 = -1;
              }

              else
              {
                v32 = 0;
                v33 = v5 + 48 * v29;
                v34 = &dword_21C2A1A78;
                do
                {
                  v35 = *(v33 + 4 * *(v34 - 2));
                  v36 = *(v33 + 4 * *(v34 - 1));
                  v37 = *(v33 + 4 * *v34);
                  if (v35 >= v36)
                  {
                    v38 = *(v33 + 4 * *(v34 - 1));
                  }

                  else
                  {
                    v38 = *(v33 + 4 * *(v34 - 2));
                  }

                  if (v35 <= v36)
                  {
                    v39 = *(v33 + 4 * *(v34 - 1));
                  }

                  else
                  {
                    v39 = *(v33 + 4 * *(v34 - 2));
                  }

                  if (v38 >= v37)
                  {
                    v38 = *(v33 + 4 * *v34);
                  }

                  if (v39 <= v37)
                  {
                    v39 = *(v33 + 4 * *v34);
                  }

                  if (v38 == v36 || v39 == v36)
                  {
                    v36 = *(v33 + 4 * *v34);
                  }

                  if (v38 == v35 || v39 == v35)
                  {
                    v35 = v36;
                  }

                  v43 = v38 == v21 && v35 == v25;
                  v44 = v39 == v22;
                  if (v43 && v44)
                  {
                    v31 = v29;
                  }

                  else
                  {
                    v31 = -1;
                  }

                  if (v43 && v44)
                  {
                    v30 = v32;
                  }

                  v45 = v31 != -1 || v32++ >= 3;
                  v34 += 3;
                }

                while (!v45);
              }

              IndexGreaterThanIndex = C3DIndexSetGetIndexGreaterThanIndex(v26, v29);
              if (v31 != -1)
              {
                break;
              }

              v29 = IndexGreaterThanIndex;
            }

            while (IndexGreaterThanIndex != -1);
            if (v31 != -1)
            {
              v47 = v5 + 48 * v31 + 4 * v30;
              v49 = *(v47 + 16);
              v48 = (v47 + 16);
              if (v49 != -1)
              {
                v50 = scn_default_log();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
                {
                  _computeNeighbourIndexes_cold_2(v59, &v60, v50);
                }
              }

              *(v57 + 4 * v14) = v31;
              *v48 = i;
            }
          }
        }

        ++v14;
      }

      while (v14 != 4);
    }
  }

  v51 = *(a1 + 32);
  if (v51)
  {
    for (j = 0; j < v51; ++j)
    {
      v53 = v58[j];
      if (v53)
      {
        CFRelease(v53);
        v58[j] = 0;
        v51 = *(a1 + 32);
      }
    }
  }

  free(v58);
}

void C3DLightProbesSystemSetProbesCount(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (*(a1 + 36) < a2)
    {
      _resizeProbesData(a1, a2);
    }
  }

  else
  {
    free(*(a1 + 24));
    *(a1 + 24) = 0;
    free(*(a1 + 16));
    *(a1 + 16) = 0;
    __cleanupTetrahedronsData(a1);
    *(a1 + 36) = 0;
  }

  *(a1 + 32) = a2;
  *(a1 + 228) = 1;
}

void __cleanupTetrahedronsData(void **a1)
{
  free(a1[6]);
  a1[6] = 0;
  free(a1[8]);
  a1[8] = 0;
  free(a1[24]);
  a1[24] = 0;
}

void C3DLightProbesSystemSetProbeData(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v36.n128_u32[2] = 0;
  v6 = a2 + 4;
  v36.n128_u64[0] = 0;
  C3DNodeGetWorldPosition(a3, &v36);
  *(*(a1 + 16) + 16 * v6) = v36;
  v7 = *(a1 + 232);
  IrradianceSH = C3DLightGetIrradianceSH(a4);
  if (IrradianceSH)
  {
    v9 = IrradianceSH;
    v10 = v7 * v7;
    if (12 * v7 * v7 != CFDataGetLength(IrradianceSH))
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3DLightProbesSystemSetProbeData_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    BytePtr = CFDataGetBytePtr(v9);
    v20 = &BytePtr[4 * v10];
    v37[0] = BytePtr;
    v37[1] = v20;
    v21 = &BytePtr[8 * v10];
    v37[2] = v21;
    if (v7 == 3)
    {
      v23 = 0;
      v24 = *(a1 + 24);
      v25 = vdup_n_s32(0xBEA6C6BC);
      do
      {
        v26 = v37[v23];
        v27.i32[0] = *(v26 + 12);
        v27.i32[1] = *(v26 + 4);
        *&v28 = vmul_f32(v27, v25);
        *(&v28 + 2) = *(v26 + 8) * 0.32573;
        *(&v28 + 3) = (*(v26 + 24) * -0.078848) + (*v26 * 0.28209);
        *(&v38 + v23++) = v28;
      }

      while (v23 != 3);
      v29 = 0;
      v30 = (v24 + 112 * v6);
      v31 = v39;
      *v30 = v38;
      v30[1] = v31;
      v30[2] = v40;
      do
      {
        *(&v38 + v29) = vmulq_f32(*(v37[v29] + 16), xmmword_21C2A1A40);
        ++v29;
      }

      while (v29 != 3);
      v32 = v39;
      v30[3] = v38;
      v30[4] = v32;
      v30[5] = v40;
      v33.i32[0] = *(BytePtr + 8);
      v33.i32[1] = *(v20 + 8);
      *&v34 = vmul_f32(v33, vdup_n_s32(0x3E0BD8A0u));
      *(&v34 + 1) = __PAIR64__(1.0, *(v21 + 8) * 0.13657);
      v30[6] = v34;
    }

    else if (v7 == 2)
    {
      v22 = (*(a1 + 24) + 48 * v6);
      *v22 = *BytePtr;
      v22[1] = *v20;
      v22[2] = *v21;
    }

    else
    {
      v35 = scn_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        C3DLightProbesSystemSetProbeData_cold_2();
      }
    }
  }
}

void C3DLightProbesBeginQueries(uint64_t a1, uint64_t x1_0)
{
  *(&v167[1] + 4) = *MEMORY[0x277D85DE8];
  *(a1 + 240) = x1_0;
  *(a1 + 248) = 0;
  if (*(a1 + 228) != 1)
  {
    return;
  }

  *(a1 + 228) = 0;
  if (*(a1 + 32) <= 3u)
  {
    *(a1 + 224) = 0;
    return;
  }

  __cleanupTetrahedronsData(a1);
  v2 = (100 * *(a1 + 32) + 400);
  *(a1 + 48) = malloc_type_valloc(16 * (v2 + 2 * v2), 0x1000040EED21634uLL);
  *(a1 + 64) = malloc_type_valloc(16 * (v2 + 2 * v2), 0x1000040EED21634uLL);
  v3 = malloc_type_calloc(8uLL, v2, 0x100004000313F17uLL);
  v159 = malloc_type_calloc(0xCuLL, v2, 0x10000403E1C8BA9uLL);
  v148 = malloc_type_calloc(8uLL, v2, 0x100004000313F17uLL);
  v146 = v2;
  v4 = malloc_type_calloc(v2, 1uLL, 0x100004077774924uLL);
  v5 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v149 = *(a1 + 16);
  if (v7)
  {
    v8 = (*(a1 + 16) + 64);
    v9 = 0uLL;
    v10 = v8;
    v11 = *(a1 + 32);
    do
    {
      v12 = *v10++;
      v13.i32[1] = v12.i32[1];
      v9 = vaddq_f32(v9, v12);
      --v11;
    }

    while (v11);
    *v13.i32 = v7;
    v14 = vdivq_f32(v9, vdupq_lane_s32(v13, 0));
    v15 = 0;
    v16 = *(a1 + 32);
    do
    {
      v17 = *v8++;
      v18 = vsubq_f32(v14, v17);
      v19 = vmulq_f32(v18, v18);
      v20 = vaddv_f32(*v19.f32);
      if (*v15.i32 <= (v19.f32[2] + v20))
      {
        *v15.i32 = v19.f32[2] + v20;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v21.i64[0] = 0x3F0000003FLL;
    v21.i64[1] = 0x3F0000003FLL;
    v14 = vnegq_f32(v21);
    v15 = 0;
  }

  v22 = 0;
  *v15.i32 = (sqrtf(*v15.i32) * 9.0) / 2.4495;
  v23 = vdupq_lane_s32(v15, 0);
  do
  {
    *(v149 + v22 * 16) = vmlaq_f32(v14, v23, g_TetrahedronVertices[v22]);
    ++v22;
  }

  while (v22 != 4);
  *v6 = xmmword_21C280330;
  *v4 = 1;
  if (!computeTetrahedronCircumsphereMatrix(v6, v149))
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      C3DLightProbesBeginQueries_cold_1();
      if (v7)
      {
        goto LABEL_18;
      }

LABEL_152:
      LODWORD(v25) = 1;
      goto LABEL_153;
    }
  }

  if (!v7)
  {
    goto LABEL_152;
  }

LABEL_18:
  v145 = 0;
  v142 = v6 + 2;
  LODWORD(v25) = 1;
  v151 = v5;
  v152 = v3;
  v150 = v6;
  v143 = v7;
  do
  {
    while (!v25)
    {
      v87 = 0;
      if (++v145 == v7)
      {
        goto LABEL_168;
      }
    }

    v26 = 0;
    v147 = 0;
    v27 = *(v149 + 16 * (v145 + 4));
    v144 = v25;
    v28 = v25;
    v29 = v142;
    do
    {
      v30 = vsubq_f32(v27, *v29);
      v31 = vmulq_f32(v30, v30);
      if (COERCE_FLOAT(HIDWORD(*v29)) + 0.00001 >= (v31.f32[2] + vaddv_f32(*v31.f32)))
      {
        v3[v147] = v26;
        v5[v26] = 0;
        ++v147;
      }

      ++v26;
      v29 += 3;
    }

    while (v28 != v26);
    if (!v147)
    {
      LODWORD(v25) = v144;
      goto LABEL_148;
    }

    v32 = 0;
    v33 = 0;
    v34 = v147;
    do
    {
      v35 = 0;
      v36 = v3[v32];
      v156 = &v6[3 * v36];
      v153 = v36;
      v154 = v32;
      do
      {
        v37 = 0;
        v38 = &g_TetrahedronFaces[3 * v35];
        v39 = v38[1];
        v40 = v156->i32[*v38];
        v41 = v156->i32[v39];
        v42 = v38[2];
        v43 = v156->i32[v42];
        if (v40 >= v41)
        {
          v44 = v156->i32[v39];
        }

        else
        {
          v44 = v40;
        }

        if (v40 <= v41)
        {
          v45 = v156->i32[v39];
        }

        else
        {
          v45 = v40;
        }

        if (v44 >= v43)
        {
          v44 = v156->i32[v42];
        }

        if (v45 <= v43)
        {
          v45 = v156->i32[v42];
        }

        if (v44 == v41 || v45 == v41)
        {
          v41 = v156->i32[v42];
        }

        if (v44 != v40 && v45 != v40)
        {
          v41 = v40;
        }

        v48 = 1;
        while (1)
        {
          v49 = v3[v37];
          if (v49 != v36)
          {
            break;
          }

LABEL_78:
          v48 = ++v37 < v34;
          if (v37 == v34)
          {
            goto LABEL_81;
          }
        }

        v50 = &v6[3 * v49];
        v51 = &dword_21C2A1A78;
        v52 = 4;
        while (1)
        {
          v53 = v50->i32[*(v51 - 2)];
          v54 = v50->i32[*(v51 - 1)];
          v55 = v50->i32[*v51];
          if (v53 >= v54)
          {
            v56 = v50->i32[*(v51 - 1)];
          }

          else
          {
            v56 = v50->i32[*(v51 - 2)];
          }

          if (v53 <= v54)
          {
            v57 = v50->i32[*(v51 - 1)];
          }

          else
          {
            v57 = v50->i32[*(v51 - 2)];
          }

          if (v56 >= v55)
          {
            v56 = v50->i32[*v51];
          }

          if (v57 <= v55)
          {
            v57 = v50->i32[*v51];
          }

          if (v56 == v54 || v57 == v54)
          {
            v54 = v50->i32[*v51];
          }

          if (v56 == v53 || v57 == v53)
          {
            v53 = v54;
          }

          v60 = v56 == v44 && v53 == v41;
          if (v60 && v57 == v45)
          {
            break;
          }

          v51 += 3;
          if (!--v52)
          {
            goto LABEL_78;
          }
        }

        if (v48)
        {
          goto LABEL_113;
        }

LABEL_81:
        v155 = v35;
        v62 = 0;
        v63 = v33;
        v64 = &v159[3 * v33];
        *v64 = v40;
        v64[1] = v156->i32[v39];
        v64[2] = v156->i32[v42];
        v158 = v33;
        v157 = v64;
        while (1)
        {
          v65 = v62 == 2 ? 0 : v62 + 1;
          if (v33)
          {
            break;
          }

          if (v62 == 2)
          {
            v76 = 1;
            goto LABEL_112;
          }

LABEL_104:
          LODWORD(v40) = v64[++v62];
        }

        v66 = 0;
        v67 = 0;
        v68 = v64[v65];
        v69 = v159;
        do
        {
          v70 = 0;
          v71 = 0;
          do
          {
            v72 = v69[v70];
            if (v72 == v40 || v72 == v68)
            {
              ++v71;
            }

            ++v70;
          }

          while (v70 != 3);
          if (v71 >= 3)
          {
            v74 = scn_default_log();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
            {
              C3DLightProbesBeginQueries_cold_2(v166, v167, v74);
            }
          }

          if (v71 == 2)
          {
            ++v67;
          }

          ++v66;
          v69 += 3;
        }

        while (v66 != v63);
        v33 = v158;
        v64 = v157;
        if (v62 != 2 && v67 <= 1)
        {
          goto LABEL_104;
        }

        v76 = v62 > 2 || v67 < 2;
LABEL_112:
        v6 = v150;
        v5 = v151;
        v32 = v154;
        v35 = v155;
        v33 += v76;
        v3 = v152;
        v34 = v147;
        v36 = v153;
LABEL_113:
        ++v35;
      }

      while (v35 != 4);
      v148[v32++] = v36;
    }

    while (v32 != v34);
    if (v33)
    {
      v77 = v33;
      v78 = v159 + 2;
      v25 = v144;
      v79 = v147;
      do
      {
        if (v79)
        {
          v80 = v25;
          v81 = v79 - 1;
          v82 = v148[v79 - 1];
        }

        else
        {
          v83 = (v25 + 1);
          v82 = v25;
          if (v25 >= v146)
          {
            v84 = scn_default_log();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              C3DLightProbesBeginQueries_cold_3(&buf, v161, v84);
            }
          }

          v81 = 0;
          v80 = v83;
        }

        v5[v82] = 1;
        v85 = *v78;
        v86 = &v6[3 * v82];
        v86->i64[0] = *(v78 - 1);
        v86->i32[2] = v85;
        v86->i32[3] = v145 + 4;
        if (computeTetrahedronCircumsphereMatrix(v86, v149))
        {
          v79 = v81;
        }

        else
        {
          v5[v82] = 0;
          v148[v81] = v82;
          v79 = v81 + 1;
        }

        v78 += 3;
        --v77;
        v25 = v80;
      }

      while (v77);
    }

    else
    {
      LODWORD(v25) = v144;
      v79 = v147;
    }

    if (v79)
    {
      v88 = 0;
      v89 = v79;
      v90 = v25 - 1;
      do
      {
        v91 = v148[v88];
        v92 = v90;
        do
        {
          v93 = v92;
          v94 = v5[v92--];
          if (v94)
          {
            v95 = 0;
          }

          else
          {
            v95 = v91 < v93;
          }
        }

        while (v95);
        LODWORD(v25) = v25 - 1;
        if (v91 >= v93)
        {
          if (v25 > v91)
          {
            v104 = v25;
            v105 = scn_default_log();
            v106 = os_log_type_enabled(v105, OS_LOG_TYPE_FAULT);
            LODWORD(v25) = v104;
            if (v106)
            {
              C3DLightProbesBeginQueries_cold_4(v162, &v163, v105);
              LODWORD(v25) = v104;
            }
          }
        }

        else
        {
          if (!v94)
          {
            v96 = v25;
            v97 = scn_default_log();
            v98 = os_log_type_enabled(v97, OS_LOG_TYPE_FAULT);
            LODWORD(v25) = v96;
            if (v98)
            {
              C3DLightProbesBeginQueries_cold_5(v164, &v165, v97);
              LODWORD(v25) = v96;
            }
          }

          v99 = &v6[3 * v93];
          v100 = *v99;
          v101 = v99[1];
          v102 = v99[2];
          f32 = v6[3 * v91].f32;
          f32[1] = v101;
          f32[2] = v102;
          *f32 = v100;
          v5[v91] = 1;
          v5[v93] = 0;
        }

        ++v88;
        --v90;
      }

      while (v88 != v89);
    }

LABEL_148:
    v7 = v143;
    ++v145;
  }

  while (v145 != v143);
  if (!v25)
  {
    v87 = 0;
    goto LABEL_168;
  }

LABEL_153:
  v107 = 0;
  __asm { FMOV            V0.4S, #0.25 }

  do
  {
    v111 = &v6[3 * v107];
    v112 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*(v149 + 16 * *v111), *(v149 + 16 * v111[1])), *(v149 + 16 * v111[2])), *(v149 + 16 * v111[3])), _Q0);
    v113 = &dword_21C2A1A78;
    v114 = 4;
    do
    {
      v115 = *(v113 - 2);
      v116 = *(v113 - 1);
      v117 = v111[v115];
      v118 = *(v149 + 16 * v117);
      v119 = v111[v116];
      v120 = vsubq_f32(*(v149 + 16 * v119), v118);
      v121 = vsubq_f32(*(v149 + 16 * v111[*v113]), v118);
      v122 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v121, v121), v121, 0xCuLL), vnegq_f32(v120)), v121, vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL));
      v123 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
      v124 = vmulq_f32(v122, v122);
      *&v125 = v124.f32[1] + (v124.f32[2] + v124.f32[0]);
      *v124.f32 = vrsqrte_f32(v125);
      v126 = vmulq_n_f32(v123, vmul_f32(*v124.f32, vrsqrts_f32(v125, vmul_f32(*v124.f32, *v124.f32))).f32[0]);
      v127 = vmulq_f32(v118, v126);
      v128 = vmulq_f32(v112, v126);
      *v127.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v128, v128, 8uLL), *&vextq_s8(v127, v127, 8uLL)), vadd_f32(vzip1_s32(*v128.i8, *v127.i8), vzip2_s32(*v128.i8, *v127.i8)));
      if (vcgt_f32(*v127.i8, vdup_lane_s32(*v127.i8, 1)).u8[0])
      {
        v111[v115] = v119;
        v111[v116] = v117;
      }

      v113 += 3;
      --v114;
    }

    while (v114);
    ++v107;
  }

  while (v107 != v25);
  v129 = 0;
  v87 = 0;
  v130.i64[0] = 0x300000003;
  v130.i64[1] = 0x300000003;
  v131 = v6;
  do
  {
    if (v131->i32[0] >= 4 && v131->i32[1] >= 4 && v131->i32[2] >= 4 && v131->i32[3] >= 4)
    {
      if (v129 != v87)
      {
        v132 = &v6[3 * v87];
        v133 = *v131;
        v134 = v131[2];
        v132[1] = v131[1];
        v132[2] = v134;
        *v132 = v133;
      }

      v6[3 * v87] = vaddq_s32(v6[3 * v87], v130);
      ++v87;
    }

    ++v129;
    v131 += 3;
  }

  while (v25 != v129);
LABEL_168:
  *(a1 + 224) = v87;
  _computeNeighbourIndexes(a1, v87);
  _computeTetrahedronMatrices(a1, v168);
  v136 = *(a1 + 224);
  if (v136)
  {
    v137 = (*(a1 + 48) + 32);
    v138 = 0uLL;
    v139 = *(a1 + 224);
    do
    {
      v140 = *v137;
      v137 += 3;
      v135.i32[1] = v140.i32[1];
      v138 = vaddq_f32(v138, v140);
      --v139;
    }

    while (v139);
  }

  else
  {
    v138 = 0uLL;
  }

  *v135.i32 = v136;
  *(a1 + 208) = vdivq_f32(v138, vdupq_lane_s32(v135, 0));
  free(v3);
  free(v159);
  free(v148);
  free(v5);
}

void __cubicPolynomialRoot(float a1, float a2, float a3)
{
  v3 = (((a3 * -27.0) + ((a1 * 9.0) * a2)) + (((a1 * -2.0) * a1) * a1)) / 54.0;
  v4 = (((a2 * 3.0) - (a1 * a1)) / 9.0) * ((((a2 * 3.0) - (a1 * a1)) / 9.0) * (((a2 * 3.0) - (a1 * a1)) / 9.0));
  v5 = v4 + (v3 * v3);
  if (v5 >= 0.0)
  {
    v10 = sqrtf(v5);
    cbrtf(v3 + v10);
    cbrtf(v3 - v10);
  }

  else
  {
    v6 = acosf(v3 / sqrtf(-v4));
    cosf(v6 / 3.0);
    v7 = v6;
    v8 = (v7 + 6.28318531) / 3.0;
    cosf(v8);
    v9 = (v7 + 12.5663706) / 3.0;
    cosf(v9);
  }
}

__n128 __triangleBarycentricCoords(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a3, a1);
  v6 = vsubq_f32(a4, a1);
  v7 = vmulq_f32(v4, v4);
  v8 = vmulq_f32(v4, v5);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vmulq_f32(v5, v5);
  v10 = vmulq_f32(v4, v6);
  v11 = vmulq_f32(v5, v6);
  *v7.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v7.i8), vzip2_s32(*v9.i8, *v7.i8)));
  *v9.i8 = vadd_f32(vzip1_s32(*v10.i8, *v11.i8), vzip2_s32(*v10.i8, *v11.i8));
  v10.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
  *v11.i8 = vadd_f32(vzip1_s32(*v10.i8, *&vextq_s8(v11, v11, 8uLL)), *v9.i8);
  *v10.i32 = (*&v7.i32[1] * *v7.i32) - (v8.f32[0] * v8.f32[0]);
  *v10.i8 = vdiv_f32(vmla_f32(vrev64_s32(vmul_n_f32(*v11.i8, -v8.f32[0])), *v11.i8, *v7.i8), vdup_lane_s32(*v10.i8, 0));
  result.n128_f32[0] = (1.0 - *v10.i32) - *&v10.i32[1];
  *(result.n128_u64 + 4) = v10.i64[0];
  return result;
}

BOOL __lookupTetrahedron(uint64_t a1, unsigned int *a2, float32x4_t *a3, int32x4_t a4, float a5)
{
  v5 = *(a1 + 224);
  if (!v5)
  {
    return 0;
  }

  v7 = a4;
  v8 = *(a1 + 16) + 64;
  v9 = *(a1 + 48);
  v47 = *(a1 + 64);
  v10 = *(a1 + 192);
  v42 = vdupq_laneq_s32(a4, 2);
  v43 = vdupq_lane_s32(*a4.i8, 1);
  if (*a2 >= v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a2;
  }

  v48 = vdupq_n_s32(0xB8D1B717);
  while (1)
  {
    v12 = (v9 + 48 * v11);
    v13 = *(v12 + 3);
    if (v13 == 0x7FFFFFFF)
    {
      v15 = *v12;
      v14 = *(v12 + 1);
      v16 = *(v8 + 16 * v15);
      v17 = *(v12 + 2);
      v18 = vsubq_f32(*(v8 + 16 * v14), v16);
      v19 = vsubq_f32(*(v8 + 16 * v17), v16);
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
      v21 = vmulq_f32(vsubq_f32(v7, v16), vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
      v22 = xmmword_21C280360;
      if ((v21.f32[2] + vaddv_f32(*v21.f32)) >= 0.0)
      {
        v23 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(v47 + 48 * v11), v7.f32[0]), v43, *(v47 + 48 * v11 + 16)), v42, *(v47 + 48 * v11 + 32));
        v44 = *(v8 + 16 * v15);
        v45 = *(v8 + 16 * v14);
        v46 = *(v8 + 16 * v17);
        __cubicPolynomialRoot(v23.f32[0], v23.f32[1], v23.f32[2]);
        v25 = __triangleBarycentricCoords(vmlaq_n_f32(v44, *(v10 + 16 * v15), v24), vmlaq_n_f32(v45, *(v10 + 16 * v14), v24), vmlaq_n_f32(v46, *(v10 + 16 * v17), v24), a4);
        v7 = a4;
        v22 = v25;
        v22.i32[3] = 0;
      }
    }

    else
    {
      *v26.i64 = _barycentricCoords(*(v47 + 48 * v11), *(v47 + 48 * v11 + 16), *(v47 + 48 * v11 + 32), *(v8 + 16 * v13), v7);
      v7 = a4;
      v22 = v26;
    }

    if ((vminvq_u32(vcgtq_f32(v22, v48)) & 0x80000000) != 0)
    {
      *a3 = v22;
      *a2 = v11;
      return v12[11] >= a5;
    }

    v27 = v22.f32[1];
    v28 = v22.f32[1] < v22.f32[0];
    if (v22.f32[1] >= v22.f32[0])
    {
      v27 = v22.f32[0];
    }

    if (v22.f32[2] < v27)
    {
      v27 = v22.f32[2];
      v28 = 2;
    }

    if (v22.f32[3] < v27)
    {
      v28 = 3;
    }

    v29 = LODWORD(v12[g_VertexFrontFaceIndex[v28] + 4]);
    if (v29 == -1)
    {
      break;
    }

    v11 = v29;
    if (!--v5)
    {
      return 0;
    }
  }

  if (v11 == -1)
  {
    v50 = v22;
    v31 = scn_default_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);
    v22 = v50;
    if (v32)
    {
      __lookupTetrahedron_cold_1(v31, v33, v34, v35, v36, v37, v38, v39);
      v22 = v50;
    }
  }

  *a3 = v22;
  *a2 = v11;
  return 1;
}

double _barycentricCoords(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vsubq_f32(a5, a4);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, v5.f32[0]), a2, *v5.f32, 1), a3, v5, 2).u64[0];
  return result;
}

void __debugDrawQuery(void *a1, unsigned int a2, float32x4_t a3, float a4)
{
  v5 = a1[2] + 64;
  v6 = (a1[6] + 48 * a2);
  v8 = xmmword_21C2A1A50;
  *(&v8 + 2) = 0.25098 * a4;
  C3DAuthoringEnvironmentAppendDebugSegment(a1[31], 0, &v8, 0, *(v5 + 16 * *v6), a3);
  C3DAuthoringEnvironmentAppendDebugSegment(a1[31], 0, &v8, 0, *(v5 + 16 * v6[1]), a3);
  C3DAuthoringEnvironmentAppendDebugSegment(a1[31], 0, &v8, 0, *(v5 + 16 * v6[2]), a3);
  C3DAuthoringEnvironmentAppendDebugSegment(a1[31], 0, &v8, 0, *(v5 + 16 * v6[3]), a3);
}

float32x4_t C3DLightProbesQuerySH2(uint64_t a1, unsigned int *a2, float32x4_t *a3, int32x4_t a4)
{
  if (!a2)
  {
    v35 = a4;
    v7 = scn_default_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    a4 = v35;
    if (v8)
    {
      C3DLightProbesQuerySH2_cold_1(v7, v9, v10, v11, v12, v13, v14, v15);
      a4 = v35;
    }
  }

  v36 = 0uLL;
  v16 = __lookupTetrahedron(a1, a2, &v36, a4, 0.0);
  v17 = (*(a1 + 48) + 48 * *a2);
  v18 = *(a1 + 24) + 192;
  if (v16)
  {
    v19 = (v18 + 48 * *v17);
    result = v36;
    v21 = vmulq_n_f32(*v19, v36.n128_f32[0]);
    *a3 = v21;
    v22 = vmulq_n_f32(v19[1], result.f32[0]);
    a3[1] = v22;
    v23 = vmulq_n_f32(v19[2], result.f32[0]);
    a3[2] = v23;
    v24 = (v18 + 48 * v17[1]);
    v25 = vmlaq_lane_f32(v21, *v24, *result.f32, 1);
    *a3 = v25;
    v26 = vmlaq_lane_f32(v22, v24[1], *result.f32, 1);
    a3[1] = v26;
    v27 = vmlaq_lane_f32(v23, v24[2], *result.f32, 1);
    a3[2] = v27;
    v28 = (v18 + 48 * v17[2]);
    v29 = vmlaq_laneq_f32(v25, *v28, result, 2);
    *a3 = v29;
    v30 = vmlaq_laneq_f32(v26, v28[1], result, 2);
    a3[1] = v30;
    v31 = vmlaq_laneq_f32(v27, v28[2], result, 2);
    a3[2] = v31;
    v32 = (v18 + 48 * v17[3]);
    *a3 = vmlaq_laneq_f32(v29, *v32, result, 3);
    a3[1] = vmlaq_laneq_f32(v30, v32[1], result, 3);
    a3[2] = vmlaq_laneq_f32(v31, v32[2], result, 3);
  }

  else
  {
    v33 = v18 + 48 * *v17;
    result = *v33;
    v34 = *(v33 + 32);
    a3[1] = *(v33 + 16);
    a3[2] = v34;
    *a3 = result;
  }

  return result;
}

float32x4_t C3DLightProbesQueryBoxSH3(void *a1, unsigned int *a2, float32x4_t *a3, int32x4_t a4, float32x4_t a5)
{
  v54 = a4;
  if (!a2)
  {
    v53 = a5;
    v8 = scn_default_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    a5 = v53;
    a4 = v54;
    if (v9)
    {
      C3DLightProbesQuerySH2_cold_1(v8, v10, v11, v12, v13, v14, v15, v16);
      a5 = v53;
      a4 = v54;
    }
  }

  v17 = vmulq_f32(a5, a5);
  v56 = 0uLL;
  if (__lookupTetrahedron(a1, a2, &v56, a4, v17.f32[2] + vaddv_f32(*v17.f32)))
  {
    v18 = v56;
    if (a1[31])
    {
      v19 = v54;
      v55 = v56;
      __debugDrawQuery(a1, *a2, v19, v56.f32[0]);
      v18 = v55;
    }

    v20 = (a1[6] + 48 * *a2);
    v21 = a1[3] + 448;
    v22 = (v21 + 112 * *v20);
    v23 = vmulq_n_f32(*v22, v18.f32[0]);
    *a3 = v23;
    v24 = vmulq_n_f32(v22[1], v18.f32[0]);
    a3[1] = v24;
    v25 = vmulq_n_f32(v22[2], v18.f32[0]);
    a3[2] = v25;
    v26 = vmulq_n_f32(v22[3], v18.f32[0]);
    a3[3] = v26;
    v27 = vmulq_n_f32(v22[4], v18.f32[0]);
    a3[4] = v27;
    v28 = vmulq_n_f32(v22[5], v18.f32[0]);
    a3[5] = v28;
    v29 = vmulq_n_f32(v22[6], v18.f32[0]);
    a3[6] = v29;
    v30 = (v21 + 112 * v20[1]);
    v31 = vmlaq_lane_f32(v23, *v30, *v18.f32, 1);
    *a3 = v31;
    v32 = vmlaq_lane_f32(v24, v30[1], *v18.f32, 1);
    a3[1] = v32;
    v33 = vmlaq_lane_f32(v25, v30[2], *v18.f32, 1);
    a3[2] = v33;
    v34 = vmlaq_lane_f32(v26, v30[3], *v18.f32, 1);
    a3[3] = v34;
    v35 = vmlaq_lane_f32(v27, v30[4], *v18.f32, 1);
    a3[4] = v35;
    v36 = vmlaq_lane_f32(v28, v30[5], *v18.f32, 1);
    a3[5] = v36;
    v37 = vmlaq_lane_f32(v29, v30[6], *v18.f32, 1);
    a3[6] = v37;
    v38 = (v21 + 112 * v20[2]);
    v39 = vmlaq_laneq_f32(v31, *v38, v18, 2);
    *a3 = v39;
    v40 = vmlaq_laneq_f32(v32, v38[1], v18, 2);
    a3[1] = v40;
    v41 = vmlaq_laneq_f32(v33, v38[2], v18, 2);
    a3[2] = v41;
    v42 = vmlaq_laneq_f32(v34, v38[3], v18, 2);
    a3[3] = v42;
    v43 = vmlaq_laneq_f32(v35, v38[4], v18, 2);
    a3[4] = v43;
    v44 = vmlaq_laneq_f32(v36, v38[5], v18, 2);
    a3[5] = v44;
    result = vmlaq_laneq_f32(v37, v38[6], v18, 2);
    a3[6] = result;
    v46 = v20[3];
    if (v46 <= 2147483645)
    {
      v47 = (v21 + 112 * v46);
      *a3 = vmlaq_laneq_f32(v39, *v47, v18, 3);
      a3[1] = vmlaq_laneq_f32(v40, v47[1], v18, 3);
      a3[2] = vmlaq_laneq_f32(v41, v47[2], v18, 3);
      a3[3] = vmlaq_laneq_f32(v42, v47[3], v18, 3);
      a3[4] = vmlaq_laneq_f32(v43, v47[4], v18, 3);
      a3[5] = vmlaq_laneq_f32(v44, v47[5], v18, 3);
      result = vmlaq_laneq_f32(result, v47[6], v18, 3);
      a3[6] = result;
    }
  }

  else
  {
    v48 = a1[3];
    v49 = v48[28];
    v50 = v48[30];
    a3[1] = v48[29];
    a3[2] = v50;
    *a3 = v49;
    result = v48[31];
    v51 = v48[32];
    v52 = v48[34];
    a3[5] = v48[33];
    a3[6] = v52;
    a3[3] = result;
    a3[4] = v51;
  }

  return result;
}

float32x4_t C3DLightProbesQuerySH3(void *a1, unsigned int *a2, float32x4_t *a3, int32x4_t a4)
{
  v51 = a4;
  if (!a2)
  {
    v7 = scn_default_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    a4 = v51;
    if (v8)
    {
      C3DLightProbesQuerySH2_cold_1(v7, v9, v10, v11, v12, v13, v14, v15);
      a4 = v51;
    }
  }

  v53 = 0uLL;
  if (__lookupTetrahedron(a1, a2, &v53, a4, 0.0))
  {
    v16 = v53;
    if (a1[31])
    {
      v17 = v51;
      v52 = v53;
      __debugDrawQuery(a1, *a2, v17, v53.f32[0]);
      v16 = v52;
    }

    v18 = (a1[6] + 48 * *a2);
    v19 = a1[3] + 448;
    v20 = (v19 + 112 * *v18);
    v21 = vmulq_n_f32(*v20, v16.f32[0]);
    *a3 = v21;
    v22 = vmulq_n_f32(v20[1], v16.f32[0]);
    a3[1] = v22;
    v23 = vmulq_n_f32(v20[2], v16.f32[0]);
    a3[2] = v23;
    v24 = vmulq_n_f32(v20[3], v16.f32[0]);
    a3[3] = v24;
    v25 = vmulq_n_f32(v20[4], v16.f32[0]);
    a3[4] = v25;
    v26 = vmulq_n_f32(v20[5], v16.f32[0]);
    a3[5] = v26;
    v27 = vmulq_n_f32(v20[6], v16.f32[0]);
    a3[6] = v27;
    v28 = (v19 + 112 * v18[1]);
    v29 = vmlaq_lane_f32(v21, *v28, *v16.f32, 1);
    *a3 = v29;
    v30 = vmlaq_lane_f32(v22, v28[1], *v16.f32, 1);
    a3[1] = v30;
    v31 = vmlaq_lane_f32(v23, v28[2], *v16.f32, 1);
    a3[2] = v31;
    v32 = vmlaq_lane_f32(v24, v28[3], *v16.f32, 1);
    a3[3] = v32;
    v33 = vmlaq_lane_f32(v25, v28[4], *v16.f32, 1);
    a3[4] = v33;
    v34 = vmlaq_lane_f32(v26, v28[5], *v16.f32, 1);
    a3[5] = v34;
    v35 = vmlaq_lane_f32(v27, v28[6], *v16.f32, 1);
    a3[6] = v35;
    v36 = (v19 + 112 * v18[2]);
    v37 = vmlaq_laneq_f32(v29, *v36, v16, 2);
    *a3 = v37;
    v38 = vmlaq_laneq_f32(v30, v36[1], v16, 2);
    a3[1] = v38;
    v39 = vmlaq_laneq_f32(v31, v36[2], v16, 2);
    a3[2] = v39;
    v40 = vmlaq_laneq_f32(v32, v36[3], v16, 2);
    a3[3] = v40;
    v41 = vmlaq_laneq_f32(v33, v36[4], v16, 2);
    a3[4] = v41;
    v42 = vmlaq_laneq_f32(v34, v36[5], v16, 2);
    a3[5] = v42;
    result = vmlaq_laneq_f32(v35, v36[6], v16, 2);
    a3[6] = result;
    v44 = v18[3];
    if (v44 <= 2147483645)
    {
      v45 = (v19 + 112 * v44);
      *a3 = vmlaq_laneq_f32(v37, *v45, v16, 3);
      a3[1] = vmlaq_laneq_f32(v38, v45[1], v16, 3);
      a3[2] = vmlaq_laneq_f32(v39, v45[2], v16, 3);
      a3[3] = vmlaq_laneq_f32(v40, v45[3], v16, 3);
      a3[4] = vmlaq_laneq_f32(v41, v45[4], v16, 3);
      a3[5] = vmlaq_laneq_f32(v42, v45[5], v16, 3);
      result = vmlaq_laneq_f32(result, v45[6], v16, 3);
      a3[6] = result;
    }
  }

  else
  {
    v46 = a1[3];
    v47 = v46[28];
    v48 = v46[30];
    a3[1] = v46[29];
    a3[2] = v48;
    *a3 = v47;
    result = v46[31];
    v49 = v46[32];
    v50 = v46[34];
    a3[5] = v46[33];
    a3[6] = v50;
    a3[3] = result;
    a3[4] = v49;
  }

  return result;
}

__n128 C3DLightProbesSetGlobalSH3(uint64_t a1, uint64_t a2, uint64_t a3, __n128 result)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 232) == 3)
  {
    if (a3 != 108)
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        C3DLightProbesSetGlobalSH3_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    v14 = 0;
    v23[0] = a2;
    v23[1] = a2 + 36;
    v23[2] = a2 + 72;
    v15 = vdup_n_s32(0xBEA6C6BC);
    do
    {
      v16 = v23[v14];
      v17.i32[0] = *(v16 + 12);
      v17.i32[1] = *(v16 + 4);
      *&v18 = vmul_f32(v17, v15);
      *(&v18 + 2) = *(v16 + 8) * 0.32573;
      *(&v18 + 3) = (*(v16 + 24) * -0.078848) + (*v16 * 0.28209);
      *(&v24 + v14++) = v18;
    }

    while (v14 != 3);
    v19 = 0;
    v20 = v25;
    *(a1 + 80) = v24;
    *(a1 + 96) = v20;
    *(a1 + 112) = v26;
    do
    {
      *(&v24 + v19) = vmulq_f32(*(v23[v19] + 16), xmmword_21C2A1A40);
      ++v19;
    }

    while (v19 != 3);
    v21 = v25;
    *(a1 + 128) = v24;
    *(a1 + 144) = v21;
    *(a1 + 160) = v26;
    v22.i32[0] = *(a2 + 32);
    v22.i32[1] = *(a2 + 68);
    result.n128_u64[0] = vmul_f32(v22, vdup_n_s32(0x3E0BD8A0u));
    result.n128_f32[2] = *(a2 + 104) * 0.13657;
    result.n128_u32[3] = 1.0;
    *(a1 + 176) = result;
  }

  return result;
}

BOOL computeTetrahedronCircumsphereMatrix(float32x4_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16 * a1->i32[0]);
  v3 = *(a2 + 16 * a1->i32[1]);
  v4 = *(a2 + 16 * a1->i32[2]);
  v5 = *(a2 + 16 * a1->i32[3]);
  v6 = vsubq_f32(v3, v2);
  v7 = *v6.i32;
  v8 = vsubq_f32(v4, v2);
  v9 = *&v8.i32[1];
  v10 = vsubq_f32(v5, v2);
  _D21 = *&v10.i32[1];
  v12.i32[0] = vextq_s8(v8, v8, 8uLL).u32[0];
  v12.i32[1] = v8.i32[0];
  v8.i32[0] = vextq_s8(v10, v10, 8uLL).u32[0];
  v8.i32[1] = v10.i32[0];
  _Q4 = vcvtq_f64_f32(*&vextq_s8(v6, v6, 4uLL));
  v14 = vcvtq_f64_f32(*v8.i8);
  v15 = vdupq_lane_s64(*&v14.f64[0], 0);
  v15.f64[0] = _D21;
  _Q18 = vcvtq_f64_f32(v12);
  v17 = vdupq_lane_s64(*&_Q18.f64[0], 0);
  v17.f64[0] = v9;
  v18 = vmlaq_f64(vmulq_f64(_Q18, vnegq_f64(v15)), v14, v17);
  __asm
  {
    FMLA            D22, D21, V18.D[1]
    FMLA            D23, D22, V4.D[1]
  }

  v25 = fabs(_D23);
  if (v25 < 0.00001)
  {
    __asm { FMOV            V4.4S, #0.25 }

    v34 = vsubq_f32(vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v2, v3), v4), v5), _Q4), v2);
  }

  else
  {
    v26 = -_Q18.f64[1] * _Q4.f64[0] + v7 * v9;
    v27 = v14.f64[1] * _Q4.f64[0] - v7 * _D21;
    v28 = _D21 * _D21 + v14.f64[1] * v14.f64[1] + v14.f64[0] * v14.f64[0];
    v29 = v9 * v9 + _Q18.f64[1] * _Q18.f64[1] + _Q18.f64[0] * _Q18.f64[0];
    v30 = vmulq_f64(_Q4, _Q4).f64[0] + v7 * v7 + _Q4.f64[1] * _Q4.f64[1];
    v31 = (v29 * v27 + v30 * _D22 + v28 * v26) * (0.5 / _D23);
    *&v32.f64[0] = vdupq_laneq_s64(_Q4, 1).u64[0];
    v32.f64[1] = v7;
    v34 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_f64(vmulq_f64(vnegq_f64(_Q4), v14), v32, v15), v29), v18, v30), vmlaq_f64(vmulq_f64(v32, vnegq_f64(v17)), _Q18, _Q4), v28), 0.5 / _D23);
    *v34.f32 = vcvt_f32_f64(v34);
    v33 = v31;
    v34.f32[2] = v33;
  }

  v36 = vaddq_f32(v2, v34);
  v37 = vmulq_f32(v34, v34);
  v36.f32[3] = v37.f32[2] + vaddv_f32(*v37.f32);
  a1[2] = v36;
  return v25 >= 0.00001;
}

void C3D::DOFFinalBlurPass::DOFFinalBlurPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC49E0;
  v5[14] = a4;
}

double C3D::DOFFinalBlurPass::setup(C3D::DOFFinalBlurPass *this)
{
  C3D::Pass::setInputCount(this, 2u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = (*(*this + 88))(this);
  v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v3 + 8) = "DofColorCoC";
  *(v3 + 16) = fmax(*(v2 + 8) * 0.5 / **(this + 14), 1.0);
  *(v3 + 18) = fmax(*(v2 + 12) * 0.5 / **(this + 14), 1.0);
  *(v3 + 28) = 115;
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
  *(v4 + 8) = "DOFCoCBlurred";
  *(v4 + 16) = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(v4 + 18) = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v5 + 8) = "DOF-Final";
  *(v5 + 16) = fmax(*(v2 + 8) * 0.5 / **(this + 14), 1.0);
  result = fmax(*(v2 + 12) * 0.5 / **(this + 14), 1.0);
  *(v5 + 18) = result;
  *(v5 + 28) = 115;
  return result;
}

uint64_t C3D::DOFFinalBlurPass::compile(C3D::DOFFinalBlurPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  [(SCNMTLRenderContext *)RenderContext device];
  v3 = (2 * *(*(this + 14) + 4)) | *(*(this + 14) + 20);
  v4 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47));
  *(this + 15) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::DOFFinalBlurPass::execute(C3D::Pass *a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = *(a1 + 14);
  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  if ((*a2)->_buffers[0] == v6)
  {
    if (v3->_offsets[0] == v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3->_buffers[0] = v6;
  }

  v3->_offsets[0] = v5;
  v3->_buffersToBind[0] |= 1uLL;
LABEL_5:
  v7 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 15) + 40);
  if (v3->_buffers[1] == v7)
  {
    if (!v3->_offsets[1])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3->_buffers[1] = v7;
  }

  v3->_offsets[1] = 0;
  v3->_buffersToBind[0] |= 2uLL;
LABEL_9:
  v8 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 15) + 24);
  v9 = [(SCNMTLOpenSubdivComputeEvaluator *)v8 computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOne(v3, v9);
  v10 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[0] != v10)
  {
    v3->_textures[0] = v10;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v11 = C3D::Pass::inputTextureAtIndex(a1, 1u);
  if (v3->_textures[1] != v11)
  {
    v3->_textures[1] = v11;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v12 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (v3->_textures[2] != v12)
  {
    v3->_textures[2] = v12;
    v3->_texturesToBind[0] |= 4uLL;
  }

  v13 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v14 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 15) + 16);
  v15 = [(SCNMTLOpenSubdivComputeEvaluator *)v14 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v13, v15);
}

void C3D::DOFFinalBlurPassResource::~DOFFinalBlurPassResource(C3D::DOFFinalBlurPassResource *this)
{
  *this = &unk_282DC4A50;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  v4 = *(this + 3);
  if (v4)
  {
  }

  v5 = *(this + 2);
  if (v5)
  {
  }
}

{
  *this = &unk_282DC4A50;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  v4 = *(this + 3);
  if (v4)
  {
  }

  v5 = *(this + 2);
  if (v5)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t C3DMaterialDefaultUVSetForProperty(int a1)
{
  if (a1 == 4)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel(int a1, int a2)
{
  if ((C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapsReady & 1) == 0)
  {
    v4 = a1;
    v5 = a2;
    v2 = 0;
    *(&dword_27CDD97BA + 1) = 0;
    xmmword_27CDD979C = 0u;
    unk_27CDD97AC = 0u;
    xmmword_27CDD977C = 0u;
    unk_27CDD978C = 0u;
    xmmword_27CDD975C = 0u;
    unk_27CDD976C = 0u;
    xmmword_27CDD973C = 0u;
    unk_27CDD974C = 0u;
    C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities = 0u;
    while (1)
    {
      if (v2 <= 2)
      {
        if (v2)
        {
          if (v2 == 1)
          {
            *(&xmmword_27CDD973C + 5) = 0x101010100010101;
            *(&xmmword_27CDD973C + 13) = 257;
            *(&xmmword_27CDD973C + 15) = 0;
            byte_27CDD974F = 0;
            unk_27CDD9750 = 1;
            unk_27CDD9752 = 16843009;
          }

          else
          {
            unk_27CDD9756 = 0x101010101010101;
            WORD1(xmmword_27CDD975C) = 257;
            DWORD1(xmmword_27CDD975C) = 0;
            BYTE8(xmmword_27CDD975C) = 0;
            *(&xmmword_27CDD975C + 9) = 16843009;
            *(&xmmword_27CDD975C + 13) = 257;
          }
        }

        else
        {
          LODWORD(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 65793;
          WORD2(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 257;
          BYTE6(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 1;
          *(&C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities + 7) = 0;
          BYTE11(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 0;
          HIDWORD(C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities) = 0x1000000;
          LOBYTE(xmmword_27CDD973C) = 0;
          *(&xmmword_27CDD973C + 1) = 16843009;
        }
      }

      else if (v2 > 4)
      {
        if (v2 != 5)
        {
          *(&xmmword_27CDD979C + 14) = 0;
          unk_27CDD97B2 = 0;
          dword_27CDD97BA = 0x10000;
          byte_27CDD97BE = 0;
          C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapsReady = 1;
          a1 = v4;
          a2 = v5;
          return *(&C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities + 21 * a1 + a2);
        }

        dword_27CDD9795 = 65537;
        word_27CDD9799 = 256;
        byte_27CDD979B = C3DWasLinkedBeforeMajorOSYear2018() ^ 1;
        *&xmmword_27CDD979C = 0x101010101010101;
        BYTE8(xmmword_27CDD979C) = 1;
        *(&xmmword_27CDD979C + 9) = 0x10000;
        BYTE13(xmmword_27CDD979C) = 0;
      }

      else if (v2 == 3)
      {
        *(&xmmword_27CDD975C + 15) = 0x101010101010101;
        word_27CDD9773 = 257;
        unk_27CDD9775 = 0;
        byte_27CDD9779 = 0;
        *algn_27CDD977A = 16843009;
        WORD1(xmmword_27CDD977C) = 257;
      }

      else
      {
        DWORD1(xmmword_27CDD977C) = 65537;
        WORD4(xmmword_27CDD977C) = 257;
        BYTE10(xmmword_27CDD977C) = 1;
        *(&xmmword_27CDD977C + 11) = 0;
        unk_27CDD978F = 1;
        unk_27CDD9791 = 16843009;
      }

      ++v2;
    }
  }

  return *(&C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel_lightingModelsCapabilities + 21 * a1 + a2);
}

void _C3DEffectCommonProfileReleaseSlot(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DEffectCommonProfileReleaseSlot_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 <= 0xF)
  {
    v12 = qword_21C2A1B18[a2];
    v13 = *(a1 + v12);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + v12) = 0;
    }
  }
}

void *C3DEffectCommonProfileDefaultColorForEffectProperty(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return &c3dBlack;
  }

  else
  {
    return *(&off_2782FDD68 + (a1 - 1));
  }
}