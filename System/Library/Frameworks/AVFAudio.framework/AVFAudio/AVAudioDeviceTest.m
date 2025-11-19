@interface AVAudioDeviceTest
- (AVAudioDeviceTest)init;
- (AVAudioDeviceTest)initWithXPCEndPoint:(id)a3;
- (id)initInProcess:(BOOL)a3;
- (void)cancel;
- (void)dealloc;
- (void)playback:(id)a3 filePath:(id)a4 completion:(id)a5;
- (void)playbackTone:(id)a3 completion:(id)a4;
- (void)setupAudioSessionForHearingTest:(id)a3;
- (void)setupAudioSessionForHearingTestWithStatus:(id)a3 success:(id)a4;
- (void)startRecording:(id)a3 filePath:(id)a4 completion:(id)a5;
- (void)startWithSequence:(id)a3 completion:(id)a4;
- (void)stopAudioSession:(id)a3;
- (void)stopPlayback;
- (void)stopRecording:(id)a3;
@end

@implementation AVAudioDeviceTest

- (void)dealloc
{
  v3 = [(AVAudioDeviceTest *)self service];

  if (!v3)
  {
    v4 = [(AVAudioDeviceTest *)self connection];
    [v4 invalidate];
  }

  v5.receiver = self;
  v5.super_class = AVAudioDeviceTest;
  [(AVAudioDeviceTest *)&v5 dealloc];
}

- (void)cancel
{
  v3 = [(AVAudioDeviceTest *)self service];

  if (!v3)
  {
    v4 = [(AVAudioDeviceTest *)self serviceDelegateAsync];
    [v4 cancel];
  }
}

