@interface MailAccount
+ (id)accountImageForAccount:(id)account;
- (id)_allMailboxesIncludingLocals:(BOOL)locals withOutbox:(id)outbox hideInbox:(BOOL)inbox hideNotes:(BOOL)notes;
- (id)_treeOfAllMailboxesIncludingLocals:(BOOL)locals withOutbox:(id)outbox hideInbox:(BOOL)inbox hideNotes:(BOOL)notes;
- (id)treeOfAllGenericMailboxes;
- (id)treeOfAllMailboxUidsSortedWithSpecialsAtTopIncludingLocals:(BOOL)locals client:(id)client outbox:(id)outbox;
- (void)_addGenericChildrenToMailboxTree:(id)tree forNode:(id)node hideNotes:(BOOL)notes;
- (void)_addSpecialMailbox:(id)mailbox toTree:(id)tree;
- (void)_putMailboxesRootedAt:(id)at intoArray:(id)array hideNotes:(BOOL)notes;
- (void)addSpecialMailbox:(id)mailbox toArray:(id)array;
@end

@implementation MailAccount

+ (id)accountImageForAccount:(id)account
{
  accountCopy = account;
  if (!qword_1006DD048)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = qword_1006DD048;
    qword_1006DD048 = v4;
  }

  iconString = [accountCopy iconString];
  v7 = [qword_1006DD048 objectForKey:iconString];
  if (!v7)
  {
    if (!qword_1006DD050)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = qword_1006DD050;
      qword_1006DD050 = v8;
    }

    v10 = [UIImage imageNamed:"imageNamed:inBundle:compatibleWithTraitCollection:" inBundle:iconString compatibleWithTraitCollection:?];
    v7 = [v10 _applicationIconImageForFormat:0 precomposed:1];
    if (!v7)
    {
      v7 = +[NSNull null];
    }

    [qword_1006DD048 setObject:v7 forKey:iconString];
  }

  v11 = +[NSNull null];

  if (v11 == v7)
  {

    v7 = 0;
  }

  return v7;
}

- (void)_putMailboxesRootedAt:(id)at intoArray:(id)array hideNotes:(BOOL)notes
{
  notesCopy = notes;
  atCopy = at;
  arrayCopy = array;
  childEnumerator = [atCopy childEnumerator];
  v10 = 0;
  while (1)
  {
    nextObject = [childEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    type = [nextObject type];
    if (type || !notesCopy)
    {
      v10 = nextObject;
      if (!type)
      {
LABEL_8:
        [arrayCopy addObject:nextObject];
        v10 = nextObject;
        if ([nextObject hasChildren])
        {
          v10 = nextObject;
          [(MailAccount *)self _putMailboxesRootedAt:nextObject intoArray:arrayCopy hideNotes:0];
        }
      }
    }

    else
    {
      name = [nextObject name];
      v14 = [name isEqualToString:@"Notes"];

      v10 = nextObject;
      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }
}

- (void)_addGenericChildrenToMailboxTree:(id)tree forNode:(id)node hideNotes:(BOOL)notes
{
  notesCopy = notes;
  treeCopy = tree;
  nodeCopy = node;
  mailbox = [nodeCopy mailbox];
  if (mailbox)
  {
    v17 = mailbox;
    childEnumerator = [mailbox childEnumerator];
    v11 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          nextObject = [childEnumerator nextObject];

          if (!nextObject)
          {

            mailbox = v17;
            goto LABEL_14;
          }

          objc_opt_class();
          v11 = nextObject;
        }

        while ((objc_opt_isKindOfClass() & 1) == 0);
        type = [nextObject type];
        if (!type && notesCopy)
        {
          break;
        }

        v11 = nextObject;
        if (!type)
        {
          goto LABEL_10;
        }
      }

      name = [nextObject name];
      v15 = [name isEqualToString:@"Notes"];

      v11 = nextObject;
      if ((v15 & 1) == 0)
      {
LABEL_10:
        v16 = [treeCopy addChildMailbox:nextObject forMailboxNode:nodeCopy];
        if ([nextObject hasChildren])
        {
          [(MailAccount *)self _addGenericChildrenToMailboxTree:treeCopy forNode:v16 hideNotes:0];
        }

        v11 = nextObject;
      }
    }
  }

LABEL_14:
}

- (void)addSpecialMailbox:(id)mailbox toArray:(id)array
{
  mailboxCopy = mailbox;
  arrayCopy = array;
  if (mailboxCopy)
  {
    [arrayCopy addObject:mailboxCopy];
    if ([mailboxCopy hasChildren])
    {
      [(MailAccount *)self _putMailboxesRootedAt:mailboxCopy intoArray:arrayCopy hideNotes:0];
    }
  }
}

- (void)_addSpecialMailbox:(id)mailbox toTree:(id)tree
{
  mailboxCopy = mailbox;
  treeCopy = tree;
  if (mailboxCopy)
  {
    rootMailboxNode = [treeCopy rootMailboxNode];
    v8 = [treeCopy addChildMailbox:mailboxCopy forMailboxNode:rootMailboxNode];

    if ([mailboxCopy hasChildren])
    {
      [(MailAccount *)self _addGenericChildrenToMailboxTree:treeCopy forNode:v8 hideNotes:0];
    }
  }
}

