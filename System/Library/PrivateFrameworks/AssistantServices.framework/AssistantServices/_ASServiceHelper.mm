@interface _ASServiceHelper
- (BOOL)isDeviceInCarDND;
- (BOOL)isDeviceInStarkMode;
- (BOOL)isDeviceLockedWithPasscode;
- (BOOL)isTimeoutSuspended;
- (BOOL)openSensitiveURL:(id)l;
- (NSString)description;
- (_ASServiceHelper)initWithCommandClassName:(id)name infoDictionary:(id)dictionary executionInfo:(id)info serviceClient:(id)client;
- (id)_providerServiceDelegateWithErrorHandler:(id)handler;
- (id)_synchronousProviderServiceDelegateWithErrorHandler:(id)handler;
- (id)assistantLocalizedStringForKey:(id)key table:(id)table bundle:(id)bundle;
- (id)endpointInfo;
- (id)instanceInfo;
- (id)peerInfoForCurrentCommand;
- (id)speechInfo;
- (void)dealloc;
- (void)dismissAssistant;
- (void)dismissAssistantWithReason:(int64_t)reason;
- (void)handleCommand:(id)command completion:(id)completion;
- (void)invalidate;
- (void)isDeviceWatchAuthenticatedWithCompletion:(id)completion;
- (void)prepareForAudioHandoffFailedWithCompletion:(id)completion;
- (void)prepareForAudioHandoffWithCompletion:(id)completion;
@end

@implementation _ASServiceHelper

- (NSString)description
{
  v3 = [NSString alloc];
  v10.receiver = self;
  v10.super_class = _ASServiceHelper;
  v4 = [(_ASServiceHelper *)&v10 description];
  v9 = *&self->_commandClassName;
  commandExecutionInfo = self->_commandExecutionInfo;
  WeakRetained = objc_loadWeakRetained(&self->_serviceClient);
  weakRetained = [v3 initWithFormat:@"%@ {commandClass = %@, commandInfo = %@, executionInfo = %@, serviceClient = %@}", v4, v9, commandExecutionInfo, WeakRetained];

  return weakRetained;
}

- (void)invalidate
{
  v3 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[_ASServiceHelper invalidate]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@", &v4, 0x16u);
  }

  self->_isInvalid = 1;
}

- (void)dealloc
{
  v3 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v6 = "[_ASServiceHelper dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = _ASServiceHelper;
  [(_ASServiceHelper *)&v4 dealloc];
}

- (id)_synchronousProviderServiceDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_serviceClient);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained synchronousProviderServiceDelegateWithErrorHandler:handlerCopy];
  }

  else
  {
    if (handlerCopy)
    {
      v8 = [[NSString alloc] initWithFormat:@"Service helper %@ is already invalidated.", self];
      v9 = [AFError errorWithCode:104 description:v8];
      handlerCopy[2](handlerCopy, v9);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_providerServiceDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_serviceClient);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained providerServiceDelegateWithErrorHandler:handlerCopy];
  }

  else
  {
    if (handlerCopy)
    {
      v8 = [[NSString alloc] initWithFormat:@"Service helper %@ is already invalidated.", self];
      v9 = [AFError errorWithCode:104 description:v8];
      handlerCopy[2](handlerCopy, v9);
    }

    v7 = 0;
  }

  return v7;
}

- (id)speechInfo
{
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315394;
      v7 = "[_ASServiceHelper speechInfo]";
      v8 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", &v6, 0x16u);
    }
  }

  speechInfo = [(AFCommandExecutionInfo *)self->_commandExecutionInfo speechInfo];

  return speechInfo;
}

- (id)instanceInfo
{
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315394;
      v7 = "[_ASServiceHelper instanceInfo]";
      v8 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", &v6, 0x16u);
    }
  }

  instanceInfo = [(AFCommandExecutionInfo *)self->_commandExecutionInfo instanceInfo];

  return instanceInfo;
}

- (id)endpointInfo
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[_ASServiceHelper endpointInfo]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [AFServiceHelper endpointInfo] is deprecated. Please use [AFServiceHelper instanceInfo] as replacement.", &v7, 0xCu);
  }

  if (self->_isInvalid)
  {
    v4 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315394;
      v8 = "[_ASServiceHelper endpointInfo]";
      v9 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", &v7, 0x16u);
    }
  }

  endpointInfo = [(AFCommandExecutionInfo *)self->_commandExecutionInfo endpointInfo];

  return endpointInfo;
}

