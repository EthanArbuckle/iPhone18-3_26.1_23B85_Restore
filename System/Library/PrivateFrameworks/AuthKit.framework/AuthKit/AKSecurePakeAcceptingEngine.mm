@interface AKSecurePakeAcceptingEngine
+ ($2FE3C3292E52C4A5B67D27538456EAD9)_newSessionEntropyWithError:(id *)error;
+ (id)_secureRandomSaltOfLength:(unint64_t)length;
- (AKSecurePakeAcceptingEngine)initWithContext:(id)context userPermissionBlock:(id)block showCodeBlock:(id)codeBlock;
- (id)_generateNewLoginCodeWithError:(id *)error;
- (id)_newVerifierWithEntropy:(id)entropy error:(id *)error;
- (void)_onqueue_processMessage0:(id)message0 completionHandler:(id)handler;
- (void)_onqueue_processMessage0:(id)message0 verifier:(id)verifier completionHandler:(id)handler;
- (void)_onqueue_processMessage2:(id)message2 completionHandler:(id)handler;
- (void)_onqueue_processMessage2:(id)message2 withVerifier:(id)verifier completionHandler:(id)handler;
- (void)_onqueue_processMessage4:(id)message4 completionHandler:(id)handler;
- (void)_onqueue_processMessage4:(id)message4 withVerifier:(id)verifier completionHandler:(id)handler;
- (void)_onqueue_processMessage6:(id)message6 completionHandler:(id)handler;
- (void)_onqueue_processMessage6:(id)message6 withVerifier:(id)verifier completionHandler:(id)handler;
- (void)_onqueue_processMessage:(id)message completionHandler:(id)handler;
- (void)_onqueue_promptForCodeWithCompletionHandler:(id)handler;
- (void)processMessage:(id)message completionHandler:(id)handler;
@end

@implementation AKSecurePakeAcceptingEngine

- (AKSecurePakeAcceptingEngine)initWithContext:(id)context userPermissionBlock:(id)block showCodeBlock:(id)codeBlock
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, block);
  v15 = 0;
  objc_storeStrong(&v15, codeBlock);
  v5 = selfCopy;
  selfCopy = 0;
  v14.receiver = v5;
  v14.super_class = AKSecurePakeAcceptingEngine;
  selfCopy = [(AKSecurePakeEngineBase *)&v14 initWithContext:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = objc_retainBlock(v16);
    userPermissionBlock = selfCopy->_userPermissionBlock;
    selfCopy->_userPermissionBlock = v6;
    _objc_release(userPermissionBlock);
    v8 = objc_retainBlock(v15);
    showCodeBlock = selfCopy->_showCodeBlock;
    selfCopy->_showCodeBlock = v8;
    _objc_release(showCodeBlock);
  }

  v11 = _objc_retain(selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)_onqueue_promptForCodeWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  context = [(AKSecurePakeEngineBase *)selfCopy context];
  sessionEntropy = [(AKSecurePakeContext *)context sessionEntropy];
  v27 = v3;
  _objc_release(context);
  if (v27 && sessionEntropy)
  {
    goto LABEL_12;
  }

  v25 = 0;
  v23 = 0;
  v8 = [AKSecurePakeAcceptingEngine _newSessionEntropyWithError:&v23];
  v9 = v4;
  objc_storeStrong(&v25, v23);
  v24[0] = v8;
  v24[1] = v9;
  sub_1000699B8(&sessionEntropy, v24);
  if (v25)
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0, v25);
    }

    v22 = 1;
  }

  else
  {
    sub_100069A2C(v21, &sessionEntropy);
    context2 = [(AKSecurePakeEngineBase *)selfCopy context];
    sub_100069A2C(v20, v21);
    if (context2)
    {
      [(AKSecurePakeContext *)context2 setSessionEntropy:v20[0], v20[1]];
    }

    else
    {
      sub_100069A94(v20);
    }

    sub_100069A94(v21);
    _objc_release(context2);
    v22 = 0;
  }

  objc_storeStrong(&v25, 0);
  if (!v22)
  {
LABEL_12:
    objc_initWeak(&from, selfCopy);
    userPermissionBlock = selfCopy->_userPermissionBlock;
    context3 = [(AKSecurePakeEngineBase *)selfCopy context];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100069AD8;
    v16 = &unk_100320C88;
    objc_copyWeak(&v18, &from);
    v17 = _objc_retain(location[0]);
    userPermissionBlock[2](userPermissionBlock, context3, &v12);
    _objc_release(context3);
    objc_storeStrong(&v17, 0);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    v22 = 0;
  }

  sub_100069A94(&sessionEntropy);
  objc_storeStrong(location, 0);
}

