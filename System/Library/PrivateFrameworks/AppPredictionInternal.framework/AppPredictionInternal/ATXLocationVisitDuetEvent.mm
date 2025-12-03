@interface ATXLocationVisitDuetEvent
- (ATXLocationVisitDuetEvent)initWithCoder:(id)coder;
- (ATXLocationVisitDuetEvent)initWithCurrentContextStoreValues;
- (ATXLocationVisitDuetEvent)initWithCurrentContextStoreValues:(id)values;
- (ATXLocationVisitDuetEvent)initWithLocationOfInterestIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate;
- (id)description;
- (id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXLocationVisitDuetEvent

- (ATXLocationVisitDuetEvent)initWithLocationOfInterestIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  if (!identifierCopy)
  {
    [ATXLocationVisitDuetEvent initWithLocationOfInterestIdentifier:a2 startDate:self endDate:?];
  }

  v15.receiver = self;
  v15.super_class = ATXLocationVisitDuetEvent;
  v12 = [(ATXDuetEvent *)&v15 initWithStartDate:dateCopy endDate:endDateCopy];
  v13 = v12;
  if (v12)
  {
    [(ATXDuetEvent *)v12 setLocationIdentifier:identifierCopy];
  }

  return v13;
}

- (ATXLocationVisitDuetEvent)initWithCurrentContextStoreValues
{
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v4 = [(ATXLocationVisitDuetEvent *)self initWithCurrentContextStoreValues:mEMORY[0x277D41BF8]];

  return v4;
}

- (ATXLocationVisitDuetEvent)initWithCurrentContextStoreValues:(id)values
{
  previousLOIAndCurrentLOI = [values previousLOIAndCurrentLOI];
  second = [previousLOIAndCurrentLOI second];

  if (second)
  {
    uuid = [second uuid];
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    self = [(ATXLocationVisitDuetEvent *)self initWithLocationOfInterestIdentifier:uuid startDate:v7 endDate:v8];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)identifier
{
  locationIdentifier = [(ATXDuetEvent *)self locationIdentifier];
  uUIDString = [locationIdentifier UUIDString];

  return uUIDString;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  locationIdentifier = [(ATXDuetEvent *)self locationIdentifier];
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v7 = [v3 stringWithFormat:@"LOI: %@, start date: %@, end date: %@", locationIdentifier, startDate, endDate];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(ATXDuetEvent *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"codingKeyForStartDate"];

  endDate = [(ATXDuetEvent *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"codingKeyForEndDate"];

  locationIdentifier = [(ATXDuetEvent *)self locationIdentifier];
  [coderCopy encodeObject:locationIdentifier forKey:@"codingKeyForLocationIdentifier"];
}

- (ATXLocationVisitDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.LocationVisit" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.LocationVisit" errorCode:-1 logHandle:v13];

    if (v14 && ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForLocationIdentifier" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.LocationVisit" errorCode:-1 logHandle:v18];

      if (v19 && ([coderCopy error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        self = [(ATXLocationVisitDuetEvent *)self initWithLocationOfInterestIdentifier:v19 startDate:v8 endDate:v14];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithLocationOfInterestIdentifier:(uint64_t)a1 startDate:(uint64_t)a2 endDate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLocationVisitDuetEvent.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"locationOfInterestId"}];
}

@end