@interface CKShareParticipant
- (NSString)hashedDescription;
- (int64_t)participantRole;
- (int64_t)participantStatus;
@end

@implementation CKShareParticipant

- (int64_t)participantRole
{
  role = [(CKShareParticipant *)self role];
  if ((role - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_10022E3C0[role - 1];
  }
}

- (int64_t)participantStatus
{
  acceptanceStatus = [(CKShareParticipant *)self acceptanceStatus];
  if ((acceptanceStatus - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_10022E3E0[acceptanceStatus - 1];
  }
}

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  participantID = [(CKShareParticipant *)self participantID];
  v5 = AMSHashIfNeeded();
  v6 = [NSString stringWithFormat:@"<%@: %p identifier = %@ | role = %ld | status = %ld", v3, self, v5, [(CKShareParticipant *)self participantRole], [(CKShareParticipant *)self participantStatus]];

  return v6;
}

@end