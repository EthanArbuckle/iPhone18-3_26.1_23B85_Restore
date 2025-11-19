void sub_100136A94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) podcastUuid];
  v4 = [v2 podcastForUuid:v3];

  [v4 resetGoDarkWithReason:4];
  [*(a1 + 32) saveInCurrentBlock];
}

id sub_100136B14(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100136B90;
  v3[3] = &unk_1004DD7D0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 nextManifest:v3];
}

void sub_100136B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    [*(a1 + 32) setManifest:v3 startPlayback:*(a1 + 40) forceLocal:1 reason:14 interactive:0 completion:0];
  }

  else
  {
    if (*(a1 + 41) != 1)
    {
      goto LABEL_8;
    }

    v6 = 0;
    v5 = [MTPlaybackQueueFactory playMyPodcastsWithOrder:0];
    if (v5)
    {
      [*(a1 + 32) setManifest:v5 startPlayback:0 forceLocal:1 reason:1 interactive:0 completion:0];
    }
  }

  v4 = v6;
LABEL_8:
}

void sub_100137304(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Network UPP completed update failed with error %@", &v4, 0xCu);
    }
  }
}

void sub_1001373B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7 | v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013752C;
    v13[3] = &unk_1004D8BB8;
    v18 = a2;
    v14 = *(a1 + 32);
    v15 = v7;
    v11 = v8;
    v12 = *(a1 + 40);
    v16 = v11;
    v17 = v12;
    [IMAVPlayer performOnMainQueue:v13];

    v9 = v14;
  }

  else
  {
    v9 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) episodeStoreId];
      *buf = 134349056;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[PodcastsStatesCoordination] Episode not inserted for episodeStoreId = %{public}lld. Skipping.", buf, 0xCu);
    }
  }
}

void sub_10013752C(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) episodeStoreId];
  v4 = _MTLogCategoryPlayback();
  v5 = v4;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) episodeStoreId];
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v11 = 134349570;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PodcastsStatesCoordination] Updating playerItem with episodeStoreId = %{public}lld with new inserted Implicit Follow, episodeUUID: %@, podcastUUID: %@.", &v11, 0x20u);
    }

    [*(a1 + 32) upgradeToLocalEpisodeBackedItemWithEpisodeUUID:*(a1 + 40) podcastUUID:*(a1 + 48)];
    [*(a1 + 56) beginObservingTranscriptIdentifierChangesForCurrentItem:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 64);
      v10 = [*(a1 + 32) episodeStoreId];
      v11 = 134283777;
      v12 = v9;
      v13 = 2049;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[PodcastsStatesCoordination] Skipping update of playerItem: PodcastsStateCoordinator just inserted an implicitly followed show for episode with adamID = %{private}lld, but the current playerItem holds an episodeStoreId = %{private}lld.", &v11, 0x16u);
    }
  }
}

void sub_100137688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategoryPlayback();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "Network UPP update failed with error %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) episodeStoreId];
    v10 = 134283521;
    v11 = v9;
    v6 = "Sent playback position to MAPI for episode: %{private}lld";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void sub_100137950(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v4 = [*(a1 + 32) transcriptIdentifier];
    v5 = [v3 transcriptIdentifier];
    if (v4 == v5)
    {
LABEL_7:

      goto LABEL_8;
    }

    v6 = [v3 transcriptIdentifier];
    v7 = [v6 isNotEmpty];

    if (v7)
    {
      v8 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v3 title];
        v10 = [v3 transcriptIdentifier];
        v12 = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating currentItem for episode entitled %@ with transcriptIdentifier %@", &v12, 0x16u);
      }

      v11 = *(a1 + 32);
      v4 = [v3 transcriptIdentifier];
      v5 = [v3 transcriptProvider];
      [v11 updateTranscriptInformation:v4 transcriptSource:v5];
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_100137FB4(uint64_t a1)
{
  v4 = [*(a1 + 32) player];
  v2 = [v4 manifest];
  v3 = [v2 activity];
  [*(a1 + 32) setCurrentActivity:v3];
}

void sub_100138430(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = [*(a1 + 32) episodeForPlayerItem:*(a1 + 40)];
  if (*(a1 + 81) == 1)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) previousPlayingEpisodeUuid];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 56) setPreviousPlayingEpisodeUuid:*(a1 + 48)];
      +[NSDate timeIntervalSinceReferenceDate];
      [v3 setLastDatePlayed:?];
      v6 = [v3 assetURL];

      if (!v6)
      {
        v7 = +[MTStoreReportingController sharedInstance];
        v8 = [v3 dictionaryRepresentation];
        v9 = [*(a1 + 56) userManifest];
        [v7 reportWithType:2 userInfo:v8 location:@"epst" reason:{objc_msgSend(v9, "playReason")}];
      }

      v2 = 1;
    }
  }

  v10 = v2 | [*(a1 + 56) updateEpisode:v3 andPlayerItem:*(a1 + 40) withElapsedTime:0 andDuration:*(a1 + 64) onMediaItemWillChange:*(a1 + 72)];
  if (*(a1 + 72) > 0.0)
  {
    [v3 duration];
    if (v11 != *(a1 + 72))
    {
      [v3 setDuration:?];
      [*(a1 + 40) setDuration:*(a1 + 72)];
      v10 = 1;
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 56) lastPlaybackSaveTime];
  if (Current - v13 > 15.0 || v10 != 0)
  {
    v15 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "updateEpisodeForPlayerUpdateForceSave saving", v16, 2u);
    }

    [*(a1 + 32) saveInCurrentBlock];
    [*(a1 + 56) setLastPlaybackSaveTime:CFAbsoluteTimeGetCurrent()];
  }
}

void sub_1001389C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) episodeUuid];
  v4 = [v2 episodeForUuid:v3];

  if (v4)
  {
    [*(a1 + 32) saveInCurrentBlock];
  }
}

void sub_100138A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) episodeUuid];
  v6 = [v2 episodeForUuid:v3];

  v4 = [v6 podcast];
  v5 = v4;
  if (v4)
  {
    [v4 resetGoDarkWithReason:4];
    [*(a1 + 32) saveInCurrentBlock];
  }
}

void sub_100138BC0(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) bestUrl];
  [v3 openURL:v2 options:&__NSDictionary0__struct completionHandler:0];
}

uint64_t sub_100138E4C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _performAfterPlay:*(a1 + 40) playbackStarted:a2 == 0];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

id sub_1001390BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) isInteractive];

  return [v1 presentNowPlayingAnimated:v2];
}

void sub_100139818(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 mediaRemotePlayerPath];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

void sub_100139E14(uint64_t a1)
{
  v2 = [*(a1 + 32) manifest];
  v3 = [*(a1 + 40) _validatePlaybackRequest:*(a1 + 32)];
  if (v3 == 11)
  {
    v4 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to setPlaybackQueue because we need an internet connection.", v16, 2u);
    }

    v5 = *(a1 + 32);
    v6 = 11;
  }

  else
  {
    v7 = v3;
    v8 = [*(a1 + 32) dryRun];
    v5 = *(a1 + 32);
    if (!v8)
    {
      v9 = [v5 context];
      v10 = [v9 playbackIsUserRequested];

      if (v10)
      {
        v11 = +[MTIntentDonationUtil sharedInstance];
        v12 = [*(a1 + 32) context];
        [v11 donateManifestCurrentItem:v2 playReason:{objc_msgSend(v12, "source")}];
      }

      if (v7 == 1)
      {
        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) manifest];
        LODWORD(v13) = [v13 _openExternalItemIfNeededForManifest:v14];

        if (!v13)
        {
          if (os_feature_enabled_red_sun())
          {
            v15 = [*(a1 + 32) context];
            [v15 setUpNextQueueIntent:1];
          }

          else if ([*(a1 + 40) _promptToClearUpNextIfNeededForRequest:*(a1 + 32)])
          {
            goto LABEL_14;
          }

          [*(a1 + 40) _setPlaybackQueue:*(a1 + 32)];
          goto LABEL_14;
        }

        v7 = 7;
      }

      v5 = *(a1 + 32);
    }

    v6 = v7;
  }

  [v5 finishWithStatus:v6];
LABEL_14:
}

void sub_10013A2D4(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = [*(a1 + 32) context];
    if ([v7 isInteractive])
    {
      v3 = [*(a1 + 32) context];
      v4 = [v3 upNextQueueIntent];

      if (!v4)
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);

        [v5 _showGenericPromptToClearUpNextWithRequest:v6];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10013A674(uint64_t a1)
{
  if (([*(a1 + 32) suppressMetrics] & 1) == 0)
  {
    v16[0] = @"interactive";
    v2 = *(a1 + 40);
    v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 48) isInteractive]);
    v17[0] = v3;
    v16[1] = @"shouldStart";
    v4 = [NSNumber numberWithBool:*(a1 + 80)];
    v17[1] = v4;
    v16[2] = @"play_source";
    v5 = [MTStoreReportingController reportingStringForPlayReason:*(a1 + 72)];
    v17[2] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    [IMMetrics recordUserAction:@"play_manifest" dataSource:v2 withData:v6];
  }

  v7 = [*(a1 + 32) context];
  v8 = [v7 upNextQueueIntent] == 2;

  if (v8)
  {
    v9 = [*(a1 + 56) upNextController];
    [v9 clear];
  }

  if (*(a1 + 80) == 1)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10013A910;
    v12[3] = &unk_1004DA130;
    objc_copyWeak(&v15, (a1 + 64));
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    [IMAVPlayer performOnMainQueue:v12];

    objc_destroyWeak(&v15);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    objc_sync_enter(WeakRetained);
    [*(a1 + 32) finishWithStatus:1];
    objc_sync_exit(WeakRetained);
  }

  return kdebug_trace();
}

void sub_10013A910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013A9E0;
  v4[3] = &unk_1004DD8B8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  objc_copyWeak(&v6, (a1 + 48));
  [WeakRetained playWithContext:v3 completion:v4];

  objc_destroyWeak(&v6);
}

void sub_10013A9E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Playback request failed because playback failed to start", buf, 2u);
    }

    [*(a1 + 32) finishWithStatus:5];
  }

  else
  {
    obj = objc_loadWeakRetained((a1 + 40));
    objc_sync_enter(obj);
    [*(a1 + 32) finishWithStatus:1];
    objc_sync_exit(obj);
  }
}

void sub_10013AC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013AC84(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10013B2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_10013B310(id a1)
{
  v1 = +[MTEpisodeUnavailableUtil sharedInstance];
  [v1 showDialogForReason:1 podcastTitle:0 completion:0];
}

void sub_10013B364(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) reasonForNotPlayable];
  v5 = [*(a1 + 32) podcast];
  v2 = [v5 title];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10013B3E0(uint64_t a1)
{
  v2 = +[MTEpisodeUnavailableUtil sharedInstance];
  [v2 showDialogForReason:*(*(*(a1 + 32) + 8) + 24) podcastTitle:*(*(*(a1 + 40) + 8) + 40) completion:0];
}

void sub_10013B588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013B5A0(uint64_t a1)
{
  result = [*(a1 + 32) isExternalType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10013B82C(uint64_t a1)
{
  v3 = [*(a1 + 32) _alertControllerForClearingOrKeepingUpNextWithRequest:*(a1 + 40)];
  [v3 setTitle:*(a1 + 48)];
  [v3 setMessage:*(a1 + 56)];
  v2 = +[UIViewController mt_rootViewController];
  [v2 presentViewController:v3 animated:1 completion:0];
}

void sub_10013BA3C(uint64_t a1)
{
  v3 = [*(a1 + 32) _alertControllerForClearingOrKeepingUpNextWithRequest:*(a1 + 40)];
  [v3 setTitle:*(a1 + 48)];
  [v3 setMessage:*(a1 + 56)];
  v2 = +[UIViewController mt_rootViewController];
  [v2 presentViewController:v3 animated:1 completion:0];
}

void sub_10013BD8C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 setUpNextQueueIntent:1];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013BE4C;
  v5[3] = &unk_1004D8798;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  [IMAVPlayer performOnMainQueue:v5];
}

void sub_10013BE58(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 setUpNextQueueIntent:2];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013BF18;
  v5[3] = &unk_1004D8798;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  [IMAVPlayer performOnMainQueue:v5];
}

uint64_t sub_10013BFF8(uint64_t a1)
{
  [*(a1 + 32) setShouldFindSomethingToPlay:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10013C2EC(uint64_t a1)
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013C49C;
  v15[3] = &unk_1004D8358;
  v15[4] = *(a1 + 32);
  v2 = objc_retainBlock(v15);
  v3 = [*(a1 + 32) player];
  v4 = [v3 manifest];

  if (v4)
  {
    (v2[2])(v2);
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(a1 + 32);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10013C4DC;
      v10[3] = &unk_1004DD950;
      v7 = v5;
      v8 = *(a1 + 32);
      v11 = v7;
      v12 = v8;
      v13 = v2;
      [v6 restoreFromUserActivity:v7 startPlayback:0 reason:1 interactive:0 completion:v10];
    }

    else
    {
      v9 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restoration: No user activity found on disk", buf, 2u);
      }

      [*(a1 + 32) _restoreDefaultManifestIfNeededWithCompletion:v2];
    }
  }
}

id sub_10013C49C(uint64_t a1)
{
  [*(a1 + 32) setPlayerManifestRestored:1];
  v2 = *(a1 + 32);

  return [v2 _invokeRestorationCompletions];
}

void sub_10013C4DC(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"MTCompositeManifestIsPlayingFromUpNext"];

  if ([v3 BOOLValue])
  {
    v4 = [*(a1 + 40) upNextController];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [*(a1 + 40) compositeManifest];
      [v6 next];
    }
  }

  v7 = [*(a1 + 40) player];
  v8 = [v7 manifest];

  v9 = _MTLogCategoryPlayback();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v13 = 0;
      v11 = "Restoration: Restored manifest from user activity";
      v12 = &v13;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }
  }

  else if (v10)
  {
    *buf = 0;
    v11 = "Restoration: No manifest restored from user activity data";
    v12 = buf;
    goto LABEL_9;
  }

  [*(a1 + 40) _restoreDefaultManifestIfNeededWithCompletion:*(a1 + 48)];
}

void sub_10013C698(uint64_t a1)
{
  v2 = [*(a1 + 32) restorationCompletions];
  v3 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = [v2 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Finished restoring manifest. Will call %lu completions", buf, 0xCu);
  }

  v4 = objc_opt_new();
  [*(a1 + 32) setRestorationCompletions:v4];

  [*(a1 + 32) setIsManifestRestorationOngoing:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10013C7F8;
  v6[3] = &unk_1004D8358;
  v7 = v2;
  v5 = v2;
  [IMAVPlayer performOnMainQueue:v6];
}

void sub_10013C7F8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v8 + 1) + 8 * v5) + 16))();
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "All completions called", v7, 2u);
  }
}

uint64_t sub_10013CA7C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013CBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  if (a2 == 1)
  {
    v22 = objc_begin_catch(a1);
    if (v18)
    {
      (*(v18 + 16))(v18, 0);
    }

    objc_end_catch();
    JUMPOUT(0x10013CB90);
  }

  _Unwind_Resume(a1);
}

void sub_10013CC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained restoreFromUserActivity:*(a1 + 32) withManifest:v3 startPlayback:*(a1 + 64) reason:*(a1 + 56) interactive:*(a1 + 65) completion:*(a1 + 40)];
}

void sub_10013CDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10013CDEC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 64) == 2)
    {
      [IMMetrics recordUserAction:@"handoff_restore_activity" dataSource:?];
      [*(a1 + 40) getContinuationStreamsWithCompletionHandler:&stru_1004DD9B8];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = *(a1 + 32);
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    v6 = *(a1 + 73);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013CF84;
    v9[3] = &unk_1004DD9E0;
    objc_copyWeak(&v12, (a1 + 56));
    v13 = *(a1 + 72);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    [WeakRetained setManifest:v3 startPlayback:v4 forceLocal:1 reason:v5 interactive:v6 completion:v9];

    objc_destroyWeak(&v12);
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

void sub_10013CF84(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2 == 1 && *(a1 + 56) == 1)
  {
    [*(a1 + 32) currentTime];
    v5 = v4;
    v6 = [WeakRetained player];
    [v6 setCurrentTime:v5];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2 == 1);
  }
}

