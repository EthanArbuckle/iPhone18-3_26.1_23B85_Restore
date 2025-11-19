uint64_t SPProtoCacheAssetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v31 = PBReaderReadString();
          v32 = *(a1 + 24);
          *(a1 + 24) = v31;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_56;
          }

          v35 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v35;
        }
      }

      else if (v13 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v37 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v37 & 0x7F) << v24;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_53;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_53:
        *(a1 + 32) = v30;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_49;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_49:
        *(a1 + 16) = v20;
      }

LABEL_56:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(SPCompanionAppServer);
  [(SPCompanionAppServer *)v1 setup];
  objc_autoreleasePoolPop(v0);
  v2 = +[NSRunLoop currentRunLoop];
  [v2 run];

  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "main";
    v7 = 1024;
    v8 = 25;
    v9 = 2114;
    v10 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Exiting from server object %{public}@", &v5, 0x1Cu);
  }

  return 1;
}

void sub_100002224(id a1)
{
  qword_100051CC8 = objc_alloc_init(SPPowerLog);

  _objc_release_x1();
}

void sub_1000023BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    v3 = [v2 logQueue];
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(*(a1 + 32) + 16);
    v8 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000024C0;
    handler[3] = &unk_100044778;
    handler[4] = v9;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(*(*(a1 + 32) + 16));
  }
}

id sub_1000024C0(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 updatePowerLogs];
}

void sub_1000025C4(uint64_t a1)
{
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"application"];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"action"];
  v3 = [NSString stringWithFormat:@"%@_%@", v7, v2];
  v4 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:v7];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [*(a1 + 40) newEventFromEvent:v5 usingLogEvent:*(a1 + 32)];
  if (!v4)
  {
    v4 = [NSMutableDictionary dictionaryWithCapacity:5];
  }

  [v4 setObject:v6 forKeyedSubscript:v3];
  [*(*(a1 + 40) + 8) setObject:v4 forKeyedSubscript:v7];
  [*(a1 + 40) startLogUpdateTimer];
}

uint64_t SPProtoCacheMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_50;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadData();
        v15 = 8;
        goto LABEL_50;
      }

      if (v13 != 6)
      {
        goto LABEL_38;
      }

      v16 = objc_alloc_init(SPProtoCacheSyncData);
      objc_storeStrong((a1 + 48), v16);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !SPProtoCacheSyncDataReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_60:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v34[0] & 0x7F) << v17;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_54;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_54:
        v31 = 40;
        goto LABEL_59;
      case 2:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v34[0] & 0x7F) << v24;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_58;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_58:
        v31 = 24;
LABEL_59:
        *(a1 + v31) = v23;
        goto LABEL_60;
      case 3:
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_50:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_60;
    }

LABEL_38:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoSockPuppetObjectReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v72[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v72[0] & 0x7F) << v5;
      if ((v72[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v72[0] & 0x7F) << v13;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_110:
            v67 = 88;
            goto LABEL_123;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_110;
      case 2u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 96) |= 0x40u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v72[0] & 0x7F) << v44;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_114;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v46;
        }

LABEL_114:
        v67 = 72;
        goto LABEL_123;
      case 3u:
        v36 = objc_alloc_init(SPProtoCacheMessage);
        objc_storeStrong((a1 + 32), v36);
        v72[0] = 0;
        v72[1] = 0;
        if (PBReaderPlaceMark() && SPProtoCacheMessageReadFrom(v36, a2))
        {
          PBReaderRecallMark();

LABEL_124:
          v68 = [a2 position];
          if (v68 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 4u:
        v27 = PBReaderReadString();
        v28 = 40;
        goto LABEL_51;
      case 5u:
        v27 = PBReaderReadString();
        v28 = 80;
        goto LABEL_51;
      case 6u:
        *(a1 + 96) |= 1u;
        v72[0] = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v69 = [a2 data];
          [v69 getBytes:v72 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v72[0];
        goto LABEL_124;
      case 7u:
        *(a1 + 96) |= 8u;
        LODWORD(v72[0]) = 0;
        v52 = [a2 position] + 4;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 4, v53 <= objc_msgSend(a2, "length")))
        {
          v70 = [a2 data];
          [v70 getBytes:v72 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 48) = v72[0];
        goto LABEL_124;
      case 8u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 96) |= 2u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v72[0] & 0x7F) << v38;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v40;
        }

LABEL_105:
        v66 = 16;
        goto LABEL_106;
      case 9u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 96) |= 0x10u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v72[0] & 0x7F) << v60;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_122;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v62;
        }

LABEL_122:
        v67 = 52;
        goto LABEL_123;
      case 0xAu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 96) |= 4u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v72[0] & 0x7F) << v29;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_101;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_101:
        v66 = 24;
LABEL_106:
        *(a1 + v66) = v35;
        goto LABEL_124;
      case 0xBu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 96) |= 0x20u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v72[0] & 0x7F) << v54;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_118;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v56;
        }

LABEL_118:
        v67 = 56;
LABEL_123:
        *(a1 + v67) = v19;
        goto LABEL_124;
      case 0xCu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 96) |= 0x80u;
        while (1)
        {
          LOBYTE(v72[0]) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v72[0] & 0x7F) << v20;
          if ((v72[0] & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_97;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_97:
        *(a1 + 92) = v26;
        goto LABEL_124;
      case 0xDu:
        v27 = PBReaderReadData();
        v28 = 64;
LABEL_51:
        v37 = *(a1 + v28);
        *(a1 + v28) = v27;

        goto LABEL_124;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_124;
    }
  }
}

uint64_t SPProtoSockPuppetPlistReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SPProtoSockPuppetObject);
        [a1 addObject:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SPProtoSockPuppetObjectReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoCacheAssetsReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SPProtoCacheAsset);
        [a1 addAssets:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SPProtoCacheAssetReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100008348(uint64_t a1)
{
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100028218();
  }

  memset(v27, 0, sizeof(v27));
  v28 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v3 = [*(a1 + 32) appUsageTrack];
  v4 = [v3 keyEnumerator];

  v5 = [v4 nextObject];
  if (v5)
  {
    v7 = v5;
    *&v6 = 136446723;
    v18 = v6;
    do
    {
      v8 = [*(a1 + 32) appUsageTrack];
      v9 = [v8 objectForKey:v7];

      v10 = [v9 toGizmoArray];
      v11 = [v9 toCompArray];
      v12 = wk_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v20 = "[SPUsageTrack _logUsageData]_block_invoke";
        v21 = 1024;
        v22 = 222;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s:%d: ", buf, 0x12u);
      }

      v13 = wk_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = v18;
        v20 = "[SPUsageTrack _logUsageData]_block_invoke";
        v21 = 1024;
        v22 = 223;
        v23 = 2113;
        v24 = v7;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s:%d:   %{private}@", buf, 0x1Cu);
      }

      [*(a1 + 32) _printString:"    Bytes fromArray:{", dword_10003E180}];
      [*(a1 + 32) _printSeparator];
      [*(a1 + 32) _printString:" To Gizmo fromArray:{", v10}];
      [*(a1 + 32) _printString:" To Comp fromArray:{", v11}];
      for (i = 0; i != 52; i += 4)
      {
        *(v27 + i) += *&v10[i];
        *(v25 + i) += *&v11[i];
      }

      v15 = [v4 nextObject];

      v7 = v15;
    }

    while (v15);
  }

  v16 = wk_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100028294();
  }

  v17 = wk_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100028310();
  }

  [*(a1 + 32) _printString:"    Bytes fromArray:{", dword_10003E180}];
  [*(a1 + 32) _printSeparator];
  [*(a1 + 32) _printString:" To Gizmo fromArray:{", v27}];
  [*(a1 + 32) _printString:" To Comp fromArray:{", v25}];
}

void sub_100009064(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.mobile.keybagd.first_unlock"))
  {
    v5 = +[NSDate date];
    [*(a1 + 32) setDateOfFirstUnlock:v5];

    v6 = *(a1 + 32);

    [v6 sendFirstUnlockStatusToGizmo];
  }

  else if (!strcmp(string, "com.apple.pairedsync.syncDidComplete"))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.sockpuppet.applications.updated", 0, 0, 1u);
  }

  else if (!strcmp(string, [@"com.apple.sockpuppet.activeComplicationsPreferencesChangedNotification" UTF8String]))
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446978;
      v9 = "[SPCompanionAppServer init]_block_invoke";
      v10 = 1024;
      v11 = 430;
      v12 = 2114;
      v13 = @"NativeComplications";
      v14 = 2114;
      v15 = @"com.apple.sockpuppet.activeComplicationsPreferencesChangedNotification";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}@ stream com.apple.notifyd.matching received %{public}@", &v8, 0x26u);
    }

    if ((byte_100051CD0 & 1) == 0)
    {
      byte_100051CD0 = 1;
      sub_100014D2C();
    }
  }
}

void sub_10000927C(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  v2 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, "Name")];
  if (([v2 isEqualToString:@"com.apple.LaunchServices.applicationRegistered"] & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"com.apple.LaunchServices.applicationUnregistered"))
  {
    v3 = xpc_dictionary_get_value(xdict, "UserInfo");
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    if ([v2 isEqualToString:@"com.apple.LaunchServices.applicationRegistered"])
    {
      v5 = +[SPApplicationManager sharedInstance];
      [v5 handleInstallationsReportedByLaunchServices:v4];
    }
  }
}

void sub_100009370()
{
  byte_100051CD0 = 1;
  v0 = wk_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446978;
    v2 = "_activeComplicationsChanged";
    v3 = 1024;
    v4 = 2078;
    v5 = 2114;
    v6 = @"NativeComplications";
    v7 = 2114;
    v8 = @"com.apple.sockpuppet.activeComplications";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}@ active complications have changed in domain %{public}@", &v1, 0x26u);
  }

  sub_100014D2C();
}

id sub_1000094E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009558;
  v3[3] = &unk_1000454C0;
  v3[4] = v1;
  return [v1 fetchInstalledApplicationsWithCompletion:v3];
}

void sub_100009558(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "[SPCompanionAppServer _setupSignalHandlers]_block_invoke_2";
    v27 = 1024;
    v28 = 542;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ======== Companion Daemon companionappd", buf, 0x12u);
  }

  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "[SPCompanionAppServer _setupSignalHandlers]_block_invoke";
    v27 = 1024;
    v28 = 543;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: -------- Installed Applications", buf, 0x12u);
  }

  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v26 = "[SPCompanionAppServer _setupSignalHandlers]_block_invoke";
    v27 = 1024;
    v28 = 544;
    v29 = 2114;
    v30 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}@", buf, 0x1Cu);
  }

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "[SPCompanionAppServer _setupSignalHandlers]_block_invoke";
    v27 = 1024;
    v28 = 545;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: -------- PlugInKit Extensions", buf, 0x12u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v2;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v7 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 objectForKeyedSubscript:@"SPPluginBundleIdKey"];
          if (v14)
          {
            v15 = +[PKHost defaultHost];
            v16 = [v15 activePlugInForIdentifier:v14];

            if (v16)
            {
              v17 = wk_default_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v26 = "[SPCompanionAppServer _setupSignalHandlers]_block_invoke";
                v27 = 1024;
                v28 = 557;
                v29 = 2114;
                v30 = v16;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}@", buf, 0x1Cu);
              }
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = [*(a1 + 32) usageTrack];
  [v18 _logUsageData];
}

id sub_10000A0F0(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = off_100051D10;
  v10 = off_100051D10;
  if (!off_100051D10)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100014A04;
    v6[3] = &unk_100045AB0;
    v6[4] = &v7;
    sub_100014A04(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = sub_10002854C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2(v1);

  return v3;
}

void sub_10000A1EC(uint64_t a1)
{
  v2 = [*(a1 + 32) localConnections];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_10000A240(uint64_t a1)
{
  v2 = [*(a1 + 32) localConnections];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_10000A494(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SPApplicationManager sharedInstance];
  v5 = [v4 pluginIdentifierForProtocolIdentifier:*(a1 + 32)];

  v6 = [v3 objectForKeyedSubscript:@"error"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 code])
  {
    v7 = [v6 domain];
    v8 = [v7 isEqual:@"com.apple.watchkit.errors"];

    v9 = wk_default_log();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446722;
        v18 = "[SPCompanionAppServer sendProtobuf:sender:timeOut:securityType:]_block_invoke";
        v19 = 1024;
        v20 = 709;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Got WatchKit error %{public}@", &v17, 0x1Cu);
      }

LABEL_15:

      goto LABEL_16;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000285F4();
    }

    if (v5)
    {
      if ([*(a1 + 40) shouldKillExtensionOnError:v5])
      {
        v11 = +[SPApplicationManager sharedInstance];
        [v11 markPluginWithIdentifierNeedsBeginUsing:v5];

        v12 = +[PKHost defaultHost];
        v10 = [v12 activePlugInForIdentifier:v5];

        v13 = [v10 pluginConnection];
        v14 = [v13 processIdentifier];

        v15 = wk_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000286FC();
        }

        if (v14)
        {
          kill(v14, 9);
          [*(a1 + 40) setLastExtensionKilledDateForPluginIdentifier:v5];
        }

        goto LABEL_15;
      }

      v16 = wk_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100028678();
      }
    }
  }

  else
  {
    [*(a1 + 40) clearLastResetDateForPluginIdentifier:v5];
  }

LABEL_16:
}

void sub_10000A808(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) lastExtensionKilledDates];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_10000A90C(uint64_t a1)
{
  v2 = [*(a1 + 32) lastExtensionKilledDates];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_10000AA40(uint64_t a1)
{
  v2 = [*(a1 + 32) lastExtensionKilledDates];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v5;
  if (!v5 || ([v5 timeIntervalSinceNow], v3 = v5, v4 < -30.0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10000ABB0(uint64_t *a1)
{
  v2 = +[SPApplicationManager sharedInstance];
  v3 = [v2 pluginIdentifierForProtocolIdentifier:a1[4]];

  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v5 = +[SPApplicationManager sharedInstance];
    v6 = a1[4];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000ADBC;
    v20[3] = &unk_1000455B0;
    v21 = v3;
    v7 = a1[4];
    v8 = a1[5];
    v22 = v7;
    v23 = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000B1B4;
    v15[3] = &unk_1000455D8;
    v9 = v4;
    v16 = v9;
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v17 = v10;
    v18 = v11;
    v19 = v12;
    [v5 getOrBeginActivePlugInForApplication:v6 setupBlock:v20 completion:v15];

    v13 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v9, v13))
    {
      v14 = wk_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100028780();
      }
    }
  }

  else
  {
    v9 = wk_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100028804(a1 + 4);
    }
  }
}

