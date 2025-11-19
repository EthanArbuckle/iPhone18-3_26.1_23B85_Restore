uint64_t sub_19B9C031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetLocationButtonUseMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetLocationButtonUseMode, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CLInternalSetPinnedLocationAuthorization(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetPinnedLocationAuthorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetPinnedLocationAuthorization, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CLInternalGetPinnedLocationAuthorizationState(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetPinnedLocationAuthorizationState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetPinnedLocationAuthorizationState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v4 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19B9C073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetAuthorizationStatusByType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v12, &v17);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290818;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "activity";
    v24 = 2114;
    v25 = a1;
    v26 = 2114;
    v27 = a2;
    v28 = 2114;
    v29 = a3;
    v30 = 2114;
    v31 = a4;
    v32 = 2050;
    v33 = a5;
    v34 = 2050;
    v35 = a6;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetAuthorizationStatusByType, event:%{public, location:escape_only}s, bundleId:%{public, location:escape_only}@, bundlePath:%{public, location:escape_only}@, zoneId:%{public, location:escape_only}@, subIdentityId:%{public, location:escape_only}@, auth:%{public, location:CLClientAuthorizationStatus}lld, compensation:%{public, location:CLClientCorrectiveCompensation}lld}", buf, 0x58u);
  }

  v14 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v17);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_19B9C0914()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_updatePillButtonChoiceForOutstandingPrompt_);
}

uint64_t sub_19B9C0954()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_checkAndExerciseLearnedRoutesAuthorizationForBundleID_orBundlePath_replyBlock_);
}

uint64_t sub_19B9C09AC()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_checkAndExercisePushClientAuthorizationForBundleID_replyBlock_);
}

uint64_t sub_19B9C09F4()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_isEligibleForAlwaysAuthorizationRequestForBundleID_orBundlePath_replyBlock_);
}

uint64_t sub_19B9C0A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetIncidentalUseMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetIncidentalUseMode, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9C0C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetVisitHistoryAccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetVisitHistoryAccess, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9C0D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetLearnedRoutesAccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetLearnedRoutesAccess, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9C0EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetVisitHistoryAccessAllowedTime", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetVisitHistoryAccessAllowedTime, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9C1054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetVisitHistoryAccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetVisitHistoryAccess, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9C11C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetLearnedRoutesAccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetLearnedRoutesAccess, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v8 = [+[CLLocationInternalClient sharedServiceClient](CLLocationInternalClient "sharedServiceClient")];
  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B9C1334()
{
  v0 = +[CLLocationInternalClient sharedServiceClient];

  return MEMORY[0x1EEE66B58](v0, sel_setBackgroundIndicatorForBundleID_orBundlePath_enabled_);
}

void sub_19B9C138C(uint64_t a1, uint64_t a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 192);
  v6 = *(a2 + 200);
  v8 = v7 + 1.414;
  if (v7 >= 180.0)
  {
    v8 = -1.0;
  }

  if (*(a2 + 104) < 0.0 || v7 <= 0.0)
  {
    v10 = -1.0;
  }

  else
  {
    v10 = v8;
  }

  if (v6 > 0.0 && (v11 = *(a2 + 208), v11 > 0.0) && (v12 = *(a2 + 216), v12 >= 0.0))
  {
    memset(&v31[7], 0, 32);
    *(a1 + 41) = *v31;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 57) = *&v31[16];
    *(a1 + 72) = 0;
    v15 = v6 / 2.45;
    v14 = v11 / 2.45;
    if (v12 > 0.0)
    {
      v27 = tan(v12 * -2.0 * 0.0174532925);
      v28 = sqrt((v15 * v15 - v14 * v14) * (v15 * v15 - v14 * v14) * 0.25 * (v27 * v27) / (v27 * v27 + 1.0));
      *(a1 + 16) = v28;
      v29 = v15 * v15 + v14 * v14;
      v30 = (v28 + v28) / v27;
      v14 = (v29 + v30) * 0.5;
      v15 = (v29 - v30) * 0.5;
    }
  }

  else
  {
    v13 = *(a2 + 80);
    memset(&v31[7], 0, 32);
    *(a1 + 41) = *v31;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 57) = *&v31[16];
    *(a1 + 72) = 0;
    v14 = v13 * v13 * 0.5;
    v15 = v14;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  v16 = v10 * v10;
  if (v10 <= 0.0)
  {
    v16 = -1.0;
  }

  *(a1 + 24) = v16;
  v17 = *(a2 + 96);
  if (v17 > 19.4444444 && v15 + v14 < 25.0)
  {
    __asm { FMOV            V2.2D, #25.0 }

    *a1 = _Q2;
    *(a1 + 16) = 0;
    v15 = 25.0;
    v14 = 25.0;
  }

  if (v15 + v14 < 156.25)
  {
    *a1 = vdupq_n_s64(0x4063880000000000uLL);
    *(a1 + 16) = 0;
  }

  if (a3 && v16 > 0.0)
  {
    v23 = v17 == 0.0;
    v24 = 3.0;
    if ((v23 | *(a2 + 228)))
    {
      v24 = 15.0;
    }

    v25 = sqrt(v16);
    v16 = (v25 + v24) * (v25 + v24);
    *(a1 + 24) = v16;
  }

  if (v16 > 0.0 && v16 < 42.25)
  {
    *(a1 + 24) = 0x4045200000000000;
  }

  v26 = *MEMORY[0x1E69E9840];

  sub_19B9C1640(a1);
}

void sub_19B9C1640(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "fVarEast <= 0.0", buf, 2u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      goto LABEL_32;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      goto LABEL_67;
    }

    goto LABEL_30;
  }

  v2 = *(a1 + 8);
  if (v2 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "fVarNorth <= 0.0", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_67;
    }

    goto LABEL_32;
  }

  v3 = *(a1 + 16);
  if (v3 >= 0.0)
  {
    v12 = *(a1 + 24);
    if (v12 <= 0.0 || v12 >= 32400.0)
    {
      *(a1 + 24) = 0xBFF0000000000000;
      *(a1 + 40) = 0;
      v20 = -v3;
      v21 = v1 * v2 - v3 * v3;
      *(a1 + 32) = v21;
      *(a1 + 48) = v2;
      *(a1 + 56) = v20;
      *(a1 + 64) = v1;
      if (v21 != 0.0)
      {
        *(a1 + 48) = v2 / v21;
        *(a1 + 56) = v20 / v21;
        *(a1 + 64) = v1 / v21;
        goto LABEL_32;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
      }

      v22 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_FAULT, "CLMM, Unexpected determinant of 0", buf, 2u);
      }

      v23 = sub_19B87DD40();
      if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
      {
        goto LABEL_32;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *(a1 + 40) = 1;
      v13 = v2 * v12;
      v14 = -(v12 * v3);
      *(a1 + 48) = v2 * v12;
      *(a1 + 56) = v14;
      v15 = v1 * v12;
      v16 = v1 * v2 - v3 * v3;
      *(a1 + 64) = v15;
      *(a1 + 72) = v16;
      v17 = v16 * v12;
      *(a1 + 32) = v16 * v12;
      if (v16 * v12 != 0.0)
      {
        *(a1 + 48) = v13 / v17;
        *(a1 + 56) = v14 / v17;
        *(a1 + 64) = v15 / v17;
        *(a1 + 72) = v16 / v17;
        goto LABEL_32;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
      }

      v18 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "CLMM, Unexpected determinant of 0", buf, 2u);
      }

      v19 = sub_19B87DD40();
      if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
      {
        goto LABEL_32;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        goto LABEL_67;
      }
    }

LABEL_30:
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLMapDataUtil::CovarInvDet::calcInvAndDet()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }

    goto LABEL_32;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
  }

  v4 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "fVarEastNorth < 0.0", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_30;
    }

LABEL_67:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    goto LABEL_30;
  }

LABEL_32:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B9C1C60(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 16) = 0;
  v2 = *(a1 + 32);
  if (v2 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "determinant <= 0.0", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLMapDataUtil::CovarInvDet::calculateScoreAndVarFactor(MapMatcherScore &) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    if (*(a1 + 40))
    {
      v7 = v5 * ((*(a2 + 32) + *(a2 + 32)) * *(a2 + 40)) + *(a2 + 32) * *(a2 + 32) * v4 + *(a2 + 40) * *(a2 + 40) * v6 + *(a2 + 56) * *(a2 + 56) * *(a1 + 72);
      v8 = v7 / 3.0;
      v9 = 248.050213;
    }

    else
    {
      v7 = v5 * ((*(a2 + 32) + *(a2 + 32)) * *(a2 + 40)) + *(a2 + 32) * *(a2 + 32) * v4 + *(a2 + 40) * *(a2 + 40) * v6;
      v8 = v7 * 0.5;
      v9 = 39.4784176;
    }

    v13 = exp(v7 * -0.5);
    *(a2 + 16) = v8;
    *a2 = v13 / sqrt(v2 * v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B9C1ECC()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B9C22A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9C22E0(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", objc_msgSend(a2, "roadID")), @"roadID"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "roadClass")), @"roadClass"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "formOfWay")), @"formOfWay"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "travelDirection")), @"travelDirection"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "rampType")), @"rampType"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "speedLimit")), @"speedLimit"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a2, "isDrivable")), @"isDrivable"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a2, "isRoadPedestrianNavigable")), @"isRoadPedestrianNavigable"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a2, "isTunnel")), @"isTunnel"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a2, "isBridge")), @"isBridge"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a2, "isRail")), @"isRail"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(a2, "startJunction"), "junctionIndex")), @"startJunction"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(a2, "endJunction"), "junctionIndex")), @"stopJunction"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(objc_msgSend(a2, "startJunction"), "isOnTileBorder")), @"startTileBorder"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(objc_msgSend(a2, "endJunction"), "isOnTileBorder")), @"endTileBorder"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "bikeableSide")), @"bikeableSide"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "walkableSide")), @"walkableSide"}];
    [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "coordinateCount")), @"coordinateCount"}];
    if ([a2 coordinateCount])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.7lf, %.7lf, %.2lf", *(objc_msgSend(a2, "coordinates3d") + v5), *(objc_msgSend(a2, "coordinates3d") + v5 + 8), *(objc_msgSend(a2, "coordinates3d") + v5 + 16)];
        [v4 setValue:v7 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"coord%d", v6++)}];
        v5 += 24;
      }

      while ([a2 coordinateCount] > v6);
    }

    v8 = *(*(*(v3 + 32) + 8) + 40);

    return [v8 addObject:v4];
  }

  return result;
}

uint64_t sub_19B9C2740(uint64_t a1, void *a2)
{
  if (a2)
  {
    NSLog(&cfstr_CltspClmmMaphe_3.isa, [a2 code], objc_msgSend(a2, "domain"), objc_msgSend(a2, "localizedDescription"));
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(*(a1 + 48) + 8) + 40);
  }

  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 56) == 1)
  {
    result = [*(*(a1 + 32) + 16) clearRoadTiles];
  }

  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 24) = 0;
  return result;
}

void sub_19B9C2A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9C2AB0(uint64_t result, void *a2)
{
  if (a2)
  {
    v19 = result;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", objc_msgSend(a2, "buildingID")), @"buildingID"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "tileSetStyle")), @"tileSetStyle"}];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a2, "hasTerrainElevation")), @"hasTerrainElevation"}];
    v18 = v3;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v3 setValue:? forKey:?];
    if ([objc_msgSend(a2 "sections")])
    {
      v4 = 0;
      do
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v6 = [objc_msgSend(a2 "sections")];
        if (v6)
        {
          v7 = v6;
          v8 = MEMORY[0x1E696AD98];
          [v6 maxBaseHeight];
          [v5 setValue:objc_msgSend(v8 forKey:{"numberWithDouble:"), @"maxBaseHeight"}];
          v9 = MEMORY[0x1E696AD98];
          [v7 minBaseHeight];
          [v5 setValue:objc_msgSend(v9 forKey:{"numberWithDouble:"), @"minBaseHeight"}];
          v10 = MEMORY[0x1E696AD98];
          [v7 topHeight];
          [v5 setValue:objc_msgSend(v10 forKey:{"numberWithDouble:"), @"topHeight"}];
          v11 = MEMORY[0x1E696AD98];
          [v7 terrainElevation];
          [v5 setValue:objc_msgSend(v11 forKey:{"numberWithDouble:"), @"terrainElevation"}];
          v12 = MEMORY[0x1E696AD98];
          [v7 height];
          [v5 setValue:objc_msgSend(v12 forKey:{"numberWithDouble:"), @"height"}];
          v13 = MEMORY[0x1E696AD98];
          [v7 baseHeight];
          [v5 setValue:objc_msgSend(v13 forKey:{"numberWithDouble:"), @"baseHeight"}];
          [v5 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(v7, "coordinateCount")), @"coordinateCount"}];
          if ([v7 coordinateCount])
          {
            v14 = 0;
            v15 = 0;
            do
            {
              v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.7lf, %.7lf", *(objc_msgSend(v7, "coordinates") + v14), *(objc_msgSend(v7, "coordinates") + v14 + 8)];
              [v5 setValue:v16 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"coord%d", v15++)}];
              v14 += 16;
            }

            while ([v7 coordinateCount] > v15);
          }
        }

        [v20 addObject:v5];
        ++v4;
      }

      while ([objc_msgSend(a2 "sections")] > v4);
    }

    v17 = *(*(*(v19 + 32) + 8) + 40);

    return [v17 addObject:v18];
  }

  return result;
}

uint64_t sub_19B9C2DFC(uint64_t a1, void *a2)
{
  if (a2)
  {
    NSLog(&cfstr_CltspClmmGeoma.isa, *(a1 + 64), [a2 code], objc_msgSend(a2, "domain"), objc_msgSend(a2, "localizedDescription"));
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    NSLog(&cfstr_CltspClgeomaph.isa, *(a1 + 64), [*(*(*(a1 + 48) + 8) + 40) count], (Current - *(*(*(a1 + 56) + 8) + 24)) * 1000.0);
    v4 = *(*(*(a1 + 48) + 8) + 40);
  }

  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 68) == 1)
  {
    v6 = *(*(a1 + 32) + 16);

    return [v6 clearBuildingTiles];
  }

  return result;
}

void sub_19B9C32E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9C3314(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

intptr_t sub_19B9C3328(uint64_t a1, void *a2)
{
  if (a2)
  {
    NSLog(&cfstr_CltspClmmMaphe_3.isa, [a2 code], objc_msgSend(a2, "domain"), objc_msgSend(a2, "localizedDescription"));
    [*(a1 + 32) removeAllObjects];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 40) + 16) clearRoadTiles];
  }

  *(*(a1 + 40) + 48) = 0;
  *(*(a1 + 40) + 24) = 0;
  v3 = *(*(*(a1 + 56) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_19B9C36BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9C36F8(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = [a2 isDrivable];
    if (result)
    {
      if ([a2 travelDirection] == 1 || (result = objc_msgSend(a2, "travelDirection"), !result))
      {
        v4 = *(*(*(v3 + 32) + 8) + 40);

        return [v4 addObject:a2];
      }
    }
  }

  return result;
}

intptr_t sub_19B9C3774(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*(*(a1 + 32) + 50) == 1)
    {
      NSLog(&cfstr_CltspClmmMaphe_3.isa, [a2 code], objc_msgSend(a2, "domain"), objc_msgSend(a2, "localizedDescription"));
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 32) + 16) clearRoadTiles];
  }

  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 24) = 0;
  v3 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_19B9C3F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **__p, char **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a22;
  sub_19B8F0E84(&__p);
  a22 = &a25;
  sub_19B8F0E84(&a22);
  _Unwind_Resume(a1);
}

void sub_19B9C41CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9C5720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, void *a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, char a53, void *a54, uint64_t a55, char a56, void *a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_19B8F3484(&a48, a49);
  if (a52)
  {
    sub_19B8750F8(a52);
  }

  sub_19B8F3484(&a53, a54);
  sub_19B9B0C1C(&a56, a57);
  sub_19B8750F8(a21);
  if (a70)
  {
    sub_19B8750F8(a70);
  }

  a59 = &a71;
  sub_19B8F0E84(&a59);
  if (STACK[0x210])
  {
    sub_19B8750F8(STACK[0x210]);
  }

  if (STACK[0x228])
  {
    sub_19B8750F8(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

void sub_19B9C67A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9C6818;
  block[3] = &unk_1E753CFD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  block[5] = a2;
  block[6] = v4;
  block[4] = a3;
  dispatch_async(v3, block);
}

uint64_t sub_19B9C6818(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (v1)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 48);
    v5 = 0;
  }

  else
  {
    v5 = [objc_msgSend(*(a1 + 40) "geoAddress")];
    v3 = *(v2 + 16);
    v4 = v2;
    v1 = 0;
  }

  return v3(v4, v5, v1);
}

uint64_t sub_19B9C6890(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_msgSend(*(*(*(a1 + 32) + 8) + 40) "geoAddress")];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

uint64_t sub_19B9C6E90(uint64_t a1, void *a2)
{
  result = [a2 length];
  if (result)
  {
    if ([*(a1 + 32) length])
    {
      [*(a1 + 32) appendString:{@", "}];
    }

    v5 = *(a1 + 32);

    return [v5 appendString:a2];
  }

  return result;
}

uint64_t sub_19B9C70E4()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressStreetKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE5088 = result;
  }

  else
  {
    result = qword_1EAFE5088;
  }

  off_1ED519098 = sub_19B9C7164;
  return result;
}

void *sub_19B9C7170()
{
  result = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
  qword_1EAFE5098 = result;
  return result;
}

uint64_t sub_19B9C719C()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressSubLocalityKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50A0 = result;
  }

  else
  {
    result = qword_1EAFE50A0;
  }

  off_1ED5190A0 = sub_19B9C721C;
  return result;
}

uint64_t sub_19B9C7228()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressCityKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50A8 = result;
  }

  else
  {
    result = qword_1EAFE50A8;
  }

  off_1ED5190A8 = sub_19B9C72A8;
  return result;
}

uint64_t sub_19B9C72B4()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressSubAdministrativeAreaKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50B0 = result;
  }

  else
  {
    result = qword_1EAFE50B0;
  }

  off_1ED5190B0 = sub_19B9C7334;
  return result;
}

uint64_t sub_19B9C7340()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressStateKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50B8 = result;
  }

  else
  {
    result = qword_1EAFE50B8;
  }

  off_1ED5190B8 = sub_19B9C73C0;
  return result;
}

uint64_t sub_19B9C73CC()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressPostalCodeKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50C0 = result;
  }

  else
  {
    result = qword_1EAFE50C0;
  }

  off_1ED5190C0 = sub_19B9C744C;
  return result;
}

uint64_t sub_19B9C7458()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressCountryKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50C8 = result;
  }

  else
  {
    result = qword_1EAFE50C8;
  }

  off_1ED5190C8 = sub_19B9C74D8;
  return result;
}

uint64_t sub_19B9C74E4()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressISOCountryCodeKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50D0 = result;
  }

  else
  {
    result = qword_1EAFE50D0;
  }

  off_1ED5190D0 = sub_19B9C7564;
  return result;
}

Class sub_19B9C7570()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  result = objc_getClass("CNPostalAddress");
  qword_1EAFE50D8 = result;
  off_1ED5190D8 = sub_19B9C75D4;
  return result;
}

os_log_t sub_19B9C7854()
{
  result = os_log_create("com.apple.locationd.Position", "Position");
  qword_1EAFE4770 = result;
  return result;
}

void sub_19B9C7BD0(double *a1, long double *a2, double *a3, long double a4, long double a5, long double a6)
{
  v9 = sqrt(a5 * a5 + a4 * a4);
  *a2 = atan2(a5, a4) / 0.0174532925;
  v10 = v9 * 0.99330562;
  v11 = 0.0;
  v12 = 1.57079633;
  if (v9 * 0.99330562 != 0.0)
  {
    __y = a6;
    v13 = 0;
    v14 = 0.0;
    v12 = 0.0;
    do
    {
      v15 = v12;
      v12 = atan2(__y, v10);
      v16 = __sincos_stret(v12);
      v17 = 6378137.0 / sqrt(v16.__sinval * -0.00669437999 * v16.__sinval + 1.0);
      v11 = v9 / v16.__cosval - v17;
      if (vabdd_f64(v15, v12) >= 0.000001)
      {
        if (v13 > 8)
        {
          goto LABEL_13;
        }
      }

      else if (vabdd_f64(v14, v11) < 0.001 || v13 >= 9)
      {
        goto LABEL_13;
      }

      ++v13;
      v10 = v9 * (v17 / (v17 + v11) * -0.00669437999 + 1.0);
      v14 = v9 / v16.__cosval - v17;
    }

    while (v10 != 0.0);
    v12 = 1.57079633;
  }

LABEL_13:
  *a1 = v12 / 0.0174532925;
  *a3 = v11;
}

void sub_19B9C94C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9CA898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (v53)
  {
    operator delete(v53);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B9CA990()
{
  result = os_log_create("com.apple.locationd.Position", "RouteSmoother");
  qword_1EAFE47A0 = result;
  return result;
}

void *sub_19B9CA9C0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_19B8D9954(result, a2);
    }

    sub_19B8F3F74();
  }

  return result;
}

