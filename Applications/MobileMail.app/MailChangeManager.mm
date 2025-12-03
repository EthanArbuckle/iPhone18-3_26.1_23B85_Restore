@interface MailChangeManager
+ (id)sharedChangeManager;
- (BOOL)addChange:(id)change currentAndPendingChangesBlock:(id)block;
- (BOOL)mailboxHasSubMailboxes:(id)mailboxes;
- (MailChangeManager)init;
- (id)allMailboxUidsSortedWithSpecialsAtTopForAccount:(id)account includingLocals:(BOOL)locals client:(id)client outbox:(id)outbox;
- (id)copyDiagnosticInformation;
- (id)displayNameForMailbox:(id)mailbox;
- (id)displayNameUsingSpecialNamesForMailbox:(id)mailbox;
- (id)genericMailboxUidsSortedForAccount:(id)account includingLocals:(BOOL)locals excludingMailbox:(id)mailbox;
- (id)parentForMailbox:(id)mailbox;
- (int)levelForMailbox:(id)mailbox;
- (void)_modifyMailboxesForMailboxTree:(id)tree forChange:(id)change;
- (void)pause;
- (void)processPendingChanges;
- (void)resume;
@end

@implementation MailChangeManager

+ (id)sharedChangeManager
{
  if (qword_1006DD070 != -1)
  {
    sub_1000083D4();
  }

  v3 = qword_1006DD068;

  return v3;
}

- (MailChangeManager)init
{
  v11.receiver = self;
  v11.super_class = MailChangeManager;
  v2 = [(MailChangeManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MFInvocationQueue);
    invocationQueue = v2->_invocationQueue;
    v2->_invocationQueue = v3;

    [(MFInvocationQueue *)v2->_invocationQueue setMaxThreadCount:1];
    v5 = objc_alloc_init(NSMutableDictionary);
    lastCalculatedMailboxDictionary = v2->_lastCalculatedMailboxDictionary;
    v2->_lastCalculatedMailboxDictionary = v5;

    v7 = [[MFConditionLock alloc] initWithCondition:0];
    processingLock = v2->_processingLock;
    v2->_processingLock = v7;

    v9 = +[MFDiagnostics sharedController];
    [v9 addDiagnosticsGenerator:v2];
  }

  return v2;
}

- (id)copyDiagnosticInformation
{
  v3 = [[NSMutableString alloc] initWithFormat:@"\n==== %@ ====\n", objc_opt_class()];
  [(MailChangeManager *)self pause];
  [(MailChangeManager *)self mf_lock];
  [v3 appendFormat:@"  current change:    %@\n", self->_currentChange];
  [v3 appendFormat:@"  pending changes:   %@\n", self->_pendingChanges];
  [v3 appendFormat:@"  committed changes: %@\n", self->_committedChanges];
  [v3 appendFormat:@"  invocation queue:  %@\n", self->_invocationQueue];
  [(MailChangeManager *)self mf_unlock];
  [(MailChangeManager *)self resume];
  return v3;
}

- (void)pause
{
  [(MFConditionLock *)self->_processingLock lock];
  v3 = [(MFConditionLock *)self->_processingLock condition]+ 1;
  processingLock = self->_processingLock;

  [(MFConditionLock *)processingLock unlockWithCondition:v3];
}

- (void)resume
{
  [(MFConditionLock *)self->_processingLock lock];
  v3 = [(MFConditionLock *)self->_processingLock condition]- 1;
  processingLock = self->_processingLock;

  [(MFConditionLock *)processingLock unlockWithCondition:v3];
}

