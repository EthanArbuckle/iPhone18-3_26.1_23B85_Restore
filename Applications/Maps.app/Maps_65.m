void sub_100D189C4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D18A74;
  block[3] = &unk_1016605F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100D18A74(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = +[NSMutableSet set];
    [*(a1 + 40) setSelectedObjectSet:v2];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  v4 = [*(a1 + 40) resultBlock];

  if (v4)
  {
    v5 = [*(a1 + 40) resultBlock];
    v5[2](v5, *(a1 + 32));
  }
}

void sub_100D18B3C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = +[NSMutableSet set];
    [*(a1 + 40) setSelectedObjectSet:v2];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  v4 = [*(a1 + 40) resultBlock];

  if (v4)
  {
    v5 = [*(a1 + 40) resultBlock];
    v5[2](v5, *(a1 + 32));
  }
}

void sub_100D18CD0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D18D80;
  block[3] = &unk_1016605F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100D18D80(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = +[NSMutableSet set];
    [*(a1 + 40) setSelectedObjectSet:v2];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  v4 = [*(a1 + 40) resultBlock];

  if (v4)
  {
    v5 = [*(a1 + 40) resultBlock];
    v5[2](v5, *(a1 + 32));
  }
}

void sub_100D1932C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100D19350()
{
  if (qword_10195F040 != -1)
  {
    dispatch_once(&qword_10195F040, &stru_1016516B8);
  }

  v1 = qword_10195F038;

  return v1;
}

void sub_100D193A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100D19350();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      *buf = 134349314;
      v23 = WeakRetained;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}p] Error unlocking device: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      *buf = 134349056;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Successfully unlocked device", buf, 0xCu);
    }

    v8 = sub_100D19350();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      v10 = *(a1 + 32);
      *buf = 134349314;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Launching TTR with URL: %@", buf, 0x16u);
    }

    v5 = objc_alloc_init(_LSOpenConfiguration);
    v11 = +[MNNavigationService sharedService];
    v12 = [v11 isInNavigatingState];

    v20 = LSOpenInBackgroundKey;
    v13 = [NSNumber numberWithBool:v12];
    v21 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v5 setFrontBoardOptions:v14];

    v15 = +[LSApplicationWorkspace defaultWorkspace];
    v16 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100D1968C;
    v17[3] = &unk_101651660;
    objc_copyWeak(&v18, (a1 + 40));
    v19 = v12;
    [v15 openURL:v16 configuration:v5 completionHandler:v17];

    objc_destroyWeak(&v18);
  }
}

void sub_100D1968C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100D19350();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *buf = 134349314;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}p] Error launching TTR: %{public}@", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D19840;
    block[3] = &unk_101661B18;
    v10 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      *buf = 134349056;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Successfully launched TTR with URL", buf, 0xCu);
    }

    if (*(a1 + 40) == 1)
    {
      dispatch_async(&_dispatch_main_q, &stru_101651638);
    }
  }
}

void sub_100D19840(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"There was an error launching TTR: %@", *(a1 + 32)];
  v6 = [UIAlertController alertControllerWithTitle:@"[Internal only]\nTap to Radar" message:v1 preferredStyle:1];

  v2 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [v6 addAction:v2];

  v3 = +[MapsInternalAlertPresentationController sharedInstance];
  v4 = +[UIApplication _maps_keyMapsWindow];
  v5 = [v4 windowScene];
  [v3 presentAlertController:v6 fromWindowScene:v5];
}

void sub_100D19958(id a1)
{
  v1 = [UIAlertController alertControllerWithTitle:@"[Internal only]\nTap-to-Radar" message:@"Tap-to-Radar was successfully launched in the background because you are navigating." preferredStyle:1];
  objc_initWeak(&location, v1);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100D19AD0;
  v9 = &unk_101658AF0;
  objc_copyWeak(&v10, &location);
  v2 = [UIAlertAction _maps_actionWithTitle:@"OK" style:0 timeout:&v6 handler:5.0];
  [v1 addAction:{v2, v6, v7, v8, v9}];

  v3 = +[MapsInternalAlertPresentationController sharedInstance];
  v4 = +[UIApplication _maps_keyMapsWindow];
  v5 = [v4 windowScene];
  [v3 presentAlertController:v1 fromWindowScene:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_100D19AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D19AD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void sub_100D19B18(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsRadarDraftTTR");
  v2 = qword_10195F038;
  qword_10195F038 = v1;
}

void sub_100D1A040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D1A06C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "[MapsRadarDraft(TTR) _launchTapToRadarKitWithDisplayReason:]_block_invoke";
      v15 = 2080;
      v16 = "MapsRadarDraft+TTR.m";
      v17 = 1024;
      v18 = 72;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v13, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }

    v7 = sub_100D19350();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v13 = 134349314;
      v14 = WeakRetained;
      v15 = 2114;
      v16 = v3;
      v9 = "[%{public}p] Error filing with TapToRadarKit: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v13, v12);
    }
  }

  else
  {
    v7 = sub_100D19350();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v13 = 134349056;
      v14 = WeakRetained;
      v9 = "[%{public}p] Successfully filed with TapToRadarKit";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
      goto LABEL_12;
    }
  }
}

void sub_100D1A358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100D1A370(uint64_t a1)
{
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_10195F030;
  v10 = qword_10195F030;
  if (!qword_10195F030)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100D1A51C;
    v4[4] = &unk_101651698;
    v5 = &v7;
    v6 = v4;
    v11 = off_101651680;
    v8[3] = _sl_dlopen();
    qword_10195F030 = *(v5[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
LABEL_8:
    abort_report_np();
    __break(1u);
  }

  qword_10195F028 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100D1A4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D1A51C(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10195F030 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100D1ABB0(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "(tag %@) %@", &v5, 0x16u);
  }
}

void sub_100D1AE20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100005610();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = [v4 localizedDescription];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = [*(a1 + 32) shortDescription];
      v11 = 138413058;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsActionController : error %@ waiting location (timeout %f, maxage: %f)for action %@ ", &v11, 0x2Au);

LABEL_6:
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) shortDescription];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsActionController : got user location for %@ ", &v11, 0xCu);
    goto LABEL_6;
  }

  [*(a1 + 40) applyRichMapsActivity:*(a1 + 32)];
}

void sub_100D1B204(uint64_t a1)
{
  [*(a1 + 32) applyRichMapsActivityOrWaitForLocation:*(*(a1 + 32) + 8)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

void sub_100D1B700(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = sub_100005610();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) shortDescription];
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsActionController : user stopped navigation for %@", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    [WeakRetained endNavigationAndReturnToRoutePlanning:0];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;

    WeakRetained = sub_100005610();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) shortDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_INFO, "MapsActionController : user discard %@", &v9, 0xCu);
    }
  }
}

void sub_100D1C4F8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _visibleCarIndexForCar:a2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = 1;
  }

  else
  {
    v7 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:v5];
    v6 = +[UIColor labelColor];
    [v7 setTintColor:v6];
  }
}

void sub_100D1D9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D1D9EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D1DA04(uint64_t a1)
{
  v1 = a1;
  v43 = *(*(a1 + 32) + 80);
  v2 = [v43 length];
  v3 = *(v1 + 32);
  v4 = 48;
  if (!*(v3 + 48))
  {
    if (v2 || (v5 = [v3 hasItemsWhenSearchStringIsEmpty], v3 = *(v1 + 32), v5))
    {
      v37 = 48;
      v6 = *(v3 + 40);
      v45 = +[NSMutableArray array];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v60;
        v38 = v55;
        v41 = v2;
        v42 = v1;
        v39 = *v60;
        v40 = v7;
        do
        {
          v11 = 0;
          v44 = v9;
          do
          {
            if (*v60 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v59 + 1) + 8 * v11);
            if ([*(v1 + 32) itemIsAllowed:{v12, v37, v38}])
            {
              if (([v12 hidden] & 1) == 0)
              {
                if (v2)
                {
                  v54[0] = _NSConcreteStackBlock;
                  v54[1] = 3221225472;
                  v55[0] = sub_100D1DEB4;
                  v55[1] = &unk_101651730;
                  v56 = v43;
                  v57 = v12;
                  v58 = v45;
                  v13 = objc_retainBlock(v54);
                  v50 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v14 = [v12 autocompletionStrings];
                  v15 = [v14 countByEnumeratingWithState:&v50 objects:v64 count:16];
                  if (v15)
                  {
                    v16 = v15;
                    v17 = *v51;
LABEL_14:
                    v18 = 0;
                    while (1)
                    {
                      if (*v51 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      if ((v13[2])(v13, *(*(&v50 + 1) + 8 * v18)))
                      {
                        break;
                      }

                      if (v16 == ++v18)
                      {
                        v16 = [v14 countByEnumeratingWithState:&v50 objects:v64 count:16];
                        if (v16)
                        {
                          goto LABEL_14;
                        }

                        break;
                      }
                    }
                  }

                  v19 = [v12 searchResult];
                  v20 = [v19 mapItem];
                  v21 = [v20 _geoMapItem];
                  v22 = [v21 _alternateSearchableNames];

                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v23 = v22;
                  v24 = [v23 countByEnumeratingWithState:&v46 objects:v63 count:16];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = *v47;
LABEL_22:
                    v27 = 0;
                    while (1)
                    {
                      if (*v47 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = *(*(&v46 + 1) + 8 * v27);
                      v29 = [AutocompleteMatchInfo matchInfoWithType:1];
                      v30 = [[AutocompleteStringMatcher alloc] initWithString:v28 requiredMatchLength:1 matchInfo:v29];
                      v31 = (v13[2])(v13, v30);

                      if (v31)
                      {
                        break;
                      }

                      if (v25 == ++v27)
                      {
                        v25 = [v23 countByEnumeratingWithState:&v46 objects:v63 count:16];
                        if (v25)
                        {
                          goto LABEL_22;
                        }

                        break;
                      }
                    }
                  }

                  v2 = v41;
                  v1 = v42;
                  v10 = v39;
                  v7 = v40;
                  v9 = v44;
                }

                else
                {
                  [v45 addObject:v12];
                }
              }
            }

            else
            {
              v32 = sub_100067540();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v66 = v12;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "PersonalizedItemAutocompleteFilter - Skipped personalized item because not allowed: %@", buf, 0xCu);
              }
            }

            v11 = v11 + 1;
          }

          while (v11 != v9);
          v33 = [v7 countByEnumeratingWithState:&v59 objects:v67 count:16];
          v9 = v33;
        }

        while (v33);
      }

      v34 = [v45 copy];
      v35 = *(v1 + 32);
      v4 = v37;
      v36 = *(v35 + v37);
      *(v35 + v37) = v34;

      v3 = *(v1 + 32);
    }
  }

  objc_storeStrong((*(*(v1 + 40) + 8) + 40), *(v3 + v4));
}

BOOL sub_100D1DEB4(uint64_t a1, void *a2)
{
  v3 = [a2 matchForAutocompleteSearchString:*(a1 + 32)];
  if (v3)
  {
    v4 = [[AutocompleteItem alloc] initWithPersonalizedItem:*(a1 + 40) matchInfo:v3];
    [*(a1 + 48) addObject:v4];
  }

  return v3 != 0;
}

id sub_100D1DFAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _notifyObserversItemsDidChange];
}

void sub_100D1E10C(uint64_t a1)
{
  v2 = [*(a1 + 40) allItems];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100D1E4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D1E4F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didShowPlaceCard];
}

void sub_100D1E638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D1E654(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishJumping];
}

uint64_t sub_100D1F394(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D1F3AC(uint64_t a1)
{
  v2 = [*(a1 + 32) beginShowingLoadingIndicator];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100D1FF38()
{
  if (qword_10195F068 != -1)
  {
    dispatch_once(&qword_10195F068, &stru_101651798);
  }

  v1 = qword_10195F060;

  return v1;
}

void sub_100D1FF8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([WeakRetained gotFirstFrame] & 1) == 0)
  {
    v3 = sub_100D1FF38();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Passing ARSession to VKMapView", &v6, 0xCu);
    }

    v4 = [v2 vkMapView];
    v5 = [v2 session];
    [v4 setARSession:v5];

    [v2 setGotFirstFrame:1];
  }
}

void sub_100D20094(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARRenderingView");
  v2 = qword_10195F060;
  qword_10195F060 = v1;
}

void sub_100D21418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D21434(uint64_t a1)
{
  v2 = sub_1007989A4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6[0] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "pressed learn more button", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 18);
    [v5 pressedLearnMoreURL:*(a1 + 32)];
  }
}

void sub_100D215CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateOfflineButtonIfNecessary];
    WeakRetained = v2;
  }
}

void sub_100D21C04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100D21C34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _pressedOfflineDownloadButton];
    WeakRetained = v2;
  }
}

void sub_100D21C78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _pressedOfflineDownloadButton];
    WeakRetained = v2;
  }
}

NSDictionary *__cdecl sub_100D21CBC(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 mutableCopy];
  v3 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
  v4 = [v3 _maps_fontWithMonospacedNumbers];
  [v2 setObject:v4 forKeyedSubscript:NSFontAttributeName];

  v5 = [v2 copy];

  return v5;
}

void sub_100D22448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D22474(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v4 && WeakRetained)
  {
    [WeakRetained _updateDirectionsButtonWithSuggestedMode:{objc_msgSend(*(a1 + 32), "suggestedNavigationModeForLocation:context:", v4, 1)}];
  }
}

void sub_100D22978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D2299C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained[3] source];
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (v3 == 3)
    {
      v6 = @"[Route Creation] Save";
    }

    else
    {
      v6 = @"[Route Creation] Add to Routes";
    }

    v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

    [v8[13] setTitle:v7 forState:0];
    [*(a1 + 32) addObject:v8[13]];

    WeakRetained = v8;
  }
}

id sub_100D22F08(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:NSFontAttributeName];
  v4 = [v3 copy];

  return v4;
}

UIColor *__cdecl sub_100D2482C(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 2)
  {
    +[UIColor secondarySystemGroupedBackgroundColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v2 = ;

  return v2;
}

uint64_t sub_100D26B44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = *(v6 + 8 * [v5 indexOfObject:a2]);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = *(v9 + 8 * v10);
  v12 = v8 >= v11;
  v13 = v8 > v11;
  if (v12)
  {
    return v13;
  }

  else
  {
    return -1;
  }
}

void sub_100D26ECC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionCoarseLocationMonitor");
  v2 = qword_10195F070;
  qword_10195F070 = v1;
}

void sub_100D271A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D271C8(uint64_t a1)
{
  v2 = sub_10006ABB4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Delay timer fired; updating state now", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateStateForCurrentPreciseLocationAuthorizationStatus];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setAuthorizedDelayTimer:0];
}

void sub_100D27B24(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D27BDC;
  block[3] = &unk_101660590;
  v5 = a2;
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100D27BDC(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        if ([v6 incidentType] == *(a1 + 48))
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = +[MKLocationManager sharedLocationManager];
  v8 = [v7 currentLocation];

  v9 = -[TrafficIncidentReport initWithUserLocation:type:userPath:]([TrafficIncidentReport alloc], "initWithUserLocation:type:userPath:", v8, [v3 incidentType], 1);
  [(TrafficIncidentReport *)v9 setSiriContext:1];
  v10 = +[CarDisplayController sharedInstance];
  v11 = [v10 isCurrentlyConnectedToAnyCarScene];

  if (v11)
  {
    [(TrafficIncidentReport *)v9 setReportedFromCarplay:1];
    v12 = +[CarChromeModeCoordinator sharedInstance];
  }

  else
  {
    v13 = [*(a1 + 40) navActionCoordinator];

    v14 = *(a1 + 40);
    if (v13)
    {
      [v14 navActionCoordinator];
    }

    else
    {
      [v14 appCoordinator];
    }
    v12 = ;
  }

  v15 = v12;
  [v12 displayIncidentReportSubmissionWithItem:v3 report:{v9, v16}];
}

void sub_100D28D74(uint64_t a1)
{
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v47;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [UIImage _mapkit_transitArtworkImageWithDataSource:*(*(&v46 + 1) + 8 * i) size:8 scale:*(a1 + 64)];
        v9 = v8;
        if (!v5 || v8 && ([v8 size], v12 = v10 * v11, objc_msgSend(v5, "size"), v12 > v13 * v14))
        {
          v15 = v9;

          v5 = v15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  [v5 size];
  if (v5)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a1 + 72) == 6;
  }

  if (v17 || v16 < 20.0)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = *(a1 + 32);
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [UIImage _mapkit_transitArtworkImageWithDataSource:*(*(&v42 + 1) + 8 * j) size:8 scale:*(a1 + 64)];
          v25 = v24;
          if (!v5 || v24 && ([v24 size], v28 = v26 * v27, objc_msgSend(v5, "size"), v28 > v29 * v30))
          {
            v31 = v25;

            v5 = v31;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v21);
    }
  }

  [v5 size];
  if (v5 && v32 >= 20.0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D29104;
    block[3] = &unk_101661090;
    v41 = *(a1 + 56);
    v40 = v5;
    dispatch_async(&_dispatch_main_q, block);

    v33 = v41;
  }

  else
  {
    v34 = [*(a1 + 40) _imageForStyleAttributes:*(a1 + 48) screenScale:*(a1 + 76) isNightMode:*(a1 + 64)];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100D29118;
    v36[3] = &unk_101661090;
    v35 = *(a1 + 56);
    v37 = v34;
    v38 = v35;
    v33 = v34;
    dispatch_async(&_dispatch_main_q, v36);
  }
}

void sub_100D297E4(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [*(a1 + 32) setImage:v3];
}

void sub_100D29DC0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195F080;
  qword_10195F080 = v1;

  [qword_10195F080 setDateStyle:0];
  v3 = qword_10195F080;

  [v3 setTimeStyle:1];
}

void sub_100D2A858(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
}

uint64_t sub_100D2AA0C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 identifier];
  v7 = [v5 identifier];

  v8 = [v6 isEqual:v7];
  if (a3 && v8)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[EVOnboardingController _finishConfiguringVehicle:]_block_invoke";
      v15 = 2080;
      v16 = "EVOnboardingController.m";
      v17 = 1024;
      v18 = 411;
      v19 = 2080;
      v20 = "index == 0";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }

  return v8 ^ 1;
}

void sub_100D2C988(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_100D2C9B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    v4 = sub_100798370();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Nilling out _strongself as a fallback in EVOnboardingController.", v5, 2u);
    }
  }
}

void sub_100D2E890(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UGCInlinePOIEnrichmentViewController");
  v2 = qword_10195F090;
  qword_10195F090 = v1;
}

void sub_100D2F008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_100D2F038(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained _cancelDismiss];
    v3 = v8[7];
    v4 = [*(a1 + 32) stringValue];
    v5 = [v3 objectForKey:v4];

    [v5 setSharingState:1 animated:1];
    v6 = [v8 keyboardMode];
    v7 = [v6 chromeViewController];
    [v7 captureUserAction:9025];

    WeakRetained = v8;
  }
}

void sub_100D2F108(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = WeakRetained;
  if (v8 || !WeakRetained)
  {
    v17 = sub_1000946AC();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

      goto LABEL_17;
    }

    v18 = *(a1 + 32);
    if (!v18)
    {
      v23 = @"<nil>";
      goto LABEL_15;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [v18 performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

        goto LABEL_12;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_12:

LABEL_15:
    *buf = 138543618;
    v30 = v23;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] CarPlay failed to fetch requiresUserConfirmation flag: %@", buf, 0x16u);

    goto LABEL_16;
  }

  if (a2)
  {
    v11 = [*(a1 + 40) name];
    v12 = [*(a1 + 40) handle];
    v13 = sub_100FB1FC8(v11, v12);

    v14 = *(a1 + 48);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100D2F3F8;
    v24[3] = &unk_101651AD8;
    v15 = v13;
    v25 = v15;
    objc_copyWeak(&v28, (a1 + 64));
    v26 = *(a1 + 32);
    v27 = *(a1 + 56);
    v16 = [v14 presentInterruptionOfKind:14 userInfo:v15 completionHandler:v24];

    objc_destroyWeak(&v28);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

LABEL_17:
}

void sub_100D2F3F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"kMapsInterruptionSharedTripSenderHandle"];
    v4 = +[MSPSharedTripService sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D2F4F4;
    v6[3] = &unk_101660FD8;
    objc_copyWeak(&v8, (a1 + 56));
    v5 = *(a1 + 48);
    v6[4] = *(a1 + 40);
    v7 = v5;
    [v4 reportUserConfirmationOfSharingIdentity:v3 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_100D2F4F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3 || !WeakRetained)
  {
    v6 = sub_1000946AC();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      goto LABEL_15;
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_13;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_11;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_11:

LABEL_13:
    *buf = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}@] CarPlay failed to report requiresUserConfirmation: %@", buf, 0x16u);

    goto LABEL_14;
  }

  (*(*(a1 + 40) + 16))();
