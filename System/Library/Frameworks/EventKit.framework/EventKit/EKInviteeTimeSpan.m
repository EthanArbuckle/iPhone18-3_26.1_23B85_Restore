@interface EKInviteeTimeSpan
- (EKInviteeTimeSpan)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EKInviteeTimeSpan

- (EKInviteeTimeSpan)init
{
  v5.receiver = self;
  v5.super_class = EKInviteeTimeSpan;
  v2 = [(EKInviteeTimeSpan *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeTimeSpan *)v2 setConflictedParticipants:v3];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(EKInviteeTimeSpan *)self startDate];
  v6 = [v5 copy];
  [v4 setStartDate:v6];

  v7 = [(EKInviteeTimeSpan *)self endDate];
  v8 = [v7 copy];
  [v4 setEndDate:v8];

  v9 = [(EKInviteeTimeSpan *)self conflictedParticipants];
  v10 = [v9 copy];
  [v4 setConflictedParticipants:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = EKInviteeTimeSpan;
  v4 = [(EKInviteeTimeSpan *)&v16 description];
  v5 = [(EKInviteeTimeSpan *)self startDate];
  v6 = [(EKInviteeTimeSpan *)self endDate];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(EKInviteeTimeSpan *)self endDate];
  v9 = [(EKInviteeTimeSpan *)self startDate];
  [v8 timeIntervalSinceDate:v9];
  v10 = [v7 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  v12 = [(EKInviteeTimeSpan *)self conflictedParticipants];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  v14 = [v3 stringWithFormat:@"[%@] startDate: [%@] endDate: [%@] duration: [%@ seconds] conflictedParticipants count: [%@]", v4, v5, v6, v10, v13];

  return v14;
}

@end