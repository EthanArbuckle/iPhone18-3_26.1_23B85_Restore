void sub_100D857FC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100BD9980();
    v3 = *(a1 + 40);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    [*(*(a1 + 40) + 32) startAnimating];
    v5 = *(a1 + 40);
    v6 = v5[4];
    v7 = [v5 topViewController];
    v8 = [v7 navigationItem];
    v9 = [v8 rightBarButtonItem];
    [v9 setCustomView:v6];

    v12 = [*(a1 + 40) navigationBar];
    [v12 setUserInteractionEnabled:0];
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);

    [v10 _invokeCompletionWithOutcome:v11];
  }
}

void sub_100D85900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(*(a1 + 32) + 32) stopAnimating];
  v5 = [*(a1 + 32) navigationBar];
  [v5 setUserInteractionEnabled:1];

  if (a3 || !*(a1 + 40))
  {
    v6 = [*(a1 + 32) topViewController];
    v7 = [v6 navigationItem];
    v8 = [v7 rightBarButtonItem];
    [v8 setCustomView:0];

    v11 = sub_100BD99D0();
    v9 = [*(a1 + 32) topViewController];
    [v9 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v11 = objc_alloc_init(RAPSendingTitleView);
    [(RAPSendingTitleView *)v11 sizeToFit];
    v10 = +[RAPSendingTitleView localizedSendingTitle];
    [*(a1 + 48) setTitle:v10];

    [*(a1 + 48) setBackBarButtonItem:0];
    [*(a1 + 48) setTitleView:v11];
    [*(a1 + 48) setPrompt:0];
    [*(a1 + 48) setLeftItemsSupplementBackButton:0];
    [*(a1 + 48) setRightBarButtonItems:&__NSArray0__struct];
    [*(a1 + 32) pushViewController:*(a1 + 40) animated:1];
    [*(a1 + 56) setValuesOnNavigationItem:*(a1 + 48) animated:0];
    [*(a1 + 64) setUserInteractionEnabled:1];
  }
}

void sub_100D86328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D86364(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 1)
  {
    v8 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = +[RAPAcknowledgementOptions defaultOptions];
    [WeakRetained _sendWithFinalOutcome:1 acknowledgementOptions:v7];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v8 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _cancelWithAnalyticsTarget:0];
  }

  v5 = v8;
LABEL_6:
}

void sub_100D86708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D8672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a3 == 1)
    {
      v7 = WeakRetained;
      v6 = +[RAPAcknowledgementOptions defaultOptions];
      [v7 _sendWithFinalOutcome:1 acknowledgementOptions:v6];
    }

    else
    {
      if (a3)
      {
        goto LABEL_7;
      }

      v7 = WeakRetained;
      [WeakRetained _cancelWithAnalyticsTarget:{objc_msgSend(*(a1 + 32), "analyticTarget")}];
    }

    WeakRetained = v7;
  }

LABEL_7:
}

void sub_100D86A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D86A30(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 1)
  {
    v8 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = +[RAPAcknowledgementOptions defaultOptions];
    [WeakRetained _sendWithFinalOutcome:1 acknowledgementOptions:v7];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v8 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _cancelWithAnalyticsTarget:1151];
  }

  v5 = v8;
LABEL_6:
}

void sub_100D86D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D86D88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 1)
  {
    v8 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = +[RAPAcknowledgementOptions defaultOptions];
    [WeakRetained _sendWithFinalOutcome:1 acknowledgementOptions:v7];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v8 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _cancelWithAnalyticsTarget:603];
  }

  v5 = v8;
LABEL_6:
}

void sub_100D8703C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 40) question];
    v4 = [v3 parentQuestion];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [*(a1 + 40) question];
      v9 = [v6 parentQuestion];

      [v9 refreshMainMenuItemsWithCallback:&stru_101653990];
    }
  }

  else
  {
    v7 = sub_100D871A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save shortcut %@. with refined coordinate", buf, 0xCu);
    }
  }
}

id sub_100D871A4()
{
  if (qword_10195F138 != -1)
  {
    dispatch_once(&qword_10195F138, &stru_1016539B0);
  }

  v1 = qword_10195F130;

  return v1;
}

void sub_100D871F8(id a1)
{
  v1 = sub_100D871A4();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Finished refreshing shortcuts", v2, 2u);
  }
}

void sub_100D87260(id a1)
{
  v1 = os_log_create("com.apple.Maps", "HomeWorkShortcutMainMenu");
  v2 = qword_10195F130;
  qword_10195F130 = v1;
}

void sub_100D883B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D883EC(uint64_t a1)
{
  v2 = [RAPReportComposerCategoryPart alloc];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D8864C;
  v8[3] = &unk_101653920;
  v8[4] = v3;
  v5 = [(RAPReportComposerCategoryPart *)v2 initWithCategoryQuestion:v4 selection:v8];
  [*(a1 + 40) addObject:v5];
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) dataSource];
  [v7 setTableParts:v6];
}

void sub_100D884C4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[7] mergeWithTrafficIncidentsLayout:v5];
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_100D88538(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (!a3)
    {
      [WeakRetained[7] mergeWithServerConfig:v7];
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_100D885BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[8] stopAnimating];
    [v3[9] updateCategoriesFromLayoutManager:v3[7]];
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

id *sub_100D88C74(id *result, int a2)
{
  if (a2)
  {
    return [result[4] invokeCompletionWithOutcome:1];
  }

  return result;
}

id *sub_100D89F50(id *result, int a2)
{
  if (a2)
  {
    return [result[4] invokeCompletionWithOutcome:1];
  }

  return result;
}

id sub_100D8E3AC(uint64_t a1, uint64_t a2)
{
  if (qword_10195F150 != -1)
  {
    dispatch_once(&qword_10195F150, &stru_1016539D0);
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = &qword_10195F148;
  if (a1)
  {
    v5 = &qword_10195F140;
  }

  v6 = *v5;
  v7 = [NSNumber numberWithUnsignedInteger:v4];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  return v9;
}

void sub_100D8E45C(id a1)
{
  v7[0] = &off_1016E9C38;
  v7[1] = &off_1016E9C68;
  v8[0] = &off_1016E9C50;
  v8[1] = &off_1016E9C80;
  v7[2] = &off_1016E9C98;
  v7[3] = &off_1016E9CC8;
  v8[2] = &off_1016E9CB0;
  v8[3] = &off_1016E9CE0;
  v1 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v2 = qword_10195F140;
  qword_10195F140 = v1;

  v5[0] = &off_1016E9C38;
  v5[1] = &off_1016E9C98;
  v6[0] = &off_1016E9CF8;
  v6[1] = &off_1016E9D10;
  v5[2] = &off_1016E9CC8;
  v5[3] = &off_1016E9C68;
  v6[2] = &off_1016E9D28;
  v6[3] = &off_1016E9D40;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v4 = qword_10195F148;
  qword_10195F148 = v3;
}

int64_t sub_100D8EB10(id a1, CarCardConfiguration *a2, CarCardConfiguration *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CarCardConfiguration *)v4 defaultFocusSortValue];
  if (v6 <= [(CarCardConfiguration *)v5 defaultFocusSortValue])
  {
    v8 = [(CarCardConfiguration *)v4 defaultFocusSortValue];
    if (v8 >= [(CarCardConfiguration *)v5 defaultFocusSortValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

int64_t sub_100D8ED4C(id a1, CarCardConfiguration *a2, CarCardConfiguration *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CarCardConfiguration *)v4 initialFocusSortValue];
  if (v6 <= [(CarCardConfiguration *)v5 initialFocusSortValue])
  {
    v8 = [(CarCardConfiguration *)v4 initialFocusSortValue];
    if (v8 >= [(CarCardConfiguration *)v5 initialFocusSortValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_100D8F29C(id a1, NSString *a2, CarCardConfiguration *a3, BOOL *a4)
{
  v4 = a3;
  [(CarCardConfiguration *)v4 _updateAvailableCardSize];
  v7 = [(CarCardConfiguration *)v4 content];

  v5 = [v7 view];
  [v5 setNeedsLayout];

  v6 = [v7 view];
  [v6 layoutIfNeeded];
}

id sub_100D8F8A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isValid];
  if ((v4 & 1) == 0)
  {
    v5 = sub_10006CF98();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      goto LABEL_13;
    }

    v6 = *(a1 + 32);
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_11;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_11:
    *buf = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Filtering out invalid configuration: %@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:

  return v4;
}

id sub_100D8FA58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) configurationKeys];
  v8 = [v5 key];
  v9 = [v7 indexOfObject:v8];

  v10 = [*(a1 + 32) configurationKeys];
  v11 = [v6 key];
  v12 = [v10 indexOfObject:v11];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL && ([v5 isHidden] & 1) == 0)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315906;
      v24 = "[CarCardsOverlay cardsUpdate:applyConfigurations:]_block_invoke";
      v25 = 2080;
      v26 = "CarCardsOverlay.m";
      v27 = 1024;
      v28 = 1867;
      v29 = 2080;
      v30 = "index1 != NSNotFound || obj1.isHidden";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v23, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        v23 = 138412290;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v23, 0xCu);
      }
    }
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL && ([v6 isHidden] & 1) == 0)
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315906;
      v24 = "[CarCardsOverlay cardsUpdate:applyConfigurations:]_block_invoke";
      v25 = 2080;
      v26 = "CarCardsOverlay.m";
      v27 = 1024;
      v28 = 1868;
      v29 = 2080;
      v30 = "index2 != NSNotFound || obj2.isHidden";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v23, 0x26u);
    }

    if (sub_100E03634())
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        v23 = 138412290;
        v24 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", &v23, 0xCu);
      }
    }
  }

  v13 = [NSNumber numberWithUnsignedInteger:v9];
  v14 = [NSNumber numberWithUnsignedInteger:v12];
  v15 = [v13 compare:v14];

  return v15;
}

BOOL sub_100D90620(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 key];
  v10 = *(a1 + 32);
  v11 = [v8 key];

  v12 = [v10 _configurationForKey:v11 createIfNeeded:0];

  if (!v12)
  {
    v13 = sub_10006CF98();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_21:

      goto LABEL_22;
    }

    v14 = *(a1 + 32);
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_17;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_13;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_13:

LABEL_17:
    v20 = *(*(a1 + 32) + 16);
    if (a2 > 2)
    {
      v21 = @"unknown";
    }

    else
    {
      v21 = off_101653D90[a2];
    }

    *buf = 138544130;
    v24 = v19;
    v25 = 2048;
    v26 = v20;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] %p | %@'s configuration has been deleted, cancelling %@", buf, 0x2Au);

    goto LABEL_21;
  }

  switch(a2)
  {
    case 2uLL:
      [*(*(a1 + 32) + 16) insertCardConfiguration:v12 block:v7];
      break;
    case 1uLL:
      [*(*(a1 + 32) + 16) reloadCardConfiguration:v12 block:v7];
      break;
    case 0uLL:
      [*(*(a1 + 32) + 16) deleteCardConfiguration:v12];
      break;
  }

LABEL_22:

  return v12 != 0;
}

void sub_100D9131C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 cardsUpdate:*(a1 + 32) applyConfigurations:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 cardsUpdateWantsLayout:*(a1 + 32)];
}

void sub_100D91434(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 cardsUpdateWantsLayout:*(a1 + 32)];
}

void sub_100D91728(id *a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1[5] + 5) objectForKey:{v7, v13}];
        if (v8)
        {
          if ([a1[5] _shouldClearConfiguration:v7 beforeUpdate:v8])
          {
            [v7 clear];
          }

          (v8)[2](v8, v7);
        }

        if (a1[6] && (v9 = [v7 invalidationState], v10 = a1 + 6, (v9 & 1) != 0) || a1[7] && (v11 = objc_msgSend(v7, "invalidationState"), v10 = a1 + 7, (v11 & 2) != 0) || a1[8] && (v12 = objc_msgSend(v7, "invalidationState"), v10 = a1 + 8, (v12 & 4) != 0))
        {
          [*v10 addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

id sub_100D918E4(uint64_t a1)
{
  v2 = sub_1000835D4();
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
    v9 = [*(a1 + 40) valueForKey:@"key"];
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] The following visible cards will begin transitioning: %@", buf, 0x16u);
  }

  return [*(a1 + 32) _markConfigurations:*(a1 + 40) asTransitioning:1];
}

id sub_100D91A98(uint64_t a1)
{
  v2 = sub_1000835D4();
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
    v9 = [*(a1 + 40) count];
    *buf = 138543618;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] %lu content reloads will apply and layout", buf, 0x16u);
  }

  return [*(a1 + 32) _applyAndPerformLayoutForConfigurations:*(a1 + 40) allowAnimations:1];
}

id sub_100D91C38(uint64_t a1)
{
  v2 = sub_1000835D4();
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
    v9 = [*(a1 + 40) valueForKey:@"key"];
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] The following visible cards will temporarily hide: %@", buf, 0x16u);
  }

  [*(a1 + 40) enumerateObjectsUsingBlock:&stru_101653D08];
  return [*(a1 + 32) _performLayoutAllowingAnimations:1];
}

id sub_100D91DFC(uint64_t a1)
{
  [*(a1 + 32) _markConfigurations:*(a1 + 40) asTransitioning:0];
  v2 = sub_1000835D4();
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
    v9 = [*(a1 + 40) count];
    *buf = 138543618;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] %lu layout reloads will apply and layout", buf, 0x16u);
  }

  return [*(a1 + 32) _applyAndPerformLayoutForConfigurations:*(a1 + 40) allowAnimations:0];
}

id sub_100D91FAC(uint64_t a1)
{
  v2 = sub_10006CF98();
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
    v9 = [*(a1 + 40) count];
    *buf = 138543618;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] %lu other reloads will apply and layout", buf, 0x16u);
  }

  return [*(a1 + 32) _applyAndPerformLayoutForConfigurations:*(a1 + 40) allowAnimations:0];
}

void sub_100D9214C(uint64_t a1)
{
  v2 = sub_1000835D4();
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
    v9 = [*(a1 + 40) count];
    *buf = 138543618;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] %lu deletions will hide", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * i) setHidden:1];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = [*(a1 + 32) delegate];
  [v15 cardsUpdate:*(a1 + 32) applyConfigurations:*(a1 + 40)];
}

void sub_100D92398(uint64_t a1)
{
  v2 = sub_1000835D4();
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
    v9 = [*(a1 + 40) count];
    *buf = 138543618;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] %lu deletions will be reset", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * i) reset];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

void sub_100D925C4(uint64_t a1)
{
  v2 = sub_1000835D4();
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
    v9 = [*(a1 + 40) count];
    *buf = 138543618;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] %lu insertions will unhide", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * i) setHidden:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  if ([*(a1 + 40) count])
  {
    v15 = [*(a1 + 32) delegate];
    [v15 cardsUpdate:*(a1 + 32) applyConfigurations:*(a1 + 40)];
  }
}

id sub_100D92828(uint64_t a1)
{
  v2 = sub_1000835D4();
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
    v9 = [*(a1 + 40) valueForKey:@"key"];
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] The following cards will end transitioning: %@", buf, 0x16u);
  }

  return [*(a1 + 32) _markConfigurations:*(a1 + 40) asTransitioning:0];
}

void sub_100D929DC(uint64_t a1, int a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _markConfigurations:*(a1 + 40) asTransitioning:0];
  }

  v4 = sub_1000835D4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_12;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_10;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_10:

LABEL_12:
    v11 = [*(a1 + 40) valueForKey:@"key"];
    v12 = v11;
    v13 = @"was";
    *buf = 138543874;
    v15 = v10;
    v16 = 2112;
    if (a2)
    {
      v13 = @"wasn't";
    }

    v17 = v11;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] The following cards did end transitioning: %@. Animation %@ interrupted.", buf, 0x20u);
  }
}

void sub_100D92BC0(uint64_t a1)
{
  v1 = [*(a1 + 32) firstObject];
  [v1 runWithCurrentOptions];
}

void sub_100D92C10(id a1, CarCardConfiguration *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  [(CarCardConfiguration *)v4 setTransitioning:1];
  [(CarCardConfiguration *)v4 setHidden:1];
}

void sub_100D92C5C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarCardsUpdate");
  v2 = qword_10195F158;
  qword_10195F158 = v1;
}

