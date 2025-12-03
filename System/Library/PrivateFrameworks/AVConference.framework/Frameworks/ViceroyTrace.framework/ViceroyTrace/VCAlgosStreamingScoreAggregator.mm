@interface VCAlgosStreamingScoreAggregator
- (VCAlgosStreamingScoreAggregator)init;
- (double)aggregateScoresWithDictionaryLogging:(BOOL)logging time:(double)time;
- (id)algoScorerParticipantIDList;
- (id)algosScorerForNonDefaultParticipantID;
- (id)algosScorerWithParticipantID:(id)d;
- (void)addParticipantWithTime:(double)time participantID:(id)d;
- (void)dealloc;
@end

@implementation VCAlgosStreamingScoreAggregator

- (VCAlgosStreamingScoreAggregator)init
{
  v14 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = VCAlgosStreamingScoreAggregator;
  v2 = [(VCAlgosStreamingScoreAggregator *)&v7 init];
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR(6u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = v3;
        v10 = 2080;
        v11 = "[VCAlgosStreamingScoreAggregator init]";
        v12 = 1024;
        v13 = 35;
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
      }
    }

    v2->_participantAlgosScorers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_blockAlgosScorersDictionaryLock._os_unfair_lock_opaque = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);

  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  if (VRTraceGetErrorLogLevelForModule("") >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR(6u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAlgosStreamingScoreAggregator dealloc]";
      v11 = 1024;
      v12 = 46;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v6.receiver = self;
  v6.super_class = VCAlgosStreamingScoreAggregator;
  [(VCAlgosStreamingScoreAggregator *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)algosScorerWithParticipantID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  if ([(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:d])
  {
    v5 = [(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:d];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR(8u);
      v9 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          uTF8String = [d UTF8String];
          v11 = [objc_msgSend(-[NSMutableDictionary allKeys](self->_participantAlgosScorers "allKeys")];
          v14 = 136316162;
          v15 = v8;
          v16 = 2080;
          v17 = "[VCAlgosStreamingScoreAggregator algosScorerWithParticipantID:]";
          v18 = 1024;
          v19 = 53;
          v20 = 2080;
          v21 = uTF8String;
          v22 = 2080;
          v23 = v11;
          _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d scorer NOT FOUND for participantID %s within scorers: %s", &v14, 0x30u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        uTF8String2 = [d UTF8String];
        v13 = [objc_msgSend(-[NSMutableDictionary allKeys](self->_participantAlgosScorers "allKeys")];
        v14 = 136316162;
        v15 = v8;
        v16 = 2080;
        v17 = "[VCAlgosStreamingScoreAggregator algosScorerWithParticipantID:]";
        v18 = 1024;
        v19 = 53;
        v20 = 2080;
        v21 = uTF8String2;
        v22 = 2080;
        v23 = v13;
        _os_log_debug_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d scorer NOT FOUND for participantID %s within scorers: %s", &v14, 0x30u);
      }
    }

    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  result = v5;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)algosScorerForNonDefaultParticipantID
{
  v38 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  participantAlgosScorers = self->_participantAlgosScorers;
  v4 = [(NSMutableDictionary *)participantAlgosScorers countByEnumeratingWithState:&v21 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = 0.0;
    v18 = 136316418;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(participantAlgosScorers);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if (([v9 isEqual:{@"DefaultParticipantID", v18}] & 1) == 0 && (objc_msgSend(v9, "isEqual:", @"AlternateParticipantID") & 1) == 0)
        {
          if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_participantAlgosScorers objectForKeyedSubscript:{v9), "algosScoreDictionary"}])
          {
            if ([objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_participantAlgosScorers objectForKeyedSubscript:{v9), "algosScoreDictionary"), "objectForKeyedSubscript:", @"stats", "objectForKeyedSubscript:", @"net-time"}])
            {
              [objc_msgSend(objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_participantAlgosScorers objectForKeyedSubscript:{v9), "algosScoreDictionary"), "objectForKeyedSubscript:", @"stats", "objectForKeyedSubscript:", @"net-time", "floatValue"}];
              v7 = v10;
              if (VRTraceGetErrorLogLevelForModule("") >= 8)
              {
                v11 = VRTraceErrorLogLevelToCSTR(8u);
                v12 = gVRTraceOSLog;
                if (gVRTraceLogDebugAsInfo == 1)
                {
                  if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = [(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:v9];
                    uTF8String = [v9 UTF8String];
                    *buf = v18;
                    v26 = v11;
                    v27 = 2080;
                    v28 = "[VCAlgosStreamingScoreAggregator algosScorerForNonDefaultParticipantID]";
                    v29 = 1024;
                    v30 = 72;
                    v31 = 2048;
                    v32 = v19;
                    v33 = 2080;
                    v34 = uTF8String;
                    v35 = 2048;
                    v36 = v7;
                    _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d algosScorer[%p], participantID=%s, net-duration=%2.3f", buf, 0x3Au);
                  }
                }

                else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
                {
                  v20 = [(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:v9];
                  uTF8String2 = [v9 UTF8String];
                  *buf = v18;
                  v26 = v11;
                  v27 = 2080;
                  v28 = "[VCAlgosStreamingScoreAggregator algosScorerForNonDefaultParticipantID]";
                  v29 = 1024;
                  v30 = 72;
                  v31 = 2048;
                  v32 = v20;
                  v33 = 2080;
                  v34 = uTF8String2;
                  v35 = 2048;
                  v36 = v7;
                  _os_log_debug_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d algosScorer[%p], participantID=%s, net-duration=%2.3f", buf, 0x3Au);
                }
              }
            }
          }

          if (v7 >= 1.0)
          {
            v15 = [(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:v9];
            goto LABEL_21;
          }
        }
      }

      v5 = [(NSMutableDictionary *)participantAlgosScorers countByEnumeratingWithState:&v21 objects:v37 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_21:
  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  result = v15;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addParticipantWithTime:(double)time participantID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  if ([(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:d])
  {
    [VCAlgosStreamingScoreAggregator addParticipantWithTime:d participantID:?];
  }

  else
  {
    v7 = [[VCAlgosStreamingScorer alloc] initWithLaunchTime:time];
    [(NSMutableDictionary *)self->_participantAlgosScorers setObject:v7 forKeyedSubscript:d];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCAlgosStreamingScoreAggregator addParticipantWithTime:participantID:]";
        v15 = 1024;
        v16 = 90;
        v17 = 2080;
        uTF8String = [d UTF8String];
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d add participantID %s scorer %p", &v11, 0x30u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)algoScorerParticipantIDList
{
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  allKeys = [(NSMutableDictionary *)self->_participantAlgosScorers allKeys];
  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  return allKeys;
}

- (double)aggregateScoresWithDictionaryLogging:(BOOL)logging time:(double)time
{
  loggingCopy = logging;
  v47 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  if (objc_opt_class())
  {
    v31 = objc_alloc_init(MEMORY[0x277D2CA38]);
    if (VRTraceGetErrorLogLevelForModule("") > 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          participantAlgosScorers = self->_participantAlgosScorers;
          *buf = 136315906;
          v37 = v7;
          v38 = 2080;
          v39 = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
          v40 = 1024;
          v41 = 118;
          v42 = 2112;
          v43 = participantAlgosScorers;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d aggregateScores %@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        [(VCAlgosStreamingScoreAggregator *)v7 aggregateScoresWithDictionaryLogging:v8 time:?];
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = self->_participantAlgosScorers;
    v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v11)
    {
      v13 = *v33;
      *&v12 = 136316162;
      v30 = v12;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = self->_participantAlgosScorers;
          if (loggingCopy)
          {
            [-[NSMutableDictionary objectForKeyedSubscript:](v16 objectForKeyedSubscript:{*(*(&v32 + 1) + 8 * i)), "finalizeScoreStreamingWithTime:", time}];
          }

          else
          {
            [-[NSMutableDictionary objectForKeyedSubscript:](v16 objectForKeyedSubscript:{*(*(&v32 + 1) + 8 * i)), "scoreStreaming"}];
          }

          v18 = v17;
          if (([v15 isEqual:{@"DefaultParticipantID", v30}] & 1) == 0 && !objc_msgSend(v15, "isEqual:", @"AlternateParticipantID") || -[NSMutableDictionary count](self->_participantAlgosScorers, "count") < 2 || v18 > 0.0)
          {
            [v31 addScore:@"streaming-media" weight:v15 type:v18 label:1.0];
            if (loggingCopy && VRTraceGetErrorLogLevelForModule("") >= 7)
            {
              v19 = VRTraceErrorLogLevelToCSTR(7u);
              v20 = gVRTraceOSLog;
              if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
              {
                uTF8String = [v15 UTF8String];
                v22 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_participantAlgosScorers objectForKeyedSubscript:{v15), "algosScoreDictionary"}];
                *buf = v30;
                v37 = v19;
                v38 = 2080;
                v39 = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
                v40 = 1024;
                v41 = 133;
                v42 = 2080;
                v43 = uTF8String;
                v44 = 2112;
                v45 = v22;
                _os_log_impl(&dword_23D4DF000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d participantID %s participant scoreDictionary %@", buf, 0x30u);
              }
            }
          }
        }

        v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v11);
    }

    v23 = [v31 scoreScores:0];
    v24 = v23;
    if (v23)
    {
      [objc_msgSend(v23 objectForKeyedSubscript:{@"score", "doubleValue"}];
      self->_score = v25;
      if (loggingCopy && VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR(7u);
        v27 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v37 = v26;
          v38 = 2080;
          v39 = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
          v40 = 1024;
          v41 = 144;
          v42 = 2112;
          v43 = v24;
          _os_log_impl(&dword_23D4DF000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AlgosScoreCombiner scoreDictionary: %@", buf, 0x26u);
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  result = self->_score;
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addParticipantWithTime:(void *)a1 participantID:.cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v2 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        [a1 UTF8String];
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_0_5();
        _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d participantID %s has already been added", v4, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [a1 UTF8String];
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_0_5();
      _os_log_debug_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d participantID %s has already been added", v4, 0x26u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)aggregateScoresWithDictionaryLogging:(os_log_t)log time:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  v5 = 136315906;
  v6 = a1;
  v7 = 2080;
  v8 = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
  v9 = 1024;
  v10 = 118;
  v11 = 2112;
  v12 = v3;
  _os_log_debug_impl(&dword_23D4DF000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d aggregateScores %@", &v5, 0x26u);
  v4 = *MEMORY[0x277D85DE8];
}

@end