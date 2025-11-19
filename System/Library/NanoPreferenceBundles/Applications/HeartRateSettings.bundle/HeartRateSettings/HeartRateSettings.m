uint64_t sub_14A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1640(id a1)
{
  v6 = objc_alloc_init(HKHealthStore);
  v1 = [HKDisplayTypeController sharedInstanceForHealthStore:v6];
  v2 = [v1 displayTypeWithIdentifier:&off_19420];
  v3 = qword_1E370;
  qword_1E370 = v2;

  v4 = [[HKUnitPreferenceController alloc] initWithHealthStore:v6];
  v5 = qword_1E378;
  qword_1E378 = v4;
}

uint64_t sub_21BC()
{

  return objc_opt_class();
}

id HKHeartRateTinkerLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_18E58 table:@"HeartRateSettings-tinker"];

  return v3;
}

void sub_2F38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3024;
  v9[3] = &unk_186E8;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = v6;
  v13 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v9);
}

id sub_3024(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 56) _setUpHeartRhythmAvailabilityWithProfileIdentifier:?];
  }

  else
  {
    _HKInitializeLogging();
    v3 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      sub_BD0C(a1, v3);
    }

    v2 = [*(a1 + 56) _setUpHeartRhythmAvailability];
  }

  v4 = *(a1 + 56);
  v5 = *(v4 + 168);
  *(v4 + 168) = v2;

  return [*(a1 + 56) reloadSpecifiers];
}

void sub_61B0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_C354(a1);
    }
  }
}

void sub_6ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6B00(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_C4F0();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6BE4;
    block[3] = &unk_18758;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
  }
}

void sub_6BE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_7378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_739C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_C6A8();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_747C;
    block[3] = &unk_18758;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
  }
}

void sub_747C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_7C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7C30(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_C860();
    }
  }
}

void sub_8268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_828C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_8348;
    v8[3] = &unk_187D0;
    v8[4] = WeakRetained;
    v11 = a2;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = v7;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

id sub_8348(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() _cachedInstallStateByAppID];
  v4 = [NSNumber numberWithInteger:a1[7]];
  [v3 setObject:v4 forKey:a1[5]];

  v5 = a1[6];

  return [v5 reloadSpecifiers];
}

void sub_840C(id a1)
{
  qword_1E388 = objc_opt_new();

  _objc_release_x1();
}

void sub_8BF4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_8C88(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void sub_8EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithInteger:a2];
  v4.receiver = v2;
  v4.super_class = HPRFHeartRateBradycardiaThresholdController;
  objc_msgSendSuper2(&v4, "didSelectThresholdValue:", v3);
}

void sub_9038(id a1)
{
  v7.width = 27.0;
  v7.height = 27.0;
  UIGraphicsBeginImageContextWithOptions(v7, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v2 = +[UIColor systemOrangeColor];
  [v2 setStroke];

  CGContextSetLineWidth(CurrentContext, 1.0);
  v8.origin.x = 1.0;
  v8.origin.y = 1.0;
  v8.size.width = 25.0;
  v8.size.height = 25.0;
  CGContextStrokeEllipseInRect(CurrentContext, v8);
  v3 = +[UIColor clearColor];
  [v3 setFill];

  v9.origin.x = 13.0;
  v9.origin.y = 10.0;
  v9.size.width = 14.0;
  v9.size.height = 5.5;
  UIRectFill(v9);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  v5 = qword_1E398;
  qword_1E398 = v4;

  UIGraphicsEndImageContext();
}

void sub_9D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9DC0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_9E78;
    block[3] = &unk_18898;
    block[4] = WeakRetained;
    v8 = a2;
    v7 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_9E78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _cachedInstallStateByAppID];
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v3 setObject:v4 forKey:*(a1 + 40)];

  [*(a1 + 32) updateUIWithInstallState:*(a1 + 48) forBundleID:*(a1 + 40)];
  v5 = *(a1 + 32);

  return [v5 setNeedsLayout];
}

