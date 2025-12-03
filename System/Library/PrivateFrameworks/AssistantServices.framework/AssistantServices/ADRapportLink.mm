@interface ADRapportLink
+ (id)_sharedLinkForSiriInfo;
+ (id)siriInfoToBeBroadcasted;
+ (void)updateSiriInfoWithObject:(id)object forKey:(id)key;
- (ADRapportLink)initWithQueue:(id)queue configuration:(id)configuration;
- (BOOL)_validateIncomingRequest:(id)request options:(id)options error:(id *)error messageID:(id *)d messageType:(id *)type messagePayload:(id *)payload senderPeerInfo:(id *)info;
- (BOOL)canReachPersonalDevices;
- (id)_buildRequestFromMessageType:(id)type andMessagePayload:(id)payload;
- (id)_buildResponse;
- (id)_destinationIDForDeviceAssistantIdentifier:(id)identifier;
- (id)_destinationIDForDeviceHomeKitAccessoryIdentifier:(id)identifier;
- (id)_destinationIDForDeviceIDSIdentifier:(id)identifier;
- (id)_destinationIDForPeerInfo:(id)info;
- (id)_remoteDeviceForPeerInfo:(id)info;
- (id)_siriInfo;
- (void)_addLocalDeviceInfoToDictionary:(id)dictionary;
- (void)_enumerateListenersUsingBlock:(id)block;
- (void)_handleDidFindDevice:(id)device;
- (void)_handleDidInterrupt;
- (void)_handleDidInvalidate;
- (void)_handleDidLoseDevice:(id)device;
- (void)_handleDidUpdateDevice:(id)device changes:(unsigned int)changes;
- (void)_handleDidUpdateLocalDevice:(id)device;
- (void)_invalidate;
- (void)_registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)_sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)_sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)activateWithCompletion:(id)completion;
- (void)addListener:(id)listener;
- (void)dealloc;
- (void)invalidate;
- (void)registerRequestID:(id)d options:(id)options;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)removeListener:(id)listener;
- (void)sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload toDeviceWithAssistantIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload toDeviceWithHomeKitAccessoryIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload toDeviceWithIDSDeviceID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload toPeer:(id)peer options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)sendRequestToContextCollectorThroughOnDemandConnection:(id)connection messageType:(id)type messagePayload:(id)payload options:(id)options completion:(id)completion;
- (void)setDestinationDevice:(id)device;
- (void)setRequestHandler:(id)handler forRequestID:(id)d messageType:(id)type;
- (void)setServiceType:(id)type;
- (void)updateLocalDeviceIsContextCollector:(BOOL)collector;
@end

@implementation ADRapportLink

- (id)_siriInfo
{
  siriInfo = [(RPCompanionLinkClient *)self->_client siriInfo];
  v3 = [siriInfo copy];

  return v3;
}

