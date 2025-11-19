@interface DiagnosticStatisticsManager
- (DiagnosticStatisticsManager)initWithWorkspace:(id)a3 queue:(id)a4;
- (double)_calculateAverageCasesPerDayFromDailyAggregatedStatistics;
- (id)_createDiagnosticCaseUsageForDomain:(id)a3 type:(id)a4 subType:(id)a5 process:(id)a6;
- (id)_retrieveDiagnosticCaseUsageForDomain:(id)a3 type:(id)a4 subType:(id)a5 process:(id)a6 onOrAfter:(id)a7 create:(BOOL)a8;
- (int64_t)_removeDiagnosticCaseUsageMatchingDomain:(id)a3 type:(id)a4 subType:(id)a5 process:(id)a6;
- (void)_checkFileWritingLimits:(id)a3;
- (void)_updateCaseStatisticsWith:(id)a3;
- (void)_updateDailyCaseStatisticsWith:(id)a3;
- (void)_updateDiagnosticCaseUsageForDomain:(id)a3 type:(id)a4 subType:(id)a5 process:(id)a6 lastSeen:(id)a7 dampeningType:(BOOL)a8;
- (void)cleanupDiagnosticCaseUsage;
- (void)getDiagnosticCaseUsageStatistics:(id)a3;
- (void)resetDiagnosticCaseUsage;
- (void)updateCaseStatisticsWith:(id)a3;
@end

@implementation DiagnosticStatisticsManager

- (DiagnosticStatisticsManager)initWithWorkspace:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DiagnosticStatisticsManager;
  v9 = [(DiagnosticStatisticsManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_workspace, a3);
    v11 = [[DiagnosticCaseUsageAnalytics alloc] initWithWorkspace:v7 withCache:0];
    caseUsageSpace = v10->_caseUsageSpace;
    v10->_caseUsageSpace = v11;
  }

  return v10;
}

- (void)_checkFileWritingLimits:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 dampeningType])
  {
    *buf = 0;
    v28 = buf;
    v29 = 0x2020000000;
    v30 = 0;
    [v4 caseOpenedTime];
    if (v5 > 100000000.0)
    {
      [v4 caseOpenedTime];
      v8 = v10;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAA8] date];
      [v6 timeIntervalSince1970];
      v8 = v7;
    }

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(86400 * (v8 / 0x15180))];
    v12 = [(DiagnosticStatisticsManager *)self _retrieveDiagnosticCaseUsageForDomain:@"DAILY_AGGREGATE" type:@"DAILY_AGGREGATE" subType:@"DAILY_AGGREGATE" process:@"DAILY_AGGREGATE" onOrAfter:v11 create:0];
    v13 = casemanagementLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v12 count];
      *v31 = 134218242;
      v32 = v14;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Found %ld case usages since %@", v31, 0x16u);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__DiagnosticStatisticsManager__checkFileWritingLimits___block_invoke;
    v26[3] = &unk_278CF0700;
    v26[4] = buf;
    [v12 enumerateObjectsUsingBlock:v26];
    v15 = +[ABCAdministrator sharedInstance];
    v16 = [v15 configurationManager];
    v17 = [v16 dampenedIPSLimit];

    v18 = *(v28 + 3);
    if (v18 > v17)
    {
      v19 = casemanagementLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v24 = *(v28 + 3);
        *v31 = 134218240;
        v32 = v24;
        v33 = 2048;
        v34 = v17;
        v21 = "Surpassed limit for dampened cases. Will not write out ips file. (%ld > %ld)";
        v22 = v19;
        v23 = OS_LOG_TYPE_INFO;
        goto LABEL_15;
      }
    }

    else
    {
      v19 = casemanagementLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(v28 + 3);
        *v31 = 134218240;
        v32 = v20;
        v33 = 2048;
        v34 = v17;
        v21 = "Still under limit for dampened cases. Allowing write out of ips file. (%ld <= %ld)";
        v22 = v19;
        v23 = OS_LOG_TYPE_DEBUG;
LABEL_15:
        _os_log_impl(&dword_241804000, v22, v23, v21, v31, 0x16u);
      }
    }

    [v4 allowIPSFileOutput:v18 <= v17];
    _Block_object_dispose(buf, 8);
    goto LABEL_17;
  }

  v9 = casemanagementLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "Case accepted. Allowing write out of ips file by default.", buf, 2u);
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

