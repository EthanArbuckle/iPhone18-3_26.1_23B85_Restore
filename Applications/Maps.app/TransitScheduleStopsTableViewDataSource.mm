@interface TransitScheduleStopsTableViewDataSource
+ (void)registerCellsForCollectionView:(id)view;
- (BOOL)_hasVehicleDepartedStation;
- (NSArray)stopIdentifiers;
- (TransitScheduleStopsTableViewDataSource)initWithBoardingStopMuid:(unint64_t)muid alightStopMuid:(unint64_t)stopMuid alightHallMuid:(unint64_t)hallMuid alightStationMuid:(unint64_t)stationMuid transitLine:(id)line referenceDate:(id)date;
- (TransitScheduleStopsTableViewDataSource)initWithBoardingStopMuid:(unint64_t)muid transitLine:(id)line referenceDate:(id)date;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)stopItemAtIndex:(unint64_t)index;
- (unint64_t)_linkColorTypeForStopAtIndex:(unint64_t)index;
- (void)_adjustIndexesForCollapsedStopsBeforeBoardingIndex:(unint64_t)index;
- (void)_updatePastDepartureAndVehicleIndexes;
- (void)buildTransitTripStopItemsWithTransitStops:(id)stops boardingStopDepartureDate:(id)date maintainingCollapsedState:(BOOL)state;
- (void)removeAllStops;
- (void)setReferenceDate:(id)date dataSource:(id)source;
@end

@implementation TransitScheduleStopsTableViewDataSource