void sub_100D92EAC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v6 = a1[5];
  v7 = [*(a1[4] + 40) objectForKey:v10];
  LOBYTE(v6) = (*(v6 + 16))(v6, 0, v10, v7, a4);

  if ((v6 & 1) == 0)
  {
    v8 = *(a1[4] + 16);
    v9 = [v10 key];
    [v8 removeObjectForKey:v9];
  }

  *(*(a1[6] + 8) + 24) |= a4 != 0;
}

void sub_100D92F84(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v6 = a1[5];
  v7 = [*(a1[4] + 40) objectForKey:v10];
  LOBYTE(v6) = (*(v6 + 16))(v6, 1, v10, v7, a4);

  if ((v6 & 1) == 0)
  {
    [*(a1[4] + 40) removeObjectForKey:v10];
    v8 = *(a1[4] + 24);
    v9 = [v10 key];
    [v8 removeObjectForKey:v9];
  }

  *(*(a1[6] + 8) + 24) |= a4 != 0;
}

void sub_100D9306C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v6 = a1[5];
  v7 = [*(a1[4] + 40) objectForKey:v10];
  LOBYTE(v6) = (*(v6 + 16))(v6, 2, v10, v7, a4);

  if ((v6 & 1) == 0)
  {
    [*(a1[4] + 40) removeObjectForKey:v10];
    v8 = *(a1[4] + 32);
    v9 = [v10 key];
    [v8 removeObjectForKey:v9];
  }

  *(*(a1[6] + 8) + 24) |= a4 != 0;
}

void sub_100D93CE4(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
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
        v8 = [*(a1 + 40) _batchedUpdates];
        [v8 deleteCardConfiguration:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100D93EC0(uint64_t a1)
{
  v1 = [*(a1 + 32) cardView];
  [v1 setHidden:0];
}

void sub_100D93FD4(uint64_t a1)
{
  v1 = [*(a1 + 32) cardView];
  [v1 setHidden:1];
}

void sub_100D9429C(uint64_t a1)
{
  v2 = [*(a1 + 32) _batchedUpdates];
  [v2 deleteCardConfiguration:*(a1 + 40)];
}

id sub_100D94604(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 configurationsByKey];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

void sub_100D94670(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
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
        v8 = [*(a1 + 40) _batchedUpdates];
        [v8 insertCardConfiguration:v7 block:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100D94B3C(uint64_t a1)
{
  v2 = [*(a1 + 32) _batchedUpdates];
  [v2 insertCardConfiguration:*(a1 + 40) block:*(a1 + 48)];
}

void sub_100D94F00(uint64_t a1)
{
  v2 = [*(a1 + 32) _batchedUpdates];
  [v2 reloadCardConfiguration:*(a1 + 40) block:*(a1 + 48)];
}

void sub_100D95158(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 layoutIfNeeded];
}

BOOL sub_100D95834(id a1, CarCardConfiguration *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(CarCardConfiguration *)a2 isHidden];
  if ((v5 & 1) == 0)
  {
    *a4 = 1;
  }

  return v5 ^ 1;
}

void sub_100D95BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((v3 + 48));
  v5 = [v4 cardView];

  [v5 setDelegate:WeakRetained];
}

void sub_100D98090(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 resultsDelegate];
  [v7 showRouteLibraryWithAvailableRoutes:v6 unavailableRoutes:v5];
}

void sub_100D997F0(uint64_t a1, void *a2, id a3)
{
  v10 = a2;
  if ([*(a1 + 32) unsignedLongValue] == a3)
  {
    v5 = [_TtC4Maps21GEORefinementsFactory updatedOpenOptionResultRefinementWith:*(a1 + 40)];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 48);
      v8 = [v5 convertToGEOPDResultRefinement];
      [v7 addRefinement:v8];
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v6 = [v10 convertToGEOPDResultRefinement];
    [v9 addRefinement:v6];
  }
}

void sub_100D99C08(uint64_t a1, void *a2, id a3)
{
  v10 = a2;
  if ([*(a1 + 32) unsignedLongValue] == a3)
  {
    v5 = [_TtC4Maps21GEORefinementsFactory barMultiSelectResultRefinementsWith:*(a1 + 40)];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 48);
      v8 = [v5 convertToGEOPDResultRefinement];
      [v7 addRefinement:v8];
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v6 = [v10 convertToGEOPDResultRefinement];
    [v9 addRefinement:v6];
  }
}

void sub_100D9B1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100D9B1DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained contentView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100D9C488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D9C4AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapOnAddAPlace];
}

void sub_100D9C6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D9C6F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained _maps_mapsSceneDelegate];
    v3 = [v2 appCoordinator];
    v4 = [v3 baseActionCoordinator];

    [v4 viewControllerShowOfflineMaps:v5];
    WeakRetained = v5;
  }
}

void sub_100D9E6B8(id a1, UIView *a2, CGContext *a3)
{
  v4 = [(UIView *)a2 layer];
  [v4 renderInContext:a3];
}

uint64_t sub_100D9E874(uint64_t a1, void *a2)
{
  [a2 CGContext];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100D9EFC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100D9EFEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_opt_respondsToSelector();
    WeakRetained = v3;
    if (v2)
    {
      [v3[3] refinementCoordinatorDidComplete:v3];
      WeakRetained = v3;
    }
  }
}

void sub_100D9F1AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100D9F1CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_opt_respondsToSelector();
    WeakRetained = v3;
    if (v2)
    {
      [v3[3] refinementCoordinatorDidComplete:v3];
      WeakRetained = v3;
    }
  }
}

void sub_100D9F234(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_opt_respondsToSelector();
    WeakRetained = v3;
    if (v2)
    {
      [v3[3] refinementCoordinatorDidComplete:v3];
      WeakRetained = v3;
    }
  }
}

void sub_100D9F67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D9F6A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((WeakRetained[32] & 1) == 0)
    {
      v6 = WeakRetained;
      GEOCalculateDistance();
      v3 = v2;
      GEOConfigGetDouble();
      WeakRetained = v6;
      if (v3 >= v4)
      {
        *(v6 + 32) = 1;
        v5 = [v6 _refinementAlertController];
        if (v5)
        {
          [*(v6 + 7) presentViewController:v5 animated:1 completion:0];
        }

        WeakRetained = v6;
      }
    }
  }
}

void sub_100D9FB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D9FB58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 7);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100D9FBE8;
    v4[3] = &unk_101661B18;
    v4[4] = v2;
    [v3 dismissViewControllerAnimated:1 completion:v4];
  }
}

uint64_t sub_100D9FBE8(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 24);

    return [v3 refinementCoordinatorRequestsChangeAddress:? withShortcut:?];
  }

  return result;
}

void sub_100DA04A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  _Block_object_dispose((v4 - 136), 8);
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_100DA04F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100DA0510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MapsCountryCodeCheckmarkRow);
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 64) + 8) + 40) setTitle:@"Default"];
  [*(*(*(a1 + 64) + 8) + 40) setSubtitle:*(*(a1 + 32) + 96)];
  [*(*(*(a1 + 64) + 8) + 40) setValue:0];
  [v3 addRow:*(*(*(a1 + 64) + 8) + 40)];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = [*(a1 + 48) objectAtIndexedSubscript:{v10, v16}];
        v15 = objc_alloc_init(MapsCountryCodeCheckmarkRow);
        [(MapsDebugTableRow *)v15 setTitle:v14];
        [(MapsDebugTableRow *)v15 setSubtitle:v13];
        [(MapsDebugCheckmarkRow *)v15 setValue:v13];
        [v3 addRow:v15];
        [*(a1 + 56) addObject:v15];
        ++v10;

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

id sub_100DA0704(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _countryCode];

  return v2;
}

void sub_100DA0750(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setCountryCode:v3];
}

void sub_100DA07C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addRow:{*(*(&v9 + 1) + 8 * v8), v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_100DA08C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100DA0AA4;
  v11[3] = &unk_101653F38;
  objc_copyWeak(&v12, (a1 + 32));
  v4 = [v3 addTextFieldRowWithTitle:@"Custom" placeholderText:@"XX" inputType:4 get:v11 set:&stru_101653F58];
  v5 = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  [v4 setMaximumNumberOfCharacters:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DA0AF0;
  v9[3] = &unk_101653F80;
  v6 = v5;
  v10 = v6;
  [v4 setFilter:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100DA0B78;
  v7[3] = &unk_10165EF68;
  objc_copyWeak(&v8, (a1 + 32));
  [v4 setDone:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v12);
}

void sub_100DA0A7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

id sub_100DA0AA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _countryCode];

  return v2;
}

BOOL sub_100DA0AF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [v3 uppercaseString];
    v5 = [v4 rangeOfCharacterFromSet:*(a1 + 32)];
    v7 = v6;

    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == [v3 length];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void sub_100DA0B78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 uppercaseString];

  [WeakRetained _setCountryCode:v4];
}

void sub_100DA10F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (qword_10195F168 != -1)
  {
    dispatch_once(&qword_10195F168, &stru_101653FA0);
  }

  if (byte_10195F170 == 1)
  {
    v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];
    NSLog(@"RoutingApps: %@", v10);
  }
}

void sub_100DA1198(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_10195F170 = [v1 BOOLForKey:@"__internal__RoutingAppsLogging"];
}

void sub_100DA13C0(id a1, FeatureDiscoverySource *a2, unint64_t a3, BOOL *a4)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v8;
  if (isKindOfClass)
  {
    v7 = v8;
    if ([(FeatureDiscoverySource *)v7 isAvailable])
    {
      [(FeatureDiscoverySource *)v7 markAsShown];
    }

    *a4 = 1;

    v6 = v8;
  }
}

FeatureDiscoveryModel *__cdecl sub_100DA1700(id a1, FeatureDiscoverySource *a2, unint64_t a3)
{
  v3 = a2;
  if ([(FeatureDiscoverySource *)v3 isAvailable])
  {
    v4 = [(FeatureDiscoverySource *)v3 model];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

int64_t sub_100DA1DCC(id a1, FeatureDiscoverySource *a2, FeatureDiscoverySource *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithInteger:[(FeatureDiscoverySource *)a2 priority]];
  v6 = [(FeatureDiscoverySource *)v4 priority];

  v7 = [NSNumber numberWithInteger:v6];
  v8 = [v5 compare:v7];

  return v8;
}

void sub_100DA25C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100DA25E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained subscriptionManager];
    v5 = [*(a1 + 32) subscription];
    v6 = [v5 identifier];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DA26E0;
    v7[3] = &unk_10165F7B8;
    v8 = *(a1 + 32);
    [v4 setSubscriptionWithIdentifier:v6 shouldSyncToPairedDevice:0 callbackQueue:&_dispatch_main_q completionHandler:v7];
  }
}

void sub_100DA26E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10003D9F4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error removing subscription from paired device: %@, error: %@", &v6, 0x16u);
    }
  }
}

void sub_100DA2894(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10003D9F4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error adding subscription to paired device: %@, error: %@", &v6, 0x16u);
    }
  }
}

void sub_100DA2F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DA2F34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained subscriptionManager];
    v7 = [*(a1 + 32) subscription];
    v8 = [v7 identifier];
    v9 = &_dispatch_main_q;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100DA3078;
    v10[3] = &unk_1016540B0;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = *(a1 + 32);
    [v6 removeSubscriptionWithIdentifier:v8 callbackQueue:&_dispatch_main_q completionHandler:v10];

    objc_destroyWeak(&v12);
  }
}

void sub_100DA3078(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v4)
    {
      v6 = sub_10003D9F4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error removing subscriptionInfo: %@, error: %@", &v9, 0x16u);
      }
    }

    v8 = [WeakRetained delegate];
    [v8 closeOfflineMapDetails];
  }
}

void sub_100DA4BD0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195F178;
  qword_10195F178 = v1;
}

void sub_100DA4DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DA4DC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _touchMapsSuggestionsEngine];
}

void sub_100DA514C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100DA5170(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 copy];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DA5238;
    v7[3] = &unk_101661340;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v5;
    v6 = v5;
    dispatch_async(&_dispatch_main_q, v7);

    objc_destroyWeak(&v9);
  }
}

void sub_100DA5238(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateMeCard:*(a1 + 32)];
}

void sub_100DA7644(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) superview];
  [v2 layoutIfNeeded];
}

void sub_100DA85CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DA86B8;
  v9[3] = &unk_101656A00;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v6;
  v13 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_100DA86B8(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    [*(a1 + 32) endAnimatingActivityIndicatorWithError:*(a1 + 48)];
    if (*(a1 + 56))
    {
      v5 = *(a1 + 32);

      [v5 setImage:?];
    }
  }
}

void sub_100DA8B9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100DA8BB8(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _removeImageForIdentifier:*(a1 + 32)];
  }
}

void sub_100DA9844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DA9860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained tableViewCell];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = [v7 tableViewCell];
      [v4 set_mapkit_forceSeparatorFrameToCGRectZero:0];
    }

    v5 = [v7 tableViewCell];
    v6 = [v5 contentView];
    [v6 setBackgroundColor:0];

    WeakRetained = v7;
  }
}

void sub_100DA9DB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[IPCServer sharedServer];
  [v2 setSiriPluginListenerEndpoint:v1];
}

void sub_100DA9E10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[IPCServer sharedServer];
  [v2 setCompanionDaemonListenerEndpoint:v1];
}

void sub_100DA9E68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[IPCServer sharedServer];
  [v2 setPushDaemonListenerEndpoint:v1];
}

void sub_100DA9EC0(id a1, NSXPCListenerEndpoint *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008254;
  block[3] = &unk_101661B18;
  v4 = a2;
  v2 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100DAA0A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100DAA0C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = WeakRetained[1];
    v6 = sub_100E9E6E8();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v4 == v5)
    {
      if (v7)
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager Maps broker connection invalidated.", &v10, 2u);
      }

      v6 = v3[1];
      v3[1] = 0;
    }

    else if (v7)
    {
      v8 = *(a1 + 32);
      v9 = v3[1];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager Not releasing connection as it has already changed from: %@ to: %@", &v10, 0x16u);
    }
  }
}

void sub_100DAA248(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleInvalidatedConnection:v2];
}

void sub_100DAA2AC(uint64_t a1)
{
  v2 = sub_100E9E6E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager Maps broker connection interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchListenerEndpoints];
}

void sub_100DAA32C()
{
  v0 = sub_100035E6C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Received mapspushd did launch", v1, 2u);
  }

  dispatch_async(&_dispatch_main_q, &stru_101654230);
}

void sub_100DAA3A8(id a1)
{
  v1 = +[MapsXPCConnectionsManager sharedManager];
  [v1 _initializeBrokerConnectionIfNeeded];
}

CarAdvisoryView *sub_100DABB10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isClickable])
  {
    v11 = [[CarAdvisoryView alloc] initWithAdvisory:v3];
    v12 = +[MKMapService sharedService];
    [v12 captureUserAction:247 onTarget:1007 forAdvisory:v3];

    [(CarAdvisoryView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    goto LABEL_14;
  }

  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_12;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_12:
    *buf = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] CarAdvisoriesView - skipping a clickable advisory %@.", buf, 0x16u);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

void sub_100DAC230(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ReverseGeocodeAction resolveMapItem: %@", &v14, 0xCu);
    }
  }

  v8 = [v5 firstObject];
  v9 = [v8 placemark];
  v10 = [v9 mkPostalAddressDictionary];

  v11 = [[MKPlacemark alloc] initWithCoordinate:v10 addressDictionary:{*(a1 + 48), *(a1 + 56)}];
  v12 = [[MKMapItem alloc] initWithPlacemark:v11];

  if (*(a1 + 32))
  {
    [v12 setName:?];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v12);
  }
}

void sub_100DAD020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DAD044(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  v4 = sub_10000FA08(v3);

  if (v4 == 5)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 apiController];
    v14 = [v6 allCollectionViewFilters];

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 filterMenu];
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 selectedFilterIndexPath];
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 apiController];
    v13 = [v12 allCollectionViewIdentifiers];
    [v8 configureForAllCollectionsWithRoutingDelegate:v9 withAllCollectionsResultFilters:v14 withSelectedFilterIndex:v10 selectedFilterResultsCount:{objc_msgSend(v13, "count")}];
  }
}

