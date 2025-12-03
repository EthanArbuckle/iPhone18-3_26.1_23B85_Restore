@interface MKTransitDeparturesDataProvider
- (BOOL)_hasConnectionsSection;
- (BOOL)_hasIncidentsSection;
- (BOOL)_hasPlaceCardMessageSection;
- (BOOL)_isSectionTypeEnabled:(int64_t)enabled;
- (BOOL)_systemHasInactiveLines:(id)lines;
- (BOOL)isHidingDeparturesForSystem:(id)system;
- (BOOL)isLastSectionForSystem:(id)system;
- (BOOL)isStuckWithExpiredInfo;
- (GEOAttribution)transitPunchoutAttribution;
- (GEOMapItemTransitInfo)transitInfo;
- (MKTransitDeparturesDataProvider)initWithMapItem:(id)item;
- (MKTransitDeparturesDataProviderDelegate)delegate;
- (NSArray)connections;
- (NSDate)departureCutoffDate;
- (NSSet)disabledSections;
- (id)_controllerForSection:(int64_t)section;
- (id)_departureCutoffDateForLine:(id)line;
- (id)_departureCutoffDateForSequence:(id)sequence;
- (id)_departureSequencesForSection:(int64_t)section;
- (id)_directionsForSystem:(id)system hasSequencesWithNoDirection:(BOOL *)direction;
- (id)_identifierForSection:(int64_t)section;
- (id)_identifierForSequence:(id)sequence;
- (id)_identifierForSystem:(id)system;
- (id)_inactiveLinesControllerForSection:(int64_t)section;
- (id)_inactiveLinesForSystem:(id)system;
- (id)_indexSetForHidingShowingSystem:(id)system;
- (id)_systemForSection:(int64_t)section directionIndex:(int64_t *)index;
- (id)departuresControllerForSection:(int64_t)section;
- (id)departuresSectionControllersForSystem:(id)system;
- (id)directionForSection:(int64_t)section;
- (id)dominantIncidentForDepartureSequence:(id)sequence;
- (id)inactiveLinesForSection:(int64_t)section;
- (id)inactiveLinesSectionControllersForSystem:(id)system;
- (id)incidentsForSystemIncidentsSection:(id)section;
- (id)possibleActions;
- (id)ticketForTransitMapItemUpdater:(id)updater;
- (int64_t)_numberOfDeparturesSectionsForSystem:(id)system;
- (int64_t)_sectionForIdentifier:(id)identifier;
- (int64_t)departureSequenceFrequencyTypeForSection:(int64_t)section;
- (int64_t)indexOfFirstSectionWithType:(int64_t)type;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)sectionTypeAtIndex:(int64_t)index;
- (void)_updateRefreshFailureErrorDescription;
- (void)hideDeparturesForSystem:(id)system removedIndices:(id *)indices;
- (void)refreshSections;
- (void)refreshStationSystems;
- (void)reloadData;
- (void)setActive:(BOOL)active;
- (void)setDepartureCutoffDate:(id)date;
- (void)setSelectedSystem:(id)system;
- (void)setSupportSystemSectionCollapsing:(BOOL)collapsing;
- (void)showDeparturesForSystem:(id)system insertedIndices:(id *)indices;
- (void)showNextPageInSection:(int64_t)section;
- (void)transitItemReferenceDateUpdater:(id)updater didUpdateToReferenceDate:(id)date;
- (void)transitMapItemUpdater:(id)updater updatedMapItem:(id)item error:(id)error;
@end

@implementation MKTransitDeparturesDataProvider

- (MKTransitDeparturesDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GEOAttribution)transitPunchoutAttribution
{
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  activeTileGroup = [modernManager activeTileGroup];
  attributions = [activeTileGroup attributions];
  firstObject = [attributions firstObject];

  return firstObject;
}

- (id)inactiveLinesSectionControllersForSystem:(id)system
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSMutableArray *)self->_sections count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v5];
      if ([v6 integerValue] == 7)
      {
        v7 = [(MKTransitDeparturesDataProvider *)self sectionControllerForSection:v5];
        [v4 addObject:v7];
      }

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_sections count]);
  }

  v8 = [v4 copy];

  return v8;
}

- (id)departuresSectionControllersForSystem:(id)system
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSMutableArray *)self->_sections count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v5];
      if ([v6 integerValue] == 4)
      {
        v7 = [(MKTransitDeparturesDataProvider *)self sectionControllerForSection:v5];
        [v4 addObject:v7];
      }

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_sections count]);
  }

  v8 = [v4 copy];

  return v8;
}

- (NSArray)connections
{
  _transitInfo = [(MKMapItem *)self->_mapItem _transitInfo];
  connections = [_transitInfo connections];

  return connections;
}

- (id)possibleActions
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(MKTransitDeparturesDataProvider *)self _hasIncidentsSection])
  {
    [array addObject:&unk_1F1611818];
  }

  v4 = [array copy];

  return v4;
}

- (void)transitMapItemUpdater:(id)updater updatedMapItem:(id)item error:(id)error
{
  updaterCopy = updater;
  itemCopy = item;
  errorCopy = error;
  if (itemCopy)
  {
    [(MKTransitItemIncidentsController *)self->_incidentsController resetCache];
    [(NSMapTable *)self->_cachedDirectionsForSystem removeAllObjects];
    [(NSMutableDictionary *)self->_cachedSequencesForSection removeAllObjects];
    [(NSMapTable *)self->_cachedSystemHasInactiveLines removeAllObjects];
  }

  self->_lastFailureDiagnosis = MKCurrentNetworkConnectionFailureDiagnosis();
  [(MKTransitDeparturesDataProvider *)self _updateRefreshFailureErrorDescription];
  self->_refreshing = 0;
  if ([(MKTransitDeparturesDataProvider *)self isActive])
  {
    [(MKTransitDeparturesDataProvider *)self reloadData];
  }
}

