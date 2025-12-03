@interface ADDeviceSyncMessagingServiceRapport
- (ADDeviceSyncMessagingServiceRapport)initWithMode:(int64_t)mode delegate:(id)delegate;
- (void)_handleCompanionServiceActiveDevicesDidChange;
- (void)_handleCompanionServiceReadyStateDidChange;
- (void)_handleCompanionServiceStereoConfigurationDidChange;
- (void)_handleIncomingDictionary:(id)dictionary fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)_handleOutgoingMessage:(id)message toDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)_invalidate;
- (void)_setDeviceIdentifiers:(id)identifiers;
- (void)_setIsReady:(BOOL)ready;
- (void)_setStereoPartnerDeviceIdentifier:(id)identifier;
- (void)companionServiceActiveDevicesDidChange:(id)change;
- (void)companionServiceReadyStateDidChange:(id)change;
- (void)companionServiceStereoConfigurationDidChange:(id)change;
- (void)dealloc;
- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)invalidate;
- (void)sendMessage:(id)message toDeviceWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation ADDeviceSyncMessagingServiceRapport

- (void)_setStereoPartnerDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADDeviceSyncMessagingServiceRapport _setStereoPartnerDeviceIdentifier:]";
    v15 = 2112;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s stereoPartnerDeviceIdentifier = %@", &v13, 0x16u);
  }

  stereoPartnerDeviceIdentifier = self->_stereoPartnerDeviceIdentifier;
  if (stereoPartnerDeviceIdentifier != identifierCopy && ![(NSString *)stereoPartnerDeviceIdentifier isEqualToString:identifierCopy])
  {
    v7 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      v8 = self->_stereoPartnerDeviceIdentifier;
      v13 = 136315650;
      v14 = "[ADDeviceSyncMessagingServiceRapport _setStereoPartnerDeviceIdentifier:]";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s stereoPartnerDeviceIdentifier: %@ -> %@", &v13, 0x20u);
    }

    if (self->_stereoPartnerDeviceIdentifier)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained deviceSyncMessageService:self didLostDeviceWithIdentifier:self->_stereoPartnerDeviceIdentifier];
    }

    v10 = [(NSString *)identifierCopy copy];
    v11 = self->_stereoPartnerDeviceIdentifier;
    self->_stereoPartnerDeviceIdentifier = v10;

    if (self->_stereoPartnerDeviceIdentifier)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 deviceSyncMessageService:self didFoundDeviceWithIdentifier:self->_stereoPartnerDeviceIdentifier];
    }
  }
}

- (void)_handleCompanionServiceStereoConfigurationDidChange
{
  if (self->_mode == 1)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[ADDeviceSyncMessagingServiceRapport _handleCompanionServiceStereoConfigurationDidChange]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    companionService = self->_companionService;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000CE60C;
    v5[3] = &unk_100510CC0;
    objc_copyWeak(&v6, buf);
    [(ADCompanionService *)companionService getStereoPartnerIdentifierWithCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (void)_setDeviceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[ADDeviceSyncMessagingServiceRapport _setDeviceIdentifiers:]";
    v43 = 2112;
    v44 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s deviceIdentifiers = %@", buf, 0x16u);
  }

  deviceIdentifiers = self->_deviceIdentifiers;
  if (deviceIdentifiers != identifiersCopy && ![(NSSet *)deviceIdentifiers isEqualToSet:identifiersCopy])
  {
    if ([(NSSet *)identifiersCopy count])
    {
      if ([(NSSet *)self->_deviceIdentifiers count])
      {
        v7 = [(NSSet *)identifiersCopy mutableCopy];
        [(NSSet *)v7 minusSet:self->_deviceIdentifiers];
      }

      else
      {
        v7 = identifiersCopy;
      }
    }

    else
    {
      v7 = 0;
    }

    if ([(NSSet *)v7 count])
    {
      v8 = AFSiriLogContextDeviceSync;
      if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v42 = "[ADDeviceSyncMessagingServiceRapport _setDeviceIdentifiers:]";
        v43 = 2112;
        v44 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceIdentifiers: + %@", buf, 0x16u);
      }
    }

    if ([(NSSet *)self->_deviceIdentifiers count])
    {
      v9 = [(NSSet *)identifiersCopy count];
      v10 = self->_deviceIdentifiers;
      if (v9)
      {
        v11 = [(NSSet *)v10 mutableCopy];
        [(NSSet *)v11 minusSet:identifiersCopy];
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [(NSSet *)v11 count];
    v13 = AFSiriLogContextDeviceSync;
    if (v12 && os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v42 = "[ADDeviceSyncMessagingServiceRapport _setDeviceIdentifiers:]";
      v43 = 2112;
      v44 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s deviceIdentifiers: - %@", buf, 0x16u);
      v13 = AFSiriLogContextDeviceSync;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = self->_deviceIdentifiers;
      *buf = 136315650;
      v42 = "[ADDeviceSyncMessagingServiceRapport _setDeviceIdentifiers:]";
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = identifiersCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s deviceIdentifiers: %@ -> %@", buf, 0x20u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v11;
    v16 = [(NSSet *)v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v35 + 1) + 8 * i);
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained deviceSyncMessageService:self didLostDeviceWithIdentifier:v20];
        }

        v17 = [(NSSet *)v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v17);
    }

    v22 = [(NSSet *)identifiersCopy copy];
    v23 = self->_deviceIdentifiers;
    self->_deviceIdentifiers = v22;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v7;
    v25 = [(NSSet *)v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v31 + 1) + 8 * j);
          v30 = objc_loadWeakRetained(&self->_delegate);
          [v30 deviceSyncMessageService:self didFoundDeviceWithIdentifier:{v29, v31}];
        }

        v26 = [(NSSet *)v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v26);
    }
  }
}

