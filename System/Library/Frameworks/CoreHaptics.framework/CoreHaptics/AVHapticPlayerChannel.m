@interface AVHapticPlayerChannel
- (AVHapticClient)client;
- (AVHapticPlayerChannel)initWithChannelID:(id)a3 client:(id)a4;
- (BOOL)clearEvents:(double)a3 error:(id *)a4;
- (BOOL)invalidated;
- (BOOL)resetAtTime:(double)a3 error:(id *)a4;
- (BOOL)scheduleParameterCurve:(unint64_t)a3 curve:(id)a4 atTime:(double)a5 error:(id *)a6;
- (BOOL)sendEvents:(id)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)sendEvents:(id)a3 withImmediateParameters:(id)a4 atTime:(double)a5 error:(id *)a6;
- (BOOL)setParameter:(unint64_t)a3 value:(float)a4 atTime:(double)a5 error:(id *)a6;
- (void)setEventBehavior:(unint64_t)a3;
@end

@implementation AVHapticPlayerChannel

- (AVHapticPlayerChannel)initWithChannelID:(id)a3 client:(id)a4
{
  v6 = a4;
  self->_chanID = [a3 unsignedIntegerValue];
  objc_storeWeak(&self->_client, v6);
  self->_behavior = 0;

  return self;
}

- (void)setEventBehavior:(unint64_t)a3
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
    v8 = [(AVHapticPlayerChannel *)self client];
    v14 = 136316418;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 76;
    v18 = 2080;
    v19 = "[AVHapticPlayerChannel setEventBehavior:]";
    v20 = 2048;
    v21 = [v8 clientID];
    v22 = 1024;
    v23 = [(AVHapticPlayerChannel *)self chanID];
    v24 = 1024;
    v25 = a3;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clientID: 0x%lx channelID: %u behavior: %u", &v14, 0x32u);
  }

LABEL_8:
  if (self->_behavior != a3)
  {
    if (a3 >= 8)
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
        LODWORD(v21) = a3;
        _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal event behavior: %u", &v14, 0x22u);
      }
    }

    else
    {
      v9 = [(AVHapticPlayerChannel *)self client];
      v10 = [v9 setChannelEventBehavior:a3 channel:{-[AVHapticPlayerChannel chanID](self, "chanID")}];

      if (v10)
      {
        self->_behavior = a3;
      }
    }
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendEvents:(id)a3 atTime:(double)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
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
    v12 = [(AVHapticPlayerChannel *)self client];
    v27 = 136316162;
    v28 = "AVHapticPlayer.mm";
    v29 = 1024;
    v30 = 91;
    v31 = 2080;
    v32 = "[AVHapticPlayerChannel sendEvents:atTime:error:]";
    v33 = 2048;
    v34 = [v12 clientID];
    v35 = 2048;
    v36 = a4;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: sending event array: clientID: 0x%lx atTime: %.3f", &v27, 0x30u);
  }

LABEL_8:
  v13 = [(AVHapticPlayerChannel *)self client];
  v14 = v13 == 0;

  if (v14)
  {
    v22 = -4804;
    v23 = "self.client != nil";
    v24 = 92;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticPlayerChannel sendEvents:atTime:error:]", v23, v22, a5);
    v21 = 0;
    goto LABEL_18;
  }

  v15 = [(AVHapticPlayerChannel *)self client];
  v16 = [v15 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.client.clientID != kInvalidClientID";
    v24 = 93;
    goto LABEL_17;
  }

  v17 = [(AVHapticPlayerChannel *)self client];
  v18 = [v17 running];

  if ((v18 & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.client.running";
    v24 = 94;
    goto LABEL_17;
  }

  v19 = [(AVHapticPlayerChannel *)self client];
  v20 = [v19 sendEvents:v8 withImmediateParameters:0 atTime:-[AVHapticPlayerChannel chanID](self channel:"chanID") outToken:0 error:{a5, a4}];

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

- (BOOL)sendEvents:(id)a3 withImmediateParameters:(id)a4 atTime:(double)a5 error:(id *)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
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
    v15 = [(AVHapticPlayerChannel *)self client];
    v30 = 136316162;
    v31 = "AVHapticPlayer.mm";
    v32 = 1024;
    v33 = 103;
    v34 = 2080;
    v35 = "[AVHapticPlayerChannel sendEvents:withImmediateParameters:atTime:error:]";
    v36 = 2048;
    v37 = [v15 clientID];
    v38 = 2048;
    v39 = a5;
    _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: sending event array: clientID: 0x%lx atTime: %.3f", &v30, 0x30u);
  }

