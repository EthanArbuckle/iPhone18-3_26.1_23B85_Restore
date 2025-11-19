@interface MailChangeManager
+ (id)sharedChangeManager;
- (BOOL)addChange:(id)a3 currentAndPendingChangesBlock:(id)a4;
- (BOOL)mailboxHasSubMailboxes:(id)a3;
- (MailChangeManager)init;
- (id)allMailboxUidsSortedWithSpecialsAtTopForAccount:(id)a3 includingLocals:(BOOL)a4 client:(id)a5 outbox:(id)a6;
- (id)copyDiagnosticInformation;
- (id)displayNameForMailbox:(id)a3;
- (id)displayNameUsingSpecialNamesForMailbox:(id)a3;
- (id)genericMailboxUidsSortedForAccount:(id)a3 includingLocals:(BOOL)a4 excludingMailbox:(id)a5;
- (id)parentForMailbox:(id)a3;
- (int)levelForMailbox:(id)a3;
- (void)_modifyMailboxesForMailboxTree:(id)a3 forChange:(id)a4;
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

- (BOOL)addChange:(id)a3 currentAndPendingChangesBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isFinalized] & 1) == 0)
  {
    __assert_rtn("[MailChangeManager addChange:currentAndPendingChangesBlock:]", "MailChangeManager.m", 98, "[change isFinalized]");
  }

  [(MFConditionLock *)self->_processingLock lock];
  v8 = [(MFConditionLock *)self->_processingLock condition];
  [(MFConditionLock *)self->_processingLock unlock];
  if (!v8)
  {
    __assert_rtn("[MailChangeManager addChange:currentAndPendingChangesBlock:]", "MailChangeManager.m", 104, "isProperlyPaused");
  }

  v9 = +[NSMutableSet set];
  [(MailChangeManager *)self mf_lock];
  pendingChanges = self->_pendingChanges;
  if (pendingChanges)
  {
    if (!v7)
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
    if (!v7)
    {
LABEL_9:
      [(NSMutableArray *)pendingChanges addObject:v6];
      v13 = 1;
      goto LABEL_11;
    }
  }

  if (v7[2](v7, self->_currentChange, pendingChanges))
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
  v14 = [v6 stores];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v15)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v22 + 1) + 8 * i) mailbox];
        if (v18)
        {
          [v9 addObject:v18];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v15);
  }

  if ([(NSMutableArray *)self->_pendingChanges count]== 1)
  {
    v19 = [MFMonitoredInvocation invocationWithSelector:"processPendingChanges" target:self taskName:@"FLUSH_MBOX_CHANGES" priority:5 canBeCancelled:0];
    [v6 setInvocation:v19];
    [(MFInvocationQueue *)self->_invocationQueue addInvocation:v19];
  }

  v20 = MFLogGeneral();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v6;
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
    v48 = self;
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
      v48 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ChangeSetActions Initiating change %@", buf, 0xCu);
    }

    if (!v6)
    {
      break;
    }

    [(MailChangeManager *)self mf_unlock];
    v8 = [(MailChangeManager *)v6 commit];
    [(MailChangeManager *)self mf_lock];
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ChangeSetActions Committed change %@", buf, 0xCu);
    }

    if (v8)
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
        v48 = v14;
        v49 = 2048;
        v50 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ChangeSetActions Committed: %lu\tPending: %lu", buf, 0x16u);
      }
    }

    [(MailChangeManager *)v6 setInvocation:0];
    [(MailChangeManager *)self mf_unlock];
    if ((v8 & 1) == 0)
    {
      v16 = [(MailChangeManager *)v6 localizedErrorDescription];
      v39 = v16;
      v17 = [(MailChangeManager *)v6 localizedErrorTitle];
      v38 = v17;
      if ([v16 length] && objc_msgSend(v17, "length"))
      {
        v18 = [MFError errorWithDomain:v37 code:1030 localizedDescription:v16 title:v17 userInfo:&off_100675018];
        v45[0] = @"MailChangeSetErrorKey";
        v45[1] = @"MailChangeSetAccountKey";
        v46[0] = v18;
        v19 = [(MailChangeManager *)v6 accounts];
        v46[1] = v19;
        v20 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];

        v21 = +[NSNotificationCenter defaultCenter];
        [v21 postNotificationName:v36 object:0 userInfo:v20];

        v17 = v38;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [(MailChangeManager *)v6 mailboxToMoveOrRename];
        if (v22)
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
                  v29 = [v28 mailboxToMoveOrRename];
                  v30 = v22 == v29;

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

        v17 = v38;
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
    v48 = self;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "#ChangeSetActions %@ releasing power assertion", buf, 0xCu);
  }
}

