void sub_19B5DC9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

os_log_t sub_19B5DC9D8()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

void sub_19B5DCA0C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5DE368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5DE4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5DE5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5DE8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B5DE8F0()
{
  result = os_log_create("com.apple.locationd.Motion", "Activity");
  qword_1ED71C7A8 = result;
  return result;
}

void *sub_19B5DE98C(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5DE9E8((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5DE9E8(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5DEA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5DEAC0(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5DEB1C((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5DEB1C(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5DEB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5DEB88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = a4;
  if (a1)
  {
    v7 = a3;
    reply = xpc_dictionary_create_reply(a2);
    v9 = v7;
    v12 = objc_msgSend_UTF8String(v9, v10, v11);

    xpc_dictionary_set_string(reply, "kRMConnectionMessageNameKey", v12);
    if (v21)
    {
      v13 = v21;
      v16 = objc_msgSend_bytes(v21, v14, v15);
      v19 = objc_msgSend_length(v21, v17, v18);
      v20 = xpc_data_create(v16, v19);
      xpc_dictionary_set_value(reply, "kRMConnectionMessageDataKey", v20);
    }

    xpc_connection_send_message(*(a1 + 56), reply);
  }
}

id sub_19B5DEC78()
{
  if (qword_1EAFE2EC8 != -1)
  {
    dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
  }

  v1 = qword_1EAFE2ED0;

  return v1;
}

void sub_19B5DECCC(uint64_t a1, void *a2, void *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v8 = MEMORY[0x1E696AEC0];
    string = xpc_dictionary_get_string(v5, "kRMConnectionMessageNameKey");
    v11 = objc_msgSend_stringWithUTF8String_(v8, v10, string);
    v12 = xpc_dictionary_get_value(v5, "kRMConnectionMessageDataKey");
    v13 = v12;
    if (v12 && (bytes_ptr = xpc_data_get_bytes_ptr(v12)) != 0)
    {
      v15 = bytes_ptr;
      v16 = objc_alloc(MEMORY[0x1E695DEF0]);
      length = xpc_data_get_length(v13);
      v85 = objc_msgSend_initWithBytes_length_(v16, v18, v15, length);
    }

    else
    {
      v85 = 0;
    }

    v19 = xpc_dictionary_get_value(v5, "kRMConnectionRequestSteamingKey");
    v21 = v19;
    if (v11)
    {
      if (!v19)
      {
        if (v6)
        {
          (*(v6 + 2))(v6, v11, v85);
          goto LABEL_61;
        }

        if (objc_msgSend_isEqualToString_(v11, v20, @"kRMConnectionMessagePriorityBoost"))
        {
          if (qword_1EAFE2EC8 != -1)
          {
            dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
          }

          v51 = qword_1EAFE2ED0;
          if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            *&buf[4] = v11;
            _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_INFO, "Creating reply to hold onto priority boost: %{private}@", buf, 0xCu);
          }

          reply = xpc_dictionary_create_reply(v5);
          v53 = *(a1 + 64);
          *(a1 + 64) = reply;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v76 = qword_1EAFE2ED0;
            if (!os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_61;
            }

            *buf = 0;
            v27 = "Message received but the handler doesn't implement the selector 'endpoint:didReceiveMessage:withData:replyBlock:'";
            v28 = v76;
            v29 = OS_LOG_TYPE_FAULT;
            v30 = 2;
            goto LABEL_18;
          }

          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 3221225472;
          v86[2] = sub_19B5DF828;
          v86[3] = &unk_1E7532CF8;
          v86[4] = a1;
          v87 = v5;
          objc_msgSend_endpoint_didReceiveMessage_withData_replyBlock_(WeakRetained, v74, a1, v11, v85, v86);
          v53 = v87;
        }

        goto LABEL_61;
      }

      if (objc_msgSend_conformsToProtocol_(WeakRetained, v20, &unk_1F0E85600))
      {
        objc_msgSend_endpoint_didReceiveStreamingRequest_withData_(WeakRetained, v22, a1, v11, v85);
        v23 = v21;
        if (MEMORY[0x19EAE8C40]() == MEMORY[0x1E69E9E90])
        {
          v31 = objc_loadWeakRetained((a1 + 24));
          v84 = v23;
          v32 = xpc_connection_create_from_endpoint(v23);
          if (v32)
          {
            v82 = v6;
            connection = v32;
            objc_storeStrong((a1 + 32), v32);
            v33 = *(a1 + 32);
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = sub_19B5E010C;
            handler[3] = &unk_1E7532D20;
            handler[4] = a1;
            v81 = v31;
            v34 = v31;
            xpc_connection_set_event_handler(v33, handler);
            v35 = *(a1 + 8);
            v36 = *(a1 + 32);
            xpc_connection_set_target_queue(v36, v35);

            xpc_connection_resume(*(a1 + 32));
            v37 = xpc_string_create("kRMConnectionMessageDataStream");
            keys[0] = "kRMConnectionMessageNameKey";
            v38 = v37;
            values = v38;
            v39 = xpc_dictionary_create(keys, &values, 1uLL);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = sub_19B5E058C;
            *&buf[24] = &unk_1E7532D48;
            *&buf[32] = a1;
            v40 = v39;
            v97 = v40;
            shouldStartStreamingDataToReceiver = objc_msgSend_endpoint_shouldStartStreamingDataToReceiver_(v34, v41, a1, buf);

            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v42 = qword_1EAFE2ED0;
            if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
            {
              v43 = *(a1 + 56);
              v44 = *(a1 + 32);
              v45 = "NO";
              if (shouldStartStreamingDataToReceiver)
              {
                v45 = "YES";
              }

              *v90 = 134284035;
              v91 = v43;
              v92 = 2049;
              v93 = v44;
              v94 = 2080;
              v95 = v45;
              v79 = v34;
              v46 = v38;
              v47 = v43;
              v48 = v42;
              v49 = v40;
              v50 = v48;
              _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_DEBUG, "shouldStartStreamingDataToReceiver returned on streaming server connection %{private}p.%{private}p: %s", v90, 0x20u);

              v38 = v46;
              v34 = v79;

              v40 = v49;
            }

            v6 = v82;
            if (shouldStartStreamingDataToReceiver)
            {
              v25 = 0;
              v32 = connection;
              v31 = v81;
            }

            else
            {
              v57 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
              if (qword_1EAFE2EC8 != -1)
              {
                dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
                v57 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
              }

              v58 = *(v57 + 474);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v34;
                _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_ERROR, "Failed to start the streaming with handler %@", buf, 0xCu);
              }

              v25 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v59, @"RMConnectionStreaming", -2, 0);
              v60 = v25;
              if (qword_1EAFE2EC8 != -1)
              {
                dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
              }

              v61 = qword_1EAFE2ED0;
              if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
              {
                v62 = *(a1 + 56);
                v63 = *(a1 + 32);
                *buf = 134283777;
                *&buf[4] = v62;
                *&buf[12] = 2049;
                *&buf[14] = v63;
                v64 = v62;
                v65 = v61;
                _os_log_impl(&dword_19B41C000, v65, OS_LOG_TYPE_DEFAULT, "Cancelling the streaming server connection %{private}p.%{private}p", buf, 0x16u);

                v6 = v82;
              }

              v32 = connection;
              xpc_connection_cancel(connection);
              v66 = *(a1 + 32);
              *(a1 + 32) = 0;

              v31 = v81;
            }
          }

          else
          {
            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v54 = qword_1EAFE2ED0;
            if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v84;
              _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_ERROR, "Failed to create connection from endpoint %@", buf, 0xCu);
            }

            v25 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v55, @"RMConnectionStreaming", -1, 0);
            v56 = v25;
          }

          v23 = v84;
        }

        else
        {
          if (qword_1EAFE2EC8 != -1)
          {
            dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
          }

          v24 = qword_1EAFE2ED0;
          if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "The client did not send streaming endpoint correctly", buf, 2u);
          }

          v25 = 0;
        }

        v67 = v25;
        if (v67)
        {
          v69 = v67;
          v88 = v67;
          objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v68, v67, 1, &v88);
          v71 = v70 = v6;
          v72 = v88;

          sub_19B5DEB88(a1, v5, @"kRMConnectionMessageError", v71);
          v6 = v70;
        }

        else
        {
          if (qword_1EAFE2EC8 != -1)
          {
            dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
          }

          v73 = qword_1EAFE2ED0;
          if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v73, OS_LOG_TYPE_INFO, "Streaming session started, sending acknowledgement", buf, 2u);
          }

          sub_19B5DEB88(a1, v5, @"kRMConnectionMessageSuccess", 0);
        }

        goto LABEL_61;
      }

      v77 = sub_19B5DEC78();
      v13 = "sE";
      v11 = "";
      WeakRetained = "assert";
      v6 = "[handler conformsToProtocol:@protocol(RMConnectionStreamProducingDelegate)]";
      if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "[handler conformsToProtocol:@protocol(RMConnectionStreamProducingDelegate)]";
        _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Start streaming requested but the handler doesn't conform to the RMConnectionStreamProducingDelegate delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v78 = sub_19B5DEC78();
      if (os_signpost_enabled(v78))
      {
        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "[handler conformsToProtocol:@protocol(RMConnectionStreamProducingDelegate)]";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v78, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Start streaming requested but the handler doesn't conform to the RMConnectionStreamProducingDelegate delegate", "{msg%{public}.0s:Start streaming requested but the handler doesn't conform to the RMConnectionStreamProducingDelegate delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v5 = sub_19B5DEC78();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "[handler conformsToProtocol:@protocol(RMConnectionStreamProducingDelegate)]";
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Start streaming requested but the handler doesn't conform to the RMConnectionStreamProducingDelegate delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
    }

    else if (qword_1EAFE2EC8 == -1)
    {
LABEL_16:
      v26 = qword_1EAFE2ED0;
      if (!os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
      {
LABEL_61:

        goto LABEL_62;
      }

      *buf = 136315138;
      *&buf[4] = "kRMConnectionMessageNameKey";
      v27 = "XPC message missing key %s";
      v28 = v26;
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 12;
LABEL_18:
      _os_log_impl(&dword_19B41C000, v28, v29, v27, buf, v30);
      goto LABEL_61;
    }

    dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    goto LABEL_16;
  }

LABEL_62:

  v75 = *MEMORY[0x1E69E9840];
}

id *sub_19B5DF83C(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1 && (v14.receiver = a1, v14.super_class = RMConnectionEndpoint, (v8 = objc_msgSendSuper2(&v14, sel_init)) != 0))
  {
    v9 = v8;
    objc_storeStrong(v8 + 7, a2);
    objc_storeStrong(v9 + 1, a3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_19B5DF950;
    handler[3] = &unk_1E7532D20;
    v10 = v9;
    v13 = v10;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_set_target_queue(v6, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_19B5DF950(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19EAE8C40]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v9 = qword_1EAFE2ED0;
      if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        if (v10)
        {
          v10 = *(v10 + 56);
        }

        v13 = 134283521;
        v14 = v10;
        v11 = v9;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "#Warning Messaging connection %{private}p interrupted!", &v13, 0xCu);
      }

      sub_19B5DFBA8(*(a1 + 32));
    }

    else if (v3 == MEMORY[0x1E69E9E20])
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v6 = qword_1EAFE2ED0;
      if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        if (v7)
        {
          v7 = *(v7 + 56);
        }

        v13 = 134283521;
        v14 = v7;
        v8 = v6;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "#Warning Messaging connection %{private}p invalidated!", &v13, 0xCu);
      }

      sub_19B5DFC00(*(a1 + 32));
    }
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    sub_19B5DECCC(*(a1 + 32), v3, 0);
  }

  else
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v5 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "Got unexpected xpc event", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B5DFBA8(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    objc_msgSend_endpointWasInterrupted_(WeakRetained, v2, a1);
  }
}

void sub_19B5DFC00(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 64);
    *(a1 + 64) = 0;

    if (*(a1 + 32))
    {
      sub_19B5E0304(a1);
    }

    if (*(a1 + 40))
    {
      sub_19B5E0ABC(a1);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      xpc_connection_cancel(v3);
      v4 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    objc_msgSend_endpointWasInvalidated_(WeakRetained, v5, a1);
  }
}

void sub_19B5DFCA4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 56);
    if (!v2)
    {
      __assert_rtn("[RMConnectionEndpoint start]", "RMConnectionEndpoint.m", 216, "self.messagingConnection");
    }

    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (!WeakRetained)
    {
      __assert_rtn("[RMConnectionEndpoint start]", "RMConnectionEndpoint.m", 217, "self.dataDelegate");
    }

    v4 = objc_loadWeakRetained((a1 + 16));
    if (!v4)
    {
      __assert_rtn("[RMConnectionEndpoint start]", "RMConnectionEndpoint.m", 218, "self.connectionDelegate");
    }

    v5 = *(a1 + 56);

    xpc_connection_resume(v5);
  }
}

void sub_19B5DFD80(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v5 = a3;
  if (a1)
  {
    if (!*(a1 + 56))
    {
      v8 = sub_19B5DEC78();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = "assert";
        v18 = 2081;
        v19 = "self.messagingConnection";
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Trying to send a message while no connection is in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v9 = sub_19B5DEC78();
      if (os_signpost_enabled(v9))
      {
        *buf = 68289539;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = "assert";
        v18 = 2081;
        v19 = "self.messagingConnection";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trying to send a message while no connection is in place", "{msg%{public}.0s:Trying to send a message while no connection is in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v10 = sub_19B5DEC78();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = "assert";
        v18 = 2081;
        v19 = "self.messagingConnection";
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Trying to send a message while no connection is in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
    }

    v6 = sub_19B5DFFD8(v11, v5);
    xpc_connection_send_message(*(a1 + 56), v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

id sub_19B5DFFD8(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  v8 = xpc_string_create(v7);
  if (v3)
  {
    v9 = v3;
    v12 = objc_msgSend_bytes(v9, v10, v11);
    v15 = objc_msgSend_length(v3, v13, v14);
    v16 = xpc_data_create(v12, v15);
    v17 = 2;
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  *keys = xmmword_1E7532DB0;
  v18 = v8;
  v24[0] = v18;
  v19 = v16;
  v24[1] = v19;
  v20 = xpc_dictionary_create(keys, v24, v17);
  for (i = 1; i != -1; --i)
  {
  }

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

void sub_19B5E010C(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19EAE8C40](a2) == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v11 = qword_1EAFE2ED0;
      if (!os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = v12[7];
        v14 = v12[4];
        v12 = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v16 = 134283777;
      v17 = v13;
      v18 = 2049;
      v19 = v14;
      v8 = v12;
      v9 = v11;
      v10 = "#Warning Streaming server connection %{private}p.%{private}p interrupted!";
      goto LABEL_16;
    }

    if (a2 == MEMORY[0x1E69E9E20])
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v4 = qword_1EAFE2ED0;
      if (!os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = v5[7];
        v7 = v5[4];
        v5 = v6;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v16 = 134283777;
      v17 = v6;
      v18 = 2049;
      v19 = v7;
      v8 = v5;
      v9 = v4;
      v10 = "#Warning Streaming server connection %{private}p.%{private}p invalidated!";
LABEL_16:
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, v10, &v16, 0x16u);

LABEL_17:
      sub_19B5E0304(*(a1 + 32));
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B5E0304(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_13:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = sub_19B5DEC78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "self.streamingServerConnection";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Asked to stop a stream while no streaming is in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = sub_19B5DEC78();
    if (os_signpost_enabled(v7))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "self.streamingServerConnection";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Asked to stop a stream while no streaming is in progress", "{msg%{public}.0s:Asked to stop a stream while no streaming is in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_19B5DEC78();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "self.streamingServerConnection";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Asked to stop a stream while no streaming is in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_13;
  }

  xpc_connection_set_event_handler(v2, &unk_1F0E28EC0);
  xpc_connection_cancel(*(a1 + 32));
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  objc_msgSend_endpointShouldStopStreamingData_(WeakRetained, v4, a1);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B5E058C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && *(v4 + 32))
  {
    v5 = *(a1 + 40);
    v15 = v3;
    v6 = v3;
    v9 = objc_msgSend_bytes(v15, v7, v8);
    v12 = objc_msgSend_length(v15, v10, v11);
    xpc_dictionary_set_data(v5, "kRMConnectionMessageDataStreamKey", v9, v12);
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 32);
    }

    else
    {
      v14 = 0;
    }

    xpc_connection_send_message(v14, *(a1 + 40));
    v3 = v15;
  }
}

void sub_19B5E063C(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_22;
  }

  if (v5 == MEMORY[0x1E69E9E18])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v10 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v11 = "#Warning Streaming connection interrupted";
LABEL_19:
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, v11, v14, 2u);
    }

LABEL_20:
    v9 = -3;
    if (!v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v8, @"RMConnectionStreaming", v9, 0, *v14);
    v6[2](v6, v12);

    goto LABEL_22;
  }

  if (v5 == MEMORY[0x1E69E9E20])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v10 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v11 = "#Warning Streaming connection dropped";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v5 != MEMORY[0x1E69E9E38])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v7 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
    {
      *v14 = 138412290;
      *&v14[4] = v5;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Unknown xpc error received %@", v14, 0xCu);
    }

    v9 = -4;
    if (v6)
    {
      goto LABEL_21;
    }
  }

