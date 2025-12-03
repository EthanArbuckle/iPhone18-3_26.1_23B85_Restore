@interface ATXDefaultHomeScreenItemTilerPodBuilder
- (ATXDefaultHomeScreenItemTilerPodBuilder)initWithDefaultStack:(id)stack defaultWidgetsSmall:(id)small defaultWidgetsMedium:(id)medium defaultWidgetsLarge:(id)large defaultWidgetsExtraLarge:(id)extraLarge widgetFamilyMask:(unint64_t)mask targetNumberOfSuggestions:(unint64_t)suggestions;
- (NSArray)tiledHomeScreenItems;
- (unint64_t)_addPod:(id)pod podType:(unint64_t)type podsAdded:(unint64_t)added;
- (unint64_t)_addPodTypeFourSmalls:(id)smalls;
- (unint64_t)_addPodTypeOneExtraLarge:(id)large podsAdded:(unint64_t)added;
- (unint64_t)_addPodTypeOneLarge:(id)large;
- (unint64_t)_addPodTypeOneMediumAndTwoSmalls:(id)smalls;
- (unint64_t)_addPodTypeTwoMediums:(id)mediums;
- (unint64_t)_addPodTypeTwoSmallsAndOneMedium:(id)medium;
- (unint64_t)addFirstPod:(id)pod;
- (unint64_t)addPod:(id)pod podType:(unint64_t)type allowAlternatePodTypeAsBackup:(BOOL)backup podsAdded:(unint64_t)added;
@end

@implementation ATXDefaultHomeScreenItemTilerPodBuilder

- (ATXDefaultHomeScreenItemTilerPodBuilder)initWithDefaultStack:(id)stack defaultWidgetsSmall:(id)small defaultWidgetsMedium:(id)medium defaultWidgetsLarge:(id)large defaultWidgetsExtraLarge:(id)extraLarge widgetFamilyMask:(unint64_t)mask targetNumberOfSuggestions:(unint64_t)suggestions
{
  stackCopy = stack;
  smallCopy = small;
  mediumCopy = medium;
  largeCopy = large;
  extraLargeCopy = extraLarge;
  v34.receiver = self;
  v34.super_class = ATXDefaultHomeScreenItemTilerPodBuilder;
  v21 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_defaultStack, stack);
    v23 = [smallCopy mutableCopy];
    defaultWidgetsSmall = v22->_defaultWidgetsSmall;
    v22->_defaultWidgetsSmall = v23;

    v25 = [mediumCopy mutableCopy];
    defaultWidgetsMedium = v22->_defaultWidgetsMedium;
    v22->_defaultWidgetsMedium = v25;

    v27 = [largeCopy mutableCopy];
    defaultWidgetsLarge = v22->_defaultWidgetsLarge;
    v22->_defaultWidgetsLarge = v27;

    v29 = [extraLargeCopy mutableCopy];
    defaultWidgetsExtraLarge = v22->_defaultWidgetsExtraLarge;
    v22->_defaultWidgetsExtraLarge = v29;

    v22->_widgetFamilyMask = mask;
    v31 = objc_opt_new();
    tilerHelper = v22->_tilerHelper;
    v22->_tilerHelper = v31;

    v22->_targetNumberOfSuggestions = suggestions;
  }

  return v22;
}

- (NSArray)tiledHomeScreenItems
{
  v2 = objc_opt_new();

  return v2;
}

- (unint64_t)addFirstPod:(id)pod
{
  podCopy = pod;
  if ((self->_widgetFamilyMask & 2) != 0 && [(ATXDefaultWidgetStack *)self->_defaultStack suggestedSize]== 1 && [(NSMutableArray *)self->_defaultWidgetsSmall count]>= 2)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsSmall];
    v7 = v6;
    if (self->_defaultStack && v5 && v6)
    {
      [podCopy addObject:?];
      [podCopy addObject:v5];
      [podCopy addObject:v7];
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

- (unint64_t)addPod:(id)pod podType:(unint64_t)type allowAlternatePodTypeAsBackup:(BOOL)backup podsAdded:(unint64_t)added
{
  backupCopy = backup;
  podCopy = pod;
  v11 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPod:podCopy podType:type podsAdded:added];
  if (!v11 && backupCopy)
  {
    v12 = 0;
    while (1)
    {
      if (type != v12)
      {
        v13 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPod:podCopy podType:v12 podsAdded:added];
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

- (unint64_t)_addPod:(id)pod podType:(unint64_t)type podsAdded:(unint64_t)added
{
  podCopy = pod;
  v9 = 0;
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeOneLarge:podCopy];
        goto LABEL_14;
      case 5uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeOneExtraLarge:podCopy podsAdded:added];
        goto LABEL_14;
      case 4uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeFourSmalls:podCopy];
        goto LABEL_14;
    }
  }

  else
  {
    switch(type)
    {
      case 0uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeOneMediumAndTwoSmalls:podCopy];
        goto LABEL_14;
      case 1uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeTwoSmallsAndOneMedium:podCopy];
        goto LABEL_14;
      case 2uLL:
        v10 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)self _addPodTypeTwoMediums:podCopy];
LABEL_14:
        v9 = v10;
        break;
    }
  }

  return v9;
}

- (unint64_t)_addPodTypeFourSmalls:(id)smalls
{
  smallsCopy = smalls;
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
    [smallsCopy addObject:v5];
    [smallsCopy addObject:v6];
    [smallsCopy addObject:v7];
    [smallsCopy addObject:v9];
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

- (unint64_t)_addPodTypeTwoMediums:(id)mediums
{
  mediumsCopy = mediums;
  if ((self->_widgetFamilyMask & 4) != 0 && [(NSMutableArray *)self->_defaultWidgetsMedium count]>= 2)
  {
    v5 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsMedium];
    v6 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsMedium];
    v7 = v6;
    if (v5 && v6)
    {
      [mediumsCopy addObject:v5];
      [mediumsCopy addObject:v7];
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

- (unint64_t)_addPodTypeOneLarge:(id)large
{
  largeCopy = large;
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
  [largeCopy addObject:v5];

  v7 = 1;
LABEL_7:

  return v7;
}

- (unint64_t)_addPodTypeOneExtraLarge:(id)large podsAdded:(unint64_t)added
{
  addedCopy = added;
  largeCopy = large;
  v7 = 0;
  if ((addedCopy & 1) == 0 && (self->_widgetFamilyMask & 0x10) != 0)
  {
    if ([(NSMutableArray *)self->_defaultWidgetsExtraLarge count])
    {
      v7 = [(ATXDefaultHomeScreenItemTilerHelper *)self->_tilerHelper filterForNextUnusedWidgetDescriptor:self->_defaultWidgetsExtraLarge];
      if (v7)
      {
        [largeCopy addObject:v7];

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

- (unint64_t)_addPodTypeOneMediumAndTwoSmalls:(id)smalls
{
  smallsCopy = smalls;
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
      [smallsCopy addObject:v5];
      [smallsCopy addObject:v6];
      [smallsCopy addObject:v8];
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

- (unint64_t)_addPodTypeTwoSmallsAndOneMedium:(id)medium
{
  mediumCopy = medium;
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
      [mediumCopy addObject:v6];
      [mediumCopy addObject:v8];
      [mediumCopy addObject:v5];
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