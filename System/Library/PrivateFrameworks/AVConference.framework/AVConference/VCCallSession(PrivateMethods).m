@interface VCCallSession(PrivateMethods)
- (void)setMediaQueueStreamSettings;
- (void)setSKEBlobOnTransportSession;
- (void)videoRTPID;
@end

@implementation VCCallSession(PrivateMethods)

- (void)setupIDSConnectionForCallID:()PrivateMethods destination:socket:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d startConnectionWithParticipantID: idsSocket and destination are invalid", v2, v3, v4, v5, v6);
}

- (void)setupIDSConnectionForCallID:()PrivateMethods destination:socket:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d startConnectionWithParticipantID: idsSocket and destination are invalid", v2, v3, v4, v5, v6);
}

- (void)setSKEBlobOnTransportSession
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)configureLegacyTransportWithInviteInfo:()PrivateMethods error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_56(v1, v2, v3, v4, v5);
}

- (void)configureLegacyTransportWithInviteInfo:()PrivateMethods error:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)newSKEBlobWithRemoteSKEBlob:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)newSKEBlobWithRemoteSKEBlob:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)newSKEBlobWithRemoteSKEBlob:()PrivateMethods .cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed retreiving the localIdentity from APS", v2, v3, v4, v5, v6);
}

- (void)setupEncryptionWithKey:()PrivateMethods confIndex:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d ---- keyex returns bad key", v2, v3, v4, v5, v6);
}

- (void)setupEncryptionWithKey:()PrivateMethods confIndex:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d setupEncryptionWithKey: Cancelling video encryption", v2, v3, v4, v5, v6);
}

- (void)setupEncryptionWithKey:()PrivateMethods confIndex:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d setupEncryptionWithKey: Cancelling audio encryption", v2, v3, v4, v5, v6);
}

- (void)createSDP:()PrivateMethods audioPayloadCount:secondaryPayloadTypes:secondaryPayloadCount:videoPayloadTypes:videoPayloadCount:localFeatureList:answerBandwidth:maxBandwidth:imageSizesSend:imageSendCount:imageSizesRecv:imageRecvCount:sdp:numSDPBytes:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d createSDP failed", v2, v3, v4, v5, v6);
}

- (void)createSDP:()PrivateMethods audioPayloadCount:secondaryPayloadTypes:secondaryPayloadCount:videoPayloadTypes:videoPayloadCount:localFeatureList:answerBandwidth:maxBandwidth:imageSizesSend:imageSendCount:imageSizesRecv:imageRecvCount:sdp:numSDPBytes:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d createSDP failed", v2, v3, v4, v5, v6);
}

+ (void)setRxPayloadList:()PrivateMethods withPayloadTypes:isRedEnabled:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to allocate payload list", v2, v3, v4, v5, v6);
}

- (void)applyNegotiatedAudioSettings:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [v0 primaryPayload];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

- (void)applyNegotiatedAudioSettings:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *v1 = 0;
  *v0 = v3;
  OUTLINED_FUNCTION_36();
}

- (void)applyNegotiatedAudioSettings:()PrivateMethods .cold.3()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_56(v2, v3, v4, v5, v6);
}

- (void)applyNegotiatedAudioSettings:()PrivateMethods .cold.4()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)applyNegotiatedVideoSettings:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *v1 = 0;
  *v0 = 16;
}

- (void)applyNegotiatedVideoSettings:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *v1 = 0;
  *v0 = 32;
}

- (void)applyNegotiatedVideoSettings:()PrivateMethods .cold.3()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_56(v2, v3, v4, v5, v6);
}