LABEL_8:
  v16 = [(AVHapticPlayerChannel *)self client];
  v17 = v16 == 0;

  if (v17)
  {
    v25 = -4804;
    v26 = "self.client != nil";
    v27 = 104;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v27, "[AVHapticPlayerChannel sendEvents:withImmediateParameters:atTime:error:]", v26, v25, a6);
    v24 = 0;
    goto LABEL_18;
  }

  v18 = [(AVHapticPlayerChannel *)self client];
  v19 = [v18 clientID] == -1;

  if (v19)
  {
    v25 = -4812;
    v26 = "self.client.clientID != kInvalidClientID";
    v27 = 105;
    goto LABEL_17;
  }

  v20 = [(AVHapticPlayerChannel *)self client];
  v21 = [v20 running];

  if ((v21 & 1) == 0)
  {
    v25 = -4805;
    v26 = "self.client.running";
    v27 = 106;
    goto LABEL_17;
  }

  v22 = [(AVHapticPlayerChannel *)self client];
  v23 = [v22 sendEvents:v10 withImmediateParameters:v11 atTime:-[AVHapticPlayerChannel chanID](self channel:"chanID") outToken:0 error:{a6, a5}];

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

- (BOOL)clearEvents:(double)a3 error:(id *)a4
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
    v10 = [(AVHapticPlayerChannel *)self client];
    v21 = 136316162;
    v22 = "AVHapticPlayer.mm";
    v23 = 1024;
    v24 = 115;
    v25 = 2080;
    v26 = "[AVHapticPlayerChannel clearEvents:error:]";
    v27 = 2048;
    v28 = [v10 clientID];
    v29 = 2048;
    v30 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clearing events: clientID: 0x%lx fromTime: %.3f", &v21, 0x30u);
  }

LABEL_8:
  v11 = [(AVHapticPlayerChannel *)self client];
  v12 = v11 == 0;

  if (v12)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 116, "[AVHapticPlayerChannel clearEvents:error:]", "self.client != nil", -4804, a4);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v13 = [(AVHapticPlayerChannel *)self client];
  v14 = [v13 clientID] == -1;

  if (v14)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 117, "[AVHapticPlayerChannel clearEvents:error:]", "self.client.clientID != kInvalidClientID", -4812, a4);
    goto LABEL_17;
  }

  v15 = [(AVHapticPlayerChannel *)self client];
  v16 = [v15 running];

  if ((v16 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 118, "[AVHapticPlayerChannel clearEvents:error:]", "self.client.running", -4805, a4);
    goto LABEL_17;
  }

  v17 = [(AVHapticPlayerChannel *)self client];
  v18 = [v17 clearEventsFromTime:-[AVHapticPlayerChannel chanID](self channel:{"chanID"), a3}];

  if ((v18 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 121, "[AVHapticPlayerChannel clearEvents:error:]", "[self.client clearEventsFromTime:fromTime channel:self.chanID]", -4899, a4);
    goto LABEL_17;
  }

  result = 1;
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setParameter:(unint64_t)a3 value:(float)a4 atTime:(double)a5 error:(id *)a6
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
    v14 = [(AVHapticPlayerChannel *)self client];
    v27 = 136316674;
    v28 = "AVHapticPlayer.mm";
    v29 = 1024;
    v30 = 127;
    v31 = 2080;
    v32 = "[AVHapticPlayerChannel setParameter:value:atTime:error:]";
    v33 = 2048;
    v34 = [v14 clientID];
    v35 = 1024;
    v36 = a3;
    v37 = 2048;
    v38 = a4;
    v39 = 2048;
    v40 = a5;
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: setting param: clientID: 0x%lx type: %u value: %.2f atTime: %.3f", &v27, 0x40u);
  }

