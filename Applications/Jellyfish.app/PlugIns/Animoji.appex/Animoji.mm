void sub_100001E50(id a1)
{
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
    qword_10003E008 = 0x4052000000000000;
  }

  else
  {
    v1 = +[UIDevice currentDevice];
    v2 = [v1 userInterfaceIdiom];
    v3 = 46.0;
    if (v2 == 5)
    {
      v3 = 72.0;
    }

    qword_10003E008 = *&v3;
  }
}

id sub_1000027A0(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

id sub_100002804(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_100003168(uint64_t a1)
{
  v1 = [*(a1 + 32) puppetCollectionView];
  [v1 reloadData];
}

id sub_100003224(uint64_t a1)
{
  [*(a1 + 32) updateSelectedForVisibleCells];
  v2 = *(a1 + 32);

  return [v2 updateHighlightedForVisibleCells];
}

id sub_100003384(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setSuspendAutoScrolling:0];
  }

  [*(a1 + 32) reloadData];
  v2 = *(a1 + 32);

  return [v2 scrollToSelection];
}

void sub_1000035D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000035F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained plusButtonCellEnabled])
  {
    v1 = [WeakRetained delegate];
    [v1 puppetCollectionViewControllerDidRequestMemojiLaunch:WeakRetained];
  }
}

id sub_100003728(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) selectedRowIndex];
  v4 = v3 == [*(a1 + 48) row];

  return [v2 displaySelection:v4];
}

id sub_100004128(uint64_t a1)
{
  [*(a1 + 32) setTintColor:0];
  [*(a1 + 32) setThumbRequestId:-1];
  [*(a1 + 32) setMaxSize:{1.79769313e308, 1.79769313e308}];
  v2 = [*(a1 + 32) puppetImgView];
  [v2 setImage:0];

  v3 = [*(a1 + 32) puppetImgView];
  [v3 setHidden:1];

  v4 = [*(a1 + 32) imageButton];
  [v4 setBackgroundImage:0 forState:0];

  v5 = [*(a1 + 32) imageButton];
  [v5 setHidden:1];

  [*(a1 + 32) setImageButtonHandlerBlock:0];
  [*(a1 + 32) displayHighlight:0];
  v6 = *(a1 + 32);

  return [v6 displaySelection:0];
}

void sub_10000452C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained thumbRequestId] == *(a1 + 40))
  {
    [WeakRetained setPuppetThumbnail:v4 alpha:1.0 maxSize:{1.79769313e308, 1.79769313e308}];
  }
}

void sub_100004A34(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingHighlightBounceAnimation];

  if (v2)
  {
    v4 = [*(a1 + 32) pendingHighlightBounceAnimation];
    [*(a1 + 32) setPendingHighlightBounceAnimation:0];
  }

  else
  {
    v4 = 0;
  }

  v3 = [*(a1 + 32) pendingSelectionAnimation];

  if (v3)
  {
    v3 = [*(a1 + 32) pendingSelectionAnimation];
    [*(a1 + 32) setPendingSelectionAnimation:0];
  }

  if (v4)
  {
    v4[2](v4);
  }

  if (v3)
  {
    v3[2](v3);
  }
}

void sub_100004B0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v2 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v2;
  v5[2] = sub_100004C08;
  v5[3] = &unk_100034850;
  v5[4] = v1;
  v8 = *(a1 + 80);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004C5C;
  v3[3] = &unk_100034878;
  v4 = *(a1 + 40);
  [UIView _animateWithDuration:0 delay:v1 options:v5 factory:v3 animations:0.1 completion:0.0];
}

void sub_100004C08(uint64_t a1)
{
  v1 = [*(a1 + 32) contentContainerView];
  [v1 setTransform:&v2];
}

id sub_100004DA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_100004E3C;
  v6 = &unk_1000348C8;
  v7 = v1;
  return [UIView _animateWithDuration:0 delay:0.1 options:0.0 factory:_NSConcreteStackBlock animations:3221225472 completion:sub_100004E3C, &unk_1000348C8, v1, *(a1 + 40)];
}

void sub_100004E3C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) borderView];
  [v2 setAlpha:v1];
}