LABEL_22:

  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B5E0868(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19EAE8C40]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v8 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v9 = *(v9 + 40);
      }

      v23 = 134283521;
      v24 = v9;
      v10 = v8;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "Error received on the streaming client connection %{private}p", &v23, 0xCu);
    }

    sub_19B5E063C(*(a1 + 32), v3, *(a1 + 40));
    sub_19B5E0ABC(*(a1 + 32));
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_get_value(v3, "kRMConnectionMessageDataStreamKey");
    v6 = v5;
    if (v5 && MEMORY[0x19EAE8C40](v5) == MEMORY[0x1E69E9E70] && (bytes_ptr = xpc_data_get_bytes_ptr(v6)) != 0 && (v13 = bytes_ptr, v14 = objc_alloc(MEMORY[0x1E695DEF0]), length = xpc_data_get_length(v6), (v17 = objc_msgSend_initWithBytes_length_(v14, v16, v13, length)) != 0))
    {
      v19 = v17;
      v20 = *(a1 + 32);
      if (v20)
      {
        WeakRetained = objc_loadWeakRetained((v20 + 24));
        objc_msgSend_endpoint_didReceiveStreamedData_(WeakRetained, v22, *(a1 + 32), v19);
      }

      else
      {
        WeakRetained = 0;
        objc_msgSend_endpoint_didReceiveStreamedData_(0, v18, 0, v17);
      }
    }

    else
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v7 = qword_1EAFE2ED0;
      if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Message without a payload received from the stream connection", &v23, 2u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B5E0ABC(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 40);
    if (v2)
    {
      xpc_connection_suspend(v2);
      xpc_connection_set_event_handler(*(a1 + 40), &unk_1F0E3A320);
      xpc_connection_resume(*(a1 + 40));
      xpc_connection_cancel(*(a1 + 40));
      v3 = *(a1 + 40);
      *(a1 + 40) = 0;
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      xpc_connection_cancel(v4);
      v5 = *(a1 + 48);
      *(a1 + 48) = 0;
    }
  }
}

void sub_19B5E0B54(const char *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 6))
  {
    v26 = sub_19B5DEC78();
    v16 = "sE";
    a1 = "";
    v10 = "assert";
    v9 = "!self.streamingClientListener";
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      *&v33[14] = 2082;
      *&v33[16] = "assert";
      v34 = 2081;
      v35 = "!self.streamingClientListener";
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Request already in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v27 = sub_19B5DEC78();
    if (os_signpost_enabled(v27))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      *&v33[14] = 2082;
      *&v33[16] = "assert";
      v34 = 2081;
      v35 = "!self.streamingClientListener";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Request already in progress", "{msg%{public}.0s:Request already in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_19B5DEC78();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      *&v33[14] = 2082;
      *&v33[16] = "assert";
      v34 = 2081;
      v35 = "!self.streamingClientListener";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Request already in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_15;
  }

  v11 = *(a1 + 1);
  v12 = xpc_connection_create(0, v11);
  v13 = *(a1 + 6);
  *(a1 + 6) = v12;

  v14 = *(a1 + 6);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_19B5E0F80;
  handler[3] = &unk_1E7532D90;
  handler[4] = a1;
  v15 = v10;
  v31 = v15;
  xpc_connection_set_event_handler(v14, handler);
  v16 = sub_19B5DFFD8(v8, v9);
  xpc_connection_activate(*(a1 + 6));
  v4 = xpc_endpoint_create(*(a1 + 6));
  xpc_dictionary_set_value(v16, "kRMConnectionRequestSteamingKey", v4);
  v17 = *(a1 + 7);
  v18 = *(a1 + 1);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_19B5E1330;
  v28[3] = &unk_1E7532D90;
  v28[4] = a1;
  v29 = v15;
  v19 = v17;
  xpc_connection_send_message_with_reply(v19, v16, v18, v28);

  if (qword_1EAFE2EC8 != -1)
  {
LABEL_15:
    dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
  }

  v20 = qword_1EAFE2ED0;
  if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 6);
    v21 = *(a1 + 7);
    *buf = 134283777;
    *v33 = v21;
    *&v33[8] = 2049;
    *&v33[10] = v22;
    v23 = v21;
    v24 = v20;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "Streaming request sent on streaming listener %{private}p.%{private}p", buf, 0x16u);
  }

LABEL_7:
  v25 = *MEMORY[0x1E69E9840];
}

void sub_19B5E0F80(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (MEMORY[0x19EAE8C40]() == MEMORY[0x1E69E9E68])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v5 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Peer connection detected", buf, 2u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = v4;
    xpc_connection_set_target_queue(v8, v7);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v8;
    v12 = v9;
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 24));
      v15 = objc_msgSend_conformsToProtocol_(WeakRetained, v14, &unk_1F0E6E6A8);

      if ((v15 & 1) == 0)
      {
        v18 = sub_19B5DEC78();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *v22 = 2082;
          *&v22[2] = "";
          *&v22[10] = 2082;
          *&v22[12] = "assert";
          *&v22[20] = 2081;
          *&v22[22] = "[self.dataDelegate conformsToProtocol:@protocol(RMConnectionStreamConsumingDelegate)]";
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The MessageHandler MUST conform to RMConnectionStreamConsumingDelegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v19 = sub_19B5DEC78();
        if (os_signpost_enabled(v19))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *v22 = 2082;
          *&v22[2] = "";
          *&v22[10] = 2082;
          *&v22[12] = "assert";
          *&v22[20] = 2081;
          *&v22[22] = "[self.dataDelegate conformsToProtocol:@protocol(RMConnectionStreamConsumingDelegate)]";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The MessageHandler MUST conform to RMConnectionStreamConsumingDelegate", "{msg%{public}.0s:The MessageHandler MUST conform to RMConnectionStreamConsumingDelegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v20 = sub_19B5DEC78();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *v22 = 2082;
          *&v22[2] = "";
          *&v22[10] = 2082;
          *&v22[12] = "assert";
          *&v22[20] = 2081;
          *&v22[22] = "[self.dataDelegate conformsToProtocol:@protocol(RMConnectionStreamConsumingDelegate)]";
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The MessageHandler MUST conform to RMConnectionStreamConsumingDelegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
      }

      objc_storeStrong((v10 + 40), a2);
      v16 = *(v10 + 40);
      *buf = MEMORY[0x1E69E9820];
      *v22 = 3221225472;
      *&v22[8] = sub_19B5E0868;
      *&v22[16] = &unk_1E7532D90;
      *&v22[24] = v10;
      v23 = v12;
      xpc_connection_set_event_handler(v16, buf);
      xpc_connection_activate(*(v10 + 40));
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B5E1330(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19EAE8C40]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v25 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "Error received while trying to start the streaming connection", buf, 2u);
    }

    sub_19B5E063C(*(a1 + 32), v3, *(a1 + 40));
    sub_19B5E0ABC(*(a1 + 32));
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v5)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v3;
      string = xpc_dictionary_get_string(v8, "kRMConnectionMessageNameKey");
      v11 = objc_msgSend_stringWithUTF8String_(v7, v10, string);
      v12 = xpc_dictionary_get_value(v8, "kRMConnectionMessageError");

      if (v12 && MEMORY[0x19EAE8C40](v12) == MEMORY[0x1E69E9E70])
      {
        bytes_ptr = xpc_data_get_bytes_ptr(v12);
        if (bytes_ptr)
        {
          v27 = objc_alloc(MEMORY[0x1E695DEF0]);
          length = xpc_data_get_length(v12);
          bytes_ptr = objc_msgSend_initWithBytes_length_(v27, v29, bytes_ptr, length);
        }
      }

      else
      {
        bytes_ptr = 0;
      }

      if (objc_msgSend_isEqualToString_(v11, v13, @"kRMConnectionMessageError"))
      {
        if (bytes_ptr)
        {
          v16 = MEMORY[0x1E696ACD0];
          v17 = MEMORY[0x1E695DFD8];
          v18 = objc_opt_class();
          v20 = objc_msgSend_setWithObject_(v17, v19, v18);
          v33 = 0;
          v22 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v16, v21, v20, bytes_ptr, &v33);
          v23 = v33;

          if (v22)
          {
            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v24 = qword_1EAFE2ED0;
            if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = v22;
              _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Error while receiving a stream : %@", buf, 0xCu);
            }

            if (v6)
            {
              v6[2](v6, v22);
            }
          }

          else
          {
            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v31 = qword_1EAFE2ED0;
            if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v35 = v23;
              _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "Can't decode the error returned to the streaming request. Unarchiver error: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (qword_1EAFE2EC8 != -1)
          {
            dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
          }

          v30 = qword_1EAFE2ED0;
          if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v35 = v11;
            _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "No data in error message: %@", buf, 0xCu);
          }
        }

        sub_19B5E0ABC(v5);
      }

      else if (objc_msgSend_isEqualToString_(v11, v15, @"kRMConnectionMessageSuccess"))
      {
        if (qword_1EAFE2EC8 != -1)
        {
          dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
        }

        v26 = qword_1EAFE2ED0;
        if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "Streaming connection acknowledged from remote endpoint", buf, 2u);
        }
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B5E179C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 8));
    return *(v1 + 56) != 0;
  }

  return result;
}

id *sub_19B5E17D8(id *a1)
{
  if (a1)
  {
    a1 = a1[7];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_19B5E188C()
{
  qword_1EAFE2ED0 = os_log_create("com.apple.RelativeMotion", "IPC");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_19B5E19F8(uint64_t result)
{
  v1 = result;
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  v3 = *(v2 + 16);
  if (v3 != *(result + 40) || (*(v2 + 40) & 1) == 0)
  {

    result = objc_msgSend_copy(*(v1 + 40), v4, v5);
    *(*(v1 + 32) + 16) = result;
    if (!*(*(v1 + 32) + 8))
    {
      operator new();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5E1C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5E1CF8(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    result = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"CMProxPDPObject");
    if (v15)
    {
      *(*(a1 + 32) + 40) = 0;
      v19 = MEMORY[0x1E696ABC0];
      v20 = objc_msgSend_integerValue(v15, v17, v18);
      v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"CMErrorDomain", v20, 0);
      v23 = v6[2];
      v24 = v6;
      v25 = 0;
    }

    else
    {
      v25 = result;
      if (!result)
      {
        return result;
      }

      v23 = v6[2];
      v24 = v6;
      v22 = 0;
    }

    return v23(v24, v25, v22);
  }

  return result;
}

void sub_19B5E1E60(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEBUG))
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

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMProxPDPAndALSPhoneManagerInternal _startPDPUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B5E2058(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
    }

    v6 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138478339;
      v14 = v5;
      v15 = 1025;
      v16 = v7;
      v17 = 2049;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %{private}@, %{private}d, %{private}p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMProxPDPAndALSPhoneManagerInternal _startPDPUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B5E22FC(uint64_t result)
{
  v1 = result;
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  v3 = *(v2 + 24);
  if (v3 != *(result + 40) || (*(v2 + 41) & 1) == 0)
  {

    result = objc_msgSend_copy(*(v1 + 40), v4, v5);
    *(*(v1 + 32) + 24) = result;
    if (!*(*(v1 + 32) + 8))
    {
      operator new();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5E25D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  sub_19B41FFEC(v27);
  _Unwind_Resume(a1);
}

void *sub_19B5E266C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    result = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"CMALSPhoneObject");
    if (v15)
    {
      *(*(a1 + 32) + 41) = 0;
      v19 = MEMORY[0x1E696ABC0];
      v20 = objc_msgSend_integerValue(v15, v17, v18);
      v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"CMErrorDomain", v20, 0);
      v23 = v6[2];
      v24 = v6;
      v25 = 0;
    }

    else
    {
      v25 = result;
      if (!result)
      {
        return result;
      }

      v23 = v6[2];
      v24 = v6;
      v22 = 0;
    }

    return v23(v24, v25, v22);
  }

  return result;
}

void sub_19B5E27D4(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEBUG))
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

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMProxPDPAndALSPhoneManagerInternal _startALSPhoneUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B5E29CC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
    }

    v6 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138478339;
      v14 = v5;
      v15 = 1025;
      v16 = v7;
      v17 = 2049;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %{private}@, %{private}d, %{private}p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMProxPDPAndALSPhoneManagerInternal _startALSPhoneUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B5E2DF4()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

void *sub_19B5E2E98(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5E2EF4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B5E2EF4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5E2F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19B5E3140(double *a1, double *a2, double a3)
{
  v6 = *a1;
  v7 = sin(*a1 * 0.0174532925);
  v8 = sqrt(v7 * -0.00669437999 * v7 + 1.0);
  v9 = (6335439.33 / (v8 * (v8 * v8)) * 0.0174532925);
  v10 = a3;
  if (v9 >= 1)
  {
    v10 = a3 / v9;
  }

  v11 = v10 * floor(v6 / v10);
  *a1 = v11;
  v12 = __sincos_stret(v11 * 0.0174532925);
  v13 = (v12.__cosval * 0.0174532925 * (6378137.0 / sqrt(v12.__sinval * -0.00669437999 * v12.__sinval + 1.0)));
  if (v13 >= 1)
  {
    a3 = a3 / v13;
  }

  result = a3 * floor(*a2 / a3);
  *a2 = result;
  return result;
}

uint64_t sub_19B5E323C(const char *a1)
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

uint64_t sub_19B5E3290(_BYTE *a1, uid_t a2, gid_t a3)
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

uint64_t sub_19B5E338C(const char *a1, const char *a2)
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
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v12 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v13 = *__error();
      *buf = 136446466;
      v29 = a1;
      v30 = 1026;
      v31 = v13;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v26 = *__error();
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v15);
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
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v16 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v17 = *__error();
      *buf = 136446466;
      v29 = a2;
      v30 = 1026;
      v31 = v17;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v27 = *__error();
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v19);
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
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v10 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v29 = a2;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s", buf, 0xCu);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 == -1)
        {
LABEL_50:
          v23 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }

          goto LABEL_52;
        }

