@interface ARPRoutingEvent
+ (id)mostRecentRoutingEventInDateInterval:(id)a3 knowledgeStore:(id)a4 eventLimit:(unint64_t)a5 longFormVideoFilter:(id)a6;
- (ARPRoutingEvent)initWithBundleID:(id)a3 outputDeviceID:(id)a4 interval:(id)a5 probabilityVector:(id)a6;
- (id)description;
@end

@implementation ARPRoutingEvent

- (ARPRoutingEvent)initWithBundleID:(id)a3 outputDeviceID:(id)a4 interval:(id)a5 probabilityVector:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = ARPRoutingEvent;
  v14 = [(ARPRoutingEvent *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v15;

    v17 = [v11 copy];
    outputDeviceID = v14->_outputDeviceID;
    v14->_outputDeviceID = v17;

    v19 = [v12 copy];
    interval = v14->_interval;
    v14->_interval = v19;

    objc_storeStrong(&v14->_probabilityVector, a6);
  }

  return v14;
}

+ (id)mostRecentRoutingEventInDateInterval:(id)a3 knowledgeStore:(id)a4 eventLimit:(unint64_t)a5 longFormVideoFilter:(id)a6
{
  v134[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v98 = a6;
  v94 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
  v12 = MEMORY[0x277CFE260];
  v13 = [v9 startDate];
  v14 = [v9 endDate];
  v15 = [v12 predicateForEventsWithEndInDateRangeFrom:v13 to:v14];

  v16 = MEMORY[0x277CFE260];
  v17 = [MEMORY[0x277CFE248] playing];
  v18 = [v16 predicateForObjectsWithMetadataKey:v17 andIntegerValue:1];

  +[ARPRoutingSession minimumRoutingEventDuration];
  v19 = [MEMORY[0x277CFE260] predicateForEventsWithMinimumDuration:?];
  v20 = MEMORY[0x277CCA920];
  v91 = v18;
  v92 = v15;
  v134[0] = v15;
  v134[1] = v18;
  v90 = v19;
  v134[2] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:3];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = MEMORY[0x277CFE1E0];
  v24 = [MEMORY[0x277CFE298] nowPlayingStream];
  v133 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
  v93 = v11;
  v132 = v11;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
  v89 = v22;
  v27 = [v23 eventQueryWithPredicate:v22 eventStreams:v25 offset:0 limit:a5 sortDescriptors:v26];

  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPRoutingSession.m"];
  v29 = [v28 stringByAppendingFormat:@":%d", 85];
  [v27 setClientName:v29];

  [v27 setTracker:&__block_literal_global_1];
  v121 = 0;
  v99 = v10;
  v30 = v27;
  v31 = [v10 executeQuery:v27 error:&v121];
  v32 = v121;
  v33 = ARPLog();
  v34 = v33;
  if (v32)
  {
    v35 = 0;
    goto LABEL_49;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [ARPRoutingEvent mostRecentRoutingEventInDateInterval:v31 knowledgeStore:v34 eventLimit:? longFormVideoFilter:?];
  }

  oslog = v34;

  v36 = MEMORY[0x277CFE1E0];
  v37 = [MEMORY[0x277CFE298] microLocationVisitStream];
  v131 = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
  v39 = [v36 eventQueryWithPredicate:0 eventStreams:v38 offset:0 limit:1 sortDescriptors:0];

  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPRoutingSession.m"];
  v41 = [v40 stringByAppendingFormat:@":%d", 101];
  [v39 setClientName:v41];

  v97 = v39;
  [v39 setTracker:&__block_literal_global_17];
  if (!v98)
  {
    v42 = [getAVSystemControllerClass() sharedAVSystemController];
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __102__ARPRoutingEvent_mostRecentRoutingEventInDateInterval_knowledgeStore_eventLimit_longFormVideoFilter___block_invoke_2;
    v119[3] = &unk_278C64550;
    v120 = v42;
    v43 = v42;
    v98 = MEMORY[0x23EF1CFE0](v119);
  }

  v86 = v27;
  v87 = v9;
  +[ARPRoutingSession microLocationCorrelationGracePeriod];
  v45 = v44;
  v107 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v85 = v31;
  obj = v31;
  v46 = 0x277CFE000uLL;
  v47 = 0x277CFE000uLL;
  v109 = [obj countByEnumeratingWithState:&v115 objects:v130 count:16];
  if (v109)
  {
    v95 = 0;
    v96 = 0;
    v105 = 0;
    v108 = *v116;
    while (1)
    {
      v48 = 0;
      do
      {
        if (*v116 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v115 + 1) + 8 * v48);
        context = objc_autoreleasePoolPush();
        v50 = [v49 metadata];
        v51 = [*(v47 + 584) outputDeviceIDs];
        v52 = [v50 objectForKeyedSubscript:v51];

        v53 = ARPExtractLongFormVideoOutputDeviceIDs(v52);
        if ([v53 count] == 1)
        {
          v54 = [v53 firstObject];
        }

        else
        {
          v54 = 0;
        }

        v34 = oslog;
        v55 = [v49 stringValue];
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v80 = [v49 startDate];
          v81 = [v49 endDate];
          *buf = 138413058;
          v123 = v55;
          v124 = 2112;
          v125 = v54;
          v126 = 2112;
          v127 = v80;
          v128 = 2112;
          v129 = v81;
          _os_log_debug_impl(&dword_23EB15000, oslog, OS_LOG_TYPE_DEBUG, "Evaluating candiate event %@ -> %@. %@ - %@", buf, 0x2Au);

          v34 = oslog;
        }

        if (v54)
        {
          v56 = [v107 objectForKeyedSubscript:v55];
          if (!v56)
          {
            v56 = [MEMORY[0x277CCABB0] numberWithBool:{v98[2](v98, v55)}];
            [v107 setObject:v56 forKeyedSubscript:v55];
          }

          if ([v56 BOOLValue])
          {
            v101 = v52;
            v57 = [v49 startDate];
            v58 = [v57 dateByAddingTimeInterval:-v45];

            v59 = [v49 startDate];
            v60 = [v59 dateByAddingTimeInterval:v45];

            v102 = v58;
            v104 = v60;
            v103 = [*(v46 + 608) predicateForEventsWithStartInDateRangeFrom:v58 to:v60];
            [v97 setPredicate:?];
            v112 = v105;
            v61 = [v99 executeQuery:v97 error:&v112];
            v62 = v112;

            v63 = [v61 firstObject];

            v106 = v63;
            if (v62)
            {
              v64 = 0;
              v46 = 0x277CFE000;
              v52 = v101;
              v65 = v102;
              goto LABEL_36;
            }

            if (v63)
            {
              v67 = [v63 metadata];
              v68 = [MEMORY[0x277CFE230] probabilityVector];
              v69 = [v67 objectForKeyedSubscript:v68];

              if (v69)
              {
                v70 = [v63 metadata];
                v71 = [MEMORY[0x277CFE230] probabilityVector];
                v88 = [v70 objectForKeyedSubscript:v71];

                v72 = objc_alloc(MEMORY[0x277CCA970]);
                v73 = [v49 startDate];
                v74 = [v49 endDate];
                v75 = [v72 initWithStartDate:v73 endDate:v74];

                v76 = [ARPRoutingEvent alloc];
                v77 = [v49 stringValue];
                v78 = [(ARPRoutingEvent *)v76 initWithBundleID:v77 outputDeviceID:v54 interval:v75 probabilityVector:v88];

                v79 = v75;
                v64 = 0;
                v95 = v88;
                v96 = v78;
                goto LABEL_34;
              }
            }

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v65 = v102;
              v123 = v102;
              v124 = 2112;
              v125 = v104;
              _os_log_debug_impl(&dword_23EB15000, oslog, OS_LOG_TYPE_DEBUG, "Skipping candidate because there is no associated microlocation between %@ and %@", buf, 0x16u);
              v64 = 1;
              v79 = oslog;
              v46 = 0x277CFE000;
            }

            else
            {
              v64 = 1;
              v79 = oslog;
LABEL_34:
              v46 = 0x277CFE000;
              v65 = v102;
            }

            v52 = v101;

            v62 = 0;
LABEL_36:

            if ((v64 & 1) == 0)
            {

              objc_autoreleasePoolPop(context);
              v105 = v62;
              goto LABEL_46;
            }

            v105 = v62;
            v34 = oslog;
          }

          else
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v123 = v55;
              _os_log_debug_impl(&dword_23EB15000, v34, OS_LOG_TYPE_DEBUG, "Skipping candidate because %@ is not a long form video app.", buf, 0xCu);
            }
          }

          v66 = v55;
          v47 = 0x277CFE000;
          goto LABEL_39;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [ARPRoutingEvent mostRecentRoutingEventInDateInterval:v114 knowledgeStore:v34 eventLimit:? longFormVideoFilter:?];
        }

        v66 = v34;
        v54 = v55;