- (void)stopAudioSession:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v5 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(AVAudioDeviceTest *)self connection];
    v11 = 136315650;
    v12 = "AVAudioDeviceTest.mm";
    v13 = 1024;
    v14 = 272;
    v15 = 1024;
    v16 = [v6 processIdentifier];
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Stopping audio session. { pid=%d }", &v11, 0x18u);
  }

  v7 = [(AVAudioDeviceTest *)self service];
  v8 = v7 == 0;

  if (v8)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v9 = ;
    [v9 stopAudioSession:v4];
  }

  else
  {
    v9 = [(AVAudioDeviceTest *)self service];
    [v9 stopAudioSession:v4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setupAudioSessionForHearingTestWithStatus:(id)a3 success:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v8 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(AVAudioDeviceTest *)self connection];
    v14 = 136315650;
    v15 = "AVAudioDeviceTest.mm";
    v16 = 1024;
    v17 = 260;
    v18 = 1024;
    v19 = [v9 processIdentifier];
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Setting up hearing test audio session. { pid=%d }", &v14, 0x18u);
  }

  v10 = [(AVAudioDeviceTest *)self service];
  v11 = v10 == 0;

  if (v11)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v12 = ;
    [v12 setupAudioSessionForHearingTestWithStatus:v6 success:v7];
  }

  else
  {
    v12 = [(AVAudioDeviceTest *)self service];
    [v12 setupAudioSessionForHearingTestWithStatus:v6 success:v7];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setupAudioSessionForHearingTest:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v5 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(AVAudioDeviceTest *)self connection];
    v11 = 136315650;
    v12 = "AVAudioDeviceTest.mm";
    v13 = 1024;
    v14 = 247;
    v15 = 1024;
    v16 = [v6 processIdentifier];
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Setting up hearing test audio session. { pid=%d }", &v11, 0x18u);
  }

  v7 = [(AVAudioDeviceTest *)self service];
  v8 = v7 == 0;

  if (v8)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v9 = ;
    [v9 setupAudioSessionForHearingTest:v4];
  }

  else
  {
    v9 = [(AVAudioDeviceTest *)self service];
    [v9 setupAudioSessionForHearingTest:v4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopRecording:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v5 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "AVAudioDeviceTest.mm";
    v12 = 1024;
    v13 = 235;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopping recording on client side", &v10, 0x12u);
  }

  v6 = [(AVAudioDeviceTest *)self service];
  v7 = v6 == 0;

  if (v7)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v8 = ;
    [v8 stopRecording:v4];
  }

  else
  {
    v8 = [(AVAudioDeviceTest *)self service];
    [v8 stopRecording:v4];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)startRecording:(id)a3 filePath:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v11 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315650;
    v25 = "AVAudioDeviceTest.mm";
    v26 = 1024;
    v27 = 211;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d starting recording on client side %@", &v24, 0x1Cu);
  }

  v12 = [(AVAudioDeviceTest *)self service];
  v13 = v12 == 0;

  if (v13)
  {
    v15 = v9;
    [v9 fileSystemRepresentation];
    v16 = *MEMORY[0x1E69E9BB0];
    v17 = *MEMORY[0x1E69E9BE0];
    v18 = sandbox_extension_issue_file();
    if (AVAudioDeviceTestClientLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
    }

    v19 = *AVAudioDeviceTestClientLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315906;
      v25 = "AVAudioDeviceTest.mm";
      v26 = 1024;
      v27 = 218;
      v28 = 2080;
      v29 = v16;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Issuing sandbox %s for path %@", &v24, 0x26u);
    }

    if (v18)
    {
      v20 = [(AVAudioDeviceTest *)self serviceDelegateSync];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
      [v20 passExtensionToken:v21];

      free(v18);
    }

    else
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v22 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        v24 = 136315394;
        v25 = "AVAudioDeviceTest.mm";
        v26 = 1024;
        v27 = 225;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to extend the service's sandbox", &v24, 0x12u);
      }
    }

    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v14 = ;
    [v14 startRecording:v8 filePath:v9 completion:v10];
  }

  else
  {
    v14 = [(AVAudioDeviceTest *)self service];
    [v14 startRecording:v8 filePath:v9 completion:v10];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)stopPlayback
{
  v12 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v3 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "AVAudioDeviceTest.mm";
    v10 = 1024;
    v11 = 199;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopping playback tone on client side", &v8, 0x12u);
  }

  v4 = [(AVAudioDeviceTest *)self service];
  v5 = v4 == 0;

  if (v5)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v6 = ;
    [v6 stopPlayback];
  }

  else
  {
    v6 = [(AVAudioDeviceTest *)self service];
    [v6 stopPlayback];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)playbackTone:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v8 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "AVAudioDeviceTest.mm";
    v15 = 1024;
    v16 = 187;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d playback tone on client side", &v13, 0x12u);
  }

  v9 = [(AVAudioDeviceTest *)self service];
  v10 = v9 == 0;

  if (v10)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v11 = ;
    [v11 playbackTone:v6 completion:v7];
  }

  else
  {
    v11 = [(AVAudioDeviceTest *)self service];
    [v11 playbackTone:v6 completion:v7];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)playback:(id)a3 filePath:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v11 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "AVAudioDeviceTest.mm";
    v26 = 1024;
    v27 = 163;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d playback on client side", &v24, 0x12u);
  }

  v12 = [(AVAudioDeviceTest *)self service];
  v13 = v12 == 0;

  if (v13)
  {
    v15 = *MEMORY[0x1E69E9BB0];
    v16 = *MEMORY[0x1E69E9BE0];
    v17 = sandbox_extension_issue_generic();
    if (AVAudioDeviceTestClientLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
    }

    v18 = *AVAudioDeviceTestClientLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *MEMORY[0x1E69E9BA8];
      v24 = 136315906;
      v25 = "AVAudioDeviceTest.mm";
      v26 = 1024;
      v27 = 170;
      v28 = 2080;
      v29 = v19;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Issuing sandbox %s for path %@", &v24, 0x26u);
    }

    if (v17)
    {
      v20 = [(AVAudioDeviceTest *)self serviceDelegateSync];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
      [v20 passExtensionToken:v21];

      free(v17);
    }

    else
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v22 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        v24 = 136315394;
        v25 = "AVAudioDeviceTest.mm";
        v26 = 1024;
        v27 = 177;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to extend the service's sandbox", &v24, 0x12u);
      }
    }

    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v14 = ;
    [v14 playback:v8 filePath:v9 completion:v10];
  }

  else
  {
    v14 = [(AVAudioDeviceTest *)self service];
    [v14 playback:v8 filePath:v9 completion:v10];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)startWithSequence:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v8 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "AVAudioDeviceTest.mm";
    v33 = 1024;
    v34 = 127;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d starting sequence on client side", buf, 0x12u);
  }

  v9 = [(AVAudioDeviceTest *)self service];
  v10 = v9 == 0;

  if (v10)
  {
    v13 = [v6 stimulusURL];
    v14 = v13;
    [v13 fileSystemRepresentation];
    v15 = *MEMORY[0x1E69E9BA8];
    v16 = *MEMORY[0x1E69E9BE0];
    v17 = sandbox_extension_issue_file();

    if (AVAudioDeviceTestClientLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
    }

    v18 = *AVAudioDeviceTestClientLog(void)::category;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 stimulusURL];
      v20 = v19;
      v21 = [v19 fileSystemRepresentation];
      *buf = 136315906;
      v32 = "AVAudioDeviceTest.mm";
      v33 = 1024;
      v34 = 139;
      v35 = 2080;
      v36 = v15;
      v37 = 2080;
      v38 = v21;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Issuing sandbox %s for path %s", buf, 0x26u);
    }

    if (v17)
    {
      v22 = [(AVAudioDeviceTest *)self serviceDelegateSync];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
      [v22 passExtensionToken:v23];

      free(v17);
    }

    else
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v24 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "AVAudioDeviceTest.mm";
        v33 = 1024;
        v34 = 146;
        _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to extend the service's sandbox", buf, 0x12u);
      }
    }

    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v12 = ;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __50__AVAudioDeviceTest_startWithSequence_completion___block_invoke_54;
    v27[3] = &unk_1E7EF54B8;
    v28 = v7;
    [v12 startWithSequence:v6 completion:v27];
    if (AVAudioDeviceTestClientLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
    }

    v25 = *AVAudioDeviceTestClientLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "AVAudioDeviceTest.mm";
      v33 = 1024;
      v34 = 157;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d finishing sequence on client side", buf, 0x12u);
    }
  }

  else
  {
    v11 = [(AVAudioDeviceTest *)self service];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __50__AVAudioDeviceTest_startWithSequence_completion___block_invoke;
    v29[3] = &unk_1E7EF54B8;
    v30 = v7;
    [v11 startWithSequence:v6 completion:v29];

    v12 = v30;
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __50__AVAudioDeviceTest_startWithSequence_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v16 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v34 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if (AVAudioDeviceTestClientLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
        }

        v9 = *AVAudioDeviceTestClientLog(void)::category;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 data];
          v11 = [v8 outputID];
          v12 = [v8 inputID];
          [v8 sampleRate];
          *buf = 136316418;
          v23 = "AVAudioDeviceTest.mm";
          v24 = 1024;
          v25 = 132;
          v26 = 2112;
          v27 = v10;
          v28 = 2048;
          v29 = v11;
          v30 = 2048;
          v31 = v12;
          v32 = 2048;
          v33 = v13;
          _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d result data %@ output %li input %li sample rate %f", buf, 0x3Au);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v34 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

