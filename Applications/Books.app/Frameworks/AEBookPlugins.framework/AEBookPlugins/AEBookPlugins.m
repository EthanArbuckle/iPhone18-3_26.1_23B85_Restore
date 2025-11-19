void sub_39C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_39E4(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained loader];
  [v3 updateMediaFrames:&stru_1E2AA0];

  v4 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v3) = [v4 didFinishRendering];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 _readyToShow];
  }
}

id sub_4824(uint64_t a1)
{
  [*(*(a1 + 32) + 192) pointToCenterAfterRotation];
  v3 = v2;
  v5 = v4;
  [*(*(a1 + 32) + 192) scaleToRestoreAfterRotation];
  v7 = v6;
  v8 = [*(a1 + 32) view];
  [v8 bounds];
  [*(*(a1 + 32) + 192) setFrame:?];

  [*(*(a1 + 32) + 192) configureForNewBoundsAndRestoreCenterPoint:v3 andScale:{v5, v7}];
  *(*(a1 + 32) + 360) = [*(a1 + 32) singlePageAspectFits];
  v9 = *(a1 + 32);
  if (*(a1 + 40) <= *(a1 + 48))
  {
    v13 = [v9 delegate];
    v14 = [v13 pageNavigationCurrentReadAloudPageOffset:*(a1 + 32)];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(a1 + 32) + 352) = v14;
      v15 = _AECaptureLocationLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [NSNumber numberWithInteger:*(*(a1 + 32) + 352)];
        v29 = 138412290;
        v30 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "#PictureBook 2 Capturing offset : %@", &v29, 0xCu);
      }
    }

    v17 = *(a1 + 32);
    v18 = v17[44];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [v17 layoutDirection];
      v20 = *(a1 + 32);
      v21 = [v20 pageOffset];
      if (v19 == &dword_0 + 1)
      {
        v22 = [v20 rightPageNumberForSinglePageOffset:v21];
      }

      else
      {
        v22 = [v20 leftPageNumberForSinglePageOffset:v21];
      }

      *(*(a1 + 32) + 352) = v22;
      v23 = *(a1 + 32);
      v24 = v23[44];
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(*(a1 + 32) + 352) = [v23 pageOffset];
      }

      else
      {
        v23[44] = v24 - 1;
      }

      v25 = _AECaptureLocationLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [NSNumber numberWithInteger:*(*(a1 + 32) + 352)];
        v29 = 138412290;
        v30 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "#PictureBook 3 Capturing offset : %@", &v29, 0xCu);
      }

      v17 = *(a1 + 32);
      v18 = v17[44];
    }

    [v17 setPageOffset:v18];
    v27 = _AECaptureLocationLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [NSNumber numberWithInteger:*(*(a1 + 32) + 352)];
      v29 = 138412290;
      v30 = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "#PictureBook 4 Using offset : %@", &v29, 0xCu);
    }

    *(*(a1 + 32) + 352) = 0x7FFFFFFFFFFFFFFFLL;
    return [*(a1 + 32) zoomToPage:objc_msgSend(*(a1 + 32) animated:{"pageOffset") + 1, 0}];
  }

  else
  {
    if (v9[44] == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(a1 + 32) + 352) = [v9 pageOffset];
      v10 = _AECaptureLocationLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [NSNumber numberWithInteger:*(*(a1 + 32) + 352)];
        v29 = 138412290;
        v30 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "#PictureBook 1 Capturing offset : %@", &v29, 0xCu);
      }

      v9 = *(a1 + 32);
    }

    return [v9 zoomToSpread:0];
  }
}

void sub_5854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5878(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [*(a1 + 40) _imageViewForPageContentImage:v3];
      [*(a1 + 32) setLeftContentView:v5];
    }

    v6 = [*(a1 + 40) pageOffset];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_5978;
    v10[3] = &unk_1E2B80;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    [WeakRetained _generateRightPageImageAtPageOffset:v6 completion:v10];
  }
}

void sub_5978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 40) _imageViewForPageContentImage:a2];
    [*(a1 + 32) setRightContentView:v3];
  }

  [*(a1 + 32) layoutIfNeeded];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) im_snapshotInContext];
  (*(v4 + 16))(v4, v5);
}

id sub_5FA8(uint64_t a1)
{
  [*(a1 + 32) setSelectionHighlightsVisible:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 192);

  return [v4 setContentOffset:{v2, v3}];
}

id sub_5FF8(uint64_t a1)
{
  [*(a1 + 32) setSelectionHighlightsVisible:1];
  v2 = *(a1 + 32);

  return [v2 _updateSelectionHighlights];
}

void sub_62B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_62E8(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  [NSObject cancelPreviousPerformRequestsWithTarget:v2 selector:"_timeOutWaitingForPaint" object:0];

  [*(a1 + 32) removeFromSuperview];
  v3 = objc_loadWeakRetained(&to);
  [v3 setLastCurlUnderPageView:0];

  objc_destroyWeak(&to);
}

void sub_897C(id a1)
{
  v1 = +[UIMenuController sharedMenuController];
  [v1 hideMenu];
}

void sub_8AA8(id a1)
{
  v1 = +[UIMenuController sharedMenuController];
  [v1 hideMenu];
}

id sub_8CB8(uint64_t a1)
{
  [*(a1 + 32) enterSinglePageMode];
  result = [*(a1 + 32) turnToPageNumber:*(*(a1 + 32) + 288) animated:1];
  *(*(a1 + 32) + 288) = 0;
  return result;
}

void sub_D934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D954(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) resetZoomScale];
  }

  else
  {
    v2 = [*(a1 + 32) scrollView];
    [v2 setMinimumZoomScale:1.0];
  }

  v3 = [*(a1 + 40) pageNumberHUD];
  v10 = *&CGAffineTransformIdentity.c;
  *&v13.a = *&CGAffineTransformIdentity.a;
  v11 = *&v13.a;
  *&v13.c = v10;
  *&v13.tx = *&CGAffineTransformIdentity.tx;
  v9 = *&v13.tx;
  [v3 setTransform:&v13];

  v4 = [*(a1 + 32) scrollView];
  *&v13.a = v11;
  *&v13.c = v10;
  *&v13.tx = v9;
  [v4 setTransform:&v13];

  CGAffineTransformMakeScale(&v12, 0.0, 0.0);
  v5 = [*(a1 + 40) scrubberContainerView];
  v13 = v12;
  [v5 setTransform:&v13];

  v6 = [*(a1 + 40) backgroundImageView];

  if (v6)
  {
    v7 = [*(a1 + 40) backgroundImageView];
    [v7 setAlpha:0.0];
  }

  v8 = [*(a1 + 40) pageNumberHUD];
  [v8 layoutIfNeeded];
}

void sub_DAB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained verticalScrubber];
    [v3 cancelPendingRenderRequests];

    v4 = [v9 verticalScrubber];
    v5 = [v4 callout];
    [v5 removeFromSuperview];

    v6 = [v9 verticalScrubber];
    [v6 removeFromSuperview];

    [v9 setVerticalScrubber:0];
    v7 = [v9 scrubberContainerView];
    [v7 removeFromSuperview];

    [v9 setScrubberContainerView:0];
    v8 = [v9 backgroundImageView];
    [v8 removeFromSuperview];

    [v9 setBackgroundImageView:0];
    [*(a1 + 32) setAllowDoubleTapToZoom:1];
    [v9 setVerticalScrubberAnimator:0];
    [v9 setSwipeToShowScrubberEnable:1];
    WeakRetained = v9;
  }
}

void sub_E088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_E0B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E0D0(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && *(*(*(a1 + 32) + 8) + 40))
  {
    [WeakRetained setupBackgroundImageViewWithImage:v9];
    v5 = [*(*(*(a1 + 32) + 8) + 40) view];
    v6 = [v4 backgroundImageView];
    v7 = [*(*(*(a1 + 32) + 8) + 40) scrollView];
    [v5 insertSubview:v6 below:v7];

    v8 = [v4 backgroundImageView];
    [v8 setAlpha:0.0];
  }
}

UIColor *__cdecl sub_E4A8(id a1, UITraitCollection *a2)
{
  v2 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:dbl_193090[[(UITraitCollection *)a2 userInterfaceStyle]== &dword_0 + 2]];

  return v2;
}

void sub_EB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location)
{
  objc_destroyWeak((v57 + 32));
  objc_destroyWeak((v58 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_EB9C(uint64_t a1)
{
  if (*(a1 + 216) == 1)
  {
    [*(a1 + 32) setZoomScale:*(a1 + 48)];
    if (*(a1 + 217) == 1)
    {
      v2 = *(a1 + 72);
      v18 = *(a1 + 56);
      v19 = v2;
      v20 = *(a1 + 88);
      v3 = [*(a1 + 32) scrollView];
      [v3 setTransform:&v18];
    }
  }

  v4 = *(a1 + 104);
  v5 = [*(a1 + 40) pageNumberHUDWidthConstraint];
  [v5 setConstant:v4];

  v6 = [*(a1 + 40) pageNumberHUD];
  [v6 setNeedsLayout];

  v15 = *(a1 + 112);
  v16 = *(a1 + 128);
  v17 = *(a1 + 144);
  v7 = [*(a1 + 40) scrubberContainerView];
  v18 = v15;
  v19 = v16;
  v20 = v17;
  [v7 setTransform:&v18];

  v8 = *(a1 + 160);
  v9 = [*(a1 + 40) backgroundImageView];
  [v9 setAlpha:v8];

  v12 = *(a1 + 168);
  v13 = *(a1 + 184);
  v14 = *(a1 + 200);
  v10 = [*(a1 + 40) pageNumberHUD];
  v18 = v12;
  v19 = v13;
  v20 = v14;
  [v10 setTransform:&v18];

  return [*(a1 + 40) _updateHUDVisibility];
}

void sub_ECFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 48);
  v3 = [WeakRetained currentReadingPositionView];
  [v3 setAlpha:v2];

  [WeakRetained updateCurrentReadingPositionViewIfNeeded];
  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) pageNumberHUDWidthConstraint];
  [v5 setConstant:v4];

  v6 = [*(a1 + 32) pageNumberHUD];
  [v6 layoutIfNeeded];
}

void sub_EDA8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2 && WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setVerticalScrubberAnimator:0];
    WeakRetained = v4;
  }
}

void sub_11444(uint64_t a1)
{
  v2 = [*(a1 + 32) assetViewControllerDelegate];
  [v2 didFinishUpdateForAssetViewController:*(a1 + 32)];
}

id sub_1356C(uint64_t a1)
{
  _UIAccessibilityIgnoreNextNotification();
  v2 = *(*(a1 + 32) + 968);

  return [v2 setAlpha:0.0];
}

void sub_14B80(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1757C(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 8) setImage:?];
  [*(*(a1 + 32) + 8) addGutter:*(a1 + 48)];
  if ([*(a1 + 32) isAutoCurl])
  {
    v3 = *(a1 + 40);
    if (*(*(a1 + 32) + 104) == 1)
    {
      [v3 setLeftImage:v4];
    }

    else
    {
      [v3 setRightImage:v4];
    }
  }
}

void sub_17E68(id a1)
{
  qword_22CFC0 = objc_opt_new();

  _objc_release_x1();
}

void sub_18734(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2 && *(a1 + 56) == 1 && *(a1 + 57) == 1 && (objc_msgSend(*(a1 + 40), "disableAutoFontDownload") & 1) == 0)
  {
    v2 = _AEBookPluginsFontCacheLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) familyName];
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Attempting download of %{public}@", &v4, 0xCu);
    }

    [*(a1 + 32) download];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_18838(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:BKStyleManagerDidRegisterFontsNotification[0] object:0];

  v5 = _AEBookPluginsFontCacheLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) count];
    v7 = *(a1 + 40);
    v8 = 134218242;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Registered %lu fonts for language: %{public}@", &v8, 0x16u);
  }
}

void sub_19158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_19184(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1919C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  v6 = [v12 objectForKey:@"fontFamily"];
  v7 = BUDynamicCast();

  if ([*(a1 + 32) isEqualToString:v7])
  {
    objc_opt_class();
    v8 = [v12 objectForKey:@"settings"];
    v9 = BUDynamicCast();
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void sub_195C4(uint64_t a1, void *a2, char *a3)
{
  v10 = a2;
  if ([*(a1 + 32) count] - 1 > a3)
  {
    v5 = [*(a1 + 40) fileNames];
    [v5 removeObject:v10];

    v6 = [*(a1 + 40) fontsByFileName];
    [v6 setObject:0 forKeyedSubscript:v10];

    v7 = [*(a1 + 40) fontLookupByFileName];
    [v7 setObject:0 forKeyedSubscript:v10];

    v8 = [*(a1 + 40) presetsByFileName];
    [v8 setObject:0 forKeyedSubscript:v10];

    v9 = [*(a1 + 40) fontFaceLookupByFileName];
    [v9 setObject:0 forKeyedSubscript:v10];
  }
}

void sub_199A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = v7;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_new();
  [v11 setObject:v8 forKeyedSubscript:@"normal"];
  [v11 setObject:v13 forKeyedSubscript:@"bold"];
  v12 = [v11 copy];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
}

void sub_19A88(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [v17 valueForKey:@"system"];
  v6 = [v17 valueForKey:@"fontFamily"];
  if ([v5 isEqualToString:@"default"])
  {
    v7 = [v17 mutableCopy];
    v8 = v7;
    v9 = @"system-ui";
LABEL_5:
    [v7 setObject:v9 forKey:@"fontFamily"];
    [v8 setObject:v9 forKey:@"postscriptName"];
    [v8 setObject:v9 forKey:@"postscriptBoldName"];
    v10 = [v8 copy];
    [*(a1 + 32) replaceObjectAtIndex:a3 withObject:v10];
    (*(*(a1 + 40) + 16))();

LABEL_6:
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"serif"])
  {
    v7 = [v17 mutableCopy];
    v8 = v7;
    v9 = @"ui-serif";
    goto LABEL_5;
  }

  if ([v6 length])
  {
    v8 = [NSDictionary dictionaryWithObjectsAndKeys:v6, kCTFontFamilyNameAttribute, 0];
    v11 = CTFontDescriptorCreateWithAttributes(v8);
    if (v11)
    {
      v12 = [v17 objectForKey:@"postscriptName"];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v6;
      }

      v15 = v14;

      v16 = [v17 objectForKey:@"postscriptBoldName"];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [*(a1 + 32) removeObject:v17];
    }

    CFRelease(v11);
    goto LABEL_6;
  }

LABEL_7:
}

void sub_1C01C(uint64_t a1)
{
  v2 = [*(a1 + 32) _activityItemsConfiguration];
  [*(a1 + 32) setActivityItemsConfiguration:v2];
}

void sub_1C89C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  v3 = BUDynamicCast();
  if (v3)
  {
    [*(a1 + 40) changeAnnotationStyle:v3 annotation:v4];
  }
}

void sub_1E148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1E16C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v7 = WeakRetained;
    WeakRetained = [*(a1 + 32) isAnnotationDeleted];
    v5 = v7;
    if ((WeakRetained & 1) == 0)
    {
      WeakRetained = [v7 _highlightAnnotationWK2:*(a1 + 32)];
      v5 = v7;
    }
  }

  return _objc_release_x1(WeakRetained, v5);
}

void sub_1E4CC(uint64_t a1, void *a2, unint64_t a3)
{
  [a2 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1E6F4;
  v22[3] = &unk_1E30F0;
  *&v22[4] = v5;
  *&v22[5] = v7;
  *&v22[6] = v9;
  *&v22[7] = v11;
  v13 = [NSPredicate predicateWithBlock:v22];
  v14 = [*(a1 + 32) lines];
  v15 = [v14 filteredArrayUsingPredicate:v13];
  v16 = [v15 lastObject];

  if (!v16)
  {
    v16 = objc_alloc_init(AEHighlightLine);
  }

  [v16 setIncludesCapSpace:1];
  v17 = [*(a1 + 40) theme];
  [v16 setLightenBlend:{objc_msgSend(v17, "shouldInvertContent")}];

  [v16 setFullLineRect:{v6, v8, v10, v12}];
  [v16 setCurrentLineRect:{v6, v8, v10, v12}];
  [v16 setUnderlineDirection:*(a1 + 64)];
  if (*(a1 + 64) || [*(a1 + 48) count] <= a3)
  {
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    v21 = round(CGRectGetMaxY(v25));
  }

  else
  {
    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    MinY = CGRectGetMinY(v23);
    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    Height = CGRectGetHeight(v24);
    [*(a1 + 40) underlinePercent];
    v21 = MinY + round(Height * v20);
  }

  [v16 setUnderlinePosition:v21];
  if (([*(a1 + 56) containsObject:v16] & 1) == 0)
  {
    [*(a1 + 56) addObject:v16];
  }
}

BOOL sub_1E6F4(void *a1, void *a2)
{
  [a2 fullLineRect];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];

  return CGRectEqualToRect(*&v3, *&v7);
}

void sub_1E960(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (v6 && WeakRetained)
  {
    if (*(a1 + 32))
    {
      v10 = [WeakRetained annotationRectUnionCache];
      v11 = [v10 valueForKey:*(a1 + 32)];

      if (!v11)
      {
        v12 = [v9 annotationRectsCache];
        [v12 setObject:v6 forKey:*(a1 + 32)];

        v13 = [v9 annotationRectUnionCache];
        v20[0] = BKUnionRects(v6);
        v20[1] = v14;
        v20[2] = v15;
        v20[3] = v16;
        v17 = [NSValue valueWithBytes:v20 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v13 setObject:v17 forKey:*(a1 + 32)];
      }
    }

    [v9 _highlightAnnotation:*(a1 + 40) rects:v6];
  }

  if (v7)
  {
    v18 = _AEAnnotationLocationLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 48);
      *buf = 138412546;
      v22 = v19;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "clientRectsForLocation%@ error:%@", buf, 0x16u);
    }
  }
}

void sub_1F2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1F304(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [v4 count])
  {
    v6 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      v7 = BUDynamicCast();
      v8 = [v6 currentSearchResultForContentViewController:WeakRetained];
      objc_opt_class();
      v9 = [v8 location];
      v10 = BUDynamicCast();

      if ([v7 isEqual:v10])
      {
        v31 = v10;
        v32 = v8;
        v33 = v7;
        v34 = v6;
        v35 = a1;
        v36 = WeakRetained;
        v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = v4;
        v12 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v44;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v44 != v14)
              {
                objc_enumerationMutation(obj);
              }

              [*(*(&v43 + 1) + 8 * i) rectValue];
              x = v54.origin.x;
              y = v54.origin.y;
              width = v54.size.width;
              height = v54.size.height;
              v51[0] = @"left";
              v20 = [NSNumber numberWithDouble:CGRectGetMinX(v54)];
              v52[0] = v20;
              v51[1] = @"top";
              v55.origin.x = x;
              v55.origin.y = y;
              v55.size.width = width;
              v55.size.height = height;
              v21 = [NSNumber numberWithDouble:CGRectGetMinY(v55)];
              v52[1] = v21;
              v51[2] = @"width";
              v56.origin.x = x;
              v56.origin.y = y;
              v56.size.width = width;
              v56.size.height = height;
              v22 = [NSNumber numberWithDouble:CGRectGetWidth(v56)];
              v52[2] = v22;
              v51[3] = @"height";
              v57.origin.x = x;
              v57.origin.y = y;
              v57.size.width = width;
              v57.size.height = height;
              v23 = [NSNumber numberWithDouble:CGRectGetHeight(v57)];
              v52[3] = v23;
              v24 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
              [v11 addObject:v24];
            }

            v13 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v13);
        }

        v49[0] = @"cfi";
        obja = [v31 cfiString];
        v50[0] = obja;
        v49[1] = @"selectionText";
        v25 = [v32 searchString];
        v50[1] = v25;
        v49[2] = @"contextText";
        v47[0] = @"context";
        v26 = [v32 text];
        v47[1] = @"offset";
        v48[0] = v26;
        v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 searchStringRange]);
        v48[1] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
        v49[3] = @"rects";
        v50[2] = v28;
        v50[3] = v11;
        v29 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
        WeakRetained = v36;
        [v36 setCurrentHighlightSearchSelection:v29];

        v10 = v31;
        v8 = v32;

        v6 = v34;
        a1 = v35;
        v7 = v33;
      }
    }

    v30 = *(*(a1 + 40) + 312);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1F7FC;
    v39[3] = &unk_1E3168;
    v39[4] = WeakRetained;
    v40 = v4;
    v42 = *(a1 + 64);
    v41 = *(a1 + 48);
    [v30 _doAfterNextPresentationUpdate:v39];
  }
}

void sub_20234(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v12)
  {
    if (v3)
    {
      [v12 CGRectValue];
      v3[2](v3, v8, v9, v10, v11);
    }
  }

  else if (v3)
  {
    v4.n128_u64[0] = *&CGRectZero.origin.x;
    v5.n128_u64[0] = *&CGRectZero.origin.y;
    v6.n128_u64[0] = *&CGRectZero.size.width;
    v7.n128_u64[0] = *&CGRectZero.size.height;
    v3[2](v3, v4, v5, v6, v7);
  }
}

