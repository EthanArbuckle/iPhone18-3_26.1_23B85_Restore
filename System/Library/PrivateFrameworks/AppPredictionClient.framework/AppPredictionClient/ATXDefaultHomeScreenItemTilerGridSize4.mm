@interface ATXDefaultHomeScreenItemTilerGridSize4
- (BOOL)_shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:(id)blueprint;
- (id)_tilingBlueprint;
- (id)tiledHomeScreenItems;
- (void)_tilingBlueprint;
@end

@implementation ATXDefaultHomeScreenItemTilerGridSize4

- (id)tiledHomeScreenItems
{
  v3 = objc_opt_new();
  _tilingBlueprint = [(ATXDefaultHomeScreenItemTilerGridSize4 *)self _tilingBlueprint];
  if (_tilingBlueprint)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerGridSize4 *)self _shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:_tilingBlueprint];
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
      targetNumberOfSuggestions = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self targetNumberOfSuggestions];
    }

    else
    {
      targetNumberOfSuggestions = 7;
    }

    do
    {
      if ([v3 count] >= targetNumberOfSuggestions && (v6 & 1) == 0)
      {
        break;
      }

      v8 = [_tilingBlueprint objectAtIndexedSubscript:{v6 % objc_msgSend(_tilingBlueprint, "count")}];
      integerValue = [v8 integerValue];

      v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self addPod:v3 podType:integerValue allowAlternatePodTypeAsBackup:v5 podsAdded:v6];
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

- (BOOL)_shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  if ([blueprintCopy isEqualToArray:&unk_1F3E608B8])
  {
    v4 = 1;
  }

  else
  {
    v4 = [blueprintCopy isEqualToArray:&unk_1F3E608D0];
  }

  return v4;
}

- (void)_tilingBlueprint
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  widgetFamilyMask = [self widgetFamilyMask];
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultHomeScreenItemTilerGridSize4: no tiling blueprint for the requested size family: %lu", &v3, 0xCu);
}

@end