LABEL_15:
}

void sub_100D2F948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 tableFooterView];
  [v2 frame];
  [v1 scrollRectToVisible:1 animated:?];
}

void sub_100D30020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D3003C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained dismissHandler];

  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
    v2 = v3;
  }
}

void sub_100D308B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D308D8(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 3, a2);
  }
}

void sub_100D30D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D30D9C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSearchResults:v6];

  v8[2]();
}

void sub_100D3135C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) contactsFromCNContact:a2];
  [v2 addObjectsFromArray:v3];
}

id sub_100D324C8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [*(a1 + 32) _loadingSection];
  }

  else
  {
    v5 = [a3 traitCollection];
    v4 = [v3 _thumbnailGalleryLayoutForTraitCollection:v5];
  }

  return v4;
}

void sub_100D32B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D32B30(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateState:*(a1 + 40)];
  }
}

void sub_100D32C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D32C9C(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateState:*(a1 + 40)];
  }
}

void sub_100D337FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CyclingRequestInfoProvider alloc];
  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) _timing:*(a1 + 48) forTransportType:5];
  v6 = [(CyclingRequestInfoProvider *)v4 initWithPreferences:v5 timing:v7];
  [v3 setObject:v6 forKeyedSubscript:&off_1016E97E8];
}

void sub_100D33980(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WalkingRequestInfoProvider alloc];
  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) _timing:*(a1 + 48) forTransportType:2];
  v6 = [(WalkingRequestInfoProvider *)v4 initWithPreferences:v5 timing:v7];
  [v3 setObject:v6 forKeyedSubscript:&off_1016E97D0];
}

void sub_100D33B04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [DrivingRequestInfoProvider alloc];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) _timing:*(a1 + 48) forTransportType:1];
  v7 = [(DrivingRequestInfoProvider *)v4 initWithPreferences:v5 timing:v6];
  [v3 setObject:v7 forKeyedSubscript:&off_1016E97B8];

  v12 = [v3 objectForKeyedSubscript:&off_1016E97A0];
  v8 = [TransitRequestInfoProvider alloc];
  v9 = [v12 transitPreferences];
  v10 = [*(a1 + 40) _timing:*(a1 + 48) forTransportType:3];
  v11 = [(TransitRequestInfoProvider *)v8 initWithPreferences:v9 timing:v10];
  [v3 setObject:v11 forKeyedSubscript:&off_1016E97A0];
}

void sub_100D33D14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TransitRequestInfoProvider alloc];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) _timing:*(a1 + 48) forTransportType:3];
  v7 = [(TransitRequestInfoProvider *)v4 initWithPreferences:v5 timing:v6];
  [v3 setObject:v7 forKeyedSubscript:&off_1016E97A0];

  v12 = [v3 objectForKeyedSubscript:&off_1016E97B8];
  v8 = [DrivingRequestInfoProvider alloc];
  v9 = [v12 drivePreferences];
  v10 = [*(a1 + 40) _timing:*(a1 + 48) forTransportType:1];
  v11 = [(DrivingRequestInfoProvider *)v8 initWithPreferences:v9 timing:v10];
  [v3 setObject:v11 forKeyedSubscript:&off_1016E97B8];
}

void sub_100D341DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = sub_100028730();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100D34188);
  }

  _Unwind_Resume(a1);
}

void sub_100D34294(id a1)
{
  v1 = +[NSFileManager _maps_globalCachesURL];
  if (!v1)
  {
    v2 = NSHomeDirectory();
    v1 = [NSURL URLWithString:v2];
  }

  v3 = [v1 URLByAppendingPathComponent:@"state.txt"];
  v4 = [v3 path];
  v5 = qword_10195F0A0;
  qword_10195F0A0 = v4;

  v6 = sub_100028730();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = qword_10195F0A0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TEST_MODE  write state at %@", &v7, 0xCu);
  }
}

void sub_100D34B64(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 appCoordinator];
  v4 = [v3 mapsSceneDelegate];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  if ([v6 activationState] && objc_msgSend(v6, "activationState") != 1)
  {
    v8 = sub_100028730();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      v14 = 138412546;
      v15 = v13;
      v16 = 2048;
      v17 = [v6 activationState];
      v10 = "NOT Telling UIKit to archive MapsActivity (tag %@), activationState: %ld";
      v11 = v8;
      v12 = 22;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = +[UIApplication sharedApplication];
    [v7 _saveRestorationUserActivityStateForScene:v6];

    v8 = sub_100028730();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v14 = 138412290;
      v15 = v9;
      v10 = "Telling UIKit to archive MapsActivity (tag %@)";
      v11 = v8;
      v12 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v10, &v14, v12);
    }
  }
}

void sub_100D34D10(uint64_t a1)
{
  v2 = sub_100028730();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412547;
    v6 = v3;
    v7 = 2113;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Archiving MapsActivity (tag %@): %{private}@", &v5, 0x16u);
  }
}

void sub_100D34E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMapsActivityDataDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [v2 objectForKeyedSubscript:@"f"];
    v6 = [v3 objectForKeyedSubscript:@"c"];
    v7 = [v3 objectForKeyedSubscript:@"t"];
    v8 = [v3 objectForKeyedSubscript:@"x"];
    [v4 _updateUserActivityWithMapsActivityAtFullFidelity:v5 atCompactFidelity:v6 title:v7 expirationDate:v8];
  }

  v9 = sub_100028730();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 40);
    v11 = [v10 title];
    v12 = @"YES";
    if ([*(a1 + 40) isEligibleForSearch])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if ([*(a1 + 40) isEligibleForPrediction])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if ([*(a1 + 40) isEligibleForHandoff])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    if (![*(a1 + 40) isEligibleForPublicIndexing])
    {
      v12 = @"NO";
    }

    v16 = [*(a1 + 40) userInfo];
    v17 = [*(a1 + 40) contentAttributeSet];
    v18 = 138414083;
    v19 = v10;
    v20 = 2113;
    v21 = v11;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "userActivityWillSave %@ title %{private}@ search %@ prediction %@ handoff %@ publicIndexing %@ userInfo %@ contentAttributeSet %@", &v18, 0x52u);
  }
}

id sub_100D35AB8()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 localizedStringForKey:@"Clear [Modal Card Header]" value:@"localized string not found" table:0];

  return v1;
}

void sub_100D35FF8(uint64_t a1)
{
  v2 = [*(a1 + 40) vehicles];
  [*(a1 + 32) setVehicleCount:{objc_msgSend(v2, "count")}];

  v3 = [*(a1 + 32) vehicleBatteryView];
  v4 = [v3 vehicle];
  v5 = [v4 isPureElectricVehicle];

  if (v5)
  {
    v6 = [*(a1 + 40) vehicles];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100D36150;
    v12[3] = &unk_1016588C0;
    v12[4] = *(a1 + 32);
    v7 = sub_100030774(v6, v12);
    v8 = [*(a1 + 32) vehicleBatteryView];
    [v8 setVehicle:v7];
  }

  [*(a1 + 32) _updateContent];
  [*(a1 + 32) setTableStructure:0];
  v9 = [*(a1 + 32) tableView];
  [v9 reloadData];

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = 0;
}

id sub_100D36150(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 vehicleBatteryView];
  v8 = [v7 vehicle];
  v9 = [v8 identifier];
  v10 = [v6 identifier];

  v11 = [v9 isEqualToString:v10];
  if (v11)
  {
    *a4 = 1;
  }

  return v11;
}

void sub_100D36F5C(uint64_t a1)
{
  if ([*(a1 + 32) _isMinimumViableVehicle])
  {
    v2 = [*(a1 + 32) delegate];
    [v2 vehicleDetailViewController:*(a1 + 32) saveVehicleEdit:*(*(a1 + 32) + 8)];
  }
}

void sub_100D37200(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 32));
  *(*(a1 + 32) + 24) = 1;
  v2 = [*(a1 + 32) delegate];
  [v2 vehicleDetailViewController:*(a1 + 32) deleteVehicle:*(*(a1 + 32) + 8)];

  v3 = [*(a1 + 32) presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:&stru_101651C70];

  objc_initWeak(&location, *(a1 + 32));
  v4 = dispatch_time(0, 1000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D37330;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  dispatch_after(v4, &_dispatch_main_q, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_100D37330(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    WeakRetained[2] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

NSString *__cdecl sub_100D37878(id a1, NSNumber *a2, unint64_t a3)
{
  v3 = [(NSNumber *)a2 unsignedIntegerValue];

  return sub_100A64170(v3);
}

VehicleLabelCell *__cdecl sub_100D39FBC(id a1, VGChargingNetwork *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(VGChargingNetwork *)v3 name];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [(VGChargingNetwork *)v3 name];
    [v5 setAccessibilityIdentifier:v6];

    v7 = [(VGChargingNetwork *)v3 name];
    v8 = [v5 label];
    [v8 setText:v7];

    [v5 setSelectionStyle:0];
  }

  else
  {
    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create a cell for network: %@", &v11, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

int64_t sub_100D3A10C(id a1, VGChargingNetwork *a2, VGChargingNetwork *a3)
{
  v4 = a3;
  v5 = [(VGChargingNetwork *)a2 name];
  v6 = [(VGChargingNetwork *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100D3AF08(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) problemStatus];
  v29 = [v2 objectAtIndexedSubscript:0];

  v3 = [v29 details];
  v4 = [v3 displayStyle];

  v5 = v29;
  if (v4 == 4)
  {
    v6 = *(a1 + 32);
    v7 = [v29 details];
    v8 = [v7 label];
    v9 = [v8 localizedText];
    v10 = [v6 labelMarkerOnMapViewWithText:v9];

    if (v10)
    {
      [*(*(a1 + 32) + 136) _selectLabelMarker:v10 animated:1];
    }

    else
    {
      v11 = [MKPlacemark alloc];
      v12 = [v29 details];
      v13 = [v12 label];
      v14 = [v13 center];
      [v14 lat];
      v16 = v15;
      v17 = [v29 details];
      v18 = [v17 label];
      v19 = [v18 center];
      [v19 lng];
      v21 = CLLocationCoordinate2DMake(v16, v20);
      v22 = [v11 initWithCoordinate:0 addressDictionary:{v21.latitude, v21.longitude}];

      v23 = [[MKMapItem alloc] initWithPlacemark:v22];
      v24 = [v29 details];
      v25 = [v24 label];
      v26 = [v25 localizedText];
      [v23 setName:v26];

      v27 = *(a1 + 32);
      if (*(v27 + 16))
      {
        [*(v27 + 136) removeAnnotation:?];
      }

      v28 = [[RAPAnnotation alloc] initWithMapItem:v23];
      [*(*(a1 + 32) + 136) addAnnotation:v28];
      [*(*(a1 + 32) + 136) selectAnnotation:v28 animated:1];
    }

    v5 = v29;
  }
}

void sub_100D3BC24(uint64_t a1)
{
  v7 = [*(a1 + 32) mapView];
  v2 = *(a1 + 32);
  v3 = v2 + 3;
  v4 = [v2 view];
  v5 = [v4 safeAreaLayoutGuide];
  [v5 layoutFrame];
  [v7 setVisibleMapRect:0 edgePadding:*v3 animated:{v3[1], v3[2], v3[3], v6 + 20.0, 20.0, 20.0, 20.0}];
}

uint64_t sub_100D3E178(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100D3F870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100D3F8BC(uint64_t a1, void *a2, unint64_t a3, char *a4)
{
  v15 = a2;
  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7 >= [*(a1 + 32) count])
  {
LABEL_8:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      v8 = v7++;
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v8];
      v10 = [v9 range];
      if (v10 >= a3 && &v10[-a3] < a4)
      {
        v12 = [v9 range];
        if (&v12[v13] <= &a4[a3])
        {
          break;
        }
      }

      if (v7 >= [*(a1 + 32) count])
      {
        goto LABEL_8;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  v14 = [[RelatedSearchSuggestionComponent alloc] initWithDisplayText:v15 substitute:v9];
  [*(a1 + 40) addObject:v14];
  *(*(*(a1 + 56) + 8) + 24) += [v15 length];
}

id sub_100D40D08(uint64_t a1)
{
  v2 = [*(a1 + 32) mainVKMapView];
  v3 = [v2 isFullyDrawn];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 onFullyDrawn:0];
  }

  else
  {

    return [v4 setupFullyDrawnNotification:"onFullyDrawn:"];
  }
}

void sub_100D41054(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"stepZoom:zoom%02d", *(a1 + 40)];
  [*(a1 + 32) startedSubTest:v2];
  v3 = [MapsAppTestCirclePan alloc];
  v4 = [*(a1 + 32) app];
  v5 = [(MapsAppTestCirclePan *)v3 initWithApplication:v4 testName:v2 options:0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  [*(*(a1 + 32) + 64) setPitch:0.0];
  [*(*(a1 + 32) + 64) setYaw:0.0];
  [*(a1 + 32) _regionSizeForZoom:*(a1 + 40)];
  VKLocationCoordinate3DMake();
  [*(*(a1 + 32) + 64) setEndPoint:?];
  [*(*(a1 + 32) + 64) setAltitudeIsRegionSize:1];
  [*(*(a1 + 32) + 64) setAnimationDuration:*(*(a1 + 32) + 96)];
  [*(*(a1 + 32) + 64) setUseTestNameInResults:1];
  v8 = [*(a1 + 32) results];
  [*(*(a1 + 32) + 64) setResults:v8];

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(*(a1 + 32) + 64);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D41298;
  v11[3] = &unk_101651D38;
  objc_copyWeak(v13, &location);
  v10 = v2;
  v12 = v10;
  v13[1] = *(a1 + 40);
  [v9 setTestFinshdCallback:v11];
  [*(*(a1 + 32) + 64) runTest];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void sub_100D41278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D41298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stepLoadCompleted:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 48);
  v5 = v3;
  [v5 runStepZoomTest:{v4 + objc_msgSend(v5, "_zoomAmount")}];
}

void sub_100D41324(id a1, unint64_t a2)
{
  v2 = +[GEOTileLoader modernLoader];
  [v2 clearAllCaches];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:VKShouldFlushTileCachesNotification object:0];
}

void sub_100D41524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D41540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startedTest];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 runStepZoomTest:*(a1 + 40)];
}

SearchResult *sub_100D42598(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 32) <= a3)
  {
    v4 = [a2 mapItemStorage];
    if (v4)
    {
      v3 = [[SearchResult alloc] initWithGEOMapItem:v4];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100D437C4(uint64_t a1)
{
  v2 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  [v2 addMapsAuthDidFinishObserver:*(a1 + 32) forRequestType:GEOMapsAuthACToken];

  v3 = *(a1 + 32);

  return [MapsAppleConnectAuthViewController presentAppleConnectAuthControllerFrom:v3 withProxyURL:0];
}

void sub_100D43C28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100D43C80(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 name];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100D444A0;
        v11[3] = &unk_101661340;
        objc_copyWeak(&v12, (a1 + 40));
        v11[4] = v7;
        v9 = [v3 addButtonRowWithTitle:v8 action:v11];

        objc_destroyWeak(&v12);
      }

      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_100D43E40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v5 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v6 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v7 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100D44114;
  v13 = &unk_101658DA0;
  v14 = *(a1 + 32);
  objc_copyWeak(&v15, (a1 + 40));
  v8 = [v3 addNavigationRowWithTitle:@"GeoServices" viewControllerContent:&v10];
  v9 = [v3 addNavigationRowForViewControllerClass:{objc_opt_class(), v10, v11, v12, v13}];
  objc_destroyWeak(&v15);
}

void sub_100D43FBC(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addFeatureFlagsSettingsToSection:v6];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _addServerConfigSettingsToSection:v6];

  v5 = [v6 addNavigationRowForViewControllerClass:objc_opt_class()];
}

void sub_100D44050(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addRadarEntriesToSection:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _addStateSnapshotToSection:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _addCopyDiagnosticsToSection:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _addTapToRadarAllowAttachmentsOptionToSection:v3];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _addLoggingEntriesToSection:v3];
}

void sub_100D44114(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  [v3 setTitle:@"GeoSvc"];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100D442B0;
  v15 = &unk_10165E0A8;
  objc_copyWeak(&v16, (a1 + 40));
  v4 = [v3 addSectionWithTitle:@"GeoServices" content:&v12];
  v5 = +[GEOPlatform sharedPlatform];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    v7 = [NSString stringWithFormat:@"Route"];
    v8 = [v3 addSectionWithTitle:v7 content:&stru_101652758];

    v9 = +[GEOAddressObject libraryVersion];
    v10 = [NSString stringWithFormat:@"AddressObject Library (ver. %@)", v9, v12, v13, v14, v15];
    v11 = [v3 addSectionWithTitle:v10 content:&stru_1016527B8];
  }

  objc_destroyWeak(&v16);
}

void sub_100D442B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addGeoServicesSettingsToSection:v3];
}

void sub_100D4430C(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  v3 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Enable Debug-level logging" get:&stru_1016527D8 set:&stru_1016527F8];
  v4 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:@"Mark AddressObject Strings" get:&stru_101652818 set:&stru_101652838];
  v5 = [NSString stringWithFormat:@"For marking strings: \n- ‘<>’ - created through fromContact \n-  ‘{}’  - created through fromLegacy \n- ‘><’ - created through InternalAddressObjectFactory::create() \n-  '!!'  - created during construction or modification of a VenueInfo object \n-  ‘()’  - returned from legacy accessors (getName, getAddress) \n-  ‘[]’  - returned from formatters e.g. getFullAddress, getShortAddress, etc."];;
  [(MapsDebugTableSection *)v2 setFooter:v5];
}

void sub_100D443FC(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Enable Lane Flowlines" geoConfigKey:312, &unk_10163FBD8];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Hide Invalid Route Elevation" get:&stru_101652778 set:&stru_101652798];
}

void sub_100D444A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = [*(a1 + 32) indexPaths];
    v6 = [v5 count];

    if (v6)
    {
      v28 = v3;
      v7 = 0;
      v29 = 1;
      v8 = v4;
      do
      {
        v9 = [*(a1 + 32) indexPaths];
        v10 = [v9 objectAtIndex:v7];

        v11 = [v8 rowForIndexPath:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v3 = v28;
          goto LABEL_19;
        }

        v12 = v11;
        v13 = [*(a1 + 32) indexPaths];
        v14 = [v13 count] - 1;

        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100D4485C;
        v32[3] = &unk_101661B18;
        v15 = v12;
        v33 = v15;
        [UIView performWithoutAnimation:v32];
        if (v7 == v14)
        {
          LOBYTE(v16) = 1;
        }

        else
        {
          v17 = [v4 navigationController];
          v18 = [v17 topViewController];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v16 = v19;

          if (v16)
          {
            v16 = v16;

            [v16 loadViewIfNeeded];
            [v16 loadContentNowIfNeeded];

            LOBYTE(v16) = 1;
            v8 = v18;
          }

          else
          {
            v29 = 0;
          }
        }

        if ((v16 & 1) == 0)
        {
          break;
        }

        ++v7;
        v20 = [*(a1 + 32) indexPaths];
        v21 = [v20 count];
      }

      while (v7 < v21);
      v3 = v28;
      if (v29)
      {
        goto LABEL_20;
      }

LABEL_19:
      v22 = [v4 navigationController];
      v23 = [v22 popToRootViewControllerAnimated:0];

      v24 = [UIAlertController alertControllerWithTitle:@"Something went wrong" message:@"This shortcut is now corrupt. Do you want to delete it?" preferredStyle:1];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100D448A8;
      v30[3] = &unk_1016540D8;
      v30[4] = *(a1 + 32);
      objc_copyWeak(&v31, (a1 + 40));
      v25 = [UIAlertAction actionWithTitle:@"OK" style:2 handler:v30];
      [v24 addAction:v25];

      v26 = [UIAlertAction actionWithTitle:@"No" style:1 handler:0];
      [v24 addAction:v26];

      v27 = objc_loadWeakRetained((a1 + 40));
      [v27 _maps_topMostPresentViewController:v24 animated:1 completion:0];

      objc_destroyWeak(&v31);
    }

    else
    {
      v8 = v4;
    }

