@interface CLEEDStreamingRequest
- (CLEEDStreamingRequest)initWithCoder:(id)coder;
- (CLEEDStreamingRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error;
- (CLEEDStreamingRequest)initWithDictionary:(id)dictionary error:(int64_t *)error;
- (CLEEDStreamingRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state baseURL:(id)l relativePath:(id)self0 token:(id)self1;
- (id)description;
- (id)getRequestDict;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setStreamingURL:(id)l;
@end

@implementation CLEEDStreamingRequest

- (CLEEDStreamingRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state baseURL:(id)l relativePath:(id)self0 token:(id)self1
{
  v68 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  pathCopy4 = path;
  lCopy4 = l;
  v19 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136448515;
    v49 = "[CLEEDStreamingRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:]";
    v50 = 2114;
    dCopy = d;
    v52 = 2114;
    iDCopy = iD;
    v54 = 2114;
    partnerIDCopy = partnerID;
    v56 = 2114;
    geofenceIDCopy = geofenceID;
    v58 = 2114;
    dateCopy = date;
    v60 = 2050;
    stateCopy = state;
    v62 = 2114;
    lCopy2 = l;
    v64 = 2114;
    pathCopy2 = path;
    v66 = 2113;
    tokenCopy = token;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,baseURL:%{public}@,relativePath:%{public}@,token:%{private}@]", buf, 0x66u);
  }

  v20 = sub_19B87DD40();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v28 = 136448515;
    v29 = "[CLEEDStreamingRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:]";
    v30 = 2114;
    dCopy2 = d;
    v32 = 2114;
    iDCopy2 = iD;
    v34 = 2114;
    partnerIDCopy2 = partnerID;
    v36 = 2114;
    geofenceIDCopy2 = geofenceID;
    v38 = 2114;
    dateCopy2 = date;
    v40 = 2050;
    stateCopy2 = state;
    v42 = 2114;
    lCopy3 = l;
    v44 = 2114;
    pathCopy3 = path;
    v46 = 2113;
    tokenCopy2 = token;
    v25 = 102;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:]", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }

    pathCopy4 = path;
    lCopy4 = l;
  }

  v27.receiver = self;
  v27.super_class = CLEEDStreamingRequest;
  v22 = [(CLEEDRequest *)&v27 initWithID:d psapID:iD partnerID:partnerID geofenceID:geofenceID requestDate:date requestType:1 state:state, v25];
  if (v22)
  {
    v22->_baseURL = lCopy4;
    v22->_relativePath = pathCopy4;
    v22->_token = token;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (CLEEDStreamingRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error
{
  v56 = *MEMORY[0x1E69E9840];
  *error = 0;
  v9 = [dictionary objectForKey:@"request_ID"];
  v10 = [dictionary objectForKey:@"partner_ID"];
  v11 = [dictionary objectForKey:@"psap_ID"];
  v12 = [dictionary objectForKey:@"geofence_ID"];
  v13 = [dictionary valueForKey:@"timestamp"];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v14 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v45 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v46 = 2114;
    v47 = v9;
    v48 = 2114;
    v49 = v10;
    v50 = 2114;
    v51 = v11;
    v52 = 2114;
    v53 = v12;
    v54 = 2050;
    integerValue = [v13 integerValue];
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
  }

  v15 = sub_19B87DD40();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    [v13 integerValue];
    v16 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = v12;
  v18 = [data objectForKey:@"request_type"];
  v19 = [CLEEDRequest toCLEEDRequestType:v18];
  v43 = [data objectForKey:@"whip_endpoint_path"];
  v20 = [data objectForKey:@"authentication_token"];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v21 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447235;
    v45 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v46 = 2114;
    v47 = v18;
    v48 = 2050;
    v49 = v19;
    v50 = 2113;
    v51 = v43;
    v52 = 2113;
    v53 = v20;
    _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativePath:%{private}@, authenticationToken:%{private}@", buf, 0x34u);
  }

  v22 = sub_19B87DD40();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  if (!v9 || !v10 || !v11 || !v17 || !v13 || !v43 || !v19 || !v20)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v24 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v45 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", buf, 0xCu);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    *error = 1;
  }

  if (v9)
  {
    uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  v28 = uUID;
  if (v13)
  {
    date = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v13, "integerValue")}];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v30 = date;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v31 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v45 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v46 = 2114;
    v47 = v28;
    v48 = 2114;
    v49 = v30;
    _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v32 = sub_19B87DD40();
  if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v33 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  if (v11)
  {
    v34 = v11;
  }

  else
  {
    v34 = @"UnknownPSAPID";
  }

  if (v10)
  {
    v35 = v10;
  }

  else
  {
    v35 = @"UnknownPartnerID";
  }

  if (v17)
  {
    v36 = v17;
  }

  else
  {
    v36 = @"UnknownGeofenceID";
  }

  if (*error)
  {
    v37 = 7;
  }

  else
  {
    v37 = 3;
  }

  if (v20)
  {
    v38 = v20;
  }

  else
  {
    v38 = @"AuthenticationToken";
  }

  result = [(CLEEDStreamingRequest *)self initWithID:v28 psapID:v34 partnerID:v35 geofenceID:v36 requestDate:v30 state:v37 baseURL:l relativePath:v43 token:v38];
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLEEDStreamingRequest;
  [(CLEEDRequest *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CLEEDStreamingRequest;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n <CLEEDStreamingRequest: streamingURL, %@, token, %@>", -[CLEEDRequest description](&v3, sel_description), -[CLEEDStreamingRequest streamingURL](self, "streamingURL"), -[CLEEDStreamingRequest token](self, "token")];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CLEEDStreamingRequest streamingURL](self forKey:{"streamingURL"), @"streamingURL"}];
  [coder encodeObject:self->_token forKey:@"token"];
  v5.receiver = self;
  v5.super_class = CLEEDStreamingRequest;
  [(CLEEDRequest *)&v5 encodeWithCoder:coder];
}

- (CLEEDStreamingRequest)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CLEEDStreamingRequest;
  v4 = [(CLEEDRequest *)&v6 initWithCoder:?];
  if (v4)
  {
    -[CLEEDStreamingRequest setStreamingURL:](v4, "setStreamingURL:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"streamingURL"]);
    v4->_token = [coder decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  }

  return v4;
}

- (void)setStreamingURL:(id)l
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:l];
  -[CLEEDStreamingRequest setBaseURL:](self, "setBaseURL:", [v4 host]);
  -[CLEEDStreamingRequest setRelativePath:](self, "setRelativePath:", [v4 relativePath]);
  if ([(NSString *)[(CLEEDStreamingRequest *)self baseURL] hasSuffix:@"/"])
  {
    [(CLEEDStreamingRequest *)self setBaseURL:[(NSString *)[(CLEEDStreamingRequest *)self baseURL] substringToIndex:[(NSString *)[(CLEEDStreamingRequest *)self baseURL] length]- 2]];
  }

  if ([(NSString *)[(CLEEDStreamingRequest *)self relativePath] hasPrefix:@"/"])
  {
    [(CLEEDStreamingRequest *)self setRelativePath:[(NSString *)[(CLEEDStreamingRequest *)self relativePath] substringFromIndex:1]];
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v10 = "[CLEEDStreamingRequest setStreamingURL:]";
    v11 = 2114;
    baseURL = [(CLEEDStreamingRequest *)self baseURL];
    v13 = 2114;
    relativePath = [(CLEEDStreamingRequest *)self relativePath];
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s,baseURL:%{public}@,relativePath:%{public}@", buf, 0x20u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    [(CLEEDStreamingRequest *)self baseURL];
    [(CLEEDStreamingRequest *)self relativePath];
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest setStreamingURL:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)getRequestDict
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CLEEDStreamingRequest;
  getRequestDict = [(CLEEDRequest *)&v9 getRequestDict];
  if (getRequestDict)
  {
    [getRequestDict setObject:-[CLEEDStreamingRequest relativePath](self forKey:{"relativePath"), @"whip_endpoint_path"}];
    [getRequestDict setObject:-[CLEEDStreamingRequest token](self forKey:{"token"), @"authentication_token"}];
    [getRequestDict setObject:-[CLEEDStreamingRequest baseURL](self forKey:{"baseURL"), @"EEDRequestBaseURL"}];
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v4 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v13 = "[CLEEDStreamingRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil streamingRequestDict, early return", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v10 = 136446210;
      v11 = "[CLEEDStreamingRequest getRequestDict]";
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDStreamingRequest getRequestDict]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return getRequestDict;
}

