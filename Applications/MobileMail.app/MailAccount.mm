@interface MailAccount
+ (id)accountImageForAccount:(id)a3;
- (id)_allMailboxesIncludingLocals:(BOOL)a3 withOutbox:(id)a4 hideInbox:(BOOL)a5 hideNotes:(BOOL)a6;
- (id)_treeOfAllMailboxesIncludingLocals:(BOOL)a3 withOutbox:(id)a4 hideInbox:(BOOL)a5 hideNotes:(BOOL)a6;
- (id)treeOfAllGenericMailboxes;
- (id)treeOfAllMailboxUidsSortedWithSpecialsAtTopIncludingLocals:(BOOL)a3 client:(id)a4 outbox:(id)a5;
- (void)_addGenericChildrenToMailboxTree:(id)a3 forNode:(id)a4 hideNotes:(BOOL)a5;
- (void)_addSpecialMailbox:(id)a3 toTree:(id)a4;
- (void)_putMailboxesRootedAt:(id)a3 intoArray:(id)a4 hideNotes:(BOOL)a5;
- (void)addSpecialMailbox:(id)a3 toArray:(id)a4;
@end

@implementation MailAccount

+ (id)accountImageForAccount:(id)a3
{
  v3 = a3;
  if (!qword_1006DD048)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = qword_1006DD048;
    qword_1006DD048 = v4;
  }

  v6 = [v3 iconString];
  v7 = [qword_1006DD048 objectForKey:v6];
  if (!v7)
  {
    if (!qword_1006DD050)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = qword_1006DD050;
      qword_1006DD050 = v8;
    }

    v10 = [UIImage imageNamed:"imageNamed:inBundle:compatibleWithTraitCollection:" inBundle:v6 compatibleWithTraitCollection:?];
    v7 = [v10 _applicationIconImageForFormat:0 precomposed:1];
    if (!v7)
    {
      v7 = +[NSNull null];
    }

    [qword_1006DD048 setObject:v7 forKey:v6];
  }

  v11 = +[NSNull null];

  if (v11 == v7)
  {

    v7 = 0;
  }

  return v7;
}

- (void)_putMailboxesRootedAt:(id)a3 intoArray:(id)a4 hideNotes:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  v9 = [v15 childEnumerator];
  v10 = 0;
  while (1)
  {
    v11 = [v9 nextObject];

    if (!v11)
    {
      break;
    }

    v12 = [v11 type];
    if (v12 || !v5)
    {
      v10 = v11;
      if (!v12)
      {
LABEL_8:
        [v8 addObject:v11];
        v10 = v11;
        if ([v11 hasChildren])
        {
          v10 = v11;
          [(MailAccount *)self _putMailboxesRootedAt:v11 intoArray:v8 hideNotes:0];
        }
      }
    }

    else
    {
      v13 = [v11 name];
      v14 = [v13 isEqualToString:@"Notes"];

      v10 = v11;
      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }
}

- (void)_addGenericChildrenToMailboxTree:(id)a3 forNode:(id)a4 hideNotes:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  v8 = a4;
  v9 = [v8 mailbox];
  if (v9)
  {
    v17 = v9;
    v10 = [v9 childEnumerator];
    v11 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          v12 = [v10 nextObject];

          if (!v12)
          {

            v9 = v17;
            goto LABEL_14;
          }

          objc_opt_class();
          v11 = v12;
        }

        while ((objc_opt_isKindOfClass() & 1) == 0);
        v13 = [v12 type];
        if (!v13 && v5)
        {
          break;
        }

        v11 = v12;
        if (!v13)
        {
          goto LABEL_10;
        }
      }

      v14 = [v12 name];
      v15 = [v14 isEqualToString:@"Notes"];

      v11 = v12;
      if ((v15 & 1) == 0)
      {
LABEL_10:
        v16 = [v18 addChildMailbox:v12 forMailboxNode:v8];
        if ([v12 hasChildren])
        {
          [(MailAccount *)self _addGenericChildrenToMailboxTree:v18 forNode:v16 hideNotes:0];
        }

        v11 = v12;
      }
    }
  }

LABEL_14:
}

- (void)addSpecialMailbox:(id)a3 toArray:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [v6 addObject:v7];
    if ([v7 hasChildren])
    {
      [(MailAccount *)self _putMailboxesRootedAt:v7 intoArray:v6 hideNotes:0];
    }
  }
}

- (void)_addSpecialMailbox:(id)a3 toTree:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [v6 rootMailboxNode];
    v8 = [v6 addChildMailbox:v9 forMailboxNode:v7];

    if ([v9 hasChildren])
    {
      [(MailAccount *)self _addGenericChildrenToMailboxTree:v6 forNode:v8 hideNotes:0];
    }
  }
}

