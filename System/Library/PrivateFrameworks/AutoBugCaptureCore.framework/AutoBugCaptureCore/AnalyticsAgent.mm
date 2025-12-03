@interface AnalyticsAgent
+ (id)_awdSymptomsDiagnosticIncidentReportMetricForDiagnosticCase:(id)case;
+ (id)_awdSymptomsDiagnosticNotificationTokenMetricForTokenString:(id)string;
+ (id)sharedInstance;
+ (int)awdDampeningType:(signed __int16)type;
+ (int)awdHandledResult:(signed __int16)result;
+ (void)updateAWDReport:(id)report withEvents:(id)events;
- (AnalyticsAgent)initWithSymptomsAWDConnection:(id)connection queue:(id)queue;
- (void)_handleQuery:(unsigned int)query;
- (void)_postMetric:(id)metric metricIdentifier:(unsigned int)identifier;
- (void)apnsPostNotificationToken:(id)token;
- (void)postDiagnosticIncidentReportForCase:(id)case;
@end

@implementation AnalyticsAgent

- (AnalyticsAgent)initWithSymptomsAWDConnection:(id)connection queue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = AnalyticsAgent;
  v9 = [(AnalyticsAgent *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symptomsAWDConnection, connection);
    objc_storeStrong(&v10->_queue, queue);
    [(AnalyticsAgent *)v10 _registerAWDQueriableMetric:3145742];
    symptomsAWDConnection = v10->_symptomsAWDConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__AnalyticsAgent_initWithSymptomsAWDConnection_queue___block_invoke;
    v15[3] = &unk_278CF0DF8;
    v16 = v10;
    if (([(AWDServerConnection *)symptomsAWDConnection registerConfigChangeCallback:v15]& 1) == 0)
    {
      v12 = analyticsLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Failed to register for Symptoms AWD config change", v14, 2u);
      }
    }
  }

  return v10;
}

void __54__AnalyticsAgent_initWithSymptomsAWDConnection_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AnalyticsAgent_initWithSymptomsAWDConnection_queue___block_invoke_2;
  block[3] = &unk_278CF00E0;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __54__AnalyticsAgent_initWithSymptomsAWDConnection_queue___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) description];
    v4 = [v3 UTF8String];
    v5 = [*(a1 + 40) description];
    v12 = 136315394;
    v13 = v4;
    v14 = 2080;
    v15 = [v5 UTF8String];
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEBUG, "Symptoms AWD metric ids configured, queriables: %s, triggers: %s", &v12, 0x16u);
  }

  v6 = MEMORY[0x277CBEB98];
  v7 = [*(a1 + 32) arrayByAddingObjectsFromArray:*(a1 + 40)];
  v8 = [v6 setWithArray:v7];
  v9 = *(a1 + 48);
  v10 = *(v9 + 24);
  *(v9 + 24) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AnalyticsAgent sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

void __32__AnalyticsAgent_sharedInstance__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.autobugcapture.analytics", v0);
  if (!v1)
  {
    v2 = analyticsLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_ERROR, "Failed to create queue", buf, 2u);
    }
  }

  v3 = [objc_alloc(MEMORY[0x277D7BC58]) initWithComponentId:48];
  if (!v3)
  {
    v5 = analyticsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Failed to create symptoms AWD connection", v6, 2u);
    }

    goto LABEL_10;
  }

  if (v1)
  {
    v4 = [[AnalyticsAgent alloc] initWithSymptomsAWDConnection:v3 queue:v1];
    v5 = sharedInstance_sharedInstance_3;
    sharedInstance_sharedInstance_3 = v4;
LABEL_10:
  }
}

void __46__AnalyticsAgent__registerAWDQueriableMetric___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__AnalyticsAgent__registerAWDQueriableMetric___block_invoke_2;
  v5[3] = &unk_278CF0E20;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

