@interface NTKInfinityController
- (id)_listingsOfTypes:(id)types;
- (id)_nextToyboxListing;
- (id)_recentlyPlayedListings;
- (id)complicationColorForStyle:(unint64_t)style;
- (id)currentComplicationColor;
- (id)initForDevice:(id)device;
- (id)nextListing;
- (id)posterImageForStyle:(unint64_t)style;
- (unint64_t)characterFromStyle:(unint64_t)style;
- (void)invalidateCurrentListing;
- (void)invalidatePreparedListing;
- (void)prepareListing;
- (void)setStyle:(unint64_t)style;
- (void)startedPlayingListing:(id)listing;
@end

@implementation NTKInfinityController

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKInfinityController;
  v5 = [(NTKInfinityController *)&v13 init];
  if (v5)
  {
    v6 = [[NTKInfinityDataSource alloc] initForDevice:deviceCopy];
    dataSource = v5->_dataSource;
    v5->_dataSource = v6;

    v8 = +[NSMutableOrderedSet orderedSet];
    recentlyPlayedActions = v5->_recentlyPlayedActions;
    v5->_recentlyPlayedActions = v8;

    v10 = +[NSMutableOrderedSet orderedSet];
    recentlyPlayedMagicMoments = v5->_recentlyPlayedMagicMoments;
    v5->_recentlyPlayedMagicMoments = v10;

    v5->_shouldForceActionForTap = 0;
    v5->_currentCharacter = 0;
    *&v5->_controllerMode = xmmword_7D50;
  }

  return v5;
}

- (void)prepareListing
{
  if (self->_controllerMode <= 1)
  {
    _nextToyboxListing = [(NTKInfinityController *)self _nextToyboxListing];
    preparedListing = self->_preparedListing;
    self->_preparedListing = _nextToyboxListing;

    _objc_release_x1();
  }
}

- (id)nextListing
{
  preparedListing = self->_preparedListing;
  if (preparedListing)
  {
    _nextToyboxListing = preparedListing;
  }

  else
  {
    _nextToyboxListing = [(NTKInfinityController *)self _nextToyboxListing];
  }

  v5 = _nextToyboxListing;
  v6 = self->_preparedListing;
  self->_preparedListing = 0;

  objc_storeStrong(&self->_currentListing, v5);

  return v5;
}

- (id)_nextToyboxListing
{
  currentListing = self->_currentListing;
  v4 = _NTKLoggingObjectForDomain();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!currentListing)
  {
    if (v5)
    {
      sub_58A4();
    }

    if (arc4random_uniform(5u) && !self->_shouldForceActionForTap)
    {
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_5924();
      }

      v8 = &off_CF10;
    }

    else
    {
      self->_shouldForceActionForTap = 0;
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_59B0();
      }

      v8 = &off_CEF8;
    }

    goto LABEL_22;
  }

  if (v5)
  {
    sub_5724();
  }

  type = [(NTKInfinityListing *)self->_currentListing type];
  if (type - 2 < 3)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_57A4();
    }

    v8 = &__NSArray0__struct;
LABEL_22:

    goto LABEL_23;
  }

  if (type <= 1)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_5824();
    }

    v8 = &off_CF28;
    goto LABEL_22;
  }

  v8 = 0;