void *sub_19B9CAA60(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      sub_19B9CABD8(a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19B9CAB04(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_19B9CABD8(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void sub_19B9CABD8(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B9CAC20(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_19B9CACF4(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_19B9CACF4(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B9CAD3C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v145 = *(v8 + 16);
          v146 = *v8;
          v147 = *(v8 + 24);
          v148 = *(v8 + 8);
          if (v145 == *v8)
          {
            v149 = v147 < v148;
          }

          else
          {
            v149 = v145 < *v8;
          }

          v150 = *(a2 - 16);
          v151 = *(a2 - 8);
          v152 = v151 < v147;
          if (v150 != v145)
          {
            v152 = v150 < v145;
          }

          if (!v149)
          {
            if (!v152)
            {
              return result;
            }

            *(v8 + 16) = v150;
            *(a2 - 16) = v145;
            *(v8 + 24) = v151;
            *(a2 - 8) = v147;
            v131 = *(v8 + 16);
            v139 = *v8;
            v133 = *(v8 + 24);
            goto LABEL_278;
          }

          if (v152)
          {
            *v8 = v150;
            *(a2 - 16) = v146;
            *(v8 + 8) = v151;
          }

          else
          {
            *v8 = v145;
            *(v8 + 16) = v146;
            *(v8 + 8) = v147;
            *(v8 + 24) = v148;
            v217 = *(a2 - 16);
            v218 = *(a2 - 8);
            v219 = v218 < v148;
            if (v217 != v146)
            {
              v219 = v217 < v146;
            }

            if (!v219)
            {
              return result;
            }

            *(v8 + 16) = v217;
            *(a2 - 16) = v146;
            *(v8 + 24) = v218;
          }

          *(a2 - 8) = v148;
          return result;
        case 4:

          return sub_19B9CBBBC(v8, (v8 + 16), (v8 + 32), (a2 - 16));
        case 5:
          result = sub_19B9CBBBC(v8, (v8 + 16), (v8 + 32), (v8 + 48));
          v126 = *(a2 - 16);
          v127 = *(v8 + 48);
          v128 = *(a2 - 8);
          v129 = *(v8 + 56);
          v130 = v128 < v129;
          if (v126 != v127)
          {
            v130 = v126 < v127;
          }

          if (!v130)
          {
            return result;
          }

          *(v8 + 48) = v126;
          *(a2 - 16) = v127;
          *(v8 + 56) = v128;
          *(a2 - 8) = v129;
          v131 = *(v8 + 48);
          v132 = *(v8 + 32);
          v133 = *(v8 + 56);
          v134 = *(v8 + 40);
          v135 = v133 < v134;
          if (v131 != v132)
          {
            v135 = v131 < v132;
          }

          if (!v135)
          {
            return result;
          }

          *(v8 + 32) = v131;
          *(v8 + 48) = v132;
          *(v8 + 40) = v133;
          *(v8 + 56) = v134;
          v136 = *(v8 + 16);
          v137 = *(v8 + 24);
          v138 = v133 < v137;
          if (v131 != v136)
          {
            v138 = v131 < v136;
          }

          if (!v138)
          {
            return result;
          }

          *(v8 + 16) = v131;
          *(v8 + 32) = v136;
          *(v8 + 24) = v133;
          *(v8 + 40) = v137;
          v139 = *v8;
LABEL_278:
          v205 = *(v8 + 8);
          v206 = v133 < v205;
          if (v131 != v139)
          {
            v206 = v131 < v139;
          }

          if (v206)
          {
            *v8 = v131;
            *(v8 + 16) = v139;
            *(v8 + 8) = v133;
            *(v8 + 24) = v205;
          }

          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v140 = *(a2 - 16);
        v141 = *v8;
        v142 = *(a2 - 8);
        v143 = *(v8 + 8);
        v144 = v142 < v143;
        if (v140 != v141)
        {
          v144 = v140 < *v8;
        }

        if (v144)
        {
          *v8 = v140;
          *(a2 - 16) = v141;
          *(v8 + 8) = v142;
          *(a2 - 8) = v143;
        }

        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v167 = (v9 - 2) >> 1;
      v168 = v167;
      do
      {
        v169 = v168;
        if (v167 >= v168)
        {
          v170 = (2 * v168) | 1;
          v171 = v8 + 16 * v170;
          if (2 * v169 + 2 >= v9)
          {
            v172 = *v171;
          }

          else
          {
            v172 = *(v171 + 16);
            v173 = *(v171 + 8) < *(v171 + 24);
            result = *v171 < v172;
            if (*v171 != v172)
            {
              v173 = *v171 < v172;
            }

            if (v173)
            {
              v171 += 16;
            }

            else
            {
              v172 = *v171;
            }

            if (v173)
            {
              v170 = 2 * v169 + 2;
            }
          }

          v174 = v8 + 16 * v169;
          v175 = *v174;
          v176 = *(v171 + 8);
          v177 = *(v174 + 8);
          v178 = v176 < v177;
          if (v172 != *v174)
          {
            v178 = v172 < *v174;
          }

          if (!v178)
          {
            do
            {
              *v174 = v172;
              *(v174 + 8) = v176;
              v174 = v171;
              if (v167 < v170)
              {
                break;
              }

              v179 = (2 * v170) | 1;
              v171 = v8 + 16 * v179;
              v170 = 2 * v170 + 2;
              if (v170 >= v9)
              {
                v172 = *v171;
                v170 = v179;
              }

              else
              {
                v172 = *(v171 + 16);
                result = *v171;
                v180 = *(v171 + 8) < *(v171 + 24);
                if (*v171 != v172)
                {
                  v180 = *v171 < v172;
                }

                if (v180)
                {
                  v171 += 16;
                }

                else
                {
                  v172 = *v171;
                }

                if (!v180)
                {
                  v170 = v179;
                }
              }

              v176 = *(v171 + 8);
              v181 = v176 < v177;
              if (v172 != v175)
              {
                v181 = v172 < v175;
              }
            }

            while (!v181);
            *v174 = v175;
            *(v174 + 8) = v177;
          }
        }

        v168 = v169 - 1;
      }

      while (v169);
      while (2)
      {
        v182 = 0;
        v183 = *v8;
        v184 = *(v8 + 8);
        v185 = v8;
        do
        {
          v186 = &v185[2 * v182];
          v187 = v186 + 2;
          v188 = (2 * v182) | 1;
          v182 = 2 * v182 + 2;
          if (v182 >= v9)
          {
            v190 = *v187;
            v182 = v188;
          }

          else
          {
            v191 = v186[4];
            v189 = (v186 + 4);
            v190 = v191;
            v192 = *(v189 - 2);
            v193 = *(v189 - 1) < v189[1];
            v194 = v192 < v191;
            if (v192 == v191)
            {
              result = *(v189 - 1) < v189[1];
            }

            else
            {
              result = v194;
            }

            if (result)
            {
              v187 = v189;
            }

            else
            {
              v190 = *(v189 - 2);
            }

            if (!result)
            {
              v182 = v188;
            }
          }

          *v185 = v190;
          v185[1] = v187[1];
          v185 = v187;
        }

        while (v182 <= ((v9 - 2) >> 1));
        if (v187 != (a2 - 16))
        {
          *v187 = *(a2 - 16);
          v187[1] = *(a2 - 8);
          *(a2 - 16) = v183;
          *(a2 - 8) = v184;
          v195 = (v187 - v8 + 16) >> 4;
          v196 = v195 < 2;
          v197 = v195 - 2;
          if (!v196)
          {
            v198 = v197 >> 1;
            v199 = v8 + 16 * v198;
            v200 = *v199;
            v201 = *v187;
            v202 = *(v199 + 8);
            v184 = *(v187 + 1);
            v203 = v202 < v184;
            if (*v199 != *v187)
            {
              v203 = *v199 < *v187;
            }

            if (v203)
            {
              do
              {
                *v187 = v200;
                *(v187 + 1) = v202;
                v187 = v199;
                if (!v198)
                {
                  break;
                }

                v198 = (v198 - 1) >> 1;
                v199 = v8 + 16 * v198;
                v200 = *v199;
                v202 = *(v199 + 8);
                v204 = v202 < v184;
                if (*v199 != v201)
                {
                  v204 = *v199 < v201;
                }
              }

              while (v204);
              *v187 = v201;
LABEL_272:
              *(v187 + 1) = v184;
            }
          }

          a2 -= 16;
          v196 = v9-- <= 2;
          if (v196)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v187 = v183;
      goto LABEL_272;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 16);
    v12 = *(a2 - 8);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = *(v10 + 8);
      v16 = *(v8 + 8);
      v17 = *v10 < *v8;
      if (*v10 == *v8)
      {
        v17 = v15 < v16;
      }

      v18 = v12 < v15;
      if (v11 != v13)
      {
        v18 = v11 < v13;
      }

      if (v17)
      {
        if (v18)
        {
          *v8 = v11;
          *(a2 - 16) = v14;
          *(v8 + 8) = v12;
          goto LABEL_41;
        }

        *v8 = v13;
        *v10 = v14;
        *(v8 + 8) = v15;
        *(v10 + 8) = v16;
        v33 = *(a2 - 16);
        v34 = *(a2 - 8);
        v35 = v34 < v16;
        if (v33 != v14)
        {
          v35 = v33 < v14;
        }

        if (v35)
        {
          *v10 = v33;
          *(a2 - 16) = v14;
          *(v10 + 8) = v34;
LABEL_41:
          *(a2 - 8) = v16;
        }
      }

      else if (v18)
      {
        *v10 = v11;
        *(a2 - 16) = v13;
        *(v10 + 8) = v12;
        *(a2 - 8) = v15;
        v25 = *v8;
        v26 = *(v10 + 8);
        v27 = *(v8 + 8);
        v28 = v26 < v27;
        if (*v10 != *v8)
        {
          v28 = *v10 < *v8;
        }

        if (v28)
        {
          *v8 = *v10;
          *v10 = v25;
          *(v8 + 8) = v26;
          *(v10 + 8) = v27;
        }
      }

      v36 = v10 - 16;
      v37 = *(v10 - 16);
      v38 = *(v8 + 16);
      v39 = *(v10 - 8);
      v40 = *(v8 + 24);
      if (v37 == v38)
      {
        v41 = v39 < v40;
      }

      else
      {
        v41 = v37 < v38;
      }

      v42 = *(a2 - 32);
      v43 = *(a2 - 24);
      v44 = v43 < v39;
      if (v42 != v37)
      {
        v44 = v42 < v37;
      }

      if (v41)
      {
        if (v44)
        {
          *(v8 + 16) = v42;
          *(a2 - 32) = v38;
          *(v8 + 24) = v43;
          goto LABEL_64;
        }

        *(v8 + 16) = v37;
        *v36 = v38;
        *(v8 + 24) = v39;
        *(v10 - 8) = v40;
        v52 = *(a2 - 32);
        v53 = *(a2 - 24);
        v54 = v53 < v40;
        if (v52 != v38)
        {
          v54 = v52 < v38;
        }

        if (v54)
        {
          *v36 = v52;
          *(a2 - 32) = v38;
          *(v10 - 8) = v53;
LABEL_64:
          *(a2 - 24) = v40;
        }
      }

      else if (v44)
      {
        *v36 = v42;
        *(a2 - 32) = v37;
        *(v10 - 8) = v43;
        *(a2 - 24) = v39;
        v45 = *(v8 + 16);
        v46 = *(v10 - 8);
        v47 = *(v8 + 24);
        v48 = v46 < v47;
        if (*v36 != v45)
        {
          v48 = *v36 < v45;
        }

        if (v48)
        {
          *(v8 + 16) = *v36;
          *v36 = v45;
          *(v8 + 24) = v46;
          *(v10 - 8) = v47;
        }
      }

      v55 = v10 + 16;
      v56 = *(v10 + 16);
      v57 = *(v8 + 32);
      v58 = *(v10 + 24);
      v59 = *(v8 + 40);
      if (v56 == v57)
      {
        v60 = v58 < v59;
      }

      else
      {
        v60 = v56 < v57;
      }

      v61 = *(a2 - 48);
      v62 = *(a2 - 40);
      v63 = v62 < v58;
      if (v61 != v56)
      {
        v63 = v61 < v56;
      }

      if (v60)
      {
        if (v63)
        {
          *(v8 + 32) = v61;
          *(a2 - 48) = v57;
          *(v8 + 40) = v62;
          goto LABEL_82;
        }

        *(v8 + 32) = v56;
        *v55 = v57;
        *(v8 + 40) = v58;
        *(v10 + 24) = v59;
        v68 = *(a2 - 48);
        v69 = *(a2 - 40);
        v70 = v69 < v59;
        if (v68 != v57)
        {
          v70 = v68 < v57;
        }

        if (v70)
        {
          *v55 = v68;
          *(a2 - 48) = v57;
          *(v10 + 24) = v69;
LABEL_82:
          *(a2 - 40) = v59;
        }
      }

      else if (v63)
      {
        *v55 = v61;
        *(a2 - 48) = v56;
        *(v10 + 24) = v62;
        *(a2 - 40) = v58;
        v64 = *(v8 + 32);
        v65 = *(v10 + 24);
        v66 = *(v8 + 40);
        v67 = v65 < v66;
        if (*v55 != v64)
        {
          v67 = *v55 < v64;
        }

        if (v67)
        {
          *(v8 + 32) = *v55;
          *v55 = v64;
          *(v8 + 40) = v65;
          *(v10 + 24) = v66;
        }
      }

      v71 = *v10;
      v72 = *v36;
      v73 = *(v10 + 8);
      v74 = *(v10 - 8);
      if (*v10 == *v36)
      {
        v75 = v73 < v74;
      }

      else
      {
        v75 = *v10 < *v36;
      }

      v76 = *v55;
      v77 = *(v10 + 24);
      v78 = v77 < v73;
      if (*v55 != v71)
      {
        v78 = *v55 < v71;
      }

      if (v75)
      {
        if (!v78)
        {
          *v36 = v71;
          *v10 = v72;
          v79 = v76 < v72;
          if (v76 == v72)
          {
            v79 = v77 < v74;
          }

          *(v10 - 8) = v73;
          *(v10 + 8) = v74;
          v36 = v10;
          v73 = v77;
          v71 = v76;
          if (!v79)
          {
            v73 = v74;
            v71 = v72;
LABEL_100:
            v81 = *v8;
            *v8 = v71;
            *v10 = v81;
            v82 = *(v8 + 8);
            *(v8 + 8) = v73;
            *(v10 + 8) = v82;
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (!v78)
        {
          goto LABEL_100;
        }

        *v10 = v76;
        *v55 = v71;
        *(v10 + 8) = v77;
        *(v10 + 24) = v73;
        if (v76 == v72)
        {
          v80 = v77 < v74;
        }

        else
        {
          v80 = v76 < v72;
        }

        v55 = v10;
        v73 = v74;
        v71 = v72;
        if (!v80)
        {
          v73 = v77;
          v71 = v76;
          goto LABEL_100;
        }
      }

      *v36 = v76;
      *v55 = v72;
      *(v36 + 8) = v77;
      *(v55 + 8) = v74;
      goto LABEL_100;
    }

    v19 = *v8;
    v20 = *v10;
    v21 = *(v8 + 8);
    v22 = *(v10 + 8);
    v23 = *v8 < *v10;
    if (*v8 == *v10)
    {
      v23 = v21 < v22;
    }

    v24 = v12 < v21;
    if (v11 != v19)
    {
      v24 = v11 < v19;
    }

    if (v23)
    {
      if (v24)
      {
        *v10 = v11;
        *(a2 - 16) = v20;
        *(v10 + 8) = v12;
LABEL_59:
        *(a2 - 8) = v22;
        goto LABEL_101;
      }

      *v10 = v19;
      *v8 = v20;
      *(v10 + 8) = v21;
      *(v8 + 8) = v22;
      v49 = *(a2 - 16);
      v50 = *(a2 - 8);
      v51 = v50 < v22;
      if (v49 != v20)
      {
        v51 = v49 < v20;
      }

      if (v51)
      {
        *v8 = v49;
        *(a2 - 16) = v20;
        *(v8 + 8) = v50;
        goto LABEL_59;
      }
    }

    else if (v24)
    {
      *v8 = v11;
      *(a2 - 16) = v19;
      *(v8 + 8) = v12;
      *(a2 - 8) = v21;
      v29 = *v10;
      v30 = *(v8 + 8);
      v31 = *(v10 + 8);
      v32 = v30 < v31;
      if (*v8 != *v10)
      {
        v32 = *v8 < *v10;
      }

      if (v32)
      {
        *v10 = *v8;
        *v8 = v29;
        *(v10 + 8) = v30;
        *(v8 + 8) = v31;
      }
    }

LABEL_101:
    --a3;
    v83 = *v8;
    if (a4)
    {
      v84 = *(v8 + 8);
      goto LABEL_106;
    }

    v85 = *(v8 - 16);
    v84 = *(v8 + 8);
    v154 = v85 == v83;
    v86 = v85 < v83;
    if (v154)
    {
      v86 = *(v8 - 8) < v84;
    }

    if (v86)
    {
LABEL_106:
      v87 = 0;
      do
      {
        v88 = *(v8 + v87 + 16);
        v89 = *(v8 + v87 + 24) < v84;
        if (v88 != v83)
        {
          v89 = v88 < v83;
        }

        v87 += 16;
      }

      while (v89);
      v90 = v8 + v87;
      v91 = a2;
      if (v87 == 16)
      {
        v91 = a2;
        do
        {
          if (v90 >= v91)
          {
            break;
          }

          v94 = *(v91 - 16);
          v91 -= 16;
          v95 = v94 < v83;
          if (v94 == v83)
          {
            v95 = *(v91 + 8) < v84;
          }
        }

        while (!v95);
      }

      else
      {
        do
        {
          v92 = *(v91 - 16);
          v91 -= 16;
          v93 = v92 < v83;
          if (v92 == v83)
          {
            v93 = *(v91 + 8) < v84;
          }
        }

        while (!v93);
      }

      if (v90 >= v91)
      {
        v8 = v90;
      }

      else
      {
        v96 = *v91;
        v8 = v90;
        v97 = v91;
        do
        {
          *v8 = v96;
          *v97 = v88;
          v98 = *(v8 + 8);
          *(v8 + 8) = v97[1];
          *(v97 + 1) = v98;
          do
          {
            v99 = *(v8 + 16);
            v8 += 16;
            v88 = v99;
            v100 = *(v8 + 8) < v84;
            v101 = v99 < v83;
            if (v99 != v83)
            {
              v100 = v101;
            }
          }

          while (v100);
          do
          {
            v102 = *(v97 - 2);
            v97 -= 2;
            v96 = v102;
            v103 = v97[1] < v84;
            v104 = v102 < v83;
            if (v102 != v83)
            {
              v103 = v104;
            }
          }

          while (!v103);
        }

        while (v8 < v97);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v83;
      *(v8 - 8) = v84;
      if (v90 < v91)
      {
        goto LABEL_137;
      }

      v105 = sub_19B9CBD78(v7, v8 - 16);
      result = sub_19B9CBD78(v8, a2);
      if (result)
      {
        a2 = v8 - 16;
        if (v105)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v105)
      {
LABEL_137:
        result = sub_19B9CAD3C(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v106 = *(a2 - 16);
      v154 = v83 == v106;
      v107 = v83 < v106;
      if (v154)
      {
        v107 = v84 < *(a2 - 8);
      }

      if (v107)
      {
        do
        {
          v108 = *(v8 + 16);
          v8 += 16;
          v109 = v83 < v108;
          if (v83 == v108)
          {
            v109 = v84 < *(v8 + 8);
          }
        }

        while (!v109);
      }

      else
      {
        v110 = (v8 + 16);
        do
        {
          v8 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = *v110;
          v112 = v84 < *(v8 + 8);
          v154 = v83 == v111;
          v113 = v83 < v111;
          if (!v154)
          {
            v112 = v113;
          }

          v110 = (v8 + 16);
        }

        while (!v112);
      }

      v114 = a2;
      if (v8 < a2)
      {
        v114 = a2;
        do
        {
          v115 = *(v114 - 16);
          v114 -= 16;
          v116 = v83 < v115;
          if (v83 == v115)
          {
            v116 = v84 < *(v114 + 8);
          }
        }

        while (v116);
      }

      if (v8 < v114)
      {
        v117 = *v8;
        v118 = *v114;
        do
        {
          *v8 = v118;
          *v114 = v117;
          v119 = *(v8 + 8);
          *(v8 + 8) = *(v114 + 8);
          *(v114 + 8) = v119;
          do
          {
            v120 = *(v8 + 16);
            v8 += 16;
            v117 = v120;
            v121 = v84 < *(v8 + 8);
            v122 = v83 < v120;
            if (v83 != v120)
            {
              v121 = v122;
            }
          }

          while (!v121);
          do
          {
            v123 = *(v114 - 16);
            v114 -= 16;
            v118 = v123;
            v124 = v84 < *(v114 + 8);
            v125 = v83 < v123;
            if (v83 != v123)
            {
              v124 = v125;
            }
          }

          while (v124);
        }

        while (v8 < v114);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v83;
      *(v8 - 8) = v84;
    }
  }

  v153 = v8 + 16;
  v154 = v8 == a2 || v153 == a2;
  v155 = v154;
  if (a4)
  {
    if ((v155 & 1) == 0)
    {
      v156 = 0;
      v157 = v8;
      do
      {
        v158 = *(v157 + 16);
        v159 = *v157;
        v160 = *(v157 + 24);
        v161 = *(v157 + 8);
        v157 = v153;
        v162 = v160 < v161;
        if (v158 != v159)
        {
          v162 = v158 < v159;
        }

        if (v162)
        {
          v163 = v156;
          while (1)
          {
            v164 = v8 + v163;
            *(v164 + 16) = v159;
            *(v164 + 24) = *(v8 + v163 + 8);
            if (!v163)
            {
              break;
            }

            v159 = *(v164 - 16);
            v165 = v160 < *(v164 - 8);
            if (v158 != v159)
            {
              v165 = v158 < v159;
            }

            v163 -= 16;
            if (!v165)
            {
              v166 = v8 + v163 + 16;
              goto LABEL_215;
            }
          }

          v166 = v8;
LABEL_215:
          *v166 = v158;
          *(v166 + 8) = v160;
        }

        v153 = v157 + 16;
        v156 += 16;
      }

      while (v157 + 16 != a2);
    }
  }

  else if ((v155 & 1) == 0)
  {
    v207 = (v8 + 24);
    do
    {
      v208 = *(v7 + 16);
      v209 = *v7;
      v210 = *(v7 + 24);
      v211 = *(v7 + 8);
      v7 = v153;
      v212 = v210 < v211;
      if (v208 != v209)
      {
        v212 = v208 < v209;
      }

      if (v212)
      {
        v213 = v207;
        do
        {
          v214 = v213;
          *(v213 - 1) = v209;
          v215 = *(v213 - 2);
          v213 -= 2;
          *v214 = v215;
          v209 = *(v214 - 5);
          v216 = v210 < *(v214 - 4);
          if (v208 != v209)
          {
            v216 = v208 < v209;
          }
        }

        while (v216);
        *(v213 - 1) = v208;
        *v213 = v210;
      }

      v153 = v7 + 16;
      v207 += 2;
    }

    while (v7 + 16 != a2);
  }

  return result;
}

unint64_t *sub_19B9CBBBC(unint64_t *result, unint64_t *a2, double *a3, double *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(a2 + 1);
  v7 = *(result + 1);
  if (*a2 == *result)
  {
    v8 = v6 < v7;
  }

  else
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = v10 < v6;
  if (*a3 != v4)
  {
    v11 = *a3 < v4;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
      *a3 = v5;
      *(result + 1) = v10;
LABEL_18:
      v6 = v7;
      v4 = v5;
      a3[1] = v7;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    *(result + 1) = v6;
    *(a2 + 1) = v7;
    v4 = *a3;
    v6 = a3[1];
    v16 = v6 < v7;
    if (*a3 != v5)
    {
      v16 = *a3 < v5;
    }

    if (v16)
    {
      *a2 = v4;
      *a3 = v5;
      *(a2 + 1) = v6;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    *(a2 + 1) = v10;
    a3[1] = v6;
    v12 = *result;
    v13 = *(a2 + 1);
    v14 = *(result + 1);
    v15 = v13 < v14;
    if (*a2 != *result)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      *(result + 1) = v13;
      *(a2 + 1) = v14;
      v4 = *a3;
      v6 = a3[1];
    }
  }

  else
  {
    v6 = a3[1];
    v4 = *a3;
  }

LABEL_20:
  v17 = a4[1];
  v18 = v17 < v6;
  if (*a4 != v4)
  {
    v18 = *a4 < v4;
  }

  if (v18)
  {
    *a3 = *a4;
    *a4 = v4;
    a3[1] = v17;
    a4[1] = v6;
    v19 = *a2;
    v20 = a3[1];
    v21 = *(a2 + 1);
    v22 = v20 < v21;
    if (*a3 != *a2)
    {
      v22 = *a3 < *a2;
    }

    if (v22)
    {
      *a2 = *a3;
      *a3 = v19;
      *(a2 + 1) = v20;
      a3[1] = v21;
      v23 = *result;
      v24 = *(a2 + 1);
      v25 = *(result + 1);
      v26 = v24 < v25;
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v23;
        *(result + 1) = v24;
        *(a2 + 1) = v25;
      }
    }
  }

  return result;
}

BOOL sub_19B9CBD78(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 16);
        v6 = *a1;
        v7 = *(a2 - 8);
        v8 = *(a1 + 8);
        v9 = v7 < v8;
        if (v5 != *a1)
        {
          v9 = v5 < *a1;
        }

        if (v9)
        {
          *a1 = v5;
          *(a2 - 16) = v6;
          *(a1 + 8) = v7;
LABEL_69:
          result = 1;
          *(a2 - 8) = v8;
          return result;
        }

        return 1;
      }

      goto LABEL_32;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      v27 = *(a1 + 16);
      v28 = *a1;
      v29 = *(a1 + 24);
      v8 = *(a1 + 8);
      if (v27 == *a1)
      {
        v30 = v29 < v8;
      }

      else
      {
        v30 = v27 < *a1;
      }

      v31 = *(a2 - 16);
      v32 = *(a2 - 8);
      v33 = v32 < v29;
      if (v31 != v27)
      {
        v33 = v31 < v27;
      }

      if (v30)
      {
        if (v33)
        {
          *a1 = v31;
          *(a2 - 16) = v28;
          *(a1 + 8) = v32;
          goto LABEL_69;
        }

        *a1 = v27;
        *(a1 + 16) = v28;
        *(a1 + 8) = v29;
        *(a1 + 24) = v8;
        v64 = *(a2 - 16);
        v65 = *(a2 - 8);
        v66 = v65 < v8;
        if (v64 != v28)
        {
          v66 = v64 < v28;
        }

        if (v66)
        {
          *(a1 + 16) = v64;
          *(a2 - 16) = v28;
          *(a1 + 24) = v65;
          goto LABEL_69;
        }
      }

      else if (v33)
      {
        *(a1 + 16) = v31;
        *(a2 - 16) = v27;
        *(a1 + 24) = v32;
        *(a2 - 8) = v29;
        v47 = *(a1 + 16);
        v48 = *a1;
        v49 = *(a1 + 24);
        v50 = *(a1 + 8);
        v51 = v49 < v50;
        if (v47 != *a1)
        {
          v51 = v47 < *a1;
        }

        if (v51)
        {
          *a1 = v47;
          *(a1 + 16) = v48;
          *(a1 + 8) = v49;
          result = 1;
          *(a1 + 24) = v50;
          return result;
        }
      }

      return 1;
    case 4:
      sub_19B9CBBBC(a1, (a1 + 16), (a1 + 32), (a2 - 16));
      return 1;
    case 5:
      sub_19B9CBBBC(a1, (a1 + 16), (a1 + 32), (a1 + 48));
      v10 = *(a2 - 16);
      v11 = *(a1 + 48);
      v12 = *(a2 - 8);
      v13 = *(a1 + 56);
      v14 = v12 < v13;
      if (v10 != v11)
      {
        v14 = v10 < v11;
      }

      if (v14)
      {
        *(a1 + 48) = v10;
        *(a2 - 16) = v11;
        *(a1 + 56) = v12;
        *(a2 - 8) = v13;
        v15 = *(a1 + 48);
        v16 = *(a1 + 32);
        v17 = *(a1 + 56);
        v18 = *(a1 + 40);
        v19 = v17 < v18;
        if (v15 != v16)
        {
          v19 = v15 < v16;
        }

        if (v19)
        {
          *(a1 + 32) = v15;
          *(a1 + 48) = v16;
          *(a1 + 40) = v17;
          *(a1 + 56) = v18;
          v20 = *(a1 + 16);
          v21 = *(a1 + 24);
          v22 = v17 < v21;
          if (v15 != v20)
          {
            v22 = v15 < v20;
          }

          if (v22)
          {
            *(a1 + 16) = v15;
            *(a1 + 32) = v20;
            *(a1 + 24) = v17;
            *(a1 + 40) = v21;
            v23 = *a1;
            v24 = *(a1 + 8);
            v25 = v17 < v24;
            if (v15 != *a1)
            {
              v25 = v15 < *a1;
            }

            if (v25)
            {
              *a1 = v15;
              *(a1 + 16) = v23;
              *(a1 + 8) = v17;
              result = 1;
              *(a1 + 24) = v24;
              return result;
            }
          }
        }
      }

      return 1;
  }

LABEL_32:
  v34 = a1 + 32;
  v35 = *(a1 + 32);
  v36 = (a1 + 16);
  v37 = *(a1 + 16);
  v38 = *a1;
  v39 = (a1 + 24);
  v40 = *(a1 + 24);
  v41 = (a1 + 8);
  v42 = *(a1 + 8);
  v43 = v37 < *a1;
  v44 = *(a1 + 40);
  if (v37 == *a1)
  {
    v43 = v40 < v42;
  }

  v45 = v44 < v40;
  if (v35 != v37)
  {
    v45 = v35 < v37;
  }

  if (v43)
  {
    if (v45)
    {
      v46 = a1;
      v36 = (a1 + 32);
      v39 = (a1 + 40);
LABEL_49:
      *v46 = v35;
      *v36 = v38;
      *v41 = v44;
      *v39 = v42;
      goto LABEL_50;
    }

    *a1 = v37;
    *(a1 + 16) = v38;
    if (v35 == v38)
    {
      v67 = v44 < v42;
    }

    else
    {
      v67 = v35 < v38;
    }

    v46 = (a1 + 16);
    *(a1 + 8) = v40;
    *(a1 + 24) = v42;
    v36 = (a1 + 32);
    v41 = (a1 + 24);
    v39 = (a1 + 40);
    if (v67)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
    *v36 = v35;
    *v34 = v37;
    *v39 = v44;
    *(a1 + 40) = v40;
    v52 = v44 < v42;
    if (v35 != v38)
    {
      v52 = v35 < v38;
    }

    v46 = a1;
    if (v52)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v53 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = *v53;
    v57 = *v34;
    v58 = *(v53 + 8);
    v59 = v58 < *(v34 + 8);
    if (*v53 != v57)
    {
      v59 = *v53 < v57;
    }

    if (v59)
    {
      v60 = v54;
      while (1)
      {
        v61 = a1 + v60;
        *(v61 + 48) = v57;
        *(v61 + 56) = *(a1 + v60 + 40);
        if (v60 == -32)
        {
          break;
        }

        v57 = *(v61 + 16);
        v62 = v58 < *(v61 + 24);
        if (v56 != v57)
        {
          v62 = v56 < v57;
        }

        v60 -= 16;
        if (!v62)
        {
          v63 = a1 + v60 + 48;
          goto LABEL_62;
        }
      }

      v63 = a1;
LABEL_62:
      *v63 = v56;
      *(v63 + 8) = v58;
      if (++v55 == 8)
      {
        return v53 + 16 == a2;
      }
    }

    v34 = v53;
    v54 += 16;
    v53 += 16;
    if (v53 == a2)
    {
      return 1;
    }
  }
}

float sub_19B9CC1DC(float *a1)
{
  v1 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  result = ((v3 * v4) - (*a1 * v2)) + ((v3 * v4) - (*a1 * v2));
  v6 = -(v3 * *a1) - (v4 * v2);
  v7 = (((v4 * v4) + (*a1 * *a1)) * 2.0) + -1.0;
  *v11 = result;
  *&v11[1] = v6 + v6;
  *&v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v11[v1] * *&v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*&v11[v9] * *&v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

float32x4_t sub_19B9CC28C(float32x4_t *a1, float32x4_t result)
{
  result.f32[0] = sqrtf((((a1->f32[1] * a1->f32[1]) + (a1->f32[0] * a1->f32[0])) + (a1->f32[2] * a1->f32[2])) + (a1->f32[3] * a1->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      a1->i64[0] = 0;
      a1->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*a1, vdupq_lane_s32(*result.f32, 0));
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_19B9CC740(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_didReceiveLocationPushPayload_completion_);
}

uint64_t sub_19B9CC990(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v4, sel_serviceExtensionWillTerminate);
  }

  return result;
}

os_log_t sub_19B9D0538()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

uint64_t sub_19B9D0B34(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 40) + 8) + 24))
  {
    v1 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "#monitor dealloc destroying connection in a deferred way", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMonitor dealloc]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    result = CLConnection::deferredDelete(*(*(*(v1 + 40) + 8) + 24));
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9D0F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9D0FC4(uint64_t a1)
{
  result = [*(a1 + 32) monitoredIdentifiers];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B9D10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9D10F4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) allMonitoringRecordsByIdentifier];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t sub_19B9D18D8(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return MEMORY[0x1EEE66B58](Weak, sel_addConditionForMonitoring_identifier_options_assumedState_);
}

uint64_t sub_19B9D1E8C(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = *(a1 + 32);

  return [Weak removeConditionFromMonitoringWithIdentifier:v3];
}

void sub_19B9D2314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, os_activity_scope_state_s state, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  sub_19B8750F8(v17);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_19B9D2A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  sub_19B8750F8(v29);
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B9D2AF0(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor Default handler invoked, message:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  Weak = objc_loadWeak((a1 + 32));
  v8 = *(a2 + 8);
  v10 = *a2;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [Weak handleMessageMonitor:&v10];
  if (v11)
  {
    sub_19B8750F8(v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B9D2C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9D30F4(uint64_t a1)
{
  [*(a1 + 32) setIdentityToken:*(a1 + 40)];
  [*(a1 + 32) setStorageToken:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 manageConnection];
}

id sub_19B9D360C()
{
  result = [MEMORY[0x1E695DFA8] set];
  qword_1ED519300 = result;
  return result;
}

uint64_t sub_19B9D3798(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = &unk_1F0E6E648;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_19B874C9C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v6;
  }

  *(a1 + 48) = 0x600000006;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 80) = _Q0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 114) = 1;
  return a1;
}

void sub_19B9D3840(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9D3858(uint64_t a1)
{
  *a1 = &unk_1F0E6E648;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

uint64_t sub_19B9D38CC(uint64_t a1, char a2)
{
  *(a1 + 112) = a2;
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_19B9D3900(uint64_t a1, int a2)
{
  *(a1 + 113) = a2;
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))(result, a2 ^ 1u);
  }

  return result;
}

uint64_t sub_19B9D3938(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  v336 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3 || !a4)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v21 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240704;
      *&buf[4] = a2 == 0;
      *&buf[8] = 1026;
      *&buf[10] = a3 == 0;
      *&buf[14] = 1026;
      *&buf[16] = a4 == 0;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned false. isTripLocationsNil, %{public}u, isInertialOdometryDataNil, %{public}u, isReconstructedLocationsNil, %{public}u.", buf, 0x14u);
    }

    v22 = sub_19B87DD40();
    if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
    {
      goto LABEL_30;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v313 = 67240704;
    *&v313[4] = a2 == 0;
    *&v313[8] = 1026;
    *&v313[10] = a3 == 0;
    *&v313[14] = 1026;
    *&v313[16] = a4 == 0;
    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v23);
    goto LABEL_28;
  }

  v15 = [a3 count];
  if (v15 <= 1)
  {
    v16 = v15;
    sub_19B8D7ABC(a2, a4);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v17 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      *&buf[4] = v16;
      *&buf[12] = 2050;
      *&buf[14] = 2;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned true. Deep copy tripLocations to reconstructedLocations. inertialOdometryData array count, %{public}zu, expected minimum count, %{public}zu.", buf, 0x16u);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      *v313 = 134349312;
      *&v313[4] = v16;
      *&v313[12] = 2050;
      *&v313[14] = 2;
      v19 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = 1;
    goto LABEL_31;
  }

  v302 = a4;
  sub_19B8D8528(a2, 5uLL, a7, buf, 15.5, 60.0);
  v26 = *(a1 + 592);
  if (v26)
  {
    *(a1 + 600) = v26;
    operator delete(v26);
  }

  v307 = (a1 + 592);
  v27 = *buf;
  *(a1 + 592) = *buf;
  v28 = *&buf[8];
  v304 = (a1 + 600);
  *(a1 + 600) = *&buf[8];
  if ((v28 - v27) <= 8)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v50 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *v304 - *v307;
      *buf = 134349056;
      *&buf[4] = v51;
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned false. Number of hunc based selected locations %{public}zu.", buf, 0xCu);
    }

    v52 = sub_19B87DD40();
    if (*(v52 + 160) <= 1 && *(v52 + 164) <= 1 && *(v52 + 168) <= 1 && !*(v52 + 152))
    {
      goto LABEL_30;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v53 = *v304 - *v307;
    *v313 = 134349056;
    *&v313[4] = v53;
    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v23);
LABEL_28:
    if (v23 != buf)
    {
      free(v23);
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

  [objc_msgSend(a2 "firstObject")];
  v30 = v29;
  [objc_msgSend(a2 "firstObject")];
  *(a1 + 48) = v30;
  *(a1 + 56) = v31;
  *(a1 + 64) = 1;
  v32 = sub_19B8D96A4(a2);
  [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{*(*(a1 + 600) - 8)), "timestamp"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(a2, "objectAtIndexedSubscript:", **(a1 + 592)), "timestamp")}];
  v34 = v33;
  v35 = v33 < 2700.0 && v32 > 0.9;
  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v36 = a6 ^ 1;
  v299 = v35 & (a6 ^ 1);
  v37 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134284545;
    *&buf[4] = v32;
    *&buf[12] = 2050;
    *&buf[14] = v34;
    *&buf[22] = 1026;
    LODWORD(v317) = v35 & v36;
    WORD2(v317) = 1026;
    *(&v317 + 6) = a6;
    WORD5(v317) = 1026;
    HIDWORD(v317) = a7;
    _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] ratioOfDenseUrbanLocation, %{private}.2f, durationOfSession_inSec, %{public}.2f, shouldRunRANSAC, %{public}d, wasLocationOutlierRejectorEnabled, %{public}d, enableUseWifiInPTS, %{public}d.", buf, 0x28u);
  }

  v38 = sub_19B87DD40();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v313 = 134284545;
    *&v313[4] = v32;
    *&v313[12] = 2050;
    *&v313[14] = v34;
    *&v313[22] = 1026;
    *&v313[24] = v35 & v36;
    *&v313[28] = 1026;
    *&v313[30] = a6;
    *&v313[34] = 1026;
    *&v313[36] = a7;
    v39 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  if (a6)
  {
    *a1 = 257;
    *(a1 + 424) = a8;
    *(a1 + 432) = a9;
    v40 = sub_19B949838(a1, a2, a3, v302);
    *(a1 + 576) = *(a1 + 568);
    v41 = [a2 count];
    v42 = *(a1 + 576);
    v43 = *(a1 + 568);
    v44 = (v42 - v43) >> 3;
    if (v41 <= v44)
    {
      if (v41 < v44)
      {
        v42 = v43 + 8 * v41;
        *(a1 + 576) = v42;
      }
    }

    else
    {
      v45 = v41 - v44;
      v46 = *(a1 + 584);
      if (v45 > (v46 - v42) >> 3)
      {
        if (!(v41 >> 61))
        {
          v47 = v46 - v43;
          v48 = v47 >> 2;
          if (v47 >> 2 <= v41)
          {
            v48 = v41;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF8)
          {
            v49 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v48;
          }

          sub_19B8D9954(a1 + 568, v49);
        }

        sub_19B8B8A40();
      }

      bzero(*(a1 + 576), 8 * v45);
      v42 += 8 * v45;
      *(a1 + 576) = v42;
    }

    if (v43 != v42)
    {
      v150 = 0;
      v151 = (v42 - v43 - 8) >> 3;
      v152 = vdupq_n_s64(v151);
      v153 = (v151 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v154 = xmmword_19BA8C830;
      v155 = vdupq_n_s64(2uLL);
      do
      {
        v156 = vmovn_s64(vcgeq_u64(v152, v154));
        if (v156.i8[0])
        {
          *(v43 + 8 * v150) = v150;
        }

        if (v156.i8[4])
        {
          *(v43 + 8 * v150 + 8) = v150 + 1;
        }

        v150 += 2;
        v154 = vaddq_s64(v154, v155);
      }

      while (v153 != v150);
    }

    if (v40)
    {
      goto LABEL_266;
    }

    goto LABEL_278;
  }

  if (!v299)
  {
    v59 = sub_19B9D7088(a1, a2, a3, v302);
    goto LABEL_265;
  }

  context = objc_autoreleasePoolPush();
  *a1 = 0;
  if (*(a1 + 600) - *(a1 + 592) <= 8uLL)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v54 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v55 = *v304 - *v307;
      *buf = 134217984;
      *&buf[4] = v55;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RANSAC is called with insufficient locations samples, %{publuc}zu.", buf, 0xCu);
    }

    v56 = sub_19B87DD40();
    if ((*(v56 + 160) & 0x80000000) != 0 && (*(v56 + 164) & 0x80000000) != 0 && (*(v56 + 168) & 0x80000000) != 0 && !*(v56 + 152))
    {
      goto LABEL_250;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v57 = *v304 - *v307;
    *v310 = 134217984;
    *&v310[4] = v57;
    v58 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v58);
