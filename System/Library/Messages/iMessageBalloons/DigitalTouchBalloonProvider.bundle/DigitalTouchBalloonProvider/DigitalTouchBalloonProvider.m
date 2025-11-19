id sub_3BA0(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 48);
  [*(*(a1 + 32) + 32) setAlpha:*&a2];
  LOBYTE(v3) = *(a1 + 48);
  [*(*(a1 + 32) + 40) setAlpha:v3];
  v4 = *(a1 + 40);
  if (*(a1 + 49) == 1)
  {
    v5 = *&CGAffineTransformIdentity.c;
    *&v13.a = *&CGAffineTransformIdentity.a;
    *&v13.c = v5;
    *&v13.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    CGAffineTransformMakeScale(&v13, 0.01, 0.01);
  }

  [v4 setTransform:&v13];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (*(a1 + 49) == 1)
  {
    v8 = (v6 + 48);
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    [*(v6 + 40) center];
  }

  [v7 setCenter:{v9, v10, *&v13.a, *&v13.c, *&v13.tx}];
  v11 = 0.0;
  if (*(a1 + 49) == 1 && *(a1 + 50))
  {
    v11 = 1.0;
  }

  return [*(a1 + 40) setAlpha:v11];
}

id sub_4800(uint64_t a1)
{
  [*(a1 + 32) _updateVideoOnButtonOpacity];
  v2 = *(a1 + 32);

  return [v2 _updateColorPickerEnabled];
}

id sub_483C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  UIRectIntegralWithScale();

  return [v1 setFrame:?];
}

id sub_4A8C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDimmed:1 excludeSelectedColor:1 animated:0];
  [*(a1 + 40) setSelected:0];
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformMakeScale(&v5, 0.9, 0.9);
  v2 = *(*(a1 + 32) + 8);
  v4 = v5;
  return [v2 setTransform:&v4 excludeSelectedColor:1];
}

void sub_4D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_4D28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained canvasView];

  if ([v5 isComposing])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 canvasView];
    [v4 setPaused:0];
  }
}

id sub_4DB4(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDimmed:objc_msgSend(*(a1 + 32) excludeSelectedColor:"_shouldDimColorPicker") animated:{0, 0}];
  v2 = *(*(a1 + 32) + 8);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5 excludeSelectedColor:1];
  return [*(a1 + 40) setSelected:1];
}

id sub_5CC8(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  [*(*(a1 + 32) + 112) setAlpha:*&a2];
  v3 = *(*(a1 + 32) + 112);

  return [v3 setEnabled:1];
}

void sub_604C(uint64_t a1)
{
  *(*(a1 + 32) + 280) = 1;
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

id sub_6E14(uint64_t a1)
{
  [*(*(a1 + 32) + 152) frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [*(a1 + 32) view];
  [v8 bounds];
  v10 = v9;

  v11 = *(*(a1 + 32) + 152);

  return [v11 setFrame:{v3, v5, v10, v7}];
}

_BYTE *sub_6FB0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[184] == 1)
  {
    return [result _updateVideoRecorderTime:*(a1 + 40) - 1];
  }

  return result;
}

char *sub_7758(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) videoState];
  if (result == &dword_4 + 2)
  {
    [*(a1 + 32) setPlayingMessage:*(*(a1 + 32) + 80)];
    v3 = *(a1 + 32);

    return [v3 _hideVideoController];
  }

  return result;
}

void sub_79E4(id a1, UIAlertAction *a2)
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"prefs:root=General&path=USAGE"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

id sub_7B84(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 setAlpha:1.0];
}

void sub_7DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7DEC(id *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    [a1[4] setMediaURL:?];
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v7 = [WeakRetained _showingSendInProgress];

    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = objc_loadWeakRetained(a1 + 6);
    v9 = [v8 sendDelegate];
    v10 = objc_loadWeakRetained(a1 + 6);
    [v9 canvasViewController:v10 sendMessage:a1[4]];
  }

  else
  {
    v11 = objc_loadWeakRetained(a1 + 6);
    [v11 _showWriteErrorAlertForMediaType:2 outOfSpaceError:objc_msgSend(v5 completion:{"code") == &stru_248.reloff, 0}];

    [a1[5] deleteWrittenAssets];
    v8 = objc_loadWeakRetained(a1 + 6);
    [v8 _endMediaMessageComposition];
  }

