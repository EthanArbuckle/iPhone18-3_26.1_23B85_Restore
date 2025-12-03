@interface ATXTripDuetEvent
- (ATXTripDuetEvent)initWithCurrentContextStoreValues;
- (ATXTripDuetEvent)initWithCurrentContextStoreValuesWithOriginLOI:(id)i ignoreBeforeDate:(id)date;
- (ATXTripDuetEvent)initWithOrigin:(int)origin destination:(int)destination durationAtOrigin:(double)atOrigin startDate:(id)date endDate:(id)endDate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXTripDuetEvent:(id)event;
- (id)convertToUpcomingCommuteEventWithWindowDuration:(double)duration;
- (id)description;
- (id)identifier;
- (int)rtLocationToBMSemanticLocation:(int64_t)location;
@end

@implementation ATXTripDuetEvent

- (ATXTripDuetEvent)initWithOrigin:(int)origin destination:(int)destination durationAtOrigin:(double)atOrigin startDate:(id)date endDate:(id)endDate
{
  v11.receiver = self;
  v11.super_class = ATXTripDuetEvent;
  result = [(ATXDuetEvent *)&v11 initWithStartDate:date endDate:endDate];
  if (result)
  {
    result->_origin = origin;
    result->_destination = destination;
    result->_durationAtOrigin = atOrigin;
  }

  return result;
}

- (ATXTripDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CBEAA8] now];
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  locationOfInterestAtCurrentLocation = [mEMORY[0x277D41BF8] locationOfInterestAtCurrentLocation];

  v6 = [(ATXTripDuetEvent *)self initWithCurrentContextStoreValuesWithOriginLOI:locationOfInterestAtCurrentLocation ignoreBeforeDate:v3];
  return v6;
}

- (ATXTripDuetEvent)initWithCurrentContextStoreValuesWithOriginLOI:(id)i ignoreBeforeDate:(id)date
{
  v46 = *MEMORY[0x277D85DE8];
  iCopy = i;
  dateCopy = date;
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForPredictedLocationOfInterestTransitions = [MEMORY[0x277CFE338] keyPathForPredictedLocationOfInterestTransitions];
  v10 = [userContext objectForKeyedSubscript:keyPathForPredictedLocationOfInterestTransitions];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      if ([v11 count])
      {
        v12 = [v11 objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v39 = v11;
          v14 = [v11 objectAtIndexedSubscript:0];
          locationOfInterestTypeKey = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
          v16 = [v14 objectForKeyedSubscript:locationOfInterestTypeKey];
          integerValue = [v16 integerValue];

          v41 = [(ATXTripDuetEvent *)self rtLocationToBMSemanticLocation:integerValue];
          transitionWithinTimeIntervalKey = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
          v40 = v14;
          v19 = [v14 objectForKeyedSubscript:transitionWithinTimeIntervalKey];
          [v19 doubleValue];
          v21 = v20;

          keyPathForPredictedLocationOfInterestTransitions2 = [MEMORY[0x277CFE338] keyPathForPredictedLocationOfInterestTransitions];
          v23 = [userContext lastModifiedDateForContextualKeyPath:keyPathForPredictedLocationOfInterestTransitions2];

          v24 = [v23 dateByAddingTimeInterval:v21];
          if (dateCopy && ([dateCopy laterDate:v24], v25 = objc_claimAutoreleasedReturnValue(), v25, v25 == dateCopy))
          {
            v36 = __atxlog_handle_default();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v24;
              _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "Ignoring current predicted transition because expected commute date is in the past: %@", buf, 0xCu);
            }

            selfCopy = 0;
            v11 = v39;
          }

          else
          {
            if (iCopy)
            {
              v26 = -[ATXTripDuetEvent rtLocationToBMSemanticLocation:](self, "rtLocationToBMSemanticLocation:", [iCopy type]);
            }

            else
            {
              v26 = 0;
            }

            v11 = v39;
            v35 = __atxlog_handle_default();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v43 = v41;
              v44 = 2112;
              v45 = v24;
              _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "Current expected commute to %lu at %@", buf, 0x16u);
            }

            self = [(ATXTripDuetEvent *)self initWithOrigin:v26 destination:v41 durationAtOrigin:v24 startDate:v24 endDate:0.0];
            selfCopy = self;
          }

          goto LABEL_31;
        }

        v34 = __atxlog_handle_default();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [ATXTripDuetEvent initWithCurrentContextStoreValuesWithOriginLOI:ignoreBeforeDate:];
        }

        v31 = MEMORY[0x277CBEAD8];
        v32 = *MEMORY[0x277CBE658];
        v33 = @"ContextStore's 'keyPathForPredictedLocationOfInterestTransitions' contained no elements.";
      }

      else
      {
        v30 = __atxlog_handle_default();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [ATXTripDuetEvent initWithCurrentContextStoreValuesWithOriginLOI:ignoreBeforeDate:];
        }

        v31 = MEMORY[0x277CBEAD8];
        v32 = *MEMORY[0x277CBE658];
        v33 = @"ContextStore's 'keyPathForPredictedLocationOfInterestTransitions' is an empty NSArray.";
      }

      [v31 raise:v32 format:v33];
      selfCopy = 0;
