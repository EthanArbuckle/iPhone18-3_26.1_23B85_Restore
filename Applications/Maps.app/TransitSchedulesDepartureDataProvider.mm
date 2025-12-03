@interface TransitSchedulesDepartureDataProvider
+ (double)durationForVisibleDeparturesStartingAtDate:(id)date timeZone:(id)zone;
+ (id)departureSequenceContainingTripIdentifier:(unint64_t)identifier departureSequences:(id)sequences;
+ (id)serviceTraitsForScheduleDate:(id)date timeZone:(id)zone;
- (BOOL)selectDepartureWithTripIdentifier:(unint64_t)identifier;
- (NSArray)departures;
- (TransitSchedulesDepartureDataProvider)initWithTransitMapItem:(id)item selectedDepartureSequence:(id)sequence departureSequences:(id)sequences timeZone:(id)zone initialScheduleDate:(id)date;
- (TransitSchedulesDepartureDataProviderDelegate)delegate;
- (id)_departureSequenceContainingTripIdentifier:(unint64_t)identifier;
- (id)filterActiveDepartureSequencesFrom:(id)from referenceDate:(id)date;
- (id)frequencyStringForDeparture:(id)departure;
- (id)selectDepartureAtIndex:(unint64_t)index;
- (unint64_t)_indexForNextIncomingDeparture;
- (unint64_t)_indexForSelectedTripIdentifier;
- (unint64_t)_indexForTripIdentifier:(unint64_t)identifier scheduledDepartureDate:(id)date;
- (unint64_t)indexForDepartureSequence:(id)sequence;
- (unint64_t)timeDisplayStyle;
- (void)_clearDepartures;
- (void)_fetchNewScheduleDataForDate:(id)date tripIdentifier:(unint64_t)identifier withHandler:(id)handler;
- (void)processDeparturesFromDepartureSequences:(id)sequences animatingDifferences:(BOOL)differences;
- (void)selectDepartureSequence:(id)sequence;
- (void)selectDepartureSequenceAtIndex:(unint64_t)index;
- (void)selectNextIncomingDeparture;
- (void)setScheduleWindowStartDate:(id)date;
@end

@implementation TransitSchedulesDepartureDataProvider

- (TransitSchedulesDepartureDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)timeDisplayStyle
{
  firstObject = [(NSArray *)self->_departureSequences firstObject];
  departureTimeDisplayStyle = [firstObject departureTimeDisplayStyle];

  return departureTimeDisplayStyle;
}

- (void)selectNextIncomingDeparture
{
  _indexForNextIncomingDeparture = [(TransitSchedulesDepartureDataProvider *)self _indexForNextIncomingDeparture];
  if (_indexForNextIncomingDeparture != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(TransitSchedulesDepartureDataProvider *)self selectDepartureAtIndex:_indexForNextIncomingDeparture];
  }
}

- (void)selectDepartureSequenceAtIndex:(unint64_t)index
{
  obj = [(NSArray *)self->_departureSequences objectAtIndexedSubscript:?];
  headsign = [obj headsign];
  headsign2 = [(GEOTransitDepartureSequence *)self->_selectedDepartureSequence headsign];
  v7 = [headsign isEqualToString:headsign2];

  if ((v7 & 1) == 0)
  {
    selectedDeparture = self->_selectedDeparture;
    self->_selectedDeparture = 0;

    objc_storeStrong(&self->_selectedDepartureSequence, obj);
    delegate = [(TransitSchedulesDepartureDataProvider *)self delegate];
    [delegate departureDataProvider:self selectedDepartureSequence:self->_selectedDepartureSequence withIndex:index];

    delegate2 = [(TransitSchedulesDepartureDataProvider *)self delegate];
    departures = [(TransitSchedulesDepartureDataProvider *)self departures];
    [delegate2 departureDataProvider:self updatedDepartures:departures];
  }
}

