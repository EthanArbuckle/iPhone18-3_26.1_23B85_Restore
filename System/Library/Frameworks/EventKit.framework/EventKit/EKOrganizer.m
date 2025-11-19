@interface EKOrganizer
- (BOOL)isCurrentUser;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)scheduleAgent;
- (void)setScheduleAgent:(int64_t)a3;
@end

@implementation EKOrganizer

- (id)copyWithZone:(_NSZone *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v11.receiver = self;
    v11.super_class = EKOrganizer;
    return [(EKObject *)&v11 copyWithZone:a3];
  }

  else
  {
    v6 = [(EKParticipant *)self name];
    v7 = [(EKParticipant *)self emailAddress];
    v8 = [(EKParticipant *)self phoneNumber];
    v9 = [(EKParticipant *)self URL];
    v5 = [EKOrganizer organizerWithName:v6 emailAddress:v7 phoneNumber:v8 address:v9 isCurrentUser:[(EKOrganizer *)self isCurrentUser]];
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
  v9 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ name = %@; email = %@; phone = %@; isSelf = %d}", v4, self, v5, v6, v7, v8, -[EKOrganizer isCurrentUser](self, "isCurrentUser")];;

  return v9;
}

- (BOOL)isCurrentUser
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B28]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)scheduleAgent
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B30]];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setScheduleAgent:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992B30]];
}

@end