void __50__AVAudioDeviceTest_startWithSequence_completion___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v16 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v34 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if (AVAudioDeviceTestClientLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
        }

        v9 = *AVAudioDeviceTestClientLog(void)::category;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 data];
          v11 = [v8 outputID];
          v12 = [v8 inputID];
          [v8 sampleRate];
          *buf = 136316418;
          v23 = "AVAudioDeviceTest.mm";
          v24 = 1024;
          v25 = 153;
          v26 = 2112;
          v27 = v10;
          v28 = 2048;
          v29 = v11;
          v30 = 2048;
          v31 = v12;
          v32 = 2048;
          v33 = v13;
          _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d result data %@ output %li input %li sample rate %f", buf, 0x3Au);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v34 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

- (id)initInProcess:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AVAudioDeviceTest;
  v4 = [(AVAudioDeviceTest *)&v11 init];
  if (v4)
  {
    if (v3)
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v5 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "AVAudioDeviceTest.mm";
        v14 = 1024;
        v15 = 114;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initializing AVAudioDeviceTest for in-process operation.", buf, 0x12u);
      }

      v6 = objc_alloc_init(AVAudioDeviceTestService);
      [(AVAudioDeviceTest *)v4 setService:v6];
    }

    else
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v7 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "AVAudioDeviceTest.mm";
        v14 = 1024;
        v15 = 117;
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initializing AVAudioDeviceTest for out-of-process operation.", buf, 0x12u);
      }

      v4 = [(AVAudioDeviceTest *)v4 initWithXPCEndPoint:0];
    }
  }

  v8 = v4;

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (AVAudioDeviceTest)init
{
  v10 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v3 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "AVAudioDeviceTest.mm";
    v8 = 1024;
    v9 = 103;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initializing AVAudioDeviceTest for out-of-process operation.", &v6, 0x12u);
  }

  result = [(AVAudioDeviceTest *)self initWithXPCEndPoint:0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (AVAudioDeviceTest)initWithXPCEndPoint:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v55.receiver = self;
  v55.super_class = AVAudioDeviceTest;
  v5 = [(AVAudioDeviceTest *)&v55 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v4];
    [(AVAudioDeviceTest *)v5 setConnection:v6];

LABEL_5:
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3864788];
    v10 = [(AVAudioDeviceTest *)v5 connection];
    [v10 setRemoteObjectInterface:v9];

    v11 = [(AVAudioDeviceTest *)v5 connection];
    v12 = [v11 remoteObjectInterface];
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    [v12 setClasses:v16 forSelector:sel_startWithSequence_completion_ argumentIndex:0 ofReply:1];

    v17 = [(AVAudioDeviceTest *)v5 connection];
    v18 = [v17 remoteObjectInterface];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    [v18 setClasses:v21 forSelector:sel_startWithSequence_completion_ argumentIndex:0 ofReply:0];

    v22 = [(AVAudioDeviceTest *)v5 connection];
    v23 = [v22 remoteObjectInterface];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    [v23 setClasses:v26 forSelector:sel_playback_filePath_completion_ argumentIndex:0 ofReply:0];

    v27 = [(AVAudioDeviceTest *)v5 connection];
    v28 = [v27 remoteObjectInterface];
    v29 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v28 setClasses:v29 forSelector:sel_playback_filePath_completion_ argumentIndex:0 ofReply:1];

    v30 = [(AVAudioDeviceTest *)v5 connection];
    v31 = [v30 remoteObjectInterface];
    [v31 setClass:objc_opt_class() forSelector:sel_playbackTone_completion_ argumentIndex:0 ofReply:0];

    v32 = [(AVAudioDeviceTest *)v5 connection];
    v33 = [v32 remoteObjectInterface];
    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
    [v33 setClasses:v37 forSelector:sel_playbackTone_completion_ argumentIndex:0 ofReply:1];

    v38 = [(AVAudioDeviceTest *)v5 connection];
    v39 = [v38 remoteObjectInterface];
    v40 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v39 setClasses:v40 forSelector:sel_setupAudioSessionForHearingTest_ argumentIndex:0 ofReply:1];

    v41 = [(AVAudioDeviceTest *)v5 connection];
    v42 = [v41 remoteObjectInterface];
    v43 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v42 setClasses:v43 forSelector:sel_stopAudioSession_ argumentIndex:0 ofReply:1];

    v44 = [(AVAudioDeviceTest *)v5 connection];
    v45 = [v44 remoteObjectProxyWithErrorHandler:&__block_literal_global_42];
    [(AVAudioDeviceTest *)v5 setServiceDelegateAsync:v45];

    v46 = [(AVAudioDeviceTest *)v5 connection];
    v47 = [v46 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_45];
    [(AVAudioDeviceTest *)v5 setServiceDelegateSync:v47];

    v48 = [(AVAudioDeviceTest *)v5 connection];
    [v48 setInterruptionHandler:&__block_literal_global_48];

    v49 = [(AVAudioDeviceTest *)v5 connection];
    [v49 setInvalidationHandler:&__block_literal_global_51];

    v50 = [(AVAudioDeviceTest *)v5 connection];
    [v50 resume];