- (id)ticketForTransitMapItemUpdater:(id)updater
{
  delegate = [(MKTransitDeparturesDataProvider *)self delegate];
  v5 = [delegate traitsForTransitDeparturesDataProvider:self];

  _identifier = [(MKMapItem *)self->_mapItem _identifier];
  v7 = +[MKMapService sharedService];
  v8 = [v7 ticketForFreshIdentifier:_identifier resultProviderID:0 contentProvider:0 traits:v5];

  return v8;
}

- (void)transitItemReferenceDateUpdater:(id)updater didUpdateToReferenceDate:(id)date
{
  dateCopy = date;
  if ([(MKTransitDeparturesDataProvider *)self isStuckWithExpiredInfo])
  {
    lastCutoffDateWithValidSchedule = [(MKTransitDeparturesDataProvider *)self lastCutoffDateWithValidSchedule];

    if (!lastCutoffDateWithValidSchedule)
    {
      departureCutoffDate = [(MKTransitDeparturesDataProvider *)self departureCutoffDate];
      [(MKTransitDeparturesDataProvider *)self setLastCutoffDateWithValidSchedule:departureCutoffDate];
    }
  }

  else
  {
    [(MKTransitDeparturesDataProvider *)self setLastCutoffDateWithValidSchedule:0];
  }

  [(MKTransitDeparturesDataProvider *)self setDepartureCutoffDate:dateCopy];
  [(MKTransitDeparturesDataProvider *)self reloadData];
}

- (NSDate)departureCutoffDate
{
  departureCutoffDate = self->_departureCutoffDate;
  if (!departureCutoffDate)
  {
    v4 = +[MKTransitItemReferenceDateUpdater referenceDate];
    v5 = self->_departureCutoffDate;
    self->_departureCutoffDate = v4;

    [(MKTransitItemIncidentsController *)self->_incidentsController setReferenceDate:self->_departureCutoffDate];
    departureCutoffDate = self->_departureCutoffDate;
  }

  return departureCutoffDate;
}

- (void)setDepartureCutoffDate:(id)date
{
  dateCopy = date;
  if (![(NSDate *)self->_departureCutoffDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_departureCutoffDate, date);
    [(NSMutableDictionary *)self->_cachedSequencesForSection removeAllObjects];
    [(NSMapTable *)self->_cachedDirectionsForSystem removeAllObjects];
    [(NSMapTable *)self->_cachedSystemHasInactiveLines removeAllObjects];
    [(MKTransitItemIncidentsController *)self->_incidentsController setReferenceDate:dateCopy];
  }
}

- (void)_updateRefreshFailureErrorDescription
{
  if ([(MKTransitMapItemUpdater *)self->_mapItemUpdater lastInfoRefreshFailed])
  {
    lastFailureDiagnosis = self->_lastFailureDiagnosis;
    if (lastFailureDiagnosis <= 2)
    {
      if (lastFailureDiagnosis != 1)
      {
        if (lastFailureDiagnosis != 2)
        {
          return;
        }

        v4 = @"TransitRefreshError_CellDataDisabled";
        goto LABEL_10;
      }

      v7 = MGGetSInt32Answer();
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v4 = @"TransitRefreshError_AirplaneMode_iPad";
          goto LABEL_10;
        }

        if (v7 == 6)
        {
          v4 = @"TransitRefreshError_AirplaneMode_Watch";
          goto LABEL_10;
        }
      }

      else
      {
        if (v7 == 1)
        {
          v4 = @"TransitRefreshError_AirplaneMode_iPhone";
          goto LABEL_10;
        }

        if (v7 == 2)
        {
          v4 = @"TransitRefreshError_AirplaneMode_iPod";
LABEL_10:
          v6 = _MKLocalizedStringFromThisBundle(v4);
          lastInfoRefreshErrorDescription = self->_lastInfoRefreshErrorDescription;
          self->_lastInfoRefreshErrorDescription = v6;
          goto LABEL_11;
        }
      }

      v4 = @"TransitRefreshError_AirplaneMode_Device";
      goto LABEL_10;
    }

    if (lastFailureDiagnosis != 3)
    {
      if (lastFailureDiagnosis != 4)
      {
        return;
      }

      v4 = @"TransitRefreshError_Generic";
      goto LABEL_10;
    }

    v8 = MGGetSInt32Answer();
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v4 = @"TransitRefreshError_NoNetworkConnection_iPad";
        goto LABEL_10;
      }

      if (v8 == 6)
      {
        v4 = @"TransitRefreshError_NoNetworkConnection_Watch";
        goto LABEL_10;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v4 = @"TransitRefreshError_NoNetworkConnection_iPhone";
        goto LABEL_10;
      }

      if (v8 == 2)
      {
        v4 = @"TransitRefreshError_NoNetworkConnection_iPod";
        goto LABEL_10;
      }
    }

    v4 = @"TransitRefreshError_NoNetworkConnection_Device";
    goto LABEL_10;
  }

  lastInfoRefreshErrorDescription = self->_lastInfoRefreshErrorDescription;
  self->_lastInfoRefreshErrorDescription = 0;
LABEL_11:
}

