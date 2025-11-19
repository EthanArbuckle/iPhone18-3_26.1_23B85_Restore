void sub_10000230C(uint64_t a1)
{
  [*(a1 + 32) setStartGestureTimer:0];
  v2 = +[NSDate date];
  [*(a1 + 32) setGestureStartTime:v2];

  v3 = [*(a1 + 40) fingerController];
  v4 = [*(a1 + 40) _fingerModelsForFingerControllerPoint:*(a1 + 64) numberOfFingers:{*(a1 + 48), *(a1 + 56)}];
  [v3 showFingerModels:v4 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];

  v5 = [*(a1 + 40) fingerController];
  [v5 pressFingersDownAnimated:0];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100002474;
  v13 = &unk_1000286B8;
  v6 = *(a1 + 32);
  v7 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v16 = *(a1 + 48);
  v17 = v7;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v9 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v10 block:0.00833333333];
  [*(a1 + 32) setGestureUpdateTimer:{v9, v10, v11, v12, v13}];
}

void sub_100002474(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = [*(a1 + 32) gestureStartTime];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  v6 = v5 * 50.0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v8 = v8 - v6;
    }

    else if (v9 == 3)
    {
      v8 = v6 + v8;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      v7 = v6 + v7;
    }
  }

  else
  {
    v7 = v7 - v6;
  }

  [AXPIFingerUtilities defaultLocationsForNumberOfFingers:*(a1 + 72) aroundPoint:v7, v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v26 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = CGPointFromString(*(*(&v23 + 1) + 8 * v14));
        v16 = [*(a1 + 40) view];
        [v16 bounds];
        v17 = CGRectContainsPoint(v28, v15);

        if (!v17)
        {
          v19 = FKALogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Gesture went out of bounds, so ending early.", buf, 2u);
          }

          [*(a1 + 40) _cleanUpExistingIncrementalGesture];
          goto LABEL_22;
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = [*(a1 + 40) fingerController];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002714;
  v20[3] = &unk_100028690;
  v21 = v10;
  [v18 enumerateFingersUsingBlock:v20];

LABEL_22:
}

void sub_100002714(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 objectAtIndexedSubscript:a3];
  v6 = CGPointFromString(v7);
  [v5 setLocation:{v6.x, v6.y}];
}

void sub_100002CFC(uint64_t a1)
{
  [*(a1 + 32) setStartGestureTimer:0];
  v2 = +[NSDate date];
  [*(a1 + 32) setGestureStartTime:v2];

  v3 = [*(a1 + 40) view];
  [v3 bounds];
  v8 = [AXPIFingerUtilities defaultPinchLocationsAroundPoint:*(a1 + 48) withinBounds:*(a1 + 56), v4, v5, v6, v7];

  v9 = [*(a1 + 40) fingerController];
  v10 = [AXPIFingerUtilities fingerModelsForPointStrings:v8];
  [v9 showFingerModels:v10 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];

  v11 = [*(a1 + 40) fingerController];
  [v11 pressFingersDownAnimated:0];

  v12 = [*(a1 + 40) fingerController];
  v13 = [v12 fingerModels];
  v14 = [v13 objectAtIndexedSubscript:0];
  [v14 location];
  v16 = v15;
  v18 = v17;

  v19 = [*(a1 + 40) fingerController];
  v20 = [v19 fingerModels];
  v21 = [v20 objectAtIndexedSubscript:1];
  [v21 location];
  v23 = v22;
  v25 = v24;

  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100002F5C;
  v32 = &unk_1000286E0;
  v26 = *(a1 + 32);
  v35 = *(a1 + 64);
  v36 = v16;
  v37 = v18;
  v38 = v23;
  v39 = v25;
  v27 = *(a1 + 40);
  v33 = v26;
  v34 = v27;
  v28 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v29 block:0.00833333333];
  [*(a1 + 32) setGestureUpdateTimer:{v28, v29, v30, v31, v32}];
}

