void sub_1000006A8(_xpc_connection_s *a1)
{
  sub_100000710();
  xpc_connection_set_target_queue(a1, qword_100008148);
  xpc_connection_set_qos_class_floor();
  xpc_connection_set_event_handler(a1, &stru_100004160);

  xpc_connection_resume(a1);
}

void sub_100000710()
{
  if ((atomic_load_explicit(&qword_100008170, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_100008170))
    {
      sub_100000A94();
    }
  }
}

void sub_100000768(id a1, void *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_error)
  {
    reply = xpc_dictionary_create_reply(a2);
    remote_connection = xpc_dictionary_get_remote_connection(a2);
    if (xpc_dictionary_get_BOOL(a2, "connection_ping"))
    {
      xpc_connection_send_message(remote_connection, reply);
      xpc_release(reply);
    }

    else
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2000000000;
      sub_100000710();
      v25 = &qword_100008148;
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_1000009FC;
      block[3] = &unk_1000041A8;
      block[4] = &v22;
      block[5] = a2;
      if (qword_100008178 != -1)
      {
        dispatch_once(&qword_100008178, block);
      }

      length = 0;
      data = xpc_dictionary_get_data(a2, "state", &length);
      v19 = 0;
      v6 = xpc_dictionary_get_data(a2, "bitcode", &v19);
      v17 = 0;
      bytes = 0;
      string = xpc_dictionary_get_string(a2, "log_file_name");
      v8 = *(v23[3] + 8);
      v9 = dispatch_time(0, 70000000000);
      dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(v23[3] + 8));
      v10 = v23[3];
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      v13 = *(v10 + 32);
      if (string)
      {
        v14 = (*(v12 + 32))(v11, data, length, v6, v19, v13, string);
      }

      else
      {
        v14 = (*(v12 + 24))(v11, data, length, v6, v19, v13, &bytes, &v17);
      }

      v15 = v14;
      dispatch_suspend(*(v23[3] + 8));
      xpc_dictionary_set_BOOL(reply, "error", v15);
      if (bytes)
      {
        v16 = xpc_data_create(bytes, v17);
        xpc_dictionary_set_value(reply, "reply", v16);
        xpc_release(v16);
      }

      xpc_connection_send_message(remote_connection, reply);
      xpc_release(reply);
      if (bytes)
      {
        (*(*(v23[3] + 16) + 40))(*(v23[3] + 24));
      }

      _Block_object_dispose(&v22, 8);
    }
  }
}

uint64_t sub_1000009FC(uint64_t a1)
{
  length = 0;
  data = xpc_dictionary_get_data(*(a1 + 40), "compiler_options", &length);
  *(*(*(*(a1 + 32) + 8) + 24) + 32) = xpc_dictionary_get_uint64(*(a1 + 40), "architecture");
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = (*(*(v3 + 16) + 8))(data, length, *(v3 + 32));
  *(*(*(*(a1 + 32) + 8) + 24) + 24) = result;
  return result;
}

void sub_100000A94()
{
  qword_100008148 = 0;
  qword_100008158 = 0;
  unk_100008160 = 0;
  dword_100008168 = 0;
  qword_100008148 = dispatch_queue_create(0, 0);
  global_queue = dispatch_get_global_queue(0, 0);
  qword_100008150 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100000C2C;
  handler[3] = &unk_100004180;
  handler[4] = &qword_100008148;
  dispatch_source_set_event_handler(qword_100008150, handler);
  operator new();
}

void sub_100000C2C(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 8));
  qword_100008008 = "Compiler service plugin hung";
  abort();
}

void operator new()
{
    ;
  }
}