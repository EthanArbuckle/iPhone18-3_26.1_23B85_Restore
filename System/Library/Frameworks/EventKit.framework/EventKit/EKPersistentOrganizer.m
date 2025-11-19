@interface EKPersistentOrganizer
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EKPersistentOrganizer

+ (id)defaultPropertiesToLoad
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EKPersistentOrganizer_defaultPropertiesToLoad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(EKPersistentOrganizer);
  if (v4)
  {
    v5 = [(EKPersistentParticipant *)self UUID];
    v6 = [v5 copy];
    [(EKPersistentParticipant *)v4 setUUID:v6];

    v7 = [(EKPersistentParticipant *)self displayNameRaw];
    [(EKPersistentParticipant *)v4 setDisplayNameRaw:v7];

    [(EKPersistentOrganizer *)v4 setIsCurrentUser:[(EKPersistentOrganizer *)self isCurrentUser]];
    [(EKPersistentOrganizer *)v4 setScheduleAgent:[(EKPersistentOrganizer *)self scheduleAgent]];
    v8 = [(EKPersistentObject *)self eventStore];
    LODWORD(v6) = [v8 eventAccessLevel];

    if (v6 == 2)
    {
      v9 = [(EKPersistentParticipant *)self emailAddress];
      [(EKPersistentParticipant *)v4 setEmailAddress:v9];

      v10 = [(EKPersistentParticipant *)self phoneNumber];
      [(EKPersistentParticipant *)v4 setPhoneNumber:v10];

      v11 = [(EKPersistentParticipant *)self URLString];
      [(EKPersistentParticipant *)v4 setURLString:v11];
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKPersistentParticipant *)self UUID];
  v6 = [(EKPersistentParticipant *)self displayNameRaw];
  v7 = [(EKPersistentParticipant *)self emailAddress];
  v8 = [(EKPersistentParticipant *)self phoneNumber];
  v9 = [(EKPersistentParticipant *)self firstName];
  v10 = [(EKPersistentParticipant *)self lastName];
  v11 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ displayName = %@; email = %@; phoneNumber = %@; firstName = %@; lastName = %@; isSelf = %d}", v4, self, v5, v6, v7, v8, v9, v10, -[EKPersistentOrganizer isCurrentUser](self, "isCurrentUser")];;

  return v11;
}

@end