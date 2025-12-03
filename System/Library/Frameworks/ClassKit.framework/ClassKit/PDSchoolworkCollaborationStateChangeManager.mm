@interface PDSchoolworkCollaborationStateChangeManager
- (PDSchoolworkCollaborationStateChangeManager)init;
- (id)_buildEventForAttachment:(id)attachment recipientPersonID:(id)d;
- (id)_buildStateChangeForAttachment:(id)attachment ownerPersonID:(id)d;
- (id)_fetchExistingStateForAttachment:(id)attachment withOwnerPersonID:(id)d;
- (void)_saveEventsForHandoutAttachmentID:(id)d recipientPersonID:(id)iD;
@end

@implementation PDSchoolworkCollaborationStateChangeManager

- (PDSchoolworkCollaborationStateChangeManager)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"The method [%@ %@] is not available.", v3, v4];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)_buildStateChangeForAttachment:(id)attachment ownerPersonID:(id)d
{
  attachmentCopy = attachment;
  dCopy = d;
  completionStatus = [attachmentCopy completionStatus];
  v9 = 0;
  if (completionStatus > 2)
  {
    if ((completionStatus - 3) < 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!completionStatus)
    {
      goto LABEL_21;
    }

    if (completionStatus == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = completionStatus == 2;
    }
  }

  if (self)
  {
    database = self->_database;
  }

  else
  {
    database = 0;
  }

  v11 = database;
  v12 = objc_opt_class();
  parentObjectID = [attachmentCopy parentObjectID];
  v14 = [(PDDatabase *)v11 select:v12 identity:parentObjectID];

  if (v14)
  {
    v15 = [(PDSchoolworkCollaborationStateChangeManager *)self _fetchExistingStateForAttachment:attachmentCopy withOwnerPersonID:dCopy];
    CLSInitLog();
    v16 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        clientBundleID = self->_clientBundleID;
      }

      else
      {
        clientBundleID = 0;
      }

      v23 = clientBundleID;
      v24 = v16;
      objectID = [attachmentCopy objectID];
      v31 = 138413058;
      v32 = clientBundleID;
      v33 = 2112;
      v34 = objectID;
      v35 = 2112;
      v36 = v15;
      v37 = 2048;
      v38 = v9;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): attachment: %@ current states: %@ desired state: %ld", &v31, 0x2Au);
    }

    if ([PDSchoolworkCollaborationStateAdaptor attachmentWithStates:v15 canBeSetToActivityState:v9 ignoreIsLocked:0])
    {
      if (self)
      {
        v17 = self->_database;
      }

      else
      {
        v17 = 0;
      }

      v18 = sub_1000711FC(v17);
      objectID2 = [v18 objectID];

      v9 = [PDSchoolworkCollaborationStateAdaptor setActivityState:v9 forAttachment:attachmentCopy forHandout:v14 senderPersonID:objectID2 withStates:v15];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    CLSInitLog();
    v20 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        v26 = self->_clientBundleID;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v28 = v20;
      objectID3 = [attachmentCopy objectID];
      parentObjectID2 = [attachmentCopy parentObjectID];
      v31 = 138412802;
      v32 = v26;
      v33 = 2112;
      v34 = objectID3;
      v35 = 2112;
      v36 = parentObjectID2;
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "SaveCollabState (Client %@): attachment: %@ missing parent handout: %@", &v31, 0x20u);
    }

    v9 = 0;
  }

LABEL_21:

  return v9;
}

- (id)_buildEventForAttachment:(id)attachment recipientPersonID:(id)d
{
  attachmentCopy = attachment;
  dCopy = d;
  if (self)
  {
    database = self->_database;
  }

  else
  {
    database = 0;
  }

  if (![PDEndpointRequestOperation isEndpointAvailable:@"uploadEvents" inDatabase:database])
  {
    goto LABEL_9;
  }

  completionStatus = [attachmentCopy completionStatus];
  if (completionStatus == 1)
  {
    if (self)
    {
      v13 = self->_database;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = objc_opt_class();
    parentObjectID = [attachmentCopy parentObjectID];
    v17 = [(PDDatabase *)v14 select:v15 identity:parentObjectID];

    if (sub_100175D74(v17))
    {
      v18 = 104;
    }

    else
    {
      v18 = 103;
    }

    if (self)
    {
      v19 = self->_database;
    }

    else
    {
      v19 = 0;
    }

    v11 = sub_100017A50(v19, attachmentCopy, v18, dCopy);

    goto LABEL_10;
  }

  if (completionStatus == 2)
  {
    if (self)
    {
      v10 = self->_database;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_100017A50(v10, attachmentCopy, 105, dCopy);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

LABEL_10:

  return v11;
}

- (id)_fetchExistingStateForAttachment:(id)attachment withOwnerPersonID:(id)d
{
  attachmentCopy = attachment;
  dCopy = d;
  if (self)
  {
    database = self->_database;
  }

  else
  {
    database = 0;
  }

  v9 = database;
  objectID = [attachmentCopy objectID];
  v11 = sub_100163860(v9, objectID, dCopy);

  if (![v11 count])
  {
    v27 = v11;
    CLSInitLog();
    v12 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      v25 = v12;
      objectID2 = [attachmentCopy objectID];
      *buf = 138412290;
      v34 = objectID2;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "SaveCollabState : no states for %@, creating default state", buf, 0xCu);
    }

    v13 = objc_opt_new();
    parentObjectID = [attachmentCopy parentObjectID];
    v15 = sub_100175C6C(v9, parentObjectID);

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = sub_1000AC900(PDSchoolworkCollaborationStateAdaptor, attachmentCopy, dCopy, v21);
          [v13 addObjectsFromArray:v23];

          objc_autoreleasePoolPop(v22);
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    v11 = [NSArray arrayWithArray:v13];
  }

  return v11;
}

- (void)_saveEventsForHandoutAttachmentID:(id)d recipientPersonID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v20 = objc_opt_new();
  selfCopy = self;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  pendingAttachmentEvents = [(PDSchoolworkCollaborationStateChangeManager *)self pendingAttachmentEvents];
  v8 = [pendingAttachmentEvents countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(pendingAttachmentEvents);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        attachmentID = [v12 attachmentID];
        if ([attachmentID isEqualToString:dCopy])
        {
          recipientPersonID = [v12 recipientPersonID];
          v16 = [recipientPersonID isEqualToString:iDCopy];

          if (v16)
          {
            if (selfCopy)
            {
              database = selfCopy->_database;
            }

            else
            {
              database = 0;
            }

            [(PDDatabase *)database insertOrUpdateObject:v12];
            [v20 addObject:v12];
          }
        }

        else
        {
        }

        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v18 = [pendingAttachmentEvents countByEnumeratingWithState:&v23 objects:v27 count:16];
      v9 = v18;
    }

    while (v18);
  }

  pendingAttachmentEvents2 = [(PDSchoolworkCollaborationStateChangeManager *)selfCopy pendingAttachmentEvents];
  [pendingAttachmentEvents2 removeObjectsInArray:v20];
}

@end