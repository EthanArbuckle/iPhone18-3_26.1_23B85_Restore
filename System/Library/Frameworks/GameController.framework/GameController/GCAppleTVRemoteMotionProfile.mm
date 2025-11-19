@interface GCAppleTVRemoteMotionProfile
@end

@implementation GCAppleTVRemoteMotionProfile

void __56___GCAppleTVRemoteMotionProfile_setValueChangedHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (!WeakRetained[63] && !WeakRetained[64])
  {
    [a1[4] _startDeviceMotionUpdates];
  }

  v3 = [a1[5] copy];
  v4 = v5[63];
  v5[63] = v3;
}

void __56___GCAppleTVRemoteMotionProfile_setValueChangedHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (!*(WeakRetained + 64))
  {
    [*(a1 + 32) _stopDeviceMotionUpdates];
    WeakRetained = v4;
  }

  v3 = *(WeakRetained + 63);
  *(WeakRetained + 63) = 0;
}

void __64___GCAppleTVRemoteMotionProfile_setInternalValueChangedHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (!WeakRetained[63] && !WeakRetained[64])
  {
    [a1[4] _startDeviceMotionUpdates];
  }

  v3 = [a1[5] copy];
  v4 = v5[64];
  v5[64] = v3;
}

void __64___GCAppleTVRemoteMotionProfile_setInternalValueChangedHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (!*(WeakRetained + 63))
  {
    [*(a1 + 32) _stopDeviceMotionUpdates];
    WeakRetained = v4;
  }

  v3 = *(WeakRetained + 64);
  *(WeakRetained + 64) = 0;
}

void __56___GCAppleTVRemoteMotionProfile__motionLiteFusedHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (kGlyphFlagProtocolXboxLogo_block_invoke_onceToken != -1)
  {
    __56___GCAppleTVRemoteMotionProfile__motionLiteFusedHandler__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v5 machTimestamp];
    kdebug_trace();
    if (WeakRetained[496] == 1)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v5 isUsingCompass];
        WeakRetained[498] = v8;
        v9 = [v5 attitude];
        [v9 pitch];
        v11 = v10;
        [v9 yaw];
        v13 = v12;
        [v9 roll];
        *(WeakRetained + 51) = v11;
        *(WeakRetained + 52) = v13;
        *(WeakRetained + 53) = v14;
        if (v8)
        {
          [v5 rotationRate];
          *(WeakRetained + 57) = v15;
          *(WeakRetained + 58) = v16;
          *(WeakRetained + 59) = v17;
          [v9 quaternion];
          *(WeakRetained + 43) = v18;
          *(WeakRetained + 44) = v19;
          *(WeakRetained + 45) = v20;
          *(WeakRetained + 46) = v21;
        }

        [v5 gravity];
        *(WeakRetained + 34) = v22;
        *(WeakRetained + 35) = v23;
        *(WeakRetained + 36) = v24;
      }
    }

    else
    {
      [v5 gravity];
      *(WeakRetained + 34) = v25;
      *(WeakRetained + 35) = v26;
      *(WeakRetained + 36) = v27;
    }

    [v5 userAcceleration];
    *(WeakRetained + 40) = v28;
    *(WeakRetained + 41) = v29;
    *(WeakRetained + 42) = v30;
    [v5 tip];
    *(WeakRetained + 120) = v31;
    [v5 tilt];
    *(WeakRetained + 121) = v32;
    [v5 machTimestamp];
    kdebug_trace();
    if (*(WeakRetained + 63))
    {
      v33 = [WeakRetained controller];
      if (v33)
      {
        v34 = v33;
        v35 = [WeakRetained controller];
        v36 = [v35 handlerQueue];

        if (v36)
        {
          v37 = [WeakRetained controller];
          v38 = [v37 handlerQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __56___GCAppleTVRemoteMotionProfile__motionLiteFusedHandler__block_invoke_3;
          block[3] = &unk_1E8418C28;
          v41 = WeakRetained;
          dispatch_async(v38, block);
        }
      }
    }

    v39 = *(WeakRetained + 64);
    if (v39)
    {
      (*(v39 + 16))(v39, WeakRetained);
    }
  }
}

void __56___GCAppleTVRemoteMotionProfile__motionLiteFusedHandler__block_invoke_2()
{
  v0 = +[GCAnalytics instance];
  [v0 onSiriMotionEnabled];
}

uint64_t __56___GCAppleTVRemoteMotionProfile__motionLiteFusedHandler__block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 504);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end