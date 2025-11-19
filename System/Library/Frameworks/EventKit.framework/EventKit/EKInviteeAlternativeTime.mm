@interface EKInviteeAlternativeTime
- (EKInviteeAlternativeTime)initWithStartDate:(id)a3 endDate:(id)a4 conflictedParticipants:(id)a5;
- (id)description;
@end

@implementation EKInviteeAlternativeTime

- (EKInviteeAlternativeTime)initWithStartDate:(id)a3 endDate:(id)a4 conflictedParticipants:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EKInviteeAlternativeTime;
  v11 = [(EKInviteeAlternativeTime *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(EKInviteeAlternativeTime *)v11 setStartDate:v8];
    [(EKInviteeAlternativeTime *)v12 setEndDate:v9];
    [(EKInviteeAlternativeTime *)v12 setConflictedParticipants:v10];
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = EKInviteeAlternativeTime;
  v4 = [(EKInviteeAlternativeTime *)&v16 description];
  v5 = [(EKInviteeAlternativeTime *)self startDate];
  v6 = [(EKInviteeAlternativeTime *)self endDate];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(EKInviteeAlternativeTime *)self endDate];
  v9 = [(EKInviteeAlternativeTime *)self startDate];
  [v8 timeIntervalSinceDate:v9];
  v10 = [v7 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  v12 = [(EKInviteeAlternativeTime *)self conflictedParticipants];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  v14 = [v3 stringWithFormat:@"[%@] startDate: [%@] endDate: [%@] duration: [%@ seconds] conflictedParticipants count: [%@]", v4, v5, v6, v10, v13];

  return v14;
}

@end