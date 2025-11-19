void sub_17FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1828(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained player];
    v7 = v6;
    if (v6)
    {
      [v6 currentTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    Seconds = CMTimeGetSeconds(time);

    v27 = v5;
    v9 = [v5 currentLoadedTimeRanges];
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      v15 = &stru_3D458;
      do
      {
        v16 = 0;
        v17 = v15;
        do
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v37 + 1) + 8 * v16);
          memset(time, 0, sizeof(time));
          if (v18)
          {
            [v18 CMTimeRangeValue];
          }

          v36 = time[0];
          v19 = CMTimeGetSeconds(&v36);
          v36 = time[1];
          v20 = CMTimeGetSeconds(&v36);
          v21 = [NSNumber numberWithDouble:v19];
          [v10 addObject:v21];

          v22 = [NSNumber numberWithDouble:v20];
          [v11 addObject:v22];

          v15 = [(__CFString *)v17 stringByAppendingFormat:@"(%f, %f) ", *&v19, *&v20];

          v16 = v16 + 1;
          v17 = v15;
        }

        while (v13 != v16);
        v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = &stru_3D458;
    }

    v23 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time[0].value) = 134218242;
      *(&time[0].value + 4) = Seconds;
      LOWORD(time[0].flags) = 2114;
      *(&time[0].flags + 2) = v15;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "currentTime=%f cachedTimeRanges=%{public}@", time, 0x16u);
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1C60;
    v31[3] = &unk_3C688;
    v5 = v27;
    v32 = v27;
    v24 = v10;
    v33 = v24;
    v25 = v11;
    v34 = v25;
    v35 = v3;
    v26 = objc_retainBlock(v31);
    if (v26)
    {
      if (+[NSThread isMainThread])
      {
        (v26[2])(v26);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1CD8;
        block[3] = &unk_3C6B0;
        v30 = v26;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

void sub_1C60(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 player:*(a1 + 32) loadedTimeRangesDidChange:*(a1 + 40) durations:*(a1 + 48)];

  v3 = objc_retainBlock(*(a1 + 56));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

void sub_1EF0(uint64_t a1)
{
  v1 = (a1 + 32);
  if (([*(a1 + 32) isPlayable] & 1) == 0)
  {
    v2 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_20CFC(v1);
    }
  }
}

void sub_210C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_24DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2524(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained observedTimes];
  [WeakRetained setNeedsToUpdateTimeObservers:{objc_msgSend(v3, "count") != 0}];

  if (a1[4])
  {
    v4 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_recreateCurrentAssetWithRestoreTime: _seekToTime: %{public}@", buf, 0xCu);
    }

    [a1[4] doubleValue];
    v7 = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_26CC;
    v10[3] = &unk_3C750;
    v11 = a1[4];
    v12 = a1[5];
    [WeakRetained _seekToTime:v10 completionHandler:v7];
  }

  else
  {
    v8 = objc_retainBlock(a1[5]);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }
}

void sub_26CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_recreateCurrentAssetWithRestoreTime: _seekToTime to %{public}@ did not finish", &v8, 0xCu);
    }
  }

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2);
  }
}

void sub_27AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAsset:v3];

  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

void sub_2F30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained scrubPausableDispatchAfterGeneration] == *(a1 + 40))
  {
    WeakRetained[14] = 1;
  }
}

void sub_309C(uint64_t a1)
{
  if (*(a1 + 40) != *(*(a1 + 32) + 9))
  {
    v2 = BKAudiobooksStreamingLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 9);
      v4 = *(a1 + 40);
      v6[0] = 67109376;
      v6[1] = v3;
      v7 = 1024;
      v8 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "IsStalling %d -> %d", v6, 0xEu);
    }

    *(*(a1 + 32) + 9) = *(a1 + 40);
    v5 = [*(a1 + 32) delegate];
    [v5 player:*(a1 + 32) stallingStateDidChange:*(a1 + 40)];
  }
}

void sub_32B4(uint64_t a1)
{
  if (*(a1 + 40) != *(*(a1 + 32) + 10))
  {
    v2 = BKAudiobooksStreamingLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 10);
      v4 = *(a1 + 40);
      v6[0] = 67109376;
      v6[1] = v3;
      v7 = 1024;
      v8 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "IsLoadingResource %d -> %d", v6, 0xEu);
    }

    *(*(a1 + 32) + 10) = *(a1 + 40);
    v5 = [*(a1 + 32) delegate];
    [v5 player:*(a1 + 32) loadingResourcesStateDidChange:*(a1 + 40)];
  }
}

void sub_3E44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3ED4;
    block[3] = &unk_3C700;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_3ED4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  v4 = [v2 player];
  LODWORD(v5) = v3;
  [v4 setVolume:v5];

  v6 = *(a1 + 32);

  return [v6 _updateAudioParameters];
}

void sub_3F30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsLoadingResources:0];
}

void sub_3F78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained player];
  v3 = [v2 outputContext];
  v4 = [v3 contextID];
  v5 = [v4 copy];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4060;
  v7[3] = &unk_3C880;
  v7[4] = WeakRetained;
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, v7);
}

id sub_4638(uint64_t a1)
{
  v2 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "onRouteChange: pause", v4, 2u);
  }

  return [*(a1 + 32) pause];
}