- (id)peerInfoForCurrentCommand
{
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315394;
      v7 = "[_ASServiceHelper peerInfoForCurrentCommand]";
      v8 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", &v6, 0x16u);
    }
  }

  originPeerInfo = [(AFCommandExecutionInfo *)self->_commandExecutionInfo originPeerInfo];

  return originPeerInfo;
}

- (BOOL)isTimeoutSuspended
{
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[_ASServiceHelper isTimeoutSuspended]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v8 = 0;
  v4 = [(_ASServiceHelper *)self _synchronousProviderServiceDelegateWithErrorHandler:&stru_100014848];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007DF0;
  v6[3] = &unk_100014710;
  v6[4] = buf;
  [v4 getTimeoutSuspendedWithReply:v6];

  LOBYTE(v4) = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v4;
}

- (void)prepareForAudioHandoffWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_isInvalid)
  {
    v5 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v14 = "[_ASServiceHelper prepareForAudioHandoffWithCompletion:]";
      v15 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000082B0;
  v11[3] = &unk_100014550;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(_ASServiceHelper *)self _providerServiceDelegateWithErrorHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008398;
  v9[3] = &unk_100014798;
  v10 = v6;
  v8 = v6;
  [v7 prepareForAudioHandoffWithCompletion:v9];
}

- (void)prepareForAudioHandoffFailedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_isInvalid)
  {
    v5 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v14 = "[_ASServiceHelper prepareForAudioHandoffFailedWithCompletion:]";
      v15 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008618;
  v11[3] = &unk_100014550;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(_ASServiceHelper *)self _providerServiceDelegateWithErrorHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000086F0;
  v9[3] = &unk_100014578;
  v10 = v6;
  v8 = v6;
  [v7 prepareForAudioHandoffFailedWithCompletion:v9];
}

- (void)handleCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  if (self->_isInvalid)
  {
    v8 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v24 = "[_ASServiceHelper handleCommand:completion:]";
      v25 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      commandClassName = self->_commandClassName;
      commandInfoDictionary = self->_commandInfoDictionary;
      commandExecutionInfo = self->_commandExecutionInfo;
      *buf = 136316162;
      v24 = "[_ASServiceHelper handleCommand:completion:]";
      v25 = 2112;
      selfCopy = commandCopy;
      v27 = 2112;
      v28 = commandClassName;
      v29 = 2112;
      v30 = commandInfoDictionary;
      v31 = 2112;
      v32 = commandExecutionInfo;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Sending %@ during the execution of %@ %@ with info %@.", buf, 0x34u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008A70;
    v21[3] = &unk_100014550;
    v13 = completionCopy;
    v22 = v13;
    v14 = [(_ASServiceHelper *)self _providerServiceDelegateWithErrorHandler:v21];
    v15 = self->_commandExecutionInfo;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100008A90;
    v17[3] = &unk_1000147E0;
    v18 = commandCopy;
    selfCopy2 = self;
    v20 = v13;
    [v14 handleCommand:v18 executionInfo:v15 completion:v17];

    v16 = v22;
    goto LABEL_10;
  }

  if (completionCopy)
  {
    v16 = [AFError errorWithCode:11];
    (*(completionCopy + 2))(completionCopy, 0, v16);
LABEL_10:
  }
}

- (BOOL)isDeviceInStarkMode
{
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[_ASServiceHelper isDeviceInStarkMode]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v8 = 0;
  v4 = [(_ASServiceHelper *)self _synchronousProviderServiceDelegateWithErrorHandler:&stru_1000147B8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008D40;
  v6[3] = &unk_100014710;
  v6[4] = buf;
  [v4 getStarkModeWithReply:v6];

  LOBYTE(v4) = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v4;
}

- (void)isDeviceWatchAuthenticatedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_isInvalid)
  {
    v5 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v11 = "[_ASServiceHelper isDeviceWatchAuthenticatedWithCompletion:]";
      v12 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    }
  }

  v6 = [(_ASServiceHelper *)self _providerServiceDelegateWithErrorHandler:&stru_100014770];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008F58;
  v8[3] = &unk_100014798;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 getWatchAuthenticatedWithReply:v8];
}

