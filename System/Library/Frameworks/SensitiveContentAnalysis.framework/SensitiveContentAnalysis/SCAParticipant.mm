@interface SCAParticipant
- (BOOL)isEqual:(id)a3;
- (SCAParticipant)initWithCoder:(id)a3;
- (SCAParticipant)initWithDisplayName:(id)a3 firstName:(id)a4 lastName:(id)a5 handles:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCAParticipant

- (SCAParticipant)initWithDisplayName:(id)a3 firstName:(id)a4 lastName:(id)a5 handles:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v22.receiver = self;
  v22.super_class = SCAParticipant;
  v12 = [(SCAParticipant *)&v22 init];
  if (v12)
  {
    v13 = [v9 copy];
    displayName = v12->_displayName;
    v12->_displayName = v13;

    v15 = [v10 copy];
    firstName = v12->_firstName;
    v12->_firstName = v15;

    v17 = [v10 copy];
    lastName = v12->_lastName;
    v12->_lastName = v17;

    v19 = [v11 copy];
    handles = v12->_handles;
    v12->_handles = v19;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      displayName = self->_displayName;
      v7 = [(SCAParticipant *)v5 displayName];
      if ([(NSString *)displayName isEqual:v7])
      {
        handles = self->_handles;
        v9 = [(SCAParticipant *)v5 handles];
        v10 = [(NSSet *)handles isEqual:v9];
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
      [(SCAParticipant *)&v12 isEqual:v4];
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCAParticipant *)self displayName];
  [v4 encodeObject:v5 forKey:@"displayName"];

  v7 = [(SCAParticipant *)self handles];
  v6 = [v7 allObjects];
  [v4 encodeObject:v6 forKey:@"handles"];
}

- (SCAParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"handles"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
      self = [(SCAParticipant *)self initWithDisplayName:v5 handles:v7];

      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCAParticipant alloc];
  v5 = [(SCAParticipant *)self displayName];
  v6 = [(SCAParticipant *)self handles];
  v7 = [(SCAParticipant *)v4 initWithDisplayName:v5 handles:v6];

  return v7;
}

@end