- (void)selectDepartureSequence:(id)sequence
{
  sequenceCopy = sequence;
  v5 = [(TransitSchedulesDepartureDataProvider *)self indexForDepartureSequence:sequenceCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = sub_100798DBC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      headsign = [sequenceCopy headsign];
      v8 = 138412290;
      v9 = headsign;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "attempted to select headsign %@ but couldn't find it", &v8, 0xCu);
    }
  }

  [(TransitSchedulesDepartureDataProvider *)self selectDepartureSequenceAtIndex:v5];
}

- (unint64_t)indexForDepartureSequence:(id)sequence
{
  sequenceCopy = sequence;
  v5 = sequenceCopy;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (self->_selectedDepartureSequence)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    departureSequences = self->_departureSequences;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100CBBCB8;
    v9[3] = &unk_101650480;
    v10 = sequenceCopy;
    v11 = &v12;
    [(NSArray *)departureSequences enumerateObjectsUsingBlock:v9];
    v6 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  return v6;
}

- (id)selectDepartureAtIndex:(unint64_t)index
{
  departures = [(TransitSchedulesDepartureDataProvider *)self departures];
  if ([departures count] > index)
  {
    v6 = [departures objectAtIndexedSubscript:index];
    selectedDeparture = self->_selectedDeparture;
    self->_selectedDeparture = v6;
    v8 = v6;

    delegate = [(TransitSchedulesDepartureDataProvider *)self delegate];
    [delegate departureDataProvider:self selectedDeparture:v8 withIndex:index];
  }

  return 0;
}

- (unint64_t)_indexForNextIncomingDeparture
{
  departures = [(TransitSchedulesDepartureDataProvider *)self departures];
  if ([departures count])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100CBBF3C;
    v7[3] = &unk_101650458;
    v7[4] = &v8;
    [departures enumerateObjectsUsingBlock:v7];
    v3 = v9[3];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = sub_100798DBC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "No incoming departures, so selecting the most recent one", v6, 2u);
      }

      v3 = [departures count] - 1;
      v9[3] = v3;
    }

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

- (unint64_t)_indexForSelectedTripIdentifier
{
  selectedDeparture = self->_selectedDeparture;
  if (!selectedDeparture)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  tripIdentifier = [(GEOTransitDeparture *)selectedDeparture tripIdentifier];
  scheduledDepartureDate = [(GEOTransitDeparture *)self->_selectedDeparture scheduledDepartureDate];
  v6 = [(TransitSchedulesDepartureDataProvider *)self _indexForTripIdentifier:tripIdentifier scheduledDepartureDate:scheduledDepartureDate];

  return v6;
}