- (BOOL)addChange:(id)change currentAndPendingChangesBlock:(id)block
{
  changeCopy = change;
  blockCopy = block;
  if (([changeCopy isFinalized] & 1) == 0)
  {
    __assert_rtn("[MailChangeManager addChange:currentAndPendingChangesBlock:]", "MailChangeManager.m", 98, "[change isFinalized]");
  }

  [(MFConditionLock *)self->_processingLock lock];
  condition = [(MFConditionLock *)self->_processingLock condition];
  [(MFConditionLock *)self->_processingLock unlock];
  if (!condition)
  {
    __assert_rtn("[MailChangeManager addChange:currentAndPendingChangesBlock:]", "MailChangeManager.m", 104, "isProperlyPaused");
  }

  v9 = +[NSMutableSet set];
  [(MailChangeManager *)self mf_lock];
  pendingChanges = self->_pendingChanges;
  if (pendingChanges)
  {
    if (!blockCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = self->_pendingChanges;
    self->_pendingChanges = v11;

    pendingChanges = self->_pendingChanges;
    if (!blockCopy)
    {
LABEL_9:
      [(NSMutableArray *)pendingChanges addObject:changeCopy];
      v13 = 1;
      goto LABEL_11;
    }
  }

  if (blockCopy[2](blockCopy, self->_currentChange, pendingChanges))
  {
    pendingChanges = self->_pendingChanges;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_11:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  stores = [changeCopy stores];
  v15 = [stores countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v15)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(stores);
        }

        mailbox = [*(*(&v22 + 1) + 8 * i) mailbox];
        if (mailbox)
        {
          [v9 addObject:mailbox];
        }
      }

      v15 = [stores countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v15);
  }

  if ([(NSMutableArray *)self->_pendingChanges count]== 1)
  {
    v19 = [MFMonitoredInvocation invocationWithSelector:"processPendingChanges" target:self taskName:@"FLUSH_MBOX_CHANGES" priority:5 canBeCancelled:0];
    [changeCopy setInvocation:v19];
    [(MFInvocationQueue *)self->_invocationQueue addInvocation:v19];
  }

  v20 = MFLogGeneral();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = changeCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "#ChangeSetActions Added %@ to changes", buf, 0xCu);
  }

  [(MailChangeManager *)self mf_unlock];
  return v13;
}

