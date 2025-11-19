@interface VCRateControlMachineLearningLocalTrainingDataProducer
- (BOOL)checkCountQuery:(char *)a3 withDatabase:(sqlite3 *)a4 minValue:(int)a5 maxValue:(int)a6;
- (VCRateControlMachineLearningLocalTrainingDataProducer)initWithDataStore:(id)a3 recipeID:(id)a4;
- (void)dealloc;
- (void)removeDatabaseFile;
- (void)runTrainingDataPostProcessing:(id)a3;
- (void)setUpTrainingDataForPlugin;
@end

@implementation VCRateControlMachineLearningLocalTrainingDataProducer

- (VCRateControlMachineLearningLocalTrainingDataProducer)initWithDataStore:(id)a3 recipeID:(id)a4
{
  v11.receiver = self;
  v11.super_class = VCRateControlMachineLearningLocalTrainingDataProducer;
  v6 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)&v11 init];
  if (!v6)
  {
    [VCRateControlMachineLearningLocalTrainingDataProducer initWithDataStore:recipeID:];
LABEL_7:

    return 0;
  }

  *(v6 + 4) = a4;
  v7 = [objc_alloc(MEMORY[0x277CCACA0]) initWithFormat:@"%@/%s", +[VCDiskUtils getCachesDirectoryPath](VCDiskUtils, "getCachesDirectoryPath"), "rc_fl_data"];
  *(v6 + 3) = v7;
  if (![VCDiskUtils createDefaultAttributeDirectoryIfNeeded:v7])
  {
    [VCRateControlMachineLearningLocalTrainingDataProducer initWithDataStore:v6 recipeID:v6 + 3];
    goto LABEL_7;
  }

  v8 = [VCWeakObjectHolder weakObjectHolderWithObject:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__VCRateControlMachineLearningLocalTrainingDataProducer_initWithDataStore_recipeID___block_invoke;
  v10[3] = &unk_278BD4868;
  v10[4] = v8;
  [a3 registerDataProducerWithType:1 producerCallback:v10];
  return v6;
}

uint64_t __84__VCRateControlMachineLearningLocalTrainingDataProducer_initWithDataStore_recipeID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 runTrainingDataPostProcessing:a2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCRateControlMachineLearningLocalTrainingDataProducer;
  [(VCRateControlMachineLearningLocalTrainingDataProducer *)&v3 dealloc];
}

- (void)runTrainingDataPostProcessing:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  self->_databasePath = v4;
  v5 = sqlite3_open([(NSString *)v4 UTF8String], &self->_database);
  if (!v5 || (v6 = v5, v5 == 101))
  {
    if (sqlite3_exec(self->_database, "CREATE TABLE VCRCMLoutput (timestamp DOUBLE, targetBitrate INT, bitrate INT, rateControlTime FLOAT(24,4), owrd FLOAT(24,4), nowrd FLOAT(24,4), roundTripTime FLOAT(24,4), audioPacketLossRate FLOAT(24,4), videoPacketLossRate FLOAT(24,4), bandwidthEstimate INT, averageBitrate INT, expectedQueuingDelay DOUBLE, bytesInFlight INT, mode INT, localRAT INT, remoteRAT INT, maxTargetBitrate INT, trainingValue FLOAT(24, 4), trainingAction INT, trainingActionLogProbability FLOAT(24, 4)); ", 0, 0, 0))
    {
      [VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:?];
    }

    else if (sqlite3_exec(self->_database, "INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate, rateControlTime, owrd, nowrd, roundTripTime, audioPacketLossRate, videoPacketLossRate,  bandwidthEstimate, trainingValue, trainingAction, trainingActionLogProbability) SELECT ROUND(timestamp,3), targetBitrate, bitrate, ROUND(rateControlTime,3), ROUND(owrd, 3), ROUND(nowrd,3), ROUND(roundTripTime,3), ROUND(audioPacketLossRate,3), ROUND(videoPacketLossRate,3), bandwidthEstimate, trainingValue, trainingAction, trainingActionLogProbability FROM Feedback; INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate) SELECT ROUND(timestamp,3), targetBitrate, bitrate FROM Network; INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate, averageBitrate, expectedQueuingDelay) SELECT ROUND(timestamp,3), targetBitrate, bitrate, averageBitrate, ROUND(expectedQueuingDelay,3) FROM Baseband; INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate, bytesInFlight) SELECT ROUND(timestamp,3), targetBitrate, bitrate, bytesInFlight FROM LocalRCEvents; INSERT INTO VCRCMLoutput (timestamp, targetBitrate, bitrate, mode, localRAT, remoteRAT, maxTargetBitrate) SELECT ROUND(timestamp,3), targetBitrate, bitrate, mode, localRAT, remoteRAT, maxTargetBitrate FROM RateControllerConfiguration; ", 0, 0, 0))
    {
      [VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:?];
    }

    else
    {
      v7 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)self shouldGenerateTrainingDataWithDatabase:self->_database];
      sqlite3_close(self->_database);
      self->_database = 0;
      if (v7)
      {
        [(VCRateControlMachineLearningLocalTrainingDataProducer *)self setUpTrainingDataForPlugin];
      }

      else
      {
        [VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:?];
      }
    }

    goto LABEL_7;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR(7u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sqlite3_errmsg(self->_database);
        *v19 = 136316162;
        *&v19[4] = v10;
        *&v19[12] = 2080;
        *&v19[14] = "[VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:]";
        *&v19[22] = 1024;
        *v20 = 75;
        *&v20[4] = 1024;
        *&v20[6] = v6;
        *&v20[10] = 2080;
        *&v20[12] = v12;
        v13 = " [%s] %s:%d SQLite Error: could not open database with return code=%d error=%s";
        v14 = v11;
        v15 = 44;
LABEL_18:
        _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, v13, v19, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR(7u);
      v17 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sqlite3_errmsg(self->_database);
        *v19 = 136316674;
        *&v19[4] = v16;
        *&v19[12] = 2080;
        *&v19[14] = "[VCRateControlMachineLearningLocalTrainingDataProducer runTrainingDataPostProcessing:]";
        *&v19[22] = 1024;
        *v20 = 75;
        *&v20[4] = 2112;
        *&v20[6] = v9;
        *&v20[14] = 2048;
        *&v20[16] = self;
        LOWORD(v21) = 1024;
        *(&v21 + 2) = v6;
        HIWORD(v21) = 2080;
        v22 = v18;
        v13 = " [%s] %s:%d %@(%p) SQLite Error: could not open database with return code=%d error=%s";
        v14 = v17;
        v15 = 64;
        goto LABEL_18;
      }
    }
  }