void sub_100DAD2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DAD2D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  v4 = sub_10000FA08(v3);

  if (v4 == 5)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 apiController];
    v14 = [v6 allCollectionViewFilters];

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 filterMenu];
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 selectedFilterIndexPath];
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 apiController];
    v13 = [v12 allCollectionViewIdentifiers];
    [v8 configureForAllCollectionsWithRoutingDelegate:v9 withAllCollectionsResultFilters:v14 withSelectedFilterIndex:v10 selectedFilterResultsCount:{objc_msgSend(v13, "count")}];
  }
}

void sub_100DADDA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained apiController];
    v3 = [v2 currentState];

    WeakRetained = v4;
    if (v3 == 1)
    {
      [v4 clearGuidesFromSnapshot];
      WeakRetained = v4;
    }
  }
}

void sub_100DAE148(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100DAE164(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained applySnapshot];
    WeakRetained = v2;
  }
}

id sub_100DAED6C()
{
  if (qword_10195F1B0 != -1)
  {
    dispatch_once(&qword_10195F1B0, &stru_101654278);
  }

  v1 = qword_10195F1A8;

  return v1;
}

void sub_100DAEDC0(id a1)
{
  v1 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v2 = qword_10195F1A8;
  qword_10195F1A8 = v1;
}

void sub_100DB17CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cleanUp];
    v2[2] = 21;
    [v2 logEvent];
    WeakRetained = v2;
  }
}

void sub_100DB1B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DB1B70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  v9 = sub_10002E924();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v7;
      v11 = "Failed to submit corrections with error %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v19, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v19 = 138412290;
    v20 = v14;
    v11 = "Successfully submitted corrections for identifier %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_7;
  }

  if (v6)
  {
    v15 = sub_10002E924();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v6 statusAsString:{objc_msgSend(v6, "status")}];
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Received response with status code %@", &v19, 0xCu);
    }
  }

  v17 = objc_loadWeakRetained(WeakRetained + 3);
  [v17 finishedCorrectionsUploadWithResponse:v6 request:*(a1 + 40) error:v7];

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, v6, v7);
  }

LABEL_14:
}

void sub_100DB2090(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  dispatch_group_enter(v6);
  v8 = [v5 imageUploadUrl];
  v9 = [NSURL URLWithString:v8];
  v10 = [NSMutableURLRequest requestWithURL:v9];

  v11 = [v5 imageUploadHttpMethod];
  [v10 setHTTPMethod:v11];

  v12 = [NSString stringWithFormat:@"--data-binary"];
  [v10 setValue:v12 forHTTPHeaderField:@"Content-Type"];
  v13 = sub_10002E924();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v5 clientImageUuid];
    v15 = [v5 imageUploadUrl];
    *buf = 138412546;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Submitting photo with client image identifier %@ to url %@", buf, 0x16u);
  }

  v16 = *(*(a1 + 40) + 8);
  v17 = [v7 rawImageData];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100DB25D4;
  v26[3] = &unk_101654358;
  v18 = v5;
  v27 = v18;
  v28 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v29 = v19;
  v31 = v20;
  v30 = *(a1 + 32);
  v21 = [v16 uploadTaskWithRequest:v10 fromData:v17 completionHandler:v26];

  v22 = *(a1 + 64);
  v23 = [v21 progress];
  [v22 addChild:v23 withPendingUnitCount:1];

  v24 = sub_10002E924();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v18 imageUploadUrl];
    *buf = 138412290;
    v33 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Starting image upload to url %@", buf, 0xCu);
  }

  [v21 resume];
}

void sub_100DB23BC(uint64_t a1)
{
  v2 = *(*(*(a1 + 88) + 8) + 24);
  v3 = [*(a1 + 32) imageUploadInfos];
  v4 = [v3 count];

  if (v2 == v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained(WeakRetained + 3);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100DB25C0;
      v15[3] = &unk_1016543A8;
      v15[4] = v6;
      v16 = *(a1 + 64);
      v17 = *(a1 + 72);
      v18 = *(a1 + 80);
      [v7 finishedUploadingImagesWithImageUpdate:v8 correctionsRequest:v9 completion:v15];
    }
  }

  else
  {
    v10 = sub_10002E924();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) imageUploadInfos];
      v12 = [v11 count];
      v13 = *(*(*(a1 + 88) + 8) + 24);
      *buf = 134218240;
      v20 = v12;
      v21 = 2048;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "We have a mismatch, expected %lu uploads but only did %lu uploads", buf, 0x16u);
    }

    v14 = *(a1 + 80);
    v6 = [*(a1 + 40) firstObject];
    (*(v14 + 16))(v14, 0, v6);
  }
}

void sub_100DB25D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DB2714;
  block[3] = &unk_101654330;
  v16 = v8;
  v17 = *(a1 + 32);
  v18 = v9;
  v19 = *(a1 + 40);
  v20 = v7;
  v21 = *(a1 + 48);
  v14 = *(a1 + 56);
  v10 = v14;
  v22 = v14;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100DB2714(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10002E924();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 40) imageUploadUrl];
    v11 = 138412802;
    v12 = v4;
    v13 = 2048;
    v14 = [v2 statusCode];
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received response with for url %@ with status code %ld and body %@", &v11, 0x20u);
  }

  if (*(a1 + 48))
  {
    v5 = sub_10002E924();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 40) clientImageUuid];
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to submit image with client image identifier %@", &v11, 0xCu);
    }

    [*(a1 + 56) addObject:*(a1 + 48)];
  }

  else if (+[FeedbackSubmissionManager isStatusCodeSuccess:](FeedbackSubmissionManager, "isStatusCodeSuccess:", [v2 statusCode]) && *(a1 + 64))
  {
    v7 = sub_10002E924();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) clientImageUuid];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully submitted image with client image identifier %@", &v11, 0xCu);
    }

    v9 = [*(a1 + 40) clientImageUuid];
    v10 = [GEORPImageUpdate newImageUpdateWithClientImageId:v9 responseData:*(a1 + 64)];

    [*(a1 + 72) addObject:v10];
    ++*(*(*(a1 + 88) + 8) + 24);
  }

  dispatch_group_leave(*(a1 + 80));
}

BOOL sub_100DB2CCC(id a1, CollectionHandler *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(CollectionHandler *)a2 isFavoriteCollection];
  if (v5)
  {
    *a4 = 1;
  }

  return v5;
}

id sub_100DB34D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v10.receiver = *(a1 + 32);
  v10.super_class = RelatedSearchSuggestionView;
  objc_msgSendSuper2(&v10, "setAlpha:", v2);
  [*(a1 + 32) frame];
  Height = CGRectGetHeight(v11);
  [*(a1 + 32) alpha];
  if (v4 == 0.0)
  {
    CGAffineTransformMakeTranslation(&v9, 0.0, Height);
  }

  else
  {
    v5 = *&CGAffineTransformIdentity.c;
    *&v9.a = *&CGAffineTransformIdentity.a;
    *&v9.c = v5;
    *&v9.tx = *&CGAffineTransformIdentity.tx;
  }

  v6 = *(a1 + 32);
  v8 = v9;
  return [v6 setTransform:&v8];
}

void sub_100DB4260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100DB4288(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deletions];
  v5 = [v3 identifierPath];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) deletionWithSnapshot:v3];
  }

  return v7;
}

void sub_100DB4338(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v4 && WeakRetained)
  {
    [WeakRetained endFailedDeletions:*(a1 + 32) error:v4];
  }
}

void sub_100DB43A8(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v4 && WeakRetained)
  {
    [WeakRetained endFailedDeletions:*(a1 + 32) error:v4];
  }
}

id sub_100DB4418(id a1, HomeDeletion *a2, unint64_t a3)
{
  v3 = [(HomeDeletion *)a2 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 viewModel];

  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___HomeRecentsItemCellModel])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 homeRecentsItem];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

void sub_100DB4A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DB4AD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSnapshot:*(a1 + 32)];
}

id sub_100DB4E3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifierCache];
  v5 = [v4 identifierForObject:v3];

  return v5;
}

TwoLinesHistoryEntryRecentsItemOutlineCellModel *sub_100DB4EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SidebarOutlineCellBackgroundModel alloc];
  v5 = [*(a1 + 32) delegate];
  v6 = [v5 isCollectionViewFocusedWithSectionController:*(a1 + 32)];
  v7 = [*(a1 + 32) delegate];
  v8 = [v7 isCollectionViewProxyFocusedWithSectionController:*(a1 + 32)];
  v9 = [*(a1 + 32) delegate];
  v10 = -[SidebarOutlineCellBackgroundModel initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:](v4, "initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:", 0, 0, 1, v6, v8, [v9 hasCollectionViewDropSessionWithSectionController:*(a1 + 32)]);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v3;
    v12 = &OBJC_PROTOCOL___MSPHistoryEntryTransitLineItem;
    objc_opt_class();
    v13 = v11;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15 && ([v15 historyEntry], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "conformsToProtocol:", v12), v16, v17))
    {
      v18 = v13;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v20 = [[TwoLineOutlineCellButtonAccessoryModel alloc] initWithAccessoryType:1 visibility:1 delegate:*(a1 + 32)];
      v21 = [TwoLinesHistoryEntryRecentsItemOutlineCellModel alloc];
      if (v20)
      {
        v25 = v20;
        v22 = [NSArray arrayWithObjects:&v25 count:1];
        v23 = [(TwoLinesHistoryEntryRecentsItemOutlineCellModel *)v21 initWithHistoryEntryRecentsItem:v13 accessoryModels:v22 backgroundModel:v10];

        goto LABEL_19;
      }
    }

    else
    {
      v21 = [TwoLinesHistoryEntryRecentsItemOutlineCellModel alloc];
    }

    v19 = [(TwoLinesHistoryEntryRecentsItemOutlineCellModel *)v21 initWithHistoryEntryRecentsItem:v13 accessoryModels:&__NSArray0__struct backgroundModel:v10];
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [[TwoLinesRecentContactOutlineCellModel alloc] initWithRecentContact:v3 backgroundModel:v10];
LABEL_18:
    v23 = v19;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [[TwoLinesSearchResultOutlineCellModel alloc] initWithSearchResult:v3 backgroundModel:v10];
    goto LABEL_18;
  }

  v23 = 0;
LABEL_19:

  return v23;
}

void sub_100DB5768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100DB5780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100DB647C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DB6498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100DB6550;
    v5[3] = &unk_101661340;
    v6 = v3;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(&_dispatch_main_q, v5);
    objc_destroyWeak(&v7);
  }
}

void sub_100DB6550(uint64_t a1)
{
  v2 = +[UIPasteboard generalPasteboard];
  v3 = [*(a1 + 32) absoluteString];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [v2 setObjects:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 110);
    *(WeakRetained + 110) = 0;
  }
}

void sub_100DB8774(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 coordinator];
    [v5 viewController:*(a1 + 32) selectParkedCar:v4 andPerformAction:*(a1 + 40)];
  }
}

void sub_100DB9AE4(uint64_t a1)
{
  v1 = [*(a1 + 32) coordinator];
  [v1 viewControllerPresentSearchEndEditingAnimated:0];
  [v1 viewControllerClosed:0 animated:0];
  v2 = [v1 searchPinsManager];
  [v2 clearSearchPins];

  v3 = [v1 searchPinsManager];
  [v3 clearDirectionsPins];

  [v1 clearMapSelection];
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_teardownViewHierarchyForTesting completed popToRootContextAnimated:NO", v5, 2u);
  }
}

id sub_100DB9E20(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100DB9FD4;
  v2[3] = &unk_101661B18;
  v2[4] = *(a1 + 32);
  return [UIViewController _performWithoutDeferringTransitions:v2];
}

void sub_100DB9E9C(uint64_t a1)
{
  v1 = [*(a1 + 32) coordinator];
  [v1 setViewMode:0 animated:0];
  [v1 exit3dMode];
}

void sub_100DB9EF0(uint64_t a1)
{
  v7 = [*(a1 + 32) coordinator];
  v2 = [*(a1 + 32) mapView];
  [v2 setUserTrackingMode:1 animated:1];

  [v7 defaultZoom];
  v3 = [*(a1 + 32) floatingControlsOverlay];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) lookAroundOverlay];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) redoSearchOverlay];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) weatherOverlay];
  [v6 setAlpha:1.0];
}

void sub_100DB9FD4(uint64_t a1)
{
  [*(a1 + 32) _teardownViewHierarchyForTesting];
  v2 = [*(a1 + 32) coordinator];
  [v2 endSearchForTesting];
}

void sub_100DBA974(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v3 = 6;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  v5 = objc_alloc_init(GEOMapServiceTraits);
  v6 = +[GEOCompanionRouteContext context];
  v39 = 0;
  v7 = [[TraceRouteLoadingTaskFactory alloc] initWithTracePath:v4 outError:&v39];

  v8 = v39;
  v9 = v8;
  if (v8 || !v7)
  {
    v27 = v8;
    v25 = 0;
    v26 = v9;
  }

  else
  {
    v37 = v3;
    v10 = [(TraceRouteLoadingTaskFactory *)v7 waypointRequests];
    v11 = [v10 count];

    v12 = [(TraceRouteLoadingTaskFactory *)v7 waypointRequests];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100D52350;
    v38[3] = &unk_101652A18;
    v38[4] = v11;
    v13 = sub_100021DB0(v12, v38);

    v14 = [RoutePlanningSessionConfiguration alloc];
    v15 = +[MKLocationManager sharedLocationManager];
    v16 = [(RoutePlanningSessionConfiguration *)v14 initWithWaypointRequests:v13 routeLoadingTaskFactory:v7 traits:v5 companionContext:v6 locationManager:v15];

    if (v2)
    {
      [NSNumber numberWithDouble:5.0];
      v17 = v36 = v5;
      v18 = +[NSUserDefaults standardUserDefaults];
      v19 = [v18 objectForKey:@"NavigationAutoLaunchDelayKey"];

      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20;

      [v21 doubleValue];
      v23 = v22;

      v5 = v36;
      v24 = [NSNumber numberWithDouble:v23];
      [(RoutePlanningSessionConfiguration *)v16 setNavigationAutoLaunchDelay:v24];
    }

    [(RoutePlanningSessionConfiguration *)v16 setInitialTransportType:[(TraceRouteLoadingTaskFactory *)v7 traceTransportType]];
    v25 = [[RoutePlanningSession alloc] initWithInitiator:v37 configuration:v16];

    v26 = 0;
  }

  v28 = v26;
  if (!v28 && v25)
  {
    v29 = [*(a1 + 40) _maps_platformController];
    [v29 pushSession:v25];
LABEL_18:

    goto LABEL_19;
  }

  v30 = +[GEOPlatform sharedPlatform];
  v31 = [v30 isInternalInstall];

  if (v31)
  {
    v32 = [v28 localizedDescription];
    v29 = [UIAlertController alertControllerWithTitle:@"Error Loading Trace" message:v32 preferredStyle:1];

    v33 = [UIAlertAction actionWithTitle:@"OK" style:1 handler:0];
    [v29 addAction:v33];

    v34 = [*(a1 + 40) _maps_mapsSceneDelegate];
    v35 = [v34 topMostPresentedViewController];
    [v35 presentViewController:v29 animated:1 completion:0];

    goto LABEL_18;
  }

LABEL_19:
}

void sub_100DBB68C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) mapView];
  [v2 _setShowsNightMode:v1];
}

void sub_100DBB7A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MapsLightLevelController sharedController];
  [v1 updateLightLevelAnimated:0 lightLevel:{objc_msgSend(v2, "currentLightLevel")}];
}

void sub_100DBB8E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && v5 && !a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DBB9A4;
    v7[3] = &unk_101661A90;
    v8 = v5;
    v9 = WeakRetained;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_100DBB9A4(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedVehicle];
  v3 = [v2 isLPRWithElectricEngine];
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[MapsExternalDevice sharedInstance];
    v4 = ([v5 engineTypes] >> 16) & 1;
  }

  +[NSMutableSet set];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DBBC18;
  v6 = v21[3] = &unk_101655400;
  v22 = v6;
  v7 = objc_retainBlock(v21);
  if ((v3 | v4))
  {
    v8 = VGChargingConnectorTypeOptionsList();
    (v7[2])(v7, v8);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [*(a1 + 32) vehicles];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
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

          [*(*(&v17 + 1) + 8 * v12) supportedConnectors];
          v13 = VGChargingConnectorTypeOptionsUnpacked();
          (v7[2])(v7, v13);

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v14 = [v6 allObjects];
  v15 = [*(a1 + 40) mapView];
  [v15 setShowsLiveEVData:{objc_msgSend(v14, "count") != 0}];

  v16 = [*(a1 + 40) mapView];
  [v16 setSupportedEVConnectorTypes:v14];
}

