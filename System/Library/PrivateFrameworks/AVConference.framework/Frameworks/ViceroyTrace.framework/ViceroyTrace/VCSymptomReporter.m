@interface VCSymptomReporter
- (VCSymptomReporter)initWithCallID:(unsigned int)a3;
- (int)reportAlgosScoreWithOptionalDictionary:(id)a3;
- (int)reportAudioConnectionTimeRegressedFromTelemetryWithOptionalDictionary:(id)a3;
- (int)reportAudioErasurePercentageRegressedFromTelemetryWithOptionalDictionary:(id)a3;
- (int)reportAudioStall:(id)a3;
- (int)reportBandwidthEstimationMismatch;
- (int)reportCCReliableDataNotReceived:(id)a3;
- (int)reportConnectionSliceStatus:(unsigned int)a3;
- (int)reportConnectionTimeout:(id)a3;
- (int)reportDLTargetBitrateOvershoot;
- (int)reportExtendedPoorConnectionWithOptionalDictionary:(id)a3;
- (int)reportFailedToSetupAudioCodec;
- (int)reportFailedToStartAudio;
- (int)reportFailedToStartVideo;
- (int)reportFrameQueueForDecodeHighWaterMarkExceeded;
- (int)reportHighConsecutiveAudioErasuresWithOptionalDictionary:(id)a3;
- (int)reportIDSDataChannelEventUsageError;
- (int)reportInactiveSlotsInChannelSequence;
- (int)reportInvalidAudioJitterBuffer;
- (int)reportInvalidTransportType;
- (int)reportInvalidUseOfFaceTimeClassicWithOptionalDictionary:(id)a3;
- (int)reportInvalidVideoStallTime;
- (int)reportInvalidVideoTxCaptureFrameCountWithOptionalDictionary:(id)a3;
- (int)reportKeyFrameGenerationFailure;
- (int)reportKeyIndexNotReceived;
- (int)reportLongMediaStallRecoveredWithOptionalDictionary:(id)a3;
- (int)reportMKMDecryptionWithOptionalDictionary:(id)a3;
- (int)reportMediaQueueFlushingTooFrequent;
- (int)reportMediaQueueOvershoot;
- (int)reportMediaQueuePoolEmpty;
- (int)reportMediaSymptomSubtypeConnectionWithContext:(id)a3;
- (int)reportNegativeJitterBufferSize;
- (int)reportNoFirstFrameWithOptionalDictionary:(id)a3;
- (int)reportNoMediaBlob;
- (int)reportNoPackets:(unsigned int)a3 WithOptionalDictionary:(id)a4;
- (int)reportNoRelayResponseWithOptionalDictionary:(id)a3;
- (int)reportNoSNATMAPResponseWithOptionalDictionary:(id)a3;
- (int)reportNoServerStatsActivity;
- (int)reportNoVideoDisplayedFailSafeFIRWithOptionalDictionary:(id)a3;
- (int)reportOSLogSymptomWithDictionary:(id)a3;
- (int)reportPoorConnectionDespiteVideoReceivedWithOptionalDictionary:(id)a3;
- (int)reportPoorConnectionPercentageRegressedFromTelemetryWithOptionalDictionary:(id)a3;
- (int)reportQRATKNTokenError;
- (int)reportRateTargetMismatch;
- (int)reportReceiveSessionStatsFailed;
- (int)reportSelfTerminationWithOptionalDictionary:(id)a3;
- (int)reportSessionInfoErrorResponse;
- (int)reportSignalingFailed:(id)a3;
- (int)reportSignificantHandshakeDelayWithOptionalDictionary:(id)a3;
- (int)reportSustainedHighDownlinkPacketLoss;
- (int)reportSustainedHighUplinkPacketLoss;
- (int)reportSymptomWithGroupID:(id)a3 signature:(id)a4 actions:(id)a5;
- (int)reportSymptomWithIDSDestination:(id)a3 sessionID:(id)a4 type:(id)a5 subType:(id)a6 context:(id)a7;
- (int)reportSymptomWithOptions:(id)a3 type:(id)a4 subType:(id)a5 context:(id)a6;
- (int)reportSymptomWithType:(id)a3 subType:(id)a4 context:(id)a5 actions:(id)a6;
- (int)reportThermalIncreaseAudioOnlyWithOptionalDictionary:(id)a3;
- (int)reportULSRTPEncryptionSetupError;
- (int)reportULTargetBitrateOvershoot;
- (int)reportUnbinnedCameraFormatSelected;
- (int)reportUnexpectedHighRTTWithOptionalDictionary:(id)a3;
- (int)reportUnexpectedLowTargetBitrate;
- (int)reportUnexpectedRampUpFrozen;
- (int)reportV1SpeechAPIEnabled;
- (int)reportVideoConnectionTimeRegressedFromTelemetryWithOptionalDictionary:(id)a3;
- (int)reportVideoReceiverEnqueueFrameRateTooHighWithOptionalDictionary:(id)a3;
- (int)reportVideoStall:(id)a3;
- (int)reportVideoStallPercentageRegressedFromTelemetryWithOptionalDictionary:(id)a3;
- (int)reportVideoSymptom:(id)a3 options:(id)a4;
- (int)requestRemoteSideWithOptions:(id)a3 context:(id)a4 signature:(id)a5;
- (void)VCSymptomReporterSetCallback:(void *)a3 context:(void *)a4;
- (void)dealloc;
- (void)reportSymptom:(unsigned int)a3 optionalDictionary:(id)a4;
@end

@implementation VCSymptomReporter

