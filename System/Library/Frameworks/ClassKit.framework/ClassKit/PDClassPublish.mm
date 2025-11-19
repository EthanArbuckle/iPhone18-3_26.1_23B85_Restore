@interface PDClassPublish
- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4;
- (NSMutableDictionary)erroredIDs;
- (id)createActionPDDPEEPayloadFromCLSObject:(id)a3;
- (id)deleteActionPDDPEEPayloadFromCLSObject:(id)a3;
- (id)payloadForCLSObject:(id)a3;
- (id)requestData;
- (id)updateActionPDDPEEPayloadFromCLSObject:(id)a3;
@end

@implementation PDClassPublish

- (NSMutableDictionary)erroredIDs
{
  v3 = *(&self->_classMemberIDsByError + 2);
  if (!v3)
  {
    v4 = [NSMutableDictionary alloc];
    v5 = *(&self->_clsClass + 2);
    v6 = [v5 count];
    v7 = *(&self->_membersToInsert + 2);
    v8 = [v4 initWithCapacity:{&v6[objc_msgSend(v7, "count")]}];
    v9 = *(&self->_classMemberIDsByError + 2);
    *(&self->_classMemberIDsByError + 2) = v8;

    v3 = *(&self->_classMemberIDsByError + 2);
  }

  return v3;
}