LABEL_20:
  }
}

void sub_100D4485C(uint64_t a1)
{
  v1 = [*(a1 + 32) selectionAction];
  v1[2]();
}

void sub_100D448A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MapsDebugPanelShortcutController sharedInstance];
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D44984;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, (a1 + 40));
  [v4 removeShortcut:v5 completion:v6];

  objc_destroyWeak(&v7);
}

void sub_100D44984(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100D44BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D44C00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MapsDebugPanelShortcutController sharedInstance];
  v11 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100D44D04;
  v12[3] = &unk_101661B98;
  objc_copyWeak(&v13, (a1 + 40));
  [v10 removeShortcut:v11 completion:v12];

  objc_destroyWeak(&v13);
}

void sub_100D44D04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100D44FAC(id a1, MapsDebugTableSection *a2)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v14 = sub_100D451D0;
  v15 = &unk_101652710;
  v16 = a2;
  v12 = v16;
  v2 = v13;
  v17 = 0;
  v3 = off_1016259E8;
  v4 = 24;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = [NSString stringWithCString:*(v3 - 1) encoding:4];
    v6 = [NSString stringWithCString:*v3 encoding:4];
    if ([v6 hasPrefix:@"@privateFrameworksPath"])
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 privateFrameworksPath];
      v9 = v6;
      v10 = 22;
LABEL_7:
      v11 = [v9 stringByReplacingCharactersInRange:0 withString:{v10, v8}];

      v6 = v8;
      goto LABEL_8;
    }

    if ([v6 hasPrefix:@"@builtInPlugInsPath"])
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 builtInPlugInsPath];
      v9 = v6;
      v10 = 19;
      goto LABEL_7;
    }

    if (![v6 hasPrefix:@"@GEOConfigDebug"])
    {
      goto LABEL_9;
    }

    v7 = [GEOFilePaths pathFor:39];
    v11 = [v6 stringByReplacingCharactersInRange:0 withString:{15, v7}];
LABEL_8:

    v6 = v11;
LABEL_9:
    v3 += 2;
    (v14)(v2, v5, v6, &v17);
  }

  while (v17 != 1);
}

void sub_100D451D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSBundle bundleWithIdentifier:v5];
  if (!v7)
  {
    v7 = [NSBundle bundleWithPath:v6];
  }

  v8 = objc_alloc_init(MapsDebugTableRow);
  v19 = v5;
  v9 = [v7 infoDictionary];
  v10 = [v9 objectForKeyedSubscript:@"CFBundleVersion"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v7 infoDictionary];
    v14 = [v13 objectForKeyedSubscript:@"CFBundleShortVersionString"];
    v15 = v14;
    v16 = @"???";
    if (!v7)
    {
      v16 = @"Not Found";
    }

    if (v14)
    {
      v16 = v14;
    }

    v12 = v16;
  }

  v17 = [NSString stringWithFormat:@"%@ - %@", v19, v12];

  [(MapsDebugTableRow *)v8 setTitle:v17];
  v18 = [v7 bundlePath];
  [(MapsDebugTableRow *)v8 setSubtitle:v18];

  [(MapsDebugTableRow *)v8 setConfigureBlock:&stru_1016526E8];
  [*(a1 + 32) addRow:v8];
}

void sub_100D453A0(id a1, UITableViewCell *a2, UIListContentConfiguration *a3)
{
  v3 = [(UIListContentConfiguration *)a3 secondaryTextProperties];
  [v3 setNumberOfLines:4];
}

void sub_100D453E8(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MapsDebugTableRow);
  [(MapsDebugTableRow *)v3 setTitle:@"App bundle path:"];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 bundlePath];
  [(MapsDebugTableRow *)v3 setSubtitle:v5];

  [(MapsDebugTableRow *)v3 setConfigureBlock:&stru_101652688];
  [(MapsDebugTableSection *)v2 addRow:v3];
  v8 = objc_alloc_init(MapsDebugTableRow);

  [(MapsDebugTableRow *)v8 setTitle:@"Data bundle path:"];
  v6 = [MSPMapsPaths pathsAtLocation:0];
  v7 = [v6 homeDirectory];
  [(MapsDebugTableRow *)v8 setSubtitle:v7];

  [(MapsDebugTableRow *)v8 setConfigureBlock:&stru_1016526A8];
  [(MapsDebugTableSection *)v2 addRow:v8];
}

void sub_100D45520(id a1, UITableViewCell *a2, UIListContentConfiguration *a3)
{
  v3 = [(UIListContentConfiguration *)a3 secondaryTextProperties];
  [v3 setNumberOfLines:4];
}

void sub_100D45568(id a1, UITableViewCell *a2, UIListContentConfiguration *a3)
{
  v3 = [(UIListContentConfiguration *)a3 secondaryTextProperties];
  [v3 setNumberOfLines:4];
}

void sub_100D455E8(id a1, MapsDebugValuesViewController *a2)
{
  v3 = a2;
  [(MapsDebugValuesViewController *)v3 setTitle:@"Logging"];
  v2 = [(MapsDebugValuesViewController *)v3 addSectionWithTitle:@"Log types enabled" content:&stru_101652628];
}

void sub_100D4564C(id a1, MapsDebugTableSection *a2)
{
  v22 = a2;
  v2 = sub_1007984E4();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(MapsDebugTableSection *)v22 addReadOnlyRowWithTitle:@"DEBUG" value:v4];
  v6 = sub_1007984E4();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v7)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(MapsDebugTableSection *)v22 addReadOnlyRowWithTitle:@"INFO" value:v8];
  v10 = sub_1007984E4();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [(MapsDebugTableSection *)v22 addReadOnlyRowWithTitle:@"DEFAULT" value:v12];
  v14 = sub_1007984E4();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

  if (v15)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [(MapsDebugTableSection *)v22 addReadOnlyRowWithTitle:@"ERROR" value:v16];
  v18 = sub_1007984E4();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

  if (v19)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [(MapsDebugTableSection *)v22 addReadOnlyRowWithTitle:@"FAULT" value:v20];
}

void sub_100D45960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100D45994(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D45E80;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:v3];

  objc_destroyWeak(&v4);
}

void sub_100D45A50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained presentingViewController];

  v4 = objc_loadWeakRetained((a1 + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D45B40;
  v6[3] = &unk_101661340;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [v4 dismissViewControllerAnimated:1 completion:v6];

  objc_destroyWeak(&v8);
}

void sub_100D45B40(uint64_t a1)
{
  v2 = sub_1007984E4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Collecting radar attachments from debug panel", buf, 0xCu);
  }

  v9 = +[MapsRadarController sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D45D48;
  v10[3] = &unk_1016525E8;
  v11 = *(a1 + 32);
  [v9 collectAttachmentsWithCompletion:v10];
}

void sub_100D45D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MapsDebugFileExportController alloc];
  v5 = [*(a1 + 32) topMostPresentedViewController];
  v6 = [(MapsDebugFileExportController *)v4 initWithFileAtURL:v3 presentingViewController:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D45E24;
  v8[3] = &unk_101661B18;
  v9 = v3;
  v7 = v3;
  [(MapsDebugFileExportController *)v6 startWithCompletion:v8];
}

void sub_100D45E24(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void sub_100D45E80(uint64_t a1)
{
  v2 = sub_1007984E4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR from debug panel", buf, 0xCu);
  }

  v9 = +[MapsRadarController sharedInstance];
  [v9 launchTTR];
}

void sub_100D4605C(id a1, MapsDebugValuesViewController *a2)
{
  v7 = a2;
  [(MapsDebugValuesViewController *)v7 setTitle:@"Tap-To-Radar"];
  v2 = [(MapsDebugValuesViewController *)v7 addSectionWithTitle:@"TapToRadarKit" content:&stru_1016524C0];
  v3 = [(MapsDebugValuesViewController *)v7 addSectionWithTitle:@"Feedback assistant" content:&stru_1016524E0];
  v4 = [(MapsDebugValuesViewController *)v7 addSectionWithTitle:@"Features" content:&stru_101652570];
  v5 = [(MapsDebugValuesViewController *)v7 addSectionWithTitle:@"Attachments" content:&stru_1016525A0];
  v6 = [(MapsDebugValuesViewController *)v7 addSectionWithTitle:@"Log archive type" content:&stru_1016525C0];
}

void sub_100D46178(id a1, MapsDebugTableSection *a2)
{
  v18 = a2;
  v2 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"UIViewController descriptions attachments" geoConfigKey:557, &unk_1016429B8];
  v3 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"State attachments" geoConfigKey:558, &unk_1016429F0];
  v4 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"MSg attachments" geoConfigKey:559, &unk_101642A28];
  v5 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"MSP attachments" geoConfigKey:560, &unk_101642A60];
  v6 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"NSUserDefaults attachments" geoConfigKey:561, &unk_101642A98];
  v7 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Screenshot attachment" geoConfigKey:563, &unk_101642B08];
  v8 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Debug view frames screenshot attachment" geoConfigKey:564, &unk_101642B40];
  v9 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Debug layout guides screenshot attachment" geoConfigKey:619, &unk_1016435A0];
  v10 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Inactive reasons screenshot attachment" geoConfigKey:659, &unk_101643D08];
  v11 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"VKMapView detailed description attachment" geoConfigKey:562, &unk_101642AD0];
  v12 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Window view hierarchy attachments" geoConfigKey:658, &unk_101643CD0];
  v13 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Scene state attachments" geoConfigKey:730, &unk_101644B00];
  v14 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Operation queue attachments" geoConfigKey:767, &unk_101645300];
  v15 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Card stack attachments" geoConfigKey:776, &unk_101645528];
  v16 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Platform controller attachments" geoConfigKey:786, &unk_101645720];
  v17 = [(MapsDebugTableSection *)v18 addSwitchRowWithTitle:@"Smart camera screenshot attachment" geoConfigKey:793, &unk_1016458B8];
}

void sub_100D463EC(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Floating control button" geoConfigKey:556, &unk_101642980];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Location intelligence prompt" geoConfigKey:808, &unk_101645C30];
}

void sub_100D46468(id a1, MapsDebugTableSection *a2)
{
  v10 = a2;
  v2 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Enable feedback assistant button" geoConfigKey:812, &unk_101645D10];
  v3 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Force show feedback assistant button" geoConfigKey:813, &unk_101645D48];
  v4 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Enable nav trace attachments" geoConfigKey:823, &unk_101645F40];
  v5 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Max nav traces" placeholderText:@"5" inputType:1 geoConfigKeyInteger:824, &unk_101645F78];
  v6 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Nav trace max age" placeholderText:@"60 * 60 * 24 * 2" inputType:1 geoConfigKeyDouble:825, &unk_101645FB0];
  v7 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Enable route planning trace attachments" geoConfigKey:826, &unk_101645FE8];
  v8 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Max route planning traces" placeholderText:@"5" inputType:3 geoConfigKeyInteger:824, &unk_101645F78];
  v9 = [(MapsDebugTableSection *)v10 addGEOTextFieldRowWithTitle:@"Route planning trace max age" placeholderText:@"60 * 60 * 24 * 1" inputType:3 geoConfigKeyDouble:828, &unk_101646068];
}

void sub_100D46700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D4671C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v35 = a1;
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 allVisibleMapViewsForDebugController:v4];

  v6 = objc_alloc_init(NSMutableString);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v41;
    do
    {
      v12 = 0;
      v36 = v9;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        if ([v7 count] >= 2)
        {
          v14 = v11;
          v15 = v7;
          v16 = v6;
          v17 = v6;
          v18 = v13;
          v19 = [v18 window];
          [v19 frame];
          if (v19)
          {
            v24 = NSStringFromCGRect(*&v20);
            [v17 appendFormat:@" ===== Map view %@ (#%lu, in window %p, at %@)", v18, v10, v19, v24];
          }

          else
          {
            [v17 appendFormat:@" ===== Map view %@ (#%lu, not in a window)", v18, v10];
          }

          v6 = v16;
          v7 = v15;
          v11 = v14;
          v9 = v36;
        }

        v25 = [v13 _mapLayer];
        v26 = [v25 detailedDescription];
        [v6 appendString:v26];

        ++v10;
        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v9);
  }

  v27 = NSTemporaryDirectory();
  v28 = [v27 stringByAppendingPathComponent:@"Diagnostics.txt"];
  v29 = [NSURL fileURLWithPath:v28];

  v39 = 0;
  [v6 writeToURL:v29 atomically:1 encoding:4 error:&v39];
  v30 = v39;
  if (!v30)
  {
    v31 = [MapsDebugFileExportController alloc];
    v32 = objc_loadWeakRetained((v35 + 32));
    v33 = [(MapsDebugFileExportController *)v31 initWithFileAtURL:v29 presentingViewController:v32];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100D46A90;
    v37[3] = &unk_101661B18;
    v38 = v29;
    [(MapsDebugFileExportController *)v33 startWithCompletion:v37];
  }

  v34 = +[UIPasteboard generalPasteboard];
  [v34 setString:v6];

  NSLog(@"Diagnostic String: %@", v6);
}

void sub_100D46A90(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void sub_100D46BA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100D46BC4(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v2 = [MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:&v11 debugTreeURLs:0 mapsActivityDataPath:0 error:&v10];
  v3 = v11;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 path];
    NSLog(@"Logged tile state to %@", v5);
    v6 = [NSString stringWithFormat:@"Logged Tile State to %@", v5];
  }

  else
  {
    NSLog(@"State snapshot creation failed");
    v6 = @"State snapshot creation failed with Error";
  }

  v7 = [UIAlertController alertControllerWithTitle:@"State Snapshot" message:v6 preferredStyle:1];
  v8 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&stru_101652480];
  [v7 addAction:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

void sub_100D46DA4(id a1, MapsDebugTableSection *a2)
{
  v3 = a2;
  v2 = [(MapsDebugTableSection *)v3 addNavigationRowForViewControllerClass:objc_opt_class()];
}

void sub_100D46F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D46F5C(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] addObject:v3];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100D47148;
  v17[3] = &unk_1016612C8;
  v18 = a1[5];
  v4 = [v3 addSectionWithTitle:0 content:v17];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100D47250;
  v15 = &unk_10165E0A8;
  objc_copyWeak(&v16, a1 + 7);
  v5 = [v3 addSectionWithTitle:0 content:&v12];
  [a1[6] _addAuthTokenSectionTo:{v3, v12, v13, v14, v15}];
  v6 = +[GEOPlatform sharedPlatform];
  v7 = [v6 isInternalInstall];

  if (v7)
  {
    v8 = [v3 addSectionWithTitle:@"Test auth push notifications" content:&stru_101652238];
    v9 = [v3 addSectionWithTitle:0 content:&stru_101652338];
  }

  v10 = [v3 addSectionWithTitle:@"Debug Service Flags" content:&stru_101652398];
  v11 = [v3 addSectionWithTitle:@"Show Environment on Map" content:&stru_1016523F8];
  objc_destroyWeak(&v16);
}

void sub_100D47148(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v5 = [v3 addNavigationRowWithTitle:@"Active Tile Group" viewControllerContent:&stru_101652018];
  v6 = [v3 addButtonRowWithTitle:@"Update Resource Manifest" action:&stru_101652038];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D47DB8;
  v8[3] = &unk_101658F18;
  v9 = *(a1 + 32);
  v7 = [v3 addNavigationRowWithTitle:@"Resource Filters" viewControllerContent:v8];
}

void sub_100D47250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v5 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D47964;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = [v3 addNavigationRowWithTitle:@"Test Environments" action:v10];
  v7 = [v3 addSwitchRowWithTitle:@"Environment in Settings" defaultsKey:@"ShowEnvironmentInfoInSettings"];
  v8 = [v3 addNavigationRowForViewControllerClass:objc_opt_class()];
  v9 = [v3 addNavigationRowWithTitle:@"MPTCP" viewControllerContent:&stru_101652118];
  objc_destroyWeak(&v11);
}

void sub_100D473F0(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v5 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Never" value:&off_1016E9878];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"When non-default" value:&off_1016E9890];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v5 addRowWithTitle:@"Always" value:&off_1016E98A8];
}

void sub_100D47484(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  v3 = [(MapsDebugTableSection *)v2 addTextFieldRowWithTitle:@"Dispatcher Debug Overlay" placeholderText:0 inputType:0 get:&stru_1016523B8 set:&stru_1016523D8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D475AC;
  v7[3] = &unk_101658E28;
  v8 = @"?internalmodes.enable=";
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D47628;
  v5[3] = &unk_10165EF00;
  v6 = @"?internalmodes.enable=";
  v4 = [(MapsDebugTableSection *)v2 addTextFieldRowWithTitle:@"Routing Service Internal Modes" placeholderText:&stru_1016631F0 inputType:4 get:v7 set:v5];
}

id sub_100D475AC(uint64_t a1)
{
  v2 = GEOConfigGetString();
  if ([v2 hasPrefix:*(a1 + 32)])
  {
    v3 = [v2 substringFromIndex:{objc_msgSend(*(a1 + 32), "length")}];

    v2 = v3;
  }

  return v2;
}

void sub_100D47628(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    v3 = [*(a1 + 32) stringByAppendingString:v4];
    GEOConfigSetString();
  }

  else
  {
    _GEOConfigRemoveValue();
  }
}

void sub_100D476B4(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 length])
  {
    GEOConfigSetString();
  }

  else
  {
    _GEOConfigRemoveValue();
  }
}

void sub_100D47784(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addCheckmarkRowsGroupWithContent:&stru_101652258 get:&stru_101652278 set:&stru_101652298];
  v3 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Send auth push notification" action:&stru_1016522B8];
}

void sub_100D47890(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v7 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Invalid" value:&off_1016E9908];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Unknown" value:&off_1016E9878];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Bad MAT" value:&off_1016E9890];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Bad MRT" value:&off_1016E98A8];
  v6 = [(MapsDebugCheckmarkRowsGroup *)v7 addRowWithTitle:@"Bad AC" value:&off_1016E9920];
}

void sub_100D47964(uint64_t a1)
{
  v4 = [[EnvironmentsViewController alloc] initWithStyle:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_100D479E4(id a1, MapsDebugValuesViewController *a2)
{
  v4 = a2;
  v2 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:@"Search/AC Mode" content:&stru_101652138];
  v3 = [(MapsDebugValuesViewController *)v4 addSectionWithTitle:@"Directions Mode" content:&stru_1016521B8];
}

void sub_100D47AA4(id a1, id a2)
{
  if (a2)
  {
    [a2 integerValue];

    GEOConfigSetInteger();
  }

  else
  {

    _GEOConfigRemoveValue();
  }
}

id sub_100D47B00(id a1)
{
  Integer = GEOConfigGetInteger();
  if (Integer < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSNumber numberWithInteger:Integer];
  }

  return v2;
}

void sub_100D47B58(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Default" value:0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Handover" value:&off_1016E98C0];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Interactive" value:&off_1016E98D8];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Aggregate" value:&off_1016E98F0];
}

void sub_100D47C54(id a1, id a2)
{
  if (a2)
  {
    [a2 integerValue];

    GEOConfigSetInteger();
  }

  else
  {

    _GEOConfigRemoveValue();
  }
}

id sub_100D47CB0(id a1)
{
  Integer = GEOConfigGetInteger();
  if (Integer < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSNumber numberWithInteger:Integer];
  }

  return v2;
}

void sub_100D47D08(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Default" value:0];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Handover" value:&off_1016E98C0];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Interactive" value:&off_1016E98D8];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"Aggregate" value:&off_1016E98F0];
}

void sub_100D47DB8(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) addObject:v5];
  v3 = [v5 addSectionWithTitle:@"Scales" content:&stru_101652058];
  v4 = [v5 addSectionWithTitle:@"Scenarios" content:&stru_1016520B8];
}

void sub_100D47E84(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[GEOResourceManifestManager modernManager];
  v4 = v3;
  if (v2)
  {
    [v3 activateResourceScenario:1];
  }

  else
  {
    [v3 deactivateResourceScenario:1];
  }
}

BOOL sub_100D47EE8(id a1)
{
  v1 = +[GEOResourceManifestManager modernManager];
  v2 = [v1 activeTileGroup];

  if ([v2 activeScenariosCount])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v2 activeScenarioAtIndex:v3];
      v5 = v4 == 1;
      if (v4 == 1)
      {
        break;
      }

      if (++v3 >= [v2 activeScenariosCount])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