void sub_A07C(uint64_t a1, uint64_t a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A15C;
  block[3] = &unk_188E8;
  v10 = a3;
  v4 = *(a1 + 56);
  v8 = *(a1 + 32);
  v5 = *(&v8 + 1);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  v11 = v8;
  v12 = v6;
  v7 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_A15C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  _HKInitializeLogging();
  v4 = HKLogDefault;
  if (v3)
  {
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_C9B8(a1, v4, v2);
    }

    v5 = &off_194B0;
  }

  else
  {
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 64);
      v8 = v4;
      v9 = NSStringFromSelector(v7);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v15 = 138544130;
      v16 = v6;
      v17 = 2114;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Scheduled installation of app with bundle identifier(%@) on watch(%@)", &v15, 0x2Au);
    }

    v5 = &off_19498;
  }

  v12 = *(a1 + 40);
  v13 = [objc_opt_class() _cachedInstallStateByAppID];
  [v13 setObject:v5 forKey:*(a1 + 48)];

  return [*(a1 + 40) setNeedsLayout];
}

void sub_AE38(id a1)
{
  qword_1E3A8 = objc_opt_new();

  _objc_release_x1();
}

void sub_AEB8(id a1)
{
  qword_1E3B8 = objc_opt_new();

  _objc_release_x1();
}

void sub_AF38(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1E3C8;
  qword_1E3C8 = v1;

  [qword_1E3C8 setEvictsObjectsWhenApplicationEntersBackground:0];
  v3 = qword_1E3C8;

  [v3 setCountLimit:50];
}

