@interface VCEmulatedNetworkAlgorithmQueueLoss
- (VCEmulatedNetworkAlgorithmQueueLoss)init;
- (void)process:(id)a3;
- (void)updateSettingsAtTime:(double)a3 impairments:(id)a4;
@end

@implementation VCEmulatedNetworkAlgorithmQueueLoss

- (VCEmulatedNetworkAlgorithmQueueLoss)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCEmulatedNetworkAlgorithmQueueLoss;
  result = [(VCEmulatedNetworkAlgorithmQueueLoss *)&v3 init];
  if (result)
  {
    *&result->_networkQueueMaxSize = 4000;
  }

  return result;
}

- (void)updateSettingsAtTime:(double)a3 impairments:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(a4 objectForKeyedSubscript:{@"FixedPLR", "objectForKeyedSubscript:", @"time"}];
  v8 = [objc_msgSend(a4 objectForKeyedSubscript:{@"FixedPLR", "objectForKeyedSubscript:", @"value"}];
  v9 = [v8 count];
  if (v9 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v7, &self->_currentIndexForLossRate, &self->_lastNetworkQueueLossRateLoadTime, v9, a3);
    [objc_msgSend(v8 objectAtIndexedSubscript:{self->_currentIndexForLossRate), "doubleValue"}];
    self->_networkQueueLossRate = v10;
  }

  v11 = [objc_msgSend(a4 objectForKeyedSubscript:{@"LossPattern", "objectForKeyedSubscript:", @"time"}];
  v12 = [objc_msgSend(a4 objectForKeyedSubscript:{@"LossPattern", "objectForKeyedSubscript:", @"value"}];
  v13 = [objc_msgSend(a4 objectForKeyedSubscript:{@"LossPattern", "objectForKeyedSubscript:", @"type"}];
  v14 = [v12 count];
  if (v14 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v11, &self->_currentIndexForLossPattern, &self->_lastNetworkQueueLossPatternLoadTime, v14, a3);
    self->_networkQueueLossPattern = [objc_msgSend(v12 objectAtIndexedSubscript:{self->_currentIndexForLossPattern), "unsignedIntValue"}];
    self->_packetTypeForNetworkQueueLossPattern = [objc_msgSend(v13 objectAtIndexedSubscript:{self->_currentIndexForLossPattern), "intValue"}];
  }

  v15 = [objc_msgSend(a4 objectForKeyedSubscript:{@"QueueSize", "objectForKeyedSubscript:", @"time"}];
  v16 = [objc_msgSend(a4 objectForKeyedSubscript:{@"QueueSize", "objectForKeyedSubscript:", @"value"}];
  v17 = [v16 count];
  if (v17 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v15, &self->_currentIndexForQueueSize, &self->_lastNetworkQueueSizeLoadTime, v17, a3);
    self->_networkQueueMaxSize = [objc_msgSend(v16 objectAtIndexedSubscript:{self->_currentIndexForQueueSize), "intValue"}];
  }

  v18 = [objc_msgSend(a4 objectForKeyedSubscript:{@"QueueSizeBytes", "objectForKeyedSubscript:", @"time"}];
  v19 = [objc_msgSend(a4 objectForKeyedSubscript:{@"QueueSizeBytes", "objectForKeyedSubscript:", @"value"}];
  v20 = [v19 count];
  if (v20 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v18, &self->_currentIndexForQueueSizeBytes, &self->_lastNetworkQueueSizeBytesLoadTime, v20, a3);
    self->_networkQueueMaxSizeBytes = [objc_msgSend(v19 objectAtIndexedSubscript:{self->_currentIndexForQueueSizeBytes), "intValue"}];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        networkQueueLossRate = self->_networkQueueLossRate;
        networkQueueLossPattern = self->_networkQueueLossPattern;
        networkQueueMaxSize = self->_networkQueueMaxSize;
        networkQueueMaxSizeBytes = self->_networkQueueMaxSizeBytes;
        v37 = 136316674;
        v38 = v22;
        v39 = 2080;
        v40 = "[VCEmulatedNetworkAlgorithmQueueLoss updateSettingsAtTime:impairments:]";
        v41 = 1024;
        v42 = 80;
        v43 = 2048;
        v44 = networkQueueLossRate;
        v45 = 1024;
        *v46 = networkQueueLossPattern;
        *&v46[4] = 1024;
        *&v46[6] = networkQueueMaxSize;
        LOWORD(v47) = 1024;
        *(&v47 + 2) = networkQueueMaxSizeBytes;
        v28 = " [%s] %s:%d Current emulated network packet loss=%f, lossPattern=%X, queueSize=%u packets, queue size=%u bytes";
        v29 = v23;
        v30 = 56;
LABEL_19:
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v37, v30);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v21 = [(VCEmulatedNetworkAlgorithmQueueLoss *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_networkQueueLossRate;
        v34 = self->_networkQueueLossPattern;
        v35 = self->_networkQueueMaxSize;
        v36 = self->_networkQueueMaxSizeBytes;
        v37 = 136317186;
        v38 = v31;
        v39 = 2080;
        v40 = "[VCEmulatedNetworkAlgorithmQueueLoss updateSettingsAtTime:impairments:]";
        v41 = 1024;
        v42 = 80;
        v43 = 2112;
        v44 = *&v21;
        v45 = 2048;
        *v46 = self;
        *&v46[8] = 2048;
        v47 = v33;
        v48 = 1024;
        v49 = v34;
        v50 = 1024;
        v51 = v35;
        v52 = 1024;
        v53 = v36;
        v28 = " [%s] %s:%d %@(%p) Current emulated network packet loss=%f, lossPattern=%X, queueSize=%u packets, queue size=%u bytes";
        v29 = v32;
        v30 = 76;
        goto LABEL_19;
      }
    }
  }
}

- (void)process:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  networkQueueLossRate = self->_networkQueueLossRate;
  if (networkQueueLossRate > *"" && arc4random_uniform(0xFFFFu) / 65535.0 <= networkQueueLossRate)
  {
    [a3 setIsLost:1];
  }

  if ([a3 type] && objc_msgSend(a3, "type") == self->_packetTypeForNetworkQueueLossPattern)
  {
    [a3 setIsLost:(self->_networkQueueLossPattern >> self->_currentLossPatternShift) & 1];
    self->_currentLossPatternShift = (self->_currentLossPatternShift + 1) & 0x1F;
  }

  if (self->_packetCountInNetworkQueue > self->_networkQueueMaxSize && !self->_networkQueueMaxSizeBytes)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        packetCountInNetworkQueue = self->_packetCountInNetworkQueue;
        networkQueueMaxSize = self->_networkQueueMaxSize;
        *v63 = 136316162;
        *&v63[4] = v6;
        *&v63[12] = 2080;
        *&v63[14] = "[VCEmulatedNetworkAlgorithmQueueLoss process:]";
        *&v63[22] = 1024;
        LODWORD(v64) = 94;
        WORD2(v64) = 1024;
        *(&v64 + 6) = packetCountInNetworkQueue;
        WORD5(v64) = 1024;
        HIDWORD(v64) = networkQueueMaxSize;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d network queue is full with packet count=%u, limit=%u", v63, 0x28u);
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_23;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v13 = [a3 packetID];
      v14 = [a3 sequenceNumber];
      v15 = [a3 size];
      [a3 arrivalTime];
      v17 = v16;
      [a3 departureTime];
      *v63 = 136316930;
      *&v63[4] = v11;
      *&v63[12] = 2080;
      *&v63[14] = "[VCEmulatedNetworkAlgorithmQueueLoss process:]";
      *&v63[22] = 1024;
      LODWORD(v64) = 95;
      WORD2(v64) = 1024;
      *(&v64 + 6) = v13;
      WORD5(v64) = 1024;
      HIDWORD(v64) = v14;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = v15;
      HIWORD(v65) = 2048;
      v66 = v17;
      *v67 = 2048;
      *&v67[2] = v18;
      v19 = " [%s] %s:%d dropped packet packetID=%d, sequenceNumber=%d, packet size=%d, arrivalTime=%f, departureTime=%f";
      v20 = v12;
      v21 = 66;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCEmulatedNetworkAlgorithmQueueLoss *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_23;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v24 = [a3 packetID];
      v25 = [a3 sequenceNumber];
      v26 = [a3 size];
      [a3 arrivalTime];
      v28 = v27;
      [a3 departureTime];
      *v63 = 136317442;
      *&v63[4] = v22;
      *&v63[12] = 2080;
      *&v63[14] = "[VCEmulatedNetworkAlgorithmQueueLoss process:]";
      *&v63[22] = 1024;
      LODWORD(v64) = 95;
      WORD2(v64) = 2112;
      *(&v64 + 6) = v10;
      HIWORD(v64) = 2048;
      v65 = self;
      LOWORD(v66) = 1024;
      *(&v66 + 2) = v24;
      HIWORD(v66) = 1024;
      *v67 = v25;
      *&v67[4] = 1024;
      *&v67[6] = v26;
      *&v67[10] = 2048;
      *&v67[12] = v28;
      *&v67[20] = 2048;
      *&v67[22] = v29;
      v19 = " [%s] %s:%d %@(%p) dropped packet packetID=%d, sequenceNumber=%d, packet size=%d, arrivalTime=%f, departureTime=%f";
      v20 = v23;
      v21 = 86;
    }

    _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v63, v21);