- (void)processPendingChanges
{
  if (pthread_main_np())
  {
    v35 = +[NSAssertionHandler currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"MailChangeManager.m" lineNumber:139 description:@"Current thread is main"];
  }

  v4 = +[MFPowerController sharedInstance];
  [v4 retainAssertionWithIdentifier:@"MailPendingChanges"];

  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ChangeSetActions %@ taking power assertion", buf, 0xCu);
  }

  v37 = MFMessageErrorDomain;
  v36 = @"MailChangeSetEncounteredError";
  while (1)
  {
    [(MFConditionLock *)self->_processingLock lockWhenCondition:0, v36];
    [(MFConditionLock *)self->_processingLock unlock];
    [(MailChangeManager *)self mf_lock];
    if (![(NSMutableArray *)self->_pendingChanges count])
    {
      break;
    }

    v6 = [(NSMutableArray *)self->_pendingChanges objectAtIndexedSubscript:0];
    objc_storeStrong(&self->_currentChange, v6);
    [(NSMutableArray *)self->_pendingChanges removeObjectAtIndex:0];
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ChangeSetActions Initiating change %@", buf, 0xCu);
    }

    if (!v6)
    {
      break;
    }

    [(MailChangeManager *)self mf_unlock];
    commit = [(MailChangeManager *)v6 commit];
    [(MailChangeManager *)self mf_lock];
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ChangeSetActions Committed change %@", buf, 0xCu);
    }

    if (commit)
    {
      committedChanges = self->_committedChanges;
      if (!committedChanges)
      {
        v11 = objc_alloc_init(NSMutableArray);
        v12 = self->_committedChanges;
        self->_committedChanges = v11;

        committedChanges = self->_committedChanges;
      }

      [(NSMutableArray *)committedChanges addObject:v6];
      v13 = MFLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(NSMutableArray *)self->_committedChanges count];
        v15 = [(NSMutableArray *)self->_pendingChanges count];
        *buf = 134218240;
        selfCopy2 = v14;
        v49 = 2048;
        v50 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ChangeSetActions Committed: %lu\tPending: %lu", buf, 0x16u);
      }
    }

    [(MailChangeManager *)v6 setInvocation:0];
    [(MailChangeManager *)self mf_unlock];
    if ((commit & 1) == 0)
    {
      localizedErrorDescription = [(MailChangeManager *)v6 localizedErrorDescription];
      v39 = localizedErrorDescription;
      localizedErrorTitle = [(MailChangeManager *)v6 localizedErrorTitle];
      v38 = localizedErrorTitle;
      if ([localizedErrorDescription length] && objc_msgSend(localizedErrorTitle, "length"))
      {
        v18 = [MFError errorWithDomain:v37 code:1030 localizedDescription:localizedErrorDescription title:localizedErrorTitle userInfo:&off_100675018];
        v45[0] = @"MailChangeSetErrorKey";
        v45[1] = @"MailChangeSetAccountKey";
        v46[0] = v18;
        accounts = [(MailChangeManager *)v6 accounts];
        v46[1] = accounts;
        v20 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];

        v21 = +[NSNotificationCenter defaultCenter];
        [v21 postNotificationName:v36 object:0 userInfo:v20];

        localizedErrorTitle = v38;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mailboxToMoveOrRename = [(MailChangeManager *)v6 mailboxToMoveOrRename];
        if (mailboxToMoveOrRename)
        {
          [(MailChangeManager *)self mf_lock];
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v23 = [(NSMutableArray *)self->_pendingChanges copy];
          v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v24)
          {
            v25 = *v41;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v41 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v40 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = v27;
                  mailboxToMoveOrRename2 = [v28 mailboxToMoveOrRename];
                  v30 = mailboxToMoveOrRename == mailboxToMoveOrRename2;

                  if (v30)
                  {
                    [v28 revert];
                    [(NSMutableArray *)self->_pendingChanges removeObject:v28];
                  }
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
            }

            while (v24);
          }

          [(MailChangeManager *)self mf_unlock];
        }

        v31 = +[NSNotificationCenter defaultCenter];
        [v31 postNotificationName:@"MVMailboxListHasPendingChangesNotification" object:0];

        localizedErrorTitle = v38;
      }
    }
  }

  currentChange = self->_currentChange;
  self->_currentChange = 0;

  [(MailChangeManager *)self mf_unlock];
  v33 = +[MFPowerController sharedInstance];
  [v33 releaseAssertionWithIdentifier:@"MailPendingChanges"];

  v34 = MFLogGeneral();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "#ChangeSetActions %@ releasing power assertion", buf, 0xCu);
  }
}

- (void)_modifyMailboxesForMailboxTree:(id)tree forChange:(id)change
{
  treeCopy = tree;
  changeCopy = change;
  mailboxToRemove = [changeCopy mailboxToRemove];
  if (mailboxToRemove)
  {
    [treeCopy removeNodeForMailbox:mailboxToRemove];
  }

  mailboxToMoveOrRename = [changeCopy mailboxToMoveOrRename];
  if (mailboxToMoveOrRename)
  {
    modifiedMailboxName = [changeCopy modifiedMailboxName];
    if (modifiedMailboxName)
    {
      [treeCopy setDisplayName:modifiedMailboxName forMailbox:mailboxToMoveOrRename];
    }

    mailboxParentForMove = [changeCopy mailboxParentForMove];
    if (mailboxParentForMove)
    {
      [treeCopy moveMailbox:mailboxToMoveOrRename toParent:mailboxParentForMove];
    }
  }
}

