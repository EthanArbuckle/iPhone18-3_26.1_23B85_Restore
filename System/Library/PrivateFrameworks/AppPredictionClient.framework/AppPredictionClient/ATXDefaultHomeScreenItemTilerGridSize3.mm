@interface ATXDefaultHomeScreenItemTilerGridSize3
- (ATXDefaultHomeScreenItemTilerGridSize3)initWithDefaultStack:(id)a3 defaultWidgetsSmall:(id)a4 defaultWidgetsMedium:(id)a5 defaultWidgetsLarge:(id)a6 defaultWidgetsExtraLarge:(id)a7 widgetFamilyMask:(unint64_t)a8 targetNumberOfSuggestions:(unint64_t)a9;
- (BOOL)_addFirstRow:(id)a3;
- (BOOL)_addMediumRow:(id)a3;
- (BOOL)_addRow:(id)a3 rowSizePreference:(unint64_t)a4 allowAlternateRowSizeAsBackup:(BOOL)a5;
- (BOOL)_addRow:(id)a3 rowType:(unint64_t)a4;
- (BOOL)_addSmallRow:(id)a3;
- (NSArray)tiledHomeScreenItems;
@end

@implementation ATXDefaultHomeScreenItemTilerGridSize3

- (ATXDefaultHomeScreenItemTilerGridSize3)initWithDefaultStack:(id)a3 defaultWidgetsSmall:(id)a4 defaultWidgetsMedium:(id)a5 defaultWidgetsLarge:(id)a6 defaultWidgetsExtraLarge:(id)a7 widgetFamilyMask:(unint64_t)a8 targetNumberOfSuggestions:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v30.receiver = self;
  v30.super_class = ATXDefaultHomeScreenItemTilerGridSize3;
  v19 = [(ATXDefaultHomeScreenItemTilerGridSize3 *)&v30 init];
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
      v7 = [(ATXDefaultHomeScreenItemTilerGridSize3 *)self _addFirstRow:v3];
    }

    else
    {
      v7 = 0;
    }

    v9 = &unk_1F3E60930;
    goto LABEL_11;
  }

  if ((widgetFamilyMask & 2) != 0)
  {
    v7 = 0;
    v9 = &unk_1F3E60948;
    do
    {
LABEL_11:
      if ([v3 count] >= self->_targetNumberOfSuggestions)
      {
        break;
      }

      v10 = [v9 objectAtIndexedSubscript:{v7 % objc_msgSend(v9, "count")}];
      v11 = [v10 integerValue];

      ++v7;
    }

    while ([(ATXDefaultHomeScreenItemTilerGridSize3 *)self _addRow:v3 rowSizePreference:v11 allowAlternateRowSizeAsBackup:v6 == 6]);
    goto LABEL_13;
  }

  v8 = __atxlog_handle_modes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(ATXDefaultHomeScreenItemTilerGridSize2 *)p_widgetFamilyMask tiledHomeScreenItems];
  }

LABEL_13:

  return v3;
}

- (BOOL)_addFirstRow:(id)a3
{
  v4 = a3;
  if (![(ATXDefaultWidgetStack *)self->_defaultStack suggestedSize]&& [(NSMutableArray *)self->_defaultWidgetsSmall count]>= 2)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v7 = v6;
    if (self->_defaultStack && v5 && v6)
    {
      [v4 addObject:?];
      [v4 addObject:v5];
      [v4 addObject:v7];

LABEL_12:
      v10 = 1;
LABEL_17:

      goto LABEL_18;
    }

    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v5];
    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v7];

    goto LABEL_16;
  }

  v5 = [(ATXDefaultWidgetStack *)self->_defaultStack mediumDefaultStack];
  if (![v5 count])
  {
    goto LABEL_16;
  }

  v8 = [(NSMutableArray *)self->_defaultWidgetsSmall count];

  if (v8)
  {
    [(ATXDefaultWidgetStack *)self->_defaultStack setSuggestedSize:1];
    v9 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v5 = v9;
    if (self->_defaultStack && v9)
    {
      [v4 addObject:?];
      [v4 addObject:v5];
      goto LABEL_12;
    }

    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v9];
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (BOOL)_addRow:(id)a3 rowSizePreference:(unint64_t)a4 allowAlternateRowSizeAsBackup:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(ATXDefaultHomeScreenItemTilerGridSize3 *)self _addRow:v8 rowType:a4];
  if (!v9 && v5)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      while (1)
      {
        v12 = v11;
        if (v10 != a4)
        {
          break;
        }

        v11 = 0;
        v9 = 0;
        v10 = 1;
        if ((v12 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v9 = [(ATXDefaultHomeScreenItemTilerGridSize3 *)self _addRow:v8 rowType:?];
      if (v9)
      {
        break;
      }

      v11 = 0;
      v10 = 1;
    }

    while (((v12 ^ 1) & 1) == 0);
  }

LABEL_9:

  return v9;
}

- (BOOL)_addRow:(id)a3 rowType:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(ATXDefaultHomeScreenItemTilerGridSize3 *)self _addMediumRow:v6];
  }

  else
  {
    if (a4)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [(ATXDefaultHomeScreenItemTilerGridSize3 *)self _addSmallRow:v6];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (BOOL)_addSmallRow:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_defaultWidgetsSmall count]< 3)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v7 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v8 = v7;
    if (v5 && v6 && v7)
    {
      [v4 addObject:v5];
      [v4 addObject:v6];
      [v4 addObject:v8];
      v9 = 1;
    }

    else
    {
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v5];
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v6];
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v8];
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)_addMediumRow:(id)a3
{
  v4 = a3;
  v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsMedium];
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

  v9 = !v8;
  if (v8)
  {
    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v5];
    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v7];
  }

  else
  {
    [v4 addObject:v5];
    [v4 addObject:v7];
  }

  return v9;
}

@end