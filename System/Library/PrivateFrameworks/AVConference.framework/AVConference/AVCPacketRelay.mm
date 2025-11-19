@interface AVCPacketRelay
- (AVCPacketRelay)initWithConnection:(id)a3 connection:(id)a4 error:(id *)a5;
- (AVCPacketRelay)initWithConnections:(id)a3 multiplexedConnection:(id)a4 error:(id *)a5;
- (BOOL)isAllConnectionTypeValid:(id)a3;
- (BOOL)stopAllConnections;
- (id)findConnectionToForwardData:(const void *)a3 size:(int)a4;
- (int)startAllConnections;
- (void)dealloc;
- (void)healthPrint:(unint64_t)a3 isSend:(BOOL)a4;
- (void)start;
- (void)startAllConnections;
- (void)stop;
- (void)stopAllConnections;
- (void)updateDemuxPacketStatsWithPacketFilterPacketType:(unsigned __int8)a3;
@end

@implementation AVCPacketRelay

- (AVCPacketRelay)initWithConnection:(id)a3 connection:(id)a4 error:(id *)a5
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a3;
  return -[AVCPacketRelay initWithConnections:multiplexedConnection:error:](self, "initWithConnections:multiplexedConnection:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1], a4, a5);
}

- (AVCPacketRelay)initWithConnections:(id)a3 multiplexedConnection:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  v27.receiver = self;
  v27.super_class = AVCPacketRelay;
  v9 = [(AVCPacketRelay *)&v27 init];
  if (!v9)
  {
    return v9;
  }

  v10 = [a3 count];
  if (!a4 || !v10)
  {
    v22 = -2144731135;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelay initWithConnections:multiplexedConnection:error:];
      }
    }

LABEL_23:
    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCPacketRelayErrorDomain" code:v22 userInfo:0];
    if (!v23)
    {
      return v9;
    }

    v24 = v23;
    if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      [AVCPacketRelay initWithConnections:multiplexedConnection:error:];
      if (!a5)
      {
        goto LABEL_28;
      }
    }

    else if (!a5)
    {
LABEL_28:

      return 0;
    }

    *a5 = v24;
    goto LABEL_28;
  }

  if (![a4 type] || !-[AVCPacketRelay isAllConnectionTypeValid:](v9, "isAllConnectionTypeValid:", a3))
  {
    v22 = -2144731135;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelay initWithConnections:multiplexedConnection:error:];
      }
    }

    goto LABEL_23;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v12 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCPacketRelayQueue", 0, CustomRootQueue);
  v9->_queue = v12;
  if (!v12)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      v22 = -2144731133;
    }

    else
    {
      VRTraceErrorLogLevelToCSTR();
      v22 = -2144731133;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelay initWithConnections:multiplexedConnection:error:];
      }
    }

    goto LABEL_23;
  }

  v9->_packetDriver = +[AVCPacketRelayDriver sharedInstance];
  v13 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v9];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__AVCPacketRelay_initWithConnections_multiplexedConnection_error___block_invoke;
  v26[3] = &unk_1E85F91D0;
  v26[4] = v13;
  [a4 setIsDemuxNeeded:1];
  [a4 setReadHandler:v26];
  [(AVCPacketRelay *)v9 setMultiplexedConnection:a4];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = [a3 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        [v18 setIsDemuxNeeded:0];
        [v18 setReadHandler:v26];
      }

      v15 = [a3 countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v15);
  }

  [(AVCPacketRelay *)v9 setConnections:a3];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v21 = [-[AVCPacketRelay description](v9 "description")];
      *buf = 136315906;
      v29 = v19;
      v30 = 2080;
      v31 = "[AVCPacketRelay initWithConnections:multiplexedConnection:error:]";
      v32 = 1024;
      v33 = 567;
      v34 = 2080;
      v35 = v21;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created AVCPacketRelay %s successfully", buf, 0x26u);
    }
  }

  return v9;
}

void __66__AVCPacketRelay_initWithConnections_multiplexedConnection_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = a5;
  if (a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __66__AVCPacketRelay_initWithConnections_multiplexedConnection_error___block_invoke_cold_1();
      }
    }

    return;
  }

  if ([*(a1 + 32) weak])
  {
    v9 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
    if (v9)
    {
      v10 = v9;
      [v9 healthPrint:a3 isSend:0];
      if (a4)
      {
        v11 = [v10 findConnectionToForwardData:a2 size:a3];
        v12 = [v11 packetFilter];
        if ([v12 isRTPFilter])
        {
          [v10 updateDemuxPacketStatsWithPacketFilterPacketType:{objc_msgSend(v12, "type")}];
        }

        if (!v11)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __66__AVCPacketRelay_initWithConnections_multiplexedConnection_error___block_invoke_cold_3();
            }
          }

          goto LABEL_24;
        }

        v13 = v11;
      }

      else
      {
        v13 = [v10 multiplexedConnection];
      }

      [v13 sendData:a2 size:a3 error:&v16];
      if (v16)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __66__AVCPacketRelay_initWithConnections_multiplexedConnection_error___block_invoke_cold_2();
          }
        }
      }

      else
      {
        [v10 healthPrint:a3 isSend:1];
      }

