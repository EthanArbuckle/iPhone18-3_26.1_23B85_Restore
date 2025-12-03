@interface AKSecurePakeMessage
+ (id)securePakeMessageFromData:(id)data error:(id *)error;
+ (id)securePakeMessageFromPayload:(id)payload error:(id *)error;
+ (id)securePakeMessageFromPush:(id)push error:(id *)error;
+ (int64_t)_securePakeMessageStepFromPayload:(id)payload;
- (AKSecurePakeMessage)initWithSessionID:(id)d altDSID:(id)iD messageStep:(int64_t)step pakeData:(id)data clientData:(id)clientData serverData:(id)serverData clientError:(unint64_t)error transactionID:(id)self0 devicePushToken:(id)self1 encryptedCode:(id)self2 pushMessage:(id)self3;
- (id)debugDescription;
- (id)payloadWithError:(id *)error;
@end

@implementation AKSecurePakeMessage

- (AKSecurePakeMessage)initWithSessionID:(id)d altDSID:(id)iD messageStep:(int64_t)step pakeData:(id)data clientData:(id)clientData serverData:(id)serverData clientError:(unint64_t)error transactionID:(id)self0 devicePushToken:(id)self1 encryptedCode:(id)self2 pushMessage:(id)self3
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v31 = 0;
  objc_storeStrong(&v31, iD);
  stepCopy = step;
  v29 = 0;
  objc_storeStrong(&v29, data);
  v28 = 0;
  objc_storeStrong(&v28, clientData);
  v27 = 0;
  objc_storeStrong(&v27, serverData);
  errorCopy = error;
  v25 = 0;
  objc_storeStrong(&v25, transactionID);
  v24 = 0;
  objc_storeStrong(&v24, token);
  v23 = 0;
  objc_storeStrong(&v23, code);
  v22 = 0;
  objc_storeStrong(&v22, message);
  v13 = selfCopy;
  selfCopy = 0;
  v21.receiver = v13;
  v21.super_class = AKSecurePakeMessage;
  selfCopy = [(AKSecurePakeMessage *)&v21 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_sessionID, location[0]);
    objc_storeStrong(&selfCopy->_altDSID, v31);
    selfCopy->_messageStep = stepCopy;
    objc_storeStrong(&selfCopy->_pakeData, v29);
    objc_storeStrong(&selfCopy->_clientData, v28);
    objc_storeStrong(&selfCopy->_serverData, v27);
    selfCopy->_clientError = errorCopy;
    objc_storeStrong(&selfCopy->_transactionID, v25);
    objc_storeStrong(&selfCopy->_devicePushToken, v24);
    objc_storeStrong(&selfCopy->_encryptedCode, v23);
    objc_storeStrong(&selfCopy->_pushMessage, v22);
  }

  v15 = _objc_retain(selfCopy);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

