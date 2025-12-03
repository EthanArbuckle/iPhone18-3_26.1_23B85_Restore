@interface AVCRateControlFeedbackController
- (AVCRateControlFeedbackController)initWithStatisticsCollector:(id)collector;
- (BOOL)getFeedbackMessage:(id *)message type:(unsigned int)type metaData:(id *)data error:(id *)error;
- (BOOL)getRateControlFeedbackMessage:(id *)message type:(unsigned int)type metaData:(id *)data error:(id *)error;
- (BOOL)getVCStatisticsFeedbackMessage:(tagVCStatisticsMessage *)message time:(double)time;
- (BOOL)processFeedbackMessage:(id)message type:(unsigned int)type metaData:(id)data error:(id *)error;
- (BOOL)processRateControlLocalRCEvent:(tagVCStatisticsLocalRCEvent *)event type:(unsigned int)type error:(id *)error time:(double)time;
- (BOOL)processRateControlMessageArray:(id)array type:(unsigned int)type;
- (BOOL)processRateControlPacketReceived:(id *)received type:(unsigned int)type error:(id *)error time:(double)time;
- (BOOL)processRateControlPacketSent:(id *)sent type:(unsigned int)type error:(id *)error time:(double)time;
- (BOOL)processRateControlProbingMessage:(id *)message type:(unsigned int)type error:(id *)error;
- (BOOL)processRateControlServerStats:(id *)stats type:(unsigned int)type error:(id *)error time:(double)time;
- (BOOL)validateMessageArray:(id)array type:(unsigned int)type;
- (id)translateRateControlDataWithFeedbackMessage:(id *)message;
- (void)dealloc;
- (void)resetBurstyLossStatistics;
@end

@implementation AVCRateControlFeedbackController

- (AVCRateControlFeedbackController)initWithStatisticsCollector:(id)collector
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = AVCRateControlFeedbackController;
  v4 = [(AVCRateControlFeedbackController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_statisticsCollector = collector;
    v4->_isECNEnabled = VCDefaults_GetBoolValueForKey(@"ecnEnabled", 0);
    v5->_txLinkType = 0;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCRateControlFeedbackController;
  [(AVCRateControlFeedbackController *)&v3 dealloc];
}

- (BOOL)getFeedbackMessage:(id *)message type:(unsigned int)type metaData:(id *)data error:(id *)error
{
  mode = self->_mode;
  v7 = mode > 7;
  v8 = (1 << mode) & 0x8E;
  return !v7 && v8 != 0 && [(AVCRateControlFeedbackController *)self getRateControlFeedbackMessage:message type:*&type metaData:data error:error];
}

- (BOOL)processFeedbackMessage:(id)message type:(unsigned int)type metaData:(id)data error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = micro();
  mode = self->_mode;
  if (mode - 1 < 3)
  {
LABEL_2:
    v29 = 0;
    v28 = 0u;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    bytes = [message bytes];
    v13 = bytes[1];
    v14 = bytes[2];
    DWORD2(v19) = v14 >> 12;
    DWORD1(v21) = *bytes;
    DWORD1(v20) = v14 & 0xFFF;
    v15 = bytes[4];
    v18[1] = bytes[3];
    LODWORD(v19) = v13;
    v18[0] = v15;
    *&v22 = RTPUnpackDouble(bytes[5]);
    return _AVCRateControlFeedbackController_ProcessRateControlFeedbackMessage(self, v18, type, v10);
  }

  if (mode == 7)
  {
    if (data)
    {
      if ([data objectForKeyedSubscript:@"MetaDataTestSimulationTime"])
      {
        [objc_msgSend(data objectForKeyedSubscript:{@"MetaDataTestSimulationTime", "doubleValue"}];
        v10 = v17;
      }
    }

    goto LABEL_2;
  }

  return 0;
}

- (BOOL)processRateControlServerStats:(id *)stats type:(unsigned int)type error:(id *)error time:(double)time
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  ++self->_feedbackMessageCount;
  if (type == 3)
  {
    LODWORD(v8[0]) = 5;
    *(v8 + 1) = time;
    *(&v8[1] + 12) = *&stats->var1;
    DWORD2(v8[2]) = stats->var4;
    AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v8);
  }

  return type == 3;
}

- (BOOL)processRateControlPacketReceived:(id *)received type:(unsigned int)type error:(id *)error time:(double)time
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (type == 4)
  {
    *(&v9 + 1) = time;
    LODWORD(v9) = 7;
    var9 = received->var9;
    DWORD2(v10) = 2;
    HIDWORD(v13) = var9;
    AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, &v9);
  }

  return type == 4;
}

