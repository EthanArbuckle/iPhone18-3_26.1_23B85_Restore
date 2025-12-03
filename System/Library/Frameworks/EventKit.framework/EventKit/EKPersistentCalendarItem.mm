@interface EKPersistentCalendarItem
+ (id)propertiesToUnloadOnCommit;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)singleRecurrenceRule;
@end

@implementation EKPersistentCalendarItem

+ (id)relations
{
  if (relations_onceToken_17 != -1)
  {
    +[EKPersistentCalendarItem relations];
  }

  v3 = relations_relations_17;

  return v3;
}

void __37__EKPersistentCalendarItem_relations__block_invoke()
{
  v38 = objc_alloc(MEMORY[0x1E695DF20]);
  v42 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992448]];
  v46 = [EKRelation relationWithEntityName:@"Alarm" toMany:1 inversePropertyNames:v42];
  v36 = *MEMORY[0x1E6992558];
  v0 = *MEMORY[0x1E6992B18];
  v41 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992B18]];
  v45 = [EKRelation relationWithEntityName:@"Attachment" toMany:1 inversePropertyNames:v41];
  v35 = *MEMORY[0x1E6992560];
  v40 = [MEMORY[0x1E695DFD8] setWithObject:v0];
  v44 = [EKRelation relationWithEntityName:@"Attendee" toMany:1 inversePropertyNames:v40];
  v33 = *MEMORY[0x1E6992568];
  v39 = [MEMORY[0x1E695DFD8] setWithObject:v0];
  v43 = [EKRelation relationWithEntityName:@"ExceptionDate" toMany:1 inversePropertyNames:v39];
  v32 = *MEMORY[0x1E69925A0];
  v37 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992BD8]];
  v30 = [EKRelation relationWithEntityName:@"RecurrenceRule" toMany:1 inversePropertyNames:v37];
  v29 = *MEMORY[0x1E6992648];
  v27 = [EKRelation relationWithEntityName:@"Calendar" toMany:0 inversePropertyNames:0 ownsRelated:0];
  v26 = *MEMORY[0x1E6992570];
  v34 = [MEMORY[0x1E695DFD8] setWithObject:v0];
  v25 = [EKRelation relationWithEntityName:@"Organizer" toMany:0 inversePropertyNames:v34];
  v24 = *MEMORY[0x1E6992628];
  v22 = [EKRelation relationWithEntityName:@"Attendee" toMany:0 inversePropertyNames:0];
  v21 = *MEMORY[0x1E6992650];
  v1 = *MEMORY[0x1E6992A40];
  v31 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992A40]];
  v19 = [EKRelation relationWithEntityName:@"Location" toMany:0 inversePropertyNames:v31];
  v18 = *MEMORY[0x1E69926D8];
  v28 = [MEMORY[0x1E695DFD8] setWithObject:v1];
  v17 = [EKRelation relationWithEntityName:@"ClientLocation" toMany:0 inversePropertyNames:v28];
  v16 = *MEMORY[0x1E6992580];
  v23 = [MEMORY[0x1E695DFD8] setWithObject:v1];
  v12 = [EKRelation relationWithEntityName:@"StartLocation" toMany:0 inversePropertyNames:v23];
  v14 = *MEMORY[0x1E69926F8];
  v20 = [MEMORY[0x1E695DFD8] setWithObject:@"calendarItemOwner"];
  v11 = [EKRelation relationWithEntityName:@"EndLocation" toMany:0 inversePropertyNames:v20];
  v13 = *MEMORY[0x1E69925A8];
  v2 = *MEMORY[0x1E6992630];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992630]];
  v10 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:1 inversePropertyNames:v15];
  v3 = *MEMORY[0x1E6992598];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992598]];
  v5 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69928C8]];
  v7 = [EKRelation relationWithEntityName:@"Error" toMany:0 inversePropertyNames:v6];
  v8 = [v38 initWithObjectsAndKeys:{v46, v36, v45, v35, v44, v33, v43, v32, v30, v29, v27, v26, v25, v24, v22, v21, v19, v18, v17, v16, v12, v14, v11, v13, v10, v3, v5, v2, v7, *MEMORY[0x1E69926F0], 0}];
  v9 = relations_relations_17;
  relations_relations_17 = v8;
}

+ (id)propertiesToUnloadOnCommit
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__EKPersistentCalendarItem_propertiesToUnloadOnCommit__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (propertiesToUnloadOnCommit_onceToken_2 != -1)
  {
    dispatch_once(&propertiesToUnloadOnCommit_onceToken_2, block);
  }

  v2 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_2;

  return v2;
}