- (id)_remoteDeviceForPeerInfo:(id)info
{
  infoCopy = info;
  activeDevices = [(RPCompanionLinkClient *)self->_client activeDevices];
  idsDeviceUniqueIdentifier = [infoCopy idsDeviceUniqueIdentifier];
  if (![idsDeviceUniqueIdentifier length])
  {
    goto LABEL_11;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = activeDevices;
  v8 = [v7 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (!v8)
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *v58;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v58 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v57 + 1) + 8 * v11);
    idsDeviceIdentifier = [v12 idsDeviceIdentifier];
    v14 = [idsDeviceIdentifier isEqualToString:idsDeviceUniqueIdentifier];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v37 = v12;

  if (v37)
  {
    goto LABEL_54;
  }

LABEL_12:
  rapportEffectiveIdentifier = [infoCopy rapportEffectiveIdentifier];
  if (![rapportEffectiveIdentifier length])
  {
LABEL_22:

    goto LABEL_23;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = activeDevices;
  v17 = [v16 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (!v17)
  {
LABEL_21:

    goto LABEL_22;
  }

  v18 = v17;
  v19 = *v54;
LABEL_15:
  v20 = 0;
  while (1)
  {
    if (*v54 != v19)
    {
      objc_enumerationMutation(v16);
    }

    v21 = *(*(&v53 + 1) + 8 * v20);
    effectiveIdentifier = [v21 effectiveIdentifier];
    v23 = [effectiveIdentifier isEqualToString:rapportEffectiveIdentifier];

    if (v23)
    {
      break;
    }

    if (v18 == ++v20)
    {
      v18 = [v16 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v18)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  v37 = v21;

  if (v37)
  {
    goto LABEL_54;
  }

LABEL_23:
  homeKitAccessoryIdentifier = [infoCopy homeKitAccessoryIdentifier];
  if ([homeKitAccessoryIdentifier length])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = activeDevices;
    v25 = activeDevices;
    v26 = [v25 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v50;
LABEL_26:
      v29 = 0;
      while (1)
      {
        if (*v50 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v49 + 1) + 8 * v29);
        homeKitIdentifier = [v30 homeKitIdentifier];
        uUIDString = [homeKitIdentifier UUIDString];
        v33 = [uUIDString isEqualToString:homeKitAccessoryIdentifier];

        if (v33)
        {
          break;
        }

        if (v27 == ++v29)
        {
          v27 = [v25 countByEnumeratingWithState:&v49 objects:v62 count:16];
          if (v27)
          {
            goto LABEL_26;
          }

          goto LABEL_32;
        }
      }

      v37 = v30;

      activeDevices = v44;
      if (v37)
      {
        goto LABEL_54;
      }

      goto LABEL_34;
    }

LABEL_32:

    activeDevices = v44;
  }

LABEL_34:
  assistantIdentifier = [infoCopy assistantIdentifier];
  uppercaseString = [assistantIdentifier uppercaseString];

  if ([uppercaseString length])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = activeDevices;
    v37 = [v36 countByEnumeratingWithState:&v45 objects:v61 count:16];
    if (v37)
    {
      v38 = *v46;
      while (2)
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = *(*(&v45 + 1) + 8 * i);
          v41 = sub_100191B80(v40);
          v42 = [v41 isEqualToString:uppercaseString];

          if (v42)
          {
            v37 = v40;
            goto LABEL_51;
          }
        }

        v37 = [v36 countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

LABEL_51:
  }

  else
  {
    v37 = 0;
  }

LABEL_54:

  return v37;
}

- (id)_destinationIDForPeerInfo:(id)info
{
  infoCopy = info;
  v5 = [(ADRapportLink *)self _remoteDeviceForPeerInfo:infoCopy];
  if (v5)
  {
    v6 = v5;
    goto LABEL_10;
  }

  LOBYTE(v12) = 0;
  v7 = sub_10001A498(infoCopy, &v12);
  v8 = v7;
  if (v12)
  {
    v6 = [(ADRapportLink *)self _remoteDeviceForPeerInfo:v7];

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "[ADRapportLink _destinationIDForPeerInfo:]";
    v14 = 2112;
    v15 = infoCopy;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s unable to find device with peer info: %@", &v12, 0x16u);
  }

  v6 = 0;
LABEL_10:
  identifier = [v6 identifier];

  return identifier;
}

- (id)_destinationIDForDeviceAssistantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    activeDevices = [(RPCompanionLinkClient *)self->_client activeDevices];
    v6 = [activeDevices countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(activeDevices);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = sub_100191B80(v10);
          v12 = [v11 isEqualToString:identifierCopy];

          if (v12)
          {
            identifier = [v10 identifier];

            goto LABEL_15;
          }
        }

        v7 = [activeDevices countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[ADRapportLink _destinationIDForDeviceAssistantIdentifier:]";
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s unable to find device with assistantIdentifier: %@", buf, 0x16u);
  }

  identifier = 0;
LABEL_15:

  return identifier;
}

- (id)_destinationIDForDeviceHomeKitAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    activeDevices = [(RPCompanionLinkClient *)self->_client activeDevices];
    v6 = [activeDevices countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(activeDevices);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          homeKitIdentifier = [v10 homeKitIdentifier];
          v12 = [homeKitIdentifier isEqual:identifierCopy];

          if (v12)
          {
            identifier = [v10 identifier];

            goto LABEL_15;
          }
        }

        v7 = [activeDevices countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[ADRapportLink _destinationIDForDeviceHomeKitAccessoryIdentifier:]";
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s unable to find device with homeKitAccessoryIdentifier: %@", buf, 0x16u);
  }

  identifier = 0;
LABEL_15:

  return identifier;
}

- (id)_destinationIDForDeviceIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    activeDevices = [(RPCompanionLinkClient *)self->_client activeDevices];
    v6 = [activeDevices countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(activeDevices);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          idsDeviceIdentifier = [v10 idsDeviceIdentifier];
          v12 = [idsDeviceIdentifier isEqualToString:identifierCopy];

          if (v12)
          {
            identifier = [v10 identifier];

            goto LABEL_15;
          }
        }

        v7 = [activeDevices countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[ADRapportLink _destinationIDForDeviceIDSIdentifier:]";
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s unable to find device with uniqueIDSIdentifier: %@", buf, 0x16u);
  }

  identifier = 0;
LABEL_15:

  return identifier;
}

- (void)_sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  iDCopy = iD;
  optionsCopy = options;
  handlerCopy = handler;
  v17 = +[ADFMDMonitor sharedManager];
  isLostModeActive = [v17 isLostModeActive];

  if (isLostModeActive)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[ADRapportLink _sendRequestID:request:destinationID:options:responseHandler:]";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Lost mode is active, not sending any outbound requests", &v20, 0xCu);
    }
  }

  else
  {
    [(RPCompanionLinkClient *)self->_client sendRequestID:dCopy request:requestCopy destinationID:iDCopy options:optionsCopy responseHandler:handlerCopy];
  }
}

