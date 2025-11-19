@interface VCEmulatedNetworkQueue
- (VCEmulatedNetworkQueue)initWithPolicies:(id)a3;
- (int)dequeuePacket:(id)a3 time:(double)a4;
- (int)enqueuePacket:(id)a3;
- (int)write:(id)a3;
- (void)dealloc;
- (void)runUntilTime:(double)a3;
- (void)updateSettingsAtTime:(double)a3;
@end

@implementation VCEmulatedNetworkQueue

- (VCEmulatedNetworkQueue)initWithPolicies:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCEmulatedNetworkQueue;
  v3 = [(VCEmulatedNetworkElement *)&v8 initWithPolicies:a3];
  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        policies = v3->super._policies;
        *buf = 136315906;
        v10 = v4;
        v11 = 2080;
        v12 = "[VCEmulatedNetworkQueue initWithPolicies:]";
        v13 = 1024;
        v14 = 22;
        v15 = 2112;
        v16 = policies;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Network queue policies: %@", buf, 0x26u);
      }
    }

    v3->_queueBandwidthAlgorithm = objc_alloc_init(VCEmulatedNetworkAlgorithmQueueBandwidth);
    v3->_queueLossAlgorithm = objc_alloc_init(VCEmulatedNetworkAlgorithmQueueLoss);
    v3->_queueDelayAlgorithm = objc_alloc_init(VCEmulatedNetworkAlgorithmQueueDelay);
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCEmulatedNetworkQueue;
  [(VCEmulatedNetworkElement *)&v3 dealloc];
}

- (void)updateSettingsAtTime:(double)a3
{
  if (a3 - self->_lastPolicyLoadingTime >= 0.1)
  {
    self->_lastPolicyLoadingTime = a3;
    [(VCEmulatedNetworkAlgorithmQueueBandwidth *)self->_queueBandwidthAlgorithm updateSettingsAtTime:self->super._policies impairments:a3];
    [(VCEmulatedNetworkAlgorithmQueueLoss *)self->_queueLossAlgorithm updateSettingsAtTime:self->super._policies impairments:a3];
    queueDelayAlgorithm = self->_queueDelayAlgorithm;
    policies = self->super._policies;

    [(VCEmulatedNetworkAlgorithmQueueDelay *)queueDelayAlgorithm updateSettingsAtTime:policies impairments:a3];
  }
}

- (int)write:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 && (v5 = self->super._networkElementQueue) != 0)
  {
    if (!CMSimpleQueueGetCount(v5))
    {
      [a3 arrivalTime];
      [a3 setNetworkServiceTime:?];
    }

    [(VCEmulatedNetworkQueue *)self markPacketLoss:a3];

    return [(VCEmulatedNetworkQueue *)self enqueuePacket:a3];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        networkElementQueue = self->super._networkElementQueue;
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCEmulatedNetworkQueue write:]";
        v14 = 1024;
        v15 = 56;
        v16 = 2048;
        v17 = networkElementQueue;
        v18 = 2048;
        v19 = a3;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d networkElementQueue %p and packet %p cannot not be nil!", &v10, 0x30u);
      }
    }

    return -1;
  }
}

- (int)enqueuePacket:(id)a3
{
  if (([a3 isLost] & 1) == 0)
  {
    [(VCEmulatedNetworkAlgorithmQueueLoss *)self->_queueLossAlgorithm setPacketCountInNetworkQueue:[(VCEmulatedNetworkAlgorithmQueueLoss *)self->_queueLossAlgorithm packetCountInNetworkQueue]+ 1];
    -[VCEmulatedNetworkAlgorithmQueueLoss setPacketCountBytesInNetworkQueue:](self->_queueLossAlgorithm, "setPacketCountBytesInNetworkQueue:", -[VCEmulatedNetworkAlgorithmQueueLoss packetCountBytesInNetworkQueue](self->_queueLossAlgorithm, "packetCountBytesInNetworkQueue") + [a3 size]);
  }

  result = CMSimpleQueueEnqueue(self->super._networkElementQueue, a3);
  if (result)
  {
    v6 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCEmulatedNetworkQueue *)v7 enqueuePacket:v6, v8];
      }
    }

    return -1;
  }

  return result;
}