void sub_10000ADBC(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AE80;
  v7[3] = &unk_100045588;
  v8 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v6 = a2;
  [v6 setNotificationBlock:v7];
  [v6 setHostPrincipal:*(a1 + 48) withProtocol:&OBJC_PROTOCOL___SPCompanionAppServerProtocol];
}

void sub_10000AE80(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[SPApplicationManager sharedInstance];
  v7 = [v6 pluginHasFinishedBeginUsing:*(a1 + 32)];

  v8 = wk_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v23 = "[SPCompanionAppServer sendToRemoteInterface:call:]_block_invoke_3";
    v24 = 1024;
    v25 = 792;
    v26 = 1024;
    v27 = [v5 active];
    v28 = 1024;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sendToRemoteInterface, notificationBlock: %d, finishedBeginUsing=%d", buf, 0x1Eu);
  }

  v9 = v7 ^ 1;
  if (a3)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0 && ([v5 active] & 1) == 0)
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100028888(a1);
    }

    v11 = +[SPApplicationManager sharedInstance];
    v12 = [v11 wasExtensionKilledDueToAppDeath:*(a1 + 40)];

    if ((v12 & 1) == 0)
    {
      v13 = wk_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100028914((a1 + 40));
      }

      v20[0] = @"c";
      v20[1] = @"i";
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v21[0] = @"et";
      v21[1] = v14;
      v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
      [v15 sendPlist:v16 securityType:1];
    }

    v17 = +[SPApplicationManager sharedInstance];
    [v17 markPluginWithIdentifierNeedsBeginUsing:*(a1 + 32)];
  }

  if ([v5 active])
  {
    v18 = [*(a1 + 48) processAssertionForXcodeQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B130;
    block[3] = &unk_100044778;
    block[4] = *(a1 + 48);
    dispatch_async(v18, block);
  }
}

void sub_10000B130(uint64_t a1)
{
  v2 = [*(a1 + 32) plugInIdentifierForXcodeProcessAssertion];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 plugInIdentifierForXcodeProcessAssertion];
    [v3 takeProcessAssertionForXcode:v4];
  }
}

void sub_10000B1B4(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  if (v3)
  {
    v4 = [*(a1 + 48) processAssertionForXcodeQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B2BC;
    block[3] = &unk_100044778;
    block[4] = *(a1 + 48);
    dispatch_async(v4, block);

    v5 = *(a1 + 56);
    v6 = [v3 plugInPrincipal];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002899C(a1);
    }
  }
}

void sub_10000B2BC(uint64_t a1)
{
  v2 = [*(a1 + 32) plugInIdentifierForXcodeProcessAssertion];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 plugInIdentifierForXcodeProcessAssertion];
    [v3 takeProcessAssertionForXcode:v4];
  }
}

void sub_10000B508(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[SPCompanionAppServer sendData:toCompanionApplication:fromIdentifier:]_block_invoke";
    v7 = 1024;
    v8 = 838;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:->ComF remoteProxy=%{public}@", &v5, 0x1Cu);
  }

  [v3 receiveData:*(a1 + 32) fromIdentifier:*(a1 + 40)];
}

void sub_10000B7B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[SPCompanionAppServer sendProtoData:toCompanionApplication:fromIdentifier:]_block_invoke";
    v7 = 1024;
    v8 = 850;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:->ComF remoteProxy=%{public}@", &v5, 0x1Cu);
  }

  [v3 receiveProtoData:*(a1 + 32) fromIdentifier:*(a1 + 40)];
}

void sub_10000BE08(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 persistentDomainForName:@"com.apple.companionappd"];
  v3 = [v2 objectForKey:@"SPMaxSecsToWaitForInstallBeforeLaunch"];
  [v3 doubleValue];
  qword_100051CE8 = v4;

  if (*&qword_100051CE8 <= 0.0)
  {
    qword_100051CE8 = 0x4072C00000000000;
    v5 = wk_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446722;
      v8 = "[SPCompanionAppServer launchSockPuppetAppForCompanionAppWithIdentifier:options:completion:]_block_invoke";
      v9 = 1024;
      v10 = 902;
      v11 = 2048;
      v12 = qword_100051CE8;
      v6 = "%{public}s:%d: maxSecsToWaitForInstallBeforeLaunch=%1.0f. No custom defaults value, so using built-in value";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = wk_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446722;
      v8 = "[SPCompanionAppServer launchSockPuppetAppForCompanionAppWithIdentifier:options:completion:]_block_invoke";
      v9 = 1024;
      v10 = 904;
      v11 = 2048;
      v12 = qword_100051CE8;
      v6 = "%{public}s:%d: maxSecsToWaitForInstallBeforeLaunch=%1.0f loaded from custom defaults value";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v7, 0x1Cu);
    }
  }
}

void sub_10000BFAC(id *a1)
{
  if (([*(a1[4] + 22) isEqualToString:a1[5]] & 1) == 0)
  {
    v2 = a1[4];
    if (v2[22])
    {
      [v2 _cancelLaunchSockPuppetAppTimeout];
      v2 = a1[4];
    }

    v3 = [v2 launchSockPuppetAppQueue];
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);

    v5 = dispatch_time(0, (*&qword_100051CE8 * 1000000000.0));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000C1F4;
    handler[3] = &unk_100044778;
    handler[4] = a1[4];
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(v4);
    objc_storeStrong(a1[4] + 25, v4);
    objc_storeStrong(a1[4] + 22, a1[5]);
    objc_storeStrong(a1[4] + 23, a1[6]);
    v6 = [a1[7] copy];
    v7 = a1[4];
    v8 = v7[24];
    v7[24] = v6;

    [a1[4] _sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:*(a1[4] + 22) options:*(a1[4] + 23) acxRetryGeneration:0 completion:*(a1[4] + 24)];
    v9 = wk_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v13 = "[SPCompanionAppServer launchSockPuppetAppForCompanionAppWithIdentifier:options:completion:]_block_invoke";
      v14 = 1024;
      v15 = 932;
      v16 = 2114;
      v17 = @"com.apple.sockpuppet.applications.updated";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Adding observer for %{public}@ notification", buf, 0x1Cu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1[4], sub_10000C284, @"com.apple.sockpuppet.applications.updated", 0, 0);
  }
}

void sub_10000C1F4(uint64_t a1)
{
  [*(a1 + 32) _cancelLaunchSockPuppetAppTimeout];
  v2 = *(*(a1 + 32) + 192);
  if (v2)
  {
    v3 = [SPError errorWithCode:12];
    (*(v2 + 16))(v2, 0, v3);
  }
}

void sub_10000C284(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 launchSockPuppetAppQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014BB8;
  block[3] = &unk_100044778;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_10000C540(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) launchSockPuppetAppQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C670;
  block[3] = &unk_100045738;
  v16 = v5;
  v17 = v6;
  v8 = *(a1 + 56);
  v20 = *(a1 + 64);
  v9 = v8;
  v14 = *(a1 + 32);
  v10 = *(&v14 + 1);
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = v9;
  v18 = v14;
  v19 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void sub_10000C670(uint64_t a1)
{
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = [v4 intValue];

    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v75 = "[SPCompanionAppServer _sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:options:acxRetryGeneration:completion:]_block_invoke";
      v76 = 1024;
      v77 = 990;
      v78 = 1024;
      LODWORD(v79) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: installState=%d", buf, 0x18u);
    }

    if (v5 != 2)
    {
      if (v5 == 8)
      {
        v7 = wk_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100028B7C();
        }

        v8 = *(a1 + 72);
        v9 = [SPError errorWithCode:22];
        (*(v8 + 16))(v8, 0, v9);

        [*(a1 + 48) _cancelLaunchSockPuppetAppTimeout];
      }

      goto LABEL_52;
    }

    [*(a1 + 48) _cancelLaunchSockPuppetAppTimeout];
    v25 = [*(a1 + 64) objectForKeyedSubscript:@"SPServerHoldCompanionExtensionProcessAssertion"];
    v26 = [v25 BOOLValue];

    v27 = *(a1 + 48);
    if (v26)
    {
      [v27 setApplicationIDForXcodeProcessAssertion:v3];
    }

    else
    {
      v28 = [v27 processAssertionForXcodeQueue];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10000D018;
      v67[3] = &unk_100044778;
      v67[4] = *(a1 + 48);
      dispatch_async(v28, v67);
    }

    v29 = [*(a1 + 64) objectForKeyedSubscript:@"WK_APP_LAUNCH_MODE"];
    if ([v29 isEqualToString:@"COMPLICATION"])
    {
      v30 = SPLaunchGizmoAppModeComplication;
LABEL_31:
      v22 = *v30;
      v37 = 0;
      goto LABEL_32;
    }

    if ([v29 isEqualToString:@"GLANCE"])
    {
      v30 = SPLaunchGizmoAppModeGlance;
      goto LABEL_31;
    }

    if (![v29 isEqualToString:@"NOTIFICATION"])
    {
      v30 = SPLaunchGizmoAppModeApp;
      goto LABEL_31;
    }

    v22 = @"lN";

    v31 = +[NSUUID UUID];
    v32 = [v31 UUIDString];

    v33 = [*(a1 + 64) objectForKeyedSubscript:@"WK_NOTIF_CONTEXT"];
    v34 = [*(a1 + 64) objectForKeyedSubscript:@"WK_NOTIF_FORCE_STATIC"];
    v35 = [v34 isEqualToString:@"YES"];

    if ([v33 count])
    {
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10000D020;
      v61[3] = &unk_1000456E8;
      v62 = v32;
      v63 = v33;
      v64 = *(a1 + 56);
      v65 = v3;
      v66 = v35;
      v36 = v33;
      v29 = v32;
      v37 = objc_retainBlock(v61);

LABEL_32:
      v72[0] = @"c";
      v72[1] = @"gi";
      v73[0] = @"lg";
      v73[1] = v3;
      v72[2] = @"lm";
      v73[2] = v22;
      v38 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:3];
      v39 = [v38 mutableCopy];

      v40 = [*(a1 + 64) objectForKeyedSubscript:@"lgbl"];

      if (v40)
      {
        v41 = [*(a1 + 64) objectForKeyedSubscript:@"lgbl"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39 setObject:v41 forKeyedSubscript:@"lgbl"];
        }

        else
        {
          v42 = wk_default_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_100028AD0();
          }
        }
      }

      v43 = [*(a1 + 64) objectForKeyedSubscript:@"xle"];

      if (v43)
      {
        v44 = [*(a1 + 64) objectForKeyedSubscript:@"xle"];
        [v39 setObject:v44 forKeyedSubscript:@"xle"];
      }

      v45 = [*(a1 + 64) objectForKeyedSubscript:@"xla"];

      if (v45)
      {
        v46 = [*(a1 + 64) objectForKeyedSubscript:@"xla"];
        [v39 setObject:v46 forKeyedSubscript:@"xla"];
      }

      v47 = wk_default_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(a1 + 56);
        *buf = 136446722;
        v75 = "[SPCompanionAppServer _sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:options:acxRetryGeneration:completion:]_block_invoke";
        v76 = 1024;
        v77 = 1056;
        v78 = 2114;
        v79 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sending SPLaunchGizmoAppCommand for companionAppIdentifier=%{public}@", buf, 0x1Cu);
      }

      v49 = *(a1 + 48);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10000D270;
      v58[3] = &unk_100045710;
      v59 = v37;
      v60 = *(a1 + 72);
      v50 = v37;
      v51 = objc_retainBlock(v58);
      [v49 sendAndTrackTransactionDict:v39 withCompletion:v51];

      goto LABEL_52;
    }

    v54 = wk_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_100028A4C();
    }

    v55 = *(a1 + 72);
    v56 = [SPError errorWithCode:27];
    (*(v55 + 16))(v55, 0, v56);

LABEL_19:
    goto LABEL_52;
  }

  v10 = [*(a1 + 40) domain];
  v11 = [v10 isEqualToString:NSCocoaErrorDomain];

  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = [*(a1 + 40) code];
  if (v12 == 4101 || v12 == 4099)
  {
    goto LABEL_49;
  }

  if (v12 != 4097)
  {
LABEL_17:
    v22 = wk_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 56);
      v24 = *(a1 + 40);
      *buf = 136446978;
      v75 = "[SPCompanionAppServer _sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:options:acxRetryGeneration:completion:]_block_invoke_2";
      v76 = 1024;
      v77 = 985;
      v78 = 2114;
      v79 = v23;
      v80 = 2114;
      v81 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: [ACXDeviceConnection fetchApplicationWithContainingApplicationBundleID:completion:] returned no apps for companionAppIdentifier %{public}@. Error %{public}@. Will wait for another notification", buf, 0x26u);
    }

    goto LABEL_19;
  }

  v13 = *(a1 + 80);
  v14 = wk_default_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v13 < 5)
  {
    if (v15)
    {
      sub_100028D08((a1 + 40));
    }

    v16 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D000;
    block[3] = &unk_100045698;
    v57 = *(a1 + 48);
    v17 = *(&v57 + 1);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v71 = *(a1 + 80);
    v20 = v19;
    *&v21 = v18;
    *(&v21 + 1) = v20;
    v69 = v57;
    v70 = v21;
    dispatch_after(v16, &_dispatch_main_q, block);

    goto LABEL_52;
  }

  if (v15)
  {
    sub_100028C00((a1 + 40));
  }

LABEL_49:
  v52 = wk_default_log();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    sub_100028C84((a1 + 40));
  }

  v53 = *(a1 + 40);
  (*(*(a1 + 72) + 16))();
LABEL_52:
}

void sub_10000D020(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 136447234;
    v17 = "[SPCompanionAppServer _sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:options:acxRetryGeneration:completion:]_block_invoke_2";
    v18 = 1024;
    v19 = 1023;
    v20 = 2114;
    v21 = @"WK_NOTIF_CONTEXT";
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: setting notification context via %{public}@ for %{public}@ to %{public}@", buf, 0x30u);
  }

  v7 = +[SPCompanionNotificationHandler sharedInstance];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000D1C8;
  v14[3] = &unk_1000456C0;
  v15 = v3;
  v13 = v3;
  [v7 injectBulletinWithSectionID:v8 gizmoAppIdentifier:v9 bulletinID:v10 remoteNotificationContext:v11 forceStatic:v12 completion:v14];
}

