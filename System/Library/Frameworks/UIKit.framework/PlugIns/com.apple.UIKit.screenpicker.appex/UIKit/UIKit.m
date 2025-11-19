void sub_100000FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001024(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  dispatch_suspend(*(*(a1 + 32) + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateDevices];
}

int64_t sub_100001094(id a1, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 == @"local")
  {
    v7 = -1;
  }

  else if (v5 == @"local")
  {
    v7 = 1;
  }

  else
  {
    v7 = [(__CFString *)v4 localizedCaseInsensitiveCompare:v5];
  }

  return v7;
}

void sub_100001528(uint64_t a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  v2 = *(a1 + 32);
  v4 = v3 - *(v2 + 48);
  if (v4 >= 1.0)
  {

    [v2 updateDevices];
  }

  else if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v5 = 1000000000 * (1.0 - v4);
    v6 = *(*(a1 + 32) + 32);
    v7 = dispatch_time(0, v5);
    dispatch_source_set_timer(v6, v7, v5, 0x3B9ACA00uLL);
    v8 = *(*(a1 + 32) + 32);

    dispatch_resume(v8);
  }
}

void sub_100001968(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) device];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001A34;
  v4[3] = &unk_100008338;
  v5 = *(a1 + 40);
  [v2 setOutputDevice:v3 options:&__NSDictionary0__struct completionHandler:v4];

  [*(a1 + 32) scheduleTeardownEndingBackgroundTask:*(a1 + 48)];
}

void sub_100001A34(uint64_t a1, void *a2)
{
  if ([a2 status] == 2)
  {
    v3 = [*(a1 + 32) device];
    [v3 setSecondDisplayEnabled:1];
  }
}

void sub_10000222C(uint64_t a1)
{
  v2 = [[_UIScreenRouteArrayController alloc] initWithDelegate:0];
  [(_UIScreenRouteArrayController *)v2 selectRoute:0];
  (*(*(a1 + 32) + 16))();
}

void sub_100002358(uint64_t a1)
{
  v3 = +[AVOutputContext outputContext];
  [v3 setApplicationProcessID:{objc_msgSend(*(a1 + 32), "_hostProcessIdentifier")}];
  v2 = [v3 outputDevice];
  [v2 setSecondDisplayEnabled:*(a1 + 48)];

  (*(*(a1 + 40) + 16))();
}

void sub_100002920(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 tableView];
  [v7 moveRowAtIndexPath:v6 toIndexPath:v5];
}