uint64_t sub_1000079EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100007A04(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) view];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) view];
  v6 = [v5 backgroundColor];
  [*(*(*(a1 + 48) + 8) + 40) setBackgroundColor:v6];

  [*(a1 + 32) addChildViewController:*(*(a1 + 32) + 32)];
  [*(*(a1 + 32) + 8) addSubview:*(*(*(a1 + 48) + 8) + 40)];
  result = [*(*(*(a1 + 48) + 8) + 40) setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *(a1 + 40);
  if (v8)
  {
    [*(*(a1 + 32) + 32) displayAvatarRecordWithIdentifier:v8 animated:0];
    v9 = *(*(a1 + 32) + 32);

    return [v9 reloadData];
  }

  return result;
}

void sub_100007B10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained displaysLaunchScreen])
  {
    v2 = &v4;
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v3 = sub_100007C20;
  }

  else
  {
    v2 = v6;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v3 = sub_100007BDC;
  }

  v2[2] = v3;
  v2[3] = &unk_100034788;
  v2[4] = WeakRetained;
  [WeakRetained performWhileOverridingPresentationStyle:0 block:{v4, v5}];
}

id sub_100007BDC(uint64_t a1)
{
  [*(a1 + 32) updateUIState:3 animated:0];
  v2 = *(a1 + 32);

  return [v2 updateLayoutForPresentationStyle];
}

id sub_100007C20(uint64_t a1)
{
  if ([*(a1 + 32) presentsLaunchScreenInFullScreenModal])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 32) updateUIState:v2 animated:0];
  v3 = *(a1 + 32);

  return [v3 updateLayoutForPresentationStyle];
}

void sub_100008860(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 240);
  v2 = [UIImage imageNamed:@"tap-to-radar-96-recording"];
  [v1 setImage:v2 forState:0];
}

id sub_1000090CC(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100009100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [WeakRetained waitingOnPresentationStyleRequestFulfillment];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] request expanded timer fire, waiting: %i", v7, 8u);
  }

  if (([WeakRetained waitingOnPresentationStyleRequestFulfillment] & 1) != 0 || (+[BaseMessagesViewController pendingChildViewController](BaseMessagesViewController, "pendingChildViewController"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    [WeakRetained requestPresentationStyle:*(a1 + 48)];
    v4 = dispatch_time(0, 500000000);
    dispatch_after(v4, &_dispatch_main_q, *(*(*(a1 + 32) + 8) + 40));
  }

  else
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void sub_100009234(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateUIState:1 animated:0];
  [WeakRetained updateLayoutForPresentationStyle];
}

void sub_10000964C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  [WeakRetained updateInterfaceOrientation];

  [*(a1 + 32) updateLayoutForPresentationStyle];
  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

void sub_100009E1C(uint64_t a1)
{
  if ([*(a1 + 32) presentationStyle] != 1)
  {
    v2 = *(a1 + 32);
    v4 = [v2 parentMessagesViewController];
    v3 = [v4 launchViewController];
    [v2 launchViewControllerDidCancel:v3];
  }
}

void sub_10000AFE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  [WeakRetained setContentMode:4];
}

void sub_10000B650(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 376);
  WeakRetained = objc_loadWeakRetained((v2 + 144));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 464);
    v7 = [WeakRetained arSession];
    v12[0] = 67109632;
    v12[1] = v5;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = [v7 state];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] interfaceObscuredByOverlayOrPresentationChanged obscured %i; local sessionState = %lu; actual sessionState %lu", v12, 0x1Cu);
  }

  if (v3 == 3)
  {
    if (*(a1 + 40) == 1)
    {
      [WeakRetained setFaceTrackingPaused:1];
      [*(*(a1 + 32) + 616) didPauseFaceTracking];
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      LOWORD(v12[0]) = 0;
      v11 = "[Jellyfish] pausing face tracking due to strong popover";
    }

    else
    {
      if (![WeakRetained faceTrackingIsPaused])
      {
        goto LABEL_27;
      }

      [WeakRetained setFaceTrackingPaused:0];
      [*(*(a1 + 32) + 616) didResumeFaceTracking];
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      LOWORD(v12[0]) = 0;
      v11 = "[Jellyfish] resuming face tracking after strong popover";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    goto LABEL_27;
  }

  if (v3 != 5)
  {
    if (v3 == 4 && *(a1 + 40) == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] forcing recording to stop", v12, 2u);
      }

      [*(a1 + 32) stopRecordingAndPlayPreview:0];
      [*(a1 + 32) discardRecording];
    }

    goto LABEL_27;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 352);
  if (*(a1 + 40) != 1)
  {
    if (v9 == 1 && *(v8 + 345) == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] playing preview once", v12, 2u);
      }

      [*(a1 + 32) playPreviewOnce];
    }

    goto LABEL_27;
  }

  if (v9)
  {
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] forcing preview to stop", v12, 2u);
  }

  [*(a1 + 32) stopPreviewing];
  [*(a1 + 32) fadeOut:*(*(a1 + 32) + 232)];
  v10 = 1;
