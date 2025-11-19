id sub_100001C00()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1000235D4(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    sub_1000235B4();

    swift_willThrow();
  }
}

uint64_t sub_100001D20()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[6];
  v14 = v0[5];
  sub_100001C00();
  v1(v4, v7);

  v10 = v0[1];
  v12 = v0[20];
  v11 = v0[21];

  return v10(v11, v12);
}

uint64_t sub_100001E04(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 16);
  v9 = *v3;
  *(*v3 + 24) = v2;

  if (v2)
  {
    v7 = sub_100016F7C;
  }

  else
  {
    sub_100001F34(a1, a2);
    v7 = sub_100001F88;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100001F34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100001F88()
{
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000238C4();
  sub_10000209C(v1, qword_10003C8F0);
  v2 = sub_1000238A4();
  v3 = sub_100023A94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Warmed up BlastDoor interface", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000209C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000020D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000021CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000022C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100014304(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002324(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100019030(a1, &a1[a2]);
  }

  v3 = sub_100023594();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_100023584();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_100023624();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000023D4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000240C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002458()
{
  v1 = sub_100014304(&qword_10003C730, &qword_1000285D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000024EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_100001F34(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002534()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002574()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000025C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000029F8(uint64_t a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v22 = PBReaderReadString();
        v23 = *(a1 + 32);
        *(a1 + 32) = v22;

        goto LABEL_55;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(LiveLookupIcon);
      objc_storeStrong((a1 + 16), v14);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100004F44(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v33[0] & 0x7F) << v24;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v26;
      }

LABEL_53:
      v30 = 8;
      goto LABEL_54;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v33[0] & 0x7F) << v15;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_49:
      v30 = 24;
LABEL_54:
      *(a1 + v30) = v21;
      goto LABEL_55;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

void sub_100003780(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1000037C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003884;
    v7[3] = &unk_100034A68;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void sub_100003884(uint64_t a1)
{
  v2 = sub_100005CC4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request with requestIdentifier %@ completed", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) extension];

  if (v4)
  {
    [*(a1 + 40) setExtension:0];
    v5 = [*(a1 + 40) completionHandler];
    v5[2](v5, 0);

    [*(a1 + 40) setCompletionHandler:0];
  }
}

void sub_100003980(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003A64;
    block[3] = &unk_100034AB8;
    v11 = v5;
    v12 = v6;
    v13 = v8;
    dispatch_async(v9, block);
  }
}

void sub_100003A64(uint64_t a1)
{
  v2 = sub_100005CC4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request with requestIdentifier %@ was cancelled. Error: %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 48) extension];

  if (v5)
  {
    [*(a1 + 48) setExtension:0];
    v6 = [*(a1 + 48) completionHandler];
    v7 = [*(a1 + 48) hostCancellationError];
    v8 = v7;
    if (!v7)
    {
      v8 = *(a1 + 40);
    }

    (v6)[2](v6, v8);

    [*(a1 + 48) setCompletionHandler:0];
  }
}

void sub_100003B94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003C58;
    v7[3] = &unk_100034A68;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void sub_100003C58(uint64_t a1)
{
  v2 = sub_100005CC4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000211D8(a1, v2);
  }

  v3 = [*(a1 + 40) extension];

  if (v3)
  {
    [*(a1 + 40) setExtension:0];
    v4 = [NSError cx_callDirectoryManagerErrorWithCode:2];
    v5 = [*(a1 + 40) completionHandler];
    (v5)[2](v5, v4);

    [*(a1 + 40) setCompletionHandler:0];
  }
}

void sub_100003D1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003DF8;
  block[3] = &unk_100034AB8;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_100003DF8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_100005CC4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100021254(a1, v2, v3);
    }

    v4 = [*(a1 + 40) extension];

    if (v4)
    {
      [*(a1 + 40) setExtension:0];
      v5 = [*(a1 + 40) completionHandler];
      v5[2](v5, *(a1 + 32));

      [*(a1 + 40) setCompletionHandler:0];
    }
  }

  else
  {
    [*(a1 + 40) setRequestIdentifier:*(a1 + 48)];
    v6 = [*(a1 + 40) extension];
    v7 = [v6 _extensionContextForUUID:*(a1 + 48)];
    [*(a1 + 40) setContext:v7];

    v8 = *(a1 + 40);
    v9 = [v8 context];
    [v9 setDelegate:v8];

    v10 = [*(a1 + 40) context];
    [v10 activate];
  }
}

void sub_100004268(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v5 = 0;
  [v2 extensionDataRequest:v3 isIncrementalLoadingAllowedWithError:&v5];
  v4 = v5;

  if (v4)
  {
    [*(a1 + 32) _cancelWithError:v4];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000043D0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v2 extensionDataRequest:v3 addedBlockingEntryData:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100004530(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v2 extensionDataRequest:v3 removedBlockingEntryData:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000466C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v6 = 0;
  v4 = [v2 extensionDataRequest:v3 removedAllBlockingEntriesWithError:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000047CC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v2 extensionDataRequest:v3 addedIdentificationEntryData:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000492C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v2 extensionDataRequest:v3 removedIdentificationEntryData:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100004A68(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v6 = 0;
  v4 = [v2 extensionDataRequest:v3 removedAllIdentificationEntriesWithError:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v5];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100004F44(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000565C(uint64_t a1)
{
  v2 = [[AWDServerConnection alloc] initWithComponentId:80 andBlockOnConfiguration:1];
  [*(a1 + 32) setServerConnection:v2];
}

AWDCXCallDirectoryChanged *sub_100005770(uint64_t a1)
{
  v2 = objc_alloc_init(AWDCXCallDirectoryChanged);
  [(AWDCXCallDirectoryChanged *)v2 setTotalBlockedHandles:*(a1 + 40)];
  [(AWDCXCallDirectoryChanged *)v2 setTotalIdentifiedHandles:*(a1 + 48)];
  [(AWDCXCallDirectoryChanged *)v2 setIsEnabled:1];
  [(AWDCXCallDirectoryChanged *)v2 setProviderBundleId:*(a1 + 32)];
  if (*(a1 + 40) >> 31)
  {
    v3 = sub_100005CC4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Number of blocking entries (%ld) greater than INT_MAX", &v8, 0xCu);
    }
  }

  if (*(a1 + 48) >> 31)
  {
    v5 = sub_100005CC4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Number of identification entries (%ld) greater than INT_MAX", &v8, 0xCu);
    }
  }

  return v2;
}

AWDCXCallDirectoryChanged *sub_100005980(uint64_t a1)
{
  v2 = objc_alloc_init(AWDCXCallDirectoryChanged);
  [(AWDCXCallDirectoryChanged *)v2 setProviderBundleId:*(a1 + 32)];
  [(AWDCXCallDirectoryChanged *)v2 setIsEnabled:*(a1 + 40)];

  return v2;
}

void sub_100005A94(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConnection];
  v3 = [v2 newMetricContainerWithIdentifier:*(a1 + 48)];

  v4 = sub_100005CC4();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 48);
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got metric container for metricId=%lu", &v9, 0xCu);
    }

    v7 = (*(*(a1 + 40) + 16))();
    [v3 setMetric:v7];

    v4 = [*(a1 + 32) serverConnection];
    [v4 submitMetric:v3];
  }

  else if (v5)
  {
    v8 = *(a1 + 48);
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping reporting for metricId=%lu since no metric container was provided", &v9, 0xCu);
  }
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(CDXManager);
  v2 = +[NSXPCListener serviceListener];
  [v2 setDelegate:v1];
  [v2 resume];

  objc_autoreleasePoolPop(v0);
  exit(1);
}

id sub_100005CC4()
{
  if (qword_10003C7E8[0] != -1)
  {
    sub_1000212E4();
  }

  v1 = qword_10003C7E0;

  return v1;
}

void sub_100005D08(id a1)
{
  qword_10003C7E0 = os_log_create("com.apple.calls.calldirectory", "Default");

  _objc_release_x1();
}

void sub_100005FD0(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionsDataSource];
  v96 = 0;
  v3 = [v2 installedExtensionsWithError:&v96];
  v4 = v96;

  v5 = sub_100005CC4();
  v6 = v5;
  if (v3)
  {
    v77 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000212F8();
    }

    v74 = a1;

    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    v92 = 0u;
    v69 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v92 objects:v99 count:16];
    if (v8)
    {
      v9 = v8;
      v79 = 0;
      v10 = 0;
      v11 = *v93;
      v12 = CXLiveLookupExtensionPointIdentifier;
      v70 = CXLiveLookupExtensionPointIdentifier;
      v72 = v7;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v93 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v92 + 1) + 8 * i);
          v15 = [v14 extensionPointIdentifier];
          v16 = [v15 isEqualToString:v12];

          if (v16)
          {
            v17 = [v14 identifier];
            if (v17 && (v18 = v17, [v14 identifier], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v18, v20))
            {
              v75 = v10;
              if (!v79)
              {
                v79 = objc_alloc_init(NSMutableArray);
              }

              v21 = [LSApplicationRecord alloc];
              v22 = [v14 _plugIn];
              v23 = [v22 containingUrl];
              v91 = v77;
              v24 = 1;
              v25 = [v21 initWithURL:v23 allowPlaceholder:1 error:&v91];
              v26 = v91;

              if (v25)
              {
                v24 = [v25 isAppStoreVendable];
              }

              v27 = [*(v74 + 32) liveLookupStore];
              v28 = [v14 identifier];
              v29 = [v27 extensionUpdateFor:v28 isAppStorVendable:v24];
              [v79 addObject:v29];

              v77 = v26;
              v10 = v75;
              v12 = v70;
              v7 = v72;
            }

            else
            {
              v25 = sub_100005CC4();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v98 = v14;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "extension %@ has no bundle identifier", buf, 0xCu);
              }
            }
          }

          else
          {
            if (!v10)
            {
              v10 = +[NSMutableSet set];
            }

            v25 = [v14 identifier];
            [v10 addObject:v25];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v92 objects:v99 count:16];
      }

      while (v9);
    }

    else
    {
      v79 = 0;
      v10 = 0;
    }

    v30 = [*(v74 + 32) afterFirstUnlock];
    v31 = sub_100005CC4();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      v33 = v77;
      if (v32)
      {
        sub_1000213A4();
      }

      v31 = [*(v74 + 32) liveLookupStore];
      [v31 updateExtensionsWith:v79];
    }

    else
    {
      v33 = v77;
      if (v32)
      {
        sub_100021360(v31);
      }
    }

    v34 = *(v74 + 32);
    v90 = v33;
    v35 = [v34 storedExtensionIdentifiersWithError:&v90];
    v36 = v90;

    v37 = sub_100005CC4();
    v38 = v37;
    if (v35)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_10002140C();
      }

      v39 = *(v74 + 32);
      v89 = v36;
      v40 = [v39 enabledStoredExtensionIdentifiersWithError:&v89];
      v41 = v89;

      v42 = sub_100005CC4();
      v43 = v42;
      if (v40)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          sub_100021474();
        }

        v44 = *(v74 + 32);
        v88 = v41;
        v45 = [v44 disabledStoredExtensionIdentifiersWithError:&v88];
        v46 = v88;

        v47 = sub_100005CC4();
        v48 = v47;
        if (v45)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            sub_1000214DC();
          }

          v49 = *(v74 + 32);
          v87 = v46;
          v50 = [v49 unavailableStoredExtensionIdentifiersWithError:&v87];
          v51 = v87;

          v52 = sub_100005CC4();
          v53 = v52;
          if (v50)
          {
            v76 = v51;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              sub_100021544();
            }

            v54 = [v10 mutableCopy];
            [v54 minusSet:v35];
            v55 = [v10 mutableCopy];
            [v55 intersectSet:v50];
            v56 = [v40 mutableCopy];
            [v56 minusSet:v10];
            v57 = [v45 mutableCopy];
            [v57 minusSet:v10];
            v78 = v45;
            v58 = ![v54 count] && !objc_msgSend(v55, "count") && !objc_msgSend(v56, "count") && objc_msgSend(v57, "count") == 0;
            v81[0] = _NSConcreteStackBlock;
            v81[1] = 3221225472;
            v81[2] = sub_100006874;
            v81[3] = &unk_100034C88;
            v59 = v54;
            v60 = *(v74 + 32);
            v73 = v59;
            v82 = v59;
            v83 = v60;
            v71 = v55;
            v84 = v71;
            v61 = v56;
            v85 = v61;
            v62 = v57;
            v86 = v62;
            v63 = objc_retainBlock(v81);
            if (v58)
            {
              v51 = v76;
              v45 = v78;
            }

            else
            {
              v64 = [*(v74 + 32) store];
              v80 = v76;
              [v64 performTransactionWithBlock:v63 error:&v80];
              v65 = v50;
              v66 = v10;
              v67 = v80;

              v68 = v67;
              v10 = v66;
              v50 = v65;
              v51 = v68;
              v45 = v78;
            }

            (*(*(v74 + 40) + 16))();
            [*(v74 + 32) setCachedCallDirectoryStoreExtensions:0];
          }

          else
          {
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              sub_1000215AC();
            }

            (*(*(v74 + 40) + 16))();
          }

          v46 = v51;
        }

        else
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_100021614();
          }

          (*(*(v74 + 40) + 16))();
        }

        v41 = v46;
      }

      else
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10002167C();
        }

        (*(*(v74 + 40) + 16))();
      }

      v36 = v41;
    }

    else
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000216E4();
      }

      (*(*(v74 + 40) + 16))();
    }

    v4 = v36;
    v3 = v69;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002174C();
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100006874(id *a1, void *a2, void *a3)
{
  v63 = a2;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v86;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v86 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v85 + 1) + 8 * v8);
        v11 = sub_100005CC4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v92 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding extension with identifier %@", buf, 0xCu);
        }

        v12 = [a1[5] store];
        v84 = v9;
        v13 = [v12 addExtensionWithIdentifier:v10 error:&v84];
        v6 = v84;

        if (v13 == -1)
        {
          v14 = sub_100005CC4();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v58 = [a1[5] store];
            *buf = 138412802;
            v92 = v10;
            v93 = 2112;
            v94 = v58;
            v95 = 2112;
            v96 = v6;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error adding extension with identifier %@ into store %@: %@", buf, 0x20u);
          }

          v15 = v63;
          if (a3)
          {
            v16 = v6;
            *a3 = v6;
          }

          v83 = 0;
          v17 = (*(v63 + 2))(v63, &v83);
          v18 = v83;
          if ((v17 & 1) == 0)
          {
            v19 = sub_100005CC4();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_1000217B4();
            }

LABEL_72:
          }

          goto LABEL_73;
        }

        v8 = v8 + 1;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = a1[6];
  v20 = [obj countByEnumeratingWithState:&v79 objects:v99 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v80;
LABEL_22:
    v23 = 0;
    v24 = v6;
    while (1)
    {
      if (*v80 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v79 + 1) + 8 * v23);
      v26 = sub_100005CC4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v92 = 4;
        v93 = 2112;
        v94 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Changing state to %ld for extension with identifier %@", buf, 0x16u);
      }

      v27 = [a1[5] store];
      v78 = v24;
      v28 = [v27 setState:4 forExtensionWithIdentifier:v25 error:&v78];
      v6 = v78;

      if ((v28 & 1) == 0)
      {
        break;
      }

      v23 = v23 + 1;
      v24 = v6;
      if (v21 == v23)
      {
        v21 = [obj countByEnumeratingWithState:&v79 objects:v99 count:16];
        if (v21)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }
    }

    v48 = sub_100005CC4();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v59 = [a1[5] store];
      *buf = 134218754;
      v92 = 4;
      v93 = 2112;
      v94 = v25;
      v95 = 2112;
      v96 = v59;
      v97 = 2112;
      v98 = v6;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error changing state to %ld for extension with identifier %@ from store %@: %@", buf, 0x2Au);
    }

    v15 = v63;
    if (a3)
    {
      v49 = v6;
      *a3 = v6;
    }

    v77 = 0;
    v50 = (*(v63 + 2))(v63, &v77);
    v18 = v77;
    if ((v50 & 1) == 0)
    {
      v19 = sub_100005CC4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000217B4();
      }

      goto LABEL_72;
    }

    goto LABEL_73;
  }