LABEL_6:
}

id sub_8850(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  if (*(a1 + 40))
  {
    v4 = 0.1;
  }

  else
  {
    v4 = [v2 _shouldShowOnButton];
  }

  return [v3 setAlpha:v4];
}

void sub_99D8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) paletteCircles];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (*(a1 + 48) != 1 || ([*(a1 + 32) selectedCircle], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 != v8))
        {
          [v7 setAlpha:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_AF54(uint64_t a1)
{
  v2 = *(a1 + 32) + 200;
  *v2 = *&kCMTimeZero.value;
  *(v2 + 16) = kCMTimeZero.epoch;
  v3 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeAudio];
  v4 = [[AVCaptureDeviceInput alloc] initWithDevice:v3 error:0];
  if ([*(*(a1 + 32) + 8) canAddInput:v4])
  {
    [*(*(a1 + 32) + 8) addInput:v4];
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"ETVideoCameraFrontBackPositionPreference"];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = &dword_0 + 2;
  }

  v8 = [*(a1 + 32) _videoCaptureDeviceAtPosition:v7];
  v9 = *(a1 + 32);
  v10 = *(v9 + 192);
  *(v9 + 192) = v8;

  v11 = [AVCaptureDeviceInput alloc];
  v12 = *(*(a1 + 32) + 192);
  v26 = 0;
  v13 = [v11 initWithDevice:v12 error:&v26];
  v14 = v26;
  v15 = *(a1 + 32);
  v16 = *(v15 + 144);
  *(v15 + 144) = v13;

  if ([*(*(a1 + 32) + 8) canAddInput:*(*(a1 + 32) + 144)])
  {
    [*(*(a1 + 32) + 8) addInput:*(*(a1 + 32) + 144)];
  }

  if ([*(*(a1 + 32) + 8) canSetSessionPreset:AVCaptureSessionPreset640x480])
  {
    [*(*(a1 + 32) + 8) setSessionPreset:AVCaptureSessionPreset640x480];
  }

  v17 = objc_alloc_init(AVCaptureAudioDataOutput);
  v18 = *(a1 + 32);
  v19 = *(v18 + 96);
  *(v18 + 96) = v17;

  [*(*(a1 + 32) + 96) setSampleBufferDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 64)];
  if ([*(*(a1 + 32) + 8) canAddOutput:*(*(a1 + 32) + 96)])
  {
    [*(*(a1 + 32) + 8) addOutput:*(*(a1 + 32) + 96)];
  }

  v20 = objc_alloc_init(AVCaptureVideoDataOutput);
  v21 = *(a1 + 32);
  v22 = *(v21 + 80);
  *(v21 + 80) = v20;

  [*(*(a1 + 32) + 80) setSampleBufferDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 64)];
  [*(*(a1 + 32) + 80) setAlwaysDiscardsLateVideoFrames:0];
  if ([*(*(a1 + 32) + 8) canAddOutput:*(*(a1 + 32) + 80)])
  {
    [*(*(a1 + 32) + 8) addOutput:*(*(a1 + 32) + 80)];
  }

  v23 = objc_alloc_init(AVCapturePhotoOutput);
  v24 = *(a1 + 32);
  v25 = *(v24 + 120);
  *(v24 + 120) = v23;

  [*(*(a1 + 32) + 120) setHighResolutionCaptureEnabled:1];
  if ([*(*(a1 + 32) + 8) canAddOutput:*(*(a1 + 32) + 120)])
  {
    [*(*(a1 + 32) + 8) addOutput:*(*(a1 + 32) + 120)];
  }

  [*(a1 + 32) _updatePreviewOrientationWithSize:{CGSizeZero.width, CGSizeZero.height}];
}