void sub_10000D1C8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }

  else
  {
    v5 = [SPError errorWithCode:1];
    (*(v2 + 16))(v2, 0, v5);
  }
}

uint64_t sub_10000D270(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(v1 + 16))(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_10000D630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) launchSockPuppetAppQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D70C;
  v8[3] = &unk_100045670;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_10000D70C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 allKeys];
    v4 = [v3 firstObject];

    if (v4)
    {
      v5 = [*(a1 + 40) processAssertionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000DA1C;
      block[3] = &unk_1000447A0;
      block[4] = *(a1 + 40);
      v6 = v4;
      v26 = v6;
      dispatch_async(v5, block);

      v7 = +[SPApplicationManager sharedInstance];
      v8 = [v7 pluginIdentifierForProtocolIdentifier:v6];

      v9 = [*(a1 + 40) remoteInterfaceProcessAssertionsQueue];
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_10000DA28;
      v22 = &unk_1000447A0;
      v23 = *(a1 + 40);
      v10 = v8;
      v24 = v10;
      dispatch_sync(v9, &v19);

      v11 = wk_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        *buf = 136446722;
        v30 = "[SPCompanionAppServer terminateSockPuppetAppForCompanionAppWithIdentifier:completion:]_block_invoke";
        v31 = 1024;
        v32 = 1118;
        v33 = 2114;
        v34 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sending SPTerminateGizmoAppCommand for companionAppIdentifier=%{public}@", buf, 0x1Cu);
      }

      v13 = *(a1 + 40);
      v27[0] = @"c";
      v27[1] = @"gi";
      v28[0] = @"kg";
      v28[1] = v6;
      v14 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2, v19, v20, v21, v22, v23];
      v15 = objc_retainBlock(*(a1 + 56));
      [v13 sendAndTrackTransactionDict:v14 withCompletion:v15];
    }

    else
    {
      v16 = wk_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100028D90(a1);
      }

      v17 = *(a1 + 56);
      v18 = [SPError errorWithCode:5];
      (*(v17 + 16))(v17, v18);
    }
  }
}

void sub_10000DA28(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteInterfaceProcessAssertions];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 136446722;
      v9 = "[SPCompanionAppServer terminateSockPuppetAppForCompanionAppWithIdentifier:completion:]_block_invoke_6";
      v10 = 1024;
      v11 = 1111;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: immediately releasing remoteInterface process assertion for pluginIdentifier %{public}@", &v8, 0x1Cu);
    }

    v6 = [v3 objectForKeyedSubscript:@"assertion"];
    [v6 invalidate];
    v7 = [*(a1 + 32) remoteInterfaceProcessAssertions];
    [v7 removeObjectForKey:*(a1 + 40)];
  }
}

void sub_10000DCE0(uint64_t a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a2;
  v3 = [v17 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v18 + 1) + 8 * v7);
      v9 = [v17 objectForKeyedSubscript:v8];
      v10 = [v9 objectForKeyedSubscript:@"SPContainerAppBundleId"];
      v11 = [v10 isEqualToString:*(a1 + 32)];

      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v8;

    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 40);
    v22[0] = @"c";
    v22[1] = @"gi";
    v23[0] = @"gs";
    v23[1] = v12;
    v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v15 = objc_retainBlock(*(a1 + 48));
    [v13 sendAndTrackTransactionDict:v14 withCompletion:v15];
  }

  else
  {
LABEL_9:

LABEL_12:
    v16 = *(a1 + 48);
    v12 = [SPError errorWithCode:5];
    (*(v16 + 16))(v16, v12, 0);
  }
}

void sub_10000E070(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [v3 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v8)];
      v10 = [v9 objectForKeyedSubscript:@"SPContainerAppBundleId"];
      v11 = [v10 isEqualToString:*(a1 + 32)];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = [v9 objectForKeyedSubscript:@"SPPluginBundleIdKey"];

    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = +[PKHost defaultHost];
    v14 = [v13 activePlugInForIdentifier:v12];

    v15 = [v14 pluginConnection];
    [v15 processIdentifier];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
LABEL_9:

LABEL_12:
    v16 = wk_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 136446722;
      v24 = "[SPCompanionAppServer getCompanionExtensionPIDForCompanionAppWithIdentifier:completion:]_block_invoke";
      v25 = 1024;
      v26 = 1173;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Couldn't find companionExtensionBundleID for companionAppIdentifier %{public}@", buf, 0x1Cu);
    }

    v18 = *(a1 + 40);
    v12 = [SPError errorWithCode:5];
    (*(v18 + 16))(v18, v12, 0);
  }
}

void sub_10000EB7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) timingTest_IDSReceiveTime];
  v3 = [NSNumber numberWithDouble:?];
  [v2 setValue:v3 forKey:@".scd"];

  v4 = *(a1 + 32);
  [*(a1 + 40) timingTest_IDSSendTime];
  v5 = [NSNumber numberWithDouble:?];
  [v4 setValue:v5 forKey:@".ecd"];

  v6 = *(a1 + 32);
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) timingTest_IDSSendSize]);
  [v6 setValue:v7 forKey:@".bcd"];
}

id sub_10000F0C8(uint64_t a1)
{
  result = [*(a1 + 32) timingTest_IDSSendTime];
  if (v3 == 0.0)
  {
    [*(a1 + 32) setTimingTest_IDSSendTime:*(a1 + 40)];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    return [v5 setTimingTest_IDSSendSize:v4];
  }

  return result;
}

id sub_10000F1B4(uint64_t a1)
{
  [*(a1 + 32) setTimingTest_IDSReceiveTime:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setTimingTest_IDSSendTime:0.0];
}

void sub_1000101AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke_2";
    v7 = 1024;
    v8 = 1408;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPServerApplicationTerminatedCommand", &v5, 0x12u);
  }

  [v3 applicationDidTerminate:*(a1 + 32)];
}

void sub_100010288(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke";
    v7 = 1024;
    v8 = 1416;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPServerLaunchCommand", &v5, 0x12u);
  }

  [v3 applicationContentsDidReset:*(a1 + 32)];
}

void sub_100010364(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke";
    v7 = 1024;
    v8 = 1421;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPServerLaunchCommand", &v5, 0x12u);
  }

  [v3 applicationDidFinishConnecting:*(a1 + 32)];
}

void sub_100010440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke";
    v7 = 1024;
    v8 = 1427;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPServerActivateCommand", &v5, 0x12u);
  }

  [v3 applicationDidBecomeActive:*(a1 + 32)];
}

id sub_10001051C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke";
    v8 = 1024;
    v9 = 1433;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPServerDeactivateCommand", &v6, 0x12u);
  }

  [v3 applicationWillResignActive:*(a1 + 32)];
  return [*(a1 + 40) _applicationDeactivated:*(a1 + 48)];
}

void sub_100010600(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke";
    v7 = 1024;
    v8 = 1443;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPServerActivateCommand", &v5, 0x12u);
  }

  [v3 dataInterfaceDidBecomeActive:*(a1 + 32)];
}

void sub_1000106DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke";
    v7 = 1024;
    v8 = 1448;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPServerDeactivateCommand", &v5, 0x12u);
  }

  [v3 dataInterfaceWillResignActive:*(a1 + 32)];
}

void sub_1000107B8(id a1, SPRemoteInterfaceProtocol *a2)
{
  v2 = a2;
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke";
    v6 = 1024;
    v7 = 1488;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPServerActivateCommand", &v4, 0x12u);
  }

  [(SPRemoteInterfaceProtocol *)v2 applicationIsStillActive];
}

void sub_100010884(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"V"];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"Tk"];
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"Ui"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSUUID UUID];
  }

  v10 = v9;

  v11 = wk_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = 136447746;
    v15 = "[SPCompanionAppServer handleIncomingPlist:]_block_invoke";
    v16 = 1024;
    v17 = 1501;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComD:<-IDS SPGizmoAppHandleWatchTaskKeys for application=%{public}@, clientIdentifier=%{public}@, vcIdentifier=%{public}@, taskKeys=%{public}@, barTaskUUID=%{public}@", &v14, 0x44u);
  }

  [v4 applicationHandleWatchTaskKeys:v6 reasonForSnapshot:0 visibleVCID:v5 barTaskUUID:v10 clientIdentifier:*(a1 + 48)];
  [*(a1 + 56) extensionDidEndSnapshot:*(a1 + 64)];
}

void sub_100010A3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"d"];
  LODWORD(v2) = [v2 _isApplicationViewControllerActivate:v3];

  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v4 _sendTextSizeToApplication:v5 onlyIfChanged:1];
  }
}

void sub_10001108C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000110B8(id *a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 136446978;
    v13 = "[SPCompanionAppServer setApplicationIDForXcodeProcessAssertion:]_block_invoke";
    v14 = 1024;
    v15 = 1572;
    v16 = 2114;
    v17 = v5;
    v18 = 1024;
    v19 = [v3 active];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: setting plugInIdentifierForXcodeProcessAssertion to %{public}@, plugin.active=%d", buf, 0x22u);
  }

  v6 = [a1[5] processAssertionForXcodeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011244;
  block[3] = &unk_100045928;
  objc_copyWeak(&v11, a1 + 6);
  v9 = a1[4];
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
}

void sub_100011244(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPlugInIdentifierForXcodeProcessAssertion:v2];

  if ([*(a1 + 40) active])
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    [v4 takeProcessAssertionForXcode:*(a1 + 32)];
  }
}

void sub_1000114E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011514(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100029288(a1);
    }
  }

  v5 = [v3 pluginConnection];
  v6 = v5;
  if (v3 && !v5)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100029310();
    }
  }

  v8 = [v6 processIdentifier];
  v9 = v8;
  if (v6 && !v8)
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100029394();
    }
  }

  v11 = [BKSProcessAssertion alloc];
  v12 = *(a1 + 32);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100011764;
  v20[3] = &unk_1000459F0;
  objc_copyWeak(&v22, (a1 + 48));
  v17 = *(a1 + 32);
  v13 = v17.i64[0];
  v21 = vextq_s8(v17, v17, 8uLL);
  v23 = v9;
  v14 = [v11 initWithPID:v9 flags:15 reason:9 name:v12 withHandler:v20];
  v15 = *(a1 + 40);
  v16 = *(v15 + 128);
  *(v15 + 128) = v14;

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100011B80;
  v18[3] = &unk_100045978;
  objc_copyWeak(&v19, (a1 + 48));
  [*(*(a1 + 40) + 128) setInvalidationHandler:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
}

void sub_100011740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 48));
  _Unwind_Resume(a1);
}

void sub_100011764(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100011830;
    v4[3] = &unk_1000459C8;
    objc_copyWeak(&v5, (a1 + 48));
    v4[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v4);
    objc_destroyWeak(&v5);
  }

  else
  {
    v3 = wk_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100029418(a1);
    }
  }
}

void sub_100011830(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained batteryStateObserver];

  if (!v3)
  {
    v4 = +[UIDevice currentDevice];
    [v4 setBatteryMonitoringEnabled:1];

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[NSOperationQueue mainQueue];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100011998;
    v12 = &unk_1000459A0;
    v13 = *(a1 + 32);
    objc_copyWeak(&v14, (a1 + 40));
    v7 = [v5 addObserverForName:UIDeviceBatteryStateDidChangeNotification object:0 queue:v6 usingBlock:&v9];
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setBatteryStateObserver:{v7, v9, v10, v11, v12, v13}];

    objc_destroyWeak(&v14);
  }
}

void sub_100011998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 batteryState];

  if (v5 == 1)
  {
    v6 = [*(a1 + 32) launchSockPuppetAppQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011B00;
    block[3] = &unk_100045978;
    objc_copyWeak(&v11, (a1 + 40));
    dispatch_async(v6, block);

    v7 = [*(a1 + 32) processAssertionForXcodeQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011B40;
    v8[3] = &unk_100045978;
    objc_copyWeak(&v9, (a1 + 40));
    dispatch_async(v7, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
  }
}

void sub_100011B00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelLaunchSockPuppetAppTimeout];
}

void sub_100011B40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained releaseProcessAssertionForXcode];
}

void sub_100011B80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained processAssertionForXcodeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011C34;
  block[3] = &unk_100045978;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void sub_100011C34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained releaseProcessAssertionForXcode];
}

void sub_100011DF0(uint64_t a1)
{
  v2 = [*(a1 + 32) batteryStateObserver];

  if (v2)
  {
    v3 = +[UIDevice currentDevice];
    [v3 setBatteryMonitoringEnabled:0];

    v4 = +[NSNotificationCenter defaultCenter];
    v5 = [*(a1 + 32) batteryStateObserver];
    [v4 removeObserver:v5];

    v6 = *(a1 + 32);

    [v6 setBatteryStateObserver:0];
  }
}

id sub_100011EB0(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 stringByAppendingString:@"-bg"];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

void sub_100011FC8(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = sub_100011EB0(*(a1 + 32), 0);
  v27[0] = v2;
  v3 = sub_100011EB0(*(a1 + 32), 1);
  v27[1] = v3;
  v4 = [NSArray arrayWithObjects:v27 count:2];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 136446722;
    v16 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [*(a1 + 40) remoteInterfaceProcessAssertions];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = [v12 objectForKeyedSubscript:@"assertion"];
        [v13 invalidate];
        if (v13)
        {
          v14 = wk_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = "[SPCompanionAppServer releaseRemoteInterfaceAssertionsForPluginIdentifer:]_block_invoke";
            v23 = 1024;
            v24 = 1686;
            v25 = 2114;
            v26 = v10;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: early releasing remoteInterface process assertion for pluginIdentifier %{public}@", buf, 0x1Cu);
          }
        }

        v15 = [*(a1 + 40) remoteInterfaceProcessAssertions];
        [v15 removeObjectForKey:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v7);
  }
}