LABEL_30:

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = a1[7];
  v29 = [obj countByEnumeratingWithState:&v73 objects:v90 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v74;
LABEL_32:
    v32 = 0;
    v33 = v6;
    while (1)
    {
      if (*v74 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v73 + 1) + 8 * v32);
      v35 = sub_100005CC4();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v92 = 5;
        v93 = 2112;
        v94 = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Changing state to %ld for extension with identifier %@", buf, 0x16u);
      }

      v36 = [a1[5] store];
      v72 = v33;
      v37 = [v36 setState:5 forExtensionWithIdentifier:v34 error:&v72];
      v6 = v72;

      if ((v37 & 1) == 0)
      {
        break;
      }

      v32 = v32 + 1;
      v33 = v6;
      if (v30 == v32)
      {
        v30 = [obj countByEnumeratingWithState:&v73 objects:v90 count:16];
        if (v30)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    v51 = sub_100005CC4();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v60 = [a1[5] store];
      *buf = 134218754;
      v92 = 5;
      v93 = 2112;
      v94 = v34;
      v95 = 2112;
      v96 = v60;
      v97 = 2112;
      v98 = v6;
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Error changing state to %ld for extension with identifier %@ from store %@: %@", buf, 0x2Au);
    }

    v15 = v63;
    if (a3)
    {
      v52 = v6;
      *a3 = v6;
    }

    v71 = 0;
    v53 = (*(v63 + 2))(v63, &v71);
    v18 = v71;
    if ((v53 & 1) == 0)
    {
      v19 = sub_100005CC4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000217B4();
      }

      goto LABEL_72;
    }

    goto LABEL_73;
  }

LABEL_40:

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = a1[8];
  v38 = [obj countByEnumeratingWithState:&v67 objects:v89 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v68;
LABEL_42:
    v41 = 0;
    v42 = v6;
    while (1)
    {
      if (*v68 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v43 = *(*(&v67 + 1) + 8 * v41);
      v44 = sub_100005CC4();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v43;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Removing extension with identifier %@", buf, 0xCu);
      }

      v45 = [a1[5] store];
      v66 = v42;
      v46 = [v45 removeExtensionWithIdentifier:v43 error:&v66];
      v6 = v66;

      if ((v46 & 1) == 0)
      {
        break;
      }

      v41 = v41 + 1;
      v42 = v6;
      if (v39 == v41)
      {
        v39 = [obj countByEnumeratingWithState:&v67 objects:v89 count:16];
        if (v39)
        {
          goto LABEL_42;
        }

        goto LABEL_50;
      }
    }

    v54 = sub_100005CC4();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v61 = [a1[5] store];
      *buf = 138412802;
      v92 = v43;
      v93 = 2112;
      v94 = v61;
      v95 = 2112;
      v96 = v6;
      _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Error removing extension with identifier %@ from store %@: %@", buf, 0x20u);
    }

    v15 = v63;
    if (a3)
    {
      v55 = v6;
      *a3 = v6;
    }

    v65 = 0;
    v56 = (*(v63 + 2))(v63, &v65);
    v18 = v65;
    if ((v56 & 1) == 0)
    {
      v19 = sub_100005CC4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000217B4();
      }

      goto LABEL_72;
    }

LABEL_73:

    v47 = 0;
    goto LABEL_74;
  }

LABEL_50:

  obj = [a1[5] identificationEntriesChangedNotifier];
  [obj postNotification];
  v47 = 1;
  v15 = v63;
LABEL_74:

  return v47;
}

id sub_100007588(CXCallDirectoryNSExtensionManager *self, SEL a2, id *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100007730;
  v22 = sub_100007740;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100007730;
  v16 = sub_100007740;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007748;
  v8[3] = &unk_100034D50;
  v10 = &v18;
  v11 = &v12;
  v5 = dispatch_semaphore_create(0);
  v9 = v5;
  [(CXCallDirectoryNSExtensionManager *)self extensionsWithCompletionHandler:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v13[5];
  }

  v6 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v6;
}

void sub_10000770C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007730(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007748(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005CC4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002181C();
  }

  v8 = 40;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v8 = 48;
    v9 = v6;
  }

  v10 = *(*(a1 + v8) + 8);
  v11 = v9;
  v12 = *(v10 + 40);
  *(v10 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000077EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100007814(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_100007BE4(uint64_t a1, void *a2)
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
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v48 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_65:
          v44 = 28;
LABEL_76:
          *(a1 + v44) = v22;
          break;
        case 4:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v50 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v50 & 0x7F) << v29;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              LOBYTE(v35) = 0;
              goto LABEL_67;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_67:
          *(a1 + 32) = v35;
          break;
        case 5:
          v14 = PBReaderReadString();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;

          break;
        default:
          goto LABEL_60;
      }

LABEL_77:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v47 = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v47 & 0x7F) << v36;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v11 = v37++ >= 9;
        if (v11)
        {
          v42 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v38;
      }

LABEL_71:
      *(a1 + 8) = v42;
      goto LABEL_77;
    }

    if (v13 != 2)
    {
LABEL_60:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_77;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    *(a1 + 36) |= 2u;
    while (1)
    {
      v49 = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v49 & 0x7F) << v16;
      if ((v49 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v11 = v17++ >= 9;
      if (v11)
      {
        v22 = 0;
        goto LABEL_75;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v18;
    }

LABEL_75:
    v44 = 24;
    goto LABEL_76;
  }

  return [a2 hasError] ^ 1;
}

void sub_100008A30(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = [*(a1 + 32) extensionIdentifier];
  v8 = 0;
  v4 = [v2 extensionWithIdentifier:v3 error:&v8];
  v5 = v8;

  if (v4)
  {
    v6 = [v4 state];
    if ((v6 - 1) <= 3)
    {
      v7 = qword_1000283D8[(v6 - 1)];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100008E48(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) store];
  v4 = [*v2 extensionIdentifier];
  v39 = 0;
  v5 = [v3 extensionWithIdentifier:v4 error:&v39];
  v6 = v39;

  if (!v5)
  {
    v9 = 1;
LABEL_39:
    v17 = [NSError cx_callDirectoryManagerErrorWithCode:v9];
    goto LABEL_40;
  }

  v7 = [v5 state];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v24 = [*v2 isEnabled];
      v25 = sub_100005CC4();
      v12 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [*v2 isEnabled];
          v27 = [v5 state];
          *buf = 67109376;
          v41 = v26;
          v42 = 2048;
          v43 = v27;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requested to set extension enabled status to %d and current state of extension is %ld, so attempting to load extension data", buf, 0x12u);
        }

        v28 = *v2;
        v38 = v6;
        v29 = [v28 _loadExtensionDataWithError:&v38];
        v17 = v38;

        v30 = sub_100005CC4();
        v6 = v30;
        if (v29)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loaded extension data successfully", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_100021A1C(v17, v6);
        }

        goto LABEL_40;
      }

      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v7 != 2)
    {
      goto LABEL_41;
    }

    v10 = [*v2 isEnabled];
    v11 = sub_100005CC4();
    v12 = v11;
    if (!v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        sub_10002190C();
      }

LABEL_38:

      v9 = 0;
      goto LABEL_39;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*v2 isEnabled];
      v14 = [v5 state];
      *buf = 67109632;
      v41 = v13;
      v42 = 2048;
      v43 = v14;
      v44 = 2048;
      v45 = 4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requested to set extension enabled status to %d and current state of extension is %ld, so updating state to %ld", buf, 0x1Cu);
    }

    v15 = [*v2 store];
    v37 = v6;
    v16 = [v15 setState:4 forExtensionWithID:objc_msgSend(v5 error:{"primaryKey"), &v37}];
    v17 = v37;

    if (!v16)
    {
      v6 = sub_100005CC4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100021994();
      }

      goto LABEL_40;
    }

    v6 = [*v2 awdReporter];
    v18 = [*v2 extensionIdentifier];
    v19 = v6;
    v20 = 1;
  }

  else
  {
    if (v7 == 5)
    {
      v21 = sub_100005CC4();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100021A94();
      }

      v9 = 102;
      goto LABEL_39;
    }

    if (v7 != 4)
    {
      if (v7 != 3)
      {
        goto LABEL_41;
      }

      v8 = sub_100005CC4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100021A94();
      }

      v9 = 7;
      goto LABEL_39;
    }

    v22 = [*v2 isEnabled];
    v23 = sub_100005CC4();
    v12 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*v2 isEnabled];
      v32 = [v5 state];
      *buf = 67109632;
      v41 = v31;
      v42 = 2048;
      v43 = v32;
      v44 = 2048;
      v45 = 2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requested to set extension enabled status to %d and current state of extension is %ld, so updating state to %ld", buf, 0x1Cu);
    }

    v33 = [*v2 store];
    v36 = v6;
    v34 = [v33 setState:2 forExtensionWithID:objc_msgSend(v5 error:{"primaryKey"), &v36}];
    v17 = v36;

    if (!v34)
    {
      v6 = sub_100005CC4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100021884();
      }

      goto LABEL_40;
    }

    v6 = [*v2 awdReporter];
    v18 = [*v2 extensionIdentifier];
    v19 = v6;
    v20 = 0;
  }

  [v19 reportSetEnabled:v20 forExtensionWithIdentifier:v18];

LABEL_40:
  v6 = v17;
LABEL_41:
  if (!v6)
  {
    v35 = [*v2 identificationEntriesChangedNotifier];
    [v35 postNotification];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000962C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009644(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_100009804(void **a1)
{
  v2 = *a1;

  return [v2 isEnabled];
}

id sub_10000981C()
{

  return [v0 state];
}

void sub_100009A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009A50(uint64_t a1)
{
  v2 = sub_100005CC4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device first unlock block invoked, attempting to prepare store...", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained host];
  [v4 prepareStoreIfNecessary];
}

void sub_100009AE0(uint64_t a1)
{
  v2 = sub_100005CC4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained systemMonitor];
    v11[0] = 67109120;
    v11[1] = [v4 firstUnlocked];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "systemMonitor activated: firstUnlocked=%d", v11, 8u);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 systemMonitor];
  v7 = [v6 firstUnlocked];

  if (v7)
  {
    v8 = sub_100005CC4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "calling prepare because we are unlocked", v11, 2u);
    }

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 host];
    [v10 prepareStoreIfNecessary];
  }
}

void sub_100009F68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005CC4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021C30(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A200(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100005CC4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100021D18(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A4E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005CC4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021D98(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A760(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005CC4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100021E30();
    }
  }

  if ([v5 count] || !_os_feature_enabled_impl())
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v16 = v5;
    v8 = objc_alloc_init(NSMutableDictionary);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = *(a1 + 32);
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = *(a1 + 40);
          v15 = *(a1 + 56);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10000A99C;
          v18[3] = &unk_100034E40;
          v19 = v8;
          v20 = v13;
          [v14 fetchLiveIdentityInfoFor:v13 cacheOnly:v15 completionHandler:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 48) + 16))();
    v5 = v16;
  }
}

void sub_10000A99C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_100005CC4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "live lookup entry %@", &v11, 0xCu);
  }

  if (!a3)
  {
    v7 = [v5 localizedLabel];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 localizedLabel];
      v10 = [v9 length];

      if (v10)
      {
        [*(a1 + 32) setObject:v5 forKeyedSubscript:*(a1 + 40)];
      }
    }
  }
}

void sub_10000AC8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v8 = -v7;
  v9 = [*(a1 + 40) analyticsReporter];
  [v9 sendBlastDoorWithTimeInterval:*(a1 + 48) for:v8];

  if (v6)
  {
    v10 = [*(a1 + 40) analyticsReporter];
    [v10 sendBlockingWithError:objc_msgSend(v6 for:{"code"), *(a1 + 48)}];

    v11 = sub_100005CC4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100021E98(a1);
    }

    v12 = 0;
  }

  else
  {
    v13 = [[NSURL alloc] initFileURLWithPath:@"/var/mobile/Library/CallDirectory/images"];
    v11 = [v13 URLByAppendingPathComponent:*(a1 + 48)];

    v14 = +[NSFileManager defaultManager];
    [v14 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:0];

    v15 = [v11 URLByAppendingPathComponent:*(a1 + 56)];
    v12 = [v15 URLByAppendingPathExtension:@"heic"];

    [v5 writeToURL:v12 atomically:1];
    v16 = sub_100005CC4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100021F10();
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10000B28C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v8 = -v7;
  v9 = [*(a1 + 40) analyticsReporter];
  [v9 sendBlockingWithTimeInterval:*(a1 + 48) for:v8];

  v10 = sub_100005CC4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v21 = 138412290;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received Data useCase: %@", &v21, 0xCu);
  }

  v12 = sub_100005CC4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "block data = %@", &v21, 0xCu);
  }

  v13 = sub_100005CC4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "error = %@", &v21, 0xCu);
  }

  if (v6)
  {
    v14 = *(a1 + 80);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v6);
    }

    v15 = sub_100005CC4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "block request returned error: %@", &v21, 0xCu);
    }

    v16 = [*(a1 + 40) analyticsReporter];
    [v16 sendBlockingWithError:objc_msgSend(v6 for:{"code"), *(a1 + 48)}];
  }

  else
  {
    if ([v5 length] == 1)
    {
      v17 = *[v5 bytes] != 0;
    }

    else
    {
      v18 = sub_100005CC4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "data length != 1 ignoring", &v21, 2u);
      }

      v17 = 0;
    }

    v19 = *(a1 + 80);
    if (v19)
    {
      (*(v19 + 16))(v19, v17, 0);
    }

    v16 = [*(a1 + 40) liveLookupStore];
    [v16 updateBlockingInfoFor:*(a1 + 64) with:*(a1 + 72) shouldBlock:v17];
  }

  v20 = [*(a1 + 40) liveLookupGroup];
  dispatch_group_leave(v20);
}

void sub_10000B598(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v8 = -v7;
  v9 = [*(a1 + 40) analyticsReporter];
  [v9 sendIdentityWithTimeInterval:*(a1 + 48) for:v8];

  v10 = sub_100005CC4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    *buf = 138412290;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received Data useCase: %@", buf, 0xCu);
  }

  v12 = sub_100005CC4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "identity data = %@", buf, 0xCu);
  }

  v13 = sub_100005CC4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "error = %@", buf, 0xCu);
  }

  if (v6)
  {
    v14 = [*(a1 + 40) analyticsReporter];
    [v14 sendIdentityWithError:-[LiveLookupCallIdentity code](v6 for:{"code"), *(a1 + 48)}];

    v15 = sub_100005CC4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "identity request returned error: %@", buf, 0xCu);
    }

    v16 = *(a1 + 80);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, 0, 0, v6);
    }
  }

  else
  {
    v17 = [[LiveLookupCallIdentity alloc] initWithData:v5];
    v18 = sub_100005CC4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "identity = %@", buf, 0xCu);
    }

    v19 = [(LiveLookupCallIdentity *)v17 name];
    v20 = [(LiveLookupCallIdentity *)v17 identityType];
    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v23 = *(a1 + 64);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000B950;
    v26[3] = &unk_100034EE0;
    v26[4] = v22;
    v27 = v23;
    v28 = *(a1 + 72);
    v29 = v19;
    v32 = v20;
    v30 = v17;
    v31 = *(a1 + 80);
    v24 = v17;
    v25 = v19;
    [v22 writeImageIfNecessary:v24 extensionIdentifier:v21 handle:v27 completionHandler:v26];
  }
}

void sub_10000B950(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) liveLookupStore];
  [v3 updateIdentityInfoFor:*(a1 + 40) with:*(a1 + 48) name:*(a1 + 56) iconURL:v6 type:*(a1 + 80) ttlMinutes:{objc_msgSend(*(a1 + 64), "cacheExpiryMinutes")}];

  v4 = *(a1 + 72);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 56), v6, *(a1 + 80), 0);
  }

  v5 = [*(a1 + 32) liveLookupGroup];
  dispatch_group_leave(v5);
}