void sub_100D47F78(id a1, MapsDebugTableSection *a2)
{
  v2 = a2;
  v3 = off_1016529B0;
  for (i = 1; i != 4; ++i)
  {
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v6 = GEOResourceFilterScaleForScale();

    v7 = *v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100D480E0;
    v12[3] = &unk_101652078;
    v14 = i == v6;
    v13 = i;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100D48188;
    v10[3] = &unk_101652098;
    v11 = i;
    v8 = [(MapsDebugTableSection *)v2 addSwitchRowWithTitle:v7 get:v12 set:v10];
    v9 = v8;
    if (i == v6)
    {
      [v8 setEnabled:0];
    }

    ++v3;
  }
}

uint64_t sub_100D480E0(uint64_t a1)
{
  if (*(a1 + 36))
  {
    return 1;
  }

  v3 = +[GEOResourceManifestManager modernManager];
  v4 = [v3 activeTileGroup];

  if ([v4 activeScalesCount])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v4 activeScaleAtIndex:v5];
      v7 = *(a1 + 32);
      v1 = v6 == v7;
      if (v6 == v7)
      {
        break;
      }

      if (++v5 >= [v4 activeScalesCount])
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v1 = 0;
  }

  return v1;
}

void sub_100D48188(uint64_t a1, int a2)
{
  v4 = +[GEOResourceManifestManager modernManager];
  v5 = *(a1 + 32);
  v6 = v4;
  if (a2)
  {
    [v4 activateResourceScale:v5];
  }

  else
  {
    [v4 deactivateResourceScale:v5];
  }
}

void sub_100D481F0(id a1)
{
  v1 = +[GEOResourceManifestManager modernManager];
  [v1 updateManifest:0];
}

void sub_100D4823C(id a1, MapsDebugValuesViewController *a2)
{
  v2 = a2;
  v3 = +[GEOResourceManifestManager modernManager];
  v4 = [v3 activeTileGroup];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D4830C;
  v7[3] = &unk_1016612C8;
  v8 = v4;
  v5 = v4;
  v6 = [(MapsDebugValuesViewController *)v2 addSectionWithTitle:0 content:v7];
}

void sub_100D4830C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addReadOnlyRowWithTitle:@"Tile Group Id" valueFormat:@"%u", objc_msgSend(*(a1 + 32), "identifier")];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D483E0;
  v6[3] = &unk_101658F18;
  v7 = *(a1 + 32);
  v5 = [v3 addNavigationRowWithTitle:@"Tile Sets" viewControllerContent:v6];
}

void sub_100D483E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 32) tileSets];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 style];
        v11 = @"RASTER_STANDARD";
        switch(v10)
        {
          case 0:
            break;
          case 1:
            v11 = @"VECTOR_STANDARD";
            break;
          case 2:
            v11 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
            break;
          case 3:
            v11 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
            break;
          case 4:
            v11 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
            break;
          case 5:
            v11 = @"RASTER_STANDARD_BACKGROUND";
            break;
          case 6:
            v11 = @"RASTER_HYBRID";
            break;
          case 7:
            v11 = @"RASTER_SATELLITE";
            break;
          case 8:
            v11 = @"RASTER_TERRAIN";
            break;
          case 11:
            v11 = @"VECTOR_BUILDINGS";
            break;
          case 12:
            v11 = @"VECTOR_TRAFFIC";
            break;
          case 13:
            v11 = @"VECTOR_POI";
            break;
          case 14:
            v11 = @"SPUTNIK_METADATA";
            break;
          case 15:
            v11 = @"SPUTNIK_C3M";
            break;
          case 16:
            v11 = @"SPUTNIK_DSM";
            break;
          case 17:
            v11 = @"SPUTNIK_DSM_GLOBAL";
            break;
          case 18:
            v11 = @"VECTOR_REALISTIC";
            break;
          case 19:
            v11 = @"VECTOR_LEGACY_REALISTIC";
            break;
          case 20:
            v11 = @"VECTOR_ROADS";
            break;
          case 21:
            v11 = @"RASTER_VEGETATION";
            break;
          case 22:
            v11 = @"VECTOR_TRAFFIC_SKELETON";
            break;
          case 23:
            v11 = @"RASTER_COASTLINE_MASK";
            break;
          case 24:
            v11 = @"RASTER_HILLSHADE";
            break;
          case 25:
            v11 = @"VECTOR_TRAFFIC_WITH_GREEN";
            break;
          case 26:
            v11 = @"VECTOR_TRAFFIC_STATIC";
            break;
          case 27:
            v11 = @"RASTER_COASTLINE_DROP_MASK";
            break;
          case 28:
            v11 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
            break;
          case 29:
            v11 = @"VECTOR_SPEED_PROFILES";
            break;
          case 30:
            v11 = @"VECTOR_VENUES";
            break;
          case 31:
            v11 = @"RASTER_DOWN_SAMPLED";
            break;
          case 32:
            v11 = @"RASTER_COLOR_BALANCED";
            break;
          case 33:
            v11 = @"RASTER_SATELLITE_NIGHT";
            break;
          case 34:
            v11 = @"SPUTNIK_VECTOR_BORDER";
            break;
          case 35:
            v11 = @"RASTER_SATELLITE_DIGITIZE";
            break;
          case 36:
            v11 = @"RASTER_HILLSHADE_PARKS";
            break;
          case 37:
            v11 = @"VECTOR_TRANSIT";
            break;
          case 38:
            v11 = @"RASTER_STANDARD_BASE";
            break;
          case 39:
            v11 = @"RASTER_STANDARD_LABELS";
            break;
          case 40:
            v11 = @"RASTER_HYBRID_ROADS";
            break;
          case 41:
            v11 = @"RASTER_HYBRID_LABELS";
            break;
          case 42:
            v11 = @"FLYOVER_C3M_MESH";
            break;
          case 43:
            v11 = @"FLYOVER_C3M_JPEG_TEXTURE";
            break;
          case 44:
            v11 = @"FLYOVER_C3M_ASTC_TEXTURE";
            break;
          case 45:
            v11 = @"RASTER_SATELLITE_ASTC";
            break;
          case 46:
            v11 = @"RASTER_HYBRID_ROADS_AND_LABELS";
            break;
          case 47:
            v11 = @"VECTOR_TRANSIT_SELECTION";
            break;
          case 48:
            v11 = @"VECTOR_COVERAGE";
            break;
          case 52:
            v11 = @"FLYOVER_METADATA";
            break;
          case 53:
            v11 = @"VECTOR_ROAD_NETWORK";
            break;
          case 54:
            v11 = @"VECTOR_LAND_COVER";
            break;
          case 55:
            v11 = @"VECTOR_DEBUG";
            break;
          case 56:
            v11 = @"VECTOR_STREET_POI";
            break;
          case 57:
            v11 = @"MUNIN_METADATA";
            break;
          case 58:
            v11 = @"VECTOR_SPR_MERCATOR";
            break;
          case 59:
            v11 = @"VECTOR_SPR_MODELS";
            break;
          case 60:
            v11 = @"VECTOR_SPR_MATERIALS";
            break;
          case 61:
            v11 = @"VECTOR_SPR_METADATA";
            break;
          case 62:
            v11 = @"VECTOR_TRACKS";
            break;
          case 63:
            v11 = @"VECTOR_RESERVED_2";
            break;
          case 64:
            v11 = @"VECTOR_STREET_LANDMARKS";
            break;
          case 65:
            v11 = @"COARSE_LOCATION_POLYGONS";
            break;
          case 66:
            v11 = @"VECTOR_SPR_ROADS";
            break;
          case 67:
            v11 = @"VECTOR_SPR_STANDARD";
            break;
          case 68:
            v11 = @"VECTOR_POI_V2";
            break;
          case 69:
            v11 = @"VECTOR_POLYGON_SELECTION";
            break;
          case 70:
            v11 = @"VL_METADATA";
            break;
          case 71:
            v11 = @"VL_DATA";
            break;
          case 72:
            v11 = @"PROACTIVE_APP_CLIP";
            break;
          case 73:
            v11 = @"VECTOR_BUILDINGS_V2";
            break;
          case 74:
            v11 = @"POI_BUSYNESS";
            break;
          case 75:
            v11 = @"POI_DP_BUSYNESS";
            break;
          case 76:
            v11 = @"SMART_INTERFACE_SELECTION";
            break;
          case 77:
            v11 = @"VECTOR_ASSETS";
            break;
          case 78:
            v11 = @"SPR_ASSET_METADATA";
            break;
          case 79:
            v11 = @"VECTOR_SPR_POLAR";
            break;
          case 80:
            v11 = @"SMART_DATA_MODE";
            break;
          case 81:
            v11 = @"CELLULAR_PERFORMANCE_SCORE";
            break;
          case 82:
            v11 = @"VECTOR_SPR_MODELS_OCCLUSION";
            break;
          case 83:
            v11 = @"VECTOR_TOPOGRAPHIC";
            break;
          case 84:
            v11 = @"VECTOR_POI_V2_UPDATE";
            break;
          case 85:
            v11 = @"VECTOR_LIVE_DATA_UPDATES";
            break;
          case 86:
            v11 = @"VECTOR_TRAFFIC_V2";
            break;
          case 87:
            v11 = @"VECTOR_ROAD_SELECTION";
            break;
          case 88:
            v11 = @"VECTOR_REGION_METADATA";
            break;
          case 89:
            v11 = @"RAY_TRACING";
            break;
          case 90:
            v11 = @"VECTOR_CONTOURS";
            break;
          case 91:
            v11 = @"RASTER_SATELLITE_POLAR";
            break;
          case 92:
            v11 = @"VMAP4_ELEVATION";
            break;
          case 93:
            v11 = @"VMAP4_ELEVATION_POLAR";
            break;
          case 94:
            v11 = @"CELLULAR_COVERAGE_PLMN";
            break;
          case 95:
            v11 = @"RASTER_SATELLITE_POLAR_NIGHT";
            break;
          case 96:
            v11 = @"BLUEPOI_MODEL";
            break;
          case 97:
            v11 = @"BLUEPOI_AOI";
            break;
          case 98:
            v11 = @"UNUSED_98";
            break;
          case 99:
            v11 = @"UNUSED_99";
            break;
          case 100:
            v11 = @"UNUSED_100";
            break;
          case 101:
            v11 = @"UNUSED_101";
            break;
          case 102:
            v11 = @"UNUSED_102";
            break;
          case 103:
            v11 = @"UNUSED_103";
            break;
          case 104:
            v11 = @"UNUSED_104";
            break;
          case 105:
            v11 = @"UNUSED_105";
            break;
          case 106:
            v11 = @"UNUSED_106";
            break;
          case 107:
            v11 = @"UNUSED_107";
            break;
          case 108:
            v11 = @"UNUSED_108";
            break;
          case 109:
            v11 = @"UNUSED_109";
            break;
          case 110:
            v11 = @"UNUSED_110";
            break;
          case 111:
            v11 = @"UNUSED_111";
            break;
          case 112:
            v11 = @"UNUSED_112";
            break;
          case 113:
            v11 = @"UNUSED_113";
            break;
          case 114:
            v11 = @"UNUSED_114";
            break;
          case 115:
            v11 = @"UNUSED_115";
            break;
          case 116:
            v11 = @"UNUSED_116";
            break;
          case 117:
            v11 = @"UNUSED_117";
            break;
          case 118:
            v11 = @"UNUSED_118";
            break;
          case 119:
            v11 = @"UNUSED_119";
            break;
          default:
            v11 = [NSString stringWithFormat:@"(unknown: %i)", v10];
            break;
        }

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100D48B18;
        v13[3] = &unk_1016612C8;
        v13[4] = v9;
        v12 = [v3 addSectionWithTitle:v11 content:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

void sub_100D48B18(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) size];
  if (v3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", v3];
  }

  else
  {
    v4 = off_101652980[v3];
  }

  v5 = [v15 addReadOnlyRowWithTitle:@"Size" value:v4];

  v6 = [*(a1 + 32) scale];
  if (v6 >= 3)
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", v6];
  }

  else
  {
    v7 = off_101652998[v6];
  }

  v8 = [v15 addReadOnlyRowWithTitle:@"Scale" value:v7];

  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%i", [*(a1 + 32) version]);
  v10 = [v15 addReadOnlyRowWithTitle:@"Version" value:v9];

  v11 = [*(a1 + 32) baseURL];
  v12 = [v15 addReadOnlyRowWithTitle:@"Base URL" subtitle:v11];

  v13 = [*(a1 + 32) localizationURL];
  v14 = [v15 addReadOnlyRowWithTitle:@"Localization URL" subtitle:v13];
}

void sub_100D48E6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100D48E8C(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] addObject:v3];
  [a1[5] addObject:v3];
  v4 = [v3 addSectionWithTitle:@"Current Environment" content:&stru_101651F88];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100D48FAC;
  v9 = &unk_101658D78;
  objc_copyWeak(&v11, a1 + 8);
  v10 = a1[6];
  v5 = [v3 addSectionWithTitle:@"Flags" content:&v6];
  [a1[7] _addAuthTokenSectionTo:{v3, v6, v7, v8, v9}];

  objc_destroyWeak(&v11);
}

void sub_100D48FAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100D49250;
  v20[3] = &unk_101661B98;
  objc_copyWeak(&v21, (a1 + 40));
  v4 = [v3 addButtonRowWithTitle:@"Get / Update Feature Flags" action:v20];
  v5 = [v3 addButtonRowWithTitle:@"Delete Feature Flags" action:&stru_101651FA8];
  [v5 setIsDestructive:1];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [*(a1 + 32) features];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        v10 = v3;
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 name];
        v14[4] = v11;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100D492F0;
        v15[3] = &unk_101651FD0;
        v15[4] = v11;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100D49314;
        v14[3] = &unk_101661738;
        v13 = [v10 addSwitchRowWithTitle:v12 get:v15 set:v14];

        v3 = v10;
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  objc_destroyWeak(&v21);
}

void sub_100D49250(uint64_t a1)
{
  v2 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 addMapsAuthDidFinishObserver:WeakRetained forRequestType:GEOMapsAuthFeatureFlags];

  v4 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  [v4 requestFeatureFlagsWithURL:0 suppressNotification:1];
}

id sub_100D49314(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return [v2 setState:v3];
}

void sub_100D49328(id a1)
{
  _GEOConfigRemoveValue();

  _GEOConfigRemoveValue();
}

void sub_100D49368(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = +[GEOResourceManifestManager modernManager];
  v3 = [v2 activeTileGroup];

  v4 = [v3 environment];
  v5 = [(MapsDebugTableSection *)v6 addReadOnlyRowWithTitle:v4 value:&stru_1016631F0];
}

void sub_100D494BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100D494D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100D496E8;
  v18[3] = &unk_101661B98;
  objc_copyWeak(&v19, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Prompt Apple Connect Auth" action:v18];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100D49790;
  v16 = &unk_101661B98;
  objc_copyWeak(&v17, (a1 + 32));
  v5 = [v3 addButtonRowWithTitle:@"Refresh Maps Auth Tokens" action:&v13];
  v6 = [v3 addButtonRowWithTitle:@"Delete Maps Auth Tokens" action:{&stru_101651F68, v13, v14, v15, v16}];
  [v6 setIsDestructive:1];

  v7 = GEOConfigGetString();
  v8 = GEOConfigGetString();
  if (v7)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  v10 = [v3 addReadOnlyRowWithTitle:@"Has MAT" value:v9];
  if (v8)
  {
    v11 = @"Yes";
  }

  else
  {
    v11 = @"No";
  }

  v12 = [v3 addReadOnlyRowWithTitle:@"Has MRT" value:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
}

void sub_100D496B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100D496E8(uint64_t a1)
{
  v2 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 addMapsAuthDidFinishObserver:WeakRetained forRequestType:GEOMapsAuthACToken];

  v4 = objc_loadWeakRetained((a1 + 32));
  [MapsAppleConnectAuthViewController presentAppleConnectAuthControllerFrom:v4 withProxyURL:0];
}

void sub_100D49790(uint64_t a1)
{
  v2 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 addMapsAuthDidFinishObserver:WeakRetained forRequestType:GEOMapsAuthMRT];

  v4 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  [v4 renewMapsAuthProxyToken:1 fromToken:0 authProxyURL:0 suppressNotification:1];
}

void sub_100D49838(id a1)
{
  v1 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  [v1 invalidateTokens];
}

void sub_100D49B70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_100D49BD4(uint64_t a1)
{
  v4 = objc_alloc_init(GeoCellDataSaverHistoryTableViewController);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_100D49C4C(uint64_t a1)
{
  v4 = [[GeoRequestCounterTableViewController alloc] initWithStyle:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_100D49CCC(uint64_t a1)
{
  v4 = [[GeoRequestResponseLogTableViewController alloc] initWithStyle:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_100D49D4C(uint64_t a1)
{
  v4 = [[MapDataSubscriptionsDebugViewController alloc] initWithStyle:2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_100D49DCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:@"Offline" content:&stru_101651DD8];
  v5 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/GeoServices.framework/MapsOfflineService.bundle"];
  v6 = [v5 infoDictionary];
  v7 = [v6 objectForKeyedSubscript:@"CFBundleVersion"];

  if (v7)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100D4A494;
    v19[3] = &unk_1016612C8;
    v20 = v7;
    v8 = [v3 addSectionWithTitle:@"Offline Services Version" content:v19];
  }

  objc_initWeak(&location, v3);
  v9 = +[GEOOfflineDataAccess sharedInstance];
  v10 = &_dispatch_main_q;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100D4A4C0;
  v16[3] = &unk_101651E00;
  v16[4] = *(a1 + 32);
  objc_copyWeak(&v17, &location);
  [v9 getOfflineVersionMetadataWithCallbackQueue:&_dispatch_main_q callback:v16];

  v11 = [v3 addSectionWithTitle:@"Offline Tips" content:&stru_101651E20];
  v12 = [v3 addSectionWithTitle:0 content:&stru_101651EA0];
  v13 = *(a1 + 32);
  if (*(v13 + 120))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100D4A570;
    v15[3] = &unk_1016612C8;
    v15[4] = v13;
    v14 = [v3 addSectionWithTitle:@"Offline Data Versions" content:v15];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void sub_100D4A054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D4A07C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSectionWithTitle:@"Eval Mode" content:&stru_101651F08];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D4A15C;
  v6[3] = &unk_10165E0A8;
  objc_copyWeak(&v7, (a1 + 32));
  v5 = [v3 addSectionWithTitle:@"Uploads" content:v6];
  objc_destroyWeak(&v7);
}

void sub_100D4A15C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addSwitchRowWithTitle:@"Keep Upload Files" geoConfigKey:{GeoAnalyticsConfig__debug_KeepUploadFiles[0], GeoAnalyticsConfig__debug_KeepUploadFiles[1]}];
  v5 = [v3 addSwitchRowWithTitle:@"Upload History Enabled" geoConfigKey:{GeoAnalyticsConfig__debug_UploadCountersEnabled[0], GeoAnalyticsConfig__debug_UploadCountersEnabled[1]}];
  v6 = [v3 addButtonRowWithTitle:@"Delete History" action:&stru_101651F28];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D4A308;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, (a1 + 32));
  v7 = [v3 addNavigationRowWithTitle:@"Inflight Uploads" action:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D4A388;
  v9[3] = &unk_101661B98;
  objc_copyWeak(&v10, (a1 + 32));
  v8 = [v3 addNavigationRowWithTitle:@"Completed Uploads" action:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void sub_100D4A2E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100D4A308(uint64_t a1)
{
  v4 = [[_TtC4Maps33GEOAPCurrentUploadDebugController alloc] initWithStyle:2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_100D4A388(uint64_t a1)
{
  v4 = [[_TtC4Maps36GEOAPHistoricalUploadDebugController alloc] initWithStyle:2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_100D4A408(id a1)
{
  v1 = +[GEOAPServiceManager sharedManager];
  [v1 flushUploadHistoryWithCompletion:&stru_101651F48];
}

void sub_100D4A4C0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if (v8 && *(*(a1 + 32) + 120) != v8 && ([v8 isEqual:?] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 120), a2);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained rebuildSections];
  }
}

void sub_100D4A570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 120);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D4A614;
  v6[3] = &unk_101651EE8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateLayerVersions:v6];
}

void sub_100D4A614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2 >= 0x1D)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", a2];
  }

  else
  {
    v5 = off_101652898[a2];
  }

  v8 = v5;
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = [v4 addReadOnlyRowWithTitle:v8 value:v6];
}

void sub_100D4A700(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"OfflineMapsAutoUpdateDisclaimerDisplayed"];
}

