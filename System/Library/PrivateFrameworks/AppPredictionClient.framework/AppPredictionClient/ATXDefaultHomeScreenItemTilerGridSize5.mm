@interface ATXDefaultHomeScreenItemTilerGridSize5
- (BOOL)_addTwoSmallWidgets:(id)widgets;
- (BOOL)_shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:(id)blueprint;
- (id)_tilingBlueprint;
- (id)tiledHomeScreenItems;
- (void)_tilingBlueprint;
@end

@implementation ATXDefaultHomeScreenItemTilerGridSize5

- (id)tiledHomeScreenItems
{
  v3 = objc_opt_new();
  _tilingBlueprint = [(ATXDefaultHomeScreenItemTilerGridSize5 *)self _tilingBlueprint];
  if (_tilingBlueprint)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerGridSize5 *)self _shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:_tilingBlueprint];
    if ([(ATXDefaultHomeScreenItemTilerPodBuilder *)self targetNumberOfSuggestions])
    {
      targetNumberOfSuggestions = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self targetNumberOfSuggestions];
    }

    else
    {
      targetNumberOfSuggestions = 10;
    }

    v7 = 0;
    do
    {
      if ([v3 count] >= targetNumberOfSuggestions && (v7 & 1) == 0 || (v7 & 1) == 0 && !-[ATXDefaultHomeScreenItemTilerGridSize5 _addTwoSmallWidgets:](self, "_addTwoSmallWidgets:", v3))
      {
        break;
      }

      v8 = [_tilingBlueprint objectAtIndexedSubscript:{v7 % objc_msgSend(_tilingBlueprint, "count")}];
      integerValue = [v8 integerValue];

      if (v7 == 0 && v5)
      {
        v7 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self addFirstPod:v3];
      }

      v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self addPod:v3 podType:integerValue allowAlternatePodTypeAsBackup:v5 podsAdded:v7];
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

- (BOOL)_shouldAllowAlternatePodTypeAsBackupForTilingBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  if ([blueprintCopy isEqualToArray:&unk_1F3E60720])
  {
    v4 = 1;
  }

  else
  {
    v4 = [blueprintCopy isEqualToArray:&unk_1F3E60738];
  }

  return v4;
}

- (BOOL)_addTwoSmallWidgets:(id)widgets
{
  widgetsCopy = widgets;
  if ((-[ATXDefaultHomeScreenItemTilerPodBuilder widgetFamilyMask](self, "widgetFamilyMask") & 2) != 0 && (-[ATXDefaultHomeScreenItemTilerPodBuilder defaultWidgetsSmall](self, "defaultWidgetsSmall"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 >= 2))
  {
    tilerHelper = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self tilerHelper];
    defaultWidgetsSmall = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self defaultWidgetsSmall];
    v9 = [tilerHelper filterForNextUnusedWidgetDescriptor:defaultWidgetsSmall];

    tilerHelper2 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self tilerHelper];
    defaultWidgetsSmall2 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self defaultWidgetsSmall];
    v12 = [tilerHelper2 filterForNextUnusedWidgetDescriptor:defaultWidgetsSmall2];

    if (v9 && v12)
    {
      [widgetsCopy addObject:v9];
      [widgetsCopy addObject:v12];
      v13 = 1;
    }

    else
    {
      tilerHelper3 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self tilerHelper];
      [tilerHelper3 unmarkWidgetAsUsed:v9];

      tilerHelper4 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self tilerHelper];
      [tilerHelper4 unmarkWidgetAsUsed:v12];

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
  widgetFamilyMask = [self widgetFamilyMask];
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultHomeScreenItemTilerGridSize5: no tiling blueprint for the requested size family: %lu", &v3, 0xCu);
}

@end