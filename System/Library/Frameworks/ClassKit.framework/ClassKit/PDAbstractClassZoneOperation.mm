@interface PDAbstractClassZoneOperation
- (BOOL)_deleteDraftAnswer:(id)a3;
- (BOOL)_deleteEntity:(Class)a3 identity:(id)a4;
- (BOOL)_deleteStateChanges:(id)a3;
- (BOOL)_deleteSurvey:(id)a3;
- (BOOL)_deleteSurveyStep:(id)a3;
- (BOOL)_deleteWithPayload:(id)a3 error:(id *)a4;
- (BOOL)_insertOrUpdateArchivedHandout:(id)a3;
- (BOOL)_insertOrUpdateArchivedSurveyStep:(id)a3;
- (BOOL)_insertOrUpdateCollectionItem:(id)a3;
- (BOOL)_insertOrUpdateEntity:(id)a3;
- (BOOL)_insertOrUpdateSurveyAnswer:(id)a3;
- (BOOL)_insertOrUpdateSurveyStep:(id)a3;
- (BOOL)deleteClassWithObjectID:(id)a3 deletePersons:(BOOL)a4;
- (BOOL)deleteCollectionItemsWithReferenceObjectID:(id)a3;
- (BOOL)deleteHandoutWithObjectID:(id)a3 shouldDeleteDrafts:(BOOL)a4;
- (BOOL)parseStreamedResponse:(id)a3;
- (BOOL)processAttachment:(id)a3;
- (BOOL)processAuthorizationStatus:(id)a3;
- (BOOL)processCompletionStatus:(id)a3;
- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4;
- (BOOL)processPayloadStatus:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5;
- (BOOL)processPayloadWithinWriteTransaction:(id)a3 error:(id *)a4 stop:(BOOL *)a5;
- (BOOL)processPayloadsFromResponse:(id)a3 error:(id *)a4;
- (BOOL)processResponse:(id *)a3;
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (BOOL)processStateChange:(id)a3 error:(id *)a4;
- (BOOL)readStreamablePayload:(id)a3 reader:(id)a4 error:(id *)a5;
- (BOOL)resolveMissingEntityWithObjectID:(id)a3;
- (BOOL)updateCollectionItemsReferenceObjectID:(id)a3 toType:(int64_t)a4 andObjectID:(id)a5;
- (BOOL)validateStateChangePayload:(id)a3 error:(id *)a4;
- (id)_applyStateChangesToParentHandoutEntity:(id)a3;
- (void)_setAuthorizationForAttachmentWithObjectID:(id)a3 shouldAuthorize:(BOOL)a4;
- (void)logPayloadBeforeProcessing:(id)a3;
- (void)setCompletionAndLockedStatusForStateChange:(id)a3 andStateChangePayload:(id)a4 forAttachment:(id)a5;
- (void)setHandoutClosedStatusForStateChange:(id)a3 andStateChangePayload:(id)a4 forHandout:(id)a5;
@end

@implementation PDAbstractClassZoneOperation

- (BOOL)readStreamablePayload:(id)a3 reader:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(PDAbstractClassZoneOperation *)self streamablePayloadClass];
  if (objc_opt_isKindOfClass())
  {
    v10 = sub_100131A44(v8, v9);
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

    [NSError cls_assignError:a5 code:300 format:@"Cannot read streamed responses containing payloads of type '%@'!", objc_opt_class()];
    v10 = 0;
  }

  return v10;
}

- (BOOL)parseStreamedResponse:(id)a3
{
  v6.receiver = self;
  v6.super_class = PDAbstractClassZoneOperation;
  v4 = [(PDEndpointRequestOperation *)&v6 parseStreamedResponse:a3];
  if (BYTE2(self->super._responseStatusError) == 1)
  {
    v4 &= ![(PDAbstractClassZoneOperation *)self stopProcessingIfResponseStatusPayloadFailed];
  }

  return v4;
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(PDOperation *)self isAborted])
  {
    v7 = 0;
  }

  else
  {
    CLSInitLog();
    v8 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(PDURLRequestOperation *)self operationID];
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ processing response;", &v16, 0x16u);
    }

    v12 = [v6 payloads];
    v13 = [v12 count];
    v14 = [(PDURLRequestOperation *)self stats];
    if (v14)
    {
      v14[15] = v13;
    }

    v7 = [(PDAbstractClassZoneOperation *)self processPayloadsFromResponse:v12 error:a4];
  }

  return v7;
}

- (BOOL)processPayloadWithinWriteTransaction:(id)a3 error:(id *)a4 stop:(BOOL *)a5
{
  v8 = a3;
  if ([(PDOperation *)self isAborted])
  {
    LOBYTE(v9) = 0;
    *a5 = 1;
  }

  else
  {
    v10 = v8;
    v9 = [(PDAbstractClassZoneOperation *)self processPayloadFromResponse:v10 error:a4];
    v11 = [(PDURLRequestOperation *)self stats];
    sub_10009EB5C(v11, [v10 type], v9);

    if ((v9 & 1) == 0)
    {
      CLSInitLog();
      v12 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = v14;
        v16 = [(PDURLRequestOperation *)self operationID];
        v17 = *a4;
        v18 = 138543874;
        v19 = v14;
        v20 = 2114;
        v21 = v16;
        v22 = 2114;
        v23 = v17;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ failed to process payload: %{public}@", &v18, 0x20u);
      }
    }

    if (BYTE2(self->super._responseStatusError) == 1 && [(PDAbstractClassZoneOperation *)self stopProcessingIfResponseStatusPayloadFailed])
    {
      *a5 = 1;
      if (a4)
      {
        [(PDEndpointRequestOperation *)self setResponseStatusError:*a4];
      }

      LOBYTE(v9) = 0;
    }

    else if (a4)
    {
      *a4 = 0;
    }
  }

  return v9;
}

- (BOOL)processResponse:(id *)a3
{
  v11.receiver = self;
  v11.super_class = PDAbstractClassZoneOperation;
  v5 = [(PDEndpointRequestOperation *)&v11 processResponse:?];
  if (BYTE2(self->super._responseStatusError) == 1 && [(PDAbstractClassZoneOperation *)self stopProcessingIfResponseStatusPayloadFailed])
  {
    if (a3)
    {
      *a3 = [(PDEndpointRequestOperation *)self responseStatusError];
    }

    CLSInitLog();
    v6 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ response processing terminated by failed status.", buf, 0x16u);
    }

    return 0;
  }

  return v5;
}

- (BOOL)processPayloadsFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
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
    v8 = [(PDOperation *)self database];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100060358;
    v11[3] = &unk_100203110;
    v11[4] = self;
    v12 = v6;
    v13 = &v14;
    if (v8)
    {
      v7 = [v8 performTransaction:v11 forWriting:1];
    }

    else
    {
      v7 = 0;
    }

    v9 = v15[5];
    if (v9)
    {
      v7 = 0;
      if (a4)
      {
        *a4 = v9;
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

- (void)logPayloadBeforeProcessing:(id)a3
{
  v4 = a3;
  CLSInitLog();
  v5 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = [(PDURLRequestOperation *)self operationID];
    v8 = [v4 type];
    if (v8 < 0x27 && ((0x7FFFFE91DFuLL >> v8) & 1) != 0)
    {
      v9 = *(&off_1002038D0 + v8);
    }

    else
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", v8];
    }

    v10 = [v4 dictionaryRepresentation];
    *buf = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Processing payload type: %{public}@\n    payload: %@", buf, 0x2Au);
  }
}

- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(PDOperation *)self isAborted])
  {
LABEL_2:
    LOBYTE(v7) = 0;
    goto LABEL_19;
  }

  if (!-[PDAbstractClassZoneOperation acceptsPayloadType:](self, "acceptsPayloadType:", [v6 type]))
  {
    CLSInitLog();
    v8 = [(PDOperation *)self logSubsystem];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_18:

      LOBYTE(v7) = 1;
      goto LABEL_19;
    }

    v9 = objc_opt_class();
    v10 = [(PDURLRequestOperation *)self operationID];
    v11 = [v6 type];
    if (v11 < 0x27 && ((0x7FFFFE91DFuLL >> v11) & 1) != 0)
    {
      v12 = *(&off_1002038D0 + v11);
    }

    else
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", v11];
    }

    *buf = 138543874;
    v77 = v9;
    v78 = 2114;
    v79 = v10;
    v80 = 2114;
    v81 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Ignoring payload type: %{public}@", buf, 0x20u);

LABEL_16:
    goto LABEL_18;
  }

  [(PDAbstractClassZoneOperation *)self logPayloadBeforeProcessing:v6];
  if ([v6 type] == 1)
  {
    LOBYTE(v7) = 1;
    if ([(PDAbstractClassZoneOperation *)self processPayloadStatus:v6 allowMixedResponse:[(PDAbstractClassZoneOperation *)self allowMixedResponseStatusCode] error:a4])
    {
      goto LABEL_19;
    }

    BYTE2(self->super._responseStatusError) = 1;
    goto LABEL_2;
  }

  if (![v6 action])
  {
    CLSInitLog();
    v8 = [(PDOperation *)self logSubsystem];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v19 = objc_opt_class();
    v9 = v19;
    v10 = [(PDURLRequestOperation *)self operationID];
    v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 action]);
    v21 = [v6 dictionaryRepresentation];
    *buf = 138544130;
    v77 = v19;
    v78 = 2114;
    v79 = v10;
    v80 = 2114;
    v81 = v20;
    v82 = 2112;
    v83 = v21;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ unknown action: %{public}@; payload: %@", buf, 0x2Au);

    goto LABEL_16;
  }

  if ([v6 action] == 3)
  {
    LOBYTE(v7) = [(PDAbstractClassZoneOperation *)self _deleteWithPayload:v6 error:a4];
    goto LABEL_19;
  }

  if (-[PDAbstractClassZoneOperation allowMixedResponseStatusCode](self, "allowMixedResponseStatusCode") && [v6 hasStatus] && !-[PDAbstractClassZoneOperation processPayloadStatus:allowMixedResponse:error:](self, "processPayloadStatus:allowMixedResponse:error:", v6, 0, a4))
  {
    goto LABEL_2;
  }

  v14 = [(PDOperation *)self database];
  v15 = *a4;
  v16 = objc_autoreleasePoolPush();
  switch([v6 type])
  {
    case 2u:
      v7 = [v6 handout];
      v17 = sub_1000192B0(v7);

      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_100061610;
      v73[3] = &unk_100202140;
      v73[4] = self;
      v74 = v17;
      v18 = v17;
      [v14 withSyncEnabled:v73];
      LOBYTE(v7) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v18];

      goto LABEL_77;
    case 3u:
      v18 = [v6 attachment];
      v31 = [(PDAbstractClassZoneOperation *)self processAttachment:v18];
      goto LABEL_76;
    case 4u:
      v7 = [v6 recipient];
      v18 = sub_100019E08(v7);

      LODWORD(v7) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v18];
      if (!v7)
      {
        goto LABEL_77;
      }

      v33 = [v18 personID];
      v34 = objc_opt_class();
      v35 = [v18 objectID];
      [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v33 forClass:v34 fromEntityWithID:v35 withClass:objc_opt_class()];

      v24 = [v18 classID];
      v36 = objc_opt_class();
      v37 = [v18 objectID];
      [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v24 forClass:v36 fromEntityWithID:v37 withClass:objc_opt_class()];

      goto LABEL_82;
    case 6u:
      v22 = [v6 classInfo];
      v23 = sub_1000851D4(v22);
      goto LABEL_75;
    case 7u:
      v22 = [v6 person];
      v23 = sub_1000847C8(v22);
      goto LABEL_75;
    case 8u:
      v22 = [v6 classMember];
      v23 = sub_100085548(v22);
      goto LABEL_75;
    case 0xFu:
      v7 = [v6 asset];
      v42 = sub_10001E8EC(v7, v14);

      LODWORD(v7) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v42];
      if (!v7)
      {
        goto LABEL_90;
      }

      v43 = [v42 parentEntityClass];
      if (v43)
      {
        v44 = v43;
        v45 = [v42 parentObjectID];
        [v42 objectID];
        v46 = v66 = v42;
        [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v45 forClass:v44 fromEntityWithID:v46 withClass:objc_opt_class()];

        v42 = v66;
      }

      if ([v42 type] != 3)
      {
        goto LABEL_90;
      }

      if (sub_10015D3C8(v14, v42))
      {
        CLSInitLog();
        v47 = [(PDOperation *)self logSubsystem];
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
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
        sub_10012E18C(PDFileSyncManager, v42, v14);
        CLSInitLog();
        v47 = [(PDOperation *)self logSubsystem];
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
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

      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, v51, buf, 0x16u);

      v42 = v49;
LABEL_89:

