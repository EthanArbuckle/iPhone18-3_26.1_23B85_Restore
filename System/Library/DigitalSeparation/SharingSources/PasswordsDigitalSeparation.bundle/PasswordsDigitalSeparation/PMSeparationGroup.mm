@interface PMSeparationGroup
- (NSString)description;
- (PMSeparationGroup)initWithGroup:(id)a3 participants:(id)a4;
@end

@implementation PMSeparationGroup

- (PMSeparationGroup)initWithGroup:(id)a3 participants:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PMSeparationGroup;
  v9 = [(PMSeparationGroup *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_group, a3);
    v11 = [v8 copy];
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
  v5 = [(KCSharingGroup *)self->_group groupID];
  v6 = [v3 stringWithFormat:@"<%@: %p groupID: %@>", v4, self, v5];;

  return v6;
}

@end