LABEL_248:
    if (v58 != buf)
    {
      free(v58);
    }

LABEL_250:
    objc_autoreleasePoolPop(context);
    v159 = qword_1EAFE4758;
LABEL_251:
    if (v159 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v160 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v160, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] RANSAC failed. Fall back to non-RANSAC.", buf, 2u);
    }

    v161 = sub_19B87DD40();
    v162 = v302;
    if (*(v161 + 160) > 1 || *(v161 + 164) > 1 || *(v161 + 168) > 1 || *(v161 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      *v313 = 0;
      v163 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v163);
      if (v163 != buf)
      {
        free(v163);
      }

      v162 = v302;
    }

    v59 = sub_19B9D7088(a1, a2, a3, v162);
LABEL_265:
    if (v59)
    {
      goto LABEL_266;
    }

LABEL_278:
    v20 = 0;
    goto LABEL_347;
  }

  v60 = [a2 objectsAtIndexes:sub_19B8D90D4(v307)];
  [objc_msgSend(objc_msgSend(v60 "lastObject")];
  if (v61 < 180.0 || v61 < 0.0)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v157 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v157, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] computation of scenario specific metrics failed.", buf, 2u);
    }

    v158 = sub_19B87DD40();
    if ((*(v158 + 160) & 0x80000000) != 0 && (*(v158 + 164) & 0x80000000) != 0 && (*(v158 + 168) & 0x80000000) != 0 && !*(v158 + 152))
    {
      goto LABEL_250;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v310 = 0;
    v58 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v58);
    goto LABEL_248;
  }

  v62 = vcvtmd_u64_f64(v61 / 180.0);
  *(a1 + 616) = v62;
  v63 = pow(0.7, (v62 + 2));
  v64 = vcvtpd_u64_f64(-2.0 / log10(1.0 - v63));
  if (v64 <= 0x64)
  {
    v64 = 100;
  }

  if (v64 >= 0x3E8)
  {
    v64 = 1000;
  }

  *(a1 + 624) = v64;
  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v65 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(a1 + 624);
    v67 = *(a1 + 616);
    *buf = 134218240;
    *&buf[4] = v66;
    *&buf[12] = 2048;
    *&buf[14] = v67;
    _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[computeScenarioSpecificMetrics] number of iteration,%lu, number of intermediate points, %lu.", buf, 0x16u);
  }

  v68 = sub_19B87DD40();
  if (*(v68 + 160) > 1 || *(v68 + 164) > 1 || *(v68 + 168) > 1 || *(v68 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v69 = *(a1 + 624);
    v70 = *(a1 + 616);
    *v310 = 134218240;
    *&v310[4] = v69;
    *&v310[12] = 2048;
    *&v310[14] = v70;
    v71 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::computeScenarioSpecificMetrics(NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v71);
    if (v71 != buf)
    {
      free(v71);
    }
  }

  v300 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a1 + 624))
  {
    v291 = 0;
    v72 = 0;
    v73 = a1;
    while (1)
    {
      v296 = v72;
      v74 = v73[77] + 2;
      if (v74 >= (v73[75] - v73[74]) >> 3)
      {
        break;
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      *v310 = 0;
      sub_19B9D8CFC(buf, 0);
      *v310 = *v304 - *v307 - 1;
      sub_19B9D8CFC(buf, *v310);
      while (*&buf[16] < v74)
      {
        v75 = arc4random_uniform((*v304 - *v307) >> 3);
        v76 = *&buf[8];
        if (!*&buf[8])
        {
LABEL_124:
          operator new();
        }

        v77 = &buf[8];
        v78 = *&buf[8];
        do
        {
          v79 = *(v78 + 32);
          v80 = v79 >= v75;
          v81 = v79 < v75;
          if (v80)
          {
            v77 = v78;
          }

          v78 = *(v78 + 8 * v81);
        }

        while (v78);
        if (v77 == &buf[8] || *(v77 + 4) > v75)
        {
          while (1)
          {
            while (1)
            {
              v82 = v76;
              v83 = v76[4];
              if (v83 <= v75)
              {
                break;
              }

              v76 = *v82;
              if (!*v82)
              {
                goto LABEL_124;
              }
            }

            if (v83 >= v75)
            {
              break;
            }

            v76 = v82[1];
            if (!v76)
            {
              goto LABEL_124;
            }
          }
        }
      }

      v84 = [MEMORY[0x1E696AD50] indexSet];
      v85 = *buf;
      if (*buf != &buf[8])
      {
        do
        {
          [v84 addIndex:(*v307)[v85[4]]];
          v86 = v85[1];
          if (v86)
          {
            do
            {
              v87 = v86;
              v86 = *v86;
            }

            while (v86);
          }

          else
          {
            do
            {
              v87 = v85[2];
              v88 = *v87 == v85;
              v85 = v87;
            }

            while (!v88);
          }

          v85 = v87;
        }

        while (v87 != &buf[8]);
      }

      sub_19B9D8CB0(*&buf[8]);
      if (!v84)
      {
        goto LABEL_429;
      }

      if (sub_19B949838(a1, [a2 objectsAtIndexes:v84], a3, v300))
      {
        v298 = [MEMORY[0x1E696AD50] indexSet];
        if (*v304 != *v307)
        {
          v89 = 0;
          v90 = 0;
          v91 = 0.0;
          while (1)
          {
            if (v90 >= [v300 count])
            {
              goto LABEL_163;
            }

            v92 = (*v307)[v89];
            v93 = [a2 objectAtIndex:v92];
            v94 = [v300 objectAtIndex:v90];
            if ([objc_msgSend(v94 "timestamp")] == -1)
            {
              ++v90;
            }

            else
            {
              if (v90)
              {
                v95 = [v300 objectAtIndex:v90 - 1];
                [objc_msgSend(v93 "timestamp")];
                v97 = v96;
                [objc_msgSend(v94 "timestamp")];
                v99 = v98;
                v100 = v97 / v98;
                if (v97 / v98 > 1.0)
                {
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                  }

                  v135 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *&buf[4] = v97;
                    *&buf[12] = 2048;
                    *&buf[14] = v99;
                    _os_log_impl(&dword_19B873000, v135, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[selectInliers] projection is greater than 1, fromPrevToMeas, %.2f, fromPrevToEvaluate, %.2f", buf, 0x16u);
                  }

                  v136 = sub_19B87DD40();
                  if ((*(v136 + 160) & 0x80000000) == 0 || (*(v136 + 164) & 0x80000000) == 0 || (*(v136 + 168) & 0x80000000) == 0 || *(v136 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                    }

                    *v310 = 134218240;
                    *&v310[4] = v97;
                    *&v310[12] = 2048;
                    *&v310[14] = v99;
                    v137 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::selectInliers(RTSModel &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v137);
                    goto LABEL_206;
                  }

                  goto LABEL_208;
                }

                [v95 latitude];
                v102 = v101;
                [v95 longitude];
                v104 = CLLocationCoordinate2DMake(v102, v103);
                [v94 latitude];
                v106 = v105;
                [v94 longitude];
                v108 = CLLocationCoordinate2DMake(v106, v107);
                sub_19B8D9740(buf, v104.latitude, v104.longitude, v108.latitude, v108.longitude, v100);
                [v93 latitude];
                v110 = v109;
                [v93 longitude];
                v112 = sub_19BA0C01C((a1 + 528), v110, v111, *buf, *&buf[8], 0.0);
                if (v112 < 25.0)
                {
                  [v298 addIndex:v92];
                }
              }

              else
              {
                if ([objc_msgSend(v94 "timestamp")])
                {
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                  }

                  v139 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    [objc_msgSend(v94 "timestamp")];
                    v141 = v140;
                    [objc_msgSend(v93 "timestamp")];
                    *buf = 134218240;
                    *&buf[4] = v141;
                    *&buf[12] = 2048;
                    *&buf[14] = v142;
                    _os_log_impl(&dword_19B873000, v139, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[selectInliers] first estimated location is later than first measured locaton, timestampFirstEstimated, %.2f, timestampFirstMeasured, %.2f", buf, 0x16u);
                  }

                  v143 = sub_19B87DD40();
                  if ((*(v143 + 160) & 0x80000000) == 0 || (*(v143 + 164) & 0x80000000) == 0 || (*(v143 + 168) & 0x80000000) == 0 || *(v143 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                    }

                    [objc_msgSend(v94 "timestamp")];
                    v145 = v144;
                    [objc_msgSend(v93 "timestamp")];
                    *v310 = 134218240;
                    *&v310[4] = v145;
                    *&v310[12] = 2048;
                    *&v310[14] = v146;
                    v137 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::selectInliers(RTSModel &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v137);
LABEL_206:
                    if (v137 != buf)
                    {
                      free(v137);
                    }
                  }

LABEL_208:
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                  }

                  v147 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B873000, v147, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Selection of inliers failed.", buf, 2u);
                  }

                  v148 = sub_19B87DD40();
                  if ((*(v148 + 160) & 0x80000000) == 0 || (*(v148 + 164) & 0x80000000) == 0 || (*(v148 + 168) & 0x80000000) == 0 || *(v148 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                    }

                    *v310 = 0;
                    v149 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v149);
                    if (v149 != buf)
                    {
                      free(v149);
                    }
                  }

                  goto LABEL_194;
                }

                [v93 latitude];
                v114 = v113;
                [v93 longitude];
                v116 = v115;
                [v94 latitude];
                v118 = v117;
                [v94 longitude];
                v112 = sub_19BA0C01C((a1 + 528), v114, v116, v118, v119, 0.0);
                if (v112 < 25.0)
                {
                  [v298 addIndex:v92];
                }

                v90 = 0;
              }

              v91 = v91 + v112;
              ++v89;
            }

            if (v89 >= *v304 - *v307)
            {
              goto LABEL_163;
            }
          }
        }

        v91 = 0.0;