void sub_202CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 32) && [v8 count])
  {
    v10 = [*(a1 + 40) annotationRectsCache];
    [v10 setObject:v8 forKey:*(a1 + 48)];

    v11 = [*(a1 + 40) annotationRectUnionCache];
    v30[0] = BKUnionRects(v8);
    v30[1] = v12;
    v30[2] = v13;
    v30[3] = v14;
    v15 = [NSValue valueWithBytes:v30 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v11 setObject:v15 forKey:*(a1 + 48)];
  }

  [*(a1 + 40) _contentRectFromRects:v8 visible:*(a1 + 64)];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = objc_retainBlock(*(a1 + 56));
  v29 = v24;
  if (v24)
  {
    v25.n128_u64[0] = *&CGRectNull.origin.x;
    v26.n128_u64[0] = *&CGRectNull.origin.y;
    v27.n128_u64[0] = *&CGRectNull.size.width;
    v28.n128_u64[0] = *&CGRectNull.size.height;
    if (v8)
    {
      v28.n128_f64[0] = v23;
      v27.n128_f64[0] = v21;
      v26.n128_f64[0] = v19;
      v25.n128_f64[0] = v17;
    }

    (*(v24 + 2))(v24, v25, v26, v27, v28);
  }
}

void sub_2098C(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  if (!CGRectIsNull(*&a2))
  {
    v15.origin.x = CGRectZero.origin.x;
    v15.origin.y = CGRectZero.origin.y;
    v15.size.width = CGRectZero.size.width;
    v15.size.height = CGRectZero.size.height;
    v16.origin.x = v8;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    if (!CGRectEqualToRect(v15, v16))
    {
      [*(a1 + 32) _originPointForPoint:{v8, a3}];
      v8 = v10;
      a3 = v11;
    }
  }

  v12 = objc_retainBlock(*(a1 + 40));
  if (v12)
  {
    v13 = v12;
    v12[2](v8, a3, a4, a5);
    v12 = v13;
  }
}

void sub_20B04(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  if (!CGRectIsNull(*&a2))
  {
    v15.origin.x = CGRectZero.origin.x;
    v15.origin.y = CGRectZero.origin.y;
    v15.size.width = CGRectZero.size.width;
    v15.size.height = CGRectZero.size.height;
    v16.origin.x = v8;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    if (!CGRectEqualToRect(v15, v16))
    {
      [*(a1 + 32) _originPointForPoint:{v8, a3}];
      v8 = v10;
      a3 = v11;
    }
  }

  v12 = objc_retainBlock(*(a1 + 40));
  if (v12)
  {
    v13 = v12;
    v12[2](v8, a3, a4, a5);
    v12 = v13;
  }
}

void *sub_21D50(void *result)
{
  v1 = result[4];
  if (*(v1 + 304) == 1)
  {
    return [*(v1 + 312) be_selectForWebView:0];
  }

  return result;
}

void *sub_21D80(void *result)
{
  v2 = result[4];
  if ((*(v2 + 304) & 1) == 0)
  {
    v3 = result;
    v4 = [*(v2 + 496) currentSelectionCFI];
    [*(v3[4] + 456) setDummyLocation2:v4];

    v5 = [*(v3[4] + 456) dummyLocation2];
    [v5 setSelectionRects:0];

    v6 = v3[4];
    v7 = v6[57];

    return [v6 _annotationChanged:v7 forceRender:0];
  }

  return result;
}

void sub_2286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22890(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained webView2];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_22960;
  v8[3] = &unk_1E3258;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 be_selectForWebView:v8];
}

void sub_22960(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 40));
  if (v1)
  {
    v3 = v1;
    objc_opt_class();
    v2 = BUDynamicCast();
    v3[2](v3, [v2 BOOLValue]);

    v1 = v3;
  }
}

id sub_23094(uint64_t a1, void *a2)
{
  v3 = [a2 annotationUuid];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 368)];

  return v4;
}

void sub_231C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231DC(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v21[9] = v3;
    v21[10] = v4;
    v6 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_opt_class();
    v8 = [v6 objectForKeyedSubscript:@"cfi"];

    v9 = BUDynamicCast();

    if ([v9 length])
    {
      v21[0] = 0;
      v10 = [BKEpubCFILocation locationForCFI:v9 error:v21];
      v11 = v21[0];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v12 = [WeakRetained loader];
    v13 = [v12 currentVisbleCFILocation];

    v14 = [v13 cfiString];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [v13 cfiString];
      v20 = 0;
      v17 = [BKEpubCFILocation locationForCFI:v16 error:&v20];
      v18 = v20;

      v11 = v18;
    }

    else
    {
      v17 = 0;
    }

    v19 = [WeakRetained delegate];
    [v19 contentViewController:WeakRetained setEndOfBookToLocation:v10 range:v17];

    [WeakRetained _bookmarkSelectionAndAnnotate:0 showColorEditor:0];
  }
}

void sub_23720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 128));
  _Unwind_Resume(a1);
}

void sub_2375C(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_loadWeakRetained((a1 + 32));
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_23894;
    v12[3] = &unk_1E32F8;
    objc_copyWeak(&v14, (a1 + 32));
    v15 = a4;
    v13 = v8;
    [v10 contentViewController:v11 showLookupForString:v7 fromView:v13 onClose:v12];

    objc_destroyWeak(&v14);
  }
}

void sub_23894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained clearSelectionHighlights];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) removeFromSuperview];
  }
}

void sub_238F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_239C8;
  v3[3] = &unk_1E3348;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _contentForSelectedRangeWithCompletion:v3];

  objc_destroyWeak(&v6);
}

void sub_239C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_opt_class();
  v5 = [v3 objectForKeyedSubscript:@"rects"];
  v6 = BUDynamicCast();
  v7 = [WeakRetained highlightRangeFromRects:v6];

  if (*(a1 + 32))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v17 + 1) + 8 * v12) setOwner:{*(a1 + 32), v17}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v13 = *(a1 + 40);
  objc_opt_class();
  v14 = [v3 objectForKeyedSubscript:@"selectionText"];
  v15 = BUDynamicCast();
  v16 = [v7 firstObject];
  (*(v13 + 16))(v13, v15, v16, 0);
}

id sub_23BC0(uint64_t a1, void *a2)
{
  v2 = [a2 annotationUuid];
  objc_opt_class();
  v3 = BUDynamicCast();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_23EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"rects"];
  v5 = BUDynamicCast();

  objc_opt_class();
  v6 = [v3 objectForKeyedSubscript:@"selectionText"];

  v7 = BUDynamicCast();

  if ([v5 count] && objc_msgSend(v7, "length"))
  {
    v12 = 0;
    [v7 tokenCountWithEnumerationOptions:3 maxTokenCount:200 outLimitLength:&v12];
    v8 = [v7 substringToIndex:v12];

    v9 = [*(a1 + 32) highlightRangeFromRects:v5];
    v10 = [v9 firstObject];

    v11 = [*(a1 + 32) delegate];
    [v11 contentViewController:_NSConcreteStackBlock showTranslateForText:3221225472 fromView:sub_24098 onClose:{&unk_1E2BD0, *(a1 + 32)}];

    v7 = v8;
  }
}

void sub_24134(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v59 = a3;
  v6 = objc_alloc_init(BKHTMLContentViewControllerDummyAnnotation);
  objc_opt_class();
  v7 = [v5 objectForKeyedSubscript:@"cfi"];
  v8 = BUDynamicCast();
  [(BKHTMLContentViewControllerDummyAnnotation *)v6 setCfi:v8];

  objc_opt_class();
  v9 = [v5 objectForKeyedSubscript:@"selectionText"];
  v10 = BUDynamicCast();

  v58 = v10;
  [(BKHTMLContentViewControllerDummyAnnotation *)v6 setAnnotationRepresentativeText:v10];
  v11 = [*(a1 + 32) annotationDataProvider];
  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [v11 chapterTitleForOrdinal:objc_msgSend(*(a1 + 32) pageOffset:{"ordinal"), objc_msgSend(*(a1 + 32), "pageOffset")}];
    [(BKHTMLContentViewControllerDummyAnnotation *)v6 setChapterTitle:v12];
  }

  v57 = v11;
  objc_opt_class();
  v60 = v5;
  v13 = [v5 objectForKeyedSubscript:@"rects"];
  v14 = BUDynamicCast();

  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v63;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v62 + 1) + 8 * i);
        objc_opt_class();
        v21 = [v20 objectForKeyedSubscript:{@"left", v57}];
        v22 = BUDynamicCast();
        [v22 doubleValue];
        v24 = v23;

        objc_opt_class();
        v25 = [v20 objectForKeyedSubscript:@"top"];
        v26 = BUDynamicCast();
        [v26 doubleValue];
        v28 = v27;

        objc_opt_class();
        v29 = [v20 objectForKeyedSubscript:@"width"];
        v30 = BUDynamicCast();
        [v30 doubleValue];
        v32 = v31;

        objc_opt_class();
        v33 = [v20 objectForKeyedSubscript:@"height"];
        v34 = BUDynamicCast();
        [v34 doubleValue];
        v36 = v35;

        v37 = [*(a1 + 32) loader];
        v38 = [v37 webView];
        [v38 _convertPointFromContentsToView:{v24, v28}];
        v40 = v39;
        v42 = v41;

        v43 = [*(a1 + 32) loader];
        v44 = [v43 webView];
        v45 = [*(a1 + 32) view];
        [v44 convertRect:v45 toView:{v40, v42, v32, v36}];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;

        v54 = [NSValue valueWithCGRect:v47, v49, v51, v53];
        [v15 addObject:v54];
      }

      v17 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v17);
  }

  v55 = objc_retainBlock(*(a1 + 40));
  v56 = v55;
  if (v55)
  {
    (*(v55 + 2))(v55, v6, v15, v59);
  }
}

void sub_246E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24700(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [WeakRetained clearSelection];
  if (objc_opt_respondsToSelector())
  {
    [v4 contentViewController:WeakRetained searchForString:v6];
  }

  if (!+[BKBookViewController useEnhancedEditMenu])
  {
    v5 = +[UIMenuController sharedMenuController];
    [v5 hideMenu];
  }
}

void sub_24904(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2498C;
  v2[3] = &unk_1E3410;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _contentForSelectedRangeWithCompletion:v2];
}

void sub_2498C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"selectionText"];

  v7 = BUDynamicCast();

  if ([v7 length])
  {
    v5 = objc_retainBlock(*(a1 + 32));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, v7);
    }
  }
}

void sub_24B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  if (!v3 || ![v3 length])
  {
    v8 = BCIMLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_136BC8(v8);
    }

    goto LABEL_11;
  }

  v6 = objc_opt_respondsToSelector();
  v7 = BCIMLog();
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_136B5C(v5, v8, v9, v10, v11, v12, v13, v14);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v3;
  }

  [v5 contentViewController:WeakRetained setSearchString:v3];
LABEL_12:
}

void sub_24DD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _shareAnnotation:v6 annotationRects:v5];
}

void sub_24E6C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *v9 = a2;
  *&v9[1] = a3;
  *&v9[2] = a4;
  *&v9[3] = a5;
  v7 = [NSValue valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [v5 _shareAnnotation:v6 annotationRects:v8];
}

void sub_2503C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25060(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3 && ([v6 isEqualToString:UIActivityTypeCopyToPasteboard] & 1) == 0)
  {
    [WeakRetained clearSelection];
  }
}

void sub_251F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25210(uint64_t a1, void *a2, void *a3)
{
  v59 = a2;
  v58 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v60 = WeakRetained;
    v56 = a1;
    v7 = [WeakRetained[48] fetchedObjects];
    v61 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v8 = [BKEpubCFILocation alloc];
    v9 = [v59 objectForKeyedSubscript:@"cfi"];
    v10 = [(BKEpubCFILocation *)v8 initWithCFI:v9 error:0];

    v11 = v10;
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = sub_25A38;
    v85 = sub_25A48;
    v86 = 0;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v77 objects:v89 count:16];
    v57 = v11;
    if (v13)
    {
      v14 = *v78;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v78 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v77 + 1) + 8 * i);
          if ([v16 annotationType] == 2)
          {
            v17 = [BKEpubCFILocation alloc];
            v18 = [v16 annotationLocation];
            v19 = [(BKEpubCFILocation *)v17 initWithCFI:v18 error:0];

            v20 = [(BKEpubCFILocation *)v11 intersectWithRangeFromHeadOf:v19 toTailOf:v19];

            if (v20)
            {
              [v61 addObject:v16];
              v21 = [(BKEpubCFILocation *)v11 unionWithCFI:v19];

              v11 = v21;
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v13);
    }

    if ([v61 count])
    {
      v22 = +[NSMutableArray array];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v23 = v61;
      v24 = [v23 countByEnumeratingWithState:&v73 objects:v88 count:16];
      if (v24)
      {
        v25 = *v74;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v74 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = [*(*(&v73 + 1) + 8 * j) annotationLocation];
            v28 = [AEAnnotation predicateForAnnotationsWithLocation:v27 includingDeleted:0];

            [v22 addObject:v28];
          }

          v24 = [v23 countByEnumeratingWithState:&v73 objects:v88 count:16];
        }

        while (v24);
      }

      v29 = [[NSCompoundPredicate alloc] initWithType:2 subpredicates:v22];
      v30 = [v60[48] fetchedObjects];
      v31 = [v30 filteredArrayUsingPredicate:v29];

      if ([v31 count] == &dword_0 + 1 && (objc_msgSend(v23, "lastObject"), v32 = objc_claimAutoreleasedReturnValue(), v33 = -[BKEpubCFILocation isEqual:](v11, "isEqual:", v32), v32, v33))
      {
        v34 = [v31 lastObject];
        v35 = v82[5];
        v82[5] = v34;

        v36 = objc_retainBlock(*(v56 + 32));
        v37 = v36;
        if (v36)
        {
          (*(v36 + 2))(v36, v82[5]);
        }
      }

      else if ([v31 count])
      {
        v40 = [v31 lastObject];
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v41 = v31;
        v42 = [v41 countByEnumeratingWithState:&v69 objects:v87 count:16];
        if (v42)
        {
          v43 = *v70;
          do
          {
            for (k = 0; k != v42; k = k + 1)
            {
              if (*v70 != v43)
              {
                objc_enumerationMutation(v41);
              }

              [v60 _combineAnnotation:*(*(&v69 + 1) + 8 * k) withAnnotation:v40];
            }

            v42 = [v41 countByEnumeratingWithState:&v69 objects:v87 count:16];
          }

          while (v42);
        }

        v45 = v60[39];
        v46 = [(BKEpubCFILocation *)v11 cfiString];
        v47 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.setSelectedRange('%@')", v46];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_25A50;
        v62[3] = &unk_1E3500;
        objc_copyWeak(&v67, (v56 + 40));
        v37 = v40;
        v63 = v37;
        v64 = v11;
        v66 = &v81;
        v68 = *(v56 + 48);
        v65 = *(v56 + 32);
        [v45 evaluateJavaScript:v47 completionHandler:v62];

        objc_destroyWeak(&v67);
      }

      else
      {
        v55 = objc_retainBlock(*(v56 + 32));
        v37 = v55;
        if (v55)
        {
          (*(v55 + 2))(v55, 0);
        }
      }
    }

    else
    {
      v22 = [v60 delegate];
      if (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        v48 = [v59 objectForKeyedSubscript:@"selectionText"];
        v49 = BUDynamicCast();
        objc_opt_class();
        v50 = [v59 objectForKeyedSubscript:@"selectionText"];
        v51 = BUDynamicCast();
        v52 = [v22 contentViewController:v60 addAnnotation:2 location:v57 selectedText:v49 representativeText:v51];
        v53 = v82[5];
        v82[5] = v52;
      }

      [v60 _showAnnotationWithState:*(v56 + 48) showColorEditor:*(v56 + 49) forAnnotation:v82[5]];
      v54 = objc_retainBlock(*(v56 + 32));
      v29 = v54;
      if (v54)
      {
        (*(v54 + 2))(v54, v82[5]);
      }
    }

    _Block_object_dispose(&v81, 8);
    v6 = v60;
  }

  else
  {
    v38 = objc_retainBlock(*(a1 + 32));
    v39 = v38;
    if (v38)
    {
      (*(v38 + 2))(v38, 0);
    }
  }
}

uint64_t sub_25A38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25A50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v8 = objc_retainBlock(*(a1 + 48));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_25BAC;
    v12[3] = &unk_1E34D8;
    objc_copyWeak(&v16, (a1 + 64));
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v17 = *(a1 + 72);
    v11 = *(a1 + 48);
    v10 = v11;
    v15 = v11;
    [WeakRetained _contentForSelectedRangeWithCompletion:v12];

    objc_destroyWeak(&v16);
  }
}

void sub_25BAC(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    objc_opt_class();
    v7 = [v13 objectForKeyedSubscript:@"selectionText"];
    v8 = BUDynamicCast();
    objc_opt_class();
    v9 = [v13 objectForKeyedSubscript:@"selectionText"];
    v10 = BUDynamicCast();
    [v4 contentViewController:WeakRetained expandAnnotation:v5 location:v6 selectedText:v8 representativeText:v10];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  [WeakRetained _showAnnotationWithState:*(a1 + 72) showColorEditor:*(a1 + 73) forAnnotation:*(*(*(a1 + 56) + 8) + 40)];
  v11 = objc_retainBlock(*(a1 + 48));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, *(*(*(a1 + 56) + 8) + 40));
  }
}

void sub_26178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26194(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_opt_class();
    v8 = BUDynamicCast();
    v9 = v8;
    if (v8)
    {
      v10 = [v8 dataUsingEncoding:4];
      v30 = v6;
      v11 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:&v30];
      v12 = v30;

      v13 = objc_retainBlock(*(a1 + 48));
      v14 = v13;
      if (v13)
      {
        (*(v13 + 2))(v13, v11, v12);
      }

      goto LABEL_18;
    }

    v17 = [*(a1 + 32) cfiString];

    if (v17)
    {
      v18 = [*(a1 + 32) cfiString];
      v19 = [WeakRetained currentHighlightSearchSelection];
      v20 = [v19 objectForKeyedSubscript:@"cfi"];
      v21 = [v18 isEqualToString:v20];

      if (!v21)
      {
        v25 = *(a1 + 40);
        v26 = [*(a1 + 32) cfiString];
        v27 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.getSelectionFromLocation('%@')", v26];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_26468;
        v28[3] = &unk_1E3550;
        v29 = *(a1 + 48);
        [v25 evaluateJavaScript:v27 completionHandler:v28];

        goto LABEL_17;
      }

      v22 = objc_retainBlock(*(a1 + 48));
      if (v22)
      {
        v23 = [WeakRetained currentHighlightSearchSelection];
        v22[2](v22, v23, 0);
      }
    }

    else
    {
      v24 = objc_retainBlock(*(a1 + 48));
      v22 = v24;
      if (v24)
      {
        (v24)[2](v24, 0, v6);
      }
    }

LABEL_17:
    v12 = v6;
LABEL_18:

    v6 = v12;
    goto LABEL_19;
  }

  v15 = objc_retainBlock(*(a1 + 48));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, 0, v6);
  }

LABEL_19:
}

void sub_26468(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = BUDynamicCast();

  if (v7)
  {
    v8 = [v7 dataUsingEncoding:4];
    v15 = v5;
    v9 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v15];
    v10 = v15;

    v11 = objc_retainBlock(*(a1 + 32));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, v9, v10);
    }
  }

  else
  {
    v13 = objc_retainBlock(*(a1 + 32));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0, v5);
    }

    v10 = v5;
  }
}

void sub_2665C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_26678(id a1, BKHTMLContentViewController *a2, AEAnnotation *a3)
{
  v5 = [(BKHTMLContentViewController *)a2 _excerptCitedStringForAnnotation:a3];
  v3 = +[UIPasteboard generalPasteboard];
  v4 = [UTTypeUTF8PlainText identifier];
  [v3 setValue:v5 forPasteboardType:v4];
}

void sub_26704(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_26BBC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v24.origin.x = CGRectZero.origin.x;
  v24.origin.y = CGRectZero.origin.y;
  v24.size.width = CGRectZero.size.width;
  v24.size.height = CGRectZero.size.height;
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  if (CGRectEqualToRect(v24, v26))
  {
    v10 = 0;
  }

  else
  {
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    v10 = !CGRectIsNull(v25);
  }

  v11 = _AEAnnotationLocationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = a2;
    *&v17[1] = a3;
    *&v17[2] = a4;
    *&v17[3] = a5;
    v12 = [NSValue valueWithBytes:v17 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v13 = *(a1 + 32);
    v14 = [NSNumber numberWithBool:v10];
    *buf = 138412802;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "isLocationVisible: found contentRect: %@ forLocation:%@ isVisible:%@", buf, 0x20u);
  }

  v15 = objc_retainBlock(*(a1 + 40));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v10);
  }
}

void sub_27F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27F58(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained reload];
  }
}

void sub_28A4C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

uint64_t sub_2A47C(uint64_t a1, id a2)
{
  v3 = objc_retainBlock(a2);
  if (v3)
  {
    v4 = [*(a1 + 32) dataUsingEncoding:4];
    v3[2](v3, v4, 0);
  }

  return 0;
}

uint64_t sub_2A4E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [UTTypeURL identifier];
  v6 = [v4 loadDataRepresentationForTypeIdentifier:v5 completionHandler:v3];

  return 0;
}

void sub_2B570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2B59C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) mutableCopy];
    [v4 addEntriesFromDictionary:v5];
    [WeakRetained _setupAnnotationRectCachesFromClientRects:v4];
  }
}