void sub_4AA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) accessLog];
    v4 = [v3 events];
    v5 = [v4 lastObject];

    [v5 indicatedBitrate];
    v7 = v6;
    [WeakRetained lastBitrate];
    if (v8 != v7)
    {
      v9 = BKAudiobooksStreamingLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        [WeakRetained lastBitrate];
        *buf = 134218240;
        v21 = v10;
        v22 = 2048;
        v23 = v7;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Bit Rate %.0f -> %.0f.", buf, 0x16u);
      }

      [WeakRetained lastBitrate];
      v12 = v11;
      [WeakRetained delegate];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_4C70;
      v16 = block[3] = &unk_3C8A8;
      v17 = WeakRetained;
      v18 = v12;
      v19 = v7;
      v13 = v16;
      dispatch_async(&_dispatch_main_q, block);
      *&v14 = v7;
      [WeakRetained setLastBitrate:v14];
    }
  }
}

id sub_4C70(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  return [*(a1 + 32) player:*(a1 + 40) bitrateChangedFrom:a2 to:a3];
}

void sub_4DDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 48);
    [*(a1 + 32) pendingCurrentTime];
    if (vabdd_f64(v4, v5) < 0.01)
    {
      [*(a1 + 32) setPendingCurrentTime:1.79769313e308];
    }

    if ([*(a1 + 32) isCurrentTimeValid])
    {
      v6 = [*(a1 + 32) delegate];
      [v6 player:*(a1 + 32) positionDidChange:*(a1 + 48)];
    }
  }

  v7 = objc_retainBlock(*(a1 + 40));
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))(v7, a2);
    v7 = v8;
  }
}

void sub_5168(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_seekToTime to %lf did not finish (setCurrentTime)", &v8, 0xCu);
    }
  }

  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2);
  }
}

void sub_54E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_550C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[19] == *(a1 + 40))
  {
    *(WeakRetained + 13) = 1;
    [WeakRetained _playWithSeekTime:*(WeakRetained + 13) fadeIn:0.0];
    v4 = (v3[19] + 1);
    v3[19] = v4;
    v5 = dispatch_time(0, 200000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_5610;
    v6[3] = &unk_3C7C8;
    objc_copyWeak(v7, (a1 + 32));
    v7[1] = v4;
    dispatch_after(v5, &_dispatch_main_q, v6);
    objc_destroyWeak(v7);
  }
}

void sub_5610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(WeakRetained + 19) == *(a1 + 40))
  {
    WeakRetained[14] = 1;
  }
}

void sub_5660(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_seekToTime to %lf did not finish (_handleScrubPlayPreviewAtTime:completion:)", &v8, 0xCu);
    }
  }

  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2);
  }
}

void sub_6160(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) pendingCurrentTime];
  if (v4 == 1.79769313e308)
  {
    v5 = [*(a1 + 32) player];
    v6 = v5;
    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    [*(a1 + 32) pendingCurrentTime];
    Seconds = v7;
  }

  objc_initWeak(&time, *(a1 + 32));
  v9 = *(a1 + 32);
  v10 = [NSNumber numberWithDouble:Seconds];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_62DC;
  v12[3] = &unk_3C970;
  objc_copyWeak(&v14, &time);
  v11 = v3;
  v13 = v11;
  [v9 _recreateCurrentAssetWithRestoreTime:v10 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&time);
}

void sub_62B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_62DC(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_63B0;
  v5[3] = &unk_3C948;
  objc_copyWeak(&v7, (a1 + 40));
  v8 = a2;
  v6 = *(a1 + 32);
  [WeakRetained _activateSessionWithCompletion:v5];

  objc_destroyWeak(&v7);
}

void sub_63B0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (a2 && WeakRetained && *(a1 + 48) == 1)
  {
    [WeakRetained updateTimeObservers];
    v5 = [v8 player];
    [v8 playbackRate];
    [v5 playImmediatelyAtRate:?];
  }

  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

void sub_6460(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_654C;
  v6[3] = &unk_3C9C0;
  objc_copyWeak(&v8, &location);
  v5 = v3;
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 _activateSessionWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_6530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_654C(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained updateTimeObservers];
    [v5 playFadeInTime];
    if (fabsf(v6) >= 0.01)
    {
      v13 = [v5 player];
      [v13 setRate:0.0];

      v14 = [v5 player];
      [a1[4] playbackRate];
      v16 = v15;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_66B4;
      v18[3] = &unk_3C750;
      v18[4] = v5;
      v19 = a1[5];
      LODWORD(v17) = v16;
      [v14 prerollAtRate:v18 completionHandler:v17];

      goto LABEL_8;
    }

    [v5 playbackRate];
    v8 = v7;
    v9 = [v5 player];
    LODWORD(v10) = v8;
    [v9 setRate:v10];
  }

  v11 = objc_retainBlock(a1[5]);
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
  }

LABEL_8:
}

void sub_66B4(uint64_t a1)
{
  v2 = [*(a1 + 32) player];
  [*(a1 + 32) playbackRate];
  v4 = v3;
  [*(a1 + 32) playFadeInTime];
  CMTimeMakeWithSeconds(&v9, v5, 1000000000);
  LODWORD(v6) = v4;
  [v2 setRate:&v9 withVolumeRampDuration:v6];

  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }
}

uint64_t sub_6754(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) pendingCurrentTime];
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_seekToTime to %lf did not finish (_playWithSeekTime)", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 48);
  return (*(*(a1 + 40) + 16))();
}

void sub_68C4(uint64_t a1, char a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6984;
  block[3] = &unk_3CA10;
  v8 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_6984(uint64_t a1)
{
  if (*(a1 + 48) != 1 || *(a1 + 32))
  {
    v2 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_21020(a1);
    }

    v3 = *(a1 + 48);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_73F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_7418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) outputContextID];
    LODWORD(v3) = [v3 isEqualToString:v4];

    WeakRetained = v6;
    if (v3)
    {
      LODWORD(v5) = *(a1 + 56);
      [v6 _reevaluateInternalVolumeWithContextCanSetVolume:*(a1 + 60) volume:v5];
      WeakRetained = v6;
    }
  }
}