LABEL_28:
  *(*(a1 + 32) + 345) = v10;
}

void sub_10000BFD4(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:@"Log Facetracking" message:@"If puppet related preferredStyle:set Log Facetracking in Internal Settings > Animoji", 1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C134;
  v8[3] = &unk_100034990;
  v8[4] = *(a1 + 32);
  v3 = [UIAlertAction actionWithTitle:@"File Radar Anyway" style:0 handler:v8];
  [v2 addAction:v3];

  v4 = [UIAlertAction actionWithTitle:@"Back Out" style:1 handler:&stru_1000349D0];
  [v2 addAction:v4];

  [v2 _setShouldAlignToKeyboard:0];
  v5 = [*(a1 + 32) view];
  v6 = [v5 window];
  v7 = [v6 rootViewController];
  [v7 presentViewController:v2 animated:0 completion:0];
}

id sub_10000C364(uint64_t a1)
{
  [*(a1 + 32) requestPresentationStyle:0];
  v2 = *(a1 + 32);

  return [v2 launchTapToRadar];
}

id sub_10000CD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    [*(a1 + 32) addObject:a2];
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 _launchTapToRadarWithAttachments:v5];
}

void sub_10000CFA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[58] == 2)
  {
    v3 = +[NSBundle mainBundle];
    v2 = [v3 localizedStringForKey:@"sJFARSessionFailed" value:&stru_100035080 table:@"JFStrings"];
    [v1 pauseFaceTrackingWithReason:v2];
  }
}

id sub_10000D160(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 sendVideoMessage];
  }

  else
  {
    return [v2 afterExportMovie];
  }
}

void sub_10000D4BC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D54C;
    block[3] = &unk_100034A48;
    v2 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10000D560(uint64_t a1)
{
  *(*(a1 + 32) + 648) = 1;
  if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D604;
    block[3] = &unk_100034A48;
    v2 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10000D9D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v3 localizedDescription];
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] exportMovieToURL failed: %@", &v10, 0xCu);
    }
  }

  else
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [*(a1 + 32) path];
    v7 = [v5 fileExistsAtPath:v6];

    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      LOWORD(v10) = 0;
      v9 = "[Jellyfish] exportMovieToURL succeeded";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      LOWORD(v10) = 0;
      v9 = "[Jellyfish] exportMovieToURL succeeded but file does not exist at path";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, &v10, 2u);
  }

LABEL_10:
  kdebug_trace();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] finished exporting video for TTR", &v10, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000DFA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E0B8;
  v9[3] = &unk_100034C00;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 56);
  v12 = *(a1 + 72);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v13 = *(a1 + 73);
  [WeakRetained exportMovieToURL:v4 options:v3 completionHandler:v9];
}

void sub_10000E0B8(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E1BC;
  block[3] = &unk_100034BD8;
  v10 = a2;
  v8 = *(a1 + 32);
  v3 = *(&v8 + 1);
  v4 = *(a1 + 48);
  v13 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v11 = v8;
  v12 = v6;
  v14 = *(a1 + 65);
  v7 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000E1BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 488), v2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) localizedDescription];
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] exportMovieToURL failed: %@", buf, 0xCu);
    }

    [*(a1 + 40) afterExportMovie];
  }

  else
  {
    v4 = [AXUIAvatarUtilities descriptionForAvatarWithRecord:*(a1 + 56) includeVideoPrefix:1];
    UIAccessibilityAddMetadataDescriptionToVideo();

    if (*(a1 + 72) == 1)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000E464;
      v17[3] = &unk_100034B88;
      v18 = *(a1 + 48);
      v5 = *(a1 + 64);
      v21 = *(a1 + 73);
      v6 = *(a1 + 40);
      v19 = v5;
      v20 = v6;
      [PHPhotoLibrary requestAuthorization:v17];
    }

    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 368);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10000E974;
    v14 = &unk_100034BB0;
    v9 = v7;
    v10 = *(a1 + 40);
    v15 = v9;
    v16 = v10;
    [v8 sendAttachment:v9 withAlternateFilename:0 completionHandler:&v11];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] did send video", buf, 2u);
    }

    [*(*(a1 + 40) + 616) didSendVideoWithAvatar:*(a1 + 56) duration:{*(*(a1 + 40) + 320), v11, v12, v13, v14}];
    [*(a1 + 40) afterExportMovie];
    kdebug_trace();
  }
}

