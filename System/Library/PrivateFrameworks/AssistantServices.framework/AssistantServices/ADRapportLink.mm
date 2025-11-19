@interface ADRapportLink
+ (id)_sharedLinkForSiriInfo;
+ (id)siriInfoToBeBroadcasted;
+ (void)updateSiriInfoWithObject:(id)a3 forKey:(id)a4;
- (ADRapportLink)initWithQueue:(id)a3 configuration:(id)a4;
- (BOOL)_validateIncomingRequest:(id)a3 options:(id)a4 error:(id *)a5 messageID:(id *)a6 messageType:(id *)a7 messagePayload:(id *)a8 senderPeerInfo:(id *)a9;
- (BOOL)canReachPersonalDevices;
- (id)_buildRequestFromMessageType:(id)a3 andMessagePayload:(id)a4;
- (id)_buildResponse;
- (id)_destinationIDForDeviceAssistantIdentifier:(id)a3;
- (id)_destinationIDForDeviceHomeKitAccessoryIdentifier:(id)a3;
- (id)_destinationIDForDeviceIDSIdentifier:(id)a3;
- (id)_destinationIDForPeerInfo:(id)a3;
- (id)_remoteDeviceForPeerInfo:(id)a3;
- (id)_siriInfo;
- (void)_addLocalDeviceInfoToDictionary:(id)a3;
- (void)_enumerateListenersUsingBlock:(id)a3;
- (void)_handleDidFindDevice:(id)a3;
- (void)_handleDidInterrupt;
- (void)_handleDidInvalidate;
- (void)_handleDidLoseDevice:(id)a3;
- (void)_handleDidUpdateDevice:(id)a3 changes:(unsigned int)a4;
- (void)_handleDidUpdateLocalDevice:(id)a3;
- (void)_invalidate;
- (void)_registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)_sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 destinationID:(id)a6 options:(id)a7 completion:(id)a8;
- (void)_sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)activateWithCompletion:(id)a3;
- (void)addListener:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)registerRequestID:(id)a3 options:(id)a4;
- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)removeListener:(id)a3;
- (void)sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 toDeviceWithAssistantIdentifier:(id)a6 options:(id)a7 completion:(id)a8;
- (void)sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 toDeviceWithHomeKitAccessoryIdentifier:(id)a6 options:(id)a7 completion:(id)a8;
- (void)sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 toDeviceWithIDSDeviceID:(id)a6 options:(id)a7 completion:(id)a8;
- (void)sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 toPeer:(id)a6 options:(id)a7 completion:(id)a8;
- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)sendRequestToContextCollectorThroughOnDemandConnection:(id)a3 messageType:(id)a4 messagePayload:(id)a5 options:(id)a6 completion:(id)a7;
- (void)setDestinationDevice:(id)a3;
- (void)setRequestHandler:(id)a3 forRequestID:(id)a4 messageType:(id)a5;
- (void)setServiceType:(id)a3;
- (void)updateLocalDeviceIsContextCollector:(BOOL)a3;
@end

@implementation ADRapportLink

- (id)_siriInfo
{
  v2 = [(RPCompanionLinkClient *)self->_client siriInfo];
  v3 = [v2 copy];

  return v3;
}

- (id)_remoteDeviceForPeerInfo:(id)a3
{
  v4 = a3;
  v5 = [(RPCompanionLinkClient *)self->_client activeDevices];
  v6 = [v4 idsDeviceUniqueIdentifier];
  if (![v6 length])
  {
    goto LABEL_11;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = v5;
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
    v13 = [v12 idsDeviceIdentifier];
    v14 = [v13 isEqualToString:v6];

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
  v15 = [v4 rapportEffectiveIdentifier];
  if (![v15 length])
  {
LABEL_22:

    goto LABEL_23;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = v5;
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
    v22 = [v21 effectiveIdentifier];
    v23 = [v22 isEqualToString:v15];

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
  v24 = [v4 homeKitAccessoryIdentifier];
  if ([v24 length])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = v5;
    v25 = v5;
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
        v31 = [v30 homeKitIdentifier];
        v32 = [v31 UUIDString];
        v33 = [v32 isEqualToString:v24];

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

      v5 = v44;
      if (v37)
      {
        goto LABEL_54;
      }

      goto LABEL_34;
    }

LABEL_32:

    v5 = v44;
  }

LABEL_34:
  v34 = [v4 assistantIdentifier];
  v35 = [v34 uppercaseString];

  if ([v35 length])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = v5;
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
          v42 = [v41 isEqualToString:v35];

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

- (id)_destinationIDForPeerInfo:(id)a3
{
  v4 = a3;
  v5 = [(ADRapportLink *)self _remoteDeviceForPeerInfo:v4];
  if (v5)
  {
    v6 = v5;
    goto LABEL_10;
  }

  LOBYTE(v12) = 0;
  v7 = sub_10001A498(v4, &v12);
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
    v15 = v4;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s unable to find device with peer info: %@", &v12, 0x16u);
  }

  v6 = 0;
LABEL_10:
  v10 = [v6 identifier];

  return v10;
}

- (id)_destinationIDForDeviceAssistantIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(RPCompanionLinkClient *)self->_client activeDevices];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = sub_100191B80(v10);
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v14 = [v10 identifier];

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
    v23 = v4;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s unable to find device with assistantIdentifier: %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (id)_destinationIDForDeviceHomeKitAccessoryIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(RPCompanionLinkClient *)self->_client activeDevices];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 homeKitIdentifier];
          v12 = [v11 isEqual:v4];

          if (v12)
          {
            v14 = [v10 identifier];

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
    v23 = v4;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s unable to find device with homeKitAccessoryIdentifier: %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (id)_destinationIDForDeviceIDSIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(RPCompanionLinkClient *)self->_client activeDevices];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 idsDeviceIdentifier];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v14 = [v10 identifier];

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
    v23 = v4;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s unable to find device with uniqueIDSIdentifier: %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (void)_sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[ADFMDMonitor sharedManager];
  v18 = [v17 isLostModeActive];

  if (v18)
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
    [(RPCompanionLinkClient *)self->_client sendRequestID:v12 request:v13 destinationID:v14 options:v15 responseHandler:v16];
  }
}

- (void)_sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 destinationID:(id)a6 options:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = [(ADRapportLink *)self _buildRequestFromMessageType:v15 andMessagePayload:a5];
  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v29 = "[ADRapportLink _sendRequestID:messageType:messagePayload:destinationID:options:completion:]";
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = v19;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Sending request for requestID=%@, messageType=%@ : %@", buf, 0x2Au);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A3154;
  v24[3] = &unk_100510388;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  [(ADRapportLink *)self _sendRequestID:v23 request:v19 destinationID:v18 options:v17 responseHandler:v24];
}