void sub_B57C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 152) & 1) == 0 && ![*(v1 + 56) status])
  {
    *(*(a1 + 32) + 152) = 1;
    *(*(a1 + 32) + 153) = 1;
    v3 = *(a1 + 32);
    v4 = *(v3 + 168);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_B64C;
    v6[3] = &unk_24948;
    v5 = *(a1 + 40);
    v6[4] = v3;
    v6[5] = v5;
    dispatch_async(v4, v6);
  }
}

void sub_B64C(uint64_t a1)
{
  v2 = [*(a1 + 32) _videoCaptureDeviceAtPosition:*(a1 + 40)];
  v20 = 0;
  v3 = [AVCaptureDeviceInput deviceInputWithDevice:v2 error:&v20];
  v4 = v20;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 192), v2);
    [*(*(a1 + 32) + 8) beginConfiguration];
    [*(*(a1 + 32) + 8) removeInput:*(*(a1 + 32) + 144)];
    v6 = [*(*(a1 + 32) + 8) canAddInput:v3];
    v5 = v6;
    if (v6)
    {
      [*(*(a1 + 32) + 8) addInput:v3];
      objc_storeStrong((*(a1 + 32) + 144), v3);
      v7 = *(a1 + 32);
      v8 = [v7 view];
      [v8 bounds];
      [v7 _updatePreviewOrientationWithSize:{v9, v10}];

      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [NSNumber numberWithInteger:*(a1 + 40)];
      [v11 setValue:v12 forKey:@"ETVideoCameraFrontBackPositionPreference"];
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 40);
        *buf = 134217984;
        v22 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Failed to switch to camera at position: %ld", buf, 0xCu);
      }
    }

    [*(*(a1 + 32) + 8) commitConfiguration];
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 64);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_B8FC;
  v18[3] = &unk_24A00;
  v19 = v5;
  v17 = *(a1 + 40);
  v18[4] = v15;
  v18[5] = v17;
  dispatch_async(v16, v18);
}

void *sub_B8FC(void *result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    memset(&v5, 0, sizeof(v5));
    if (result[5] == 2)
    {
      CGAffineTransformMakeScale(&v5, -1.0, 1.0);
    }

    else
    {
      v2 = *&CGAffineTransformIdentity.c;
      *&v5.a = *&CGAffineTransformIdentity.a;
      *&v5.c = v2;
      *&v5.tx = *&CGAffineTransformIdentity.tx;
    }

    v3 = *(v1[4] + 72);
    v4 = v5;
    result = [v3 setTransform:&v4];
  }

  *(v1[4] + 152) = 0;
  *(v1[4] + 153) = 0;
  return result;
}

