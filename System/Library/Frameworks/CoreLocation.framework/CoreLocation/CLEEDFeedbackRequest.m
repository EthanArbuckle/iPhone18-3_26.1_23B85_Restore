@interface CLEEDFeedbackRequest
- (CLEEDFeedbackRequest)initWithDictionary:(id)a3 decryptedRequestData:(id)a4 baseURL:(id)a5 error:(int64_t *)a6;
- (CLEEDFeedbackRequest)initWithDictionary:(id)a3 error:(int64_t *)a4;
- (CLEEDFeedbackRequest)initWithID:(id)a3 psapID:(id)a4 partnerID:(id)a5 geofenceID:(id)a6 requestDate:(id)a7 state:(int64_t)a8 feedbackVersion:(int64_t)a9 callRelatedToEmergency:(BOOL)a10 callerResponsive:(id)a11 callTrigger:(int64_t)a12 callReason:(int64_t)a13 respondersDispatched:(id)a14;
- (id)description;
- (id)getBooleanAsNumberFromDictionary:(id)a3 key:(id)a4;
- (id)getIntegerAsNumberFromDictionary:(id)a3 key:(id)a4;
- (id)getRequestDict;
- (void)dealloc;
@end

@implementation CLEEDFeedbackRequest

- (CLEEDFeedbackRequest)initWithID:(id)a3 psapID:(id)a4 partnerID:(id)a5 geofenceID:(id)a6 requestDate:(id)a7 state:(int64_t)a8 feedbackVersion:(int64_t)a9 callRelatedToEmergency:(BOOL)a10 callerResponsive:(id)a11 callTrigger:(int64_t)a12 callReason:(int64_t)a13 respondersDispatched:(id)a14
{
  v87 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v18 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    if (a11)
    {
      v19 = [a11 stringValue];
      if (a14)
      {
LABEL_6:
        v20 = [a14 stringValue];
LABEL_9:
        *buf = 136449282;
        v62 = "[CLEEDFeedbackRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:feedbackVersion:callRelatedToEmergency:callerResponsive:callTrigger:callReason:respondersDispatched:]";
        v63 = 2114;
        v64 = a3;
        v65 = 2114;
        v66 = a4;
        v67 = 2114;
        v68 = a5;
        v69 = 2114;
        v70 = a6;
        v71 = 2114;
        v72 = a7;
        v73 = 2050;
        v74 = a8;
        v75 = 1026;
        v76 = a9;
        v77 = 1026;
        v78 = a10;
        v79 = 2114;
        v80 = v19;
        v81 = 2050;
        v82 = a12;
        v83 = 2050;
        v84 = a13;
        v85 = 2112;
        v86 = v20;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:{public}%@", buf, 0x7Cu);
        goto LABEL_10;
      }
    }

    else
    {
      v19 = @"Unspecified";
      if (a14)
      {
        goto LABEL_6;
      }
    }

    v20 = @"Unspecified";
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

  if (a11)
  {
    v22 = [a11 stringValue];
    if (a14)
    {
LABEL_18:
      v23 = [a14 stringValue];
      goto LABEL_21;
    }
  }

  else
  {
    v22 = @"Unspecified";
    if (a14)
    {
      goto LABEL_18;
    }
  }

  v23 = @"Unspecified";
LABEL_21:
  v35 = 136449282;
  v36 = "[CLEEDFeedbackRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:feedbackVersion:callRelatedToEmergency:callerResponsive:callTrigger:callReason:respondersDispatched:]";
  v37 = 2114;
  v38 = a3;
  v39 = 2114;
  v40 = a4;
  v41 = 2114;
  v42 = a5;
  v43 = 2114;
  v44 = a6;
  v45 = 2114;
  v46 = a7;
  v47 = 2050;
  v48 = a8;
  v49 = 1026;
  v50 = a9;
  v51 = 1026;
  v52 = a10;
  v53 = 2114;
  v54 = v22;
  v55 = 2050;
  v56 = a12;
  v57 = 2050;
  v58 = a13;
  v59 = 2112;
  v60 = v23;
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
  v25 = [(CLEEDRequest *)&v34 initWithID:a3 psapID:a4 partnerID:a5 geofenceID:a6 requestDate:a7 requestType:3 state:a8, v30];
  v26 = v25;
  if (v25)
  {
    v25->_feedbackVersion = a9;
    v25->_callRelatedToEmergency = a10;
    v25->_callerResponsive = a11;
    v26->_callTrigger = a12;
    v26->_callReason = a13;
    if (a14)
    {
      v27 = a14;
    }

    else
    {
      v27 = 0;
    }

    v26->_respondersDispatched = v27;
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
  v5 = [(CLEEDFeedbackRequest *)self feedbackVersion];
  v6 = [(CLEEDFeedbackRequest *)self callRelatedToEmergency];
  if ([(CLEEDFeedbackRequest *)self callerResponsive])
  {
    v7 = [(NSNumber *)[(CLEEDFeedbackRequest *)self callerResponsive] stringValue];
  }

  else
  {
    v7 = @"Unspecified";
  }

  v8 = [(CLEEDFeedbackRequest *)self callTrigger];
  v9 = [(CLEEDFeedbackRequest *)self callReason];
  if ([(CLEEDFeedbackRequest *)self respondersDispatched])
  {
    v10 = [(NSNumber *)[(CLEEDFeedbackRequest *)self respondersDispatched] stringValue];
  }

  else
  {
    v10 = @"Unspecified";
  }

  return [v4 stringWithFormat:@"%@\n <CLEEDFeedbackRequest: feedbackVersion, %d, callRelatedToEmergency, %d, callerResponsive, %@, callTrigger, %lu, callReason, %lu, respondersDispatched, %@>", v3, v5, v6, v7, v8, v9, v10];
}

- (CLEEDFeedbackRequest)initWithDictionary:(id)a3 decryptedRequestData:(id)a4 baseURL:(id)a5 error:(int64_t *)a6
{
  v73 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  v9 = [a3 objectForKey:{@"request_ID", a4, a5}];
  v10 = [a3 objectForKey:@"partner_ID"];
  v11 = [a3 objectForKey:@"psap_ID"];
  v12 = [a3 objectForKey:@"geofence_ID"];
  v13 = [a3 valueForKey:@"timestamp"];
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
  v17 = [a4 objectForKey:@"request_type"];
  v18 = [CLEEDRequest toCLEEDRequestType:v17];
  v19 = [(CLEEDFeedbackRequest *)self getIntegerAsNumberFromDictionary:a4 key:@"feedback_version"];
  v58 = [(CLEEDFeedbackRequest *)self getBooleanAsNumberFromDictionary:a4 key:@"call_related_to_emergency"];
  v57 = [(CLEEDFeedbackRequest *)self getBooleanAsNumberFromDictionary:a4 key:@"caller_responsive"];
  v54 = [(CLEEDFeedbackRequest *)self getIntegerAsNumberFromDictionary:a4 key:@"call_trigger"];
  v55 = [(CLEEDFeedbackRequest *)self getIntegerAsNumberFromDictionary:a4 key:@"call_reason"];
  v56 = [(CLEEDFeedbackRequest *)self getBooleanAsNumberFromDictionary:a4 key:@"responders_dispatched"];
  v50 = v12;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v20 = qword_1EAFE4718;
  v21 = v11;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    if (v19)
    {
      v22 = [v19 integerValue];
    }

    else
    {
      v22 = 0;
    }

    if (v58)
    {
      v23 = [v58 BOOLValue];
    }

    else
    {
      v23 = 0;
    }

    v24 = v10;
    if (v57)
    {
      v25 = [v57 stringValue];
    }

    else
    {
      v25 = @"Unspecified_Or_Invalid";
    }

    if (v56)
    {
      v26 = [v56 stringValue];
    }

    else
    {
      v26 = @"Unspecified_Or_Invalid";
    }

    *buf = 136448258;
    v60 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v61 = 2114;
    v62 = v17;
    v63 = 2050;
    v64 = v18;
    v65 = 1026;
    *v66 = v22;
    *&v66[4] = 1026;
    *&v66[6] = v23;
    *v67 = 2114;
    *&v67[2] = v25;
    *v68 = 2050;
    *&v68[2] = v54;
    v69 = 2050;
    v70 = v55;
    v71 = 2114;
    v72 = v26;
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

    if (v19)
    {
      [v19 integerValue];
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

  if (!v53 || !v10 || !v11 || !v50 || !v52 || !v18 || !v19 || !v58)
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

    *a6 = 1;
  }

  if (v53)
  {
    v32 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v53];
  }

  else
  {
    v32 = [MEMORY[0x1E696AFB0] UUID];
  }

  v33 = v32;
  if (v52)
  {
    v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v52, "integerValue")}];
  }

  else
  {
    v34 = [MEMORY[0x1E695DF00] date];
  }

  v35 = v34;
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

  v39 = *a6;
  if (v19)
  {
    v19 = [v19 integerValue];
  }

  if (v58)
  {
    v40 = [v58 BOOLValue];
  }

  else
  {
    v40 = 0;
  }

  if (v54)
  {
    v41 = [v54 integerValue];
  }

  else
  {
    v41 = 0;
  }

  v42 = v55;
  if (v55)
  {
    v42 = [v55 integerValue];
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

  LOBYTE(v49) = v40;
  result = [(CLEEDFeedbackRequest *)self initWithID:v33 psapID:v46 partnerID:v45 geofenceID:v44 requestDate:v35 state:v43 feedbackVersion:v19 callRelatedToEmergency:v49 callerResponsive:v57 callTrigger:v41 callReason:v42 respondersDispatched:v56];
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)getRequestDict
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CLEEDFeedbackRequest;
  v3 = [(CLEEDRequest *)&v9 getRequestDict];
  if (v3)
  {
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDFeedbackRequest feedbackVersion](self, "feedbackVersion")), @"feedback_version"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[CLEEDFeedbackRequest callRelatedToEmergency](self, "callRelatedToEmergency")), @"call_related_to_emergency"}];
    [v3 setValue:-[CLEEDFeedbackRequest callerResponsive](self forKey:{"callerResponsive"), @"caller_responsive"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDFeedbackRequest callTrigger](self, "callTrigger")), @"call_trigger"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[CLEEDFeedbackRequest callReason](self, "callReason")), @"call_reason"}];
    [v3 setValue:-[CLEEDFeedbackRequest respondersDispatched](self forKey:{"respondersDispatched"), @"responders_dispatched"}];
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
  return v3;
}

