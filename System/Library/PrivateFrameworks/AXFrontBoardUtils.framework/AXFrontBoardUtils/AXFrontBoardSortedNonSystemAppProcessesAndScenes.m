@interface AXFrontBoardSortedNonSystemAppProcessesAndScenes
@end

@implementation AXFrontBoardSortedNonSystemAppProcessesAndScenes

void ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 accessibilitySceneOwnerIsAUIApplication])
  {
    goto LABEL_25;
  }

  v4 = [v3 clientProcess];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:*MEMORY[0x277CE6918]];

  if (v6)
  {
    goto LABEL_25;
  }

  v7 = [v3 identifier];
  v8 = [v7 containsString:@"searchBar"];

  if (v8 & 1) != 0 || ([v3 accessibilitySceneIsDismissedSearchScreen])
  {
    goto LABEL_25;
  }

  if (*(a1 + 48) != 1)
  {
    goto LABEL_8;
  }

  if (([v3 accessibilityIsSceneOnCarScreen] & 1) == 0)
  {
    if (*(a1 + 48))
    {
      goto LABEL_25;
    }

LABEL_8:
    if (([v3 accessibilityIsSceneOnMainScreen] & 1) == 0 && !objc_msgSend(v3, "accessibilityIsSceneOnExternalScreen"))
    {
      goto LABEL_25;
    }
  }

  if (([v3 accessibilitySceneIsDismissedInCallService] & 1) == 0 && (objc_msgSend(v3, "accessibilitySceneIsCallServiceBanner") & 1) == 0 && (objc_msgSend(v3, "accessibilitySceneBelongsToTheSystemApp") & 1) == 0 && ((*(a1 + 49) & 1) != 0 || (objc_msgSend(v3, "accessibilitySceneIsDeactivatedBySidebar") & 1) == 0))
  {
    v9 = _AXFrontBoardSceneBelongsToContinuityDisplay(v3);
    if ((*(a1 + 50) & 1) == 0)
    {
      v10 = v9;
      v11 = [*(a1 + 32) _accessibilityRecentlyActivatedApplicationBundleIdentifiers];
      v12 = [v3 identifier];
      if ([v11 containsObject:v12])
      {
      }

      else
      {
        v16 = [v3 accessibilitySceneIsDeactivatedBySwitcher];

        if (v16 && !v10)
        {
          goto LABEL_25;
        }
      }
    }

    if (([v3 accessibilitySceneIsShieldedByAppProtection] & 1) == 0)
    {
      v13 = [v3 accessibilitySceneProcess];
      if (v13 && [v3 accessibilitySceneIsForegroundVisible])
      {
        v14 = *(a1 + 40);
        v18[0] = @"scene";
        v18[1] = @"process";
        v19[0] = v3;
        v19[1] = v13;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
        [v14 addObject:v15];
      }
    }
  }

LABEL_25:

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (AXProcessIsCarPlay())
  {
    v3 = [v2 hasPrefix:@"com.apple.DashBoard"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"scene"];
  v7 = [v5 objectForKeyedSubscript:@"scene"];

  [v6 accessibilitySceneFrame];
  v9 = v8;
  v11 = v10;
  [v7 accessibilitySceneFrame];
  v13 = v12;
  v15 = v14;
  v16 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v17 = *(a1 + 32);
  v18 = v13 == v9;
  v19 = v13 < v9;
  v20 = v11 == v15;
  v21 = v11 < v15;
  v22 = v18;
  v23 = v9 < v13;
  if (v17 == 4)
  {
    v23 = v15 < v11;
    v22 = v15 == v11;
  }

  if (v17 != 3)
  {
    v21 = v23;
    v20 = v22;
  }

  if (v17 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  v24 = v9 == v13;
  v25 = v15 == v11;
  v26 = v15 < v11;
  v27 = v24;
  v28 = v13 < v9;
  if (v17 == 4)
  {
    v28 = v11 < v15;
    v27 = v11 == v15;
  }

  if (v17 != 3)
  {
    v26 = v28;
    v25 = v27;
  }

  v29 = v17 == 2;
  if (v17 == 2)
  {
    v30 = v9 < v13;
  }

  else
  {
    v30 = v26;
  }

  if (!v29)
  {
    v24 = v25;
  }

  if (v16 == 1)
  {
    v18 = v24;
  }

  else
  {
    v30 = v19;
  }

  v29 = !v30;
  v31 = -1;
  if (v29)
  {
    v31 = 1;
  }

  if (v18)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  return v32;
}

@end