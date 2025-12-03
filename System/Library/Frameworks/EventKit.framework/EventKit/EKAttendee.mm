@interface EKAttendee
+ (id)knownSingleValueKeysForComparison;
+ (int)_calAttendeeStatusFromEKParticipantStatus:(int64_t)status;
+ (int64_t)_ekParticipantStatusFromCalAttendeeStatus:(int)status;
- (BOOL)hasProposedStartDate;
- (BOOL)isCurrentUser;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)proposedStartDate;
- (id)proposedStartDateForEvent:(id)event;
- (int)pendingStatusRaw;
- (int)proposedStartDateStatus;
- (int)statusRaw;
- (int64_t)participantRole;
- (int64_t)participantStatus;
- (int64_t)participantType;
- (int64_t)pendingStatus;
- (unsigned)flags;
- (void)_setFlag:(unsigned int)flag value:(BOOL)value;
- (void)setParticipantRole:(int64_t)role;
- (void)setParticipantStatus:(int64_t)status;
- (void)setParticipantType:(int64_t)type;
- (void)setPendingStatus:(int64_t)status;
- (void)setProposedStartDate:(id)date forEvent:(id)event;
@end

@implementation EKAttendee

- (int64_t)participantStatus
{
  statusRaw = [(EKAttendee *)self statusRaw];
  v3 = objc_opt_class();

  return [v3 _ekParticipantStatusFromCalAttendeeStatus:statusRaw];
}

- (int)statusRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992538]];
  integerValue = [v2 integerValue];

  return integerValue;
}

+ (id)knownSingleValueKeysForComparison
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKAttendee_knownSingleValueKeysForComparison__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (knownSingleValueKeysForComparison_onceToken_5 != -1)
  {
    dispatch_once(&knownSingleValueKeysForComparison_onceToken_5, block);
  }

  v2 = knownSingleValueKeysForComparison_keys_5;

  return v2;
}

void __47__EKAttendee_knownSingleValueKeysForComparison__block_invoke(uint64_t a1)
{
  v14[10] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6992520];
  v14[0] = *MEMORY[0x1E6992508];
  v14[1] = v2;
  v3 = *MEMORY[0x1E6992518];
  v14[2] = *MEMORY[0x1E6992528];
  v14[3] = v3;
  v4 = *MEMORY[0x1E6992538];
  v14[4] = *MEMORY[0x1E6992530];
  v14[5] = v4;
  v5 = *MEMORY[0x1E6992B88];
  v14[6] = *MEMORY[0x1E6992B80];
  v14[7] = v5;
  v6 = *MEMORY[0x1E6992B98];
  v14[8] = *MEMORY[0x1E6992B68];
  v14[9] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];
  v8 = knownSingleValueKeysForComparison_keys_5;
  knownSingleValueKeysForComparison_keys_5 = v7;

  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___EKAttendee;
  v9 = objc_msgSendSuper2(&v13, sel_knownSingleValueKeysForComparison);
  v10 = [v9 arrayByAddingObjectsFromArray:knownSingleValueKeysForComparison_keys_5];
  v11 = knownSingleValueKeysForComparison_keys_5;
  knownSingleValueKeysForComparison_keys_5 = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v11.receiver = self;
    v11.super_class = EKAttendee;
    return [(EKObject *)&v11 copyWithZone:zone];
  }

  else
  {
    name = [(EKParticipant *)self name];
    emailAddress = [(EKParticipant *)self emailAddress];
    phoneNumber = [(EKParticipant *)self phoneNumber];
    v9 = [(EKParticipant *)self URL];
    v5 = [EKAttendee attendeeWithName:name emailAddress:emailAddress phoneNumber:phoneNumber url:v9];

    if (v5)
    {
      [v5 setParticipantStatus:{-[EKAttendee participantStatus](self, "participantStatus")}];
      [v5 setParticipantRole:{-[EKAttendee participantRole](self, "participantRole")}];
      [v5 setParticipantType:{-[EKAttendee participantType](self, "participantType")}];
      [v5 setPendingStatus:{-[EKAttendee pendingStatus](self, "pendingStatus")}];
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(EKParticipant *)self UUID];
  name = [(EKParticipant *)self name];
  emailAddress = [(EKParticipant *)self emailAddress];
  phoneNumber = [(EKParticipant *)self phoneNumber];
  v9 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ name = %@; email = %@; phone = %@; status = %ld; role = %ld; type = %ld}", v4, self, uUID, name, emailAddress, phoneNumber, -[EKAttendee participantStatus](self, "participantStatus"), -[EKAttendee participantRole](self, "participantRole"), -[EKAttendee participantType](self, "participantType")];;

  return v9;
}