void __55__DiagnosticStatisticsManager__checkFileWritingLimits___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 casesSeen];
  v5 = [v3 casesAccepted];
  v6 = v4 - v5;
  v7 = casemanagementLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = v5;
    v9 = [v3 lastSeen];
    v11 = 134218754;
    v12 = v4;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "  Total cases: %ld, cases accepted: %ld, cases dampened: %ld (last seen: %@)", &v11, 0x2Au);
  }

  *(*(*(a1 + 32) + 8) + 24) += v6;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCaseStatisticsWith:(id)a3
{
  v4 = a3;
  [(DiagnosticStatisticsManager *)self _updateCaseStatisticsWith:v4];
  [(DiagnosticStatisticsManager *)self _updateDailyCaseStatisticsWith:v4];
}

- (void)getDiagnosticCaseUsageStatistics:(id)a3
{
  v4 = a3;
  v5 = [(DiagnosticStatisticsManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__DiagnosticStatisticsManager_getDiagnosticCaseUsageStatistics___block_invoke;
  v7[3] = &unk_278CEFEB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__DiagnosticStatisticsManager_getDiagnosticCaseUsageStatistics___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 24))
  {
    v26 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"lastSeen" ascending:0];
    v27 = a1;
    v2 = [*(*(a1 + 32) + 24) fetchEntitiesFreeForm:0 sortDesc:?];
    v3 = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v2;
    v31 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v31)
    {
      v29 = *v49;
      v4 = @"N/A";
      v5 = 0x277CCA000uLL;
      v30 = v3;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v49 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v48 + 1) + 8 * i);
          v43 = MEMORY[0x277CBEAC0];
          v8 = [v7 domain];
          if (v8)
          {
            v37 = [v7 domain];
            v41 = v37;
          }

          else
          {
            v41 = @"N/A";
          }

          v9 = [v7 type];
          if (v9)
          {
            v36 = [v7 type];
            v40 = v36;
          }

          else
          {
            v40 = @"N/A";
          }

          v10 = [v7 subtype];
          if (v10)
          {
            v35 = [v7 subtype];
            v39 = v35;
          }

          else
          {
            v39 = @"N/A";
          }

          v11 = [v7 process];
          if (v11)
          {
            v34 = [v7 process];
            v38 = v34;
          }

          else
          {
            v38 = @"N/A";
          }

          v46 = v8;
          v47 = [*(v5 + 2992) numberWithInteger:{objc_msgSend(v7, "casesSeen")}];
          v12 = [v7 lastSeen];
          v44 = v10;
          if (v12)
          {
            v13 = [v7 lastSeen];
            v33 = v13;
          }

          else
          {
            v13 = @"N/A";
          }

          v14 = [*(v5 + 2992) numberWithInteger:{objc_msgSend(v7, "casesAccepted")}];
          v15 = [v7 lastAccepted];
          v45 = v9;
          v42 = v11;
          if (v15)
          {
            v4 = [v7 lastAccepted];
            v32 = v4;
          }

          v16 = *(v5 + 2992);
          [v7 interarrival_mean];
          v17 = [v16 numberWithDouble:?];
          v18 = v5;
          v19 = v17;
          v20 = v18;
          v21 = *(v18 + 2992);
          [v7 interarrival_var];
          v22 = [v21 numberWithDouble:?];
          v23 = [v43 dictionaryWithObjectsAndKeys:{v41, @"domain", v40, @"type", v39, @"subtype", v38, @"detected", v47, @"casesSeen", v13, @"lastSeen", v14, @"casesAccepted", v4, @"lastAccepted", v19, @"interArrivalMean", v22, @"interArrivalVariance", 0}];

          if (v15)
          {
          }

          v4 = @"N/A";
          if (v12)
          {
          }

          v3 = v30;
          v5 = v20;
          if (v42)
          {
          }

          if (v44)
          {
          }

          if (v45)
          {
          }

          if (v46)
          {
          }

          [v30 addObject:v23];
        }

        v31 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v31);
    }

    v24 = *(v27 + 40);
    if (v24)
    {
      (*(v24 + 16))(v24, v3);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateCaseStatisticsWith:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAA8];
  [v4 caseOpenedTime];
  v6 = [v5 dateWithTimeIntervalSince1970:?];
  if (v6)
  {
    v7 = [v4 caseDomain];
    v8 = [v4 caseType];
    v9 = [v4 caseSubType];
    v10 = [v4 caseDetectedProcess];
    -[DiagnosticStatisticsManager _updateDiagnosticCaseUsageForDomain:type:subType:process:lastSeen:dampeningType:](self, "_updateDiagnosticCaseUsageForDomain:type:subType:process:lastSeen:dampeningType:", v7, v8, v9, v10, v6, [v4 dampeningType] != 0);
  }

  else
  {
    v11 = casemanagementLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "DiagnosticCase has no timeStamp!", v12, 2u);
    }
  }
}