- (BOOL)processRateControlPacketSent:(id *)sent type:(unsigned int)type error:(id *)error time:(double)time
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  if (type == 5)
  {
    *&v8[0].var2 = time;
    v8[0].var0 = 6;
    v8[1] = *sent;
    AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v8);
  }

  return type == 5;
}

- (BOOL)processRateControlLocalRCEvent:(tagVCStatisticsLocalRCEvent *)event type:(unsigned int)type error:(id *)error time:(double)time
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  if (type == 6)
  {
    v8[0].recentFeedbackTime = time;
    LODWORD(v8[0].recentSendTime) = 14;
    v8[1] = *event;
    AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v8);
  }

  return type == 6;
}

- (BOOL)validateMessageArray:(id)array type:(unsigned int)type
{
  if (type - 1 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1DBD45890[type - 1];
  }

  return v4 == [array count];
}

- (BOOL)processRateControlMessageArray:(id)array type:(unsigned int)type
{
  v40 = *MEMORY[0x1E69E9840];
  if (!array)
  {
    [AVCRateControlFeedbackController processRateControlMessageArray:? type:?];
    return v32;
  }

  if (![AVCRateControlFeedbackController validateMessageArray:"validateMessageArray:type:" type:?])
  {
    [AVCRateControlFeedbackController processRateControlMessageArray:array type:&v32];
    return v32;
  }

  v7 = 0;
  v8 = micro();
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        *&v34[32] = 0;
        *&v34[36] = [objc_msgSend(array objectAtIndexedSubscript:{0, 0, 0, 0, 0, 0, 0, *&v34[32]), "unsignedIntValue"}];
        if ([(AVCRateControlFeedbackController *)self processRateControlPacketReceived:&v32 type:4 error:0 time:v8])
        {
          goto LABEL_29;
        }
      }

      else
      {
        v21 = [objc_msgSend(array objectAtIndexedSubscript:{0), "unsignedIntValue"}];
        v22 = [objc_msgSend(array objectAtIndexedSubscript:{1), "unsignedIntValue"}];
        v23 = [objc_msgSend(array objectAtIndexedSubscript:{2), "unsignedIntValue"}];
        [objc_msgSend(array objectAtIndexedSubscript:{3), "doubleValue"}];
        v32 = __PAIR64__(v22, v21);
        *&v33 = v23;
        *v34 = v24;
        if ([(AVCRateControlFeedbackController *)self processRateControlPacketSent:&v32 type:5 error:0 time:v8])
        {
          goto LABEL_29;
        }
      }

      return 0;
    }

    if (type == 6)
    {
      [objc_msgSend(array objectAtIndexedSubscript:{0), "doubleValue"}];
      v29 = v28;
      [objc_msgSend(array objectAtIndexedSubscript:{1), "doubleValue"}];
      v32 = v29;
      v33 = v30;
      *v34 = [objc_msgSend(array objectAtIndexedSubscript:{2), "unsignedIntValue"}];
      if ([(AVCRateControlFeedbackController *)self processRateControlLocalRCEvent:&v32 type:6 error:0 time:v8])
      {
        goto LABEL_29;
      }

      return 0;
    }

    if (type != 7)
    {
      if (type == 8)
      {
        v9 = [objc_msgSend(array objectAtIndexedSubscript:{6), "unsignedIntValue"}];
        v10 = [objc_msgSend(array objectAtIndexedSubscript:{1), "unsignedIntValue"}];
        v11 = [objc_msgSend(array objectAtIndexedSubscript:{2), "unsignedIntValue"}];
        v12 = [objc_msgSend(array objectAtIndexedSubscript:{3), "unsignedIntValue"}];
        v13 = [objc_msgSend(array objectAtIndexedSubscript:{0), "unsignedIntValue"}];
        v14 = [objc_msgSend(array objectAtIndexedSubscript:{5), "unsignedIntValue"}];
        v15 = [objc_msgSend(array objectAtIndexedSubscript:{4), "BOOLValue"}];
        if (self->_mode == 12)
        {
          v37 = unk_1DBD45858;
          v38 = xmmword_1DBD45868;
          memset(v39, 170, sizeof(v39));
          *&v34[56] = 0xAAAAAAAAAAAAAAAALL;
          *&v34[64] = unk_1DBD45818;
          v35 = xmmword_1DBD45828;
          memset(v36, 170, sizeof(v36));
          *&v34[4] = unk_1DBD457DC;
          v32 = 15;
          v33 = v8;
          *v34 = 0x10000;
          *&v34[8] = v9;
          *&v34[12] = v10;
          *&v34[16] = v11;
          *&v34[20] = v12;
          *&v34[22] = v13;
          *&v34[24] = v14;
          v34[28] = v15;
          *&v34[29] = -21846;
          v34[31] = -86;
          *&v34[32] = 0uLL;
          *&v34[48] = 0xAAAAAAAA00000000;
          AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, &v32);
LABEL_29:
          ++self->_processedMessageCount;
          return 1;
        }

        [AVCRateControlFeedbackController processRateControlMessageArray:type:];
        return 0;
      }

      return v7;
    }

