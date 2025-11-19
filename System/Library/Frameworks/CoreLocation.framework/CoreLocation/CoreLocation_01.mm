void sub_19B88B1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88B1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"kCLConnectionMessageSubscribeKey";
  v11[0] = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v10[1] = @"kCLConnectionMessageTranscriptShouldPromptKey";
  v11[1] = [MEMORY[0x1E696AD98] numberWithBool:a3];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (a4)
  {
    v9 = *(a1 + 232);
    result = sub_19B890C98(a1, "kCLConnectionMessageTranscriptSession", result);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88B2F0(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B88B364;
  v3[3] = &unk_1E753CCE0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 async:v3];
}

uint64_t sub_19B88B374(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"kCLConnectionMessageTranscriptFetchRadiusKey";
  v14[0] = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v13[1] = @"kCLConnectionMessageTranscriptFetchSampleCountKey";
  v14[1] = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v13[2] = @"kCLConnectionMessageTranscriptFetchCenterLatitudeKey";
  v14[2] = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v13[3] = @"kCLConnectionMessageTranscriptFetchCenterLongitudeKey";
  v14[3] = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v12 = *(a1 + 232);
  result = sub_19B890C98(a1, "kCLConnectionMessageTranscriptFetch", v9);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88B4D8(uint64_t result, CLConnectionMessage **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(result + 40))
  {
    v2 = result;
    v3 = *a2;
    if (*a2)
    {
      v4 = MEMORY[0x1E695DFD8];
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v3, v7);
      v9 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageTranscriptFetchLocationsKey"];
      v10 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageTranscriptError"];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B88B824;
      v19[3] = &unk_1E753CD30;
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      v19[5] = v10;
      v19[6] = v12;
      v19[4] = v9;
      v13 = v19;
      v14 = v11;
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v15 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "#transcriptSession reply for fetchTranscriptLocation is nil", buf, 2u);
      }

      v16 = sub_19B87DD40();
      if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
        }

        v21 = 0;
        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLClientFetchTranscriptLocations(CLClientRef, double, int, CLLocationCoordinate2D, void (^)(NSArray *, NSError *))_block_invoke", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_19B88B7C0;
      v20[3] = &unk_1E753CCE0;
      v14 = *(v2 + 32);
      v20[4] = *(v2 + 40);
      v13 = v20;
    }

    result = [v14 async:v13];
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88B7C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

uint64_t sub_19B88B83C(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"kCLConnectionMessageTranscriptFetchSampleCountKey";
  v8[1] = @"kCLConnectionMessagePurposeIdentifierKey";
  v9[0] = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v9[1] = a2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v7 = *(a1 + 232);
  result = sub_19B890C98(a1, "kCLConnectionMessageRequestHistoricalLocations", v4);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88B948(uint64_t a1, CLConnectionMessage **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v3, v7);
    v9 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageTranscriptFetchLocationsKey"];
    v10 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageTranscriptError"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B88BC8C;
    v20[3] = &unk_1E753CD30;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v20[5] = v10;
    v20[6] = v12;
    v20[4] = v9;
    v13 = v20;
    v14 = v11;
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "#historicalLocations reply for fetchTranscriptLocation is nil", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v22 = 0;
      v17 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLClientRequestHistoricalLocations(CLClientRef, NSString *, NSInteger, void (^)(NSArray *, NSError *))_block_invoke", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_19B88BC28;
    v21[3] = &unk_1E753CCE0;
    v14 = *(a1 + 32);
    v21[4] = *(a1 + 40);
    v13 = v21;
  }

  result = [v14 async:v13];
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88BC28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

void sub_19B88BCA4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLClientWillPromptForTranscriptSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLClientWillPromptForTranscriptSession, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = *(a1 + 232);
  sub_19B890C98(a1, "kCLConnectionMessageWillPromptForTranscriptSession", 0);
  os_activity_scope_leave(&state);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B88BE54(uint64_t result, CLConnectionMessage **a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v4, v5);
      v7 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"kCLConnectionMessageWillPromptForTranscriptSessionKey", "BOOLValue"}];
      v8 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageTranscriptError"];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_19B88C004;
      v13[3] = &unk_1E753CD80;
      v9 = *(v3 + 32);
      v10 = *(v3 + 40);
      v14 = v7;
      v13[4] = v8;
      v13[5] = v10;
      v11 = v13;
      v12 = v9;
    }

    else
    {
      v12 = *(result + 32);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_19B88BFA0;
      v15[3] = &unk_1E753CCE0;
      v15[4] = v2;
      v11 = v15;
    }

    return [v12 async:v11];
  }

  return result;
}

uint64_t sub_19B88BFA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

void sub_19B88C01C(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLClientIsConsideredInRemoteArea", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLClientIsConsideredInRemoteArea, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = *(a1 + 232);
  sub_19B890C98(a1, "kCLConnectionMessageIsConsideredInRemoteArea", 0);
  os_activity_scope_leave(&state);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B88C1CC(uint64_t result, CLConnectionMessage **a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = result;
    if (*a2)
    {
      Dictionary = CLConnectionMessage::getDictionary(*a2);
      v5 = [objc_msgSend(Dictionary objectForKeyedSubscript:{@"kCLConnectionMessageIsConsideredInRemoteAreaKey", "BOOLValue"}];
      v6 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageTranscriptError"];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = sub_19B88C350;
      v14 = &unk_1E753CD80;
      v7 = *(v3 + 32);
      v8 = *(v3 + 40);
      LOBYTE(v17) = v5;
      v15 = v6;
      v16 = v8;
      v9 = &v11;
      v10 = v7;
    }

    else
    {
      v10 = *(result + 32);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = sub_19B88C2EC;
      v21 = &unk_1E753CCE0;
      v22 = v2;
      v9 = &v18;
    }

    return [v10 async:{v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
  }

  return result;
}

uint64_t sub_19B88C2EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

uint64_t sub_19B88C368(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_29:
    result = 0;
    goto LABEL_30;
  }

  v4 = [a2 type];
  if (!sub_19B889DD4(v4, v4))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v22 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 67174657;
      *&buf[4] = [a2 type];
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_FAULT, "Fence: CLClientRequestRegionState, unsupported fence type, %{private}d", buf, 8u);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      [a2 type];
      v24 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientRequestRegionState(CLClientRef, CLRegion *)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    goto LABEL_29;
  }

  sub_19B87B468(buf);
  sub_19B88AB18(buf, a2);
  v5 = *(a1 + 384);
  if (v5 && (v6 = *v5, *v5))
  {
    v7 = 0;
    v8 = 0;
    v9 = v5 + 1;
    do
    {
      v8 ^= v6 << (v7 & 0x18);
      v10 = *v9++;
      v6 = v10;
      v7 += 8;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v11 = [objc_msgSend(a2 "identifier")];
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = 0;
      v14 = v11 + 1;
      do
      {
        v8 ^= v12 << (v13 & 0x18);
        v15 = *v14++;
        v12 = v15;
        v13 += 8;
      }

      while (v15);
    }
  }

  v16 = [objc_msgSend(a2 "onBehalfOfBundleId")];
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      v19 = v16 + 1;
      do
      {
        v8 ^= v17 << (v18 & 0x18);
        v20 = *v19++;
        v17 = v20;
        v18 += 8;
      }

      while (v20);
    }
  }

  entr_act_modify();
  sub_19B87B6CC(a1, "kCLConnectionMessageRegionState", buf);
  sub_19B8756F0(buf);
  result = 1;
LABEL_30:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL CLClientPopulateRegionFromInfo(id *a1, const __CFDictionary *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  sub_19B874A98(v69, a2);
  memset(&v68, 0, sizeof(v68));
  sub_19B92B010(v69, "kCLConnectionMessageNameKey", &v68);
  memset(&v67, 0, sizeof(v67));
  sub_19B92B010(v69, "kCLConnectionMessageOnBehalfOfKey", &v67);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v67.__r_.__value_.__l.__size_)
    {
      v3 = v67.__r_.__value_.__r.__words[0];
      goto LABEL_6;
    }
  }

  else if (*(&v67.__r_.__value_.__s + 23))
  {
    v3 = &v67;
LABEL_6:
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    goto LABEL_8;
  }

  v4 = 0;
LABEL_8:
  memset(&v66, 0, sizeof(v66));
  memset(&__p, 0, sizeof(__p));
  sub_19B92B010(v69, "kCLConnectionMessageDeviceIDKey", &v66);
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v66;
  }

  else
  {
    v6 = v66.__r_.__value_.__r.__words[0];
  }

  v7 = [v5 initWithUUIDString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v6)}];
  sub_19B92B010(v69, "kCLConnectionMessageHandoffTagKey", &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
  v64 = 0;
  sub_19B876178(v69, "kCLConnectionMessageRegionTypeKey", &v64);
  v63 = 0;
  sub_19B8767CC(v69, "kCLConnectionMessageNotifyOnEntryKey", &v63 + 1);
  sub_19B8767CC(v69, "kCLConnectionMessageNotifyOnExitKey", &v63);
  v62 = 0;
  sub_19B8767CC(v69, "kCLConnectionMessageConservativeEntry", &v62 + 1);
  sub_19B8767CC(v69, "kCLConnectionMessageEmergencyKey", &v62);
  if (v64 <= 1)
  {
    if (v64)
    {
      if (v64 != 1)
      {
        goto LABEL_105;
      }

      LODWORD(v58) = 0;
      sub_19B876178(v69, "kCLConnectionMessageReferenceFrameKey", &v58);
      sub_19B8767CC(v69, "kCLConnectionMessageMonitoringNearby", &v57);
      LOBYTE(v61) = 0;
      sub_19B8767CC(v69, "kCLConnectionMessageLowPowerFenceKey", &v61);
      v70 = 0.0;
      sub_19B92ACF0(v69, "kCLConnectionMessageLatitudeKey", buf);
      sub_19B92ACF0(v69, "kCLConnectionMessageLongitudeKey", v74);
      sub_19B92ACF0(v69, "kCLConnectionMessageRadiusKey", &v70);
      v10 = [CLCircularRegion alloc];
      v11 = *buf;
      v12 = *v74;
      v13 = v70;
      v14 = v58;
      v15 = v61;
      v16 = MEMORY[0x1E696AEC0];
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v68;
      }

      else
      {
        v17 = v68.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v18 = [v16 stringWithUTF8String:v17];
      BYTE1(v56) = HIBYTE(v62);
      BYTE2(v56) = v62;
      LOBYTE(v56) = v63;
      *a1 = [(CLCircularRegion *)v10 initWithCenter:v14 radius:0 referenceFrame:v15 allowMonitoringWhenNearby:v18 lowPower:v4 identifier:HIBYTE(v63) onBehalfOfBundleId:*&v11 notifyOnEntry:v12 notifyOnExit:v13 conservativeEntry:v56 emergency:v7 deviceId:v9 handoffTag:?];
      goto LABEL_105;
    }

    LOBYTE(v61) = 0;
    sub_19B8767CC(v69, "kCLConnectionMessageNotifyEntryStateOnDisplayKey", &v61);
    *buf = 0;
    *v74 = 0;
    *&v74[8] = 0;
    LOWORD(v58) = 0;
    LOWORD(v57) = 0;
    LODWORD(v70) = 0;
    sub_19B92B010(v69, "kCLConnectionMessageProximityUUIDKey", buf);
    sub_19B92991C(v69, "kCLConnectionMessageMajorKey", &v58);
    sub_19B92991C(v69, "kCLConnectionMessageMinorKey", &v57);
    sub_19B876178(v69, "kCLConnectionMessageRegionDefinitionKey", &v70);
    if ((~LODWORD(v70) & 7) != 0)
    {
      if ((~LODWORD(v70) & 3) != 0)
      {
        if ((LOBYTE(v70) & 1) == 0)
        {
          v37 = [CLBeaconRegion alloc];
          if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v68;
          }

          else
          {
            v38 = v68.__r_.__value_.__r.__words[0];
          }

          v39 = -[CLBeaconRegion initWithIdentifier:](v37, "initWithIdentifier:", [MEMORY[0x1E696AEC0] stringWithUTF8String:v38]);
          v21 = 0;
LABEL_87:
          [(CLRegion *)v39 setOnBehalfOfBundleId:v4];
          [(CLBeaconRegion *)v39 setNotifyEntryStateOnDisplay:v61];
          [(CLRegion *)v39 setNotifyOnEntry:HIBYTE(v63)];
          [(CLRegion *)v39 setNotifyOnExit:v63];
          [(CLRegion *)v39 setConservativeEntry:HIBYTE(v62)];
          [(CLRegion *)v39 setEmergency:v62];
          *a1 = v39;

          if ((v74[15] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          goto LABEL_105;
        }

        v42 = objc_alloc(MEMORY[0x1E696AFB0]);
        if (v74[15] >= 0)
        {
          v43 = buf;
        }

        else
        {
          v43 = *buf;
        }

        v21 = [v42 initWithUUIDString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v43)}];
        v44 = [CLBeaconRegion alloc];
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v68;
        }

        else
        {
          v45 = v68.__r_.__value_.__r.__words[0];
        }

        v24 = -[CLBeaconRegion initWithUUID:identifier:](v44, "initWithUUID:identifier:", v21, [MEMORY[0x1E696AEC0] stringWithUTF8String:v45]);
      }

      else
      {
        v29 = objc_alloc(MEMORY[0x1E696AFB0]);
        if (v74[15] >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        v21 = [v29 initWithUUIDString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v30)}];
        v31 = [CLBeaconRegion alloc];
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v68;
        }

        else
        {
          v32 = v68.__r_.__value_.__r.__words[0];
        }

        v24 = -[CLBeaconRegion initWithUUID:major:identifier:](v31, "initWithUUID:major:identifier:", v21, v58, [MEMORY[0x1E696AEC0] stringWithUTF8String:v32]);
      }
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x1E696AFB0]);
      if (v74[15] >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      v21 = [v19 initWithUUIDString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v20)}];
      v22 = [CLBeaconRegion alloc];
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v68;
      }

      else
      {
        v23 = v68.__r_.__value_.__r.__words[0];
      }

      v24 = -[CLBeaconRegion initWithUUID:major:minor:identifier:](v22, "initWithUUID:major:minor:identifier:", v21, v58, v57, [MEMORY[0x1E696AEC0] stringWithUTF8String:v23]);
    }

    v39 = v24;
    goto LABEL_87;
  }

  if (v64 != 2)
  {
    if (v64 != 3)
    {
      goto LABEL_105;
    }

    LODWORD(v58) = 0;
    sub_19B876178(v69, "kCLConnectionMessageReferenceFrameKey", &v58);
    sub_19B8767CC(v69, "kCLConnectionMessageMonitoringNearby", &v57);
    LOBYTE(v61) = 0;
    sub_19B8767CC(v69, "kCLConnectionMessageLowPowerFenceKey", &v61);
    v70 = 0.0;
    sub_19B92ACF0(v69, "kCLConnectionMessageLatitudeKey", buf);
    sub_19B92ACF0(v69, "kCLConnectionMessageLongitudeKey", v74);
    sub_19B92ACF0(v69, "kCLConnectionMessageRadiusKey", &v70);
    v10 = [_CLSignificantRegion alloc];
    v11 = *buf;
    v12 = *v74;
    v13 = v70;
    v14 = v58;
    v15 = v61;
    v16 = MEMORY[0x1E696AEC0];
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v68;
    }

    else
    {
      v17 = v68.__r_.__value_.__r.__words[0];
    }

    goto LABEL_25;
  }

  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  sub_19B876178(v69, "kCLConnectionMessagePolygonalVerticesCountKey", &v59);
  sub_19B92D410(v69, @"kCLConnectionMessagePolygonalVerticesKey", &v58);
  sub_19B876178(v69, "kCLConnectionMessageReferenceFrameKey", &v61);
  sub_19B8767CC(v69, "kCLConnectionMessageMonitoringNearby", &v60);
  v57 = 0;
  v25 = [MEMORY[0x1E696ACD0] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v58 error:&v57];
  v26 = [v25 count];
  if (v57)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v27 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v74 = 2082;
      *&v74[2] = "";
      *&v74[10] = 2114;
      *&v74[12] = v57;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to get vertices from encoded data, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }
    }

    v28 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v74 = 2082;
      *&v74[2] = "";
      *&v74[10] = 2114;
      *&v74[12] = v57;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to get vertices from encoded data", "{msg%{public}.0s:Unable to get vertices from encoded data, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    goto LABEL_105;
  }

  v33 = v26;
  if (v59 == v26)
  {
    if ((v59 - 102) > 0xFFFFFF9D)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v46 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67174657;
        *&buf[4] = v59;
        _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEBUG, "Copied %{private}d vertices", buf, 8u);
      }

      v47 = sub_19B87DD40();
      if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
        }

        LODWORD(v70) = 67174657;
        HIDWORD(v70) = v59;
        v48 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "Boolean CLClientPopulateRegionFromInfo(CLRegion **, CFDictionaryRef)", "CoreLocation: %s\n", v48);
        if (v48 != buf)
        {
          free(v48);
        }
      }

      v49 = [_CLPolygonalRegion alloc];
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v68;
      }

      else
      {
        v50 = v68.__r_.__value_.__r.__words[0];
      }

      v51 = -[_CLPolygonalRegion initWithVertices:identifier:](v49, "initWithVertices:identifier:", v25, [MEMORY[0x1E696AEC0] stringWithUTF8String:v50]);
      [(CLRegion *)v51 setReferenceFrame:v61];
      [(CLRegion *)v51 setEmergency:v62];
      *a1 = v51;
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v34 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        *&buf[4] = v59;
        _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_FAULT, "Number of vertices received invalid, %{public}d, internal", buf, 8u);
      }

      v35 = sub_19B87DD40();
      if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
        }

        LODWORD(v70) = 67240192;
        HIDWORD(v70) = v59;
        v36 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientPopulateRegionFromInfo(CLRegion **, CFDictionaryRef)", "CoreLocation: %s\n", v36);
LABEL_77:
        if (v36 != buf)
        {
          free(v36);
        }
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v40 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240448;
      *&buf[4] = v59;
      *v74 = 2050;
      *&v74[2] = v33;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_FAULT, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", buf, 0x12u);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      LODWORD(v70) = 67240448;
      HIDWORD(v70) = v59;
      v71 = 2050;
      v72 = v33;
      v36 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientPopulateRegionFromInfo(CLRegion **, CFDictionaryRef)", "CoreLocation: %s\n", v36);
      goto LABEL_77;
    }
  }