void sub_10000C530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_10000C590(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 localizedLabel];
  v7 = [v6 length];

  if (v7 && [v10 fromCache])
  {
    v8 = [*(a1 + 32) analyticsReporter];
    v9 = [v10 extensionIdentifier];
    [v8 sendIdentityCacheHitFor:v9];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000C670(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C688(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = sub_100005CC4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "got identity for %@", &v14, 0xCu);
  }

  if (!a5)
  {
    v13 = [*(a1 + 40) identificationEntryFrom:*(a1 + 32) withName:v9 withIconURL:v10 withType:a4 fromCache:0];
    os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
    [*(*(*(a1 + 64) + 8) + 40) addObject:v13];
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10000CED4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100005CC4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "got blocking for %@ shouldBlock=%d", &v9, 0x12u);
  }

  if (a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v8 = [*(a1 + 40) analyticsReporter];
    [v8 sendBlockingCacheHitFor:*(a1 + 32)];

    (*(*(a1 + 56) + 16))();
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10000D378(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005CC4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021FE0();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000D578(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005CC4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100022048();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000D94C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005CC4();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Retrieved extensions %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002212C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000DCAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005CC4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100022194();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000E494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E4C0(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005CC4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[4] identifier];
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "error disabling extension when resetting context %@", buf, 0xCu);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v7 = [WeakRetained liveLookupStore];
    v8 = [a1[4] identifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000E664;
    v9[3] = &unk_100034FF8;
    v10 = a1[4];
    v11 = a1[5];
    [v7 setEnabled:1 forExtensionWith:v8 completionHandler:v9];
  }
}

void sub_10000E664(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005CC4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "error enabling extension when resetting context %@", &v7, 0xCu);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void sub_10000EB34(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_10000ECE8(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setExtensionIdentifier:v2];

  [*(a1 + 32) setExtensionID:-1];
  [*(a1 + 32) setUpdateDelegate:*(a1 + 48)];
  [*(a1 + 32) setDataRequest:*(a1 + 56)];
  v3 = *(a1 + 32);
  v4 = [v3 dataRequest];
  [v4 setDelegate:v3];

  [*(a1 + 32) setStore:*(a1 + 64)];
  [*(a1 + 32) setMaximumAllowedEntries:*(a1 + 80)];
  [*(a1 + 32) setIdentificationEntriesChangedNotifier:*(a1 + 72)];
  v5 = objc_alloc_init(CDXAWDReporter);
  [*(a1 + 32) setAwdReporter:v5];
}

void sub_10000F1C0(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) setBlockingEntriesAdded:0];
  [*v2 setIdentificationEntriesAdded:0];
  [*v2 setLastBlockingPhoneNumber:0];
  [*v2 setLastIdentificationPhoneNumber:0];
  v3 = [*v2 store];
  v4 = [*v2 extensionIdentifier];
  v34 = 0;
  v5 = [v3 extensionWithIdentifier:v4 error:&v34];
  v6 = v34;

  if (v5)
  {
    [*v2 setExtensionID:{objc_msgSend(v5, "primaryKey")}];
    v7 = [v5 state];
    v8 = 1;
    if (v7 > 2)
    {
      switch(v7)
      {
        case 3:
          v16 = sub_100005CC4();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000224B8(v2);
          }

          v10 = *(a1 + 40);
          v11 = 7;
          goto LABEL_37;
        case 4:
          [*v2 setIncrementalLoadingState:1];
          v8 = 0;
          break;
        case 5:
          v9 = sub_100005CC4();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10002242C(v2);
          }

          v10 = *(a1 + 40);
          v11 = 102;
          goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v7 == 1)
    {
      if (([*v2 allowLoadingDisabledExtensions] & 1) == 0)
      {
        v15 = sub_100005CC4();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000225D0(v2);
        }

        goto LABEL_36;
      }
    }

    else if (v7 == 2)
    {
      v15 = sub_100005CC4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100022544(v2);
      }

LABEL_36:

      v10 = *(a1 + 40);
      v11 = 6;
LABEL_37:
      v29 = [NSError cx_callDirectoryManagerErrorWithCode:v11];
      (*(v10 + 16))(v10, v29);

      goto LABEL_38;
    }

LABEL_26:
    v17 = sub_100005CC4();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*v2 incrementalLoadingState];
      v19 = [*v2 extensionIdentifier];
      *buf = 134218242;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "incrementalLoadingState: %ld for extension with identifier %@", buf, 0x16u);
    }

    v20 = [*v2 store];
    v21 = [*v2 extensionIdentifier];
    v33 = v6;
    v22 = [v20 setState:3 forExtensionWithIdentifier:v21 error:&v33];
    v23 = v33;

    if (v22)
    {
      v24 = [*(a1 + 32) dataRequest];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10000F6A0;
      v30[3] = &unk_100035098;
      v25 = *(a1 + 40);
      v30[4] = *(a1 + 32);
      v32 = v8;
      v31 = v25;
      [v24 beginWithCompletion:v30];
    }

    else
    {
      v26 = sub_100005CC4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100022680();
      }

      v27 = *(a1 + 40);
      v28 = [NSError cx_callDirectoryManagerErrorWithCode:0];
      (*(v27 + 16))(v27, v28);
    }

    v6 = v23;
    goto LABEL_38;
  }

  v12 = sub_100005CC4();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v13)
    {
      sub_100022740();
    }

    v14 = [NSError cx_callDirectoryManagerErrorWithCode:0];
  }

  else
  {
    if (v13)
    {
      sub_1000227D4(v2);
    }

    v14 = [NSError cx_callDirectoryManagerErrorWithCode:1];
  }

  (*(*(a1 + 40) + 16))();
  v6 = v14;
LABEL_38:
}

void sub_10000F6A0(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_10000F7D4;
  v11[4] = sub_10000F7E4;
  v3 = a2;
  v12 = v3;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F7EC;
  v7[3] = &unk_100035070;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v11;
  v7[4] = v5;
  v10 = *(a1 + 48);
  v8 = v6;
  dispatch_async(v4, v7);

  _Block_object_dispose(v11, 8);
}

void sub_10000F7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F7D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F7EC(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = sub_100005CC4();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100022868();
    }

    v6 = [*(a1 + 32) store];
    v7 = [*(a1 + 32) extensionID];
    v44 = 0;
    v8 = [v6 removeBlockingEntriesForExtensionWithID:v7 error:&v44];
    v9 = v44;
    if (v8)
    {
      v10 = [*(a1 + 32) store];
      v11 = [*(a1 + 32) extensionID];
      v43 = v9;
      v12 = [v10 removeIdentificationEntriesForExtensionWithID:v11 error:&v43];
      v13 = v43;

      v9 = v13;
      if (v12)
      {
LABEL_22:
        if (*(a1 + 56))
        {
          v27 = 1;
        }

        else
        {
          v27 = 4;
        }

        v28 = [*(a1 + 32) store];
        v29 = [*(a1 + 32) extensionIdentifier];
        v42 = 0;
        v30 = [v28 setState:v27 forExtensionWithIdentifier:v29 error:&v42];
        v25 = v42;

        if ((v30 & 1) == 0)
        {
          v31 = sub_100005CC4();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v38 = [*(a1 + 32) extensionIdentifier];
            v39 = [*(a1 + 32) store];
            *buf = 134218754;
            v46 = v27;
            v47 = 2112;
            v48 = v38;
            v49 = 2112;
            v50 = v39;
            v51 = 2112;
            v52 = v25;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Error setting state to %ld for extension with identifier %@ into store %@: %@", buf, 0x2Au);
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v26 = sub_100005CC4();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v35 = [*(a1 + 32) extensionID];
      v36 = [*(a1 + 32) extensionIdentifier];
      v37 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 134218754;
      v46 = v35;
      v47 = 2112;
      v48 = v36;
      v49 = 2112;
      v50 = v37;
      v51 = 2112;
      v52 = v9;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error removing entries for extensionID %lld (identifier %@) from store (attempting to recover from data request error %@): %@", buf, 0x2Au);
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) extensionIdentifier];
    *buf = 138412290;
    v46 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Data request completed successfully for extension with identifier %@", buf, 0xCu);
  }

  v16 = (a1 + 32);
  v15 = *(a1 + 32);
  v17 = *(*(a1 + 48) + 8);
  obj = *(v17 + 40);
  v18 = [v15 performInitialDeletionIfNecessaryWithError:&obj];
  objc_storeStrong((v17 + 40), obj);
  if ((v18 & 1) == 0)
  {
    v19 = sub_100005CC4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100022918(v2, v19);
    }
  }

  v20 = [*v16 store];
  v21 = [*v16 extensionIdentifier];
  v40 = 0;
  v22 = [v20 setState:4 forExtensionWithIdentifier:v21 error:&v40];
  v9 = v40;

  if ((v22 & 1) == 0)
  {
    v23 = sub_100005CC4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10002299C();
    }
  }

  v24 = [*v16 updateDelegate];
  [v24 callDirectoryLastInformationUpdatedForPhoneNumber:{objc_msgSend(*v16, "lastIdentificationPhoneNumber")}];

  v25 = [*v16 identificationEntriesChangedNotifier];
  [v25 postNotification];
LABEL_29:

  v32 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v33 = [*(a1 + 32) awdReporter];
    v34 = [*(a1 + 32) extensionIdentifier];
    [v33 reportLoadedDataForExtensionWithIdentifier:v34 blockingEntries:objc_msgSend(*(a1 + 32) identificationEntries:{"blockingEntriesAdded"), objc_msgSend(*(a1 + 32), "identificationEntriesAdded")}];
  }
}

void sub_100010E14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100011004(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) store];
  v84 = 0;
  v3 = [v2 prioritizedExtensionsWithError:&v84];
  v4 = v84;

  if (!v3)
  {
    v57 = sub_100005CC4();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_1000230E8(v4, v57, v64, v65, v66, v67, v68, v69);
    }

    goto LABEL_47;
  }

  v5 = v4;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v70 = v3;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v80 objects:v95 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v81;
    v71 = *v81;
    do
    {
      v9 = 0;
      v72 = v7;
      do
      {
        if (*v81 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v80 + 1) + 8 * v9);
        v11 = [v10 state];
        if (v11 != 5)
        {
          if (v11 != 2)
          {
            goto LABEL_34;
          }

          v12 = sub_100005CC4();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v10 identifier];
            *buf = 138412290;
            v86 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing entries for extension with identifier %@", buf, 0xCu);
          }

          v14 = [*(v1 + 32) store];
          v15 = [v10 primaryKey];
          v79 = v5;
          v16 = [v14 removeBlockingEntriesForExtensionWithID:v15 error:&v79];
          v17 = v79;

          if (v16)
          {
            v18 = [*(v1 + 32) store];
            v19 = [v10 primaryKey];
            v78 = v17;
            v20 = [v18 removeIdentificationEntriesForExtensionWithID:v19 error:&v78];
            v21 = v78;

            v17 = v21;
            if (v20)
            {
LABEL_22:
              v31 = sub_100005CC4();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [v10 identifier];
                *buf = 134218242;
                v86 = 1;
                v87 = 2112;
                v88 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Changing state to %ld for extension with identifier %@", buf, 0x16u);
              }

              v33 = [*(v1 + 32) store];
              v34 = [v10 primaryKey];
              v77 = v17;
              v35 = [v33 setState:1 forExtensionWithID:v34 error:&v77];
              v5 = v77;

              v8 = v71;
              if (v35)
              {
                v7 = v72;
                goto LABEL_34;
              }

              v24 = sub_100005CC4();
              v7 = v72;
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_33;
              }

              v36 = [v10 primaryKey];
              v37 = [v10 state];
              v25 = [*(v1 + 32) store];
              *buf = 134219010;
              v86 = v36;
              v87 = 2048;
              v88 = v37;
              v89 = 2048;
              v90 = 1;
              v91 = 2112;
              v92 = v25;
              v93 = 2112;
              v94 = v5;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error updating state for extensionID %lld from %ld to %ld in store %@: %@", buf, 0x34u);
LABEL_17:

              goto LABEL_33;
            }
          }

          else
          {
          }

          v30 = sub_100005CC4();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v43 = [v10 primaryKey];
            v44 = [*(v1 + 32) store];
            *buf = 134218498;
            v86 = v43;
            v87 = 2112;
            v88 = v44;
            v89 = 2112;
            v90 = v17;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error removing entries for extensionID %lld from store %@: %@", buf, 0x20u);
          }

          goto LABEL_22;
        }

        v22 = sub_100005CC4();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v10 identifier];
          *buf = 138412290;
          v86 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing extension with identifier %@", buf, 0xCu);
        }

        v24 = +[NSDate date];
        v25 = [v10 stateLastModified];
        [v24 timeIntervalSinceDate:v25];
        v27 = v26;
        v28 = *(v1 + 32);
        [objc_opt_class() unavailableExtensionPurgeTimeout];
        if (v27 < v29)
        {
          goto LABEL_17;
        }

        v38 = v1;
        v39 = [*(v1 + 32) store];
        v40 = [v10 identifier];
        v76 = v5;
        v41 = [v39 removeExtensionWithIdentifier:v40 error:&v76];
        v42 = v76;

        if (v41)
        {
          v5 = v42;
          v1 = v38;
          v8 = v71;
          v7 = v72;
          goto LABEL_34;
        }

        v24 = sub_100005CC4();
        v7 = v72;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v45 = [v10 identifier];
          *buf = 138412546;
          v86 = v45;
          v87 = 2112;
          v88 = v42;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error removing extension with identifier %@: %@", buf, 0x16u);
        }

        v5 = v42;
        v1 = v38;
        v8 = v71;
LABEL_33:

LABEL_34:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v80 objects:v95 count:16];
    }

    while (v7);
  }

  v3 = v70;
  v4 = v5;
  if (!v5)
  {
    v46 = [*(v1 + 32) store];
    v75 = 0;
    v47 = [v46 removeUnreferencedRecordsWithError:&v75];
    v4 = v75;

    if ((v47 & 1) == 0)
    {
      v48 = sub_100005CC4();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_100023010(v4, v48, v49, v50, v51, v52, v53, v54);
      }
    }

    if (!v4)
    {
      v55 = [*(v1 + 32) store];
      v74 = 0;
      v56 = [v55 vacuumWithError:&v74];
      v4 = v74;

      if ((v56 & 1) == 0)
      {
        v57 = sub_100005CC4();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_10002307C(v4, v57, v58, v59, v60, v61, v62, v63);
        }

LABEL_47:
      }
    }
  }

  (*(*(v1 + 40) + 16))();
}

