@interface BKHIDEventDeliveryManager
- (BKHIDEventDeliveryManager)init;
- (BKHIDEventDeliveryManager)initWithObserverService:(id)a3;
- (BKSHIDEventDisplay)mainDisplay;
- (NSDictionary)currentBuffersPerDispatchTarget;
- (id)_lock_clientWithPID:(int)a3 createIfNeeded:;
- (id)_lock_destinationsForEvent:(void *)a3 sender:;
- (id)_lock_destinationsForKeyCommand:(void *)a3 sender:(void *)a4 transcript:;
- (id)_lock_processDescriptionForPID:(uint64_t)a1;
- (id)_lock_resolveDeferringChainForPID:(uint64_t)a1 display:(uint64_t)a2 environment:(void *)a3 dispatchingTarget:(void *)a4 eventDescriptor:(void *)a5 getTargetOrder:(void *)a6;
- (id)_lock_resolveEventDescriptor:(void *)a3 senderDescriptor:(void *)a4 transcript:;
- (id)_publishedChainFromDeliveryChain:(uint64_t)a1;
- (id)_test_deliveryRootForIdentifier:(id)a3;
- (id)connectionDescriptionForDeferringRuleIdentity:(id)a3;
- (id)deliveryChainsDescription;
- (id)deliveryChainsForDeferringTarget:(id)a3 display:(id)a4 environment:(id)a5 event:(__IOHIDEvent *)a6;
- (id)deliveryGraphDescription;
- (id)descriptionOfResolutionPathForEventDescriptor:(id)a3 senderDescriptor:(id)a4;
- (id)descriptionOfResolutionPathForKeyCommand:(id)a3 senderDescriptor:(id)a4;
- (id)destinationsForEvent:(__IOHIDEvent *)a3 sender:(id)a4;
- (id)destinationsForKeyCommand:(id)a3 sender:(id)a4;
- (id)destinationsStartingFromPID:(int)a3 deferringPredicate:(id)a4;
- (id)sequenceForFirstEvent:(__IOHIDEvent *)a3 sender:(id)a4 processor:(id)a5 dispatcher:(id)a6 additionalContext:(id)a7;
- (id)sequenceForKeyCommand:(id)a3 sender:(id)a4 processor:(id)a5 dispatcher:(id)a6 additionalContext:(id)a7;
- (uint64_t)_lock_verifyProvenance:(uint64_t)a1;
- (void)_fireTimeoutForPID:(int)a3 bufferingPredicates:(id)a4 client:(id)a5;
- (void)_lock_notifyObserversForReason:(void *)a3 chainsMayUpdate:;
- (void)_lock_setDeferringRules:(int)a3 forClientWithPID:;
- (void)_lock_setDispatchingRoots:(int)a3 forClientWithPID:;
- (void)_lock_setEventBufferingPredicates:(uint64_t)a3 forClientWithPID:;
- (void)_lock_setKeyCommandRoots:(int)a3 forClientWithPID:;
- (void)_lock_setKeyCommandsRegistrations:(int)a3 forClientWithPID:;
- (void)dealloc;
- (void)processDidTerminate:(int)a3;
- (void)reevaluateBufferingWithContext:(id)a3;
- (void)requestSelectionChanges:(id)a3 forClientWithPID:(int)a4;
- (void)setConstraintAssertions:(id)a3 forClientWithPID:(int)a4;
- (void)setDeferringRules:(id)a3 forClientWithPID:(int)a4;
- (void)setDispatchingRoots:(id)a3 forClientWithPID:(int)a4;
- (void)setKeyCommandRoots:(id)a3 forClientWithPID:(int)a4;
- (void)setKeyCommandsRegistrations:(id)a3 forClientWithPID:(int)a4;
- (void)setMainDisplay:(id)a3;
- (void)setModalityAssertions:(id)a3 forClientWithPID:(int)a4;
@end

@implementation BKHIDEventDeliveryManager

- (void)_fireTimeoutForPID:(int)a3 bufferingPredicates:(id)a4 client:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  [(BSMutableIntegerMap *)self->_bufferingPredicatesByPID removeObjectForKey:a3];
  [(BKHIDEventBufferingHIDSystem *)self->_bufferingDispatcher requestBufferReevaluationWithContext:0];
  os_unfair_lock_unlock(&self->_lock);
  v10 = BKLogEventDelivery();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CF0C08] descriptionForRootObject:v8];
    v13[0] = 67109378;
    v13[1] = a3;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, "buffering timed out for pid:%d: %{public}@", v13, 0x12u);
  }

  [(BKHIDEventDeliveryClient *)v9 setBufferTimer:?];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_test_deliveryRootForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_deliveryRoots;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (v9)
        {
          v10 = v9[1];
        }

        else
        {
          v10 = 0;
        }

        if ([v4 isEqualToString:{v10, v14}])
        {
          v6 = v9;
          goto LABEL_15;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v11 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v11;
    }

    while (v11);
  }

LABEL_15:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)descriptionOfResolutionPathForKeyCommand:(id)a3 senderDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_alloc_init(BKEventGraphDescriptionAccumulator);
  [(BKEventGraphDescriptionAccumulator *)v8 appendNode:v6];
  v9 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForKeyCommand:v6 sender:v7 transcript:v8];
  os_unfair_lock_unlock(&self->_lock);
  v10 = [(BKEventGraphDescriptionAccumulator *)v8 build];

  return v10;
}

- (id)_lock_destinationsForKeyCommand:(void *)a3 sender:(void *)a4 transcript:
{
  v177 = *MEMORY[0x277D85DE8];
  v125 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v101 = v7;
    v120 = [v7 associatedDisplay];
    if (!v120)
    {
      v120 = [MEMORY[0x277CF0698] nullDisplay];
    }

    v9 = [MEMORY[0x277CBEB58] set];
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    obj = *(a1 + 96);
    v102 = [obj countByEnumeratingWithState:&v162 objects:v174 count:16];
    v103 = v9;
    if (v102)
    {
      v100 = *v163;
      v121 = a1;
      v122 = v8;
      do
      {
        v10 = 0;
        do
        {
          if (*v163 != v100)
          {
            objc_enumerationMutation(obj);
          }

          v105 = v10;
          v11 = *(*(&v162 + 1) + 8 * v10);
          v12 = BKLogEventDeliveryMatching();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *v176 = v11;
            _os_log_debug_impl(&dword_223CBE000, v12, OS_LOG_TYPE_DEBUG, "KCMD: examine root %{public}@", buf, 0xCu);
          }

          if (v8)
          {
            if (v11)
            {
              v13 = *(v11 + 8);
            }

            else
            {
              v13 = 0;
            }

            [(BKEventGraphDescriptionAccumulator *)v8 appendSubnode:v13];
          }

          if (v11)
          {
            v14 = *(v11 + 16);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v104 = [v15 predicate];
          v16 = [v104 senderDescriptors];
          v17 = _BKHIDEventSenderMatchesSenderSet(v101, v16, *(a1 + 56));

          if (!v17)
          {
            goto LABEL_113;
          }

          v99 = v15;
          v18 = [v15 targets];
          v131 = [MEMORY[0x277CBEB18] array];
          v112 = [MEMORY[0x277CBEB18] array];
          v158 = 0u;
          v159 = 0u;
          v160 = 0u;
          v161 = 0u;
          v106 = v18;
          v108 = [v106 countByEnumeratingWithState:&v158 objects:v173 count:16];
          if (!v108)
          {
            goto LABEL_105;
          }

          v107 = *v159;
          do
          {
            v19 = 0;
            do
            {
              if (*v159 != v107)
              {
                objc_enumerationMutation(v106);
              }

              v109 = v19;
              v20 = *(*(&v158 + 1) + 8 * v19);
              v21 = BKLogEventDeliveryMatching();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *v176 = v20;
                _os_log_debug_impl(&dword_223CBE000, v21, OS_LOG_TYPE_DEBUG, "KCMD: examine key command target %{public}@", buf, 0xCu);
              }

              v111 = [v8 pushSection];
              [(BKEventGraphDescriptionAccumulator *)v8 appendSubnode:v20];
              v22 = [v20 pid];
              v23 = [v20 deferringEnvironment];
              v157 = 0;
              v24 = a1;
              v128 = v23;
              v25 = [BKHIDEventDeliveryManager _lock_resolveDeferringChainForPID:a1 display:v22 environment:v120 dispatchingTarget:v23 eventDescriptor:v20 getTargetOrder:&v157];
              v26 = v157;
              v153 = 0u;
              v154 = 0u;
              v155 = 0u;
              v156 = 0u;
              v110 = v26;
              v115 = [v26 reverseObjectEnumerator];
              v27 = [v115 countByEnumeratingWithState:&v153 objects:v172 count:16];
              if (!v27)
              {
                goto LABEL_102;
              }

              v28 = v27;
              v29 = *v154;
              v30 = 0xFFFFFFFFLL;
              v119 = v20;
              v113 = *v154;
LABEL_27:
              v31 = 0;
              v32 = v30;
              v114 = v28;
              while (1)
              {
                if (*v154 != v29)
                {
                  objc_enumerationMutation(v115);
                }

                v33 = *(*(&v153 + 1) + 8 * v31);
                v34 = _BKDeferringTargetForResolutionTranscript(v33);
                [(BKEventGraphDescriptionAccumulator *)v8 appendSubnode:v34];

                v35 = [v8 pushSection];
                v36 = BKLogEventDeliveryMatching();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *v176 = v33;
                  _os_log_debug_impl(&dword_223CBE000, v36, OS_LOG_TYPE_DEBUG, "KCMD: examine deferring target %{public}@", buf, 0xCu);
                }

                v132 = v33;
                v37 = [v33 pid];
                if (v32 != v37)
                {
                  break;
                }

                v38 = BKLogEventDeliveryMatching();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *v176 = v33;
                  _os_log_debug_impl(&dword_223CBE000, v38, OS_LOG_TYPE_DEBUG, "KCMD:  dropping prior target %{public}@", buf, 0xCu);
                }

                v30 = v32;
LABEL_96:

                ++v31;
                v32 = v30;
                if (v31 == v28)
                {
                  v87 = [v115 countByEnumeratingWithState:&v153 objects:v172 count:16];
                  v28 = v87;
                  if (!v87)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_27;
                }
              }

              v39 = v37;
              v40 = [*(v24 + 128) objectForKey:v37];
              v124 = v39;
              v116 = v40;
              if (v40)
              {
                v41 = *(v40 + 48);
              }

              else
              {
                v41 = 0;
              }

              v117 = v35;
              v118 = v31;
              v42 = v41;
              v43 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v152 = 0u;
              v44 = v42;
              v45 = [v44 countByEnumeratingWithState:&v149 objects:v171 count:16];
              if (v45)
              {
                v46 = v45;
                v47 = 0;
                v48 = *v150;
                v49 = v132;
                do
                {
                  for (i = 0; i != v46; ++i)
                  {
                    if (*v150 != v48)
                    {
                      objc_enumerationMutation(v44);
                    }

                    v51 = [*(*(&v149 + 1) + 8 * i) deferringEnvironment];
                    v52 = [v51 isEqual:v43];

                    v47 |= v52 ^ 1;
                  }

                  v46 = [v44 countByEnumeratingWithState:&v149 objects:v171 count:16];
                }

                while (v46);
              }

              else
              {
                v47 = 0;
                v49 = v132;
              }

              v147 = 0u;
              v148 = 0u;
              v145 = 0u;
              v146 = 0u;
              v123 = v44;
              v8 = v122;
              v130 = [v123 countByEnumeratingWithState:&v145 objects:v170 count:16];
              if (v130)
              {
                v129 = *v146;
                do
                {
                  v53 = 0;
                  do
                  {
                    if (*v146 != v129)
                    {
                      objc_enumerationMutation(v123);
                    }

                    v54 = *(*(&v145 + 1) + 8 * v53);
                    v55 = BKLogEventDeliveryMatching();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138543618;
                      *v176 = v54;
                      *&v176[8] = 2114;
                      *&v176[10] = v125;
                      _os_log_debug_impl(&dword_223CBE000, v55, OS_LOG_TYPE_DEBUG, "KCMD: examine registration %{public}@ looking for %{public}@", buf, 0x16u);
                    }

                    v56 = [v54 deferringEnvironment];
                    if (v47)
                    {
                      v57 = [v128 isEqual:v56];
                      v58 = BKLogEventDeliveryMatching();
                      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
                      if (!v57)
                      {
                        if (v59)
                        {
                          *buf = 138543618;
                          *v176 = v128;
                          *&v176[8] = 2114;
                          *&v176[10] = v56;
                          _os_log_debug_impl(&dword_223CBE000, v58, OS_LOG_TYPE_DEBUG, "KCMD: environment mismatch want:%{public}@ got:%{public}@", buf, 0x16u);
                        }

                        goto LABEL_89;
                      }

                      if (v59)
                      {
                        *buf = 138543362;
                        *v176 = v56;
                        _os_log_debug_impl(&dword_223CBE000, v58, OS_LOG_TYPE_DEBUG, "KCMD: environment %{public}@", buf, 0xCu);
                      }

                      [(BKEventGraphDescriptionAccumulator *)v8 appendSubnode:v56];
                    }

                    if (v8)
                    {
                      v60 = _BKDeferringTargetForResolutionTranscript(v49);
                      [(BKEventGraphDescriptionAccumulator *)v8 appendSubnode:v60, v56];
                    }

                    v133 = v53;
                    v61 = v125;
                    v62 = [v54 keyCommands];
                    v166 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v169 = 0u;
                    v63 = v62;
                    v64 = [v63 countByEnumeratingWithState:&v166 objects:buf count:16];
                    if (v64)
                    {
                      v65 = v64;
                      v126 = v54;
                      v127 = v56;
                      v66 = 0;
                      v67 = 0;
                      v68 = *v167;
                      while (2)
                      {
                        for (j = 0; j != v65; ++j)
                        {
                          if (*v167 != v68)
                          {
                            objc_enumerationMutation(v63);
                          }

                          v70 = *(*(&v166 + 1) + 8 * j);
                          v67 |= [v70 describes:v61];
                          if (v67)
                          {
                            v71 = v70;
                            v66 = v70;
                            if (v67 == 3)
                            {

                              v72 = v70;
                              v8 = v122;
                              v73 = BKLogEventDeliveryMatching();
                              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                              {
                                v74 = [v126 deferringEnvironment];
                                *buf = 67109378;
                                *v176 = v124;
                                *&v176[4] = 2114;
                                *&v176[6] = v74;
                                _os_log_impl(&dword_223CBE000, v73, OS_LOG_TYPE_DEFAULT, "KCMD: match in pid:%d %{public}@", buf, 0x12u);
                              }

                              if (v122)
                              {
                                v75 = [v126 deferringEnvironment];
                                [(BKEventGraphDescriptionAccumulator *)v122 appendSubnode:v124, v75, v72];
                              }

                              v76 = MEMORY[0x277CF0638];
                              v134[0] = MEMORY[0x277D85DD0];
                              v134[1] = 3221225472;
                              v134[2] = __79__BKHIDEventDeliveryManager__lock_destinationsForKeyCommand_sender_transcript___block_invoke_203;
                              v134[3] = &unk_2784F6630;
                              v135 = v120;
                              v136 = v121;
                              v137 = v128;
                              v138 = v132;
                              v139 = v119;
                              v77 = [v76 build:v134];
                              [v131 addObject:v77];

                              v78 = v135;
                              v56 = v127;
                              goto LABEL_83;
                            }
                          }
                        }

                        v65 = [v63 countByEnumeratingWithState:&v166 objects:buf count:16];
                        if (v65)
                        {
                          continue;
                        }

                        break;
                      }

                      v72 = v66;
                      v8 = v122;
                      v54 = v126;
                      v56 = v127;
                      if (v67 == 1)
                      {
                        if (v122)
                        {
                          v82 = [v126 deferringEnvironment];
                          [(BKEventGraphDescriptionAccumulator *)v122 appendSubnode:v124, v82, v72];
                        }

                        v83 = MEMORY[0x277CF0638];
                        v140[0] = MEMORY[0x277D85DD0];
                        v140[1] = 3221225472;
                        v140[2] = __79__BKHIDEventDeliveryManager__lock_destinationsForKeyCommand_sender_transcript___block_invoke;
                        v140[3] = &unk_2784F69A8;
                        v141 = v120;
                        v142 = v128;
                        v143 = v132;
                        v144 = v119;
                        v84 = [v83 build:v140];
                        [v112 addObject:v84];

                        v78 = v141;
                        goto LABEL_83;
                      }

                      if (!v67)
                      {
                        goto LABEL_79;
                      }
                    }

                    else
                    {

                      v72 = 0;
LABEL_79:
                      v79 = BKLogEventDeliveryMatching();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                      {
                        v80 = [v54 deferringEnvironment];
                        *buf = 67109378;
                        *v176 = v124;
                        *&v176[4] = 2114;
                        *&v176[6] = v80;
                        _os_log_impl(&dword_223CBE000, v79, OS_LOG_TYPE_DEFAULT, "KCMD: no match in pid:%d %{public}@", buf, 0x12u);
                      }

                      if (v8)
                      {
                        v78 = [v54 deferringEnvironment];
                        [(BKEventGraphDescriptionAccumulator *)v8 appendSubnode:v124, v78];
LABEL_83:
                      }
                    }

                    v81 = [v131 count];

                    v49 = v132;
                    v53 = v133;
                    if (v81)
                    {

                      goto LABEL_95;
                    }

LABEL_89:

                    ++v53;
                  }

                  while (v53 != v130);
                  v85 = [v123 countByEnumeratingWithState:&v145 objects:v170 count:16];
                  v130 = v85;
                }

                while (v85);
              }

LABEL_95:

              v35 = v117;
              [v8 popSection:v117];
              v86 = [v131 count];

              v24 = v121;
              v29 = v113;
              v28 = v114;
              v31 = v118;
              v30 = v124;
              if (!v86)
              {
                goto LABEL_96;
              }

LABEL_102:
              [v8 popSection:v111];
              v88 = [v131 count];

              a1 = v24;
              if (v88)
              {
                goto LABEL_105;
              }

              v19 = v109 + 1;
            }

            while (v109 + 1 != v108);
            v108 = [v106 countByEnumeratingWithState:&v158 objects:v173 count:16];
          }

          while (v108);
