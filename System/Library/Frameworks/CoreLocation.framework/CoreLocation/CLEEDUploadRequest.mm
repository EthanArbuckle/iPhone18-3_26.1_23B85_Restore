@interface CLEEDUploadRequest
- (CLEEDUploadRequest)initWithCoder:(id)coder;
- (CLEEDUploadRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error;
- (CLEEDUploadRequest)initWithDictionary:(id)dictionary error:(int64_t *)error;
- (CLEEDUploadRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state baseURL:(id)l relativePath:(id)self0 token:(id)self1 sessionID:(id)self2 combinedSecret:(id)self3 mediaList:(id)self4;
- (id)description;
- (id)getRequestDict;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setUploadURL:(id)l;
- (void)updateRequestWithMediaItemList:(id)list;
@end

@implementation CLEEDUploadRequest

- (CLEEDUploadRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state baseURL:(id)l relativePath:(id)self0 token:(id)self1 sessionID:(id)self2 combinedSecret:(id)self3 mediaList:(id)self4
{
  v81 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v20 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136449283;
    v56 = "[CLEEDUploadRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:sessionID:combinedSecret:mediaList:]";
    v57 = 2114;
    dCopy = d;
    v59 = 2114;
    iDCopy = iD;
    v61 = 2114;
    partnerIDCopy = partnerID;
    v63 = 2114;
    geofenceIDCopy = geofenceID;
    v65 = 2114;
    dateCopy = date;
    v67 = 2050;
    stateCopy = state;
    v69 = 2114;
    lCopy = l;
    v71 = 2114;
    pathCopy = path;
    v73 = 2113;
    tokenCopy = token;
    v75 = 2113;
    sessionIDCopy = sessionID;
    v77 = 2113;
    secretCopy = secret;
    v79 = 2114;
    listCopy = list;
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,baseURL:%{public}@,relativePath:%{public}@,token:%{private}@,sessionID:%{private}@,combinedSecret:%{private}@,mediaList:%{public}@]", buf, 0x84u);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136449283;
    v30 = "[CLEEDUploadRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:sessionID:combinedSecret:mediaList:]";
    v31 = 2114;
    dCopy2 = d;
    v33 = 2114;
    iDCopy2 = iD;
    v35 = 2114;
    partnerIDCopy2 = partnerID;
    v37 = 2114;
    geofenceIDCopy2 = geofenceID;
    v39 = 2114;
    dateCopy2 = date;
    v41 = 2050;
    stateCopy2 = state;
    v43 = 2114;
    lCopy2 = l;
    v45 = 2114;
    pathCopy2 = path;
    v47 = 2113;
    tokenCopy2 = token;
    v49 = 2113;
    sessionIDCopy2 = sessionID;
    v51 = 2113;
    secretCopy2 = secret;
    v53 = 2114;
    listCopy2 = list;
    v26 = 132;
    v22 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:sessionID:combinedSecret:mediaList:]", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v28.receiver = self;
  v28.super_class = CLEEDUploadRequest;
  v23 = [(CLEEDRequest *)&v28 initWithID:d psapID:iD partnerID:partnerID geofenceID:geofenceID requestDate:date requestType:2 state:state, v26];
  if (v23)
  {
    v23->_baseURL = l;
    v23->_relativePath = path;
    v23->_token = token;
    v23->_sessionID = sessionID;
    v23->_combinedSecret = secret;
    v23->_mediaList = [MEMORY[0x1E695DFA8] setWithSet:list];
    v23->_numDuplicateMediaSelections = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLEEDUploadRequest;
  [(CLEEDRequest *)&v3 dealloc];
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CLEEDUploadRequest;
  v3 = [(CLEEDRequest *)&v16 description];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mediaList = [(CLEEDUploadRequest *)self mediaList];
  v5 = [(NSMutableSet *)mediaList countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = @"MediaList";
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mediaList);
        }

        v8 = -[__CFString stringByAppendingString:](v8, "stringByAppendingString:", [*(*(&v12 + 1) + 8 * i) description]);
      }

      v6 = [(NSMutableSet *)mediaList countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = @"MediaList";
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n <CLEEDUploadRequest: baseURL:%@, relativePath:%@, mediaListCount:%lu>\n %@", v3, self->_baseURL, self->_relativePath, -[NSMutableSet count](self->_mediaList, "count"), v8];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CLEEDUploadRequest uploadURL](self forKey:{"uploadURL"), @"uploadURL"}];
  [coder encodeObject:self->_token forKey:@"token"];
  [coder encodeObject:self->_sessionID forKey:@"sessionID"];
  [coder encodeObject:self->_combinedSecret forKey:@"combinedSecret"];
  [coder encodeObject:self->_mediaList forKey:@"mediaList"];
  v5.receiver = self;
  v5.super_class = CLEEDUploadRequest;
  [(CLEEDRequest *)&v5 encodeWithCoder:coder];
}

- (CLEEDUploadRequest)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CLEEDUploadRequest;
  v4 = [(CLEEDRequest *)&v8 initWithCoder:?];
  if (v4)
  {
    -[CLEEDUploadRequest setUploadURL:](v4, "setUploadURL:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"uploadURL"]);
    v4->_token = [coder decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    v4->_sessionID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    v4->_combinedSecret = [coder decodeObjectOfClass:objc_opt_class() forKey:@"combinedSecret"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_mediaList = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"mediaList"}];
  }

  return v4;
}

- (CLEEDUploadRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error
{
  v65 = *MEMORY[0x1E69E9840];
  *error = 0;
  v9 = [dictionary objectForKey:@"request_ID"];
  v46 = [dictionary objectForKey:@"partner_ID"];
  v45 = [dictionary objectForKey:@"psap_ID"];
  v44 = [dictionary objectForKey:@"geofence_ID"];
  v10 = [dictionary valueForKey:@"timestamp"];
  v11 = [CLEEDRequest getSessionStartTimeFromDict:dictionary];
  v12 = [CLEEDRequest getCallIDFromDict:dictionary];
  v43 = [CLEEDCryptoUtilities getSessionIDWithPhoneNumber:v12 sessionStartTime:v11];
  errorCopy = error;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v13 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448259;
    v48 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v49 = 2114;
    v50 = v9;
    v51 = 2114;
    v52 = v46;
    v53 = 2114;
    v54 = v45;
    v55 = 2114;
    v56 = v44;
    v57 = 2050;
    integerValue = [v10 integerValue];
    v59 = 2050;
    v60 = v11;
    v61 = 2081;
    uTF8String = [v12 UTF8String];
    v63 = 2081;
    v64 = [objc_msgSend(v43 base64EncodedStringWithOptions:{0), "UTF8String"}];
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld, sessionStartTime:%{public}lld, receivedCallID:%{private}s, sessionID:%{private}s", buf, 0x5Cu);
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    [v10 integerValue];
    [v12 UTF8String];
    [objc_msgSend(v43 base64EncodedStringWithOptions:{0), "UTF8String"}];
    v15 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = [data objectForKey:@"request_type"];
  v17 = [CLEEDRequest toCLEEDRequestType:v16];
  v18 = [data objectForKey:@"media_upload_path"];
  v42 = [data objectForKey:@"authentication_token"];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v19 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447235;
    v48 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v49 = 2114;
    v50 = v16;
    v51 = 2050;
    v52 = v17;
    v53 = 2113;
    v54 = v18;
    v55 = 2113;
    v56 = v42;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativeURL:%{private}@, authenticationToken:%{private}@", buf, 0x34u);
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
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  if (!v9 || !v46 || !v45 || !v44 || !v12 || !v43 || !v10 || !v18 || !v17 || !v42)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v22 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v48 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid,early return", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v24 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    *errorCopy = 1;
  }

  if (v9)
  {
    uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  v26 = uUID;
  if (v10)
  {
    date = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v10, "integerValue")}];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v28 = date;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v29 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v48 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v49 = 2114;
    v50 = v26;
    v51 = 2114;
    v52 = v28;
    _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v30 = sub_19B87DD40();
  if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v31 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  if (v45)
  {
    v32 = v45;
  }

  else
  {
    v32 = @"UnknownPSAPID";
  }

  if (v46)
  {
    v33 = v46;
  }

  else
  {
    v33 = @"UnknownPartnerID";
  }

  if (v44)
  {
    v34 = v44;
  }

  else
  {
    v34 = @"UnknownGeofenceID";
  }

  if (*errorCopy)
  {
    v35 = 7;
  }

  else
  {
    v35 = 3;
  }

  v36 = @"AuthenticationToken";
  if (v42)
  {
    v36 = v42;
  }

  result = [(CLEEDUploadRequest *)self initWithID:v26 psapID:v32 partnerID:v33 geofenceID:v34 requestDate:v28 state:v35 baseURL:l relativePath:v18 token:v36 sessionID:v43 combinedSecret:0 mediaList:0];
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setUploadURL:(id)l
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:l];
  -[CLEEDUploadRequest setBaseURL:](self, "setBaseURL:", [v4 host]);
  -[CLEEDUploadRequest setRelativePath:](self, "setRelativePath:", [v4 relativePath]);
  if ([(NSString *)[(CLEEDUploadRequest *)self baseURL] hasSuffix:@"/"])
  {
    [(CLEEDUploadRequest *)self setBaseURL:[(NSString *)[(CLEEDUploadRequest *)self baseURL] substringToIndex:[(NSString *)[(CLEEDUploadRequest *)self baseURL] length]- 2]];
  }

  if ([(NSString *)[(CLEEDUploadRequest *)self relativePath] hasPrefix:@"/"])
  {
    [(CLEEDUploadRequest *)self setRelativePath:[(NSString *)[(CLEEDUploadRequest *)self relativePath] substringFromIndex:1]];
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v10 = "[CLEEDUploadRequest setUploadURL:]";
    v11 = 2114;
    baseURL = [(CLEEDUploadRequest *)self baseURL];
    v13 = 2114;
    relativePath = [(CLEEDUploadRequest *)self relativePath];
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

    [(CLEEDUploadRequest *)self baseURL];
    [(CLEEDUploadRequest *)self relativePath];
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest setUploadURL:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)getRequestDict
{
  v32 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = CLEEDUploadRequest;
  getRequestDict = [(CLEEDRequest *)&v26 getRequestDict];
  if (!getRequestDict)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v13 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v31 = "[CLEEDUploadRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil uploadRequestDict, early return", buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v28 = 136446210;
    v29 = "[CLEEDUploadRequest getRequestDict]";
    v15 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest getRequestDict]", "CoreLocation: %s\n", v15);
    if (v15 == buf)
    {
      goto LABEL_37;
    }

    v16 = v15;
    goto LABEL_36;
  }

  v4 = getRequestDict;
  if (![(CLEEDUploadRequest *)self sessionID])
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v17 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v31 = "[CLEEDUploadRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil sessionID, early return", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v28 = 136446210;
    v29 = "[CLEEDUploadRequest getRequestDict]";
    v19 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest getRequestDict]", "CoreLocation: %s\n", v19);
    if (v19 == buf)
    {
      goto LABEL_37;
    }

    v16 = v19;
