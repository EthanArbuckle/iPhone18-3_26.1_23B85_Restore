__CFString *CAMStringForOverlayVisibilityReason(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_100055380[a1 + 1];
  }
}

void sub_100002A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_100002A9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleTimer:v2 firedWithReason:*(a1 + 48)];
}

void sub_10000478C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 contentSize];
  v5 = v4;
  [v3 contentSize];
  v7 = v6;

  v8 = vabdd_f64(v5, v7);
  v9 = *(*(a1 + 32) + 8);
  if (v8 > *(v9 + 24))
  {
    *(v9 + 24) = v8;
  }
}

void sub_1000047F0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 contentSize];
  v5 = v4;
  [v3 contentSize];
  v7 = v6;

  v8 = vabdd_f64(v5, v7);
  v9 = *(*(a1 + 32) + 8);
  if (v8 > *(v9 + 24))
  {
    *(v9 + 24) = v8;
  }
}

void sub_100004D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005578(uint64_t a1)
{
  sub_1000055D0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SANDoubleHalfPressRecognizer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000605C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100035F2C();
    sub_1000055D0();
  }
}

void sub_1000055D0()
{
  v1[0] = 0;
  if (!qword_1000605C8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000056CC;
    v1[4] = &unk_100055418;
    v1[5] = v1;
    v2 = off_100055400;
    v3 = 0;
    qword_1000605C8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000605C8)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1000056CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000605C8 = result;
  return result;
}

Class sub_100005740(uint64_t a1)
{
  sub_1000055D0();
  result = objc_getClass("SANTouchSensitiveButtonEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000605D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100035F54();
    return sub_100005798(v3);
  }

  return result;
}

CAMOverlaySliderState *sub_100005798(uint64_t a1)
{
  sub_1000055D0();
  result = objc_getClass("SANForceStageEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000605D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100035F7C();
    return [(CAMOverlaySliderState *)v3 init];
  }

  return result;
}

void sub_100006074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006098(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = [NSNumber numberWithDouble:a2];
    v5 = [v11 sliderIfLoaded];
    [CAMSystemOverlayView _applyGainModulationToElement:v5 withInputAmount:v4];

    v6 = [v11 menu];
    [CAMSystemOverlayView _applyGainModulationToElement:v6 withInputAmount:v4];

    v7 = [v11 _handleBarView];
    [CAMSystemOverlayView _applyGainModulationToElement:v7 withInputAmount:v4];

    v8 = [v11 _valueLabelContainer];
    [CAMSystemOverlayView _applyGainModulationToElement:v8 withInputAmount:v4];

    v9 = [v11 _coachingAnimationLabel];
    v10 = [NSNumber numberWithDouble:a2 + 2.0];
    [CAMSystemOverlayView _applyGainModulationToElement:v9 withInputAmount:v10];

    WeakRetained = v11;
  }
}

id sub_100006AB0(uint64_t a1)
{
  v13 = CGRectInset(*(a1 + 48), -5.0, 0.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  [*(a1 + 32) setBounds:?];
  result = [*(a1 + 40) setBounds:{x, y, width, height}];
  if ((*(a1 + 80) & 1) == 0)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    UIRectGetCenter();
    v11 = *(a1 + 40);

    return [v11 setCenter:?];
  }

  return result;
}

id sub_100008830(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void sub_10000996C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v31 - 144));
  _Unwind_Resume(a1);
}

void sub_1000099D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutIfNeeded];
}

void sub_100009A24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isSliderVisible] & 1) == 0 && objc_msgSend(WeakRetained, "_sliderHideAnimationCount") == *(a1 + 40) && (objc_msgSend(WeakRetained, "_isCoachingAnimationVisible") & 1) == 0)
  {
    v2 = [WeakRetained _backgroundDroplet];
    [v2 setHidden:1];
  }
}

void sub_100009AB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setSliderPresented:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _setSliderPresentationProgress:0];
}

void sub_100009B18(id *a1)
{
  [a1[4] setValue:1.0];
  [a1[5] setValue:1.0];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained layoutIfNeeded];
}

void sub_100009D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_100009DC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2 && WeakRetained)
  {
    v3 = [WeakRetained isInvalidated];

    if ((v3 & 1) == 0)
    {
      [v2 _updateValueLabelVisibility];
      [WeakRetained presentationValue];
      [WeakRetained value];
      if (BSFloatEqualToFloat())
      {
        [WeakRetained invalidate];
        v4 = [v2 _valueLabelPresentationProgress];

        if (WeakRetained == v4)
        {
          [v2 _setValueLabelPresentationProgress:0];
        }
      }
    }
  }

  else
  {
  }
}

void sub_10000A074(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _beginCoachingAnimationIteration];
}

void sub_10000A1EC(uint64_t a1)
{
  v1 = [*(a1 + 32) _coachingAnimationLabel];
  [v1 setAlpha:0.0];
}

void sub_10000A598(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id sub_10000A5C8(uint64_t a1)
{
  v2 = [*(a1 + 32) orientation];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 setMaxShimmerOffset];
  }

  else
  {

    return [v3 setMinShimmerOffset];
  }
}

void sub_10000A628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeCoachingAnimationIteration];
}

id sub_10000A668(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 32) orientation];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setMinShimmerOffset];
  }

  else
  {
    [v3 setMaxShimmerOffset];
  }

  v4 = *(a1 + 40);

  return [v4 setValue:1.0];
}

void sub_10000A940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A96C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCoachingAnimationDidEnd];
}

id sub_10000A9AC(uint64_t a1)
{
  v2 = [*(a1 + 32) orientation];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setMinShimmerOffset];
  }

  else
  {
    [v3 setMaxShimmerOffset];
  }

  v4 = *(a1 + 40);

  return [v4 setValue:1.0];
}

id sub_10000E260(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 isEnabled];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

void sub_10000FF70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleBarTimerFired:v2];
}

void sub_100010B8C(id a1)
{
  v2 = [@"Button" copy];
  v1 = [@"CaptureButtonAction" copy];
  qword_1000605E0 = PPSCreateTelemetryIdentifier();
}

uint64_t sub_100011168(uint64_t a1)
{
  qword_1000605F8 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

void sub_100011300(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CameraOverlayAngel"];
  v3 = +[CAMOverlayServiceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

void sub_100011598(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 bs_array];
  [v3 addObjectsFromArray:v4];
}

void sub_1000119A8(uint64_t a1)
{
  if ([*(a1 + 32) status] != 2)
  {
    [*(a1 + 32) addObserver:*(a1 + 40)];
    v2 = [*(a1 + 40) _connectionsByProcessID];
    v3 = [NSNumber numberWithLongLong:*(a1 + 56)];
    v4 = [v2 objectForKeyedSubscript:v3];

    if (v4)
    {
      [v4 addObject:*(a1 + 32)];
    }

    else
    {
      v5 = [[NSMutableSet alloc] initWithObjects:{*(a1 + 32), 0}];
      v6 = [*(a1 + 40) _connectionsByProcessID];
      v7 = [NSNumber numberWithLongLong:*(a1 + 56)];
      [v6 setObject:v5 forKeyedSubscript:v7];
    }

    v8 = [*(a1 + 40) analyticsCollector];
    [v8 registerConnectionWithName:*(a1 + 48) pid:*(a1 + 56)];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011B34;
    v12[3] = &unk_100055818;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v13 = v10;
    v14 = v11;
    [v9 _enumerateObserversWithBlock:v12];
  }
}

void sub_100011CD0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  if (v4 == 2)
  {
    v5 = v3;
    [v3 serverLostConnectionFromProcessID:a1[6]];
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = v3;
    [v3 serverActivatedConnection:a1[4]];
  }

  v3 = v5;
LABEL_6:
}

void sub_100012324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CAMOverlayServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CAMOverlayServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setTargetQueue:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 40));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012528;
  v10[3] = &unk_100055890;
  objc_copyWeak(&v11, &location);
  [v3 setActivationHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012584;
  v8[3] = &unk_100055890;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000125E0;
  v6[3] = &unk_100055890;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_1000124EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_100012528(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionDidActivate:v3];
}

void sub_100012584(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionDidInterrupt:v3];
}

void sub_1000125E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionDidInvalidate:v3];
}

id sub_100012C5C(uint64_t a1)
{
  v2 = [*(a1 + 40) remoteTarget];
  [*(a1 + 32) _setClientProxy:v2];

  v3 = *(a1 + 32);

  return [v3 _updateStatusWithReason:2];
}

id sub_100012D28(uint64_t a1)
{
  [*(a1 + 32) _setClientProxy:0];
  v2 = *(a1 + 32);

  return [v2 _updateStatusWithReason:2];
}

id sub_100012DE0(uint64_t a1)
{
  [*(a1 + 32) set_connection:0];
  [*(a1 + 32) _setClientProxy:0];
  v2 = *(a1 + 32);

  return [v2 _updateStatusWithReason:2];
}

id sub_1000140E8(uint64_t a1)
{
  [*(a1 + 32) _setControls:*(a1 + 40)];
  [*(a1 + 32) _setControlsByID:*(a1 + 48)];
  [*(a1 + 32) _setUpdatesByID:*(a1 + 56)];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014184;
  v4[3] = &unk_100055930;
  v4[4] = v2;
  return [v2 _enumerateObserversWithBlock:v4];
}

void sub_100014350(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) controlsByID];
  v4 = [v3 objectForKeyedSubscript:*(v2 + 8)];

  if (v4)
  {
    v5 = [v4 validateUpdate:*(a1 + 48)];
  }

  else
  {
    v6 = CAMOverlayErrorDomain;
    v20 = NSDebugDescriptionErrorKey;
    v21 = @"InvalidIdentifier";
    v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v5 = [NSError errorWithDomain:v6 code:-100 userInfo:v7];
  }

  if (v5)
  {
    v8 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100036424(v2);
    }
  }

  else
  {
    if ([*(a1 + 48) isValueUpdate])
    {
      v9 = *(a1 + 48);
      v10 = [*(a1 + 32) _updatesByID];
      [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];
    }

    v11 = *(a1 + 32);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000145D0;
    v18[3] = &unk_100055980;
    v18[4] = v11;
    v19 = *(a1 + 48);
    [v11 _enumerateObserversWithBlock:v18];
  }

  v12 = [*(a1 + 32) _connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000145DC;
  block[3] = &unk_1000559A8;
  v13 = *(a1 + 56);
  v16 = v5;
  v17 = v13;
  v14 = v5;
  dispatch_async(v12, block);
}

id sub_100014748(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = [*(a1 + 32) focusLockGestureEnabled];
  if (v2 != result)
  {
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 10) = v4;
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000147E8;
    v6[3] = &unk_1000559F8;
    v6[4] = v5;
    v7 = v4;
    return [v5 _enumerateObserversWithBlock:v6];
  }

  return result;
}

void sub_10001495C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = +[CAMOverlayServer sharedInstance];
  [v6 start];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_autoreleasePoolPop(v5);
  LODWORD(argv) = UIApplicationMain(argc, argv, 0, v8);

  return argv;
}

BOOL sub_100014A5C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 _stage];
  v6 = [v2 _numberOfStages];
  v7 = [v2 _contact];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isTouching];
  }

  else
  {
    v9 = 0;
  }

  return sub_100014B84(v5, v6, v9) == a1 && sub_100014BC0([v2 _stagePhase]) == a2;
}

void *sub_100014B38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_100014B68@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100014B84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 4;
  v4 = 3;
  v5 = 2;
  if (a1 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3;
  }

  if (a1 <= 1)
  {
    v5 = v6;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  if (a1 <= 3)
  {
    v3 = v4;
  }

  if (a2 <= 1)
  {
    return 4 * (a1 > 0);
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100014BC0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

__n128 sub_100014BE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100014BF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100014C14(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100014C50(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *sub_100014CA8()
{
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible] = 0;
  v1 = OBJC_IVAR___CAMSystemOverlayStateMachine_visibility;
  *&v0[v1] = [objc_allocWithZone(CAMSystemOverlayVisibility) init];
  v0[OBJC_IVAR___CAMSystemOverlayStateMachine_halfPressEnabled] = 1;
  v2 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching;
  *&v0[v2] = [objc_allocWithZone(CAMSystemOverlayVisibility) init];
  v0[OBJC_IVAR___CAMSystemOverlayStateMachine_isHalfPressSwipeCoachingArmed] = 0;
  v0[OBJC_IVAR___CAMSystemOverlayStateMachine_isSwipeEnabled] = 1;
  *&v0[OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer] = 0;
  *&v0[OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEndTimer] = 0;
  *&v0[OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___CAMSystemOverlayStateMachine_lastOverlayVisibleTime] = 0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for OverlayStateMachine();
  v3 = objc_msgSendSuper2(&v16, "init");
  v4 = OBJC_IVAR___CAMSystemOverlayStateMachine_visibility;
  v5 = *&v3[OBJC_IVAR___CAMSystemOverlayStateMachine_visibility];
  v6 = v3;
  [v5 setDelegate:v6];
  v7 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching;
  [*&v6[OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching] setDelegate:v6];
  v8 = *&v6[v7];
  v9 = String._bridgeToObjectiveC()();
  [v8 setName:v9];

  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  v10 = qword_1000616A8;
  if (!qword_1000616A8 || (v11 = String._bridgeToObjectiveC()(), [v10 doubleForKey:v11], v13 = v12, v11, v13 <= 0.0))
  {
    v13 = 1250.0;
  }

  v14 = v13 / 1000.0;
  [*&v3[v4] setDelayedHideDuration:v14];
  [*&v6[v7] setDelayedHideDuration:v14];

  return v6;
}

uint64_t sub_1000150A0()
{
  if (*(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible))
  {
    return 1;
  }

  v2 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (v4 && *(v3 + 8 * v4 + 24))
  {
    return [*(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility) isVisible];
  }

  else
  {
    return 0;
  }
}

id sub_1000151D0(id result)
{
  v2 = result;
  if ((*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_isSwipeEnabled) & 1) != 0 || result != 1)
  {
    v3 = *(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility);
    if (([v3 isVisible] & 1) == 0)
    {
      [*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching) hideImmediately];
    }

    return [v3 addReason:v2];
  }

  return result;
}

void *sub_1000152E4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility) == a1)
  {

    return sub_10001540C(a2);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result overlayStateMachine:v2 swipeCoachingVisibilityChangedForReason:a2];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_10001540C(uint64_t a1)
{
  v2 = v1;
  if ([*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility) isVisible])
  {
    *(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_lastOverlayVisibleTime) = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 analyticsCollector];

    sub_100020B60(2);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result systemOverlayVisibility:v2 changedForReason:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10001558C(void *result, SEL *a2)
{
  if (*(v2 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility) == result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result *a2];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10001561C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_1000156B4()
{
  v1 = v0;
  v2 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEndTimer;
  [*(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEndTimer) invalidate];
  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  if (qword_1000616A8)
  {
    v3 = COERCE_DOUBLE(sub_10002D2EC());
    if (v4)
    {
      v5 = 5.0;
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = 5.0;
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_100017360;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10002EC64;
  v11[3] = &unk_100056390;
  v8 = _Block_copy(v11);

  v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:v5];
  _Block_release(v8);
  v10 = *(v1 + v2);
  *(v1 + v2) = v9;
}

void sub_100015850(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEndTimer);
    if (!v4)
    {
      goto LABEL_7;
    }

    sub_100017314();
    v5 = a1;
    v6 = v4;
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    if (([*&v3[OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching] isVisible] & 1) != 0 && (sub_100015978(), (v8 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      [v8 overlayStateMachine:v3 swipeCoachingVisibilityChangedForReason:0];

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:
    }
  }
}

id sub_100015978()
{
  v1 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEndTimer;
  [*(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEndTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer;
  [*(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer) invalidate];
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;

  v5 = *(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching);

  return [v5 hideImmediately];
}

uint64_t sub_100015A4C()
{
  if (*(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine_isSwipeEnabled) != 1)
  {
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible))
  {
    goto LABEL_10;
  }

  v1 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    if (*(v2 + 8 * v3 + 24) && ([*(v0 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility) isVisible] & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  if (!qword_1000616A8)
  {
LABEL_10:
    v4 = 0;
  }

  else
  {
    v4 = sub_10002D1A8();
  }

  return v4 & 1;
}

void sub_100015B48(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_isSwipeEnabled) == 1 && (*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible) & 1) == 0)
  {
    v3 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = *(v4 + 16);
    if (!v5 || !*(v4 + 8 * v5 + 24) || ([*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility) isVisible] & 1) == 0)
    {
      if (qword_10005F518 != -1)
      {
        swift_once();
      }

      if (qword_1000616A8)
      {
        v6 = sub_10002D1A8();
        if (v6 != 2 && (v6 & 1) != 0)
        {
          switch(a1)
          {
            case 4:
              *(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_isHalfPressSwipeCoachingArmed) = 0;
              v8 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer;
              [*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer) invalidate];
              v9 = *(v1 + v8);
              *(v1 + v8) = 0;

              v10 = *(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching);
              if ([v10 isVisible])
              {
                [v10 hideImmediately];
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  [Strong overlayStateMachine:v1 swipeCoachingVisibilityChangedForReason:0];
                  swift_unknownObjectRelease();
                }
              }

              break;
            case 2:
              if ((*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_halfPressEnabled) & 1) == 0)
              {
                *(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_isHalfPressSwipeCoachingArmed) = 1;
              }

              break;
            case 1:
              v7 = *(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching);
              if ([v7 isVisible])
              {
                sub_1000156B4();
                [v7 addReason:0];
              }

              else
              {
                v12 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer;
                [*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer) invalidate];
                v13 = *(v1 + v12);
                *(v1 + v12) = 0;

                v14 = v1;
                v15 = COERCE_DOUBLE(sub_10002D2EC());
                if (v16)
                {
                  v17 = 2.0;
                }

                else
                {
                  v17 = v15;
                }

                v18 = objc_opt_self();
                v19 = swift_allocObject();
                swift_unknownObjectWeakInit();
                aBlock[4] = sub_1000172F4;
                aBlock[5] = v19;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_10002EC64;
                aBlock[3] = &unk_100056368;
                v20 = _Block_copy(aBlock);

                v21 = [v18 scheduledTimerWithTimeInterval:0 repeats:v20 block:v17];
                _Block_release(v20);
                v22 = *(v14 + v12);
                *(v14 + v12) = v21;
              }

              break;
          }
        }
      }
    }
  }
}

