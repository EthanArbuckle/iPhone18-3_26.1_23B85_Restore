@interface AKSecurePakeRequestingEngine
- (AKSecurePakeRequestingEngine)initWithContext:(id)a3 enterCodeBlock:(id)a4;
- (id)_newProverWithEntropy:(id)a3 error:(id *)a4;
- (void)_onqueue_processMessage1:(id)a3 completionHandler:(id)a4;
- (void)_onqueue_processMessage1:(id)a3 withProver:(id)a4 completionHandler:(id)a5;
- (void)_onqueue_processMessage3:(id)a3 completionHandler:(id)a4;
- (void)_onqueue_processMessage3:(id)a3 withProver:(id)a4 completionHandler:(id)a5;
- (void)_onqueue_processMessage:(id)a3 completionHandler:(id)a4;
- (void)_onqueue_proverWithCompletionHandler:(id)a3;
- (void)processMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation AKSecurePakeRequestingEngine

- (AKSecurePakeRequestingEngine)initWithContext:(id)a3 enterCodeBlock:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10.receiver = v4;
  v10.super_class = AKSecurePakeRequestingEngine;
  v13 = [(AKSecurePakeEngineBase *)&v10 initWithContext:location[0]];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v5 = objc_retainBlock(v11);
    enterCodeBlock = v13->_enterCodeBlock;
    v13->_enterCodeBlock = v5;
    _objc_release(enterCodeBlock);
  }

  v8 = _objc_retain(v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)_onqueue_proverWithCompletionHandler:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(AKSecurePakeEngineBase *)v22 queue];
  dispatch_assert_queue_V2(v9);
  _objc_release(v9);
  if (v22->_prover)
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], v22->_prover, 0);
    }

    v20 = 1;
  }

  else
  {
    v8 = [(AKSecurePakeEngineBase *)v22 context];
    v19[0] = [(AKSecurePakeContext *)v8 sessionEntropy];
    v19[1] = v3;
    _objc_release(v8);
    if (v19[0])
    {
      objc_initWeak(&from, v22);
      enterCodeBlock = v22->_enterCodeBlock;
      v4 = [(AKSecurePakeEngineBase *)v22 context];
      v10 = _NSConcreteStackBlock;
      v11 = -1040187392;
      v12 = 0;
      v13 = sub_10006DDCC;
      v14 = &unk_100320D10;
      objc_copyWeak(&v16, &from);
      sub_100069A2C(v17, v19);
      v15 = _objc_retain(location[0]);
      enterCodeBlock[2](enterCodeBlock, v4, &v10);
      _objc_release(v4);
      objc_storeStrong(&v15, 0);
      sub_100069A94(v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&from);
      v20 = 0;
    }

    else
    {
      if (location[0])
      {
        v7 = location[0];
        v6 = [NSError ak_errorWithCode:-7131];
        v7[2](v7, 0);
        _objc_release(v6);
      }

      v20 = 1;
    }

    sub_100069A94(v19);
  }

  objc_storeStrong(location, 0);
}

- (id)_newProverWithEntropy:(id)a3 error:(id *)a4
{
  v15 = a3;
  v14 = self;
  v13 = a2;
  v12 = a4;
  location = 0;
  obj = 0;
  v7 = [[SPAKE2WebProver alloc] initWithSalt:a3.var0 code:a3.var1 error:&obj];
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
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to create SPAKE2WebProver with error: %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v12)
    {
      v6 = location;
      v4 = location;
      *v12 = v6;
    }

    v16 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  sub_100069A94(&v15.var0);
  return v16;
}

- (void)processMessage:(id)a3 completionHandler:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v19, "[AKSecurePakeRequestingEngine processMessage:completionHandler:]", 494);
    _os_log_debug_impl(&_mh_execute_header, v15, v14, "%s (%d) called", v19, 0x12u);
  }

  objc_storeStrong(&v15, 0);
  queue = [(AKSecurePakeEngineBase *)v18 queue];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10006E718;
  v10 = &unk_100320558;
  v11 = _objc_retain(v18);
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

