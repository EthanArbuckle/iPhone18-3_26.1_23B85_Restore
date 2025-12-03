@interface CNCardStaticIdentityGroup
- (BOOL)saveChangesToKTStore;
- (CNCardStaticIdentityGroup)initWithContact:(id)contact;
- (id)currentIdentity;
- (id)displayItems;
- (id)editingItems;
- (void)addIdentity:(id)identity isNew:(BOOL)new;
- (void)clearDisplay;
- (void)removeEditingItem:(id)item;
@end

@implementation CNCardStaticIdentityGroup

- (BOOL)saveChangesToKTStore
{
  if (![(CNCardStaticIdentityGroup *)self didChange])
  {
    return 1;
  }

  staticIdentities = [(CNCardStaticIdentityGroup *)self staticIdentities];
  v4 = [staticIdentities count];

  v5 = MEMORY[0x1E6996BC8];
  if (v4)
  {
    staticIdentities2 = [(CNCardStaticIdentityGroup *)self staticIdentities];
    v7 = [staticIdentities2 objectAtIndexedSubscript:0];
    contact = [(CNCardGroup *)self contact];
    v9 = [v5 addStaticKeyWithPublicIDString:v7 contact:contact];
  }

  else
  {
    staticIdentities2 = [(CNCardGroup *)self contact];
    [v5 removeAccountKeyFromContact:staticIdentities2];
    v9 = 1;
  }

  self->_didChange = 0;
  return v9;
}

- (id)editingItems
{
  v6[1] = *MEMORY[0x1E69E9840];
  displayItems = [(CNCardStaticIdentityGroup *)self displayItems];
  if ([displayItems count])
  {
    v3 = displayItems;
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
  staticIdentities = [(CNCardStaticIdentityGroup *)self staticIdentities];
  v3 = [staticIdentities _cn_map:&__block_literal_global_38040];

  return v3;
}

CNCardStaticIdentityGroupItem *__41__CNCardStaticIdentityGroup_displayItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNCardStaticIdentityGroupItem alloc] initWithIdentity:v2];

  return v3;
}

- (void)removeEditingItem:(id)item
{
  itemCopy = item;
  if (![(CNCardStaticIdentityGroup *)self didChange])
  {
    identity = [itemCopy identity];
    -[CNCardStaticIdentityGroup setDidChange:](self, "setDidChange:", [identity isEqualToString:@" "] ^ 1);
  }

  array = [MEMORY[0x1E695DEC8] array];
  staticIdentities = self->_staticIdentities;
  self->_staticIdentities = array;
}

- (id)currentIdentity
{
  staticIdentities = [(CNCardStaticIdentityGroup *)self staticIdentities];
  v4 = [staticIdentities count];

  if (v4)
  {
    staticIdentities2 = [(CNCardStaticIdentityGroup *)self staticIdentities];
    v6 = [staticIdentities2 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearDisplay
{
  array = [MEMORY[0x1E695DEC8] array];
  staticIdentities = self->_staticIdentities;
  self->_staticIdentities = array;

  self->_didChange = 0;
}

- (void)addIdentity:(id)identity isNew:(BOOL)new
{
  newCopy = new;
  identityCopy = identity;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  [(CNCardStaticIdentityGroup *)self setStaticIdentities:v6];

  if (newCopy && ([identityCopy isEqualToString:@" "] & 1) == 0)
  {
    self->_didChange = 1;
  }
}

- (CNCardStaticIdentityGroup)initWithContact:(id)contact
{
  v7.receiver = self;
  v7.super_class = CNCardStaticIdentityGroup;
  v3 = [(CNCardGroup *)&v7 initWithContact:contact];
  v4 = v3;
  if (v3)
  {
    [(CNCardStaticIdentityGroup *)v3 clearDisplay];
    v5 = v4;
  }

  return v4;
}

@end