LABEL_63:
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
        goto LABEL_50;
      }

      goto LABEL_52;
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
  }

  v21 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v29 = a1;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
  }

  v22 = sub_19B420058();
  if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 == -1)
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

uint64_t sub_19B5E3A40(const char *a1, const char *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  PathComponent = objc_msgSend_lastPathComponent(v5, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"compress:%@", PathComponent);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  sub_19B5E4CEC(v42, v13, 0);
  bzerror = 0;
  v14 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v14)
  {
LABEL_58:
    v21 = 0;
    goto LABEL_59;
  }

  v15 = fopen(a1, "rb");
  if (!v15)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v26 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v27 = *__error();
      *buf = 136446466;
      v49 = a1;
      v50 = 1026;
      v51 = v27;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v29 = *__error();
      v44 = 136446466;
      v45 = a1;
      v46 = 1026;
      v47 = v29;
      v30 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    goto LABEL_58;
  }

  v16 = fopen(a2, "wb");
  if (!v16)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v31 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v32 = *__error();
      *buf = 136446466;
      v49 = a1;
      v50 = 1026;
      v51 = v32;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v34 = *__error();
      v44 = 136446466;
      v45 = a1;
      v46 = 1026;
      v47 = v34;
      v35 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    fclose(v15);
    goto LABEL_58;
  }

  v17 = BZ2_bzWriteOpen(&bzerror, v16, 1, 0, 0);
  if (bzerror)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v49 = a2;
      v50 = 1026;
      v51 = bzerror;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "cannot open compression stream: %{public}s, bzerror %{public}d", buf, 0x12u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
LABEL_91:
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

LABEL_13:
      v44 = 136446466;
      v45 = a2;
      v46 = 1026;
      v47 = bzerror;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v20);
LABEL_14:
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  else
  {
    while (1)
    {
      if (feof(v15))
      {
        v21 = 1;
        goto LABEL_17;
      }

      v25 = fread(v14, 1uLL, 0x400uLL, v15);
      if (v25 == -1)
      {
        break;
      }

      BZ2_bzWrite(&bzerror, v17, v14, v25);
      if (bzerror)
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
        }

        v40 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v49 = a2;
          v50 = 1026;
          v51 = bzerror;
          _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
        }

        v41 = sub_19B420058();
        if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
        {
          goto LABEL_16;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_13;
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v38 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v49 = a1;
      _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
    }

    v39 = sub_19B420058();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v44 = 136446210;
      v45 = a1;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v20);
      goto LABEL_14;
    }
  }

LABEL_16:
  v21 = 0;
LABEL_17:
  fclose(v15);
  if (v17)
  {
    BZ2_bzWriteClose(&bzerror, v17, 0, 0, 0);
    if (bzerror)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v22 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v49 = a2;
        v50 = 1026;
        v51 = bzerror;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "error closing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
        }

        v44 = 136446466;
        v45 = a2;
        v46 = 1026;
        v47 = bzerror;
        v24 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }
  }

  fclose(v16);