LABEL_105:
  v52 = *a1;
  v53 = *a1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  sub_19B8756F0(v69);
  v54 = *MEMORY[0x1E69E9840];
  return v53 != 0;
}

void sub_19B88D4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_19B8756F0(&a41);
  _Unwind_Resume(a1);
}

uint64_t CLClientGetGroundAltitudeAtLocation(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 360);
    v1 = *(a1 + 368);
  }

  return sub_19B9BF390();
}

uint64_t sub_19B88D5D0(CFDictionaryRef theDict, id *a2, _DWORD *a3)
{
  sub_19B874A98(v8, theDict);
  if (CLClientPopulateRegionFromInfo(a2, theDict))
  {
    v6 = sub_19B876178(v8, "kCLConnectionMessageEventKey", a3);
  }

  else
  {
    v6 = 0;
  }

  sub_19B8756F0(v8);
  return v6;
}

uint64_t sub_19B88D668(CFDictionaryRef theDict, id *a2, _DWORD *a3)
{
  sub_19B874A98(v8, theDict);
  v6 = 0;
  if (a2 && a3)
  {
    if (CLClientPopulateRegionFromInfo(a2, theDict))
    {
      v6 = sub_19B876178(v8, "kCLConnectionMessageStatusKey", a3);
    }

    else
    {
      v6 = 0;
    }
  }

  sub_19B8756F0(v8);
  return v6;
}

uint64_t sub_19B88D70C(CFDictionaryRef theDict, id *a2, _DWORD *a3)
{
  sub_19B874A98(v8, theDict);
  v6 = 0;
  if (a2 && a3)
  {
    if (CLClientPopulateRegionFromInfo(a2, theDict))
    {
      v6 = sub_19B876178(v8, "kCLConnectionMessageErrorKey", a3);
    }

    else
    {
      v6 = 0;
    }

    a3[1] = 0;
    a3[2] = 0;
  }

  sub_19B8756F0(v8);
  return v6;
}

BOOL sub_19B88D7B4(CFDictionaryRef theDict, id *a2, _BYTE *a3, id *a4)
{
  sub_19B874A98(v11, theDict);
  v8 = 0;
  if (a2 && a3 && a4)
  {
    *a3 = 1;
    v8 = CLClientPopulateRegionFromInfo(a2, theDict);
    sub_19B87B468(v10);
    if (sub_19B92BD80(v11, "kCLConnectionMessageAlternateRegionKey", v10))
    {
      if (v8)
      {
        v8 = CLClientPopulateRegionFromInfo(a4, v10[1]);
      }
    }

    else
    {
      *a3 = 0;
    }

    sub_19B8756F0(v10);
  }

  sub_19B8756F0(v11);
  return v8;
}

void sub_19B88D884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88D8AC(CFDictionaryRef theDict, void *a2)
{
  sub_19B874A98(v4, theDict);
  if (a2)
  {
    a2 = sub_19B92ACF0(v4, "kCLConnectionMessageRegionWatchdogSinceLast", a2);
  }

  sub_19B8756F0(v4);
  return a2;
}

uint64_t sub_19B88D920(uint64_t a1, void *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 240);
  v26[3] = v6;
  pthread_mutex_lock(v6);
  v27 = 257;
  sub_19B87B468(v26);
  sub_19B87BBB4();
  if ((sub_19B93BE2C() & 0x400000) == 0)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v8 = [a2 count];
  v9 = *(a1 + 392);
  if (v8)
  {
    if ((*(a1 + 392) & 4) != 0)
    {
      [a2 count];
      entr_act_modify();
      goto LABEL_10;
    }

    [a2 count];
    entr_act_begin();
    v10 = *(a1 + 392) | 4;
    goto LABEL_8;
  }

  if ((*(a1 + 392) & 4) != 0)
  {
    entr_act_end();
    v10 = *(a1 + 392) & 0xFB;
LABEL_8:
    *(a1 + 392) = v10;
  }

LABEL_10:
  v19 = a3;
  v18 = a1;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [a2 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (![v14 onBehalfOfBundleId])
        {
          sub_19B87B468(v21);
          sub_19B87D0EC(v21, "kCLConnectionMessageIdentifierKey", [v14 identifier]);
          v20 = [v14 definitionMask];
          sub_19B87B384(v21, "kCLConnectionMessageRegionDefinitionKey", &v20);
          v15 = [objc_msgSend(v14 "UUID")];
          if (v15)
          {
            sub_19B87C3A4(v21, "kCLConnectionMessageProximityUUIDKey", v15);
          }

          else
          {
            sub_19B92E6C8(v21, "kCLConnectionMessageProximityUUIDKey", "");
          }

          LOWORD(v20) = [objc_msgSend(v14 "major")];
          sub_19B92D79C(v21, "kCLConnectionMessageMajorKey", &v20);
          LOWORD(v20) = [objc_msgSend(v14 "minor")];
          sub_19B92D79C(v21, "kCLConnectionMessageMinorKey", &v20);
          LOBYTE(v20) = [v14 notifyOnEntry];
          sub_19B87B7CC(v26, "kCLConnectionMessageNotifyOnEntryKey", &v20);
          LOBYTE(v20) = [v14 notifyOnExit];
          sub_19B87B7CC(v26, "kCLConnectionMessageNotifyOnExitKey", &v20);
          LOBYTE(v20) = [v14 notifyEntryStateOnDisplay];
          sub_19B87B7CC(v26, "kCLConnectionMessageNotifyEntryStateOnDisplayKey", &v20);
          LOBYTE(v20) = [v14 conservativeEntry];
          sub_19B87B7CC(v26, "kCLConnectionMessageConservativeEntry", &v20);
          LOBYTE(v20) = [v14 emergency];
          sub_19B87B7CC(v26, "kCLConnectionMessageEmergencyKey", &v20);
          sub_19B930818(v26, "kCLConnectionMessageRegionsKey", v21);
          sub_19B8756F0(v21);
        }
      }

      v11 = [a2 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  LODWORD(v21[0]) = v19;
  sub_19B87B384(v26, "kCLConnectionMessageSubscribeKey", v21);
  v7 = 1;
  sub_19B87B6CC(v18, "kCLConnectionMessageRanging", v26);
LABEL_23:
  sub_19B8756F0(v26);
  pthread_mutex_unlock(v6);
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B88DCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_19B8756F0(&a24);
  sub_19B888D7C(&a26);
  _Unwind_Resume(a1);
}

BOOL sub_19B88DD54(CFDictionaryRef theDict, id *a2, CFTypeRef *a3)
{
  sub_19B874A98(v10, theDict);
  *a3 = 0;
  if (!a2)
  {
    goto LABEL_8;
  }

  if (CLClientPopulateRegionFromInfo(a2, theDict))
  {
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "kCLConnectionMessageBeaconsKey", 0x8000100u);
    *a3 = CFDictionaryGetValue(v10[1], v6);
    CFRelease(v6);
    if (*a3)
    {
      CFRetain(*a3);
    }

    v7 = *a2;
  }

  if (*a2)
  {
    v8 = *a3 != 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  sub_19B8756F0(v10);
  return v8;
}

uint64_t sub_19B88DE40(CFDictionaryRef theDict, id *a2, _DWORD *a3)
{
  sub_19B874A98(v8, theDict);
  v6 = 0;
  if (a2 && a3)
  {
    if (CLClientPopulateRegionFromInfo(a2, theDict))
    {
      v6 = sub_19B876178(v8, "kCLConnectionMessageErrorKey", a3);
    }

    else
    {
      v6 = 0;
    }

    a3[1] = 0;
    a3[2] = 0;
  }

  sub_19B8756F0(v8);
  return v6;
}

uint64_t CLClientGetAuthorizationStatus(const __CFDictionary *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 1;
  AuthorizationStatusAndCorrectiveCompensation = CLClientGetAuthorizationStatusAndCorrectiveCompensation(a1, a2, &v6, &v7);
  if (AuthorizationStatusAndCorrectiveCompensation && v6)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Client is subject to corrective compensation, but hasn't been updated to find out about it yet}", buf, 0x12u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return AuthorizationStatusAndCorrectiveCompensation;
}

void *CLClientSetMatchInfoEnabled(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageMatchInfoEnabled", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88E0A0(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageGroundAltitudeEnabled", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88E158(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageFusionInfoEnabled", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E1E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88E210(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageAllowsLocationPrompts", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E2A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientSetShowLocationPrompt(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageShowLocationPrompt", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientMarkAsHavingReceivedLocation(uint64_t a1)
{
  sub_19B87B468(v4);
  v2 = *(a1 + 240);
  pthread_mutex_lock(v2);
  sub_19B87B6CC(a1, "kCLConnectionMessageMarkAsHavingReceivedLocation", v4);
  pthread_mutex_unlock(v2);
  return sub_19B8756F0(v4);
}

void sub_19B88E3F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void CLClientSetAutomaticPromptingEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_INFO, "kCLConnectionMessageAutomaticPromptingEnabled is not supported", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLClientSetAutomaticPromptingEnabled(CLClientRef, Boolean)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void *CLClientUpdateARSessionState(uint64_t a1, uint64_t a2)
{
  sub_19B87B468(v6);
  sub_19B87D0EC(v6, "kCLConnectionMessageARSessionState", a2);
  v4 = *(a1 + 240);
  pthread_mutex_lock(v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageARSessionState", v6);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v6);
}

void sub_19B88E648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientUpdateVIOEstimation(uint64_t a1, uint64_t a2)
{
  sub_19B87B468(v6);
  sub_19B87D0EC(v6, "kCLConnectionMessageVIOEstimation", a2);
  v4 = *(a1 + 240);
  pthread_mutex_lock(v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageVIOEstimation", v6);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v6);
}

void sub_19B88E6FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientUpdateVLLocalizationResult(uint64_t a1, uint64_t a2)
{
  sub_19B87B468(v6);
  sub_19B87D0EC(v6, "kCLConnectionMessageVLLocalizationResult", a2);
  v4 = *(a1 + 240);
  pthread_mutex_lock(v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageVLLocalizationResult", v6);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v6);
}

void sub_19B88E7B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88E7D8(CFDictionaryRef theDict, _BYTE *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_19B874A98(v15, theDict);
  if (!a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "Invalid call to CLClientGetAutopauseState", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v14 = 0;
    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientGetAutopauseState(CFDictionaryRef, Boolean *, Boolean *)", "CoreLocation: %s\n", v8);
    goto LABEL_25;
  }

  v13 = 0;
  if (!sub_19B8767CC(v15, "kCLConnectionMessageAutopauseStatusKey", &v13 + 1) || !sub_19B8767CC(v15, "kCLConnectionMessageAutopauseOverrideKey", &v13))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "malformed message: kCLConnectionMessageAutopauseStatus", buf, 2u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v14 = 0;
    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientGetAutopauseState(CFDictionaryRef, Boolean *, Boolean *)", "CoreLocation: %s\n", v8);
LABEL_25:
    if (v8 != buf)
    {
      free(v8);
    }

LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  *a2 = HIBYTE(v13);
  *a3 = v13;
  v5 = 1;
LABEL_28:
  sub_19B8756F0(v15);
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_19B88EB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88EB50(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageAllowsBackgroundLocationUpdatesKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageAllowsBackgroundLocationUpdates", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88EBE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88EC08(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageShowsBackgroundLocationIndicatorKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageShowsBackgroundLocationIndicator", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88EC98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88ECC0(uint64_t a1, double a2, double a3)
{
  v11 = a2;
  v10 = a3;
  entr_act_set();
  entr_act_set();
  sub_19B87B468(v9);
  v6[0] = 1;
  sub_19B87B7CC(v9, "kCLConnectionMessageBatchAllowedKey", v6);
  sub_19B87D390(v9, "kCLConnectionMessageBatchDistanceKey", &v11);
  sub_19B87D390(v9, "kCLConnectionMessageBatchTimeoutKey", &v10);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageBatch", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88EDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88EE08(uint64_t a1)
{
  entr_act_set();
  entr_act_set();
  sub_19B87B468(v7);
  v4[0] = 0;
  sub_19B87B7CC(v7, "kCLConnectionMessageBatchAllowedKey", v4);
  v2 = *(a1 + 240);
  v5 = v2;
  pthread_mutex_lock(v2);
  v6 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageBatch", v7);
  pthread_mutex_unlock(v2);
  return sub_19B8756F0(v7);
}

void sub_19B88EEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88EEEC(uint64_t a1, const __CFDictionary *a2, BOOL *a3, _DWORD *a4)
{
  entr_act_set();
  entr_act_set();
  sub_19B874A98(v9, a2);
  v7 = 0;
  if (a3 && a4)
  {
    sub_19B876178(v9, "kCLConnectionMessageErrorKey", a4);
    a4[1] = 0;
    a4[2] = 0;
    *a3 = *a4 == -1;
    v7 = 1;
  }

  sub_19B8756F0(v9);
  return v7;
}

uint64_t sub_19B88EFC0(uint64_t a1)
{
  v2 = *(a1 + 240);
  v4[3] = v2;
  pthread_mutex_lock(v2);
  v5 = 257;
  sub_19B87B468(v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageRegisterAsLocationClient", v4);
  sub_19B8756F0(v4);
  return pthread_mutex_unlock(v2);
}

void sub_19B88F034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_19B8756F0(va);
  sub_19B888D7C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88F058(CFDictionaryRef theDict, UInt8 *a2)
{
  cf = 0;
  sub_19B874A98(v6, theDict);
  sub_19B87F9E8(v6, "kCLConnectionMessageVehicleSpeedKey", &cf);
  if (cf && (v3 = CFGetTypeID(cf), v3 == CFDataGetTypeID()))
  {
    v8.location = 0;
    v8.length = 32;
    CFDataGetBytes(cf, v8, a2);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_19B8756F0(v6);
  return v4;
}

void sub_19B88F0F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88F104(CFDictionaryRef theDict, UInt8 *a2)
{
  cf = 0;
  sub_19B874A98(v6, theDict);
  sub_19B87F9E8(v6, "kCLConnectionMessageVehicleHeadingKey", &cf);
  if (cf && (v3 = CFGetTypeID(cf), v3 == CFDataGetTypeID()))
  {
    v8.location = 0;
    v8.length = 16;
    CFDataGetBytes(cf, v8, a2);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_19B8756F0(v6);
  return v4;
}

void sub_19B88F19C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStartVehicleSpeedUpdates(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 1;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageVehicleSpeed", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88F21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStopVehicleSpeedUpdates(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 0;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageVehicleSpeed", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88F29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStartVehicleHeadingUpdates(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 1;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageVehicleHeading", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88F320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStopVehicleHeadingUpdates(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 0;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageVehicleHeading", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88F3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88F3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "Invalid call to CLClientRequestRecordingOrLocalization", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLClientRequestRecordingOrLocalization(CLClientRef, const char *const, CFDictionaryRef, void (^)(BOOL, NSError *))", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v10 = *MEMORY[0x1E696A578];
  v11 = @"CoreLocation MiLo RequestRecordingOrLocalization API Deprecated";
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}];
  if (a4)
  {
    result = (*(a4 + 16))(a4, 0, result);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88F5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "Invalid call to CLClientDonateMicroLocationTruthTag", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLClientDonateMicroLocationTruthTag(CLClientRef, CFStringRef, CFStringRef, void (^)(NSError *))", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v10 = *MEMORY[0x1E696A578];
  v11 = @"CoreLocation MiLo DonateMicroLocationTruthTag API Deprecated";
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}];
  if (a4)
  {
    result = (*(a4 + 16))(a4, result);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "Invalid call to CLClientDonateMicroLocationTruthTagBetweenDates", buf, 2u);
  }

  v7 = sub_19B87DD40();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLClientDonateMicroLocationTruthTagBetweenDates(CLClientRef, CFStringRef, CFDateRef, CFDateRef, void (^)(NSError *))", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v11 = *MEMORY[0x1E696A578];
  v12 = @"CoreLocation MiLo DonateMicroLocationTruthTagBetweenDates API Deprecated";
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1)}];
  if (a5)
  {
    result = (*(a5 + 16))(a5, result);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88FA04(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Invalid call to CLExportMicroLocationDatabaseTables", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLExportMicroLocationDatabaseTables(CLClientRef, void (^)(NSError *, CFDictionaryRef))", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v8 = *MEMORY[0x1E696A578];
  v9 = @"CoreLocation MiLo ExportMicroLocationDatabaseTables API Deprecated";
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v9, &v8, 1)}];
  if (a2)
  {
    result = (*(a2 + 16))(a2, result, MEMORY[0x1E695E0F8]);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88FC24(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Invalid call to CLExportMicroLocationDataForMigration", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLExportMicroLocationDataForMigration(CLClientRef, void (^)(NSError *, CFDictionaryRef))", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v8 = *MEMORY[0x1E696A578];
  v9 = @"CoreLocation MiLo ExportMicroLocationDataForMigration API Deprecated";
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v9, &v8, 1)}];
  if (a2)
  {
    result = (*(a2 + 16))(a2, result, MEMORY[0x1E695E0F8]);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B88FE44(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Invalid call to CLClientRequestMicroLocationStaticSourcesStatistics", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLClientRequestMicroLocationStaticSourcesStatistics(CLClientRef, void (^)(NSError *, CFDictionaryRef))", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v8 = *MEMORY[0x1E696A578];
  v9 = @"CoreLocation MiLo RequestMicroLocationStaticSourcesStatistics API Deprecated";
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v9, &v8, 1)}];
  if (a2)
  {
    result = (*(a2 + 16))(a2, result, MEMORY[0x1E695E0F8]);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B890064(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Invalid call to CLClientRequestMicroLocationLearning", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLClientRequestMicroLocationLearning(CLClientRef, void (^)(BOOL, NSError *))", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v8 = *MEMORY[0x1E696A578];
  v9 = @"CoreLocation MiLo RequestMicroLocationLearning API Deprecated";
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v9, &v8, 1)}];
  if (a2)
  {
    result = (*(a2 + 16))(a2, 0, result);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B890280()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "Invalid call to CLClientPurgeMicroLocationSemiSupervisedData", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLClientPurgeMicroLocationSemiSupervisedData(CLClientRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_19B89041C()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "Invalid call to CLClientPurgeMicroLocationData", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLClientPurgeMicroLocationData(CLClientRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B8905B8(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCLConnectionMessageFetchEstimatedLocationDateKey";
  v8[0] = a2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = *(a1 + 232);
  result = sub_19B890C98(a1, "kCLConnectionMessageFetchEstimatedLocationAtDate", v3);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B89069C(uint64_t a1, CLConnectionMessage **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v3, v6);
    v8 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageErrorKey"];
    v9 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageFetchEstimatedLocationLocationKey"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_19B89084C;
    v15[3] = &unk_1E753CD30;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v15[5] = v8;
    v15[6] = v11;
    v15[4] = v9;
    v12 = v15;
    v13 = v10;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_19B8907E8;
    v16[3] = &unk_1E753CCE0;
    v13 = *(a1 + 32);
    v16[4] = *(a1 + 40);
    v12 = v16;
  }

  return [v13 async:v12];
}

uint64_t sub_19B8907E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

uint64_t sub_19B890864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v6 = *(a1 + 384);
  if (v6 && (v7 = *v6, *v6))
  {
    v8 = 0;
    v9 = 0;
    v10 = v6 + 1;
    do
    {
      v9 ^= v7 << (v8 & 0x18);
      v11 = *v10++;
      v7 = v11;
      v8 += 8;
    }

    while (v11);
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  v12 = *a5;
  if (*a5)
  {
    v13 = 0;
    v14 = a5 + 1;
    do
    {
      v9 ^= v12 << (v13 & 0x18);
      v15 = *v14++;
      v12 = v15;
      v13 += 8;
    }

    while (v15);
  }

LABEL_11:
  if (a6)
  {
    v16 = *a6;
    if (*a6)
    {
      v17 = 0;
      v18 = a6 + 1;
      do
      {
        v9 ^= v16 << (v17 & 0x18);
        v19 = *v18++;
        v16 = v19;
        v17 += 8;
      }

      while (v19);
    }
  }

  return entr_act_modify();
}

void sub_19B890914(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  NSLog(&cfstr_WarningSupport.isa);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v7 = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Supported CoreLocation API call rate exceeded, behavior undefined., count:%{public}lu}", &v7, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }
  }

  v4 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v5 = *(a1 + 32);
    v7 = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = v5;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Supported CoreLocation API call rate exceeded, behavior undefined.", "{msg%{public}.0s:Supported CoreLocation API call rate exceeded, behavior undefined., count:%{public}lu}", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B890AEC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_19B890B48(exception, a1);
  __cxa_throw(exception, off_1E753CC30, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_19B890B48(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_19B890B94(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_19B890BF0(exception, a1);
  __cxa_throw(exception, off_1E753CC38, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_19B890BF0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_19B890C44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6B5E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B890C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v9 = a2;
  v4 = *(a1 + 240);
  v6 = v4;
  pthread_mutex_lock(v4);
  v7 = 257;
  if (!*(a1 + 225))
  {
    sub_19B890E08();
  }

  return pthread_mutex_unlock(v4);
}

void sub_19B890DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a5)
  {
    sub_19B8750F8(a5);
  }

  if (a9)
  {
    sub_19B8750F8(a9);
  }

  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void *sub_19B890E7C(void *a1, char **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B890ED8((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B890ED8(uint64_t a1, char **a2, void *a3)
{
  sub_19B8759E8(__p, *a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B890F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B890F50(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B890FA4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B890FA4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_19B891A08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = -[CLMonitor initWithLedgerName:path:onSilo:authIdentity:locationManager:handler:]([CLMonitor alloc], "initWithLedgerName:path:onSilo:authIdentity:locationManager:handler:", [*(a1 + 32) name], objc_msgSend(*(a1 + 32), "path"), *(*(a1 + 32) + 8), *(a1 + 40), objc_msgSend(*(a1 + 32), "manager"), objc_msgSend(*(a1 + 32), "eventHandler"));
  [objc_msgSend(*(a1 + 32) "manager")];
  [*(a1 + 32) setIdentityToken:0];
  [*(a1 + 32) setStorageToken:0];
  if ([*(a1 + 32) vendingHandler])
  {
    v4 = [*(a1 + 32) vendingHandler];
    (*(v4 + 16))(v4, v3);
  }

  v5 = *(a1 + 32);

  objc_autoreleasePoolPop(v2);
}

void sub_19B891FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8943F4;
  block[3] = &unk_1E753CC90;
  block[4] = a2;
  dispatch_async(v2, block);
}

void sub_19B8921E8(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    v3 = [*(a1 + 32) locationManagerRoutine];
    v4 = *(a1 + 40);
    v5 = *MEMORY[0x1E69E9840];

    [v2 locationManager:v3 didUpdateLocations:v4];
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v6 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 68289026;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendLocations to RT, not respondsToSelector @selector(locationManager:didUpdateLocations:)}", v8, 0x12u);
    }

    v7 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_19B89248C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    [*(a1 + 32) locationManagerRoutine];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE66B58](v2, sel_locationManager_didUpdateLocations_completion_);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v6 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendLocations to RT, not respondsToSelector @selector(locationManager:didUpdateLocations:completion:)}", v9, 0x12u);
    }

    [*(a1 + 32) didUpdateLocations:*(a1 + 40)];
    result = (*(*(a1 + 48) + 16))();
    v7 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void sub_19B89272C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) inertialDelegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) inertialDelegate];
    [*(a1 + 32) locationManagerRoutine];
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](v2, sel_inertialDataManager_didUpdateInertialData_);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v5 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendInertial to RT, not respondsToSelector @selector(inertialDataManager:didUpdateInertialData:)}", v7, 0x12u);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_19B892DE4(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v3 = result;
    if (a2)
    {
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v4 = qword_1EAFE46F8;
      if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = a2;
        _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#ADL #location #routine getRemoteObjectProxy failed with error %@", buf, 0xCu);
      }

      v5 = sub_19B87DD40();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46C0 != -1)
        {
          dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
        }

        v6 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[_CLLocationManagerRoutineProxy getRemoteObjectProxyWithErrorHandler:]_block_invoke", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }
    }

    result = (*(*(v3 + 32) + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B893208(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [objc_msgSend(*(a1 + 32) "locationManagerRoutineProxy")];
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "locationManagerRoutineProxy")];

  return [v2 startUpdatingLocation];
}