- (unint64_t)_indexForTripIdentifier:(unint64_t)identifier scheduledDepartureDate:(id)date
{
  dateCopy = date;
  departures = [(TransitSchedulesDepartureDataProvider *)self departures];
  if ([departures count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100CBC0C8;
    v10[3] = &unk_101650430;
    identifierCopy = identifier;
    v11 = dateCopy;
    v8 = [departures indexOfObjectPassingTest:v10];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)_departureSequenceContainingTripIdentifier:(unint64_t)identifier
{
  v5 = objc_opt_class();
  departureSequences = self->_departureSequences;

  return [v5 departureSequenceContainingTripIdentifier:identifier departureSequences:departureSequences];
}

- (BOOL)selectDepartureWithTripIdentifier:(unint64_t)identifier
{
  if (!self->_selectedDepartureSequence)
  {
    v5 = [(TransitSchedulesDepartureDataProvider *)self _departureSequenceContainingTripIdentifier:identifier];
    selectedDepartureSequence = self->_selectedDepartureSequence;
    self->_selectedDepartureSequence = v5;
  }

  v7 = [(TransitSchedulesDepartureDataProvider *)self _indexForTripIdentifier:identifier scheduledDepartureDate:0];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(TransitSchedulesDepartureDataProvider *)self selectDepartureAtIndex:v7];
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (NSArray)departures
{
  if (!self->_selectedDepartureSequence)
  {
    v3 = sub_100798DBC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Requested departures but there is no selected departure sequence", v8, 2u);
    }
  }

  if ([(NSMutableDictionary *)self->_accruedDepartures count])
  {
    accruedDepartures = self->_accruedDepartures;
    headsign = [(GEOTransitDepartureSequence *)self->_selectedDepartureSequence headsign];
    departures = [(NSMutableDictionary *)accruedDepartures objectForKeyedSubscript:headsign];
  }

  else
  {
    departures = [(GEOTransitDepartureSequence *)self->_selectedDepartureSequence departures];
  }

  return departures;
}

- (void)processDeparturesFromDepartureSequences:(id)sequences animatingDifferences:(BOOL)differences
{
  sequencesCopy = sequences;
  if (![sequencesCopy count])
  {
    v6 = sub_100798DBC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(NSArray *)self->_departureSequences count];
      *buf = 134217984;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "The data provider is attempting to process a response without departure sequences. The provider currently has %ld sequences", buf, 0xCu);
    }
  }

  v8 = +[MKTransitItemReferenceDateUpdater referenceDate];
  v9 = [(TransitSchedulesDepartureDataProvider *)self filterActiveDepartureSequencesFrom:sequencesCopy referenceDate:v8];

  v10 = [v9 copy];
  objc_storeStrong(&self->_departureSequences, v10);
  headsign = [(GEOTransitDepartureSequence *)self->_selectedDepartureSequence headsign];
  if (self->_arePastDeparturesDroppedByService)
  {
    if (!self->_accruedDepartures)
    {
      v12 = +[NSMutableDictionary dictionary];
      accruedDepartures = self->_accruedDepartures;
      self->_accruedDepartures = v12;
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100CBC5E0;
    v25[3] = &unk_1016503B8;
    v25[4] = self;
    [v10 enumerateObjectsUsingBlock:v25];
  }

  selectedDeparture = self->_selectedDeparture;
  if (selectedDeparture)
  {
    v15 = [(TransitSchedulesDepartureDataProvider *)self _departureSequenceContainingTripIdentifier:[(GEOTransitDeparture *)selectedDeparture tripIdentifier]];
    selectedDepartureSequence = self->_selectedDepartureSequence;
    self->_selectedDepartureSequence = v15;
  }

  if (!self->_selectedDepartureSequence)
  {
    v17 = sub_100798DBC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = headsign;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "No selectedDepartureSequence found after update. Selected headsign prior to update: %@", buf, 0xCu);
    }

    firstObject = [(NSArray *)self->_departureSequences firstObject];
    v19 = self->_selectedDepartureSequence;
    self->_selectedDepartureSequence = firstObject;
  }

  delegate = [(TransitSchedulesDepartureDataProvider *)self delegate];
  [delegate departureDataProvider:self updatedDepartureSequences:self->_departureSequences];

  delegate2 = [(TransitSchedulesDepartureDataProvider *)self delegate];
  departures = [(TransitSchedulesDepartureDataProvider *)self departures];
  [delegate2 departureDataProvider:self updatedDepartures:departures];

  _indexForSelectedTripIdentifier = [(TransitSchedulesDepartureDataProvider *)self _indexForSelectedTripIdentifier];
  if (_indexForSelectedTripIdentifier != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [(TransitSchedulesDepartureDataProvider *)self selectDepartureAtIndex:_indexForSelectedTripIdentifier];
  }
}

- (id)filterActiveDepartureSequencesFrom:(id)from referenceDate:(id)date
{
  fromCopy = from;
  dateCopy = date;
  if ([fromCopy count] == 1)
  {
    v8 = fromCopy;
  }

  else
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100CBCB44;
    v16 = &unk_101650390;
    v17 = dateCopy;
    selfCopy = self;
    v9 = [fromCopy indexesOfObjectsPassingTest:&v13];
    if ([v9 count] && (v10 = objc_msgSend(v9, "count"), v10 != objc_msgSend(fromCopy, "count")))
    {
      v11 = [fromCopy objectsAtIndexes:v9];
    }

    else
    {
      v11 = fromCopy;
    }

    v8 = v11;
  }

  return v8;
}