- (BOOL)_validateIncomingRequest:(id)a3 options:(id)a4 error:(id *)a5 messageID:(id *)a6 messageType:(id *)a7 messagePayload:(id *)a8 senderPeerInfo:(id *)a9
{
  v14 = a3;
  v15 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v14 objectForKey:@"messageID"];
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
      if (a5)
      {
        v28 = v27;
        v25 = 0;
        *a5 = v23;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_95;
    }

    v73 = v15;
    v17 = v16;
    v18 = [v14 objectForKey:@"type"];
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
      if (a5)
      {
        v31 = v30;
        v25 = 0;
        *a5 = v23;
      }

      else
      {
        v25 = 0;
      }

      v15 = v73;
      v34 = v75;
      goto LABEL_94;
    }

    v19 = [v14 objectForKey:@"payload"];
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
      v15 = v73;
      v34 = v75;
      v35 = v72;
      if (a5)
      {
        v36 = v33;
        v25 = 0;
        *a5 = v23;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_93;
    }

    v20 = [v14 objectForKey:@"idsDeviceId"];
    v16 = v17;
    if (v20)
    {
      objc_opt_class();
      v15 = v73;
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
        if (a5)
        {
          v41 = v40;
          v25 = 0;
          *a5 = v23;
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
      v15 = v73;
    }

    v37 = [v14 objectForKey:@"rapportDeviceId"];
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
        if (a5)
        {
          v44 = v43;
          v25 = 0;
          *a5 = v23;
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
    v45 = [v14 objectForKey:@"homeDeviceId"];
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
        if (a5)
        {
          v53 = v52;
          v25 = 0;
          *a5 = v23;
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
        v46 = [v14 objectForKey:@"assistantId"];
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
            if (a5)
            {
              v66 = v65;
              v25 = 0;
              *a5 = v23;
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
        v77 = v15;
        v58 = [AFPeerInfo newWithBuilder:v76];
        v59 = AFPeerInfoMerge();

        if (a6)
        {
          v60 = v16;
          *a6 = v16;
        }

        v34 = v75;
        v35 = v72;
        if (a7)
        {
          v61 = v75;
          *a7 = v75;
        }

        if (a8)
        {
          v62 = v72;
          *a8 = v72;
        }

        if (a9)
        {
          v63 = v59;
          *a9 = v59;
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
  if (a5)
  {
    v24 = v22;
    v25 = 0;
    *a5 = v23;
  }

  else
  {
    v25 = 0;
  }

LABEL_96:

  return v25;
}

- (void)_addLocalDeviceInfoToDictionary:(id)a3
{
  v17 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!v17)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"ADRapportLink.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"dictionary != nil"}];
  }

  v5 = [(RPCompanionLinkClient *)self->_client localDevice];
  v6 = +[ADDeviceCircleManager sharedInstance];
  v7 = [v6 localPeerInfo];

  v8 = [v5 idsDeviceIdentifier];
  if (![v8 length])
  {
    v9 = [v7 idsDeviceUniqueIdentifier];

    v8 = v9;
  }

  if ([v8 length])
  {
    [v17 setObject:v8 forKey:@"idsDeviceId"];
  }

  v10 = [v5 effectiveIdentifier];
  if (![v10 length])
  {
    v11 = [v7 rapportEffectiveIdentifier];

    v10 = v11;
  }

  if ([v10 length])
  {
    [v17 setObject:v10 forKey:@"rapportDeviceId"];
  }

  v12 = [v5 homeKitIdentifier];
  v13 = [v12 UUIDString];

  if (![v13 length])
  {
    v14 = [v7 homeKitAccessoryIdentifier];

    v13 = v14;
  }

  if ([v13 length])
  {
    [v17 setObject:v13 forKey:@"homeDeviceId"];
  }

  v15 = [v7 assistantIdentifier];
  if ([v15 length])
  {
    [v17 setObject:v15 forKey:@"assistantId"];
  }
}

- (id)_buildRequestFromMessageType:(id)a3 andMessagePayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];

  [v8 setObject:v10 forKey:@"messageID"];
  if ([v6 length])
  {
    [v8 setObject:v6 forKey:@"type"];
  }

  if (v7)
  {
    [v8 setObject:v7 forKey:@"payload"];
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

- (void)_registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a5;
  client = self->_client;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A4360;
  v11[3] = &unk_100510338;
  v12 = v8;
  v10 = v8;
  [(RPCompanionLinkClient *)client registerRequestID:a3 options:a4 handler:v11];
}

- (void)_enumerateListenersUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSHashTable *)self->_listeners setRepresentation];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          v4[2](v4, *(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_handleDidLoseDevice:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A479C;
  v4[3] = &unk_1005102E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ADRapportLink *)v5 _enumerateListenersUsingBlock:v4];
}

- (void)_handleDidUpdateDevice:(id)a3 changes:(unsigned int)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A4898;
  v6[3] = &unk_100510310;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(ADRapportLink *)v7 _enumerateListenersUsingBlock:v6];
}

- (void)_handleDidFindDevice:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A4990;
  v4[3] = &unk_1005102E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ADRapportLink *)v5 _enumerateListenersUsingBlock:v4];
}

- (void)_handleDidUpdateLocalDevice:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A4A84;
  v4[3] = &unk_1005102E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ADRapportLink *)v5 _enumerateListenersUsingBlock:v4];
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
    v10 = self;
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

- (void)updateLocalDeviceIsContextCollector:(BOOL)a3
{
  v3 = a3;
  if (+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled])
  {
    client = self->_client;
    if (v3)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000A4EE0;
      v8[3] = &unk_100510298;
      v9 = v3;
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

- (void)sendRequestToContextCollectorThroughOnDemandConnection:(id)a3 messageType:(id)a4 messagePayload:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled]&& AFSupportsHALOnDemandRapportConnection())
    {
      v17 = [(ADRapportLink *)self _buildRequestFromMessageType:v13 andMessagePayload:v14];
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
      v23 = v16;
      [(RPCompanionLinkClient *)v20 sendRequestID:v12 request:v17 options:v15 responseHandler:v22];
    }

    else
    {
      v21 = [AFError errorWithCode:1017 description:0 underlyingError:0];
      (*(v16 + 2))(v16, 0, v21);
    }
  }
}

