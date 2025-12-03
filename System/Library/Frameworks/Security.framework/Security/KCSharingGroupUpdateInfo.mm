@interface KCSharingGroupUpdateInfo
- (KCSharingGroupUpdateInfo)initWithCoder:(id)coder;
- (KCSharingGroupUpdateInfo)initWithDepartedGroupID:(id)d;
- (KCSharingGroupUpdateInfo)initWithGroup:(id)group addedParticipants:(id)participants;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingGroupUpdateInfo

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  updateType = self->_updateType;
  coderCopy = coder;
  v6 = [v4 numberWithLongLong:updateType];
  [coderCopy encodeObject:v6 forKey:@"updateType"];

  [coderCopy encodeObject:self->_updatedGroup forKey:@"updatedGroup"];
  [coderCopy encodeObject:self->_addedParticipants forKey:@"addedParticipants"];
  [coderCopy encodeObject:self->_departedGroupID forKey:@"departedGroupID"];
}

- (KCSharingGroupUpdateInfo)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = KCSharingGroupUpdateInfo;
  v5 = [(KCSharingGroupUpdateInfo *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateType"];
    v5->_updateType = [v6 integerValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatedGroup"];
    updatedGroup = v5->_updatedGroup;
    v5->_updatedGroup = v7;

    v9 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v11 = [v9 setWithArray:v10];

    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"addedParticipants"];
    addedParticipants = v5->_addedParticipants;
    v5->_addedParticipants = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departedGroupID"];
    departedGroupID = v5->_departedGroupID;
    v5->_departedGroupID = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  updateType = self->_updateType;
  if (updateType == 1)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"KCSharingGroupUpdateInfo(%@, departed group)", self->_departedGroupID];
  }

  else if (updateType)
  {
    v7 = @"KCSharingGroupUpdateInfo(Unknown update type)";
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    groupID = [(KCSharingGroup *)self->_updatedGroup groupID];
    displayName = [(KCSharingGroup *)self->_updatedGroup displayName];
    v7 = [v4 stringWithFormat:@"KCSharingGroupUpdateInfo(%@, name: %@, new participants: %@)", groupID, displayName, self->_addedParticipants];
  }

  return v7;
}

- (KCSharingGroupUpdateInfo)initWithDepartedGroupID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = KCSharingGroupUpdateInfo;
  v5 = [(KCSharingGroupUpdateInfo *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_updateType = 1;
    v7 = [dCopy copy];
    departedGroupID = v6->_departedGroupID;
    v6->_departedGroupID = v7;
  }

  return v6;
}

- (KCSharingGroupUpdateInfo)initWithGroup:(id)group addedParticipants:(id)participants
{
  groupCopy = group;
  participantsCopy = participants;
  v15.receiver = self;
  v15.super_class = KCSharingGroupUpdateInfo;
  v8 = [(KCSharingGroupUpdateInfo *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_updateType = 0;
    v10 = [groupCopy copy];
    updatedGroup = v9->_updatedGroup;
    v9->_updatedGroup = v10;

    v12 = [participantsCopy copy];
    addedParticipants = v9->_addedParticipants;
    v9->_addedParticipants = v12;
  }

  return v9;
}

@end