void sub_100D4A750(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = [(MapsDebugTableSection *)v5 addButtonRowWithTitle:@"Clear Pre-Arrival and Airport Arrival Tip Dismissal History" action:&stru_101651E40];
  v3 = [(MapsDebugTableSection *)v5 addButtonRowWithTitle:@"Simulate an Offline Maps Welcome Screen Remind Me Later tap now. (Also clears dismissal history)" action:&stru_101651E60];
  v4 = [(MapsDebugTableSection *)v5 addButtonRowWithTitle:@"Simulate an Offline Maps Welcome Screen Remind Me Later tap 15 days ago. (Also clears dismissal history)" action:&stru_101651E80];
  [(MapsDebugTableSection *)v5 setFooter:@"This will set the Remind Me Later tap date to a little more than two weeks in the past, which in practice means the Home Area tip will just show up. You will need to quit and relaunch Maps to see the tip."];
}

void sub_100D4A7F4(id a1)
{
  v4 = +[NSDate date];
  v1 = objc_alloc_init(NSDateComponents);
  [v1 setDay:-15];
  v2 = +[NSCalendar currentCalendar];
  v3 = [v2 dateByAddingComponents:v1 toDate:v4 options:0];

  GEOConfigSetDate();
  GEOConfigSetDate();
  GEOConfigSetDate();
}

void sub_100D4A8D4(id a1)
{
  v1 = +[NSDate date];
  GEOConfigSetDate();
  GEOConfigSetDate();
  GEOConfigSetDate();
}

void sub_100D4A954(id a1)
{
  GEOConfigSetDate();

  GEOConfigSetDate();
}

void sub_100D4AA04(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addNavigationRowForViewControllerClass:objc_opt_class()];
  v3 = [(MapsDebugTableSection *)v4 addButtonRowWithTitle:@"Clear PlaceData cache" action:&stru_101651DB8];
}

void sub_100D4AA7C(id a1)
{
  v1 = +[GEOPlaceCardRequester sharedRequester];
  [v1 clearCache];
}

void sub_100D4ADBC(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(@"Error sending message to mapspushd: %@", v3);
  (*(*(a1 + 32) + 16))();
}

void sub_100D4AE74(id a1)
{
  v1 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.Maps.mapspushd.geoservices" options:0];
  v2 = qword_10195F0B0;
  qword_10195F0B0 = v1;

  v3 = +[NSXPCInterface geo_MapsNotificationDaemonFromGeodInterface];
  [qword_10195F0B0 setRemoteObjectInterface:v3];

  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NSObject];
  [qword_10195F0B0 setExportedInterface:v4];

  [qword_10195F0B0 setExportedObject:objc_opt_class()];
  v5 = qword_10195F0B0;

  [v5 resume];
}

void sub_100D4B640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D4B65C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateRefinements];
}

void sub_100D4B88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D4B8A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateWaypointsList];
}

void sub_100D4C1CC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 mkMapItem];
  v7 = [v6 _maps_hasCustomStyleAttributes];

  if (v7)
  {
    v8 = [v11 mkMapItem];
    v9 = [v8 _maps_styleAttributesForMapItem];
    [v11 setStyleAttributes:v9];
  }

  v10 = sub_100C2093C(*(a1 + 32));
  (v10)[2](v10, v11, v5);
}

void sub_100D4C2A0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 mkMapItem];
  v7 = [v6 _maps_hasCustomStyleAttributes];

  if (v7)
  {
    v8 = [v11 mkMapItem];
    v9 = [v8 _maps_styleAttributesForMapItem];
    [v11 setStyleAttributes:v9];
  }

  v10 = sub_100C2093C(*(a1 + 32));
  (v10)[2](v10, v11, v5);
}

void sub_100D4C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100D4C9A0(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = v5;
LABEL_11:
      v12 = *(a1 + 32);
      v13 = [NSString stringWithFormat:@"%@: %@", v14, v6];
      [v12 addObject:v13];

      goto LABEL_12;
    }

    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v6 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v6 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
}

void sub_100D4D84C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

void sub_100D4D864(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SearchDotPlacePersonalizedItem alloc] initWithSearchDotPlace:v3];

  [(SearchDotPlacePersonalizedItem *)v4 setSource:*(a1 + 32)];
  -[SearchDotPlacePersonalizedItem setShouldBeHiddenFromMap:](v4, "setShouldBeHiddenFromMap:", [*(a1 + 32) shouldHideSearchDotPlaces]);
  [*(a1 + 40) addObject:v4];
}

void sub_100D4D8FC(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_100D4D948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D4FF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D4FF9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateArrivalOverlaysWithRoute:WeakRetained[3]];
    WeakRetained = v2;
  }
}

RoutePlanningSession *sub_100D506E0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v195 = a3;
  v194 = a4;
  if (!v7)
  {
    v136 = sub_10006D178();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v212 = "id<MapsSession>  _Nonnull RoutePlanningSessionForDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong, NSDictionary<NSString *,id> * _Nullable __strong)";
      v213 = 2080;
      v214 = "RoutePlanningSessionBuilder.m";
      v215 = 1024;
      v216 = 85;
      v217 = 2080;
      v218 = "directionItem != nil";
      _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v137 = sub_10006D178();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
      {
        v138 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v212 = v138;
        _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v8)
  {
    v139 = sub_10006D178();
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v212 = "id<MapsSession>  _Nonnull RoutePlanningSessionForDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong, NSDictionary<NSString *,id> * _Nullable __strong)";
      v213 = 2080;
      v214 = "RoutePlanningSessionBuilder.m";
      v215 = 1024;
      v216 = 86;
      v217 = 2080;
      v218 = "traits != nil";
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v140 = sub_10006D178();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        v141 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v212 = v141;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([v7 transportType] == 4)
  {
    v9 = sub_100016C50();
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v10 = +[UIApplication sharedMapsDelegate];
  v11 = [v10 chromeViewController];
  v8 = [v11 currentTraits];

LABEL_8:
  [v8 useOnlineToOfflineFailoverRequestModeIfAllowed];
  if (!v9)
  {
    v27 = v7;
    v28 = v8;
    v196 = v195;
    v29 = v194;
    if (!v7)
    {
      v151 = sub_10006D178();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v212 = "RoutePlanningSession * _Nonnull _RoutePlanningSessionFromDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong, NSDictionary<NSString *,id> * _Nullable __strong)";
        v213 = 2080;
        v214 = "RoutePlanningSessionBuilder.m";
        v215 = 1024;
        v216 = 129;
        v217 = 2080;
        v218 = "directionItem != nil";
        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v152 = sub_10006D178();
        if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
        {
          v153 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v212 = v153;
          _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if (!v28)
    {
      v154 = sub_10006D178();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v212 = "RoutePlanningSession * _Nonnull _RoutePlanningSessionFromDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong, NSDictionary<NSString *,id> * _Nullable __strong)";
        v213 = 2080;
        v214 = "RoutePlanningSessionBuilder.m";
        v215 = 1024;
        v216 = 130;
        v217 = 2080;
        v218 = "traits != nil";
        _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v155 = sub_10006D178();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
        {
          v156 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v212 = v156;
          _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if ([v27 transportType] == 4)
    {
      v157 = sub_10006D178();
      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v212 = "RoutePlanningSession * _Nonnull _RoutePlanningSessionFromDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong, NSDictionary<NSString *,id> * _Nullable __strong)";
        v213 = 2080;
        v214 = "RoutePlanningSessionBuilder.m";
        v215 = 1024;
        v216 = 131;
        v217 = 2080;
        v218 = "directionItem.transportType != TransportTypeRideshare";
        _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v158 = sub_10006D178();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          v159 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v212 = v159;
          _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if ([v27 transportType] == 4)
    {
      v26 = 0;
LABEL_175:

      goto LABEL_176;
    }

    v30 = [v27 drivePreferences];
    v31 = v30;
    v190 = v29;
    if (v30)
    {
      v186 = v30;
    }

    else
    {
      v32 = [DrivePreferences alloc];
      v33 = +[NSUserDefaults standardUserDefaults];
      v186 = [(DrivePreferences *)v32 initWithDefaults:v33];

      v29 = v190;
    }

    v34 = [v27 transitPreferences];
    v35 = v34;
    v189 = v8;
    if (v34)
    {
      v192 = v34;
    }

    else
    {
      v36 = [TransitPreferences alloc];
      v37 = +[NSUserDefaults standardUserDefaults];
      v192 = [(WatchSyncedPreferences *)v36 initWithDefaults:v37];

      v29 = v190;
    }

    v38 = [v27 timing];
    v39 = v38;
    v180 = v27;
    v187 = v28;
    if (v38)
    {
      v191 = v38;
    }

    else
    {
      v40 = [v27 startMapItem];
      v41 = [v40 timeZone];
      v42 = [v27 endMapItem];
      v43 = [v42 timeZone];
      v191 = [RoutePlanningTiming timingWithDepartureDate:0 departureTimeZone:v41 arrivalTimeZone:v43];

      v27 = v180;
      v29 = v190;
    }

    if (v29)
    {
      v44 = [RoutePlanningTiming timingWithUserInfo:v29];
      v45 = v44;
      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = v191;
      }

      v47 = v46;

      v48 = [(TransitPreferences *)v192 transitPreferencesByOverridingPropertiesWithUserInfo:v29];

      v191 = v47;
      v192 = v48;
    }

    v49 = [v27 cyclePreferences];
    v50 = v49;
    if (v49)
    {
      v185 = v49;
    }

    else
    {
      v51 = [CyclePreferences alloc];
      v52 = +[NSUserDefaults standardUserDefaults];
      v185 = [(CyclePreferences *)v51 initWithDefaults:v52];
    }

    v53 = [v27 walkPreferences];
    v54 = v53;
    v176 = v7;
    if (v53)
    {
      v184 = v53;
    }

    else
    {
      v55 = [WalkPreferences alloc];
      v56 = +[NSUserDefaults standardUserDefaults];
      v184 = [(WalkPreferences *)v55 initWithDefaults:v56];
    }

    v57 = [NSMutableArray alloc];
    v58 = [v27 items];
    v59 = [v57 initWithCapacity:{objc_msgSend(v58, "count")}];

    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v60 = [v27 items];
    v61 = [v60 countByEnumeratingWithState:&v197 objects:&v207 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v198;
      do
      {
        for (i = 0; i != v62; i = i + 1)
        {
          if (*v198 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v65 = *(*(&v197 + 1) + 8 * i);
          v66 = [v65 composedWaypoint];
          v67 = [v66 isServerProvidedWaypoint];

          if ((v67 & 1) == 0)
          {
            v68 = sub_100D520BC(v65, v196);
            [v59 addObject:v68];
          }
        }

        v62 = [v60 countByEnumeratingWithState:&v197 objects:&v207 count:16];
      }

      while (v62);
    }

    v69 = [[WalkingRequestInfoProvider alloc] initWithPreferences:v184 timing:v191];
    v70 = [[DrivingRequestInfoProvider alloc] initWithPreferences:v186 timing:v191];
    v71 = [[TransitRequestInfoProvider alloc] initWithPreferences:v192 timing:v191];
    v72 = [[CyclingRequestInfoProvider alloc] initWithPreferences:v185 timing:v191];
    v73 = [RequestTransportTypeInformation alloc];
    v205[0] = &off_1016E9A10;
    v205[1] = &off_1016E9A28;
    v174 = v71;
    v175 = v69;
    v206[0] = v69;
    v206[1] = v70;
    v178 = v70;
    v205[2] = &off_1016E9A40;
    v205[3] = &off_1016E9A58;
    v206[2] = v71;
    v206[3] = v72;
    v173 = v72;
    v74 = [NSDictionary dictionaryWithObjects:v206 forKeys:v205 count:4];
    v75 = [(RequestTransportTypeInformation *)v73 initWithDictionary:v74];

    v8 = v189;
    v27 = v180;
    v183 = v75;
    if (!v75)
    {
      v160 = sub_10006D178();
      if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v212 = "RoutePlanningSession * _Nonnull _RoutePlanningSessionFromDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong, NSDictionary<NSString *,id> * _Nullable __strong)";
        v213 = 2080;
        v214 = "RoutePlanningSessionBuilder.m";
        v215 = 1024;
        v216 = 168;
        v217 = 2080;
        v218 = "transportTypeInfos != nil";
        _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v161 = sub_10006D178();
        if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
        {
          v162 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v212 = v162;
          _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v76 = [v190 objectForKeyedSubscript:@"DirectionsIsResumedNavigationSession"];
    v77 = [v76 BOOLValue];

    v78 = [v190 objectForKeyedSubscript:@"DirectionsResumeRouteHandleStorage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [v190 objectForKeyedSubscript:@"DirectionsResumeRouteHandleStorage"];

      if (v79)
      {
        v172 = v79;
        v80 = [[GEOResumeRouteHandle alloc] initWithGEOStorageResumeRouteHandle:v79];
        goto LABEL_63;
      }
    }

    else
    {
    }

    v80 = 0;
    v172 = 0;
LABEL_63:
    v81 = [NavdRouteLoadingTaskFactory alloc];
    v82 = [v180 persistentData];
    v182 = [(NavdRouteLoadingTaskFactory *)v81 initWithTransportTypes:v183 traits:v187 isResumingMultipointRoute:v77 resumeRouteHandle:v80 persistentData:v82];

    v29 = v190;
    v83 = [v190 objectForKeyedSubscript:@"DirectionsCompanionRouteContextKey"];
    v84 = v83;
    v177 = v80;
    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = +[GEOCompanionRouteContext context];
    }

    v86 = v85;

    v87 = [RoutePlanningSessionConfiguration alloc];
    v88 = +[MKLocationManager sharedLocationManager];
    v179 = v86;
    v89 = [(RoutePlanningSessionConfiguration *)v87 initWithWaypointRequests:v59 routeLoadingTaskFactory:v182 traits:v187 companionContext:v86 locationManager:v88];

    v90 = [v190 objectForKey:@"DirectionsNavigationAutoLaunchDelayKey"];
    [(RoutePlanningSessionConfiguration *)v89 setNavigationAutoLaunchDelay:v90];

    -[RoutePlanningSessionConfiguration setIgnoreMapType:](v89, "setIgnoreMapType:", [v180 ignoreMapType]);
    -[RoutePlanningSessionConfiguration setInitialTransportType:](v89, "setInitialTransportType:", [v180 transportType]);
    v91 = [v190 objectForKeyedSubscript:@"ShortcutIdentifier"];
    [(RoutePlanningSessionConfiguration *)v89 setShortcutIdentifier:v91];

    v92 = [v190 objectForKeyedSubscript:@"DirectionsRestoreCamera"];
    -[RoutePlanningSessionConfiguration setShouldRestoreCamera:](v89, "setShouldRestoreCamera:", [v92 BOOLValue]);

    v93 = [v190 objectForKey:@"DirectionsShouldRestoreLowGuidance"];
    -[RoutePlanningSessionConfiguration setShouldRestoreToLowGuidance:](v89, "setShouldRestoreToLowGuidance:", [v93 BOOLValue]);

    v94 = [v190 objectForKeyedSubscript:@"DirectionsRouteUUIDKey"];
    [(RoutePlanningSessionConfiguration *)v89 setOriginalHistoryEntryIdentifier:v94];

    v95 = [v190 objectForKeyedSubscript:@"DirectionsStartShortestRouteKey"];
    -[RoutePlanningSessionConfiguration setShouldStartShortestRoute:](v89, "setShouldStartShortestRoute:", [v95 BOOLValue]);

    v96 = [v190 objectForKeyedSubscript:@"DirectionsStartFastestRouteKey"];
    -[RoutePlanningSessionConfiguration setShouldStartFastestRoute:](v89, "setShouldStartFastestRoute:", [v96 BOOLValue]);

    v97 = [v190 objectForKeyedSubscript:@"DirectionsRoutePlanningSessionSourceKey"];
    v181 = v89;
    -[RoutePlanningSessionConfiguration setSource:](v89, "setSource:", [v97 integerValue]);

    v98 = [v190 objectForKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];
    if ([v98 count])
    {
      v99 = sub_100798A3C();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        v171 = v59;
        v100 = [v98 count];
        v101 = v98;
        v102 = v101;
        if (v101)
        {
          if ([v101 count])
          {
            v168 = v100;
            v169 = v99;
            v170 = v98;
            v103 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
            v104 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v102 count]);
            v105 = v102;
            v106 = v104;
            v201 = 0u;
            v202 = 0u;
            v203 = 0u;
            v204 = 0u;
            v167 = v105;
            v107 = v105;
            v108 = [v107 countByEnumeratingWithState:&v201 objects:buf count:16];
            if (!v108)
            {
              goto LABEL_87;
            }

            v109 = v108;
            v110 = *v202;
            v193 = v106;
            while (1)
            {
              v111 = 0;
              do
              {
                if (*v202 != v110)
                {
                  objc_enumerationMutation(v107);
                }

                v112 = *(*(&v201 + 1) + 8 * v111);
                if (v112)
                {
                  v113 = objc_opt_class();
                  v114 = NSStringFromClass(v113);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_80;
                  }

                  v115 = v103;
                  v116 = [v112 performSelector:"accessibilityIdentifier"];
                  v117 = v116;
                  if (v116 && ![v116 isEqualToString:v114])
                  {
                    v119 = v107;
                    v120 = v115;
                    v118 = [v115[459] stringWithFormat:@"%@<%p, %@>", v114, v112, v117];

                    v103 = v120;
                    v107 = v119;
                    v106 = v193;
                  }

                  else
                  {

                    v103 = v115;
LABEL_80:
                    v118 = [v103[459] stringWithFormat:@"%@<%p>", v114, v112];
                  }

                  goto LABEL_83;
                }

                v118 = @"<nil>";
LABEL_83:

                [v106 addObject:v118];
                v111 = v111 + 1;
              }

              while (v109 != v111);
              v121 = [v107 countByEnumeratingWithState:&v201 objects:buf count:16];
              v109 = v121;
              if (!v121)
              {
LABEL_87:

                v122 = [v107 componentsJoinedByString:{@", "}];
                v123 = v103;
                v124 = v122;
                v125 = [v123[459] stringWithFormat:@"<%p> [%@]", v107, v122];

                v8 = v189;
                v29 = v190;
                v27 = v180;
                v99 = v169;
                v98 = v170;
                v102 = v167;
                v100 = v168;
                goto LABEL_90;
              }
            }
          }

          v125 = [NSString stringWithFormat:@"<%p> (empty)", v102];
        }

        else
        {
          v125 = @"<nil>";
        }

LABEL_90:

        *buf = 134218243;
        v212 = v100;
        v213 = 2113;
        v214 = v125;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "DirectionItem has %lu autosharing contacts: %{private}@", buf, 0x16u);

        v59 = v171;
      }

      [(RoutePlanningSessionConfiguration *)v181 setAutomaticSharingContacts:v98];
    }

    v126 = v98;
    v127 = [v29 objectForKey:@"DirectionsSourceKey"];

    if (v127)
    {
      v128 = [v29 objectForKey:@"DirectionsSourceKey"];
      v129 = [v128 integerValue];

      v130 = 5;
      v28 = v187;
      if (v129 <= 3)
      {
        v131 = v177;
        v132 = v179;
        if (v129 >= 2)
        {
          if (v129 == 3)
          {
            v133 = 7;
          }

          else
          {
            v133 = 5;
          }

          goto LABEL_174;
        }

LABEL_167:
        v163 = sub_10006D178();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v212 = "RoutePlanningSession * _Nonnull _RoutePlanningSessionFromDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong, NSDictionary<NSString *,id> * _Nullable __strong)";
          v213 = 2080;
          v214 = "RoutePlanningSessionBuilder.m";
          v215 = 1024;
          v216 = 211;
          v217 = 2080;
          v218 = "initiator != MapsSessionInitiatorUnknown";
          _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v164 = sub_10006D178();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
          {
            v165 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v212 = v165;
            _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

            v131 = v177;
          }
        }

        v133 = 0;
        goto LABEL_174;
      }

      v131 = v177;
      if (v129 != 4)
      {
        if (v129 == 6)
        {
          v130 = 8;
        }

        if (v129 == 5)
        {
          v133 = 4;
        }

        else
        {
          v133 = v130;
        }

        goto LABEL_111;
      }
    }

    else
    {
      v134 = [v29 objectForKey:@"DirectionsSessionInitiatorKey"];

      v28 = v187;
      v131 = v177;
      v132 = v179;
      if (!v134)
      {
        goto LABEL_167;
      }

      v135 = [v29 objectForKey:@"DirectionsSessionInitiatorKey"];
      v133 = [v135 unsignedIntegerValue];

      v131 = v177;
      if (v133 != 6)
      {
        if (v133 != 3)
        {
          v132 = v179;
          if (!v133)
          {
            goto LABEL_167;
          }

LABEL_174:
          v26 = [[RoutePlanningSession alloc] initWithInitiator:v133 configuration:v181];

          v7 = v176;
          goto LABEL_175;
        }

        [(RoutePlanningSessionConfiguration *)v181 setInitialRoutesBeingFetchedExternally:GEOConfigGetBOOL() ^ 1];
LABEL_111:
        v132 = v179;
        goto LABEL_174;
      }
    }

    if ([(RoutePlanningSessionConfiguration *)v181 shouldAutoLaunchNavigation])
    {
      [(DrivingRequestInfoProvider *)v178 setMaximumRouteCountOverride:&off_1016E9A70];
    }

    v133 = 6;
    goto LABEL_111;
  }

  v12 = v7;
  v13 = v8;
  v14 = v195;
  if (!v7)
  {
    v142 = sub_10006D178();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v212 = "RideBookingPlanningSession * _Nonnull _RideBookingPlanningSessionFromDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong)";
      v213 = 2080;
      v214 = "RoutePlanningSessionBuilder.m";
      v215 = 1024;
      v216 = 111;
      v217 = 2080;
      v218 = "directionItem != nil";
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v143 = sub_10006D178();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        v144 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v212 = v144;
        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([v12 transportType] != 4)
  {
    v145 = sub_10006D178();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v212 = "RideBookingPlanningSession * _Nonnull _RideBookingPlanningSessionFromDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong)";
      v213 = 2080;
      v214 = "RoutePlanningSessionBuilder.m";
      v215 = 1024;
      v216 = 112;
      v217 = 2080;
      v218 = "directionItem.transportType == TransportTypeRideshare";
      _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v146 = sub_10006D178();
      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
      {
        v147 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v212 = v147;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v13)
  {
    v148 = sub_10006D178();
    if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v212 = "RideBookingPlanningSession * _Nonnull _RideBookingPlanningSessionFromDirectionItem(DirectionItem * _Nonnull __strong, GEOMapServiceTraits * _Nonnull __strong, NSDictionary<id<WaypointRequest>,GEOComposedWaypoint *> * _Nullable __strong)";
      v213 = 2080;
      v214 = "RoutePlanningSessionBuilder.m";
      v215 = 1024;
      v216 = 113;
      v217 = 2080;
      v218 = "traits != nil";
      _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v149 = sub_10006D178();
      if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
      {
        v150 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v212 = v150;
        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([v12 transportType] == 4)
  {
    v188 = v8;
    v15 = [NSMutableArray alloc];
    v16 = [v12 items];
    v17 = [v15 initWithCapacity:{objc_msgSend(v16, "count")}];

    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v18 = [v12 items];
    v19 = [v18 countByEnumeratingWithState:&v207 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v208;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v208 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = sub_100D520BC(*(*(&v207 + 1) + 8 * j), v14);
          [v17 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v207 objects:buf count:16];
      }

      while (v20);
    }

    v24 = [RideBookingPlanningSession alloc];
    v25 = [v17 copy];
    v26 = [(RideBookingPlanningSession *)v24 initWithInitiator:1 waypointRequests:v25 traits:v13];

    v8 = v188;
  }

  else
  {
    v26 = 0;
  }

LABEL_176:

  return v26;
}

id sub_100D520BC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_10080E66C(v3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100D52224;
  v16 = sub_100D52234;
  v17 = 0;
  if (GEOConfigGetBOOL())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100D5223C;
    v9[3] = &unk_101652A40;
    v10 = v5;
    v11 = &v12;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v6 = v13[5];
  if (!v6)
  {
    v6 = v5;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_100D5220C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D52224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D5223C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) waypointRequest];
  v7 = [v15 isEquivalentToOtherRequest:v6];

  if (v7)
  {
    if ([v15 hasCachedResult])
    {
      v8 = v15;
    }

    else
    {
      v8 = [[GEOComposedWaypointRequest alloc] initWithComposedWaypoint:v5];
    }

    v9 = v8;
    v10 = [RoutePlanningWaypointRequest alloc];
    v11 = [*(a1 + 32) waypointPlaceholder];
    v12 = -[RoutePlanningWaypointRequest initWithWaypointPlaceholder:request:preferredNameSource:](v10, "initWithWaypointPlaceholder:request:preferredNameSource:", v11, v9, [*(a1 + 32) preferredNameSource]);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

RoutePlanningWaypointRequest *sub_100D52350(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32) - 1;
    v8 = [v5 waypointName];
    v9 = v8;
    v10 = @"Waypoint";
    if (v8)
    {
      v10 = v8;
    }

    v11 = @"Destination";
    if (v8)
    {
      v11 = v8;
    }

    if (v7 == a3)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v13 = [v5 waypointName];
    v9 = v13;
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v12 = @"Origin";
    }
  }

  v14 = v6;
  v15 = v12;
  v16 = [[WaypointPlaceholder alloc] initWithName:v15 displayableMarker:0];

  v17 = [[RoutePlanningWaypointRequest alloc] initWithWaypointPlaceholder:v16 request:v14 preferredNameSource:1];

  return v17;
}

void sub_100D53CC8(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_10195F0C0;
  qword_10195F0C0 = v1;
}

void sub_100D5440C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v3 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:v1];
    [v3 setAllowsDeferral:0];
    v2 = [UIFocusSystem focusSystemForEnvironment:v1];

    [v2 _requestFocusUpdate:v3];
  }
}

