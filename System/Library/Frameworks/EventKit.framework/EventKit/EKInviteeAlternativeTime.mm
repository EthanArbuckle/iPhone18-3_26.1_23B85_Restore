@interface EKInviteeAlternativeTime
- (EKInviteeAlternativeTime)initWithStartDate:(id)date endDate:(id)endDate conflictedParticipants:(id)participants;
- (id)description;
@end

@implementation EKInviteeAlternativeTime

- (EKInviteeAlternativeTime)initWithStartDate:(id)date endDate:(id)endDate conflictedParticipants:(id)participants
{
  dateCopy = date;
  endDateCopy = endDate;
  participantsCopy = participants;
  v14.receiver = self;
  v14.super_class = EKInviteeAlternativeTime;
  v11 = [(EKInviteeAlternativeTime *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(EKInviteeAlternativeTime *)v11 setStartDate:dateCopy];
    [(EKInviteeAlternativeTime *)v12 setEndDate:endDateCopy];
    [(EKInviteeAlternativeTime *)v12 setConflictedParticipants:participantsCopy];
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = EKInviteeAlternativeTime;
  v4 = [(EKInviteeAlternativeTime *)&v16 description];
  startDate = [(EKInviteeAlternativeTime *)self startDate];
  endDate = [(EKInviteeAlternativeTime *)self endDate];
  v7 = MEMORY[0x1E696AD98];
  endDate2 = [(EKInviteeAlternativeTime *)self endDate];
  startDate2 = [(EKInviteeAlternativeTime *)self startDate];
  [endDate2 timeIntervalSinceDate:startDate2];
  v10 = [v7 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  conflictedParticipants = [(EKInviteeAlternativeTime *)self conflictedParticipants];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(conflictedParticipants, "count")}];
  v14 = [v3 stringWithFormat:@"[%@] startDate: [%@] endDate: [%@] duration: [%@ seconds] conflictedParticipants count: [%@]", v4, startDate, endDate, v10, v13];

  return v14;
}

@end