LABEL_31:

      goto LABEL_32;
    }

    v28 = __atxlog_handle_default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ATXTripDuetEvent initWithCurrentContextStoreValuesWithOriginLOI:ignoreBeforeDate:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"ContextStore's 'keyPathForPredictedLocationOfInterestTransitions' is not an NSArray."];
  }

  else
  {
    v27 = __atxlog_handle_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [ATXTripDuetEvent initWithCurrentContextStoreValuesWithOriginLOI:ignoreBeforeDate:];
    }
  }

  selfCopy = 0;
LABEL_32:

  v37 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (int)rtLocationToBMSemanticLocation:(int64_t)location
{
  if (location < 4)
  {
    return location + 1;
  }

  else
  {
    return 0;
  }
}

- (id)convertToUpcomingCommuteEventWithWindowDuration:(double)duration
{
  durationAtOrigin = self->_durationAtOrigin;
  if (durationAtOrigin <= duration)
  {
    durationCopy = self->_durationAtOrigin;
  }

  else
  {
    durationCopy = duration;
  }

  if (durationAtOrigin <= 0.0)
  {
    durationCopy2 = duration;
  }

  else
  {
    durationCopy2 = durationCopy;
  }

  startDate = [(ATXDuetEvent *)self startDate];
  v8 = [startDate dateByAddingTimeInterval:-durationCopy2];

  v9 = [ATXTripDuetEvent alloc];
  origin = [(ATXTripDuetEvent *)self origin];
  destination = [(ATXTripDuetEvent *)self destination];
  [(ATXTripDuetEvent *)self durationAtOrigin];
  v13 = v12;
  startDate2 = [(ATXDuetEvent *)self startDate];
  v15 = [(ATXTripDuetEvent *)v9 initWithOrigin:origin destination:destination durationAtOrigin:v8 startDate:startDate2 endDate:v13];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTripDuetEvent *)self isEqualToATXTripDuetEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXTripDuetEvent:(id)event
{
  eventCopy = event;
  origin = [(ATXTripDuetEvent *)self origin];
  if (origin == [eventCopy origin] && (v6 = -[ATXTripDuetEvent destination](self, "destination"), v6 == objc_msgSend(eventCopy, "destination")))
  {
    startDate = [(ATXDuetEvent *)self startDate];
    startDate2 = [eventCopy startDate];
    if ([startDate isEqualToDate:startDate2])
    {
      endDate = [(ATXDuetEvent *)self endDate];
      endDate2 = [eventCopy endDate];
      if ([endDate isEqualToDate:endDate2])
      {
        [(ATXTripDuetEvent *)self durationAtOrigin];
        v12 = v11;
        [eventCopy durationAtOrigin];
        v14 = v12 == v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  origin = [(ATXTripDuetEvent *)self origin];
  destination = [(ATXTripDuetEvent *)self destination];
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  [(ATXTripDuetEvent *)self durationAtOrigin];
  v9 = [v3 initWithFormat:@"ATXTripDuetEvent origin: %lu, dest: %lu, startDate: %@, endDate: %@, durationAtOrigin: %f", origin, destination, startDate, endDate, v8];

  return v9;
}

- (id)identifier
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu to %lu", -[ATXTripDuetEvent origin](self, "origin"), -[ATXTripDuetEvent destination](self, "destination")];

  return v2;
}

@end