void sub_2BF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2BF9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = _AEAnnotationLocationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) annotationUuid];
      v7 = [*(a1 + 32) location];
      v8 = [*(a1 + 32) annotationSelectedText];
      *buf = 138544130;
      v19 = v6;
      v20 = 2114;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "#annotationcache point annotation:%{public}@ location:%{public}@ text:%@ cached rects:%{public}@", buf, 0x2Au);
    }

    v9 = [*(a1 + 32) annotationLocation];
    if (v9 && [v3 count])
    {
      v10 = [WeakRetained annotationRectsCache];
      [v10 setObject:v3 forKey:v9];

      v11 = [WeakRetained annotationRectUnionCache];
      v17[0] = BKUnionRects(v3);
      v17[1] = v12;
      v17[2] = v13;
      v17[3] = v14;
      v15 = [NSValue valueWithBytes:v17 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [v11 setObject:v15 forKey:v9];
    }

    v16 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v16 contentViewControllerAnnotationCacheDidChange:*(a1 + 40)];
    }
  }
}

void sub_2C910(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_2D1CC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2D770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2D78C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v5 || v6)
  {
    v28 = _AELog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "Failed to get size of TOC WebView: %@", buf, 0xCu);
    }

    [WeakRetained _notifyRequesterAndSendNextRequestOfPreferredHeight:v6 error:0.0];
  }

  else
  {
    objc_opt_class();
    v33 = BUDynamicCast();
    v8 = [v33 dataUsingEncoding:4];
    v9 = [NSJSONSerialization JSONObjectWithData:v8 options:4 error:0];

    objc_opt_class();
    v10 = [v9 objectForKeyedSubscript:@"width"];
    v11 = BUDynamicCast();

    objc_opt_class();
    v12 = [v9 objectForKeyedSubscript:@"height"];
    v13 = BUDynamicCast();

    if (v11 && v13)
    {
      v14 = [WeakRetained webView];
      [v14 frame];
      v16 = v15;
      v18 = v17;

      [v11 doubleValue];
      v20 = v19;
      [v13 doubleValue];
      if (v21 >= 54.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 54.0;
      }

      [WeakRetained setFrameAndPositionWebView:{v16, v18, v20, v22}];
      v34[0] = @"initial-scale";
      v34[1] = @"maximum-scale";
      v35[0] = @"1";
      v35[1] = @"1";
      v34[2] = @"minimum-scale";
      v34[3] = @"user-scalable";
      v35[2] = @"1";
      v35[3] = @"no";
      v35[4] = @"no";
      v34[4] = @"shrink-to-fit";
      v34[5] = @"width";
      v23 = [v11 stringValue];
      v24 = v23;
      v25 = @"device-width";
      if (v23)
      {
        v25 = v23;
      }

      v35[5] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:6];

      v27 = [WeakRetained webView];
      [v27 _overrideViewportWithArguments:v26];

      [WeakRetained _snapshotCurrentContent];
    }

    else
    {
      v29 = _AELog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v5;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "Failed to get width/height of TOC WebView from JSON: %@", buf, 0xCu);
      }

      v30 = WebKitErrorDomain;
      v36[0] = NSDebugDescriptionErrorKey;
      v36[1] = @"request";
      v37[0] = v9;
      v31 = [WeakRetained currentRequest];
      v37[1] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
      v26 = [NSError errorWithDomain:v30 code:-5 userInfo:v32];

      [WeakRetained _notifyRequesterAndSendNextRequestOfPreferredHeight:v26 error:0.0];
    }
  }
}

void sub_2DC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2DC84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v5 || v6)
  {
    v18 = _AELog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Failed to snapshot TOC WebView: %@", &v19, 0xCu);
    }

    [WeakRetained _notifyRequesterAndSendNextRequestOfPreferredHeight:v6 error:0.0];
  }

  else
  {
    v8 = v5;
    v9 = [v8 im_imageWithAlpha:0.65];
    v10 = [WeakRetained currentRequest];
    v11 = [v10 cacheKey];

    v12 = [WeakRetained imageCache];

    if (!v12)
    {
      sub_136D54();
    }

    v13 = [WeakRetained imageCache];
    [v13 setObject:v8 forKey:v11];

    v14 = [WeakRetained imageCache];
    v15 = [v11 stringByAppendingString:@"-selected"];
    [v14 setObject:v9 forKey:v15];

    [v8 size];
    v17 = v16;

    [WeakRetained _notifyRequesterAndSendNextRequestOfPreferredHeight:0 error:v17];
  }
}

void sub_2EB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2EBC4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_2EC80;
    v6[3] = &unk_1E36F8;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);

    objc_destroyWeak(&v8);
  }
}

void sub_2EC80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained configureWithProfile:*(a1 + 32)];
}

void sub_2FE00(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2FEBC;
  block[3] = &unk_1E2BD0;
  v7 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, a2);
  }
}

void sub_32914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_32940(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startedManualCurlAnimation:v3 isRightSide:*(a1 + 40)];
}

void sub_32BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_32C04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startedManualCurlAnimation:v3 isRightSide:*(a1 + 40)];
}

BOOL sub_336F4(void *a1)
{
  v1 = [a1 view];
  +[UIView be_wkContentViewClass];
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v3;
      v5 = v1;
      v1 = [v1 superview];

      if (v4 == 2)
      {
        break;
      }

      +[UIView be_wkContentViewClass];
      isKindOfClass = objc_opt_isKindOfClass();
      v3 = v4 + 1;
    }

    while ((isKindOfClass & 1) == 0);
    v2 = v4 < 2;
  }

  return v2;
}

void sub_34470(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_22CFF0;
  qword_22CFF0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_38F3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [*(a1 + 40) book];
      v5 = [v4 cacheItem];
      v6 = BEURLHandlerImageDataForiBooksURLUsingCacheItem();

      LOBYTE(v3) = [AEBookInfo isUndesirableImageData:v6];
      if (v3)
      {
        v7 = 0;
      }

      else
      {
        v7 = [UIImage imageWithData:v6];
      }
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, WeakRetained);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_390A4;
    v9[3] = &unk_1E32F8;
    objc_copyWeak(&v11, &location);
    v10 = v7;
    v12 = v3;
    v8 = v7;
    dispatch_async(&_dispatch_main_q, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void sub_390A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCoverImage:*(a1 + 32) isUndesirable:*(a1 + 48)];
}

double PDFPageGetBoxRectWithRotation(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 boundsForBox:a2];
  v5 = v4;
  [v3 rotation];

  return v5;
}

double BKImageSizeForScreenSize(double a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = v3;

  if (v4 != 1.0)
  {
    CGSizeScale();
    return v5;
  }

  return a1;
}

void sub_3AB3C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSFileAccessIntent readingIntentWithURL:*(a1 + 32) options:1];
  v4 = objc_opt_new();
  v16 = v3;
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v6 = objc_opt_new();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3ACC8;
  v10[3] = &unk_1E3898;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v15 = *(a1 + 56);
  v13 = v3;
  v14 = *(a1 + 48);
  v9 = v3;
  [v4 coordinateAccessWithIntents:v5 queue:v6 byAccessor:v10];

  objc_autoreleasePoolPop(v2);
}

void sub_3ACC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCIMLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_137520(a1, v3, v5);
    }

    v6 = [NSError errorWithDomain:AssetEngineErrorDomain code:1001 userInfo:0];
    [*(a1 + 40) sendError:v6 toCompletion:*(a1 + 64)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "AEPDFPlugin coordinateReadingItemAtURL Successful coordinated read [URL: %@]", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = sub_3B080;
    v37 = sub_3B090;
    v38 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_3B080;
    v32[4] = sub_3B090;
    v33 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v8 = +[AEEpubInfoSource sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_3B098;
    v22[3] = &unk_1E3820;
    v9 = *(a1 + 48);
    v22[4] = *(a1 + 40);
    v23 = v9;
    v25 = v32;
    v24 = *(a1 + 56);
    p_buf = &buf;
    v27 = &v28;
    [v8 performBackgroundTaskAndWait:v22];

    if (*(v29 + 24) == 1)
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) URL];
      [v10 _logLoadErrorForURL:v11];

      v12 = *(a1 + 40);
      v13 = objc_retainBlock(*(a1 + 64));
      [v12 performSelectorOnMainThread:"loadError:" withObject:v13 waitUntilDone:0];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_3B284;
      block[3] = &unk_1E3870;
      v20 = &buf;
      v14 = *(a1 + 56);
      v15 = *(a1 + 40);
      v17 = v14;
      v18 = v15;
      v19 = *(a1 + 64);
      v21 = v32;
      dispatch_async(&_dispatch_main_q, block);

      v13 = v17;
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(v32, 8);

    _Block_object_dispose(&buf, 8);
  }
}

void sub_3B048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3B080(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3B098(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) URL];
  v5 = [v3 _bookInfoForAssetAtURL:v4 withMoc:v21 error:*(*(a1 + 56) + 8) + 40 needsCoordination:0];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) URL];
  v8 = [v6 _updateBook:v5 onMoc:v21 forCurrentURL:v7];

  v9 = [*(a1 + 48) objectForKey:AEHelperNumberIsPreorderKey];
  [v8 setIsPreorder:v9];
  v10 = [*(a1 + 48) objectForKey:@"AEPDFOptionsSuppressPasswordDialogKey"];
  v11 = [v10 BOOLValue];

  v12 = [v8 objectID];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (v8)
  {
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    v17 = +[AEPdfCache sharedInstance];
    v18 = [*(a1 + 40) URL];
    v19 = [v17 copyCacheObjectForURL:v18];

    v20 = [v19 document];
    if ([v20 isLocked])
    {
      *(*(*(a1 + 72) + 8) + 24) = v11;
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = [v20 pageCount] == 0;
    }
  }

  [v21 reset];
}

void sub_3B284(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = +[AEEpubInfoSource sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3B3A4;
    v10[3] = &unk_1E3848;
    v3 = *(a1 + 56);
    *&v4 = *(a1 + 32);
    *(&v4 + 1) = *(a1 + 40);
    v9 = v4;
    *&v5 = *(a1 + 48);
    *(&v5 + 1) = v3;
    v11 = v9;
    v12 = v5;
    [v2 performMainQueueTaskWithNewContextAndWait:v10];
  }

  else
  {
    v6 = *(*(*(a1 + 64) + 8) + 40);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);

    [v7 sendError:v6 toCompletion:v8];
  }
}

void sub_3B3A4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v11 = 0;
  v5 = [v3 existingObjectWithID:v4 error:&v11];

  v6 = v11;
  v7 = BUDynamicCast();

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"assetLogID"];
    [v7 setAssetLogID:v8];

    v9 = [*(a1 + 32) valueForKey:@"assetID"];
    [v7 initializeAnnotationProviderWithAssetID:v9];
    if ([v7 isPasswordDialogNeeded])
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
      [*(a1 + 40) showPasswordDialogForBook:v7 transaction:v10 withCompletion:*(a1 + 48)];
    }

    else
    {
      [*(a1 + 40) sendViewControllerForBook:v7 toCompletion:*(a1 + 48)];
    }
  }

  else
  {
    [*(a1 + 40) sendError:v6 toCompletion:*(a1 + 48)];
  }
}

void sub_3B8E8(uint64_t a1)
{
  v2 = [NSError errorWithDomain:AssetEngineErrorDomain code:1002 userInfo:0];
  [*(a1 + 32) sendError:v2 toCompletion:*(a1 + 48)];
  [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
}

void sub_3B96C(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 lastObject];

  v4 = [v3 text];
  v5 = +[AEPdfCache sharedInstance];
  v6 = [v5 copyCacheObjectForBook:*(a1 + 40)];

  v7 = [v6 document];
  if ([*(a1 + 40) isCorrectPassword:v4 forDocument:v7])
  {
    [*(a1 + 40) setPassword:v4];
    v8 = +[AEEpubInfoSource sharedInstance];
    [v8 parseBook:*(a1 + 40)];

    v9 = *(a1 + 48);
    v18 = 0;
    v10 = [v9 save:&v18];
    v11 = v18;
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      NSLog(@"Error Saving: %@", v11);
    }

    v13 = [v7 pageCount];
    v14 = *(a1 + 56);
    if (v13)
    {
      [*(a1 + 56) sendViewControllerForBook:*(a1 + 40) toCompletion:*(a1 + 72)];
    }

    else
    {
      v15 = [*(a1 + 40) url];
      [v14 _logLoadErrorForURL:v15];

      v16 = *(a1 + 56);
      v17 = objc_retainBlock(*(a1 + 72));
      [v16 performSelectorOnMainThread:"loadError:" withObject:v17 waitUntilDone:0];
    }

    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [*(a1 + 56) showPasswordDialogForBook:*(a1 + 40) transaction:*(a1 + 64) withCompletion:*(a1 + 72)];
  }
}

void sub_3BB38(id a1, UITextField *a2)
{
  v4 = a2;
  v2 = AEBundle();
  v3 = [v2 localizedStringForKey:@"Password" value:&stru_1E7188 table:0];
  [(UITextField *)v4 setPlaceholder:v3];

  [(UITextField *)v4 setSecureTextEntry:1];
}

void sub_3CBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34)
{
  _Block_object_dispose((v40 - 168), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_3CD04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3CD1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_3CE30;
  v14[3] = &unk_1E3978;
  v20 = *(a1 + 48);
  v15 = v9;
  v16 = v8;
  v17 = *(a1 + 32);
  v10 = *(a1 + 40);
  v18 = v7;
  v19 = v10;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(&_dispatch_main_q, v14);
}

void sub_3CE30(uint64_t a1)
{
  v6 = *(a1 + 32);
  if (*(a1 + 32))
  {
    if ([*(*(*(a1 + 72) + 8) + 40) _shouldShowAlertForError:?])
    {
      [*(*(*(a1 + 72) + 8) + 40) _showAlertForError:*(a1 + 32) forAssetAtURL:*(a1 + 40) transaction:*(a1 + 48)];
      goto LABEL_8;
    }

    v2 = [*(a1 + 32) domain];
    if ([v2 isEqualToString:fd45c988dd8cc08fce2e58d17f4ed2])
    {
      v3 = [*(a1 + 32) code];

      if (v3 != -996)
      {
        goto LABEL_8;
      }

      v4 = AssetEngineErrorDomain;
      v2 = [*(a1 + 32) userInfo];
      v5 = [NSError errorWithDomain:v4 code:2003 userInfo:v2];

      v6 = v5;
    }
  }

LABEL_8:
  (*(*(a1 + 64) + 16))();
}

void sub_3CF7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) objectForKeyedSubscript:@"assetLogID"];
      *buf = 138412802;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v44 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "AEBookInfoAssetPlugin coordinateReadingItemAtURL Error taking coordinate read for %@; logID:%{public}@  Error: %@", buf, 0x20u);
    }

    v7 = [v3 code];
    v8 = AssetEngineErrorDomain;
    v47 = NSUnderlyingErrorKey;
    v48 = v3;
    v9 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    if (v7 == -1004)
    {
      v10 = 2004;
    }

    else
    {
      v10 = 1001;
    }

    v11 = [NSError errorWithDomain:v8 code:v10 userInfo:v9];

    v12 = *(a1 + 88);
    v13 = [*(a1 + 48) URL];
    (*(v12 + 16))(v12, 0, v13, v11);
  }

  else
  {
    v14 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) objectForKeyedSubscript:@"assetLogID"];
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "AEBookInfoAssetPlugin coordinateReadingItemAtURL Successful coordinated read [URL: %@] logID:%{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = sub_3CD04;
    v45 = sub_3CD14;
    v46 = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = sub_3CD04;
    v41[4] = sub_3CD14;
    v42 = 0;
    v17 = +[AEEpubInfoSource sharedInstance];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_3D548;
    v35[3] = &unk_1E39C8;
    v36 = *(a1 + 40);
    v21 = *(a1 + 48);
    v18 = v21.i64[0];
    v37 = vextq_s8(v21, v21, 8uLL);
    v39 = buf;
    v40 = v41;
    v38 = *(a1 + 64);
    [v17 performBackgroundTaskAndWait:v35];

    v19 = +[AEEpubInfoSource sharedInstance];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_3D8F0;
    v23[3] = &unk_1E3A68;
    v32 = buf;
    v33 = v41;
    v24 = *(a1 + 64);
    v25 = *(a1 + 40);
    v22 = *(a1 + 48);
    v20 = v22.i64[0];
    v26 = vextq_s8(v22, v22, 8uLL);
    v27 = *(a1 + 32);
    v34 = *(a1 + 104);
    v28 = *(a1 + 72);
    v29 = *(a1 + 80);
    v30 = *(a1 + 96);
    v31 = *(a1 + 88);
    [v19 performMainQueueTaskWithNewContext:v23];

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_3D548(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"assetUpdateDate"];
  v5 = BUDynamicCast();

  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) URL];
  v8 = [v6 _bookInfoForAssetAtURL:v7 withMoc:v3 error:*(*(a1 + 64) + 8) + 40 needsCoordination:0 updateDate:v5];

  v9 = [v8 objectID];
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  [v8 initializeAnnotationProviderWithAssetID:*(a1 + 56)];
  v12 = [*(a1 + 32) objectForKey:AEHelperNumberIsPreorderKey];
  [v8 setIsPreorder:v12];

  if (v8)
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = [v8 confirmBagContents];
      v14 = *(*(a1 + 64) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v16 = _AEBookPluginsLifeCycleLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [*(a1 + 48) URL];
          v18 = *(*(*(a1 + 64) + 8) + 40);
          v19 = [*(a1 + 32) objectForKeyedSubscript:@"assetLogID"];
          *buf = 138412802;
          v28 = v17;
          v29 = 2112;
          v30 = v18;
          v31 = 2114;
          v32 = v19;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "DRM/Keybag failure for book at URL: %@ -- %@ logID:%{public}@", buf, 0x20u);
        }
      }
    }
  }

  v26 = 0;
  v20 = [v3 save:&v26];
  v21 = v26;
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    v23 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [*(a1 + 48) URL];
      v25 = [*(a1 + 32) objectForKeyedSubscript:@"assetLogID"];
      *buf = 138412802;
      v28 = v24;
      v29 = 2112;
      v30 = v21;
      v31 = 2114;
      v32 = v25;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Core Data save error for book at URL: %@ -- %@ logID:%{public}@", buf, 0x20u);
    }
  }
}

