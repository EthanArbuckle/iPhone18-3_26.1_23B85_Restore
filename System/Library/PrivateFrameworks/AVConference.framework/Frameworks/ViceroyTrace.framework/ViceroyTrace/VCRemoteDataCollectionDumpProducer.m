@interface VCRemoteDataCollectionDumpProducer
- (BOOL)writeVCRCMLDumpToCSVPath:(id)a3;
- (VCRemoteDataCollectionDumpProducer)initWithDataStore:(id)a3;
- (id)newHeaderString;
- (void)coreAnalyticsCallback:(id)a3 fileHandle:(id)a4;
- (void)createDumpAndSubmitToCoreAnalytics;
- (void)dealloc;
- (void)newHeaderString;
- (void)removeDatabaseFile;
- (void)runPostProcessing:(id)a3;
- (void)submitToCoreAnalytics:(id)a3;
@end

@implementation VCRemoteDataCollectionDumpProducer

- (VCRemoteDataCollectionDumpProducer)initWithDataStore:(id)a3
{
  v10.receiver = self;
  v10.super_class = VCRemoteDataCollectionDumpProducer;
  v4 = [(VCRemoteDataCollectionDumpProducer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_dataStore = a3;
    v6 = a3;
    v7 = [VCWeakObjectHolder weakObjectHolderWithObject:v5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__VCRemoteDataCollectionDumpProducer_initWithDataStore___block_invoke;
    v9[3] = &unk_278BD4868;
    v9[4] = v7;
    [(VCPersistentDataStore *)v5->_dataStore registerDataProducerWithType:0 producerCallback:v9];
  }

  else
  {
    [VCRemoteDataCollectionDumpProducer initWithDataStore:];
  }

  return v5;
}

uint64_t __56__VCRemoteDataCollectionDumpProducer_initWithDataStore___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 runPostProcessing:a2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCRemoteDataCollectionDumpProducer;
  [(VCRemoteDataCollectionDumpProducer *)&v3 dealloc];
}

- (void)runPostProcessing:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  self->_databasePath = v4;
  v5 = sqlite3_open([(NSString *)v4 UTF8String], &self->_database);
  if (!v5 || (v6 = v5, v5 == 101))
  {
    [(VCRemoteDataCollectionDumpProducer *)self createDumpAndSubmitToCoreAnalytics];
    goto LABEL_4;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR(7u);
      v10 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sqlite3_errmsg(self->_database);
        v18 = 136316162;
        v19 = v9;
        v20 = 2080;
        v21 = "[VCRemoteDataCollectionDumpProducer runPostProcessing:]";
        v22 = 1024;
        v23 = 71;
        v24 = 1024;
        *v25 = v6;
        *&v25[4] = 2080;
        *&v25[6] = v11;
        v12 = " [%s] %s:%d SQLite Error: could not open database with return code=%d error=%s";
        v13 = v10;
        v14 = 44;
LABEL_15:
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR(7u);
      v16 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sqlite3_errmsg(self->_database);
        v18 = 136316674;
        v19 = v15;
        v20 = 2080;
        v21 = "[VCRemoteDataCollectionDumpProducer runPostProcessing:]";
        v22 = 1024;
        v23 = 71;
        v24 = 2112;
        *v25 = v8;
        *&v25[8] = 2048;
        *&v25[10] = self;
        v26 = 1024;
        v27 = v6;
        v28 = 2080;
        v29 = v17;
        v12 = " [%s] %s:%d %@(%p) SQLite Error: could not open database with return code=%d error=%s";
        v13 = v16;
        v14 = 64;
        goto LABEL_15;
      }
    }
  }