+ (int64_t)_ekParticipantStatusFromCalAttendeeStatus:(int)status
{
  if (*MEMORY[0x1E6992428] == status)
  {
    return -1;
  }

  if (status < 8)
  {
    return qword_1A81C3DE8[status];
  }

  v5 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(EKAttendee *)status _ekParticipantStatusFromCalAttendeeStatus:v5];
  }

  return 0;
}

+ (int)_calAttendeeStatusFromEKParticipantStatus:(int64_t)status
{
  statusCopy = status;
  if (status <= 2)
  {
    if (status > 0)
    {
      return status != 1;
    }

    if (status == -1)
    {
      return *MEMORY[0x1E6992428];
    }

    if (!status)
    {
      return 7;
    }

    goto LABEL_18;
  }

  if (status > 4)
  {
    switch(status)
    {
      case 5:
        return 4;
      case 6:
        return 5;
      case 7:
        return 6;
    }

LABEL_18:
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKAttendee *)statusCopy _calAttendeeStatusFromEKParticipantStatus:v5];
    }

    return 7;
  }

  if (status == 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)setParticipantStatus:(int64_t)status
{
  v4 = [objc_opt_class() _calAttendeeStatusFromEKParticipantStatus:status];
  [(EKAttendee *)self setStatusRaw:v4];

  [(EKAttendee *)self setPendingStatusRaw:v4];
}

- (int64_t)participantRole
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992520]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setParticipantRole:(int64_t)role
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:role];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992520]];
}

- (int)pendingStatusRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992530]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)pendingStatus
{
  pendingStatusRaw = [(EKAttendee *)self pendingStatusRaw];
  v3 = objc_opt_class();

  return [v3 _ekParticipantStatusFromCalAttendeeStatus:pendingStatusRaw];
}

- (void)setPendingStatus:(int64_t)status
{
  v4 = [objc_opt_class() _calAttendeeStatusFromEKParticipantStatus:status];

  [(EKAttendee *)self setPendingStatusRaw:v4];
}

- (int64_t)participantType
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992528]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setParticipantType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992528]];
}

- (BOOL)isCurrentUser
{
  if ([(EKObject *)self isNew])
  {
    return 0;
  }

  v4 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992510]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (unsigned)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992508]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)_setFlag:(unsigned int)flag value:(BOOL)value
{
  valueCopy = value;
  flags = [(EKAttendee *)self flags];
  if (valueCopy)
  {
    v8 = flags | flag;
  }

  else
  {
    v8 = flags & ~flag;
  }

  [(EKAttendee *)self setFlags:v8];
}

- (id)proposedStartDate
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B80]];
  [v2 timeIntervalSinceReferenceDate];
  if (fabs(v3) >= 2.22044605e-16)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasProposedStartDate
{
  proposedStartDate = [(EKAttendee *)self proposedStartDate];
  v3 = proposedStartDate != 0;

  return v3;
}

- (id)proposedStartDateForEvent:(id)event
{
  eventCopy = event;
  proposedStartDate = [(EKAttendee *)self proposedStartDate];
  v10 = 0;
  v6 = [eventCopy adjustedPersistedDateForDate:proposedStartDate withAdjustmentMode:1 pinMode:0 clientCalendarDate:&v10];
  v7 = v10;

  date = [v7 date];

  return date;
}

- (void)setProposedStartDate:(id)date forEvent:(id)event
{
  v8 = [event adjustedPersistedDateForDate:date withAdjustmentMode:0 pinMode:0 clientCalendarDate:0];
  proposedStartDate = [(EKAttendee *)self proposedStartDate];
  v7 = [v8 isEqualToDate:proposedStartDate];

  if ((v7 & 1) == 0)
  {
    [(EKAttendee *)self setProposedStartDate:v8];
    [(EKAttendee *)self setProposedStartDateStatus:0];
    if (date)
    {
      if ([(EKAttendee *)self participantStatus]== 2 || [(EKParticipant *)self needsResponse])
      {
        [(EKAttendee *)self setParticipantStatus:4];
      }
    }
  }
}

- (int)proposedStartDateStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B88]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (void)_ekParticipantStatusFromCalAttendeeStatus:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Unexpected CalAttendeeStatus: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_calAttendeeStatusFromEKParticipantStatus:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Unexpected EKParticipantStatus: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end