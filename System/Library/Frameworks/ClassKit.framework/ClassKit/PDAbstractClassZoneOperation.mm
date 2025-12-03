@interface PDAbstractClassZoneOperation
- (BOOL)_deleteDraftAnswer:(id)answer;
- (BOOL)_deleteEntity:(Class)entity identity:(id)identity;
- (BOOL)_deleteStateChanges:(id)changes;
- (BOOL)_deleteSurvey:(id)survey;
- (BOOL)_deleteSurveyStep:(id)step;
- (BOOL)_deleteWithPayload:(id)payload error:(id *)error;
- (BOOL)_insertOrUpdateArchivedHandout:(id)handout;
- (BOOL)_insertOrUpdateArchivedSurveyStep:(id)step;
- (BOOL)_insertOrUpdateCollectionItem:(id)item;
- (BOOL)_insertOrUpdateEntity:(id)entity;
- (BOOL)_insertOrUpdateSurveyAnswer:(id)answer;
- (BOOL)_insertOrUpdateSurveyStep:(id)step;
- (BOOL)deleteClassWithObjectID:(id)d deletePersons:(BOOL)persons;
- (BOOL)deleteCollectionItemsWithReferenceObjectID:(id)d;
- (BOOL)deleteHandoutWithObjectID:(id)d shouldDeleteDrafts:(BOOL)drafts;
- (BOOL)parseStreamedResponse:(id)response;
- (BOOL)processAttachment:(id)attachment;
- (BOOL)processAuthorizationStatus:(id)status;
- (BOOL)processCompletionStatus:(id)status;
- (BOOL)processPayloadFromResponse:(id)response error:(id *)error;
- (BOOL)processPayloadStatus:(id)status allowMixedResponse:(BOOL)response error:(id *)error;
- (BOOL)processPayloadWithinWriteTransaction:(id)transaction error:(id *)error stop:(BOOL *)stop;
- (BOOL)processPayloadsFromResponse:(id)response error:(id *)error;
- (BOOL)processResponse:(id *)response;
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (BOOL)processStateChange:(id)change error:(id *)error;
- (BOOL)readStreamablePayload:(id)payload reader:(id)reader error:(id *)error;
- (BOOL)resolveMissingEntityWithObjectID:(id)d;
- (BOOL)updateCollectionItemsReferenceObjectID:(id)d toType:(int64_t)type andObjectID:(id)iD;
- (BOOL)validateStateChangePayload:(id)payload error:(id *)error;
- (id)_applyStateChangesToParentHandoutEntity:(id)entity;
- (void)_setAuthorizationForAttachmentWithObjectID:(id)d shouldAuthorize:(BOOL)authorize;
- (void)logPayloadBeforeProcessing:(id)processing;
- (void)setCompletionAndLockedStatusForStateChange:(id)change andStateChangePayload:(id)payload forAttachment:(id)attachment;
- (void)setHandoutClosedStatusForStateChange:(id)change andStateChangePayload:(id)payload forHandout:(id)handout;
@end

@implementation PDAbstractClassZoneOperation

- (BOOL)readStreamablePayload:(id)payload reader:(id)reader error:(id *)error
{
  payloadCopy = payload;
  readerCopy = reader;
  [(PDAbstractClassZoneOperation *)self streamablePayloadClass];
  if (objc_opt_isKindOfClass())
  {
    v10 = sub_100131A44(payloadCopy, readerCopy);
  }

  else
  {
    CLSInitLog();
    v11 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      *buf = 138412290;
      v16 = objc_opt_class();
      v14 = v16;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Parse Error! Cannot read streamed response payloads of type '%@'!", buf, 0xCu);
    }

    [NSError cls_assignError:error code:300 format:@"Cannot read streamed responses containing payloads of type '%@'!", objc_opt_class()];
    v10 = 0;
  }

  return v10;
}

- (BOOL)parseStreamedResponse:(id)response
{
  v6.receiver = self;
  v6.super_class = PDAbstractClassZoneOperation;
  v4 = [(PDEndpointRequestOperation *)&v6 parseStreamedResponse:response];
  if (BYTE2(self->super._responseStatusError) == 1)
  {
    v4 &= ![(PDAbstractClassZoneOperation *)self stopProcessingIfResponseStatusPayloadFailed];
  }

  return v4;
}

- (BOOL)processResponseObject:(id)object error:(id *)error
{
  objectCopy = object;
  if ([(PDOperation *)self isAborted])
  {
    v7 = 0;
  }

  else
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      operationID = [(PDURLRequestOperation *)self operationID];
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = operationID;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ processing response;", &v16, 0x16u);
    }

    payloads = [objectCopy payloads];
    v13 = [payloads count];
    stats = [(PDURLRequestOperation *)self stats];
    if (stats)
    {
      stats[15] = v13;
    }

    v7 = [(PDAbstractClassZoneOperation *)self processPayloadsFromResponse:payloads error:error];
  }

  return v7;
}

- (BOOL)processPayloadWithinWriteTransaction:(id)transaction error:(id *)error stop:(BOOL *)stop
{
  transactionCopy = transaction;
  if ([(PDOperation *)self isAborted])
  {
    LOBYTE(v9) = 0;
    *stop = 1;
  }

  else
  {
    v10 = transactionCopy;
    v9 = [(PDAbstractClassZoneOperation *)self processPayloadFromResponse:v10 error:error];
    stats = [(PDURLRequestOperation *)self stats];
    sub_10009EB5C(stats, [v10 type], v9);

    if ((v9 & 1) == 0)
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = v14;
        operationID = [(PDURLRequestOperation *)self operationID];
        v17 = *error;
        v18 = 138543874;
        v19 = v14;
        v20 = 2114;
        v21 = operationID;
        v22 = 2114;
        v23 = v17;
        _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ failed to process payload: %{public}@", &v18, 0x20u);
      }
    }

    if (BYTE2(self->super._responseStatusError) == 1 && [(PDAbstractClassZoneOperation *)self stopProcessingIfResponseStatusPayloadFailed])
    {
      *stop = 1;
      if (error)
      {
        [(PDEndpointRequestOperation *)self setResponseStatusError:*error];
      }

      LOBYTE(v9) = 0;
    }

    else if (error)
    {
      *error = 0;
    }
  }

  return v9;
}

- (BOOL)processResponse:(id *)response
{
  v11.receiver = self;
  v11.super_class = PDAbstractClassZoneOperation;
  v5 = [(PDEndpointRequestOperation *)&v11 processResponse:?];
  if (BYTE2(self->super._responseStatusError) == 1 && [(PDAbstractClassZoneOperation *)self stopProcessingIfResponseStatusPayloadFailed])
  {
    if (response)
    {
      *response = [(PDEndpointRequestOperation *)self responseStatusError];
    }

    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      operationID = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = operationID;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ response processing terminated by failed status.", buf, 0x16u);
    }

    return 0;
  }

  return v5;
}