void sub_100DBBC18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9) unsignedIntegerValue];
        v10 = GEOEvChargingConnectorTypeFromVGConnectorType();
        if (v10)
        {
          v11 = [NSNumber numberWithInt:v10];
          [v4 addObject:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }
}

void sub_100DBCA14(uint64_t a1)
{
  [*(a1 + 32) _updateInnerLayoutGuideWithTopViewController:*(a1 + 40)];
  if ([*(a1 + 32) _isCurrentUserInterfaceIdiomMac])
  {
    [*(a1 + 32) setNeedsUpdateComponent:@"weatherOverlay" animated:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) viewReady];
  }

  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 48) mapViewResponder];
    [v3 _updateMapViewResponderTargetForObject:v4];
  }

  else
  {
    [*(a1 + 32) _updateMapViewResponderTargetForObject:*(a1 + 40)];
  }

  [*(a1 + 32) updateThemeViewAndControllers];
  [*(a1 + 32) setNeedsUserActivityUpdate];
  [*(a1 + 32) setNeedsUpdateOfSupportedInterfaceOrientations];
  v5 = [*(a1 + 32) _maps_mapsSceneDelegate];
  v6 = [v5 appCoordinator];

  [v6 displayAnyEnqueuedFixedProblemNotification];
}

id sub_100DBE2A4(uint64_t a1)
{
  v1 = [*(a1 + 32) floatingControlsViewController];
  v2 = [v1 settingsButtonPopoverSourceView];

  return v2;
}

id sub_100DBE784(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100DBE800;
  v3[3] = &unk_101661650;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v3[5] = v1;
  return [UIView performWithoutAnimation:v3];
}

void sub_100DBE800(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsController];
  [v2 setMapViewMode:*(a1 + 40) animated:0];
}

void sub_100DBF308(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingContexts];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) contexts];
  }

  v5 = v4;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v5 reverseObjectEnumerator];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  v21 = v5;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      v12 = [*(a1 + 32) _containerViewControllerWithContext:v11];
      v13 = [*(a1 + 32) cardsOverlay];

      if (v12 != v13)
      {
        break;
      }

      if (objc_opt_respondsToSelector())
      {
        v14 = [v11 desiredCards];
        v15 = *(a1 + 40);
        v16 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v14 count]);
        [v15 insertObjects:v14 atIndexes:v16];

        if (!v8)
        {
          if ([v14 count])
          {
            v8 = &__kCFBooleanTrue;
            if (objc_opt_respondsToSelector())
            {
              v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 allowOnlyStandardCardStyle]);
            }
          }

          else
          {
            v8 = 0;
          }
        }
      }

      if (v7 == ++v10)
      {
        v17 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        v7 = v17;
        if (v17)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = [v8 BOOLValue];
  v19 = [*(a1 + 32) cardsOverlay];
  [v19 setAllowOnlyStandardStyle:v18];

  v20 = [*(a1 + 32) cardsOverlay];
  [v20 setControllerStack:*(a1 + 40) animated:*(a1 + 56) completion:*(a1 + 48)];

  [*(a1 + 32) _refreshHiddenCards];
}

void sub_100DBF5B4(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) allowOnlyStandardCardStyle];
  }

  else
  {
    v2 = 1;
  }

  [*(a1 + 40) setAllowOnlyStandardStyle:v2];
  v3 = [*(a1 + 32) desiredCards];
  [*(a1 + 40) setControllerStack:v3 animated:*(a1 + 56) completion:*(a1 + 48)];
}

void sub_100DBF648(uint64_t a1)
{
  v2 = [*(a1 + 32) cardsOverlay];
  [v2 setChromeContext:0];

  v3 = [*(a1 + 32) cardsOverlay];
  [v3 reset];
}

void sub_100DC09B0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _mapFullyDrawn:v5];
  }
}

void sub_100DC0A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = sub_10000B11C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      [WeakRetained _mapFullyDrawn:0];
      goto LABEL_10;
    }

    v4 = WeakRetained;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    v10 = *(a1 + 40);
    *buf = 138543618;
    v12 = v9;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}@] Map render took too longer than %#.1lfs, forcing overlays to be created now", buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:
}

NSString *__cdecl sub_100DC0BB4(id a1)
{
  BOOL = GEOConfigGetBOOL();
  v2 = @"OFF";
  if (BOOL)
  {
    v2 = @"ON";
  }

  return [NSString stringWithFormat:@"CL-PedMM: %@", v2];
}

void sub_100DC0EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100DC0ED8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if ([*(a1 + 32) _shouldShowBrowseVenueFloatingControl])
    {
      v3 = [v7 _prevailingSearchButtonOverlay];
      v4 = [v7 browseVenueOverlay];
      if (v3 == v4)
      {
        v5 = [*(*(a1 + 32) + 1000) isLookAroundButtonContainerExpanded];
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 1;
    }

    v6 = [v7 browseVenueOverlay];
    [v6 setHidden:v5 animated:*(*(*(a1 + 40) + 8) + 24)];

    WeakRetained = v7;
  }
}

void sub_100DC1118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100DC1150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained redoSearchOverlay];
    v3 = [v5 coordinator];
    v4 = [v3 containerViewController];
    [v2 updateContainerStyle:{objc_msgSend(v4, "containerStyle")}];

    WeakRetained = v5;
  }
}

void sub_100DC11E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained _prevailingSearchButtonOverlay];
    v4 = [v7 redoSearchOverlay];
    v5 = v3 != v4;

    v6 = [v7 redoSearchOverlay];
    [v6 setHidden:v5 animated:*(*(*(a1 + 32) + 8) + 24)];

    WeakRetained = v7;
  }
}

void sub_100DC144C(uint64_t a1)
{
  v5 = [*(a1 + 32) coordinator];
  v2 = [v5 containerViewController];
  v3 = [v2 containerStyle];
  v4 = [*(a1 + 32) lookAroundOverlay];
  [v4 setContainerStyle:v3];
}

void sub_100DC14D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _canShowLookAroundButton];
  v11 = [*(a1 + 32) _lookAroundButtonPlaceCardItem];
  v3 = [*(a1 + 32) lookAroundOverlay];
  v4 = [v3 isHidden];

  v5 = v2 ^ 1;
  if ((v5 & 1) == 0 && v4)
  {
    v6 = [v11 mapItem];
    if (v6)
    {
      v7 = [v11 mapItem];
      v5 = [LookAroundButtonContainerViewController isIncompleteMapItem:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = [*(a1 + 32) lookAroundOverlay];
  v9 = [v11 mapItem];
  [v8 showLookAroundPreviewForMapItem:v9 isMarkedLocation:objc_msgSend(v11 willChangeHidden:"isDroppedPin") animated:{v4 ^ v5, *(a1 + 40)}];

  v10 = [*(a1 + 32) lookAroundOverlay];
  [v10 setHidden:v5 animated:*(a1 + 40)];
}

void sub_100DC22B8(uint64_t a1)
{
  [*(*(a1 + 32) + 784) setActive:*(a1 + 40) != 0];
  [*(*(a1 + 32) + 792) setActive:*(a1 + 40) == 0];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 window];
    v4 = [*(*(a1 + 32) + 768) window];

    if (v3 == v4)
    {
      [NSLayoutConstraint deactivateConstraints:*(a1 + 48)];
      v5 = [*(a1 + 40) constraintsForPositionInStatusBarBackgroundView:*(*(a1 + 32) + 768)];
      [NSLayoutConstraint activateConstraints:v5];
    }
  }

  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"IOSBasedChromeStatusBarHeightDidUpdateNotification" object:*(a1 + 32)];
}

void sub_100DC259C(uint64_t a1)
{
  v6 = [*(a1 + 32) _currentContainerViewController];
  v2 = [v6 containerStyle];
  v3 = [*(a1 + 32) weatherOverlay];
  v4 = [v3 containerStyle];

  if (v4 != v2)
  {
    v5 = [*(a1 + 32) weatherOverlay];
    [v5 setContainerStyle:v2];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_100DC2648(uint64_t a1)
{
  v2 = [*(a1 + 32) _canShowWeather];
  v3 = [*(a1 + 32) weatherOverlay];
  [v3 setHidden:v2 ^ 1 animated:*(a1 + 40)];
}

void sub_100DC2FE0(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal_topContextWantsCompassLayoutControl];
  if ([*(a1 + 32) _isCurrentUserInterfaceIdiomMac])
  {
    v3 = [*(a1 + 32) floatingControlsOverlay];
    [v3 setAutomaticallyUpdateCompassInsets:v2 ^ 1];
  }

  else
  {
    v3 = [*(a1 + 32) mapView];
    [v3 setCompassEnabled:v2];
  }

  v4 = [*(a1 + 32) floatingControlsOverlay];
  v5 = [v4 mapViewDelegate];
  v6 = [*(a1 + 32) mapView];
  [v5 mapView:v6 regionDidChangeAnimated:0];

  v7 = sub_10000B11C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v21 = 134217984;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "IOSChrome floating controls -> %lu", &v21, 0xCu);
  }

  [*(a1 + 32) _updateFloatingControlsDidChangePitching:0 animated:0];
  [*(a1 + 32) _updateFloatingControlsDidChangeYaw:0 animated:0];
  v9 = *(a1 + 40) > 0;
  v10 = [*(a1 + 32) overlayController];
  v11 = [*(a1 + 32) floatingControlsOverlay];
  [v10 setViewportConstraintsEnabled:v9 forOverlay:v11];

  if (*(a1 + 41))
  {
    if (+[PedestrianARSessionTask isPedestrianARModeSupported])
    {
      v15 = *(a1 + 32);
      if (!v15[103])
      {
        v16 = [v15 appCoordinator];
        v17 = [v16 platformController];
        v18 = [v17 pedestrianARSessionStateManager];
        v19 = *(a1 + 32);
        v20 = *(v19 + 824);
        *(v19 + 824) = v18;

        [*(*(a1 + 32) + 824) addObserver:?];
      }
    }
  }

  else
  {
    v12 = *(*(a1 + 32) + 824);
    if (v12)
    {
      [v12 removeObserver:?];
      v13 = *(a1 + 32);
      v14 = *(v13 + 824);
      *(v13 + 824) = 0;
    }
  }
}

void sub_100DC3224(uint64_t a1)
{
  v2 = [*(a1 + 32) floatingControlsOverlay];
  [v2 setHidden:*(a1 + 40) == 0 animated:*(a1 + 48)];
}

void sub_100DC3284(uint64_t a1)
{
  v2 = [*(a1 + 32) overlayController];
  v1 = [v2 overlayContentView];
  [v1 layoutIfNeeded];
}

void sub_100DC3388(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal_topContextMapScaleFeatureVisibility];
  v3 = [*(a1 + 32) mapScaleOverlay];
  [v3 setScaleVisibility:v2];
}

id sub_100DC37A8(uint64_t a1)
{
  [*(a1 + 32) updateComponentsIfNeeded:1 withAnimation:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 runInCurrentContext];
}

id sub_100DC4208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained currentTraits];

  return v2;
}

void sub_100DC4254(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 traitCollection];
    WeakRetained[112] = [v4 userInterfaceIdiom];
  }
}

void sub_100DC42D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[912] = GEOConfigGetBOOL();
    WeakRetained = v2;
  }
}

void sub_100DC489C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100DC48C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  else
  {
    _GEOConfigGetDecodedValueWithSource();
  }
  v2 = ;

  return v2;
}

void sub_100DC491C(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    _GEOConfigSetEncodedValue();
  }
}

void sub_100DC4990(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      (*(v2 + 16))();
    }

    else
    {
      _GEOConfigGetDecodedValueWithSource();
    }
    v3 = ;
    (*(*(a1 + 32) + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained update];
}

void *sub_100DC4BB8(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:*(a1 + 32)];

  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
  }

  v5 = v4;

  return v4;
}

void sub_100DC4C24(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v9)
  {
    [v3 setObject:v9 forKey:v5];
  }

  else
  {
    [v3 removeObjectForKey:v5];
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 synchronize];

  v7 = *(a1 + 40);
  v8 = v9;
  if (v7)
  {
    (*(v7 + 16))(v7, v9);
    v8 = v9;
  }
}

id sub_100DC5240()
{
  GEOConfigGetDouble();
  v0 = [NSNumber numberWithDouble:?];
  v1 = [v0 stringValue];

  return v1;
}

uint64_t sub_100DC52A4(uint64_t a1, void *a2)
{
  [a2 doubleValue];

  return GEOConfigSetDouble();
}

id sub_100DC53A4()
{
  v0 = [NSNumber numberWithUnsignedLongLong:GEOConfigGetUint64()];
  v1 = [v0 stringValue];

  return v1;
}

uint64_t sub_100DC540C(uint64_t a1, void *a2)
{
  [a2 longLongValue];

  return GEOConfigSetUint64();
}

id sub_100DC5510()
{
  v0 = [NSNumber numberWithUnsignedInteger:GEOConfigGetUInteger()];
  v1 = [v0 stringValue];

  return v1;
}

uint64_t sub_100DC5578(uint64_t a1, void *a2)
{
  [a2 longLongValue];

  return GEOConfigSetUInteger();
}

id sub_100DC567C()
{
  v0 = [NSNumber numberWithInteger:GEOConfigGetInteger()];
  v1 = [v0 stringValue];

  return v1;
}

uint64_t sub_100DC56E4(uint64_t a1, void *a2)
{
  [a2 integerValue];

  return GEOConfigSetInteger();
}

id sub_100DC5934(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:*(a1 + 32)];

  if (v3)
  {
    v4 = [v2 stringForKey:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100DC59BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v3 forKey:*(a1 + 32)];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 synchronize];
}

uint64_t sub_100DC5CBC(uint64_t a1, float a2)
{
  v3 = fmin(fmax(*(a1 + 40), a2), *(a1 + 48));
  GEOConfigSetDouble();
  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);
    v4.n128_f64[0] = v3;

    return v6(v4);
  }

  return result;
}

uint64_t sub_100DC5EC4(uint64_t a1, float a2)
{
  v3 = fmin(fmax(*(a1 + 40), a2), *(a1 + 48));
  GEOConfigSetDouble();
  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);
    v4.n128_f64[0] = v3;

    return v6(v4);
  }

  return result;
}

float sub_100DC60A0(uint64_t a1)
{
  Uint64 = GEOConfigGetUint64();
  v3 = *(a1 + 48);
  if (Uint64 > v3)
  {
    v3 = Uint64;
  }

  if (v3 >= *(a1 + 56))
  {
    return *(a1 + 56);
  }

  return v3;
}

uint64_t sub_100DC60E4(uint64_t a1)
{
  GEOConfigSetUint64();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

float sub_100DC62C4(uint64_t a1)
{
  UInteger = GEOConfigGetUInteger();
  v3 = *(a1 + 48);
  if (UInteger > v3)
  {
    v3 = UInteger;
  }

  if (v3 >= *(a1 + 56))
  {
    return *(a1 + 56);
  }

  return v3;
}

uint64_t sub_100DC6308(uint64_t a1)
{
  GEOConfigSetUInteger();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

float sub_100DC64E8(uint64_t a1)
{
  Integer = GEOConfigGetInteger();
  v3 = *(a1 + 48);
  if (Integer > v3)
  {
    v3 = Integer;
  }

  if (v3 >= *(a1 + 56))
  {
    return *(a1 + 56);
  }

  return v3;
}

uint64_t sub_100DC652C(uint64_t a1)
{
  GEOConfigSetInteger();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

float sub_100DC6720(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:*(a1 + 32)];

  if (v3)
  {
    [v2 floatForKey:*(a1 + 32)];
    v5 = fmaxf(fminf(v4, *(a1 + 44)), *(a1 + 48));
  }

  else
  {
    v5 = *(a1 + 40);
  }

  return v5;
}

void sub_100DC67A4(uint64_t a1, float a2)
{
  v7 = +[NSUserDefaults standardUserDefaults];
  *&v4 = a2;
  [v7 setFloat:*(a1 + 32) forKey:v4];
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 synchronize];

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(a2);
  }
}