void sub_100002F5C(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = [*(a1 + 32) gestureStartTime];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  v6 = v5 * *(a1 + 48);
  v7 = v5 * *(a1 + 56) * 0.392699082;
  v8 = *(a1 + 64);
  v19 = *(a1 + 80);
  v20 = v8;
  [AXPIFingerUtilities updateFirstLocation:&v20 secondLocation:&v19 forPinchWithRadiusDelta:v6 angleDelta:v7];
  v9 = [*(a1 + 40) fingerController];
  [v9 beginUpdates];

  v10 = v20;
  v11 = [*(a1 + 40) fingerController];
  v12 = [v11 fingerModels];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setLocation:v10];

  v14 = v19;
  v15 = [*(a1 + 40) fingerController];
  v16 = [v15 fingerModels];
  v17 = [v16 objectAtIndexedSubscript:1];
  [v17 setLocation:v14];

  v18 = [*(a1 + 40) fingerController];
  [v18 endUpdates];
}

void sub_100003344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v5 = [*(a1 + 32) gestureStartTime];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 <= AXForceTouchDuration)
  {
    v9 = [*(a1 + 40) fingerController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003490;
    v11[3] = &unk_100028700;
    v10 = *(a1 + 48);
    *&v11[4] = v7;
    v11[5] = v10;
    [v9 enumerateFingersUsingBlock:v11];
  }

  else
  {
    v8 = FKALogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Finished increasing force. Leaving fingers pressed, but performing no other updates.", buf, 2u);
    }

    [v3 invalidate];
  }
}

void sub_100003B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100003B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _handleEventRepresentation:v3];

  return v5;
}

void sub_100003DA0(uint64_t a1)
{
  v8 = [*(a1 + 32) _keyboardEventForEventRepresentation:*(a1 + 40)];
  if (v8)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 eventTap:*(a1 + 32) handleKeyboardEvent:v8];

    if (([v8 isDownEvent] & 1) == 0)
    {
      v3 = [*(a1 + 32) keyCodesRequiringRepostForUpEvent];
      v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 keyCode]);
      v5 = [v3 containsObject:v4];

      if (v5)
      {
        v6 = [*(a1 + 32) keyCodesRequiringRepostForUpEvent];
        v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 keyCode]);
        [v6 removeObject:v7];

        [*(a1 + 32) _repostEventRepresentation:*(a1 + 40)];
      }
    }
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100007FBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 actionManager:*(a1 + 32) displaySysdiagnoseStatus:v4];
}

void sub_100009918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009930(id a1)
{
  qword_1000314E0 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

id sub_10000996C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000099F0;
  v2[3] = &unk_100028840;
  v3 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  return [UIScreen _enumerateScreensWithBlock:v2];
}

void sub_1000099F0(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  v5 = [v13 displayIdentity];
  v6 = [v5 displayID];
  v7 = *(a1 + 40);

  if (v6 == v7)
  {
    [v13 _referenceBounds];
    v8 = *(*(a1 + 32) + 8);
    v8[4] = v9;
    v8[5] = v10;
    v8[6] = v11;
    v8[7] = v12;
    *a3 = 1;
  }
}

id sub_100009F30(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 updateRequiresNativeFocus];
}

void sub_100009F70(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

id sub_10000A144(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = *(a1 + 40);

  return [v3 updateRequiresNativeFocus];
}

void sub_10000A1A4(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

id sub_10000A430(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 updateRequiresNativeFocus];
}

id sub_10000A55C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 updateRequiresNativeFocus];
}

id sub_10000A66C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 updateRequiresNativeFocus];
}

void sub_10000AAB4(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 didReleaseNativeFocus];
}

void sub_10000AB8C(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v1 = [v3 window];
  v2 = [v1 windowScene];
  [v2 _accessibilitySetFocusEnabledInApplication:1];
}

void sub_10000AC68(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v1 = [v3 window];
  v2 = [v1 windowScene];
  [v2 _accessibilitySceneDidBecomeFocused];
}

void sub_10000B198(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 typeaheadViewController:*(a1 + 32) didChangeQueryString:*(a1 + 40)];
}

void sub_10000B4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B4E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedTypeaheadString:0];
}