- (unint64_t)_linkColorTypeForStopAtIndex:(unint64_t)index
{
  boardingStopItemIndex = self->_boardingStopItemIndex;
  if (boardingStopItemIndex != 0x7FFFFFFFFFFFFFFFLL && boardingStopItemIndex > index)
  {
    return 2;
  }

  mostRecentPastDepartureStopItemIndex = self->_mostRecentPastDepartureStopItemIndex;
  if (mostRecentPastDepartureStopItemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    if (boardingStopItemIndex == index)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  if (self->_vehicleStopItemIndex != index)
  {
    if (mostRecentPastDepartureStopItemIndex < index)
    {
      if (mostRecentPastDepartureStopItemIndex + 1 == index)
      {
        return 3;
      }

      goto LABEL_6;
    }

    return 2;
  }

  if ([(TransitScheduleStopsTableViewDataSource *)self _hasVehicleDepartedStation:v3])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BOOL)_hasVehicleDepartedStation
{
  v3 = [(NSArray *)self->_transitTripStopItems objectAtIndexedSubscript:self->_vehicleStopItemIndex];
  transitTripStop = [v3 transitTripStop];
  departure = [transitTripStop departure];

  departureDate = [departure departureDate];

  if (departureDate)
  {
    v7 = [departure isPastDepartureRelativeToDate:self->_referenceDate usingGracePeriod:1];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  pathCopy = path;
  viewCopy = view;
  v9 = [pathCopy row];
  transitTripStopItems = [(TransitScheduleStopsTableViewDataSource *)self transitTripStopItems];
  v11 = [transitTripStopItems objectAtIndexedSubscript:v9];

  if ([v11 isPlaceholder])
  {
    v12 = +[TransitSchedulesCollapsedStopsPlaceholderViewCell identifier];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];

    transitTripStop = [v11 placeholderTextForLine:self->_transitLine];
    [v13 setPlaceholderText:transitTripStop];
  }

  else
  {
    v15 = +[TransitSchedulesStopViewCell identifier];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];

    transitTripStop = [v11 transitTripStop];
    if (v9)
    {
      transitTripStopItems2 = [(TransitScheduleStopsTableViewDataSource *)self transitTripStopItems];
      v17 = [transitTripStopItems2 count] - 1;

      if (v9 == v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {
      v18 = 1;
    }

    boardingStopItemIndex = self->_boardingStopItemIndex;
    if (v9 != boardingStopItemIndex && self->_hasAlightStop && v9 == self->_alightStopItemIndex)
    {
      departure = [transitTripStop departure];
      [v13 setHighlightStation:{objc_msgSend(departure, "isCanceled") ^ 1}];
    }

    else
    {
      [v13 setHighlightStation:v9 == boardingStopItemIndex];
    }

    v21 = [(TransitScheduleStopsTableViewDataSource *)self _linkColorTypeForStopAtIndex:v9];
    v22 = v21;
    if (v9)
    {
      v33 = v21;
      transitTripStopItems3 = [(TransitScheduleStopsTableViewDataSource *)self transitTripStopItems];
      v24 = [transitTripStopItems3 objectAtIndexedSubscript:v9 - 1];

      transitTripStop2 = [v24 transitTripStop];
      timeZone = [transitTripStop2 timeZone];

      v27 = 0;
      if (([v24 isPlaceholder] & 1) == 0 && timeZone)
      {
        timeZone2 = [transitTripStop timeZone];
        if (timeZone2)
        {
          [transitTripStop timeZone];
          v29 = v32 = v18;
          v27 = [v29 isEqualToTimeZone:timeZone] ^ 1;

          v18 = v32;
        }

        else
        {
          v27 = 0;
        }
      }

      v22 = v33;
    }

    else
    {
      v27 = 0;
    }

    if (v9 == self->_vehicleStopItemIndex)
    {
      if ([(TransitScheduleStopsTableViewDataSource *)self _hasVehicleDepartedStation])
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v30 = 0;
    }

    [v13 setTransitLine:self->_transitLine withTransitTripStop:transitTripStop stopType:v18 colorStyleType:v22 vehiclePosition:v30 showTimeZone:v27];
  }

  return v13;
}

- (void)_updatePastDepartureAndVehicleIndexes
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_10064F160;
  v7[4] = sub_10064F170;
  v8 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  transitTripStopItems = [(TransitScheduleStopsTableViewDataSource *)self transitTripStopItems];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10064F178;
  v4[3] = &unk_101624BB0;
  v4[4] = self;
  v4[5] = v5;
  v4[6] = v7;
  v4[7] = &v9;
  v4[8] = &v13;
  [transitTripStopItems enumerateObjectsWithOptions:2 usingBlock:v4];

  self->_mostRecentPastDepartureStopItemIndex = v10[3];
  self->_vehicleStopItemIndex = v14[3];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

- (void)setReferenceDate:(id)date dataSource:(id)source
{
  dateCopy = date;
  sourceCopy = source;
  if (![(NSDate *)self->_referenceDate isEqualToDate:dateCopy])
  {
    objc_storeStrong(&self->_referenceDate, date);
    v9 = self->_mostRecentPastDepartureStopItemIndex == 0x7FFFFFFFFFFFFFFFLL ? 0 : self->_mostRecentPastDepartureStopItemIndex;
    [(TransitScheduleStopsTableViewDataSource *)self _updatePastDepartureAndVehicleIndexes];
    mostRecentPastDepartureStopItemIndex = self->_mostRecentPastDepartureStopItemIndex;
    if (mostRecentPastDepartureStopItemIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (mostRecentPastDepartureStopItemIndex <= self->_vehicleStopItemIndex)
      {
        mostRecentPastDepartureStopItemIndex = self->_vehicleStopItemIndex;
      }

      v11 = (mostRecentPastDepartureStopItemIndex + 1);
      if ((mostRecentPastDepartureStopItemIndex + 1) >= [(NSArray *)self->_transitTripStopItems count]- 1)
      {
        v11 = [(NSArray *)self->_transitTripStopItems count]- 1;
      }

      v12 = &v11[-v9];
      if (v12 && [(TransitScheduleStopsTableViewDataSource *)self remoteNetworkState]== 1)
      {
        v33 = dateCopy;
        v31 = [NSIndexSet indexSetWithIndexesInRange:v9, v12];
        v13 = [(NSArray *)self->_transitTripStopItems objectsAtIndexes:?];
        v14 = NSStringFromSelector("identifier");
        v15 = [v13 valueForKeyPath:v14];

        v32 = sourceCopy;
        snapshot = [sourceCopy snapshot];
        v30 = v15;
        v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v18 = v13;
        v19 = [v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v36;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v36 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v35 + 1) + 8 * i);
              identifier = [v23 identifier];
              if ([snapshot indexOfItemIdentifier:identifier] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v25 = sub_100798DBC();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  NSStringFromSelector(a2);
                  v26 = v18;
                  v28 = v27 = v17;
                  v29 = [v23 description];
                  *buf = 138412802;
                  v40 = v28;
                  v41 = 2112;
                  v42 = identifier;
                  v43 = 2112;
                  v44 = v29;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@ - Could not find identifier %@ for stop %@ in snapshot", buf, 0x20u);

                  v17 = v27;
                  v18 = v26;
                }
              }

              else
              {
                [v17 addObject:identifier];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v20);
        }

        [snapshot reloadItemsWithIdentifiers:v17];
        sourceCopy = v32;
        [v32 applySnapshot:snapshot animatingDifferences:1];

        dateCopy = v33;
      }
    }
  }
}