- (void)sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 toPeer:(id)a6 options:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5474;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = v17;
  v32 = v18;
  v33 = v19;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v21 = v18;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  v25 = v19;
  v26 = v17;
  dispatch_async(queue, block);
}

- (void)sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 toDeviceWithAssistantIdentifier:(id)a6 options:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5690;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = v17;
  v32 = v18;
  v33 = v19;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v21 = v18;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  v25 = v19;
  v26 = v17;
  dispatch_async(queue, block);
}

- (void)sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 toDeviceWithHomeKitAccessoryIdentifier:(id)a6 options:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A58AC;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = v17;
  v32 = v18;
  v33 = v19;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v21 = v18;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  v25 = v19;
  v26 = v17;
  dispatch_async(queue, block);
}

- (void)sendRequestID:(id)a3 messageType:(id)a4 messagePayload:(id)a5 toDeviceWithIDSDeviceID:(id)a6 options:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5AC8;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = v17;
  v32 = v18;
  v33 = v19;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v21 = v18;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  v25 = v19;
  v26 = v17;
  dispatch_async(queue, block);
}

- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000A5CB4;
  v23[3] = &unk_1005183C8;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(queue, v23);
}

- (void)setRequestHandler:(id)a3 forRequestID:(id)a4 messageType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length] && objc_msgSend(v10, "length"))
  {
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A5E6C;
    v13[3] = &unk_10051DB18;
    v13[4] = self;
    v14 = v9;
    v15 = v8;
    v16 = v10;
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
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Empty requestID or messageType: %@, %@", buf, 0x20u);
    }
  }
}

- (void)registerRequestID:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5FB4;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A667C;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (BOOL)canReachPersonalDevices
{
  v2 = [(ADRapportLink *)self localDevice];
  v3 = [v2 homeKitIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (void)setDestinationDevice:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A69E4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setServiceType:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6A90;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6B3C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addListener:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A6BE0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    client = self->_client;
    *buf = 136315650;
    v12 = "[ADRapportLink activateWithCompletion:]";
    v13 = 2112;
    v14 = self;
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
  v10 = v4;
  v8 = v4;
  dispatch_async(queue, v9);
}

- (ADRapportLink)initWithQueue:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v96.receiver = self;
  v96.super_class = ADRapportLink;
  v8 = [(ADRapportLink *)&v96 init];
  if (!v8)
  {
    goto LABEL_96;
  }

  if (v6)
  {
    v9 = v6;
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

  v14 = [v7 copy];
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
  v22 = [(RPCompanionLinkClient *)v8->_client flags];
  v23 = [(RPCompanionLinkClient *)v8->_client controlFlags];
  v24 = [(ADRapportLinkConfiguration *)v8->_configuration discoveryOptions];
  v25 = [v24 includesFamily];

  if (v25 == 2)
  {
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s iCloud Family included", buf, 0xCu);
    }

    v23 |= 0x1000uLL;
  }

  else if (v25 == 1)
  {
    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s iCloud Family excluded", buf, 0xCu);
    }

    v23 &= ~0x1000uLL;
  }

  v28 = [(ADRapportLinkConfiguration *)v8->_configuration discoveryOptions];
  v29 = [v28 includesHome];

  if (v29 == 2)
  {
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s HomeKit shared homes included", buf, 0xCu);
    }

    v23 |= 0x800uLL;
  }

  else if (v29 == 1)
  {
    v30 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s HomeKit shared homes excluded", buf, 0xCu);
    }

    v23 &= ~0x800uLL;
  }

  v32 = [(ADRapportLinkConfiguration *)v8->_configuration connectionOptions];
  v33 = [v32 usesOnDemandConnection];

  if (v33 == 2)
  {
    v38 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s On-demand Connection enabled", buf, 0xCu);
    }

    v23 |= 0x200uLL;
    goto LABEL_37;
  }

  if (v33 == 1)
  {
    goto LABEL_26;
  }

  if (!v33)
  {
    v34 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s usesOnDemandConnection Unspecified - default false", buf, 0xCu);
    }