- (void)_sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  typeCopy = type;
  completionCopy = completion;
  optionsCopy = options;
  iDCopy = iD;
  v19 = [(ADRapportLink *)self _buildRequestFromMessageType:typeCopy andMessagePayload:payload];
  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v29 = "[ADRapportLink _sendRequestID:messageType:messagePayload:destinationID:options:completion:]";
    v30 = 2112;
    v31 = dCopy;
    v32 = 2112;
    v33 = typeCopy;
    v34 = 2112;
    v35 = v19;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Sending request for requestID=%@, messageType=%@ : %@", buf, 0x2Au);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A3154;
  v24[3] = &unk_100510388;
  v25 = dCopy;
  v26 = typeCopy;
  v27 = completionCopy;
  v21 = completionCopy;
  v22 = typeCopy;
  v23 = dCopy;
  [(ADRapportLink *)self _sendRequestID:v23 request:v19 destinationID:iDCopy options:optionsCopy responseHandler:v24];
}

- (BOOL)_validateIncomingRequest:(id)request options:(id)options error:(id *)error messageID:(id *)d messageType:(id *)type messagePayload:(id *)payload senderPeerInfo:(id *)info
{
  requestCopy = request;
  optionsCopy = options;
  if (error)
  {
    *error = 0;
  }

  if (d)
  {
    *d = 0;
  }

  if (type)
  {
    *type = 0;
  }

  if (payload)
  {
    *payload = 0;
  }

  if (info)
  {
    *info = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [requestCopy objectForKey:@"messageID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v84 = "[ADRapportLink _validateIncomingRequest:options:error:messageID:messageType:messagePayload:senderPeerInfo:]";
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s malformed message id", buf, 0xCu);
      }

      v27 = [AFError errorWithCode:11 description:@"Malformed message id."];
      v23 = v27;
      if (error)
      {
        v28 = v27;
        v25 = 0;
        *error = v23;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_95;
    }

    v73 = optionsCopy;
    v17 = v16;
    v18 = [requestCopy objectForKey:@"type"];
    objc_opt_class();
    v75 = v18;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v84 = "[ADRapportLink _validateIncomingRequest:options:error:messageID:messageType:messagePayload:senderPeerInfo:]";
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s malformed message type", buf, 0xCu);
      }

      v30 = [AFError errorWithCode:11 description:@"Malformed message type."];
      v23 = v30;
      v16 = v17;
      if (error)
      {
        v31 = v30;
        v25 = 0;
        *error = v23;
      }

      else
      {
        v25 = 0;
      }

      optionsCopy = v73;
      v34 = v75;
      goto LABEL_94;
    }

    v19 = [requestCopy objectForKey:@"payload"];
    objc_opt_class();
    v72 = v19;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = AFSiriLogContextDaemon;
      v16 = v17;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v84 = "[ADRapportLink _validateIncomingRequest:options:error:messageID:messageType:messagePayload:senderPeerInfo:]";
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s malformed message payload", buf, 0xCu);
      }

      v33 = [AFError errorWithCode:11 description:@"Malformed message payload."];
      v23 = v33;
      optionsCopy = v73;
      v34 = v75;
      v35 = v72;
      if (error)
      {
        v36 = v33;
        v25 = 0;
        *error = v23;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_93;
    }

    v20 = [requestCopy objectForKey:@"idsDeviceId"];
    v16 = v17;
    if (v20)
    {
      objc_opt_class();
      optionsCopy = v73;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v71 = v20;
        v39 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v84 = "[ADRapportLink _validateIncomingRequest:options:error:messageID:messageType:messagePayload:senderPeerInfo:]";
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s malformed IDS id", buf, 0xCu);
        }

        v40 = [AFError errorWithCode:11 description:@"Malformed IDS id."];
        v23 = v40;
        v34 = v75;
        v35 = v72;
        if (error)
        {
          v41 = v40;
          v25 = 0;
          *error = v23;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_92;
      }

      if (![v20 length])
      {

        v20 = 0;
      }
    }

    else
    {
      optionsCopy = v73;
    }

    v37 = [requestCopy objectForKey:@"rapportDeviceId"];
    v71 = v20;
    if (v37)
    {
      v38 = v37;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v70 = v38;
        v42 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v84 = "[ADRapportLink _validateIncomingRequest:options:error:messageID:messageType:messagePayload:senderPeerInfo:]";
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s malformed Rapport id", buf, 0xCu);
        }

        v43 = [AFError errorWithCode:11 description:@"Malformed Rapport id."];
        v23 = v43;
        v34 = v75;
        v35 = v72;
        if (error)
        {
          v44 = v43;
          v25 = 0;
          *error = v23;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_91;
      }

      if ([v38 length])
      {
        v70 = v38;
        goto LABEL_56;
      }
    }

    v70 = 0;