LABEL_163:
        v123 = [v298 count];
        v124 = *v304;
        v125 = *v307;
        v126 = sub_19B8D9388([a2 objectsAtIndexes:v298], 300.0);
        v127 = v126;
        v128 = v123 / (v124 - v125);
        v129 = v128 < 0.8 || v126;
        if (v129 == 1)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
          }

          v130 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67240448;
            *&buf[4] = v127;
            *&buf[8] = 1026;
            *&buf[10] = v128 < 0.8;
            _os_log_impl(&dword_19B873000, v130, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Disgarding model, areInliersTooSparse, %{public}d, isRatioOfInliersLow, %{public}d.", buf, 0xEu);
          }

          v131 = sub_19B87DD40();
          if (*(v131 + 160) > 1 || *(v131 + 164) > 1 || *(v131 + 168) > 1 || *(v131 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
            }

            *v310 = 67240448;
            *&v310[4] = v127;
            *&v310[8] = 1026;
            *&v310[10] = v128 < 0.8;
            v132 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v132);
            if (v132 != buf)
            {
              free(v132);
            }
          }
        }

        else
        {
          v133 = v291;
          v134 = v291 >> 4;
          if (((v291 >> 4) + 1) >> 60)
          {
            sub_19B8B8A40();
          }

          if (v291 >> 4 != -1)
          {
            if (!(((v291 >> 4) + 1) >> 60))
            {
              operator new();
            }

            sub_19B8B8AB0();
          }

          v138 = 16 * v134;
          *v138 = v298;
          *(v138 + 8) = v91;
          v291 = 16 * v134 + 16;
          memcpy(0, 0, v133);
        }
      }

      else
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
        }

        v120 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v120, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RTS failed while generating models with randomly selected location samples.", buf, 2u);
        }

        v121 = sub_19B87DD40();
        if ((*(v121 + 160) & 0x80000000) == 0 || (*(v121 + 164) & 0x80000000) == 0 || (*(v121 + 168) & 0x80000000) == 0 || *(v121 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
          }

          *v310 = 0;
          v122 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v122);
          if (v122 != buf)
          {
            free(v122);
          }
        }
      }

LABEL_194:
      [v300 removeAllObjects];
      v72 = v296 + 1;
      v73 = a1;
      if ((v296 + 1) >= *(a1 + 624))
      {
        goto LABEL_360;
      }
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v272 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v273 = *v304 - *v307;
      *buf = 134217984;
      *&buf[4] = v273;
      _os_log_impl(&dword_19B873000, v272, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[chooseRandomLocationIndices] insufficient location samplers for random selection, %{publuc}zu.", buf, 0xCu);
    }

    v274 = sub_19B87DD40();
    if ((*(v274 + 160) & 0x80000000) == 0 || (*(v274 + 164) & 0x80000000) == 0 || (*(v274 + 168) & 0x80000000) == 0 || *(v274 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v275 = *v304 - *v307;
      *v310 = 134217984;
      *&v310[4] = v275;
      v276 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "NSIndexSet *CLTrajectorySmoother::chooseRandomLocationIndices()", "CoreLocation: %s\n", v276);
      if (v276 != buf)
      {
        free(v276);
      }
    }

LABEL_429:
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v277 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v277, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] random location selection failed.", buf, 2u);
    }

    v278 = sub_19B87DD40();
    if ((*(v278 + 160) & 0x80000000) == 0 || (*(v278 + 164) & 0x80000000) == 0 || (*(v278 + 168) & 0x80000000) == 0 || *(v278 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      *v310 = 0;
      v279 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v279);
      if (v279 != buf)
      {
        free(v279);
      }
    }

    goto LABEL_250;
  }

  v291 = 0;
LABEL_360:

  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v248 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = v291 >> 4;
    _os_log_impl(&dword_19B873000, v248, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Number of selected models, %{public}zu.", buf, 0xCu);
  }

  v249 = sub_19B87DD40();
  if (*(v249 + 160) > 1 || *(v249 + 164) > 1 || *(v249 + 168) > 1 || (*(v249 + 152) & 1) != 0)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v250 = v291 >> 4;
    *v310 = 134349056;
    *&v310[4] = v291 >> 4;
    v251 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v251);
    if (v251 != buf)
    {
      free(v251);
    }
  }

  else
  {
    v250 = v291 >> 4;
  }

  v252 = 126 - 2 * __clz(v250);
  if (v291)
  {
    v253 = v252;
  }

  else
  {
    v253 = 0;
  }

  sub_19B9D78C8(0, v291, v253, 1);
  v254 = sub_19B8D9230(a3);
  *a1 = 257;
  v255 = 0;
  if (!v291)
  {
    goto LABEL_250;
  }

  v256 = 0;
  if (v250 <= 1)
  {
    v250 = 1;
  }

  v257 = v254 * 5.0;
  v258 = v254 * 0.5;
  while (1)
  {
    if (v256 >= 0xB)
    {
      *a1 = 0;
    }

    v259 = *v255;
    if ((sub_19B949838(a1, [a2 objectsAtIndexes:*v255], a3, v302) & 1) == 0)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v269 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v256;
        _os_log_impl(&dword_19B873000, v269, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RTS failed while evaluating model, %{public}zu.", buf, 0xCu);
      }

      v270 = sub_19B87DD40();
      if ((*(v270 + 160) & 0x80000000) == 0 || (*(v270 + 164) & 0x80000000) == 0 || (*(v270 + 168) & 0x80000000) == 0 || *(v270 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
        }

        *v310 = 134349056;
        *&v310[4] = v256;
        v271 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v271);
        if (v271 != buf)
        {
          free(v271);
        }
      }

      goto LABEL_412;
    }

    v260 = sub_19B8D913C(v302);
    v261 = v260 > v258 && v260 < v257;
    if (*(a1 + 440) < 3.0 && *(a1 + 448) < 0.785398157 && v261)
    {
      break;
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v262 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      v263 = *(a1 + 448);
      v264 = *(a1 + 440) < 3.0;
      *buf = 134349824;
      *&buf[4] = v256;
      *&buf[12] = 1026;
      *&buf[14] = v264;
      *&buf[18] = 1026;
      *&buf[20] = v263 < 0.785398157;
      LOWORD(v317) = 1026;
      *(&v317 + 2) = v261;
      _os_log_impl(&dword_19B873000, v262, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Disgard model, %{public}zu, isDisplacementRatio, %{public}d, isCourseOffset, %{public}d, isDistance, %{public}d.", buf, 0x1Eu);
    }

    v265 = sub_19B87DD40();
    if (*(v265 + 160) > 1 || *(v265 + 164) > 1 || *(v265 + 168) > 1 || *(v265 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v266 = *(a1 + 440) < 3.0;
      v267 = *(a1 + 448) < 0.785398157;
      *v310 = 134349824;
      *&v310[4] = v256;
      *&v310[12] = 1026;
      *&v310[14] = v266;
      *&v310[18] = 1026;
      *&v310[20] = v267;
      v311 = 1026;
      v312 = v261;
      v268 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v268);
      if (v268 != buf)
      {
        free(v268);
      }
    }

LABEL_412:
    [v302 removeAllObjects];
    ++v256;
    v255 += 2;
    if (v250 == v256)
    {
      v280 = 0;
      goto LABEL_441;
    }
  }

  *(a1 + 576) = *(a1 + 568);
  *v313 = MEMORY[0x1E69E9820];
  *&v313[8] = 3221225472;
  *&v313[16] = sub_19B9D742C;
  *&v313[24] = &unk_1E753E8F0;
  *&v313[32] = a1;
  [v259 enumerateIndexesUsingBlock:v313];
  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v284 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = v256;
    _os_log_impl(&dword_19B873000, v284, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] selected model, %{public}zu.", buf, 0xCu);
  }

  v285 = sub_19B87DD40();
  if (*(v285 + 160) > 1 || *(v285 + 164) > 1 || *(v285 + 168) > 1 || *(v285 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v310 = 134349056;
    *&v310[4] = v256;
    v286 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v286);
    if (v286 != buf)
    {
      free(v286);
    }
  }

  v280 = 1;
LABEL_441:
  operator delete(0);
  objc_autoreleasePoolPop(context);
  v159 = qword_1EAFE4758;
  if (!v280)
  {
    goto LABEL_251;
  }

  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v281 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v281, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] RANSAC succeeded.", buf, 2u);
  }

  v282 = sub_19B87DD40();
  if (*(v282 + 160) > 1 || *(v282 + 164) > 1 || *(v282 + 168) > 1 || *(v282 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v313 = 0;
    v283 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v283);
    if (v283 != buf)
    {
      free(v283);
    }
  }

LABEL_266:
  [objc_msgSend(objc_msgSend(a2 objectAtIndex:{objc_msgSend(sub_19B8D90D4((a1 + 568)), "firstIndex")), "timestamp"), "timeIntervalSinceReferenceDate"}];
  *a5 = v164;
  [objc_msgSend(objc_msgSend(v302 "lastObject")];
  v301 = v165;
  v166 = *(a1 + 488);
  *v313 = *(a1 + 472);
  *&v313[16] = v166;
  __dst = 0;
  v315 = 0;
  *&v313[32] = 0;
  v168 = *(a1 + 504);
  v167 = *(a1 + 512);
  if (v167 != v168)
  {
    sub_19B8FD05C(&v313[32], (v167 - v168) >> 3);
  }

  v169 = sub_19B8D913C(v302);
  if (v169 <= 0.0)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v185 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v185, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[CA metrics] ptsPathLength is zero", buf, 2u);
    }

    v186 = sub_19B87DD40();
    if ((*(v186 + 160) & 0x80000000) == 0 || (*(v186 + 164) & 0x80000000) == 0 || (*(v186 + 168) & 0x80000000) == 0 || (v169 = -1.0, v184 = -1.0, v174 = -1.0, *(v186 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      *v310 = 0;
      v187 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLTrajectorySmoother::computeReconstructedRouteMetrics(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, CLPedestrianRTSSmoother::RTSModelMetrics, double &, double &, double &)", "CoreLocation: %s\n", v187);
      if (v187 != buf)
      {
        free(v187);
      }

      v169 = -1.0;
      v184 = -1.0;
      v174 = -1.0;
    }
  }

  else
  {
    *v310 = [a2 firstObject];
    *&v310[8] = [a2 lastObject];
    v170 = sub_19B8D913C([MEMORY[0x1E695DEC8] arrayWithObjects:v310 count:2]);
    v171 = (__dst - *&v313[32]) >> 3;
    v172 = *(a1 + 568);
    v173 = *(a1 + 576) - v172;
    v174 = v170 / v169;
    if (v171 == (v173 >> 3) - 1)
    {
      *buf = 0;
      v309 = 0;
      v175 = 0.0;
      if (v173 != 8)
      {
        v176 = 0;
        do
        {
          v177 = [a2 objectAtIndexedSubscript:*(v172 + 8 * v176 + 8)];
          v178 = [a2 objectAtIndexedSubscript:*(*(a1 + 568) + 8 * v176)];
          [objc_msgSend(v177 "timestamp")];
          v180 = v179;
          [objc_msgSend(v178 "timestamp")];
          sub_19B8D7A04(v302, buf, &v309, v181, v180);
          v182 = v309;
          v183 = sub_19B8D913C([v302 subarrayWithRange:?]);
          if (v183 <= 0.0)
          {
            --v171;
          }

          else
          {
            v175 = v175 + *(*&v313[32] + 8 * v176) / v183;
          }

          ++v176;
          *buf = v182;
          v172 = *(a1 + 568);
        }

        while (v176 < ((*(a1 + 576) - v172) >> 3) - 1);
      }

      if (v171)
      {
        v184 = v175 / v171;
        goto LABEL_303;
      }

LABEL_302:
      v184 = -1.0;
    }

    else
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v188 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v188, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[CA metrics] fwdPropEndptError.size != consumedTripLocation.size", buf, 2u);
      }

      v189 = sub_19B87DD40();
      if ((*(v189 + 160) & 0x80000000) == 0 || (*(v189 + 164) & 0x80000000) == 0 || (*(v189 + 168) & 0x80000000) == 0 || (v184 = -1.0, *(v189 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
        }

        LOWORD(v309) = 0;
        v190 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLTrajectorySmoother::computeReconstructedRouteMetrics(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, CLPedestrianRTSSmoother::RTSModelMetrics, double &, double &, double &)", "CoreLocation: %s\n", v190);
        if (v190 != buf)
        {
          free(v190);
        }

        goto LABEL_302;
      }
    }
  }

LABEL_303:
  if (*&v313[32])
  {
    __dst = *&v313[32];
    operator delete(*&v313[32]);
  }

  v191 = *(a1 + 568);
  v192 = *(a1 + 576);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  if (v191 != v192)
  {
    operator new();
  }

  v297 = v184;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v197 = 0.0;
  v198 = 0.0;
  v305 = 0.0;
  v308 = 0.0;
  v199 = 0.0;
  while (v194 < [a2 count])
  {
    v200 = [a2 objectAtIndexedSubscript:v194];
    v201 = v200;
    v202 = *&buf[8];
    if (*&buf[8])
    {
      v203 = &buf[8];
      do
      {
        v204 = *(v202 + 32);
        v80 = v204 >= v194;
        v205 = v204 < v194;
        if (v80)
        {
          v203 = v202;
        }

        v202 = *(v202 + 8 * v205);
      }

      while (v202);
      if (v203 != &buf[8] && v194 >= *(v203 + 4))
      {
        if (v196)
        {
          [objc_msgSend(v200 "timestamp")];
          v305 = v305 + v206;
          v207 = v308;
          if (v206 > v308)
          {
            v207 = v206;
          }

          v308 = v207;
          if (v206 > 20.0)
          {
            ++v193;
          }
        }

        [v201 horizontalAccuracy];
        v197 = v197 + v208;
        v196 = v201;
      }
    }

    if (v195)
    {
      [objc_msgSend(v201 "timestamp")];
      v199 = v199 + v209;
    }

    [v201 horizontalAccuracy];
    v198 = v198 + v210;
    ++v194;
    v195 = v201;
  }

  v292 = v197;
  __src = v174;
  contexta = v169;
  v289 = *(a1 + 568);
  v290 = *(a1 + 576);
  v288 = [a2 count];
  v211 = [a2 count];
  sub_19B9D8CB0(*&buf[8]);
  v287 = sub_19B8D9230(a3);
  v212 = 0;
  v213 = 0;
  if ([a3 count])
  {
    v214 = 0;
    v215 = 0;
    v216 = 1.79769313e308;
    v217 = 2.22507386e-308;
    v218 = 0.0;
    v219 = 0.0;
    v220 = 0.0;
    do
    {
      v221 = [a3 objectAtIndexedSubscript:v214];
      [objc_msgSend(v221 "deltaPosition_m")];
      v223 = v222;
      [objc_msgSend(v221 "deltaPosition_m")];
      v224 = v223;
      *&v225 = v225;
      *buf = v224;
      *&buf[4] = LODWORD(v225);
      [objc_msgSend(v221 "deltaPosition_m")];
      v218 = v218 + v226;
      if (v218 > v217)
      {
        v217 = v218;
      }

      if (v218 < v216)
      {
        v216 = v218;
      }

      if (v214)
      {
        v227 = [a3 objectAtIndexedSubscript:v214 - 1];
        v228 = [v227 staticFlag] == 1;
        [objc_msgSend(v221 "cfAbsTimestamp")];
        v230 = v219 + v229;
        v231 = v220 + v229;
        if (v228)
        {
          v219 = v230;
        }

        else
        {
          v220 = v231;
        }

        if (v214 >= 7)
        {
          v232 = [a3 objectAtIndexedSubscript:v214 - 6];
          [objc_msgSend(v232 "deltaPosition_m")];
          v234 = v233;
          [objc_msgSend(v232 "deltaPosition_m")];
          v235 = v234;
          *&v236 = v236;
          *v310 = v235;
          *&v310[4] = LODWORD(v236);
          sub_19B8D7F58(v310, buf);
          v238 = fabs(v237);
          v239 = !v215;
          v215 = v238 > 1.30899693;
          v240 = v215 & v239;
          if (v238 > 2.44346093)
          {
            v241 = v240;
          }

          else
          {
            v241 = 0;
          }

          v212 += v241;
          v213 += v240;
        }
      }

      ++v214;
    }

    while (v214 < [a3 count]);
    v242 = v217 - v216;
  }

  else
  {
    v220 = 0.0;
    v242 = -1.79769313e308;
    v219 = 0.0;
  }

  v243 = (v290 - v289) >> 3;
  v244 = v287 / contexta;
  if (contexta <= 0.0)
  {
    v244 = -1.0;
  }

  *&buf[8] = 3221225472;
  *buf = MEMORY[0x1E69E9820];
  *&buf[16] = sub_19B9D7518;
  *&v317 = &unk_1E753E910;
  *(&v317 + 1) = a1;
  v332 = v213;
  v333 = v212;
  v334 = v193;
  v318 = v301 / 60.0;
  v319 = contexta;
  v320 = v287;
  v321 = v244;
  v322 = v219 / (v220 + v219);
  v323 = a1 + 472;
  v324 = v292 / v243;
  v325 = v198 / v288;
  v326 = v305 / (v243 - 1);
  v327 = v308;
  v328 = v199 / (v211 - 1);
  v329 = v242;
  v330 = __src;
  v331 = v297;
  v335 = v299;
  AnalyticsSendEventLazy();
  v20 = 1;
LABEL_347:
  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v245 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = v20;
    _os_log_impl(&dword_19B873000, v245, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Completed, returned %{public}u.", buf, 8u);
  }

  v246 = sub_19B87DD40();
  if (*(v246 + 160) > 1 || *(v246 + 164) > 1 || *(v246 + 168) > 1 || *(v246 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v313 = 67240192;
    *&v313[4] = v20;
    v247 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v247);
    if (v247 != buf)
    {
      free(v247);
    }
  }

LABEL_31:
  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_19B9D7088(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 600);
  v6 = *(a1 + 592);
  v7 = v5 - v6;
  v8 = (v5 - v6) >> 3;
  if (v8 > 1)
  {
    v17 = (a1 + 568);
    v18 = *(a1 + 584);
    v19 = *(a1 + 568);
    if (v18 - v19 < v7)
    {
      if (v19)
      {
        *(a1 + 576) = v19;
        operator delete(v19);
        v18 = 0;
        *v17 = 0;
        *(a1 + 576) = 0;
        *(a1 + 584) = 0;
      }

      if (!(v8 >> 61))
      {
        v20 = v18 >> 2;
        if (v18 >> 2 <= v8)
        {
          v20 = (v5 - v6) >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (!(v21 >> 61))
        {
          sub_19B8D9954(a1 + 568, v21);
        }
      }

      sub_19B8B8A40();
    }

    v22 = *(a1 + 576);
    v23 = v22 - v19;
    if (v22 - v19 >= v7)
    {
      if (v5 != v6)
      {
        memmove(v19, v6, v5 - v6);
      }

      v26 = &v19[v7];
    }

    else
    {
      if (v22 != v19)
      {
        memmove(v19, v6, v22 - v19);
        v22 = *(a1 + 576);
      }

      v24 = &v6[v23];
      v25 = v5 - &v6[v23];
      if (v25)
      {
        memmove(v22, v24, v25);
      }

      v26 = &v22[v25];
    }

    *(a1 + 576) = v26;
    *a1 = 257;
    v27 = [a2 objectsAtIndexes:sub_19B8D90D4((a1 + 568))];
    v28 = *MEMORY[0x1E69E9840];

    return sub_19B949838(a1, v27, a3, a4);
  }

  else
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v9 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v10 = (*(a1 + 600) - *(a1 + 592)) >> 3;
      *buf = 134217984;
      v32 = v10;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runRTSOnly] RTS is called with insufficient locations samples, %{publuc}zu.", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v30 = (*(a1 + 600) - *(a1 + 592)) >> 3;
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runRTSOnly(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

void sub_19B9D742C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[72];
  v5 = v3[73];
  if (v4 >= v5)
  {
    v7 = v3[71];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_19B8B8A40();
    }

    v11 = v5 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_19B8D9954((v3 + 71), v13);
    }

    v14 = (v4 - v7) >> 3;
    v15 = (8 * v9);
    v16 = (8 * v9 - 8 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v3[71];
    v3[71] = v16;
    v3[72] = v6;
    v3[73] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v4 = a2;
    v6 = v4 + 8;
  }

  v3[72] = v6;
}

