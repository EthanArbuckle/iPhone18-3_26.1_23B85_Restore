@interface AFLocalGetMediaPlaybackVolumeNoCheck
@end

@implementation AFLocalGetMediaPlaybackVolumeNoCheck

void ___AFLocalGetMediaPlaybackVolumeNoCheck_block_invoke(uint64_t a1, float a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "_AFLocalGetMediaPlaybackVolumeNoCheck_block_invoke";
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Got MRMediaRemoteGetMediaPlaybackVolume says %f", &v9, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E69C7918]);
  *&v6 = a2;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 setVolumeValue:v7];

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

@end