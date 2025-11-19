void sub_100055084(id *a1)
{
  v24[2] = a1;
  v24[1] = a1;
  v12 = [a1[4] inProgressSurrogates];
  v11 = [a1[5] _identifier];
  v24[0] = [v12 objectForKeyedSubscript:?];
  _objc_release(v11);
  _objc_release(v12);
  v13 = [v24[0] surrogateContext];
  _objc_release(v13);
  if (v13)
  {
    location = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v24[0] surrogateContext];
      v8 = [v9 _identifier];
      sub_1000194D4(v25, v8);
      _os_log_impl(&_mh_execute_header, location, v22, "UI surrogate %@ registered.", v25, 0xCu);
      _objc_release(v8);
      _objc_release(v9);
    }

    objc_storeStrong(&location, 0);
    v5 = [v24[0] surrogateContext];
    [v5 _updateWithValuesFromContext:a1[5]];
    _objc_release(v5);
    WeakRetained = objc_loadWeakRetained(a1[4] + 1);
    queue = [WeakRetained uiWorkQueue];
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_100055480;
    v19 = &unk_100320530;
    v21 = _objc_retain(a1[6]);
    v20 = _objc_retain(v24[0]);
    dispatch_async(queue, &v15);
    _objc_release(queue);
    _objc_release(WeakRetained);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v2 = [a1[5] _identifier];
    v14 = [NSString stringWithFormat:@"UI surrogate %@ not registered. Unable to do UI work.", v2];
    _objc_release(v2);
    v3 = a1[4];
    v4 = [NSError ak_errorWithCode:-7014];
    v1 = a1[6];
    [v3 _handleError:? logMessage:? withUIWorkBlock:?];
    _objc_release(v4);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v24, 0);
}

void sub_100055480(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) surrogateClient];
  v3 = [*(a1 + 32) surrogateContext];
  (*(v2 + 16))(v2, v4);
  _objc_release(v3);
  _objc_release(v4);
}

void sub_1000556DC(uint64_t a1)
{
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = [*(a1 + 32) _identifier];
  v20 = [*(a1 + 40) _fetchSurrogateWithRegistrationID:v21[0]];
  if (v20)
  {
    if ([v20 hasCheckedIn])
    {
      v17 = _AKLogSystem();
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v23, v21[0]);
        _os_log_error_impl(&_mh_execute_header, v17, v16, "UI surrogate with ID %@ has already checked in.", v23, 0xCu);
      }

      objc_storeStrong(&v17, 0);
    }

    else
    {
      v15 = _AKLogSystem();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sub_10001B098(v22, *(a1 + 48), v21[0]);
        _os_log_impl(&_mh_execute_header, v15, v14, "UI surrogate client %@ with surrogate ID %@ is checking in.", v22, 0x16u);
      }

      objc_storeStrong(&v15, 0);
      [v20 setSurrogateClient:*(a1 + 48)];
      [v20 setSurrogateContext:*(a1 + 32)];
      v13 = [v20 pendingClientUIWork];
      v12 = [v20 pendingBGContext];
      [v20 setPendingClientUIWork:0];
      [v20 setPendingBGContext:0];
      [v20 setHasCheckedIn:1];
      [v20 setSurrogateCompletion:*(a1 + 56)];
      if (v13)
      {
        if (v12)
        {
          v3 = [v20 surrogateContext];
          [v3 _updateWithValuesFromContext:v12];
          _objc_release(v3);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
        queue = [WeakRetained uiWorkQueue];
        v5 = _NSConcreteStackBlock;
        v6 = -1073741824;
        v7 = 0;
        v8 = sub_100055B64;
        v9 = &unk_100320530;
        v11 = _objc_retain(v13);
        v10 = _objc_retain(v20);
        dispatch_async(queue, &v5);
        _objc_release(queue);
        _objc_release(WeakRetained);
        objc_storeStrong(&v10, 0);
        objc_storeStrong(&v11, 0);
      }

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }
  }

  else
  {
    location = _AKLogSystem();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v24, v21[0]);
      _os_log_error_impl(&_mh_execute_header, location, v18, "Whoa! UI surrogate is checking in with an unexpected identifier %@.", v24, 0xCu);
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
}

void sub_100055B64(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) surrogateClient];
  v3 = [*(a1 + 32) surrogateContext];
  (*(v2 + 16))(v2, v4);
  _objc_release(v3);
  _objc_release(v4);
}