LABEL_105:

          if ([v131 count])
          {
            v89 = BKLogEventDeliveryMatching();
            if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              v90 = v131;
              goto LABEL_111;
            }

            v90 = v131;
            v91 = _BKResolutionDescriptionForLogging(v131, 0);
            *buf = 138543362;
            *v176 = v91;
            v92 = v89;
            v93 = "  ->completeDestinations:%{public}@";
LABEL_117:
            _os_log_debug_impl(&dword_223CBE000, v92, OS_LOG_TYPE_DEBUG, v93, buf, 0xCu);

            goto LABEL_111;
          }

          if ([v112 count])
          {
            v89 = BKLogEventDeliveryMatching();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              v90 = v112;
              v91 = _BKResolutionDescriptionForLogging(v112, 0);
              *buf = 138543362;
              *v176 = v91;
              v92 = v89;
              v93 = "  ->partialDestinations:%{public}@";
              goto LABEL_117;
            }

            v90 = v112;
LABEL_111:

            [v103 addObjectsFromArray:v90];
          }

          v15 = v99;
LABEL_113:

          v10 = v105 + 1;
          v9 = v103;
        }

        while (v105 + 1 != v102);
        v94 = [obj countByEnumeratingWithState:&v162 objects:v174 count:16];
        v102 = v94;
      }

      while (v94);
    }

    v7 = v101;
    if (v8)
    {
      if ([v9 count])
      {
        v95 = _BKResolutionDescriptionForLogging(v9, 1);
        [(BKEventGraphDescriptionAccumulator *)v8 appendNode:v95];

        v9 = v103;
      }

      else
      {
        [(BKEventGraphDescriptionAccumulator *)v8 appendNode:?];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v96 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_lock_resolveDeferringChainForPID:(uint64_t)a1 display:(uint64_t)a2 environment:(void *)a3 dispatchingTarget:(void *)a4 eventDescriptor:(void *)a5 getTargetOrder:(void *)a6
{
  v37[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v13 = a5;
    os_unfair_lock_assert_owner((a1 + 8));
    v14 = [(BKEventDeferringGraph *)*(a1 + 112) deferringPathForPID:a2 environment:v12 display:v11 dispatchTarget:v13 returnModalities:0];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __132__BKHIDEventDeliveryManager__lock_resolveDeferringChainForPID_display_environment_dispatchingTarget_eventDescriptor_getTargetOrder___block_invoke;
    v35[3] = &unk_2784F6658;
    v36 = 0;
    v15 = [v14 indexOfObjectPassingTest:v35];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [v14 subarrayWithRange:{0, v15}];

      v14 = v16;
    }

    v17 = [v14 lastObject];
    v18 = 0x277CF0000uLL;
    if (!v17)
    {
      goto LABEL_12;
    }

    v19 = v17;
    v33 = a6;
    v34 = v12;
    v20 = *(v17 + 16);
    v21 = objc_alloc_init(MEMORY[0x277CF0738]);
    v22 = [v20 predicate];
    v23 = [v22 environment];
    [v21 setEnvironment:v23];

    if (v20)
    {
      v24 = [v20 target];
      v25 = [v20 predicate];
      v26 = [v25 display];

      if (!v26)
      {
        v26 = [MEMORY[0x277CF0698] nullDisplay];
      }

      v27 = [v24 pid];
      [v21 setDisplay:v26];
      [v21 setPid:v27];
      v28 = [v24 token];
      [v21 setToken:v28];

      v18 = 0x277CF0000;
    }

    a6 = v33;
    v12 = v34;
    if (v21)
    {
      if (v33)
      {
        *v33 = [v14 bs_compactMap:&__block_literal_global_216];
      }
    }

    else
    {
LABEL_12:
      v21 = objc_alloc_init(*(v18 + 1848));
      if (!v11)
      {
        v11 = [MEMORY[0x277CF0698] nullDisplay];
      }

      [v21 setEnvironment:v12];
      [v21 setDisplay:v11];
      [v21 setPid:a2];
      [v21 setToken:0];
      if (a6)
      {
        v29 = objc_opt_new();
        [v29 setPid:a2];
        v37[0] = v29;
        *a6 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
      }
    }

    v30 = -[BKHIDEventDeliveryManager _lock_processDescriptionForPID:](a1, [v21 pid]);
    [v21 setProcessDescription:v30];
  }

  else
  {
    v21 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

void __79__BKHIDEventDeliveryManager__lock_destinationsForKeyCommand_sender_transcript___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDisplay:v3];
  [v5 setEnvironment:*(a1 + 40)];
  [v5 setPid:{objc_msgSend(*(a1 + 48), "pid")}];
  v4 = [*(a1 + 48) token];
  [v5 setToken:v4];

  [v5 setDispatchingTarget:*(a1 + 56)];
}

void __79__BKHIDEventDeliveryManager__lock_destinationsForKeyCommand_sender_transcript___block_invoke_203(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    v3 = *(*(a1 + 40) + 56);
  }

  v5 = a2;
  [v5 setDisplay:v3];
  [v5 setEnvironment:*(a1 + 48)];
  [v5 setPid:{objc_msgSend(*(a1 + 56), "pid")}];
  v4 = [*(a1 + 56) token];
  [v5 setToken:v4];

  [v5 setDispatchingTarget:*(a1 + 64)];
}

uint64_t __132__BKHIDEventDeliveryManager__lock_resolveDeferringChainForPID_display_environment_dispatchingTarget_eventDescriptor_getTargetOrder___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 eventDescriptorIsRestricted:*(a1 + 32)];

  return v5;
}

- (id)_lock_processDescriptionForPID:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v4 = [*(a1 + 128) objectForKey:a2];
    v5 = v4;
    if (!v4 || (v6 = *(v4 + 16)) == 0)
    {
      v6 = BSProcessDescriptionForPID();
      [(BKHIDEventDeliveryClient *)v5 setProcessDescription:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __132__BKHIDEventDeliveryManager__lock_resolveDeferringChainForPID_display_environment_dispatchingTarget_eventDescriptor_getTargetOrder___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 target];

  return v4;
}

- (id)connectionDescriptionForDeferringRuleIdentity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(BKStringTranscriptTarget);
  deferringGraph = self->_deferringGraph;
  v7 = v4;
  v8 = v5;
  if (deferringGraph)
  {
    v9 = [(BKEventDeferringGraph *)deferringGraph _dictionaryWithGraphToIdentityMapping];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__BKEventDeferringGraph_logConnectionDescriptionForDeferringRuleIdentity_toTarget___block_invoke;
    v12[3] = &unk_2784F6D68;
    v13 = v7;
    v14 = v8;
    v15 = deferringGraph;
    [v9 enumerateKeysAndObjectsUsingBlock:v12];
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = [(BKStringTranscriptTarget *)v8 build];

  return v10;
}

- (id)deliveryChainsDescription
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v3 = objc_alloc_init(BKStringTranscriptTarget);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_deliveryRoots;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * v8);
          deferringGraph = self->_deferringGraph;
          if (v9)
          {
            v11 = *(v9 + 32);
            v12 = *(v9 + 8);
          }

          else
          {
            v11 = 0;
            v12 = 0;
          }

          v13 = [(BKEventDeferringGraph *)deferringGraph describeDeliveryChains:v11 identifier:v12, v18];

          [(BKStringTranscriptTarget *)v3 writeString:@"\n"];
          [(BKStringTranscriptTarget *)v3 writeString:v13];

          ++v8;
        }

        while (v6 != v8);
        v14 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v6 = v14;
      }

      while (v14);
    }

    [(BKStringTranscriptTarget *)v3 writeString:@"\n"];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v15 = [(BKStringTranscriptTarget *)v3 build];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)deliveryGraphDescription
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v3 = objc_alloc_init(BKStringTranscriptTarget);
    [(BKEventDeferringGraph *)self->_deferringGraph logGraphToTarget:v3];
    v4 = objc_alloc_init(MEMORY[0x277CF0C08]);
    deliveryRoots = self->_deliveryRoots;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__BKHIDEventDeliveryManager__lock_deliveryGraphDescriptionTarget__block_invoke;
    v10[3] = &unk_2784F65B8;
    v11 = v4;
    v6 = v4;
    [v6 appendCollection:deliveryRoots withName:0 itemBlock:v10];
    v7 = [v6 description];
    [(BKStringTranscriptTarget *)v3 writeString:v7];

    [(BKStringTranscriptTarget *)v3 writeString:@"\n"];
    [(BKEventDeferringGraph *)self->_deferringGraph logRulesToTarget:v3];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = [(BKStringTranscriptTarget *)v3 build];

  return v8;
}