- (NSArray)stopIdentifiers
{
  transitTripStopItems = self->_transitTripStopItems;
  v3 = NSStringFromSelector("identifier");
  v4 = [(NSArray *)transitTripStopItems valueForKey:v3];

  return v4;
}

- (id)stopItemAtIndex:(unint64_t)index
{
  transitTripStopItems = [(TransitScheduleStopsTableViewDataSource *)self transitTripStopItems];
  v6 = [transitTripStopItems count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    transitTripStopItems2 = [(TransitScheduleStopsTableViewDataSource *)self transitTripStopItems];
    v8 = [transitTripStopItems2 objectAtIndexedSubscript:index];
  }

  return v8;
}

- (void)_adjustIndexesForCollapsedStopsBeforeBoardingIndex:(unint64_t)index
{
  boardingStopItemIndex = self->_boardingStopItemIndex;
  mostRecentPastDepartureStopItemIndex = self->_mostRecentPastDepartureStopItemIndex;
  if (mostRecentPastDepartureStopItemIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (mostRecentPastDepartureStopItemIndex >= boardingStopItemIndex)
    {
      v5 = mostRecentPastDepartureStopItemIndex - index + 1;
    }

    else
    {
      v5 = 0;
    }

    self->_mostRecentPastDepartureStopItemIndex = v5;
  }

  self->_boardingStopItemIndex = boardingStopItemIndex - index + 1;
  alightStopItemIndex = self->_alightStopItemIndex;
  if (alightStopItemIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_alightStopItemIndex = alightStopItemIndex - index + 1;
  }
}