void sub_100015EB8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer);
    if (v4)
    {
      sub_100017314();
      v5 = a1;
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7 & 1) != 0 && (sub_100015A4C())
      {
        v3[OBJC_IVAR___CAMSystemOverlayStateMachine_isHalfPressSwipeCoachingArmed] = 0;
        sub_1000156B4();
        [*&v3[OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching] addReason:0];
      }
    }
  }
}

uint64_t sub_100015FA4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_isSwipeEnabled) == 1 && (*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible) & 1) == 0)
  {
    v2 = result;
    v3 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
    result = swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = *(v4 + 16);
    if (!v5 || !*(v4 + 8 * v5 + 24) || (result = [*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility) isVisible], (result & 1) == 0))
    {
      if (qword_10005F518 != -1)
      {
        result = swift_once();
      }

      if (qword_1000616A8)
      {
        result = sub_10002D1A8();
        if (result != 2 && (result & 1) != 0)
        {
          if (v2 == 2)
          {
            if (*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_isHalfPressSwipeCoachingArmed) != 1)
            {
              return result;
            }

            *(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_isHalfPressSwipeCoachingArmed) = 0;
            v11 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer;
            [*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer) invalidate];
            v12 = *(v1 + v11);
            *(v1 + v11) = 0;

            sub_1000156B4();
            v10 = &selRef_addReason_;
          }

          else
          {
            if (v2 != 1)
            {
              return result;
            }

            v6 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEndTimer;
            [*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEndTimer) invalidate];
            v7 = *(v1 + v6);
            *(v1 + v6) = 0;

            v8 = OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer;
            [*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoachingEngagementTimer) invalidate];
            v9 = *(v1 + v8);
            *(v1 + v8) = 0;

            v10 = &selRef_removeReason_;
          }

          return [*(v1 + OBJC_IVAR___CAMSystemOverlayStateMachine_swipeCoaching) *v10];
        }
      }
    }
  }

  return result;
}

void sub_10001625C()
{
  v1 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
  swift_beginAccess();
  while (1)
  {
    v2 = *(v0 + v1);
    v3 = *(v2 + 16);
    if (!v3)
    {
      break;
    }

    v4 = *(v2 + 8 * v3 + 24);
    if (!v4)
    {
      break;
    }

    sub_100016308(v4, 2);
  }
}

void sub_100016308(unint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v3 = v2;
  if ((a2 - 2) >= 2)
  {
    if (a2 == 1)
    {
      v11 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
      swift_beginAccess();
      v12 = *(v3 + v11);
      v13 = *(v12 + 16);
      v14 = (v12 + 32);
      while (v13)
      {
        v15 = *v14++;
        --v13;
        if (v15 == a1)
        {
          return;
        }
      }
    }

    else
    {
      if (a2)
      {
        goto LABEL_57;
      }

      if (a1 - 2 < 3)
      {
        v16 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
        swift_beginAccess();
        v17 = *(v3 + v16);
        v18 = *(v17 + 16);
        v19 = (v17 + 32);
        while (v18)
        {
          v20 = *v19++;
          --v18;
          if (v20 == 1)
          {
            goto LABEL_48;
          }
        }

        swift_beginAccess();
        sub_100016E10(0, 0, 1);
        swift_endAccess();
        goto LABEL_48;
      }

LABEL_47:
      if (a1 != 1)
      {
LABEL_57:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }
    }

LABEL_48:
    sub_100016874(a1);
    return;
  }

  v5 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = 0;
    v9 = -40;
    while (*&v6[8 * v8 + 32] != a1)
    {
      ++v8;
      v9 -= 8;
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    v21 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_54;
    }

    v22 = *(v3 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v5) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v24 = *(v6 + 2);
      if (v21 != v24)
      {
        break;
      }

LABEL_22:
      *(v3 + v5) = v6;
      v10 = *(v6 + 2);
      v7 = v8;
      if (v10 >= v8)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      v6 = sub_100017140(v6);
    }

    v44 = v6 + 32;
    v45 = &v6[-v9];
    while (v21 < v24)
    {
      if (*v45 != a1)
      {
        if (v21 != v8)
        {
          if (v8 >= v24)
          {
            __break(1u);
            goto LABEL_47;
          }

          v46 = *&v44[8 * v8];
          *&v44[8 * v8] = *v45;
          *v45 = v46;
          v24 = *(v6 + 2);
        }

        ++v8;
      }

      ++v21;
      v45 += 8;
      if (v21 == v24)
      {
        goto LABEL_22;
      }
    }

LABEL_51:
    __break(1u);
  }

  else
  {
LABEL_7:
    v10 = *(v6 + 2);
LABEL_23:
    sub_1000171FC(v7, v10);
    swift_endAccess();
    if (qword_10005F528 == -1)
    {
      goto LABEL_24;
    }
  }

  swift_once();
LABEL_24:
  v25 = type metadata accessor for Logger();
  sub_100016DD8(v25, qword_1000616B8);
  v26 = v3;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v50 = v28;
    log = v27;
    v29 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    buf = v29;
    *v29 = 136446210;
    v30 = *(v3 + v5);
    v31 = *(v30 + 16);
    if (v31)
    {
      v47 = v26;

      sub_100033A34(0, v31, 0);
      v32 = 0;
      v3 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v32 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v33 = sub_100016FA4(*(v30 + 8 * v32 + 32));
        if (!v33)
        {
          break;
        }

        v34 = v33;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v36;

        v38 = _swiftEmptyArrayStorage[2];
        v37 = _swiftEmptyArrayStorage[3];
        if (v38 >= v37 >> 1)
        {
          sub_100033A34((v37 > 1), v38 + 1, 1);
        }

        ++v32;
        _swiftEmptyArrayStorage[2] = v38 + 1;
        v39 = &_swiftEmptyArrayStorage[2 * v38];
        v39[4] = v35;
        v39[5] = v5;
        if (v31 == v32)
        {

          v26 = v47;
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

LABEL_33:
    sub_100017000(&unk_10005F710, &unk_10003FF60);
    sub_100017048();
    v40 = BidirectionalCollection<>.joined(separator:)();
    v42 = v41;

    v43 = sub_10003344C(v40, v42, &v52);

    *(buf + 4) = v43;
    v27 = log;
    _os_log_impl(&_mh_execute_header, log, v50, "ButtonStages: [%{public}s]", buf, 0xCu);
    sub_1000170F4(v48);
  }

  if (a1 == 2)
  {
    *(v26 + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible) = 0;
  }

  sub_100015FA4(a1);
}

