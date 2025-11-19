void sub_38DC(id a1)
{
  qword_C9B0 = dispatch_queue_create("com.apple.HearingDevicesDataSource.query.settings", 0);

  _objc_release_x1();
}

void sub_39C4(uint64_t a1)
{
  v2 = +[HUHearingAidSettings sharedInstance];
  v3 = [v2 pairedHearingAids];
  v4 = v3 != 0;

  obj = *(a1 + 32);
  objc_sync_enter(obj);
  byte_C9C0 = v4;
  objc_sync_exit(obj);
}

void sub_3AFC(uint64_t a1)
{
  v2 = +[HANanoSettings sharedInstance];
  v3 = [v2 pairedHearingAids];
  v4 = v3 != 0;

  obj = *(a1 + 32);
  objc_sync_enter(obj);
  byte_C9C1 = v4;
  objc_sync_exit(obj);
}

void sub_3C34(uint64_t a1)
{
  v2 = +[HANanoSettings sharedInstance];
  v3 = [v2 independentHearingAidSettings];

  obj = *(a1 + 32);
  objc_sync_enter(obj);
  byte_C9C2 = v3;
  objc_sync_exit(obj);
}

void sub_3D60(uint64_t a1)
{
  v2 = +[HANanoSettings sharedInstance];
  v3 = [v2 complicationPreferredDisplayMode];

  obj = *(a1 + 32);
  objc_sync_enter(obj);
  qword_C9C8 = v3;
  objc_sync_exit(obj);
}

void sub_4020(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_4054(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hearingDevicesDidChange:v3];
}

void sub_40B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hearingDevicesDidChange:v3];
}

void sub_410C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hearingDevicePropertiesDidUpdate:v3];
}

void sub_4480(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setValue:v5 forProperty:{objc_msgSend(a2, "unsignedLongLongValue")}];
}