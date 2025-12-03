@interface AKPeerIDSAnisetteService
+ (id)sharedService;
- (AKPeerIDSAnisetteService)init;
- (id)_activePairedTinkerDevice;
- (void)_handleIncomingCommandMessage:(id)message completion:(id)completion;
- (void)_mhq_handleIncomingReplyMessage:(id)message;
- (void)_performRemoteCommand:(unint64_t)command argument:(id)argument completion:(id)completion;
- (void)_replyToCommandMessageWithInternalID:(id)d didSucceed:(BOOL)succeed returnData:(id)data error:(id)error completion:(id)completion;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)fetchPeerAttestationDataForRequest:(id)request completion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)startListeningForMessagesFromPairedDevice;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation AKPeerIDSAnisetteService

+ (id)sharedService
{
  v5 = &unk_100374700;
  location = 0;
  objc_storeStrong(&location, &stru_100321168);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003746F8;

  return v2;
}

- (AKPeerIDSAnisetteService)init
{
  v14 = a2;
  v15 = 0;
  v13.receiver = self;
  v13.super_class = AKPeerIDSAnisetteService;
  v15 = [(AKPeerIDSAnisetteService *)&v13 init];
  objc_storeStrong(&v15, v15);
  if (v15)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.ak.idsq", v12);
    messageHandlingQueue = v15->_messageHandlingQueue;
    v15->_messageHandlingQueue = v2;
    _objc_release(messageHandlingQueue);
    _objc_release(v12);
    v4 = [objc_alloc(sub_1000794A4()) initWithService:@"com.apple.private.alloy.anisette"];
    messageSendingService = v15->_messageSendingService;
    v15->_messageSendingService = v4;
    _objc_release(messageSendingService);
    v6 = objc_alloc_init(NSMutableDictionary);
    completionsByInternalMessageID = v15->_completionsByInternalMessageID;
    v15->_completionsByInternalMessageID = v6;
    _objc_release(completionsByInternalMessageID);
    v8 = objc_alloc_init(NSMutableDictionary);
    internalMessageIDsByTransportID = v15->_internalMessageIDsByTransportID;
    v15->_internalMessageIDsByTransportID = v8;
    _objc_release(internalMessageIDsByTransportID);
    [(IDSService *)v15->_messageSendingService addDelegate:v15 queue:v15->_messageHandlingQueue];
  }

  v11 = _objc_retain(v15);
  objc_storeStrong(&v15, 0);
  return v11;
}