- (CLEEDFeedbackRequest)initWithDictionary:(id)a3 error:(int64_t *)a4
{
  v84 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v67 = [a3 objectForKey:@"request_ID"];
    v7 = [a3 objectForKey:@"partner_ID"];
    v8 = [a3 objectForKey:@"psap_ID"];
    v9 = [a3 objectForKey:@"geofence_ID"];
    v68 = [a3 valueForKey:@"timestamp"];
    v58 = self;
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
    v59 = a4;
    v13 = [a3 objectForKey:@"request_type"];
    v14 = [CLEEDRequest toCLEEDRequestType:v13];
    v15 = [a3 valueForKey:@"feedback_version"];
    v16 = [a3 valueForKey:@"call_related_to_emergency"];
    v66 = [a3 valueForKey:@"caller_responsive"];
    v63 = [a3 valueForKey:@"call_trigger"];
    v64 = [a3 valueForKey:@"call_reason"];
    v65 = [a3 valueForKey:@"responders_dispatched"];
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

            *v59 = 1;
          }

          if (v28)
          {
            v32 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v28];
          }

          else
          {
            v32 = [MEMORY[0x1E696AFB0] UUID];
          }

          v33 = v32;
          if (v68)
          {
            v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v68, "integerValue")}];
          }

          else
          {
            v34 = [MEMORY[0x1E695DF00] date];
          }

          v35 = v34;
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

          v42 = [objc_msgSend(a3 valueForKey:{@"EEDRequestState", "intValue"}];
          if (v15)
          {
            v43 = [v15 integerValue];
            if (!v16)
            {
LABEL_109:
              if (v63)
              {
                v44 = [v63 integerValue];
              }

              else
              {
                v44 = 0;
              }

              v45 = v64;
              if (v64)
              {
                v45 = [v64 integerValue];
              }

              LOBYTE(v57) = v16;
              v46 = [(CLEEDFeedbackRequest *)v58 initWithID:v33 psapID:v39 partnerID:v40 geofenceID:v41 requestDate:v35 state:v42 feedbackVersion:v43 callRelatedToEmergency:v57 callerResponsive:v66 callTrigger:v44 callReason:v45 respondersDispatched:v65];
              if (v46)
              {
                v23 = v46;
                -[CLEEDRequest setRequestStatusAtFirstUserResponse:](v46, "setRequestStatusAtFirstUserResponse:", [objc_msgSend(a3 objectForKey:{@"EEDRequestStatusAtFirstUserResponse", "integerValue"}]);
                -[CLEEDRequest setRequestTransmissionTime:](v23, "setRequestTransmissionTime:", [objc_msgSend(a3 objectForKey:{@"EEDRequestTransmissionTime", "integerValue"}]);
                [objc_msgSend(a3 valueForKey:{@"EEDRequestReceivedTime", "doubleValue"}];
                [(CLEEDRequest *)v23 setRequestReceivedTime:?];
                [objc_msgSend(a3 valueForKey:{@"EEDReceivedTimeToFirstUserResponse", "doubleValue"}];
                [(CLEEDRequest *)v23 setReceivedTimeToFirstUserResponse:?];
                [objc_msgSend(a3 valueForKey:{@"EEDReceivedTimeToAcceptTime", "doubleValue"}];
                [(CLEEDRequest *)v23 setReceivedTimeToAcceptTime:?];
                -[CLEEDRequest setNumMediaSelectIterations:](v23, "setNumMediaSelectIterations:", [objc_msgSend(a3 objectForKey:{@"EEDNumMediaSelectIterations", "integerValue"}]);
                -[CLEEDRequest setMetricSubmitted:](v23, "setMetricSubmitted:", [objc_msgSend(a3 objectForKey:{@"EEDRequestMetricSubmitted", "BOOLValue"}]);
                if (qword_1EAFE46E0 != -1)
                {
                  dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
                }

                v47 = qword_1EAFE4718;
                if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
                {
                  v48 = [(CLEEDRequest *)v23 state];
                  v49 = *v59;
                  *buf = 136446979;
                  v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
                  v72 = 2113;
                  v73 = v23;
                  v74 = 2050;
                  v75 = v48;
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
                  v69 = *v59;
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
                *v59 = 1;
              }

              goto LABEL_141;
            }
          }

          else
          {
            v43 = 1;
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
      v18 = [v15 integerValue];
      if (v16)
      {
LABEL_20:
        v19 = [v16 BOOLValue];
LABEL_35:
        if (v66)
        {
          v24 = [v66 stringValue];
        }

        else
        {
          v24 = @"Unspecified";
        }

        if (v65)
        {
          v25 = [v65 stringValue];
        }

        else
        {
          v25 = @"Unspecified";
        }

        *buf = 136448258;
        v71 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
        v72 = 2114;
        v73 = v13;
        v74 = 2050;
        v75 = v14;
        v76 = 1026;
        *v77 = v18;
        *&v77[4] = 1026;
        *&v77[6] = v19;
        *v78 = 2114;
        *&v78[2] = v24;
        *v79 = 2050;
        *&v79[2] = v63;
        v80 = 2050;
        v81 = v64;
        v82 = 2114;
        v83 = v25;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:%{public}@", buf, 0x54u);
        goto LABEL_42;
      }
    }

    else
    {
      v18 = 0;
      if (v16)
      {
        goto LABEL_20;
      }
    }

    v19 = 0;
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
  *a4 = 1;
LABEL_141:
  v55 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)getIntegerAsNumberFromDictionary:(id)a3 key:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKeyedSubscript:a4];
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
      v14 = a4;
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

- (id)getBooleanAsNumberFromDictionary:(id)a3 key:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKeyedSubscript:a4];
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
      v18 = a4;
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

  v6 = [v5 integerValue];
  if (v6 >= 2)
  {
    v7 = v6;
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
      v18 = a4;
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