void sub_100011A78(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v26 = 0;
  v3 = [v2 prioritizedExtensionsWithError:&v26];
  v4 = v26;

  if (v3)
  {
    v5 = [*(a1 + 32) prioritizedExtensionIdentifiers];
    v6 = [v5 mutableCopy];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v6 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            v15 = [v12 identifier];
            [v6 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v16 = [*(a1 + 32) store];
    v17 = [v6 copy];
    v21 = v4;
    [v16 setPrioritizedExtensionIdentifiers:v17 error:&v21];
    v18 = v21;

    v19 = [*(a1 + 32) identificationEntriesChangedNotifier];
    [v19 postNotification];

    v4 = v18;
    v3 = v20;
  }

  else
  {
    v6 = sub_100005CC4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100023154(v4, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100011F58(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v11 = 0;
  v3 = [v2 prioritizedExtensionsWithError:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = [*(a1 + 32) extensionsDataSource];
    v10 = v4;
    v6 = [v5 installedExtensionsWithError:&v10];
    v7 = v10;

    if (v6)
    {
      v8 = [*(a1 + 32) _extensionsFromNSExtensions:v6 usingProritizedStoreExtensions:v3];
    }

    else
    {
      v9 = sub_100005CC4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000231CC(v7, v9);
      }

      v8 = 0;
    }
  }

  else
  {
    v6 = sub_100005CC4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100023154(v4, v6);
    }

    v8 = 0;
    v7 = v4;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100012854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012878(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012890(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 48;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100012B58(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 phoneNumbers];
  v4 = [v2 _canonicalizedPhoneNumbersToPhoneNumbers:v3];

  v5 = [*(v1 + 32) store];
  v6 = [v4 allKeys];
  v29 = 0;
  v7 = [v5 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v6 error:&v29];
  v8 = v29;

  if (v7 && ([*(v1 + 32) _storeIdentificationEntryToIdentificationEntriesForDictionary:v7], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v22 = v7;
    v23 = v8;
    v24 = v1;
    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [v12 objectForKeyedSubscript:v17];
          v19 = [v4 objectForKeyedSubscript:v17];
          if (v19)
          {
            [v11 setObject:v18 forKeyedSubscript:v19];
          }

          else
          {
            v20 = sub_100005CC4();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Canonicalized phone number '%@' from store did not match any canonicalized phone numbers requested, so skipping it but this may indicate a problem with the phone number canonicalization logic", buf, 0xCu);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v14);
    }

    v21 = [v11 copy];
    v8 = v23;
    v1 = v24;
    v7 = v22;
  }

  else
  {
    v12 = 0;
    v21 = 0;
  }

  (*(*(v1 + 40) + 16))();
}

void sub_100013B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013B90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100013BA8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100013F20(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100013F40()
{
  v0 = sub_1000238C4();
  sub_10001423C(v0, qword_10003C8F0);
  sub_10000209C(v0, qword_10003C8F0);
  return sub_1000238B4();
}

uint64_t *sub_10001423C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void type metadata accessor for CGImage()
{
  if (!qword_10003C5D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10003C5D0);
    }
  }
}

uint64_t sub_100014304(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100014378(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = (v5 + *a4);
  v8 = *v7;
  v9 = v7[1];
  v10 = (v5 + *a5);
  v12 = *v10;
  v11 = v10[1];
  sub_100014304(&qword_10003C5E8, &qword_1000284B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028490;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100028DD0;
  v14 = objc_allocWithZone(NSString);
  v15 = sub_100023974();
  v16 = [v14 initWithString:v15];

  *(inited + 48) = v16;
  v17 = sub_100015D44(inited, &qword_10003C6B8, &unk_100028518);
  swift_setDeallocating();
  sub_100015CA4(inited + 32);
  v18 = objc_allocWithZone(NSNumber);

  v19 = [v18 initWithDouble:a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100015908(v19, v12, v11, isUniquelyReferenced_nonNull_native);

  sub_100014D90(v8, v9, v17);
}

uint64_t sub_10001457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_100014304(&qword_10003C5E8, &qword_1000284B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028490;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100028DD0;
  v11 = objc_allocWithZone(NSString);
  v12 = sub_100023974();
  v13 = [v11 initWithString:v12];

  *(inited + 48) = v13;
  v14 = sub_100015D44(inited, &qword_10003C6B8, &unk_100028518);
  swift_setDeallocating();
  sub_100015CA4(inited + 32);
  v15 = objc_allocWithZone(NSNumber);

  v16 = [v15 initWithBool:1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100015908(v16, a3, a4, isUniquelyReferenced_nonNull_native);

  sub_100014D90(a5, a6, v14);
}

uint64_t sub_10001473C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = (v4 + *a3);
  v7 = *v5;
  v6 = v5[1];
  v8 = (v4 + *a4);
  v9 = *v8;
  v10 = v8[1];
  sub_100014304(&qword_10003C5E8, &qword_1000284B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028490;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100028DD0;
  v12 = objc_allocWithZone(NSString);
  v13 = sub_100023974();
  v14 = [v12 initWithString:v13];

  *(inited + 48) = v14;
  v15 = sub_100015D44(inited, &qword_10003C6B8, &unk_100028518);
  swift_setDeallocating();
  sub_100015CA4(inited + 32);
  v16 = objc_allocWithZone(NSNumber);

  v17 = [v16 initWithBool:1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100015908(v17, v7, v6, isUniquelyReferenced_nonNull_native);

  sub_100014D90(v9, v10, v15);
}

uint64_t sub_100014930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v8 = (v6 + *a4);
  v9 = v8[1];
  v22 = *v8;
  v10 = (v6 + *a5);
  v12 = *v10;
  v11 = v10[1];
  sub_100014304(&qword_10003C5E8, &qword_1000284B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028490;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100028DD0;
  v14 = objc_allocWithZone(NSString);
  v15 = sub_100023974();
  v16 = [v14 initWithString:v15];

  *(inited + 48) = v16;
  v17 = sub_100015D44(inited, &qword_10003C6B8, &unk_100028518);
  swift_setDeallocating();
  sub_100015CA4(inited + 32);
  v18 = objc_allocWithZone(NSNumber);

  v19 = [v18 initWithUnsignedInteger:a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100015908(v19, v12, v11, isUniquelyReferenced_nonNull_native);

  sub_100014D90(v22, v9, v17);
}

uint64_t sub_100014B70(void *a1, double a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, double))
{
  v8 = sub_100023984();
  v10 = v9;
  v11 = a1;
  a5(v8, v10, a2);
}

uint64_t sub_100014C18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_100023984();
  v10 = v9;
  v11 = a1;
  a5(a3, v8, v10);
}

uint64_t sub_100014CE8(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = sub_100023984();
  v10 = v9;
  v11 = &a1[*a4];
  v12 = *v11;
  v13 = v11[1];
  v14 = &a1[*a5];
  v15 = *v14;
  v16 = v14[1];
  v17 = a1;
  sub_10001457C(v8, v10, v12, v13, v15, v16);
}

void sub_100014D90(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000238C4();
  sub_10000209C(v8, qword_10003C8F0);

  v9 = sub_1000238A4();
  v10 = sub_100023A94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1000186C4(a1, a2, &aBlock);
    *(v11 + 12) = 2080;
    if (a3)
    {

      sub_100014304(&qword_10003C6A8, &qword_100028510);
      v12 = sub_100023994();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_1000186C4(v12, v14, &aBlock);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "sending action: %s payload: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v4 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_analyticsEventPrefix + 8);
  aBlock = *(v4 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_analyticsEventPrefix);
  v21 = v16;

  v26._countAndFlagsBits = a1;
  v26._object = a2;
  sub_1000239C4(v26);
  v17 = sub_100023974();

  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v24 = sub_100015E40;
  v25 = v18;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100015060;
  v23 = &unk_100035298;
  v19 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

Class sub_100015060(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100015E60();
    v5.super.isa = sub_100023954().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

id SecureImageTranscoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreAnalyticsReporter.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_analyticsEventPrefix];
  *v2 = 0xD000000000000023;
  *(v2 + 1) = 0x8000000100028D40;
  v3 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_fetchKey];
  *v3 = 0x6863746566;
  *(v3 + 1) = 0xE500000000000000;
  v4 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_registrationKey];
  strcpy(&v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_registrationKey], "registration");
  v4[13] = 0;
  *(v4 + 7) = -5120;
  v5 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_blastDoorErrorKey];
  *v5 = 0x6F6F647473616C62;
  *(v5 + 1) = 0xEF726F7272655F72;
  v6 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_blastDoorTimeKey];
  strcpy(&v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_blastDoorTimeKey], "blastdoor_time");
  v6[15] = -18;
  v7 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_blockingCacheHitKey];
  *v7 = 0xD000000000000012;
  *(v7 + 1) = 0x8000000100028D70;
  v8 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_blockingFetchErrorKey];
  *v8 = 0xD000000000000014;
  *(v8 + 1) = 0x8000000100028D90;
  v9 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_blockingFetchTimeKey];
  *v9 = 0xD000000000000013;
  *(v9 + 1) = 0x8000000100028DB0;
  v10 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_extensionIdentifierKey];
  *v10 = 0xD000000000000013;
  *(v10 + 1) = 0x8000000100028DD0;
  v11 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_identityCacheHitKey];
  *v11 = 0xD000000000000012;
  *(v11 + 1) = 0x8000000100028DF0;
  v12 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_identifyFetchErrorKey];
  *v12 = 0xD000000000000014;
  *(v12 + 1) = 0x8000000100028E10;
  v13 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_identifyFetchTimeKey];
  *v13 = 0xD000000000000013;
  *(v13 + 1) = 0x8000000100028E30;
  v14 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_disableErrorKey];
  strcpy(&v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_disableErrorKey], "disable_error");
  *(v14 + 7) = -4864;
  v15 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_disableTimeKey];
  strcpy(&v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_disableTimeKey], "disable_time");
  v15[13] = 0;
  *(v15 + 7) = -5120;
  v16 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_enableErrorKey];
  strcpy(&v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_enableErrorKey], "enable_error");
  v16[13] = 0;
  *(v16 + 7) = -5120;
  v17 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_enableTimeKey];
  *v17 = 0x745F656C62616E65;
  *(v17 + 1) = 0xEB00000000656D69;
  v18 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_installKey];
  strcpy(&v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_installKey], "installation");
  v18[13] = 0;
  *(v18 + 7) = -5120;
  v19 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_uninstallKey];
  strcpy(&v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter_uninstallKey], "uninstallation");
  v19[15] = -18;
  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

id SecureImageTranscoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000155EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100023BD4();
  sub_1000239B4();
  v6 = sub_100023BE4();

  return sub_100015A80(a1, a2, v6);
}

uint64_t sub_100015664(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100014304(&qword_10003C6B8, &unk_100028518);
  v39 = a2;
  result = sub_100023B34();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_100023BD4();
      sub_1000239B4();
      result = sub_100023BE4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100015908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000155EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100015664(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000155EC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100023B84();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100015B38();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_100015A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100023B64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_100015B38()
{
  v1 = v0;
  sub_100014304(&qword_10003C6B8, &unk_100028518);
  v2 = *v0;
  v3 = sub_100023B24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100015CA4(uint64_t a1)
{
  v2 = sub_100014304(&qword_10003C5F0, &qword_1000284B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100015D44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100014304(a2, a3);
    v5 = sub_100023B44();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1000155EC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100015E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100015E60()
{
  result = qword_10003C6B0;
  if (!qword_10003C6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C6B0);
  }

  return result;
}

id SecureImageTranscoder.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder_warmUpGIFBytes] = &off_1000351F8;
  v2 = BlastDoorInstanceTypeKnownSender;
  v3 = sub_100023894();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v6 = sub_100023884();
  v7 = &v0[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder_blastDoor];
  v7[3] = v3;
  v7[4] = &off_1000352C0;
  *v7 = v6;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100015F84();

  return v8;
}

uint64_t sub_100015F84()
{
  v1 = v0;
  v2 = (*(*(sub_100014304(&qword_10003C700, &qword_100028750) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v16 - v3;
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000238C4();
  sub_10000209C(v5, qword_10003C8F0);
  v6 = sub_1000238A4();
  v7 = sub_100023A94();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Warming up BlastDoor interface", v8, 2u);
  }

  v9 = sub_100002324((*&v1[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder_warmUpGIFBytes] + 32), *(*&v1[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder_warmUpGIFBytes] + 16));
  v11 = v10;
  v12 = sub_100023A74();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  v13[5] = v9;
  v13[6] = v11;
  v14 = v1;
  sub_100017154(0, 0, v4, &unk_1000285F0, v13);
}

uint64_t SecureImageTranscoder.generatePreviewImage(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_100014304(&qword_10003C6D0, &qword_100028690) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_1000236B4();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_100023614();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000163B8, 0, 0);
}

uint64_t sub_1000163B8()
{
  v47 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  sub_100018204();
  sub_1000236A4();
  sub_100023694();
  (*(v6 + 8))(v5, v7);
  sub_1000235E4();

  v8 = *(v4 + 8);
  v0[16] = v8;
  v0[17] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v9 = v0[15];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = sub_1000238C4();
  sub_10000209C(v13, qword_10003C8F0);
  v14 = v10;
  v15 = *(v12 + 16);
  v15(v14, v9, v11);
  v16 = sub_1000238A4();
  v17 = sub_100023A94();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[13];
  if (v18)
  {
    v43 = v17;
    v45 = v8;
    v21 = v0[10];
    v20 = v0[11];
    v23 = v0[5];
    v22 = v0[6];
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v24 = 136315138;
    v15(v22, v19, v21);
    (*(v20 + 56))(v22, 0, 1, v21);
    sub_1000191B0(v22, v23, &qword_10003C6D0, &qword_100028690);
    if ((*(v20 + 48))(v23, 1, v21) == 1)
    {
      sub_1000022C4(v0[5], &qword_10003C6D0, &qword_100028690);
      v25 = 0xE300000000000000;
      v26 = 7104878;
      v27 = v45;
    }

    else
    {
      v29 = v0[14];
      v30 = v0[12];
      v31 = v0[10];
      (*(v0[11] + 32))(v30, v0[5], v31);
      v15(v29, v30, v31);
      v26 = sub_100023994();
      v25 = v32;
      v27 = v45;
      v45(v30, v31);
    }

    v33 = v0[13];
    v34 = v0[10];
    sub_1000022C4(v0[6], &qword_10003C6D0, &qword_100028690);
    v27(v33, v34);
    v35 = sub_1000186C4(v26, v25, &v46);

    *(v24 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v16, v43, "Attempting to generate preview of image after writing to URL: %s", v24, 0xCu);
    sub_100018E44(v44);
  }

  else
  {
    v28 = v0[10];

    v8(v19, v28);
  }

  v36 = v0[15];
  v37 = v0[2];
  v38 = v0[3];
  sub_100023654();
  v39 = *sub_100018680((v0[4] + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder_blastDoor), *(v0[4] + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder_blastDoor + 24));
  v40 = swift_task_alloc();
  v0[18] = v40;
  *v40 = v0;
  v40[1] = sub_100016890;
  v41 = v0[15];

  return sub_1000176A0(v41);
}

uint64_t sub_100016890(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v9 = sub_1000169C4;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v9 = sub_100001D20;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000169C4()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[6];
  v12 = v0[5];
  v13 = v0[19];
  sub_100001C00();
  v1(v3, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100016C30(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_100023644();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100016D0C;

  return SecureImageTranscoder.generatePreviewImage(from:)(v7, v9);
}

uint64_t sub_100016D0C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 16);
  v11 = *v3;

  sub_100001F34(*(v7 + 32), *(v7 + 40));
  if (v4)
  {
    isa = sub_1000235A4();

    v13 = isa;
    v14 = 0;
  }

  else
  {
    isa = sub_100023634().super.isa;
    sub_100001F34(a1, a2);
    v14 = isa;
    v13 = 0;
  }

  v15 = *(v8 + 24);
  (v15)[2](v15, v14, v13);

  _Block_release(v15);
  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_100016ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100001E04;

  return SecureImageTranscoder.generatePreviewImage(from:)(a5, a6);
}

uint64_t sub_100016F7C()
{
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000238C4();
  sub_10000209C(v1, qword_10003C8F0);
  v2 = sub_1000238A4();
  v3 = sub_100023A94();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 24);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Warming up BlastDoor interface", v6, 2u);
  }

  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  sub_10000209C(v1, qword_10003C8F0);
  v7 = sub_1000238A4();
  v8 = sub_100023A94();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Warmed up BlastDoor interface", v9, 2u);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100017154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100014304(&qword_10003C700, &qword_100028750) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_1000191B0(a3, v26 - v10, &qword_10003C700, &qword_100028750);
  v12 = sub_100023A74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000022C4(v11, &qword_10003C700, &qword_100028750);
  }

  else
  {
    sub_100023A64();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100023A34();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000239A4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000022C4(a3, &qword_10003C700, &qword_100028750);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000022C4(a3, &qword_10003C700, &qword_100028750);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000174A0(uint64_t a1)
{
  v2 = sub_100014304(&qword_10003C730, &qword_1000285D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_100023874();
}

uint64_t sub_1000175F0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_100014304(&qword_10003C730, &qword_1000285D8);
    return sub_100023A54();
  }

  else
  {
    if (a2)
    {
      swift_errorRetain();
    }

    else
    {
      sub_100018EF8();
      swift_allocError();
      *v4 = 0;
    }

    sub_100014304(&qword_10003C730, &qword_1000285D8);
    return sub_100023A44();
  }
}

uint64_t sub_1000176A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_100023924();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_100014304(&qword_10003C710, &qword_1000285C8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_100023944();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = sub_100023614();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100017850, 0, 0);
}