void sub_100016874(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_27:
    v5 = sub_1000288CC(0, *(v5 + 2) + 1, 1, v5);
    *(v2 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000288CC((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a1;
  *(v2 + v4) = v5;
  swift_endAccess();
  if (qword_10005F528 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100016DD8(v9, qword_1000616B8);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {

    if (a1 == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v35 = v12;
  v36 = v10;
  v13 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v38 = v33;
  buf = v13;
  *v13 = 136446210;
  v14 = *(v2 + v4);
  v15 = *(v14 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v15)
  {
LABEL_19:
    v37 = v2;
    sub_100017000(&unk_10005F710, &unk_10003FF60);
    sub_100017048();
    v23 = BidirectionalCollection<>.joined(separator:)();
    v25 = v24;

    v26 = sub_10003344C(v23, v25, &v38);

    *(buf + 4) = v26;
    _os_log_impl(&_mh_execute_header, v11, v35, "ButtonStages: [%{public}s]", buf, 0xCu);
    sub_1000170F4(v33);

    v10 = v36;
    if (a1 == 4)
    {
LABEL_20:
      v27 = *(v10 + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility);
      if ([v27 isVisible])
      {
        v28 = CFAbsoluteTimeGetCurrent() - *(v10 + OBJC_IVAR___CAMSystemOverlayStateMachine_lastOverlayVisibleTime);
        v29 = [objc_opt_self() sharedInstance];
        v30 = [v29 analyticsCollector];

        if (v28 >= 0.3)
        {
          sub_100021AFC();
        }

        else
        {
          sub_100021618();

          *(v10 + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible) = 0;
          [v27 hideImmediately];
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong systemOverlayVisibility:v10 changedForReason:0];
            swift_unknownObjectRelease();
          }
        }
      }

LABEL_25:
      sub_100015B48(a1);
      return;
    }

LABEL_16:
    if (a1 == 2 && *(v10 + OBJC_IVAR___CAMSystemOverlayStateMachine_halfPressEnabled) == 1)
    {
      *(v10 + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible) = 1;
    }

    goto LABEL_25;
  }

  v32 = a1;
  v37 = _swiftEmptyArrayStorage;

  v5 = &v37;
  sub_100033A34(0, v15, 0);
  a1 = 0;
  v2 = v37;
  while (1)
  {
    if (a1 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = sub_100016FA4(*(v14 + 8 * a1 + 32));
    if (!v16)
    {
      break;
    }

    v5 = v16;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v37 = v2;
    v21 = v2[2];
    v20 = v2[3];
    v4 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v5 = &v37;
      sub_100033A34((v20 > 1), v21 + 1, 1);
      v2 = v37;
    }

    ++a1;
    v2[2] = v4;
    v22 = &v2[2 * v21];
    v22[4] = v17;
    v22[5] = v19;
    if (v15 == a1)
    {

      a1 = v32;
      goto LABEL_19;
    }
  }

  __break(1u);
}

id sub_100016CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayStateMachine();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100016DD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100016E10(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1000288CC(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_100016EE4(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_100016EE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

__CFString *sub_100016FA4(unint64_t a1)
{
  if (a1 > 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1000563E0[a1];
    v2 = off_1000563B8[a1];
  }

  return v1;
}

uint64_t sub_100017000(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100017048()
{
  result = qword_100060050;
  if (!qword_100060050)
  {
    sub_1000170AC(&unk_10005F710, &unk_10003FF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060050);
  }

  return result;
}

uint64_t sub_1000170AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000170F4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100017154(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000171FC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1000288CC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_100017154(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1000172BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000172FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100017314()
{
  result = qword_10005F720;
  if (!qword_10005F720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005F720);
  }

  return result;
}

uint64_t sub_100017398()
{
  v0 = sub_100017000(&qword_10005F7A8, &qword_100040098);
  sub_10001AC64(v0, qword_100061620);
  sub_100016DD8(v0, qword_100061620);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100017458()
{
  v0 = sub_100017000(&qword_10005F798, &qword_100040088);
  sub_10001AC64(v0, qword_100061668);
  sub_100016DD8(v0, qword_100061668);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100017530(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100017000(&qword_10005F7A0, &qword_100040090);
  sub_10001AC64(v3, a2);
  sub_100016DD8(v3, a2);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1000175DC@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100017000(&qword_10005F848, &qword_1000400D8);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v33 = &v31 - v7;
  v8 = sub_100017000(&qword_10005F850, &qword_1000400E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = sub_100017000(&qword_10005F858, &qword_1000400E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v32 = sub_100017000(&qword_10005F860, &qword_1000400F0);
  v18 = *(v32 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v32);
  v21 = &v31 - v20;
  sub_10001B6A8(&qword_10005F868, &qword_10005F850, &qword_1000400E0);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v12, v8);
  swift_getKeyPath();
  sub_10001B6A8(&qword_10005F870, &qword_10005F858, &qword_1000400E8);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v14 + 8))(v17, v13);
  v40 = 5;
  v22 = v33;
  static PredicateExpressions.build_Arg<A>(_:)();
  v24 = v34;
  v23 = v35;
  v25 = v36;
  (*(v35 + 104))(v34, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v36);
  v26 = sub_100017000(&qword_10005F878, &qword_100040160);
  v27 = v37;
  v37[3] = v26;
  v27[4] = sub_10001AEBC();
  sub_10001AC00(v27);
  sub_10001B6A8(&qword_10005F8A8, &qword_10005F860, &qword_1000400F0);
  sub_10001B6A8(&qword_10005F8B0, &qword_10005F848, &qword_1000400D8);
  v28 = v32;
  v29 = v38;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v23 + 8))(v24, v25);
  (*(v39 + 8))(v22, v29);
  return (*(v18 + 8))(v21, v28);
}

uint64_t sub_100017B08@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100017000(&qword_10005F7C8, &qword_1000400A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  v7 = sub_100017000(&qword_10005F7D0, &qword_1000400B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13[-v10];
  sub_10001B6A8(&qword_10005F7D8, &qword_10005F7D0, &qword_1000400B0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v13[15] = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_100017000(&qword_10005F7E0, &qword_1000400B8);
  a1[4] = sub_10001AAC4();
  sub_10001AC00(a1);
  sub_10001B6A8(&qword_10005F800, &qword_10005F7C8, &qword_1000400A8);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100017D68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v20 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100017000(&qword_10005F808, &qword_1000400C0);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v11 = sub_100017000(&qword_10005F810, &qword_1000400C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  sub_10001B6A8(&qword_10005F818, &qword_10005F810, &qword_1000400C8);
  static PredicateExpressions.build_Arg<A>(_:)();
  v22 = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  v16 = v20;
  (*(v3 + 104))(v6, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v20);
  a2[3] = sub_100017000(&qword_10005F820, &qword_1000400D0);
  a2[4] = sub_10001ACC8();
  sub_10001AC00(a2);
  sub_10001B6A8(&qword_10005F840, &qword_10005F808, &qword_1000400C0);
  v17 = v21;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v3 + 8))(v6, v16);
  (*(v7 + 8))(v10, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100018090()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1000180C0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD000000000000029;
  v1._object = 0x8000000100041FA0;
  v2.value._object = 0x800000010003FF60;
  v2.value._countAndFlagsBits = 0xD000000000000012;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  sub_10001B0A8();
  return Text.init<A>(_:)();
}

uint64_t sub_10001819C()
{
  v0 = sub_100017000(&qword_10005F788, &qword_100040078);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Tips.MaxDisplayCount();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100017000(&qword_10005F790, &qword_100040080);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v18 = v5;
  v19 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v18 = v10;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t sub_100018440@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100018668()
{
  v1 = sub_100017000(&qword_10005F8C8, &qword_100040168);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR___CAMSystemOverlayTipManager_tipObservationTask;
  if (!*(v0 + OBJC_IVAR___CAMSystemOverlayTipManager_tipObservationTask))
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v9 = v0;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;

    v12 = sub_1000195E4(0, 0, v5, &unk_100040178, v11);
    v13 = *(v9 + v6);
    *(v9 + v6) = v12;
  }

  return result;
}

uint64_t sub_100018814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = *(*(sub_100017000(&qword_10005F8D0, &qword_100040198) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Tips.Status();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();
  v9 = sub_100017000(&qword_10005F8D8, &qword_1000401A0);
  v4[21] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v11 = sub_100017000(&qword_10005F8E0, &qword_1000401A8);
  v4[23] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v13 = sub_100017000(&qword_10005F8E8, &qword_1000401B0);
  v4[25] = v13;
  v14 = *(v13 - 8);
  v4[26] = v14;
  v15 = *(v14 + 64) + 15;
  v4[27] = swift_task_alloc();
  v16 = sub_100017000(&qword_10005F8F0, qword_1000401B8);
  v4[28] = v16;
  v17 = *(v16 - 8);
  v4[29] = v17;
  v18 = *(v17 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = type metadata accessor for MainActor();
  v4[32] = static MainActor.shared.getter();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[33] = v19;
  v4[34] = v20;

  return _swift_task_switch(sub_100018A8C, v19);
}

uint64_t sub_100018A8C()
{
  v1 = v0[16];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {
    v3 = OBJC_IVAR___CAMSystemOverlayTipManager_menuTip;
    v0[36] = OBJC_IVAR___CAMSystemOverlayTipManager_menuTip;
    v4 = (Strong + v3);
    v6 = *v4;
    v5 = v4[1];
    v0[14] = v6;
    v28 = v0[30];
    v7 = v0[26];
    v8 = v0[27];
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[21];
    v12 = v0[22];
    v0[15] = v5;
    v0[37] = sub_10001B21C();
    Tip.shouldDisplayUpdates.getter();
    AsyncMapSequence.base.getter();
    sub_10001B6A8(&qword_10005F8F8, &qword_10005F8D8, &qword_1000401A0);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    AsyncMapSequence.transform.getter();
    (*(v7 + 8))(v8, v10);
    AsyncMapSequence.Iterator.init(_:transform:)();
    v13 = OBJC_IVAR___CAMSystemOverlayTipManager_sourceItem;
    v0[38] = OBJC_IVAR___CAMSystemOverlayTipManager_viewController;
    v0[39] = v13;
    v0[40] = OBJC_IVAR___CAMSystemOverlayTipManager_isPortraitOrientation;
    v14 = v0[31];
    v15 = static MainActor.shared.getter();
    v0[41] = v15;
    if (v15)
    {
      swift_getObjectType();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v0[42] = v16;
    v0[43] = v18;

    return _swift_task_switch(sub_100018D14, v16);
  }

  else
  {
    v19 = v0[32];

    v20 = v0[30];
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[22];
    v24 = v0[20];
    v25 = v0[17];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_100018D14()
{
  v1 = v0[41];
  v2 = v0[30];
  v3 = v0[28];
  v0[44] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001B6A8(&qword_10005F900, &qword_10005F8E0, &qword_1000401A8);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_100018E18;
  v6 = v0[23];
  v7 = v0[17];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, v1, &protocol witness table for MainActor);
}

uint64_t sub_100018E18()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = *(v2 + 344);
    v6 = sub_100019100;
  }

  else
  {
    (*(v2 + 352))();
    v4 = *(v2 + 336);
    v7 = *(v2 + 344);
    v6 = sub_100018F40;
  }

  return _swift_task_switch(v6, v4);
}

uint64_t sub_100018F40()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[41];

    sub_10001B6F0(v3, &qword_10005F8D0, &qword_100040198);
    v5 = v0[33];
    v6 = v0[34];

    return _swift_task_switch(sub_100019508, v5);
  }

  else
  {
    v7 = v0[30];
    v8 = v0[28];
    (*(v2 + 32))(v0[20], v3, v1);
    v9 = AsyncMapSequence.Iterator.transform.getter();
    v0[46] = v10;
    v15 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v0[47] = v12;
    *v12 = v0;
    v12[1] = sub_100019118;
    v13 = v0[20];

    return (v15)(v0 + 48, v13);
  }
}

uint64_t sub_100019118()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  *(v1 + 385) = *(v1 + 384);
  v7 = *(v1 + 344);
  v8 = *(v1 + 336);

  return _swift_task_switch(sub_1000192C4, v8);
}

uint64_t sub_1000192C4()
{
  v1 = v0[41];

  v2 = v0[33];
  v3 = v0[34];

  return _swift_task_switch(sub_100019328, v2);
}

uint64_t sub_100019328()
{
  v1 = *(v0 + 280) + *(v0 + 304);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 312);
    v5 = *(v0 + 280);
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if ((*(v0 + 385) & 1) != 0 && (v8 = *(v0 + 280), *(v8 + *(v0 + 320)) == 1))
      {
        v9 = *(v0 + 296);
        v10 = (v8 + *(v0 + 288));
        type metadata accessor for TipUIPopoverViewController();
        v12 = *v10;
        v11 = v10[1];
        *(v0 + 40) = &type metadata for MenuTip;
        *(v0 + 48) = v9;
        *(v0 + 16) = v12;
        *(v0 + 24) = v11;

        v7 = v7;
        v13 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
        [v3 presentViewController:v13 animated:1 completion:0];
      }

      else
      {
        v14 = [v3 presentedViewController];
        if (v14)
        {
          v15 = v14;
          type metadata accessor for TipUIPopoverViewController();
          if (swift_dynamicCastClass())
          {

            [v3 dismissViewControllerAnimated:1 completion:0];
          }

          else
          {

            v7 = v3;
            v3 = v15;
          }
        }
      }
    }
  }

  v16 = *(v0 + 248);
  v17 = static MainActor.shared.getter();
  *(v0 + 328) = v17;
  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(v0 + 336) = v18;
  *(v0 + 344) = v20;

  return _swift_task_switch(sub_100018D14, v18);
}

uint64_t sub_100019508()
{
  v1 = v0[35];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  (*(v4 + 8))(v3, v5);
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000195E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100017000(&qword_10005F8C8, &qword_100040168);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001B490(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10001B6F0(v12, &qword_10005F8C8, &qword_100040168);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10001B6F0(a3, &qword_10005F8C8, &qword_100040168);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001B6F0(a3, &qword_10005F8C8, &qword_100040168);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100019950()
{
  v1 = OBJC_IVAR___CAMSystemOverlayTipManager_tipObservationTask;
  if (*(v0 + OBJC_IVAR___CAMSystemOverlayTipManager_tipObservationTask))
  {
    v2 = *(v0 + OBJC_IVAR___CAMSystemOverlayTipManager_tipObservationTask);

    Task.cancel()();

    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  swift_unknownObjectWeakAssign();

  return swift_unknownObjectWeakAssign();
}

void sub_100019AC0()
{
  v1 = type metadata accessor for Tips.InvalidationReason();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___CAMSystemOverlayTipManager_menuTip + 8);
  v13[0] = *(v0 + OBJC_IVAR___CAMSystemOverlayTipManager_menuTip);
  v13[1] = v6;
  (*(v2 + 104))(v5, enum case for Tips.InvalidationReason.actionPerformed(_:), v1);
  sub_10001B21C();

  Tip.invalidate(reason:)();
  (*(v2 + 8))(v5, v1);

  v7 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v8 = [v7 Signals];
  swift_unknownObjectRelease();
  v9 = objc_allocWithZone(BMDiscoverabilitySignals);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithContentIdentifier:v10 context:0 osBuild:0 userInfo:0];

  v12 = [v8 source];
  [v12 sendEvent:v11];
}

uint64_t sub_100019E3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v6 = sub_100017000(&qword_10005F7A0, &qword_100040090);
  sub_100016DD8(v6, a5);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

id sub_100019FDC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001A0A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001A0F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001A14C()
{
  result = qword_10005F780;
  if (!qword_10005F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F780);
  }

  return result;
}

uint64_t sub_10001A1A0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A298;

  return v7(a1);
}

uint64_t sub_10001A298()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001A394()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x8000000100041F70;
  v2.value._object = 0x800000010003FF60;
  v2.value._countAndFlagsBits = 0xD000000000000012;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  sub_10001B0A8();
  return Text.init<A>(_:)();
}

uint64_t sub_10001A460()
{
  v0 = sub_100017000(&qword_10005F798, &qword_100040088);
  v26 = *(v0 - 8);
  v1 = *(v26 + 64);
  __chkstk_darwin(v0);
  v27 = v25 - v2;
  v3 = sub_100017000(&qword_10005F7A0, &qword_100040090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v25 - v6;
  v8 = sub_100017000(&qword_10005F7A8, &qword_100040098);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  sub_100017000(&qword_10005F7B0, &qword_1000400A0);
  v13 = *(type metadata accessor for Tips.Rule() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10003FF70;
  v25[1] = v16;
  if (qword_10005F4F0 != -1)
  {
    swift_once();
  }

  v17 = sub_100016DD8(v8, qword_100061620);
  (*(v9 + 16))(v12, v17, v8);
  type metadata accessor for Tips.EmptyDonation();
  sub_10001AA80(&qword_10005F7B8);
  sub_10001AA80(&qword_10005F7C0);
  Tips.Rule.init<A>(_:_:)();
  if (qword_10005F4F8 != -1)
  {
    swift_once();
  }

  v18 = sub_100016DD8(v3, qword_100061638);
  swift_beginAccess();
  v19 = *(v4 + 16);
  v19(v7, v18, v3);
  Tips.Rule.init<A>(_:_:)();
  if (qword_10005F500 != -1)
  {
    swift_once();
  }

  v20 = sub_100016DD8(v3, qword_100061650);
  swift_beginAccess();
  v19(v7, v20, v3);
  Tips.Rule.init<A>(_:_:)();
  if (qword_10005F508 != -1)
  {
    swift_once();
  }

  v21 = sub_100016DD8(v0, qword_100061668);
  swift_beginAccess();
  (*(v26 + 16))(v27, v21, v0);
  Tips.Rule.init<A>(_:_:)();
  if (qword_10005F510 != -1)
  {
    swift_once();
  }

  v22 = sub_100016DD8(v3, qword_100061680);
  swift_beginAccess();
  v19(v7, v22, v3);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();

  v23 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v23;
}

uint64_t sub_10001AA80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Tips.EmptyDonation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001AAC4()
{
  result = qword_10005F7E8;
  if (!qword_10005F7E8)
  {
    sub_1000170AC(&qword_10005F7E0, &qword_1000400B8);
    sub_10001B6A8(&qword_10005F7F0, &qword_10005F7D0, &qword_1000400B0);
    sub_10001AB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F7E8);
  }

  return result;
}

unint64_t sub_10001AB7C()
{
  result = qword_10005F7F8;
  if (!qword_10005F7F8)
  {
    sub_1000170AC(&qword_10005F7C8, &qword_1000400A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F7F8);
  }

  return result;
}

uint64_t *sub_10001AC00(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *sub_10001AC64(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_10001ACC8()
{
  result = qword_10005F828;
  if (!qword_10005F828)
  {
    sub_1000170AC(&qword_10005F820, &qword_1000400D0);
    sub_10001B6A8(&qword_10005F830, &qword_10005F810, &qword_1000400C8);
    sub_10001AD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F828);
  }

  return result;
}

unint64_t sub_10001AD80()
{
  result = qword_10005F838;
  if (!qword_10005F838)
  {
    sub_1000170AC(&qword_10005F808, &qword_1000400C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F838);
  }

  return result;
}

uint64_t sub_10001AE6C@<X0>(uint64_t *a1@<X8>)
{
  sub_100017000(&qword_10005F7A8, &qword_100040098);
  result = Tips.Event.donations.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10001AEBC()
{
  result = qword_10005F880;
  if (!qword_10005F880)
  {
    sub_1000170AC(&qword_10005F878, &qword_100040160);
    sub_10001AF74();
    sub_10001B6A8(&qword_10005F8A0, &qword_10005F848, &qword_1000400D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F880);
  }

  return result;
}

unint64_t sub_10001AF74()
{
  result = qword_10005F888;
  if (!qword_10005F888)
  {
    sub_1000170AC(&qword_10005F860, &qword_1000400F0);
    sub_10001AFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F888);
  }

  return result;
}

unint64_t sub_10001AFF8()
{
  result = qword_10005F890;
  if (!qword_10005F890)
  {
    sub_1000170AC(&qword_10005F858, &qword_1000400E8);
    sub_10001B6A8(&qword_10005F898, &qword_10005F850, &qword_1000400E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F890);
  }

  return result;
}

unint64_t sub_10001B0A8()
{
  result = qword_10005F8B8;
  if (!qword_10005F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F8B8);
  }

  return result;
}

unint64_t sub_10001B21C()
{
  result = qword_10005F8C0;
  if (!qword_10005F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F8C0);
  }

  return result;
}

uint64_t sub_10001B270()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B2A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B2E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B39C;

  return sub_100018814(a1, v4, v5, v6);
}

uint64_t sub_10001B39C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001B490(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017000(&qword_10005F8C8, &qword_100040168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B500()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001B538(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001B754;

  return sub_10001A1A0(a1, v5);
}

uint64_t sub_10001B5F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001B39C;

  return sub_10001A1A0(a1, v5);
}

uint64_t sub_10001B6A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000170AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B6F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100017000(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int sub_10001B75C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001B7D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_10001B814@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

char *sub_10001B858(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___CAMOverlayShimmerLabel_orientation] = 0;
  *&v4[OBJC_IVAR___CAMOverlayShimmerLabel_shimmerLength] = 0x4059000000000000;
  *&v4[OBJC_IVAR___CAMOverlayShimmerLabel_minOffset] = 0xFFF0000000000000;
  *&v4[OBJC_IVAR___CAMOverlayShimmerLabel_maxOffset] = 0x7FF0000000000000;
  *&v4[OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset] = 0;
  v10 = OBJC_IVAR___CAMOverlayShimmerLabel_label;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = [objc_opt_self() whiteColor];
  [v11 setTextColor:v12];

  v13 = CEKFontOfSizeWeightStyle();
  [v11 setFont:v13];

  *&v4[v10] = v11;
  v14 = OBJC_IVAR___CAMOverlayShimmerLabel_maskingView;
  *&v4[v14] = sub_10001C2C4();
  v15 = OBJC_IVAR___CAMOverlayShimmerLabel_gradientView;
  type metadata accessor for OverlayShimmerLabel.GradientView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR___CAMOverlayShimmerLabel_label];
  v18 = v16;
  [v18 addSubview:v17];
  v19 = OBJC_IVAR___CAMOverlayShimmerLabel_maskingView;
  [v18 addSubview:*&v18[OBJC_IVAR___CAMOverlayShimmerLabel_maskingView]];
  [*&v18[v19] addSubview:*&v18[OBJC_IVAR___CAMOverlayShimmerLabel_gradientView]];
  sub_10001BA54();

  return v18;
}

void sub_10001BA54()
{
  v1 = [objc_opt_self() mainBundle];
  v16._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0xD000000000000023;
  v2._object = 0x8000000100042300;
  v3.value._object = 0x80000001000401D0;
  v3.value._countAndFlagsBits = 0xD000000000000012;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v16);

  v5 = OBJC_IVAR___CAMOverlayShimmerLabel_orientation;
  if (*(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_orientation) > 1uLL)
  {
    v14 = *(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_orientation);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v6 = String._bridgeToObjectiveC()();

    v7 = [objc_opt_self() systemImageNamed:v6];

    if (v7)
    {
      v8 = [objc_opt_self() textAttachmentWithImage:v7];
      v9 = [objc_opt_self() attributedStringWithAttachment:v8];

      v10 = objc_allocWithZone(NSMutableAttributedString);
      v11 = String._bridgeToObjectiveC()();

      v13 = [v10 initWithString:v11];

      sub_10001C168(v9, *(v0 + v5));
      [*(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_label) setAttributedText:v13];
    }

    else
    {
      v12 = *(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_label);
      v13 = String._bridgeToObjectiveC()();

      [v12 setText:v13];
    }
  }
}

id sub_10001BDB8()
{
  v1 = *&v0[OBJC_IVAR___CAMOverlayShimmerLabel_label];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR___CAMOverlayShimmerLabel_maskingView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR___CAMOverlayShimmerLabel_gradientView];
  [v0 bounds];
  [v3 setBounds:{0.0, 0.0, 100.0, CGRectGetHeight(v6)}];
  [v0 bounds];
  CGRectGetMidY(v7);
  [v3 center];

  return [v3 setCenter:?];
}

id sub_10001BFF4()
{
  v1 = *&v0[OBJC_IVAR___CAMOverlayShimmerLabel_gradientView];
  v2 = *&v0[OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset];
  if (*&v0[OBJC_IVAR___CAMOverlayShimmerLabel_minOffset] == v2)
  {
    v2 = -50.0;
  }

  else if (v2 == INFINITY)
  {
    [v0 bounds];
    v2 = CGRectGetWidth(v5) + 50.0;
  }

  [v1 center];

  return [v1 setCenter:v2];
}

id sub_10001C168(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v4 = objc_allocWithZone(NSAttributedString);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithString:v5];

    [v2 insertAttributedString:v6 atIndex:0];
    v7 = "insertAttributedString:atIndex:";
    v8 = v2;
    v9 = a1;
    v10 = 0;

    return [v8 v7];
  }

  if (!a2)
  {
    v12 = objc_allocWithZone(NSAttributedString);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithString:v13];

    [v2 appendAttributedString:v14];
    v7 = "appendAttributedString:";
    v8 = v2;
    v9 = a1;

    return [v8 v7];
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id sub_10001C2C4()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  [v0 setBackgroundColor:v2];
  v3 = [v0 layer];
  v4 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterDestIn];
  [v3 setCompositingFilter:v4];

  return v0;
}

void sub_10001C464(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &unk_10005F000;
  v11 = OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_left;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_right;
  *&v4[v12] = [objc_allocWithZone(UIImageView) init];
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v14 = objc_allocWithZone(UIGraphicsImageRenderer);
  v15 = v13;
  v16 = [v14 initWithSize:{20.0, 1.0}];
  inited = swift_allocObject();
  *(inited + 16) = xmmword_1000401D0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10001CC6C;
  *(v18 + 24) = inited;
  *&aBlock.tx = sub_10001CC74;
  *&aBlock.ty = v18;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10001CAB4;
  *&aBlock.d = &unk_100056598;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 imageWithActions:v19];

  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_100017000(&unk_10005F9B0, &qword_1000402E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000401E0;
    v21 = *&v15[OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_left];
    *(inited + 32) = v21;
    v18 = OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_right;
    v22 = *&v15[OBJC_IVAR____TtCC18CameraOverlayAngel19OverlayShimmerLabelP33_22DD55180974D52509049D872E07492F12GradientView_right];
    *(inited + 40) = v22;
    v10 = (inited & 0xC000000000000001);
    v23 = v21;
    v24 = v22;
    if ((inited & 0xC000000000000001) == 0)
    {
      v25 = v23;
      goto LABEL_4;
    }
  }

  v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_4:
  v26 = v25;
  [v25 setContentMode:0];
  [v26 setImage:v20];
  [v15 addSubview:v26];

  if (v10)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v28 = v27;

    [v28 setContentMode:0];
    [v28 setImage:v20];
    [v15 addSubview:v28];

    v29 = *&v15[v18];
    CGAffineTransformMakeRotation(&aBlock, 3.14159265);
    [v29 setTransform:&aBlock];

    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v27 = *(inited + 40);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_10001C8FC(void *a1, CGFloat a2)
{
  v3 = [a1 CGContext];
  specialized ContiguousArray.reserveCapacity(_:)();
  CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v4 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  DeviceRGB = CGBitmapContextGetColorSpace(v3);
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  type metadata accessor for CGColor(0);
  space = DeviceRGB;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = CGGradientCreateWithColors(space, isa, dbl_100055BE8);

  if (v8)
  {
    v11.x = 0.0;
    v11.y = 0.0;
    v12.y = 0.0;
    v12.x = a2;
    CGContextDrawLinearGradient(v3, v8, v11, v12, 0);

    v3 = v8;
  }
}