id sub_100DC6A4C(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v3 = [NSString stringWithValidatedFormat:v2 validFormatSpecifiers:@"%f" error:&v5, a2];

  return v3;
}

uint64_t sub_100DC6C88(uint64_t a1)
{
  if ((_GEOConfigHasValue() & 1) == 0)
  {
    return *(a1 + 48);
  }

  return GEOConfigGetBOOL();
}

uint64_t sub_100DC6CDC(uint64_t a1)
{
  GEOConfigSetBOOL();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_100DC6FA8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    return *(a1 + 48);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 BOOLForKey:v4];
}

uint64_t sub_100DC7008(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setBool:a2 forKey:*(a1 + 40)];
  [*(a1 + 32) synchronize];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100DC8914(id a1)
{
  v14[0] = NSFontAttributeName;
  v1 = [UIFont boldSystemFontOfSize:20.0];
  v15[0] = v1;
  v14[1] = NSForegroundColorAttributeName;
  v2 = +[UIColor labelColor];
  v3 = MKServerFormattedStringArtworkFeatureTypeAttributeKey;
  v15[1] = v2;
  v15[2] = &off_1016E9E30;
  v4 = MKServerFormattedStringArtworkSizeAttributeKey;
  v14[2] = MKServerFormattedStringArtworkFeatureTypeAttributeKey;
  v14[3] = MKServerFormattedStringArtworkSizeAttributeKey;
  v5 = MKServerFormattedStringArtworkLimitToLineHeightAttributeKey;
  v14[4] = MKServerFormattedStringArtworkLimitToLineHeightAttributeKey;
  v15[3] = &off_1016E9E48;
  v15[4] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v7 = qword_10195F1C0;
  qword_10195F1C0 = v6;

  v8 = [UIFont systemFontOfSize:13.0, NSFontAttributeName];
  v13[0] = v8;
  v12[1] = NSForegroundColorAttributeName;
  v9 = +[UIColor labelColor];
  v13[1] = v9;
  v13[2] = &off_1016E9E30;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v5;
  v13[3] = &off_1016E9E48;
  v13[4] = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  v11 = qword_10195F1C8;
  qword_10195F1C8 = v10;
}

void sub_100DCA7CC(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 5)
  {
    v7 = [*(a1 + 32) navigationItem];
    v4 = [v7 searchController];
    v5 = [v4 searchBar];
    v6 = [v5 searchTextField];
    [v6 becomeFirstResponder];
  }
}

void sub_100DCAE64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100DCAE80(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 mutableCopy];

    v5 = [v4 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
    [WeakRetained setFullCategoryList:v5];

    v6 = [WeakRetained fullCategoryList];
    v7 = [v6 copy];
    [WeakRetained setPartialCategoryList:v7];

    v8 = [WeakRetained searchBarDefaultPlaceholder];
    v9 = [WeakRetained navigationItem];
    v10 = [v9 searchController];
    v11 = [v10 searchBar];
    [v11 setPlaceholder:v8];

    v12 = [WeakRetained selectedCategoryNames];
    [WeakRetained updateSelectedCategoryNames:v12];
  }
}

void sub_100DCB2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DCB2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100DCB628;
  v20[4] = sub_100DCB638;
  v21 = 0;
  v4 = *(a1 + 32);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100DCB640;
  v19[3] = &unk_101658EA0;
  v19[4] = v20;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DCB650;
  v18[3] = &unk_101658EC8;
  v18[4] = v20;
  v5 = [v3 addTextFieldRowWithTitle:@"Name" placeholderText:v4 inputType:0 get:v19 set:v18];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100DCB628;
  v16[4] = sub_100DCB638;
  v17 = +[NSMutableArray array];
  if (*(a1 + 56) == 1)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100DCB660;
    v15[3] = &unk_1016596E8;
    v15[4] = v16;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100DCB670;
    v14[3] = &unk_101659710;
    v14[4] = v16;
    v6 = [v3 addCheckmarkRowsGroupWithContent:&stru_101654D50 get:v15 set:v14];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DCB6F4;
  v8[3] = &unk_101661458;
  v11 = v20;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = v16;
  objc_copyWeak(&v13, (a1 + 48));
  v7 = [v3 addButtonRowWithTitle:@"Start Sharing" action:v8];
  objc_destroyWeak(&v13);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v20, 8);
}

void sub_100DCB5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100DCB628(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100DCB670(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a2;
  v4 = [v3 containsObject:?];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    [v5 removeObject:v6];
  }

  else
  {
    [v5 addObject:v6];
  }
}

void sub_100DCB6F4(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (!v2)
  {
    v2 = *(a1 + 32);
  }

  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  v5 = (*(*(a1 + 40) + 16))();
  v6 = +[MSPSharedTripService sharedInstance];
  v7 = [v6 receivers];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100DCBA28;
  v20[3] = &unk_101654D78;
  v8 = v4;
  v21 = v8;
  v9 = [v7 indexOfObjectPassingTest:v20];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = sub_1000946AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 handleForIDS];
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "DEBUG PANEL: will attempt to share with virtual receiver %{public}@", buf, 0xCu);
    }

    v12 = +[MSPSharedTripService sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100DCBA84;
    v17[3] = &unk_101654DA0;
    objc_copyWeak(&v19, (a1 + 64));
    v18 = v5;
    [v12 startSharingWithContact:v18 completion:v17];

    objc_destroyWeak(&v19);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      v14 = [NSString stringWithFormat:@"'%@' Already Exists", v5];
      v15 = [UIAlertController alertControllerWithTitle:v14 message:@"Choose a different name for your new Virtual Receiver" preferredStyle:1];

      v16 = [UIAlertAction actionWithTitle:@"OK" style:1 handler:0];
      [v15 addAction:v16];

      [WeakRetained presentViewController:v15 animated:1 completion:0];
    }
  }
}

id sub_100DCBA28(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 displayName];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_100DCBA84(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = sub_1000946AC();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [*(a1 + 32) handleForIDS];
        *buf = 138543618;
        v21 = v9;
        v22 = 2114;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "DEBUG PANEL: error sharing with virtual receiver %{public}@: %{public}@", buf, 0x16u);
      }

      v10 = [(__CFString *)v5 debugDescription];
      v11 = [v10 copy];
      v12 = [UIAlertController alertControllerWithTitle:@"Error Sharing" message:v11 preferredStyle:1];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100DCBD00;
      v18[3] = &unk_10165F220;
      v19 = v12;
      v13 = v12;
      v14 = [UIAlertAction actionWithTitle:@"OK" style:1 handler:v18];
      [v13 addAction:v14];

      [WeakRetained presentViewController:v13 animated:1 completion:0];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 32) handleForIDS];
        v16 = v15;
        if (a2 > 4)
        {
          v17 = @"Unknown";
        }

        else
        {
          v17 = off_101654E08[a2];
        }

        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "DEBUG PANEL: sharing with virtual receiver %{public}@ via %{public}@", buf, 0x16u);
      }

      [WeakRetained rebuildSections];
    }
  }
}

void sub_100DCBD10(id a1, MapsDebugCheckmarkRowsGroup *a2)
{
  v6 = a2;
  v2 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"iOS 26+" subtitle:@"RoutingPathLegs value:MSR, WGS84 elevation", &off_1016E9E60];
  v3 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"iOS 16+" subtitle:@"RoutingPathLegs value:MSR", &off_1016E9E78];
  v4 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"iOS 15" subtitle:@"RoutingPathLegs value:no MSR", &off_1016E9E90];
  v5 = [(MapsDebugCheckmarkRowsGroup *)v6 addRowWithTitle:@"iOS 13-14" subtitle:@"No RoutingPathLegs value:no MSR", &off_1016E9EA8];
  [(MapsDebugCheckmarkRowsGroup *)v6 setAllowMultipleSelection:1];
  [(MapsDebugCheckmarkRowsGroup *)v6 setMinimumSelectionCount:0];
}

void sub_100DCC11C(uint64_t a1, void *a2)
{
  v26 = a2;
  v2 = [MSPSharedTripContact capabilityTypeForVirtualReceiver:*(a1 + 32)];
  if (v2 > 4)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = off_101654E08[v2];
  }

  v4 = [NSString stringWithFormat:@"Sharing via %@", v3];
  v5 = [*(a1 + 32) handleForIDS];
  v6 = [v26 addReadOnlyRowWithTitle:v4 value:v5];

  [MSPSharedTripContact capabilityVersionsForVirtualReceiver:*(a1 + 32)];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v27)
  {
    v24 = *v35;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v34 + 1) + 8 * i) unsignedIntegerValue];
        v9 = v8;
        v10 = @"Unknown";
        if (v8 <= 3)
        {
          v10 = off_101654DE8[v8];
        }

        v11 = [UIImage systemImageNamed:@"play"];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100DCC638;
        v33[3] = &unk_101654C68;
        v33[4] = *(a1 + 32);
        v33[5] = v9;
        v12 = [UIAction actionWithTitle:@"Start" image:v11 identifier:0 handler:v33];
        v38[0] = v12;
        v13 = [UIImage systemImageNamed:@"stop"];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100DCC644;
        v32[3] = &unk_101654C68;
        v32[4] = *(a1 + 32);
        v32[5] = v9;
        v14 = [UIAction actionWithTitle:@"Stop" image:v13 identifier:0 handler:v32];
        v38[1] = v14;
        v15 = [NSArray arrayWithObjects:v38 count:2];
        v16 = [UIMenu menuWithTitle:@"Live Updates" children:v15];

        v17 = [v26 addMenuRowWithTitle:v10 menu:v16];
        v18 = [*(a1 + 32) handleForDeviceVersion:v9];
        v19 = [v18 componentsSeparatedByString:@"/"];
        v20 = [v19 firstObject];

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100DCC650;
        v30[3] = &unk_101654C90;
        v31 = v20;
        v21 = v20;
        [v17 setConfigureBlock:v30];
      }

      v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v27);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100DCC6E0;
  v28[3] = &unk_101661340;
  v28[4] = *(a1 + 32);
  objc_copyWeak(&v29, (a1 + 40));
  v22 = [v26 addButtonRowWithTitle:@"Stop Sharing" action:v28];
  objc_destroyWeak(&v29);
}

void sub_100DCC650(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v4 setSecondaryText:v3];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  v5 = [v4 secondaryTextProperties];

  [v5 setFont:v6];
}

void sub_100DCC6E0(uint64_t a1)
{
  v2 = +[MSPSharedTripService sharedInstance];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DCC7A8;
  v4[3] = &unk_1016600B8;
  objc_copyWeak(&v5, (a1 + 40));
  [v2 stopSharingWithContact:v3 completion:v4];

  objc_destroyWeak(&v5);
}

void sub_100DCC7A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained rebuildSections];
    WeakRetained = v2;
  }
}

MSPSharedTripContact *__cdecl sub_100DCC7FC(id a1, MSPSharedTripContact *a2, unint64_t a3)
{
  v3 = a2;
  if ([MSPSharedTripContact isVirtualReceiver:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100DCC85C(id a1, MapsDebugTableSection *a2)
{
  v6 = a2;
  v2 = +[MSPSharedTripService sharedInstance];
  v3 = [v2 sharingIdentity];
  v4 = [v3 description];
  v5 = [(MapsDebugTableSection *)v6 addReadOnlyRowWithTitle:@"Sharing not available" value:v4];
}

id sub_100DCC9E8(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RowSwipe_Delete" value:@"localized string not found" table:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DCCB18;
  v8[3] = &unk_101654E38;
  v9 = v1;
  v4 = v1;
  v5 = [UIContextualAction contextualActionWithStyle:1 title:v3 handler:v8];

  v6 = [UIImage systemImageNamed:@"trash.fill"];
  [v5 setImage:v6];

  return v5;
}

uint64_t sub_100DCCB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

uint64_t sub_100DCCB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

id sub_100DCCB50(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Edit Location [Proactive Tray]" value:@"localized string not found" table:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DCCCA4;
  v9[3] = &unk_101654E38;
  v10 = v1;
  v4 = v1;
  v5 = [UIContextualAction contextualActionWithStyle:0 title:v3 handler:v9];

  v6 = +[UIColor systemOrangeColor];
  [v5 setBackgroundColor:v6];

  v7 = [UIImage systemImageNamed:@"square.and.pencil"];
  [v5 setImage:v7];

  return v5;
}

uint64_t sub_100DCCCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

id sub_100DCCCC0(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RowSwipe_Share" value:@"localized string not found" table:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DCCE14;
  v9[3] = &unk_101654E38;
  v10 = v1;
  v4 = v1;
  v5 = [UIContextualAction contextualActionWithStyle:0 title:v3 handler:v9];

  v6 = +[UIColor systemBlueColor];
  [v5 setBackgroundColor:v6];

  v7 = [UIImage systemImageNamed:@"square.and.arrow.up.fill"];
  [v5 setImage:v7];

  return v5;
}

uint64_t sub_100DCCE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

uint64_t sub_100DCCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

void sub_100DCD19C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100DCD1C0(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 4);
    if (v5 == *(a1 + 32) || [v5 isEqual:?])
    {
      v4[40] = 0;
      [v4 _setBrandIcon:v6 fallbackToMapItemIcon:1];
    }
  }
}

void sub_100DCF50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DCF534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addPhotosWithEntryPoint:1];
    WeakRetained = v2;
  }
}

void sub_100DCF57C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addPhotosWithEntryPoint:2];
    WeakRetained = v2;
  }
}

void sub_100DD5900(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained batteryMonitorTokenWitnessedChangeInBatteryLevel:*(a1 + 32)];
}

void sub_100DD59C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained batteryMonitorTokenWitnessedChangeInBatteryState:*(a1 + 32)];
}

void sub_100DD5C38(id a1)
{
  v1 = objc_alloc_init(BatteryMonitorController);
  v2 = qword_10195F1E0;
  qword_10195F1E0 = v1;
}

id sub_100DD65A0(uint64_t a1)
{
  [*(a1 + 32) startedTest];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 doAfterStartedTestAtLocation:{v3, v4}];
}

uint64_t sub_100DD71B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t sub_100DD7208(uint64_t a1)
{
  v2 = [*(a1 + 32) containeeDelegate];
  [v2 containeeViewControllerGoToPreviousState:*(*(a1 + 32) + 128) withSender:0];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100DD731C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100DD7338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invokeCompletion];
    WeakRetained = v2;
  }
}

void sub_100DD7444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DD7468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invokeCompletion];
    WeakRetained = v2;
  }
}

uint64_t sub_100DD7554(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_100DD7678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DD7694(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentPOIEnrichmentViewController];
    WeakRetained = v2;
  }
}

void sub_100DD778C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DD77A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invokeCompletion];
    WeakRetained = v2;
  }
}

void sub_100DD78D8(id a1, BOOL a2, GEORPThirdPartyPhotoSharingPreference *a3)
{
  if (a2)
  {
    v3 = a3;
    v6 = objc_alloc_init(UGCThirdPartyPhotoSharingSplashViewController);
    [(UGCThirdPartyPhotoSharingSplashViewController *)v6 setModalPresentationStyle:2];
    [(UGCThirdPartyPhotoSharingSplashViewController *)v6 setThirdPartyPhotoSharingPreference:v3];

    v4 = +[UIApplication sharedMapsDelegate];
    v5 = [v4 chromeViewController];
    [v5 _maps_topMostPresentViewController:v6 animated:1 completion:0];
  }
}

void sub_100DD7998(id a1, BOOL a2, int64_t a3)
{
  if (a2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100DD7ADC;
    v12 = sub_100DD7AEC;
    v13 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DD7AF4;
    v7[3] = &unk_1016608A8;
    v7[4] = &v8;
    v3 = [[PushNotificationPrompt alloc] initWithReason:3 authorizationStatus:a3 completion:v7];
    v4 = v9[5];
    v9[5] = v3;

    v5 = +[UIApplication sharedMapsDelegate];
    v6 = [v5 chromeViewController];
    [v6 _maps_topMostPresentViewController:v9[5] animated:1 completion:0];

    _Block_object_dispose(&v8, 8);
  }
}

