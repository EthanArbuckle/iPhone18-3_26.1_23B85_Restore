@interface ATXUpcomingCommuteFromWorkAnchor
+ (BOOL)isActive;
+ (id)anchorOccurenceDateFromDuetEvent:(id)event;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)predicateForContextStoreRegistration;
+ (id)sampleEvent;
@end

@implementation ATXUpcomingCommuteFromWorkAnchor

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___ATXUpcomingCommuteFromWorkAnchor;
  v5 = objc_msgSendSuper2(&v10, sel_fetchAnchorOccurrencesBetweenStartDate_endDate_, date, endDate);
  v6 = [v5 _pas_filteredArrayWithTest:&__block_literal_global_131];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__ATXUpcomingCommuteFromWorkAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2;
  v9[3] = &__block_descriptor_40_e44___ATXTripDuetEvent_16__0__ATXTripDuetEvent_8l;
  v9[4] = self;
  v7 = [v6 _pas_mappedArrayWithTransform:v9];

  return v7;
}

BOOL __83__ATXUpcomingCommuteFromWorkAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 origin] == 2 && objc_msgSend(v2, "destination") == 1;

  return v3;
}

id __83__ATXUpcomingCommuteFromWorkAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() secondsOfInfluence];
  v4 = [v3 convertToUpcomingCommuteEventWithWindowDuration:?];

  return v4;
}

+ (id)anchorOccurenceDateFromDuetEvent:(id)event
{
  v3 = MEMORY[0x277CBEAA8];
  eventCopy = event;
  v5 = [v3 alloc];
  [objc_opt_class() secondsOfInfluence];
  v7 = -v6;
  endDate = [eventCopy endDate];

  v9 = [v5 initWithTimeInterval:endDate sinceDate:v7];

  return v9;
}

+ (id)predicateForContextStoreRegistration
{
  keyPathForContextStore = [objc_opt_class() keyPathForContextStore];
  v3 = MEMORY[0x277CFE360];
  locationOfInterestTypeKey = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
  transitionWithinTimeIntervalKey = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  transitionWithinTimeIntervalKey2 = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v7 = [v3 predicateForKeyPath:keyPathForContextStore withFormat:@"SUBQUERY(SELF.%@.value, $prediction, $prediction.%K = %@ AND $prediction.%K <= %@ AND $prediction.%K > %@).@count > 0", keyPathForContextStore, locationOfInterestTypeKey, &unk_283A56A50, transitionWithinTimeIntervalKey, &unk_283A56A68, transitionWithinTimeIntervalKey2, &unk_283A56A80];

  return v7;
}

+ (BOOL)isActive
{
  v3 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];
  v10 = v3 && ([v3 startDate], v5 = v4 = v3;

  return v10;
}

+ (id)sampleEvent
{
  v2 = [ATXTripDuetEvent alloc];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-20.0];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-10.0];
  v5 = [(ATXTripDuetEvent *)v2 initWithOrigin:2 destination:1 durationAtOrigin:v3 startDate:v4 endDate:0.0];

  return v5;
}

@end