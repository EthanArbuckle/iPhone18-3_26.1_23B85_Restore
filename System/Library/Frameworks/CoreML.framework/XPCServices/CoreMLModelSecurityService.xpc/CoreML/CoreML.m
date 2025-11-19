void sub_100000FDC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MLLogging coreChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100007578(v2, v3);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

uint64_t ModelKeyServerAPIFetchKeyResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v25) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_41;
          case 4:
            [a1 clearOneofValuesForKey];
            *(a1 + 56) |= 1u;
            *(a1 + 8) = 1;
            v16 = objc_alloc_init(ModelKeyServerAPISignedKey);
            objc_storeStrong((a1 + 40), v16);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !ModelKeyServerAPISignedKeyReadFrom(v16, a2))
            {
LABEL_48:

              return 0;
            }

            goto LABEL_44;
          case 5:
            [a1 clearOneofValuesForKey];
            *(a1 + 56) |= 1u;
            *(a1 + 8) = 2;
            v16 = objc_alloc_init(ModelKeyServerAPIRawKey);
            objc_storeStrong((a1 + 32), v16);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !ModelKeyServerAPIRawKeyReadFrom(v16, a2))
            {
              goto LABEL_48;
            }

LABEL_44:
            PBReaderRecallMark();

            goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 0:
            v17 = 0;
            while (1)
            {
              LOBYTE(v25) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              if ((v25 & 0x80000000) == 0)
              {
                break;
              }

              if (v17++ > 8)
              {
                goto LABEL_46;
              }
            }

            [a2 hasError];
            goto LABEL_46;
          case 1:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_41;
          case 2:
            v14 = PBReaderReadString();
            v15 = 24;
LABEL_41:
            v22 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ModelKeyServerAPIFetchKeyResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
      if ((v12 >> 3) == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        [a1 clearOneofValuesForResult];
        *(a1 + 32) |= 1u;
        *(a1 + 16) = 1;
        v19 = objc_alloc_init(ModelKeyServerAPIFetchKeyResult);
        objc_storeStrong((a1 + 24), v19);
        v22 = 0;
        v23 = 0;
        if (!PBReaderPlaceMark() || !ModelKeyServerAPIFetchKeyResultReadFrom(v19, a2))
        {
          goto LABEL_40;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_38;
      }

      if (v13)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = 0;
        while (1)
        {
          LOBYTE(v22) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v22 & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_38;
          }
        }

        [a2 hasError];
      }