void __65__BKHIDEventDeliveryManager__lock_deliveryGraphDescriptionTarget__block_invoke(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
    a2 = a2[2];
    v4 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  v6 = a2;
  v5 = [v2 appendObject:a2 withName:v4];
}

- (id)descriptionOfResolutionPathForEventDescriptor:(id)a3 senderDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_alloc_init(BKStringTranscriptTarget);
  v9 = [(BKHIDEventDeliveryManager *)self _lock_resolveEventDescriptor:v6 senderDescriptor:v7 transcript:v8];
  os_unfair_lock_unlock(&self->_lock);
  v10 = [(BKStringTranscriptTarget *)v8 build];

  return v10;
}

- (id)_lock_resolveEventDescriptor:(void *)a3 senderDescriptor:(void *)a4 transcript:
{
  v95 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v66 = a3;
  v8 = a4;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v61 = [MEMORY[0x277CBEB58] set];
    v9 = [v7 hidEventType];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v79 = a1;
    obj = *(a1 + 80);
    v73 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
    if (v73)
    {
      v68 = 0;
      v70 = *v85;
      v71 = 1 << v9;
      v64 = v8;
      v65 = v7;
      do
      {
        v10 = 0;
        do
        {
          if (*v85 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v84 + 1) + 8 * v10);
          if (v11)
          {
            v12 = v11[6];
          }

          else
          {
            v12 = 0;
          }

          if ((v12 & v71) != 0)
          {
            v76 = v10;
            v13 = v11;
            v14 = v7;
            v15 = v66;
            v77 = v14;
            v16 = [v14 hidEventType];
            v72 = v11;
            if (v11)
            {
              v17 = v13[2];
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v88 objects:v94 count:16];
            v74 = v13;
            if (v20)
            {
              v21 = v20;
              v22 = 1 << v16;
              v23 = *v89;
              while (2)
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v89 != v23)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v25 = *(*(&v88 + 1) + 8 * i);
                  v26 = [v25 predicateEventTypeMask];
                  if (v26 == 1 || (v26 & v22) != 0)
                  {
                    v28 = [v25 predicate];
                    v29 = [v28 senderDescriptors];
                    v30 = _BKHIDEventSenderMatchesSenderSet(v15, v29, *(v79 + 56));

                    if (v30 && ([v28 specifiesDescriptor:v77] & 1) != 0)
                    {
                      v31 = v25;

                      goto LABEL_28;
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v88 objects:v94 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }

              v31 = 0;
LABEL_28:
              v8 = v64;
              v7 = v65;
              v13 = v74;
            }

            else
            {
              v31 = 0;
            }

            if (v31)
            {
              v32 = [v15 associatedDisplay];
              if (!v32)
              {
                v32 = [MEMORY[0x277CF0698] nullDisplay];
              }

              v33 = [v31 target];
              v69 = [v33 deferringEnvironment];
              v34 = [objc_alloc(MEMORY[0x277CF05F8]) initWithDisplay:v32 environment:v69];
              if (v72)
              {
                v35 = v13[4];
              }

              else
              {
                v35 = 0;
              }

              v36 = v35;
              v37 = [v36 objectForKey:v34];
              v67 = v36;
              if (v37)
              {
                v38 = v37;
              }

              else
              {
                v39 = objc_alloc(MEMORY[0x277CF05F8]);
                v40 = [MEMORY[0x277CF0698] nullDisplay];
                v41 = [v39 initWithDisplay:v40 environment:v69];

                v38 = [v36 objectForKey:v41];
                v34 = v41;
              }

              v42 = [(BKEventDeliveryChain *)v38 resolutionPathForEventDescriptor:v77];
              v43 = [v42 lastObject];

              if (v43)
              {
                [v61 addObject:v43];
                if (v8)
                {
                  if (v72)
                  {
                    v44 = v74[1];
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v45 = v44;
                  if (v38)
                  {
                    v46 = v38[2];
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v47 = v46;
                  v48 = [v47 describeDeliveryChain:v38 identifier:v45];

                  v75 = v48;
                  [v8 writeString:v48];
                  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v45, v31];
                  [v49 addObject:v50];

                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v62 = v33;
                  v78 = v45;
                  if (v38)
                  {
                    v51 = v38[5];
                  }

                  else
                  {
                    v51 = 0;
                  }

                  v52 = v51;
                  v53 = [v52 countByEnumeratingWithState:&v80 objects:v92 count:16];
                  if (v53)
                  {
                    v54 = v53;
                    v55 = *v81;
                    do
                    {
                      for (j = 0; j != v54; ++j)
                      {
                        if (*v81 != v55)
                        {
                          objc_enumerationMutation(v52);
                        }

                        [v49 addObject:*(*(&v80 + 1) + 8 * j)];
                      }

                      v54 = [v52 countByEnumeratingWithState:&v80 objects:v92 count:16];
                    }

                    while (v54);
                  }

                  v8 = v64;
                  [v64 writeString:@"\nRules: "];
                  v57 = [MEMORY[0x277CF0C08] descriptionForRootObject:v49];
                  [v64 writeString:v57];

                  [v64 writeString:@"\n\n"];
                  v7 = v65;
                  v33 = v62;
                }
              }

              v68 = 1;
            }

            v10 = v76;
          }

          ++v10;
        }

        while (v10 != v73);
        v58 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
        v73 = v58;
      }

      while (v58);
    }

    else
    {
      v68 = 0;
    }

    if (v8 && (v68 & 1) == 0)
    {
      [v8 writeString:@"no matching dispatch rules"];
    }
  }

  else
  {
    v61 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v61;
}