void sub_10000E464(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v12 = v2;
    v13 = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000E520;
    v7[3] = &unk_100034B60;
    v8 = *(a1 + 32);
    v5 = *(a1 + 40);
    v11 = *(a1 + 56);
    v6 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_10000E520(uint64_t a1)
{
  v2 = +[PHPhotoLibrary sharedPhotoLibrary];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E630;
  v5[3] = &unk_100034AE8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000E680;
  v3[3] = &unk_100034B38;
  v4 = *(a1 + 56);
  v3[4] = *(a1 + 48);
  [v2 performChanges:v5 completionHandler:v3];
}

id sub_10000E630(uint64_t a1)
{
  result = [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:*(a1 + 32)];
  if (*(a1 + 40))
  {
    return [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:?];
  }

  return result;
}

void sub_10000E680(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E72C;
  block[3] = &unk_100034B10;
  v11 = a2;
  v12 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000E72C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 49))
    {
      v2 = @"videos";
    }

    else
    {
      v2 = @"video";
    }

    [NSString stringWithFormat:@"Successfully saved %@ to photo library", v2, v10];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] saveVideoToCameraRoll failed: %@", buf, 0xCu);
    }

    v3 = @"video";
    if (*(a1 + 49))
    {
      v3 = @"videos";
    }

    [NSString stringWithFormat:@"Saving %@ failed: %@", v3, *(a1 + 32)];
  }
  v4 = ;
  [UIAlertController alertControllerWithTitle:@"Camera Roll" message:v4 preferredStyle:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E964;
  v12 = v11[3] = &unk_100034990;
  v5 = v12;
  v6 = [UIAlertAction actionWithTitle:@"Close" style:0 handler:v11];
  [v5 addAction:v6];

  [v5 _setShouldAlignToKeyboard:0];
  v7 = [*(a1 + 40) view];
  v8 = [v7 window];
  v9 = [v8 rootViewController];
  [v9 presentViewController:v5 animated:0 completion:0];
}

void sub_10000E974(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 40) + 496), a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v4 localizedDescription];
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] sendAttachment failed: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [*(a1 + 32) path];
    v8 = [v6 fileExistsAtPath:v7];

    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] sendAttachment succeeded", buf, 2u);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] exportMovieToURL succeeded but file does not exist at path", buf, 2u);
      }

      v10 = [*(a1 + 32) path];
      v11 = [NSString stringWithFormat:@"ExportMovieToURL succeeded but file does not exist at path:%@", v10];
      v12 = *(a1 + 40);
      v13 = *(v12 + 512);
      *(v12 + 512) = v11;
    }
  }
}

void sub_10000ECF8(uint64_t a1)
{
  [*(a1 + 32) updateARSessionStateResettingState:1];
  v2 = *(a1 + 32);
  if (v2[58] == 2)
  {
    v4 = +[NSBundle mainBundle];
    v3 = [v4 localizedStringForKey:@"sJFARSessionFailed" value:&stru_100035080 table:@"JFStrings"];
    [v2 pauseFaceTrackingWithReason:v3];
  }
}

id sub_10000F708(uint64_t a1)
{
  [*(a1 + 32) updateLayoutForPresentationStyle];
  [*(a1 + 32) updateUIState:3 animated:*(a1 + 48)];
  result = [*(a1 + 32) shouldPresentPaddleView];
  if (result)
  {
    result = [*(a1 + 32) presentPaddleView];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

id sub_10000F764(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return [UIView performWithoutAnimation:*(a1 + 32)];
  }
}

void sub_10000F7A0(id *a1)
{
  [a1[4] willMoveToParentViewController:0];
  v2 = [a1[4] view];
  [v2 removeFromSuperview];

  [a1[4] removeFromParentViewController];
  v3 = [a1[5] parentMessagesViewController];
  [v3 setLaunchViewController:0];

  [a1[6] removeFromSuperview];
  v4 = [a1[5] parentMessagesViewController];
  [v4 setLaunchViewContainer:0];
}

void *sub_100010E8C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[58] == 3 && *(a1 + 40) == 1)
  {
    return [result handleInterruptionEnded];
  }

  return result;
}

