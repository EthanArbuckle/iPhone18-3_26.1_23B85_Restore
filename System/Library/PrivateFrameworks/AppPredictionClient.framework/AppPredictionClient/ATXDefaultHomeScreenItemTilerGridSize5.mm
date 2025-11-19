@interface ATXDefaultHomeScreenItemTilerGridSize5
- (BOOL)_addTwoSmallWidgets:(id)a3;
- (BOOL)_shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:(id)a3;
- (id)_tilingBlueprint;
- (id)tiledHomeScreenItems;
- (void)_tilingBlueprint;
@end

@implementation ATXDefaultHomeScreenItemTilerGridSize5

- (id)tiledHomeScreenItems
{
  v3 = objc_opt_new();
  v4 = [(ATXDefaultHomeScreenItemTilerGridSize5 *)self _tilingBlueprint];
  if (v4)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerGridSize5 *)self _shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:v4];
    if ([(ATXDefaultHomeScreenItemTilerPodBuilder *)self targetNumberOfSuggestions])
    {
      v6 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self targetNumberOfSuggestions];
    }

    else
    {
      v6 = 10;
    }

    v7 = 0;
    do
    {
      if ([v3 count] >= v6 && (v7 & 1) == 0 || (v7 & 1) == 0 && !-[ATXDefaultHomeScreenItemTilerGridSize5 _addTwoSmallWidgets:](self, "_addTwoSmallWidgets:", v3))
      {
        break;
      }

      v8 = [v4 objectAtIndexedSubscript:{v7 % objc_msgSend(v4, "count")}];
      v9 = [v8 integerValue];

      if (v7 == 0 && v5)
      {
        v7 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self addFirstPod:v3];
      }

      v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self addPod:v3 podType:v9 allowAlternatePodTypeAsBackup:v5 podsAdded:v7];
      v7 += v10;
    }

    while (v10);
  }

  return v3;
}

- (id)_tilingBlueprint
{
  if ((~[(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 0x1E) == 0)
  {
    return &unk_1F3E606D8;
  }

  if ((~[(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 0xE) == 0)
  {
    return &unk_1F3E606F0;
  }

  if (([(ATXDefaultHomeScreenItemTilerPodBuilder *)self widgetFamilyMask]& 2) != 0)
  {
    return &unk_1F3E60708;
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ATXDefaultHomeScreenItemTilerGridSize5 *)self _tilingBlueprint];
  }

  return 0;
}

- (BOOL)_shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToArray:&unk_1F3E60720])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToArray:&unk_1F3E60738];
  }

  return v4;
}

- (BOOL)_addTwoSmallWidgets:(id)a3
{
  v4 = a3;
  if ((-[ATXDefaultHomeScreenItemTilerPodBuilder widgetFamilyMask](self, "widgetFamilyMask") & 2) != 0 && (-[ATXDefaultHomeScreenItemTilerPodBuilder defaultWidgetsSmall](self, "defaultWidgetsSmall"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 >= 2))
  {
    v7 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self tilerHelper];
    v8 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self defaultWidgetsSmall];
    v9 = [v7 filterForNextUnusedWidgetDescriptor:v8];

    v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self tilerHelper];
    v11 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self defaultWidgetsSmall];
    v12 = [v10 filterForNextUnusedWidgetDescriptor:v11];

    if (v9 && v12)
    {
      [v4 addObject:v9];
      [v4 addObject:v12];
      v13 = 1;
    }

    else
    {
      v14 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self tilerHelper];
      [v14 unmarkWidgetAsUsed:v9];

      v15 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self tilerHelper];
      [v15 unmarkWidgetAsUsed:v12];

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_tilingBlueprint
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 widgetFamilyMask];
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultHomeScreenItemTilerGridSize5: no tiling blueprint for the requested size family: %lu", &v3, 0xCu);
}

@end