@interface AVHapticPlayerChannel
- (AVHapticClient)client;
- (AVHapticPlayerChannel)initWithChannelID:(id)d client:(id)client;
- (BOOL)clearEvents:(double)events error:(id *)error;
- (BOOL)invalidated;
- (BOOL)resetAtTime:(double)time error:(id *)error;
- (BOOL)scheduleParameterCurve:(unint64_t)curve curve:(id)a4 atTime:(double)time error:(id *)error;
- (BOOL)sendEvents:(id)events atTime:(double)time error:(id *)error;
- (BOOL)sendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time error:(id *)error;
- (BOOL)setParameter:(unint64_t)parameter value:(float)value atTime:(double)time error:(id *)error;
- (void)setEventBehavior:(unint64_t)behavior;
@end

@implementation AVHapticPlayerChannel

- (AVHapticPlayerChannel)initWithChannelID:(id)d client:(id)client
{
  clientCopy = client;
  self->_chanID = [d unsignedIntegerValue];
  objc_storeWeak(&self->_client, clientCopy);
  self->_behavior = 0;

  return self;
}

- (void)setEventBehavior:(unint64_t)behavior
{
  v26 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayerChannel *)self client];
    v14 = 136316418;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 76;
    v18 = 2080;
    v19 = "[AVHapticPlayerChannel setEventBehavior:]";
    v20 = 2048;
    clientID = [client clientID];
    v22 = 1024;
    chanID = [(AVHapticPlayerChannel *)self chanID];
    v24 = 1024;
    behaviorCopy = behavior;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clientID: 0x%lx channelID: %u behavior: %u", &v14, 0x32u);
  }

LABEL_8:
  if (self->_behavior != behavior)
  {
    if (behavior >= 8)
    {
      if (kAVHCScope)
      {
        v11 = *kAVHCScope;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315906;
        v15 = "AVHapticPlayer.mm";
        v16 = 1024;
        v17 = 79;
        v18 = 2080;
        v19 = "[AVHapticPlayerChannel setEventBehavior:]";
        v20 = 1024;
        LODWORD(clientID) = behavior;
        _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal event behavior: %u", &v14, 0x22u);
      }
    }

    else
    {
      client2 = [(AVHapticPlayerChannel *)self client];
      v10 = [client2 setChannelEventBehavior:behavior channel:{-[AVHapticPlayerChannel chanID](self, "chanID")}];

      if (v10)
      {
        self->_behavior = behavior;
      }
    }
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendEvents:(id)events atTime:(double)time error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayerChannel *)self client];
    v27 = 136316162;
    v28 = "AVHapticPlayer.mm";
    v29 = 1024;
    v30 = 91;
    v31 = 2080;
    v32 = "[AVHapticPlayerChannel sendEvents:atTime:error:]";
    v33 = 2048;
    clientID = [client clientID];
    v35 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: sending event array: clientID: 0x%lx atTime: %.3f", &v27, 0x30u);
  }

LABEL_8:
  client2 = [(AVHapticPlayerChannel *)self client];
  v14 = client2 == 0;

  if (v14)
  {
    v22 = -4804;
    v23 = "self.client != nil";
    v24 = 92;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticPlayerChannel sendEvents:atTime:error:]", v23, v22, error);
    v21 = 0;
    goto LABEL_18;
  }

  client3 = [(AVHapticPlayerChannel *)self client];
  v16 = [client3 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.client.clientID != kInvalidClientID";
    v24 = 93;
    goto LABEL_17;
  }

  client4 = [(AVHapticPlayerChannel *)self client];
  running = [client4 running];

  if ((running & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.client.running";
    v24 = 94;
    goto LABEL_17;
  }

  client5 = [(AVHapticPlayerChannel *)self client];
  v20 = [client5 sendEvents:eventsCopy withImmediateParameters:0 atTime:-[AVHapticPlayerChannel chanID](self channel:"chanID") outToken:0 error:{error, time}];

  if ((v20 & 1) == 0)
  {
    v22 = -4899;
    v23 = "[self.client sendEvents:events withImmediateParameters:nil atTime:time channel:self.chanID outToken:nil error:outError]";
    v24 = 97;
    goto LABEL_17;
  }

  v21 = 1;
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)sendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  parametersCopy = parameters;
  if (kAVHCScope)
  {
    v12 = *kAVHCScope;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  v14 = v12;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayerChannel *)self client];
    v30 = 136316162;
    v31 = "AVHapticPlayer.mm";
    v32 = 1024;
    v33 = 103;
    v34 = 2080;
    v35 = "[AVHapticPlayerChannel sendEvents:withImmediateParameters:atTime:error:]";
    v36 = 2048;
    clientID = [client clientID];
    v38 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: sending event array: clientID: 0x%lx atTime: %.3f", &v30, 0x30u);
  }