void sub_3D8F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 104) + 8) + 40);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    if (*(*(*(a1 + 112) + 8) + 40))
    {
      objc_opt_class();
      v7 = *(*(*(a1 + 112) + 8) + 40);
      v73 = 0;
      v8 = [v3 existingObjectWithID:v7 error:&v73];
      v9 = v73;
      v10 = BUDynamicCast();

      [v10 initializeAnnotationProviderWithAssetID:*(a1 + 32)];
      if (v10 && ([*(a1 + 40) objectForKeyedSubscript:@"assetLogID"], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setAssetLogID:", v11), v11, v12 = *(a1 + 48), objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"storeID"), v13 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v12, "newViewControllerForAEBookInfo:storeID:", v10, v13), v13, v6))
      {
        v5 = 0;
      }

      else
      {
        v5 = [NSError errorWithDomain:AssetEngineErrorDomain code:1004 userInfo:0];
        v6 = 0;
      }
    }

    else
    {
      v5 = [NSError errorWithDomain:AssetEngineErrorDomain code:1007 userInfo:0];
      v9 = _AEBookPluginsLifeCycleLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 56) URL];
        v15 = [*(a1 + 40) objectForKeyedSubscript:@"assetLogID"];
        *buf = 138412546;
        v75 = v14;
        v76 = 2114;
        v77 = v15;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Missing bookObjectId for book at URL: %@ -- AEErrorCodeMissingBookInfo logID:%{public}@", buf, 0x16u);
      }

      v6 = 0;
    }

    if (!v5)
    {
      v36 = 0;
      goto LABEL_46;
    }
  }

  v16 = [v5 domain];
  if (![v16 isEqual:AssetEngineErrorDomain])
  {

    goto LABEL_17;
  }

  v17 = [v5 code] == &stru_3D8.segname[4];

  if (!v17)
  {
LABEL_17:
    v18 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 64);
      v20 = [*(a1 + 40) objectForKeyedSubscript:@"assetLogID"];
      *buf = 138412802;
      v75 = v19;
      v76 = 2112;
      v77 = v5;
      v78 = 2114;
      v79 = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Error fetching bookInfoForAssetAtURL: %@ -- %@ logID:%{public}@", buf, 0x20u);
    }
  }

  if ([v5 code] != &stru_798.reloff + 2)
  {
    goto LABEL_47;
  }

  v21 = [v5 domain];
  v22 = [v21 isEqualToString:AssetEngineErrorDomain];

  if (*(a1 + 120) != 1)
  {
    if (!v22)
    {
      goto LABEL_47;
    }

    v37 = [v5 userInfo];
    v38 = [v37 objectForKeyedSubscript:AssetEngineErrorIsFamilyRemovalKey];
    v39 = [v38 BOOLValue];

    if (!v39)
    {
      goto LABEL_47;
    }

    v36 = [NSError errorWithDomain:fd45c988dd8cc08fce2e58d17f4ed2 code:-996 userInfo:0];
    goto LABEL_45;
  }

  if (!v22)
  {
LABEL_47:
    v45 = *(a1 + 96);
    v46 = [*(a1 + 56) URL];
    (*(v45 + 16))(v45, v6, v46, v5);

    goto LABEL_48;
  }

  v56 = +[AEAssetEngine appInfoMgr];
  v50 = [*(a1 + 64) path];
  v49 = [v50 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  v51 = [NSDictionary dictionaryWithContentsOfFile:?];
  v23 = [v51 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
  v53 = [v23 valueForKeyPath:@"accountInfo.DSPersonID"];
  v52 = [v23 valueForKeyPath:@"accountInfo.AltDSID"];
  v24 = [v23 valueForKeyPath:@"accountInfo.AppleID"];
  if (![v24 length])
  {
    v25 = [v51 objectForKeyedSubscript:@"apple-id"];

    v24 = v25;
  }

  v55 = v5;
  if ([v24 length])
  {
    v26 = +[ACAccountStore bu_sharedAccountStore];
    v54 = [v26 ams_iTunesAccountWithUsername:v24];

    if (v54 && ([v54 credential], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEmpty"), v27, !v28))
    {
      v41 = [v54 ams_DSID];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_3E6CC;
      v57[3] = &unk_1E3A40;
      v57[4] = *(a1 + 48);
      v58 = *(a1 + 80);
      v59 = *(a1 + 40);
      v63 = *(a1 + 88);
      v48 = v41;
      v60 = v48;
      v64 = *(a1 + 96);
      v61 = *(a1 + 56);
      v36 = v55;
      v62 = v36;
      v42 = objc_retainBlock(v57);
      if (objc_opt_respondsToSelector())
      {
        v43 = [v56 isConnectedToInternet];
        v44 = v48 ? v43 : 0;
        if (v44 == 1)
        {
          [ft9cupR7u6OrU4m1pyhB Xj3eVHDeBoTD6fVn6fY8:"Xj3eVHDeBoTD6fVn6fY8:completion:" completion:?];

          v6 = 0;
          v36 = 0;
        }
      }
    }

    else
    {
      v29 = _AEBookPluginsLifeCycleLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 64);
        v31 = [*(a1 + 40) objectForKeyedSubscript:@"assetLogID"];
        *buf = 138412802;
        v75 = v30;
        v76 = 2112;
        v77 = v24;
        v78 = 2114;
        v79 = v31;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Auth needed due to non-existing account for asset at url, username: %@ -- %@, logID:%{public}@", buf, 0x20u);
      }

      v48 = [v56 _mainViewControllerForTransaction:*(a1 + 72)];
      v32 = objc_alloc_init(AMSAuthenticateOptions);
      [v32 setCanMakeAccountActive:0];
      v47 = [[AMSAuthenticateRequest alloc] initWithDSID:v53 altDSID:v52 username:v24 options:v32];
      v33 = [[AMSUIAuthenticateTask alloc] initWithRequest:v47 presentingViewController:v48];
      v34 = [v33 performAuthentication];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_3E4B4;
      v65[3] = &unk_1E3A18;
      v65[4] = *(a1 + 48);
      v66 = *(a1 + 80);
      v67 = *(a1 + 40);
      v71 = *(a1 + 88);
      v68 = v24;
      v72 = *(a1 + 96);
      v69 = *(a1 + 56);
      v35 = v55;
      v70 = v35;
      [v34 addFinishBlock:v65];

      v6 = 0;
      v36 = 0;
    }

    v40 = v55;
  }

  else
  {
    v40 = v55;
    v36 = v55;
  }

  v5 = v56;
LABEL_45:

LABEL_46:
  v5 = v36;
  if (v6 | v36)
  {
    goto LABEL_47;
  }

LABEL_48:
}

void sub_3E4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v8 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 56);
      v10 = [*(a1 + 48) objectForKeyedSubscript:@"assetLogID"];
      *buf = 138412802;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Error authenticating account: %@ -- %@, logID:%{public}@", buf, 0x20u);
    }

    v11 = *(a1 + 88);
    v12 = [*(a1 + 64) URL];
    (*(v11 + 16))(v11, 0, v12, *(a1 + 72));
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3E6B8;
    v13[3] = &unk_1E39F0;
    v7 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v7;
    v15 = *(a1 + 48);
    v16 = *(a1 + 80);
    dispatch_async(&_dispatch_main_q, v13);
  }
}

void sub_3E6CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 56);
      v6 = [*(a1 + 48) objectForKeyedSubscript:@"assetLogID"];
      *buf = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error refetching bag for dsid: %@ -- %@, logID:%{public}@", buf, 0x20u);
    }

    v7 = *(a1 + 88);
    v8 = [*(a1 + 64) URL];
    (*(v7 + 16))(v7, 0, v8, *(a1 + 72));
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3E8C8;
    v10[3] = &unk_1E39F0;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    v12 = *(a1 + 48);
    v13 = *(a1 + 80);
    dispatch_async(&_dispatch_main_q, v10);
  }
}

void sub_3EA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3EA4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v4 = [*(a1 + 32) _bookInfoForAssetAtURL:*(a1 + 40) withMoc:v3 error:&v14 needsCoordination:*(a1 + 64) updateDate:0];
  v5 = v4;
  if (v4)
  {
    v6 = v14 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && *(a1 + 56))
  {
    v7 = [v4 confirmBagContents];
    v8 = [v7 domain];
    v9 = [v7 code];
    v10 = [v8 isEqualToString:fd45c988dd8cc08fce2e58d17f4ed2];
    if (v9 == -996)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 == 1)
    {
      v12 = AssetEngineErrorDomain;
      v13 = [v7 userInfo];
      **(a1 + 56) = [NSError errorWithDomain:v12 code:2003 userInfo:v13];
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_3ED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v24 = v23;

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_3ED9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) existingBookInfoForURL:*(a1 + 40) fromManagedObjectContext:v3];
  v5 = [v4 embeddedArtHrefRejected];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 40) URLByAppendingPathComponent:@"iTunesArtwork"];
    v8 = +[NSFileManager defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      if (v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v11 = +[AEAssetEngine libraryMgr];
    v12 = [v11 metadataForAssetAtURL:*(a1 + 40) needsCoordination:1];

    v13 = [IMLibraryPlist coverPathFromPlistEntry:v12];
    if ([v13 length])
    {
      v14 = [*(a1 + 40) URLByAppendingPathComponent:v13];
      v15 = +[NSFileManager defaultManager];
      v16 = [v14 path];
      v17 = [v15 fileExistsAtPath:v16];

      if (v17)
      {
        v7 = v14;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (!v4)
    {
      v4 = [*(a1 + 48) _bookInfoForAssetAtURL:*(a1 + 40) withMoc:v3 error:0 needsCoordination:1 updateDate:0];
    }

    v18 = [v4 embeddedArtHref];
    if ([v18 length])
    {
      v19 = [*(a1 + 40) URLByAppendingPathComponent:v18];
      v20 = +[NSFileManager defaultManager];
      v21 = [v19 path];
      v22 = [v20 fileExistsAtPath:v21];

      if (v22)
      {
        v7 = v19;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_21:
    v23 = [v4 embeddedArtHrefRejected];

    if (!v7)
    {
      v25 = 0;
      if (!v23)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v24 = [[NSData alloc] initWithContentsOfURL:v7 options:8 error:0];
    if (v24)
    {
      if (!v23 && [AEBookInfo isUndesirableImageData:v24])
      {
        v25 = 1;
        goto LABEL_51;
      }

      v26 = [UIImage imageWithData:v24];
      v27 = *(*(a1 + 56) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;
    }

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v25 = 0;
      goto LABEL_51;
    }

    if (!v4)
    {
      v4 = [*(a1 + 48) _bookInfoForAssetAtURL:*(a1 + 40) withMoc:v3 error:0 needsCoordination:1 updateDate:0];
    }

    v29 = [v4 sinfInfo];
    if ([v29 count])
    {
      v51 = v29;
      if ([v29 count] >= 2)
      {
        v30 = [v7 path];
        v31 = [v4 bookBundlePath];
        v32 = [v30 substringFromIndex:{objc_msgSend(v31, "length")}];

        v50 = v32;
        v33 = [v4 documentAtPath:v32];
        v34 = v33;
        if (v33)
        {
          v35 = [v33 sinfNumber];
          v36 = [NSPredicate predicateWithFormat:@"sinfNumber ==[n] %@", v35];

          v49 = v36;
          v37 = [v4 sinfInfo];
          v38 = [v37 filteredSetUsingPredicate:v36];

          if ([v38 count] == &dword_0 + 1)
          {
            v39 = [v38 anyObject];
            v40 = [v39 sinfBlob];
          }

          else
          {
            v40 = 0;
          }

          v29 = v51;
          if (v40)
          {
LABEL_42:
            v54 = 0;
            v42 = [v7 path];
            v53 = 0;
            v43 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v42 sinfData:v40 refetch:&v54 error:&v53];
            v44 = v53;

            if (v43)
            {
              if (!v23 && [AEBookInfo isUndesirableImageData:v43])
              {
                v25 = 1;
LABEL_49:

                v29 = v51;
                goto LABEL_50;
              }

              v45 = [UIImage imageWithData:v43];
              v46 = *(*(a1 + 56) + 8);
              v47 = *(v46 + 40);
              *(v46 + 40) = v45;
            }

            v25 = 0;
            goto LABEL_49;
          }
        }

        else
        {

          v29 = v51;
        }
      }

      v41 = [v29 anyObject];
      v40 = [v41 sinfBlob];

      if (v40)
      {
        goto LABEL_42;
      }
    }

    v25 = 0;
    v43 = v24;
LABEL_50:

    v24 = v43;
LABEL_51:

    if (!v23)
    {
LABEL_52:
      v48 = [NSNumber numberWithBool:v25];
      [v4 setEmbeddedArtHrefRejected:v48];
    }

LABEL_53:
  }

  if ([v3 hasChanges])
  {
    v52 = 0;
    [v3 save:&v52];
  }

  [v3 reset];
}

id BKActionControllerLog()
{
  if (qword_22D018 != -1)
  {
    sub_1375E4();
  }

  v1 = qword_22D010;

  return v1;
}

void sub_3FE0C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKActionControllerLog");
  v2 = qword_22D010;
  qword_22D010 = v1;

  _objc_release_x1(v1, v2);
}

void sub_40374(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_40390(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained activityItems];
  v6 = v5;
  if (v3)
  {
    [v5 addObject:v3];
  }

  v7 = [UIActivityViewController alloc];
  v8 = [WeakRetained applicationActivities];
  v9 = [v7 initWithActivityItems:v6 applicationActivities:v8];

  v10 = [WeakRetained includedActivityTypes];
  [v9 setIncludedActivityTypes:v10];

  v11 = [WeakRetained excludedActivityTypes];
  if ([v11 count])
  {
    v12 = [WeakRetained excludedActivityTypes];
    [v9 setExcludedActivityTypes:v12];
  }

  else
  {
    [v9 setExcludedActivityTypes:0];
  }

  [v9 setModalPresentationStyle:7];
  v13 = [WeakRetained bookInfo];
  [v9 setIsContentManaged:{objc_msgSend(v13, "isManagedBook")}];

  v14 = BKActionControllerLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [v9 isContentManaged];
    v18 = @"NO";
    if (v17)
    {
      v18 = @"YES";
    }

    v29 = 138412546;
    v30 = v15;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%@ isContentManaged: %@", &v29, 0x16u);
  }

  v19 = [v9 excludedActivityTypes];

  if (v19)
  {
    v20 = BKActionControllerLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v9 excludedActivityTypes];
      v29 = 138412290;
      v30 = v21;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Excluded activity types: %@", &v29, 0xCu);
    }
  }

  v22 = [v9 popoverPresentationController];
  v23 = [WeakRetained ancestorViewController];
  v24 = [v23 view];
  [v22 setSourceView:v24];

  [v22 setBarButtonItem:*(a1 + 32)];
  [v22 setPermittedArrowDirections:15];
  v25 = [WeakRetained delegate];
  LOBYTE(v23) = objc_opt_respondsToSelector();

  if (v23)
  {
    v26 = [WeakRetained delegate];
    [v26 actionControllerWillShow:WeakRetained];
  }

  v27 = [WeakRetained ancestorViewController];
  v28 = +[UIColor bc_booksKeyColor];
  [v27 bc_presentViewController:v9 animated:1 tintColor:v28 completion:0];
}

void sub_40704(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_407B0;
  v6[3] = &unk_1E3258;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_4678C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_467B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_467CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v7 = [*(a1 + 32) directoryDelegate];
  v14 = [v6 pageNumberStringForChapter:v5 directoryDelegate:v7];

  v8 = objc_opt_class();
  v9 = [*(a1 + 32) directoryDelegate];
  v10 = [v8 pageNumberForChapter:v5 directoryDelegate:v9];

  [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
  v11 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v11 setObject:v14 forKeyedSubscript:@"pageNumber"];

  v12 = [NSNumber numberWithInteger:v10];
  v13 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v13 setObject:v12 forKeyedSubscript:@"pageInteger"];
}

void sub_46918(id a1, id a2, NSError *a3)
{
  if (a3)
  {
    sub_1375F8();
  }
}

void sub_47324(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 htmlName];
  v7 = [v6 length];

  if (v7)
  {
    [v5 htmlName];
  }

  else
  {
    [v5 name];
  }
  v26 = ;
  v8 = *(a1 + 56);
  v31 = @"indentationLevel";
  v9 = [v5 indentationLevel];
  v32 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v11 = [v8 classNameFromChapterInfo:v10 excludedFromSample:{objc_msgSend(v5, "isExcludedFromSample")}];
  v27 = v11;

  v12 = [NSString stringWithFormat:@"li%ld", *(*(*(a1 + 48) + 8) + 24)];
  v25 = v12;
  ++*(*(*(a1 + 48) + 8) + 24);
  v13 = [*(a1 + 56) pageNumberStringForChapter:v5 directoryDelegate:*(a1 + 32)];
  v14 = [*(a1 + 56) pageNumberForChapter:v5 directoryDelegate:*(a1 + 32)];
  v28 = [NSString stringWithFormat:@"%@%lu", @"row-", a3];
  v29[0] = @"href";
  v30[0] = v28;
  v30[1] = v26;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1E7188;
  }

  v30[2] = v15;
  v29[1] = @"title";
  v29[2] = @"pageNumber";
  v29[3] = @"pageInteger";
  v16 = [NSNumber numberWithInteger:v14];
  v30[3] = v16;
  v30[4] = v11;
  v29[4] = @"class";
  v29[5] = @"id";
  v30[5] = v12;
  v29[6] = @"absoluteOrder";
  v17 = [v5 absoluteOrder];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1E7188;
  }

  v30[6] = v19;
  v29[7] = @"rowIndex";
  v20 = [NSNumber numberWithUnsignedInteger:a3];
  v30[7] = v20;
  v29[8] = @"indentationLevel";
  v21 = [v5 indentationLevel];
  v30[8] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:9];
  v23 = [v22 mutableCopy];

  v24 = [*(a1 + 40) objectForKeyedSubscript:@"chapters"];
  [v24 addObject:v23];
}

void sub_47C20(id a1, id a2, NSError *a3)
{
  if (a3)
  {
    sub_137630();
  }
}

void sub_47FC4(id a1, id a2, NSError *a3)
{
  if (a3)
  {
    sub_137668();
  }
}

id sub_48054(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = BCIMLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "[BKTOCWebViewController2 webView:didFinishNavigation:]_block_invoke";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/Directory/BKTOCWebViewController2.m";
      v10 = 1024;
      v11 = 448;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s %s:%d", &v6, 0x1Cu);
    }

    v4 = BCIMLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "@Error encountered installing scripts into vertical toc.", &v6, 2u);
    }
  }

  *(*(a1 + 32) + 460) = 1;
  [*(a1 + 32) updateView];
  [*(*(a1 + 32) + 464) hideIndicatorAnimated:1 animationDelay:0.25];
  return [*(a1 + 32) highlightCurrentNode];
}

void sub_483E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    sub_1376A0();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v3[2](v3, v4 == 0);
  }
}

void sub_48460(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

void sub_487FC(id a1, id a2, NSError *a3)
{
  if (a3)
  {
    sub_1376D8();
  }
}

void sub_48FA8(id a1, id a2, NSError *a3)
{
  if (a3)
  {
    sub_137710();
  }
}

void sub_491E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [v3 dataUsingEncoding:4];
    v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:0];

    v6 = [v5 objectForKeyedSubscript:@"width"];
    v7 = [v6 integerValue];
    v8 = [v5 objectForKeyedSubscript:@"height"];
    [*(a1 + 32) setContentSize:{v7, objc_msgSend(v8, "integerValue")}];

    [*(a1 + 32) centerWebView];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315650;
      v13 = "[BKTOCWebViewController2 installJavaScriptWithCompletionBlock:]_block_invoke";
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/Directory/BKTOCWebViewController2.m";
      v16 = 1024;
      v17 = 659;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s %s:%d", &v12, 0x1Cu);
    }

    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "@installJavaScript error %@", &v12, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_493F8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    objc_opt_class();
    v4 = BUDynamicCast();
    v3[2](v3, v4);
  }
}

void sub_49AE8(id a1, id a2, NSError *a3)
{
  if (a3)
  {
    sub_137748();
  }
}

void sub_4A0EC(id a1, IMConfigurationAdder *a2)
{
  v6 = a2;
  v2 = AEBundle();
  v3 = [v2 localizedStringForKey:@"Library" value:&stru_1E7188 table:0];
  [(IMConfigurationAdder *)v6 addString:v3 forKey:@"libraryButtonTitle"];

  v4 = _UISolariumEnabled();
  v5 = 16.0;
  if (v4)
  {
    v5 = 25.0;
  }

  [(IMConfigurationAdder *)v6 addFloat:@"sideContentInset" forKey:v5];
}

void sub_4A198(id a1, IMConfigurationAdder *a2)
{
  v4 = a2;
  v2 = AEBundle();
  v3 = [v2 localizedStringForKey:@"Library" value:&stru_1E7188 table:0];
  [(IMConfigurationAdder *)v4 addString:v3 forKey:@"libraryButtonTitle"];

  [(IMConfigurationAdder *)v4 addFloat:@"sideContentInset" forKey:75.0];
}

void sub_4A29C(id a1, IMConfigurationAdder *a2)
{
  v2 = a2;
  [(IMConfigurationAdder *)v2 addFloat:@"tapToTurnWidth" forKey:80.0];
  [(IMConfigurationAdder *)v2 addFloat:@"singlePagePadding" forKey:30.0];
  v3 = +[IMConfigurationPredicate portraitPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v3 adder:&stru_1E3E30];

  v4 = +[IMConfigurationPredicate landscapePredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v4 adder:&stru_1E3E50];
}

void sub_4A360(id a1, IMConfigurationAdder *a2)
{
  v2 = a2;
  [(IMConfigurationAdder *)v2 addEdgeInsets:@"tocButtonImageEdgeInsets" forKey:0.0, -10.0, 0.0, 0.0];
  [(IMConfigurationAdder *)v2 addEdgeInsets:@"resumeButtonTitleEdgeInsets" forKey:0.0, 0.0, 0.0, 0.0];
}

void sub_4A3D4(id a1, IMConfigurationAdder *a2)
{
  v2 = a2;
  [(IMConfigurationAdder *)v2 addEdgeInsets:@"tocButtonImageEdgeInsets" forKey:0.0, 0.0, 0.0, 0.0];
  [(IMConfigurationAdder *)v2 addEdgeInsets:@"resumeButtonTitleEdgeInsets" forKey:0.0, 7.0, 0.0, -7.0];
}

void sub_4A4AC(id a1, IMConfigurationAdder *a2)
{
  v2 = a2;
  [(IMConfigurationAdder *)v2 addEdgeInsets:@"tocButtonImageEdgeInsets" forKey:0.0, 0.0, 0.0, 0.0];
  [(IMConfigurationAdder *)v2 addEdgeInsets:@"resumeButtonTitleEdgeInsets" forKey:0.0, 8.0, 0.0, -8.0];
  [(IMConfigurationAdder *)v2 addFloat:@"singlePagePadding" forKey:60.0];
  v3 = +[IMConfigurationPredicate portraitPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v3 adder:&stru_1E3E90];

  v4 = +[IMConfigurationPredicate landscapePredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v4 adder:&stru_1E3EB0];
}

void sub_4B964(uint64_t a1)
{
  v2 = [*(a1 + 32) book];
  [v2 setIsPreorder:&__kCFBooleanTrue];

  v3 = objc_retainBlock(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

id sub_4D20C(uint64_t a1)
{
  [*(a1 + 32) stopFetchingBookmarks];
  v2 = [*(a1 + 32) assetViewControllerDelegate];
  [v2 assetViewController:*(a1 + 32) requestClose:*(a1 + 40) error:0];

  [*(a1 + 32) saveBook];
  v3 = *(a1 + 32);

  return [v3 setControlsVisible:0 animated:0];
}

id sub_4E07C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, 0);
  }

  v4 = *(a1 + 32);

  return [v4 reloadExternalWebFrames];
}

id sub_4E0D8(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, 1);
  }

  v4 = *(a1 + 32);

  return [v4 reloadExternalWebFrames];
}

id sub_4E66C(uint64_t a1)
{
  [*(*(a1 + 32) + 200) setTheme:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 432);

  return [v3 setTheme:v2];
}

id sub_4EBE0(uint64_t a1)
{
  result = [*(a1 + 32) canShowContent];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resume];
  }

  return result;
}