void sub_100DD7AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100DD7ADC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100DD7AF4(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

BOOL sub_100DD8070(uint64_t a1, void *a2, BOOL *a3)
{
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = [*(a1 + 32) allRatingCategories];
  v8 = [v7 count];

  if (v6 < v8)
  {
    v9 = [*(a1 + 32) allRatingCategories];
    v10 = [v9 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *a3 = [v10 currentState] == 2;

    v11 = [*(a1 + 32) allRatingCategories];
    v12 = [v11 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    v13 = [v12 geoCategoryRating];
    v14 = [v13 value];
    v15 = [v14 categoryName];
    *a2 = [v15 stringValue];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v6 < v8;
}

BOOL sub_100DD81B0(uint64_t a1, void *a2, BOOL *a3)
{
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = [*(a1 + 32) allRatingCategories];
  v8 = [v7 count];

  if (v6 < v8)
  {
    v9 = [*(a1 + 32) allRatingCategories];
    v10 = [v9 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *a3 = [v10 currentState] == 2;

    v11 = [*(a1 + 32) allRatingCategories];
    v12 = [v11 objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    v13 = [v12 geoCategoryRating];
    v14 = [v13 value];
    v15 = [v14 categoryName];
    *a2 = [v15 stringValue];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v6 < v8;
}

void sub_100DD86C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100DD86F4(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  [*(a1 + 32) _presentPushNotificationPromptIfNecessary];
  [*(a1 + 32) _presentThirdPartyPhotoSharePromptIfNecessaryForReviewedPlace:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 invokeCompletion];
}

void sub_100DD8758(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100DD8880;
  v3[3] = &unk_101661340;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 dismissViewControllerAnimated:1 completion:v3];

  objc_destroyWeak(&v5);
}

void sub_100DD881C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentPushNotificationPromptIfNecessary];
    [v3 _presentThirdPartyPhotoSharePromptIfNecessaryForReviewedPlace:*(a1 + 32)];
    [v3 invokeCompletion];
    WeakRetained = v3;
  }
}

void sub_100DD8880(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];

    [v4 _presentPushNotificationPromptIfNecessary];
    [v4 _presentThirdPartyPhotoSharePromptIfNecessaryForReviewedPlace:*(a1 + 32)];
    [v4 invokeCompletion];
    WeakRetained = v4;
  }
}

void sub_100DD8C30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_100DD8C5C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained submissionCompletionWithViewController:*(a1 + 32) enrichmentForm:*(a1 + 40) policy:*(a1 + 64) newReviewedPlace:*(a1 + 48) response:v8 error:v5];
  }
}

void sub_100DD8CF4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained submissionCompletionWithViewController:*(a1 + 32) enrichmentForm:*(a1 + 40) policy:*(a1 + 64) newReviewedPlace:*(a1 + 48) response:v8 error:v5];
  }
}

void sub_100DD96CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100DD96FC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleLookupSubmissionCompletion:v8 lookupError:v5];
  }
}

void sub_100DD9774(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleLookupSubmissionCompletion:v8 lookupError:v5];
  }
}

void sub_100DD9A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DD9A84(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (a2)
    {
      [WeakRetained _startRatingsAndPhotosFlowWithSubmissionLookup];
    }

    else
    {
      [WeakRetained _startPOIEnrichmentFlow];
    }

    WeakRetained = v4;
  }
}

void sub_100DD9BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DD9BE4(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (a3)
    {
      v6 = [WeakRetained submissionStatusDelegate];
      [v6 poiEnrichmentCoordinator:v7 didUpdateUserConsent:a2];
    }

    if (a2)
    {
      [v7 _startRatingsAndPhotosFlowDependentUponReviewedPlaceLookup];
    }

    else
    {
      [v7 invokeCompletion];
    }

    WeakRetained = v7;
  }
}

void sub_100DDA670(uint64_t a1)
{
  [*(a1 + 32) _markAsEditing];
  v2 = [*(a1 + 32) delegate];
  [v2 cell:*(a1 + 32) didReceiveMapItem:*(a1 + 40)];
}

void sub_100DDB010(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5 = [v2 beginningOfDocument];
  v3 = [*(*(a1 + 32) + 16) endOfDocument];
  v4 = [v2 textRangeFromPosition:v5 toPosition:v3];
  [*(*(a1 + 32) + 16) setSelectedTextRange:v4];
}

void sub_100DDEB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DDEB4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sub_100035E6C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get virtual garage. Error: %@", buf, 0xCu);
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DDEC98;
  v10[3] = &unk_101661340;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v5;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
}

void sub_100DDEC98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateVirtualGarage:*(a1 + 32)];
}

void sub_100DDF0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100DDF0C8(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isServerProvidedWaypoint];
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

BOOL sub_100DE0E78(id a1, MapsSession *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100DE19A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100DE19B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100DE19D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RoutePlanningError alloc];
  v5 = [*(a1 + 32) transportType];
  if (v5 > 5)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_101215D00[v5];
  }

  v7 = [(RoutePlanningError *)v4 initWithError:v3 transportType:v6 origin:*(a1 + 40) destination:*(a1 + 48)];

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100DE26C8(uint64_t a1)
{
  if ([&off_1016ED970 containsObject:*(a1 + 32)])
  {
    v2 = [DrivePreferences alloc];
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [(DrivePreferences *)v2 initWithDefaults:v3];

    v5 = [*(a1 + 40) drivePreferences];
    v6 = [v5 isEqual:v4];

    if ((v6 & 1) == 0)
    {
      [*(a1 + 40) _reloadUsingNewDrivePreferences:v4];
    }
  }

  if ([&off_1016EDB38 containsObject:*(a1 + 32)])
  {
    v7 = [WalkPreferences alloc];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [(WalkPreferences *)v7 initWithDefaults:v8];

    v10 = [*(a1 + 40) walkPreferences];
    v11 = [(WatchSyncedPreferences *)v9 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      [*(a1 + 40) _reloadUsingNewWalkPreferences:v9];
    }
  }

  if ([&off_1016EDBC8 containsObject:*(a1 + 32)])
  {
    v12 = [TransitPreferences alloc];
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [(WatchSyncedPreferences *)v12 initWithDefaults:v13];

    v15 = [*(a1 + 40) transitPreferences];
    v16 = [(WatchSyncedPreferences *)v14 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      [*(a1 + 40) _reloadUsingNewTransitPreferences:v14];
    }
  }

  if ([&off_1016EC950 containsObject:*(a1 + 32)])
  {
    v17 = [CyclePreferences alloc];
    v18 = +[NSUserDefaults standardUserDefaults];
    v20 = [(CyclePreferences *)v17 initWithDefaults:v18];

    v19 = [*(a1 + 40) cyclePreferences];
    LOBYTE(v18) = [v19 isEqual:v20];

    if ((v18 & 1) == 0)
    {
      [*(a1 + 40) _reloadUsingNewCyclePreferences:v20];
    }
  }
}

void sub_100DE3560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DE358C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sub_100035E6C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get virtual garage. Error: %@", buf, 0xCu);
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DE36D8;
  v10[3] = &unk_101661340;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v5;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
}

void sub_100DE36D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateVirtualGarage:*(a1 + 32)];
}

uint64_t sub_100DE52EC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v37[0] & 0x7F) << v28;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_65:
        v34 = 24;
        goto LABEL_66;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(GEOLatLng);
      objc_storeStrong((a1 + 8), v21);
      v37[0] = 0;
      v37[1] = 0;
      if (!PBReaderPlaceMark() || ![v21 readFrom:a2])
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v37[0] & 0x7F) << v22;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v24;
      }

LABEL_61:
      v34 = 16;
      goto LABEL_66;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v37[0] & 0x7F) << v14;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_57:
      v34 = 20;
LABEL_66:
      *(a1 + v34) = v20;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

void sub_100DE6388(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_10000BDA4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error deleting recents: %@", &v4, 0xCu);
    }
  }
}

void sub_100DE6570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100DE6588(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100DE65A0(uint64_t a1, void *a2)
{
  v6 = [a2 geoMapItem];
  v3 = [[MKMapItem alloc] initWithGeoMapItem:v6 isPlaceHolderPlace:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100DE68E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100DE6908(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MKMapItem alloc];
  v5 = [v3 geoMapItem];

  v6 = [v4 initWithGeoMapItem:v5 isPlaceHolderPlace:0];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

BOOL sub_100DEA2C8(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = &OBJC_PROTOCOL___MSPHistoryEntryTransitLineItem;
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && ([v7 historyEntry], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "conformsToProtocol:", v4), v8, v9))
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = v5;
    v13 = &OBJC_PROTOCOL___CuratedCollectionHistoryEntry;
    objc_opt_class();
    v14 = v12;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16 && ([v16 historyEntry], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "conformsToProtocol:", v13), v17, v18))
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    v11 = v19 == 0;
  }

  return v11;
}

id sub_100DEB1E8()
{
  if (qword_10195F218 != -1)
  {
    dispatch_once(&qword_10195F218, &stru_101655200);
  }

  v1 = qword_10195F210;

  return v1;
}

void sub_100DEB23C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionIndoorOutdoorAnalyticsRecorder");
  v2 = qword_10195F210;
  qword_10195F210 = v1;
}

uint64_t sub_100DEBA2C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v30 = PBReaderReadString();
          v31 = *(a1 + 24);
          *(a1 + 24) = v30;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_57;
          }

          *(a1 + 32) |= 1u;
          v35 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v38 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v38 & 0x7F) << v24;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v26;
          }

LABEL_53:
          v32 = 20;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_34;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v37 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v37 & 0x7F) << v14;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_49;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_49:
          v32 = 16;
        }

        *(a1 + v32) = v20;
      }

LABEL_57:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100DED5B8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [*(a1 + 32) reportID];
  v4 = [NSString stringWithFormat:@"'%@'", v3];
  v5 = [UIImage systemImageNamed:@"doc.on.doc"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DED71C;
  v9[3] = &unk_101658910;
  v10 = *(a1 + 32);
  v6 = [UIAction actionWithTitle:v4 image:v5 identifier:0 handler:v9];
  [v2 addObject:v6];

  v7 = [UIMenu menuWithChildren:v2];

  return v7;
}

void sub_100DED71C(uint64_t a1)
{
  v2 = [*(a1 + 32) reportID];
  if ([v2 length])
  {
    v1 = +[UIPasteboard generalPasteboard];
    [v1 setString:v2];
  }
}

void sub_100DEDDB0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195F220;
  qword_10195F220 = v1;
}

void sub_100DEE2FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DEE3DC;
  v10[3] = &unk_101660380;
  v11 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v8 = v5;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_100DEE3DC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 40) bodyData];
    v15 = 0;
    v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v15];
    v5 = v15;

    if (v5)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 valueForKeyPath:@"pageData.bubbles.results"];
        v7 = [v6 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          if ([v8 count] >= 0xB)
          {
            v9 = [v8 subarrayWithRange:{0, 10}];

            v8 = v9;
          }

          v10 = [v8 valueForKey:@"id"];
          (*(*(a1 + 56) + 16))();
        }

        else
        {
          v13 = *(a1 + 48);
          v16 = NSLocalizedDescriptionKey;
          v17 = @"Expected array as value for SSURLConnectionRequestResultsKeyJSON but didn't get one.";
          v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
          v8 = [v13 _searchErrorWithUserInfo:v14];

          (*(*(a1 + 56) + 16))();
        }
      }

      else
      {
        v11 = *(a1 + 48);
        v18 = NSLocalizedDescriptionKey;
        v19 = @"Expected dictionary as root JSON object and didn't get one.";
        v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v7 = [v11 _searchErrorWithUserInfo:v12];

        (*(*(a1 + 56) + 16))();
      }
    }
  }
}

void sub_100DEE7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DEE7C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100DEE8D8;
    v8[3] = &unk_10165E308;
    v9 = *(a1 + 32);
    objc_copyWeak(&v10, (a1 + 40));
    [WeakRetained _fetchAppDataForAppIDs:v5 withCompletion:v8];

    objc_destroyWeak(&v10);
  }
}

void sub_100DEE8D8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained partitionedApplicationSuggestionsFromSuggestions:v7];

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_100DEF3E0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36[0] & 0x7F) << v5;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v18 = PBReaderReadData();
          v19 = 24;
          goto LABEL_42;
        }

        if (v13 == 4)
        {
          v18 = PBReaderReadString();
          v19 = 40;
LABEL_42:
          v22 = *(a1 + v19);
          *(a1 + v19) = v18;

          goto LABEL_63;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_63;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SearchResult);
        v15 = 48;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_52;
        }

        v14 = objc_alloc_init(SearchResult);
        v15 = 32;
      }

      objc_storeStrong((a1 + v15), v14);
      v36[0] = 0;
      v36[1] = 0;
      if (!PBReaderPlaceMark() || ![(SearchResult *)v14 readFrom:a2])
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_63:
      v34 = [a2 position];
      if (v34 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 68) |= 4u;
        while (1)
        {
          LOBYTE(v36[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v36[0] & 0x7F) << v23;
          if ((v36[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_57:
        *(a1 + 64) = v29;
        goto LABEL_63;
      }

      if (v13 == 8)
      {
        *(a1 + 68) |= 2u;
        v36[0] = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v31 = v36[0];
        v32 = 16;
        goto LABEL_62;
      }
    }

    else
    {
      if (v13 == 5)
      {
        v18 = PBReaderReadString();
        v19 = 56;
        goto LABEL_42;
      }

      if (v13 == 6)
      {
        *(a1 + 68) |= 1u;
        v36[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v31 = v36[0];
        v32 = 8;
LABEL_62:
        *(a1 + v32) = v31;
        goto LABEL_63;
      }
    }

    goto LABEL_52;
  }

  return [a2 hasError] ^ 1;
}

void sub_100DEFFDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DF006C;
  v4[3] = &unk_1016552A8;
  v4[4] = v2;
  v5 = v1;
  [v3 requestRecentLocationsWithResponse:v4];
}

void sub_100DF006C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MKLocationManager sharedLocationManager];
  v5 = [v4 isAuthorizedForPreciseLocation];

  v6 = &__NSArray0__struct;
  if (v5)
  {
    v6 = v3;
  }

  v7 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DF0164;
  block[3] = &unk_1016605F8;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100DF0164(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(*(a1 + 32) + 8) unlock];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100DF105C(id a1)
{
  v1 = [CardAnimation animationUsingDefaultSpringWithInitialVelocity:0.0 delay:0.0];
  v2 = qword_10195F240;
  qword_10195F240 = v1;
}

void sub_100DF116C(uint64_t a1)
{
  v1 = [*(a1 + 32) trackingController];
  [v1 setMapView:0];
}

void sub_100DF1224(uint64_t a1)
{
  v2 = [*(a1 + 32) chromeViewController];
  v3 = [v2 mapView];
  [v3 _setApplicationState:0];

  v4 = [*(a1 + 32) trackingController];
  v5 = [*(a1 + 32) chromeViewController];
  v6 = [v5 mapView];
  [v4 setMapView:v6];

  v7 = [*(a1 + 32) chromeViewController];
  v8 = [v7 mapView];

  [v8 _setAlwaysShowHeadingIndicatorIfSupported:1];
  [v8 setShowsTraffic:1];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (v8)
  {
    [v8 _cartographicConfiguration];
  }

  *(&v12 + 1) = 2;
  *&v14 = 0;
  v10[0] = v12;
  v10[1] = v13;
  v10[2] = v14;
  v11 = v15;
  [v8 _setCartographicConfiguration:v10];
  v9 = [v8 _mapLayer];
  [v9 setDesiredMapMode:0];
}

void sub_100DF14A0(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) mapView];
  if (a2)
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  [v4 setCamera:*(a1 + 40) animated:v5 & 1];
}

void sub_100DF15E0(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) mapView];
  [v4 setUserTrackingMode:0];

  v7 = [*(a1 + 32) mapView];
  v5 = [*(a1 + 32) mapView];
  [v5 regionThatFits:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  if (a2)
  {
    v6 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
  }

  [v7 setRegion:v6 & 1 animated:?];
}