- (void)startListeningForMessagesFromPairedDevice
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    sub_10001CEEC(v4);
    _os_log_impl(&_mh_execute_header, log, type, "Listening for messages from paired device...", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  selfCopy = self;
  v19 = a2;
  necessaryCopy = necessary;
  location = 0;
  objc_storeStrong(&location, completion);
  v16 = _AKTrafficLogSubsystem();
  v15 = 2;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    log = v16;
    type = v15;
    sub_10001CEEC(v14);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Looing for Anisette data on IDS-paired device...", v14, 2u);
  }

  objc_storeStrong(&v16, 0);
  v4 = selfCopy;
  v5 = [NSNumber numberWithBool:necessaryCopy];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10007B558;
  v12 = &unk_100321190;
  v13 = _objc_retain(location);
  [(AKPeerIDSAnisetteService *)v4 _performRemoteCommand:1 argument:v5 completion:&v8];
  _objc_release(v5);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)fetchPeerAttestationDataForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = 0;
  v16 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v16];
  objc_storeStrong(&v18, v16);
  v17 = v7;
  if (v18)
  {
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v22, v18);
      _os_log_error_impl(&_mh_execute_header, v15, v14, "Error archiving request %@", v22, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  v5 = selfCopy;
  v4 = v17;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10007BA3C;
  v12 = &unk_100321190;
  v13 = _objc_retain(v19);
  [(AKPeerIDSAnisetteService *)v5 _performRemoteCommand:6 argument:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v18, "[AKPeerIDSAnisetteService syncAnisetteWithSIMData:completion:]", 339);
    _os_log_debug_impl(&_mh_execute_header, v14, v13, "%s (%d) called", v18, 0x12u);
  }

  objc_storeStrong(&v14, 0);
  v5 = selfCopy;
  v4 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10007C064;
  v11 = &unk_100321190;
  v12 = _objc_retain(v15);
  [(AKPeerIDSAnisetteService *)v5 _performRemoteCommand:4 argument:v4 completion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v14, "[AKPeerIDSAnisetteService eraseAnisetteWithCompletion:]", 346);
    _os_log_debug_impl(&_mh_execute_header, v11, v10, "%s (%d) called", v14, 0x12u);
  }

  objc_storeStrong(&v11, 0);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10007C2B4;
  v8 = &unk_100321190;
  v9 = _objc_retain(location[0]);
  [(AKPeerIDSAnisetteService *)v3 _performRemoteCommand:5 argument:0 completion:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v14, "[AKPeerIDSAnisetteService provisionAnisetteWithCompletion:]", 353);
    _os_log_debug_impl(&_mh_execute_header, v11, v10, "%s (%d) called", v14, 0x12u);
  }

  objc_storeStrong(&v11, 0);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10007C504;
  v8 = &unk_100321190;
  v9 = _objc_retain(location[0]);
  [(AKPeerIDSAnisetteService *)v3 _performRemoteCommand:3 argument:0 completion:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v14 = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v18, "[AKPeerIDSAnisetteService legacyAnisetteDataForDSID:withCompletion:]", 360);
    _os_log_debug_impl(&_mh_execute_header, v14, v13, "%s (%d) called", v18, 0x12u);
  }

  objc_storeStrong(&v14, 0);
  v5 = selfCopy;
  v4 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10007C784;
  v11 = &unk_100321190;
  v12 = _objc_retain(v15);
  [(AKPeerIDSAnisetteService *)v5 _performRemoteCommand:2 argument:v4 completion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_performRemoteCommand:(unint64_t)command argument:(id)argument completion:(id)completion
{
  selfCopy = self;
  v27 = a2;
  commandCopy = command;
  location = 0;
  objc_storeStrong(&location, argument);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v9 = [NSNumber numberWithUnsignedInteger:commandCopy];
    sub_1000194D4(v31, v9);
    _os_log_debug_impl(&_mh_execute_header, v23, v22, "Preparing message with command %@...", v31, 0xCu);
    _objc_release(v9);
  }

  objc_storeStrong(&v23, 0);
  v21 = objc_alloc_init(AKCommandMessage);
  [(AKCommandMessage *)v21 setCommand:commandCopy];
  [(AKCommandMessage *)v21 setArgument:location];
  v7 = sub_100079D7C();
  v29[0] = v7;
  v30[0] = &__kCFBooleanTrue;
  v6 = sub_100079F58();
  v29[1] = v6;
  v30[1] = &__kCFBooleanFalse;
  v5 = sub_10007A134();
  v29[2] = v5;
  v30[2] = &off_100338FB0;
  v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
  _objc_release(v5);
  _objc_release(v6);
  _objc_release(v7);
  queue = selfCopy->_messageHandlingQueue;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10007CC78;
  v15 = &unk_1003200A8;
  v16 = _objc_retain(v21);
  v17 = _objc_retain(selfCopy);
  v18 = _objc_retain(v20);
  v19 = _objc_retain(v24);
  dispatch_async(queue, &v11);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
}

- (id)_activePairedTinkerDevice
{
  v11[2] = self;
  v11[1] = a2;
  v5 = 0;
  v6 = &v5;
  v7 = 838860800;
  v8 = 48;
  v9 = sub_10000392C;
  v10 = sub_100011170;
  v11[0] = 0;
  location = [(IDSService *)self->_messageSendingService linkedDevicesWithRelationship:2];
  [location enumerateObjectsUsingBlock:?];
  v3 = _objc_retain(v6[5]);
  objc_storeStrong(&location, 0);
  _Block_object_dispose(&v5, 8);
  objc_storeStrong(v11, 0);

  return v3;
}