uint64_t sub_19B9D7518(uint64_t a1)
{
  v17[21] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v16[0] = @"Timespan";
  v17[0] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v16[1] = @"NumberOfTurns";
  v17[1] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 152)];
  v16[2] = @"NumberOfSuddenDirectionChanges";
  v17[2] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 156)];
  v16[3] = @"NumberOfSegments";
  v17[3] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 160)];
  v17[4] = &unk_1F0E8CD78;
  v16[4] = @"NumberOfRoutes";
  v16[5] = @"PTSPathLength";
  if (*(a1 + 48) <= 0.0)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v17[5] = v3;
  v16[6] = @"IOPathLength";
  v17[6] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v16[7] = @"IOPathLengthOverPTSPathLength";
  if (*(a1 + 64) <= 0.0)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v17[7] = v4;
  v16[8] = @"PercentTimeIOStatic";
  v17[8] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 72)];
  v16[9] = @"AvgFrameAlignmentConsistency";
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 80);
  v7 = *v6;
  v8 = 0.0;
  if (*v6)
  {
    v8 = vaddvq_f64(vmulq_f64(*(v6 + 8), *(v6 + 8))) / (v7 * v7);
  }

  v9 = log(fmax(v8, 0.00000011920929));
  if (v9 >= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = -v9;
  }

  v11 = sqrt(v10);
  if (v7 < 2)
  {
    v11 = 0.0;
  }

  v17[9] = [v5 numberWithDouble:v11];
  v16[10] = @"MaxFrameAlignmentConsistency";
  v17[10] = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 80) + 24)];
  v16[11] = @"AvgConsumedGNSSUncertainty";
  v17[11] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 88)];
  v16[12] = @"AvgReceivedGNSSUncertainty";
  v17[12] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 96)];
  v16[13] = @"AvgPeriodConsumedGNSS";
  v17[13] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 104)];
  v16[14] = @"MaxPeriodConsumedGNSS";
  v17[14] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 112)];
  v16[15] = @"AvgPeriodReceivedGNSS";
  v17[15] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 120)];
  v16[16] = @"DeltaElevation";
  v17[16] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 128)];
  v16[17] = @"Straightness";
  if (*(a1 + 136) <= 0.0)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v17[17] = v12;
  v16[18] = @"AvgForwardPropEndpointDistanceError";
  if (*(a1 + 144) <= 0.0)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v17[18] = v13;
  v16[19] = @"RansacNumberOfIterations";
  v17[19] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v2 + 624)];
  v16[20] = @"DidUseRansac";
  v17[20] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 164)];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:21];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B9D7898()
{
  result = os_log_create("com.apple.locationd.Motion", "PedTrajectorySmoothing");
  qword_1EAFE4760 = result;
  return result;
}

void sub_19B9D78C8(void **a1, id *a2, uint64_t a3, char a4)
{
LABEL_1:
  v173 = a2 - 2;
  v170 = a2 - 6;
  v171 = a2 - 4;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 4;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v101 = *(a2 - 2);
        v100 = a2 - 2;
        v102 = [v101 count];
        if (v102 <= [*a1 count])
        {
          return;
        }

LABEL_109:
        v195 = *a1;
        *a1 = *v100;
        v109 = v195;
        goto LABEL_110;
      }

      goto LABEL_9;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {

      sub_19B9D8730(a1, a1 + 2, a1 + 4, v173);
      return;
    }

    if (v8 == 5)
    {
      *&v90 = sub_19B9D8730(a1, a1 + 2, a1 + 4, a1 + 6).n128_u64[0];
      v92 = *(a2 - 2);
      v91 = a2 - 2;
      v93 = [v92 count];
      if (v93 > [a1[6] count])
      {
        v94 = *(a1 + 3);
        *(a1 + 3) = *v91;
        *v91 = v94;
        v95 = [a1[6] count];
        if (v95 > [a1[4] count])
        {
          v96 = *(a1 + 2);
          *(a1 + 2) = *(a1 + 3);
          *(a1 + 3) = v96;
          v97 = [a1[4] count];
          if (v97 > [a1[2] count])
          {
            v98 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v98;
            v99 = [a1[2] count];
            if (v99 > [*a1 count])
            {
              v194 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v194;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v110 = a1 + 2;
      v111 = a1 == a2 || v110 == a2;
      v112 = v111;
      if (a4)
      {
        if ((v112 & 1) == 0)
        {
          v113 = 0;
          v114 = a1;
          do
          {
            v115 = v110;
            v116 = [v114[2] count];
            if (v116 > [*v114 count])
            {
              v117 = *v115;
              v118 = v114[3];
              v119 = v113;
              while (1)
              {
                *(a1 + v119 + 16) = *(a1 + v119);
                if (!v119)
                {
                  break;
                }

                v120 = [v117 count];
                v121 = [*(a1 + v119 - 16) count];
                v119 -= 16;
                if (v120 <= v121)
                {
                  v122 = (a1 + v119 + 16);
                  goto LABEL_129;
                }
              }

              v122 = a1;
LABEL_129:
              *v122 = v117;
              v122[1] = v118;
            }

            v110 = v115 + 2;
            v113 += 16;
            v114 = v115;
          }

          while (v115 + 2 != a2);
        }
      }

      else if ((v112 & 1) == 0)
      {
        do
        {
          v160 = v110;
          v161 = [a1[2] count];
          if (v161 > [*a1 count])
          {
            v162 = *v160;
            v163 = a1[3];
            v164 = v160;
            do
            {
              *v164 = *(v164 - 1);
              v166 = [v162 count];
              v167 = [*(v164 - 4) count];
              v165 = v164 - 2;
              v164 -= 2;
            }

            while (v166 > v167);
            *v165 = v162;
            v165[1] = v163;
          }

          v110 = v160 + 2;
          a1 = v160;
        }

        while (v160 + 2 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v123 = v9 >> 1;
        v124 = v9 >> 1;
        v169 = a2;
        do
        {
          v125 = v124;
          if (v123 >= v124)
          {
            v174 = v124;
            v126 = (2 * v124) | 1;
            v127 = &a1[2 * v126];
            v128 = 2 * v124 + 2;
            if (v128 < v8)
            {
              v129 = [*v127 count];
              if (v129 > [v127[2] count])
              {
                v127 += 2;
                v126 = v128;
              }
            }

            v125 = v174;
            v130 = &a1[2 * v174];
            v131 = [*v127 count];
            if (v131 <= [*v130 count])
            {
              v132 = *v130;
              v133 = v130[1];
              do
              {
                v134 = v130;
                v130 = v127;
                *v134 = *v127;
                if (v123 < v126)
                {
                  break;
                }

                v135 = (2 * v126) | 1;
                v127 = &a1[2 * v135];
                v136 = 2 * v126 + 2;
                if (v136 < v8)
                {
                  v137 = [*v127 count];
                  if (v137 > [v127[2] count])
                  {
                    v127 += 2;
                    v135 = v136;
                  }
                }

                v138 = [*v127 count];
                v126 = v135;
              }

              while (v138 <= [v132 count]);
              *v130 = v132;
              v130[1] = v133;
              a2 = v169;
              v125 = v174;
            }
          }

          v124 = v125 - 1;
        }

        while (v125);
        do
        {
          v139 = 0;
          v196 = *a1;
          v140 = a1;
          do
          {
            v141 = &v140[2 * v139];
            v142 = v141 + 2;
            v143 = (2 * v139) | 1;
            v144 = 2 * v139 + 2;
            if (v144 >= v8)
            {
              v139 = (2 * v139) | 1;
            }

            else
            {
              v145 = [v141[2] count];
              v147 = v141[4];
              v146 = v141 + 4;
              if (v145 <= [v147 count])
              {
                v139 = v143;
              }

              else
              {
                v142 = v146;
                v139 = v144;
              }
            }

            *v140 = *v142;
            v140 = v142;
          }

          while (v139 <= ((v8 - 2) >> 1));
          a2 -= 2;
          if (v142 == a2)
          {
            *v142 = v196;
          }

          else
          {
            *v142 = *a2;
            *a2 = v196;
            v148 = (v142 - a1 + 16) >> 4;
            v149 = v148 < 2;
            v150 = v148 - 2;
            if (!v149)
            {
              v151 = v150 >> 1;
              v152 = &a1[2 * (v150 >> 1)];
              v153 = [*v152 count];
              if (v153 > [*v142 count])
              {
                v154 = *v142;
                v155 = v142[1];
                do
                {
                  v156 = v142;
                  v142 = v152;
                  *v156 = *v152;
                  if (!v151)
                  {
                    break;
                  }

                  v151 = (v151 - 1) >> 1;
                  v152 = &a1[2 * v151];
                  v157 = [*v152 count];
                }

                while (v157 > [v154 count]);
                *v142 = v154;
                v142[1] = v155;
              }
            }
          }

          v149 = v8-- <= 2;
        }

        while (!v149);
      }

      return;
    }

    v10 = a2;
    v11 = &a1[2 * (v8 >> 1)];
    if (v8 >= 0x81)
    {
      v12 = [*v11 count];
      v13 = [*a1 count];
      v14 = [*v173 count];
      v15 = [*v11 count];
      if (v12 <= v13)
      {
        if (v14 > v15)
        {
          v177 = *v11;
          *v11 = *v173;
          *v173 = v177;
          v22 = [*v11 count];
          if (v22 > [*a1 count])
          {
            v178 = *a1;
            *a1 = *v11;
            *v11 = v178;
          }
        }
      }

      else
      {
        if (v14 > v15)
        {
          v175 = *a1;
          v16 = v173;
          *a1 = *v173;
          goto LABEL_26;
        }

        v181 = *a1;
        *a1 = *v11;
        *v11 = v181;
        v24 = [*v173 count];
        if (v24 > [*v11 count])
        {
          v175 = *v11;
          v16 = v173;
          *v11 = *v173;
LABEL_26:
          *v16 = v175;
        }
      }

      v25 = v11 - 2;
      v26 = [*(v11 - 2) count];
      v27 = a1 + 2;
      v28 = [a1[2] count];
      v29 = [*v171 count];
      v30 = [*(v11 - 2) count];
      if (v26 <= v28)
      {
        if (v29 > v30)
        {
          v182 = *v25;
          *v25 = *v171;
          *v171 = v182;
          v33 = [*v25 count];
          if (v33 > [*v27 count])
          {
            v34 = *v27;
            *v27 = *v25;
            *v25 = v34;
          }
        }
      }

      else
      {
        if (v29 > v30)
        {
          v31 = *v27;
          v32 = v171;
          *v27 = *v171;
          goto LABEL_38;
        }

        v36 = *v27;
        *v27 = *v25;
        *v25 = v36;
        v37 = [*v171 count];
        if (v37 > [*v25 count])
        {
          v184 = *v25;
          v32 = v171;
          *v25 = *v171;
          v31 = v184;
LABEL_38:
          *v32 = v31;
        }
      }

      v38 = v11 + 2;
      v39 = [v11[2] count];
      v40 = a1 + 4;
      v41 = [a1[4] count];
      v42 = [*v170 count];
      v43 = [v11[2] count];
      if (v39 <= v41)
      {
        if (v42 > v43)
        {
          v185 = *v38;
          *v38 = *v170;
          *v170 = v185;
          v46 = [*v38 count];
          if (v46 > [*v40 count])
          {
            v47 = *v40;
            *v40 = *v38;
            *v38 = v47;
          }
        }
      }

      else
      {
        if (v42 > v43)
        {
          v44 = *v40;
          v45 = v170;
          *v40 = *v170;
          goto LABEL_47;
        }

        v48 = *v40;
        *v40 = *v38;
        *v38 = v48;
        v49 = [*v170 count];
        if (v49 > [*v38 count])
        {
          v186 = *v38;
          v45 = v170;
          *v38 = *v170;
          v44 = v186;
LABEL_47:
          *v45 = v44;
        }
      }

      v50 = [*v11 count];
      v51 = [*v25 count];
      v52 = [*v38 count];
      v53 = [*v11 count];
      if (v50 <= v51)
      {
        if (v52 > v53)
        {
          v188 = *v11;
          *v11 = *v38;
          *v38 = v188;
          v54 = [*v11 count];
          if (v54 > [*v25 count])
          {
            v189 = *v25;
            *v25 = *v11;
            *v11 = v189;
          }
        }
      }

      else
      {
        if (v52 > v53)
        {
          v187 = *v25;
          *v25 = *v38;
          goto LABEL_56;
        }

        v190 = *v25;
        *v25 = *v11;
        *v11 = v190;
        v55 = [*v38 count];
        if (v55 > [*v11 count])
        {
          v187 = *v11;
          *v11 = *v38;
LABEL_56:
          *v38 = v187;
        }
      }

      v191 = *a1;
      *a1 = *v11;
      *v11 = v191;
      goto LABEL_58;
    }

    v17 = [*a1 count];
    v18 = [*v11 count];
    v19 = [*v173 count];
    v20 = [*a1 count];
    if (v17 <= v18)
    {
      if (v19 > v20)
      {
        v179 = *a1;
        *a1 = *v173;
        *v173 = v179;
        v23 = [*a1 count];
        if (v23 > [*v11 count])
        {
          v180 = *v11;
          *v11 = *a1;
          *a1 = v180;
        }
      }

      goto LABEL_58;
    }

    if (v19 <= v20)
    {
      v183 = *v11;
      *v11 = *a1;
      *a1 = v183;
      v35 = [*v173 count];
      if (v35 <= [*a1 count])
      {
        goto LABEL_58;
      }

      v176 = *a1;
      v21 = v173;
      *a1 = *v173;
    }

    else
    {
      v176 = *v11;
      v21 = v173;
      *v11 = *v173;
    }

    *v21 = v176;
LABEL_58:
    v56 = a3 - 1;
    if ((a4 & 1) != 0 || (v57 = [*(a1 - 2) count], v57 > objc_msgSend(*a1, "count")))
    {
      v58 = v56;
      v59 = 0;
      v60 = *a1;
      v61 = a1[1];
      a2 = v10;
      do
      {
        v62 = [a1[v59 + 2] count];
        v59 += 2;
      }

      while (v62 > [v60 count]);
      v63 = &a1[v59];
      v64 = v10;
      v111 = v59 == 2;
      a3 = v58;
      if (v111)
      {
        v64 = v10;
        do
        {
          if (v63 >= v64)
          {
            break;
          }

          v67 = *(v64 - 2);
          v64 -= 2;
          v68 = [v67 count];
        }

        while (v68 <= [v60 count]);
      }

      else
      {
        do
        {
          v65 = *(v64 - 2);
          v64 -= 2;
          v66 = [v65 count];
        }

        while (v66 <= [v60 count]);
      }

      v7 = v63;
      if (v63 < v64)
      {
        v69 = v64;
        do
        {
          v192 = *v7;
          *v7 = *v69;
          *v69 = v192;
          do
          {
            v70 = *(v7 + 16);
            v7 += 16;
            v71 = [v70 count];
          }

          while (v71 > [v60 count]);
          do
          {
            v72 = *(v69 - 2);
            v69 -= 2;
            v73 = [v72 count];
          }

          while (v73 <= [v60 count]);
        }

        while (v7 < v69);
      }

      if ((v7 - 16) != a1)
      {
        *a1 = *(v7 - 16);
      }

      *(v7 - 16) = v60;
      *(v7 - 8) = v61;
      if (v63 < v64)
      {
        goto LABEL_79;
      }

      v74 = sub_19B9D88D0(a1, (v7 - 16));
      if (sub_19B9D88D0(v7, v10))
      {
        a2 = (v7 - 16);
        if (!v74)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v74)
      {
LABEL_79:
        sub_19B9D78C8(a1, v7 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v75 = v56;
      v76 = *a1;
      v77 = a1[1];
      v78 = [*a1 count];
      a2 = v10;
      if (v78 <= [*v173 count])
      {
        v81 = (a1 + 2);
        do
        {
          v7 = v81;
          if (v81 >= v10)
          {
            break;
          }

          v82 = [v76 count];
          v81 += 16;
        }

        while (v82 <= [*v7 count]);
      }

      else
      {
        v7 = a1;
        do
        {
          v79 = [v76 count];
          v80 = *(v7 + 16);
          v7 += 16;
        }

        while (v79 <= [v80 count]);
      }

      v83 = v10;
      if (v7 < v10)
      {
        v83 = v10;
        do
        {
          v84 = [v76 count];
          v85 = *(v83 - 2);
          v83 -= 2;
        }

        while (v84 > [v85 count]);
      }

      a3 = v75;
      while (v7 < v83)
      {
        v193 = *v7;
        *v7 = *v83;
        *v83 = v193;
        do
        {
          v86 = [v76 count];
          v87 = *(v7 + 16);
          v7 += 16;
        }

        while (v86 <= [v87 count]);
        do
        {
          v88 = [v76 count];
          v89 = *(v83 - 2);
          v83 -= 2;
        }

        while (v88 > [v89 count]);
      }

      if ((v7 - 16) != a1)
      {
        *a1 = *(v7 - 16);
      }

      a4 = 0;
      *(v7 - 16) = v76;
      *(v7 - 8) = v77;
    }
  }

  v103 = a1 + 2;
  v104 = [a1[2] count];
  v105 = [*a1 count];
  v106 = *(a2 - 2);
  v100 = a2 - 2;
  v107 = [v106 count];
  v108 = [a1[2] count];
  if (v104 > v105)
  {
    if (v107 > v108)
    {
      goto LABEL_109;
    }

    v198 = *a1;
    *a1 = *v103;
    *v103 = v198;
    v168 = [*v100 count];
    if (v168 <= [a1[2] count])
    {
      return;
    }

    v109 = *v103;
    *v103 = *v100;
LABEL_110:
    *v100 = v109;
    return;
  }

  if (v107 > v108)
  {
    v158 = *v103;
    *v103 = *v100;
    *v100 = v158;
    v159 = [a1[2] count];
    if (v159 > [*a1 count])
    {
      v197 = *a1;
      *a1 = *v103;
      *v103 = v197;
    }
  }
}

__n128 sub_19B9D8730(id *a1, id *a2, id *a3, id *a4)
{
  v8 = [*a2 count];
  v9 = [*a1 count];
  v10 = [*a3 count];
  v11 = [*a2 count];
  if (v8 <= v9)
  {
    if (v10 > v11)
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = [*a2 count];
      if (v14 > [*a1 count])
      {
        v15 = *a1;
        *a1 = *a2;
        *a2 = v15;
      }
    }
  }

  else
  {
    if (v10 > v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v16 = *a1;
    *a1 = *a2;
    *a2 = v16;
    v17 = [*a3 count];
    if (v17 > [*a2 count])
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  v18 = [*a4 count];
  if (v18 > [*a3 count])
  {
    v20 = *a3;
    *a3 = *a4;
    *a4 = v20;
    v21 = [*a3 count];
    if (v21 > [*a2 count])
    {
      v22 = *a2;
      *a2 = *a3;
      *a3 = v22;
      v23 = [*a2 count];
      if (v23 > [*a1 count])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL sub_19B9D88D0(id *a1, id *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v18 = a1 + 2;
        v19 = [a1[2] count];
        v20 = [*a1 count];
        v21 = *(a2 - 2);
        v5 = a2 - 2;
        v22 = [v21 count];
        v23 = [*v18 count];
        if (v19 <= v20)
        {
          if (v22 > v23)
          {
            v32 = *v18;
            *v18 = *v5;
            *v5 = v32;
            v33 = [a1[2] count];
            if (v33 > [*a1 count])
            {
              v34 = *a1;
              *a1 = *v18;
              *v18 = v34;
            }
          }

          return 1;
        }

        if (v22 <= v23)
        {
          v38 = *a1;
          *a1 = *v18;
          *v18 = v38;
          v39 = [*v5 count];
          if (v39 <= [a1[2] count])
          {
            return 1;
          }

          v24 = *v18;
          *v18 = *v5;
          goto LABEL_17;
        }

LABEL_16:
        v24 = *a1;
        *a1 = *v5;
LABEL_17:
        *v5 = v24;
        return 1;
      case 4:
        sub_19B9D8730(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        *&v7 = sub_19B9D8730(a1, a1 + 2, a1 + 4, a1 + 6).n128_u64[0];
        v9 = *(a2 - 2);
        v8 = a2 - 2;
        v10 = [v9 count];
        if (v10 > [a1[6] count])
        {
          v11 = *(a1 + 3);
          *(a1 + 3) = *v8;
          *v8 = v11;
          v12 = [a1[6] count];
          if (v12 > [a1[4] count])
          {
            v13 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v13;
            v14 = [a1[4] count];
            if (v14 > [a1[2] count])
            {
              v15 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v15;
              v16 = [a1[2] count];
              if (v16 > [*a1 count])
              {
                v17 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v17;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 2;
      v6 = [*(a2 - 2) count];
      if (v6 <= [*a1 count])
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v25 = a1 + 2;
  v26 = [a1[2] count];
  v27 = [*a1 count];
  v28 = a1 + 4;
  v29 = [a1[4] count];
  v30 = [*v25 count];
  if (v26 <= v27)
  {
    if (v29 > v30)
    {
      v35 = *v25;
      *v25 = *v28;
      *v28 = v35;
      v36 = [a1[2] count];
      if (v36 > [*a1 count])
      {
        v37 = *a1;
        *a1 = *v25;
        *v25 = v37;
      }
    }
  }

  else
  {
    if (v29 <= v30)
    {
      v40 = *a1;
      *a1 = *v25;
      *v25 = v40;
      v41 = [a1[4] count];
      if (v41 <= [a1[2] count])
      {
        goto LABEL_33;
      }

      v31 = *v25;
      *v25 = *v28;
    }

    else
    {
      v31 = *a1;
      *a1 = *v28;
    }

    *v28 = v31;
  }

LABEL_33:
  v42 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v43 = 0;
  v44 = 0;
  while (1)
  {
    v45 = [*v42 count];
    if (v45 > [*v28 count])
    {
      v46 = *v42;
      v47 = v42[1];
      v48 = v43;
      while (1)
      {
        *(a1 + v48 + 48) = *(a1 + v48 + 32);
        if (v48 == -32)
        {
          break;
        }

        v49 = [v46 count];
        v50 = [*(a1 + v48 + 16) count];
        v48 -= 16;
        if (v49 <= v50)
        {
          v51 = (a1 + v48 + 48);
          goto LABEL_41;
        }
      }

      v51 = a1;
LABEL_41:
      *v51 = v46;
      v51[1] = v47;
      if (++v44 == 8)
      {
        return v42 + 2 == a2;
      }
    }

    v28 = v42;
    v43 += 16;
    v42 += 2;
    if (v42 == a2)
    {
      return 1;
    }
  }
}

void sub_19B9D8CB0(void *a1)
{
  if (a1)
  {
    sub_19B9D8CB0(*a1);
    sub_19B9D8CB0(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_19B9D8CFC(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_19B9DAD28(uint64_t a1)
{
  [*(a1 + 32) setIdentityToken:*(a1 + 40)];
  [*(a1 + 32) setStorageToken:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 manageConnection];
}

void sub_19B9DB25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_19B8750F8(v29);
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B9DB314(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [Weak handleResponseMessage:&v5];
    if (v6)
    {
      sub_19B8750F8(v6);
    }
  }
}

void sub_19B9DB374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9DB5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9DB954(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(result + 40))
  {
    v1 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 32) UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v6[0] = 2082;
      *&v6[1] = "";
      v6[5] = 2082;
      v7 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ficConnectionManager destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_19B943C68();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9DBAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9DBD1C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47A8 != -1)
  {
    dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
  }

  v2 = qword_1EAFE47B0;
  if (os_log_type_enabled(qword_1EAFE47B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLHarvester invalidation handler", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47A8 != -1)
    {
      dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLHarvester connect]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  *(*(a1 + 32) + 8) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B9DBEE0()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47A8 != -1)
  {
    dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
  }

  v0 = qword_1EAFE47B0;
  if (os_log_type_enabled(qword_1EAFE47B0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "CLHarvester interruption handler", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47A8 != -1)
    {
      dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLHarvester connect]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_19B9DC1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9DC1F4()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47A8 != -1)
  {
    dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
  }

  v0 = qword_1EAFE47B0;
  if (os_log_type_enabled(qword_1EAFE47B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEFAULT, "CLHarvester synchronous remote proxy invalidated", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47A8 != -1)
    {
      dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLHarvester currentStateDictionary]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

id sub_19B9DC398(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47A8 != -1)
  {
    dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
  }

  v4 = qword_1EAFE47B0;
  if (os_log_type_enabled(qword_1EAFE47B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLHarvester fetchState reply block called", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47A8 != -1)
    {
      dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLHarvester currentStateDictionary]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B9DC55C()
{
  result = os_log_create("com.apple.locationd.Core", "Harvester");
  qword_1EAFE47B0 = result;
  return result;
}

void sub_19B9DD078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_autoreleasePoolPush();
  if ([*(a1 + 2600) allowNetworkTileLoad])
  {
    if (sub_19B9DEDA8(a1))
    {
      [*(a1 + 2600) setAllowNetworkTileLoad:0];
    }
  }

  v9 = *a3;
  v10 = *a4;
  [MEMORY[0x1E695DF70] array];
  v11 = *a5;
  operator new();
}

void sub_19B9DDA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  sub_19B917010(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9DDB04(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "sections")];
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addObject:a2];
  }

  return result;
}

void sub_19B9DDB5C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = a4;
  v4 = *(a3 + 56);
  v5 = *(a3 + 64);
  v6 = v4;
  sub_19B9DD078(a1, a2, &v6, &v5, &v7);
}

os_log_t sub_19B9DDB94()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B9DDBE0(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v22 = [a2 code];
      v23 = 2114;
      v24 = [a2 domain];
      v25 = 2113;
      v26 = [a2 localizedDescription];
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#Warning CLMM,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
      }

      [a2 code];
      [a2 domain];
      [a2 localizedDescription];
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  if (*(*(a1[5] + 8) + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1[6] + 8) + 24);
      v9 = *(*(a1[4] + 8) + 24);
      *buf = 134349312;
      v22 = v8;
      v23 = 1026;
      LODWORD(v24) = v9;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,releasing dispatch_group,%{public}lu,errorReported,%{public}d", buf, 0x12u);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
      }

      v19 = *(*(a1[6] + 8) + 24);
      v20 = *(*(a1[4] + 8) + 24);
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    dispatch_group_leave(*(*(a1[5] + 8) + 40));
  }

  if (*(*(a1[6] + 8) + 24))
  {
    if (*(*(a1[5] + 8) + 40))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
      }

      v12 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,clearing dispatchGroup when time-out has happened", buf, 2u);
      }

      v13 = sub_19B87DD40();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
        }

        v14 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      *(*(a1[5] + 8) + 40) = 0;
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
      }

      v15 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMM,dispatchGroup is unexpectedly nil", buf, 2u);
      }

      v16 = sub_19B87DD40();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
        }

        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

__n128 sub_19B9DE33C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6E818;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B9DE3A0(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6E878))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B9DE3EC(uint64_t result)
{
  *result = &unk_1F0E6E898;
  *(result + 8) = 0xBFF0000000000000;
  *(result + 36) = 0;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 31) = 0;
  *(result + 64) = 0x415854A640000000;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0x3FF0000000000000;
  v1 = 5489;
  v2 = 1;
  v3 = 25;
  *(result + 48) = xmmword_19BA8C810;
  do
  {
    v4 = 1812433253 * (v1 ^ (v1 >> 30));
    v1 = v4 + v2;
    *(result + 4 * v3) = v3 + v4 - 24;
    ++v2;
    ++v3;
  }

  while (v3 != 648);
  v5 = 0;
  *(result + 2624) = 0u;
  *(result + 2600) = 0u;
  *(result + 2616) = result + 2624;
  *(result + 2640) = 0xBFF0000000000000;
  *(result + 96) = 0;
  v6 = 1;
  for (i = 25; i != 648; ++i)
  {
    v8 = 1812433253 * (v5 ^ (v5 >> 30));
    v5 = v8 + v6;
    *(result + 4 * i) = i + v8 - 24;
    ++v6;
  }

  *(result + 2592) = 0;
  return result;
}

uint64_t sub_19B9DE4D8(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E6E898;
  if ((*(a1 + 33) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLMM,CLGCZ,destroy geocodec malloc zone,~CLGeoMapFeatureAccessGeometry()", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual CLMapGeometry::~CLMapGeometry()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      sub_19B9E008C(v5);
    }

    v6 = *(a1 + 2600);
    if (v6)
    {
      v6 = [v6 clearAllTiles];
    }

    v7 = *(a1 + 2608);
    if (v7)
    {

      *(a1 + 2608) = 0;
    }

    v8 = *(a1 + 2600);
    if (v8)
    {

      *(a1 + 2600) = 0;
    }

    MEMORY[0x19EAE9260](v6);
  }

  sub_19B9E076C(a1 + 2616, *(a1 + 2624));
  v9 = *(a1 + 24);
  if (v9)
  {
    sub_19B8750F8(v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B9DE704(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

void sub_19B9DE718(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 1;
  v3 = *a2;
  if (*a2)
  {
    *(a1 + 33) = 1;
    *(a1 + 34) = *(v3 + 169);
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 24);
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    if (v5)
    {
      sub_19B8750F8(v5);
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 16);
      v8 = (v7 + 128);
      if (*(v7 + 151) < 0)
      {
        v8 = *v8;
      }

      v9 = *(v7 + 169);
      v10 = *(v7 + 216);
      v11 = *(v7 + 192);
      *buf = 136446978;
      v24 = v8;
      v25 = 1026;
      v26 = v9;
      v27 = 1026;
      v28 = v10;
      v29 = 1026;
      v30 = v11;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "CLMM,%{public}s,referenced maps buffer,xpc,%{public}d,waitForQueryComplete,%{public}d,allowNetworkTileDownload,%{public}d", buf, 0x1Eu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v13 = *(a1 + 16);
      if (*(v13 + 151) < 0)
      {
        v14 = *(v13 + 128);
      }

      v20 = *(v13 + 169);
      v21 = *(v13 + 216);
      v22 = *(v13 + 192);
      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLMapGeometry::initializeWithRoadBufferPointer(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLMM,RoadGeometry pointer provided is nullptr, using maps API in process", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLMapGeometry::initializeWithRoadBufferPointer(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    *(a1 + 33) = 0;
    sub_19B963BBC();
    (*(*a1 + 24))(a1);
  }

  v19 = *MEMORY[0x1E69E9840];
}

double sub_19B9DEB0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*(*a2 + 71) < 0)
  {
    sub_19B874C9C(&__p, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    __p = *(v4 + 48);
  }

  std::string::operator=((a1 + 128), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  *(a1 + 112) = **a2;
  *(a1 + 120) = *(v5 + 20);
  *(a1 + 152) = *(a2 + 2);
  result = *(a2 + 6);
  *(a1 + 168) = result;
  return result;
}

void sub_19B9DEBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9DEBC4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
  }

  v2 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 36);
    v4 = *(a1 + 40);
    *buf = 67240448;
    v11 = v3;
    v12 = 1026;
    v13 = v4;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,MapsAPICallCount,%{public}d,MapsAPIQueryContinuousFailCount,%{public}d", buf, 0xEu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLMapGeometry::logMapsAPICallCount() const", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B9DEDA8(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 33) == 1 && (v2 = a1[2]) != 0)
  {
    v3 = (v2 + 124);
  }

  else
  {
    v3 = (a1 + 5);
  }

  v4 = *v3;
  if (*v3 < 6)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 6);
  if (v5 < 0.0)
  {
    v6 = mach_continuous_time();
    v5 = sub_19B994BF4(v6);
    *(a1 + 6) = v5;
  }

  v7 = mach_continuous_time();
  v8 = vabdd_f64(v5, sub_19B994BF4(v7));
  if (v8 < 60.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v16 = (*(*a1 + 16))(a1);
      v17 = (*(*a1 + 112))(a1);
      v18 = "road";
      *buf = 67240962;
      v23 = v16;
      v24 = 2082;
      if (v17)
      {
        v18 = "building";
      }

      v25 = v18;
      v26 = 1026;
      v27 = v4;
      v28 = 2050;
      v29 = v8;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM,shouldBackOffFromNetworkAccess,1,geometryType,%{public}d,type,%{public}s,failCount,%{public}d,timeSinceLastFail,%{public}.1lf", buf, 0x22u);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      (*(*a1 + 16))(a1);
      (*(*a1 + 112))(a1);
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapGeometry::shouldBackOffFromNetworkAccess()", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    result = 1;
  }

  else
  {
LABEL_9:
    a1[6] = 0xBFF0000000000000;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v9 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v10 = (*(*a1 + 16))(a1);
      if ((*(*a1 + 112))(a1))
      {
        v11 = "building";
      }

      else
      {
        v11 = "road";
      }

      *buf = 67240706;
      v23 = v10;
      v24 = 2082;
      v25 = v11;
      v26 = 1026;
      v27 = v4;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "CLMM,shouldBackOffFromNetworkAccess,0,geometryType,%{public}d,type,%{public}s,failCount,%{public}d", buf, 0x18u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      (*(*a1 + 16))(a1);
      (*(*a1 + 112))(a1);
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapGeometry::shouldBackOffFromNetworkAccess()", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    result = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B9DF37C(uint64_t result, int a2)
{
  v2 = result;
  if (*(result + 33) == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      *(v3 + 192) = a2;
    }
  }

  else
  {
    result = *(result + 2600);
    if (result)
    {
      if (a2)
      {
        v4 = sub_19B9DEDA8(v2) ^ 1;
        result = v2[325];
      }

      else
      {
        v4 = 0;
      }

      return [result setAllowNetworkTileLoad:v4];
    }
  }

  return result;
}

uint64_t sub_19B9DF3F8(uint64_t a1, uint64_t a2, double **a3, char a4, double *a5, int a6)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
LABEL_55:
    result = 0;
    goto LABEL_66;
  }

  v10 = 8 * a6;
  v11 = 0.0;
  do
  {
    v12 = *a5++;
    v11 = v11 + v12;
    v10 -= 8;
  }

  while (v10);
  v14 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v11 / a6;
  if (!v14)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_32;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
LABEL_131:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    goto LABEL_18;
  }

  v16 = (*(v14 + 18) - *(v14 + 17)) >> 4;
  if (v16 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
    {
      goto LABEL_32;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    LOWORD(__y[0]) = 0;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v21);
LABEL_30:
    if (v21 != buf)
    {
      free(v21);
    }

LABEL_32:
    v18 = 0;
    v17 = 0.0;
    goto LABEL_33;
  }

  v17 = 0.0;
  if (v16 == 1)
  {
    v18 = 1;
    goto LABEL_33;
  }

  sub_19B9F5AA8(v14);
  v33 = (*(v14 + 21) - *(v14 + 20)) >> 3;
  if (v33 != v16 - 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v43 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
    }

    v44 = sub_19B87DD40();
    if (*(v44 + 160) <= 1 && *(v44 + 164) <= 1 && *(v44 + 168) <= 1 && !*(v44 + 152))
    {
      goto LABEL_78;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_76;
    }

    goto LABEL_134;
  }

  sub_19B9F5AA8(v14);
  if (v15 >= 0.000001)
  {
    if (v15 >= 0.999999)
    {
      v54 = (*(v14 + 17) + 16 * v33);
      v24 = *v54;
      v17 = v54[1];
      v55 = sub_19B9E09EC((a1 + 56), *(v54 - 2), *(v54 - 1), *v54, v17);
LABEL_98:
      v25 = v55;
      goto LABEL_99;
    }

    v46 = *(v14 + 20);
    v47 = *(v14 + 21);
    if (v46 != v47)
    {
      v48 = 0.0;
      v49 = 2;
      v50 = 24;
      while (1)
      {
        v51 = *v46 / v14[5];
        if (vabdd_f64(v15, v48 + v51) < 0.000001)
        {
          break;
        }

        if (v48 + v51 > v15)
        {
          v67 = (*(v14 + 17) + v50);
          v68 = *(v67 - 2);
          v69 = *v67;
          v70 = v68 + 360.0;
          if (v68 >= 0.0)
          {
            v70 = *(v67 - 2);
          }

          v71 = v69 + 360.0;
          if (v69 >= 0.0)
          {
            v71 = *v67;
          }

          v72 = v71 - v70;
          if (v72 <= 180.0)
          {
            if (v72 < -180.0)
            {
              v72 = v72 + 360.0;
            }
          }

          else
          {
            v72 = v72 + -360.0;
          }

          v77 = *(v67 - 3);
          v78 = *(v67 - 1);
          v75 = (v15 - v48) / v51;
          v76 = fmod(v68 + v72 * v75, 360.0);
          v17 = v76;
          if (v76 <= -180.0)
          {
            v17 = v76 + 360.0;
          }

          else if (v76 > 180.0)
          {
            v17 = v76 + -360.0;
          }

          v38 = v77;
          v35 = v78;
          v24 = v77 + (v78 - v77) * v75;
          buf[0].__r_.__value_.__r.__words[0] = 0;
          __y[0] = 0.0;
          v37 = (a1 + 56);
          v39 = v68;
          v36 = v69;
          goto LABEL_59;
        }

        ++v46;
        v50 += 16;
        ++v49;
        v48 = v48 + v51;
        if (v46 == v47)
        {
          goto LABEL_85;
        }
      }

      if (v49 < v16)
      {
        v56 = (*(v14 + 17) + v50);
        v24 = *(v56 - 1);
        v17 = *v56;
        v57 = *(v56 - 3);
        v58 = *(v56 - 2);
        buf[0].__r_.__value_.__r.__words[0] = 0;
        __y[0] = 0.0;
        sub_19BA0BE88((a1 + 56), buf, __y, &v79, v57, v58, 0.0, v24, v17, 0.0);
        v59 = __y[0];
        v60 = *&buf[0].__r_.__value_.__l.__data_;
        v61 = *(v14 + 17) + v50;
        v62 = *(v61 + 8);
        v63 = *(v61 + 16);
        buf[0].__r_.__value_.__r.__words[0] = 0;
        __y[0] = 0.0;
        sub_19BA0BE88((a1 + 56), buf, __y, &v79, v24, v17, 0.0, v62, v63, 0.0);
        v64 = atan2(v59, v60);
        if (v64 < 0.0)
        {
          v64 = v64 + 6.28318531;
        }

        v65 = v64 * 57.2957795;
        v66 = atan2(__y[0], *&buf[0].__r_.__value_.__l.__data_);
        if (v66 < 0.0)
        {
          v66 = v66 + 6.28318531;
        }

        sub_19B8B646C(v65, v66 * 57.2957795);
        goto LABEL_98;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v73 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_19B873000, v73, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
      }

      v74 = sub_19B87DD40();
      if ((*(v74 + 160) & 0x80000000) != 0 && (*(v74 + 164) & 0x80000000) != 0 && (*(v74 + 168) & 0x80000000) != 0 && !*(v74 + 152))
      {
        goto LABEL_32;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        goto LABEL_131;
      }

LABEL_18:
      LOWORD(__y[0]) = 0;
      v21 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v21);
      goto LABEL_30;
    }

LABEL_85:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v52 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
    }

    v53 = sub_19B87DD40();
    if (*(v53 + 160) <= 1 && *(v53 + 164) <= 1 && *(v53 + 168) <= 1 && !*(v53 + 152))
    {
LABEL_78:
      v18 = 0;
LABEL_33:
      v24 = 0.0;
      v25 = 0.0;
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
LABEL_76:
      LOWORD(__y[0]) = 0;
      v45 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }

      goto LABEL_78;
    }

LABEL_134:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    goto LABEL_76;
  }

  v34 = *(v14 + 17);
  v24 = *v34;
  v17 = v34[1];
  v35 = v34[2];
  v36 = v34[3];
  buf[0].__r_.__value_.__r.__words[0] = 0;
  __y[0] = 0.0;
  v37 = (a1 + 56);
  v38 = v24;
  v39 = v17;
