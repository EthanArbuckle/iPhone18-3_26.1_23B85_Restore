@interface EKColor
+ (id)knownIdentityKeysForComparison;
- (BOOL)save:(id *)save;
- (BOOL)validate:(id *)validate;
- (EKColor)initWithEventStore:(id)store;
- (void)setSource:(id)source;
@end

@implementation EKColor

- (EKColor)initWithEventStore:(id)store
{
  v6.receiver = self;
  v6.super_class = EKColor;
  v3 = [(EKObject *)&v6 init];
  if (v3)
  {
    v4 = EKUUIDString();
    [(EKColor *)v3 setUUID:v4];

    [(EKObject *)v3 updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
  }

  return v3;
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_5 != -1)
  {
    +[EKColor knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_5;

  return v3;
}

void __41__EKColor_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_5;
  knownIdentityKeysForComparison_keys_5 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setSource:(id)source
{
  v4 = *MEMORY[0x1E69928C0];
  sourceCopy = source;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:sourceCopy forKey:v4 frozenClass:objc_opt_class()];
}

- (BOOL)validate:(id *)validate
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = EKColor;
  LODWORD(v5) = [(EKObject *)&v17 validate:?];
  if (v5)
  {
    if (![(EKObject *)self isNew])
    {
      v19[0] = *MEMORY[0x1E69928C0];
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v7 = [(EKObject *)self hasUnsavedChangesInKeys:v6];

      if (v7)
      {
        if (validate)
        {
          v8 = 72;
LABEL_16:
          v14 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v8];
          v5 = v14;
          LOBYTE(v5) = 0;
          *validate = v14;
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    if (![(EKObject *)self isNew])
    {
      v18 = *MEMORY[0x1E6992B08];
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v10 = [(EKObject *)self hasUnsavedChangesInKeys:v9];

      if (v10)
      {
        if (validate)
        {
          v8 = 74;
          goto LABEL_16;
        }

LABEL_17:
        LOBYTE(v5) = 0;
        goto LABEL_18;
      }
    }

    externalID = [(EKColor *)self externalID];
    if ([externalID length])
    {
      providerIdentifier = [(EKColor *)self providerIdentifier];
      v13 = [providerIdentifier length];

      if (v13)
      {
        LOBYTE(v5) = 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (validate)
    {
      v8 = 75;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)save:(id *)save
{
  isNew = [(EKObject *)self isNew];
  if (isNew)
  {
    if (save)
    {
      *save = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:73];
    }
  }

  else
  {
    [(EKObject *)self updatePersistentObject];
  }

  return !isNew;
}

@end