@interface _GCHapticClientProxy(HapticServer)
- (void)releaseClientResources;
- (void)stopPrewarm;
- (void)stopRunning;
@end

@implementation _GCHapticClientProxy(HapticServer)

- (void)_configureActuatorsLegacyWithOptions:()HapticServer .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_5(a1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_configureActuatorsLegacyWithOptions:()HapticServer .cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *v1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:()HapticServer reply:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *v1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:()HapticServer reply:.cold.3()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:()HapticServer reply:.cold.4()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *v1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:()HapticServer reply:.cold.5(NSObject *a1, uint64_t *a2, NSObject **a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(a1))
  {
    v7 = *a2;
    OUTLINED_FUNCTION_4_1();
    _os_log_impl(&dword_1D2CD5000, a1, OS_LOG_TYPE_DEFAULT, "Received persistent controller identifier %@", v9, 0xCu);
  }

  *a3 = a1;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:()HapticServer reply:.cold.6()
{
  OUTLINED_FUNCTION_3_12();
  v3 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v4))
  {
    v5 = *(v2 + 216);
    v6 = *v1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:()HapticServer reply:.cold.7()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)allocateClientResources:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)releaseClientResources
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCHapticsLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getHapticLatency:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setPlayerBehavior:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)loadHapticEvent:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)loadHapticSequenceFromData:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)loadHapticSequenceFromEvents:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)loadVibePattern:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setSequenceEventBehavior:()HapticServer behavior:channelIndex:reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)referenceCustomAudioEvent:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)releaseCustomAudioEvent:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeCustomAudioEvent:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)prepareHapticSequence:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)detachSequence:()HapticServer .cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCHapticsLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 176);
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)prewarm:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopPrewarm
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCHapticsLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)startRunning:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopRunning
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCHapticsLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopRunning:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)debugExpectNotifyOnFinishAfter:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(v1 + 176);
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end