void sub_100012544(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = *(a1 + 40);
  v4 = [v3 nextTransactionID];
  [v3 setNextTransactionID:(v4 + 1)];
  v5 = [NSNumber numberWithUnsignedInt:v4];
  [v2 setObject:v5 forKeyedSubscript:@"tid"];
  v6 = [v2 objectForKeyedSubscript:@"c"];
  if (v6)
  {
    if (qword_100051D28 != -1)
    {
      sub_1000294B8();
    }

    v7 = [qword_100051D20 containsObject:v6];

    if (v7)
    {
      [v2 setObject:@".XC" forKeyedSubscript:@"i"];
    }
  }

  v8 = [v2 copy];
  v9 = v2;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = [v10 copy];
    [v9 setObject:v11 forKeyedSubscript:@"completion"];
  }

  v12 = +[NSDate date];
  [v9 setObject:v12 forKeyedSubscript:@"date"];

  v13 = [*(a1 + 40) outstandingtransactions];

  if (!v13)
  {
    v14 = +[NSMutableDictionary dictionary];
    [*(a1 + 40) setOutstandingtransactions:v14];
  }

  v15 = [*(a1 + 40) outstandingtransactions];
  [v15 setObject:v9 forKeyedSubscript:v5];

  [*(a1 + 40) sendPlist:v8 securityType:1];
  v16 = wk_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 32) objectForKeyedSubscript:@"c"];
    v18 = [*(a1 + 32) objectForKeyedSubscript:@"gi"];
    v19 = [*(a1 + 40) outstandingtransactions];
    v20 = 136447490;
    v21 = "[SPCompanionAppServer sendAndTrackTransactionDict:withCompletion:]_block_invoke";
    v22 = 1024;
    v23 = 1763;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v5;
    v30 = 2114;
    v31 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sending transactionDict with command=%{public}@ SPGizmoAppIdentifier=%{public}@ for transactionID=%{public}@\noutstandingtransactions is %{public}@", &v20, 0x3Au);
  }
}

void sub_100012984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001299C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000129B4(uint64_t a1)
{
  v2 = [*(a1 + 32) outstandingtransactions];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) outstandingtransactions];
    [v6 removeObjectForKey:*(a1 + 40)];
  }

  v7 = wk_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"c"];
    v9 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"gi"];
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) outstandingtransactions];
    v12 = 136447490;
    v13 = "[SPCompanionAppServer transactionDictForID:removeFromOutstanding:]_block_invoke";
    v14 = 1024;
    v15 = 1774;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: returning transactionDict with command=%{public}@ SPGizmoAppIdentifier=%{public}@ for transactionID=%{public}@\noutstandingtransactions is %{public}@", &v12, 0x3Au);
  }
}

void sub_100013890(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 216) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 intValue];

  v4 = [NSNumber numberWithInt:v3 + 1];
  [*(*(a1 + 32) + 216) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v5 = wk_bg_app_refresh_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 136446722;
      v8 = "[SPCompanionAppServer extensionDidBeginSnapshot:]_block_invoke";
      v9 = 1024;
      v10 = 1944;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Extension %{public}@ did begin snapshot or background glance update", &v7, 0x1Cu);
    }
  }
}

void sub_1000139B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 224);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013A44;
  v4[3] = &unk_1000447A0;
  v4[4] = v2;
  v5 = v1;
  dispatch_barrier_async(v3, v4);
}

void sub_100013A44(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 216) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 intValue];

  if (v4 >= 1)
  {
    v5 = wk_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100029658(v2);
    }

    [*(*(a1 + 32) + 216) setObject:&off_10004AC50 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_100013B84(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 216) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 intValue];

  v4 = (v3 - 1);
  if (v3 < 1)
  {
    v5 = wk_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000296F8();
    }

    v4 = 0;
  }

  v6 = [NSNumber numberWithInt:v4];
  [*(*(a1 + 32) + 216) setObject:v6 forKeyedSubscript:*(a1 + 40)];

  if (!v4)
  {
    v7 = wk_bg_app_refresh_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 136446722;
      v10 = "[SPCompanionAppServer extensionDidEndSnapshot:]_block_invoke";
      v11 = 1024;
      v12 = 1974;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Extension %{public}@ did end snapshot or background glance update", &v9, 0x1Cu);
    }
  }
}

void sub_100013DC0(void *a1)
{
  v2 = [*(a1[4] + 216) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 intValue] > 0;
}

void sub_100013F28(id a1)
{
  qword_100051D00 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.UIKit"];

  _objc_release_x1();
}

void sub_100014010(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 _textSizeChanged];
  }

  else
  {
    [v3 _textSize];
  }
  v4 = ;
  v5 = v4;
  if (v4)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000140D8;
    v8[3] = &unk_100045840;
    v9 = v4;
    [v7 sendToRemoteInterface:v6 call:v8];
  }
}

void sub_100014970()
{
  v0 = wk_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "_handleLanguageOrLocaleChange";
    v3 = 1024;
    v4 = 528;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: SPCompanionAppServer, restarting companionappd due to language or locale change", &v1, 0x12u);
  }

  exit(0);
}

void *sub_100014A04(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100051D18)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100014B44;
    v5[4] = &unk_100045AE8;
    v5[5] = v5;
    v6 = off_100045AD0;
    v7 = 0;
    qword_100051D18 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_100051D18;
    if (qword_100051D18)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_100051D18;
LABEL_5:
  result = dlsym(v2, "BSBundleIDForXPCConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100051D10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100014B44(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100051D18 = result;
  return result;
}

void sub_100014BB8(uint64_t a1)
{
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) launchSockPuppetAppCompanionAppIdentifer];
    v4 = [*(a1 + 32) launchSockPuppetAppOptions];
    v9 = 136447234;
    v10 = "_sockPuppetAppListUpdated_block_invoke";
    v11 = 1024;
    v12 = 940;
    v13 = 2114;
    v14 = @"com.apple.sockpuppet.applications.updated";
    v15 = 2114;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Got %{public}@ notification launchSockPuppetAppCompanionAppIdentifer=%{public}@, launchSockPuppetAppOptions=%{public}@", &v9, 0x30u);
  }

  v5 = *(a1 + 32);
  v6 = [v5 launchSockPuppetAppCompanionAppIdentifer];
  v7 = [*(a1 + 32) launchSockPuppetAppOptions];
  v8 = [*(a1 + 32) launchSockPuppetAppCompletion];
  [v5 _sockPuppetAppListUpdatedToLaunchSockPuppetAppForCompanionAppWithIdentifier:v6 options:v7 acxRetryGeneration:0 completion:v8];
}

void sub_100014D2C()
{
  v0 = wk_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446722;
    v3 = "_sendActiveComplicationsChangedNotification";
    v4 = 1024;
    v5 = 2084;
    v6 = 2114;
    v7 = @"NativeComplications";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}@", &v2, 0x1Cu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.sockpuppet.complications.updated", 0, 0, 1u);
}

void sub_100014E1C(id a1)
{
  v4[0] = @"lg";
  v4[1] = @"kg";
  v4[2] = @"gs";
  v1 = [NSArray arrayWithObjects:v4 count:3];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100051D20;
  qword_100051D20 = v2;
}

void sub_100014F48(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

uint64_t *sub_100014FAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100014FD8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void sub_1000169DC(id a1)
{
  qword_100051D30 = spUtils_allowedClassesForUserActivity();

  _objc_release_x1();
}

void sub_100016B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016BB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016BDC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000298C0(v2, v3);
  }
}

void sub_100016DB4(id a1)
{
  qword_100051D50 = objc_alloc_init(SPApplicationManager);

  _objc_release_x1();
}

void sub_1000171A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000171D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002997C();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained pkPluginManagementQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000172EC;
  v11[3] = &unk_100045D00;
  v12 = v5;
  v10 = v5;
  objc_copyWeak(&v13, (a1 + 32));
  dispatch_sync(v9, v11);

  objc_destroyWeak(&v13);
}

void sub_1000172EC(uint64_t a1)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v2)
  {
    v23 = *v28;
    *&v3 = 136447234;
    v21 = v3;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = [v5 identifier];
        v7 = [v5 uuid];
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v9 = [WeakRetained continuouslyDiscoveredPlugins];
        v10 = [v9 objectForKeyedSubscript:v6];

        v11 = [[SPPlugInExtension alloc] initWithPlugin:v5];
        if (v10)
        {
          v12 = [v10 objectForKeyedSubscript:@"uuid"];
          v13 = [v7 isEqual:v12];

          if (v13)
          {
            goto LABEL_18;
          }

          [v10 removeObjectForKey:@"startedBeginUsing"];
          [v10 removeObjectForKey:@"finishedBeginUsing"];
          v14 = [v10 objectForKeyedSubscript:@"plugin"];
          v15 = wk_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v32 = "[SPApplicationManager registerForContinuousPluginDiscovery]_block_invoke";
            v33 = 1024;
            v34 = 266;
            v35 = 2114;
            v36 = v6;
            v37 = 2114;
            v38 = v5;
            v39 = 2114;
            v40 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: about to replace plugin for %{public}@ with %{public}@. old plugin is %{public}@", buf, 0x30u);
          }

          [v10 setObject:v14 forKeyedSubscript:@"previousPlugin"];
          [v10 setObject:v5 forKeyedSubscript:@"plugin"];
          if (v11)
          {
            [v10 setObject:v11 forKeyedSubscript:@"extension"];
          }

          [v10 setObject:v7 forKeyedSubscript:@"uuid"];
          v16 = [v10 objectForKeyedSubscript:@"generation"];
          v17 = [v16 unsignedIntValue];

          v18 = [NSNumber numberWithUnsignedInt:v17 + 1];
          [v10 setObject:v18 forKeyedSubscript:@"generation"];

          [v14 setNotificationBlock:0];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1000177E0;
          v24[3] = &unk_100045CD8;
          v25 = v6;
          objc_copyWeak(&v26, (a1 + 40));
          [v14 endUsing:v24];
          objc_destroyWeak(&v26);
        }

        else
        {
          v10 = [NSMutableDictionary dictionaryWithCapacity:3];
          [v10 setObject:v5 forKeyedSubscript:@"plugin"];
          [v10 setObject:v7 forKeyedSubscript:@"uuid"];
          [v10 setObject:&off_10004AC68 forKeyedSubscript:@"generation"];
          if (v11)
          {
            [v10 setObject:v11 forKeyedSubscript:@"extension"];
          }

          v19 = objc_loadWeakRetained((a1 + 40));
          v20 = [v19 continuouslyDiscoveredPlugins];
          [v20 setObject:v10 forKeyedSubscript:v6];

          v14 = wk_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446978;
            v32 = "[SPApplicationManager registerForContinuousPluginDiscovery]_block_invoke";
            v33 = 1024;
            v34 = 261;
            v35 = 2114;
            v36 = v6;
            v37 = 2114;
            v38 = v5;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: initially populated plugin for %{public}@ with %{public}@", buf, 0x26u);
          }
        }

LABEL_18:
      }

      v2 = [obj countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v2);
  }
}

void sub_1000177E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000299F8(v3, a1);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained pkPluginManagementQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000178F0;
  v7[3] = &unk_1000459C8;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  dispatch_async(v6, v7);

  objc_destroyWeak(&v9);
}

void sub_1000178F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained callEndUsingCompletionsForPluginWithIdentifier:*(a1 + 32)];
}

void sub_100017B9C(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.companionappd"];
  v4 = [v3 objectForKey:@"SPEnableExcessivePluginLoadingLogging"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_retainBlock(*(a1 + 48));
      v19 = 136446978;
      v20 = "[SPApplicationManager callEndUsingCompletionsForPluginWithIdentifier:]_block_invoke";
      v21 = 1024;
      v22 = 305;
      v23 = 2114;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: PLUGIN_LOADING: pluginIdentifier %{public}@ later calling completion %p", &v19, 0x26u);
    }

    v9 = qword_100051D40;
    v10 = objc_retainBlock(*(a1 + 48));
    v11 = [NSValue valueWithNonretainedObject:v10];
    [v9 removeObjectForKey:v11];
  }

  v12 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 persistentDomainForName:@"com.apple.companionappd"];
  v15 = [v14 objectForKey:@"SPEnableExcessivePluginLoadingLogging"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = wk_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [qword_100051D40 count];
      v19 = 136446978;
      v20 = "[SPApplicationManager callEndUsingCompletionsForPluginWithIdentifier:]_block_invoke";
      v21 = 1024;
      v22 = 312;
      v23 = 2048;
      v24 = v18;
      v25 = 2114;
      v26 = qword_100051D40;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: PLUGIN_LOADING: sAllOutstandingCompletions has %lu entries: %{public}@", &v19, 0x26u);
    }
  }
}