- (void)_updateDiagnosticCaseUsageForDomain:(id)a3 type:(id)a4 subType:(id)a5 process:(id)a6 lastSeen:(id)a7 dampeningType:(BOOL)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [(DiagnosticStatisticsManager *)self _retrieveDiagnosticCaseUsageForDomain:v14 type:v15 subType:v16 process:v17];
  if ([v19 count] == 1)
  {
    v20 = [v19 firstObject];
    if (v20)
    {
      v21 = v20;
      v31 = a8;
      v22 = casemanagementLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v21;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_INFO, "Updating DiagCaseUsage: %@", buf, 0xCu);
      }

      v32 = [v21 lastSeen];
      v23 = [v21 casesSeen];
      [v21 setCasesSeen:(v23 + 1)];
      [v21 setLastSeen:v18];
      [v21 interarrival_mean];
      if (v23 >= 1)
      {
        v25 = v24;
        [v18 timeIntervalSinceDate:v32];
        v27 = v26;
        [MathUtility computeNewMeanFromValue:"computeNewMeanFromValue:currentMean:currentCount:" currentMean:(v23 - 1) currentCount:?];
        [v21 setInterarrival_mean:?];
        if (v23 != 1)
        {
          [v21 interarrival_var];
          [MathUtility computeNewVarianceFromValue:(v23 - 1) currentMean:v27 currentCount:v25 currentVariance:v28];
          [v21 setInterarrival_var:?];
        }
      }

      if (!v31)
      {
        [v21 setCasesAccepted:[v21 casesAccepted]+ 1];
        [v21 setLastAccepted:v18];
      }

      [(ObjectAnalytics *)self->_caseUsageSpace save];

      goto LABEL_16;
    }
  }

  else
  {
    v29 = casemanagementLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 134219010;
      v34 = [v19 count];
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_INFO, "Found %ld DiagCaseUsage objects that matched with (%@, %@, %@, %@)", buf, 0x34u);
    }
  }

  v21 = casemanagementLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, "DiagnosticCaseUsage is nil.", buf, 2u);
  }