- (id)requestData
{
  if ([(PDOperation *)self isFinished])
  {
    v3 = 0;
    goto LABEL_57;
  }

  v4 = objc_alloc_init(PBDataWriter);
  v5 = objc_alloc_init(PDDPPublishClassRequest);
  v69 = [(PDURLRequestOperation *)self operationID];
  v6 = *(&self->_action + 2);
  v7 = [(PDClassPublish *)self payloadForCLSObject:v6];
  [(PDDPPublishClassRequest *)v5 addPayload:v7];
  [(PDDPPublishClassRequest *)v5 writeTo:v4];
  [(PDDPPublishClassRequest *)v5 clearPayloads];
  v8 = [v4 data];
  v9 = [v8 length];
  v10 = [(PDURLRequestOperation *)self stats];
  if (v10)
  {
    v10[10] = v9;
  }

  v62 = v6;

  v11 = [(PDURLRequestOperation *)self stats];
  if (v11)
  {
    ++v11[14];
  }

  CLSInitLog();
  v12 = [(PDClassPublish *)self logSubsystem];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [v7 dictionaryRepresentation];
    *buf = 138543874;
    v81 = v13;
    v82 = 2114;
    v83 = v69;
    v84 = 2112;
    v85 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
  }

  v61 = v7;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = *(&self->_clsClass + 2);
  v67 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v67)
  {
    v65 = *v75;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v75 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v74 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      v19 = [(PDClassPublish *)self payloadForCLSObject:v17];
      [(PDDPPublishClassRequest *)v5 addPayload:v19];
      [(PDDPPublishClassRequest *)v5 writeTo:v4];
      [(PDDPPublishClassRequest *)v5 clearPayloads];
      v20 = [v4 data];
      v21 = [v20 length];
      v22 = [(PDURLRequestOperation *)self stats];
      if (v22)
      {
        v22[10] = v21;
      }

      v23 = [(PDURLRequestOperation *)self stats];
      if (v23)
      {
        ++v23[14];
      }

      CLSInitLog();
      v24 = [(PDClassPublish *)self logSubsystem];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = v25;
        v27 = [v19 dictionaryRepresentation];
        *buf = 138543874;
        v81 = v25;
        v82 = 2114;
        v83 = v69;
        v84 = 2112;
        v85 = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
      }

      v28 = [(PDURLRequestOperation *)self stats];
      v29 = v28;
      v30 = v28 ? *(v28 + 80) : 0;
      v31 = [(PDURLRequestOperation *)self stats];
      v32 = v31;
      v33 = v31 ? *(v31 + 112) : 0;
      v34 = [(PDEndpointRequestOperation *)self hasReachedRequestPayloadLimitBytes:v30 count:v33];

      objc_autoreleasePoolPop(v18);
      if (v34)
      {
        break;
      }

      if (v67 == ++v16)
      {
        v35 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
        v67 = v35;
        if (v35)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obja = *(&self->_membersToInsert + 2);
  v68 = [obja countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v68)
  {
    v66 = *v71;
LABEL_32:
    v36 = 0;
    while (1)
    {
      if (*v71 != v66)
      {
        objc_enumerationMutation(obja);
      }

      v37 = *(*(&v70 + 1) + 8 * v36);
      v38 = objc_autoreleasePoolPush();
      v39 = [(PDClassPublish *)self deleteActionPDDPEEPayloadFromCLSObject:v37];
      [(PDDPPublishClassRequest *)v5 addPayload:v39];
      [(PDDPPublishClassRequest *)v5 writeTo:v4];
      [(PDDPPublishClassRequest *)v5 clearPayloads];
      v40 = [v4 data];
      v41 = [v40 length];
      v42 = [(PDURLRequestOperation *)self stats];
      if (v42)
      {
        v42[10] = v41;
      }

      v43 = [(PDURLRequestOperation *)self stats];
      if (v43)
      {
        ++v43[14];
      }

      CLSInitLog();
      v44 = [(PDClassPublish *)self logSubsystem];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = v45;
        v47 = [v39 dictionaryRepresentation];
        *buf = 138543874;
        v81 = v45;
        v82 = 2114;
        v83 = v69;
        v84 = 2112;
        v85 = v47;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
      }

      v48 = [(PDURLRequestOperation *)self stats];
      v49 = v48;
      v50 = v48 ? *(v48 + 80) : 0;
      v51 = [(PDURLRequestOperation *)self stats];
      v52 = v51;
      v53 = v51 ? *(v51 + 112) : 0;
      v54 = [(PDEndpointRequestOperation *)self hasReachedRequestPayloadLimitBytes:v50 count:v53];

      objc_autoreleasePoolPop(v38);
      if (v54)
      {
        break;
      }

      if (v68 == ++v36)
      {
        v55 = [obja countByEnumeratingWithState:&v70 objects:v78 count:16];
        v68 = v55;
        if (v55)
        {
          goto LABEL_32;
        }

        break;
      }
    }
  }

  v56 = [(PDURLRequestOperation *)self stats];
  if (!v56)
  {
    v59 = v61;
    v58 = v62;
    goto LABEL_55;
  }

  v57 = v56[14];

  v59 = v61;
  v58 = v62;
  if (!v57)
  {
LABEL_55:
    [(PDEndpointRequestOperation *)self markAsFinished];
    v3 = 0;
    goto LABEL_56;
  }

  v3 = [v4 immutableData];
LABEL_56:

LABEL_57:

  return v3;
}