- (VCSymptomReporter)initWithCallID:(unsigned int)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = VCSymptomReporter;
  v4 = [(VCSymptomReporter *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_callID = a3;
    v4->_reportingQueue = dispatch_queue_create("com.apple.VideoConference.SymptomReporter", 0);
    v5->_osLogNetworkingHandle = os_log_create("com.apple.AVConferenceFramework", "AVConference.Networking");
    bzero(v21, 0x3FDuLL);
    memset(buffer, 63, sizeof(buffer));
    v6 = getpid();
    proc_name(v6, buffer, 0x400u);
    v5->_procName = [objc_alloc(MEMORY[0x277CCACA0]) initWithUTF8String:buffer];
    v7 = CFPreferencesCopyAppValue(@"forceDisableABC", @"com.apple.VideoConference");
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x277CBED28];
      v10 = CFEqual(v7, *MEMORY[0x277CBED28]) == 0;
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR(7u);
        v12 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v13 = CFEqual(v8, v9);
          *buf = 136316162;
          v23 = v11;
          v24 = 2080;
          v25 = "_VCSymptomReporter_IsABCSymptomReportingForceDisabled";
          v26 = 1024;
          v27 = 1259;
          v28 = 2112;
          v29 = @"forceDisableABC";
          v30 = 1024;
          v31 = v13;
          _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: user-default[%@]=%d", buf, 0x2Cu);
        }
      }

      CFRelease(v8);
    }

    else
    {
      v10 = 1;
    }

    v5->_isSymptomReportingEnabled = v10;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR(7u);
      v15 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        isSymptomReportingEnabled = v5->_isSymptomReportingEnabled;
        *buf = 136315906;
        v23 = v14;
        v24 = 2080;
        v25 = "[VCSymptomReporter initWithCallID:]";
        v26 = 1024;
        v27 = 150;
        v28 = 1024;
        LODWORD(v29) = isSymptomReportingEnabled;
        _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isSymptomReportingEnabled=%d", buf, 0x22u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)reportSymptom:(unsigned int)a3 optionalDictionary:(id)a4
{
  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__VCSymptomReporter_reportSymptom_optionalDictionary___block_invoke;
  block[3] = &unk_278BD48B8;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(reportingQueue, block);
}

void __54__VCSymptomReporter_reportSymptom_optionalDictionary___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reportSymptomInternal:*(a1 + 48) optionalDictionary:*(a1 + 40)];
  if (v2 < 0)
  {
    v4 = v2;
    if (v2 == -2144337879)
    {
      if ((*(*(a1 + 32) + *(a1 + 48) + 145) & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 6)
        {
          v5 = VRTraceErrorLogLevelToCSTR(6u);
          v6 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 48);
            v11 = 136315906;
            v12 = v5;
            v13 = 2080;
            v14 = "[VCSymptomReporter reportSymptom:optionalDictionary:]_block_invoke";
            v15 = 1024;
            v16 = 161;
            v17 = 1024;
            v18 = v7;
            _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: A symptom for this session has already been submitted, skipping symptomID %d", &v11, 0x22u);
          }
        }

        *(*(a1 + 32) + *(a1 + 48) + 145) = 1;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR(3u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 48);
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCSymptomReporter reportSymptom:optionalDictionary:]_block_invoke";
        v15 = 1024;
        v16 = 165;
        v17 = 1024;
        v18 = v10;
        v19 = 1024;
        v20 = v4;
        _os_log_error_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d SymptomReporter: report for symptomID %d failed with error %08X", &v11, 0x28u);
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)VCSymptomReporterSetCallback:(void *)a3 context:(void *)a4
{
  if (a4)
  {
    CFRetain(a4);
  }

  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__VCSymptomReporter_VCSymptomReporterSetCallback_context___block_invoke;
  block[3] = &unk_278BD4FE0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(reportingQueue, block);
}

void __58__VCSymptomReporter_VCSymptomReporterSetCallback_context___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = *(a1 + 40);
  objc_storeWeak((*(a1 + 32) + 56), *(a1 + 48));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)dealloc
{
  dispatch_release(self->_reportingQueue);

  v3.receiver = self;
  v3.super_class = VCSymptomReporter;
  [(VCSymptomReporter *)&v3 dealloc];
}

