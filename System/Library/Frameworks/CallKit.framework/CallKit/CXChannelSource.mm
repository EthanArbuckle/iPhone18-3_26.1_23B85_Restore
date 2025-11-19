@interface CXChannelSource
- (void)handleAudioSessionActivationStateChangedTo:(id)a3;
@end

@implementation CXChannelSource

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  v4 = a3;
  v5 = [(CXAbstractProviderSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CXChannelSource_handleAudioSessionActivationStateChangedTo___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__CXChannelSource_handleAudioSessionActivationStateChangedTo___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) BOOLValue];
    v6 = 136315394;
    v7 = "[CXChannelSource handleAudioSessionActivationStateChangedTo:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s %d", &v6, 0x12u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  [v4 handleAudioSessionActivationStateChangedTo:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

@end