LABEL_56:
    v45 = [requestCopy objectForKey:@"homeDeviceId"];
    if (v45)
    {
      v74 = v45;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v51 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v84 = "[ADRapportLink _validateIncomingRequest:options:error:messageID:messageType:messagePayload:senderPeerInfo:]";
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%s malformed HomeKit id", buf, 0xCu);
        }

        v52 = [AFError errorWithCode:11 description:@"Malformed HomeKit id."];
        v23 = v52;
        v34 = v75;
        v35 = v72;
        if (error)
        {
          v53 = v52;
          v25 = 0;
          *error = v23;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_90;
      }

      if ([v74 length])
      {
LABEL_61:
        v46 = [requestCopy objectForKey:@"assistantId"];
        if (v46)
        {
          v47 = v46;
          objc_opt_class();
          v48 = v47;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v69 = v47;
            v64 = AFSiriLogContextDaemon;
            v34 = v75;
            v35 = v72;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v84 = "[ADRapportLink _validateIncomingRequest:options:error:messageID:messageType:messagePayload:senderPeerInfo:]";
              _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%s malformed Assistant id", buf, 0xCu);
            }

            v65 = [AFError errorWithCode:11 description:@"Malformed Assistant id."];
            v23 = v65;
            if (error)
            {
              v66 = v65;
              v25 = 0;
              *error = v23;
            }

            else
            {
              v25 = 0;
            }

            goto LABEL_89;
          }

          v49 = [v47 length];
          v50 = v71;
          if (!v49)
          {

            v48 = 0;
          }
        }

        else
        {
          v48 = 0;
          v50 = v71;
        }

        v54 = +[ADDeviceCircleManager sharedInstance];
        v55 = v54;
        if (v50 && v48)
        {
          [v54 _setAssistantId:v48 forDeviceWithIdsDeviceUniqueIdentifier:v50];
        }

        v68 = v55;
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_1000A3E14;
        v78[3] = &unk_100510360;
        v79 = v50;
        v80 = v70;
        v81 = v74;
        v69 = v48;
        v82 = v69;
        v56 = [AFPeerInfo newWithBuilder:v78];
        v57 = sub_10001A498(v56, 0);

        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1000A3E88;
        v76[3] = &unk_10051D9B8;
        v77 = optionsCopy;
        v58 = [AFPeerInfo newWithBuilder:v76];
        v59 = AFPeerInfoMerge();

        if (d)
        {
          v60 = v16;
          *d = v16;
        }

        v34 = v75;
        v35 = v72;
        if (type)
        {
          v61 = v75;
          *type = v75;
        }

        if (payload)
        {
          v62 = v72;
          *payload = v72;
        }

        if (info)
        {
          v63 = v59;
          *info = v59;
        }

        v23 = 0;
        v25 = 1;
LABEL_89:

LABEL_90:
LABEL_91:

LABEL_92:
LABEL_93:

LABEL_94:
LABEL_95:

        goto LABEL_96;
      }
    }

    v74 = 0;
    goto LABEL_61;
  }

  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v84 = "[ADRapportLink _validateIncomingRequest:options:error:messageID:messageType:messagePayload:senderPeerInfo:]";
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s malformed request dictionary", buf, 0xCu);
  }

  v22 = [AFError errorWithCode:11 description:@"Malformed request dictionary."];
  v23 = v22;
  if (error)
  {
    v24 = v22;
    v25 = 0;
    *error = v23;
  }

  else
  {
    v25 = 0;
  }

LABEL_96:

  return v25;
}

- (void)_addLocalDeviceInfoToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dispatch_assert_queue_V2(self->_queue);
  if (!dictionaryCopy)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"ADRapportLink.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"dictionary != nil"}];
  }

  localDevice = [(RPCompanionLinkClient *)self->_client localDevice];
  v6 = +[ADDeviceCircleManager sharedInstance];
  localPeerInfo = [v6 localPeerInfo];

  idsDeviceIdentifier = [localDevice idsDeviceIdentifier];
  if (![idsDeviceIdentifier length])
  {
    idsDeviceUniqueIdentifier = [localPeerInfo idsDeviceUniqueIdentifier];

    idsDeviceIdentifier = idsDeviceUniqueIdentifier;
  }

  if ([idsDeviceIdentifier length])
  {
    [dictionaryCopy setObject:idsDeviceIdentifier forKey:@"idsDeviceId"];
  }

  effectiveIdentifier = [localDevice effectiveIdentifier];
  if (![effectiveIdentifier length])
  {
    rapportEffectiveIdentifier = [localPeerInfo rapportEffectiveIdentifier];

    effectiveIdentifier = rapportEffectiveIdentifier;
  }

  if ([effectiveIdentifier length])
  {
    [dictionaryCopy setObject:effectiveIdentifier forKey:@"rapportDeviceId"];
  }

  homeKitIdentifier = [localDevice homeKitIdentifier];
  uUIDString = [homeKitIdentifier UUIDString];

  if (![uUIDString length])
  {
    homeKitAccessoryIdentifier = [localPeerInfo homeKitAccessoryIdentifier];

    uUIDString = homeKitAccessoryIdentifier;
  }

  if ([uUIDString length])
  {
    [dictionaryCopy setObject:uUIDString forKey:@"homeDeviceId"];
  }

  assistantIdentifier = [localPeerInfo assistantIdentifier];
  if ([assistantIdentifier length])
  {
    [dictionaryCopy setObject:assistantIdentifier forKey:@"assistantId"];
  }
}

- (id)_buildRequestFromMessageType:(id)type andMessagePayload:(id)payload
{
  typeCopy = type;
  payloadCopy = payload;
  dispatch_assert_queue_V2(self->_queue);
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];

  [v8 setObject:uUIDString forKey:@"messageID"];
  if ([typeCopy length])
  {
    [v8 setObject:typeCopy forKey:@"type"];
  }

  if (payloadCopy)
  {
    [v8 setObject:payloadCopy forKey:@"payload"];
  }

  [(ADRapportLink *)self _addLocalDeviceInfoToDictionary:v8];

  return v8;
}