void sub_79B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_79EC(uint64_t a1)
{
  v2 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "observed time: %.1f", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 player:v6 didReachPosition:*(a1 + 40)];
}

void sub_7F40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_7F68(uint64_t a1, CMTime *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _actualRate];
    if (v5 > 0.0)
    {
      v9 = *a2;
      Seconds = CMTimeGetSeconds(&v9);
      [v4 lastPosition];
      if (vabdd_f64(Seconds, v7) >= 0.00999999978)
      {
        [v4 setLastPosition:Seconds];
        v8 = [v4 delegate];
        [v8 player:v4 positionDidChange:Seconds];
      }
    }
  }
}

void sub_8664(id a1)
{
  qword_47918 = objc_opt_new();

  _objc_release_x1();
}

void sub_8820(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained stores];
    v4 = [v3 arrayByAddingObject:*(a1 + 32)];
    [v5 setStores:v4];

    WeakRetained = v5;
  }
}

void sub_89E4(uint64_t a1)
{
  v2 = dispatch_group_create();
  v20 = +[NSMutableArray array];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v4 = [WeakRetained stores];
    if (*(a1 + 64) == 1)
    {
      v5 = [v18 stores];
      v6 = [NSPredicate predicateWithBlock:&stru_3CAF0];
      v7 = [v5 filteredArrayUsingPredicate:v6];

      v4 = v7;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v8)
    {
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          dispatch_group_enter(v2);
          v12 = BKAudiobooksPersistenceLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [*(a1 + 32) assetID];
            v14 = [v11 shortName];
            *buf = 138478083;
            v39 = v13;
            v40 = 2114;
            v41 = v14;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Checking for bookmark on assetID %{private}@ on store %{public}@", buf, 0x16u);
          }

          v15 = *(a1 + 32);
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_8DBC;
          v28[3] = &unk_3CB40;
          objc_copyWeak(&v33, (a1 + 56));
          v29 = v2;
          v30 = *(a1 + 32);
          v31 = v11;
          v32 = v20;
          [v11 bookmarkTimeForAudiobook:v15 completion:v28];

          objc_destroyWeak(&v33);
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v8);
    }

    v16 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_9188;
    block[3] = &unk_3CBA8;
    v22 = v2;
    v23 = *(a1 + 32);
    v24 = v20;
    v25 = v18;
    v17 = *(a1 + 48);
    v26 = *(a1 + 40);
    v27 = v17;
    dispatch_async(v16, block);

    WeakRetained = v18;
  }
}

void sub_8DBC(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8F50;
    block[3] = &unk_3CB18;
    v18 = v7;
    v19 = v8;
    v12 = *(a1 + 40);
    v16 = *(a1 + 48);
    v13 = v16.i64[1];
    v22 = a4;
    v14.i64[0] = *(a1 + 32);
    v14.i64[1] = v12;
    v21 = vextq_s8(v16, v14, 8uLL);
    v20 = vextq_s8(v14, v16, 8uLL);
    dispatch_async(v11, block);
  }

  else
  {
    v15 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "self nil", buf, 2u);
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_8F50(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v7 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) assetID];
      v9 = [*(a1 + 56) shortName];
      v10 = *(a1 + 40);
      *buf = 138478339;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Found bookmark on assetID %{private}@ on store %{public}@ error: %{public}@", buf, 0x20u);
    }

    v11 = *(a1 + 64);
    v2 = [NSNumber numberWithDouble:*(a1 + 80), @"bookmark time"];
    v12 = *(a1 + 32);
    v16[0] = v2;
    v16[1] = v12;
    v15[1] = @"timestamp";
    v15[2] = @"source";
    v13 = [*(a1 + 56) shortName];
    v16[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
    [v11 addObject:v14];
  }

  else
  {
    v2 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 48) assetID];
      v4 = [*(a1 + 56) shortName];
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138478595;
      v18 = v3;
      v19 = 2114;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "No bookmark for assetID %{private}@ on store %{public}@ date: %@ error: %{public}@", buf, 0x2Au);
    }
  }

  dispatch_group_leave(*(a1 + 72));
}

void sub_9188(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_21240(a1, v4);
    }
  }

  v5 = *(*(a1 + 56) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_9298;
  v8[3] = &unk_3C688;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 40);
  v12 = *(a1 + 72);
  dispatch_async(v5, v8);
}

void sub_9298(id *a1)
{
  if ([a1[4] count])
  {
    [a1[4] sortUsingComparator:&stru_3CB80];
    v2 = [a1[4] lastObject];
    objc_opt_class();
    v3 = [v2 objectForKeyedSubscript:@"bookmark time"];
    v4 = BUDynamicCast();
    [v4 doubleValue];
    v6 = v5;

    v7 = [v2 objectForKeyedSubscript:@"timestamp"];
    [a1[5] _rollbackAmountForLastPlayedDate:v7];
    v9 = v8;
    [a1[6] duration];
    if (v6 > v10 + -5.0)
    {
      v11 = BKAudiobooksPersistenceLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [a1[6] assetID];
        v22 = 138412290;
        v23 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "For %@ bookmark time is past our last viable bookmark time. Resetting to zero.", &v22, 0xCu);
      }

      v9 = 0.0;
      v6 = 0.0;
    }

    v13 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [a1[6] assetID];
      v15 = [v2 objectForKeyedSubscript:@"source"];
      v16 = a1[4];
      v22 = 138478851;
      v23 = v14;
      v24 = 2048;
      v25 = v6;
      v26 = 2114;
      v27 = v7;
      v28 = 2114;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "For %{private}@ picking bookmark time %lf dated %{public}@ from source %{public}@.  Whole list of available bookmarks: %{public}@", &v22, 0x34u);
    }

    v17 = objc_retainBlock(a1[7]);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, v7, 0, v6, v9);
    }
  }

  else
  {
    v19 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [a1[6] assetID];
      v22 = 138477827;
      v23 = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "For audiobook %{private}@, cannot find a bookmark time.", &v22, 0xCu);
    }

    v21 = objc_retainBlock(a1[7]);
    v2 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0, 0, 0.0, 0.0);
    }
  }
}