+ (id)securePakeMessageFromPayload:(id)payload error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  errorCopy = error;
  v49 = objc_opt_class();
  v50 = [location[0] objectForKeyedSubscript:@"sessionUUID"];
  v51 = sub_1001A2F38(v49, v50);
  v87 = 0;
  v85 = 0;
  if (v51)
  {
    v47 = v51;
  }

  else
  {
    v46 = objc_opt_class();
    v88 = [location[0] objectForKeyedSubscript:@"pakeSessionUUID"];
    v87 = 1;
    v86 = sub_1001A2F38(v46, v88);
    v85 = 1;
    v47 = v86;
  }

  v89 = _objc_retain(v47);
  if (v85)
  {
    _objc_release(v86);
  }

  if (v87)
  {
    _objc_release(v88);
  }

  _objc_release(v51);
  _objc_release(v50);
  v41 = objc_opt_class();
  v42 = [location[0] objectForKeyedSubscript:@"adsid"];
  v84 = sub_1001A2F38(v41, v42);
  _objc_release(v42);
  v83 = [AKSecurePakeMessage _securePakeMessageStepFromPayload:location[0]];
  v43 = objc_opt_class();
  v44 = [location[0] objectForKeyedSubscript:@"data"];
  v45 = sub_1001A2F38(v43, v44);
  v80 = 0;
  v78 = 0;
  if (v45)
  {
    v40 = v45;
  }

  else
  {
    v39 = objc_opt_class();
    v81 = [location[0] objectForKeyedSubscript:@"pakeData"];
    v80 = 1;
    v79 = sub_1001A2F38(v39, v81);
    v78 = 1;
    v40 = v79;
  }

  v82 = _objc_retain(v40);
  if (v78)
  {
    _objc_release(v79);
  }

  if (v80)
  {
    _objc_release(v81);
  }

  _objc_release(v45);
  _objc_release(v44);
  v36 = objc_opt_class();
  v37 = [location[0] objectForKeyedSubscript:@"akData"];
  v38 = sub_1001A2F38(v36, v37);
  v75 = 0;
  v73 = 0;
  if (v38)
  {
    v35 = v38;
  }

  else
  {
    v34 = objc_opt_class();
    v76 = [location[0] objectForKeyedSubscript:@"akdata"];
    v75 = 1;
    v74 = sub_1001A2F38(v34, v76);
    v73 = 1;
    v35 = v74;
  }

  v77 = _objc_retain(v35);
  if (v73)
  {
    _objc_release(v74);
  }

  if (v75)
  {
    _objc_release(v76);
  }

  _objc_release(v38);
  _objc_release(v37);
  v31 = objc_opt_class();
  v32 = [location[0] objectForKeyedSubscript:@"idmsData"];
  v33 = sub_1001A2F38(v31, v32);
  v70 = 0;
  v68 = 0;
  if (v33)
  {
    v30 = v33;
  }

  else
  {
    v29 = objc_opt_class();
    v71 = [location[0] objectForKeyedSubscript:@"idmsdata"];
    v70 = 1;
    v69 = sub_1001A2F38(v29, v71);
    v68 = 1;
    v30 = v69;
  }

  v72 = _objc_retain(v30);
  if (v68)
  {
    _objc_release(v69);
  }

  if (v70)
  {
    _objc_release(v71);
  }

  _objc_release(v33);
  _objc_release(v32);
  v24 = objc_opt_class();
  v25 = [location[0] objectForKeyedSubscript:@"encryptedCode"];
  v67 = sub_1001A2F38(v24, v25);
  _objc_release(v25);
  v26 = objc_opt_class();
  v27 = [location[0] objectForKeyedSubscript:@"errorCode"];
  v28 = sub_1001A2F38(v26, v27);
  v64 = 0;
  v62 = 0;
  if (v28)
  {
    v23 = v28;
  }

  else
  {
    v22 = objc_opt_class();
    v65 = [location[0] objectForKeyedSubscript:@"ec"];
    v64 = 1;
    v63 = sub_1001A2F38(v22, v65);
    v62 = 1;
    v23 = v63;
  }

  integerValue = [v23 integerValue];
  if (v62)
  {
    _objc_release(v63);
  }

  if (v64)
  {
    _objc_release(v65);
  }

  _objc_release(v28);
  _objc_release(v27);
  v66 = integerValue;
  v16 = objc_opt_class();
  v17 = [location[0] objectForKeyedSubscript:@"txnid"];
  v61 = sub_1001A2F38(v16, v17);
  _objc_release(v17);
  v18 = objc_opt_class();
  v19 = [location[0] objectForKeyedSubscript:@"pushToken"];
  v20 = sub_1001A2F38(v18, v19);
  v58 = 0;
  v56 = 0;
  if (v20)
  {
    v15 = v20;
  }

  else
  {
    v14 = objc_opt_class();
    v59 = [location[0] objectForKeyedSubscript:@"ptkn"];
    v58 = 1;
    v57 = sub_1001A2F38(v14, v59);
    v56 = 1;
    v15 = v57;
  }

  v60 = _objc_retain(v15);
  if (v56)
  {
    _objc_release(v57);
  }

  if (v58)
  {
    _objc_release(v59);
  }

  _objc_release(v20);
  _objc_release(v19);
  v55 = 0;
  if (v82)
  {
    v4 = [[NSData alloc] initWithBase64EncodedString:v82 options:0];
    v5 = v55;
    v55 = v4;
    _objc_release(v5);
  }

  v54 = 0;
  if (v77)
  {
    v6 = [[NSData alloc] initWithBase64EncodedString:v77 options:0];
    v7 = v54;
    v54 = v6;
    _objc_release(v7);
  }

  v53 = 0;
  if (v67)
  {
    v8 = [[NSData alloc] initWithBase64EncodedString:v67 options:0];
    v9 = v53;
    v53 = v8;
    _objc_release(v9);
  }

  if (v89 && v84 && v61 && v83 != -1)
  {
    v92 = [[AKSecurePakeMessage alloc] initWithSessionID:v89 altDSID:v84 messageStep:v83 pakeData:v55 clientData:v54 serverData:v72 clientError:v66 transactionID:v61 devicePushToken:v60 encryptedCode:v53 pushMessage:0];
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v93, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Secure pake message payload did not contain necessary keys (missing sessionID, altDSID, and/or txnID): %@", v93, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v13 = [NSError ak_errorWithCode:-7125];
      v10 = v13;
      *errorCopy = v13;
    }

    v92 = 0;
  }

  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v89, 0);
  objc_storeStrong(location, 0);
  v11 = v92;

  return v11;
}

