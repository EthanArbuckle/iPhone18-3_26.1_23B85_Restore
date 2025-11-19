@interface LAEnvironmentState
- (BOOL)isEqual:(id)a3;
- (LAEnvironmentState)initWithCoreState:(id)a3;
- (NSArray)allMechanisms;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation LAEnvironmentState

- (LAEnvironmentState)initWithCoreState:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34.receiver = self;
  v34.super_class = LAEnvironmentState;
  v6 = [(LAEnvironmentState *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreState, a3);
    v8 = [v5 biometry];
    if ([v8 biometryType])
    {
      v9 = [LAEnvironmentMechanismBiometry alloc];
      v10 = [v5 biometry];
      v11 = [(LAEnvironmentMechanismBiometry *)v9 initWithCoreMechanism:v10];
      biometry = v7->_biometry;
      v7->_biometry = v11;
    }

    else
    {
      v10 = v7->_biometry;
      v7->_biometry = 0;
    }

    v13 = [LAEnvironmentMechanismUserPassword alloc];
    v14 = [v5 userPassword];
    v15 = [(LAEnvironmentMechanismUserPassword *)v13 initWithCoreMechanism:v14];
    userPassword = v7->_userPassword;
    v7->_userPassword = v15;

    v17 = objc_opt_new();
    companions = v7->_companions;
    v7->_companions = v17;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [v5 companions];
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = v7->_companions;
          v25 = [[LAEnvironmentMechanismCompanion alloc] initWithCoreMechanism:*(*(&v30 + 1) + 8 * v23)];
          v26 = [(NSArray *)v24 arrayByAddingObject:v25];
          v27 = v7->_companions;
          v7->_companions = v26;

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LAEnvironmentState alloc];
  v5 = [(LAEnvironmentState *)self coreState];
  v6 = [(LAEnvironmentState *)v4 initWithCoreState:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(LAEnvironmentState *)self biometry];
      v7 = [(LAEnvironmentState *)v5 biometry];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(LAEnvironmentState *)self biometry];
        v10 = [(LAEnvironmentState *)v5 biometry];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      v13 = [(LAEnvironmentState *)self userPassword];
      v14 = [(LAEnvironmentState *)v5 userPassword];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(LAEnvironmentState *)self userPassword];
        v17 = [(LAEnvironmentState *)v5 userPassword];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      v19 = [(LAEnvironmentState *)self companions];
      v20 = [(LAEnvironmentState *)v5 companions];
      if (v19 == v20)
      {
        v12 = 1;
      }

      else
      {
        v21 = [(LAEnvironmentState *)self companions];
        v22 = [(LAEnvironmentState *)v5 companions];
        v12 = [v21 isEqualToArray:v22];
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
  v5 = [(LAEnvironmentState *)self allMechanisms];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v6];;

  return v7;
}

- (NSArray)allMechanisms
{
  v3 = objc_opt_new();
  v4 = [(LAEnvironmentState *)self biometry];

  if (v4)
  {
    v5 = [(LAEnvironmentState *)self biometry];
    [v3 addObject:v5];
  }

  v6 = [(LAEnvironmentState *)self userPassword];

  if (v6)
  {
    v7 = [(LAEnvironmentState *)self userPassword];
    [v3 addObject:v7];
  }

  v8 = [(LAEnvironmentState *)self companions];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(LAEnvironmentState *)self companions];
    [v3 addObjectsFromArray:v10];
  }

  return v3;
}

@end