id sub_BA38(uint64_t a1)
{
  if ([*(*(a1 + 32) + 192) position] == &dword_0 + 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(a1 + 32);

  return [v3 _toggleCameraToPosition:v2];
}

void sub_BD3C(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  [*(*(a1 + 32) + 56) cancelWriting];
  [*(a1 + 32) _deleteAssetWithFormat:@"DigitalTouch-%@.m4v"];
  v2 = *(a1 + 32) + 200;
  *v2 = *&kCMTimeZero.value;
  *(v2 + 16) = kCMTimeZero.epoch;
  [*(a1 + 32) _createWriter];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_BE24;
  block[3] = &unk_24858;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_BE30(uint64_t a1)
{
  v2 = +[AVCapturePhotoSettings photoSettings];
  [v2 setHighResolutionPhotoEnabled:1];
  v3 = [v2 availablePreviewPhotoPixelFormatTypes];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = +[UIScreen mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    v10 = +[UIScreen mainScreen];
    [v10 scale];
    v12 = v11;

    v17[0] = v4;
    v16[0] = kCVPixelBufferPixelFormatTypeKey;
    v16[1] = kCVPixelBufferWidthKey;
    v13 = [NSNumber numberWithDouble:v7 * v12];
    v17[1] = v13;
    v16[2] = kCVPixelBufferHeightKey;
    v14 = [NSNumber numberWithDouble:v9 * v12];
    v17[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    [v2 setPreviewPhotoFormat:v15];
  }

  [*(*(a1 + 32) + 120) capturePhotoWithSettings:v2 delegate:?];
}

void sub_C060(uint64_t a1)
{
  [*(*(a1 + 32) + 8) startRunning];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C0F8;
  block[3] = &unk_24858;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_C0F8(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 layer];
  [v3 addSublayer:*(*(a1 + 32) + 160)];

  v4 = *(a1 + 32);

  return [v4 _setVideoState:1];
}

void sub_C1E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C25C;
  block[3] = &unk_24858;
  block[4] = v1;
  dispatch_async(v2, block);
}

void *sub_C25C(void *result)
{
  v1 = result[4];
  if ((*(v1 + 152) & 1) == 0 && (*(v1 + 153) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 56) status];
    if (!result)
    {
      [v2[4] _createWriter];
      result = [*(v2[4] + 56) startWriting];
      *(v2[4] + 48) = 1;
    }
  }

  return result;
}

id sub_C4A4(uint64_t a1)
{
  [*(a1 + 32) _deleteAssetWithFormat:@"DigitalTouch-%@.jpg"];
  v2 = *(a1 + 32);

  return [v2 _deleteAssetWithFormat:@"DigitalTouch-%@.m4v"];
}

void sub_C574(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    *(v1 + 48) = 0;
    v3 = *(*(a1 + 32) + 200);
    time1.epoch = *(*(a1 + 32) + 216);
    *&time1.value = v3;
    time2 = kCMTimeZero;
    v4 = CMTimeCompare(&time1, &time2);
    v1 = *(a1 + 32);
    if (v4)
    {
      [*(v1 + 72) markAsFinished];
      [*(*(a1 + 32) + 88) markAsFinished];
      v5 = *(a1 + 32);
      v6 = *(v5 + 56);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_C6E4;
      v9[3] = &unk_24858;
      v9[4] = v5;
      [v6 finishWritingWithCompletionHandler:v9];
      v1 = *(a1 + 32);
    }
  }

  v7 = *(v1 + 168);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_C930;
  v8[3] = &unk_24858;
  v8[4] = v1;
  dispatch_async(v7, v8);
}

void sub_C6E4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C75C;
  block[3] = &unk_24858;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_C75C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) status] - 3;
  v3 = IMOSLoggingEnabled();
  if (v2 > 1)
  {
    if (v3)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(*(a1 + 32) + 104);
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Successfully stopped recording to file: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + 104);
        v7 = [*(v5 + 56) error];
        v11 = 138412546;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Failed to write video to file %@ with ERROR: %@", &v11, 0x16u);
      }
    }

    [*(a1 + 32) _deleteAssetWithFormat:@"DigitalTouch-%@.m4v"];
  }

  AudioServicesPlaySystemSoundWithCompletion(0x45Eu, 0);
  return [*(a1 + 32) _setVideoState:6];
}

void sub_CAA8(uint64_t a1)
{
  [*(*(a1 + 32) + 8) stopRunning];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_CB40;
  block[3] = &unk_24858;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_CB40(uint64_t a1)
{
  v1 = *(a1 + 32) + 16;
  *v1 = *&kCMTimeZero.value;
  *(v1 + 16) = kCMTimeZero.epoch;
  return [*(a1 + 32) _setVideoState:0];
}

id sub_CED4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 104);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Started recording to file: %@", &v5, 0xCu);
    }
  }

  return [*(a1 + 32) _setVideoState:2];
}

id sub_D1D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[23] == 4)
  {
    return [v1 _setVideoState:5];
  }

  else
  {
    return [v1 _deleteAssetWithFormat:@"DigitalTouch-%@.jpg"];
  }
}

id sub_D27C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(*(a1 + 32) + 8);

  return [v4 stopRunning];
}

