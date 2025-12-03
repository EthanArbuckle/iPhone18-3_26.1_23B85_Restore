@interface TransitDirectionsListItem
+ (int64_t)defaultInstructionContextForItemType:(int64_t)type forGuidance:(BOOL)guidance;
- ($873BFAB23BBB6E2F0B0288ED2F935688)displayedMapRect;
- (GEOComposedRouteStep)matchingRouteStep;
- (NSArray)composedRouteStepsDisplayedOnMap;
- (NSArray)subItems;
- (TransitDirectionsListItem)initWithInstructions:(id)instructions;
- (TransitDirectionsListItem)nextItem;
- (TransitDirectionsListItem)parentItem;
- (TransitDirectionsListItem)previousItem;
- (UIColor)alternateFromLineColor;
- (UIColor)alternateToLineColor;
- (double)lineWidthForView:(id)view;
- (id)_itemAfterSubItem:(id)item;
- (id)_itemBeforeSubItem:(id)item;
- (id)_subItemsForCurrentState;
- (id)description;
- (id)formattedStringsForType:(int64_t)type;
- (unint64_t)matchingRouteStepIndex;
- (void)_invalidateSubItems;
- (void)_rebuildSubItems;
- (void)setFooterItems:(id)items;
- (void)setPostTertiaryItems:(id)items;
@end

@implementation TransitDirectionsListItem

- (TransitDirectionsListItem)parentItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentItem);

  return WeakRetained;
}

- (double)lineWidthForView:(id)view
{
  viewCopy = view;
  traitCollection = [viewCopy traitCollection];
  v5 = 5.0;
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    traitCollection2 = [viewCopy traitCollection];
    [traitCollection2 displayScale];
    if (v7)
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }

    v5 = v8;
  }

  return v5;
}

- (UIColor)alternateToLineColor
{
  v3 = self->_alternateToLineColor;
  if (!v3)
  {
    v3 = self->_toLineColor;
  }

  return v3;
}

- (UIColor)alternateFromLineColor
{
  v3 = self->_alternateFromLineColor;
  if (!v3)
  {
    v3 = self->_fromLineColor;
  }

  return v3;
}

- (NSArray)composedRouteStepsDisplayedOnMap
{
  composedRouteStepsDisplayedOnMap = self->_composedRouteStepsDisplayedOnMap;
  if (!composedRouteStepsDisplayedOnMap)
  {
    v4 = [(NSArray *)self->_composedRouteSteps copy];
    v5 = self->_composedRouteStepsDisplayedOnMap;
    self->_composedRouteStepsDisplayedOnMap = v4;

    composedRouteStepsDisplayedOnMap = self->_composedRouteStepsDisplayedOnMap;
  }

  return composedRouteStepsDisplayedOnMap;
}

- (id)_subItemsForCurrentState
{
  if ([(TransitDirectionsListItem *)self conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
  {
    selfCopy = self;
    subItems = [(TransitDirectionsListItem *)selfCopy subItemsWithForceExpand:[(TransitDirectionsListItem *)selfCopy expanded]];
  }

  else
  {
    subItems = [(TransitDirectionsListItem *)self subItems];
  }

  return subItems;
}

- (id)_itemAfterSubItem:(id)item
{
  itemCopy = item;
  if (itemCopy == self)
  {
    nextItem = [(TransitDirectionsListItem *)self nextItem];
  }

  else
  {
    _subItemsForCurrentState = [(TransitDirectionsListItem *)self _subItemsForCurrentState];
    v6 = [_subItemsForCurrentState indexOfObject:itemCopy];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      nextItem = 0;
    }

    else
    {
      v8 = v6 + 1;
      if (v6 + 1 == [_subItemsForCurrentState count])
      {
        WeakRetained = objc_loadWeakRetained(&self->_nextItem);
      }

      else
      {
        WeakRetained = [_subItemsForCurrentState objectAtIndexedSubscript:v8];
      }

      nextItem = WeakRetained;
    }
  }

  return nextItem;
}

- (id)_itemBeforeSubItem:(id)item
{
  itemCopy = item;
  if (itemCopy == self)
  {
    previousItem = [(TransitDirectionsListItem *)self previousItem];
  }

  else
  {
    _subItemsForCurrentState = [(TransitDirectionsListItem *)self _subItemsForCurrentState];
    v6 = [_subItemsForCurrentState indexOfObject:itemCopy];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      previousItem = 0;
    }

    else
    {
      if (v6)
      {
        selfCopy = [_subItemsForCurrentState objectAtIndexedSubscript:v6 - 1];
      }

      else
      {
        selfCopy = self;
      }

      previousItem = selfCopy;
    }
  }

  return previousItem;
}

