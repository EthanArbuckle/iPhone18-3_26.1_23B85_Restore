@interface CLEEDFeedbackRequest
- (CLEEDFeedbackRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error;
- (CLEEDFeedbackRequest)initWithDictionary:(id)dictionary error:(int64_t *)error;
- (CLEEDFeedbackRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state feedbackVersion:(int64_t)version callRelatedToEmergency:(BOOL)self0 callerResponsive:(id)self1 callTrigger:(int64_t)self2 callReason:(int64_t)self3 respondersDispatched:(id)self4;
- (id)description;
- (id)getBooleanAsNumberFromDictionary:(id)dictionary key:(id)key;
- (id)getIntegerAsNumberFromDictionary:(id)dictionary key:(id)key;
- (id)getRequestDict;
- (void)dealloc;
@end

@implementation CLEEDFeedbackRequest

- (CLEEDFeedbackRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state feedbackVersion:(int64_t)version callRelatedToEmergency:(BOOL)self0 callerResponsive:(id)self1 callTrigger:(int64_t)self2 callReason:(int64_t)self3 respondersDispatched:(id)self4
{
  v87 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v18 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    if (responsive)
    {
      stringValue = [responsive stringValue];
      if (dispatched)
      {
LABEL_6:
        stringValue2 = [dispatched stringValue];
LABEL_9:
        *buf = 136449282;
        v62 = "[CLEEDFeedbackRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:feedbackVersion:callRelatedToEmergency:callerResponsive:callTrigger:callReason:respondersDispatched:]";
        v63 = 2114;
        dCopy = d;
        v65 = 2114;
        iDCopy = iD;
        v67 = 2114;
        partnerIDCopy = partnerID;
        v69 = 2114;
        geofenceIDCopy = geofenceID;
        v71 = 2114;
        dateCopy = date;
        v73 = 2050;
        stateCopy = state;
        v75 = 1026;
        versionCopy = version;
        v77 = 1026;
        emergencyCopy = emergency;
        v79 = 2114;
        v80 = stringValue;
        v81 = 2050;
        triggerCopy = trigger;
        v83 = 2050;
        reasonCopy = reason;
        v85 = 2112;
        v86 = stringValue2;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:{public}%@", buf, 0x7Cu);
        goto LABEL_10;
      }
    }

    else
    {
      stringValue = @"Unspecified";
      if (dispatched)
      {
        goto LABEL_6;
      }
    }

    stringValue2 = @"Unspecified";
    goto LABEL_9;
  }

LABEL_10:
  v21 = sub_19B87DD40();
  if (*(v21 + 160) <= 1 && *(v21 + 164) <= 1 && *(v21 + 168) <= 1 && !*(v21 + 152))
  {
    goto LABEL_23;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  if (responsive)
  {
    stringValue3 = [responsive stringValue];
    if (dispatched)
    {
LABEL_18:
      stringValue4 = [dispatched stringValue];
      goto LABEL_21;
    }
  }

  else
  {
    stringValue3 = @"Unspecified";
    if (dispatched)
    {
      goto LABEL_18;
    }
  }

  stringValue4 = @"Unspecified";
LABEL_21:
  v35 = 136449282;
  v36 = "[CLEEDFeedbackRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:feedbackVersion:callRelatedToEmergency:callerResponsive:callTrigger:callReason:respondersDispatched:]";
  v37 = 2114;
  dCopy2 = d;
  v39 = 2114;
  iDCopy2 = iD;
  v41 = 2114;
  partnerIDCopy2 = partnerID;
  v43 = 2114;
  geofenceIDCopy2 = geofenceID;
  v45 = 2114;
  dateCopy2 = date;
  v47 = 2050;
  stateCopy2 = state;
  v49 = 1026;
  versionCopy2 = version;
  v51 = 1026;
  emergencyCopy2 = emergency;
  v53 = 2114;
  v54 = stringValue3;
  v55 = 2050;
  triggerCopy2 = trigger;
  v57 = 2050;
  reasonCopy2 = reason;
  v59 = 2112;
  v60 = stringValue4;
  v30 = 124;
  v24 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:feedbackVersion:callRelatedToEmergency:callerResponsive:callTrigger:callReason:respondersDispatched:]", "CoreLocation: %s\n", v24);
  if (v24 != buf)
  {
    free(v24);
  }

LABEL_23:
  v34.receiver = self;
  v34.super_class = CLEEDFeedbackRequest;
  v25 = [(CLEEDRequest *)&v34 initWithID:d psapID:iD partnerID:partnerID geofenceID:geofenceID requestDate:date requestType:3 state:state, v30];
  v26 = v25;
  if (v25)
  {
    v25->_feedbackVersion = version;
    v25->_callRelatedToEmergency = emergency;
    v25->_callerResponsive = responsive;
    v26->_callTrigger = trigger;
    v26->_callReason = reason;
    if (dispatched)
    {
      dispatchedCopy = dispatched;
    }

    else
    {
      dispatchedCopy = 0;
    }

    v26->_respondersDispatched = dispatchedCopy;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)dealloc
{
  callerResponsive = self->_callerResponsive;
  if (callerResponsive)
  {

    self->_callerResponsive = 0;
  }

  respondersDispatched = self->_respondersDispatched;
  if (respondersDispatched)
  {

    self->_respondersDispatched = 0;
  }

  v5.receiver = self;
  v5.super_class = CLEEDFeedbackRequest;
  [(CLEEDRequest *)&v5 dealloc];
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = CLEEDFeedbackRequest;
  v3 = [(CLEEDRequest *)&v12 description];
  v4 = MEMORY[0x1E696AEC0];
  feedbackVersion = [(CLEEDFeedbackRequest *)self feedbackVersion];
  callRelatedToEmergency = [(CLEEDFeedbackRequest *)self callRelatedToEmergency];
  if ([(CLEEDFeedbackRequest *)self callerResponsive])
  {
    stringValue = [(NSNumber *)[(CLEEDFeedbackRequest *)self callerResponsive] stringValue];
  }

  else
  {
    stringValue = @"Unspecified";
  }

  callTrigger = [(CLEEDFeedbackRequest *)self callTrigger];
  callReason = [(CLEEDFeedbackRequest *)self callReason];
  if ([(CLEEDFeedbackRequest *)self respondersDispatched])
  {
    stringValue2 = [(NSNumber *)[(CLEEDFeedbackRequest *)self respondersDispatched] stringValue];
  }

  else
  {
    stringValue2 = @"Unspecified";
  }

  return [v4 stringWithFormat:@"%@\n <CLEEDFeedbackRequest: feedbackVersion, %d, callRelatedToEmergency, %d, callerResponsive, %@, callTrigger, %lu, callReason, %lu, respondersDispatched, %@>", v3, feedbackVersion, callRelatedToEmergency, stringValue, callTrigger, callReason, stringValue2];
}

- (CLEEDFeedbackRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error
{
  v73 = *MEMORY[0x1E69E9840];
  *error = 0;
  v9 = [dictionary objectForKey:{@"request_ID", data, l}];
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
    v60 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v61 = 2114;
    v62 = v9;
    v63 = 2114;
    v64 = v10;
    v65 = 2114;
    *v66 = v11;
    *&v66[8] = 2114;
    *v67 = v12;
    *&v67[8] = 2050;
    *v68 = [v13 integerValue];
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
    LODWORD(v49) = 62;
    v16 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v52 = v13;
  v53 = v9;
  v17 = [data objectForKey:@"request_type"];
  v18 = [CLEEDRequest toCLEEDRequestType:v17];
  integerValue2 = [(CLEEDFeedbackRequest *)self getIntegerAsNumberFromDictionary:data key:@"feedback_version"];
  v58 = [(CLEEDFeedbackRequest *)self getBooleanAsNumberFromDictionary:data key:@"call_related_to_emergency"];
  v57 = [(CLEEDFeedbackRequest *)self getBooleanAsNumberFromDictionary:data key:@"caller_responsive"];
  v54 = [(CLEEDFeedbackRequest *)self getIntegerAsNumberFromDictionary:data key:@"call_trigger"];
  v55 = [(CLEEDFeedbackRequest *)self getIntegerAsNumberFromDictionary:data key:@"call_reason"];
  v56 = [(CLEEDFeedbackRequest *)self getBooleanAsNumberFromDictionary:data key:@"responders_dispatched"];
  v50 = v12;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v20 = qword_1EAFE4718;
  v21 = v11;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    if (integerValue2)
    {
      integerValue = [integerValue2 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    if (v58)
    {
      bOOLValue = [v58 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v24 = v10;
    if (v57)
    {
      stringValue = [v57 stringValue];
    }

    else
    {
      stringValue = @"Unspecified_Or_Invalid";
    }

    if (v56)
    {
      stringValue2 = [v56 stringValue];
    }

    else
    {
      stringValue2 = @"Unspecified_Or_Invalid";
    }

    *buf = 136448258;
    v60 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v61 = 2114;
    v62 = v17;
    v63 = 2050;
    v64 = v18;
    v65 = 1026;
    *v66 = integerValue;
    *&v66[4] = 1026;
    *&v66[6] = bOOLValue;
    *v67 = 2114;
    *&v67[2] = stringValue;
    *v68 = 2050;
    *&v68[2] = v54;
    v69 = 2050;
    v70 = v55;
    v71 = 2114;
    v72 = stringValue2;
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:%{public}@]", buf, 0x54u);
    v10 = v24;
    v11 = v21;
  }

  v27 = sub_19B87DD40();
  if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    if (integerValue2)
    {
      [integerValue2 integerValue];
    }

    if (v58)
    {
      [v58 BOOLValue];
    }

    if (v57)
    {
      [v57 stringValue];
    }

    if (v56)
    {
      [v56 stringValue];
    }

    LODWORD(v49) = 84;
    v28 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }

    v11 = v21;
  }

  if (!v53 || !v10 || !v11 || !v50 || !v52 || !v18 || !integerValue2 || !v58)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v60 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      LODWORD(v49) = 12;
      v31 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    *error = 1;
  }

  if (v53)
  {
    uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v53];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  v33 = uUID;
  if (v52)
  {
    date = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v52, "integerValue")}];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v35 = date;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v36 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v60 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v61 = 2114;
    v62 = v33;
    v63 = 2114;
    v64 = v35;
    _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v37 = sub_19B87DD40();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    LODWORD(v49) = 32;
    v38 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  v39 = *error;
  if (integerValue2)
  {
    integerValue2 = [integerValue2 integerValue];
  }

  if (v58)
  {
    bOOLValue2 = [v58 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  if (v54)
  {
    integerValue3 = [v54 integerValue];
  }

  else
  {
    integerValue3 = 0;
  }

  integerValue4 = v55;
  if (v55)
  {
    integerValue4 = [v55 integerValue];
  }

  if (v39)
  {
    v43 = 7;
  }

  else
  {
    v43 = 19;
  }

  if (v50)
  {
    v44 = v50;
  }

  else
  {
    v44 = @"UnknownGeofenceID";
  }

  if (v10)
  {
    v45 = v10;
  }

  else
  {
    v45 = @"UnknownPartnerID";
  }

  if (v11)
  {
    v46 = v11;
  }

  else
  {
    v46 = @"UnknownPSAPID";
  }

  LOBYTE(v49) = bOOLValue2;
  result = [(CLEEDFeedbackRequest *)self initWithID:v33 psapID:v46 partnerID:v45 geofenceID:v44 requestDate:v35 state:v43 feedbackVersion:integerValue2 callRelatedToEmergency:v49 callerResponsive:v57 callTrigger:integerValue3 callReason:integerValue4 respondersDispatched:v56];
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)getRequestDict
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CLEEDFeedbackRequest;
  getRequestDict = [(CLEEDRequest *)&v9 getRequestDict];
  if (getRequestDict)
  {
    [getRequestDict setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDFeedbackRequest feedbackVersion](self, "feedbackVersion")), @"feedback_version"}];
    [getRequestDict setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CLEEDFeedbackRequest callRelatedToEmergency](self, "callRelatedToEmergency")), @"call_related_to_emergency"}];
    [getRequestDict setValue:-[CLEEDFeedbackRequest callerResponsive](self forKey:{"callerResponsive"), @"caller_responsive"}];
    [getRequestDict setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDFeedbackRequest callTrigger](self, "callTrigger")), @"call_trigger"}];
    [getRequestDict setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDFeedbackRequest callReason](self, "callReason")), @"call_reason"}];
    [getRequestDict setValue:-[CLEEDFeedbackRequest respondersDispatched](self forKey:{"respondersDispatched"), @"responders_dispatched"}];
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
      v13 = "[CLEEDFeedbackRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil feedbackRequestDict, early return", buf, 0xCu);
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
      v11 = "[CLEEDFeedbackRequest getRequestDict]";
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest getRequestDict]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return getRequestDict;
}

