uint64_t start(int a1, char **a2)
{
  setenv("MTL_TRACING_ENABLE_RESOURCE_RESOLUTION", "1", 1);
  v4 = objc_autoreleasePoolPush();
  v5 = UIApplicationMain(a1, a2, 0, @"MRAppDelegateiOS");
  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_100000FE4(id a1)
{
  qword_10000CF10 = objc_opt_new();

  _objc_release_x1();
}

void sub_100001168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100001CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  objc_destroyWeak((v44 + 56));

  objc_destroyWeak((v46 - 200));
  _Unwind_Resume(a1);
}

void sub_100001E88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v10 = WeakRetained;
  v4 = [WeakRetained shaderProfiler];
  v5 = [v3 startShaderProfiler:v4];

  [v5 waitUntilResolved];
  v6 = [*(a1 + 40) transport];
  v7 = [*(a1 + 48) kind];
  v8 = [v5 result];
  v9 = [DYTransportMessage messageWithKind:v7 plistPayload:v8];
  [v6 send:v9 inReplyTo:*(a1 + 48) error:0];
}

uint64_t sub_100001FD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001FE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = [WeakRetained shaderProfiler];
  v5 = [v3 batchedCounterDataForShaderProfiler:v4];

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002108;
  v8[3] = &unk_100008340;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  [v7 notifyOnQueue:v6 handler:v8];
}

void sub_100002108(uint64_t a1)
{
  v4 = [*(a1 + 32) result];
  [v4 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:kDYBatchFilteredCounterProgress];
  v2 = [*(a1 + 40) transport];
  v3 = [DYTransportMessage messageWithKind:4123 plistPayload:v4];
  [v2 send:v3 inReplyTo:0 error:0];
}

void sub_1000021B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000021E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = [WeakRetained shaderProfiler];
  v5 = [*(a1 + 40) objectPayload];
  v6 = [v5 objectForKeyedSubscript:@"highPriorityBatches"];
  v7 = [v3 batchedCounterDataForShaderProfiler:v4 forHighPriorityBatches:v6];

  v8 = dispatch_get_global_queue(0, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002378;
  v12[3] = &unk_100008390;
  v11 = *(a1 + 40);
  v9 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = v7;
  v10 = v7;
  [v10 notifyOnQueue:v8 handler:v12];
}

void sub_100002378(id *a1)
{
  v5 = [a1[4] transport];
  v2 = [a1[5] kind];
  v3 = [a1[6] result];
  v4 = [DYTransportMessage messageWithKind:v2 plistPayload:v3];
  [v5 send:v4 inReplyTo:a1[5] error:0];
}

void sub_100002450(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v10 = WeakRetained;
  v4 = [WeakRetained shaderProfiler];
  v5 = [v3 derivedCounterDataForFrameProfiler:v4];

  [v5 waitUntilResolved];
  v6 = [*(a1 + 40) transport];
  v7 = [*(a1 + 48) kind];
  v8 = [v5 result];
  v9 = [DYTransportMessage messageWithKind:v7 plistPayload:v8];
  [v6 send:v9 inReplyTo:*(a1 + 48) error:0];
}

void sub_10000278C(uint64_t a1)
{
  v2 = [*(a1 + 32) strongDelegate];
  [v2 setViewController:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
}

void sub_1000027FC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v9 = [v2 view];
    [v9 setImage:*(a1 + 40)];
  }

  else
  {
    v3 = objc_alloc_init(UIViewController);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v9 = [[UIImageView alloc] initWithImage:*(a1 + 40)];
    v6 = +[UIColor blackColor];
    [v9 setBackgroundColor:v6];

    v7 = +[UIScreen mainScreen];
    [v7 bounds];
    [v9 setFrame:?];

    [v9 setContentMode:1];
    [*(*(a1 + 32) + 8) setView:v9];
    v8 = [*(a1 + 32) strongDelegate];
    [v8 setViewController:*(*(a1 + 32) + 8)];
  }
}

id sub_100002C6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 archiveStack];
  v4 = [v2 _replayerControllerSupportForCaptureStore:v3];
  [*(a1 + 32) setReplayControllerSupport:v4];

  v5 = [*(a1 + 32) replayControllerSupport];
  v6 = [*(a1 + 32) archiveStack];
  v7 = [v5 createDebugPlaybackEngineWithCaptureStore:v6];
  [*(a1 + 32) setPlaybackEngine:v7];

  v8 = *(a1 + 32);

  return [v8 _displayPlaybackEngine];
}

void sub_1000031D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000331C(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100003250(uint64_t a1, int a2, char a3)
{
  *(a1 + 8) = +[CATransaction animationTimingFunction];
  +[CATransaction animationDuration];
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 32) = +[CATransaction disableActions];
  *(a1 + 33) = a3;
  v7 = +[CATransaction completionBlock];
  v8 = [v7 copy];
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  if (a2)
  {
    [CATransaction setDisableActions:1];
  }

  return a1;
}

uint64_t sub_10000331C(uint64_t a1)
{
  if (*(a1 + 33) == 1)
  {
    +[CATransaction flush];
  }

  v2 = *(a1 + 8);
  [CATransaction setAnimationTimingFunction:v2];

  [CATransaction setAnimationDuration:*(a1 + 16)];
  [CATransaction setCompletionBlock:*(a1 + 24)];
  [CATransaction setDisableActions:*(a1 + 32)];

  return a1;
}

void sub_100003414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MRAppDelegate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}