- (id)allMailboxUidsSortedWithSpecialsAtTopForAccount:(id)account includingLocals:(BOOL)locals client:(id)client outbox:(id)outbox
{
  localsCopy = locals;
  accountCopy = account;
  clientCopy = client;
  outboxCopy = outbox;
  if (pthread_main_np() != 1)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MailChangeManager.m" lineNumber:263 description:@"Current thread must be main"];
  }

  v14 = [accountCopy treeOfAllMailboxUidsSortedWithSpecialsAtTopIncludingLocals:localsCopy client:clientCopy outbox:outboxCopy];
  pendingChanges = self->_pendingChanges;
  if (pendingChanges && [(NSMutableArray *)pendingChanges count])
  {
    if (!self->_currentChange)
    {
      goto LABEL_9;
    }
  }

  else if (!self->_currentChange)
  {
    goto LABEL_17;
  }

  [(MailChangeManager *)self _modifyMailboxesForMailboxTree:v14 forChange:?];
LABEL_9:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = self->_pendingChanges;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [(MailChangeManager *)self _modifyMailboxesForMailboxTree:v14 forChange:*(*(&v25 + 1) + 8 * i), v25];
      }

      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

LABEL_17:
  uniqueID = [accountCopy uniqueID];
  if (uniqueID)
  {
    lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
    if (v14)
    {
      [(NSMutableDictionary *)lastCalculatedMailboxDictionary setObject:v14 forKeyedSubscript:uniqueID];
    }

    else
    {
      [(NSMutableDictionary *)lastCalculatedMailboxDictionary removeObjectForKey:uniqueID];
    }
  }

  flattenedMailboxTreeRepresentation = [v14 flattenedMailboxTreeRepresentation];

  return flattenedMailboxTreeRepresentation;
}

- (id)genericMailboxUidsSortedForAccount:(id)account includingLocals:(BOOL)locals excludingMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  treeOfAllGenericMailboxes = [account treeOfAllGenericMailboxes];
  pendingChanges = self->_pendingChanges;
  if (pendingChanges && [(NSMutableArray *)pendingChanges count])
  {
    if (!self->_currentChange)
    {
      goto LABEL_7;
    }
  }

  else if (!self->_currentChange)
  {
    goto LABEL_15;
  }

  [(MailChangeManager *)self _modifyMailboxesForMailboxTree:treeOfAllGenericMailboxes forChange:?];
LABEL_7:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_pendingChanges;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [(MailChangeManager *)self _modifyMailboxesForMailboxTree:treeOfAllGenericMailboxes forChange:*(*(&v16 + 1) + 8 * i), v16];
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

LABEL_15:
  if (mailboxCopy)
  {
    [treeOfAllGenericMailboxes removeNodeForMailbox:mailboxCopy];
  }

  flattenedMailboxTreeRepresentation = [treeOfAllGenericMailboxes flattenedMailboxTreeRepresentation];

  return flattenedMailboxTreeRepresentation;
}

- (id)parentForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  account = [mailboxCopy account];
  uniqueID = [account uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:uniqueID];

  parent = [v8 parentForMailbox:mailboxCopy];
  if (!parent)
  {
    parent = [mailboxCopy parent];
  }

  return parent;
}

- (int)levelForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  account = [mailboxCopy account];
  uniqueID = [account uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:uniqueID];

  LODWORD(account) = [v8 levelForMailbox:mailboxCopy];
  return account;
}

- (id)displayNameForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  account = [mailboxCopy account];
  uniqueID = [account uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:uniqueID];

  displayName = [v8 displayNameForMailbox:mailboxCopy];
  if (!displayName)
  {
    displayName = [mailboxCopy displayName];
  }

  return displayName;
}

- (id)displayNameUsingSpecialNamesForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  account = [mailboxCopy account];
  uniqueID = [account uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:uniqueID];

  displayNameUsingSpecialNames = [v8 displayNameForMailbox:mailboxCopy];
  if (!displayNameUsingSpecialNames)
  {
    displayNameUsingSpecialNames = [mailboxCopy displayNameUsingSpecialNames];
  }

  return displayNameUsingSpecialNames;
}

- (BOOL)mailboxHasSubMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  account = [mailboxesCopy account];
  uniqueID = [account uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:uniqueID];

  LOBYTE(account) = [v8 mailboxHasSubMailboxes:mailboxesCopy];
  return account;
}

@end