- (id)destinationsForKeyCommand:(id)a3 sender:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForKeyCommand:v6 sender:v7 transcript:0];
  os_unfair_lock_unlock(&self->_lock);
  v9 = BKLogEventDelivery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _BKResolutionDescriptionForLogging(v8, 1);
    v13 = 138543874;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "destinationsForKeyCommand:%{public}@ sender:%{public}@: %{public}@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)destinationsStartingFromPID:(int)a3 deferringPredicate:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  if (a3 <= 0)
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"pid > 0"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      *v66 = v38;
      *&v66[8] = 2114;
      *&v66[10] = v40;
      *&v66[18] = 2048;
      *&v66[20] = self;
      *&v66[28] = 2114;
      *&v66[30] = @"BKHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 895;
      v69 = 2114;
      v70 = v37;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCD6E8);
  }

  v8 = v6;
  if (!v6)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"predicate != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(a2);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138544642;
      *v66 = v42;
      *&v66[8] = 2114;
      *&v66[10] = v44;
      *&v66[18] = 2048;
      *&v66[20] = self;
      *&v66[28] = 2114;
      *&v66[30] = @"BKHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 896;
      v69 = 2114;
      v70 = v41;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCD7E8);
  }

  v9 = v7;
  v50 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v47 = [v8 environment];
  v45 = [v8 display];
  v46 = v9;
  v10 = [(BSMutableIntegerMap *)self->_clientsByPID objectForKey:v9];
  v11 = v10;
  if (v10 && (v12 = *(v10 + 24)) != 0)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v13 = v12;
    v53 = [v13 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v53)
    {
      obj = v13;
      v51 = *v60;
      v52 = v11;
      do
      {
        v14 = 0;
        do
        {
          if (*v60 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v59 + 1) + 8 * v14);
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v54 = v14;
          if (v15)
          {
            v15 = v15[5];
          }

          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v56;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v56 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = [*(*(&v55 + 1) + 8 * i) lastObject];
                v22 = [v21 environment];
                v23 = [v8 environment];
                v24 = [v22 isEqual:v23];

                if (v24)
                {
                  v25 = [v8 token];
                  if (!v25)
                  {
                    goto LABEL_23;
                  }

                  v26 = v25;
                  v27 = [v8 token];
                  v28 = [v21 token];
                  v29 = BSEqualObjects();

                  if (v29)
                  {
LABEL_23:
                    [v50 addObject:v21];

                    goto LABEL_24;
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v55 objects:v63 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          v14 = v54 + 1;
          v11 = v52;
        }

        while (v54 + 1 != v53);
        v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v53);
      v13 = obj;
    }

    v30 = v13;
  }

  else
  {
    v13 = [BKHIDEventDeliveryManager _lock_resolveDeferringChainForPID:v9 display:v45 environment:v47 dispatchingTarget:0 eventDescriptor:0 getTargetOrder:?];
    if (v13)
    {
      [v50 addObject:v13];
    }

    v31 = BKLogEventDeliveryMatching();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *v66 = v13;
      _os_log_debug_impl(&dword_223CBE000, v31, OS_LOG_TYPE_DEBUG, " resolved directly: %{public}@", buf, 0xCu);
    }

    v30 = 0;
  }

  v32 = [(BKHIDEventDeliveryManager *)self _lock_processDescriptionForPID:v46];
  os_unfair_lock_unlock(&self->_lock);
  v33 = BKLogEventDelivery();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = _BKResolutionDescriptionForLogging(v50, 1);
    *buf = 67109890;
    *v66 = v46;
    *&v66[4] = 2114;
    *&v66[6] = v32;
    *&v66[14] = 2114;
    *&v66[16] = v8;
    *&v66[24] = 2114;
    *&v66[26] = v34;
    _os_log_impl(&dword_223CBE000, v33, OS_LOG_TYPE_DEFAULT, "destinations startingFromPID:%d (%{public}@) predicate:%{public}@: %{public}@", buf, 0x26u);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)deliveryChainsForDeferringTarget:(id)a3 display:(id)a4 environment:(id)a5 event:(__IOHIDEvent *)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v43 = a5;
  if (!v11)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"target != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v61 = v35;
      v62 = 2114;
      v63 = v37;
      v64 = 2048;
      v65 = self;
      v66 = 2114;
      v67 = @"BKHIDEventDeliveryManager.m";
      v68 = 1024;
      v69 = 860;
      v70 = 2114;
      v71 = v34;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCDC40);
  }

  if (!a6)
  {
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"event != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v61 = v39;
      v62 = 2114;
      v63 = v41;
      v64 = 2048;
      v65 = self;
      v66 = 2114;
      v67 = @"BKHIDEventDeliveryManager.m";
      v68 = 1024;
      v69 = 861;
      v70 = 2114;
      v71 = v38;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCDD38);
  }

  v48 = [objc_alloc(MEMORY[0x277CF05F8]) initWithDisplay:v12 environment:v43];
  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_lock);
  deliveryRootsEventTypeMask = self->_deliveryRootsEventTypeMask;
  if ((deliveryRootsEventTypeMask >> IOHIDEventGetType()))
  {
    v42 = v12;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = self;
    obj = self->_deliveryRoots;
    v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v49)
    {
      v47 = *v55;
      do
      {
        v14 = 0;
        do
        {
          if (*v55 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v54 + 1) + 8 * v14);
          if (v15)
          {
            v16 = *(v15 + 32);
          }

          else
          {
            v16 = 0;
          }

          v17 = [v16 objectForKey:v48];
          v18 = v17;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          if (v17)
          {
            v19 = *(v17 + 40);
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v51;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v51 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v50 + 1) + 8 * i);
                if (v25)
                {
                  v25 = v25[2];
                }

                v26 = v25;
                v27 = [v26 target];
                v28 = [v27 isEqual:v11];

                if (v28)
                {
                  v29 = [(BKHIDEventDeliveryManager *)v45 _publishedChainFromDeliveryChain:v18];
                  [v46 addObject:v29];

                  goto LABEL_25;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v50 objects:v58 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:

          ++v14;
        }

        while (v14 != v49);
        v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v59 count:16];
        v49 = v30;
      }

      while (v30);
    }

    os_unfair_lock_unlock(&v45->_lock);
    v12 = v42;
    if (![v46 count])
    {
      v31 = BKLogEventDelivery();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v61 = v11;
        v62 = 2114;
        v63 = v48;
        _os_log_impl(&dword_223CBE000, v31, OS_LOG_TYPE_DEFAULT, "Unable to find delivery chains for target: %{public}@, chainId: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)_publishedChainFromDeliveryChain:(uint64_t)a1
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = v4[5];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if (v12)
          {
            v12 = v12[2];
          }

          v13 = v12;
          v14 = [v13 target];
          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v9);
    }

    v15 = v4[3];
    v16 = [v15 selectionPathIdentifier];

    v17 = [v7 lastObject];
    v18 = v17;
    if (v17)
    {
      v19 = *(v17 + 16);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = [v20 predicate];
    v22 = [v21 display];

    v23 = objc_alloc(MEMORY[0x277CF0660]);
    v24 = v4[1];
    v25 = v4[6];
    v5 = [v23 initWithIdentity:v24 compatibilityDisplay:v22 selectionPath:v16 path:v6 modalities:v25];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)destinationsForEvent:(__IOHIDEvent *)a3 sender:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Must have a valid senderDescriptor"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = 138544642;
      v23 = v19;
      v24 = 2114;
      v25 = v21;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = @"BKHIDEventDeliveryManager.m";
      v30 = 1024;
      v31 = 844;
      v32 = 2114;
      v33 = v18;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v22, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CCE1FCLL);
  }

  v8 = v7;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForEvent:a3 sender:v8];
  os_unfair_lock_unlock(&self->_lock);
  Type = IOHIDEventGetType();
  if (Type > 0x1F || ((1 << Type) & 0x82309000) == 0 && (Type != 1 || (IntegerValue = IOHIDEventGetIntegerValue(), v14 = IOHIDEventGetIntegerValue(), IntegerValue != 65292) && (IntegerValue != 65280 || v14 != 59)))
  {
    v15 = BKLogEventDelivery();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      IOHIDEventGetType();
      Name = IOHIDEventTypeGetName();
      v17 = _BKResolutionDescriptionForLogging(v9, 1);
      v22 = 138543618;
      v23 = Name;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_223CBE000, v15, OS_LOG_TYPE_DEFAULT, "destinations for %{public}@ event: %{public}@", &v22, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_lock_destinationsForEvent:(void *)a3 sender:
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v6 = *(a1 + 88);
    if ((v6 >> IOHIDEventGetType()))
    {
      v7 = [MEMORY[0x277CF0680] descriptorForHIDEvent:a2];
      v8 = [*(a1 + 144) objectForKey:v5];
      v9 = [v8 objectForKey:v7];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v11 = BKLogEventDeliveryMatching();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          IOHIDEventGetType();
          v16 = 138543362;
          Name = IOHIDEventTypeGetName();
          _os_log_impl(&dword_223CBE000, v11, OS_LOG_TYPE_DEFAULT, "cache miss for %{public}@ event", &v16, 0xCu);
        }

        v12 = [(BKHIDEventDeliveryManager *)a1 _lock_resolveEventDescriptor:v7 senderDescriptor:v5 transcript:0];
        if ([v12 count])
        {
          v13 = v12;
        }

        else
        {
          v13 = [MEMORY[0x277CBEB98] set];
        }

        v10 = v13;
        if (!v8)
        {
          v8 = objc_opt_new();
          [*(a1 + 144) setObject:v8 forKey:v5];
        }

        [v8 setObject:v12 forKey:v7];
      }
    }

    else
    {
      v10 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)requestSelectionChanges:(id)a3 forClientWithPID:(int)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [v6 bs_filter:&__block_literal_global_133];

  if ([v9 count])
  {
    v7 = v9;
    v8 = v7;
    if (self)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__BKHIDEventDeliveryManager__lock_requestSelectionChanges_forClientWithPID___block_invoke;
      v10[3] = &unk_2784F6608;
      v11 = v7;
      v12 = self;
      v13 = a4;
      [(BKHIDEventDeliveryManager *)self _lock_notifyObserversForReason:v10 chainsMayUpdate:?];
      [(NSMutableDictionary *)self->_destinationCacheBySender removeAllObjects];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __76__BKHIDEventDeliveryManager__lock_requestSelectionChanges_forClientWithPID___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v21;
    *&v3 = 67109378;
    v18 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 basis];
        v9 = [v8 eventProvenance];

        if (v9 && ([(BKHIDEventDeliveryManager *)*(a1 + 40) _lock_verifyProvenance:v9]& 1) == 0)
        {
          v15 = BKLogEventDelivery();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 48);
            *buf = v18;
            *&buf[4] = v16;
            LOWORD(v26) = 2114;
            *(&v26 + 2) = v7;
            _os_log_error_impl(&dword_223CBE000, v15, OS_LOG_TYPE_ERROR, "dropping request from pid:%d (%{public}@)", buf, 0x12u);
          }
        }

        else
        {
          v10 = *(*(a1 + 40) + 112);
          v11 = *(a1 + 48);
          v12 = v7;
          v13 = v12;
          if (v10)
          {
            v30[0] = v12;
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
            *buf = MEMORY[0x277D85DD0];
            *&v26 = 3221225472;
            *(&v26 + 1) = __65__BKEventDeferringGraph_requestSelectionChange_forClientWithPID___block_invoke;
            v27 = &unk_2784F6E28;
            v28 = v13;
            v29 = v11;
            [(BKEventDeferringGraph *)v10 _mapSelectionTargetablesByEnvironment:v14 block:buf];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_lock_notifyObserversForReason:(void *)a3 chainsMayUpdate:
{
  v86 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v42 = a3;
  os_unfair_lock_assert_owner((a1 + 8));
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v47 = a1;
  v7 = *(a1 + 80);
  v8 = [v7 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v68;
    do
    {
      v11 = 0;
      do
      {
        if (*v68 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v67 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(v12 + 32);
        }

        else
        {
          v13 = 0;
        }

        [v5 addEntriesFromDictionary:v13];
        ++v11;
      }

      while (v9 != v11);
      v14 = [v7 countByEnumeratingWithState:&v67 objects:v83 count:16];
      v9 = v14;
    }

    while (v14);
  }

  v42[2]();
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = *(v47 + 80);
  v48 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
  if (v48)
  {
    v44 = *v64;
    v45 = v6;
    v46 = v5;
    do
    {
      v15 = 0;
      do
      {
        if (*v64 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v63 + 1) + 8 * v15);
        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __60__BKHIDEventDeliveryManager__lock_rebuildRootDeliveryPaths___block_invoke;
        v79[3] = &unk_2784F6758;
        v79[4] = v47;
        v50 = v17;
        v52 = v17;
        v80 = v52;
        v49 = v18;
        v51 = v18;
        v81 = v51;
        v19 = MEMORY[0x223DF7D60](v79);
        v53 = v15;
        if (v16)
        {
          v20 = *(v16 + 2);
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v56 = v21;
        v22 = [v21 countByEnumeratingWithState:&v75 objects:v85 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v76;
          v54 = *v76;
          do
          {
            v25 = 0;
            v55 = v23;
            do
            {
              if (*v76 != v24)
              {
                objc_enumerationMutation(v56);
              }

              v26 = *(*(&v75 + 1) + 8 * v25);
              v27 = [v26 predicate];
              v28 = [v27 senderDescriptors];
              v29 = [v26 target];
              if (v29)
              {
                if (v28)
                {
                  v73 = 0u;
                  v74 = 0u;
                  v71 = 0u;
                  v72 = 0u;
                  v30 = v28;
                  v31 = [v30 countByEnumeratingWithState:&v71 objects:v84 count:16];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = *v72;
                    do
                    {
                      for (i = 0; i != v32; ++i)
                      {
                        if (*v72 != v33)
                        {
                          objc_enumerationMutation(v30);
                        }

                        (v19)[2](v19, *(*(&v71 + 1) + 8 * i), v29);
                      }

                      v32 = [v30 countByEnumeratingWithState:&v71 objects:v84 count:16];
                    }

                    while (v32);
                  }

                  v24 = v54;
                  v23 = v55;
                }

                else
                {
                  (v19)[2](v19, 0, v29);
                }
              }

              ++v25;
            }

            while (v25 != v23);
            v23 = [v56 countByEnumeratingWithState:&v75 objects:v85 count:16];
          }

          while (v23);
        }

        if (v16)
        {
          objc_storeStrong(v16 + 4, v50);
          objc_storeStrong(v16 + 5, v49);
        }

        v6 = v45;
        v5 = v46;
        if (v16)
        {
          v35 = *(v16 + 4);
        }

        else
        {
          v35 = 0;
        }

        [v45 addEntriesFromDictionary:v35];
        v15 = v53 + 1;
      }

      while (v53 + 1 != v48);
      v36 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
      v48 = v36;
    }

    while (v36);
  }

  if (([v5 isEqual:v6] & 1) == 0)
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __76__BKHIDEventDeliveryManager__lock_notifyObserversForReason_chainsMayUpdate___block_invoke;
    v59[3] = &unk_2784F6780;
    v37 = v5;
    v60 = v37;
    v61 = v47;
    v38 = v41;
    v62 = v38;
    [v6 enumerateKeysAndObjectsUsingBlock:v59];
    v39 = [v6 allKeys];
    [v37 removeObjectsForKeys:v39];

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __76__BKHIDEventDeliveryManager__lock_notifyObserversForReason_chainsMayUpdate___block_invoke_2;
    v57[3] = &unk_2784F67A8;
    v57[4] = v47;
    v58 = v38;
    [v37 enumerateKeysAndObjectsUsingBlock:v57];
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __76__BKHIDEventDeliveryManager__lock_notifyObserversForReason_chainsMayUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v8];
  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [(BKHIDEventDeliveryManager *)*(a1 + 40) _publishedChainFromDeliveryChain:v5];
    [*(*(a1 + 40) + 152) deliveryChainDidUpdate:v7 forIdentity:v8 reason:*(a1 + 48)];
  }
}

void __60__BKHIDEventDeliveryManager__lock_rebuildRootDeliveryPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = a2;
  obj = a3;
  v5 = a3;
  v6 = [v5 deferringEnvironment];
  v7 = [v5 pid];
  v8 = [v44 associatedDisplay];
  if (!v8)
  {
    v8 = [MEMORY[0x277CF0698] nullDisplay];
  }

  v43 = a1;
  v9 = *(*(a1 + 32) + 112);
  if (!v9)
  {
    v25 = 0;
    v31 = 0;
    v32 = a1;
    v33 = *(a1 + 40);
    goto LABEL_15;
  }

  v10 = MEMORY[0x277CF05F8];
  v42 = v5;
  v11 = v5;
  v40 = v8;
  v12 = v8;
  v41 = v6;
  v13 = v6;
  v14 = v44;
  v39 = [[v10 alloc] initWithDisplay:v12 environment:v13];
  v15 = [*(v9 + 8) objectForKey:?];
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = [(BKEventDeferringGraph *)v9 deferringPathForPID:v7 environment:v13 display:v12 dispatchTarget:v11 returnModalities:v16];
  v18 = [BKEventDeliveryChain alloc];
  v38 = v15;
  v19 = v12;
  v20 = v13;
  v21 = v11;
  v22 = v14;
  v23 = v17;
  v24 = v16;
  if (v18)
  {
    v45.receiver = v18;
    v45.super_class = BKEventDeliveryChain;
    v25 = objc_msgSendSuper2(&v45, sel_init);
    if (v25)
    {
      v26 = v19;
      if (!v19)
      {
        v26 = [MEMORY[0x277CF0698] nullDisplay];
      }

      objc_storeStrong(v25 + 2, v15);
      v27 = [objc_alloc(MEMORY[0x277CF05F8]) initWithDisplay:v26 environment:v20];
      v28 = v25[1];
      v25[1] = v27;

      objc_storeStrong(v25 + 3, obj);
      objc_storeStrong(v25 + 4, a2);
      objc_storeStrong(v25 + 5, v17);
      v29 = [v24 copy];
      v30 = v25[6];
      v25[6] = v29;

      goto LABEL_12;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v19;
LABEL_12:

  v32 = v43;
  v33 = *(v43 + 40);
  if (v25)
  {
    v31 = v25[1];
  }

  else
  {
    v31 = 0;
  }

  v6 = v41;
  v5 = v42;
  v8 = v40;
LABEL_15:
  v34 = v31;
  [v33 setObject:v25 forKey:v34];

  if (v25)
  {
    v35 = [(BKEventDeliveryChain *)v25 resolutionPathForEventDescriptor:?];
  }

  else
  {
    v35 = 0;
  }

  [*(v32 + 48) addObject:v35];
}

- (uint64_t)_lock_verifyProvenance:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (([*(a1 + 72) verifyAuthentic:v3] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = BKLogEventDelivery();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v12 = 138543362;
          v13 = v3;
          _os_log_error_impl(&dword_223CBE000, v6, OS_LOG_TYPE_ERROR, "verifyProvenance: unfamiliar class %{public}@", &v12, 0xCu);
        }

        goto LABEL_12;
      }

      if ([*(a1 + 64) validateMessage:v3] < 2)
      {
LABEL_12:
        v7 = BKLogEventDelivery();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v12) = 0;
          _os_log_error_impl(&dword_223CBE000, v7, OS_LOG_TYPE_ERROR, "verifyProvenance: corrupt provenance", &v12, 2u);
        }

LABEL_18:
        a1 = 0;
        goto LABEL_19;
      }
    }

    v4 = [v3 timestamp];
    v5 = v4;
    if (v4 <= *(a1 + 16))
    {
      v8 = BKLogEventDelivery();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 16);
        v12 = 134218240;
        v13 = v5;
        v14 = 2048;
        v15 = v11;
        _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "verifyProvenance: event too old (expected %llu > %llu)", &v12, 0x16u);
      }

      goto LABEL_18;
    }

    *(a1 + 16) = v4;
    a1 = 1;
  }