- (id)_newVerifierWithEntropy:(id)entropy error:(id *)error
{
  entropyCopy = entropy;
  selfCopy = self;
  v13 = a2;
  errorCopy = error;
  location = 0;
  obj = 0;
  v7 = [[SPAKE2WebVerifier alloc] initWithSalt:entropy.var0 code:entropy.var1 error:&obj];
  objc_storeStrong(&location, obj);
  v10 = v7;
  if (v7)
  {
    v16 = _objc_retain(v10);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v17, location);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to create SPAKE2WebVerifier with error: %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v6 = location;
      v4 = location;
      *errorCopy = v6;
    }

    v16 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  sub_100069A94(&entropyCopy.var0);
  return v16;
}

+ ($2FE3C3292E52C4A5B67D27538456EAD9)_newSessionEntropyWithError:(id *)error
{
  selfCopy = self;
  v22 = a2;
  errorCopy = error;
  location = _AKLogSystem();
  v19 = 2;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    type = v19;
    sub_10001CEEC(v18);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Creating new secure pake session entropy", v18, 2u);
  }

  objc_storeStrong(&location, 0);
  v17 = [AKSecurePakeAcceptingEngine _secureRandomSaltOfLength:32];
  if (v17)
  {
    v15 = 0;
    obj = 0;
    v7 = [SPAKE2WebVerifier generateCodeWithError:&obj];
    objc_storeStrong(&v15, obj);
    v14 = v7;
    if (v7)
    {
      v10 = _AKLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10006A3A4(v26, 1752392040, v17, v14);
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Created new secure pake session entropy with salt: %{mask.hash}@ code: %@", v26, 0x20u);
      }

      objc_storeStrong(&v10, 0);
      v24 = 0;
      v25 = 0;
      v24 = _objc_retain(v17);
      v25 = _objc_retain(v14);
      v16 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      v11 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v27, v15);
        _os_log_error_impl(&_mh_execute_header, oslog, v11, "Failed to generate SPAKE2+ verifier code with error: %@", v27, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (errorCopy)
      {
        v6 = v15;
        v3 = v15;
        *errorCopy = v6;
      }

      sub_100069A2C(&v24, qword_10029BE88);
      v16 = 1;
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    sub_100069A2C(&v24, qword_10029BE88);
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  v4 = v25;
  v5 = v24;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

+ (id)_secureRandomSaltOfLength:(unint64_t)length
{
  selfCopy = self;
  v25 = a2;
  lengthCopy = length;
  v23 = &v5;
  v14 = &v5 - ((length + 15) & 0xFFFFFFFFFFFFFFF0);
  lengthCopy2 = length;
  v21 = SecRandomCopyBytes(kSecRandomDefault, length, v14);
  if (v21)
  {
    location = _AKLogSystem();
    v19 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v11 = location;
      v12 = v19;
      v13 = v29;
      sub_10006A654(v29, v21);
      _os_log_error_impl(&_mh_execute_header, v11, v12, "Failed to SecRandomCopyBytes with result: %d", v13, 8u);
    }

    v10 = 0;
    objc_storeStrong(&location, 0);
    v27 = v10;
    v18 = 1;
  }

  else
  {
    v17 = [NSData dataWithBytes:v14 length:lengthCopy];
    v16 = _AKLogSystem();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v7 = v16;
      v8 = v15;
      v9 = v28;
      sub_10006A68C(v28, lengthCopy, 1752392040, v17);
      _os_log_debug_impl(&_mh_execute_header, v7, v8, "Generated new secure salt of length %lu: %{mask.hash}@", v9, 0x20u);
    }

    v6 = 0;
    objc_storeStrong(&v16, 0);
    v27 = v17;
    v18 = 1;
    objc_storeStrong(&v17, v6);
  }

  v5 = v27;
  v3 = v27;

  return v3;
}