LABEL_59:
  sub_19BA0BE88(v37, buf, __y, &v79, v38, v39, 0.0, v35, v36, 0.0);
  v40 = atan2(__y[0], *&buf[0].__r_.__value_.__l.__data_);
  if (v40 < 0.0)
  {
    v40 = v40 + 6.28318531;
  }

  v25 = v40 * 57.2957795;
LABEL_99:
  v18 = 1;
  if (v13)
  {
LABEL_34:
    sub_19B8750F8(v13);
  }

LABEL_35:
  if ((v18 & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v29 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLMM,interpolateOnRoad,interpolateProjections returned false", buf, 2u);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      LOWORD(__y[0]) = 0;
      v31 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLMapGeometry::interpolateOnRoad(CLMapCrumb &, const CLMapRoadPtr &, BOOL, const double *, int) const", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    goto LABEL_55;
  }

  if ((a4 & 1) == 0)
  {
    v26 = v25 >= 360.0 || v25 < 0.0;
    v27 = v25 + dbl_19BA8D0D0[v25 > 180.0];
    if (!v26)
    {
      v25 = v25 + dbl_19BA8D0D0[v25 > 180.0];
    }
  }

  v28 = *a3;
  if (*(*a3 + 71) < 0)
  {
    sub_19B874C9C(buf, *(v28 + 6), *(v28 + 7));
  }

  else
  {
    buf[0] = *(v28 + 2);
  }

  std::string::operator=((a2 + 128), buf);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  v41 = *a3;
  *(a2 + 112) = **a3;
  *(a2 + 120) = *(v41 + 20);
  *(a2 + 152) = v24;
  *(a2 + 160) = v17;
  *(a2 + 168) = v25;
  *(a2 + 272) = v15;
  result = 1;
LABEL_66:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9E0054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9E008C(uint64_t a1)
{
  v2 = a1 + 248;
  v1 = *(a1 + 248);
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  *(a1 + 224) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_19B9B0C1C(a1 + 240, v1);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  sub_19B9B0C1C(v2 + 16, *(v2 + 24));
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = v2 + 24;
  sub_19B9E076C(v2 + 40, *(v2 + 48));
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = v2 + 48;
  *(v2 + 72) = 0;

  sub_19B8EBC04((v2 + 80));
}

void sub_19B9E0148(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 33))
  {
    goto LABEL_18;
  }

  v2 = *(a1 + 2600);
  if (!v2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "CLMM,provideCacheHint,fGEOMapFeatureAccess is unexpectedly nil", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual void CLMapGeometry::provideCacheHint(double, double, double)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    goto LABEL_18;
  }

  if (![v2 allowNetworkTileLoad])
  {
LABEL_18:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  ++*(a1 + 36);
  v3 = *(a1 + 2600);
  v4 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66B58](v3, sel_preloadRoadTilesNear_radius_completionHandler_);
}

void sub_19B9E0384(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v3 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349571;
      v8 = [a2 code];
      v9 = 2114;
      v10 = [a2 domain];
      v11 = 2113;
      v12 = [a2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "CLMM,Warning,provideCacheHint reported error:%{public}lld (%{public}@) %{private}@", buf, 0x20u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      [a2 code];
      [a2 domain];
      [a2 localizedDescription];
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual void CLMapGeometry::provideCacheHint(double, double, double)_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B9E05C8()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
  }

  v0 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "Base function called for moveOnRouteRoads", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLMapGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19B9E076C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_19B9E076C(a1, *a2);
    sub_19B9E076C(a1, *(a2 + 1));
    v4 = (a2 + 80);
    sub_19B8F0E84(&v4);
    v4 = (a2 + 56);
    sub_19B8F0E84(&v4);
    operator delete(a2);
  }
}

os_log_t sub_19B9E07DC()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B9E0878(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6E970;
  sub_19B8E5918(a1 + 3, a2);
}

