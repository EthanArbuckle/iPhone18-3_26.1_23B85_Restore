@interface LAEnvironmentState
- (BOOL)isEqual:(id)equal;
- (LAEnvironmentState)initWithCoreState:(id)state;
- (NSArray)allMechanisms;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation LAEnvironmentState

- (LAEnvironmentState)initWithCoreState:(id)state
{
  v36 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v34.receiver = self;
  v34.super_class = LAEnvironmentState;
  v6 = [(LAEnvironmentState *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreState, state);
    biometry = [stateCopy biometry];
    if ([biometry biometryType])
    {
      v9 = [LAEnvironmentMechanismBiometry alloc];
      biometry2 = [stateCopy biometry];
      v11 = [(LAEnvironmentMechanismBiometry *)v9 initWithCoreMechanism:biometry2];
      biometry = v7->_biometry;
      v7->_biometry = v11;
    }

    else
    {
      biometry2 = v7->_biometry;
      v7->_biometry = 0;
    }

    v13 = [LAEnvironmentMechanismUserPassword alloc];
    userPassword = [stateCopy userPassword];
    v15 = [(LAEnvironmentMechanismUserPassword *)v13 initWithCoreMechanism:userPassword];
    userPassword = v7->_userPassword;
    v7->_userPassword = v15;

    v17 = objc_opt_new();
    companions = v7->_companions;
    v7->_companions = v17;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    companions = [stateCopy companions];
    v20 = [companions countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        v23 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(companions);
          }

          v24 = v7->_companions;
          v25 = [[LAEnvironmentMechanismCompanion alloc] initWithCoreMechanism:*(*(&v30 + 1) + 8 * v23)];
          v26 = [(NSArray *)v24 arrayByAddingObject:v25];
          v27 = v7->_companions;
          v7->_companions = v26;

          ++v23;
        }

        while (v21 != v23);
        v21 = [companions countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LAEnvironmentState alloc];
  coreState = [(LAEnvironmentState *)self coreState];
  v6 = [(LAEnvironmentState *)v4 initWithCoreState:coreState];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      biometry = [(LAEnvironmentState *)self biometry];
      biometry2 = [(LAEnvironmentState *)v5 biometry];
      v8 = biometry2;
      if (biometry == biometry2)
      {
      }

      else
      {
        biometry3 = [(LAEnvironmentState *)self biometry];
        biometry4 = [(LAEnvironmentState *)v5 biometry];
        v11 = [biometry3 isEqual:biometry4];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      userPassword = [(LAEnvironmentState *)self userPassword];
      userPassword2 = [(LAEnvironmentState *)v5 userPassword];
      v15 = userPassword2;
      if (userPassword == userPassword2)
      {
      }

      else
      {
        userPassword3 = [(LAEnvironmentState *)self userPassword];
        userPassword4 = [(LAEnvironmentState *)v5 userPassword];
        v18 = [userPassword3 isEqual:userPassword4];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      companions = [(LAEnvironmentState *)self companions];
      companions2 = [(LAEnvironmentState *)v5 companions];
      if (companions == companions2)
      {
        v12 = 1;
      }

      else
      {
        companions3 = [(LAEnvironmentState *)self companions];
        companions4 = [(LAEnvironmentState *)v5 companions];
        v12 = [companions3 isEqualToArray:companions4];
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12 & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  allMechanisms = [(LAEnvironmentState *)self allMechanisms];
  v6 = [allMechanisms componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v6];;

  return v7;
}

- (NSArray)allMechanisms
{
  v3 = objc_opt_new();
  biometry = [(LAEnvironmentState *)self biometry];

  if (biometry)
  {
    biometry2 = [(LAEnvironmentState *)self biometry];
    [v3 addObject:biometry2];
  }

  userPassword = [(LAEnvironmentState *)self userPassword];

  if (userPassword)
  {
    userPassword2 = [(LAEnvironmentState *)self userPassword];
    [v3 addObject:userPassword2];
  }

  companions = [(LAEnvironmentState *)self companions];
  v9 = [companions count];

  if (v9)
  {
    companions2 = [(LAEnvironmentState *)self companions];
    [v3 addObjectsFromArray:companions2];
  }

  return v3;
}

@end