- (void)processMessage:(id)message completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v16 = 0;
  objc_storeStrong(&v16, handler);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v19, "[AKSecurePakeAcceptingEngine processMessage:completionHandler:]", 165);
    _os_log_debug_impl(&_mh_execute_header, v15, v14, "%s (%d) called", v19, 0x12u);
  }

  objc_storeStrong(&v15, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10006A944;
  v10 = &unk_100320558;
  v11 = _objc_retain(selfCopy);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v16);
  dispatch_async(queue, &v6);
  _objc_release(queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage:(id)message completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v18 = 0;
  objc_storeStrong(&v18, handler);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v23, "[AKSecurePakeAcceptingEngine _onqueue_processMessage:completionHandler:]", 172);
    _os_log_debug_impl(&_mh_execute_header, v17, v16, "%s (%d) called", v23, 0x12u);
  }

  objc_storeStrong(&v17, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    context = [(AKSecurePakeEngineBase *)selfCopy context];
    pushMessage = [location[0] pushMessage];
    sub_10001B098(v22, context, pushMessage);
    _os_log_debug_impl(&_mh_execute_header, v15, v14, "Updating current push message on context: %@ to: %@", v22, 0x16u);
    _objc_release(pushMessage);
    _objc_release(context);
  }

  objc_storeStrong(&v15, 0);
  pushMessage2 = [location[0] pushMessage];
  context2 = [(AKSecurePakeEngineBase *)selfCopy context];
  [(AKSecurePakeContext *)context2 setCurrentPushMessage:pushMessage2];
  _objc_release(context2);
  _objc_release(pushMessage2);
  messageStep = [location[0] messageStep];
  if (messageStep)
  {
    if (messageStep == 2)
    {
      [(AKSecurePakeAcceptingEngine *)selfCopy _onqueue_processMessage2:location[0] completionHandler:v18];
    }

    else if (messageStep == 4)
    {
      [(AKSecurePakeAcceptingEngine *)selfCopy _onqueue_processMessage4:location[0] completionHandler:v18];
    }

    else
    {
      if (messageStep == 6)
      {
        [(AKSecurePakeAcceptingEngine *)selfCopy _onqueue_processMessage6:location[0] completionHandler:v18];
      }

      v13 = _AKLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v21, location[0]);
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Accepting engine does not expected to handle message: %@", v21, 0xCu);
      }

      objc_storeStrong(&v13, 0);
      if (v18)
      {
        v4 = v18;
        v5 = [NSError ak_errorWithCode:-7125];
        v4[2](v4, 0);
        _objc_release(v5);
      }
    }
  }

  else
  {
    [(AKSecurePakeAcceptingEngine *)selfCopy _onqueue_processMessage0:location[0] completionHandler:v18];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage0:(id)message0 completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message0);
  v18 = 0;
  objc_storeStrong(&v18, handler);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v21, "[AKSecurePakeAcceptingEngine _onqueue_processMessage0:completionHandler:]", 199);
    _os_log_debug_impl(&_mh_execute_header, v17, v16, "%s (%d) called", v21, 0x12u);
  }

  objc_storeStrong(&v17, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  objc_initWeak(&from, selfCopy);
  v4 = selfCopy;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10006B090;
  v11 = &unk_100320CB0;
  objc_copyWeak(&v14, &from);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v18);
  [(AKSecurePakeAcceptingEngine *)v4 _onqueue_promptForCodeWithCompletionHandler:&v7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage0:(id)message0 verifier:(id)verifier completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message0);
  v23 = 0;
  objc_storeStrong(&v23, verifier);
  v22 = 0;
  objc_storeStrong(&v22, handler);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v27, "[AKSecurePakeAcceptingEngine _onqueue_processMessage0:verifier:completionHandler:]", 216);
    _os_log_debug_impl(&_mh_execute_header, v21, v20, "%s (%d) called", v27, 0x12u);
  }

  objc_storeStrong(&v21, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  v13 = [AKSecurePakeMessage alloc];
  sessionID = [location[0] sessionID];
  altDSID = [location[0] altDSID];
  serverData = [location[0] serverData];
  transactionID = [location[0] transactionID];
  context = [(AKSecurePakeEngineBase *)selfCopy context];
  devicePushToken = [(AKSecurePakeContext *)context devicePushToken];
  v19 = [(AKSecurePakeMessage *)v13 initWithSessionID:sessionID altDSID:altDSID messageStep:1 pakeData:0 clientData:0 serverData:serverData clientError:0 transactionID:transactionID devicePushToken:devicePushToken encryptedCode:0 pushMessage:0];
  _objc_release(devicePushToken);
  _objc_release(context);
  _objc_release(transactionID);
  _objc_release(serverData);
  _objc_release(altDSID);
  _objc_release(sessionID);
  context2 = [(AKSecurePakeEngineBase *)selfCopy context];
  v18[0] = [(AKSecurePakeContext *)context2 sessionEntropy];
  v18[1] = v5;
  [v19 setSalt:v18[0]];
  sub_100069A94(v18);
  _objc_release(context2);
  v17 = _AKLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v26, location[0], v19);
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Processed message 0 (%@) with return message: %@", v26, 0x16u);
  }

  objc_storeStrong(&v17, 0);
  if (v22)
  {
    (*(v22 + 2))(v22, v19, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage2:(id)message2 completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message2);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v23, "[AKSecurePakeAcceptingEngine _onqueue_processMessage2:completionHandler:]", 238);
    _os_log_debug_impl(&_mh_execute_header, v19, v18, "%s (%d) called", v23, 0x12u);
  }

  objc_storeStrong(&v19, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  v17 = 0;
  v12 = selfCopy;
  context = [(AKSecurePakeEngineBase *)selfCopy context];
  sessionEntropy = [(AKSecurePakeContext *)context sessionEntropy];
  v16 = v4;
  v14 = 0;
  if (v12)
  {
    v8 = [(AKSecurePakeAcceptingEngine *)v12 _newVerifierWithEntropy:sessionEntropy error:v16, &v14];
    objc_storeStrong(&v17, v14);
    v9 = v8;
  }

  else
  {
    sub_100069A94(&sessionEntropy);
    v9 = 0;
  }

  verifier = selfCopy->_verifier;
  selfCopy->_verifier = v9;
  _objc_release(verifier);
  _objc_release(context);
  if (selfCopy->_verifier)
  {
    [(AKSecurePakeAcceptingEngine *)selfCopy _onqueue_processMessage2:location[0] withVerifier:selfCopy->_verifier completionHandler:v20];
  }

  else if (v20)
  {
    v6 = v20;
    v7 = [NSError ak_errorWithCode:-7132];
    v6[2](v6, 0);
    _objc_release(v7);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage2:(id)message2 withVerifier:(id)verifier completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message2);
  v54 = 0;
  objc_storeStrong(&v54, verifier);
  v53 = 0;
  objc_storeStrong(&v53, handler);
  v52 = _AKLogSystem();
  v51 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v62, "[AKSecurePakeAcceptingEngine _onqueue_processMessage2:withVerifier:completionHandler:]", 254);
    _os_log_debug_impl(&_mh_execute_header, v52, v51, "%s (%d) called", v62, 0x12u);
  }

  objc_storeStrong(&v52, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  pakeData = [location[0] pakeData];
  if (pakeData)
  {
    v46 = 0;
    v44 = 0;
    v20 = [v54 getMsg1WithError:&v44];
    objc_storeStrong(&v46, v44);
    v45 = v20;
    if (v20)
    {
      v41 = 0;
      v39 = 0;
      v17 = [v54 processMsg1:pakeData error:&v39];
      objc_storeStrong(&v41, v39);
      v40 = v17;
      if (v17)
      {
        v36 = 0;
        v34 = 0;
        v14 = [v54 getMsg2WithError:&v34];
        objc_storeStrong(&v36, v34);
        v35 = v14;
        if (v14)
        {
          v31 = [v45 base64EncodedStringWithOptions:?];
          v30 = [v35 base64EncodedStringWithOptions:0];
          v29 = [NSString stringWithFormat:@"%@_%@", v31, v30];
          v28 = [v29 dataUsingEncoding:4];
          v5 = [AKSecurePakeMessage alloc];
          sessionID = [location[0] sessionID];
          altDSID = [location[0] altDSID];
          serverData = [location[0] serverData];
          transactionID = [location[0] transactionID];
          context = [(AKSecurePakeEngineBase *)selfCopy context];
          devicePushToken = [(AKSecurePakeContext *)context devicePushToken];
          v27 = [(AKSecurePakeMessage *)v5 initWithSessionID:sessionID altDSID:altDSID messageStep:3 pakeData:v28 clientData:0 serverData:serverData clientError:0 transactionID:transactionID devicePushToken:devicePushToken encryptedCode:0 pushMessage:0];
          _objc_release(devicePushToken);
          _objc_release(context);
          _objc_release(transactionID);
          _objc_release(serverData);
          _objc_release(altDSID);
          _objc_release(sessionID);
          v26 = _AKLogSystem();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            sub_10001B098(v57, location[0], v27);
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Processed message 2 (%@) with return message: %@", v57, 0x16u);
          }

          objc_storeStrong(&v26, 0);
          if (v53)
          {
            (*(v53 + 2))();
          }

          objc_storeStrong(&v27, 0);
          objc_storeStrong(&v28, 0);
          objc_storeStrong(&v29, 0);
          objc_storeStrong(&v30, 0);
          objc_storeStrong(&v31, 0);
          v47 = 0;
        }

        else
        {
          v33 = _AKLogSystem();
          v32 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v58, v36);
            _os_log_error_impl(&_mh_execute_header, v33, v32, "Failed to generate msg2 with error: %@", v58, 0xCu);
          }

          objc_storeStrong(&v33, 0);
          if (v53)
          {
            v12 = v53;
            v13 = [NSError ak_errorWithCode:-7128 underlyingError:v36];
            v12[2](v12, 0);
            _objc_release(v13);
          }

          v47 = 1;
        }

        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v36, 0);
      }

      else
      {
        oslog = _AKLogSystem();
        v37 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_10001B098(v59, pakeData, v41);
          _os_log_error_impl(&_mh_execute_header, oslog, v37, "Failed to process msg1 (%@) with error: %@", v59, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        if (v53)
        {
          v15 = v53;
          v16 = [NSError ak_errorWithCode:-7129];
          v15[2](v15, 0);
          _objc_release(v16);
        }

        v47 = 1;
      }

      objc_storeStrong(&v41, 0);
    }

    else
    {
      v43 = _AKLogSystem();
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v60, v46);
        _os_log_error_impl(&_mh_execute_header, v43, v42, "Failed to generate msg1 with error: %@", v60, 0xCu);
      }

      objc_storeStrong(&v43, 0);
      if (v53)
      {
        v18 = v53;
        v19 = [NSError ak_errorWithCode:-7128 underlyingError:v46];
        v18[2](v18, 0);
        _objc_release(v19);
      }

      v47 = 1;
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
  }

  else
  {
    v49 = _AKLogSystem();
    v48 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v61, location[0]);
      _os_log_error_impl(&_mh_execute_header, v49, v48, "Failed to process message 2 (%@), missing pake message", v61, 0xCu);
    }

    objc_storeStrong(&v49, 0);
    if (v53)
    {
      v21 = v53;
      v22 = [NSError ak_errorWithCode:-7127];
      v21[2](v21, 0);
      _objc_release(v22);
    }

    v47 = 1;
  }

  objc_storeStrong(&pakeData, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage4:(id)message4 completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message4);
  v9 = 0;
  objc_storeStrong(&v9, handler);
  v8 = _AKLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v12, "[AKSecurePakeAcceptingEngine _onqueue_processMessage4:completionHandler:]", 312);
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s (%d) called", v12, 0x12u);
  }

  objc_storeStrong(&v8, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  if (selfCopy->_verifier)
  {
    [(AKSecurePakeAcceptingEngine *)selfCopy _onqueue_processMessage4:location[0] withVerifier:selfCopy->_verifier completionHandler:v9];
  }

  else if (v9)
  {
    v4 = v9;
    v5 = [NSError ak_errorWithCode:-7132];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage4:(id)message4 withVerifier:(id)verifier completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message4);
  v49 = 0;
  objc_storeStrong(&v49, verifier);
  v48 = 0;
  objc_storeStrong(&v48, handler);
  v47 = _AKLogSystem();
  v46 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v56, "[AKSecurePakeAcceptingEngine _onqueue_processMessage4:withVerifier:completionHandler:]", 325);
    _os_log_debug_impl(&_mh_execute_header, v47, v46, "%s (%d) called", v56, 0x12u);
  }

  objc_storeStrong(&v47, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  pakeData = [location[0] pakeData];
  v44 = [[NSString alloc] initWithData:pakeData encoding:4];
  if ([v44 isEqualToString:@"done"])
  {
    [(AKSecurePakeAcceptingEngine *)selfCopy _onqueue_processMessage6:location[0] withVerifier:v49 completionHandler:v48];
    v43 = 1;
  }

  else
  {
    v42 = 0;
    v40 = 0;
    v21 = [v49 processMsg2:pakeData error:&v40];
    objc_storeStrong(&v42, v40);
    v41 = v21;
    if (v21)
    {
      v37 = 0;
      v35 = 0;
      v18 = [(AKSecurePakeAcceptingEngine *)selfCopy _generateNewLoginCodeWithError:&v35];
      objc_storeStrong(&v37, v35);
      v36 = v18;
      v34 = [v18 dataUsingEncoding:4];
      if (v34)
      {
        v31 = 0;
        v30 = 0;
        v29 = 0;
        v15 = [v49 encryptMessageAsBinary:v34 error:&v29];
        objc_storeStrong(&v31, v29);
        v5 = v30;
        v30 = v15;
        _objc_release(v5);
        if (v30)
        {
          v12 = [AKSecurePakeMessage alloc];
          sessionID = [location[0] sessionID];
          altDSID = [location[0] altDSID];
          serverData = [location[0] serverData];
          transactionID = [location[0] transactionID];
          context = [(AKSecurePakeEngineBase *)selfCopy context];
          devicePushToken = [(AKSecurePakeContext *)context devicePushToken];
          v26 = [(AKSecurePakeMessage *)v12 initWithSessionID:sessionID altDSID:altDSID messageStep:3 pakeData:0 clientData:0 serverData:serverData clientError:0 transactionID:transactionID devicePushToken:devicePushToken encryptedCode:v30 pushMessage:0];
          _objc_release(devicePushToken);
          _objc_release(context);
          _objc_release(transactionID);
          _objc_release(serverData);
          _objc_release(altDSID);
          _objc_release(sessionID);
          v25 = _AKLogSystem();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            sub_10001B098(v52, location[0], v26);
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Processed message 2 (%@) with return message: %@", v52, 0x16u);
          }

          objc_storeStrong(&v25, 0);
          if (v48)
          {
            (*(v48 + 2))();
          }

          objc_storeStrong(&v26, 0);
          v43 = 0;
        }

        else
        {
          v28 = _AKLogSystem();
          v27 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v53, v31);
            _os_log_error_impl(&_mh_execute_header, v28, v27, "Failed to encrypt anisette code with error: %@", v53, 0xCu);
          }

          objc_storeStrong(&v28, 0);
          if (v48)
          {
            v14 = v48;
            v13 = [NSError ak_errorWithCode:-7130 underlyingError:v31];
            v14[2](v14, 0);
            _objc_release(v13);
          }

          v43 = 1;
        }

        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
      }

      else
      {
        oslog = _AKLogSystem();
        v32 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v54, v37);
          _os_log_error_impl(&_mh_execute_header, oslog, v32, "Failed to generate anisette code with error: %@", v54, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        if (v48)
        {
          v17 = v48;
          v16 = [NSError ak_errorWithCode:-7130 underlyingError:v37];
          v17[2](v17, 0);
          _objc_release(v16);
        }

        v43 = 1;
      }

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v37, 0);
    }

    else
    {
      v39 = _AKLogSystem();
      v38 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v55, pakeData, v42);
        _os_log_error_impl(&_mh_execute_header, v39, v38, "Failed to process msg2 (%@) with error: %@", v55, 0x16u);
      }

      objc_storeStrong(&v39, 0);
      if (v48)
      {
        v20 = v48;
        v19 = [NSError ak_errorWithCode:-7129 underlyingError:v42];
        v20[2](v20, 0);
        _objc_release(v19);
      }

      v43 = 1;
    }

    objc_storeStrong(&v42, 0);
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&pakeData, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage6:(id)message6 completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message6);
  v9 = 0;
  objc_storeStrong(&v9, handler);
  v8 = _AKLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v12, "[AKSecurePakeAcceptingEngine _onqueue_processMessage6:completionHandler:]", 388);
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s (%d) called", v12, 0x12u);
  }

  objc_storeStrong(&v8, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  if (selfCopy->_verifier)
  {
    [(AKSecurePakeAcceptingEngine *)selfCopy _onqueue_processMessage6:location[0] withVerifier:selfCopy->_verifier completionHandler:v9];
  }

  else if (v9)
  {
    v4 = v9;
    v5 = [NSError ak_errorWithCode:-7132];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage6:(id)message6 withVerifier:(id)verifier completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message6);
  v21 = 0;
  objc_storeStrong(&v21, verifier);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v26, "[AKSecurePakeAcceptingEngine _onqueue_processMessage6:withVerifier:completionHandler:]", 401);
    _os_log_debug_impl(&_mh_execute_header, v19, v18, "%s (%d) called", v26, 0x12u);
  }

  objc_storeStrong(&v19, 0);
  queue = [(AKSecurePakeEngineBase *)selfCopy queue];
  dispatch_assert_queue_V2(queue);
  _objc_release(queue);
  controller = [(AKSecurePakeEngineBase *)selfCopy controller];
  if ([v21 isVerified])
  {
    v7 = [AKSymmetricKey alloc];
    getKey = [v21 getKey];
    v16 = [v7 initFromSymmetricKey:?];
    _objc_release(getKey);
    oslog = _AKLogSystem();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v21;
      keyData = [v16 keyData];
      sub_10001B098(v25, v5, keyData);
      _os_log_impl(&_mh_execute_header, oslog, v14, "SPAKE2+ verifier (%@) reports the derived key has been verified: %@", v25, 0x16u);
      _objc_release(keyData);
    }

    objc_storeStrong(&oslog, 0);
    [controller securePakeEngine:selfCopy didDeriveKey:v16];
    if (v20)
    {
      (*(v20 + 2))(v20, 0);
    }

    objc_storeStrong(&v16, 0);
  }

  else
  {
    v13 = [NSError ak_errorWithCode:-7126];
    v12 = _AKLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v24, v21, v13);
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "SPAKE2+ verifier (%@) reported derived key is not verified: %@", v24, 0x16u);
    }

    objc_storeStrong(&v12, 0);
    [controller securePakeEngine:selfCopy didFailToDeriveKeyWithError:v13];
    if (v20)
    {
      (*(v20 + 2))(v20, 0, v13);
    }

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&controller, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (id)_generateNewLoginCodeWithError:(id *)error
{
  v5[3] = self;
  v5[2] = a2;
  v5[1] = error;
  v5[0] = [AKAppleIDCodeGenerator generateLoginCode:error];
  stringValue = [v5[0] stringValue];
  objc_storeStrong(v5, 0);

  return stringValue;
}

@end