void sub_19B9E0928(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B9E097C(uint64_t a1)
{
  v3 = (a1 + 352);
  sub_19B8F0E84(&v3);
  sub_19B9E076C(a1 + 312, *(a1 + 320));
  sub_19B9B0C1C(a1 + 288, *(a1 + 296));
  sub_19B9B0C1C(a1 + 264, *(a1 + 272));
  sub_19B9495D4((a1 + 256));
  return sub_19B9B1004(a1 + 24);
}

double sub_19B9E09EC(float64x2_t *a1, double a2, double a3, double a4, double a5)
{
  v9 = 0.0;
  __y = 0.0;
  sub_19BA0BE88(a1, &v9, &__y, &v7, a2, a3, 0.0, a4, a5, 0.0);
  v5 = atan2(__y, v9);
  if (v5 < 0.0)
  {
    v5 = v5 + 6.28318531;
  }

  return v5 * 57.2957795;
}

BOOL sub_19B9E0A5C(double a1, uint64_t a2, void *a3, int a4, unint64_t a5, void *a6, void *a7)
{
  v234 = *MEMORY[0x1E69E9840];
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v173 = [a6 countByEnumeratingWithState:&v181 objects:v233 count:16];
  if (v173)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0.8;
    if (a5 == 1)
    {
      v11 = 0.0;
    }

    v165 = v11;
    v12 = 20.0;
    if (a5 == 3)
    {
      v12 = 5.0;
    }

    v172 = *v182;
    if (a5 == 2)
    {
      v12 = 3.0;
    }

    v167 = v12;
    do
    {
      v13 = 0;
      do
      {
        if (*v182 != v172)
        {
          objc_enumerationMutation(a6);
        }

        v14 = *(*(&v181 + 1) + 8 * v13);
        if (v14)
        {
          v15 = [*(*(&v181 + 1) + 8 * v13) locType];
          if (v15 > 0xD || ((1 << v15) & 0x2E1A) == 0)
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
            }

            v145 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
            {
              v146 = [v14 locType];
              *buf = 67240192;
              *v210 = v146;
              _os_log_impl(&dword_19B873000, v145, OS_LOG_TYPE_DEBUG, "CLTSP,LI,interpolator,unsupported location type skipped,%{public}d", buf, 8u);
            }

            v147 = sub_19B87DD40();
            if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
              }

              v148 = [v14 locType];
              v185 = 67240192;
              *v186 = v148;
LABEL_116:
              v130 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentLinearInterpolator::upsampleTripSegmentData(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const double) const", "CoreLocation: %s\n", v130);
              goto LABEL_117;
            }
          }

          else
          {
            [objc_msgSend(v14 "timestamp")];
            v18 = v17;
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
            }

            v180 = v18;
            v19 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
            {
              [v14 latitude];
              v177 = v20;
              [v14 longitude];
              v22 = v21;
              [v14 altitude];
              v24 = v23;
              [v14 speed];
              v26 = v25;
              [v14 course];
              v28 = v27;
              [v14 horizontalAccuracy];
              v30 = v29;
              [v14 altitudeAccuracy];
              v32 = v31;
              [v14 speedAccuracy];
              v34 = v33;
              [v14 courseAccuracy];
              v36 = v35;
              v37 = [objc_msgSend(a3 "UUIDString")];
              v38 = [v14 locType];
              *buf = 67243523;
              *v210 = a5;
              *&v210[4] = 1026;
              *&v210[6] = a4;
              *v211 = 2050;
              *&v211[2] = v180;
              *v212 = 2053;
              *&v212[2] = v177;
              v213 = 2053;
              v214 = v22;
              v215 = 2050;
              v216 = v24;
              v217 = 2050;
              v218 = v26;
              v219 = 2050;
              v220 = v28;
              v221 = 2050;
              v222 = v30;
              v223 = 2050;
              v224 = v32;
              v225 = 2050;
              v226 = v34;
              v227 = 2050;
              v228 = v36;
              v229 = 2082;
              v230 = v37;
              v231 = 1026;
              v232 = v38;
              _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "CLTSP,LI,input,mode,%{public}d,final,%{public}d,time,%{public}.4lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.2lf,cunc,%{public}.2lf,id,%{public}s,type,%{public}d", buf, 0x82u);
            }

            v39 = sub_19B87DD40();
            if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
              }

              [v14 latitude];
              v178 = v40;
              [v14 longitude];
              v42 = v41;
              [v14 altitude];
              v44 = v43;
              [v14 speed];
              v46 = v45;
              [v14 course];
              v48 = v47;
              [v14 horizontalAccuracy];
              v50 = v49;
              [v14 altitudeAccuracy];
              v52 = v51;
              [v14 speedAccuracy];
              v54 = v53;
              [v14 courseAccuracy];
              v56 = v55;
              v57 = [objc_msgSend(a3 "UUIDString")];
              v58 = [v14 locType];
              v185 = 67243523;
              *v186 = a5;
              *&v186[4] = 1026;
              *&v186[6] = a4;
              *v187 = 2050;
              *&v187[2] = v180;
              *v188 = 2053;
              *&v188[2] = v178;
              v189 = 2053;
              v190 = v42;
              v191 = 2050;
              v192 = v44;
              v193 = 2050;
              v194 = v46;
              v195 = 2050;
              v196 = v48;
              v197 = 2050;
              v198 = v50;
              v199 = 2050;
              v200 = v52;
              v201 = 2050;
              v202 = v54;
              v203 = 2050;
              v204 = v56;
              v205 = 2082;
              v206 = v57;
              v207 = 1026;
              v208 = v58;
              v59 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentLinearInterpolator::upsampleTripSegmentData(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const double) const", "CoreLocation: %s\n", v59);
              if (v59 != buf)
              {
                free(v59);
              }
            }

            if (!v10)
            {
              v9 = 1;
LABEL_82:
              v10 = v14;
              goto LABEL_119;
            }

            [objc_msgSend(v14 "timestamp")];
            v61 = v60;
            [objc_msgSend(v10 "timestamp")];
            if (v61 <= v62)
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
              }

              v116 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
              {
                [objc_msgSend(v14 "timestamp")];
                v118 = v117;
                [objc_msgSend(v10 "timestamp")];
                v120 = v119;
                v121 = [v14 locType];
                v122 = [v10 locType];
                *buf = 134349824;
                *v210 = v118;
                *&v210[8] = 2050;
                *v211 = v120;
                *&v211[8] = 1026;
                *v212 = v121;
                *&v212[4] = 1026;
                *&v212[6] = v122;
                _os_log_impl(&dword_19B873000, v116, OS_LOG_TYPE_ERROR, "CLTSP,LI,timestamp moving back,time,%{public}.4lf,prevTime,%{public}.4lf,type,%{public}d,prevType,%{public}d", buf, 0x22u);
              }

              v123 = sub_19B87DD40();
              if ((*(v123 + 160) & 0x80000000) == 0 || (*(v123 + 164) & 0x80000000) == 0 || (*(v123 + 168) & 0x80000000) == 0 || *(v123 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
                }

                [objc_msgSend(v14 "timestamp")];
                v125 = v124;
                [objc_msgSend(v10 "timestamp")];
                v127 = v126;
                v128 = [v14 locType];
                v129 = [v10 locType];
                v185 = 134349824;
                *v186 = v125;
                *&v186[8] = 2050;
                *v187 = v127;
                *&v187[8] = 1026;
                *v188 = v128;
                *&v188[4] = 1026;
                *&v188[6] = v129;
                goto LABEL_93;
              }
            }

            else
            {
              [objc_msgSend(v14 "timestamp")];
              v64 = v63;
              if (v63 > v165)
              {
                [objc_msgSend(v10 "timestamp")];
                v66 = v65;
                [v14 distanceFromLocation:v10];
                v68 = v67;
                if (v64 <= 1.5)
                {
                  [v14 speed];
                  v150 = v180;
                  if (v64 > 0.0 && v149 < 0.0)
                  {
                    if (a5 > 3)
                    {
                      v151 = 53.6;
                    }

                    else
                    {
                      v151 = dbl_19BA8D160[a5];
                    }

                    if (v151 >= v68 / v64)
                    {
                      v151 = v68 / v64;
                    }

                    [v14 updateSpeed:v151 andSpeedAccuracy:v167];
                  }

                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
                  }

                  v152 = qword_1EAFE46E8;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                  {
                    [v14 speed];
                    *buf = 134218496;
                    *v210 = v64;
                    *&v210[8] = 2048;
                    *v211 = v68;
                    *&v211[8] = 2048;
                    *v212 = v153;
                    _os_log_impl(&dword_19B873000, v152, OS_LOG_TYPE_DEBUG, "CLTSP,LI,duration_since_previous_epoch,%.2lf,distance,%.2lf,speed,%.2lf", buf, 0x20u);
                  }

                  v154 = sub_19B87DD40();
                  if (*(v154 + 160) > 1 || *(v154 + 164) > 1 || *(v154 + 168) > 1 || *(v154 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
                    }

                    [v14 speed];
                    v185 = 134218496;
                    *v186 = v64;
                    *&v186[8] = 2048;
                    *v187 = v68;
                    *&v187[8] = 2048;
                    *v188 = v155;
                    v156 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentLinearInterpolator::upsampleTripSegmentData(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const double) const", "CoreLocation: %s\n", v156);
                    if (v156 != buf)
                    {
                      free(v156);
                    }
                  }

                  if (v9)
                  {
                    [v10 speed];
                    if (v157 < 0.0)
                    {
                      [v14 speed];
                      [v10 updateSpeed:? andSpeedAccuracy:?];
                    }

                    [v10 setLocationReconstructionType:1];
                    [a7 addObject:v10];
                    [objc_msgSend(v10 "timestamp")];
                    v159 = v158;
                    [objc_msgSend(v10 "timestamp")];
                    sub_19B9E1DE8(v10, [a7 count], a3, a5, v159, v160, -1.0, -1.0);
                    v150 = v180;
                  }

                  [a7 addObject:v14];
                  sub_19B9E1DE8(v14, [a7 count], a3, a5, v150, v66, v150, -1.0);
                  v9 = 0;
                }

                else
                {
                  v174 = a1 / v64 * v67 / a1;
                  v168 = a1 / v64;
                  v169 = v66;
                  v69 = a1 / v64;
                  v170 = v64;
                  do
                  {
                    if (v69 >= 0.9999999)
                    {
                      break;
                    }

                    [v10 latitude];
                    v71 = v70;
                    [v10 longitude];
                    v73 = CLLocationCoordinate2DMake(v71, v72);
                    [v14 latitude];
                    v75 = v74;
                    [v14 longitude];
                    v78 = CLLocationCoordinate2DMake(v75, v76);
                    longitude = v78.longitude;
                    v79 = v73.longitude + 360.0;
                    if (v73.longitude >= 0.0)
                    {
                      v79 = v73.longitude;
                    }

                    if (v78.longitude < 0.0)
                    {
                      longitude = v78.longitude + 360.0;
                    }

                    v80 = longitude - v79;
                    if (v80 <= 180.0)
                    {
                      if (v80 < -180.0)
                      {
                        v80 = v80 + 360.0;
                      }
                    }

                    else
                    {
                      v80 = v80 + -360.0;
                    }

                    v81 = fmod(v73.longitude + v80 * v69, 360.0);
                    if (v81 <= -180.0)
                    {
                      v81 = v81 + 360.0;
                    }

                    else if (v81 > 180.0)
                    {
                      v81 = v81 + -360.0;
                    }

                    [v10 speed];
                    v83 = v82 < 0.0;
                    v84 = v174;
                    v179 = v69;
                    if (!v83)
                    {
                      [v14 speed];
                      v83 = v85 < 0.0;
                      v84 = v174;
                      if (!v83)
                      {
                        [v10 speed];
                        v87 = v86;
                        [v14 speed];
                        v84 = v69 * v88 + v87 * (1.0 - v69);
                      }
                    }

                    v89 = 53.6;
                    if (a5 <= 3)
                    {
                      v89 = dbl_19BA8D160[a5];
                    }

                    v90 = v66 + v69 * v64;
                    v91 = v73.latitude + (v78.latitude - v73.latitude) * v69;
                    if (v89 < v84)
                    {
                      v84 = v89;
                    }

                    v176 = v84;
                    v92 = [CLTripSegmentLocation alloc];
                    v93 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v66 + v69 * v64];
                    [v14 horizontalAccuracy];
                    v95 = v94;
                    [v14 course];
                    v97 = v96;
                    [v14 courseAccuracy];
                    v99 = v98;
                    [v14 altitude];
                    v101 = v100;
                    [v14 altitudeAccuracy];
                    v103 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:](v92, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:", v93, [v14 locType], objc_msgSend(v14, "referenceFrame"), v91, v81, v95, v97, v99, v176, v167, v101, v102);
                    [(CLTripSegmentLocation *)v103 setLocationReconstructionType:4];
                    -[CLTripSegmentLocation setStartLocationType:](v103, "setStartLocationType:", [v10 locType]);
                    -[CLTripSegmentLocation setStopLocationType:](v103, "setStopLocationType:", [v14 locType]);
                    [objc_msgSend(v10 "timestamp")];
                    v105 = v104;
                    [objc_msgSend(v14 "timestamp")];
                    if (vabdd_f64(v90, v105) >= vabdd_f64(v90, v106))
                    {
                      v107 = v14;
                    }

                    else
                    {
                      v107 = v10;
                    }

                    -[CLTripSegmentLocation setSignalEnvironmentType:](v103, "setSignalEnvironmentType:", [v107 signalEnvironmentType]);
                    if ([v10 locType] == 13 || objc_msgSend(v14, "locType") == 13)
                    {
                      [(CLTripSegmentLocation *)v103 speed];
                      [CLTripSegmentLocation updateSpeed:v103 andSpeedAccuracy:"updateSpeed:andSpeedAccuracy:"];
                    }

                    v108 = v180;
                    v66 = v169;
                    v64 = v170;
                    if (v9)
                    {
                      [v10 speed];
                      if (v109 < 0.0)
                      {
                        [(CLTripSegmentLocation *)v103 speed];
                        [v10 updateSpeed:? andSpeedAccuracy:?];
                      }

                      [a7 addObject:v10];
                      [objc_msgSend(v10 "timestamp")];
                      v111 = v110;
                      [objc_msgSend(v10 "timestamp")];
                      sub_19B9E1DE8(v10, [a7 count], a3, a5, v111, v112, -1.0, -1.0);
                      v108 = v180;
                    }

                    [a7 addObject:v103];
                    sub_19B9E1DE8(v103, [a7 count], a3, a5, v90, v169, v108, v179);
                    v9 = 0;
                    v113 = v168 + v179;
                    if (v168 + v179 > 1.0)
                    {
                      v113 = 1.0;
                    }

                    if (v179 >= 1.0)
                    {
                      break;
                    }

                    v69 = v113;
                  }

                  while (v90 < v108);
                  if (a5 == 1)
                  {
                    [v14 setLocationReconstructionType:4];
                    [v14 setStartLocationType:{objc_msgSend(v10, "locType")}];
                    [v14 setStopLocationType:{objc_msgSend(v14, "locType")}];
                  }

                  [a7 addObject:v14];
                }

                goto LABEL_82;
              }

              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
              }

              v131 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                [objc_msgSend(v14 "timestamp")];
                v133 = v132;
                [objc_msgSend(v10 "timestamp")];
                v135 = v134;
                v136 = [v14 locType];
                v137 = [v10 locType];
                *buf = 134350080;
                *v210 = v133;
                *&v210[8] = 2050;
                *v211 = v135;
                *&v211[8] = 1026;
                *v212 = v136;
                *&v212[4] = 1026;
                *&v212[6] = v137;
                v213 = 2050;
                v214 = v64;
                _os_log_impl(&dword_19B873000, v131, OS_LOG_TYPE_DEBUG, "CLTSP,LI,duration_since_previous_epoch threshold not met,time,%{public}.4lf,prevTime,%{public}.4lf,type,%{public}d,prevType,%{public}d,duration_since_previous_epoch,%{public}.2lf", buf, 0x2Cu);
              }

              v138 = sub_19B87DD40();
              if (*(v138 + 160) > 1 || *(v138 + 164) > 1 || *(v138 + 168) > 1 || *(v138 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
                }

                [objc_msgSend(v14 "timestamp")];
                v140 = v139;
                [objc_msgSend(v10 "timestamp")];
                v142 = v141;
                v143 = [v14 locType];
                v144 = [v10 locType];
                v185 = 134350080;
                *v186 = v140;
                *&v186[8] = 2050;
                *v187 = v142;
                *&v187[8] = 1026;
                *v188 = v143;
                *&v188[4] = 1026;
                *&v188[6] = v144;
                v189 = 2050;
                v190 = v64;
                goto LABEL_116;
              }
            }
          }
        }

        else
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
          }

          v114 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_ERROR, "CLTSP,LI,interpolator,null location object skipped", buf, 2u);
          }

          v115 = sub_19B87DD40();
          if ((*(v115 + 160) & 0x80000000) == 0 || (*(v115 + 164) & 0x80000000) == 0 || (*(v115 + 168) & 0x80000000) == 0 || *(v115 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
            }

            LOWORD(v185) = 0;
LABEL_93:
            v130 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentLinearInterpolator::upsampleTripSegmentData(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const double) const", "CoreLocation: %s\n", v130);
LABEL_117:
            if (v130 != buf)
            {
              free(v130);
            }
          }
        }

LABEL_119:
        ++v13;
      }

      while (v13 != v173);
      v161 = [a6 countByEnumeratingWithState:&v181 objects:v233 count:16];
      v173 = v161;
    }

    while (v161);
  }

  result = [a7 count] != 0;
  v163 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9E1DE8(void *a1, int a2, void *a3, int a4, double a5, double a6, double a7, double a8)
{
  v77 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
  }

  v12 = qword_1EAFE46E8;
  v13 = &xmmword_19BA8B000;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    [a1 latitude];
    v33 = v14;
    [a1 longitude];
    v16 = v15;
    [a1 course];
    v18 = v17;
    [a1 speed];
    v20 = v19;
    [a1 altitude];
    v22 = v21;
    [a1 horizontalAccuracy];
    v24 = v23;
    [a1 courseAccuracy];
    v26 = v25;
    [a1 speedAccuracy];
    v28 = v27;
    [a1 altitudeAccuracy];
    *buf = 134353667;
    v40 = a5;
    v41 = 2050;
    v42 = a6;
    v43 = 2050;
    v44 = a7;
    v45 = 2053;
    v46 = v33;
    v47 = 2053;
    v48 = v16;
    v49 = 2050;
    v50 = v18;
    v51 = 2050;
    v52 = v20;
    v53 = 2050;
    v54 = v22;
    v55 = 2050;
    v56 = v24;
    v57 = 2050;
    v58 = v26;
    v59 = 2050;
    v60 = v28;
    v61 = 2050;
    v62 = v29;
    v63 = 1026;
    v64 = [a1 locType];
    v65 = 2050;
    v66 = a8;
    v67 = 1026;
    v68 = a2;
    v69 = 2082;
    v70 = [objc_msgSend(a3 "UUIDString")];
    v71 = 1026;
    v72 = a4;
    v73 = 1026;
    v74 = [a1 reconstructionType];
    v13 = &xmmword_19BA8B000;
    v75 = 1026;
    v76 = [a1 referenceFrame];
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLTSP,LI,output,time,%{public}.4lf,start,%{public}.4lf,end,%{public}.4lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.2lf,speed,%{public}.2lf,alt,%{public}.2lf,hunc,%{public}.2lf,cunc,%{public}.2lf,sunc,%{public}.2lf,vunc,%{public}.2lf,type,%{public}d,projection,%{public}.5lf,count,%{public}d,id,%{public}s,mode,%{public}d,reconstructionType,%{public}d,refFrame,%{public}d", buf, 0xACu);
  }

  v30 = sub_19B87DD40();
  if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
    }

    [a1 latitude];
    [a1 longitude];
    [a1 course];
    [a1 speed];
    [a1 altitude];
    [a1 horizontalAccuracy];
    [a1 courseAccuracy];
    [a1 speedAccuracy];
    [a1 altitudeAccuracy];
    [a1 locType];
    [objc_msgSend(a3 "UUIDString")];
    [a1 reconstructionType];
    [a1 referenceFrame];
    v38 = *(v13 + 384);
    v31 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void printOutputLogLine(CLTripSegmentLocation *, CFAbsoluteTime, CFAbsoluteTime, CFAbsoluteTime, double, int, NSUUID * _Nonnull, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B9E22AC()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

_DWORD *sub_19B9E26C4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [objc_opt_class() trackerStateSize];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, v4 + 200, 0x1000040BEF03554uLL);
  *v6 = 3;
  v6[1] = v5;
  __strlcpy_chk();
  [objc_opt_class() trackerStateTypeName];
  __strlcpy_chk();
  object_getClassName(WeakRetained);
  __strlcpy_chk();
  if (([WeakRetained dumpState:v6 + 50 withSize:v5 hints:a2] & 1) == 0)
  {
    free(v6);
    v6 = 0;
  }

  return v6;
}

uint64_t sub_19B9E2ED8(unsigned int a1)
{
  if (a1 > 9)
  {
    return 4;
  }

  else
  {
    return dword_19BA8D1F0[a1];
  }
}