uint64_t sub_100017850()
{
  v24 = v0;
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 40);
  v5 = sub_1000238C4();
  *(v0 + 136) = sub_10000209C(v5, qword_10003C8F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1000238A4();
  v7 = sub_100023A94();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    sub_100018F4C();
    v14 = sub_100023B54();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000186C4(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Generating preview from file: %s", v12, 0xCu);
    sub_100018E44(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  v18[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v19 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  v21 = sub_100015E60();
  *(v0 + 160) = v21;
  *v20 = v0;
  v20[1] = sub_100017AFC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000023, 0x8000000100029220, sub_100018EF0, v18, v21);
}

uint64_t sub_100017AFC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100018170;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_100017C18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100017C18()
{
  v65 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  v3 = sub_1000238A4();
  v4 = sub_100023A94();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v64[0] = v7;
    *v6 = 136315138;
    *(v0 + 32) = v2;
    v8 = v2;
    v9 = sub_100023994();
    v11 = sub_1000186C4(v9, v10, v64);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Generated preview with result: %s", v6, 0xCu);
    sub_100018E44(v7);
  }

  sub_1000238F4();
  v12 = swift_dynamicCastClass();
  v13 = v2;
  if (!v12)
  {
    v32 = *(v0 + 136);
    v33 = sub_1000238A4();
    v34 = sub_100023A94();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v64[0] = v36;
      *v35 = 136315138;
      *(v0 + 24) = swift_getObjectType();
      sub_100014304(&qword_10003C720, &qword_1000285D0);
      v37 = sub_100023994();
      v39 = sub_1000186C4(v37, v38, v64);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Received unsupported result type: %s", v35, 0xCu);
      sub_100018E44(v36);
    }

    ObjectType = swift_getObjectType();
    sub_100018EF8();
    swift_allocError();
    *v41 = ObjectType;
    swift_willThrow();
    goto LABEL_13;
  }

  v14 = sub_1000238E4();
  v15 = sub_1000238D4();

  if (!v15)
  {
    v42 = *(v0 + 136);
    v43 = sub_1000238A4();
    v44 = sub_100023A84();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Received empty image result from BlastDoor", v45, 2u);
    }

    sub_100018EF8();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();

LABEL_13:
    goto LABEL_14;
  }

  v16 = *(v0 + 168);
  v17 = *(v0 + 104);
  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v20 = *(v0 + 56);
  v21 = *(v0 + 64);
  type metadata accessor for CGImage();
  v64[3] = v22;
  v64[4] = &protocol witness table for CGImageRef;
  v64[0] = v15;
  (*(v21 + 56))(v18, 1, 1, v20);
  v23 = v15;
  sub_100023934();
  sub_100023904();
  (*(v21 + 104))(v19, enum case for Image.Encoding.atx(_:), v20);
  v24 = sub_100023914();
  if (v16)
  {
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 88);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);

    (*(v30 + 8))(v29, v31);
    (*(v27 + 8))(v26, v28);
LABEL_14:
    v47 = *(v0 + 128);
    v48 = *(v0 + 104);
    v50 = *(v0 + 72);
    v49 = *(v0 + 80);

    v51 = *(v0 + 8);

    return v51();
  }

  v53 = *(v0 + 128);
  v55 = *(v0 + 96);
  v54 = *(v0 + 104);
  v56 = *(v0 + 88);
  v61 = *(v0 + 80);
  v62 = v24;
  v57 = *(v0 + 64);
  v58 = *(v0 + 72);
  v59 = *(v0 + 56);
  v63 = v25;

  (*(v57 + 8))(v58, v59);
  (*(v55 + 8))(v54, v56);

  v60 = *(v0 + 8);

  return v60(v62, v63);
}

uint64_t sub_100018170()
{
  v1 = v0[18];

  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

void sub_100018204()
{
  v0 = sub_100023614();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NSTemporaryDirectory();
  sub_100023984();

  sub_1000235C4();

  sub_1000235E4();
  (*(v1 + 8))(v4, v0);
  v6 = [objc_opt_self() defaultManager];
  sub_1000235D4(v7);
  v9 = v8;
  v23 = 0;
  LODWORD(v4) = [v6 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v23];

  v10 = v23;
  if (v4)
  {

    v11 = v10;
  }

  else
  {
    v22[1] = v23;
    v12 = v23;
    v13 = sub_1000235B4();

    swift_willThrow();
    if (qword_10003C5C8 != -1)
    {
      swift_once();
    }

    v14 = sub_1000238C4();
    sub_10000209C(v14, qword_10003C8F0);
    swift_errorRetain();
    v15 = sub_1000238A4();
    v16 = sub_100023A84();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v22[2] = v13;
      swift_errorRetain();
      sub_100014304(&qword_10003C738, &qword_1000285E0);
      v19 = sub_100023994();
      v21 = sub_1000186C4(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error creating temporary images directory: %s", v17, 0xCu);
      sub_100018E44(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_100018588(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000021CC;

  return v7(a1);
}

void *sub_100018680(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000186C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100018790(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100018E90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100018E44(v11);
  return v7;
}

unint64_t sub_100018790(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001889C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100023B04();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001889C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000188E8(a1, a2);
  sub_100018A18(&off_100035188);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000188E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100018B04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100023B04();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000239D4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100018B04(v10, 0);
        result = sub_100023AD4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100018A18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100018B78(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100018B04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100014304(&qword_10003C708, &qword_1000285C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100018B78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100014304(&qword_10003C708, &qword_1000285C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100018C90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000020D8;

  return sub_100016C30(v2, v3, v4);
}

uint64_t sub_100018D44()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000020D4;

  return sub_10001FF64(v2, v3, v5);
}

uint64_t sub_100018E04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100018E44(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100018E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100018EF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000174A0(a1);
}

unint64_t sub_100018EF8()
{
  result = qword_10003C718;
  if (!qword_10003C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C718);
  }

  return result;
}

unint64_t sub_100018F4C()
{
  result = qword_10003C728;
  if (!qword_10003C728)
  {
    sub_100023614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C728);
  }

  return result;
}

uint64_t sub_100018FA4(void *a1, uint64_t a2)
{
  v4 = *(*(sub_100014304(&qword_10003C730, &qword_1000285D8) - 8) + 80);

  return sub_1000175F0(a1, a2);
}

uint64_t sub_100019030(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000190E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000020D4;

  return sub_100016ED0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000191B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100014304(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100019218(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000020D4;

  return sub_100018588(a1, v5);
}

uint64_t sub_1000192D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000020D8;

  return sub_100018588(a1, v5);
}

uint64_t getEnumTagSinglePayload for BlastDoorError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BlastDoorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10001943C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100019458(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t FTServerBag.identityWaitSeconds.getter()
{
  v1 = sub_100023974();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100023AC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100019624();
    if (swift_dynamicCast())
    {
      v3 = [v5 unsignedIntegerValue];

      return v3;
    }
  }

  else
  {
    sub_1000195BC(v8);
  }

  return 5;
}

uint64_t sub_1000195BC(uint64_t a1)
{
  v2 = sub_100014304(&qword_10003C740, &qword_100028660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100019624()
{
  result = qword_10003C748;
  if (!qword_10003C748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C748);
  }

  return result;
}

uint64_t FTServerBag.blockingWaitSeconds.getter()
{
  v1 = sub_100023974();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100023AC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100019624();
    if (swift_dynamicCast())
    {
      v3 = [v5 unsignedIntegerValue];

      return v3;
    }
  }

  else
  {
    sub_1000195BC(v8);
  }

  return 1;
}

id LiveLookupStoreProxy.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(type metadata accessor for CoreAnalyticsReporter()) init];
  sub_1000237D4();
  v2 = sub_1000237C4();
  v3 = sub_100020430(v1, v2, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t LiveLookupStoreProxy.imagePath.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_imagePath);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t LiveLookupStoreProxy.imagePath.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_imagePath);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void *LiveLookupStoreProxy.activeExtensions()()
{
  v46 = &_swiftEmptyArrayStorage;
  v1 = *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  v2 = sub_100023724();
  v4 = v2;
  if (v2 >> 62)
  {
    v5 = sub_100023B14();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_29:

    return &_swiftEmptyArrayStorage;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
  }

  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  v44 = &_swiftEmptyArrayStorage;
  *&v3 = 136315394;
  v40 = v3;
  v42 = v4;
  v43 = v4 & 0xC000000000000001;
  v41 = v5;
  do
  {
    if (v7)
    {
      v11 = sub_100023AF4();
    }

    else
    {
      v11 = *(v4 + 8 * v6 + 32);
    }

    v12 = v11;
    v13 = [v11 identifier];
    v14 = sub_100023984();
    v16 = v15;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = v14;
      v19 = objc_opt_self();
      v45[0] = 0;
      v20 = [v19 extensionWithIdentifier:v13 error:v45];

      if (v20)
      {
        v21 = v45[0];

        v22 = v12;
        sub_1000239E4();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100023A14();
        }

        sub_100023A24();

        v44 = v46;
      }

      else
      {
        v27 = v45[0];
        sub_1000235B4();

        swift_willThrow();
        if (qword_10003C5C8 != -1)
        {
          swift_once();
        }

        v28 = sub_1000238C4();
        sub_10000209C(v28, qword_10003C8F0);

        swift_errorRetain();
        v29 = sub_1000238A4();
        v30 = sub_100023A94();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v47 = v33;
          *v31 = v40;
          v45[0] = v18;
          v45[1] = v16;
          v34 = sub_100023994();
          v36 = sub_1000186C4(v34, v35, &v47);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2112;
          swift_errorRetain();
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v31 + 14) = v37;
          *v32 = v37;
          _os_log_impl(&_mh_execute_header, v29, v30, "ignoring extension in DB, but not installed on the system: %s error=%@", v31, 0x16u);
          sub_1000022C4(v32, &qword_10003C760, &qword_100028680);

          sub_100018E44(v33);
          v7 = v43;
        }

        else
        {
        }

        v5 = v41;
        v4 = v42;
      }
    }

    else
    {

      if (qword_10003C5C8 != -1)
      {
        swift_once();
      }

      v23 = sub_1000238C4();
      sub_10000209C(v23, qword_10003C8F0);
      v24 = v12;
      v25 = sub_1000238A4();
      v26 = sub_100023A94();

      if (os_log_type_enabled(v25, v26))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v24;
        *v9 = v24;
        v10 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "ignoring extension in DB with null identifier: %@", v8, 0xCu);
        sub_1000022C4(v9, &qword_10003C760, &qword_100028680);

        v7 = v43;
      }

      else
      {
      }
    }

    ++v6;
  }

  while (v5 != v6);

  return v44;
}

uint64_t LiveLookupStoreProxy.extensionIdentifier(for:)(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_100023984();

  return v2;
}

{
  v1 = [a1 dbExtension];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 identifier];

  v4 = sub_100023984();
  return v4;
}

id LiveLookupStoreProxy.extensionIdentifier(from:)(void *a1)
{
  result = [a1 dbExtension];
  if (result)
  {
    v2 = result;
    v3 = [result identifier];

    v4 = sub_100023984();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiveLookupStoreProxy.identityType(for:)(void *a1)
{
  v1 = [a1 type];
  if (v1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 2);
  }
}

uint64_t LiveLookupStoreProxy.getBlockingInfo(for:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  return sub_100023744();
}

void *LiveLookupStoreProxy.getBlockingInfo(for:with:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  v2 = sub_1000237A4();
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v3 = sub_1000238C4();
  sub_10000209C(v3, qword_10003C8F0);
  v4 = v2;
  v5 = sub_1000238A4();
  v6 = sub_100023A94();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v2;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "getBlockingInfo blockingInfo=%@", v7, 0xCu);
    sub_1000022C4(v8, &qword_10003C760, &qword_100028680);
  }

  return v2;
}

Swift::Bool __swiftcall LiveLookupStoreProxy.enabled(forExtensionWith:)(Swift::String forExtensionWith)
{
  object = forExtensionWith._object;
  countAndFlagsBits = forExtensionWith._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  v5 = sub_100023784();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100023B14())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_100023AF4();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 identifier];
      v13 = sub_100023984();
      v15 = v14;

      if (v13 == countAndFlagsBits && v15 == object)
      {

LABEL_17:

        v18 = [v10 isEnabled];

        return v18;
      }

      v17 = sub_100023B64();

      if (v17)
      {
        goto LABEL_17;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

uint64_t LiveLookupStoreProxy.setEnabled(_:forExtensionWith:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 304) = a3;
  *(v4 + 312) = v3;
  *(v4 + 296) = a2;
  *(v4 + 544) = a1;
  v5 = *(*(sub_100014304(&qword_10003C6D0, &qword_100028690) - 8) + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v6 = sub_100023684();
  *(v4 + 344) = v6;
  v7 = *(v6 - 8);
  *(v4 + 352) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 360) = swift_task_alloc();
  v9 = sub_100023614();
  *(v4 + 368) = v9;
  v10 = *(v9 - 8);
  *(v4 + 376) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  v12 = sub_100023854();
  *(v4 + 416) = v12;
  v13 = *(v12 - 8);
  *(v4 + 424) = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  *(v4 + 432) = v15;
  v16 = async function pointer to static Host.context()[1];
  v17 = swift_task_alloc();
  *(v4 + 440) = v17;
  *v17 = v4;
  v17[1] = sub_10001AD28;

  return static Host.context()(v15);
}

uint64_t sub_10001AD28()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return _swift_task_switch(sub_10001AE50, 0, 0);
}