int64_t sub_95A8(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"timestamp"];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"timestamp"];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_9780(uint64_t a1)
{
  v2 = dispatch_group_create();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_9A54;
  v25[4] = sub_9A64;
  v26 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [WeakRetained stores];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v5)
    {
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = *(a1 + 56);
          if (v9 >= [v8 eventThreshold])
          {
            dispatch_group_enter(v2);
            v10 = *(a1 + 64);
            v11 = *(a1 + 32);
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_9A6C;
            v17[3] = &unk_3CC20;
            objc_copyWeak(&v20, (a1 + 48));
            v19 = v25;
            v18 = v2;
            [v8 saveBookmarkTime:v11 audiobook:v17 completion:v10];

            objc_destroyWeak(&v20);
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v5);
    }

    v12 = *(v13 + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_9B8C;
    block[3] = &unk_3CC48;
    v15 = *(a1 + 40);
    v16 = v25;
    dispatch_group_notify(v2, v12, block);

    WeakRetained = v13;
  }

  _Block_object_dispose(v25, 8);
}

uint64_t sub_9A54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_9A6C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9B40;
  block[3] = &unk_3CBF8;
  v10 = v3;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v7 = v3;
  dispatch_async(v5, block);
}

void sub_9B40(void *a1)
{
  v2 = *(a1[6] + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (!v5)
  {
    v4 = a1[4];
  }

  objc_storeStrong(v3, v4);
  v6 = a1[5];

  dispatch_group_leave(v6);
}

void sub_9B8C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 40));
    v2 = v3;
  }
}

void sub_9F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9FB0(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_212F8(v6, v9);
    }
  }

  else
  {
    [WeakRetained saveBookmarkTime:*(a1 + 32) audiobook:5 importance:0 completion:a2];
  }
}

__CFString *NSStringFromBKAudiobookPlayerState(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"Unexpected value %ld", a1];
  }

  else
  {
    v2 = off_3CCB8[a1];
  }

  return v2;
}

void sub_AF70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BKAudiobooksStreamingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Finished fetching decryption key with error: %{public}@", &v11, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    [v8 finishLoadingWithError:v6];
  }

  else
  {
    v9 = [v8 contentInformationRequest];
    [v9 setContentType:AVStreamingKeyDeliveryPersistentContentKeyType];

    v10 = [*(a1 + 32) dataRequest];
    [v10 respondWithData:v5];

    [*(a1 + 32) finishLoading];
  }
}

void sub_B09C(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    [*(v2 + 32) finishLoadingWithError:0];
    v4 = BKAudiobooksStreamingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 reason];
      sub_21370(v5, va, v4);
    }

    objc_end_catch();
    JUMPOUT(0xB060);
  }

  _Unwind_Resume(exception_object);
}

void sub_B2BC(id a1)
{
  v1 = BKAudiobooksNowPlayingAdaptorLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "initializing BKAudiobookNowPlayingAdaptor", v8, 2u);
  }

  v2 = [BKAudiobookNowPlayingAdaptorMediaLibrary alloc];
  v3 = +[BKAudiobookPlayer sharedInstance];
  v4 = [(BKAudiobookNowPlayingAdaptor *)v2 initWithPlayer:v3];

  v5 = qword_47930;
  qword_47930 = v4;
  v6 = v4;

  v7 = +[MPNowPlayingInfoCenter defaultCenter];
  [v7 setPlaybackQueueDataSource:v6];
}

