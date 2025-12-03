@interface ADResultObjectCache
- (BOOL)callIsPossibleForRequestId:(id)id;
- (BOOL)hasMissingRefContextsForId:(id)id;
- (BOOL)hasResultObjectsForRequestId:(id)id;
- (id)_missingReferenceFulfillmentContexts;
- (id)_missingReferenceFulfillmentContextsByRequestId;
- (id)_requestMap;
- (id)commandsForReply:(id)reply toCommand:(id)command missingReferences:(id *)references;
- (id)commandsForSuccessReplyToCommand:(id)command;
- (id)objectsForIds:(id)ids missingReferences:(id *)references;
- (void)_addObjects:(id)objects forRequestId:(id)id sessionRequestId:(id)requestId;
- (void)_removeMissingRefContextsForRequestId:(id)id;
- (void)_removeMissingReferenceContext:(id)context;
- (void)addMissingReferencesContext:(id)context;
- (void)addResultObjects:(id)objects sessionRequestId:(id)id;
- (void)clearResultObjectsForAllRequestIdsExcept:(id)except;
- (void)clearResultObjectsForRequestId:(id)id;
@end

@implementation ADResultObjectCache

- (id)commandsForSuccessReplyToCommand:(id)command
{
  commandCopy = command;
  refId = [commandCopy refId];
  if (refId && (v6 = refId, [commandCopy ad_callbacks], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    [commandCopy ad_callbacks];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = v33 = 0u;
    commandReferences = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (commandReferences)
    {
      v10 = *v31;
      while (2)
      {
        for (i = 0; i != commandReferences; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          if (![v12 code])
          {
            commandReferences = [v12 commandReferences];
            goto LABEL_14;
          }
        }

        commandReferences = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (commandReferences)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if ([commandReferences count])
    {
      v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(commandReferences, "count")}];
      requestMap = self->_requestMap;
      refId2 = [commandCopy refId];
      v17 = [(NSMutableDictionary *)requestMap objectForKey:refId2];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = commandReferences;
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [v17 objectForKey:{*(*(&v26 + 1) + 8 * j), v26}];
            if (v23)
            {
              [v14 addObject:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v20);
      }
    }

    else
    {
      v14 = 0;
    }

    if ([v14 count])
    {
      v24 = v14;
    }

    else
    {
      v24 = 0;
    }

    v13 = v24;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)callIsPossibleForRequestId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v5 = idCopy;
  }

  else
  {
    v5 = @"com.apple.siri.nilRequestId";
  }

  v6 = [(NSMutableSet *)self->_requestsWithPhoneCall containsObject:v5];

  return v6;
}

- (BOOL)hasResultObjectsForRequestId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v5 = idCopy;
  }

  else
  {
    v5 = @"com.apple.siri.nilRequestId";
  }

  v6 = [(NSMutableDictionary *)self->_requestMap objectForKey:v5];
  v7 = [v6 count] != 0;

  return v7;
}