- (id)_buildResponse
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(NSMutableDictionary);
  [(ADRapportLink *)self _addLocalDeviceInfoToDictionary:v3];

  return v3;
}

- (void)_registerRequestID:(id)d options:(id)options handler:(id)handler
{
  handlerCopy = handler;
  client = self->_client;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A4360;
  v11[3] = &unk_100510338;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(RPCompanionLinkClient *)client registerRequestID:d options:options handler:v11];
}

- (void)_enumerateListenersUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    setRepresentation = [(NSHashTable *)self->_listeners setRepresentation];
    v6 = [setRepresentation countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(setRepresentation);
          }

          blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [setRepresentation countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_handleDidLoseDevice:(id)device
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A479C;
  v4[3] = &unk_1005102E8;
  selfCopy = self;
  deviceCopy = device;
  v3 = deviceCopy;
  [(ADRapportLink *)selfCopy _enumerateListenersUsingBlock:v4];
}

- (void)_handleDidUpdateDevice:(id)device changes:(unsigned int)changes
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A4898;
  v6[3] = &unk_100510310;
  selfCopy = self;
  deviceCopy = device;
  changesCopy = changes;
  v5 = deviceCopy;
  [(ADRapportLink *)selfCopy _enumerateListenersUsingBlock:v6];
}

- (void)_handleDidFindDevice:(id)device
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A4990;
  v4[3] = &unk_1005102E8;
  selfCopy = self;
  deviceCopy = device;
  v3 = deviceCopy;
  [(ADRapportLink *)selfCopy _enumerateListenersUsingBlock:v4];
}

- (void)_handleDidUpdateLocalDevice:(id)device
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A4A84;
  v4[3] = &unk_1005102E8;
  selfCopy = self;
  deviceCopy = device;
  v3 = deviceCopy;
  [(ADRapportLink *)selfCopy _enumerateListenersUsingBlock:v4];
}

- (void)_handleDidInvalidate
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000A4B50;
  v2[3] = &unk_1005102C0;
  v2[4] = self;
  [(ADRapportLink *)self _enumerateListenersUsingBlock:v2];
}

- (void)_handleDidInterrupt
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000A4C1C;
  v2[3] = &unk_1005102C0;
  v2[4] = self;
  [(ADRapportLink *)self _enumerateListenersUsingBlock:v2];
}

- (void)_invalidate
{
  client = self->_client;
  if (client)
  {
    [(RPCompanionLinkClient *)client invalidate];
    v4 = self->_client;
    self->_client = 0;
  }

  listeners = self->_listeners;

  [(NSHashTable *)listeners removeAllObjects];
}

- (void)invalidate
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    client = self->_client;
    *buf = 136315650;
    v8 = "[ADRapportLink invalidate]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2112;
    v12 = client;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4DE8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateLocalDeviceIsContextCollector:(BOOL)collector
{
  collectorCopy = collector;
  if (+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled])
  {
    client = self->_client;
    if (collectorCopy)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000A4EE0;
      v8[3] = &unk_100510298;
      v9 = collectorCopy;
      [(RPCompanionLinkClient *)client setLocalDeviceAsContextCollectorWithCompletion:v8];
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000A4FE4;
      v6[3] = &unk_100510298;
      v7 = 0;
      [(RPCompanionLinkClient *)client removeLocalDeviceAsContextCollectorWithCompletion:v6];
    }
  }
}

- (void)sendRequestToContextCollectorThroughOnDemandConnection:(id)connection messageType:(id)type messagePayload:(id)payload options:(id)options completion:(id)completion
{
  connectionCopy = connection;
  typeCopy = type;
  payloadCopy = payload;
  optionsCopy = options;
  completionCopy = completion;
  if (completionCopy)
  {
    if (+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled]&& AFSupportsHALOnDemandRapportConnection())
    {
      v17 = [(ADRapportLink *)self _buildRequestFromMessageType:typeCopy andMessagePayload:payloadCopy];
      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        client = self->_client;
        *buf = 136315394;
        v25 = "[ADRapportLink sendRequestToContextCollectorThroughOnDemandConnection:messageType:messagePayload:options:completion:]";
        v26 = 2112;
        v27 = client;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s #hal #on-demand sendRequestToContextCollector client: %@", buf, 0x16u);
      }

      v20 = self->_client;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000A52F0;
      v22[3] = &unk_100517D68;
      v23 = completionCopy;
      [(RPCompanionLinkClient *)v20 sendRequestID:connectionCopy request:v17 options:optionsCopy responseHandler:v22];
    }

    else
    {
      v21 = [AFError errorWithCode:1017 description:0 underlyingError:0];
      (*(completionCopy + 2))(completionCopy, 0, v21);
    }
  }
}

