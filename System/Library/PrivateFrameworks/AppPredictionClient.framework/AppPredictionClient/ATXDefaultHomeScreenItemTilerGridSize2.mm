@interface ATXDefaultHomeScreenItemTilerGridSize2
- (ATXDefaultHomeScreenItemTilerGridSize2)initWithDefaultStack:(id)a3 defaultWidgetsSmall:(id)a4 defaultWidgetsMedium:(id)a5 defaultWidgetsLarge:(id)a6 defaultWidgetsExtraLarge:(id)a7 widgetFamilyMask:(unint64_t)a8 targetNumberOfSuggestions:(unint64_t)a9;
- (BOOL)_addFirstRow:(id)a3;
- (BOOL)_addLargeRow:(id)a3;
- (BOOL)_addMediumRow:(id)a3;
- (BOOL)_addRow:(id)a3 rowSizePreference:(unint64_t)a4 allowAlternateRowSizeAsBackup:(BOOL)a5;
- (BOOL)_addRow:(id)a3 rowType:(unint64_t)a4;
- (BOOL)_addSmallRow:(id)a3;
- (NSArray)tiledHomeScreenItems;
- (void)tiledHomeScreenItems;
@end

@implementation ATXDefaultHomeScreenItemTilerGridSize2

- (NSArray)tiledHomeScreenItems
{
  v3 = objc_opt_new();
  p_widgetFamilyMask = &self->_widgetFamilyMask;
  widgetFamilyMask = self->_widgetFamilyMask;
  v6 = widgetFamilyMask & 6;
  if (v6 == 6)
  {
    if (self->_defaultStack)
    {
      v7 = [(ATXDefaultHomeScreenItemTilerGridSize2 *)self _addFirstRow:v3];
    }

    else
    {
      v7 = 0;
    }

    v8 = &unk_1F3E60780;
    goto LABEL_11;
  }

  if ((widgetFamilyMask & 2) != 0)
  {
    v8 = &unk_1F3E60798;
  }

  else
  {
    v8 = &unk_1F3E607B0;
  }

  if ((widgetFamilyMask & 6) != 0)
  {
    v7 = 0;
    do
    {
LABEL_11:
      if ([v3 count] >= self->_targetNumberOfSuggestions)
      {
        break;
      }

      v9 = [v8 objectAtIndexedSubscript:{v7 % objc_msgSend(v8, "count")}];
      v10 = [v9 integerValue];

      ++v7;
    }

    while ([(ATXDefaultHomeScreenItemTilerGridSize2 *)self _addRow:v3 rowSizePreference:v10 allowAlternateRowSizeAsBackup:v6 == 6]);
    goto LABEL_13;
  }

  if ((widgetFamilyMask & 8) != 0)
  {
    v7 = 0;
    v8 = &unk_1F3E607C8;
    goto LABEL_11;
  }

  v12 = __atxlog_handle_modes();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(ATXDefaultHomeScreenItemTilerGridSize2 *)p_widgetFamilyMask tiledHomeScreenItems];
  }

LABEL_13:

  return v3;
}

- (ATXDefaultHomeScreenItemTilerGridSize2)initWithDefaultStack:(id)a3 defaultWidgetsSmall:(id)a4 defaultWidgetsMedium:(id)a5 defaultWidgetsLarge:(id)a6 defaultWidgetsExtraLarge:(id)a7 widgetFamilyMask:(unint64_t)a8 targetNumberOfSuggestions:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v30.receiver = self;
  v30.super_class = ATXDefaultHomeScreenItemTilerGridSize2;
  v19 = [(ATXDefaultHomeScreenItemTilerGridSize2 *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_defaultStack, a3);
    v21 = [v16 mutableCopy];
    defaultWidgetsSmall = v20->_defaultWidgetsSmall;
    v20->_defaultWidgetsSmall = v21;

    v23 = [v17 mutableCopy];
    defaultWidgetsMedium = v20->_defaultWidgetsMedium;
    v20->_defaultWidgetsMedium = v23;

    v25 = [v18 mutableCopy];
    defaultWidgetsLarge = v20->_defaultWidgetsLarge;
    v20->_defaultWidgetsLarge = v25;

    v20->_widgetFamilyMask = a8;
    v27 = objc_opt_new();
    tilerHelper = v20->_tilerHelper;
    v20->_tilerHelper = v27;

    v20->_targetNumberOfSuggestions = a9;
  }

  return v20;
}

- (BOOL)_addFirstRow:(id)a3
{
  v4 = a3;
  if (![(ATXDefaultWidgetStack *)self->_defaultStack suggestedSize]&& [(NSMutableArray *)self->_defaultWidgetsSmall count])
  {
    v7 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v8 = v7;
    if (self->_defaultStack && v7)
    {
      [v4 addObject:?];
      [v4 addObject:v8];

      goto LABEL_9;
    }

    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v7];

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v5 = [(ATXDefaultWidgetStack *)self->_defaultStack mediumDefaultStack];
  v6 = [v5 count];

  if (!v6)
  {
    goto LABEL_11;
  }

  [(ATXDefaultWidgetStack *)self->_defaultStack setSuggestedSize:1];
  if (!self->_defaultStack)
  {
    goto LABEL_11;
  }

  [v4 addObject:?];
LABEL_9:
  v9 = 1;
LABEL_12:

  return v9;
}

- (BOOL)_addRow:(id)a3 rowSizePreference:(unint64_t)a4 allowAlternateRowSizeAsBackup:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(ATXDefaultHomeScreenItemTilerGridSize2 *)self _addRow:v8 rowType:a4];
  if (!v9 && v5)
  {
    v10 = 0;
    while (a4 == 2 || a4 == v10 || ![(ATXDefaultHomeScreenItemTilerGridSize2 *)self _addRow:v8 rowType:v10])
    {
      if (++v10 == 3)
      {
        v9 = 0;
        goto LABEL_10;
      }
    }

    v9 = 1;
  }

LABEL_10:

  return v9;
}

- (BOOL)_addRow:(id)a3 rowType:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(ATXDefaultHomeScreenItemTilerGridSize2 *)self _addLargeRow:v6];
  }

  else if (a4 == 1)
  {
    v7 = [(ATXDefaultHomeScreenItemTilerGridSize2 *)self _addMediumRow:v6];
  }

  else
  {
    if (a4)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [(ATXDefaultHomeScreenItemTilerGridSize2 *)self _addSmallRow:v6];
  }

  v8 = v7;
LABEL_9:

  return v8;
}

- (BOOL)_addSmallRow:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_defaultWidgetsSmall count]< 2)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v5];
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v7];
      v9 = 0;
    }

    else
    {
      [v4 addObject:v5];
      [v4 addObject:v7];
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)_addMediumRow:(id)a3
{
  v4 = a3;
  v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsMedium];
  if (v5)
  {
    [v4 addObject:v5];
  }

  return v5 != 0;
}

- (BOOL)_addLargeRow:(id)a3
{
  v4 = a3;
  v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsLarge];
  if (v5)
  {
    [v4 addObject:v5];
  }

  return v5 != 0;
}

- (void)tiledHomeScreenItems
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultHomeScreenItemTilerGridSize4: no tiling blueprint for the requested size family: %lu", &v3, 0xCu);
}

@end