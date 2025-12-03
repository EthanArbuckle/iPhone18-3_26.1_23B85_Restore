@interface CPNavigationSession
- (CPMapTemplate)mapTemplate;
- (CPNavigationSession)initWithTrip:(id)trip mapTemplate:(id)template;
- (id)_currentTripId;
- (void)_updateLaneGuidanceIndiciesWithStartIndex:(unsigned __int16)index laneGuidances:(id)guidances;
- (void)_updateManeuverIndiciesWithStartIndex:(unsigned __int16)index maneuvers:(id)maneuvers;
- (void)addLaneGuidances:(id)guidances;
- (void)addManeuvers:(id)maneuvers;
- (void)cancelTrip;
- (void)finishTrip;
- (void)pauseTripForReason:(CPTripPauseReason)reason description:(NSString *)description turnCardColor:(UIColor *)turnCardColor;
- (void)resumeTripWithUpdatedRouteInformation:(id)information;
- (void)setCurrentLaneGuidance:(id)guidance;
- (void)setCurrentRoadNameVariants:(id)variants;
- (void)setDestinationNameVariants:(id)variants;
- (void)setManager:(id)manager;
- (void)setManeuverState:(int64_t)state;
- (void)setSendsNavigationMetadata:(BOOL)metadata;
- (void)setUpcomingManeuvers:(NSArray *)upcomingManeuvers;
- (void)updateTravelEstimates:(CPTravelEstimates *)estimates forManeuver:(CPManeuver *)maneuver;
@end

@implementation CPNavigationSession

- (CPNavigationSession)initWithTrip:(id)trip mapTemplate:(id)template
{
  tripCopy = trip;
  templateCopy = template;
  v18.receiver = self;
  v18.super_class = CPNavigationSession;
  v9 = [(CPNavigationSession *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_trip, trip);
    objc_storeWeak(&v10->_mapTemplate, templateCopy);
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    navigationSessionManagerFuture = v10->_navigationSessionManagerFuture;
    v10->_navigationSessionManagerFuture = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    maneuvers = v10->_maneuvers;
    v10->_maneuvers = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    laneGuidances = v10->_laneGuidances;
    v10->_laneGuidances = v15;
  }

  return v10;
}

- (id)_currentTripId
{
  trip = [(CPNavigationSession *)self trip];
  identifier = [trip identifier];

  return identifier;
}

- (void)setManager:(id)manager
{
  objc_storeStrong(&self->_manager, manager);
  managerCopy = manager;
  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  [navigationSessionManagerFuture finishWithResult:managerCopy];
}

- (void)pauseTripForReason:(CPTripPauseReason)reason description:(NSString *)description turnCardColor:(UIColor *)turnCardColor
{
  v8 = description;
  v9 = turnCardColor;
  [(CPNavigationSession *)self setPauseReason:reason];
  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__CPNavigationSession_pauseTripForReason_description_turnCardColor___block_invoke;
  v14[3] = &unk_278A107D0;
  v16 = v9;
  v17 = reason;
  v15 = v8;
  v11 = v9;
  v12 = v8;
  v13 = [navigationSessionManagerFuture addSuccessBlock:v14];
}

void __68__CPNavigationSession_pauseTripForReason_description_turnCardColor___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[4];
  v8 = v3;
  if (v4)
  {
    v7 = CPSanitizedBackgroundColor(v4);
    [v8 pauseTripForReason:v5 description:v6 turnCardColor:v7];
  }

  else
  {
    [v3 pauseTripForReason:v5 description:v6 turnCardColor:0];
  }

  if (a1[6] == 4)
  {
    [v8 startRerouting];
  }
}