void sub_10001CAB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

unint64_t sub_10001CC08()
{
  result = qword_10005F9A8;
  if (!qword_10005F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F9A8);
  }

  return result;
}

uint64_t sub_10001CC74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001CC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001CCB4()
{
  *(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_orientation) = 0;
  *(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_shimmerLength) = 0x4059000000000000;
  *(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_minOffset) = 0xFFF0000000000000;
  *(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_maxOffset) = 0x7FF0000000000000;
  *(v0 + OBJC_IVAR___CAMOverlayShimmerLabel_shimmerOffset) = 0;
  v1 = OBJC_IVAR___CAMOverlayShimmerLabel_label;
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = [objc_opt_self() whiteColor];
  [v2 setTextColor:v3];

  v4 = CEKFontOfSizeWeightStyle();
  [v2 setFont:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR___CAMOverlayShimmerLabel_maskingView;
  *(v0 + v5) = sub_10001C2C4();
  v6 = OBJC_IVAR___CAMOverlayShimmerLabel_gradientView;
  type metadata accessor for OverlayShimmerLabel.GradientView();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10001CF10()
{
  if (*(v0 + OBJC_IVAR___CAMIdleContactRecognizer_isEnabled) == 1)
  {
    if (qword_10005F518 != -1)
    {
      swift_once();
    }

    v1 = qword_1000616A8;
    if (qword_1000616A8)
    {
      v2 = String._bridgeToObjectiveC()();
      [v1 doubleForKey:v2];
      v4 = v3;
    }

    else
    {
      v4 = 0.0;
    }

    v7 = fmax(v4, 0.05);
    if (v4 == 0.0)
    {
      v8 = 0.2;
    }

    else
    {
      v8 = v7;
    }

    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[4] = sub_10001D69C;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10002EC64;
    v14[3] = &unk_1000565E8;
    v11 = _Block_copy(v14);

    v12 = [v9 scheduledTimerWithTimeInterval:1 repeats:v11 block:v8];
    _Block_release(v11);
    v13 = *(v0 + OBJC_IVAR___CAMIdleContactRecognizer_pollingTimer);
    *(v0 + OBJC_IVAR___CAMIdleContactRecognizer_pollingTimer) = v12;
  }

  else
  {
    v5 = OBJC_IVAR___CAMIdleContactRecognizer_pollingTimer;
    v6 = *(v0 + OBJC_IVAR___CAMIdleContactRecognizer_pollingTimer);
    if (v6)
    {
      [v6 invalidate];
      v6 = *(v0 + v5);
    }

    *(v0 + v5) = 0;
  }
}

void sub_10001D124(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR___CAMIdleContactRecognizer_isEnabled] == 1)
    {
      v3 = *&Strong[OBJC_IVAR___CAMIdleContactRecognizer_pollingTimer];
      if (v3)
      {
        v4 = Strong;
        sub_100017314();
        v5 = a1;
        v6 = v3;
        v7 = static NSObject.== infix(_:_:)();

        Strong = v4;
        if (v7)
        {
          v8 = [v5 isValid];
          Strong = v4;
          if (v8)
          {
            sub_10001D208();
            Strong = v4;
          }
        }
      }
    }
  }
}

void sub_10001D208()
{
  if ((*(v0 + OBJC_IVAR___CAMIdleContactRecognizer_lastNonIdleTimestamp + 8) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + OBJC_IVAR___CAMIdleContactRecognizer_lastNonIdleTimestamp);
    static Date.timeIntervalSinceReferenceDate.getter();
    if (qword_10005F518 != -1)
    {
      v12 = v3;
      swift_once();
      v3 = v12;
    }

    v4 = v3 - v2;
    if (qword_1000616A8 && (v5 = COERCE_DOUBLE(sub_10002D2EC()), (v6 & 1) == 0))
    {
      if (v4 < v5)
      {
        return;
      }
    }

    else if (v4 < 5.0)
    {
      return;
    }

    if (qword_10005F538 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100016DD8(v7, qword_1000616E8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Idle contact recognized", v10, 2u);
    }

    v11 = *(v1 + OBJC_IVAR___CAMIdleContactRecognizer_delegate);
    if (v11)
    {

      [v11 idleContactRecognized:v1];
    }
  }
}

void sub_10001D428(void *a1)
{
  v3 = [a1 _contact];
  if (v3)
  {
    v8 = v3;
    if (sub_100014BC0([a1 _stagePhase]) == 1 && (objc_msgSend(v8, "positionDelta"), v4 == 0.0))
    {
    }

    else
    {
      static Date.timeIntervalSinceReferenceDate.getter();
      v6 = v5;

      v7 = v1 + OBJC_IVAR___CAMIdleContactRecognizer_lastNonIdleTimestamp;
      *v7 = v6;
      *(v7 + 8) = 0;
    }
  }
}

uint64_t sub_10001D664()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D6A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001D740(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v5 = 0.25;
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
  }

  v6 = *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider);
  v8 = v4;
  [v6 setSelectedIndex:a1 animatedDuration:v5 animatedCurve:? completion:?];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong overlayMenuSlider:v2 didSelectControlAt:{objc_msgSend(v6, "selectedIndex")}];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10001D9A0(uint64_t a1)
{
  v33 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames;
  v2 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames);
  if ((sub_10001F070(v2, a1) & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider);
    [v3 setIndexCount:*(v2 + 16)];
    v4 = [v3 imageDataConfiguration];
    if (v4)
    {
      [v4 reloadContent];
      swift_unknownObjectRelease();
    }

    v5 = *(*(v1 + v33) + 16);
    if (v5)
    {
      v31 = v3;
      v32 = objc_opt_self();
      v6 = objc_opt_self();
      v7 = 0;
      v8 = 0;
      v9 = 0.0;
      while (1)
      {
        v23 = *(v1 + v33);
        if (v8 >= *(v23 + 16))
        {
          break;
        }

        v24 = v23 + v7;
        v25 = *(v24 + 32);
        v26 = *(v24 + 40);

        v27 = [v32 configurationWithScale:3];
        v28 = String._bridgeToObjectiveC()();

        v29 = [v6 _systemImageNamed:v28 withConfiguration:v27];

        if (v29)
        {
          [v29 size];
          v11 = 25.0 / v10;
          [v29 size];
          v13 = 25.0 / v12;
          if (25.0 / v12 >= v11)
          {
            v13 = v11;
          }

          if (v13 <= 0.9)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0.9;
          }

          [v29 size];
          v16 = v15;
          v18 = v17;
          CGAffineTransformMakeScale(&v34, v14, v14);
          v35.width = v16;
          v35.height = v18;
          v19 = CGSizeApplyAffineTransform(v35, &v34);
          width = v19.width;
          height = v19.height;
        }

        else
        {
          width = 0.0;
          height = 0.0;
        }

        if (v9 > width)
        {
          v22 = v9;
        }

        else
        {
          v22 = width;
        }

        if (v22 > height)
        {
          v9 = v22;
        }

        else
        {
          v9 = height;
        }

        ++v8;
        v7 += 16;
        if (v5 == v8)
        {
          v30 = fmin(v9, 25.0);
          v3 = v31;
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
      v30 = 0.0;
LABEL_24:
      [objc_msgSend(v3 "tickMarksConfiguration")];
      swift_unknownObjectRelease();
      [v3 setLevelIndicatorHeight:v30];
    }
  }
}

void sub_10001DC5C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames);
  if (*(v2 + 16) <= a1)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v3 = v2 + 16 * a1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = objc_opt_self();

  v7 = [v6 configurationWithScale:3];
  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() _systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {
    [v9 size];
    v11 = 25.0 / v10;
    [v9 size];
    v13 = 25.0 / v12;
    if (25.0 / v12 >= v11)
    {
      v13 = v11;
    }

    if (v13 <= 0.9)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.9;
    }

    [v9 size];
    v16 = v15;
    v18 = v17;
    CGAffineTransformMakeScale(&v19, v14, v14);
    v20.width = v16;
    v20.height = v18;
    CGSizeApplyAffineTransform(v20, &v19);
  }
}

uint64_t sub_10001DFB4(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  v12 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_disabledMenuItemsIndices;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v11, v2 + v12, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v12, a1, v4);
  swift_endAccess();
  v13(v9, v2 + v12, v4);
  sub_10001F1E0();
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v9, v4);
  if ((v12 & 1) == 0)
  {
    v15 = [*(v2 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider) imageDataConfiguration];
    if (v15)
    {
      [v15 reloadContent];
      swift_unknownObjectRelease();
    }
  }

  v14(a1, v4);
  return (v14)(v11, v4);
}

char *sub_10001E2E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider;
  *&v4[v10] = [objc_allocWithZone(CEKDiscreteSlider) initWithTickMarkStyle:1];
  *&v4[OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_maximumSliderGlyphDimension] = 0x4039000000000000;
  *&v4[OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames] = _swiftEmptyArrayStorage;
  IndexSet.init()();
  *&v4[OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider__orientation] = 1;
  *&v4[OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment] = 1;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider;
  [*&v11[OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider] setDelegate:v11];
  [*&v11[v12] setSliderVerticalAlignment:1];
  v13 = [*&v11[v12] imageDataConfiguration];
  if (v13)
  {
    [v13 setImageDataProvider:v11];
    swift_unknownObjectRelease();
  }

  [objc_msgSend(*&v11[v12] "tickMarksConfiguration")];
  swift_unknownObjectRelease();
  v14 = [*&v11[v12] tickMarksConfiguration];
  v15 = [objc_opt_self() whiteColor];
  [v14 setMainTickMarkColor:v15];
  swift_unknownObjectRelease();

  [objc_msgSend(*&v11[v12] "tickMarksConfiguration")];
  swift_unknownObjectRelease();
  [*&v11[v12] setBiasScrollingToCurrentSelection:0];
  [*&v11[v12] setSelectionFeedbackProfile:2];
  [*&v11[v12] setTransparentGradients];
  [*&v11[v12] setGradientInsets:{20.0, 20.0}];
  [*&v11[v12] addTarget:v11 action:"discreteSliderDidChangeValue:" forControlEvents:4096];
  [v11 addSubview:*&v11[v12]];
  return v11;
}

id sub_10001E5C8()
{
  [v0 bounds];
  fmin(CGRectGetWidth(v18) + -50.0, 0.0);
  [v0 bounds];
  v1 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment;
  *&v0[OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment];
  UIRectInsetEdges();
  *&v0[v1];
  CAMViewGeometryForOrientedFrame();
  a = v16.a;
  b = v16.b;
  c = v16.c;
  d = v16.d;
  tx = v16.tx;
  ty = v16.ty;
  v16 = v17;
  CGAffineTransformScale(&v15, &v16, -1.0, 1.0);
  v9 = v15.tx;
  v8 = v15.ty;
  v13 = *&v15.c;
  v14 = *&v15.a;
  v10 = *&v0[OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider];
  [v10 setCenter:{tx + 2.0, ty}];
  [v10 setBounds:{a, b, c, d}];
  *&v16.a = v14;
  *&v16.c = v13;
  v16.tx = v9;
  v16.ty = v8;
  [v10 setTransform:&v16];
  *&v0[v1];
  UIEdgeInsetsMakeWithEdges();
  [v0 setHitTestInsets:?];
  result = [v10 imageDataConfiguration];
  if (result)
  {
    v12 = result;
    sub_10001E7AC(&v16);
    v15 = v16;
    [v12 setContentTransform:&v15];
    return swift_unknownObjectRelease();
  }

  return result;
}

CGFloat sub_10001E7AC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider__orientation);
  v4 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment);
  if (v3 == 2)
  {
    v6 = v4 == 0;
    v7 = &unk_100040320;
    goto LABEL_12;
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      v5 = -3.14159265;
      if (!v4)
      {
        v5 = 0.0;
      }

      goto LABEL_13;
    }

    v6 = v4 == 0;
    v7 = dbl_10003FB60;
LABEL_12:
    v5 = v7[v6];
    goto LABEL_13;
  }

  v5 = 3.14159265;
  if (v4)
  {
    v5 = 0.0;
  }

LABEL_13:
  CGAffineTransformMakeRotation(&v12, v5);
  CGAffineTransformScale(&v11, &v12, -1.0, 1.0);
  v12 = v11;
  UIIntegralTransform();
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a1 = *&v11.a;
  a1[1] = v9;
  a1[2] = v10;
  return result;
}

unint64_t sub_10001E924(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames);
    if (*(v2 + 16) > result)
    {
      v3 = v2 + 16 * result;
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      v6 = objc_opt_self();

      v7 = [v6 configurationWithScale:3];
      v8 = String._bridgeToObjectiveC()();

      v9 = [objc_opt_self() _systemImageNamed:v8 withConfiguration:v7];

      return v9;
    }
  }

  __break(1u);
  return result;
}

void *sub_10001EBC8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10001EC94(id result)
{
  if (*(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider__orientation) != result)
  {
    *(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider__orientation) = result;
    result = [*(v1 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider) imageDataConfiguration];
    if (result)
    {
      v2 = result;
      sub_10001E7AC(v4);
      v3[0] = v4[0];
      v3[1] = v4[1];
      v3[2] = v4[2];
      [v2 setContentTransform:v3 animated:0];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_10001ED30(id result, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider__orientation) != result)
  {
    *(v2 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider__orientation) = result;
    result = [*(v2 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider) imageDataConfiguration];
    if (result)
    {
      v4 = result;
      sub_10001E7AC(v6);
      v5[0] = v6[0];
      v5[1] = v6[1];
      v5[2] = v6[2];
      [v4 setContentTransform:v5 animated:a2 & 1];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t type metadata accessor for OverlayMenuSlider()
{
  result = qword_10005FB20;
  if (!qword_10005FB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EFA8()
{
  result = type metadata accessor for IndexSet();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001F070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_10001F100()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_discreteSlider;
  *(v0 + v1) = [objc_allocWithZone(CEKDiscreteSlider) initWithTickMarkStyle:1];
  *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_maximumSliderGlyphDimension) = 0x4039000000000000;
  *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames) = _swiftEmptyArrayStorage;
  IndexSet.init()();
  *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider__orientation) = 1;
  *(v0 + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10001F1E0()
{
  result = qword_10005FB30;
  if (!qword_10005FB30)
  {
    type metadata accessor for IndexSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FB30);
  }

  return result;
}

id sub_10001F278()
{
  ObjectType = swift_getObjectType();
  v30 = v0;
  v0[OBJC_IVAR___CAMHapticContactRecognizer_isHalfPressEnabled] = 1;
  v0[OBJC_IVAR___CAMHapticContactRecognizer_isSwipeEnabled] = 1;
  v0[OBJC_IVAR___CAMHapticContactRecognizer_isGeneratorActive] = 0;
  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  if (qword_1000616A8 && (v1 = COERCE_DOUBLE(sub_10002D2EC()), (v2 & 1) == 0))
  {
    if (v1 < 0.0)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = v1;
    }

    if (v3 >= 1.0)
    {
      v3 = 1.0;
    }
  }

  else if (CEKIsRetunedHapticDevice())
  {
    v3 = 0.46;
  }

  else
  {
    v3 = 0.38;
  }

  sub_100017000(&qword_10005FBF0, &qword_1000403B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100040380;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0x6D6F74737563;
  *(inited + 80) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 23382;
  AnyHashable.init<A>(_:)();
  sub_100017000(&qword_10005FBF8, &qword_1000403C0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_100040390;
  *(v5 + 32) = 0x656D756C6F76;
  v6 = v5 + 32;
  *(v5 + 40) = 0xE600000000000000;
  *(v5 + 48) = v3;
  v7 = sub_10002C244(v5);
  swift_setDeallocating();
  sub_10001FF9C(v6);
  v8 = sub_100017000(&qword_10005FC08, &qword_1000403D0);
  *(inited + 240) = v8;
  *(inited + 216) = v7;
  sub_10002C348(inited);
  swift_setDeallocating();
  sub_100017000(&unk_10005FC10, &unk_100040A20);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = objc_opt_self();
  v28 = [v10 feedbackWithDictionaryRepresentation:isa];

  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_100040380;
  AnyHashable.init<A>(_:)();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 72) = 0x6D6F74737563;
  *(v11 + 80) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  *(v11 + 168) = &type metadata for Int;
  *(v11 + 144) = 23382;
  v32 = 0xD000000000000010;
  v33 = 0x8000000100042810;
  AnyHashable.init<A>(_:)();
  v12 = swift_initStackObject();
  *(v12 + 32) = 0x656D756C6F76;
  v13 = v12 + 32;
  *(v12 + 16) = xmmword_100040390;
  *(v12 + 40) = 0xE600000000000000;
  *(v12 + 48) = v3 * 0.6;
  v14 = sub_10002C244(v12);
  swift_setDeallocating();
  sub_10001FF9C(v13);
  *(v11 + 240) = v8;
  *(v11 + 216) = v14;
  sub_10002C348(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v10 feedbackWithDictionaryRepresentation:v15];

  v17 = [objc_opt_self() defaultConfiguration];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 tweakedConfigurationForClass:ObjCClassFromMetadata usage:v19];

  v21 = v20;
  [v21 setInteractionStartedFeedback:v28];
  [v21 setInteractionEndedFeedback:v16];

  v22 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithConfiguration:v21];
  *&v30[OBJC_IVAR___CAMHapticContactRecognizer_halfPressGenerator] = v22;
  [v22 _setOutputMode:5];
  v23 = [objc_opt_self() defaultConfiguration];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 tweakedConfigurationForClass:ObjCClassFromMetadata usage:v24];

  [v25 setMinimumInterval:0.01];
  [v25 setFeedback:v28];
  v26 = [objc_allocWithZone(UISelectionFeedbackGenerator) initWithConfiguration:v25];
  *&v30[OBJC_IVAR___CAMHapticContactRecognizer_swipeGenerator] = v26;
  [v26 _setOutputMode:5];

  v31.receiver = v30;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, "init");
}