- (id)frequencyStringForDeparture:(id)departure
{
  if (departure)
  {
    scheduledDepartureDate = [departure scheduledDepartureDate];
    v5 = [(GEOTransitDepartureSequence *)self->_selectedDepartureSequence frequencyToDescribeAtDate:scheduledDepartureDate];
    if (v5)
    {
      v6 = [NSString _navigation_formattedDescriptionForFrequency:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setScheduleWindowStartDate:(id)date
{
  dateCopy = date;
  if (![(NSDate *)self->_scheduleWindowStartDate isEqualToDate:dateCopy])
  {
    objc_storeStrong(&self->_scheduleWindowStartDate, date);
    tripIdentifier = [(GEOTransitDeparture *)self->_selectedDeparture tripIdentifier];
    [(TransitSchedulesDepartureDataProvider *)self _clearDepartures];
    [(TransitSchedulesDepartureDataProvider *)self setRemoteNetworkState:2];
    objc_initWeak(&location, self);
    scheduleWindowStartDate = self->_scheduleWindowStartDate;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100CBCDAC;
    v8[3] = &unk_101650368;
    objc_copyWeak(&v9, &location);
    [(TransitSchedulesDepartureDataProvider *)self _fetchNewScheduleDataForDate:scheduleWindowStartDate tripIdentifier:tripIdentifier withHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_clearDepartures
{
  departureSequences = self->_departureSequences;
  self->_departureSequences = 0;

  delegate = [(TransitSchedulesDepartureDataProvider *)self delegate];
  [delegate departureDataProvider:self updatedDepartures:0];
}

- (void)_fetchNewScheduleDataForDate:(id)date tripIdentifier:(unint64_t)identifier withHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  muid = [(MKMapItemIdentifier *)self->_stationIdentifier muid];
  v11 = [objc_opt_class() serviceTraitsForScheduleDate:dateCopy timeZone:self->_timeZone];
  objc_initWeak(&location, self);
  v12 = +[MKMapService sharedService];
  v13 = [v12 ticketForTransitDeparturesAtStation:muid line:self->_transitLineIdentifier referenceTripID:identifier includeAllDirectionNames:-[TransitSchedulesDepartureDataProvider requestAllDirections](self traits:{"requestAllDirections"), v11}];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100CBD0FC;
  v15[3] = &unk_10165E308;
  objc_copyWeak(&v17, &location);
  v14 = handlerCopy;
  v16 = v14;
  [v13 submitWithHandler:v15 networkActivity:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (TransitSchedulesDepartureDataProvider)initWithTransitMapItem:(id)item selectedDepartureSequence:(id)sequence departureSequences:(id)sequences timeZone:(id)zone initialScheduleDate:(id)date
{
  itemCopy = item;
  sequenceCopy = sequence;
  sequencesCopy = sequences;
  zoneCopy = zone;
  dateCopy = date;
  v34.receiver = self;
  v34.super_class = TransitSchedulesDepartureDataProvider;
  v17 = [(TransitSchedulesDepartureDataProvider *)&v34 init];
  if (v17)
  {
    if (zoneCopy)
    {
      timeZone = zoneCopy;
    }

    else
    {
      timeZone = [itemCopy timeZone];
    }

    timeZone = v17->_timeZone;
    v17->_timeZone = timeZone;

    _identifier = [itemCopy _identifier];
    stationIdentifier = v17->_stationIdentifier;
    v17->_stationIdentifier = _identifier;

    name = [itemCopy name];
    stationName = v17->_stationName;
    v17->_stationName = name;

    v24 = [sequencesCopy copy];
    departureSequences = v17->_departureSequences;
    v17->_departureSequences = v24;

    objc_storeStrong(&v17->_selectedDepartureSequence, sequence);
    departures = [(GEOTransitDepartureSequence *)v17->_selectedDepartureSequence departures];
    v17->_remoteNetworkState = departures != 0;

    line = [sequenceCopy line];
    v28 = line;
    if (line)
    {
      line2 = line;
    }

    else
    {
      firstObject = [sequencesCopy firstObject];
      line2 = [firstObject line];
    }

    v17->_transitLineIdentifier = [line2 muid];
    objc_storeStrong(&v17->_scheduleWindowStartDate, date);
    v31 = +[GEOCountryConfiguration sharedConfiguration];
    countryCode = [v31 countryCode];
    v17->_arePastDeparturesDroppedByService = [countryCode isEqualToString:@"CN"];
  }

  return v17;
}

+ (id)departureSequenceContainingTripIdentifier:(unint64_t)identifier departureSequences:(id)sequences
{
  sequencesCopy = sequences;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100CBD72C;
  v15 = sub_100CBD73C;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100CBD744;
  v10[3] = &unk_101650408;
  v10[4] = &v11;
  v10[5] = identifier;
  [sequencesCopy enumerateObjectsUsingBlock:v10];
  v6 = v12[5];
  if (!v6)
  {
    v7 = sub_100798DBC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not find a departureSequence containing the trip identifier %llu", buf, 0xCu);
    }

    v6 = v12[5];
  }

  v8 = v6;
  _Block_object_dispose(&v11, 8);

  return v8;
}

+ (id)serviceTraitsForScheduleDate:(id)date timeZone:(id)zone
{
  zoneCopy = zone;
  dateCopy = date;
  v8 = +[MKMapService sharedService];
  defaultTraits = [v8 defaultTraits];

  [self durationForVisibleDeparturesStartingAtDate:dateCopy timeZone:zoneCopy];
  v11 = v10;

  [dateCopy timeIntervalSinceReferenceDate];
  v13 = v12;

  transitScheduleFilter = [defaultTraits transitScheduleFilter];
  highFrequencyFilter = [transitScheduleFilter highFrequencyFilter];
  timeRange = [highFrequencyFilter timeRange];
  [timeRange setStartTime:v13];

  highFrequencyFilter2 = [transitScheduleFilter highFrequencyFilter];
  timeRange2 = [highFrequencyFilter2 timeRange];
  [timeRange2 setDuration:v11];

  highFrequencyFilter3 = [transitScheduleFilter highFrequencyFilter];
  [highFrequencyFilter3 setNumAdditionalDepartures:0];

  lowFrequencyFilter = [transitScheduleFilter lowFrequencyFilter];
  timeRange3 = [lowFrequencyFilter timeRange];
  [timeRange3 setStartTime:v13];

  lowFrequencyFilter2 = [transitScheduleFilter lowFrequencyFilter];
  timeRange4 = [lowFrequencyFilter2 timeRange];
  [timeRange4 setDuration:v11];

  lowFrequencyFilter3 = [transitScheduleFilter lowFrequencyFilter];
  [lowFrequencyFilter3 setNumAdditionalDepartures:0];

  operatingHoursRange = [transitScheduleFilter operatingHoursRange];
  [operatingHoursRange setStartTime:v13];

  operatingHoursRange2 = [transitScheduleFilter operatingHoursRange];
  [operatingHoursRange2 setDuration:v11];

  return defaultTraits;
}

+ (double)durationForVisibleDeparturesStartingAtDate:(id)date timeZone:(id)zone
{
  zoneCopy = zone;
  dateCopy = date;
  v7 = +[NSCalendar currentCalendar];
  [v7 setTimeZone:zoneCopy];

  v8 = [v7 components:2097180 fromDate:dateCopy];
  [v8 setDay:{objc_msgSend(v8, "day") + 1}];
  [v8 setHour:3];
  v9 = [v7 dateFromComponents:v8];
  [v9 timeIntervalSinceDate:dateCopy];
  v11 = v10;

  return fmax(v11, 43200.0);
}

@end