uint64_t sub_19B89331C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "locationManagerRoutineProxy")];
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "locationManagerRoutineProxy")];

  return [v2 stopUpdatingLocation];
}

uint64_t sub_19B893578(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) locationManagerRoutineProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B8936E4;
  v8[3] = &unk_1E753CF88;
  v8[4] = *(a1 + 48);
  result = [v2 getRemoteObjectProxyWithErrorHandler:v8];
  if (result)
  {
    v4 = result;
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v5 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #routine fetchLocationAtDate, proxy:%{public, location:escape_only}@, date:%{public, location:escape_only}@}", buf, 0x26u);
    }

    result = [v4 fetchLocationAtDate:*(a1 + 40) withHandler:*(a1 + 48)];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8936E4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t sub_19B893918(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) locationManagerRoutineProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B893A8C;
  v8[3] = &unk_1E753CF88;
  v8[4] = *(a1 + 40);
  result = [v2 getRemoteObjectProxyWithErrorHandler:v8];
  if (result)
  {
    v4 = result;
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v5 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 48);
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v4;
      v15 = 2050;
      v16 = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #routine fetchLocationAtMachContinuousTime, proxy:%{public, location:escape_only}@, mct:%{public}0.3f}", buf, 0x26u);
    }

    result = [v4 fetchLocationAtMachContinuousTime:*(a1 + 40) withHandler:*(a1 + 48)];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B893A8C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t sub_19B893CB8(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) locationManagerRoutineProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B893E2C;
  v8[3] = &unk_1E753CF88;
  v8[4] = *(a1 + 40);
  result = [v2 getRemoteObjectProxyWithErrorHandler:v8];
  if (result)
  {
    v4 = result;
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v5 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 48);
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v4;
      v15 = 1026;
      v16 = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #routine fetchLocationsInLastSeconds, proxy:%{public, location:escape_only}@, numberOfSeconds:%{public}d}", buf, 0x22u);
    }

    result = [v4 fetchLocationsInLastSeconds:*(a1 + 48) withHandler:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B893E2C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t sub_19B894058(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) locationManagerRoutineProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B8941C4;
  v8[3] = &unk_1E753CF88;
  v8[4] = *(a1 + 48);
  result = [v2 getRemoteObjectProxyWithErrorHandler:v8];
  if (result)
  {
    v4 = result;
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v5 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #routine fetchRecentLocationsWithOptions, proxy:%{public, location:escape_only}@, fetchOptions:%{public, location:escape_only}@}", buf, 0x26u);
    }

    result = [v4 fetchRecentLocationsWithOptions:*(a1 + 40) withHandler:*(a1 + 48)];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8941C4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t sub_19B894268(uint64_t a1)
{
  v2 = [*(a1 + 32) locationManagerRoutineProxy];
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

uint64_t sub_19B894350(uint64_t a1)
{
  v2 = [*(a1 + 32) locationManagerRoutineProxy];
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v2, sel_setInertialDelegate_);
}

os_log_t sub_19B8943C4()
{
  result = os_log_create("com.apple.locationd.Core", "Routine");
  qword_1EAFE46F8 = result;
  return result;
}

CLEmergencyEnablementAssertion *sub_19B8943FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    result = 0;
    if (a1 && a2)
    {
      v7[0] = @"kCLConnectionMessageBundleIdentifierKey";
      v7[1] = @"kCLConnectionMessageBundlePathKey";
      v8[0] = a1;
      v8[1] = a2;
      v8[2] = a3;
      v7[2] = @"kCLConnectionMessagePurposeKey";
      v7[3] = @"kCLConnectionMessageOverrideDeauthorizationKey";
      v8[3] = [MEMORY[0x1E696AD98] numberWithBool:a4];
      result = -[CLAssertion initWithRegistrationMessageName:messageDictionary:]([CLEmergencyEnablementAssertion alloc], "initWithRegistrationMessageName:messageDictionary:", "EmergencyEnablementAssertion/kCLConnectionMessage", [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4]);
    }
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8982A0(uint64_t a1, void *a2)
{
  [a2 setDistanceFilter:*MEMORY[0x1E6985C60]];
  [a2 setDesiredAccuracy:-1.0];
  [a2 setHeadingFilter:1.0];
  [a2 setAllowsLocationPrompts:1];
  [a2 setAllowsMapCorrection:1];
  dyld_program_sdk_at_least();

  return MEMORY[0x1EEE66B58](a2, sel_setCourtesyPromptNeeded_);
}

void sub_19B898460(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:10 userInfo:0]);
  v2 = *(a1 + 32);
}

dispatch_queue_t sub_19B89AD14()
{
  result = dispatch_queue_create("com.apple.corelocation.shared", 0);
  qword_1EAFE50F0 = result;
  return result;
}

void sub_19B89D978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t sub_19B89E544(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 40);
  v4 = objc_opt_respondsToSelector();
  v5 = *(*(a1 + 48) + 8);
  if (v4)
  {
    entr_act_modify();
    v6 = *(a1 + 40);
    v7 = NSStringFromSelector(sel_locationManagerDidResumeLocationUpdates_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12[0] = 68289794;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v9;
      v17 = 2050;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", v12, 0x30u);
    }

    [*(a1 + 40) locationManagerDidResumeLocationUpdates:*(a1 + 32)];
  }

  else
  {
    entr_act_modify();
  }

  result = objc_sync_exit(v2);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B89EA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_activity_scope_state_s state)
{
  objc_sync_exit(v13);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8A0AE8(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 40);
    v5 = NSStringFromSelector(sel_locationManager_monitoringDidFailForRegion_withError_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 48) identifier];
      [*(a1 + 48) center];
      v10 = v9;
      [*(a1 + 48) center];
      v12 = v11;
      [*(a1 + 48) radius];
      v16[0] = 68290819;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      v20 = v7;
      v21 = 2050;
      v22 = v4;
      v23 = 2114;
      v24 = v5;
      v25 = 2113;
      v26 = v8;
      v27 = 2053;
      v28 = v10;
      v29 = 2053;
      v30 = v12;
      v31 = 2050;
      v32 = v13;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", v16, 0x58u);
    }

    [*(a1 + 40) locationManager:*(a1 + 32) monitoringDidFailForRegion:*(a1 + 48) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomain", 5, 0)}];
  }

  result = objc_sync_exit(v2);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8A0FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  objc_sync_exit(v9);
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

void sub_19B8A1338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  objc_sync_exit(v9);
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8A1B60(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 40);
    v5 = NSStringFromSelector(sel_locationManager_rangingBeaconsDidFailForRegion_withError_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 48);
      v11[0] = 68290051;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      v15 = v7;
      v16 = 2050;
      v17 = v4;
      v18 = 2114;
      v19 = v5;
      v20 = 2113;
      v21 = v8;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region:%{private, location:escape_only}@}", v11, 0x3Au);
    }

    [*(a1 + 40) locationManager:*(a1 + 32) rangingBeaconsDidFailForRegion:*(a1 + 48) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomain", 17, 0)}];
  }

  result = objc_sync_exit(v2);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8A2248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  objc_sync_exit(v9);
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8A2644(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:17 userInfo:0];
    v5 = *(a1 + 40);
    v6 = NSStringFromSelector(sel_locationManager_didFailRangingBeaconsForConstraint_error_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v12[0] = 68290051;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v8;
      v17 = 2050;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2113;
      v22 = v9;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, constraint:%{private, location:escape_only}@}", v12, 0x3Au);
    }

    [*(a1 + 40) locationManager:*(a1 + 32) didFailRangingBeaconsForConstraint:*(a1 + 48) error:v4];
  }

  result = objc_sync_exit(v2);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8A31E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 || !a3)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
    }

    v6 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      v10 = 68289283;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2113;
      v15 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationManager, Could not export MicroLocation database tables, error:%{private, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
      }
    }

    v7 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      v10 = 68289283;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2113;
      v15 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LocationManager, Could not export MicroLocation database tables", "{msg%{public}.0s:LocationManager, Could not export MicroLocation database tables, error:%{private, location:escape_only}@}", &v10, 0x1Cu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2, a3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8A360C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 || !a3)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
    }

    v6 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      v10 = 68289283;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2113;
      v15 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationManager, Could not export MicroLocation database tables for migration, error:%{private, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
      }
    }

    v7 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      v10 = 68289283;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2113;
      v15 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LocationManager, Could not export MicroLocation database tables for migration", "{msg%{public}.0s:LocationManager, Could not export MicroLocation database tables for migration, error:%{private, location:escape_only}@}", &v10, 0x1Cu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2, a3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8A3A38(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2 || !a3)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
    }

    v5 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289283;
      v40 = 2082;
      v41 = "";
      v42 = 2113;
      v43 = a2;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationManager, couldn't export per anchor per cluster measured value statistics, error:%{private, location:escape_only}@}", &buf, 0x1Cu);
    }
  }

  if (*(a1 + 32))
  {
    v23 = a1;
    v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a3, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = [a3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v26)
    {
      v24 = *v34;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(a3);
          }

          v28 = *(*(&v33 + 1) + 8 * i);
          v7 = [a3 objectForKeyedSubscript:?];
          v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v30;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v30 != v11)
                {
                  objc_enumerationMutation(v7);
                }

                v13 = *(*(&v29 + 1) + 8 * j);
                v14 = [v7 objectForKeyedSubscript:v13];
                v15 = [_CLMicroLocationClusterIdAndClusterData alloc];
                [objc_msgSend(v14 objectAtIndexedSubscript:{0), "doubleValue"}];
                v17 = v16;
                [objc_msgSend(v14 objectAtIndexedSubscript:{1), "doubleValue"}];
                v19 = [(_CLMicroLocationClusterIdAndClusterData *)v15 initWithClusterIdentifier:v13 meanBleRssi:v17 meanUwbRange:v18];
                [v8 addObject:v19];
              }

              v10 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v10);
          }

          v20 = [[_CLMicroLocationSourceIdAndSourceData alloc] initWithSourceIdsIdentifier:v28 sourceData:v8];
          [v25 addObject:v20];
        }

        v26 = [a3 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v26);
    }

    v21 = [[_CLMicroLocationSourcesStatisticsResult alloc] initWithSourcesData:v25];
    (*(*(v23 + 32) + 16))();
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_19B8A7934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  objc_sync_exit(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8A978C(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [a2 count];
  if (!a3 && !v6)
  {
    a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:6 userInfo:0];
  }

  if (a3)
  {
    v7 = *(a1 + 40);
    v8 = *MEMORY[0x1E69E9840];

    return [v7 callPlaceInferenceHandlerWithResult:0 error:a3];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(a2);
          }

          v15 = [[_CLPlaceInference alloc] initWithUserType:0 placeType:2 placemark:*(*(&v17 + 1) + 8 * i) referenceLocation:*(a1 + 48) confidence:0 preferredName:0 loiIdentifier:0.4];
          [v10 addObject:v15];
        }

        v12 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    result = [*(a1 + 40) callPlaceInferenceHandlerWithResult:v10 error:0];
    v16 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_19B8AB46C()
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