- (void)_replyToCommandMessageWithInternalID:(id)d didSucceed:(BOOL)succeed returnData:(id)data error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  succeedCopy = succeed;
  v30 = 0;
  objc_storeStrong(&v30, data);
  v29 = 0;
  objc_storeStrong(&v29, error);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v36, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v27, v26, "Preparing reply to %@...", v36, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v25 = objc_alloc_init(AKReplyMessage);
  [(AKReplyMessage *)v25 setReplyToID:location[0]];
  [(AKReplyMessage *)v25 setDidSucceed:succeedCopy];
  [(AKReplyMessage *)v25 setReturnData:v30];
  [(AKReplyMessage *)v25 setError:v29];
  v9 = sub_100079D7C();
  v34[0] = v9;
  v35[0] = &__kCFBooleanTrue;
  v8 = sub_100079F58();
  v34[1] = v8;
  v35[1] = &__kCFBooleanFalse;
  v7 = sub_10007A134();
  v34[2] = v7;
  v35[2] = &off_100338FB0;
  v24 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
  _objc_release(v7);
  _objc_release(v8);
  _objc_release(v9);
  queue = selfCopy->_messageHandlingQueue;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_10007D9DC;
  v19 = &unk_1003200A8;
  v20 = _objc_retain(v25);
  v21 = _objc_retain(selfCopy);
  v22 = _objc_retain(v24);
  v23 = _objc_retain(v28);
  dispatch_async(queue, &v15);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, service);
  v35 = 0;
  objc_storeStrong(&v35, account);
  v34 = 0;
  objc_storeStrong(&v34, identifier);
  successCopy = success;
  v32 = 0;
  objc_storeStrong(&v32, error);
  if (v34)
  {
    if (successCopy)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v38, v34);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Success sending message with Transport ID %@!", v38, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      v27 = _AKLogSystem();
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v40, v34, v32);
        _os_log_error_impl(&_mh_execute_header, v27, v26, "Message with transport ID %@ could not be sent! %@", v40, 0x16u);
      }

      objc_storeStrong(&v27, 0);
      v25 = [(NSMutableDictionary *)selfCopy->_internalMessageIDsByTransportID objectForKeyedSubscript:v34];
      if (v25)
      {
        v22 = [(NSMutableDictionary *)selfCopy->_completionsByInternalMessageID objectForKeyedSubscript:v25];
        [(NSMutableDictionary *)selfCopy->_completionsByInternalMessageID removeObjectForKey:v25];
        [(NSMutableDictionary *)selfCopy->_internalMessageIDsByTransportID removeObjectForKey:v34];
        if (v22)
        {
          queue = dispatch_get_global_queue(21, 0);
          v15 = _NSConcreteStackBlock;
          v16 = -1073741824;
          v17 = 0;
          v18 = sub_10007E188;
          v19 = &unk_100320530;
          v21 = _objc_retain(v22);
          v20 = _objc_retain(v32);
          dispatch_async(queue, &v15);
          _objc_release(queue);
          objc_storeStrong(&v20, 0);
          objc_storeStrong(&v21, 0);
        }

        objc_storeStrong(&v22, 0);
      }

      else
      {
        v24 = _AKLogSystem();
        v23 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v39, v34);
          _os_log_impl(&_mh_execute_header, v24, v23, "No internal message ID exists for transport ID %@, so we're ignoring the send failure.", v39, 0xCu);
        }

        objc_storeStrong(&v24, 0);
      }

      objc_storeStrong(&v25, 0);
    }

    v28 = 0;
  }

  else
  {
    v31 = _AKLogSystem();
    v30 = 16;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      log = v31;
      type = v30;
      sub_10001CEEC(v29);
      _os_log_error_impl(&_mh_execute_header, log, type, "IDS callback did not provide a message identifier!", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    v28 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, service);
  v41 = 0;
  objc_storeStrong(&v41, account);
  v40 = 0;
  objc_storeStrong(&v40, message);
  v39 = 0;
  objc_storeStrong(&v39, d);
  v38 = 0;
  objc_storeStrong(&v38, context);
  v37 = 0;
  if ([_AKMessage typeForMessageWithTransportRepresentation:v40]== 1)
  {
    v7 = [(_AKMessage *)AKReplyMessage messageFromTransportRepresentation:v40];
    v8 = v37;
    v37 = v7;
    _objc_release(v8);
    v36 = _AKLogSystem();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v45, v37);
      _os_log_impl(&_mh_execute_header, v36, v35, "Received reply message from paired device: %@", v45, 0xCu);
    }

    objc_storeStrong(&v36, 0);
  }

  else
  {
    v9 = [(_AKMessage *)AKCommandMessage messageFromTransportRepresentation:v40];
    v10 = v37;
    v37 = v9;
    _objc_release(v10);
    v34 = _AKLogSystem();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v44, v37);
      _os_log_impl(&_mh_execute_header, v34, v33, "Received command message from paired device: %@", v44, 0xCu);
    }

    objc_storeStrong(&v34, 0);
  }

  identifier = [v37 identifier];
  if (identifier)
  {
    v27 = os_transaction_create();
    if ([v37 type] == 1)
    {
      [(AKPeerIDSAnisetteService *)selfCopy _mhq_handleIncomingReplyMessage:v37];
    }

    else
    {
      v12 = selfCopy;
      v11 = v37;
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_10007E67C;
      v23 = &unk_1003211E0;
      v24 = _objc_retain(selfCopy);
      v25 = _objc_retain(identifier);
      v26 = _objc_retain(v27);
      [(AKPeerIDSAnisetteService *)v12 _handleIncomingCommandMessage:v11 completion:&v19];
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v27, 0);
    v28 = 0;
  }

  else
  {
    v31 = _AKLogSystem();
    v30 = 16;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v13 = v31;
      v14 = v30;
      sub_10001CEEC(v29);
      _os_log_error_impl(&_mh_execute_header, v13, v14, "Incoming message lacks a valid AuthKit-assigned UUID. Replying to paired device will not be possible.", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    v28 = 1;
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleIncomingCommandMessage:(id)message completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v82 = 0;
  objc_storeStrong(&v82, completion);
  command = [location[0] command];
  v80 = _AKLogSystem();
  v79 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [NSNumber numberWithUnsignedInteger:command];
    sub_1000194D4(v86, v20);
    _os_log_impl(&_mh_execute_header, v80, v79, "Handling command from paired device: %@", v86, 0xCu);
    _objc_release(v20);
  }

  objc_storeStrong(&v80, 0);
  if (command)
  {
    argument = [location[0] argument];
    v72 = objc_alloc_init(AKNativeAnisetteService);
    if (command == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [argument BOOLValue];
        v17 = v72;
        v16 = bOOLValue;
        v64 = _NSConcreteStackBlock;
        v65 = -1073741824;
        v66 = 0;
        v67 = sub_10007F400;
        v68 = &unk_100321208;
        v69 = _objc_retain(v82);
        [v17 fetchAnisetteDataAndProvisionIfNecessary:v16 & 1 withCompletion:&v64];
        objc_storeStrong(&v69, 0);
      }

      else
      {
        v71 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8016 userInfo:?];
        (*(v82 + 2))(v82, 0, 0, v71);
        objc_storeStrong(&v71, 0);
      }
    }

    else if (command == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v72;
        v10 = argument;
        v38 = _NSConcreteStackBlock;
        v39 = -1073741824;
        v40 = 0;
        v41 = sub_10007F68C;
        v42 = &unk_100321208;
        v43 = _objc_retain(v82);
        [v11 legacyAnisetteDataForDSID:v10 withCompletion:&v38];
        objc_storeStrong(&v43, 0);
      }

      else
      {
        v44 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8016 userInfo:?];
        (*(v82 + 2))(v82, 0, 0, v44);
        objc_storeStrong(&v44, 0);
      }
    }

    else if (command == 3)
    {
      v15 = v72;
      v58 = _NSConcreteStackBlock;
      v59 = -1073741824;
      v60 = 0;
      v61 = sub_10007F50C;
      v62 = &unk_100321230;
      v63 = _objc_retain(v82);
      [v15 provisionAnisetteWithCompletion:&v58];
      v74 = 2;
      objc_storeStrong(&v63, 0);
    }

    else if (command == 4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v72;
        v13 = argument;
        v51 = _NSConcreteStackBlock;
        v52 = -1073741824;
        v53 = 0;
        v54 = sub_10007F58C;
        v55 = &unk_100321230;
        v56 = _objc_retain(v82);
        [v14 syncAnisetteWithSIMData:v13 completion:&v51];
        objc_storeStrong(&v56, 0);
      }

      else
      {
        v57 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8016 userInfo:?];
        (*(v82 + 2))(v82, 0, 0, v57);
        objc_storeStrong(&v57, 0);
      }
    }

    else if (command == 5)
    {
      v12 = v72;
      v45 = _NSConcreteStackBlock;
      v46 = -1073741824;
      v47 = 0;
      v48 = sub_10007F60C;
      v49 = &unk_100321230;
      v50 = _objc_retain(v82);
      [v12 eraseAnisetteWithCompletion:&v45];
      v74 = 2;
      objc_storeStrong(&v50, 0);
    }

    else if (command == 6)
    {
      v37 = _objc_retain(argument);
      v36 = 0;
      v7 = objc_opt_class();
      v9 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
      v34 = v36;
      v8 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:"_strictlyUnarchivedObjectOfClasses:fromData:error:" fromData:? error:?];
      objc_storeStrong(&v36, v34);
      v35 = v8;
      _objc_release(v9);
      if (v36 || !v37)
      {
        oslog = _AKLogSystem();
        v32 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v85, v36);
          _os_log_error_impl(&_mh_execute_header, oslog, v32, "Error unarchiving request %@", v85, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      v31 = objc_alloc_init(AKAppleIDSigningController);
      [v31 setIsProxy:1];
      v6 = v31;
      v5 = v35;
      v25 = _NSConcreteStackBlock;
      v26 = -1073741824;
      v27 = 0;
      v28 = sub_10007F798;
      v29 = &unk_100321258;
      v30 = _objc_retain(v82);
      [v6 signingHeadersForRequest:v5 completion:&v25];
      v74 = 2;
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v37, 0);
    }

    else
    {
      v24 = _AKLogSystem();
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v4 = [NSNumber numberWithUnsignedInteger:command];
        sub_1000194D4(v84, v4);
        _os_log_error_impl(&_mh_execute_header, v24, v23, "Unknown command received %@!", v84, 0xCu);
        _objc_release(v4);
      }

      objc_storeStrong(&v24, 0);
      v22 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8015 userInfo:0];
      (*(v82 + 2))(v82, 0, 0, v22);
      v74 = 2;
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v72, 0);
    objc_storeStrong(&argument, 0);
    v74 = 0;
  }

  else
  {
    v78 = _AKLogSystem();
    v77 = 16;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v18 = v78;
      v19 = v77;
      sub_10001CEEC(v76);
      _os_log_error_impl(&_mh_execute_header, v18, v19, "Incoming message lacks a valid command.", v76, 2u);
    }

    objc_storeStrong(&v78, 0);
    v75 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8016 userInfo:0];
    (*(v82 + 2))(v82, 0, 0, v75);
    v74 = 1;
    objc_storeStrong(&v75, 0);
  }

  objc_storeStrong(&v82, 0);
  objc_storeStrong(location, 0);
}