LABEL_39:

        objc_autoreleasePoolPop(context);
        ++v48;
      }

      while (v109 != v48);
      v82 = [obj countByEnumeratingWithState:&v115 objects:v130 count:16];
      v109 = v82;
      if (!v82)
      {
        goto LABEL_47;
      }
    }
  }

  v95 = 0;
  v96 = 0;
  v105 = 0;
LABEL_46:
  v34 = oslog;
LABEL_47:

  v32 = v105;
  if (!v105)
  {
    v30 = v86;
    v9 = v87;
    v31 = v85;
    v35 = v96;
    goto LABEL_52;
  }

  v30 = v86;
  v9 = v87;
  v31 = v85;
  v35 = v96;
LABEL_49:
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [ARPRoutingEvent mostRecentRoutingEventInDateInterval:v32 knowledgeStore:v34 eventLimit:? longFormVideoFilter:?];
  }

LABEL_52:
  objc_autoreleasePoolPop(v94);

  v83 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ARPRoutingEvent *)self bundleID];
  v6 = [(ARPRoutingEvent *)self outputDeviceID];
  v7 = [(ARPRoutingEvent *)self interval];
  v8 = [(ARPRoutingEvent *)self probabilityVector];
  v9 = [v3 stringWithFormat:@"<%@ %p> bundleID: %@, outputDeviceID: %@, interval: %@, microLocationProbabilityVector: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

+ (void)mostRecentRoutingEventInDateInterval:(void *)a1 knowledgeStore:(NSObject *)a2 eventLimit:longFormVideoFilter:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_23EB15000, a2, OS_LOG_TYPE_DEBUG, "Found %@ candidate events for most recent routing event", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)mostRecentRoutingEventInDateInterval:(os_log_t)log knowledgeStore:eventLimit:longFormVideoFilter:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_23EB15000, log, OS_LOG_TYPE_DEBUG, "Skipping candidate because it doesn't have exactly one output device.", buf, 2u);
}

+ (void)mostRecentRoutingEventInDateInterval:(uint64_t)a1 knowledgeStore:(NSObject *)a2 eventLimit:longFormVideoFilter:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23EB15000, a2, OS_LOG_TYPE_ERROR, "Error fetching most recent routing event: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end