LABEL_90:
      goto LABEL_78;
    case 0x11u:
      v18 = [v6 authStatus];
      v31 = [(PDAbstractClassZoneOperation *)self processAuthorizationStatus:v18];
      goto LABEL_76;
    case 0x12u:
      v18 = [v6 completionStatus];
      v31 = [(PDAbstractClassZoneOperation *)self processCompletionStatus:v18];
      goto LABEL_76;
    case 0x13u:
      v60 = [v6 stateChange];
      v72 = v15;
      LOBYTE(v7) = [(PDAbstractClassZoneOperation *)self processStateChange:v60 error:&v72];
      v61 = v72;

      v15 = v61;
      goto LABEL_78;
    case 0x14u:
      v27 = [v6 collection];
      v18 = sub_10001D104(v27);

      v28 = objc_opt_class();
      v29 = [v18 objectID];
      v24 = [v14 select:v28 identity:v29];

      if (v24 && ([v18 isEqual:v24] & 1) != 0)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v18];
      }

      goto LABEL_82;
    case 0x15u:
      v18 = [v6 collectionItem];
      sub_10001D7AC(v18);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v24 = v71 = 0u;
      v38 = [v24 countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (!v38)
      {
        goto LABEL_47;
      }

      v39 = v38;
      v40 = *v69;
      break;
    case 0x16u:
      v30 = [v6 handout];
      v18 = sub_10001D9F0(v30);

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateArchivedHandout:v18];
      goto LABEL_76;
    case 0x17u:
      v22 = [v6 attachment];
      v23 = sub_10001DBAC(v22);
      goto LABEL_75;
    case 0x18u:
      v52 = [v6 asset];
      v18 = sub_10001DF68(v52, v14);

      v7 = objc_opt_class();
      v53 = [v18 objectID];
      v54 = [v14 entityExistsByClass:v7 identity:v53];

      LODWORD(v7) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v18];
      if (v7 && (v54 & 1) == 0 && [v18 type] == 3)
      {
        sub_10012E18C(PDFileSyncManager, v18, v14);
      }

      goto LABEL_77;
    case 0x19u:
      if ([v6 action] == 4)
      {
        v55 = [v6 survey];
        [(PDAbstractClassZoneOperation *)self _deleteSurvey:v55];
      }

      v22 = [v6 survey];
      v23 = sub_10001BA94(v22);
      goto LABEL_75;
    case 0x1Au:
      v63 = [v6 surveyStep];
      v18 = sub_10001C3C0(v63);

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateSurveyStep:v18];
      goto LABEL_76;
    case 0x1Bu:
      v62 = [v6 surveyStepAnswer];
      v18 = sub_10001B6E8(v62);

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateSurveyAnswer:v18];
      goto LABEL_76;
    case 0x1Cu:
      v22 = [v6 survey];
      v23 = sub_10001BC8C(v22);
      goto LABEL_75;
    case 0x1Du:
      v32 = [v6 surveyStep];
      v18 = sub_10001C8D4(v32);

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateArchivedSurveyStep:v18];
      goto LABEL_76;
    case 0x1Eu:
      v22 = [v6 schedule];
      v23 = sub_1000200F0(v22);
LABEL_75:
      v18 = v23;

      v31 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v18];
LABEL_76:
      LOBYTE(v7) = v31;
      goto LABEL_77;
    case 0x1Fu:
      v7 = [v6 scheduledEvent];
      v18 = sub_1000203D4(v7);

      LOBYTE(v7) = [v14 insertOrUpdateObject:v18];
      if (v7)
      {
        goto LABEL_77;
      }

      CLSInitLog();
      v24 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v65 = v25;
        v26 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v77 = v25;
        v78 = 2114;
        v79 = v26;
        v80 = 2114;
        v81 = v18;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to insert %{public}@.", buf, 0x20u);
      }

      goto LABEL_82;
    default:
      CLSInitLog();
      v7 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v56 = objc_opt_class();
        v57 = [(PDURLRequestOperation *)self operationID];
        v58 = [v6 type];
        if (v58 < 0x27 && ((0x7FFFFE91DFuLL >> v58) & 1) != 0)
        {
          v59 = *(&off_1002038D0 + v58);
        }

        else
        {
          v59 = [NSString stringWithFormat:@"(unknown: %i)", v58];
        }

        *buf = 138543874;
        v77 = v56;
        v78 = 2114;
        v79 = v57;
        v80 = 2114;
        v81 = v59;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Unexpected payload type: %{public}@;", buf, 0x20u);
      }

      LOBYTE(v7) = 1;
      goto LABEL_78;
  }

  while (2)
  {
    for (i = 0; i != v39; i = i + 1)
    {
      if (*v69 != v40)
      {
        objc_enumerationMutation(v24);
      }

      if (![(PDAbstractClassZoneOperation *)self _insertOrUpdateCollectionItem:*(*(&v68 + 1) + 8 * i)])
      {
        LOBYTE(v7) = 0;
        goto LABEL_81;
      }
    }

    v39 = [v24 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v39)
    {
      continue;
    }

    break;
  }

LABEL_47:
  LOBYTE(v7) = 1;
LABEL_81:

LABEL_82:
LABEL_77:

LABEL_78:
  objc_autoreleasePoolPop(v16);

LABEL_19:
  return v7;
}

- (BOOL)_insertOrUpdateSurveyAnswer:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = objc_opt_class();
  v7 = [v4 objectID];
  v8 = [v5 select:v6 identity:v7];

  if (!v8 || [v8 state] != 1)
  {
    goto LABEL_6;
  }

  v9 = [v8 dateLastModified];
  v10 = [v4 dateLastModified];
  v11 = sub_1000F1454(v9, v10, 5.0);

  if (v11 != 1)
  {
    v13 = [v8 objectID];
    [(PDAbstractClassZoneOperation *)self _deleteDraftAnswer:v13];

LABEL_6:
    v12 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v4];
    goto LABEL_7;
  }

  v12 = 1;
LABEL_7:

  return v12;
}

- (BOOL)_insertOrUpdateArchivedHandout:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = sub_10001D4FC(v5);
  v7 = [v4 objectID];
  [(PDAbstractClassZoneOperation *)self updateCollectionItemsReferenceObjectID:v6 toType:2 andObjectID:v7];

  LOBYTE(self) = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v4];
  return self;
}

- (BOOL)updateCollectionItemsReferenceObjectID:(id)a3 toType:(int64_t)a4 andObjectID:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(PDOperation *)self database];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000619C4;
  v18 = v17[3] = &unk_1002037E8;
  v19 = v8;
  v20 = v9;
  v21 = a4;
  v10 = v9;
  v11 = v8;
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

- (BOOL)deleteCollectionItemsWithReferenceObjectID:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = objc_opt_class();
  v9 = v4;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  LOBYTE(v6) = [v5 deleteAll:v6 where:@"referenceObjectID = ?" bindings:v7];
  return v6;
}

- (BOOL)processPayloadStatus:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5
{
  v8 = [a3 status];
  if ([v8 hasInternalMessage])
  {
    CLSInitLog();
    v9 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v25 = v17;
      v18 = [(PDURLRequestOperation *)self operationID];
      v19 = [v8 code];
      v20 = [v8 message];
      v21 = [v8 internalMessage];
      *buf = 138544386;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      v30 = 1024;
      *v31 = v19;
      *&v31[4] = 2112;
      *&v31[6] = v20;
      v32 = 2112;
      v33 = v21;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
    }
  }

  v10 = sub_100105CA4(v8);
  [(PDEndpointRequestOperation *)self handleServerAlerts:v10];

  if (-[PDAbstractClassZoneOperation shouldProcessPayloadWithStatusCode:](self, "shouldProcessPayloadWithStatusCode:", [v8 code]) || (sub_1001055FC(v8, a4), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = 1;
  }

  else
  {
    v12 = v11;
    [(PDEndpointRequestOperation *)self setResponseStatusError:v11];
    if (a5)
    {
      v13 = v12;
      *a5 = v12;
    }

    CLSInitLog();
    v14 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v27 = v22;
      v28 = 2114;
      v29 = v24;
      v30 = 2114;
      *v31 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ assignment request errored: %{public}@;", buf, 0x20u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)processAttachment:(id)a3
{
  v4 = a3;
  v5 = sub_1000196F4(v4);
  if (v5)
  {
    v6 = [(PDOperation *)self database];
    v7 = objc_opt_class();
    v8 = [v4 objectId];
    v9 = [v6 select:v7 identity:v8];

    if (v9)
    {
      [v5 setCompletionStatus:{objc_msgSend(v9, "completionStatus")}];
    }
  }

  v10 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v5];

  return v10;
}

- (BOOL)processAuthorizationStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 parentObjectId];
  if (v5)
  {
    -[PDAbstractClassZoneOperation _setAuthorizationForAttachmentWithObjectID:shouldAuthorize:](self, "_setAuthorizationForAttachmentWithObjectID:shouldAuthorize:", v5, [v4 isAuthorizable]);
  }

  else
  {
    CLSInitLog();
    v6 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [(PDURLRequestOperation *)self operationID];
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Invalid authorization status payload! Payload: %@ - missing parentObjectId.", &v11, 0x20u);
    }
  }

  return 1;
}

