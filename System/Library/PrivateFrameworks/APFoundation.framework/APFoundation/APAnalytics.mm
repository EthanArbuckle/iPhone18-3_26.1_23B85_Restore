@interface APAnalytics
+ (BOOL)_validatePayload:(id)payload;
+ (void)_sendEvent:(id)event payload:(id)payload;
+ (void)sendEvent:(id)event;
+ (void)sendEvent:(id)event customPayload:(id)payload;
+ (void)sendEvent:(id)event statusDetail:(id)detail startDate:(id)date error:(id)error;
+ (void)sendEvent:(id)event valueFloat:(float)float;
+ (void)sendEvent:(id)event valueInt:(int64_t)int;
+ (void)sendEventAppleDomain:(id)domain customPayload:(id)payload;
+ (void)sendEventError:(int64_t)error message:(id)message;
+ (void)sendEventLazy:(id)lazy eventPayloadBuilder:(id)builder;
+ (void)sendEventTimed:(int64_t)timed roundtrip:(double)roundtrip message:(id)message;
+ (void)sendEventTimed:(int64_t)timed startDate:(id)date endDate:(id)endDate message:(id)message;
@end

@implementation APAnalytics

+ (void)sendEventTimed:(int64_t)timed startDate:(id)date endDate:(id)endDate message:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (date && endDate)
  {
    objc_msgSend_timeIntervalSinceDate_(endDate, v10, date, v11);
    if (v14 >= 0.0)
    {
      objc_msgSend_sendEventTimed_roundtrip_message_(self, v13, timed, messageCopy);
      goto LABEL_11;
    }

    v15 = APLogForCategory(2uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446210;
      v19 = "+[APAnalytics sendEventTimed:startDate:endDate:message:]";
      v16 = "%{public}s Start date is prior to end date";
LABEL_8:
      _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, v16, &v18, 0xCu);
    }
  }

  else
  {
    v15 = APLogForCategory(2uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446210;
      v19 = "+[APAnalytics sendEventTimed:startDate:endDate:message:]";
      v16 = "%{public}s Invalid parameter";
      goto LABEL_8;
    }
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
}

+ (void)sendEventTimed:(int64_t)timed roundtrip:(double)roundtrip message:(id)message
{
  v30[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"%@.%@", v9, @"com.apple.ap.promotedcontent", @"timed");
  if (messageCopy && objc_msgSend_length(messageCopy, v10, v11, v12))
  {
    v27[0] = @"code";
    v14 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, timed, v12);
    v28[0] = v14;
    v27[1] = @"roundTrip";
    v18 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v15, v16, v17, roundtrip);
    v27[2] = @"message";
    v28[1] = v18;
    v28[2] = messageCopy;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v28, v27, 3);
  }

  else
  {
    v29[0] = @"code";
    v14 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, timed, v12);
    v29[1] = @"roundTrip";
    v30[0] = v14;
    v18 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v20, v21, v22, roundtrip);
    v30[1] = v18;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v30, v29, 2);
  }
  v24 = ;

  objc_msgSend__analyticsSendEvent_eventPayload_(APAnalytics, v25, v13, v24);
  v26 = *MEMORY[0x1E69E9840];
}

+ (void)sendEventError:(int64_t)error message:(id)message
{
  v21[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"%@.%@", v7, @"com.apple.ap.promotedcontent", @"error");
  if (messageCopy && objc_msgSend_length(messageCopy, v8, v9, v10))
  {
    v18[0] = @"code";
    v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, error, v10);
    v18[1] = @"message";
    v19[0] = v12;
    v19[1] = messageCopy;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v19, v18, 2);
  }

  else
  {
    v20 = @"code";
    v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, error, v10);
    v21[0] = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v21, &v20, 1);
  }
  v15 = ;

  objc_msgSend__analyticsSendEvent_eventPayload_(APAnalytics, v16, v11, v15);
  v17 = *MEMORY[0x1E69E9840];
}

+ (void)sendEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v7 = eventCopy;
  if (eventCopy && objc_msgSend_length(eventCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"%@.%@", v9, @"com.apple.ap.promotedcontent", v7);
    objc_msgSend__sendEvent_payload_(APAnalytics, v11, v7, 0);
  }

  else
  {
    v10 = APLogForCategory(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v14 = "+[APAnalytics sendEvent:]";
      _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_ERROR, "%{public}s Invalid eventType", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)sendEvent:(id)event valueInt:(int64_t)int
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"dataInt";
  v5 = MEMORY[0x1E696AD98];
  eventCopy = event;
  v9 = objc_msgSend_numberWithInteger_(v5, v7, int, v8);
  v15[0] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v15, &v14, 1);

  objc_msgSend__sendEvent_payload_(APAnalytics, v12, eventCopy, v11);
  v13 = *MEMORY[0x1E69E9840];
}