_BYTE *sub_4ECD4(uint64_t a1)
{
  [*(a1 + 32) setResumeLocation:0];
  result = *(a1 + 32);
  if (result[264] == 1)
  {

    return [result startReadAloud];
  }

  return result;
}

void sub_4EDA0(uint64_t a1)
{
  [*(a1 + 32) cancelPendingHidePageControls];
  v2 = [*(a1 + 32) currentLocation];
  if (!v2)
  {
    v2 = [*(a1 + 32) location];
  }

  v6 = v2;
  [*(a1 + 32) setResumeLocation:v2];
  v3 = [*(a1 + 32) currentPageLocation];
  v4 = v3;
  if (!v3 || [v3 ordinal] == -1)
  {
    v5 = [*(a1 + 32) resumeLocation];
    [*(a1 + 32) setTocCurrentLocation:v5];
  }

  else
  {
    [*(a1 + 32) setTocCurrentLocation:v4];
  }

  [*(a1 + 32) stopReadAloud];
  [*(a1 + 32) setSection:1 animated:+[UIView areAnimationsEnabled](UIView adjustScrollToReveal:{"areAnimationsEnabled"), 0}];
}

uint64_t sub_4F0DC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
    [*(a1 + 32) setNeedsUpdateOfHomeIndicatorAutoHidden];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_4F144(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_4F2E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_4F3D4(uint64_t a1)
{
  v2 = objc_alloc_init(BKBrightnessController);
  v3 = *(a1 + 32);
  v4 = *(v3 + 520);
  *(v3 + 520) = v2;

  v5 = [*(a1 + 32) theme];
  v6 = [*(a1 + 32) brightnessController];
  [v6 setTheme:v5];

  v7 = *(a1 + 32);
  v8 = [v7 brightnessController];
  [v7 showOverlayViewController:v8 fromView:*(a1 + 40) popoverOnPhone:1 popoverBackgroundColor:0];
}

void sub_4F544(uint64_t a1)
{
  v2 = objc_alloc_init(BKAudioController);
  v3 = *(a1 + 32);
  v4 = *(v3 + 528);
  *(v3 + 528) = v2;

  v5 = [*(a1 + 32) theme];
  v6 = [*(a1 + 32) audioController];
  [v6 setTheme:v5];

  v7 = *(a1 + 32);
  v8 = [v7 audioController];
  [v8 setDelegate:v7];

  v9 = [UINavigationController alloc];
  v10 = [*(a1 + 32) audioController];
  v12 = [v9 initWithRootViewController:v10];

  v11 = [v12 navigationBar];
  [v11 setTranslucent:0];

  [*(a1 + 32) showOverlayViewController:v12 fromView:*(a1 + 40) popoverOnPhone:1 popoverBackgroundColor:0];
}

void sub_4F7F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[44])
  {
    [v2 setupAppearanceViewController];
    v3 = [*(a1 + 32) paginationController];
    [v3 pause];

    v2 = *(a1 + 32);
  }

  v4 = [v2 currentLocation];
  v5 = *(a1 + 32);
  v6 = [v5 location];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_4F934;
  v13 = &unk_1E3F28;
  v14 = *(a1 + 32);
  v15 = v4;
  v7 = v4;
  [v5 isLocationVisible:v6 completion:&v10];

  [*(a1 + 32) clearSelection];
  v8 = [*(a1 + 32) theme];
  v9 = [v8 tableViewBackgroundColor];

  [*(a1 + 32) showOverlayViewController:*(*(a1 + 32) + 368) fromItem:*(a1 + 40) popoverOnPhone:1 passthroughViews:0 popoverBackgroundColor:v9];
}

id *sub_4F934(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] setLocation:result[5]];
  }

  return result;
}

void sub_53124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_53150(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained pageCountIncludingUpsell] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [v4 book];
      v6 = [v5 sampleContent];
      v7 = 0;
      if (([v6 BOOLValue] & 1) == 0)
      {
        v8 = [v4 _currentReadingProgress];
        [v8 floatValue];
        v7 = v9;
      }

      LODWORD(v10) = v7;
      [v11 updateReadingProgressAndBumpHighWaterMarkToProgress:v10];
    }

    if ([v4 shouldSyncLocation:*(a1 + 32)])
    {
      [v11 clearAvoidSync];
    }

    else
    {
      [v11 setAvoidSync];
    }
  }
}

void sub_53888(uint64_t a1)
{
  [*(a1 + 32) clearSelection];
  v2 = [*(a1 + 32) currentLocation];
  if (v2)
  {
    v3 = v2;
    objc_opt_class();
    v4 = BUDynamicCast();
    v5 = v4;
    if (v4)
    {
      v6 = [v4 head];

      v3 = v6;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [*(*(a1 + 32) + 328) fetchedObjects];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if ([v12 annotationType] == 1)
        {
          v13 = [v12 location];
          v14 = [v13 isEqual:v3];

          if (v14)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:

      v7 = [*(a1 + 32) addAnnotation:1 location:v3 selectedText:0 representativeText:0];
      v15 = +[AEAnnotationProvider sharedInstance];
      v16 = [v7 managedObjectContext];
      [v15 saveManagedObjectContext:v16];

      [*(a1 + 32) paginationUpdateRequired];
    }

    [*(a1 + 32) _notifyBookmarkObservers];
  }
}

void sub_53AFC(uint64_t a1)
{
  [*(a1 + 32) clearSelection];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) visiblePageBookmarks];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 32) book];
        [v8 deleteAnnotation:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = +[AEAnnotationProvider sharedInstance];
  v10 = [v9 uiManagedObjectContext];
  [v9 saveManagedObjectContext:v10];

  [*(a1 + 32) paginationUpdateRequired];
  [*(a1 + 32) _notifyBookmarkObservers];
}

id *sub_54B48(id *result, int a2)
{
  if (a2)
  {
    return [result[4] updateBookmarkButton:1];
  }

  return result;
}

void sub_563EC(uint64_t a1)
{
  v2 = objc_alloc_init(LTUITranslationViewController);
  if (([*(a1 + 32) im_isCompactWidth] & 1) == 0 && (objc_msgSend(*(a1 + 32), "im_isCompactHeight") & 1) == 0)
  {
    [v2 setModalPresentationStyle:7];
  }

  v3 = [[NSAttributedString alloc] initWithString:*(a1 + 40)];
  [v2 setText:v3];

  [v2 setIsSourceEditable:0];
  [v2 setOverrideUserInterfaceStyle:{objc_msgSend(*(a1 + 32), "overrideUserInterfaceStyle")}];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_56588;
  v7[3] = &unk_1E2E08;
  v8 = *(a1 + 56);
  [v2 setDismissCompletionHandler:v7];
  v4 = [v2 popoverPresentationController];
  [v4 setSourceView:*(a1 + 48)];
  [v4 setPermittedArrowDirections:15];
  [v4 setDelegate:*(a1 + 32)];
  [v4 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:*(a1 + 32)];
  v5 = *(a1 + 32);
  v6 = +[UIColor bc_booksKeyColor];
  [v5 bc_presentViewController:v2 animated:1 tintColor:v6 completion:0];

  [*(a1 + 32) setTranslationViewController:v2];
}

void sub_56588(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_57510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_57534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateToolbarController];
  v2 = objc_retainBlock(*(a1 + 32));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }
}

void sub_581A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_581BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  v4 = [v5 searchButtonItem];
  [v5 showOverlayViewController:v3 fromItem:v4 popoverOnPhone:0 passthroughViews:&__NSArray0__struct popoverBackgroundColor:0];
}

void sub_58514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_58530(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_587F0;
      v7[3] = &unk_1E36F8;
      v5 = &v9;
      objc_copyWeak(&v9, (a1 + 48));
      v6 = &v8;
      v8 = *(a1 + 40);
      dispatch_async(&_dispatch_main_q, v7);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_58694;
      block[3] = &unk_1E4038;
      v5 = &v13;
      objc_copyWeak(&v13, (a1 + 48));
      v6 = &v11;
      v11 = *(a1 + 32);
      v14 = *(a1 + 56);
      v12 = *(a1 + 40);
      dispatch_async(&_dispatch_main_q, block);
    }

    objc_destroyWeak(v5);
  }
}

void sub_58694(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_58778;
  v5[3] = &unk_1E36F8;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [WeakRetained recordedJumpToLocation:v3 animated:v4 completion:v5];

  objc_destroyWeak(&v7);
}

void sub_58778(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSearchResult:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 highlightSearchResult:*(a1 + 32) forceVisible:1];
}

void sub_587F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSearchResult:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 highlightSearchResult:*(a1 + 32) forceVisible:1];
}

void sub_58FAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 40) view];
  [v2 convertRect:v11 toView:{v4, v6, v8, v10}];
  v30 = CGRectIntegral(v29);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;

  if ([*(a1 + 40) im_isCompactWidth])
  {
    v16 = 1;
  }

  else
  {
    v16 = [*(a1 + 40) im_isCompactHeight];
  }

  v17 = -[BCDDParsecCollectionViewController initWithString:range:]([BCDDParsecCollectionViewController alloc], "initWithString:range:", *(a1 + 48), 0, [*(a1 + 48) length]);
  -[BCDDParsecCollectionViewController setOverrideUserInterfaceStyle:](v17, "setOverrideUserInterfaceStyle:", [*(a1 + 40) overrideUserInterfaceStyle]);
  if ((v16 & 1) == 0)
  {
    [(BCDDParsecCollectionViewController *)v17 setModalPresentationStyle:7];
  }

  v18 = [(BCDDParsecCollectionViewController *)v17 popoverPresentationController];
  v19 = [*(a1 + 40) view];
  [v18 setSourceView:v19];

  [v18 setSourceRect:{x, y, width, height}];
  [v18 setPermittedArrowDirections:15];
  [v18 setDelegate:*(a1 + 40)];
  [v18 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:*(a1 + 40)];
  v20 = *(a1 + 40);
  v21 = +[UIColor bc_booksKeyColor];
  [v20 bc_presentViewController:v17 animated:1 tintColor:v21 completion:0];

  [(BCDDParsecCollectionViewController *)v17 dismissCompletionHandler];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_5920C;
  v27 = v26 = &unk_1E4088;
  v28 = *(a1 + 56);
  v22 = v27;
  [(BCDDParsecCollectionViewController *)v17 setDismissCompletionHandler:&v23];
  [*(a1 + 40) setReferenceLibraryViewController:{v17, v23, v24, v25, v26}];
}

void sub_5920C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  v4 = objc_retainBlock(*(a1 + 40));
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

void sub_5AE68(uint64_t a1)
{
  [*(a1 + 32) clearSearchResult];
  v2 = *(a1 + 32);
  v3 = v2[112];
  [v2 setStatusBarHidden:0 animated:1];
  *(*(a1 + 32) + 40) = 3;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) book];
  v6 = [v4 propertySourceFromBook:v5];

  if (![*(a1 + 40) count])
  {
    v9 = [[AEAssetActivityItemProvider alloc] initWithPropertySource:v6];
    goto LABEL_9;
  }

  if (*(a1 + 64) != 1)
  {
    v10 = [*(a1 + 40) count];
    v11 = [AEAssetActivityItemProvider alloc];
    v7 = v11;
    if (v10 == &dword_0 + 1)
    {
      v8 = [*(a1 + 40) objectAtIndexedSubscript:0];
      goto LABEL_7;
    }

    v9 = [v11 initWithAnnotations:*(a1 + 40) propertySource:v6];
LABEL_9:
    v13 = v9;
    goto LABEL_10;
  }

  v7 = [AEAssetActivityItemProvider alloc];
  v8 = [*(a1 + 40) lastObject];
LABEL_7:
  v12 = v8;
  v13 = [v7 initWithAnnotation:v8 propertySource:v6];

LABEL_10:
  [v13 setPaginationDataSource:*(a1 + 32)];
  v14 = objc_opt_class();
  v15 = [*(a1 + 32) book];
  [v13 setCitationsAllowed:{objc_msgSend(v14, "areCitationsAllowedForBook:", v15)}];

  objc_initWeak(&location, *(a1 + 32));
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_5B184;
  v24[3] = &unk_1E4128;
  objc_copyWeak(&v30, &location);
  v16 = v13;
  v25 = v16;
  v17 = v6;
  v18 = *(a1 + 32);
  v28 = v17;
  v26 = v18;
  v31 = v3;
  v29 = *(a1 + 56);
  v27 = *(a1 + 48);
  v19 = objc_retainBlock(v24);
  v20 = +[BCProgressKitController sharedController];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_5B438;
  v22[3] = &unk_1E3B50;
  v21 = v19;
  v23 = v21;
  [v20 activeContextWithCompletion:v22];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void sub_5B168(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_5B184(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [NSMutableArray arrayWithObject:*(a1 + 32)];
  v6 = v5;
  if (v3)
  {
    [v5 addObject:v3];
  }

  v7 = [IMActivityController alloc];
  v8 = [*(a1 + 32) shareType];
  v9 = *(a1 + 56);
  v10 = [*(a1 + 40) ba_effectiveAnalyticsTracker];
  v11 = [v7 initWithActivityItems:v6 applicationActivities:0 shareType:v8 propertySource:v9 tracker:v10];

  v12 = [WeakRetained book];
  [v11 setManagedBook:{objc_msgSend(v12, "isManagedBook")}];

  v13 = [v11 viewController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5B3BC;
  v17[3] = &unk_1E4100;
  v17[4] = WeakRetained;
  v19 = *(a1 + 80);
  v18 = *(a1 + 64);
  [v11 setCompletionHandler:v17];
  [v13 setModalPresentationStyle:7];
  [v13 setOverrideUserInterfaceStyle:{objc_msgSend(*(a1 + 40), "overrideUserInterfaceStyle")}];
  v14 = [v13 popoverPresentationController];
  [v14 setBarButtonItem:*(a1 + 48)];
  [v14 setPermittedArrowDirections:*(*(a1 + 40) + 40)];
  [v14 setDelegate:WeakRetained];
  [v14 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:*(a1 + 40)];
  [WeakRetained setActivityViewController:v13];
  v15 = *(a1 + 40);
  v16 = +[UIColor bc_booksKeyColor];
  [v15 bc_presentViewController:v13 animated:1 tintColor:v16 completion:0];
}

void sub_5B3BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(a1 + 32) setStatusBarHidden:(*(a1 + 48) & 1) == 0 animated:1];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, a3);
  }
}

void sub_5B438(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5B4E4;
  v6[3] = &unk_1E3258;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_5B620(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[112];
  [v2 setStatusBarHidden:0 animated:1];
  v4 = [*(a1 + 32) view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 statusBarManager];

  [v7 statusBarFrame];
  x = v78.origin.x;
  y = v78.origin.y;
  width = v78.size.width;
  height = v78.size.height;
  v12 = 0.0;
  if (!CGRectIsNull(v78))
  {
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    v12 = CGRectGetHeight(v79);
  }

  v13 = CGRectZero.origin.x;
  v14 = CGRectZero.origin.y;
  v16 = CGRectZero.size.width;
  v15 = CGRectZero.size.height;
  *(*(a1 + 32) + 40) = 15;
  if (*(a1 + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = *(a1 + 40);
      v18 = [v17 imageView];
      [v18 frame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [*(a1 + 32) view];
      [v17 convertRect:v27 toView:{v20, v22, v24, v26}];
      v81 = CGRectIntegral(v80);
      v13 = v81.origin.x;
      v14 = v81.origin.y;
      v16 = v81.size.width;
      v15 = v81.size.height;
    }

    v82.origin.x = v13;
    v82.origin.y = v14;
    v82.size.width = v16;
    v82.size.height = v15;
    if (CGRectIsEmpty(v82))
    {
      v28 = *(a1 + 40);
      v29 = [*(a1 + 32) view];
      [v28 convertRect:v29 toView:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
      v84 = CGRectIntegral(v83);
      v13 = v84.origin.x;
      v14 = v84.origin.y;
      v16 = v84.size.width;
      v15 = v84.size.height;
    }

    v30 = [*(a1 + 32) view];
    [v30 bounds];
    v93.origin.x = v31;
    v93.origin.y = v32;
    v93.size.width = v33;
    v93.size.height = v34;
    v85.origin.x = v13;
    v85.origin.y = v14;
    v85.size.width = v16;
    v85.size.height = v15;
    v35 = CGRectIntersectsRect(v85, v93);

    if (v35)
    {
      v36 = [*(a1 + 32) view];
      [v36 bounds];
      v94.origin.x = v37;
      v94.origin.y = v38;
      v94.size.width = v39;
      v94.size.height = v40;
      v86.origin.x = v13;
      v86.origin.y = v14;
      v86.size.width = v16;
      v86.size.height = v15;
      v87 = CGRectIntersection(v86, v94);
      v13 = v87.origin.x;
      v14 = v87.origin.y;
      v16 = v87.size.width;
      v15 = v87.size.height;
    }
  }

  v88.origin.x = v13;
  v88.origin.y = v14;
  v88.size.width = v16;
  v88.size.height = v15;
  if (CGRectIsNull(v88))
  {
    if (+[BKBookViewController useEnhancedEditMenu](BKBookViewController, "useEnhancedEditMenu") || (+[UIMenuController sharedMenuController](UIMenuController, "sharedMenuController"), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 isMenuVisible], v41, !v42))
    {
      [*(a1 + 40) bounds];
      v13 = CGRectGetMidX(v91) + -1.0;
      [*(a1 + 40) bounds];
      v14 = v12 + CGRectGetMidY(v92) + -1.0;
    }

    else
    {
      v43 = +[UIMenuController sharedMenuController];
      [v43 menuFrame];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v89.origin.x = v45;
      v89.origin.y = v47;
      v89.size.width = v49;
      v89.size.height = v51;
      v13 = CGRectGetMidX(v89) + -2.0;
      v90.origin.x = v45;
      v90.origin.y = v47;
      v90.size.width = v49;
      v90.size.height = v51;
      v14 = CGRectGetMaxY(v90) + -2.0;
    }

    v15 = 1.0;
    v16 = 1.0;
  }

  v52 = objc_opt_class();
  v53 = [*(a1 + 32) book];
  v54 = [v52 propertySourceFromBook:v53];

  if (![*(a1 + 48) count])
  {
    v57 = [[AEAssetActivityItemProvider alloc] initWithPropertySource:v54];
    goto LABEL_24;
  }

  if (*(a1 + 96) != 1)
  {
    v58 = [*(a1 + 48) count];
    v59 = [AEAssetActivityItemProvider alloc];
    v55 = v59;
    if (v58 == &dword_0 + 1)
    {
      v56 = [*(a1 + 48) objectAtIndexedSubscript:0];
      goto LABEL_22;
    }

    v57 = [v59 initWithAnnotations:*(a1 + 48) propertySource:v54];
LABEL_24:
    v61 = v57;
    goto LABEL_25;
  }

  v55 = [AEAssetActivityItemProvider alloc];
  v56 = [*(a1 + 48) lastObject];
LABEL_22:
  v60 = v56;
  v61 = [v55 initWithAnnotation:v56 propertySource:v54];

LABEL_25:
  [v61 setPaginationDataSource:*(a1 + 32)];
  v62 = objc_opt_class();
  v63 = [*(a1 + 32) book];
  [v61 setCitationsAllowed:{objc_msgSend(v62, "areCitationsAllowedForBook:", v63)}];

  v64 = [NSArray arrayWithObject:v61];
  v65 = [IMActivityController alloc];
  v66 = [v61 shareType];
  v67 = [*(a1 + 32) ba_effectiveAnalyticsTracker];
  v68 = [v65 initWithActivityItems:v64 applicationActivities:0 shareType:v66 propertySource:v54 tracker:v67];

  v69 = [*(a1 + 32) book];
  [v68 setManagedBook:{objc_msgSend(v69, "isManagedBook")}];

  v70 = [v68 viewController];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_5BCC8;
  v75[3] = &unk_1E4100;
  v75[4] = *(a1 + 32);
  v77 = v3;
  v76 = *(a1 + 56);
  [v68 setCompletionHandler:v75];
  [v70 setModalPresentationStyle:7];
  [v70 setOverrideUserInterfaceStyle:{objc_msgSend(*(a1 + 32), "overrideUserInterfaceStyle")}];
  v71 = [v70 popoverPresentationController];
  v72 = [*(a1 + 32) view];
  [v71 setSourceView:v72];

  [v71 setSourceRect:{v13, v14, v16, v15}];
  [v71 setPermittedArrowDirections:*(*(a1 + 32) + 40)];
  [v71 setDelegate:*(a1 + 32)];
  [v71 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:*(a1 + 32)];
  [v71 setCanOverlapSourceViewRect:1];
  [*(a1 + 32) setActivityViewController:v70];
  v73 = *(a1 + 32);
  v74 = +[UIColor bc_booksKeyColor];
  [v73 bc_presentViewController:v70 animated:1 tintColor:v74 completion:0];
}

void sub_5BCC8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(a1 + 32) setStatusBarHidden:(*(a1 + 48) & 1) == 0 animated:1];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, a3);
  }
}