- (void)_updateManeuverIndiciesWithStartIndex:(unsigned __int16)index maneuvers:(id)maneuvers
{
  indexCopy = index;
  v17 = *MEMORY[0x277D85DE8];
  maneuversCopy = maneuvers;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [maneuversCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = indexCopy;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(maneuversCopy);
        }

        indexCopy = v10 + 1;
        [*(*(&v12 + 1) + 8 * v9++) setIndex:v10++];
      }

      while (v7 != v9);
      v7 = [maneuversCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateLaneGuidanceIndiciesWithStartIndex:(unsigned __int16)index laneGuidances:(id)guidances
{
  indexCopy = index;
  v17 = *MEMORY[0x277D85DE8];
  guidancesCopy = guidances;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [guidancesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = indexCopy;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(guidancesCopy);
        }

        indexCopy = v10 + 1;
        [*(*(&v12 + 1) + 8 * v9++) setIndex:v10++];
      }

      while (v7 != v9);
      v7 = [guidancesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resumeTripWithUpdatedRouteInformation:(id)information
{
  informationCopy = information;
  if ([(CPNavigationSession *)self pauseReason]!= 4)
  {
    [(CPNavigationSession *)self clientTripNotPausedException];
  }

  [(CPNavigationSession *)self setPauseReason:0];
  maneuvers = [informationCopy maneuvers];
  [(CPNavigationSession *)self _updateManeuverIndiciesWithStartIndex:0 maneuvers:maneuvers];

  laneGuidances = [informationCopy laneGuidances];
  [(CPNavigationSession *)self _updateLaneGuidanceIndiciesWithStartIndex:0 laneGuidances:laneGuidances];

  trip = [(CPNavigationSession *)self trip];
  destinationTimeZoneOffsetFromGMT = [trip destinationTimeZoneOffsetFromGMT];

  sendsNavigationMetadata = [(CPNavigationSession *)self sendsNavigationMetadata];
  currentRoadNameVariants = [(CPNavigationSession *)self currentRoadNameVariants];
  destinationNameVariants = [(CPNavigationSession *)self destinationNameVariants];
  v12 = [informationCopy routeInfoWithAccNavSupported:sendsNavigationMetadata roadNameVariants:currentRoadNameVariants destinationNameVariants:destinationNameVariants timeZoneOffset:destinationTimeZoneOffsetFromGMT];

  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__CPNavigationSession_resumeTripWithUpdatedRouteInformation___block_invoke;
  v17[3] = &unk_278A107F8;
  v18 = v12;
  selfCopy = self;
  v20 = informationCopy;
  v14 = informationCopy;
  v15 = v12;
  v16 = [navigationSessionManagerFuture addSuccessBlock:v17];
}

void __61__CPNavigationSession_resumeTripWithUpdatedRouteInformation___block_invoke(uint64_t a1, void *a2)
{
  [a2 routeChangedWithReason:0 routeInfo:*(a1 + 32)];
  v6 = [*(a1 + 40) mapTemplate];
  v3 = [*(a1 + 48) currentManeuvers];
  v4 = [v3 firstObject];
  v5 = [*(a1 + 48) maneuverTravelEstimates];
  [v6 _updateBannerIfNecessaryForManeuver:v4 travelEstimates:v5];
}

- (void)finishTrip
{
  [(CPNavigationSession *)self setPauseReason:0];
  maneuvers = [(CPNavigationSession *)self maneuvers];
  [maneuvers removeAllObjects];

  laneGuidances = [(CPNavigationSession *)self laneGuidances];
  [laneGuidances removeAllObjects];

  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v5 = [navigationSessionManagerFuture addSuccessBlock:&__block_literal_global_4];
}

- (void)cancelTrip
{
  [(CPNavigationSession *)self setPauseReason:0];
  maneuvers = [(CPNavigationSession *)self maneuvers];
  [maneuvers removeAllObjects];

  laneGuidances = [(CPNavigationSession *)self laneGuidances];
  [laneGuidances removeAllObjects];

  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v5 = [navigationSessionManagerFuture addSuccessBlock:&__block_literal_global_3];
}

- (void)addManeuvers:(id)maneuvers
{
  v4 = [maneuvers copy];
  maneuvers = [(CPNavigationSession *)self maneuvers];
  if ([maneuvers count])
  {
    maneuvers2 = [(CPNavigationSession *)self maneuvers];
    lastObject = [maneuvers2 lastObject];
    v8 = [lastObject index] + 1;
  }

  else
  {
    v8 = 0;
  }

  [(CPNavigationSession *)self _updateManeuverIndiciesWithStartIndex:v8 maneuvers:v4];
  maneuvers3 = [(CPNavigationSession *)self maneuvers];
  [maneuvers3 addObjectsFromArray:v4];

  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__CPNavigationSession_addManeuvers___block_invoke;
  v13[3] = &unk_278A10840;
  v14 = v4;
  v11 = v4;
  v12 = [navigationSessionManagerFuture addSuccessBlock:v13];
}

- (void)addLaneGuidances:(id)guidances
{
  v4 = [guidances copy];
  laneGuidances = [(CPNavigationSession *)self laneGuidances];
  if ([laneGuidances count])
  {
    laneGuidances2 = [(CPNavigationSession *)self laneGuidances];
    lastObject = [laneGuidances2 lastObject];
    v8 = [lastObject index] + 1;
  }

  else
  {
    v8 = 0;
  }

  [(CPNavigationSession *)self _updateLaneGuidanceIndiciesWithStartIndex:v8 laneGuidances:v4];
  laneGuidances3 = [(CPNavigationSession *)self laneGuidances];
  [laneGuidances3 addObjectsFromArray:v4];

  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__CPNavigationSession_addLaneGuidances___block_invoke;
  v13[3] = &unk_278A10840;
  v14 = v4;
  v11 = v4;
  v12 = [navigationSessionManagerFuture addSuccessBlock:v13];
}

- (void)setUpcomingManeuvers:(NSArray *)upcomingManeuvers
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = upcomingManeuvers;
  objc_storeStrong(&self->_upcomingManeuvers, upcomingManeuvers);
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v5;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        mapTemplate = [(CPNavigationSession *)self mapTemplate];
        v14 = [mapTemplate _displayStyleForManeuver:v12];

        v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
        [array addObject:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__CPNavigationSession_setUpcomingManeuvers___block_invoke;
  v21[3] = &unk_278A107F8;
  v22 = v7;
  v23 = array;
  selfCopy = self;
  v17 = array;
  v18 = v7;
  v19 = [navigationSessionManagerFuture addSuccessBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __44__CPNavigationSession_setUpcomingManeuvers___block_invoke(uint64_t a1, void *a2)
{
  [a2 showManeuvers:*(a1 + 32) usingDisplayStyles:*(a1 + 40)];
  v3 = [*(a1 + 32) firstObject];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 48) mapTemplate];
    [v4 _postBannerIfNecessaryForManeuver:v5];

    v3 = v5;
  }
}

- (void)setCurrentLaneGuidance:(id)guidance
{
  guidanceCopy = guidance;
  objc_storeStrong(&self->_currentLaneGuidance, guidance);
  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CPNavigationSession_setCurrentLaneGuidance___block_invoke;
  v9[3] = &unk_278A10840;
  v10 = guidanceCopy;
  v7 = guidanceCopy;
  v8 = [navigationSessionManagerFuture addSuccessBlock:v9];
}

uint64_t __46__CPNavigationSession_setCurrentLaneGuidance___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return [a2 setCurrentLaneGuidance:?];
  }

  else
  {
    return [a2 clearCurrentLaneGuidance];
  }
}