LABEL_4:
  sqlite3_close(self->_database);
  self->_database = 0;
  [(VCRemoteDataCollectionDumpProducer *)self removeDatabaseFile];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createDumpAndSubmitToCoreAnalytics
{
  OUTLINED_FUNCTION_16_1();
  v11 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      goto LABEL_9;
    }

    v2 = *v0;
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_6_0();
    v8 = 48;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_19_1())
  {
    OUTLINED_FUNCTION_18_1();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      v10 = *v0;
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_10_0();
      v8 = 68;
      goto LABEL_11;
    }
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)submitToCoreAnalytics:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v9[5] = a3;
  v10 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__VCRemoteDataCollectionDumpProducer_submitToCoreAnalytics___block_invoke;
  v9[3] = &unk_278BD53E0;
  v9[4] = self;
  if ([MEMORY[0x277D36B68] createForSubmission:@"240" metadata:0 options:0 error:&v10 writing:v9])
  {
    v4 = v10 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [VCRemoteDataCollectionDumpProducer submitToCoreAnalytics:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR(3u);
        v7 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v12 = v6;
          v13 = 2080;
          v14 = "[VCRemoteDataCollectionDumpProducer submitToCoreAnalytics:]";
          v15 = 1024;
          v16 = 101;
          v17 = 2112;
          v18 = v5;
          v19 = 2048;
          v20 = self;
          _os_log_error_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Submission to Core Analytics failed", buf, 0x30u);
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)coreAnalyticsCallback:(id)a3 fileHandle:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v7 = fopen([a3 UTF8String], "r");
  if (v7)
  {
    v8 = v7;
    v9 = fdopen([a4 fileDescriptor], "w");
    if (v9)
    {
      v10 = v9;
      if ((VCDiskUtils_FileZipToFile() & 0x80000000) != 0)
      {
        [VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:? fileHandle:?];
      }

      fclose(v8);
      fclose(v10);
    }

    else
    {
      [VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:fileHandle:];
    }
  }

  else
  {
    [VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:fileHandle:];
  }

  [objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")];
  if (v22)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        goto LABEL_16;
      }

      v12 = VRTraceErrorLogLevelToCSTR(3u);
      v13 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v14 = [v22 localizedDescription];
      *buf = 136316162;
      v24 = v12;
      v25 = 2080;
      v26 = "[VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:fileHandle:]";
      v27 = 1024;
      v28 = 127;
      v29 = 2112;
      v30 = a3;
      v31 = 2112;
      v32 = v14;
      v15 = " [%s] %s:%d Failed to delete file on csvPath=%@, error=%@";
      v16 = v13;
      v17 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        goto LABEL_16;
      }

      v18 = VRTraceErrorLogLevelToCSTR(3u);
      v19 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v21 = [v22 localizedDescription];
      *buf = 136316674;
      v24 = v18;
      v25 = 2080;
      v26 = "[VCRemoteDataCollectionDumpProducer coreAnalyticsCallback:fileHandle:]";
      v27 = 1024;
      v28 = 127;
      v29 = 2112;
      v30 = v11;
      v31 = 2048;
      v32 = self;
      v33 = 2112;
      v34 = a3;
      v35 = 2112;
      v36 = v21;
      v15 = " [%s] %s:%d %@(%p) Failed to delete file on csvPath=%@, error=%@";
      v16 = v19;
      v17 = 68;
    }

    _os_log_error_impl(&dword_23D4DF000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }

LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeVCRCMLDumpToCSVPath:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  p_database = &self->_database;
  if (sqlite3_exec(self->_database, "CREATE TABLE VCRCMLoutput (state INT, timestamp DOUBLE, arrivalTime DOUBLE, targetBitrate INT, bitrate INT, basebandFlush INT, rateControlTime FLOAT(24,4), owrd FLOAT(24,4), nowrd FLOAT(24,4), nowrda FLOAT(24,4), roundTripTime FLOAT(24,4), roundTripTimeAverage FLOAT(24,4), roundTripTimeMinEnvelope FLOAT(24,4), audioPacketLossRate FLOAT(24,4), audioPacketLossRateShort FLOAT(24,4), videoPacketLossRate FLOAT(24,4), ecnCERatio FLOAT(24,4), bandwidthEstimate INT, nwConnectionTimestamp BIGINT, frequencyBand INT, intermittentState INT, estimatedIntermittentPeriod INT, singleOutagePeriod INT, btCoex INT, radioCoex INT, qualityScoreDelayRx INT, qualityScoreDelayTx INT, qualityScoreLossRx INT, qualityScoreLossTx INT, qualityScoreChannel INT, offChannelTimeRatio FLOAT, wlanDutyCycle INT, observedTxBitrateBE INT, observedTxBitrateBK INT, observedTxBitrateVI INT, observedTxBitrateVO INT, observedTxBitrateLLW0 INT, observedTxBitrateLLW1 INT, radioTechnology INT, flushableQueueDepth INT, unflushableQueueDepth INT, averageBitrate INT, averageBitrateShort INT, averageBitrateLong INT, txBitrate INT, averageQueueDepth DOUBLE, expectedQueuingDelay DOUBLE, bdcd DOUBLE, normalizedBDCD DOUBLE, normalizedDelay DOUBLE, bytesInFlight INT, bytesInFlightRollingAverage INT, mode INT, localRAT INT, remoteRAT INT, minTargetBitrate INT, maxTargetBitrate INT, algorithmVersion INT, trainingValue FLOAT(24, 4), trainingAction INT, trainingActionLogProbability FLOAT(24, 4)); ", 0, 0, 0))
  {
    [(VCRemoteDataCollectionDumpProducer *)p_database writeVCRCMLDumpToCSVPath:v26];
LABEL_13:
    v7 = *v26;
LABEL_14:

    v10 = 0;
    goto LABEL_9;
  }

  if (sqlite3_exec(*p_database, "INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, rateControlTime, owrd, nowrd, nowrda, roundTripTime, roundTripTimeAverage, roundTripTimeMinEnvelope, audioPacketLossRate, audioPacketLossRateShort, videoPacketLossRate, ecnCERatio, bandwidthEstimate, trainingValue, trainingAction, trainingActionLogProbability) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, ROUND(rateControlTime,3), ROUND(owrd, 3), ROUND(nowrd,3), ROUND(nowrda,3), ROUND(roundTripTime,3), ROUND(roundTripTimeAverage,3), ROUND(roundTripTimeMinEnvelope,3), ROUND(audioPacketLossRate,3), ROUND(audioPacketLossRateShort,3), ROUND(videoPacketLossRate,3), ROUND(ecnCERatio,3), bandwidthEstimate, ROUND(trainingValue,3), trainingAction, ROUND(trainingActionLogProbability,3) FROM Feedback; INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, nwConnectionTimestamp, frequencyBand, intermittentState, estimatedIntermittentPeriod, singleOutagePeriod, btCoex, radioCoex, qualityScoreDelayRx, qualityScoreDelayTx, qualityScoreLossRx, qualityScoreLossTx, qualityScoreChannel, offChannelTimeRatio, wlanDutyCycle, observedTxBitrateBE, observedTxBitrateBK, observedTxBitrateVI, observedTxBitrateVO, observedTxBitrateLLW0, observedTxBitrateLLW1) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, nwConnectionTimestamp, frequencyBand, intermittentState, estimatedIntermittentPeriod, singleOutagePeriod, btCoex, radioCoex, qualityScoreDelayRx, qualityScoreDelayTx, qualityScoreLossRx, qualityScoreLossTx, qualityScoreChannel, ROUND(offChannelTimeRatio,2), wlanDutyCycle, observedTxBitrateBE, observedTxBitrateBK, observedTxBitrateVI, observedTxBitrateVO, observedTxBitrateLLW0, observedTxBitrateLLW1 FROM Network; INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, radioTechnology, flushableQueueDepth, unflushableQueueDepth, averageBitrate, averageBitrateShort, averageBitrateLong, txBitrate, averageQueueDepth, expectedQueuingDelay, bdcd, normalizedBDCD, normalizedDelay) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, radioTechnology, flushableQueueDepth, unflushableQueueDepth, averageBitrate, averageBitrateShort, averageBitrateLong, txBitrate, ROUND(averageQueueDepth,2), ROUND(expectedQueuingDelay,3), ROUND(bdcd,3), ROUND(normalizedBDCD,3), ROUND(normalizedDelay,3) FROM Baseband; INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, bytesInFlight, bytesInFlightRollingAverage) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, bytesInFlight, bytesInFlightRollingAverage FROM LocalRCEvents; INSERT INTO VCRCMLoutput (state, timestamp, arrivalTime, targetBitrate, bitrate, basebandFlush, mode, localRAT, remoteRAT, minTargetBitrate, maxTargetBitrate, algorithmVersion) SELECT state, ROUND(timestamp,3), ROUND(arrivalTime,3), targetBitrate, bitrate, basebandFlush, mode, localRAT, remoteRAT, minTargetBitrate, maxTargetBitrate, algorithmVersion FROM RateControllerConfiguration; ", 0, 0, 0))
  {
    [(VCRemoteDataCollectionDumpProducer *)p_database writeVCRCMLDumpToCSVPath:v26];
    goto LABEL_13;
  }

  v6 = [(VCRemoteDataCollectionDumpProducer *)self newHeaderString];
  if (!v6)
  {
    [VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:];
    goto LABEL_13;
  }

  v7 = v6;
  v8 = fopen([a3 UTF8String], "w");
  if (!v8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR(3u);
        v19 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          *v26 = 136316418;
          *&v26[4] = v18;
          v27 = 2080;
          v28 = "[VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:]";
          v29 = 1024;
          v30 = 145;
          v31 = 2112;
          v32 = v13;
          v33 = 2048;
          v34 = self;
          v35 = 2112;
          v36 = a3;
          _os_log_error_impl(&dword_23D4DF000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to open fileName=%@", v26, 0x3Au);
        }
      }
    }

    goto LABEL_14;
  }

  v9 = v8;
  fputs([v7 UTF8String], v8);
  fputc(35, v9);
  if (sqlite3_exec(*p_database, "SELECT c.name FROM pragma_table_info('VCRCMLoutput') c;", _VCRemoteDataCollectionDumpProducer_WriteToCSVCallbackColumns, v9, 0))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [(VCRemoteDataCollectionDumpProducer *)v16 writeVCRCMLDumpToCSVPath:?];
        }
      }

      goto LABEL_44;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_44;
    }

    v20 = VRTraceErrorLogLevelToCSTR(3u);
    v21 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    v22 = sqlite3_errmsg(self->_database);
    *v26 = 136316418;
    *&v26[4] = v20;
    v27 = 2080;
    v28 = "[VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:]";
    v29 = 1024;
    v30 = 151;
    v31 = 2112;
    v32 = v14;
    v33 = 2048;
    v34 = self;
    v35 = 2080;
    v36 = v22;
    v23 = " [%s] %s:%d %@(%p) SQLite Error: Failed to execute header printing with errorMessage=%s";
    goto LABEL_46;
  }

  fputc(10, v9);
  if (sqlite3_exec(*p_database, "SELECT * FROM VCRCMLoutput ORDER BY timestamp;", _VCRemoteDataCollectionDumpProducer_WriteToCSVCallback, v9, 0))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [(VCRemoteDataCollectionDumpProducer *)v17 writeVCRCMLDumpToCSVPath:?];
        }
      }

      goto LABEL_44;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("") < 3 || (v24 = VRTraceErrorLogLevelToCSTR(3u), v21 = gVRTraceOSLog, !os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR)))
    {
LABEL_44:
      v10 = 0;
      goto LABEL_8;
    }

    v25 = sqlite3_errmsg(self->_database);
    *v26 = 136316418;
    *&v26[4] = v24;
    v27 = 2080;
    v28 = "[VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:]";
    v29 = 1024;
    v30 = 156;
    v31 = 2112;
    v32 = v15;
    v33 = 2048;
    v34 = self;
    v35 = 2080;
    v36 = v25;
    v23 = " [%s] %s:%d %@(%p) SQLite Error: Failed to execute combination query with errorMessage=%s";