- (void)_postMetric:(id)metric metricIdentifier:(unsigned int)identifier
{
  metricCopy = metric;
  queue = [(AnalyticsAgent *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AnalyticsAgent__postMetric_metricIdentifier___block_invoke;
  block[3] = &unk_278CF0E48;
  identifierCopy = identifier;
  block[4] = self;
  v10 = metricCopy;
  v8 = metricCopy;
  dispatch_async(queue, block);
}

void __47__AnalyticsAgent__postMetric_metricIdentifier___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) newMetricContainerWithIdentifier:*(a1 + 48)];
  v3 = v2;
  if (!v2)
  {
    v6 = analyticsLogHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 48);
    v14 = 67109120;
    v15 = v11;
    v8 = "awd is not interested in metric ID %ul";
LABEL_9:
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
    goto LABEL_10;
  }

  [v2 setMetric:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 16) submitMetric:v3];
  v5 = analyticsLogHandle();
  v6 = v5;
  if (!v4)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 48);
    v14 = 67109120;
    v15 = v12;
    v8 = "Failed to send a metric with ID %ul";
    goto LABEL_9;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v14 = 67109120;
    v15 = v7;
    v8 = "Successfully sent a metric with ID %ul";
    v9 = v6;
    v10 = OS_LOG_TYPE_INFO;
LABEL_10:
    _os_log_impl(&dword_241804000, v9, v10, v8, &v14, 8u);
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleQuery:(unsigned int)query
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = analyticsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = query;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Received queriable metric request for metric ID %ul", v7, 8u);
  }

  if (query == 3145742)
  {
    v5 = analyticsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Submitting APNS token to AWD has been deprecated", v7, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)_awdSymptomsDiagnosticNotificationTokenMetricForTokenString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(AWDSymptomsDiagnosticNotificationToken);
  [(AWDSymptomsDiagnosticNotificationToken *)v4 setNotificationToken:stringCopy];

  return v4;
}

+ (id)_awdSymptomsDiagnosticIncidentReportMetricForDiagnosticCase:(id)case
{
  v64 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v5 = objc_alloc_init(AWDSymptomsDiagnosticIncidentReport);
  [caseCopy caseOpenedTime];
  [(AWDSymptomsDiagnosticIncidentReport *)v5 setTimestamp:(v6 * 1000.0)];
  [(AWDSymptomsDiagnosticIncidentReport *)v5 setVersion:2];
  -[AWDSymptomsDiagnosticIncidentReport setHandledResult:](v5, "setHandledResult:", +[AnalyticsAgent awdHandledResult:](AnalyticsAgent, "awdHandledResult:", [caseCopy dampeningType]));
  v7 = +[AnalyticsAgent awdDampeningType:](AnalyticsAgent, "awdDampeningType:", [caseCopy dampeningType]);
  if (v7 >= 1)
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setDampeningType:v7];
  }

  [caseCopy caseClosedTime];
  v9 = v8;
  [caseCopy caseOpenedTime];
  if (v9 > v10)
  {
    [caseCopy caseClosedTime];
    v12 = v11;
    [caseCopy caseOpenedTime];
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setDuration:(v13 * -1000.0 + v12 * 1000.0)];
  }

  caseId = [caseCopy caseId];

  if (caseId)
  {
    caseId2 = [caseCopy caseId];
    uUIDString = [caseId2 UUIDString];
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setIdentifier:uUIDString];
  }

  signature = [caseCopy signature];
  v18 = [signature objectForKeyedSubscript:@"groupID"];

  if ([v18 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setGroupIdentifier:v18];
  }

  signature2 = [caseCopy signature];
  v20 = [signature2 objectForKeyedSubscript:@"domain"];

  if ([v20 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setDomain:v20];
  }

  signature3 = [caseCopy signature];
  v22 = [signature3 objectForKeyedSubscript:@"type"];

  if ([v22 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setType:v22];
  }

  signature4 = [caseCopy signature];
  v24 = [signature4 objectForKeyedSubscript:@"subtype"];

  if ([v24 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setSubtype:v24];
  }

  v58 = v22;
  signature5 = [caseCopy signature];
  v26 = [signature5 objectForKeyedSubscript:@"additional"];

  if ([v26 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setSubtypeContext:v26];
  }

  v56 = v26;
  v57 = v24;
  signature6 = [caseCopy signature];
  v28 = [signature6 objectForKeyedSubscript:@"detected"];
  if (v28)
  {
  }

  else
  {
    signature7 = [caseCopy signature];
    v30 = [signature7 objectForKeyedSubscript:@"bundleID"];

    if (!v30)
    {
      goto LABEL_25;
    }
  }

  signature8 = [caseCopy signature];
  v32 = [signature8 objectForKeyedSubscript:@"bundleID"];

  if (![v32 length])
  {
    signature9 = [caseCopy signature];
    v34 = [signature9 objectForKeyedSubscript:@"detected"];

    v32 = v34;
  }

  if ([v32 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setDetectedName:v32];
  }