LABEL_23:
    [a3 setIsLost:{1, *v63, *&v63[16], v64, v65, v66, *v67, *&v67[8], *&v67[24], v68}];
  }

  networkQueueMaxSizeBytes = self->_networkQueueMaxSizeBytes;
  if (self->_packetCountBytesInNetworkQueue > networkQueueMaxSizeBytes && networkQueueMaxSizeBytes)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          packetCountBytesInNetworkQueue = self->_packetCountBytesInNetworkQueue;
          v35 = self->_networkQueueMaxSizeBytes;
          *v63 = 136316162;
          *&v63[4] = v32;
          *&v63[12] = 2080;
          *&v63[14] = "[VCEmulatedNetworkAlgorithmQueueLoss process:]";
          *&v63[22] = 1024;
          LODWORD(v64) = 100;
          WORD2(v64) = 1024;
          *(&v64 + 6) = packetCountBytesInNetworkQueue;
          WORD5(v64) = 1024;
          HIDWORD(v64) = v35;
          v36 = " [%s] %s:%d network queue is full with current size=%d (bytes), limit=%u (bytes)";
          v37 = v33;
          v38 = 40;
LABEL_36:
          _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, v36, v63, v38);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v31 = [(VCEmulatedNetworkAlgorithmQueueLoss *)self performSelector:sel_logPrefix];
      }

      else
      {
        v31 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v41 = self->_packetCountBytesInNetworkQueue;
          v42 = self->_networkQueueMaxSizeBytes;
          *v63 = 136316674;
          *&v63[4] = v39;
          *&v63[12] = 2080;
          *&v63[14] = "[VCEmulatedNetworkAlgorithmQueueLoss process:]";
          *&v63[22] = 1024;
          LODWORD(v64) = 100;
          WORD2(v64) = 2112;
          *(&v64 + 6) = v31;
          HIWORD(v64) = 2048;
          v65 = self;
          LOWORD(v66) = 1024;
          *(&v66 + 2) = v41;
          HIWORD(v66) = 1024;
          *v67 = v42;
          v36 = " [%s] %s:%d %@(%p) network queue is full with current size=%d (bytes), limit=%u (bytes)";
          v37 = v40;
          v38 = 60;
          goto LABEL_36;
        }
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_48;
      }

      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v46 = [a3 packetID];
      v47 = [a3 sequenceNumber];
      v48 = [a3 size];
      [a3 arrivalTime];
      v50 = v49;
      [a3 departureTime];
      *v63 = 136316930;
      *&v63[4] = v44;
      *&v63[12] = 2080;
      *&v63[14] = "[VCEmulatedNetworkAlgorithmQueueLoss process:]";
      *&v63[22] = 1024;
      LODWORD(v64) = 101;
      WORD2(v64) = 1024;
      *(&v64 + 6) = v46;
      WORD5(v64) = 1024;
      HIDWORD(v64) = v47;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = v48;
      HIWORD(v65) = 2048;
      v66 = v50;
      *v67 = 2048;
      *&v67[2] = v51;
      v52 = " [%s] %s:%d dropped packet packetID=%d, sequenceNumber=%d, packet size=%d, arrivalTime=%f, departureTime=%f";
      v53 = v45;
      v54 = 66;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v43 = [(VCEmulatedNetworkAlgorithmQueueLoss *)self performSelector:sel_logPrefix];
      }

      else
      {
        v43 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_48;
      }

      v55 = VRTraceErrorLogLevelToCSTR();
      v56 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v57 = [a3 packetID];
      v58 = [a3 sequenceNumber];
      v59 = [a3 size];
      [a3 arrivalTime];
      v61 = v60;
      [a3 departureTime];
      *v63 = 136317442;
      *&v63[4] = v55;
      *&v63[12] = 2080;
      *&v63[14] = "[VCEmulatedNetworkAlgorithmQueueLoss process:]";
      *&v63[22] = 1024;
      LODWORD(v64) = 101;
      WORD2(v64) = 2112;
      *(&v64 + 6) = v43;
      HIWORD(v64) = 2048;
      v65 = self;
      LOWORD(v66) = 1024;
      *(&v66 + 2) = v57;
      HIWORD(v66) = 1024;
      *v67 = v58;
      *&v67[4] = 1024;
      *&v67[6] = v59;
      *&v67[10] = 2048;
      *&v67[12] = v61;
      *&v67[20] = 2048;
      *&v67[22] = v62;
      v52 = " [%s] %s:%d %@(%p) dropped packet packetID=%d, sequenceNumber=%d, packet size=%d, arrivalTime=%f, departureTime=%f";
      v53 = v56;
      v54 = 86;
    }

    _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, v52, v63, v54);
LABEL_48:
    [a3 setIsLost:{1, *v63, *&v63[8], v64, v65, v66, *v67, *&v67[8], *&v67[16]}];
  }
}

@end