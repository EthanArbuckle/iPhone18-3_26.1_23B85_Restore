@interface PMSeparationGroup
- (NSString)description;
- (PMSeparationGroup)initWithGroup:(id)group participants:(id)participants;
@end

@implementation PMSeparationGroup

- (PMSeparationGroup)initWithGroup:(id)group participants:(id)participants
{
  groupCopy = group;
  participantsCopy = participants;
  v15.receiver = self;
  v15.super_class = PMSeparationGroup;
  v9 = [(PMSeparationGroup *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_group, group);
    v11 = [participantsCopy copy];
    participants = v10->_participants;
    v10->_participants = v11;

    v13 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  groupID = [(KCSharingGroup *)self->_group groupID];
  v6 = [v3 stringWithFormat:@"<%@: %p groupID: %@>", v4, self, groupID];;

  return v6;
}

@end