@interface ATXDefaultHomeScreenItemTilerPodBuilder
- (ATXDefaultHomeScreenItemTilerPodBuilder)initWithDefaultStack:(id)a3 defaultWidgetsSmall:(id)a4 defaultWidgetsMedium:(id)a5 defaultWidgetsLarge:(id)a6 defaultWidgetsExtraLarge:(id)a7 widgetFamilyMask:(unint64_t)a8 targetNumberOfSuggestions:(unint64_t)a9;
- (NSArray)tiledHomeScreenItems;
- (unint64_t)_addPod:(id)a3 podType:(unint64_t)a4 podsAdded:(unint64_t)a5;
- (unint64_t)_addPodTypeFourSmalls:(id)a3;
- (unint64_t)_addPodTypeOneExtraLarge:(id)a3 podsAdded:(unint64_t)a4;
- (unint64_t)_addPodTypeOneLarge:(id)a3;
- (unint64_t)_addPodTypeOneMediumAndTwoSmalls:(id)a3;
- (unint64_t)_addPodTypeTwoMediums:(id)a3;
- (unint64_t)_addPodTypeTwoSmallsAndOneMedium:(id)a3;
- (unint64_t)addFirstPod:(id)a3;
- (unint64_t)addPod:(id)a3 podType:(unint64_t)a4 allowAlternatePodTypeAsBackup:(BOOL)a5 podsAdded:(unint64_t)a6;
@end

@implementation ATXDefaultHomeScreenItemTilerPodBuilder

- (ATXDefaultHomeScreenItemTilerPodBuilder)initWithDefaultStack:(id)a3 defaultWidgetsSmall:(id)a4 defaultWidgetsMedium:(id)a5 defaultWidgetsLarge:(id)a6 defaultWidgetsExtraLarge:(id)a7 widgetFamilyMask:(unint64_t)a8 targetNumberOfSuggestions:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v34.receiver = self;
  v34.super_class = ATXDefaultHomeScreenItemTilerPodBuilder;
  v21 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_defaultStack, a3);
    v23 = [v17 mutableCopy];
    defaultWidgetsSmall = v22->_defaultWidgetsSmall;
    v22->_defaultWidgetsSmall = v23;

    v25 = [v18 mutableCopy];
    defaultWidgetsMedium = v22->_defaultWidgetsMedium;
    v22->_defaultWidgetsMedium = v25;

    v27 = [v19 mutableCopy];
    defaultWidgetsLarge = v22->_defaultWidgetsLarge;
    v22->_defaultWidgetsLarge = v27;

    v29 = [v20 mutableCopy];
    defaultWidgetsExtraLarge = v22->_defaultWidgetsExtraLarge;
    v22->_defaultWidgetsExtraLarge = v29;

    v22->_widgetFamilyMask = a8;
    v31 = objc_opt_new();
    tilerHelper = v22->_tilerHelper;
    v22->_tilerHelper = v31;

    v22->_targetNumberOfSuggestions = a9;
  }

  return v22;
}

- (NSArray)tiledHomeScreenItems
{
  v2 = objc_opt_new();

  return v2;
}

- (unint64_t)addFirstPod:(id)a3
{
  v4 = a3;
  if ((self->_widgetFamilyMask & 2) != 0 && [(ATXDefaultWidgetStack *)self->_defaultStack suggestedSize]== 1 && [(NSMutableArray *)self->_defaultWidgetsSmall count]>= 2)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v7 = v6;
    if (self->_defaultStack && v5 && v6)
    {
      [v4 addObject:?];
      [v4 addObject:v5];
      [v4 addObject:v7];
      v8 = 1;
    }

    else
    {
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v5];
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v7];
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)addPod:(id)a3 podType:(unint64_t)a4 allowAlternatePodTypeAsBackup:(BOOL)a5 podsAdded:(unint64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPod:v10 podType:a4 podsAdded:a6];
  if (!v11 && v7)
  {
    v12 = 0;
    while (1)
    {
      if (a4 != v12)
      {
        v13 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPod:v10 podType:v12 podsAdded:a6];
        if (v13)
        {
          break;
        }
      }

      if (++v12 == 6)
      {
        v11 = 0;
        goto LABEL_9;
      }
    }

    v11 = v13;
  }