LABEL_36:
    free(v16);
LABEL_37:
    v4 = 0;
    goto LABEL_38;
  }

  [v4 setObject:-[CLEEDUploadRequest sessionID](self forKey:{"sessionID"), @"EEDSessionID"}];
  [v4 setObject:-[CLEEDUploadRequest relativePath](self forKey:{"relativePath"), @"media_upload_path"}];
  [v4 setObject:-[CLEEDUploadRequest token](self forKey:{"token"), @"authentication_token"}];
  [v4 setObject:-[CLEEDUploadRequest baseURL](self forKey:{"baseURL"), @"EEDRequestBaseURL"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDUploadRequest numDuplicateMediaSelections](self, "numDuplicateMediaSelections")), @"EEDNumDuplicateMediaSelections"}];
  if ([(CLEEDUploadRequest *)self combinedSecret])
  {
    [v4 setObject:-[CLEEDUploadRequest combinedSecret](self forKey:{"combinedSecret"), @"EEDCombinedSecret"}];
  }

  if ([(NSMutableSet *)[(CLEEDUploadRequest *)self mediaList] count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    mediaList = [(CLEEDUploadRequest *)self mediaList];
    v7 = [(NSMutableSet *)mediaList countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(mediaList);
          }

          createMediaItemDict = [*(*(&v22 + 1) + 8 * i) createMediaItemDict];
          v12 = createMediaItemDict;
          [v5 addObject:createMediaItemDict];
        }

        v8 = [(NSMutableSet *)mediaList countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    [v4 setValue:v5 forKey:@"EEDMediaItemSet"];
  }

LABEL_38:
  v20 = *MEMORY[0x1E69E9840];
  return v4;
}