void sub_C194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C1B0(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    a2 = [UIImage imageWithCGImage:a2];
  }

  v5 = [*(a1 + 32) assetID];
  if ([*(a1 + 32) isAudiobookPreview])
  {
    v6 = [*(a1 + 40) nowPlayingAudiobookArtworkForPreviews];

    if (v6)
    {
      v7 = BKAudiobooksNowPlayingAdaptorLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Returning artwork for previewed audiobook.", buf, 2u);
      }

      v8 = *(a1 + 48);
      v9 = [*(a1 + 40) nowPlayingAudiobookArtworkForPreviews];
      (*(v8 + 16))(v8, v9, 0);
    }

    else
    {
      v11 = [*(a1 + 40) artworkCompletionBlocks];

      if (v11)
      {
        v12 = [*(a1 + 40) artworkCompletionBlocks];
        v13 = objc_retainBlock(*(a1 + 48));
        [v12 addObject:v13];
      }

      else
      {
        v12 = objc_retainBlock(*(a1 + 48));
        v13 = [NSMutableArray arrayWithObject:v12];
        [*(a1 + 40) setArtworkCompletionBlocks:v13];
      }

      v9 = BKAudiobooksNowPlayingAdaptorLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "No artwork available for audiobook preview. Fetching artwork.", buf, 2u);
      }
    }
  }

  else if (!a2 && ([*(a1 + 40) genericCoverProvider], (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, v16 = objc_msgSend(v5, "length"), v15, v16))
  {
    v17 = BKAudiobooksNowPlayingAdaptorLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Generating artwork for active audiobook. None available already on the audiobook.", buf, 2u);
    }

    v18 = [WeakRetained genericCoverProvider];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_C4DC;
    v19[3] = &unk_3CD30;
    v20 = *(a1 + 48);
    [v18 fetchCoverForAssetID:v5 size:v19 completion:{*(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    v10 = BKAudiobooksNowPlayingAdaptorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Returning artwork for active audiobook found on the current audiobook.", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_C4DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [UIImage imageWithCGImage:a2];
  v7 = BKAudiobooksNowPlayingAdaptorLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [v6 size];
    v8 = NSStringFromCGSize(v11);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Finished generating artwork for active audiobook (%{public}@)", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

id BKAudiobooksLog()
{
  if (qword_47940 != -1)
  {
    sub_21420();
  }

  v1 = qword_47938;

  return v1;
}

void sub_CF34(id a1)
{
  qword_47938 = os_log_create("com.apple.iBooks", "BKAudiobooks");

  _objc_release_x1();
}

id BKAudiobooksBKAVLog()
{
  if (qword_47950 != -1)
  {
    sub_21434();
  }

  v1 = qword_47948;

  return v1;
}

void sub_CFBC(id a1)
{
  qword_47948 = os_log_create("com.apple.iBooks", "BKAudiobooks.BKAVPlayer");

  _objc_release_x1();
}

id BKAudiobooksSleepTimerLog()
{
  if (qword_47960 != -1)
  {
    sub_21448();
  }

  v1 = qword_47958;

  return v1;
}

void sub_D044(id a1)
{
  qword_47958 = os_log_create("com.apple.iBooks", "BKAudiobooks.sleepTimer");

  _objc_release_x1();
}

id BKAudiobooksMediaRemoteLog()
{
  if (qword_47970 != -1)
  {
    sub_2145C();
  }

  v1 = qword_47968;

  return v1;
}

void sub_D0CC(id a1)
{
  qword_47968 = os_log_create("com.apple.iBooks", "BKAudiobooks.mediaRemote");

  _objc_release_x1();
}

id BKAudiobooksNowPlayingAdaptorLog()
{
  if (qword_47980 != -1)
  {
    sub_21470();
  }

  v1 = qword_47978;

  return v1;
}

void sub_D154(id a1)
{
  qword_47978 = os_log_create("com.apple.iBooks", "BKAudiobooks.nowPlayingAdaptor");

  _objc_release_x1();
}

id BKAudiobooksSkipControllerLog()
{
  if (qword_47990 != -1)
  {
    sub_21484();
  }

  v1 = qword_47988;

  return v1;
}

void sub_D1DC(id a1)
{
  qword_47988 = os_log_create("com.apple.iBooks", "BKAudiobooks.skipController");

  _objc_release_x1();
}

id BKAudiobooksPersistenceLog()
{
  if (qword_479A0 != -1)
  {
    sub_21498();
  }

  v1 = qword_47998;

  return v1;
}

void sub_D264(id a1)
{
  qword_47998 = os_log_create("com.apple.iBooks", "BKAudiobooks.persistence");

  _objc_release_x1();
}

id BKAudiobooksPersistenceCloudKitLog()
{
  if (qword_479B0 != -1)
  {
    sub_214AC();
  }

  v1 = qword_479A8;

  return v1;
}

void sub_D2EC(id a1)
{
  qword_479A8 = os_log_create("com.apple.iBooks", "BKAudiobooks.persistence.cloudkit");

  _objc_release_x1();
}

id BKAudiobooksPersistenceMediaLibraryLocalLog()
{
  if (qword_479C0 != -1)
  {
    sub_214C0();
  }

  v1 = qword_479B8;

  return v1;
}

void sub_D374(id a1)
{
  qword_479B8 = os_log_create("com.apple.iBooks", "BKAudiobooks.persistence.ml.local");

  _objc_release_x1();
}

id BKAudiobooksPersistenceMediaLibraryDAAPLog()
{
  if (qword_479D0 != -1)
  {
    sub_214D4();
  }

  v1 = qword_479C8;

  return v1;
}

void sub_D3FC(id a1)
{
  qword_479C8 = os_log_create("com.apple.iBooks", "BKAudiobooks.persistence.ml.daap");

  _objc_release_x1();
}

id BKBTClassicLog()
{
  if (qword_479E0 != -1)
  {
    sub_214E8();
  }

  v1 = qword_479D8;

  return v1;
}

void sub_D484(id a1)
{
  qword_479D8 = os_log_create("com.apple.iBooks", "BKBTClassic");

  _objc_release_x1();
}

id BKAudiobooksStreamingLog()
{
  if (qword_479F0 != -1)
  {
    sub_214FC();
  }

  v1 = qword_479E8;

  return v1;
}

void sub_D50C(id a1)
{
  qword_479E8 = os_log_create("com.apple.iBooks", "BKAudiobooks.HLSStreaming");

  _objc_release_x1();
}

id BKAudiobooksBundle()
{
  if (qword_47A00 != -1)
  {
    sub_21510();
  }

  v1 = qword_479F8;

  return v1;
}

void sub_D60C(id a1)
{
  qword_479F8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_DA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DA48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UUIDString];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setGuid:v4];

  v6 = BKAudiobooksLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Received GUID for audiobook: %@", &v7, 0xCu);
  }
}

void sub_DCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DCEC(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 4, a2);
  }

  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8);
  }
}

void sub_DE18(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v3[2](v3, [v4 CGImage]);
  }
}