void sub_19B8ABFD0(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if ([a2 count] == 8)
  {
    v4 = [objc_msgSend(a2 objectAtIndex:{0), "intValue"}];
    v5 = 0;
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(a2, "objectAtIndex:", 1)}];
    }

    if ((v4 & 2) != 0)
    {
      v6 = [a2 objectAtIndex:2];
      if ((v4 & 4) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
      if ((v4 & 4) != 0)
      {
LABEL_6:
        v7 = [a2 objectAtIndex:3];
LABEL_22:
        v12 = [objc_msgSend(a2 objectAtIndex:{4), "integerValue"}] - 1;
        if (v12 < 3)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = 0;
        }

        [objc_msgSend(a2 objectAtIndex:{5), "doubleValue"}];
        v15 = v14;
        v16 = [objc_msgSend(a2 objectAtIndex:{6), "shortValue"}];
        [objc_msgSend(a2 objectAtIndex:{7), "doubleValue"}];
        v19 = [[CLBeacon alloc] initWithUUID:v5 major:v6 minor:v7 proximity:v13 accuracy:v16 rssi:v15 timestamp:v17];
        [*(a1 + 32) addObject:?];
        v18 = *MEMORY[0x1E69E9840];

        return;
      }
    }

    v7 = 0;
    goto LABEL_22;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [a2 count];
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Client beacon is invalid (count,%lu).", buf, 0xCu);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    [a2 count];
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventRanging:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B8B19DC(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v9 = a2;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "#diagnosticManager failed to get remoteObjectProxy with error %@", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "+[CLLocationManager dumpDiagnosticFilesWithHandler:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B8B1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "#diagnosticManager error copying files: %@", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "+[CLLocationManager dumpDiagnosticFilesWithHandler:]_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B8B4A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_activity_scope_state_s state, id location)
{
  objc_sync_exit(v20);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void *sub_19B8B4AD0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 48));
  if (result)
  {
    v3 = result;
    objc_sync_enter(result);

    *(*(a1 + 32) + 248) = [*(a1 + 40) copy];
    *(*(a1 + 32) + 256) = *(a1 + 56);
    objc_sync_exit(v3);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "Start continuous PlaceInferences", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(_CLPlaceInferenceExtensions) _fetchContinuousPlaceInferencesWithFidelityPolicy:handler:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = sub_19B884630(*(*(a1 + 32) + 8), *(a1 + 56));
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B8B51F0()
{
  result = os_log_create("com.apple.locationd.Position", "Microlocation");
  qword_1EAFE4730 = result;
  return result;
}

const char *sub_19B8B5220(unsigned int a1)
{
  if (a1 > 5)
  {
    return "NONE";
  }

  else
  {
    return off_1E753D1A8[a1];
  }
}

void sub_19B8B5244(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,client,#warning,unexpected message,%s", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLGNSSStateQueryAssertionResponseInternal::CLGNSSStateQueryAssertionResponseInternal(dispatch_queue_t, const char *, NSDictionary *, CLGNSSStateQueryAssertionResponseCallback)_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B8B543C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 8) = 0;
  }

  if (*a1)
  {
    dispatch_release(*a1);
    *a1 = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    v4 = MEMORY[0x19EAE95D0]();
    result = MEMORY[0x19EAE98C0](v4, 0xB0C40BC2CC919);
  }

  *(a1 + 16) = 0;
  return result;
}

void sub_19B8B5854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  if (a25)
  {
    sub_19B8750F8(a25);
  }

  MEMORY[0x19EAE98C0](v33, v34);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B8B5950(uint64_t *result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,client,~CLGNSSStateQueryAssertionResponseInternal", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLGNSSStateQueryAssertionResponseInternal::~CLGNSSStateQueryAssertionResponseInternal()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    sub_19B8B543C(v2);
    v6 = *MEMORY[0x1E69E9840];

    JUMPOUT(0x19EAE98C0);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8B5B64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

CLGNSSStateQueryAssertionResponse *sub_19B8B5B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,reason missing}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "#CLGNSSStateQueryAssertion,client,reason missing";
    v9 = "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,reason missing}";
    goto LABEL_35;
  }

  if (!a1 || !a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,bundleID or bundlePath needed}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "#CLGNSSStateQueryAssertion,client,bundleID or bundlePath needed";
    v9 = "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,bundleID or bundlePath needed}";
    goto LABEL_35;
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,nil callback queue}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "#CLGNSSStateQueryAssertion,client,nil callback queue";
    v9 = "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,nil callback queue}";
    goto LABEL_35;
  }

  if (!a5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,nil callback block}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "#CLGNSSStateQueryAssertion,client,nil callback block";
    v9 = "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,nil callback block}";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, 0x12u);
LABEL_36:
    result = 0;
    goto LABEL_37;
  }

  v14[0] = @"kCLConnectionMessageBundleIdentifierKey";
  v14[1] = @"kCLConnectionMessageBundlePathKey";
  v15[0] = a1;
  v15[1] = a2;
  v14[2] = @"kCLConnectionMessagePurposeKey";
  v15[2] = a3;
  result = -[CLGNSSStateQueryAssertionResponse initWithRegistrationMessageName:messagePayload:callbackQueue:completionHandler:]([CLGNSSStateQueryAssertionResponse alloc], "initWithRegistrationMessageName:messagePayload:callbackQueue:completionHandler:", "kCLConnectionMessageBBGnssStatusQuery", [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3], a4, a5);
LABEL_37:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8B64FC(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_19B8B8900(a1, a2);
  }

  else
  {
    sub_19B8B88A0(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t *sub_19B8B653C(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_19B8B925C((a1 + 3), 24);
  return a1;
}

void sub_19B8B67B8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x19EAE9870](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8B67E0(const char *a1)
{
  v2 = getpwnam("mobile");
  if (v2)
  {
    pw_uid = v2->pw_uid;
    pw_gid = v2->pw_gid;
  }

  else
  {
    pw_gid = 501;
    pw_uid = 501;
  }

  return lchown(a1, pw_uid, pw_gid);
}

uint64_t sub_19B8B6834(_BYTE *a1, uid_t a2, gid_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x400uLL);
  v6 = *a1;
  if (*a1)
  {
    v7 = 0;
    v8 = a1 + 1;
    while (1)
    {
      v12[v7] = v6;
      if (v6 == 47 && stat(v12, &v11))
      {
        if (mkdir(v12, 0x1FFu))
        {
          result = 0;
          goto LABEL_12;
        }

        lchown(v12, a2, a3);
        lchmod(v12, 0x1C0u);
      }

      result = 1;
      if (v7 <= 0x3FD)
      {
        v6 = v8[v7++];
        if (v6)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  result = 1;
LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8B6930(const char *a1, const char *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_40:
    v20 = 0;
    goto LABEL_54;
  }

  v5 = fopen(a1, "rb");
  if (!v5)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v12 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v13 = *__error();
      *buf = 136446466;
      v29 = a1;
      v30 = 1026;
      v31 = v13;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v26 = *__error();
      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    goto LABEL_40;
  }

  v6 = v5;
  v7 = fopen(a2, "wb");
  if (!v7)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v16 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v17 = *__error();
      *buf = 136446466;
      v29 = a2;
      v30 = 1026;
      v31 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v27 = *__error();
      v19 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    fclose(v6);
    goto LABEL_40;
  }

  v8 = v7;
  while (1)
  {
    if (feof(v6))
    {
      v20 = 1;
      goto LABEL_53;
    }

    v9 = fread(v4, 1uLL, 0x400uLL, v6);
    if (v9 == -1)
    {
      break;
    }

    if (v9 != fwrite(v4, 1uLL, v9, v8))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v10 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v29 = a2;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s", buf, 0xCu);
      }

      v11 = sub_19B87DD40();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 == -1)
        {
LABEL_50:
          v23 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }

          goto LABEL_52;
        }

LABEL_63:
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
        goto LABEL_50;
      }

      goto LABEL_52;
    }
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
  }

  v21 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v29 = a1;
    _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
  }

  v22 = sub_19B87DD40();
  if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

LABEL_52:
  v20 = 0;
LABEL_53:
  fclose(v6);
  fclose(v8);
LABEL_54:
  free(v4);
  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_19B8B6FE4(const char *a1, const char *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  sub_19B8B8B78(v32, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"compress:%@", objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a2), "lastPathComponent")), "UTF8String"], 0);
  bzerror = 0;
  v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_58:
    v11 = 0;
    goto LABEL_59;
  }

  v5 = fopen(a1, "rb");
  if (!v5)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v16 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v17 = *__error();
      *buf = 136446466;
      v39 = a1;
      v40 = 1026;
      v41 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v19 = *__error();
      v34 = 136446466;
      v35 = a1;
      v36 = 1026;
      v37 = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    goto LABEL_58;
  }

  v6 = fopen(a2, "wb");
  if (!v6)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v21 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v22 = *__error();
      *buf = 136446466;
      v39 = a1;
      v40 = 1026;
      v41 = v22;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v24 = *__error();
      v34 = 136446466;
      v35 = a1;
      v36 = 1026;
      v37 = v24;
      v25 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    fclose(v5);
    goto LABEL_58;
  }

  v7 = BZ2_bzWriteOpen(&bzerror, v6, 1, 0, 0);
  if (bzerror)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v8 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v39 = a2;
      v40 = 1026;
      v41 = bzerror;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "cannot open compression stream: %{public}s, bzerror %{public}d", buf, 0x12u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
LABEL_91:
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

LABEL_13:
      v34 = 136446466;
      v35 = a2;
      v36 = 1026;
      v37 = bzerror;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v10);
LABEL_14:
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    while (1)
    {
      if (feof(v5))
      {
        v11 = 1;
        goto LABEL_17;
      }

      v15 = fread(v4, 1uLL, 0x400uLL, v5);
      if (v15 == -1)
      {
        break;
      }

      BZ2_bzWrite(&bzerror, v7, v4, v15);
      if (bzerror)
      {
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
        }

        v30 = off_1ED519060;
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v39 = a2;
          v40 = 1026;
          v41 = bzerror;
          _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
        }

        v31 = sub_19B87DD40();
        if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
        {
          goto LABEL_16;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_13;
      }
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v28 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v39 = a1;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
    }

    v29 = sub_19B87DD40();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v34 = 136446210;
      v35 = a1;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v10);
      goto LABEL_14;
    }
  }

LABEL_16:
  v11 = 0;
LABEL_17:
  fclose(v5);
  if (v7)
  {
    BZ2_bzWriteClose(&bzerror, v7, 0, 0, 0);
    if (bzerror)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v12 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v39 = a2;
        v40 = 1026;
        v41 = bzerror;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "error closing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
      }

      v13 = sub_19B87DD40();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
        }

        v34 = 136446466;
        v35 = a2;
        v36 = 1026;
        v37 = bzerror;
        v14 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }
  }

  fclose(v6);
LABEL_59:
  free(v4);
  sub_19B8B8DC0(v32);
  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_19B8B7A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B8B8DC0(va);
  _Unwind_Resume(a1);
}

double sub_19B8B7A88(double *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v8 = a4 * 0.0174532925;
  v9 = a5 * 0.0174532925;
  v10 = a6 / 6378137.0;
  v11 = __sincos_stret(a3 * 0.0174532925);
  v12 = __sincos_stret(v10);
  v13 = __sincos_stret(v9);
  v14 = asin(v13.__cosval * (v11.__cosval * v12.__sinval) + v11.__sinval * v12.__cosval);
  v15 = sin(v14);
  v16 = atan2(v11.__cosval * (v13.__sinval * v12.__sinval), v12.__cosval - v11.__sinval * v15);
  *a1 = v14 / 0.0174532925;
  result = (v8 + v16) / 0.0174532925;
  *a2 = result;
  return result;
}

void sub_19B8B7B58(double *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7)
{
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      v13 = a6 * 0.0174532925;
      v14 = a7 / 6378137.0;
      v15 = __sincos_stret(a5 * 0.0174532925);
      v16 = __sincos_stret(v14);
      v17 = vabdd_f64(asin(v15.__cosval * v16.__sinval + v15.__sinval * v16.__cosval) / 0.0174532925, a5);
      v18 = asin(v15.__cosval * v16.__sinval * 6.123234e-17 + v15.__sinval * v16.__cosval);
      v19 = sin(v18);
      v20 = vabdd_f64((v13 + atan2(v15.__cosval * v16.__sinval, v16.__cosval - v15.__sinval * v19)) / 0.0174532925, a6);
      *a1 = a5 - v17;
      *a3 = v17 + a5;
      *a2 = a6 - v20;
      *a4 = v20 + a6;
    }
  }
}