- (TransitDirectionsListItem)previousItem
{
  WeakRetained = objc_loadWeakRetained(&self->_previousItem);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    parentItem = [(TransitDirectionsListItem *)self parentItem];
    v5 = [parentItem _itemBeforeSubItem:self];
  }

  return v5;
}

- (TransitDirectionsListItem)nextItem
{
  _subItemsForCurrentState = [(TransitDirectionsListItem *)self _subItemsForCurrentState];
  if ([_subItemsForCurrentState count])
  {
    firstObject = [_subItemsForCurrentState firstObject];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_nextItem);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      firstObject = WeakRetained;
    }

    else
    {
      parentItem = [(TransitDirectionsListItem *)self parentItem];
      firstObject = [parentItem _itemAfterSubItem:self];
    }
  }

  return firstObject;
}

- (void)_invalidateSubItems
{
  subItems = self->_subItems;
  self->_subItems = 0;

  subItemsExpanded = self->_subItemsExpanded;
  self->_subItemsExpanded = 0;
}

- (void)_rebuildSubItems
{
  v3 = [NSMutableArray arrayWithArray:self->_postTertiaryItems];
  [(NSArray *)v3 addObjectsFromArray:self->_footerItems];
  subItems = self->_subItems;
  self->_subItems = v3;
}

- (void)setFooterItems:(id)items
{
  v4 = [items copy];
  footerItems = self->_footerItems;
  self->_footerItems = v4;

  [(TransitDirectionsListItem *)self _invalidateSubItems];
}

- (void)setPostTertiaryItems:(id)items
{
  v4 = [items copy];
  postTertiaryItems = self->_postTertiaryItems;
  self->_postTertiaryItems = v4;

  [(TransitDirectionsListItem *)self _invalidateSubItems];
}

- (NSArray)subItems
{
  subItems = self->_subItems;
  if (!subItems)
  {
    [(TransitDirectionsListItem *)self _rebuildSubItems];
    subItems = self->_subItems;
  }

  return subItems;
}

- (id)formattedStringsForType:(int64_t)type
{
  v4 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_18;
      }

      minorFormattedStrings = [(TransitDirectionsListItem *)self minorFormattedStrings];
    }

    else
    {
      minorFormattedStrings = [(TransitDirectionsListItem *)self majorFormattedStrings];
    }

    goto LABEL_15;
  }

  if (type == 2)
  {
    minorFormattedStrings = [(TransitDirectionsListItem *)self tertiaryFormattedStrings];
LABEL_15:
    v4 = minorFormattedStrings;
    goto LABEL_18;
  }

  if (type == 3)
  {
    primaryAccessoryString = [(TransitDirectionsListItem *)self primaryAccessoryString];
    if (primaryAccessoryString)
    {
      primaryAccessoryString2 = [(TransitDirectionsListItem *)self primaryAccessoryString];
      v11 = primaryAccessoryString2;
      v7 = &v11;
      goto LABEL_13;
    }

LABEL_16:
    v4 = 0;
    goto LABEL_17;
  }

  if (type != 4)
  {
    goto LABEL_18;
  }

  primaryAccessoryString = [(TransitDirectionsListItem *)self secondaryAccessoryString];
  if (!primaryAccessoryString)
  {
    goto LABEL_16;
  }

  primaryAccessoryString2 = [(TransitDirectionsListItem *)self secondaryAccessoryString];
  v10 = primaryAccessoryString2;
  v7 = &v10;