void sub_FA60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _skipTimerFired];
    WeakRetained = v2;
  }
}

void sub_FDF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _seekTimerFired];
    WeakRetained = v2;
  }
}

void sub_108D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10D60(id a1)
{
  v1 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v1 mutableCopy];

  v2 = [NSCharacterSet characterSetWithCharactersInString:@", -"];
  [v5 formUnionWithCharacterSet:v2];

  v3 = [v5 copy];
  v4 = qword_47A08;
  qword_47A08 = v3;
}

void sub_1368C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BKAudiobooksLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_21710(a1, v6, v7);
    }

    v8 = objc_retainBlock(*(a1 + 40));
    v9 = v8;
    if (v8)
    {
      v10 = v8[2];
LABEL_8:
      v10();
    }
  }

  else
  {
    v11 = objc_retainBlock(*(a1 + 40));
    v9 = v11;
    if (v11)
    {
      v10 = v11[2];
      goto LABEL_8;
    }
  }
}

void sub_1382C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BKAudiobooksLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_21828(v6, v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_14380(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_47A18;
  qword_47A18 = v1;

  [qword_47A18 setUnitsStyle:2];
  [qword_47A18 setAllowedUnits:96];
  [qword_47A18 setMaximumUnitCount:2];
  [qword_47A18 setFormattingContext:5];
  v3 = objc_opt_new();
  v4 = qword_47A20;
  qword_47A20 = v3;

  [qword_47A20 setUnitsStyle:2];
  [qword_47A20 setAllowedUnits:128];
  [qword_47A20 setMaximumUnitCount:2];
  v5 = qword_47A20;

  [v5 setFormattingContext:5];
}

void sub_15160(id a1)
{
  qword_47A30 = objc_opt_new();

  _objc_release_x1();
}

id sub_15598(uint64_t a1)
{
  v2 = BKAudiobooksSleepTimerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Sleep timer expired at end of chapter.", &buf, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 timeRangeInTrack];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  buf = v8;
  Seconds = CMTimeGetSeconds(&buf);
  v5 = BKAudiobooksSleepTimerLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (Seconds == 0.0)
  {
    if (v6)
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Next chapter is the first in a track file.  Remembering to pause playback when state returns to Playing", &buf, 2u);
    }

    return [*(a1 + 40) setWaitingForPlayerStatePlayingThenPause:1];
  }

  else
  {
    if (v6)
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Pausing playback", &buf, 2u);
    }

    return [*(a1 + 48) pause];
  }
}

void sub_1646C(id a1)
{
  v1 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v1 mutableCopy];

  v2 = [NSCharacterSet characterSetWithCharactersInString:@", -"];
  [v5 formUnionWithCharacterSet:v2];

  v3 = [v5 copy];
  v4 = qword_47A40;
  qword_47A40 = v3;
}

void sub_178EC(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[BKAudiobookPlayer sharedInstance];
  v2 = [v1 initWithPlayer:v4];
  v3 = qword_47A58;
  qword_47A58 = v2;
}

void sub_18108(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18124(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v3 = BUDynamicCast();
  v4 = [v3 BOOLValue];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSkipBehavior:v4 ^ 1];
}

uint64_t sub_18534(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = [a2 contentItem];
  v7 = [v6 identifier];
  *a4 = [v7 isEqualToString:*(a1 + 32)];

  return *a4;
}

void sub_19694(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_19754(uint64_t a1)
{
  qword_47A68 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1A694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A6C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _addTimeObserversForTrack:*(a1 + 32)];
  [WeakRetained _updateTimeBeforeCurrentTrackWithTrackIndex:*(a1 + 56)];
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1A7A0;
  v5[3] = &unk_3D108;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  [WeakRetained _updatePlayerWithOffsetInTrack:v4 chapterIndex:1 hasTrackChanged:v5 changedArtworkBlock:*(a1 + 40) currentTimeCompletion:v3];
}

id sub_1A7A0(uint64_t a1)
{
  v2 = [*(a1 + 32) hasAlternateArtwork];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    return [v3 artworkForTime:v4];
  }

  else
  {

    return [v3 artwork];
  }
}

void sub_1BB1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendIsScrubbing];
}

void sub_1BC80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendPlaybackRateDidChange];
}

BOOL sub_1BE04(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = *(a1 + 32);
  return v3 == v4 || vabdd_f64(v3, v4) < fabs(v4 * 0.000000999999997);
}

BOOL sub_1BF8C(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = *(a1 + 32);
  return v3 == v4 || vabdd_f64(v3, v4) < fabs(v4 * 0.000000999999997);
}

void sub_1C468(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C484(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureAudioSession];
  [WeakRetained pause];
  v1 = [WeakRetained player];
  [v1 reset];
}

void sub_1C670(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 albumTrackNumber] == *(a1 + 40))
  {
    if (v7)
    {
      [v7 timeRangeInTrack];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    *&time2.value = v14;
    time2.epoch = v15;
    time1 = *(a1 + 48);
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }

    if (v7)
    {
      [v7 timeRangeInTrack];
      *&time1.value = v10;
      time1.epoch = v11;
      [v7 timeRangeInTrack];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      memset(&time1, 0, sizeof(time1));
      memset(v8, 0, sizeof(v8));
    }

    rhs = *&v8[1];
    CMTimeAdd(&time2, &time1, &rhs);
    time1 = *(a1 + 48);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      *a4 = 1;
    }
  }
}

id sub_1E6B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) doubleValue];

  return [v1 artworkForTime:?];
}