uint64_t sub_19B8B7C60(const __CFString *a1, const __CFString *a2, Boolean *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &v21;
  }

  *v5 = 0;
  v6 = CFCopyUserName();
  if (CFEqual(v6, @"mobile"))
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, a2, v5);
    if (!*v5)
    {
      v8 = MEMORY[0x1E696AEC0];
      sub_19B8759E8(v19, [@"mobile" UTF8String]);
      sub_19B953254(v19, __p);
      if (v23 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = [objc_msgSend(objc_msgSend(v8 stringWithUTF8String:{v9), "stringByAppendingPathComponent:", objc_msgSend(&unk_1F0E8CCA0, "componentsJoinedByString:", @"/", "stringByAppendingString:", @"/"}];
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      __p[0] = v10;
      __p[1] = a2;
      v11 = *MEMORY[0x1E695E480];
      v12 = CFArrayCreate(*MEMORY[0x1E695E480], __p, 2, MEMORY[0x1E695E9C0]);
      if (v12)
      {
        v13 = CFStringCreateByCombiningStrings(v11, v12, &stru_1F0E6F140);
        if (v13)
        {
          AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, v13, v5);
          CFRelease(v13);
        }

        CFRelease(v12);
      }
    }
  }

  else
  {
    v14 = CFPreferencesCopyValue(a1, a2, @"mobile", *MEMORY[0x1E695E898]);
    if (v14)
    {
      v15 = v14;
      v16 = CFGetTypeID(v14);
      if (v16 == CFBooleanGetTypeID())
      {
        *v5 = 1;
        AppBooleanValue = CFEqual(v15, *MEMORY[0x1E695E4D0]);
      }

      else if (v16 == CFNumberGetTypeID() && !CFNumberIsFloatType(v15))
      {
        *v5 = 1;
        LODWORD(__p[0]) = 0;
        CFNumberGetValue(v15, kCFNumberIntType, __p);
        AppBooleanValue = LODWORD(__p[0]) != 0;
      }

      else
      {
        AppBooleanValue = 0;
      }

      CFRelease(v15);
    }

    else
    {
      AppBooleanValue = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return AppBooleanValue;
}

void sub_19B8B7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B8B7F14(void *a1)
{
  if ([a1 lengthOfBytesUsingEncoding:4] < 0x41)
  {
    if ([a1 hasPrefix:@"_"])
    {
      NSLog(&cfstr_MonitorNameCan.isa);
    }

    else
    {
      v2 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"_"];
      [v2 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet")}];
      if ([a1 rangeOfCharacterFromSet:{objc_msgSend(v2, "invertedSet")}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 1;
      }

      NSLog(&cfstr_MonitorNameCon.isa);
    }
  }

  else
  {
    NSLog(&cfstr_ConstraintMoni.isa, 64);
  }

  return 0;
}

void sub_19B8B7FE8(FILE *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = _dyld_image_count();
  v3 = v2;
  v4 = malloc_type_calloc(v2, 0x38uLL, 0x105004076241286uLL);
  v5 = v4;
  v32 = v4;
  if (v2 && v4)
  {
    v6 = 0;
    do
    {
      image_name = _dyld_get_image_name(v6);
      v8 = &image_name[strlen(image_name) + 1];
      do
      {
        v9 = *(v8 - 2);
        --v8;
      }

      while (v9 != 47);
      image_header = _dyld_get_image_header(v6);
      v11 = image_header;
      v12 = *&image_header->cputype;
      ncmds = image_header->ncmds;
      if (ncmds)
      {
        v14 = 0;
        p_cputype = &image_header[1].cputype;
        do
        {
          if (*p_cputype == 1)
          {
            if (!strncmp(p_cputype + 8, "__TEXT", 6uLL))
            {
              v14 = (v14 + p_cputype[7]);
            }
          }

          else if (*p_cputype == 27)
          {
            v33[0] = *(p_cputype + 2);
          }

          p_cputype = (p_cputype + p_cputype[1]);
          --ncmds;
        }

        while (ncmds);
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
      v5 = v32;
      v17 = v32;
      while (1)
      {
        v19 = *v17;
        v17 += 7;
        v18 = v19;
        if (v19 >= v11 || v18 == 0)
        {
          break;
        }

        if (v3 == ++v16)
        {
          v16 = v3;
          v21 = v3;
          goto LABEL_24;
        }
      }

      v21 = v16;
LABEL_24:
      v22 = &v32[56 * v16];
      memmove(v22 + 7, v22, 56 * (v3 + ~v21));
      *v22 = v11;
      v22[1] = v14;
      *(v22 + 1) = v33[0];
      v22[4] = image_name;
      v22[5] = v8;
      v22[6] = v12;
      ++v6;
    }

    while (v6 != v3);
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
  }

  else
  {
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  v23 = 0;
  do
  {
    v24 = &v5[56 * v23];
    v25 = *(v24 + 1);
    v33[0] = *v24;
    v33[1] = v25;
    v34 = *(v24 + 2);
    v35 = *(v24 + 6);
    v26 = "other";
    if (v35 != 16777228)
    {
      v27 = "unknown";
      if (HIDWORD(v35) == 9)
      {
        v27 = "armv7";
      }

      v26 = "armv6";
      if (HIDWORD(v35) != 6)
      {
        v26 = v27;
      }
    }

    v31 = v26;
    if (v23)
    {
      v28 = 32;
    }

    else
    {
      v28 = 43;
    }

    fprintf(a1, "%16p - %lld %c%s %s <", *&v33[0], ((v33[0] + __PAIR128__(-1, 0)) >> 64), v28, *(&v34 + 1), v31);
    for (i = 16; i != 32; ++i)
    {
      fprintf(a1, "%02X", *(v33 + i));
    }

    fprintf(a1, "> %s\n", v34);
    ++v23;
    v5 = v32;
  }

  while (v23 != v3);
LABEL_39:
  v30 = *MEMORY[0x1E69E9840];

  free(v5);
}

CFTypeRef sub_19B8B8308(CFStringRef filePath, const __CFString *a2)
{
  if (!filePath)
  {
    return 0;
  }

  v3 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], filePath, kCFURLPOSIXPathStyle, 1u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v6 = Unique;
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(Unique, a2);
    v8 = ValueForInfoDictionaryKey;
    if (ValueForInfoDictionaryKey)
    {
      CFRetain(ValueForInfoDictionaryKey);
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v4);
  return v8;
}

BOOL sub_19B8B83AC(__CFString *a1)
{
  if (sub_19B8B8414(a1))
  {
    return 1;
  }

  if (qword_1EAFE5B50 != -1)
  {
    dispatch_once(&qword_1EAFE5B50, &unk_1F0E6EA90);
  }

  return sub_19B9F7DBC(qword_1EAFE5B48, a1);
}

BOOL sub_19B8B8414(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED519148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519148))
  {
    sub_19B8759E8(v11, "/System/Library/LocationBundles/LocationPromptUI.bundle");
    sub_19B8759E8(v12, "/System/Library/LocationBundles/LocationFenceSync.bundle");
    sub_19B8759E8(v13, "/System/Library/LocationBundles/PLAMonitor.bundle");
    qword_1ED519150 = 0;
    qword_1ED519158 = 0;
    qword_1ED519160 = 0;
    sub_19B8B8FD4();
  }

  v2 = qword_1ED519150;
  v3 = qword_1ED519158;
  v4 = [a1 UTF8String];
  if (v2 != v3)
  {
    v5 = v4;
    v6 = strlen(v4);
    while (1)
    {
      v7 = *(v2 + 23);
      if (v7 < 0)
      {
        if (v6 == *(v2 + 8))
        {
          if (v6 == -1)
          {
            sub_19B890B7C();
          }

          v8 = *v2;
LABEL_10:
          if (!memcmp(v8, v5, v6))
          {
            break;
          }
        }
      }

      else
      {
        v8 = v2;
        if (v6 == v7)
        {
          goto LABEL_10;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }
  }

  result = v2 != qword_1ED519158;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8B85DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v21 = &a20;
  v22 = -72;
  v23 = &a20;
  while (1)
  {
    v24 = *v23;
    v23 -= 24;
    if (v24 < 0)
    {
      operator delete(*(v21 - 23));
    }

    v21 = v23;
    v22 += 24;
    if (!v22)
    {
      __cxa_guard_abort(&qword_1ED519148);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_19B8B866C(const __CFString *a1)
{
  if (qword_1EAFE5B50 != -1)
  {
    dispatch_once(&qword_1EAFE5B50, &unk_1F0E6EA90);
  }

  return sub_19B9F7F78(qword_1EAFE5B48, a1);
}

void **sub_19B8B86C4(void **a1)
{
  v3 = a1;
  sub_19B890F50(&v3);
  return a1;
}

BOOL sub_19B8B86FC(const __CFString *a1)
{
  if (qword_1EAFE5B50 != -1)
  {
    dispatch_once(&qword_1EAFE5B50, &unk_1F0E6EA90);
  }

  return sub_19B9F8060(qword_1EAFE5B48, a1);
}

BOOL sub_19B8B8754(const __CFString *a1)
{
  if (qword_1EAFE5B50 != -1)
  {
    dispatch_once(&qword_1EAFE5B50, &unk_1F0E6EA90);
  }

  return sub_19B9F8148(qword_1EAFE5B48, a1);
}

uint64_t sub_19B8B87AC(void *a1)
{
  v1 = [a1 objectForInfoDictionaryKey:@"NSWidgetWantsLocation"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v1 BOOLValue];
}

__CFBundle *sub_19B8B8818()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    v1 = result;
    if (CFBundleGetValueForInfoDictionaryKey(result, @"NSLocationWhenInUseUsageDescription"))
    {
      return 1;
    }

    else
    {
      return (CFBundleGetValueForInfoDictionaryKey(v1, @"NSLocationAlwaysAndWhenInUseUsageDescription") != 0);
    }
  }

  return result;
}

os_log_t sub_19B8B8870()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

void *sub_19B8B88A0(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_19B874C9C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_19B8B8900(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19B8B8A40();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_19B8B8A58(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_19B874C9C(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_19B8B8AE4(&v17);
  return v11;
}

void sub_19B8B8A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B8B8AE4(va);
  _Unwind_Resume(a1);
}

void sub_19B8B8A58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8B8AB0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_19B8B8AE4(uint64_t a1)
{
  sub_19B8B8B1C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B8B8B1C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_19B8B8B78(uint64_t *a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = os_transaction_create();
  a1[1] = 0;
  if (!a3)
  {
    a1[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    if (qword_1EAFE47B8 != -1)
    {
      dispatch_once(&qword_1EAFE47B8, &unk_1F0E6B7A0);
    }

    v6 = qword_1EAFE47C0;
    if (os_log_type_enabled(qword_1EAFE47C0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[1];
      *buf = 134349314;
      v14 = a1;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%{public}p) %{public}@", buf, 0x16u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47B8 != -1)
      {
        dispatch_once(&qword_1EAFE47B8, &unk_1F0E6B7A0);
      }

      v12 = a1[1];
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLAutoOSTransaction::CLAutoOSTransaction(const char *, LoggingPolicy)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

os_log_t sub_19B8B8D90()
{
  result = os_log_create("com.apple.locationd.Utility", "QA");
  qword_1EAFE47C0 = result;
  return result;
}

id *sub_19B8B8DC0(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1[1])
  {
    if (qword_1EAFE47B8 != -1)
    {
      dispatch_once(&qword_1EAFE47B8, &unk_1F0E6B7A0);
    }

    v2 = qword_1EAFE47C0;
    if (os_log_type_enabled(qword_1EAFE47C0, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[1];
      *buf = 134349314;
      v10 = a1;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "os_transaction releasing: (%{public}p) %{public}@", buf, 0x16u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47B8 != -1)
      {
        dispatch_once(&qword_1EAFE47B8, &unk_1F0E6B7A0);
      }

      v8 = a1[1];
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLAutoOSTransaction::~CLAutoOSTransaction()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    a1[1] = 0;
  }

  *a1 = 0;
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B8B8FC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

uint64_t sub_19B8B90F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 1);
      v4 -= 3;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

void sub_19B8B9154(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_19B8B925C(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x19EAE9820](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_19B8B9154(a1);
  return a1;
}

void sub_19B8B92F0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

BOOL sub_19B8B9318(void *a1)
{
  v2 = 0;
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = (-858993459 * ((a1[2] - v3) >> 3) - 1);
  v5 = (v3 + 72);
  while (1)
  {
    v6 = v2;
    if ((v4 & ~(v4 >> 63)) == v2)
    {
      break;
    }

    v8 = *(v5 - 6);
    v7 = *(v5 - 5);
    v10 = *(v5 - 3);
    v9 = *(v5 - 2);
    if (vabdd_f64(v8, v10) >= 0.0000001 || vabdd_f64(v7, v9) >= 0.0000001)
    {
      v11 = vabdd_f64(v8, *(v5 - 1)) < 0.0000001;
      if (vabdd_f64(v7, *v5) >= 0.0000001)
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }

    v13 = *(v5 - 8);
    v12 = *(v5 - 7);
    if (vabdd_f64(v13, v10) >= 0.0000001 || vabdd_f64(v12, v9) >= 0.0000001)
    {
      v14 = vabdd_f64(v13, *(v5 - 1)) < 0.0000001;
      if (vabdd_f64(v12, *v5) >= 0.0000001)
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }

    v15 = v11 || v14;
    v5 += 5;
    v2 = v6 + 1;
    if (!v15)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B7C0);
      }

      v16 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v17 = a1[4];
        *buf = 134217984;
        v24 = v17;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,%.3lf,RouteHints received without proper connections", buf, 0xCu);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B7C0);
        }

        v22 = a1[4];
        v19 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapsRouteHintData::isConnectivityGood() const", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      break;
    }
  }

  result = v6 >= v4;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B8B95C8(void *a1)
{
  v2 = 0;
  v44 = *MEMORY[0x1E69E9840];
  __p = 0;
  v30 = 0;
  v31 = 0;
  v3 = (a1 + 1);
  v4 = -1;
  while (1)
  {
    v6 = a1[1];
    v5 = a1[2];
    if (++v4 >= (-1 - 858993459 * ((v5 - v6) >> 3)))
    {
      v18 = v6 != v5;
      v19 = __p;
      if (!__p)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v7 = v6 + v2;
    if (__p == v30)
    {
      sub_19B8B99A8(&__p, (v6 + v2));
    }

    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    v11 = *(v7 + 48);
    v10 = *(v7 + 56);
    if (vabdd_f64(v9, v11) >= 0.0000001 || vabdd_f64(v8, v10) >= 0.0000001)
    {
      v12 = vabdd_f64(v9, *(v6 + v2 + 64)) < 0.0000001;
      if (vabdd_f64(v8, *(v6 + v2 + 72)) >= 0.0000001)
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }

    v13 = v6 + v2;
    v15 = *(v6 + v2 + 8);
    v14 = *(v6 + v2 + 16);
    if (vabdd_f64(v15, v11) >= 0.0000001 || vabdd_f64(v14, v10) >= 0.0000001)
    {
      v16 = *(v13 + 72);
      v17 = vabdd_f64(v15, *(v13 + 64)) < 0.0000001;
      if (vabdd_f64(v14, v16) >= 0.0000001)
      {
        v17 = 0;
      }

      if (!v12 && !v17)
      {
        break;
      }
    }

    v2 += 40;
    sub_19B8B99A8(&__p, (v7 + 40));
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B7C0);
  }

  v22 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v23 = a1[4];
    v24 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2] - a1[1]) >> 3);
    *buf = 134218496;
    v39 = v23;
    v40 = 2048;
    v41 = v24;
    v42 = 2048;
    v43 = 0xCCCCCCCCCCCCCCCDLL * ((v30 - __p) >> 3);
    _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM,%.3lf,RouteHints received without proper connections,changing segments from %lu,to,%lu", buf, 0x20u);
  }

  v25 = sub_19B87DD40();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B7C0);
    }

    v26 = a1[4];
    v27 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2] - a1[1]) >> 3);
    v32 = 134218496;
    v33 = v26;
    v34 = 2048;
    v35 = v27;
    v36 = 2048;
    v37 = 0xCCCCCCCCCCCCCCCDLL * ((v30 - __p) >> 3);
    v28 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapsRouteHintData::getConnectedRouteSegments() const", "CoreLocation: %s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  if (v3 != &__p)
  {
    sub_19B8B9C88(v3, __p, v30, 0xCCCCCCCCCCCCCCCDLL * ((v30 - __p) >> 3));
  }

  v19 = __p;
  v18 = v30 != __p;
  if (__p)
  {
LABEL_17:
    v30 = v19;
    operator delete(v19);
  }

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_19B8B9980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8B99A8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_19B8B8A40();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_19B8B9C30(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

os_log_t sub_19B8B9AB0()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B8B9AE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_19B8B9C30(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void *sub_19B8B9C88(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x333333333333333)
      {
        v12 = 0x666666666666666;
      }

      else
      {
        v12 = v11;
      }

      sub_19B8B9DEC(v7, v12);
    }

    sub_19B8B8A40();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void sub_19B8B9DEC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_19B8B9C30(a1, a2);
  }

  sub_19B8B8A40();
}

void *sub_19B8B9E38(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19EAE9750](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_19B8B9FE0(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x19EAE9760](v13);
  return a1;
}

void sub_19B8B9F78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x19EAE9760](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x19B8B9F58);
}

uint64_t sub_19B8B9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_19B890AD4();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_19B8BA1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B8BA1C8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void sub_19B8BAF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_19B8BAF90(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = result;
    [result notifyHelperInvalidation];
    result = [v2 fConnection];
    if (result)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v3 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v8 = "[CLEEDHelper initWithDelegate:queue:]_block_invoke";
        v9 = 2114;
        v10 = [v2 fConnection];
        _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, Connection[%{public}@] to EEDHelperService invalidated", buf, 0x16u);
      }

      v4 = sub_19B87DD40();
      if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        [v2 fConnection];
        v5 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper initWithDelegate:queue:]_block_invoke", "CoreLocation: %s\n", v5);
        if (v5 != buf)
        {
          free(v5);
        }
      }

      result = [v2 setFConnection:0];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BB1B4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v2 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v8 = "[CLEEDHelper initWithDelegate:queue:]_block_invoke_2";
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, Connection to EEDHelperService interrupted", buf, 0xCu);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDHelper initWithDelegate:queue:]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  result = [Weak handleInterruption];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BB38C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [objc_msgSend(v3 "fConnection")];

  return [v3 handleRemoteProxyError:a2 forProcessIdentifier:v4];
}

uint64_t sub_19B8BB9F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [objc_msgSend(v3 "fConnection")];

  return [v3 handleRemoteProxyError:a2 forProcessIdentifier:v4];
}

uint64_t sub_19B8BC640(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BC6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v6 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v12 = "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]_block_invoke_2";
    v13 = 2114;
    v14 = a2;
    v15 = 2114;
    v16 = a3;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, Array:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BCBF4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BCC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v6 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446723;
    v12 = "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]_block_invoke_2";
    v13 = 2113;
    v14 = a2;
    v15 = 2114;
    v16 = a3;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, request:%{private}@, error:%{public}@", buf, 0x20u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BD1B0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BD220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v6 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v12 = "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]_block_invoke_2";
    v13 = 2114;
    v14 = a2;
    v15 = 2114;
    v16 = a3;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, request:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BD764(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BD7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v6 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v12 = "[CLEEDHelper fetchMitigationsWithCompletion:]_block_invoke_2";
    v13 = 2114;
    v14 = a2;
    v15 = 2114;
    v16 = a3;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, mitigation:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchMitigationsWithCompletion:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BDD44(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BDDB0(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v10 = "[CLEEDHelper mediaUploadList:forRequestID:completion:]_block_invoke_2";
    v11 = 2114;
    v12 = a2;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, error:%{public}@", buf, 0x16u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper mediaUploadList:forRequestID:completion:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BE2F0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BE35C(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v10 = "[CLEEDHelper streamingSessionEndedForRequestID:completion:]_block_invoke_2";
    v11 = 2114;
    v12 = a2;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, error:%{public}@", buf, 0x16u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper streamingSessionEndedForRequestID:completion:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BE8C8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BE938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v6 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v12 = "[CLEEDHelper handleResponse:forRequest:completion:]_block_invoke_2";
    v13 = 2114;
    v14 = a2;
    v15 = 2114;
    v16 = a3;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, updatedRequest:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper handleResponse:forRequest:completion:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BF8B0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BF920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v6 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v12 = "[CLEEDHelper fetchCloakingKeyWithCompletion:]_block_invoke_2";
    v13 = 2114;
    v14 = a2;
    v15 = 2114;
    v16 = a3;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, cloakingKey:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCloakingKeyWithCompletion:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8BFE64(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8BFED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v6 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v12 = "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]_block_invoke_2";
    v13 = 2114;
    v14 = a2;
    v15 = 2114;
    v16 = a3;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, contactNames:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8C03C0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8C0430(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v10 = "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]_block_invoke_2";
    v11 = 2114;
    v12 = a2;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, status:%{public}@", buf, 0x16u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8C0960(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleRemoteProxyError:a2 forProcessIdentifier:{objc_msgSend(objc_msgSend(*(a1 + 32), "fConnection"), "processIdentifier")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_19B8C09D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2([*(a1 + 32) fClientQueue]);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v8 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v14 = "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]_block_invoke_2";
    v15 = 2114;
    v16 = a2;
    v17 = 2114;
    v18 = a3;
    v19 = 2114;
    v20 = a4;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, cachedStatus:%{public}@, nextUpdateDate:%{public}@, error:%{public}@", buf, 0x2Au);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B8D5024()
{
  result = os_log_create("com.apple.locationd.Position", "Emergency");
  qword_1EAFE4718 = result;
  return result;
}

void sub_19B8D5510(uint64_t *a1, uint64_t *a2, double a3)
{
  v479 = *MEMORY[0x1E69E9840];
  v6 = sub_19B8E3CB0();
  v7 = v6;
  v8 = a2;
  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
  }

  v9 = a1 + 16;
  if (*(a1 + 151) < 0)
  {
    v9 = a1[16];
  }

  v207 = a1 + 16;
  v206 = a2;
  if (*v6 != 1)
  {
    goto LABEL_147;
  }

  v10 = *(a1 + 12);
  sub_19B8759E8(&v208, "CLMM,%{public}s,trip,%{public}lld,T,%{public}.1lf,machT,%{public}.2lf,contT,%{public}.2lf,gpsTMs,%{public}d,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.1lf,alt,%{public}.1lf,vunc,%{public}.1lf,crse,%{public}.1lf,crseUnc,%{public}.1lf,spdKph,%{public}.3lf,spdUncMps,%{public}.1lf,a95,%{public}.1lf,b95,%{public}.1lf,theta,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCrse,%{public}.1lf,fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,fSnapCrse,%{public}.1lf,pSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwFSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwLL,%{sensitive}.7lf,%{sensitive}.7lf,score,%{public}.1lf,ratio,%{public}.1lf,varFac,%{public}.7g,deltaAz,%{public}.3lf,alngTrk,%{public}.3lf,acrsTrk,%{public}.3lf,usable,%{public}d,ambiguous,%{public}d,proj,%{public}.3lf,type,%{public}d,rseg,%{private}lld,frc,%{public}d,fow,%{public}d,road,%{private}s,activity,%{public}d,actConf,%{public}d,static,%{public}d,staticSetAt,%{public}.1lf,mount,%{public}d,fitness,%{public}d,shifted,%{public}d,propagated,%{public}d,rail,%{public}d,bridge,%{public}d,tunnel,%{public}d,favGPS,%{public}d,gnssCont,%{public}d,locationType,%{public}d,lifespan,%{public}.1lf,rawCourse,%{public}.1lf,sigEnv,%{public}d,sigEnvFid,%{public}d,latency,%{public}.1lf,rw,%{public}.2lf");
  v201 = v9;
  v204 = v8;
  sub_19B8759E8(buf, "{public}");
  sub_19B8759E8(__p, "");
  v11 = 0;
  v12 = v10 * 3.6;
  size = HIBYTE(v208.__r_.__value_.__r.__words[2]);
  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v208;
  }

  else
  {
    v14 = v208.__r_.__value_.__r.__words[0];
  }

  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v208.__r_.__value_.__l.__size_;
  }

  v15 = HIBYTE(v345);
  if (v345 >= 0)
  {
    v16 = HIBYTE(v345);
  }

  else
  {
    v16 = *&buf[8];
  }

  if (v345 >= 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  while (!v16)
  {
LABEL_27:
    if (v11 != -1)
    {
      if (v210 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = *__p;
      }

      if (v210 >= 0)
      {
        v25 = HIBYTE(v210);
      }

      else
      {
        v25 = *&__p[8];
      }

      std::string::replace(&v208, v11, v16, v24, v25);
      v26 = HIBYTE(v210);
      if (v210 < 0)
      {
        v26 = *&__p[8];
      }

      v11 += v26;
      size = HIBYTE(v208.__r_.__value_.__r.__words[2]);
      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v208;
      }

      else
      {
        v14 = v208.__r_.__value_.__r.__words[0];
      }

      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v208.__r_.__value_.__l.__size_;
      }

      v15 = HIBYTE(v345);
      v17 = v345 >= 0 ? buf : *buf;
      v16 = v345 >= 0 ? HIBYTE(v345) : *&buf[8];
      if (size >= v11)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  v18 = size - v11;
  if ((size - v11) >= v16)
  {
    v19 = v14 + size;
    v20 = v14 + v11;
    v21 = *v17;
    do
    {
      if (v18 - v16 == -1)
      {
        break;
      }

      v22 = memchr(v20, v21, v18 - v16 + 1);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      if (!memcmp(v22, v17, v16))
      {
        if (v23 == v19)
        {
          break;
        }

        v11 = v23 - v14;
        goto LABEL_27;
      }

      v20 = v23 + 1;
      v18 = v19 - (v23 + 1);
    }

    while (v18 >= v16);
  }

LABEL_48:
  if (SHIBYTE(v210) < 0)
  {
    operator delete(*__p);
    if ((v345 & 0x8000u) == 0)
    {
      goto LABEL_50;
    }

LABEL_169:
    operator delete(*buf);
    goto LABEL_50;
  }

  if (v15 < 0)
  {
    goto LABEL_169;
  }

LABEL_50:
  sub_19B8759E8(buf, "{private}");
  sub_19B8759E8(__p, "");
  v27 = 0;
  v28 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v208;
  }

  else
  {
    v29 = v208.__r_.__value_.__r.__words[0];
  }

  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = v208.__r_.__value_.__l.__size_;
  }

  v30 = HIBYTE(v345);
  if (v345 >= 0)
  {
    v31 = HIBYTE(v345);
  }

  else
  {
    v31 = *&buf[8];
  }

  if (v345 >= 0)
  {
    v32 = buf;
  }

  else
  {
    v32 = *buf;
  }

  while (!v31)
  {
LABEL_71:
    if (v27 != -1)
    {
      if (v210 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = *__p;
      }

      if (v210 >= 0)
      {
        v40 = HIBYTE(v210);
      }

      else
      {
        v40 = *&__p[8];
      }

      std::string::replace(&v208, v27, v31, v39, v40);
      v41 = HIBYTE(v210);
      if (v210 < 0)
      {
        v41 = *&__p[8];
      }

      v27 += v41;
      v28 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v208;
      }

      else
      {
        v29 = v208.__r_.__value_.__r.__words[0];
      }

      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v208.__r_.__value_.__l.__size_;
      }

      v30 = HIBYTE(v345);
      v32 = v345 >= 0 ? buf : *buf;
      v31 = v345 >= 0 ? HIBYTE(v345) : *&buf[8];
      if (v28 >= v27)
      {
        continue;
      }
    }

    goto LABEL_92;
  }

  v33 = v28 - v27;
  if ((v28 - v27) >= v31)
  {
    v34 = v29 + v28;
    v35 = v29 + v27;
    v36 = *v32;
    do
    {
      if (v33 - v31 == -1)
      {
        break;
      }

      v37 = memchr(v35, v36, v33 - v31 + 1);
      if (!v37)
      {
        break;
      }

      v38 = v37;
      if (!memcmp(v37, v32, v31))
      {
        if (v38 == v34)
        {
          break;
        }

        v27 = v38 - v29;
        goto LABEL_71;
      }

      v35 = v38 + 1;
      v33 = v34 - (v38 + 1);
    }

    while (v33 >= v31);
  }