void sub_100017F38(id *a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.companionappd"];
  v4 = [v3 objectForKey:@"SPEnableExcessivePluginLoadingLogging"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    if (qword_100051D58 != -1)
    {
      sub_100029B00();
    }

    v6 = qword_100051D40;
    v7 = a1[4];
    v8 = objc_retainBlock(a1[5]);
    v9 = [NSValue valueWithNonretainedObject:v8];
    [v6 setObject:v7 forKeyedSubscript:v9];

    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = objc_retainBlock(a1[5]);
      *buf = 136446978;
      v36 = "[SPApplicationManager waitForPreviousPluginToFinishEnding:toComplete:]_block_invoke";
      v37 = 1024;
      v38 = 330;
      v39 = 2114;
      v40 = v11;
      v41 = 2048;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: PLUGIN_LOADING: waiting for pluginIdentifier %{public}@ with completion %p", buf, 0x26u);
    }

    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [qword_100051D40 count];
      *buf = 136446978;
      v36 = "[SPApplicationManager waitForPreviousPluginToFinishEnding:toComplete:]_block_invoke";
      v37 = 1024;
      v38 = 331;
      v39 = 2048;
      v40 = v14;
      v41 = 2114;
      v42 = qword_100051D40;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: PLUGIN_LOADING: sAllOutstandingCompletions has %lu entries: %{public}@", buf, 0x26u);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v16 = [WeakRetained continuouslyDiscoveredPlugins];
  v17 = [v16 objectForKeyedSubscript:a1[4]];

  v18 = [v17 objectForKeyedSubscript:@"previousPlugin"];

  if (!v18)
  {
    v27 = [v17 objectForKeyedSubscript:@"plugin"];
    v28 = objc_loadWeakRetained(a1 + 6);
    v29 = [v28 pkPluginCompletionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000183F4;
    block[3] = &unk_100045D50;
    v32 = a1[4];
    v30 = a1[5];
    v33 = v27;
    v34 = v30;
    v19 = v27;
    dispatch_async(v29, block);

    v25 = v32;
LABEL_16:

    goto LABEL_17;
  }

  v19 = [v17 objectForKeyedSubscript:@"didEndCompletions"];
  if (!v19)
  {
    v19 = +[NSMutableArray array];
    [v17 setObject:v19 forKeyedSubscript:@"didEndCompletions"];
  }

  v20 = [a1[5] copy];
  [v19 addObject:v20];

  v21 = +[NSUserDefaults standardUserDefaults];
  v22 = [v21 persistentDomainForName:@"com.apple.companionappd"];
  v23 = [v22 objectForKey:@"SPEnableExcessivePluginLoadingLogging"];
  v24 = [v23 BOOLValue];

  if (v24)
  {
    v25 = wk_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1[4];
      *buf = 136446722;
      v36 = "[SPApplicationManager waitForPreviousPluginToFinishEnding:toComplete:]_block_invoke";
      v37 = 1024;
      v38 = 345;
      v39 = 2114;
      v40 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: PLUGIN_LOADING: pluginIdentifier %{public}@ has a previous SPPluginManagementPreviousPluginKey entry. storing completion", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

LABEL_17:
}

void sub_1000183B4(id a1)
{
  qword_100051D40 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void sub_1000183F4(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.companionappd"];
  v4 = [v3 objectForKey:@"SPEnableExcessivePluginLoadingLogging"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_retainBlock(*(a1 + 48));
      v19 = 136446978;
      v20 = "[SPApplicationManager waitForPreviousPluginToFinishEnding:toComplete:]_block_invoke";
      v21 = 1024;
      v22 = 353;
      v23 = 2114;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: PLUGIN_LOADING: pluginIdentifier %{public}@ inline calling completion %p", &v19, 0x26u);
    }

    v9 = qword_100051D40;
    v10 = objc_retainBlock(*(a1 + 48));
    v11 = [NSValue valueWithNonretainedObject:v10];
    [v9 removeObjectForKey:v11];
  }

  v12 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 persistentDomainForName:@"com.apple.companionappd"];
  v15 = [v14 objectForKey:@"SPEnableExcessivePluginLoadingLogging"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = wk_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [qword_100051D40 count];
      v19 = 136446978;
      v20 = "[SPApplicationManager waitForPreviousPluginToFinishEnding:toComplete:]_block_invoke";
      v21 = 1024;
      v22 = 360;
      v23 = 2048;
      v24 = v18;
      v25 = 2114;
      v26 = qword_100051D40;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: PLUGIN_LOADING: sAllOutstandingCompletions has %lu entries: %{public}@", &v19, 0x26u);
    }
  }
}

void sub_10001879C(id *a1)
{
  v2 = [a1[4] identifier];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v4 = [WeakRetained continuouslyDiscoveredPlugins];
  v5 = [v4 objectForKeyedSubscript:v2];

  v6 = [v5 objectForKeyedSubscript:@"startedBeginUsing"];
  v7 = [v6 BOOLValue];

  v8 = [v5 objectForKeyedSubscript:@"finishedBeginUsing"];
  v9 = [v8 BOOLValue];

  if ((v7 & v9) == 1)
  {
    v10 = [a1[5] pkPluginCompletionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018D80;
    block[3] = &unk_1000454E8;
    v48 = a1[6];
    dispatch_async(v10, block);

    v11 = v48;
  }

  else
  {
    v11 = [v5 objectForKeyedSubscript:@"didBeginCompletions"];
    if (v11)
    {
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = +[NSMutableArray array];
      [v5 setObject:v11 forKeyedSubscript:@"didBeginCompletions"];
      v12 = [a1[6] copy];
      [v11 addObject:v12];

      if (v7)
      {
        goto LABEL_12;
      }
    }

    v13 = a1[4];
    v14 = [a1[5] pkPluginManagementQueue];
    [v13 setReplyQueue:v14];

    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"startedBeginUsing"];
    v15 = +[NSUUID UUID];
    v16 = wk_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [a1[4] identifier];
      v18 = a1[4];
      *buf = 136447234;
      v50 = "[SPApplicationManager beginUsingPlugin:withCompletion:]_block_invoke";
      v51 = 1024;
      v52 = 395;
      v53 = 2114;
      v54 = v17;
      v55 = 2048;
      v56 = v18;
      v57 = 2114;
      v58 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: calling beginUsing: for plugin %{public}@ %p with beginUsingInstanceUUID %{public}@", buf, 0x30u);
    }

    v19 = [a1[5] currentXcodeControlledPlugin];
    v20 = [v19 isEqualToString:v2];

    v21 = "#40@0:8@16@24@32" + 13;
    if ((v20 & 1) == 0)
    {
      v22 = [a1[5] pkPluginBeginUsingTimerQueue];
      v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v22);

      v24 = [a1[5] pkPluginBeginUsingTimerQueue];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100018D94;
      v44[3] = &unk_100045538;
      v44[4] = a1[5];
      v25 = v15;
      v45 = v25;
      v46 = v23;
      v26 = v23;
      dispatch_sync(v24, v44);

      v27 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100018DF0;
      handler[3] = &unk_100045DE8;
      handler[4] = a1[5];
      v28 = v25;
      v40 = v28;
      v41 = v5;
      objc_copyWeak(&v43, a1 + 7);
      v42 = v2;
      dispatch_source_set_event_handler(v26, handler);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10001918C;
      v37[3] = &unk_1000447A0;
      v37[4] = a1[5];
      v38 = v28;
      dispatch_source_set_cancel_handler(v26, v37);
      dispatch_resume(v26);

      objc_destroyWeak(&v43);
      v21 = "@32";
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = *(v21 + 37);
    v31[2] = sub_1000191E0;
    v31[3] = &unk_100045E10;
    v29 = a1[4];
    v31[4] = a1[5];
    v30 = v15;
    v32 = v30;
    v33 = a1[4];
    v34 = v5;
    objc_copyWeak(&v36, a1 + 7);
    v35 = v2;
    [v29 beginUsing:v31];

    objc_destroyWeak(&v36);
  }

LABEL_12:
}

void sub_100018D94(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) pkPluginBeginUsingTimers];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_100018DF0(uint64_t a1)
{
  v2 = [*(a1 + 32) pkPluginBeginUsingTimers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100029B14((a1 + 40));
    }

    v5 = [*(a1 + 32) pkPluginManagementQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100018F28;
    v8[3] = &unk_100045DC0;
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    objc_copyWeak(&v12, (a1 + 64));
    v11 = *(a1 + 56);
    dispatch_async(v5, v8);

    objc_destroyWeak(&v12);
  }
}

void sub_100018F28(id *a1)
{
  [a1[4] removeObjectForKey:@"startedBeginUsing"];
  [a1[4] removeObjectForKey:@"finishedBeginUsing"];
  v2 = [a1[5] pkPluginCompletionQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100019004;
  v3[3] = &unk_1000459C8;
  objc_copyWeak(&v5, a1 + 7);
  v4 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void sub_100019004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained continuouslyDiscoveredPlugins];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v5 = [v4 objectForKeyedSubscript:@"didBeginCompletions"];
  [v4 removeObjectForKey:@"didBeginCompletions"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [SPError errorWithCode:15, v13];
        (*(v11 + 16))(v11, v12);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_10001918C(uint64_t a1)
{
  v2 = [*(a1 + 32) pkPluginBeginUsingTimers];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1000191E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pkPluginBeginUsingTimerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000194EC;
  block[3] = &unk_1000447A0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v21 = v5;
  dispatch_async(v4, block);

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 48) identifier];
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 136447234;
    v23 = "[SPApplicationManager beginUsingPlugin:withCompletion:]_block_invoke_4";
    v24 = 1024;
    v25 = 440;
    v26 = 2114;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: beginUsing: for plugin %{public}@ %p with beginUsingInstanceUUID %{public}@ succeeded", buf, 0x30u);
  }

  v10 = wk_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 48) identifier];
    v12 = *(a1 + 48);
    *buf = 136447234;
    v23 = "[SPApplicationManager beginUsingPlugin:withCompletion:]_block_invoke";
    v24 = 1024;
    v25 = 442;
    v26 = 2114;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    v30 = 2114;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: beginUsing: completion called for plugin %{public}@ %p with error %{public}@", buf, 0x30u);
  }

  v13 = *(a1 + 56);
  if (v3)
  {
    [v13 removeObjectForKey:@"startedBeginUsing"];
    [*(a1 + 56) removeObjectForKey:@"finishedBeginUsing"];
  }

  else
  {
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:@"finishedBeginUsing"];
  }

  v14 = [*(a1 + 32) pkPluginCompletionQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100019578;
  v16[3] = &unk_100045928;
  objc_copyWeak(&v19, (a1 + 72));
  v17 = *(a1 + 64);
  v18 = v3;
  v15 = v3;
  dispatch_async(v14, v16);

  objc_destroyWeak(&v19);
}

void sub_1000194EC(uint64_t a1)
{
  v2 = [*(a1 + 32) pkPluginBeginUsingTimers];
  source = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (source)
  {
    v3 = [*(a1 + 32) pkPluginBeginUsingTimers];
    [v3 removeObjectForKey:*(a1 + 40)];

    dispatch_source_cancel(source);
  }
}

void sub_100019578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained continuouslyDiscoveredPlugins];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v5 = [v4 objectForKeyedSubscript:@"didBeginCompletions"];
  [v4 removeObjectForKey:@"didBeginCompletions"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 40);
        (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10001987C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100019898(uint64_t a1)
{
  v2 = +[PKHost defaultHost];
  v3 = [v2 activePlugInForIdentifier:*(a1 + 32)];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v5 = [WeakRetained pkPluginCompletionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019A4C;
    block[3] = &unk_100045E60;
    v6 = &v20;
    v20 = *(a1 + 56);
    v7 = &v19;
    v19 = v3;
    dispatch_async(v5, block);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100019A60;
    v15[3] = &unk_100045EB0;
    v6 = &v16;
    v7 = &v17;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    *&v11 = v9;
    *(&v11 + 1) = *(a1 + 40);
    v14 = v11;
    v12 = *(a1 + 56);
    *&v13 = v10;
    *(&v13 + 1) = v12;
    v16 = v14;
    v17 = v13;
    [v8 discoverPlugInForIdentifier:v9 found:v15];
  }
}

void sub_100019A60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 identifier];
      v14 = *(a1 + 32);
      *buf = 136447490;
      v20 = "[SPApplicationManager getOrBeginActivePlugInForApplication:setupBlock:completion:]_block_invoke_3";
      v21 = 1024;
      v22 = 481;
      v23 = 2114;
      v24 = v13;
      v25 = 2048;
      v26 = v5;
      v27 = 2114;
      v28 = v14;
      v29 = 2114;
      v30 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%d: found plugin %{public}@ %p for %{public}@, errors is %{public}@", buf, 0x3Au);
    }
  }

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 identifier];
      v10 = *(a1 + 32);
      *buf = 136447234;
      v20 = "[SPApplicationManager getOrBeginActivePlugInForApplication:setupBlock:completion:]_block_invoke";
      v21 = 1024;
      v22 = 485;
      v23 = 2114;
      v24 = v9;
      v25 = 2048;
      v26 = v5;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: calling beginUsingPlugin:: for plugin %{public}@ %p for %{public}@", buf, 0x30u);
    }

    v11 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100019D28;
    v15[3] = &unk_100045E88;
    v15[4] = v11;
    v16 = *(a1 + 32);
    v17 = v5;
    v18 = *(a1 + 56);
    [v11 beginUsingPlugin:v17 withCompletion:v15];
  }

  else
  {
    v12 = wk_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100029C38(a1);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100019D28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100029CC4(a1, v3, v4);
    }

    v5 = *(*(a1 + 56) + 16);
  }

  else
  {
    [*(a1 + 32) setExtension:*(a1 + 40) wasKilledDueToAppDeath:0];
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 48) identifier];
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      v11 = 136447234;
      v12 = "[SPApplicationManager getOrBeginActivePlugInForApplication:setupBlock:completion:]_block_invoke";
      v13 = 1024;
      v14 = 489;
      v15 = 2114;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: beginUsingPlugin: for plugin %{public}@ %p for %{public}@ succeeded", &v11, 0x30u);
    }

    v10 = *(a1 + 48);
    v5 = *(*(a1 + 56) + 16);
  }

  v5();
}

id sub_100019FE8(uint64_t a1)
{
  if (!*(*(a1 + 32) + 120) && *(a1 + 48) == 1)
  {
    v2 = +[NSMutableSet set];
    v3 = *(a1 + 32);
    v4 = *(v3 + 120);
    *(v3 + 120) = v2;
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 120);
  if (*(a1 + 48) == 1)
  {

    return [v6 addObject:v5];
  }

  else
  {

    return [v6 removeObject:v5];
  }
}

id sub_10001A14C(void *a1)
{
  result = [*(a1[4] + 120) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_10001A558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10001A570(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_10001A9C8(uint64_t a1)
{
  v2 = +[PKHost defaultHost];
  v3 = [v2 activePlugInForIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = [v3 pluginConnection];
    v5 = [v4 processIdentifier];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained continuouslyDiscoveredPlugins];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];

    [v8 setObject:v3 forKeyedSubscript:@"previousPlugin"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001AB24;
    v9[3] = &unk_100045F28;
    v12 = v5;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    [v3 endUsing:v9];

    objc_destroyWeak(&v11);
  }
}

void sub_10001AB24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    kill(v4, 9);
  }

  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[SPApplicationManager stopUsingPluginIfNecessary:]_block_invoke_2";
    v13 = 1024;
    v14 = 621;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: stopUsingPluginIfNecessary, endUsing, error: %{public}@", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained pkPluginManagementQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001ACB0;
  v8[3] = &unk_100045D00;
  v9 = *(a1 + 32);
  objc_copyWeak(&v10, (a1 + 40));
  dispatch_async(v7, v8);

  objc_destroyWeak(&v10);
}

