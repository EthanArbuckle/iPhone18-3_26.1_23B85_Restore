@interface CNCardStaticIdentityGroup
- (BOOL)saveChangesToKTStore;
- (CNCardStaticIdentityGroup)initWithContact:(id)a3;
- (id)currentIdentity;
- (id)displayItems;
- (id)editingItems;
- (void)addIdentity:(id)a3 isNew:(BOOL)a4;
- (void)clearDisplay;
- (void)removeEditingItem:(id)a3;
@end

@implementation CNCardStaticIdentityGroup

- (BOOL)saveChangesToKTStore
{
  if (![(CNCardStaticIdentityGroup *)self didChange])
  {
    return 1;
  }

  v3 = [(CNCardStaticIdentityGroup *)self staticIdentities];
  v4 = [v3 count];

  v5 = MEMORY[0x1E6996BC8];
  if (v4)
  {
    v6 = [(CNCardStaticIdentityGroup *)self staticIdentities];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [(CNCardGroup *)self contact];
    v9 = [v5 addStaticKeyWithPublicIDString:v7 contact:v8];
  }

  else
  {
    v6 = [(CNCardGroup *)self contact];
    [v5 removeAccountKeyFromContact:v6];
    v9 = 1;
  }

  self->_didChange = 0;
  return v9;
}

- (id)editingItems
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(CNCardStaticIdentityGroup *)self displayItems];
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(CNCardStaticIdentityPlaceholderGroupItem);
    v6[0] = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  return v3;
}

- (id)displayItems
{
  v2 = [(CNCardStaticIdentityGroup *)self staticIdentities];
  v3 = [v2 _cn_map:&__block_literal_global_38040];

  return v3;
}

CNCardStaticIdentityGroupItem *__41__CNCardStaticIdentityGroup_displayItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNCardStaticIdentityGroupItem alloc] initWithIdentity:v2];

  return v3;
}

- (void)removeEditingItem:(id)a3
{
  v7 = a3;
  if (![(CNCardStaticIdentityGroup *)self didChange])
  {
    v4 = [v7 identity];
    -[CNCardStaticIdentityGroup setDidChange:](self, "setDidChange:", [v4 isEqualToString:@" "] ^ 1);
  }

  v5 = [MEMORY[0x1E695DEC8] array];
  staticIdentities = self->_staticIdentities;
  self->_staticIdentities = v5;
}

- (id)currentIdentity
{
  v3 = [(CNCardStaticIdentityGroup *)self staticIdentities];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CNCardStaticIdentityGroup *)self staticIdentities];
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearDisplay
{
  v3 = [MEMORY[0x1E695DEC8] array];
  staticIdentities = self->_staticIdentities;
  self->_staticIdentities = v3;

  self->_didChange = 0;
}

- (void)addIdentity:(id)a3 isNew:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  [(CNCardStaticIdentityGroup *)self setStaticIdentities:v6];

  if (v4 && ([v7 isEqualToString:@" "] & 1) == 0)
  {
    self->_didChange = 1;
  }
}

- (CNCardStaticIdentityGroup)initWithContact:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNCardStaticIdentityGroup;
  v3 = [(CNCardGroup *)&v7 initWithContact:a3];
  v4 = v3;
  if (v3)
  {
    [(CNCardStaticIdentityGroup *)v3 clearDisplay];
    v5 = v4;
  }

  return v4;
}

@end