LABEL_92:
  if (SHIBYTE(v210) < 0)
  {
    operator delete(*__p);
    if ((v345 & 0x8000u) == 0)
    {
      goto LABEL_94;
    }
  }

  else if ((v30 & 0x80) == 0)
  {
    goto LABEL_94;
  }

  operator delete(*buf);
LABEL_94:
  sub_19B8759E8(buf, "{sensitive}");
  sub_19B8759E8(__p, "");
  v42 = 0;
  v43 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v208;
  }

  else
  {
    v44 = v208.__r_.__value_.__r.__words[0];
  }

  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v43 = v208.__r_.__value_.__l.__size_;
  }

  v45 = HIBYTE(v345);
  if (v345 >= 0)
  {
    v46 = HIBYTE(v345);
  }

  else
  {
    v46 = *&buf[8];
  }

  if (v345 >= 0)
  {
    v47 = buf;
  }

  else
  {
    v47 = *buf;
  }

  while (!v46)
  {
LABEL_115:
    if (v42 != -1)
    {
      if (v210 >= 0)
      {
        v54 = __p;
      }

      else
      {
        v54 = *__p;
      }

      if (v210 >= 0)
      {
        v55 = HIBYTE(v210);
      }

      else
      {
        v55 = *&__p[8];
      }

      std::string::replace(&v208, v42, v46, v54, v55);
      v56 = HIBYTE(v210);
      if (v210 < 0)
      {
        v56 = *&__p[8];
      }

      v42 += v56;
      v43 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v208;
      }

      else
      {
        v44 = v208.__r_.__value_.__r.__words[0];
      }

      if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v43 = v208.__r_.__value_.__l.__size_;
      }

      v45 = HIBYTE(v345);
      v47 = v345 >= 0 ? buf : *buf;
      v46 = v345 >= 0 ? HIBYTE(v345) : *&buf[8];
      if (v43 >= v42)
      {
        continue;
      }
    }

    goto LABEL_136;
  }

  v48 = v43 - v42;
  if ((v43 - v42) >= v46)
  {
    v49 = v44 + v43;
    v50 = v44 + v42;
    v51 = *v47;
    do
    {
      if (v48 - v46 == -1)
      {
        break;
      }

      v52 = memchr(v50, v51, v48 - v46 + 1);
      if (!v52)
      {
        break;
      }

      v53 = v52;
      if (!memcmp(v52, v47, v46))
      {
        if (v53 == v49)
        {
          break;
        }

        v42 = v53 - v44;
        goto LABEL_115;
      }

      v50 = v53 + 1;
      v48 = v49 - (v53 + 1);
    }

    while (v48 >= v46);
  }

LABEL_136:
  if (SHIBYTE(v210) < 0)
  {
    operator delete(*__p);
    v45 = HIBYTE(v345);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
  }

  bzero((v7 + 56), 0x800uLL);
  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = &v208;
  }

  else
  {
    v57 = v208.__r_.__value_.__r.__words[0];
  }

  v189 = *(a1 + 7);
  v192 = *(a1 + 1);
  v182 = a1[11];
  v163 = a1[53];
  v159 = a1[51];
  v160 = a1[6];
  v162 = *(a1 + 105);
  v161 = *(a1 + 104);
  v157 = *(a1 + 100);
  v158 = *(a1 + 101);
  v156 = *(a1 + 348);
  snprintf((v7 + 56), 0x800uLL, v57, v204, *a1, a1[1], a1[2], a1[3], 0, 0, a1[7], a1[8], a1[10], a1[9], v182, a1[13], a1[24], *&v12, a1[23], a1[25], a1[26], a1[27], a1[19], a1[20], a1[21], a1[36], a1[37], a1[38], a1[41], a1[42], a1[39], a1[40], a1[46], a1[47], a1[48], a1[49], a1[4], a1[5], *(a1 + 44), *(a1 + 45), a1[29], a1[30], a1[31], a1[32], *(a1 + 264), *(a1 + 265), a1[34], *(a1 + 70), a1[14], *(a1 + 30), *(a1 + 31), v201, *(a1 + 56), *(a1 + 86), *(a1 + 228), a1[44], *(a1 + 229), *(a1 + 350), *(a1 + 351), *(a1 + 360), *(a1 + 349), *(a1 + 361), *(a1 + 362));
  a2 = v206;
  Current = CFAbsoluteTimeGetCurrent();
  sub_19B8759E8(buf, (v7 + 56));
  sub_19B8E3D48(v7, buf, Current);
  if (SHIBYTE(v345) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

LABEL_147:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
  }

  v59 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v60 = a2;
    if (*(a2 + 23) < 0)
    {
      v60 = *a2;
    }

    v61 = *a1;
    v62 = a1[1];
    v64 = a1[2];
    v63 = a1[3];
    v65 = a1[7];
    v66 = a1[8];
    v68 = a1[9];
    v67 = a1[10];
    v69 = a1[11];
    v70 = *(a1 + 12) * 3.6;
    v72 = a1[23];
    v71 = a1[24];
    v73 = a1[25];
    v74 = a1[26];
    v165 = a1[27];
    v75 = a1[19];
    v76 = a1[20];
    v77 = a1[21];
    v78 = a1[36];
    v79 = a1[37];
    v80 = a1[41];
    v81 = a1[42];
    v82 = a1[38];
    v83 = a1[39];
    v164 = a1[40];
    v166 = a1[46];
    v168 = a1[47];
    v170 = a1[48];
    v172 = a1[49];
    v174 = a1[4];
    v176 = a1[5];
    v84 = *(a1 + 44);
    v85 = *(a1 + 45);
    v178 = a1[29];
    v180 = a1[30];
    v183 = a1[31];
    v185 = a1[32];
    v187 = *(a1 + 264);
    v190 = *(a1 + 265);
    v193 = a1[34];
    v195 = *(a1 + 70);
    v86 = a1[13];
    v197 = a1[14];
    v199 = *(a1 + 30);
    v202 = *(a1 + 31);
    v205 = a1 + 16;
    if (*(a1 + 151) < 0)
    {
      v205 = *v207;
    }

    *&buf[4] = v60;
    *&buf[14] = v61;
    v346 = v62;
    v348 = v64;
    v350 = v63;
    v356 = v65;
    v358 = v66;
    v360 = v67;
    v362 = v68;
    v364 = v69;
    v366 = v86;
    v368 = v71;
    v372 = v72;
    v374 = v73;
    v376 = v74;
    v380 = v75;
    v87 = *(a1 + 56);
    v382 = v76;
    v88 = *(a1 + 86);
    v384 = v77;
    v89 = *(a1 + 228);
    v388 = v79;
    v90 = a1[44];
    v390 = v82;
    v91 = *(a1 + 229);
    v392 = v80;
    v92 = *(a1 + 350);
    v352 = 0;
    v93 = *(a1 + 351);
    v378 = v165;
    v94 = *(a1 + 360);
    v386 = v78;
    v95 = *(a1 + 349);
    v394 = v81;
    v96 = *(a1 + 361);
    v396 = v83;
    v97 = *(a1 + 362);
    v398 = v164;
    v98 = *(a1 + 348);
    v400 = v166;
    v99 = *(a1 + 100);
    v402 = v168;
    v100 = *(a1 + 101);
    v404 = v170;
    v101 = a1[51];
    v406 = v172;
    v102 = a1[6];
    v408 = v174;
    v355 = 2053;
    v357 = 2053;
    v379 = 2053;
    v381 = 2053;
    v385 = 2053;
    v387 = 2053;
    v391 = 2053;
    v393 = 2053;
    v395 = 2053;
    v397 = 2053;
    v399 = 2053;
    v401 = 2053;
    v403 = 2053;
    v405 = 2053;
    v407 = 2053;
    v409 = 2053;
    v103 = *(a1 + 104);
    v410 = v176;
    v104 = *(a1 + 105);
    v416 = v178;
    v105 = a1[53];
    *buf = 136463619;
    v418 = v180;
    *&buf[12] = 2050;
    v345 = 2050;
    v347 = 2050;
    v349 = 2050;
    v420 = v183;
    v351 = 1026;
    v353 = 1026;
    v354 = 0;
    v359 = 2050;
    v361 = 2050;
    v363 = 2050;
    v365 = 2050;
    v367 = 2050;
    v369 = 2050;
    v370 = v70;
    v371 = 2050;
    v373 = 2050;
    v375 = 2050;
    v377 = 2050;
    v383 = 2050;
    v389 = 2050;
    v411 = 2050;
    v412 = v84;
    v413 = 2050;
    v414 = v85;
    v415 = 2050;
    v417 = 2050;
    v419 = 2050;
    v421 = 2050;
    v422 = v185;
    v423 = 1026;
    v424 = v187;
    v425 = 1026;
    v426 = v190;
    v427 = 2050;
    v428 = v193;
    v429 = 1026;
    v430 = v195;
    v431 = 2049;
    v432 = v197;
    v433 = 1026;
    v434 = v199;
    v435 = 1026;
    v436 = v202;
    v437 = 2081;
    v438 = v205;
    v439 = 1026;
    v440 = v87;
    v441 = 1026;
    v442 = v88;
    v443 = 1026;
    v444 = v89;
    v445 = 2050;
    v446 = v90;
    v447 = 1026;
    v448 = v91;
    v449 = 1026;
    v450 = v92;
    v451 = 1026;
    v452 = v93;
    v453 = 1026;
    v454 = v94;
    v455 = 1026;
    v456 = v95;
    v457 = 1026;
    v458 = v96;
    v459 = 1026;
    v460 = v97;
    v461 = 1026;
    v462 = v98;
    v463 = 1026;
    v464 = v99;
    v465 = 1026;
    v466 = v100;
    v467 = 2050;
    v468 = v101;
    v469 = 2050;
    v470 = v102;
    v471 = 1026;
    v472 = v103;
    v473 = 1026;
    v474 = v104;
    v475 = 2050;
    v476 = a3;
    v477 = 2050;
    v478 = v105;
    _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "CLMM,%{public}s,trip,%{public}lld,T,%{public}.1lf,machT,%{public}.2lf,contT,%{public}.2lf,gpsTMs,%{public}d,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.1lf,alt,%{public}.1lf,vunc,%{public}.1lf,crse,%{public}.1lf,crseUnc,%{public}.1lf,spdKph,%{public}.3lf,spdUncMps,%{public}.1lf,a95,%{public}.1lf,b95,%{public}.1lf,theta,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCrse,%{public}.1lf,fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,fSnapCrse,%{public}.1lf,pSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwFSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwLL,%{sensitive}.7lf,%{sensitive}.7lf,score,%{public}.1lf,ratio,%{public}.1lf,varFac,%{public}.7g,deltaAz,%{public}.3lf,alngTrk,%{public}.3lf,acrsTrk,%{public}.3lf,usable,%{public}d,ambiguous,%{public}d,proj,%{public}.3lf,type,%{public}d,rseg,%{private}lld,frc,%{public}d,fow,%{public}d,road,%{private}s,activity,%{public}d,actConf,%{public}d,static,%{public}d,staticSetAt,%{public}.1lf,mount,%{public}d,fitness,%{public}d,shifted,%{public}d,propagated,%{public}d,rail,%{public}d,bridge,%{public}d,tunnel,%{public}d,favGPS,%{public}d,gnssCont,%{public}d,locationType,%{public}d,lifespan,%{public}.1lf,rawCourse,%{public}.1lf,sigEnv,%{public}d,sigEnvFid,%{public}d,latency,%{public}.1lf,rw,%{public}.2lf", buf, 0x25Cu);
    a2 = v206;
  }

  v106 = sub_19B87DD40();
  if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
    }

    if (*(a2 + 23) < 0)
    {
      v206 = *a2;
    }

    v107 = *a1;
    v108 = a1[1];
    v109 = a1[2];
    v110 = a1[3];
    v111 = a1[7];
    v112 = a1[8];
    v114 = a1[9];
    v113 = a1[10];
    v115 = a1[11];
    v116 = *(a1 + 12) * 3.6;
    v118 = a1[23];
    v117 = a1[24];
    v119 = a1[25];
    v120 = a1[26];
    v121 = a1[27];
    v122 = a1[19];
    v123 = a1[20];
    v124 = a1[21];
    v125 = a1[36];
    v126 = a1[37];
    v128 = a1[41];
    v127 = a1[42];
    v130 = a1[38];
    v129 = a1[39];
    v131 = a1[40];
    v167 = a1[46];
    v169 = a1[47];
    v171 = a1[48];
    v173 = a1[49];
    v175 = a1[4];
    v177 = a1[5];
    v132 = *(a1 + 44);
    v133 = *(a1 + 45);
    v179 = a1[29];
    v181 = a1[30];
    v184 = a1[31];
    v186 = a1[32];
    v188 = *(a1 + 264);
    v191 = *(a1 + 265);
    v194 = a1[34];
    v196 = *(a1 + 70);
    v134 = a1[13];
    v198 = a1[14];
    v200 = *(a1 + 30);
    v203 = *(a1 + 31);
    if (*(a1 + 151) < 0)
    {
      v207 = *v207;
    }

    v480 = &v261;
    *&__p[4] = v206;
    *&__p[14] = v107;
    v211 = v108;
    v213 = v109;
    v215 = v110;
    v221 = v111;
    v223 = v112;
    v225 = v113;
    v227 = v114;
    v229 = v115;
    v231 = v134;
    v233 = v117;
    v237 = v118;
    v239 = v119;
    v241 = v120;
    v243 = v121;
    v245 = v122;
    v135 = *(a1 + 56);
    v247 = v123;
    v136 = *(a1 + 86);
    v249 = v124;
    v137 = *(a1 + 228);
    v253 = v126;
    v138 = a1[44];
    v255 = v130;
    v139 = *(a1 + 229);
    v257 = v128;
    v140 = *(a1 + 350);
    v141 = *(a1 + 351);
    v251 = v125;
    v142 = *(a1 + 360);
    v259 = v127;
    v143 = *(a1 + 349);
    v261 = v129;
    v144 = *(a1 + 361);
    v263 = v131;
    v145 = *(a1 + 362);
    v265 = v167;
    v146 = *(a1 + 348);
    v267 = v169;
    v147 = *(a1 + 100);
    v269 = v171;
    v148 = *(a1 + 101);
    v271 = v173;
    v149 = a1[51];
    v273 = v175;
    v220 = 2053;
    v222 = 2053;
    v244 = 2053;
    v246 = 2053;
    v250 = 2053;
    v252 = 2053;
    v256 = 2053;
    v258 = 2053;
    v260 = 2053;
    v262 = 2053;
    v264 = 2053;
    v266 = 2053;
    v268 = 2053;
    v270 = 2053;
    v272 = 2053;
    v274 = 2053;
    v150 = a1[6];
    v275 = v177;
    v151 = *(a1 + 104);
    v281 = v179;
    v152 = *(a1 + 105);
    v153 = a1[53];
    *__p = 136463619;
    v283 = v181;
    *&__p[12] = 2050;
    v210 = 2050;
    v212 = 2050;
    v214 = 2050;
    v285 = v184;
    v216 = 1026;
    v217 = 0;
    v218 = 1026;
    v219 = 0;
    v224 = 2050;
    v226 = 2050;
    v228 = 2050;
    v230 = 2050;
    v232 = 2050;
    v234 = 2050;
    v235 = v116;
    v236 = 2050;
    v238 = 2050;
    v240 = 2050;
    v242 = 2050;
    v248 = 2050;
    v254 = 2050;
    v276 = 2050;
    v277 = v132;
    v278 = 2050;
    v279 = v133;
    v280 = 2050;
    v282 = 2050;
    v284 = 2050;
    v286 = 2050;
    v287 = v186;
    v288 = 1026;
    v289 = v188;
    v290 = 1026;
    v291 = v191;
    v292 = 2050;
    v293 = v194;
    v294 = 1026;
    v295 = v196;
    v296 = 2049;
    v297 = v198;
    v298 = 1026;
    v299 = v200;
    v300 = 1026;
    v301 = v203;
    v302 = 2081;
    v303 = v207;
    v304 = 1026;
    v305 = v135;
    v306 = 1026;
    v307 = v136;
    v308 = 1026;
    v309 = v137;
    v310 = 2050;
    v311 = v138;
    v312 = 1026;
    v313 = v139;
    v314 = 1026;
    v315 = v140;
    v316 = 1026;
    v317 = v141;
    v318 = 1026;
    v319 = v142;
    v320 = 1026;
    v321 = v143;
    v322 = 1026;
    v323 = v144;
    v324 = 1026;
    v325 = v145;
    v326 = 1026;
    v327 = v146;
    v328 = 1026;
    v329 = v147;
    v330 = 1026;
    v331 = v148;
    v332 = 2050;
    v333 = v149;
    v334 = 2050;
    v335 = v150;
    v336 = 1026;
    v337 = v151;
    v338 = 1026;
    v339 = v152;
    v340 = 2050;
    v341 = a3;
    v342 = 2050;
    v343 = v153;
    v154 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLMapCrumb::debugOutput(const std::string, double)", "CoreLocation: %s\n", v154);
    if (v154 != buf)
    {
      free(v154);
    }
  }

  v155 = *MEMORY[0x1E69E9840];
}

