@interface ATXLocationVisitDuetEvent
- (ATXLocationVisitDuetEvent)initWithCoder:(id)a3;
- (ATXLocationVisitDuetEvent)initWithCurrentContextStoreValues;
- (ATXLocationVisitDuetEvent)initWithCurrentContextStoreValues:(id)a3;
- (ATXLocationVisitDuetEvent)initWithLocationOfInterestIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)description;
- (id)identifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXLocationVisitDuetEvent

- (ATXLocationVisitDuetEvent)initWithLocationOfInterestIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [ATXLocationVisitDuetEvent initWithLocationOfInterestIdentifier:a2 startDate:self endDate:?];
  }

  v15.receiver = self;
  v15.super_class = ATXLocationVisitDuetEvent;
  v12 = [(ATXDuetEvent *)&v15 initWithStartDate:v10 endDate:v11];
  v13 = v12;
  if (v12)
  {
    [(ATXDuetEvent *)v12 setLocationIdentifier:v9];
  }

  return v13;
}

- (ATXLocationVisitDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277D41BF8] sharedInstance];
  v4 = [(ATXLocationVisitDuetEvent *)self initWithCurrentContextStoreValues:v3];

  return v4;
}

- (ATXLocationVisitDuetEvent)initWithCurrentContextStoreValues:(id)a3
{
  v4 = [a3 previousLOIAndCurrentLOI];
  v5 = [v4 second];

  if (v5)
  {
    v6 = [v5 uuid];
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    self = [(ATXLocationVisitDuetEvent *)self initWithLocationOfInterestIdentifier:v6 startDate:v7 endDate:v8];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)identifier
{
  v2 = [(ATXDuetEvent *)self locationIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXDuetEvent *)self locationIdentifier];
  v5 = [(ATXDuetEvent *)self startDate];
  v6 = [(ATXDuetEvent *)self endDate];
  v7 = [v3 stringWithFormat:@"LOI: %@, start date: %@, end date: %@", v4, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXDuetEvent *)self startDate];
  [v4 encodeObject:v5 forKey:@"codingKeyForStartDate"];

  v6 = [(ATXDuetEvent *)self endDate];
  [v4 encodeObject:v6 forKey:@"codingKeyForEndDate"];

  v7 = [(ATXDuetEvent *)self locationIdentifier];
  [v4 encodeObject:v7 forKey:@"codingKeyForLocationIdentifier"];
}

- (ATXLocationVisitDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.LocationVisit" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.LocationVisit" errorCode:-1 logHandle:v13];

    if (v14 && ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForLocationIdentifier" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.LocationVisit" errorCode:-1 logHandle:v18];

      if (v19 && ([v4 error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        self = [(ATXLocationVisitDuetEvent *)self initWithLocationOfInterestIdentifier:v19 startDate:v8 endDate:v14];
        v10 = self;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithLocationOfInterestIdentifier:(uint64_t)a1 startDate:(uint64_t)a2 endDate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLocationVisitDuetEvent.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"locationOfInterestId"}];
}

@end