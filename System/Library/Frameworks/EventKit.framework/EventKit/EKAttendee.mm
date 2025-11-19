@interface EKAttendee
+ (id)knownSingleValueKeysForComparison;
+ (int)_calAttendeeStatusFromEKParticipantStatus:(int64_t)a3;
+ (int64_t)_ekParticipantStatusFromCalAttendeeStatus:(int)a3;
- (BOOL)hasProposedStartDate;
- (BOOL)isCurrentUser;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)proposedStartDate;
- (id)proposedStartDateForEvent:(id)a3;
- (int)pendingStatusRaw;
- (int)proposedStartDateStatus;
- (int)statusRaw;
- (int64_t)participantRole;
- (int64_t)participantStatus;
- (int64_t)participantType;
- (int64_t)pendingStatus;
- (unsigned)flags;
- (void)_setFlag:(unsigned int)a3 value:(BOOL)a4;
- (void)setParticipantRole:(int64_t)a3;
- (void)setParticipantStatus:(int64_t)a3;
- (void)setParticipantType:(int64_t)a3;
- (void)setPendingStatus:(int64_t)a3;
- (void)setProposedStartDate:(id)a3 forEvent:(id)a4;
@end

@implementation EKAttendee

- (int64_t)participantStatus
{
  v2 = [(EKAttendee *)self statusRaw];
  v3 = objc_opt_class();

  return [v3 _ekParticipantStatusFromCalAttendeeStatus:v2];
}

- (int)statusRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992538]];
  v3 = [v2 integerValue];

  return v3;
}

+ (id)knownSingleValueKeysForComparison
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKAttendee_knownSingleValueKeysForComparison__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v11.receiver = self;
    v11.super_class = EKAttendee;
    return [(EKObject *)&v11 copyWithZone:a3];
  }

  else
  {
    v6 = [(EKParticipant *)self name];
    v7 = [(EKParticipant *)self emailAddress];
    v8 = [(EKParticipant *)self phoneNumber];
    v9 = [(EKParticipant *)self URL];
    v5 = [EKAttendee attendeeWithName:v6 emailAddress:v7 phoneNumber:v8 url:v9];

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
  v5 = [(EKParticipant *)self UUID];
  v6 = [(EKParticipant *)self name];
  v7 = [(EKParticipant *)self emailAddress];
  v8 = [(EKParticipant *)self phoneNumber];
  v9 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ name = %@; email = %@; phone = %@; status = %ld; role = %ld; type = %ld}", v4, self, v5, v6, v7, v8, -[EKAttendee participantStatus](self, "participantStatus"), -[EKAttendee participantRole](self, "participantRole"), -[EKAttendee participantType](self, "participantType")];;

  return v9;
}

+ (int64_t)_ekParticipantStatusFromCalAttendeeStatus:(int)a3
{
  if (*MEMORY[0x1E6992428] == a3)
  {
    return -1;
  }

  if (a3 < 8)
  {
    return qword_1A81C3DE8[a3];
  }

  v5 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(EKAttendee *)a3 _ekParticipantStatusFromCalAttendeeStatus:v5];
  }

  return 0;
}

+ (int)_calAttendeeStatusFromEKParticipantStatus:(int64_t)a3
{
  v3 = a3;
  if (a3 <= 2)
  {
    if (a3 > 0)
    {
      return a3 != 1;
    }

    if (a3 == -1)
    {
      return *MEMORY[0x1E6992428];
    }

    if (!a3)
    {
      return 7;
    }

    goto LABEL_18;
  }

  if (a3 > 4)
  {
    switch(a3)
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
      [(EKAttendee *)v3 _calAttendeeStatusFromEKParticipantStatus:v5];
    }

    return 7;
  }

  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)setParticipantStatus:(int64_t)a3
{
  v4 = [objc_opt_class() _calAttendeeStatusFromEKParticipantStatus:a3];
  [(EKAttendee *)self setStatusRaw:v4];

  [(EKAttendee *)self setPendingStatusRaw:v4];
}

- (int64_t)participantRole
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992520]];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setParticipantRole:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992520]];
}

- (int)pendingStatusRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992530]];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)pendingStatus
{
  v2 = [(EKAttendee *)self pendingStatusRaw];
  v3 = objc_opt_class();

  return [v3 _ekParticipantStatusFromCalAttendeeStatus:v2];
}

- (void)setPendingStatus:(int64_t)a3
{
  v4 = [objc_opt_class() _calAttendeeStatusFromEKParticipantStatus:a3];

  [(EKAttendee *)self setPendingStatusRaw:v4];
}

- (int64_t)participantType
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992528]];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setParticipantType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992528]];
}

- (BOOL)isCurrentUser
{
  if ([(EKObject *)self isNew])
  {
    return 0;
  }

  v4 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992510]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (unsigned)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992508]];
  v3 = [v2 intValue];

  return v3;
}

- (void)_setFlag:(unsigned int)a3 value:(BOOL)a4
{
  v4 = a4;
  v7 = [(EKAttendee *)self flags];
  if (v4)
  {
    v8 = v7 | a3;
  }

  else
  {
    v8 = v7 & ~a3;
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
  v2 = [(EKAttendee *)self proposedStartDate];
  v3 = v2 != 0;

  return v3;
}

- (id)proposedStartDateForEvent:(id)a3
{
  v4 = a3;
  v5 = [(EKAttendee *)self proposedStartDate];
  v10 = 0;
  v6 = [v4 adjustedPersistedDateForDate:v5 withAdjustmentMode:1 pinMode:0 clientCalendarDate:&v10];
  v7 = v10;

  v8 = [v7 date];

  return v8;
}

- (void)setProposedStartDate:(id)a3 forEvent:(id)a4
{
  v8 = [a4 adjustedPersistedDateForDate:a3 withAdjustmentMode:0 pinMode:0 clientCalendarDate:0];
  v6 = [(EKAttendee *)self proposedStartDate];
  v7 = [v8 isEqualToDate:v6];

  if ((v7 & 1) == 0)
  {
    [(EKAttendee *)self setProposedStartDate:v8];
    [(EKAttendee *)self setProposedStartDateStatus:0];
    if (a3)
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
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