void sub_19B8D6628(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_19B890AB0(a1);
  }

  _Unwind_Resume(a1);
}

std::string *sub_19B8D6654@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  snprintf(__str, 0x100uLL, "trip,%lld", *a1);
  sub_19B8D7878(a2, __str);
  snprintf(__str, 0x100uLL, ",T,%.1lf", *(a1 + 8));
  v4 = strlen(__str);
  std::string::append(a2, __str, v4);
  snprintf(__str, 0x100uLL, ",machT,%.2lf", *(a1 + 16));
  v5 = strlen(__str);
  std::string::append(a2, __str, v5);
  snprintf(__str, 0x100uLL, ",contT,%.2lf", *(a1 + 24));
  v6 = strlen(__str);
  std::string::append(a2, __str, v6);
  snprintf(__str, 0x100uLL, ",gpsTMs,%d,%d", 0, 0);
  v7 = strlen(__str);
  std::string::append(a2, __str, v7);
  snprintf(__str, 0x100uLL, ",LL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 56), *(a1 + 64));
  v8 = strlen(__str);
  std::string::append(a2, __str, v8);
  snprintf(__str, 0x100uLL, ",hunc,%.1lf", *(a1 + 80));
  v9 = strlen(__str);
  std::string::append(a2, __str, v9);
  snprintf(__str, 0x100uLL, ",alt,%.1lf", *(a1 + 72));
  v10 = strlen(__str);
  std::string::append(a2, __str, v10);
  snprintf(__str, 0x100uLL, ",vunc,%.1lf", *(a1 + 88));
  v11 = strlen(__str);
  std::string::append(a2, __str, v11);
  snprintf(__str, 0x100uLL, ",crse,%.1lf", *(a1 + 104));
  v12 = strlen(__str);
  std::string::append(a2, __str, v12);
  snprintf(__str, 0x100uLL, ",crseUnc,%.1lf", *(a1 + 192));
  v13 = strlen(__str);
  std::string::append(a2, __str, v13);
  snprintf(__str, 0x100uLL, ",spdKph,%.3lf", *(a1 + 96) * 3.6);
  v14 = strlen(__str);
  std::string::append(a2, __str, v14);
  snprintf(__str, 0x100uLL, ",spdUncMps,%.1lf", *(a1 + 184));
  v15 = strlen(__str);
  std::string::append(a2, __str, v15);
  snprintf(__str, 0x100uLL, ",a95,%.1lf", *(a1 + 200));
  v16 = strlen(__str);
  std::string::append(a2, __str, v16);
  snprintf(__str, 0x100uLL, ",b95,%.1lf", *(a1 + 208));
  v17 = strlen(__str);
  std::string::append(a2, __str, v17);
  snprintf(__str, 0x100uLL, ",theta,%.1lf", *(a1 + 216));
  v18 = strlen(__str);
  std::string::append(a2, __str, v18);
  snprintf(__str, 0x100uLL, ",snapLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 152), *(a1 + 160));
  v19 = strlen(__str);
  std::string::append(a2, __str, v19);
  snprintf(__str, 0x100uLL, ",snapCrse,%.1lf", *(a1 + 168));
  v20 = strlen(__str);
  std::string::append(a2, __str, v20);
  snprintf(__str, 0x100uLL, ",fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 288), *(a1 + 296));
  v21 = strlen(__str);
  std::string::append(a2, __str, v21);
  snprintf(__str, 0x100uLL, ",fSnapCrse,%.1lf", *(a1 + 304));
  v22 = strlen(__str);
  std::string::append(a2, __str, v22);
  snprintf(__str, 0x100uLL, ",pSnapLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 328), *(a1 + 336));
  v23 = strlen(__str);
  std::string::append(a2, __str, v23);
  snprintf(__str, 0x100uLL, ",rwSnapLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 312), *(a1 + 320));
  v24 = strlen(__str);
  std::string::append(a2, __str, v24);
  snprintf(__str, 0x100uLL, ",rwSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 368), *(a1 + 376));
  v25 = strlen(__str);
  std::string::append(a2, __str, v25);
  snprintf(__str, 0x100uLL, ",rwFSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 384), *(a1 + 392));
  v26 = strlen(__str);
  std::string::append(a2, __str, v26);
  snprintf(__str, 0x100uLL, ",rwLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 32), *(a1 + 40));
  v27 = strlen(__str);
  std::string::append(a2, __str, v27);
  snprintf(__str, 0x100uLL, ",score,%.1lf", *(a1 + 176));
  v28 = strlen(__str);
  std::string::append(a2, __str, v28);
  snprintf(__str, 0x100uLL, ",ratio,%.1lf", *(a1 + 180));
  v29 = strlen(__str);
  std::string::append(a2, __str, v29);
  snprintf(__str, 0x100uLL, ",varFac,%.7g", *(a1 + 232));
  v30 = strlen(__str);
  std::string::append(a2, __str, v30);
  snprintf(__str, 0x100uLL, ",deltaAz,%.3lf", *(a1 + 240));
  v31 = strlen(__str);
  std::string::append(a2, __str, v31);
  snprintf(__str, 0x100uLL, ",alngTrk,%.3lf", *(a1 + 248));
  v32 = strlen(__str);
  std::string::append(a2, __str, v32);
  snprintf(__str, 0x100uLL, ",acrsTrk,%.3lf", *(a1 + 256));
  v33 = strlen(__str);
  std::string::append(a2, __str, v33);
  snprintf(__str, 0x100uLL, ",usable,%d", *(a1 + 264));
  v34 = strlen(__str);
  std::string::append(a2, __str, v34);
  snprintf(__str, 0x100uLL, ",ambiguous,%d", *(a1 + 265));
  v35 = strlen(__str);
  std::string::append(a2, __str, v35);
  snprintf(__str, 0x100uLL, ",proj,%.3lf", *(a1 + 272));
  v36 = strlen(__str);
  std::string::append(a2, __str, v36);
  snprintf(__str, 0x100uLL, ",type,%d", *(a1 + 280));
  v37 = strlen(__str);
  std::string::append(a2, __str, v37);
  snprintf(__str, 0x100uLL, ",rseg,%lld", *(a1 + 112));
  v38 = strlen(__str);
  std::string::append(a2, __str, v38);
  snprintf(__str, 0x100uLL, ",frc,%d", *(a1 + 120));
  v39 = strlen(__str);
  std::string::append(a2, __str, v39);
  snprintf(__str, 0x100uLL, ",fow,%d", *(a1 + 124));
  v40 = strlen(__str);
  std::string::append(a2, __str, v40);
  std::operator+<char>();
  v41 = std::string::append(&v65, "", 1uLL);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v67 = v41->__r_.__value_.__r.__words[2];
  *__p = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (v67 >= 0)
  {
    v43 = __p;
  }

  else
  {
    v43 = __p[0];
  }

  if (v67 >= 0)
  {
    v44 = HIBYTE(v67);
  }

  else
  {
    v44 = __p[1];
  }

  std::string::append(a2, v43, v44);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  snprintf(__str, 0x100uLL, ",activity,%d", *(a1 + 224));
  v45 = strlen(__str);
  std::string::append(a2, __str, v45);
  snprintf(__str, 0x100uLL, ",actConf,%d", *(a1 + 344));
  v46 = strlen(__str);
  std::string::append(a2, __str, v46);
  snprintf(__str, 0x100uLL, ",static,%d", *(a1 + 228));
  v47 = strlen(__str);
  std::string::append(a2, __str, v47);
  snprintf(__str, 0x100uLL, ",staticSetAt,%.1lf", *(a1 + 352));
  v48 = strlen(__str);
  std::string::append(a2, __str, v48);
  snprintf(__str, 0x100uLL, ",mount,%d", *(a1 + 229));
  v49 = strlen(__str);
  std::string::append(a2, __str, v49);
  snprintf(__str, 0x100uLL, ",fitness,%d", *(a1 + 350));
  v50 = strlen(__str);
  std::string::append(a2, __str, v50);
  snprintf(__str, 0x100uLL, ",shifted,%d", *(a1 + 351));
  v51 = strlen(__str);
  std::string::append(a2, __str, v51);
  snprintf(__str, 0x100uLL, ",propagated,%d", *(a1 + 360));
  v52 = strlen(__str);
  std::string::append(a2, __str, v52);
  snprintf(__str, 0x100uLL, ",rail,%d", *(a1 + 349));
  v53 = strlen(__str);
  std::string::append(a2, __str, v53);
  snprintf(__str, 0x100uLL, ",bridge,%d", *(a1 + 361));
  v54 = strlen(__str);
  std::string::append(a2, __str, v54);
  snprintf(__str, 0x100uLL, ",tunnel,%d", *(a1 + 362));
  v55 = strlen(__str);
  std::string::append(a2, __str, v55);
  snprintf(__str, 0x100uLL, ",favGPS,%d", *(a1 + 348));
  v56 = strlen(__str);
  std::string::append(a2, __str, v56);
  snprintf(__str, 0x100uLL, ",gnssCont,%d", *(a1 + 400));
  v57 = strlen(__str);
  std::string::append(a2, __str, v57);
  snprintf(__str, 0x100uLL, ",locationType,%d", *(a1 + 404));
  v58 = strlen(__str);
  std::string::append(a2, __str, v58);
  snprintf(__str, 0x100uLL, ",lifespan,%.1lf", *(a1 + 408));
  v59 = strlen(__str);
  std::string::append(a2, __str, v59);
  snprintf(__str, 0x100uLL, ",rawCourse,%.1lf", *(a1 + 48));
  v60 = strlen(__str);
  std::string::append(a2, __str, v60);
  snprintf(__str, 0x100uLL, ",rw,%.2lf", *(a1 + 424));
  v61 = strlen(__str);
  std::string::append(a2, __str, v61);
  snprintf(__str, 0x100uLL, ",signalEnv,%d", *(a1 + 416));
  v62 = strlen(__str);
  result = std::string::append(a2, __str, v62);
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8D72A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B8D72F4(uint64_t a1, float64x2_t *a2, uint64_t *a3, double *a4, double *a5, double a6, double a7)
{
  v62 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  if (fabs(v14) < 0.00003 && fabs(v15) < 0.00003 || fabs(*(a1 + 32)) < 0.00003 && fabs(*(a1 + 40)) < 0.00003)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 8);
      *buf = 134349056;
      v51 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLMM, %{public}.1lf, null island", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
      }

      v19 = *(a1 + 8);
      v38 = 134349056;
      v39 = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLMapCrumb::computeSnapCoordinatesFromRawGPSCoordinates(CLDistanceCalc &, const std::string, double, double, double &, double &) const", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    goto LABEL_35;
  }

  v36 = 0.0;
  v37 = 0.0;
  v35 = 0.0;
  if (!sub_19BA0BE88(a2, &v36, &v37, &v35, v14, v15, *(a1 + 72), a6, a7, *(a1 + 72)))
  {
LABEL_35:
    v21 = 0;
    goto LABEL_36;
  }

  v21 = sub_19BA0C1C0(a2->f64, a4, a5, &v34, *(a1 + 32), *(a1 + 40), *(a1 + 72), v36, v37, v35);
  if (v21)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 8);
      v24 = a3;
      if (*(a3 + 23) < 0)
      {
        v24 = *a3;
      }

      v25 = *a4;
      v26 = *a5;
      *buf = 134350339;
      v51 = v23;
      v52 = 2080;
      v53 = v24;
      v54 = 2053;
      v55 = a6;
      v56 = 2053;
      v57 = a7;
      v58 = 2053;
      v59 = v25;
      v60 = 2053;
      v61 = v26;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM, %{public}.1lf, New Snap Coordinates,%s,inSnapLat,%{sensitive}.8lf,inSnapLon,%{sensitive}.8lf,outSnapLat,%{sensitive}.8lf,outSnapLon,%{sensitive}.8lf", buf, 0x3Eu);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
      }

      v28 = *(a1 + 8);
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v29 = *a4;
      v30 = *a5;
      v38 = 134350339;
      v39 = v28;
      v40 = 2080;
      v41 = a3;
      v42 = 2053;
      v43 = a6;
      v44 = 2053;
      v45 = a7;
      v46 = 2053;
      v47 = v29;
      v48 = 2053;
      v49 = v30;
      v31 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapCrumb::computeSnapCoordinatesFromRawGPSCoordinates(CLDistanceCalc &, const std::string, double, double, double &, double &) const", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

LABEL_36:
  v32 = *MEMORY[0x1E69E9840];
  return v21;
}

os_log_t sub_19B8D778C()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

std::string *sub_19B8D77BC(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_19B8D7878(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_19B8D77BC(a1, __s, v4);
}

uint64_t sub_19B8D78C0(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B890AD4();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

unint64_t sub_19B8D794C(void *a1, unint64_t *a2, unint64_t *a3, double a4, double a5)
{
  v9 = a1;
  for (i = *a2; i < [a1 count]; ++i)
  {
    [objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{i), "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"}];
    if (v11 >= a4)
    {
      *a2 = i;
      break;
    }

    a1 = v9;
  }

  for (j = *a2; ; ++j)
  {
    result = [v9 count];
    if (j >= result)
    {
      break;
    }

    result = [objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{j), "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"}];
    if (v14 >= a5)
    {
      *a3 = j;
      return result;
    }
  }

  return result;
}

unint64_t sub_19B8D7A04(void *a1, unint64_t *a2, unint64_t *a3, double a4, double a5)
{
  v9 = a1;
  for (i = *a2; i < [a1 count]; ++i)
  {
    [objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{i), "timestamp"), "timeIntervalSinceReferenceDate"}];
    if (v11 >= a4)
    {
      *a2 = i;
      break;
    }

    a1 = v9;
  }

  for (j = *a2; ; ++j)
  {
    result = [v9 count];
    if (j >= result)
    {
      break;
    }

    result = [objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{j), "timestamp"), "timeIntervalSinceReferenceDate"}];
    if (v14 >= a5)
    {
      *a3 = j;
      return result;
    }
  }

  return result;
}

uint64_t sub_19B8D7ABC(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  [a2 setArray:{objc_msgSend(objc_alloc(MEMORY[0x1E695DF70]), "initWithArray:copyItems:", a1, 1)}];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setLocationReconstructionType:1];
      }

      while (v4 != v6);
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8D7BD0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B860);
    }

    v8 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 2;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B860);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T &CMMatrix<double, 2>::operator()(size_t, size_t) [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B860);
    }

    v11 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 2;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B860);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T &CMMatrix<double, 2>::operator()(size_t, size_t) [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 8 * (a2 + 2 * a3);
}

void sub_19B8D7F58(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (sqrtf((v2 * v2) + (v3 * v3)) != 0.0)
  {
    v4 = *a2;
    v5 = a2[1];
    if (sqrtf((v4 * v4) + (v5 * v5)) != 0.0)
    {
      v6 = 0;
      v19 = *a1;
      v20 = v3;
      v7 = 0.0;
      v21 = 0;
      do
      {
        v7 = v7 + (*(&v19 + v6) * *(&v19 + v6));
        v6 += 4;
      }

      while (v6 != 12);
      v8 = 0.0;
      if (sqrtf(v7) <= 0.00000011921)
      {
        v12 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        do
        {
          v10 = v10 + (*(&v19 + v9) * *(&v19 + v9));
          v9 += 4;
        }

        while (v9 != 12);
        v11 = sqrtf(v10);
        v2 = v2 / v11;
        v3 = v3 / v11;
        v12 = 0.0 / v11;
      }

      v13 = 0;
      v19 = v4;
      v20 = v5;
      v21 = 0;
      do
      {
        v8 = v8 + (*(&v19 + v13) * *(&v19 + v13));
        v13 += 4;
      }

      while (v13 != 12);
      v14 = sqrtf(v8);
      v15 = 0.0;
      if (v14 > 0.00000011921)
      {
        for (i = 0; i != 12; i += 4)
        {
          v15 = v15 + (*(&v19 + i) * *(&v19 + i));
        }

        v17 = sqrtf(v15);
        v4 = v4 / v17;
        v5 = v5 / v17;
        v15 = 0.0 / v17;
      }

      v18 = ((v12 * v15) + (v3 * v5)) + (v2 * v4);
      if (v18 > -1.0 && v18 < 1.0)
      {
        acos(v18);
      }
    }
  }
}

