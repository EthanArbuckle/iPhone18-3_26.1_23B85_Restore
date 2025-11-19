void sub_100001810(uint64_t a1)
{
  v2 = [*(a1 + 32) imageURL];

  if (v2)
  {
    v3 = +[UIPasteboard generalPasteboard];
    v4 = [*(a1 + 32) imageURL];
    v5 = [v4 absoluteString];
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    [v3 setItems:v7];
  }
}

id sub_100001A50(uint64_t a1)
{
  v2 = +[STSFeedbackReporter sharedInstance];
  [v2 searchViewDidAppearWithEvent:21];

  v3 = [*(*(a1 + 32) + 24) searchHeaderView];
  v4 = [v3 searchBar];
  [v4 becomeFirstResponder];

  v5 = *(*(a1 + 32) + 24);

  return [v5 setPresentationStyle:1];
}

id sub_100001BA0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) searchHeaderView];
  v3 = [v2 searchBar];
  [v3 setText:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = v4[1];
  v6 = v4[3];
  v8[4] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001CA4;
  v9[3] = &unk_100008258;
  v9[4] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001CAC;
  v8[3] = &unk_100008258;
  return [v4 _transitionContentFromViewController:v5 toViewController:v6 animations:v9 completion:v8];
}

void sub_100001CAC(uint64_t a1)
{
  v2 = +[STSFeedbackReporter sharedInstance];
  [v2 searchViewDidAppearWithEvent:20];

  v4 = [*(*(a1 + 32) + 24) searchHeaderView];
  v3 = [v4 searchBar];
  [v3 becomeFirstResponder];
}

void sub_100001E28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = v2[3];
  v6[4] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001F14;
  v7[3] = &unk_100008258;
  v7[4] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001F1C;
  v6[3] = &unk_100008258;
  [v2 _transitionContentFromViewController:v3 toViewController:v4 animations:v7 completion:v6];
  v5 = +[STSFeedbackReporter sharedInstance];
  [v5 didEngageResult:*(a1 + 40)];
}

void sub_100001F1C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) pickerViewController];
  v1 = [v2 pickerView];
  [v1 setNeedsLayout];
}

void sub_100002074(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = v2[3];
  v6[4] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002160;
  v7[3] = &unk_100008258;
  v7[4] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002168;
  v6[3] = &unk_100008258;
  [v2 _transitionContentFromViewController:v3 toViewController:v4 animations:v7 completion:v6];
  v5 = +[STSFeedbackReporter sharedInstance];
  [v5 didSearchWithSuggestedQuery:*(a1 + 40)];
}

void sub_100002168(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) pickerViewController];
  v1 = [v2 pickerView];
  [v1 setNeedsLayout];
}

id sub_100002594(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[3];
  v3 = v1[1];
  v5[4] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002654;
  v6[3] = &unk_100008258;
  v6[4] = v1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000265C;
  v5[3] = &unk_100008258;
  return [v1 _transitionContentFromViewController:v2 toViewController:v3 animations:v6 completion:v5];
}

id sub_10000265C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) clear];
  v2 = *(*(a1 + 32) + 16);

  return [v2 enableSearchButton];
}

id sub_1000026B0(uint64_t a1)
{
  [*(*(a1 + 32) + 16) clear];
  v2 = *(*(a1 + 32) + 16);

  return [v2 enableSearchButton];
}

uint64_t sub_100002914(uint64_t a1)
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

void sub_100002D28(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003978(v2);
    }

    objc_end_catch();
    JUMPOUT(0x100002CE8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100002D74(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) searchResultForDict:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

BOOL sub_100002FD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 caseInsensitiveCompare:v5] == 0;
  return v6;
}

uint64_t sub_10000314C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dictForSearchResult:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100003978(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error loading recents %@", &v1, 0xCu);
}