- (void)clearResultObjectsForAllRequestIdsExcept:(id)except
{
  exceptCopy = except;
  if ([exceptCopy count])
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = objc_alloc_init(NSMutableSet);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = exceptCopy;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_requestMap objectForKey:v12];
          if (v13)
          {
            [v5 setObject:v13 forKey:v12];
            if ([(NSMutableSet *)self->_requestsWithPhoneCall containsObject:v12])
            {
              [v6 addObject:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    if (exceptCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (exceptCopy)
    {
LABEL_13:
      v14 = [[NSSet alloc] initWithArray:exceptCopy];
      goto LABEL_16;
    }
  }

  v14 = 0;
LABEL_16:
  allKeys = [(NSMutableDictionary *)self->_missingReferenceFulfillmentContextsByRequestId allKeys];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [allKeys countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        if (([v14 containsObject:v20] & 1) == 0)
        {
          [(ADResultObjectCache *)self _removeMissingRefContextsForRequestId:v20];
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  if ([v5 count])
  {
    v21 = v5;
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&self->_requestMap, v21);
  if ([v6 count])
  {
    v22 = v6;
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(&self->_requestsWithPhoneCall, v22);
}

- (void)_removeMissingReferenceContext:(id)context
{
  contextCopy = context;
  requestId = [contextCopy requestId];
  v6 = requestId;
  v7 = @"com.apple.siri.nilRequestId";
  if (requestId)
  {
    v7 = requestId;
  }

  v8 = v7;

  v10 = [(NSMutableDictionary *)self->_missingReferenceFulfillmentContexts allKeysForObject:contextCopy];
  [(NSMutableDictionary *)self->_missingReferenceFulfillmentContexts removeObjectsForKeys:v10];
  v9 = [(NSMutableDictionary *)self->_missingReferenceFulfillmentContextsByRequestId objectForKey:v8];

  [v9 removeObject:contextCopy];
}

- (void)_removeMissingRefContextsForRequestId:(id)id
{
  idCopy = id;
  v5 = [(NSMutableDictionary *)self->_missingReferenceFulfillmentContextsByRequestId objectForKey:idCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_missingReferenceFulfillmentContexts allKeysForObject:*(*(&v11 + 1) + 8 * v9)];
        [(NSMutableDictionary *)self->_missingReferenceFulfillmentContexts removeObjectsForKeys:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_missingReferenceFulfillmentContextsByRequestId removeObjectForKey:idCopy];
}

- (void)clearResultObjectsForRequestId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v5 = idCopy;
  }

  else
  {
    v5 = @"com.apple.siri.nilRequestId";
  }

  v7 = v5;
  [(NSMutableDictionary *)self->_requestMap removeObjectForKey:?];
  [(NSMutableSet *)self->_requestsWithPhoneCall removeObject:v7];
  if (![(NSMutableSet *)self->_requestsWithPhoneCall count])
  {
    requestsWithPhoneCall = self->_requestsWithPhoneCall;
    self->_requestsWithPhoneCall = 0;
  }

  [(ADResultObjectCache *)self _removeMissingRefContextsForRequestId:v7];
}

- (id)objectsForIds:(id)ids missingReferences:(id *)references
{
  idsCopy = ids;
  v7 = [(NSMutableDictionary *)self->_requestMap objectForKey:@"com.apple.siri.nilRequestId"];
  if (!v7)
  {
    v12 = [idsCopy copy];
    v8 = 0;
    if (!references)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  referencesCopy = references;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = idsCopy;
  v9 = idsCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v7 objectForKey:{v15, referencesCopy}];
        if (v16)
        {
          v17 = v8;
          v18 = v16;
        }

        else
        {
          if (!v12)
          {
            v12 = objc_alloc_init(NSMutableArray);
          }

          v17 = v12;
          v18 = v15;
        }

        [v17 addObject:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  references = referencesCopy;
  idsCopy = v23;
  if (referencesCopy)
  {
LABEL_19:
    v19 = v12;
    *references = v12;
  }

LABEL_20:
  v20 = v8;

  return v8;
}

- (id)commandsForReply:(id)reply toCommand:(id)command missingReferences:(id *)references
{
  replyCopy = reply;
  commandCopy = command;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v75 = "[ADResultObjectCache commandsForReply:toCommand:missingReferences:]";
    v76 = 2112;
    v77 = replyCopy;
    v78 = 2112;
    v79 = commandCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s reply = %@, command = %@", buf, 0x20u);
  }

  refId = [commandCopy refId];
  if (refId)
  {
    v11 = refId;
  }

  else
  {
    v11 = @"com.apple.siri.nilRequestId";
  }

  v58 = v11;
  v12 = [(NSMutableDictionary *)self->_requestMap objectForKey:?];
  v56 = replyCopy;
  if (replyCopy)
  {
    resultCallbackCode = [replyCopy resultCallbackCode];
  }

  else
  {
    resultCallbackCode = -1;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v75 = "[ADResultObjectCache commandsForReply:toCommand:missingReferences:]";
    v76 = 2048;
    v77 = resultCallbackCode;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s replyCode = %ld", buf, 0x16u);
  }

  v55 = commandCopy;
  [commandCopy ad_callbacks];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v15 = v70 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v68;
LABEL_13:
    v20 = 0;
    while (1)
    {
      if (*v68 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v67 + 1) + 8 * v20);
      code = [v21 code];
      if (code == resultCallbackCode)
      {
        break;
      }

      if (!v18)
      {
        if (code == -1)
        {
          v18 = v21;
        }

        else
        {
          v18 = 0;
        }
      }

      if (v17 == ++v20)
      {
        v17 = [v15 countByEnumeratingWithState:&v67 objects:v73 count:16];
        if (v17)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }
    }

    v23 = v21;

    if (v23)
    {
      goto LABEL_30;
    }

    if (resultCallbackCode)
    {
LABEL_26:
      v18 = v18;
      v23 = v18;
      goto LABEL_30;
    }
  }

  else
  {
    v18 = 0;
LABEL_28:

    if (resultCallbackCode)
    {
      goto LABEL_26;
    }
  }

  v23 = 0;
LABEL_30:
  v52 = v18;
  v24 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v75 = "[ADResultObjectCache commandsForReply:toCommand:missingReferences:]";
    v76 = 2112;
    v77 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s callbackForReply = %@", buf, 0x16u);
  }

  v53 = v15;
  commandReferences = [v23 commandReferences];
  v26 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(commandReferences, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = commandReferences;
  v27 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v64;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v64 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v63 + 1) + 8 * i);
        v33 = [v12 objectForKey:v32];
        if (v33)
        {
          v34 = v26;
          v35 = v33;
        }

        else
        {
          if (!v29)
          {
            v29 = objc_alloc_init(NSMutableArray);
          }

          v34 = v29;
          v35 = v32;
        }

        [v34 addObject:v35];
      }

      v28 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v51 = v23;
  commands = [v23 commands];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v37 = [commands countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v60;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(commands);
        }

        v41 = *(*(&v59 + 1) + 8 * j);
        v42 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v75 = "[ADResultObjectCache commandsForReply:toCommand:missingReferences:]";
          v76 = 2112;
          v77 = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Adding flowCommand %@", buf, 0x16u);
        }

        [v41 setRefId:v58];
        [v26 addObject:v41];
      }

      v38 = [commands countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v38);
  }

  if ([v29 count])
  {

    v43 = AFSiriLogContextDaemon;
    v45 = v55;
    v44 = v56;
    v47 = v53;
    v46 = v12;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v75 = "[ADResultObjectCache commandsForReply:toCommand:missingReferences:]";
      v76 = 2112;
      v77 = v29;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s missingReferences %@", buf, 0x16u);
    }

    v26 = 0;
  }

  else
  {
    v45 = v55;
    v44 = v56;
    v47 = v53;
    v46 = v12;
  }

  if (references)
  {
    v48 = v29;
    *references = v29;
  }

  v49 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v75 = "[ADResultObjectCache commandsForReply:toCommand:missingReferences:]";
    v76 = 2112;
    v77 = v26;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s callbackCommands = %@", buf, 0x16u);
  }

  return v26;
}

