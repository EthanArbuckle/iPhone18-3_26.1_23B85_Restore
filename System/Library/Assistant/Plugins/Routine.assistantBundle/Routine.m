void sub_233542114(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 code];
    v6 = objc_alloc(MEMORY[0x277D47208]);
    if (v5 == 2)
    {
      v7 = [v6 initWithErrorCode:*MEMORY[0x277D48560]];
    }

    else
    {
      v7 = [v6 initWithReason:@"Failed creating vehicle events from CoreRoutine"];
    }

    v8 = v7;
    v11 = *(a1 + 32);
    v12 = [v7 dictionary];
    (*(v11 + 16))(v11, v12);

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = sub_23354337C(qword_27DE0EC30);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_233541000, v13, OS_LOG_TYPE_INFO, "Failed creating vehicle event, error, %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D47218]);
    v9 = *(a1 + 32);
    v10 = [v8 dictionary];
    (*(v9 + 16))(v9, v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

id sub_2335422C0(double a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9)
{
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = objc_opt_new();
  [v18 setDate:v17];

  v19 = objc_alloc_init(MEMORY[0x277D47508]);
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  [v19 setLatitude:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [v19 setLongitude:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v19 setAccuracy:v22];

  [v18 setLocation:v19];
  [v18 setNotes:v16];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:a8];
  [v18 setUserSetLocation:v23];

  [v18 setVehicleIdentifier:v15];

  return v18;
}

void sub_233542668(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_233542754;
  v11[3] = &unk_2789DF3B0;
  v12 = v5;
  v13 = v6;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void sub_233542754(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = sub_23354337C(qword_27DE0EC30);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = *(a1 + 40);
      *buf = 134218242;
      v27 = v3;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_233541000, v2, OS_LOG_TYPE_INFO, "Received %lu vehicle events from CoreRoutine, error, %@", buf, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [v5 code];
    v7 = objc_alloc(MEMORY[0x277D47208]);
    if (v6 == 2)
    {
      v8 = [v7 initWithErrorCode:*MEMORY[0x277D48560]];
    }

    else
    {
      v8 = [v7 initWithReason:@"Failed fetching vehicle events from CoreRoutine"];
    }

    v14 = v8;
    v17 = *(a1 + 56);
    v16 = [v8 dictionary];
    (*(v17 + 16))(v17, v16);
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v10 = dispatch_group_create();
    v11 = *(a1 + 32);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2335429F4;
    v22[3] = &unk_2789DF360;
    v23 = v10;
    v12 = v9;
    v13 = *(a1 + 48);
    v24 = v12;
    v25 = v13;
    v14 = v10;
    [v11 enumerateObjectsUsingBlock:v22];
    v15 = [*(a1 + 48) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233543020;
    block[3] = &unk_2789DF388;
    v20 = v12;
    v21 = *(a1 + 56);
    v16 = v12;
    dispatch_group_notify(v14, v15, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2335429F4(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 location];
  [v4 latitude];
  v6 = v5;
  v7 = [v3 location];
  [v7 longitude];
  v9 = v8;

  v10 = [v3 location];
  if ([v10 referenceFrame])
  {
    v11 = [v3 location];
    v12 = [v11 referenceFrame];

    if (v12 != 1)
    {
      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = [MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{v6, v9}];
LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = sub_23354337C(qword_27DE0EC30);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      if (v13)
      {
        v15 = &unk_233544572;
      }

      else
      {
        v15 = "not ";
      }

      v16 = [v3 location];
      *buf = 136315394;
      v51 = v15;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&dword_233541000, v14, OS_LOG_TYPE_INFO, "Shift %sneeded for locations, %@", buf, 0x16u);
    }
  }

  if (v13)
  {
    dispatch_group_enter(*(a1 + 32));
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_233542E04;
    v46[3] = &unk_2789DF310;
    v17 = v3;
    v47 = v17;
    v48 = *(a1 + 40);
    v49 = *(a1 + 32);
    v18 = MEMORY[0x2383A2300](v46);
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = sub_233542F90;
    v44 = &unk_2789DF338;
    v45 = *(a1 + 32);
    v19 = MEMORY[0x2383A2300](&v41);
    v20 = [*(a1 + 48) locationShifter];
    v21 = [v17 location];
    [v21 horizontalUncertainty];
    v23 = v22;
    v24 = [*(a1 + 48) queue];
    [v20 shiftCoordinate:v18 accuracy:0 withCompletionHandler:v19 mustGoToNetworkCallback:v24 errorHandler:v6 callbackQueue:{v9, v23}];

    v25 = v47;
  }

  else
  {
    v26 = MEMORY[0x277D474F0];
    v27 = [v3 date];
    v28 = [v3 location];
    [v28 latitude];
    v30 = v29;
    v31 = [v3 location];
    [v31 longitude];
    v33 = v32;
    v34 = [v3 location];
    [v34 horizontalUncertainty];
    v36 = v35;
    v37 = [v3 notes];
    v38 = [v3 userSetLocation];
    v39 = [v3 vehicleIdentifier];
    v25 = [v26 vehicleEventWithDate:v27 latitude:v37 longitude:v38 accuracy:v39 notes:v30 userSetLocation:v33 vehicleIdentifier:v36];

    [*(a1 + 40) addObject:v25];
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_233542E04(uint64_t a1, double a2, double a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = sub_23354337C(qword_27DE0EC30);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = 134545921;
      v17 = a2;
      v18 = 2053;
      v19 = a3;
      _os_log_impl(&dword_233541000, v8, OS_LOG_TYPE_INFO, "Shifted coordinate: %{sensitive}f, %{sensitive}f", &v16, 0x16u);
    }
  }

  v9 = MEMORY[0x277D474F0];
  v10 = [*(a1 + 32) date];
  v11 = [*(a1 + 32) notes];
  v12 = [*(a1 + 32) userSetLocation];
  v13 = [*(a1 + 32) vehicleIdentifier];
  v14 = [v9 vehicleEventWithDate:v10 latitude:v11 longitude:v12 accuracy:v13 notes:a2 userSetLocation:a3 vehicleIdentifier:a4];

  [*(a1 + 40) addObject:v14];
  dispatch_group_leave(*(a1 + 48));

  v15 = *MEMORY[0x277D85DE8];
}

void sub_233542F90(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = sub_23354337C(qword_27DE0EC30);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_233541000, v2, OS_LOG_TYPE_INFO, "Shift error.", v3, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_233543020(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = sub_23354337C(qword_27DE0EC30);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v8 = 134217984;
      v9 = v3;
      _os_log_impl(&dword_233541000, v2, OS_LOG_TYPE_INFO, "Reply to search with %lu vehicle events.", &v8, 0xCu);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277D47500]);
  [v4 setEvents:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [v4 dictionary];
  (*(v5 + 16))(v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2335432E0(uint64_t a1)
{
  v4 = objc_alloc_init(MEMORY[0x277D47218]);
  v2 = *(a1 + 32);
  v3 = [v4 dictionary];
  (*(v2 + 16))(v2, v3);
}

id sub_23354337C(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, sub_2335433DC);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t sub_2335433DC(uint64_t a1)
{
  result = os_log_create("com.apple.CoreRoutine", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

void sub_233543654(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v12 = a2;
  if (v12)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277D01160]);
    v11 = [*(a1 + 32) date];
    v9 = [v10 initWithLatitude:v11 longitude:2 horizontalUncertainty:a3 date:a4 referenceFrame:a5];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_233543C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_233543CB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233543CC8(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v7 = *(*(a1 + 40) + 8);
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(*(*(a1 + 48) + 8) + 24) = a5;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v8 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_233543F90(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4)
{
  v5 = *(a1 + 32);
  v8 = CLLocationCoordinate2DMake(a2, a3);
  v7.n128_f64[0] = v8.longitude;
  v6.n128_f64[0] = v8.latitude;
  v9 = *(v5 + 16);
  v10.n128_f64[0] = a4;

  return v9(v5, 0, v6, v7, v10);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}