void sub_B668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_B684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_B69C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_BC34(uint64_t a1, void *a2, const char *a3)
{
  v4 = a2;
  v10 = NSStringFromSelector(a3);
  sub_8C6C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_BD0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [sub_8C7C() pairingID];
  v7 = [*(a1 + 48) localizedDescription];
  sub_8C60();
  sub_8C6C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

void sub_BDE0()
{
  sub_8C48();
  v2 = v1;
  sub_8C7C();
  objc_opt_class();
  sub_8C54();
  sub_8C60();
  v4 = v3;
  sub_8C6C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_BE88(void *a1)
{
  v1 = [a1 description];
  sub_8C14();
  sub_8BF4(&dword_0, v2, v3, "[%{public}s]: Failed to fetch electrocardiogram's HKFeatureStatus with error: %@", v4, v5, v6, v7, 2u);
}

void sub_BF1C(void *a1)
{
  v1 = [a1 description];
  sub_8C14();
  sub_8BF4(&dword_0, v2, v3, "[%{public}s]: Failed to fetch hypertension notification's HKFeatureStatus with error: %@", v4, v5, v6, v7, 2u);
}

void sub_BFB0()
{
  sub_8C48();
  v1 = objc_opt_class();
  v2 = [v0 description];
  sub_8C14();
  sub_8BF4(&dword_0, v3, v4, "[%{public}@]: Failed to fetch CardioFitness FeatureStatus with error: %@", v5, v6, v7, v8, 2u);
}

void sub_C05C()
{
  sub_8C48();
  objc_opt_class();
  sub_8C54();
  v1 = v0;
  sub_8BF4(&dword_0, v2, v3, "[%{public}@]: Omitting IRN section; failed to determine IRN feature status: %@", v4, v5, v6, v7, v8);
}

void sub_C0EC()
{
  sub_8C48();
  v1 = objc_opt_class();
  v2 = [v0 description];
  sub_8C14();
  sub_8BF4(&dword_0, v3, v4, "[%@]: Failed to fetch Heart Rate Notifications FeatureStatus with error: %@", v5, v6, v7, v8, 2u);
}

void sub_C198()
{
  sub_8C48();
  v1 = objc_opt_class();
  v2 = [v0 description];
  sub_8C14();
  sub_8BF4(&dword_0, v3, v4, "[%@]: Failed to fetch AFibBurden FeatureStatus with error: %@", v5, v6, v7, v8, 2u);
}

void sub_C244()
{
  objc_opt_class();
  sub_8C54();
  v1 = v0;
  sub_8C24();
  sub_8C88(v2, v3, v4, v5, v6);
}

void sub_C2CC()
{
  objc_opt_class();
  sub_8C54();
  v1 = v0;
  sub_8C24();
  sub_8C88(v2, v3, v4, v5, v6);
}

void sub_C354(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 138543618;
  v5 = v1;
  sub_8C60();
  v6 = v2;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to set IRN setting state: %{public}@", &v4, 0x16u);
}

void sub_C3DC()
{
  sub_8C48();
  objc_opt_class();
  sub_8C54();
  sub_8C60();
  v1 = v0;
  sub_8BF4(&dword_0, v2, v3, "[%{public}@]: Failed to determine IRN status; reporting 'off': %{public}@", v4, v5, v6, v7, v8);
}

void sub_C468()
{
  objc_opt_class();
  sub_8C54();
  v1 = v0;
  sub_8C24();
  sub_8C88(v2, v3, v4, v5, v6);
}

void sub_C4F0()
{
  sub_8C48();
  objc_loadWeakRetained((v1 + 32));
  v2 = [sub_8C7C() localizedDescription];
  sub_8C30();
  sub_8BF4(&dword_0, v3, v4, "[%{public}@] Failed to set AFibBurden enabled with error: %{public}@", v5, v6, v7, v8, v9);
}

void sub_C58C(void *a1)
{
  v1 = [a1 description];
  sub_8C14();
  sub_8BF4(&dword_0, v2, v3, "[%{public}s]: Failed to fetch HKFeatureStatus with error: %@", v4, v5, v6, v7, 2u);
}

void sub_C620()
{
  objc_opt_class();
  sub_8C54();
  v1 = v0;
  sub_8C24();
  sub_8C88(v2, v3, v4, v5, v6);
}

void sub_C6A8()
{
  sub_8C48();
  objc_loadWeakRetained((v1 + 32));
  v2 = [sub_8C7C() localizedDescription];
  sub_8C30();
  sub_8BF4(&dword_0, v3, v4, "[%{public}@] Failed to set CardioFitness enabled with error: %{public}@", v5, v6, v7, v8, v9);
}

void sub_C744(void *a1)
{
  v1 = [a1 description];
  sub_8C14();
  sub_8BF4(&dword_0, v2, v3, "[%{public}s]: Failed to fetch HKFeatureStatus with error: %@", v4, v5, v6, v7, 2u);
}

void sub_C7D8()
{
  objc_opt_class();
  sub_8C54();
  v1 = v0;
  sub_8C24();
  sub_8C88(v2, v3, v4, v5, v6);
}

void sub_C860()
{
  sub_8C48();
  objc_loadWeakRetained((v1 + 32));
  v2 = [sub_8C7C() localizedDescription];
  sub_8C30();
  sub_8BF4(&dword_0, v3, v4, "[%{public}@] Failed to set hypertension notifications enabled with error: %{public}@", v5, v6, v7, v8, v9);
}

void sub_C8FC(void *a1)
{
  v1 = [a1 description];
  sub_8C14();
  sub_8BF4(&dword_0, v2, v3, "[%{public}s]: Failed to fetch HKFeatureStatus with error: %@", v4, v5, v6, v7, 2u);
}

void sub_C9B8(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1[5];
  v6 = a1[8];
  v7 = a2;
  v8 = NSStringFromSelector(v6);
  v9 = a1[6];
  v10 = a1[7];
  v11 = *a3;
  v12 = 138544386;
  v13 = v5;
  v14 = 2114;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = v10;
  v20 = 2114;
  v21 = v11;
  _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to schedule installation of app with bundle identifier(%@) on watch(%@) with error: %{public}@", &v12, 0x34u);
}

void sub_CAAC(uint64_t a1, void *a2, const char *a3)
{
  v5 = a2;
  v6 = NSStringFromSelector(a3);
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 2112;
  v12 = 0;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to schedule installation of app with bundle identifier(%@) on watch", &v7, 0x20u);
}