uint64_t sub_10001AE50()
{
  v246 = v0;
  v1 = *(v0 + 432);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  sub_100023824();
  sub_100023844();
  *(v0 + 448) = sub_100014304(&qword_10003C768, &qword_100028698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028670;

  v248._countAndFlagsBits = 0x6B636F6C622ELL;
  v248._object = 0xE600000000000000;
  sub_1000239C4(v248);
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  *(inited + 48) = [objc_allocWithZone(CMLUseCaseConfig) initWithType:0 maxShards:10000000 cacheElementCount:0];
  v244 = v5;
  v245 = v4;

  v249._countAndFlagsBits = 0x7469746E6564692ELL;
  v249._object = 0xE900000000000079;
  sub_1000239C4(v249);
  *(inited + 56) = v5;
  *(inited + 64) = v4;
  *(inited + 72) = [objc_allocWithZone(CMLUseCaseConfig) initWithType:0 maxShards:10000000 cacheElementCount:0];
  v7 = sub_100015D30(inited);
  *(v0 + 456) = v7;
  swift_setDeallocating();
  sub_100014304(&qword_10003C770, &qword_1000286A0);
  swift_arrayDestroy();
  if (qword_10003C5C8 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v8 = sub_1000238C4();
    *(v0 + 464) = sub_10000209C(v8, qword_10003C8F0);

    v9 = sub_1000238A4();
    v10 = sub_100023A94();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v244 = v12;
      *v11 = 136315138;
      sub_100020C40();
      v13 = sub_100023964();
      v15 = sub_1000186C4(v13, v14, &v244);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "useCases=%s", v11, 0xCu);
      sub_100018E44(v12);
    }

    v16 = *(v0 + 360);
    v17 = *(v0 + 544);
    sub_100023674();
    v18 = &unk_10003C000;
    v240 = v7;
    v242 = v0;
    if (v17 == 1)
    {
      break;
    }

    v24 = 0;
    v25 = v7 + 64;
    v26 = -1;
    v27 = -1 << *(v7 + 32);
    if (-v27 < 64)
    {
      v26 = ~(-1 << -v27);
    }

    v28 = v26 & *(v7 + 64);
    v29 = (63 - v27) >> 6;
    while (v28)
    {
LABEL_18:
      v31 = (*(v7 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v28)))));
      v0 = *v31;
      v32 = v31[1];

      v33 = sub_1000238A4();
      v34 = sub_100023A94();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v244 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1000186C4(v0, v32, &v244);
        _os_log_impl(&_mh_execute_header, v33, v34, "unregistering group %s", v35, 0xCu);
        sub_100018E44(v36);

        v7 = v240;
      }

      v28 &= v28 - 1;
      sub_100020850(v0, v32);
    }

    while (1)
    {
      v30 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v30 >= v29)
      {
        v37 = *(v242 + 360);
        v18 = v242;
        v7 = *(v242 + 304);
        v38 = *(v242 + 312);
        v39 = *(v242 + 296);

        v40 = *(v38 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter);
        sub_100023664();
        v42 = -v41;
        v43 = sub_100023974();
        [v40 sendDisableWithTimeInterval:v43 for:v42];

        goto LABEL_21;
      }

      v28 = *(v25 + 8 * v30);
      ++v24;
      if (v28)
      {
        v24 = v30;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

  v19 = *(v0 + 432);
  v20 = sub_100023834();
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
LABEL_37:
    if (v22 != 2)
    {
      sub_100001F34(v20, v21);
      goto LABEL_43;
    }

    v64 = v20[2];
    v63 = v20[3];
    sub_100001F34(v20, v21);
  }

  else
  {
    if (!v22)
    {
      v23 = v21;
      sub_100001F34(v20, v21);
      if ((v23 & 0xFF000000000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_41:
      v66 = *(v0 + 432);
      v68 = sub_100023834();
      goto LABEL_44;
    }

    v65 = v20;
    sub_100001F34(v20, v21);
    v64 = v65;
    v63 = v65 >> 32;
  }

  v60 = v64 == v63;
  v0 = v242;
  if (!v60)
  {
    goto LABEL_41;
  }

LABEL_43:
  v68 = 0;
  v67 = 0xF000000000000000;
LABEL_44:
  *(v0 + 472) = v68;
  *(v0 + 480) = v67;
  v69 = *(v0 + 400);
  v228 = *(v0 + 408);
  v232 = v67;
  v71 = *(v0 + 368);
  v70 = *(v0 + 376);
  v72 = *(v0 + 336);
  v73 = *(v0 + 304);
  v74 = *(v0 + 296);
  v75 = (*(v0 + 312) + *(v18 + 1880));
  v76 = v75[4];
  sub_100018680(v75, v75[3]);
  v77 = sub_1000236D4();
  v221 = v70[2];
  v221(v72, v69, v71);
  v224 = v70[7];
  v224(v72, 0, 1, v71);
  sub_100020BD8(v68, v232);
  sub_1000235D4(v78);
  v80 = v79;
  v229 = v70[6];
  if (v229(v72, 1, v71) == 1)
  {
    v81 = 0;
  }

  else
  {
    v82 = *(v242 + 376);
    v83 = *(v242 + 368);
    v84 = v77;
    v85 = *(v242 + 336);
    sub_1000235D4(v242);
    v81 = v86;
    v87 = v85;
    v77 = v84;
    (*(v82 + 8))(v87, v83);
    v0 = v242;
  }

  if (v232 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100023634().super.isa;
    sub_100020C8C(v68, v232);
  }

  v89 = [objc_allocWithZone(CMLNetworkManager) initWithType:2 endpoint:v80 issuer:v81 authenticationToken:isa privacyProxyFailOpen:(v77 & 1) == 0];
  *(v0 + 488) = v89;

  v90 = v89;
  v91 = sub_1000238A4();
  v92 = sub_100023A94();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    v244 = v236;
    *v93 = 136315394;
    v94 = [v90 endpoint];
    if (v94)
    {
      v95 = *(v0 + 328);
      v96 = v94;
      sub_1000235F4();

      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v118 = *(v0 + 368);
    v120 = *(v0 + 320);
    v119 = *(v0 + 328);
    v224(v119, v97, 1, v118);
    sub_1000191B0(v119, v120, &qword_10003C6D0, &qword_100028690);
    if (v229(v120, 1, v118) == 1)
    {
      sub_1000022C4(*(v0 + 320), &qword_10003C6D0, &qword_100028690);
      v121 = 0xE300000000000000;
      v122 = 7104878;
    }

    else
    {
      v124 = *(v0 + 384);
      v123 = *(v0 + 392);
      v125 = *(v242 + 376);
      v126 = *(v242 + 368);
      (*(v125 + 32))(v123, *(v242 + 320), v126);
      v221(v124, v123, v126);
      v122 = sub_100023994();
      v121 = v127;
      (*(v125 + 8))(v123, v126);
      v0 = v242;
    }

    sub_1000022C4(*(v0 + 328), &qword_10003C6D0, &qword_100028690);
    v128 = sub_1000186C4(v122, v121, &v244);

    *(v93 + 4) = v128;
    *(v93 + 12) = 1024;
    LODWORD(v128) = [v90 privacyProxyFailOpen];

    *(v93 + 14) = v128;
    _os_log_impl(&_mh_execute_header, v91, v92, "networkConfig endpoint=%s privacyProxyFailOpen=%{BOOL}d", v93, 0x12u);
    sub_100018E44(v236);
  }

  else
  {
  }

  v129 = *(v240 + 32);
  *(v0 + 545) = v129;
  v130 = -1;
  v131 = -1 << v129;
  if (-v131 < 64)
  {
    v130 = ~(-1 << -v131);
  }

  v132 = v130 & v240[8];
  if (v132)
  {
    v133 = 0;
    v134 = *(v0 + 456);
LABEL_70:
    *(v0 + 496) = v132;
    *(v0 + 504) = v133;
    v137 = *(v242 + 488);
    v138 = *(v242 + 448);
    v139 = __clz(__rbit64(v132)) | (v133 << 6);
    v140 = (*(v134 + 48) + 16 * v139);
    v142 = *v140;
    v141 = v140[1];
    v143 = *(*(v134 + 56) + 8 * v139);
    *(v242 + 512) = v143;
    v144 = swift_initStackObject();
    *(v144 + 16) = xmmword_100028490;
    *(v144 + 32) = v142;
    *(v144 + 40) = v141;
    *(v144 + 48) = v143;
    swift_bridgeObjectRetain_n();
    v145 = v143;
    sub_100015D30(v144);
    swift_setDeallocating();
    sub_1000022C4(v144 + 32, &qword_10003C770, &qword_1000286A0);
    v146 = objc_allocWithZone(CMLUseCaseGroup);
    sub_100020C40();
    v147 = v137;
    v148 = sub_100023954().super.isa;

    v149 = [v146 initWithKeyExpirationMinutes:10080 keyRotationBeforeExpirationMinutes:1440 useCases:v148 networkConfig:v147];
    *(v242 + 520) = v149;

    v150 = [objc_opt_self() sharedManager];
    v151 = sub_100023974();
    *(v242 + 280) = 0;
    LODWORD(v147) = [v150 configureGroupWithName:v151 useCaseGroup:v149 error:v242 + 280];

    v152 = *(v242 + 280);
    v153 = *(v242 + 464);
    if (v147)
    {

      v154 = v152;
      v155 = sub_1000238A4();
      v156 = sub_100023A94();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v244 = v158;
        *v157 = 136315138;
        *(v157 + 4) = sub_1000186C4(v142, v141, &v244);
        _os_log_impl(&_mh_execute_header, v155, v156, "configured group %s", v157, 0xCu);
        sub_100018E44(v158);
      }

      v160 = *(v242 + 296);
      v159 = *(v242 + 304);
      v238 = objc_opt_self();
      v161 = objc_allocWithZone(CMLClientConfig);
      v162 = sub_100023974();

      v163 = sub_100023974();
      v164 = [v161 initWithUseCase:v162 sourceApplicationBundleIdentifier:v163];
      *(v242 + 528) = v164;

      *(v242 + 16) = v242;
      *(v242 + 56) = v242 + 288;
      *(v242 + 24) = sub_10001C4E4;
      v165 = swift_continuation_init();
      *(v242 + 216) = sub_100014304(&qword_10003C790, &qword_1000286A8);
      *(v242 + 160) = _NSConcreteStackBlock;
      *(v242 + 168) = 1107296256;
      *(v242 + 176) = sub_10001E140;
      *(v242 + 184) = &unk_100035478;
      *(v242 + 192) = v165;
      [v238 requestStatusForClientConfig:v164 options:10 completionHandler:v242 + 160];

      return _swift_continuation_await(v242 + 16);
    }

    v166 = *(v242 + 456);
    v167 = v152;

    sub_1000235B4();

    swift_willThrow();

    swift_errorRetain();
    v168 = sub_1000238A4();
    v169 = sub_100023A94();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *v170 = 138412290;
      swift_errorRetain();
      v172 = _swift_stdlib_bridgeErrorToNSError();
      *(v170 + 4) = v172;
      *v171 = v172;
      _os_log_impl(&_mh_execute_header, v168, v169, "configure failed %@", v170, 0xCu);
      sub_1000022C4(v171, &qword_10003C760, &qword_100028680);
    }

    v173 = v242;
    v174 = *(v242 + 312);

    v175 = *(v174 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter);
    v176 = sub_1000235A4();
    v177 = [v176 code];

    if ((v177 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v179 = *(v242 + 480);
    v178 = *(v242 + 488);
    v180 = *(v242 + 472);
    v181 = *(v242 + 296);
    v182 = *(v242 + 304);
    v183 = sub_100023974();
    [v175 sendEnableWithError:v177 for:v183];

    sub_100020850(v181, v182);
    swift_willThrow();

    sub_100020C8C(v180, v179);
    goto LABEL_88;
  }

  v135 = 0;
  v136 = ((63 - v131) >> 6) - 1;
  while (v136 != v135)
  {
    v133 = v135 + 1;
    v134 = *(v0 + 456);
    v132 = *(v134 + 8 * v135++ + 72);
    if (v132)
    {
      goto LABEL_70;
    }
  }

  v18 = v0;
  v184 = *(v0 + 488);
  v185 = *(v18 + 472);
  v7 = *(v18 + 480);
  v186 = *(v18 + 456);
  v187 = *(v18 + 360);
  v188 = *(v18 + 304);
  v189 = *(v18 + 312);
  v190 = *(v18 + 296);

  v191 = *(v189 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter);
  sub_100023664();
  v193 = -v192;
  v194 = sub_100023974();
  [v191 sendEnableWithTimeInterval:v194 for:v193];

  sub_100020C8C(v185, v7);
LABEL_21:
  v44 = *(v18 + 304);
  v45 = *(v18 + 296);
  v46 = (*(v18 + 312) + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore);
  v47 = v46[4];
  sub_100018680(v46, v46[3]);
  sub_100023714();
  v48 = v46[4];
  v227 = v46;
  sub_100018680(v46, v46[3]);
  v49 = sub_100023784();
  v50 = v49;
  v0 = v18;
  if (v49 >> 62)
  {
    v51 = sub_100023B14();
    if (v51)
    {
LABEL_23:
      v52 = 0;
      v235 = v50 & 0xC000000000000001;
      v231 = v50 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v235)
        {
          v20 = sub_100023AF4();
          v7 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v52 >= *(v231 + 16))
          {
            goto LABEL_82;
          }

          v20 = *(v50 + 8 * v52 + 32);
          v7 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        v53 = v50;
        v54 = *(v0 + 296);
        v55 = *(v0 + 304);
        v240 = v20;
        v56 = [v20 identifier];
        v57 = sub_100023984();
        v59 = v58;

        v60 = v57 == v54 && v59 == v55;
        if (v60)
        {
          break;
        }

        v61 = *(v0 + 296);
        v62 = *(v0 + 304);
        v18 = sub_100023B64();

        v50 = v53;
        if (v18)
        {
          goto LABEL_55;
        }

        ++v52;
        if (v7 == v51)
        {
          goto LABEL_85;
        }
      }

LABEL_55:
      v98 = *(v0 + 464);
      v99 = *(v0 + 304);

      v100 = sub_1000238A4();
      v101 = sub_100023A94();

      if (os_log_type_enabled(v100, v101))
      {
        v103 = *(v0 + 296);
        v102 = *(v0 + 304);
        v104 = *(v242 + 544);
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v244 = v106;
        *v105 = 136315394;
        *(v105 + 4) = sub_1000186C4(v103, v102, &v244);
        *(v105 + 12) = 1024;
        *(v105 + 14) = v104;
        v0 = v242;
        _os_log_impl(&_mh_execute_header, v100, v101, "setting %s enabled to %{BOOL}d", v105, 0x12u);
        sub_100018E44(v106);
      }

      v107 = *(v0 + 432);
      v108 = *(v242 + 424);
      v220 = *(v242 + 408);
      v222 = *(v242 + 416);
      v223 = *(v242 + 392);
      v225 = *(v242 + 384);
      v109 = *(v242 + 376);
      v110 = *(v242 + 368);
      v218 = *(v242 + 360);
      v219 = *(v242 + 400);
      v111 = *(v242 + 352);
      v217 = *(v242 + 344);
      v226 = *(v242 + 336);
      v233 = *(v242 + 328);
      v237 = *(v242 + 320);
      v112 = *(v242 + 544);
      v113 = v227[4];
      sub_100018680(v227, v227[3]);
      sub_1000236F4();
      v114 = sub_100023AA4();
      sub_100023984();

      v115 = sub_1000239A4();

      notify_post((v115 + 32));

      (*(v111 + 8))(v218, v217);
      v116 = *(v109 + 8);
      v116(v219, v110);
      v116(v220, v110);
      (*(v108 + 8))(v107, v222);

      v117 = *(v242 + 8);
      goto LABEL_89;
    }
  }

  else
  {
    v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      goto LABEL_23;
    }
  }

LABEL_85:
  v195 = *(v0 + 464);
  v196 = *(v0 + 304);

  v197 = sub_1000238A4();
  v198 = sub_100023A84();

  if (os_log_type_enabled(v197, v198))
  {
    v200 = *(v0 + 296);
    v199 = *(v0 + 304);
    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v244 = v202;
    *v201 = 136315138;
    *(v201 + 4) = sub_1000186C4(v200, v199, &v244);
    _os_log_impl(&_mh_execute_header, v197, v198, "Cannot find extension %s in DB", v201, 0xCu);
    sub_100018E44(v202);
  }

  v204 = *(v0 + 296);
  v203 = *(v0 + 304);
  v244 = 0;
  v245 = 0xE000000000000000;
  sub_100023AE4(20);

  v244 = 0xD000000000000012;
  v245 = 0x8000000100029310;
  v250._countAndFlagsBits = v204;
  v250._object = v203;
  sub_1000239C4(v250);
  v173 = v0;
  v205 = v244;
  v206 = v245;
  sub_100020B84();
  swift_allocError();
  *v207 = v205;
  v207[1] = v206;
  swift_willThrow();
LABEL_88:
  v209 = v173[53];
  v208 = v173[54];
  v211 = v173[51];
  v210 = v173[52];
  v212 = v173[50];
  v213 = v173[47];
  v230 = v173[49];
  v234 = v173[48];
  v214 = v173[46];
  v239 = v173[42];
  v241 = v173[41];
  v243 = v173[40];
  (*(v173[44] + 8))(v173[45], v173[43]);
  v215 = *(v213 + 8);
  v215(v212, v214);
  v215(v211, v214);
  (*(v209 + 8))(v208, v210);

  v117 = v173[1];
LABEL_89:

  return v117();
}

