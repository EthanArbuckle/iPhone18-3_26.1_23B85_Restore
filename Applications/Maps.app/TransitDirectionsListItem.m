@interface TransitDirectionsListItem
+ (int64_t)defaultInstructionContextForItemType:(int64_t)a3 forGuidance:(BOOL)a4;
- ($873BFAB23BBB6E2F0B0288ED2F935688)displayedMapRect;
- (GEOComposedRouteStep)matchingRouteStep;
- (NSArray)composedRouteStepsDisplayedOnMap;
- (NSArray)subItems;
- (TransitDirectionsListItem)initWithInstructions:(id)a3;
- (TransitDirectionsListItem)nextItem;
- (TransitDirectionsListItem)parentItem;
- (TransitDirectionsListItem)previousItem;
- (UIColor)alternateFromLineColor;
- (UIColor)alternateToLineColor;
- (double)lineWidthForView:(id)a3;
- (id)_itemAfterSubItem:(id)a3;
- (id)_itemBeforeSubItem:(id)a3;
- (id)_subItemsForCurrentState;
- (id)description;
- (id)formattedStringsForType:(int64_t)a3;
- (unint64_t)matchingRouteStepIndex;
- (void)_invalidateSubItems;
- (void)_rebuildSubItems;
- (void)setFooterItems:(id)a3;
- (void)setPostTertiaryItems:(id)a3;
@end

@implementation TransitDirectionsListItem

- (TransitDirectionsListItem)parentItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentItem);

  return WeakRetained;
}

- (double)lineWidthForView:(id)a3
{
  v3 = a3;
  v4 = [v3 traitCollection];
  v5 = 5.0;
  if ([v4 userInterfaceIdiom] == 5)
  {
    v6 = [v3 traitCollection];
    [v6 displayScale];
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
    v3 = self;
    v4 = [(TransitDirectionsListItem *)v3 subItemsWithForceExpand:[(TransitDirectionsListItem *)v3 expanded]];
  }

  else
  {
    v4 = [(TransitDirectionsListItem *)self subItems];
  }

  return v4;
}

- (id)_itemAfterSubItem:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = [(TransitDirectionsListItem *)self nextItem];
  }

  else
  {
    v5 = [(TransitDirectionsListItem *)self _subItemsForCurrentState];
    v6 = [v5 indexOfObject:v4];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v8 = v6 + 1;
      if (v6 + 1 == [v5 count])
      {
        WeakRetained = objc_loadWeakRetained(&self->_nextItem);
      }

      else
      {
        WeakRetained = [v5 objectAtIndexedSubscript:v8];
      }

      v7 = WeakRetained;
    }
  }

  return v7;
}

- (id)_itemBeforeSubItem:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = [(TransitDirectionsListItem *)self previousItem];
  }

  else
  {
    v5 = [(TransitDirectionsListItem *)self _subItemsForCurrentState];
    v6 = [v5 indexOfObject:v4];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      if (v6)
      {
        v7 = [v5 objectAtIndexedSubscript:v6 - 1];
      }

      else
      {
        v7 = self;
      }

      v8 = v7;
    }
  }

  return v8;
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
    v6 = [(TransitDirectionsListItem *)self parentItem];
    v5 = [v6 _itemBeforeSubItem:self];
  }

  return v5;
}

- (TransitDirectionsListItem)nextItem
{
  v3 = [(TransitDirectionsListItem *)self _subItemsForCurrentState];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_nextItem);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v4 = WeakRetained;
    }

    else
    {
      v7 = [(TransitDirectionsListItem *)self parentItem];
      v4 = [v7 _itemAfterSubItem:self];
    }
  }

  return v4;
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

- (void)setFooterItems:(id)a3
{
  v4 = [a3 copy];
  footerItems = self->_footerItems;
  self->_footerItems = v4;

  [(TransitDirectionsListItem *)self _invalidateSubItems];
}