void sub_10013D344(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [objc_opt_class() _activityRestorationPath];
  [v2 removeItemAtURL:v3 error:0];

  v4 = *(a1 + 40);
  v9 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to archive activity with error %@", buf, 0xCu);
    }
  }

  v8 = [objc_opt_class() _activityRestorationPath];
  [v5 writeToURL:v8 atomically:1];
}

void sub_10013DA24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error resolving remote playerPath: %@", &v7, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) _sendMediaRemoteCommand:*(a1 + 48) toPlayer:a2 options:*(a1 + 40)];
  }
}

void sub_10013DC10(id a1, unsigned int a2, __CFArray *a3)
{
  if (a2)
  {
    v4 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error sending MediaRemote command to player: %d", v5, 8u);
    }
  }
}

void sub_10013E3F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 userId];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1004F3018;
    }

    [*(a1 + 32) setObject:v9 forKeyedSubscript:@"userId"];

    v10 = [v5 clientId];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1004F3018;
    }

    [*(a1 + 32) setObject:v12 forKeyedSubscript:@"clientId"];
  }

  else
  {
    v11 = _MTLogCategoryMetrics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v6 description];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch AnalyticsUserIdentifier from AMS for play event with error %@", &v14, 0xCu);
    }
  }

  [IMMetrics recordEvent:@"play" dataSource:*(a1 + 40) data:*(a1 + 32) topic:@"xp_amp_podcasts_paf"];
}

void sub_10013E714(uint64_t a1)
{
  v2 = [*(a1 + 32) accessLog];
  v3 = [*(a1 + 32) errorLog];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) episodeUuid];
  v6 = [v4 episodeForUuid:v5];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v2 events];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 56) recordMetricsEventForAccessLog:*(*(&v21 + 1) + 8 * v11) playerItem:*(a1 + 48)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v3 events];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(a1 + 56) recordMetricsEventForErrorLog:*(*(&v17 + 1) + 8 * v16) withEpisode:v6];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

void sub_10013EDF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) episodeUuid];
  v9 = [v2 episodeForUuid:v3];

  v4 = [*(a1 + 48) compositeManifest];
  v5 = [v4 metricsAdditionalData];
  v6 = [v5 mutableCopy];

  v7 = [*(a1 + 48) player];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isPlaybackRequested]);
  [v6 setObject:v8 forKeyedSubscript:@"isPlaying"];

  [v6 setObject:*(a1 + 56) forKeyedSubscript:@"manifest"];
  [IMMetrics recordUserAction:@"change_track" dataSource:v9 withData:v6];
}

void sub_100140454(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = +[NSNull null];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
  }
}

void sub_100140A1C(uint64_t a1)
{
  v2 = +[MTDB sharedInstance];
  v8 = [v2 playbackContext];

  v3 = [NSFetchedResultsController alloc];
  v4 = [*(a1 + 32) fetchRequest];
  v5 = [v3 initWithFetchRequest:v4 managedObjectContext:v8 sectionNameKeyPath:0 cacheName:0];
  [*(a1 + 32) setFrc:v5];

  v6 = *(a1 + 32);
  v7 = [v6 frc];
  [v7 setDelegate:v6];

  [*(a1 + 32) _refetch:*(a1 + 40)];
}

void sub_100140C18(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) predicate];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 predicate];
    v5 = [v3 _augmentPredicate:v4];
    v6 = [*(a1 + 32) fetchRequest];
    [v6 setPredicate:v5];
  }

  v7 = [*(a1 + 32) frc];
  [v7 performFetch:0];

  v8 = [*(a1 + 32) frc];
  v9 = [v8 fetchedObjects];

  [*(a1 + 32) _processResults:v9];
  v10 = [v9 valueForKey:kEpisodeUuid];
  v11 = [v9 valueForKey:kObjectID];
  v12 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10];

  kdebug_trace();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100140E34;
  v16[3] = &unk_1004D8770;
  v13 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = v10;
  v18 = v12;
  v19 = v13;
  v14 = v12;
  v15 = v10;
  [IMAVPlayer performOnMainQueue:v16];
}

uint64_t sub_100140E34(uint64_t a1)
{
  [*(a1 + 32) _frcDidChangeResults:*(a1 + 40) uuidToManagedObjectIDMap:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001418EC(uint64_t a1)
{
  v2 = [[MTAllPropertyChangesQueryObserver alloc] initWithEntityName:*(a1 + 40) predicate:*(a1 + 48)];
  [*(a1 + 32) setAllPropertyChangeObserver:v2];

  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) allPropertyChangeObserver];
  [v3 startObserving];

  v4 = [*(a1 + 32) allPropertyChangeObserver];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100141A0C;
  v6[3] = &unk_1004DC608;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addResultsChangedHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_1001419E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100141A0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _propertyDidChange];
}

void sub_10014219C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_1001421D0(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:kEpisodeUuid];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1001429AC(id a1)
{
  v1 = sub_1000D0654();
  v2 = qword_100583D50;
  qword_100583D50 = v1;
}

uint64_t sub_100142D38(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100142D50(uint64_t a1)
{
  v2 = objc_alloc_init(ICCloudClient);
  v3 = [*(a1 + 32) workQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100142E20;
  v6[3] = &unk_1004DDB28;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v5 isAuthenticatedWithQueue:v3 completionHandler:v6];
}

uint64_t sub_100142E20(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  *(*(a1 + 32) + 8) = a2;
  objc_sync_exit(v4);

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

uint64_t sub_1001435A0(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (a3 | a2) == 0);
  }

  return result;
}

void sub_100143910(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to set playback queue: MediaRemote command failed with MRSendCommandError: %ld", &v10, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, 2, a2);
    }
  }

  else
  {
    v7 = [a3 firstObject];
    v8 = [v7 unsignedIntValue];
    if (v8)
    {
      v9 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set playback queue: MediaRemote command failed with MRMediaRemoteCommandHandlerStatus: %ld", &v10, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100143E2C(uint64_t a1)
{
  if ([*(a1 + 32) visible])
  {
    v2 = [*(a1 + 32) vc];
    v3 = [v2 view];

    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    [*(a1 + 32) setSpinner:v4];

    v5 = [*(a1 + 32) spinner];
    [v5 startAnimating];

    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [*(a1 + 32) setLabel:v6];

    v7 = [*(a1 + 32) label];
    v8 = [UIFont systemFontOfSize:16.0];
    [v7 setFont:v8];

    v9 = [*(a1 + 32) label];
    v10 = +[UIColor secondaryLabelColor];
    [v9 setTextColor:v10];

    v11 = [*(a1 + 32) label];
    [v11 setTextAlignment:1];

    v12 = [*(a1 + 32) label];
    [v12 setNumberOfLines:0];

    v13 = [*(a1 + 32) label];
    v14 = +[UIColor clearColor];
    [v13 setBackgroundColor:v14];

    v15 = [*(a1 + 32) label];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"UPDATING_LIBRARY" value:&stru_1004F3018 table:0];
    [v15 setText:v17];

    v18 = [*(a1 + 32) spinner];
    [v3 addSubview:v18];

    v19 = [*(a1 + 32) label];
    [v3 addSubview:v19];

    v20 = [*(a1 + 32) view];
    [v20 setNeedsLayout];

    v21 = [*(a1 + 32) view];
    [v21 layoutIfNeeded];

    v22 = [*(a1 + 32) spinner];
    [v22 setAlpha:0.0];

    v23 = [*(a1 + 32) label];
    [v23 setAlpha:0.0];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100144150;
    v24[3] = &unk_1004D8358;
    v24[4] = *(a1 + 32);
    [UIView animateWithDuration:v24 animations:0.2];
  }
}

void sub_100144150(uint64_t a1)
{
  v2 = [*(a1 + 32) spinner];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) label];
  [v3 setAlpha:1.0];
}

void sub_1001450F4(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 setAdjustContentOffsetForRefreshControlAsNeeded:0];
}

void sub_10014513C(uint64_t a1)
{
  v2 = [*(a1 + 32) refreshControl];
  v3 = [v2 isRefreshing];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) refreshControl];
    [v4 beginRefreshing];

    v5 = [*(a1 + 32) refreshControl];
    [v5 endRefreshing];
  }
}

void sub_100145AE8(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [objc_opt_class() defaultsKey];
  v7 = [v2 objectForKey:v3];

  v4 = [*(a1 + 32) selectedUuid];
  if (v7 == v4)
  {
  }

  else
  {
    v5 = [*(a1 + 32) selectedUuid];
    v6 = [v7 isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      [*(a1 + 32) restoreSelection];
    }
  }
}

void sub_10014629C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 description];
  [v4 setValue:v6 forKey:v5];
}

CGFloat sub_100146F00(int a1, uint64_t a2, uint64_t a3, CGFloat MaxX, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12)
{
  v20 = MaxX;
  if (((a2 & 0xFFFFFFFFFFFFFFFDLL) == 1) != ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1))
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
          goto LABEL_17;
        }

        if ((a1 & 1) == 0)
        {
LABEL_6:
          v29.origin.x = a8;
          v29.origin.y = a9;
          v29.size.width = a10;
          v29.size.height = a11;
          MaxX = CGRectGetMaxX(v29);
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v32.origin.x = a8;
      v32.origin.y = a9;
      v32.size.width = a10;
      v32.size.height = a11;
      MaxX = CGRectGetMaxY(v32);
    }

    else
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_17;
        }

        if (a1)
        {
          goto LABEL_6;
        }

LABEL_14:
        v30.origin.x = a8;
        v30.origin.y = a9;
        v30.size.width = a10;
        v30.size.height = a11;
        MaxX = CGRectGetMinX(v30);
        goto LABEL_17;
      }

      v31.origin.x = a8;
      v31.origin.y = a9;
      v31.size.width = a10;
      v31.size.height = a11;
      MaxX = CGRectGetMinY(v31);
    }

LABEL_17:
    v26 = MaxX + a12;
    v33.origin.x = v20;
    v33.origin.y = a5;
    v33.size.width = a6;
    v33.size.height = a7;
    CGRectGetMinY(v33);
    v34.origin.x = v20;
    v34.origin.y = a5;
    v34.size.width = a6;
    v34.size.height = a7;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = v20;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    Width = CGRectGetWidth(v35);
    v36.origin.x = v20;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    CGRectGetHeight(v36);
    if (a2 > 1)
    {
      if (a2 == 3)
      {
        if (a1)
        {
          return v26;
        }

        else
        {
          return v26 - Width;
        }
      }
    }

    else if (a2 == 1)
    {
      if (a1)
      {
        return v26 - Width;
      }

      else
      {
        return v26;
      }
    }

    return MinX;
  }

  v23 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Incompatible Edges", v28, 2u);
  }

  return v20;
}

void sub_1001475DC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100583D88;
  qword_100583D88 = v1;

  [qword_100583D88 setDateStyle:0];
  v3 = qword_100583D88;

  [v3 setTimeStyle:1];
}

void sub_1001477DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseForMediaRemoteStatus:a2 error:a3];
    (*(v3 + 16))(v3, v4);
  }
}

void sub_10014860C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100148628(void *a1)
{
  v2 = a1[4];
  v3 = kMTEpisodeEntityName;
  v4 = +[MTEpisode predicateForListenNow];
  v9 = [v2 objectsInEntity:v3 predicate:v4 sortDescriptors:a1[5] returnsObjectsAsFaults:0 limit:1];

  v5 = [v9 firstObject];
  v6 = [v5 uuid];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100148974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100148994(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v4 = [v2 hidden];
    v3 = v5;
  }

  else
  {
    v4 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
}

void sub_100148C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100148C40(uint64_t a1)
{
  v6 = [*(a1 + 32) playlistForUuid:*(a1 + 40)];
  v2 = [v6 nextEpisode];
  v3 = [v2 uuid];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100149324(uint64_t a1)
{
  v5 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [v5 podcastUuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100149390(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v3 = *(a1 + 56);
  if (v3 > 4)
  {
    if (v3 == 5)
    {
      v4 = *(*(a1 + 48) + 8);
      v5 = 9;
      goto LABEL_13;
    }

    if (v3 == 6)
    {
      v11 = v2;
      v6 = [v2 podcast];
      v7 = [v6 playbackNewestToOldest];

      if (v7)
      {
        v8 = 11;
      }

      else
      {
        v8 = 12;
      }

      *(*(*(a1 + 48) + 8) + 24) = v8;
      v2 = v11;
      goto LABEL_16;
    }
  }

  else if (v3 == 1 || v3 == 4)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = 6;
LABEL_13:
    *(v4 + 24) = v5;
    goto LABEL_16;
  }

  v12 = v2;
  v9 = [v2 isInUserEpisodes] == 0;
  v2 = v12;
  v10 = 6;
  if (!v9)
  {
    v10 = 9;
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;
LABEL_16:
}

void sub_1001497C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001497DC(uint64_t a1)
{
  v4 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if ([v4 hidden])
  {
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

void sub_1001499CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001499E4(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v3 = *(a1 + 56);
  v6 = v2;
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 65))
    {
      [v2 newestUserEpisodeExcludingExplicit:v3];
    }

    else
    {
      [v2 oldestUserEpisodeExcludingExplicit:v3];
    }
  }

  else if (*(a1 + 65))
  {
    [v2 newestEpisodeExcludingUuid:0 excludeExplicit:v3];
  }

  else
  {
    [v2 oldestEpisodeExcludingExplicit:v3];
  }
  v4 = ;
  v5 = v4;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
}

void sub_100149BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100149BE0(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10014A000(id a1)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v4 count:5];
  v2 = [NSSet setWithArray:v1, v4, v5, v6, v7];
  v3 = qword_100583DA0;
  qword_100583DA0 = v2;
}

void sub_10014B0EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setBool:a2 forKey:kMTImageProviderMigrationHasOccurred];
  v6 = _MTLogCategoryArtworkDownload();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ImageProvider Migration Complete", &v8, 2u);
    }

    [*(a1 + 40) _removeImageStoreContent];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to complete library artwork migration to image provider: %@", &v8, 0xCu);
    }
  }
}

void sub_10014B4AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = kMTPodcastPlaylistSettingsEntityName;
  v3 = +[NSPredicate truePredicate];
  v4 = [v1 objectsInEntity:v2 predicate:v3 sortDescriptors:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 latestEpisodeDate];
        [v10 setLatestEpisodeAvailabilityDate:?];
        [v10 oldestEpisodeDate];
        [v10 setEarliestEpisodeAvailabilityDate:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void sub_10014B6A4(uint64_t a1)
{
  v13[0] = @"PlaylistOnTheGo";
  v13[1] = @"PlaylistMostRecent";
  v13[2] = @"PlaylistAllUnplayed";
  [NSArray arrayWithObjects:v13 count:3];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) playlistForUuid:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 setIsUngroupedList:1];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10014B8E8(uint64_t a1)
{
  v9 = [*(a1 + 32) playlistForUuid:@"PlaylistOnTheGo"];
  v2 = +[MTLibrary sharedInstance];
  [v2 deletePlaylist:v9];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"All Unplayed" value:&stru_1004F3018 table:0];

  v5 = [*(a1 + 32) playlistForUuid:@"PlaylistAllUnplayed"];
  [*(a1 + 40) deleteOrUpdatePlaylist:v5 ifIsDefault:{objc_msgSend(*(a1 + 40), "isDefaultSettingsForPlaylist:title:episodesToShow:showPlayedEpisodes:includeAllPodcasts:", v5, v4, 0, 0, 1)}];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MOST_RECENT_PLURAL" value:&stru_1004F3018 table:0];

  v8 = [*(a1 + 32) playlistForUuid:@"PlaylistMostRecent"];
  [*(a1 + 40) deleteOrUpdatePlaylist:v8 ifIsDefault:{objc_msgSend(*(a1 + 40), "isDefaultSettingsForPlaylist:title:episodesToShow:showPlayedEpisodes:includeAllPodcasts:", v8, v7, 1, 1, 1)}];
}

