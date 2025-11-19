@interface CLEEDRequest
+ (BOOL)validateDerivedSessionSecrets:(id)a3 sharedInfoPrefix:(id)a4 partnerKeyConfirmation:(id)a5;
+ (id)createRequestFromCachedDict:(id)a3 error:(int64_t *)a4;
+ (id)createRequestFromDict:(id)a3 baseURL:(id)a4 sessionID:(id)a5 partnerAdrPublicKeyData:(id)a6 deviceSessionPrivateKey:(__SecKey *)a7 deviceSessionSecret:(id)a8 error:(int64_t *)a9;
+ (id)getCallIDFromDict:(id)a3;
+ (id)getDecryptedControlRequestData:(id)a3 sessionID:(id)a4 partnerAdrPublicKeyData:(id)a5 deviceSessionPrivateKey:(__SecKey *)a6 deviceSessionSecret:(id)a7 combinedSecret:(id *)a8 error:(int64_t *)a9;
+ (id)getDecryptedPartnerSessionSecret:(id)a3 sessionID:(id)a4 partnerID:(id)a5 partnerAdrPublicKeyData:(id)a6 deviceSessionPrivateKey:(__SecKey *)a7;
+ (id)getDecryptedRequestDict:(id)a3 requestID:(id)a4 combinedSecret:(id)a5 sharedInfoPrefix:(id)a6;
+ (id)getPartnerIDFromDict:(id)a3;
+ (id)getSharedInfoPrefixFromSessionID:(id)a3 partnerID:(id)a4 partnerAdrPublicKeyData:(id)a5 deviceSessionPrivateKey:(__SecKey *)a6;
+ (id)toCLEEDRequestString:(int64_t)a3;
+ (id)toEEDControlResponseStatus:(int64_t)a3;
+ (int64_t)getSessionStartTimeFromDict:(id)a3;
+ (int64_t)requestTypeFromDict:(id)a3;
+ (int64_t)toCLEEDRequestType:(id)a3;
- (CLEEDRequest)initWithCoder:(id)a3;
- (CLEEDRequest)initWithDictionary:(id)a3 decryptedRequestData:(id)a4 baseURL:(id)a5 error:(int64_t *)a6;
- (CLEEDRequest)initWithDictionary:(id)a3 error:(int64_t *)a4;
- (CLEEDRequest)initWithID:(id)a3 psapID:(id)a4 partnerID:(id)a5 geofenceID:(id)a6 requestDate:(id)a7 requestType:(int64_t)a8 state:(int64_t)a9;
- (id)getRequestDict;
- (id)getResponseDataDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)updateDurationInformationForCA:(BOOL)a3;
@end

@implementation CLEEDRequest

- (CLEEDRequest)initWithID:(id)a3 psapID:(id)a4 partnerID:(id)a5 geofenceID:(id)a6 requestDate:(id)a7 requestType:(int64_t)a8 state:(int64_t)a9
{
  v60 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v15 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136448002;
    v45 = "[CLEEDRequest initWithID:psapID:partnerID:geofenceID:requestDate:requestType:state:]";
    v46 = 2114;
    v47 = a3;
    v48 = 2114;
    v49 = a4;
    v50 = 2114;
    v51 = a5;
    v52 = 2114;
    v53 = a6;
    v54 = 2114;
    v55 = a7;
    v56 = 2050;
    v57 = a8;
    v58 = 2050;
    v59 = a9;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", buf, 0x52u);
  }

  v16 = sub_19B87DD40();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v28 = 136448002;
    v29 = "[CLEEDRequest initWithID:psapID:partnerID:geofenceID:requestDate:requestType:state:]";
    v30 = 2114;
    v31 = a3;
    v32 = 2114;
    v33 = a4;
    v34 = 2114;
    v35 = a5;
    v36 = 2114;
    v37 = a6;
    v38 = 2114;
    v39 = a7;
    v40 = 2050;
    v41 = a8;
    v42 = 2050;
    v43 = a9;
    v17 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest initWithID:psapID:partnerID:geofenceID:requestDate:requestType:state:]", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v27.receiver = self;
  v27.super_class = CLEEDRequest;
  v18 = [(CLEEDRequest *)&v27 init];
  if (v18)
  {
    *(v18 + 2) = a3;
    *(v18 + 3) = a4;
    *(v18 + 7) = a5;
    *(v18 + 8) = a6;
    *(v18 + 4) = a7;
    *(v18 + 5) = a8;
    *(v18 + 6) = a9;
    *(v18 + 72) = xmmword_19BA89410;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v18 + 88) = _Q0;
    *(v18 + 13) = 0xBFF0000000000000;
    *(v18 + 14) = 0;
    v18[8] = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

