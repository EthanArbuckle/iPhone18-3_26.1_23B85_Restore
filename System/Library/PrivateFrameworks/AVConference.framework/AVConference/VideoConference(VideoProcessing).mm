@interface VideoConference(VideoProcessing)
@end

@implementation VideoConference(VideoProcessing)

- (void)onVideoFrame:()VideoProcessing frameTime:attribute:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d VideoConference: onCaptureFrame failed to acquire rdlock, FRAME SKIPPED", v2, v3, v4, v5, v6);
}

- (void)avConferencePreviewError:()VideoProcessing .cold.1()
{
  OUTLINED_FUNCTION_14_5();
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v1, v2, "VideoConference [%s] %s:%d VideoConference: received error from camera: %s", v3, v4, v5, v6, v7);
}

- (void)avConferenceScreenCaptureError:()VideoProcessing .cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v5 = *MEMORY[0x1E69E9840];
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  v4 = v2;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, "VideoConference [%s] %s:%d VideoConference: received error from Screen Capture: %s", v3, 0x26u);
}

- (void)avConferenceScreenCaptureError:()VideoProcessing .cold.2()
{
  OUTLINED_FUNCTION_14_5();
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v1, v2, "VideoConference [%s] %s:%d VideoConference: received error from Screen Capture: %s", v3, v4, v5, v6, v7);
}

@end