LABEL_21:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCRateControlFeedbackController processRateControlMessageArray:type:];
      }
    }

    return 0;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      BYTE4(v32) = 0;
      LODWORD(v32) = 0;
      memset(&v34[12], 0, 60);
      [objc_msgSend(array objectAtIndexedSubscript:{0, v32), "doubleValue"}];
      v26 = v25;
      v27 = [objc_msgSend(array objectAtIndexedSubscript:{1), "unsignedIntValue"}];
      BYTE5(v32) = [objc_msgSend(array objectAtIndexedSubscript:{2), "BOOLValue"}];
      HIWORD(v32) = 0;
      LODWORD(v33) = [objc_msgSend(array objectAtIndexedSubscript:{3), "unsignedIntValue"}];
      HIDWORD(v33) = v27;
      *v34 = v26;
      *&v34[8] = [objc_msgSend(array objectAtIndexedSubscript:{4), "unsignedIntValue"}];
      if ([(AVCRateControlFeedbackController *)self processRateControlProbingMessage:&v32 type:2 error:0])
      {
        goto LABEL_29;
      }
    }

    else
    {
      memset(&v34[4], 0, 68);
      LODWORD(v32) = 0;
      HIDWORD(v32) = [objc_msgSend(array objectAtIndexedSubscript:{0), "unsignedIntValue"}];
      *&v33 = [objc_msgSend(array objectAtIndexedSubscript:{1), "unsignedIntValue"}];
      *v34 = [objc_msgSend(array objectAtIndexedSubscript:{2), "unsignedIntValue"}];
      if ([(AVCRateControlFeedbackController *)self processRateControlServerStats:&v32 type:3 error:0 time:v8])
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (!type)
  {
    goto LABEL_21;
  }

  if (type == 1)
  {
    *&v34[24] = 0;
    *&v34[16] = 0;
    memset(&v34[48], 0, 32);
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v37 = 0u;
    v38 = 0u;
    v16 = [objc_msgSend(array objectAtIndexedSubscript:{5), "unsignedIntValue"}];
    v17 = [objc_msgSend(array objectAtIndexedSubscript:{2), "unsignedIntValue"}];
    v18 = [objc_msgSend(array objectAtIndexedSubscript:{3), "unsignedIntValue"}];
    v19 = [objc_msgSend(array objectAtIndexedSubscript:{4), "unsignedIntValue"}];
    v20 = [objc_msgSend(array objectAtIndexedSubscript:{1), "unsignedIntValue"}];
    LODWORD(v32) = [objc_msgSend(array objectAtIndexedSubscript:{0), "unsignedIntValue"}];
    HIDWORD(v32) = v20;
    *&v33 = v17;
    *v34 = v18;
    *&v34[4] = 0;
    *&v34[12] = v19;
    *&v34[28] = v16;
    *&v34[32] = 0;
    *&v34[40] = [objc_msgSend(array objectAtIndexedSubscript:{6), "unsignedIntValue"}];
    if (_AVCRateControlFeedbackController_ProcessRateControlFeedbackMessage(self, &v32, 1, v8))
    {
      goto LABEL_29;
    }

    return 0;
  }

  return v7;
}