- (CLEEDRequest)initWithDictionary:(id)a3 decryptedRequestData:(id)a4 baseURL:(id)a5 error:(int64_t *)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = [a3 objectForKey:{@"request_ID", a4, a5}];
  v8 = [a3 objectForKey:@"partner_ID"];
  v9 = [a3 objectForKey:@"psap_ID"];
  v10 = [a3 objectForKey:@"geofence_ID"];
  v11 = [a3 valueForKey:@"timestamp"];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v12 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v32 = "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v33 = 2114;
    v34 = v7;
    v35 = 2114;
    v36 = v8;
    v37 = 2114;
    v38 = v9;
    v39 = 2114;
    v40 = v10;
    v41 = 2050;
    v42 = [v11 integerValue];
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    [v11 integerValue];
    LODWORD(v28) = 62;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (v7)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  }

  else
  {
    v15 = [MEMORY[0x1E696AFB0] UUID];
  }

  v16 = v15;
  if (v11)
  {
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v11, "integerValue")}];
  }

  else
  {
    v17 = [MEMORY[0x1E695DF00] date];
  }

  v18 = v17;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v19 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v32 = "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v33 = 2114;
    v34 = v16;
    v35 = 2114;
    v36 = v18;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v20 = sub_19B87DD40();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    LODWORD(v28) = 32;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  if (v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = @"UnknownPSAPID";
  }

  if (v8)
  {
    v23 = v8;
  }

  else
  {
    v23 = @"UnknownPartnerID";
  }

  if (v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = @"UnknownGeofenceID";
  }

  v25 = 7;
  if (*a6 == 9)
  {
    v25 = 8;
  }

  result = [(CLEEDRequest *)self initWithID:v16 psapID:v22 partnerID:v23 geofenceID:v24 requestDate:v18 requestType:0 state:v25, v28];
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLEEDRequest)initWithDictionary:(id)a3 error:(int64_t *)a4
{
  v7 = [a3 objectForKey:@"EEDRequestBaseURL"];

  return [(CLEEDRequest *)self initWithDictionary:a3 decryptedRequestData:0 baseURL:v7 error:a4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLEEDRequest;
  [(CLEEDRequest *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    ID = self->_ID;
    psapID = self->_psapID;
    partnerID = self->_partnerID;
    geofenceID = self->_geofenceID;
    requestDate = self->_requestDate;
    type = self->_type;
    state = self->_state;
    *buf = 136448002;
    v24 = "[CLEEDRequest encodeWithCoder:]";
    v25 = 2114;
    v26 = ID;
    v27 = 2114;
    v28 = psapID;
    v29 = 2114;
    v30 = partnerID;
    v31 = 2114;
    v32 = geofenceID;
    v33 = 2114;
    v34 = requestDate;
    v35 = 2050;
    v36 = type;
    v37 = 2050;
    v38 = state;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", buf, 0x52u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = self->_ID;
    v17 = self->_psapID;
    v18 = self->_partnerID;
    v19 = self->_geofenceID;
    v20 = self->_requestDate;
    v21 = self->_type;
    v22 = self->_state;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest encodeWithCoder:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  [a3 encodeObject:self->_ID forKey:@"ID"];
  [a3 encodeObject:self->_psapID forKey:@"psapID"];
  [a3 encodeObject:self->_partnerID forKey:@"partnerID"];
  [a3 encodeObject:self->_geofenceID forKey:@"geofenceID"];
  [a3 encodeObject:self->_requestDate forKey:@"requestDate"];
  [a3 encodeInteger:self->_type forKey:@"type"];
  [a3 encodeInteger:self->_state forKey:@"state"];
  v15 = *MEMORY[0x1E69E9840];
}

- (CLEEDRequest)initWithCoder:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CLEEDRequest;
  v4 = [(CLEEDRequest *)&v24 init];
  if (v4)
  {
    v4->_ID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
    v4->_psapID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"psapID"];
    v4->_partnerID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"partnerID"];
    v4->_geofenceID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"geofenceID"];
    v4->_requestDate = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"requestDate"];
    v4->_type = [a3 decodeIntegerForKey:@"type"];
    v4->_state = [a3 decodeIntegerForKey:@"state"];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v5 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
    {
      ID = v4->_ID;
      psapID = v4->_psapID;
      partnerID = v4->_partnerID;
      geofenceID = v4->_geofenceID;
      requestDate = v4->_requestDate;
      type = v4->_type;
      state = v4->_state;
      *buf = 136448002;
      v42 = "[CLEEDRequest initWithCoder:]";
      v43 = 2114;
      v44 = ID;
      v45 = 2114;
      v46 = psapID;
      v47 = 2114;
      v48 = partnerID;
      v49 = 2114;
      v50 = geofenceID;
      v51 = 2114;
      v52 = requestDate;
      v53 = 2050;
      v54 = type;
      v55 = 2050;
      v56 = state;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", buf, 0x52u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v14 = v4->_ID;
      v15 = v4->_psapID;
      v17 = v4->_partnerID;
      v16 = v4->_geofenceID;
      v18 = v4->_requestDate;
      v19 = v4->_type;
      v20 = v4->_state;
      v25 = 136448002;
      v26 = "[CLEEDRequest initWithCoder:]";
      v27 = 2114;
      v28 = v14;
      v29 = 2114;
      v30 = v15;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v16;
      v35 = 2114;
      v36 = v18;
      v37 = 2050;
      v38 = v19;
      v39 = 2050;
      v40 = v20;
      v21 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest initWithCoder:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)getDecryptedControlRequestData:(id)a3 sessionID:(id)a4 partnerAdrPublicKeyData:(id)a5 deviceSessionPrivateKey:(__SecKey *)a6 deviceSessionSecret:(id)a7 combinedSecret:(id *)a8 error:(int64_t *)a9
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4 || !a5 || !a6 || !a7 || !a8)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v33 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v58 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      goto LABEL_30;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v35 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v35);
    if (v35 == buf)
    {
      goto LABEL_30;
    }

    v36 = v35;
    goto LABEL_29;
  }

  v14 = [a3 valueForKey:@"call_ID"];
  v54 = [objc_msgSend(a3 valueForKey:{@"session_start_time", "intValue"}];
  v15 = [a3 valueForKey:@"partner_ID"];
  v56 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:objc_msgSend(a3 options:{"valueForKey:", @"partner_session_secret", 0}];
  v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:objc_msgSend(a3 options:{"valueForKey:", @"partner_key_confirmation", 0}];
  v17 = [a3 valueForKey:@"request_ID"];
  v18 = objc_alloc(MEMORY[0x1E695DEF0]);
  v19 = [a3 valueForKey:@"request"];
  v20 = v18;
  v21 = v15;
  v22 = v16;
  v23 = [v20 initWithBase64EncodedString:v19 options:0];
  v24 = v23;
  v25 = v54;
  v26 = v14;
  if (!v14 || !v56 || !v22 || !v17 || !v23 || !v21 || v54 <= 0)
  {
    v37 = v23;
    v38 = v21;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      v25 = v54;
    }

    v39 = v25;
    v40 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136448003;
      v58 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      v59 = 2113;
      v60 = v26;
      v61 = 2050;
      v62 = v39;
      v63 = 2113;
      v64 = v56;
      v65 = 2113;
      v66 = v22;
      v67 = 2113;
      v68 = v17;
      v69 = 2113;
      v70 = v37;
      v71 = 2114;
      v72 = v38;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,receivedPhoneNumber:%{private}@, receivedSessionStartTime:%{public}lld, encryptedPartnerSessionSecret:%{private}@, partnerKeyConfirmation:%{private}@,requestID:%{private}@,encryptedRequestData:%{private}@,partnerID:%{public}@", buf, 0x52u);
    }

    v41 = sub_19B87DD40();
    if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v42 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v43 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v58 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of received data is nil,early return", buf, 0xCu);
    }

    v44 = sub_19B87DD40();
    if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v45 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    result = 0;
    v32 = 1;
    goto LABEL_55;
  }

  v55 = v22;
  v27 = [objc_opt_class() getDecryptedPartnerSessionSecret:v56 sessionID:a4 partnerID:v21 partnerAdrPublicKeyData:a5 deviceSessionPrivateKey:a6];
  if (!v27)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v46 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v58 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil partnerSessionSecret,early return", buf, 0xCu);
    }

    v47 = sub_19B87DD40();
    if ((*(v47 + 160) & 0x80000000) != 0 && (*(v47 + 164) & 0x80000000) != 0 && (*(v47 + 168) & 0x80000000) != 0 && !*(v47 + 152))
    {
      goto LABEL_30;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v48 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v48);
    if (v48 == buf)
    {
      goto LABEL_30;
    }

    v36 = v48;