- (void)_modifyMailboxesForMailboxTree:(id)a3 forChange:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v5 mailboxToRemove];
  if (v6)
  {
    [v10 removeNodeForMailbox:v6];
  }

  v7 = [v5 mailboxToMoveOrRename];
  if (v7)
  {
    v8 = [v5 modifiedMailboxName];
    if (v8)
    {
      [v10 setDisplayName:v8 forMailbox:v7];
    }

    v9 = [v5 mailboxParentForMove];
    if (v9)
    {
      [v10 moveMailbox:v7 toParent:v9];
    }
  }
}

- (id)allMailboxUidsSortedWithSpecialsAtTopForAccount:(id)a3 includingLocals:(BOOL)a4 client:(id)a5 outbox:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (pthread_main_np() != 1)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MailChangeManager.m" lineNumber:263 description:@"Current thread must be main"];
  }

  v14 = [v11 treeOfAllMailboxUidsSortedWithSpecialsAtTopIncludingLocals:v8 client:v12 outbox:v13];
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
  v20 = [v11 uniqueID];
  if (v20)
  {
    lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
    if (v14)
    {
      [(NSMutableDictionary *)lastCalculatedMailboxDictionary setObject:v14 forKeyedSubscript:v20];
    }

    else
    {
      [(NSMutableDictionary *)lastCalculatedMailboxDictionary removeObjectForKey:v20];
    }
  }

  v22 = [v14 flattenedMailboxTreeRepresentation];

  return v22;
}

- (id)genericMailboxUidsSortedForAccount:(id)a3 includingLocals:(BOOL)a4 excludingMailbox:(id)a5
{
  v7 = a5;
  v8 = [a3 treeOfAllGenericMailboxes];
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

  [(MailChangeManager *)self _modifyMailboxesForMailboxTree:v8 forChange:?];
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

        [(MailChangeManager *)self _modifyMailboxesForMailboxTree:v8 forChange:*(*(&v16 + 1) + 8 * i), v16];
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

LABEL_15:
  if (v7)
  {
    [v8 removeNodeForMailbox:v7];
  }

  v14 = [v8 flattenedMailboxTreeRepresentation];

  return v14;
}

- (id)parentForMailbox:(id)a3
{
  v4 = a3;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  v6 = [v4 account];
  v7 = [v6 uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:v7];

  v9 = [v8 parentForMailbox:v4];
  if (!v9)
  {
    v9 = [v4 parent];
  }

  return v9;
}

- (int)levelForMailbox:(id)a3
{
  v4 = a3;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  v6 = [v4 account];
  v7 = [v6 uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:v7];

  LODWORD(v6) = [v8 levelForMailbox:v4];
  return v6;
}

- (id)displayNameForMailbox:(id)a3
{
  v4 = a3;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  v6 = [v4 account];
  v7 = [v6 uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:v7];

  v9 = [v8 displayNameForMailbox:v4];
  if (!v9)
  {
    v9 = [v4 displayName];
  }

  return v9;
}

- (id)displayNameUsingSpecialNamesForMailbox:(id)a3
{
  v4 = a3;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  v6 = [v4 account];
  v7 = [v6 uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:v7];

  v9 = [v8 displayNameForMailbox:v4];
  if (!v9)
  {
    v9 = [v4 displayNameUsingSpecialNames];
  }

  return v9;
}

- (BOOL)mailboxHasSubMailboxes:(id)a3
{
  v4 = a3;
  lastCalculatedMailboxDictionary = self->_lastCalculatedMailboxDictionary;
  v6 = [v4 account];
  v7 = [v6 uniqueID];
  v8 = [(NSMutableDictionary *)lastCalculatedMailboxDictionary objectForKeyedSubscript:v7];

  LOBYTE(v6) = [v8 mailboxHasSubMailboxes:v4];
  return v6;
}

@end