void sub_5C074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_5C090(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = [*(a1 + 32) view];
    v11 = [WeakRetained view];
    [v10 convertRect:v11 toView:{a2, a3, a4, a5}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = WeakRetained[43];
    if (!v20)
    {
      v21 = [[AEHighlightColorEditorController alloc] initWithNibName:0 bundle:0];
      v22 = WeakRetained[43];
      WeakRetained[43] = v21;

      [WeakRetained[43] setDelegate:?];
      v20 = WeakRetained[43];
    }

    [v20 setAnnotationTheme:*(a1 + 40)];
    [WeakRetained[43] setPageTheme:*(a1 + 64)];
    [WeakRetained[43] setAnnotation:*(a1 + 48)];
    [WeakRetained addChildViewController:WeakRetained[43]];
    v23 = WeakRetained[43];
    v24 = [WeakRetained view];
    [v23 presentFromRect:v24 view:{v13, v15, v17, v19}];
  }
}

void sub_5C3C4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = [*(a1 + 48) view];
  [v10 shareAnnotation:v11 fromRect:v12 inView:*(a1 + 56) completion:{a2, a3, a4, a5}];
}

void sub_5ECBC(uint64_t a1)
{
  v2 = [*(a1 + 32) assetViewControllerDelegate];
  [v2 assetViewController:*(a1 + 32) requestClose:1 error:*(a1 + 40)];
}

void sub_5EF38(uint64_t a1)
{
  v2 = [*(a1 + 32) assetViewControllerDelegate];
  [v2 assetViewController:*(a1 + 32) requestClose:1 error:*(a1 + 40)];
}

void sub_5F64C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (CGRectIsNull(*&a2))
  {
    sub_137C40();
  }

  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  if (!CGRectIsNull(v24))
  {
    v10 = [*(a1 + 32) view];
    v11 = [*(a1 + 40) view];
    [v10 convertRect:v11 toView:{a2, a3, a4, a5}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = *(a1 + 40);
    v21 = v20[42];
    v22 = [v20 view];
    [v21 presentFromRect:v22 view:{v13, v15, v17, v19}];
  }
}

id *sub_5FF0C(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] clearSelectedAnnotation];
  }

  return result;
}

void sub_60888(uint64_t a1)
{
  v7 = [BKExpandedContentResource resourceForURL:*(a1 + 32)];
  v2 = [*(a1 + 40) book];
  v3 = [v2 cacheItem];
  [v7 setCacheItem:v3];

  if (BEDoesURLPointToUSDZFile())
  {
    v4 = [*(a1 + 32) absoluteURL];
    v5 = [v4 standardizedURL];
    v6 = BEURLHandlerAssetInfoPathForBookURL();
    [v7 setSourceURL:v6];
  }

  [*(a1 + 40) showExpandedContentForResource:v7 atLocation:0 completion:0];
}

void sub_61078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_61094(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [WeakRetained setDoNotDisturbStatusAtStart:v4];
}

void sub_6137C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_613C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_613DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_614BC;
  v8[3] = &unk_1E4330;
  v7 = *(a1 + 32);
  v4 = v7.i64[0];
  v5 = *(a1 + 56);
  v9 = vextq_s8(v7, v7, 8uLL);
  v12 = v5;
  v10 = *(a1 + 48);
  v11 = v3;
  v6 = v3;
  [v4 performAfterPrivateDataFetchedWithCompletionHandler:v8];
}

void sub_614BC(uint64_t a1)
{
  v2 = [*(a1 + 32) upSellData];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_615A4;
  block[3] = &unk_1E4308;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v3;
  v10 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v2;
  v9 = *(a1 + 56);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_615A4(uint64_t a1)
{
  v2 = [*(a1 + 32) readingSessionDataForSearchViewController:0];
  v3 = [*(a1 + 32) analyticsReadingSettingsData];
  v4 = [*(a1 + 32) _contentSettingsDataFromReadingSessionData:v2 optedIn:{objc_msgSend(*(a1 + 40), "optedIn")}];
  v5 = *(a1 + 72);
  if (*(*(v5 + 8) + 40))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_61704;
    v8[3] = &unk_1E42E0;
    v8[4] = *(a1 + 80);
    v8[5] = v5;
    v6 = objc_retainBlock(v8);
    v7 = +[BAEventReporter sharedReporter];
    [v7 emitReadEventWithTracker:*(a1 + 40) readingSessionData:v2 contentData:*(a1 + 48) readingSettingsData:v3 upSellData:*(a1 + 56) contentSettingsData:v4 doNotDisturbData:*(a1 + 64) startTime:*(*(*(a1 + 72) + 8) + 40) completion:v6];
  }

  else
  {
    v6 = BCCurrentBookLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_137D60(v6);
    }
  }
}

void sub_61704(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_6177C;
  v1[3] = &unk_1E42E0;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v1);
}

void sub_6177C(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_619BC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = [[BADoNotDisturbData alloc] initWithStartStatus:*(a1 + 40) endStatus:v3];
  (*(*(a1 + 32) + 16))();
}

void sub_636F8(uint64_t a1, CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
  v18.origin.x = CGRectZero.origin.x;
  v18.origin.y = CGRectZero.origin.y;
  v18.size.width = CGRectZero.size.width;
  v18.size.height = CGRectZero.size.height;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (!CGRectEqualToRect(v18, v21))
  {
    v10 = [*(a1 + 32) view];
    [v10 bounds];
    v22.origin.x = v11;
    v22.origin.y = v12;
    v22.size.width = v13;
    v22.size.height = v14;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v20 = CGRectIntersection(v19, v22);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
  }

  v15 = objc_retainBlock(*(a1 + 40));
  if (v15)
  {
    v16 = v15;
    v15[2](x, y, width, height);
    v15 = v16;
  }
}

void sub_638A4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = objc_retainBlock(*(a1 + 32));
  if (v9)
  {
    v10 = v9;
    v9[2](a2, a3, a4, a5);
    v9 = v10;
  }
}

void sub_63A48(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = objc_retainBlock(*(a1 + 32));
  if (v9)
  {
    v10 = v9;
    v9[2](a2, a3, a4, a5);
    v9 = v10;
  }
}

void sub_63AC4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = objc_retainBlock(*(a1 + 32));
  if (v9)
  {
    v10 = v9;
    v9[2](a2, a3, a4, a5);
    v9 = v10;
  }
}

void sub_64F34(id a1, IMConfigurationAdder *a2)
{
  v2 = a2;
  v3 = +[IMConfigurationPredicate phoneSizeClassPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v3 adder:&stru_1E43C0];

  v4 = +[IMConfigurationPredicate tallPhoneSizeClassPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v4 adder:&stru_1E43E0];

  v5 = +[IMConfigurationPredicate largePhoneSizeClassPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v5 adder:&stru_1E4400];

  v6 = +[IMConfigurationPredicate superPhoneLandscapeExactSizePredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v6 adder:&stru_1E4420];

  v7 = +[IMConfigurationPredicate megaPhoneSizeClassPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v7 adder:&stru_1E4440];

  v8 = +[IMConfigurationPredicate superMegaPhonePortraitExactSizePredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v8 adder:&stru_1E4460];

  v9 = +[IMConfigurationPredicate iPadSizeClassPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v9 adder:&stru_1E4480];

  v10 = +[IMConfigurationPredicate iPad10SizeClassPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v10 adder:&stru_1E44A0];

  v11 = +[IMConfigurationPredicate iPadOtherSizeClassPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v11 adder:&stru_1E44C0];

  v12 = +[IMConfigurationPredicate megaPadSizeClassPredicate];
  [(IMConfigurationAdder *)v2 addWithPredicate:v12 adder:&stru_1E44E0];
}

id AEBundle()
{
  if (qword_22D028 != -1)
  {
    sub_137DA4();
  }

  v1 = qword_22D020;

  return v1;
}

void sub_652FC(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = qword_22D020;
  qword_22D020 = v1;

  _objc_release_x1(v1, v2);
}

id sub_66A68(uint64_t a1)
{
  *(*(a1 + 32) + 161) = 0;
  [*(a1 + 32) _updatePageViewScrollStates];
  [*(a1 + 40) postEvent:kBETestDriverPageTurnAnimationEnd sender:*(a1 + 32)];
  v2 = kBETestDriverPageTurnEnd;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 postEvent:v2 sender:v4];
}

void sub_67050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_67074(uint64_t a1)
{
  *(*(a1 + 32) + 162) = 0;
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _visibleAreaChangedInScrollView:WeakRetained];
}

void sub_68944(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_68D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_68D6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a3;
    WeakRetained = objc_retainBlock(v3);

    v4 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    WeakRetained[2](WeakRetained);
  }

  else
  {
    v6 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _postLoadComplete:v6];
  }

  v4 = WeakRetained;
LABEL_6:
}

void sub_690B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_690D4(id a1, BEEvaluateJavaScriptContext *a2)
{
  v2 = a2;
  v3 = +[BEContentLayoutInfo textContentScript];
  [(BEEvaluateJavaScriptContext *)v2 addScriptToEvaluate:v3 key:@"textContent" transform:0];

  v4 = +[BEContentLayoutInfo textDirectionScript];
  [(BEEvaluateJavaScriptContext *)v2 addScriptToEvaluate:v4 key:@"textDirection" transform:0];

  v5 = +[BEContentLayoutInfo writingModeScript];
  [(BEEvaluateJavaScriptContext *)v2 addScriptToEvaluate:v5 key:@"writingMode" transform:0];

  v6 = +[BEContentLayoutInfo scrollingElementSizeScript];
  [(BEEvaluateJavaScriptContext *)v2 addScriptToEvaluate:v6 key:@"scrollingElementSize" transform:&stru_1E4780];

  v7 = +[BEContentSupportJS performAfterLoad];
  [(BEEvaluateJavaScriptContext *)v2 addScriptToEvaluate:v7 key:@"performAfterLoad" transform:0];
}

void sub_69208(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 stringResultForKey:@"textContent"];
  [WeakRetained setTextContent:v5];

  [WeakRetained setTextDirectionDetermined:1];
  v6 = [v3 stringResultForKey:@"textDirection"];
  [WeakRetained setPageTextDirectionIsRTL:{objc_msgSend(v6, "isEqualToString:", @"textDirectionRTL"}];
  v7 = [v3 stringResultForKey:@"writingMode"];
  [WeakRetained setIsVerticalDocument:{objc_msgSend(v7, "hasPrefix:", @"vertical-"}];
  v8 = [v3 valueResultForKey:@"scrollingElementSize"];

  if (v8)
  {
    v9 = [WeakRetained webView];
    [v9 setBe_estimatedContentSizeValue:v8];
  }

  v10 = [WeakRetained webView];
  v11 = [v10 _paginationMode];

  if (v11)
  {
    v12 = [WeakRetained webView];
    v13 = [v12 _pageCount];

    if (v13 <= 1)
    {
      v14 = &dword_0 + 1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = [WeakRetained _scrollPageCountFromCurrentPageSize];
  }

  if ([WeakRetained pageCount] != v14)
  {
    v15 = _AEWKLoaderLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [WeakRetained pageCount]);
      v17 = [NSNumber numberWithInteger:v14];
      v20 = 138412802;
      v21 = WeakRetained;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Loader %@ finished executing JS - previously captured page count has been updated from %@ to %@", &v20, 0x20u);
    }

    [WeakRetained setPageCount:v14];
  }

  v18 = objc_retainBlock(*(a1 + 32));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18);
  }
}

void sub_697BC(uint64_t a1)
{
  [*(a1 + 32) setPageCount:{objc_msgSend(*(a1 + 40), "_pageCount")}];
  v2 = _AEWKLoaderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) ordinal];
    v4 = *(*(a1 + 32) + 80);
    v5 = 134218240;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Loader updatePaginationOptions for ordinal %lu captured pageCount:%lu", &v5, 0x16u);
  }
}

void sub_69F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_69F38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained setTocIdCssRules:v5];
    }

    else
    {
      v9 = _AEWKLoaderLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 32) ordinal];
        v11 = 134218242;
        v12 = v10;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "No result parseTOCIdCssRules. Ordinal: %lu Error: %@", &v11, 0x16u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_6A524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6A548(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 addScriptToEvaluate:v3 key:@"contentInfoUpdate" transform:0];
  [v4 addScriptToEvaluate:a1[5] key:@"cfiUpdateSource" transform:0];
  [v4 addScriptToEvaluate:a1[6] key:@"cleanupUpdateSource" transform:0];
  v5 = +[BEContentSupportJS performAfterLoad];
  [v4 addScriptToEvaluate:v5 key:@"performAfterLoad" transform:0];

  v6 = _AEWKLoaderLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = a1[7];
    v8 = [v7 webView];
    v9 = a1[8];
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "loader: %@ webview: %@ processing request: %@ adding scripts to context", &v10, 0x20u);
  }
}

void sub_6A6A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _AEWKLoaderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [v6 webView];
    v8 = *(a1 + 40);
    *buf = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "loader: %@ webview: %@ processing request: %@ completed initial evaluation.  Generating pagination data.", buf, 0x20u);
  }

  objc_initWeak(buf, WeakRetained);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6A858;
  v9[3] = &unk_1E36F8;
  objc_copyWeak(&v11, buf);
  v10 = *(a1 + 40);
  [WeakRetained generatePaginationDataCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void sub_6A834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6A858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setState:6];
  v2 = [*(a1 + 32) completion];
  v3 = *(a1 + 32);
  v4 = [WeakRetained pendingInfoRequest];
  (v2)[2](v2, v3, v4 == 0);

  [WeakRetained setCurrentInfoRequest:0];
  [WeakRetained _sendNextInfoRequest];
}

void sub_6AACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6AAF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained currentInfoRequest];
    [v3 setState:5];
  }

  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

void sub_6ADA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6ADCC(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[BEContentLayoutInfo anchorFramesScript];
    [v8 addScriptToEvaluate:v4 key:@"anchorFrames" transform:&stru_1E47C0];

    v5 = +[BEContentLayoutInfo mediaFramesScript];
    [v8 addScriptToEvaluate:v5 key:@"mediaFrames" transform:&stru_1E47C0];

    v6 = +[BEContentLayoutInfo scrollingElementSizeScript];
    [v8 addScriptToEvaluate:v6 key:@"scrollingElementSize" transform:&stru_1E4780];

    v7 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 addScriptsToLoader:WeakRetained context:v8];
    }
  }
}

void sub_6AEF4(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [v15 dictionaryResultForKey:@"mediaFrames"];
    [WeakRetained setMediaFrames:v4];

    v5 = [v15 dictionaryResultForKey:@"anchorFrames"];
    [WeakRetained setAnchorFrames:v5];

    v6 = [v15 valueResultForKey:@"scrollingElementSize"];
    v7 = v6;
    if (v6)
    {
      [v6 CGSizeValue];
      [WeakRetained setContentSize:?];
    }

    v8 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 scriptsDidCompleteForLoader:WeakRetained context:v15];
    }
  }

  v9 = [WeakRetained anchorFrames];
  v10 = [WeakRetained _pageOffsetsForFrames:v9];
  [WeakRetained setAnchorLocations:v10];

  v11 = [WeakRetained mediaFrames];
  v12 = [WeakRetained _pageOffsetsForFrames:v11];
  [WeakRetained setMediaLocations:v12];

  v13 = objc_retainBlock(*(a1 + 32));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13);
  }
}

void sub_6B1D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_6B200(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[BEContentLayoutInfo mediaFramesScript];
    [v6 addScriptToEvaluate:v4 key:@"mediaFrames" transform:&stru_1E47C0];

    v5 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 addScriptsToLoader:WeakRetained context:v6];
    }
  }
}

void sub_6B2C0(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [v10 dictionaryResultForKey:@"mediaFrames"];
    [WeakRetained setMediaFrames:v4];

    v5 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 scriptsDidCompleteForLoader:WeakRetained context:v10];
    }
  }

  v6 = [WeakRetained mediaFrames];
  v7 = [WeakRetained _pageOffsetsForFrames:v6];
  [WeakRetained setMediaLocations:v7];

  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }
}

void sub_6B8AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [*(a1 + 32) pageOffsetRangeForRect:BKUnionRects(v3)];
    v6 = v5;
    v7 = _AEWKLoaderLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v15 = 134218498;
      v16 = v4;
      v17 = 2048;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Determined pageOffset %lu length: %lu for cfi location %@", &v15, 0x20u);
    }

    v9 = objc_retainBlock(*(a1 + 48));
    v10 = v9;
    if (v9)
    {
      v11 = v9[2];
LABEL_10:
      v11();
    }
  }

  else
  {
    v12 = _AEWKLoaderLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) ordinal];
      v15 = 134217984;
      v16 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "pageOffsetRangeForLocation unable to determine client rects for ordinal:%lu", &v15, 0xCu);
    }

    v14 = objc_retainBlock(*(a1 + 48));
    v10 = v14;
    if (v14)
    {
      v11 = v14[2];
      goto LABEL_10;
    }
  }
}

void sub_6BA54(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 CGRectValue];
    v3 = [*(a1 + 32) pageOffsetRangeForRect:?];
    v5 = v4;
    v6 = _AEWKLoaderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v15 = 134218498;
      v16 = v3;
      v17 = 2048;
      v18 = v5;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Determined pageOffset %lu length: %lu for epub location %@", &v15, 0x20u);
    }

    v8 = objc_retainBlock(*(a1 + 48));
    v9 = v8;
    if (v8)
    {
      v10 = v8[2];
LABEL_10:
      v10();
    }
  }

  else
  {
    v11 = _AEWKLoaderLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) ordinal];
      v15 = 138412546;
      v16 = v12;
      v17 = 2048;
      v18 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "failed to get location for %@ for ordinal:%lu", &v15, 0x16u);
    }

    v14 = objc_retainBlock(*(a1 + 48));
    v9 = v14;
    if (v14)
    {
      v10 = v14[2];
      goto LABEL_10;
    }
  }
}

void sub_6C004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6C030(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    if (v5)
    {
      v22 = WeakRetained;
      v23 = v6;
      objc_opt_class();
      v24 = v5;
      v9 = BUDynamicCast();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = [v9 allKeys];
      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            v15 = [v9 objectForKeyedSubscript:v14];
            v16 = BUDynamicCast();

            v17 = +[BEJavascriptUtilities collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:](BEJavascriptUtilities, "collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:", v16, [a1[4] isVerticalDocument]);
            [v8 setObject:v17 forKeyedSubscript:v14];
          }

          v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v11);
      }

      v6 = v23;
      v5 = v24;
      WeakRetained = v22;
    }

    v18 = objc_retainBlock(a1[5]);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, v8, v6);
    }
  }

  else
  {
    v20 = objc_retainBlock(a1[5]);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, 0, v6);
    }
  }
}

void sub_6C394(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 40));
  if (v6)
  {
    v7 = [*(a1 + 32) cfiString];
    v8 = [v9 objectForKeyedSubscript:v7];
    v6[2](v6, v8, v5);
  }
}

void sub_6C6F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = BUDynamicCast();

  if (!v5 && v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"_id"];
    objc_opt_class();
    v9 = [v8 objectForKeyedSubscript:@"rects"];
    v10 = BUDynamicCast();

    v11 = +[BEJavascriptUtilities collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:](BEJavascriptUtilities, "collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:", v10, [*(a1 + 40) isVerticalDocument]);
    v12 = BKUnionRects(v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = objc_retainBlock(*(a1 + 48));
    if (v19)
    {
      *v24 = v12;
      v24[1] = v14;
      v24[2] = v16;
      v24[3] = v18;
      v20 = [NSValue valueWithBytes:v24 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v19[2](v19, v20, 0);
    }

    goto LABEL_10;
  }

  v21 = _AEAnnotationLocationLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    *buf = 138412546;
    v27 = v22;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Failed to get rect information for location: %@ error: %@", buf, 0x16u);
  }

  v8 = objc_retainBlock(*(a1 + 48));
  if (v8)
  {
    size = CGRectZero.size;
    v25[0] = CGRectZero.origin;
    v25[1] = size;
    v10 = [NSValue valueWithBytes:v25 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    (v8)[2](v8, v10, v5);
LABEL_10:
  }
}

void sub_6CE78(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [a3 CGRectValue];
  v7 = -[BKPageLocation initWithOrdinal:andOffset:]([BKPageLocation alloc], "initWithOrdinal:andOffset:", *(a1 + 48), [v5 _uncheckedPageOffsetRangeForRect:?]);
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
}

NSValue *__cdecl sub_6EAFC(id a1, NSObject *a2, NSError *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = BUDynamicCast();

  if (v4)
  {
    objc_opt_class();
    v5 = [v4 objectForKeyedSubscript:@"width"];
    v6 = BUDynamicCast();

    objc_opt_class();
    v7 = [v4 objectForKeyedSubscript:@"height"];
    v8 = BUDynamicCast();

    [v6 doubleValue];
    v10 = v9;
    [v8 doubleValue];
    v14[0] = v10;
    v14[1] = v11;
    v12 = [NSValue valueWithBytes:v14 objCType:"{CGSize=dd}"];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

NSDictionary *__cdecl sub_6EC48(id a1, NSObject *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = BUDynamicCast();
  v7 = v6;
  if (v5 || !v6)
  {
    v8 = _AEWKLoaderLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v4;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to get keyed rects from '%@' - %@", buf, 0x16u);
    }
  }

  v21 = v4;
  v9 = [BEJavascriptUtilities keyedRectsFromKeyedDOMRects:v7, v5];
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v9 allKeys];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v9 objectForKeyedSubscript:v16];
        v18 = [v17 firstObject];
        [v10 setObject:v18 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  return v10;
}