- (BOOL)processCompletionStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 parentObjectId];
  if (v5)
  {
    v6 = [(PDOperation *)self database];
    v7 = [v6 select:objc_opt_class() identity:v5];
    if (v7)
    {
      if (![v4 hasStatus])
      {
LABEL_15:
        v13 = 0;
        goto LABEL_16;
      }

      v25 = sub_10001E418([v4 status]);
      v8 = [v7 isLocked];
      v9 = [v4 dateLastCompleted];
      v10 = sub_1001043D0(v9);
      v11 = [v4 dateLastModified];
      v12 = sub_1001043D0(v11);
      LOBYTE(v8) = [(PDAbstractClassZoneOperation *)self setCompletionStatus:v25 forAttachment:v7 locked:v8 dateCompleted:v10 dateModified:v12];

      if (v8)
      {
        v13 = 1;
LABEL_16:

        goto LABEL_17;
      }

      CLSInitLog();
      v14 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = v22;
        v24 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v27 = v22;
        v28 = 2114;
        v29 = v24;
        v30 = 2114;
        v31 = v5;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Failed to update completion status of handout attachment with objectID = %{public}@;.", buf, 0x20u);
      }
    }

    else
    {
      CLSInitLog();
      v14 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = v19;
        v21 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v27 = v19;
        v28 = 2114;
        v29 = v21;
        v30 = 2114;
        v31 = v5;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Failed to find handout attachment with objectID = %{public}@;.", buf, 0x20u);
      }
    }

    goto LABEL_15;
  }

  CLSInitLog();
  v6 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = [(PDURLRequestOperation *)self operationID];
    *buf = 138543874;
    v27 = v16;
    v28 = 2114;
    v29 = v18;
    v30 = 2112;
    v31 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Invalid completion status payload! Payload: %@ - missing parentObjectId.", buf, 0x20u);
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (BOOL)processStateChange:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(PDAbstractClassZoneOperation *)self validateStateChangePayload:v6 error:a4])
  {
    v7 = [(PDOperation *)self database];
    v8 = sub_10001A6C0(v6);
    v9 = [NSMutableArray arrayWithArray:v8];
    v10 = +[PDUserDefaults sharedDefaults];
    v11 = [v10 enableVerboseLogging];

    v46 = v9;
    if (v11)
    {
      v43 = v6;
      v44 = a4;
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
        v49 = v7;
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
            v19 = [v17 objectID];
            v20 = [v7 select:v18 identity:v19];

            CLSInitLog();
            v21 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v23 = objc_opt_class();
              v47 = v23;
              v24 = [(PDURLRequestOperation *)self operationID];
              v25 = [v20 dictionaryRepresentation];
              *buf = 138543874;
              v56 = v23;
              v57 = 2114;
              v58 = v24;
              v59 = 2112;
              v60 = v25;
              _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Updating state old: %@", buf, 0x20u);

              v12 = v48;
              v7 = v49;
            }

            CLSInitLog();
            v22 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v26 = objc_opt_class();
              v27 = v26;
              v28 = [(PDURLRequestOperation *)self operationID];
              v29 = [v17 dictionaryRepresentation];
              *buf = 138543874;
              v56 = v26;
              v12 = v48;
              v57 = 2114;
              v58 = v28;
              v59 = 2112;
              v60 = v29;
              _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Updating state new: %@", buf, 0x20u);

              v7 = v49;
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v14);
      }

      v6 = v43;
      a4 = v44;
      v8 = v42;
      v9 = v46;
    }

    v30 = [(PDAbstractClassZoneOperation *)self _applyStateChangesToParentHandoutEntity:v6];
    if (v30)
    {
      [v9 addObject:v30];
    }

    v31 = [v7 insertOrUpdateObjects:v9];
    if ((v31 & 1) == 0)
    {
      CLSInitLog();
      v32 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v45 = a4;
        v34 = v33;
        v35 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v56 = v33;
        v57 = 2114;
        v58 = v35;
        v59 = 2112;
        v60 = v6;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to save state changes for payload: %@", buf, 0x20u);

        a4 = v45;
      }

      v36 = objc_opt_class();
      v37 = [(PDURLRequestOperation *)self operationID];
      [NSError cls_assignError:a4 code:308 format:@"%@: %@ Failed to save state changes for payload: %@", v36, v37, v6];

      v9 = v46;
    }
  }

  else
  {
    CLSInitLog();
    v7 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v39 = v38;
      v40 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v56 = v38;
      v57 = 2114;
      v58 = v40;
      v59 = 2112;
      v60 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Skipping invalid payload: %@", buf, 0x20u);
    }

    v31 = 0;
  }

  return v31;
}