LABEL_23:
  v9 = [(NTKInfinityController *)self _listingsOfTypes:v8];
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_5A3C();
  }

  if ([v9 count])
  {
    v11 = [v9 objectAtIndex:{arc4random_uniform(objc_msgSend(v9, "count"))}];
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_5ABC();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_listingsOfTypes:(id)types
{
  typesCopy = types;
  controllerMode = self->_controllerMode;
  if (controllerMode == 1)
  {
    dataSource = self->_dataSource;
    currentCharacter = self->_currentCharacter;
    attributes = [(NTKInfinityListing *)self->_currentListing attributes];
    v9 = [(NTKInfinityDataSource *)dataSource listingsForCharacter:currentCharacter ofTypes:typesCopy withAttributes:attributes recentlyUsed:&__NSArray0__struct];
    goto LABEL_5;
  }

  if (!controllerMode)
  {
    v6 = self->_dataSource;
    attributes = [(NTKInfinityListing *)self->_currentListing attributes];
    _recentlyPlayedListings = [(NTKInfinityController *)self _recentlyPlayedListings];
    v9 = [(NTKInfinityDataSource *)v6 listingsOfTypes:typesCopy withAttributes:attributes recentlyUsed:_recentlyPlayedListings];

LABEL_5:
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_recentlyPlayedListings
{
  v3 = +[NSMutableArray array];
  array = [(NSMutableOrderedSet *)self->_recentlyPlayedMagicMoments array];
  [v3 addObjectsFromArray:array];

  array2 = [(NSMutableOrderedSet *)self->_recentlyPlayedActions array];
  [v3 addObjectsFromArray:array2];

  return v3;
}

- (void)invalidateCurrentListing
{
  currentListing = self->_currentListing;
  self->_currentListing = 0;
  _objc_release_x1();
}

- (void)invalidatePreparedListing
{
  preparedListing = self->_preparedListing;
  self->_preparedListing = 0;
  _objc_release_x1();
}

- (void)startedPlayingListing:(id)listing
{
  listingCopy = listing;
  v5 = listingCopy;
  if (!self->_controllerMode)
  {
    v9 = listingCopy;
    listingCopy = [listingCopy type];
    if (listingCopy - 1 >= 3)
    {
      v5 = v9;
      if (listingCopy != &dword_4)
      {
        goto LABEL_2;
      }

      p_recentlyPlayedMagicMoments = &self->_recentlyPlayedMagicMoments;
      [(NSMutableOrderedSet *)self->_recentlyPlayedMagicMoments addObject:v9];
      v8 = [(NSMutableOrderedSet *)self->_recentlyPlayedMagicMoments count];
      listingCopy = [(NTKInfinityController *)self _maxRecentlyPlayedMagicMoments];
      v5 = v9;
      if (v8 < listingCopy)
      {
        goto LABEL_2;
      }
    }

    else
    {
      p_recentlyPlayedMagicMoments = &self->_recentlyPlayedActions;
      [(NSMutableOrderedSet *)self->_recentlyPlayedActions addObject:v9];
      v7 = [(NSMutableOrderedSet *)self->_recentlyPlayedActions count];
      listingCopy = [(NTKInfinityController *)self _maxRecentlyPlayedActions];
      v5 = v9;
      if (v7 < listingCopy)
      {
        goto LABEL_2;
      }
    }

    listingCopy = [(NSMutableOrderedSet *)*p_recentlyPlayedMagicMoments removeObjectAtIndex:0];
    v5 = v9;
  }

LABEL_2:

  _objc_release_x1(listingCopy, v5);
}

- (void)setStyle:(unint64_t)style
{
  self->_currentCharacter = [(NTKInfinityController *)self characterFromStyle:?];
  v5 = [(NTKInfinityController *)self _modeFromStyle:style];
  if (self->_controllerMode != v5)
  {
    currentStyle = self->_currentStyle;
    self->_controllerMode = v5;
    self->_currentStyle = style;
    if (currentStyle == style || v5 == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = self->_currentStyle;
  self->_currentStyle = style;
  if (v6 == style)
  {
    return;
  }

  if (v5)
  {
LABEL_8:
    [(NSMutableOrderedSet *)self->_recentlyPlayedActions removeAllObjects];
    [(NSMutableOrderedSet *)self->_recentlyPlayedMagicMoments removeAllObjects];
  }

LABEL_9:

  [(NTKInfinityController *)self invalidateCurrentListing];
}

- (id)posterImageForStyle:(unint64_t)style
{
  if (style > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *(&off_C588 + style);
    v5 = NTKImageNamedFromAssetsBundle();
  }

  return v5;
}

- (id)currentComplicationColor
{
  attributes = [(NTKInfinityListing *)self->_currentListing attributes];
  v4 = [attributes colorForKey:@"color"];
  v5 = v4;
  if (v4)
  {
    currentStyleComplicationColor = v4;
  }

  else
  {
    currentStyleComplicationColor = [(NTKInfinityController *)self currentStyleComplicationColor];
  }

  v7 = currentStyleComplicationColor;

  return v7;
}

- (id)complicationColorForStyle:(unint64_t)style
{
  if (style > 1)
  {
    if (style == 2)
    {
      self = +[NTKInfinityDataSource woodyColor];
    }

    else if (style == 3)
    {
      self = +[NTKInfinityDataSource jessieColor];
    }
  }

  else if (style)
  {
    if (style == 1)
    {
      self = +[NTKInfinityDataSource buzzColor];
    }
  }

  else
  {
    self = _toyboxComplicationColor();
  }

  return self;
}

- (unint64_t)characterFromStyle:(unint64_t)style
{
  if (style == 3)
  {
    return 2;
  }

  else
  {
    return style == 2;
  }
}

@end