- (BOOL)_hasPlaceCardMessageSection
{
  if ([(MKTransitDeparturesDataProvider *)self isStuckWithExpiredInfo])
  {
    return 1;
  }

  mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
  _transitInfo = [mapItem _transitInfo];
  if (_transitInfo)
  {
    mapItem2 = [(MKTransitDeparturesDataProvider *)self mapItem];
    _transitInfo2 = [mapItem2 _transitInfo];
    systems = [_transitInfo2 systems];
    v3 = [systems count] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_hasConnectionsSection
{
  mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
  _transitInfo = [mapItem _transitInfo];
  connections = [_transitInfo connections];
  v5 = [connections count] != 0;

  return v5;
}

- (id)_inactiveLinesForSystem:(id)system
{
  v29 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  _blockedIncidentEntities = [(MKTransitDeparturesDataProvider *)self _blockedIncidentEntities];
  mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
  _transitInfo = [mapItem _transitInfo];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __59__MKTransitDeparturesDataProvider__inactiveLinesForSystem___block_invoke;
  v27[3] = &unk_1E76CA190;
  v27[4] = self;
  v8 = [_transitInfo inactiveLinesForSystem:systemCopy relativeToDateFromBlock:v27 excludingIncidentEntities:_blockedIncidentEntities usingContainers:1];

  if ([v8 count])
  {
    v20 = systemCopy;
    v21 = [v8 mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          mapItem2 = [(MKTransitDeparturesDataProvider *)self mapItem];
          _transitInfo2 = [mapItem2 _transitInfo];
          v16 = [(MKTransitDeparturesDataProvider *)self _departureCutoffDateForLine:v13];
          v17 = [_transitInfo2 serviceResumesResultForLine:v13 excludingIncidentEntities:_blockedIncidentEntities afterDate:v16 usingContainers:1];

          if (([v17 blocked] & 1) == 0)
          {
            earliestNextDepartureDate = [v17 earliestNextDepartureDate];

            if (!earliestNextDepartureDate)
            {
              [v21 removeObject:v13];
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }

    v8 = [v21 copy];
    systemCopy = v20;
  }

  return v8;
}

- (BOOL)_systemHasInactiveLines:(id)lines
{
  linesCopy = lines;
  v5 = [(NSMapTable *)self->_cachedSystemHasInactiveLines objectForKey:linesCopy];
  if (!v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(MKTransitDeparturesDataProvider *)self _inactiveLinesForSystem:linesCopy];
    v5 = [v6 numberWithBool:{objc_msgSend(v7, "count") != 0}];

    [(NSMapTable *)self->_cachedSystemHasInactiveLines setObject:v5 forKey:linesCopy];
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)_inactiveLinesControllerForSection:(int64_t)section
{
  v3 = [(MKTransitDeparturesDataProvider *)self _controllerForSection:section];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)inactiveLinesForSection:(int64_t)section
{
  v3 = [(MKTransitDeparturesDataProvider *)self _inactiveLinesControllerForSection:section];
  inactiveLines = [v3 inactiveLines];

  return inactiveLines;
}

- (int64_t)_numberOfDeparturesSectionsForSystem:(id)system
{
  v6 = 0;
  v3 = [(MKTransitDeparturesDataProvider *)self _directionsForSystem:system hasSequencesWithNoDirection:&v6];
  v4 = [v3 count];

  return v4;
}

- (id)_departureCutoffDateForSequence:(id)sequence
{
  line = [sequence line];
  v5 = [(MKTransitDeparturesDataProvider *)self _departureCutoffDateForLine:line];

  return v5;
}

- (id)_departureCutoffDateForLine:(id)line
{
  if (([line departuresAreVehicleSpecific] & 1) != 0 || !-[MKTransitDeparturesDataProvider isStuckWithExpiredInfo](self, "isStuckWithExpiredInfo"))
  {
    departureCutoffDate = [(MKTransitDeparturesDataProvider *)self departureCutoffDate];
  }

  else
  {
    lastCutoffDateWithValidSchedule = [(MKTransitDeparturesDataProvider *)self lastCutoffDateWithValidSchedule];
    v5 = lastCutoffDateWithValidSchedule;
    if (lastCutoffDateWithValidSchedule)
    {
      departureCutoffDate2 = lastCutoffDateWithValidSchedule;
    }

    else
    {
      departureCutoffDate2 = [(MKTransitDeparturesDataProvider *)self departureCutoffDate];
    }

    departureCutoffDate = departureCutoffDate2;
  }

  return departureCutoffDate;
}

- (id)_departureSequencesForSection:(int64_t)section
{
  v3 = [(MKTransitDeparturesDataProvider *)self departuresControllerForSection:section];
  sequences = [v3 sequences];

  return sequences;
}

- (int64_t)departureSequenceFrequencyTypeForSection:(int64_t)section
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(MKTransitDeparturesDataProvider *)self numberOfSections]<= section || [(MKTransitDeparturesDataProvider *)self sectionTypeAtIndex:section]!= 4)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MKTransitDeparturesDataProvider *)self _departureSequencesForSection:section, 0];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v6)
  {

    return 1;
  }

  v7 = v6;
  v8 = *v16;
  v9 = 1;
  v10 = 1;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v15 + 1) + 8 * i);
      v9 &= [v12 isLowFrequency] ^ 1;
      v10 &= [v12 isLowFrequency];
      if ((v9 & 1) == 0 && (v10 & 1) == 0)
      {

        return 3;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if (v10)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  if (v9)
  {
    return 1;
  }

  return v13;
}