- (void)sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload toPeer:(id)peer options:(id)options completion:(id)completion
{
  dCopy = d;
  typeCopy = type;
  payloadCopy = payload;
  peerCopy = peer;
  optionsCopy = options;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5474;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = peerCopy;
  v32 = optionsCopy;
  v33 = completionCopy;
  v29 = dCopy;
  v30 = typeCopy;
  v31 = payloadCopy;
  v21 = optionsCopy;
  v22 = payloadCopy;
  v23 = typeCopy;
  v24 = dCopy;
  v25 = completionCopy;
  v26 = peerCopy;
  dispatch_async(queue, block);
}

- (void)sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload toDeviceWithAssistantIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  dCopy = d;
  typeCopy = type;
  payloadCopy = payload;
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5690;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = identifierCopy;
  v32 = optionsCopy;
  v33 = completionCopy;
  v29 = dCopy;
  v30 = typeCopy;
  v31 = payloadCopy;
  v21 = optionsCopy;
  v22 = payloadCopy;
  v23 = typeCopy;
  v24 = dCopy;
  v25 = completionCopy;
  v26 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload toDeviceWithHomeKitAccessoryIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  dCopy = d;
  typeCopy = type;
  payloadCopy = payload;
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A58AC;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = identifierCopy;
  v32 = optionsCopy;
  v33 = completionCopy;
  v29 = dCopy;
  v30 = typeCopy;
  v31 = payloadCopy;
  v21 = optionsCopy;
  v22 = payloadCopy;
  v23 = typeCopy;
  v24 = dCopy;
  v25 = completionCopy;
  v26 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)sendRequestID:(id)d messageType:(id)type messagePayload:(id)payload toDeviceWithIDSDeviceID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  typeCopy = type;
  payloadCopy = payload;
  iDCopy = iD;
  optionsCopy = options;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5AC8;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = iDCopy;
  v32 = optionsCopy;
  v33 = completionCopy;
  v29 = dCopy;
  v30 = typeCopy;
  v31 = payloadCopy;
  v21 = optionsCopy;
  v22 = payloadCopy;
  v23 = typeCopy;
  v24 = dCopy;
  v25 = completionCopy;
  v26 = iDCopy;
  dispatch_async(queue, block);
}

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  iDCopy = iD;
  optionsCopy = options;
  handlerCopy = handler;
  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000A5CB4;
  v23[3] = &unk_1005183C8;
  v23[4] = self;
  v24 = dCopy;
  v25 = requestCopy;
  v26 = iDCopy;
  v27 = optionsCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = optionsCopy;
  v20 = iDCopy;
  v21 = requestCopy;
  v22 = dCopy;
  dispatch_async(queue, v23);
}

- (void)setRequestHandler:(id)handler forRequestID:(id)d messageType:(id)type
{
  handlerCopy = handler;
  dCopy = d;
  typeCopy = type;
  if ([dCopy length] && objc_msgSend(typeCopy, "length"))
  {
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A5E6C;
    v13[3] = &unk_10051DB18;
    v13[4] = self;
    v14 = dCopy;
    v15 = handlerCopy;
    v16 = typeCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "[ADRapportLink setRequestHandler:forRequestID:messageType:]";
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = typeCopy;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Empty requestID or messageType: %@, %@", buf, 0x20u);
    }
  }
}

- (void)registerRequestID:(id)d options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5FB4;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = dCopy;
  v13 = optionsCopy;
  v9 = optionsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A667C;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = dCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (BOOL)canReachPersonalDevices
{
  localDevice = [(ADRapportLink *)self localDevice];
  homeKitIdentifier = [localDevice homeKitIdentifier];
  v4 = homeKitIdentifier != 0;

  return v4;
}

- (void)setDestinationDevice:(id)device
{
  deviceCopy = device;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A69E4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)setServiceType:(id)type
{
  typeCopy = type;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6A90;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = typeCopy;
  v6 = typeCopy;
  dispatch_async(queue, v7);
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6B3C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_async(queue, v7);
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6BE0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_async(queue, v7);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    client = self->_client;
    *buf = 136315650;
    v12 = "[ADRapportLink activateWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    v15 = 2112;
    v16 = client;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A6D2C;
  v9[3] = &unk_10051E038;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, v9);
}

