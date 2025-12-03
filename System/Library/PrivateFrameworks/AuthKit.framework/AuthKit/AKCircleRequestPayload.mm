@interface AKCircleRequestPayload
+ (id)_dictionaryWithPlistData:(id)data;
+ (id)payloadWithMessage:(id)message;
+ (id)payloadWithResponseData:(id)data forCircleStep:(unint64_t)step;
- (AKCircleRequestPayload)initWithCoder:(id)coder;
- (BOOL)isAcceptingPayload;
- (BOOL)isRequestingPayload;
- (NSData)clientInfo;
- (id)replyPayload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKCircleRequestPayload

+ (id)payloadWithMessage:(id)message
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v24 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v24 + 11, location[0]);
  userInfo = [location[0] userInfo];
  v4 = v24[12];
  v24[12] = userInfo;
  MEMORY[0x1E69E5920](v4);
  userInfo2 = [location[0] userInfo];
  v5 = [userInfo2 objectForKeyedSubscript:@"idmsdata"];
  v6 = v24[2];
  v24[2] = v5;
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](userInfo2);
  userInfo3 = [location[0] userInfo];
  v18 = [userInfo3 objectForKeyedSubscript:@"ec"];
  v24[4] = [v18 integerValue];
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](userInfo3);
  userInfo4 = [location[0] userInfo];
  v7 = [userInfo4 objectForKeyedSubscript:@"atxnid"];
  v8 = v24[6];
  v24[6] = v7;
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](userInfo4);
  userInfo5 = [location[0] userInfo];
  v21 = [userInfo5 objectForKeyedSubscript:@"step"];
  v24[13] = [v21 integerValue];
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](userInfo5);
  altDSID = [location[0] altDSID];
  v10 = v24[5];
  v24[5] = altDSID;
  MEMORY[0x1E69E5920](v10);
  *(v24 + 9) = [location[0] piggybackingIDMSFallbackApproved];
  v23 = v24[13];
  if (v23 == 1)
  {
    *(v24 + 8) = [location[0] piggybackingRequestorUsesPresence];
    piggybackingRequestorPresenceSID = [location[0] piggybackingRequestorPresenceSID];
    v12 = v24[7];
    v24[7] = piggybackingRequestorPresenceSID;
    MEMORY[0x1E69E5920](v12);
  }

  else if (v23 == 2)
  {
    *(v24 + 8) = [location[0] piggybackingAcceptorSupportsPresence];
    piggybackingRequestorPresenceSID2 = [location[0] piggybackingRequestorPresenceSID];
    v14 = v24[7];
    v24[7] = piggybackingRequestorPresenceSID2;
    MEMORY[0x1E69E5920](v14);
  }

  else if (v23 == 3)
  {
    *(v24 + 8) = [location[0] piggybackingPresenceMode] != 0;
    v24[8] = [location[0] piggybackingPresenceMode];
  }

  v16 = MEMORY[0x1E69E5928](v24);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v16;
}