void sub_D374(uint64_t a1)
{
  v2 = [*(a1 + 32) _urlWithFormat:@"DigitalTouch-%@.jpg"];
  if (([*(*(a1 + 32) + 136) writeToURL:v2 atomically:1] & 1) == 0)
  {

    v2 = 0;
  }

  if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D468;
    block[3] = &unk_24A28;
    v6 = *(a1 + 40);
    v4 = v2;
    v5 = 0;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_D500(uint64_t a1)
{
  if (![*(*(a1 + 32) + 56) status])
  {
    *(*(a1 + 32) + 153) = 1;
    v2 = *(a1 + 32);
    v3 = *(v2 + 168);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D5BC;
    block[3] = &unk_24A78;
    block[4] = v2;
    v5 = *(a1 + 40);
    dispatch_async(v3, block);
  }
}

void sub_D5BC(uint64_t a1)
{
  [*(a1 + 32) _updatePreviewOrientationWithSize:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D650;
  block[3] = &unk_24858;
  block[4] = v2;
  dispatch_async(v3, block);
}

void sub_DA9C(id a1)
{
  qword_2E7B0 = [UIColor colorWithRed:0.9294 green:0.1098 blue:0.1412 alpha:1.0];

  _objc_release_x1();
}

void sub_DBAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 _redColor];
  v2 = [v1 _dimColor:v4];
  v3 = qword_2E7C0;
  qword_2E7C0 = v2;
}

id sub_EFA4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(*(a1 + 32) + 8) setAlpha:1.0];
  v2 = [*(a1 + 32) pickerCircle];
  [v2 setAlpha:1.0];

  v3 = *(*(a1 + 32) + 8);
  v8 = *&CGAffineTransformIdentity.c;
  v10 = *&CGAffineTransformIdentity.a;
  v9 = v10;
  v11 = v8;
  v12 = *&CGAffineTransformIdentity.tx;
  v7 = v12;
  [v3 setTransform:&v10];
  v4 = [*(a1 + 32) pickerCircle];
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v4 setTransform:&v10];

  v5 = *(*(a1 + 32) + 16);
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v5 setTransform:&v10];
  return [*(a1 + 40) setAlpha:1.0];
}

uint64_t sub_F0A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_F210(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 16);
  CGAffineTransformMakeScale(&v10, *(a1 + 48), *(a1 + 48));
  [v2 setTransform:&v10];
  [*(*(a1 + 40) + 8) setAlpha:0.0];
  v3 = [*(a1 + 40) pickerCircle];
  [v3 setAlpha:0.0];

  v4 = *(*(a1 + 40) + 8);
  v8 = *&CGAffineTransformIdentity.c;
  *&v10.a = *&CGAffineTransformIdentity.a;
  v9 = *&v10.a;
  *&v10.c = v8;
  *&v10.tx = *&CGAffineTransformIdentity.tx;
  v7 = *&v10.tx;
  [v4 setTransform:&v10];
  v5 = [*(a1 + 40) pickerCircle];
  *&v10.a = v9;
  *&v10.c = v8;
  *&v10.tx = v7;
  [v5 setTransform:&v10];

  return [*(a1 + 40) setAlpha:0.0];
}

uint64_t sub_F314(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10180(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v11 = [[SKScene alloc] initWithSize:{v2, v3}];
  v4 = +[UIColor blackColor];
  v5 = [v4 colorSpaceConvertedColor];
  [v11 setBackgroundColor:v5];

  [v11 setAnchorPoint:{0.5, 0.5}];
  v6 = [[SKView alloc] initWithFrame:{0.0, 0.0, v2, v3}];
  [v6 presentScene:v11];
  [v6 setPaused:0];
  [*(a1 + 32) displayInScene:v11];
  [*(a1 + 32) messageDuration];
  v7 = 0;
  v9 = ceil(v8 / 10.0);
  do
  {
    [v11 _update:v9 * v7++];
  }

  while (v7 != 10);
  [v6 setPaused:1];
  v10 = [v6 textureFromNode:v11];
  *(*(*(a1 + 40) + 8) + 24) = [v10 _createCGImage];
}

void sub_10BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    if (!v39)
    {
      JUMPOUT(0x108ACLL);
    }

    JUMPOUT(0x109E8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10C10(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    if ([*(a1 + 32) isReadyForMoreMediaData])
    {
      do
      {
        v2 = *(*(a1 + 72) + 8);
        v3 = *(v2 + 24);
        if (v3 >= *(a1 + 80))
        {
          break;
        }

        v4 = *(a1 + 40);
        v5 = *(a1 + 88);
        *(v2 + 24) = v3 + 1;
        CMTimeMake(&v11, v3, 60);
        [v4 appendPixelBuffer:v5 withPresentationTime:&v11];
      }

      while (([*(a1 + 32) isReadyForMoreMediaData] & 1) != 0);
    }

    if (*(*(*(a1 + 72) + 8) + 24) >= *(a1 + 80))
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10D64;
      block[3] = &unk_24BA0;
      v10 = *(a1 + 88);
      v7 = *(a1 + 32);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

id sub_10D64(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 56));
  [*(a1 + 32) markAsFinished];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 finishWritingWithCompletionHandler:v3];
}