- (id)departuresControllerForSection:(int64_t)section
{
  v3 = [(MKTransitDeparturesDataProvider *)self _controllerForSection:section];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_identifierForSequence:(id)sequence
{
  v3 = MEMORY[0x1E696AEC0];
  sequenceCopy = sequence;
  line = [sequenceCopy line];
  name = [line name];
  line2 = [sequenceCopy line];
  muid = [line2 muid];
  direction = [sequenceCopy direction];
  headsign = [sequenceCopy headsign];

  v11 = [v3 stringWithFormat:@"_mk_sequence_%@-%llu-%@-%@", name, muid, direction, headsign];

  return v11;
}

- (id)_controllerForSection:(int64_t)section
{
  v5 = [(MKTransitDeparturesDataProvider *)self _identifierForSection:?];
  v6 = [(NSMutableDictionary *)self->_sectionControllers objectForKeyedSubscript:v5];
  if (v6)
  {
    goto LABEL_11;
  }

  v7 = [(MKTransitDeparturesDataProvider *)self sectionTypeAtIndex:section];
  if (v7 == 7)
  {
    v12 = [MKTransitInactiveLinesSectionController alloc];
    mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
    v10 = [(MKTransitDeparturesDataProvider *)self systemForSection:section];
    lineLookupBySection = self->_lineLookupBySection;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    v14 = [(NSDictionary *)lineLookupBySection objectForKeyedSubscript:v11];
    v6 = [(MKTransitInactiveLinesSectionController *)v12 initWithMapItem:mapItem system:v10 line:v14];
  }

  else
  {
    if (v7 != 4)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v8 = [MKTransitDeparturesSectionController alloc];
    mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
    v10 = [(MKTransitDeparturesDataProvider *)self systemForSection:section];
    v11 = [(MKTransitDeparturesDataProvider *)self directionForSection:section];
    v6 = [(MKTransitDeparturesSectionController *)v8 initWithMapItem:mapItem system:v10 departureSequenceContainer:v11];
  }

LABEL_8:
  if ([(NSMutableSet *)self->_pagedSectionIdentifiers containsObject:v5])
  {
    [(MKTransitSectionController *)v6 incrementPagingFilter];
  }

  [(NSMutableDictionary *)self->_sectionControllers setObject:v6 forKeyedSubscript:v5];
LABEL_11:
  departureCutoffDate = [(MKTransitDeparturesDataProvider *)self departureCutoffDate];
  [(MKTransitSectionController *)v6 setDepartureCutoffDate:departureCutoffDate];

  if ([(MKTransitDeparturesDataProvider *)self isStuckWithExpiredInfo])
  {
    lastCutoffDateWithValidSchedule = [(MKTransitDeparturesDataProvider *)self lastCutoffDateWithValidSchedule];
    [(MKTransitSectionController *)v6 setExpiredHighFrequencyCutoffDate:lastCutoffDateWithValidSchedule];
  }

  else
  {
    [(MKTransitSectionController *)v6 setExpiredHighFrequencyCutoffDate:0];
  }

  _blockedIncidentEntities = [(MKTransitDeparturesDataProvider *)self _blockedIncidentEntities];
  [(MKTransitSectionController *)v6 setIncidentEntitiesToExclude:_blockedIncidentEntities];

  return v6;
}

- (BOOL)isStuckWithExpiredInfo
{
  mapItemUpdater = self->_mapItemUpdater;
  departureCutoffDate = [(MKTransitDeparturesDataProvider *)self departureCutoffDate];
  LOBYTE(mapItemUpdater) = [(MKTransitMapItemUpdater *)mapItemUpdater isStuckWithExpiredInfoRelativeToDate:departureCutoffDate];

  return mapItemUpdater;
}

- (BOOL)_hasIncidentsSection
{
  incidentsForIncidentsSection = [(MKTransitDeparturesDataProvider *)self incidentsForIncidentsSection];
  v3 = [incidentsForIncidentsSection count] != 0;

  return v3;
}

- (id)dominantIncidentForDepartureSequence:(id)sequence
{
  v3 = [(MKTransitItemIncidentsController *)self->_incidentsController incidentsForDepartureSequence:sequence];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)incidentsForSystemIncidentsSection:(id)section
{
  v44 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  incidentsController = self->_incidentsController;
  mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
  v8 = [(MKTransitItemIncidentsController *)incidentsController incidentsForMapItem:mapItem];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v38 + 1) + 8 * i), "muid")}];
        [v5 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  v15 = [(MKTransitItemIncidentsController *)self->_incidentsController incidentsForSystem:sectionCopy];
  v31 = sectionCopy;
  v29 = [(MKTransitItemIncidentsController *)self->_incidentsController incidentsForLinesInSystem:sectionCopy];
  v30 = v15;
  v16 = [v15 arrayByAddingObjectsFromArray:?];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v34 + 1) + 8 * j);
        if ([v21 isBlockingIncident])
        {
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v21, "muid")}];
          [v5 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v18);
  }

  validIncidents = [(MKTransitItemIncidentsController *)self->_incidentsController validIncidents];
  v24 = MEMORY[0x1E696AE18];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __70__MKTransitDeparturesDataProvider_incidentsForSystemIncidentsSection___block_invoke;
  v32[3] = &unk_1E76CA1B8;
  v33 = v5;
  v25 = v5;
  v26 = [v24 predicateWithBlock:v32];
  v27 = [validIncidents filteredArrayUsingPredicate:v26];

  return v27;
}