- (void)_onqueue_processMessage:(id)a3 completionHandler:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v16, "[AKSecurePakeRequestingEngine _onqueue_processMessage:completionHandler:]", 502);
    _os_log_debug_impl(&_mh_execute_header, v11, v10, "%s (%d) called", v16, 0x12u);
  }

  objc_storeStrong(&v11, 0);
  v6 = [(AKSecurePakeEngineBase *)v14 queue];
  dispatch_assert_queue_V2(v6);
  _objc_release(v6);
  v7 = [location[0] messageStep];
  if (v7 == 1)
  {
    [(AKSecurePakeRequestingEngine *)v14 _onqueue_processMessage1:location[0] completionHandler:v12];
  }

  else if (v7 == 3)
  {
    [(AKSecurePakeRequestingEngine *)v14 _onqueue_processMessage3:location[0] completionHandler:v12];
  }

  else
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, location[0]);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Requesting engine does not expect to handle message: %@", v15, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    if (v12)
    {
      v4 = v12;
      v5 = [NSError ak_errorWithCode:-7125];
      v4[2](v4, 0);
      _objc_release(v5);
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage1:(id)a3 completionHandler:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v21, "[AKSecurePakeRequestingEngine _onqueue_processMessage1:completionHandler:]", 521);
    _os_log_debug_impl(&_mh_execute_header, v17, v16, "%s (%d) called", v21, 0x12u);
  }

  objc_storeStrong(&v17, 0);
  v5 = [(AKSecurePakeEngineBase *)v20 queue];
  dispatch_assert_queue_V2(v5);
  _objc_release(v5);
  objc_initWeak(&from, v20);
  v4 = v20;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10006ECE8;
  v11 = &unk_100320D48;
  objc_copyWeak(&v14, &from);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v18);
  [(AKSecurePakeRequestingEngine *)v4 _onqueue_proverWithCompletionHandler:&v7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage1:(id)a3 withProver:(id)a4 completionHandler:(id)a5
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = 0;
  objc_storeStrong(&v44, a5);
  v43 = _AKLogSystem();
  v42 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v52, "[AKSecurePakeRequestingEngine _onqueue_processMessage1:withProver:completionHandler:]", 538);
    _os_log_debug_impl(&_mh_execute_header, v43, v42, "%s (%d) called", v52, 0x12u);
  }

  objc_storeStrong(&v43, 0);
  v23 = [(AKSecurePakeEngineBase *)v47 queue];
  dispatch_assert_queue_V2(v23);
  _objc_release(v23);
  v41 = [location[0] pakeData];
  if (v41)
  {
    v37 = 0;
    prover = v47->_prover;
    v35 = 0;
    v20 = [(SPAKE2WebProver *)prover processMsg1:v41 error:&v35];
    objc_storeStrong(&v37, v35);
    v36 = v20;
    if (v20)
    {
      v32 = 0;
      v6 = v47->_prover;
      v30 = 0;
      v17 = [(SPAKE2WebProver *)v6 getMsg1WithError:&v30];
      objc_storeStrong(&v32, v30);
      v31 = v17;
      if (v17)
      {
        v8 = [AKSecurePakeMessage alloc];
        v14 = [location[0] sessionID];
        v13 = [location[0] altDSID];
        v7 = v31;
        v12 = [location[0] serverData];
        v11 = [location[0] transactionID];
        v10 = [(AKSecurePakeEngineBase *)v47 context];
        v9 = [(AKSecurePakeContext *)v10 devicePushToken];
        v27 = [(AKSecurePakeMessage *)v8 initWithSessionID:v14 altDSID:v13 messageStep:1 pakeData:v7 clientData:0 serverData:v12 clientError:0 transactionID:v11 devicePushToken:v9 encryptedCode:0 pushMessage:0];
        _objc_release(v9);
        _objc_release(v10);
        _objc_release(v11);
        _objc_release(v12);
        _objc_release(v13);
        _objc_release(v14);
        v26 = _AKLogSystem();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          sub_10001B098(v48, location[0], v27);
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Processed message 1 (%@) with return message: %@", v48, 0x16u);
        }

        objc_storeStrong(&v26, 0);
        if (v44)
        {
          (*(v44 + 2))();
        }

        objc_storeStrong(&v27, 0);
        v38 = 0;
      }

      else
      {
        oslog = _AKLogSystem();
        v28 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v49, v32);
          _os_log_error_impl(&_mh_execute_header, oslog, v28, "Failed to generate msg1 with error: %@", v49, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        if (v44)
        {
          v15 = v44;
          v16 = [NSError ak_errorWithCode:-7128 underlyingError:v32];
          v15[2](v15, 0);
          _objc_release(v16);
        }

        v38 = 1;
      }

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
    }

    else
    {
      v34 = _AKLogSystem();
      v33 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v50, v41, v37);
        _os_log_error_impl(&_mh_execute_header, v34, v33, "Failed to process msg1 (%@) with error: %@", v50, 0x16u);
      }

      objc_storeStrong(&v34, 0);
      if (v44)
      {
        v18 = v44;
        v19 = [NSError ak_errorWithCode:-7129 underlyingError:v37];
        v18[2](v18, 0);
        _objc_release(v19);
      }

      v38 = 1;
    }

    objc_storeStrong(&v37, 0);
  }

  else
  {
    v40 = _AKLogSystem();
    v39 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v51, location[0]);
      _os_log_error_impl(&_mh_execute_header, v40, v39, "Failed to process message 2 (%@), missing pake message", v51, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    if (v44)
    {
      v21 = v44;
      v22 = [NSError ak_errorWithCode:-7127];
      v21[2](v21, 0);
      _objc_release(v22);
    }

    v38 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage3:(id)a3 completionHandler:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = _AKLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v12, "[AKSecurePakeRequestingEngine _onqueue_processMessage3:completionHandler:]", 582);
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s (%d) called", v12, 0x12u);
  }

  objc_storeStrong(&v8, 0);
  v6 = [(AKSecurePakeEngineBase *)v11 queue];
  dispatch_assert_queue_V2(v6);
  _objc_release(v6);
  if (v11->_prover)
  {
    [(AKSecurePakeRequestingEngine *)v11 _onqueue_processMessage3:location[0] withProver:v11->_prover completionHandler:v9];
  }

  else if (v9)
  {
    v4 = v9;
    v5 = [NSError ak_errorWithCode:-7133];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_processMessage3:(id)a3 withProver:(id)a4 completionHandler:(id)a5
{
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = 0;
  objc_storeStrong(&v53, a4);
  v52 = 0;
  objc_storeStrong(&v52, a5);
  v51 = _AKLogSystem();
  v50 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v59, "[AKSecurePakeRequestingEngine _onqueue_processMessage3:withProver:completionHandler:]", 595);
    _os_log_debug_impl(&_mh_execute_header, v51, v50, "%s (%d) called", v59, 0x12u);
  }

  objc_storeStrong(&v51, 0);
  v25 = [(AKSecurePakeEngineBase *)v55 queue];
  dispatch_assert_queue_V2(v25);
  _objc_release(v25);
  v49 = [location[0] pakeData];
  v48 = [location[0] encryptedCode];
  if (v49 && v48)
  {
    v44 = 0;
    prover = v55->_prover;
    v42 = 0;
    v22 = [(SPAKE2WebProver *)prover processMsg2:v49 error:&v42];
    objc_storeStrong(&v44, v42);
    v43 = v22;
    if (v22)
    {
      v39 = 0;
      v6 = v55->_prover;
      v37 = 0;
      v19 = [(SPAKE2WebProver *)v6 getMsg2WithError:&v37];
      objc_storeStrong(&v39, v37);
      v38 = v19;
      if (v19)
      {
        v34 = 0;
        v7 = v55->_prover;
        v32 = 0;
        v16 = [(SPAKE2WebProver *)v7 decryptMessageInBinary:v48 error:&v32];
        objc_storeStrong(&v34, v32);
        v33 = v16;
        v31 = [(AKSecurePakeEngineBase *)v55 controller];
        if (([(SPAKE2WebProver *)v55->_prover isVerified]& 1) != 0)
        {
          v8 = [AKSymmetricKey alloc];
          v9 = [(SPAKE2WebProver *)v55->_prover getKey];
          v30 = [v8 initFromSymmetricKey:?];
          _objc_release(v9);
          [v31 securePakeEngine:v55 didDeriveKey:v30];
          v11 = [AKSecurePakeMessage alloc];
          v15 = [location[0] sessionID];
          v14 = [location[0] altDSID];
          v10 = v38;
          v13 = [location[0] serverData];
          v12 = [location[0] transactionID];
          v29 = [(AKSecurePakeMessage *)v11 initWithSessionID:v15 altDSID:v14 messageStep:4 pakeData:v10 clientData:0 serverData:v13 clientError:0 transactionID:v12 devicePushToken:0 encryptedCode:0 pushMessage:0];
          _objc_release(v12);
          _objc_release(v13);
          _objc_release(v14);
          _objc_release(v15);
          if (v52)
          {
            (*(v52 + 2))(v52, v29, 0);
          }

          objc_storeStrong(&v29, 0);
          objc_storeStrong(&v30, 0);
        }

        else
        {
          v28 = [NSError ak_errorWithCode:-7126];
          [v31 securePakeEngine:v55 didFailToDeriveKeyWithError:v28];
          if (v52)
          {
            (*(v52 + 2))(v52, 0, v28);
          }

          objc_storeStrong(&v28, 0);
        }

        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v34, 0);
        v45 = 0;
      }

      else
      {
        oslog = _AKLogSystem();
        v35 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v56, v39);
          _os_log_error_impl(&_mh_execute_header, oslog, v35, "Failed to generate msg2 with error: %@", v56, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        if (v52)
        {
          v17 = v52;
          v18 = [NSError ak_errorWithCode:-7128 underlyingError:v39];
          v17[2](v17, 0);
          _objc_release(v18);
        }

        v45 = 1;
      }

      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
    }

    else
    {
      v41 = _AKLogSystem();
      v40 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v57, v49, v44);
        _os_log_error_impl(&_mh_execute_header, v41, v40, "Failed to process msg2 (%@) with error: %@", v57, 0x16u);
      }

      objc_storeStrong(&v41, 0);
      if (v52)
      {
        v20 = v52;
        v21 = [NSError ak_errorWithCode:-7129 underlyingError:v44];
        v20[2](v20, 0);
        _objc_release(v21);
      }

      v45 = 1;
    }

    objc_storeStrong(&v44, 0);
  }

  else
  {
    v47 = _AKLogSystem();
    v46 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v58, location[0]);
      _os_log_error_impl(&_mh_execute_header, v47, v46, "Failed to process message 3 (%@), missing pake message (or encrypted code)", v58, 0xCu);
    }

    objc_storeStrong(&v47, 0);
    if (v52)
    {
      v23 = v52;
      v24 = [NSError ak_errorWithCode:-7127];
      v23[2](v23, 0);
      _objc_release(v24);
    }

    v45 = 1;
  }

  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
}

@end