- (int)reportRateTargetMismatch
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportRateTargetMismatch]";
      v12 = 1024;
      v13 = 434;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom rate target mismatch for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"RateTargetMismatch" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportBandwidthEstimationMismatch
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportBandwidthEstimationMismatch]";
      v12 = 1024;
      v13 = 439;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom bandwidth estimation mismatch for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"BandwidthEstimation" context:@"BandwidthEstimationMismatch" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportNoMediaBlob
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportNoMediaBlob]";
      v12 = 1024;
      v13 = 444;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom no media blob for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"MediaBlob" context:@"NoMediaBlob" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportSignalingFailed:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportSignalingFailed:]";
      v14 = 1024;
      v15 = 449;
      v16 = 1024;
      v17 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom signaling failed for session %u", &v10, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"SIP" context:@"SignalingFailed"];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportConnectionTimeout:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportConnectionTimeout:]";
      v14 = 1024;
      v15 = 462;
      v16 = 1024;
      v17 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom connection timeout for session %u", &v10, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"Connection" context:@"ConnectionTimeout"];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportNoRelayResponseWithOptionalDictionary:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (a3 && [a3 objectForKeyedSubscript:@"SymptomReporterOptionalKeyEndpointIP"])
  {
    v6 = [a3 objectForKeyedSubscript:@"SymptomReporterOptionalKeyEndpointIP"];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callID = self->_callID;
        v12 = 136316162;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCSymptomReporter reportNoRelayResponseWithOptionalDictionary:]";
        v16 = 1024;
        v17 = 481;
        v18 = 1024;
        v19 = callID;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom no relay response for session %u (server IP %@)", &v12, 0x2Cu);
      }
    }

    v3 = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"Relay" context:@"NoRelayResponse"];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)reportNoSNATMAPResponseWithOptionalDictionary:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (a3 && [a3 objectForKeyedSubscript:@"SymptomReporterOptionalKeyEndpointIP"])
  {
    v6 = [a3 objectForKeyedSubscript:@"SymptomReporterOptionalKeyEndpointIP"];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callID = self->_callID;
        v12 = 136316162;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCSymptomReporter reportNoSNATMAPResponseWithOptionalDictionary:]";
        v16 = 1024;
        v17 = 500;
        v18 = 1024;
        v19 = callID;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom no SNATMAP response for session %u (server IP %@)", &v12, 0x2Cu);
      }
    }

    v3 = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"SNATMAP" context:@"NoSNATMAPResponse"];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)reportFailedToStartAudio
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportFailedToStartAudio]";
      v12 = 1024;
      v13 = 513;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom failed to start audio for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"FailedToStartAudio" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportFailedToSetupAudioCodec
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportFailedToSetupAudioCodec]";
      v12 = 1024;
      v13 = 518;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom failed to setup audio codec for session=%u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"FailedToSetUpAudioCodec" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportULSRTPEncryptionSetupError
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportULSRTPEncryptionSetupError]";
      v12 = 1024;
      v13 = 523;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom failed to setup SRTP encryption on UL for session=%u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Security" context:@"ULSRTPEncryptionSetupError" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportFailedToStartVideo
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportFailedToStartVideo]";
      v12 = 1024;
      v13 = 528;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom failed to start video for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"FailedToStartVideo" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportNoFirstFrameWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportNoFirstFrameWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 535;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on NoFirstRemoteFrame with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"Video" context:@"NoFirstFrame"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportNoPackets:(unsigned int)a3 WithOptionalDictionary:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (a3 == 12)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCSymptomReporter reportNoPackets:WithOptionalDictionary:]";
        v19 = 1024;
        v20 = 550;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on NoRemotePacket with remote participant", &v15, 0x1Cu);
      }
    }

    v10 = @"NoPackets";
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR(7u);
      v12 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCSymptomReporter reportNoPackets:WithOptionalDictionary:]";
        v19 = 1024;
        v20 = 553;
        _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on NoRemotePacketWiFi with remote participant", &v15, 0x1Cu);
      }
    }

    v10 = @"NoPacketsWiFi";
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a4 type:@"Networking" subType:@"ConnectionHealth" context:v10];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportCCReliableDataNotReceived:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportCCReliableDataNotReceived:]";
      v13 = 1024;
      v14 = 566;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom CCReliableDataNotReceived with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"Connection" context:@"CCReliableDataNotReceived"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportMKMDecryptionWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportMKMDecryptionWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 579;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on MKMDecryption with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"Security" context:@"MKMDecryption"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportExtendedPoorConnectionWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportExtendedPoorConnectionWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 591;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on ExtendedPoorConnection with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"ConnectionHealth" context:@"ExtendedPoorConnection"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportSignificantHandshakeDelayWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportSignificantHandshakeDelayWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 603;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on SignificantHandshakeDelay with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"ConnectionHealth" context:@"SignificantHandshakeDelay"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportAudioStall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportAudioStall:]";
      v14 = 1024;
      v15 = 614;
      v16 = 1024;
      v17 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom audio stall for session %u", &v10, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"ConnectionHealth" context:@"AudioStall"];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportVideoStall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportVideoStall:]";
      v14 = 1024;
      v15 = 627;
      v16 = 1024;
      v17 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom video stall for session %u", &v10, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"ConnectionHealth" context:@"VideoStall"];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportAlgosScoreWithOptionalDictionary:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (a3)
  {
    v6 = [a3 objectForKeyedSubscript:@"kSymptomReporterAlgosDictionaryKey"];
    v7 = [a3 objectForKeyedSubscript:@"kSymptomReporterClientUUID"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (v6 && v7)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR(7u);
        v10 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          callID = self->_callID;
          v21 = 136316162;
          v22 = v9;
          v23 = 2080;
          v24 = "[VCSymptomReporter reportAlgosScoreWithOptionalDictionary:]";
          v25 = 1024;
          v26 = 651;
          v27 = 1024;
          *v28 = callID;
          *&v28[4] = 2112;
          *&v28[6] = v6;
          _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom ALGOS for session=%u using algosDictionary=%@", &v21, 0x2Cu);
        }
      }

      v12 = [(VCSymptomReporter *)self symptomNameWithDomain:@"AVConference" subtypeContext:@"AlgosScore"];
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v13 setObject:v12 forKey:@"name"];
      [v13 setObject:v6 forKey:v12];
      if ([v7 isEqualToString:@"00000000-0000-0000-0000-000000000000"])
      {
        v14 = [MEMORY[0x277CCACA0] stringWithUTF8String:"com.apple.facetime"];
        v15 = @"BundleID";
        v16 = v13;
      }

      else
      {
        v15 = @"uuid";
        v16 = v13;
        v14 = v7;
      }

      [v16 setObject:v14 forKey:v15];
      v3 = [(VCSymptomReporter *)self reportOSLogSymptomWithDictionary:v13];
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR(7u);
      v18 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136316162;
        v22 = v17;
        v23 = 2080;
        v24 = "[VCSymptomReporter reportAlgosScoreWithOptionalDictionary:]";
        v25 = 1024;
        v26 = 647;
        v27 = 2112;
        *v28 = v7;
        *&v28[8] = 2112;
        *&v28[10] = v6;
        _os_log_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clientUUID=%@, algosDictionary=%@", &v21, 0x30u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)reportNegativeJitterBufferSize
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportNegativeJitterBufferSize]";
      v12 = 1024;
      v13 = 675;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom wrong jitter buffer size for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"NegativeJitterBufferSize" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportIDSDataChannelEventUsageError
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportIDSDataChannelEventUsageError]";
      v12 = 1024;
      v13 = 680;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom IDSDataChannelEventUsageError for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"IDSDataChannelEventUsageError" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportQRATKNTokenError
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportQRATKNTokenError]";
      v12 = 1024;
      v13 = 686;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom QRATKNTokenError for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"QRATKNTokenError" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportReceiveSessionStatsFailed
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportReceiveSessionStatsFailed]";
      v12 = 1024;
      v13 = 691;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom ReceiveSessionStatsFailed for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"ReceiveSessionStatsFailed" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportSessionInfoErrorResponse
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportSessionInfoErrorResponse]";
      v12 = 1024;
      v13 = 701;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom SessionInfoErrorResponse for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"SessionInfoErrorResponse" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportKeyIndexNotReceived
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportKeyIndexNotReceived]";
      v12 = 1024;
      v13 = 711;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom KeyIndexNotReceived for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Security" context:@"KeyIndexNotReceived" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportMediaQueuePoolEmpty
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportMediaQueuePoolEmpty]";
      v12 = 1024;
      v13 = 716;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom MediaQueuePoolEmpty for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"MediaQueue" context:@"MediaQueuePoolEmpty" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportULTargetBitrateOvershoot
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportULTargetBitrateOvershoot]";
      v12 = 1024;
      v13 = 722;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom ULTargetBitrateOvershoot for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"ULTargetBitrateOvershoot" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportDLTargetBitrateOvershoot
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportDLTargetBitrateOvershoot]";
      v12 = 1024;
      v13 = 727;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom DLTargetBitrateOvershoot for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"DLTargetBitrateOvershoot" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportUnexpectedLowTargetBitrate
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportUnexpectedLowTargetBitrate]";
      v12 = 1024;
      v13 = 732;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom UnexpectedLowTargetBitrate for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"UnexpectedLowTargetBitrate" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportMediaQueueOvershoot
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportMediaQueueOvershoot]";
      v12 = 1024;
      v13 = 738;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom MediaQueueOvershoot for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"MediaQueue" context:@"MediaQueueOvershoot" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportMediaQueueFlushingTooFrequent
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportMediaQueueFlushingTooFrequent]";
      v12 = 1024;
      v13 = 744;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom MediaQueueFlushingTooFrequent for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"MediaQueue" context:@"MediaQueueFlushingTooFrequent" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportHighConsecutiveAudioErasuresWithOptionalDictionary:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportHighConsecutiveAudioErasuresWithOptionalDictionary:]";
      v14 = 1024;
      v15 = 751;
      v16 = 1024;
      v17 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom HighConsecutiveAudioErasures for session %u", &v10, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Media" subType:@"Audio" context:@"HighConsecutiveAudioErasures"];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportUnexpectedHighRTTWithOptionalDictionary:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportUnexpectedHighRTTWithOptionalDictionary:]";
      v14 = 1024;
      v15 = 762;
      v16 = 1024;
      v17 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom UnexpectedHighRTT with remote participant for session %u", &v10, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"RateAdaptation" context:@"UnexpectedHighRTT"];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportUnexpectedRampUpFrozen
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportUnexpectedRampUpFrozen]";
      v12 = 1024;
      v13 = 770;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom UnexpectedRampUpFrozen for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"UnexpectedRampUpFrozen" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportNoServerStatsActivity
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportNoServerStatsActivity]";
      v12 = 1024;
      v13 = 776;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom NoServerStatsActivity for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"RateAdaptation" context:@"NoServerStatsActivity" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportSustainedHighUplinkPacketLoss
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportSustainedHighUplinkPacketLoss]";
      v12 = 1024;
      v13 = 782;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom SustainedHighUplinkPacketLoss for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"ConnectionHealth" context:@"SustainedHighUplinkPacketLoss" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportSustainedHighDownlinkPacketLoss
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportSustainedHighDownlinkPacketLoss]";
      v12 = 1024;
      v13 = 788;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom SustainedHighDownlinkPacketLoss for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"ConnectionHealth" context:@"SustainedHighDownlinkPacketLoss" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportInvalidTransportType
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportInvalidTransportType]";
      v12 = 1024;
      v13 = 794;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom InvalidTransportType for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"InvalidTransportType" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportInactiveSlotsInChannelSequence
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportInactiveSlotsInChannelSequence]";
      v12 = 1024;
      v13 = 800;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom InactiveSlotsInChannelSequence for session %u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"Connection" context:@"InactiveSlotsInChannelSequence" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportInvalidVideoStallTime
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportInvalidVideoStallTime]";
      v12 = 1024;
      v13 = 806;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom invalid video stall time for callID=%u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"InvalidVideoStallTime" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportFrameQueueForDecodeHighWaterMarkExceeded
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportFrameQueueForDecodeHighWaterMarkExceeded]";
      v12 = 1024;
      v13 = 811;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom frameQueueForDecode high watermark exceeded for callID=%u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"FrameQueueForDecodeHighWaterMarkExceeded" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportSelfTerminationWithOptionalDictionary:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"SymptomReporterOptionalKeyTerminationSource"];
  v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@SelfTermination", v5];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR(7u);
    v8 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v9 = [objc_msgSend(v6 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      callID = self->_callID;
      *buf = 136316162;
      v14 = v7;
      v15 = 2080;
      v16 = "[VCSymptomReporter reportSelfTerminationWithOptionalDictionary:]";
      v17 = 1024;
      v18 = 820;
      v19 = 2080;
      v20 = v9;
      v21 = 1024;
      v22 = callID;
      _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom %s for session=%u", buf, 0x2Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Media" subType:@"Termination" context:v6];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportInvalidUseOfFaceTimeClassicWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportInvalidUseOfFaceTimeClassicWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 832;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on InvalidUseOfFaceTimeClassic with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"Connection" context:@"InvalidFaceTimeClassic"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportKeyFrameGenerationFailure
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportKeyFrameGenerationFailure]";
      v12 = 1024;
      v13 = 843;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom KeyFrameGenerationFailure for session=%u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"KeyFrameGenerationFailure" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportAudioConnectionTimeRegressedFromTelemetryWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportAudioConnectionTimeRegressedFromTelemetryWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 849;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on AudioConnectionTimeRegressedFromTelemetry with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"ConnectionHealth" context:@"AudioConnectionTimeRegressedFromTelemetry"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportAudioErasurePercentageRegressedFromTelemetryWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportAudioErasurePercentageRegressedFromTelemetryWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 861;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on AudioErasurePercentageRegressedFromTelemetry with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Media" subType:@"Audio" context:@"AudioErasurePercentageRegressedFromTelemetry"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportPoorConnectionPercentageRegressedFromTelemetryWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportPoorConnectionPercentageRegressedFromTelemetryWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 873;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on PoorConnectionPercentageRegresseFromTelemetry with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Media" subType:@"Video" context:@"PoorConnectionPercentageRegressedFromTelemetry"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportVideoStallPercentageRegressedFromTelemetryWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportVideoStallPercentageRegressedFromTelemetryWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 885;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on VideoStallPercentageRegressedFromTelemetry with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Media" subType:@"Video" context:@"VideoStallPercentageRegressedFromTelemetry"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportVideoConnectionTimeRegressedFromTelemetryWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportVideoConnectionTimeRegressedFromTelemetryWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 897;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on VideoConnectionTimeRegressedFromTelemetry with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"Connection" context:@"VideoConnectionTimeRegressedFromTelemetry"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportThermalIncreaseAudioOnlyWithOptionalDictionary:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (a3 && [a3 objectForKeyedSubscript:@"SymptomReporterOptionalKeyThermalPressureLevel"])
  {
    v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SymptomReporterOptionalKeyThermalPressureLevel", "intValue"}];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callID = self->_callID;
        v12 = 136316162;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCSymptomReporter reportThermalIncreaseAudioOnlyWithOptionalDictionary:]";
        v16 = 1024;
        v17 = 914;
        v18 = 1024;
        v19 = callID;
        v20 = 1024;
        v21 = v6;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on ThermalIncreaseAudioOnly for session=%u (thermal pressure level=%d)", &v12, 0x28u);
      }
    }

    v3 = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Media" subType:@"Audio" context:@"ThermalIncreaseAudioOnly"];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)reportPoorConnectionDespiteVideoReceivedWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportPoorConnectionDespiteVideoReceivedWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 923;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on PoorConnectionDespiteVideoReceived with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Media" subType:@"Video" context:@"PoorConnectionDespiteVideoReceived"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportVideoSymptom:(id)a3 options:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") < 7)
  {
    goto LABEL_14;
  }

  __str = 0;
  callID = self->_callID;
  if (a3)
  {
    v8 = [objc_msgSend(a3 "description")];
    if (a4)
    {
LABEL_4:
      v9 = [objc_msgSend(a4 "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v8 = "<nil>";
    if (a4)
    {
      goto LABEL_4;
    }
  }

  v9 = "<nil>";
LABEL_7:
  asprintf(&__str, "_callID=%u, context=%s, options=%s", callID, v8, v9);
  if (__str)
  {
    __lasts = 0;
    v10 = strtok_r(__str, "\n", &__lasts);
    do
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR(7u);
        v12 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v18 = v11;
          v19 = 2080;
          v20 = "[VCSymptomReporter reportVideoSymptom:options:]";
          v21 = 1024;
          v22 = 938;
          v23 = 2080;
          v24 = "ABC_Video";
          v25 = 2080;
          v26 = v10;
          _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v10 = strtok_r(0, "\n", &__lasts);
    }

    while (v10);
    free(__str);
  }

LABEL_14:
  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a4 type:@"Media" subType:@"Video" context:a3];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportMediaSymptomSubtypeConnectionWithContext:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136316162;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportMediaSymptomSubtypeConnectionWithContext:]";
      v14 = 1024;
      v15 = 950;
      v16 = 2112;
      v17 = a3;
      v18 = 1024;
      v19 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom context=%@ for session=%u", &v10, 0x2Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Connection" context:a3 actions:0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportSymptomWithType:(id)a3 subType:(id)a4 context:(id)a5 actions:(id)a6
{
  dispatch_assert_queue_V2(self->_reportingQueue);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  diagnosticReporter = self->_diagnosticReporter;
  if (!diagnosticReporter)
  {
    diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);
    self->_diagnosticReporter = diagnosticReporter;
  }

  v12 = [(SDRDiagnosticReporter *)diagnosticReporter signatureWithDomain:@"AVConference" type:a3 subType:a4 detectedProcess:self->_procName triggerThresholdValues:0];
  [v12 setObject:a5 forKeyedSubscript:*MEMORY[0x277D6B1F0]];
  v13 = self->_diagnosticReporter;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__VCSymptomReporter_reportSymptomWithType_subType_context_actions___block_invoke;
  v16[3] = &unk_278BD5550;
  v16[4] = v12;
  v16[5] = &v17;
  [(SDRDiagnosticReporter *)v13 snapshotWithSignature:v12 duration:0 events:0 payload:a6 actions:v16 reply:0.0];
  v14 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v14;
}