void sub_1EE4C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1F000(id *a1)
{
  v2 = [a1[4] assetID];
  v3 = BKAudiobooksPersistenceCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v12 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "bookmarkTimeForAudiobook:completion: querying assetDetailManager on assetID %{private}@", buf, 0xCu);
  }

  v4 = [a1[5] assetDetailManager];
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1F1DC;
    v8[3] = &unk_3D1E8;
    v9 = v2;
    v10 = a1[6];
    [v4 assetDetailForAssetID:v9 completion:v8];

    v5 = v9;
  }

  else
  {
    v6 = BKAudiobooksPersistenceCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_225F0();
    }

    v5 = objc_retainBlock(a1[6]);
    if (v5)
    {
      v7 = [NSError errorWithDomain:@"BKAudiobooksError" code:2 userInfo:0];
      v5[2](v5, 0, v7, 0.0);
    }
  }
}

void sub_1F1DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BKAudiobooksPersistenceCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22664(a1, v6, v7);
    }
  }

  v8 = objc_retainBlock(*(a1 + 40));
  if (v8)
  {
    [v5 bookmarkTime];
    v10 = v9;
    v11 = [v5 datePlaybackTimeUpdated];
    v8[2](v8, v11, v6, v10);
  }
}

void sub_1F4B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BKAudiobooksPersistenceCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22760();
    }

    v8 = objc_retainBlock(*(a1 + 56));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v6);
    }
  }

  else
  {
    v9 = +[NSDate date];
    v10 = BKAudiobooksPersistenceCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      *buf = 138412802;
      v31 = v11;
      v32 = 2112;
      v33 = v9;
      v34 = 2048;
      v35 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AssetDetailManager %@ Audiobook Setting bookmark time [%@ = %.2f].", buf, 0x20u);
    }

    [v5 setBookmarkTime:*(a1 + 64)];
    [v5 setDatePlaybackTimeUpdated:v9];
    [v5 setLastOpenDate:v9];
    [*(a1 + 40) duration];
    v14 = v13;
    v15 = 0.0;
    if (v13 != 0.0)
    {
      v15 = *(a1 + 64) / v13;
    }

    if (v15 < 0.0 || v15 > 1.0)
    {
      v16 = BKAudiobooksPersistenceCloudKitLog();
      v17 = v15;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [v5 bookmarkTime];
        *buf = 134218496;
        v31 = v17;
        v32 = 2048;
        v33 = v23;
        v34 = 2048;
        v35 = v14;
        _os_log_fault_impl(&dword_0, v16, OS_LOG_TYPE_FAULT, "Calculated reading progress out of range %f.  bookmarkTime=%f audiobookDuration=%f", buf, 0x20u);
      }

      BUClamp();
      v15 = v18;
    }

    [v5 readingProgressHighWaterMark];
    if (*&v19 >= v15)
    {
      v20 = *&v19;
    }

    else
    {
      v20 = v15;
    }

    *&v19 = v15;
    [v5 setReadingProgress:v19];
    *&v21 = v20;
    [v5 setReadingProgressHighWaterMark:v21];
    [v5 setReadingPositionLocationUpdateDate:v9];
    v22 = *(a1 + 48);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1F7BC;
    v24[3] = &unk_3D238;
    v25 = *(a1 + 32);
    v27 = *(a1 + 64);
    v28 = v15;
    v29 = v20;
    v26 = *(a1 + 56);
    [v22 setAssetDetail:v5 completion:v24];
  }
}

void sub_1F7BC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = BKAudiobooksPersistenceCloudKitLog();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 60);
      v15 = 138413058;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Successful save of bookmark time for %@ to %lf, readingProgress %f, readingProgressHighWaterMark %f", &v15, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_227D4(a1, v6, v8);
  }

  v13 = objc_retainBlock(*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, v6);
  }
}

void sub_1F918(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1FA18(id a1)
{
  v1 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v4 = [v1 mutableCopy];

  [v4 removeCharactersInString:@"&="];
  v2 = [v4 copy];
  v3 = qword_47A70;
  qword_47A70 = v2;
}

void sub_207C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2080C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20824(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v18 = [v5 objectAtIndexedSubscript:a3];
  [v6 doubleValue];
  v8 = v7;

  v9 = v8 - *(a1 + 64);
  [v18 doubleValue];
  if (v9 >= 0.0)
  {
    if (v9 < *(a1 + 72))
    {
      v14 = *(*(*(a1 + 40) + 8) + 40);
      v15 = [NSNumber numberWithDouble:v9];
      [v14 addObject:v15];

      [*(*(*(a1 + 48) + 8) + 40) addObject:v18];
    }
  }

  else
  {
    v11 = v9 + v10;
    if (v9 + v10 > 0.0)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:&off_3E198];
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v13 = [NSNumber numberWithDouble:v11];
      [v12 addObject:v13];
    }
  }

  v16 = *(*(*(a1 + 56) + 8) + 40);
  v17 = [NSNumber numberWithDouble:v9 + *(a1 + 80)];
  [v16 addObject:v17];
}

void sub_20AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20AF8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 doubleValue];
  v8 = v7;
  v9 = [*(a1 + 32) audiobookDurations];
  v10 = [v9 objectAtIndexedSubscript:a3];
  [v10 doubleValue];
  v12 = v8 + v11;

  v13 = *(a1 + 48);
  if (v13 >= v8 && v13 < v12)
  {
    v15 = [NSNumber numberWithDouble:v12 - v13];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *a4 = 1;
  }
}

void sub_20C7C(id a1)
{
  v1 = +[BKAudiobookNowPlayingAdaptor sharedInstance];
  v2 = +[BKAudiobookMediaRemoteAdaptor startAdaptor];
  v3 = +[BKAudiobookPlayer sharedInstance];
  [v3 setSupportsAlternateArtwork:1];
  [v3 setSecondsToRewindAfterInterruption:3];
}