LABEL_59:
  free(v14);
  sub_19B5E4F34(v42);
  v36 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_19B5E44C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B5E4F34(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B5E44E4(double *a1, double *a2, double *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  times = mach_get_times();
  if (times)
  {
    if (qword_1EAFE2B38 != -1)
    {
      dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A3A0);
    }

    v7 = qword_1EAFE2B40;
    if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v15 = times;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "TCONV,mach_get_times failed,kern_return_t,%{public}d", buf, 8u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A3A0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLCommonSyncGetTimes(CFTimeInterval *, CFTimeInterval *, CFTimeInterval *)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  else
  {
    *a1 = sub_19B41E070(0);
    *a2 = sub_19B41E070(0);
    *a3 = v13 / 1000000000.0 + v12 - *MEMORY[0x1E695E468];
  }

  result = times == 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5E4718(const __CFString *a1, const __CFString *a2, Boolean *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &v31;
  }

  *v5 = 0;
  v6 = CFCopyUserName();
  if (CFEqual(v6, @"mobile"))
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, a2, v5);
    if (!*v5)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_msgSend_UTF8String(@"mobile", v7, v8);
      sub_19B428B50(v29, v11);
      sub_19B432230(v29, __p);
      if (v33 >= 0)
      {
        v13 = objc_msgSend_stringWithUTF8String_(v10, v12, __p);
      }

      else
      {
        v13 = objc_msgSend_stringWithUTF8String_(v10, v12, __p[0]);
      }

      v15 = v13;
      v16 = objc_msgSend_componentsJoinedByString_(&unk_1F0E6A170, v14, @"/");
      v18 = objc_msgSend_stringByAppendingPathComponent_(v15, v17, v16);
      v20 = objc_msgSend_stringByAppendingString_(v18, v19, @"/");
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      __p[0] = v20;
      __p[1] = a2;
      v21 = *MEMORY[0x1E695E480];
      v22 = CFArrayCreate(*MEMORY[0x1E695E480], __p, 2, MEMORY[0x1E695E9C0]);
      if (v22)
      {
        v23 = CFStringCreateByCombiningStrings(v21, v22, &stru_1F0E3D7A0);
        if (v23)
        {
          AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, v23, v5);
          CFRelease(v23);
        }

        CFRelease(v22);
      }
    }
  }

  else
  {
    v24 = CFPreferencesCopyValue(a1, a2, @"mobile", *MEMORY[0x1E695E898]);
    if (v24)
    {
      v25 = v24;
      v26 = CFGetTypeID(v24);
      if (v26 == CFBooleanGetTypeID())
      {
        *v5 = 1;
        AppBooleanValue = CFEqual(v25, *MEMORY[0x1E695E4D0]);
      }

      else if (v26 == CFNumberGetTypeID() && !CFNumberIsFloatType(v25))
      {
        *v5 = 1;
        LODWORD(__p[0]) = 0;
        CFNumberGetValue(v25, kCFNumberIntType, __p);
        AppBooleanValue = LODWORD(__p[0]) != 0;
      }

      else
      {
        AppBooleanValue = 0;
      }

      CFRelease(v25);
    }

    else
    {
      AppBooleanValue = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return AppBooleanValue;
}

void sub_19B5E4990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5E49CC(FILE *a1)
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

uint64_t *sub_19B5E4CEC(uint64_t *a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *a1 = os_transaction_create();
  a1[1] = 0;
  if (!a3)
  {
    a1[1] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, a2);
    if (qword_1EAFE2B48 != -1)
    {
      dispatch_once(&qword_1EAFE2B48, &unk_1F0E3A380);
    }

    v7 = qword_1EAFE2B50;
    if (os_log_type_enabled(qword_1EAFE2B50, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[1];
      *buf = 134349314;
      v15 = a1;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%{public}p) %{public}@", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B48 != -1)
      {
        dispatch_once(&qword_1EAFE2B48, &unk_1F0E3A380);
      }

      v13 = a1[1];
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLAutoOSTransaction::CLAutoOSTransaction(const char *, LoggingPolicy)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

os_log_t sub_19B5E4F04()
{
  result = os_log_create("com.apple.locationd.Utility", "QA");
  qword_1EAFE2B50 = result;
  return result;
}

id *sub_19B5E4F34(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1[1])
  {
    if (qword_1EAFE2B48 != -1)
    {
      dispatch_once(&qword_1EAFE2B48, &unk_1F0E3A380);
    }

    v2 = qword_1EAFE2B50;
    if (os_log_type_enabled(qword_1EAFE2B50, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[1];
      *buf = 134349314;
      v10 = a1;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "os_transaction releasing: (%{public}p) %{public}@", buf, 0x16u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B48 != -1)
      {
        dispatch_once(&qword_1EAFE2B48, &unk_1F0E3A380);
      }

      v8 = a1[1];
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLAutoOSTransaction::~CLAutoOSTransaction()", "CoreLocation: %s\n", v5);
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

void sub_19B5E513C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B45E110(a1);
}

os_log_t sub_19B5E5148()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  qword_1EAFE2B40 = result;
  return result;
}

void sub_19B5E5178(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  sub_19B4294F0(a1 + 1);
}

void sub_19B5E55E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  sub_19B5F4684(v74);
  sub_19B4C5B2C(v73, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5E5718(uint64_t *a1)
{
  v2 = (a1 + 1);
  (*(a1[1] + 16))(a1 + 1);
  if (*a1)
  {
    sub_19B50B004(*a1);
  }

  (*(*v2 + 24))(v2);
  sub_19B5F4684(v2);
  sub_19B4C5B2C(a1, 0);
  return a1;
}

uint64_t sub_19B5E57B8(uint64_t *a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a1 + 1;
  v4 = a1[1];
  v63 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v64 = 256;
  if (*a1)
  {
    sub_19B517F80(v59);
    sub_19B531838(v59);
    Current = CFAbsoluteTimeGetCurrent();
    v62 |= 1u;
    v61 = Current;
    sub_19B4DF8BC(v60);
    v7 = *(v60 + 88);
    v8 = *(a2 + 64);
    *(v7 + 152) |= 2u;
    *(v7 + 136) = v8;
    v9 = *(v60 + 88);
    v10 = *(a2 + 56);
    *(v9 + 152) |= 1u;
    *(v9 + 128) = v10;
    v11 = v60;
    LODWORD(v10) = *(a2 + 108);
    *(v60 + 132) |= 0x800u;
    *(v11 + 124) = v10;
    v12 = v60;
    v13 = *(a2 + 112);
    *(v60 + 132) |= 1u;
    *(v12 + 56) = v13;
    v14 = v60;
    *&v8 = *(a2 + 72);
    *(v60 + 132) |= 0x20u;
    *(v14 + 100) = v8;
    v15 = v60;
    *&v8 = *(a2 + 120);
    *(v60 + 132) |= 0x200u;
    *(v15 + 116) = v8;
    v16 = *(v60 + 88);
    LODWORD(__src) = *a2;
    sub_19B5C706C((v16 + 56), &__src);
    v17 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 4);
    sub_19B5C706C((v17 + 56), &__src);
    v18 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 8);
    sub_19B5C706C((v18 + 56), &__src);
    v19 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 12);
    sub_19B5C706C((v19 + 56), &__src);
    v20 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 16);
    sub_19B5C706C((v20 + 80), &__src);
    v21 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 20);
    sub_19B5C706C((v21 + 80), &__src);
    v22 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 24);
    sub_19B5C706C((v22 + 80), &__src);
    v23 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 28);
    sub_19B5C706C((v23 + 32), &__src);
    v24 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 32);
    sub_19B5C706C((v24 + 32), &__src);
    v25 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 36);
    sub_19B5C706C((v25 + 32), &__src);
    v26 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 40);
    sub_19B5C706C((v26 + 104), &__src);
    v27 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 44);
    sub_19B5C706C((v27 + 104), &__src);
    v28 = *(v60 + 88);
    LODWORD(__src) = *(a2 + 48);
    sub_19B5C706C((v28 + 104), &__src);
    v29 = *(v60 + 88);
    v30 = *(a2 + 52);
    *(v29 + 152) |= 4u;
    *(v29 + 144) = v30;
    LODWORD(__src) = *(a2 + 80);
    sub_19B5C706C((v60 + 8), &__src);
    LODWORD(__src) = *(a2 + 84);
    sub_19B5C706C((v60 + 8), &__src);
    LODWORD(__src) = *(a2 + 88);
    sub_19B5C706C((v60 + 8), &__src);
    v31 = v60;
    v32 = *(a2 + 92);
    *(v60 + 132) |= 0x100u;
    *(v31 + 112) = v32;
    v33 = v60;
    v34 = *(a2 + 96);
    *(v60 + 132) |= 0x80u;
    *(v33 + 108) = v34;
    v35 = v60;
    if (*(a2 + 104) == 2)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    *(v60 + 132) |= 0x40u;
    *(v35 + 104) = v36;
    v37 = v60;
    v38 = *(a2 + 100);
    *(v60 + 132) |= 0x400u;
    *(v37 + 120) = v38;
    v39 = v60;
    LOBYTE(v38) = *(a2 + 143);
    *(v60 + 132) |= 0x2000u;
    *(v39 + 129) = v38;
    v40 = v60;
    v41 = *(a2 + 144);
    *(v60 + 132) |= 8u;
    *(v40 + 80) = v41;
    v42 = v60;
    v43 = *(a2 + 152);
    *(v60 + 132) |= 4u;
    *(v42 + 72) = v43;
    v44 = v60;
    LOBYTE(v38) = *(a2 + 160);
    *(v60 + 132) |= 0x1000u;
    *(v44 + 128) = v38;
    v45 = v60;
    LOBYTE(v38) = *(a2 + 161);
    *(v60 + 132) |= 0x4000u;
    *(v45 + 130) = v38;
    if (*(a2 + 140) == 1)
    {
      __src = *(a2 + 128);
      v66 = *(a2 + 136);
      v46 = v60;
      v48 = (v60 + 32);
      v47 = *(v60 + 32);
      v49 = *(v60 + 48);
      if ((v49 - v47) < 9)
      {
        if (v47)
        {
          *(v60 + 40) = v47;
          operator delete(v47);
          v49 = 0;
          *v48 = 0;
          v48[1] = 0;
          v48[2] = 0;
        }

        v50 = v49 >> 1;
        if ((v49 >> 1) <= 3)
        {
          v50 = 3;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v51 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        sub_19B4C4F6C(v48, v51);
      }

      v52 = *(v60 + 40);
      v53 = v52 - v47;
      if ((v52 - v47) > 8)
      {
        *v47 = __src;
        *(v47 + 2) = v66;
        *(v46 + 40) = v47 + 12;
      }

      else
      {
        if (v52 != v47)
        {
          memmove(v47, &__src, v52 - v47);
          v52 = *(v46 + 40);
        }

        v54 = v52;
        do
        {
          *v52 = *(&__src + v53);
          v52 += 4;
          v53 += 4;
          v54 += 4;
        }

        while (v53 != 12);
        *(v46 + 40) = v54;
      }
    }

    if (*(a2 + 142) == 1)
    {
      v55 = v60;
      v56 = *(a2 + 141);
      *(v60 + 132) |= 0x10u;
      *(v55 + 96) = v56;
    }

    sub_19B50AF20(*a1, v59);
    sub_19B51DBD4(v59);
  }

  result = (*(*v5 + 24))(v5);
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5E5D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19B51DBD4(&a9);
  sub_19B5C6074((v9 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E5DB4(uint64_t *a1, double *a2)
{
  v4 = a1[1];
  v38 = a1 + 1;
  (*(v4 + 16))();
  v40 = 256;
  if (!*a1)
  {
    return (*(*v38 + 24))(v38);
  }

  sub_19B517F80(v35);
  sub_19B532918(v35);
  Current = CFAbsoluteTimeGetCurrent();
  v37 |= 1u;
  *&v35[87] = Current;
  v6 = v36;
  v7 = *a2;
  *(v36 + 124) |= 0x10u;
  *(v6 + 40) = v7;
  v8 = v36;
  *&v7 = a2[2];
  *(v36 + 124) |= 2u;
  *(v8 + 16) = *&v7;
  v9 = v36;
  *&v7 = a2[3];
  *(v36 + 124) |= 4u;
  *(v9 + 24) = *&v7;
  v10 = v36;
  *&v7 = a2[4];
  *(v36 + 124) |= 8u;
  *(v10 + 32) = *&v7;
  v11 = v36;
  *&v7 = a2[1];
  *(v36 + 124) |= 1u;
  *(v11 + 8) = *&v7;
  v12 = v36;
  LODWORD(v7) = *(a2 + 10);
  *(v36 + 124) |= 0x40000u;
  *(v12 + 100) = LODWORD(v7);
  v13 = v36;
  LODWORD(v7) = *(a2 + 11);
  *(v36 + 124) |= 0x80000u;
  *(v13 + 104) = LODWORD(v7);
  v14 = v36;
  LODWORD(v7) = *(a2 + 12);
  *(v36 + 124) |= 0x100000u;
  *(v14 + 108) = LODWORD(v7);
  v15 = v36;
  LODWORD(v7) = *(a2 + 13);
  *(v36 + 124) |= 0x2000u;
  *(v15 + 80) = LODWORD(v7);
  v16 = v36;
  LODWORD(v7) = *(a2 + 14);
  *(v36 + 124) |= 0x4000u;
  *(v16 + 84) = LODWORD(v7);
  v17 = v36;
  LODWORD(v7) = *(a2 + 15);
  *(v36 + 124) |= 0x8000u;
  *(v17 + 88) = LODWORD(v7);
  v18 = v36;
  LODWORD(v7) = *(a2 + 16);
  *(v36 + 124) |= 0x100u;
  *(v18 + 60) = LODWORD(v7);
  v19 = v36;
  LODWORD(v7) = *(a2 + 17);
  *(v36 + 124) |= 0x200u;
  *(v19 + 64) = LODWORD(v7);
  v20 = v36;
  LODWORD(v7) = *(a2 + 18);
  *(v36 + 124) |= 0x400u;
  *(v20 + 68) = LODWORD(v7);
  v21 = v36;
  v22 = *(a2 + 19);
  *(v36 + 124) |= 0x80u;
  *(v21 + 56) = v22;
  v23 = v36;
  LODWORD(v7) = *(a2 + 21);
  *(v36 + 124) |= 0x800u;
  *(v23 + 72) = LODWORD(v7);
  v24 = v36;
  LODWORD(v7) = *(a2 + 24);
  *(v36 + 124) |= 0x20u;
  *(v24 + 48) = LODWORD(v7);
  v25 = v36;
  *(v36 + 124) |= 0x20000u;
  *(v25 + 96) = -1082130432;
  v26 = v36;
  v27 = *(a2 + 120);
  *(v36 + 124) |= 0x1000u;
  *(v26 + 76) = v27;
  v28 = v36;
  v29 = *(a2 + 29);
  *(v36 + 124) |= 0x40u;
  *(v28 + 52) = v29;
  v30 = v36;
  v31 = *(a2 + 61);
  *(v36 + 124) |= 0x10000u;
  *(v30 + 92) = v31;
  v32 = v36;
  *(v36 + 124) |= 0x800000u;
  *(v32 + 120) = 1;
  v33 = v36;
  LODWORD(v7) = *(a2 + 31);
  *(v36 + 124) |= 0x400000u;
  *(v33 + 116) = LODWORD(v7);
  sub_19B50AF20(*a1, v35);
  result = sub_19B51DBD4(v35);
  if ((v40 & 0x100) == 0)
  {
    return result;
  }

  if (v40)
  {
    return pthread_mutex_unlock(v39);
  }

  else
  {
    return (*(*v38 + 24))(v38);
  }
}

void sub_19B5E60E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E6104(uint64_t *a1, uint64_t a2, int *a3, double a4)
{
  v8 = a1[1];
  v55 = a1 + 1;
  (*(v8 + 16))();
  v57 = 256;
  if (!*a1)
  {
    return (*(*v55 + 24))(v55);
  }

  sub_19B517F80(v52);
  sub_19B531718(v52);
  v9 = *(a2 + 8);
  v52[87] = *a2;
  v54 |= 1u;
  v10 = v53;
  *(v53 + 140) |= 2u;
  *(v10 + 16) = v9;
  v11 = v53;
  v12 = *(a2 + 16);
  *(v53 + 140) |= 0x4000000u;
  *(v11 + 120) = v12;
  v13 = v53;
  v14 = *(a2 + 20);
  *(v53 + 140) |= 0x20000u;
  *(v13 + 84) = v14;
  v15 = v53;
  v16 = *(a2 + 32);
  *(v53 + 140) |= 0x100000u;
  *(v15 + 96) = v16;
  v17 = v53;
  v18 = *(a2 + 40);
  *(v53 + 140) |= 0x200000u;
  *(v17 + 100) = v18;
  v19 = v53;
  v20 = *(a2 + 48);
  *(v53 + 140) |= 0x400000u;
  *(v19 + 104) = v20;
  v21 = v53;
  v22 = *(a2 + 24);
  *(v53 + 140) |= 0x80000u;
  *(v21 + 92) = v22;
  v23 = v53;
  v24 = *(a2 + 56);
  *(v53 + 140) |= 0x8000000u;
  *(v23 + 124) = v24;
  v25 = v53;
  v26 = *(a2 + 60);
  *(v53 + 140) |= 0x10000000u;
  *(v25 + 128) = v26;
  v27 = v53;
  v28 = *(a2 + 64);
  *(v53 + 140) |= 0x20000000u;
  *(v27 + 132) = v28;
  v29 = v53;
  v30 = *(a2 + 68);
  *(v53 + 140) |= 0x8000u;
  *(v29 + 76) = v30;
  v31 = v53;
  v32 = *(a2 + 72);
  *(v53 + 140) |= 0x20u;
  *(v31 + 36) = v32;
  v33 = v53;
  v34 = *(a2 + 76);
  *(v53 + 140) |= 0x400u;
  *(v33 + 56) = v34;
  v35 = v53;
  v36 = *(a2 + 80);
  *(v53 + 140) |= 4u;
  *(v35 + 24) = v36;
  v37 = v53;
  v38 = *(a2 + 84);
  *(v53 + 140) |= 0x10u;
  *(v37 + 32) = v38;
  v39 = v53;
  v40 = *(a2 + 144);
  *(v53 + 140) |= 0x10000u;
  *(v39 + 80) = v40;
  v41 = v53;
  LOBYTE(v40) = *(a3 + 5);
  *(v53 + 140) |= 0x40000000u;
  *(v41 + 136) = v40;
  v42 = v53;
  v43 = a3[2];
  *(v53 + 140) |= 0x40u;
  *(v42 + 40) = v43;
  v44 = v53;
  LOBYTE(v43) = *(a3 + 4);
  *(v53 + 140) |= 0x80000000;
  *(v44 + 137) = v43;
  v45 = v53;
  v46 = *a3;
  *(v53 + 140) |= 8u;
  *(v45 + 28) = v46;
  v47 = v53;
  v48 = *(a3 + 2);
  *(v53 + 140) |= 1u;
  *(v47 + 8) = v48;
  if (a4 >= 0.0)
  {
    v49 = v53;
    v50 = a4;
    *(v53 + 140) |= 0x4000u;
    *(v49 + 72) = v50;
  }

  sub_19B50AF20(*a1, v52);
  result = sub_19B51DBD4(v52);
  if ((v57 & 0x100) != 0)
  {
    if (v57)
    {
      return pthread_mutex_unlock(v56);
    }

    return (*(*v55 + 24))(v55);
  }

  return result;
}

void sub_19B5E6424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E6440(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v47 = a1 + 1;
  (*(v4 + 16))();
  v49 = 256;
  if (!*a1)
  {
    return (*(*v47 + 24))(v47);
  }

  sub_19B517F80(v44);
  sub_19B532B58(v44);
  Current = CFAbsoluteTimeGetCurrent();
  v46 |= 1u;
  *&v44[87] = Current;
  v6 = v45;
  v7 = *a2 * 0.000001;
  *(v45 + 164) |= 2u;
  *(v6 + 64) = v7;
  v8 = v45;
  v9 = *(a2 + 8) * 0.000001;
  *(v45 + 164) |= 1u;
  *(v8 + 56) = v9;
  v10 = v45;
  LODWORD(v9) = *(a2 + 16);
  *(v45 + 164) |= 0x800u;
  *(v10 + 108) = LODWORD(v9);
  v11 = v45;
  LODWORD(v9) = *(a2 + 20);
  *(v45 + 164) |= 0x1000u;
  *(v11 + 112) = LODWORD(v9);
  v12 = v45;
  LODWORD(v9) = *(a2 + 24);
  *(v45 + 164) |= 0x2000u;
  *(v12 + 116) = LODWORD(v9);
  v13 = v45;
  LODWORD(v9) = *(a2 + 28);
  *(v45 + 164) |= 0x4000u;
  *(v13 + 120) = LODWORD(v9);
  v14 = v45;
  LODWORD(v9) = *(a2 + 32);
  *(v45 + 164) |= 0x8000u;
  *(v14 + 124) = LODWORD(v9);
  v15 = v45;
  LODWORD(v9) = *(a2 + 36);
  *(v45 + 164) |= 0x10000u;
  *(v15 + 128) = LODWORD(v9);
  v16 = v45;
  LODWORD(v9) = *(a2 + 40);
  *(v45 + 164) |= 0x80000u;
  *(v16 + 140) = LODWORD(v9);
  v17 = v45;
  LODWORD(v9) = *(a2 + 44);
  *(v45 + 164) |= 0x100000u;
  *(v17 + 144) = LODWORD(v9);
  v18 = v45;
  LODWORD(v9) = *(a2 + 48);
  *(v45 + 164) |= 0x200000u;
  *(v18 + 148) = LODWORD(v9);
  v19 = v45;
  LODWORD(v9) = *(a2 + 52);
  *(v45 + 164) |= 0x100u;
  *(v19 + 96) = LODWORD(v9);
  v20 = v45;
  LODWORD(v9) = *(a2 + 56);
  *(v45 + 164) |= 0x200u;
  *(v20 + 100) = LODWORD(v9);
  v21 = v45;
  LODWORD(v9) = *(a2 + 60);
  *(v45 + 164) |= 0x400u;
  *(v21 + 104) = LODWORD(v9);
  v22 = v45;
  LODWORD(v9) = *(a2 + 64);
  *(v45 + 164) |= 0x80u;
  *(v22 + 92) = LODWORD(v9);
  v23 = v45;
  v24 = *(a2 + 68);
  *(v45 + 164) |= 0x400000u;
  *(v23 + 152) = v24;
  v25 = v45;
  v26 = *(a2 + 69);
  *(v45 + 164) |= 0x20000000u;
  *(v25 + 159) = v26;
  v27 = v45;
  LODWORD(v9) = *(a2 + 72);
  *(v45 + 164) |= 0x10u;
  *(v27 + 80) = LODWORD(v9);
  v28 = v45;
  LODWORD(v9) = *(a2 + 76);
  *(v45 + 164) |= 8u;
  *(v28 + 76) = LODWORD(v9);
  v29 = v45;
  LODWORD(v9) = *(a2 + 80);
  *(v45 + 164) |= 4u;
  *(v29 + 72) = LODWORD(v9);
  v30 = v45;
  LODWORD(v9) = *(a2 + 84);
  *(v45 + 164) |= 0x20u;
  *(v30 + 84) = LODWORD(v9);
  v31 = v45;
  v32 = *(a2 + 88);
  *(v45 + 164) |= 0x80000000;
  *(v31 + 161) = v32;
  v33 = v45;
  v34 = *(a2 + 89);
  *(v45 + 164) |= 0x10000000u;
  *(v33 + 158) = v34;
  v35 = v45;
  v36 = *(a2 + 90);
  *(v45 + 164) |= 0x4000000u;
  *(v35 + 156) = v36;
  v37 = v45;
  v38 = *(a2 + 91);
  *(v45 + 164) |= 0x40000000u;
  *(v37 + 160) = v38;
  v39 = v45;
  v40 = *(a2 + 92);
  *(v45 + 164) |= 0x40u;
  *(v39 + 88) = v40;
  v41 = v45;
  v42 = *(a2 + 96);
  *(v45 + 164) |= 0x20000u;
  *(v41 + 132) = v42;
  sub_19B50AF20(*a1, v44);
  result = sub_19B51DBD4(v44);
  if ((v49 & 0x100) == 0)
  {
    return result;
  }

  if (v49)
  {
    return pthread_mutex_unlock(v48);
  }

  else
  {
    return (*(*v47 + 24))(v47);
  }
}

void sub_19B5E67CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E67E8(uint64_t *a1, uint64_t a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v22 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v23 = 256;
  if (*a1)
  {
    sub_19B517F80(v19);
    sub_19B532BE8(v19);
    Current = CFAbsoluteTimeGetCurrent();
    v21 |= 1u;
    *&v19[87] = Current;
    v7 = v20;
    v8 = *a2 * 0.000001;
    *(v20 + 80) |= 1u;
    *(v7 + 8) = v8;
    v9 = v20;
    v10 = *(a2 + 8) * 0.000001;
    *(v20 + 80) |= 4u;
    *(v9 + 24) = v10;
    v11 = v20;
    v12 = *(a2 + 16) * 0.000001;
    *(v20 + 80) |= 2u;
    *(v11 + 16) = v12;
    v13 = v20;
    LODWORD(v12) = *(a2 + 24);
    *(v20 + 80) |= 0x800u;
    *(v13 + 64) = LODWORD(v12);
    v14 = v20;
    LODWORD(v12) = *(a2 + 28);
    *(v20 + 80) |= 0x1000u;
    *(v14 + 68) = LODWORD(v12);
    v15 = v20;
    LODWORD(v12) = *(a2 + 32);
    *(v20 + 80) |= 0x2000u;
    *(v15 + 72) = LODWORD(v12);
    v16 = v20;
    v17 = *(a2 + 36);
    *(v20 + 80) |= 0x4000u;
    *(v16 + 76) = v17;
    sub_19B50AF20(*a1, v19);
    sub_19B51DBD4(v19);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E6988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E69A4(uint64_t *a1, float64x2_t *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v30 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v31 = 256;
  if (*a1)
  {
    sub_19B517F80(v27);
    sub_19B5318C8(v27);
    Current = CFAbsoluteTimeGetCurrent();
    v29 |= 1u;
    v27[87] = Current;
    v7 = v28;
    v8 = a2->f64[0];
    *(v28 + 128) |= 0x20u;
    *(v7 + 96) = v8;
    v9 = v28;
    v10 = a2->f64[1];
    *(v28 + 128) |= 0x10u;
    *(v9 + 88) = v10;
    v11 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[1]), a2[2]);
    v26 = vextq_s8(v11, v11, 4uLL);
    sub_19B41E130(&v26, v26);
    for (i = 0; i != 4; ++i)
    {
      v25.i32[0] = v26.i32[i];
      sub_19B5C706C((v28 + 32), &v25);
    }

    v13 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[3]), a2[4]);
    v25 = vextq_s8(v13, v13, 4uLL);
    sub_19B41E130(&v25, v25);
    for (j = 0; j != 4; ++j)
    {
      v24 = v25.i32[j];
      sub_19B5C706C((v28 + 8), &v24);
    }

    v15 = v28;
    v16 = a2[5].f64[0];
    *(v28 + 128) |= 1u;
    *(v15 + 56) = v16;
    v17 = v28;
    v18 = a2[5].f64[1];
    *(v28 + 128) |= 8u;
    *(v17 + 80) = v18;
    v19 = v28;
    v20 = a2[6].f64[0];
    *(v28 + 128) |= 2u;
    *(v19 + 64) = v20;
    v21 = v28;
    v22 = a2[6].f64[1];
    *(v28 + 128) |= 4u;
    *(v21 + 72) = v22;
    sub_19B50AF20(*a1, v27);
    sub_19B51DBD4(v27);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E6BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19B51DBD4(va);
  sub_19B5C6074((v8 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E6BD8(uint64_t *a1, double a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v13 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v14 = 256;
  if (*a1)
  {
    sub_19B517F80(v10);
    sub_19B532888(v10);
    Current = CFAbsoluteTimeGetCurrent();
    v12 |= 1u;
    *&v10[87] = Current;
    v7 = v11;
    *(v11 + 20) |= 1u;
    *(v7 + 8) = a2;
    v8 = v11;
    *(v11 + 20) |= 2u;
    *(v8 + 16) = 1;
    sub_19B50AF20(*a1, v10);
    sub_19B51DBD4(v10);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E6CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v32 = *MEMORY[0x1E69E9840];
  v8 = v3 + 8;
  v7 = *(v3 + 8);
  v25 = v3 + 8;
  (*(v7 + 16))(v3 + 8);
  v26 = 256;
  if (*v6)
  {
    sub_19B517F80(v21);
    sub_19B5317A8(v21);
    Current = CFAbsoluteTimeGetCurrent();
    v24 |= 1u;
    v22 = Current;
    v10 = v23;
    v11 = mach_absolute_time();
    v12 = sub_19B41E070(v11);
    *(v10 + 24) |= 1u;
    *(v10 + 16) = v12;
    v13 = v23;
    sub_19B428B50(buf, v5);
    v14 = *(v13 + 8);
    if (!v14)
    {
      operator new();
    }

    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    v15 = *buf;
    *(v14 + 16) = *&buf[16];
    *v14 = v15;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F00);
    }

    v16 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 136380931;
      *&buf[4] = v5;
      *&buf[12] = 2049;
      *&buf[14] = v22;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "[CMSpatialLogger] Logging event: %{private}s timestamp: %{private}f", buf, 0x16u);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F00);
      }

      v27 = 136380931;
      v28 = v5;
      v29 = 2049;
      v30 = v22;
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSpatialLogger::logEvent(const char *const)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    sub_19B50AF20(*v6, v21);
    sub_19B51DBD4(v21);
  }

  result = (*(*v8 + 24))(v8);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5E7048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 55) < 0)
  {
    operator delete(STACK[0xFB0]);
  }

  sub_19B51DBD4(va);
  sub_19B5C6074(&STACK[0xF78]);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7094(uint64_t *a1, int *a2)
{
  v4 = a1[1];
  v49 = a1 + 1;
  (*(v4 + 16))();
  v51 = 256;
  if (!*a1)
  {
    return (*(*v49 + 24))(v49);
  }

  sub_19B517F80(v46);
  sub_19B531958(v46);
  Current = CFAbsoluteTimeGetCurrent();
  v48 |= 1u;
  *&v46[87] = Current;
  v6 = v47;
  v7 = *a2;
  *(v47 + 116) |= 0x10000u;
  *(v6 + 92) = v7;
  v8 = v47;
  v9 = a2[4];
  *(v47 + 116) |= 0x200u;
  *(v8 + 64) = v9;
  v10 = v47;
  v11 = a2[1];
  *(v47 + 116) |= 0x20u;
  *(v10 + 48) = v11;
  v12 = v47;
  v13 = a2[2];
  *(v47 + 116) |= 0x2000u;
  *(v12 + 80) = v13;
  v14 = v47;
  v15 = a2[3];
  *(v47 + 116) |= 0x400u;
  *(v14 + 68) = v15;
  v16 = v47;
  LOBYTE(v15) = *(a2 + 32);
  *(v47 + 116) |= 0x100000u;
  *(v16 + 108) = v15;
  v17 = v47;
  LODWORD(Current) = a2[9];
  *(v47 + 116) |= 0x8000u;
  *(v17 + 88) = LODWORD(Current);
  v18 = v47;
  v19 = *(a2 + 5);
  *(v47 + 116) |= 4u;
  *(v18 + 24) = v19;
  v20 = v47;
  LOBYTE(v15) = *(a2 + 48);
  *(v47 + 116) |= 0x200000u;
  *(v20 + 109) = v15;
  v21 = v47;
  v22 = a2[13];
  *(v47 + 116) |= 0x100u;
  *(v21 + 60) = v22;
  v23 = v47;
  v24 = *(a2 + 7);
  *(v47 + 116) |= 1u;
  *(v23 + 8) = v24;
  v25 = v47;
  v26 = *(a2 + 10);
  *(v47 + 116) |= 2u;
  *(v25 + 16) = v26;
  v27 = v47;
  v28 = a2[22];
  *(v47 + 116) |= 0x1000u;
  *(v27 + 76) = v28;
  v29 = v47;
  v30 = a2[23];
  *(v47 + 116) |= 0x800u;
  *(v29 + 72) = v30;
  v31 = v47;
  LOBYTE(v30) = a2[24] & 1;
  *(v47 + 116) |= 0x2000000u;
  *(v31 + 113) = v30;
  v32 = v47;
  LOBYTE(v30) = (a2[24] & 2) != 0;
  *(v47 + 116) |= 0x1000000u;
  *(v32 + 112) = v30;
  v33 = v47;
  LOBYTE(v30) = (a2[24] & 4) != 0;
  *(v47 + 116) |= 0x400000u;
  *(v33 + 110) = v30;
  v34 = v47;
  LOBYTE(v30) = (a2[24] & 8) != 0;
  *(v47 + 116) |= 0x4000000u;
  *(v34 + 114) = v30;
  v35 = v47;
  LOBYTE(v30) = (a2[24] & 0x10) != 0;
  *(v47 + 116) |= 0x800000u;
  *(v35 + 111) = v30;
  v36 = v47;
  v37 = a2[25];
  *(v47 + 116) |= 0x40000u;
  *(v36 + 100) = v37;
  v38 = v47;
  v39 = a2[26];
  *(v47 + 116) |= 0x80000u;
  *(v38 + 104) = v39;
  v40 = v47;
  v41 = *(a2 + 14);
  *(v47 + 116) |= 8u;
  *(v40 + 32) = v41;
  v42 = v47;
  v43 = *(a2 + 15);
  *(v47 + 116) |= 0x10u;
  *(v42 + 40) = v43;
  v44 = v47;
  LODWORD(v43) = a2[32];
  *(v47 + 116) |= 0x20000u;
  *(v44 + 96) = v43;
  sub_19B50AF20(*a1, v46);
  result = sub_19B51DBD4(v46);
  if ((v51 & 0x100) == 0)
  {
    return result;
  }

  if (v51)
  {
    return pthread_mutex_unlock(v50);
  }

  else
  {
    return (*(*v49 + 24))(v49);
  }
}