- (BOOL)validateStateChangePayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (([v6 hasTargetObjectId] & 1) == 0)
  {
    CLSInitLog();
    v59 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = v60;
      [(PDURLRequestOperation *)self operationID];
      v63 = v62 = v6;
      *buf = 138543618;
      v106 = v60;
      v107 = 2114;
      v108 = v63;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid state change (missing targetObjectID).", buf, 0x16u);

      v6 = v62;
    }

    v64 = objc_opt_class();
    v14 = [(PDURLRequestOperation *)self operationID];
    [NSError cls_assignError:a4 code:308 format:@"%@: %@ Invalid state change (missing targetObjectID).", v64, v14];
    goto LABEL_50;
  }

  if (([v6 hasTargetEntityName] & 1) == 0)
  {
    CLSInitLog();
    v65 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = objc_opt_class();
      v67 = v66;
      [(PDURLRequestOperation *)self operationID];
      v69 = v68 = v6;
      v70 = [v68 targetObjectId];
      *buf = 138543874;
      v106 = v66;
      v107 = 2114;
      v108 = v69;
      v109 = 2112;
      v110 = v70;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid state change (missing targetEntityName for targetObjectID %@).", buf, 0x20u);

      v6 = v68;
    }

    v71 = objc_opt_class();
    v14 = [(PDURLRequestOperation *)self operationID];
    v72 = [v6 targetObjectId];
    [NSError cls_assignError:a4 code:308 format:@"%@: %@ Invalid state change (missing targetEntityName for targetObjectID %@).", v71, v14, v72];
    goto LABEL_49;
  }

  if (([v6 hasTargetOwnerPersonId] & 1) == 0)
  {
    CLSInitLog();
    v73 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = objc_opt_class();
      v75 = v74;
      [(PDURLRequestOperation *)self operationID];
      v77 = v76 = v6;
      v78 = [v76 targetObjectId];
      *buf = 138543874;
      v106 = v74;
      v107 = 2114;
      v108 = v77;
      v109 = 2112;
      v110 = v78;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid state change (missing targetOwnerPersonID for targetObjectID %@).", buf, 0x20u);

      v6 = v76;
    }

    v79 = objc_opt_class();
    v14 = [(PDURLRequestOperation *)self operationID];
    v72 = [v6 targetObjectId];
    [NSError cls_assignError:a4 code:308 format:@"%@: %@ Invalid state change (missing targetOwnerPersonID for targetObjectID %@).", v79, v14, v72];
    goto LABEL_49;
  }

  v7 = [v6 stateChangePayloads];
  v8 = [v7 count];

  if (!v8)
  {
    CLSInitLog();
    v86 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v87 = objc_opt_class();
      v88 = v87;
      [(PDURLRequestOperation *)self operationID];
      v90 = v89 = v6;
      v91 = [v89 targetObjectId];
      *buf = 138543874;
      v106 = v87;
      v107 = 2114;
      v108 = v90;
      v109 = 2112;
      v110 = v91;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid state change (empty stateChangePayloads for targetObjectID %@).", buf, 0x20u);

      v6 = v89;
    }

    v92 = objc_opt_class();
    v14 = [(PDURLRequestOperation *)self operationID];
    v72 = [v6 targetObjectId];
    [NSError cls_assignError:a4 code:308 format:@"%@: %@ Invalid state change (empty stateChangePayloads for targetObjectID %@).", v92, v14, v72];
LABEL_49:

LABEL_50:
    v58 = 0;
    goto LABEL_51;
  }

  v9 = [v6 targetObjectId];
  v10 = [v6 targetOwnerPersonId];
  [v6 stateChangePayloads];
  v11 = v96 = v6;
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = &CLSLogAsset_ptr;
  v14 = +[CLSCollaborationState identifierForTargetObjectID:ownerPersonID:domain:](CLSCollaborationState, "identifierForTargetObjectID:ownerPersonID:domain:", v9, v10, [v12 domain]);

  v6 = v96;
  if ([v96 hasTargetClassId])
  {
    v15 = [v96 targetClassId];
    v16 = objc_opt_class();
    LODWORD(v16) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v15 forClass:v16 fromEntityWithID:v14 withClass:objc_opt_class()];

    if (v16)
    {
      CLSInitLog();
      v17 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [(PDURLRequestOperation *)self operationID];
        v21 = [v96 targetClassId];
        *buf = 138543874;
        v106 = v18;
        v107 = 2114;
        v108 = v20;
        v109 = 2112;
        v110 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ State change missing reference (targetClassId '%@' is not in roster).", buf, 0x20u);

        v6 = v96;
      }
    }
  }

  v22 = [v6 targetOwnerPersonId];
  v23 = objc_opt_class();
  LODWORD(v23) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v22 forClass:v23 fromEntityWithID:v14 withClass:objc_opt_class()];

  if (v23)
  {
    CLSInitLog();
    v24 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = v25;
      v27 = [(PDURLRequestOperation *)self operationID];
      v28 = [v96 targetOwnerPersonId];
      *buf = 138543874;
      v106 = v25;
      v107 = 2114;
      v108 = v27;
      v109 = 2112;
      v110 = v28;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ State change missing reference. (ownerPersonID '%@' is not in roster).", buf, 0x20u);

      v6 = v96;
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = [v6 stateChangePayloads];
  v99 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
  if (v99)
  {
    v94 = a4;
    v95 = v14;
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
        v32 = [v6 targetObjectId];
        v33 = [v6 targetOwnerPersonId];
        v34 = [v31 identifierForTargetObjectID:v32 ownerPersonID:v33 domain:{objc_msgSend(v30, "domain")}];

        if (([v30 hasParticipants] & 1) == 0)
        {
          CLSInitLog();
          v80 = [(PDOperation *)self logSubsystem];
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v81 = objc_opt_class();
            v82 = v81;
            v83 = [(PDURLRequestOperation *)self operationID];
            *buf = 138543874;
            v106 = v81;
            v107 = 2114;
            v108 = v83;
            v109 = 2112;
            v110 = v30;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Invalid stateChangePayload (missing participants) %@", buf, 0x20u);
          }

          v84 = objc_opt_class();
          v85 = [(PDURLRequestOperation *)self operationID];
          [NSError cls_assignError:v94 code:308 format:@"%@: %@ Invalid stateChangePayload (missing participants) %@", v84, v85, v30];

          v58 = 0;
          v6 = v96;
          goto LABEL_45;
        }

        v35 = [v30 participants];
        v36 = [v35 senderPersonId];

        if (v36)
        {
          v37 = [v30 participants];
          v38 = [v37 senderPersonId];
          v39 = objc_opt_class();
          v40 = v13[75];
          LODWORD(v39) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v38 forClass:v39 fromEntityWithID:v34 withClass:objc_opt_class()];

          if (v39)
          {
            CLSInitLog();
            v41 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = objc_opt_class();
              v43 = v42;
              v44 = [(PDURLRequestOperation *)self operationID];
              v45 = [v30 participants];
              v46 = [v45 senderPersonId];
              *buf = 138543874;
              v106 = v42;
              v107 = 2114;
              v108 = v44;
              v109 = 2112;
              v110 = v46;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ State change missing reference. (senderPersonId '%@' is not in roster).", buf, 0x20u);

              v6 = v96;
            }
          }
        }

        v47 = [v30 participants];
        v48 = [v47 recipientPersonId];

        if (v48)
        {
          v49 = [v30 participants];
          v50 = [v49 recipientPersonId];
          v51 = objc_opt_class();
          LODWORD(v51) = [(PDEndpointRequestOperation *)self checkForMissingEntityWithObjectID:v50 forClass:v51 fromEntityWithID:v34 withClass:objc_opt_class()];

          if (v51)
          {
            CLSInitLog();
            v52 = [(PDOperation *)self logSubsystem];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = objc_opt_class();
              v54 = v53;
              v55 = [(PDURLRequestOperation *)self operationID];
              v56 = [v30 participants];
              v57 = [v56 recipientPersonId];
              *buf = 138543874;
              v106 = v53;
              v107 = 2114;
              v108 = v55;
              v109 = 2112;
              v110 = v57;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ State change missing reference. (recipientPersonId '%@' is not in roster).", buf, 0x20u);

              v6 = v96;
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
    v14 = v95;
  }

  else
  {
    v58 = 1;
  }

LABEL_51:
  return v58;
}

