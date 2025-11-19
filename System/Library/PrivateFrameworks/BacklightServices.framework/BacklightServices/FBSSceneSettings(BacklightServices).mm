@interface FBSSceneSettings(BacklightServices)
- (id)bls_presentationDate;
- (id)bls_visualState;
- (uint64_t)bls_hasUnrestrictedFramerateUpdates;
- (uint64_t)bls_isAlwaysOnEnabledForEnvironment;
- (uint64_t)bls_isDelegateActive;
- (uint64_t)bls_isLiveUpdating;
- (uint64_t)bls_renderSeed;
- (void)bls_presentationDate;
- (void)bls_renderSeed;
- (void)bls_visualState;
@end

@implementation FBSSceneSettings(BacklightServices)

- (id)bls_visualState
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:200001];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else if (v4)
  {
    v8 = bls_scenes_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FBSSceneSettings(BacklightServices) *)v4 bls_visualState:v8];
    }
  }

  return v6;
}

- (uint64_t)bls_hasUnrestrictedFramerateUpdates
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:200006];

  return v2;
}

- (uint64_t)bls_isAlwaysOnEnabledForEnvironment
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:200003];

  return v2;
}

- (id)bls_presentationDate
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:200002];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else if (v4)
  {
    v8 = bls_scenes_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FBSSceneSettings(BacklightServices) *)v4 bls_presentationDate:v8];
    }
  }

  return v6;
}

- (uint64_t)bls_isLiveUpdating
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:200005];

  return v2;
}

- (uint64_t)bls_isDelegateActive
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:200000];

  return v2;
}

- (uint64_t)bls_renderSeed
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:200004];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 unsignedLongLongValue];
  }

  else
  {
    if (v4)
    {
      v8 = bls_scenes_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(FBSSceneSettings(BacklightServices) *)v4 bls_renderSeed:v8];
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)bls_visualState
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_21FE25000, a2, a3, "%@ is not of class BLSBacklightSceneVisualState", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)bls_presentationDate
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_21FE25000, a2, a3, "%@ is not of class NSDate", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)bls_renderSeed
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_21FE25000, a2, a3, "%@ is not of class NSNumber", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end