LABEL_8:
  v15 = [(AVHapticPlayerChannel *)self client];
  v16 = v15 == 0;

  if (v16)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 128, "[AVHapticPlayerChannel setParameter:value:atTime:error:]", "self.client != nil", -4804, a6);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v17 = [(AVHapticPlayerChannel *)self client];
  v18 = [v17 clientID] == -1;

  if (v18)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 129, "[AVHapticPlayerChannel setParameter:value:atTime:error:]", "self.client.clientID != kInvalidClientID", -4812, a6);
    goto LABEL_17;
  }

  v19 = [(AVHapticPlayerChannel *)self client];
  v20 = [v19 running];

  if ((v20 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 130, "[AVHapticPlayerChannel setParameter:value:atTime:error:]", "self.client.running", -4805, a6);
    goto LABEL_17;
  }

  v21 = [(AVHapticPlayerChannel *)self client];
  v22 = [(AVHapticPlayerChannel *)self chanID];
  *&v23 = a4;
  v24 = [v21 setParameter:a3 atTime:v22 value:a5 channel:v23];

  if ((v24 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 133, "[AVHapticPlayerChannel setParameter:value:atTime:error:]", "[self.client setParameter:type atTime:time value:value channel:self.chanID]", -4899, a6);
    goto LABEL_17;
  }

  result = 1;
LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)scheduleParameterCurve:(unint64_t)a3 curve:(id)a4 atTime:(double)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(AVHapticPlayerChannel *)self client];

  if (!v11)
  {
    v19 = -4804;
    v20 = "self.client != nil";
    v21 = 139;
LABEL_10:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v21, "[AVHapticPlayerChannel scheduleParameterCurve:curve:atTime:error:]", v20, v19, a6);
    v18 = 0;
    goto LABEL_11;
  }

  v12 = [(AVHapticPlayerChannel *)self client];
  v13 = [v12 clientID];

  if (v13 == -1)
  {
    v19 = -4812;
    v20 = "self.client.clientID != kInvalidClientID";
    v21 = 140;
    goto LABEL_10;
  }

  v14 = [(AVHapticPlayerChannel *)self client];
  v15 = [v14 running];

  if ((v15 & 1) == 0)
  {
    v19 = -4805;
    v20 = "self.client.running";
    v21 = 141;
    goto LABEL_10;
  }

  v16 = [(AVHapticPlayerChannel *)self client];
  v17 = [v16 scheduleParameterCurve:a3 curve:v10 atTime:-[AVHapticPlayerChannel chanID](self channel:"chanID") error:{a6, a5}];

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

- (BOOL)resetAtTime:(double)a3 error:(id *)a4
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
    v10 = [(AVHapticPlayerChannel *)self client];
    v21 = 136316162;
    v22 = "AVHapticPlayer.mm";
    v23 = 1024;
    v24 = 150;
    v25 = 2080;
    v26 = "[AVHapticPlayerChannel resetAtTime:error:]";
    v27 = 2048;
    v28 = [v10 clientID];
    v29 = 2048;
    v30 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: sending reset event: clientID: 0x%lx time: %.3f", &v21, 0x30u);
  }

LABEL_8:
  v11 = [(AVHapticPlayerChannel *)self client];
  v12 = v11 == 0;

  if (v12)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 151, "[AVHapticPlayerChannel resetAtTime:error:]", "self.client != nil", -4804, a4);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v13 = [(AVHapticPlayerChannel *)self client];
  v14 = [v13 clientID] == -1;

  if (v14)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 152, "[AVHapticPlayerChannel resetAtTime:error:]", "self.client.clientID != kInvalidClientID", -4812, a4);
    goto LABEL_17;
  }

  v15 = [(AVHapticPlayerChannel *)self client];
  v16 = [v15 running];

  if ((v16 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 153, "[AVHapticPlayerChannel resetAtTime:error:]", "self.client.running", -4805, a4);
    goto LABEL_17;
  }

  v17 = [(AVHapticPlayerChannel *)self client];
  v18 = [v17 resetChannel:-[AVHapticPlayerChannel chanID](self atTime:{"chanID"), a3}];

  if ((v18 & 1) == 0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 154, "[AVHapticPlayerChannel resetAtTime:error:]", "[self.client resetChannel:self.chanID atTime:time]", -4899, a4);
    goto LABEL_17;
  }

  result = 1;
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)invalidated
{
  v3 = [(AVHapticPlayerChannel *)self client];
  if (v3)
  {
    v4 = [(AVHapticPlayerChannel *)self client];
    v5 = [v4 clientID] == -1;
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