void __67__VCSymptomReporter_reportSymptomWithType_subType_context_actions___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x277D6B198]), "BOOLValue"}];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (v3)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR(7u);
      v6 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        if (v7)
        {
          v8 = [objc_msgSend(v7 "description")];
        }

        else
        {
          v8 = "<nil>";
        }

        v10 = 136315906;
        v11 = v5;
        v12 = 2080;
        v13 = "[VCSymptomReporter reportSymptomWithType:subType:context:actions:]_block_invoke";
        v14 = 1024;
        v15 = 974;
        v16 = 2080;
        v17 = v8;
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: Sent snapshot for signature %s", &v10, 0x26u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __67__VCSymptomReporter_reportSymptomWithType_subType_context_actions___block_invoke_cold_1();
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = -2144337899;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int)reportLongMediaStallRecoveredWithOptionalDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportLongMediaStallRecoveredWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 987;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on LongMediaStallRecovered with remote participant", &v9, 0x1Cu);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Networking" subType:@"ConnectionHealth" context:@"LongMediaStallRecovered"];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportConnectionSliceStatus:(unsigned int)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136316162;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportConnectionSliceStatus:]";
      v14 = 1024;
      v15 = 1000;
      v16 = 1024;
      v17 = callID;
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on connection Slice status for callID=%u symptomID=%d", &v10, 0x28u);
    }
  }

  if (a3 - 75 > 3)
  {
    result = 0;
  }

  else
  {
    result = [(VCSymptomReporter *)self reportSymptomWithType:@"Networking" subType:@"ConnectionHealth" context:off_278BD55E0[a3 - 75] actions:0];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportVideoReceiverEnqueueFrameRateTooHighWithOptionalDictionary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCSymptomReporter reportVideoReceiverEnqueueFrameRateTooHighWithOptionalDictionary:]";
      v13 = 1024;
      v14 = 1024;
      v15 = 2112;
      v16 = a3;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on VideoReceiverEnqueueFrameRateTooHigh optionalDictionary=%@", &v9, 0x26u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"VideoReceiverEnqueueFrameRateTooHigh" actions:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportNoVideoDisplayedFailSafeFIRWithOptionalDictionary:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCSymptomReporter reportNoVideoDisplayedFailSafeFIRWithOptionalDictionary:]";
      v14 = 1024;
      v15 = 1036;
      v16 = 1024;
      v17 = callID;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on NoVideoDisplayedFailSafeFIR for callID=%u", &v10, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithOptions:a3 type:@"Media" subType:@"Video" context:@"NoVideoDisplayedFailSafeFIR"];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportUnbinnedCameraFormatSelected
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportUnbinnedCameraFormatSelected]";
      v12 = 1024;
      v13 = 1047;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom on UnbinnedCameraFormatSelected for callID=%u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"UnbinnedCameraFormatSelected" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportInvalidAudioJitterBuffer
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportInvalidAudioJitterBuffer]";
      v12 = 1024;
      v13 = 1052;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom InvalidAudioJitterBuffer for session=%u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"InvalidJitterBuffer" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportV1SpeechAPIEnabled
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSymptomReporter reportV1SpeechAPIEnabled]";
      v12 = 1024;
      v13 = 1057;
      v14 = 1024;
      v15 = callID;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom V1SpeechAPIEnabled for session=%u", &v8, 0x22u);
    }
  }

  result = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Audio" context:@"V1SpeechAPIEnabled" actions:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)reportInvalidVideoTxCaptureFrameCountWithOptionalDictionary:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = -2144337919;
  if (a3 && [a3 objectForKeyedSubscript:@"SymptomReporterOptionalKeyCaptureFrameCount"])
  {
    v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SymptomReporterOptionalKeyCaptureFrameCount", "intValue"}];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callID = self->_callID;
        v12 = 136316162;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCSymptomReporter reportInvalidVideoTxCaptureFrameCountWithOptionalDictionary:]";
        v16 = 1024;
        v17 = 1066;
        v18 = 1024;
        v19 = callID;
        v20 = 1024;
        v21 = v6;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: reporting symptom InvalidVideoTxCaptureFrameCount for session=%u (frame count=%d)", &v12, 0x28u);
      }
    }

    v3 = [(VCSymptomReporter *)self reportSymptomWithType:@"Media" subType:@"Video" context:@"InvalidVideoTxCaptureFrameCount" actions:0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)reportSymptomWithIDSDestination:(id)a3 sessionID:(id)a4 type:(id)a5 subType:(id)a6 context:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_reportingQueue);
  diagnosticReporter = self->_diagnosticReporter;
  if (!diagnosticReporter)
  {
    diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);
    self->_diagnosticReporter = diagnosticReporter;
  }

  v14 = [(SDRDiagnosticReporter *)diagnosticReporter signatureWithDomain:@"AVConference" type:a5 subType:a6 detectedProcess:self->_procName triggerThresholdValues:a4];
  [v14 setObject:a7 forKeyedSubscript:*MEMORY[0x277D6B1F0]];
  v15 = [(SDRDiagnosticReporter *)self->_diagnosticReporter snapshotWithSignature:v14 withIDSDestinations:a3 validFor:0 duration:0 events:0 payload:&__block_literal_global_2 actions:600.0 reply:15.0];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (v15)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR(7u);
      v18 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        if (v14)
        {
          v19 = [objc_msgSend(v14 "description")];
        }

        else
        {
          v19 = "<nil>";
        }

        v23 = 136315906;
        v24 = v17;
        v25 = 2080;
        v26 = "[VCSymptomReporter reportSymptomWithIDSDestination:sessionID:type:subType:context:]";
        v27 = 1024;
        v28 = 1103;
        v29 = 2080;
        v30 = v19;
        _os_log_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: Sent snapshot for signature %s", &v23, 0x26u);
      }
    }

    v20 = 0;
  }

  else
  {
    v20 = -2144337899;
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCSymptomReporter reportSymptomWithIDSDestination:sessionID:type:subType:context:];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void __84__VCSymptomReporter_reportSymptomWithIDSDestination_sessionID_type_subType_context___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v5 = "<nil>";
      }

      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSymptomReporter reportSymptomWithIDSDestination:sessionID:type:subType:context:]_block_invoke";
      v11 = 1024;
      v12 = 1098;
      v13 = 2080;
      v14 = v5;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: got response from diagnosticReporter - %s", &v7, 0x26u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (int)reportOSLogSymptomWithDictionary:(id)a3
{
  dispatch_assert_queue_V2(self->_reportingQueue);
  if (a3 && [MEMORY[0x277CCAA98] isValidJSONObject:a3] && (v5 = objc_msgSend(MEMORY[0x277CCAA98], "dataWithJSONObject:options:error:", a3, 0, 0)) != 0 && (v6 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA0]), "initWithData:encoding:", v5, 4)) != 0)
  {
    v7 = v6;
    if (os_log_type_enabled(self->_osLogNetworkingHandle, OS_LOG_TYPE_ERROR))
    {
      [VCSymptomReporter reportOSLogSymptomWithDictionary:v7];
    }

    return 0;
  }

  else
  {
    v8 = -2144337919;
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCSymptomReporter reportOSLogSymptomWithDictionary:];
      }
    }
  }

  return v8;
}

