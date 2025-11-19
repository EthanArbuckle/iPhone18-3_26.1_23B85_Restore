@interface EKPersistentParticipant
+ (id)defaultPropertiesToLoad;
- (id)copyWithZone:(_NSZone *)a3;
- (id)semanticIdentifier;
- (id)url;
@end

@implementation EKPersistentParticipant

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_11 != -1)
  {
    +[EKPersistentParticipant defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_10;

  return v3;
}

void __50__EKPersistentParticipant_defaultPropertiesToLoad__block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992B60];
  v6[0] = *MEMORY[0x1E6992B50];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6992B08];
  v6[2] = *MEMORY[0x1E6992B70];
  v6[3] = v1;
  v2 = *MEMORY[0x1E6992B78];
  v6[4] = *MEMORY[0x1E6992B58];
  v6[5] = v2;
  v6[6] = *MEMORY[0x1E6992B38];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v4 = defaultPropertiesToLoad_defaultPropertiesToLoad_10;
  defaultPropertiesToLoad_defaultPropertiesToLoad_10 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (id)url
{
  v3 = [(EKPersistentParticipant *)self URLString];
  if (v3)
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = [(EKPersistentParticipant *)self URLString];
    v6 = [v4 URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)semanticIdentifier
{
  v3 = [(EKPersistentParticipant *)self emailAddress];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(EKPersistentParticipant *)self phoneNumber];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(EKPersistentParticipant *)self URLString];
      v9 = v8;
      if (v8)
      {
        v5 = v8;
      }

      else
      {
        v10 = [(EKPersistentParticipant *)self displayNameRaw];
        v11 = v10;
        if (v10)
        {
          v5 = v10;
        }

        else
        {
          v12 = [(EKPersistentParticipant *)self firstName];
          v13 = [(EKPersistentParticipant *)self lastName];
          if (v12 | v13)
          {
            v14 = [MEMORY[0x1E696AD60] string];
            v15 = v14;
            if (v12)
            {
              [v14 appendFormat:@"FIRST=%@;", v12];
            }

            if (v13)
            {
              [v15 appendFormat:@"LAST=%@;", v13];
            }

            v5 = [v15 copy];
          }

          else
          {
            v5 = 0;
          }
        }
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return self;
}

@end