void sub_20CFC(uint64_t *a1)
{
  v6 = *a1;
  sub_85DC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_20D74()
{
  sub_85E8();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_20DB0(uint64_t *a1, void *a2, NSObject *a3)
{
  v4 = *a1;
  v5 = [a2 currentItem];
  v6 = [v5 errorLog];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "AVPlayerItemStatusFailed: %@. \n%@", &v7, 0x16u);
}

void sub_20E78()
{
  sub_85E8();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_20EB4(uint64_t *a1)
{
  v6 = *a1;
  sub_85DC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_20F2C()
{
  sub_85E8();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_20F68()
{
  sub_85E8();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_20FA4(float *a1)
{
  v6 = *a1;
  sub_85DC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_21020(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_85DC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_21098(void *a1, NSObject *a2)
{
  v4 = [a1 errorDomain];
  v5 = 138543618;
  v6 = v4;
  v7 = 2048;
  v8 = [a1 errorStatusCode];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "assetNetworkError: domain=%{public}@ code=%ld", &v5, 0x16u);
}

void sub_21150()
{
  sub_85E8();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2118C(NSObject *a1)
{
  v2 = [NSNumber numberWithDouble:?];
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "invalid time to observer: %@", &v3, 0xCu);
}

void sub_21240(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 40) assetID];
  v5 = *(a1 + 48);
  v6 = 138478083;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Timed out waiting for bookmark times on assetID %{private}@ bookmarkTimesAvailable=%@", &v6, 0x16u);
}

void sub_212F8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error retrieving bookmark from local store to populate cloud: %{public}@", &v2, 0xCu);
}

void sub_21370(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in loadingRequest finishLoading: %@", buf, 0xCu);
}

void sub_21680(id *a1, NSObject *a2)
{
  v3 = [*a1 persistentID];
  v4 = 134217984;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No chapters in %llu.", &v4, 0xCu);
}

void sub_21710(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) mediaItem];
  v7 = [v6 bk_storeID];
  v8 = [*(a1 + 32) mediaItem];
  v9 = [v8 bk_storePlaylistID];
  v10 = 141559042;
  v11 = 1752392040;
  v12 = 2112;
  v13 = v7;
  v14 = 2160;
  v15 = 1752392040;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Error fetching racGUID for storeID %{mask.hash}@ storePlaylistID %{mask.hash}@: %@", &v10, 0x34u);
}

void sub_21828(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error getting racGUID from HLS playlist: %@", &v2, 0xCu);
}

void sub_21920(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "bk_cloudItems has %lu items and should only have one", &v3, 0xCu);
}

void sub_219AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "failed to resolve chapter from contentItemID %@", &v2, 0xCu);
}

void sub_21AE4()
{
  sub_1EE6C();
  [v0 currentTrackIndex];
  v1 = [sub_1EE78() currentAudiobook];
  v2 = [v1 tracks];
  [v2 count];
  sub_1EE0C();
  sub_1EE24();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_21B94()
{
  sub_1EE6C();
  [v0 currentChapterIndex];
  v1 = [sub_1EE78() currentAudiobook];
  v2 = [v1 chapters];
  [v2 count];
  sub_1EE0C();
  sub_1EE24();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_21C44()
{
  sub_1EE34();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_21CB4()
{
  sub_1EE40();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_21D28()
{
  sub_1EE34();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_21D98()
{
  sub_1EE40();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_21E0C(void *a1)
{
  v6 = [a1 currentAudiobook];
  sub_1EE24();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_21EB4()
{
  sub_1EE40();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_21F30(void *a1)
{
  v1 = [a1 currentAudiobook];
  v2 = [v1 chapters];
  [v2 count];
  sub_1EE24();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_21FEC()
{
  sub_1EE40();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22064()
{
  sub_1EE40();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_220DC()
{
  sub_85E8();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22190(void *a1)
{
  [a1 positionInCurrentChapter];
  sub_1EE40();
  sub_1EE4C(&dword_0, v1, v2, "observer: position = %f", v3, v4, v5, v6, v7);
}

void sub_22208()
{
  sub_1EE34();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22278()
{
  sub_1EE34();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_222E8(void *a1)
{
  v1 = [a1 currentAudiobook];
  sub_1EE34();
  sub_1EE4C(&dword_0, v2, v3, "observer: audiobook = %@", v4, v5, v6, v7, v8);
}

void sub_2236C()
{
  sub_1EE6C();
  [v1 domain];
  objc_claimAutoreleasedReturnValue();
  [sub_1EE78() code];
  sub_1EE0C();
  sub_1EE24();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_22410()
{
  sub_85E8();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2244C()
{
  sub_85E8();
  sub_85DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22488()
{
  sub_1EE6C();
  [v1 domain];
  objc_claimAutoreleasedReturnValue();
  [sub_1EE78() code];
  sub_1EE0C();
  sub_1EE24();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_2256C()
{
  sub_1EE34();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "player:loadedTimeRangesDidChange:durations: - start times and durations counts must be the same: %@, %@", v2, 0x16u);
}

void sub_22664(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138478083;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_1F918(&dword_0, a2, a3, "Error retrieving bookmark time on assetID %{private}@ from CloudKit/BookDataStore: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_227D4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1F918(&dword_0, a2, a3, "Error saving asset details for audiobook %@ time update:%@", *v3, *&v3[8], *&v3[16]);
}

void sub_22864(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to generate assetID for media item %@.", &v2, 0xCu);
}