LABEL_29:
    free(v36);
LABEL_30:
    result = 0;
    goto LABEL_79;
  }

  v28 = v27;
  v29 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v27, "length") + objc_msgSend(a7, "length")}];
  [v29 appendData:a7];
  [v29 appendData:v28];
  *a8 = v29;
  v30 = [objc_opt_class() getSharedInfoPrefixFromSessionID:a4 partnerID:v21 partnerAdrPublicKeyData:a5 deviceSessionPrivateKey:a6];
  if ([objc_opt_class() validateDerivedSessionSecrets:v29 sharedInfoPrefix:v30 partnerKeyConfirmation:v55])
  {
    result = [objc_opt_class() getDecryptedRequestDict:v24 requestID:v17 combinedSecret:v29 sharedInfoPrefix:v30];
    if (!result)
    {
      v32 = 9;
LABEL_55:
      *a9 = v32;
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v49 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v58 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,validateDerivedSessionSecrets failed, reject request", buf, 0xCu);
    }

    v50 = sub_19B87DD40();
    if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || *(v50 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v51 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v51);
      if (v51 != buf)
      {
        free(v51);
      }
    }

    result = 0;
    *a9 = 9;
  }

LABEL_79:
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int64_t)requestTypeFromDict:(id)a3
{
  v3 = [a3 objectForKey:@"request_type"];

  return [CLEEDRequest toCLEEDRequestType:v3];
}

+ (int64_t)toCLEEDRequestType:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ([a3 isEqualToString:@"video_streaming"])
    {
      v4 = 1;
    }

    else if ([a3 isEqualToString:@"media_upload"])
    {
      v4 = 2;
    }

    else if ([a3 isEqualToString:@"psap_feedback"])
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v14 = "+[CLEEDRequest toCLEEDRequestType:]";
      v15 = 2114;
      v16 = a3;
      v17 = 2050;
      v18 = v4;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld", buf, 0x20u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest toCLEEDRequestType:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v5 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "#EED2FWK,toCLEEDRequestType,nil requestTypeString", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest toCLEEDRequestType:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)toCLEEDRequestString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"unknownRequest";
  }

  else
  {
    return *(&off_1E753D4C0 + a3 - 1);
  }
}

+ (id)createRequestFromDict:(id)a3 baseURL:(id)a4 sessionID:(id)a5 partnerAdrPublicKeyData:(id)a6 deviceSessionPrivateKey:(__SecKey *)a7 deviceSessionSecret:(id)a8 error:(int64_t *)a9
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, empty message, early return", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      goto LABEL_56;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v69 = 136446210;
    v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
LABEL_53:
    v31 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v31);
    if (v31 == buf)
    {
LABEL_56:
      v18 = 0;
      *a9 = 1;
      goto LABEL_57;
    }

    v32 = v31;