void sub_100D55918(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "MigratePreCrystalFavoritesDuration", "", &v13, 2u);
  }

  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (v3)
  {
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v9, "MigratePreCrystalFavoritesError", "", &v13, 2u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Favorites migration failed: %@", &v13, 0xCu);
    }
  }

  else if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v9, "MigratePreCrystalFavoritesSuccess", "", &v13, 2u);
  }

  v10 = *(a1 + 32);
  v11 = v10;
  v12 = *(*(*(a1 + 48) + 8) + 24);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v12, "MigratePreCrystalFavoritesFinished", "", &v13, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100D56F18(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 2uLL;
  }

  dispatch_group_leave(*(a1 + 32));
}

id *sub_100D56F38(id *result)
{
  if ((result[6] & 4) == 0)
  {
    v1 = result;
    result = GEOConfigGetBOOL();
    if (result)
    {
      result = [v1[4] _removeOrphanedRAPWebBundles];
      if (result)
      {
        *(*(v1[5] + 1) + 24) |= 4uLL;
      }
    }
  }

  return result;
}

void sub_100D56F98(uint64_t a1)
{
  v2 = +[NSUserDefaults __maps_groupUserDefaults];
  [v2 setInteger:*(*(*(a1 + 32) + 8) + 24) forKey:@"LegacyDataMigratorVersionCompletionStatus"];
}

void sub_100D5831C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    v12 = v7;
    v9 = [v7 length];
    v8 = v12;
    if (v9)
    {
      v10 = [AutocompleteMatchInfo matchInfoWithType:a4];
      v11 = [[AutocompleteStringMatcher alloc] initWithString:v12 requiredMatchLength:a3 matchInfo:v10];
      [*(a1 + 32) addObject:v11];

      v8 = v12;
    }
  }
}

void sub_100D58D20(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100D58F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D58FB0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && a2)
  {
    v5 = WeakRetained;
    [*(a1 + 32) setVisited:1];
    [v5[6] setObject:*(a1 + 32) forKey:*(a1 + 40)];
    WeakRetained = v5;
  }
}

void sub_100D59358(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100D59614(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

uint64_t sub_100D59728(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D5A300(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];
  v1 = [v2 superview];
  [v1 layoutIfNeeded];
}

void sub_100D5A35C(uint64_t a1)
{
  [*(a1 + 32) _updateContent];
  [*(a1 + 32) invalidateIntrinsicContentSize];
  v3 = [*(a1 + 32) superview];
  v2 = [v3 superview];
  [v2 layoutIfNeeded];
}

void sub_100D5A3CC(uint64_t a1)
{
  v2 = sub_100090D58();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] _animateContentUpdate completed", buf, 0xCu);
  }
}

void sub_100D5A634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D5A650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExpanded:0];
}

void sub_100D5BBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100D5CD80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[RAPPhoto alloc] initWithPhoto:*(a1 + 40) date:v5 location:v6];

  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;

  *(*(a1 + 32) + 32) = 0;
  [*(a1 + 32) _invokeChangeHandlers];
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100D5CE80;
  v13[3] = &unk_101661B18;
  v13[4] = v10;
  return [v11 dismissViewControllerAnimated:1 completion:v13];
}

void sub_100D5CFC4(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

uint64_t sub_100D5E058(void *a1)
{
  v1 = a1;
  if ([v1 hasRecommended])
  {
    if ([v1 hasRecommended])
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100D5F18C(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:NSFontAttributeName];
  v4 = [v3 copy];

  return v4;
}

void sub_100D60594(uint64_t a1)
{
  [*(a1 + 32) _compassViewAlpha];
  [*(*(a1 + 32) + 8) setAlpha:?];
  [*(a1 + 32) _removeCompassView];
  v3 = [*(a1 + 32) view];
  v2 = [v3 superview];
  [v2 layoutIfNeeded];
}

void sub_100D60730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D60754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animateOutCompassIfNeeded];
}

void sub_100D6090C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    [v2 _scheduleTimerToDismissCompass];
  }

  else
  {
    v3 = v2[11];
    v2[11] = 0;
  }
}

void sub_100D60934(uint64_t a1)
{
  [*(a1 + 32) _compassViewAlpha];
  [*(*(a1 + 32) + 8) setAlpha:?];
  [*(a1 + 32) _insertCompassView];
  v3 = [*(a1 + 32) view];
  v2 = [v3 superview];
  [v2 layoutIfNeeded];
}

id sub_100D61CD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setImage:*(a1 + 40)];
    v3 = [*(a1 + 48) imageConfiguration];
    [*(a1 + 32) setPreferredSymbolConfigurationForImage:v3];

    [*(*(a1 + 48) + 16) setConfiguration:*(a1 + 32)];
  }

  else
  {
    [*(*(a1 + 48) + 16) setImage:*(a1 + 40) forState:0];
    v4 = *(a1 + 48);
    v5 = v4[2];
    v6 = [v4 imageConfiguration];
    [v5 setPreferredSymbolConfiguration:v6 forImageInState:0];
  }

  v7 = *(*(a1 + 48) + 16);

  return [v7 layoutBelowIfNeeded];
}

id sub_100D629D8(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setFrame:{*(*(a1 + 32) + 120), *(*(a1 + 32) + 112), 60.0, 60.0}];
  v2 = *(*(a1 + 32) + 8);

  return [v2 layoutIfNeeded];
}

id sub_100D63044(uint64_t a1)
{
  [*(a1 + 32) _compassViewAlpha];
  v2 = *(*(a1 + 32) + 8);

  return [v2 setAlpha:?];
}

id sub_100D634E8(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 isLuminanceReduced];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [*(*(a1 + 32) + 192) setOverrideUserInterfaceStyle:v4];
  v5 = *(a1 + 32);

  return [v5 _updateContent];
}

void sub_100D64988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D649C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pressedTTR];
}

void sub_100D64DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D64E28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContent];
}

void sub_100D64F10(id a1, MapsDebugTableSection *a2)
{
  v10 = a2;
  v2 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Enable New Design" geoConfigKey:MapKitConfig_NewPuckEnabled[0], MapKitConfig_NewPuckEnabled[1]];
  LODWORD(v3) = 1117782016;
  LODWORD(v4) = 11.0;
  v5 = [(MapsDebugTableSection *)v10 addSliderRowWithTitle:@"Min Accuracy Radius" subtitleStringFormat:@"%.1f points" min:&stru_101652C98 max:&stru_101652CB8 get:v4 set:v3];
  LODWORD(v6) = 1112014848;
  LODWORD(v7) = 10.0;
  v8 = [(MapsDebugTableSection *)v10 addSliderRowWithTitle:@"Min Accuracy Uncertainty" subtitleStringFormat:@"%.1f meters" min:&stru_101652CD8 max:&stru_101652CF8 get:v7 set:v6];
  v9 = [(MapsDebugTableSection *)v10 addSwitchRowWithTitle:@"Disable Location Pulse" defaultsKey:@"DisableLocationPulse"];
}

void sub_100D65B7C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 - 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_101652DD8 + v2 - 1);
  }

  v4 = [*(a1 + 32) traitCollection];
  if ([v4 userInterfaceIdiom] == 5)
  {
    v5 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
  }

  else
  {
    if (v2 == 5)
    {
      v6 = 6;
    }

    else
    {
      v6 = 4;
    }

    v5 = [UIImageSymbolConfiguration configurationWithPointSize:v6 weight:18.0];
  }

  v7 = v5;
  v19 = [UIImage systemImageNamed:v3 withConfiguration:v5];

  v8 = *(a1 + 40);
  if ((v8 - 1) > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(&off_101652DD8 + v8 - 1);
  }

  v10 = [*(a1 + 32) traitCollection];
  if ([v10 userInterfaceIdiom] == 5)
  {
    v11 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
  }

  else
  {
    if (v8 == 5)
    {
      v12 = 6;
    }

    else
    {
      v12 = 4;
    }

    v11 = [UIImageSymbolConfiguration configurationWithPointSize:v12 weight:40.0];
  }

  v13 = v11;
  v14 = [UIImage systemImageNamed:v9 withConfiguration:v11];

  v15 = *(a1 + 40);
  if (v15 == 5 || v15 == 2)
  {
    v16 = [v19 imageFlippedForRightToLeftLayoutDirection];

    v17 = [v14 imageFlippedForRightToLeftLayoutDirection];

    v18 = v16;
    v14 = v17;
  }

  else
  {
    v18 = v19;
  }

  v20 = v18;
  [*(*(a1 + 32) + 24) setImage:v18];
  [*(a1 + 32) setLargeContentImage:v14];
}

id sub_100D66B48(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  if ((v3 - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_101652DD8 + v3 - 1);
  }

  v5 = [*(a1 + 32) traitCollection];
  if ([v5 userInterfaceIdiom] == 5)
  {
    v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
  }

  else
  {
    if (v3 == 5)
    {
      v7 = 6;
    }

    else
    {
      v7 = 4;
    }

    v6 = [UIImageSymbolConfiguration configurationWithPointSize:v7 weight:18.0];
  }

  v8 = v6;
  v9 = [UIImage systemImageNamed:v4 withConfiguration:v6];

  v10 = [v9 imageWithRenderingMode:2];
  v11 = v10;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      [v10 setAccessibilityIdentifier:@"DriveButton"];
      v12 = +[NSBundle mainBundle];
      v13 = v12;
      v14 = @"Drive [Transport Type Picker, Accessibility]";
      goto LABEL_21;
    }

    if (v3 == 2)
    {
      [v10 setAccessibilityIdentifier:@"WalkButton"];
      v12 = +[NSBundle mainBundle];
      v13 = v12;
      v14 = @"Walk [Transport Type Picker, Accessibility]";
      goto LABEL_21;
    }
  }

  else
  {
    switch(v3)
    {
      case 3:
        [v10 setAccessibilityIdentifier:@"TransitButton"];
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        v14 = @"Transit [Transport Type Picker, Accessibility]";
        goto LABEL_21;
      case 4:
        [v10 setAccessibilityIdentifier:@"RideshareButton"];
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        v14 = @"Ride [Transport Type Picker, Accessibility]";
        goto LABEL_21;
      case 5:
        [v10 setAccessibilityIdentifier:@"CyclingButton"];
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        v14 = @"Cycle [Transport Type Picker, Accessibility]";
LABEL_21:
        v15 = [v12 localizedStringForKey:v14 value:@"localized string not found" table:0];

        goto LABEL_22;
    }
  }

  [v10 setAccessibilityIdentifier:0];
  v15 = 0;
LABEL_22:
  [v11 setAccessibilityLabel:v15];

  return v11;
}

void sub_100D66DD8(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = [[TransportTypeSegment alloc] initWithTransportType:v3];
  [(TransportTypeSegment *)v4 setSelected:v3 == *(*(a1 + 32) + 40)];
  [(TransportTypeSegment *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TransportTypeSegment *)v4 addTarget:*(a1 + 32) action:"_didSelectSegment:" forControlEvents:64];
  [*(*(a1 + 32) + 48) addObject:v4];
}

void sub_100D6775C(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_101652E20];
  v2 = qword_10195F0E0;
  qword_10195F0E0 = v1;
}

void sub_100D677BC(id a1, SmallButtonOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
{
  v8 = a2;
  v5 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a4 viewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(SmallButtonOutlineCell *)v8 setCellModel:v7];
}

void sub_100D687BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D687E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animationToIndex:*(a1 + 40) + 1];
}

void sub_100D68A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D68A78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = WeakRetained;
    obj = WeakRetained[12];
    v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"latitude"];
          [v11 doubleValue];
          v13 = v12;

          v14 = [v10 objectForKeyedSubscript:@"longitude"];
          [v14 doubleValue];
          v16 = v15;

          v17 = [v10 objectForKeyedSubscript:@"heading"];
          [v17 doubleValue];
          v19 = v18;

          v20 = [v10 objectForKeyedSubscript:@"pitch"];
          [v20 doubleValue];
          v22 = v21;

          v23 = [v10 objectForKeyedSubscript:@"zoom"];
          [v23 doubleValue];
          v25 = v24;

          v26 = [NSString stringWithFormat:@"%0.4f %0.4f Z:%0.2f P:%0.2f H:%0.2f", v13, v16, v25, v22, v19];
          v27 = [v3 addReadOnlyRowWithTitle:v26 value:&stru_1016631F0];
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v7);
    }

    v5 = v29;
    v28 = [NSString stringWithFormat:@"Path: %@", v29[13]];
    [v3 setFooter:v28];
  }
}

void sub_100D68D08(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100D68FBC;
  v17[3] = &unk_101661B98;
  objc_copyWeak(&v18, (a1 + 32));
  v4 = [v3 addButtonRowWithTitle:@"Clear All Locations" action:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100D690EC;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, (a1 + 32));
  v5 = [v3 addButtonRowWithTitle:@"Add Current Framing" action:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100D6921C;
  v13[3] = &unk_101661B98;
  objc_copyWeak(&v14, (a1 + 32));
  v6 = [v3 addButtonRowWithTitle:@"Share key frame File" action:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D69304;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, (a1 + 32));
  v7 = [v3 addButtonRowWithTitle:@"Copy key frame file path" action:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D6937C;
  v9[3] = &unk_101661B98;
  objc_copyWeak(&v10, (a1 + 32));
  v8 = [v3 addButtonRowWithTitle:@"Play Animation" action:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
}

void sub_100D68F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100D68FBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Do you want to clear list" preferredStyle:1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100D69654;
    v5[3] = &unk_10165F220;
    v5[4] = WeakRetained;
    v3 = [UIAlertAction actionWithTitle:@"Yes" style:0 handler:v5];
    v4 = [UIAlertAction actionWithTitle:@"Cancel" style:0 handler:&stru_101652E40];
    [v2 addAction:v3];
    [v2 addAction:v4];
    [WeakRetained presentViewController:v2 animated:1 completion:0];
  }
}

void sub_100D690EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Do you want to add yoru current map view to list?" preferredStyle:1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100D69430;
    v5[3] = &unk_10165F220;
    v5[4] = WeakRetained;
    v3 = [UIAlertAction actionWithTitle:@"Yes" style:0 handler:v5];
    v4 = [UIAlertAction actionWithTitle:@"Cancel" style:0 handler:&stru_101652E60];
    [v2 addAction:v3];
    [v2 addAction:v4];
    [WeakRetained presentViewController:v2 animated:1 completion:0];
  }
}

void sub_100D6921C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [NSURL fileURLWithPath:WeakRetained[13]];
    v3 = [[MapsDebugFileExportController alloc] initWithFileAtURL:v2 presentingViewController:WeakRetained];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100D693D4;
    v5[3] = &unk_101661B18;
    v6 = v2;
    v4 = v2;
    [(MapsDebugFileExportController *)v3 startWithCompletion:v5];
  }
}

void sub_100D69304(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[UIPasteboard generalPasteboard];
    [v2 setString:v3[13]];

    WeakRetained = v3;
  }
}