void sub_10001F9AC(id a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR___CAMHapticContactRecognizer_isSwipeEnabled) == 1)
  {
    v3 = [a1 _contact];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 touchPositionHints];

      if ((v5 & 2) != 0)
      {
        [*(v1 + OBJC_IVAR___CAMHapticContactRecognizer_swipeGenerator) selectionChanged];
      }
    }
  }

  if (*(v1 + OBJC_IVAR___CAMHapticContactRecognizer_isHalfPressEnabled) == 1)
  {
    if (sub_100014A5C(2, 0))
    {
      v6 = OBJC_IVAR___CAMHapticContactRecognizer_isGeneratorActive;
      if ((*(v2 + OBJC_IVAR___CAMHapticContactRecognizer_isGeneratorActive) & 1) == 0)
      {
        [*(v2 + OBJC_IVAR___CAMHapticContactRecognizer_halfPressGenerator) userInteractionStarted];
        *(v2 + v6) = 1;
        return;
      }

      if (qword_10005F528 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100016DD8(v7, qword_1000616B8);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v8))
      {
        goto LABEL_30;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Skipping half-press press haptic due to active feedback generator";
      goto LABEL_29;
    }

    if (sub_100014A5C(2, 2))
    {
      v11 = OBJC_IVAR___CAMHapticContactRecognizer_isGeneratorActive;
      if (*(v2 + OBJC_IVAR___CAMHapticContactRecognizer_isGeneratorActive) != 1)
      {
        if (qword_10005F528 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100016DD8(v12, qword_1000616B8);
        oslog = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(oslog, v8))
        {
          goto LABEL_30;
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Skipping half-press release haptic due to inactive feedback generator";
LABEL_29:
        _os_log_impl(&_mh_execute_header, oslog, v8, v10, v9, 2u);

LABEL_30:

        return;
      }

      [*(v2 + OBJC_IVAR___CAMHapticContactRecognizer_halfPressGenerator) userInteractionEnded];
    }

    else
    {
      if (!sub_100014A5C(2, 3))
      {
        return;
      }

      v11 = OBJC_IVAR___CAMHapticContactRecognizer_isGeneratorActive;
      if (*(v2 + OBJC_IVAR___CAMHapticContactRecognizer_isGeneratorActive) != 1)
      {
        if (qword_10005F528 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_100016DD8(v13, qword_1000616B8);
        oslog = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(oslog, v8))
        {
          goto LABEL_30;
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Skipping half-press cancel due to inactive feedback generator";
        goto LABEL_29;
      }

      [*(v2 + OBJC_IVAR___CAMHapticContactRecognizer_halfPressGenerator) userInteractionCancelled];
    }

    *(v2 + v11) = 0;
  }
}

void sub_10001FD78(void *a1)
{
  if (a1 && *(v1 + OBJC_IVAR___CAMHapticContactRecognizer_isSwipeEnabled) == 1)
  {
    v5 = a1;
    v2 = [v5 _contact];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 touchPositionHints];

      if ((v4 & 2) != 0)
      {
        [*(v1 + OBJC_IVAR___CAMHapticContactRecognizer_swipeGenerator) selectionChanged];
      }
    }
  }
}

void sub_10001FF14()
{
  if (*(v0 + OBJC_IVAR___CAMHapticContactRecognizer_isHalfPressEnabled) == 1)
  {
    [*(v0 + OBJC_IVAR___CAMHapticContactRecognizer_halfPressGenerator) prepare];
  }

  if (*(v0 + OBJC_IVAR___CAMHapticContactRecognizer_isSwipeEnabled) == 1)
  {
    v1 = *(v0 + OBJC_IVAR___CAMHapticContactRecognizer_swipeGenerator);

    [v1 prepare];
  }
}

uint64_t sub_10001FF9C(uint64_t a1)
{
  v2 = sub_100017000(&qword_10005FC00, &qword_1000403C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100020194(void *a1)
{
  v3 = [a1 _stage];
  v4 = [a1 _numberOfStages];
  v5 = [a1 _contact];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isTouching];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100014B84(v3, v4, v7);
  v9 = [a1 _stagePhase];
  v10 = v9 == 0;
  v11 = v10;
  if (v8 != 4)
  {
    v11 = 0;
  }

  if (v8 == 2)
  {
    v12 = 0;
  }

  else
  {
    v10 = 0;
    v12 = v11;
  }

  if (v8 == 2 || v8 == 3)
  {
    v15 = v9 == 2 || v9 == 3;
    if (!v10)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v15 = 0;
    if (!v10)
    {
      goto LABEL_37;
    }
  }

  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  v16 = qword_1000616A8;
  if (qword_1000616A8)
  {
    v17 = v1;
    v18 = String._bridgeToObjectiveC()();
    [v16 doubleForKey:v18];
    v20 = v19;

    if (v20 <= 0.0)
    {
      v20 = 0.8;
    }

    v21 = sub_10002D1A8();
    if (v21 != 2 && (v21 & 1) == 0)
    {
      v20 = v20 + -0.2;
    }

    v1 = v17;
  }

  else
  {
    v20 = 0.8;
  }

  v22 = OBJC_IVAR___CAMFocusLockGestureRecognizer_halfPressTimer;
  v23 = *(v1 + OBJC_IVAR___CAMFocusLockGestureRecognizer_halfPressTimer);
  if (v23)
  {
    [v23 invalidate];
  }

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35[4] = sub_100020AD8;
  v35[5] = v24;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  v35[2] = sub_10002EC64;
  v35[3] = &unk_100056660;
  v25 = _Block_copy(v35);
  v26 = objc_opt_self();

  v27 = [v26 timerWithTimeInterval:0 repeats:v25 block:v20];
  _Block_release(v25);

  v28 = *(v1 + v22);
  *(v1 + v22) = v27;

  v29 = [objc_opt_self() currentRunLoop];
  v30 = *(v1 + v22);
  if (!v30)
  {
    __break(1u);
    return;
  }

  v31 = v29;
  [v29 addTimer:v30 forMode:NSRunLoopCommonModes];

LABEL_37:
  v32 = OBJC_IVAR___CAMFocusLockGestureRecognizer_halfPressTimer;
  v33 = *(v1 + OBJC_IVAR___CAMFocusLockGestureRecognizer_halfPressTimer);
  if (v33)
  {
    v34 = v33;
    if ([v34 isValid])
    {
      if (v15 || v12)
      {
        [v34 invalidate];

        v34 = *(v1 + v32);
        *(v1 + v32) = 0;
      }
    }
  }
}

void sub_1000205AC(void *a1, uint64_t a2, uint64_t *a3, char a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *a3;
    v12 = *(Strong + *a3);
    if (v12)
    {
      sub_100017314();
      v13 = a1;
      v14 = v12;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v10[OBJC_IVAR___CAMFocusLockGestureRecognizer_active] = a4;
        v16 = &v10[*a5];
        v18 = *v16;
        v17 = *(v16 + 1);

        v18(v19);

        v20 = *&v10[v11];
        if (v20)
        {
          [v20 invalidate];
          v21 = *&v10[v11];
        }

        else
        {
          v21 = 0;
        }

        *&v10[v11] = 0;

        v10 = v21;
      }
    }
  }
}

void sub_1000207F0()
{
  if (*(v0 + OBJC_IVAR___CAMFocusLockGestureRecognizer_active) == 1)
  {
    if (qword_10005F518 != -1)
    {
      swift_once();
    }

    v1 = qword_1000616A8;
    if (qword_1000616A8)
    {
      v2 = String._bridgeToObjectiveC()();
      [v1 doubleForKey:v2];
      v4 = v3;
    }

    else
    {
      v4 = 0.0;
    }

    if (v4 <= 0.0)
    {
      v4 = 0.675;
    }

    v5 = OBJC_IVAR___CAMFocusLockGestureRecognizer_lockWindowTimer;
    v6 = *(v0 + OBJC_IVAR___CAMFocusLockGestureRecognizer_lockWindowTimer);
    if (v6)
    {
      [v6 invalidate];
    }

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18[4] = sub_100020A90;
    v18[5] = v7;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10002EC64;
    v18[3] = &unk_100056638;
    v8 = _Block_copy(v18);
    v9 = objc_opt_self();

    v10 = [v9 timerWithTimeInterval:0 repeats:v8 block:v4];
    _Block_release(v8);

    v11 = *(v0 + v5);
    *(v0 + v5) = v10;

    v12 = [objc_opt_self() currentRunLoop];
    v13 = *(v0 + v5);
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v12;
    [v12 addTimer:v13 forMode:NSRunLoopCommonModes];
  }

  v15 = OBJC_IVAR___CAMFocusLockGestureRecognizer_halfPressTimer;
  v16 = *(v0 + OBJC_IVAR___CAMFocusLockGestureRecognizer_halfPressTimer);
  if (v16)
  {
    [v16 invalidate];
    v17 = *(v0 + v15);
  }

  else
  {
    v17 = 0;
  }

  *(v0 + v15) = 0;
}