LABEL_16:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_updateDailyCaseStatisticsWith:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 caseOpenedTime];
  v6 = v5;
  if (v5 >= 100000000.0)
  {
    v9 = [v4 dampeningType];
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(86400 * (v6 / 0x15180))];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    v40 = __Block_byref_object_dispose_;
    v41 = 0;
    v12 = [(DiagnosticStatisticsManager *)self _retrieveDiagnosticCaseUsageForDomain:@"DAILY_AGGREGATE" type:@"DAILY_AGGREGATE" subType:@"DAILY_AGGREGATE" process:@"DAILY_AGGREGATE" onOrAfter:v10 create:0];
    v13 = casemanagementLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v33 = 134218242;
      v34 = [v12 count];
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Found %ld case usages on or later than %@", v33, 0x16u);
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __62__DiagnosticStatisticsManager__updateDailyCaseStatisticsWith___block_invoke;
    v30 = &unk_278CF0728;
    v7 = v10;
    v31 = v7;
    p_buf = &buf;
    [v12 enumerateObjectsUsingBlock:&v27];
    v14 = *(*(&buf + 1) + 40);
    if (v14)
    {
      goto LABEL_10;
    }

    v15 = casemanagementLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = v7;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "Creating a new aggregated DiagnosticCaseUsage for cases on GMT date %@.", v33, 0xCu);
    }

    v16 = [(DiagnosticStatisticsManager *)self _createDiagnosticCaseUsageForDomain:@"DAILY_AGGREGATE" type:@"DAILY_AGGREGATE" subType:@"DAILY_AGGREGATE" process:@"DAILY_AGGREGATE", v27, v28, v29, v30];
    v17 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v16;

    v14 = *(*(&buf + 1) + 40);
    if (v14)
    {
LABEL_10:
      v18 = [v14 lastSeen];
      v19 = [*(*(&buf + 1) + 40) casesSeen];
      [*(*(&buf + 1) + 40) setCasesSeen:(v19 + 1)];
      [*(*(&buf + 1) + 40) setLastSeen:v11];
      [*(*(&buf + 1) + 40) interarrival_mean];
      if (v19 >= 1)
      {
        v21 = v20;
        [v11 timeIntervalSinceDate:v18];
        v23 = v22;
        [MathUtility computeNewMeanFromValue:"computeNewMeanFromValue:currentMean:currentCount:" currentMean:(v19 - 1) currentCount:?];
        [*(*(&buf + 1) + 40) setInterarrival_mean:?];
        if (v19 != 1)
        {
          [*(*(&buf + 1) + 40) interarrival_var];
          [MathUtility computeNewVarianceFromValue:(v19 - 1) currentMean:v23 currentCount:v21 currentVariance:v24];
          [*(*(&buf + 1) + 40) setInterarrival_var:?];
        }
      }

      if (!v9)
      {
        v25 = [*(*(&buf + 1) + 40) casesAccepted];
        [*(*(&buf + 1) + 40) setCasesAccepted:(v25 + 1)];
        [*(*(&buf + 1) + 40) setLastAccepted:v11];
      }

      [(ObjectAnalytics *)self->_caseUsageSpace save];
    }

    else
    {
      v18 = casemanagementLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 138412290;
        v34 = v7;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "Aggregated DiagnosticCaseUsage for case on GMT date %@ is nil.", v33, 0xCu);
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = casemanagementLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v4 caseOpenedTime];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "DiagnosticCase has an invalid timeStamp! (%.0lf)", &buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __62__DiagnosticStatisticsManager__updateDailyCaseStatisticsWith___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = MEMORY[0x277CBEAA8];
  v9 = [v7 lastSeen];
  [v9 timeIntervalSince1970];
  v11 = v10;
  v12 = [v7 lastSeen];
  [v12 timeIntervalSince1970];
  v14 = [v8 dateWithTimeIntervalSince1970:(v11 + 86400 * (v13 / 0x15180) - v13)];

  if ([*(a1 + 32) isEqualToDate:v14])
  {
    v15 = casemanagementLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Found aggregated DiagnosticCaseUsage for cases on GMT date %@.", &v18, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_retrieveDiagnosticCaseUsageForDomain:(id)a3 type:(id)a4 subType:(id)a5 process:(id)a6 onOrAfter:(id)a7 create:(BOOL)a8
{
  v8 = a8;
  v45 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([v14 length] && objc_msgSend(v15, "length"))
  {
    v34 = v8;
    v36 = self;
    v19 = MEMORY[0x277CBEB18];
    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ AND %K == %@", @"domain", v14, @"type", v15];
    v21 = [v19 arrayWithObjects:{v20, 0}];

    if ([v16 length])
    {
      v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"subtype", v16];
      [v21 addObject:v22];
    }

    if ([v17 length])
    {
      v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"process", v17];
      [v21 addObject:v23];
    }

    if (v18)
    {
      v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"lastSeen", v18];
      [v21 addObject:v24];
    }

    v35 = v18;
    v25 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v21];
    v26 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"lastSeen" ascending:0];
    v27 = [(ObjectAnalytics *)v36->_caseUsageSpace fetchEntitiesFreeForm:v25 sortDesc:v26];
    if ([v27 count] || !v34)
    {
      v31 = v27;
    }

    else
    {
      v28 = casemanagementLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v38 = v14;
        v39 = 2112;
        v40 = v15;
        v41 = 2112;
        v42 = v16;
        v43 = 2112;
        v44 = v17;
        _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_INFO, "Creating a new DiagnosticCaseUsage with domain %@, type %@, subtype %@, process %@.", buf, 0x2Au);
      }

      v29 = MEMORY[0x277CBEA60];
      v30 = [(DiagnosticStatisticsManager *)v36 _createDiagnosticCaseUsageForDomain:v14 type:v15 subType:v16 process:v17];
      v31 = [v29 arrayWithObject:v30];
    }

    v18 = v35;
  }

  else
  {
    v21 = casemanagementLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, "Domain and Type are required", buf, 2u);
    }

    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_createDiagnosticCaseUsageForDomain:(id)a3 type:(id)a4 subType:(id)a5 process:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ObjectAnalytics *)self->_caseUsageSpace createEntity];
  v15 = v14;
  if (v14)
  {
    [v14 setDomain:v10];
    [v15 setType:v11];
    [v15 setSubtype:v12];
    [v15 setProcess:v13];
  }

  return v15;
}

