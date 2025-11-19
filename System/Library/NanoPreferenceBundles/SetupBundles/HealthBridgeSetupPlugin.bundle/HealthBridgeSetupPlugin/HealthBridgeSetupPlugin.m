void sub_1154(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      *(*(a1 + 32) + 16) = 0;
      v6 = [v3 copy];
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      *(v7 + 8) = v6;

      v9 = [[HKBridgeSetupEmergencyContactsController alloc] initWithConfiguration:*(*(a1 + 32) + 8)];
      v10 = *(a1 + 32);
      v11 = *(v10 + 24);
      *(v10 + 24) = v9;

      [*(*(a1 + 32) + 24) setMiniFlowDelegate:?];
      v12 = [*(a1 + 32) delegate];
      [v12 buddyControllerReleaseHold:*(a1 + 32)];
LABEL_8:
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping Emergency Contacts and Medical ID setup in Tinker buddy as there is no health profile on device", &v17, 0xCu);
    }

    v15 = [*(a1 + 32) delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v12 = [*(a1 + 32) delegate];
      [v12 buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
      goto LABEL_8;
    }
  }
}

void sub_13B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_14B4;
  block[3] = &unk_C300;
  v13 = a3;
  v14 = a4;
  v8 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v7;
  v17 = v8;
  v9 = v7;
  v10 = v14;
  v11 = v13;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_14B4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v7 = objc_alloc_init(HKHealthStore);
    [v7 setProfileIdentifier:*(a1 + 32)];
    [v7 resume];
    v2 = [*(a1 + 48) delegate];
    v3 = [v2 setupFlowUserInfo];
    v4 = [v3 objectForKeyedSubscript:BPSPairingFlowFamilyMember];

    v5 = [[_HKBridgeSetupConfiguration alloc] initWithFamilyMember:v4 device:*(a1 + 56) healthStore:v7];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (*(a1 + 40))
    {
      _HKInitializeLogging();
      v6 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        sub_4B40(a1, v6, (a1 + 40));
      }
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_1B3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1C4C;
    v10[3] = &unk_C3A0;
    v10[4] = *(a1 + 32);
    v11 = v5;
    dispatch_async(&_dispatch_main_q, v10);
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogMedicalID;
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_4C0C(v7, v8);
    }

    v9 = [*(a1 + 32) delegate];
    [v9 buddyControllerReleaseHold:*(a1 + 32)];
  }
}

void sub_1C4C(uint64_t a1)
{
  v1 = (a1 + 32);
  *(*(a1 + 32) + 32) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *v1;
    v4 = v2;
    v5 = *(v3 + 16);
    *(v3 + 16) = v4;
  }

  else
  {
    v6 = objc_alloc_init(_HKMedicalIDData);
    v5 = *(*v1 + 16);
    *(*v1 + 16) = v6;
  }

  v7 = objc_alloc_init(NSPersonNameComponents);
  v8 = [*(*v1 + 48) familyMember];
  v9 = [v8 firstName];
  [v7 setGivenName:v9];

  v10 = [*(*v1 + 48) familyMember];
  v11 = [v10 lastName];
  [v7 setFamilyName:v11];

  v12 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v7 style:2 options:0];
  [*(*v1 + 16) setName:v12];

  v13 = *(*v1 + 8);
  v19 = 0;
  v14 = [v13 dateOfBirthComponentsWithError:&v19];
  v15 = v19;
  if (v14)
  {
    [*(*v1 + 16) setGregorianBirthday:v14];
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogDatabase;
    if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
    {
      sub_4C84(v1, v15, v16);
    }
  }

  v17 = [*(*v1 + 48) familyMember];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1E8C;
  v18[3] = &unk_C378;
  v18[4] = *v1;
  [v17 fetchFamilyPhotoWithRequestedSize:1 fallbackToLocalAddressBook:1 completionHandler:v18];
}

void sub_1E8C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (!v6)
  {
    _HKInitializeLogging();
    v8 = HKLogMedicalID;
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_4D10(v7, v8);
      if (v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (!v7)
  {
LABEL_4:
    [*(*(a1 + 32) + 16) setPictureData:v6];
  }

LABEL_5:
  v9 = [*(a1 + 32) delegate];
  [v9 buddyControllerReleaseHold:*(a1 + 32)];
}

void sub_27E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_2814(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void sub_3818(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void sub_3ADC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = v5;
      v11 = *(v9 + 24);
      *(v9 + 24) = v10;
    }

    else
    {
      v12 = objc_alloc_init(_HKMedicalIDData);
      v13 = *(a1 + 32);
      v11 = *(v13 + 24);
      *(v13 + 24) = v12;
    }

    v8 = [*(a1 + 32) delegate];
    [v8 buddyControllerReleaseHold:*(a1 + 32)];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_4FCC(a1);
    }

    v8 = [*(a1 + 32) delegate];
    [v8 buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
  }
}