id sub_100011228(uint64_t a1)
{
  result = [AVTUIControllerPresentation setPendingGlobalPresentation:0];
  *(*(a1 + 32) + 608) = 0;
  return result;
}

void sub_100011A90(uint64_t a1)
{
  v2 = [*(a1 + 32) parentMessagesViewController];
  v3 = [v2 launchViewContainer];
  [v3 setAlpha:1.0];

  v5 = [*(a1 + 32) parentMessagesViewController];
  v4 = [v5 messagesViewContainer];
  [v4 setAlpha:1.0];
}

id sub_100011B34(uint64_t a1)
{
  [*(a1 + 32) updateTapToRadarVisibilityForceHide:0];
  v2 = *(a1 + 32);

  return [v2 updateEditButtonVisibilityForceHide:0];
}

void sub_10001205C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] will insert sticker", buf, 2u);
    }

    v3 = [*(a1 + 32) stickerUsingLargeSticker:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 368);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100012290;
    v14[3] = &unk_100034C78;
    v14[4] = v4;
    [v5 insertSticker:v3 completionHandler:v14];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] did insert sticker", buf, 2u);
    }

    if ([*(a1 + 32) isExpanded])
    {
      [*(a1 + 32) requestPresentationStyle:0];
    }

    v6 = [*(*(a1 + 32) + 32) focusedRecord];
    [*(*(a1 + 32) + 616) didSendImageWithAvatar:v6];
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 BOOLForKey:@"JFDefaults_SaveStickersToCameraRoll"];

    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100012378;
      v11[3] = &unk_100034CF0;
      v9 = v3;
      v10 = *(a1 + 32);
      v12 = v9;
      v13 = v10;
      [PHPhotoLibrary requestAuthorization:v11];
    }

    *(*(a1 + 32) + 385) = 0;
  }
}

void sub_100012290(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 504), a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v4 localizedDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] insertSticker failed: %@", &v6, 0xCu);
    }
  }
}

void sub_100012378(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v10 = v2;
    v11 = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100012418;
    v7[3] = &unk_100034AE8;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_100012418(uint64_t a1)
{
  v2 = +[PHPhotoLibrary sharedPhotoLibrary];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001250C;
  v4[3] = &unk_100034788;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012570;
  v3[3] = &unk_100034CC8;
  v3[4] = *(a1 + 40);
  [v2 performChanges:v4 completionHandler:v3];
}

void sub_10001250C(uint64_t a1)
{
  v2 = [*(a1 + 32) imageFileURL];
  v1 = [PHAssetChangeRequest creationRequestForAssetFromImageAtFileURL:v2];
}

void sub_100012570(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012614;
  block[3] = &unk_100034CA0;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100012614(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = @"Successfully saved sticker to photo library";
  }

  else
  {
    v2 = [NSString stringWithFormat:@"Saving sticker failed: %@", *(a1 + 32)];
  }

  if ((*(a1 + 48) & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] saveStickerToCameraRoll failed: %@", buf, 0xCu);
  }

  [UIAlertController alertControllerWithTitle:@"Camera Roll" message:v2 preferredStyle:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001280C;
  v9 = v8[3] = &unk_100034990;
  v3 = v9;
  v4 = [UIAlertAction actionWithTitle:@"Close" style:0 handler:v8];
  [v3 addAction:v4];

  [v3 _setShouldAlignToKeyboard:0];
  v5 = [*(a1 + 40) view];
  v6 = [v5 window];
  v7 = [v6 rootViewController];
  [v7 presentViewController:v3 animated:0 completion:0];
}

void sub_100012EC0(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if ([*(a1 + 32) state] == 2 || objc_msgSend(*(a1 + 32), "state") == 1)
  {
    v2 = *(a1 + 40);
    v7[0] = v2[36];
    v7[1] = v2[28];
    v3 = [NSArray arrayWithObjects:v7 count:2];
    v4 = [v2 setRestorableValue:&__kCFBooleanTrue forKeyPath:@"hidden" onViews:v3];
    v5 = *(a1 + 40);
    v6 = *(v5 + 192);
    *(v5 + 192) = v4;
  }
}

id sub_100012FC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  [WeakRetained setAlpha:1.0];

  v3 = *(a1 + 40);

  return [v3 setAlpha:0.0];
}

id sub_100013024(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setHidden:0];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

id sub_10001358C(uint64_t a1)
{
  *(*(a1 + 32) + 320) = CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 312);
  v2 = *(a1 + 32);

  return [v2 updateRecordingTime];
}