- (int)reportSymptomWithGroupID:(id)a3 signature:(id)a4 actions:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR(7u);
    v10 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = v9;
      v23 = 2080;
      v24 = "[VCSymptomReporter reportSymptomWithGroupID:signature:actions:]";
      v25 = 1024;
      v26 = 1135;
      v27 = 2112;
      v28 = a3;
      _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: symptomGroupID=%@ receives request to trigger symptom", buf, 0x26u);
    }
  }

  if (!self->_isSymptomReportingEnabled)
  {
    goto LABEL_15;
  }

  [a4 setObject:a3 forKeyedSubscript:*MEMORY[0x277D6B1B0]];
  diagnosticReporter = self->_diagnosticReporter;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__VCSymptomReporter_reportSymptomWithGroupID_signature_actions___block_invoke;
  v20[3] = &unk_278BD5598;
  v20[4] = self;
  v12 = [(SDRDiagnosticReporter *)diagnosticReporter snapshotWithSignature:a4 duration:0 events:0 payload:a5 actions:v20 reply:0.0];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (v12)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR(7u);
      v15 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        if (a4)
        {
          v16 = [objc_msgSend(a4 "description")];
        }

        else
        {
          v16 = "<nil>";
        }

        *buf = 136315906;
        v22 = v14;
        v23 = 2080;
        v24 = "[VCSymptomReporter reportSymptomWithGroupID:signature:actions:]";
        v25 = 1024;
        v26 = 1152;
        v27 = 2080;
        v28 = v16;
        _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: Sent snapshot for signature %s", buf, 0x26u);
      }
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  v17 = -2144337899;
  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCSymptomReporter reportSymptomWithGroupID:signature:actions:];
    }
  }

LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void __64__VCSymptomReporter_reportSymptomWithGroupID_signature_actions___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v6 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      v12 = 136315906;
      v13 = v4;
      v14 = 2080;
      v15 = "[VCSymptomReporter reportSymptomWithGroupID:signature:actions:]_block_invoke";
      v16 = 1024;
      v17 = 1142;
      v18 = 2080;
      v19 = v6;
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: got response from diagnosticReporter - %s", &v12, 0x26u);
    }
  }

  v7 = *MEMORY[0x277D6B168];
  if ([a2 objectForKeyedSubscript:*MEMORY[0x277D6B168]])
  {
    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{v7), "intValue"}];
    if (v8 == *MEMORY[0x277D6B040])
    {
      *(*(a1 + 32) + 226) = 0;
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR(7u);
        v10 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315650;
          v13 = v9;
          v14 = 2080;
          v15 = "[VCSymptomReporter reportSymptomWithGroupID:signature:actions:]_block_invoke";
          v16 = 1024;
          v17 = 1146;
          _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: symptom reporting is disabled!", &v12, 0x1Cu);
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int)requestRemoteSideWithOptions:(id)a3 context:(id)a4 signature:(id)a5
{
  v5 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (self->_isSymptomReportingEnabled)
  {
    diagnosticReporter = self->_diagnosticReporter;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__VCSymptomReporter_requestRemoteSideWithOptions_context_signature___block_invoke;
    v13[3] = &unk_278BD55C0;
    v13[4] = self;
    v13[5] = a3;
    v13[6] = a4;
    v13[7] = a5;
    v13[8] = &v14;
    if ([(SDRDiagnosticReporter *)diagnosticReporter groupCaseIdentifierForSignature:a5 reply:v13])
    {
      v5 = *(v15 + 6);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR(3u);
        v9 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          if (a5)
          {
            v10 = [objc_msgSend(a5 "description")];
          }

          else
          {
            v10 = "<nil>";
          }

          [(VCSymptomReporter *)v10 requestRemoteSideWithOptions:buf context:v8 signature:v9];
        }
      }

      v5 = -2144337899;
      *(v15 + 6) = -2144337899;
    }
  }

  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