- (void)_handleCompanionServiceActiveDevicesDidChange
{
  if (!self->_mode)
  {
    v3 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[ADDeviceSyncMessagingServiceRapport _handleCompanionServiceActiveDevicesDidChange]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    companionService = self->_companionService;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000CEC3C;
    v5[3] = &unk_100510C98;
    objc_copyWeak(&v6, buf);
    [(ADCompanionService *)companionService getDeviceIdentifiersWithCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (void)_setIsReady:(BOOL)ready
{
  readyCopy = ready;
  v5 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADDeviceSyncMessagingServiceRapport _setIsReady:]";
    v10 = 1024;
    v11 = readyCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s isReady = %d", &v8, 0x12u);
  }

  isReady = self->_isReady;
  if (isReady != readyCopy)
  {
    v7 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "[ADDeviceSyncMessagingServiceRapport _setIsReady:]";
      v10 = 1024;
      v11 = isReady;
      v12 = 1024;
      v13 = readyCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s isReady: %d -> %d", &v8, 0x18u);
    }

    self->_isReady = readyCopy;
  }
}

- (void)_handleCompanionServiceReadyStateDidChange
{
  v3 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADDeviceSyncMessagingServiceRapport _handleCompanionServiceReadyStateDidChange]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADDeviceSyncMessagingServiceRapport *)self _setIsReady:[(ADCompanionService *)self->_companionService isReady]];
}

- (void)_handleIncomingDictionary:(id)dictionary fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADDeviceSyncMessagingServiceRapport _handleIncomingDictionary:fromDeviceWithIdentifier:completion:]";
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, incomingDictionary = %@", buf, 0x20u);
  }

  v20 = 0;
  v12 = sub_1002EF2E4(dictionaryCopy, &v20);
  v13 = v20;
  if (!v13)
  {
    v14 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "[ADDeviceSyncMessagingServiceRapport _handleIncomingDictionary:fromDeviceWithIdentifier:completion:]";
      v23 = 2112;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, incomingMessage = %@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000CF1F8;
      v17[3] = &unk_100510C70;
      v18 = identifierCopy;
      v19 = completionCopy;
      [WeakRetained deviceSyncMessageService:self didReceiveMessage:v12 fromDeviceWithIdentifier:v18 completion:v17];

      v16 = v18;
    }

    else
    {
      if (!completionCopy)
      {
LABEL_13:

        goto LABEL_14;
      }

      v16 = [AFError errorWithCode:2404 description:@"No messaging service delegate to handle incoming message." underlyingError:0];
      (*(completionCopy + 2))(completionCopy, 0, v16);
    }

    goto LABEL_13;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }

LABEL_14:
}

- (void)_handleOutgoingMessage:(id)message toDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADDeviceSyncMessagingServiceRapport _handleOutgoingMessage:toDeviceWithIdentifier:completion:]";
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = messageCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, outgoingMessage = %@", buf, 0x20u);
  }

  v20 = 0;
  v12 = sub_1002EF120(messageCopy, &v20);
  v13 = v20;
  if (v13)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v13);
    }
  }

  else
  {
    v14 = AFSiriLogContextDeviceSync;
    if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "[ADDeviceSyncMessagingServiceRapport _handleOutgoingMessage:toDeviceWithIdentifier:completion:]";
      v23 = 2112;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, outgoingDictionary = %@", buf, 0x20u);
    }

    companionService = self->_companionService;
    if (companionService)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000CF66C;
      v17[3] = &unk_1005173D8;
      v17[4] = self;
      v18 = identifierCopy;
      v19 = completionCopy;
      [(ADCompanionService *)companionService sendMessage:v12 messageType:@"devicesync" toDeviceWithIDSIdentifier:v18 completion:v17];
    }

    else if (completionCopy)
    {
      v16 = [AFError errorWithCode:2413 description:@"Rapport messaging channel is nil." underlyingError:0];
      completionCopy[2](completionCopy, 0, v16);
    }
  }
}

- (void)_invalidate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(ADCompanionService *)self->_companionService removeMessageHandler:self forMessageType:@"devicesync"];
  companionService = self->_companionService;
  self->_companionService = 0;

  objc_storeWeak(&self->_delegate, 0);
}

- (void)sendMessage:(id)message toDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[ADDeviceSyncMessagingServiceRapport sendMessage:toDeviceWithIdentifier:completion:]";
    v22 = 2112;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = messageCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, outgoingMessage = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CFB20;
  v16[3] = &unk_10051E0D8;
  v16[4] = self;
  v17 = messageCopy;
  v18 = identifierCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  v15 = messageCopy;
  dispatch_async(queue, v16);
}

- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([type isEqualToString:@"devicesync"])
  {
    queue = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000CFC7C;
    v15[3] = &unk_10051E0D8;
    v15[4] = self;
    v16 = messageCopy;
    v17 = identifierCopy;
    v18 = completionCopy;
    dispatch_async(queue, v15);
  }

  else if (completionCopy)
  {
    v14 = [AFError errorWithCode:1004];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFD00;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)companionServiceStereoConfigurationDidChange:(id)change
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFD7C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)companionServiceActiveDevicesDidChange:(id)change
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFDF8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)companionServiceReadyStateDidChange:(id)change
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFE74;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  [(ADDeviceSyncMessagingServiceRapport *)self _invalidate];
  v3.receiver = self;
  v3.super_class = ADDeviceSyncMessagingServiceRapport;
  [(ADDeviceSyncMessagingServiceRapport *)&v3 dealloc];
}

- (ADDeviceSyncMessagingServiceRapport)initWithMode:(int64_t)mode delegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = ADDeviceSyncMessagingServiceRapport;
  v7 = [(ADDeviceSyncMessagingServiceRapport *)&v21 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_DEFAULT, 0);

    v10 = dispatch_queue_create("com.apple.assistant.device-sync.messaging-service.rapport", v9);
    queue = v7->_queue;
    v7->_queue = v10;

    v7->_mode = mode;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v12 = +[ADCompanionService sharedInstance];
    companionService = v7->_companionService;
    v7->_companionService = v12;

    [(ADCompanionService *)v7->_companionService setMessageHandler:v7 forMessageType:@"devicesync"];
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"companionServiceReadyStateDidChange:" name:@"ADCompanionServiceReadyStateDidChangeNotification" object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v7 selector:"companionServiceActiveDevicesDidChange:" name:@"ADCompanionServiceActiveDevicesDidChangeNotification" object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v7 selector:"companionServiceStereoConfigurationDidChange:" name:@"ADCompanionServiceStereoConfigurationDidChangeNotification" object:0];

    v17 = v7->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D00BC;
    block[3] = &unk_10051DFE8;
    v20 = v7;
    dispatch_async(v17, block);
  }

  return v7;
}

@end