void sub_100D6937C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _animationToIndex:0];
    [v2 dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

void sub_100D693D4(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void sub_100D69430(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 allVisibleMapViewsForDebugController:*(a1 + 32)];
  v4 = [v3 firstObject];

  v5 = [v4 camera];
  v14[0] = @"latitude";
  [v5 centerCoordinate];
  v6 = [NSNumber numberWithDouble:?];
  v15[0] = v6;
  v14[1] = @"longitude";
  [v5 centerCoordinate];
  v8 = [NSNumber numberWithDouble:v7];
  v15[1] = v8;
  v14[2] = @"heading";
  [v5 heading];
  v9 = [NSNumber numberWithDouble:?];
  v15[2] = v9;
  v14[3] = @"pitch";
  [v5 pitch];
  v10 = [NSNumber numberWithDouble:?];
  v15[3] = v10;
  v14[4] = @"zoom";
  [v5 centerCoordinateDistance];
  v11 = [NSNumber numberWithDouble:?];
  v15[4] = v11;
  v14[5] = @"animationDuration";
  v12 = [NSNumber numberWithDouble:10.0];
  v15[5] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:6];

  [*(*(a1 + 32) + 96) addObject:v13];
  [*(a1 + 32) saveFileAndReload];
}

id sub_100D69654(uint64_t a1)
{
  [*(*(a1 + 32) + 96) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 saveFileAndReload];
}

void sub_100D69F44(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = 0.0;
  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48) - 1 <= a3)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = -78.0;
    }
  }

  v14 = v5;
  v7 = [v5 fixedWidthConstraint];

  if (!v7)
  {
    v8 = [v14 widthAnchor];
    v9 = [*(a1 + 32) widthAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 multiplier:1.0];
    [v14 setFixedWidthConstraint:v10];
  }

  v11 = [v14 fixedWidthConstraint];
  [v11 setConstant:v6];

  v12 = *(a1 + 40);
  v13 = [v14 fixedWidthConstraint];
  [v12 addObject:v13];
}

void sub_100D6A620(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  [v9 setForceVerticalAxis:*(a1 + 48)];
  [v9 setUseAlternativeInstruction:a3 == 0];
  [v9 setSeparatorHidden:*(a1 + 40) == a3];
  if (*(a1 + 40) == a3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    WeakRetained = objc_loadWeakRetained((v5 + 80));
    if (*(*(a1 + 32) + 88))
    {
      v8 = *(*(a1 + 32) + 88);
    }

    else
    {
      v8 = 0;
    }

    [v9 setButtonTitle:v6 target:WeakRetained action:v8];
  }

  else
  {
    [v9 setButtonTitle:0 target:0 action:0];
  }
}

id sub_100D6A738(id a1, TransitDirectionsBoardingInfoView *a2, unint64_t a3)
{
  v3 = [(TransitDirectionsBoardingInfoView *)a2 resolvedLayout];
  if (v3)
  {
    v3 = [NSNumber numberWithUnsignedInteger:v3];
  }

  return v3;
}

void sub_100D6B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 40;
  if (!a3)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);
  v7 = [NSAttributedString _mapkit_attributedStringForComposedString:a2 defaultAttributes:v6];
  [*(a1 + 48) addObject:v7];
}

id sub_100D6E0B8()
{
  if (qword_10195F0F8 != -1)
  {
    dispatch_once(&qword_10195F0F8, &stru_101652FA8);
  }

  v1 = qword_10195F0F0;

  return v1;
}

void sub_100D6E10C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavSignLaneGuidanceView");
  v2 = qword_10195F0F0;
  qword_10195F0F0 = v1;
}

void sub_100D6EEC8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 40) > a3 || *(a1 + 48) < a3;
  [v5 setHidden:v7];
  [v6 setDrawingScale:*(a1 + 56)];
  [v6 setVerticalOffset:*(a1 + 64)];
  if ([*(a1 + 32) shouldTransformWithVerticalScale])
  {
    [*(a1 + 32) verticalScale];
    if (v6)
    {
      [v6 _maps_transformScaledToTopAtScale:?];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    v8 = *&CGAffineTransformIdentity.c;
    v10 = *&CGAffineTransformIdentity.a;
    v11 = v8;
    v12 = *&CGAffineTransformIdentity.tx;
  }

  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  [v6 setTransform:v9];
}

void sub_100D70580(id a1, RAPDirectionInstructionsIncorrectQuestion *a2, RAPReportComposerDirectionInstructionsIncorrectViewController *a3)
{
  v6 = a3;
  v4 = [(RAPDirectionInstructionsIncorrectQuestion *)a2 isComplete];
  v5 = [(RAPReportViewController *)v6 sendButtonItem];
  [v5 setEnabled:v4];

  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)v6 _reloadTableViews];
}

void sub_100D710DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D71104(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D7112C(id a1, NSError *a2)
{
  v2 = sub_10006D178();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "[RoutePlanningAnalyticsTask routePlanningSession:didUpdateRouteCollectionResult:forTransportType:]_block_invoke_2";
    v7 = 2080;
    v8 = "RoutePlanningAnalyticsTask.m";
    v9 = 1024;
    v10 = 87;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v5, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = +[NSThread callStackSymbols];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@", &v5, 0xCu);
    }
  }
}

void sub_100D716BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 title];
    v7 = [NSString _navigation_stringForServerFormattedString:v6];
    [v5 addObject:v7];
  }

  v8 = [v3 messageStrings];

  if (v8)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v3 messageStrings];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [NSString _navigation_stringForServerFormattedString:*(*(&v18 + 1) + 8 * v14)];
          [v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = *(a1 + 32);
    v17 = [v9 componentsJoinedByString:@"\n"];
    [v16 addObject:v17];
  }
}

void sub_100D71FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D72000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D72018(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v13;
  if (isKindOfClass)
  {
    v6 = v13;
    v7 = [v6 image];
    [v7 size];
    v9 = v8;
    v10 = [*(*(*(a1 + 32) + 8) + 40) image];
    [v10 size];
    v12 = v11;

    if (v9 > v12)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    }

    v5 = v13;
  }
}

void sub_100D73874(uint64_t a1)
{
  [*(a1 + 32) _updateConstraints];
  [*(a1 + 32) setNeedsLayout];
  v2 = [*(a1 + 32) containerLayoutDelegate];
  [v2 layoutNavContainer];
}

void sub_100D743A8(uint64_t a1)
{
  v2 = sub_10000B11C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] _transitionToFullscreenViewController prep block %@ for context %@", buf, 0x20u);
  }

  if (*(a1 + 40))
  {
    [*(a1 + 56) addChildViewController:?];
    [*(a1 + 72) bounds];
    [*(a1 + 64) setFrame:?];
    [*(a1 + 64) setTranslatesAutoresizingMaskIntoConstraints:1];
    [*(a1 + 64) setAutoresizingMask:18];
    [*(a1 + 64) setNeedsLayout];
    [*(a1 + 64) layoutIfNeeded];
  }

  [*(a1 + 80) willMoveToParentViewController:0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v26) = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100D7470C;
  v16[3] = &unk_101653080;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v24 = buf;
  v16[4] = v11;
  v17 = v12;
  v18 = *(a1 + 48);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 80);
  v23 = *(a1 + 112);
  v13 = objc_retainBlock(v16);
  v14 = [*(a1 + 96) _transitionCoordinator];
  v15 = [v14 animateAlongsideTransition:0 completion:v13];

  if ((v15 & 1) == 0)
  {
    (v13[2])(v13, 0);
  }

  [*(a1 + 104) animateTransition:*(a1 + 96)];

  _Block_object_dispose(buf, 8);
}

void sub_100D7470C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 96) + 8) + 24);
  v5 = sub_10000B11C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4 == 1)
  {
    if (!v6)
    {
LABEL_20:

      goto LABEL_26;
    }

    v7 = *(a1 + 32);
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_19;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_19:
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    *buf = 138543874;
    v28 = v12;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] _transitionToFullscreenViewController animate alongside completion early exit %@ %@", buf, 0x20u);

    goto LABEL_20;
  }

  if (v6)
  {
    v13 = *(a1 + 32);
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_22;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_17;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_17:

LABEL_22:
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    *buf = 138543874;
    v28 = v18;
    v29 = 2112;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] _transitionToFullscreenViewController animate alongside completion %@ %@", buf, 0x20u);
  }

  *(*(*(a1 + 96) + 8) + 24) = 1;
  [*(a1 + 56) setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v23) = 1148846080;
  v24 = [*(a1 + 56) _maps_constraintsEqualToEdgesOfView:*(a1 + 64) priority:v23];
  v25 = [v24 allConstraints];
  [NSLayoutConstraint activateConstraints:v25];

  [*(a1 + 72) removeFromSuperview];
  [*(a1 + 80) removeFromParentViewController];
  [*(a1 + 40) didMoveToParentViewController:*(a1 + 32)];
  v26 = *(a1 + 88);
  if (v3)
  {
    (*(v26 + 16))(v26, [v3 isCancelled] ^ 1);
  }

  else
  {
    (*(v26 + 16))(v26, 1);
  }

LABEL_26:
}

void sub_100D74E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100D74E94(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 toggles];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = [v10 isSelected];
  v12 = [v8 isSelected];

  if (v11 != v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_100D75270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100D75288(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 elements];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = [v10 isSelected];
  v12 = [v8 isSelected];

  if (v11 != v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_100D7697C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _tappedAddToUserCollection:*(a1 + 32)];
}

void sub_100D76AD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_initWeak(&location, v1);
  v3 = [v1 menuForAddButton];

  v4 = objc_loadWeakRetained(&location);
  v5 = [v4 addToLibraryOrUserCollectionsButton];
  if (v3)
  {
    [v5 setMenu:v3];
  }

  else
  {
    [v5 setEnabled:0];
  }

  objc_destroyWeak(&location);
}

void sub_100D77EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D77F1C(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained model];
    [v5 isEqual:v6];

    v7 = [v4 poiIconImageView];
    [v7 setImage:?];
  }
}

void sub_100D78158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D7817C(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (!v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained model];
    v11 = *(a1 + 32);

    if (v10 == v11)
    {
      if (a4)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 0.300000012;
      }

      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = [v13 itemImageView];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100D782EC;
      v15[3] = &unk_101661340;
      objc_copyWeak(&v17, (a1 + 40));
      v16 = v7;
      [UIView transitionWithView:v14 duration:5242882 options:v15 animations:0 completion:v12];

      objc_destroyWeak(&v17);
    }
  }
}

void sub_100D782EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained itemImageView];
  [v2 setImage:v1];
}

void sub_100D79348(uint64_t a1)
{
  v1 = [*(a1 + 32) venueFloorViewController];
  [v1 setOpen:0 animated:1];
}

void sub_100D79B6C(uint64_t a1)
{
  v1 = [*(a1 + 32) venueFloorViewController];
  [v1 setOpen:0 animated:1];
}

void sub_100D79E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D79E58(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v13 = v5;
    v7 = [v5 count];
    v6 = v13;
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      if (WeakRetained)
      {
        v9 = [v13 firstObject];
        if (*(a1 + 48) == 1)
        {
          v10 = [WeakRetained delegate];
          v11 = [v10 mapCameraControllerForVenuesManager:WeakRetained];

          [v11 frameMapItem:v9 animated:1 completion:0];
        }

        v12 = [WeakRetained delegate];
        [v12 venuesManager:WeakRetained presentPlaceCardForMapItem:v9 addToHistory:*(a1 + 49) presentationActionSource:*(a1 + 40)];
      }

      v6 = v13;
    }
  }
}

BOOL sub_100D7AD78(id a1, VenueAreaIdentifier *a2)
{
  v2 = [(VenueAreaIdentifier *)a2 floorOrdinal];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_100D7AE1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [NSNumber numberWithShort:v2];
  v5 = [v3 floorOrdinal];

  v6 = [NSNumber number:v4 isEqualToNumber:v5];
  return v6;
}

void sub_100D7C658(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CRSUIDashboardWidgetWindowMapsExtras");
  v2 = qword_10195F100;
  qword_10195F100 = v1;
}

void sub_100D7E8EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedVehicle];
  v5 = v3[18];
  v3[18] = v4;
}

void sub_100D7ECDC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 currentRoute];
  v4 = [v3 isEVRoute];

  if (v4)
  {
    if ((([*(a1 + 32) alertType] - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
    {
      v5 = [*(a1 + 32) alternateRoute];

      if (v5)
      {
        v6[89] = 1;
      }
    }
  }
}

void sub_100D7EEC0(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = objc_alloc_init(GEOModality);
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  [v3 setNotMoving:(*(a1 + 32) & 1) == 0];
  v4 = *(v15 + 26);
  if (v4)
  {
    v5 = [v4 transportType];
    v6 = 0;
    if (v5 <= 2)
    {
      if (!v5)
      {
        v7 = 16;
LABEL_12:
        v6 = (*(a1 + 32) & v7) != 0;
        goto LABEL_13;
      }

      if (v5 != 1)
      {
        if (v5 != 2)
        {
          goto LABEL_14;
        }

        v7 = 6;
        goto LABEL_12;
      }
    }

    else if ((v5 - 4) >= 3)
    {
      if (v5 != 3)
      {
        goto LABEL_14;
      }

      v7 = 8;
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:
  [v3 setExpectedModality:v6];
LABEL_14:
  if (*(a1 + 40) <= 2uLL)
  {
    [v3 setConfidence:?];
  }

  v8 = [*(v15 + 9) lastObject];
  if (!v8 || (v9 = [v3 confidence], v9 != objc_msgSend(v8, "confidence")) || (v10 = objc_msgSend(v3, "expectedModality"), v10 != objc_msgSend(v8, "expectedModality")) || (v11 = objc_msgSend(v3, "notMoving"), v11 != objc_msgSend(v8, "notMoving")))
  {
    v12 = *(v15 + 9);
    if (!v12)
    {
      v13 = +[NSMutableArray array];
      v14 = *(v15 + 9);
      *(v15 + 9) = v13;

      v12 = *(v15 + 9);
    }

    [v12 addObject:v3];
  }
}

void sub_100D7F3E4(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 uniqueID];
  v11 = [v4 objectForKey:v7];

  v8 = [*(a1 + 32) copy];
  v9 = a2[3];

  v10 = [v8 uniqueID];
  [v9 setObject:v8 forKeyedSubscript:v10];

  if (v11)
  {
    [v8 setSelectedPrimaryStringIndex:{objc_msgSend(v11, "selectedPrimaryStringIndex")}];
    [v8 setSelectedSecondaryStringIndex:{objc_msgSend(v11, "selectedSecondaryStringIndex")}];
    [v11 maneuverTime];
    [v8 setManeuverTime:?];
  }
}

void sub_100D7F57C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 copy];
  v4 = v3[3];

  v5 = [v6 uniqueID];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

void sub_100D7F69C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3[6] && (v3[5] & 1) == 0)
  {
    v4 = v3;
    [v3[6] setLightGuidance:{objc_msgSend(*(a1 + 32), "state") == 5}];
    v3 = v4;
  }

  if (*(a1 + 40) <= 0.0)
  {
    if ((v3[5] & 1) == 0)
    {
      *(v3 + 40) = 1;
      v5 = v3;
      [v3 _didStartManeuver];
      v3 = v5;
    }
  }

  else
  {
    *(v3 + 40) = 0;
  }
}

void sub_100D7F7FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 currentRoute];

  if (v4 == v5)
  {
    objc_storeStrong(v6 + 7, *(a1 + 40));
  }
}

void sub_100D7F9EC(uint64_t a1, void *a2)
{
  v34 = a2;
  [v34 _completeCurrentStepFeedback:0];
  v3 = [*(a1 + 32) currentResponse];
  v4 = [v3 directionsResponseID];

  if (v4 && ([v4 isEqualToData:v34[1]] & 1) == 0)
  {
    [v34 _flushModalitiesFeedback];
    objc_storeStrong(v34 + 1, v4);
    v5 = [v34 feedbackCollector];
    [v5 setupFeedbackSessionWithResponseID:v34[1]];
  }

  v6 = [*(a1 + 40) steps];
  v7 = [v6 firstObject];

  [v34 _openNewStepFeedbackWithRoute:*(a1 + 40) step:v7];
  [v34 setPrevStep:v7];
  if ([v34[8] containsObject:*(a1 + 40)])
  {
    v8 = [*(a1 + 32) alternateRoutes];
    v9 = [v34 currentRoute];
    v10 = [v8 containsObject:v9];

    v11 = objc_alloc_init(GEOTrafficRerouteFeedback);
    [v11 setRerouteType:1];
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 5;
    }

    [v11 setActionType:v12];
    v13 = [*(a1 + 40) serverRouteID];
    [v11 setReroutedRouteID:v13];

    [v11 setBackgrounded:*(a1 + 48)];
    v14 = [*(a1 + 32) etaRouteForRoute:*(a1 + 40)];
    v15 = v14;
    if (v14)
    {
      [v14 travelDuration];
      [v11 setReroutedRouteTravelTime:v16];
      [v15 historicTravelDuration];
      v18 = v17;
    }

    else
    {
      [v11 setReroutedRouteTravelTime:{objc_msgSend(*(a1 + 40), "expectedTime")}];
      v18 = [*(a1 + 40) historicTravelTime];
    }

    [v11 setReroutedRouteHistoricTravelTime:v18];
    v19 = v34[7];
    if (v19)
    {
      v20 = [v19 routes];
      v21 = [v20 firstObject];

      v22 = [v21 routeID];
      [v11 setOldRouteID:v22];

      [v21 expectedTime];
      [v11 setOldRouteTravelTime:v23];
      [v11 setOldRouteHistoricTravelTime:{objc_msgSend(v21, "historicTravelTime")}];
      v24 = [v21 incidentsOnETARoutes];
      [v11 setOldRouteIncidents:v24];

      v25 = [v34[7] responseId];
      [v11 setResponseId:v25];
    }

    if (v10)
    {
      v26 = [v34 previousAlert];

      if (v26)
      {
        v27 = [v34 previousAlert];
        v28 = [v27 bannerID];
        v29 = [v28 copy];
        [v11 setDisplayedBannerId:v29];

        v30 = [v34 previousAlert];
        [v30 distanceToDestination];
        [v11 setDistanceToDestination:?];

        [v34 setPreviousAlert:0];
      }
    }

    v31 = [v34 feedbackCollector];
    [v31 addTrafficRerouteFeedback:v11];
  }

  [v34 setCurrentRoute:*(a1 + 40)];
  v32 = [*(a1 + 32) alternateRoutes];
  v33 = v34[8];
  v34[8] = v32;
}

void sub_100D7FDBC(id a1, NavigationFeedbackCollector *a2)
{
  v2 = [(NavigationFeedbackCollector *)a2 feedbackCollector];
  [v2 setHasEnteredPreArrivalMode:1];
}

void sub_100D7FEC8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) route];
  v4 = [v3 isLegIndexOfLastLeg:*(a1 + 48)];

  if ((v4 & 1) != 0 || ([*(a1 + 40) chargingInfo], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    [v9 setDidArrive:1];
    [v9 _completeCurrentStepFeedback:1];
    v6 = [v9 lastLocation];

    if (v6)
    {
      v7 = [v9 feedbackCollector];
      v8 = [v9 lastLocation];
      [v7 setFinalLocation:v8 asArrival:1];
    }
  }

  else
  {
    [v9 _captureArrivalAtWaypoint:*(a1 + 40)];
  }
}

void sub_100D80198(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 _navigationModeTypeForState:v2];
  v5 = [v3 feedbackCollector];

  [v5 changeNavigationType:v4];
}

void sub_100D80208(id a1, NavigationFeedbackCollector *a2)
{
  v4 = a2;
  if ([(GEOComposedRoute *)v4->_currentRoute isEVRoute])
  {
    v2 = [(NavigationEVBadTripFeedbackCollector *)v4->_badTripCollector isBadTrip];
    v3 = [(NavigationFeedbackCollector *)v4 feedbackCollector];
    [v3 setIsBadEvExperience:v2];

    [(NavigationEVBadTripFeedbackCollector *)v4->_badTripCollector stopRecording];
  }
}

