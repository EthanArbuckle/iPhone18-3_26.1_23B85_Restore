@interface EKPersistentEvent
+ (id)defaultPropertiesToLoad;
+ (id)eventWithRandomUUID;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)a3;
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
  block[4] = a1;
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
  v5 = [(EKPersistentCalendarItem *)self title];
  v6 = [(EKPersistentCalendarItem *)self calendar];
  v7 = [(EKPersistentCalendarItem *)self allAlarmsSet];
  v8 = [(EKPersistentCalendarItem *)self URLString];
  v9 = [(EKPersistentCalendarItem *)self lastModifiedDate];
  v24 = [v3 stringWithFormat:@"%@ <%p> \n\t {title = %@ \n\t calendar = %@; \n\t alarms = %@; \n\t URLString = %@; \n\t lastModified = %@}", v4, self, v5, v6, v7, v8, v9];;

  v23 = MEMORY[0x1E696AEC0];
  v22 = objc_opt_class();
  v10 = [(EKPersistentCalendarItem *)self structuredLocationWithoutPrediction];
  v11 = [(EKPersistentCalendarItem *)self travelStartLocation];
  v12 = [(EKPersistentCalendarItem *)self startDate];
  v13 = [(EKPersistentEvent *)self endDate];
  v21 = [(EKPersistentCalendarItem *)self isAllDay];
  v14 = [(EKPersistentCalendarItem *)self startTimeZoneName];
  v15 = [(EKPersistentEvent *)self travelTime];
  v16 = [v15 integerValue];
  v17 = [(EKPersistentCalendarItem *)self recurrenceRulesSet];
  v18 = [(EKPersistentCalendarItem *)self attendeesRaw];
  v19 = [v23 stringWithFormat:@"%@ <%p> {%@ \n\t location = %@; \n\t startLocation = %@; \n\t startDate = %@; \n\t endDate = %@; \n\t allDay = %u; \n\t timeZone = %@; \n\t travelTime: %ld; \n\t recurrences = %@; \n\t attendees = %@}", v22, self, v24, v10, v11, v12, v13, v21, v14, v16, v17, v18];;

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = EKPersistentEvent;
  v4 = [(EKPersistentCalendarItem *)&v14 copyWithZone:a3];
  v5 = [(EKPersistentEvent *)self endDate];
  [v4 setEndDate:v5];

  [v4 setStatus:{-[EKPersistentEvent status](self, "status")}];
  [v4 setAvailability:{-[EKPersistentEvent availability](self, "availability")}];
  [v4 setPrivacyLevel:{-[EKPersistentEvent privacyLevel](self, "privacyLevel")}];
  v6 = [(EKPersistentEvent *)self travelTime];
  [v4 setTravelTime:v6];

  v7 = [(EKPersistentEvent *)self originalStartDate];
  [v4 setOriginalStartDate:v7];

  [v4 setTravelAdvisoryBehavior:{-[EKPersistentEvent travelAdvisoryBehavior](self, "travelAdvisoryBehavior")}];
  v8 = [(EKPersistentEvent *)self responseComment];
  [v4 setResponseComment:v8];

  v9 = [(EKPersistentEvent *)self proposedStartDate];
  [v4 setProposedStartDate:v9];

  [v4 setLocationPredictionState:{-[EKPersistentEvent locationPredictionState](self, "locationPredictionState")}];
  v10 = [(EKPersistentEvent *)self birthdayContactIdentifier];
  [v4 setBirthdayContactIdentifier:v10];

  v11 = [(EKPersistentEvent *)self birthdayContactName];
  [v4 setBirthdayContactName:v11];

  v12 = [(EKPersistentEvent *)self birthdayID];
  if (v12)
  {
    [v4 setBirthdayID:v12];
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