- (void)addResultObjects:(id)objects sessionRequestId:(id)id
{
  idCopy = id;
  objectsCopy = objects;
  objects = [objectsCopy objects];
  refId = [objectsCopy refId];

  [(ADResultObjectCache *)self _addObjects:objects forRequestId:refId sessionRequestId:idCopy];
}

- (void)_addObjects:(id)objects forRequestId:(id)id sessionRequestId:(id)requestId
{
  objectsCopy = objects;
  idCopy = id;
  requestIdCopy = requestId;
  if (idCopy)
  {
    v10 = idCopy;
  }

  else
  {
    v10 = @"com.apple.siri.nilRequestId";
  }

  _requestMap = [(ADResultObjectCache *)self _requestMap];
  v48 = v10;
  v47 = [_requestMap objectForKey:v10];
  if (!v47)
  {
    v47 = objc_alloc_init(NSMutableDictionary);
    [_requestMap setObject:? forKey:?];
  }

  v43 = _requestMap;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = objectsCopy;
  v12 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v45 = 0;
    v14 = *v54;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v53 + 1) + 8 * i);
        aceId = [v16 aceId];
        if (aceId)
        {
          refId = [v16 refId];
          v19 = refId;
          if (refId)
          {
            if ([refId isEqualToString:requestIdCopy])
            {
              [v16 setRefId:v10];
              v20 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v59 = "[ADResultObjectCache _addObjects:forRequestId:sessionRequestId:]";
                v60 = 2112;
                v61 = v10;
                v62 = 2112;
                v63 = requestIdCopy;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Setting refId to %@ from session request %@", buf, 0x20u);
              }
            }
          }

          [v47 setObject:v16 forKey:aceId];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            requestsWithPhoneCall = self->_requestsWithPhoneCall;
            if (!requestsWithPhoneCall)
            {
              v22 = objc_alloc_init(NSMutableSet);
              v23 = self->_requestsWithPhoneCall;
              self->_requestsWithPhoneCall = v22;

              requestsWithPhoneCall = self->_requestsWithPhoneCall;
            }

            [(NSMutableSet *)requestsWithPhoneCall addObject:v10];
          }

          v24 = [(NSMutableDictionary *)self->_missingReferenceFulfillmentContexts objectForKey:aceId];
          requestId = [v24 requestId];
          v26 = requestId;
          v27 = @"com.apple.siri.nilRequestId";
          if (requestId)
          {
            v27 = requestId;
          }

          v28 = v27;

          if (v24 && [(__CFString *)v10 isEqualToString:v28])
          {
            _mutableResolvedIds = [v24 _mutableResolvedIds];
            [_mutableResolvedIds addObject:aceId];

            v30 = v45;
            if (!v45)
            {
              v30 = objc_alloc_init(NSMutableSet);
            }

            v45 = v30;
            [v30 addObject:v24];
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v13);
  }

  else
  {
    v45 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = v45;
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v50;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v49 + 1) + 8 * j);
        resolvedReferences = [v36 resolvedReferences];
        v38 = [resolvedReferences count];
        missingReferences = [v36 missingReferences];
        v40 = [missingReferences count];

        if (v38 == v40)
        {
          [v36 setHasBeenFulfilled:1];
          fulfillmentBlock = [v36 fulfillmentBlock];
          v42 = fulfillmentBlock;
          if (fulfillmentBlock)
          {
            (*(fulfillmentBlock + 16))(fulfillmentBlock);
          }

          [(ADResultObjectCache *)self _removeMissingReferenceContext:v36];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v33);
  }
}

