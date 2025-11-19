@interface CXTransaction
- (BOOL)isComplete;
- (CXTransaction)initWithAction:(CXAction *)action;
- (CXTransaction)initWithActions:(NSArray *)actions;
- (CXTransaction)initWithCoder:(id)a3;
- (NSArray)actions;
- (NSString)description;
- (id)allowedClassesForMutableActions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (void)addAction:(CXAction *)action;
- (void)addActionsFromTransaction:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXTransaction

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXTransaction *)self UUID];
  v6 = [v5 UUIDString];
  v7 = [(CXTransaction *)self isComplete];
  v8 = [(CXTransaction *)self actions];
  v9 = [v3 stringWithFormat:@"<%@ %p UUID=%@ isComplete=%d actions=%@>", v4, self, v6, v7, v8];

  return v9;
}

- (BOOL)isComplete
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CXTransaction *)self actions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) isComplete])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSArray)actions
{
  v2 = [(CXTransaction *)self mutableActions];
  v3 = [v2 array];

  return v3;
}

- (id)allowedClassesForMutableActions
{
  if (allowedClassesForMutableActions_onceToken != -1)
  {
    [CXTransaction allowedClassesForMutableActions];
  }

  v3 = allowedClassesForMutableActions_allowedClassesForMutableActions;

  return v3;
}

- (CXTransaction)initWithActions:(NSArray *)actions
{
  v4 = actions;
  v11.receiver = self;
  v11.super_class = CXTransaction;
  v5 = [(CXTransaction *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v4];
    mutableActions = v5->_mutableActions;
    v5->_mutableActions = v8;
  }

  return v5;
}

- (CXTransaction)initWithAction:(CXAction *)action
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = action;
  v4 = MEMORY[0x1E695DEC8];
  v5 = action;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(CXTransaction *)self initWithActions:v6, v10, v11];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)addAction:(CXAction *)action
{
  v4 = action;
  v5 = [(CXTransaction *)self mutableActions];
  [v5 addObject:v4];
}

- (void)addActionsFromTransaction:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a3 actions];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CXTransaction *)self addAction:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CXTransaction *)self UUID];
  [v5 setUUID:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(CXTransaction *)self mutableActions];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) sanitizedCopy];
        if (v12)
        {
          v13 = [v5 mutableActions];
          [v13 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXTransaction *)self updateSanitizedCopy:v5 withZone:a3];

  return v5;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CXTransaction *)self updateSanitizedCopy:v6 withZone:a4];
  v7 = [v6 mutableActions];
  [v7 removeAllObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(CXTransaction *)self mutableActions];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copy];
        [v6 addAction:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXTransaction *)self updateCopy:v5 withZone:a3];
  return v5;
}

uint64_t __48__CXTransaction_allowedClassesForMutableActions__block_invoke()
{
  v24 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  allowedClassesForMutableActions_allowedClassesForMutableActions = [v24 setWithObjects:{v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (CXTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXTransaction *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = [(CXTransaction *)v5 allowedClassesForMutableActions];
    v11 = NSStringFromSelector(sel_mutableActions);
    v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];
    mutableActions = v5->_mutableActions;
    v5->_mutableActions = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXTransaction *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(CXTransaction *)self mutableActions];
  v7 = NSStringFromSelector(sel_mutableActions);
  [v4 encodeObject:v8 forKey:v7];
}

@end