uint64_t __70__MKTransitDeparturesDataProvider_incidentsForSystemIncidentsSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "muid")}];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_directionsForSystem:(id)system hasSequencesWithNoDirection:(BOOL *)direction
{
  v17[2] = *MEMORY[0x1E69E9840];
  systemCopy = system;
  v7 = [(NSMapTable *)self->_cachedDirectionsForSystem objectForKey:systemCopy];
  if (!v7)
  {
    mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
    _transitInfo = [mapItem _transitInfo];
    _blockedIncidentEntities = [(MKTransitDeparturesDataProvider *)self _blockedIncidentEntities];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__MKTransitDeparturesDataProvider__directionsForSystem_hasSequencesWithNoDirection___block_invoke;
    v15[3] = &unk_1E76CA190;
    v15[4] = self;
    v11 = [_transitInfo departureSequenceContainersForSystem:systemCopy excludingIncidentEntities:_blockedIncidentEntities validForDateFromBlock:v15];

    if (v11)
    {
      v16[0] = @"kCachedDirectionsDirectionsKey";
      v16[1] = @"kCachedDirectionsNoDirectionKey";
      v17[0] = v11;
      v12 = [MEMORY[0x1E696AD98] numberWithBool:0];
      v17[1] = v12;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

      [(NSMapTable *)self->_cachedDirectionsForSystem setObject:v7 forKey:systemCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  if (direction)
  {
    *direction = 1;
  }

  v13 = [v7 objectForKeyedSubscript:@"kCachedDirectionsDirectionsKey"];

  return v13;
}

- (id)_identifierForSystem:(id)system
{
  v3 = MEMORY[0x1E696AEC0];
  systemCopy = system;
  name = [systemCopy name];
  muid = [systemCopy muid];

  v7 = [v3 stringWithFormat:@"_mk_%@_%llu_system_section", name, muid];

  return v7;
}

- (id)_systemForSection:(int64_t)section directionIndex:(int64_t *)index
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableArray *)self->_sections indexOfObject:&unk_1F16117D0];
  v7 = v6;
  if (index)
  {
    *index = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v30[0] = self->_selectedSystem;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      indexCopy = index;
      v11 = *v26;
      while (2)
      {
        v12 = 0;
        v13 = v7;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * v12);
          if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:4])
          {
            v15 = [(MKTransitDeparturesDataProvider *)self _numberOfDeparturesSectionsForSystem:v14];
          }

          else
          {
            v15 = 0;
          }

          if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:6])
          {
            v16 = [(MKTransitDeparturesDataProvider *)self incidentsForSystemIncidentsSection:v14];
            v17 = [v16 count] != 0;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17 + v15;
          if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:7]&& [(MKTransitDeparturesDataProvider *)self _systemHasInactiveLines:v14])
          {
            v19 = [(MKTransitDeparturesDataProvider *)self _inactiveLinesForSystem:v14];
            v18 += [v19 count] + 1;
          }

          if (v18)
          {
            v7 = v13 + v18 + 1;
            if (v7 > section)
            {
              if (indexCopy)
              {
                if (v15 >= 1)
                {
                  v20 = ~(v17 + v13) + section;
                  if (v20 >= 0)
                  {
                    *indexCopy = v20;
                  }
                }
              }

              v8 = v14;
              goto LABEL_31;
            }
          }

          else
          {
            v7 = v13;
          }

          ++v12;
          v13 = v7;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_31:
  }

  return v8;
}

- (void)setSelectedSystem:(id)system
{
  systemCopy = system;
  if (self->_selectedSystem != systemCopy)
  {
    v6 = systemCopy;
    objc_storeStrong(&self->_selectedSystem, system);
    [(MKTransitDeparturesDataProvider *)self refreshSections];
    systemCopy = v6;
  }
}

- (void)showNextPageInSection:(int64_t)section
{
  v4 = [(MKTransitDeparturesDataProvider *)self _identifierForSection:section];
  if (v4)
  {
    v5 = v4;
    [(NSMutableSet *)self->_pagedSectionIdentifiers addObject:v4];
    v4 = v5;
  }
}

- (id)directionForSection:(int64_t)section
{
  v10 = 0;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [(MKTransitDeparturesDataProvider *)self _systemForSection:section directionIndex:&v9];
  v5 = [(MKTransitDeparturesDataProvider *)self _directionsForSystem:v4 hasSequencesWithNoDirection:&v10];
  [v5 count];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v6 = 0;
  if ([v5 count])
  {
    v8 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v10 == 1)
      {
        if (v8 == [v5 count])
        {
          goto LABEL_2;
        }

        v8 = v9;
      }

      if (v8 < [v5 count])
      {
        v6 = [v5 objectAtIndexedSubscript:v9];
        goto LABEL_3;
      }

LABEL_2:
      v6 = 0;
    }
  }

LABEL_3:

  return v6;
}

- (BOOL)isLastSectionForSystem:(id)system
{
  v4 = [(MKTransitDeparturesDataProvider *)self _identifierForSystem:system];
  v5 = [(MKTransitDeparturesDataProvider *)self _sectionForIdentifier:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && ((v6 = v5, v7 = v5 + 1, v5 < 0) || v7 < -[NSMutableArray count](self->_sections, "count")) && ((-[NSMutableArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 integerValue], v8, v9 != 7) ? (v10 = v9 == 4) : (v10 = 1), v10))
  {
    v11 = [(MKTransitDeparturesDataProvider *)self systemForSection:v6];
    v12 = [(MKTransitDeparturesDataProvider *)self systemForSection:v7];
    v13 = v11 != v12;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)_indexSetForHidingShowingSystem:(id)system
{
  v4 = [(MKTransitDeparturesDataProvider *)self _identifierForSystem:system];
  v5 = [(MKTransitDeparturesDataProvider *)self _sectionForIdentifier:v4]+ 1;
  if (v5 >= [(NSMutableArray *)self->_sections count])
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v5 + v6];
      unsignedIntegerValue = [v7 unsignedIntegerValue];

      if (unsignedIntegerValue == 5)
      {
        break;
      }

      ++v6;
    }

    while (v5 + v6 < [(NSMutableArray *)self->_sections count]);
  }

  v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v5, v6}];

  return v9;
}