void sub_10014C234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014C24C(uint64_t a1)
{
  v2 = [MTEpisode predicateForPodcastIsSubscribed:0];
  v3 = +[MTEpisode predicateForBookmarkedEpisodes];
  v4 = [MTEpisode predicateForDownloaded:1 excludeHidden:0];
  v5 = [v3 OR:v4];
  v6 = [v2 AND:v5];

  v7 = [NSFetchRequest alloc];
  v8 = [v7 initWithEntityName:kMTEpisodeEntityName];
  [v8 setPredicate:v6];
  v9 = [*(a1 + 32) countForFetchRequest:v8 error:0];
  *(*(*(a1 + 40) + 8) + 24) = v9 > 0;
  v10 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v12 = 134218240;
    v13 = v9;
    v14 = 1024;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) migrateShowListToggle: There are %li library episodes, setting flag to %i", &v12, 0x12u);
  }
}

void sub_10014C5B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[MTPodcast predicateForNotHiddenPodcasts];
  v4 = [v2 objectsInEntity:kMTPodcastEntityName predicate:v3 sortDescriptors:0 returnsObjectsAsFaults:0];

  v5 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Running migration on podcasts.", buf, 2u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v4;
  v40 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v40)
  {
    v39 = *v50;
    v36 = kMTEpisodeEntityName;
    v37 = kEpisodePubDate;
    v43 = kEpisodePodcast;
    do
    {
      v6 = 0;
      do
      {
        if (*v50 != v39)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v41 = v6;
        v44 = *(*(&v49 + 1) + 8 * v6);
        v8 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v44 uuid];
          v10 = *(a1 + 40);
          *buf = 138543618;
          v56 = v9;
          v57 = 2048;
          v58 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Running migration on podcast with uuid %{public}@ and version %ld.", buf, 0x16u);
        }

        if ([*(a1 + 48) runMigrationForPodcast:v44 version:*(a1 + 40)])
        {
          v11 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = [v44 uuid];
            *buf = 138543362;
            v56 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Migration] (Data) Skipping migration for podcast with uuid %{public}@ because it was deleted.", buf, 0xCu);
          }

          goto LABEL_55;
        }

        if (*(a1 + 40) >= 32)
        {
          v11 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v13 = [v44 uuid];
            *buf = 138543362;
            v56 = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Migration] (Data) Version is >= 32, skipping episodes migration for podcast with uuid %{public}@", buf, 0xCu);
          }

          goto LABEL_55;
        }

        v14 = *(a1 + 32);
        v15 = [v44 uuid];
        v16 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v15];
        v17 = [NSSortDescriptor sortDescriptorWithKey:v37 ascending:0];
        v54 = v17;
        v18 = [NSArray arrayWithObjects:&v54 count:1];
        v19 = [v14 objectsInEntity:v36 predicate:v16 sortDescriptors:v18 returnsObjectsAsFaults:0];

        v20 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v44 uuid];
          *buf = 138543362;
          v56 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Running migration on episodes for podcast with uuid: %{public}@", buf, 0xCu);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v11 = v19;
        v22 = [v11 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v22)
        {
          v42 = 0;
          v23 = *v46;
          do
          {
            v24 = 0;
            do
            {
              if (*v46 != v23)
              {
                objc_enumerationMutation(v11);
              }

              v25 = *(*(&v45 + 1) + 8 * v24);
              v26 = [v25 podcastUuid];
              v27 = [v25 podcast];
              v28 = [v27 uuid];
              v29 = [v26 isEqualToString:v28];

              if ((v29 & 1) == 0)
              {
                [v25 setPrimitiveValue:0 forKey:v43];
                [v25 setPodcast:v44];
              }

              v30 = objc_autoreleasePoolPush();
              v31 = *(a1 + 40);
              if (v31 <= 13)
              {
                if (v31 <= 6)
                {
                  if ((v31 - 3) >= 4)
                  {
                    if ((v31 - 1) >= 2)
                    {
                      if (v31)
                      {
                        goto LABEL_45;
                      }

                      [*(a1 + 48) episodeMigrationForVersion0to1:v25];
                    }

                    [v25 setEpisodeLevel:v42++];
                  }

                  [*(a1 + 48) episodeMigrationForVersion6to7:v25];
                }

                [*(a1 + 48) episodeMigrationForVersion13to14:v25];
LABEL_39:
                [*(a1 + 48) episodeMigrationForVersion16to17:v25];
LABEL_40:
                [*(a1 + 48) episodeMigrationForVersion17to18:v25];
LABEL_41:
                [*(a1 + 48) episodeMigrationForVersion21to22:v25];
LABEL_42:
                [*(a1 + 48) episodeMigrationForVersion23to24:v25];
LABEL_43:
                [*(a1 + 48) episodeMigrationForVersion24to25:v25];
LABEL_44:
                [*(a1 + 48) episodeMigrationForVersion29to30:v25];
                goto LABEL_45;
              }

              if (v31 > 21)
              {
                if ((v31 - 25) < 5)
                {
                  goto LABEL_44;
                }

                if ((v31 - 22) < 2)
                {
                  goto LABEL_42;
                }

                if (v31 == 24)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                if ((v31 - 18) < 4)
                {
                  goto LABEL_41;
                }

                if ((v31 - 14) < 3)
                {
                  goto LABEL_39;
                }

                if (v31 == 17)
                {
                  goto LABEL_40;
                }
              }

LABEL_45:
              objc_autoreleasePoolPop(v30);
              v24 = v24 + 1;
            }

            while (v22 != v24);
            v32 = [v11 countByEnumeratingWithState:&v45 objects:v53 count:16];
            v22 = v32;
          }

          while (v32);
        }

        v33 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v44 uuid];
          *buf = 138543362;
          v56 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for episodes for podcast with uuid: %{public}@", buf, 0xCu);
        }

LABEL_55:
        v6 = v41 + 1;
      }

      while ((v41 + 1) != v40);
      v40 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v40);
  }

  v35 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for podcasts.", buf, 2u);
  }
}

void sub_10014CF20(uint64_t a1)
{
  [*(a1 + 32) executeFetchRequest:*(a1 + 40)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      v7 = 0;
      v11 = v5;
      v8 = v5 + 1;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v12 + 1) + 8 * v7);
        v10 = objc_autoreleasePoolPush();
        [v9 setStoreTrackId:{+[MTStoreIdentifier serpentIdFromAdamId:](MTStoreIdentifier, "serpentIdFromAdamId:", objc_msgSend(v9, "storeTrackId"))}];
        if (!(v8 % [*(a1 + 40) fetchBatchSize]))
        {
          [*(a1 + 32) saveInCurrentBlock];
        }

        objc_autoreleasePoolPop(v10);
        ++v7;
        ++v8;
      }

      while (v4 != v7);
      v5 = &v4[v11];
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_10014DA34(id *a1)
{
  v2 = [a1[4] executeFetchRequest:a1[5]];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      v8 = v5 + 1;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * v7) resolveAvailabilityDate];
        if (!(v8 % [a1[5] fetchBatchSize]))
        {
          [a1[4] saveInCurrentBlock];
        }

        v7 = v7 + 1;
        ++v8;
      }

      while (v4 != v7);
      v5 += v4;
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = [a1[6] newestEpisodeByAvailabiltyTime];
  [v9 firstTimeAvailable];
  [a1[6] setLatestEpisodeAvailabilityTime:?];
}

void sub_10014DC30(uint64_t a1)
{
  v3 = objc_alloc_init(MTEpisodeLevelCalculator);
  v2 = [*(a1 + 32) uuid];
  [v3 unsafeUpdateEpisodeShowTypeSpecificLevelsWithShowUUID:v2 on:*(a1 + 40)];
}

id sub_10014F064(id result)
{
  v1 = result;
  v2 = *(result + 5);
  if (v2 <= 45)
  {
    if (v2 >= 0x29)
    {
      if ((v2 - 41) >= 3)
      {
        if ((v2 - 44) >= 2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    else
    {
      [*(result + 6) allEpisodesMigrationForVersion40to41In:*(result + 4)];
    }

    [v1[6] allEpisodesMigrationForVersion43to44In:v1[4]];
LABEL_5:
    [v1[6] allEpisodesMigrationForVersion45to46In:v1[4]];
    goto LABEL_6;
  }

  if (v2 <= 52)
  {
    if ((v2 - 48) < 5)
    {
      goto LABEL_8;
    }

    if (v2 != 46)
    {
      if (v2 != 47)
      {
        return result;
      }

      goto LABEL_7;
    }

LABEL_6:
    [v1[6] allEpisodesMigrationForVersion46to47In:v1[4]];
LABEL_7:
    [v1[6] allEpisodesMigrationForVersion47to48In:v1[4]];
LABEL_8:
    [v1[6] allEpisodesMigrationForVersion51to52In:v1[4]];
    goto LABEL_9;
  }

  v5 = v2 - 56;
  if ((v2 - 56) > 0xC)
  {
    if ((v2 - 53) >= 2)
    {
      if (v2 != 55)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_9:
    [v1[6] allEpisodesMigrationForVersion53to54In:v1[4]];
LABEL_10:
    [v1[6] allEpisodesMigrationForVersion54to55In:v1[4]];
    goto LABEL_11;
  }

  if (((1 << v5) & 0x3F0) != 0)
  {
    goto LABEL_12;
  }

  if (((1 << v5) & 0xF) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  [v1[6] allEpisodesMigrationForVersion59to60In:v1[4]];
LABEL_12:
  [v1[6] allEpisodesMigrationForVersion65to66In:v1[4]];
LABEL_13:
  v3 = v1[6];
  v4 = v1[4];

  return [v3 allEpisodesMigrationForVersion68to69In:v4];
}

void sub_10014F50C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [v6 podcast];
        [v7 modifiedDate];
        [MTRecencyUtil scoreFromModifiedDate:?];
        [v6 setModifiedDateScore:?];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_100150458(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) setDownloadBehavior:{4, v6}];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100150FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100150FD0(uint64_t a1)
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLastDatePlayed ascending:0];
  v20[0] = v2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePersistentID ascending:0];
  v20[1] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeAssetURL ascending:0];
  v20[2] = v4;
  v5 = [NSArray arrayWithObjects:v20 count:3];

  v6 = kMTEpisodeEntityName;
  v7 = [MTEpisode predicateForAudio:0];
  v19 = kEpisodePodcastUuid;
  v8 = [NSArray arrayWithObjects:&v19 count:1];
  v18[0] = kEpisodeGuid;
  v18[1] = kEpisodeEnclosureUrl;
  v9 = [NSArray arrayWithObjects:v18 count:2];
  v10 = kEpisodeUuid;
  v17 = kEpisodeUuid;
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  v12 = [_TtC18PodcastsFoundation15PFCoreDataUtils findDuplicateItemsWithEntity:v6 itemsToLookAtFilter:v7 keysThatMustMatchToBeConsideredADuplicate:v8 keysThatShouldNotBeDuplicated:v9 keyValuesOfDuplicatedItemsToReturn:v11 sortDescriptors:v5];

  v13 = [v12 objectForKeyedSubscript:v10];
  v14 = [NSSet setWithArray:v13];
  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void sub_1001513C4(uint64_t a1)
{
  [*(a1 + 32) executeFetchRequest:*(a1 + 40)];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v30 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v30)
  {
    v29 = *v34;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v33 + 1) + 8 * i);
        v4 = [v3 assetURL];
        v5 = [NSURL URLWithString:v4];
        v6 = [v5 path];

        v7 = +[MTConstants managedAssetsDirectoryURL];
        v8 = [v3 uuid];
        v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:0];
        v10 = [v6 pathExtension];
        v11 = [v9 URLByAppendingPathExtension:v10];
        v12 = [v11 path];

        if ([v6 isEqualToString:v12])
        {
          v13 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v3 uuid];
            *buf = 138543618;
            v38 = v6;
            v39 = 2114;
            v40 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) (Watch) No need to remove existing file with same old and new path %{public}@ for episode %{public}@", buf, 0x16u);
          }
        }

        else
        {
          if ([*(a1 + 48) fileExistsAtPath:v12])
          {
            v15 = _MTLogCategoryDatabase();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v3 uuid];
              *buf = 138543618;
              v38 = v12;
              v39 = 2114;
              v40 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) (Watch) Will remove existing file at path %{public}@ for episode %{public}@", buf, 0x16u);
            }

            v17 = *(a1 + 48);
            v32 = 0;
            v18 = [v17 removeItemAtPath:v12 error:&v32];
            v19 = v32;
            if ((v18 & 1) == 0)
            {
              v20 = _MTLogCategoryDatabase();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = [v3 uuid];
                *buf = 138543618;
                v38 = v21;
                v39 = 2112;
                v40 = v19;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[Migration] (Data) (Watch) Failed to remove existing file for episode %{public}@ - %@", buf, 0x16u);
              }
            }
          }

          v22 = *(a1 + 48);
          v31 = 0;
          v23 = [v22 moveItemAtPath:v6 toPath:v12 error:&v31];
          v13 = v31;
          if ((v23 & 1) == 0)
          {
            v24 = _MTLogCategoryDatabase();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v3 uuid];
              *buf = 138543618;
              v38 = v25;
              v39 = 2112;
              v40 = v13;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[Migration] (Data) (Watch) Failed to move asset for episode %{public}@ - %@", buf, 0x16u);
            }

            v12 = 0;
          }

          v26 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v3 uuid];
            *buf = 138543618;
            v38 = v27;
            v39 = 2114;
            v40 = v12;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) (Watch) Updated asset url for episode %{public}@ to %{public}@", buf, 0x16u);
          }

          [v3 setAssetURL:v12];
        }
      }

      v30 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v30);
  }
}

uint64_t sub_100151A44(uint64_t a1)
{
  v2 = +[MPMediaQuery mt_allItemsForPodcastsApp];
  [*(a1 + 32) deleteItems:v2];

  return 1;
}

void sub_100151A8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v11 = 0;
  v3 = [v2 executeRequest:v1 error:&v11];
  v4 = v11;
  v5 = _MTLogCategoryDatabase();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      v7 = "[Migration] (Data) (Watch) Batch update for medialibrary episode removal failed %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v7 = "[Migration] (Data) (Watch) Set all persistent IDs to 0";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 2;
    goto LABEL_6;
  }
}

void sub_100151D1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = [v2 executeRequest:v3 error:&v14];
  v5 = v14;
  v6 = _MTLogCategoryDatabase();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      *buf = 67109378;
      v16 = v8;
      v17 = 2112;
      v18 = v5;
      v9 = "[Migration] (Data) Failed to prune persistent history older than %d days old - %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 18;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 48);
    *buf = 67109120;
    v16 = v13;
    v9 = "[Migration] (Data) Did prune persistent history older than %d days old";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 8;
    goto LABEL_6;
  }
}

void sub_100151F64(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsInEntity:kMTPlaylistEntityName predicate:0 sortDescriptors:0];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100152018;
  v3[3] = &unk_1004DDD18;
  v4 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v3];
}

void sub_100152018(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isItunesPlaylist] & 1) == 0 && (objc_msgSend(v3, "isItunesSmartPlaylist") & 1) == 0)
  {
    v4 = [v3 uuid];
    if ([v4 isEqualToString:kPlaylistITunesPlaylistUuid])
    {
LABEL_13:

      goto LABEL_14;
    }

    v5 = [v3 uuid];
    v6 = [v5 isEqualToString:@"PlaylistOnTheGo"];

    if ((v6 & 1) == 0)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [v3 settings];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v13 + 1) + 8 * v11) setNeedsUpdate:1];
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      v4 = +[(MTBaseProcessor *)MTPlaylistQueryManager];
      v12 = [v3 uuid];
      [v4 updatePlaylistWithUuid:v12 inContext:*(a1 + 32)];

      goto LABEL_13;
    }
  }