- (BOOL)processPayloadsFromResponse:(id)response error:(id *)error
{
  responseCopy = response;
  if ([(PDOperation *)self isAborted])
  {
    v7 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100060340;
    v18 = sub_100060350;
    v19 = 0;
    database = [(PDOperation *)self database];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100060358;
    v11[3] = &unk_100203110;
    v11[4] = self;
    v12 = responseCopy;
    v13 = &v14;
    if (database)
    {
      v7 = [database performTransaction:v11 forWriting:1];
    }

    else
    {
      v7 = 0;
    }

    v9 = v15[5];
    if (v9)
    {
      v7 = 0;
      if (error)
      {
        *error = v9;
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

- (void)logPayloadBeforeProcessing:(id)processing
{
  processingCopy = processing;
  CLSInitLog();
  logSubsystem = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    operationID = [(PDURLRequestOperation *)self operationID];
    type = [processingCopy type];
    if (type < 0x27 && ((0x7FFFFE91DFuLL >> type) & 1) != 0)
    {
      v9 = *(&off_1002038D0 + type);
    }

    else
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", type];
    }

    dictionaryRepresentation = [processingCopy dictionaryRepresentation];
    *buf = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = operationID;
    v15 = 2114;
    v16 = v9;
    v17 = 2112;
    v18 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Processing payload type: %{public}@\n    payload: %@", buf, 0x2Au);
  }
}

- (BOOL)processPayloadFromResponse:(id)response error:(id *)error
{
  responseCopy = response;
  if ([(PDOperation *)self isAborted])
  {
LABEL_2:
    LOBYTE(handout) = 0;
    goto LABEL_19;
  }

  if (!-[PDAbstractClassZoneOperation acceptsPayloadType:](self, "acceptsPayloadType:", [responseCopy type]))
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (!os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
    {
LABEL_18:

      LOBYTE(handout) = 1;
      goto LABEL_19;
    }

    v9 = objc_opt_class();
    operationID = [(PDURLRequestOperation *)self operationID];
    type = [responseCopy type];
    if (type < 0x27 && ((0x7FFFFE91DFuLL >> type) & 1) != 0)
    {
      v12 = *(&off_1002038D0 + type);
    }

    else
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", type];
    }

    *buf = 138543874;
    v77 = v9;
    v78 = 2114;
    v79 = operationID;
    v80 = 2114;
    v81 = v12;
    _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Ignoring payload type: %{public}@", buf, 0x20u);

LABEL_16:
    goto LABEL_18;
  }

  [(PDAbstractClassZoneOperation *)self logPayloadBeforeProcessing:responseCopy];
  if ([responseCopy type] == 1)
  {
    LOBYTE(handout) = 1;
    if ([(PDAbstractClassZoneOperation *)self processPayloadStatus:responseCopy allowMixedResponse:[(PDAbstractClassZoneOperation *)self allowMixedResponseStatusCode] error:error])
    {
      goto LABEL_19;
    }

    BYTE2(self->super._responseStatusError) = 1;
    goto LABEL_2;
  }

  if (![responseCopy action])
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (!os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v19 = objc_opt_class();
    v9 = v19;
    operationID = [(PDURLRequestOperation *)self operationID];
    v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [responseCopy action]);
    dictionaryRepresentation = [responseCopy dictionaryRepresentation];
    *buf = 138544130;
    v77 = v19;
    v78 = 2114;
    v79 = operationID;
    v80 = 2114;
    v81 = v20;
    v82 = 2112;
    v83 = dictionaryRepresentation;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ unknown action: %{public}@; payload: %@", buf, 0x2Au);

    goto LABEL_16;
  }

  if ([responseCopy action] == 3)
  {
    LOBYTE(handout) = [(PDAbstractClassZoneOperation *)self _deleteWithPayload:responseCopy error:error];
    goto LABEL_19;
  }

  if (-[PDAbstractClassZoneOperation allowMixedResponseStatusCode](self, "allowMixedResponseStatusCode") && [responseCopy hasStatus] && !-[PDAbstractClassZoneOperation processPayloadStatus:allowMixedResponse:error:](self, "processPayloadStatus:allowMixedResponse:error:", responseCopy, 0, error))
  {
    goto LABEL_2;
  }

  database = [(PDOperation *)self database];
  v15 = *error;
  v16 = objc_autoreleasePoolPush();
  switch([responseCopy type])
  {
    case 2u:
      handout = [responseCopy handout];
      v17 = sub_1000192B0(handout);

      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_100061610;
      v73[3] = &unk_100202140;
      v73[4] = self;
      v74 = v17;
      attachment = v17;
      [database withSyncEnabled:v73];
      LOBYTE(handout) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:attachment];

      goto LABEL_77;
    case 3u:
      attachment = [responseCopy attachment];
      v31 = [(PDAbstractClassZoneOperation *)self processAttachment:attachment];
      goto LABEL_76;
    case 4u:
      handout = [responseCopy recipient];
      attachment = sub_100019E08(handout);

      LODWORD(handout) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:attachment];
      if (!handout)
      {
        goto LABEL_77;
      }

      personID = [attachment personID];
      v34 = objc_opt_class();
      objectID = [attachment objectID];
      [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:personID forClass:v34 fromEntityWithID:objectID withClass:objc_opt_class()];

      classID = [attachment classID];
      v36 = objc_opt_class();
      objectID2 = [attachment objectID];
      [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:classID forClass:v36 fromEntityWithID:objectID2 withClass:objc_opt_class()];

      goto LABEL_82;
    case 6u:
      classInfo = [responseCopy classInfo];
      v23 = sub_1000851D4(classInfo);
      goto LABEL_75;
    case 7u:
      classInfo = [responseCopy person];
      v23 = sub_1000847C8(classInfo);
      goto LABEL_75;
    case 8u:
      classInfo = [responseCopy classMember];
      v23 = sub_100085548(classInfo);
      goto LABEL_75;
    case 0xFu:
      handout = [responseCopy asset];
      v42 = sub_10001E8EC(handout, database);

      LODWORD(handout) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v42];
      if (!handout)
      {
        goto LABEL_90;
      }

      parentEntityClass = [v42 parentEntityClass];
      if (parentEntityClass)
      {
        v44 = parentEntityClass;
        parentObjectID = [v42 parentObjectID];
        [v42 objectID];
        v46 = v66 = v42;
        [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:parentObjectID forClass:v44 fromEntityWithID:v46 withClass:objc_opt_class()];

        v42 = v66;
      }

      if ([v42 type] != 3)
      {
        goto LABEL_90;
      }

      if (sub_10015D3C8(database, v42))
      {
        CLSInitLog();
        logSubsystem2 = [(PDOperation *)self logSubsystem];
        if (!os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_INFO))
        {
          goto LABEL_89;
        }

        v48 = objc_opt_class();
        v67 = v48;
        [v42 objectID];
        v50 = v49 = v42;
        *buf = 138543618;
        v77 = v48;
        v78 = 2114;
        v79 = v50;
        v51 = "%{public}@: Not prefetching asset from completed handout: assetID %{public}@;";
      }

      else
      {
        sub_10012E18C(PDFileSyncManager, v42, database);
        CLSInitLog();
        logSubsystem2 = [(PDOperation *)self logSubsystem];
        if (!os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_INFO))
        {
          goto LABEL_89;
        }

        v64 = objc_opt_class();
        v67 = v64;
        [v42 objectID];
        v50 = v49 = v42;
        *buf = 138543618;
        v77 = v64;
        v78 = 2114;
        v79 = v50;
        v51 = "%{public}@: Prefetching asset: assetID %{public}@;";
      }

      _os_log_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_INFO, v51, buf, 0x16u);

      v42 = v49;
LABEL_89:

LABEL_90:
      goto LABEL_78;
    case 0x11u:
      attachment = [responseCopy authStatus];
      v31 = [(PDAbstractClassZoneOperation *)self processAuthorizationStatus:attachment];
      goto LABEL_76;
    case 0x12u:
      attachment = [responseCopy completionStatus];
      v31 = [(PDAbstractClassZoneOperation *)self processCompletionStatus:attachment];
      goto LABEL_76;
    case 0x13u:
      stateChange = [responseCopy stateChange];
      v72 = v15;
      LOBYTE(handout) = [(PDAbstractClassZoneOperation *)self processStateChange:stateChange error:&v72];
      v61 = v72;

      v15 = v61;
      goto LABEL_78;
    case 0x14u:
      collection = [responseCopy collection];
      attachment = sub_10001D104(collection);

      v28 = objc_opt_class();
      objectID3 = [attachment objectID];
      classID = [database select:v28 identity:objectID3];

      if (classID && ([attachment isEqual:classID] & 1) != 0)
      {
        LOBYTE(handout) = 1;
      }

      else
      {
        LOBYTE(handout) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:attachment];
      }

      goto LABEL_82;
    case 0x15u:
      attachment = [responseCopy collectionItem];
      sub_10001D7AC(attachment);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      classID = v71 = 0u;
      v38 = [classID countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (!v38)
      {
        goto LABEL_47;
      }

      v39 = v38;
      v40 = *v69;
      break;
    case 0x16u:
      handout2 = [responseCopy handout];
      attachment = sub_10001D9F0(handout2);

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateArchivedHandout:attachment];
      goto LABEL_76;
    case 0x17u:
      classInfo = [responseCopy attachment];
      v23 = sub_10001DBAC(classInfo);
      goto LABEL_75;
    case 0x18u:
      asset = [responseCopy asset];
      attachment = sub_10001DF68(asset, database);

      handout = objc_opt_class();
      objectID4 = [attachment objectID];
      v54 = [database entityExistsByClass:handout identity:objectID4];

      LODWORD(handout) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:attachment];
      if (handout && (v54 & 1) == 0 && [attachment type] == 3)
      {
        sub_10012E18C(PDFileSyncManager, attachment, database);
      }

      goto LABEL_77;
    case 0x19u:
      if ([responseCopy action] == 4)
      {
        survey = [responseCopy survey];
        [(PDAbstractClassZoneOperation *)self _deleteSurvey:survey];
      }

      classInfo = [responseCopy survey];
      v23 = sub_10001BA94(classInfo);
      goto LABEL_75;
    case 0x1Au:
      surveyStep = [responseCopy surveyStep];
      attachment = sub_10001C3C0(surveyStep);

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateSurveyStep:attachment];
      goto LABEL_76;
    case 0x1Bu:
      surveyStepAnswer = [responseCopy surveyStepAnswer];
      attachment = sub_10001B6E8(surveyStepAnswer);

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateSurveyAnswer:attachment];
      goto LABEL_76;
    case 0x1Cu:
      classInfo = [responseCopy survey];
      v23 = sub_10001BC8C(classInfo);
      goto LABEL_75;
    case 0x1Du:
      surveyStep2 = [responseCopy surveyStep];
      attachment = sub_10001C8D4(surveyStep2);

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateArchivedSurveyStep:attachment];
      goto LABEL_76;
    case 0x1Eu:
      classInfo = [responseCopy schedule];
      v23 = sub_1000200F0(classInfo);
