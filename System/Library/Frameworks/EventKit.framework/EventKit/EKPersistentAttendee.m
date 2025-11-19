@interface EKPersistentAttendee
+ (id)attendeeWithEmailAddress:(id)a3 name:(id)a4;
+ (id)attendeeWithName:(id)a3 emailAddress:(id)a4 address:(id)a5;
+ (id)defaultPropertiesToLoad;
+ (id)propertiesToUnloadOnCommit;
+ (id)relations;
- (EKPersistentAttendee)initWithAddress:(id)a3 name:(id)a4;
- (EKPersistentAttendee)initWithEmailAddress:(id)a3 name:(id)a4;
- (EKPersistentAttendee)initWithName:(id)a3 emailAddress:(id)a4 address:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EKPersistentAttendee

+ (id)defaultPropertiesToLoad
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKPersistentAttendee_defaultPropertiesToLoad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(EKPersistentAttendee);
  if (v4)
  {
    v5 = [(EKPersistentParticipant *)self UUID];
    v6 = [v5 copy];
    [(EKPersistentParticipant *)v4 setUUID:v6];

    v7 = [(EKPersistentParticipant *)self displayNameRaw];
    [(EKPersistentParticipant *)v4 setDisplayNameRaw:v7];

    [(EKPersistentAttendee *)v4 setStatusRaw:[(EKPersistentAttendee *)self statusRaw]];
    [(EKPersistentAttendee *)v4 setParticipantRole:[(EKPersistentAttendee *)self participantRole]];
    [(EKPersistentAttendee *)v4 setPendingStatusRaw:[(EKPersistentAttendee *)self pendingStatusRaw]];
    v8 = [(EKPersistentAttendee *)self lastModifiedParticipationStatus];
    [(EKPersistentAttendee *)v4 setLastModifiedParticipationStatus:v8];

    v9 = [(EKPersistentParticipant *)self proposedStartDate];
    [(EKPersistentParticipant *)v4 setProposedStartDate:v9];

    [(EKPersistentParticipant *)v4 setProposedStartDateStatus:[(EKPersistentParticipant *)self proposedStartDateStatus]];
    [(EKPersistentAttendee *)v4 setParticipantType:[(EKPersistentAttendee *)self participantType]];
    [(EKPersistentParticipant *)v4 setScheduleForceSend:[(EKPersistentParticipant *)self scheduleForceSend]];
    v10 = [(EKPersistentParticipant *)self comment];
    [(EKPersistentParticipant *)v4 setComment:v10];

    v11 = [(EKPersistentParticipant *)self commentLastModifiedDate];
    [(EKPersistentParticipant *)v4 setCommentLastModifiedDate:v11];

    v12 = [(EKPersistentObject *)self eventStore];
    LODWORD(v6) = [v12 eventAccessLevel];

    if (v6 == 2)
    {
      v13 = [(EKPersistentParticipant *)self emailAddress];
      [(EKPersistentParticipant *)v4 setEmailAddress:v13];

      v14 = [(EKPersistentParticipant *)self phoneNumber];
      [(EKPersistentParticipant *)v4 setPhoneNumber:v14];

      v15 = [(EKPersistentParticipant *)self URLString];
      [(EKPersistentParticipant *)v4 setURLString:v15];
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
  block[4] = a1;
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
  v4 = [(EKPersistentParticipant *)self UUID];
  v5 = [(EKPersistentParticipant *)self displayNameRaw];
  v6 = [(EKPersistentParticipant *)self emailAddress];
  v7 = [(EKPersistentParticipant *)self phoneNumber];
  v8 = [(EKPersistentParticipant *)self firstName];
  v9 = [(EKPersistentParticipant *)self lastName];
  v10 = [v12 stringWithFormat:@"%@ <%p> {UUID = %@ displayName = %@; email = %@; phoneNumber = %@; firstName = %@, lastName = %@, status = %ld; role = %ld; type = %ld}", v3, self, v4, v5, v6, v7, v8, v9, -[EKPersistentAttendee statusRaw](self, "statusRaw"), -[EKPersistentAttendee participantRole](self, "participantRole"), -[EKPersistentAttendee participantType](self, "participantType")];;

  return v10;
}

+ (id)attendeeWithName:(id)a3 emailAddress:(id)a4 address:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 emailAddress:v9 address:v8];

  return v11;
}

+ (id)attendeeWithEmailAddress:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithEmailAddress:v7 name:v6];

  return v8;
}

- (EKPersistentAttendee)initWithEmailAddress:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKPersistentObject *)self init];
  v9 = v8;
  if (v8)
  {
    [(EKPersistentParticipant *)v8 setEmailAddress:v6];
    [(EKPersistentParticipant *)v9 setDisplayNameRaw:v7];
  }

  return v9;
}

- (EKPersistentAttendee)initWithName:(id)a3 emailAddress:(id)a4 address:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EKPersistentObject *)self init];
  if (v11)
  {
    v12 = [v10 absoluteString];
    [(EKPersistentParticipant *)v11 setURLString:v12];

    [(EKPersistentParticipant *)v11 setEmailAddress:v9];
    [(EKPersistentParticipant *)v11 setDisplayNameRaw:v8];
  }

  return v11;
}

- (EKPersistentAttendee)initWithAddress:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKPersistentObject *)self init];
  if (v8)
  {
    v9 = [v6 absoluteString];
    [(EKPersistentParticipant *)v8 setURLString:v9];

    [(EKPersistentParticipant *)v8 setDisplayNameRaw:v7];
  }

  return v8;
}

@end