- (BOOL)resolveMissingEntityWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = objc_opt_class();
  v9 = v4;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  LOBYTE(v6) = [v5 deleteAll:v6 where:@"entityID = ?" bindings:v7];
  return v6;
}

- (id)_applyStateChangesToParentHandoutEntity:(id)a3
{
  v4 = a3;
  v40 = [(PDOperation *)self database];
  v5 = sub_1000711FC(v40);
  v6 = [v5 objectID];

  if (!v6)
  {
    CLSInitLog();
    v11 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v35 = objc_opt_class();
      v36 = v35;
      v37 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v48 = v35;
      v49 = 2114;
      v50 = v37;
      v51 = 2112;
      v52 = v4;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ No currentUser. Not applying changes to parent entity for payload: %@", buf, 0x20u);
    }

    v12 = 0;
    goto LABEL_39;
  }

  v7 = [v4 targetEntityName];
  v8 = sub_100104ED0(v7);

  if (v8 == objc_opt_class())
  {
    v13 = objc_opt_class();
    v14 = [v4 targetObjectId];
    v15 = [v40 select:v13 identity:v14];
    v9 = 0;
    v10 = v15;
LABEL_10:

    [v4 targetOwnerPersonId];
    goto LABEL_11;
  }

  if (v8 == objc_opt_class())
  {
    v16 = objc_opt_class();
    v14 = [v4 targetObjectId];
    v15 = [v40 select:v16 identity:v14];
    v10 = 0;
    v9 = v15;
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  [v4 targetOwnerPersonId];
  v17 = LABEL_11:;
  v39 = v6;
  v41 = self;
  if (v17)
  {
    v18 = [v4 targetOwnerPersonId];
    v19 = [v6 isEqualToString:v18];
  }

  else
  {
    v19 = 0;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = v4;
  v21 = [v4 stateChangePayloads];
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v42 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        v29 = [v27 domain];
        if (v29 == 1)
        {
          if (v10)
          {
            [(PDAbstractClassZoneOperation *)v41 setCompletionAndLockedStatusForStateChange:v20 andStateChangePayload:v27 forAttachment:v10];
          }
        }

        else if (v29 == 5)
        {
          if (v9)
          {
            [(PDAbstractClassZoneOperation *)v41 setHandoutClosedStatusForStateChange:v20 andStateChangePayload:v27 forHandout:v9];
          }
        }

        else if (v29 == 3 && v25 != 0)
        {
          if ([v27 state] == 1)
          {
            v31 = v40;
            v32 = v10;
            v33 = 0;
          }

          else
          {
            if ([v27 state] != 2)
            {
              goto LABEL_36;
            }

            v31 = v40;
            v32 = v10;
            v33 = 1;
          }

          sub_100160444(v31, v32, v33);
        }

LABEL_36:
        objc_autoreleasePoolPop(v28);
      }

      v23 = [v21 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v23);
  }

  v11 = v38;
  v12 = v11;
  v4 = v20;
  v6 = v39;
LABEL_39:

  return v12;
}

- (void)setCompletionAndLockedStatusForStateChange:(id)a3 andStateChangePayload:(id)a4 forAttachment:(id)a5
{
  v24 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 isComplete];
  v10 = [v8 completionStatus] == 1 || objc_msgSend(v8, "completionStatus") == 2;
  if ([v7 state] == 5)
  {
    v11 = [v7 flags];
    objc_opt_self();
    v12 = (v11 & 0x11) != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 state];
  objc_opt_self();
  v14 = v13 == 2 || v12;
  v15 = ([v7 flags] >> 2) & 1;
  v16 = [v7 state];
  v17 = [v7 state];
  [v8 setLocked:v15];
  if (v17 && (((v9 ^ v14 | v10) & 1) != 0 || v16 == 4))
  {
    v18 = [v7 state];
    objc_opt_self();
    v19 = v18 > 5 ? 3 : dword_1001A8490[v18];
    [v8 setCompletionStatus:v19];
    if (v14)
    {
      if ([v24 hasDateLastModified])
      {
        v20 = [v24 dateLastModified];
        v21 = sub_1001043D0(v20);
        [v8 setDateLastCompleted:v21];
      }

      else
      {
        v20 = +[NSDate date];
        [v8 setDateLastCompleted:v20];
      }
    }
  }

  if ([v24 hasDateLastModified])
  {
    v22 = [v24 dateLastModified];
    v23 = sub_1001043D0(v22);
    [v8 setDateLastModified:v23];
  }
}

- (void)setHandoutClosedStatusForStateChange:(id)a3 andStateChangePayload:(id)a4 forHandout:(id)a5
{
  v6 = a5;
  [v6 setReviewed:{objc_msgSend(a4, "state") == 2}];
}

- (BOOL)_insertOrUpdateEntity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PDOperation *)self database];
    if ([v5 insertOrUpdateObject:v4])
    {
      v6 = [v4 objectID];
      v7 = [(PDAbstractClassZoneOperation *)self resolveMissingEntityWithObjectID:v6];
    }

    else
    {
      CLSInitLog();
      v8 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = [(PDURLRequestOperation *)self operationID];
        v13 = 138543874;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2114;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to insert %{public}@.", &v13, 0x20u);
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

- (BOOL)_insertOrUpdateCollectionItem:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = objc_opt_class();
  v7 = [v4 parentObjectID];
  v14[0] = v7;
  v8 = [v4 referenceObjectID];
  v14[1] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [v5 select:v6 where:@"parentObjectID = ? AND referenceObjectID = ?" bindings:v9];

  if (v10 && ([v10 objectID], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObjectID:", v11), v11, (objc_msgSend(v4, "isEqual:", v10) & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    v12 = [(PDAbstractClassZoneOperation *)self _insertOrUpdateEntity:v4];
  }

  return v12;
}

- (BOOL)_insertOrUpdateSurveyStep:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v9) = 1;
    goto LABEL_30;
  }

  v6 = v4;
  v7 = objc_opt_new();
  [v7 addObject:v6];
  v8 = [v6 questionType];
  v33 = v5;
  if (v8 <= 2)
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_20;
      }

LABEL_9:
      context = objc_autoreleasePoolPush();
      v10 = objc_opt_new();
      v11 = [v6 answerFormat];
      [v7 addObject:v11];
      v12 = objc_opt_class();
      v13 = [v11 objectID];
      v46 = v13;
      v14 = [NSArray arrayWithObjects:&v46 count:1];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100064464;
      v42[3] = &unk_100203810;
      v15 = v10;
      v43 = v15;
      [v5 selectAll:v12 where:@"parentObjectID = ?" bindings:v14 block:v42];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = v11;
      v16 = [v11 answerChoiceItems];
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v45 count:16];
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
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            [v7 addObject:v21];
            v22 = [v21 objectID];
            [v15 removeObject:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v38 objects:v45 count:16];
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

  if (v8 == 3)
  {
LABEL_19:
    v24 = [v6 answerFormat];
    [v7 addObject:v24];

    goto LABEL_20;
  }

  if (v8 == 4)
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

  v5 = v33;