- (void)showDeparturesForSystem:(id)system insertedIndices:(id *)indices
{
  systemCopy = system;
  v9 = [(MKTransitDeparturesDataProvider *)self _identifierForSystem:systemCopy];
  [(NSMutableSet *)self->_hiddenSections removeObject:?];
  v7 = [(MKTransitDeparturesDataProvider *)self _indexSetForHidingShowingSystem:systemCopy];

  if (indices)
  {
    v8 = v7;
    *indices = v7;
  }
}

- (void)hideDeparturesForSystem:(id)system removedIndices:(id *)indices
{
  systemCopy = system;
  v8 = [(MKTransitDeparturesDataProvider *)self _indexSetForHidingShowingSystem:systemCopy];
  v7 = [(MKTransitDeparturesDataProvider *)self _identifierForSystem:systemCopy];

  [(NSMutableSet *)self->_hiddenSections addObject:v7];
  if (indices)
  {
    *indices = v8;
  }
}

- (BOOL)isHidingDeparturesForSystem:(id)system
{
  hiddenSections = self->_hiddenSections;
  v4 = [(MKTransitDeparturesDataProvider *)self _identifierForSystem:system];
  LOBYTE(hiddenSections) = [(NSMutableSet *)hiddenSections containsObject:v4];

  return hiddenSections;
}

- (int64_t)_sectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(MKTransitDeparturesDataProvider *)self numberOfSections]< 1)
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = [(MKTransitDeparturesDataProvider *)self _identifierForSection:v5];
      v7 = [v6 isEqualToString:identifierCopy];

      if (v7)
      {
        break;
      }

      if (++v5 >= [(MKTransitDeparturesDataProvider *)self numberOfSections])
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (id)_identifierForSection:(int64_t)section
{
  v5 = [(MKTransitDeparturesDataProvider *)self sectionTypeAtIndex:?];
  v6 = &stru_1F15B23C0;
  if (v5 <= 4)
  {
    if (v5 <= 2)
    {
      v7 = @"_mk_connectionsSection";
      if (v5 != 2)
      {
        v7 = &stru_1F15B23C0;
      }

      if (v5 == 1)
      {
        v6 = @"_mk_messageSection";
      }

      else
      {
        v6 = v7;
      }

      goto LABEL_22;
    }

    if (v5 == 3)
    {
      v6 = @"_mk_incidentsSection";
      goto LABEL_22;
    }

    v11 = [(MKTransitDeparturesDataProvider *)self systemForSection:section];
    v12 = MEMORY[0x1E696AEC0];
    name = [v11 name];
    muid = [v11 muid];
    v15 = [(MKTransitDeparturesDataProvider *)self directionForSection:section];
    v6 = [v12 stringWithFormat:@"_mk_%@_%llu_%@_departure_section", name, muid, v15];
LABEL_21:

    goto LABEL_22;
  }

  if (v5 <= 6)
  {
    if (v5 == 5)
    {
      v8 = [(MKTransitDeparturesDataProvider *)self systemForSection:section];
      v6 = [(MKTransitDeparturesDataProvider *)self _identifierForSystem:v8];
    }

    else
    {
      v8 = [(MKTransitDeparturesDataProvider *)self systemForSection:section];
      v9 = MEMORY[0x1E696AEC0];
      name2 = [v8 name];
      v6 = [v9 stringWithFormat:@"_mk_%@_%llu_incidents", name2, objc_msgSend(v8, "muid")];
    }

    goto LABEL_22;
  }

  if (v5 == 7)
  {
    v11 = [(MKTransitDeparturesDataProvider *)self systemForSection:section];
    v16 = MEMORY[0x1E696AEC0];
    name = [v11 name];
    muid2 = [v11 muid];
    lineLookupBySection = self->_lineLookupBySection;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    v19 = [(NSDictionary *)lineLookupBySection objectForKeyedSubscript:v15];
    v6 = [v16 stringWithFormat:@"_mk_%@_%llu_%@_inactive_section", name, muid2, v19];

    goto LABEL_21;
  }

  if (v5 == 8)
  {
    v6 = @"_mk_attributionSection";
  }

LABEL_22:

  return v6;
}

- (BOOL)_isSectionTypeEnabled:(int64_t)enabled
{
  disabledSections = [(MKTransitDeparturesDataProvider *)self disabledSections];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:enabled];
  v6 = [disabledSections containsObject:v5];

  return v6 ^ 1;
}