void sub_100D8059C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GEOLocation alloc];
  v5 = [*(a1 + 32) rawLocation];
  v6 = [v4 initWithCLLocation:v5];

  [v3 _setLastLocation:v6];
  if (([v3 didArrive] & 1) == 0)
  {
    v7 = [*(a1 + 32) routeMatch];
    v8 = [v7 isGoodMatch];

    if (v8)
    {
      v9 = [*(a1 + 32) stepIndex];
      v10 = [*(a1 + 32) routeMatch];
      v11 = [v10 route];

      if (!v11)
      {
        goto LABEL_21;
      }

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_21;
      }

      v12 = [v11 steps];
      v13 = [v12 count];

      if (v9 >= v13)
      {
        goto LABEL_21;
      }

      v14 = [v11 stepAtIndex:v9];
      v15 = [v11 uniqueRouteID];
      v16 = [*(*(a1 + 40) + 208) uniqueRouteID];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
        v18 = [v3 prevStep];

        if (v18)
        {
          v19 = [v3 prevStep];
          v20 = [v19 stepID];
          v21 = [v14 stepID];

          if (v20 == v21)
          {
LABEL_20:

LABEL_21:
            goto LABEL_22;
          }

          v22 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v3[28] stepID];
            v29 = 67109376;
            *v30 = v23;
            *&v30[4] = 1024;
            *&v30[6] = [v14 stepID];
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "New step: %u => %u", &v29, 0xEu);
          }

          v24 = 1;
LABEL_19:
          [v3 _completeCurrentStepFeedback:v24];
          [v3 _openNewStepFeedbackWithRoute:v11 step:v14];
          objc_storeStrong(v3 + 28, v14);
          goto LABEL_20;
        }

        v28 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 134217984;
          *v30 = [v14 stepID];
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "New start step: %lu", &v29, 0xCu);
        }
      }

      else
      {
        v25 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v3[26] uniqueRouteID];
          v27 = [v11 uniqueRouteID];
          v29 = 138412546;
          *v30 = v26;
          *&v30[8] = 2112;
          v31 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "New route outside of reroute: %@ => %@", &v29, 0x16u);
        }

        [v3 setCurrentRoute:v11];
      }

      v24 = 0;
      goto LABEL_19;
    }
  }

LABEL_22:
}

void sub_100D809C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3[26] isEVRoute])
  {
    [v3 _updateFeedbackCollectorWithEVData];
    [v3 _captureSessionlessEVRouteMessageIfNeeded];
  }

  if (v3[6])
  {
    [v3 _completeCurrentStepFeedback:0];
  }

  [v3 _flushModalitiesFeedback];
  v4 = [v3 lastLocation];

  if (v4)
  {
    v5 = [v3 feedbackCollector];
    v6 = [v3 lastLocation];
    [v5 setFinalLocation:v6 asArrival:{objc_msgSend(v3, "didArrive")}];

    v7 = [v3 feedbackCollector];
    v8 = [v7 parkingDetectionLocation];

    if (!v8)
    {
      v9 = [v3 lastLocation];
      v10 = [v3 feedbackCollector];
      [v10 setParkingDetectionLocation:v9];
    }
  }

  v11 = [v3 feedbackCollector];
  v12 = [v11 userDidAcceptWalkingRoute];

  v13 = [v3 feedbackCollector];
  v14 = v13;
  if (v12)
  {
    v15 = 3;
  }

  else
  {
    v16 = [v13 userDidLaunchFindMy];

    if (v16)
    {
      v13 = [v3 feedbackCollector];
      v14 = v13;
      v15 = 4;
    }

    else if (v3[22])
    {
      v13 = [v3 feedbackCollector];
      v14 = v13;
      v15 = 2;
    }

    else
    {
      v17 = *(a1 + 32);
      v13 = [v3 feedbackCollector];
      v14 = v13;
      v15 = v17;
    }
  }

  [v13 setEndReason:v15];

  v18 = +[PedestrianARSessionUsageTracker sharedInstance];
  v19 = [v3[26] uniqueRouteID];
  v20 = [v19 UUIDString];
  v21 = [v18 hasUserEnteredARForRoute:v20 entryPoint:1];

  if (v21)
  {
    v22 = [v3 feedbackCollector];
    [v22 setARWalkingUsedInNavigation:1];
  }

  v23 = [v3 audioFeedbackCollector];
  [v23 endSession];

  [v3 setAudioFeedbackCollector:0];
  v24 = [v3 audioFeedbackCollector];
  v25 = [v24 audioFeedback];

  v26 = [v3 feedbackCollector];
  [v26 setAudioFeedback:v25];

  [v3 _addGuidance];
  [v3 _addArrival];
  if ([v3 _shouldSendFeedback])
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v3 feedbackCollector];
      v31 = 138477827;
      v32 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Ending feedback session: %{private}@", &v31, 0xCu);
    }

    v29 = [v3 feedbackCollector];
    [v29 endFeedbackSessionWithTracePath:v3[2]];
  }

  else
  {
    v29 = [v3 feedbackCollector];
    [v29 reset];
  }

  v30 = +[GEOUserSession sharedInstance];
  [v30 endNavigationSession];
}

void sub_100D80DE0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 reset];
  v4 = +[MNNavigationService sharedService];
  v5 = [v4 navigationTransportType];
  if (v5 == 4)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "At the start of navigation there wasn't a transport type.", v24, 2u);
    }

    v5 = [v4 desiredTransportType];
  }

  v7 = [v3 feedbackCollector];
  [v7 setTransportType:v5];

  v8 = [v4 route];
  if (v8)
  {
    v9 = [v4 currentResponse];
    v10 = [v9 directionsResponseID];
    v11 = v3[1];
    v3[1] = v10;

    [v3 setCurrentRoute:v8];
    if ([v8 isEVRoute])
    {
      [v3 _captureInitialEVRouteState];
    }

    v12 = [v3 _navigationModeTypeForState:*(a1 + 32)];
    v13 = [v3 feedbackCollector];
    [v13 startFeedbackSessionForResponseID:v3[1] withNavigationType:v12];

    v14 = [v8 steps];
    v15 = [v14 firstObject];
    v16 = v3[28];
    v3[28] = v15;

    [v3 _openNewStepFeedbackWithRoute:v8 step:v3[28]];
    v17 = [v3 feedbackCollector];
    [v17 setOriginalExpectedTime:{objc_msgSend(v8, "expectedTime")}];
  }

  [v3 _runAsyncBlockOnMainQueue:&stru_101653610];
  v18 = [v4 currentRequest];
  v19 = [v4 currentResponse];
  v20 = +[GEOUserSession sharedInstance];
  v21 = [v19 hasDirectionsResponseID];
  if (v21)
  {
    v22 = [v19 directionsResponseID];
  }

  else
  {
    v22 = 0;
  }

  if ([v18 hasOriginalDirectionsResponseID])
  {
    v23 = [v18 originalDirectionsResponseID];
    [v20 startNavigationSessionWithDirectionsID:v22 originalDirectionsID:v23];

    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  [v20 startNavigationSessionWithDirectionsID:v22 originalDirectionsID:0];
  if (v21)
  {
LABEL_16:
  }

LABEL_17:
}

void sub_100D81098(id a1, NavigationFeedbackCollector *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(NavigationAudioFeedbackCollector);
  [(NavigationFeedbackCollector *)v2 setAudioFeedbackCollector:v3];

  v4 = [(NavigationFeedbackCollector *)v2 audioFeedbackCollector];

  [v4 startSession];
}

void sub_100D811E0(uint64_t a1)
{
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(*(a1 + 32) + 152);
  v43 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  v1 = 0;
  v2 = 0;
  if (v43)
  {
    v42 = *v45;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v44 + 1) + 8 * i);
        v5 = [v4 error];
        v6 = [v5 _geo_directionsErrorInfo];

        v7 = [v4 error];
        v8 = [v7 _geo_etaTrafficUpdateErrorInfo];

        if (([v6 shouldPromptForRadar] & 1) != 0 || objc_msgSend(v8, "shouldPromptForRadar"))
        {
          if (v2)
          {
            if (v1)
            {
LABEL_10:
              v9 = @"Directions";
              if (!v6)
              {
                v9 = @"ETAU";
              }

              v10 = v9;
              v11 = [v4 date];
              v12 = v1;
              v13 = [v1 stringFromDate:v11];
              v14 = [NSMutableString stringWithFormat:@"• %@ (%@)", v13, v10];

              if (v6)
              {
                [v6 internalServerErrors];
              }

              else
              {
                [v8 internalErrors];
              }
              v15 = ;
              v16 = [v15 componentsJoinedByString:@"\n   "];
              [v14 appendFormat:@"\n   %@", v16];

              [v2 addObject:v14];
              v1 = v12;
              goto LABEL_18;
            }
          }

          else
          {
            v2 = +[NSMutableArray array];
            if (v1)
            {
              goto LABEL_10;
            }
          }

          v1 = objc_opt_new();
          [v1 setDateFormat:@"YYYY-MM-dd HH:mm:ssZ"];
          goto LABEL_10;
        }

LABEL_18:
      }

      v43 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v43);
  }

  if ([v2 count])
  {
    v17 = v1;
    if (GEOConfigGetBOOL())
    {
      v18 = objc_opt_new();
      [v18 setTitle:@"Routing service errors detected"];
      v19 = [v2 componentsJoinedByString:@"\n\n"];
      v20 = [NSString stringWithFormat:@"%@\n", v19];
      [v18 addNote:v20];

      [v18 setClassification:7];
      [v18 setReproducibility:5];
      v21 = +[MapsRadarComponent mapsNavFrameworkComponent];
      [v18 setComponent:v21];

      v22 = sub_100035E6C();
      v23 = a1;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:

        v36 = +[MapsRadarController sharedInstance];
        [v36 launchTTRWithRadar:v18 promptTitle:@"routing service errors were detected during navigation" fromViewController:0];

        goto LABEL_43;
      }

      v24 = *(a1 + 32);
      if (!v24)
      {
        v29 = @"<nil>";
        goto LABEL_39;
      }

      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      if (objc_opt_respondsToSelector())
      {
        v27 = [v24 performSelector:"accessibilityIdentifier"];
        v28 = v27;
        if (v27 && ![v27 isEqualToString:v26])
        {
          v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

          goto LABEL_29;
        }
      }

      v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_29:

LABEL_39:
      *buf = 138543362;
      v49 = v29;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR for Routing service errors.", buf, 0xCu);

      goto LABEL_40;
    }

    v18 = sub_100035E6C();
    v23 = a1;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_43:

      v38 = *(v23 + 32);
      v39 = *(v38 + 152);
      *(v38 + 152) = 0;

      v1 = v17;
      goto LABEL_44;
    }

    v30 = *(a1 + 32);
    if (!v30)
    {
      v35 = @"<nil>";
      goto LABEL_42;
    }

    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    if (objc_opt_respondsToSelector())
    {
      v33 = [v30 performSelector:"accessibilityIdentifier"];
      v34 = v33;
      if (v33 && ![v33 isEqualToString:v32])
      {
        v35 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];

        goto LABEL_37;
      }
    }

    v35 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
LABEL_37:

LABEL_42:
    v37 = [v2 componentsJoinedByString:@"\n\n"];
    *buf = 138543618;
    v49 = v35;
    v50 = 2112;
    v51 = v37;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Routing service errors were detected, but not asking for Radar. Errors:\n\n%@\n", buf, 0x16u);

    goto LABEL_43;
  }

LABEL_44:
}

int64_t sub_100D81EC4(id a1, MNGuidanceEventFeedback *a2, MNGuidanceEventFeedback *a3)
{
  v4 = a2;
  v5 = a3;
  [(MNGuidanceEventFeedback *)v4 startTime];
  v7 = v6;
  [(MNGuidanceEventFeedback *)v5 startTime];
  if (v7 >= v8)
  {
    [(MNGuidanceEventFeedback *)v4 startTime];
    v11 = v10;
    [(MNGuidanceEventFeedback *)v5 startTime];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void sub_100D8234C(id a1)
{
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
  v1 = [v3 dataContainerURL];
  v2 = qword_10195F120;
  qword_10195F120 = v1;
}

void sub_100D82A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(a1 + 48));
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "NavigationFeedbackCollector was deallocated in %@ before executing feedback collection block.", &v5, 0xCu);
    }
  }
}

void sub_100D82CB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = NSStringFromSelector(*(a1 + 48));
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "NavigationFeedbackCollector was deallocated in %@ before executing feedback collection block.", &v5, 0xCu);
    }
  }
}

void sub_100D82EBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentRoute];
  v5 = [v4 isEVRoute];

  if (v5)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [v3 currentRoute];
    v7 = [v6 chargingStationInfos];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100D830E4;
    v14 = &unk_101653588;
    v15 = *(a1 + 32);
    v16 = &v17;
    [v7 enumerateObjectsUsingBlock:&v11];

    v8 = v18[3];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 >= [v3[12] count])
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 32) shortDescription];
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "_captureArrivalAtWaypoint: %@, couldn't find correct charging step", buf, 0xCu);
      }
    }

    else
    {
      v9 = [v3[12] objectAtIndexedSubscript:v18[3]];
      [v9 setArrivedAtChargeLocation:1];
    }

    _Block_object_dispose(&v17, 8);
  }
}

void sub_100D830BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100D830E4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [*(a1 + 32) chargingInfo];
  if (v7 == v11)
  {

    goto LABEL_5;
  }

  v8 = [v11 muid];
  v9 = [*(a1 + 32) chargingInfo];
  v10 = [v9 muid];

  if (v8 == v10)
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_100D831BC(id a1, NavigationFeedbackCollector *a2)
{
  v9 = a2;
  v2 = [(NavigationFeedbackCollector *)v9 currentRoute];
  v3 = [v2 chargingStationInfos];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(NavigationFeedbackCollector *)v9 currentRoute];
    v6 = [v5 chargingStationInfos];
    v7 = sub_100021DB0(v6, &stru_101653560);
    chargingSteps = v9->_chargingSteps;
    v9->_chargingSteps = v7;
  }
}

GEOChargeLocationDetails *__cdecl sub_100D83274(id a1, GEOComposedRouteStep *a2, unint64_t a3)
{
  v3 = objc_alloc_init(GEOChargeLocationDetails);

  return v3;
}

GEOWaypointInfo *__cdecl sub_100D83544(id a1, GEOComposedRouteLeg *a2, unint64_t a3)
{
  v3 = a2;
  v4 = objc_alloc_init(GEOWaypointInfo);
  v5 = [(GEOComposedRouteLeg *)v3 destination];
  v6 = [v5 latLng];
  [v4 setPosition:v6];

  v7 = [(GEOComposedRouteLeg *)v3 chargingStationInfo];

  if (v7)
  {
    [v4 setMuid:{objc_msgSend(v7, "muid")}];
    v8 = [v7 name];
    [v4 setName:v8];

    v9 = objc_alloc_init(GEOEVChargingInfo);
    [v7 batteryChargeAfterCharging];
    [v9 setBatteryChargeAfterCharging:v10];
    [v7 batteryPercentageAfterCharging];
    [v9 setBatteryPercentageAfterCharging:v11];
    [v7 chargingTime];
    [v9 setChargingTime:v12];
    [v4 setEvChargingInfo:v9];
  }

  return v4;
}

void sub_100D83680(id a1, NavigationFeedbackCollector *a2)
{
  v2 = a2;
  v3 = [(NavigationFeedbackCollector *)v2 currentRoute];
  v4 = [v3 isEVRoute];

  if (v4)
  {
    [(NavigationEVBadTripFeedbackCollector *)v2->_badTripCollector startRecording];
    v5 = [(NavigationFeedbackCollector *)v2 _stateOfChargeOfCurrentVehicle];
    initialStateOfCharge = v2->_initialStateOfCharge;
    v2->_initialStateOfCharge = v5;

    v7 = [(NavigationFeedbackCollector *)v2 currentRoute];
    v8 = [v7 steps];
    v9 = [v8 lastObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 evInfo];

    if (v12)
    {
      v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 remainingBatteryCharge]);
      expectedFinalStateOfCharge = v2->_expectedFinalStateOfCharge;
      v2->_expectedFinalStateOfCharge = v13;
    }

    else
    {
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "_saveExpectedFinalStateOfChargeIfNeeded: EV route didn't have a step info in the last step.", v16, 2u);
      }
    }
  }
}

BOOL sub_100D839E0(id a1, GEOComposedWaypoint *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(GEOComposedWaypoint *)a2 chargingInfo];

  if (v5)
  {
    *a4 = 1;
  }

  return v5 != 0;
}

void sub_100D83AC4(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) currentRoute];
  v4 = [v3 waypoints];
  v5 = [v4 count];
  v6 = [*(a1 + 40) waypoints];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v11 = objc_opt_new();
    v9 = v11;
    if (*(a1 + 48))
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    [v11 setDodgeballAction:v12];
    [v13[14] addObject:v9];
  }

  else
  {
    v8 = objc_opt_new();
    v9 = v8;
    if (*(a1 + 48))
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [v8 setStopAddedAction:v10];
    [v13[13] addObject:v9];
    if (*(a1 + 48) == 1)
    {
      [v13[27] setChargingStopAdded:1];
    }
  }
}

void sub_100D83C00(id a1, NavigationFeedbackCollector *a2)
{
  a2->_batteryDied = 1;
  v2 = [(NavigationFeedbackCollector *)a2 feedbackCollector];
  [v2 setBatteryDied:1];
}

void sub_100D83C5C(id a1, NavigationFeedbackCollector *a2)
{
  v2 = a2;
  [(GEOStepFeedback *)v2->_stepFeedback setRoutePaused:1];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2->_chargingSteps;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v11 + 1) + 8 * v8);
        if (![v10 arrivedAtChargeLocation])
        {
          v6 = v9;
          goto LABEL_12;
        }

        v6 = v10;

        v8 = v8 + 1;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_12:

  [v6 setRoutePaused:1];
}

void sub_100D83F18(id a1, NavigationFeedbackCollector *a2)
{
  v2 = [(NavigationFeedbackCollector *)a2 feedbackCollector];
  [v2 setUserDidLaunchFindMy:1];
}

void sub_100D83F6C(id a1, NavigationFeedbackCollector *a2)
{
  v2 = [(NavigationFeedbackCollector *)a2 feedbackCollector];
  [v2 setDidSuggestFindMy:1];
}

void sub_100D83FC0(id a1, NavigationFeedbackCollector *a2)
{
  v2 = [(NavigationFeedbackCollector *)a2 feedbackCollector];
  [v2 setUserDidAcceptWalkingRoute:1];
}

void sub_100D84014(id a1, NavigationFeedbackCollector *a2)
{
  v2 = [(NavigationFeedbackCollector *)a2 feedbackCollector];
  [v2 setDidSuggestWalkingRoute:1];
}

void sub_100D8410C(id a1, NavigationFeedbackCollector *a2)
{
  v2 = [(NavigationFeedbackCollector *)a2 feedbackCollector];
  [v2 setIsEVRoute:1];
}

void sub_100D8418C(id a1, NavigationFeedbackCollector *a2)
{
  v2 = a2;
  v4 = [(NavigationFeedbackCollector *)v2 feedbackCollector];
  wasEverConnectedToCarplay = v2->_wasEverConnectedToCarplay;

  [v4 setWasEverConnectedToCarplay:wasEverConnectedToCarplay];
}

void sub_100D84288(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v7 = v2;
    v3 = *(*(a1 + 32) + 32);
    if (!v3)
    {
      v4 = +[NSMutableSet set];
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      v3 = *(*(a1 + 32) + 32);
    }

    [v3 addObject:*(a1 + 40)];
    v2 = v7;
  }
}

id *sub_100D84A34(id *result, int a2)
{
  if (a2)
  {
    return [result[4] invokeCompletionWithOutcome:1];
  }

  return result;
}

id sub_100D84BDC(uint64_t a1, void *a2)
{
  v3 = [a2 canCreateSubmittableProblem];
  v4 = *(a1 + 32);

  return [v4 setEnabled:v3];
}

void sub_100D854D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100D85508(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [RAPAnalyticsManager captureRAPAcknowledgementDoneActionFromReport:WeakRetained[1] forMuid:0];
  [WeakRetained _invokeCompletionWithOutcome:*(a1 + 40)];
}

void sub_100D8557C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Report an Issue" value:@"localized string not found" table:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Reports may include location and contact information." value:@"localized string not found" table:0];

  v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"RAP_Cancel" value:@"localized string not found" table:0];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100D85A8C;
  v23[3] = &unk_101660728;
  v12 = v4;
  v24 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:1 handler:v23];
  [v9 addAction:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"OK" value:@"localized string not found" table:0];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100D85AA0;
  v21 = &unk_101660728;
  v22 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:&v18];
  [v9 addAction:{v17, v18, v19, v20, v21}];

  [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
}