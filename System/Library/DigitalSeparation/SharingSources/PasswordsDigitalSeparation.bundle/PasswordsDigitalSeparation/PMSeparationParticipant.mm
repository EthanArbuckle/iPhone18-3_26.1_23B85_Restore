@interface PMSeparationParticipant
- (NSString)description;
- (PMSeparationParticipant)initWithParticipant:(id)participant identity:(id)identity;
- (int64_t)role;
@end

@implementation PMSeparationParticipant

- (PMSeparationParticipant)initWithParticipant:(id)participant identity:(id)identity
{
  participantCopy = participant;
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = PMSeparationParticipant;
  v9 = [(PMSeparationParticipant *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, participant);
    objc_storeStrong(&v10->_identity, identity);
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  handle = [(KCSharingParticipant *)self->_participant handle];
  v6 = [v3 stringWithFormat:@"<%@: %p handle: %@>", v4, self, handle];;

  return v6;
}

- (int64_t)role
{
  if ([(KCSharingParticipant *)self->_participant permissionLevel]== 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end