- (void)applyNegotiatedVideoSettings:()PrivateMethods .cold.4()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_14_12(4.8153e-34, v0, v1, v2);
  OUTLINED_FUNCTION_25_6(v3, v4);
  OUTLINED_FUNCTION_24_7(v5, v6);
  OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v9, v7, "VCCallSession [%s] %s:%d failed: Couldn't create the rtp handles!!! error = (%s)", v8);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_14_12(4.8153e-34, v0, v1, v2);
  OUTLINED_FUNCTION_25_6(v3, v4);
  OUTLINED_FUNCTION_24_7(v5, v6);
  OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v9, v7, "VCCallSession [%s] %s:%d failed: Couldn't prepare SRTP for the rtp handles!!! error = (%s)", v8);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.3()
{
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_14_12(4.8153e-34, v0, v1, v2);
  OUTLINED_FUNCTION_25_6(v3, v4);
  OUTLINED_FUNCTION_24_7(v5, v6);
  OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v9, v7, "VCCallSession [%s] %s:%d failed: Couldn't create the media queue handle! error = (%s)", v8);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Callee: setMediaQueueStreamSettings returned NO", v2, v3, v4, v5, v6);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to start rate controller", v2, v3, v4, v5, v6);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.6()
{
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_14_12(4.8153e-34, v0, v1, v2);
  OUTLINED_FUNCTION_25_6(v3, v4);
  OUTLINED_FUNCTION_24_7(v5, v6);
  OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v9, v7, "VCCallSession [%s] %s:%d failed: Couldn't create the audio rtp handles!!! error = (%s)", v8);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to start media queue", v2, v3, v4, v5, v6);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d SIP started, no secret key yet", v2, v3, v4, v5, v6);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to start video", v2, v3, v4, v5, v6);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.10()
{
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_14_12(4.8153e-34, v0, v1, v2);
  OUTLINED_FUNCTION_25_6(v3, v4);
  OUTLINED_FUNCTION_24_7(v5, v6);
  OUTLINED_FUNCTION_56(&dword_1DB56E000, v9, v7, "VCCallSession [%s] %s:%d Failed to start media!!! error = (%s)", v8);
}

- (void)startMediaWithPreNegotiatedSettings:()PrivateMethods .cold.11()
{
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_14_12(4.8153e-34, v0, v1, v2);
  OUTLINED_FUNCTION_25_6(v3, v4);
  OUTLINED_FUNCTION_24_7(v5, v6);
  OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v9, v7, "VCCallSession [%s] %s:%d Failed to start media!!! error = (%s)", v8);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.3()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.4()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.5()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Callee: setMediaQueueStreamSettings returned NO", v2, v3, v4, v5, v6);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d imageAttrForAnswer returned an error", v2, v3, v4, v5, v6);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.9()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.10()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)handleIncomingWithCallID:()PrivateMethods msgIn:msgOut:optional:confIndex:error:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d input SDP was NULL", v2, v3, v4, v5, v6);
}

- (void)getAllPayloadsForVideo:()PrivateMethods count:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Override unrecognized payload", v2, v3, v4, v5, v6);
}

- (void)createInviteSDPWithError:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)createInviteSDPWithError:()PrivateMethods .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      v14 = 6857;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d Failed to allocate image attributes memory for image receive count", &v12, 0x1Cu);
    }
  }

  *a5 = a2;
  *a4 = a1;
  *a3 = 0;
}

- (void)createInviteSDPWithError:()PrivateMethods .cold.4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

- (void)createInviteSDPWithError:()PrivateMethods .cold.5()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

- (void)sendSIPInviteWithError:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30_4();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (*v2)
      {
        [objc_msgSend(*v2 "description")];
      }

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *v1 = 0;
  *v0 = 0;
  OUTLINED_FUNCTION_36();
}

- (void)sendSIPInviteWithError:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      if (*v2)
      {
        [objc_msgSend(*v2 "description")];
      }

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *v1 = 0;
  *v0 = 0;
  OUTLINED_FUNCTION_36();
}

- (void)sendSIPInviteWithError:()PrivateMethods .cold.3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      if (*v0)
      {
        [objc_msgSend(*v0 "description")];
      }

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36();
}

- (void)sendSIPInviteWithError:()PrivateMethods .cold.4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      if (*v0)
      {
        [objc_msgSend(*v0 "description")];
      }

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36();
}

- (void)sendSIPInviteWithError:()PrivateMethods .cold.5()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30_4();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      if (*v2)
      {
        [objc_msgSend(*v2 "description")];
      }

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *v1 = 1;
  *v0 = 1;
  OUTLINED_FUNCTION_36();
}

- (void)sendSIPInviteWithError:()PrivateMethods .cold.6()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      if (*v7)
      {
        [objc_msgSend(*v7 "description")];
      }

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0x26u);
    }
  }

  *v1 = v5 & 1;
  *v3 = v5 & 1;
  OUTLINED_FUNCTION_36();
}

- (void)prepareSRTPWithError:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d VCCallSession: FAILED TO PREPARE ENCRYPTION FOR AUDIO...", v2, v3, v4, v5, v6);
}

- (void)prepareSRTPWithError:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d VCCallSession: FAILED TO PREPARE ENCRYPTION FOR AUDIO...", v2, v3, v4, v5, v6);
}

- (void)prepareSRTPWithError:()PrivateMethods .cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d VCCallSession: FAILED TO PREPARE ENCRYPTION FOR VIDEO...", v2, v3, v4, v5, v6);
}

