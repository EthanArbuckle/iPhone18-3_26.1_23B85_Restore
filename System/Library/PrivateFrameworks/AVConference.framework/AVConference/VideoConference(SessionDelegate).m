@interface VideoConference(SessionDelegate)
@end

@implementation VideoConference(SessionDelegate)

- (void)session:()SessionDelegate didStart:connectionType:localInterfaceType:remoteInterfaceType:error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v1, v2, "VideoConference [%s] %s:%d VideoConference: didStart when call is not running? session %s", v3, v4, v5, v6, v7);
}

- (void)session:()SessionDelegate receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

- (void)session:()SessionDelegate receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d VideoConference: no image queue/layer to draw to... This should be reported!", v2, v3, v4, v5, v6);
}

- (void)session:()SessionDelegate receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:.cold.3()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

- (void)session:()SessionDelegate receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

- (void)session:()SessionDelegate startVideoSend:captureRuleWifi:captureRuleCell:interface:isUnpausing:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d registerForVideoFramesWithDeviceRole failed; self = %p", v2, v3, v4, v5);
}

- (void)registerForVideoFramesWithDeviceRole:()SessionDelegate captureRule:isUnpausing:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d VCVideoCaptureServer registerForVideoFramesFromSource (VCCaptureSourceScreen) failed; self = %p", v2, v3, v4, v5);
}

- (void)registerForVideoFramesWithDeviceRole:()SessionDelegate captureRule:isUnpausing:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d VCVideoCaptureServer registerForVideoFramesFromSource (VCCaptureSourceCamera) failed; self = %p", v2, v3, v4, v5);
}

- (void)registerForVideoFramesWithDeviceRole:()SessionDelegate captureRule:isUnpausing:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d VCVideoRelay registerForVideoFrames failed; self = %p", v2, v3, v4, v5);
}

- (void)stopVideoSend:()SessionDelegate error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d deregisterForVideoFramesWithDeviceRole failed; self = %p", v2, v3, v4, v5);
}

- (void)deregisterForVideoFramesWithDeviceRole:()SessionDelegate .cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d VCVideoCaptureServer deregisterForVideoFramesFromSource (VCCaptureSourceCamera) failed; self = %p", v2, v3, v4, v5);
}

- (void)deregisterForVideoFramesWithDeviceRole:()SessionDelegate .cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d VCVideoCaptureServer deregisterForVideoFramesFromSource (VCCaptureSourceScreen) failed; self = %p", v2, v3, v4, v5);
}

- (void)deregisterForVideoFramesWithDeviceRole:()SessionDelegate .cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d VCVideoRelay deregisterForVideoFrames failed; self = %p", v2, v3, v4, v5);
}

@end