- (CLEEDFeedbackRequest)initWithDictionary:(id)dictionary error:(int64_t *)error
{
  v84 = *MEMORY[0x1E69E9840];
  if (dictionary && error)
  {
    v67 = [dictionary objectForKey:@"request_ID"];
    v7 = [dictionary objectForKey:@"partner_ID"];
    v8 = [dictionary objectForKey:@"psap_ID"];
    v9 = [dictionary objectForKey:@"geofence_ID"];
    v68 = [dictionary valueForKey:@"timestamp"];
    selfCopy = self;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v10 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
      v72 = 2114;
      v73 = v67;
      v74 = 2114;
      v75 = v7;
      v76 = 2114;
      *v77 = v8;
      *&v77[8] = 2114;
      *v78 = v9;
      *&v78[8] = 2050;
      *v79 = [v68 integerValue];
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      [v68 integerValue];
      LODWORD(v57) = 62;
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v60 = v9;
    v61 = v8;
    v62 = v7;
    errorCopy = error;
    v13 = [dictionary objectForKey:@"request_type"];
    v14 = [CLEEDRequest toCLEEDRequestType:v13];
    v15 = [dictionary valueForKey:@"feedback_version"];
    v16 = [dictionary valueForKey:@"call_related_to_emergency"];
    v66 = [dictionary valueForKey:@"caller_responsive"];
    v63 = [dictionary valueForKey:@"call_trigger"];
    v64 = [dictionary valueForKey:@"call_reason"];
    v65 = [dictionary valueForKey:@"responders_dispatched"];
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v17 = qword_1EAFE4718;
    if (!os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
LABEL_42:
      v26 = sub_19B87DD40();
      if (*(v26 + 160) <= 1 && *(v26 + 164) <= 1 && *(v26 + 168) <= 1 && !*(v26 + 152))
      {
        goto LABEL_58;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      if (v15)
      {
        [v15 integerValue];
        if (!v16)
        {
LABEL_52:
          if (v66)
          {
            [v66 stringValue];
          }

          if (v65)
          {
            [v65 stringValue];
          }

          LODWORD(v57) = 84;
          v27 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }

LABEL_58:
          v28 = v67;
          if (!v67 || !v62 || !v61 || !v60 || !v68 || !v14 || !v15 || !v16)
          {
            if (qword_1EAFE46E0 != -1)
            {
              dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
            }

            v29 = qword_1EAFE4718;
            if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
              _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", buf, 0xCu);
            }

            v30 = sub_19B87DD40();
            if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46E0 != -1)
              {
                dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
              }

              LODWORD(v57) = 12;
              v31 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v31);
              if (v31 != buf)
              {
                free(v31);
              }

              v28 = v67;
            }

            *errorCopy = 1;
          }

          if (v28)
          {
            uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v28];
          }

          else
          {
            uUID = [MEMORY[0x1E696AFB0] UUID];
          }

          v33 = uUID;
          if (v68)
          {
            date = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v68, "integerValue")}];
          }

          else
          {
            date = [MEMORY[0x1E695DF00] date];
          }

          v35 = date;
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v36 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
            v72 = 2114;
            v73 = v33;
            v74 = 2114;
            v75 = v35;
            _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
          }

          v37 = sub_19B87DD40();
          if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46E0 != -1)
            {
              dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
            }

            LODWORD(v57) = 32;
            v38 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v38);
            if (v38 != buf)
            {
              free(v38);
            }
          }

          if (v61)
          {
            v39 = v61;
          }

          else
          {
            v39 = @"UnknownPSAPID";
          }

          if (v62)
          {
            v40 = v62;
          }

          else
          {
            v40 = @"UnknownPartnerID";
          }

          if (v60)
          {
            v41 = v60;
          }

          else
          {
            v41 = @"UnknownGeofenceID";
          }

          v42 = [objc_msgSend(dictionary valueForKey:{@"EEDRequestState", "intValue"}];
          if (v15)
          {
            integerValue = [v15 integerValue];
            if (!v16)
            {
LABEL_109:
              if (v63)
              {
                integerValue2 = [v63 integerValue];
              }

              else
              {
                integerValue2 = 0;
              }

              integerValue3 = v64;
              if (v64)
              {
                integerValue3 = [v64 integerValue];
              }

              LOBYTE(v57) = v16;
              v46 = [(CLEEDFeedbackRequest *)selfCopy initWithID:v33 psapID:v39 partnerID:v40 geofenceID:v41 requestDate:v35 state:v42 feedbackVersion:integerValue callRelatedToEmergency:v57 callerResponsive:v66 callTrigger:integerValue2 callReason:integerValue3 respondersDispatched:v65];
              if (v46)
              {
                v23 = v46;
                -[CLEEDRequest setRequestStatusAtFirstUserResponse:](v46, "setRequestStatusAtFirstUserResponse:", [objc_msgSend(dictionary objectForKey:{@"EEDRequestStatusAtFirstUserResponse", "integerValue"}]);
                -[CLEEDRequest setRequestTransmissionTime:](v23, "setRequestTransmissionTime:", [objc_msgSend(dictionary objectForKey:{@"EEDRequestTransmissionTime", "integerValue"}]);
                [objc_msgSend(dictionary valueForKey:{@"EEDRequestReceivedTime", "doubleValue"}];
                [(CLEEDRequest *)v23 setRequestReceivedTime:?];
                [objc_msgSend(dictionary valueForKey:{@"EEDReceivedTimeToFirstUserResponse", "doubleValue"}];
                [(CLEEDRequest *)v23 setReceivedTimeToFirstUserResponse:?];
                [objc_msgSend(dictionary valueForKey:{@"EEDReceivedTimeToAcceptTime", "doubleValue"}];
                [(CLEEDRequest *)v23 setReceivedTimeToAcceptTime:?];
                -[CLEEDRequest setNumMediaSelectIterations:](v23, "setNumMediaSelectIterations:", [objc_msgSend(dictionary objectForKey:{@"EEDNumMediaSelectIterations", "integerValue"}]);
                -[CLEEDRequest setMetricSubmitted:](v23, "setMetricSubmitted:", [objc_msgSend(dictionary objectForKey:{@"EEDRequestMetricSubmitted", "BOOLValue"}]);
                if (qword_1EAFE46E0 != -1)
                {
                  dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
                }

                v47 = qword_1EAFE4718;
                if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
                {
                  state = [(CLEEDRequest *)v23 state];
                  v49 = *errorCopy;
                  *buf = 136446979;
                  v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
                  v72 = 2113;
                  v73 = v23;
                  v74 = 2050;
                  v75 = state;
                  v76 = 2050;
                  *v77 = v49;
                  _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDFeedbackRequest:%{private}@, state:%{public}ld, error:%{public}ld", buf, 0x2Au);
                }

                v50 = sub_19B87DD40();
                if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46E0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
                  }

                  [(CLEEDRequest *)v23 state];
                  v69 = *errorCopy;
                  v51 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v51);
                  if (v51 != buf)
                  {
                    free(v51);
                  }
                }
              }

              else
              {
                if (qword_1EAFE46E0 != -1)
                {
                  dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
                }

                v52 = qword_1EAFE4718;
                if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
                  _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil request, early return", buf, 0xCu);
                }

                v53 = sub_19B87DD40();
                if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46E0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
                  }

                  v54 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v54);
                  if (v54 != buf)
                  {
                    free(v54);
                  }
                }

                v23 = 0;
                *errorCopy = 1;
              }

              goto LABEL_141;
            }
          }

          else
          {
            integerValue = 1;
            if (!v16)
            {
              goto LABEL_109;
            }
          }

          LOBYTE(v16) = [v16 BOOLValue];
          goto LABEL_109;
        }
      }

      else if (!v16)
      {
        goto LABEL_52;
      }

      [v16 BOOLValue];
      goto LABEL_52;
    }

    if (v15)
    {
      integerValue4 = [v15 integerValue];
      if (v16)
      {
LABEL_20:
        bOOLValue = [v16 BOOLValue];
LABEL_35:
        if (v66)
        {
          stringValue = [v66 stringValue];
        }

        else
        {
          stringValue = @"Unspecified";
        }

        if (v65)
        {
          stringValue2 = [v65 stringValue];
        }

        else
        {
          stringValue2 = @"Unspecified";
        }

        *buf = 136448258;
        v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
        v72 = 2114;
        v73 = v13;
        v74 = 2050;
        v75 = v14;
        v76 = 1026;
        *v77 = integerValue4;
        *&v77[4] = 1026;
        *&v77[6] = bOOLValue;
        *v78 = 2114;
        *&v78[2] = stringValue;
        *v79 = 2050;
        *&v79[2] = v63;
        v80 = 2050;
        v81 = v64;
        v82 = 2114;
        v83 = stringValue2;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:%{public}@", buf, 0x54u);
        goto LABEL_42;
      }
    }

    else
    {
      integerValue4 = 0;
      if (v16)
      {
        goto LABEL_20;
      }
    }

    bOOLValue = 0;
    goto LABEL_35;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v20 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil cached Feedback Dict or CLEEDHelperError, early return", buf, 0xCu);
  }

  v21 = sub_19B87DD40();
  if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v22 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v23 = 0;
  *error = 1;