id sub_6F228(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];
  UIRectGetCenter();
  [*(a1 + 32) setCenter:?];
  return [*(a1 + 32) setAlpha:1.0];
}

id sub_6F294(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) view];
  [v4 setUserInteractionEnabled:1];

  [*(a1 + 40) removeFromSuperview];
  v5 = *(a1 + 48);
  if (a2)
  {
    v6 = [v5 transitionWasCancelled] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return [v5 completeTransition:v6];
}

uint64_t sub_7028C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 expandedContentViewDidDisappear:v6];
  }

  return result;
}

void sub_70B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = +[UIColor systemBlackColor];
    [v2 setBackgroundColor:v3];
    v4 = 0.0;
  }

  else
  {
    v3 = [*(a1 + 32) theme];
    v5 = [v3 backgroundColorForTraitEnvironment:*(a1 + 32)];
    [v2 setBackgroundColor:v5];

    v4 = 1.0;
  }

  v6 = [*(a1 + 32) toolbar];
  [v6 setAlpha:v4];
}

void sub_72E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_72E5C(uint64_t a1)
{
  v2 = BCIMLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "dismissCurrentPopoverWithCompletion: checking for more popover view controllers...", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissCurrentPopoverWithCompletion:*(a1 + 32) animated:*(a1 + 48)];
}

void sub_73184(uint64_t a1)
{
  [*(a1 + 32) setForcePopoverInsteadOfSheet:*(a1 + 72)];
  if (([*(a1 + 32) forcePopoverInsteadOfSheet] & 1) != 0 || (isPhone() & 1) == 0)
  {
    [*(a1 + 40) setModalPresentationStyle:7];
    v2 = [*(a1 + 40) popoverPresentationController];
    v3 = v2;
    if (*(a1 + 48))
    {
      [v2 setBackgroundColor:?];
    }

    else
    {
      v4 = [*(a1 + 32) theme];
      v5 = [v4 popoverBackgroundColor];
      [v3 setBackgroundColor:v5];
    }

    [v3 setPassthroughViews:*(a1 + 56)];
    [v3 _setIgnoreBarButtonItemSiblings:1];
    [v3 setDelegate:*(a1 + 32)];
    v6 = [*(a1 + 32) barButtonItemForButton:*(a1 + 64)];
    if (v6)
    {
      [v3 setSourceItem:v6];
      v7 = &dword_0 + 3;
    }

    else
    {
      objc_opt_class();
      v8 = BUDynamicCast();
      objc_opt_class();
      v9 = BUDynamicCast();
      [v9 bounds];
      if (v8)
      {
        [v8 popoverPresentationRect];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v7 = [v8 popoverArrowDirections];
      }

      else
      {
        v15 = v10;
        v17 = v11;
        v19 = v12;
        v21 = v13;
        v7 = &dword_C + 3;
      }

      [v3 _setCentersPopoverIfSourceViewNotSet:1];
      [v3 setSourceView:v9];
      [v3 setSourceRect:{v15, v17, v19, v21}];
    }

    [v3 setPermittedArrowDirections:v7];
    [v3 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:*(a1 + 40)];
    *(*(a1 + 32) + 40) = v7;
  }

  [*(a1 + 32) setCurrentOverlayViewController:*(a1 + 40)];
  v23 = *(a1 + 32);
  v22 = *(a1 + 40);
  v24 = +[UIColor bc_booksKeyColor];
  [v23 bc_presentViewController:v22 animated:1 tintColor:v24 completion:0];
}

void sub_733CC(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) isBeingPresented] & 1) != 0 || objc_msgSend(*v2, "isBeingDismissed"))
  {
    v3 = BCIMLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_137FEC(v2, v3);
    }
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

id sub_75CA4(uint64_t a1)
{
  [*(*(a1 + 32) + 320) cleanupAfterRotation];
  v2 = *(*(a1 + 32) + 320);

  return [v2 layoutSubviews];
}

id *sub_7740C(id *result)
{
  if (*(result + 5) <= 0.0)
  {
    return [result[4] removeFromSuperview];
  }

  return result;
}

id BKTOCCVCLog()
{
  if (qword_22D048 != -1)
  {
    sub_1380F4();
  }

  v1 = qword_22D040;

  return v1;
}

void sub_77A64(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKTOCContentViewController");
  v2 = qword_22D040;
  qword_22D040 = v1;

  _objc_release_x1(v1, v2);
}

id sub_7907C(uint64_t a1)
{
  v2 = [*(a1 + 32) recenteredIndexPath];

  if (v2)
  {
    v3 = [*(a1 + 32) recenteredIndexPath];
    *(*(a1 + 32) + 500) = 1;
    v4 = *(a1 + 32);
    v5 = *(v4 + 460);
    v6 = [v4 recenteredIndexPath];
    [v5 scrollToRowAtIndexPath:v6 atScrollPosition:3 animated:0];

    *(*(a1 + 32) + 500) = 0;
    [*(a1 + 32) setRecenteredIndexPath:v3];
  }

  v7 = *(a1 + 32);

  return [v7 updateView];
}

void sub_79D08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained cellLoadingOperationCount])
  {
    v1 = [WeakRetained activityIndicatorOverlayView];
    [v1 hideIndicatorAnimated:1 animationDelay:0.0];
  }
}

void sub_7B740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_7B760(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7[2](v7, [WeakRetained shareItemAtIndexPath:*(a1 + 32)]);
  }
}

void sub_7B8F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_7B918(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained deleteAnnotationAtIndexPath:*(a1 + 32)];
    WeakRetained = v3;
  }
}

id sub_7CD6C(uint64_t a1)
{
  v8 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v8 count:1];
  v3 = [UIMenu menuWithTitle:&stru_1E7188 image:0 identifier:0 options:1 children:v2];

  v7[0] = *(a1 + 40);
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [UIMenu menuWithChildren:v4];

  return v5;
}

id sub_7CE7C(void *a1)
{
  v2 = a1[5];
  v9[0] = a1[4];
  v9[1] = v2;
  v3 = [NSArray arrayWithObjects:v9 count:2];
  v4 = [UIMenu menuWithTitle:&stru_1E7188 image:0 identifier:0 options:1 children:v3];

  v8[0] = a1[6];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [UIMenu menuWithChildren:v5];

  return v6;
}

void sub_7FF88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  [WeakRetained postPaginationLoadedNotification];
  v31 = 0;
  v4 = [v3 bookDatabaseKey];
  if ([BKTextIndex doesBookIndexWithNameExist:v4 isLoaded:&v31]&& v31 == 1)
  {
    v5 = [BKTextIndex bookIndexWithName:v4];
    [v5 save];
    [BKTextIndex removeTextIndexWithName:v4];
  }

  [v3 progress];
  v7 = v6;
  v8 = _AEPaginationLog();
  v9 = v8;
  if (v7 >= 1.0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v3 paginationRetryCount];
      *buf = 134217984;
      v33 = *&v16;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Pagination completed successfully, Required %lu retries for pagination. Posting BKPaginationCompleteForBookNotification. #retryPagination", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v3 progress];
      v11 = v10;
      v12 = [v3 paginationRetryCount];
      *buf = 134218496;
      v33 = v11;
      v34 = 2048;
      v35 = v12;
      v36 = 2048;
      v37 = 5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Received paginationComplete.  Progress:%f - Used %lu/%lu retrys. #retryPagination", buf, 0x20u);
    }

    if ([v3 paginationRetryCount] <= 4)
    {
      [v3 setPaginationRetryCount:{objc_msgSend(v3, "paginationRetryCount") + 1}];
      v13 = _AEPaginationLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v3 paginationRetryCount];
        *buf = 134217984;
        v33 = *&v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Will attempt to repaginate after %lu seconds.  #retryPagination", buf, 0xCu);
      }

      v15 = dispatch_time(0, 1000000000 * [v3 paginationRetryCount]);
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_80384;
      v29 = &unk_1E4920;
      objc_copyWeak(&v30, (a1 + 32));
      dispatch_after(v15, &_dispatch_main_q, &v26);
      objc_destroyWeak(&v30);
      goto LABEL_19;
    }

    v17 = _AEPaginationLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Used all retries! We've totally failed to paginate content! #retryPagination", buf, 2u);
    }
  }

  [v3 setPaginationRetryCount:0];
  v18 = +[NSNotificationCenter defaultCenter];
  [v18 postNotificationName:BKPaginationCompleteForBookNotification object:v3];

LABEL_19:
  v19 = [AETestDriver shared:v26];
  v20 = [v19 testingLayout];

  if (v20)
  {
    v21 = [v3 book];
    v22 = [v3 style];
    v23 = [v3 configuration];
    v24 = [AETestDriver getBookKeyWithBook:v21 style:v22 geometry:v23];

    v25 = +[AETestDriver shared];
    [v25 paginationControllerFinishedBookPagination:v24];
  }

LABEL_22:
}

void sub_80384(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    v3 = _AEPaginationLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v7 = 0;
    v5 = "Skipping pagination retry as self released.";
    v6 = &v7;
LABEL_8:
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, v5, v6, 2u);
    goto LABEL_9;
  }

  if (![WeakRetained paginationRetryCount])
  {
    v3 = _AEPaginationLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v5 = "Skipping pagination retry as key has changed. #retryPagination";
    v6 = buf;
    goto LABEL_8;
  }

  v3 = [v2 style];
  v4 = [v2 configuration];
  [v2 repaginateWithStyle:v3 geometry:v4];

LABEL_9:
}

void sub_809B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v3 name];
    v5 = [v4 isEqualToString:NSObjectInaccessibleException];

    if (v5)
    {
      *(v2 + 104) = 0x7FFFFFFFFFFFFFFFLL;

      objc_end_catch();
      JUMPOUT(0x8099CLL);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_81058(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = [v2 name];
    v4 = [v3 isEqualToString:NSObjectInaccessibleException];

    if (v4)
    {

      objc_end_catch();
      JUMPOUT(0x81028);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_81660(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = [v2 name];
    [v3 isEqualToString:NSObjectInaccessibleException];

    objc_end_catch();
    JUMPOUT(0x81610);
  }

  _Unwind_Resume(exception_object);
}

void sub_81810(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = [v2 name];
    v4 = [v3 isEqualToString:NSObjectInaccessibleException];

    if (v4)
    {

      objc_end_catch();
      JUMPOUT(0x817E8);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_81884(uint64_t a1, void *a2)
{
  v3 = [a2 pageNumber];
  v4 = [v3 integerValue] == *(a1 + 32);

  return v4;
}

void sub_81E70(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = [v2 name];
    v4 = [v3 isEqualToString:NSObjectInaccessibleException];

    if (v4)
    {

      objc_end_catch();
      JUMPOUT(0x81DFCLL);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_81EE4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 pageNumber];
  v7 = [v6 integerValue];
  v8 = *(a1 + 32);

  if (v7 <= v8)
  {
    *a4 = 1;
  }

  return v7 <= v8;
}

id sub_82914(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setBookmarkPageCounts:0];
  }

  v2 = *(a1 + 32);

  return [v2 updatePaginationCache:0];
}

void sub_8420C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8422C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [IMThumbnailUtilities scaleImage:*(a1 + 32) toSize:0 options:*(a1 + 56), *(a1 + 64)];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = v4;
      v5 = (*(v5 + 16))();
      v4 = v6;
    }

    _objc_release_x1(v5, v4);
  }
}

id sub_84EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 objectForKeyedSubscript:@"fullHref"];
  [v4 setObject:v5 forKeyedSubscript:kBCReadingStatisticsHrefKey];
  v6 = [v3 objectForKeyedSubscript:@"name"];

  [v4 setObject:v6 forKeyedSubscript:kBCReadingStatisticsNameKey];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v4 setObject:v7 forKeyedSubscript:kBCReadingStatisticsStartCFIKey];

  return v4;
}

void sub_85758(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x8573CLL);
}

void sub_85A70(id a1, id a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _BookEPUBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to swap image urls: %@", &v5, 0xCu);
    }
  }
}

void sub_85D54(id a1, id a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _BookEPUBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to update Image Inversion: %@", &v5, 0xCu);
    }
  }
}

void sub_86630(id a1, id a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _BookEPUBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to update viewport width: %@", &v5, 0xCu);
    }
  }
}

void sub_867AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_initWeak(&location, *(*(a1 + 32) + 256));
    v4 = +[BEContentBlockingRules sharedInstance];
    v5 = *(*(a1 + 32) + 256);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_868E4;
    v8[3] = &unk_1E3608;
    objc_copyWeak(&v9, &location);
    [v4 applyContentBlockingRule:2 toWebView:v5 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2);
  }
}

void sub_868C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_868E4(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained reload];
  }
}

void sub_86C44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained webView];
  v2 = [v1 title];
  [WeakRetained setPreviewTitle:v2];
}

void sub_87944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_87964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 reloadViewDidBeginReloading:*(a1 + 32)];
}

void sub_87F88(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 coverWritingModeString];
  v4 = [v3 bookLanguage];
  v5 = [v3 pageProgressionDirection];

  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKey:@"coverWritingMode"];
  }

  if (v4)
  {
    [*(a1 + 32) setObject:v4 forKey:@"language"];
  }

  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:@"pageProgressionDirection"];
  }
}

uint64_t sub_881BC(id *a1, void *a2)
{
  v16 = a2;
  if ([a1[4] length])
  {
    v3 = a1[4];
    v4 = [v16 bookTitle];
    LOBYTE(v3) = [v3 isEqualToString:v4];

    if ((v3 & 1) == 0)
    {
      [v16 setBookTitle:a1[4]];
      [v16 setSortTitle:a1[4]];
    }
  }

  if ([a1[5] length])
  {
    v5 = a1[5];
    v6 = [v16 bookAuthor];
    LOBYTE(v5) = [v5 isEqualToString:v6];

    if ((v5 & 1) == 0)
    {
      [v16 setBookAuthor:a1[5]];
      [v16 setSortAuthor:a1[5]];
    }
  }

  if ([a1[6] length])
  {
    v7 = a1[6];
    v8 = [v16 genre];
    LOBYTE(v7) = [v7 isEqualToString:v8];

    if ((v7 & 1) == 0)
    {
      [v16 setGenre:a1[6]];
    }
  }

  if ([a1[7] length])
  {
    v9 = a1[7];
    v10 = [v16 pageProgressionDirection];
    LOBYTE(v9) = [v9 isEqualToString:v10];

    if ((v9 & 1) == 0)
    {
      [v16 setPageProgressionDirection:a1[7]];
    }
  }

  v11 = [a1[8] length];
  v12 = v16;
  if (v11)
  {
    v13 = a1[8];
    v14 = [v16 bookLanguage];
    LOBYTE(v13) = [v13 isEqualToString:v14];

    v12 = v16;
    if ((v13 & 1) == 0)
    {
      v11 = [v16 setBookLanguage:a1[8]];
      v12 = v16;
    }
  }

  return _objc_release_x1(v11, v12);
}

void sub_885DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_888A0(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x887D8);
}

id sub_888B8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) hasChanges];
  if (result)
  {
    v3 = *(*(a1 + 32) + 24);

    return [v3 save:0];
  }

  return result;
}

uint64_t sub_88C80(uint64_t a1, CGPDFDictionaryRef dict)
{
  value = 0;
  result = CGPDFDictionaryGetArray(dict, "Annots", &value);
  if (result)
  {
    return [*(a1 + 32) _countMarkupAnnotationsInArray:value result:*(a1 + 40)];
  }

  return result;
}

void sub_88DB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained countMarkupAnnotations];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_88E7C;
  v6[3] = &unk_1E3258;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_88E7C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

uint64_t sub_89034(uint64_t a1, int a2, CGPDFObjectRef object)
{
  value = 0;
  if (CGPDFObjectGetValue(object, kCGPDFObjectTypeDictionary, &value))
  {
    if (sub_8927C(value, "Page"))
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      CFArrayAppendValue(*(a1 + 40), value);
    }
  }

  return 1;
}

uint64_t sub_89164(uint64_t a1, int a2, CGPDFObjectRef object)
{
  dict = 0;
  if (CGPDFObjectGetValue(object, kCGPDFObjectTypeDictionary, &dict))
  {
    v4 = dict;
    if (sub_8927C(dict, "Annot"))
    {
      value = 0;
      if (CGPDFDictionaryGetName(v4, "Subtype", &value))
      {
        v5 = value;
        if (!strcmp(value, "Highlight") || !strcmp(v5, "StrikeOut") || !strcmp(v5, "Underline"))
        {
          [*(a1 + 32) setNumberOfMarkupAnnotations:{objc_msgSend(*(a1 + 32), "numberOfMarkupAnnotations") + 1}];
          value = 0;
          if (CGPDFDictionaryGetDictionary(dict, "Popup", &value) && value)
          {
            [*(a1 + 32) setNumberOfMarkupAnnotationsWithPopups:{objc_msgSend(*(a1 + 32), "numberOfMarkupAnnotationsWithPopups") + 1}];
          }
        }
      }
    }
  }

  return 1;
}

BOOL sub_8927C(CGPDFDictionary *a1, const char *a2)
{
  value = 0;
  result = CGPDFDictionaryGetName(a1, "Type", &value);
  if (result)
  {
    return strcmp(value, a2) == 0;
  }

  return result;
}

void sub_89EEC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_89F2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_89F44(uint64_t a1, void *a2)
{
  result = [a2 countEntity:@"AEAnnotation" withPredicate:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_89F84(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) batchJob];
  v4 = [v3 lookupKey];
  v5 = [*(a1 + 32) batchJob];
  v6 = [v5 bookDatabaseKey];
  v7 = [NSPredicate predicateWithFormat:@"(lookupKey ==[n] %@) AND (annotationUuid ==[n] %@)", v4, v6];

  if ([v13 countEntity:@"BKBookmarkPageCount" withPredicate:v7] != *(*(*(a1 + 40) + 8) + 24))
  {
    v8 = [NSArray arrayWithObjects:@"annotationUuid", 0];
    v9 = [v13 copyEntityPropertiesArray:v8 fromEntityName:@"BKBookmarkPageCount" withPredicate:v7 sortBy:0 ascending:0];

    v10 = [v9 valueForKey:@"annotationUuid"];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_8A0E4(void *a1, void *a2)
{
  v3 = *(*(a1[5] + 8) + 40);
  v4 = a2;
  v12 = [AEAnnotation predicateForAnnotationsIncludingDeletedWithUUIDInList:v3 assetID:0];
  v5 = [v4 entity:@"AEAnnotation" withPredicate:v12];
  v6 = [NSPredicate predicateWithFormat:@"NOT (self IN %@)", v5];
  v7 = [[NSArray alloc] initWithObjects:{a1[4], v6, 0}];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [v4 entity:@"AEAnnotation" withPredicate:v8 sortBy:0 ascending:0 fetchLimit:0];

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_8AABC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasChanges])
  {
    [v3 save:0];
  }

  if (+[BCDevice isInternalInstall])
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 BOOLForKey:@"BKPictureBookPaginationForceCrash"];

    if (v5)
    {
      [NSException raise:NSInvalidArgumentException format:@"Forcing a crash during pagination!"];
    }
  }

  v6 = [*(a1 + 32) bookObjectID];
  v10 = 0;
  v7 = [v3 existingObjectWithID:v6 error:&v10];
  v8 = v10;

  if (v7)
  {
    v9 = [*(a1 + 32) copyDocumentArray:v3];
    [*(a1 + 32) recordDocumentPageCountForDocumentInfos:v9 context:v3];
    if ([*(a1 + 32) _needsFullReparseForRecordedChapterPageCountForDocumentInfos:v9 context:v3])
    {
      [v7 setIsDirty:&__kCFBooleanTrue];
    }

    [*(a1 + 32) recordAnnotationPageNumbers:v3];
    if ([v3 hasChanges])
    {
      [v3 save:0];
    }
  }

  else if (v8)
  {
    [v8 logRecursively];
  }
}

BOOL bk_CGRectsNearlyEqual(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (CGRectIsEmpty(*&a1))
  {
    v17.origin.x = a5;
    v17.origin.y = a6;
    v17.size.width = a7;
    v17.size.height = a8;
    if (CGRectIsEmpty(v17))
    {
      return 1;
    }
  }

  if (vabdd_f64(a1, a5) >= 5.0 || vabdd_f64(a2, a6) >= 5.0 || vabdd_f64(a3, a7) >= 5.0)
  {
    return 0;
  }

  return vabdd_f64(a4, a8) < 5.0;
}

void sub_8BA10(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 40));
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v9 allValues];
    v6[2](v6, v7, v8, v5);
  }
}

void sub_8BC2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_retainBlock(*(a1 + 32));
  if (v9)
  {
    v10 = [v12 firstObject];
    v11 = [v7 firstObject];
    v9[2](v9, v10, v11, v8);
  }
}

void sub_8F3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8F3C8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didFinishCreatingWebView:v5 forTrackingID:*(a1 + 48) completion:*(a1 + 32)];
  }
}

void sub_8FC04(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = +[BKAudiobookPlayer sharedInstance];
  v3 = [v1 initWithPlayer:v2];
  v4 = qword_22D060;
  qword_22D060 = v3;

  v5 = +[BCBookReadingTimeTracker sharedInstance];
  [qword_22D060 setBcTracker:v5];
}