- (CLEEDStreamingRequest)initWithDictionary:(id)dictionary error:(int64_t *)error
{
  errorCopy3 = error;
  v63 = *MEMORY[0x1E69E9840];
  if (!dictionary || !error)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v34 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v52 = "[CLEEDStreamingRequest initWithDictionary:error:]";
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil streamingRequestDict or CLEEDHelperError, early return", buf, 0xCu);
    }

    v35 = sub_19B87DD40();
    if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v36 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v36);
    if (v36 == buf)
    {
      goto LABEL_92;
    }

    v37 = v36;
    goto LABEL_91;
  }

  v7 = [dictionary objectForKey:@"request_ID"];
  v8 = [dictionary objectForKey:@"partner_ID"];
  v9 = [dictionary objectForKey:@"psap_ID"];
  v49 = [dictionary objectForKey:@"geofence_ID"];
  v10 = [dictionary valueForKey:@"timestamp"];
  selfCopy = self;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v11 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v52 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v53 = 2114;
    v54 = v7;
    v55 = 2114;
    v56 = v8;
    v57 = 2114;
    v58 = v9;
    v59 = 2114;
    v60 = v49;
    v61 = 2050;
    integerValue = [v10 integerValue];
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    [v10 integerValue];
    v13 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v47 = v9;
  v48 = v8;
  v14 = [dictionary objectForKey:@"request_type"];
  v15 = [CLEEDRequest toCLEEDRequestType:v14];
  v16 = [dictionary objectForKey:@"whip_endpoint_path"];
  v17 = [dictionary objectForKey:@"authentication_token"];
  v18 = [dictionary valueForKey:@"EEDRequestBaseURL"];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v19 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447491;
    v52 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v53 = 2114;
    v54 = v14;
    v55 = 2050;
    v56 = v15;
    v57 = 2113;
    v58 = v16;
    v59 = 2113;
    v60 = v17;
    v61 = 2113;
    integerValue = v18;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativePath:%{private}@, authenticationToken:%{private}@, baseURL:%{private}@", buf, 0x3Eu);
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
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  if (!v7 || !v48 || !v47 || !v49 || !v10 || !v16 || !v15 || !v17 || !v18)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    errorCopy3 = error;
    v38 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v52 = "[CLEEDStreamingRequest initWithDictionary:error:]";
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", buf, 0xCu);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0 && !*(v39 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_89;
    }

    goto LABEL_100;
  }

  v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v10, "integerValue")}];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v24 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v52 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v53 = 2114;
    v54 = v22;
    v55 = 2114;
    v56 = v23;
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
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
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  v27 = -[CLEEDStreamingRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:](selfCopy, "initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:", v22, v47, v48, v49, v23, [objc_msgSend(dictionary valueForKey:{@"EEDRequestState", "intValue"}], v18, v16, v17);
  if (!v27)
  {
    errorCopy3 = error;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v40 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v52 = "[CLEEDStreamingRequest initWithDictionary:error:]";
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil request, early return", buf, 0xCu);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_89;
    }

LABEL_100:
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
LABEL_89:
    v42 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v42);
    if (v42 == buf)
    {
LABEL_92:
      v28 = 0;
      *errorCopy3 = 1;
      goto LABEL_93;
    }

    v37 = v42;
