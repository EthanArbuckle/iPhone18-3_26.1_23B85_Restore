void sub_F28(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0xF14);
  }

  objc_exception_rethrow();
}

void sub_17B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1838;
  v5[3] = &unk_81C0;
  v6 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v4;
  dispatch_async(&_dispatch_main_q, v5);
}

uint64_t sub_1AD0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionary];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_1DF0(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1E7C;
  v3[3] = &unk_8238;
  v7 = a2;
  v8 = *(a1 + 72);
  v6 = *(a1 + 64);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

id sub_1E7C(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 73);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      LODWORD(a2) = *(a1 + 64);
      LODWORD(a3) = *(a1 + 68);
      [v5 _setLocationWithLatitude:a2 longitude:a3];
    }

    else
    {
      [v5 initializeLocationSearch];
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);

    return [v11 _createAndExecutePostRequestWithStatus:v12 account:v13 completion:v14];
  }

  else
  {
    v6 = [SACommandFailed commandFailedWithErrorCode:SAMicroblogMicroblogLocationDisabledFromProviderErrorCode];
    v7 = *(a1 + 56);
    v8 = [(SACommandFailed *)v6 dictionary];
    v9 = *(v7 + 16);

    return v9(v7, v8);
  }
}

id sub_1FB0(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 coordinate];
    v4 = [+[NSNumber numberWithDouble:](NSNumber stringValue];
    [a2 coordinate];
    v6 = [[NSNumber numberWithDouble:?]];
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v7 = [*(*(a1 + 32) + 8) requestForPostWithStatus:*(a1 + 40) latitude:v4 longitude:v6];
  [v7 setAccount:*(a1 + 48)];
  *(*(a1 + 32) + 58) = 1;
  *(*(a1 + 32) + 64) = 4;
  [*(a1 + 32) performSelector:"_stopRetrying" withObject:0 afterDelay:2.0];
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);

  return [v8 _attemptPostRequest:v7 withCompletionBlock:v9];
}

void sub_21BC(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2238;
  v2[3] = &unk_82D8;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_24E4(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2560;
  block[3] = &unk_8328;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_2560(uint64_t a1)
{
  *(*(a1 + 32) + 81) = *(a1 + 48);
  *(*(a1 + 32) + 80) = 0;
  return [*(a1 + 32) _processResponseFromServiceWithHandler:*(a1 + 40)];
}

void sub_2580(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_25FC;
  block[3] = &unk_8328;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_25FC(uint64_t a1)
{
  *(*(a1 + 32) + 82) = 0;
  *(*(a1 + 32) + 83) = *(a1 + 48);
  return [*(a1 + 32) _processResponseFromServiceWithHandler:*(a1 + 40)];
}

void sub_2D74(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x2D60);
  }

  objc_exception_rethrow();
}