LABEL_6:
    v51 = v5;
    goto LABEL_7;
  }

  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.avfaudio.devicetest.service"];
  [(AVAudioDeviceTest *)v5 setConnection:v7];

  v8 = [(AVAudioDeviceTest *)v5 connection];
  LODWORD(v7) = v8 == 0;

  if (!v7)
  {
    goto LABEL_5;
  }

  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v54 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v57 = "AVAudioDeviceTest.mm";
    v58 = 1024;
    v59 = 54;
    v60 = 2112;
    v61 = @"com.apple.avfaudio.devicetest.service";
    _os_log_impl(&dword_1BA5AC000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating XPC connection to %@", buf, 0x1Cu);
  }

  v51 = 0;
LABEL_7:

  v52 = *MEMORY[0x1E69E9840];
  return v51;
}

void __41__AVAudioDeviceTest_initWithXPCEndPoint___block_invoke_49()
{
  v6 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v0 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "AVAudioDeviceTest.mm";
    v4 = 1024;
    v5 = 92;
    _os_log_impl(&dword_1BA5AC000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalidation Handler: client exited", &v2, 0x12u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __41__AVAudioDeviceTest_initWithXPCEndPoint___block_invoke_46()
{
  v6 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v0 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "AVAudioDeviceTest.mm";
    v4 = 1024;
    v5 = 89;
    _os_log_impl(&dword_1BA5AC000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Interruption Handler: connection got interrupted", &v2, 0x12u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __41__AVAudioDeviceTest_initWithXPCEndPoint___block_invoke_43(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v3 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v6 = 136315650;
    v7 = "AVAudioDeviceTest.mm";
    v8 = 1024;
    v9 = 84;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __41__AVAudioDeviceTest_initWithXPCEndPoint___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v3 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v6 = 136315650;
    v7 = "AVAudioDeviceTest.mm";
    v8 = 1024;
    v9 = 79;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end