LABEL_24:
      CFRelease(v10);
      return;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = v14;
      v19 = 2080;
      v20 = "[AVCPacketRelay initWithConnections:multiplexedConnection:error:]_block_invoke";
      v21 = 1024;
      v22 = 529;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelay has been dealloced", buf, 0x1Cu);
    }
  }
}

- (void)start
{
  v3[5] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __23__AVCPacketRelay_start__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(queue, v3);
}

uint64_t __23__AVCPacketRelay_start__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v2;
      v11 = 2080;
      v12 = "[AVCPacketRelay start]_block_invoke";
      v13 = 1024;
      v14 = 594;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelay: starting...", &v9, 0x1Cu);
    }
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 startAllConnections];
  v7 = *v4;
  if (v6 < 0)
  {
    return __23__AVCPacketRelay_start__block_invoke_cold_1(v7, v4, v6);
  }

  else
  {
    return [objc_msgSend(v7 "delegate")];
  }
}

- (void)stop
{
  v3[5] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __22__AVCPacketRelay_stop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(queue, v3);
}

uint64_t __22__AVCPacketRelay_stop__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "[AVCPacketRelay stop]_block_invoke";
      v9 = 1024;
      v10 = 613;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelay: stopping...", &v5, 0x1Cu);
    }
  }

  [*(a1 + 32) stopAllConnections];
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [objc_msgSend(*(a1 + 32) "delegate")];
  }

  return result;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVCPacketRelay dealloc]";
      v11 = 1024;
      v12 = 632;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCPacketRelay: dealloc", buf, 0x1Cu);
    }
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v6.receiver = self;
  v6.super_class = AVCPacketRelay;
  [(AVCPacketRelay *)&v6 dealloc];
}

- (BOOL)isAllConnectionTypeValid:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(a3);
      }

      v8 = [*(*(&v11 + 1) + 8 * v7) type];
      if (!v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (int)startAllConnections
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connections = self->_connections;
  v4 = [(NSArray *)connections countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(connections);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) start];
        if (v8 < 0)
        {
          v9 = v8;
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)connections countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = [(AVCPacketRelayConnectionProtocol *)self->_multiplexedConnection start];
  if (v9 < 0)
  {
LABEL_12:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelay startAllConnections];
      }
    }
  }

  return v9;
}

- (BOOL)stopAllConnections
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  connections = self->_connections;
  v3 = [(NSArray *)connections countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = MEMORY[0x1E6986650];
    v7 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(connections);
        }

        v9 = [*(*(&v24 + 1) + 8 * i) stop];
        if (v9 < 0)
        {
          v10 = v9;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v16 = v11;
              v17 = 2080;
              v18 = "[AVCPacketRelay stopAllConnections]";
              v19 = 1024;
              v20 = 678;
              v21 = 1024;
              v22 = v10;
              _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCPacketRelay: stop connection failed with result %08X", buf, 0x22u);
            }
          }

          v5 = v10;
        }
      }

      v4 = [(NSArray *)connections countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (([(AVCPacketRelayConnectionProtocol *)self->_multiplexedConnection stop]& 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCPacketRelay stopAllConnections];
      }
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    return v5 != 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCPacketRelay stopAllConnections];
    }
  }

  v5 = 1;
  return v5 != 0;
}

- (id)findConnectionToForwardData:(const void *)a3 size:(int)a4
{
  v4 = *&a4;
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  connections = self->_connections;
  v7 = [(NSArray *)connections countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(connections);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    if (![v11 packetFilter] || (objc_msgSend(objc_msgSend(v11, "packetFilter"), "isMatchedPacket:size:", a3, v4) & 1) != 0)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSArray *)connections countByEnumeratingWithState:&v14 objects:v13 count:16];
      v11 = 0;
      if (v8)
      {
        goto LABEL_3;
      }

      return v11;
    }
  }
}

