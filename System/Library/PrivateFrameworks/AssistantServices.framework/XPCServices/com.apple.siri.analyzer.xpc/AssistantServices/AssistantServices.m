void sub_100000E58(void *a1)
{
  v1 = a1;
  [@"com.apple.siri.analyzer" UTF8String];
  v2 = xpc_connection_copy_entitlement_value();
  v3 = v2;
  if (v2 && xpc_BOOL_get_value(v2))
  {
    v4 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "_XPCMainConnectionHandler";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s New analyzer peer", buf, 0xCu);
    }

    xpc_connection_set_target_queue(v1, &_dispatch_main_q);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001020;
    handler[3] = &unk_100008540;
    v5 = v1;
    v8 = v5;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_resume(v5);
  }

  else
  {
    v6 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "_XPCMainConnectionHandler";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Peer not entitled", buf, 0xCu);
    }

    xpc_connection_cancel(v1);
  }
}

void sub_100001020(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    [qword_10000C238 _handleMessage:v3];
  }

  else
  {
    xpc_connection_cancel(*(a1 + 32));
  }
}

void sub_100001420(id a1)
{
  v1 = AFSiriLogContextAnalysis;
  if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[AFAnalyzer _startAnalysisWithMessage:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Exiting", &v2, 0xCu);
  }

  exit(0);
}

void sub_100001C78(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

id sub_100001CB0(signed int a1)
{
  if (a1 < 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = if_indextoname(a1, v3);
    if (v1)
    {
      v1 = [NSString stringWithUTF8String:v3];
    }
  }

  return v1;
}

uint64_t sub_100001D38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSURL URLWithString:@"http://apple.com"];
  [v2 _measureTimeToLoadURL:v3 withMethod:@"HEAD"];
  v5 = v4;

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000232C;
  v7[3] = &unk_100008410;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v5;
  dispatch_sync(v6, v7);
}

void sub_100001E2C(uint64_t a1)
{
  v15 = 0;
  v16 = 0xBFF0000000000000;
  v14 = 0;
  [*(a1 + 32) _pingHost:*(a1 + 40) time:&v16 sentPackets:&v15 droppedPackets:&v14];
  v2 = [NSNumber numberWithInteger:v15];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [NSNumber numberWithInteger:v14];
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v15)
  {
    v8 = v14 / v15;
  }

  else
  {
    v8 = -1.0;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002288;
  v10[3] = &unk_100008460;
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = v16;
  v13 = v8;
  dispatch_sync(v9, v10);
}

void sub_100001F58(uint64_t a1)
{
  [*(a1 + 32) _measureTimeToLoadURL:*(a1 + 40) withMethod:@"HEAD"];
  v3 = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000221C;
  v5[3] = &unk_100008410;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = v3;
  dispatch_sync(v4, v5);
}

void sub_100002008(uint64_t a1)
{
  [*(a1 + 32) _measureTimeToLoadURL:*(a1 + 40) withMethod:@"HEAD"];
  v3 = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000021B0;
  v5[3] = &unk_100008410;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = v3;
  dispatch_sync(v4, v5);
}

void sub_1000020B8(uint64_t a1)
{
  v5 = [NSNumber numberWithDouble:-2.0];
  v2 = [*(a1 + 32) objectForKey:@"Siri URL HEAD time"];

  if (!v2)
  {
    [*(a1 + 32) setObject:v5 forKey:@"Siri URL HEAD time"];
  }

  v3 = [*(a1 + 32) objectForKey:@"Siri Salt URL HEAD time"];

  if (!v3)
  {
    [*(a1 + 32) setObject:v5 forKey:@"Siri Salt URL HEAD time"];
  }

  v4 = [*(a1 + 32) objectForKey:@"Apple URL HEAD time"];

  if (!v4)
  {
    [*(a1 + 32) setObject:v5 forKey:@"Apple URL HEAD time"];
  }

  [*(a1 + 40) addEntriesFromDictionary:*(a1 + 32)];
}

void sub_1000021B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithDouble:*(a1 + 40)];
  [v1 setObject:v2 forKey:@"Siri Salt URL HEAD time"];
}

void sub_10000221C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithDouble:*(a1 + 40)];
  [v1 setObject:v2 forKey:@"Siri URL HEAD time"];
}

void sub_100002288(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithDouble:*(a1 + 40)];
  [v2 setObject:v3 forKey:@"Gateway average ping"];

  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithDouble:*(a1 + 48)];
  [v4 setObject:v5 forKey:@"Gateway dropped percentage"];
}