LABEL_55:
    free(v32);
    goto LABEL_56;
  }

  if (!a4 || ![a4 length])
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v27 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "#EED2,%{public}s, nil or empty base URL, early return", buf, 0xCu);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      goto LABEL_56;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v69 = 136446210;
    v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    goto LABEL_53;
  }

  if (!a6 || !a7 || !a8)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v35 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "#EED2,%{public}s, nil partnerAdrPublicKeyData or  deviceSessionPrivateKey or deviceSessionSecret, early return", buf, 0xCu);
    }

    v36 = sub_19B87DD40();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
      goto LABEL_56;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v69 = 136446210;
    v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v37 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v37);
    if (v37 == buf)
    {
      goto LABEL_56;
    }

    v32 = v37;
    goto LABEL_55;
  }

  v68 = 0;
  v15 = [objc_opt_class() getDecryptedControlRequestData:a3 sessionID:a5 partnerAdrPublicKeyData:a6 deviceSessionPrivateKey:a7 deviceSessionSecret:a8 combinedSecret:&v68 error:a9];
  if (!v15)
  {
    *a9 = 9;
    v18 = [[CLEEDRequest alloc] initWithDictionary:a3 decryptedRequestData:0 baseURL:a4 error:a9];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v38 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *a9;
      *buf = 136446722;
      v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      v77 = 2114;
      v78 = v18;
      v79 = 2050;
      v80 = v39;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, decryptedRequestData nil, constructed CLEEDRequest:%{public}@, error:%{public}ld", buf, 0x20u);
    }

    v40 = sub_19B87DD40();
    if (*(v40 + 160) <= 1 && *(v40 + 164) <= 1 && *(v40 + 168) <= 1 && !*(v40 + 152))
    {
      goto LABEL_57;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_126;
    }

LABEL_161:
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    goto LABEL_126;
  }

  v16 = v15;
  v17 = [objc_opt_class() requestTypeFromDict:v15];
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v58 = [[CLEEDUploadRequest alloc] initWithDictionary:a3 decryptedRequestData:v16 baseURL:a4 error:a9];
      v18 = v58;
      if (v58)
      {
        [(CLEEDUploadRequest *)v58 setCombinedSecret:v68];
      }

      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v59 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [(CLEEDFeedbackRequest *)v18 uploadURL];
        *buf = 136446466;
        v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v77 = 2114;
        v78 = v60;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, uploadURL is: %{public}@", buf, 0x16u);
      }

      v61 = sub_19B87DD40();
      if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v62 = [(CLEEDFeedbackRequest *)v18 uploadURL];
        v69 = 136446466;
        v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v71 = 2114;
        v72 = v62;
        v63 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v63);
        if (v63 != buf)
        {
          free(v63);
        }
      }

      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v64 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v65 = *a9;
        *buf = 136446723;
        v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v77 = 2113;
        v78 = v18;
        v79 = 2050;
        v80 = v65;
        _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeMediaUpload:%{private}@, error:%{public}ld", buf, 0x20u);
      }

      v66 = sub_19B87DD40();
      if (*(v66 + 160) <= 1 && *(v66 + 164) <= 1 && *(v66 + 168) <= 1 && !*(v66 + 152))
      {
        goto LABEL_57;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 == -1)
      {
        goto LABEL_150;
      }
    }

    else
    {
      if (v17 != 3)
      {
LABEL_107:
        *a9 = 1;
        v18 = [[CLEEDRequest alloc] initWithDictionary:a3 decryptedRequestData:v16 baseURL:a4 error:a9];
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v49 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
        {
          v50 = [objc_opt_class() requestTypeFromDict:a3];
          *buf = 136446466;
          v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
          v77 = 2050;
          v78 = v50;
          _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,not handling the request type %{public}ld", buf, 0x16u);
        }

        v51 = sub_19B87DD40();
        if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v52 = [objc_opt_class() requestTypeFromDict:a3];
          v69 = 136446466;
          v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
          v71 = 2050;
          v72 = v52;
          v53 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n");
          goto LABEL_152;
        }

        goto LABEL_57;
      }

      v18 = [[CLEEDFeedbackRequest alloc] initWithDictionary:a3 decryptedRequestData:v16 baseURL:a4 error:a9];
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v41 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [(CLEEDFeedbackRequest *)v18 callRelatedToEmergency];
        *buf = 136446466;
        v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v77 = 1026;
        LODWORD(v78) = v42;
        _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, callRelatedToEmergency: %{public}d", buf, 0x12u);
      }

      v43 = sub_19B87DD40();
      if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v44 = [(CLEEDFeedbackRequest *)v18 callRelatedToEmergency];
        v69 = 136446466;
        v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v71 = 1026;
        LODWORD(v72) = v44;
        v45 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }

      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v46 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *a9;
        *buf = 136446723;
        v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v77 = 2113;
        v78 = v18;
        v79 = 2050;
        v80 = v47;
        _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeFeedbackCollection:%{private}@, error:%{public}ld", buf, 0x20u);
      }

      v48 = sub_19B87DD40();
      if (*(v48 + 160) <= 1 && *(v48 + 164) <= 1 && *(v48 + 168) <= 1 && !*(v48 + 152))
      {
        goto LABEL_57;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 == -1)
      {
LABEL_150:
        v67 = *a9;
        v69 = 136446723;
        v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v71 = 2113;
        v72 = v18;
        v73 = 2050;
        v74 = v67;
        goto LABEL_151;
      }
    }

    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    goto LABEL_150;
  }

  if (!v17)
  {
    *a9 = 1;
    v18 = [[CLEEDRequest alloc] initWithDictionary:a3 decryptedRequestData:v16 baseURL:a4 error:a9];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v54 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v55 = *a9;
      *buf = 136446722;
      v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      v77 = 2114;
      v78 = v18;
      v79 = 2050;
      v80 = v55;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDRequest:%{public}@, error:%{public}ld", buf, 0x20u);
    }

    v56 = sub_19B87DD40();
    if (*(v56 + 160) <= 1 && *(v56 + 164) <= 1 && *(v56 + 168) <= 1 && !*(v56 + 152))
    {
      goto LABEL_57;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
LABEL_126:
      v57 = *a9;
      v69 = 136446722;
      v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      v71 = 2114;
      v72 = v18;
      v73 = 2050;
      v74 = v57;
LABEL_151:
      v53 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n");
LABEL_152:
      if (v53 != buf)
      {
        free(v53);
      }

      goto LABEL_57;
    }

    goto LABEL_161;
  }

  if (v17 != 1)
  {
    goto LABEL_107;
  }

  v18 = [[CLEEDStreamingRequest alloc] initWithDictionary:a3 decryptedRequestData:v16 baseURL:a4 error:a9];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v19 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(CLEEDFeedbackRequest *)v18 streamingURL];
    *buf = 136446466;
    v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v77 = 2114;
    v78 = v20;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, streamingURL is: %{public}@", buf, 0x16u);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v22 = [(CLEEDFeedbackRequest *)v18 streamingURL];
    v69 = 136446466;
    v70 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v71 = 2114;
    v72 = v22;
    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v24 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *a9;
    *buf = 136446722;
    v76 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v77 = 2114;
    v78 = v18;
    v79 = 2050;
    v80 = v25;
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeStreaming:%{public}@, error:%{public}ld", buf, 0x20u);
  }

  v26 = sub_19B87DD40();
  if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_126;
    }

    goto LABEL_161;
  }