void sub_11390(uint64_t a1)
{
  v2 = [*(a1 + 32) status] == &dword_0 + 3;
  v3 = [*(a1 + 32) outputURL];
  [ETMessageImageEncoder _finishedWritingAtURL:v3 withSuccess:v2 completionBlock:*(a1 + 48)];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11468;
  block[3] = &unk_24858;
  v5 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_11468(uint64_t a1)
{
  [*(a1 + 32) setSketchMessageRenderer:0];
  v2 = *(a1 + 32);

  return [v2 setSceneMessageRenderers:0];
}

id sub_11828(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _shouldShowPlaceholderView];

  return [v1 _setShowingPlaceholderView:v2];
}

void sub_1224C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] canvasView];
  v5 = [v4 backgroundColor];
  if (v3)
  {
    v6 = +[UIColor clearColor];
    [v4 setBackgroundColor:v6];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1243C;
  v17[3] = &unk_24C18;
  v18 = a1[5];
  v7 = v3;
  v19 = v7;
  v22 = v3 != 0;
  v8 = v4;
  v20 = v8;
  v9 = v5;
  v21 = v9;
  v10 = objc_retainBlock(v17);
  v11 = v10;
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_12508;
    block[3] = &unk_24C40;
    v15 = a1[6];
    v16 = v11;
    dispatch_async(&_dispatch_main_q, block);

    v12 = v15;
  }

  else
  {
    v13 = a1[6];
    v12 = (v10[2])(v10);
    v13[2](v13, v12);
  }
}

id sub_1243C(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14.width = v6;
  v14.height = v8;
  UIGraphicsBeginImageContextWithOptions(v14, 1, 0.0);
  v10 = *(a1 + 40);
  if (v10)
  {
    [v10 drawInRect:{v3, v5, v7, v9}];
  }

  [*(a1 + 32) drawViewHierarchyInRect:0 afterScreenUpdates:{v3, v5, v7, v9}];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 48) setBackgroundColor:*(a1 + 56)];
  }

  return v11;
}

void sub_12508(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  (*(v1 + 16))(v1, v2);
}

void sub_1256C(uint64_t a1)
{
  v2 = [*(a1 + 32) stillImage];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_12644;
  v5[3] = &unk_24C90;
  v9 = *(a1 + 56);
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  objc_copyWeak(&v8, (a1 + 48));
  dispatch_async(&_dispatch_main_q, v5);
  objc_destroyWeak(&v8);
}

void sub_12644(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained updateSnapshot];

    if (v4)
    {
      v6 = objc_loadWeakRetained((a1 + 48));
      v5 = [v6 updateSnapshot];
      v5[2](v5, *(a1 + 32));
    }
  }
}

void sub_12880(id a1)
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [UIImage imageNamed:@"placeholder" inBundle:v4];
  v2 = [v1 imageWithRenderingMode:2];
  v3 = qword_2E7D0;
  qword_2E7D0 = v2;
}

void sub_13CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_13D10(double *a1)
{
  v2 = [*(*(a1 + 4) + 8) messageType];
  v3 = *(a1 + 4);
  v4 = a1[6];
  if (v2 == 1)
  {
    result = [v3 _createSketchImageForTime:v4];
  }

  else
  {
    result = [v3 _createSceneImageForTime:v4];
  }

  *(*(*(a1 + 5) + 8) + 24) = result;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}