LABEL_19:

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL __70__BKHIDEventDeliveryManager_requestSelectionChanges_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 selectionTarget];
  v4 = v3 != 0;

  if (!v3)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v2;
      _os_log_error_impl(&dword_223CBE000, v5, OS_LOG_TYPE_ERROR, "requestSelectionChanges: missing selection target: %{public}@", &v15, 0xCu);
    }
  }

  v6 = [v2 selectionTarget];
  v7 = [v6 target];

  if (!v7)
  {
    v8 = BKLogEventDelivery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v2;
      _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "requestSelectionChanges: missing deferring target: %{public}@", &v15, 0xCu);
    }

    v4 = 0;
  }

  v9 = [v2 pathIdentifier];

  if (!v9)
  {
    v10 = BKLogEventDelivery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v2;
      _os_log_error_impl(&dword_223CBE000, v10, OS_LOG_TYPE_ERROR, "requestSelectionChanges: missing selection path: %{public}@", &v15, 0xCu);
    }

    v4 = 0;
  }

  v11 = [v2 basis];

  if (!v11)
  {
    v12 = BKLogEventDelivery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v2;
      _os_log_error_impl(&dword_223CBE000, v12, OS_LOG_TYPE_ERROR, "requestSelectionChanges: missing basis: %{public}@", &v15, 0xCu);
    }

    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setConstraintAssertions:(id)a3 forClientWithPID:(int)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [v6 bs_filter:&__block_literal_global_130];

  if ([v9 count])
  {
    v7 = v9;
    v8 = v7;
    if (self)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__BKHIDEventDeliveryManager__lock_setConstraintAssertions_forClientWithPID___block_invoke;
      v10[3] = &unk_2784F6608;
      v10[4] = self;
      v11 = v7;
      v12 = a4;
      [(BKHIDEventDeliveryManager *)self _lock_notifyObserversForReason:v10 chainsMayUpdate:?];
      [(NSMutableDictionary *)self->_destinationCacheBySender removeAllObjects];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __76__BKHIDEventDeliveryManager__lock_setConstraintAssertions_forClientWithPID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__BKEventDeferringGraph_setConstraintAssertions_forClientWithPID___block_invoke;
    v5[3] = &__block_descriptor_36_e54_v24__0__BKEventDeferringEnvironmentGraph_8__NSArray_16l;
    v6 = v4;
    [(BKEventDeferringGraph *)v2 _mapSelectionTargetablesByEnvironment:v3 block:v5];
  }
}

BOOL __70__BKHIDEventDeliveryManager_setConstraintAssertions_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 selectionTarget];
  v4 = v3 != 0;

  if (!v3)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v2;
      _os_log_error_impl(&dword_223CBE000, v5, OS_LOG_TYPE_ERROR, "setConstraintAssertions: missing selection target: %{public}@", &v13, 0xCu);
    }
  }

  v6 = [v2 selectionTarget];
  v7 = [v6 target];

  if (!v7)
  {
    v8 = BKLogEventDelivery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v2;
      _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "setConstraintAssertions: missing deferring target: %{public}@", &v13, 0xCu);
    }

    v4 = 0;
  }

  v9 = [v2 pathIdentifier];

  if (!v9)
  {
    v10 = BKLogEventDelivery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v2;
      _os_log_error_impl(&dword_223CBE000, v10, OS_LOG_TYPE_ERROR, "setConstraintAssertions: missing selection path: %{public}@", &v13, 0xCu);
    }

    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setModalityAssertions:(id)a3 forClientWithPID:(int)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [v6 bs_filter:&__block_literal_global_127];

  if ([v9 count])
  {
    v7 = v9;
    v8 = v7;
    if (self)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __74__BKHIDEventDeliveryManager__lock_setModalityAssertions_forClientWithPID___block_invoke;
      v10[3] = &unk_2784F6608;
      v11 = v7;
      v12 = self;
      v13 = a4;
      [(BKHIDEventDeliveryManager *)self _lock_notifyObserversForReason:v10 chainsMayUpdate:?];
      [(NSMutableDictionary *)self->_destinationCacheBySender removeAllObjects];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __74__BKHIDEventDeliveryManager__lock_setModalityAssertions_forClientWithPID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__BKHIDEventDeliveryManager__lock_setModalityAssertions_forClientWithPID___block_invoke_2;
  v6[3] = &unk_2784F65E0;
  v6[4] = *(a1 + 40);
  v7 = *(a1 + 48);
  v3 = [v2 bs_map:v6];
  v4 = *(*(a1 + 40) + 112);
  if (v4)
  {
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__BKEventDeferringGraph_setModalityAssertions_forClientWithPID___block_invoke;
    v8[3] = &__block_descriptor_36_e54_v24__0__BKEventDeferringEnvironmentGraph_8__NSArray_16l;
    v9 = v5;
    [(BKEventDeferringGraph *)v4 _mapSelectionTargetablesByEnvironment:v3 block:v8];
  }
}

id __74__BKHIDEventDeliveryManager__lock_setModalityAssertions_forClientWithPID___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 basis];
  v5 = [v4 eventProvenance];
  if (v5 && ([(BKHIDEventDeliveryManager *)*(a1 + 32) _lock_verifyProvenance:v5]& 1) == 0)
  {
    v7 = BKLogEventDelivery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12[0] = 67109378;
      v12[1] = v11;
      v13 = 2114;
      v14 = v3;
      _os_log_error_impl(&dword_223CBE000, v7, OS_LOG_TYPE_ERROR, "basis decaying pid:%d (%{public}@)", v12, 0x12u);
    }

    v6 = [v3 mutableCopy];
    v8 = [MEMORY[0x277CF0618] ruleOriginatorBasis];
    [v6 setBasis:v8];
  }

  else
  {
    v6 = v3;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

BOOL __68__BKHIDEventDeliveryManager_setModalityAssertions_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 selectionTarget];
  v4 = v3 != 0;

  if (!v3)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v2;
      _os_log_error_impl(&dword_223CBE000, v5, OS_LOG_TYPE_ERROR, "setModalityAssertions: missing selection target: %{public}@", &v15, 0xCu);
    }
  }

  v6 = [v2 selectionTarget];
  v7 = [v6 target];

  if (!v7)
  {
    v8 = BKLogEventDelivery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v2;
      _os_log_error_impl(&dword_223CBE000, v8, OS_LOG_TYPE_ERROR, "setModalityAssertions: missing deferring target: %{public}@", &v15, 0xCu);
    }

    v4 = 0;
  }

  v9 = [v2 pathIdentifier];

  if (!v9)
  {
    v10 = BKLogEventDelivery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v2;
      _os_log_error_impl(&dword_223CBE000, v10, OS_LOG_TYPE_ERROR, "setModalityAssertions: missing selection path: %{public}@", &v15, 0xCu);
    }

    v4 = 0;
  }

  v11 = [v2 basis];

  if (!v11)
  {
    v12 = BKLogEventDelivery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v2;
      _os_log_error_impl(&dword_223CBE000, v12, OS_LOG_TYPE_ERROR, "setModalityAssertions: missing basis: %{public}@", &v15, 0xCu);
    }

    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)sequenceForFirstEvent:(__IOHIDEvent *)a3 sender:(id)a4 processor:(id)a5 dispatcher:(id)a6 additionalContext:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  os_unfair_lock_lock(&self->_lock);
  v35 = v12;
  v13 = [v12 senderDescriptorForEventType:IOHIDEventGetType()];
  v14 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForEvent:a3 sender:v13];

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        v23 = [v22 dispatchingTarget];
        v24 = [(NSMutableDictionary *)self->_buffersByDispatchTarget objectForKey:v23];
        if (v24)
        {
          v25 = v16;
          v26 = v24;
        }

        else
        {
          v25 = v15;
          v26 = v22;
        }

        [v25 addObject:v26];
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v19);
  }

  v27 = [[BKHIDEventDeliverySequence alloc] initWithProcessor:v34 dispatcher:v33 senderInfo:v35 additionalContext:v32 keyCommand:0 deliveryManager:self resolutions:v15 buffers:v16];
  os_unfair_lock_unlock(&self->_lock);
  v28 = BKLogEventDelivery();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    IOHIDEventGetType();
    Name = IOHIDEventTypeGetName();
    *buf = 138543618;
    v41 = Name;
    v42 = 2114;
    v43 = v27;
    _os_log_impl(&dword_223CBE000, v28, OS_LOG_TYPE_DEFAULT, "sequence starting with %{public}@ event: %{public}@", buf, 0x16u);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)sequenceForKeyCommand:(id)a3 sender:(id)a4 processor:(id)a5 dispatcher:(id)a6 additionalContext:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  os_unfair_lock_lock(&self->_lock);
  v17 = [v13 senderDescriptorForEventType:3];
  v18 = [(BKHIDEventDeliveryManager *)self _lock_destinationsForKeyCommand:v12 sender:v17 transcript:0];

  v40 = v18;
  if ([v18 count])
  {
    v38 = v12;
    v39 = v16;
    v35 = v15;
    v36 = v14;
    v37 = v13;
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v41 + 1) + 8 * i);
          v27 = [v26 dispatchingTarget];
          v28 = [(NSMutableDictionary *)self->_buffersByDispatchTarget objectForKey:v27];
          if (v28)
          {
            v29 = v20;
            v30 = v28;
          }

          else
          {
            v29 = v19;
            v30 = v26;
          }

          [v29 addObject:v30];
        }

        v23 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v23);
    }

    v15 = v35;
    v14 = v36;
    v13 = v37;
    v12 = v38;
    v31 = [[BKHIDEventDeliverySequence alloc] initWithProcessor:v36 dispatcher:v35 senderInfo:v37 additionalContext:v39 keyCommand:v38 deliveryManager:self resolutions:v19 buffers:v20];
    os_unfair_lock_unlock(&self->_lock);
    v32 = BKLogEventDelivery();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v46 = v38;
      v47 = 2114;
      v48 = v31;
      _os_log_impl(&dword_223CBE000, v32, OS_LOG_TYPE_DEFAULT, "sequence starting with key command %{public}@: %{public}@", buf, 0x16u);
    }

    v16 = v39;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v31 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)reevaluateBufferingWithContext:(id)a3
{
  v200 = *MEMORY[0x277D85DE8];
  v125 = a3;
  os_unfair_lock_lock(&self->_lock);
  v148 = self;
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v128 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v131 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v133 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v137 = objc_alloc_init(MEMORY[0x277CBEB58]);
    *v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    v189 = 0u;
    obj = self->_deliveryRoots;
    v129 = [(NSMutableArray *)obj countByEnumeratingWithState:v186 objects:v190 count:16];
    if (!v129)
    {
      goto LABEL_67;
    }

    v127 = *v187;
    do
    {
      v4 = 0;
      do
      {
        v130 = v4;
        if (*v187 != v127)
        {
          objc_enumerationMutation(obj);
          v4 = v130;
        }

        v5 = *(*&v186[8] + 8 * v4);
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        if (v5)
        {
          v6 = *(v5 + 32);
        }

        else
        {
          v6 = 0;
        }

        v132 = [v6 allValues];
        v139 = [v132 countByEnumeratingWithState:&v170 objects:&v182 count:16];
        if (v139)
        {
          v7 = 0;
          v135 = *v171;
          while (1)
          {
            v8 = 0;
            do
            {
              if (*v171 != v135)
              {
                objc_enumerationMutation(v132);
              }

              v9 = *(*(&v170 + 1) + 8 * v8);
              v10 = v137;
              v11 = v9;
              v151 = v10;
              v142 = v8;
              v141 = v9;
              if (v9)
              {
                v11 = v9[5];
              }

              v12 = v11;
              v13 = [v12 firstObject];
              v144 = v7;
              if (v13)
              {
                v14 = v13[2];
              }

              else
              {
                v14 = 0;
              }

              v15 = [MEMORY[0x277CCABB0] numberWithInt:v14];
              [v151 addObject:v15];

              v16 = [(BSMutableIntegerMap *)self->_bufferingPredicatesByPID objectForKey:v14];
              v174 = 0u;
              v175 = 0u;
              v176 = 0u;
              v177 = 0u;
              v146 = v12;
              v153 = [v146 countByEnumeratingWithState:&v174 objects:v198 count:16];
              v17 = 0;
              if (!v153)
              {
                v160 = 0;
                goto LABEL_49;
              }

              v160 = 0;
              log = *v175;
              do
              {
                v18 = 0;
                do
                {
                  if (*v175 != log)
                  {
                    objc_enumerationMutation(v146);
                  }

                  v19 = *(*(&v174 + 1) + 8 * v18);
                  v157 = v18;
                  if (v19)
                  {
                    v19 = v19[2];
                  }

                  v155 = v19;
                  v20 = [v155 predicate];
                  *v191 = 0u;
                  v192 = 0u;
                  v193 = 0u;
                  v194 = 0u;
                  v167 = v16;
                  v21 = [v167 countByEnumeratingWithState:v191 objects:v195 count:16];
                  v164 = v17;
                  if (v21)
                  {
                    v22 = v21;
                    v162 = v14;
                    v23 = *v192;
                    do
                    {
                      for (i = 0; i != v22; ++i)
                      {
                        if (*v192 != v23)
                        {
                          objc_enumerationMutation(v167);
                        }

                        v25 = *(*&v191[8] + 8 * i);
                        v26 = [v20 environment];
                        v27 = [v20 display];
                        v28 = [v20 token];
                        v29 = v25;
                        v30 = v27;
                        v31 = v28;
                        v32 = v26;
                        v33 = [v29 environment];
                        v34 = [v32 isEqual:v33];

                        if (v34)
                        {
                          v35 = [v29 display];
                          if (_BKHIDEventDeferringDisplayMatch(v35, v30))
                          {
                            v36 = [v29 token];
                            if (!v36 || BSEqualObjects())
                            {

                              v37 = BKLogEventDeliveryBuffering();
                              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 138543618;
                                v179 = v20;
                                v180 = 2114;
                                *v181 = v29;
                                _os_log_debug_impl(&dword_223CBE000, v37, OS_LOG_TYPE_DEBUG, "  BUFFER: rule:%{public}@ is match with bufferingPredicate:%{public}@", buf, 0x16u);
                              }

                              v38 = v164;
                              if (!v164)
                              {
                                v38 = [MEMORY[0x277CBEB58] set];
                                v39 = v38;
                              }

                              v40 = [MEMORY[0x277CCABB0] numberWithInt:v162];
                              v41 = v38;
                              v42 = v40;
                              v164 = v41;
                              [v41 addObject:v40];
                              v160 = 1;
                              goto LABEL_43;
                            }
                          }
                        }

                        v42 = BKLogEventDeliveryBuffering();
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138543618;
                          v179 = v20;
                          v180 = 2114;
                          *v181 = v29;
                          _os_log_debug_impl(&dword_223CBE000, v42, OS_LOG_TYPE_DEBUG, "  BUFFER: rule:%{public}@ is NO match with bufferingPredicate:%{public}@", buf, 0x16u);
                        }

LABEL_43:
                      }

                      v22 = [v167 countByEnumeratingWithState:v191 objects:v195 count:16];
                    }

                    while (v22);
                  }

                  v43 = [v155 target];
                  v14 = [v43 pid];

                  v44 = [MEMORY[0x277CCABB0] numberWithInt:v14];
                  [v151 addObject:v44];

                  self = v148;
                  v16 = [(BSMutableIntegerMap *)v148->_bufferingPredicatesByPID objectForKey:v14];

                  v18 = v157 + 1;
                  v17 = v164;
                }

                while (v157 + 1 != v153);
                v153 = [v146 countByEnumeratingWithState:&v174 objects:v198 count:16];
              }

              while (v153);
LABEL_49:

              v7 = v17;
              v45 = v141;
              if (v141)
              {
                v45 = v141[3];
              }

              v46 = v45;
              if ([v7 count])
              {
                [v133 setObject:v7 forKey:v46];
              }

              if (v160)
              {
                [v131 addObject:v46];
                v47 = BKLogEventDeliveryBuffering();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  [MEMORY[0x277CF0C08] descriptionForRootObject:v7];
                  v49 = v48 = v7;
                  *v198 = 138543618;
                  *v199 = v49;
                  *&v199[8] = 2114;
                  *&v199[10] = v46;
                  _os_log_debug_impl(&dword_223CBE000, v47, OS_LOG_TYPE_DEBUG, "  BUFFER: --> we should buffer this target at the request of %{public}@: %{public}@", v198, 0x16u);

                  v7 = v48;
                }
              }

              else
              {
                v47 = BKLogEventDeliveryBuffering();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *v198 = 138543362;
                  *v199 = v46;
                  _os_log_debug_impl(&dword_223CBE000, v47, OS_LOG_TYPE_DEBUG, "  BUFFER: --> we should NOT buffer this target: %{public}@", v198, 0xCu);
                }
              }

              v8 = v142 + 1;
            }

            while (v142 + 1 != v139);
            v50 = [v132 countByEnumeratingWithState:&v170 objects:&v182 count:16];
            v139 = v50;
            if (!v50)
            {

              break;
            }
          }
        }

        v4 = v130 + 1;
      }

      while (v130 + 1 != v129);
      v51 = [(NSMutableArray *)obj countByEnumeratingWithState:v186 objects:v190 count:16];
      v129 = v51;
    }

    while (v51);
