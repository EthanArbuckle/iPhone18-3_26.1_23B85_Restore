@interface EKPersistentAttendee
+ (id)attendeeWithEmailAddress:(id)address name:(id)name;
+ (id)attendeeWithName:(id)name emailAddress:(id)address address:(id)a5;
+ (id)defaultPropertiesToLoad;
+ (id)propertiesToUnloadOnCommit;
+ (id)relations;
- (EKPersistentAttendee)initWithAddress:(id)address name:(id)name;
- (EKPersistentAttendee)initWithEmailAddress:(id)address name:(id)name;
- (EKPersistentAttendee)initWithName:(id)name emailAddress:(id)address address:(id)a5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EKPersistentAttendee

+ (id)defaultPropertiesToLoad
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKPersistentAttendee_defaultPropertiesToLoad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultPropertiesToLoad_onceToken_4 != -1)
  {
    dispatch_once(&defaultPropertiesToLoad_onceToken_4, block);
  }

  v2 = defaultPropertiesToLoad_defaultPropertiesToLoad_4;

  return v2;
}

void __47__EKPersistentAttendee_defaultPropertiesToLoad__block_invoke(uint64_t a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___EKPersistentAttendee;
  v1 = objc_msgSendSuper2(&v8, sel_defaultPropertiesToLoad);
  v2 = *MEMORY[0x1E6992528];
  v9[0] = *MEMORY[0x1E6992520];
  v9[1] = v2;
  v3 = *MEMORY[0x1E6992B80];
  v9[2] = *MEMORY[0x1E6992538];
  v9[3] = v3;
  v9[4] = *MEMORY[0x1E6992510];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v5 = [v1 arrayByAddingObjectsFromArray:v4];
  v6 = defaultPropertiesToLoad_defaultPropertiesToLoad_4;
  defaultPropertiesToLoad_defaultPropertiesToLoad_4 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  if (relations_onceToken_7 != -1)
  {
    +[EKPersistentAttendee relations];
  }

  v3 = relations_relations_7;

  return v3;
}

void __33__EKPersistentAttendee_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992568]];
  v1 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x1E6992B18], 0}];
  v3 = relations_relations_7;
  relations_relations_7 = v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(EKPersistentAttendee);
  if (v4)
  {
    uUID = [(EKPersistentParticipant *)self UUID];
    v6 = [uUID copy];
    [(EKPersistentParticipant *)v4 setUUID:v6];

    displayNameRaw = [(EKPersistentParticipant *)self displayNameRaw];
    [(EKPersistentParticipant *)v4 setDisplayNameRaw:displayNameRaw];

    [(EKPersistentAttendee *)v4 setStatusRaw:[(EKPersistentAttendee *)self statusRaw]];
    [(EKPersistentAttendee *)v4 setParticipantRole:[(EKPersistentAttendee *)self participantRole]];
    [(EKPersistentAttendee *)v4 setPendingStatusRaw:[(EKPersistentAttendee *)self pendingStatusRaw]];
    lastModifiedParticipationStatus = [(EKPersistentAttendee *)self lastModifiedParticipationStatus];
    [(EKPersistentAttendee *)v4 setLastModifiedParticipationStatus:lastModifiedParticipationStatus];

    proposedStartDate = [(EKPersistentParticipant *)self proposedStartDate];
    [(EKPersistentParticipant *)v4 setProposedStartDate:proposedStartDate];

    [(EKPersistentParticipant *)v4 setProposedStartDateStatus:[(EKPersistentParticipant *)self proposedStartDateStatus]];
    [(EKPersistentAttendee *)v4 setParticipantType:[(EKPersistentAttendee *)self participantType]];
    [(EKPersistentParticipant *)v4 setScheduleForceSend:[(EKPersistentParticipant *)self scheduleForceSend]];
    comment = [(EKPersistentParticipant *)self comment];
    [(EKPersistentParticipant *)v4 setComment:comment];

    commentLastModifiedDate = [(EKPersistentParticipant *)self commentLastModifiedDate];
    [(EKPersistentParticipant *)v4 setCommentLastModifiedDate:commentLastModifiedDate];

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

+ (id)propertiesToUnloadOnCommit
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EKPersistentAttendee_propertiesToUnloadOnCommit__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (propertiesToUnloadOnCommit_onceToken_0 != -1)
  {
    dispatch_once(&propertiesToUnloadOnCommit_onceToken_0, block);
  }

  v2 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_0;

  return v2;
}

void __50__EKPersistentAttendee_propertiesToUnloadOnCommit__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___EKPersistentAttendee;
  v1 = objc_msgSendSuper2(&v8, sel_propertiesToUnloadOnCommit);
  v2 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_0;
  propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_0 = v1;

  v3 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_0;
  v9[0] = *MEMORY[0x1E6992510];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_0;
  propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_0 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v12 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  uUID = [(EKPersistentParticipant *)self UUID];
  displayNameRaw = [(EKPersistentParticipant *)self displayNameRaw];
  emailAddress = [(EKPersistentParticipant *)self emailAddress];
  phoneNumber = [(EKPersistentParticipant *)self phoneNumber];
  firstName = [(EKPersistentParticipant *)self firstName];
  lastName = [(EKPersistentParticipant *)self lastName];
  v10 = [v12 stringWithFormat:@"%@ <%p> {UUID = %@ displayName = %@; email = %@; phoneNumber = %@; firstName = %@, lastName = %@, status = %ld; role = %ld; type = %ld}", v3, self, uUID, displayNameRaw, emailAddress, phoneNumber, firstName, lastName, -[EKPersistentAttendee statusRaw](self, "statusRaw"), -[EKPersistentAttendee participantRole](self, "participantRole"), -[EKPersistentAttendee participantType](self, "participantType")];;

  return v10;
}

+ (id)attendeeWithName:(id)name emailAddress:(id)address address:(id)a5
{
  v8 = a5;
  addressCopy = address;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy emailAddress:addressCopy address:v8];

  return v11;
}

+ (id)attendeeWithEmailAddress:(id)address name:(id)name
{
  nameCopy = name;
  addressCopy = address;
  v8 = [[self alloc] initWithEmailAddress:addressCopy name:nameCopy];

  return v8;
}

- (EKPersistentAttendee)initWithEmailAddress:(id)address name:(id)name
{
  addressCopy = address;
  nameCopy = name;
  v8 = [(EKPersistentObject *)self init];
  v9 = v8;
  if (v8)
  {
    [(EKPersistentParticipant *)v8 setEmailAddress:addressCopy];
    [(EKPersistentParticipant *)v9 setDisplayNameRaw:nameCopy];
  }

  return v9;
}

- (EKPersistentAttendee)initWithName:(id)name emailAddress:(id)address address:(id)a5
{
  nameCopy = name;
  addressCopy = address;
  v10 = a5;
  v11 = [(EKPersistentObject *)self init];
  if (v11)
  {
    absoluteString = [v10 absoluteString];
    [(EKPersistentParticipant *)v11 setURLString:absoluteString];

    [(EKPersistentParticipant *)v11 setEmailAddress:addressCopy];
    [(EKPersistentParticipant *)v11 setDisplayNameRaw:nameCopy];
  }

  return v11;
}

- (EKPersistentAttendee)initWithAddress:(id)address name:(id)name
{
  addressCopy = address;
  nameCopy = name;
  v8 = [(EKPersistentObject *)self init];
  if (v8)
  {
    absoluteString = [addressCopy absoluteString];
    [(EKPersistentParticipant *)v8 setURLString:absoluteString];

    [(EKPersistentParticipant *)v8 setDisplayNameRaw:nameCopy];
  }

  return v8;
}

@end