LABEL_8:
  client2 = [(AVHapticPlayerChannel *)self client];
  v17 = client2 == 0;

  if (v17)
  {
    v25 = -4804;
    v26 = "self.client != nil";
    v27 = 104;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v27, "[AVHapticPlayerChannel sendEvents:withImmediateParameters:atTime:error:]", v26, v25, error);
    v24 = 0;
    goto LABEL_18;
  }

  client3 = [(AVHapticPlayerChannel *)self client];
  v19 = [client3 clientID] == -1;

  if (v19)
  {
    v25 = -4812;
    v26 = "self.client.clientID != kInvalidClientID";
    v27 = 105;
    goto LABEL_17;
  }

  client4 = [(AVHapticPlayerChannel *)self client];
  running = [client4 running];

  if ((running & 1) == 0)
  {
    v25 = -4805;
    v26 = "self.client.running";
    v27 = 106;
    goto LABEL_17;
  }

  client5 = [(AVHapticPlayerChannel *)self client];
  v23 = [client5 sendEvents:eventsCopy withImmediateParameters:parametersCopy atTime:-[AVHapticPlayerChannel chanID](self channel:"chanID") outToken:0 error:{error, time}];

  if ((v23 & 1) == 0)
  {
    v25 = -4899;
    v26 = "[self.client sendEvents:events withImmediateParameters:immediateParameters atTime:time channel:self.chanID outToken:nil error:outError]";
    v27 = 109;
    goto LABEL_17;
  }

  v24 = 1;
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)clearEvents:(double)events error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayerChannel *)self client];
    v21 = 136316162;
    v22 = "AVHapticPlayer.mm";
    v23 = 1024;
    v24 = 115;
    v25 = 2080;
    v26 = "[AVHapticPlayerChannel clearEvents:error:]";
    v27 = 2048;
    clientID = [client clientID];
    v29 = 2048;
    eventsCopy = events;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clearing events: clientID: 0x%lx fromTime: %.3f", &v21, 0x30u);
  }

LABEL_8:
  client2 = [(AVHapticPlayerChannel *)self client];
  v12 = client2 == 0;

  if (v12)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 116, "[AVHapticPlayerChannel clearEvents:error:]", "self.client != nil", -4804, error);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  client3 = [(AVHapticPlayerChannel *)self client];
  v14 = [client3 clientID] == -1;

  if (v14)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 117, "[AVHapticPlayerChannel clearEvents:error:]", "self.client.clientID != kInvalidClientID", -4812, error);
    goto LABEL_17;
  }

  client4 = [(AVHapticPlayerChannel *)self client];
  running = [client4 running];

  if ((running & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 118, "[AVHapticPlayerChannel clearEvents:error:]", "self.client.running", -4805, error);
    goto LABEL_17;
  }

  client5 = [(AVHapticPlayerChannel *)self client];
  v18 = [client5 clearEventsFromTime:-[AVHapticPlayerChannel chanID](self channel:{"chanID"), events}];

  if ((v18 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 121, "[AVHapticPlayerChannel clearEvents:error:]", "[self.client clearEventsFromTime:fromTime channel:self.chanID]", -4899, error);
    goto LABEL_17;
  }

  result = 1;
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setParameter:(unint64_t)parameter value:(float)value atTime:(double)time error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v11 = *kAVHCScope;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  v13 = v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayerChannel *)self client];
    v27 = 136316674;
    v28 = "AVHapticPlayer.mm";
    v29 = 1024;
    v30 = 127;
    v31 = 2080;
    v32 = "[AVHapticPlayerChannel setParameter:value:atTime:error:]";
    v33 = 2048;
    clientID = [client clientID];
    v35 = 1024;
    parameterCopy = parameter;
    v37 = 2048;
    valueCopy = value;
    v39 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: setting param: clientID: 0x%lx type: %u value: %.2f atTime: %.3f", &v27, 0x40u);
  }