+ (void)sendEvent:(id)event valueFloat:(float)float
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = @"dataFloat";
  v5 = MEMORY[0x1E696AD98];
  eventCopy = event;
  *&v7 = float;
  v11 = objc_msgSend_numberWithFloat_(v5, v8, v9, v10, v7);
  v17[0] = v11;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v17, &v16, 1);

  objc_msgSend__sendEvent_payload_(APAnalytics, v14, eventCopy, v13);
  v15 = *MEMORY[0x1E69E9840];
}

+ (void)sendEvent:(id)event statusDetail:(id)detail startDate:(id)date error:(id)error
{
  v40 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v10 = MEMORY[0x1E696AD98];
  detailCopy = detail;
  eventCopy = event;
  objc_msgSend_timeIntervalSinceNow(date, v13, v14, v15);
  v19 = objc_msgSend_numberWithDouble_(v10, v16, v17, v18);
  if (errorCopy)
  {
    v20 = APLogForCategory(2uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_msgSend_localizedDescription(errorCopy, v21, v22, v23);
      v36 = 136446466;
      v37 = "+[APAnalytics sendEvent:statusDetail:startDate:error:]";
      v38 = 2114;
      v39 = v24;
      _os_log_impl(&dword_1BADC1000, v20, OS_LOG_TYPE_ERROR, "%{public}s Received error for timed event %{public}@", &v36, 0x16u);
    }

    v25 = &unk_1F3908FC8;
  }

  else
  {
    v25 = &unk_1F3908FB0;
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setObject_forKeyedSubscript_(v26, v27, v19, @"processingTime");
  objc_msgSend_setObject_forKeyedSubscript_(v26, v28, detailCopy, @"statusDetails");

  objc_msgSend_setObject_forKeyedSubscript_(v26, v29, v25, @"statusCode");
  v33 = objc_msgSend_copy(v26, v30, v31, v32);
  objc_msgSend_sendEvent_customPayload_(APAnalytics, v34, eventCopy, v33);

  v35 = *MEMORY[0x1E69E9840];
}

+ (void)sendEvent:(id)event customPayload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  v10 = payloadCopy;
  if (payloadCopy && objc_msgSend_count(payloadCopy, v7, v8, v9) && objc_msgSend__validatePayload_(self, v11, v10, v12))
  {
    objc_msgSend__sendEvent_payload_(APAnalytics, v13, eventCopy, v10);
  }
}

+ (void)sendEventAppleDomain:(id)domain customPayload:(id)payload
{
  v24 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  payloadCopy = payload;
  v11 = payloadCopy;
  if (payloadCopy && objc_msgSend_count(payloadCopy, v8, v9, v10) && objc_msgSend__validatePayload_(self, v12, v11, v13))
  {
    if (domainCopy && objc_msgSend_length(domainCopy, v14, v15, v16))
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"%@.%@", v18, @"com.apple", domainCopy);
      objc_msgSend__analyticsSendEvent_eventPayload_(APAnalytics, v20, v19, v11);
    }

    else
    {
      v19 = APLogForCategory(2uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380675;
        v23 = "+[APAnalytics sendEventAppleDomain:customPayload:]";
        _os_log_impl(&dword_1BADC1000, v19, OS_LOG_TYPE_ERROR, "%{private}s Invalid eventType", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)_sendEvent:(id)event payload:(id)payload
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  payloadCopy = payload;
  if (eventCopy && objc_msgSend_length(eventCopy, v6, v7, v8))
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"%@.%@", v11, @"com.apple.ap.promotedcontent", eventCopy);
    objc_msgSend__analyticsSendEvent_eventPayload_(APAnalytics, v13, v12, payloadCopy);
  }

  else
  {
    v12 = APLogForCategory(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      v16 = "+[APAnalytics _sendEvent:payload:]";
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "%{private}s Invalid eventType", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)sendEventLazy:(id)lazy eventPayloadBuilder:(id)builder
{
  lazyCopy = lazy;
  builderCopy = builder;
  if (builderCopy)
  {
    if (objc_msgSend_length(lazyCopy, v6, v7, v8))
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"%@.%@", v11, @"com.apple.ap.promotedcontent", lazyCopy);
      v13 = builderCopy;
      AnalyticsSendEventLazy();
    }

    else
    {
      v12 = APLogForCategory(2uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "Invalid eventType", buf, 2u);
      }
    }
  }
}

+ (BOOL)_validatePayload:(id)payload
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  payloadCopy = payload;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(payloadCopy, v4, &v20, v24, 16);
  if (!v5)
  {
    v14 = 1;
    goto LABEL_22;
  }

  v6 = v5;
  v7 = *v21;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(payloadCopy);
      }

      v9 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = APLogForCategory(2uLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "Incorrect key type", v19, 2u);
        }

        goto LABEL_21;
      }

      v12 = objc_msgSend_objectForKeyedSubscript_(payloadCopy, v10, v9, v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = APLogForCategory(2uLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          v16 = "Nested dictionaries are not supported.";
LABEL_19:
          _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, v16, v19, 2u);
        }

LABEL_20:

LABEL_21:
        v14 = 0;
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = APLogForCategory(2uLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          v16 = "Nested arrays are not supported.";
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(payloadCopy, v13, &v20, v24, 16);
    v14 = 1;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

@end