- (id)payloadForCLSObject:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = *(&self->super._unresolvedMissingEntityIDs + 2);
    switch(v5)
    {
      case 3:
        v6 = [(PDClassPublish *)self deleteActionPDDPEEPayloadFromCLSObject:v4];
        goto LABEL_10;
      case 2:
        v6 = [(PDClassPublish *)self updateActionPDDPEEPayloadFromCLSObject:v4];
        goto LABEL_10;
      case 1:
        v6 = [(PDClassPublish *)self createActionPDDPEEPayloadFromCLSObject:v4];
LABEL_10:
        v8 = v6;
        goto LABEL_11;
    }
  }

  CLSInitLog();
  v7 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      v10 = *(&self->super._unresolvedMissingEntityIDs + 2);
    }

    else
    {
      v10 = 0;
    }

    v11[0] = 67109120;
    v11[1] = v10;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PDClassPublish- Unknown action type: %d", v11, 8u);
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)createActionPDDPEEPayloadFromCLSObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setType:7];
    v5 = sub_10008507C(v3);
    [v4 setClassMember:v5];

    v6 = [v3 objectID];
    [v4 setTempObjectId:v6];

    v7 = [v3 parentObjectID];
    [v4 setTempParentObjectId:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    [v4 setType:6];
    v8 = v3;
    v7 = objc_alloc_init(PDDPClass);
    v9 = [v8 customClassName];
    [(PDDPClass *)v7 setDisplayName:v9];

    v10 = [v8 locationID];
    [(PDDPClass *)v7 setLocationId:v10];

    v11 = [v8 iconID];
    [(PDDPClass *)v7 setIconIdentifier:v11];

    v12 = [v8 dateCreated];
    v13 = sub_10010426C(v12);
    [(PDDPClass *)v7 setDateCreated:v13];

    v14 = [v8 dateLastModified];
    v15 = sub_10010426C(v14);
    [(PDDPClass *)v7 setDateLastModified:v15];

    v16 = objc_alloc_init(PDDPEntityMeta);
    [(PDDPClass *)v7 setEntityMeta:v16];

    v17 = [v8 source];
    v18 = [(PDDPClass *)v7 entityMeta];
    [v18 setSource:v17];

    [v4 setClassInfo:v7];
    v19 = [v8 objectID];

    [v4 setTempObjectId:v19];
  }

LABEL_6:
  [v4 setAction:1];

  return v4;
}

- (id)updateActionPDDPEEPayloadFromCLSObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setType:7];
    v5 = sub_10008507C(v3);
    [v4 setClassMember:v5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    [v4 setType:6];
    v5 = sub_100084D78(v3);
    [v4 setClassInfo:v5];
  }

  [v4 setAction:1];
LABEL_6:

  return v4;
}

- (id)deleteActionPDDPEEPayloadFromCLSObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setType:6];
    v5 = sub_100084D78(v3);
    [v4 setClassInfo:v5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    [v4 setType:7];
    v5 = sub_10008507C(v3);
    [v4 setClassMember:v5];
  }

LABEL_6:
  [v4 setAction:2];

  return v4;
}

- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = PDClassPublish;
  v7 = [(PDASMPayloadOperation *)&v26 processPayloadFromResponse:v6 error:a4];
  if (!*a4 || [v6 type] != 7 || !objc_msgSend(v6, "hasClassMember"))
  {
    goto LABEL_69;
  }

  v8 = *a4;
  v9 = [v6 classMember];
  v10 = sub_100085614(v9);

  v11 = [v6 status];
  v12 = [v11 code];
  if (v12 <= 299)
  {
    if (v12 > 3)
    {
      switch(v12)
      {
        case 'd':
          v13 = @"E_BOOTSTRAP_REQUIRED";
          break;
        case 'e':
          v13 = @"E_AUTHENTICATION_FAILED";
          break;
        case 'f':
          v13 = @"E_NOT_AUTHORIZED";
          break;
        case 'g':
          v13 = @"E_MESCAL_SIGNATURE_REQUIRED";
          break;
        case 'h':
          v13 = @"E_MESCAL_BAD_SIGNATURE";
          break;
        case 'i':
          v13 = @"E_MESCAL_PARSE_ERROR";
          break;
        case 'j':
          v13 = @"E_BAD_REQUEST";
          break;
        case 'k':
          v13 = @"E_BAD_PROTOCOL_VERSION";
          break;
        case 'l':
          v13 = @"E_REQUEST_TOO_LARGE";
          break;
        case 'm':
          v13 = @"E_REQUEST_TOO_MANY_ITEMS";
          break;
        case 'n':
          v13 = @"E_SERVER_BUSY";
          break;
        case 'o':
          v13 = @"E_ACCESS_DENIED";
          break;
        case 'p':
          v13 = @"E_CONFLICT";
          break;
        case 'q':
          v13 = @"E_INVALID_STATE";
          break;
        case 'r':
          v13 = @"E_LOCK_TAKEN";
          break;
        case 's':
          v13 = @"E_DOWNSTREAM_SERVICE_FAILED";
          break;
        case 't':
          v13 = @"E_DOWNSTREAM_SERVICE_THROTTLED";
          break;
        case 'u':
          v13 = @"E_DRIVE_USER_QUOTA_EXCEEDED";
          break;
        case 'v':
          v13 = @"E_DRIVE_GROUP_QUOTA_EXCEEDED";
          break;
        case 'w':
          v13 = @"E_DRIVE_ORG_QUOTA_EXCEEDED";
          break;
        case 'x':
          v13 = @"E_RECORD_LIMIT_EXCEEDED";
          break;
        case 'y':
          v13 = @"E_DISALLOWED_COUNTRY_CODE";
          break;
        default:
          if (v12 == 4)
          {
            v13 = @"S_OK_HAS_MORE_DATA";
          }

          else
          {
            if (v12 != 5)
            {
              goto LABEL_33;
            }

            v13 = @"S_PROCESSING";
          }

          break;
      }

      goto LABEL_61;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = @"E_ERROR";
      }

      else
      {
        v13 = @"S_MIXED_RESPONSE";
      }

      goto LABEL_61;
    }

    if (!v12)
    {
      v13 = @"UNKNOWN_CODE";
      goto LABEL_61;
    }

    if (v12 == 1)
    {
      v13 = @"S_OK";
      goto LABEL_61;
    }