LABEL_91:
    free(v37);
    goto LABEL_92;
  }

  v28 = v27;
  -[CLEEDRequest setRequestStatusAtFirstUserResponse:](v27, "setRequestStatusAtFirstUserResponse:", [objc_msgSend(dictionary objectForKey:{@"EEDRequestStatusAtFirstUserResponse", "integerValue"}]);
  -[CLEEDRequest setRequestTransmissionTime:](v28, "setRequestTransmissionTime:", [objc_msgSend(dictionary objectForKey:{@"EEDRequestTransmissionTime", "integerValue"}]);
  [objc_msgSend(dictionary valueForKey:{@"EEDRequestReceivedTime", "doubleValue"}];
  [(CLEEDRequest *)v28 setRequestReceivedTime:?];
  [objc_msgSend(dictionary valueForKey:{@"EEDReceivedTimeToFirstUserResponse", "doubleValue"}];
  [(CLEEDRequest *)v28 setReceivedTimeToFirstUserResponse:?];
  [objc_msgSend(dictionary valueForKey:{@"EEDReceivedTimeToAcceptTime", "doubleValue"}];
  [(CLEEDRequest *)v28 setReceivedTimeToAcceptTime:?];
  -[CLEEDRequest setNumMediaSelectIterations:](v28, "setNumMediaSelectIterations:", [objc_msgSend(dictionary objectForKey:{@"EEDNumMediaSelectIterations", "integerValue"}]);
  -[CLEEDRequest setMetricSubmitted:](v28, "setMetricSubmitted:", [objc_msgSend(dictionary objectForKey:{@"EEDRequestMetricSubmitted", "BOOLValue"}]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v29 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    state = [(CLEEDRequest *)v28 state];
    v31 = *error;
    *buf = 136446979;
    v52 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v53 = 2113;
    v54 = v28;
    v55 = 2050;
    v56 = state;
    v57 = 2050;
    v58 = v31;
    _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDStreamingRequest:%{private}@, state:%{public}ld, error:%{public}ld", buf, 0x2Au);
  }

  v32 = sub_19B87DD40();
  if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    [(CLEEDRequest *)v28 state];
    v50 = *error;
    v33 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

LABEL_93:
  v43 = *MEMORY[0x1E69E9840];
  return v28;
}

@end