void sub_19B5E73D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E73F0(uint64_t *a1, char *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v21 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v22 = 256;
  if (*a1)
  {
    sub_19B517F80(v17);
    sub_19B532D98(v17);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    v19 = Current;
    sub_19B4CEB20(v18);
    v7 = *(v18 + 32);
    v8 = *a2;
    *(v7 + 36) |= 2u;
    *(v7 + 28) = v8;
    v9 = *(v18 + 32);
    sub_19B428B50(&__p, a2 + 4);
    sub_19B5C62E0(v9, &__p);
    if (v16 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v10 = *(v18 + 32);
    sub_19B428B50(&__p, a2 + 68);
    sub_19B5C6334(v10, &__p);
    if (v16 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v11 = *(v18 + 32);
    v12 = *(a2 + 25);
    *(v11 + 36) |= 1u;
    *(v11 + 24) = v12;
    v13 = v18;
    LOBYTE(v12) = a2[124];
    *(v18 + 44) |= 1u;
    *(v13 + 40) = v12;
    __p.n128_u32[0] = *(a2 + 32);
    sub_19B5C706C((v18 + 8), &__p);
    __p.n128_u32[0] = *(a2 + 33);
    sub_19B5C706C((v18 + 8), &__p);
    __p.n128_u32[0] = *(a2 + 34);
    sub_19B5C706C((v18 + 8), &__p);
    __p.n128_u32[0] = *(a2 + 35);
    sub_19B5C706C((v18 + 8), &__p);
    sub_19B50AF20(*a1, v17);
    sub_19B51DBD4(v17);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E75E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_19B51DBD4(&a15);
  sub_19B5C6074((v15 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7638(uint64_t *a1, char *a2, double a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  v17 = a1 + 1;
  (*(v6 + 16))(a1 + 1);
  v18 = 256;
  if (*a1)
  {
    sub_19B517F80(v14);
    sub_19B5319E8(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v16 |= 1u;
    *&v14[87] = Current;
    v9 = v15;
    sub_19B428B50(&__p, a2);
    sub_19B5C62E0(v9, &__p);
    if (v13 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v10 = v15;
    *(v15 + 24) |= 1u;
    *(v10 + 16) = a3;
    sub_19B50AF20(*a1, v14);
    sub_19B51DBD4(v14);
  }

  return (*(*v7 + 24))(v7);
}

void sub_19B5E7760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_19B51DBD4(&a15);
  sub_19B5C6074((v15 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E779C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v31 = a1 + 1;
  (*(v4 + 16))();
  v33 = 256;
  if (!*a1)
  {
    return (*(*v31 + 24))(v31);
  }

  sub_19B517F80(v28);
  sub_19B532E28(v28);
  Current = CFAbsoluteTimeGetCurrent();
  v30 |= 1u;
  *&v28[87] = Current;
  v6 = v29;
  LODWORD(Current) = *a2;
  *(v29 + 60) |= 8u;
  *(v6 + 24) = LODWORD(Current);
  v7 = v29;
  LODWORD(Current) = *(a2 + 4);
  *(v29 + 60) |= 0x10u;
  *(v7 + 28) = LODWORD(Current);
  v8 = v29;
  LODWORD(Current) = *(a2 + 8);
  *(v29 + 60) |= 0x20u;
  *(v8 + 32) = LODWORD(Current);
  v9 = v29;
  LODWORD(Current) = *(a2 + 12);
  *(v29 + 60) |= 0x40u;
  *(v9 + 36) = LODWORD(Current);
  v10 = v29;
  LODWORD(Current) = *(a2 + 16);
  *(v29 + 60) |= 0x200u;
  *(v10 + 48) = LODWORD(Current);
  v11 = v29;
  LODWORD(Current) = *(a2 + 20);
  *(v29 + 60) |= 0x100u;
  *(v11 + 44) = LODWORD(Current);
  v12 = v29;
  LODWORD(Current) = *(a2 + 24);
  *(v29 + 60) |= 0x400u;
  *(v12 + 52) = LODWORD(Current);
  v13 = v29;
  v14 = *(a2 + 28);
  *(v29 + 60) |= 0x4000u;
  *(v13 + 59) = v14;
  v15 = v29;
  v16 = *(a2 + 29);
  *(v29 + 60) |= 0x2000u;
  *(v15 + 58) = v16;
  v17 = v29;
  v18 = *(a2 + 30);
  *(v29 + 60) |= 0x1000u;
  *(v17 + 57) = v18;
  v19 = v29;
  v20 = *(a2 + 40);
  *(v29 + 60) |= 0x800u;
  *(v19 + 56) = v20;
  v21 = v29;
  LODWORD(Current) = *(a2 + 44);
  *(v29 + 60) |= 2u;
  *(v21 + 16) = LODWORD(Current);
  v22 = v29;
  LODWORD(Current) = *(a2 + 48);
  *(v29 + 60) |= 4u;
  *(v22 + 20) = LODWORD(Current);
  v23 = v29;
  v24 = *(a2 + 52);
  *(v29 + 60) |= 0x80u;
  *(v23 + 40) = v24;
  v25 = v29;
  v26 = *(a2 + 32);
  *(v29 + 60) |= 1u;
  *(v25 + 8) = v26;
  sub_19B50AF20(*a1, v28);
  result = sub_19B51DBD4(v28);
  if ((v33 & 0x100) == 0)
  {
    return result;
  }

  if (v33)
  {
    return pthread_mutex_unlock(v32);
  }

  else
  {
    return (*(*v31 + 24))(v31);
  }
}

void sub_19B5E79F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19B5E7A0C(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28F00);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "[CMSpatialLogger] logStepDetectionResult walking,%{public}d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F00);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSpatialLogger::logStepDetectionResult(BOOL)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (*(a1 + 24) == 1)
  {
    if (a2)
    {
      v7 = 1547;
    }

    else
    {
      v7 = 1430;
    }

    AudioServicesPlaySystemSound(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B5E7BFC(uint64_t *a1, int a2, double a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  v16 = a1 + 1;
  (*(v6 + 16))(a1 + 1);
  v17 = 256;
  if (*a1)
  {
    sub_19B517F80(v12);
    sub_19B532EB8(v12);
    Current = CFAbsoluteTimeGetCurrent();
    v15 |= 1u;
    v14 = Current;
    v9 = v13;
    *(v13 + 16) |= 1u;
    *(v9 + 8) = a2;
    v10 = v13;
    *&Current = a3;
    *(v13 + 16) |= 2u;
    *(v10 + 12) = LODWORD(Current);
    sub_19B50AF20(*a1, v12);
    sub_19B51DBD4(v12);
  }

  return (*(*v7 + 24))(v7);
}

void sub_19B5E7D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7D28(uint64_t *a1, int a2, int a3, double a4)
{
  v9 = a1 + 1;
  v8 = a1[1];
  v18 = a1 + 1;
  (*(v8 + 16))(a1 + 1);
  v19 = 256;
  if (*a1)
  {
    sub_19B517F80(v15);
    sub_19B532F48(v15);
    Current = CFAbsoluteTimeGetCurrent();
    v17 |= 1u;
    *&v15[87] = Current;
    v11 = v16;
    *&Current = a4;
    *(v16 + 20) |= 4u;
    *(v11 + 16) = LODWORD(Current);
    v12 = v16;
    *(v16 + 20) |= 1u;
    *(v12 + 8) = a2;
    v13 = v16;
    *(v16 + 20) |= 2u;
    *(v13 + 12) = a3;
    sub_19B50AF20(*a1, v15);
    sub_19B51DBD4(v15);
  }

  return (*(*v9 + 24))(v9);
}

void sub_19B5E7E58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7E74(uint64_t *a1, int a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v12 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v13 = 256;
  if (*a1)
  {
    sub_19B517F80(v9);
    sub_19B532FD8(v9);
    Current = CFAbsoluteTimeGetCurrent();
    v11 |= 1u;
    *&v9[87] = Current;
    v7 = v10;
    *(v10 + 12) |= 1u;
    *(v7 + 8) = a2;
    sub_19B50AF20(*a1, v9);
    sub_19B51DBD4(v9);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E7F60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7F7C(uint64_t *a1, uint64_t *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v21 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v22 = 256;
  if (*a1)
  {
    sub_19B517F80(v17);
    sub_19B5315F8(v17);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    v19 = Current;
    v7 = v18;
    v8 = *(a2 + 16);
    *(v18 + 32) |= 4u;
    *(v7 + 28) = v8;
    sub_19B4CB660(v18);
    v9 = *(v18 + 8);
    v10 = *a2;
    *(v9 + 32) |= 1u;
    *(v9 + 8) = v10;
    v11 = *(v18 + 8);
    LODWORD(v10) = *(a2 + 2);
    *(v11 + 32) |= 4u;
    *(v11 + 20) = v10;
    v12 = *(v18 + 8);
    LODWORD(v10) = *(a2 + 3);
    *(v12 + 32) |= 8u;
    *(v12 + 24) = v10;
    v13 = *(v18 + 8);
    LODWORD(v10) = *(a2 + 4);
    *(v13 + 32) |= 0x10u;
    *(v13 + 28) = v10;
    v14 = v18;
    v15 = a2[3];
    *(v18 + 32) |= 1u;
    *(v14 + 16) = v15;
    sub_19B50AF20(*a1, v17);
    sub_19B51DBD4(v17);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E80FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E8118(uint64_t *a1, uint64_t *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v21 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v22 = 256;
  if (*a1)
  {
    sub_19B517F80(v17);
    sub_19B531688(v17);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    v19 = Current;
    v7 = v18;
    v8 = *(a2 + 16);
    *(v18 + 36) |= 4u;
    *(v7 + 28) = v8;
    sub_19B4CF3D0(v18);
    v9 = *(v18 + 8);
    v10 = *a2;
    *(v9 + 44) |= 1u;
    *(v9 + 8) = v10;
    v11 = *(v18 + 8);
    LODWORD(v10) = *(a2 + 2);
    *(v11 + 44) |= 0x10u;
    *(v11 + 28) = v10;
    v12 = *(v18 + 8);
    LODWORD(v10) = *(a2 + 3);
    *(v12 + 44) |= 0x20u;
    *(v12 + 32) = v10;
    v13 = *(v18 + 8);
    LODWORD(v10) = *(a2 + 4);
    *(v13 + 44) |= 0x40u;
    *(v13 + 36) = v10;
    v14 = v18;
    v15 = a2[3];
    *(v18 + 36) |= 1u;
    *(v14 + 16) = v15;
    sub_19B50AF20(*a1, v17);
    sub_19B51DBD4(v17);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E8298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E82B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v36 = *MEMORY[0x1E69E9840];
  v8 = v3 + 8;
  v7 = *(v3 + 8);
  v27 = v3 + 8;
  (*(v7 + 16))(v3 + 8);
  v28 = 256;
  if (*v6)
  {
    if (v5[1] - *v5 == 16)
    {
      sub_19B517F80(buf);
      sub_19B532C78(buf);
      v9 = v35;
      sub_19B428B50(&v29, "00000000000000000000");
      v10 = *(v9 + 8);
      if (!v10)
      {
        operator new();
      }

      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v11 = v29;
      *(v10 + 16) = v30;
      *v10 = v11;
      sub_19B50AF20(*v6, buf);
      v12 = 0;
      __s[32] = 0;
      v13 = *v5;
      do
      {
        v14 = *v13++;
        snprintf(&__s[v12], 0x1FuLL, "%02x", v14);
        v12 += 2;
      }

      while (v12 != 32);
      sub_19B517F80(&v29);
      sub_19B532D08(&v29);
      v15 = v31;
      sub_19B428B50(&v25, __s);
      v16 = *(v15 + 8);
      if (!v16)
      {
        operator new();
      }

      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v17 = v25;
      *(v16 + 16) = v26;
      *v16 = v17;
      sub_19B50AF20(*v6, &v29);
      sub_19B51DBD4(&v29);
      sub_19B51DBD4(buf);
    }

    else
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E282C0);
      }

      v18 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        v19 = (v5[1] - *v5) >> 2;
        *buf = 134217984;
        v34 = v19;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "[CMSpatialLogger] Incorrect gyro bias size %zu", buf, 0xCu);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E282C0);
        }

        v21 = (v5[1] - *v5) >> 2;
        LODWORD(v29) = 134217984;
        *(&v29 + 4) = v21;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMSpatialLogger::logAudioAccessoryGyroBias(const std::vector<float> &)", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }
  }

  result = (*(*v8 + 24))(v8);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5E86A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  if (a9 < 0)
  {
    operator delete(__p);
  }

  sub_19B51DBD4(va1);
  sub_19B51DBD4(&STACK[0xFD0]);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

void sub_19B5E8710(void *a1, int a2)
{
  if (a2)
  {
    sub_19B45E110(a1);
  }

  JUMPOUT(0x19B5E8708);
}

os_log_t sub_19B5E8720()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

os_log_t sub_19B5E8750()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B5E8780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
  }

  v5 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v11 = a2;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<long long>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = long long]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B5E8960(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
  }

  v5 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v11 = a2;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<unsigned int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = unsigned int]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B5E8B40(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_19B4C5138((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 0;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
  }

  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v12 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E280E0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<std::string>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = std::string]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B5E8D48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5E8D80(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
  }

  v3 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
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
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLGyroBiasEstimatorClientRemote::registerWithGyroBiasEstimatorPrivate(CLGyroBiasEstimatorClientCallback, BOOL, void *)_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B5E8F78(uint64_t a1, float *a2, float *a3, unint64_t a4, float32x4_t a5)
{
  v95 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 136);
  *(a1 + 136) = a4;
  *(a1 + 144) = v9;
  *a5.i64 = (a4 - v9);
  v10 = *a5.i64 / 1000000.0;
  *(a1 + 28) = *(a1 + 16);
  *(a1 + 36) = *(a1 + 24);
  *buf = sub_19B66BFF4(a1, a5);
  *&buf[4] = v11;
  *&buf[8] = v12;
  *v92 = v13;
  v14.f32[0] = sub_19B66C1A4(buf, *a2, a2[1], a2[2]);
  *(a1 + 16) = v14.i32[0];
  *(a1 + 20) = v15;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 24) = v16;
  *(a1 + 48) = 0;
  if (v10 > 0.003)
  {
    v17.i32[1] = 1067743969;
    if (v10 <= 0.04)
    {
      *v17.i32 = v10;
      v18 = (v16 - *(a1 + 36)) / *v17.i32;
      v14.f32[1] = v15;
      *buf = vdiv_f32(vsub_f32(*v14.f32, *(a1 + 28)), vdup_lane_s32(v17, 0));
      *&buf[8] = v18;
      sub_19B5BE720((a1 + 64), buf);
      v19 = 0;
      v14.i64[0] = 0;
      do
      {
        v14.f32[0] = v14.f32[0] + (*&buf[v19] * *&buf[v19]);
        v19 += 4;
      }

      while (v19 != 12);
      if (sqrtf(v14.f32[0]) >= 8.7266)
      {
        v20 = 0;
        v14.i64[0] = 0;
        do
        {
          v14.f32[0] = v14.f32[0] + (*&buf[v20] * *&buf[v20]);
          v20 += 4;
        }

        while (v20 != 12);
        if (sqrtf(v14.f32[0]) <= 52.36)
        {
          *(a1 + 40) = *buf;
          *(a1 + 48) = *&buf[8];
        }

        else
        {
          v21 = 0;
          v22 = 0;
          do
          {
            *v22.i32 = *v22.i32 + (*&buf[v21] * *&buf[v21]);
            v21 += 4;
          }

          while (v21 != 12);
          *v22.i32 = sqrtf(*v22.i32);
          v23 = (*&buf[8] * 52.36) / *v22.i32;
          *(a1 + 40) = vdiv_f32(vmul_f32(*buf, vdup_n_s32(0x42517084u)), vdup_lane_s32(v22, 0));
          *(a1 + 48) = v23;
        }
      }

      else
      {
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      v15 = *(a1 + 20);
    }
  }

  v14.f32[0] = -v15;
  if (v15 > 0.0)
  {
    v14.f32[0] = v15;
  }

  if (v14.f32[0] > 0.87266)
  {
    v24.f32[0] = sub_19B66BFF4((a1 + 184), v14);
    v86 = v24.i32[0];
    v87 = __PAIR64__(v26, v25);
    *v88 = v27;
    *buf = sub_19B66BF70(&v86, a3, v24);
    *&buf[4] = v28;
    *&buf[8] = v29;
    *v92 = v30;
    v31.f32[0] = sub_19B66C31C(buf);
    v32 = 0;
    v83 = v31.f32[0];
    v84 = v33;
    v85 = v34;
    v35 = 0.0;
    do
    {
      v31.f32[0] = *(&v83 + v32) * *(&v83 + v32);
      v35 = v35 + v31.f32[0];
      v32 += 4;
    }

    while (v32 != 12);
    v36.f32[0] = sub_19B66BFF4((a1 + 200), v31);
    v86 = v36.i32[0];
    v87 = __PAIR64__(v38, v37);
    *v88 = v39;
    *buf = sub_19B66BF70(&v86, a2 + 14, v36);
    *&buf[4] = v40;
    *&buf[8] = v41;
    *v92 = v42;
    v43 = sub_19B66C31C(buf);
    v44 = 0;
    v83 = v43;
    v84 = v45;
    v85 = v46;
    v47 = 0.0;
    do
    {
      v47 = v47 + (*(&v83 + v44) * *(&v83 + v44));
      v44 += 4;
    }

    while (v44 != 12);
    v48 = sqrtf(v35);
    if ((v48 + v48) < sqrtf(v47))
    {
      v49 = *(a1 + 160);
      if (v49 <= a4 + 1000000)
      {
        v49 = a4 + 1000000;
      }

      *(a1 + 160) = v49;
    }
  }

  v82 = vdupq_n_s64(a4);
  if (*(a1 + 66))
  {
    sub_19B5E9EFC((a1 + 64), 0, *(a1 + 66));
    v50 = 0;
    *buf = v51;
    *&buf[4] = v52;
    *&buf[8] = v53;
    v54 = 0.0;
    do
    {
      v54 = v54 + (*&buf[v50] * *&buf[v50]);
      v50 += 4;
    }

    while (v50 != 12);
    v55 = sqrtf(v54);
    if (v55 > 3000.0)
    {
      v56 = *(a1 + 160);
      if (a4 + 500000.0 >= v56)
      {
        v56 = a4 + 500000.0;
      }

      *(a1 + 160) = v56;
      v57 = vaddq_s64(v82, xmmword_19B7B7E20);
      *(a1 + 168) = vbslq_s8(vcgtq_u64(*(a1 + 168), v57), *(a1 + 168), v57);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      v58 = off_1EAFE29A0;
      v59 = v55;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = v59;
        _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_DEBUG, "[CMRelDMFwdPredictor] high angular acceleration variance detected: %{public}.2f", buf, 0xCu);
      }

      v60 = sub_19B420058();
      if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
        }

        v86 = 134349056;
        v87 = *&v59;
        v61 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMFwdPredictor::checkSuppressionConditions(const CMRelDM::IMUData &, const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v61);
        if (v61 != buf)
        {
          free(v61);
        }
      }
    }
  }

  v62 = *(a1 + 160) > a4;
  if (*(a1 + 152) != v62)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
    }

    v63 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *&buf[4] = v62;
      _os_log_impl(&dword_19B41C000, v63, OS_LOG_TYPE_DEBUG, "[CMRelDMFwdPredictor] suppress prediction = %{public}d", buf, 8u);
    }

    v64 = sub_19B420058();
    if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      v86 = 67240192;
      LODWORD(v87) = v62;
      v65 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMFwdPredictor::checkSuppressionConditions(const CMRelDM::IMUData &, const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    *(a1 + 152) = v62;
  }

  __asm { FMOV            V1.2S, #1.0 }

  v71 = vbic_s8(_D1, vmovn_s64(vcgtq_u64(*(a1 + 168), v82)));
  if (*(a1 + 52) != *v71.i32 || *(a1 + 56) != *&v71.i32[1] || *(a1 + 60) != *v71.i32)
  {
    *(a1 + 52) = v71;
    *(a1 + 60) = v71.i32[0];
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
    }

    v72 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v73 = *(a1 + 52);
      v74 = *(a1 + 56);
      v75 = *(a1 + 60);
      *buf = 134349568;
      *&buf[4] = v73;
      *v92 = 2050;
      *&v92[2] = v74;
      v93 = 2050;
      v94 = v75;
      _os_log_impl(&dword_19B41C000, v72, OS_LOG_TYPE_DEBUG, "[CMRelDMFwdPredictor] angular acceleration gain = [%{public}.1f, %{public}.1f, %{public}.1f]", buf, 0x20u);
    }

    v76 = sub_19B420058();
    if (*(v76 + 160) > 1 || *(v76 + 164) > 1 || *(v76 + 168) > 1 || *(v76 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      *&v77 = *(a1 + 52);
      v78 = *(a1 + 56);
      v79 = *(a1 + 60);
      v86 = 134349568;
      v87 = v77;
      *v88 = 2050;
      *&v88[2] = v78;
      v89 = 2050;
      v90 = v79;
      v80 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMFwdPredictor::checkSuppressionConditions(const CMRelDM::IMUData &, const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v80);
      if (v80 != buf)
      {
        free(v80);
      }
    }
  }

  *(a1 + 184) = *a3;
  *(a1 + 200) = *(a2 + 14);
  v81 = *MEMORY[0x1E69E9840];
}

float sub_19B5E9814(uint64_t a1, unint64_t *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 136);
  if (*a2 <= v4)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
    }

    v11 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v13 = *(a1 + 136);
      *buf = 134349312;
      *&buf[4] = v12;
      *&buf[12] = 2050;
      *&buf[14] = v13;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "Prediction target timestamp %{public}llu must be after last timestamp in buffer %{public}llu", buf, 0x16u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      v15 = *a2;
      v16 = *(a1 + 136);
      *v67 = 134349312;
      *&v67[4] = v15;
      LOWORD(v68[0]) = 2050;
      *(v68 + 2) = v16;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMOQuaternion CMRelDMFwdPredictor::getPredictedDeltaRotation(uint64_t &)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v64 = xmmword_19B7B7E30;
    sub_19B41E130(&v64, xmmword_19B7B7E30);
    v18 = *&v64;
  }

  else
  {
    v5 = (*a2 - v4) / 1000000.0;
    v6 = fmin(fmax(v5, 0.0), 0.1);
    *a2 = (v4 + v6 * 1000000.0);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v6;
      *&buf[12] = 2050;
      *&buf[14] = v5;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[CMRelDMFwdPredictor] prediction interval = %{public}.3f, requested interval = %{public}.3f", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F40);
      }

      *v67 = 134349312;
      *&v67[4] = v6;
      LOWORD(v68[0]) = 2050;
      *(v68 + 2) = v5;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMOQuaternion CMRelDMFwdPredictor::getPredictedDeltaRotation(uint64_t &)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if (*(a1 + 152) == 1)
    {
      *buf = xmmword_19B7B7E30;
      v10 = sub_19B41E130(buf, xmmword_19B7B7E30);
    }

    else
    {
      v19 = 0;
      v20 = v6;
      v21 = vadd_f32(vmul_f32(vmul_f32(vmul_n_f32(*(a1 + 40), v20), 0x3F0000003F000000), *(a1 + 52)), *(a1 + 16));
      v22 = (((*(a1 + 48) * v20) * 0.5) * *(a1 + 60)) + *(a1 + 24);
      *v67 = v21;
      *&v67[8] = v22;
      v23 = 0.0;
      do
      {
        v23 = v23 + (*&v67[v19] * *&v67[v19]);
        v19 += 4;
      }

      while (v19 != 12);
      if (sqrtf(v23) > 8.7266)
      {
        v24 = 0;
        v25 = 0.0;
        do
        {
          v25 = v25 + (*&v67[v24] * *&v67[v24]);
          v24 += 4;
        }

        while (v24 != 12);
        v26 = 8.7266 / sqrtf(v25);
        v21 = vmul_n_f32(v21, v26);
        v22 = v22 * v26;
      }

      v65 = vmul_n_f32(v21, v20);
      v66 = v22 * v20;
      *v10.i64 = sub_19B66C264(buf, &v65);
    }

    v18 = *buf;
    v64 = *buf;
    v27 = *a2;
    v28 = *(a1 + 218);
    if (!*(a1 + 218))
    {
      goto LABEL_50;
    }

    v29 = v28 + *(a1 + 216) - 1;
    v30 = *(a1 + 220);
    if (v29 < v30)
    {
      v30 = 0;
    }

    if (*(a1 + 32 * (v29 - v30) + 224) + 20000 <= v27)
    {
LABEL_50:
      v31.f32[0] = sub_19B66BF70(&v64, (a1 + 184), v10);
      v35 = 0;
      v36 = 0.0;
      do
      {
        v36 = v36 + (*(a1 + 16 + v35) * *(a1 + 16 + v35));
        v35 += 4;
      }

      while (v35 != 12);
      v37 = *(a1 + 220);
      v38 = a1 + 224;
      v39 = *(a1 + 216);
      v40 = v39 + v28 >= v37 ? *(a1 + 220) : 0;
      v41 = v38 + 32 * (v39 + v28 - v40);
      *v41 = v27;
      *(v41 + 8) = v31.i32[0];
      *(v41 + 12) = v32;
      *(v41 + 16) = v33;
      *(v41 + 20) = v34;
      *(v41 + 24) = sqrtf(v36);
      if (v37 <= v28)
      {
        v42 = v39 + 1 >= v37 ? v37 : 0;
        v43 = v39 + 1 - v42;
        v39 = v43;
        *(a1 + 216) = v43;
      }

      else
      {
        LOWORD(v28) = v28 + 1;
        *(a1 + 218) = v28;
      }

      if (v28)
      {
        v44 = *(a1 + 136);
        while (1)
        {
          v45 = *(v38 + 32 * v39);
          if (v45 >= v44)
          {
            break;
          }

          if (v39 + 1 >= v37)
          {
            v46 = v37;
          }

          else
          {
            v46 = 0;
          }

          v47 = v39 + 1 - v46;
          v39 = v47;
          *(a1 + 216) = v47;
          LOWORD(v28) = v28 - 1;
          *(a1 + 218) = v28;
          if (!v28)
          {
            goto LABEL_67;
          }
        }

        if (v45 < v44 + 20000)
        {
          v48 = v38 + 32 * v39;
          v31.i32[0] = *(v48 + 24);
          if (v31.f32[0] > 0.17453)
          {
            v49.f32[0] = sub_19B66BFF4((a1 + 184), v31);
            *v67 = v49.i32[0];
            *&v67[4] = v50;
            *&v67[8] = v51;
            v68[0] = v52;
            *buf = sub_19B66BF70(v48 + 8, v67, v49);
            *&buf[4] = v53;
            *&buf[8] = v54;
            *&buf[12] = v55;
            *(a1 + 544) = v44;
            v56 = sub_19B66C31C(buf);
            v57 = 0;
            *v67 = v56;
            *&v67[4] = v58;
            *&v67[8] = v59;
            v60 = 0.0;
            do
            {
              v60 = v60 + (*&v67[v57] * *&v67[v57]);
              v57 += 4;
            }

            while (v57 != 12);
            *(a1 + 552) = sqrtf(v60);
          }

          if (v39 + 1 >= v37)
          {
            v61 = v37;
          }

          else
          {
            v61 = 0;
          }

          *(a1 + 216) = v39 + 1 - v61;
          *(a1 + 218) = v28 - 1;
        }
      }
    }
  }