uint64_t sub_100020A58()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020AC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100020B18()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100020B60(uint64_t a1)
{
  v3 = sub_100017000(&qword_100060030, &qword_1000409D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_100017000(&qword_100060038, &qword_1000409E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
  swift_beginAccess();
  sub_10002CE14(v1 + v11, v10, &qword_100060038, &qword_1000409E0);
  v12 = type metadata accessor for ClientAnalyticsEvent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v28 = v13 + 48;
  v29 = v14;
  v15 = v14(v10, 1, v12);
  sub_10001B6F0(v10, &qword_100060038, &qword_1000409E0);
  if (v15 == 1)
  {
    goto LABEL_3;
  }

  v16 = v1 + OBJC_IVAR___CAMOverlayAnalyticsCollector_presentationEvent;
  swift_beginAccess();
  sub_10002CE14(v16, v6, &qword_100060030, &qword_1000409D8);
  v17 = type metadata accessor for PresentationAnalyticsEvent(0);
  v18 = *(v17 - 8);
  v26 = *(v18 + 48);
  v27 = v18;
  v19 = v26(v6, 1, v17);
  sub_10001B6F0(v6, &qword_100060030, &qword_1000409D8);
  if (v19 == 1)
  {
LABEL_3:
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100016DD8(v20, qword_1000616D0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Attempted to count dismiss without a registered client or presentation", v23, 2u);
    }
  }

  else
  {
    swift_beginAccess();
    if (!v29(v1 + v11, 1, v12))
    {
      sub_100025A20(a1);
    }

    swift_endAccess();
    swift_beginAccess();
    if (!v26(v16, 1, v17))
    {
      v24 = v16 + *(v17 + 44);
      *v24 = a1;
      *(v24 + 8) = 0;
      sub_100023EA8();
    }

    sub_10001B6F0(v16, &qword_100060030, &qword_1000409D8);
    (*(v27 + 56))(v16, 1, 1, v17);
    swift_endAccess();
  }
}

uint64_t sub_100020F1C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v20 = _swiftEmptyArrayStorage;
  sub_1000339F4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v17 = v9;
    a1(&v18, &v17);
    if (v3)
    {
      break;
    }

    v10 = v18;
    v11 = v19;
    v20 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      v16 = v19;
      sub_1000339F4((v12 > 1), v13 + 1, 1);
      v11 = v16;
      v5 = v20;
    }

    v5[2] = v13 + 1;
    v14 = &v5[3 * v13];
    v14[4] = v10;
    *(v14 + 5) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void *sub_100021040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100033A34(0, v1, 0);
  v3 = v2 + 56;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v27 = v2 + 64;
  v29 = v2 + 56;
  v30 = v2;
  v28 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v3 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_63;
    }

    v11 = *(*(v2 + 48) + v7);
    v31 = v8;
    if (v11 <= 4)
    {
      if (*(*(v2 + 48) + v7) <= 1u)
      {
        if (*(*(v2 + 48) + v7))
        {
          v12 = 0x78456D6574737973;
          v13 = 0xEE00657275736F70;
        }

        else
        {
          v13 = 0xEA00000000006D6FLL;
          v12 = 0x6F5A6D6574737973;
        }
      }

      else if (v11 == 2)
      {
        v12 = 0xD000000000000012;
        v13 = 0x80000001000416B0;
      }

      else if (v11 == 3)
      {
        v12 = 0x74536D6574737973;
        v13 = 0xEB00000000656C79;
      }

      else
      {
        v12 = 0x6F546D6574737973;
        v13 = 0xEA0000000000656ELL;
      }
    }

    else if (*(*(v2 + 48) + v7) > 7u)
    {
      if (v11 == 8)
      {
        v13 = 0xE800000000000000;
        v12 = 0x6574657263736964;
      }

      else if (v11 == 9)
      {
        v13 = 0xE600000000000000;
        v12 = 0x72656B636970;
      }

      else
      {
        v13 = 0xE700000000000000;
        v12 = 0x6E776F6E6B6E75;
      }
    }

    else if (v11 == 5)
    {
      v12 = 0x6F436D6574737973;
      v13 = 0xEB00000000726F6CLL;
    }

    else if (v11 == 6)
    {
      v12 = 0x6E496D6574737973;
      v13 = 0xEF797469736E6574;
    }

    else
    {
      v13 = 0xEA00000000007375;
      v12 = 0x6F756E69746E6F63;
    }

    v32 = *(v2 + 36);
    sub_10002C0F8(1, v12, v13, v6);

    v14 = Substring.uppercased()();

    if (v11 <= 4)
    {
      if (v11 <= 1)
      {
        if (v11)
        {
          v16 = 0x78456D6574737973;
          v17 = 0xEE00657275736F70;
        }

        else
        {
          v17 = 0xEA00000000006D6FLL;
          v16 = 0x6F5A6D6574737973;
        }
      }

      else if (v11 == 2)
      {
        v16 = 0xD000000000000012;
        v17 = 0x80000001000416B0;
      }

      else if (v11 == 3)
      {
        v16 = 0x74536D6574737973;
        v17 = 0xEB00000000656C79;
      }

      else
      {
        v16 = 0x6F546D6574737973;
        v17 = 0xEA0000000000656ELL;
      }
    }

    else if (v11 > 7)
    {
      if (v11 == 8)
      {
        v17 = 0xE800000000000000;
        v16 = 0x6574657263736964;
      }

      else if (v11 == 9)
      {
        v17 = 0xE600000000000000;
        v16 = 0x72656B636970;
      }

      else
      {
        v17 = 0xE700000000000000;
        v16 = 0x6E776F6E6B6E75;
      }
    }

    else if (v11 == 5)
    {
      v16 = 0x6F436D6574737973;
      v17 = 0xEB00000000726F6CLL;
    }

    else if (v11 == 6)
    {
      v16 = 0x6E496D6574737973;
      v17 = 0xEF797469736E6574;
    }

    else
    {
      v17 = 0xEA00000000007375;
      v16 = 0x6F756E69746E6F63;
    }

    sub_10002C194(1uLL, v16, v17, v15);

    sub_10002C74C();
    String.append<A>(contentsOf:)();

    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_100033A34((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    *&_swiftEmptyArrayStorage[2 * v19 + 4] = v14;
    v2 = v30;
    v9 = 1 << *(v30 + 32);
    if (v7 >= v9)
    {
      goto LABEL_64;
    }

    v3 = v29;
    v20 = *(v29 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_65;
    }

    if (v32 != *(v30 + 36))
    {
      goto LABEL_66;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_10002CE08(v7, v32, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_10002CE08(v7, v32, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v9;
    if (v31 + 1 == v28)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

void sub_100021618()
{
  v1 = v0;
  v2 = sub_100017000(&qword_100060030, &qword_1000409D8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = OBJC_IVAR___CAMOverlayAnalyticsCollector_presentationEvent;
  swift_beginAccess();
  sub_10002CE14(v0 + v9, v8, &qword_100060030, &qword_1000409D8);
  v10 = type metadata accessor for PresentationAnalyticsEvent(0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  sub_10001B6F0(v8, &qword_100060030, &qword_1000409D8);
  if (v12 == 1)
  {
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100016DD8(v13, qword_1000616D0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Attempted to cancel a presentation that was never counted", v16, 2u);
    }
  }

  else
  {
    if (qword_10005F518 != -1)
    {
      swift_once();
    }

    if (qword_1000616A8)
    {
      v17 = sub_10002D1A8();
      if (v17 != 2 && (v17 & 1) != 0)
      {
        if (qword_10005F530 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_100016DD8(v18, qword_1000616D0);
        v19 = v0;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v33 = v21;
          v22 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v34 = v32;
          *v22 = 136315138;
          v23 = &v19[OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent];
          swift_beginAccess();
          v24 = type metadata accessor for ClientAnalyticsEvent(0);
          if ((*(*(v24 - 8) + 48))(v23, 1, v24))
          {
            v25 = 0;
            v26 = 0xE000000000000000;
          }

          else
          {
            v27 = &v23[*(v24 + 24)];
            v25 = *v27;
            v26 = v27[1];
          }

          v28 = sub_10003344C(v25, v26, &v34);

          *(v22 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v20, v33, "Canceling presentation for client %s", v22, 0xCu);
          sub_1000170F4(v32);
        }
      }
    }

    v29 = OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
    swift_beginAccess();
    v30 = type metadata accessor for ClientAnalyticsEvent(0);
    if (!(*(*(v30 - 8) + 48))(v1 + v29, 1, v30))
    {
      sub_1000251A8();
    }

    swift_endAccess();
    (*(v11 + 56))(v6, 1, 1, v10);
    swift_beginAccess();
    sub_10002CA38(v6, v1 + v9, &qword_100060030, &qword_1000409D8);
    swift_endAccess();
  }
}

void sub_100021AFC()
{
  v1 = sub_100017000(&qword_100060030, &qword_1000409D8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v30 - v3;
  v5 = v0 + OBJC_IVAR___CAMOverlayAnalyticsCollector_presentationEvent;
  swift_beginAccess();
  sub_10002CE14(v5, v4, &qword_100060030, &qword_1000409D8);
  v6 = type metadata accessor for PresentationAnalyticsEvent(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = v7(v4, 1, v6);
  sub_10001B6F0(v4, &qword_100060030, &qword_1000409D8);
  if (v8 == 1)
  {
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100016DD8(v9, qword_1000616D0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Attempted to count full press in presentation that was never counted", v12, 2u);
    }
  }

  else
  {
    v13 = v0;
    if (qword_10005F518 != -1)
    {
      swift_once();
    }

    if (!qword_1000616A8)
    {
      goto LABEL_19;
    }

    v14 = sub_10002D1A8();
    if (v14 == 2 || (v14 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (qword_10005F530 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v15 = type metadata accessor for Logger();
      sub_100016DD8(v15, qword_1000616D0);
      v16 = v13;
      v17 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v13))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v31 = v19;
        *v18 = 136315138;
        v20 = &v16[OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent];
        swift_beginAccess();
        v21 = type metadata accessor for ClientAnalyticsEvent(0);
        if ((*(*(v21 - 8) + 48))(v20, 1, v21))
        {
          v22 = 0;
          v23 = 0xE000000000000000;
        }

        else
        {
          v24 = &v20[*(v21 + 24)];
          v22 = *v24;
          v23 = v24[1];
        }

        v25 = sub_10003344C(v22, v23, &v31);

        *(v18 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v17, v13, "Counting full press in presentation for client %s", v18, 0xCu);
        sub_1000170F4(v19);
      }

LABEL_19:
      if (v7(v5, 1, v6))
      {
        break;
      }

      v26 = *(v6 + 40);
      v27 = *(v5 + v26);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (!v28)
      {
        *(v5 + v26) = v29;
        return;
      }

      __break(1u);
LABEL_24:
      swift_once();
    }
  }
}

NSString sub_100021F2C()
{
  v1 = *v0;
  v2 = v0[1];
  return String._bridgeToObjectiveC()();
}

unint64_t sub_100021F34(uint64_t a1)
{
  result = sub_100021F5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100021F5C()
{
  result = qword_10005FC70;
  if (!qword_10005FC70)
  {
    type metadata accessor for AVCaptureClientApplicationIDType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FC70);
  }

  return result;
}

NSString sub_100021FB4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_100021FFC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6F5A6D6574737973;
    v7 = 0xD000000000000012;
    v8 = 0x74536D6574737973;
    if (a1 != 3)
    {
      v8 = 0x6F546D6574737973;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x78456D6574737973;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6574657263736964;
    v2 = 0x72656B636970;
    if (a1 != 9)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F436D6574737973;
    v4 = 0x6E496D6574737973;
    if (a1 != 6)
    {
      v4 = 0x6F756E69746E6F63;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1000221F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002C658(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100022220@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100021FFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002224C()
{
  v1 = *v0;
  v2 = sub_100021FFC(*v0);
  sub_10002C0F8(1, v2, v3, v4);

  countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

  v6 = sub_100021FFC(v1);
  sub_10002C194(1uLL, v6, v7, v8);

  sub_10002C74C();
  String.append<A>(contentsOf:)();

  return countAndFlagsBits;
}

NSString sub_100022354()
{
  v3 = *v0;
  sub_10002224C();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_1000223A8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      return 10;
    }

    v5 = [v4 pickerType];
    if (!v5)
    {
      return 9;
    }

    if (v5 == 1)
    {
      return 3;
    }

    goto LABEL_29;
  }

  result = [v1 sliderType];
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }

    if (result)
    {
      if (result == 1)
      {
        return result;
      }
    }

    else
    {
      v3 = [v0 controlType];
      if ((v3 - 1) < 2)
      {
        return 8;
      }

      if (!v3)
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v7 = [v6 valueRange];
          if (v7)
          {
            v8 = [v7 isDiscrete];
            swift_unknownObjectRelease();
            if (v8)
            {
              return 8;
            }
          }
        }

        return 7;
      }
    }

    while (1)
    {
LABEL_29:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if ((result - 5) < 2)
  {
    return 0;
  }

  if (result != 4)
  {
    if (result == 7)
    {
      return 2;
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1000225A4()
{
  v1 = *v0;
  v2 = sub_1000223A8();
  v3 = sub_100021FFC(v2);
  sub_10002C0F8(1, v3, v4, v5);

  countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

  v7 = sub_100021FFC(v2);
  sub_10002C194(1uLL, v7, v8, v9);

  sub_10002C74C();
  String.append<A>(contentsOf:)();

  return countAndFlagsBits;
}

uint64_t sub_1000226BC()
{
  if (!*v0)
  {
    return 0x73657250666C6148;
  }

  if (*v0 == 1)
  {
    return 0x6570697753;
  }

  v2 = *v0;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t sub_100022758@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10002C6A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10002278C()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    switch(v1)
    {
      case 0:
        return 7364948;
      case 1:
        return 0x6570697753;
      case 2:
        return 0x74756F656D6954;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    return 0x6B636F4C656C6449;
  }

  if (v1 == 4)
  {
    return 0x6769666E6F636552;
  }

  if (v1 != 5)
  {
LABEL_15:
    v3 = *v0;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  return 0x656E6E6F63736944;
}

NSString sub_1000228B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *v4;
  a4(a1, a3);
  v5 = String._bridgeToObjectiveC()();

  return v5;
}

void sub_100022904(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___CAMOverlayAnalyticsCollector_connectionsByPID;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_100033F48(a3), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 24 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = 0;
    v15 = a2;
    v14 = a1;
  }

  v16 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();

  v17 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_100029738(v16, v14, v15, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v8) = v25;
  swift_endAccess();
  if (qword_10005F518 != -1)
  {
LABEL_17:
    swift_once();
  }

  if (qword_1000616A8 && (v19 = sub_10002D1A8(), v19 != 2) && (v19 & 1) != 0)
  {
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100016DD8(v20, qword_1000616D0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_10003344C(a1, a2, &v26);
      *(v23 + 12) = 2048;
      *(v23 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v21, v22, "Counting connection from %s; %ld present", v23, 0x16u);
      sub_1000170F4(v24);
    }
  }

  else
  {
  }
}

unint64_t sub_100022BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    result = sub_100029738(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *v4 = v20;
  }

  else
  {
    v13 = *v4;
    result = sub_100033F48(a4);
    if (v14)
    {
      v15 = result;
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v21 = *v5;
      if (!v17)
      {
        sub_100029B54();
        v18 = v21;
      }

      v19 = *(*(v18 + 56) + 24 * v15 + 16);

      result = sub_100029474(v15, v18);
      *v5 = v18;
    }
  }

  return result;
}

void sub_100022D14(uint64_t a1)
{
  v3 = OBJC_IVAR___CAMOverlayAnalyticsCollector_connectionsByPID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = sub_100033F48(a1);
    if (v6)
    {
      v7 = (*(v4 + 56) + 24 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      swift_endAccess();
      v11 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        __break(1u);
      }

      else
      {
        if (v8 == 1)
        {
          v12 = 0;
          v13 = 0;
        }

        else
        {

          v12 = v9;
          v13 = v10;
        }

        swift_beginAccess();

        sub_100022BC8(v11, v12, v13, a1);
        swift_endAccess();
        if (qword_10005F518 == -1)
        {
LABEL_13:
          if (qword_1000616A8 && (v18 = sub_10002D1A8(), v18 != 2) && (v18 & 1) != 0)
          {
            if (qword_10005F530 != -1)
            {
              swift_once();
            }

            v19 = type metadata accessor for Logger();
            sub_100016DD8(v19, qword_1000616D0);

            v20 = Logger.logObject.getter();
            v21 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              v23 = swift_slowAlloc();
              v24 = v23;
              *v22 = 136315394;
              *(v22 + 4) = sub_10003344C(v9, v10, &v24);
              *(v22 + 12) = 2048;

              *(v22 + 14) = v11;

              _os_log_impl(&_mh_execute_header, v20, v21, "Decrementing connections from %s; %ld remain", v22, 0x16u);
              sub_1000170F4(v23);
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }
          }

          else
          {
          }

          return;
        }
      }

      swift_once();
      goto LABEL_13;
    }
  }

  swift_endAccess();
  if (qword_10005F530 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100016DD8(v14, qword_1000616D0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Attempted to unregister a connection that never registered", v17, 2u);
  }
}

void sub_1000230D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100017000(&qword_100060038, &qword_1000409E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v94[-v10];
  __chkstk_darwin(v9);
  v13 = &v94[-v12];
  v14 = type metadata accessor for ClientAnalyticsEvent(0);
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v22 = &v94[-v21];
  __chkstk_darwin(v20);
  v103 = &v94[-v23];
  v24 = OBJC_IVAR___CAMOverlayAnalyticsCollector_connectionsByPID;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (*(v25 + 16))
  {
    v26 = sub_100033F48(a1);
    if (v27)
    {
      v101 = a1;
      v102 = v15;
      v28 = *(v25 + 56) + 24 * v26;
      v30 = *(v28 + 8);
      v29 = *(v28 + 16);
      swift_endAccess();
      v100 = OBJC_IVAR___CAMOverlayAnalyticsCollector_disconnectTimer;
      v31 = *(v2 + OBJC_IVAR___CAMOverlayAnalyticsCollector_disconnectTimer);
      if (v31)
      {
        v99 = v30;
        v32 = v29;

        v33 = v31;
        if ([v33 isValid])
        {
          v34 = OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
          swift_beginAccess();
          sub_10002CE14(v2 + v34, v13, &qword_100060038, &qword_1000409E0);
          if ((*(v102 + 48))(v13, 1, v14) != 1)
          {
            v61 = v33;
            v62 = v103;
            sub_10002CC8C(v13, v103, type metadata accessor for ClientAnalyticsEvent);
            if (*&v62[v14[7]] == v101)
            {
              v63 = v32;
              if (qword_10005F518 != -1)
              {
                swift_once();
              }

              v64 = v99;
              v59 = v100;
              if (qword_1000616A8 && (v65 = sub_10002D1A8(), v65 != 2) && (v65 & 1) != 0)
              {
                if (qword_10005F530 != -1)
                {
                  swift_once();
                }

                v66 = type metadata accessor for Logger();
                sub_100016DD8(v66, qword_1000616D0);

                v67 = Logger.logObject.getter();
                v68 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v67, v68))
                {
                  v69 = swift_slowAlloc();
                  v70 = swift_slowAlloc();
                  v105[0] = v70;
                  *v69 = 136315138;
                  v71 = sub_10003344C(v64, v63, v105);

                  *(v69 + 4) = v71;
                  _os_log_impl(&_mh_execute_header, v67, v68, "Reusing recent instance of client %s", v69, 0xCu);
                  sub_1000170F4(v70);
                }

                else
                {
                }

                sub_10002CB08(v62, type metadata accessor for ClientAnalyticsEvent);
              }

              else
              {
                sub_10002CB08(v62, type metadata accessor for ClientAnalyticsEvent);
              }

              goto LABEL_33;
            }

            v98 = v34;
            v72 = v32;
            if (qword_10005F518 != -1)
            {
              swift_once();
            }

            v73 = v99;
            if (qword_1000616A8)
            {
              v74 = sub_10002D1A8();
              if (v74 != 2 && (v74 & 1) != 0)
              {
                if (qword_10005F530 != -1)
                {
                  swift_once();
                }

                v75 = type metadata accessor for Logger();
                sub_100016DD8(v75, qword_1000616D0);
                sub_10002CAA0(v62, v22, type metadata accessor for ClientAnalyticsEvent);

                v76 = Logger.logObject.getter();
                v77 = static os_log_type_t.debug.getter();

                v97 = v76;
                if (os_log_type_enabled(v76, v77))
                {
                  v78 = swift_slowAlloc();
                  v95 = v77;
                  v79 = v78;
                  v96 = swift_slowAlloc();
                  v105[0] = v96;
                  *v79 = 136315394;
                  v80 = &v22[v14[6]];
                  v82 = *v80;
                  v81 = v80[1];

                  sub_10002CB08(v22, type metadata accessor for ClientAnalyticsEvent);
                  v83 = sub_10003344C(v82, v81, v105);

                  *(v79 + 4) = v83;
                  v62 = v103;
                  *(v79 + 12) = 2080;

                  v84 = sub_10003344C(v73, v72, v105);

                  *(v79 + 14) = v84;
                  v85 = v97;
                  _os_log_impl(&_mh_execute_header, v97, v95, "Publishing old client %s before counting new client %s", v79, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  sub_10002CB08(v22, type metadata accessor for ClientAnalyticsEvent);
                }
              }
            }

            sub_100024368();
            *v11 = 0x6E6F6973736573;
            v11[1] = 0xE700000000000000;
            v86 = v11 + v14[5];
            Date.init()();
            *(v11 + v14[8]) = 0;
            *(v11 + v14[9]) = 11;
            *(v11 + v14[10]) = &_swiftEmptySetSingleton;
            v87 = v11 + v14[11];
            *v87 = 0;
            v87[8] = 1;
            v88 = v14[12];
            *(v11 + v88) = sub_10002C484(_swiftEmptyArrayStorage, &qword_100060090, &qword_100040A10, sub_100035E48);
            v89 = v14[13];
            v90 = sub_10002C484(_swiftEmptyArrayStorage, &unk_100060040, &qword_1000409E8, sub_100035E48);

            sub_10002CB08(v62, type metadata accessor for ClientAnalyticsEvent);
            *(v11 + v89) = v90;
            v91 = (v11 + v14[6]);
            *v91 = v73;
            v91[1] = v72;
            v92 = v102;
            *(v11 + v14[7]) = v101;
            (*(v92 + 56))(v11, 0, 1, v14);
            v93 = v98;
            swift_beginAccess();
            sub_10002CA38(v11, v2 + v93, &qword_100060038, &qword_1000409E0);
LABEL_32:
            swift_endAccess();
            v59 = v100;
LABEL_33:
            v60 = *(v2 + v59);
            if (v60)
            {
              [v60 invalidate];
              v36 = *(v2 + v59);
            }

            else
            {
              v36 = 0;
            }

            *(v2 + v59) = 0;
            goto LABEL_37;
          }

          sub_10001B6F0(v13, &qword_100060038, &qword_1000409E0);
        }

        else
        {
        }

        v39 = v32;
        v30 = v99;
      }

      else
      {

        v39 = v29;
      }

      v40 = OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
      swift_beginAccess();
      sub_10002CE14(v2 + v40, v8, &qword_100060038, &qword_1000409E0);
      if ((*(v102 + 48))(v8, 1, v14) == 1)
      {
        sub_10001B6F0(v8, &qword_100060038, &qword_1000409E0);
      }

      else
      {
        sub_10002CC8C(v8, v19, type metadata accessor for ClientAnalyticsEvent);
        if (qword_10005F530 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100016DD8(v41, qword_1000616D0);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "Counting new client with stale client; forcing publish", v44, 2u);
        }

        sub_100024368();
        sub_10002CB08(v19, type metadata accessor for ClientAnalyticsEvent);
      }

      if (qword_10005F518 != -1)
      {
        swift_once();
      }

      if (qword_1000616A8)
      {
        v45 = sub_10002D1A8();
        if (v45 != 2 && (v45 & 1) != 0)
        {
          if (qword_10005F530 != -1)
          {
            swift_once();
          }

          v46 = type metadata accessor for Logger();
          sub_100016DD8(v46, qword_1000616D0);

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v99 = v30;
            v51 = v50;
            v104[0] = v50;
            *v49 = 136315138;

            v52 = sub_10003344C(v99, v39, v104);

            *(v49 + 4) = v52;
            _os_log_impl(&_mh_execute_header, v47, v48, "Counting client %s", v49, 0xCu);
            sub_1000170F4(v51);
            v30 = v99;
          }
        }
      }

      *v11 = 0x6E6F6973736573;
      v11[1] = 0xE700000000000000;
      v53 = v11 + v14[5];
      Date.init()();
      *(v11 + v14[8]) = 0;
      *(v11 + v14[9]) = 11;
      *(v11 + v14[10]) = &_swiftEmptySetSingleton;
      v54 = v11 + v14[11];
      *v54 = 0;
      v54[8] = 1;
      v55 = v14[12];
      *(v11 + v55) = sub_10002C484(_swiftEmptyArrayStorage, &qword_100060090, &qword_100040A10, sub_100035E48);
      v56 = v14[13];
      *(v11 + v56) = sub_10002C484(_swiftEmptyArrayStorage, &unk_100060040, &qword_1000409E8, sub_100035E48);
      v57 = (v11 + v14[6]);
      *v57 = v30;
      v57[1] = v39;
      v58 = v102;
      *(v11 + v14[7]) = v101;
      (*(v58 + 56))(v11, 0, 1, v14);
      swift_beginAccess();
      sub_10002CA38(v11, v2 + v40, &qword_100060038, &qword_1000409E0);
      goto LABEL_32;
    }
  }

  swift_endAccess();
  if (qword_10005F530 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100016DD8(v35, qword_1000616D0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Attempted to count client without a registered connection", v38, 2u);
  }

LABEL_37:
}

void sub_100023EA8()
{
  v1 = v0;
  v2 = *(type metadata accessor for PresentationAnalyticsEvent(0) - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v5 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - v7;
  __chkstk_darwin(v6);
  v10 = (&v30 - v9);
  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  if (qword_1000616A8)
  {
    v11 = sub_10002D1A8();
    if (v11 != 2 && (v11 & 1) != 0)
    {
      if (qword_10005F530 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100016DD8(v12, qword_1000616D0);
      sub_10002CAA0(v0, v10, type metadata accessor for PresentationAnalyticsEvent);
      sub_10002CAA0(v0, v8, type metadata accessor for PresentationAnalyticsEvent);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v33 = v14;
        v16 = v15;
        v34 = swift_slowAlloc();
        v35 = v34;
        *v16 = 136315394;
        aBlock = 0xD000000000000022;
        v37 = 0x8000000100042AA0;
        v17 = *v10;
        v32 = v13;
        String.append(_:)(v17);
        v18 = aBlock;
        v19 = v37;
        v31 = type metadata accessor for PresentationAnalyticsEvent;
        sub_10002CB08(v10, type metadata accessor for PresentationAnalyticsEvent);
        v20 = sub_10003344C(v18, v19, &v35);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v21 = sub_1000273B0(sub_10002C90C, &off_100055B98, sub_10002D0B4);
        v23 = v22;
        sub_10002CB08(v8, v31);
        v24 = sub_10003344C(v21, v23, &v35);

        *(v16 + 14) = v24;
        v25 = v32;
        _os_log_impl(&_mh_execute_header, v32, v33, "Publishing event: %s [\n%s]", v16, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10002CB08(v8, type metadata accessor for PresentationAnalyticsEvent);
        sub_10002CB08(v10, type metadata accessor for PresentationAnalyticsEvent);
      }
    }
  }

  aBlock = 0xD000000000000022;
  v37 = 0x8000000100042AA0;
  String.append(_:)(*v1);
  v26 = String._bridgeToObjectiveC()();

  sub_10002CAA0(v1, v5, type metadata accessor for PresentationAnalyticsEvent);
  v27 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v28 = swift_allocObject();
  sub_10002CC8C(v5, v28 + v27, type metadata accessor for PresentationAnalyticsEvent);
  v40 = sub_10002C8A0;
  v41 = v28;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100027660;
  v39 = &unk_100056968;
  v29 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v29);
}

void sub_100024368()
{
  v1 = v0;
  v2 = type metadata accessor for ClientAnalyticsEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - v8;
  __chkstk_darwin(v7);
  v11 = (&v31 - v10);
  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  if (qword_1000616A8)
  {
    v12 = sub_10002D1A8();
    if (v12 != 2 && (v12 & 1) != 0)
    {
      if (qword_10005F530 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100016DD8(v13, qword_1000616D0);
      sub_10002CAA0(v0, v11, type metadata accessor for ClientAnalyticsEvent);
      sub_10002CAA0(v0, v9, type metadata accessor for ClientAnalyticsEvent);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v34 = v15;
        v17 = v16;
        v35 = swift_slowAlloc();
        v36 = v35;
        *v17 = 136315394;
        aBlock = 0xD000000000000022;
        v38 = 0x8000000100042AA0;
        v18 = *v11;
        v33 = v14;
        String.append(_:)(v18);
        v19 = aBlock;
        v20 = v38;
        v32 = type metadata accessor for ClientAnalyticsEvent;
        sub_10002CB08(v11, type metadata accessor for ClientAnalyticsEvent);
        v21 = sub_10003344C(v19, v20, &v36);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v22 = sub_1000273B0(sub_10002CDC0, &off_100055D80, sub_10002D0B4);
        v24 = v23;
        sub_10002CB08(v9, v32);
        v25 = sub_10003344C(v22, v24, &v36);

        *(v17 + 14) = v25;
        v26 = v33;
        _os_log_impl(&_mh_execute_header, v33, v34, "Publishing event: %s [\n%s]", v17, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10002CB08(v9, type metadata accessor for ClientAnalyticsEvent);
        sub_10002CB08(v11, type metadata accessor for ClientAnalyticsEvent);
      }
    }
  }

  aBlock = 0xD000000000000022;
  v38 = 0x8000000100042AA0;
  String.append(_:)(*v1);
  v27 = String._bridgeToObjectiveC()();

  sub_10002CAA0(v1, v6, type metadata accessor for ClientAnalyticsEvent);
  v28 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v29 = swift_allocObject();
  sub_10002CC8C(v6, v29 + v28, type metadata accessor for ClientAnalyticsEvent);
  v41 = sub_10002CCF4;
  v42 = v29;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100027660;
  v40 = &unk_100056A08;
  v30 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v30);
}

void sub_10002487C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v4 = sub_100017000(&qword_100060030, &qword_1000409D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v11 = type metadata accessor for PresentationAnalyticsEvent(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3 + OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
  swift_beginAccess();
  v17 = type metadata accessor for ClientAnalyticsEvent(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v18 + 48;
  if (v19(v16, 1, v17))
  {
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100016DD8(v21, qword_1000616D0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Attempted to count presentation without a registered client", v24, 2u);
    }
  }

  else
  {
    v50 = v15;
    v52 = v16;
    v53 = v19;
    v25 = (v16 + *(v17 + 24));
    v26 = v25[1];
    v54 = *v25;
    v55 = v20;
    v27 = OBJC_IVAR___CAMOverlayAnalyticsCollector_presentationEvent;
    swift_beginAccess();
    v51 = v27;
    sub_10002CE14(v3 + v27, v10, &qword_100060030, &qword_1000409D8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v28 = v26;

      sub_10001B6F0(v10, &qword_100060030, &qword_1000409D8);
    }

    else
    {
      v29 = v50;
      sub_10002CC8C(v10, v50, type metadata accessor for PresentationAnalyticsEvent);
      v30 = qword_10005F530;
      v28 = v26;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100016DD8(v31, qword_1000616D0);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Counting presentation with stale presentation; forcing publish", v34, 2u);
      }

      sub_100023EA8();
      sub_10002CB08(v29, type metadata accessor for PresentationAnalyticsEvent);
    }

    v35 = v56;
    if (qword_10005F518 != -1)
    {
      swift_once();
    }

    if (qword_1000616A8)
    {
      v36 = sub_10002D1A8();
      if (v36 != 2 && (v36 & 1) != 0)
      {
        v50 = v17;
        if (qword_10005F530 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100016DD8(v37, qword_1000616D0);

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v58 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_10003344C(v54, v28, &v58);
          _os_log_impl(&_mh_execute_header, v38, v39, "Counting presentation for client %s", v40, 0xCu);
          sub_1000170F4(v41);
        }

        v35 = v56;
        v17 = v50;
      }
    }

    strcpy(v8, "presentation");
    v8[13] = 0;
    *(v8 + 7) = -5120;
    v42 = &v8[v11[5]];
    Date.init()();
    v43 = v11[9];
    *&v8[v11[10]] = 0;
    v44 = &v8[v11[11]];
    *v44 = 0;
    v44[8] = 1;
    *&v8[v11[12]] = 0;
    *&v8[v11[13]] = 0;
    *&v8[v11[14]] = 0;
    *&v8[v11[7]] = v35;
    v45 = &v8[v11[6]];
    *v45 = v54;
    *(v45 + 1) = v28;
    v46 = sub_1000223A8();
    v8[v11[8]] = v46;
    v8[v43] = v46;
    (*(v12 + 56))(v8, 0, 1, v11);
    v47 = v51;
    swift_beginAccess();
    sub_10002CA38(v8, v3 + v47, &qword_100060030, &qword_1000409D8);
    swift_endAccess();
    v48 = v52;
    swift_beginAccess();
    if (!v53(v48, 1, v17))
    {
      sub_100024F50(v35);
    }

    swift_endAccess();
  }
}

unint64_t sub_100024F50(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for ClientAnalyticsEvent(0);
  v6 = v5[12];
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  v24 = v9;
  result = sub_100035E48(a1);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v11;
  if (v9[3] < v15)
  {
    sub_100028D04(v15, isUniquelyReferenced_nonNull_native, &qword_100060090, &qword_100040A10);
    result = sub_100035E48(a1);
    if ((v2 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  *(v3 + v6) = v9;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9[(result >> 6) + 8] |= 1 << result;
  *(v9[6] + 8 * result) = a1;
  *(v9[7] + 8 * result) = 0;
  v17 = v9[2];
  v14 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v18;
LABEL_9:
    while (1)
    {
      v19 = v9[7];
      v20 = *(v19 + 8 * result);
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (!v14)
      {
        break;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      v23 = result;
      sub_100029A18(&qword_100060090, &qword_100040A10);
      result = v23;
      v9 = v24;
      *(v3 + v6) = v24;
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *(v19 + 8 * result) = v21;
    v22 = v3 + v5[11];
    *v22 = a1;
    *(v22 + 8) = 0;
    result = sub_1000223A8();
    *(v3 + v5[9]) = result;
  }

  return result;
}

void sub_1000251A8()
{
  v1 = type metadata accessor for ClientAnalyticsEvent(0);
  v2 = (v0 + *(v1 + 44));
  if (v2[1])
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 48);
  v4 = *(v0 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = *v2;
  v6 = v0;
  v7 = *(v0 + v3);
  v8 = sub_100035E48(*v2);
  if ((v9 & 1) != 0 && (v10 = *(*(v4 + 56) + 8 * v8), v11 = v10 - 1, v10 >= 1))
  {
    v12 = *(v6 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v6 + v3);
    sub_1000295F0(v11, v5, isUniquelyReferenced_nonNull_native);
    *(v6 + v3) = v18;
  }

  else
  {
LABEL_6:
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100016DD8(v14, qword_1000616D0);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Attempted to cancel a presentation for an untracked reason.", v16, 2u);
    }
  }
}

void sub_10002537C(void *a1)
{
  v62 = a1;
  v2 = sub_100017000(&qword_100060030, &qword_1000409D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &object - v4;
  v6 = sub_100017000(&qword_100060038, &qword_1000409E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &object - v8;
  v10 = v1 + OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
  swift_beginAccess();
  sub_10002CE14(v10, v9, &qword_100060038, &qword_1000409E0);
  v11 = type metadata accessor for ClientAnalyticsEvent(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 1, v11);
  sub_10001B6F0(v9, &qword_100060038, &qword_1000409E0);
  if (v13 == 1)
  {
    goto LABEL_3;
  }

  v14 = v1 + OBJC_IVAR___CAMOverlayAnalyticsCollector_presentationEvent;
  swift_beginAccess();
  sub_10002CE14(v14, v5, &qword_100060030, &qword_1000409D8);
  v15 = type metadata accessor for PresentationAnalyticsEvent(0);
  v16 = *(v15 - 1);
  v17 = *(v16 + 48);
  v60 = v16 + 48;
  v61 = v17;
  v18 = v17(v5, 1, v15);
  sub_10001B6F0(v5, &qword_100060030, &qword_1000409D8);
  if (v18 == 1)
  {
LABEL_3:
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100016DD8(v19, qword_1000616D0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Attempted to count control change without a registered client or presentation", v22, 2u);
    }

    return;
  }

  if (qword_10005F518 != -1)
  {
    swift_once();
  }

  if (!qword_1000616A8)
  {
    goto LABEL_17;
  }

  v23 = sub_10002D1A8();
  if (v23 == 2 || (v23 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (qword_10005F530 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v24 = type metadata accessor for Logger();
    sub_100016DD8(v24, qword_1000616D0);
    v25 = v62;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v57 = v28;
      v59 = swift_slowAlloc();
      v69 = v59;
      *v28 = 136315138;
      v58 = v26;
      LODWORD(v55) = sub_1000223A8();
      v29 = sub_100021FFC(v55);
      sub_10002C0F8(1, v29, v30, v31);
      v56 = v27;
      countAndFlagsBits = v32;

      v33 = Substring.uppercased()();
      countAndFlagsBits = v33._countAndFlagsBits;
      object = v33._object;

      v34 = sub_100021FFC(v55);
      v37 = sub_10002C194(1uLL, v34, v35, v36);
      v39 = v38;
      v55 = v40;
      v42 = v41;

      v67 = countAndFlagsBits;
      v68 = object;
      v63 = v37;
      v64 = v39;
      v65 = v55;
      v66 = v42;
      sub_10002C74C();
      String.append<A>(contentsOf:)();

      v43 = sub_10003344C(v67, v68, &v69);

      v44 = v57;
      *(v57 + 1) = v43;
      v45 = v58;
      _os_log_impl(&_mh_execute_header, v58, v56, "Counting change to %s", v44, 0xCu);
      sub_1000170F4(v59);
    }

    else
    {
    }

LABEL_17:
    swift_beginAccess();
    if (!v12(v10, 1, v11))
    {
      v46 = *(v11 + 32);
      v47 = *(v10 + v46);
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        __break(1u);
        goto LABEL_25;
      }

      *(v10 + v46) = v49;
      *(v10 + *(v11 + 36)) = sub_1000223A8();
    }

    swift_endAccess();
    swift_beginAccess();
    if (v61(v14, 1, v15))
    {
      goto LABEL_23;
    }

    v50 = v15[12];
    v51 = *(v14 + v50);
    v48 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v48)
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  *(v14 + v50) = v52;
  *(v14 + v15[13]) = 0;
  *(v14 + v15[14]) = 0;
  *(v14 + v15[9]) = sub_1000223A8();
LABEL_23:
  swift_endAccess();
}

unint64_t sub_100025A20(uint64_t a1)
{
  v3 = v1;
  v5 = *(type metadata accessor for ClientAnalyticsEvent(0) + 52);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  v22 = v8;
  result = sub_100035E48(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v10;
  if (v8[3] < v14)
  {
    sub_100028D04(v14, isUniquelyReferenced_nonNull_native, &unk_100060040, &qword_1000409E8);
    result = sub_100035E48(a1);
    if ((v2 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  *(v3 + v5) = v8;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8[(result >> 6) + 8] |= 1 << result;
  *(v8[6] + 8 * result) = a1;
  *(v8[7] + 8 * result) = 0;
  v16 = v8[2];
  v13 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
LABEL_9:
    while (1)
    {
      v18 = v8[7];
      v19 = *(v18 + 8 * result);
      v13 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (!v13)
      {
        break;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      v21 = result;
      sub_100029A18(&unk_100060040, &qword_1000409E8);
      result = v21;
      v8 = v22;
      *(v3 + v5) = v22;
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *(v18 + 8 * result) = v20;
  }

  return result;
}

void sub_100025BE4()
{
  v1 = sub_100017000(&qword_100060030, &qword_1000409D8);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = type metadata accessor for PresentationAnalyticsEvent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100017000(&qword_100060038, &qword_1000409E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = aBlock - v15;
  v17 = OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
  swift_beginAccess();
  sub_10002CE14(v0 + v17, v16, &qword_100060038, &qword_1000409E0);
  v18 = type metadata accessor for ClientAnalyticsEvent(0);
  LODWORD(v17) = (*(*(v18 - 8) + 48))(v16, 1, v18);
  sub_10001B6F0(v16, &qword_100060038, &qword_1000409E0);
  if (v17 == 1)
  {
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100016DD8(v19, qword_1000616D0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Attempted to count disconnection without a registered client", v22, 2u);
    }

    goto LABEL_15;
  }

  v23 = OBJC_IVAR___CAMOverlayAnalyticsCollector_presentationEvent;
  swift_beginAccess();
  sub_10002CE14(v0 + v23, v7, &qword_100060030, &qword_1000409D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001B6F0(v7, &qword_100060030, &qword_1000409D8);
  }

  else
  {
    v24 = v0;
    sub_10002CC8C(v7, v12, type metadata accessor for PresentationAnalyticsEvent);
    if (qword_10005F530 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100016DD8(v25, qword_1000616D0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Disconnecting client has stale presentation; forcing publish", v28, 2u);
    }

    sub_100023EA8();
    sub_10002CB08(v12, type metadata accessor for PresentationAnalyticsEvent);
    (*(v9 + 56))(v5, 1, 1, v8);
    v0 = v24;
    swift_beginAccess();
    sub_10002CA38(v5, v24 + v23, &qword_100060030, &qword_1000409D8);
    swift_endAccess();
  }

  sub_10002D3D8();
  v30 = v29;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10002C9E8;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002EC64;
  aBlock[3] = &unk_1000569B8;
  v32 = _Block_copy(aBlock);
  v33 = objc_opt_self();

  v34 = [v33 timerWithTimeInterval:0 repeats:v32 block:v30];
  _Block_release(v32);

  v35 = OBJC_IVAR___CAMOverlayAnalyticsCollector_disconnectTimer;
  v36 = *(v0 + OBJC_IVAR___CAMOverlayAnalyticsCollector_disconnectTimer);
  *(v0 + OBJC_IVAR___CAMOverlayAnalyticsCollector_disconnectTimer) = v34;

  v37 = [objc_opt_self() currentRunLoop];
  v38 = *(v0 + v35);
  if (v38)
  {
    v20 = v37;
    [v37 addTimer:v38 forMode:NSRunLoopCommonModes];
LABEL_15:

    return;
  }

  __break(1u);
}

void sub_1000261C8(void *a1)
{
  v2 = sub_100017000(&qword_100060038, &qword_1000409E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for ClientAnalyticsEvent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([a1 isValid])
    {
      v13 = OBJC_IVAR___CAMOverlayAnalyticsCollector_disconnectTimer;
      v14 = *&v12[OBJC_IVAR___CAMOverlayAnalyticsCollector_disconnectTimer];
      if (v14)
      {
        sub_10002C9F0(0, &qword_10005F720, NSTimer_ptr);
        v15 = a1;
        v16 = v14;
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          v18 = OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
          swift_beginAccess();
          if (!(*(v7 + 48))(&v12[v18], 1, v6))
          {
            sub_10002CAA0(&v12[v18], v10, type metadata accessor for ClientAnalyticsEvent);
            sub_100024368();
            sub_10002CB08(v10, type metadata accessor for ClientAnalyticsEvent);
          }

          (*(v7 + 56))(v5, 1, 1, v6);
          swift_beginAccess();
          sub_10002CA38(v5, &v12[v18], &qword_100060038, &qword_1000409E0);
          swift_endAccess();
          v19 = *&v12[v13];
          *&v12[v13] = 0;

          v12 = v19;
        }
      }
    }
  }
}

uint64_t sub_100026498(double a1)
{
  v3 = v1 + OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
  swift_beginAccess();
  v4 = type metadata accessor for ClientAnalyticsEvent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *(v3 + *(v4 + 36));
    if (v5 != 11)
    {
      v6 = *(v4 + 40);
      sub_100029E28(&v10, v5);
    }
  }

  swift_endAccess();
  v7 = v1 + OBJC_IVAR___CAMOverlayAnalyticsCollector_presentationEvent;
  swift_beginAccess();
  v8 = type metadata accessor for PresentationAnalyticsEvent(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    *(v7 + *(v8 + 52)) = *(v7 + *(v8 + 52)) + a1;
    *(v7 + *(v8 + 56)) = sub_10002CE8C(a1) + *(v7 + *(v8 + 56));
  }

  return swift_endAccess();
}

void sub_100026800()
{
  sub_100026938(319, &qword_10005FD30, type metadata accessor for ClientAnalyticsEvent);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100026938(319, &qword_10005FD38, type metadata accessor for PresentationAnalyticsEvent);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100026938(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000269AC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1000269E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000269F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100026A40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100026AC0()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000270D8(319, &qword_10005FDA8);
    if (v1 <= 0x3F)
    {
      sub_1000270D8(319, &unk_10005FDB0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ControlName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100026D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100026E14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100026EB8()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000270D8(319, &qword_10005FDA8);
    if (v1 <= 0x3F)
    {
      sub_100027028();
      if (v2 <= 0x3F)
      {
        sub_1000270D8(319, &qword_10005FE80);
        if (v3 <= 0x3F)
        {
          sub_100027178(319, &qword_10005FE88, sub_100027124);
          if (v4 <= 0x3F)
          {
            sub_100027178(319, &qword_10005FE98, sub_1000271E0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100027028()
{
  if (!qword_10005FE70)
  {
    sub_100027084();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10005FE70);
    }
  }
}

unint64_t sub_100027084()
{
  result = qword_10005FE78;
  if (!qword_10005FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FE78);
  }

  return result;
}

void sub_1000270D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_100027124()
{
  result = qword_10005FE90;
  if (!qword_10005FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FE90);
  }

  return result;
}

void sub_100027178(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000271E0()
{
  result = qword_10005FEA0;
  if (!qword_10005FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FEA0);
  }

  return result;
}

unint64_t sub_100027238()
{
  result = qword_10005FEF0;
  if (!qword_10005FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FEF0);
  }

  return result;
}

unint64_t sub_100027290()
{
  result = qword_10005FEF8;
  if (!qword_10005FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FEF8);
  }

  return result;
}

void *sub_1000272E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *, uint64_t))
{
  if (*(a3(a1, &v6, a2) + 16))
  {
    sub_100017000(&qword_100060070, &qword_100040A00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v7 = v3;

  sub_10002AFC0(v4, 1, &v7);

  return v7;
}

uint64_t sub_1000273B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *, uint64_t))
{
  v3 = sub_1000272E4(a1, a2, a3);
  v4 = v3;
  v5 = v3[2];
  if (v5)
  {
    v6 = sub_1000289D0(v3[2], 0);
    v7 = sub_10002BEB4(&v30, v6 + 4, v5, v4);

    sub_10002C900();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = &_swiftEmptyArrayStorage;
LABEL_5:
  v30 = v6;
  sub_10002B350(&v30);

  v8 = v30;
  v9 = *(v30 + 16);
  if (v9)
  {
    sub_100033A34(0, v9, 0);
    v10 = (v8 + 48);
    do
    {
      v12 = *(v10 - 2);
      v11 = *(v10 - 1);
      v13 = *v10;
      v30 = 9;
      v31 = 0xE100000000000000;

      v14 = v13;
      v15._countAndFlagsBits = v12;
      v15._object = v11;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 8250;
      v16._object = 0xE200000000000000;
      String.append(_:)(v16);
      v17 = [v14 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21._countAndFlagsBits = v18;
      v21._object = v20;
      String.append(_:)(v21);

      v22._countAndFlagsBits = 10;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);

      v23 = v30;
      v24 = v31;
      v26 = *(&_swiftEmptyArrayStorage + 2);
      v25 = *(&_swiftEmptyArrayStorage + 3);
      if (v26 >= v25 >> 1)
      {
        sub_100033A34((v25 > 1), v26 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v26 + 1;
      v27 = &_swiftEmptyArrayStorage + 16 * v26;
      *(v27 + 4) = v23;
      *(v27 + 5) = v24;
      v10 += 3;
      --v9;
    }

    while (v9);
  }

  v30 = &_swiftEmptyArrayStorage;
  sub_100017000(&unk_10005F710, &unk_10003FF60);
  sub_10001B6A8(&qword_100060050, &unk_10005F710, &unk_10003FF60);
  v28 = BidirectionalCollection<>.joined(separator:)();

  return v28;
}

Class sub_100027660(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10002C9F0(0, &unk_100060080, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

unint64_t sub_1000276FC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x696D736944706174;
    if (a1 != 10)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000011;
    }

    v7 = 0xD000000000000017;
    if (a1 == 7)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7275446C61746F74;
    v2 = 0x6C646E7542707061;
    v3 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000011;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100027904@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002C6B4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100027934@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000276FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000279B8()
{
  result = qword_10005FF80;
  if (!qword_10005FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FF80);
  }

  return result;
}

unint64_t sub_100027A10()
{
  result = qword_10005FF88;
  if (!qword_10005FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FF88);
  }

  return result;
}

unint64_t sub_100027A68()
{
  result = qword_10005FF90;
  if (!qword_10005FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FF90);
  }

  return result;
}

unint64_t sub_100027AC0()
{
  result = qword_10005FF98;
  if (!qword_10005FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FF98);
  }

  return result;
}

unint64_t sub_100027B18()
{
  result = qword_10005FFA0;
  if (!qword_10005FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005FFA0);
  }

  return result;
}

void sub_100027B6C(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        v12 = *(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 52));
        if (!*(v12 + 16))
        {
          goto LABEL_39;
        }

        v13 = sub_100035E48(1);
        if ((v27 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else if (a1 == 10)
      {
        v12 = *(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 52));
        if (!*(v12 + 16))
        {
          goto LABEL_39;
        }

        v13 = sub_100035E48(0);
        if ((v15 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = *(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 52));
        if (!*(v12 + 16))
        {
          goto LABEL_39;
        }

        v13 = sub_100035E48(2);
        if ((v34 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else if (a1 == 6)
    {
      v12 = *(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 48));
      if (!*(v12 + 16))
      {
        goto LABEL_39;
      }

      v13 = sub_100035E48(1);
      if ((v20 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (a1 == 7)
    {
      v12 = *(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 52));
      if (!*(v12 + 16))
      {
        goto LABEL_39;
      }

      v13 = sub_100035E48(5);
      if ((v14 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = *(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 52));
      if (!*(v12 + 16))
      {
        goto LABEL_39;
      }

      v13 = sub_100035E48(4);
      if ((v32 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_37:
    v11 = *(*(v12 + 56) + 8 * v13);
    goto LABEL_38;
  }

  if (a1 <= 2u)
  {
    if (!a1)
    {
      v16 = v8;
      Date.init()();
      v17 = *(type metadata accessor for ClientAnalyticsEvent(0) + 20);
      Date.timeIntervalSince(_:)();
      v19 = v18;
      (*(v6 + 8))(v10, v16);
      a2[3] = &type metadata for Double;
      a2[4] = &off_1000566F8;
      *a2 = v19;
      return;
    }

    if (a1 != 1)
    {
      v28 = type metadata accessor for ClientAnalyticsEvent(0);
      v35 = sub_100021040(*(v2 + *(v28 + 40)));
      sub_100017000(&unk_10005F710, &unk_10003FF60);
      sub_10001B6A8(&qword_100060050, &unk_10005F710, &unk_10003FF60);
      v29 = BidirectionalCollection<>.joined(separator:)();
      v31 = v30;

      a2[3] = &type metadata for String;
      a2[4] = &off_100056718;
      *a2 = v29;
      a2[1] = v31;
      return;
    }

    v11 = *(*(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 40)) + 16);
    goto LABEL_38;
  }

  if (a1 == 3)
  {
    v21 = objc_opt_self();
    v22 = (v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 24));
    v23 = *v22;
    v24 = v22[1];
    v25 = String._bridgeToObjectiveC()();
    LODWORD(v21) = [v21 clientApplicationIDType:v25];

    type metadata accessor for AVCaptureClientApplicationIDType(0);
    a2[3] = v26;
    a2[4] = &off_100056740;
    *a2 = v21;
    return;
  }

  if (a1 == 4)
  {
    v11 = *(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 32));
LABEL_38:
    a2[3] = &type metadata for Int;
    a2[4] = &off_1000566D8;
    *a2 = v11;
    return;
  }

  v12 = *(v2 + *(type metadata accessor for ClientAnalyticsEvent(0) + 48));
  if (*(v12 + 16))
  {
    v13 = sub_100035E48(0);
    if (v33)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
  a2[3] = &type metadata for Int;
  a2[4] = &off_1000566D8;
  *a2 = 0;
}

unint64_t sub_100027F6C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000013;
    if (a1 != 9)
    {
      v6 = 0xD000000000000023;
    }

    v7 = 0x436C616974696E69;
    v8 = 0x6E6F436C616E6966;
    if (a1 != 7)
    {
      v8 = 0x65446C6C6F726373;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6F697461727564;
    v2 = 0xD000000000000012;
    v3 = 0x527373696D736964;
    if (a1 != 4)
    {
      v3 = 0x736572506C6C7566;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C646E7542707061;
    if (a1 != 1)
    {
      v4 = 0xD000000000000013;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10002814C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1000281F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002827C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_1000282EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100028354@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002C700(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100028384@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100027F6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100028404(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 != 10)
      {
        v19 = *(v2 + *(type metadata accessor for PresentationAnalyticsEvent(0) + 56));
        v20 = &type metadata for Double;
        v21 = &off_1000566F8;
        goto LABEL_18;
      }
    }

    else
    {
      if (a1 == 6)
      {
        v26 = *(v2 + *(type metadata accessor for PresentationAnalyticsEvent(0) + 32));
        *(a2 + 24) = &type metadata for ControlName;
        *(a2 + 32) = &off_1000568F0;
        *a2 = v26;
        return;
      }

      if (a1 == 7)
      {
        v16 = type metadata accessor for PresentationAnalyticsEvent(0);
        v17 = *(v2 + *(v16 + 36));
        *(a2 + 24) = &type metadata for ControlName;
        *(a2 + 32) = &off_1000568F0;
        if (v17 == 11)
        {
          *a2 = *(v2 + *(v16 + 32));
        }

        else
        {
          *a2 = v17;
        }

        return;
      }
    }

    v19 = *(v2 + *(type metadata accessor for PresentationAnalyticsEvent(0) + 52));
    v20 = &type metadata for CGFloat;
    v21 = &off_100056708;
LABEL_18:
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    *a2 = v19;
    return;
  }

  if (a1 <= 2u)
  {
    if (!a1)
    {
      v22 = v7;
      Date.init()();
      v23 = *(type metadata accessor for PresentationAnalyticsEvent(0) + 20);
      Date.timeIntervalSince(_:)();
      v25 = v24;
      (*(v5 + 8))(v9, v22);
      *(a2 + 24) = &type metadata for Double;
      *(a2 + 32) = &off_1000566F8;
      *a2 = v25;
      return;
    }

    if (a1 == 1)
    {
      v10 = objc_opt_self();
      v11 = (v2 + *(type metadata accessor for PresentationAnalyticsEvent(0) + 24));
      v12 = *v11;
      v13 = v11[1];
      v14 = String._bridgeToObjectiveC()();
      LODWORD(v10) = [v10 clientApplicationIDType:v14];

      type metadata accessor for AVCaptureClientApplicationIDType(0);
      *(a2 + 24) = v15;
      *(a2 + 32) = &off_100056740;
      *a2 = v10;
      return;
    }

    v30 = *(type metadata accessor for PresentationAnalyticsEvent(0) + 48);
    goto LABEL_25;
  }

  if (a1 == 3)
  {
    v27 = *(v2 + *(type metadata accessor for PresentationAnalyticsEvent(0) + 28));
    if (v27)
    {
      if (v27 != 1)
      {
        *&v34 = v27;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v28 = 0xE500000000000000;
      v29 = 0x6570697753;
    }

    else
    {
      v28 = 0xE900000000000073;
      v29 = 0x73657250666C6148;
    }

    *(a2 + 24) = &type metadata for String;
    *(a2 + 32) = &off_100056718;
    *a2 = v29;
    *(a2 + 8) = v28;
    return;
  }

  if (a1 != 4)
  {
    v30 = *(type metadata accessor for PresentationAnalyticsEvent(0) + 40);
LABEL_25:
    v31 = *(v2 + v30);
    *(a2 + 24) = &type metadata for Int;
    *(a2 + 32) = &off_1000566D8;
    *a2 = v31;
    return;
  }

  v18 = (v2 + *(type metadata accessor for PresentationAnalyticsEvent(0) + 44));
  if (v18[1])
  {
    *(a2 + 24) = &type metadata for String;
    *(a2 + 32) = &off_100056718;
    *a2 = 0x6E776F6E6B6E55;
    *(a2 + 8) = 0xE700000000000000;
  }

  else
  {
    v32 = *v18;
    v35 = &type metadata for OverlayDismissReason;
    v36 = &off_100056918;
    *&v34 = v32;
    sub_10002C998(&v34, a2);
  }
}

char *sub_1000287C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100017000(&unk_100060060, &qword_1000409F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000288CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100017000(&qword_1000600C8, qword_100040A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000289D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100017000(&unk_100060560, &qword_1000409F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_100028A60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100017000(&qword_100060070, &qword_100040A00);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100028D04(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100017000(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = a2;
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v10;
  return result;
}

uint64_t sub_100028F7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100017000(&qword_1000600B8, &qword_100040A38);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v36 = *v23;
      v24 = *(v23 + 16);
      if ((a2 & 1) == 0)
      {
        v25 = *(v23 + 16);
      }

      v26 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v36;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002920C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100017000(&qword_1000600A8, &unk_100040B70);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100029474(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      v13 = *v12;
      result = static Hasher._hash(seed:_:)();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 8 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = v18 + 24 * v3;
          v20 = (v18 + 24 * v6);
          if (v3 != v6 || v19 >= v20 + 24)
          {
            v9 = *v20;
            *(v19 + 16) = *(v20 + 2);
            *v19 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000295F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100035E48(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100029A18(&qword_100060090, &qword_100040A10);
    result = v17;
    goto LABEL_8;
  }

  sub_100028D04(v14, a3 & 1, &qword_100060090, &qword_100040A10);
  v18 = *v4;
  result = sub_100035E48(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100029738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_100033F48(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100028F7C(v18, a5 & 1);
      v22 = *v6;
      result = sub_100033F48(a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_100029B54();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = a4;
    v27 = (v24[7] + 24 * result);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    v28 = v24[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v24[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v25 = (v24[7] + 24 * result);
  v26 = v25[2];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
}