LABEL_46:
    _os_log_error_impl(&dword_23D4DF000, v21, OS_LOG_TYPE_ERROR, v23, v26, 0x3Au);
    goto LABEL_44;
  }

  v10 = 1;
LABEL_8:

  fclose(v9);
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)newHeaderString
{
  v31 = *MEMORY[0x277D85DE8];
  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  sqlite3_prepare_v2(self->_database, "SELECT conversationID, participantID, deviceClass FROM Metadata LIMIT 1;", -1, &ppStmt, 0);
  v3 = sqlite3_step(ppStmt);
  if (v3 == 100)
  {
    v4 = sqlite3_column_text(ppStmt, 0);
    v5 = sqlite3_column_text(ppStmt, 1);
    v6 = sqlite3_column_int(ppStmt, 2);
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"environmentType", @"com.apple.rtcreporting", 0);
    v8 = objc_alloc(MEMORY[0x277CCACA0]);
    if (AppIntegerValue == 5)
    {
      v9 = [v8 initWithFormat:@"%s fileSchemaVersion=%d conversationID=%s participantID=%s deviceClass=%d internalTesting=%d\n", "#", 1, v4, v5, v6, 1];
    }

    else
    {
      v9 = [v8 initWithFormat:@"%s fileSchemaVersion=%d conversationID=%s participantID=%s deviceClass=%d\n", "#", 1, v4, v5, v6, v17];
    }

    v10 = v9;
  }

  else
  {
    v13 = v3;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [VCRemoteDataCollectionDumpProducer newHeaderString];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR(3u);
        v16 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v20 = v15;
          v21 = 2080;
          v22 = "[VCRemoteDataCollectionDumpProducer newHeaderString]";
          v23 = 1024;
          v24 = 175;
          v25 = 2112;
          v26 = v14;
          v27 = 2048;
          v28 = self;
          v29 = 1024;
          v30 = v13;
          _os_log_error_impl(&dword_23D4DF000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) SQLite Error: could not read metadata status=%d", buf, 0x36u);
        }
      }
    }

    v10 = 0;
  }

  sqlite3_finalize(ppStmt);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)removeDatabaseFile
{
  v31 = *MEMORY[0x277D85DE8];
  v16 = 0;
  [objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")];
  if (!v16)
  {
    goto LABEL_11;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_11;
    }

    v4 = VRTraceErrorLogLevelToCSTR(3u);
    v5 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    databasePath = self->_databasePath;
    v7 = [v16 localizedDescription];
    *buf = 136316162;
    v18 = v4;
    v19 = 2080;
    v20 = "[VCRemoteDataCollectionDumpProducer removeDatabaseFile]";
    v21 = 1024;
    v22 = 197;
    v23 = 2112;
    v24 = databasePath;
    v25 = 2112;
    v26 = v7;
    v8 = " [%s] %s:%d Failed to delete RemoteDataCollectionDumpProducer database with databasePath=%@, error=%@";
    v9 = v5;
    v10 = 48;
LABEL_13:
    _os_log_error_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCRemoteDataCollectionDumpProducer *)self performSelector:sel_logPrefix];
  }

  else
  {
    v3 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR(3u);
    v12 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_databasePath;
      v15 = [v16 localizedDescription];
      *buf = 136316674;
      v18 = v11;
      v19 = 2080;
      v20 = "[VCRemoteDataCollectionDumpProducer removeDatabaseFile]";
      v21 = 1024;
      v22 = 197;
      v23 = 2112;
      v24 = v3;
      v25 = 2048;
      v26 = self;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      v8 = " [%s] %s:%d %@(%p) Failed to delete RemoteDataCollectionDumpProducer database with databasePath=%@, error=%@";
      v9 = v12;
      v10 = 68;
      goto LABEL_13;
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataStore:.cold.1()
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

    OUTLINED_FUNCTION_3_3();
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
    if (OUTLINED_FUNCTION_19())
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

- (void)submitToCoreAnalytics:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  v3 = 101;
  _os_log_error_impl(&dword_23D4DF000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Submission to Core Analytics failed", v2, 0x1Cu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)coreAnalyticsCallback:(void *)a1 fileHandle:.cold.1(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    v11[6] = 116;
    OUTLINED_FUNCTION_5_0();
    v8 = 28;
LABEL_12:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      v12 = v2;
      v13 = 2048;
      v14 = a1;
      v3 = &dword_23D4DF000;
      v6 = " [%s] %s:%d %@(%p) Failed to zip OSALog File";
      v7 = v11;
      v4 = v9;
      v5 = OS_LOG_TYPE_ERROR;
      v8 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)coreAnalyticsCallback:fileHandle:.cold.2()
{
  OUTLINED_FUNCTION_16_1();
  v10 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6_0();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_19_1())
  {
    OUTLINED_FUNCTION_18_1();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_10_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  result = fclose(v0);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)coreAnalyticsCallback:fileHandle:.cold.3()
{
  OUTLINED_FUNCTION_16_1();
  v9 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      goto LABEL_9;
    }

    [v0 UTF8String];
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_6_0();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_19_1())
  {
    OUTLINED_FUNCTION_18_1();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      [v0 UTF8String];
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_10_0();
      v7 = 58;
      goto LABEL_11;
    }
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeVCRCMLDumpToCSVPath:(sqlite3 *)a1 .cold.1(sqlite3 **a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);
    }
  }

  *a2 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)writeVCRCMLDumpToCSVPath:(sqlite3 *)a1 .cold.2(sqlite3 **a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      sqlite3_errmsg(*a1);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);
    }
  }

  *a2 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)writeVCRCMLDumpToCSVPath:(uint64_t)a1 .cold.3(uint64_t a1, sqlite3 **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  sqlite3_errmsg(*a2);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)writeVCRCMLDumpToCSVPath:(uint64_t)a1 .cold.4(uint64_t a1, sqlite3 **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  sqlite3_errmsg(*a2);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)writeVCRCMLDumpToCSVPath:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  v5 = v0;
  v6 = "[VCRemoteDataCollectionDumpProducer writeVCRCMLDumpToCSVPath:]";
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_0();
  v7 = v1;
  _os_log_error_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to open fileName=%@", v4, 0x26u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)writeVCRCMLDumpToCSVPath:.cold.6()
{
  OUTLINED_FUNCTION_16_1();
  v9 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6_0();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_19_1())
  {
    OUTLINED_FUNCTION_18_1();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_10_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)newHeaderString
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  v5 = v0;
  v6 = "[VCRemoteDataCollectionDumpProducer newHeaderString]";
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_14_1();
  v7 = v1;
  _os_log_error_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d SQLite Error: could not read metadata status=%d", v4, 0x22u);
  v3 = *MEMORY[0x277D85DE8];
}

@end