- (void)_mhq_handleIncomingReplyMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v34 = _AKLogSystem();
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v39, "[AKPeerIDSAnisetteService _mhq_handleIncomingReplyMessage:]", 637);
    _os_log_debug_impl(&_mh_execute_header, v34, v33, "%s (%d) called", v39, 0x12u);
  }

  objc_storeStrong(&v34, 0);
  replyToID = [location[0] replyToID];
  if (replyToID)
  {
    v27 = [(NSMutableDictionary *)selfCopy->_completionsByInternalMessageID objectForKeyedSubscript:replyToID];
    if (v27)
    {
      [(NSMutableDictionary *)selfCopy->_completionsByInternalMessageID removeObjectForKey:replyToID];
      v24 = [(NSMutableDictionary *)selfCopy->_internalMessageIDsByTransportID copy];
      memset(__b, 0, sizeof(__b));
      obj = _objc_retain(v24);
      v11 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
      if (v11)
      {
        v7 = *__b[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(__b[1] + 8 * v8);
          v4 = [v24 objectForKeyedSubscript:v23];
          v5 = [v4 isEqual:replyToID];
          _objc_release(v4);
          if (v5)
          {
            break;
          }

          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
            if (!v9)
            {
              goto LABEL_19;
            }
          }
        }

        [(NSMutableDictionary *)selfCopy->_internalMessageIDsByTransportID removeObjectForKey:v23];
        v28 = 2;
      }

      else
      {
LABEL_19:
        v28 = 0;
      }

      _objc_release(obj);
      queue = dispatch_get_global_queue(21, 0);
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_10007FF00;
      v18 = &unk_100321280;
      v19 = _objc_retain(replyToID);
      v21 = _objc_retain(v27);
      v20 = _objc_retain(location[0]);
      dispatch_async(queue, &v14);
      _objc_release(queue);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v24, 0);
      v28 = 0;
    }

    else
    {
      oslog = _AKLogSystem();
      v25 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v38, replyToID);
        _os_log_error_impl(&_mh_execute_header, oslog, v25, "Unable to find pending completion block under ID: %@", v38, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v28 = 1;
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    v31 = _AKLogSystem();
    v30 = 16;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v12 = v31;
      v13 = v30;
      sub_10001CEEC(v29);
      _os_log_error_impl(&_mh_execute_header, v12, v13, "Reply message lacks reply-to field.", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    v28 = 1;
  }

  objc_storeStrong(&replyToID, 0);
  objc_storeStrong(location, 0);
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, service);
  v36 = 0;
  objc_storeStrong(&v36, device);
  v35 = 0;
  objc_storeStrong(&v35, block);
  v34 = _AKLogSystem();
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v41, "[AKPeerIDSAnisetteService service:didSwitchActivePairedDevice:acknowledgementBlock:]", 671);
    _os_log_debug_impl(&_mh_execute_header, v34, v33, "%s (%d) called", v41, 0x12u);
  }

  objc_storeStrong(&v34, 0);
  if (selfCopy->_completionsByInternalMessageID)
  {
    allValues = [(NSMutableDictionary *)selfCopy->_completionsByInternalMessageID allValues];
    oslog = _AKLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allValues count]);
      sub_1000194D4(v40, v14);
      _os_log_impl(&_mh_execute_header, oslog, v30, "Paired device changed while %@ remote commands were pending.", v40, 0xCu);
      _objc_release(v14);
    }

    objc_storeStrong(&oslog, 0);
    v29 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8018 userInfo:0];
    memset(__b, 0, sizeof(__b));
    v12 = _objc_retain(allValues);
    v13 = [v12 countByEnumeratingWithState:__b objects:v39 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(v12);
        }

        v28 = *(__b[1] + 8 * v10);
        queue = dispatch_get_global_queue(21, 0);
        v20 = _NSConcreteStackBlock;
        v21 = -1073741824;
        v22 = 0;
        v23 = sub_1000805B0;
        v24 = &unk_100320530;
        v26 = _objc_retain(v28);
        v25 = _objc_retain(v29);
        dispatch_async(queue, &v20);
        _objc_release(queue);
        objc_storeStrong(&v25, 0);
        objc_storeStrong(&v26, 0);
        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [v12 countByEnumeratingWithState:__b objects:v39 count:16];
          if (!v11)
          {
            break;
          }
        }
      }
    }

    _objc_release(v12);
    [(NSMutableDictionary *)selfCopy->_completionsByInternalMessageID removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_internalMessageIDsByTransportID removeAllObjects];
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&allValues, 0);
  }

  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v19;
    v6 = v18;
    sub_10001CEEC(v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "Acknowledged!", v17, 2u);
  }

  objc_storeStrong(&v19, 0);
  (*(v35 + 2))();
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

@end