LABEL_14:
}

void sub_100153200(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v15 = 0;
  [v3 getResourceValue:&v16 forKey:NSURLContentTypeKey error:&v15];
  v4 = v16;
  v5 = v15;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ([v4 conformsToType:UTTypeImage] & 1) != 0)
  {
    v8 = +[MTImageStoreConstants fileExtension];
    v9 = [v3 URLByDeletingPathExtension];
    v10 = [v9 URLByAppendingPathExtension:v8];

    if ((![v4 isEqual:*(a1 + 32)] || (objc_msgSend(v3, "isEqual:", v10) & 1) == 0) && (v11 = *(a1 + 40), objc_msgSend(v4, "identifier"), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = objc_msgSend(v11, "copyImageFromSourceUrl:sourceFileType:to:discardTransparency:enforceSquare:maxDimensionInPixels:", v3, v12, v10, 0, 0, 1.79769313e308), v12, !v11) || (objc_msgSend(v3, "isEqual:", v10) & 1) == 0)
    {
      v13 = +[NSFileManager defaultManager];
      [v13 removeItemAtURL:v3 error:0];
    }
  }

  else
  {
    v14 = +[IMLogger sharedLogger];
    [v14 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2850 format:{@"Cannot convert the file of type %@ at URL %@. Ignoring. Error %@", v4, v3, v6}];

    v8 = +[NSFileManager defaultManager];
    [v8 removeItemAtURL:v3 error:0];
  }
}

void sub_100153704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015371C(uint64_t a1)
{
  v7 = [*(a1 + 48) _fetchRequestForMostRecentlyPlayedEpisode];
  v2 = [*(a1 + 32) executeFetchRequest:v7];
  v3 = [v2 firstObject];

  v4 = [v3 objectForKey:kPodcastLastDatePlayed];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100154504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100154534(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 48) + 8) + 24) = [v2 deletePlayedEpisodesResolvedValue];
    *(*(*(a1 + 56) + 8) + 24) = [v3 episodeLimitResolvedValue];
    v2 = v3;
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void sub_100154864(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 episodeUuids];
  [v1 _removeDownloadAssetsForEpisodeUuids:v2 reason:@"removal process became enabled"];
}

BOOL sub_100154A2C(id a1, MTEpisode *a2)
{
  v2 = a2;
  v3 = [(MTEpisode *)v2 assetURL];
  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
    if (v4)
    {
      v5 = v4;
      v6 = +[MTConstants managedAssetsDirectoryURL];
      v7 = [v6 URLByStandardizingPath];

      if (!v7)
      {
        v11 = _MTLogCategoryDownload();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Uh oh, no managedAssetsDirectoryURL found", &v20, 2u);
        }

        v12 = _MTLogCategoryDefault();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Uh oh, no managedAssetsDirectoryURL found", &v20, 2u);
        }

        v10 = 1;
        goto LABEL_20;
      }

      v8 = [v5 URLByStandardizingPath];

      v9 = [v8 scheme];
      if ([v9 isEqualToString:@"ipod-library"])
      {
      }

      else
      {
        v13 = [v8 path];
        v14 = [v7 path];
        v15 = [v13 hasPrefix:v14];

        if ((v15 & 1) == 0)
        {
          v12 = _MTLogCategoryDownload();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(MTEpisode *)v2 title];
            v18 = [v8 absoluteString];
            v20 = 138543618;
            v21 = v17;
            v22 = 2114;
            v23 = v18;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Skipping asset auto-deletion (asset not in managed folder) of episode '%{public}@' url %{public}@", &v20, 0x16u);
          }

          v10 = 1;
          goto LABEL_19;
        }
      }

      v12 = _MTLogCategoryDownload();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(MTEpisode *)v2 title];
        v20 = 138543362;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Allowing asset auto-deletion (in managed folder) of episode '%{public}@'", &v20, 0xCu);
      }

      v10 = 0;
LABEL_19:
      v5 = v8;
LABEL_20:

      goto LABEL_21;
    }
  }

  v10 = 0;
LABEL_21:

  return v10;
}

void sub_100154FD8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    (*(*(a1 + 32) + 16))();
  }

  v3 = [[MTUnplayedManifest alloc] initWithInitialEpisodeUuid:v4];
  (*(*(a1 + 32) + 16))();
}

void sub_100155200(id a1)
{
  v3[0] = kPodcastFeedUrl;
  v3[1] = kPodcastSubscribed;
  v3[2] = kPodcastTitle;
  v3[3] = kPodcastUpdatedDate;
  v3[4] = kPodcastAddedDate;
  v3[5] = kPodcastStoreCollectionId;
  v3[6] = kPodcastPlaybackNewestToOldest;
  v3[7] = kPodcastDarkCount;
  v3[8] = kPodcastLastTouchDate;
  v3[9] = kPodcastUuid;
  v3[10] = kPodcastSortAscending;
  v3[11] = kPodcastShowTypeSetting;
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_100583DB0;
  qword_100583DB0 = v1;
}

id sub_100156460(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  [*(a1 + 32) setAddedSubscriptions:v2];

  [*(a1 + 32) markAllShowsAsSynced];
  v3 = [*(a1 + 32) storageProvider];
  [v3 immediatelyDeleteAllHiddenPodcasts];

  result = [*(a1 + 32) mergeLocalAndRemoteData:*(a1 + 40) forKey:*(a1 + 48) version:*(a1 + 56) mismatch:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void sub_100156CC0(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastCacheInContext:*(a1 + 40)];
  [*(a1 + 32) importRemotePodcastDicts:*(a1 + 48) inContext:*(a1 + 40) visitingPodcastsInCache:v2 updatingPodcastsToAdd:*(a1 + 56) updatingPodcastsToUnsubscribe:*(a1 + 64) mismatch:*(a1 + 88) version:*(a1 + 72)];
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) logPrefix];
    v5 = [*(a1 + 32) addedSubscriptions];
    *buf = 138543619;
    v8 = v4;
    v9 = 2113;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Podcasts added since last sync: %{private}@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) unvisitedPodcastsToUnsubscribeIn:v2 mismatch:*(*(a1 + 80) + 8) + 24 version:*(a1 + 72)];
  [*(a1 + 64) unionSet:v6];
}

BOOL sub_100156F64(id a1, NSString *a2, id a3)
{
  v4 = a3;
  v5 = !-[NSString isEqualToString:](a2, "isEqualToString:", kPodcastStoreCollectionId) || [v4 integerValue];

  return v5;
}

void sub_100157B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) podcastForUuid:v3];
  v5 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) logPrefix];
    v7 = [v4 title];
    v8 = [v4 feedURL];
    v9 = [v4 storeCollectionId];
    v10 = [v4 uuid];
    *buf = 138544387;
    v39 = v6;
    v40 = 2113;
    v41 = v7;
    v42 = 2113;
    v43 = v8;
    v44 = 2049;
    v45 = v9;
    v46 = 2114;
    v47 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Unvisited local podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x34u);
  }

  v11 = [*(a1 + 40) addedSubscriptions];
  v12 = [v11 containsObject:v3];

  if (v12)
  {
    v13 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) logPrefix];
      v15 = [v4 title];
      v16 = [v4 feedURL];
      v17 = [v4 storeCollectionId];
      v18 = [v4 uuid];
      *buf = 138544387;
      v39 = v14;
      v40 = 2113;
      v41 = v15;
      v42 = 2113;
      v43 = v16;
      v44 = 2049;
      v45 = v17;
      v46 = 2114;
      v47 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking mismatch = YES. Reason: unvisited local podcast is marked as dirty (not synced yet), i.e. it's new and it's not in cloud yet, we must push it in a subsequent SET transaction: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x34u);
    }

    **(a1 + 64) = 1;
  }

  else if ([v4 subscribed])
  {
    v19 = [*(a1 + 40) config];
    v20 = [v19 supportsMetrics];

    if (v20)
    {
      v21 = [*(a1 + 40) storageProvider];
      v22 = [NSNumber numberWithBool:**(a1 + 64), @"version", @"mismatch", *(a1 + 48)];
      v37[1] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v37 forKeys:&v36 count:2];
      [v21 recordUserAction:@"cloud_sync_delete_podcast" dataSource:v4 withData:v23];
    }

    v24 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 40) logPrefix];
      v26 = [v4 title];
      v27 = [v4 feedURL];
      v28 = [v4 storeCollectionId];
      v29 = [v4 uuid];
      *buf = 138544387;
      v39 = v25;
      v40 = 2113;
      v41 = v26;
      v42 = 2113;
      v43 = v27;
      v44 = 2049;
      v45 = v28;
      v46 = 2114;
      v47 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking podcast for unsubscription [reason: it's an old subscription (i.e. is marked as already synced) which is not present in cloud, so it must have been unsubscribed remotely]: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x34u);
    }

    [*(a1 + 56) addObject:v3];
  }

  else
  {
    v30 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*(a1 + 40) logPrefix];
      v32 = [v4 title];
      v33 = [v4 feedURL];
      v34 = [v4 storeCollectionId];
      v35 = [v4 uuid];
      *buf = 138544387;
      v39 = v31;
      v40 = 2113;
      v41 = v32;
      v42 = 2113;
      v43 = v33;
      v44 = 2049;
      v45 = v34;
      v46 = 2114;
      v47 = v35;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring local unvisited podcast [reason: not subscribed locally]: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x34u);
    }
  }
}

void sub_100158710(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTPodcastEntityName;
  v4 = +[MTPodcast sortDescriptorsForManualOrder];
  v5 = [v2 objectsInEntity:v3 predicate:0 sortDescriptors:v4];

  v6 = [v5 mutableCopy];
  v7 = objc_alloc_init(NSMutableArray);
  v29 = a1;
  v8 = *(a1 + 40);
  v9 = [NSPredicate predicateWithFormat:@"subscribed == 1"];
  v10 = [v8 filteredArrayUsingPredicate:v9];
  v11 = [v10 valueForKey:@"feedURL"];
  v12 = [v11 mutableCopy];

  if ([v12 count])
  {
    while (1)
    {
      while (![v6 count])
      {
LABEL_6:
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100158B28;
        v34[3] = &unk_1004DDE90;
        v14 = v12;
        v35 = v14;
        v15 = [v5 indexOfObjectPassingTest:v34];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [v5 objectAtIndexedSubscript:v15];
          [v7 addObject:v16];
        }

        [v14 removeObjectAtIndex:0];

        if (![v14 count])
        {
          goto LABEL_9;
        }
      }

      v13 = [v6 objectAtIndexedSubscript:0];
      [v6 removeObjectAtIndex:0];
      if ([v13 subscribed])
      {

        goto LABEL_6;
      }

      [v7 addObject:v13];
    }
  }

LABEL_9:
  v28 = v5;
  [v7 addObjectsFromArray:{v6, v12}];
  v30 = [v7 count];
  if (v30 >= 1)
  {
    v17 = 0;
    v18 = v30;
    do
    {
      v19 = [v7 objectAtIndexedSubscript:v17];
      v20 = _MTLogCategoryCloudSync();
      v21 = v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [*(v29 + 48) logPrefix];
        v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v19 sortOrder]);
        v23 = [NSNumber numberWithInteger:v18];
        v32 = [v19 title];
        v24 = [v19 feedURL];
        v31 = [v19 storeCollectionId];
        v25 = [v19 uuid];
        *buf = 138544899;
        v37 = v33;
        v38 = 2112;
        v39 = v22;
        v40 = 2112;
        v41 = v23;
        v42 = 2113;
        v43 = v32;
        v44 = 2113;
        v45 = v24;
        v46 = 2049;
        v47 = v31;
        v48 = 2114;
        v49 = v25;
        v26 = v25;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Reordering local podcast to match remote order: from %@ to %@. Podcast: %{private}@, %{private}@, %{private}lld, %{public}@", buf, 0x48u);

        v21 = v30 - v17;
      }

      [v19 setSortOrder:v21];
      ++v17;
      --v18;
    }

    while (v18);
  }
}

id sub_100158B28(uint64_t a1, void *a2)
{
  v3 = [a2 feedURL];
  v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_100158DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsInEntity:kMTPodcastEntityName predicate:*(a1 + 40) sortDescriptors:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100158E60;
  v4[3] = &unk_1004DC318;
  v3 = *(a1 + 56);
  v4[4] = *(a1 + 48);
  v5 = v3;
  [v2 enumerateObjectsUsingBlock:v4];
}

void sub_100158E60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) logPrefix];
    v6 = [v3 title];
    v7 = [v3 feedURL];
    v8 = [v3 storeCollectionId];
    v9 = [v3 uuid];
    v12 = 138544387;
    v13 = v5;
    v14 = 2113;
    v15 = v6;
    v16 = 2113;
    v17 = v7;
    v18 = 2049;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ New locally added subscription detected: %{private}@, %{private}@, %{private}lld, %{public}@", &v12, 0x34u);
  }

  v10 = *(a1 + 40);
  v11 = [v3 uuid];
  [v10 addObject:v11];
}

void sub_10015917C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100159194(uint64_t a1)
{
  result = [*(a1 + 32) countOfObjectsInEntity:kMTPodcastEntityName predicate:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1001594B4(uint64_t a1)
{
  v1 = [*(a1 + 32) objectsInEntity:kMTPodcastEntityName predicate:*(a1 + 40) sortDescriptors:0];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) setHasBeenSynced:1];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100159728(uint64_t a1)
{
  v2 = kMTPodcastEntityName;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) storageProvider];
  v5 = +[MTPodcast predicateForSyncablePodcastsForSyncType:](MTPodcast, "predicateForSyncablePodcastsForSyncType:", [v4 syncType]);
  v6 = +[MTPodcast sortDescriptorsForManualOrder];
  v7 = [v3 objectsInEntity:v2 predicate:v5 sortDescriptors:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100159840;
  v9[3] = &unk_1004DC318;
  v8 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v8;
  [v7 enumerateObjectsUsingBlock:v9];
}

void sub_100159840(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 feedURL];
  if (v5)
  {

LABEL_3:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [objc_opt_class() subscriptionSyncProcessorSyncKeys];
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [v3 valueForKey:v11];
          if (v12)
          {
            [v4 setObject:v12 forKey:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v43 count:16];
      }

      while (v8);
    }

    v13 = [v3 valueForKey:kPodcastStoreCollectionId];
    if (v13)
    {
      [v4 setObject:v13 forKey:kPodcastPID];
    }

    v14 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) logPrefix];
      v16 = [v4 description];
      *buf = 138543619;
      v30 = v15;
      v31 = 2113;
      v32 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding local podcast: %{private}@", buf, 0x16u);
    }

    [*(a1 + 40) addObject:v4];
    goto LABEL_17;
  }

  if ([v3 syncType] == 1)
  {
    v17 = [v3 valueForKey:kPodcastStoreCollectionId];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) logPrefix];
    v19 = [v3 title];
    v20 = [v3 feedURL];
    v21 = [v3 storeCollectionId];
    v22 = [v3 uuid];
    if ([v3 subscribed])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v24 = [v3 description];
    *buf = 138544899;
    v30 = v18;
    v31 = 2113;
    v32 = v19;
    v33 = 2113;
    v34 = v20;
    v35 = 2049;
    v36 = v21;
    v37 = 2114;
    v38 = v22;
    v39 = 2114;
    v40 = v23;
    v41 = 2113;
    v42 = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping local podcast: %{private}@, %{private}@, %{private}lld, %{public}@, subscribed: %{public}@, description: %{private}@", buf, 0x48u);
  }

LABEL_17:
}

