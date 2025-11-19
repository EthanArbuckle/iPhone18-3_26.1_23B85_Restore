@interface ATXUpcomingCommuteToWorkAnchor
+ (BOOL)isActive;
+ (id)anchorOccurenceDateFromDuetEvent:(id)a3;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)a3 endDate:(id)a4;
+ (id)predicateForContextStoreRegistration;
+ (id)sampleEvent;
@end

@implementation ATXUpcomingCommuteToWorkAnchor

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)a3 endDate:(id)a4
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___ATXUpcomingCommuteToWorkAnchor;
  v5 = objc_msgSendSuper2(&v10, sel_fetchAnchorOccurrencesBetweenStartDate_endDate_, a3, a4);
  v6 = [v5 _pas_filteredArrayWithTest:&__block_literal_global_249];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ATXUpcomingCommuteToWorkAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2;
  v9[3] = &__block_descriptor_40_e44___ATXTripDuetEvent_16__0__ATXTripDuetEvent_8l;
  v9[4] = a1;
  v7 = [v6 _pas_mappedArrayWithTransform:v9];

  return v7;
}

BOOL __81__ATXUpcomingCommuteToWorkAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 origin] == 1 && objc_msgSend(v2, "destination") == 2;

  return v3;
}

id __81__ATXUpcomingCommuteToWorkAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() secondsOfInfluence];
  v4 = [v3 convertToUpcomingCommuteEventWithWindowDuration:?];

  return v4;
}

+ (id)anchorOccurenceDateFromDuetEvent:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 alloc];
  [objc_opt_class() secondsOfInfluence];
  v7 = -v6;
  v8 = [v4 endDate];

  v9 = [v5 initWithTimeInterval:v8 sinceDate:v7];

  return v9;
}

+ (id)predicateForContextStoreRegistration
{
  v2 = [objc_opt_class() keyPathForContextStore];
  v3 = MEMORY[0x277CFE360];
  v4 = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
  v5 = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v6 = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v7 = [v3 predicateForKeyPath:v2 withFormat:@"SUBQUERY(SELF.%@.value, $prediction, $prediction.%K = %@ AND $prediction.%K <= %@ AND $prediction.%K > %@).@count > 0", v2, v4, &unk_283A57C38, v5, &unk_283A57C50, v6, &unk_283A57C68];

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
  v5 = [(ATXTripDuetEvent *)v2 initWithOrigin:1 destination:2 durationAtOrigin:v3 startDate:v4 endDate:0.0];

  return v5;
}

@end