LABEL_30:

  return v9;
}

- (BOOL)_insertOrUpdateArchivedSurveyStep:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v8) = 1;
    goto LABEL_29;
  }

  v5 = v4;
  v6 = objc_opt_new();
  [v6 addObject:v5];
  v7 = [v5 questionType];
  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

LABEL_17:
    v9 = [v5 archivedAnswerFormat];
    [v6 addObject:v9];
LABEL_18:

    goto LABEL_19;
  }

  if (v7 == 3)
  {
    goto LABEL_17;
  }

  if (v7 == 4)
  {
LABEL_9:
    v9 = [v5 archivedAnswerFormat];
    [v6 addObject:v9];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v9 archivedAnswerChoiceItems];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v10);
          }

          [v6 addObject:*(*(&v25 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
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

- (BOOL)_deleteWithPayload:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 hasStatus] && (objc_msgSend(v5, "status"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "code"), v6, v7 != 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    switch([v5 type])
    {
      case 1u:
        break;
      case 2u:
        v9 = [v5 handout];
        v10 = [v9 objectId];
        [(PDAbstractClassZoneOperation *)self deleteCollectionItemsWithReferenceObjectID:v10];

        v11 = [v5 handout];
        v12 = [v11 objectId];
        v13 = [(PDAbstractClassZoneOperation *)self deleteHandoutWithObjectID:v12 shouldDeleteDrafts:0];
        goto LABEL_44;
      case 3u:
        v41 = [v5 attachment];
        v11 = [v41 objectId];

        [(PDAbstractClassZoneOperation *)self _setAuthorizationForAttachmentWithObjectID:v11 shouldAuthorize:0];
        v16 = [(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:v11];
        goto LABEL_39;
      case 4u:
        v32 = objc_opt_class();
        v35 = [v5 recipient];
        goto LABEL_31;
      case 6u:
        v11 = [v5 classInfo];
        v12 = [v11 classId];
        v13 = [(PDAbstractClassZoneOperation *)self deleteClassWithObjectID:v12 deletePersons:0];
        goto LABEL_44;
      case 7u:
        v32 = objc_opt_class();
        v11 = [v5 person];
        v33 = [v11 personId];
        goto LABEL_32;
      case 8u:
        v32 = objc_opt_class();
        v11 = [v5 classMember];
        v33 = [v11 classMemberId];
        goto LABEL_32;
      case 0xFu:
        v32 = objc_opt_class();
        v35 = [v5 asset];
LABEL_31:
        v11 = v35;
        v33 = [v35 objectId];
        goto LABEL_32;
      case 0x11u:
        v11 = [v5 authStatus];
        v16 = [(PDAbstractClassZoneOperation *)self processAuthorizationStatus:v11];
        goto LABEL_39;
      case 0x12u:
        v11 = [v5 completionStatus];
        v16 = [(PDAbstractClassZoneOperation *)self processCompletionStatus:v11];
        goto LABEL_39;
      case 0x13u:
        v11 = [v5 stateChange];
        v16 = [(PDAbstractClassZoneOperation *)self _deleteStateChanges:v11];
LABEL_39:
        v8 = v16;
        goto LABEL_45;
      case 0x14u:
        v34 = [v5 collection];
        v11 = sub_10001D104(v34);

        v32 = objc_opt_class();
        v33 = [v11 objectID];
LABEL_32:
        v12 = v33;
        v42 = self;
        v43 = v32;
        goto LABEL_43;
      case 0x15u:
        v48 = v5;
        v17 = [v5 collectionItem];
        v18 = sub_10001D7AC(v17);

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
                v24 = self;
                v25 = [(PDOperation *)self database];
                v26 = objc_opt_new();
                v27 = objc_opt_class();
                v28 = [v23 referenceObjectID];
                v63[0] = v28;
                v63[1] = &off_10021B630;
                v29 = [NSArray arrayWithObjects:v63 count:2];
                v51[0] = _NSConcreteStackBlock;
                v51[1] = 3221225472;
                v51[2] = sub_100064EDC;
                v51[3] = &unk_100203838;
                v30 = v26;
                v52 = v30;
                [v25 selectAll:v27 where:@"referenceObjectID = ? and type = ?" bindings:v29 block:v51];

                if ([v30 count])
                {
                  v31 = [PDDatabase whereSQLForArray:v30 prefix:@"objectID in "];
                  [v25 deleteAllWithoutTracking:objc_opt_class() where:v31 bindings:v30];
                }

                self = v24;
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
        v5 = v48;
        break;
      case 0x19u:
        v14 = [v5 survey];
        v15 = [(PDAbstractClassZoneOperation *)self _deleteSurvey:v14];
        goto LABEL_34;
      case 0x1Au:
        v14 = [v5 surveyStep];
        v15 = [(PDAbstractClassZoneOperation *)self _deleteSurveyStep:v14];
LABEL_34:
        v8 = v15;
        goto LABEL_36;
      case 0x1Bu:
        v14 = [v5 surveyStepAnswer];
        v44 = [v14 objectId];
        v8 = [(PDAbstractClassZoneOperation *)self _deleteDraftAnswer:v44];

LABEL_36:
        break;
      case 0x1Eu:
        v45 = objc_opt_class();
        v46 = [v5 schedule];
        goto LABEL_42;
      case 0x1Fu:
        v45 = objc_opt_class();
        v46 = [v5 scheduledEvent];
LABEL_42:
        v11 = v46;
        v12 = [v46 objectId];
        v42 = self;
        v43 = v45;
LABEL_43:
        v13 = [(PDAbstractClassZoneOperation *)v42 _deleteEntity:v43 identity:v12];
LABEL_44:
        v8 = v13;

LABEL_45:
        break;
      default:
        CLSInitLog();
        v36 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = objc_opt_class();
          v38 = [(PDURLRequestOperation *)self operationID];
          v39 = [v5 type];
          if (v39 < 0x27 && ((0x7FFFFE91DFuLL >> v39) & 1) != 0)
          {
            v40 = *(&off_1002038D0 + v39);
          }

          else
          {
            v40 = [NSString stringWithFormat:@"(unknown: %i)", v39];
          }

          *buf = 138543874;
          v58 = v37;
          v59 = 2114;
          v60 = v38;
          v61 = 2114;
          v62 = v40;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ Unexpected payload type: %{public}@;", buf, 0x20u);
        }

        v8 = 1;
        break;
    }
  }

  return v8;
}

- (BOOL)deleteHandoutWithObjectID:(id)a3 shouldDeleteDrafts:(BOOL)a4
{
  v6 = a3;
  v7 = [(PDOperation *)self database];
  if (!a4)
  {
    v8 = [v7 select:objc_opt_class() identity:v6];
    v9 = v8;
    if (v8 && ![v8 state])
    {

      v11 = 1;
      goto LABEL_6;
    }
  }

  v14[0] = v6;
  v14[1] = &off_10021B648;
  v10 = [NSArray arrayWithObjects:v14 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000650C0;
  v13[3] = &unk_100203860;
  v13[4] = self;
  [v7 selectAll:objc_opt_class() where:@"parentObjectID = ? and type = ?" bindings:v10 block:v13];
  v11 = [(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:v6];

LABEL_6:
  return v11;
}

- (BOOL)deleteClassWithObjectID:(id)a3 deletePersons:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PDOperation *)self database];
  v8 = v7;
  if (v4)
  {
    v9 = sub_1000765A0(v7, v6);
    v10 = sub_1000711FC(v8);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectID];

      if (v12)
      {
        v13 = [v11 objectID];
        [v9 removeObject:v13];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = [(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:v6];
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
      v27 = v6;
      v17 = v25;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete class %{public}@", &v24, 0x16u);
    }
  }

  if (v4 && [v9 count])
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
        v27 = v6;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to delete persons in class %{public}@", &v24, 0x16u);
      }
    }
  }

  return v14;
}

