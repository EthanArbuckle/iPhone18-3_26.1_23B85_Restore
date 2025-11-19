@interface ATXDefaultHomeScreenItemTilerGridSize4
- (BOOL)_shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:(id)a3;
- (id)_tilingBlueprint;
- (id)tiledHomeScreenItems;
- (void)_tilingBlueprint;
@end

@implementation ATXDefaultHomeScreenItemTilerGridSize4

- (id)tiledHomeScreenItems
{
  v3 = objc_opt_new();
  v4 = [(ATXDefaultHomeScreenItemTilerGridSize4 *)self _tilingBlueprint];
  if (v4)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerGridSize4 *)self _shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:v4];
    if (v5)
    {
      v6 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self addFirstPod:v3];
    }

    else
    {
      v6 = 0;
    }

    if ([(ATXDefaultHomeScreenItemTilerPodBuilder *)self targetNumberOfSuggestions])
    {
      v7 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self targetNumberOfSuggestions];
    }

    else
    {
      v7 = 7;
    }

    do
    {
      if ([v3 count] >= v7 && (v6 & 1) == 0)
      {
        break;
      }

      v8 = [v4 objectAtIndexedSubscript:{v6 % objc_msgSend(v4, "count")}];
      v9 = [v8 integerValue];

      v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self addPod:v3 podType:v9 allowAlternatePodTypeAsBackup:v5 podsAdded:v6];
      v6 += v10;
    }

    while (v10);
  }

  return v3;
}

- (id)_tilingBlueprint
{
  if ((~[(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 0x1E) == 0)
  {
    return &unk_1F3E60828;
  }

  if ((~[(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 0xE) == 0)
  {
    return &unk_1F3E60840;
  }

  if (([(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 2) != 0)
  {
    return &unk_1F3E60858;
  }

  if (([(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 4) != 0)
  {
    return &unk_1F3E60870;
  }

  if (([(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 8) != 0)
  {
    return &unk_1F3E60888;
  }

  if (([(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 0x10) != 0)
  {
    return &unk_1F3E608A0;
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ATXDefaultHomeScreenItemTilerGridSize4 *)self _tilingBlueprint];
  }

  return 0;
}

- (BOOL)_shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToArray:&unk_1F3E608B8])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToArray:&unk_1F3E608D0];
  }

  return v4;
}

- (void)_tilingBlueprint
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 widgetFamilyMask];
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultHomeScreenItemTilerGridSize4: no tiling blueprint for the requested size family: %lu", &v3, 0xCu);
}

@end