- (CLEEDUploadRequest)initWithDictionary:(id)dictionary error:(int64_t *)error
{
  v101 = *MEMORY[0x1E69E9840];
  if (dictionary && error)
  {
    *error = 0;
    v7 = [dictionary objectForKey:@"request_ID"];
    v71 = [dictionary objectForKey:@"partner_ID"];
    v70 = [dictionary objectForKey:@"psap_ID"];
    v69 = [dictionary objectForKey:@"geofence_ID"];
    v8 = [dictionary objectForKey:@"timestamp"];
    selfCopy = self;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v90 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v91 = 2114;
      v92 = v7;
      v93 = 2114;
      v94 = v71;
      v95 = 2114;
      v96 = v70;
      v97 = 2114;
      v98 = v69;
      v99 = 2050;
      integerValue = [v8 integerValue];
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v77 = 136447490;
      v78 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v79 = 2114;
      v80 = v7;
      v81 = 2114;
      v82 = v71;
      v83 = 2114;
      v84 = v70;
      v85 = 2114;
      v86 = v69;
      v87 = 2050;
      integerValue2 = [v8 integerValue];
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = [dictionary objectForKey:@"request_type"];
    v13 = [CLEEDRequest toCLEEDRequestType:v12];
    v68 = [dictionary objectForKey:@"media_upload_path"];
    v67 = [dictionary objectForKey:@"authentication_token"];
    errorCopy = error;
    v66 = [dictionary objectForKey:@"EEDRequestBaseURL"];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v14 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447491;
      v90 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v91 = 2114;
      v92 = v12;
      v93 = 2050;
      v94 = v13;
      v95 = 2113;
      v96 = v68;
      v97 = 2113;
      v98 = v67;
      v99 = 2113;
      integerValue = v66;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativeURL:%{private}@, authenticationToken:%{private}@, baseURL:%{private}@", buf, 0x3Eu);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v77 = 136447491;
      v78 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v79 = 2114;
      v80 = v12;
      v81 = 2050;
      v82 = v13;
      v83 = 2113;
      v84 = v68;
      v85 = 2113;
      v86 = v67;
      v87 = 2113;
      integerValue2 = v66;
      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = [dictionary objectForKey:@"EEDSessionID"];
    v18 = [dictionary objectForKey:@"EEDCombinedSecret"];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v19 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [objc_msgSend(v17 base64EncodedStringWithOptions:{0), "UTF8String"}];
      v21 = [objc_msgSend(v18 base64EncodedStringWithOptions:{0), "UTF8String"}];
      *buf = 136446723;
      v90 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v91 = 2081;
      v92 = v20;
      v93 = 2081;
      v94 = v21;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,sessionID:%{private}s, combinedSecret:%{private}s", buf, 0x20u);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v77 = 136446723;
      v78 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v79 = 2081;
      v80 = [objc_msgSend(v17 base64EncodedStringWithOptions:{0), "UTF8String"}];
      v81 = 2081;
      v82 = [objc_msgSend(v18 base64EncodedStringWithOptions:{0), "UTF8String"}];
      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    if (v7 && v71 && v70 && v69 && v8 && v68 && v13 && v67 && v66 && v17)
    {
      v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v25 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v8, "integerValue")}];
      v26 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v27 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v90 = "[CLEEDUploadRequest initWithDictionary:error:]";
        v91 = 2114;
        v92 = v24;
        v93 = 2114;
        v94 = v25;
        _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
      }

      v28 = sub_19B87DD40();
      if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v77 = 136446722;
        v78 = "[CLEEDUploadRequest initWithDictionary:error:]";
        v79 = 2114;
        v80 = v24;
        v81 = 2114;
        v82 = v25;
        v29 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      v63 = v25;
      v30 = [dictionary valueForKey:@"EEDMediaItemSet"];
      if ([v30 count])
      {
        v31 = [MEMORY[0x1E695DFA8] set];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v32 = [v30 countByEnumeratingWithState:&v72 objects:v76 count:16];
        if (v32)
        {
          v33 = v32;
          v62 = v17;
          v34 = *v73;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v73 != v34)
              {
                objc_enumerationMutation(v30);
              }

              v36 = [CLEEDMediaItem createMediaItemFromDict:*(*(&v72 + 1) + 8 * i)];
              v37 = v36;
              if (v36)
              {
                [v31 addObject:v36];
              }
            }

            v33 = [v30 countByEnumeratingWithState:&v72 objects:v76 count:16];
          }

          while (v33);
          v26 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
          v17 = v62;
        }
      }

      else
      {
        v31 = 0;
      }

      v45 = -[CLEEDUploadRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:sessionID:combinedSecret:mediaList:](selfCopy, "initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:sessionID:combinedSecret:mediaList:", v24, v70, v71, v69, v63, [objc_msgSend(dictionary valueForKey:{@"EEDRequestState", "intValue"}], v66, v68, v67, v17, v18, v31);
      if (v45)
      {
        v41 = v45;
        -[CLEEDRequest setRequestStatusAtFirstUserResponse:](v45, "setRequestStatusAtFirstUserResponse:", [objc_msgSend(dictionary valueForKey:{@"EEDRequestStatusAtFirstUserResponse", "intValue"}]);
        -[CLEEDRequest setRequestTransmissionTime:](v41, "setRequestTransmissionTime:", [objc_msgSend(dictionary objectForKey:{@"EEDRequestTransmissionTime", "integerValue"}]);
        [objc_msgSend(dictionary valueForKey:{@"EEDRequestReceivedTime", "doubleValue"}];
        [(CLEEDRequest *)v41 setRequestReceivedTime:?];
        [objc_msgSend(dictionary valueForKey:{@"EEDReceivedTimeToFirstUserResponse", "doubleValue"}];
        [(CLEEDRequest *)v41 setReceivedTimeToFirstUserResponse:?];
        [objc_msgSend(dictionary valueForKey:{@"EEDReceivedTimeToAcceptTime", "doubleValue"}];
        [(CLEEDRequest *)v41 setReceivedTimeToAcceptTime:?];
        -[CLEEDRequest setNumMediaSelectIterations:](v41, "setNumMediaSelectIterations:", [objc_msgSend(dictionary objectForKey:{@"EEDNumMediaSelectIterations", "integerValue"}]);
        -[CLEEDUploadRequest setNumDuplicateMediaSelections:](v41, "setNumDuplicateMediaSelections:", [objc_msgSend(dictionary objectForKey:{@"EEDNumDuplicateMediaSelections", "integerValue"}]);
        -[CLEEDRequest setMetricSubmitted:](v41, "setMetricSubmitted:", [objc_msgSend(dictionary objectForKey:{@"EEDRequestMetricSubmitted", "BOOLValue"}]);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v46 = *(v26 + 227);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          state = [(CLEEDRequest *)v41 state];
          v48 = [(NSMutableSet *)[(CLEEDUploadRequest *)v41 mediaList] count];
          v49 = *errorCopy;
          *buf = 136447235;
          v90 = "[CLEEDUploadRequest initWithDictionary:error:]";
          v91 = 2113;
          v92 = v41;
          v93 = 2050;
          v94 = state;
          v95 = 2050;
          v96 = v48;
          v97 = 2050;
          v98 = v49;
          _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDUploadRequest:%{private}@, state:%{public}ld, mediaListCount:%{public}lu, error:%{public}ld", buf, 0x34u);
        }

        v50 = sub_19B87DD40();
        if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v51 = *(v26 + 227);
          state2 = [(CLEEDRequest *)v41 state];
          v53 = [(NSMutableSet *)[(CLEEDUploadRequest *)v41 mediaList] count];
          v54 = *errorCopy;
          v77 = 136447235;
          v78 = "[CLEEDUploadRequest initWithDictionary:error:]";
          v79 = 2113;
          v80 = v41;
          v81 = 2050;
          v82 = state2;
          v83 = 2050;
          v84 = v53;
          v85 = 2050;
          v86 = v54;
          v55 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v55);
          if (v55 != buf)
          {
            free(v55);
          }
        }
      }

      else
      {
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v56 = *(v26 + 227);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v90 = "[CLEEDUploadRequest initWithDictionary:error:]";
          _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil request, early return", buf, 0xCu);
        }

        v57 = sub_19B87DD40();
        if ((*(v57 + 160) & 0x80000000) == 0 || (*(v57 + 164) & 0x80000000) == 0 || (*(v57 + 168) & 0x80000000) == 0 || *(v57 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v58 = *(v26 + 227);
          v77 = 136446210;
          v78 = "[CLEEDUploadRequest initWithDictionary:error:]";
          v59 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v59);
          if (v59 != buf)
          {
            free(v59);
          }
        }

        v41 = 0;
        *errorCopy = 1;
      }
    }

    else
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v42 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v90 = "[CLEEDUploadRequest initWithDictionary:error:]";
        _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not available", buf, 0xCu);
      }

      v43 = sub_19B87DD40();
      if ((*(v43 + 160) & 0x80000000) == 0 || (*(v43 + 164) & 0x80000000) == 0 || (*(v43 + 168) & 0x80000000) == 0 || *(v43 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v77 = 136446210;
        v78 = "[CLEEDUploadRequest initWithDictionary:error:]";
        v44 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      v41 = 0;
      *errorCopy = 1;
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v38 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v90 = "[CLEEDUploadRequest initWithDictionary:error:]";
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil uploadRequestDict or CLEEDHelperError, early return", buf, 0xCu);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v77 = 136446210;
      v78 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v40 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    v41 = 0;
    *error = 1;
  }

  v60 = *MEMORY[0x1E69E9840];
  return v41;
}

- (void)updateRequestWithMediaItemList:(id)list
{
  v25 = *MEMORY[0x1E69E9840];
  if (list)
  {
    [(CLEEDRequest *)self setNumMediaSelectIterations:[(CLEEDRequest *)self numMediaSelectIterations]+ 1];
    v5 = [list count];
    [list minusSet:{-[CLEEDUploadRequest mediaList](self, "mediaList")}];
    v6 = v5 - [list count];
    [(NSMutableSet *)[(CLEEDUploadRequest *)self mediaList] unionSet:list];
    [(CLEEDUploadRequest *)self setNumDuplicateMediaSelections:v6 + [(CLEEDUploadRequest *)self numDuplicateMediaSelections]];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v7 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v14 = "[CLEEDUploadRequest updateRequestWithMediaItemList:]";
      v15 = 2048;
      v16 = v5;
      v17 = 2048;
      v18 = [list count];
      v19 = 1024;
      numDuplicateMediaSelections = [(CLEEDUploadRequest *)self numDuplicateMediaSelections];
      v21 = 2048;
      v22 = [(NSMutableSet *)[(CLEEDUploadRequest *)self mediaList] count];
      v23 = 1024;
      numMediaSelectIterations = [(CLEEDRequest *)self numMediaSelectIterations];
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,itemsBeforeRemovingDuplicates:%lu, mediaItemList.count:%lu, numDuplicateMediaSelections:%d, totalItems:%ld, numMediaSelectIterations:%d", buf, 0x36u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
    {
      goto LABEL_25;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    [list count];
    [(CLEEDUploadRequest *)self numDuplicateMediaSelections];
    [(NSMutableSet *)[(CLEEDUploadRequest *)self mediaList] count];
    [(CLEEDRequest *)self numMediaSelectIterations];
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest updateRequestWithMediaItemList:]", "CoreLocation: %s\n", v9);
    if (v9 == buf)
    {
      goto LABEL_25;
    }

LABEL_24:
    free(v9);
    goto LABEL_25;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v10 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v14 = "[CLEEDUploadRequest updateRequestWithMediaItemList:]";
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil input parameter(s), early return", buf, 0xCu);
  }

  v11 = sub_19B87DD40();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest updateRequestWithMediaItemList:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  v12 = *MEMORY[0x1E69E9840];
}

@end