LABEL_75:
      attachment = v23;

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:attachment];
LABEL_76:
      LOBYTE(handout) = v31;
      goto LABEL_77;
    case 0x1Fu:
      handout = [responseCopy scheduledEvent];
      attachment = sub_1000203D4(handout);

      LOBYTE(handout) = [database insertOrUpdateObject:attachment];
      if (handout)
      {
        goto LABEL_77;
      }

      CLSInitLog();
      classID = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(classID, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v65 = v25;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v77 = v25;
        v78 = 2114;
        v79 = operationID2;
        v80 = 2114;
        v81 = attachment;
        _os_log_impl(&_mh_execute_header, classID, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to insert %{public}@.", buf, 0x20u);
      }

      goto LABEL_82;
    default:
      CLSInitLog();
      handout = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(handout, OS_LOG_TYPE_INFO))
      {
        v56 = objc_opt_class();
        operationID3 = [(PDURLRequestOperation *)self operationID];
        type2 = [responseCopy type];
        if (type2 < 0x27 && ((0x7FFFFE91DFuLL >> type2) & 1) != 0)
        {
          v59 = *(&off_1002038D0 + type2);
        }

        else
        {
          v59 = [NSString stringWithFormat:@"(unknown: %i)", type2];
        }

        *buf = 138543874;
        v77 = v56;
        v78 = 2114;
        v79 = operationID3;
        v80 = 2114;
        v81 = v59;
        _os_log_impl(&_mh_execute_header, handout, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Unexpected payload type: %{public}@;", buf, 0x20u);
      }

      LOBYTE(handout) = 1;
      goto LABEL_78;
  }

  while (2)
  {
    for (i = 0; i != v39; i = i + 1)
    {
      if (*v69 != v40)
      {
        objc_enumerationMutation(classID);
      }

      if (![(PDAbstractClassZoneOperation *)self _insertOrUpdateCollectionItem:*(*(&v68 + 1) + 8 * i)])
      {
        LOBYTE(handout) = 0;
        goto LABEL_81;
      }
    }

    v39 = [classID countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v39)
    {
      continue;
    }

    break;
  }

LABEL_47:
  LOBYTE(handout) = 1;
LABEL_81:

LABEL_82:
LABEL_77:

LABEL_78:
  objc_autoreleasePoolPop(v16);

LABEL_19:
  return handout;
}

- (BOOL)_insertOrUpdateSurveyAnswer:(id)answer
{
  answerCopy = answer;
  database = [(PDOperation *)self database];
  v6 = objc_opt_class();
  objectID = [answerCopy objectID];
  v8 = [database select:v6 identity:objectID];

  if (!v8 || [v8 state] != 1)
  {
    goto LABEL_6;
  }

  dateLastModified = [v8 dateLastModified];
  dateLastModified2 = [answerCopy dateLastModified];
  v11 = sub_1000F1454(dateLastModified, dateLastModified2, 5.0);

  if (v11 != 1)
  {
    objectID2 = [v8 objectID];
    [(PDAbstractClassZoneOperation *)self _deleteDraftAnswer:objectID2];

LABEL_6:
    v12 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:answerCopy];
    goto LABEL_7;
  }

  v12 = 1;
LABEL_7:

  return v12;
}

- (BOOL)_insertOrUpdateArchivedHandout:(id)handout
{
  handoutCopy = handout;
  objectID = [handoutCopy objectID];
  v6 = sub_10001D4FC(objectID);
  objectID2 = [handoutCopy objectID];
  [(PDAbstractClassZoneOperation *)self updateCollectionItemsReferenceObjectID:v6 toType:2 andObjectID:objectID2];

  LOBYTE(self) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:handoutCopy];
  return self;
}

- (BOOL)updateCollectionItemsReferenceObjectID:(id)d toType:(int64_t)type andObjectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  [(PDOperation *)self database];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000619C4;
  v18 = v17[3] = &unk_1002037E8;
  v19 = dCopy;
  v20 = iDCopy;
  typeCopy = type;
  v10 = iDCopy;
  v11 = dCopy;
  v12 = v18;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 performTransaction:v17 forWriting:1];
    v15 = v20;
  }

  else
  {
    v14 = 0;
    v15 = v10;
  }

  return v14;
}

- (BOOL)deleteCollectionItemsWithReferenceObjectID:(id)d
{
  dCopy = d;
  database = [(PDOperation *)self database];
  v6 = objc_opt_class();
  v9 = dCopy;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  LOBYTE(v6) = [database deleteAll:v6 where:@"referenceObjectID = ?" bindings:v7];
  return v6;
}

- (BOOL)processPayloadStatus:(id)status allowMixedResponse:(BOOL)response error:(id *)error
{
  status = [status status];
  if ([status hasInternalMessage])
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v25 = v17;
      operationID = [(PDURLRequestOperation *)self operationID];
      code = [status code];
      message = [status message];
      internalMessage = [status internalMessage];
      *buf = 138544386;
      v27 = v17;
      v28 = 2114;
      v29 = operationID;
      v30 = 1024;
      *v31 = code;
      *&v31[4] = 2112;
      *&v31[6] = message;
      v32 = 2112;
      v33 = internalMessage;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
    }
  }

  v10 = sub_100105CA4(status);
  [(PDEndpointRequestOperation *)self handleServerAlerts:v10];

  if (-[PDAbstractClassZoneOperation shouldProcessPayloadWithStatusCode:](self, "shouldProcessPayloadWithStatusCode:", [status code]) || (sub_1001055FC(status, response), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = 1;
  }

  else
  {
    v12 = v11;
    [(PDEndpointRequestOperation *)self setResponseStatusError:v11];
    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    CLSInitLog();
    logSubsystem2 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = v22;
      operationID2 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v27 = v22;
      v28 = 2114;
      v29 = operationID2;
      v30 = 2114;
      *v31 = v12;
      _os_log_error_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ assignment request errored: %{public}@;", buf, 0x20u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)processAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = sub_1000196F4(attachmentCopy);
  if (v5)
  {
    database = [(PDOperation *)self database];
    v7 = objc_opt_class();
    objectId = [attachmentCopy objectId];
    v9 = [database select:v7 identity:objectId];

    if (v9)
    {
      [v5 setCompletionStatus:{objc_msgSend(v9, "completionStatus")}];
    }
  }

  v10 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v5];

  return v10;
}

- (BOOL)processAuthorizationStatus:(id)status
{
  statusCopy = status;
  parentObjectId = [statusCopy parentObjectId];
  if (parentObjectId)
  {
    -[PDAbstractClassZoneOperation _setAuthorizationForAttachmentWithObjectID:shouldAuthorize:](self, "_setAuthorizationForAttachmentWithObjectID:shouldAuthorize:", parentObjectId, [statusCopy isAuthorizable]);
  }

  else
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      operationID = [(PDURLRequestOperation *)self operationID];
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = operationID;
      v15 = 2112;
      v16 = statusCopy;
      _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Invalid authorization status payload! Payload: %@ - missing parentObjectId.", &v11, 0x20u);
    }
  }

  return 1;
}