LABEL_13:
  v4 = [NSArray arrayWithObjects:v7 count:1];

LABEL_17:
LABEL_18:

  return v4;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)displayedMapRect
{
  x = MKMapRectNull.origin.x;
  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  composedRouteStepsDisplayedOnMap = [(TransitDirectionsListItem *)self composedRouteStepsDisplayedOnMap];
  v7 = [composedRouteStepsDisplayedOnMap countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(composedRouteStepsDisplayedOnMap);
        }

        [*(*(&v19 + 1) + 8 * v10) mapRectAroundStartCoordinate];
        v27.origin.x = v11;
        v27.origin.y = v12;
        v27.size.width = v13;
        v27.size.height = v14;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = MKMapRectUnion(v24, v27);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [composedRouteStepsDisplayedOnMap countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.var1.var1 = v18;
  result.var1.var0 = v17;
  result.var0.var1 = v16;
  result.var0.var0 = v15;
  return result;
}

- (GEOComposedRouteStep)matchingRouteStep
{
  composedRouteSteps = [(TransitDirectionsListItem *)self composedRouteSteps];
  firstObject = [composedRouteSteps firstObject];

  type = [(TransitDirectionsListItem *)self type];
  if (type <= 4)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        subItems = [(TransitDirectionsListItem *)self subItems];
        v7 = [subItems countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v31;
          while (2)
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v31 != v9)
              {
                objc_enumerationMutation(subItems);
              }

              v11 = *(*(&v30 + 1) + 8 * i);
              if ([v11 type] == 10)
              {
                matchingRouteStep = [v11 matchingRouteStep];
LABEL_32:
                v24 = matchingRouteStep;

                firstObject = v24;
                goto LABEL_33;
              }
            }

            v8 = [subItems countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_33;
      }

      goto LABEL_28;
    }

LABEL_17:
    composedRouteSteps2 = [(TransitDirectionsListItem *)self composedRouteSteps];
    lastObject = [composedRouteSteps2 lastObject];

    firstObject = lastObject;
    goto LABEL_34;
  }

  switch(type)
  {
    case 5:
      goto LABEL_17;
    case 8:
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      subItems = [(TransitDirectionsListItem *)self composedRouteSteps];
      v14 = [subItems countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        while (2)
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(subItems);
            }

            v18 = *(*(&v26 + 1) + 8 * j);
            transitStep = [v18 transitStep];
            maneuverType = [transitStep maneuverType];

            if (maneuverType != 6)
            {
              transitStep2 = [v18 transitStep];
              maneuverType2 = [transitStep2 maneuverType];

              if (maneuverType2 != 3)
              {
                continue;
              }
            }

            matchingRouteStep = v18;
            goto LABEL_32;
          }

          v15 = [subItems countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_33;
    case 11:
      goto LABEL_17;
  }

LABEL_28:
  if (firstObject)
  {
    goto LABEL_34;
  }

  subItems = [(TransitDirectionsListItem *)self parentItem];
  firstObject = [subItems matchingRouteStep];
LABEL_33:

LABEL_34:

  return firstObject;
}