id sub_4400(uint64_t a1, char a2, uint64_t a3)
{
  _HKInitializeLogging();
  v6 = HKLogMedicalID;
  if (a3 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_5038(v6);
    }
  }

  else if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Successfully updated Medical ID Emergency Call", v8, 2u);
  }

  return [*(a1 + 32) completeMiniFlowStep];
}

void sub_452C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = objc_alloc_init(HKHealthStore);
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    *(v12 + 8) = v11;

    [*(*(a1 + 32) + 8) setProfileIdentifier:v8];
    [*(*(a1 + 32) + 8) resume];
    v14 = [[HKMedicalIDStore alloc] initWithHealthStore:*(*(a1 + 32) + 8)];
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    *(v15 + 16) = v14;

    v17 = *(a1 + 32);
    v18 = *(v17 + 16);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_4738;
    v23[3] = &unk_C450;
    v23[4] = v17;
    v24 = *(a1 + 40);
    [v18 fetchMedicalIDDataWithCompletion:v23];
  }

  else
  {
    if (v9)
    {
      _HKInitializeLogging();
      v19 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        v21 = v19;
        v22 = [v7 pairingID];
        *buf = 138543874;
        v26 = v20;
        v27 = 2114;
        v28 = v22;
        v29 = 2114;
        v30 = v10;
        _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get profile identifier for NRDevice UUID %{public}@, Error: %{public}@", buf, 0x20u);
      }
    }

    [*(a1 + 32) completeMiniFlowStep];
  }
}

void sub_4738(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v8 = v5;
    if (!v5)
    {
      v8 = objc_alloc_init(_HKMedicalIDData);
    }

    v9 = v8;
    [v8 setShareDuringEmergency:*(a1 + 40)];
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4854;
    v12[3] = &unk_C428;
    v12[4] = v10;
    [v11 updateMedicalIDData:v9 completion:v12];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_4FCC(a1);
    }

    [*(a1 + 32) completeMiniFlowStep];
  }
}

void sub_4854(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_507C(a1);
    }
  }

  [*(a1 + 32) completeMiniFlowStep];
}

void sub_49BC(uint64_t a1)
{
  v2 = [*(a1 + 32) miniFlowDelegate];
  [v2 miniFlowStepComplete:*(a1 + 32)];
}

void sub_4B20(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_4B40(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = a2;
  v7 = [v4 pairingID];
  v8 = *a3;
  v9 = 138543874;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get profile identifier for NRDevice UUID %{public}@, Error: %{public}@", &v9, 0x20u);
}

void sub_4C0C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to fetch Medical ID, Error: %{public}@", &v2, 0xCu);
}

void sub_4C84(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get date of birth for Medical ID: %{public}@", &v4, 0x16u);
}

void sub_4D10(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to fetch FAFamilyMember Photo from Family framework, Error: %{public}@", &v2, 0xCu);
}

void sub_4D88(uint64_t *a1, void *a2)
{
  sub_2814(a1, a2);
  v3 = [sub_2808() gregorianBirthday];
  sub_27D0();
  sub_27E8(&dword_0, v4, v5, "Failed to persist Medical ID birthday %@ to Health profile, Error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_4E1C(uint64_t *a1, void *a2)
{
  sub_2814(a1, a2);
  v3 = [sub_2808() weight];
  sub_27D0();
  sub_27E8(&dword_0, v4, v5, "Failed to persist Medical ID weight %@ to Health profile, Error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_4EB0(uint64_t *a1, void *a2)
{
  sub_2814(a1, a2);
  v3 = [sub_2808() height];
  sub_27D0();
  sub_27E8(&dword_0, v4, v5, "Failed to persist Medical ID height %@ to Health profile, Error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_4F44(uint64_t *a1, void *a2)
{
  sub_2814(a1, a2);
  [sub_2808() bloodType];
  sub_27D0();
  sub_27E8(&dword_0, v3, v4, "Failed to persist Medical ID bloodType %ld to Health profile, Error: %{public}@", v5, v6, v7, v8, v9);
}

void sub_4FCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_4B08();
  sub_4B20(&dword_0, v2, v3, "%{public}@ Failed to fetch Medical ID, Error: %{public}@");
}

void sub_507C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_4B08();
  sub_4B20(&dword_0, v2, v3, "%{public}@ Failed to update Medical ID, Error: %{public}@");
}