void sub_10001ACB0(uint64_t a1)
{
  v2 = +[SPApplicationManager sharedInstance];
  [v2 callEndUsingCompletionsForPluginWithIdentifier:*(a1 + 32)];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained continuouslyDiscoveredPlugins];
  [v3 removeObjectForKey:*(a1 + 32)];
}

void sub_10001AFB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100029DB4();
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v5);
    }
  }
}

id sub_10001B538()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100051D60;
  v7 = qword_100051D60;
  if (!qword_100051D60)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001C63C;
    v3[3] = &unk_100045AB0;
    v3[4] = &v4;
    sub_10001C63C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10001B600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = qword_100051D70;
  v16 = qword_100051D70;
  if (!qword_100051D70)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001C804;
    v12[3] = &unk_100045AB0;
    v12[4] = &v13;
    sub_10001C804(v12, a2, a3, a4, a5, a6, a7, a8, v11);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_10001B6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B824(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 pluginsFoundBlock];
  (v7)[2](v7, v8, v6);

  (*(*(a1 + 40) + 16))();
}

void sub_10001BA00(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 pluginsFoundBlock];
  (v8)[2](v8, v7, v5);

  v9 = [v7 anyObject];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v9 identifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001BB54;
    v12[3] = &unk_100045FA0;
    v13 = v9;
    v15 = *(a1 + 40);
    v14 = v5;
    [v10 waitForPreviousPluginToFinishEnding:v11 toComplete:v12];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10001BB54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 40);
  v5 = v3;
  (*(*(a1 + 48) + 16))();
}

void sub_10001BD54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained continuouslyDiscoveredPlugins];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  [v4 removeObjectForKey:@"startedBeginUsing"];
  [v4 removeObjectForKey:@"finishedBeginUsing"];
}

void sub_10001C004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained continuouslyDiscoveredPlugins];
  v5 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v4 = [v5 objectForKeyedSubscript:@"extension"];
  [v4 notifyActive];
}

void sub_10001C250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained continuouslyDiscoveredPlugins];
  v7 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v4 = [v7 objectForKeyedSubscript:@"extension"];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v4)
  {
    [v4 notifyInactiveWithCompletion:v6];
  }

  else if (v6)
  {
    (*(v6 + 16))(*(a1 + 40));
  }
}

void sub_10001C63C(uint64_t a1)
{
  sub_10001C694();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_CDClientContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100051D60 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100029F4C();
    sub_10001C694();
  }
}

void sub_10001C694()
{
  v1[0] = 0;
  if (!qword_100051D68)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10001C790;
    v1[4] = &unk_100045AE8;
    v1[5] = v1;
    v2 = off_100045FE8;
    v3 = 0;
    qword_100051D68 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100051D68)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10001C790(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100051D68 = result;
  return result;
}

void sub_10001C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  sub_10001C694();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_CDContextQueries");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100051D70 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = sub_100029F74();
    sub_10001C85C(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void sub_10001C85C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t SPProtoCacheSyncDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(SPProtoCacheAssets);
        v16 = 16;
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(SPProtoCacheAssets);
    v16 = 24;
LABEL_23:
    objc_storeStrong((a1 + v16), v15);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !SPProtoCacheAssetsReadFrom(v15, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SPProtoSockPuppetIDSObjectReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10001D968(id a1)
{
  qword_100051D80 = objc_alloc_init(SPTransport);

  _objc_release_x1();
}

id sub_10001E028(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);

  return [v4 wifiTimeOut];
}

void sub_10001EF64(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F054;
  block[3] = &unk_100046058;
  v7 = *(a1 + 32);
  v2 = *(v7 + 104);
  v3 = *(&v7 + 1);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v4 = *(a1 + 48);
  v13 = *(a1 + 80);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v2, block);
}

void sub_10001F06C(uint64_t a1)
{
  v2 = [*(a1 + 32) messages];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_10001F8CC(uint64_t a1)
{
  v2 = [*(a1 + 32) messages];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_10001FA44(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 removeOutgoingMessageBlockIfIdentiferMatches:*(a1 + 40) sendError:0];
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = [*(a1 + 32) secureRemoteService];
      v8 = @"insecure";
      *&buf[4] = "[SPTransport service:account:identifier:didSendWithSuccess:error:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 422;
      *buf = 136446978;
      *&buf[18] = 2114;
      if (v6 == v7)
      {
        v8 = @"secure";
      }

      *&buf[20] = v5;
      *&buf[28] = 2114;
      *&buf[30] = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Got success sending message with identifier %{public}@ on %{public}@ service", buf, 0x26u);
    }
  }

  else
  {
    v9 = v3;
    objc_sync_enter(v9);
    v10 = [*(a1 + 32) outgoingMessageBlockedUntil];
    v11 = [v10 isEqualToString:*(a1 + 40)];

    objc_sync_exit(v9);
    if ((v11 & 1) != 0 || [*(a1 + 56) code] == 31 && (objc_msgSend(*(a1 + 56), "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", IDSErrorDomain), v13, v14))
    {
      if ([*(a1 + 32) handleDataProtectionSendFailureOrRetryFailureOnService:*(a1 + 48) account:*(a1 + 64) identifier:*(a1 + 40) error:*(a1 + 56)])
      {
        return;
      }

      v12 = wk_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 40);
        v41 = [*(a1 + 48) accounts];
        v42 = [v41 anyObject];
        v43 = [v42 serviceName];
        v44 = v43;
        *&buf[4] = "[SPTransport service:account:identifier:didSendWithSuccess:error:]_block_invoke";
        v45 = @"ARE NOT";
        v46 = *(a1 + 56);
        *buf = 136447746;
        *&buf[12] = 1024;
        if (v11)
        {
          v45 = @"ARE";
        }

        *&buf[14] = 435;
        *&buf[18] = 2114;
        v47 = &stru_1000498D8;
        *&buf[20] = v40;
        if (v11)
        {
          v47 = @" Unblocking now.";
        }

        *&buf[28] = 2114;
        *&buf[30] = v43;
        *&buf[38] = 2114;
        *v62 = v45;
        *&v62[8] = 2114;
        *&v62[10] = v47;
        *&v62[18] = 2114;
        *&v62[20] = v46;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%d: Got failure sending message with identifier (%{public}@) on service (%{public}@). sends currently %{public}@ blocked until send of this message.%{public}@ error: %{public}@", buf, 0x44u);
      }

      [*(a1 + 32) removeOutgoingMessageBlockIfIdentiferMatches:*(a1 + 40) sendError:*(a1 + 56)];
    }

    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 40);
      v30 = [*(a1 + 48) accounts];
      v31 = [v30 anyObject];
      v32 = [v31 serviceName];
      v33 = *(a1 + 72);
      v34 = [*(a1 + 56) domain];
      v35 = [*(a1 + 56) code];
      *buf = 136447746;
      *&buf[4] = "[SPTransport service:account:identifier:didSendWithSuccess:error:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 439;
      *&buf[18] = 2114;
      *&buf[20] = v29;
      *&buf[28] = 2114;
      *&buf[30] = v32;
      *&buf[38] = 1024;
      *v62 = v33;
      *&v62[4] = 2114;
      *&v62[6] = v34;
      *&v62[14] = 2048;
      *&v62[16] = v35;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%d: identifier (%{public}@), serviceName (%{public}@), success: %d error, domain: %{public}@, code: %ld", buf, 0x40u);
    }
  }

  if ([*(a1 + 56) code] == 27)
  {
    *(*(a1 + 32) + 8) = 0;
  }

  v59 = @"error";
  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = *(a1 + 56);
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v15 == 0;
  v60 = v16;
  v18 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  if (v17)
  {
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_100020138;
  *&buf[32] = sub_100020148;
  *v62 = 0;
  v19 = *(a1 + 32);
  v20 = *(v19 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020150;
  block[3] = &unk_100045A40;
  v50 = buf;
  block[4] = v19;
  v49 = *(a1 + 40);
  dispatch_sync(v20, block);
  v21 = *(*&buf[8] + 40);
  if (v21)
  {
    v22 = [v21 objectForKeyedSubscript:@"completion"];
    v23 = v22;
    if (v22)
    {
      (*(v22 + 16))(v22, v18);
    }

    else
    {
      v28 = wk_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v36 = *(a1 + 40);
        v37 = [*(a1 + 48) accounts];
        v38 = [v37 anyObject];
        v39 = [v38 serviceName];
        *v51 = 136446978;
        v52 = "[SPTransport service:account:identifier:didSendWithSuccess:error:]_block_invoke_2";
        v53 = 1024;
        v54 = 457;
        v55 = 2114;
        v56 = v36;
        v57 = 2114;
        v58 = v39;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - cannot find completion block for (%{public}@) serviceName: (%{public}@)", v51, 0x26u);
      }
    }
  }

  else
  {
    v23 = wk_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v25 = [*(a1 + 48) accounts];
      v26 = [v25 anyObject];
      v27 = [v26 serviceName];
      *v51 = 136446978;
      v52 = "[SPTransport service:account:identifier:didSendWithSuccess:error:]_block_invoke";
      v53 = 1024;
      v54 = 460;
      v55 = 2114;
      v56 = v24;
      v57 = 2114;
      v58 = v27;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - cannot find message for (%{public}@) serviceName: (%{public}@)", v51, 0x26u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void sub_1000200F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100020138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100020150(uint64_t a1)
{
  v2 = [*(a1 + 32) messages];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) messages];
  [v6 removeObjectForKey:*(a1 + 40)];
}

id sub_1000206BC(uint64_t a1)
{
  result = [*(a1 + 32) _sendProtobuf:*(a1 + 40) sender:*(a1 + 48) timeOut:*(a1 + 80) securityType:0 retryExpiration:0 tryGeneration:*(a1 + 56) withCompletion:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void sub_10002135C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002145C;
  block[3] = &unk_1000460F8;
  v7 = *(a1 + 32);
  v2 = *(v7 + 104);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v14 = *(a1 + 88);
  v11 = *(a1 + 64);
  dispatch_sync(v2, block);
}

void sub_100021478(uint64_t a1)
{
  v2 = [*(a1 + 32) messages];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_100021B0C(uint64_t a1)
{
  [*(*(a1 + 32) + 80) addObject:*(a1 + 40)];
  v2 = dispatch_time(0, 500000000);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 72);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021BCC;
  v6[3] = &unk_1000447A0;
  v6[4] = v4;
  v7 = v3;
  dispatch_after(v2, v5, v6);
}

void sub_100021BCC(uint64_t a1)
{
  [*(*(a1 + 32) + 80) removeObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 80) count] >= 0x15)
  {
    v2 = wk_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10002A6A8();
    }
  }
}

void sub_1000221C4(uint64_t a1)
{
  v5 = [*(a1 + 32) messages];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100022230(uint64_t a1)
{
  v2 = [*(a1 + 32) messages];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_100022284(void *a1)
{
  v2 = a1[4];
  v12 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"protobuf"];
  v3 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"sender"];
  v4 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"timeOut"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"securityType"];
  v8 = [v7 integerValue];
  v9 = a1[7];
  v10 = a1[5];
  v11 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"completion"];
  [v2 _sendProtobuf:v12 sender:v3 timeOut:v8 securityType:v10 retryExpiration:v9 + 1 tryGeneration:v11 withCompletion:v6];
}

void sub_1000223CC(void *a1)
{
  v2 = a1[4];
  v11 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"propertyList"];
  v3 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"timeOut"];
  [v3 doubleValue];
  v5 = v4;
  v6 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"securityType"];
  v7 = [v6 integerValue];
  v8 = a1[7];
  v9 = a1[5];
  v10 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"completion"];
  [v2 _sendPlist:v11 timeOut:v7 securityType:v9 retryExpiration:v8 + 1 tryGeneration:v10 withCompletion:v5];
}

void sub_10002275C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  *(v1 + 96) = 0;
}

NSString *spUtils_uniqueNumber()
{
  ++word_100051D88;
  v0 = +[NSProcessInfo processInfo];
  v1 = [v0 processIdentifier];
  v2 = word_100051D88 | (v1 << 16);

  return [NSString stringWithFormat:@"%X", v2];
}

id spUtils_serializeObject(void *a1)
{
  if (a1)
  {
    var8[0] = 0;
    a1 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:var8];
    v1 = var8[2];
  }

  return a1;
}

id spUtils_deserializeObject(void *a1, uint64_t a2)
{
  if (a1)
  {
    var8[0] = 0;
    a1 = [NSKeyedUnarchiver unarchivedObjectOfClasses:a2 fromData:a1 error:var8];
    v2 = var8[2];
  }

  return a1;
}

id spUtils_allowedClassesForUserActivity()
{
  if (qword_100051D98 != -1)
  {
    sub_10002A980();
  }

  v1 = qword_100051D90;

  return v1;
}

void sub_100022E10(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  qword_100051D90 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];

  _objc_release_x1();
}

id spUtils_localizedStringForSystemLanguage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [NSBundle bundleWithPath:v4];
  v6 = +[NSLocale preferredLanguages];
  v7 = [v6 firstObject];
  v8 = v3;
  v9 = v5;
  v10 = v7;
  if (![v8 length] || !objc_msgSend(@"Localizable", "length") || !objc_msgSend(v10, "length"))
  {
    goto LABEL_9;
  }

  v11 = [v9 localizations];
  v12 = [NSArray arrayWithObject:v10];
  v13 = CFBundleCopyLocalizationsForPreferences(v11, v12);
  if (![(__CFArray *)v13 count])
  {
    goto LABEL_7;
  }

  v14 = [(__CFArray *)v13 objectAtIndex:0];
  v15 = [v9 pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:v14];

  if (v15)
  {
    [NSDictionary dictionaryWithContentsOfFile:v15];
    v16 = v22 = v11;
    v17 = [v16 objectForKey:v8];

    v11 = v22;
  }

  else
  {
LABEL_7:
    v17 = 0;
  }

  if (!v17)
  {
LABEL_9:
    v17 = [v9 localizedStringForKey:v8 value:&stru_1000498D8 table:@"Localizable"];
  }

  v18 = v17;
  if (!v17)
  {
    v19 = wk_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10002A994(v8, v4, v19);
    }

    v18 = v8;
  }

  v20 = v18;

  return v20;
}

