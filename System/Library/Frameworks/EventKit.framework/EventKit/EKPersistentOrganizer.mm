@interface EKPersistentOrganizer
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EKPersistentOrganizer

+ (id)defaultPropertiesToLoad
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EKPersistentOrganizer_defaultPropertiesToLoad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultPropertiesToLoad_onceToken_7 != -1)
  {
    dispatch_once(&defaultPropertiesToLoad_onceToken_7, block);
  }

  v2 = defaultPropertiesToLoad_defaultPropertiesToLoad_6;

  return v2;
}

void __48__EKPersistentOrganizer_defaultPropertiesToLoad__block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___EKPersistentOrganizer;
  v1 = objc_msgSendSuper2(&v7, sel_defaultPropertiesToLoad);
  v2 = *MEMORY[0x1E6992B30];
  v8[0] = *MEMORY[0x1E6992B28];
  v8[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v1 arrayByAddingObjectsFromArray:v3];
  v5 = defaultPropertiesToLoad_defaultPropertiesToLoad_6;
  defaultPropertiesToLoad_defaultPropertiesToLoad_6 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  if (relations_onceToken_11 != -1)
  {
    +[EKPersistentOrganizer relations];
  }

  v3 = relations_relations_11;

  return v3;
}

void __34__EKPersistentOrganizer_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992628]];
  v1 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x1E6992B18], 0}];
  v3 = relations_relations_11;
  relations_relations_11 = v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(EKPersistentOrganizer);
  if (v4)
  {
    uUID = [(EKPersistentParticipant *)self UUID];
    v6 = [uUID copy];
    [(EKPersistentParticipant *)v4 setUUID:v6];

    displayNameRaw = [(EKPersistentParticipant *)self displayNameRaw];
    [(EKPersistentParticipant *)v4 setDisplayNameRaw:displayNameRaw];

    [(EKPersistentOrganizer *)v4 setIsCurrentUser:[(EKPersistentOrganizer *)self isCurrentUser]];
    [(EKPersistentOrganizer *)v4 setScheduleAgent:[(EKPersistentOrganizer *)self scheduleAgent]];
    eventStore = [(EKPersistentObject *)self eventStore];
    LODWORD(v6) = [eventStore eventAccessLevel];

    if (v6 == 2)
    {
      emailAddress = [(EKPersistentParticipant *)self emailAddress];
      [(EKPersistentParticipant *)v4 setEmailAddress:emailAddress];

      phoneNumber = [(EKPersistentParticipant *)self phoneNumber];
      [(EKPersistentParticipant *)v4 setPhoneNumber:phoneNumber];

      uRLString = [(EKPersistentParticipant *)self URLString];
      [(EKPersistentParticipant *)v4 setURLString:uRLString];
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(EKPersistentParticipant *)self UUID];
  displayNameRaw = [(EKPersistentParticipant *)self displayNameRaw];
  emailAddress = [(EKPersistentParticipant *)self emailAddress];
  phoneNumber = [(EKPersistentParticipant *)self phoneNumber];
  firstName = [(EKPersistentParticipant *)self firstName];
  lastName = [(EKPersistentParticipant *)self lastName];
  v11 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ displayName = %@; email = %@; phoneNumber = %@; firstName = %@; lastName = %@; isSelf = %d}", v4, self, uUID, displayNameRaw, emailAddress, phoneNumber, firstName, lastName, -[EKPersistentOrganizer isCurrentUser](self, "isCurrentUser")];;

  return v11;
}

@end