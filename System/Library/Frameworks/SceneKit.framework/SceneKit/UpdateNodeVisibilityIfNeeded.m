@interface UpdateNodeVisibilityIfNeeded
@end

@implementation UpdateNodeVisibilityIfNeeded

uint64_t ____UpdateNodeVisibilityIfNeeded_block_invoke(uint64_t a1, float32x4_t *a2)
{
  if (C3DNodeIsHidden(a2) && ((*(a1 + 48) & 1) != 0 || *(a1 + 32) != a2))
  {
    return 1;
  }

  if (C3DNodeShouldBePutInCullingSystem(a2))
  {
    if (a2[13].i32[2] == -1)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        ____UpdateNodeVisibilityIfNeeded_block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  if (*(a1 + 48) == 1)
  {
    C3DScenePostPipelineEvent(a2[3].i64[0], 0, a2, 0);
    v13 = *(a1 + 40);
    if (v13)
    {
      C3DSceneNodeWasAdded(v13, a2);
    }
  }

  else
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      C3DSceneNodeWillBeRemoved(v14, a2);
    }
  }

  Floor = C3DNodeGetFloor(a2);
  Light = C3DNodeGetLight(a2);
  if (Light && (v17 = Light, v18 = CFGetTypeID(Light), v18 == C3DLightGetTypeID()) && C3DLightTypeSupportsShadow(v17) && (C3DLightGetCastsShadow(v17) & 1) != 0 || Floor)
  {
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", *(a1 + 40), 0, 1u);
  }

  return 0;
}

@end