LABEL_33:
    v13 = [NSString stringWithFormat:@"(unknown: %i)", v12];
    goto LABEL_61;
  }

  if (v12 <= 801)
  {
    if (v12 > 799)
    {
      if (v12 == 800)
      {
        v13 = @"E_NOT_APPLICABLE_TYPE";
      }

      else
      {
        v13 = @"E_ENTITY_NOT_FOUND";
      }

      goto LABEL_61;
    }

    if (v12 == 300)
    {
      v13 = @"E_DEVICE_UNSUPPORTED";
      goto LABEL_61;
    }

    if (v12 == 500)
    {
      v13 = @"E_INVALID_FIELD_VALUE";
      goto LABEL_61;
    }

    goto LABEL_33;
  }

  if (v12 <= 803)
  {
    if (v12 == 802)
    {
      v13 = @"E_ENTITY_PRIVILEGE_CHANGE";
    }

    else
    {
      v13 = @"E_MUST_ACCEPT_TERMS";
    }

    goto LABEL_61;
  }

  if (v12 == 804)
  {
    v13 = @"E_ENTITY_EXPIRED";
    goto LABEL_61;
  }

  if (v12 == 805)
  {
    v13 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
    goto LABEL_61;
  }

  if (v12 != 806)
  {
    goto LABEL_33;
  }

  v13 = @"E_DISALLOWED_EMAIL_DOMAIN";
LABEL_61:

  v14 = [(PDClassPublish *)self erroredIDs];
  v15 = [v8 description];
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    v17 = [(PDClassPublish *)self erroredIDs];
    v18 = [v17 valueForKey:v13];
  }

  else
  {
    v19 = [NSMutableArray alloc];
    if (self)
    {
      v20 = *(&self->_clsClass + 2);
    }

    else
    {
      v20 = 0;
    }

    v17 = v20;
    v21 = [v17 count];
    if (self)
    {
      v22 = *(&self->_membersToInsert + 2);
    }

    else
    {
      v22 = 0;
    }

    v18 = [v19 initWithCapacity:{&v21[objc_msgSend(v22, "count")]}];
  }

  v23 = v18;

  [v23 addObjectsFromArray:v10];
  v24 = [(PDClassPublish *)self erroredIDs];
  [v24 setObject:v23 forKey:v13];

LABEL_69:
  return v7;
}

@end