void sub_90748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_90760(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_90778(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = +[AEEpubInfoSource sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_908B8;
    v9[3] = &unk_1E4E58;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v10 = v6;
    v11 = v8;
    v12 = v7;
    [v5 performBackgroundTaskAndWait:v9];
  }
}

void sub_908B8(void *a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = +[AEEpubInfoSource sharedInstance];
  v5 = [v4 existingBookInfoForDatabaseKey:a1[4] fromManagedObjectContext:v9];

  if (v5)
  {
    v6 = [v5 cacheItem];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1[5] + 16) setObject:*(*(a1[6] + 8) + 40) forKey:a1[4]];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_90F50(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v3 = [v2 delegate];
    [v3 searchWasCancelled:v2];

    objc_end_catch();
    JUMPOUT(0x90EB4);
  }

  _Unwind_Resume(exception_object);
}

void sub_92F44(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained searchViewController:*(a1 + 32) didTransitionToSize:{*(a1 + 40), *(a1 + 48)}];

  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) searchController];
    [v4 beginSearchWithReportAnalytics:1];
  }

  else
  {
    [*(a1 + 32) _reloadResultsAndResizeIfNecessary:{objc_msgSend(v5, "isAnimated")}];
  }

  [*(a1 + 32) _updateCancelButton];
}

void sub_93570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_93588(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_935A0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 valueForKey:@"name"];
  v9 = [v8 caseInsensitiveCompare:*(a1 + 32)];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v10 = 1;
  }

  *a4 = v10;

  return v10;
}

id sub_93CB8(uint64_t a1)
{
  [*(a1 + 32) setResizeAnimationInProgress:0];
  result = [*(a1 + 32) resizeRequestPending];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateContentSize:1];
  }

  return result;
}

id sub_94CA4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  if (a2 == 2048)
  {
    [*(a1 + 32) secondaryBackgroundColor];
  }

  else
  {
    [*(a1 + 40) backgroundColor];
  }
  v5 = ;
  [v4 setBackgroundColor:v5];

  return v4;
}

id sub_9A9A4(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2)
  {
    v3 = v2;
    v4 = malloc_type_malloc(0x400uLL, 0x7D97B08EuLL);
    memset(&v11.avail_in, 0, 104);
    v11.next_in = [v1 cStringUsingEncoding:4];
    v11.avail_in = v3;
    if (deflateInit_(&v11, 9, "1.2.12", 112))
    {
      v5 = 0;
    }

    else
    {
      v11.next_out = v4;
      v11.avail_out = 0;
      v6 = 1024;
      do
      {
        total_out = v11.total_out;
        if (v11.total_out >= v6)
        {
          v6 += 1024;
          v4 = malloc_type_realloc(v4, v6, 0xC37CE97AuLL);
          total_out = v11.total_out;
        }

        v11.next_out = &v4[total_out];
        v11.avail_out = v6 - total_out;
        deflate(&v11, 4);
      }

      while (!v11.avail_out);
      v8 = [NSMutableData alloc];
      v5 = [v8 initWithLength:v11.total_out + 8];
      v9 = [v5 mutableBytes];
      *v9 = v3;
      memcpy(v9 + 1, v4, v11.total_out);
      deflateEnd(&v11);
    }

    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_9B150(id a1)
{
  v1 = objc_alloc_init(AEPdfCache);
  v2 = qword_22D080;
  qword_22D080 = v1;

  _objc_release_x1(v1, v2);
}

void sub_9B380(uint64_t a1)
{
  v1 = [*(a1 + 32) urlToDocumentCache];
  [v1 removeAllObjects];
}

void sub_9B560(uint64_t a1)
{
  v2 = [*(a1 + 32) urlToStringCache];
  v6 = [v2 objectForKey:*(a1 + 40)];

  v3 = v6;
  if (!v6)
  {
    v4 = [*(a1 + 32) urlToStringCache];
    v5 = [*(a1 + 48) password];
    [v4 setObject:v5 forKey:*(a1 + 40)];

    v3 = 0;
  }
}

void sub_9B924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_9B958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_9B970(uint64_t a1)
{
  v5 = [*(a1 + 32) urlToDocumentCache];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_9B9DC(uint64_t a1)
{
  v2 = [*(a1 + 32) urlToDocumentCache];
  [v2 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
}

void sub_9BA38(uint64_t a1)
{
  v5 = [*(a1 + 32) urlToStringCache];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_9BCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_9BD14(uint64_t a1)
{
  v3 = [*(a1 + 32) urlToDocumentCache];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

void sub_9BE44(uint64_t a1)
{
  v2 = [*(a1 + 32) urlToDocumentCache];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_9E5F8()
{
  if ((v0 & 0x80000000) == 0)
  {
  }

  _Unwind_Resume(v3);
}

void sub_9E89C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_A05F4(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  v3 = BUDynamicCast();
  if ([v3 count])
  {
    for (i = 0; i < [v3 count] - 1; ++i)
    {
      objc_opt_class();
      v5 = [v3 objectAtIndex:i];
      v6 = BUDynamicCast();

      if (i == [v3 count] - 1)
      {

        break;
      }

      objc_opt_class();
      v7 = [*(a1 + 32) objectForKey:v6];
      v8 = BUDynamicCast();

      [v8 setHasTocElements:*(a1 + 40)];
      [v8 setIsDuplicateSpineEntry:*(a1 + 48)];
    }
  }
}

void sub_A1088(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_A114C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_A13CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_A2F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

id sub_A42DC(uint64_t a1)
{
  [*(*(a1 + 32) + 512) reloadData];
  v2 = [*(a1 + 32) recenteredIndexPath];

  if (v2)
  {
    v3 = [*(a1 + 32) recenteredIndexPath];
    v4 = *(a1 + 32);
    v5 = v4[64];
    v6 = [v4 recenteredIndexPath];
    [v5 scrollToRowAtIndexPath:v6 atScrollPosition:3 animated:0];

    [*(a1 + 32) setRecenteredIndexPath:v3];
  }

  v7 = *(a1 + 32);

  return [v7 updateView];
}

void sub_A59F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A5A10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_A5A28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = [*(a1 + 32) pageNumber];
  [*(a1 + 32) snapshotSize];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A5AE4;
  v4[3] = &unk_1E5008;
  v5 = *(a1 + 32);
  [WeakRetained snapshotWithPageNumber:v3 size:v4 completion:?];
}

void sub_A5AE4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dsema = [*(a1 + 32) dispatchSemaphore];

  dispatch_semaphore_signal(dsema);
}

void sub_A5B58(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  if (v1)
  {
    v3 = v1;
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = 0;

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_A5C24;
    v8[3] = &unk_1E5030;
    v6 = *(a1 + 40);
    v9 = v3;
    v10 = v6;
    v7 = v3;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

void sub_A5C24(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) renderingCacheCallbackImage:*(*(*(a1 + 40) + 8) + 40) context:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_A5DD8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    v3 = [[NSMutableSet alloc] initWithCapacity:2];
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v2 = *(*(a1 + 32) + 72);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_A6FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_A7020(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImage:v3];

  [v3 size];
  v6 = v5;
  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 imageResizerDelegate];
  if (!v8)
  {

    goto LABEL_5;
  }

  v9 = vabdd_f64(*(a1 + 48), v6);

  if (v9 < 10.0)
  {
LABEL_5:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A730C;
    block[3] = &unk_1E36F8;
    v12 = &v17;
    objc_copyWeak(&v17, (a1 + 32));
    v16 = v3;
    dispatch_async(&_dispatch_main_q, block);
    v10 = v16;
    goto LABEL_6;
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 imageResizerDelegate];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_A7204;
  v18[3] = &unk_1E5058;
  v12 = &v19;
  objc_copyWeak(&v19, (a1 + 32));
  v13 = [v11 resizeImage:v3 toSize:v18 callback:{*(a1 + 48), *(a1 + 56)}];
  v14 = objc_loadWeakRetained((a1 + 40));
  [v14 set_resizeOperation:v13];

LABEL_6:
  objc_destroyWeak(v12);
}

void sub_A7204(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A72BC;
  v5[3] = &unk_1E36F8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_A72BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setImage:v1];
}

void sub_A730C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setImage:v1];
}

id sub_A78FC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) view];
  [v2 setAlpha:1.0];

  v3 = *(*(a1 + 32) + 24);

  return [v3 setAlpha:0.0];
}

CGPath *CreateCGPathForTopMaskInRect(CGContext *a1, CGFloat a2, double a3, double a4, double a5)
{
  CGContextTranslateCTM(a1, a2, a3 + a5);
  CGContextScaleCTM(a1, a4 / 60.0, a5 / -11.0);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 2.0, 0.0);
  CGPathAddCurveToPoint(Mutable, 0, 2.0, 0.0, 16.0, 2.0, 21.0, 4.0);
  CGPathAddCurveToPoint(Mutable, 0, 26.0, 6.0, 30.0, 11.0, 30.0, 11.0);
  CGPathAddCurveToPoint(Mutable, 0, 30.0, 11.0, 34.0, 6.0, 39.0, 4.0);
  CGPathAddCurveToPoint(Mutable, 0, 44.0, 2.0, 58.0, 0.0, 58.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 2.0, 0.0);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

CGPath *CreateCGPathForBottomMaskInRect(CGContext *a1, CGFloat a2, double a3, double a4, double a5)
{
  CGContextTranslateCTM(a1, a2, a3 + a5);
  CGContextScaleCTM(a1, a4 / 60.0, a5 / -11.0);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 1.0, 11.0);
  CGPathAddCurveToPoint(Mutable, 0, 1.0, 11.0, 10.0, 11.0, 18.0, 8.0);
  CGPathAddCurveToPoint(Mutable, 0, 26.0, 5.0, 30.0, 1.0, 30.0, 1.0);
  CGPathAddCurveToPoint(Mutable, 0, 30.0, 1.0, 34.0, 5.0, 42.0, 8.0);
  CGPathAddCurveToPoint(Mutable, 0, 50.0, 11.0, 59.0, 11.0, 59.0, 11.0);
  CGPathAddLineToPoint(Mutable, 0, 1.0, 11.0);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

void drawBottomInRect(CGContext *a1, CGFloat a2, double a3, double a4, double a5)
{
  CGContextSaveGState(a1);
  CGPathForBottomMaskInRect = CreateCGPathForBottomMaskInRect(a1, a2, a3, a4, a5);
  CGContextAddPath(a1, CGPathForBottomMaskInRect);
  CGPathRelease(CGPathForBottomMaskInRect);

  CGContextRestoreGState(a1);
}

void drawTopInRect(CGContext *a1, CGFloat a2, double a3, double a4, double a5)
{
  CGContextSaveGState(a1);
  CGPathForTopMaskInRect = CreateCGPathForTopMaskInRect(a1, a2, a3, a4, a5);
  CGContextAddPath(a1, CGPathForTopMaskInRect);
  CGPathRelease(CGPathForTopMaskInRect);

  CGContextRestoreGState(a1);
}

BOOL AE_CGImageWriteToPathWithScaleAsPNG(_BOOL8 a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if ([v5 length])
    {
      v7 = [NSURL fileURLWithPath:v6 isDirectory:0];
      v8 = [UTTypePNG identifier];
      v9 = CGImageDestinationCreateWithURL(v7, v8, 1uLL, 0);

      if (v9)
      {
        v10 = objc_alloc_init(NSMutableDictionary);
        v15 = kCGImagePropertyPNGCompressionFilter;
        v16 = &off_1F1508;
        v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        [v10 setObject:v11 forKey:kCGImagePropertyPNGDictionary];
        [v10 setObject:&off_1F1520 forKey:kCGImagePropertyPNGBandCount];
        if (a3 != 1.0)
        {
          v14 = a3 * 72.0;
          v12 = CFNumberCreate(0, kCFNumberDoubleType, &v14);
          [v10 setObject:v12 forKey:kCGImagePropertyDPIWidth];
          [v10 setObject:v12 forKey:kCGImagePropertyDPIHeight];
          CFRelease(v12);
        }

        CGImageDestinationAddImage(v9, a1, v10);
        a1 = CGImageDestinationFinalize(v9);
        CFRelease(v9);
      }

      else
      {
        a1 = 0;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

CGImageRef CGImageAddAlphaAndAddBookMask(CGImage *a1, CGImage *a2, int a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v10 = CGImageGetWidth(a2);
  v11 = a4 * 60.0;
  if (a3)
  {
    v12 = a4 * 60.0 * -0.5;
  }

  else
  {
    v12 = Width + a4 * 60.0 * -0.5;
  }

  IsWideGamut = CGImageIsWideGamut();
  IsDeepColor = CGImageIsDeepColor();
  if (IsDeepColor)
  {
    v15 = 16;
  }

  else
  {
    v15 = 8;
  }

  if (IsWideGamut)
  {
    DeviceRGB = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v18 = DeviceRGB;
  if (IsDeepColor)
  {
    v19 = 4097;
  }

  else
  {
    v19 = 8193;
  }

  v20 = CGBitmapContextCreate(0, Width, Height, v15, 0, DeviceRGB, v19);
  if (v20)
  {
    v21 = v20;
    v22 = a4 * 11.0;
    v23 = v10 * a4;
    v24 = Height - a4 * 11.0;
    CGContextSaveGState(v20);
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = Width;
    v30.size.height = Height;
    CGContextDrawImage(v21, v30, a1);
    if (v23 != 0.0)
    {
      v25 = v23 * -0.5;
      if (!a3)
      {
        v25 = Width + v23 * -0.5;
      }

      v26 = 0;
      v27 = v23;
      v28 = Height;
      CGContextDrawImage(v21, *&v25, a2);
    }

    drawBottomInRect(v21, v12, 0.0, v11, v22);
    drawTopInRect(v21, v12, v24, v11, v22);
    CGContextSetBlendMode(v21, kCGBlendModeClear);
    CGContextFillPath(v21);
    CGContextRestoreGState(v21);
    Image = CGBitmapContextCreateImage(v21);
    CGContextRelease(v21);
  }

  else
  {
    Image = 0;
  }

  CGColorSpaceRelease(v18);
  return Image;
}

void sub_A879C(id a1)
{
  v1 = +[AEAudiobookReadingTimeTracker startTracking];
  v2 = +[NSThread isMainThread];
  if (v2)
  {

    sub_A8860(v2);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A88F4;
    block[3] = &unk_1E2E08;
    v4 = &stru_1E50C8;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_A8860(id a1)
{
  v5 = +[BKAudiobookPlayer sharedInstance];
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 floatForKey:@"AEAudioBookNowPlayingViewControllerPlaybackRateUserDefaultsKey"];
  v3 = v2;

  LODWORD(v4) = v3;
  [v5 setPlaybackSpeed:{+[BKAudiobookPlayer playbackSpeedFrom:](BKAudiobookPlayer, "playbackSpeedFrom:", v4)}];
}

void sub_A97B4(id a1)
{
  v3[0] = UIContentSizeCategoryExtraSmall;
  v3[1] = UIContentSizeCategorySmall;
  v3[2] = UIContentSizeCategoryMedium;
  v3[3] = UIContentSizeCategoryLarge;
  v3[4] = UIContentSizeCategoryExtraLarge;
  v3[5] = UIContentSizeCategoryExtraExtraLarge;
  v3[6] = UIContentSizeCategoryExtraExtraExtraLarge;
  v3[7] = UIContentSizeCategoryAccessibilityMedium;
  v3[8] = UIContentSizeCategoryAccessibilityLarge;
  v3[9] = UIContentSizeCategoryAccessibilityExtraLarge;
  v3[10] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v3[11] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v3[12] = UIContentSizeCategoryExpandedFontSize1;
  v3[13] = UIContentSizeCategoryExpandedFontSize2;
  v3[14] = UIContentSizeCategoryExpandedFontSize3;
  v1 = [NSArray arrayWithObjects:v3 count:15];
  v2 = qword_22D090;
  qword_22D090 = v1;
}

void sub_AAC30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_AAC4C(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v5 = BUDynamicCast();

  if ([(__CFString *)BKAutoHyphenation[0] isEqualToString:*(a1 + 40)])
  {
    v3 = [v5 BOOLValue];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setAutoHyphenation:v3];
  }
}

void sub_ABC30(id a1)
{
  v1 = objc_alloc_init(AEMinimalTemplateSet);
  v2 = qword_22D0A8;
  qword_22D0A8 = v1;

  sub_ABCD0(v3, @"user_stylesheet_base.css", @"base");
  sub_ABCD0(v4, @"user_stylesheet_fonts.css", @"fonts");
  sub_ABCD0(v5, @"user_stylesheet_colors.css", @"colors");
  sub_ABCD0(v6, @"user_stylesheet_flowable.css", @"flowable");

  sub_ABCD0(v7, @"user_stylesheet_picturebook.css", @"picturebook");
}

void sub_ABCD0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = AEBundle();
  v7 = [v6 pathForResource:v5 ofType:@"tmpl"];

  v8 = [NSURL fileURLWithPath:v7];
  v11 = 0;
  v9 = [AEMinimalTemplate templateWithURL:v8 error:&v11];
  v10 = v11;

  [qword_22D0A8 addTemplate:v9 withName:v4];
}

void sub_AC338(id a1)
{
  v1 = objc_alloc_init(_CachedFallbackInfo);
  v2 = qword_22D0B8;
  qword_22D0B8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_AC428(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSArray array];
  if (![(__CFString *)v3 length])
  {
    v5 = v5;
    v13 = v5;
    goto LABEL_31;
  }

  v6 = [BKStyleManager suffixForLanguage:v4];
  v7 = [v6 length];

  if (!v7)
  {
    v14 = [&off_1F16B8 objectForKeyedSubscript:v3];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v5;
    }

    v13 = v16;

    goto LABEL_31;
  }

  v8 = +[_CachedFallbackInfo cachedFallbackInfo];
  v9 = [v8 fontFamily];
  v10 = [v9 isEqualToString:v3];

  if (!v10)
  {
    [v8 setFontFamily:v3];
    v17 = [NSDictionary dictionaryWithObject:v3 forKey:kCTFontFamilyNameAttribute];
    v18 = CTFontDescriptorCreateWithAttributes(v17);
    if (!v18 || (v19 = v18, v20 = CTFontCreateWithFontDescriptor(v18, 0.0, 0), CFRelease(v19), !v20))
    {
      v20 = CTFontCreateWithName(v3, 0.0, 0);
    }

    [v8 setFont:v20];

    goto LABEL_16;
  }

  v11 = [v8 language];
  v12 = [v11 isEqualToString:v4];

  if (!v12)
  {
    v20 = [v8 font];
LABEL_16:
    v21 = [v4 copy];
    [v8 setLanguage:v21];

    v22 = +[NSLocale preferredLanguages];
    v23 = [v22 indexOfObject:v4];
    if (v23)
    {
      v24 = v23;
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v22 count] + 1);
        [v25 addObject:v4];
        [v25 addObjectsFromArray:v22];
      }

      else
      {
        v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v22 count]);
        [v25 addObject:v4];
        [v25 replaceObjectsInRange:1 withObjectsFromArray:0 range:{v22, 0, v24}];
        [v25 replaceObjectsInRange:objc_msgSend(v25 withObjectsFromArray:"count") range:{0, v22, v24 + 1, objc_msgSend(v22, "count") + ~v24}];
      }

      v22 = v25;
    }

    if (v20)
    {
      v33 = v20;
      v34 = v8;
      v26 = CTFontCopyDefaultCascadeListForLanguages(v20, v22);
      Count = CFArrayGetCount(v26);
      v28 = [NSMutableArray arrayWithCapacity:Count];
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
          v31 = CTFontDescriptorCopyAttribute(ValueAtIndex, kCTFontFamilyNameAttribute);
          if (v31)
          {
            [v28 addObject:v31];
          }
        }
      }

      CFRelease(v26);
      v8 = v34;
      [v34 setFallbacks:v28];

      v20 = v33;
    }

    else
    {
      v28 = v5;
    }

    v5 = v28;

    v13 = v5;
    goto LABEL_30;
  }

  v13 = [v8 fallbacks];
LABEL_30:

LABEL_31:

  return v13;
}

BOOL sub_AD084(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  if (v5 < [v4 length] || objc_msgSend(v3, "compare:options:range:", v4, 1, 0, objc_msgSend(v4, "length")))
  {
    v6 = 0;
  }

  else
  {
    v8 = [v3 length];
    if (v8 <= [v4 length])
    {
      v6 = 1;
    }

    else
    {
      v9 = [v3 characterAtIndex:{objc_msgSend(v4, "length")}];
      v6 = v9 == 45 || v9 == 95;
    }
  }

  return v6;
}

void sub_AD158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [&off_1F1858 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(&off_1F1858);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];

        if (v13)
        {
          v14 = [v6 objectForKeyedSubscript:v12];
          [v7 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v9 = [&off_1F1858 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v15 = *(a1 + 32);
    v16 = [v5 imSanitizedFontFamilyName];
    [v15 setObject:v7 forKey:v16];
  }
}

void sub_B26D4()
{
  objc_opt_class();
  v0 = __IMAccessibilityCastAsClass();
  [v0 dismissViewControllerAnimated:1 completion:0];
}

void sub_B5FFC(id a1)
{
  v1 = AEBundle();
  v2 = [v1 URLForResource:@"toc_web_cell.html" withExtension:@"tmpl"];

  v6 = 0;
  v3 = [[AEMinimalTemplate alloc] initWithURL:v2 error:&v6];
  v4 = v6;
  v5 = qword_22D0C8;
  qword_22D0C8 = v3;
}