void sub_100013CA8(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 1.2, 1.2);
  v2 = [*(*(a1 + 32) + 32) view];
  v3 = v4;
  [v2 setTransform:&v3];
}

void sub_100013F7C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 32) view];
  v2 = *&CGAffineTransformIdentity.c;
  v3[0] = *&CGAffineTransformIdentity.a;
  v3[1] = v2;
  v3[2] = *&CGAffineTransformIdentity.tx;
  [v1 setTransform:v3];
}

void sub_100013FE0(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014064;
    block[3] = &unk_100034788;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100014064(uint64_t a1)
{
  v2 = +[PHPhotoLibrary sharedPhotoLibrary];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001413C;
  v4[3] = &unk_100034788;
  v5 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000141B8;
  v3[3] = &unk_100034CC8;
  v3[4] = v5;
  [v2 performChanges:v4 completionHandler:v3];
}

void sub_10001413C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v1 = [WeakRetained faceTrackingRecordingURL];
  v2 = [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:v1];
}

void sub_1000141B8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001425C;
  block[3] = &unk_100034CA0;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001425C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = @"Successfully saved video to photo library";
  }

  else
  {
    v2 = [NSString stringWithFormat:@"Saving video failed: %@", *(a1 + 32)];
  }

  [UIAlertController alertControllerWithTitle:@"Camera Roll" message:v2 preferredStyle:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000143D4;
  v9 = v8[3] = &unk_100034990;
  v3 = v9;
  v4 = [UIAlertAction actionWithTitle:@"Close" style:0 handler:v8];
  [v3 addAction:v4];

  [v3 _setShouldAlignToKeyboard:0];
  v5 = [*(a1 + 40) view];
  v6 = [v5 window];
  v7 = [v6 rootViewController];
  [v7 presentViewController:v3 animated:0 completion:0];
}

id sub_100014DB8(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setText:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 408);

  return [v2 layoutIfNeeded];
}

void sub_100015044(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6 = a2;
  v5 = [v6 valueForKeyPath:v4];
  [v3 addObject:v5];

  [v6 setValue:a1[6] forKeyPath:a1[5]];
}

void sub_1000150C0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100015160;
  v3[3] = &unk_100034DE0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v3];
}

void sub_100015160(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v6 setValue:v7 forKeyPath:*(a1 + 40)];
}

void sub_1000152DC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
    v3 = [WeakRetained faceIsTracked];
    v4 = objc_loadWeakRetained((*(a1 + 32) + 144));
    v16[0] = 67109376;
    v16[1] = v3;
    v17 = 1024;
    v18 = [v4 faceIsFullyActive];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] observeValueForKeyPath faceIsTracked %i; faceIsFullyActive %i", v16, 0xEu);
  }

  v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
  v6 = [v5 faceIsTracked];

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] observeValueForKeyPath -> _puppetView.faceIsTracked", v16, 2u);
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 144));
    if ([v7 faceIsFullyActive])
    {
      v8 = *(*(a1 + 32) + 649);

      if ((v8 & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] Tracking started", v16, 2u);
        }

        [*(*(a1 + 32) + 288) setEnabled:1];
        [*(*(a1 + 32) + 416) invalidate];
        v9 = *(a1 + 32);
        v10 = *(v9 + 416);
        *(v9 + 416) = 0;

        [*(*(a1 + 32) + 424) invalidate];
        v11 = *(a1 + 32);
        v12 = *(v11 + 424);
        *(v11 + 424) = 0;

        *(*(a1 + 32) + 464) = 4;
        [*(a1 + 32) resumeFaceTrackingIfNecessary];
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = +[NSUserDefaults standardUserDefaults];
    if ([v13 BOOLForKey:@"JFDefaults_NeverDisableRecordButton"])
    {
    }

    else
    {
      v14 = *(*(a1 + 32) + 304);

      if ((v14 & 1) == 0)
      {
        [*(*(a1 + 32) + 288) setEnabled:0];
      }
    }

    v15 = *(a1 + 32);
    if (*(v15 + 464) != 2)
    {
      *(v15 + 464) = 1;
      [*(a1 + 32) startTrackingLostTimer];
    }
  }
}