void sub_10000232C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithDouble:*(a1 + 40)];
  [v1 setObject:v2 forKey:@"Apple URL HEAD time"];
}

void sub_100002654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100002674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[NSProcessInfo processInfo];
  [v5 systemUptime];
  v7 = v6;

  if (a3)
  {
    v8 = v7 - *(a1 + 48);
  }

  else
  {
    v8 = -1.0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

void sub_100002C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 176), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 240), 8);
  _Block_object_dispose((v17 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_100002C44(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) bytes];
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v18[0] = v24;
  v18[1] = 512;
  *&v17.msg_iovlen = 0;
  *&v17.msg_namelen = 0u;
  v17.msg_name = v3;
  v17.msg_namelen = *v3;
  v17.msg_iov = v18;
  v17.msg_iovlen = 1;
  v17.msg_control = v23;
  *&v17.msg_controllen = 512;
  if (recvmsg(v2, &v17, 0) == -1)
  {
    v7 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 136315394;
      v20 = "_AFAReadICMPSeqAndPayload";
      v21 = 2080;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s recvmsg failed %s", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if (BYTE1(v24[2]) != 1)
  {
    v5 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "_AFAReadICMPSeqAndPayload";
      v6 = "%s got something other than icmp packet";
      goto LABEL_10;
    }

LABEL_11:
    dispatch_source_cancel(*(a1 + 40));
    return;
  }

  v4 = &v24[v24[0] & 0xF];
  if (*v4)
  {
    v5 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "_AFAReadICMPSeqAndPayload";
      v6 = "%s Unexpected icmp packet type";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (*(v4 + 2) == *(a1 + 72))
  {
    v11 = *(v4 + 3);
    v12 = v4[1];
    v13 = +[NSProcessInfo processInfo];
    [v13 systemUptime];
    v15 = v14 - v12;

    v16 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      v24[0] = 136315650;
      *&v24[1] = "[AFAnalyzer _pingHost:time:sentPackets:droppedPackets:]_block_invoke";
      LOWORD(v24[3]) = 1024;
      *(&v24[3] + 2) = bswap32(v11) >> 16;
      HIWORD(v24[4]) = 2048;
      *&v24[5] = v15 * 1000.0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s seq %d in %.3lf ms", v24, 0x1Cu);
    }

    ++*(*(*(a1 + 48) + 8) + 24);
    *(*(*(a1 + 56) + 8) + 24) = v15 + *(*(*(a1 + 56) + 8) + 24);
    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 68))
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_100003000(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 40);

  return close(v2);
}

id sub_10000303C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100003070(uint64_t a1)
{
  if (dispatch_source_testcancel(*(a1 + 32)))
  {
    goto LABEL_11;
  }

  v2 = [*(a1 + 40) bytes];
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = +[NSProcessInfo processInfo];
  [v6 systemUptime];
  v32 = 0;
  v31 = 0;
  v33 = 0;
  v26 = 8;
  v28 = v4;
  v29 = bswap32(v5) >> 16;
  v7 = +[NSProcessInfo processInfo];
  [v7 systemUptime];
  v9 = v8;

  v10 = 0;
  v11 = 0;
  v30 = v9;
  v27 = 0;
  do
  {
    v11 += *(&v26 + v10);
    v10 += 2;
  }

  while (v10 != 36);
  v27 = ~(HIWORD(v11) + v11 + ((HIWORD(v11) + v11) >> 16));
  v12 = sendto(v3, &v26, 0x24uLL, 0, v2, v2->sa_len);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v15 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = __error();
      v18 = strerror(*v17);
      v22 = 136315394;
      v23 = "_AFASendPing";
      v24 = 2080;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Failed sending on socket %s", &v22, 0x16u);
    }

    goto LABEL_10;
  }

  v13 = v12;
  if (v12 <= 0x23)
  {
    v14 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      v22 = 136315394;
      v23 = "_AFASendPing";
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Only sent %ld bytes", &v22, 0x16u);
    }

LABEL_10:

    dispatch_source_cancel(*(a1 + 32));
LABEL_11:
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;

    return;
  }

  if (*(a1 + 76) <= ++*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_11;
  }

  v21 = dispatch_time(0, 1000000000);
  dispatch_after(v21, *(a1 + 48), *(*(*(a1 + 64) + 8) + 40));
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  if (AFIsInternalInstall())
  {
    setenv("CFNETWORK_DIAGNOSTICS", "3", 1);
    setenv("CFNETWORK_DIAGNOSTICS_NO_SYSLOG", "1", 1);
  }

  v4 = +[AFAnalyzer analyzer];
  [v4 runAnalyzerService];

  exit(1);
}