id sub_100DF2688(uint64_t a1, int a2)
{
  v18 = *&CGAffineTransformIdentity.c;
  v19 = *&CGAffineTransformIdentity.a;
  *&v33.a = *&CGAffineTransformIdentity.a;
  *&v33.c = v18;
  v17 = *&CGAffineTransformIdentity.tx;
  *&v33.tx = v17;
  memset(&v32, 0, sizeof(v32));
  CGAffineTransformMakeScale(&v32, *(a1 + 72), *(a1 + 72));
  if (a2)
  {
    v4 = *(a1 + 80);
    *&v21.m11 = v19;
    *&v21.m13 = v18;
    *&v21.m21 = v17;
    CGAffineTransformRotate(&v33, &v21, v4);
    v5 = *(a1 + 88);
    *&v20.m11 = *&v32.a;
    *&v20.m13 = *&v32.c;
    *&v20.m21 = *&v32.tx;
    CGAffineTransformRotate(&v21, &v20, v5);
    *&v32.a = *&v21.m11;
    *&v32.c = *&v21.m13;
    *&v32.tx = *&v21.m21;
  }

  *&v21.m11 = *&v33.a;
  *&v21.m13 = *&v33.c;
  *&v21.m21 = *&v33.tx;
  [*(a1 + 32) setTransform:{&v21, v17, v18, v19}];
  CGAffineTransformMakeScale(&v31, *(a1 + 96), 1.0);
  v6 = *(a1 + 40);
  *&v21.m11 = *&v31.a;
  *&v21.m13 = *&v31.c;
  *&v21.m21 = *&v31.tx;
  [v6 setTransform:&v21];
  [*(a1 + 40) setAlpha:*(a1 + 104)];
  CGAffineTransformMakeScale(&v30, *(a1 + 72), *(a1 + 72));
  v7 = *(a1 + 48);
  *&v21.m11 = *&v30.a;
  *&v21.m13 = *&v30.c;
  *&v21.m21 = *&v30.tx;
  [v7 setTransform:&v21];
  [*(a1 + 48) setAlpha:*(a1 + 112)];
  *&v21.m11 = *&v32.a;
  *&v21.m13 = *&v32.c;
  *&v21.m21 = *&v32.tx;
  [*(a1 + 56) setTransform:&v21];
  [*(a1 + 56) setAlpha:*(a1 + 112)];
  v8 = *(a1 + 120);
  v9 = *&CATransform3DIdentity.m23;
  *&v20.m21 = *&CATransform3DIdentity.m21;
  *&v20.m23 = v9;
  *&v20.m31 = *&CATransform3DIdentity.m31;
  m33 = CATransform3DIdentity.m33;
  v11 = *&CATransform3DIdentity.m13;
  *&v20.m11 = *&CATransform3DIdentity.m11;
  *&v20.m13 = v11;
  v20.m33 = m33;
  v20.m34 = -0.00025;
  v12 = *&CATransform3DIdentity.m43;
  *&v20.m41 = *&CATransform3DIdentity.m41;
  *&v20.m43 = v12;
  CATransform3DRotate(&v21, &v20, v8, 1.0, 0.0, 0.0);
  v26 = *&v21.m21;
  v27 = *&v21.m23;
  v28 = *&v21.m31;
  v29 = v21.m33;
  v24 = *&v21.m11;
  v25 = *&v21.m13;
  m34 = v21.m34;
  v22 = *&v21.m41;
  v23 = *&v21.m43;
  v14 = *(a1 + 64);
  if (v14)
  {
    [v14 transform3D];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  *&v20.m21 = v26;
  *&v20.m23 = v27;
  *&v20.m31 = v28;
  v20.m33 = v29;
  *&v20.m11 = v24;
  *&v20.m13 = v25;
  v20.m34 = m34;
  *&v20.m41 = v22;
  *&v20.m43 = v23;
  result = CATransform3DEqualToTransform(&v21, &v20);
  if ((result & 1) == 0)
  {
    *&v21.m21 = v26;
    *&v21.m23 = v27;
    *&v21.m31 = v28;
    v21.m33 = v29;
    *&v21.m11 = v24;
    *&v21.m13 = v25;
    *&v21.m41 = v22;
    *&v21.m43 = v23;
    v16 = *(a1 + 64);
    v21.m34 = m34;
    return [v16 setTransform3D:&v21];
  }

  return result;
}

uint64_t sub_100DF294C(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_100DF3558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100DF3570(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 5; ++i)
  {
    result = [*(a1 + 32) numberOfRequestsForType:a2 result:i];
    *(*(*(a1 + 40) + 8) + 24) += result;
  }

  return result;
}

void sub_100DF460C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setRoutePreloadSessions:a2];
  v3 = [*(a1 + 32) tableView];
  [v3 reloadData];
}

void sub_100DF4794(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100DF48D8;
  v13[3] = &unk_1016553D8;
  v13[4] = *(a1 + 32);
  v4 = [NSPredicate predicateWithBlock:v13];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DF4918;
  block[3] = &unk_101661090;
  v8 = *(a1 + 40);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100DF4BB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7 = [v5 copy];
    v30 = a1;
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    v36 = +[NSMutableDictionary dictionary];
    v35 = +[NSMutableDictionary dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = v6;
    obj = v6;
    v34 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v34)
    {
      v38 = 0;
      v39 = 0;
      v10 = 0;
      v33 = *v42;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v10;
          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = [v12 cacheHitCount];
          v14 = [v12 cacheMissCount];
          v15 = [v12 cacheExpiredCount];
          v16 = [v12 appId];
          v17 = [v36 objectForKeyedSubscript:v16];

          if (!v17)
          {
            v17 = +[NSMutableArray array];
            v18 = [v12 appId];
            [v36 setObject:v17 forKeyedSubscript:v18];
          }

          [v17 addObject:v12];
          v19 = [v12 appId];
          v20 = [v35 objectForKeyedSubscript:v19];

          if (!v20)
          {
            v45[0] = &off_1016E9EC0;
            v45[1] = &off_1016E9EF0;
            v46[0] = &off_1016E9ED8;
            v46[1] = &off_1016E9ED8;
            v45[2] = &off_1016E9F08;
            v46[2] = &off_1016E9ED8;
            v21 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
            v20 = [v21 mutableCopy];

            v22 = [v12 appId];
            [v35 setObject:v20 forKeyedSubscript:v22];
          }

          v38 += v13;
          v39 += v14;
          v10 = v37 + v15;
          v23 = [v20 objectForKeyedSubscript:&off_1016E9EC0];
          v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 unsignedIntegerValue] + objc_msgSend(v12, "cacheHitCount"));
          [v20 setObject:v24 forKeyedSubscript:&off_1016E9EC0];

          v25 = [v20 objectForKeyedSubscript:&off_1016E9EF0];
          v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v25 unsignedIntegerValue] + objc_msgSend(v12, "cacheMissCount"));
          [v20 setObject:v26 forKeyedSubscript:&off_1016E9EF0];

          v27 = [v20 objectForKeyedSubscript:&off_1016E9F08];
          v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v27 unsignedIntegerValue] + objc_msgSend(v12, "cacheExpiredCount"));
          [v20 setObject:v28 forKeyedSubscript:&off_1016E9F08];
        }

        v34 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v34);
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v10 = 0;
    }

    *(*(v30 + 32) + 56) = v38;
    *(*(v30 + 32) + 64) = v39;
    *(*(v30 + 32) + 72) = v10;
    [*(v30 + 32) setPlaceCacheResultsDict:v36];
    v29 = [v35 copy];
    [*(v30 + 32) setPlaceCachePerAppCountsDict:v29];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100DF5080;
    block[3] = &unk_101661B18;
    block[4] = *(v30 + 32);
    dispatch_async(&_dispatch_main_q, block);

    v6 = v31;
  }
}

void sub_100DF5080(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void sub_100DF521C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 32) + 112) & [v5 usedInterfaces]) != 0)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_100DF5398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    block[7] = v3;
    block[8] = v4;
    [*(a1 + 32) setAppRequestDict:a2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100DF5434;
    block[3] = &unk_101661B18;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100DF5434(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void sub_100DF5B84(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F250;
  qword_10195F250 = v1;
}

id sub_100DF72F8(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) <= 7 && ((0x8Bu >> v1))
  {
    v2 = *(&off_1016554D0 + v1);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:v2 value:@"localized string not found" table:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100DF7930(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 11)
      {
        if (v13 == 12)
        {
          v14 = objc_alloc_init(PersistentDirectionsHistoryItem);
          objc_storeStrong(a1 + 2, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !sub_100DEF3E0(v14, a2))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 15)
        {
          v14 = objc_alloc_init(PersistentAddressBookAddress);
          objc_storeStrong(a1 + 1, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !sub_100DEBA2C(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 10)
        {
          v14 = objc_alloc_init(PersistentSearchRequestHistoryItem);
          objc_storeStrong(a1 + 3, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !sub_100DFB24C(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v13 == 11)
        {
          v14 = objc_alloc_init(PersistentSearchResultHistoryItem);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !sub_100E2B3E0(v14, a2))
          {
            goto LABEL_38;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100DF8F14()
{
  if (qword_10195F268 != -1)
  {
    dispatch_once(&qword_10195F268, &stru_101655558);
  }

  v1 = qword_10195F260;

  return v1;
}

void sub_100DF8F68(id a1)
{
  v1 = os_log_create("com.apple.Maps", "DebugCoreMotionCompassAvailabilityTask");
  v2 = qword_10195F260;
  qword_10195F260 = v1;
}

void sub_100DF929C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100DF92C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = COERCE_DOUBLE(a3);
  v5 = sub_100DF8F14();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 134349314;
    v27 = WeakRetained;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Got device motion update with error: %@", buf, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 motionManager];
  [v8 stopDeviceMotionUpdates];

  v9 = objc_loadWeakRetained((a1 + 32));
  LOBYTE(v8) = [v9 gotDeviceMotionUpdate];

  if ((v8 & 1) == 0)
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 setGotDeviceMotionUpdate:1];

    if (v4 != 0.0)
    {
      v11 = [*&v4 domain];
      if (![v11 isEqualToString:CMErrorDomain])
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = [*&v4 code];

      if (v12 == 102)
      {
        v13 = +[NSUserDefaults standardUserDefaults];
        v11 = [v13 objectForKey:@"kDebugCoreMotionCompassAvailabilityTaskLastErrorAlertDateKey"];

        if (v11)
        {
          v14 = +[NSDate date];
          [v14 timeIntervalSinceDate:v11];
          v16 = v15;
        }

        else
        {
          v16 = 978307200.0;
        }

        GEOConfigGetDouble();
        if (v16 < v17)
        {
          v21 = v17;
          v20 = sub_100DF8F14();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v22 = objc_loadWeakRetained((a1 + 32));
            *buf = 134349568;
            v27 = v22;
            v28 = 2048;
            v29 = v16;
            v30 = 2048;
            v31 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] Last showed error alert too soon (%f seconds ago < %f)", buf, 0x20u);
          }
        }

        else
        {
          v18 = +[NSUserDefaults standardUserDefaults];
          v19 = +[NSDate date];
          [v18 setObject:v19 forKey:@"kDebugCoreMotionCompassAvailabilityTaskLastErrorAlertDateKey"];

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100DF95E4;
          v23[3] = &unk_101661340;
          v24 = *&v4;
          objc_copyWeak(&v25, (a1 + 32));
          dispatch_async(&_dispatch_main_q, v23);
          objc_destroyWeak(&v25);
          v20 = v24;
        }

        goto LABEL_15;
      }
    }
  }

LABEL_16:
}

void sub_100DF95E4(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setTitle:@"[Compass Calibration Error]"];
  v3 = [*(a1 + 32) description];
  [v2 addNote:v3];

  v4 = +[MapsRadarComponent mapsAppNavUIWalkingComponent];
  [v2 setComponent:v4];

  [v2 setClassification:7];
  v5 = [MapsRadarKeyword keywordWithName:@"MAPS377" number:1281664];
  v15 = v5;
  v6 = [NSArray arrayWithObjects:&v15 count:1];
  [v2 addKeywords:v6];

  v7 = sub_100DF8F14();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v13 = 134349056;
    v14 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Will show internal TTR alert", &v13, 0xCu);
  }

  v9 = +[MapsRadarController sharedInstance];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 platformController];
  v12 = [v11 chromeViewController];
  [v9 launchTTRWithRadar:v2 promptTitle:@"there was an error with compass calibration" fromViewController:v12];
}

id sub_100DF9DB0(uint64_t a1)
{
  v1 = objc_alloc_init([*(a1 + 32) fallbackModeControllerClass]);
  v4 = v1;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

uint64_t sub_100DFB24C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41[0] & 0x7F) << v5;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 21)
      {
        if (v13 > 11)
        {
          switch(v13)
          {
            case 0xC:
              v20 = PBReaderReadString();
              v21 = 56;
              goto LABEL_57;
            case 0x14:
              *(a1 + 96) |= 1u;
              v41[0] = 0;
              v22 = [a2 position] + 8;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v32 = v41[0];
              v33 = 8;
              goto LABEL_72;
            case 0x15:
              *(a1 + 96) |= 4u;
              v41[0] = 0;
              v16 = [a2 position] + 8;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v32 = v41[0];
              v33 = 24;
              goto LABEL_72;
          }

          goto LABEL_58;
        }

        if (v13 != 10)
        {
          if (v13 == 11)
          {
            v20 = PBReaderReadString();
            v21 = 64;
LABEL_57:
            v30 = *(a1 + v21);
            *(a1 + v21) = v20;

            goto LABEL_73;
          }

          goto LABEL_58;
        }

        v14 = objc_alloc_init(GEOPlaceSearchRequest);
        v15 = 72;
      }

      else
      {
        if (v13 > 25)
        {
          switch(v13)
          {
            case 0x1A:
              v20 = PBReaderReadString();
              v21 = 88;
              goto LABEL_57;
            case 0x1B:
              *(a1 + 96) |= 0x10u;
              v41[0] = 0;
              v26 = [a2 position] + 8;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v32 = v41[0];
              v33 = 40;
              goto LABEL_72;
            case 0x1C:
              *(a1 + 96) |= 0x20u;
              v41[0] = 0;
              v18 = [a2 position] + 8;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v32 = v41[0];
              v33 = 48;
              goto LABEL_72;
          }

LABEL_58:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_73;
        }

        if (v13 == 22)
        {
          *(a1 + 96) |= 2u;
          v41[0] = 0;
          v28 = [a2 position] + 8;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v32 = v41[0];
          v33 = 16;
          goto LABEL_72;
        }

        if (v13 == 23)
        {
          *(a1 + 96) |= 8u;
          v41[0] = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v32 = v41[0];
          v33 = 32;
LABEL_72:
          *(a1 + v33) = v32;
          goto LABEL_73;
        }

        if (v13 != 24)
        {
          goto LABEL_58;
        }

        v14 = objc_alloc_init(GEOPlaceSearchResponse);
        v15 = 80;
      }

      objc_storeStrong((a1 + v15), v14);
      v41[0] = 0;
      v41[1] = 0;
      if (!PBReaderPlaceMark() || ![v14 readFrom:a2])
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_73:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100DFDB6C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 dictionaryRepresentation];
  if ([v5 count])
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_100DFDD48(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[HomeStorageOutlineNode alloc] initWithDictionaryRepresentation:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

id sub_100DFEAB0()
{
  if (qword_10195F288 != -1)
  {
    dispatch_once(&qword_10195F288, &stru_101655608);
  }

  v1 = qword_10195F280;

  return v1;
}

void sub_100DFEB04(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarChromeNavigationCameraStyleManager");
  v2 = qword_10195F280;
  qword_10195F280 = v1;
}

void sub_100E00294(id a1)
{
  v1 = objc_alloc_init(CarChromeNavigationCameraStyleManager);
  v2 = qword_10195F270;
  qword_10195F270 = v1;
}

void sub_100E010D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E010F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performAutocompleteSearch];
}

void sub_100E01D10(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1[4] + 200)];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 phoneNumbers];
    if ([v6 count])
    {
    }

    else
    {
      v7 = [v3 emailAddresses];
      v8 = [v7 count];

      if (!v8)
      {
        goto LABEL_25;
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [v3 phoneNumbers];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = a1[5];
        v16 = [v14 value];
        v17 = [v16 stringValue];
        LOBYTE(v15) = [v15 containsObject:v17];

        if (v15)
        {
          break;
        }

        v18 = a1[6];
        v19 = [v14 value];
        v20 = [v19 stringValue];
        LOBYTE(v18) = [v18 containsObject:v20];

        if (v18)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [v3 emailAddresses];
      v21 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v32;
LABEL_16:
        v24 = 0;
        while (1)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v9);
          }

          v25 = *(*(&v31 + 1) + 8 * v24);
          v26 = a1[5];
          v27 = [v25 value];
          LOBYTE(v26) = [v26 containsObject:v27];

          if (v26)
          {
            break;
          }

          v28 = a1[6];
          v29 = [v25 value];
          LOBYTE(v28) = [v28 containsObject:v29];

          if (v28)
          {
            break;
          }

          if (v22 == ++v24)
          {
            v22 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v22)
            {
              goto LABEL_16;
            }

            goto LABEL_23;
          }
        }
      }

      else
      {
LABEL_23:

        v30 = a1[7];
        v9 = [MSPSharedTripContact contactsFromCNContact:v3];
        [v30 addObjectsFromArray:v9];
      }
    }
  }