LABEL_9:

  return v11;
}

- (unint64_t)_addPod:(id)a3 podType:(unint64_t)a4 podsAdded:(unint64_t)a5
{
  v8 = a3;
  v9 = 0;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeOneLarge:v8];
        goto LABEL_14;
      case 5uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeOneExtraLarge:v8 podsAdded:a5];
        goto LABEL_14;
      case 4uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeFourSmalls:v8];
        goto LABEL_14;
    }
  }

  else
  {
    switch(a4)
    {
      case 0uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeOneMediumAndTwoSmalls:v8];
        goto LABEL_14;
      case 1uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeTwoSmallsAndOneMedium:v8];
        goto LABEL_14;
      case 2uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeTwoMediums:v8];
LABEL_14:
        v9 = v10;
        break;
    }
  }

  return v9;
}

- (unint64_t)_addPodTypeFourSmalls:(id)a3
{
  v4 = a3;
  if ((self->_widgetFamilyMask & 2) == 0 || [(NSMutableArray *)self->_defaultWidgetsSmall count]< 4)
  {
    goto LABEL_19;
  }

  v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
  v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
  v7 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
  v8 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
  v9 = v8;
  v10 = !v5 || v6 == 0;
  v11 = v10 || v7 == 0;
  v12 = v11 || v8 == 0;
  v13 = v12;
  if (v12)
  {
    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v5];
    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v6];
    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v7];
    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v9];
  }

  else
  {
    [v4 addObject:v5];
    [v4 addObject:v6];
    [v4 addObject:v7];
    [v4 addObject:v9];
  }

  if (!v13)
  {
    v14 = 1;
  }

  else
  {
LABEL_19:
    v14 = 0;
  }

  return v14;
}

- (unint64_t)_addPodTypeTwoMediums:(id)a3
{
  v4 = a3;
  if ((self->_widgetFamilyMask & 4) != 0 && [(NSMutableArray *)self->_defaultWidgetsMedium count]>= 2)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsMedium];
    v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsMedium];
    v7 = v6;
    if (v5 && v6)
    {
      [v4 addObject:v5];
      [v4 addObject:v7];
      v8 = 1;
    }

    else
    {
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v5];
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v7];
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_addPodTypeOneLarge:(id)a3
{
  v4 = a3;
  if ((self->_widgetFamilyMask & 8) == 0 || ![(NSMutableArray *)self->_defaultWidgetsLarge count])
  {
    goto LABEL_6;
  }

  v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsLarge];
  if (!v5)
  {
    [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:0];
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  [v4 addObject:v5];

  v7 = 1;
LABEL_7:

  return v7;
}

- (unint64_t)_addPodTypeOneExtraLarge:(id)a3 podsAdded:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 0;
  if ((v4 & 1) == 0 && (self->_widgetFamilyMask & 0x10) != 0)
  {
    if ([(NSMutableArray *)self->_defaultWidgetsExtraLarge count])
    {
      v7 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsExtraLarge];
      if (v7)
      {
        [v6 addObject:v7];

        v7 = 2;
      }

      else
      {
        [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:0];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)_addPodTypeOneMediumAndTwoSmalls:(id)a3
{
  v4 = a3;
  if ((~LODWORD(self->_widgetFamilyMask) & 6) != 0 || ![(NSMutableArray *)self->_defaultWidgetsMedium count]|| [(NSMutableArray *)self->_defaultWidgetsSmall count]< 2)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsMedium];
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

- (unint64_t)_addPodTypeTwoSmallsAndOneMedium:(id)a3
{
  v4 = a3;
  if ((~LODWORD(self->_widgetFamilyMask) & 6) != 0 || ![(NSMutableArray *)self->_defaultWidgetsMedium count]|| [(NSMutableArray *)self->_defaultWidgetsSmall count]< 2)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsMedium];
    v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v7 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v8 = v7;
    if (v5 && v6 && v7)
    {
      [v4 addObject:v6];
      [v4 addObject:v8];
      [v4 addObject:v5];
      v9 = 1;
    }

    else
    {
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v6];
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v8];
      [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper unmarkWidgetAsUsed:v5];
      v9 = 0;
    }
  }

  return v9;
}

@end