- (BOOL)processCompletionStatus:(id)status
{
  statusCopy = status;
  parentObjectId = [statusCopy parentObjectId];
  if (parentObjectId)
  {
    database = [(PDOperation *)self database];
    v7 = [database select:objc_opt_class() identity:parentObjectId];
    if (v7)
    {
      if (![statusCopy hasStatus])
      {
LABEL_15:
        v13 = 0;
        goto LABEL_16;
      }

      v25 = sub_10001E418([statusCopy status]);
      isLocked = [v7 isLocked];
      dateLastCompleted = [statusCopy dateLastCompleted];
      v10 = sub_1001043D0(dateLastCompleted);
      dateLastModified = [statusCopy dateLastModified];
      v12 = sub_1001043D0(dateLastModified);
      LOBYTE(isLocked) = [(PDAbstractClassZoneOperation *)self setCompletionStatus:v25 forAttachment:v7 locked:isLocked dateCompleted:v10 dateModified:v12];

      if (isLocked)
      {
        v13 = 1;
LABEL_16:

        goto LABEL_17;
      }

      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = v22;
        operationID = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v27 = v22;
        v28 = 2114;
        v29 = operationID;
        v30 = 2114;
        v31 = parentObjectId;
        _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Failed to update completion status of handout attachment with objectID = %{public}@;.", buf, 0x20u);
      }
    }

    else
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = v19;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v27 = v19;
        v28 = 2114;
        v29 = operationID2;
        v30 = 2114;
        v31 = parentObjectId;
        _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Failed to find handout attachment with objectID = %{public}@;.", buf, 0x20u);
      }
    }

    goto LABEL_15;
  }

  CLSInitLog();
  database = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(database, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = v16;
    operationID3 = [(PDURLRequestOperation *)self operationID];
    *buf = 138543874;
    v27 = v16;
    v28 = 2114;
    v29 = operationID3;
    v30 = 2112;
    v31 = statusCopy;
    _os_log_error_impl(&_mh_execute_header, database, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Invalid completion status payload! Payload: %@ - missing parentObjectId.", buf, 0x20u);
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (BOOL)processStateChange:(id)change error:(id *)error
{
  changeCopy = change;
  if ([(PDAbstractClassZoneOperation *)self validateStateChangePayload:changeCopy error:error])
  {
    database = [(PDOperation *)self database];
    v8 = sub_10001A6C0(changeCopy);
    v9 = [NSMutableArray arrayWithArray:v8];
    v10 = +[PDUserDefaults sharedDefaults];
    enableVerboseLogging = [v10 enableVerboseLogging];

    v46 = v9;
    if (enableVerboseLogging)
    {
      v43 = changeCopy;
      errorCopy = error;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v42 = v8;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v51;
        v48 = v12;
        v49 = database;
        do
        {
          v16 = 0;
          do
          {
            if (*v51 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v50 + 1) + 8 * v16);
            v18 = objc_opt_class();
            objectID = [v17 objectID];
            v20 = [database select:v18 identity:objectID];

            CLSInitLog();
            logSubsystem = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
            {
              v23 = objc_opt_class();
              v47 = v23;
              operationID = [(PDURLRequestOperation *)self operationID];
              dictionaryRepresentation = [v20 dictionaryRepresentation];
              *buf = 138543874;
              v56 = v23;
              v57 = 2114;
              v58 = operationID;
              v59 = 2112;
              v60 = dictionaryRepresentation;
              _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Updating state old: %@", buf, 0x20u);

              v12 = v48;
              database = v49;
            }

            CLSInitLog();
            logSubsystem2 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
            {
              v26 = objc_opt_class();
              v27 = v26;
              operationID2 = [(PDURLRequestOperation *)self operationID];
              dictionaryRepresentation2 = [v17 dictionaryRepresentation];
              *buf = 138543874;
              v56 = v26;
              v12 = v48;
              v57 = 2114;
              v58 = operationID2;
              v59 = 2112;
              v60 = dictionaryRepresentation2;
              _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Updating state new: %@", buf, 0x20u);

              database = v49;
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v14);
      }

      changeCopy = v43;
      error = errorCopy;
      v8 = v42;
      v9 = v46;
    }

    v30 = [(PDAbstractClassZoneOperation *)self _applyStateChangesToParentHandoutEntity:changeCopy];
    if (v30)
    {
      [v9 addObject:v30];
    }

    v31 = [database insertOrUpdateObjects:v9];
    if ((v31 & 1) == 0)
    {
      CLSInitLog();
      logSubsystem3 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        errorCopy2 = error;
        v34 = v33;
        operationID3 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v56 = v33;
        v57 = 2114;
        v58 = operationID3;
        v59 = 2112;
        v60 = changeCopy;
        _os_log_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to save state changes for payload: %@", buf, 0x20u);

        error = errorCopy2;
      }

      v36 = objc_opt_class();
      operationID4 = [(PDURLRequestOperation *)self operationID];
      [NSError cls_assignError:error code:308 format:@"%@: %@ Failed to save state changes for payload: %@", v36, operationID4, changeCopy];

      v9 = v46;
    }
  }

  else
  {
    CLSInitLog();
    database = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(database, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v39 = v38;
      operationID5 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v56 = v38;
      v57 = 2114;
      v58 = operationID5;
      v59 = 2112;
      v60 = changeCopy;
      _os_log_impl(&_mh_execute_header, database, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Skipping invalid payload: %@", buf, 0x20u);
    }

    v31 = 0;
  }

  return v31;
}

- (BOOL)validateStateChangePayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  if (([payloadCopy hasTargetObjectId] & 1) == 0)
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = v60;
      [(PDURLRequestOperation *)self operationID];
      v63 = v62 = payloadCopy;
      *buf = 138543618;
      v106 = v60;
      v107 = 2114;
      v108 = v63;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid state change (missing targetObjectID).", buf, 0x16u);

      payloadCopy = v62;
    }

    v64 = objc_opt_class();
    operationID = [(PDURLRequestOperation *)self operationID];
    [NSError cls_assignError:error code:308 format:@"%@: %@ Invalid state change (missing targetObjectID).", v64, operationID];
    goto LABEL_50;
  }

  if (([payloadCopy hasTargetEntityName] & 1) == 0)
  {
    CLSInitLog();
    logSubsystem2 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEFAULT))
    {
      v66 = objc_opt_class();
      v67 = v66;
      [(PDURLRequestOperation *)self operationID];
      v69 = v68 = payloadCopy;
      targetObjectId = [v68 targetObjectId];
      *buf = 138543874;
      v106 = v66;
      v107 = 2114;
      v108 = v69;
      v109 = 2112;
      v110 = targetObjectId;
      _os_log_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid state change (missing targetEntityName for targetObjectID %@).", buf, 0x20u);

      payloadCopy = v68;
    }

    v71 = objc_opt_class();
    operationID = [(PDURLRequestOperation *)self operationID];
    targetObjectId2 = [payloadCopy targetObjectId];
    [NSError cls_assignError:error code:308 format:@"%@: %@ Invalid state change (missing targetEntityName for targetObjectID %@).", v71, operationID, targetObjectId2];
    goto LABEL_49;
  }

  if (([payloadCopy hasTargetOwnerPersonId] & 1) == 0)
  {
    CLSInitLog();
    logSubsystem3 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEFAULT))
    {
      v74 = objc_opt_class();
      v75 = v74;
      [(PDURLRequestOperation *)self operationID];
      v77 = v76 = payloadCopy;
      targetObjectId3 = [v76 targetObjectId];
      *buf = 138543874;
      v106 = v74;
      v107 = 2114;
      v108 = v77;
      v109 = 2112;
      v110 = targetObjectId3;
      _os_log_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid state change (missing targetOwnerPersonID for targetObjectID %@).", buf, 0x20u);

      payloadCopy = v76;
    }

    v79 = objc_opt_class();
    operationID = [(PDURLRequestOperation *)self operationID];
    targetObjectId2 = [payloadCopy targetObjectId];
    [NSError cls_assignError:error code:308 format:@"%@: %@ Invalid state change (missing targetOwnerPersonID for targetObjectID %@).", v79, operationID, targetObjectId2];
    goto LABEL_49;
  }

  stateChangePayloads = [payloadCopy stateChangePayloads];
  v8 = [stateChangePayloads count];

  if (!v8)
  {
    CLSInitLog();
    logSubsystem4 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem4, OS_LOG_TYPE_DEFAULT))
    {
      v87 = objc_opt_class();
      v88 = v87;
      [(PDURLRequestOperation *)self operationID];
      v90 = v89 = payloadCopy;
      targetObjectId4 = [v89 targetObjectId];
      *buf = 138543874;
      v106 = v87;
      v107 = 2114;
      v108 = v90;
      v109 = 2112;
      v110 = targetObjectId4;
      _os_log_impl(&_mh_execute_header, logSubsystem4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid state change (empty stateChangePayloads for targetObjectID %@).", buf, 0x20u);

      payloadCopy = v89;
    }

    v92 = objc_opt_class();
    operationID = [(PDURLRequestOperation *)self operationID];
    targetObjectId2 = [payloadCopy targetObjectId];
    [NSError cls_assignError:error code:308 format:@"%@: %@ Invalid state change (empty stateChangePayloads for targetObjectID %@).", v92, operationID, targetObjectId2];
LABEL_49:

LABEL_50:
    v58 = 0;
    goto LABEL_51;
  }

  targetObjectId5 = [payloadCopy targetObjectId];
  targetOwnerPersonId = [payloadCopy targetOwnerPersonId];
  [payloadCopy stateChangePayloads];
  v11 = v96 = payloadCopy;
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = &CLSLogAsset_ptr;
  operationID = +[CLSCollaborationState identifierForTargetObjectID:ownerPersonID:domain:](CLSCollaborationState, "identifierForTargetObjectID:ownerPersonID:domain:", targetObjectId5, targetOwnerPersonId, [v12 domain]);

  payloadCopy = v96;
  if ([v96 hasTargetClassId])
  {
    targetClassId = [v96 targetClassId];
    v16 = objc_opt_class();
    LODWORD(v16) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:targetClassId forClass:v16 fromEntityWithID:operationID withClass:objc_opt_class()];

    if (v16)
    {
      CLSInitLog();
      logSubsystem5 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem5, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = v18;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        targetClassId2 = [v96 targetClassId];
        *buf = 138543874;
        v106 = v18;
        v107 = 2114;
        v108 = operationID2;
        v109 = 2112;
        v110 = targetClassId2;
        _os_log_impl(&_mh_execute_header, logSubsystem5, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ State change missing reference (targetClassId '%@' is not in roster).", buf, 0x20u);

        payloadCopy = v96;
      }
    }
  }

  targetOwnerPersonId2 = [payloadCopy targetOwnerPersonId];
  v23 = objc_opt_class();
  LODWORD(v23) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:targetOwnerPersonId2 forClass:v23 fromEntityWithID:operationID withClass:objc_opt_class()];

  if (v23)
  {
    CLSInitLog();
    logSubsystem6 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem6, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = v25;
      operationID3 = [(PDURLRequestOperation *)self operationID];
      targetOwnerPersonId3 = [v96 targetOwnerPersonId];
      *buf = 138543874;
      v106 = v25;
      v107 = 2114;
      v108 = operationID3;
      v109 = 2112;
      v110 = targetOwnerPersonId3;
      _os_log_impl(&_mh_execute_header, logSubsystem6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ State change missing reference. (ownerPersonID '%@' is not in roster).", buf, 0x20u);

      payloadCopy = v96;
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = [payloadCopy stateChangePayloads];
  v99 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
  if (v99)
  {
    errorCopy = error;
    v95 = operationID;
    v98 = *v101;
    while (2)
    {
      for (i = 0; i != v99; i = i + 1)
      {
        if (*v101 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v100 + 1) + 8 * i);
        v31 = v13[75];
        targetObjectId6 = [payloadCopy targetObjectId];
        targetOwnerPersonId4 = [payloadCopy targetOwnerPersonId];
        v34 = [v31 identifierForTargetObjectID:targetObjectId6 ownerPersonID:targetOwnerPersonId4 domain:{objc_msgSend(v30, "domain")}];

        if (([v30 hasParticipants] & 1) == 0)
        {
          CLSInitLog();
          logSubsystem7 = [(PDOperation *)self logSubsystem];
          if (os_log_type_enabled(logSubsystem7, OS_LOG_TYPE_DEFAULT))
          {
            v81 = objc_opt_class();
            v82 = v81;
            operationID4 = [(PDURLRequestOperation *)self operationID];
            *buf = 138543874;
            v106 = v81;
            v107 = 2114;
            v108 = operationID4;
            v109 = 2112;
            v110 = v30;
            _os_log_impl(&_mh_execute_header, logSubsystem7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid stateChangePayload (missing participants) %@", buf, 0x20u);
          }

          v84 = objc_opt_class();
          operationID5 = [(PDURLRequestOperation *)self operationID];
          [NSError cls_assignError:errorCopy code:308 format:@"%@: %@ Invalid stateChangePayload (missing participants) %@", v84, operationID5, v30];

          v58 = 0;
          payloadCopy = v96;
          goto LABEL_45;
        }

        participants = [v30 participants];
        senderPersonId = [participants senderPersonId];

        if (senderPersonId)
        {
          participants2 = [v30 participants];
          senderPersonId2 = [participants2 senderPersonId];
          v39 = objc_opt_class();
          v40 = v13[75];
          LODWORD(v39) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:senderPersonId2 forClass:v39 fromEntityWithID:v34 withClass:objc_opt_class()];

          if (v39)
          {
            CLSInitLog();
            logSubsystem8 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(logSubsystem8, OS_LOG_TYPE_DEFAULT))
            {
              v42 = objc_opt_class();
              v43 = v42;
              operationID6 = [(PDURLRequestOperation *)self operationID];
              participants3 = [v30 participants];
              senderPersonId3 = [participants3 senderPersonId];
              *buf = 138543874;
              v106 = v42;
              v107 = 2114;
              v108 = operationID6;
              v109 = 2112;
              v110 = senderPersonId3;
              _os_log_impl(&_mh_execute_header, logSubsystem8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ State change missing reference. (senderPersonId '%@' is not in roster).", buf, 0x20u);

              payloadCopy = v96;
            }
          }
        }

        participants4 = [v30 participants];
        recipientPersonId = [participants4 recipientPersonId];

        if (recipientPersonId)
        {
          participants5 = [v30 participants];
          recipientPersonId2 = [participants5 recipientPersonId];
          v51 = objc_opt_class();
          LODWORD(v51) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:recipientPersonId2 forClass:v51 fromEntityWithID:v34 withClass:objc_opt_class()];

          if (v51)
          {
            CLSInitLog();
            logSubsystem9 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(logSubsystem9, OS_LOG_TYPE_DEFAULT))
            {
              v53 = objc_opt_class();
              v54 = v53;
              operationID7 = [(PDURLRequestOperation *)self operationID];
              participants6 = [v30 participants];
              recipientPersonId3 = [participants6 recipientPersonId];
              *buf = 138543874;
              v106 = v53;
              v107 = 2114;
              v108 = operationID7;
              v109 = 2112;
              v110 = recipientPersonId3;
              _os_log_impl(&_mh_execute_header, logSubsystem9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ State change missing reference. (recipientPersonId '%@' is not in roster).", buf, 0x20u);

              payloadCopy = v96;
            }
          }
        }

        v13 = &CLSLogAsset_ptr;
      }

      v99 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
      if (v99)
      {
        continue;
      }

      break;
    }

    v58 = 1;
LABEL_45:
    operationID = v95;
  }

  else
  {
    v58 = 1;
  }