LABEL_67:

    v52 = [v131 mutableCopy];
    buffersByDispatchTarget = self->_buffersByDispatchTarget;
    if (buffersByDispatchTarget)
    {
      v54 = [(NSMutableDictionary *)buffersByDispatchTarget allKeys];
      [v52 addObjectsFromArray:v54];
    }

    v168 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v165 = v52;
    v55 = [v165 countByEnumeratingWithState:&v174 objects:v198 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v175;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v175 != v57)
          {
            objc_enumerationMutation(v165);
          }

          v59 = *(*(&v174 + 1) + 8 * j);
          v60 = BKLogEventDeliveryBuffering();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v78 = [v131 containsObject:v59];
            *v195 = 138543618;
            *&v195[4] = v59;
            *&v195[12] = 1024;
            *&v195[14] = v78;
            _os_log_debug_impl(&dword_223CBE000, v60, OS_LOG_TYPE_DEBUG, "  BUFFER: --> eval target: %{public}@ enable:%{BOOL}u", v195, 0x12u);
          }

          v61 = [v131 containsObject:v59];
          v62 = [v133 objectForKey:v59];
          v63 = v59;
          v64 = v62;
          v65 = v128;
          v66 = v168;
          v67 = [(NSMutableDictionary *)v148->_buffersByDispatchTarget objectForKey:v63];
          if (v61)
          {
            v68 = v67 == 0;
          }

          else
          {
            v68 = 0;
          }

          if (v68)
          {
            if (!v148->_buffersByDispatchTarget)
            {
              v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v72 = v148->_buffersByDispatchTarget;
              v148->_buffersByDispatchTarget = v71;
            }

            v69 = [[BKHIDEventBuffer alloc] initWithDispatchTarget:v63];
            [(NSMutableDictionary *)v148->_buffersByDispatchTarget setObject:v69 forKey:v63];
            [(BKHIDEventBuffer *)v69 setBufferingPIDs:v64];
            v73 = BKLogEventDeliveryBuffering();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              *v191 = 138543362;
              *&v191[4] = v69;
              _os_log_impl(&dword_223CBE000, v73, OS_LOG_TYPE_DEFAULT, "adding buffer %{public}@", v191, 0xCu);
            }

            [v66 setObject:v69 forKey:v63];
          }

          else
          {
            v69 = v67;
            if (v67)
            {
              v70 = v61;
            }

            else
            {
              v70 = 1;
            }

            if (v70)
            {
              if (!v67)
              {
                goto LABEL_99;
              }

              [(BKHIDEventBuffer *)v67 setBufferingPIDs:v64];
            }

            else
            {
              [v65 addObject:v67];
              [(NSMutableDictionary *)v148->_buffersByDispatchTarget removeObjectForKey:v63];
              v74 = [(BKHIDEventBuffer *)v69 bufferingPIDs];
              *v195 = MEMORY[0x277D85DD0];
              *&v195[8] = 3221225472;
              *&v195[16] = __109__BKHIDEventDeliveryManager__lock_enableBuffering_dispatchTarget_ownerPIDs_buffersToDrain_targetToNewBuffer___block_invoke;
              v196 = &unk_2784F6708;
              v197 = v148;
              v75 = [v74 bs_containsObjectPassingTest:v195];

              if ((v75 & 1) == 0)
              {
                [(BKHIDEventBuffer *)v69 setAllBufferingClientsTerminated:1];
                v76 = BKLogEventDeliveryBuffering();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                {
                  *v191 = 0;
                  _os_log_debug_impl(&dword_223CBE000, v76, OS_LOG_TYPE_DEBUG, "  BUFFER: all clients terminated", v191, 2u);
                }
              }

              v77 = BKLogEventDeliveryBuffering();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *v191 = 138543362;
                *&v191[4] = v69;
                _os_log_impl(&dword_223CBE000, v77, OS_LOG_TYPE_DEFAULT, "removing buffer %{public}@", v191, 0xCu);
              }
            }
          }

LABEL_99:
        }

        v56 = [v165 countByEnumeratingWithState:&v174 objects:v198 count:16];
      }

      while (v56);
    }

    v193 = 0u;
    v194 = 0u;
    *v191 = 0u;
    v192 = 0u;
    v79 = v128;
    v80 = [v79 countByEnumeratingWithState:v191 objects:v195 count:16];
    self = v148;
    if (v80)
    {
      v81 = v80;
      v82 = *v192;
      do
      {
        for (k = 0; k != v81; ++k)
        {
          if (*v192 != v82)
          {
            objc_enumerationMutation(v79);
          }

          v84 = *(*&v191[8] + 8 * k);
          v85 = [v84 bufferingPIDs];
          v86 = [v85 intersectsSet:v137];

          v87 = BKLogEventDeliveryBuffering();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            v88 = MEMORY[0x277CF0C08];
            v89 = [v84 bufferingPIDs];
            v90 = [v88 descriptionForRootObject:v89];
            v91 = [MEMORY[0x277CF0C08] descriptionForRootObject:v137];
            *buf = 138543874;
            v179 = v90;
            v180 = 1024;
            *v181 = v86;
            *&v181[4] = 2114;
            *&v181[6] = v91;
            _os_log_debug_impl(&dword_223CBE000, v87, OS_LOG_TYPE_DEBUG, "  BUFFER: --> %{public}@ intersects:(%{BOOL}u) %{public}@", buf, 0x1Cu);

            self = v148;
          }

          if ((v86 & 1) == 0)
          {
            [v84 setAllBufferingClientsTerminated:1];
          }
        }

        v81 = [v79 countByEnumeratingWithState:v191 objects:v195 count:16];
      }

      while (v81);
    }

    if ([v168 count])
    {
      v92 = v168;
      v93 = v168;
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    v93 = 0;
    v79 = 0;
  }

  v94 = v93;
  os_unfair_lock_unlock(&self->_lock);
  v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"reevaluate (%@)", v125];

  v136 = v79;
  v96 = v94;
  v134 = v95;
  if (self)
  {
    os_unfair_lock_assert_not_owner(&self->_lock);
    v161 = self->_bufferingDispatcher;
    v97 = 0x277CBE000uLL;
    if ([v136 count])
    {
      v98 = BKLogEventDeliveryBuffering();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = [v136 count];
        *v198 = 67109378;
        *v199 = v99;
        *&v199[4] = 2114;
        *&v199[6] = v134;
        _os_log_impl(&dword_223CBE000, v98, OS_LOG_TYPE_DEFAULT, "draining %d buffers (%{public}@)", v198, 0x12u);
      }
    }

    if ([v96 count])
    {
      [(BKHIDEventBufferingHIDSystem *)v161 bufferingDidAddNewBuffers:v96];
    }

    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v145 = v136;
    v100 = [v145 countByEnumeratingWithState:&v182 objects:v198 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v183;
      v138 = *v183;
      v140 = v96;
      do
      {
        v103 = 0;
        v143 = v101;
        do
        {
          if (*v183 != v102)
          {
            objc_enumerationMutation(v145);
          }

          v104 = *(*(&v182 + 1) + 8 * v103);
          [(BKHIDEventBufferingHIDSystem *)v161 bufferWillBeginDraining:v104];
          v163 = v104;
          LOBYTE(v104) = [v104 hasEvents];
          loga = BKLogEventDeliveryBuffering();
          v105 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
          if (v104)
          {
            v147 = v103;
            if (v105)
            {
              *v186 = 134217984;
              *&v186[4] = v163;
              _os_log_impl(&dword_223CBE000, loga, OS_LOG_TYPE_DEFAULT, "BUFFER: --> will drain %p ", v186, 0xCu);
            }

            v106 = [v163 drainAllEvents];
            v107 = [v163 dispatchTarget];
            v156 = objc_alloc_init(*(v97 + 2872));
            v174 = 0u;
            v175 = 0u;
            v176 = 0u;
            v177 = 0u;
            loga = v106;
            v154 = [loga countByEnumeratingWithState:&v174 objects:v195 count:16];
            if (v154)
            {
              v152 = *v175;
              do
              {
                v108 = 0;
                do
                {
                  if (*v175 != v152)
                  {
                    objc_enumerationMutation(loga);
                  }

                  v159 = v108;
                  v109 = *(*(&v174 + 1) + 8 * v108);
                  v110 = [v109 event];
                  v166 = [v109 additionalContext];
                  v169 = [v109 sender];
                  v111 = [v109 sequence];
                  v112 = [v111 keyCommand];
                  v113 = [v156 objectForKey:v111];
                  if (!v113)
                  {
                    v114 = [v169 senderDescriptor];
                    if (v112)
                    {
                      [(BKHIDEventDeliveryManager *)v148 destinationsForKeyCommand:v112 sender:v114];
                    }

                    else
                    {
                      [(BKHIDEventDeliveryManager *)v148 destinationsForEvent:v110 sender:v114];
                    }
                    v113 = ;

                    [v156 setObject:v113 forKey:v111];
                  }

                  v158 = v112;
                  v193 = 0u;
                  v194 = 0u;
                  *v191 = 0u;
                  v192 = 0u;
                  v115 = v113;
                  v116 = [v115 countByEnumeratingWithState:v191 objects:v190 count:16];
                  if (v116)
                  {
                    v117 = v116;
                    v118 = *v192;
                    do
                    {
                      for (m = 0; m != v117; ++m)
                      {
                        if (*v192 != v118)
                        {
                          objc_enumerationMutation(v115);
                        }

                        v120 = *(*&v191[8] + 8 * m);
                        v121 = [v120 dispatchingTarget];
                        v122 = [v121 isEqual:v107];

                        if (v122)
                        {
                          [(BKHIDEventBufferingHIDSystem *)v161 buffer:v163 drainEvent:v110 withContext:v166 sender:v169 sequence:v111 toResolution:v120];
                        }
                      }

                      v117 = [v115 countByEnumeratingWithState:v191 objects:v190 count:16];
                    }

                    while (v117);
                  }

                  v108 = v159 + 1;
                }

                while (v159 + 1 != v154);
                v154 = [loga countByEnumeratingWithState:&v174 objects:v195 count:16];
              }

              while (v154);
            }

            v123 = BKLogEventDeliveryBuffering();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
            {
              *v186 = 134217984;
              *&v186[4] = v163;
              _os_log_debug_impl(&dword_223CBE000, v123, OS_LOG_TYPE_DEBUG, "BUFFER: --> did drain %p", v186, 0xCu);
            }

            v97 = 0x277CBE000;
            v102 = v138;
            v96 = v140;
            v101 = v143;
            v103 = v147;
          }

          else if (v105)
          {
            *v186 = 134217984;
            *&v186[4] = v163;
            _os_log_impl(&dword_223CBE000, loga, OS_LOG_TYPE_DEFAULT, "BUFFER: --> %p empty", v186, 0xCu);
          }

          [(BKHIDEventBufferingHIDSystem *)v161 bufferDidFinishDraining:v163];
          [v163 invalidate];
          v103 = v103 + 1;
        }

        while (v103 != v101);
        v101 = [v145 countByEnumeratingWithState:&v182 objects:v198 count:16];
      }

      while (v101);
    }
  }

  v124 = *MEMORY[0x277D85DE8];
}

