@interface EKInviteeTimeSpan
- (EKInviteeTimeSpan)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  startDate = [(EKInviteeTimeSpan *)self startDate];
  v6 = [startDate copy];
  [v4 setStartDate:v6];

  endDate = [(EKInviteeTimeSpan *)self endDate];
  v8 = [endDate copy];
  [v4 setEndDate:v8];

  conflictedParticipants = [(EKInviteeTimeSpan *)self conflictedParticipants];
  v10 = [conflictedParticipants copy];
  [v4 setConflictedParticipants:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = EKInviteeTimeSpan;
  v4 = [(EKInviteeTimeSpan *)&v16 description];
  startDate = [(EKInviteeTimeSpan *)self startDate];
  endDate = [(EKInviteeTimeSpan *)self endDate];
  v7 = MEMORY[0x1E696AD98];
  endDate2 = [(EKInviteeTimeSpan *)self endDate];
  startDate2 = [(EKInviteeTimeSpan *)self startDate];
  [endDate2 timeIntervalSinceDate:startDate2];
  v10 = [v7 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  conflictedParticipants = [(EKInviteeTimeSpan *)self conflictedParticipants];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(conflictedParticipants, "count")}];
  v14 = [v3 stringWithFormat:@"[%@] startDate: [%@] endDate: [%@] duration: [%@ seconds] conflictedParticipants count: [%@]", v4, startDate, endDate, v10, v13];

  return v14;
}

@end