uint64_t sub_10001C4E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  if (v2)
  {
    v3 = sub_10001D330;
  }

  else
  {
    v3 = sub_10001C620;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001C620()
{
  v152 = v0;
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);

  v4 = *(v0 + 288);
  v5 = *(v0 + 504);
  v6 = (*(v0 + 496) - 1) & *(v0 + 496);
  if (v6)
  {
    v7 = *(v0 + 456);
    goto LABEL_7;
  }

  while (1)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v8 >= (((1 << *(v0 + 545)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v0 + 456);
    v6 = *(v7 + 8 * v8 + 64);
    ++v5;
    if (v6)
    {
      v5 = v8;
LABEL_7:
      *(v0 + 496) = v6;
      *(v0 + 504) = v5;
      v9 = *(v0 + 488);
      v10 = *(v0 + 448);
      v11 = __clz(__rbit64(v6)) | (v5 << 6);
      v12 = (*(v7 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(v7 + 56) + 8 * v11);
      *(v0 + 512) = v15;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100028490;
      *(inited + 32) = v14;
      *(inited + 40) = v13;
      *(inited + 48) = v15;
      swift_bridgeObjectRetain_n();
      v17 = v15;
      sub_100015D30(inited);
      swift_setDeallocating();
      sub_1000022C4(inited + 32, &qword_10003C770, &qword_1000286A0);
      v18 = objc_allocWithZone(CMLUseCaseGroup);
      sub_100020C40();
      v19 = v9;
      isa = sub_100023954().super.isa;

      v21 = [v18 initWithKeyExpirationMinutes:10080 keyRotationBeforeExpirationMinutes:1440 useCases:isa networkConfig:v19];
      *(v0 + 520) = v21;

      v22 = [objc_opt_self() sharedManager];
      v23 = sub_100023974();
      *(v0 + 280) = 0;
      LODWORD(v19) = [v22 configureGroupWithName:v23 useCaseGroup:v21 error:v0 + 280];

      v24 = *(v0 + 280);
      if (v19)
      {
        v25 = *(v0 + 464);

        v26 = v24;
        v27 = sub_1000238A4();
        v28 = sub_100023A94();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v150 = v30;
          *v29 = 136315138;
          *(v29 + 4) = sub_1000186C4(v14, v13, &v150);
          _os_log_impl(&_mh_execute_header, v27, v28, "configured group %s", v29, 0xCu);
          sub_100018E44(v30);
        }

        v32 = *(v0 + 296);
        v31 = *(v0 + 304);
        v144 = objc_opt_self();
        v33 = objc_allocWithZone(CMLClientConfig);
        v34 = sub_100023974();

        v35 = sub_100023974();
        v36 = [v33 initWithUseCase:v34 sourceApplicationBundleIdentifier:v35];
        *(v0 + 528) = v36;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 288;
        *(v0 + 24) = sub_10001C4E4;
        v37 = swift_continuation_init();
        *(v0 + 216) = sub_100014304(&qword_10003C790, &qword_1000286A8);
        *(v0 + 160) = _NSConcreteStackBlock;
        *(v0 + 168) = 1107296256;
        *(v0 + 176) = sub_10001E140;
        *(v0 + 184) = &unk_100035478;
        *(v0 + 192) = v37;
        [v144 requestStatusForClientConfig:v36 options:10 completionHandler:v0 + 160];

        return _swift_continuation_await(v0 + 16);
      }

      v1 = *(v0 + 456);
      v38 = *(v0 + 464);
      v39 = v24;

      sub_1000235B4();

      swift_willThrow();

      swift_errorRetain();
      v40 = sub_1000238A4();
      v41 = sub_100023A94();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "configure failed %@", v42, 0xCu);
        sub_1000022C4(v43, &qword_10003C760, &qword_100028680);
      }

      v45 = *(v0 + 312);

      v46 = *(v45 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter);
      v47 = sub_1000235A4();
      v48 = [v47 code];

      if ((v48 & 0x8000000000000000) == 0)
      {
        v50 = *(v0 + 480);
        v49 = *(v0 + 488);
        v51 = *(v0 + 472);
        v53 = *(v0 + 296);
        v52 = *(v0 + 304);
        v54 = sub_100023974();
        [v46 sendEnableWithError:v48 for:v54];

        sub_100020850(v53, v52);
        swift_willThrow();

        sub_100020C8C(v51, v50);
LABEL_44:
        v120 = *(v0 + 424);
        v121 = *(v0 + 432);
        v123 = *(v0 + 408);
        v122 = *(v0 + 416);
        v124 = *(v0 + 400);
        v125 = *(v0 + 376);
        v138 = *(v0 + 392);
        v140 = *(v0 + 384);
        v126 = *(v0 + 368);
        v143 = *(v0 + 336);
        v147 = *(v0 + 328);
        v149 = *(v0 + 320);
        (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
        v127 = *(v125 + 8);
        v127(v124, v126);
        v127(v123, v126);
        (*(v120 + 8))(v121, v122);

        v106 = *(v0 + 8);
        goto LABEL_45;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v73 = sub_100023B14();
      if (!v73)
      {
        goto LABEL_41;
      }

      goto LABEL_19;
    }
  }

  v55 = *(v0 + 480);
  v56 = *(v0 + 488);
  v57 = *(v0 + 472);
  v58 = *(v0 + 456);
  v59 = *(v0 + 360);
  v60 = *(v0 + 304);
  v61 = *(v0 + 312);
  v62 = *(v0 + 296);

  v63 = *(v61 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter);
  sub_100023664();
  v65 = -v64;
  v66 = sub_100023974();
  [v63 sendEnableWithTimeInterval:v66 for:v65];

  sub_100020C8C(v57, v55);
  v67 = *(v0 + 304);
  v68 = *(v0 + 296);
  v69 = (*(v0 + 312) + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore);
  v70 = v69[4];
  sub_100018680(v69, v69[3]);
  sub_100023714();
  v71 = v69[4];
  v139 = v69;
  sub_100018680(v69, v69[3]);
  v72 = sub_100023784();
  v1 = v72;
  if (v72 >> 62)
  {
    goto LABEL_40;
  }

  v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v73)
  {
LABEL_41:
    v107 = *(v0 + 464);
    v108 = *(v0 + 304);

    v109 = sub_1000238A4();
    v110 = sub_100023A84();

    if (os_log_type_enabled(v109, v110))
    {
      v112 = *(v0 + 296);
      v111 = *(v0 + 304);
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v150 = v114;
      *v113 = 136315138;
      *(v113 + 4) = sub_1000186C4(v112, v111, &v150);
      _os_log_impl(&_mh_execute_header, v109, v110, "Cannot find extension %s in DB", v113, 0xCu);
      sub_100018E44(v114);
    }

    v116 = *(v0 + 296);
    v115 = *(v0 + 304);
    v150 = 0;
    v151 = 0xE000000000000000;
    sub_100023AE4(20);

    v150 = 0xD000000000000012;
    v151 = 0x8000000100029310;
    v154._countAndFlagsBits = v116;
    v154._object = v115;
    sub_1000239C4(v154);
    v118 = v150;
    v117 = v151;
    sub_100020B84();
    swift_allocError();
    *v119 = v118;
    v119[1] = v117;
    swift_willThrow();
    goto LABEL_44;
  }

LABEL_19:
  v74 = 0;
  v141 = v1 & 0xFFFFFFFFFFFFFF8;
  v145 = (v1 & 0xC000000000000001);
  while (v145)
  {
    v75 = sub_100023AF4();
    v76 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_32;
    }

LABEL_23:
    v77 = v1;
    v78 = *(v0 + 296);
    v79 = *(v0 + 304);
    v148 = v75;
    v80 = [v75 identifier];
    v81 = sub_100023984();
    v83 = v82;

    if (v81 == v78 && v83 == v79)
    {
      goto LABEL_33;
    }

    v85 = *(v0 + 296);
    v86 = *(v0 + 304);
    v87 = sub_100023B64();

    v1 = v77;
    if (v87)
    {
      goto LABEL_34;
    }

    ++v74;
    if (v76 == v73)
    {
      goto LABEL_41;
    }
  }

  if (v74 >= *(v141 + 16))
  {
    goto LABEL_38;
  }

  v75 = *(v1 + 8 * v74 + 32);
  v76 = v74 + 1;
  if (!__OFADD__(v74, 1))
  {
    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
LABEL_33:

LABEL_34:
  v88 = *(v0 + 464);
  v89 = *(v0 + 304);

  v90 = sub_1000238A4();
  v91 = sub_100023A94();

  if (os_log_type_enabled(v90, v91))
  {
    v93 = *(v0 + 296);
    v92 = *(v0 + 304);
    v94 = *(v0 + 544);
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v150 = v96;
    *v95 = 136315394;
    *(v95 + 4) = sub_1000186C4(v93, v92, &v150);
    *(v95 + 12) = 1024;
    *(v95 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v90, v91, "setting %s enabled to %{BOOL}d", v95, 0x12u);
    sub_100018E44(v96);
  }

  v97 = *(v0 + 424);
  v133 = *(v0 + 416);
  v134 = *(v0 + 432);
  v131 = *(v0 + 400);
  v132 = *(v0 + 408);
  v98 = *(v0 + 376);
  v135 = *(v0 + 392);
  v136 = *(v0 + 384);
  v99 = *(v0 + 368);
  v100 = *(v0 + 352);
  v129 = *(v0 + 344);
  v130 = *(v0 + 360);
  v137 = *(v0 + 336);
  v142 = *(v0 + 328);
  v146 = *(v0 + 320);
  v101 = *(v0 + 544);
  v102 = v139[4];
  sub_100018680(v139, v139[3]);
  sub_1000236F4();
  v103 = sub_100023AA4();
  sub_100023984();

  v104 = sub_1000239A4();

  notify_post((v104 + 32));

  (*(v100 + 8))(v130, v129);
  v105 = *(v98 + 8);
  v105(v131, v99);
  v105(v132, v99);
  (*(v97 + 8))(v134, v133);

  v106 = *(v0 + 8);
LABEL_45:

  return v106();
}

uint64_t sub_10001D330()
{
  v160 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 464);
  swift_willThrow();

  swift_errorRetain();
  v4 = sub_1000238A4();
  v5 = sub_100023A94();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 536);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "register failed %@, ignoring", v10, 0xCu);
    sub_1000022C4(v11, &qword_10003C760, &qword_100028680);
  }

  else
  {
  }

  v13 = *(v0 + 504);
  v14 = (*(v0 + 496) - 1) & *(v0 + 496);
  if (v14)
  {
    v15 = *(v0 + 456);
    goto LABEL_10;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v16 >= (((1 << *(v0 + 545)) + 63) >> 6))
    {
      break;
    }

    v15 = *(v0 + 456);
    v14 = *(v15 + 8 * v16 + 64);
    ++v13;
    if (v14)
    {
      v13 = v16;
LABEL_10:
      *(v0 + 496) = v14;
      *(v0 + 504) = v13;
      v17 = *(v0 + 488);
      v18 = *(v0 + 448);
      v19 = __clz(__rbit64(v14)) | (v13 << 6);
      v20 = (*(v15 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v15 + 56) + 8 * v19);
      *(v0 + 512) = v23;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100028490;
      *(inited + 32) = v22;
      *(inited + 40) = v21;
      *(inited + 48) = v23;
      swift_bridgeObjectRetain_n();
      v25 = v23;
      sub_100015D30(inited);
      swift_setDeallocating();
      sub_1000022C4(inited + 32, &qword_10003C770, &qword_1000286A0);
      v26 = objc_allocWithZone(CMLUseCaseGroup);
      sub_100020C40();
      v27 = v17;
      isa = sub_100023954().super.isa;

      v29 = [v26 initWithKeyExpirationMinutes:10080 keyRotationBeforeExpirationMinutes:1440 useCases:isa networkConfig:v27];
      *(v0 + 520) = v29;

      v30 = [objc_opt_self() sharedManager];
      v31 = sub_100023974();
      *(v0 + 280) = 0;
      LODWORD(v27) = [v30 configureGroupWithName:v31 useCaseGroup:v29 error:v0 + 280];

      v32 = *(v0 + 280);
      if (v27)
      {
        v33 = *(v0 + 464);

        v34 = v32;
        v35 = sub_1000238A4();
        v36 = sub_100023A94();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v158 = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_1000186C4(v22, v21, &v158);
          _os_log_impl(&_mh_execute_header, v35, v36, "configured group %s", v37, 0xCu);
          sub_100018E44(v38);
        }

        v40 = *(v0 + 296);
        v39 = *(v0 + 304);
        v152 = objc_opt_self();
        v41 = objc_allocWithZone(CMLClientConfig);
        v42 = sub_100023974();

        v43 = sub_100023974();
        v44 = [v41 initWithUseCase:v42 sourceApplicationBundleIdentifier:v43];
        *(v0 + 528) = v44;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 288;
        *(v0 + 24) = sub_10001C4E4;
        v45 = swift_continuation_init();
        *(v0 + 216) = sub_100014304(&qword_10003C790, &qword_1000286A8);
        *(v0 + 160) = _NSConcreteStackBlock;
        *(v0 + 168) = 1107296256;
        *(v0 + 176) = sub_10001E140;
        *(v0 + 184) = &unk_100035478;
        *(v0 + 192) = v45;
        [v152 requestStatusForClientConfig:v44 options:10 completionHandler:v0 + 160];

        return _swift_continuation_await(v0 + 16);
      }

      v8 = *(v0 + 456);
      v46 = *(v0 + 464);
      v47 = v32;

      sub_1000235B4();

      swift_willThrow();

      swift_errorRetain();
      v48 = sub_1000238A4();
      v49 = sub_100023A94();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        swift_errorRetain();
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v52;
        *v51 = v52;
        _os_log_impl(&_mh_execute_header, v48, v49, "configure failed %@", v50, 0xCu);
        sub_1000022C4(v51, &qword_10003C760, &qword_100028680);
      }

      v53 = *(v0 + 312);

      v54 = *(v53 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter);
      v55 = sub_1000235A4();
      v56 = [v55 code];

      if ((v56 & 0x8000000000000000) == 0)
      {
        v58 = *(v0 + 480);
        v57 = *(v0 + 488);
        v59 = *(v0 + 472);
        v61 = *(v0 + 296);
        v60 = *(v0 + 304);
        v62 = sub_100023974();
        [v54 sendEnableWithError:v56 for:v62];

        sub_100020850(v61, v60);
        swift_willThrow();

        sub_100020C8C(v59, v58);
LABEL_47:
        v128 = *(v0 + 424);
        v129 = *(v0 + 432);
        v131 = *(v0 + 408);
        v130 = *(v0 + 416);
        v132 = *(v0 + 400);
        v133 = *(v0 + 376);
        v146 = *(v0 + 392);
        v148 = *(v0 + 384);
        v134 = *(v0 + 368);
        v151 = *(v0 + 336);
        v155 = *(v0 + 328);
        v157 = *(v0 + 320);
        (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
        v135 = *(v133 + 8);
        v135(v132, v134);
        v135(v131, v134);
        (*(v128 + 8))(v129, v130);

        v114 = *(v0 + 8);
        goto LABEL_48;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      v81 = sub_100023B14();
      if (!v81)
      {
        goto LABEL_44;
      }

      goto LABEL_22;
    }
  }

  v63 = *(v0 + 480);
  v64 = *(v0 + 488);
  v65 = *(v0 + 472);
  v66 = *(v0 + 456);
  v67 = *(v0 + 360);
  v68 = *(v0 + 304);
  v69 = *(v0 + 312);
  v70 = *(v0 + 296);

  v71 = *(v69 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter);
  sub_100023664();
  v73 = -v72;
  v74 = sub_100023974();
  [v71 sendEnableWithTimeInterval:v74 for:v73];

  sub_100020C8C(v65, v63);
  v75 = *(v0 + 304);
  v76 = *(v0 + 296);
  v77 = (*(v0 + 312) + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore);
  v78 = v77[4];
  sub_100018680(v77, v77[3]);
  sub_100023714();
  v79 = v77[4];
  v147 = v77;
  sub_100018680(v77, v77[3]);
  v80 = sub_100023784();
  v8 = v80;
  if (v80 >> 62)
  {
    goto LABEL_43;
  }

  v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v81)
  {
LABEL_44:
    v115 = *(v0 + 464);
    v116 = *(v0 + 304);

    v117 = sub_1000238A4();
    v118 = sub_100023A84();

    if (os_log_type_enabled(v117, v118))
    {
      v120 = *(v0 + 296);
      v119 = *(v0 + 304);
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v158 = v122;
      *v121 = 136315138;
      *(v121 + 4) = sub_1000186C4(v120, v119, &v158);
      _os_log_impl(&_mh_execute_header, v117, v118, "Cannot find extension %s in DB", v121, 0xCu);
      sub_100018E44(v122);
    }

    v124 = *(v0 + 296);
    v123 = *(v0 + 304);
    v158 = 0;
    v159 = 0xE000000000000000;
    sub_100023AE4(20);

    v158 = 0xD000000000000012;
    v159 = 0x8000000100029310;
    v162._countAndFlagsBits = v124;
    v162._object = v123;
    sub_1000239C4(v162);
    v126 = v158;
    v125 = v159;
    sub_100020B84();
    swift_allocError();
    *v127 = v126;
    v127[1] = v125;
    swift_willThrow();
    goto LABEL_47;
  }

LABEL_22:
  v82 = 0;
  v149 = v8 & 0xFFFFFFFFFFFFFF8;
  v153 = (v8 & 0xC000000000000001);
  while (v153)
  {
    v83 = sub_100023AF4();
    v84 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      goto LABEL_35;
    }

LABEL_26:
    v85 = v8;
    v86 = *(v0 + 296);
    v87 = *(v0 + 304);
    v156 = v83;
    v88 = [v83 identifier];
    v89 = sub_100023984();
    v91 = v90;

    if (v89 == v86 && v91 == v87)
    {
      goto LABEL_36;
    }

    v93 = *(v0 + 296);
    v94 = *(v0 + 304);
    v95 = sub_100023B64();

    v8 = v85;
    if (v95)
    {
      goto LABEL_37;
    }

    ++v82;
    if (v84 == v81)
    {
      goto LABEL_44;
    }
  }

  if (v82 >= *(v149 + 16))
  {
    goto LABEL_41;
  }

  v83 = *(v8 + 8 * v82 + 32);
  v84 = v82 + 1;
  if (!__OFADD__(v82, 1))
  {
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
LABEL_36:

LABEL_37:
  v96 = *(v0 + 464);
  v97 = *(v0 + 304);

  v98 = sub_1000238A4();
  v99 = sub_100023A94();

  if (os_log_type_enabled(v98, v99))
  {
    v101 = *(v0 + 296);
    v100 = *(v0 + 304);
    v102 = *(v0 + 544);
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v158 = v104;
    *v103 = 136315394;
    *(v103 + 4) = sub_1000186C4(v101, v100, &v158);
    *(v103 + 12) = 1024;
    *(v103 + 14) = v102;
    _os_log_impl(&_mh_execute_header, v98, v99, "setting %s enabled to %{BOOL}d", v103, 0x12u);
    sub_100018E44(v104);
  }

  v105 = *(v0 + 424);
  v141 = *(v0 + 416);
  v142 = *(v0 + 432);
  v139 = *(v0 + 400);
  v140 = *(v0 + 408);
  v106 = *(v0 + 376);
  v143 = *(v0 + 392);
  v144 = *(v0 + 384);
  v107 = *(v0 + 368);
  v108 = *(v0 + 352);
  v137 = *(v0 + 344);
  v138 = *(v0 + 360);
  v145 = *(v0 + 336);
  v150 = *(v0 + 328);
  v154 = *(v0 + 320);
  v109 = *(v0 + 544);
  v110 = v147[4];
  sub_100018680(v147, v147[3]);
  sub_1000236F4();
  v111 = sub_100023AA4();
  sub_100023984();

  v112 = sub_1000239A4();

  notify_post((v112 + 32));

  (*(v108 + 8))(v138, v137);
  v113 = *(v106 + 8);
  v113(v139, v107);
  v113(v140, v107);
  (*(v105 + 8))(v142, v141);

  v114 = *(v0 + 8);
LABEL_48:

  return v114();
}