- (BOOL)_deleteEntity:(Class)a3 identity:(id)a4
{
  v6 = a4;
  v7 = [(PDOperation *)self database];
  v25 = v6;
  v8 = [NSArray arrayWithObjects:&v25 count:1];
  v9 = [(objc_class *)a3 identityColumnName];
  v10 = [v9 stringByAppendingString:@" = ?"];

  if (([v7 deleteAll:a3 where:v10 bindings:v8] & 1) == 0)
  {
    CLSInitLog();
    v12 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [(PDURLRequestOperation *)self operationID];
      v17 = 138544130;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = a3;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to delete %{public}@ %@.", &v17, 0x2Au);
    }

    goto LABEL_9;
  }

  if (!-[PDAbstractClassZoneOperation resolveMissingEntityWithObjectID:](self, "resolveMissingEntityWithObjectID:", v6) || ![v7 deleteAll:objc_opt_class() where:@"entityIdentity = ?" bindings:v8] || !objc_msgSend(v7, "deleteAll:where:bindings:", objc_opt_class(), @"objectID = ?", v8))
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  [v7 deleteAll:objc_opt_class() where:@"objectID = ?" bindings:v8];
  [v7 deleteAll:objc_opt_class() where:@"objectID = ?" bindings:v8];
  [v7 deleteAll:objc_opt_class() where:@"objectID = ?" bindings:v8];
  v11 = 1;
LABEL_10:

  return v11;
}

- (BOOL)_deleteDraftAnswer:(id)a3
{
  v4 = a3;
  [(PDOperation *)self database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006571C;
  v10 = v9[3] = &unk_100202140;
  v11 = v4;
  v5 = v4;
  v6 = v10;
  v7 = [v6 withSyncEnabled:v9];

  return v7;
}

- (BOOL)_deleteStateChanges:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v3 stateChangePayloads];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v3 targetObjectId];
        v12 = [v3 targetOwnerPersonId];
        v13 = +[CLSCollaborationState identifierForTargetObjectID:ownerPersonID:domain:](CLSCollaborationState, "identifierForTargetObjectID:ownerPersonID:domain:", v11, v12, [v10 domain]);

        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  v14 = [(PDOperation *)self database];
  if ([v4 count])
  {
    v15 = [PDDatabase whereSQLForArray:v4 prefix:@"objectID in "];
    v16 = [v14 deleteAll:objc_opt_class() where:v15 bindings:v4];
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
        v30 = v3;
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

- (BOOL)_deleteSurvey:(id)a3
{
  v4 = a3;
  v5 = [v4 objectId];
  v6 = [(PDOperation *)self database];
  v7 = objc_opt_new();
  v8 = objc_opt_class();
  v37 = v5;
  v9 = [NSArray arrayWithObjects:&v37 count:1];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100065E18;
  v29[3] = &unk_100203888;
  v10 = v7;
  v30 = v10;
  [v6 selectAll:v8 where:@"parentObjectID = ?" bindings:v9 block:v29];

  if ([v10 count])
  {
    v11 = [PDDatabase whereSQLForArray:v10 prefix:@"objectID in "];
    if (([v6 deleteAll:objc_opt_class() where:v11 bindings:v10] & 1) == 0)
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
        v36 = v5;
        v15 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to manually delete survey questions %{public}@", buf, 0x16u);
      }
    }
  }

  v16 = objc_opt_class();
  v32 = v5;
  v17 = [NSArray arrayWithObjects:&v32 count:1];
  LOBYTE(v16) = [v6 deleteAllWithoutTracking:v16 where:@"objectID = ?" bindings:v17];

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
      v36 = v4;
      v24 = v27;
      v25 = "%{public}@ failed to delete CLSSurvey in payload %{public}@";
      goto LABEL_12;
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v18 = objc_opt_class();
  v31 = v5;
  v19 = 1;
  v20 = [NSArray arrayWithObjects:&v31 count:1];
  LOBYTE(v18) = [v6 deleteAllWithoutTracking:v18 where:@"surveyID = ?" bindings:v20];

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
      v36 = v5;
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

- (BOOL)_deleteSurveyStep:(id)a3
{
  v4 = a3;
  v5 = [v4 objectId];
  v6 = [(PDOperation *)self database];
  if ([(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:v5])
  {
    v7 = [v4 answerFormatObjectId];
    v8 = [v4 answerFormatType];
    v36 = v7;
    if (v8 == 1 || v8 == 3 || v8 == 2)
    {
      if (![(PDAbstractClassZoneOperation *)self _deleteEntity:objc_opt_class() identity:v7, v7])
      {
        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          v28 = v11;
          *buf = 138543618;
          v48 = objc_opt_class();
          v49 = 2114;
          v50 = v7;
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
    v38 = v5;
    v46 = v5;
    v16 = [NSArray arrayWithObjects:&v46 count:1];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100066418;
    v43[3] = &unk_100202748;
    v17 = v13;
    v44 = v17;
    v18 = v14;
    v45 = v18;
    [v6 selectAll:v15 where:@"questionID = ?" bindings:v16 block:v43];

    if ([v18 count])
    {
      v19 = [PDDatabase whereSQLForArray:v18 prefix:@"objectID IN "];
      v10 = [v6 deleteAll:objc_opt_class() where:v19 bindings:v18];
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
      v40 = v6;
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

    v5 = v38;
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
    v50 = v4;
    v27 = v48;
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ failed to delete CLSQuestionStep in payload %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_27:

  return v10;
}

- (void)_setAuthorizationForAttachmentWithObjectID:(id)a3 shouldAuthorize:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PDOperation *)self database];
  LOBYTE(v4) = sub_10016032C(v7, v6, v4);

  if ((v4 & 1) == 0)
  {
    CLSInitLog();
    v8 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(PDURLRequestOperation *)self operationID];
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to update authorization for attchment with objectID = %{public}@; - skipping authorization status.", &v12, 0x20u);
    }
  }
}

@end