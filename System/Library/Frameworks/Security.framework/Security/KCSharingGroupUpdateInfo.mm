@interface KCSharingGroupUpdateInfo
- (KCSharingGroupUpdateInfo)initWithCoder:(id)a3;
- (KCSharingGroupUpdateInfo)initWithDepartedGroupID:(id)a3;
- (KCSharingGroupUpdateInfo)initWithGroup:(id)a3 addedParticipants:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCSharingGroupUpdateInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  updateType = self->_updateType;
  v7 = a3;
  v6 = [v4 numberWithLongLong:updateType];
  [v7 encodeObject:v6 forKey:@"updateType"];

  [v7 encodeObject:self->_updatedGroup forKey:@"updatedGroup"];
  [v7 encodeObject:self->_addedParticipants forKey:@"addedParticipants"];
  [v7 encodeObject:self->_departedGroupID forKey:@"departedGroupID"];
}

- (KCSharingGroupUpdateInfo)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = KCSharingGroupUpdateInfo;
  v5 = [(KCSharingGroupUpdateInfo *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateType"];
    v5->_updateType = [v6 integerValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatedGroup"];
    updatedGroup = v5->_updatedGroup;
    v5->_updatedGroup = v7;

    v9 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v11 = [v9 setWithArray:v10];

    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"addedParticipants"];
    addedParticipants = v5->_addedParticipants;
    v5->_addedParticipants = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"departedGroupID"];
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
    v5 = [(KCSharingGroup *)self->_updatedGroup groupID];
    v6 = [(KCSharingGroup *)self->_updatedGroup displayName];
    v7 = [v4 stringWithFormat:@"KCSharingGroupUpdateInfo(%@, name: %@, new participants: %@)", v5, v6, self->_addedParticipants];
  }

  return v7;
}

- (KCSharingGroupUpdateInfo)initWithDepartedGroupID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = KCSharingGroupUpdateInfo;
  v5 = [(KCSharingGroupUpdateInfo *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_updateType = 1;
    v7 = [v4 copy];
    departedGroupID = v6->_departedGroupID;
    v6->_departedGroupID = v7;
  }

  return v6;
}

- (KCSharingGroupUpdateInfo)initWithGroup:(id)a3 addedParticipants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = KCSharingGroupUpdateInfo;
  v8 = [(KCSharingGroupUpdateInfo *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_updateType = 0;
    v10 = [v6 copy];
    updatedGroup = v9->_updatedGroup;
    v9->_updatedGroup = v10;

    v12 = [v7 copy];
    addedParticipants = v9->_addedParticipants;
    v9->_addedParticipants = v12;
  }

  return v9;
}

@end