LABEL_57:
  v33 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)getRequestDict
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (v3)
  {
    [v3 setObject:-[NSUUID UUIDString](-[CLEEDRequest ID](self forKey:{"ID"), "UUIDString"), @"request_ID"}];
    [v3 setObject:-[CLEEDRequest psapID](self forKey:{"psapID"), @"psap_ID"}];
    v4 = MEMORY[0x1E696AEC0];
    [(NSDate *)[(CLEEDRequest *)self requestDate] timeIntervalSince1970];
    [v3 setObject:objc_msgSend(v4 forKey:{"stringWithFormat:", @"%f", v5), @"timestamp"}];
    [v3 setObject:-[CLEEDRequest partnerID](self forKey:{"partnerID"), @"partner_ID"}];
    [v3 setObject:-[CLEEDRequest geofenceID](self forKey:{"geofenceID"), @"geofence_ID"}];
    [v3 setObject:+[CLEEDRequest toCLEEDRequestString:](CLEEDRequest forKey:{"toCLEEDRequestString:", -[CLEEDRequest type](self, "type")), @"request_type"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDRequest state](self, "state")), @"EEDRequestState"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDRequest requestStatusAtFirstUserResponse](self, "requestStatusAtFirstUserResponse")), @"EEDRequestStatusAtFirstUserResponse"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDRequest requestTransmissionTime](self, "requestTransmissionTime")), @"EEDRequestTransmissionTime"}];
    v6 = MEMORY[0x1E696AD98];
    [(CLEEDRequest *)self requestReceivedTime];
    [v3 setObject:objc_msgSend(v6 forKey:{"numberWithDouble:"), @"EEDRequestReceivedTime"}];
    v7 = MEMORY[0x1E696AD98];
    [(CLEEDRequest *)self receivedTimeToFirstUserResponse];
    [v3 setObject:objc_msgSend(v7 forKey:{"numberWithDouble:"), @"EEDReceivedTimeToFirstUserResponse"}];
    v8 = MEMORY[0x1E696AD98];
    [(CLEEDRequest *)self receivedTimeToAcceptTime];
    [v3 setObject:objc_msgSend(v8 forKey:{"numberWithDouble:"), @"EEDReceivedTimeToAcceptTime"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDRequest numMediaSelectIterations](self, "numMediaSelectIterations")), @"EEDNumMediaSelectIterations"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CLEEDRequest metricSubmitted](self, "metricSubmitted")), @"EEDRequestMetricSubmitted"}];
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v15 = "[CLEEDRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil requestDict, early return", buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDRequest getRequestDict]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)createRequestFromCachedDict:(id)a3 error:(int64_t *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = [objc_opt_class() requestTypeFromDict:a3];
    if (v6 == 2)
    {
      v14 = [[CLEEDUploadRequest alloc] initWithDictionary:a3 error:a4];
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v18 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *a4;
        *buf = 136446723;
        v29 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
        v30 = 2113;
        v31 = v14;
        v32 = 2050;
        v33 = v19;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,constructed CLEEDRequestTypeMediaUpload:%{private}@, error:%{public}ld", buf, 0x20u);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 == -1)
        {
          goto LABEL_48;
        }

        goto LABEL_68;
      }
    }

    else
    {
      if (v6 != 1)
      {
        if (v6)
        {
          *a4 = 1;
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v22 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v29 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
            _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,unhandled request type, this should never happen", buf, 0xCu);
          }

          v23 = sub_19B87DD40();
          if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
          {
            goto LABEL_62;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v24 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromCachedDict:error:]", "CoreLocation: %s\n", v24);
          if (v24 == buf)
          {
            goto LABEL_62;
          }

          v10 = v24;
        }

        else
        {
          *a4 = 1;
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v7 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v29 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
            _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,CLEEDRequestTypeUnknown, this should never happen", buf, 0xCu);
          }

          v8 = sub_19B87DD40();
          if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
          {
            goto LABEL_62;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v9 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromCachedDict:error:]", "CoreLocation: %s\n", v9);
          if (v9 == buf)
          {
            goto LABEL_62;
          }

          v10 = v9;
        }

        free(v10);