void sub_100015684(uint64_t a1)
{
  *(*(a1 + 32) + 440) = 0;
  [*(a1 + 32) changeUserInfoLabelForTrackingState];
  [*(*(a1 + 32) + 416) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 416);
  *(v2 + 416) = 0;

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015760;
  v7[3] = &unk_100034D68;
  v7[4] = *(a1 + 32);
  v4 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v7 block:1.0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 416);
  *(v5 + 416) = v4;
}

void sub_100015760(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 440);
  if (v5 <= 0x1D)
  {
    *(v4 + 440) = v5 + 1;
    v6 = *(a1 + 32);
    if (v6[55] == 30 && !v6[57])
    {
      v9 = v3;
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"sJFTrackingPausedMessage" value:&stru_100035080 table:@"JFStrings"];
      [v6 pauseFaceTrackingWithReason:v8];

      v3 = v9;
    }
  }
}

void sub_100015954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 448);
  if (v5 <= 0x1D)
  {
    *(v4 + 448) = v5 + 1;
    v6 = *(a1 + 32);
    v7 = v6[56];
    if (v7 == *(a1 + 40))
    {
      v10 = v3;
      [v6 updateARSessionStateResettingState:0];
      [*(a1 + 32) changeUserInfoLabelForTrackingState];
      v3 = v10;
      v6 = *(a1 + 32);
      v7 = v6[56];
    }

    if (v7 == 30 && !v6[57])
    {
      v11 = v3;
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"sJFTrackingPausedMessage" value:&stru_100035080 table:@"JFStrings"];
      [v6 pauseFaceTrackingWithReason:v9];

      v3 = v11;
    }
  }
}

void sub_100016248(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (!*(v5 + 464))
  {
    if ((*(v5 + 376) - 3) <= 1)
    {
      WeakRetained = objc_loadWeakRetained((v5 + 144));
      v7 = [WeakRetained captureImageIsTooDark];

      if (v7)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] showUserInfoLabelWithText:USER_INFO_LOW_LIGHT", buf, 2u);
        }

        v8 = *(a1 + 32);
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"sJFLowLight";
LABEL_11:
        v14 = [v9 localizedStringForKey:v11 value:&stru_100035080 table:@"JFStrings"];
        [v8 showUserInfoLabelWithText:v14];

LABEL_20:
        goto LABEL_25;
      }

      v12 = objc_loadWeakRetained((*(a1 + 32) + 144));
      v13 = [v12 isSensorCovered];

      if (v13)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Jellyfish] showUserInfoLabelWithText:USER_INFO_CAMERA_COVERED", v25, 2u);
        }

        v8 = *(a1 + 32);
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"sJFCameraCovered";
        goto LABEL_11;
      }

      v5 = *(a1 + 32);
    }

    v10 = objc_loadWeakRetained((v5 + 144));
    v15 = [v10 captureImageIsTooDark];
    if ((v15 & 1) == 0)
    {
      v16 = [*(*(a1 + 32) + 408) text];
      v17 = +[NSBundle mainBundle];
      v2 = [v17 localizedStringForKey:@"sJFLowLight" value:&stru_100035080 table:@"JFStrings"];
      if ([v16 isEqualToString:v2])
      {

        goto LABEL_24;
      }

      v23 = v17;
      v24 = v16;
    }

    v18 = objc_loadWeakRetained((*(a1 + 32) + 144));
    if ([v18 isSensorCovered])
    {

      if (!v15)
      {
      }

      goto LABEL_20;
    }

    v19 = [*(*(a1 + 32) + 408) text];
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"sJFCameraCovered" value:&stru_100035080 table:@"JFStrings"];
    v22 = [v19 isEqualToString:v21];

    if ((v15 & 1) == 0)
    {
    }

    if (v22)
    {
LABEL_24:
      [*(a1 + 32) hideUserInfoLabel];
    }
  }