- (unint64_t)matchingRouteStepIndex
{
  matchingRouteStep = [(TransitDirectionsListItem *)self matchingRouteStep];
  v3 = matchingRouteStep;
  if (matchingRouteStep)
  {
    stepIndex = [matchingRouteStep stepIndex];
  }

  else
  {
    stepIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return stepIndex;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v25.receiver = self;
  v25.super_class = TransitDirectionsListItem;
  v4 = [(TransitDirectionsListItem *)&v25 description];
  v5 = [v3 initWithString:v4];

  type = [(TransitDirectionsListItem *)self type];
  if (type >= 0x12)
  {
    v7 = [NSString stringWithFormat:@"Unknown (%ld)", type];
  }

  else
  {
    v7 = off_101654298[type];
  }

  [v5 appendFormat:@" %@", v7];

  majorFormattedStrings = [(TransitDirectionsListItem *)self majorFormattedStrings];
  v9 = [majorFormattedStrings count];

  if (v9)
  {
    majorFormattedStrings2 = [(TransitDirectionsListItem *)self majorFormattedStrings];
    firstObject = [majorFormattedStrings2 firstObject];
    stringWithDefaultOptions = [firstObject stringWithDefaultOptions];
    [v5 appendFormat:@" | %@", stringWithDefaultOptions];
  }

  minorFormattedStrings = [(TransitDirectionsListItem *)self minorFormattedStrings];
  v14 = [minorFormattedStrings count];

  if (v14)
  {
    minorFormattedStrings2 = [(TransitDirectionsListItem *)self minorFormattedStrings];
    firstObject2 = [minorFormattedStrings2 firstObject];
    stringWithDefaultOptions2 = [firstObject2 stringWithDefaultOptions];
    [v5 appendFormat:@" | %@", stringWithDefaultOptions2];
  }

  tertiaryFormattedStrings = [(TransitDirectionsListItem *)self tertiaryFormattedStrings];
  v19 = [tertiaryFormattedStrings count];

  if (v19)
  {
    tertiaryFormattedStrings2 = [(TransitDirectionsListItem *)self tertiaryFormattedStrings];
    firstObject3 = [tertiaryFormattedStrings2 firstObject];
    stringWithDefaultOptions3 = [firstObject3 stringWithDefaultOptions];
    [v5 appendFormat:@" | %@", stringWithDefaultOptions3];
  }

  v23 = [v5 copy];

  return v23;
}

- (TransitDirectionsListItem)initWithInstructions:(id)instructions
{
  instructionsCopy = instructions;
  v21.receiver = self;
  v21.super_class = TransitDirectionsListItem;
  v6 = [(TransitDirectionsListItem *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitInstruction, instructions);
    majorInstructionStrings = [(MNTransitInstruction *)v7->_transitInstruction majorInstructionStrings];
    majorFormattedStrings = v7->_majorFormattedStrings;
    v7->_majorFormattedStrings = majorInstructionStrings;

    minorInstructionStrings = [(MNTransitInstruction *)v7->_transitInstruction minorInstructionStrings];
    minorFormattedStrings = v7->_minorFormattedStrings;
    v7->_minorFormattedStrings = minorInstructionStrings;

    tertiaryInstructionStrings = [(MNTransitInstruction *)v7->_transitInstruction tertiaryInstructionStrings];
    tertiaryFormattedStrings = v7->_tertiaryFormattedStrings;
    v7->_tertiaryFormattedStrings = tertiaryInstructionStrings;

    v14 = +[GEOPlatform sharedPlatform];
    if ([v14 isInternalInstall])
    {
      v15 = +[NSUserDefaults standardUserDefaults];
      v16 = [v15 BOOLForKey:@"__internal__EnableTransitDebugLocalInstruction"];

      if (!instructionsCopy || !v16 || [(NSArray *)v7->_majorFormattedStrings count]|| [(NSArray *)v7->_minorFormattedStrings count]|| [(NSArray *)v7->_tertiaryFormattedStrings count])
      {
        goto LABEL_10;
      }

      v14 = [[GEOComposedString alloc] initWithString:@"Missing Instructions"];
      v22 = v14;
      v17 = [NSArray arrayWithObjects:&v22 count:1];
      v18 = v7->_majorFormattedStrings;
      v7->_majorFormattedStrings = v17;
    }

LABEL_10:
    v19 = v7;
  }

  return v7;
}

+ (int64_t)defaultInstructionContextForItemType:(int64_t)type forGuidance:(BOOL)guidance
{
  v4 = 1;
  if (!guidance)
  {
    v4 = 2;
  }

  if (((1 << type) & 0x3E2DF) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (type <= 0x11)
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

@end