LABEL_51:
  return v58;
}

- (BOOL)resolveMissingEntityWithObjectID:(id)d
{
  dCopy = d;
  database = [(PDOperation *)self database];
  v6 = objc_opt_class();
  v9 = dCopy;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  LOBYTE(v6) = [database deleteAll:v6 where:@"entityID = ?" bindings:v7];
  return v6;
}

- (id)_applyStateChangesToParentHandoutEntity:(id)entity
{
  entityCopy = entity;
  database = [(PDOperation *)self database];
  v5 = sub_1000711FC(database);
  objectID = [v5 objectID];

  if (!objectID)
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      v35 = objc_opt_class();
      v36 = v35;
      operationID = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v48 = v35;
      v49 = 2114;
      v50 = operationID;
      v51 = 2112;
      v52 = entityCopy;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ No currentUser. Not applying changes to parent entity for payload: %@", buf, 0x20u);
    }

    v12 = 0;
    goto LABEL_39;
  }

  targetEntityName = [entityCopy targetEntityName];
  v8 = sub_100104ED0(targetEntityName);

  if (v8 == objc_opt_class())
  {
    v13 = objc_opt_class();
    targetObjectId = [entityCopy targetObjectId];
    v15 = [database select:v13 identity:targetObjectId];
    v9 = 0;
    v10 = v15;
LABEL_10:

    [entityCopy targetOwnerPersonId];
    goto LABEL_11;
  }

  if (v8 == objc_opt_class())
  {
    v16 = objc_opt_class();
    targetObjectId = [entityCopy targetObjectId];
    v15 = [database select:v16 identity:targetObjectId];
    v10 = 0;
    v9 = v15;
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  [entityCopy targetOwnerPersonId];
  v17 = LABEL_11:;
  v39 = objectID;
  selfCopy = self;
  if (v17)
  {
    targetOwnerPersonId = [entityCopy targetOwnerPersonId];
    v19 = [objectID isEqualToString:targetOwnerPersonId];
  }

  else
  {
    v19 = 0;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = entityCopy;
  stateChangePayloads = [entityCopy stateChangePayloads];
  v22 = [stateChangePayloads countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    if (v10)
    {
      v25 = v19;
    }

    else
    {
      v25 = 0;
    }

    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(stateChangePayloads);
        }

        v27 = *(*(&v42 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        domain = [v27 domain];
        if (domain == 1)
        {
          if (v10)
          {
            [(PDAbstractClassZoneOperation *)selfCopy setCompletionAndLockedStatusForStateChange:v20 andStateChangePayload:v27 forAttachment:v10];
          }
        }

        else if (domain == 5)
        {
          if (v9)
          {
            [(PDAbstractClassZoneOperation *)selfCopy setHandoutClosedStatusForStateChange:v20 andStateChangePayload:v27 forHandout:v9];
          }
        }

        else if (domain == 3 && v25 != 0)
        {
          if ([v27 state] == 1)
          {
            v31 = database;
            v32 = v10;
            v33 = 0;
          }

          else
          {
            if ([v27 state] != 2)
            {
              goto LABEL_36;
            }

            v31 = database;
            v32 = v10;
            v33 = 1;
          }

          sub_100160444(v31, v32, v33);
        }

LABEL_36:
        objc_autoreleasePoolPop(v28);
      }

      v23 = [stateChangePayloads countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v23);
  }

  logSubsystem = v38;
  v12 = logSubsystem;
  entityCopy = v20;
  objectID = v39;
LABEL_39:

  return v12;
}

- (void)setCompletionAndLockedStatusForStateChange:(id)change andStateChangePayload:(id)payload forAttachment:(id)attachment
{
  changeCopy = change;
  payloadCopy = payload;
  attachmentCopy = attachment;
  isComplete = [attachmentCopy isComplete];
  v10 = [attachmentCopy completionStatus] == 1 || objc_msgSend(attachmentCopy, "completionStatus") == 2;
  if ([payloadCopy state] == 5)
  {
    flags = [payloadCopy flags];
    objc_opt_self();
    v12 = (flags & 0x11) != 0;
  }

  else
  {
    v12 = 0;
  }

  state = [payloadCopy state];
  objc_opt_self();
  v14 = state == 2 || v12;
  v15 = ([payloadCopy flags] >> 2) & 1;
  state2 = [payloadCopy state];
  state3 = [payloadCopy state];
  [attachmentCopy setLocked:v15];
  if (state3 && (((isComplete ^ v14 | v10) & 1) != 0 || state2 == 4))
  {
    state4 = [payloadCopy state];
    objc_opt_self();
    v19 = state4 > 5 ? 3 : dword_1001A8490[state4];
    [attachmentCopy setCompletionStatus:v19];
    if (v14)
    {
      if ([changeCopy hasDateLastModified])
      {
        dateLastModified = [changeCopy dateLastModified];
        v21 = sub_1001043D0(dateLastModified);
        [attachmentCopy setDateLastCompleted:v21];
      }

      else
      {
        dateLastModified = +[NSDate date];
        [attachmentCopy setDateLastCompleted:dateLastModified];
      }
    }
  }

  if ([changeCopy hasDateLastModified])
  {
    dateLastModified2 = [changeCopy dateLastModified];
    v23 = sub_1001043D0(dateLastModified2);
    [attachmentCopy setDateLastModified:v23];
  }
}

- (void)setHandoutClosedStatusForStateChange:(id)change andStateChangePayload:(id)payload forHandout:(id)handout
{
  handoutCopy = handout;
  [handoutCopy setReviewed:{objc_msgSend(payload, "state") == 2}];
}

- (BOOL)_insertOrUpdateEntity:(id)entity
{
  entityCopy = entity;
  if (entityCopy)
  {
    database = [(PDOperation *)self database];
    if ([database insertOrUpdateObject:entityCopy])
    {
      objectID = [entityCopy objectID];
      v7 = [(PDAbstractClassZoneOperation *)self resolveMissingEntityWithObjectID:objectID];
    }

    else
    {
      CLSInitLog();
      logSubsystem = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        operationID = [(PDURLRequestOperation *)self operationID];
        v13 = 138543874;
        v14 = v9;
        v15 = 2114;
        v16 = operationID;
        v17 = 2114;
        v18 = entityCopy;
        _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to insert %{public}@.", &v13, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_insertOrUpdateCollectionItem:(id)item
{
  itemCopy = item;
  database = [(PDOperation *)self database];
  v6 = objc_opt_class();
  parentObjectID = [itemCopy parentObjectID];
  v14[0] = parentObjectID;
  referenceObjectID = [itemCopy referenceObjectID];
  v14[1] = referenceObjectID;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [database select:v6 where:@"parentObjectID = ? AND referenceObjectID = ?" bindings:v9];

  if (v10 && ([v10 objectID], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "setObjectID:", v11), v11, (objc_msgSend(itemCopy, "isEqual:", v10) & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    v12 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:itemCopy];
  }

  return v12;
}

- (BOOL)_insertOrUpdateSurveyStep:(id)step
{
  stepCopy = step;
  database = [(PDOperation *)self database];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v9) = 1;
    goto LABEL_30;
  }

  v6 = stepCopy;
  v7 = objc_opt_new();
  [v7 addObject:v6];
  questionType = [v6 questionType];
  v33 = database;
  if (questionType <= 2)
  {
    if (questionType != 1)
    {
      if (questionType != 2)
      {
        goto LABEL_20;
      }

LABEL_9:
      context = objc_autoreleasePoolPush();
      v10 = objc_opt_new();
      answerFormat = [v6 answerFormat];
      [v7 addObject:answerFormat];
      v12 = objc_opt_class();
      objectID = [answerFormat objectID];
      v46 = objectID;
      v14 = [NSArray arrayWithObjects:&v46 count:1];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100064464;
      v42[3] = &unk_100203810;
      v15 = v10;
      v43 = v15;
      [database selectAll:v12 where:@"parentObjectID = ?" bindings:v14 block:v42];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = answerFormat;
      answerChoiceItems = [answerFormat answerChoiceItems];
      v17 = [answerChoiceItems countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v39;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(answerChoiceItems);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            [v7 addObject:v21];
            objectID2 = [v21 objectID];
            [v15 removeObject:objectID2];
          }

          v18 = [answerChoiceItems countByEnumeratingWithState:&v38 objects:v45 count:16];
        }

        while (v18);
      }

      if ([v15 count])
      {
        v23 = [PDDatabase whereSQLForArray:v15 prefix:@"objectID in "];
        [v33 deleteAll:objc_opt_class() where:v23 bindings:v15];
      }

      objc_autoreleasePoolPop(context);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (questionType == 3)
  {
LABEL_19:
    answerFormat2 = [v6 answerFormat];
    [v7 addObject:answerFormat2];

    goto LABEL_20;
  }

  if (questionType == 4)
  {
    goto LABEL_9;
  }

LABEL_20:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = v7;
  v26 = [v25 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    v9 = 1;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v9 &= [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:*(*(&v34 + 1) + 8 * j)];
      }

      v27 = [v25 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v27);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  database = v33;
LABEL_30:

  return v9;
}

- (BOOL)_insertOrUpdateArchivedSurveyStep:(id)step
{
  stepCopy = step;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v8) = 1;
    goto LABEL_29;
  }

  v5 = stepCopy;
  v6 = objc_opt_new();
  [v6 addObject:v5];
  questionType = [v5 questionType];
  if (questionType <= 2)
  {
    if (questionType != 1)
    {
      if (questionType != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

LABEL_17:
    archivedAnswerFormat = [v5 archivedAnswerFormat];
    [v6 addObject:archivedAnswerFormat];
LABEL_18:

    goto LABEL_19;
  }

  if (questionType == 3)
  {
    goto LABEL_17;
  }

  if (questionType == 4)
  {
LABEL_9:
    archivedAnswerFormat = [v5 archivedAnswerFormat];
    [v6 addObject:archivedAnswerFormat];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    archivedAnswerChoiceItems = [archivedAnswerFormat archivedAnswerChoiceItems];
    v11 = [archivedAnswerChoiceItems countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(archivedAnswerChoiceItems);
          }

          [v6 addObject:*(*(&v25 + 1) + 8 * i)];
        }

        v12 = [archivedAnswerChoiceItems countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }

    goto LABEL_18;
  }

LABEL_19:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    v8 = 1;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v8 &= [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:*(*(&v21 + 1) + 8 * j), v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  else
  {
    LOBYTE(v8) = 1;
  }

LABEL_29:
  return v8;
}

- (BOOL)_deleteWithPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  if ([payloadCopy hasStatus] && (objc_msgSend(payloadCopy, "status"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "code"), v6, v7 != 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    switch([payloadCopy type])
    {
      case 1u:
        break;
      case 2u:
        handout = [payloadCopy handout];
        objectId = [handout objectId];
        [(PDAbstractClassZoneOperation *)self deleteCollectionItemsWithReferenceObjectID:objectId];

        handout2 = [payloadCopy handout];
        objectId2 = [handout2 objectId];
        v13 = [(PDAbstractClassZoneOperation *)self deleteHandoutWithObjectID:objectId2 shouldDeleteDrafts:0];
        goto LABEL_44;
      case 3u:
        attachment = [payloadCopy attachment];
        handout2 = [attachment objectId];

        [(PDAbstractClassZoneOperation *)self _setAuthorizationForAttachmentWithObjectID:handout2 shouldAuthorize:0];
        v16 = [(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:handout2];
        goto LABEL_39;
      case 4u:
        v32 = objc_opt_class();
        recipient = [payloadCopy recipient];
        goto LABEL_31;
      case 6u:
        handout2 = [payloadCopy classInfo];
        objectId2 = [handout2 classId];
        v13 = [(PDAbstractClassZoneOperation *)self deleteClassWithObjectID:objectId2 deletePersons:0];
        goto LABEL_44;
      case 7u:
        v32 = objc_opt_class();
        handout2 = [payloadCopy person];
        personId = [handout2 personId];
        goto LABEL_32;
      case 8u:
        v32 = objc_opt_class();
        handout2 = [payloadCopy classMember];
        personId = [handout2 classMemberId];
        goto LABEL_32;
      case 0xFu:
        v32 = objc_opt_class();
        recipient = [payloadCopy asset];
LABEL_31:
        handout2 = recipient;
        personId = [recipient objectId];
        goto LABEL_32;
      case 0x11u:
        handout2 = [payloadCopy authStatus];
        v16 = [(PDAbstractClassZoneOperation *)self processAuthorizationStatus:handout2];
        goto LABEL_39;
      case 0x12u:
        handout2 = [payloadCopy completionStatus];
        v16 = [(PDAbstractClassZoneOperation *)self processCompletionStatus:handout2];
        goto LABEL_39;
      case 0x13u:
        handout2 = [payloadCopy stateChange];
        v16 = [(PDAbstractClassZoneOperation *)self _deleteStateChanges:handout2];
LABEL_39:
        v8 = v16;
        goto LABEL_45;
      case 0x14u:
        collection = [payloadCopy collection];
        handout2 = sub_10001D104(collection);

        v32 = objc_opt_class();
        personId = [handout2 objectID];
LABEL_32:
        objectId2 = personId;
        selfCopy3 = self;
        v43 = v32;
        goto LABEL_43;
      case 0x15u:
        v48 = payloadCopy;
        collectionItem = [payloadCopy collectionItem];
        v18 = sub_10001D7AC(collectionItem);

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = v18;
        v19 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v54;
          do
          {
            v22 = 0;
            v49 = v20;
            do
            {
              if (*v54 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v53 + 1) + 8 * v22);
              if ([v23 type] == 2)
              {
                selfCopy2 = self;
                database = [(PDOperation *)self database];
                v26 = objc_opt_new();
                v27 = objc_opt_class();
                referenceObjectID = [v23 referenceObjectID];
                v63[0] = referenceObjectID;
                v63[1] = &off_10021B630;
                v29 = [NSArray arrayWithObjects:v63 count:2];
                v51[0] = _NSConcreteStackBlock;
                v51[1] = 3221225472;
                v51[2] = sub_100064EDC;
                v51[3] = &unk_100203838;
                v30 = v26;
                v52 = v30;
                [database selectAll:v27 where:@"referenceObjectID = ? and type = ?" bindings:v29 block:v51];

                if ([v30 count])
                {
                  v31 = [PDDatabase whereSQLForArray:v30 prefix:@"objectID in "];
                  [database deleteAllWithoutTracking:objc_opt_class() where:v31 bindings:v30];
                }

                self = selfCopy2;
                v20 = v49;
              }

              v22 = v22 + 1;
            }

            while (v20 != v22);
            v20 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
          }

          while (v20);
        }

        v8 = 1;
        payloadCopy = v48;
        break;
      case 0x19u:
        survey = [payloadCopy survey];
        v15 = [(PDAbstractClassZoneOperation *)self _deleteSurvey:survey];
        goto LABEL_34;
      case 0x1Au:
        survey = [payloadCopy surveyStep];
        v15 = [(PDAbstractClassZoneOperation *)self _deleteSurveyStep:survey];
LABEL_34:
        v8 = v15;
        goto LABEL_36;
      case 0x1Bu:
        survey = [payloadCopy surveyStepAnswer];
        objectId3 = [survey objectId];
        v8 = [(PDAbstractClassZoneOperation *)self _deleteDraftAnswer:objectId3];

LABEL_36:
        break;
      case 0x1Eu:
        v45 = objc_opt_class();
        schedule = [payloadCopy schedule];
        goto LABEL_42;
      case 0x1Fu:
        v45 = objc_opt_class();
        schedule = [payloadCopy scheduledEvent];
LABEL_42:
        handout2 = schedule;
        objectId2 = [schedule objectId];
        selfCopy3 = self;
        v43 = v45;
LABEL_43:
        v13 = [(PDAbstractClassZoneOperation *)selfCopy3 _deleteEntity:v43 identity:objectId2];
LABEL_44:
        v8 = v13;

LABEL_45:
        break;
      default:
        CLSInitLog();
        logSubsystem = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_INFO))
        {
          v37 = objc_opt_class();
          operationID = [(PDURLRequestOperation *)self operationID];
          type = [payloadCopy type];
          if (type < 0x27 && ((0x7FFFFE91DFuLL >> type) & 1) != 0)
          {
            v40 = *(&off_1002038D0 + type);
          }

          else
          {
            v40 = [NSString stringWithFormat:@"(unknown: %i)", type];
          }

          *buf = 138543874;
          v58 = v37;
          v59 = 2114;
          v60 = operationID;
          v61 = 2114;
          v62 = v40;
          _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Unexpected payload type: %{public}@;", buf, 0x20u);
        }

        v8 = 1;
        break;
    }
  }

  return v8;
}

