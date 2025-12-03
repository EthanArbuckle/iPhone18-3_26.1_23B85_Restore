@interface CNUIGroupEditingContext
- (BOOL)group:(id)group isInGroupArray:(id)array;
- (CNUIGroupEditingContext)init;
- (CNUIGroupEditingContext)initWithOriginalGroups:(id)groups;
- (NSArray)groupsToDisplayForEditing;
- (void)addGroup:(id)group;
- (void)removeGroup:(id)group;
@end

@implementation CNUIGroupEditingContext

- (NSArray)groupsToDisplayForEditing
{
  originalGroups = [(CNUIGroupEditingContext *)self originalGroups];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CNUIGroupEditingContext_groupsToDisplayForEditing__block_invoke;
  v8[3] = &unk_1E74E49C0;
  v8[4] = self;
  v4 = [originalGroups _cn_filter:v8];

  addedGroups = [(CNUIGroupEditingContext *)self addedGroups];
  v6 = [v4 arrayByAddingObjectsFromArray:addedGroups];

  return v6;
}

uint64_t __52__CNUIGroupEditingContext_groupsToDisplayForEditing__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 removedGroups];
  LODWORD(v2) = [v2 group:v3 isInGroupArray:v4];

  return v2 ^ 1;
}

- (BOOL)group:(id)group isInGroupArray:(id)array
{
  groupCopy = group;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CNUIGroupEditingContext_group_isInGroupArray___block_invoke;
  v8[3] = &unk_1E74E49C0;
  v9 = groupCopy;
  v6 = groupCopy;
  LOBYTE(array) = [array _cn_any:v8];

  return array;
}

uint64_t __48__CNUIGroupEditingContext_group_isInGroupArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)removeGroup:(id)group
{
  groupCopy = group;
  originalGroups = [(CNUIGroupEditingContext *)self originalGroups];
  if (![(CNUIGroupEditingContext *)self group:groupCopy isInGroupArray:originalGroups])
  {
    goto LABEL_4;
  }

  removedGroups = [(CNUIGroupEditingContext *)self removedGroups];
  v7 = [(CNUIGroupEditingContext *)self group:groupCopy isInGroupArray:removedGroups];

  if (!v7)
  {
    originalGroups = [(CNUIGroupEditingContext *)self removedGroups];
    v8 = [originalGroups arrayByAddingObject:groupCopy];
    [(CNUIGroupEditingContext *)self setRemovedGroups:v8];

LABEL_4:
  }

  addedGroups = [(CNUIGroupEditingContext *)self addedGroups];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__CNUIGroupEditingContext_removeGroup___block_invoke;
  v12[3] = &unk_1E74E49C0;
  v13 = groupCopy;
  v10 = groupCopy;
  v11 = [addedGroups _cn_filter:v12];
  [(CNUIGroupEditingContext *)self setAddedGroups:v11];
}

uint64_t __39__CNUIGroupEditingContext_removeGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

- (void)addGroup:(id)group
{
  groupCopy = group;
  originalGroups = [(CNUIGroupEditingContext *)self originalGroups];
  if ([(CNUIGroupEditingContext *)self group:groupCopy isInGroupArray:originalGroups])
  {
    goto LABEL_4;
  }

  addedGroups = [(CNUIGroupEditingContext *)self addedGroups];
  v7 = [(CNUIGroupEditingContext *)self group:groupCopy isInGroupArray:addedGroups];

  if (!v7)
  {
    originalGroups = [(CNUIGroupEditingContext *)self addedGroups];
    v8 = [originalGroups arrayByAddingObject:groupCopy];
    [(CNUIGroupEditingContext *)self setAddedGroups:v8];

LABEL_4:
  }

  removedGroups = [(CNUIGroupEditingContext *)self removedGroups];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__CNUIGroupEditingContext_addGroup___block_invoke;
  v12[3] = &unk_1E74E49C0;
  v13 = groupCopy;
  v10 = groupCopy;
  v11 = [removedGroups _cn_filter:v12];
  [(CNUIGroupEditingContext *)self setRemovedGroups:v11];
}

uint64_t __36__CNUIGroupEditingContext_addGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

- (CNUIGroupEditingContext)initWithOriginalGroups:(id)groups
{
  groupsCopy = groups;
  v6 = [(CNUIGroupEditingContext *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalGroups, groups);
    v8 = v7;
  }

  return v7;
}

- (CNUIGroupEditingContext)init
{
  v11.receiver = self;
  v11.super_class = CNUIGroupEditingContext;
  v2 = [(CNUIGroupEditingContext *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    originalGroups = v2->_originalGroups;
    v2->_originalGroups = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    addedGroups = v2->_addedGroups;
    v2->_addedGroups = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    removedGroups = v2->_removedGroups;
    v2->_removedGroups = v7;

    v9 = v2;
  }

  return v2;
}

@end