- (void)setCurrentRoadNameVariants:(id)variants
{
  variantsCopy = variants;
  objc_storeStrong(&self->_currentRoadNameVariants, variants);
  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__CPNavigationSession_setCurrentRoadNameVariants___block_invoke;
  v9[3] = &unk_278A10840;
  v10 = variantsCopy;
  v7 = variantsCopy;
  v8 = [navigationSessionManagerFuture addSuccessBlock:v9];
}

- (void)setManeuverState:(int64_t)state
{
  self->_maneuverState = state;
  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__CPNavigationSession_setManeuverState___block_invoke;
  v6[3] = &__block_descriptor_40_e39_v16__0___CPNavigationSessionManaging__8l;
  v6[4] = state;
  v5 = [navigationSessionManagerFuture addSuccessBlock:v6];
}

- (void)updateTravelEstimates:(CPTravelEstimates *)estimates forManeuver:(CPManeuver *)maneuver
{
  v6 = estimates;
  v7 = maneuver;
  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__CPNavigationSession_updateTravelEstimates_forManeuver___block_invoke;
  v12[3] = &unk_278A107F8;
  v13 = v6;
  v14 = v7;
  selfCopy = self;
  v9 = v7;
  v10 = v6;
  v11 = [navigationSessionManagerFuture addSuccessBlock:v12];
}

void __57__CPNavigationSession_updateTravelEstimates_forManeuver___block_invoke(uint64_t a1, void *a2)
{
  [a2 updateTravelEstimates:*(a1 + 32) forManeuver:*(a1 + 40)];
  v3 = [*(a1 + 48) mapTemplate];
  [v3 _updateBannerIfNecessaryForManeuver:*(a1 + 40) travelEstimates:*(a1 + 32)];
}

- (void)setSendsNavigationMetadata:(BOOL)metadata
{
  self->_sendsNavigationMetadata = metadata;
  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CPNavigationSession_setSendsNavigationMetadata___block_invoke;
  v6[3] = &__block_descriptor_33_e39_v16__0___CPNavigationSessionManaging__8l;
  metadataCopy = metadata;
  v5 = [navigationSessionManagerFuture addSuccessBlock:v6];
}

- (void)setDestinationNameVariants:(id)variants
{
  variantsCopy = variants;
  objc_storeStrong(&self->_destinationNameVariants, variants);
  navigationSessionManagerFuture = [(CPNavigationSession *)self navigationSessionManagerFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__CPNavigationSession_setDestinationNameVariants___block_invoke;
  v9[3] = &unk_278A10840;
  v10 = variantsCopy;
  v7 = variantsCopy;
  v8 = [navigationSessionManagerFuture addSuccessBlock:v9];
}

- (CPMapTemplate)mapTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapTemplate);

  return WeakRetained;
}

@end