void sub_100159CA0(uint64_t a1)
{
  v1 = a1;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v46;
    v39 = kPodcastTitle;
    v38 = kPodcastFeedUrl;
    v37 = kPodcastStoreCollectionId;
    v36 = v1;
    v34 = *v46;
    do
    {
      v5 = 0;
      v33 = v3;
      do
      {
        if (*v46 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * v5);
        v7 = [v6 objectForKeyedSubscript:v39];
        v8 = [v6 objectForKeyedSubscript:v38];
        v9 = [v6 objectForKeyedSubscript:v37];
        v10 = [v9 unsignedLongLongValue];

        v11 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(v1 + 40) logPrefix];
          *buf = 138544131;
          v50 = v12;
          v51 = 2113;
          v52 = v7;
          v53 = 2113;
          v54 = v8;
          v55 = 2049;
          v56 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Subscribing from cloud to remote podcast: %{private}@, %{private}@, %{private}lld", buf, 0x2Au);
        }

        v40 = v7;

        v13 = [NSURL URLWithString:v8];
        if (!v13)
        {
          v15 = _MTLogCategoryCloudSync();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          v16 = [*(v1 + 40) logPrefix];
          *buf = 138543362;
          v50 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ Attempting to add a podcast with a nil URL", buf, 0xCu);
          goto LABEL_21;
        }

        v14 = [*(v1 + 48) podcastForFeedUrl:v8];
        v15 = v14;
        if (v14 && [v14 hidden])
        {
          v16 = _MTLogCategoryCloudSync();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(v1 + 40) logPrefix];
            v18 = [v15 uuid];
            *buf = 138543618;
            v50 = v17;
            v51 = 2114;
            v52 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping re-subscribe to a hidden podcast with uuid %{public}@", buf, 0x16u);
          }

LABEL_21:

          goto LABEL_27;
        }

        v19 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(v1 + 40) logPrefix];
          v21 = [v6 description];
          *buf = 138543875;
          v50 = v20;
          v51 = 2113;
          v52 = v40;
          v53 = 2112;
          v54 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding Podcast from Sync with title: %{private}@, PodcastDict: %{Private}@", buf, 0x20u);
        }

        v22 = *(v1 + 48);
        v23 = +[MTPodcast defaultShowType];
        v24 = [v6 objectForKey:v39];
        v25 = [MTPodcast insertNewPodcastInManagedObjectContext:v22 subscribed:1 feedUrl:v8 showType:v23 showTypeInFeed:0 title:v24 author:0 provider:0 imageUrl:0 description:0 displayType:0 showSpecificUpsellCopy:0];

        if (v25)
        {
          [v25 setHasBeenSynced:1];
          [v25 setStoreCollectionId:v10];
          [v25 setImporting:1];
          v26 = [v25 displayType];
          v3 = v33;
          v4 = v34;
          if (v26)
          {

            v1 = v36;
LABEL_18:
            [*(v1 + 40) updateSettingsForLocalPodcast:v25 remotePodcast:v6 ctx:*(v1 + 48)];
            v15 = v25;
            goto LABEL_27;
          }

          v1 = v36;
          if ([v25 storeCollectionId]< 1)
          {
            goto LABEL_18;
          }

          v29 = +[_TtC18PodcastsFoundation21PodcastRequestManager sharedInstance];
          v30 = [v25 storeCollectionId];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10015A2F8;
          v41[3] = &unk_1004DDEB8;
          v31 = *(v36 + 48);
          v41[4] = *(v36 + 40);
          v42 = v25;
          v43 = v6;
          v44 = v31;
          v15 = v25;
          v32 = v30;
          v4 = v34;
          [v29 updatePodcastWithStoreId:v32 completion:v41];

          v1 = v36;
        }

        else
        {
          v15 = _MTLogCategoryCloudSync();
          v3 = v33;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v27 = [*(v36 + 40) logPrefix];
            v28 = [v6 description];
            *buf = 138543619;
            v50 = v27;
            v51 = 2113;
            v52 = v28;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ We can't subscribe from cloud to podcast because the podcast was not found in local DB and a new one was impossible to insert for some reason. Remote podcast: %{private}@", buf, 0x16u);
          }

          v1 = v36;
          v4 = v34;
        }

LABEL_27:

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v3);
  }
}

void sub_10015A2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015A3D8;
  v8[3] = &unk_1004DAA70;
  v9 = *(a1 + 40);
  v10 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v7 = v3;
  [v4 performBlock:v8];
}

void sub_10015A3D8(uint64_t a1)
{
  [*(a1 + 32) setDisplayType:*(a1 + 40)];
  [*(a1 + 48) updateSettingsForLocalPodcast:*(a1 + 32) remotePodcast:*(a1 + 56) ctx:*(a1 + 64)];
  v2 = [*(a1 + 48) context];
  [v2 saveInCurrentBlock];

  v3 = [*(a1 + 48) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015A4AC;
  block[3] = &unk_1004D8358;
  v5 = *(a1 + 32);
  dispatch_async(v3, block);
}

void sub_10015A4AC(uint64_t a1)
{
  v3 = +[MTFeedUpdateManager sharedInstance];
  v2 = [*(a1 + 32) uuid];
  [v3 updatePodcastWithUUID:v2 userInitiated:0 forced:1 forceBootstrap:0 source:12 completion:0];
}

void sub_10015B2E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"action"];
    if (v4 && (v5 = v4, [v12 objectForKeyedSubscript:@"action"], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"url"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7))
    {
      v8 = *(a1 + 32);
      v9 = [v12 objectForKeyedSubscript:@"action"];
      v10 = [v9 objectForKeyedSubscript:@"url"];
      v11 = [NSURL URLWithString:v10];
      (*(v8 + 16))(v8, v11);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_10015B59C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && (v5 = [v3 pf_cleanUrlToStoreId], v5 >= 1))
  {
    v6 = v5;
    v7 = +[MTDB sharedInstance];
    v8 = [v7 importContext];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10015B704;
    v12[3] = &unk_1004DAE78;
    v13 = v8;
    v14 = *(a1 + 32);
    v16 = v6;
    v15 = v4;
    v9 = v8;
    [v9 performBlockAndWait:v12];
  }

  else if ([*(a1 + 40) count] >= 2)
  {
    v10 = [*(a1 + 40) subarrayWithRange:{1, objc_msgSend(*(a1 + 40), "count") - 1}];
    v11 = objc_alloc_init(MTLibraryLinkService);
    [(MTLibraryLinkService *)v11 updateAdamIdForPodcast:*(a1 + 32) withFeedURLs:v10];
  }
}

void sub_10015B704(uint64_t a1)
{
  v4 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  [v4 setStoreCollectionId:*(a1 + 56)];
  v2 = [*(a1 + 48) absoluteString];
  [v4 setStoreCleanURL:v2];

  [*(a1 + 32) saveInCurrentBlock];
  v3 = +[MTStoreInfoUpdater sharedInstance];
  [v3 updateStoreInfoForEpisodesAndPodcast:*(a1 + 40) skipPodcastLastCheckDate:1];
}

void sub_10015B894(uint64_t a1)
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 importContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015B964;
  v7[3] = &unk_1004D94C8;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  [v6 performBlockAndWait:v7];
}

void sub_10015B964(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    if ([v2 storeCollectionId] || (+[NSDate timeIntervalSinceReferenceDate](NSDate, "timeIntervalSinceReferenceDate"), v5 = v4, objc_msgSend(v3, "lastStorePodcastInfoCheckDate"), v5 <= v6 + 604800.0))
    {
      [*(a1 + 48) updateStoreInfoForEpisodesAndPodcast:*(a1 + 40) skipPodcastLastCheckDate:0];
    }

    else
    {
      +[NSDate timeIntervalSinceReferenceDate];
      [v3 setLastStorePodcastInfoCheckDate:?];
      [*(a1 + 32) saveInCurrentBlock];
      v7 = [v3 updatedFeedURL];
      if (v7)
      {
        v8 = v7;
        v9 = [v3 feedURL];

        if (v9)
        {
          v10 = [v3 updatedFeedURL];
          v16[0] = v10;
          v11 = [v3 feedURL];
          v16[1] = v11;
          v12 = [NSArray arrayWithObjects:v16 count:2];

LABEL_11:
          v14 = objc_alloc_init(MTLibraryLinkService);
          [(MTLibraryLinkService *)v14 updateAdamIdForPodcast:*(a1 + 40) withFeedURLs:v12];

          goto LABEL_8;
        }
      }

      v13 = [v3 feedURL];

      if (v13)
      {
        v10 = [v3 feedURL];
        v15 = v10;
        v12 = [NSArray arrayWithObjects:&v15 count:1];
        goto LABEL_11;
      }
    }
  }

LABEL_8:
}

void sub_10015BC20(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v3 = v2;
  if (v2 && [v2 storeCollectionId])
  {
    if ((*(a1 + 56) & 1) != 0 || (+[NSDate timeIntervalSinceReferenceDate](NSDate, "timeIntervalSinceReferenceDate"), v5 = v4, [v3 lastStorePodcastInfoCheckDate], v5 > v6 + 604800.0))
    {
      v7 = [v3 storeCleanURL];
      if (!v7 || (v8 = v7, [v3 storeShortURL], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
      {
        +[NSDate timeIntervalSinceReferenceDate];
        [v3 setLastStorePodcastInfoCheckDate:?];
        [*(a1 + 32) saveInCurrentBlock];
        goto LABEL_13;
      }
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v11 = v10;
    [v3 lastStoreEpisodesInfoCheckDate];
    if (v11 > v12 + 86400.0)
    {
      v13 = [*(a1 + 48) _fetchRequestForEpisodesWithMissingAdamIdsForPodcastUuid:*(a1 + 40)];
      [v13 setFetchLimit:1];
      v14 = *(a1 + 32);
      v27 = 0;
      v15 = [v14 executeFetchRequest:v13 error:&v27];
      v16 = v27;
      if (v16)
      {
        v17 = v16;
        v18 = +[IMLogCategory defaultCategory];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to fetch episodes for store info update - %@", buf, 0xCu);
        }

        goto LABEL_14;
      }

      v23 = [v15 count];

      if (!v23)
      {
        goto LABEL_15;
      }

LABEL_13:
      v19 = *(a1 + 48);
      v20 = [v3 storeCollectionId];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10015BE98;
      v24[3] = &unk_1004DDF08;
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v25 = v21;
      v26 = v22;
      [v19 getStoreInfoForPodcastWithAdamId:v20 callback:v24];
      v13 = v25;
LABEL_14:
    }
  }

LABEL_15:
}

void sub_10015BE98(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[MTDB sharedInstance];
  v14 = [v13 importContext];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10015BFFC;
  v21[3] = &unk_1004DDEE0;
  v22 = v14;
  v23 = *(a1 + 32);
  v24 = v9;
  v15 = *(a1 + 40);
  v25 = v10;
  v26 = v15;
  v27 = v11;
  v28 = v12;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  v20 = v14;
  [v20 performBlockAndWait:v21];
}

void sub_10015BFFC(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v3 = *(a1 + 48);
  v10 = v2;
  if (v3 && ([v2 storeCleanURL], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqualToString:", v4), v4, (v5 & 1) == 0))
  {
    [v10 setStoreCleanURL:*(a1 + 48)];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = [v10 storeShortURL];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      [v10 setStoreShortURL:*(a1 + 56)];
      goto LABEL_10;
    }
  }

  if (v6)
  {
LABEL_10:
    [*(a1 + 32) saveInCurrentBlock];
  }

  [*(a1 + 64) updateStoreInfoForEpisodesInPodcast:*(a1 + 40) withEpisodeIds:*(a1 + 72) andEpisodesWithGuid:*(a1 + 80)];
}

void sub_10015C218(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (!v2)
  {
    goto LABEL_25;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  [v2 lastStoreEpisodesInfoCheckDate];
  if (v4 <= v5 + 86400.0)
  {
    goto LABEL_25;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v2 setLastStoreEpisodesInfoCheckDate:?];
  [*(a1 + 32) saveInCurrentBlock];
  v6 = [*(a1 + 48) episodesWithMissingAdamIdsForPodcast:*(a1 + 40) withContext:*(a1 + 32)];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    goto LABEL_24;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v9)
  {

    goto LABEL_24;
  }

  v10 = v9;
  v29 = v7;
  v30 = v2;
  v11 = 0;
  v12 = 0;
  v13 = *v38;
  v33 = 1;
  obj = v8;
  do
  {
    v14 = 0;
    v31 = v12;
    v15 = v12 + 1;
    do
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v37 + 1) + 8 * v14);
      v17 = [v16 guid];
      if (v17 && (v18 = v17, v19 = *(a1 + 56), [v16 guid], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", v20), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v18, v21))
      {
        v22 = *(a1 + 48);
        v23 = *(a1 + 56);
        v24 = [v16 guid];
        v25 = [v23 objectForKeyedSubscript:v24];
        v26 = [v22 updateAdamId:v25 forEpisode:v16];

        v11 |= v26;
        if ((v11 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v33 = 0;
        if ((v11 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      if (!(v15 % 0xC8))
      {
        [*(a1 + 32) saveInCurrentBlock];
        v11 = 0;
      }

LABEL_17:
      ++v14;
      ++v15;
    }

    while (v10 != v14);
    v12 = &v10[v31];
    v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v10);

  v2 = v30;
  if (v11)
  {
    [*(a1 + 32) saveInCurrentBlock];
  }

  v7 = v29;
  if ((v33 & 1) == 0)
  {
    v27 = *(a1 + 48);
    v28 = *(a1 + 64);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10015C550;
    v34[3] = &unk_1004DDF30;
    v34[4] = v27;
    v35 = *(a1 + 40);
    v36 = *(a1 + 32);
    [v27 getStoreInfoForEpisodesWithAdamIds:v28 callback:v34];
  }

LABEL_24:

LABEL_25:
}

void sub_10015C550(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 importContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10015C650;
  v9[3] = &unk_1004DAA70;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v3;
  v13 = *(a1 + 48);
  v7 = v3;
  v8 = v5;
  [v8 performBlockAndWait:v9];
}

void sub_10015C650(uint64_t a1)
{
  [*(a1 + 32) episodesWithMissingAdamIdsForPodcast:*(a1 + 40) withContext:*(a1 + 48)];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v21;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 enclosureURL];
        if (v9)
        {
          v10 = v9;
          v11 = *(a1 + 56);
          v12 = [v8 enclosureURL];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (v13)
          {
            v14 = *(a1 + 32);
            v15 = *(a1 + 56);
            v16 = [v8 enclosureURL];
            v17 = [v15 objectForKeyedSubscript:v16];
            v18 = [v14 updateAdamId:v17 forEpisode:v8];

            v5 |= v18;
            ++v4;
            if ((v5 & 1) != 0 && !(v4 % 0xC8))
            {
              [*(a1 + 64) saveInCurrentBlock];
              v5 = 0;
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
    if (v5)
    {
      [*(a1 + 48) saveInCurrentBlock];
    }
  }
}

void sub_10015CD38(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([*(a1 + 32) stringValue], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKeyedSubscript:", v4), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) == 0))
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v34 = a1;
  v7 = [*(a1 + 32) stringValue];
  v35 = v3;
  v8 = [v3 objectForKeyedSubscript:v7];
  v9 = [v8 copy];

  v10 = [v9 objectForKeyedSubscript:@"childrenIds"];
  v32 = [v10 mutableCopy];

  v33 = v9;
  v11 = [v9 objectForKeyedSubscript:@"children"];
  v36 = objc_alloc_init(NSMutableDictionary);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v15 = *v38;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v37 + 1) + 8 * i);
      v18 = [v12 objectForKeyedSubscript:v17];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v12 objectForKeyedSubscript:v17];
        v20 = [v19 objectForKeyedSubscript:@"podcastEpisodeGuid"];

        if (!v20)
        {
          continue;
        }

        v21 = [v12 objectForKeyedSubscript:v17];
        v18 = [v21 objectForKeyedSubscript:@"podcastEpisodeGuid"];

        v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 longLongValue]);
        [v36 setObject:v22 forKeyedSubscript:v18];
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v14);
LABEL_14:

  v23 = [v36 allValues];
  [v32 removeObjectsInArray:v23];

  v24 = [v33 objectForKeyedSubscript:@"url"];
  if (v24)
  {
    v25 = [v33 objectForKeyedSubscript:@"url"];
    v26 = +[NSNull null];

    if (v25 == v26)
    {
      v24 = 0;
    }

    else
    {
      v27 = [v33 objectForKeyedSubscript:@"url"];
      v24 = [v27 copy];
    }
  }

  v28 = [v33 objectForKeyedSubscript:@"shortUrl"];
  if (v28)
  {
    v29 = [v33 objectForKeyedSubscript:@"shortUrl"];
    v30 = +[NSNull null];

    if (v29 == v30)
    {
      v28 = 0;
    }

    else
    {
      v31 = [v33 objectForKeyedSubscript:@"shortUrl"];
      v28 = [v31 copy];
    }
  }

  v3 = v35;
  (*(*(v34 + 40) + 16))();

LABEL_24:
}

void sub_10015D280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = &_s8ShelfKit12MetricsLabelO17removeFromStationyA2CmFWC_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = a1;
    v28 = objc_alloc_init(NSMutableDictionary);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(a1 + 32);
    v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v31)
    {
      goto LABEL_21;
    }

    v5 = *v33;
    v6 = @"url";
    v29 = *v33;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        v9 = [v3 objectForKeyedSubscript:v8];
        if (v9)
        {
          v10 = v9;
          [v3 objectForKeyedSubscript:v8];
          v12 = v11 = v6;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v6 = v11;
          if (isKindOfClass)
          {
            v14 = [v3 objectForKeyedSubscript:v8];
            v15 = [v14 objectForKeyedSubscript:@"offers"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_15;
            }

            v16 = [v14 objectForKeyedSubscript:@"offers"];
            [v16 objectAtIndexedSubscript:0];
            v18 = v17 = v4;
            objc_opt_class();
            v19 = objc_opt_isKindOfClass();

            v4 = v17;
            v6 = v11;

            if (v19)
            {
              v20 = [v14 objectForKeyedSubscript:@"offers"];
              v15 = [v20 objectAtIndexedSubscript:0];

              v21 = [v15 objectForKeyedSubscript:@"download"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_14;
              }

              v22 = [v15 objectForKeyedSubscript:@"download"];
              v23 = [v22 objectForKeyedSubscript:v11];

              if (v23)
              {
                v24 = [v15 objectForKeyedSubscript:@"download"];
                v21 = [v24 objectForKeyedSubscript:@"url"];

                v25 = [v8 copy];
                [v28 setObject:v25 forKeyedSubscript:v21];

                v4 = v17;
LABEL_14:

                v6 = v11;
              }

              else
              {
                v4 = v17;
                v6 = @"url";
              }

LABEL_15:
            }

            v5 = v29;
          }
        }

        v7 = v7 + 1;
      }

      while (v31 != v7);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      v31 = v26;
      if (!v26)
      {
LABEL_21:

        (*(*(v27 + 40) + 16))();
        break;
      }
    }
  }
}