- (id)_treeOfAllMailboxesIncludingLocals:(BOOL)a3 withOutbox:(id)a4 hideInbox:(BOOL)a5 hideNotes:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v26 = a4;
  v10 = [MailboxHierarchyTree alloc];
  v11 = [(MailAccount *)self rootMailbox];
  v12 = [(MailboxHierarchyTree *)v10 initWithRootMailbox:v11];

  v24 = [(MailboxHierarchyTree *)v12 rootMailboxNode];
  v23 = v6;
  if (a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = +[LocalAccount localAccount];
  }

  v25 = [(MailAccount *)self primaryMailboxUid];
  v14 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
  v15 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  v16 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
  v17 = [(MailAccount *)self mailboxUidOfType:2 createIfNeeded:0];
  v18 = [(MailAccount *)self mailboxUidOfType:1 createIfNeeded:0];
  if (!v7 || [v25 hasChildren])
  {
    [(MailAccount *)self _addSpecialMailbox:v25 toTree:v12];
  }

  if (a3 || v13 && ([v14 account], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v14 toTree:v12];
  }

  if (v26)
  {
    [(MailAccount *)self _addSpecialMailbox:v26 toTree:v12];
  }

  if (a3 || v13 && ([v15 account], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v15 toTree:v12];
  }

  if (v18)
  {
    [(MailAccount *)self _addSpecialMailbox:v18 toTree:v12];
  }

  if (a3 || v13 && ([v16 account], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v16 toTree:v12];
  }

  if (v17)
  {
    [(MailAccount *)self _addSpecialMailbox:v17 toTree:v12];
  }

  [(MailAccount *)self _addGenericChildrenToMailboxTree:v12 forNode:v24 hideNotes:v23];

  return v12;
}

- (id)_allMailboxesIncludingLocals:(BOOL)a3 withOutbox:(id)a4 hideInbox:(BOOL)a5 hideNotes:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v24 = a4;
  v10 = objc_alloc_init(NSMutableArray);
  v22 = v6;
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = +[LocalAccount localAccount];
  }

  v23 = [(MailAccount *)self primaryMailboxUid];
  v12 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
  v13 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  v14 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
  v15 = [(MailAccount *)self mailboxUidOfType:2 createIfNeeded:0];
  v16 = [(MailAccount *)self mailboxUidOfType:1 createIfNeeded:0];
  if (!v7 || [v23 hasChildren])
  {
    [(MailAccount *)self addSpecialMailbox:v23 toArray:v10];
  }

  if (a3 || v11 && ([v12 account], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 != v11))
  {
    [(MailAccount *)self addSpecialMailbox:v12 toArray:v10];
  }

  if (v24)
  {
    [v10 addObject:v24];
  }

  if (!a3)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v18 = [v13 account];

    if (v18 == v11)
    {
      goto LABEL_18;
    }
  }

  [(MailAccount *)self addSpecialMailbox:v13 toArray:v10];
  if (!a3)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_18:
    v19 = [v14 account];

    if (v19 == v11)
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

  v20 = [(MailAccount *)self rootMailbox];
  [(MailAccount *)self _putMailboxesRootedAt:v20 intoArray:v10 hideNotes:v22];

  return v10;
}

- (id)treeOfAllMailboxUidsSortedWithSpecialsAtTopIncludingLocals:(BOOL)a3 client:(id)a4 outbox:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[MailAccount log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MailAccount *)self ef_publicDescription];
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> client:%{public}@", &v14, 0x16u);
  }

  v12 = -[MailAccount _treeOfAllMailboxesIncludingLocals:withOutbox:hideInbox:hideNotes:](self, "_treeOfAllMailboxesIncludingLocals:withOutbox:hideInbox:hideNotes:", v6, v9, [v8 shouldHideInbox], objc_msgSend(v8, "shouldHideNotesForAccount:", self));

  return v12;
}

- (id)treeOfAllGenericMailboxes
{
  v3 = [MailboxHierarchyTree alloc];
  v4 = [(MailAccount *)self rootMailbox];
  v5 = [(MailboxHierarchyTree *)v3 initWithRootMailbox:v4];

  v6 = [(MailboxHierarchyTree *)v5 rootMailboxNode];
  [(MailAccount *)self _addGenericChildrenToMailboxTree:v5 forNode:v6 hideNotes:[(MailAccount *)self isSyncingNotes]];

  return v5;
}

@end