LABEL_25:
}

void sub_100016B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016BB0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 560);
  v4 = *(*(a1 + 32) + 568);
  v5 = a2;
  v14.width = v3;
  v14.height = v4;
  UIGraphicsBeginImageContextWithOptions(v14, 1, 0.0);
  v6 = [*(a1 + 32) view];
  v7 = [v6 backgroundColor];
  v8 = [*(a1 + 32) traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:v8];
  [v9 setFill];

  UIRectFill(*(*(a1 + 32) + 544));
  [v5 drawViewHierarchyInRect:1 afterScreenUpdates:{*(*(a1 + 32) + 576), *(*(a1 + 32) + 584), *(*(a1 + 32) + 592), *(*(a1 + 32) + 600)}];

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  UIGraphicsEndImageContext();
}

void sub_100016E70(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 368);
  v4 = [a2 URL];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016F24;
  v5[3] = &unk_100034C78;
  v5[4] = *(a1 + 32);
  [v3 insertAttachment:v4 withAlternateFilename:0 completionHandler:v5];
}

id sub_100016F24(uint64_t a1)
{
  [*(a1 + 32) requestPresentationStyle:0];
  v2 = *(a1 + 32);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_1000199C0(uint64_t a1)
{
  if ([*(a1 + 32) needsLandscapeOverlayUpdate])
  {
    if ([*(a1 + 32) isLandscapeMode])
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100019AD4;
      v6[3] = &unk_100034788;
      v6[4] = *(a1 + 32);
      [UIView performWithoutAnimation:v6];
      v2 = [*(a1 + 32) landscapeTrapOverlay];
      v3 = [v2 label];
      [v3 setAlpha:1.0];
    }

    else
    {
      v5 = [*(a1 + 32) landscapeTrapOverlay];
      v4 = [v5 label];
      [v4 setAlpha:0.0];
    }
  }
}

void sub_100019AD4(uint64_t a1)
{
  [*(a1 + 32) updateLandscapeOverlayImmediately];
  v3 = [*(a1 + 32) landscapeTrapOverlay];
  v2 = [v3 label];
  [v2 setAlpha:0.0];
}

void sub_10001A098(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if ([WeakRetained snapshottingEnabledUpdateIdentifier] == a1[6])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updating snapshottingEnabled applying futureValue: %@", &v4, 0xCu);
    }

    [WeakRetained setSnapshottingEnabled:{objc_msgSend(a1[4], "BOOLValue")}];
  }
}

void sub_10001B1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B1DC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutMonitorDidUpdateDisplayLayout:v7 withContext:v6];
}

void sub_10001B4D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) strongPopoverCurrentlyPresented])
  {
    [*(a1 + 32) setStrongPopoverCurrentlyPresented:*(a1 + 40)];
    v6 = @"BaseMessagesViewControllerStrongPopupPresentedKey";
    v3 = [NSNumber numberWithBool:*(a1 + 40)];
    v7 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:*(a1 + 32) userInfo:v4];
  }
}

void sub_10001BC60(uint64_t a1)
{
  v3 = [*(a1 + 32) launchController];
  v1 = [v3 view];
  v2 = [v1 superview];
  [v2 setAlpha:0.0];
}

uint64_t sub_10001CD28(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) center];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 40) superview];
  [v2 convertPoint:v7 fromView:{v4, v6}];
  v9 = v8;
  v11 = v10;

  v12 = [*(a1 + 48) layer];
  [v12 removeAnimationForKey:@"bounce-up-transform"];

  v13 = *(a1 + 48);
  v14 = *&CGAffineTransformIdentity.c;
  v16[0] = *&CGAffineTransformIdentity.a;
  v16[1] = v14;
  v16[2] = *&CGAffineTransformIdentity.tx;
  [v13 setTransform:v16];
  [*(a1 + 48) _setContinuousCornerRadius:0.0];
  [*(a1 + 40) attachVideoController:*(a1 + 56)];
  [*(a1 + 32) addSubview:*(a1 + 40)];
  [*(a1 + 64) addSubview:*(a1 + 72)];
  [*(a1 + 40) setCenter:{v9, v11}];
  [*(a1 + 80) removeFromSuperview];
  [*(a1 + 88) removeFromSuperview];
  return (*(*(a1 + 104) + 16))();
}