void sub_10015DB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015DB6C(uint64_t a1)
{
  v2 = [*(a1 + 32) storageProvider];
  v3 = [v2 feedUrlFromModernKey:*(a1 + 40)];

  v4 = [*(a1 + 48) podcastForFeedUrl:v3];
  if (v4)
  {
    v30 = v4;
    v31 = v3;
    v5 = [v4 uuid];
    v6 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v5 includeNonAudioEpisodes:1];

    v29 = [*(a1 + 32) predicateForFilteringEpisodesWithEmptyPlayState];
    v7 = [v6 AND:?];

    v8 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
    v28 = v7;
    [v8 setPredicate:v7];
    v36 = kEpisodeMetadataIdentifier;
    v37 = kEpisodeGuid;
    v57[0] = kEpisodeGuid;
    v57[1] = kEpisodeMetadataIdentifier;
    v34 = kEpisodeLastDatePlayed;
    v35 = kEpisodePlayStateManuallySet;
    v57[2] = kEpisodePlayStateManuallySet;
    v57[3] = kEpisodeLastDatePlayed;
    v32 = kEpisodeIsNew;
    v33 = kEpisodeLastUserMarkedAsPlayedDate;
    v57[4] = kEpisodeLastUserMarkedAsPlayedDate;
    v57[5] = kEpisodeIsNew;
    v57[6] = kEpisodeTitle;
    v57[7] = kEpisodeUuid;
    v9 = [NSArray arrayWithObjects:v57 count:8];
    [v8 setPropertiesToFetch:v9];

    [v8 setFetchBatchSize:200];
    v38 = a1;
    v27 = v8;
    [*(a1 + 48) executeFetchRequest:v8 error:0];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v45 = 0u;
    v10 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v41 = *v43;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [v13 guid];
        if ([v14 length])
        {
          v15 = [v13 metadataIdentifier];
          v16 = [v15 length];

          if (v16)
          {
            v40 = *(*(*(v38 + 56) + 8) + 40);
            v46[0] = v37;
            v17 = [v13 guid];
            v47[0] = v17;
            v46[1] = v36;
            v18 = [v13 metadataIdentifier];
            v47[1] = v18;
            v46[2] = v35;
            v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 playStateManuallySet]);
            v47[2] = v19;
            v46[3] = v34;
            [v13 lastDatePlayed];
            v20 = [NSNumber numberWithDouble:?];
            v47[3] = v20;
            v46[4] = v33;
            [v13 lastUserMarkedAsPlayedDate];
            v21 = [NSNumber numberWithDouble:?];
            v47[4] = v21;
            v46[5] = v32;
            v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isNew]);
            v47[5] = v22;
            v23 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:6];
            [v40 addObject:v23];

            goto LABEL_13;
          }
        }

        else
        {
        }

        v17 = _MTLogCategoryUPPSync();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v18 = [v13 title];
        v24 = [v13 uuid];
        v25 = [v13 metadataIdentifier];
        v26 = [v13 guid];
        *buf = 138544130;
        v49 = v18;
        v50 = 2114;
        v51 = v24;
        v52 = 2114;
        v53 = v25;
        v54 = 2114;
        v55 = v26;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Episode Sync] Skipping syncing episode without a valid guid and metadataIdentifier: %{public}@, %{public}@, %{public}@, %{public}@", buf, 0x2Au);

LABEL_13:
LABEL_14:
      }

      v11 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
      if (!v11)
      {
LABEL_16:

        v4 = v30;
        v3 = v31;
        break;
      }
    }
  }
}

void sub_10015EB4C(uint64_t a1)
{
  v2 = [*(a1 + 32) storageProvider];
  v3 = [v2 feedUrlFromModernKey:*(a1 + 40)];

  v4 = [*(a1 + 48) podcastForFeedUrl:v3];
  if (v4)
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
    v6 = [v4 uuid];
    v7 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v6 includeNonAudioEpisodes:1];
    [v5 setPredicate:v7];

    v8 = [*(a1 + 32) _propertiesToFetch];
    [v5 setPropertiesToFetch:v8];

    [v5 setFetchBatchSize:200];
    v9 = *(a1 + 48);
    v37 = 0;
    v10 = [v9 executeFetchRequest:v5 error:&v37];
    v11 = v37;
    if (v11)
    {
      v12 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v4 uuid];
        v14 = [v4 title];
        *buf = 138543874;
        v40 = v13;
        v41 = 2112;
        v42 = v14;
        v43 = 2112;
        v44 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[Episode Sync] Failed to fetch episodes for show %{public}@ - %@ - %@", buf, 0x20u);
      }
    }

    else
    {
      v27 = v10;
      v28 = v5;
      v29 = v4;
      v30 = v3;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v10;
      v15 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v34;
        do
        {
          v19 = 0;
          v31 = v17;
          v20 = v17 + 1;
          do
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v33 + 1) + 8 * v19);
            v22 = objc_autoreleasePoolPush();
            v23 = [v21 guid];
            v24 = [v21 metadataIdentifier];
            v25 = [*(a1 + 56) objectForKey:v23];
            if (v25 || ([*(a1 + 64) objectForKey:v24], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v26 = v25;
              if (v23)
              {
                [*(a1 + 56) removeObjectForKey:v23];
              }

              if (v24)
              {
                [*(a1 + 64) removeObjectForKey:v24];
              }

              [*(a1 + 32) unsafeUpdateEpisode:v21 forRemoteEpisodeDictionary:v26];
            }

            if (!(v20 % 0xC8))
            {
              [*(a1 + 48) saveInCurrentBlock];
            }

            objc_autoreleasePoolPop(v22);
            ++v19;
            ++v20;
          }

          while (v16 != v19);
          v17 = &v16[v31];
          v16 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v16);
      }

      [*(a1 + 48) saveInCurrentBlock];
      v4 = v29;
      v3 = v30;
      v10 = v27;
      v5 = v28;
      v11 = 0;
    }
  }
}

void sub_10015F328(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  if ([v2 subscribed])
  {
    v3 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
    v4 = [v2 uuid];
    v5 = [MTEpisode predicateForListenNowForPodcastUuid:v4];
    v6 = [MTEpisode predicateForVisuallyPlayed:1];
    v7 = [v5 AND:v6];
    [v3 setPredicate:v7];

    [v3 setFetchLimit:1];
    if ([*(a1 + 32) countForFetchRequest:v3 error:0])
    {
      v8 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v2 title];
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Recalculating Up Next for podcast %{public}@ which has played up next episode after sync completion", &v13, 0xCu);
      }

      v10 = [v2 uuid];
      v11 = [MTRecencyUtil upNextForPodcastUuid:v10 excludeExplicit:0 ctx:*(a1 + 32)];

      v12 = [v2 uuid];
      [MTRecencyUtil unsafeUpdateRelatedFieldsIfUpNextChangedForPodcast:v12 upNextResult:v11 ctx:*(a1 + 32)];

      [*(a1 + 32) saveInCurrentBlock];
    }
  }
}

void sub_10015FFC4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _MTLogCategoryPrivacy();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Acknowledge privacy task has been completed successfully.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [v5 localizedDescription];
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to execute acknowledge task, error %{public}@.", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016012C;
  block[3] = &unk_1004D86F8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10016012C(uint64_t a1)
{
  +[MTPrivacyUtil markAsAgreedToLatestTerms];
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v2 setInteger:qword_1005726F0 forKey:@"MTWelcomeVersion"];

  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v3 synchronize];

  if ([*(a1 + 32) shouldShowWelcome])
  {
    v4 = _MTLogCategoryPrivacy();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v5 = "shouldShowWelcome = YES after +[MTWelcomeUtil markWelcomeAsShown]";
      v6 = &v11;
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v5, v6, 2u);
    }
  }

  else
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:kMTDidMarkWelcomeAsShownNotification object:0];

    v4 = _MTLogCategoryPrivacy();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v5 = "Marking Welcome screen as shown was successful.";
      v6 = &v10;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }
}

void sub_100160458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100160478(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    (*(v1 + 16))(v1, WeakRetained);
  }
}

void sub_100160D30(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsInEntity:kMTPlaylistEntityName predicate:0 sortDescriptors:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100160DE8;
  v4[3] = &unk_1004DDFE8;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  [v2 enumerateObjectsUsingBlock:v4];
}

void sub_100160DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isItunesPlaylist] & 1) == 0 && (objc_msgSend(v3, "isItunesSmartPlaylist") & 1) == 0 && (objc_msgSend(v3, "isBuiltIn") & 1) == 0)
  {
    v4 = [v3 defaultSettings];

    if (v4)
    {
      v5 = [v3 dictionaryRepresentation];
      v6 = [v5 mutableCopy];

      if (([v3 hasBeenSynced] & 1) == 0)
      {
        v7 = [*(a1 + 32) addedPlaylists];

        if (!v7)
        {
          v8 = objc_opt_new();
          [*(a1 + 32) setAddedPlaylists:v8];
        }

        v9 = [*(a1 + 32) addedPlaylists];
        v10 = [v3 uuid];
        [v9 addObject:v10];

        [v3 setHasBeenSynced:1];
      }

      v60 = a1;
      v11 = [v3 podcasts];
      v64 = [v3 settings];
      v67 = objc_opt_new();
      v58 = objc_opt_new();
      v12 = [v3 defaultSettings];
      v13 = [v12 dictionaryRepresentation];
      v14 = [v13 mutableCopy];

      v15 = [v3 defaultSettings];
      v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v15 episodesToShow]);
      [v14 setObject:v16 forKey:@"episodesToShowTruth"];

      v57 = v14;
      [v6 setObject:v14 forKey:kPlaylistDefaultSettings];
      v61 = v3;
      v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isUngroupedList]);
      v59 = v6;
      [v6 setObject:v17 forKey:kPlaylistUngroupedList];

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v11;
      v18 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v73;
        v21 = kPodcastFeedUrl;
        v22 = kPodcastStoreCollectionId;
        v23 = kPodcastPID;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v73 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v72 + 1) + 8 * i);
            v26 = [v25 feedURL];

            if (v26)
            {
              v77[0] = v21;
              v27 = [v25 feedURL];
              v78[0] = v27;
              v77[1] = v22;
              v28 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 storeCollectionId]);
              v78[1] = v28;
              v77[2] = v23;
              v29 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 storeCollectionId]);
              v78[2] = v29;
              v30 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:3];
              [v67 addObject:v30];
            }
          }

          v19 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
        }

        while (v19);
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v31 = v64;
      v32 = [v31 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v69;
        v63 = kPlaylistSettingEpisodesToShow;
        v65 = kPlaylistSettingTracksDefault;
        v62 = kPlaylistSettingEpisodeToShowItunesTruth;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v69 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v68 + 1) + 8 * j);
            v37 = [v36 dictionaryRepresentation];
            v38 = [v37 mutableCopy];

            v39 = [v36 podcast];

            if (v39)
            {
              v40 = [v36 podcast];
              v41 = [v40 feedURL];

              if (!v41)
              {
                goto LABEL_34;
              }

              if ([v36 tracksDefault])
              {
                v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v36 integerForEpisodesToShow]);
                [v38 setObject:v42 forKey:v63];
              }

              v43 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v36 episodesToShow]);
              [v38 setObject:v43 forKey:@"episodesToShowTruth"];

              v44 = [v36 podcast];
              v45 = [v44 feedURL];
              [v38 setObject:v45 forKey:@"podcastFeedUrl"];

              v46 = [v36 podcast];
              v47 = [v46 storeCollectionId];

              if (v47 >= 1)
              {
                v48 = [v36 podcast];
                v49 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v48 storeCollectionId]);
                [v38 setObject:v49 forKey:@"podcastStoreCollectionId"];
              }

              v50 = [v36 podcast];
              v51 = [v50 podcastPID];

              if (v51 >= 1)
              {
                v52 = [v36 podcast];
                v53 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v52 storeCollectionId]);
                [v38 setObject:v53 forKey:@"podcastPID"];
              }

              v54 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v36 tracksDefault]);
              [v38 setObject:v54 forKey:v65];

              if ([v36 tracksDefault])
              {
                [v38 setObject:&off_100501798 forKey:v62];
              }
            }

            [v58 addObject:v38];
LABEL_34:
          }

          v33 = [v31 countByEnumeratingWithState:&v68 objects:v76 count:16];
        }

        while (v33);
      }

      [v59 setObject:v67 forKey:@"podcasts"];
      [v59 setObject:v58 forKey:@"settings"];
      v3 = v61;
      v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v61 includesAllPodcasts]);
      [v59 setObject:v55 forKey:kPlaylistIncludesAllPodcasts];

      [*(v60 + 40) addObject:v59];
    }

    else
    {
      v56 = +[IMLogger sharedLogger];
      [v56 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Sync/MTPlaylistSyncProcessor.m" lineNumber:110 format:@"*** Attempting to cloud sync a playlist with nil defaultSettings ***"];
    }
  }
}

id sub_10016190C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 addedPlaylists];
  v5 = [v4 containsObject:v3];

  return v5;
}

