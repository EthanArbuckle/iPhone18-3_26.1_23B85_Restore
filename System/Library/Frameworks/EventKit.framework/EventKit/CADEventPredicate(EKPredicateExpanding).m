@interface CADEventPredicate(EKPredicateExpanding)
+ (void)_addEventOccurrenceAndProposedTimeOccurrenceFor:()EKPredicateExpanding withOccurrenceStartDate:toResults:excludeProposed:excludeDeclinedUnlessProposed:excludeSkippedReminders:;
- (void)expandWithObjectsPendingCommit:()EKPredicateExpanding deletedObjectIDs:andResultArray:;
@end

@implementation CADEventPredicate(EKPredicateExpanding)

- (void)expandWithObjectsPendingCommit:()EKPredicateExpanding deletedObjectIDs:andResultArray:
{
  v145 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v104 = a5;
  v106 = objc_opt_new();
  v96 = v8;
  if ([v8 count] || objc_msgSend(v7, "count"))
  {
    v88 = v7;
    v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v7, "count") + objc_msgSend(v8, "count")}];
    v10 = v9;
    *&v140 = 0;
    *(&v140 + 1) = &v140;
    v141 = 0x3032000000;
    v142 = __Block_byref_object_copy__14;
    v143 = __Block_byref_object_dispose__14;
    v144 = 0;
    if (v8)
    {
      [v9 unionSet:?];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__CADEventPredicate_EKPredicateExpanding__expandWithObjectsPendingCommit_deletedObjectIDs_andResultArray___block_invoke;
    aBlock[3] = &unk_1E77FE980;
    aBlock[4] = &v140;
    v11 = _Block_copy(aBlock);
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    obj = v7;
    log = [obj countByEnumeratingWithState:&v126 objects:v139 count:16];
    if (log)
    {
      v92 = *v127;
      do
      {
        for (i = 0; i != log; i = (i + 1))
        {
          if (*v127 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v126 + 1) + 8 * i);
          v102 = [v12 objectID];
          [v10 addObject:v102];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v100 = v12;
            v13 = [v100 isIntegrationEvent];
            if (([v102 isTemporary] & v13) == 1)
            {
              v11[2](v11, v100);
            }

            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v14 = [v100 detachedItems];
            v15 = [v14 countByEnumeratingWithState:&v122 objects:v138 count:16];
            if (v15)
            {
              v16 = *v123;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v123 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v18 = *(*(&v122 + 1) + 8 * j);
                  v19 = [v18 objectID];
                  if (v19)
                  {
                    [v10 addObject:v19];
                    [v106 addObject:v19];
                    if (v13 && [v19 isTemporary])
                    {
                      v11[2](v11, v18);
                    }
                  }

                  else
                  {
                    v20 = logHandle();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v135 = v100;
                      v136 = 2114;
                      v137 = v102;
                      _os_log_error_impl(&dword_1A805E000, v20, OS_LOG_TYPE_ERROR, "A detached item's objectID is nil for event %@ (%{public}@)", buf, 0x16u);
                    }
                  }
                }

                v15 = [v14 countByEnumeratingWithState:&v122 objects:v138 count:16];
              }

              while (v15);
            }
          }
        }

        log = [obj countByEnumeratingWithState:&v126 objects:v139 count:16];
      }

      while (log);
    }

    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __106__CADEventPredicate_EKPredicateExpanding__expandWithObjectsPendingCommit_deletedObjectIDs_andResultArray___block_invoke_5;
    v119[3] = &unk_1E77FE9A8;
    v21 = v10;
    v120 = v21;
    v121 = &v140;
    v22 = [v104 indexesOfObjectsPassingTest:v119];
    [v104 removeObjectsAtIndexes:v22];

    _Block_object_dispose(&v140, 8);
    v7 = v88;
  }

  v84 = [a1 excludeDeclined];
  v103 = [a1 excludeProposed];
  v101 = [a1 excludeDeclinedUnlessProposed];
  v83 = [a1 excludeTimedEvents];
  v85 = [a1 excludeAllDayEvents];
  v99 = [a1 excludeSkippedReminders];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v86 = v7;
  v89 = [v86 countByEnumeratingWithState:&v115 objects:v133 count:16];
  if (v89)
  {
    v87 = *v116;
    do
    {
      obja = 0;
      do
      {
        if (*v116 != v87)
        {
          objc_enumerationMutation(v86);
        }

        v23 = *(*(&v115 + 1) + 8 * obja);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 objectID];
          v25 = [v96 containsObject:v24];

          if ((v25 & 1) == 0)
          {
            v98 = v23;
            v26 = [v98 objectID];
            v27 = v26 == 0;

            if (v27)
            {
              loga = logHandle();
              if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v140) = 138412290;
                *(&v140 + 4) = v98;
                _os_log_error_impl(&dword_1A805E000, loga, OS_LOG_TYPE_ERROR, "An object pending commit's objectID is nil for event %@", &v140, 0xCu);
              }
            }

            else
            {
              v28 = [EKEvent alloc];
              v29 = [v98 persistentObject];
              loga = [(EKEvent *)v28 initWithPersistentObject:v29];

              if ((!(v85 & 1 | (([loga isAllDay]& 1) == 0)) || (([loga isAllDay]| v83) & 1) == 0) && (!v84 || [loga participationStatus]!= 3))
              {
                v30 = [a1 calendars];
                if (!v30)
                {
                  goto LABEL_97;
                }

                v31 = [a1 calendars];
                v32 = [v98 calendar];
                v33 = [v32 CADObjectID];
                v34 = [v31 containsObject:v33];

                if (v34)
                {
LABEL_97:
                  v35 = [a1 eventUUID];
                  if (!v35)
                  {
                    goto LABEL_98;
                  }

                  v36 = [v98 uniqueID];
                  v37 = [a1 eventUUID];
                  v38 = [v36 isEqualToString:v37];

                  if (v38)
                  {
LABEL_98:
                    v39 = [loga objectID];
                    v40 = [v106 containsObject:v39];

                    if ((v40 & 1) == 0)
                    {
                      v41 = [a1 startDate];
                      if (v41)
                      {
                        v42 = [a1 endDate];
                        v43 = v42 != 0;
                      }

                      else
                      {
                        v43 = 0;
                      }

                      v44 = MEMORY[0x1E6992F70];
                      v45 = [loga startDate];
                      v46 = [loga endDateUnadjustedForLegacyClients];
                      v82 = [v44 rangeWithStartDate:v45 endDate:v46];

                      v47 = MEMORY[0x1E6992F70];
                      v48 = [a1 startDate];
                      v49 = [a1 endDate];
                      v81 = [v47 rangeWithStartDate:v48 endDate:v49];

                      if (v43)
                      {
                        v50 = [v82 intersectsRange:v81];
                        if (([loga hasRecurrenceRules]& v43) == 1)
                        {
                          v51 = objc_opt_new();
                          v52 = [a1 startDate];
                          v53 = [a1 endDate];
                          v54 = [loga effectiveTimeZone];
                          v55 = [loga exceptionDates];
                          LOBYTE(v80) = 1;
                          v56 = [v51 copyOccurrenceDatesWithEKEvent:loga startDate:v52 endDate:v53 timeZone:v54 exceptionDates:v55 limit:0 adjustDatesForAllDayEvents:v80];

                          goto LABEL_61;
                        }

                        if (!v50)
                        {
                          v56 = 0;
                          goto LABEL_62;
                        }
                      }

                      else
                      {
                        [loga hasRecurrenceRules];
                      }

                      v57 = MEMORY[0x1E695DEC8];
                      v51 = [loga startDate];
                      v56 = [v57 arrayWithObject:v51];
LABEL_61:

LABEL_62:
                      v58 = [MEMORY[0x1E695DFA8] set];
                      if (v43)
                      {
                        v113 = 0u;
                        v114 = 0u;
                        v111 = 0u;
                        v112 = 0u;
                        v93 = [loga detachedItems];
                        v59 = [v93 countByEnumeratingWithState:&v111 objects:v132 count:16];
                        if (v59)
                        {
                          v60 = *v112;
                          do
                          {
                            for (k = 0; k != v59; ++k)
                            {
                              if (*v112 != v60)
                              {
                                objc_enumerationMutation(v93);
                              }

                              v62 = *(*(&v111 + 1) + 8 * k);
                              v63 = [v62 objectID];
                              v64 = [v96 containsObject:v63];

                              if ((v64 & 1) == 0)
                              {
                                v65 = [v62 startDate];
                                v66 = [a1 startDate];
                                v67 = [a1 endDate];
                                v68 = [v65 CalIsBetweenStartDate:v66 endDate:v67];

                                if (v68)
                                {
                                  [objc_opt_class() _addEventOccurrenceAndProposedTimeOccurrenceFor:v62 withOccurrenceStartDate:v65 toResults:v104 excludeProposed:v103 excludeDeclinedUnlessProposed:v101 excludeSkippedReminders:v99];
                                }

                                v69 = [v62 originalStartDate];
                                if (v69)
                                {
                                  if ([loga isFloating])
                                  {
                                    v70 = [loga effectiveTimeZone];
                                    v71 = [v69 dateInTimeZone:v70 fromTimeZone:0];

                                    v69 = v71;
                                  }

                                  [v58 addObject:v69];
                                }

                                else
                                {
                                  v69 = logHandle();
                                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                                  {
                                    [CADEventPredicate(EKPredicateExpanding) expandWithObjectsPendingCommit:buf deletedObjectIDs:&buf[1] andResultArray:v69];
                                  }
                                }
                              }
                            }

                            v59 = [v93 countByEnumeratingWithState:&v111 objects:v132 count:16];
                          }

                          while (v59);
                        }
                      }

                      v109 = 0u;
                      v110 = 0u;
                      v107 = 0u;
                      v108 = 0u;
                      v72 = v56;
                      v73 = [v72 countByEnumeratingWithState:&v107 objects:v131 count:16];
                      if (v73)
                      {
                        v74 = *v108;
                        do
                        {
                          for (m = 0; m != v73; ++m)
                          {
                            if (*v108 != v74)
                            {
                              objc_enumerationMutation(v72);
                            }

                            v76 = *(*(&v107 + 1) + 8 * m);
                            if (([v58 containsObject:v76] & 1) == 0)
                            {
                              [objc_opt_class() _addEventOccurrenceAndProposedTimeOccurrenceFor:v98 withOccurrenceStartDate:v76 toResults:v104 excludeProposed:v103 excludeDeclinedUnlessProposed:v101 excludeSkippedReminders:v99];
                            }
                          }

                          v73 = [v72 countByEnumeratingWithState:&v107 objects:v131 count:16];
                        }

                        while (v73);
                      }

                      v77 = [loga objectID];
                      [v106 addObject:v77];
                    }
                  }
                }
              }
            }
          }
        }

        obja = obja + 1;
      }

      while (obja != v89);
      v78 = [v86 countByEnumeratingWithState:&v115 objects:v133 count:16];
      v89 = v78;
    }

    while (v78);
  }

  v79 = *MEMORY[0x1E69E9840];
}

+ (void)_addEventOccurrenceAndProposedTimeOccurrenceFor:()EKPredicateExpanding withOccurrenceStartDate:toResults:excludeProposed:excludeDeclinedUnlessProposed:excludeSkippedReminders:
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v19 persistentObject];
  if (a8 && [v19 isReminderIntegrationEvent])
  {
    v16 = [[EKEvent alloc] initWithPersistentObject:v15 occurrenceDate:v13];
    if ([(EKEvent *)v16 reminderOccurrenceType]!= 1)
    {
      [v14 addObject:v16];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!a7 || [v19 participationStatus] != 3)
  {
    v17 = [[EKEvent alloc] initWithPersistentObject:v15 occurrenceDate:v13];
    [v14 addObject:v17];
  }

  if ((a6 & 1) == 0)
  {
    v16 = [v19 proposedStartDate];
    if (v16)
    {
      v18 = [[EKEvent alloc] initWithPersistentObject:v15 occurrenceDate:v16];
      [v14 addObject:v18];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)expandWithObjectsPendingCommit:()EKPredicateExpanding deletedObjectIDs:andResultArray:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "originalStartDate should not be nil", buf, 2u);
}

@end