- (int64_t)indexOfFirstSectionWithType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  sections = self->_sections;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__MKTransitDeparturesDataProvider_indexOfFirstSectionWithType___block_invoke;
  v6[3] = &unk_1E76CA168;
  v6[4] = &v7;
  v6[5] = type;
  [(NSMutableArray *)sections enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __63__MKTransitDeparturesDataProvider_indexOfFirstSectionWithType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 integerValue];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (int64_t)sectionTypeAtIndex:(int64_t)index
{
  if (index < 0 || [(MKTransitDeparturesDataProvider *)self numberOfSections]<= index)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:index];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  v5 = [(MKTransitDeparturesDataProvider *)self sectionTypeAtIndex:?];
  v6 = 0;
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        return 1;
      case 2:
        mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
        _transitInfo = [mapItem _transitInfo];
        connections = [_transitInfo connections];
        v16 = [connections count];

        return v16;
      case 3:
        incidentsForIncidentsSection = [(MKTransitDeparturesDataProvider *)self incidentsForIncidentsSection];
        v6 = [incidentsForIncidentsSection count];

        break;
    }
  }

  else
  {
    if (v5 <= 6)
    {
      if (v5 != 4)
      {
        if (v5 == 6)
        {
          v7 = [(MKTransitDeparturesDataProvider *)self systemForSection:section];
          if ([(MKTransitDeparturesDataProvider *)self isHidingDeparturesForSystem:v7])
          {
            v6 = 0;
          }

          else
          {
            v17 = [(MKTransitDeparturesDataProvider *)self incidentsForSystemIncidentsSection:v7];
            v6 = [v17 count];
          }
        }

        return v6;
      }

LABEL_13:
      v9 = [(MKTransitDeparturesDataProvider *)self _controllerForSection:section];
      v10 = [(MKTransitDeparturesDataProvider *)self systemForSection:section];
      if (![(MKTransitDeparturesDataProvider *)self isHidingDeparturesForSystem:v10])
      {
        numberOfRows = [v9 numberOfRows];

        return numberOfRows;
      }

      return 0;
    }

    if (v5 == 7)
    {
      goto LABEL_13;
    }

    return v5 == 8;
  }

  return v6;
}

- (void)reloadData
{
  [(NSMutableDictionary *)self->_sectionControllers removeAllObjects];

  [(MKTransitDeparturesDataProvider *)self refreshSections];
}

- (void)refreshSections
{
  v58[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
  _transitInfo = [mapItem _transitInfo];

  if (_transitInfo)
  {
    if ([(MKTransitDeparturesDataProvider *)self _hasIncidentsSection])
    {
      [v3 addObject:&unk_1F1611770];
    }

    if ([(MKTransitDeparturesDataProvider *)self _hasPlaceCardMessageSection])
    {
      [v3 addObject:&unk_1F1611758];
    }

    v37 = v3;
    if (self->_hiddenSections)
    {
      allowsSystemSectionCollapsing = 0;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      hiddenSections = self->_hiddenSections;
      self->_hiddenSections = v6;

      allowsSystemSectionCollapsing = [(MKTransitDeparturesDataProvider *)self allowsSystemSectionCollapsing];
    }

    [(MKTransitDeparturesDataProvider *)self refreshStationSystems];
    v8 = self->_stationSystems;
    v9 = v8;
    selectedSystem = self->_selectedSystem;
    if (selectedSystem || ([(NSArray *)v8 firstObject], v11 = objc_claimAutoreleasedReturnValue(), v12 = self->_selectedSystem, self->_selectedSystem = v11, v12, (selectedSystem = self->_selectedSystem) != 0))
    {
      v58[0] = selectedSystem;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];

      v9 = v13;
    }

    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v9;
    v43 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v43)
    {
      v44 = 0;
      v41 = *v53;
      selfCopy = self;
      do
      {
        for (i = 0; i != v43; i = v29 + 1)
        {
          if (*v53 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:6])
          {
            v18 = [(MKTransitDeparturesDataProvider *)self incidentsForSystemIncidentsSection:v16];
            v19 = [v18 count];

            if (v19)
            {
              [v17 addObject:&unk_1F1611788];
            }
          }

          if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:4])
          {
            v20 = [(MKTransitDeparturesDataProvider *)self _numberOfDeparturesSectionsForSystem:v16];
            if (v20 >= 1)
            {
              do
              {
                [v17 addObject:&unk_1F16117A0];
                --v20;
              }

              while (v20);
            }
          }

          v45 = v16;
          v46 = i;
          if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:7])
          {
            v21 = [(MKTransitDeparturesDataProvider *)self _inactiveLinesForSystem:v16];
          }

          else
          {
            v21 = 0;
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v49;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v49 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v48 + 1) + 8 * j);
                [v17 addObject:&unk_1F16117B8];
                v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
                [v14 setObject:v27 forKeyedSubscript:v28];
              }

              v24 = [v22 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v24);
          }

          if ([v17 count])
          {
            [v17 insertObject:&unk_1F16117D0 atIndex:0];
            [v40 addObjectsFromArray:v17];
            self = selfCopy;
            v29 = v46;
            if (allowsSystemSectionCollapsing)
            {
              v30 = selfCopy->_hiddenSections;
              v31 = [(MKTransitDeparturesDataProvider *)selfCopy _identifierForSystem:v45];
              [(NSMutableSet *)v30 addObject:v31];
            }

            ++v44;
          }

          else
          {
            self = selfCopy;
            v29 = v46;
          }
        }

        v43 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v43);
    }

    else
    {
      v44 = 0;
    }

    v32 = [v14 copy];
    lineLookupBySection = self->_lineLookupBySection;
    self->_lineLookupBySection = v32;

    v3 = v37;
    if (v44 || ([v37 containsObject:&unk_1F1611758] & 1) != 0)
    {
      [v37 addObjectsFromArray:v40];
    }

    else
    {
      [v37 addObject:&unk_1F1611758];
    }

    _transitInfo = v36;
    self->_wantsSystemSectionCollapsing = v44 > 1;
    if (![(MKTransitDeparturesDataProvider *)self allowsSystemSectionCollapsing])
    {
      [(NSMutableSet *)self->_hiddenSections removeAllObjects];
    }

    if ([(MKTransitDeparturesDataProvider *)self _hasConnectionsSection])
    {
      [v37 addObject:&unk_1F16117E8];
    }

    [v37 addObject:&unk_1F1611800];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __50__MKTransitDeparturesDataProvider_refreshSections__block_invoke;
    v47[3] = &unk_1E76CA140;
    v47[4] = self;
    v34 = [MEMORY[0x1E696AE18] predicateWithBlock:v47];
    [v37 filterUsingPredicate:v34];

    objc_storeStrong(&self->_sections, v37);
    delegate = [(MKTransitDeparturesDataProvider *)self delegate];
    [delegate transitDeparturesDataProviderDidReload:self];
  }

  else
  {
    if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:1])
    {
      [v3 addObject:&unk_1F1611758];
    }

    objc_storeStrong(&self->_sections, v3);
  }
}