void sub_100161C54(uint64_t a1)
{
  if (*(a1 + 56) >= 1)
  {
    v2 = [MTPodcast predicateForPodcastStoreId:?];
    v3 = [*(a1 + 32) objectsInEntity:kMTPodcastEntityName predicate:v2 sortDescriptors:0];
    v4 = [v3 firstObject];
    if (v4)
    {
      v13 = v4;
      if (*(a1 + 64) <= 0)
      {
        v6 = *(a1 + 40);
        if (!v6)
        {
          v10 = 0;
          v9 = 0;
          goto LABEL_12;
        }

        v5 = [NSPredicate predicateWithFormat:@"%K = %@", kEpisodeGuid, v6];
      }

      else
      {
        v5 = [MTEpisode predicateForEpisodeStoreTrackId:?];
      }

      v7 = v5;

      v8 = [*(a1 + 32) objectsInEntity:kMTEpisodeEntityName predicate:v7 sortDescriptors:0];
      v9 = [v8 firstObject];
      v10 = v9 == 0;

      v2 = v7;
LABEL_12:

      v11 = [*(a1 + 72) appController];
      v12 = [v9 uuid];
      [v11 presentPodcast:v13 episodeUuid:v12 episodeNotAvailable:v10 podcastTab:1 startPlayback:0 animated:0];

      goto LABEL_13;
    }
  }

  if (!*(a1 + 48))
  {
    return;
  }

  v13 = [*(a1 + 72) appController];
  [v13 openStoreURL:*(a1 + 48)];
LABEL_13:
}

void sub_100162934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100162968(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 hasPrefix:@"pid"])
  {
    v3 = [v7 componentsSeparatedByString:@"="];
    v4 = [v3 lastObject];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_100162E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100162E34(uint64_t a1)
{
  v18 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  if (v18)
  {
    v2 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
    v3 = [v18 uuid];
    [v2 unsafeEnableSubscriptionOnPodcastUUID:v3 from:3 context:*(a1 + 32)];
  }

  else
  {
    v4 = [*(a1 + 48) showType];
    v19 = [MTPodcast showTypeFromString:v4];

    v5 = *(a1 + 32);
    v17 = *(a1 + 40);
    v6 = [*(a1 + 48) showType];
    v7 = [*(a1 + 48) title];
    v8 = [*(a1 + 48) author];
    v9 = [*(a1 + 48) provider];
    v10 = [*(a1 + 48) imageURL];
    v11 = [*(a1 + 48) feedDescription];
    v12 = [*(a1 + 48) displayType];
    v13 = [*(a1 + 48) showSpecificUpsellCopy];
    v18 = [MTPodcast insertNewPodcastInManagedObjectContext:v5 subscribed:1 feedUrl:v17 showType:v19 showTypeInFeed:v6 title:v7 author:v8 provider:v9 imageUrl:v10 description:v11 displayType:v12 showSpecificUpsellCopy:v13];

    [v18 setStoreCollectionId:{objc_msgSend(*(a1 + 56), "storeCollectionId")}];
    [v18 setImporting:1];
    +[NSDate timeIntervalSinceReferenceDate];
    [v18 setUpdatedDate:?];
    +[NSDate timeIntervalSinceReferenceDate];
    [v18 setModifiedDate:?];
  }

  v14 = [v18 uuid];
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void sub_100163180(uint64_t a1)
{
  v7 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (([v7 feedUpdateNeedsRetry] & 1) == 0)
  {
    if ([v7 showTypeInFeedResolvedValue] == 2)
    {
      v2 = *(a1 + 48);
      goto LABEL_5;
    }

    v3 = [v7 showTypeInFeedResolvedValue];
    v2 = *(a1 + 48);
    if (v3 == 4)
    {
LABEL_5:
      if (([v2 _addLatestSeasonToPodcast:v7] & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if ([v2 _addNewestEpisodeToPodcast:v7])
    {
LABEL_6:
      [*(a1 + 32) saveInCurrentBlock];
    }
  }

LABEL_7:
  v4 = [*(a1 + 56) location];
  v5 = +[MTStoreReportingController sharedInstance];
  v6 = [v7 dictionaryRepresentation];
  [v5 reportWithType:4 userInfo:v6 location:v4 reason:0];
}

void sub_10016349C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001634B4(uint64_t a1)
{
  result = [*(a1 + 32) _addLatestSeasonForSerialPodcast:*(a1 + 40)];
  if (result)
  {
    result = [*(a1 + 48) saveInCurrentBlock];
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

void sub_100163750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100163768(uint64_t a1)
{
  v2 = [*(a1 + 32) newestFullEpisode];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) newestEpisode];
  }

  v5 = v4;

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _addEpisode:v5 toMyEpisodesInPodcast:*(a1 + 32) persist:1];
}

void sub_100163910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100163928(uint64_t a1)
{
  result = [*(a1 + 32) metadataTimestamp];
  if (fabs(v3) <= 2.22044605e-16)
  {
    [*(a1 + 32) setPlayState:2 manually:0 source:6];
    [*(a1 + 32) unsuppressAutomaticDownloadsIfNeeded];
    [*(a1 + 32) setMetadataTimestamp:0.0];
    [*(a1 + 32) setMetadataFirstSyncEligible:1];
    result = [*(a1 + 32) setIsNew:1];
    if (*(a1 + 56) == 1)
    {
      result = [*(a1 + 40) saveInCurrentBlock];
      *(*(*(a1 + 48) + 8) + 24) = result;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

id sub_100163E6C(uint64_t a1, uint64_t a2)
{
  v4 = _MTLogCategoryFeedUpdate();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v8 = 134217984;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Podcast exists in the store. Using MAPI for feed update for adamId: %ld", &v8, 0xCu);
    }

    [*(a1 + 40) setStoreCollectionId:a2];
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Podcast does not exist in the store. Doing RSS feed update for feedUrl: %@", &v8, 0xCu);
    }
  }

  return [*(a1 + 48) _feedUpdateAndSubscribeToPodcast:*(a1 + 40) feedUrl:*(a1 + 56) adamId:a2];
}

id sub_1001644AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) preProcessFeedHookWithParams:*(a1 + 40) feed:a2 requestUrl:*(a1 + 48) needsUpdate:a3 ctx:a4];
  v6 = _MTLogCategoryFollowing();
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, v8, "MTSubscriptionManager pre process complete", "", v10, 2u);
  }

  return v5;
}

void sub_100164570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) postProcessFeedHookWithParams:*(a1 + 40) podcastUuid:a2 ctx:a3];
  v4 = _MTLogCategoryFollowing();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v6, "MTSubscriptionManager post process complete", "", v7, 2u);
  }
}

void sub_10016460C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) absoluteString];
  [v6 removeSubscribeParamsForFeedUrl:v7];

  v8 = _MTLogCategoryFollowing();
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11[0] = 67109378;
    v11[1] = a2;
    v12 = 2112;
    v13 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "MTSubscriptionManager subscribe", "success: %i, error: %@", v11, 0x12u);
  }
}

void sub_100164C20(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v14 = [v2 localizedStringForKey:@"FOLLOW_FAIL" value:&stru_1004F3018 table:0];

  if (+[PFClientUtil isRunningOnInternalOS])
  {
    v3 = [*(a1 + 32) description];
    v4 = [NSString stringWithFormat:@" INTERNAL: %@", v3];

    v5 = [v14 stringByAppendingString:v4];

    v14 = v5;
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"FOLLOW_FAIL_TITLE" value:&stru_1004F3018 table:0];
  v8 = [UIAlertController alertControllerWithTitle:v7 message:v14 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1004F3018 table:0];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v8 addAction:v11];

  v12 = +[MTApplication appController];
  v13 = [v12 rootViewController];

  [v13 presentViewController:v8 animated:1 completion:0];
}

void sub_100164F2C(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("UNUserNotificationCenter.workQueue", v3);
  v2 = qword_100583DD0;
  qword_100583DD0 = v1;
}

void sub_1001650EC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _mt_identifiersMatchingPodcastUuid:*(a1 + 40) inNotificationRequests:a2];
  if ([v3 count])
  {
    [*(a1 + 32) removePendingNotificationRequestsWithIdentifiers:v3];
  }
}

void sub_100165154(uint64_t a1, void *a2)
{
  v4 = [a2 mt_compactMap:&stru_1004DE1F0];
  v3 = [*(a1 + 32) _mt_identifiersMatchingPodcastUuid:*(a1 + 40) inNotificationRequests:?];
  if ([v3 count])
  {
    [*(a1 + 32) removeDeliveredNotificationsWithIdentifiers:v3];
  }
}

void sub_1001653F0(void *a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %lu pending notifications.", buf, 0xCu);
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100165528;
  v8[3] = &unk_1004DE1B0;
  v8[4] = v6;
  v9 = v5;
  [v6 _mt_identifiersMatchingDeletedEpisodesOnPodcastUuid:v9 inNotificationRequests:v3 ctx:v7 completion:v8];
}

void sub_100165528(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) removePendingNotificationRequestsWithIdentifiers:v3];
    v4 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 count];
      v6 = *(a1 + 40);
      v7 = 134218242;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removed %lu pending notifications for podcastUUID: %@", &v7, 0x16u);
    }
  }
}

void sub_10016560C(void *a1, void *a2)
{
  v3 = [a2 mt_compactMap:&stru_1004DE210];
  v4 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %lu delivered notifications.", buf, 0xCu);
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016575C;
  v8[3] = &unk_1004DE1B0;
  v8[4] = v6;
  v9 = v5;
  [v6 _mt_identifiersMatchingDeletedEpisodesOnPodcastUuid:v9 inNotificationRequests:v3 ctx:v7 completion:v8];
}

void sub_10016575C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) removeDeliveredNotificationsWithIdentifiers:v3];
    v4 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 count];
      v6 = *(a1 + 40);
      v7 = 134218242;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removed %lu delivered notifications for podcastUUID: %@", &v7, 0x16u);
    }
  }
}

void sub_1001658D4(uint64_t a1, void *a2)
{
  v5 = [a2 mt_compactMap:&stru_1004DE230];
  v3 = [*(a1 + 32) _mt_identifiersMatchingPlayerItemsInNotificationRequests:?];
  if ([v3 count])
  {
    [*(a1 + 32) removeDeliveredNotificationsWithIdentifiers:v3];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

id sub_100165A20(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  if ([UNNotificationRequest mt_isUuidRequestIdentifier:v3 matchForPodcastUuid:*(a1 + 32)])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100165EE4(uint64_t a1)
{
  v2 = [MTEpisode predicateForEpisodeUuids:*(a1 + 32)];
  v3 = [*(a1 + 40) hasAnyObjectsInEntity:kMTEpisodeEntityName satisfyingPredicate:v2];
  v4 = _MTLogCategoryNotifications();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not deleting notification. Notification contains episode that is not deleted. Episode uuids in notification: %@ podcastUuid: %@", &v9, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 48);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleting notification for podcastUuid: %@", &v9, 0xCu);
    }

    [*(*(*(a1 + 72) + 8) + 40) addObject:*(a1 + 64)];
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_10016603C(uint64_t a1)
{
  v2 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deleting %lu notifications.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_100166118(id a1, UNNotificationRequest *a2)
{
  v2 = [(UNNotificationRequest *)a2 identifier];
  if ([UNNotificationRequest mt_isPlayerItemRequestIdentifier:v2])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1001666EC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsInEntity:kMTEpisodeEntityName predicate:*(a1 + 40) propertiesToFetch:*(a1 + 48) batchSize:0];
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [v2 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MTEpisodeUpdaterCache loaded %lu episodes", buf, 0xCu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001668E0;
  v16[3] = &unk_1004DE308;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v17 = v9;
  v18 = v8;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v19 = v15;
  v20 = v14;
  [v2 enumerateObjectsUsingBlock:v16];
}

void sub_1001668E0(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuid];
  if ([v4 length])
  {
    v5 = [v3 title];
    v6 = [v3 enclosureURL];
    v7 = [v3 guid];
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 persistentID]);
    v9 = [v3 assetURL];
    if (v5)
    {
      v10 = [a1[4] objectForKey:v5];
      if (!v10)
      {
        v10 = objc_alloc_init(NSMutableArray);
        [a1[4] setObject:v10 forKey:v5];
      }

      [v10 addObject:v4];
    }

    if (v6)
    {
      [a1[5] setObject:v4 forKey:v6];
    }

    if (v7)
    {
      [a1[6] setObject:v4 forKey:v7];
    }

    if (v8)
    {
      [a1[7] setObject:v4 forKey:v8];
    }

    if (v9)
    {
      [a1[8] setObject:v4 forKey:v9];
    }

    [a1[9] setObject:v3 forKey:v4];
    [a1[10] setObject:v4 forKey:v4];
    [a1[11] addObject:v4];
  }

  else
  {
    v11 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 title];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MTEpisodeUpdaterCache encountered episode without UUID %@", &v13, 0xCu);
    }
  }
}

void sub_10016730C(void *a1)
{
  v2 = [*(a1[4] + 24) objectForUuid:a1[5] entityName:kMTEpisodeEntityName];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100167368(void *a1)
{
  v2 = [*(a1[4] + 24) objectForUuid:a1[5] entityName:kMTEpisodeEntityName];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001679A8(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___MTShowsPreferencesDataStore;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone:{0), "init"}];
  v2 = qword_100583DE0;
  qword_100583DE0 = v1;
}

double variable initialization expression of LibraryDataProvider.$__lazy_storage_$_libraryActionController@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of LibraryDataProvider.podcastStateController()
{
  if (qword_100572770 != -1)
  {
    swift_once();
  }
}

uint64_t variable initialization expression of LibraryDataProvider.hudPresenter()
{
  type metadata accessor for HUDPresenter();

  return swift_allocObject();
}

uint64_t variable initialization expression of LibraryEpisodePagePresenter.headerButtonItems()
{
  sub_100168088(&unk_100572950);
  swift_allocObject();
  return CurrentValueSubject.init(_:)();
}

uint64_t variable initialization expression of LibraryEpisodePagePresenter.pageContent()
{
  v0 = type metadata accessor for PageContent();
  __chkstk_darwin(v0);
  *(&v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0)) = 0;
  swift_storeEnumTagMultiPayload();
  sub_100168088(&unk_100578DB0);
  swift_allocObject();
  return CurrentValueSubject.init(_:)();
}

uint64_t variable initialization expression of LibraryEpisodePagePresenter.pageHeader()
{
  static PageHeader.none.getter();
  sub_100168088(&qword_100572960);
  swift_allocObject();
  return CurrentValueSubject.init(_:)();
}

uint64_t variable initialization expression of LibraryEpisodePagePresenter.interactionContextPage@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for InteractionContext.Page();
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of LibraryEpisodePagePresenter.pageID()
{
  static MetricsPageType.episode.getter();
  v0 = static MetricsPageID.unknown.getter();
  v2 = v1;
  v3._countAndFlagsBits = 95;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = v0;
  v4._object = v2;
  String.append(_:)(v4);

  return PageID.init(with:)();
}