LABEL_67:
  v62 = *MEMORY[0x1E69E9840];
  return v18;
}

os_log_t sub_19B5E9ECC()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

float32x2_t *sub_19B5E9EFC(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28800);
    }

    v19 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 210,variance() on empty buffer.", buf, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28800);
      }

      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const CMVector<T, N> CMVectorBufferBase<float, 3>::variance(size_t, size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  v23 = 1.0 / (a3 - a2);
  result = sub_19B5BEC4C(a1, a2);
  v8 = v23;
  v9 = *result;
  v10 = result[1].f32[0];
  v11 = vmul_n_f32(*result, v23);
  v12 = v23 * v10;
  v13 = a2 + 1;
  if (v13 < a3)
  {
    v14 = v13;
    do
    {
      result = sub_19B5BEC4C(a1, v14);
      v8 = v23;
      v11 = vadd_f32(v11, vmul_n_f32(*result, v23));
      v12 = v12 + (v23 * result[1].f32[0]);
      ++v14;
    }

    while (a3 != v14);
  }

  v15 = vsub_f32(v9, v11);
  *&v7 = vmul_n_f32(vmul_f32(v15, v15), v8);
  v16 = v8 * ((v10 - v12) * (v10 - v12));
  if (v13 < a3)
  {
    do
    {
      v22 = v7;
      result = sub_19B5BEC4C(a1, v13);
      *(&v7 + 1) = *(&v22 + 1);
      v17 = vsub_f32(*result, v11);
      *&v7 = vadd_f32(*&v22, vmul_n_f32(vmul_f32(v17, v17), v23));
      v16 = v16 + (v23 * ((result[1].f32[0] - v12) * (result[1].f32[0] - v12)));
      ++v13;
    }

    while (a3 != v13);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5EA368(void *a1)
{
  sub_19B445384(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5EA428(void *context, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = sub_19B5EA3EC;
  }

  else
  {
    v5 = sub_19B5EA3B0;
  }

  CFDictionaryApplyFunction(v4, v5, context);
  v6 = *(*context + 848);

  return v6(context);
}

uint64_t sub_19B5EA4EC(uint64_t a1, void *a2, int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x1E695DFF8];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, a1);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v7, v10, v9, 0);
  if (isDirectory)
  {
    v13 = 536870913;
    if (a3)
    {
      v13 = 1;
    }

    if (a3 == 1)
    {
      v14 = 1073741825;
    }

    else
    {
      v14 = v13;
    }

    v36 = 0;
    v15 = objc_msgSend_writeToURL_options_error_(a2, v12, isDirectory, v14, &v36);
    if ((v15 & 1) == 0)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v16 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_msgSend_description(v36, v17, v18);
        v22 = objc_msgSend_UTF8String(v19, v20, v21);
        *buf = 136446466;
        v42 = a1;
        v43 = 2082;
        v44 = v22;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Could not write data to disk %{public}s, %{public}s", buf, 0x16u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v26 = objc_msgSend_description(v36, v24, v25);
        v29 = objc_msgSend_UTF8String(v26, v27, v28);
        v37 = 136446466;
        v38 = a1;
        v39 = 2082;
        v40 = v29;
        v30 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }
    }
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v31 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v42 = a1;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "Could not create NSURL for file: %{public}s", buf, 0xCu);
    }

    v32 = sub_19B420058();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v37 = 136446210;
      v38 = a1;
      v33 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v15 = 0;
  }

  objc_autoreleasePoolPop(v6);
  v34 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t sub_19B5EA8C8(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 768))(a1, &cf))
  {
    v3 = sub_19B5EA4EC(a2, cf, 2);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v4 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Could not serialize data for file %{public}s", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = 136446210;
      v11 = a2;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::saveToFile(const char *) const", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_19B5EAAE8(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  sub_19B5E4CEC(v12, "CLNameValuePair.SaveToBinaryFile", 0);
  v6 = objc_autoreleasePoolPush();
  if ((*(*a1 + 776))(a1, &cf))
  {
    v7 = sub_19B5EA4EC(a2, cf, a3);
  }

  else
  {
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
    }

    v8 = qword_1ED71C7F0;
    if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = a2;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
      }
    }

    v9 = qword_1ED71C7F0;
    if (os_signpost_enabled(qword_1ED71C7F0))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize data", "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  sub_19B5E4F34(v12);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B5EAD2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 880))(a1, v5, a3);

  CFRelease(v5);
}

