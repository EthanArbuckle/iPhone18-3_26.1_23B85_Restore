void sub_100001520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsAnimatedScrolling:1];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 page];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 scrollView];
  [v6 frame];
  v8 = v7;

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 scrollView];
  [v10 contentOffset];
  v12 = (floor((v11 + v8 * -0.5) / v8) + 1.0);
  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 setPage:v12];

  v14 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v10) = [v14 page];

  if (v10 != v4)
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000016CC;
    v19 = &unk_1000102F8;
    v21 = v4;
    objc_copyWeak(&v20, (a1 + 40));
    dispatch_async(&_dispatch_main_q, &v16);
    v15 = objc_loadWeakRetained((a1 + 40));
    [v15 handleViewDidScroll:{*(a1 + 32), v16, v17, v18, v19}];

    objc_destroyWeak(&v20);
  }
}

void sub_1000016CC(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100006478(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained page];
  v5 = *(a1 + 40);
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  if (v4 <= v5)
  {
    [v6 moveLeading];
  }

  else
  {
    [v6 moveTrailing];
  }

  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000065B4((a1 + 40), (a1 + 32), v8);
  }
}

void sub_10000188C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAnimatedScrolling:0];
}

void sub_100001944(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  [v2 resignFirstResponder];

  v3 = [*(a1 + 32) scrollView];
  [v3 becomeFirstResponder];
}

void sub_100002364(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log, uint64_t a12, uint8_t buf)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, &buf, 0x2Cu);
}

void sub_100002D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002D6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _downloadTestImagesUsingResponder:*(a1 + 32)];
}

uint64_t sub_100003370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003388(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got asset data for [%@]", &v9, 0xCu);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000037C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAnimatedScrolling:0];
}

void sub_100003D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003D6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained allResults];
  v4 = [v3 count];

  v5 = objc_loadWeakRetained((a1 + 32));
  v7 = v5;
  if (v4)
  {
    v6 = &off_100010840;
  }

  else
  {
    v6 = &off_100010858;
  }

  [v5 endTestWithStatusCode:v6];
}

id sub_100004DB8(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) tag];

  return [v2 removeResultWithTag:v3];
}

void sub_100004E00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[UIColor clearColor];
  [v1 setBackgroundColor:v2];
}

void sub_100006478(uint64_t a1, os_log_t log)
{
  HIDWORD(v17) = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained page];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 leadingImageViews];
  [v4 count];
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 trailingImageViews];
  [v6 count];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 currentImageView];
  v9 = [v8 image];
  sub_100002328();
  sub_100002364(&_mh_execute_header, v10, v11, "BGN PAGE (%d) -> (%d) = Leading (%lu), Trailing (%lu), Current (%@)", v12, v13, v14, v15, v16, v17, log, WeakRetained, v21);
}

void sub_1000065B4(_DWORD *a1, id *location, os_log_t log)
{
  HIDWORD(v18) = *a1;
  WeakRetained = objc_loadWeakRetained(location);
  [WeakRetained page];
  v4 = objc_loadWeakRetained(location);
  v5 = [v4 leadingImageViews];
  [v5 count];
  v6 = objc_loadWeakRetained(location);
  v7 = [v6 trailingImageViews];
  [v7 count];
  v8 = objc_loadWeakRetained(location);
  v9 = [v8 currentImageView];
  v10 = [v9 image];
  sub_100002328();
  sub_100002364(&_mh_execute_header, v11, v12, "END PAGE (%d) -> (%d) = Leading (%lu), Trailing (%lu), Current (%@)", v13, v14, v15, v16, v17, v18, log, WeakRetained, v22);
}

void sub_1000066F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to download asset: %@", &v2, 0xCu);
}