- (void)runUntilTime:(double)a3
{
  v28 = *MEMORY[0x1E69E9840];
  [(VCEmulatedNetworkQueue *)self updateSettingsAtTime:?];
  Head = CMSimpleQueueGetHead(self->super._networkElementQueue);
  if (Head)
  {
    v7 = Head;
    v8 = 0.0;
    v9 = MEMORY[0x1E6986650];
    *&v6 = 136316162;
    v17 = v6;
    do
    {
      [v7 arrivalTime];
      v11 = v10;
      [v7 networkServiceTime];
      if (v11 >= v12)
      {
        v12 = v11;
      }

      if (v8 >= v12)
      {
        v12 = v8;
      }

      [v7 setNetworkServiceTime:v12];
      [(VCEmulatedNetworkAlgorithmQueueBandwidth *)self->_queueBandwidthAlgorithm process:v7];
      [(VCEmulatedNetworkAlgorithmQueueDelay *)self->_queueDelayAlgorithm process:v7];
      [(VCEmulatedNetworkAlgorithmQueueDelay *)self->_queueDelayAlgorithm expectedProcessEndTime];
      if (v13 >= a3)
      {
        break;
      }

      v8 = v13;
      if ([(VCEmulatedNetworkQueue *)self dequeuePacket:v7 time:?]&& VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v16 = [v7 packetID];
          *buf = v17;
          v19 = v14;
          v20 = 2080;
          v21 = "[VCEmulatedNetworkQueue runUntilTime:]";
          v22 = 1024;
          v23 = 105;
          v24 = 1024;
          v25 = v16;
          v26 = 2048;
          v27 = a3;
          _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to dequeue the packet ID %u at time: %f!", buf, 0x2Cu);
        }
      }

      v7 = CMSimpleQueueGetHead(self->super._networkElementQueue);
    }

    while (v7);
  }
}

- (int)dequeuePacket:(id)a3 time:(double)a4
{
  v26 = *MEMORY[0x1E69E9840];
  [a3 setDepartureTime:a4];
  processCompleteHandler = self->super._processCompleteHandler;
  if (processCompleteHandler)
  {
    v7 = CMSimpleQueueDequeue(self->super._networkElementQueue);
    processCompleteHandler[2](processCompleteHandler, v7);
    if (([a3 isLost] & 1) == 0 || objc_msgSend(a3, "isDroppedByAQM"))
    {
      if ([(VCEmulatedNetworkAlgorithmQueueLoss *)self->_queueLossAlgorithm packetCountInNetworkQueue])
      {
        [(VCEmulatedNetworkAlgorithmQueueLoss *)self->_queueLossAlgorithm setPacketCountInNetworkQueue:[(VCEmulatedNetworkAlgorithmQueueLoss *)self->_queueLossAlgorithm packetCountInNetworkQueue]- 1];
        -[VCEmulatedNetworkAlgorithmQueueLoss setPacketCountBytesInNetworkQueue:](self->_queueLossAlgorithm, "setPacketCountBytesInNetworkQueue:", -[VCEmulatedNetworkAlgorithmQueueLoss packetCountBytesInNetworkQueue](self->_queueLossAlgorithm, "packetCountBytesInNetworkQueue") - [a3 size]);
      }

      else
      {
        Count = CMSimpleQueueGetCount(self->super._networkElementQueue);
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v14 = 136316418;
            v15 = v12;
            v16 = 2080;
            v17 = "[VCEmulatedNetworkQueue dequeuePacket:time:]";
            v18 = 1024;
            v19 = 126;
            v20 = 1024;
            v21 = Count;
            v22 = 1024;
            v23 = [a3 isLost];
            v24 = 1024;
            v25 = [a3 sequenceNumber];
            _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d PacketCountInQueue is bad, size=%d, isLost=%d, seq=%u ", &v14, 0x2Eu);
          }
        }
      }
    }

    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCEmulatedNetworkQueue dequeuePacket:v8 time:v9];
      }
    }

    return -1;
  }
}

- (void)enqueuePacket:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCEmulatedNetworkQueue enqueuePacket:]";
  v7 = 1024;
  v8 = 77;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue! status: %d", &v3, 0x22u);
}

- (void)dequeuePacket:(uint64_t)a1 time:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCEmulatedNetworkQueue dequeuePacket:time:]";
  v6 = 1024;
  v7 = 119;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d _processCompleteHandler is nil. Network element is not connected correctly!", &v2, 0x1Cu);
}

@end