- (void)healthPrint:(unint64_t)a3 isSend:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v7 = micro();
  if (v4)
  {
    v8.i32[0] = 1;
    v8.i32[1] = v5;
    *&self->_healthStats.sendPacketCount = vadd_s32(*&self->_healthStats.sendPacketCount, v8);
    v9 = v7 - self->_healthStats.lastSendTimePrint;
    if (v9 > 0.0 && v9 > 5.0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          sendPacketCount = self->_healthStats.sendPacketCount;
          sendByteCount = self->_healthStats.sendByteCount;
          v26 = 136316674;
          v27 = v11;
          v28 = 2080;
          v29 = "[AVCPacketRelay healthPrint:isSend:]";
          v30 = 1024;
          v31 = 720;
          v32 = 1024;
          v33 = sendPacketCount;
          v34 = 1024;
          v35 = sendByteCount;
          v36 = 2048;
          v37 = v9;
          v38 = 2048;
          v39 = (8 * sendByteCount) / v9 / 1000.0;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: AVCPacketRelay Health Monitor for AVCPacketRelay Send packet count=%d, byte count=%d, interval=%.3fs, rate=%.3fkbps", &v26, 0x3Cu);
        }
      }

      self->_healthStats.lastSendTimePrint = v7;
      *&self->_healthStats.sendPacketCount = 0;
    }
  }

  else
  {
    v15.i32[0] = 1;
    v15.i32[1] = v5;
    *&self->_healthStats.receivePacketCount = vadd_s32(*&self->_healthStats.receivePacketCount, v15);
    v16 = v7 - self->_healthStats.lastReceiveTimePrint;
    if (v16 > 0.0 && v16 > 5.0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          receivePacketCount = self->_healthStats.receivePacketCount;
          receiveByteCount = self->_healthStats.receiveByteCount;
          v26 = 136317698;
          rtpAndRTCPPacketCount = self->_healthStats.demuxPacketStats.rtpAndRTCPPacketCount;
          rtpPacketCount = self->_healthStats.demuxPacketStats.rtpPacketCount;
          rtcpPacketCount = self->_healthStats.demuxPacketStats.rtcpPacketCount;
          droppedPacketCount = self->_healthStats.demuxPacketStats.droppedPacketCount;
          v27 = v18;
          v28 = 2080;
          v29 = "[AVCPacketRelay healthPrint:isSend:]";
          v30 = 1024;
          v31 = 739;
          v32 = 1024;
          v33 = receivePacketCount;
          v34 = 1024;
          v35 = receiveByteCount;
          v36 = 2048;
          v37 = v16;
          v38 = 2048;
          v39 = (8 * receiveByteCount) / v16 / 1000.0;
          v40 = 1024;
          v41 = rtpAndRTCPPacketCount;
          v42 = 1024;
          v43 = rtpPacketCount;
          v44 = 1024;
          v45 = rtcpPacketCount;
          v46 = 1024;
          v47 = droppedPacketCount;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: AVCPacketRelay Health Monitor for AVCPacketRelay Recv packet count=%d, byte count=%d, interval=%.3fs, rate:%.3fkbps, demuxPackets:[rtpAndRTCPPacketCount=%u, rtpPacketCount=%u, rtcpPacketCount=%u, droppedPacketCount=%u]", &v26, 0x54u);
        }
      }

      self->_healthStats.lastReceiveTimePrint = v7;
      *&self->_healthStats.receivePacketCount = 0;
      *&self->_healthStats.demuxPacketStats.rtpAndRTCPPacketCount = 0;
      *&self->_healthStats.demuxPacketStats.rtcpPacketCount = 0;
    }
  }
}

- (void)updateDemuxPacketStatsWithPacketFilterPacketType:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    ++self->_healthStats.demuxPacketStats.rtcpPacketCount;
  }

  else if (a3 == 1)
  {
    ++self->_healthStats.demuxPacketStats.rtpPacketCount;
  }

  else if (a3)
  {
    ++self->_healthStats.demuxPacketStats.droppedPacketCount;
  }

  else
  {
    ++self->_healthStats.demuxPacketStats.rtpAndRTCPPacketCount;
  }
}

- (void)initWithConnections:multiplexedConnection:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelay: init connection is nil", v2, v3, v4, v5, v6);
}

- (void)initWithConnections:multiplexedConnection:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelay: failed to create AVCPacketRelayQueue", v2, v3, v4, v5, v6);
}

- (void)initWithConnections:multiplexedConnection:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelay: init connection has wrong type", v2, v3, v4, v5, v6);
}

- (void)initWithConnections:multiplexedConnection:error:.cold.4()
{
  OUTLINED_FUNCTION_14_5();
  [objc_msgSend(v0 "description")];
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void __66__AVCPacketRelay_initWithConnections_multiplexedConnection_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_5();
  [objc_msgSend(v0 "description")];
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void __66__AVCPacketRelay_initWithConnections_multiplexedConnection_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14_5();
  if (*v0)
  {
    [objc_msgSend(*v0 "description")];
  }

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void __66__AVCPacketRelay_initWithConnections_multiplexedConnection_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCPacketRelay: doesn't know how to forward packet", v2, v3, v4, v5, v6);
}

uint64_t __23__AVCPacketRelay_start__block_invoke_cold_1(void *a1, id *a2, int a3)
{
  [a1 stopAllConnections];
  v5 = [*a2 delegate];
  return [v5 packetRelay:*a2 didStart:0 error:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"AVCPacketRelayErrorDomain", a3, 0)}];
}

- (void)startAllConnections
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d AVCPacketRelay: start failed with result %08X", v3, v4, v5, v6);
}

- (void)stopAllConnections
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d AVCPacketRelay: stop failed with result %08X", v3, v4, v5, v6);
}

@end