void __54__EKPersistentCalendarItem_propertiesToUnloadOnCommit__block_invoke(uint64_t a1)
{
  v12[7] = *MEMORY[0x1E69E9840];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___EKPersistentCalendarItem;
  v1 = objc_msgSendSuper2(&v11, sel_propertiesToUnloadOnCommit);
  v2 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_2;
  propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_2 = v1;

  v3 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_2;
  v4 = *MEMORY[0x1E69925E0];
  v12[0] = *MEMORY[0x1E69925F0];
  v12[1] = v4;
  v5 = *MEMORY[0x1E69925F8];
  v12[2] = *MEMORY[0x1E69925E8];
  v12[3] = v5;
  v6 = *MEMORY[0x1E69926E8];
  v12[4] = *MEMORY[0x1E6992658];
  v12[5] = v6;
  v12[6] = *MEMORY[0x1E6992950];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];
  v9 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_2;
  propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_2 = v8;

  v10 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = EKUUIDString();
  [v4 setUUID:v5];

  calendar = [(EKPersistentCalendarItem *)self calendar];
  [v4 setCalendar:calendar];

  [v4 setIsAllDay:{-[EKPersistentCalendarItem isAllDay](self, "isAllDay")}];
  startDateRaw = [(EKPersistentCalendarItem *)self startDateRaw];
  [v4 setStartDateRaw:startDateRaw];

  startTimeZoneName = [(EKPersistentCalendarItem *)self startTimeZoneName];
  [v4 setStartTimeZoneName:startTimeZoneName];

  endTimeZoneName = [(EKPersistentCalendarItem *)self endTimeZoneName];
  [v4 setEndTimeZoneName:endTimeZoneName];

  unlocalizedTitle = [(EKPersistentCalendarItem *)self unlocalizedTitle];
  [v4 setUnlocalizedTitle:unlocalizedTitle];

  notes = [(EKPersistentCalendarItem *)self notes];
  [v4 setNotes:notes];

  uRLString = [(EKPersistentCalendarItem *)self URLString];
  [v4 setURLString:uRLString];

  [v4 setSequenceNumber:{-[EKPersistentCalendarItem sequenceNumber](self, "sequenceNumber")}];
  calendarScale = [(EKPersistentCalendarItem *)self calendarScale];
  [v4 setCalendarScale:calendarScale];

  [v4 setPriority:{-[EKPersistentCalendarItem priority](self, "priority")}];
  actionString = [(EKPersistentCalendarItem *)self actionString];
  [v4 setActionString:actionString];

  structuredData = [(EKPersistentCalendarItem *)self structuredData];
  [v4 setStructuredData:structuredData];

  localStructuredData = [(EKPersistentCalendarItem *)self localStructuredData];
  [v4 setLocalStructuredData:localStructuredData];

  [v4 setDefaultAlarmWasDeleted:{-[EKPersistentCalendarItem defaultAlarmWasDeleted](self, "defaultAlarmWasDeleted")}];
  sharedItemCreatedByDisplayName = [(EKPersistentCalendarItem *)self sharedItemCreatedByDisplayName];
  [v4 setSharedItemCreatedByDisplayName:sharedItemCreatedByDisplayName];

  sharedItemCreatedByAddressString = [(EKPersistentCalendarItem *)self sharedItemCreatedByAddressString];
  [v4 setSharedItemCreatedByAddressString:sharedItemCreatedByAddressString];

  sharedItemCreatedByFirstName = [(EKPersistentCalendarItem *)self sharedItemCreatedByFirstName];
  [v4 setSharedItemCreatedByFirstName:sharedItemCreatedByFirstName];

  sharedItemCreatedByLastName = [(EKPersistentCalendarItem *)self sharedItemCreatedByLastName];
  [v4 setSharedItemCreatedByLastName:sharedItemCreatedByLastName];

  sharedItemCreatedDate = [(EKPersistentCalendarItem *)self sharedItemCreatedDate];
  [v4 setSharedItemCreatedDate:sharedItemCreatedDate];

  sharedItemCreatedTimeZoneName = [(EKPersistentCalendarItem *)self sharedItemCreatedTimeZoneName];
  [v4 setSharedItemCreatedTimeZoneName:sharedItemCreatedTimeZoneName];

  sharedItemModifiedByDisplayName = [(EKPersistentCalendarItem *)self sharedItemModifiedByDisplayName];
  [v4 setSharedItemModifiedByDisplayName:sharedItemModifiedByDisplayName];

  sharedItemModifiedByAddressString = [(EKPersistentCalendarItem *)self sharedItemModifiedByAddressString];
  [v4 setSharedItemModifiedByAddressString:sharedItemModifiedByAddressString];

  sharedItemModifiedByFirstName = [(EKPersistentCalendarItem *)self sharedItemModifiedByFirstName];
  [v4 setSharedItemModifiedByFirstName:sharedItemModifiedByFirstName];

  sharedItemModifiedByLastName = [(EKPersistentCalendarItem *)self sharedItemModifiedByLastName];
  [v4 setSharedItemModifiedByLastName:sharedItemModifiedByLastName];

  sharedItemModifiedDate = [(EKPersistentCalendarItem *)self sharedItemModifiedDate];
  [v4 setSharedItemModifiedDate:sharedItemModifiedDate];

  sharedItemModifiedTimeZoneName = [(EKPersistentCalendarItem *)self sharedItemModifiedTimeZoneName];
  [v4 setSharedItemModifiedTimeZoneName:sharedItemModifiedTimeZoneName];

  eventStore = [(EKPersistentObject *)self eventStore];
  eventAccessLevel = [eventStore eventAccessLevel];

  if (eventAccessLevel == 2)
  {
    externalData = [(EKPersistentCalendarItem *)self externalData];
    [v4 setExternalData:externalData];
  }

  return v4;
}

- (id)singleRecurrenceRule
{
  recurrenceRulesSet = [(EKPersistentCalendarItem *)self recurrenceRulesSet];
  anyObject = [recurrenceRulesSet anyObject];

  return anyObject;
}

@end