uint64_t __109__BKHIDEventDeliveryManager__lock_enableBuffering_dispatchTarget_ownerPIDs_buffersToDrain_targetToNewBuffer___block_invoke(uint64_t a1, void *a2)
{
  v2 = [*(*(a1 + 32) + 128) objectForKey:{objc_msgSend(a2, "intValue")}];
  if (v2)
  {
    v3 = v2[8] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)_lock_setEventBufferingPredicates:(uint64_t)a3 forClientWithPID:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v6 = BKLogEventDelivery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CF0C08] descriptionForRootObject:v5];
      *buf = 67109378;
      v26 = a3;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_223CBE000, v6, OS_LOG_TYPE_DEFAULT, "new buffering predicates for pid:%d: %{public}@", buf, 0x12u);
    }

    v8 = [*(a1 + 120) objectForKey:a3];
    v9 = BSEqualSets();
    v10 = BKLogEventDelivery();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 67109378;
        v26 = a3;
        v27 = 2114;
        v28 = v5;
        _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, "pid:%d no change to buffering predicates: %{public}@", buf, 0x12u);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 67109378;
        v26 = a3;
        v27 = 2114;
        v28 = v5;
        _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, "pid:%d new buffering predicates: %{public}@", buf, 0x12u);
      }

      v12 = [v5 count];
      v13 = [(BKHIDEventDeliveryManager *)a1 _lock_clientWithPID:a3 createIfNeeded:v12 != 0];
      v10 = v13;
      if (v13)
      {
        v14 = *(v13 + 64);
        [v14 invalidate];
        isa = v10[8].isa;
        v10[8].isa = 0;
      }

      v16 = *(a1 + 120);
      if (v12)
      {
        [v16 setObject:v5 forKey:a3];
        v17 = objc_alloc(MEMORY[0x277CF0BD8]);
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"BKHIDEventDeliveryManager buffer predicate pid:%d", a3];
        v19 = [v17 initWithIdentifier:v18];

        [(BKHIDEventDeliveryClient *)v10 setBufferTimer:v19];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __80__BKHIDEventDeliveryManager__lock_setEventBufferingPredicates_forClientWithPID___block_invoke;
        v21[3] = &unk_2784F6730;
        v21[4] = a1;
        v24 = a3;
        v22 = v5;
        v23 = v10;
        [v19 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v21 queue:8.0 handler:1.0];
      }

      else
      {
        [v16 removeObjectForKey:a3];
      }

      [*(a1 + 160) requestBufferReevaluationWithContext:0];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_lock_clientWithPID:(int)a3 createIfNeeded:
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v6 = a2;
    p_isa = [*(a1 + 128) objectForKey:a2];
    if (p_isa)
    {
      v8 = 1;
    }

    else
    {
      v8 = a3 == 0;
    }

    if (!v8)
    {
      v9 = objc_alloc_init(BKHIDEventDeliveryClient);
      p_isa = &v9->super.isa;
      if (v9)
      {
        v9->_pid = a2;
        v10 = BSProcessDescriptionForPID();
        objc_storeStrong(p_isa + 2, v10);
      }

      else
      {
        v10 = BSProcessDescriptionForPID();
      }

      [*(a1 + 128) setObject:p_isa forKey:v6];
    }
  }

  else
  {
    p_isa = 0;
  }

  return p_isa;
}

void __80__BKHIDEventDeliveryManager__lock_setEventBufferingPredicates_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  [v3 _fireTimeoutForPID:v2 bufferingPredicates:v4 client:v5];
  [v6 invalidate];
}

- (void)setKeyCommandsRegistrations:(id)a3 forClientWithPID:(int)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v24 = [v5 mutableCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v27 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [v9 keyCommands];
        v11 = v9;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v29;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v10);
              }

              v17 = *(*(&v28 + 1) + 8 * j);
              if (([v17 isRoutableKeyCommand] & 1) == 0)
              {
                if (!v14)
                {
                  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
                }

                [v14 addObject:v17];
              }
            }

            v13 = [v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v13);
          if (v14)
          {
            [v24 removeObject:v11];
            v18 = [v10 mutableCopy];
            [v18 minusSet:v14];
            v19 = [v11 mutableCopy];
            [v19 setKeyCommands:v18];
            [v24 addObject:v19];

            v11 = v19;
          }
        }

        else
        {
          v14 = 0;
        }

        if ([v14 count])
        {
          v20 = BKLogEventDelivery();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v22 = [MEMORY[0x277CF06A8] _descriptionForKeyCommandCollection:v14];
            *buf = 67109378;
            v37 = a4;
            v38 = 2114;
            v39 = v22;
            _os_log_error_impl(&dword_223CBE000, v20, OS_LOG_TYPE_ERROR, "ignoring non-routable key commands for pid:%d %{public}@", buf, 0x12u);
          }
        }

        v21 = BKLogEventDelivery();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          v37 = a4;
          v38 = 2114;
          v39 = v11;
          _os_log_impl(&dword_223CBE000, v21, OS_LOG_TYPE_DEFAULT, "new key command registrations for pid:%d %{public}@", buf, 0x12u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v7);
  }

  [(BKHIDEventDeliveryManager *)self _lock_setKeyCommandsRegistrations:v24 forClientWithPID:a4];
  os_unfair_lock_unlock(&self->_lock);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_lock_setKeyCommandsRegistrations:(int)a3 forClientWithPID:
{
  if (a1)
  {
    v6 = a2;
    os_unfair_lock_assert_owner(a1 + 2);
    v7 = [(BKHIDEventDeliveryManager *)a1 _lock_clientWithPID:a3 createIfNeeded:1];
    if (v7)
    {
      objc_storeStrong(v7 + 6, a2);
    }
  }
}

- (void)setDeferringRules:(id)a3 forClientWithPID:(int)a4
{
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BKHIDEventDeliveryManager *)self _lock_setDeferringRules:v6 forClientWithPID:a4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setDeferringRules:(int)a3 forClientWithPID:
{
  v5 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__BKHIDEventDeliveryManager__lock_setDeferringRules_forClientWithPID___block_invoke;
    v6[3] = &unk_2784F6608;
    v9 = a3;
    v7 = v5;
    v8 = a1;
    [(BKHIDEventDeliveryManager *)a1 _lock_notifyObserversForReason:v6 chainsMayUpdate:?];
    if ([*(a1 + 120) count])
    {
      [*(a1 + 160) requestBufferReevaluationWithContext:0];
    }
  }
}

void __70__BKHIDEventDeliveryManager__lock_setDeferringRules_forClientWithPID___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sortedArrayUsingSelector:sel_weightedDeferringRuleCompare_];
  v3 = [v2 bs_reverse];
  v4 = [MEMORY[0x277CF0C10] build:&__block_literal_global_247];
  v5 = BKLogEventDelivery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x277CF0C08] descriptionForRootObject:v3 withStyle:v4];
    *buf = 67109378;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "new deferring rules for pid:%d: %{public}@", buf, 0x12u);
  }

  v8 = [(BKHIDEventDeliveryManager *)*(a1 + 40) _lock_clientWithPID:1 createIfNeeded:?];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 40), v3);
  }

  [*(*(a1 + 40) + 144) removeAllObjects];
  v10 = *(*(a1 + 40) + 112);
  v11 = *(a1 + 48);
  v12 = v3;
  if (v10)
  {
    v13 = *(v10 + 16);
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    [v13 setObject:v12 forKey:v14];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = *(v10 + 24);
    v16 = [v15 countByEnumeratingWithState:&v21 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(BKEventDeferringGraph *)v10 _setRules:v12 forPID:v11 toDisplay:*(*(&v21 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:buf count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __70__BKHIDEventDeliveryManager__lock_setDeferringRules_forClientWithPID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValueTruncation:2];
  [v2 setMaximumValueLengthBeforeTruncation:60];
}

- (void)setKeyCommandRoots:(id)a3 forClientWithPID:(int)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke;
  v11[3] = &unk_2784F6530;
  v8 = v7;
  v12 = v8;
  [v8 appendCollection:v6 withName:0 itemBlock:v11];
  v9 = BKLogEventDelivery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = a4;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "new key command dispatching rules for pid:%d: %{public}@", buf, 0x12u);
  }

  [(BKHIDEventDeliveryManager *)self _lock_setKeyCommandRoots:v6 forClientWithPID:a4];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

void __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 reason];
  v6 = [v5 _stringRepresentation];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke_2;
  v8[3] = &unk_2784F6508;
  v9 = v3;
  v10 = *(a1 + 32);
  v7 = v3;
  [v4 appendCustomFormatWithName:v6 block:v8];
}

- (void)_lock_setKeyCommandRoots:(int)a3 forClientWithPID:
{
  if (a1)
  {
    v5 = a2;
    os_unfair_lock_assert_owner((a1 + 8));
    obj = [v5 bs_map:&__block_literal_global_250];

    v6 = [(BKHIDEventDeliveryManager *)a1 _lock_clientWithPID:a3 createIfNeeded:1];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 32);
      if (v8)
      {
        [*(a1 + 96) removeObjectsInArray:v8];
      }

      objc_storeStrong(v7 + 4, obj);
    }

    else
    {
      v8 = 0;
    }

    if ([obj count])
    {
      [*(a1 + 96) addObjectsFromArray:obj];
    }
  }
}

_BKHIDKeyCommandDeliveryRoot *__71__BKHIDEventDeliveryManager__lock_setKeyCommandRoots_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_BKHIDKeyCommandDeliveryRoot);
  v4 = MEMORY[0x277CCACA8];
  v5 = [v2 seed];
  v6 = [v2 reason];
  v8 = [v4 stringWithFormat:@"%u-%@", v5, v6];
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v7, v8, 8);
  }

  v9 = [v2 rule];
  if (v3)
  {
    objc_storeStrong(&v3->_dispatchingRule, v9);
  }

  return v3;
}

void __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) rule];
  v3 = [v2 predicate];

  v4 = [v3 senderDescriptors];
  _BKDescribeSenderSet(*(a1 + 40), v4);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) rule];
  v7 = [v6 targets];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BKHIDEventDeliveryManager_setKeyCommandRoots_forClientWithPID___block_invoke_3;
  v8[3] = &unk_2784F64E0;
  v9 = *(a1 + 40);
  [v5 appendCollection:v7 withName:@"targets" itemBlock:v8];
}

- (void)setDispatchingRoots:(id)a3 forClientWithPID:(int)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__BKHIDEventDeliveryManager_setDispatchingRoots_forClientWithPID___block_invoke;
  v11[3] = &unk_2784F64B8;
  v8 = v7;
  v12 = v8;
  [v8 appendCollection:v6 withName:0 itemBlock:v11];
  v9 = BKLogEventDelivery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = a4;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "new dispatching rulesets for pid:%d: %{public}@", buf, 0x12u);
  }

  [(BKHIDEventDeliveryManager *)self _lock_setDispatchingRoots:v6 forClientWithPID:a4];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

void __66__BKHIDEventDeliveryManager_setDispatchingRoots_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 rules];
  v6 = [v4 reason];

  v7 = [v6 _stringRepresentation];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__BKHIDEventDeliveryManager_setDispatchingRoots_forClientWithPID___block_invoke_2;
  v8[3] = &unk_2784F6490;
  v9 = *(a1 + 32);
  [v3 appendCollection:v5 withName:v7 itemBlock:v8];
}