- (id)_treeOfAllMailboxesIncludingLocals:(BOOL)locals withOutbox:(id)outbox hideInbox:(BOOL)inbox hideNotes:(BOOL)notes
{
  notesCopy = notes;
  inboxCopy = inbox;
  outboxCopy = outbox;
  v10 = [MailboxHierarchyTree alloc];
  rootMailbox = [(MailAccount *)self rootMailbox];
  v12 = [(MailboxHierarchyTree *)v10 initWithRootMailbox:rootMailbox];

  rootMailboxNode = [(MailboxHierarchyTree *)v12 rootMailboxNode];
  v23 = notesCopy;
  if (locals)
  {
    v13 = 0;
  }

  else
  {
    v13 = +[LocalAccount localAccount];
  }

  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
  v14 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
  v15 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  v16 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
  v17 = [(MailAccount *)self mailboxUidOfType:2 createIfNeeded:0];
  v18 = [(MailAccount *)self mailboxUidOfType:1 createIfNeeded:0];
  if (!inboxCopy || [primaryMailboxUid hasChildren])
  {
    [(MailAccount *)self _addSpecialMailbox:primaryMailboxUid toTree:v12];
  }

  if (locals || v13 && ([v14 account], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v14 toTree:v12];
  }

  if (outboxCopy)
  {
    [(MailAccount *)self _addSpecialMailbox:outboxCopy toTree:v12];
  }

  if (locals || v13 && ([v15 account], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v15 toTree:v12];
  }

  if (v18)
  {
    [(MailAccount *)self _addSpecialMailbox:v18 toTree:v12];
  }

  if (locals || v13 && ([v16 account], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v16 toTree:v12];
  }

  if (v17)
  {
    [(MailAccount *)self _addSpecialMailbox:v17 toTree:v12];
  }

  [(MailAccount *)self _addGenericChildrenToMailboxTree:v12 forNode:rootMailboxNode hideNotes:v23];

  return v12;
}

- (id)_allMailboxesIncludingLocals:(BOOL)locals withOutbox:(id)outbox hideInbox:(BOOL)inbox hideNotes:(BOOL)notes
{
  notesCopy = notes;
  inboxCopy = inbox;
  outboxCopy = outbox;
  v10 = objc_alloc_init(NSMutableArray);
  v22 = notesCopy;
  if (locals)
  {
    v11 = 0;
  }

  else
  {
    v11 = +[LocalAccount localAccount];
  }

  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
  v12 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
  v13 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  v14 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
  v15 = [(MailAccount *)self mailboxUidOfType:2 createIfNeeded:0];
  v16 = [(MailAccount *)self mailboxUidOfType:1 createIfNeeded:0];
  if (!inboxCopy || [primaryMailboxUid hasChildren])
  {
    [(MailAccount *)self addSpecialMailbox:primaryMailboxUid toArray:v10];
  }

  if (locals || v11 && ([v12 account], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 != v11))
  {
    [(MailAccount *)self addSpecialMailbox:v12 toArray:v10];
  }

  if (outboxCopy)
  {
    [v10 addObject:outboxCopy];
  }

  if (!locals)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    account = [v13 account];

    if (account == v11)
    {
      goto LABEL_18;
    }
  }

  [(MailAccount *)self addSpecialMailbox:v13 toArray:v10];
  if (!locals)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_18:
    account2 = [v14 account];

    if (account2 == v11)
    {
      goto LABEL_20;
    }
  }

  [(MailAccount *)self addSpecialMailbox:v14 toArray:v10];
LABEL_20:
  if (v15)
  {
    [(MailAccount *)self addSpecialMailbox:v15 toArray:v10];
  }

  if (v16)
  {
    [(MailAccount *)self addSpecialMailbox:v16 toArray:v10];
  }

  rootMailbox = [(MailAccount *)self rootMailbox];
  [(MailAccount *)self _putMailboxesRootedAt:rootMailbox intoArray:v10 hideNotes:v22];

  return v10;
}

- (id)treeOfAllMailboxUidsSortedWithSpecialsAtTopIncludingLocals:(BOOL)locals client:(id)client outbox:(id)outbox
{
  localsCopy = locals;
  clientCopy = client;
  outboxCopy = outbox;
  v10 = +[MailAccount log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(MailAccount *)self ef_publicDescription];
    v14 = 138543618;
    v15 = ef_publicDescription;
    v16 = 2114;
    v17 = clientCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> client:%{public}@", &v14, 0x16u);
  }

  v12 = -[MailAccount _treeOfAllMailboxesIncludingLocals:withOutbox:hideInbox:hideNotes:](self, "_treeOfAllMailboxesIncludingLocals:withOutbox:hideInbox:hideNotes:", localsCopy, outboxCopy, [clientCopy shouldHideInbox], objc_msgSend(clientCopy, "shouldHideNotesForAccount:", self));

  return v12;
}

- (id)treeOfAllGenericMailboxes
{
  v3 = [MailboxHierarchyTree alloc];
  rootMailbox = [(MailAccount *)self rootMailbox];
  v5 = [(MailboxHierarchyTree *)v3 initWithRootMailbox:rootMailbox];

  rootMailboxNode = [(MailboxHierarchyTree *)v5 rootMailboxNode];
  [(MailAccount *)self _addGenericChildrenToMailboxTree:v5 forNode:rootMailboxNode hideNotes:[(MailAccount *)self isSyncingNotes]];

  return v5;
}

@end