+ (id)payloadWithResponseData:(id)data forCircleStep:(unint64_t)step
{
  v49 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  stepCopy = step;
  v42 = [AKCircleRequestPayload _dictionaryWithPlistData:location[0]];
  if (v42)
  {
    v37 = _AKLogSystem();
    v36 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v48, v42);
      _os_log_debug_impl(&dword_193225000, v37, v36, "AKCircleRequestPayload: Processing parsed response dictionary (%@)", v48, 0xCu);
    }

    objc_storeStrong(&v37, 0);
    v8 = objc_opt_class();
    v10 = [v42 objectForKeyedSubscript:@"cmd"];
    v9 = _AKSafeCast_12(v8, v10);
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    v35 = unsignedIntegerValue;
    v12 = objc_opt_class();
    v14 = [v42 objectForKeyedSubscript:@"ec"];
    v13 = _AKSafeCast_12(v12, v14);
    integerValue = [v13 integerValue];
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v14);
    v34 = integerValue;
    v16 = objc_opt_class();
    v17 = [v42 objectForKeyedSubscript:@"txnid"];
    v33 = _AKSafeCast_12(v16, v17);
    MEMORY[0x1E69E5920](v17);
    v18 = 0;
    if (unsignedIntegerValue == 700)
    {
      v18 = v33 != 0;
    }

    v32 = v18;
    if (v18)
    {
      v29 = [v42 objectForKeyedSubscript:@"sid"];
      v4 = objc_opt_class();
      v28 = _AKSafeCast_12(v4, v29);
      v25 = 0;
      if (v28)
      {
        v26 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v28];
        v25 = 1;
        v5 = MEMORY[0x1E69E5928](v26);
      }

      else
      {
        v5 = MEMORY[0x1E69E5928](0);
      }

      v27 = v5;
      if (v25)
      {
        MEMORY[0x1E69E5920](v26);
      }

      if (v29 && !v27)
      {
        oslog = _AKLogSystem();
        v23 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v46, v29);
          _os_log_error_impl(&dword_193225000, oslog, v23, "AKCircleRequestPayload: Unable to parse presence SID (%@) as valid UUIDv4", v46, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      v22 = objc_alloc_init(AKCircleRequestPayload);
      v22->_circleStep = stepCopy;
      v22->_clientErrorCode = v34;
      objc_storeStrong(&v22->_transactionId, v33);
      objc_storeStrong(&v22->_presenceSID, v27);
      v22->_URLResponse = 1;
      v45 = MEMORY[0x1E69E5928](v22);
      v38 = 1;
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v29, 0);
    }

    else
    {
      v31 = _AKLogSystem();
      v30 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v47, v42);
        _os_log_error_impl(&dword_193225000, v31, v30, "AKCircleRequestPayload: Unable to parse response dictionary (%@)", v47, 0xCu);
      }

      objc_storeStrong(&v31, 0);
      v45 = 0;
      v38 = 1;
    }

    objc_storeStrong(&v33, 0);
  }

  else
  {
    v41 = _AKLogSystem();
    v40 = 16;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      log = v41;
      type = v40;
      __os_log_helper_16_0_0(v39);
      _os_log_error_impl(&dword_193225000, log, type, "AKCircleRequestPayload: Unable to parse payload from invalid response", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    v45 = 0;
    v38 = 1;
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v6 = v45;

  return v6;
}

+ (id)_dictionaryWithPlistData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  if (location[0])
  {
    v13 = 0;
    obj = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:location[0] options:0 format:0 error:&obj];
    objc_storeStrong(&v13, obj);
    v12 = v6;
    v3 = objc_opt_class();
    v10 = _AKSafeCast_12(v3, v12);
    if (v10)
    {
      v19 = MEMORY[0x1E69E5928](v10);
      v14 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_3_8_64_8_64_8_64(v20, v12, location[0], v13);
        _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "AKCircleRequestPayload: Failed to parse plist (%@) from plist data (%@) with error (%@)", v20, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v19 = 0;
      v14 = 1;
    }

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v17 = _AKLogSystem();
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_193225000, log, type, "AKCircleRequestPayload: Unable to parse plistData (nil)", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v19 = 0;
    v14 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v19;

  return v4;
}

- (BOOL)isRequestingPayload
{
  v3 = 1;
  if (self->_circleStep != 2)
  {
    v3 = 1;
    if (self->_circleStep != 6)
    {
      return self->_circleStep == 4;
    }
  }

  return v3;
}

- (BOOL)isAcceptingPayload
{
  v3 = 1;
  if (self->_circleStep != 1)
  {
    v3 = 1;
    if (self->_circleStep != 3)
    {
      return self->_circleStep == 5;
    }
  }

  return v3;
}

- (NSData)clientInfo
{
  selfCopy = self;
  v11 = a2;
  clientInfo = self->_clientInfo;
  v9 = 0;
  v6 = 0;
  if (!clientInfo)
  {
    v10 = [(NSDictionary *)selfCopy->_responseInfo objectForKeyedSubscript:@"pake"];
    v9 = 1;
    v6 = v10 != 0;
  }

  if (v9)
  {
    MEMORY[0x1E69E5920](v10);
  }

  if (v6)
  {
    v8 = [(NSDictionary *)selfCopy->_responseInfo objectForKeyedSubscript:@"pake"];
    v3 = objc_alloc(MEMORY[0x1E695DEF0]);
    obj = [v3 initWithBase64EncodedString:v8 options:0];
    objc_storeStrong(&selfCopy->_clientInfo, obj);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v8, 0);
  }

  v4 = selfCopy->_clientInfo;

  return v4;
}

- (id)replyPayload
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = objc_opt_new();
  transactionId = [(AKCircleRequestPayload *)selfCopy transactionId];
  [v9[0] setTransactionId:?];
  MEMORY[0x1E69E5920](transactionId);
  altDSID = [(AKCircleRequestPayload *)selfCopy altDSID];
  [v9[0] setAltDSID:?];
  MEMORY[0x1E69E5920](altDSID);
  serverInfo = [(AKCircleRequestPayload *)selfCopy serverInfo];
  [v9[0] setServerInfo:?];
  MEMORY[0x1E69E5920](serverInfo);
  if ([(AKCircleRequestPayload *)selfCopy clientErrorCode])
  {
    circleStep = [(AKCircleRequestPayload *)selfCopy circleStep]- 2;
  }

  else
  {
    circleStep = [(AKCircleRequestPayload *)selfCopy circleStep];
  }

  [v9[0] setCircleStep:{circleStep, v9}];
  v4 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(location, 0);

  return v4;
}