- (void)_lock_setDispatchingRoots:(int)a3 forClientWithPID:
{
  if (a1)
  {
    v5 = a2;
    os_unfair_lock_assert_owner((a1 + 8));
    v6 = [v5 bs_map:&__block_literal_global_231];

    v7 = [(BKHIDEventDeliveryManager *)a1 _lock_clientWithPID:a3 createIfNeeded:1];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 24);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __72__BKHIDEventDeliveryManager__lock_setDispatchingRoots_forClientWithPID___block_invoke_2;
    v17 = &unk_2784F66A0;
    v11 = v10;
    v18 = v11;
    v19 = a1;
    v12 = v8;
    v20 = v12;
    v13 = v6;
    v21 = v13;
    [(BKHIDEventDeliveryManager *)a1 _lock_notifyObserversForReason:&v14 chainsMayUpdate:?];
    [*(a1 + 144) removeAllObjects];
    if ([*(a1 + 120) count])
    {
      [*(a1 + 160) requestBufferReevaluationWithContext:0];
    }
  }
}

void __72__BKHIDEventDeliveryManager__lock_setDispatchingRoots_forClientWithPID___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v80 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 80) removeObjectsInArray:?];
  }

  v2 = *(v1 + 48);
  if (v2)
  {
    objc_storeStrong((v2 + 24), *(v1 + 56));
  }

  if ([*(v1 + 56) count])
  {
    [*(*(v1 + 40) + 80) addObjectsFromArray:*(v1 + 56)];
  }

  *(*(v1 + 40) + 88) = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *(*(v1 + 40) + 80);
  v45 = [obj countByEnumeratingWithState:&v62 objects:v77 count:16];
  if (v45)
  {
    v43 = *v63;
    v44 = v1;
    do
    {
      v4 = 0;
      do
      {
        if (*v63 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v62 + 1) + 8 * v4);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v46 = v5;
        if (v5)
        {
          v5 = v5[2];
        }

        v47 = v4;
        v50 = v5;
        v6 = [v50 countByEnumeratingWithState:&v58 objects:v76 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = *v59;
          v48 = *v59;
          do
          {
            v10 = 0;
            location = v7;
            do
            {
              if (*v59 != v9)
              {
                objc_enumerationMutation(v50);
              }

              v11 = *(*(&v58 + 1) + 8 * v10);
              v12 = [v11 predicate];
              v13 = [v12 senderDescriptors];

              if ([v13 count])
              {
                v52 = v11;
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                v14 = v13;
                v15 = [v14 countByEnumeratingWithState:&v54 objects:v75 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v55;
                  do
                  {
                    for (i = 0; i != v16; ++i)
                    {
                      if (*v55 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = [*(*(&v54 + 1) + 8 * i) associatedDisplay];
                      if (!v19)
                      {
                        v19 = [MEMORY[0x277CF0698] nullDisplay];
                      }

                      [v3 addObject:v19];
                    }

                    v16 = [v14 countByEnumeratingWithState:&v54 objects:v75 count:16];
                  }

                  while (v16);
                  v9 = v48;
                  v7 = location;
                }

                v11 = v52;
              }

              else
              {
                v14 = [MEMORY[0x277CF0698] nullDisplay];
                [v3 addObject:v14];
              }

              v8 |= [v11 predicateEventTypeMask];
              ++v10;
            }

            while (v10 != v7);
            v7 = [v50 countByEnumeratingWithState:&v58 objects:v76 count:16];
          }

          while (v7);
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          v20 = -1;
        }

        else
        {
          v20 = v8;
        }

        if (v46)
        {
          v46[6] = v20;
        }

        v1 = v44;
        *(*(v44 + 40) + 88) |= v20;
        v4 = v47 + 1;
      }

      while (v47 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v62 objects:v77 count:16];
    }

    while (v45);
  }

  v21 = *(*(v1 + 40) + 112);
  v51 = v3;
  if (v21)
  {
    v22 = [*(v21 + 24) mutableCopy];
    v23 = v22;
    if (v22)
    {
      [v22 minusSet:v51];
    }

    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v24 = *(v21 + 8);
    v25 = [v24 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v72;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v72 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v71 + 1) + 8 * j);
          v30 = [v29 display];
          v31 = [v23 containsObject:v30];

          if (v31)
          {
            [v53 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v26);
    }

    [*(v21 + 8) removeObjectsForKeys:v53];
    v32 = [v51 mutableCopy];
    v33 = v32;
    if (*(v21 + 24))
    {
      [v32 minusSet:?];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v34 = v33;
    v35 = [v34 countByEnumeratingWithState:&v67 objects:v78 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v68;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v68 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v67 + 1) + 8 * k);
          v40 = *(v21 + 16);
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __43__BKEventDeferringGraph_setSenderDisplays___block_invoke;
          v66[3] = &unk_2784F7168;
          v66[4] = v21;
          v66[5] = v39;
          [v40 enumerateKeysAndObjectsUsingBlock:v66];
        }

        v36 = [v34 countByEnumeratingWithState:&v67 objects:v78 count:16];
      }

      while (v36);
    }

    objc_storeStrong((v21 + 24), v3);
  }

  v41 = *MEMORY[0x277D85DE8];
}

_BKHIDEventDeliveryRoot *__72__BKHIDEventDeliveryManager__lock_setDispatchingRoots_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_BKHIDEventDeliveryRoot);
  v4 = MEMORY[0x277CCACA8];
  v5 = [v2 seed];
  v6 = [v2 reason];
  v8 = [v4 stringWithFormat:@"%u-%@", v5, v6];
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v7, v8, 8);
  }

  v9 = [v2 rules];
  if (v3)
  {
    objc_storeStrong(&v3->_dispatchingRules, v9);
  }

  return v3;
}

void __66__BKHIDEventDeliveryManager_setDispatchingRoots_forClientWithPID___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 predicate];
  v5 = [v4 senderDescriptors];
  _BKDescribeSenderSet(*(a1 + 32), v5);
  v6 = *(a1 + 32);
  v7 = [v4 descriptors];
  v8 = v6;
  v9 = v7;
  if ([v9 count])
  {
    v22 = v8;
    v23 = v5;
    v24 = v3;
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        v15 = 0;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(*(&v28 + 1) + 8 * v15), "hidEventType")}];
          [v10 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___BKDescribeEventDescriptors_block_invoke;
    v25[3] = &unk_2784F7270;
    v8 = v22;
    v26 = v22;
    v27 = v10;
    v17 = v10;
    [v26 sameLine:v25];

    v5 = v23;
    v3 = v24;
  }

  [*(a1 + 32) appendRightArrow];
  v18 = *(a1 + 32);
  v19 = [v3 target];
  v20 = [v18 appendObject:v19 withName:0 skipIfNil:0];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)processDidTerminate:(int)a3
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v10 = [(BSMutableIntegerMap *)self->_clientsByPID objectForKey:a3];
  if (v10)
  {
    v5 = v10;
    os_unfair_lock_assert_owner(&self->_lock);
    v6 = *(v5 + 3);
    v7 = BKLogEventDelivery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v6;
      _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "pid:%d terminated", buf, 8u);
    }

    v5[8] = 1;
    v8 = MEMORY[0x277CBEBF8];
    [(BKHIDEventDeliveryManager *)self _lock_setDispatchingRoots:v6 forClientWithPID:?];
    [(BKHIDEventDeliveryManager *)self _lock_setKeyCommandRoots:v8 forClientWithPID:v6];
    [(BKHIDEventDeliveryManager *)self _lock_setDeferringRules:v8 forClientWithPID:v6];
    [(BKHIDEventDeliveryManager *)self _lock_setKeyCommandsRegistrations:v6 forClientWithPID:?];
    [(BKHIDEventDeliveryManager *)self _lock_setEventBufferingPredicates:v6 forClientWithPID:?];
    [v5 invalidate];
    [(BSMutableIntegerMap *)self->_clientsByPID removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (BKSHIDEventDisplay)mainDisplay
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_mainDisplay;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMainDisplay:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (!v4)
  {
    v4 = [MEMORY[0x277CF0698] builtinDisplay];
  }

  if (self->_mainDisplay != v4)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "main display is now: %{public}@", &v7, 0xCu);
    }

    objc_storeStrong(&self->_mainDisplay, v4);
  }

  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)currentBuffersPerDispatchTarget
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_buffersByDispatchTarget copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_chainsStateCapture invalidate];
  chainsStateCapture = self->_chainsStateCapture;
  self->_chainsStateCapture = 0;

  [(BSInvalidatable *)self->_deferringRulesStateCapture invalidate];
  deferringRulesStateCapture = self->_deferringRulesStateCapture;
  self->_deferringRulesStateCapture = 0;

  [(BSInvalidatable *)self->_dispatchRootsStateCapture invalidate];
  dispatchRootsStateCapture = self->_dispatchRootsStateCapture;
  self->_dispatchRootsStateCapture = 0;

  [(BSInvalidatable *)self->_graphStateCapture invalidate];
  graphStateCapture = self->_graphStateCapture;
  self->_graphStateCapture = 0;

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BSMutableIntegerMap *)self->_clientsByPID enumerateWithBlock:&__block_literal_global_360];
  os_unfair_lock_unlock(&self->_lock);
  v7.receiver = self;
  v7.super_class = BKHIDEventDeliveryManager;
  [(BKHIDEventDeliveryManager *)&v7 dealloc];
}

- (BKHIDEventDeliveryManager)initWithObserverService:(id)a3
{
  v5 = a3;
  v39.receiver = self;
  v39.super_class = BKHIDEventDeliveryManager;
  v6 = [(BKHIDEventDeliveryManager *)&v39 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(BKEventDeferringGraph);
    deferringGraph = v7->_deferringGraph;
    v7->_deferringGraph = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deliveryRoots = v7->_deliveryRoots;
    v7->_deliveryRoots = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyCommandDeliveryRoots = v7->_keyCommandDeliveryRoots;
    v7->_keyCommandDeliveryRoots = v12;

    v14 = objc_alloc_init(MEMORY[0x277CF0C68]);
    clientsByPID = v7->_clientsByPID;
    v7->_clientsByPID = v14;

    v16 = objc_alloc_init(MEMORY[0x277CF0C68]);
    bufferingPredicatesByPID = v7->_bufferingPredicatesByPID;
    v7->_bufferingPredicatesByPID = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    destinationCacheBySender = v7->_destinationCacheBySender;
    v7->_destinationCacheBySender = v18;

    objc_storeStrong(&v7->_resolutionObserver, a3);
    v20 = [MEMORY[0x277CF0698] builtinDisplay];
    mainDisplay = v7->_mainDisplay;
    v7->_mainDisplay = v20;

    v22 = objc_alloc_init(MEMORY[0x277CF0608]);
    authenticationOriginator = v7->_authenticationOriginator;
    v7->_authenticationOriginator = v22;

    v24 = objc_alloc_init(MEMORY[0x277CF06E0]);
    simpleProvenanceOriginator = v7->_simpleProvenanceOriginator;
    v7->_simpleProvenanceOriginator = v24;

    objc_initWeak(&location, v7);
    v26 = MEMORY[0x277D85CD0];
    v27 = MEMORY[0x277D85CD0];
    v36[1] = MEMORY[0x277D85DD0];
    v36[2] = 3221225472;
    v36[3] = __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke;
    v36[4] = &unk_2784F6448;
    objc_copyWeak(&v37, &location);
    v28 = BSLogAddStateCaptureBlock();
    chainsStateCapture = v7->_chainsStateCapture;
    v7->_chainsStateCapture = v28;

    v35[1] = MEMORY[0x277D85DD0];
    v35[2] = 3221225472;
    v35[3] = __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke_2;
    v35[4] = &unk_2784F6448;
    objc_copyWeak(v36, &location);
    v30 = BSLogAddStateCaptureBlock();
    deferringRulesStateCapture = v7->_deferringRulesStateCapture;
    v7->_deferringRulesStateCapture = v30;

    objc_copyWeak(v35, &location);
    v32 = BSLogAddStateCaptureBlock();
    dispatchRootsStateCapture = v7->_dispatchRootsStateCapture;
    v7->_dispatchRootsStateCapture = v32;

    objc_destroyWeak(v35);
    objc_destroyWeak(v36);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained deliveryChainsDescription];

  return v2;
}

id __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v3 = objc_alloc_init(BKStringTranscriptTarget);
    [(BKEventDeferringGraph *)*&v2[28]._os_unfair_lock_opaque logRulesToTarget:v3];
    os_unfair_lock_unlock(v2 + 2);
    v4 = [(BKStringTranscriptTarget *)v3 build];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __53__BKHIDEventDeliveryManager_initWithObserverService___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v3 = objc_alloc_init(BKStringTranscriptTarget);
    v4 = objc_alloc_init(MEMORY[0x277CF0C08]);
    v5 = *&v2[20]._os_unfair_lock_opaque;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__BKHIDEventDeliveryManager__dispatchRootsDescription__block_invoke;
    v9[3] = &unk_2784F65B8;
    v10 = v4;
    v6 = v4;
    [v6 appendCollection:v5 withName:0 itemBlock:v9];
    os_unfair_lock_unlock(v2 + 2);
    v7 = [(BKStringTranscriptTarget *)v3 build];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __54__BKHIDEventDeliveryManager__dispatchRootsDescription__block_invoke(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
    a2 = a2[2];
    v4 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  v6 = a2;
  v5 = [v2 appendObject:a2 withName:v4];
}

- (BKHIDEventDeliveryManager)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Use initWithObserverService:"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BKHIDEventDeliveryManager.m";
    v17 = 1024;
    v18 = 295;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end