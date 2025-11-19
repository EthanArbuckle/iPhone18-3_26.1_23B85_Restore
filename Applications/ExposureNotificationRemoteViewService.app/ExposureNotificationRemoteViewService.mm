uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[UIColor systemBlueColor];
  v6 = +[UIView appearance];
  [v6 setTintColor:v5];

  v7 = UIApplicationMain(a1, a2, 0, 0);
  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100000E08(uint64_t a1)
{
  v1 = [*(a1 + 32) activationGroup];
  dispatch_group_leave(v1);
}

void sub_10000104C(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationRequest];
  v3 = [v2 requestType];

  if (v3 == 1)
  {
    v6 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
    v4 = [*(a1 + 32) presentationRequest];
    v5 = [v4 agencyRegion];
    [v6 onboardingDidStartForRegion:v5 source:2];
  }
}

void sub_1000014C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100001500(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100001594;
    v5[3] = &unk_100004198;
    v5[4] = WeakRetained;
    [WeakRetained _handleOnboardingResult:a2 completion:v5];
  }
}

void sub_100001594(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001628;
  v3[3] = &unk_100004198;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void sub_100001634(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000016C8;
    v5[3] = &unk_100004198;
    v5[4] = WeakRetained;
    [WeakRetained _handleKeyReleaseDecision:a2 completion:v5];
  }
}

void sub_1000016C8(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000175C;
  v3[3] = &unk_100004198;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void sub_100001768(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000017FC;
    v5[3] = &unk_100004198;
    v5[4] = WeakRetained;
    [WeakRetained _handlePreApprovalDecision:a2 completion:v5];
  }
}

void sub_1000017FC(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001890;
  v3[3] = &unk_100004198;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void sub_100001978(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = [*(a1 + 32) presentationRequest];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001A38;
  v4[3] = &unk_100004210;
  v5 = *(a1 + 40);
  [v2 remotePresentationRequestDidComplete:v3 completion:v4];
}

void sub_100001B08(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = [*(a1 + 32) presentationRequest];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001BC8;
  v4[3] = &unk_100004210;
  v5 = *(a1 + 40);
  [v2 remotePresentationRequestDidComplete:v3 completion:v4];
}

void sub_100001C98(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = [*(a1 + 32) presentationRequest];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001D58;
  v4[3] = &unk_100004210;
  v5 = *(a1 + 40);
  [v2 remotePresentationRequestDidComplete:v3 completion:v4];
}