BOOL spUtils_appExtensionFirstUnlock()
{
  if (qword_100051DA0 != -1)
  {
    sub_10002AA78();
  }

  state64 = 0;
  if (notify_get_state(dword_100051B90, &state64))
  {
    v0 = wk_default_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10002AA8C();
    }

    v1 = 1;
  }

  else
  {
    v1 = state64 != 0;
  }

  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v6 = "spUtils_appExtensionFirstUnlock";
    v7 = 1024;
    v8 = 190;
    v9 = 1024;
    v10 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: unlocked=%d", buf, 0x18u);
  }

  return v1;
}

void sub_1000232C4(id a1)
{
  if (notify_register_check([@"com.apple.watchkit.notify.first_unlock" UTF8String], &dword_100051B90))
  {
    v1 = 1;
  }

  else
  {
    v1 = dword_100051B90 == -1;
  }

  if (v1)
  {
    v2 = wk_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB20();
    }
  }
}

NSString *spUtils_machTimeString()
{
  v0 = mach_absolute_time();
  if (qword_100051DB0 != -1)
  {
    sub_10002ABB4();
  }

  return [NSString stringWithFormat:@" [%013.06f]", *&qword_100051DA8 * v0];
}

void sub_1000233AC(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100051DA8 = v1 / v2 / 1000000000.0;
}

BOOL spUtils_isRunningInF5DemoMode()
{
  if (qword_100051DC8 != -1)
  {
    sub_10002ABC8();
  }

  return qword_100051DD0 == 5;
}

BOOL spUtils_isRunningInF201DemoMode()
{
  if (qword_100051DC8 != -1)
  {
    sub_10002ABC8();
  }

  return qword_100051DD0 == 201;
}

uint64_t spUtils_isRunningInAnyDemoMode()
{
  if (qword_100051DC8 != -1)
  {
    sub_10002ABC8();
  }

  return byte_100051DD8;
}

BOOL spUtils_isRTL()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = qword_100051DE0;
  v9 = qword_100051DE0;
  if (!qword_100051DE0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000241B8;
    v5[3] = &unk_100045AB0;
    v5[4] = &v6;
    sub_1000241B8(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

void sub_100023588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id spUtils_SPURLQueryAllowedCharacterSet()
{
  if (qword_100051DC0 != -1)
  {
    sub_10002ABDC();
  }

  v1 = qword_100051DB8;

  return v1;
}

void sub_1000235E4(id a1)
{
  v1 = objc_alloc_init(NSMutableCharacterSet);
  v2 = qword_100051DB8;
  qword_100051DB8 = v1;

  v3 = qword_100051DB8;
  v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = qword_100051DB8;

  [v5 removeCharactersInString:@"="];
}

id spUtils_companionConnectionClientIdentifier(int a1, int a2)
{
  if (a1 && a2)
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002ABF0();
    }
  }

  v5 = spUtils_uniqueNumber();
  v6 = v5;
  if (!a1 || a2)
  {
    if (a2)
    {
      v7 = @"-";
    }

    else
    {
      v7 = @"_";
    }

    v8 = [v5 stringByAppendingString:v7];

    v6 = v8;
  }

  return v6;
}

uint64_t spUtils_isApplicationCompanionConnectionClientIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@"_"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 hasSuffix:@"-"] ^ 1;
  }

  return v2;
}

void spUtils_dispatchSyncToMainThread(void *a1)
{
  block = a1;
  if (isRunningOnMainQueue())
  {
    block[2]();
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, block);
  }
}

BOOL isRunningOnMainQueue()
{
  if (qword_100051DF8 != -1)
  {
    sub_10002AC78();
  }

  return dispatch_get_specific(&off_100051B98) == &_dispatch_main_q;
}

void spUtils_dispatchAsyncToMainThread(void *a1)
{
  block = a1;
  if (isRunningOnMainQueue())
  {
    block[2]();
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

id spUtils_UIColorFromString(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"@"];
  if (v3)
  {
    v4 = v2;
    v5 = 1.0;
    if (v2 < [v1 length] - 1)
    {
      v6 = [v1 substringFromIndex:v4 + 1];
      [v6 floatValue];
      v8 = v7;

      v9 = 0.0;
      if (v8 >= 0.0)
      {
        v9 = v8;
      }

      v5 = fmin(v9, 1.0);
    }

    v10 = [v1 substringToIndex:v4];
  }

  else
  {
    v5 = 1.0;
    v10 = v1;
  }

  if (([v10 hasSuffix:@"Color"] & 1) == 0)
  {
    v11 = [v10 stringByAppendingString:@"Color"];

    v10 = v11;
  }

  if ([v10 hasPrefix:@"_"])
  {
    do
    {
      v12 = [v10 substringFromIndex:1];

      v10 = v12;
    }

    while (([v12 hasPrefix:@"_"] & 1) != 0);
  }

  else
  {
    v12 = v10;
  }

  v13 = NSSelectorFromString(v12);
  sub_100023C24();
  v14 = objc_opt_class();
  if (!class_getClassMethod(v14, v13))
  {

    goto LABEL_21;
  }

  sub_100023C24();
  v15 = [objc_opt_class() performSelector:v13];
  v16 = v15;
  if (v15 && v5 < 1.0)
  {
    v17 = [v15 colorWithAlphaComponent:v5];

    v16 = v17;
  }

  if (!v16)
  {
LABEL_21:
    v30 = 0;
    v31 = 0;
    if ([v1 length])
    {
      v18 = sscanf([v1 cStringUsingEncoding:1], "%02x%02x%02x%02x", &v31 + 4, &v31, &v30 + 4, &v30);
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          v22 = sub_100023C24();
          v23 = SHIDWORD(v31) / 255.0;
          v24 = v31 / 255.0;
          v25 = SHIDWORD(v30) / 255.0;
          v26 = 1.0;
        }

        else
        {
          if (v18 != 4)
          {
            goto LABEL_34;
          }

          v22 = sub_100023C24();
          v23 = SHIDWORD(v31) / 255.0;
          v24 = v31 / 255.0;
          v25 = SHIDWORD(v30) / 255.0;
          v26 = v30 / 255.0;
        }

        v27 = [v22 colorWithRed:v23 green:v24 blue:v25 alpha:v26];
LABEL_33:
        v16 = v27;
        if (v27)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      if (v18 == 1)
      {
        v19 = sub_100023C24();
        v20 = SHIDWORD(v31) / 255.0;
        v21 = 1.0;
        goto LABEL_30;
      }

      if (v18 == 2)
      {
        v19 = sub_100023C24();
        v20 = SHIDWORD(v31) / 255.0;
        v21 = v31 / 255.0;
LABEL_30:
        v27 = [v19 colorWithWhite:v20 alpha:v21];
        goto LABEL_33;
      }
    }

LABEL_34:
    v28 = wk_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10002AC8C();
    }

    v16 = 0;
  }

LABEL_37:

  return v16;
}

id sub_100023C24()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100051DF0;
  v7 = qword_100051DF0;
  if (!qword_100051DF0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100024380;
    v3[3] = &unk_100045AB0;
    v3[4] = &v4;
    sub_100024380(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100023CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002405C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024098(id a1)
{
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0))
  {
    byte_100051DD8 = 1;
    qword_100051DD0 = CFPreferencesGetAppIntegerValue(@"FProgramNumber", @"com.apple.demo-settings", 0);
  }

  v1 = wk_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446978;
    v3 = "DemoProgramNumber_block_invoke";
    v4 = 1024;
    v5 = 234;
    v6 = 1024;
    v7 = byte_100051DD8;
    v8 = 1024;
    v9 = qword_100051DD0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Demo mode enabled = %d, Demo program number = %d", &v2, 0x1Eu);
  }
}

void sub_1000241B8(uint64_t a1)
{
  sub_100024210();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIApplication");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100051DE0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10002AD1C();
    sub_100024210();
  }
}

void sub_100024210()
{
  v1[0] = 0;
  if (!qword_100051DE8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10002430C;
    v1[4] = &unk_100045AE8;
    v1[5] = v1;
    v2 = off_100046388;
    v3 = 0;
    qword_100051DE8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100051DE8)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10002430C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100051DE8 = result;
  return result;
}

void sub_100024380(uint64_t a1)
{
  sub_100024210();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIColor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100051DF0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_10002AD44();
    sub_1000243D8(v2);
  }
}

Class sub_1000243F4(uint64_t a1)
{
  sub_100024210();
  result = objc_getClass("UIFont");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100051E00 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10002AD6C();
    return sub_10002444C(v3);
  }

  return result;
}

void sub_10002444C(uint64_t a1)
{
  sub_100024210();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIFontDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100051E08 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10002AD94();
    sub_1000244A4();
  }
}

id wk_default_log()
{
  if (qword_100051E18 != -1)
  {
    sub_10002ADBC();
  }

  v1 = qword_100051E10;

  return v1;
}

void sub_100024500(id a1)
{
  qword_100051E10 = os_log_create("com.apple.watchkit", "default");

  _objc_release_x1();
}

id wk_extension_loading_log()
{
  if (qword_100051E28 != -1)
  {
    sub_10002ADD0();
  }

  v1 = qword_100051E20;

  return v1;
}

void sub_100024588(id a1)
{
  qword_100051E20 = os_log_create("com.apple.watchkit", "extension_loading");

  _objc_release_x1();
}

id wk_bg_app_refresh_log()
{
  if (qword_100051E38 != -1)
  {
    sub_10002ADE4();
  }

  v1 = qword_100051E30;

  return v1;
}

void sub_100024610(id a1)
{
  qword_100051E30 = os_log_create("com.apple.watchkit", "bg_app_refresh");

  _objc_release_x1();
}

void sub_1000246F0(id a1)
{
  qword_100051E48 = objc_alloc_init(SPGizmoCacheManager);

  _objc_release_x1();
}

void sub_100024770(id a1)
{
  v1 = NSHomeDirectory();
  v9[0] = v1;
  v9[1] = @"/Library/Caches/";
  v9[2] = @"com.apple.watchkit.imagecache";
  v2 = [NSArray arrayWithObjects:v9 count:3];

  v3 = [NSString pathWithComponents:v2];
  v4 = qword_100051E50;
  qword_100051E50 = v3;

  v5 = +[NSFileManager defaultManager];
  v8 = 0;
  [v5 createDirectoryAtPath:qword_100051E50 withIntermediateDirectories:1 attributes:0 error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002AE20();
    }
  }
}

void sub_1000260C8(uint64_t a1)
{
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136446722;
    v26 = "[SPGizmoCacheManager setupCacheWithIdentifier:completion:]_block_invoke";
    v27 = 1024;
    v28 = 247;
    v29 = 2114;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@", buf, 0x1Cu);
  }

  v4 = [*(a1 + 40) cacheDirectoryWithCacheIdentifier:*(a1 + 32) cacheType:1];
  v5 = [*(a1 + 40) cacheAssets:v4 cacheType:1 cacheIdentifier:*(a1 + 32)];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [*(a1 + 40) cacheDirectoryWithCacheIdentifier:*(a1 + 32) cacheType:2];
    v8 = [*(a1 + 40) cacheAssets:v7 cacheType:2 cacheIdentifier:*(a1 + 32)];
    if (v8)
    {
      v9 = objc_opt_new();
      [v9 setCacheIdentifier:*(a1 + 32)];
      [v9 setPermanentCache:v5];
      [v9 setTransientCache:v8];
      if (*(a1 + 48))
      {
        v10 = wk_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10002B284();
        }
      }

      else
      {
        v16 = *(a1 + 40);
        v19[0] = @"cmsg";
        v19[1] = @"s";
        v20[0] = &off_10004ACE0;
        v20[1] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
        [v16 sendCacheReply:v10 cacheIdentifier:*(a1 + 32)];
      }

      v17 = wk_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 136446722;
        v26 = "[SPGizmoCacheManager setupCacheWithIdentifier:completion:]_block_invoke";
        v27 = 1024;
        v28 = 276;
        v29 = 2114;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: done, cache id: %{public}@", buf, 0x1Cu);
      }
    }

    else
    {
      v21[0] = @"cmsg";
      v21[1] = @"e";
      v13 = *(a1 + 40);
      v22[0] = &off_10004ACE0;
      v22[1] = &off_10004AC80;
      v21[2] = @"t";
      v22[2] = &off_10004AD10;
      v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
      [v13 sendCacheReply:v14 cacheIdentifier:*(a1 + 32)];

      v9 = wk_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 136446722;
        v26 = "[SPGizmoCacheManager setupCacheWithIdentifier:completion:]_block_invoke";
        v27 = 1024;
        v28 = 261;
        v29 = 2114;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: error, transCache == nil, cache id: %{public}@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v23[0] = @"cmsg";
    v23[1] = @"e";
    v24[0] = &off_10004ACE0;
    v24[1] = &off_10004AC80;
    v23[2] = @"t";
    v24[2] = &off_10004ACF8;
    v11 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
    [v6 sendCacheReply:v11 cacheIdentifier:*(a1 + 32)];

    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 136446722;
      v26 = "[SPGizmoCacheManager setupCacheWithIdentifier:completion:]_block_invoke";
      v27 = 1024;
      v28 = 253;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: error, permCache == nil, cache id: %{public}@", buf, 0x1Cu);
    }
  }
}

void sub_100026FC8(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 objectForKeyedSubscript:&off_10004AC80];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = wk_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10002B48C();
    }
  }
}

void sub_100027A30(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 objectForKeyedSubscript:@"title"];
  v4 = [v12 objectForKeyedSubscript:@"identifier"];
  v5 = [v12 objectForKeyedSubscript:@"behavior"];
  v6 = [BBAction actionWithIdentifier:v4 title:v3];
  v7 = [v12 objectForKeyedSubscript:@"destructive"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [BBAppearance appearanceWithTitle:v3];
    [v9 setStyle:1];
    [v6 setAppearance:v9];
  }

  v10 = [v12 objectForKeyedSubscript:@"background"];
  v11 = [v10 BOOLValue];

  [v6 setActivationMode:v11];
  if (v5)
  {
    [v6 setBehavior:{objc_msgSend(v5, "isEqualToString:", @"textInput"}];
  }

  [*(a1 + 32) addObject:v6];
}