- (void)buildTransitTripStopItemsWithTransitStops:(id)stops boardingStopDepartureDate:(id)date maintainingCollapsedState:(BOOL)state
{
  stateCopy = state;
  stopsCopy = stops;
  dateCopy = date;
  v10 = [stopsCopy copy];
  transitStops = self->_transitStops;
  self->_transitStops = v10;

  objc_storeStrong(&self->_boardingStopDepartureDate, date);
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  *&self->_alightStopItemIndex = vnegq_f64(v12);
  self->_mostRecentPastDepartureStopItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (!stateCopy)
  {
    self->_canShowMoreStops = 1;
  }

  v13 = objc_alloc_init(NSMutableIndexSet);
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1006500B8;
  v68[3] = &unk_101624B60;
  v68[4] = self;
  v56 = dateCopy;
  v69 = v56;
  v14 = v13;
  v70 = v14;
  [stopsCopy enumerateObjectsUsingBlock:v68];
  if (self->_boardingStopItemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = sub_100798DBC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      boardingStopMuid = self->_boardingStopMuid;
      *buf = 134217984;
      v73 = boardingStopMuid;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not find the a boarding trip stop with muid %llu", buf, 0xCu);
    }
  }

  if (self->_hasAlightStop && self->_alightStopItemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = sub_100798DBC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      alightStopMuid = self->_alightStopMuid;
      *buf = 134217984;
      v73 = alightStopMuid;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find an alight trip stop with muid %llu", buf, 0xCu);
    }
  }

  if (!self->_canShowMoreStops)
  {
    v59 = 0;
    goto LABEL_27;
  }

  boardingStopItemIndex = self->_boardingStopItemIndex;
  v21 = boardingStopItemIndex != 0x7FFFFFFFFFFFFFFFLL && boardingStopItemIndex > 1;
  v59 = v21;
  if (!self->_hasAlightStop)
  {
    goto LABEL_27;
  }

  alightStopItemIndex = self->_alightStopItemIndex;
  if (alightStopItemIndex == 0x7FFFFFFFFFFFFFFFLL || alightStopItemIndex >= [stopsCopy count] - 1)
  {
    goto LABEL_27;
  }

  v58 = 1;
  if (boardingStopItemIndex >= 2 && boardingStopItemIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_alightStopItemIndex > self->_boardingStopItemIndex)
    {
      v58 = 1;
      goto LABEL_28;
    }

    v54 = sub_100798DBC();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "The alighting stop was found before the boarding stop.", buf, 2u);
    }

LABEL_27:
    v58 = 0;
  }

LABEL_28:
  if (stateCopy && [(NSArray *)self->_transitTripStopItems count])
  {
    v23 = v14;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v24 = self->_transitTripStopItems;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = 0;
      v29 = *v65;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v65 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = *(*(&v64 + 1) + 8 * i);
          if ([v31 type] == 1)
          {
            v28 = 1;
          }

          else
          {
            v27 |= [v31 type] == 2;
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v59 &= v28;
    v58 &= v27;
    v14 = v23;
  }

  v32 = +[NSMutableArray array];
  if ((v59 & 1) != 0 || (v58 & 1) != 0 || [v14 count])
  {
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_1006501B0;
    v62[3] = &unk_101624B88;
    v57 = objc_alloc_init(NSMutableArray);
    v63 = v57;
    [v14 enumerateRangesUsingBlock:v62];
    if (v59 && (v33 = self->_boardingStopItemIndex) != 0)
    {
      v34 = v33 - 1;
      v35 = [stopsCopy objectAtIndexedSubscript:v33 - 1];
      if ([v35 isHidden])
      {
        v34 = self->_boardingStopItemIndex;
      }
    }

    else
    {
      v34 = 0;
    }

    v55 = v14;
    if (v58)
    {
      v36 = self->_alightStopItemIndex;
    }

    else
    {
      v36 = [stopsCopy count] - 1;
    }

    if ([stopsCopy count])
    {
      v37 = 0;
      v38 = ~v36;
      do
      {
        v39 = [stopsCopy objectAtIndexedSubscript:v37];
        v40 = v39;
        v41 = v59;
        if (v37 >= v34)
        {
          v41 = 0;
        }

        if (v41 == 1)
        {
          v42 = [[TransitTripStopItem alloc] initWithPlaceHolderType:1 numCollapsedStops:v34];
          [v32 addObject:v42];
          [(TransitScheduleStopsTableViewDataSource *)self _adjustIndexesForCollapsedStopsBeforeBoardingIndex:v34];
          v43 = v34;
        }

        else
        {
          if (v37 > v36)
          {
            v44 = v58;
          }

          else
          {
            v44 = 0;
          }

          if (v44 == 1)
          {
            v43 = [stopsCopy count] + v38;
            v42 = [[TransitTripStopItem alloc] initWithPlaceHolderType:2 numCollapsedStops:v43];
            [v32 addObject:v42];
          }

          else if ([v39 isHidden])
          {
            firstObject = [v57 firstObject];
            [firstObject rangeValue];
            v43 = v46;

            [v57 removeObjectAtIndex:0];
            v47 = self->_boardingStopItemIndex;
            v48 = [TransitTripStopItem alloc];
            if (v37 >= v47)
            {
              v42 = [(TransitTripStopItem *)v48 initWithPlaceHolderType:2 numCollapsedStops:v43];
              [v32 addObject:v42];
            }

            else
            {
              v42 = [(TransitTripStopItem *)v48 initWithPlaceHolderType:1 numCollapsedStops:v43];
              [v32 addObject:v42];
              [(TransitScheduleStopsTableViewDataSource *)self _adjustIndexesForCollapsedStopsBeforeBoardingIndex:v43];
            }

            v38 = ~v36;
          }

          else
          {
            v42 = [[TransitTripStopItem alloc] initWithTransitTripStop:v40 stopIndex:v37];
            [v32 addObject:v42];
            v43 = 1;
          }
        }

        v37 += v43;
      }

      while (v37 < [stopsCopy count]);
    }

    if (v59)
    {
      v14 = v55;
      v49 = [v55 containsIndexesInRange:{0, v34}] ^ 1;
    }

    else
    {
      v49 = 0;
      v14 = v55;
    }

    v50 = [stopsCopy count];
    v51 = v58;
    if (v58)
    {
      v51 = [v14 containsIndexesInRange:{v36 + 1, &v50[-v36 - 1]}] ^ 1;
    }

    self->_canShowMoreStops = (v49 | v51) & 1;
  }

  else
  {
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100650214;
    v60[3] = &unk_101626390;
    v61 = v32;
    [stopsCopy enumerateObjectsUsingBlock:v60];
    self->_canShowMoreStops = 0;
  }

  v52 = [v32 copy];
  transitTripStopItems = self->_transitTripStopItems;
  self->_transitTripStopItems = v52;

  [(TransitScheduleStopsTableViewDataSource *)self _updatePastDepartureAndVehicleIndexes];
  [(TransitScheduleStopsTableViewDataSource *)self setRemoteNetworkState:1];
}