uint64_t sub_10001E140(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100018680((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100014304(&qword_10003C738, &qword_1000285E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10001E3A0(char a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_100023984();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10001E484;

  return LiveLookupStoreProxy.setEnabled(_:forExtensionWith:)(a1, v7, v9);
}

uint64_t sub_10001E484()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_1000235A4();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

Swift::Void __swiftcall LiveLookupStoreProxy.cleanup()()
{
  v1 = *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  v55 = (v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore);
  sub_100018680((v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  v2 = sub_100023764();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_100020850(v5, v6);

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = v55[4];
  sub_100018680(v55, v55[3]);
  v8 = sub_100023784();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_100023B14();
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_6:
      v11 = objc_opt_self();
      if (v10 < 1)
      {
        __break(1u);
      }

      v13 = v11;
      v14 = 0;
      v56 = v9 & 0xC000000000000001;
      v15 = &OBJC_PROTOCOL____TtP42com_apple_CallKit_CallDirectoryMaintenance29CoreAnalyticsReporterProtocol_;
      *&v12 = 136315394;
      v50 = v12;
      v53 = v10;
      v54 = v9;
      v52 = v11;
      do
      {
        if (v56)
        {
          v17 = sub_100023AF4();
        }

        else
        {
          v17 = *(v9 + 8 * v14 + 32);
        }

        v18 = v17;
        v19 = [v17 v15[47].opt:v50 class:?meths];
        v20 = sub_100023984();
        v22 = v21;

        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (!v23)
        {
          if (qword_10003C5C8 != -1)
          {
            swift_once();
          }

          v24 = sub_1000238C4();
          sub_10000209C(v24, qword_10003C8F0);
          v25 = v18;
          v26 = sub_1000238A4();
          v27 = sub_100023A94();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *v28 = 138412290;
            *(v28 + 4) = v25;
            *v29 = v25;
            v30 = v25;
            _os_log_impl(&_mh_execute_header, v26, v27, "found empty extension, marking it for deletion: %@", v28, 0xCu);
            sub_1000022C4(v29, &qword_10003C760, &qword_100028680);
          }

          v31 = v55[4];
          sub_100018680(v55, v55[3]);
          sub_100023704();
          v15 = &OBJC_PROTOCOL____TtP42com_apple_CallKit_CallDirectoryMaintenance29CoreAnalyticsReporterProtocol_;
        }

        v32 = [v18 v15[47].opt_class_meths];
        v57[0] = 0;
        v33 = [v13 extensionWithIdentifier:v32 error:v57];

        if (v33)
        {
          v34 = v57[0];
        }

        else
        {
          v35 = v57[0];
          sub_1000235B4();

          swift_willThrow();
          if (qword_10003C5C8 != -1)
          {
            swift_once();
          }

          v36 = sub_1000238C4();
          sub_10000209C(v36, qword_10003C8F0);
          v37 = v18;
          swift_errorRetain();
          v38 = sub_1000238A4();
          v39 = sub_100023A94();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v58 = v51;
            *v40 = v50;
            v42 = [v37 v15[47].opt_class_meths];
            v43 = sub_100023984();
            v45 = v44;

            v57[0] = v43;
            v57[1] = v45;
            v15 = &OBJC_PROTOCOL____TtP42com_apple_CallKit_CallDirectoryMaintenance29CoreAnalyticsReporterProtocol_;
            v46 = sub_100023994();
            v48 = sub_1000186C4(v46, v47, &v58);

            *(v40 + 4) = v48;
            *(v40 + 12) = 2112;
            swift_errorRetain();
            v49 = _swift_stdlib_bridgeErrorToNSError();
            *(v40 + 14) = v49;
            *v41 = v49;
            _os_log_impl(&_mh_execute_header, v38, v39, "extension in DB, but not installed on the system: %s error=%@", v40, 0x16u);
            sub_1000022C4(v41, &qword_10003C760, &qword_100028680);

            sub_100018E44(v51);
          }

          v16 = v55[4];
          sub_100018680(v55, v55[3]);
          sub_100023754();

          v10 = v53;
          v9 = v54;
          v13 = v52;
        }

        ++v14;
      }

      while (v10 != v14);

      return;
    }
  }
}

Swift::Void __swiftcall LiveLookupStoreProxy.reset(forExtensionWith:)(Swift::String forExtensionWith)
{
  v2 = *(v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  sub_100023714();
}

uint64_t LiveLookupStoreProxy.updateBlockingInfo(for:with:shouldBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v9 = sub_1000238C4();
  sub_10000209C(v9, qword_10003C8F0);

  v10 = sub_1000238A4();
  v11 = sub_100023A94();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1000186C4(a1, a2, &v16);
    *(v12 + 12) = 1024;
    *(v12 + 14) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "updating blocking info handle=%s shouldBlock=%{BOOL}d", v12, 0x12u);
    sub_100018E44(v13);
  }

  v14 = *(v5 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v5 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v5 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  return sub_100023774();
}

uint64_t LiveLookupStoreProxy.updateIdentityInfo(for:with:name:iconURL:type:ttlMinutes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v23 = a8;
  v22[3] = a5;
  v22[4] = a6;
  v22[1] = a3;
  v22[2] = a4;
  v10 = sub_1000237E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (__chkstk_darwin)();
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v22 - v16;
  v18 = *(v8 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v8 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v8 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  v19 = &enum case for IdentityType.business(_:);
  v20 = &enum case for IdentityType.person(_:);
  if (a7 != 1)
  {
    v20 = &enum case for IdentityType.unknown(_:);
  }

  if (a7 != 2)
  {
    v19 = v20;
  }

  (*(v11 + 104))(v15, *v19, v10);
  (*(v11 + 32))(v17, v15, v10);
  sub_1000236E4();
  return (*(v11 + 8))(v17, v10);
}

uint64_t CXCallDirectoryIdentificationEntryType.identityType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000237E4();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for IdentityType.unknown(_:);
  if (a1 == 1)
  {
    v6 = &enum case for IdentityType.person(_:);
  }

  if (a1 == 2)
  {
    v6 = &enum case for IdentityType.business(_:);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t LiveLookupStoreProxy.name(for:)(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100023984();

  return v3;
}

uint64_t LiveLookupStoreProxy.iconURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 iconURL];
  if (v3)
  {
    v4 = v3;
    sub_100023984();

    sub_100023604();
  }

  else
  {
    v6 = sub_100023614();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

uint64_t LiveLookupStoreProxy.fetchIdentityInfo(for:from:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v0 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  return sub_100023794();
}

uint64_t LiveLookupStoreProxy.extensionUpdate(for:isAppStorVendable:)()
{
  v0 = objc_allocWithZone(sub_100023814());

  return sub_100023804();
}

Swift::Void __swiftcall LiveLookupStoreProxy.updateExtensions(with:)(Swift::OpaquePointer with)
{
  v2 = *(v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 32);
  sub_100018680((v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore), *(v1 + OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore + 24));
  v3 = sub_100023734();
  v47 = v5;
  v49 = v3;
  if (v3 >> 62)
  {
    v6 = sub_100023B14();
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_39;
  }

  v7 = 0;
  v48 = OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter;
  v8 = qword_10003C8F0;
  *&v4 = 138412290;
  v45 = v4;
  v46 = v6;
  do
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v9 = sub_100023AF4();
    }

    else
    {
      v9 = *(v49 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v9 identifier];
    v12 = sub_100023984();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      [*(v51 + v48) sendInstallationFor:v11];
    }

    else
    {

      if (qword_10003C5C8 != -1)
      {
        swift_once();
      }

      v16 = sub_1000238C4();
      sub_10000209C(v16, v8);
      v10 = v10;
      v11 = sub_1000238A4();
      v17 = sub_100023A94();

      if (os_log_type_enabled(v11, v17))
      {
        v18 = swift_slowAlloc();
        v19 = v8;
        v20 = swift_slowAlloc();
        *v18 = v45;
        *(v18 + 4) = v10;
        *v20 = v10;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v11, v17, "installed extension does not have identifier: %@", v18, 0xCu);
        sub_1000022C4(v20, &qword_10003C760, &qword_100028680);
        v8 = v19;

        v10 = v11;
        v11 = v21;
        v6 = v46;
      }
    }

    ++v7;
  }

  while (v6 != v7);
LABEL_18:

  v22 = v47;
  if (v47 >> 62)
  {
    v23 = sub_100023B14();
    if (v23)
    {
LABEL_20:
      if (v23 >= 1)
      {
        v24 = 0;
        v25 = OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter;
        v26 = v47 & 0xC000000000000001;
        v27 = qword_10003C8F0;
        v50 = v23;
        do
        {
          if (v26)
          {
            v28 = sub_100023AF4();
          }

          else
          {
            v28 = *(v22 + 8 * v24 + 32);
          }

          v29 = v28;
          v30 = [v28 identifier];
          v31 = sub_100023984();
          v33 = v32;

          v34 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v34 = v31 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            [*(v51 + v25) sendUninstallationFor:v30];
          }

          else
          {

            if (qword_10003C5C8 != -1)
            {
              swift_once();
            }

            v35 = sub_1000238C4();
            sub_10000209C(v35, v27);
            v29 = v29;
            v30 = sub_1000238A4();
            v36 = sub_100023A94();

            if (os_log_type_enabled(v30, v36))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              *v37 = 138412290;
              *(v37 + 4) = v29;
              *v38 = v29;
              v39 = v26;
              v40 = v25;
              v41 = v27;
              v42 = v29;
              _os_log_impl(&_mh_execute_header, v30, v36, "removed extension does not have identifier: %@", v37, 0xCu);
              sub_1000022C4(v38, &qword_10003C760, &qword_100028680);
              v22 = v47;

              v29 = v30;
              v30 = v42;
              v27 = v41;
              v25 = v40;
              v26 = v39;
              v23 = v50;
            }
          }

          ++v24;
        }

        while (v23 != v24);
        goto LABEL_35;
      }

LABEL_39:
      __break(1u);
      return;
    }
  }

  else
  {
    v23 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_20;
    }
  }

LABEL_35:

  v43 = sub_100023AA4();
  sub_100023984();

  v44 = sub_1000239A4();

  notify_post((v44 + 32));
}

uint64_t sub_10001FF64(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000020D4;

  return v7();
}

uint64_t sub_10002004C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000020D8;

  return v8();
}

uint64_t sub_100020134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100014304(&qword_10003C700, &qword_100028750) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_1000191B0(a3, v24 - v10, &qword_10003C700, &qword_100028750);
  v12 = sub_100023A74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000022C4(v11, &qword_10003C700, &qword_100028750);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100023A64();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_100023A34();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1000239A4() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1000022C4(a3, &qword_10003C700, &qword_100028750);

    return v22;
  }

LABEL_8:
  sub_1000022C4(a3, &qword_10003C700, &qword_100028750);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_100020430(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_1000237D4();
  v12[4] = &protocol witness table for LiveLookupStore;
  v12[0] = a2;
  *&a3[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_maxShards] = 10000000;
  *&a3[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_keyExpirationMinutes] = 10080;
  *&a3[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_keyRotationBeforeExpirationMinutes] = 1440;
  v7 = &a3[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_imagePath];
  *v7 = sub_1000237B4();
  v7[1] = v8;
  *&a3[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_analyticsReporter] = a1;
  sub_100021174(v12, &a3[OBJC_IVAR____TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy_liveLookupStore]);
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_100018E44(v12);
  return v9;
}

void *_s018com_apple_CallKit_C20DirectoryMaintenance20LiveLookupStoreProxyC19extensionIdentifier3forSSSg08IdentityH012BlockingInfoCSg_tF_0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 dbExtension];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 identifier];

      v5 = sub_100023984();
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t _s018com_apple_CallKit_C20DirectoryMaintenance20LiveLookupStoreProxyC11llExtension_11containedInSb08IdentityH00gH11DBExtensionC_SayAF12BlockingInfoCGtF_0(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100023B14())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100023AF4();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = [v5 dbExtension];
      if (v8)
      {
        v9 = v8;
        sub_1000236C4();
        v10 = a1;
        v11 = sub_100023AB4();

        if (v11)
        {
          return 1;
        }
      }

      else
      {
      }

      if (v7 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t _s018com_apple_CallKit_C20DirectoryMaintenance20LiveLookupStoreProxyC38firstEnabledBlockedExtensionIdentifier3forSSSgSay08IdentityH012BlockingInfoCG_tF_0(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_18:
    v2 = sub_100023B14();
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_100023AF4();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v4 shouldBlock])
    {
      break;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  v7 = [v5 dbExtension];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 identifier];

    v10 = sub_100023984();
    return v10;
  }

  return 0;
}

void sub_100020850(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() sharedManager];
  v5 = sub_100023974();
  v20 = 0;
  v6 = [v4 configureGroupWithName:v5 useCaseGroup:0 error:&v20];

  if (v6)
  {
    v7 = qword_10003C5C8;
    v8 = v20;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_1000238C4();
    sub_10000209C(v9, qword_10003C8F0);

    v10 = sub_1000238A4();
    v11 = sub_100023A94();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000186C4(a1, a2, &v20);
      _os_log_impl(&_mh_execute_header, v10, v11, "set group %s to nil", v12, 0xCu);
      sub_100018E44(v13);
    }

    goto LABEL_10;
  }

  v14 = v20;
  sub_1000235B4();

  swift_willThrow();
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000238C4();
  sub_10000209C(v15, qword_10003C8F0);
  swift_errorRetain();
  v10 = sub_1000238A4();
  v16 = sub_100023A84();

  if (os_log_type_enabled(v10, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v10, v16, "unregister failed %@", v17, 0xCu);
    sub_1000022C4(v18, &qword_10003C760, &qword_100028680);

LABEL_10:

    return;
  }
}

unint64_t sub_100020B84()
{
  result = qword_10003C780;
  if (!qword_10003C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C780);
  }

  return result;
}

uint64_t sub_100020BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100020BEC(a1, a2);
  }

  return a1;
}

uint64_t sub_100020BEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100020C40()
{
  result = qword_10003C788;
  if (!qword_10003C788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C788);
  }

  return result;
}

uint64_t sub_100020C8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100001F34(a1, a2);
  }

  return a1;
}

BOOL _s018com_apple_CallKit_C20DirectoryMaintenance20LiveLookupStoreProxyC11shouldBlock4withSbSay08IdentityH012BlockingInfoCG_tF_0(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_100023B14();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_100023AF4();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 shouldBlock];

    v4 = v5 + 1;
  }

  while (!v8);
  return v3 != v5;
}

__n128 sub_100020DCC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100020DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100020E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100020E74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000020D8;

  return sub_10001E3A0(v2, v3, v4, v5);
}

uint64_t sub_100020F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000020D4;

  return sub_10002004C(a1, v4, v5, v7);
}

uint64_t sub_100021004(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000020D4;

  return sub_100018588(a1, v5);
}

uint64_t sub_1000210BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000020D8;

  return sub_100018588(a1, v5);
}

uint64_t sub_100021174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000211D8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Request with requestIdentifier %@ was interrupted", &v3, 0xCu);
}

void sub_100021254(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Request with requestIdentifier %@ failed to begin. Error: %@", &v5, 0x16u);
}

void sub_100021884()
{
  sub_1000097D8();
  [v0 primaryKey];
  sub_1000097E4();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10002190C()
{
  sub_1000097D8();
  sub_100009804(v0);
  sub_10000981C();
  sub_1000097B0();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100021994()
{
  sub_1000097D8();
  [v0 primaryKey];
  sub_1000097E4();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}