- (double)_calculateAverageCasesPerDayFromDailyAggregatedStatistics
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v5 = v4;
  [v3 timeIntervalSince1970];
  v7 = (v5 + 86400 * (v6 / 0x15180) - v6);
  v8 = [(DiagnosticStatisticsManager *)self _retrieveDiagnosticCaseUsageForDomain:@"DAILY_AGGREGATE" type:@"DAILY_AGGREGATE" subType:@"DAILY_AGGREGATE" process:@"DAILY_AGGREGATE" onOrAfter:0 create:0];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DiagnosticStatisticsManager__calculateAverageCasesPerDayFromDailyAggregatedStatistics__block_invoke;
  v12[3] = &unk_278CF0750;
  *&v12[6] = v7;
  v12[4] = &v17;
  v12[5] = &v13;
  [v8 enumerateObjectsUsingBlock:v12];
  v9 = v14[3];
  if (v9 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v18[3] / v9;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __88__DiagnosticStatisticsManager__calculateAverageCasesPerDayFromDailyAggregatedStatistics__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastSeen];
  [v4 timeIntervalSince1970];
  v6 = v5;
  v7 = [v3 lastSeen];
  [v7 timeIntervalSince1970];
  v9 = (v6 + 86400 * (v8 / 0x15180) - v8);

  if (*(a1 + 48) != v9)
  {
    v10 = casemanagementLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9];
      v13 = 138412546;
      v14 = v11;
      v15 = 1024;
      v16 = [v3 casesSeen];
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "Daily aggregated case usage on %@ has %d cases", &v13, 0x12u);
    }

    *(*(*(a1 + 32) + 8) + 24) += [v3 casesSeen];
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)_removeDiagnosticCaseUsageMatchingDomain:(id)a3 type:(id)a4 subType:(id)a5 process:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277CBEB18];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"domain", a3];
  v15 = [v13 arrayWithObject:v14];

  if ([v10 length])
  {
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"type", v10];
    [v15 addObject:v16];
  }

  if ([v11 length])
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"subtype", v11];
    [v15 addObject:v17];
  }

  if ([v12 length])
  {
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"process", v12];
    [v15 addObject:v18];
  }

  v19 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v15];
  v20 = [(ObjectAnalytics *)self->_caseUsageSpace removeEntitiesMatching:v19];
  if (v20)
  {
    v21 = casemanagementLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v25 = v20;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "Removed %ld DiagnosticCaseUsage.", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)resetDiagnosticCaseUsage
{
  v3 = [(DiagnosticStatisticsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DiagnosticStatisticsManager_resetDiagnosticCaseUsage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __55__DiagnosticStatisticsManager_resetDiagnosticCaseUsage__block_invoke(uint64_t a1)
{
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Resetting DiagnosticCaseUsage", v4, 2u);
  }

  return [*(a1 + 32) _removeAllDiagnosticCaseUsageFor:0];
}

- (void)cleanupDiagnosticCaseUsage
{
  v3 = [(DiagnosticStatisticsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DiagnosticStatisticsManager_cleanupDiagnosticCaseUsage__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(v3, block);
}

void __57__DiagnosticStatisticsManager_cleanupDiagnosticCaseUsage__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = casemanagementLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Purging old DiagnosticCaseUsage objects.", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:-1209600.0];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"lastSeen", v4];
  v6 = [*(*(a1 + 32) + 24) removeEntitiesMatching:v5];
  v7 = casemanagementLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v10 = v6;
    v11 = 1024;
    v12 = 14;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Purged %ld DiagnosticCaseUsage object(s) with lastSeen older than %d days.", buf, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end