- (void)removeAllStops
{
  transitTripStopItems = self->_transitTripStopItems;
  self->_transitTripStopItems = 0;

  [(TransitScheduleStopsTableViewDataSource *)self setRemoteNetworkState:0];
}

- (TransitScheduleStopsTableViewDataSource)initWithBoardingStopMuid:(unint64_t)muid transitLine:(id)line referenceDate:(id)date
{
  lineCopy = line;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = TransitScheduleStopsTableViewDataSource;
  v11 = [(TransitScheduleStopsTableViewDataSource *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_boardingStopMuid = muid;
    objc_storeStrong(&v11->_transitLine, line);
    objc_storeStrong(&v12->_referenceDate, date);
    v12->_remoteNetworkState = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *&v12->_alightStopItemIndex = vnegq_f64(v13);
  }

  return v12;
}

- (TransitScheduleStopsTableViewDataSource)initWithBoardingStopMuid:(unint64_t)muid alightStopMuid:(unint64_t)stopMuid alightHallMuid:(unint64_t)hallMuid alightStationMuid:(unint64_t)stationMuid transitLine:(id)line referenceDate:(id)date
{
  result = [(TransitScheduleStopsTableViewDataSource *)self initWithBoardingStopMuid:muid transitLine:line referenceDate:date];
  if (result)
  {
    result->_alightStopMuid = stopMuid;
    result->_alightHallMuid = hallMuid;
    result->_alightStationMuid = stationMuid;
    result->_hasAlightStop = 1;
  }

  return result;
}

+ (void)registerCellsForCollectionView:(id)view
{
  viewCopy = view;
  v3 = objc_opt_class();
  v4 = +[TransitSchedulesStopViewCell identifier];
  [viewCopy registerClass:v3 forCellWithReuseIdentifier:v4];

  v5 = objc_opt_class();
  v6 = +[TransitSchedulesCollapsedStopsPlaceholderViewCell identifier];
  [viewCopy registerClass:v5 forCellWithReuseIdentifier:v6];

  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TransitScheduleNetworkActivityTableViewCellIdentifier"];
}

@end