@interface EKColor
+ (id)knownIdentityKeysForComparison;
- (BOOL)save:(id *)a3;
- (BOOL)validate:(id *)a3;
- (EKColor)initWithEventStore:(id)a3;
- (void)setSource:(id)a3;
@end

@implementation EKColor

- (EKColor)initWithEventStore:(id)a3
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

- (void)setSource:(id)a3
{
  v4 = *MEMORY[0x1E69928C0];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:objc_opt_class()];
}

- (BOOL)validate:(id *)a3
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
        if (a3)
        {
          v8 = 72;
LABEL_16:
          v14 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v8];
          v5 = v14;
          LOBYTE(v5) = 0;
          *a3 = v14;
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
        if (a3)
        {
          v8 = 74;
          goto LABEL_16;
        }

LABEL_17:
        LOBYTE(v5) = 0;
        goto LABEL_18;
      }
    }

    v11 = [(EKColor *)self externalID];
    if ([v11 length])
    {
      v12 = [(EKColor *)self providerIdentifier];
      v13 = [v12 length];

      if (v13)
      {
        LOBYTE(v5) = 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (a3)
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

- (BOOL)save:(id *)a3
{
  v5 = [(EKObject *)self isNew];
  if (v5)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:73];
    }
  }

  else
  {
    [(EKObject *)self updatePersistentObject];
  }

  return !v5;
}

@end