void sub_19B9E2EF8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6)
{
  v237[3] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v25 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLTSP,Unexpected,invalid geometry pointer,processUpsampledLocations", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      LOWORD(v205[0]) = 0;
      v27 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLUpsampledTripLocationProcessor::processUpsampledLocations(const std::string &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    goto LABEL_425;
  }

  v7 = a5;
  v186 = 0;
  v187 = 0;
  v188 = 0;
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (![a3 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v28 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEBUG, "CLTSP,snapUpsampledLocation,empty location array", buf, 2u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      LOWORD(v205[0]) = 0;
      v30 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::snapUpsampledLocations(CLDistanceCalc &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport, BOOL)", "CoreLocation: %s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    v31 = 0;
    if (v7)
    {
      goto LABEL_206;
    }

    goto LABEL_207;
  }

  memset(v237, 0, 24);
  v205[1] = 0uLL;
  v205[0] = xmmword_19BA89490;
  v205[2] = 0x3FF0000000000000uLL;
  v205[3] = 0uLL;
  if (!sub_19B948DC0(v205, a3))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v32 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLTSP,snapUpsampledLocation,unable to initialize location array", buf, 2u);
    }

    v33 = sub_19B87DD40();
    if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
    {
      goto LABEL_91;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    goto LABEL_89;
  }

  v11 = *(&v205[2] + 1);
  for (i = *&v205[3]; v11 != i; v11 += 2)
  {
    v13 = *v11;
    v14 = *(*v11 + 40);
    if (*(*v11 + 32) >= 0.0)
    {
      v15 = *(v13 + 24);
      if (v14 < v15)
      {
        v14 = v15 + 10.0;
      }

      if (v14 > 179.0)
      {
        v14 = 135.0;
      }
    }

    *(v13 + 40) = v14;
  }

  v202 = a4;
  v203 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = sub_19B9AECDC(&v205[2] + 8, v237, &v202);
  if (v203)
  {
    sub_19B8750F8(v203);
  }

  if ((v16 & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v34 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEBUG, "CLTSP,snapUpsampledLocation,quickMapMatcher returned error", buf, 2u);
    }

    v35 = sub_19B87DD40();
    if (*(v35 + 160) <= 1 && *(v35 + 164) <= 1 && *(v35 + 168) <= 1 && !*(v35 + 152))
    {
      goto LABEL_91;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

LABEL_89:
    LOWORD(v200) = 0;
    v36 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::snapUpsampledLocations(CLDistanceCalc &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport, BOOL)", "CoreLocation: %s\n", v36);
    if (v36 != buf)
    {
      free(v36);
    }

LABEL_91:
    v31 = 0;
    goto LABEL_205;
  }

  v180 = v7;
  memset(buf, 0, sizeof(buf));
  v18 = v237[0];
  v17 = v237[1];
  if (v237[0] == v237[1])
  {
    v200 = 0uLL;
    v201 = 0;
    goto LABEL_203;
  }

  v179 = a4;
  v184 = a6;
  v19 = 0;
  v20 = -1;
  do
  {
    v21 = *v18;
    if (!*v18)
    {
      goto LABEL_24;
    }

    ++v19;
    if (*buf == *&buf[8] || v19 == (v237[1] - v237[0]) >> 4)
    {
      sub_19B8EAB68(buf, v18);
      goto LABEL_24;
    }

    if (*(v21 + 64) == 1)
    {
      if (v20 != -1 && v20 <= 1)
      {
        ++v20;
        goto LABEL_24;
      }

      if (*(v21 + 96) == 1 && (*(v21 + 30) | 2) == 3)
      {
LABEL_41:
        sub_19B8EAB68(buf, v18);
LABEL_42:
        v20 = -1;
        goto LABEL_24;
      }

      v22 = *v21;
      if (!*v21 || a6 == 1 && (*(v22 + 20) & 0xFFFFFFFE) == 8 || *(v22 + 76) == 2)
      {
        goto LABEL_42;
      }

      v23 = sub_19B9E2ED8(*(v22 + 20));
      v24 = sqrt(*(v21 + 9) * *(v21 + 9) + *(v21 + 10) * *(v21 + 10));
      if (v24 < 50.0 && *(v21 + 11) < 30.0)
      {
        goto LABEL_41;
      }

      v20 = 0;
      if (!v23 && v24 < 100.0)
      {
        if (*(v21 + 11) < 40.0)
        {
          goto LABEL_41;
        }

        v20 = 0;
      }
    }

LABEL_24:
    ++v18;
  }

  while (v18 != v17);
  v38 = *buf;
  v37 = *&buf[8];
  v200 = 0uLL;
  v201 = 0;
  if (*buf == *&buf[8])
  {
LABEL_203:
    v197 = &v200;
    sub_19B8F0E84(&v197);
    goto LABEL_204;
  }

  LODWORD(v39) = 0;
  v40 = 0;
  v41 = 0;
  v178 = *&buf[8];
  do
  {
    v42 = *v38;
    if (!*v38)
    {
      goto LABEL_199;
    }

    LODWORD(v39) = v39 + 1;
    if (v186 == v187 || v184 == 1 && v39 == (*&buf[8] - *buf) >> 4)
    {
      sub_19B8EAB68(&v186, v38);
      goto LABEL_199;
    }

    if (v40)
    {
      v43 = v41;
      v42 = v40;
    }

    else
    {
      v43 = *(v38 + 1);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v41)
      {
        sub_19B8750F8(v41);
      }
    }

    v183 = v39;
    v39 = v39;
    v44 = (*&buf[8] - *buf) >> 4;
    v40 = *v38;
    if (*(*v38 + 16) - *(v42 + 16) < 3.0 && v44 > v39)
    {
      sub_19B8EAB68(&v200, v38);
      v40 = *v38;
      v41 = *(v38 + 1);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v43)
      {
        sub_19B8750F8(v43);
      }
    }

    else
    {
      v181 = v43;
      v46 = *(&v200 + 1);
      v47 = v200;
      if (*(&v200 + 1) - v200 <= 0x20uLL && v44 != v39)
      {
        v41 = *(v38 + 1);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v181)
        {
          sub_19B8750F8(v181);
          v47 = v200;
        }

        for (j = *(&v200 + 1); j != v47; --j)
        {
          v49 = *(j - 1);
          if (v49)
          {
            sub_19B8750F8(v49);
          }
        }

        *(&v200 + 1) = v47;
        sub_19B8EAB68(&v200, v38);
        goto LABEL_199;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      if (v200 != *(&v200 + 1))
      {
        v176 = (*&buf[8] - *buf) >> 4;
        v177 = v39;
        v50 = 0;
        v51 = 0;
        v52 = 0.0;
        while (1)
        {
          v53 = v50;
          v54 = *v47;
          if (*v47)
          {
            break;
          }

LABEL_142:
          if (++v47 == v46)
          {
            v46 = *(&v200 + 1);
            v47 = v200;
            v44 = v176;
            v39 = v177;
            goto LABEL_189;
          }
        }

        if (!v51 || (v55 = *v51) == 0)
        {
          v50 = *(v47 + 1);
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v53)
          {
            sub_19B8750F8(v53);
          }

          sub_19B8EAB68(&v197, v47);
          v51 = v54;
          goto LABEL_142;
        }

        if (*(&v200 + 1) - v200 <= 0x3C0uLL && (**v54 != *v55 || *(*v54 + 8) != v55[1]))
        {
          v58 = *v47;
          if (v184 == 1)
          {
            if ((sub_19B9F6278(v55, v58) & 1) == 0)
            {
LABEL_150:
              v194 = 0;
              v195 = 0;
              v196 = 0;
              memset(v193, 0, sizeof(v193));
              v59 = v51[1];
              v191 = *v51;
              v192 = v59;
              if (v59)
              {
                atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v60 = sub_19B8EB824(v179, &v191, &v194, v193, 1, 1000.0);
              if (v192)
              {
                sub_19B8750F8(v192);
              }

              if (!v60 || (v61 = v194, v194 == v195))
              {
LABEL_160:
                v63 = 0;
              }

              else
              {
                v62 = **v47;
                while (*v62 != **v61 || v62[1] != *(*v61 + 1))
                {
                  v61 += 2;
                  if (v61 == v195)
                  {
                    goto LABEL_160;
                  }
                }

                v63 = 1;
              }

              if (v184 != 1)
              {
                v64 = v51[1];
                v189 = *v51;
                v190 = v64;
                if (v64)
                {
                  atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v65 = sub_19B8EB824(v179, &v189, &v194, v193, 0, 1000.0);
                if (v190)
                {
                  sub_19B8750F8(v190);
                }

                if (v65)
                {
                  v66 = v194;
                  if (v194 != v195)
                  {
                    v67 = **v47;
                    while (*v67 != **v66 || v67[1] != *(*v66 + 1))
                    {
                      v66 += 2;
                      if (v66 == v195)
                      {
                        goto LABEL_172;
                      }
                    }

                    v204 = v193;
                    sub_19B8F0E84(&v204);
                    v193[0] = &v194;
                    sub_19B8F0E84(v193);
                    goto LABEL_130;
                  }
                }
              }

LABEL_172:
              v204 = v193;
              sub_19B8F0E84(&v204);
              v193[0] = &v194;
              sub_19B8F0E84(v193);
              if ((v63 & 1) == 0)
              {
                sub_19B9F1C14(&v197, &v186, v184, v52);
                v68 = v197;
                for (k = v198; k != v68; --k)
                {
                  v70 = *(k - 1);
                  if (v70)
                  {
                    sub_19B8750F8(v70);
                  }
                }

                v198 = v68;
                sub_19B8EAB68(&v197, v47);
                v51 = *v47;
                v50 = *(v47 + 1);
                if (v50)
                {
                  atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v52 = 0.0;
                if (!v53)
                {
                  goto LABEL_142;
                }

                goto LABEL_136;
              }
            }
          }

          else if ((sub_19B9F6534(v55, v58) & 1) == 0)
          {
            goto LABEL_150;
          }
        }

LABEL_130:
        v56 = sub_19BA0C01C(a1, *(*v47 + 24), *(*v47 + 32), *(v51 + 3), *(v51 + 4), 0.0);
        sub_19B8EAB68(&v197, v47);
        v52 = v52 + v56;
        v57 = *(*(&v200 + 1) - 16);
        v51 = *v47;
        if (v57 && *(v51 + 2) == *(v57 + 16))
        {
          sub_19B9F1C14(&v197, &v186, v184, v52);
          v51 = *v47;
        }

        v50 = *(v47 + 1);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v53)
        {
          goto LABEL_142;
        }

LABEL_136:
        sub_19B8750F8(v53);
        goto LABEL_142;
      }

      v50 = 0;
LABEL_189:
      while (v46 != v47)
      {
        v71 = *(v46 - 1);
        if (v71)
        {
          sub_19B8750F8(v71);
        }

        --v46;
      }

      *(&v200 + 1) = v47;
      sub_19B8EAB68(&v200, v38);
      v40 = *v38;
      v41 = *(v38 + 1);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v181)
      {
        sub_19B8750F8(v181);
      }

      if (v44 == v39)
      {
        sub_19B8EAB68(&v186, v38);
      }

      if (v50)
      {
        sub_19B8750F8(v50);
      }

      v194 = &v197;
      sub_19B8F0E84(&v194);
      v37 = v178;
      LODWORD(v39) = v183;
    }

LABEL_199:
    ++v38;
  }

  while (v38 != v37);
  v197 = &v200;
  sub_19B8F0E84(&v197);
  if (v41)
  {
    sub_19B8750F8(v41);
  }

LABEL_204:
  *&v200 = buf;
  sub_19B8F0E84(&v200);
  v31 = 1;
  v7 = v180;
LABEL_205:
  *buf = &v205[2] + 8;
  sub_19B8F0E84(buf);
  *buf = v237;
  sub_19B8F0E84(buf);
  if (v7)
  {
LABEL_206:
    sub_19B8750F8(v7);
  }

LABEL_207:
  if (!v31)
  {
    goto LABEL_424;
  }

  memset(v205, 0, sizeof(v205));
  v72 = [a3 countByEnumeratingWithState:v205 objects:buf count:16];
  if (v72)
  {
    v73 = **&v205[1];
    do
    {
      for (m = 0; m != v72; ++m)
      {
        if (**&v205[1] != v73)
        {
          objc_enumerationMutation(a3);
        }

        v75 = *(*(&v205[0] + 1) + 8 * m);
        if (![v75 isGPSLocationType] || (objc_msgSend(v75, "isOriginalLocationType") & 1) == 0)
        {
          [objc_msgSend(v75 "timestamp")];
          for (n = v186; n != v187; n += 16)
          {
            v78 = *n;
            if (*n && vabdd_f64(v78[2], v76) < 0.001)
            {
              v79 = *(n + 1);
              if (v79)
              {
                atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (*v78 && v78[6] * *(*v78 + 128) + *(*v78 + 120) * (1.0 - v78[6]) > 0.0)
              {
                [v75 updateAltitude:? andAltitudeAccuracy:?];
              }

              if (v79)
              {
                sub_19B8750F8(v79);
              }

              break;
            }
          }
        }
      }

      v72 = [a3 countByEnumeratingWithState:v205 objects:buf count:16];
    }

    while (v72);
  }

  v80 = *(a1 + 40);
  v182 = a1 + 40;
  v81 = *(a1 + 48);
  while (v81 != v80)
  {
    v81 -= 24;
    *buf = v81;
    sub_19B8F0E84(buf);
  }

  v82 = v186;
  *(a1 + 48) = v80;
  memset(v237, 0, 24);
  if (v187 == v82)
  {
    *buf = v237;
    sub_19B8F0E84(buf);
    goto LABEL_346;
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  while (2)
  {
    v86 = *&v82[16 * v83];
    v200 = v86;
    if (*(&v86 + 1))
    {
      atomic_fetch_add_explicit((*(&v86 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v86 && *v86)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v87 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v88 = *a2;
        if (*(a2 + 23) >= 0)
        {
          v88 = a2;
        }

        if (*v200)
        {
          v89 = *(*v200 + 20);
        }

        else
        {
          v89 = -1;
        }

        v95 = *(v200 + 16);
        v96 = *(v200 + 24);
        v97 = *(v200 + 32);
        v98 = *(v200 + 40);
        v99 = *(v200 + 48);
        v100 = *(v200 + 56);
        v101 = *(v200 + 72);
        v102 = *(v200 + 80);
        v103 = *(v200 + 88);
        v104 = *(v200 + 64);
        *buf = 136449027;
        *&buf[4] = v88;
        *&buf[12] = 2050;
        *&buf[14] = v95;
        *&buf[22] = 2053;
        v218 = v96;
        v219 = 2053;
        v220 = v97;
        v221 = 2049;
        v222 = v98;
        v223 = 2050;
        v224 = v99;
        v225 = 2050;
        v226 = v100;
        v227 = 2050;
        v228 = v102;
        v229 = 2050;
        v230 = v101;
        v231 = 2050;
        v232 = v103;
        v233 = 1026;
        v234 = v104;
        v235 = 1026;
        v236 = v89;
        _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snappedIILocationContinuous,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", buf, 0x72u);
      }

      v105 = sub_19B87DD40();
      if (*(v105 + 160) > 1 || *(v105 + 164) > 1 || *(v105 + 168) > 1 || *(v105 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        if (*(a2 + 23) >= 0)
        {
          v106 = a2;
        }

        else
        {
          v106 = *a2;
        }

        v107 = *(v200 + 16);
        v108 = *(v200 + 24);
        v110 = *(v200 + 32);
        v109 = *(v200 + 40);
        v112 = *(v200 + 48);
        v111 = *(v200 + 56);
        v113 = *(v200 + 72);
        v114 = *(v200 + 80);
        v115 = *(v200 + 88);
        v116 = *(v200 + 64);
        if (*v200)
        {
          v117 = *(*v200 + 20);
        }

        else
        {
          v117 = -1;
        }

        LODWORD(v205[0]) = 136449027;
        *(v205 + 4) = v106;
        WORD6(v205[0]) = 2050;
        *(v205 + 14) = v107;
        WORD3(v205[1]) = 2053;
        *(&v205[1] + 1) = v108;
        LOWORD(v205[2]) = 2053;
        *(&v205[2] + 2) = v110;
        WORD5(v205[2]) = 2049;
        *(&v205[2] + 12) = v109;
        WORD2(v205[3]) = 2050;
        *(&v205[3] + 6) = v112;
        HIWORD(v205[3]) = 2050;
        v206 = v111;
        v207 = 2050;
        v208 = v114;
        v209 = 2050;
        v210 = v113;
        v211 = 2050;
        v212 = v115;
        v213 = 1026;
        v214 = v116;
        v215 = 1026;
        v216 = v117;
        v118 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLUpsampledTripLocationProcessor::makeSegments(const std::string &, const std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v118);
        if (v118 != buf)
        {
          free(v118);
        }
      }

      if (!v85)
      {
        sub_19B8EAB68(v237, &v200);
        goto LABEL_289;
      }

      v119 = *v85;
      if (*v85)
      {
        if (vabdd_f64(*(v200 + 16), v85[2]) < 3.0)
        {
          v120 = sub_19B9E2ED8(*(*v200 + 20));
          if (v120 == sub_19B9E2ED8(*(*&v119 + 20)))
          {
            sub_19B8EAB68(v237, &v200);
            v121 = *(&v200 + 1);
            v85 = v200;
            if (*(&v200 + 1))
            {
              atomic_fetch_add_explicit((*(&v200 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            if (v84)
            {
              sub_19B8750F8(v84);
            }

            v84 = v121;
            if (((v187 - v186) >> 4) - 1 != v83)
            {
              goto LABEL_335;
            }
          }
        }

        if (v237[1] != v237[0])
        {
          v123 = *(a1 + 48);
          if (v123 >= *(a1 + 56))
          {
            v124 = sub_19B9A2EF8(v182, v237);
          }

          else
          {
            sub_19B9A2EA4(v182, v237);
            v124 = v123 + 24;
          }

          *(a1 + 48) = v124;
          v131 = *(&v200 + 1);
          v85 = v200;
          if (*(&v200 + 1))
          {
            atomic_fetch_add_explicit((*(&v200 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          if (v84)
          {
            sub_19B8750F8(v84);
          }

          v132 = v237[0];
          for (ii = v237[1]; ii != v132; ii -= 16)
          {
            v134 = *(ii - 1);
            if (v134)
            {
              sub_19B8750F8(v134);
            }
          }

          v237[1] = v132;
          v84 = v131;
          sub_19B8EAB68(v237, &v200);
          goto LABEL_335;
        }

        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v128 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_ERROR, "CLTSP,MI,unexpected,location chunk empty", buf, 2u);
        }

        v129 = sub_19B87DD40();
        if ((*(v129 + 160) & 0x80000000) == 0 || (*(v129 + 164) & 0x80000000) == 0 || (*(v129 + 168) & 0x80000000) == 0 || *(v129 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          LOWORD(v205[0]) = 0;
          v130 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "void CLUpsampledTripLocationProcessor::makeSegments(const std::string &, const std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v130);
          if (v130 != buf)
          {
            free(v130);
          }
        }

LABEL_289:
        v122 = *(&v200 + 1);
        v85 = v200;
        if (*(&v200 + 1))
        {
          atomic_fetch_add_explicit((*(&v200 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v84)
        {
          sub_19B8750F8(v84);
        }

        v84 = v122;
        goto LABEL_335;
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v125 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v126 = a2;
        }

        else
        {
          v126 = *a2;
        }

        *buf = 136446466;
        *&buf[4] = v126;
        *&buf[12] = 1026;
        *&buf[14] = v83;
        _os_log_impl(&dword_19B873000, v125, OS_LOG_TYPE_ERROR, "CLTSP,MI,snappedIILocationContinuous,prevLocation road is nullptr,tripSegmentID,%{public}s,index,%{public}d", buf, 0x12u);
      }

      v127 = sub_19B87DD40();
      if ((*(v127 + 160) & 0x80000000) == 0 || (*(v127 + 164) & 0x80000000) == 0 || (*(v127 + 168) & 0x80000000) == 0 || *(v127 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        if (*(a2 + 23) >= 0)
        {
          v93 = a2;
        }

        else
        {
          v93 = *a2;
        }

        goto LABEL_260;
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v90 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v91 = a2;
        }

        else
        {
          v91 = *a2;
        }

        *buf = 136446466;
        *&buf[4] = v91;
        *&buf[12] = 1026;
        *&buf[14] = v83;
        _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_ERROR, "CLTSP,MI,snappedIILocationContinuous,road is nullptr,tripSegmentID,%{public}s,index,%{public}d", buf, 0x12u);
      }

      v92 = sub_19B87DD40();
      if ((*(v92 + 160) & 0x80000000) == 0 || (*(v92 + 164) & 0x80000000) == 0 || (*(v92 + 168) & 0x80000000) == 0 || *(v92 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        if (*(a2 + 23) >= 0)
        {
          v93 = a2;
        }

        else
        {
          v93 = *a2;
        }

LABEL_260:
        LODWORD(v205[0]) = 136446466;
        *(v205 + 4) = v93;
        WORD6(v205[0]) = 1026;
        *(v205 + 14) = v83;
        v94 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLUpsampledTripLocationProcessor::makeSegments(const std::string &, const std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v94);
        if (v94 != buf)
        {
          free(v94);
        }
      }
    }

LABEL_335:
    if (*(&v200 + 1))
    {
      sub_19B8750F8(*(&v200 + 1));
    }

    ++v83;
    v82 = v186;
    if (v83 < (v187 - v186) >> 4)
    {
      continue;
    }

    break;
  }

  *buf = v237;
  sub_19B8F0E84(buf);
  if (v84)
  {
    sub_19B8750F8(v84);
  }

LABEL_346:
  v135 = v186;
  for (jj = v187; jj != v135; jj -= 16)
  {
    v137 = *(jj - 1);
    if (v137)
    {
      sub_19B8750F8(v137);
    }
  }

  v187 = v135;
  *(&v205[0] + 1) = 0;
  *&v205[1] = 0;
  *&v205[0] = v205 + 8;
  v138 = *(a1 + 40);
  v139 = *(a1 + 48);
  if (v139 != v138)
  {
    v140 = 0;
    v141 = -1;
    v142 = 4;
    v143 = 4;
    do
    {
      v144 = &v138[3 * v140];
      if (*v144 != v144[1])
      {
        v145 = **v144;
        if (v145)
        {
          v146 = *v145;
          if (v146)
          {
            v147 = sub_19B9E2ED8(*(v146 + 20));
            if (v142 == 4)
            {
              v142 = v147;
            }

            else
            {
              if (v143 != 4)
              {
                if (v147 != v142 && v147 == v143)
                {
                  v141 = -1;
                  v142 = v143;
                }

                else
                {
                  v149 = *(&v205[0] + 1);
LABEL_364:
                  if (!v149)
                  {
LABEL_372:
                    operator new();
                  }

                  while (1)
                  {
                    v150 = v149;
                    v151 = *(v149 + 7);
                    if (v151 > v141)
                    {
                      v149 = *v150;
                      goto LABEL_364;
                    }

                    if (v151 >= v141)
                    {
                      break;
                    }

                    v149 = v150[1];
                    if (!v149)
                    {
                      goto LABEL_372;
                    }
                  }

                  *(v150 + 32) = 1;
                  v141 = -1;
                }
              }

              if (v147 == v142)
              {
                v143 = 4;
              }

              else
              {
                v141 = v140;
                v143 = v147;
              }

              if (v147 == v142)
              {
                v142 = v147;
              }
            }
          }
        }
      }

      ++v140;
      v138 = *(a1 + 40);
      v139 = *(a1 + 48);
    }

    while (0xAAAAAAAAAAAAAAABLL * (v139 - v138) > v140);
  }

  if (v138 == v139)
  {
    goto LABEL_423;
  }

  v152 = 0;
  while (2)
  {
    v153 = *(&v205[0] + 1);
    if (!*(&v205[0] + 1))
    {
LABEL_386:
      v138 += 3;
      goto LABEL_387;
    }

    while (2)
    {
      v154 = *(v153 + 7);
      if (v152 < v154)
      {
LABEL_385:
        v153 = *v153;
        if (!v153)
        {
          goto LABEL_386;
        }

        continue;
      }

      break;
    }

    if (v154 < v152)
    {
      ++v153;
      goto LABEL_385;
    }

    v156 = *v138;
    v155 = v138[1];
    if (*v138 == v155)
    {
      goto LABEL_394;
    }

    if (!*v156)
    {
      goto LABEL_394;
    }

    v157 = **v156;
    if (!v157)
    {
      goto LABEL_394;
    }

    v158 = sub_19B9E2ED8(*(v157 + 20));
    v159 = v155 - v156;
    if (v158 > 1)
    {
      if (v159 >= 0x1D1)
      {
        goto LABEL_410;
      }

LABEL_394:
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v160 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v161 = **v138;
        v162 = v161[2];
        LODWORD(v161) = *(*v161 + 20);
        *buf = 134349312;
        *&buf[4] = v162;
        *&buf[12] = 1026;
        *&buf[14] = v161;
        _os_log_impl(&dword_19B873000, v160, OS_LOG_TYPE_INFO, "CLTSP,UpsampledLocFiltering,erased,%{public}.2lf,locFRC,%{public}d", buf, 0x12u);
      }

      v163 = sub_19B87DD40();
      if (*(v163 + 160) > 1 || *(v163 + 164) > 1 || *(v163 + 168) > 1 || *(v163 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v164 = **v138;
        v165 = v164[2];
        LODWORD(v164) = *(*v164 + 20);
        LODWORD(v237[0]) = 134349312;
        *(v237 + 4) = v165;
        WORD2(v237[1]) = 1026;
        *(&v237[1] + 6) = v164;
        v166 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLUpsampledTripLocationProcessor::processUpsampledLocations(const std::string &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v166);
        if (v166 != buf)
        {
          free(v166);
        }
      }

      v139 = sub_19B9F1E2C((v138 + 3), *(a1 + 48), v138);
      v167 = *(a1 + 48);
      while (v167 != v139)
      {
        v167 -= 3;
        *buf = v167;
        sub_19B8F0E84(buf);
      }

      *(a1 + 48) = v139;
      goto LABEL_387;
    }

    if (v159 <= 0x90)
    {
      goto LABEL_394;
    }

LABEL_410:
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v168 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v169 = **v138;
      v170 = v169[2];
      LODWORD(v169) = *(*v169 + 20);
      *buf = 134349568;
      *&buf[4] = v170;
      *&buf[12] = 1026;
      *&buf[14] = v169;
      *&buf[18] = 1026;
      *&buf[20] = v158;
      _os_log_impl(&dword_19B873000, v168, OS_LOG_TYPE_INFO, "CLTSP,UpsampledLocFiltering,skip erasing major or secondary road snaps,%{public}.2lf,locFRC,%{public}d,clrc,%{public}d", buf, 0x18u);
    }

    v171 = sub_19B87DD40();
    if (*(v171 + 160) > 1 || *(v171 + 164) > 1 || *(v171 + 168) > 1 || *(v171 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v172 = **v138;
      v173 = v172[2];
      LODWORD(v172) = *(*v172 + 20);
      LODWORD(v237[0]) = 134349568;
      *(v237 + 4) = v173;
      WORD2(v237[1]) = 1026;
      *(&v237[1] + 6) = v172;
      WORD1(v237[2]) = 1026;
      HIDWORD(v237[2]) = v158;
      v174 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLUpsampledTripLocationProcessor::processUpsampledLocations(const std::string &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v174);
      if (v174 != buf)
      {
        free(v174);
      }
    }

    v138 += 3;
    v139 = *(a1 + 48);
LABEL_387:
    ++v152;
    if (v138 != v139)
    {
      continue;
    }

    break;
  }

LABEL_423:
  sub_19B9D8CB0(*(&v205[0] + 1));
LABEL_424:
  *buf = &v186;
  sub_19B8F0E84(buf);
LABEL_425:
  v175 = *MEMORY[0x1E69E9840];
}