+ (id)securePakeMessageFromData:(id)data error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  objc_storeStrong(location, 0);
  return 0;
}

+ (id)securePakeMessageFromPush:(id)push error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, push);
  errorCopy = error;
  if ([location[0] command] == 2300)
  {
    userInfo = [location[0] userInfo];
    v10 = [AKSecurePakeMessage securePakeMessageFromPayload:"securePakeMessageFromPayload:error:" error:?];
    _objc_release(userInfo);
    if (v10)
    {
      objc_storeStrong(v10 + 12, location[0]);
    }

    v16 = _objc_retain(v10);
    v11 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v17, location[0]);
      _os_log_error_impl(&_mh_execute_header, v13, v12, "Unable to generate secure pake message from APS message with unexpected command: %@", v17, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    if (errorCopy)
    {
      v8 = [NSError ak_errorWithCode:-7001];
      v4 = v8;
      *errorCopy = v8;
    }

    v16 = 0;
    v11 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v16;

  return v5;
}

+ (int64_t)_securePakeMessageStepFromPayload:(id)payload
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v11 = objc_opt_class();
  v12 = [location[0] objectForKeyedSubscript:@"nextStep"];
  v13 = sub_1001A2F38(v11, v12);
  v22 = 0;
  v20 = 0;
  if (v13)
  {
    v3 = _objc_retain(v13);
  }

  else
  {
    v10 = objc_opt_class();
    v23 = [location[0] objectForKeyedSubscript:@"nextStep"];
    v22 = 1;
    v21 = sub_1001A2F38(v10, v23);
    v20 = 1;
    v3 = _objc_retain(v21);
  }

  v24 = v3;
  if (v20)
  {
    _objc_release(v21);
  }

  if (v22)
  {
    _objc_release(v23);
  }

  _objc_release(v13);
  _objc_release(v12);
  if (v24)
  {
    v26 = sub_1001A360C([v24 integerValue] - 1);
    v19 = 1;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = [location[0] objectForKeyedSubscript:@"step"];
    v9 = sub_1001A2F38(v7, v8);
    v16 = 0;
    v14 = 0;
    if (v9)
    {
      v4 = _objc_retain(v9);
    }

    else
    {
      v6 = objc_opt_class();
      v17 = [location[0] objectForKeyedSubscript:@"step"];
      v16 = 1;
      v15 = sub_1001A2F38(v6, v17);
      v14 = 1;
      v4 = _objc_retain(v15);
    }

    v18 = v4;
    if (v14)
    {
      _objc_release(v15);
    }

    if (v16)
    {
      _objc_release(v17);
    }

    _objc_release(v9);
    _objc_release(v8);
    if (v18)
    {
      v26 = sub_1001A360C([v18 integerValue]);
    }

    else
    {
      v26 = -1;
    }

    v19 = 1;
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v26;
}