uint64_t sub_19B5EADEC(CFMutableDictionaryRef *a1)
{
  CFDictionaryRemoveAllValues(a1[1]);
  v2 = *(*a1 + 106);

  return v2(a1);
}

void sub_19B5EAE50(uint64_t a1, const __CFString *a2, unsigned int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x80000000) == 0)
  {
    cf = 0;
    if (!(*(*a1 + 912))(a1, a2, &cf))
    {
LABEL_47:
      v30 = *MEMORY[0x1E69E9840];
      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(cf) > a3)
      {
        CFArrayRemoveValueAtIndex(cf, a3);
        (*(*a1 + 848))(a1);
LABEL_46:
        CFRelease(cf);
        goto LABEL_47;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v20 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v21 = SBYTE3(v38);
        v22 = *__p;
        Count = CFArrayGetCount(cf);
        v24 = __p;
        *buf = 136446722;
        if (v21 < 0)
        {
          v24 = v22;
        }

        v40 = v24;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = Count;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in array of size %{public}ld", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      v25 = sub_19B420058();
      if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, v31);
      v26 = v32;
      v27 = v31[0];
      v28 = CFArrayGetCount(cf);
      v29 = v31;
      *__p = 136446722;
      if (v26 < 0)
      {
        v29 = v27;
      }

      *&__p[4] = v29;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v28;
      v19 = _os_log_send_and_compose_impl();
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    else
    {
      if (!a3)
      {
        (*(*a1 + 888))(a1, a2);
        goto LABEL_46;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v10 = SBYTE3(v38);
        v11 = *__p;
        v12 = CFGetTypeID(cf);
        v13 = __p;
        if (v10 < 0)
        {
          v13 = v11;
        }

        *buf = 136446722;
        v40 = v13;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = v12;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in non-array type %{public}lu", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, v31);
      v15 = v32;
      v16 = v31[0];
      v17 = CFGetTypeID(cf);
      v18 = v31;
      if (v15 < 0)
      {
        v18 = v16;
      }

      *__p = 136446722;
      *&__p[4] = v18;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v17;
      v19 = _os_log_send_and_compose_impl();
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLNameValuePair::clearInternal(const CFStringRef, int)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_46;
  }

  v7 = *(*a1 + 888);
  v8 = *MEMORY[0x1E69E9840];

  v7();
}

void sub_19B5EB418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5EB458(CFMutableDictionaryRef *a1, const void *a2)
{
  CFDictionaryRemoveValue(a1[1], a2);
  v3 = *(*a1 + 106);

  return v3(a1);
}

void sub_19B5EB5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5EB5EC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  v4 = *(*a1 + 920);

  return v4(a1, v3);
}