- (BOOL)getRateControlFeedbackMessage:(id *)message type:(unsigned int)type metaData:(id *)data error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  if (type == 2)
  {
    LOBYTE(v10) = 1;
  }

  else if (type == 1 && message)
  {
    memset(v13, 0, sizeof(v13));
    v9 = micro();
    if (data && *data)
    {
      [objc_msgSend(*data objectForKeyedSubscript:{@"MetaDataTestSimulationTime", v9), "doubleValue"}];
    }

    v10 = [(AVCRateControlFeedbackController *)self getVCStatisticsFeedbackMessage:v13 time:v9];
    if (v10)
    {
      v12[8] = *&v13[152];
      v12[9] = *&v13[168];
      v12[10] = *&v13[184];
      v12[4] = *&v13[88];
      v12[5] = *&v13[104];
      v12[6] = *&v13[120];
      v12[7] = *&v13[136];
      v12[0] = *&v13[24];
      v12[1] = *&v13[40];
      v12[2] = *&v13[56];
      v12[3] = *&v13[72];
      *message = [(AVCRateControlFeedbackController *)self translateRateControlDataWithFeedbackMessage:v12];
      [(AVCRateControlFeedbackController *)self resetBurstyLossStatistics];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCRateControlFeedbackController getRateControlFeedbackMessage:type:metaData:error:];
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)getVCStatisticsFeedbackMessage:(tagVCStatisticsMessage *)message time:(double)time
{
  if (message)
  {
    statisticsCollector = self->_statisticsCollector;
    if (statisticsCollector)
    {
      [(AVCStatisticsCollector *)statisticsCollector getVCStatisticsWithType:2 time:time];
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
    }

    *(&message->var0.addRemoveEndPoint + 17) = v17;
    *(&message->var0.addRemoveEndPoint + 19) = v18;
    *(&message->var0.addRemoveEndPoint + 21) = v19;
    *(&message->var0.addRemoveEndPoint + 9) = v13;
    *(&message->var0.addRemoveEndPoint + 11) = v14;
    *(&message->var0.addRemoveEndPoint + 13) = v15;
    *(&message->var0.addRemoveEndPoint + 15) = v16;
    *&message->var0.rtcpRR.lastSequenceNumber = v9;
    *(&message->var0.addRemoveEndPoint + 3) = v10;
    *(&message->var0.addRemoveEndPoint + 5) = v11;
    *(&message->var0.addRemoveEndPoint + 7) = v12;
    *&message->type = v7;
    *&message->isVCRCInternal = v8;
  }

  return message != 0;
}

- (BOOL)processRateControlProbingMessage:(id *)message type:(unsigned int)type error:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (type == 2)
  {
    *(&v9[0] + 1) = *&message->var6;
    v6 = *&message->var6;
    *(&v9[3] + 8) = *&message->var9.var0;
    v7 = *&message->var9.var6;
    *(&v9[4] + 8) = *&message->var9.var4;
    *(&v9[5] + 8) = v7;
    *(&v9[1] + 8) = *&message->var0;
    LODWORD(v9[0]) = 4;
    BYTE3(v9[1]) = 1;
    *(&v9[6] + 1) = *&message->var9.var8;
    *(&v9[2] + 8) = v6;
    AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v9);
  }

  return type == 2;
}

- (id)translateRateControlDataWithFeedbackMessage:(id *)message
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = message->var11;
  v5[1] = message->var2;
  v5[2] = message->var7 & 0xFFF | (LOWORD(message->var4) << 12);
  var0 = message->var0;
  v5[3] = message->var1;
  v5[4] = var0;
  v5[5] = RTPPackDouble(message->var13);
  return [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:12];
}

- (void)resetBurstyLossStatistics
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = 0u;
  v4 = 0u;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  LODWORD(v3) = 7;
  BYTE3(v4) = 1;
  DWORD2(v4) = 1;
  AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, &v3);
  DWORD2(v4) = 2;
  AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, &v3);
}

- (void)processRateControlMessageArray:(uint64_t)a1 type:(_BYTE *)a2 .cold.1(uint64_t a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[AVCRateControlFeedbackController processRateControlMessageArray:type:]";
      v10 = 1024;
      v11 = 276;
      v12 = 2112;
      v13 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Message array = %@ is invalid", &v6, 0x26u);
    }
  }

  *a2 = 0;
}

- (void)processRateControlMessageArray:type:.cold.2()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[AVCRateControlFeedbackController processRateControlMessageArray:type:]";
  v6 = 1024;
  v7 = 347;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Unsupported feedback type %u", v3, 0x22u);
}

- (void)processRateControlMessageArray:type:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_3();
      v3 = "_AVCRateControlFeedbackController_ProcessReceiveTimeReport";
      v4 = 1024;
      v5 = 475;
      v6 = 1024;
      v7 = v1;
      _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d receiveTimeReport cannot be processed for mode %u", v2, 0x22u);
    }
  }
}

- (void)processRateControlMessageArray:(_BYTE *)a1 type:.cold.4(_BYTE *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 275;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Message cannot be nil!", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)getRateControlFeedbackMessage:type:metaData:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Cannot get rate control feedback message!", v2, v3, v4, v5, v6);
}

@end