LABEL_25:
}

id sub_100E03634()
{
  v0 = +[GEOPlatform sharedPlatform];
  v1 = [v0 isInternalInstall];

  return v1;
}

id sub_100E03A60(uint64_t a1, void *a2)
{
  v3 = [a2 corrected];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

RAPEntryPoint *__cdecl sub_100E04164(id a1, GEORoadAccessPoint *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[RAPEntryPoint alloc] initWithAccessPoint:v3];

  return v4;
}

void sub_100E05498(uint64_t a1)
{
  v2 = *(a1 + 40);
  [*(*(a1 + 32) + 128) setActive:v2];
  [*(*(a1 + 32) + 136) setActive:v2 ^ 1];
  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

void sub_100E063C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100E06408(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
    v7 = +[UIColor clearColor];
    [v6 setBackgroundColor:v7];

    [v6 setHeaderMode:0];
    v8 = [WeakRetained offlineMapsDataSource];
    v9 = [v8 canRestoreAnyMaps];

    [v6 setFooterMode:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100E0659C;
    v12[3] = &unk_101658830;
    objc_copyWeak(&v13, (a1 + 32));
    [v6 setTrailingSwipeActionsConfigurationProvider:v12];
    v10 = [NSCollectionLayoutSection sectionWithListConfiguration:v6 layoutEnvironment:v4];
    [v10 setContentInsets:{0.0, 16.0, 16.0, 16.0}];
    objc_destroyWeak(&v13);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_100E0659C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained offlineMapsDataSource];
    v7 = [v6 swipeActionsConfigurationForIndexPath:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100E08CC0()
{
  if (qword_10195F2A8 != -1)
  {
    dispatch_once(&qword_10195F2A8, &stru_101655790);
  }

  v1 = qword_10195F2A0;

  return v1;
}

void sub_100E08D14(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionMapsSkyMonitor");
  v2 = qword_10195F2A0;
  qword_10195F2A0 = v1;
}

id sub_100E093E0()
{
  if (qword_10195F2B8 != -1)
  {
    dispatch_once(&qword_10195F2B8, &stru_1016557F0);
  }

  v1 = qword_10195F2B0;

  return v1;
}

void sub_100E09434(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarBasicRouteGeniusModeController");
  v2 = qword_10195F2B0;
  qword_10195F2B0 = v1;
}

void sub_100E0A214(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:*(a1 + 32) name:@"MapsExternalAccessoryUpdatedNotification" object:0];

  v14 = [*(a1 + 40) nextTopContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 32) setRouteGeniusMapSettings:0];
    [*(a1 + 32) _clearAnnotations];
    v5 = [*(a1 + 32) chromeViewController];
    v6 = [v5 mapView];
    v7 = [v6 _mapLayer];
    [v7 setExternalTrafficFeatures:0 areRouteTrafficFeaturesActive:0];

    v8 = [*(a1 + 32) chromeViewController];
    v9 = [v8 searchPinsManager];
    [v9 unregisterPOIShapeLoadingObserver:*(a1 + 32)];

    v10 = +[MNNavigationService sharedService];
    [v10 unregisterObserver:*(a1 + 32)];

    v11 = +[CarDisplayController sharedInstance];
    v12 = [v11 routeGeniusManager];
    [v12 deactivateForAllChromes];

    v13 = +[CarRouteGeniusService sharedService];
    [v13 unregisterObserver:*(a1 + 32)];
  }
}

void sub_100E0A530(uint64_t a1)
{
  v2 = +[MNNavigationService sharedService];
  [v2 registerObserver:*(a1 + 32)];

  v3 = +[CarRouteGeniusService sharedService];
  [v3 registerObserver:*(a1 + 32)];

  v4 = +[CarDisplayController sharedInstance];
  v5 = [v4 routeGeniusManager];
  v6 = [*(a1 + 32) chromeViewController];
  [v5 activateIfPossibleForChrome:v6];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:"_externalDeviceUpdated:" name:@"MapsExternalAccessoryUpdatedNotification" object:0];

  v8 = [*(a1 + 32) chromeViewController];
  v9 = [v8 mapView];
  [v9 _setApplicationState:1];

  v10 = [*(a1 + 32) chromeViewController];
  v11 = [v10 searchPinsManager];
  [v11 registerPOIShapeLoadingObserver:*(a1 + 32)];

  v12 = [*(a1 + 32) chromeViewController];
  v13 = [v12 transientMapSettings];
  [*(a1 + 32) setRouteGeniusMapSettings:v13];

  v14 = [*(a1 + 32) routeGeniusMapSettings];
  v15 = [*(a1 + 32) carChromeViewController];
  v16 = [v15 defaultMapSettings];
  [v14 readFromMapSettings:v16];

  v17 = [*(a1 + 32) routeGeniusMapSettings];
  if ([v17 hasTrackingMode])
  {
    v18 = [*(a1 + 32) routeGeniusMapSettings];
    v19 = [v18 trackingMode];

    if (v19 != 2)
    {
      goto LABEL_5;
    }

    v17 = [*(a1 + 32) routeGeniusMapSettings];
    [v17 setTrackingMode:1];
  }

LABEL_5:
  v20 = [*(a1 + 32) chromeViewController];
  v21 = [v20 mapView];
  [v21 _setShouldSplitRouteLine:1];

  v22 = [*(a1 + 32) wantsNavigationDisplay];
  v24 = [*(a1 + 32) chromeViewController];
  v23 = [v24 mapView];
  [v23 _setShouldAnimatePositionWithRouteMatch:v22];
}

void sub_100E0A7B8(uint64_t a1)
{
  v6 = [*(a1 + 32) previousTopContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 40) _clearAnnotations];
  }

  v2 = *(a1 + 40);
  v3 = +[CarRouteGeniusService sharedService];
  v4 = [v3 suggestion];
  [v2 setCurrentSuggestion:v4];

  v5 = +[MapsExternalDevice sharedInstance];
  [*(a1 + 40) setNavigationAidedDrivingEnabled:{objc_msgSend(v5, "isNavigationAidedDrivingEnabled")}];

  [*(a1 + 40) _updateForCurrentRoute];
}

void sub_100E0A898(uint64_t a1)
{
  GEOConfigGetDouble();
  v3 = v2;
  v4 = sub_100E093E0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 134349312;
    v16 = v5;
    v17 = 2048;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Will throttle location-triggered reframing to max every %#.1lfs", buf, 0x16u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v6 = [MapsThrottler alloc];
  v7 = [*(a1 + 40) mapView];
  v8 = [v7 userLocation];
  v9 = &_dispatch_main_q;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100E0AA88;
  v13[3] = &unk_101656988;
  objc_copyWeak(&v14, buf);
  v10 = [(MapsThrottler *)v6 initWithInitialValue:v8 throttlingInterval:&_dispatch_main_q queue:v13 updateHandler:v3];
  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  *(v11 + 16) = v10;

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void sub_100E0AA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E0AA88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_100E093E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = 134349056;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Will check framing due to location update", &v9, 0xCu);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 recenterCameraOnRouteAnimated:1];

  v5[2](v5);
}

NSString *__cdecl sub_100E0BD28(id a1, GEOComposedWaypoint *a2, unint64_t a3)
{
  v3 = [(GEOComposedWaypoint *)a2 uniqueID];
  v4 = [v3 UUIDString];

  return v4;
}

void sub_100E0C934(uint64_t a1)
{
  v3 = [*(a1 + 40) selectedVehicle];
  v2 = [*(a1 + 32) dataSource];
  [v2 setVehicle:v3];
}

void sub_100E0D8E0(uint64_t a1, uint64_t a2)
{
  v3 = [NSIndexPath indexPathForItem:a2 inSection:0];
  [*(a1 + 32) addObject:v3];
}

void sub_100E0E650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100E0E67C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (sub_10000FA08(WeakRetained) == 5)
    {
      v7 = _UISolariumEnabled();
      v8 = v7 ^ 1;
      if (v7)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v8 = 0;
      v9 = 2;
    }

    v11 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:v9 layoutEnvironment:v4];
    v12 = _UICollectionViewListLayoutSectionAutomaticDimension;
    [v11 setEstimatedRowHeight:_UICollectionViewListLayoutSectionAutomaticDimension];
    [v11 setRowHeight:v12];
    [v11 setSeparatorStyle:(v8 & 1) == 0];
    v13 = [v11 _separatorConfiguration];
    v14 = [v13 copy];

    v15 = [v6 theme];
    v16 = [v15 dynamicHairlineColor];
    [v14 _setColor:v16];

    v17 = 0.0;
    [v14 _setInsets:{0.0, 56.0, 0.0, 0.0}];
    [v11 _setSeparatorConfiguration:v14];
    if ((v8 & 1) == 0)
    {
      v17 = 16.0;
    }

    v10 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v11 layoutEnvironment:v4];
    [v10 setContentInsets:{0.0, v17, 0.0, v17}];
    v18 = +[RouteStepListSectionBackgroundView decorationViewKind];
    v19 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v18];

    [v19 setContentInsets:{0.0, v17, 0.0, v17}];
    v22 = v19;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [v10 setDecorationItems:v20];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_100E0EB8C(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 invalidateLayout];

  v4 = [*(a1 + 32) collectionView];
  [v4 layoutIfNeeded];
}

void sub_100E0F108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E0F12C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained virtualGarageDidUpdate:v3];
}

id sub_100E0F500()
{
  if (qword_10195F2C8 != -1)
  {
    dispatch_once(&qword_10195F2C8, &stru_1016558B8);
  }

  v1 = qword_10195F2C0;

  return v1;
}

void sub_100E0F554(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CardView");
  v2 = qword_10195F2C0;
  qword_10195F2C0 = v1;
}

id sub_100E107A8()
{
  if (qword_10195F2D8 != -1)
  {
    dispatch_once(&qword_10195F2D8, &stru_1016558D8);
  }

  v1 = qword_10195F2D0;

  return v1;
}

void sub_100E107FC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsUserLocationView");
  v2 = qword_10195F2D0;
  qword_10195F2D0 = v1;
}

void sub_100E11EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E11ED8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[48] = GEOConfigGetBOOL();
    WeakRetained = v2;
  }
}

id sub_100E12050()
{
  if (qword_10195F2F8 != -1)
  {
    dispatch_once(&qword_10195F2F8, &stru_101655938);
  }

  v1 = qword_10195F2F0;

  return v1;
}

void sub_100E120A4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "AnimationSuppression");
  v2 = qword_10195F2F0;
  qword_10195F2F0 = v1;
}

void sub_100E12340(id a1, GCDTimer *a2)
{
  if (+[UIView areAnimationsEnabled])
  {
    v2 = sub_100E12050();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Found animations enabled, suppressing", v3, 2u);
    }

    [UIView setAnimationsEnabled:0];
  }
}

void sub_100E12554(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195F2E0;
  qword_10195F2E0 = v1;
}

id sub_100E12F44()
{
  if (qword_10195F308 != -1)
  {
    dispatch_once(&qword_10195F308, &stru_101655980);
  }

  v1 = qword_10195F300;

  return v1;
}

void sub_100E12F98(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = v8;
    v5 = [v4 collectionItem];
    v6 = [v5 mapItem];
    v7 = [v3 firstUserGuideContainingMapItem:v6 requiresOrdering:0];
    [v4 setIsItemInUserCollection:v7 != 0];
  }
}

void sub_100E13060(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CuratedCollectionProvider");
  v2 = qword_10195F300;
  qword_10195F300 = v1;
}

void sub_100E13218(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v3;
    dispatch_group_enter(v4);
    v6 = [v5 libraryOperationsCoordinator];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100E13310;
    v7[3] = &unk_101661B18;
    v8 = *(a1 + 32);
    [v6 determineSavedStateWithCompletion:v7];
  }
}

void sub_100E13448(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v4 = [v2 snapshot];

  [*(*(a1 + 32) + 248) applySnapshot:v4 animatingDifferences:1];
  v3 = [*(a1 + 32) delegate];
  [v3 dataSource:*(a1 + 32) didExpandCellAnimated:1];
}

void sub_100E1520C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E15284;
  block[3] = &unk_101661B18;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100E15284(uint64_t a1)
{
  result = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateLibraryStatusForModels];
  }

  return result;
}

void sub_100E15444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E15468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateSnapshotWithCollection:*(a1 + 32) resolverInfo:*(a1 + 40)];
}

void sub_100E16228(uint64_t a1)
{
  v2 = [*(a1 + 32) detailButton];
  [v2 setTitle:*(a1 + 40) forState:0];

  v3 = [*(a1 + 32) detailButton];
  [v3 setEnabled:*(a1 + 48)];
}

void sub_100E17674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E17698(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [*(a1 + 32) setRoutePlanningAdvisory:WeakRetained[2]];
    v3 = *(a1 + 32);
    v4 = [v5 advisoryDetailButton];
    [v3 setRoutePlanningIncidentsSourceView:v4];

    [*(a1 + 32) presentRoutePlanningViewType:5];
    WeakRetained = v5;
  }
}

BOOL sub_100E186CC(void *a1)
{
  v1 = a1;
  v2 = [v1 advisoryItems];
  if ([v2 count] == 1)
  {
    v3 = [v1 advisoryItems];
    v4 = [v3 firstObject];
    v5 = [v4 cardAction];
    v6 = [v5 type] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100E18E0C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = +[MKMapService sharedService];
    [v3 captureUserAction:250 onTarget:504 forAdvisory:a1[4]];

    if (sub_100E186CC(a1[4]))
    {
      v4 = [a1[4] advisoryItems];
      v5 = [v4 firstObject];
      v6 = [v5 cardAction];
      v7 = [v6 location];

      v8 = [GEOMapRegion alloc];
      [v7 lat];
      v10 = v9;
      [v7 lng];
      v12 = [v8 initWithLatitude:v10 longitude:v11];
      v13 = objc_loadWeakRetained(WeakRetained + 5);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100E19028;
      v19[3] = &unk_1016559A8;
      objc_copyWeak(&v20, a1 + 5);
      [v13 viewController:0 showOfflineMapRegionSelectorForRegion:v12 name:0 dismissalBlock:v19];

      objc_destroyWeak(&v20);
    }

    else
    {
      v14 = objc_loadWeakRetained(WeakRetained + 5);
      [v14 setRoutePlanningAdvisory:a1[4]];

      v15 = objc_loadWeakRetained(WeakRetained + 5);
      v16 = objc_loadWeakRetained(a1 + 6);
      v17 = [v16 advisoryDetailButton];
      [v15 setRoutePlanningIncidentsSourceView:v17];

      v18 = objc_loadWeakRetained(WeakRetained + 5);
      [v18 presentRoutePlanningViewType:5];
    }
  }
}

void sub_100E19028(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 5);
    [v4 viewControllerShowOfflineMaps:0];

    WeakRetained = v5;
  }
}

void sub_100E1D3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100E1D3C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100E1E508(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Maps.commute"];
  v2 = qword_10195F320;
  qword_10195F320 = v1;
}

void sub_100E1EF6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005610();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PlaceRefinementAction resolveMapItem: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 firstObject];
  if (!v8)
  {
    v9 = [[MKPlacemark alloc] initWithCoordinate:0 addressDictionary:{*(a1 + 48), *(a1 + 56)}];
    v8 = [[MKMapItem alloc] initWithPlacemark:v9];
  }

  if (*(a1 + 32))
  {
    [v8 setName:?];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

void sub_100E1F8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100E1F920(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained mapView];
    [v6 _deselectLabelMarkerAnimated:1];

    v7 = [v10 name];
    v8 = MKMapItemIdentifierFromGEOTransitLine();
    [v5 _showTransitLineWithName:v7 identifier:v8 mapRegion:0];

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v10, 0);
    }
  }
}