BOOL sub_19B8D8100(uint64_t a1, void *a2, double a3, double a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0;
  v31 = xmmword_19BA89490;
  v34 = 0x3FF0000000000000;
  v29 = 0.0;
  v30 = 0;
  [a2 latitude];
  v9 = v8;
  [a2 longitude];
  v11 = sub_19BA0BE88(&v31, &v30, &v29, &v28, a3, a4, 0.0, v9, v10, 0.0);
  if (v11)
  {
    [objc_msgSend(a2 "timestamp")];
    v12 = v30;
    *a1 = v13;
    *(a1 + 8) = v12;
    *(a1 + 16) = -v29;
    [a2 horizontalAccuracy];
    *(a1 + 24) = v14;
    *(a1 + 32) = [a2 signalEnvironmentType];
    *(a1 + 36) = [a2 referenceFrame];
    [a2 altitude];
    *(a1 + 40) = v15;
    [a2 altitudeAccuracy];
    *(a1 + 48) = v16;
  }

  else
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6B840);
    }

    v17 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      [a2 latitude];
      v19 = v18;
      [a2 longitude];
      *buf = 134546433;
      v44 = v19;
      v45 = 2053;
      v46 = v20;
      v47 = 2053;
      v48 = a3;
      v49 = 2053;
      v50 = a4;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "[CLTrajectorySmootherUtilities] Conversion from lat/lon to NWU failed. location sample,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,selected origin,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f.", buf, 0x2Au);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6B840);
      }

      [a2 latitude];
      v23 = v22;
      [a2 longitude];
      v35 = 134546433;
      v36 = v23;
      v37 = 2053;
      v38 = v24;
      v39 = 2053;
      v40 = a3;
      v41 = 2053;
      v42 = a4;
      v25 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLPTSUtility::LocationInNWU::convertLatitudeLongitudeToNWU(CLTripSegmentLocation * _Nonnull, const double, const double)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

CLTripSegmentLocation *sub_19B8D8410(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v24 = 0;
  v25 = 0;
  v23 = xmmword_19BA89490;
  v26 = 0x3FF0000000000000;
  v21 = 0.0;
  v22 = 0.0;
  sub_19BA0C1C0(&v23, &v22, &v21, &v20, a7, a8, 0.0, a5, -a6, 0.0);
  v16 = [CLTripSegmentLocation alloc];
  v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v18 = [(CLTripSegmentLocation *)v16 initWithTime:v17 latitude:1 longitude:a1 horizontalAccuracy:v22 course:v21 courseAccuracy:a4 speed:-1.0 speedAccuracy:-1.0 altitude:-1.0 altitudeAccuracy:-1.0 locType:a9 referenceFrame:*&a10];
  [(CLTripSegmentLocation *)v18 setSignalEnvironmentType:a2];
  [(CLTripSegmentLocation *)v18 setLocationReconstructionType:2];
  return v18;
}

void sub_19B8D8528(void *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void **a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v70[0] = 0;
  v70[1] = 0;
  v71 = 0;
  v12 = [a1 count];
  if (v12 <= 1)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v13 = v12;
  v14 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  __p = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  do
  {
    v15 = [a1 objectAtIndex:v14];
    if ([v15 locType] == 1)
    {
      p_p = &v67;
    }

    else
    {
      if ([v15 locType] != 4)
      {
        goto LABEL_9;
      }

      p_p = &__p;
    }

    sub_19B8D8B54(p_p, &v63);
LABEL_9:
    v14 = v63 + 1;
    v63 = v14;
  }

  while (v14 < v13);
  v17 = (v68 - v67) >> 3;
  if (v17 < 2)
  {
    *a4 = *v70;
    a4[2] = v71;
    v70[1] = 0;
    v71 = 0;
    v70[0] = 0;
    goto LABEL_73;
  }

  v18 = v17 - 1;
  v61 = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (2)
  {
    v22 = (v67 + 8 * v21);
    v63 = *v22;
    v23 = v22[1];
    v24 = [a1 objectAtIndex:?];
    v25 = [a1 objectAtIndex:v23];
    [v24 horizontalAccuracy];
    ++v20;
    if (v26 >= 0.0)
    {
      [v24 horizontalAccuracy];
      if (v27 <= 5.5)
      {
        goto LABEL_23;
      }
    }

    [objc_msgSend(v25 "timestamp")];
    if (fabs(v28) <= 20.0)
    {
      if (v20 < a2)
      {
        goto LABEL_42;
      }

      if (v70[0] == v70[1])
      {
        v32 = 0;
      }

      else
      {
        [objc_msgSend(v24 "timestamp")];
        v32 = fabs(v31) <= 2.5;
      }

      [v24 horizontalAccuracy];
      if (v39 < 0.0)
      {
        goto LABEL_42;
      }

      [v24 horizontalAccuracy];
      if (v40 > a5 || v32)
      {
        goto LABEL_42;
      }

LABEL_23:
      sub_19B8D8B54(v70, &v63);
      v19 = 1;
      goto LABEL_42;
    }

    if (v19)
    {
      [v24 horizontalAccuracy];
      if (v29 >= 0.0)
      {
        [v24 horizontalAccuracy];
        if (v30 <= a5)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      [v24 horizontalAccuracy];
      if (v33 >= 0.0)
      {
        [v24 horizontalAccuracy];
        v34 = v35 <= a6;
      }

      else
      {
        v34 = 0;
      }

      if (v70[0] == v70[1])
      {
        v38 = 1;
      }

      else
      {
        [objc_msgSend(v24 "timestamp")];
        v38 = v36 > 60.0 || v20 >= a2;
      }

      if (v34 && v38)
      {
LABEL_40:
        sub_19B8D8B54(v70, &v63);
      }
    }

    v20 = 0;
    v19 = 0;
LABEL_42:
    if (v18 != ++v21)
    {
      continue;
    }

    break;
  }

  v63 = *(v68 - 1);
  v41 = [a1 objectAtIndex:?];
  [v41 horizontalAccuracy];
  if (v42 >= 0.0)
  {
    [v41 horizontalAccuracy];
    v43 = v44 > a6;
  }

  else
  {
    v43 = 1;
  }

  [v41 horizontalAccuracy];
  if (v45 >= 0.0)
  {
    [v41 horizontalAccuracy];
    v46 = v47 > 5.5;
  }

  else
  {
    v46 = 1;
  }

  if (v70[0] == v70[1])
  {
    v49 = 0;
  }

  else
  {
    [objc_msgSend(v41 "timestamp")];
    v49 = fabs(v48) <= 2.5;
  }

  if (!v46 || !v43 && !v49 && v20 >= a2)
  {
    sub_19B8D8B54(v70, &v63);
  }

  if (v61)
  {
    v50 = __p;
    if (v65 != __p)
    {
      v51 = 0;
      do
      {
        v62 = v50[v51];
        v52 = [a1 objectAtIndex:?];
        [v52 horizontalAccuracy];
        if (v53 >= 0.0)
        {
          [v52 horizontalAccuracy];
          if (v54 <= 50.0)
          {
            sub_19B8D8B54(v70, &v62);
          }
        }

        ++v51;
        v50 = __p;
      }

      while (v51 < (v65 - __p) >> 3);
    }
  }

  v55 = v70[1];
  v56 = v70[0];
  if (v70[1] == v70[0])
  {
    goto LABEL_71;
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v57 = v70[0];
  if (v70[1] != v70[0])
  {
    v58 = 0;
    v59 = 0;
    while (1)
    {
      [objc_msgSend(a1 objectAtIndex:{v57[v59]), "horizontalAccuracy"}];
      if (v60 <= 35.0)
      {
        break;
      }

      ++v59;
      v57 = v70[0];
      v58 -= 8;
      if (v59 >= (v70[1] - v70[0]) >> 3)
      {
        goto LABEL_72;
      }
    }

    v56 = v70[0];
    v55 = v70[1];
    if (v59)
    {
      if (v70[0] - v58 != v70[1])
      {
        memmove(v70[0], v70[0] + 8 * v59, v70[1] - v70[0] + v58);
        v56 = v70[0];
      }

      v55 += v58;
      v70[1] = v55;
    }

LABEL_71:
    *a4 = v56;
    a4[1] = v55;
    a4[2] = v71;
    a4 = v70;
  }

LABEL_72:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
LABEL_73:
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v70[0])
  {
    v70[1] = v70[0];
    operator delete(v70[0]);
  }
}

void sub_19B8D8AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8D8B54(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_19B8B8A40();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B8D9954(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_19B8D8C34(void *a1, void *a2)
{
  v4 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  while (1)
  {
    *&v62[0].f64[0] = v4;
    if (v4 >= [a1 count])
    {
      break;
    }

    if ([objc_msgSend(a1 objectAtIndex:{*&v62[0].f64[0]), "locType"}] == 1)
    {
      sub_19B8D8B54(&v68, v62);
    }

    v4 = *&v62[0].f64[0] + 1;
  }

  v5 = [objc_msgSend(a1 objectAtIndex:{*v68), "timestamp"}];
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v6 = v68;
  if (v69 == v68)
  {
LABEL_55:
    v19 = 0;
    goto LABEL_56;
  }

  v7 = v5;
  v8 = 0;
  do
  {
    v9 = [a1 objectAtIndex:v6[v8]];
    [objc_msgSend(v9 "timestamp")];
    v11 = v66;
    if (v10 < 0.0 || v10 > 180.0)
    {
      break;
    }

    if (v66 >= v67)
    {
      v12 = (v66 - v65) >> 3;
      if ((v12 + 1) >> 61)
      {
        sub_19B8B8A40();
      }

      v13 = (v67 - v65) >> 2;
      if (v13 <= v12 + 1)
      {
        v13 = v12 + 1;
      }

      if (v67 - v65 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        sub_19B8D999C(&v65, v14);
      }

      v15 = (8 * v12);
      *v15 = v9;
      v11 = 8 * v12 + 8;
      v16 = v15 - (v66 - v65);
      memcpy(v16, v65, v66 - v65);
      v17 = v65;
      v65 = v16;
      v66 = v11;
      v67 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v66 = v9;
      v11 += 8;
    }

    v66 = v11;
    ++v8;
    v6 = v68;
  }

  while (v8 < v69 - v68);
  v18 = v65;
  if ((v11 - v65) >= 9)
  {
    v20 = 0;
    v21 = 10.5;
    do
    {
      v22 = v65;
      v23 = v66;
      while (v22 != v23)
      {
        v24 = *v22;
        [*v22 horizontalAccuracy];
        if (v25 > 0.0)
        {
          [v24 horizontalAccuracy];
          if (v26 < v21)
          {
            if (v20)
            {
              [v20 distanceFromLocation:v24];
              v28 = v27;
              [v20 horizontalAccuracy];
              v30 = v29;
              [v24 horizontalAccuracy];
              if (v28 > v30 + v31)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v20 = v24;
            }
          }
        }

        ++v22;
      }

      v24 = 0;
LABEL_37:
      v21 = v21 + 1.0;
    }

    while (v21 < 60.0 && v24 == 0);
    v19 = 0;
    if (v24 && v20)
    {
      v33 = [objc_msgSend(v20 "timestamp")];
      if (v33 == 1)
      {
        v34 = v20;
      }

      else
      {
        v34 = v24;
      }

      if (v33 == 1)
      {
        v20 = v24;
      }

      [v20 latitude];
      v36 = v35;
      [v20 longitude];
      v38 = v37;
      memset(v62, 0, sizeof(v62));
      v63 = 0x100000000;
      __asm { FMOV            V0.2D, #-1.0 }

      v54 = _Q0;
      v64 = _Q0;
      sub_19B8D8100(v62, v20, v36, v38);
      memset(v59, 0, sizeof(v59));
      v60 = 0x100000000;
      v61 = v54;
      sub_19B8D8100(v59, v34, v36, v38);
      v57 = 0;
      v58 = 0;
      sub_19B8D794C(a2, &v58, &v57, v62[0].f64[0], v59[0].f64[0]);
      v44 = v57;
      v43 = v58;
      v45 = 0.0;
      v46 = 0.0;
      if (v58 <= v57)
      {
        v47 = 0.0;
        v48 = 0.0;
        do
        {
          v49 = [a2 objectAtIndexedSubscript:{v43, v45, v46, v54}];
          if ([objc_msgSend(v49 "deltaPosition_m")])
          {
            [objc_msgSend(v49 "deltaPosition_m")];
            v51 = v50;
            [objc_msgSend(v49 "deltaPosition_m")];
            v48 = v48 + v51;
            v47 = v47 + v45;
          }

          ++v43;
        }

        while (v43 <= v44);
        *&v45 = v48;
        *&v46 = v47;
      }

      v56 = vcvt_f32_f64(vsubq_f64(*(v59 + 8), *(v62 + 8)));
      v55[0] = *&v45;
      v55[1] = *&v46;
      if (sqrtf(vaddv_f32(vmul_f32(v56, v56))) == 0.0)
      {
        goto LABEL_55;
      }

      sub_19B8D7F58(v55, &v56);
      v19 = v53;
    }

LABEL_56:
    v18 = v65;
    if (!v65)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v19 = 0;
  if (v65)
  {
LABEL_57:
    v66 = v18;
    operator delete(v18);
  }

LABEL_58:
  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  return v19;
}

void sub_19B8D9068(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 136);
  if (v4)
  {
    *(v1 - 128) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B8D90D4(uint64_t **a1)
{
  if (*a1 == a1[1])
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AD50] indexSet];
  v4 = *a1;
  v3 = a1[1];
  while (v4 != v3)
  {
    v5 = *v4++;
    [v2 addIndex:v5];
  }

  return v2;
}

double sub_19B8D913C(void *a1)
{
  v2 = [a1 count];
  v3 = 0.0;
  if (v2 >= 2)
  {
    v4 = v2;
    for (i = 1; i != v4; ++i)
    {
      v6 = [a1 objectAtIndexedSubscript:i];
      v7 = [a1 objectAtIndexedSubscript:i - 1];
      [v6 latitude];
      v9 = v8;
      [v6 longitude];
      v11 = v10;
      [v7 latitude];
      v13 = v12;
      [v7 longitude];
      v3 = v3 + sub_19BA0C01C(&v16, v9, v11, v13, v14, 0.0);
    }
  }

  return v3;
}

double sub_19B8D9230(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        if ([objc_msgSend(v7 "deltaPosition_m")])
        {
          [objc_msgSend(v7 "deltaPosition_m")];
          v9 = v8;
          [objc_msgSend(v7 "deltaPosition_m")];
          v11 = v9 * v10;
          [objc_msgSend(v7 "deltaPosition_m")];
          v13 = v12;
          [objc_msgSend(v7 "deltaPosition_m")];
          v5 = v5 + sqrt(v11 + v13 * v14);
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

BOOL sub_19B8D9388(void *a1, double a2)
{
  if ([a1 count] < 2 || objc_msgSend(a1, "count") < 2)
  {
    return 0;
  }

  v4 = 1;
  do
  {
    [objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{v4), "timestamp"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(a1, "objectAtIndexedSubscript:", v4 - 1), "timestamp")}];
    v6 = fabs(v5);
    v7 = v6 > a2;
    if (v6 > a2)
    {
      break;
    }

    ++v4;
  }

  while (v4 < [a1 count]);
  return v7;
}

uint64_t sub_19B8D9444(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a1 count] < 2 || objc_msgSend(a1, "count") < 2)
  {
LABEL_6:
    result = 0;
  }

  else
  {
    v2 = 1;
    while (1)
    {
      v3 = [a1 objectAtIndexedSubscript:v2 - 1];
      v4 = [a1 objectAtIndexedSubscript:v2];
      [v4 distanceFromLocation:v3];
      if (v5 > 450.0)
      {
        break;
      }

      if (++v2 >= [a1 count])
      {
        goto LABEL_6;
      }
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6B840);
    }

    v8 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      [v4 distanceFromLocation:v3];
      *buf = 134349056;
      v13 = v9;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "[CLTrajectorySmootherUtilities], distance between two consecutive samples is, %{public}.1f.", buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6B840);
      }

      [v4 distanceFromLocation:v3];
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLPTSUtility::areTriplocationSamplesTooSparseInSpace(NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    result = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19B8D96A4(void *a1)
{
  v2 = 0.0;
  v3 = 0.0;
  if ([a1 count])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if ([objc_msgSend(a1 objectAtIndexedSubscript:{v5), "signalEnvironmentType"}] - 3 < 2)
      {
        ++v4;
      }

      ++v5;
    }

    while (v5 < [a1 count]);
    v3 = v4;
  }

  if ([a1 count])
  {
    return v3 / [a1 count];
  }

  return v2;
}

void sub_19B8D9740(double *a1, double a2, double a3, double a4, double a5, double a6)
{
  *a1 = a2 + (a4 - a2) * a6;
  v7 = a3 + 360.0;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  v8 = a5 + 360.0;
  if (a5 >= 0.0)
  {
    v8 = a5;
  }

  v9 = v8 - v7;
  if (v9 <= 180.0)
  {
    if (v9 < -180.0)
    {
      v9 = v9 + 360.0;
    }
  }

  else
  {
    v9 = v9 + -360.0;
  }

  v10 = fmod(a3 + v9 * a6, 360.0);
  if (v10 <= -180.0)
  {
    v10 = v10 + 360.0;
  }

  else if (v10 > 180.0)
  {
    v10 = v10 + -360.0;
  }

  a1[1] = v10;
}

uint64_t sub_19B8D9804(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  if ([a1 count] - 1 <= a3)
  {
    v3 = [a1 count] - 1;
  }

  if (v3 <= a2)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v9 = [a1 objectAtIndexedSubscript:a2];
      v10 = [objc_msgSend(v9 "deltaPosition_m")];
      v11 = 0.0;
      v12 = 0.0;
      if (v10)
      {
        [objc_msgSend(v9 "deltaPosition_m")];
        v11 = v13;
        [objc_msgSend(v9 "deltaPosition_m")];
        v12 = v14;
      }

      v6 = v6 + v10;
      v7 = v7 + 1.0;
      v8 = v8 + hypot(v11, v12);
      ++a2;
    }

    while (a2 <= v3);
    v15 = v6 / v7 > 0.15;
    v16 = v8 > 2.0;
  }

  return v15 | (v16 << 8);
}

os_log_t sub_19B8D9924()
{
  result = os_log_create("com.apple.locationd.Motion", "PedTrajectorySmoothing");
  qword_1EAFE4760 = result;
  return result;
}

void sub_19B8D9954(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8D999C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

os_log_t sub_19B8D99E4()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

void sub_19B8D9AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8DAF00;
  block[3] = &unk_1E753CC90;
  block[4] = a2;
  dispatch_async(v2, block);
}