uint64_t sub_19B5EB694(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EB708(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B5EB708(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  *a3 = 0;
  v4 = (*(*a1 + 904))(a1);
  if (v4 && *a3)
  {
    CFAutorelease(*a3);
  }

  return v4;
}

uint64_t sub_19B5EB770(uint64_t a1, const char *a2, _WORD *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EB7E4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B5EB7E4(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    *buf = 0;
    v6 = sub_19B5EDC64(cf, buf);
    if (v6)
    {
      *a3 = *buf;
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v7 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint16_t &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B5EBAA0(uint64_t a1, const char *a2, _WORD *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EBB14(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B5EBB14(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    v11 = 0;
    goto LABEL_35;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberSInt16Type, a3))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v8 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        LOWORD(v21) = 0;
        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, short &)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v12 = CFGetTypeID(v6);
    if (v12 != CFBooleanGetTypeID() || (sub_19B44525C(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v13 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = a2;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v15 = sub_19B420058();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v16 = (*(*a1 + 840))(a1);
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = a2;
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, short &, int) const", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v11 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v11 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_19B5EBF60(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EBFD4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B5EBFD4(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B5EDA58(cf, a3);
    if ((v6 & 1) == 0)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v7 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int64_t &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B5EC280(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EC2F4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B5EC2F4(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    v11 = 0;
    goto LABEL_35;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberLongType, a3))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v8 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        LOWORD(v21) = 0;
        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, long &)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v12 = CFGetTypeID(v6);
    if (v12 != CFBooleanGetTypeID() || (sub_19B44525C(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v13 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = a2;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v15 = sub_19B420058();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v16 = (*(*a1 + 840))(a1);
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = a2;
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, long &, int) const", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v11 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v11 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

float sub_19B5EC740(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = 0.0;
  if (sub_19B43D4DC(a1, a2, &v5))
  {
    result = v5;
    *a3 = result;
  }

  return result;
}

BOOL sub_19B5EC788(uint64_t a1, const char *a2, std::string *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EC7FC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EC7FC(uint64_t a1, uint64_t a2, std::string *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B4318A4(cf, a3);
    if (!v6)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v7 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, std::string &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B5ECAA8(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5ECB1C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B5ECB1C(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = (*(*a1 + 904))(a1, a2, &cf);
  if (result)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      v8 = cf;
      *a3 = cf;
      CFAutorelease(v8);
      result = 1;
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v9 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v10 = v30 >= 0 ? __p : *__p;
        v11 = CFGetTypeID(cf);
        TypeID = CFStringGetTypeID();
        *buf = 136446722;
        v33 = v10;
        v34 = 2050;
        v35 = v11;
        v36 = 2050;
        v37 = TypeID;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*__p);
        }
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        sub_19B431834(a2, v24);
        if (v25 >= 0)
        {
          v14 = v24;
        }

        else
        {
          v14 = v24[0];
        }

        v15 = CFGetTypeID(cf);
        v16 = CFStringGetTypeID();
        *__p = 136446722;
        *&__p[4] = v14;
        v28 = 2050;
        v29 = v15;
        v30 = 2050;
        v31 = v16;
        v17 = _os_log_send_and_compose_impl();
        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v18 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v19 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v33 = v19;
        v34 = 2112;
        v35 = a2;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v21 = (*(*a1 + 840))(a1);
        *__p = 138412546;
        *&__p[4] = v21;
        v28 = 2112;
        v29 = a2;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      CFRelease(cf);
      result = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5ECFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B5ED00C(uint64_t a1, const char *a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v10 = sub_19B5ED08C(a1, v9, a3, a4, a5);
  CFRelease(v9);
  return v10;
}

BOOL sub_19B5ED08C(uint64_t a1, CFTypeID a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf, a5))
  {
    v9 = cf;
    v10 = CFGetTypeID(cf);
    v11 = v10 == CFDataGetTypeID();
    v12 = v11;
    if (v11)
    {
      *a3 = CFDataGetBytePtr(v9);
      *a4 = CFDataGetLength(v9);
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v13 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v14 = CFGetTypeID(v9);
        TypeID = CFDataGetTypeID();
        *buf = 134349312;
        v33 = v14;
        v34 = 2050;
        v35 = TypeID;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v17 = CFGetTypeID(v9);
        v18 = CFDataGetTypeID();
        v28 = 134349312;
        v29 = v17;
        v30 = 2050;
        v31 = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, const char *&, unsigned int &)", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v20 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v21 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v33 = v21;
        v34 = 2112;
        v35 = a2;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v23 = (*(*a1 + 840))(a1);
        v28 = 138412546;
        v29 = v23;
        v30 = 2112;
        v31 = a2;
        v24 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, const char *&, unsigned int &, int) const", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }

    CFRelease(cf);
  }

  else
  {
    v12 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL sub_19B5ED4F8(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5ED56C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5ED56C(uint64_t a1, CFTypeID a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = cf;
    v7 = CFGetTypeID(cf);
    v8 = v7 == CFDictionaryGetTypeID();
    v9 = v8;
    if (v8)
    {
      if (v6)
      {
        v10 = a3[1];
        if (v10)
        {
          CFRelease(v10);
        }

        a3[1] = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
        (*(*a3 + 848))(a3);
      }

      else
      {
        (*(*a3 + 872))(a3);
      }
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v11 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v12 = CFGetTypeID(v6);
        TypeID = CFDictionaryGetTypeID();
        *buf = 134349312;
        v31 = v12;
        v32 = 2050;
        v33 = TypeID;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v15 = CFGetTypeID(v6);
        v16 = CFDictionaryGetTypeID();
        v26 = 134349312;
        v27 = v15;
        v28 = 2050;
        v29 = v16;
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, CLNameValuePair &)", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v18 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v19 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v31 = v19;
        v32 = 2112;
        v33 = a2;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v21 = (*(*a1 + 840))(a1);
        v26 = 138412546;
        v27 = v21;
        v28 = 2112;
        v29 = a2;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CLNameValuePair &, int) const", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v9 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_19B5EDA58(const void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v5 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_19B420058();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v7 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int64_t &)", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  buf[0] = 0;
  v8 = CFGetTypeID(a1);
  if (v8 != CFBooleanGetTypeID())
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  result = sub_19B44525C(a1, buf);
  if (result)
  {
    *a2 = buf[0];
LABEL_17:
    result = 1;
  }

LABEL_20:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5EDC64(const void *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt32Type, a2))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v5 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_19B420058();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v7 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int &)", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  buf[0] = 0;
  v8 = CFGetTypeID(a1);
  if (v8 != CFBooleanGetTypeID())
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  result = sub_19B44525C(a1, buf);
  if (result)
  {
    *a2 = buf[0];
LABEL_17:
    result = 1;
  }

LABEL_20:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EDE70(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 912))(a1, a2, &cf))
  {
    v5 = CFGetTypeID(cf);
    v6 = v5 == CFArrayGetTypeID();
    v7 = v6;
    if (v6)
    {
      *a3 = cf;
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v8 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v9 = v25 >= 0 ? __p : *__p;
        v10 = CFGetTypeID(cf);
        TypeID = CFArrayGetTypeID();
        *buf = 136446722;
        v28 = v9;
        v29 = 2050;
        v30 = v10;
        v31 = 2050;
        v32 = TypeID;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(*__p);
        }
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v13 = v19;
        sub_19B431834(a2, v19);
        if (v20 < 0)
        {
          v13 = v19[0];
        }

        v14 = CFGetTypeID(cf);
        v15 = CFArrayGetTypeID();
        *__p = 136446722;
        *&__p[4] = v13;
        v23 = 2050;
        v24 = v14;
        v25 = 2050;
        v26 = v15;
        v16 = _os_log_send_and_compose_impl();
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFArrayRef &) const", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    CFAutorelease(cf);
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B5EE15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B5EE194(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v5 = CFGetTypeID(cf);
    v6 = v5 == CFDataGetTypeID();
    v7 = v6;
    if (v6)
    {
      *a3 = cf;
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v8 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v9 = v25 >= 0 ? __p : *__p;
        v10 = CFGetTypeID(cf);
        TypeID = CFDataGetTypeID();
        *buf = 136446722;
        v28 = v9;
        v29 = 2050;
        v30 = v10;
        v31 = 2050;
        v32 = TypeID;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(*__p);
        }
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v13 = v19;
        sub_19B431834(a2, v19);
        if (v20 < 0)
        {
          v13 = v19[0];
        }

        v14 = CFGetTypeID(cf);
        v15 = CFDataGetTypeID();
        *__p = 136446722;
        *&__p[4] = v13;
        v23 = 2050;
        v24 = v14;
        v25 = 2050;
        v26 = v15;
        v16 = _os_log_send_and_compose_impl();
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFDataRef &, int) const", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    CFAutorelease(cf);
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B5EE480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5EE4DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B5EE5B0(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EE61C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EE61C(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695E4D0];
  if (!*a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 896))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v8 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      v11 = _os_log_send_and_compose_impl();
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  result = v6 != 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EE8C4(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EE930(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EE930(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v10);
      if (v10 != valuePtr)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EEBD4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EEC40(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EEC40(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const short &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EEED8(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EEF44(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EEF44(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v10);
      if (v10 != valuePtr)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EF1E8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EF254(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EF254(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EF4EC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EF558(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EF558(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EF7F0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EF85C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EF85C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const long &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EFAF4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EFB60(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EFB60(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const double &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5EFDF8(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5EFE64(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5EFE64(uint64_t a1, const __CFString *a2, char *cStr)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const char *)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F0104(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_19B5EFE64(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_19B5F017C(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_19B5EFE64(a1, a2, a3);
}

uint64_t sub_19B5F0190(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B5F0264(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F02D0(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F02D0(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 896))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = Copy != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5F0568(CFMutableDictionaryRef *a1, const void *a2, const void *a3)
{
  CFDictionarySetValue(a1[1], a2, a3);
  v4 = *(*a1 + 106);

  return v4(a1);
}

uint64_t sub_19B5F05D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B5F06AC(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F0718(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F0718(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695E4D0];
  if (!*a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 928))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v8 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v15 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v16 = 136446210;
      v17 = v10;
      v11 = _os_log_send_and_compose_impl();
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  result = v6 != 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F09C0(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F0A2C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F0A2C(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v10);
      if (v10 != valuePtr)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F0CD0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F0D3C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F0D3C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const short &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F0FD4(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1040(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1040(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v10);
      if (v10 != valuePtr)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F12E4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1350(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1350(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F15E8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1654(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1654(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F18EC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1958(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1958(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const long &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F1BF0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1C5C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1C5C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const double &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F1EF4(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F1F60(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F1F60(uint64_t a1, const __CFString *a2, char *cStr)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const char *)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B5F2200(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_19B5F1F60(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_19B5F2278(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_19B5F1F60(a1, a2, a3);
}

uint64_t sub_19B5F228C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B5F2360(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B5F23CC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B5F23CC(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 928))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      sub_19B431834(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = Copy != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5F2664(uint64_t a1, uint64_t a2, const void *a3)
{
  arg = 0;
  if ((*(*a1 + 912))(a1, a2, &arg))
  {
    CFAutorelease(arg);
    v6 = CFGetTypeID(arg);
    if (v6 == CFArrayGetTypeID())
    {
      Mutable = arg;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      CFAutorelease(Mutable);
      CFArrayAppendValue(Mutable, arg);
    }

    v8 = CFGetTypeID(a3);
    if (v8 == CFArrayGetTypeID())
    {
      v11.length = CFArrayGetCount(a3);
      v11.location = 0;
      CFArrayAppendArray(Mutable, a3, v11);
    }

    else
    {
      CFArrayAppendValue(Mutable, a3);
    }
  }

  else
  {
    Mutable = a3;
  }

  return (*(*a1 + 896))(a1, a2, Mutable);
}

uint64_t sub_19B5F27E4(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v4 = (*(*a1 + 864))(a1, v3);
  CFRelease(v3);
  return v4;
}

uint64_t sub_19B5F2890(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
  }

  else
  {
    Count = 1;
  }

  CFRelease(cf);
  return Count;
}

BOOL sub_19B5F29DC(uint64_t a1, CFDataRef *a2)
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(a1 + 8), kCFPropertyListXMLFormat_v1_0, 0, 0);
  *a2 = Data;
  return Data != 0;
}

uint64_t sub_19B5F2A2C(uint64_t a1, CFTypeRef *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  error = 0;
  if (v4)
  {
    v5 = v4;
    if (!CFWriteStreamOpen(v4))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v11 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "could not open write stream", buf, 2u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_54;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      *v23 = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v13);
      if (v13 == buf)
      {
        goto LABEL_54;
      }

LABEL_53:
      free(v13);
LABEL_54:
      v7 = 0;
LABEL_55:
      CFRelease(v5);
      if (error)
      {
        CFRelease(error);
      }

      goto LABEL_57;
    }

    v6 = CFPropertyListWrite(*(a1 + 8), v5, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (!error && v6)
    {
      *a2 = CFWriteStreamCopyProperty(v5, *MEMORY[0x1E695E900]);
      CFWriteStreamClose(v5);
      v7 = 1;
      goto LABEL_55;
    }

    if (error)
    {
      Code = CFErrorGetCode(error);
      if (error)
      {
        Domain = CFErrorGetDomain(error);
        goto LABEL_34;
      }
    }

    else
    {
      Code = 0;
    }

    Domain = @"unknown error";
LABEL_34:
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v16 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(Domain, buf);
      v17 = v32 >= 0 ? buf : *buf;
      *v23 = 134349314;
      *&v23[4] = Code;
      v24 = 2082;
      v25 = v17;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "could not write data, error code, %{public}ld, error domain, %{public}s", v23, 0x16u);
      if (v32 < 0)
      {
        operator delete(*buf);
      }
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    sub_19B431834(Domain, v23);
    if (v26 >= 0)
    {
      v19 = v23;
    }

    else
    {
      v19 = *v23;
    }

    v27 = 134349314;
    v28 = Code;
    v29 = 2082;
    v30 = v19;
    v13 = _os_log_send_and_compose_impl();
    if (v26 < 0)
    {
      operator delete(*v23);
    }

    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
  }

  v8 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "could not create write stream", buf, 2u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    *v23 = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v7 = 0;
LABEL_57:
  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL sub_19B5F2FC8(void *a1, const __CFData *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  error = 0;
  v5 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 1uLL, 0, &error);
  if (v5)
  {
    v6 = a1[1];
    if (v6)
    {
      CFRelease(v6);
    }

    a1[1] = v5;
    (*(*a1 + 848))(a1);
    goto LABEL_35;
  }

  if (!error)
  {
    Code = 0;
    goto LABEL_9;
  }

  Code = CFErrorGetCode(error);
  if (!error)
  {
LABEL_9:
    Domain = @"unknown error";
    goto LABEL_10;
  }

  Domain = CFErrorGetDomain(error);
LABEL_10:
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
  }

  v9 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    if (Domain)
    {
      sub_19B431834(Domain, __p);
      if (v26 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 134349314;
      *&buf[4] = Code;
      v18 = 2082;
      v19 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 134349314;
      *&buf[4] = Code;
      v18 = 2082;
      v19 = "unknown error";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
    }
  }

  v11 = sub_19B420058();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    if (Domain)
    {
      sub_19B431834(Domain, buf);
      if (v20 >= 0)
      {
        v12 = buf;
      }

      else
      {
        v12 = *buf;
      }
    }

    else
    {
      v12 = "unknown error";
    }

    v21 = 134349314;
    v22 = Code;
    v23 = 2082;
    v24 = v12;
    v13 = _os_log_send_and_compose_impl();
    if (Domain && v20 < 0)
    {
      operator delete(*buf);
    }

    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::deserialize(const CFDataRef)", "CoreLocation: %s\n", v13);
    if (v13 != __p)
    {
      free(v13);
    }
  }

LABEL_35:
  if (error)
  {
    CFRelease(error);
  }

  result = v5 != 0;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5F3378(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  (*(*a1 + 800))(a1, __p);
  if (qword_1EAFE2B58 != -1)
  {
    dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
  }

  v1 = qword_1EAFE2B60;
  if (os_log_type_enabled(qword_1EAFE2B60, OS_LOG_TYPE_DEBUG))
  {
    v2 = __p;
    if (v8 < 0)
    {
      v2 = __p[0];
    }

    *buf = 136315138;
    v12 = v2;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B58 != -1)
    {
      dispatch_once(&qword_1EAFE2B58, &unk_1F0E3A3E0);
    }

    v4 = __p;
    if (v8 < 0)
    {
      v4 = __p[0];
    }

    v9 = 136315138;
    v10 = v4;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNameValuePair::print() const", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B5F35A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F35C8(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 8);
  if (v4 && CFDictionaryGetCount(v4))
  {
    memset(&context, 0, sizeof(context));
    CFDictionaryApplyFunction(*(a1 + 8), sub_19B5F369C, &context);
    std::string::operator=(a2, &context);
    if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(context.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = 8;
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = 8;
    }

    strcpy(a2, "<empty>\n");
  }
}

void sub_19B5F3680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5F369C(const __CFString *a1, const __CFString *a2, std::string *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    sub_19B4318A4(a1, &__p);
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v9 = __p.__r_.__value_.__r.__words[0];
      Count = CFDictionaryGetCount(a2);
      p_p = &__p;
      if (v8 < 0)
      {
        p_p = v9;
      }

      snprintf(__str, 0x100uLL, "%s = <dictionary (%ld entries)>:\n", p_p, Count);
      v12 = strlen(__str);
      std::string::append(a3, __str, v12);
      CFDictionaryApplyFunction(a2, sub_19B5F369C, a3);
    }

    else
    {
      v16 = CFGetTypeID(a2);
      if (v16 == CFArrayGetTypeID())
      {
        v17.length = CFArrayGetCount(a2);
        v18 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        *&context.__r_.__value_.__l.__data_ = v18;
        context.__r_.__value_.__r.__words[2] = a3;
        v17.location = 0;
        CFArrayApplyFunction(a2, v17, sub_19B5F4598, &context);
      }

      else
      {
        v19 = CFGetTypeID(a2);
        if (v19 == CFStringGetTypeID())
        {
          memset(&context, 0, sizeof(context));
          if (sub_19B4318A4(a2, &context))
          {
            v20 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __p.__r_.__value_.__r.__words[0];
            }

            p_context = &context;
            if ((context.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_context = context.__r_.__value_.__r.__words[0];
            }

            snprintf(__str, 0x100uLL, "%s = %s\n", v20, p_context);
          }

          v22 = strlen(__str);
          std::string::append(a3, __str, v22);
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(context.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v23 = CFGetTypeID(a2);
          if (v23 == CFNumberGetTypeID())
          {
            context.__r_.__value_.__r.__words[0] = 0;
            if (sub_19B444EE4(a2, &context))
            {
              v24 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v24 = __p.__r_.__value_.__r.__words[0];
              }

              snprintf(__str, 0x100uLL, "%s = %0.6f\n", v24, *&context.__r_.__value_.__l.__data_);
            }

            v25 = strlen(__str);
            std::string::append(a3, __str, v25);
          }

          else
          {
            v26 = CFGetTypeID(a2);
            if (v26 == CFBooleanGetTypeID())
            {
              CFBooleanGetValue(a2);
              snprintf(__str, 0x100uLL, "%s = %d\n");
            }

            else
            {
              CFGetTypeID(a2);
              snprintf(__str, 0x100uLL, "%s = <unhandled value type %lu>\n");
            }

            v27 = strlen(__str);
            std::string::append(a3, __str, v27);
          }
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    snprintf(__str, 0x100uLL, "type ID does not match - %lu vs %lu\n", v13, TypeID);
    v15 = strlen(__str);
    std::string::append(a3, __str, v15);
  }

  v28 = *MEMORY[0x1E69E9840];
}