@interface MailboxHierarchyNode
- (MailboxHierarchyNode)initWithMailbox:(id)mailbox;
- (id)_findNodeForMailbox:(id)mailbox removeNode:(BOOL)node;
- (id)description;
- (id)findNodeForMailbox:(id)mailbox;
- (id)removeNodeForMailbox:(id)mailbox;
- (void)addChild:(id)child;
@end

@implementation MailboxHierarchyNode

- (MailboxHierarchyNode)initWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v10.receiver = self;
  v10.super_class = MailboxHierarchyNode;
  v6 = [(MailboxHierarchyNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailbox, mailbox);
    if (![(MFMailboxUid *)v7->_mailbox mailboxType])
    {
      displayName = [mailboxCopy displayName];
      [(MailboxHierarchyNode *)v7 setDisplayName:displayName];
    }
  }

  return v7;
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = self->_children;
  v8 = childCopy;
  if (!children)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_children;
    self->_children = v6;

    children = self->_children;
    childCopy = v8;
  }

  [(NSMutableArray *)children ef_insertObject:childCopy usingSortFunction:sub_308C context:0 allowDuplicates:1];
}

- (id)_findNodeForMailbox:(id)mailbox removeNode:(BOOL)node
{
  nodeCopy = node;
  mailboxCopy = mailbox;
  children = [(MailboxHierarchyNode *)self children];
  mailbox = [(MailboxHierarchyNode *)self mailbox];

  if (mailbox == mailboxCopy)
  {
    selfCopy = self;
    v18 = selfCopy;
    if (!selfCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = children;
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
        mailbox2 = [v13 mailbox];
        v15 = mailbox2 == mailboxCopy;

        if (v15)
        {
          v17 = v13;
          v18 = v17;
          goto LABEL_18;
        }

        children2 = [v13 children];

        if (children2)
        {
          v17 = [v13 _findNodeForMailbox:mailboxCopy removeNode:nodeCopy];
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

  selfCopy = v17;
  if (v18)
  {
LABEL_19:
    if (nodeCopy)
    {
      [children removeObject:v18];
    }
  }

LABEL_21:

  return selfCopy;
}

- (id)removeNodeForMailbox:(id)mailbox
{
  v3 = [(MailboxHierarchyNode *)self _findNodeForMailbox:mailbox removeNode:1];

  return v3;
}

- (id)findNodeForMailbox:(id)mailbox
{
  v3 = [(MailboxHierarchyNode *)self _findNodeForMailbox:mailbox removeNode:0];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MailboxHierarchyNode;
  v3 = [(MailboxHierarchyNode *)&v7 description];
  mailbox = [(MailboxHierarchyNode *)self mailbox];
  v5 = [NSString stringWithFormat:@"%@, %@", v3, mailbox];

  return v5;
}

@end