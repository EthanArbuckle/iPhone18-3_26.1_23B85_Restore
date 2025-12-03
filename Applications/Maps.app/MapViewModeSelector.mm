@interface MapViewModeSelector
- (BOOL)updateSegmentsIfNeededToFitWidth:(double)width;
- (MapViewModeSelector)initWithDesiredViewModes:(id)modes;
- (NSArray)orderedViewModes;
- (int64_t)selectedViewMode;
- (void)setSelectedViewMode:(int64_t)mode;
@end

@implementation MapViewModeSelector

- (BOOL)updateSegmentsIfNeededToFitWidth:(double)width
{
  if (width <= 0.0)
  {
    lastLayoutWidthFits = 0;
  }

  else if (self->_lastLayoutWidth == width)
  {
    lastLayoutWidthFits = self->_lastLayoutWidthFits;
  }

  else
  {
    self->_lastLayoutWidth = width;
    [(MapViewModeSelector *)self setApportionsSegmentWidthsByContent:0];
    v6 = [(MapViewModeSelector *)self _maps_testFitSegmentTitlesToWidth:width];
    self->_lastLayoutWidthFits = v6;
    if (v6)
    {
      lastLayoutWidthFits = 1;
    }

    else
    {
      [(MapViewModeSelector *)self setApportionsSegmentWidthsByContent:1];
      lastLayoutWidthFits = [(MapViewModeSelector *)self _maps_testFitSegmentTitlesToWidth:width];
      self->_lastLayoutWidthFits = lastLayoutWidthFits;
    }
  }

  return lastLayoutWidthFits & 1;
}

- (void)setSelectedViewMode:(int64_t)mode
{
  if (mode > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_101215550[mode];
  }

  if (((v4 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  orderedViewModes = [(MapViewModeSelector *)self orderedViewModes];
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [orderedViewModes indexOfObject:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  [(MapViewModeSelector *)self setSelectedSegmentIndex:v9];
}

- (int64_t)selectedViewMode
{
  selectedSegmentIndex = [(MapViewModeSelector *)self selectedSegmentIndex];
  if (selectedSegmentIndex > 0x7FFFFFFFFFFFFFFELL)
  {
    return -1;
  }

  v4 = selectedSegmentIndex;
  orderedViewModes = [(MapViewModeSelector *)self orderedViewModes];
  v6 = [orderedViewModes count];

  if (v4 >= v6)
  {
    return -1;
  }

  orderedViewModes2 = [(MapViewModeSelector *)self orderedViewModes];
  v8 = [orderedViewModes2 objectAtIndexedSubscript:v4];
  integerValue = [v8 integerValue];

  return integerValue;
}

- (NSArray)orderedViewModes
{
  orderedViewModes = self->_orderedViewModes;
  if (!orderedViewModes)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_desiredViewModes;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          integerValue = [v10 integerValue];
          if (integerValue <= 7 && integerValue != 4)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
    v14 = self->_orderedViewModes;
    self->_orderedViewModes = v13;

    orderedViewModes = self->_orderedViewModes;
  }

  return orderedViewModes;
}

- (MapViewModeSelector)initWithDesiredViewModes:(id)modes
{
  modesCopy = modes;
  v21.receiver = self;
  v21.super_class = MapViewModeSelector;
  v6 = [(MapViewModeSelector *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_desiredViewModes, modes);
    orderedViewModes = [(MapViewModeSelector *)v7 orderedViewModes];
    v20 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = orderedViewModes;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          integerValue = [*(*(&v22 + 1) + 8 * i) integerValue];
          if (integerValue <= 7 && ((0xEFu >> integerValue) & 1) != 0)
          {
            v15 = *(&off_1016270F8 + integerValue);
            v16 = +[NSBundle mainBundle];
            v17 = [v16 localizedStringForKey:v15 value:@"localized string not found" table:0];

            if (v17)
            {
              [v20 addObject:v17];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v18 = [v20 copy];
    [(MapViewModeSelector *)v7 _maps_setItems:v18];
  }

  return v7;
}

@end