- (BOOL)deleteHandoutWithObjectID:(id)d shouldDeleteDrafts:(BOOL)drafts
{
  dCopy = d;
  database = [(PDOperation *)self database];
  if (!drafts)
  {
    v8 = [database select:objc_opt_class() identity:dCopy];
    v9 = v8;
    if (v8 && ![v8 state])
    {

      v11 = 1;
      goto LABEL_6;
    }
  }

  v14[0] = dCopy;
  v14[1] = &off_10021B648;
  v10 = [NSArray arrayWithObjects:v14 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000650C0;
  v13[3] = &unk_100203860;
  v13[4] = self;
  [database selectAll:objc_opt_class() where:@"parentObjectID = ? and type = ?" bindings:v10 block:v13];
  v11 = [(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:dCopy];

LABEL_6:
  return v11;
}

- (BOOL)deleteClassWithObjectID:(id)d deletePersons:(BOOL)persons
{
  personsCopy = persons;
  dCopy = d;
  database = [(PDOperation *)self database];
  v8 = database;
  if (personsCopy)
  {
    v9 = sub_1000765A0(database, dCopy);
    v10 = sub_1000711FC(v8);
    v11 = v10;
    if (v10)
    {
      objectID = [v10 objectID];

      if (objectID)
      {
        objectID2 = [v11 objectID];
        [v9 removeObject:objectID2];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = [(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:dCopy];
  if ((v14 & 1) == 0)
  {
    CLSInitLog();
    v15 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v24 = 138543618;
      v25 = objc_opt_class();
      v26 = 2114;
      v27 = dCopy;
      v17 = v25;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete class %{public}@", &v24, 0x16u);
    }
  }

  if (personsCopy && [v9 count])
  {
    v18 = [PDDatabase whereSQLForArray:v9 prefix:@"objectID in "];
    v14 = [v8 deleteAll:objc_opt_class() where:v18 bindings:v9];
    if ((v14 & 1) == 0)
    {
      CLSInitLog();
      v19 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = objc_opt_class();
        v24 = 138543618;
        v25 = v21;
        v26 = 2114;
        v27 = dCopy;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete persons in class %{public}@", &v24, 0x16u);
      }
    }
  }

  return v14;
}

- (BOOL)_deleteEntity:(Class)entity identity:(id)identity
{
  identityCopy = identity;
  database = [(PDOperation *)self database];
  v25 = identityCopy;
  v8 = [NSArray arrayWithObjects:&v25 count:1];
  identityColumnName = [(objc_class *)entity identityColumnName];
  v10 = [identityColumnName stringByAppendingString:@" = ?"];

  if (([database deleteAll:entity where:v10 bindings:v8] & 1) == 0)
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      operationID = [(PDURLRequestOperation *)self operationID];
      v17 = 138544130;
      v18 = v13;
      v19 = 2114;
      v20 = operationID;
      v21 = 2114;
      entityCopy = entity;
      v23 = 2112;
      v24 = identityCopy;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to delete %{public}@ %@.", &v17, 0x2Au);
    }

    goto LABEL_9;
  }

  if (!-[PDAbstractClassZoneOperation resolveMissingEntityWithObjectID:](self, "resolveMissingEntityWithObjectID:", identityCopy) || ![database deleteAll:objc_opt_class() where:@"entityIdentity = ?" bindings:v8] || !objc_msgSend(database, "deleteAll:where:bindings:", objc_opt_class(), @"objectID = ?", v8))
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  [database deleteAll:objc_opt_class() where:@"objectID = ?" bindings:v8];
  [database deleteAll:objc_opt_class() where:@"objectID = ?" bindings:v8];
  [database deleteAll:objc_opt_class() where:@"objectID = ?" bindings:v8];
  v11 = 1;
LABEL_10:

  return v11;
}

- (BOOL)_deleteDraftAnswer:(id)answer
{
  answerCopy = answer;
  [(PDOperation *)self database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006571C;
  v10 = v9[3] = &unk_100202140;
  v11 = answerCopy;
  v5 = answerCopy;
  v6 = v10;
  v7 = [v6 withSyncEnabled:v9];

  return v7;
}

- (BOOL)_deleteStateChanges:(id)changes
{
  changesCopy = changes;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  stateChangePayloads = [changesCopy stateChangePayloads];
  v6 = [stateChangePayloads countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(stateChangePayloads);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        targetObjectId = [changesCopy targetObjectId];
        targetOwnerPersonId = [changesCopy targetOwnerPersonId];
        v13 = +[CLSCollaborationState identifierForTargetObjectID:ownerPersonID:domain:](CLSCollaborationState, "identifierForTargetObjectID:ownerPersonID:domain:", targetObjectId, targetOwnerPersonId, [v10 domain]);

        [v4 addObject:v13];
      }

      v7 = [stateChangePayloads countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  database = [(PDOperation *)self database];
  if ([v4 count])
  {
    v15 = [PDDatabase whereSQLForArray:v4 prefix:@"objectID in "];
    v16 = [database deleteAll:objc_opt_class() where:v15 bindings:v4];
    if ((v16 & 1) == 0)
    {
      CLSInitLog();
      v17 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = objc_opt_class();
        *buf = 138543618;
        v28 = v19;
        v29 = 2114;
        v30 = changesCopy;
        v20 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete CLSCollaborationStateChanges in payload %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)_deleteSurvey:(id)survey
{
  surveyCopy = survey;
  objectId = [surveyCopy objectId];
  database = [(PDOperation *)self database];
  v7 = objc_opt_new();
  v8 = objc_opt_class();
  v37 = objectId;
  v9 = [NSArray arrayWithObjects:&v37 count:1];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100065E18;
  v29[3] = &unk_100203888;
  v10 = v7;
  v30 = v10;
  [database selectAll:v8 where:@"parentObjectID = ?" bindings:v9 block:v29];

  if ([v10 count])
  {
    v11 = [PDDatabase whereSQLForArray:v10 prefix:@"objectID in "];
    if (([database deleteAll:objc_opt_class() where:v11 bindings:v10] & 1) == 0)
    {
      CLSInitLog();
      v12 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = objc_opt_class();
        *buf = 138543618;
        v34 = v14;
        v35 = 2114;
        v36 = objectId;
        v15 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to manually delete survey questions %{public}@", buf, 0x16u);
      }
    }
  }

  v16 = objc_opt_class();
  v32 = objectId;
  v17 = [NSArray arrayWithObjects:&v32 count:1];
  LOBYTE(v16) = [database deleteAllWithoutTracking:v16 where:@"objectID = ?" bindings:v17];

  if ((v16 & 1) == 0)
  {
    CLSInitLog();
    v26 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v26;
      v27 = objc_opt_class();
      *buf = 138543618;
      v34 = v27;
      v35 = 2114;
      v36 = surveyCopy;
      v24 = v27;
      v25 = "%{public}@ failed to delete CLSSurvey in payload %{public}@";
      goto LABEL_12;
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v18 = objc_opt_class();
  v31 = objectId;
  v19 = 1;
  v20 = [NSArray arrayWithObjects:&v31 count:1];
  LOBYTE(v18) = [database deleteAllWithoutTracking:v18 where:@"surveyID = ?" bindings:v20];

  if ((v18 & 1) == 0)
  {
    CLSInitLog();
    v21 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = objc_opt_class();
      *buf = 138543618;
      v34 = v23;
      v35 = 2114;
      v36 = objectId;
      v24 = v23;
      v25 = "%{public}@ failed to delete answers associate with the survey %{public}@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v19;
}

- (BOOL)_deleteSurveyStep:(id)step
{
  stepCopy = step;
  objectId = [stepCopy objectId];
  database = [(PDOperation *)self database];
  if ([(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:objectId])
  {
    answerFormatObjectId = [stepCopy answerFormatObjectId];
    answerFormatType = [stepCopy answerFormatType];
    v36 = answerFormatObjectId;
    if (answerFormatType == 1 || answerFormatType == 3 || answerFormatType == 2)
    {
      if (![(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:answerFormatObjectId, answerFormatObjectId])
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v28 = v11;
          *buf = 138543618;
          v48 = objc_opt_class();
          v49 = 2114;
          v50 = answerFormatObjectId;
          v29 = v48;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@ failed to delete answer format %{public}@", buf, 0x16u);
        }

        v10 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      CLSInitLog();
      v12 = CLSLogHandout;
      if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unknown answer format type", buf, 2u);
      }
    }

    v10 = 1;
LABEL_16:
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v15 = objc_opt_class();
    v38 = objectId;
    v46 = objectId;
    v16 = [NSArray arrayWithObjects:&v46 count:1];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100066418;
    v43[3] = &unk_100202748;
    v17 = v13;
    v44 = v17;
    v18 = v14;
    v45 = v18;
    [database selectAll:v15 where:@"questionID = ?" bindings:v16 block:v43];

    if ([v18 count])
    {
      v19 = [PDDatabase whereSQLForArray:v18 prefix:@"objectID IN "];
      v10 = [database deleteAll:objc_opt_class() where:v19 bindings:v18];
      if ((v10 & 1) == 0)
      {
        CLSInitLog();
        v20 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v30 = v20;
          v31 = objc_opt_class();
          *buf = 138543618;
          v48 = v31;
          v49 = 2114;
          v50 = v18;
          v32 = v31;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@ failed to delete published answers associate with IDs %{public}@", buf, 0x16u);
        }
      }
    }

    if ([v17 count])
    {
      v21 = [PDDatabase whereSQLForArray:v17 prefix:@"objectID IN "];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000664AC;
      v39[3] = &unk_1002038B0;
      v40 = database;
      v22 = v21;
      v41 = v22;
      v23 = v17;
      v42 = v23;
      v10 = [v40 withSyncEnabled:v39];
      if ((v10 & 1) == 0)
      {
        CLSInitLog();
        v24 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v33 = v24;
          v34 = objc_opt_class();
          *buf = 138543618;
          v48 = v34;
          v49 = 2114;
          v50 = v23;
          v35 = v34;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@ failed to delete draft answers associate with IDs %{public}@", buf, 0x16u);
        }
      }
    }

    objectId = v38;
    goto LABEL_27;
  }

  CLSInitLog();
  v9 = CLSLogDatabase;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
  {
    v26 = v9;
    *buf = 138543618;
    v48 = objc_opt_class();
    v49 = 2114;
    v50 = stepCopy;
    v27 = v48;
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ failed to delete CLSQuestionStep in payload %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_27:

  return v10;
}

- (void)_setAuthorizationForAttachmentWithObjectID:(id)d shouldAuthorize:(BOOL)authorize
{
  authorizeCopy = authorize;
  dCopy = d;
  database = [(PDOperation *)self database];
  LOBYTE(authorizeCopy) = sub_10016032C(database, dCopy, authorizeCopy);

  if ((authorizeCopy & 1) == 0)
  {
    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      operationID = [(PDURLRequestOperation *)self operationID];
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = operationID;
      v16 = 2114;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to update authorization for attchment with objectID = %{public}@; - skipping authorization status.", &v12, 0x20u);
    }
  }
}

@end