LABEL_26:
    v35 = [(ADRapportLinkConfiguration *)v8->_configuration discoveryOptions];
    v36 = [v35 includesRemoraDevices];

    if (v36 == 2)
    {
      v39 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v98 = "[ADRapportLink initWithQueue:configuration:]";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Sidekick endpoints included", buf, 0xCu);
      }

      v23 |= 0x400000000uLL;
      v22 = (v22 | 0x2000);
    }

    else if (v36 == 1)
    {
      v37 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v98 = "[ADRapportLink initWithQueue:configuration:]";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Sidekick endpoints excluded", buf, 0xCu);
      }

      v23 &= ~0x400000000uLL;
      v22 = (v22 & 0xFFFFDFFF);
    }
  }

LABEL_37:
  v40 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  v41 = [v40 allowsAWDL];

  if (v41 == 2)
  {
    v43 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s AWDL enabled", buf, 0xCu);
    }

    v23 = v23 & 0xFFFFFFFFFFBFFFF7 | 8;
  }

  else if (v41 == 1)
  {
    v42 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s AWDL disabled", buf, 0xCu);
    }

    v23 = v23 & 0xFFFFFFFFFFBFFFF7 | 0x400000;
  }

  v44 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  v45 = [v44 allowsBLE];

  if (v45 == 2)
  {
    v47 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s BLE enabled", buf, 0xCu);
    }

    v23 |= 2uLL;
  }

  else if (v45 == 1)
  {
    v46 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s BLE disabled", buf, 0xCu);
    }

    v23 &= ~2uLL;
  }

  v48 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  v49 = [v48 allowsForceAWDL];

  if (v49 == 2)
  {
    v50 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s ForceAWDL connection enabled", buf, 0xCu);
    }

    v23 = v23 & 0xFFFFFFFFFFBDFFF7 | 0x20008;
  }

  v51 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  v52 = [v51 allowsForceBLE];

  if (v52 == 2)
  {
    v53 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s ForceBLE enabled", buf, 0xCu);
    }

    v23 |= 0x8002uLL;
  }

  v54 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  v55 = [v54 allowsBTPipe];

  if (v55 == 2)
  {
    v57 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s BTPipe enabled", buf, 0xCu);
    }

    v23 |= 0x20uLL;
  }

  else if (v55 == 1)
  {
    v56 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s BTPipe disabled", buf, 0xCu);
    }

    v23 &= ~0x20uLL;
  }

  v58 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  v59 = [v58 allowsInfraWiFi];

  if (v59 == 2)
  {
    v61 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s Infra WiFi enabled", buf, 0xCu);
    }

    v23 = v23 & 0xFFFFFFFFFFDFFFFBLL | 4;
  }

  else if (v59 == 1)
  {
    v60 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s Infra WiFi disabled", buf, 0xCu);
    }

    v23 = v23 & 0xFFFFFFFFFFDFFFFBLL | 0x200000;
  }

  v62 = [(ADRapportLinkConfiguration *)v8->_configuration enablesProximityTracking];
  if (v62 == 2)
  {
    v64 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%s Proximity enabled", buf, 0xCu);
    }

    v23 |= 0x200000000uLL;
  }

  else if (v62 == 1)
  {
    v63 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Proximity disabled", buf, 0xCu);
    }

    v23 &= ~0x200000000uLL;
  }

  v65 = [(ADRapportLinkConfiguration *)v8->_configuration transportOptions];
  v66 = [v65 noL2Cap];

  if (v66 == 2)
  {
    v67 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v98 = "[ADRapportLink initWithQueue:configuration:]";
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Disable Bluetooth L2Cap connection", buf, 0xCu);
    }

    v23 = v23 & 0xFFFFFDFFFFFFFEFFLL | 0x20000000000;
  }

  v68 = v23 | 0x4000000000000;
  [(RPCompanionLinkClient *)v8->_client setControlFlags:v68];
  [(RPCompanionLinkClient *)v8->_client setFlags:v22];
  v69 = [(ADRapportLinkConfiguration *)v8->_configuration connectionOptions];
  v70 = [v69 usesOnDemandConnection] == 2;

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
      v106 = v22;
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

+ (void)updateSiriInfoWithObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _sharedLinkForSiriInfo];
  [v8 updateSiriInfoWithObject:v7 forKey:v6];
}

+ (id)siriInfoToBeBroadcasted
{
  v2 = [a1 _sharedLinkForSiriInfo];
  v3 = [v2 siriInfoToBeBroadcasted];

  return v3;
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