- (BOOL)isDeviceInCarDND
{
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[_ASServiceHelper isDeviceInCarDND]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v8 = 0;
  v4 = [(_ASServiceHelper *)self _synchronousProviderServiceDelegateWithErrorHandler:&stru_100014750];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009198;
  v6[3] = &unk_100014710;
  v6[4] = buf;
  [v4 getCarDNDModeWithReply:v6];

  LOBYTE(v4) = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v4;
}

- (BOOL)isDeviceLockedWithPasscode
{
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[_ASServiceHelper isDeviceLockedWithPasscode]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v8 = 0;
  v4 = [(_ASServiceHelper *)self _synchronousProviderServiceDelegateWithErrorHandler:&stru_100014730];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000093D8;
  v6[3] = &unk_100014710;
  v6[4] = buf;
  [v4 getLockStateWithReply:v6];

  LOBYTE(v4) = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v4;
}

- (id)assistantLocalizedStringForKey:(id)key table:(id)table bundle:(id)bundle
{
  bundleCopy = bundle;
  tableCopy = table;
  keyCopy = key;
  v10 = +[ASLocalization sharedLocalization];
  v11 = [v10 localizedStringForKey:keyCopy table:tableCopy bundle:bundleCopy];

  return v11;
}

- (void)dismissAssistantWithReason:(int64_t)reason
{
  if (self->_isInvalid)
  {
    v5 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315394;
      v8 = "[_ASServiceHelper dismissAssistantWithReason:]";
      v9 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", &v7, 0x16u);
    }
  }

  v6 = [(_ASServiceHelper *)self _providerServiceDelegateWithErrorHandler:0];
  [v6 dismissAssistantWithReason:reason];
}

- (void)dismissAssistant
{
  if (self->_isInvalid)
  {
    v3 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
    {
      v5 = 136315394;
      v6 = "[_ASServiceHelper dismissAssistant]";
      v7 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", &v5, 0x16u);
    }
  }

  v4 = [(_ASServiceHelper *)self _providerServiceDelegateWithErrorHandler:0];
  [v4 dismissAssistant];
}

- (BOOL)openSensitiveURL:(id)l
{
  lCopy = l;
  v5 = AFSiriLogContextService;
  if (self->_isInvalid && os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[_ASServiceHelper openSensitiveURL:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Attempting to access %@ after it has been invalidated.", buf, 0x16u);
    v5 = AFSiriLogContextService;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[_ASServiceHelper openSensitiveURL:]";
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Trying to open URL %@", buf, 0x16u);
  }

  if (lCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v6 = [(_ASServiceHelper *)self _synchronousProviderServiceDelegateWithErrorHandler:&stru_1000146E8];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000998C;
    v11[3] = &unk_100014710;
    v11[4] = buf;
    [v6 openURL:lCopy reply:v11];

    v7 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      if (*(*&buf[8] + 24))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      *v12 = 136315394;
      v13 = "[_ASServiceHelper openSensitiveURL:]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Success opening URL? %@", v12, 0x16u);
    }

    v9 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (_ASServiceHelper)initWithCommandClassName:(id)name infoDictionary:(id)dictionary executionInfo:(id)info serviceClient:(id)client
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  infoCopy = info;
  clientCopy = client;
  v24.receiver = self;
  v24.super_class = _ASServiceHelper;
  v14 = [(_ASServiceHelper *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_isInvalid = 0;
    v16 = [nameCopy copy];
    commandClassName = v15->_commandClassName;
    v15->_commandClassName = v16;

    v18 = [dictionaryCopy copy];
    commandInfoDictionary = v15->_commandInfoDictionary;
    v15->_commandInfoDictionary = v18;

    v20 = [infoCopy copy];
    commandExecutionInfo = v15->_commandExecutionInfo;
    v15->_commandExecutionInfo = v20;

    objc_storeWeak(&v15->_serviceClient, clientCopy);
    v22 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v26 = "[_ASServiceHelper initWithCommandClassName:infoDictionary:executionInfo:serviceClient:]";
      v27 = 2112;
      v28 = v15;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
    }
  }

  return v15;
}

@end