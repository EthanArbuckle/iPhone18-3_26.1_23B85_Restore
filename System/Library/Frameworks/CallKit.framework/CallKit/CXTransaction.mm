@interface CXTransaction
- (BOOL)isComplete;
- (CXTransaction)initWithAction:(CXAction *)action;
- (CXTransaction)initWithActions:(NSArray *)actions;
- (CXTransaction)initWithCoder:(id)coder;
- (NSArray)actions;
- (NSString)description;
- (id)allowedClassesForMutableActions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)addAction:(CXAction *)action;
- (void)addActionsFromTransaction:(id)transaction;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXTransaction

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(CXTransaction *)self UUID];
  uUIDString = [uUID UUIDString];
  isComplete = [(CXTransaction *)self isComplete];
  actions = [(CXTransaction *)self actions];
  v9 = [v3 stringWithFormat:@"<%@ %p UUID=%@ isComplete=%d actions=%@>", v4, self, uUIDString, isComplete, actions];

  return v9;
}

- (BOOL)isComplete
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  actions = [(CXTransaction *)self actions];
  v3 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(actions);
        }

        if (![*(*(&v10 + 1) + 8 * i) isComplete])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  mutableActions = [(CXTransaction *)self mutableActions];
  array = [mutableActions array];

  return array;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

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
  mutableActions = [(CXTransaction *)self mutableActions];
  [mutableActions addObject:v4];
}

- (void)addActionsFromTransaction:(id)transaction
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  actions = [transaction actions];
  v5 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(actions);
        }

        [(CXTransaction *)self addAction:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  copyCopy = copy;
  uUID = [(CXTransaction *)self UUID];
  [copyCopy setUUID:uUID];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  mutableActions = [(CXTransaction *)self mutableActions];
  v8 = [mutableActions countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(mutableActions);
        }

        sanitizedCopy = [*(*(&v15 + 1) + 8 * v11) sanitizedCopy];
        if (sanitizedCopy)
        {
          mutableActions2 = [copyCopy mutableActions];
          [mutableActions2 addObject:sanitizedCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [mutableActions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXTransaction *)self updateSanitizedCopy:v5 withZone:zone];

  return v5;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  copyCopy = copy;
  [(CXTransaction *)self updateSanitizedCopy:copyCopy withZone:zone];
  mutableActions = [copyCopy mutableActions];
  [mutableActions removeAllObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  mutableActions2 = [(CXTransaction *)self mutableActions];
  v9 = [mutableActions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(mutableActions2);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copy];
        [copyCopy addAction:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [mutableActions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXTransaction *)self updateCopy:v5 withZone:zone];
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

- (CXTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXTransaction *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    allowedClassesForMutableActions = [(CXTransaction *)v5 allowedClassesForMutableActions];
    v11 = NSStringFromSelector(sel_mutableActions);
    v12 = [coderCopy decodeObjectOfClasses:allowedClassesForMutableActions forKey:v11];
    mutableActions = v5->_mutableActions;
    v5->_mutableActions = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXTransaction *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  mutableActions = [(CXTransaction *)self mutableActions];
  v7 = NSStringFromSelector(sel_mutableActions);
  [coderCopy encodeObject:mutableActions forKey:v7];
}

@end