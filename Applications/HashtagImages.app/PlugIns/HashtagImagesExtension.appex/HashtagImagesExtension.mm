void sub_100002188(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error inserting attachment to current coversation %@", &v4, 0xCu);
  }

  [*(a1 + 32) requestPresentationStyle:0];
  [*(a1 + 32) _addResultToRecents:*(a1 + 40)];
  *(*(a1 + 32) + 64) = 1;
}

void sub_10000226C(uint64_t a1)
{
  v2 = +[STSFeedbackReporter sharedInstance];
  [v2 didEngageResult:*(a1 + 32)];
}

void sub_1000022C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained engagementFeedbackBlock];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v4 = [v5 engagementFeedbackBlock];
    v4[2]();
  }
}

void sub_100002488(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setPresentationStyle:1];
  v2 = [*(*(a1 + 32) + 32) searchHeaderView];
  [v2 invalidateIntrinsicContentSize];

  v3 = [*(*(a1 + 32) + 32) view];
  [v3 setNeedsLayout];

  v4 = +[STSFeedbackReporter sharedInstance];
  [v4 searchViewDidAppearWithEvent:21];

  v6 = [*(*(a1 + 32) + 32) searchHeaderView];
  v5 = [v6 searchBar];
  [v5 becomeFirstResponder];
}

id sub_10000261C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) searchHeaderView];
  v3 = [v2 searchBar];
  [v3 setText:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = v4[2];
  v6 = v4[4];
  v8[4] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002720;
  v9[3] = &unk_100008288;
  v9[4] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002728;
  v8[3] = &unk_100008288;
  return [v4 _transitionContentFromViewController:v5 toViewController:v6 animations:v9 completion:v8];
}

void sub_100002728(uint64_t a1)
{
  v2 = +[STSFeedbackReporter sharedInstance];
  [v2 searchViewDidAppearWithEvent:20];

  v4 = [*(*(a1 + 32) + 32) searchHeaderView];
  v3 = [v4 searchBar];
  [v3 becomeFirstResponder];
}

void sub_1000028A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v4 = v2[4];
  v6[4] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002990;
  v7[3] = &unk_100008288;
  v7[4] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002998;
  v6[3] = &unk_100008288;
  [v2 _transitionContentFromViewController:v3 toViewController:v4 animations:v7 completion:v6];
  v5 = +[STSFeedbackReporter sharedInstance];
  [v5 didEngageResult:*(a1 + 40)];
}

void sub_100002998(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) pickerViewController];
  v1 = [v2 pickerView];
  [v1 setNeedsLayout];
}

void sub_100002AF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v4 = v2[4];
  v6[4] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002BDC;
  v7[3] = &unk_100008288;
  v7[4] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002BE4;
  v6[3] = &unk_100008288;
  [v2 _transitionContentFromViewController:v3 toViewController:v4 animations:v7 completion:v6];
  v5 = +[STSFeedbackReporter sharedInstance];
  [v5 didSearchWithSuggestedQuery:*(a1 + 40)];
}

void sub_100002BE4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) pickerViewController];
  v1 = [v2 pickerView];
  [v1 setNeedsLayout];
}

id sub_10000300C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  v3 = v1[2];
  v5[4] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000030CC;
  v6[3] = &unk_100008288;
  v6[4] = v1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000030D4;
  v5[3] = &unk_100008288;
  return [v1 _transitionContentFromViewController:v2 toViewController:v3 animations:v6 completion:v5];
}

id sub_1000030D4(uint64_t a1)
{
  [*(*(a1 + 32) + 24) clear];
  v2 = *(*(a1 + 32) + 24);

  return [v2 enableSearchButton];
}

id sub_100003128(uint64_t a1)
{
  [*(*(a1 + 32) + 24) clear];
  v2 = *(*(a1 + 32) + 24);

  return [v2 enableSearchButton];
}

void sub_100003250(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000032D4;
  block[3] = &unk_100008288;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000032D4(uint64_t a1)
{
  v2 = [*(a1 + 32) searchHeaderView];
  v3 = [v2 searchBar];
  v4 = [v3 isFirstResponder];

  if ((v4 & 1) == 0)
  {
    v6 = [*(a1 + 32) searchHeaderView];
    v5 = [v6 searchBar];
    [v5 becomeFirstResponder];
  }
}

uint64_t sub_100003618(uint64_t a1)
{
  [*(a1 + 32) removeFromParentViewController];
  v2 = [*(a1 + 40) view];
  v3 = [*(a1 + 48) view];
  [v2 setContentView:v3];

  [*(a1 + 48) didMoveToParentViewController:*(a1 + 40)];
  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100003C8C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100004904(v2);
    }

    objc_end_catch();
    JUMPOUT(0x100003C2CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100003CDC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) searchResultForDict:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

BOOL sub_100003F3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 caseInsensitiveCompare:v5] == 0;
  return v6;
}

uint64_t sub_1000040A4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dictForSearchResult:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_100004904(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error loading recents %@", &v1, 0xCu);
}