LABEL_62:
        v14 = [[CLEEDRequest alloc] initWithDictionary:a3 error:a4];
        goto LABEL_63;
      }

      v14 = [[CLEEDStreamingRequest alloc] initWithDictionary:a3 error:a4];
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v15 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *a4;
        *buf = 136446723;
        v29 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
        v30 = 2113;
        v31 = v14;
        v32 = 2050;
        v33 = v16;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,constructed CLEEDRequestTypeStreaming:%{private}@, error:%{public}ld", buf, 0x20u);
      }

      v17 = sub_19B87DD40();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 == -1)
        {
LABEL_48:
          v27 = *a4;
          v21 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromCachedDict:error:]", "CoreLocation: %s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }

          goto LABEL_63;
        }

LABEL_68:
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        goto LABEL_48;
      }
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v11 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v29 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, empty message, early return", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromCachedDict:error:]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v14 = 0;
    *a4 = 1;
  }

LABEL_63:
  v25 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)toEEDControlResponseStatus:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) > 0x12)
  {
    v3 = @"UnknownError";
  }

  else
  {
    v3 = *(&off_1E753D4D8 + a3 - 1);
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "+[CLEEDRequest toEEDControlResponseStatus:]";
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,responseStatus:%{public}@", buf, 0x16u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest toEEDControlResponseStatus:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)getResponseDataDictionary
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"request_ID";
  v5[1] = @"request_status";
  v6[0] = [(NSUUID *)[(CLEEDRequest *)self ID] UUIDString];
  v6[1] = [CLEEDRequest toEEDControlResponseStatus:[(CLEEDRequest *)self state]];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)getPartnerIDFromDict:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a3 objectForKey:@"partner_ID"];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#EED2,getPartnerIDFromDict,partnerID:%{public}@", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getPartnerIDFromDict:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (v3)
  {
    result = v3;
  }

  else
  {
    result = @"UnknownPartnerID";
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)getCallIDFromDict:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a3 objectForKey:@"call_ID"];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#EED2,getCallIDFromDict,callID:%{public}@", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getCallIDFromDict:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (v3)
  {
    result = v3;
  }

  else
  {
    result = @"UnknownCallID";
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int64_t)getSessionStartTimeFromDict:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(a3 valueForKey:{@"session_start_time", "intValue"}];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v10 = v3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#EED2,getSessionStartTimeFromDict,SessionStartTime:%{public}lld", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getSessionStartTimeFromDict:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)getSharedInfoPrefixFromSessionID:(id)a3 partnerID:(id)a4 partnerAdrPublicKeyData:(id)a5 deviceSessionPrivateKey:(__SecKey *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4 || !a5 || !a6)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v28 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) != 0 && (*(v17 + 164) & 0x80000000) != 0 && (*(v17 + 168) & 0x80000000) != 0 && !*(v17 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v18);
    if (v18 == buf)
    {
      goto LABEL_54;
    }

    v19 = v18;
    goto LABEL_53;
  }

  v9 = [CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:a6];
  if (!v9)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v20 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v28 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,nil deviceSessionPublicKey, early return", buf, 0xCu);
    }

    v21 = sub_19B87DD40();
    if (*(v21 + 160) <= 1 && *(v21 + 164) <= 1 && *(v21 + 168) <= 1 && !*(v21 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v22 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n");
LABEL_51:
    if (v22 == buf)
    {
LABEL_54:
      v12 = 0;
      goto LABEL_55;
    }

    v19 = v22;
LABEL_53:
    free(v19);
    goto LABEL_54;
  }

  v10 = v9;
  v11 = [CLEEDCryptoUtilities createKeyExternalRepresentation:v9];
  CFRelease(v10);
  if (!v11)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v23 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v28 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil deviceSessionPublicKeyData, early return", buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v22 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n");
    goto LABEL_51;
  }

  v12 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(a4, "length") + objc_msgSend(a3, "length") + objc_msgSend(a5, "length") + objc_msgSend(v11, "length")}];
  [v12 appendData:a3];
  [v12 appendData:{objc_msgSend(a4, "dataUsingEncoding:", 4)}];
  [v12 appendData:a5];
  [v12 appendData:v11];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v13 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447491;
    v28 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
    v29 = 2114;
    v30 = a3;
    v31 = 2114;
    v32 = a4;
    v33 = 2114;
    v34 = a5;
    v35 = 2114;
    v36 = v11;
    v37 = 2113;
    v38 = v12;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,session ID = %{public}@, partner ID = %{public}@, ADR public key = %{public}@,device session public key = %{public}@, sharedInfoPrefix = %{private}@", buf, 0x3Eu);
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v15 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

