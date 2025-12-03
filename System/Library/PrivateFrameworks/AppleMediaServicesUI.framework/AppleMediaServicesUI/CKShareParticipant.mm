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
    return qword_1001F2348[role - 1];
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
    return qword_1001F2368[acceptanceStatus - 1];
  }
}

- (NSString)hashedDescription
{
  v13 = objc_opt_class();
  userIdentity = [(CKShareParticipant *)self userIdentity];
  nameComponents = [userIdentity nameComponents];
  givenName = [nameComponents givenName];
  v6 = AMSHashIfNeeded();
  userIdentity2 = [(CKShareParticipant *)self userIdentity];
  nameComponents2 = [userIdentity2 nameComponents];
  familyName = [nameComponents2 familyName];
  v10 = AMSHashIfNeeded();
  v11 = [NSString stringWithFormat:@"<%@: %p name = %@ %@ | role = %ld | status = %ld", v13, self, v6, v10, [(CKShareParticipant *)self participantRole], [(CKShareParticipant *)self participantStatus]];

  return v11;
}

@end