LABEL_25:
  signature10 = [caseCopy signature];
  v36 = [signature10 objectForKeyedSubscript:@"effective"];

  if ([v36 length])
  {
    [(AWDSymptomsDiagnosticIncidentReport *)v5 setEffectiveName:v36];
  }

  signature11 = [caseCopy signature];
  v38 = [signature11 objectForKeyedSubscript:@"related"];

  if (v38)
  {
    signature12 = [caseCopy signature];
    v40 = [signature12 objectForKeyedSubscript:@"related"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v20;
      v54 = v18;
      selfCopy = self;
      v41 = v40;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v60;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v60 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v59 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v46 length])
            {
              [(AWDSymptomsDiagnosticIncidentReport *)v5 addRelatedNames:v46];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v59 objects:v63 count:16];
        }

        while (v43);
      }

      self = selfCopy;
      v20 = v53;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v40;
        if ([v47 length])
        {
          [(AWDSymptomsDiagnosticIncidentReport *)v5 addRelatedNames:v47];
        }
      }
    }
  }

  events = [caseCopy events];
  v49 = [events count];

  if (v49)
  {
    events2 = [caseCopy events];
    [self updateAWDReport:v5 withEvents:events2];
  }

  v51 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (int)awdHandledResult:(signed __int16)result
{
  if (result == -1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (result)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

+ (int)awdDampeningType:(signed __int16)type
{
  v8 = *MEMORY[0x277D85DE8];
  if ((type + 2) >= 7)
  {
    typeCopy = type;
    v5 = analyticsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = typeCopy;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Found unexpected dampening type %d", v7, 8u);
    }

    result = 0;
  }

  else
  {
    result = dword_24188AD28[(type + 2)];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)updateAWDReport:(id)report withEvents:(id)events
{
  v47 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  eventsCopy = events;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = [eventsCopy countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    v9 = 0x277CBE000uLL;
    v37 = eventsCopy;
    v38 = *v41;
    do
    {
      v10 = 0;
      v39 = v7;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = *(v9 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v11 objectForKeyedSubscript:@"type"];
          if ([v13 isEqualToString:@"probe"])
          {
            v14 = [v11 objectForKeyedSubscript:@"status"];
            v15 = [v11 objectForKeyedSubscript:@"result"];
            v16 = 2;
            goto LABEL_11;
          }

          if ([v13 isEqualToString:@"symptom"])
          {
            v15 = 0;
            v14 = 0;
            v16 = 1;
LABEL_11:
            v17 = analyticsLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v45 = v13;
              _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_INFO, "Processing event of type: %@", buf, 0xCu);
            }

            v18 = [v11 objectForKeyedSubscript:@"name"];
            v19 = [v11 objectForKeyedSubscript:@"process"];
            v20 = [v11 objectForKeyedSubscript:@"timestamp"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v20 timeIntervalSince1970];
              goto LABEL_18;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [v20 doubleValue];
LABEL_18:
              v22 = v21;
              if (v21 > 0.0)
              {
                v23 = objc_alloc_init(AWDSymptomsDiagnosticIncidentEvent);
                [(AWDSymptomsDiagnosticIncidentEvent *)v23 setType:v16];
                if ([v18 length])
                {
                  [(AWDSymptomsDiagnosticIncidentEvent *)v23 setName:v18];
                }

                if ([v19 length])
                {
                  [(AWDSymptomsDiagnosticIncidentEvent *)v23 setDetectedName:v19];
                }

                v24 = analyticsLogHandle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v45 = v14;
                  _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_INFO, " kSymptomDiagnosticKeyEventStatus is %@", buf, 0xCu);
                }

                if ([v14 length])
                {
                  if ([v14 isEqualToString:@"starting"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"Starting") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"Requesting"))
                  {
                    v25 = 1;
                    goto LABEL_30;
                  }

                  if ([v14 isEqualToString:@"finished"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"Finished"))
                  {
                    goto LABEL_66;
                  }

                  if ([v14 isEqualToString:@"success"])
                  {
                    v33 = 1;
                    goto LABEL_65;
                  }

                  if ([v14 isEqualToString:@"failure"])
                  {
                    v33 = 2;
LABEL_65:
                    [(AWDSymptomsDiagnosticIncidentEvent *)v23 setStatus:v33];
LABEL_66:
                    v25 = 2;
LABEL_30:
                    [(AWDSymptomsDiagnosticIncidentEvent *)v23 setState:v25];
                  }
                }

                v26 = analyticsLogHandle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v45 = v15;
                  _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_INFO, " kSymptomDiagnosticKeyEventResult is %@", buf, 0xCu);
                }

                if ([v15 length])
                {
                  if ([v15 isEqualToString:@"success"])
                  {
                    v27 = 1;
                    goto LABEL_40;
                  }

                  if ([v15 isEqualToString:@"failure"])
                  {
                    v27 = 2;
                    goto LABEL_40;
                  }

                  if ([v14 isEqualToString:@"timeout"])
                  {
                    v27 = 3;
LABEL_40:
                    [(AWDSymptomsDiagnosticIncidentEvent *)v23 setStatus:v27];
                  }
                }

                if ([(AWDSymptomsDiagnosticIncidentEvent *)v23 hasState])
                {
                  v28 = analyticsLogHandle();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    v29 = [(AWDSymptomsDiagnosticIncidentEvent *)v23 stateAsString:[(AWDSymptomsDiagnosticIncidentEvent *)v23 state]];
                    *buf = 138412290;
                    v45 = v29;
                    _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_DEBUG, "  state: %@", buf, 0xCu);

                    eventsCopy = v37;
                  }
                }

                if ([(AWDSymptomsDiagnosticIncidentEvent *)v23 hasStatus])
                {
                  v30 = analyticsLogHandle();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                  {
                    v31 = [(AWDSymptomsDiagnosticIncidentEvent *)v23 statusAsString:[(AWDSymptomsDiagnosticIncidentEvent *)v23 status]];
                    *buf = 138412290;
                    v45 = v31;
                    _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_DEBUG, "  status: %@", buf, 0xCu);

                    eventsCopy = v37;
                  }
                }

                if ([(AWDSymptomsDiagnosticIncidentEvent *)v23 hasState]|| [(AWDSymptomsDiagnosticIncidentEvent *)v23 hasStatus])
                {
                  v32 = analyticsLogHandle();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_241804000, v32, OS_LOG_TYPE_INFO, " Adding event to AWD incident report.", buf, 2u);
                  }

                  [reportCopy addIncidentEvents:v23];
                  [reportCopy addTimestampsIncidentEvents:(v22 * 1000.0)];
                  eventsCopy = v37;
                }
              }
            }

            v8 = v38;
            v7 = v39;
            v9 = 0x277CBE000;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v34 = [eventsCopy countByEnumeratingWithState:&v40 objects:v46 count:16];
      v7 = v34;
    }

    while (v34);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)apnsPostNotificationToken:(id)token
{
  v10 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = analyticsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = tokenCopy;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Creating AWDSymptomsDiagnosticNotificationToken metric with token string %@", &v8, 0xCu);
  }

  v6 = [AnalyticsAgent _awdSymptomsDiagnosticNotificationTokenMetricForTokenString:tokenCopy];
  [(AnalyticsAgent *)self _postMetric:v6 metricIdentifier:3145742];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postDiagnosticIncidentReportForCase:(id)case
{
  v10 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v4 = analyticsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = caseCopy;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "Creating AWDSymptomsDiagnosticIncidentReport for diagnostic case: %@", &v8, 0xCu);
  }

  v5 = [AnalyticsAgent _awdSymptomsDiagnosticIncidentReportMetricForDiagnosticCase:caseCopy];
  v6 = +[AnalyticsAgent sharedInstance];
  [v6 _postMetric:v5 metricIdentifier:3145739];

  v7 = *MEMORY[0x277D85DE8];
}

@end