- (ADRapportLink)initWithQueue:(id)queue configuration:(id)configuration
{
  queueCopy = queue;
  configurationCopy = configuration;
  v96.receiver = self;
  v96.super_class = ADRapportLink;
  v8 = [(ADRapportLink *)&v96 init];
  if (!v8)
  {
    goto LABEL_96;
  }

  if (queueCopy)
  {
    v9 = queueCopy;
    queue = v8->_queue;
    v8->_queue = v9;
  }

  else
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);

    v13 = dispatch_queue_create("com.apple.assistant.rapport-link", v12);
    queue = v8->_queue;
    v8->_queue = v13;
  }

  v14 = [configurationCopy copy];
  configuration = v8->_configuration;
  v8->_configuration = v14;

  v16 = +[NSHashTable weakObjectsHashTable];
  listeners = v8->_listeners;
  v8->_listeners = v16;

  v18 = objc_alloc_init(NSMutableDictionary);
  handlersByRequestIDAndMessageType = v8->_handlersByRequestIDAndMessageType;
  v8->_handlersByRequestIDAndMessageType = v18;

  v20 = objc_alloc_init(RPCompanionLinkClient);
  client = v8->_client;
  v8->_client = v20;

  [(RPCompanionLinkClient *)v8->_client setDispatchQueue:v8->_queue];
  flags = [(RPCompanionLinkClient *)v8->_client flags];
  controlFlags = [(RPCompanionLinkClient *)v8->_client controlFlags];
  discoveryOptions = [(ADRapportLinkConfiguration *)v8->_configuration discoveryOptions];
  includesFamily = [discoveryOptions includesFamily];

  if (includesFamily == 2)
  {
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s iCloud Family included", buf, 0xCu);
    }

    controlFlags |= 0x1000uLL;
  }

  else if (includesFamily == 1)
  {
    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s iCloud Family excluded", buf, 0xCu);
    }

    controlFlags &= ~0x1000uLL;
  }

  discoveryOptions2 = [(ADRapportLinkConfiguration *)v8->_configuration discoveryOptions];
  includesHome = [discoveryOptions2 includesHome];

  if (includesHome == 2)
  {
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s HomeKit shared homes included", buf, 0xCu);
    }

    controlFlags |= 0x800uLL;
  }

  else if (includesHome == 1)
  {
    v30 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s HomeKit shared homes excluded", buf, 0xCu);
    }

    controlFlags &= ~0x800uLL;
  }

  connectionOptions = [(ADRapportLinkConfiguration *)v8->_configuration connectionOptions];
  usesOnDemandConnection = [connectionOptions usesOnDemandConnection];

  if (usesOnDemandConnection == 2)
  {
    v38 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s On-demand Connection enabled", buf, 0xCu);
    }

    controlFlags |= 0x200uLL;
    goto LABEL_37;
  }

  if (usesOnDemandConnection == 1)
  {
    goto LABEL_26;
  }

  if (!usesOnDemandConnection)
  {
    v34 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s usesOnDemandConnection Unspecified - default false", buf, 0xCu);
    }

LABEL_26:
    discoveryOptions3 = [(ADRapportLinkConfiguration *)v8->_configuration discoveryOptions];
    includesRemoraDevices = [discoveryOptions3 includesRemoraDevices];

    if (includesRemoraDevices == 2)
    {
      v39 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v98 = "[ADRapportLink initWithQueue:configuration:]";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Sidekick endpoints included", buf, 0xCu);
      }

      controlFlags |= 0x400000000uLL;
      flags = (flags | 0x2000);
    }

    else if (includesRemoraDevices == 1)
    {
      v37 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v98 = "[ADRapportLink initWithQueue:configuration:]";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Sidekick endpoints excluded", buf, 0xCu);
      }

      controlFlags &= ~0x400000000uLL;
      flags = (flags & 0xFFFFDFFF);
    }
  }

