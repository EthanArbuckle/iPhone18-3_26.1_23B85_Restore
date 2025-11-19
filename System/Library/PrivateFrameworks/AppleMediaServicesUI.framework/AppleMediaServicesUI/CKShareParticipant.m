@interface CKShareParticipant
- (NSString)hashedDescription;
- (int64_t)participantRole;
- (int64_t)participantStatus;
@end

@implementation CKShareParticipant

- (int64_t)participantRole
{
  v2 = [(CKShareParticipant *)self role];
  if ((v2 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1001F2348[v2 - 1];
  }
}

- (int64_t)participantStatus
{
  v2 = [(CKShareParticipant *)self acceptanceStatus];
  if ((v2 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1001F2368[v2 - 1];
  }
}

- (NSString)hashedDescription
{
  v13 = objc_opt_class();
  v3 = [(CKShareParticipant *)self userIdentity];
  v4 = [v3 nameComponents];
  v5 = [v4 givenName];
  v6 = AMSHashIfNeeded();
  v7 = [(CKShareParticipant *)self userIdentity];
  v8 = [v7 nameComponents];
  v9 = [v8 familyName];
  v10 = AMSHashIfNeeded();
  v11 = [NSString stringWithFormat:@"<%@: %p name = %@ %@ | role = %ld | status = %ld", v13, self, v6, v10, [(CKShareParticipant *)self participantRole], [(CKShareParticipant *)self participantStatus]];

  return v11;
}

@end