void __68__VCSymptomReporter_requestRemoteSideWithOptions_context_signature___block_invoke(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x277D6B198]), "BOOLValue"}])
  {
    Weak = objc_loadWeak((a1[4] + 56));
    v5 = Weak;
    if (*(a1[4] + 48))
    {
      v6 = Weak == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR(7u);
        v8 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1[4] + 48);
          v25 = 136316162;
          v26 = v7;
          v27 = 2080;
          v28 = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]_block_invoke";
          v29 = 1024;
          v30 = 1180;
          v31 = 2048;
          v32 = v5;
          v33 = 2048;
          v34 = v9;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: invalid symptomReporterCallback: %p or _symptomReporterCallback: %p", &v25, 0x30u);
        }
      }
    }

    else
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1[5]];
      v17 = [a2 objectForKeyedSubscript:*MEMORY[0x277D6B160]];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
      if (ErrorLogLevelForModule >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR(7u);
        v20 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1[4] + 48);
          v25 = 136316162;
          v26 = v19;
          v27 = 2080;
          v28 = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]_block_invoke";
          v29 = 1024;
          v30 = 1175;
          v31 = 2112;
          v32 = v17;
          v33 = 2048;
          v34 = v21;
          _os_log_impl(&dword_23D4DF000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: symptomGroupID: %@ send message to collect remote log, _symptomReporterCallback: %p", &v25, 0x30u);
        }
      }

      [v16 setObject:a1[6] forKeyedSubscript:@"SymptomReporterCallbackKeySymptomID"];
      [v16 setObject:v17 forKeyedSubscript:@"SymptomReporterCallbackKeyGroupID"];
      (*(a1[4] + 48))(v5, v16);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR(3u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v23 = a1[7];
        if (v23)
        {
          v24 = [objc_msgSend(v23 "description")];
        }

        else
        {
          v24 = "<nil>";
        }

        v25 = 136316162;
        v26 = v10;
        v27 = 2080;
        v28 = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]_block_invoke";
        v29 = 1024;
        v30 = 1183;
        v31 = 2080;
        v32 = v24;
        v33 = 2112;
        v34 = a2;
        _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d reportSymptomWithTypeWantsRemoteLog: Failed to get group case ID for signature %s response %@", &v25, 0x30u);
      }
    }

    v12 = *MEMORY[0x277D6B168];
    if ([a2 objectForKeyedSubscript:*MEMORY[0x277D6B168]])
    {
      v13 = [objc_msgSend(a2 objectForKeyedSubscript:{v12), "intValue"}];
      if (v13 == *MEMORY[0x277D6B040])
      {
        *(a1[4] + 226) = 0;
        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR(7u);
          v15 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 136315650;
            v26 = v14;
            v27 = 2080;
            v28 = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]_block_invoke";
            v29 = 1024;
            v30 = 1187;
            _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: symptom reporting is disabled!", &v25, 0x1Cu);
          }
        }
      }
    }

    *(*(a1[8] + 8) + 24) = -2144337899;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (int)reportSymptomWithOptions:(id)a3 type:(id)a4 subType:(id)a5 context:(id)a6
{
  dispatch_assert_queue_V2(self->_reportingQueue);
  diagnosticReporter = self->_diagnosticReporter;
  if (!diagnosticReporter)
  {
    diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);
    self->_diagnosticReporter = diagnosticReporter;
  }

  v12 = [(SDRDiagnosticReporter *)diagnosticReporter signatureWithDomain:@"AVConference" type:a4 subType:a5 detectedProcess:self->_procName triggerThresholdValues:0];
  v13 = [a3 objectForKeyedSubscript:@"SymptomReporterOptionalKeyGroupID"];
  v14 = [a3 objectForKeyedSubscript:@"SymptomReporterOptionalIsLocalSideOnly"];
  if (v13)
  {
    if (!v14 || !CFEqual(v14, *MEMORY[0x277CBED28]))
    {
      a6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@%@", a6, @"Group"];
    }

    [v12 setObject:a6 forKeyedSubscript:*MEMORY[0x277D6B1F0]];
    v15 = self;
    v16 = v13;
LABEL_8:

    return [(VCSymptomReporter *)v15 reportSymptomWithGroupID:v16 signature:v12 actions:0];
  }

  if (v14 && CFEqual(v14, *MEMORY[0x277CBED28]))
  {
    if (a6)
    {
      [v12 setObject:a6 forKeyedSubscript:*MEMORY[0x277D6B1F0]];
    }

    v15 = self;
    v16 = 0;
    goto LABEL_8;
  }

  return [(VCSymptomReporter *)self requestRemoteSideWithOptions:a3 context:a6 signature:v12];
}