- (void)setPostTertiaryItems:(id)a3
{
  v4 = [a3 copy];
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

- (id)formattedStringsForType:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_18;
      }

      v8 = [(TransitDirectionsListItem *)self minorFormattedStrings];
    }

    else
    {
      v8 = [(TransitDirectionsListItem *)self majorFormattedStrings];
    }

    goto LABEL_15;
  }

  if (a3 == 2)
  {
    v8 = [(TransitDirectionsListItem *)self tertiaryFormattedStrings];
LABEL_15:
    v4 = v8;
    goto LABEL_18;
  }

  if (a3 == 3)
  {
    v5 = [(TransitDirectionsListItem *)self primaryAccessoryString];
    if (v5)
    {
      v6 = [(TransitDirectionsListItem *)self primaryAccessoryString];
      v11 = v6;
      v7 = &v11;
      goto LABEL_13;
    }

LABEL_16:
    v4 = 0;
    goto LABEL_17;
  }

  if (a3 != 4)
  {
    goto LABEL_18;
  }

  v5 = [(TransitDirectionsListItem *)self secondaryAccessoryString];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [(TransitDirectionsListItem *)self secondaryAccessoryString];
  v10 = v6;
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
  v6 = [(TransitDirectionsListItem *)self composedRouteStepsDisplayedOnMap];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
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
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v3 = [(TransitDirectionsListItem *)self composedRouteSteps];
  v4 = [v3 firstObject];

  v5 = [(TransitDirectionsListItem *)self type];
  if (v5 <= 4)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v6 = [(TransitDirectionsListItem *)self subItems];
        v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v30 + 1) + 8 * i);
              if ([v11 type] == 10)
              {
                v23 = [v11 matchingRouteStep];
LABEL_32:
                v24 = v23;

                v4 = v24;
                goto LABEL_33;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
    v12 = [(TransitDirectionsListItem *)self composedRouteSteps];
    v13 = [v12 lastObject];

    v4 = v13;
    goto LABEL_34;
  }

  switch(v5)
  {
    case 5:
      goto LABEL_17;
    case 8:
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v6 = [(TransitDirectionsListItem *)self composedRouteSteps];
      v14 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
              objc_enumerationMutation(v6);
            }

            v18 = *(*(&v26 + 1) + 8 * j);
            v19 = [v18 transitStep];
            v20 = [v19 maneuverType];

            if (v20 != 6)
            {
              v21 = [v18 transitStep];
              v22 = [v21 maneuverType];

              if (v22 != 3)
              {
                continue;
              }
            }

            v23 = v18;
            goto LABEL_32;
          }

          v15 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
  if (v4)
  {
    goto LABEL_34;
  }

  v6 = [(TransitDirectionsListItem *)self parentItem];
  v4 = [v6 matchingRouteStep];
LABEL_33:

LABEL_34:

  return v4;
}

- (unint64_t)matchingRouteStepIndex
{
  v2 = [(TransitDirectionsListItem *)self matchingRouteStep];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stepIndex];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v25.receiver = self;
  v25.super_class = TransitDirectionsListItem;
  v4 = [(TransitDirectionsListItem *)&v25 description];
  v5 = [v3 initWithString:v4];

  v6 = [(TransitDirectionsListItem *)self type];
  if (v6 >= 0x12)
  {
    v7 = [NSString stringWithFormat:@"Unknown (%ld)", v6];
  }

  else
  {
    v7 = off_101654298[v6];
  }

  [v5 appendFormat:@" %@", v7];

  v8 = [(TransitDirectionsListItem *)self majorFormattedStrings];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(TransitDirectionsListItem *)self majorFormattedStrings];
    v11 = [v10 firstObject];
    v12 = [v11 stringWithDefaultOptions];
    [v5 appendFormat:@" | %@", v12];
  }

  v13 = [(TransitDirectionsListItem *)self minorFormattedStrings];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(TransitDirectionsListItem *)self minorFormattedStrings];
    v16 = [v15 firstObject];
    v17 = [v16 stringWithDefaultOptions];
    [v5 appendFormat:@" | %@", v17];
  }

  v18 = [(TransitDirectionsListItem *)self tertiaryFormattedStrings];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(TransitDirectionsListItem *)self tertiaryFormattedStrings];
    v21 = [v20 firstObject];
    v22 = [v21 stringWithDefaultOptions];
    [v5 appendFormat:@" | %@", v22];
  }

  v23 = [v5 copy];

  return v23;
}

- (TransitDirectionsListItem)initWithInstructions:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = TransitDirectionsListItem;
  v6 = [(TransitDirectionsListItem *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitInstruction, a3);
    v8 = [(MNTransitInstruction *)v7->_transitInstruction majorInstructionStrings];
    majorFormattedStrings = v7->_majorFormattedStrings;
    v7->_majorFormattedStrings = v8;

    v10 = [(MNTransitInstruction *)v7->_transitInstruction minorInstructionStrings];
    minorFormattedStrings = v7->_minorFormattedStrings;
    v7->_minorFormattedStrings = v10;

    v12 = [(MNTransitInstruction *)v7->_transitInstruction tertiaryInstructionStrings];
    tertiaryFormattedStrings = v7->_tertiaryFormattedStrings;
    v7->_tertiaryFormattedStrings = v12;

    v14 = +[GEOPlatform sharedPlatform];
    if ([v14 isInternalInstall])
    {
      v15 = +[NSUserDefaults standardUserDefaults];
      v16 = [v15 BOOLForKey:@"__internal__EnableTransitDebugLocalInstruction"];

      if (!v5 || !v16 || [(NSArray *)v7->_majorFormattedStrings count]|| [(NSArray *)v7->_minorFormattedStrings count]|| [(NSArray *)v7->_tertiaryFormattedStrings count])
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

+ (int64_t)defaultInstructionContextForItemType:(int64_t)a3 forGuidance:(BOOL)a4
{
  v4 = 1;
  if (!a4)
  {
    v4 = 2;
  }

  if (((1 << a3) & 0x3E2DF) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (a3 <= 0x11)
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

@end