uint64_t sub_100168000@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100168088(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of ImplicitFollowsDecayCoordinator.debounceQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100009F1C(0, &qword_1005729D0);
  static DispatchQoS.background.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10001001C(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_10001378C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100168310(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10016836C(uint64_t *a1)
{
  sub_100168088(a1);
  swift_allocObject();
  return PassthroughSubject.init()();
}

void *variable initialization expression of ImplicitFollowsDecayCoordinator.subscriptions()
{
  if (!(_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_10016B138(_swiftEmptyArrayStorage);
}

uint64_t sub_100168428(void (*a1)(__n128))
{
  v2 = type metadata accessor for OSSignposter();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  return (*(v3 + 8))(v6, v2);
}

id variable initialization expression of UIAppSettingsBridge.app()
{
  v0 = [objc_opt_self() sharedApplication];

  return v0;
}

uint64_t variable initialization expression of FeedManager.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005729D0);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10001001C(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_10001378C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of ForegroundSyncUtil.defaults()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  return v0;
}

uint64_t variable initialization expression of ForegroundSyncUtil.workQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005729D0);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10001001C(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_10001378C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of ForegroundSyncUtil.syncController()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t variable initialization expression of ForegroundSyncUtil.categoriesSyncUtil()
{
  v0 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v3 = type metadata accessor for LibraryImageProvider();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v29 = sub_100009F1C(0, &unk_100572A00);
  v30 = &protocol witness table for IMURLBag;
  v28 = v7;
  v8 = type metadata accessor for MediaRequestController();
  v9 = [objc_allocWithZone(v8) init];
  v26 = v8;
  v27 = &protocol witness table for MediaRequestController;
  v25 = v9;
  v10 = type metadata accessor for MAPICategoriesProvider();
  swift_allocObject();
  v11 = MAPICategoriesProvider.init(mediaRequestController:)();
  v26 = v10;
  v27 = &protocol witness table for MAPICategoriesProvider;
  v25 = v11;
  static LibraryImageProvider.background.getter();
  type metadata accessor for CategoryIngester();
  v12 = swift_allocObject();
  v12[5] = v3;
  v12[6] = &protocol witness table for LibraryImageProvider;
  v13 = sub_10000E680(v12 + 2);
  (*(v4 + 32))(v13, v6, v3);
  v14 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v15 = [v14 objectForKey:kMTLastCategoriesSyncDateDefaultKey];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    v16 = type metadata accessor for Date();
    v17 = swift_dynamicCast();
    (*(*(v16 - 8) + 56))(v2, v17 ^ 1u, 1, v16);
  }

  else
  {
    sub_10016B3CC(v24);
    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  }

  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.uiAssetPreparationQueue.getter();
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 importContext];

  type metadata accessor for CategoriesSyncUtil();
  swift_allocObject();
  return CategoriesSyncUtil.init(categoriesSyncThresholdProvider:categoriesProvider:categoryIngester:lastCategoriesSyncDate:queue:ctx:)();
}

double variable initialization expression of ForegroundSyncUtil.storefrontChangeObserver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id variable initialization expression of UpgradeMediaLibraryEntryArtwork.musicLibrary()
{
  v0 = [objc_opt_self() autoupdatingSharedLibrary];

  return v0;
}

uint64_t variable initialization expression of EpisodeDownloadsManager.delegateQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v11[1] = sub_100009F1C(0, &qword_1005729D0);
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  type metadata accessor for EpisodeDownloadsManager();
  sub_100168088(&qword_100572A10);
  v6 = _typeName(_:qualified:)();
  v8 = v7;

  v12 = v6;
  v13 = v8;
  v9._countAndFlagsBits = 0x746167656C65642ELL;
  v9._object = 0xEE00657565755165;
  String.append(_:)(v9);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10001001C(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_10001378C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of EpisodeDownloadsManager.accessQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v9[1] = sub_100009F1C(0, &qword_1005729D0);
  type metadata accessor for EpisodeDownloadsManager();
  sub_100168088(&qword_100572A10);
  v10 = _typeName(_:qualified:)();
  v11 = v6;
  v7._countAndFlagsBits = 0x517373656363612ELL;
  v7._object = 0xEC00000065756575;
  String.append(_:)(v7);
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_10001001C(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_10001378C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of EpisodeDownloadsManager.inMemoryStorage()
{
  type metadata accessor for JobPipelineInMemoryStorage();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(NSRecursiveLock) init];
  *(v0 + 24) = _swiftEmptyArrayStorage;
  return v0;
}

void *sub_10016946C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100169498@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100169550(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1001695A4(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1001695FC@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

Swift::Int sub_100169624()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100169698()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001696F0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100169768(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001697E8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_10016983C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100169894(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1001698E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10016BDA0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100169928()
{
  sub_10001001C(&qword_100572D60, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_10001001C(&qword_100572D68, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1001699E4()
{
  sub_10001001C(&qword_1005730D0, type metadata accessor for ProgressUserInfoKey);
  sub_10001001C(&qword_1005730D8, type metadata accessor for ProgressUserInfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100169AA0()
{
  sub_10001001C(&qword_1005730C0, type metadata accessor for Name);
  sub_10001001C(&qword_1005730C8, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100169B5C()
{
  sub_10001001C(&qword_1005730E0, type metadata accessor for FileAttributeKey);
  sub_10001001C(&qword_1005730E8, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100169C18()
{
  sub_10001001C(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey);
  sub_10001001C(&qword_100573128, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100169CD4()
{
  sub_10001001C(&qword_100573110, type metadata accessor for OpenURLOptionsKey);
  sub_10001001C(&qword_100573118, type metadata accessor for OpenURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100169D90()
{
  sub_10001001C(&qword_100573100, type metadata accessor for LaunchOptionsKey);
  sub_10001001C(&qword_100573108, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100169E4C@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100169E94()
{
  sub_10001001C(&qword_1005730F0, type metadata accessor for ActivityType);
  sub_10001001C(&qword_1005730F8, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100169F50()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100169F8C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100169FE0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10016A054()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_10016A0DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&unk_100572D70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010430(v4, v13, &qword_100578590);
      result = sub_100202028(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10016B7CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016A218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_100572E70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000F9A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016A31C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_100572D40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010430(v4, &v11, &qword_100572D48);
      v5 = v11;
      result = sub_100202D0C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10016B7CC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016A444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&unk_100572CA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010430(v4, &v13, &qword_100581D00);
      v5 = v13;
      v6 = v14;
      result = sub_10000F9A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10016B7CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016A574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_100572E78);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000F9A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016A688(uint64_t a1)
{
  v2 = sub_100168088(&unk_100572EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_1005813A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &unk_100572EE0);
      result = sub_10020206C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MediaRequest.ContentType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016A870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_100572D50);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000F9A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016A998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&unk_100572D80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010430(v4, &v15, &unk_10057A6C0);
      v5 = v15;
      v6 = v16;
      result = sub_10000F9A8(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016AADC(uint64_t a1)
{
  v2 = sub_100168088(&qword_100572D90);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_100572D98);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &qword_100572D90);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000F9A8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for EpisodeMetadata(0);
      result = sub_10016BDD8(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for EpisodeMetadata);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016ACC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_100572F88);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010430(v4, &v11, &qword_100572F90);
      v5 = v11;
      result = sub_100202D0C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10016B7CC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016ADEC(uint64_t a1)
{
  v2 = sub_100168088(&unk_100572E60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100168088(&qword_100579C50);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100010430(v9, v5, &unk_100572E60);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000F9A8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for MediaLibraryPid();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

Swift::Int sub_10016AFD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_100572F98);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_10016BE40(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_10016BE40(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_10016BE9C(v18);
        if (v11)
        {
          sub_10016BE9C(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_10016B138(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100168088(&unk_100572F60);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10001001C(&unk_100575AF0, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10001001C(&qword_100572F70, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10016B3CC(uint64_t a1)
{
  v2 = sub_100168088(&unk_1005783D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_10016B7CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Int sub_10016B7DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_100572D58);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10016B918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100168088(&qword_1005817A0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_10016BA80(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntent.Option();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100168088(&qword_100572D28);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10001001C(&qword_100572D30, &type metadata accessor for PlaybackIntent.Option);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10001001C(&qword_100572D38, &type metadata accessor for PlaybackIntent.Option);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10016BDA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10016BDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016BEFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016BF1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_10016BFE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10016C000(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10016C054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_10016C0A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10016C0B0(uint64_t a1, int a2)
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

uint64_t sub_10016C0D0(uint64_t result, int a2, int a3)
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

__n128 sub_10016C888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10016C8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10016C8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016C974(uint64_t a1, int a2)
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

uint64_t sub_10016C9BC(uint64_t result, int a2, int a3)
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

uint64_t sub_10016C9F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10016CA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016CA90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6465776F6C6C6F66;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x65726F7473;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001004643E0;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7972617262696CLL;
    }

    else
    {
      v4 = 0x6465776F6C6C6F66;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xD000000000000012;
  v8 = 0x80000001004643E0;
  if (a2 != 2)
  {
    v7 = 0x65726F7473;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x7972617262696CLL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10016CBCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "bytes";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "ts.downloads.episodes.restore";
      v4 = 0xD00000000000002DLL;
    }

    else
    {
      v5 = "ts.downloads.episodes.headers";
      v4 = 0xD00000000000002FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000002DLL;
    }

    else
    {
      v4 = 0xD000000000000033;
    }

    if (v3)
    {
      v5 = "sodes.userInitiated";
    }

    else
    {
      v5 = "bytes";
    }
  }

  if (a2 > 1u)
  {
    v2 = "ts.downloads.episodes.restore";
    v6 = "ts.downloads.episodes.headers";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD00000000000002DLL;
    }

    else
    {
      v8 = 0xD00000000000002FLL;
    }
  }

  else
  {
    v6 = "sodes.userInitiated";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000002DLL;
    }

    else
    {
      v8 = 0xD000000000000033;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10016CCF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1936484398;
  }

  else
  {
    v3 = 0x7261646E6174732ELL;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1936484398;
  }

  else
  {
    v5 = 0x7261646E6174732ELL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10016CD94()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016CE14()
{
  String.hash(into:)();
}

Swift::Int sub_10016CE80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016CEFC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DE510, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10016CF5C(uint64_t *a1@<X8>)
{
  v2 = 1936484398;
  if (!*v1)
  {
    v2 = 0x7261646E6174732ELL;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10016CFA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10016CFFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10016D044()
{
  v1 = *v0;
  strcpy(v3, "ConfigType: ");
  String.append(_:)(v1);
  return v3[0];
}

uint64_t sub_10016D098(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10016D0C8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = 1936484398;
  }

  else
  {
    v3 = 0x7261646E6174732ELL;
  }

  if (a3)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  v7._countAndFlagsBits = a1;
  v7._object = a2;

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  String.append(_:)(v7);

  return 0x496E6F6973736553;
}

Swift::Int sub_10016D184()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016D220()
{
  String.hash(into:)();
  String.hash(into:)();
}

Swift::Int sub_10016D29C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016D340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (v2)
    {
      v6 = 1936484398;
    }

    else
    {
      v6 = 0x7261646E6174732ELL;
    }

    if (v2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE900000000000064;
    }

    if (v3)
    {
      v8 = 1936484398;
    }

    else
    {
      v8 = 0x7261646E6174732ELL;
    }

    if (v3)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE900000000000064;
    }

    if (v6 == v8 && v7 == v9)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v5 & 1;
}

unint64_t sub_10016D418()
{
  result = qword_1005731C0;
  if (!qword_1005731C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005731C0);
  }

  return result;
}

Swift::Int sub_10016D478()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016D52C()
{
  String.hash(into:)();
}

Swift::Int sub_10016D5CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10016D67C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016DCDC(*a1);
  *a2 = result;
  return result;
}

void sub_10016D6AC(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002DLL;
  v3 = "ts.downloads.episodes.restore";
  v4 = 0xD00000000000002FLL;
  if (*v1 == 2)
  {
    v4 = 0xD00000000000002DLL;
  }

  else
  {
    v3 = "ts.downloads.episodes.headers";
  }

  if (*v1)
  {
    v5 = "sodes.userInitiated";
  }

  else
  {
    v2 = 0xD000000000000033;
    v5 = "bytes";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_10016D720(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10016D7BC()
{
  v0._countAndFlagsBits = 0x7261646E6174732ELL;
  v0._object = 0xE900000000000064;
  v1 = String.hasSuffix(_:)(v0);

  if (v1 || (v2._countAndFlagsBits = 1936484398, v2._object = 0xE400000000000000, v3 = String.hasSuffix(_:)(v2), , v3))
  {
    v4 = String.count.getter();

    sub_10016D720(v4);

    v5 = static String._fromSubstring(_:)();
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for PodcastsDownloader(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsDownloader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionConfigFlavor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionConfigFlavor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10016DBC8()
{
  result = qword_1005731D0;
  if (!qword_1005731D0)
  {
    sub_100168310(&qword_1005731D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005731D0);
  }

  return result;
}

unint64_t sub_10016DC30()
{
  result = qword_1005731E0;
  if (!qword_1005731E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005731E0);
  }

  return result;
}

unint64_t sub_10016DC88()
{
  result = qword_1005731E8;
  if (!qword_1005731E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005731E8);
  }

  return result;
}

unint64_t sub_10016DCDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DE5B0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10016DD28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      _StringGuts.grow(_:)(19);

      sub_100181AE8();
      v3._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v3);

      return 0xD000000000000011;
    }

    _StringGuts.grow(_:)(17);

    v6 = 0x20636972656E6547;
    swift_getErrorValue();
  }

  else
  {
    _StringGuts.grow(_:)(17);

    v6 = 0x206B726F7774654ELL;
    swift_getErrorValue();
  }

  v5._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v5);

  return v6;
}

uint64_t sub_10016DEC0()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(17);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return 0x2064696C61766E49;
}

unint64_t sub_10016DF44(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v11 = 0;
    _StringGuts.grow(_:)(60);
    v4._countAndFlagsBits = 0xD00000000000002ELL;
    v4._object = 0x8000000100465280;
    String.append(_:)(v4);
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 0x3A74696D696C202CLL;
    v6._object = 0xE900000000000020;
    String.append(_:)(v6);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 46;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    return v11;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(34);

    v11 = 0xD000000000000020;
    swift_getErrorValue();
    v3._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v3);

    return v11;
  }

  v10 = 0x656C6C65636E6143;
  if (a1 ^ 1 | a2)
  {
    v10 = 0xD000000000000014;
  }

  if (a1 | a2)
  {
    return v10;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_10016E14C()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100182568(v0, qword_1005931F8);
  *sub_1001825CC(v0, qword_1005931F8) = 200;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

Swift::Int sub_10016E1DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10016E224()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10016E268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC8Podcasts11JobPipeline__job;
  swift_beginAccess();
  return sub_100182784(a1 + v4, a2, type metadata accessor for DownloadJob);
}

uint64_t sub_10016E2E0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Podcasts11JobPipeline__job;
  swift_beginAccess();
  sub_1001827F0(a2, a1 + v4);
  return swift_endAccess();
}

id sub_10016E37C()
{
  v1 = OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    [v4 setMaxConcurrentOperationCount:1];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10016E440(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900);
    OS_dispatch_queue.sync<A>(execute:)();

    v4 = v34;
    v5 = v35;
    sub_1000044A0(v33, v34);
    v6 = (*(v5 + 56))(v4, v5);
    v8 = v7;
    sub_100004590(v33);
    if (a1 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
    if (a1 != 1)
    {
LABEL_3:
      if (a1)
      {

        return;
      }

      v9 = static os_log_type_t.debug.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v10 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v33[0] = v12;
        *v11 = 136446210;
        v13 = sub_1000153E0(v6, v8, v33);

        *(v11 + 4) = v13;
        v14 = "Task %{public}s is running";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v10, v9, v14, v11, 0xCu);
        sub_100004590(v12);

        return;
      }

LABEL_14:

      return;
    }
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (!v15)
  {
    v9 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v10 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33[0] = v12;
      *v11 = 136446210;
      v22 = sub_1000153E0(v6, v8, v33);

      *(v11 + 4) = v22;
      v14 = "Task %{public}s state got change into suspended, but no progress provided.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v16 = *(v15 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1000109E4(v32, v33);
  v17 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v18 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v32[0] = v20;
    *v19 = 136446210;
    v21 = sub_1000153E0(v6, v8, v32);

    *(v19 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v18, v17, "Task %{public}s has been suspended", v19, 0xCu);
    sub_100004590(v20);
  }

  else
  {
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v23 = v34;
    v24 = v35;
    sub_1000044A0(v33, v34);
    v25 = (*(v24 + 16))(v23, v24);
    v26 = v34;
    v27 = v35;
    sub_1000044A0(v33, v34);
    v28 = (*(v27 + 96))(v26, v27);
    v29 = v34;
    v30 = v35;
    sub_1000044A0(v33, v34);
    v31 = (*(v30 + 104))(v29, v30);
    sub_10017FB88(v25, v28, v31, 1);
  }

  sub_100004590(v33);
}