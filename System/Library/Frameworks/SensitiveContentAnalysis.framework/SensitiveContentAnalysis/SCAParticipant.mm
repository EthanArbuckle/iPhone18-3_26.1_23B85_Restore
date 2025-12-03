@interface SCAParticipant
- (BOOL)isEqual:(id)equal;
- (SCAParticipant)initWithCoder:(id)coder;
- (SCAParticipant)initWithDisplayName:(id)name firstName:(id)firstName lastName:(id)lastName handles:(id)handles;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCAParticipant

- (SCAParticipant)initWithDisplayName:(id)name firstName:(id)firstName lastName:(id)lastName handles:(id)handles
{
  nameCopy = name;
  firstNameCopy = firstName;
  handlesCopy = handles;
  v22.receiver = self;
  v22.super_class = SCAParticipant;
  v12 = [(SCAParticipant *)&v22 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    displayName = v12->_displayName;
    v12->_displayName = v13;

    v15 = [firstNameCopy copy];
    firstName = v12->_firstName;
    v12->_firstName = v15;

    v17 = [firstNameCopy copy];
    lastName = v12->_lastName;
    v12->_lastName = v17;

    v19 = [handlesCopy copy];
    handles = v12->_handles;
    v12->_handles = v19;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      displayName = self->_displayName;
      displayName = [(SCAParticipant *)v5 displayName];
      if ([(NSString *)displayName isEqual:displayName])
      {
        handles = self->_handles;
        handles = [(SCAParticipant *)v5 handles];
        v10 = [(NSSet *)handles isEqual:handles];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SCAParticipant;
      [(SCAParticipant *)&v12 isEqual:equalCopy];
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(SCAParticipant *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  handles = [(SCAParticipant *)self handles];
  allObjects = [handles allObjects];
  [coderCopy encodeObject:allObjects forKey:@"handles"];
}

- (SCAParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"handles"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
      self = [(SCAParticipant *)self initWithDisplayName:v5 handles:v7];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SCAParticipant alloc];
  displayName = [(SCAParticipant *)self displayName];
  handles = [(SCAParticipant *)self handles];
  v7 = [(SCAParticipant *)v4 initWithDisplayName:displayName handles:handles];

  return v7;
}

@end