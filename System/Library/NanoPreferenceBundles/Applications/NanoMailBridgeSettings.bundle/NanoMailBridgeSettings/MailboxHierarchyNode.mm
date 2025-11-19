@interface MailboxHierarchyNode
- (MailboxHierarchyNode)initWithMailbox:(id)a3;
- (id)_findNodeForMailbox:(id)a3 removeNode:(BOOL)a4;
- (id)description;
- (id)findNodeForMailbox:(id)a3;
- (id)removeNodeForMailbox:(id)a3;
- (void)addChild:(id)a3;
@end

@implementation MailboxHierarchyNode

- (MailboxHierarchyNode)initWithMailbox:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MailboxHierarchyNode;
  v6 = [(MailboxHierarchyNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailbox, a3);
    if (![(MFMailboxUid *)v7->_mailbox mailboxType])
    {
      v8 = [v5 displayName];
      [(MailboxHierarchyNode *)v7 setDisplayName:v8];
    }
  }

  return v7;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  children = self->_children;
  v8 = v4;
  if (!children)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_children;
    self->_children = v6;

    children = self->_children;
    v4 = v8;
  }

  [(NSMutableArray *)children ef_insertObject:v4 usingSortFunction:sub_308C context:0 allowDuplicates:1];
}

- (id)_findNodeForMailbox:(id)a3 removeNode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MailboxHierarchyNode *)self children];
  v8 = [(MailboxHierarchyNode *)self mailbox];

  if (v8 == v6)
  {
    v19 = self;
    v18 = v19;
    if (!v19)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 mailbox];
        v15 = v14 == v6;

        if (v15)
        {
          v17 = v13;
          v18 = v17;
          goto LABEL_18;
        }

        v16 = [v13 children];

        if (v16)
        {
          v17 = [v13 _findNodeForMailbox:v6 removeNode:v4];
          if (v17)
          {
            goto LABEL_17;
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v17 = 0;
      v18 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
LABEL_17:
    v18 = 0;
  }

LABEL_18:

  v19 = v17;
  if (v18)
  {
LABEL_19:
    if (v4)
    {
      [v7 removeObject:v18];
    }
  }

LABEL_21:

  return v19;
}

- (id)removeNodeForMailbox:(id)a3
{
  v3 = [(MailboxHierarchyNode *)self _findNodeForMailbox:a3 removeNode:1];

  return v3;
}

- (id)findNodeForMailbox:(id)a3
{
  v3 = [(MailboxHierarchyNode *)self _findNodeForMailbox:a3 removeNode:0];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MailboxHierarchyNode;
  v3 = [(MailboxHierarchyNode *)&v7 description];
  v4 = [(MailboxHierarchyNode *)self mailbox];
  v5 = [NSString stringWithFormat:@"%@, %@", v3, v4];

  return v5;
}

@end