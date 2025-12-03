@interface EKPersistentEvent
+ (id)defaultPropertiesToLoad;
+ (id)eventWithRandomUUID;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EKPersistentEvent

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_9 != -1)
  {
    +[EKPersistentEvent defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_8;

  return v3;
}

uint64_t __44__EKPersistentEvent_defaultPropertiesToLoad__block_invoke()
{
  defaultPropertiesToLoad_defaultPropertiesToLoad_8 = CADEKPersistentEventDefaultPropertiesToLoad();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)relations
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__EKPersistentEvent_relations__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (relations_onceToken_13 != -1)
  {
    dispatch_once(&relations_onceToken_13, block);
  }

  v2 = relations_relations_13;

  return v2;
}

void __30__EKPersistentEvent_relations__block_invoke(uint64_t a1)
{
  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___EKPersistentEvent;
  v1 = objc_msgSendSuper2(&v13, sel_relations);
  v2 = [v1 mutableCopy];

  v3 = *MEMORY[0x1E6992B18];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992B18]];
  v5 = [EKRelation relationWithEntityName:@"EventAction" toMany:1 inversePropertyNames:v4];
  [v2 setObject:v5 forKey:*MEMORY[0x1E6992918]];

  v6 = [MEMORY[0x1E695DFD8] setWithObject:v3];
  v7 = [EKRelation relationWithEntityName:@"ExceptionDate" toMany:1 inversePropertyNames:v6];
  [v2 setObject:v7 forKey:*MEMORY[0x1E69925A0]];

  v8 = [MEMORY[0x1E695DFD8] setWithObject:v3];
  v9 = [EKRelation relationWithEntityName:@"SuggestedEventInfo" toMany:0 inversePropertyNames:v8];
  [v2 setObject:v9 forKey:*MEMORY[0x1E69929E8]];

  v10 = [EKRelation relationWithEntityName:@"Image" toMany:0 inversePropertyNames:0 ownsRelated:0];
  [v2 setObject:v10 forKey:*MEMORY[0x1E6992980]];

  v11 = [EKRelation relationWithEntityName:@"Color" toMany:0 inversePropertyNames:0 ownsRelated:1];
  [v2 setObject:v11 forKey:*MEMORY[0x1E6992948]];

  v12 = relations_relations_13;
  relations_relations_13 = v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(EKPersistentCalendarItem *)self title];
  calendar = [(EKPersistentCalendarItem *)self calendar];
  allAlarmsSet = [(EKPersistentCalendarItem *)self allAlarmsSet];
  uRLString = [(EKPersistentCalendarItem *)self URLString];
  lastModifiedDate = [(EKPersistentCalendarItem *)self lastModifiedDate];
  v24 = [v3 stringWithFormat:@"%@ <%p> \n\t {title = %@ \n\t calendar = %@; \n\t alarms = %@; \n\t URLString = %@; \n\t lastModified = %@}", v4, self, title, calendar, allAlarmsSet, uRLString, lastModifiedDate];;

  v23 = MEMORY[0x1E696AEC0];
  v22 = objc_opt_class();
  structuredLocationWithoutPrediction = [(EKPersistentCalendarItem *)self structuredLocationWithoutPrediction];
  travelStartLocation = [(EKPersistentCalendarItem *)self travelStartLocation];
  startDate = [(EKPersistentCalendarItem *)self startDate];
  endDate = [(EKPersistentEvent *)self endDate];
  isAllDay = [(EKPersistentCalendarItem *)self isAllDay];
  startTimeZoneName = [(EKPersistentCalendarItem *)self startTimeZoneName];
  travelTime = [(EKPersistentEvent *)self travelTime];
  integerValue = [travelTime integerValue];
  recurrenceRulesSet = [(EKPersistentCalendarItem *)self recurrenceRulesSet];
  attendeesRaw = [(EKPersistentCalendarItem *)self attendeesRaw];
  v19 = [v23 stringWithFormat:@"%@ <%p> {%@ \n\t location = %@; \n\t startLocation = %@; \n\t startDate = %@; \n\t endDate = %@; \n\t allDay = %u; \n\t timeZone = %@; \n\t travelTime: %ld; \n\t recurrences = %@; \n\t attendees = %@}", v22, self, v24, structuredLocationWithoutPrediction, travelStartLocation, startDate, endDate, isAllDay, startTimeZoneName, integerValue, recurrenceRulesSet, attendeesRaw];;

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = EKPersistentEvent;
  v4 = [(EKPersistentCalendarItem *)&v14 copyWithZone:zone];
  endDate = [(EKPersistentEvent *)self endDate];
  [v4 setEndDate:endDate];

  [v4 setStatus:{-[EKPersistentEvent status](self, "status")}];
  [v4 setAvailability:{-[EKPersistentEvent availability](self, "availability")}];
  [v4 setPrivacyLevel:{-[EKPersistentEvent privacyLevel](self, "privacyLevel")}];
  travelTime = [(EKPersistentEvent *)self travelTime];
  [v4 setTravelTime:travelTime];

  originalStartDate = [(EKPersistentEvent *)self originalStartDate];
  [v4 setOriginalStartDate:originalStartDate];

  [v4 setTravelAdvisoryBehavior:{-[EKPersistentEvent travelAdvisoryBehavior](self, "travelAdvisoryBehavior")}];
  responseComment = [(EKPersistentEvent *)self responseComment];
  [v4 setResponseComment:responseComment];

  proposedStartDate = [(EKPersistentEvent *)self proposedStartDate];
  [v4 setProposedStartDate:proposedStartDate];

  [v4 setLocationPredictionState:{-[EKPersistentEvent locationPredictionState](self, "locationPredictionState")}];
  birthdayContactIdentifier = [(EKPersistentEvent *)self birthdayContactIdentifier];
  [v4 setBirthdayContactIdentifier:birthdayContactIdentifier];

  birthdayContactName = [(EKPersistentEvent *)self birthdayContactName];
  [v4 setBirthdayContactName:birthdayContactName];

  birthdayID = [(EKPersistentEvent *)self birthdayID];
  if (birthdayID)
  {
    [v4 setBirthdayID:birthdayID];
  }

  [v4 setCanForward:{-[EKPersistentEvent canForward](self, "canForward")}];
  [v4 setDisallowProposeNewTime:{-[EKPersistentEvent disallowProposeNewTime](self, "disallowProposeNewTime")}];

  return v4;
}

+ (id)eventWithRandomUUID
{
  v2 = objc_alloc_init(EKPersistentEvent);
  v3 = EKUUIDString();
  [(EKPersistentCalendarItem *)v2 setUUID:v3];

  return v2;
}

@end