LABEL_7:
  [(VCRateControlMachineLearningLocalTrainingDataProducer *)self removeDatabaseFile:*v19];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUpTrainingDataForPlugin
{
  v9 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_6_0();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_8_0();
      goto LABEL_11;
    }
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeDatabaseFile
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA08] defaultManager];
  if ([v3 fileExistsAtPath:self->_databasePath])
  {
    v18 = 0;
    if (![v3 removeItemAtPath:self->_databasePath error:&v18] || v18 != 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule("") < 3)
        {
          goto LABEL_15;
        }

        v6 = VRTraceErrorLogLevelToCSTR(3u);
        v7 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        databasePath = self->_databasePath;
        v9 = [v18 localizedDescription];
        *buf = 136316162;
        v20 = v6;
        v21 = 2080;
        v22 = "[VCRateControlMachineLearningLocalTrainingDataProducer removeDatabaseFile]";
        v23 = 1024;
        v24 = 167;
        v25 = 2112;
        v26 = databasePath;
        v27 = 2112;
        v28 = v9;
        v10 = " [%s] %s:%d Failed to delete RemoteDataCollectionDumpProducer database with databasePath=%@, error=%@";
        v11 = v7;
        v12 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)self performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") < 3)
        {
          goto LABEL_15;
        }

        v13 = VRTraceErrorLogLevelToCSTR(3u);
        v14 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        v16 = self->_databasePath;
        v17 = [v18 localizedDescription];
        *buf = 136316674;
        v20 = v13;
        v21 = 2080;
        v22 = "[VCRateControlMachineLearningLocalTrainingDataProducer removeDatabaseFile]";
        v23 = 1024;
        v24 = 167;
        v25 = 2112;
        v26 = v5;
        v27 = 2048;
        v28 = self;
        v29 = 2112;
        v30 = v16;
        v31 = 2112;
        v32 = v17;
        v10 = " [%s] %s:%d %@(%p) Failed to delete RemoteDataCollectionDumpProducer database with databasePath=%@, error=%@";
        v11 = v14;
        v12 = 68;
      }

      _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    }
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkCountQuery:(char *)a3 withDatabase:(sqlite3 *)a4 minValue:(int)a5 maxValue:(int)a6
{
  v36 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  if (sqlite3_prepare_v2(a4, a3, -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 100)
  {
    v21 = 0;
    goto LABEL_20;
  }

  v9 = sqlite3_column_int(ppStmt, 0);
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCRateControlMachineLearningLocalTrainingDataProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") < 7)
    {
      goto LABEL_14;
    }

    v17 = VRTraceErrorLogLevelToCSTR(7u);
    v18 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136316930;
    v26 = v17;
    OUTLINED_FUNCTION_4_0();
    v27 = 2112;
    *v28 = v10;
    *&v28[8] = 2048;
    v29 = self;
    v30 = v19;
    v31 = v9;
    v32 = v19;
    v33 = a5;
    v34 = v19;
    v35 = a6;
    v14 = " [%s] %s:%d %@(%p) Training table has numberOfRows=%d, requiredRange=[%d, %d]";
    v15 = v18;
    v16 = 66;
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR(7u);
    v12 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v26 = v11;
      OUTLINED_FUNCTION_4_0();
      v27 = v13;
      *v28 = v9;
      *&v28[4] = v13;
      *&v28[6] = a5;
      LOWORD(v29) = v13;
      *(&v29 + 2) = a6;
      v14 = " [%s] %s:%d Training table has numberOfRows=%d, requiredRange=[%d, %d]";
      v15 = v12;
      v16 = 46;
LABEL_13:
      _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

LABEL_14:
  v21 = v9 >= a5 && v9 <= a6;
LABEL_20:
  sqlite3_finalize(ppStmt);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)initWithDataStore:(void *)a1 recipeID:(uint64_t *)a2 .cold.1(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v4 = *a2;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_6_0();
    v10 = 38;
LABEL_11:
    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_8_0();
      goto LABEL_11;
    }
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataStore:recipeID:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5_0();
    v5 = 28;
LABEL_11:
    _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [0 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_6_0();
      v5 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
}

- (void)runTrainingDataPostProcessing:(sqlite3 *)a1 .cold.1(sqlite3 **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)runTrainingDataPostProcessing:(sqlite3 *)a1 .cold.2(sqlite3 **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)runTrainingDataPostProcessing:(void *)a1 .cold.3(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR(7u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v3;
        OUTLINED_FUNCTION_0();
        v13 = 84;
        v5 = " [%s] %s:%d Session data is too small or too big to be used for training";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v8;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_0();
        v14 = v2;
        v15 = 2048;
        v16 = a1;
        v5 = " [%s] %s:%d %@(%p) Session data is too small or too big to be used for training";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end