- (void)reportSymptomInternal:(os_log_t)log optionalDictionary:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCSymptomReporter reportSymptomInternal:optionalDictionary:]";
  v8 = 1024;
  v9 = 423;
  v10 = 1024;
  v11 = a2;
  _os_log_error_impl(&dword_23D4DF000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d SymptomReporter: unknown symptom ID %d", &v4, 0x22u);
  v3 = *MEMORY[0x277D85DE8];
}

void __67__VCSymptomReporter_reportSymptomWithType_subType_context_actions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  v0 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportSymptomWithIDSDestination:sessionID:type:subType:context:.cold.1()
{
  OUTLINED_FUNCTION_18_0();
  v1 = *MEMORY[0x277D85DE8];
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)reportOSLogSymptomWithDictionary:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reportOSLogSymptomWithDictionary:.cold.2()
{
  OUTLINED_FUNCTION_18_0();
  v7 = *MEMORY[0x277D85DE8];
  [objc_msgSend(v0 "description")];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reportSymptomWithGroupID:signature:actions:.cold.1()
{
  OUTLINED_FUNCTION_18_0();
  v1 = *MEMORY[0x277D85DE8];
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestRemoteSideWithOptions:(uint64_t)a3 context:(os_log_t)log signature:.cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = "[VCSymptomReporter requestRemoteSideWithOptions:context:signature:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 1192;
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_23D4DF000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d SymptomReporter: Invalid parameters for signature %s", buf, 0x26u);
}

@end