uint64_t sub_100058B0C(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_100374660;
  v15 = qword_100374660;
  if (!qword_100374660)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100058C20;
    v7 = &unk_10031F358;
    v8 = &v11;
    v9 = v16;
    sub_100058C20(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100058C20(uint64_t a1)
{
  memcpy(__dst, off_100320588, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100374660 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100058CE0()
{
  v2 = 0;
  v1 = sub_100058B0C(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id sub_100058D5C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100374668;
  v13 = qword_100374668;
  if (!qword_100374668)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100058E8C;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100058E8C(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100058E8C(uint64_t a1)
{
  sub_100058CE0();
  Class = objc_getClass("KCJoiningAcceptAccountCircleDelegate");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100374668 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100058F34()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100374670;
  v13 = qword_100374670;
  if (!qword_100374670)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100059064;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100059064(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100059064(uint64_t a1)
{
  sub_100058CE0();
  Class = objc_getClass("KCAESGCMDuplexSession");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100374670 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10005910C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100374678;
  v13 = qword_100374678;
  if (!qword_100374678)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10005923C;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_10005923C(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10005923C(uint64_t a1)
{
  sub_100058CE0();
  Class = objc_getClass("KCJoiningAcceptSession");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100374678 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000592E4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100374680;
  v13 = qword_100374680;
  if (!qword_100374680)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100059414;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100059414(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100059414(uint64_t a1)
{
  sub_100058CE0();
  Class = objc_getClass("KCJoiningRequestSecretSession");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100374680 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100059D18(os_unfair_lock_s *a1, void *a2)
{
  v6 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  os_unfair_lock_lock(v6);
  v4 = (*(location + 2))();
  os_unfair_lock_unlock(v6);
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);

  return v3;
}

id sub_100059DC8(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [*(a1[4] + 8) objectForKey:a1[5]];
  if ([location[0] isExpired])
  {
    [*(a1[4] + 8) removeObjectForKey:a1[5]];
    v5 = 0;
  }

  else
  {
    v5 = [location[0] cacheObject];
  }

  objc_storeStrong(location, 0);
  v1 = v5;

  return v1;
}

void sub_100059FA8(os_unfair_lock_s *a1, void *a2)
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  os_unfair_lock_lock(v3);
  (*(location + 2))();
  os_unfair_lock_unlock(v3);
  objc_storeStrong(&location, 0);
}

void sub_10005A860(id a1)
{
  v1 = objc_alloc_init(AKNativeAnisetteServiceTrafficManager);
  v2 = qword_100374688;
  qword_100374688 = v1;
  _objc_release(v2);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.akd.anisette", v5);
  v4 = *(qword_100374688 + 24);
  *(qword_100374688 + 24) = v3;
  _objc_release(v4);
  _objc_release(v5);
}

void sub_10005ADB0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v6 = *(a1 + 32);
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10005AF2C;
  v10 = &unk_100320710;
  v11 = _objc_retain(*(a1 + 40));
  v12 = _objc_retain(*(a1 + 48));
  v13[0] = _objc_retain(v14);
  [v6 _tq_invokeAttestationRequestWithTrafficClearance:v5 completion:?];
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_10005AF2C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  (*(a1[6] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10005B990(uint64_t a1, int a2)
{
  *(v2 - 216) = a1;
  *(v2 - 220) = a2;
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose((v2 - 176), 8);
  _Block_object_dispose((v2 - 128), 8);
  v3 = *(v2 - 216);
  JUMPOUT(0x10005B9F0);
}

void sub_10005BA2C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  oslog[1] = a1;
  if (v9)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v11, v9);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Error getting anisette data - %@", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  }

  v3 = [NSMutableURLRequest ak_anisetteHeadersWithData:location[0]];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  _objc_release(v5);
  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_10005BBC0(uint64_t a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[3] = a1;
  if ((a2 & 1) != 0 && *(a1 + 32) && *(a1 + 40))
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_10005BD1C;
    v9 = &unk_100320788;
    v11[1] = *(a1 + 64);
    v10 = _objc_retain(*(a1 + 48));
    v11[2] = *(a1 + 72);
    v11[0] = _objc_retain(*(a1 + 56));
    [v3 baaV1HeadersForRequestData:v2 completion:&v5];
    objc_storeStrong(v11, 0);
    objc_storeStrong(&v10, 0);
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_10005BD1C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25[1] = a1;
  if (v26)
  {
    v25[0] = _AKLogSystem();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v28, v26);
      _os_log_error_impl(&_mh_execute_header, v25[0], v24, "Error getting attestations data - %@", v28, 0xCu);
    }

    objc_storeStrong(v25, 0);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v26);
    dispatch_group_leave(*(a1 + 32));
    v23 = 1;
  }

  else
  {
    v3 = [location[0] mutableCopy];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    _objc_release(v5);
    v11 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:AKRequestSigningHeaderAttestationKey];
    _objc_release(v11);
    if (v11)
    {
      v6 = +[AKBAADeviceTokenController sharedTokenController];
      [(AKBAADeviceTokenController *)v6 markBAAOperationSuccessful];
      _objc_release(v6);
      v8 = *(a1 + 40);
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_10005C070;
      v18 = &unk_10031F8B0;
      v19 = _objc_retain(*(a1 + 32));
      [v8 _addDeviceTokenToHeaders:v7 completion:&v14];
      objc_storeStrong(&v19, 0);
      v23 = 0;
    }

    else
    {
      v22 = _AKLogSystem();
      v21 = 16;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v9 = v22;
        v10 = v21;
        sub_10001CEEC(v20);
        _os_log_error_impl(&_mh_execute_header, v9, v10, "Attestation map does not contain the cert attestation. Skipping device token fetch.", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      dispatch_group_leave(*(a1 + 32));
      v23 = 1;
    }
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_10005C0A4(uint64_t a1)
{
  v16[2] = a1;
  v16[1] = a1;
  [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 56) + 8) + 40)];
  v16[0] = [[AKAttestationData alloc] initWithDictionary:*(a1 + 32)];
  v15 = _objc_retain(*(*(*(a1 + 64) + 8) + 40));
  if (!v15 && *(*(*(a1 + 72) + 8) + 40))
  {
    location = _AKLogSystem();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v18, *(*(*(a1 + 72) + 8) + 40));
      _os_log_error_impl(&_mh_execute_header, location, v13, "Anisette succeeded, but BAA failed. This is not expected. Not blocking for error: %@", v18, 0xCu);
    }

    objc_storeStrong(&location, 0);
  }

  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  v12 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v11 = _AKSignpostLogSystem();
  v10 = 2;
  v9 = *(a1 + 80);
  if (v9 && v9 != -1 && os_signpost_enabled(v11))
  {
    v3 = v11;
    v4 = v10;
    spid = v9;
    sub_10001CEEC(v8);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, spid, "SignAndAttestation", "", v8, 2u);
  }

  objc_storeStrong(&v11, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100034384(v17, *(a1 + 80), *&v12);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignAndAttestation ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v15)
  {
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
}

void sub_10005C680(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (v13)
  {
    v12[0] = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v16, v13);
      _os_log_debug_impl(&_mh_execute_header, v12[0], OS_LOG_TYPE_DEBUG, "Failed to fetch device token. Proceeding with cert headers. Error: %@", v16, 0xCu);
    }

    objc_storeStrong(v12, 0);
  }

  else
  {
    v5 = [location[0] value];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
    _objc_release(v5);
    v6 = [location[0] value];
    v10 = 0;
    v7 = 0;
    if ([v6 length])
    {
      v11 = +[AKBAADeviceTokenController sharedTokenController];
      v10 = 1;
      v7 = [(AKBAADeviceTokenController *)v11 shouldSendBAACertWithToken]== 2;
    }

    if (v10)
    {
      _objc_release(v11);
    }

    _objc_release(v6);
    if (v7)
    {
      v3 = *(a1 + 32);
      v15[0] = AKRequestSigningHeaderAttestationKey;
      v15[1] = AKRequestSigningHeaderHostAttestationKey;
      v4 = [NSArray arrayWithObjects:v15 count:2];
      [v3 removeObjectsForKeys:?];
      _objc_release(v4);
    }
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_10005CF30(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if ([location[0] BOOLValue])
  {
    v9[0] = _AKTrafficLogSubsystem();
    v8 = 2;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
    {
      log = v9[0];
      type = v8;
      sub_10001CEEC(v7);
      _os_log_debug_impl(&_mh_execute_header, log, type, "BAA for VM disabled by url config.", v7, 2u);
    }

    objc_storeStrong(v9, 0);
    (*(a1[4] + 16))();
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_10005D07C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if ([location[0] BOOLValue])
  {
    v9[0] = _AKTrafficLogSubsystem();
    v8 = 2;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
    {
      log = v9[0];
      type = v8;
      sub_10001CEEC(v7);
      _os_log_debug_impl(&_mh_execute_header, log, type, "BAA disabled by url config.", v7, 2u);
    }

    objc_storeStrong(v9, 0);
    (*(a1[4] + 16))();
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_10005D434(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  v8 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  v9 = [v8 activeSigningRequest];
  _objc_release(v9);
  _objc_release(v8);
  if (v9)
  {
    v5 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
    v4 = [v5 pendingSigningRequests];
    v6 = [v4 count];
    _objc_release(v4);
    _objc_release(v5);
    v11 = v6;
    location = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      v3 = [NSNumber numberWithUnsignedInteger:v11];
      sub_10001B098(v14, v3, *(a1 + 32));
      _os_log_debug_impl(&_mh_execute_header, location, OS_LOG_TYPE_DEBUG, "Adding traffic request to the pending signing request queue[%@]: %@", v14, 0x16u);
      _objc_release(v3);
    }

    objc_storeStrong(&location, 0);
    v2 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
    v1 = [v2 pendingSigningRequests];
    [v1 addObject:*(a1 + 32)];
    _objc_release(v1);
    _objc_release(v2);
  }

  else
  {
    [*(a1 + 40) _tq_activateAndExecuteRequest:*(a1 + 32)];
  }
}

uint64_t sub_10005D934(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 64;
  *(result + 15) = 8;
  *(result + 16) = a4;
  return result;
}

void sub_10005D9A0(id *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v1 = a1[4];
  v2 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  [v2 setActiveSigningRequest:v1];
  _objc_release(v2);
  v5 = [a1[4] signingBlock];
  v4 = a1[4];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10005DB18;
  v9 = &unk_10031F078;
  v10 = _objc_retain(a1[4]);
  v11[0] = _objc_retain(a1[5]);
  (v5)[2](v5, v4);
  _objc_release(v5);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
}

id sub_10005DB18(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = *(a1 + 32);
    v3 = [NSNumber numberWithUnsignedInt:qos_class_self()];
    sub_10001B098(v6, v2, v3);
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "Executed signing request: %@; qos: %@", v6, 0x16u);
    _objc_release(v3);
  }

  objc_storeStrong(location, 0);
  return [*(a1 + 40) _processPendingRequests];
}

void sub_10005DE0C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v6 = *(a1 + 32);
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10005DF88;
  v10 = &unk_100320850;
  v11 = _objc_retain(*(a1 + 40));
  v12 = _objc_retain(*(a1 + 48));
  v13[0] = _objc_retain(v14);
  [v6 _tq_invokeAnisetteTrafficRequest:v5 withCompletion:?];
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_10005DF88(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  (*(a1[6] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10005E614(id *a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13[1] = a1;
  if (v15)
  {
    v4 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
    queue = [v4 trafficQueue];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10005E86C;
    v11 = &unk_100320878;
    v12 = _objc_retain(a1[4]);
    v13[0] = _objc_retain(a1[5]);
    dispatch_async(queue, &v7);
    _objc_release(queue);
    _objc_release(v4);
    objc_storeStrong(v13, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v17, location);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Provisioning failed. No Anisette for you today! Error: %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (a1[5])
    {
      (*(a1[5] + 2))();
    }
  }

  objc_storeStrong(&location, 0);
}

void sub_10005E86C(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKTrafficLogSubsystem();
  v11 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v11;
    sub_10001CEEC(v10);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Provisioning succeeded!", v10, 2u);
  }

  objc_storeStrong(location, 0);
  v9 = 0;
  v1 = a1[4];
  v7 = 0;
  v2 = [v1 _tq_anisetteDataWithRoutingInfoForLastKnownDSIDWithError:&v7];
  objc_storeStrong(&v9, v7);
  v8 = v2;
  if (v9)
  {
    oslog = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v13, v9);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to get Anisette data even after provisioning was attempted. Error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
}

void sub_10005EC10(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10005ED58;
  v10 = &unk_1003208A0;
  v11 = _objc_retain(*(a1 + 48));
  v12[0] = _objc_retain(v13);
  [v6 _tq_legacyAnisetteDataForDSID:v5 withCompletion:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_10005ED58(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  (*(a1[5] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_10005FA18(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

void sub_10005FBE8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  v5 = *(a1 + 32);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10005FD24;
  v10 = &unk_1003208C8;
  v11 = _objc_retain(*(a1 + 40));
  v12[0] = _objc_retain(v13);
  [v5 _tq_provisionAnisetteWithCompletion:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_10005FD24(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10005FF2C(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29[1] = a1;
  if (location[0])
  {
    v25 = _AKLogSystem();
    v24 = 2;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v6 = v25;
      v7 = v24;
      v8 = [location[0] allHTTPHeaderFields];
      v23 = _objc_retain(v8);
      sub_1000194D4(v32, v23);
      _os_log_debug_impl(&_mh_execute_header, v6, v7, "Starting provisioning with headers: %@", v32, 0xCu);
      _objc_release(v8);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v25, 0);
    v5 = +[AKURLSession sharedAnisetteFreeURLSession];
    v4 = location[0];
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_1000602EC;
    v19 = &unk_100320918;
    v20 = _objc_retain(a1[4]);
    v21 = _objc_retain(a1[5]);
    v22 = _objc_retain(a1[6]);
    v3 = [v5 beginDataTaskWithRequest:v4 completionHandler:&v15];
    _objc_release(v5);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    v26 = 0;
  }

  else
  {
    v29[0] = _AKLogSystem();
    v28 = 16;
    if (os_log_type_enabled(v29[0], OS_LOG_TYPE_ERROR))
    {
      log = v29[0];
      type = v28;
      sub_10001CEEC(v27);
      _os_log_error_impl(&_mh_execute_header, log, type, "Unable to create start-provisioning URL request!", v27, 2u);
    }

    objc_storeStrong(v29, 0);
    if (a1[6])
    {
      v9 = a1[6];
      v10 = [NSError ak_anisetteErrorWithCode:-8005 underlyingError:v30];
      v9[2](v9, 0);
      _objc_release(v10);
    }

    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void sub_1000602EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [*(a1 + 32) _processStartProvisioningData:location[0] withResponse:v8 error:v7 previousTransactionId:*(a1 + 40) completion:*(a1 + 48)];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_100061404(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v31 = 0;
  objc_storeStrong(&v31, a3);
  v30[1] = a1;
  if (location[0])
  {
    v26 = _AKLogSystem();
    v25 = 2;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v6 = v26;
      v7 = v25;
      v8 = [location[0] allHTTPHeaderFields];
      v24 = _objc_retain(v8);
      sub_1000194D4(v33, v24);
      _os_log_debug_impl(&_mh_execute_header, v6, v7, "End provisioning with headers: %@", v33, 0xCu);
      _objc_release(v8);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
    v5 = +[AKURLSession sharedAnisetteFreeURLSession];
    v4 = location[0];
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_1000617E4;
    v19 = &unk_100320968;
    v20 = _objc_retain(*(a1 + 32));
    v21 = _objc_retain(*(a1 + 40));
    v22[1] = *(a1 + 56);
    v23 = *(a1 + 64);
    v22[0] = _objc_retain(*(a1 + 48));
    v3 = [v5 beginDataTaskWithRequest:v4 completionHandler:&v15];
    _objc_release(v5);
    objc_storeStrong(v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    v27 = 0;
  }

  else
  {
    v30[0] = _AKLogSystem();
    v29 = 16;
    if (os_log_type_enabled(v30[0], OS_LOG_TYPE_ERROR))
    {
      log = v30[0];
      type = v29;
      sub_10001CEEC(v28);
      _os_log_error_impl(&_mh_execute_header, log, type, "Unable to create end-provisioning URL request!", v28, 2u);
    }

    objc_storeStrong(v30, 0);
    [*(a1 + 32) _cleanUpCPIMBytes:*(a1 + 56) provisioningContext:*(a1 + 64)];
    if (*(a1 + 48))
    {
      v9 = *(a1 + 48);
      v10 = [NSError ak_anisetteErrorWithCode:-8005 underlyingError:v31];
      (*(v9 + 16))(v9, 0);
      _objc_release(v10);
    }

    v27 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void sub_1000617E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [*(a1 + 32) _processEndProvisioningData:location[0] withResponse:v8 error:v7 previousTransactionId:*(a1 + 40) cpimBytes:*(a1 + 56) provisioningContext:*(a1 + 64) completion:*(a1 + 48)];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_100062088(uint64_t a1, char a2, id obj, void *a4, unsigned int a5, uint64_t a6)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  if (v12)
  {
    [*(a1 + 32) _endProvisioningWithPreviousTransactionId:*(a1 + 40) cpimData:v10 cpimBytes:a6 provisioningContext:a5 completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_100063210(uint64_t a1, char a2, id obj, void *a4, unsigned int a5, uint64_t a6)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  if (v12)
  {
    [*(a1 + 32) _endProvisioningWithPreviousTransactionId:0 cpimData:v10 cpimBytes:a6 provisioningContext:a5 completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000635C0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (location[0])
  {
    v3 = location[0];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000637F0;
    v11 = &unk_100320A30;
    v12[0] = _objc_retain(*(a1 + 32));
    [v3 enumerateKeysAndObjectsUsingBlock:&v7];
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    objc_storeStrong(v12, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, v13);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to get signing headers, error: %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_1000637F0(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setValue:v5 forHTTPHeaderField:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100063A2C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100063B74;
  v10 = &unk_1003208C8;
  v11 = _objc_retain(*(a1 + 48));
  v12[0] = _objc_retain(v13);
  [v6 _tq_syncAnisetteWithSIMData:v5 completion:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_100063B74(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100063D98(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = 0;
  objc_storeStrong(&v23, a3);
  v22[1] = a1;
  if (location[0])
  {
    v4 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
    queue = [v4 trafficQueue];
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10006405C;
    v15 = &unk_100320558;
    v16 = _objc_retain(location[0]);
    v17 = _objc_retain(a1[4]);
    v18 = _objc_retain(a1[5]);
    dispatch_async(queue, &v11);
    _objc_release(queue);
    _objc_release(v4);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    v19 = 0;
  }

  else
  {
    v22[0] = _AKLogSystem();
    v21 = 16;
    if (os_log_type_enabled(v22[0], OS_LOG_TYPE_ERROR))
    {
      log = v22[0];
      type = v21;
      sub_10001CEEC(v20);
      _os_log_error_impl(&_mh_execute_header, log, type, "Unable to create sync-provisioning URL request!", v20, 2u);
    }

    objc_storeStrong(v22, 0);
    if (a1[5])
    {
      v5 = a1[5];
      v6 = [NSError ak_anisetteErrorWithCode:-8005 underlyingError:v23];
      v5[2](v5, 0);
      _objc_release(v6);
    }

    v19 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void sub_10006405C(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = +[AKURLSession sharedAnisetteFreeURLSession];
  v3 = *(a1 + 32);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100064194;
  v9 = &unk_100320A80;
  v10 = _objc_retain(*(a1 + 40));
  v11[0] = _objc_retain(*(a1 + 48));
  v1 = [v4 beginDataTaskWithRequest:v3 completionHandler:?];
  _objc_release(v4);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
}

void sub_100064194(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16[1] = a1;
  v16[0] = 0;
  if (v17)
  {
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v22, v17);
      _os_log_error_impl(&_mh_execute_header, v15, v14, "Sync provisioning request failed! Error: %@", v22, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 statusCode]);
        sub_1000194D4(v20, v7);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Sync provisioning response code: %@", v20, 0xCu);
        _objc_release(v7);
      }

      objc_storeStrong(&oslog, 0);
      v4 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/x-plist"];
      v5 = v16[0];
      v16[0] = v4;
      _objc_release(v5);
    }

    else
    {
      v13 = _AKLogSystem();
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v21, v18);
        _os_log_error_impl(&_mh_execute_header, v13, v12, "Unexpected response class! %@", v21, 0xCu);
      }

      objc_storeStrong(&v13, 0);
    }
  }

  [*(a1 + 32) _processSyncAnisetteResponse:v16[0] completion:{*(a1 + 40), v16}];
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_1000654D4(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    sub_10001CEEC(v4);
    _os_log_impl(&_mh_execute_header, log, type, "Cleaning up ADI session objects...", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (a1[4])
  {
    [AKADIProxy dispose:a1[4]];
  }

  if (a1[5])
  {
    [AKADIProxy dispose:a1[5]];
  }
}

void sub_1000655D0(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if ((v5 & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1000657CC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  v5 = *(a1 + 32);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100065908;
  v10 = &unk_1003208C8;
  v11 = _objc_retain(*(a1 + 40));
  v12[0] = _objc_retain(v13);
  [v5 _tq_eraseAnisetteWithCompletion:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_100065908(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100065F5C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (location[0])
  {
    v8 = [NSMutableURLRequest requestWithURL:location[0]];
    [(NSMutableURLRequest *)v8 setHTTPMethod:@"POST"];
    v15[0] = AKRequestHeadersKey;
    v16[0] = &__NSDictionary0__struct;
    v15[1] = AKRequestBodyKey;
    v16[1] = &__NSDictionary0__struct;
    v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(NSMutableURLRequest *)v8 ak_setBodyWithParameters:v7];
    if (*(a1 + 32))
    {
      [(NSMutableURLRequest *)v8 ak_addPreviousTransactionIdHeader:*(a1 + 32)];
    }

    [*(a1 + 40) _signRequestWithProvisioningHeaders:v8 forUrlKey:AKURLBagKeyStartProvisioning];
    [*(a1 + 40) _signAppropriateBAAForProvisioningRequest:v8 urlKey:AKURLBagKeyStartProvisioning completion:*(a1 + 48)];
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  else
  {
    v12[0] = _AKLogSystem();
    v11 = 16;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_ERROR))
    {
      log = v12[0];
      type = v11;
      sub_10001CEEC(v10);
      _os_log_error_impl(&_mh_execute_header, log, type, "Nil value for startProvisioningURL!", v10, 2u);
    }

    objc_storeStrong(v12, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }

    v9 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_1000663DC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  if (location[0])
  {
    v10 = [NSMutableURLRequest requestWithURL:location[0]];
    [(NSMutableURLRequest *)v10 setHTTPMethod:@"POST"];
    v9 = [*(a1 + 32) base64EncodedStringWithOptions:0];
    v19[0] = AKRequestHeadersKey;
    v20[0] = &__NSDictionary0__struct;
    v19[1] = AKRequestBodyKey;
    v17 = @"cpim";
    v18 = v9;
    v3 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[1] = v3;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    _objc_release(v3);
    [(NSMutableURLRequest *)v10 ak_setBodyWithParameters:v8];
    if (*(a1 + 40))
    {
      [(NSMutableURLRequest *)v10 ak_addPreviousTransactionIdHeader:*(a1 + 40)];
    }

    [*(a1 + 48) _signRequestWithProvisioningHeaders:v10 forUrlKey:AKURLBagKeyEndProvisioning];
    [*(a1 + 48) _signAppropriateBAAForProvisioningRequest:v10 urlKey:AKURLBagKeyEndProvisioning completion:*(a1 + 56)];
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  else
  {
    v14[0] = _AKLogSystem();
    v13 = 16;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_ERROR))
    {
      log = v14[0];
      type = v13;
      sub_10001CEEC(v12);
      _os_log_error_impl(&_mh_execute_header, log, type, "Nil value for endProvisioningURL!", v12, 2u);
    }

    objc_storeStrong(v14, 0);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v11 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000668B8(uint64_t a1, char a2)
{
  v23 = a1;
  v22 = a2;
  v21[1] = a1;
  if (a2)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_100066AC8;
    v19 = &unk_100320B40;
    v21[0] = _objc_retain(*(a1 + 56));
    v20 = _objc_retain(*(a1 + 40));
    [v6 _addProvisioningBAAV1HeadersToRequest:v5 completion:&v15];
    objc_storeStrong(&v20, 0);
    objc_storeStrong(v21, 0);
  }

  else
  {
    v4 = *(a1 + 32);
    v2 = *(a1 + 48);
    v3 = *(a1 + 40);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100066B3C;
    v12 = &unk_10031FB38;
    v14 = _objc_retain(*(a1 + 56));
    v13 = _objc_retain(*(a1 + 40));
    [v4 _signWithBAAHeadersIfNeededForKey:v2 withRequest:v3 completion:&v8];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }
}

void sub_100066AC8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[5])
  {
    v2 = a1[4];
    (*(a1[5] + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_100066B3C(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100066DC4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  if (location[0])
  {
    v12 = [NSMutableURLRequest requestWithURL:location[0]];
    [v12 setHTTPMethod:@"POST"];
    [*(a1 + 32) _signRequestWithProvisioningHeaders:v12 forUrlKey:AKURLBagKeySyncAnisette];
    v11 = [*(a1 + 40) base64EncodedStringWithOptions:?];
    v10 = [*(a1 + 48) base64EncodedStringWithOptions:0];
    v9 = objc_alloc_init(NSMutableDictionary);
    if (v10)
    {
      [v9 setObject:v10 forKeyedSubscript:@"srm"];
    }

    if (v11)
    {
      [v9 setObject:v11 forKeyedSubscript:@"X-Apple-I-MD-M"];
    }

    if (*(a1 + 64))
    {
      v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
      [v9 setObject:? forKeyedSubscript:?];
      _objc_release(v3);
    }

    v19[0] = AKRequestHeadersKey;
    v20[0] = &__NSDictionary0__struct;
    v19[1] = AKRequestBodyKey;
    v20[1] = v9;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v12 ak_setBodyWithParameters:v8];
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v16[0] = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_ERROR))
    {
      log = v16[0];
      type = v15;
      sub_10001CEEC(v14);
      _os_log_error_impl(&_mh_execute_header, log, type, "Nil value for syncAnisetteURL!", v14, 2u);
    }

    objc_storeStrong(v16, 0);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v13 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_100067560(uint64_t a1, char a2)
{
  v19 = a1;
  v18 = a2;
  location[1] = a1;
  if (a2)
  {
    v14 = [[AKAttestationRequestData alloc] initWithRequest:*(a1 + 32) requiredHeaders:?];
    v3 = *(*(a1 + 40) + 24);
    v2 = v14;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100067764;
    v11 = &unk_100320A58;
    v12 = _objc_retain(*(a1 + 32));
    v13 = _objc_retain(*(a1 + 48));
    [v3 baaV1HeadersForRequestData:v2 completion:&v7];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    location[0] = _AKLogSystem();
    v16 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v16;
      sub_10001CEEC(v15);
      _os_log_debug_impl(&_mh_execute_header, log, type, "BAA headers are not allowed.", v15, 2u);
    }

    objc_storeStrong(location, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_100067764(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17[1] = a1;
  if (v18)
  {
    v17[0] = _AKLogSystem();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v21, v18);
      _os_log_error_impl(&_mh_execute_header, v17[0], v16, "Error getting attestations data - %@", v21, 0xCu);
    }

    objc_storeStrong(v17, 0);
  }

  v4 = +[AKConfiguration sharedConfiguration];
  v5 = [v4 shouldEnableAttestationLogging];
  _objc_release(v4);
  if (v5)
  {
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v20, location[0]);
      _os_log_impl(&_mh_execute_header, v15, v14, "Adding header for provisioning - %@", v20, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  v3 = location[0];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100067A44;
  v12 = &unk_100320BB8;
  v13 = _objc_retain(*(a1 + 32));
  [v3 enumerateKeysAndObjectsUsingBlock:&v8];
  [*(a1 + 32) setValue:@"-10001" forHTTPHeaderField:@"X-Apple-Baa-E"];
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100067A44(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setValue:v5 forHTTPHeaderField:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100069254(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_10006996C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 96) = a1;
  *(v9 - 100) = a2;
  objc_destroyWeak((v9 - 144));
  sub_100069A94((v9 - 56));
  _Unwind_Resume(*(v9 - 96));
}

void sub_1000699B8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  _objc_release(v4);
  v5 = a2[1];
  a2[1] = 0;
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  _objc_release(v6);
}

id sub_100069A2C(id *a1, id *a2)
{
  *a1 = _objc_retain(*a2);
  result = _objc_retain(a2[1]);
  a1[1] = result;
  return result;
}

void sub_100069AD8(id *a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained(a1 + 5);
  if ((v15 & 1) != 0 && v13[0])
  {
    v3 = *(v13[0] + 6);
    v4 = [v13[0] context];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100069CAC;
    v10 = &unk_10031FB38;
    v12 = _objc_retain(a1[4]);
    v11 = _objc_retain(location);
    (*(v3 + 16))(v3, v4, &v6);
    _objc_release(v4);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else if (a1[4])
  {
    (*(a1[4] + 2))();
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&location, 0);
}

void sub_100069CAC(NSObject *a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    if (v8)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_10001B098(v10, v3, location);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Code was shown with success: %@ error: %@", v10, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[5].isa)
  {
    isa = a1[4].isa;
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

uint64_t sub_10006A3A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 112;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_10006A654(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_10006A68C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 112;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_10006B048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, uint64_t a27)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v27 - 104));
  _Unwind_Resume(a1);
}

void sub_10006B090(uint64_t a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 48));
  if ((v8 & 1) != 0 && v6[0])
  {
    [v6[0] _onqueue_processMessage0:*(a1 + 32) verifier:0 completionHandler:*(a1 + 40)];
  }

  else if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
    v4 = [NSError ak_errorWithCode:-7132];
    (*(v3 + 16))(v3, 0);
    _objc_release(v4);
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(&location, 0);
}

void sub_10006DD78(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location, uint64_t a10)
{
  *(v10 - 72) = a1;
  *(v10 - 76) = a2;
  objc_destroyWeak((v10 - 88));
  sub_100069A94((v10 - 64));
  _Unwind_Resume(*(v10 - 72));
}

void sub_10006DDCC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained(a1 + 5);
  if (location[0] && v15[0])
  {
    queue = [v15[0] queue];
    v6 = _NSConcreteStackBlock;
    v7 = -1040187392;
    v8 = 0;
    v9 = sub_10006DFD4;
    v10 = &unk_100320CD8;
    sub_100069A2C(v14, a1 + 6);
    v11 = _objc_retain(location[0]);
    v12 = _objc_retain(v15[0]);
    v13 = _objc_retain(a1[4]);
    dispatch_async(queue, &v6);
    _objc_release(queue);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    sub_100069A94(v14);
  }

  else if (a1[4])
  {
    (*(a1[4] + 2))();
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_10006DFD4(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v12 = 0;
  v13 = 0;
  v12 = _objc_retain(*(a1 + 56));
  v13 = _objc_retain(*(a1 + 32));
  sub_100069A2C(v11, &v12);
  v4 = [*(a1 + 40) context];
  sub_100069A2C(v10, v11);
  if (v4)
  {
    [v4 setSessionEntropy:{v10[0], v10[1]}];
  }

  else
  {
    sub_100069A94(v10);
  }

  sub_100069A94(v11);
  _objc_release(v4);
  location = 0;
  v3 = *(a1 + 40);
  sub_100069A2C(v7, &v12);
  obj = location;
  if (v3)
  {
    v2 = [v3 _newProverWithEntropy:v7[0] error:{v7[1], &obj}];
    objc_storeStrong(&location, obj);
    v1 = v2;
  }

  else
  {
    sub_100069A94(v7);
    v1 = 0;
  }

  v8 = v1;
  objc_storeStrong((*(a1 + 40) + 32), v1);
  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  sub_100069A94(&v12);
}

void sub_10006ECA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, uint64_t a27)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v27 - 104));
  _Unwind_Resume(a1);
}

void sub_10006ECE8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained((a1 + 48));
  if (location[0] && v7[0])
  {
    [v7[0] _onqueue_processMessage1:*(a1 + 32) withProver:location[0] completionHandler:*(a1 + 40)];
  }

  else if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
    v4 = [NSError ak_errorWithCode:-7133];
    (*(v3 + 16))(v3, 0);
    _objc_release(v4);
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_100072194(id a1)
{
  v1 = objc_alloc_init(AKPostInstallService);
  v2 = qword_100374698;
  qword_100374698 = v1;
  _objc_release(v2);
}

void sub_100072368(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = a1;
  state = xpc_activity_get_state(location[0]);
  if (state == 2)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_impl(&_mh_execute_header, log, type, "XPC activity says os got upgraded, running Post Install Job", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    if (xpc_activity_set_state(location[0], 4))
    {
      v15 = os_transaction_create();
      v3 = a1[4];
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_100072634;
      v12 = &unk_10031F078;
      v13 = _objc_retain(location[0]);
      v14 = _objc_retain(v15);
      [v3 _performPostInstallWithCompletion:&v8];
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v15, 0);
    }
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [NSNumber numberWithLong:state];
      sub_1000194D4(v22, v2);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "XPC activity registration complete. State: %@.", v22, 0xCu);
      _objc_release(v2);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_100072634(xpc_activity_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  xpc_activity_set_state(a1[4], 5);
  location[0] = _AKLogSystem();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v4;
    sub_10001CEEC(v3);
    _os_log_impl(&_mh_execute_header, log, type, "XPC activity for post install complete", v3, 2u);
  }

  objc_storeStrong(location, 0);
}

void sub_100072DE4(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10006A654(v8, v6 & 1);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Satori Warmup for Post Install complete with result: %i", v8, 8u);
  }

  objc_storeStrong(oslog, 0);
  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

void sub_100072EF4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v13;
    sub_10001CEEC(v12);
    _os_log_impl(&_mh_execute_header, log, type, "AKAppleIDCheckInHelperService finished performHeartbeatCheckIn after OS upgrade...", v12, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100073044;
  v10 = &unk_10031F8B0;
  v11 = _objc_retain(*(a1 + 48));
  [v2 fetchUserInfoForAltDSID:v1 completion:&v6];
  objc_storeStrong(&v11, 0);
}

uint64_t sub_100073078(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_1000730CC(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000732E8(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, log, type, "AKUserInfoController finished fetchUserInfo after OS upgrade...", v8, 2u);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v13, v11);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "AKUserInfoController finished fetchUserInfo after OS upgrade with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_100073724(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (location[0])
  {
    [*(a1 + 32) _updateContext:location[0] serviceName:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100073C80(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  if (location[0])
  {
    v8[0] = _AKLogSystem();
    v7 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v8[0], OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) description];
      v3 = [location[0] description];
      sub_10001B098(v11, v4, v3);
      _os_log_error_impl(&_mh_execute_header, v8[0], v7, "Failed to update walrus web context %@ with error %@", v11, 0x16u);
      _objc_release(v3);
      _objc_release(v4);
    }

    objc_storeStrong(v8, 0);
  }

  else
  {
    v6 = _AKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [*(a1 + 32) description];
      sub_1000194D4(v10, v2);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Walrus web context %@ updated successfully.", v10, 0xCu);
      _objc_release(v2);
    }

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100074370(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_10007486C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = a1[4];
    v3 = [v2 engine];
    sub_10001B098(v6, v2, v3);
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "%@: Preparing proximity engine (%@)", v6, 0x16u);
    _objc_release(v3);
  }

  objc_storeStrong(location, 0);
  [a1[4] _unsafe_resumeEngineTimeoutSource];
  v1 = [a1[4] engine];
  [v1 prepareWithController:a1[4] queue:*(a1[4] + 2)];
  _objc_release(v1);
}

void sub_100074A9C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = a1[4];
    v3 = [v2 engine];
    sub_10001B098(v6, v2, v3);
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "%@: Activating proximity engine (%@)", v6, 0x16u);
    _objc_release(v3);
  }

  objc_storeStrong(location, 0);
  v1 = [a1[4] engine];
  [v1 activate];
  _objc_release(v1);
}

void sub_100074DF8(uint64_t a1, int a2)
{
  *(v2 - 56) = a1;
  *(v2 - 60) = a2;
  _Block_object_dispose((v2 - 48), 8);
  _Unwind_Resume(*(v2 - 56));
}

void sub_100074E1C(uint64_t a1)
{
  v2 = [*(a1 + 32) engine];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isActivated];
  _objc_release(v2);
}

void sub_10007541C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v3, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: Engine timeout source has been registered", v3, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_10007550C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v3, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: Engine timeout source has been cancelled", v3, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_1000755FC(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_loadWeakRetained(a1 + 4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v3, v2[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: Engine timeout source event handler called", v3, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [v2[0] _unsafe_InvalidateEngine];
  objc_storeStrong(v2, 0);
}

uint64_t sub_100075B68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_100076470(id a1)
{
  v1 = objc_alloc_init(AKAuthorizationSessionManager);
  v2 = qword_1003746A8;
  qword_1003746A8 = v1;
  _objc_release(v2);
}

void sub_100076AE8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a4;
  v17[1] = a1;
  v17[0] = _AKLogSiwa();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v22, location[0], v19);
    _os_log_debug_impl(&_mh_execute_header, v17[0], v16, "Session: %@ = %@", v22, 0x16u);
  }

  objc_storeStrong(v17, 0);
  v10 = [v19 sessionID];
  v9 = [*(a1 + 32) _sessionID];
  v11 = [v10 isEqualToString:?];
  _objc_release(v9);
  _objc_release(v10);
  if (v11)
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v19 sessionID];
      v7 = [v19 client];
      sub_10001B098(v21, v8, v7);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Found an exising context with session ID(%@), %@", v21, 0x16u);
      _objc_release(v7);
      _objc_release(v8);
    }

    objc_storeStrong(&oslog, 0);
    v4 = [v19 client];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
    _objc_release(v6);
    *v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void sub_1000770B8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v19 = [*(a1 + 32) bundleID];
  _objc_release(v19);
  if (v19)
  {
    v33 = [*(a1 + 40) _clientBundleIDForContext:*(a1 + 48) client:*(a1 + 32)];
    v32 = [*(a1 + 40) _activeSessionForContext:*(a1 + 48) client:*(a1 + 32)];
    v31 = v32 == 0;
    v30 = _AKLogSiwa();
    v29 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      if (v31)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      sub_1000194D4(v39, v1);
      _os_log_debug_impl(&_mh_execute_header, v30, v29, "AuthorizationSessionManager - should clear request: %@", v39, 0xCu);
    }

    objc_storeStrong(&v30, 0);
    if (v31)
    {
      v15 = +[NSUUID UUID];
      v28 = [(NSUUID *)v15 UUIDString];
      _objc_release(v15);
      [*(a1 + 48) set_sessionID:v28];
      v2 = objc_alloc_init(AKAuthorizationSession);
      v3 = *(*(a1 + 64) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
      _objc_release(v4);
      [*(*(*(a1 + 64) + 8) + 40) setSessionID:v28];
      [*(*(*(a1 + 64) + 8) + 40) setCompletionHandler:*(a1 + 56)];
      [*(*(*(a1 + 64) + 8) + 40) setContext:*(a1 + 48)];
      [*(*(*(a1 + 64) + 8) + 40) setClientBundleID:v33];
      [*(*(*(a1 + 64) + 8) + 40) setClient:*(a1 + 32)];
      v27 = _AKLogSiwa();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v38, *(*(*(a1 + 64) + 8) + 40));
        _os_log_impl(&_mh_execute_header, v27, v26, "AuthorizationSessionManager - Processing clearance request: %@", v38, 0xCu);
      }

      objc_storeStrong(&v27, 0);
      v14 = +[NSDate date];
      [*(*(*(a1 + 64) + 8) + 40) setRequestTime:?];
      _objc_release(v14);
      v25 = _AKLogSiwa();
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v37, v33);
        _os_log_debug_impl(&_mh_execute_header, v25, v24, "AuthorizationSessionManager - Adding %@ to list of authenticating apps", v37, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      [*(*(a1 + 40) + 8) setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:v33];
      if ([*(a1 + 48) _clientShouldAuthenticateExternally] == 1)
      {
        v23 = _AKLogSiwa();
        v22 = 2;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v12 = v23;
          v13 = v22;
          sub_10001CEEC(v21);
          _os_log_debug_impl(&_mh_execute_header, v12, v13, "AuthorizationSessionManager - Created OSTransaction", v21, 2u);
        }

        objc_storeStrong(&v23, 0);
        v5 = os_transaction_create();
        v6 = *(a1 + 40);
        v7 = *(v6 + 32);
        *(v6 + 32) = v5;
        _objc_release(v7);
      }

      objc_storeStrong(&v28, 0);
    }

    else
    {
      oslog = _AKLogSiwa();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v36, v33);
        _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Authorization Session - Denying clearance for %@", v36, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v8 = [NSError ak_errorWithCode:-7071];
      v9 = *(*(a1 + 72) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
      _objc_release(v10);
      v11 = *(*(*(a1 + 72) + 8) + 40);
      (*(*(a1 + 56) + 16))();
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    location[0] = _AKLogSiwa();
    v34 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_FAULT))
    {
      sub_1000194D4(v40, *(a1 + 32));
      _os_log_fault_impl(&_mh_execute_header, location[0], v34, "AuthorizationSessionManager - Client %@ lacks a bundle ID!", v40, 0xCu);
    }

    objc_storeStrong(location, 0);
    v16 = (*(a1 + 56) + 16);
    v17 = [NSError ak_errorWithCode:-7074];
    (*v16)();
    _objc_release(v17);
  }
}

void sub_10007779C(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
    v1[2](v1, *(*(*(a1 + 40) + 8) + 40));
    _objc_release(v1);
  }
}

void sub_1000779E8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSiwa();
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v29, *(a1 + 32));
    _os_log_debug_impl(&_mh_execute_header, location[0], v26, "AuthorizationSessionManager - Queued end authentication clearance block for %@", v29, 0xCu);
  }

  objc_storeStrong(location, 0);
  v25 = [*(a1 + 40) _clientBundleIDForContext:*(a1 + 32) client:*(a1 + 48)];
  v24 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:v25];
  if (v24)
  {
    v3 = *(*(a1 + 40) + 16);
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100077E9C;
    v14 = &unk_100320878;
    v15 = _objc_retain(*(a1 + 32));
    v16 = _objc_retain(*(a1 + 56));
    dispatch_async(v3, &v10);
    if ([*(a1 + 32) _clientShouldAuthenticateExternally] == 1)
    {
      oslog = _AKLogSiwa();
      v8 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v1 = oslog;
        v2 = v8;
        sub_10001CEEC(v7);
        _os_log_debug_impl(&_mh_execute_header, v1, v2, "AuthorizationSessionManager - Nilled out OSTransaction", v7, 2u);
      }

      objc_storeStrong(&oslog, 0);
      objc_storeStrong((*(a1 + 40) + 32), 0);
    }

    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v28, v25);
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "AuthorizationSessionManager - Removing %@ from authenticating list", v28, 0xCu);
    }

    objc_storeStrong(&v6, 0);
    [*(*(a1 + 40) + 8) removeObjectForKey:v25];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    v17 = 0;
  }

  else
  {
    queue = *(*(a1 + 40) + 16);
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_100077E28;
    v22 = &unk_100320EC8;
    v23 = _objc_retain(*(a1 + 56));
    dispatch_sync(queue, &v18);
    v17 = 1;
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
}

void sub_100077E28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7099];
  (*(v1 + 16))();
  _objc_release(v2);
}

uint64_t sub_100077E9C(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v4, *(a1 + 32));
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "AuthorizationSessionManager - Executing end authentication clearance block for %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  return (*(*(a1 + 40) + 16))();
}

void sub_10007875C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7074];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

void sub_1000787D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7099];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

void sub_10007884C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7099];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