- (BOOL)hasMissingRefContextsForId:(id)id
{
  idCopy = id;
  _missingReferenceFulfillmentContextsByRequestId = [(ADResultObjectCache *)self _missingReferenceFulfillmentContextsByRequestId];
  v6 = [_missingReferenceFulfillmentContextsByRequestId objectForKey:idCopy];

  LOBYTE(idCopy) = [v6 count] != 0;
  return idCopy;
}

- (void)addMissingReferencesContext:(id)context
{
  contextCopy = context;
  _missingReferenceFulfillmentContexts = [(ADResultObjectCache *)self _missingReferenceFulfillmentContexts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  missingReferences = [contextCopy missingReferences];
  v7 = [missingReferences countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(missingReferences);
        }

        [_missingReferenceFulfillmentContexts setObject:contextCopy forKey:*(*(&v17 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [missingReferences countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  requestId = [contextCopy requestId];
  v12 = requestId;
  v13 = @"com.apple.siri.nilRequestId";
  if (requestId)
  {
    v13 = requestId;
  }

  v14 = v13;

  _missingReferenceFulfillmentContextsByRequestId = [(ADResultObjectCache *)self _missingReferenceFulfillmentContextsByRequestId];
  v16 = [_missingReferenceFulfillmentContextsByRequestId objectForKey:v14];
  if (!v16)
  {
    v16 = objc_alloc_init(NSMutableSet);
    [_missingReferenceFulfillmentContextsByRequestId setObject:v16 forKey:v14];
  }

  [v16 addObject:contextCopy];
}

- (id)_missingReferenceFulfillmentContextsByRequestId
{
  missingReferenceFulfillmentContextsByRequestId = self->_missingReferenceFulfillmentContextsByRequestId;
  if (!missingReferenceFulfillmentContextsByRequestId)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_missingReferenceFulfillmentContextsByRequestId;
    self->_missingReferenceFulfillmentContextsByRequestId = v4;

    missingReferenceFulfillmentContextsByRequestId = self->_missingReferenceFulfillmentContextsByRequestId;
  }

  return missingReferenceFulfillmentContextsByRequestId;
}

- (id)_missingReferenceFulfillmentContexts
{
  missingReferenceFulfillmentContexts = self->_missingReferenceFulfillmentContexts;
  if (!missingReferenceFulfillmentContexts)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_missingReferenceFulfillmentContexts;
    self->_missingReferenceFulfillmentContexts = v4;

    missingReferenceFulfillmentContexts = self->_missingReferenceFulfillmentContexts;
  }

  return missingReferenceFulfillmentContexts;
}

- (id)_requestMap
{
  requestMap = self->_requestMap;
  if (!requestMap)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_requestMap;
    self->_requestMap = v4;

    requestMap = self->_requestMap;
  }

  return requestMap;
}

@end