LABEL_55:
  v25 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)getDecryptedPartnerSessionSecret:(id)a3 sessionID:(id)a4 partnerID:(id)a5 partnerAdrPublicKeyData:(id)a6 deviceSessionPrivateKey:(__SecKey *)a7
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3 && a4 && a5 && a6 && a7)
  {
    v12 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(a3, "length") + objc_msgSend(a6, "length")}];
    [v12 appendData:a6];
    [v12 appendData:a3];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v13 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v33 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v34 = 2114;
      v35 = a6;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,partner ADR public key = %{public}@\n", buf, 0x16u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446467;
      v33 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v34 = 2113;
      v35 = v12;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,full encrypted partner session secret blob = %{private}@\n", buf, 0x16u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v19 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(a5, "length") + objc_msgSend(a4, "length")}];
    [v19 appendData:a4];
    [v19 appendData:{objc_msgSend(a5, "dataUsingEncoding:", 4)}];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v20 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446467;
      v33 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v34 = 2113;
      v35 = v12;
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,shared info = %{private}@\n", buf, 0x16u);
    }

    v21 = sub_19B87DD40();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v22 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v23 = [CLEEDCryptoUtilities getECIESDecryptedData:v12 key:a7 sharedInfo:v19];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v24 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446467;
      v33 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v34 = 2113;
      v35 = v23;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,partner session secret = %{private}@\n", buf, 0x16u);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v27 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v33 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v29 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    v23 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)validateDerivedSessionSecrets:(id)a3 sharedInfoPrefix:(id)a4 partnerKeyConfirmation:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v37 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v38 = 2113;
    v39 = a3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,combined secret = %{private}@", buf, 0x16u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = [@"partner key confirmation" dataUsingEncoding:4];
  v11 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(@"partner key confirmation", "length") + objc_msgSend(a4, "length")}];
  [v11 appendData:a4];
  [v11 appendData:v10];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v12 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v37 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v38 = 2113;
    v39 = v11;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, shared info =%{private}@", buf, 0x16u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = [CLEEDCryptoUtilities getDerivedKeyWithLength:48 secretData:a3 additionalInfo:v11];
  if (!v15)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v27 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v37 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil derivedKeyBlob,early return", buf, 0xCu);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      goto LABEL_83;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_81;
    }

    goto LABEL_91;
  }

  v16 = v15;
  v17 = [v15 subdataWithRange:{0, 32}];
  v18 = [v16 subdataWithRange:{32, 16}];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v19 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446979;
    v37 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v38 = 2113;
    v39 = v16;
    v40 = 2113;
    v41 = v17;
    v42 = 2113;
    v43 = v18;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,derived key blob = %{private}@,derived key = %{private}@, derived IV blob = %{private}@", buf, 0x2Au);
  }

  v20 = sub_19B87DD40();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  if (!v17 || !v18)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v37 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil derivedKey or derivedIV,early return", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      goto LABEL_83;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_81;
    }

    goto LABEL_91;
  }

  v22 = [CLEEDCryptoUtilities getGMACWithAuthData:v10 key:v17 iv:v18];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v23 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v37 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v38 = 2113;
    v39 = v22;
    _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,partner key confirmation tag = %{private}@\n", buf, 0x16u);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v25 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  if (!v22 || ([v22 isEqualToData:a5] & 1) == 0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v31 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v37 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil computedPartnerKeyConfirmation or partner key confirmation does not match\n", buf, 0xCu);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      goto LABEL_83;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
LABEL_81:
      v33 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }

LABEL_83:
      result = 0;
      goto LABEL_84;
    }

LABEL_91:
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    goto LABEL_81;
  }

  result = 1;
LABEL_84:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)getDecryptedRequestDict:(id)a3 requestID:(id)a4 combinedSecret:(id)a5 sharedInfoPrefix:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v10 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446723;
    v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v57 = 2113;
    *v58 = a5;
    *&v58[8] = 2113;
    *&v58[10] = a6;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,combined secret = %{private}@, sharedInfoPrefix = %{private}@", buf, 0x20u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = 136446723;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v53 = 2113;
    *v54 = a5;
    *&v54[8] = 2113;
    *&v54[10] = a6;
    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  if (!a3 || !a4 || !a5 || !a6)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v35 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one ore more input parameters is nil,early return", buf, 0xCu);
    }

    v36 = sub_19B87DD40();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = 136446210;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v37 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n");
    goto LABEL_97;
  }

  v13 = [@"partner request" dataUsingEncoding:4];
  v14 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(a4, "length") + objc_msgSend(a6, "length") + objc_msgSend(@"partner request", "length")}];
  [v14 appendData:a6];
  [v14 appendData:{objc_msgSend(a4, "dataUsingEncoding:", 4)}];
  [v14 appendData:v13];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v15 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v57 = 2113;
    *v58 = v14;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, shared info =%{private}@", buf, 0x16u);
  }

  v16 = sub_19B87DD40();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = 136446467;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v53 = 2113;
    *v54 = v14;
    v17 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v18 = [CLEEDCryptoUtilities getDerivedKeyWithLength:48 secretData:a5 additionalInfo:v14];
  if (!v18)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v38 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil derivedKeyBlob,early return", buf, 0xCu);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0 && !*(v39 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = 136446210;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
LABEL_96:
    v37 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n");
LABEL_97:
    if (v37 != buf)
    {
      free(v37);
    }