LABEL_141:
  v55 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)getIntegerAsNumberFromDictionary:(id)dictionary key:(id)key
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [dictionary objectForKeyedSubscript:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v12 = "[CLEEDFeedbackRequest getIntegerAsNumberFromDictionary:key:]";
      v13 = 2114;
      keyCopy = key;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, invalid value received for key:%{public}@", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest getIntegerAsNumberFromDictionary:key:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)getBooleanAsNumberFromDictionary:(id)dictionary key:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [dictionary objectForKeyedSubscript:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v11 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]";
      v17 = 2114;
      keyCopy2 = key;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, invalid value received for key:%{public}@", buf, 0x16u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) <= 1 && *(v12 + 164) <= 1 && *(v12 + 168) <= 1 && !*(v12 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      goto LABEL_27;
    }

LABEL_26:
    free(v10);
LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  integerValue = [v5 integerValue];
  if (integerValue >= 2)
  {
    v7 = integerValue;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v16 = "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]";
      v17 = 2114;
      keyCopy2 = key;
      v19 = 2050;
      v20 = v7;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, invalid value received for key:%{public}@ value:%{public}ld", buf, 0x20u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) <= 1 && *(v9 + 164) <= 1 && *(v9 + 168) <= 1 && !*(v9 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_28:
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end