LABEL_38:
      v20 = [a2 position];
      if (v20 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    [a1 clearOneofValuesForResult];
    *(a1 + 32) |= 1u;
    *(a1 + 16) = 2;
    v19 = objc_alloc_init(ModelKeyServerAPIResultError);
    objc_storeStrong((a1 + 8), v19);
    v22 = 0;
    v23 = 0;
    if (!PBReaderPlaceMark() || !ModelKeyServerAPIResultErrorReadFrom(v19, a2))
    {
LABEL_40:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ModelKeyServerAPIFetchKeyRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadData();
        v15 = 16;
LABEL_36:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_39;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_39;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_38;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_38:
      *(a1 + 32) = v22;
LABEL_39:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 8;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadString();
      v15 = 24;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ModelKeyServerAPIRawKeyReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___ModelKeyServerAPIRawKey__encryptionIv;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ModelKeyServerAPIRawKey__encryptionKey;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ModelKeyServerAPISignedKeyReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000481C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000048BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000048D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MLLogging coreChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CoreMLModelSecurity function fetchKey completed", buf, 2u);
  }

  if (v6)
  {
    v8 = [MLModelErrorUtils modelDecryptionKeyFetchErrorWithUnderlyingError:v6 format:@"Fetching decryption key from server failed."];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 code];
      v13 = [v6 localizedDescription];
      v14 = v13;
      v15 = [v13 UTF8String];
      *buf = 134218242;
      v53 = v12;
      v54 = 2080;
      v55 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Fetching decryption key from server failed. Operation failed with error code %ld (%s)", buf, 0x16u);
    }
  }

  else if ([v5 hasError])
  {
    v16 = [v5 error];
    v17 = [v16 message];
    v18 = v17;
    v19 = +[MLModelErrorUtils modelDecryptionKeyFetchErrorWithUnderlyingError:format:](MLModelErrorUtils, "modelDecryptionKeyFetchErrorWithUnderlyingError:format:", 0, @"Fetching decryption key from server failed: %s. Make sure the encryption key was generated with correct team ID.", [v17 UTF8String]);
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v11 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = [v5 error];
      v23 = [v22 message];
      v24 = v23;
      v25 = [v23 UTF8String];
      *buf = 136315138;
      v53 = v25;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Fetching decryption key from server failed. Key server responded back with error: %s", buf, 0xCu);
    }
  }

  else if ([v5 hasSuccess])
  {
    v26 = [v5 success];
    v27 = [v26 hasSignedKey];

    if (v27)
    {
      v11 = [v5 success];
      v28 = [v11 signedKey];
      v29 = [v28 data];
      v30 = *(*(a1 + 48) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }

    else
    {
      v42 = [MLModelErrorUtils modelDecryptionKeyFetchErrorWithUnderlyingError:0 format:@"Fetching decryption key from server failed."];
      v43 = *(*(a1 + 40) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      v11 = +[MLLogging coreChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100007674(v11, v45, v46, v47, v48, v49, v50, v51);
      }
    }
  }

  else
  {
    v32 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10000763C(v32, v33, v34, v35, v36, v37, v38, v39);
    }

    v40 = [MLModelErrorUtils modelDecryptionKeyFetchErrorWithUnderlyingError:0 format:@"Fetching decryption key from server failed: response with neither hasError nor hasSuccess."];
    v41 = *(*(a1 + 40) + 8);
    v11 = *(v41 + 40);
    *(v41 + 40) = v40;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100004DAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t ModelKeyServerAPIResultErrorReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000543C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100005474(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000548C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000076AC(v6, v7);
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void sub_1000056E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100005754(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100007724(a1, v6, v7);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void sub_100006388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CoreMLModelSecurity;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_100006868(int a1, void *a2)
{
  if (a1)
  {
    v3 = +[CoreMLModelSecurity codeSigningIdentifierFromXPCConnection];
    if (v3)
    {
      goto LABEL_9;
    }

    *a2 = [MLModelErrorUtils modelDecryptionKeyFetchErrorWithUnderlyingError:0 format:@"Failed to extract signingIdentifier for the first party app. Make sure the app is signed."];
    v4 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000079F4(v4);
    }
  }

  else
  {
    v3 = +[CoreMLModelSecurity teamIdentifierFromXPCConnection];
    if (v3)
    {
      goto LABEL_9;
    }

    *a2 = [MLModelErrorUtils modelDecryptionKeyFetchErrorWithUnderlyingError:0 format:@"Failed to extract team identifier for the app. Make sure the app is signed."];
    v4 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000079B0(v4);
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

void sub_100006A94(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

uint64_t sub_1000074FC(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

void sub_10000753C(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void sub_100007558(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100007578(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"client callback";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create connection to %@ : error=%@", &v2, 0x16u);
}

void sub_1000076AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not obtain feature names via XPC: error=%@", &v2, 0xCu);
}

void sub_100007724(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not obtain feature value %@ via XPC: error=%@", &v4, 0x16u);
}

void sub_1000077B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Sandbox extension(%@) consumed", &v2, 0xCu);
}

void sub_100007828(uint64_t a1, int *a2, uint64_t a3, NSObject *a4)
{
  v4 = *a2;
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 1024;
  *(a3 + 14) = v4;
  sub_10000753C(&_mh_execute_header, "Sandbox extension(%@) release failed (%d)", a3, a4);
}

void sub_100007A38()
{
  sub_10000752C();
  sub_1000074FC(v1, v2, v3, 5.778e-34);
  sub_10000753C(&_mh_execute_header, "%@: client(%d) : missing teamIdentity", v4, v5);
}

void sub_100007A7C()
{
  sub_10000752C();
  sub_1000074FC(v1, v2, v3, 5.778e-34);
  sub_10000753C(&_mh_execute_header, "%@: client(%d) : SecTaskCreateWithAuditToken() failed", v4, v5);
}

void sub_100007AC0()
{
  sub_10000752C();
  sub_1000074FC(v1, v2, v3, 5.778e-34);
  sub_10000753C(&_mh_execute_header, "%@: client(%d) : missing signingIdentifier", v4, v5);
}

void sub_100007B04(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: nil currentConnection", buf, 0xCu);
}