LABEL_99:
    v44 = 0;
    goto LABEL_100;
  }

  v19 = v18;
  v20 = [v18 subdataWithRange:{0, 32}];
  v21 = [v19 subdataWithRange:{32, 16}];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v22 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446979;
    v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v57 = 2113;
    *v58 = v19;
    *&v58[8] = 2113;
    *&v58[10] = v20;
    *&v58[18] = 2113;
    *&v58[20] = v21;
    _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,derived key blob = %{private}@,derived key = %{private}@, derived IV blob = %{private}@", buf, 0x2Au);
  }

  v23 = sub_19B87DD40();
  if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = 136446979;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v53 = 2113;
    *v54 = v19;
    *&v54[8] = 2113;
    *&v54[10] = v20;
    *&v54[18] = 2113;
    *&v54[20] = v21;
    v24 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  if (!v20 || !v21)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v40 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil derivedKey or derivedIV,early return", buf, 0xCu);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = 136446210;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    goto LABEL_96;
  }

  v25 = +[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:](CLEEDCryptoUtilities, "getAESGCMDecryptedData:key:iv:authTag:", [a3 subdataWithRange:{0, objc_msgSend(a3, "length") - 16}], v20, v21, objc_msgSend(a3, "subdataWithRange:", objc_msgSend(a3, "length") - 16, 16));
  if (!v25)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v42 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,getAESGCMDecryptedData returned nil request data, early return\n", buf, 0xCu);
    }

    v43 = sub_19B87DD40();
    if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = 136446210;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    goto LABEL_96;
  }

  v50 = 0;
  v26 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v25 options:1 error:&v50];
  if (v50)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v27 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      v28 = [v50 code];
      v29 = [objc_msgSend(v50 "domain")];
      v30 = [objc_msgSend(v50 "localizedDescription")];
      *buf = 136446978;
      v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      v57 = 1026;
      *v58 = v28;
      *&v58[4] = 2082;
      *&v58[6] = v29;
      *&v58[14] = 2082;
      *&v58[16] = v30;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to deserialize json dictionary,error code,%{public}d,domain,%{public}s,reason,%{public}s\n", buf, 0x26u);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_99;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v32 = [v50 code];
    v33 = [objc_msgSend(v50 "domain")];
    v34 = [objc_msgSend(v50 "localizedDescription")];
    v51 = 136446978;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v53 = 1026;
    *v54 = v32;
    *&v54[4] = 2082;
    *&v54[6] = v33;
    *&v54[14] = 2082;
    *&v54[16] = v34;
    goto LABEL_96;
  }

  v44 = v26;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v47 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v56 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v57 = 2114;
    *v58 = v44;
    _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,request dict:%{public}@", buf, 0x16u);
  }

  v48 = sub_19B87DD40();
  if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = 136446466;
    v52 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v53 = 2114;
    *v54 = v44;
    v49 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }
  }

LABEL_100:
  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

- (void)updateDurationInformationForCA:(BOOL)a3
{
  v3 = a3;
  v39 = *MEMORY[0x1E69E9840];
  [(CLEEDRequest *)self requestReceivedTime];
  if (v5 <= 0.0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v27 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v32 = "[CLEEDRequest updateDurationInformationForCA:]";
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestReceivedTime is invalid, early return", buf, 0xCu);
    }

    v28 = sub_19B87DD40();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v29 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest updateDurationInformationForCA:]", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        v26 = v29;
        goto LABEL_54;
      }
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v7 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446723;
      v32 = "[CLEEDRequest updateDurationInformationForCA:]";
      v33 = 2049;
      v34 = [(CLEEDRequest *)self state];
      v35 = 1026;
      LODWORD(v36) = v3;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,state:%{private}ld, response:%{public}d", buf, 0x1Cu);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      [(CLEEDRequest *)self state];
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest updateDurationInformationForCA:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if ([(CLEEDRequest *)self state]== 3)
    {
      [(CLEEDRequest *)self receivedTimeToFirstUserResponse];
      if (v10 <= 0.0)
      {
        [(CLEEDRequest *)self requestReceivedTime];
        [(CLEEDRequest *)self setReceivedTimeToFirstUserResponse:vabdd_f64(Current, v11)];
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v12 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          [(CLEEDRequest *)self requestReceivedTime];
          v14 = v13;
          [(CLEEDRequest *)self receivedTimeToFirstUserResponse];
          *buf = 136446979;
          v32 = "[CLEEDRequest updateDurationInformationForCA:]";
          v33 = 2049;
          v34 = v14;
          v35 = 2049;
          v36 = Current;
          v37 = 2049;
          v38 = v15;
          _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestReceivedTime:%{private}f, currentTime:%{private}f, receivedTimeToFirstUserResponse:%{private}f", buf, 0x2Au);
        }

        v16 = sub_19B87DD40();
        if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          [(CLEEDRequest *)self requestReceivedTime];
          [(CLEEDRequest *)self receivedTimeToFirstUserResponse];
          v17 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest updateDurationInformationForCA:]", "CoreLocation: %s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }
      }
    }

    if (v3)
    {
      [(CLEEDRequest *)self receivedTimeToAcceptTime];
      if (v18 <= 0.0)
      {
        [(CLEEDRequest *)self requestReceivedTime];
        [(CLEEDRequest *)self setReceivedTimeToAcceptTime:vabdd_f64(Current, v19)];
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v20 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          [(CLEEDRequest *)self requestReceivedTime];
          v22 = v21;
          [(CLEEDRequest *)self receivedTimeToAcceptTime];
          *buf = 136446979;
          v32 = "[CLEEDRequest updateDurationInformationForCA:]";
          v33 = 2049;
          v34 = v22;
          v35 = 2049;
          v36 = Current;
          v37 = 2049;
          v38 = v23;
          _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestReceivedTime:%{private}f, currentTime:%{private}f,receivedTimeToAcceptTime:%{private}f", buf, 0x2Au);
        }

        v24 = sub_19B87DD40();
        if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          [(CLEEDRequest *)self requestReceivedTime];
          [(CLEEDRequest *)self receivedTimeToAcceptTime];
          v25 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest updateDurationInformationForCA:]", "CoreLocation: %s\n", v25);
          if (v25 != buf)
          {
            v26 = v25;
LABEL_54:
            free(v26);
          }
        }
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

@end