- (id)payloadWithError:(id *)error
{
  selfCopy = self;
  v33[2] = a2;
  v33[1] = error;
  v33[0] = [NSMutableDictionary dictionaryWithCapacity:10];
  sessionID = [(AKSecurePakeMessage *)selfCopy sessionID];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(sessionID);
  sessionID2 = [(AKSecurePakeMessage *)selfCopy sessionID];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(sessionID2);
  altDSID = [(AKSecurePakeMessage *)selfCopy altDSID];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(altDSID);
  v8 = [NSNumber numberWithInteger:[(AKSecurePakeMessage *)selfCopy messageStep]+ 1];
  stringValue = [(NSNumber *)v8 stringValue];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(stringValue);
  _objc_release(v8);
  v10 = [NSNumber numberWithInteger:[(AKSecurePakeMessage *)selfCopy messageStep]];
  stringValue2 = [(NSNumber *)v10 stringValue];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(stringValue2);
  _objc_release(v10);
  pakeData = [(AKSecurePakeMessage *)selfCopy pakeData];
  v11 = [(NSData *)pakeData base64EncodedStringWithOptions:?];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(v11);
  _objc_release(pakeData);
  pakeData2 = [(AKSecurePakeMessage *)selfCopy pakeData];
  v13 = [(NSData *)pakeData2 base64EncodedStringWithOptions:0];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(v13);
  _objc_release(pakeData2);
  clientData = [(AKSecurePakeMessage *)selfCopy clientData];
  v15 = [(NSData *)clientData base64EncodedStringWithOptions:0];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(v15);
  _objc_release(clientData);
  clientData2 = [(AKSecurePakeMessage *)selfCopy clientData];
  v17 = [(NSData *)clientData2 base64EncodedStringWithOptions:0];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(v17);
  _objc_release(clientData2);
  serverData = [(AKSecurePakeMessage *)selfCopy serverData];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(serverData);
  serverData2 = [(AKSecurePakeMessage *)selfCopy serverData];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(serverData2);
  v22 = [NSNumber numberWithUnsignedInteger:[(AKSecurePakeMessage *)selfCopy clientError]];
  stringValue3 = [(NSNumber *)v22 stringValue];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(stringValue3);
  _objc_release(v22);
  v24 = [NSNumber numberWithUnsignedInteger:[(AKSecurePakeMessage *)selfCopy clientError]];
  stringValue4 = [(NSNumber *)v24 stringValue];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(stringValue4);
  _objc_release(v24);
  transactionID = [(AKSecurePakeMessage *)selfCopy transactionID];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(transactionID);
  devicePushToken = [(AKSecurePakeMessage *)selfCopy devicePushToken];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(devicePushToken);
  devicePushToken2 = [(AKSecurePakeMessage *)selfCopy devicePushToken];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(devicePushToken2);
  encryptedCode = [(AKSecurePakeMessage *)selfCopy encryptedCode];
  v28 = [(NSData *)encryptedCode base64EncodedStringWithOptions:0];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(v28);
  _objc_release(encryptedCode);
  salt = [(AKSecurePakeMessage *)selfCopy salt];
  v30 = [(NSData *)salt base64EncodedStringWithOptions:0];
  [v33[0] setObject:? forKeyedSubscript:?];
  _objc_release(v30);
  _objc_release(salt);
  v32 = [v33[0] copy];
  objc_storeStrong(v33, 0);

  return v32;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v5 = [(AKSecurePakeMessage *)self payloadWithError:0];
  v4 = [v5 debugDescription];
  v6 = [NSString stringWithFormat:@"<%@: %p> %@", v3, self, v4];
  _objc_release(v4);
  _objc_release(v5);

  return v6;
}

@end