- (void)prepareSRTPWithError:()PrivateMethods .cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d VCCallSession: FAILED TO PREPARE ENCRYPTION FOR VIDEO...", v2, v3, v4, v5, v6);
}

- (void)createMediaQueueHandle:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x28u);
}

- (void)createMediaQueueHandle:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)negotiatePayloads:()PrivateMethods withError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Could not find matching codec", v2, v3, v4, v5, v6);
}

- (void)negotiatePayloads:()PrivateMethods withError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Could not find matching codec", v2, v3, v4, v5, v6);
}

- (void)negotiatePayloads:()PrivateMethods withError:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 7541;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCCallSession [%s] %s:%d Not using secondary audio, no codecs found", v1, 0x1Cu);
}

- (void)negotiatePayloads:()PrivateMethods withError:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Could not find matching video codec", v2, v3, v4, v5, v6);
}

- (void)negotiatePayloads:()PrivateMethods withError:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Could not find matching video codec", v2, v3, v4, v5, v6);
}

- (void)negotiatePayloads:()PrivateMethods withError:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d SetBWEstMode critical failure.", v2, v3, v4, v5, v6);
}

- (void)negotiatePayloads:()PrivateMethods withError:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d SetBWEstMode critical failure.", v2, v3, v4, v5, v6);
}

- (void)negotiatePayloads:()PrivateMethods withError:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d parseSDP failed", v2, v3, v4, v5, v6);
}

- (void)getAllCompatibleVideoPayloads:()PrivateMethods forMediaType:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Override unrecognized payload", v2, v3, v4, v5, v6);
}

- (void)getCompatibleLocalFeatureListForPayloads:()PrivateMethods count:.cold.1()
{
  [objc_msgSend(&unk_1F5799FA8 "description")];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

- (void)setMediaQueueStreamSettings
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupCallerRTPChannelWithError:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)setupCallerRTPChannelWithError:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)setupCallerRTPChannelWithError:()PrivateMethods .cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d setMediaQueueStreamSettings returned NO", v2, v3, v4, v5, v6);
}

- (void)setupCallerRTPChannelWithError:()PrivateMethods .cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d VCAudioReceiver_Start returned NO", v2, v3, v4, v5, v6);
}

- (void)setupCallerRTPChannelWithError:()PrivateMethods .cold.5()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)updateDeviceRole:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d stop audio timed out", v2, v3, v4, v5, v6);
}

- (void)updateDeviceRole:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d stop audio timed out", v2, v3, v4, v5, v6);
}

- (void)updateDeviceRole:()PrivateMethods .cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d updateDeviceRole: start audio timed out", v2, v3, v4, v5, v6);
}

- (void)updateDeviceRole:()PrivateMethods .cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d updateDeviceRole: start audio timed out", v2, v3, v4, v5, v6);
}

- (void)startVideoSend:()PrivateMethods error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d VCCALLSESSION: call is not ready for startVideoIO, returning error", v2, v3, v4, v5, v6);
}

- (void)startVideoSend:()PrivateMethods error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Could not initialize video transmitter", v2, v3, v4, v5, v6);
}

- (void)startVideoSend:()PrivateMethods error:.cold.3()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)startVideoReceive:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d VCCALLSESSION: call is not ready for startVideoIO, returning error", v2, v3, v4, v5, v6);
}

- (void)startVideoReceive:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)stopVideoSend:()PrivateMethods error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d stopVideoIO:FALSE FAILED:", v2, v3, v4, v5, v6);
}

- (void)startAFRC:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x28u);
}

- (void)startAFRC:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)startRateControl:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to start AFRC", v2, v3, v4, v5, v6);
}

- (void)startRateControl:()PrivateMethods .cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to start VCRC", v2, v3, v4, v5, v6);
}

- (void)sipConnectThreadProc:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d SIP started, no secret key yet", v2, v3, v4, v5, v6);
}

- (void)videoRTPID
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)handleDuplicationEnabled:()PrivateMethods activeConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d got a nil connection to use", v2, v3, v4, v5, v6);
}

- (void)mapPacketMultiplexModeToRTPMode:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Invalid VCCallSession packet multiplex mode", v2, v3, v4, v5, v6);
}

- (void)mapPacketMultiplexModeToSIPMode:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Invalid VCCallSession packet multiplex mode", v2, v3, v4, v5, v6);
}

- (void)disconnectInternal:()PrivateMethods disconnectError:didRemoteCancel:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to send disconnect message", v2, v3, v4, v5, v6);
}

@end