- (AKCircleRequestPayload)initWithCoder:(id)coder
{
  v36[3] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v33.receiver = v3;
  v33.super_class = AKCircleRequestPayload;
  v32 = [(AKCircleRequestPayload *)&v33 init];
  selfCopy = v32;
  objc_storeStrong(&selfCopy, v32);
  if (v32)
  {
    v29 = location[0];
    v28 = MEMORY[0x1E695DFD8];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v36[2] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    v30 = [v28 setWithArray:?];
    v4 = [v29 decodeObjectOfClasses:? forKey:?];
    responseInfo = selfCopy->_responseInfo;
    selfCopy->_responseInfo = v4;
    MEMORY[0x1E69E5920](responseInfo);
    MEMORY[0x1E69E5920](v30);
    MEMORY[0x1E69E5920](v31);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serverInfo"];
    serverInfo = selfCopy->_serverInfo;
    selfCopy->_serverInfo = v6;
    MEMORY[0x1E69E5920](serverInfo);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientInfo"];
    clientInfo = selfCopy->_clientInfo;
    selfCopy->_clientInfo = v8;
    MEMORY[0x1E69E5920](clientInfo);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v10;
    MEMORY[0x1E69E5920](altDSID);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_transactionId"];
    transactionId = selfCopy->_transactionId;
    selfCopy->_transactionId = v12;
    MEMORY[0x1E69E5920](transactionId);
    v14 = [location[0] decodeIntegerForKey:@"_clientErrorCode"];
    selfCopy->_clientErrorCode = v14;
    v15 = [location[0] decodeIntegerForKey:@"_circleStep"];
    selfCopy->_circleStep = v15;
    v16 = [location[0] decodeBoolForKey:@"_supportsPresence"];
    selfCopy->_supportsPresence = v16;
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_presenceSID"];
    presenceSID = selfCopy->_presenceSID;
    selfCopy->_presenceSID = v17;
    MEMORY[0x1E69E5920](presenceSID);
    v19 = [location[0] decodeIntegerForKey:@"_presenceMode"];
    selfCopy->_presenceMode = v19;
    v20 = [location[0] decodeBoolForKey:@"_presenceFallbackApproved"];
    selfCopy->_presenceFallbackApproved = v20;
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_presenceCheckPassed"];
    presenceCheckPassed = selfCopy->_presenceCheckPassed;
    selfCopy->_presenceCheckPassed = v21;
    MEMORY[0x1E69E5920](presenceCheckPassed);
    v23 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_localPresenceFound"];
    localPresenceFound = selfCopy->_localPresenceFound;
    selfCopy->_localPresenceFound = v23;
    MEMORY[0x1E69E5920](localPresenceFound);
    v25 = [location[0] decodeBoolForKey:@"_URLResponse"];
    selfCopy->_URLResponse = v25;
  }

  v27 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x1E69E9840];
  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_responseInfo forKey:@"_responseInfo"];
  [location[0] encodeObject:selfCopy->_serverInfo forKey:@"_serverInfo"];
  [location[0] encodeObject:selfCopy->_clientInfo forKey:@"_clientInfo"];
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_transactionId forKey:@"_transactionId"];
  [location[0] encodeInteger:selfCopy->_clientErrorCode forKey:@"_clientErrorCode"];
  [location[0] encodeInteger:selfCopy->_circleStep forKey:@"_circleStep"];
  [location[0] encodeBool:selfCopy->_supportsPresence forKey:@"_supportsPresence"];
  [location[0] encodeObject:selfCopy->_presenceSID forKey:@"_presenceSID"];
  [location[0] encodeInteger:selfCopy->_presenceMode forKey:@"_presenceMode"];
  [location[0] encodeBool:selfCopy->_presenceFallbackApproved forKey:@"_presenceFallbackApproved"];
  [location[0] encodeObject:selfCopy->_presenceCheckPassed forKey:@"_presenceCheckPassed"];
  [location[0] encodeObject:selfCopy->_localPresenceFound forKey:@"_localPresenceFound"];
  [location[0] encodeBool:selfCopy->_URLResponse forKey:@"_URLResponse"];
  objc_storeStrong(location, 0);
}

@end