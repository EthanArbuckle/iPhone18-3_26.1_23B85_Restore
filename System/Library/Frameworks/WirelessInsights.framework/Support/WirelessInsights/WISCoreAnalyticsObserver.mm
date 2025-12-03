@interface WISCoreAnalyticsObserver
+ (id)shared;
- (WISCoreAnalyticsObserver)init;
- (void)dealloc;
- (void)handleCAEventHandlerWrapper:(id)wrapper data:(id)data;
- (void)observer:(id)observer didEmitMessage:(id)message;
- (void)stopObserving;
@end

@implementation WISCoreAnalyticsObserver

- (WISCoreAnalyticsObserver)init
{
  v45.receiver = self;
  v45.super_class = WISCoreAnalyticsObserver;
  v2 = [(WISCoreAnalyticsObserver *)&v45 init];
  if (!v2)
  {
    return v2;
  }

  sub_100011294(&__p, 1);
  if ((v44 & 0x80u) == 0)
  {
    v3 = v44;
  }

  else
  {
    v3 = v43;
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  if ((v44 & 0x80) == 0)
  {
    if (v44 != 4)
    {
      if (v44 == 7)
      {
        if (__p != 1920098627 || *(&__p + 3) != 1919248754)
        {
          goto LABEL_16;
        }

        goto LABEL_39;
      }

      if (v44 == 8)
      {
        p_p = &__p;
        goto LABEL_15;
      }

LABEL_16:
      v5 = [NSString stringWithUTF8String:"com.apple.speed.networkperformancetester.throughput"];
      v46 = v5;
      v6 = [NSArray arrayWithObjects:&v46 count:1];
      goto LABEL_17;
    }

    v12 = __p;
LABEL_38:
    if (v12 != 1635018050)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

  if (v43 == 4)
  {
    v12 = *__p;
    goto LABEL_38;
  }

  if (v43 == 7)
  {
    if (*__p != 1920098627 || *(__p + 3) != 1919248754)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

  if (v43 != 8)
  {
    goto LABEL_16;
  }

  p_p = __p;
LABEL_15:
  if (*p_p != 0x6C616E7265746E49)
  {
    goto LABEL_16;
  }

LABEL_39:
  v5 = [NSString stringWithUTF8String:"com.apple.speed.networkperformancetester.throughput"];
  v47 = v5;
  v48 = [NSString stringWithUTF8String:"com.apple.AVConference.IMSCallSummaryStats"];
  v40 = v48;
  v39 = [NSString stringWithUTF8String:"com.apple.AVConference.IMSCallAudioFrameStats"];
  v49 = v39;
  v38 = [NSString stringWithUTF8String:"com.apple.AVConference.IMSCallAudioDistortionSummary"];
  v50 = v38;
  v37 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSMessageProvisionRegistration"];
  v51 = v37;
  v36 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSMessageSendReceive"];
  v52 = v36;
  v35 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSMessageProvisioning"];
  v53 = v35;
  v34 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSMessageSessionSetup"];
  v54 = v34;
  v33 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSPagerMessageSendReceive"];
  v55 = v33;
  v32 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSMSRPMessageSendReceive"];
  v56 = v32;
  v30 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSMessageSIPOptions"];
  v57 = v30;
  v29 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSSIPRefer"];
  v58 = v29;
  v28 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSMessageSessionEnd"];
  v59 = v28;
  v27 = [NSString stringWithUTF8String:"com.apple.Telephony.metricCCStwCPSummary"];
  v60 = v27;
  v26 = [NSString stringWithUTF8String:"com.apple.Telephony.metricCCStwRequest"];
  v61 = v26;
  v25 = [NSString stringWithUTF8String:"com.apple.Telephony.metricCCStwMessageOutgoing"];
  v62 = v25;
  v24 = [NSString stringWithUTF8String:"com.apple.telephony.metricCCStwMessageIncoming"];
  v63 = v24;
  v23 = [NSString stringWithUTF8String:"com.apple.IDS.QualifiedContacts"];
  v64 = v23;
  v22 = [NSString stringWithUTF8String:"com.apple.Messages.IMMetricsCollectorEventSMSSentMessageSingleComponent"];
  v65 = v22;
  v21 = [NSString stringWithUTF8String:"com.apple.Messages.IMMetricsCollectorEventIMessageSentMessageSingleComponent"];
  v66 = v21;
  v31 = [NSString stringWithUTF8String:"com.apple.IDS.OffTheGridMode"];
  v67 = v31;
  v14 = [NSString stringWithUTF8String:"com.apple.Telephony.atm_Registration_Result"];
  v68 = v14;
  v15 = [NSString stringWithUTF8String:"com.apple.setupassistant.ios.activation"];
  v69 = v15;
  v16 = [NSString stringWithUTF8String:"com.apple.Messages.IMMetricsCollectorEventSentMessage"];
  v70 = v16;
  v17 = [NSString stringWithUTF8String:"com.apple.Telephony.hsarHealthMonitor"];
  v71 = v17;
  v18 = [NSString stringWithUTF8String:"com.apple.Telephony.DNSResolution"];
  v72 = v18;
  v19 = [NSString stringWithUTF8String:"com.apple.Telephony.RCSServerTermination"];
  v73 = v19;
  v20 = [NSString stringWithUTF8String:"com.apple.Telephony.UnifiedCTMessage"];
  v74 = v20;
  v6 = [NSArray arrayWithObjects:&v47 count:28];

LABEL_17:
  v7 = objc_alloc_init(AnalyticsEventObserver);
  eventObserver = v2->_eventObserver;
  v2->_eventObserver = v7;

  [(AnalyticsEventObserver *)v2->_eventObserver setEventObserverDelegate:v2 queue:dispatch_queue_create("com.apple.wisd.WISCoreAnalyticsObserver", 0)];
  if ([(AnalyticsEventObserver *)v2->_eventObserver startObservingEventList:v6])
  {
    v9 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "caobserver:#I WISCoreAnalyticsObserver successfully registered delegate, listening for events..", buf, 2u);
    }
  }

  if (v44 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

- (void)dealloc
{
  [(WISCoreAnalyticsObserver *)self stopObserving];
  v3.receiver = self;
  v3.super_class = WISCoreAnalyticsObserver;
  [(WISCoreAnalyticsObserver *)&v3 dealloc];
}

- (void)stopObserving
{
  eventObserver = [(WISCoreAnalyticsObserver *)self eventObserver];
  [eventObserver stopObserving];
}

- (void)handleCAEventHandlerWrapper:(id)wrapper data:(id)data
{
  wrapperCopy = wrapper;
  dataCopy = data;
  v7 = [NSJSONSerialization dataWithJSONObject:dataCopy options:1 error:0];
  v8 = [[NSString alloc] initWithData:v7 encoding:4];
  XPCEventPublisher.Token.rawValue.getter(v9, v10);
  if (wrapperCopy)
  {
    CFRetain(wrapperCopy);
  }

  if (v8)
  {
    CFRetain(v8);
  }

  v14 = wrapperCopy;
  if (wrapperCopy)
  {
    CFRetain(wrapperCopy);
  }

  cf = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  sub_10015E52C(&v15, &v14, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (wrapperCopy)
  {
    CFRelease(wrapperCopy);
  }

  XPCEventPublisher.Token.rawValue.getter(v11, v12);
}

- (void)observer:(id)observer didEmitMessage:(id)message
{
  observerCopy = observer;
  messageCopy = message;
  if (messageCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [messageCopy dataUsingEncoding:4];
    v19 = 0;
    v9 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v19];
    v10 = v19;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"name"];
      v12 = [v9 objectForKeyedSubscript:@"message"];
      v13 = v12;
      v14 = *(qword_1002DBE98 + 112);
      if (v11 && v12)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "caobserver:#I WISCoreAnalyticsObserver received CA event %@ with payload", buf, 0xCu);
        }

        [(WISCoreAnalyticsObserver *)self handleCAEventHandlerWrapper:v11 data:v13];
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
      {
        sub_1001FF9AC(v14);
      }
    }

    else
    {
      v17 = *(qword_1002DBE98 + 112);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        sub_1001FF9F0(localizedDescription, buf, v17);
      }
    }
  }

  else
  {
    v15 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      sub_1001FFA48(v16, messageCopy, buf, v15);
    }
  }
}

+ (id)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069FFC;
  block[3] = &unk_1002AB480;
  block[4] = self;
  if (qword_1002D8318 != -1)
  {
    dispatch_once(&qword_1002D8318, block);
  }

  v2 = qword_1002D8310;

  return v2;
}

@end