LABEL_8:
  client2 = [(AVHapticPlayerChannel *)self client];
  v16 = client2 == 0;

  if (v16)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 128, "[AVHapticPlayerChannel setParameter:value:atTime:error:]", "self.client != nil", -4804, error);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  client3 = [(AVHapticPlayerChannel *)self client];
  v18 = [client3 clientID] == -1;

  if (v18)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 129, "[AVHapticPlayerChannel setParameter:value:atTime:error:]", "self.client.clientID != kInvalidClientID", -4812, error);
    goto LABEL_17;
  }

  client4 = [(AVHapticPlayerChannel *)self client];
  running = [client4 running];

  if ((running & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 130, "[AVHapticPlayerChannel setParameter:value:atTime:error:]", "self.client.running", -4805, error);
    goto LABEL_17;
  }

  client5 = [(AVHapticPlayerChannel *)self client];
  chanID = [(AVHapticPlayerChannel *)self chanID];
  *&v23 = value;
  v24 = [client5 setParameter:parameter atTime:chanID value:time channel:v23];

  if ((v24 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 133, "[AVHapticPlayerChannel setParameter:value:atTime:error:]", "[self.client setParameter:type atTime:time value:value channel:self.chanID]", -4899, error);
    goto LABEL_17;
  }

  result = 1;
LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)scheduleParameterCurve:(unint64_t)curve curve:(id)a4 atTime:(double)time error:(id *)error
{
  v10 = a4;
  client = [(AVHapticPlayerChannel *)self client];

  if (!client)
  {
    v19 = -4804;
    v20 = "self.client != nil";
    v21 = 139;
LABEL_10:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v21, "[AVHapticPlayerChannel scheduleParameterCurve:curve:atTime:error:]", v20, v19, error);
    v18 = 0;
    goto LABEL_11;
  }

  client2 = [(AVHapticPlayerChannel *)self client];
  clientID = [client2 clientID];

  if (clientID == -1)
  {
    v19 = -4812;
    v20 = "self.client.clientID != kInvalidClientID";
    v21 = 140;
    goto LABEL_10;
  }

  client3 = [(AVHapticPlayerChannel *)self client];
  running = [client3 running];

  if ((running & 1) == 0)
  {
    v19 = -4805;
    v20 = "self.client.running";
    v21 = 141;
    goto LABEL_10;
  }

  client4 = [(AVHapticPlayerChannel *)self client];
  v17 = [client4 scheduleParameterCurve:curve curve:v10 atTime:-[AVHapticPlayerChannel chanID](self channel:"chanID") error:{error, time}];

  if ((v17 & 1) == 0)
  {
    v19 = -4899;
    v20 = "[self.client scheduleParameterCurve:type curve:parameterCurve atTime:time channel:self.chanID error:outError]";
    v21 = 144;
    goto LABEL_10;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

- (BOOL)resetAtTime:(double)time error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    client = [(AVHapticPlayerChannel *)self client];
    v21 = 136316162;
    v22 = "AVHapticPlayer.mm";
    v23 = 1024;
    v24 = 150;
    v25 = 2080;
    v26 = "[AVHapticPlayerChannel resetAtTime:error:]";
    v27 = 2048;
    clientID = [client clientID];
    v29 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: sending reset event: clientID: 0x%lx time: %.3f", &v21, 0x30u);
  }

LABEL_8:
  client2 = [(AVHapticPlayerChannel *)self client];
  v12 = client2 == 0;

  if (v12)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 151, "[AVHapticPlayerChannel resetAtTime:error:]", "self.client != nil", -4804, error);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  client3 = [(AVHapticPlayerChannel *)self client];
  v14 = [client3 clientID] == -1;

  if (v14)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 152, "[AVHapticPlayerChannel resetAtTime:error:]", "self.client.clientID != kInvalidClientID", -4812, error);
    goto LABEL_17;
  }

  client4 = [(AVHapticPlayerChannel *)self client];
  running = [client4 running];

  if ((running & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 153, "[AVHapticPlayerChannel resetAtTime:error:]", "self.client.running", -4805, error);
    goto LABEL_17;
  }

  client5 = [(AVHapticPlayerChannel *)self client];
  v18 = [client5 resetChannel:-[AVHapticPlayerChannel chanID](self atTime:{"chanID"), time}];

  if ((v18 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 154, "[AVHapticPlayerChannel resetAtTime:error:]", "[self.client resetChannel:self.chanID atTime:time]", -4899, error);
    goto LABEL_17;
  }

  result = 1;
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)invalidated
{
  client = [(AVHapticPlayerChannel *)self client];
  if (client)
  {
    client2 = [(AVHapticPlayerChannel *)self client];
    v5 = [client2 clientID] == -1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (AVHapticClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end