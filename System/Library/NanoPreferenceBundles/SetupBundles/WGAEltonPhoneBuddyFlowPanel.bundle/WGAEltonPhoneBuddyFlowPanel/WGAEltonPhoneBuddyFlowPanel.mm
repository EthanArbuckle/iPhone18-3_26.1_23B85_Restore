void sub_1758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[2] animationForKey:@"opacity"];
    v5 = [*(a1 + 32) _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "-------Elton phone buddy media player CATransaction completionBlock called animation:%@.", &v6, 0xCu);
    }

    if (v4)
    {
      [v3 _handleFadeOutAnimationDidFinish];
    }
  }

  else
  {
    v4 = [*(a1 + 32) _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "-------Elton phone buddy media player CATransaction completionBlock called strongSelf is nil. Will return.", &v6, 2u);
    }
  }
}

void sub_18E8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(*(a1 + 32) + 16) player];
      LODWORD(v9) = 134217984;
      *(&v9 + 4) = [v4 status];
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view will fade in animation did finish player status is:%ld", &v9, 0xCu);
    }

    v5 = [*(*(a1 + 32) + 16) player];
    v6 = [v5 status];

    if (v6 == &dword_0 + 1)
    {
      [*(*(a1 + 32) + 16) removeAllAnimations];
      LODWORD(v7) = 1.0;
      [*(*(a1 + 32) + 16) setOpacity:v7];
      v8 = [*(*(a1 + 32) + 16) player];
      v9 = *&kCMTimeZero.value;
      epoch = kCMTimeZero.epoch;
      [v8 seekToTime:&v9];

      [*(a1 + 32) _advanceToNextStep];
    }
  }
}

id sub_1DF8(uint64_t a1)
{
  [*(a1 + 32) _startVideoPlayback];
  v2 = *(a1 + 32);

  return [v2 _avQueuePlayerTryToRemoveObserverForKeyPath:@"status"];
}

void sub_2270(uint64_t a1)
{
  v2 = [*(a1 + 32) _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy media player view  _advanceToNextStep", v5, 2u);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 24) == 1)
  {
    v4 = [*(v3 + 16) player];
    [v4 pause];

    [*(a1 + 32) _advanceToNextStep];
  }
}

void sub_277C(id a1)
{
  qword_10F50 = os_log_create("com.apple.WatchGestures", "EltonPhoneBuddyFlowPanelLogMediaPlayer");

  _objc_release_x1();
}

void sub_28F8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v2 _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_5E48(v2, v3, v4);
    }

    objc_end_catch();
    JUMPOUT(0x28C0);
  }

  _Unwind_Resume(exception_object);
}

id sub_3A70(uint64_t a1)
{
  [*(a1 + 32) _prepareUIForVideoReadyToPlay];
  v2 = *(a1 + 32);

  return [v2 _avQueuePlayerTryToRemoveObserverForKeyPath:@"status"];
}

id sub_3AB4(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 _avQueuePlayerTryToRemoveObserverForKeyPath:@"timeControlStatus"];
}

void sub_3CB8(id a1)
{
  qword_10F60 = os_log_create("com.apple.WatchGestures", "EltonPhoneBuddyFlowPanelLog");

  _objc_release_x1();
}

void sub_3DEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v2 _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_5EE4(v3, v4);
    }

    objc_end_catch();
    JUMPOUT(0x3DB8);
  }

  _Unwind_Resume(exception_object);
}

void sub_4304(id a1)
{
  qword_10F70 = os_log_create("com.apple.WatchGestures", "EltonPhoneBuddyFlowPanelLog");

  _objc_release_x1();
}

void sub_5CF4(id a1)
{
  qword_10F80 = os_log_create("com.apple.WatchGestures", "EltonPhoneBuddyFlowPanelLog");

  _objc_release_x1();
}

void sub_5E48(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Elton phone buddy media player view:%@ -- while trying to remove oberver caught exception: %@", &v3, 0x16u);
}

void sub_5EE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Elton phone buddy panel -- while trying to remove observer caught exception: %@", &v2, 0xCu);
}