void sub_10000DDF4(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = +[AXElement systemWideElement];
  v4 = [v3 systemApplication];
  v5 = [v4 currentApplications];

  obj = v5;
  v27 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v27)
  {
    v26 = *v38;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v37 + 1) + 8 * i) focusContainersForCurrentSceneIdentifier:0];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v8 = [*(a1 + 32) view];
        v9 = [v8 window];
        v10 = [v9 screen];
        v11 = [v10 displayIdentity];
        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 displayID]);
        v13 = [v7 objectForKey:v12];

        v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v34;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v34 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v33 + 1) + 8 * j) elementsForAttribute:95246 parameter:*(a1 + 40)];
              [v2 addObjectsFromArray:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v15);
        }
      }

      v27 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v27);
  }

  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v2;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v29 + 1) + 8 * k) setTypeaheadQueryString:*(a1 + 40)];
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v21);
  }

  v28 = *(a1 + 32);
  v24 = v19;
  AXPerformBlockOnMainThread();
}

void sub_10000E178(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) typeaheadNamesViewController];
  [v2 setItems:v1];
}

void sub_10000E1C8(uint64_t a1)
{
  v1 = [*(a1 + 32) typeaheadNamesViewController];
  [v1 setItems:&__NSArray0__struct];
}

void sub_10000F674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F6C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 commandMap];

  [WeakRetained _didUpdateAvailableCommandsWithUpdatedMap:v4];
}

void sub_10000F734(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didUpdateFocusRingTimeout];
}

void sub_10000F774(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didUpdateFocusRingTimeout];
}

void sub_100010A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010A98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateTypeaheadNamesViewControllerItemsForQueryString:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  v3 = [v4 actionManager];
  [v3 moveFocusWithHeading:256 queryString:*(a1 + 32)];
}

void sub_100010C68(id a1, FKASceneDelegate *a2)
{
  v2 = [(FKASceneDelegate *)a2 nonInteractiveWindow];
  v5 = [v2 rootViewController];

  v3 = [v5 typeaheadNamesViewController];

  if (!v3)
  {
    v4 = objc_opt_new();
    [v5 setTypeaheadNamesViewController:v4];
    [v5 showChildViewController:v4 animated:0];
  }
}

void sub_100010D14(id a1, FKASceneDelegate *a2)
{
  v2 = [(FKASceneDelegate *)a2 nonInteractiveWindow];
  v5 = [v2 rootViewController];

  v3 = [v5 typeaheadNamesViewController];

  if (v3)
  {
    v4 = [v5 typeaheadNamesViewController];
    [v5 dismissChildViewController:v4 animated:0];

    [v5 setTypeaheadNamesViewController:0];
  }
}

void sub_100010EAC(uint64_t a1, void *a2)
{
  v3 = [a2 nonInteractiveWindow];
  v4 = [v3 rootViewController];

  [v4 updateTypeaheadNamesForQueryString:*(a1 + 32)];
}

id sub_100011954(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [*(a1 + 32) _sceneVendedByOneness:v3];

      if ((v5 & 1) == 0)
      {
        v6 = [v3 delegate];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

void sub_100012F20(uint64_t a1)
{
  [*(a1 + 32) setShouldIgnoreNextScreenChange:1];
  v2 = [*(a1 + 32) rootViewController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012FC0;
  v3[3] = &unk_100028790;
  v4 = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void sub_100012FC0(uint64_t a1)
{
  v2 = [*(a1 + 32) elementActionManager];
  [v2 performAction:*(a1 + 40)];
}

void sub_100013014(uint64_t a1)
{
  [*(a1 + 32) setShouldIgnoreNextScreenChange:1];
  v2 = [*(a1 + 32) rootViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_100014174(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Tried to repost unexpected keyboard event: %@", &v2, 0xCu);
}

void sub_100014230(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type for connected scene: %@", &v2, 0xCu);
}

void sub_1000142A8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Got unexpected application orientation %i", v2, 8u);
}

void sub_100014320(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected orientation: %i", v2, 8u);
}

void sub_100014398(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Gesture attempted, but no visible point or center point AND frame was empty: %@", &v2, 0xCu);
}

void sub_100014468(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unexpected number of cell views: %lu", &v2, 0xCu);
}

void sub_100014524(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unhandled notification received: %i. Data: %@", v3, 0x12u);
}

CGPoint CGPointFromString(NSString *string)
{
  v3 = _CGPointFromString(string);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}