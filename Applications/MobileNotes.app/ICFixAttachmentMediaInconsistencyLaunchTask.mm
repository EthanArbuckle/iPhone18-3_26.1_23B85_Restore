@interface ICFixAttachmentMediaInconsistencyLaunchTask
- (ICFixAttachmentMediaInconsistencyLaunchTask)init;
- (void)enumerateObjectsThatShouldBeConsistentForAttachment:(id)attachment withBlock:(id)block;
- (void)resolveByConsultingNoteBodyForAttachment:(id)attachment context:(id)context;
- (void)resolveInconsistencies:(id)inconsistencies context:(id)context;
- (void)resolveViaDeletionWithAttachment:(id)attachment context:(id)context;
- (void)resolveViaResurrectionWithAttachment:(id)attachment context:(id)context;
- (void)runLaunchTask;
@end

@implementation ICFixAttachmentMediaInconsistencyLaunchTask

- (ICFixAttachmentMediaInconsistencyLaunchTask)init
{
  v10.receiver = self;
  v10.super_class = ICFixAttachmentMediaInconsistencyLaunchTask;
  v2 = [(ICFixAttachmentMediaInconsistencyLaunchTask *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordIDsProcessed = v2->_recordIDsProcessed;
    v2->_recordIDsProcessed = v3;

    v5 = objc_opt_new();
    recordIDsMarkedForDeletion = v2->_recordIDsMarkedForDeletion;
    v2->_recordIDsMarkedForDeletion = v5;

    v7 = objc_opt_new();
    recordIDsUnmarkedForDeletion = v2->_recordIDsUnmarkedForDeletion;
    v2->_recordIDsUnmarkedForDeletion = v7;
  }

  return v2;
}

- (void)runLaunchTask
{
  [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100111088;
  v5 = v4[3] = &unk_100645BA0;
  selfCopy = self;
  v3 = v5;
  [v3 performBlockAndWait:v4];
}

- (void)resolveInconsistencies:(id)inconsistencies context:(id)context
{
  inconsistenciesCopy = inconsistencies;
  selfCopy = self;
  contextCopy = context;
  recordIDsProcessed = [(ICFixAttachmentMediaInconsistencyLaunchTask *)self recordIDsProcessed];
  v8 = [recordIDsProcessed mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[NSMutableSet set];
  }

  v11 = v10;

  v12 = ICKeyPathFromSelector();
  v13 = [inconsistenciesCopy valueForKey:v12];
  [v11 addObjectsFromArray:v13];

  v14 = [v11 copy];
  [(ICFixAttachmentMediaInconsistencyLaunchTask *)self setRecordIDsProcessed:v14];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = inconsistenciesCopy;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        objc_opt_class();
        v21 = ICDynamicCast();
        if (([v20 isUnsupported] & 1) == 0 && (objc_msgSend(v20, "needsInitialFetchFromCloudCheckingParent") & 1) == 0)
        {
          media = [v21 media];
          needsInitialFetchFromCloud = [media needsInitialFetchFromCloud];

          if ((needsInitialFetchFromCloud & 1) == 0)
          {
            if (!v21 || [v21 attachmentType] && ((objc_msgSend(v21, "parentAttachment"), (v24 = objc_claimAutoreleasedReturnValue()) == 0) || (v25 = v24, objc_msgSend(v21, "parentAttachment"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "attachmentType"), v26, v25, v27)))
            {
              note = [v20 note];
              markedForDeletion = [note markedForDeletion];

              if (markedForDeletion)
              {
                v30 = os_log_create("com.apple.notes", "LaunchTask");
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  note2 = [v20 note];
                  ic_loggingIdentifier = [note2 ic_loggingIdentifier];
                  ic_loggingIdentifier2 = [v20 ic_loggingIdentifier];
                  *buf = 138412546;
                  v41 = ic_loggingIdentifier;
                  v42 = 2112;
                  v43 = ic_loggingIdentifier2;
                  _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Note (%@) containing attachment (%@) is marked for deletion", buf, 0x16u);
                }

                [(ICFixAttachmentMediaInconsistencyLaunchTask *)selfCopy resolveViaDeletionWithAttachment:v20 context:contextCopy];
              }

              else
              {
                [(ICFixAttachmentMediaInconsistencyLaunchTask *)selfCopy resolveByConsultingNoteBodyForAttachment:v20 context:contextCopy];
              }
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v17);
  }

  [contextCopy ic_save];
}

- (void)resolveByConsultingNoteBodyForAttachment:(id)attachment context:(id)context
{
  attachmentCopy = attachment;
  contextCopy = context;
  note = [attachmentCopy note];
  document = [note document];
  if (document && ([note isPasswordProtectedAndLocked] & 1) == 0)
  {
    mergeUnappliedEncryptedRecord = [note mergeUnappliedEncryptedRecord];

    if (mergeUnappliedEncryptedRecord)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      [attachmentCopy rootParentAttachment];
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1001118FC;
      v11 = v22 = &unk_10064A3D0;
      v23 = v11;
      v24 = &v25;
      [note enumerateAbstractAttachmentsInOrderUsingBlock:&v19];
      v12 = *(v26 + 24);
      v13 = os_log_create("com.apple.notes", "LaunchTask");
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          ic_loggingIdentifier = [v11 ic_loggingIdentifier];
          ic_loggingIdentifier2 = [note ic_loggingIdentifier];
          sub_1004E05C8(ic_loggingIdentifier, ic_loggingIdentifier2, buf, v14);
        }

        [(ICFixAttachmentMediaInconsistencyLaunchTask *)self resolveViaResurrectionWithAttachment:attachmentCopy context:contextCopy];
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          ic_loggingIdentifier3 = [v11 ic_loggingIdentifier];
          ic_loggingIdentifier4 = [note ic_loggingIdentifier];
          *buf = 138412546;
          v30 = ic_loggingIdentifier3;
          v31 = 2112;
          v32 = ic_loggingIdentifier4;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Root attachment (%@) not found in note (%@) body", buf, 0x16u);
        }

        [(ICFixAttachmentMediaInconsistencyLaunchTask *)self resolveViaDeletionWithAttachment:attachmentCopy context:contextCopy];
      }

      _Block_object_dispose(&v25, 8);
    }
  }

  else
  {
  }
}