void sub_1000788C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7098];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

void sub_10007893C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) userResponse];
  (*(v1 + 16))();
  _objc_release(v2);
}

uint64_t sub_100079254(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_1003746B8;
  v15 = qword_1003746B8;
  if (!qword_1003746B8)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100079368;
    v7 = &unk_10031F358;
    v8 = &v11;
    v9 = v16;
    sub_100079368(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100079368(uint64_t a1)
{
  memcpy(__dst, off_1003210F8, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003746B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100079428()
{
  v2 = 0;
  v1 = sub_100079254(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id sub_1000794A4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003746C0;
  v13 = qword_1003746C0;
  if (!qword_1003746C0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000795D4;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1000795D4(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_1000795D4(uint64_t a1)
{
  sub_100079428();
  Class = objc_getClass("IDSService");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003746C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10007967C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003746C8;
  v13 = qword_1003746C8;
  if (!qword_1003746C8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000797AC;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1000797AC(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_1000797AC(uint64_t a1)
{
  sub_100079428();
  Class = objc_getClass("IDSMessageContext");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003746C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100079854()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003746D0;
  v13 = qword_1003746D0;
  if (!qword_1003746D0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100079984;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100079984(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100079984(uint64_t a1)
{
  sub_100079428();
  Class = objc_getClass("IDSDevice");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003746D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100079A2C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003746D8;
  v13 = qword_1003746D8;
  if (!qword_1003746D8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100079B34;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100079B34(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100079B34(uint64_t a1)
{
  v1 = sub_100079428();
  v2 = dlsym(v1, "IDSDefaultPairedDevice");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003746D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100079BA0()
{
  v2 = sub_100079A2C();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_100079C08()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003746E0;
  v13 = qword_1003746E0;
  if (!qword_1003746E0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100079D10;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100079D10(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100079D10(uint64_t a1)
{
  v1 = sub_100079428();
  v2 = dlsym(v1, "IDSSendMessageOptionBypassDuetKey");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003746E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100079D7C()
{
  v2 = sub_100079C08();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_100079DE4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003746E8;
  v13 = qword_1003746E8;
  if (!qword_1003746E8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100079EEC;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100079EEC(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100079EEC(uint64_t a1)
{
  v1 = sub_100079428();
  v2 = dlsym(v1, "IDSSendMessageOptionEnforceRemoteTimeoutsKey");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003746E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100079F58()
{
  v2 = sub_100079DE4();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_100079FC0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003746F0;
  v13 = qword_1003746F0;
  if (!qword_1003746F0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10007A0C8;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_10007A0C8(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10007A0C8(uint64_t a1)
{
  v1 = sub_100079428();
  v2 = dlsym(v1, "IDSSendMessageOptionTimeoutKey");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003746F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10007A134()
{
  v2 = sub_100079FC0();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

void sub_10007B128(id a1)
{
  v1 = objc_alloc_init(AKPeerIDSAnisetteService);
  v2 = qword_1003746F8;
  qword_1003746F8 = v1;
  _objc_release(v2);
}

void sub_10007B558(void *a1, char a2, id obj, void *a4)
{
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a1;
  if (location)
  {
    v4 = [NSSet setWithObject:objc_opt_class()];
    v10[0] = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:"_strictlyUnarchivedObjectOfClasses:fromData:error:" fromData:? error:?];
    _objc_release(v4);
    v9 = _AKTrafficLogSubsystem();
    v8 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v16, v10[0]);
      _os_log_debug_impl(&_mh_execute_header, v9, v8, "Paired device Anisette info: %@", v16, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    (*(a1[4] + 16))();
    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, v11);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to obtain Anisette data from IDS-paired device: %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

void sub_10007BA3C(void *a1, char a2, id obj, void *a4)
{
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17[1] = a1;
  v17[0] = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEBUG))
  {
    sub_10007BE18(v25, v20 & 1, location, v18);
    _os_log_debug_impl(&_mh_execute_header, v17[0], v16, "Peer attestation fetch didSucceed:%d data:%@ error:%@", v25, 0x1Cu);
  }

  objc_storeStrong(v17, 0);
  if (location)
  {
    v15 = 0;
    v5 = [NSSet setWithObject:objc_opt_class()];
    v13 = v15;
    v4 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:"_strictlyUnarchivedObjectOfClasses:fromData:error:" fromData:? error:?];
    objc_storeStrong(&v15, v13);
    v14 = v4;
    _objc_release(v5);
    if (v15)
    {
      v12 = _AKLogSystem();
      v11 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v24, v15);
        _os_log_error_impl(&_mh_execute_header, v12, v11, "Error deserializing attestation data: %@", v24, 0xCu);
      }

      objc_storeStrong(&v12, 0);
    }

    oslog = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v23, v14);
      _os_log_debug_impl(&_mh_execute_header, oslog, v9, "Proxied attestation fetch - %@", v23, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v8 = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v22, v18);
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to obtain Attestation data from IDS-paired device: %@", v22, 0xCu);
    }

    objc_storeStrong(&v8, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_10007BE18(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void sub_10007C064(uint64_t a1, char a2, id obj, void *a4)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

void sub_10007C2B4(uint64_t a1, char a2, id obj, void *a4)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

void sub_10007C504(uint64_t a1, char a2, id obj, void *a4)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

void sub_10007C784(void *a1, char a2, id obj, void *a4)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7[1] = a1;
  if (location)
  {
    v4 = [NSSet setWithObject:objc_opt_class()];
    v7[0] = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:"_strictlyUnarchivedObjectOfClasses:fromData:error:" fromData:? error:?];
    _objc_release(v4);
    (*(a1[4] + 16))();
    objc_storeStrong(v7, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
}

void sub_10007CC78(uint64_t a1)
{
  v40[2] = a1;
  v40[1] = a1;
  v40[0] = 0;
  v39 = 0;
  location = _AKLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v45, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, location, v37, "Command message ready for sending to to paired device: %@", v45, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v36 = 0;
  v36 = [*(a1 + 40) _activePairedTinkerDevice];
  _objc_release(0);
  if (!v36)
  {
    v35 = _AKLogSystem();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v35;
      v17 = v34;
      sub_10001CEEC(v33);
      _os_log_impl(&_mh_execute_header, v16, v17, "Setting paired device.", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    v1 = sub_100079BA0();
    v2 = v36;
    v36 = v1;
    _objc_release(v2);
  }

  v12 = *(*(a1 + 40) + 8);
  v14 = [*(a1 + 32) transportRepresentation];
  v13 = [NSSet setWithObject:v36];
  v3 = *(a1 + 48);
  v31 = v40[0];
  v30 = v39;
  v15 = [v12 sendMessage:v14 toDestinations:? priority:? options:? identifier:? error:?];
  objc_storeStrong(v40, v31);
  objc_storeStrong(&v39, v30);
  _objc_release(v13);
  _objc_release(v14);
  v32 = v15;
  if (v15)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v41, v40[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Message is on its way to paired device with transport ID: %@", v41, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6 = *(*(a1 + 40) + 24);
    v8 = objc_retainBlock(*(a1 + 56));
    v7 = [*(a1 + 32) identifier];
    [v6 setObject:v8 forKey:?];
    _objc_release(v7);
    _objc_release(v8);
    v9 = *(*(a1 + 40) + 32);
    v10 = [*(a1 + 32) identifier];
    [v9 setObject:? forKey:?];
    _objc_release(v10);
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v44, v39);
      _os_log_error_impl(&_mh_execute_header, v29, v28, "IDSService sendMessage method failed. Error: %@", v44, 0xCu);
    }

    objc_storeStrong(&v29, 0);
    v27 = 0;
    if (v39)
    {
      v42 = NSUnderlyingErrorKey;
      v43 = v39;
      v4 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v5 = v27;
      v27 = v4;
      _objc_release(v5);
    }

    queue = dispatch_get_global_queue(21, 0);
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_10007D2AC;
    v24 = &unk_100320530;
    v26 = _objc_retain(*(a1 + 56));
    v25 = _objc_retain(v27);
    dispatch_async(queue, &v20);
    _objc_release(queue);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(v40, 0);
}

void sub_10007D2AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8014 userInfo:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, 0);
  _objc_release(v2);
}

void sub_10007D4A4(uint64_t a1, int a2)
{
  *(v2 - 80) = a1;
  *(v2 - 84) = a2;
  _Block_object_dispose((v2 - 64), 8);
  _Unwind_Resume(*(v2 - 80));
}

void sub_10007D4C8(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = a3;
  v15 = a4;
  v14[1] = a1;
  if ([location[0] isActive])
  {
    v14[0] = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v14[0];
      type = v13;
      sub_10001CEEC(v12);
      _os_log_impl(&_mh_execute_header, log, type, "Found active tinker device", v12, 2u);
    }

    objc_storeStrong(v14, 0);
    v4 = IDSCopyIDForDevice();
    v5 = *(a1[4] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
    _objc_release(v6);
    *v15 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_10007D9DC(uint64_t *a1)
{
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = 0;
  v14 = 0;
  location = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v17, a1[4]);
    _os_log_impl(&_mh_execute_header, location, v12, "Will send reply message to paired device: %@", v17, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v2 = *(a1[5] + 8);
  v5 = [a1[4] transportRepresentation];
  v4 = sub_100079BA0();
  v3 = [NSSet setWithObject:?];
  v1 = a1[6];
  v10 = v15[0];
  v9 = v14;
  v6 = [v2 sendMessage:v5 toDestinations:? priority:? options:? identifier:? error:?];
  objc_storeStrong(v15, v10);
  objc_storeStrong(&v14, v9);
  _objc_release(v3);
  _objc_release(v4);
  _objc_release(v5);
  v11 = v6;
  if ((v6 & 1) == 0)
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v16, v14);
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "IDSService sendMessage method failed to send reply. Error: %@", v16, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  if (a1[7])
  {
    (*(a1[7] + 16))();
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
}

void sub_10007E67C(uint64_t a1, char a2, id obj, void *a4)
{
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11[1] = a1;
  v10 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v14;
  v8 = location;
  v9 = v12;
  v11[0] = _objc_retain(*(a1 + 48));
  [v10 _replyToCommandMessageWithInternalID:v6 didSucceed:v7 & 1 returnData:v8 error:v9 completion:?];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

void sub_10007E7CC(uint64_t a1, char a2, id obj)
{
  v5 = a1;
  v4 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong(&location, 0);
}

void sub_10007F400(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5[1] = a1;
  if (location[0])
  {
    v5[0] = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:?];
    (*(a1[4] + 16))();
    objc_storeStrong(v5, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_10007F50C(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10007F58C(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10007F60C(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10007F68C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5[1] = a1;
  if (location[0])
  {
    v5[0] = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:?];
    (*(a1[4] + 16))();
    objc_storeStrong(v5, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_10007F798(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  v3 = [AKAttestationData alloc];
  v11[0] = [v3 initWithDictionary:location[0]];
  v10 = 0;
  v8 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v11[0] requiringSecureCoding:1 error:&v8];
  objc_storeStrong(&v10, v8);
  v9 = v6;
  if (v10)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v14, v10);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error while serializing attestation data %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_10007FF00(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v7, *(a1 + 32));
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "Calling out to pending completion handler for ID %@...", v7, 0xCu);
  }

  objc_storeStrong(location, 0);
  v2 = *(a1 + 48);
  v1 = [*(a1 + 40) didSucceed];
  v4 = [*(a1 + 40) returnData];
  v3 = [*(a1 + 40) error];
  (*(v2 + 16))(v2, v1, v4);
  _objc_release(v3);
  _objc_release(v4);
}

uint64_t start(int a1, void *a2)
{
  v17 = 0;
  v16 = a1;
  location[1] = a2;
  v8 = objc_autoreleasePoolPush();
  location[0] = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v14;
    sub_10001CEEC(v13);
    _os_log_impl(&_mh_execute_header, log, type, "akd is starting up...", v13, 2u);
  }

  objc_storeStrong(location, 0);
  v12 = +[AKDaemonConnectionManager sharedInstance];
  [(AKDaemonConnectionManager *)v12 start];
  objc_storeStrong(&v12, 0);
  objc_autoreleasePoolPop(v8);
  v5 = +[NSRunLoop mainRunLoop];
  [(NSRunLoop *)v5 run];
  _objc_release(v5);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v11;
    v4 = v10;
    sub_10001CEEC(v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "akd is shutting down...", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  return 0;
}

void sub_1000814CC(id *a1, void *a2)
{
  v3[3] = a1;
  v3[2] = a2;
  v3[1] = a1;
  v3[0] = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  [a1[4] addObject:v3[0]];
  objc_storeStrong(v3, 0);
}

void sub_100081BB4(id a1)
{
  v3 = [AKSecurePakeManager alloc];
  v6 = +[AKAccountManager sharedInstance];
  v5 = +[AKAppleIDPushHelperService sharedService];
  v4 = objc_opt_new();
  v1 = [(AKSecurePakeManager *)v3 initWithAccountManager:v6 pushHelperService:v5 keychainManager:?];
  v2 = qword_100374708;
  qword_100374708 = v1;
  _objc_release(v2);
  _objc_release(v4);
  _objc_release(v5);
  _objc_release(v6);
}

void sub_10008202C(uint64_t a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v11, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, oslog[0], type, "Processed secure pake message: %@", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v10, *(a1 + 32), location);
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to process secure pake message: %@ with error: %@", v10, 0x16u);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_100082C38(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 4);
  if (v12[0])
  {
    [v12[0] _requestUserPermissionWithContext:location[0] completionHandler:v13];
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_fault_impl(&_mh_execute_header, log, type, "Strong self has been lost, blocking SPAKE2+ flow from requesting user permission", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    if (v13)
    {
      v3 = v13;
      v4 = [NSError ak_errorWithCode:-7001];
      v3[2](v3, 0);
      _objc_release(v4);
    }
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_100082DC8(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 4);
  if (v12[0])
  {
    [v12[0] _showCodeWithContext:location[0] completionHandler:v13];
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_fault_impl(&_mh_execute_header, log, type, "Strong self has been lost, blocking SPAKE2+ flow from showing code", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    if (v13)
    {
      v3 = v13;
      v4 = [NSError ak_errorWithCode:-7001];
      v3[2](v3, 0);
      _objc_release(v4);
    }
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_100082F58(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (location[0])
  {
    v12[0] = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v17, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v12[0], v11, "Successfully created shared key %@", v17, 0xCu);
    }

    objc_storeStrong(v12, 0);
    v10 = 0;
    v3 = a1[4];
    v9 = 0;
    [v3 updateSharedKey:location[0] error:&v9];
    objc_storeStrong(&v10, v9);
    if (v10)
    {
      oslog = _AKLogSystem();
      v7 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000831E0(v16, v10);
        _os_log_error_impl(&_mh_execute_header, oslog, v7, "AKSecurePakeManager - Failed to update shared key with error - %{private}@", v16, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    v6 = _AKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000831E0(v15, v13);
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to create shared key with error %{private}@", v15, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1000831E0(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 1) = 1;
  *(result + 2) = 65;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_100085A64(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (!v11 && location[0])
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v13, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Successfully launched process: %@", v13, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v14, off_100370BE0, v11);
      _os_log_error_impl(&_mh_execute_header, v10[0], v9, "Unable to launch application: %@ with the error: %@", v14, 0x16u);
    }

    objc_storeStrong(v10, 0);
    v3 = a1[4];
    v4 = [NSError ak_errorWithCode:-7034];
    [v3 _callCompletionWithResults:0 password:0 additionalData:? error:?];
    _objc_release(v4);
    v8 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

id sub_100087700(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

uint64_t sub_100087790(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  if (a1 != 2)
  {
    return 0;
  }

  return 2;
}

void sub_100088508(id a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v6[0] = +[AKFollowUpProviderFactory sharedAuthKitFollowupProvider];
  v5 = objc_alloc_init(AKFollowUpFactoryImpl);
  [v5 setExtensionIdentifier:AKFollowUpServerUIExtensionIdentifier];
  v1 = [AKFollowUpManager alloc];
  v2 = [(AKFollowUpManager *)v1 initWithFollowUpFactory:v5 provider:v6[0]];
  v3 = qword_100374718;
  qword_100374718 = v2;
  _objc_release(v3);
  v4 = objc_alloc_init(AKFollowUpControllerServiceProviderImpl);
  [qword_100374718 setServiceProvider:?];
  _objc_release(v4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);
}

void sub_100088D24(id a1)
{
  v1 = objc_alloc_init(AKCarrierBundleUtilities);
  v2 = qword_100374728;
  qword_100374728 = v1;
  _objc_release(v2);
}

uint64_t sub_100089974(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = [location[0] uuid];
  v4 = [a1[4] uuid];
  v6 = [v5 isEqual:?];
  _objc_release(v4);
  _objc_release(v5);
  objc_storeStrong(location, 0);
  return v6;
}

void sub_100089CB8(id a1)
{
  v1 = objc_alloc_init(AKWebSessionPCSKeyProvider);
  v2 = qword_100374738;
  qword_100374738 = v1;
  _objc_release(v2);
}

void sub_10008A16C(void *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (v12)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, log, type, "PCS auth context saved successfully in keychain.", v8, 2u);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v3 = [location description];
      sub_1000194D4(v14, v3);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to save pcs auth context in keychain with error: %@", v14, 0xCu);
      _objc_release(v3);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10008A5C4(void *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (v12)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, log, type, "PCS auth context updated successfully in keychain.", v8, 2u);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v3 = [location description];
      sub_1000194D4(v14, v3);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to update pcs auth context in keychain with error: %@", v14, 0xCu);
      _objc_release(v3);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10008A9D8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v29 = 0;
  objc_storeStrong(&v29, a3);
  v28[1] = a1;
  v16 = [location[0] value];
  _objc_release(v16);
  if (v16)
  {
    v28[0] = _AKLogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v28[0];
      type = v27;
      sub_10001CEEC(v26);
      _os_log_impl(&_mh_execute_header, log, type, "Keychain item found for given auth context. Checking if it's still valid...", v26, 2u);
    }

    objc_storeStrong(v28, 0);
    v25 = 0;
    v9 = objc_opt_class();
    v11 = [location[0] value];
    v23 = v25;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:"unarchivedObjectOfClass:fromData:error:" fromData:v9 error:?];
    objc_storeStrong(&v25, v23);
    v24 = v10;
    _objc_release(v11);
    if (v25)
    {
      v22 = _AKLogSystem();
      v21 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v8 = [v29 description];
        sub_1000194D4(v32, v8);
        _os_log_error_impl(&_mh_execute_header, v22, v21, "Failed to unarchive data of class AKPCSAuthContext with error: %@", v32, 0xCu);
        _objc_release(v8);
      }

      objc_storeStrong(&v22, 0);
      (*(*(a1 + 40) + 16))();
    }

    else if ([v24 isValid])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v20 = _AKLogSystem();
      v19 = 16;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v6 = v20;
        v7 = v19;
        sub_10001CEEC(v18);
        _os_log_error_impl(&_mh_execute_header, v6, v7, "Context expired and will be removed from keychain.", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      [*(a1 + 32) _removeAllExpiredPCSCredentials];
      v4 = *(a1 + 40);
      v5 = [NSError errorWithDomain:AKWalrusErrorDomain code:-5002 userInfo:0];
      (*(v4 + 16))(v4, 0);
      _objc_release(v5);
    }

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    v17 = _AKLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v3 = [v29 description];
      sub_1000194D4(v31, v3);
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to fetch pcs auth context from keychain with error: %@", v31, 0xCu);
      _objc_release(v3);
    }

    objc_storeStrong(&v17, 0);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void sub_10008AF6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AKKeychainItemDescriptor pcsAuthDescriptor];
  [v1 _removeCredentialWithDescriptor:?];
  _objc_release(v2);
}

void sub_10008B324(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v2 = *(*(a1 + 32) + 8);
  v1 = *(a1 + 40);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10008B3F8;
  v7 = &unk_1003216C0;
  v8[0] = _objc_retain(*(a1 + 32));
  [v2 fetchKeychainItemsWithDescriptor:v1 completion:?];
  objc_storeStrong(v8, 0);
}

void sub_10008B3F8(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  if (v16)
  {
    v15[0] = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15[0], OS_LOG_TYPE_ERROR))
    {
      v4 = [v16 description];
      sub_1000194D4(v18, v4);
      _os_log_error_impl(&_mh_execute_header, v15[0], v14, "Failed to fetch keychain items with error: %@", v18, 0xCu);
      _objc_release(v4);
    }

    objc_storeStrong(v15, 0);
    v13 = 1;
  }

  else
  {
    v3 = location[0];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10008B5F4;
    v11 = &unk_100321698;
    v12 = _objc_retain(a1[4]);
    [v3 enumerateObjectsUsingBlock:&v7];
    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_10008B5F4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[3] = a3;
  v15[2] = a4;
  v15[1] = a1;
  v11 = [location[0] value];
  _objc_release(v11);
  if (v11)
  {
    v15[0] = 0;
    v5 = objc_opt_class();
    v7 = [location[0] value];
    v13 = v15[0];
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:"unarchivedObjectOfClass:fromData:error:" fromData:v5 error:?];
    objc_storeStrong(v15, v13);
    v14 = v6;
    _objc_release(v7);
    if (!v15[0] && ![v14 isValid])
    {
      v12 = +[AKKeychainItemDescriptor pcsAuthDescriptor];
      v4 = [v14 webSessionIdentifier];
      [v12 setAccount:?];
      _objc_release(v4);
      [a1[4] _removeCredentialWithDescriptor:v12];
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(v15, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_10008B840(id a1, BOOL a2, NSError *a3)
{
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v11[1] = a1;
  if (location)
  {
    v11[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      v5 = [location description];
      sub_1000194D4(v15, v5);
      _os_log_error_impl(&_mh_execute_header, v11[0], v10, "Failed to delete pcs credentials from keychain with error: %@", v15, 0xCu);
      _objc_release(v5);
    }

    objc_storeStrong(v11, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, v3, v4, "All pcs credentials deleted successfully from keychain.", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10008C130(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("AKAuthVerificationQueue", v3);
  v2 = qword_100374748;
  qword_100374748 = v1;
  _objc_release(v2);
  _objc_release(v3);
}

void sub_10008C3F0(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = a1[4];
  v6 = [location[0] allAccountNames];
  (*(v5 + 16))();
  _objc_release(v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10008CB88(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v5[0] = [*(*(a1 + 32) + 96) authKitAccountWithAltDSID:*(a1 + 40) error:0];
  if (v5[0])
  {
    [*(a1 + 32) _setAuthKitAccount:v5[0] inUse:*(a1 + 64) & 1 forService:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    location = _AKLogSystem();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v6, *(a1 + 40));
      _os_log_error_impl(&_mh_execute_header, location, OS_LOG_TYPE_ERROR, "No existing IDMS account for altDSID %@", v6, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v1 = *(a1 + 48);
    v2 = [NSError ak_errorWithCode:-7023];
    (*(v1 + 16))(v1, 0);
    _objc_release(v2);
  }

  objc_storeStrong(v5, 0);
}

void sub_10008CFF8(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v5[0] = [*(*(a1 + 32) + 96) authKitAccountWithDSID:*(a1 + 40)];
  if (v5[0])
  {
    [*(a1 + 32) _setAuthKitAccount:v5[0] inUse:*(a1 + 64) & 1 forService:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    location = _AKLogSystem();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v6, *(a1 + 40));
      _os_log_error_impl(&_mh_execute_header, location, OS_LOG_TYPE_ERROR, "No existing IDMS account for DSID %@", v6, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v1 = *(a1 + 48);
    v2 = [NSError ak_errorWithCode:-7023];
    (*(v1 + 16))(v1, 0);
    _objc_release(v2);
  }

  objc_storeStrong(v5, 0);
}

void sub_10008DC98(unint64_t a1, int a2)
{
  STACK[0x2C8] = a1;
  LODWORD(STACK[0x2C4]) = a2;
  objc_end_catch();
  JUMPOUT(0x10008DDA8);
}

void sub_10008DDD0(uint64_t a1, char a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14[1] = a1;
  v14[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v18, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, v14[0], v13, "Removing unusued IDMS account %@...", v18, 0xCu);
  }

  objc_storeStrong(v14, 0);
  v4 = [*(*(a1 + 40) + 96) store];
  v3 = *(a1 + 32);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10008DFD4;
  v10 = &unk_10031F838;
  v11 = _objc_retain(*(a1 + 32));
  v12 = _objc_retain(*(a1 + 48));
  [v4 removeAccount:v3 withCompletionHandler:&v6];
  _objc_release(v4);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

void sub_10008DFD4(uint64_t a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v10, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully removed account %@.", v10, 0xCu);
    }

    objc_storeStrong(&v4, 0);
  }

  else
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v11, *(a1 + 32), location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], type, "Failed to remove account %@. Error: %@", v11, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10008E3D8(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = a1[4];
  v6 = [location[0] dictionaryRepresentation];
  (*(v5 + 16))();
  _objc_release(v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10008E6DC(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (a1[4])
  {
    v3 = (a1[4] + 16);
    v4 = [location[0] userInformationRepresentation];
    (*v3)();
    _objc_release(v4);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10008E9F0(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = a1[4];
  v6 = [location[0] userInformationRepresentation];
  (*(v5 + 16))();
  _objc_release(v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10008F2B8(void *a1, void *a2, void *a3, id obj)
{
  location[2] = a2;
  location[3] = a3;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, obj);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_10008F504(uint64_t a1, uint64_t a2, uint64_t a3, id obj)
{
  *&v18 = a2;
  *(&v18 + 1) = a3;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v16 = a1;
  if ([*(a1 + 40) _shouldShowAlertForAuthModeError:location[0]])
  {
    v6 = *(a1 + 40);
    v4 = location[0];
    v5 = *(a1 + 48);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10008F688;
    v12 = &unk_100321848;
    v14 = _objc_retain(*(a1 + 56));
    v15 = v18;
    v13 = _objc_retain(location[0]);
    [v6 _showAlertForLoginError:v4 context:v5 completion:&v8];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_10008F688(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = a1[4];
  v6 = a1[6];
  v7 = a1[7];
  (*(a1[5] + 16))();
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_10008FAC0(uint64_t *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24[1] = a1;
  if (v25)
  {
    v24[0] = _AKLogSystem();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v31, v25);
      _os_log_error_impl(&_mh_execute_header, v24[0], v23, "Failed to fetch device info with error: %@", v31, 0xCu);
    }

    objc_storeStrong(v24, 0);
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }

    v22 = 1;
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001CE98(v30, 1752392040, a1[4]);
      _os_log_impl(&_mh_execute_header, v21, v20, "Fetched device info for %{mask.hash}@", v30, 0x16u);
    }

    objc_storeStrong(&v21, 0);
    v19 = [AAFSerialization dictionaryFromObject:v26 ofType:@"application/json"];
    if (v19)
    {
      v16 = 0;
      v4 = [AKDeviceSafetyRestrictionState alloc];
      v14 = v16;
      v7 = [v4 initWithResponse:v19 error:&v14];
      objc_storeStrong(&v16, v14);
      v15 = v7;
      if (!v16 && v15)
      {
        if (a1[5])
        {
          (*(a1[5] + 16))();
        }

        v22 = 0;
      }

      else
      {
        oslog = _AKLogSystem();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000333DC(v28, v25);
        }

        objc_storeStrong(&oslog, 0);
        if (a1[5])
        {
          v5 = a1[5];
          v6 = [NSError ak_deviceListErrorWithCode:-14005];
          (*(v5 + 16))(v5, 0);
          _objc_release(v6);
        }

        v22 = 1;
      }

      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10001CE98(v29, 1752392040, a1[4]);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "Failed to parse device info JSON for altDSID: %{mask.hash}@", v29, 0x16u);
      }

      objc_storeStrong(&v18, 0);
      if (a1[5])
      {
        v8 = a1[5];
        v9 = [NSError ak_deviceListErrorWithCode:-14005];
        (*(v8 + 16))(v8, 0);
        _objc_release(v9);
      }

      v22 = 1;
    }

    objc_storeStrong(&v19, 0);
    if (!v22)
    {
      v22 = 0;
    }
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_100090360(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  oslog[1] = a1;
  if (v7)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v9, v7);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to fetch device list with error: %@", v9, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    if (a1[5].isa)
    {
      (*(a1[5].isa + 2))();
    }
  }

  else
  {
    [(objc_class *)a1[4].isa updateWithDeviceRestrictionState:location[0]];
    if (a1[5].isa)
    {
      isa = a1[4].isa;
      (*(a1[5].isa + 2))();
    }
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1000908E4(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v8, v6);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to fetch device list with error: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    if (a1[6].isa)
    {
      (*(a1[6].isa + 2))();
    }
  }

  else if ([(objc_class *)a1[4].isa fetchDeviceSafetyState]== 1)
  {
    [(objc_class *)a1[5].isa _updateDeviceListResponseWithDeviceInfo:location[0] completion:a1[6].isa];
  }

  else if (a1[6].isa)
  {
    (*(a1[6].isa + 2))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_100090ABC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21 = a1;
  v7 = +[AKFeatureManager sharedManager];
  v18 = 0;
  v8 = 0;
  if ([v7 isAuthenticatedRequestSerializationEnabled])
  {
    v19 = +[AKFeatureManager sharedManager];
    v18 = 1;
    v8 = [v19 isSilentAuthenticationRequestSerializationEnabled];
  }

  if (v18)
  {
    _objc_release(v19);
  }

  _objc_release(v7);
  v20 = v8 & 1;
  if (v8 & 1) != 0 && ([v22 ak_isAuthenticationErrorWithCode:-7026])
  {
    v17 = [[AKAppleIDAuthenticationContext alloc] initWithAuthenticatedServerRequestContext:a1[4]];
    [v17 setAuthenticationType:1];
    [v17 set_ignoreShouldContinueProxy:1];
    v4 = a1[5];
    v3 = v17;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_100090DA4;
    v13 = &unk_100321910;
    v14 = _objc_retain(a1[5]);
    v15 = _objc_retain(a1[4]);
    v16 = _objc_retain(a1[6]);
    [v4 authenticateWithContext:v3 completion:&v9];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    (*(a1[6] + 2))();
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void sub_100090DA4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (location[0])
  {
    [*(a1 + 32) _performDeviceListRequestWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [NSError ak_errorWithCode:-7026 underlyingError:v7];
    (*(v3 + 16))(v3, 0);
    _objc_release(v4);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10009101C(id *a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = [a1[4] _deviceListProviderWithContext:a1[5]];
  v1 = [AKServiceControllerImpl alloc];
  v12 = [(AKServiceControllerImpl *)v1 initWithRequestProvider:v13[0]];
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000911B8;
  v8 = &unk_100321988;
  v9 = _objc_retain(a1[4]);
  v10 = _objc_retain(a1[5]);
  v11 = _objc_retain(a1[6]);
  [(AKServiceControllerImpl *)v3 executeRequestWithCompletion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
}

void sub_1000911B8(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18[1] = a1;
  v9 = *(a1[4] + 4);
  v7 = a1[5];
  v8 = *(a1[4] + 1);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000913D4;
  v13 = &unk_100321960;
  v14 = _objc_retain(a1[4]);
  v15 = _objc_retain(a1[5]);
  v16 = _objc_retain(v19);
  v17 = _objc_retain(v20);
  v18[0] = _objc_retain(a1[6]);
  [v9 endAuthenticatedRequestWithContext:v7 client:v8 clearanceHandler:?];
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

id sub_1000919F0(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

void sub_100091C00(uint64_t *a1)
{
  if ([a1[4] type] == 3 && (objc_msgSend(*(a1[5] + 8), "hasServerOnlyDeviceListAccess") & 1) != 0)
  {
    v6 = +[AKDeviceListStoreManager sharedManager];
    [(AKDeviceListStoreManager *)v6 updateCacheWithContext:a1[4] deviceListResponse:a1[6] completionHandler:&stru_1003219C8];
    _objc_release(v6);
  }

  else
  {
    v5 = +[AKDeviceListStoreManager sharedManager];
    v1 = a1[6];
    v2 = a1[4];
    v4 = +[AKAccountManager sharedInstance];
    v3 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [AKDeviceListStoreManager verifyCacheSyncStatusFromResponse:v5 context:"verifyCacheSyncStatusFromResponse:context:accountManager:reporter:completionHandler:" accountManager:v1 reporter:v2 completionHandler:v4];
    _objc_release(v3);
    _objc_release(v4);
    _objc_release(v5);
  }
}

void sub_100091D6C(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Device list cache updated with error - %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_100091E64(id a1, BOOL a2, NSError *a3)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100091F70(v8, v6, location);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Verified device list cache in background with success - %d and error - %@", v8, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_100091F70(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

void sub_100092B00(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100092E74(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10009337C(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([*(a1[4] + 8) hasInternalAccess])
  {
    v6 = [[AKDServerUIController alloc] initWithClient:*(a1[4] + 8)];
    [(AKDServerUIController *)v6 getServerUILoadDelegateWithContext:a1[5] completion:a1[6]];
    objc_storeStrong(&v6, 0);
  }

  else
  {
    location[0] = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      v4 = v8;
      sub_10001CEEC(v7);
      _os_log_error_impl(&_mh_execute_header, log, v4, "Internal access entitlement required but missing!", v7, 2u);
    }

    objc_storeStrong(location, 0);
    v1 = a1[6];
    v2 = [NSError ak_errorWithCode:-7026];
    (*(v1 + 16))(v1, 0);
    _objc_release(v2);
  }
}

void sub_100093864(uint64_t a1)
{
  v96 = a1;
  v95 = a1;
  v94 = 0uLL;
  v28 = _AKSignpostLogSystem();
  *&v93 = _AKSignpostCreate();
  *(&v93 + 1) = v1;
  _objc_release(v28);
  log = _AKSignpostLogSystem();
  v91 = 1;
  v90 = v93;
  if (v93 && v90 != -1 && os_signpost_enabled(log))
  {
    v24 = log;
    type = v91;
    spid = v90;
    sub_10001CEEC(v89);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, type, spid, "UpdateStateWithAuthResponse", " enableTelemetry=YES ", v89, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _AKSignpostLogSystem();
  v87 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v107, v93);
    _os_log_impl(&_mh_execute_header, oslog, v87, "BEGIN [%lld]: UpdateStateWithAuthResponse  enableTelemetry=YES ", v107, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v94 = v93;
  if ([*(*(a1 + 32) + 8) hasWriteAccess])
  {
    if ([AKAppleIDServerResourceLoadDelegate signalFromServerResponse:*(a1 + 40)])
    {
      v19 = [*(a1 + 48) username];
      _objc_release(v19);
      if (v19)
      {
        v12 = [AKAuthenticationServerResponse alloc];
        v11 = *(a1 + 40);
        v13 = [*(a1 + 48) username];
        v55 = [(AKAuthenticationServerResponse *)v12 initWithServerResponse:v11 forAppleID:?];
        _objc_release(v13);
        v14 = *(*(a1 + 32) + 96);
        v15 = [*(a1 + 48) username];
        v54 = [v14 authKitAccountWithAppleID:? error:?];
        _objc_release(v15);
        v52 = 0;
        v16 = 0;
        if (!v54)
        {
          v53 = [v55 appleID];
          v52 = 1;
          v16 = v53 != 0;
        }

        if (v52)
        {
          _objc_release(v53);
        }

        if (v16)
        {
          v9 = *(*(a1 + 32) + 96);
          v10 = [v55 appleID];
          v2 = [v9 authKitAccountWithAppleID:? error:?];
          v3 = v54;
          v54 = v2;
          _objc_release(v3);
          _objc_release(v10);
        }

        if (v54)
        {
          v41 = _AKLogSystem();
          v40 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000194D4(v97, v54);
            _os_log_impl(&_mh_execute_header, v41, v40, "Updating IDMS account %@ with external server auth response...", v97, 0xCu);
          }

          objc_storeStrong(&v41, 0);
          v4 = *(a1 + 32);
          queue = [objc_opt_class() _verificationQueue];
          v29 = _NSConcreteStackBlock;
          v30 = -1073741824;
          v31 = 0;
          v32 = sub_1000948AC;
          v33 = &unk_100321A10;
          v34 = _objc_retain(*(a1 + 32));
          v35 = _objc_retain(v54);
          v36 = _objc_retain(v55);
          v37 = _objc_retain(*(a1 + 48));
          v39 = v94;
          v38 = _objc_retain(*(a1 + 56));
          dispatch_async(queue, &v29);
          _objc_release(queue);
          objc_storeStrong(&v38, 0);
          objc_storeStrong(&v37, 0);
          objc_storeStrong(&v36, 0);
          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v34, 0);
          v42 = 0;
        }

        else
        {
          v51 = _AKLogSystem();
          v50 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v8 = [*(a1 + 48) username];
            sub_1000194D4(v100, v8);
            _os_log_error_impl(&_mh_execute_header, v51, v50, "No existing IDMS account for Apple ID: %@", v100, 0xCu);
            _objc_release(v8);
          }

          objc_storeStrong(&v51, 0);
          v49 = [NSError ak_errorWithCode:-7023];
          v48 = _AKSignpostGetNanoseconds() / 1000000000.0;
          v47 = _AKSignpostLogSystem();
          v46 = OS_SIGNPOST_INTERVAL_END;
          v45 = v94;
          if (v94 && v45 != -1 && os_signpost_enabled(v47))
          {
            sub_100034290(v99, [v49 code]);
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v46, v45, "UpdateStateWithAuthResponse", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v99, 8u);
          }

          objc_storeStrong(&v47, 0);
          v44 = _AKSignpostLogSystem();
          v43 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000343D0(v98, v94, *&v48, [v49 code]);
            _os_log_impl(&_mh_execute_header, v44, v43, "END [%lld] %fs:UpdateStateWithAuthResponse  Error=%{public,signpost.telemetry:number2,name=Error}d ", v98, 0x1Cu);
          }

          objc_storeStrong(&v44, 0);
          v6 = *(a1 + 56);
          v7 = [NSError ak_errorWithCode:-7023];
          (*(v6 + 16))(v6, 0);
          _objc_release(v7);
          v42 = 1;
          objc_storeStrong(&v49, 0);
        }

        objc_storeStrong(&v54, 0);
        objc_storeStrong(&v55, 0);
      }

      else
      {
        v65 = _AKLogSystem();
        v64 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v17 = v65;
          v18 = v64;
          sub_10001CEEC(v63);
          _os_log_error_impl(&_mh_execute_header, v17, v18, "No Apple ID was provided.", v63, 2u);
        }

        objc_storeStrong(&v65, 0);
        v62 = [NSError ak_errorWithCode:-7022];
        v61 = _AKSignpostGetNanoseconds() / 1000000000.0;
        v60 = _AKSignpostLogSystem();
        v59 = OS_SIGNPOST_INTERVAL_END;
        v58 = v94;
        if (v94 && v58 != -1 && os_signpost_enabled(v60))
        {
          sub_100034290(v102, [v62 code]);
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, v59, v58, "UpdateStateWithAuthResponse", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v102, 8u);
        }

        objc_storeStrong(&v60, 0);
        v57 = _AKSignpostLogSystem();
        v56 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000343D0(v101, v94, *&v61, [v62 code]);
          _os_log_impl(&_mh_execute_header, v57, v56, "END [%lld] %fs:UpdateStateWithAuthResponse  Error=%{public,signpost.telemetry:number2,name=Error}d ", v101, 0x1Cu);
        }

        objc_storeStrong(&v57, 0);
        (*(*(a1 + 56) + 16))();
        objc_storeStrong(&v62, 0);
      }
    }

    else
    {
      v75 = _AKLogSystem();
      v74 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v20 = v75;
        v21 = v74;
        sub_10001CEEC(v73);
        _os_log_error_impl(&_mh_execute_header, v20, v21, "The provided URL response is not formatted as a final auth response.", v73, 2u);
      }

      objc_storeStrong(&v75, 0);
      v72 = [NSError ak_errorWithCode:-7010];
      v71 = _AKSignpostGetNanoseconds() / 1000000000.0;
      v70 = _AKSignpostLogSystem();
      v69 = OS_SIGNPOST_INTERVAL_END;
      v68 = v94;
      if (v94 && v68 != -1 && os_signpost_enabled(v70))
      {
        sub_100034290(v104, [v72 code]);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, v69, v68, "UpdateStateWithAuthResponse", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v104, 8u);
      }

      objc_storeStrong(&v70, 0);
      v67 = _AKSignpostLogSystem();
      v66 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000343D0(v103, v94, *&v71, [v72 code]);
        _os_log_impl(&_mh_execute_header, v67, v66, "END [%lld] %fs:UpdateStateWithAuthResponse  Error=%{public,signpost.telemetry:number2,name=Error}d ", v103, 0x1Cu);
      }

      objc_storeStrong(&v67, 0);
      (*(*(a1 + 56) + 16))();
      objc_storeStrong(&v72, 0);
    }
  }

  else
  {
    v86 = _AKLogSystem();
    v85 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v22 = v86;
      v23 = v85;
      sub_10001CEEC(v84);
      _os_log_error_impl(&_mh_execute_header, v22, v23, "Write access entitlement required but missing!", v84, 2u);
    }

    objc_storeStrong(&v86, 0);
    v83 = [NSError ak_errorWithCode:-7026];
    v82 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v81 = _AKSignpostLogSystem();
    v80 = OS_SIGNPOST_INTERVAL_END;
    v79 = v94;
    if (v94 && v79 != -1 && os_signpost_enabled(v81))
    {
      sub_100034290(v106, [v83 code]);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, v80, v79, "UpdateStateWithAuthResponse", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v106, 8u);
    }

    objc_storeStrong(&v81, 0);
    v78 = _AKSignpostLogSystem();
    v77 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000343D0(v105, v94, *&v82, [v83 code]);
      _os_log_impl(&_mh_execute_header, v78, v77, "END [%lld] %fs:UpdateStateWithAuthResponse  Error=%{public,signpost.telemetry:number2,name=Error}d ", v105, 0x1Cu);
    }

    objc_storeStrong(&v78, 0);
    (*(*(a1 + 56) + 16))();
    objc_storeStrong(&v83, 0);
  }
}

void sub_1000948AC(void *a1)
{
  v52[2] = a1;
  v52[1] = a1;
  v52[0] = 0;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  obj = 0;
  [v2 _updateAuthKitAccount:v3 withServerResponse:v4 context:v5 error:&obj];
  objc_storeStrong(v52, obj);
  if (v52[0])
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v57, a1[5], v52[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Unable to update IDMS account %@. Error: %@", v57, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v48 = _AKLogSystem();
    v47 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v56, a1[5]);
      _os_log_debug_impl(&_mh_execute_header, v48, v47, "Successfully updated IDMS account %@", v56, 0xCu);
    }

    objc_storeStrong(&v48, 0);
  }

  v6 = a1[9];
  v7 = a1[10];
  v46 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v45 = _AKSignpostLogSystem();
  v44 = OS_SIGNPOST_INTERVAL_END;
  v43 = a1[9];
  if (v43 && v43 != -1 && os_signpost_enabled(v45))
  {
    sub_100034290(v55, [v52[0] code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v44, v43, "UpdateStateWithAuthResponse", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v55, 8u);
  }

  objc_storeStrong(&v45, 0);
  v42 = _AKSignpostLogSystem();
  v41 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v54, a1[9], *&v46, [v52[0] code]);
    _os_log_impl(&_mh_execute_header, v42, v41, "END [%lld] %fs:UpdateStateWithAuthResponse  Error=%{public,signpost.telemetry:number2,name=Error}d ", v54, 0x1Cu);
  }

  objc_storeStrong(&v42, 0);
  v40 = [a1[6] serviceTokens];
  if ([v40 count])
  {
    v36 = _AKLogSystem();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v36;
      v23 = v35;
      sub_10001CEEC(v34);
      _os_log_impl(&_mh_execute_header, v22, v23, "External auth response contains GS service tokens. Will persist those...", v34, 2u);
    }

    objc_storeStrong(&v36, 0);
    v33 = [v40 allKeys];
    v32 = objc_alloc_init(NSMutableDictionary);
    memset(__b, 0, sizeof(__b));
    v20 = _objc_retain(v33);
    v21 = [v20 countByEnumeratingWithState:__b objects:v53 count:16];
    if (v21)
    {
      v17 = *__b[2];
      v18 = 0;
      v19 = v21;
      while (1)
      {
        v16 = v18;
        if (*__b[2] != v17)
        {
          objc_enumerationMutation(v20);
        }

        v31 = *(__b[1] + 8 * v18);
        v29 = [v40 objectForKeyedSubscript:v31];
        v15 = [v29 stringValue];
        [v32 setObject:? forKeyedSubscript:?];
        _objc_release(v15);
        objc_storeStrong(&v29, 0);
        ++v18;
        if (v16 + 1 >= v19)
        {
          v18 = 0;
          v19 = [v20 countByEnumeratingWithState:__b objects:v53 count:16];
          if (!v19)
          {
            break;
          }
        }
      }
    }

    _objc_release(v20);
    v28 = 0;
    v11 = a1[4];
    v10 = v32;
    v14 = [a1[6] altDSID];
    v13 = [a1[6] dsid];
    v12 = [a1[6] appleID];
    v8 = a1[7];
    v27 = v28;
    [v11 _persistGrandSlamServiceTokens:v10 forAltDSID:v14 DSID:v13 appleID:? forContext:? error:?];
    objc_storeStrong(&v28, v27);
    _objc_release(v12);
    _objc_release(v13);
    _objc_release(v14);
    if (v28 || v52[0])
    {
      v9 = a1[8];
      if (v52[0])
      {
        (*(v9 + 16))(v9, 0, v52[0]);
      }

      else
      {
        (*(v9 + 16))(v9, 0, v28);
      }
    }

    else
    {
      (*(a1[8] + 16))();
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v39 = _AKLogSystem();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v39;
      v25 = v38;
      sub_10001CEEC(v37);
      _os_log_impl(&_mh_execute_header, v24, v25, "No GS service tokens to update. Done.", v37, 2u);
    }

    objc_storeStrong(&v39, 0);
    (*(a1[8] + 16))(a1[8], v52[0] == 0, v52[0]);
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(v52, 0);
}

void sub_100095A98(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v7 = [*(a1[4] + 96) store];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v8[0] = *location;
  v6 = [v7 credentialForAccount:v1 error:v8];
  objc_storeStrong(location, v8[0]);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v6;
  _objc_release(v3);
  _objc_release(v7);
}

void sub_100095B5C(uint64_t a1, char a2, id obj, void *a4, void *a5)
{
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000961CC(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v41 = 0;
  objc_storeStrong(&v41, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39[1] = a1;
  if (v40)
  {
    v39[0] = _AKLogSystem();
    v38 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v39[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v44, v40);
      _os_log_error_impl(&_mh_execute_header, v39[0], v38, "Validate-code request failed! Error: %@", v44, 0xCu);
    }

    objc_storeStrong(v39, 0);
    (*(a1[5] + 16))();
    v37 = 1;
  }

  else
  {
    v36 = [AAFSerialization dictionaryFromObject:v41 ofType:@"application/x-plist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v36 objectForKeyedSubscript:@"ec"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v32 integerValue])
        {
          if ([v32 integerValue] == -21669)
          {
            v26 = _AKLogSystem();
            v25 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v6 = v26;
              v7 = v25;
              sub_10001CEEC(v24);
              _os_log_impl(&_mh_execute_header, v6, v7, "Code is invalid!", v24, 2u);
            }

            objc_storeStrong(&v26, 0);
            v23 = [NSError ak_errorWithCode:-7036];
            v4 = a1[4];
            v5 = [v4 authKitAccount:0];
            [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.secondFactorValidation" account:v4 error:?];
            _objc_release(v5);
            (*(a1[5] + 16))();
            objc_storeStrong(&v23, 0);
          }
        }

        else
        {
          v29 = _AKLogSystem();
          v28 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v29;
            v11 = v28;
            sub_10001CEEC(v27);
            _os_log_impl(&_mh_execute_header, v10, v11, "Code is valid!", v27, 2u);
          }

          objc_storeStrong(&v29, 0);
          v8 = a1[4];
          v9 = [v8 authKitAccount:0];
          [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.secondFactorValidation" account:v8 error:?];
          _objc_release(v9);
          (*(a1[5] + 16))();
        }

        v37 = 0;
      }

      else
      {
        v31 = _AKLogSystem();
        v30 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v43, @"ec");
          _os_log_error_impl(&_mh_execute_header, v31, v30, "Invalid key %@ in server response.", v43, 0xCu);
        }

        objc_storeStrong(&v31, 0);
        v13 = a1[5];
        v12 = location[0];
        v14 = [NSError ak_errorWithCode:-7010];
        (*(v13 + 16))(v13, 0, 0, v12);
        _objc_release(v14);
        v37 = 1;
      }

      objc_storeStrong(&v32, 0);
    }

    else
    {
      v35 = _AKLogSystem();
      v34 = 16;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v18 = v35;
        v19 = v34;
        sub_10001CEEC(v33);
        _os_log_error_impl(&_mh_execute_header, v18, v19, "No body parameters in code validation response!", v33, 2u);
      }

      objc_storeStrong(&v35, 0);
      v16 = a1[5];
      v15 = location[0];
      v17 = [NSError ak_errorWithCode:-7010];
      (*(v16 + 16))(v16, 0, 0, v15);
      _objc_release(v17);
      v37 = 1;
    }

    objc_storeStrong(&v36, 0);
    if (!v37)
    {
      v37 = 0;
    }
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

void sub_10009792C(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v7 = [*(a1[4] + 96) store];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v8[0] = *location;
  v6 = [v7 credentialForAccount:v1 error:v8];
  objc_storeStrong(location, v8[0]);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v6;
  _objc_release(v3);
  _objc_release(v7);
}

void sub_1000979F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v68 = 0;
  objc_storeStrong(&v68, a3);
  v67 = 0;
  objc_storeStrong(&v67, a4);
  v66[1] = a1;
  if (v67)
  {
    v66[0] = _AKLogSystem();
    v65 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v66[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v79, v67);
      _os_log_error_impl(&_mh_execute_header, v66[0], v65, "Request to validate vetting token failed! Error: %@", v79, 0xCu);
    }

    objc_storeStrong(v66, 0);
    (*(*(a1 + 40) + 16))();
    v64 = 1;
  }

  else
  {
    v63 = [v68 statusCode];
    v62 = _AKLogSystem();
    v61 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [NSNumber numberWithInteger:v63];
      sub_1000194D4(v78, v31);
      _os_log_impl(&_mh_execute_header, v62, v61, "Code validation completed with HTTP status code: %@", v78, 0xCu);
      _objc_release(v31);
    }

    objc_storeStrong(&v62, 0);
    if (v63 == 401)
    {
      v60 = _AKLogSystem();
      v59 = 2;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v29 = v60;
        v30 = v59;
        sub_10001CEEC(v58);
        _os_log_debug_impl(&_mh_execute_header, v29, v30, "Seems like our master token has expired.", v58, 2u);
      }

      objc_storeStrong(&v60, 0);
      v57 = 0;
      v28 = [*(a1 + 32) username];
      _objc_release(v28);
      if (v28)
      {
        v25 = AKAppleIDAuthenticationErrorDomain;
        v76 = AKAuthenticationUsernameKey;
        v27 = [*(a1 + 32) username];
        v77 = v27;
        v26 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v4 = [NSError errorWithDomain:v25 code:-7058 userInfo:?];
        v5 = v57;
        v57 = v4;
        _objc_release(v5);
        _objc_release(v26);
        _objc_release(v27);
      }

      else
      {
        oslog = _AKLogSystem();
        v55 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v75, *(a1 + 32));
          _os_log_error_impl(&_mh_execute_header, oslog, v55, "Unusual ACAccount with nil username encountered: %@", v75, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v6 = [NSError ak_errorWithCode:-7058];
        v7 = v57;
        v57 = v6;
        _objc_release(v7);
      }

      (*(*(a1 + 40) + 16))();
      v64 = 1;
      objc_storeStrong(&v57, 0);
    }

    else if (v63 == 200)
    {
      v52 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/x-plist"];
      if (v52)
      {
        v48 = [v52 objectForKeyedSubscript:@"ec"];
        if (v48)
        {
          if ([v48 integerValue])
          {
            if ([v48 integerValue] == -23017)
            {
              v42 = _AKLogSystem();
              v41 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v12 = v42;
                v13 = v41;
                sub_10001CEEC(v40);
                _os_log_impl(&_mh_execute_header, v12, v13, "Server says vetting token is invalid.", v40, 2u);
              }

              objc_storeStrong(&v42, 0);
              (*(*(a1 + 40) + 16))();
            }

            else
            {
              v39 = [AKServerErrorGenerator errorFromServerResponseParameters:v52 authenticationError:-7057];
              v38 = _AKLogSystem();
              v37 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_1000194D4(v72, v39);
                _os_log_error_impl(&_mh_execute_header, v38, v37, "An error occurred validating the code. Server message: %@", v72, 0xCu);
              }

              objc_storeStrong(&v38, 0);
              v8 = [v48 integerValue];
              v9 = [v39 userInfo];
              v36 = [NSError errorWithDomain:@"IDMS" code:v8 userInfo:?];
              _objc_release(v9);
              v10 = AKAppleIDAuthenticationErrorDomain;
              v70 = NSUnderlyingErrorKey;
              v71 = v36;
              v11 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
              v35 = [NSError errorWithDomain:v10 code:-7057 userInfo:?];
              _objc_release(v11);
              (*(*(a1 + 40) + 16))();
              objc_storeStrong(&v35, 0);
              objc_storeStrong(&v36, 0);
              objc_storeStrong(&v39, 0);
            }
          }

          else
          {
            v45 = _AKLogSystem();
            v44 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v45;
              v15 = v44;
              sub_10001CEEC(v43);
              _os_log_impl(&_mh_execute_header, v14, v15, "Server says vetting token is valid.", v43, 2u);
            }

            objc_storeStrong(&v45, 0);
            (*(*(a1 + 40) + 16))();
          }

          v64 = 0;
        }

        else
        {
          v47 = _AKLogSystem();
          v46 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v73, @"ec");
            _os_log_error_impl(&_mh_execute_header, v47, v46, "Missing key %@ in server response.", v73, 0xCu);
          }

          objc_storeStrong(&v47, 0);
          v16 = *(a1 + 40);
          v17 = [NSError ak_errorWithCode:-7010];
          (*(v16 + 16))(v16, 0);
          _objc_release(v17);
          v64 = 1;
        }

        objc_storeStrong(&v48, 0);
      }

      else
      {
        v51 = _AKLogSystem();
        v50 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v20 = v51;
          v21 = v50;
          sub_10001CEEC(v49);
          _os_log_error_impl(&_mh_execute_header, v20, v21, "No body parameters in code validation response!", v49, 2u);
        }

        objc_storeStrong(&v51, 0);
        v18 = *(a1 + 40);
        v19 = [NSError ak_errorWithCode:-7010];
        (*(v18 + 16))(v18, 0);
        _objc_release(v19);
        v64 = 1;
      }

      objc_storeStrong(&v52, 0);
      if (!v64)
      {
        v64 = 0;
      }
    }

    else
    {
      v54 = _AKLogSystem();
      v53 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [NSNumber numberWithInteger:v63];
        sub_1000194D4(v74, v24);
        _os_log_impl(&_mh_execute_header, v54, v53, "Unexpected HTTP response code: %@", v74, 0xCu);
        _objc_release(v24);
      }

      objc_storeStrong(&v54, 0);
      v22 = *(a1 + 40);
      v23 = [NSError ak_errorWithCode:-7029];
      (*(v22 + 16))(v22, 0);
      _objc_release(v23);
      v64 = 1;
    }
  }

  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(location, 0);
}

BOOL sub_10009880C(id a1, ACAccount *a2, unint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v4 securityLevelForAccount:location[0]]!= 5;
  _objc_release(v4);
  objc_storeStrong(location, 0);
  return v5;
}

void sub_100098C94(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14[1] = a1;
  if (v15)
  {
    v14[0] = _AKLogSystem();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v19, v15);
      _os_log_error_impl(&_mh_execute_header, v14[0], v13, "Failed to fetch eligibility with error: %@", v19, 0xCu);
    }

    objc_storeStrong(v14, 0);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) altDSID];
      sub_1000194D4(v18, v6);
      _os_log_impl(&_mh_execute_header, v12, v11, "Fetched eligibility state for %@", v18, 0xCu);
      _objc_release(v6);
    }

    objc_storeStrong(&v12, 0);
    v10 = [AAFSerialization dictionaryFromObject:v16 ofType:@"application/x-plist"];
    v4 = *(a1 + 40);
    v5 = [v10 objectForKeyedSubscript:@"isHSA2Eligible"];
    (*(v4 + 16))(v4, [v5 BOOLValue], 0);
    _objc_release(v5);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_1000993F0(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v4 = *(a1 + 32);
  if (v6)
  {
    (*(v4 + 16))(v4, 0);
  }

  else
  {
    (*(v4 + 16))(v4, location);
  }

  objc_storeStrong(&location, 0);
}

void sub_100099944(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v4 = *(a1 + 32);
  if (v6)
  {
    (*(v4 + 16))(v4, 0);
  }

  else
  {
    (*(v4 + 16))(v4, location);
  }

  objc_storeStrong(&location, 0);
}

void sub_10009A560(uint64_t a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v10, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sign out succeeded for account %@", v10, 0xCu);
    }

    objc_storeStrong(&v4, 0);
  }

  else
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v11, *(a1 + 32), location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], type, "Sign out failed for account %@ with error: %@", v11, 0x16u);
    }

    objc_storeStrong(oslog, 0);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), location);
  }

  dispatch_group_leave(*(a1 + 40));
  objc_storeStrong(&location, 0);
}

void sub_10009B7AC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  if (*(a1 + 40))
  {
    [*(a1 + 40) ak_updateWithAuthenticationResults:location[0] authContext:*(a1 + 48) error:v6];
    v3 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v3 sendEvent:*(a1 + 40)];
    _objc_release(v3);
  }

  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_10009B8B0(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v14, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, location[0], v12, "Cleared to begin auth with context %@!", v14, 0xCu);
  }

  objc_storeStrong(location, 0);
  v2 = *(a1 + 40);
  v1 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10009BA98;
  v8 = &unk_100321910;
  v9 = _objc_retain(*(a1 + 40));
  v10 = _objc_retain(*(a1 + 32));
  v11 = _objc_retain(*(a1 + 48));
  [v2 _authenticateWithContext:v1 completion:&v4];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
}

void sub_10009BA98(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  v20[0] = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
  v19 = [location[0] objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
  v10 = *(*(a1 + 32) + 32);
  v5 = v20[0];
  v6 = v19;
  v7 = v21;
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 8);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10009BCF4;
  v14 = &unk_100321A38;
  v15 = _objc_retain(*(a1 + 40));
  v18 = _objc_retain(*(a1 + 48));
  v16 = _objc_retain(location[0]);
  v17 = _objc_retain(v21);
  [v10 endAuthenticationForAppleID:v5 password:v6 error:v7 context:v8 client:v9 clearanceHandler:?];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_10009BCF4(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v6, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Cleared to end auth with context %@.", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  return (*(*(a1 + 56) + 16))();
}

void sub_10009C4D0(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v4 = a1[4];
  v5 = [v4 authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.securityUpgrade" account:v4 error:?];
  _objc_release(v5);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10009C5E0(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  v16[0] = [location[0] url];
  v7 = a1[4];
  v8 = [NSMutableURLRequest requestWithURL:v16[0]];
  v5 = a1[5];
  v6 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10009C7DC;
  v12 = &unk_10031EF20;
  v15 = _objc_retain(a1[6]);
  v13 = _objc_retain(a1[4]);
  v14 = _objc_retain(a1[5]);
  [v7 _showServerUIWithURLRequest:v8 context:v5 urlConfiguration:v6 completion:?];
  _objc_release(v8);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_10009C7DC(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23[1] = a1;
  if (v24)
  {
    v23[0] = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v27, v24);
      _os_log_impl(&_mh_execute_header, v23[0], v22, "Security upgrade flow completed with error - %@", v27, 0xCu);
    }

    objc_storeStrong(v23, 0);
    (*(a1[6] + 2))();
    v21 = 1;
  }

  else
  {
    v7 = a1[4];
    v8 = [a1[5] username];
    v5 = location[0];
    v6 = v24;
    v4 = a1[5];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10009CAF4;
    v16 = &unk_100321B68;
    v17 = _objc_retain(a1[4]);
    v18 = _objc_retain(a1[5]);
    v19 = _objc_retain(location[0]);
    v20 = _objc_retain(a1[6]);
    [v7 _shouldContinueAuthenticatingForUsername:v8 password:0 serverResponse:v5 didShowServerUI:1 continuationData:0 error:v6 context:v4 completion:&v12];
    _objc_release(v8);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v21 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void sub_10009CAF4(uint64_t a1, char a2, id obj, void *a4)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  [*(a1 + 32) _handleSuccessfulVerificationForContext:*(a1 + 40) withResults:location serverResponse:*(a1 + 48) shouldContinue:v8 & 1 withError:v6 completion:*(a1 + 56)];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

void sub_10009CD10(id *a1, char a2, id obj)
{
  v26 = a1;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v23[1] = a1;
  if (v25)
  {
    v23[0] = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v23[0];
      type = v22;
      sub_10001CEEC(v21);
      _os_log_impl(&_mh_execute_header, log, type, "Current context requires interactive auth. Trying biometric/passcode first.", v21, 2u);
    }

    objc_storeStrong(v23, 0);
    [a1[4] _attemptBiometricOrPasscodeAuthWithContext:a1[5] completion:a1[6]];
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v20;
      v6 = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "Current context permits passwordless auth.", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v4 = a1[4];
    v3 = a1[5];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_10009CF90;
    v14 = &unk_100321BB8;
    v15 = _objc_retain(a1[5]);
    v17 = _objc_retain(a1[6]);
    v16 = _objc_retain(a1[4]);
    [v4 _attemptPasswordlessAuthOptionsWithContext:v3 completion:&v10];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10009CF90(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v31 = 0;
  objc_storeStrong(&v31, a3);
  v30 = a1;
  v16 = 1;
  if ([*(a1 + 32) _capabilityForUIDisplay] != 1)
  {
    v16 = [*(a1 + 32) _capabilityForUIDisplay] == 4;
  }

  v29 = v16;
  if (v16 && ([v31 ak_isServiceError] & 1) != 0)
  {
    v28 = _AKLogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      log = v28;
      type = v27;
      sub_10001CEEC(v26);
      _os_log_impl(&_mh_execute_header, log, type, "Passwordless authentication failed due to service error, bailing...", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    (*(*(a1 + 48) + 16))();
  }

  else if ([v31 code] == -7061)
  {
    v25 = _AKLogSystem();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v25;
      v11 = v24;
      sub_10001CEEC(v23);
      _os_log_impl(&_mh_execute_header, v10, v11, "Passwordless authentication failed due to proxy failure, bailing...", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [v31 userInfo];
    v7 = [v8 objectForKeyedSubscript:AKAuthenticationDidPerformInteractiveAuth];
    v9 = [v7 BOOLValue];
    _objc_release(v7);
    _objc_release(v8);
    if (v9 == 1)
    {
      v22 = _AKLogSystem();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v22;
        v6 = v21;
        sub_10001CEEC(v20);
        _os_log_impl(&_mh_execute_header, v5, v6, "Passwordless authentication resulted in a failed interactive flow, bailing...", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      (*(*(a1 + 48) + 16))();
    }

    else if ([v31 code] == -7034)
    {
      v19 = _AKLogSystem();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v19;
        v4 = v18;
        sub_10001CEEC(v17);
        _os_log_impl(&_mh_execute_header, v3, v4, "Passwordless authentication force failed by client, bailing...", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 40) _handlePasswordlessAuthResults:location[0] context:*(a1 + 32) error:v31 completion:*(a1 + 48)];
    }
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void sub_10009D930(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  if ([v9 ak_isUserCancelError])
  {
    v5 = v9;
    v11 = NSUnderlyingErrorKey;
    v12 = a1[4];
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v3 = [v5 ak_errorByAppendingUserInfo:?];
    v4 = v9;
    v9 = v3;
    _objc_release(v4);
    _objc_release(v6);
  }

  (*(a1[5] + 16))();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_10009E508(NSObject *a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v10)
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      v4 = type;
      sub_10001CEEC(v6);
      _os_log_impl(&_mh_execute_header, log, v4, "Context is configured for token upgrade, interactive auth is not required.", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
    if (a1[4].isa)
    {
      (*(a1[4].isa + 2))();
    }
  }

  else if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

void sub_10009F88C(uint64_t a1, char a2, id obj)
{
  v30 = a1;
  v29 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v27[1] = a1;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009FDDC;
  v24[3] = &unk_100321BE0;
  v25 = _objc_retain(location);
  v26 = _objc_retain(*(a1 + 48));
  v27[0] = objc_retainBlock(v24);
  if ((v29 & 1) == 0)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v31, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Shield is already being presented and has not completed, cancelling: %@", v31, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v27[0])
    {
      v3 = v27[0];
      v4 = [NSError ak_errorWithCode:-7003];
      v3[2](v3, 0);
      _objc_release(v4);
    }

    goto LABEL_17;
  }

  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v33, *(a1 + 32));
    _os_log_debug_impl(&_mh_execute_header, v23, v22, "Cleared to present shield by traffic controller for context: %@", v33, 0xCu);
  }

  objc_storeStrong(&v23, 0);
  v21 = [*(*(a1 + 40) + 96) protoAccount];
  if (v21)
  {
    v17 = [[AKProtoAccountShieldContext alloc] initWithContext:*(a1 + 32)];
    [v17 setProtoAccount:v21];
    v6 = *(a1 + 40);
    v5 = v17;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10009FE9C;
    v15 = &unk_100321258;
    v16 = _objc_retain(v27[0]);
    [v6 _unsafe_presentShieldViewServiceWithContext:v5 completionHandler:&v11];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v32, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, v20, v19, "Proto account is nil but asked to present shield: %@", v32, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    if (*(a1 + 48))
    {
      v7 = *(a1 + 48);
      v8 = [NSError ak_errorWithCode:-7001];
      (*(v7 + 16))(v7, 0);
      _objc_release(v8);
    }

    v18 = 1;
  }

  objc_storeStrong(&v21, 0);
  if (!v18)
  {
LABEL_17:
    v18 = 0;
  }

  objc_storeStrong(v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  if (!v18)
  {
    v18 = 0;
  }

  objc_storeStrong(&location, 0);
}

void sub_10009FDDC(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10009FE9C(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v8, v6);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Finished presenting shield with error: %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A0168(uint64_t a1, char a2, id obj)
{
  v35 = a1;
  v34 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v32[1] = a1;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000A0778;
  v29[3] = &unk_100321BE0;
  v30 = _objc_retain(location);
  v31 = _objc_retain(*(a1 + 48));
  v32[0] = objc_retainBlock(v29);
  if ((v34 & 1) == 0)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v36, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Shield is already being presented and has not completed, cancelling: %@", v36, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v32[0])
    {
      v3 = v32[0];
      v4 = [NSError ak_errorWithCode:-7003];
      v3[2](v3, 0);
      _objc_release(v4);
    }

    goto LABEL_21;
  }

  v28 = _AKLogSystem();
  v27 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v38, *(a1 + 32));
    _os_log_debug_impl(&_mh_execute_header, v28, v27, "Cleared to present shield for migration by traffic controller for context: %@", v38, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v9 = [*(a1 + 32) accountMigrationContext];
  v25 = 0;
  v23 = 0;
  v10 = 1;
  if (v9)
  {
    v26 = [*(a1 + 32) accountMigrationContext];
    v25 = 1;
    v24 = [v26 pendingDOB];
    v23 = 1;
    v10 = v24 == 0;
  }

  if (v23)
  {
    _objc_release(v24);
  }

  if (v25)
  {
    _objc_release(v26);
  }

  _objc_release(v9);
  if (!v10)
  {
    v19 = [[AKProtoAccountShieldContext alloc] initWithContext:*(a1 + 32)];
    v6 = *(a1 + 40);
    v5 = v19;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1000A0838;
    v17 = &unk_100321258;
    v18 = _objc_retain(v32[0]);
    [v6 _unsafe_presentShieldViewServiceWithContext:v5 completionHandler:&v13];
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  v22 = _AKLogSystem();
  v21 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v37, *(a1 + 32));
    _os_log_error_impl(&_mh_execute_header, v22, v21, "Migration context is invalid but asked to present shield for migration: %@", v37, 0xCu);
  }

  objc_storeStrong(&v22, 0);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 48);
    v8 = [NSError ak_errorWithCode:-7001];
    (*(v7 + 16))(v7, 0);
    _objc_release(v8);
  }

  v20 = 1;
LABEL_22:
  objc_storeStrong(v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  if (!v20)
  {
    v20 = 0;
  }

  objc_storeStrong(&location, 0);
}

void sub_1000A0778(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A0838(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v8, v6);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Finished presenting shield for migration with error: %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A0BE0(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  if (!v21 && location[0])
  {
    v4 = location[0];
    v3 = a1[4];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000A0F00;
    v12 = &unk_100321C30;
    v13 = _objc_retain(location[0]);
    v14 = _objc_retain(a1[4]);
    v15 = _objc_retain(a1[5]);
    [v4 presentShieldWithContext:v3 completionHandler:&v8];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v16 = 0;
  }

  else
  {
    v20[0] = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v23, v21);
      _os_log_error_impl(&_mh_execute_header, v20[0], v19, "Failed to launch view service with error: %@", v23, 0xCu);
    }

    objc_storeStrong(v20, 0);
    if (a1[5])
    {
      v5 = a1[5];
      v17 = 0;
      if (v21)
      {
        v5[2](v5, 0, v21);
      }

      else
      {
        v18 = [NSError ak_errorWithCode:-7001];
        v17 = 1;
        v5[2](v5, 0, v18);
      }

      if (v17)
      {
        _objc_release(v18);
      }
    }

    v16 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A0F00(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29[1] = a1;
  if (location[0])
  {
    if ([location[0] ak_isAuthenticationError])
    {
      v29[0] = _AKLogSystem();
      v28 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v29[0], OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v35, location[0]);
        _os_log_error_impl(&_mh_execute_header, v29[0], v28, "Authentication error occurred in shield UI: %@", v35, 0xCu);
      }

      objc_storeStrong(v29, 0);
    }

    else if ([location[0] ak_isAppleIDSetupCancelError] & 1) != 0 || (objc_msgSend(location[0], "ak_isXPCServiceError"))
    {
      v27 = _AKLogSystem();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v34, location[0]);
        _os_log_impl(&_mh_execute_header, v27, v26, "User cancelled shield UI: %@", v34, 0xCu);
      }

      objc_storeStrong(&v27, 0);
      v3 = [NSError ak_errorWithCode:-7003 underlyingError:location[0]];
      v4 = location[0];
      location[0] = v3;
      _objc_release(v4);
    }

    else
    {
      v25 = _AKLogSystem();
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v33, location[0]);
        _os_log_error_impl(&_mh_execute_header, v25, v24, "Failed to present shield with error: %@", v33, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      v5 = [NSError ak_errorWithCode:-7001 underlyingError:location[0]];
      v6 = location[0];
      location[0] = v5;
      _objc_release(v6);
    }
  }

  else if (!v30)
  {
    v23 = _AKLogSystem();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v13 = v23;
      v14 = v22;
      sub_10001CEEC(v21);
      _os_log_error_impl(&_mh_execute_header, v13, v14, "Missing results and no error provided by shield UI, unknown error occurred", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    v7 = [NSError ak_errorWithCode:-7001];
    v8 = location[0];
    location[0] = v7;
    _objc_release(v8);
  }

  if ([*(a1 + 40) serviceType] == 2 && !location[0])
  {
    oslog = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      v12 = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "Forcing cancel error for potential buy flow", v18, 2u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v30, 0);
    v9 = [NSError ak_errorWithCode:-7003 underlyingError:location[0]];
    v10 = location[0];
    location[0] = v9;
    _objc_release(v10);
  }

  v17 = _AKLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v32, v30, location[0]);
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finished presenting shield with results: %@; error: %@", v32, 0x16u);
  }

  objc_storeStrong(&v17, 0);
  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A1974(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  v9[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, type, "Password reset completion received in akd.", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A1E3C(id *a1, void *a2, id obj)
{
  v22 = a1;
  v21 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v19[1] = a1;
  v19[0] = 0;
  if (v21 == 1)
  {
    objc_storeStrong(v19, @"com.apple.authkit.biometricAuth");
  }

  else if (v21 == 2)
  {
    objc_storeStrong(v19, @"com.apple.authkit.passcodeAuth");
  }

  else
  {
    objc_storeStrong(v19, @"com.apple.authkit.deviceAuth");
  }

  v6 = v19[0];
  v7 = a1[4];
  v8 = [v7 authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:v6 account:v7 error:?];
  _objc_release(v8);
  if (v21 == 1 || v21 == 2)
  {
    v5 = a1[5];
    v3 = a1[4];
    v4 = v21;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000A21FC;
    v15 = &unk_100321C80;
    v18[1] = v21;
    v16 = _objc_retain(a1[5]);
    v17 = _objc_retain(a1[4]);
    v18[0] = _objc_retain(a1[6]);
    [v5 _attemptPasswordlessAuthAfterBiometricOrPasscodeValidationWithContext:v3 promptType:v4 completion:&v11];
    objc_storeStrong(v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v23, location);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Biometric/Passcode Validation failed with error %@. We need password auth flow...", v23, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if ([location code] == -7003)
    {
      (*(a1[6] + 2))();
    }

    else
    {
      if ([location code] == -7068)
      {
        [a1[4] _setPassword:0];
      }

      [a1[5] _attemptInteractiveAuthWithContext:a1[4] completion:a1[6]];
    }
  }

  objc_storeStrong(v19, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000A21FC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5[1] = a1;
  v5[0] = [location[0] mutableCopy];
  if (*(a1 + 56) == 1)
  {
    [v5[0] setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationDidPerformBiometricAuth];
  }

  else if (*(a1 + 56) == 2)
  {
    [v5[0] setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationDidPerformPasscodeAuth];
  }

  [*(a1 + 32) _handlePasswordlessAuthResults:v5[0] context:*(a1 + 40) error:v6 completion:*(a1 + 48)];
  objc_storeStrong(v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A248C(id *a1, char a2, id obj)
{
  v23 = a1;
  v22 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v20[1] = a1;
  if (v22)
  {
    v20[0] = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v20[0];
      type = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, log, type, "Context is configured for token upgrade.", v18, 2u);
    }

    objc_storeStrong(v20, 0);
    v17 = [[AKTokenUpgrader alloc] initWithClient:*(a1[4] + 1)];
    v4 = v17;
    v3 = a1[5];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000A26FC;
    v12 = &unk_100321CF8;
    v13 = _objc_retain(v17);
    v14 = _objc_retain(a1[4]);
    v15 = _objc_retain(a1[5]);
    v16 = _objc_retain(a1[6]);
    [(AKTokenUpgrader *)v4 upgradeTokenWithContext:v3 completion:&v8];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    [a1[4] _attemptPasswordlessAuthWithContext:a1[5] completion:a1[6]];
  }

  objc_storeStrong(&location, 0);
}

void sub_1000A26FC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = 0;
  objc_storeStrong(&v23, a3);
  v22[1] = a1;
  if ([location[0] isSecondaryActionRequired] == 1)
  {
    v22[0] = _AKLogSystem();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v22[0];
      type = v21;
      sub_10001CEEC(v20);
      _os_log_impl(&_mh_execute_header, log, type, "Token upgrade requires secondary action.", v20, 2u);
    }

    objc_storeStrong(v22, 0);
    v7 = a1[5];
    v5 = location[0];
    v6 = a1[6];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000A2990;
    v16 = &unk_100321CD0;
    v17 = _objc_retain(a1[5]);
    v18 = _objc_retain(a1[6]);
    v19 = _objc_retain(a1[7]);
    [v7 _performSecondaryActionWithServerResponse:v5 context:v6 completion:&v12];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v3 = a1[5];
    v4 = [a1[6] username];
    [v3 _handleVerificationCompletionForUsername:a1[6] password:a1[7] serverResponse:? didShowServerUI:? continuationData:? error:? context:? completion:?];
    _objc_release(v4);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A2990(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) username];
  v8 = location[0];
  v9 = v14;
  v7 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A2B38;
  v12[3] = &unk_100321258;
  v13[0] = _objc_retain(*(a1 + 48));
  [v10 _handleVerificationCompletionForUsername:v11 password:0 serverResponse:v8 didShowServerUI:1 continuationData:0 error:v9 context:v7 completion:v12];
  _objc_release(v11);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A2B38(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v7 = a1[4];
  v6 = location[0];
  v5 = v10;
  v12 = AKAuthenticationDidPerformInteractiveAuth;
  v13 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 ak_errorByAppendingUserInfo:?];
  (*(v7 + 16))(v7, v6);
  _objc_release(v8);
  _objc_release(v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A2E10(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v32 = 0;
  objc_storeStrong(&v32, a3);
  v31 = a1;
  if ([v32 ak_isUserCancelError])
  {
    if (a1[6])
    {
      v13 = a1[6];
      v12 = v32;
      v34 = AKAuthenticationDidPerformInteractiveAuth;
      v35 = &__kCFBooleanTrue;
      v15 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v14 = [v12 ak_errorByAppendingUserInfo:?];
      v13[2](v13, 0);
      _objc_release(v14);
      _objc_release(v15);
    }

    v30 = 1;
  }

  else
  {
    v10 = [v32 domain];
    v11 = 0;
    if ([v10 isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      v11 = [v32 code] == -7065;
    }

    _objc_release(v10);
    if (v11)
    {
      if (a1[6])
      {
        (*(a1[6] + 2))();
      }

      v30 = 1;
    }

    else
    {
      v8 = [v32 domain];
      v9 = 0;
      if ([v8 isEqualToString:AKAppleIDAuthenticationErrorDomain])
      {
        v9 = [v32 code] == -7119;
      }

      _objc_release(v8);
      if (v9)
      {
        [a1[4] setUsername:?];
        [a1[4] setReason:0];
        if (a1[6])
        {
          (*(a1[6] + 2))();
        }

        v30 = 1;
      }

      else
      {
        v6 = [a1[4] serviceIdentifiers];
        v27 = 0;
        v7 = 0;
        if (v6)
        {
          v28 = [a1[4] _password];
          v27 = 1;
          v7 = v28 == 0;
        }

        if (v27)
        {
          _objc_release(v28);
        }

        _objc_release(v6);
        v29 = v7;
        if (location[0])
        {
          v5 = a1[5];
          v3 = location[0];
          v4 = a1[4];
          v18 = _NSConcreteStackBlock;
          v19 = -1073741824;
          v20 = 0;
          v21 = sub_1000A3388;
          v22 = &unk_100321D20;
          v26 = v29;
          v23 = _objc_retain(a1[5]);
          v24 = _objc_retain(a1[4]);
          v25 = _objc_retain(a1[6]);
          [v5 _performPasswordlessSRPAuthWithAccount:v3 context:v4 completion:&v18];
          objc_storeStrong(&v25, 0);
          objc_storeStrong(&v24, 0);
          objc_storeStrong(&v23, 0);
        }

        else if (v29)
        {
          [a1[5] _performSilentServiceTokenAuthWithContext:a1[4] completion:a1[6]];
        }

        else
        {
          [a1[5] _performPasswordlessSRPAuthWithContext:a1[4] completion:a1[6]];
        }

        v30 = 0;
      }
    }
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A3388(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  if (v15 && (v6 = [v15 userInfo], v5 = objc_msgSend(v6, "objectForKeyedSubscript:", AKAuthenticationDidPerformInteractiveAuth), v7 = objc_msgSend(v5, "BOOLValue"), _objc_release(v5), _objc_release(v6), v13 = v7, (*(a1 + 56) & 1) != 0) && (v13 & 1) == 0)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_impl(&_mh_execute_header, log, type, "Will attempt silent auth since the context is asking for service tokens.", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    [*(a1 + 32) _performSilentServiceTokenAuthWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A3C64(uint64_t a1, char a2, id obj)
{
  v23 = a1;
  v22 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v20[1] = a1;
  v20[0] = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v22)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_10001B098(v24, v3, location);
    _os_log_impl(&_mh_execute_header, v20[0], v19, "Client decision to keep using: %@. Error: %@", v24, 0x16u);
  }

  objc_storeStrong(v20, 0);
  v7 = [location domain];
  v8 = 0;
  if ([v7 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v8 = [location code] == -7027;
  }

  _objc_release(v7);
  if (v8)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 40);
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1000A3F58;
    v14 = &unk_100321D70;
    v15 = _objc_retain(location);
    v17 = _objc_retain(*(a1 + 56));
    v18 = v22 & 1;
    v16 = _objc_retain(*(a1 + 48));
    [v6 dismissKeepUsingUIForContext:v4 client:v5 withCompletion:&v10];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_1000A3F58(uint64_t a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*(a1 + 56))
    {
      v4 = *(a1 + 40);
    }

    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1000A4B54(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  if (v21 && [a1[4] authenticationType] == 2)
  {
    v20[0] = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v20[0];
      type = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, log, type, "One shot at non-interactive failed, handling failure...", v18, 2u);
    }

    objc_storeStrong(v20, 0);
    v5 = a1[5];
    v3 = v21;
    v4 = a1[4];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1000A4D98;
    v14 = &unk_100321910;
    v15 = _objc_retain(a1[5]);
    v16 = _objc_retain(a1[4]);
    v17 = _objc_retain(a1[6]);
    [v5 _handleVerificationError:v3 forContext:v4 completion:&v10];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    (*(a1[6] + 2))();
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A4D98(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if ([v5 code] == -7017)
  {
    [*(a1 + 32) _recoverCredentialsAndAuthenticateWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A4FD4(uint64_t a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13[1] = a1;
  if (v15)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13[0] = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v17, location);
      _os_log_impl(&_mh_execute_header, v13[0], v12, "Failed to refresh context locally with error: %@", v17, 0xCu);
    }

    objc_storeStrong(v13, 0);
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000A51B0;
    v10 = &unk_100321230;
    v11 = _objc_retain(*(a1 + 48));
    [v4 _refreshAuthModeIfNecessaryForContext:v3 completion:&v6];
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_1000A51B0(NSObject *a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v6 & 1) == 0)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v8, location);
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Failed to refresh context remotely with error: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
}

void sub_1000A54C0(id *a1, char a2, id obj)
{
  v76 = a1;
  v75 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v73[1] = a1;
  if ([a1[4] _shouldBroadcastForProximityAuthOnly])
  {
    v73[0] = _AKLogSystem();
    v72 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v73[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v73[0];
      type = v72;
      sub_10001CEEC(v71);
      _os_log_impl(&_mh_execute_header, log, type, "Client is asking for proximity based authentication...", v71, 2u);
    }

    objc_storeStrong(v73, 0);
    v33 = *(a1[5] + 6);
    v34 = *(a1[5] + 1);
    v35 = a1[4];
    if (sub_1001773DC(0))
    {
      v3 = objc_alloc_init(sub_100177804());
    }

    else
    {
      v3 = objc_alloc_init(0);
    }

    v32 = v3;
    v4 = a1[6];
    v5 = [v33 beginAuthenticationWithClient:v34 context:v35 server:? completion:?];
    v6 = a1[5];
    v7 = v6[7];
    v6[7] = v5;
    _objc_release(v7);
    _objc_release(v32);
    v70 = _AKLogSystem();
    v69 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v79, *(a1[5] + 6), *(a1[5] + 7));
      _os_log_debug_impl(&_mh_execute_header, v70, v69, "Began proximity authentication with service provider: %@ and active prox auth token: %@", v79, 0x16u);
    }

    objc_storeStrong(&v70, 0);
  }

  else
  {
    v31 = 1;
    if ([a1[4] authenticationMode] != 2)
    {
      v31 = [a1[4] authenticationMode] == 3;
    }

    v68 = v31;
    v29 = [a1[4] username];
    v30 = 0;
    if (v29)
    {
      v28 = 1;
      if ([a1[4] authenticationType] != 3)
      {
        v28 = v68;
      }

      v30 = v28;
    }

    _objc_release(v29);
    if (v30)
    {
      if (v68)
      {
        v67 = _AKLogSystem();
        v66 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[4] authenticationMode]);
          sub_1000194D4(v78, v27);
          _os_log_impl(&_mh_execute_header, v67, v66, "Authmode %@ supports passwordless auth + server UI. Time for SRP.", v78, 0xCu);
          _objc_release(v27);
        }

        objc_storeStrong(&v67, 0);
      }

      else
      {
        v65 = _AKLogSystem();
        v64 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[4] authenticationMode]);
          sub_1000194D4(v77, v26);
          _os_log_impl(&_mh_execute_header, v65, v64, "Client is asking for passwordless auth with auth mode %@ and just a username... lets see how this goes", v77, 0xCu);
          _objc_release(v26);
        }

        objc_storeStrong(&v65, 0);
      }

      v25 = a1[5];
      v24 = a1[4];
      v56 = _NSConcreteStackBlock;
      v57 = -1073741824;
      v58 = 0;
      v59 = sub_1000A5E08;
      v60 = &unk_100321910;
      v61 = _objc_retain(a1[5]);
      v62 = _objc_retain(a1[4]);
      v63 = _objc_retain(a1[6]);
      [v25 _performPasswordlessAuth:v24 completion:&v56];
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v61, 0);
    }

    else
    {
      v55 = _AKLogSystem();
      v54 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v55;
        v23 = v54;
        sub_10001CEEC(v53);
        _os_log_impl(&_mh_execute_header, v22, v23, "Collecting user credentials...", v53, 2u);
      }

      objc_storeStrong(&v55, 0);
      if ([a1[4] disableProximityAuth])
      {
        oslog = _AKLogSystem();
        v51 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = oslog;
          v21 = v51;
          sub_10001CEEC(v50);
          _os_log_impl(&_mh_execute_header, v20, v21, "Client is asking to disable proximity based authentication...", v50, 2u);
        }

        objc_storeStrong(&oslog, 0);
      }

      if ([a1[5] _shouldBroadcastForProximity:a1[4]])
      {
        v17 = *(a1[5] + 6);
        v18 = *(a1[5] + 1);
        v19 = a1[4];
        if (sub_1001773DC(0))
        {
          v8 = objc_alloc_init(sub_100177804());
        }

        else
        {
          v8 = objc_alloc_init(0);
        }

        v16 = v8;
        v9 = a1[6];
        v10 = [v17 beginAuthenticationWithClient:v18 context:v19 server:? completion:?];
        _objc_release(v16);
      }

      else
      {
        v49 = _AKLogSystem();
        v48 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v49;
          v15 = v48;
          sub_10001CEEC(v47);
          _os_log_impl(&_mh_execute_header, v14, v15, "Skipping proximity based auth..", v47, 2u);
        }

        objc_storeStrong(&v49, 0);
      }

      v13 = *(a1[5] + 5);
      v11 = a1[4];
      v12 = *(a1[5] + 1);
      v39 = _NSConcreteStackBlock;
      v40 = -1073741824;
      v41 = 0;
      v42 = sub_1000A5F34;
      v43 = &unk_100321DC0;
      v44 = _objc_retain(a1[5]);
      v45 = _objc_retain(a1[4]);
      v46 = _objc_retain(a1[6]);
      [v13 presentBasicLoginUIForContext:v11 client:v12 completion:&v39];
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v44, 0);
    }
  }

  objc_storeStrong(&location, 0);
}

void sub_1000A5E08(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if (v10)
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v9[0];
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "One shot at passwordless auth failed, handling failure...", v7, 2u);
    }

    objc_storeStrong(v9, 0);
    [*(a1 + 32) _handleVerificationError:v10 forContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A5F34(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  [*(a1 + 32) _handleBasicLoginUICompletionWithUsername:location[0] password:v11 context:*(a1 + 40) additionalData:v10 collectionError:v9 completion:*(a1 + 48)];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A6560(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18[1] = a1;
  if (!location[0] || [location[0] code] == -7045)
  {
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10004DCC8(v20, *(a1 + 32), *(a1 + 40), *(*(a1 + 32) + 8));
      _os_log_debug_impl(&_mh_execute_header, v15, v14, "%@: Attempting to perform passwordless auth with context (%@) for client (%@)", v20, 0x20u);
    }

    objc_storeStrong(&v15, 0);
    v4 = *(a1 + 32);
    v2 = *(a1 + 40);
    v3 = v4[1];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000A687C;
    v10 = &unk_100321910;
    v11 = _objc_retain(*(a1 + 32));
    v12 = _objc_retain(*(a1 + 40));
    v13 = _objc_retain(*(a1 + 48));
    [v4 _performPasswordlessSRPAuthWithContext:v2 client:v3 completion:&v6];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v16 = 0;
  }

  else
  {
    v18[0] = _AKLogSystem();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v21, *(a1 + 32), location[0]);
      _os_log_error_impl(&_mh_execute_header, v18[0], v17, "%@: Failed to obtain full UI capability for passwordless auth with error (%@)", v21, 0x16u);
    }

    objc_storeStrong(v18, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }

    v16 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_1000A687C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  oslog[1] = a1;
  if (v8)
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_10004DCC8(v11, *(a1 + 32), *(a1 + 40), v8);
      _os_log_error_impl(&_mh_execute_header, oslog[0], type, "%@: Failed to perform passwordless auth for context (%@) with error (%@)", v11, 0x20u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v10, *(a1 + 32), *(a1 + 40));
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Successfully performed passwordless auth for context (%@)", v10, 0x16u);
    }

    objc_storeStrong(&v5, 0);
  }

  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A78FC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v33 = 0;
  objc_storeStrong(&v33, a3);
  v32[1] = a1;
  if (v33)
  {
    v32[0] = _AKLogSystem();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v32[0];
      type = v31;
      sub_10001CEEC(v30);
      _os_log_impl(&_mh_execute_header, log, type, "Account info fetch failed. Skipping validation.", v30, 2u);
    }

    objc_storeStrong(v32, 0);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v29 = [location[0] allAccountNames];
    if ([v29 count])
    {
      v15 = [*(a1 + 32) username];
      v16 = [v29 containsObject:?];
      _objc_release(v15);
      if (v16)
      {
        v26 = _AKLogSystem();
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(a1 + 32) username];
          v13 = [*(a1 + 32) altDSID];
          sub_10001B098(v36, v14, v13);
          _os_log_impl(&_mh_execute_header, v26, v25, "Username %@ is valid for altDSID: %@", v36, 0x16u);
          _objc_release(v13);
          _objc_release(v14);
        }

        objc_storeStrong(&v26, 0);
      }

      else
      {
        v24 = _AKLogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) username];
          v11 = [*(a1 + 32) altDSID];
          v10 = [location[0] userInformationRepresentation];
          v9 = [v10 accountName];
          sub_10004DCC8(v35, v12, v11, v9);
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Username %@ is not valid for altDSID: %@. Setting username to %@", v35, 0x20u);
          _objc_release(v9);
          _objc_release(v10);
          _objc_release(v11);
          _objc_release(v12);
        }

        objc_storeStrong(&v24, 0);
        v6 = *(a1 + 32);
        v8 = [location[0] userInformationRepresentation];
        v7 = [v8 accountName];
        [v6 setUsername:?];
        _objc_release(v7);
        _objc_release(v8);
      }
    }

    else
    {
      v28 = _AKLogSystem();
      v27 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 32) altDSID];
        sub_1000194D4(v37, v17);
        _os_log_error_impl(&_mh_execute_header, v28, v27, "No account names came back from IDMS for altDSID: %@", v37, 0xCu);
        _objc_release(v17);
      }

      objc_storeStrong(&v28, 0);
    }

    v3 = [location[0] userInformationRepresentation];
    v22 = [v3 authMode];
    _objc_release(v3);
    v5 = [location[0] userInformationRepresentation];
    v4 = [v5 isMdmInfoRequired];
    v23 = [v4 BOOLValue];
    _objc_release(v4);
    _objc_release(v5);
    [*(a1 + 40) _correlateContext:*(a1 + 32) withAuthModeInformation:{v22, v23}];
    (*(*(a1 + 48) + 16))();
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A8624(uint64_t a1, uint64_t a2, uint64_t a3, id obj)
{
  v6 = a2;
  v7 = a3;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (v6)
  {
    [*(a1 + 32) _correlateContext:*(a1 + 40) withAuthModeInformation:{v6, v7}];
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(location, 0);
}

void sub_1000A9704(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  v7 = *(*(a1 + 32) + 40);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 8);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000A988C;
  v11 = &unk_100321E60;
  v14[0] = _objc_retain(*(a1 + 48));
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v15);
  [v7 dismissBasicLoginUIForContext:v5 client:v6 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A988C(NSObject *a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v10, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to dismiss UI on client side! Error: %@", v10, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  isa = a1[4].isa;
  v4 = a1[5].isa;
  (*(a1[6].isa + 2))();
  objc_storeStrong(&location, 0);
}

void sub_1000A99B8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (!v5 || ([v5 ak_isUserCancelError] & 1) != 0)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _showAlertForVerificationError:v5 context:*(a1 + 40) completion:*(a1 + 48)];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A9A80(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v8 = 0;
  v7 = 0;
  if (v10)
  {
    v9 = [v10 domain];
    v8 = 1;
    v4 = 0;
    if ([v9 isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      v3 = 1;
      if ([v10 code] != -7003)
      {
        v3 = [v10 code] == -7043;
      }

      v4 = v3;
    }

    v7 = !v4;
  }

  if (v8)
  {
    _objc_release(v9);
  }

  if (v7)
  {
    [*(a1 + 32) _showAlertForVerificationError:v10 context:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A9C30(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if ([v7 ak_isUserTryAgainError])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = [v7 domain];
    v4 = 0;
    if ([v3 isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      v4 = [*(a1 + 32) _keepAlive];
    }

    _objc_release(v3);
    if (v4)
    {
      [*(a1 + 40) _keepLoginAliveWithContext:*(a1 + 32) error:v7 andCompletion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1000A9D88(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v33 = 0;
  objc_storeStrong(&v33, a3);
  v32 = a1;
  if (v33)
  {
    v11 = [v33 domain];
    v12 = 0;
    if ([v11 isEqual:AKAppleIDAuthenticationErrorDomain])
    {
      v10 = 1;
      if ([v33 code] != -7033)
      {
        v10 = 1;
        if ([v33 code] != -7003)
        {
          v10 = [v33 ak_isIncompatibleDevicesError];
        }
      }

      v12 = v10;
    }

    _objc_release(v11);
    v31 = v12 & 1;
    if (v12)
    {
      v30 = _AKLogSystem();
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        log = v30;
        type = v29;
        sub_10001CEEC(v28);
        _os_log_impl(&_mh_execute_header, log, type, "Asking client to dismiss basic login UI. SRP Passthrough.", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v27 = [location[0] mutableCopy];
      [v27 addEntriesFromDictionary:*(a1 + 32)];
      [v27 setObject:&__kCFBooleanTrue forKeyedSubscript:AKAuthenticationDidPerformInteractiveAuth];
      (*(*(a1 + 56) + 16))();
      objc_storeStrong(&v27, 0);
    }

    else
    {
      v7 = *(a1 + 40);
      v5 = v33;
      v6 = *(a1 + 48);
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_1000AA1CC;
      v23 = &unk_100321910;
      v24 = _objc_retain(*(a1 + 40));
      v25 = _objc_retain(*(a1 + 48));
      v26 = _objc_retain(*(a1 + 64));
      [v7 _handleVerificationError:v5 forContext:v6 completion:&v19];
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
    }
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v18;
      v4 = v17;
      sub_10001CEEC(v16);
      _os_log_impl(&_mh_execute_header, v3, v4, "Asking client to dismiss basic login UI. SRP Success.", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v15 = [location[0] mutableCopy];
    [v15 addEntriesFromDictionary:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AA1CC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = 0;
  objc_storeStrong(&v23, a3);
  v22 = a1;
  if ([v23 code] == -7017)
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      log = v20;
      type = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, log, type, "Initiating credential recovery", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v5 = *(a1[4] + 5);
    v3 = a1[5];
    v4 = *(a1[4] + 1);
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1000AA420;
    v14 = &unk_1003217F8;
    v15 = _objc_retain(a1[4]);
    v16 = _objc_retain(a1[5]);
    v17 = _objc_retain(a1[6]);
    [v5 dismissBasicLoginUIForContext:v3 client:v4 completion:&v10];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    (*(a1[6] + 2))();
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AA420(NSObject *a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v8, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to dismiss UI on client side even though auth is complete! Error: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  [(objc_class *)a1[4].isa _recoverCredentialsAndAuthenticateWithContext:a1[5].isa completion:a1[6].isa];
  objc_storeStrong(&location, 0);
}

void sub_1000AA9CC(id *a1, char a2, id obj)
{
  v22 = a1;
  v21 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v19[1] = a1;
  if ([a1[4] authenticationType] == 3)
  {
    v6 = a1[5];
    v5 = a1[4];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000AAC20;
    v16 = &unk_100321910;
    v17 = _objc_retain(a1[5]);
    v18 = _objc_retain(a1[4]);
    v19[0] = _objc_retain(a1[6]);
    [v6 _performPasswordlessSRPAuthWithContext:v5 completion:&v12];
    objc_storeStrong(v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_impl(&_mh_execute_header, log, type, "Username was not valid for passwordless auth, requesting more information", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v8 = [NSError ak_errorWithCode:-7012];
    [a1[5] _showAlertForVerificationError:v8 context:a1[4] completion:a1[6]];
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_1000AAC20(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if (v10)
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v9[0];
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "One shot at passwordless auth failed, handling failure...", v7, 2u);
    }

    objc_storeStrong(v9, 0);
    [*(a1 + 32) _handleVerificationError:v10 forContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AB0F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13[1] = a1;
  v13[0] = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v13[0];
    type = v12;
    sub_10001CEEC(v11);
    _os_log_impl(&_mh_execute_header, log, type, "Another attempt at getting basic login info has completed!", v11, 2u);
  }

  objc_storeStrong(v13, 0);
  [*(a1 + 32) _handleBasicLoginUICompletionWithUsername:location[0] password:v16 context:*(a1 + 40) additionalData:v15 collectionError:v14 completion:*(a1 + 48)];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_1000ABE54(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v39 = 0;
  objc_storeStrong(&v39, a3);
  v38 = a1;
  v15 = +[AKFeatureManager sharedManager];
  v16 = [v15 isAuthenticationTelemetryEnabled];
  _objc_release(v15);
  if (v16)
  {
    v11 = a1[4];
    v12 = [v11 authKitAccount:0];
    [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.srpAuthentication" account:v11 error:?];
    _objc_release(v12);
  }

  if ([location[0] allowPiggybacking])
  {
    v10 = [location[0] secondaryActionMessage];
    v36 = 0;
    v34 = 0;
    if (v10)
    {
      [a1[4] _setMessage:v10];
    }

    else
    {
      v37 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v36 = 1;
      v35 = [(NSBundle *)v37 localizedStringForKey:@"ENTER_VERIFICATION_CODE_PIG" value:&stru_100330538 table:@"Localizable"];
      v34 = 1;
      [a1[4] _setMessage:v35];
    }

    if (v34)
    {
      _objc_release(v35);
    }

    if (v36)
    {
      _objc_release(v37);
    }

    _objc_release(v10);
    v33 = _AKLogSystem();
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      log = v33;
      type = v32;
      sub_10001CEEC(v31);
      _os_log_impl(&_mh_execute_header, log, type, "Starting piggybacking session", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    [a1[5] startPiggybackingForServerResponse:location[0] context:a1[4] password:a1[6] username:a1[7] completion:a1[8]];
  }

  else if (v39 || [location[0] isSecondaryActionRequired] != 1)
  {
    [a1[5] _handleVerificationCompletionForUsername:a1[7] password:a1[6] serverResponse:location[0] didShowServerUI:0 continuationData:0 error:v39 context:a1[4] completion:a1[8]];
  }

  else
  {
    v30 = _AKLogSystem();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v30;
      v7 = v29;
      sub_10001CEEC(v28);
      _os_log_impl(&_mh_execute_header, v6, v7, "Looks like we're dealing with an HSA account.", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    v5 = a1[5];
    v3 = location[0];
    v4 = a1[4];
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_1000AC3F8;
    v21 = &unk_100321F28;
    v22 = _objc_retain(location[0]);
    v23 = _objc_retain(a1[5]);
    v24 = _objc_retain(a1[4]);
    v25 = _objc_retain(a1[7]);
    v26 = _objc_retain(a1[6]);
    v27 = _objc_retain(a1[8]);
    [v5 _performSecondaryActionWithServerResponse:v3 context:v4 completion:&v17];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AC3F8(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35[1] = a1;
  if ([a1[4] isSecondaryActionURLGSEndpoint])
  {
    v14 = a1[5];
    v12 = a1[6];
    v13 = a1[4];
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_1000AC780;
    v30 = &unk_100321F00;
    v31 = _objc_retain(a1[5]);
    v32 = _objc_retain(a1[7]);
    v33 = _objc_retain(a1[8]);
    v34 = _objc_retain(a1[6]);
    v35[0] = _objc_retain(a1[9]);
    [v14 _performGrandslamEndpointActionWithContext:v12 serverResponse:v13 completion:&v26];
    objc_storeStrong(v35, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v31, 0);
  }

  else
  {
    v11 = a1[5];
    v5 = a1[8];
    v6 = a1[4];
    v7 = v37;
    v8 = v36;
    v9 = a1[6];
    v10 = location[0];
    v4 = a1[7];
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_1000AC834;
    v22 = &unk_100321910;
    v23 = _objc_retain(a1[6]);
    v24 = _objc_retain(a1[5]);
    v25 = _objc_retain(a1[9]);
    [v11 _checkFreshnessAndVerifyWithPassword:v5 serverResponse:v6 additionalData:v7 secondaryActionError:v8 context:v9 newServerResponse:v10 username:v4 completion:&v18];
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AC780(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [*(a1 + 32) _handleVerificationCompletionForUsername:*(a1 + 40) password:*(a1 + 48) serverResponse:location[0] didShowServerUI:1 continuationData:0 error:v5 context:*(a1 + 56) completion:*(a1 + 64)];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AC834(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = [v7 domain];
  v6 = 0;
  if ([v5 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v6 = [*(a1 + 32) _keepAlive];
  }

  _objc_release(v5);
  if (v6)
  {
    [*(a1 + 40) _keepLoginAliveWithContext:*(a1 + 32) error:v7 andCompletion:*(a1 + 48)];
  }

  else if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AD200(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v56 = 0;
  objc_storeStrong(&v56, a3);
  v55[1] = a1;
  v55[0] = [*(a1 + 32) authKitAccount];
  v22 = [v55[0] username];
  v52 = 0;
  if (v22)
  {
    v53 = [v55[0] username];
    v52 = 1;
    v3 = _objc_retain(v53);
  }

  else
  {
    v3 = _objc_retain(*(a1 + 40));
  }

  v54 = v3;
  if (v52)
  {
    _objc_release(v53);
  }

  _objc_release(v22);
  v18 = +[AKFeatureManager sharedManager];
  v19 = [v18 isAuthenticationTelemetryEnabled];
  _objc_release(v18);
  if (v19)
  {
    [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.passwordlessAuth" context:*(a1 + 48) account:v55[0] error:v56];
  }

  if (v56)
  {
    v51 = _AKLogSystem();
    v50 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v59, v56);
      _os_log_error_impl(&_mh_execute_header, v51, v50, "Passwordless auth failed: %@", v59, 0xCu);
    }

    objc_storeStrong(&v51, 0);
    (*(*(a1 + 72) + 16))();
  }

  else if (([location[0] allowPiggybacking] & 1) != 0 && objc_msgSend(*(a1 + 48), "piggybackingForTrustedDevice") == 1)
  {
    v17 = [location[0] secondaryActionMessage];
    v48 = 0;
    v46 = 0;
    if (v17)
    {
      [*(a1 + 48) _setMessage:v17];
    }

    else
    {
      v49 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v48 = 1;
      v47 = [(NSBundle *)v49 localizedStringForKey:@"ENTER_VERIFICATION_CODE_PIG" value:&stru_100330538 table:@"Localizable"];
      v46 = 1;
      [*(a1 + 48) _setMessage:v47];
    }

    if (v46)
    {
      _objc_release(v47);
    }

    if (v48)
    {
      _objc_release(v49);
    }

    _objc_release(v17);
    v45 = _AKLogSystem();
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v45;
      v16 = v44;
      sub_10001CEEC(v43);
      _os_log_impl(&_mh_execute_header, v15, v16, "Starting piggybacking approval session for repair flow", v43, 2u);
    }

    objc_storeStrong(&v45, 0);
    [*(a1 + 56) startPiggybackingForServerResponse:location[0] context:*(a1 + 48) password:0 username:*(a1 + 40) completion:*(a1 + 72)];
  }

  else
  {
    v14 = [location[0] federatedAuthURL];
    _objc_release(v14);
    if (v14)
    {
      v13 = *(a1 + 56);
      v10 = location[0];
      v11 = *(a1 + 48);
      v12 = *(a1 + 64);
      v34 = _NSConcreteStackBlock;
      v35 = -1073741824;
      v36 = 0;
      v37 = sub_1000ADBD8;
      v38 = &unk_100321F50;
      v42 = _objc_retain(*(a1 + 72));
      v39 = _objc_retain(*(a1 + 56));
      v40 = _objc_retain(v54);
      v41 = _objc_retain(*(a1 + 48));
      [v13 _performSecondaryActionWithServerResponse:v10 context:v11 client:v12 completion:&v34];
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v42, 0);
    }

    else if ([location[0] isSecondaryActionURLGSEndpoint])
    {
      v9 = *(a1 + 56);
      v7 = *(a1 + 48);
      v8 = location[0];
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_1000ADEE4;
      v28 = &unk_100321F00;
      v29 = _objc_retain(*(a1 + 56));
      v30 = _objc_retain(v54);
      v31 = _objc_retain(v56);
      v32 = _objc_retain(*(a1 + 48));
      v33 = _objc_retain(*(a1 + 72));
      [v9 _performGrandslamEndpointActionWithContext:v7 serverResponse:v8 completion:&v24];
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
    }

    else if ([*(a1 + 48) authenticationMode] != 2 || v55[0])
    {
      [*(a1 + 56) _handleVerificationCompletionForUsername:v54 password:0 serverResponse:location[0] didShowServerUI:0 continuationData:0 error:v56 context:*(a1 + 48) completion:*(a1 + 72)];
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 48) username];
        sub_1000194D4(v58, v6);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "No continuation capable IDMS account found for Apple ID: %@", v58, 0xCu);
        _objc_release(v6);
      }

      objc_storeStrong(&oslog, 0);
      v4 = *(a1 + 72);
      v5 = [NSError ak_errorWithCode:-7023];
      (*(v4 + 16))(v4, 0);
      _objc_release(v5);
    }
  }

  objc_storeStrong(&v54, 0);
  objc_storeStrong(v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
}

void sub_1000ADBD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17[1] = a1;
  if ([v18 code] == -7013)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = location[0];
    v7 = v18;
    v4 = *(a1 + 48);
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000ADD8C;
    v16 = &unk_100321258;
    v17[0] = _objc_retain(*(a1 + 56));
    [v8 _handleVerificationCompletionForUsername:v5 password:0 serverResponse:v6 didShowServerUI:1 continuationData:0 error:v7 context:v4 completion:&v12];
    objc_storeStrong(v17, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void sub_1000ADD8C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v7 = a1[4];
  v6 = location[0];
  v5 = v10;
  v12 = AKAuthenticationDidPerformInteractiveAuth;
  v13 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 ak_errorByAppendingUserInfo:?];
  (*(v7 + 16))(v7, v6);
  _objc_release(v8);
  _objc_release(v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000ADEE4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  v9 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = location[0];
  v8 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AE040;
  v10[3] = &unk_100321258;
  v11[0] = _objc_retain(*(a1 + 64));
  [v9 _handleVerificationCompletionForUsername:v6 password:0 serverResponse:v7 didShowServerUI:1 continuationData:0 error:v8 context:v5 completion:v10];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AE040(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v7 = a1[4];
  v6 = location[0];
  v5 = v10;
  v12 = AKAuthenticationDidPerformInteractiveAuth;
  v13 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 ak_errorByAppendingUserInfo:?];
  (*(v7 + 16))(v7, v6);
  _objc_release(v8);
  _objc_release(v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000AE574(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) _performSafeSRPAuthenticationWithContext:*(a1 + 40) completion:*(a1 + 48)];
  objc_storeStrong(&location, 0);
}

void sub_1000AEEAC(uint64_t a1, char a2, id obj, void *a4)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  if (*(a1 + 32))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 40) _handleSuccessfulVerificationForContext:*(a1 + 48) withResults:location serverResponse:*(a1 + 56) shouldContinue:v8 & 1 withError:v6 completion:*(a1 + 64)];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000B168C(uint64_t a1, char a2, id obj, void *a4)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = +[AKFeatureManager sharedManager];
  v9 = [v8 isAuthenticationTelemetryEnabled];
  _objc_release(v8);
  if (v9)
  {
    v4 = *(a1 + 32);
    v5 = [v4 authKitAccount:0];
    [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.shouldContinueAuth" account:v4 error:?];
    _objc_release(v5);
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000B17F0(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v8[0] = _AKLogSystem();
  v7 = 16;
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_ERROR))
  {
    log = v8[0];
    type = v7;
    sub_10001CEEC(v6);
    _os_log_error_impl(&_mh_execute_header, log, type, "Unable to reach client to call shouldContinueWithAuthenticationResults", v6, 2u);
  }

  objc_storeStrong(v8, 0);
  v5 = [NSError ak_errorWithCode:-7061 underlyingError:location[0]];
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B1918(uint64_t a1, char a2, id obj)
{
  v27 = a1;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v24[1] = a1;
  if (v26)
  {
    if (*(a1 + 32))
    {
      v17 = _AKLogSystem();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v17;
        v8 = v16;
        sub_10001CEEC(v15);
        _os_log_impl(&_mh_execute_header, v7, v8, "Unable to auth with IDMS but client says to suppress error and continue.", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      v5 = AKAppleIDAuthenticationErrorDomain;
      v28 = NSUnderlyingErrorKey;
      v29 = *(a1 + 32);
      v6 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v14 = [NSError errorWithDomain:v5 code:-7033 userInfo:?];
      _objc_release(v6);
      (*(*(a1 + 40) + 16))();
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v20;
        v10 = v19;
        sub_10001CEEC(v18);
        _os_log_impl(&_mh_execute_header, v9, v10, "Will continue handling successful auth...", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v24[0] = _objc_retain(*(a1 + 32));
    if (!v24[0])
    {
      v23 = _AKLogSystem();
      v22 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        log = v23;
        type = v22;
        sub_10001CEEC(v21);
        _os_log_error_impl(&_mh_execute_header, log, type, "Force-failing auth, because client says to.", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      v3 = [NSError ak_errorWithCode:-7034];
      v4 = v24[0];
      v24[0] = v3;
      _objc_release(v4);
    }

    (*(*(a1 + 40) + 16))();
    objc_storeStrong(v24, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_1000B1F60(uint64_t a1)
{
  v36[2] = a1;
  v36[1] = a1;
  v36[0] = [*(a1 + 32) _authKitAccountFromContext:*(a1 + 40)];
  v20 = 1;
  if (v36[0])
  {
    v20 = [*(a1 + 32) _shouldSkipAccountUpdatesForAuthWithContext:*(a1 + 40)];
  }

  v35 = v20 & 1;
  if (*(a1 + 80) & 1) != 0 || (v35)
  {
    if (v35)
    {
      [*(a1 + 32) _provideServiceTokensIfRequiredForContext:*(a1 + 40) authenticationResults:*(a1 + 56) serverResponse:*(a1 + 48) completion:*(a1 + 72)];
    }

    else
    {
      v29 = _AKLogSystem();
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v29;
        v16 = v28;
        sub_10001CEEC(v27);
        _os_log_impl(&_mh_execute_header, v15, v16, "Updating AK account...", v27, 2u);
      }

      objc_storeStrong(&v29, 0);
      v26 = 0;
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v24 = 0;
      v14 = [v6 _updateAuthKitAccount:v36[0] withServerResponse:v7 context:v8 error:&v24];
      objc_storeStrong(&v26, v24);
      v25 = v14;
      if (v14)
      {
        v23 = _AKLogSystem();
        v22 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v23;
          v13 = v22;
          sub_10001CEEC(v21);
          _os_log_impl(&_mh_execute_header, v12, v13, "Will check in with IDMS about push registration...", v21, 2u);
        }

        objc_storeStrong(&v23, 0);
        v11 = +[AKAppleIDCheckInHelperService sharedService];
        [v11 performCheckInForAccount:v36[0] event:AKPostDataEventLiveness reason:5 completion:&stru_100322038];
        _objc_release(v11);
        [*(a1 + 32) _provideServiceTokensIfRequiredForContext:*(a1 + 40) authenticationResults:*(a1 + 56) serverResponse:*(a1 + 48) completion:*(a1 + 72)];
      }

      else
      {
        v9 = *(a1 + 72);
        v10 = [NSError ak_errorWithCode:-7001 underlyingError:v26];
        (*(v9 + 16))(v9, 0);
        _objc_release(v10);
      }

      objc_storeStrong(&v26, 0);
    }
  }

  else
  {
    location = _AKLogSystem();
    v33 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v33;
      sub_10001CEEC(v32);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Should conitnue returned NO, authkit account exists, will continue updating account.", v32, 2u);
    }

    objc_storeStrong(&location, 0);
    v31 = 0;
    v1 = *(a1 + 32);
    v2 = *(a1 + 48);
    v3 = *(a1 + 40);
    v30 = 0;
    [v1 _updateAuthKitAccount:v36[0] withServerResponse:v2 context:v3 error:&v30];
    objc_storeStrong(&v31, v30);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    (*(*(a1 + 72) + 16))();
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(v36, 0);
}

void sub_1000B2370(id a1, BOOL a2, NSError *a3)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v10[1] = a1;
  if (v12)
  {
    oslog = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v7;
      sub_10001CEEC(v6);
      _os_log_impl(&_mh_execute_header, v3, v4, "Successfully checked in with IDMS.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v14, location);
      _os_log_error_impl(&_mh_execute_header, v10[0], v9, "Failed to check in with IDMS! Error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  objc_storeStrong(&location, 0);
}

uint64_t sub_1000B2850(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 65;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 65;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_1000B31B8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  if (v17)
  {
    v16[0] = _AKLogSystem();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v20, *(a1 + 32), v17);
      _os_log_error_impl(&_mh_execute_header, v16[0], v15, "Fetching tokens for service IDs %@ failed. Error: %@", v20, 0x16u);
    }

    objc_storeStrong(v16, 0);
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) serviceTokens];
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    [v8 _completeAuthenticationWithServiceTokens:? tokenFetchError:? altDSID:? authenticationResults:? context:? completion:?];
    _objc_release(v9);
  }

  else
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v19, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v14, v13, "Fetching tokens for service IDs %@ succeeded!", v19, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v7 = [*(a1 + 48) serviceTokens];
    v12 = [v7 mutableCopy];
    _objc_release(v7);
    [v12 setValuesForKeysWithDictionary:location[0]];
    [*(a1 + 40) _completeAuthenticationWithServiceTokens:v12 tokenFetchError:0 altDSID:*(a1 + 56) authenticationResults:*(a1 + 64) context:*(a1 + 72) completion:*(a1 + 80)];
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

NSString *__cdecl sub_1000B3884(id a1, NSString *a2, AKToken *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = [v6 stringValue];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

void sub_1000B46C0(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [v8 domain];
  if ([v7 isEqual:AKAppleIDAuthenticationErrorDomain])
  {
    [v8 code];
  }

  _objc_release(v7);
  (*(a1[4] + 16))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B4810(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v4 = a1[4];
  v5 = [v4 authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.authMasterKey" account:v4 error:?];
  _objc_release(v5);
  (*(a1[5] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B4E88(uint64_t a1, char a2, id obj, void *a4, void *a5)
{
  v30 = a1;
  v29 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25[1] = a1;
  if (!v26 && (v29 & 1) != 0)
  {
    [*(a1 + 32) _processValidationCodeSuccessResponse:v27 authResponse:*(a1 + 56) results:location completion:*(a1 + 64)];
  }

  else
  {
    if (!v26)
    {
      v5 = [NSError ak_errorWithCode:-7036];
      v6 = v26;
      v26 = v5;
      _objc_release(v6);
    }

    if (*(a1 + 72))
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v25[0] = _AKLogSystem();
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v25[0], OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v31, v26);
        _os_log_debug_impl(&_mh_execute_header, v25[0], v24, "Asking client to show alert for error: %@", v31, 0xCu);
      }

      objc_storeStrong(v25, 0);
      v9 = *(a1 + 32);
      v7 = v26;
      v8 = *(a1 + 40);
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_1000B5210;
      v17 = &unk_100322140;
      v18 = _objc_retain(*(a1 + 32));
      v19 = _objc_retain(*(a1 + 48));
      v23 = *(a1 + 72) & 1;
      v20 = _objc_retain(*(a1 + 56));
      v21 = _objc_retain(*(a1 + 40));
      v22 = _objc_retain(*(a1 + 64));
      [v9 _showAlertForLoginCodeValidationError:v7 context:v8 completion:&v13];
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
    }
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&location, 0);
}