uint64_t __50__MKTransitDeparturesDataProvider_refreshSections__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 _isSectionTypeEnabled:v3];
}

- (void)refreshStationSystems
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
  _transitInfo = [mapItem _transitInfo];
  systems = [_transitInfo systems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = systems;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:6, v18])
        {
          v13 = [(MKTransitDeparturesDataProvider *)self incidentsForSystemIncidentsSection:v12];
          v14 = [v13 count] != 0;
        }

        else
        {
          v14 = 0;
        }

        if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:4])
        {
          v14 |= [(MKTransitDeparturesDataProvider *)self _numberOfDeparturesSectionsForSystem:v12]> 0;
        }

        if ([(MKTransitDeparturesDataProvider *)self _isSectionTypeEnabled:7])
        {
          v15 = [(MKTransitDeparturesDataProvider *)self _inactiveLinesForSystem:v12];
        }

        else
        {
          v15 = 0;
        }

        if (([v15 count] != 0) | v14 & 1)
        {
          [v3 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v3 copy];
  stationSystems = self->_stationSystems;
  self->_stationSystems = v16;
}

- (NSSet)disabledSections
{
  disabledSections = self->_disabledSections;
  if (!disabledSections)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
    v5 = self->_disabledSections;
    self->_disabledSections = v4;

    disabledSections = self->_disabledSections;
  }

  return disabledSections;
}

- (void)setSupportSystemSectionCollapsing:(BOOL)collapsing
{
  self->_supportSystemSectionCollapsing = collapsing;
  mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
  _transitInfo = [mapItem _transitInfo];
  self->_wantsSystemSectionCollapsing = [_transitInfo systemsCount] > 1;

  [(MKTransitDeparturesDataProvider *)self refreshSections];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    if (active)
    {
      v6 = +[MKTransitItemReferenceDateUpdater referenceDate];
      [(MKTransitDeparturesDataProvider *)self setDepartureCutoffDate:v6];
    }

    mapItemUpdater = self->_mapItemUpdater;

    [(MKTransitMapItemUpdater *)mapItemUpdater setActive:activeCopy];
  }
}

- (GEOMapItemTransitInfo)transitInfo
{
  mapItem = [(MKTransitDeparturesDataProvider *)self mapItem];
  _transitInfo = [mapItem _transitInfo];

  return _transitInfo;
}

- (MKTransitDeparturesDataProvider)initWithMapItem:(id)item
{
  itemCopy = item;
  v29.receiver = self;
  v29.super_class = MKTransitDeparturesDataProvider;
  v6 = [(MKTransitDeparturesDataProvider *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    v7->_supportSystemSectionCollapsing = 1;
    mapItem = [(MKTransitDeparturesDataProvider *)v7 mapItem];
    _transitInfo = [mapItem _transitInfo];
    v7->_wantsSystemSectionCollapsing = [_transitInfo systemsCount] > 1;

    v10 = [[MKTransitItemIncidentsController alloc] initWithMapItem:itemCopy];
    incidentsController = v7->_incidentsController;
    v7->_incidentsController = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionControllers = v7->_sectionControllers;
    v7->_sectionControllers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pagedSectionIdentifiers = v7->_pagedSectionIdentifiers;
    v7->_pagedSectionIdentifiers = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedSequencesForSection = v7->_cachedSequencesForSection;
    v7->_cachedSequencesForSection = v16;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    cachedDirectionsForSystem = v7->_cachedDirectionsForSystem;
    v7->_cachedDirectionsForSystem = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    cachedSystemHasInactiveLines = v7->_cachedSystemHasInactiveLines;
    v7->_cachedSystemHasInactiveLines = strongToStrongObjectsMapTable2;

    v22 = [[MKTransitMapItemUpdater alloc] initWithMapItem:v7->_mapItem delegate:v7];
    mapItemUpdater = v7->_mapItemUpdater;
    v7->_mapItemUpdater = v22;

    v7->_lastFailureDiagnosis = 0;
    [(MKTransitDeparturesDataProvider *)v7 refreshStationSystems];
    if ([(NSArray *)v7->_stationSystems count])
    {
      firstObject = [(NSArray *)v7->_stationSystems firstObject];
      selectedSystem = v7->_selectedSystem;
      v7->_selectedSystem = firstObject;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_reloadData name:*MEMORY[0x1E695D8F0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_reloadData name:*MEMORY[0x1E695DA68] object:0];
  }

  return v7;
}

@end