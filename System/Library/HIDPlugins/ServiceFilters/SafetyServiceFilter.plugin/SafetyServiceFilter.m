void sub_C7C(id a1, OS_xpc_object *a2)
{
  v2 = xpc_copy_description(a2);
  if (qword_86B8 != -1)
  {
    sub_1790();
  }

  v3 = qword_86C0;
  if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "received object: %s", &v4, 0xCu);
  }

  free(v2);
}

void sub_120C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1230(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_connection_interrupted)
    {
      if (qword_86B8 != -1)
      {
        sub_1790();
      }

      v11 = qword_86C0;
      if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "error interrupted", &v12, 2u);
      }

      WeakRetained[24] = 1;
    }

    else if (v3 == &_xpc_error_connection_invalid)
    {
      if (qword_86B8 != -1)
      {
        sub_1790();
      }

      v10 = qword_86C0;
      if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        v7 = "connection invalid";
        v8 = v10;
        v9 = 2;
        goto LABEL_6;
      }
    }
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v3, "seq");
    if (qword_86B8 != -1)
    {
      sub_1790();
    }

    v6 = qword_86C0;
    if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = uint64;
      v7 = "got reply seq = %llu";
      v8 = v6;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, v7, &v12, v9);
    }
  }
}

void sub_174C(id a1)
{
  qword_86C0 = os_log_create("com.apple.anomalydetectiond", "SafetyFilter");

  _objc_release_x1();
}

ed(qword_86C0, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "SafetyServiceFilter::matchService %@ options: %@", &v12, 0x16u);
  }

  v10 = [v7 conformsToUsagePage:65292 usage:46];
  if (v10)
  {
    *a5 = 500;
  }

  return v10;
}

- (id)filterEvent:(id)a3
{
  v4 = a3;
  if (![v4 conformsToEventType:1])
  {
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v5 = [v4 dataValueForField:65540];
  if (!v5)
  {
    if (qword_86B8 != -1)
    {
      sub_1790();
    }

    v13 = qword_86C0;
    if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "null VD data %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (!*v5)
  {
    if (qword_86B8 != -1)
    {
      sub_1790();
    }

    v6 = qword_86C0;
    if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Wakeup event %@", buf, 0xCu);
    }
  }

  [(SafetyServiceFilter *)self initXPC];
  empty = xpc_dictionary_create_empty();
  ++dword_87A8;
  if (qword_86B8 != -1)
  {
    sub_17A4();
  }

  v8 = qword_86C0;
  if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v18) = dword_87A8;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "sending seq number %d", buf, 8u);
  }

  xpc_dictionary_set_uint64(empty, "seq", dword_87A8);
  objc_initWeak(buf, self);
  p_queue = &self->_queue;
  queue = self->_queue;
  v10 = p_queue[1];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1230;
  handler[3] = &unk_41B8;
  objc_copyWeak(&v16, buf);
  xpc_connection_send_message_with_reply(v10, empty, queue, handler);
  v12 = v4;
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

LABEL_18:

  return v12;
}

- (id)filterEventMatching:(id)a3 event:(id)a4 forClient:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (qword_86B8 != -1)
  {
    sub_1790();
  }

  v10 = qword_86C0;
  if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "SafetyServiceFilter::filterEventMatching %@ event: %@ client: %@", &v12, 0x20u);
  }

  return v8;
}

- (void)setCancelHandler:(id)a3
{
  v3 = a3;
  if (qword_86B8 != -1)
  {
    sub_1790();
  }

  v4 = qword_86C0;
  if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    v6 = objc_retainBlock(v3);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "SafetyServiceFilter::setCancelHandler %p", &v7, 0xCu);
  }
}

- (void)activate
{
  if (qword_86B8 != -1)
  {
    sub_1790();
  }

  v2 = qword_86C0;
  if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "SafetyServiceFilter::activate", v3, 2u);
  }
}

- (void)cancel
{
  if (qword_86B8 != -1)
  {
    sub_1790();
  }

  v2 = qword_86C0;
  if (os_log_type_enabled(qword_86C0, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "SafetyServiceFilter::cancel", v3, 2u);
  }
}

@end