- (void)resolveViaResurrectionWithAttachment:(id)attachment context:(id)context
{
  attachmentCopy = attachment;
  recordIDsUnmarkedForDeletion = [(ICFixAttachmentMediaInconsistencyLaunchTask *)self recordIDsUnmarkedForDeletion];
  v7 = [recordIDsUnmarkedForDeletion mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSMutableSet set];
  }

  v10 = v9;

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100111A30;
  v16 = &unk_10064A3F8;
  v17 = v10;
  v18 = attachmentCopy;
  v11 = attachmentCopy;
  v12 = v10;
  [(ICFixAttachmentMediaInconsistencyLaunchTask *)self enumerateObjectsThatShouldBeConsistentForAttachment:v11 withBlock:&v13];
  [(ICFixAttachmentMediaInconsistencyLaunchTask *)self setRecordIDsUnmarkedForDeletion:v12, v13, v14, v15, v16];
}

- (void)resolveViaDeletionWithAttachment:(id)attachment context:(id)context
{
  attachmentCopy = attachment;
  recordIDsMarkedForDeletion = [(ICFixAttachmentMediaInconsistencyLaunchTask *)self recordIDsMarkedForDeletion];
  v7 = [recordIDsMarkedForDeletion mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100111C4C;
  v16 = &unk_10064A3F8;
  v17 = v10;
  v18 = attachmentCopy;
  v11 = attachmentCopy;
  v12 = v10;
  [(ICFixAttachmentMediaInconsistencyLaunchTask *)self enumerateObjectsThatShouldBeConsistentForAttachment:v11 withBlock:&v13];
  [(ICFixAttachmentMediaInconsistencyLaunchTask *)self setRecordIDsMarkedForDeletion:v12, v13, v14, v15, v16];
}

- (void)enumerateObjectsThatShouldBeConsistentForAttachment:(id)attachment withBlock:(id)block
{
  attachmentCopy = attachment;
  blockCopy = block;
  objc_opt_class();
  v7 = ICDynamicCast();
  parentAttachment = [attachmentCopy parentAttachment];
  if (parentAttachment)
  {
    v9 = parentAttachment;
    do
    {
      blockCopy[2](blockCopy, v9);
      parentAttachment2 = [v9 parentAttachment];

      v9 = parentAttachment2;
    }

    while (parentAttachment2);
  }

  blockCopy[2](blockCopy, attachmentCopy);
  if (v7)
  {
    media = [v7 media];

    if (media)
    {
      media2 = [v7 media];
      blockCopy[2](blockCopy, media2);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      media2 = [v7 subAttachments];
      v13 = [media2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        do
        {
          v16 = 0;
          do
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(media2);
            }

            blockCopy[2](blockCopy, *(*(&v26 + 1) + 8 * v16));
            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [media2 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v14);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    inlineAttachments = [v7 inlineAttachments];
    v18 = [inlineAttachments countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        v21 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(inlineAttachments);
          }

          blockCopy[2](blockCopy, *(*(&v22 + 1) + 8 * v21));
          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [inlineAttachments countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v19);
    }
  }
}

@end