LABEL_37:
  transportOptions = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  allowsAWDL = [transportOptions allowsAWDL];

  if (allowsAWDL == 2)
  {
    v43 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s AWDL enabled", buf, 0xCu);
    }

    controlFlags = controlFlags & 0xFFFFFFFFFFBFFFF7 | 8;
  }

  else if (allowsAWDL == 1)
  {
    v42 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s AWDL disabled", buf, 0xCu);
    }

    controlFlags = controlFlags & 0xFFFFFFFFFFBFFFF7 | 0x400000;
  }

  transportOptions2 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  allowsBLE = [transportOptions2 allowsBLE];

  if (allowsBLE == 2)
  {
    v47 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s BLE enabled", buf, 0xCu);
    }

    controlFlags |= 2uLL;
  }

  else if (allowsBLE == 1)
  {
    v46 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s BLE disabled", buf, 0xCu);
    }

    controlFlags &= ~2uLL;
  }

  transportOptions3 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  allowsForceAWDL = [transportOptions3 allowsForceAWDL];

  if (allowsForceAWDL == 2)
  {
    v50 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s ForceAWDL connection enabled", buf, 0xCu);
    }

    controlFlags = controlFlags & 0xFFFFFFFFFFBDFFF7 | 0x20008;
  }

  transportOptions4 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  allowsForceBLE = [transportOptions4 allowsForceBLE];

  if (allowsForceBLE == 2)
  {
    v53 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s ForceBLE enabled", buf, 0xCu);
    }

    controlFlags |= 0x8002uLL;
  }

  transportOptions5 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  allowsBTPipe = [transportOptions5 allowsBTPipe];

  if (allowsBTPipe == 2)
  {
    v57 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s BTPipe enabled", buf, 0xCu);
    }

    controlFlags |= 0x20uLL;
  }

  else if (allowsBTPipe == 1)
  {
    v56 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s BTPipe disabled", buf, 0xCu);
    }

    controlFlags &= ~0x20uLL;
  }

  transportOptions6 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  allowsInfraWiFi = [transportOptions6 allowsInfraWiFi];

  if (allowsInfraWiFi == 2)
  {
    v61 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s Infra WiFi enabled", buf, 0xCu);
    }

    controlFlags = controlFlags & 0xFFFFFFFFFFDFFFFBLL | 4;
  }

  else if (allowsInfraWiFi == 1)
  {
    v60 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s Infra WiFi disabled", buf, 0xCu);
    }

    controlFlags = controlFlags & 0xFFFFFFFFFFDFFFFBLL | 0x200000;
  }

  enablesProximityTracking = [(ADRapportLinkConfiguration *)v8->_configuration enablesProximityTracking];
  if (enablesProximityTracking == 2)
  {
    v64 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%s Proximity enabled", buf, 0xCu);
    }

    controlFlags |= 0x200000000uLL;
  }

  else if (enablesProximityTracking == 1)
  {
    v63 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Proximity disabled", buf, 0xCu);
    }

    controlFlags &= ~0x200000000uLL;
  }

  transportOptions7 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  noL2Cap = [transportOptions7 noL2Cap];

  if (noL2Cap == 2)
  {
    v67 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Disable Bluetooth L2Cap connection", buf, 0xCu);
    }

    controlFlags = controlFlags & 0xFFFFFDFFFFFFFEFFLL | 0x20000000000;
  }

  v68 = controlFlags | 0x4000000000000;
  [(RPCompanionLinkClient *)v8->_client setControlFlags:v68];
  [(RPCompanionLinkClient *)v8->_client setFlags:flags];
  connectionOptions2 = [(ADRapportLinkConfiguration *)v8->_configuration connectionOptions];
  v70 = [connectionOptions2 usesOnDemandConnection] == 2;

  if (v70)
  {
    v71 = objc_alloc_init(RPCompanionLinkDevice);
    [v71 setIdentifier:@"rapport:rdid:ContextCollector"];
    [(RPCompanionLinkClient *)v8->_client setDestinationDevice:v71];
    v72 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v73 = v8->_client;
      *buf = 136315650;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      v99 = 2112;
      v100 = v71;
      v101 = 2112;
      v102 = v73;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "%s #hal #on-demand Setting destination device:%@ on rapportLink:%@", buf, 0x20u);
    }
  }

  else
  {
    v74 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v75 = v8->_client;
      v76 = v8->_configuration;
      *buf = 136316162;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      v99 = 2112;
      v100 = v75;
      v101 = 2112;
      v102 = v76;
      v103 = 2048;
      v104 = v68;
      v105 = 1024;
      v106 = flags;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "%s #hal init rapportLink:%@ configuration:%@ controlFlags:%llx flags:%dx", buf, 0x30u);
    }
  }

  objc_initWeak(buf, v8);
  v77 = v8->_client;
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_1000A7D84;
  v94[3] = &unk_10051B5F0;
  objc_copyWeak(&v95, buf);
  [(RPCompanionLinkClient *)v77 setInterruptionHandler:v94];
  v78 = v8->_client;
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_1000A7DC4;
  v92[3] = &unk_10051B5F0;
  objc_copyWeak(&v93, buf);
  [(RPCompanionLinkClient *)v78 setInvalidationHandler:v92];
  v79 = v8->_client;
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1000A7E04;
  v90[3] = &unk_1005101D8;
  objc_copyWeak(&v91, buf);
  [(RPCompanionLinkClient *)v79 setLocalDeviceUpdatedHandler:v90];
  v80 = v8->_client;
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_1000A7E60;
  v88[3] = &unk_1005101D8;
  objc_copyWeak(&v89, buf);
  [(RPCompanionLinkClient *)v80 setDeviceLostHandler:v88];
  v81 = v8->_client;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_1000A7EBC;
  v86[3] = &unk_1005101D8;
  objc_copyWeak(&v87, buf);
  [(RPCompanionLinkClient *)v81 setDeviceFoundHandler:v86];
  v82 = v8->_client;
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_1000A7F18;
  v84[3] = &unk_100510200;
  objc_copyWeak(&v85, buf);
  [(RPCompanionLinkClient *)v82 setDeviceChangedHandler:v84];
  objc_destroyWeak(&v85);
  objc_destroyWeak(&v87);
  objc_destroyWeak(&v89);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&v93);
  objc_destroyWeak(&v95);
  objc_destroyWeak(buf);
LABEL_96:

  return v8;
}

- (void)dealloc
{
  [(ADRapportLink *)self _invalidate];
  v3.receiver = self;
  v3.super_class = ADRapportLink;
  [(ADRapportLink *)&v3 dealloc];
}

+ (void)updateSiriInfoWithObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  _sharedLinkForSiriInfo = [self _sharedLinkForSiriInfo];
  [_sharedLinkForSiriInfo updateSiriInfoWithObject:objectCopy forKey:keyCopy];
}

+ (id)siriInfoToBeBroadcasted
{
  _sharedLinkForSiriInfo = [self _sharedLinkForSiriInfo];
  siriInfoToBeBroadcasted = [_sharedLinkForSiriInfo siriInfoToBeBroadcasted];

  return siriInfoToBeBroadcasted;
}

+ (id)_sharedLinkForSiriInfo
{
  if (qword_10058FF50 != -1)
  {
    dispatch_once(&qword_10058FF50, &stru_1005103A8);
  }

  v3 = qword_10058FF58;

  return v3;
}

@end