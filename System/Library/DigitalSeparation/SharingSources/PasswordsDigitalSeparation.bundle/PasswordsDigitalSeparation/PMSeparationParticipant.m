@interface PMSeparationParticipant
- (NSString)description;
- (PMSeparationParticipant)initWithParticipant:(id)a3 identity:(id)a4;
- (int64_t)role;
@end

@implementation PMSeparationParticipant

- (PMSeparationParticipant)initWithParticipant:(id)a3 identity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PMSeparationParticipant;
  v9 = [(PMSeparationParticipant *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, a3);
    objc_storeStrong(&v10->_identity, a4);
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(KCSharingParticipant *)self->_participant handle];
  v6 = [v3 stringWithFormat:@"<%@: %p handle: %@>", v4, self, v5];;

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