uint64_t sub_100027BB0(uint64_t a1, int a2)
{
  v4 = wk_default_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[SPCompanionNotificationHandler injectBulletinWithSectionID:gizmoAppIdentifier:bulletinID:remoteNotificationContext:forceStatic:completion:]_block_invoke";
      v9 = 1024;
      v10 = 148;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: [BLTTestService addBulletin:::::] reported success", &v7, 0x12u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002B5AC(v5);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100027CF0(id a1)
{
  qword_100051E68 = objc_alloc_init(SPCompanionNotificationHandler);

  _objc_release_x1();
}

Class sub_100027D70(uint64_t a1)
{
  sub_100027DC8();
  result = objc_getClass("BBBulletinRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10002B654();
  }

  qword_100051E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100027DC8()
{
  v3[0] = 0;
  if (!qword_100051E78)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100027EC8;
    v3[4] = &unk_100045AE8;
    v3[5] = v3;
    v4 = off_1000464E8;
    v5 = 0;
    qword_100051E78 = _sl_dlopen();
  }

  v0 = qword_100051E78;
  v1 = v3[0];
  if (!qword_100051E78)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100027EC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100051E78 = result;
  return result;
}

Class sub_100027F3C(uint64_t a1)
{
  sub_100027F94();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10002B67C();
  }

  qword_100051E80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100027F94()
{
  v1[0] = 0;
  if (!qword_100051E88)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100028090;
    v1[4] = &unk_100045AE8;
    v1[5] = v1;
    v2 = off_100046500;
    v3 = 0;
    qword_100051E88 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100051E88)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100028090(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100051E88 = result;
  return result;
}

Class sub_100028104(uint64_t a1)
{
  sub_100027F94();
  result = objc_getClass("UNNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10002B6A4();
  }

  qword_100051E90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002815C(uint64_t a1)
{
  v2 = sub_100027DC8();
  result = dlsym(v2, "BLTBulletinContextArchivedUserNotificationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100051E98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000281AC(uint64_t a1)
{
  sub_100027DC8();
  result = objc_getClass("BLTTestService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10002B6CC();
  }

  qword_100051EA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10002838C()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028410()
{
  sub_100014EF4();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10002849C(uint64_t a1, void *a2)
{
  [a2 processIdentifier];
  sub_100014EF4();
  sub_100014FB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

uint64_t sub_10002854C()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100028570(v0);
}

void sub_100028570()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000285F4()
{
  sub_100014EF4();
  sub_100014F04();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100028678()
{
  sub_100014EF4();
  sub_100014F68();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_1000286FC()
{
  sub_100014EF4();
  sub_100014F68();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_100028780()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028804(uint64_t *a1)
{
  sub_100014FAC(a1, __stack_chk_guard);
  sub_100014F2C();
  sub_100014F18();
  sub_100014F3C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100028888(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = 136446978;
  sub_100014F2C();
  sub_100014F18();
  sub_100014F48(&_mh_execute_header, v2, v3, "%{public}s:%d: ERROR: App extension not active:%{public}@ %p", v4);
}

void sub_100028914(uint64_t *a1)
{
  sub_100014FAC(a1, __stack_chk_guard);
  v3 = 136446978;
  sub_100014F2C();
  sub_100014F18();
  sub_100014F48(&_mh_execute_header, v1, v2, "%{public}s:%d: ERROR: App extension not active: sending SPExtensionTerminatedCommand: %{public}@ %p", v3);
}

void sub_10002899C(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100014F2C();
  sub_100014F18();
  sub_100014F3C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100028A4C()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028AD0()
{
  objc_opt_class();
  sub_100014EF4();
  sub_100014F04();
  v1 = v0;
  sub_100014FB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_100028B7C()
{
  sub_100014EF4();
  sub_100014F04();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100028C00(uint64_t *a1)
{
  sub_100014FAC(a1, __stack_chk_guard);
  v2 = *v1 + 1;
  v5 = 136446978;
  sub_100014FC8();
  sub_100014F8C();
  sub_100014F48(&_mh_execute_header, v3, v4, "%{public}s:%d: [ACXDeviceConnection fetchApplicationWithContainingApplicationBundleID:completion:] returned error %{public}@ after %lu tries. treating it as fatal", v5);
}

void sub_100028C84(uint64_t *a1)
{
  sub_100014FAC(a1, __stack_chk_guard);
  sub_100014F2C();
  sub_100014F18();
  sub_100014F3C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100028D08(uint64_t *a1)
{
  sub_100014FAC(a1, __stack_chk_guard);
  v2 = 5 - *v1;
  v5 = 136446978;
  sub_100014FC8();
  sub_100014F8C();
  sub_100014F48(&_mh_execute_header, v3, v4, "%{public}s:%d: [ACXDeviceConnection fetchApplicationWithContainingApplicationBundleID:completion:] returned %{public}@. will try %lu more times.", v5);
}

void sub_100028D90(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_100014F2C();
  sub_100014F18();
  sub_100014F3C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100028E18(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100014EF4();
  sub_100014F04();
  sub_100014FB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100028EB8()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028F3C()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028FC0()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100029044(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = [a1 logDictionary:a2];
  *v6 = 136446723;
  sub_100014EF4();
  *&v6[7] = 1366;
  v6[9] = 2113;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%{public}s:%d: ComD:<-IDS dictionary=%{private}@", v6, 0x1Cu);
}

void sub_1000290FC()
{
  sub_100014EF4();
  sub_100014F04();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100029180()
{
  sub_100014EF4();
  sub_100014F04();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100029204()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100029288(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100014F2C();
  sub_100014F18();
  sub_100014F3C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100029310()
{
  sub_100014EF4();
  sub_100014F04();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100029394()
{
  sub_100014EF4();
  sub_100014F04();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100029418(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  sub_100014FC8();
  sub_100014F3C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000294CC()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100029550()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000295D4()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100029658(uint64_t *a1)
{
  sub_100014FAC(a1, __stack_chk_guard);
  sub_100014F2C();
  sub_100014F3C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_1000296F8()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100029790()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100029814()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000298C0(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4[0] = 136446722;
  sub_100014EF4();
  sub_100014F04();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s:%d: Unable to setup extension context - error: %{public}@", v4, 0x1Cu);
}

void sub_10002997C()
{
  sub_100014EF4();
  sub_100014F04();
  sub_10001C85C(&_mh_execute_header, v0, v1, "%{public}s:%d: Got errors %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000299F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v5 = 136446978;
  sub_100014F2C();
  sub_10001C878();
  sub_100014F48(&_mh_execute_header, v3, v4, "%{public}s:%d: Got error %{public}@ shutting down old plugin for %{public}@", v5);
}

void sub_100029A84()
{
  sub_100014EF4();
  sub_100014F04();
  sub_10001C85C(&_mh_execute_header, v0, v1, "%{public}s:%d: plugin from dict %{public}@ is nil. this shouldn't happen!", v2, v3, v4, v5, 2u);
}

void sub_100029B14(uint64_t *a1)
{
  v1 = *a1;
  *v4 = 136446978;
  sub_100014F2C();
  *&v4[7] = 409;
  v4[9] = 2048;
  v5 = 0x4024000000000000;
  v6 = 2114;
  v7 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%d: * * * After %1.1f secs, beginUsing: hasn't called us back for plugin with beginUsingInstanceUUID %{public}@", v4, 0x26u);
}

void sub_100029BBC()
{
  sub_100014EF4();
  sub_100014F04();
  sub_10001C85C(&_mh_execute_header, v0, v1, "%{public}s:%d: [SPSharedApplicationManager pluginIdentifierForProtocolIdentifier:] return nil for %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100029C38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136446978;
  sub_100014F2C();
  sub_10001C878();
  sub_100014F48(&_mh_execute_header, v2, v3, "%{public}s:%d: Unable to locate plugin for '%{public}@' (%{public}@)", v4);
}

void sub_100029CC4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 48) identifier];
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = 136447490;
  v10 = "[SPApplicationManager getOrBeginActivePlugInForApplication:setupBlock:completion:]_block_invoke";
  v11 = 1024;
  v12 = 492;
  v13 = 2114;
  v14 = v6;
  v15 = 2048;
  v16 = v7;
  v17 = 2114;
  v18 = v8;
  v19 = 2114;
  v20 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}s:%d: Unable to start plugin %{public}@ %p with identifier %{public}@ (%{public}@)", &v9, 0x3Au);
}

void sub_100029DB4()
{
  sub_100014EF4();
  sub_100014F04();
  sub_10001C85C(&_mh_execute_header, v0, v1, "%{public}s:%d: Failed to retrieve the list of installed applications. Error = %{public}@", v2, v3, v4, v5, 2u);
}

void sub_100029E30()
{
  sub_100014F2C();
  sub_10001C878();
  sub_10001C85C(&_mh_execute_header, v0, v1, "%{public}s:%d: gizmoApplicationState is an unexpected value. duetSessionDictionary=%{public}@", v2, v3, v4, v5, 2u);
}

void sub_100029EC0()
{
  v1[0] = 136446466;
  sub_100014EF4();
  *(&v1[3] + 2) = 730;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s:%d: Passed a nil duetSessionDictionary. This shouldn't have happened", v1, 0x12u);
}

void sub_100029FB0()
{
  sub_100014EF4();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002A040()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A0C4()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A148()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A1CC()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A250()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A2D4(void *a1, NSObject *a2)
{
  v4 = spUtils_machTimeString();
  v5 = [a1 data];
  [v5 length];
  *v8 = 136446978;
  sub_100014EF4();
  *&v8[7] = 577;
  v8[9] = 2114;
  v9 = v4;
  v10 = v6;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s:%d: # # # # %{public}@ size=%d", v8, 0x22u);
}

void sub_10002A3B8()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A43C()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A4C0()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A544()
{
  sub_100014EE0();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A5C8(void *a1, NSObject *a2)
{
  v4 = spUtils_machTimeString();
  v5 = [a1 data];
  [v5 length];
  *v8 = 136446978;
  sub_100014EF4();
  *&v8[7] = 702;
  v8[9] = 2114;
  v9 = v4;
  v10 = v6;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s:%d: # # # # %{public}@ size=%d", v8, 0x22u);
}

void sub_10002A6A8()
{
  sub_100014EF4();
  sub_100022930();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002A730()
{
  sub_100014EF4();
  sub_100022930();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_10002A7C8()
{
  sub_100014EF4();
  sub_100022930();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002A858()
{
  sub_100014EF4();
  sub_100022930();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_10002A8EC(os_log_t log)
{
  v1 = 136446466;
  v2 = "+[SPIDSProtobuf protobufWithSPPlist:identifier:]";
  v3 = 1024;
  v4 = 33;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s:%d: failed to serialize spList", &v1, 0x12u);
}

void sub_10002A994(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = +[NSFileManager defaultManager];
  [v6 fileExistsAtPath:a2];
  *v9 = 136447234;
  sub_100014EF4();
  *&v9[7] = 157;
  v9[9] = 2114;
  v10 = a1;
  v11 = 2114;
  v12 = a2;
  v13 = v7;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}s:%d: Failed to localize key %{public}@ in bundle at %{public}@. bundleExists=%d", v9, 0x2Cu);
}

void sub_10002AA8C()
{
  sub_1000244A4();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void sub_10002AB20()
{
  sub_1000244A4();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void sub_10002ABF0()
{
  sub_100014EF4();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002AC8C()
{
  sub_100014EF4();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002AEC8()
{
  sub_100014EF4();
  sub_100014F04();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002AF4C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 assetKey];
  *v7 = 136446978;
  sub_100014EF4();
  *&v7[7] = 134;
  v7[9] = 2114;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}s:%d: image not found for cache id: %{public}@, asset key: %{public}@", v7, 0x26u);
}

void sub_10002B018()
{
  v2 = 136446978;
  sub_100014EF4();
  sub_100027088();
  sub_100014F48(&_mh_execute_header, v0, v1, "%{public}s:%d: failed to delete asset at: %{public}@, error: %{public}@", v2);
}

void sub_10002B094()
{
  v2 = 136446978;
  sub_100014EF4();
  sub_100027088();
  sub_100014F48(&_mh_execute_header, v0, v1, "%{public}s:%d: failed to write asset at: %{public}@, error: %{public}@", v2);
}

void sub_10002B110()
{
  v2 = 136446978;
  sub_100014EF4();
  sub_100027088();
  sub_100014F48(&_mh_execute_header, v0, v1, "%{public}s:%d: failed to write asset at: %{public}@, error: %{public}@", v2);
}

void sub_10002B18C()
{
  v2 = 136446978;
  sub_100014EF4();
  sub_100027088();
  sub_100014F48(&_mh_execute_header, v0, v1, "%{public}s:%d: failed to delete asset at: %{public}@, error: %{public}@", v2);
}

void sub_10002B208()
{
  v2 = 136446978;
  sub_100014EF4();
  sub_100027088();
  sub_100014F48(&_mh_execute_header, v0, v1, "%{public}s:%d: failed to delete asset at: %{public}@, error: %{public}@", v2);
}

void sub_10002B284()
{
  sub_100014EF4();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002B30C()
{
  v2 = 136446978;
  sub_100014EF4();
  sub_100027088();
  sub_100014F48(&_mh_execute_header, v0, v1, "%{public}s:%d: failed to create directory at: %{public}@, error: %{public}@", v2);
}

void sub_10002B388()
{
  v2 = 136446978;
  sub_100014EF4();
  sub_100027088();
  sub_100014F48(&_mh_execute_header, v0, v1, "%{public}s:%d: contentsOfDirectoryAtURL failed at: %{public}@, error: %{public}@", v2);
}

void sub_10002B404()
{
  sub_100014EF4();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002B48C()
{
  sub_100014EF4();
  sub_100014F04();
  sub_100014F3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002B510(uint64_t a1, NSObject *a2)
{
  v2 = 136446722;
  v3 = "[SPCompanionNotificationHandler injectBulletinWithSectionID:gizmoAppIdentifier:bulletinID:remoteNotificationContext:forceStatic:completion:]";
  v4 = 1024;
  v5 = 72;
  v6 = 2114;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s:%d: Failed to archive a UNNotification: %{public}@", &v2, 0x1Cu);
}

void sub_10002B5AC(os_log_t log)
{
  v1 = 136446466;
  v2 = "[SPCompanionNotificationHandler injectBulletinWithSectionID:gizmoAppIdentifier:bulletinID:remoteNotificationContext:forceStatic:completion:]_block_invoke";
  v3 = 1024;
  v4 = 150;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s:%d: [BLTTestService addBulletin:::::] reported failure", &v1, 0x12u);
}