uint64_t DLSetAck(uint64_t a1, uint64_t a2)
{
  v2 = 2148270081;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *(v4 + 976) = a2;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2148270082;
    }
  }

  return v2;
}

uint64_t DLGetAck(uint64_t a1, void *a2)
{
  v2 = 2148270081;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 976);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2148270082;
    }
  }

  return v2;
}

uint64_t DLPutMsg(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 2148270081;
  if (a2)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v3 = MQPut(*(v6 + 968), a2, a3);
      CheckOutHandleDebug();
    }

    else
    {
      return 2148270082;
    }
  }

  return v3;
}

uint64_t DLGetMsg(uint64_t a1, void *a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 2148270081;
  if (!a2)
  {
    return v6;
  }

  v12 = CheckInHandleDebug();
  if (!v12)
  {
    return 2148270082;
  }

  if (a5)
  {
    v13 = *(a5 + 272);
    if (v13)
    {
      a6 = *v13;
    }
  }

  v14 = MQGet(*(v12 + 968), a2, a3, a4, a6);
  CheckOutHandleDebug();
  return v14;
}

uint64_t DLIncreaseLocalSeq(uint64_t a1, uint64_t *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 560));
  v5 = *(v4 + 16) + 1;
  *(v4 + 16) = v5;
  *a2 = v5;
  pthread_mutex_unlock((v4 + 560));
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLSetMediaType(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  *(v3 + 992) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLSetDoingKeyExchange(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  *(v3 + 1000) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLGetDoingKeyExchange(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  *a2 = *(v3 + 1000);
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLGetConfIndex(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  *a2 = *(v3 + 8);
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLGetSIPPing(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  *a2 = *(v3 + 1008);
  CheckOutHandleDebug();
  return 0;
}

void OUTLINED_FUNCTION_13_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t VCCaptionsTranscriptionBlobReadFrom(_BYTE *a1, void *a2)
{
  v40[2] = *MEMORY[0x1E69E9840];
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
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            LOBYTE(v40[0]) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v40[0] & 0x7F) << v32;
            if ((v40[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v34;
          }

LABEL_72:
          v38 = 20;
          goto LABEL_77;
        }

        if (v12 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v40[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v40[0] & 0x7F) << v15;
            if ((v40[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v10 = v16++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v17;
          }

LABEL_76:
          v38 = 16;
LABEL_77:
          *&a1[v38] = v20;
          goto LABEL_78;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            a1[28] |= 2u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v40[0] & 0x7F) << v21;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                LOBYTE(v26) = 0;
                goto LABEL_65;
              }
            }

            v26 = (v23 != 0) & ~[a2 hasError];
LABEL_65:
            v37 = 25;
            goto LABEL_68;
          case 4:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            a1[28] |= 1u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v40[0] & 0x7F) << v27;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v10 = v28++ >= 9;
              if (v10)
              {
                LOBYTE(v26) = 0;
                goto LABEL_67;
              }
            }

            v26 = (v29 != 0) & ~[a2 hasError];
LABEL_67:
            v37 = 24;
LABEL_68:
            a1[v37] = v26;
            goto LABEL_78;
          case 5:
            v13 = objc_alloc_init(VCCaptionsSegmentBlob);
            [a1 addSegments:v13];

            v40[0] = 0xAAAAAAAAAAAAAAAALL;
            v40[1] = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = VCCaptionsSegmentBlobReadFrom(v13, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_78;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCConnectionManagerLegacy_IsSourceOnCellularIPv6(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (*a2 == 1 && (*(a2 + 8) & 4) != 0)
  {
    *a3 = 1;
    if ((*(a2 + 8) & 4) != 0)
    {
      *a4 = 1;
    }
  }
}

CFTypeRef _VCConnectionManagerLegacy_CopyPrimaryConnection(uint64_t a1)
{
  result = *(a1 + 304);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void _VCConnectionManagerLegacy_SetPrimaryConnection(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 304);
  if (v2 != cf)
  {
    *(a1 + 304) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t MQCreateHandle(uint64_t *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x118uLL, 0x102004088A06470uLL);
  if (v2)
  {
    v3 = v2;
    *v2 = 0;
    pthread_mutex_init((v2 + 8), 0);
    pthread_cond_init((v3 + 72), 0);
    Handle = CreateHandle();
    v5 = 0;
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          MQCreateHandle_cold_1();
        }
      }

      pthread_mutex_destroy((v3 + 8));
      pthread_cond_destroy((v3 + 72));
      free(v3);
      return 2148204549;
    }
  }

  else
  {
    v5 = 2148204547;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        MQCreateHandle_cold_2();
      }
    }
  }

  return v5;
}

uint64_t MQCloseHandle()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2148204546;
  }

  v1 = v0;
  pthread_mutex_lock((v0 + 8));
  *(v1 + 4) = -1;
  pthread_cond_broadcast((v1 + 72));
  pthread_mutex_unlock((v1 + 8));
  CheckOutHandleDebug();
  pthread_cond_destroy((v1 + 72));
  pthread_mutex_destroy((v1 + 8));
  for (i = 120; i != 200; i += 8)
  {
    v3 = *(v1 + i);
    if (v3)
    {
      FreeSipMsg(v3);
    }
  }

  free(v1);
  return 0;
}

uint64_t MQPut(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = 2148204546;
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  pthread_mutex_lock((v6 + 8));
  if ((*(v7 + 4) & 0x80000000) != 0)
  {
    pthread_mutex_unlock((v7 + 8));
    CheckOutHandleDebug();
    return 2148204562;
  }

  v8 = micro();
  v9 = *v7;
  v10 = *(v7 + 4);
  if (v10 < 1)
  {
    goto LABEL_14;
  }

  v11 = v8;
  for (i = 0; i != v10; ++i)
  {
    while (v11 - *(v7 + 200 + 8 * ((v9 + i) % 10)) > 10.0)
    {
      MQDeleteAt(v7, i, 1);
      v9 = *v7;
      v10 = *(v7 + 4);
      if (!v10)
      {
        goto LABEL_14;
      }
    }
  }

  if (v10 < 10)
  {
LABEL_14:
    v15 = v7 + 8 * ((v9 + v10) % 10);
    *(v15 + 120) = a2;
    *(v15 + 200) = micro();
    if (a3)
    {
      v16 = *(a2 + 992);
      if (v16)
      {
        goto LABEL_18;
      }

      v17 = malloc_type_calloc(0xAuLL, 8uLL, 0x2004093837F09uLL);
      if (v17)
      {
        v16 = v17;
        *(a2 + 992) = v17;
LABEL_18:
        v18 = 0;
        while (*&v16[v18])
        {
          v18 += 8;
          if (v18 == 80)
          {
            goto LABEL_24;
          }
        }

        *&v16[v18] = pthread_self();
        goto LABEL_24;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315650;
          v23 = v20;
          v24 = 2080;
          v25 = "MQPut";
          v26 = 1024;
          v27 = 191;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d MQIgnore: out of memory", &v22, 0x1Cu);
        }
      }
    }

LABEL_24:
    ++*(v7 + 4);
    pthread_cond_broadcast((v7 + 72));
    pthread_mutex_unlock((v7 + 8));
    CheckOutHandleDebug();
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315650;
      v23 = v13;
      v24 = 2080;
      v25 = "MQPut";
      v26 = 1024;
      v27 = 173;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Message Queue is full", &v22, 0x1Cu);
    }
  }

  pthread_mutex_unlock((v7 + 8));
  CheckOutHandleDebug();
  return 2148204573;
}

uint64_t MQGet(uint64_t a1, void *a2, unint64_t a3, int a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = 2148204545;
  if (a2)
  {
    *a2 = 0;
    v10 = CheckInHandleDebug();
    if (v10)
    {
      v11 = v10;
      pthread_mutex_lock((v10 + 8));
      v12 = micro();
      v39.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v39.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v13 = micro();
      v14 = v11[1];
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v13;
        v16 = v11 + 30;
        do
        {
          v38 = a3;
          if (v14)
          {
            for (i = 0; i != v11[1]; ++i)
            {
              v18 = (*v11 + i) % 10;
              v19 = *&v16[2 * v18];
              v20 = *(v19 + 992);
              v21 = pthread_self();
              if (v20)
              {
                v22 = 0;
                while (v21 != *(v20 + v22))
                {
                  v22 += 8;
                  if (v22 == 80)
                  {
                    goto LABEL_11;
                  }
                }
              }

              else
              {
LABEL_11:
                if (*v19 == 1 || (v23 = *(v19 + 272)) != 0 && ((v24 = *(v23 + 2), a4 == 1) && v24 == 2 || ((v25 = *v23, a5 != -1) ? (v26 = v25 == a5) : (v26 = 1), !v26 ? (v27 = 0) : (v27 = 1), v24 == a4 ? (v28 = v27 == 0) : (v28 = 1), !v28)))
                {
                  *a2 = *&v16[2 * v18];
                  if (i)
                  {
                    MQDeleteAt(v11, i, 0);
                    v5 = 0;
                  }

                  else
                  {
                    v5 = 0;
                    v35 = *v11;
                    *&v16[2 * v35] = 0;
                    v36 = v11[1] - 1;
                    *v11 = (v35 + 1) % 10;
                    v11[1] = v36;
                  }

                  goto LABEL_47;
                }
              }
            }
          }

          if (v38 == 0xFFFFFFFF)
          {
            v29 = pthread_cond_wait((v11 + 18), (v11 + 2));
            a3 = 0xFFFFFFFFLL;
          }

          else
          {
            v30 = (v15 - v12) * 1000.0;
            if (v38 >= v30)
            {
              a3 = v38 - v30;
            }

            else
            {
              a3 = 0;
            }

            v39.tv_sec = a3 / 0x3E8;
            v39.tv_nsec = 1000000 * (a3 % 0x3E8);
            v29 = pthread_cond_timedwait_relative_np((v11 + 18), (v11 + 2), &v39);
            v12 = v15;
          }

          if (v29 == 60)
          {
            v5 = 2148204567;
            goto LABEL_47;
          }

          v39.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v39.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          v15 = micro();
          v14 = v11[1];
        }

        while ((v14 & 0x80000000) == 0);
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        v5 = 2148204574;
      }

      else
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v41 = v31;
          v42 = 2080;
          v43 = "MQGet";
          v44 = 1024;
          v45 = 291;
          v46 = 1024;
          v47 = 291;
          _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/MsgQue.c:%d: Message Queue Closed during MQGet", buf, 0x22u);
        }

        v5 = 2148204574;
      }

LABEL_47:
      pthread_mutex_unlock((v11 + 2));
      CheckOutHandleDebug();
    }

    else
    {
      return 2148204546;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v41 = v33;
      v42 = 2080;
      v43 = "MQGet";
      v44 = 1024;
      v45 = 271;
      v46 = 1024;
      v47 = 271;
      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/MsgQue.c:%d: ppSipMsg is NULL", buf, 0x22u);
    }
  }

  return v5;
}

void MQDeleteAt(_DWORD *a1, int a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 < 0 || (v5 = a1[1], v5 <= a2))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v13 = a1[1];
        v14 = 136316418;
        v15 = v11;
        v16 = 2080;
        v17 = "MQDeleteAt";
        v18 = 1024;
        v19 = 94;
        v20 = 2048;
        v21 = a1;
        v22 = 1024;
        v23 = v13;
        v24 = 1024;
        v25 = a2;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d Trying to remove an invalid element from a message queue. pMsgQue=%p iAvail=%d nth=%d", &v14, 0x32u);
      }
    }
  }

  else
  {
    if (a3)
    {
      FreeSipMsg(*&a1[2 * ((*a1 + a2) % 10) + 30]);
      v5 = a1[1];
    }

    v6 = *a1;
    if (a2 + 1 < v5)
    {
      v7 = ~a2 + v5;
      v8 = v6 + a2;
      do
      {
        v9 = v8 % 10;
        *&a1[2 * v9 + 30] = *&a1[2 * (++v8 % 10) + 30];
        *&a1[2 * v9 + 50] = *&a1[2 * (v8 % 10) + 50];
        --v7;
      }

      while (v7);
    }

    v10 = v5 - 1;
    a1[1] = v10;
    *&a1[2 * ((v6 + v10) % 10) + 30] = 0;
  }
}

void VCRateControlAlgorithmLowLatencyNOWRDPriv_Configure(uint64_t a1, const void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (!*(a1 + 1242))
      {
        *(a1 + 1242) = 50;
      }

      memcpy((a1 + 40), a2, 0x400uLL);
      VCRateControlAlgorithmLowLatencyNOWRDPriv_SetRateChangeCounter(a1);
      *(a1 + 1169) = 0;
      *(a1 + 5008) = 0;
      *(a1 + 5056) = *(a1 + 768);
      VCRateControlAlgorithmBasePriv_ResetLossEventBuffer(a1);
      if (a3)
      {
        *(a1 + 1088) = 1;
        *(a1 + 1100) = *(a1 + 56);
      }

      v5 = *(a1 + 1100);
      if (v5 >= *(a1 + 60))
      {
        v5 = *(a1 + 60);
      }

      if (v5 <= *(a1 + 64))
      {
        v5 = *(a1 + 64);
      }

      *(a1 + 1100) = v5;
      *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 1120);
          v15 = *(a1 + 48);
          v16 = *(v15 + 4 * *(a1 + 64));
          v17 = *(v15 + 4 * *(a1 + 60));
          *buf = 136316418;
          v19 = v12;
          v20 = 2080;
          v21 = "VCRateControlAlgorithmLowLatencyNOWRDPriv_Configure";
          v22 = 1024;
          v23 = 154;
          v24 = 1024;
          v25 = v14;
          v26 = 1024;
          v27 = v16;
          v28 = 1024;
          v29 = v17;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Configuring VCRateControl algorithm with targetBitrate=%d, minBitrate=%d, maxBitrate=%d", buf, 0x2Eu);
        }
      }

      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Configure with targetBitrate=%d, minBitrate=%d, maxBitrate=%d", v6, v7, v8, v9, v10, v11, *(a1 + 1120));
    }

    else
    {
      VCRateControlAlgorithmLowLatencyNOWRDPriv_Configure_cold_1();
    }
  }

  else
  {
    VCRateControlAlgorithmLowLatencyNOWRDPriv_Configure_cold_2();
  }
}

uint64_t _VCRateControlAlogirthmLowLatencyNOWRD_DoRateControl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  v108 = *MEMORY[0x1E69E9840];
  if (*a2 == 2)
  {
    result = VCRateControlAlgorithmLowLatencyNOWRDPriv_UpdateInternalStatus(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    if (!result)
    {
      return result;
    }

    v13 = *(a1 + 1088);
    if (v13 <= 0)
    {
      if (!v13)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v53 = v14;
            v54 = 2080;
            v55 = "_VCRateControlAlogirthmLowLatencyNOWRD_DoRateControlWithVCRCStatistics";
            v56 = 1024;
            v57 = 215;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d VCRateControl is paused", buf, 0x1Cu);
          }
        }

        goto LABEL_19;
      }

LABEL_16:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCRateControlAlogirthmLowLatencyNOWRD_DoRateControl_cold_1();
        }
      }

      goto LABEL_19;
    }

    switch(v13)
    {
      case 3:
        *(a1 + 1092) |= 1u;
        if (VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampDown(a1))
        {
          *(a1 + 1100) = _VCRateControlAlgorithmLowLatencyNOWRD_RampDownTier(a1);
        }

        if (*(a1 + 1144) - *(a1 + 1152) <= *(a1 + 184))
        {
          goto LABEL_19;
        }

        v46 = a1;
        v47 = 2;
        goto LABEL_62;
      case 2:
        if (!VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampDown(a1))
        {
          if (!VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampUp(a1))
          {
LABEL_19:
            *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
            if (*(a1 + 5176) == 1)
            {
              v16 = *(a1 + 1136);
              *(a1 + 1136) = v16 + 1;
              if ((v16 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v17 = VRTraceErrorLogLevelToCSTR();
                v18 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v51 = *(a1 + 1144);
                  v50 = *(a1 + 5322);
                  v49 = *(a1 + 2904);
                  v20 = *(a1 + 2912);
                  v21 = *(a1 + 2920);
                  v22 = *(a1 + 2928);
                  v23 = (*(a1 + 5120) * 1000.0);
                  if (*(a1 + 1092))
                  {
                    v24 = 88;
                  }

                  else
                  {
                    v24 = 79;
                  }

                  LODWORD(v19) = *(a1 + 5324);
                  v25 = *(a1 + 5040) * 100.0;
                  v26 = *(a1 + 1216);
                  v27 = *(a1 + 5032);
                  v28 = *(a1 + 5328) / 0x3E8u;
                  v29 = *(a1 + 1120) / 0x3E8u;
                  v30 = *(a1 + 1096);
                  v31 = *(a1 + 1132);
                  v32 = *(a1 + 1092);
                  v33 = *(a1 + 5352);
                  v34 = *(a1 + 5336) / 0x3E8u;
                  v35 = (*(a1 + 5344) * 1000.0);
                  if (*(a1 + 5320))
                  {
                    v36 = "S";
                  }

                  else
                  {
                    v36 = "U";
                  }

                  v37 = "<";
                  if (!*(a1 + 1169))
                  {
                    v37 = "-";
                  }

                  v38 = *(a1 + 1088);
                  *buf = 136322050;
                  v109 = buf;
                  v53 = v17;
                  v54 = 2080;
                  v55 = "_VCRateControlAlgorithmLowLatencyNOWRD_PrintRateControlInfoToLogDump";
                  v56 = 1024;
                  v57 = 775;
                  v58 = 2048;
                  v59 = v51;
                  v60 = 1024;
                  v61 = v50;
                  v62 = 2048;
                  v63 = v49;
                  v64 = 2048;
                  v65 = v20;
                  v66 = 2048;
                  v67 = v21;
                  v68 = 2048;
                  v69 = v22;
                  v70 = 1024;
                  v71 = v24;
                  v72 = 1024;
                  v73 = v23;
                  v74 = 2048;
                  v75 = v25;
                  v76 = 2048;
                  v77 = v19;
                  v78 = 1024;
                  v79 = v26;
                  v80 = 1024;
                  v81 = v27;
                  v82 = 1024;
                  v83 = v28;
                  v84 = 1024;
                  v85 = v29;
                  v86 = 1024;
                  v87 = v32;
                  v88 = 1024;
                  v89 = v30;
                  v90 = 1024;
                  v91 = v31;
                  v92 = 1024;
                  v93 = v34;
                  v94 = 1024;
                  v95 = v33;
                  v96 = 1024;
                  v97 = v35;
                  v98 = 1024;
                  v99 = 0;
                  v100 = 1024;
                  v101 = 0;
                  v102 = 2080;
                  v103 = v36;
                  v104 = 2080;
                  v105 = v37;
                  v106 = 1024;
                  v107 = v38;
                  _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%4u\tMBL:%d\t%4u/%4u\t  CS:%04X %04X %u BB: %3u\t%4u\t%3u\t%u\t%u\t UAT %s %s\t%d", buf, 0xD6u);
                }
              }
            }

            v39 = *(a1 + 5160);
            if (v39)
            {
              if (*(a1 + 5320))
              {
                v40 = "S";
              }

              else
              {
                v40 = "U";
              }

              if (*(a1 + 1169))
              {
                v41 = "<";
              }

              else
              {
                v41 = "-";
              }

              VRLogfilePrintWithTimestamp(v39, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%u\tMBL:%d %u\t%4u/%4u\t %4u:%4u/%4u  %4u:%4u/%4u  CS: %04X %04X %u BB: %3u\t%4u\t%3u\t%u\t%u\t UAT %s %s\t%d\t%d\t%d\t%d\t%.3f\t%.3f\t%u\t%u\n", *(a1 + 1096), *(a1 + 1132), *(a1 + 5352), (*(a1 + 5344) * 1000.0), v40, v41, *(a1 + 1144));
            }

            *(a1 + 1092) = 0;
            *(a1 + 1096) = 0;
            return 1;
          }

          v48 = _VCRateControlAlgorithmLowLatencyNOWRD_RampUpTier(a1);
          goto LABEL_60;
        }

        break;
      case 1:
        if (!VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampDown(a1))
        {
          if (!VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampUp(a1))
          {
            goto LABEL_19;
          }

          *(a1 + 1100) = _VCRateControlAlgorithmLowLatencyNOWRD_RampUpTier(a1);
          if (*(a1 + 1100) != *(a1 + 60))
          {
            goto LABEL_19;
          }

          goto LABEL_61;
        }

        break;
      default:
        goto LABEL_16;
    }

    v48 = _VCRateControlAlgorithmLowLatencyNOWRD_RampDownTier(a1);
LABEL_60:
    *(a1 + 1100) = v48;
LABEL_61:
    v46 = a1;
    v47 = 3;
LABEL_62:
    VCRateControlAlgorithmBasePriv_StateChange(v46, v47);
    goto LABEL_19;
  }

  if (*a2 == 11)
  {
    *(a1 + 5360) = *(a2 + 80);
    *(a1 + 5368) = *(a2 + 84);
    v42 = *(a2 + 40);
    if (v42)
    {
      *(a1 + 5356) = v42 / *(a1 + 5156);
      *(a1 + 5336) = *(a2 + 72);
      LODWORD(a9) = *(a2 + 64);
      a10 = 1000.0;
      a9 = *&a9 / 1000.0;
      *(a1 + 5344) = a9;
    }

    if (VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampDownDueToNWConnection(a1, a9, a10, a11, a2, a3, a4, a5, a6, a7, a8))
    {
      if (*(a1 + 1088))
      {
        if (*(a1 + 1144) > 0.0)
        {
          *(a1 + 1100) = VCRateControlAlgorithmLowLatencyNOWRDPriv_RampDownTierDueToNWConnection(a1);
          VCRateControlAlgorithmBasePriv_StateChange(a1, 3);
        }
      }
    }

    else if (VCRateControlAlgorithmLowLatencyNOWRDPriv_ShouldRampUpDueToNWConnection(a1, v43, v44, v45))
    {
      *(a1 + 5364) = 0;
    }

    else
    {
      *(a1 + 5364) = 1;
    }

    *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
    return 1;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  VRTraceErrorLogLevelToCSTR();
  result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (result)
  {
    _VCRateControlAlogirthmLowLatencyNOWRD_DoRateControl_cold_2();
    return 0;
  }

  return result;
}

uint64_t VCRateControlAlgorithmLowLatencyNOWRDPriv_UpdateInternalStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCRateControlAlgorithmLowLatencyNOWRDPriv_UpdateInternalStatus_cold_3(buf);
    return buf[0];
  }

  if (!a2)
  {
    VCRateControlAlgorithmLowLatencyNOWRDPriv_UpdateInternalStatus_cold_2(buf);
    return buf[0];
  }

  v11 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 80);
  *(a1 + 1216) = *(a2 + 32) / *(a1 + 5156);
  *(a1 + 5322) = *(a2 + 68);
  *(a1 + 5378) = *(a2 + 28);
  *(a1 + 5120) = *(a2 + 104);
  v14 = *(a2 + 88);
  *(a1 + 5040) = v14;
  *(a1 + 5032) = *(a2 + 48);
  *(a1 + 5324) = *(a2 + 40);
  v15 = *(a2 + 96);
  v16 = *(a2 + 100);
  if (v15)
  {
    if (!*(a1 + 5328))
    {
      *(a1 + 5408) = *(a1 + 1144);
      v14 = *(a1 + 1144) - *(a1 + 5416);
      a10 = 5.0;
      if (v14 > 5.0)
      {
        VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Re-enter Initial Rampup!", a3, a4, a5, a6, a7, a8, v34);
        VCRateControlAlgorithmBasePriv_StateChange(a1, 1);
      }
    }
  }

  *(a1 + 5328) = v15;
  if (*(a1 + 5328))
  {
    v14 = *(a1 + 1144);
    *(a1 + 5416) = v14;
  }

  *(a1 + 5332) = v16;
  LODWORD(v14) = *(a1 + 5332);
  LODWORD(a10) = *(a1 + 1120);
  *(a1 + 1169) = *(a1 + 296) * *&a10 > *&v14;
  *(a1 + 1128) = *(a1 + 5328);
  if ((*(a1 + 1171) & 1) == 0)
  {
    result = 0;
    *(a1 + 1171) = 1;
    *(a1 + 5376) = v12;
    return result;
  }

  v17 = *(a1 + 5376);
  if (v12 == v17 || (v12 - v17) >= 0x7FFFu)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      v29 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 136315906;
        v36 = v27;
        v37 = 2080;
        v38 = "VCRateControlAlgorithmLowLatencyNOWRDPriv_UpdateInternalStatus";
        v39 = 1024;
        v40 = 310;
        v41 = 1024;
        v42 = v12;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Duplicated feedback or out-of-order feedback messages! timestamp:0x%04X", buf, 0x22u);
      }

      else
      {
        result = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        VCRateControlAlgorithmLowLatencyNOWRDPriv_UpdateInternalStatus_cold_1(v27, v12, v28);
      }
    }

    return 0;
  }

  if (v17 > v12)
  {
    ++*(a1 + 5384);
  }

  *(a1 + 5376) = v12;
  *(a1 + 1144) = VCRateControlAlgorithmBasePriv_GetDoubleTimeFromTimestamp(v12, 0x400u, *(a1 + 5384));
  *(a1 + 5380) = VCRateControlAlgorithmBasePriv_GetTimestampFromMicroTime(v11);
  *(a1 + 2904) = v13;
  VCRateControlAlgorithmBasePriv_CalculateCongestionMetrics(a1, *(a1 + 2904), *(a1 + 1144));
  v24 = *(a1 + 192);
  if (*(a1 + 423) == 1 && *(a1 + 5008) == 0.0)
  {
    v25 = *(a1 + 5120);
    if (*(a1 + 464) * v25 < v24)
    {
      v24 = *(a1 + 464) * v25;
    }

    if (*(a1 + 320) > v24)
    {
      v24 = *(a1 + 320);
    }
  }

  v30 = *(a1 + 5322);
  v31 = *(a1 + 5378);
  *(a1 + 5448) = v24;
  if ((*(a1 + 5320) & 1) == 0)
  {
    if (*(a1 + 1064))
    {
      if (*(a1 + 544) == 1)
      {
        v32 = vcvtd_n_s64_f64(*(a1 + 5456), 0xAuLL);
      }

      else
      {
        v32 = 0;
      }

      if (v31 && (v30 - v32) <= 0x7FFEu)
      {
        *(a1 + 1208) = *(a1 + 1144);
        *(a1 + 5388) = 1;
        VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] VCRC rate stabilized (TxTS %u >= %u FB). Collecting VCRC samples...", v18, v19, v20, v21, v22, v23, *(a1 + 1132));
      }
    }

    else if (!*(a1 + 5388))
    {
      *(a1 + 1208) = *(a1 + 1144);
      *(a1 + 5388) = 1;
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] VCRC rate stabilized since no mediaController. Collecting VCRC samples...", v18, v19, v20, v21, v22, v23, *(a1 + 1132));
    }

    v33 = *(a1 + 5388);
    if (v33)
    {
      if (*(a1 + 1144) - *(a1 + 1208) >= *(a1 + 320) && v33 >= *(a1 + 356))
      {
        VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Collected %d VCRC samples (TxTS %u)", v18, v19, v20, v21, v22, v23, *(a1 + 1132));
        *(a1 + 5320) = 1;
        *(a1 + 5388) = 0;
      }

      else
      {
        *(a1 + 5388) = v33 + 1;
      }
    }
  }

  if (*(a1 + 1088) != 1 && *(a1 + 5440) == 1 && *(a1 + 1144) - *(a1 + 1152) > *(a1 + 192))
  {
    *(a1 + 5440) = 0;
  }

  if (*(a1 + 1160) == 1 && *(a1 + 5320) == 1 && *(a1 + 1144) - *(a1 + 1184) > *(a1 + 312))
  {
    *(a1 + 1160) = 0;
  }

  if (*(a1 + 418) == 1)
  {
    VCRateControlAlgorithmBasePriv_CheckBandwidthOvershoot(a1, 1000 * *(a1 + 1216));
  }

  else
  {
    *(a1 + 1216) = 0;
  }

  return 1;
}

BOOL VCRateControlAlgorithmLowLatencyNOWRDPriv_RampUpBlockedDueToUnstableOnly(_BOOL8 result)
{
  if (result)
  {
    return *(result + 1092) == 0x2000 && *(result + 1096) == 0;
  }

  return result;
}

CMSampleBufferRef VCImageConverterBase_CreateConvertedSampleBuffer(int a1, CMSampleBufferRef sbuf, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!sbuf)
  {
    VCImageConverterBase_CreateConvertedSampleBuffer_cold_4(&v11);
    return v11;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    VCImageConverterBase_CreateConvertedSampleBuffer_cold_3(&v11);
    return v11;
  }

  v7 = (*(a4 + 16))(a4, ImageBuffer);
  if (!v7)
  {
    VCImageConverterBase_CreateConvertedSampleBuffer_cold_2(&v11);
    return v11;
  }

  v8 = v7;
  v11 = *a3;
  v12 = *(a3 + 16);
  v9 = createSampleBufferWithPixelBuffer(v7, &v11);
  if (!v9)
  {
    VCImageConverterBase_CreateConvertedSampleBuffer_cold_1();
  }

  CVPixelBufferRelease(v8);
  return v9;
}

const void *_VCAudioMachineLearningCoordinator_DequeueAndProcessControlEvent(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  result = CMSimpleQueueDequeue(*(a1 + 472));
  for (v5[0] = result; result; v5[0] = result)
  {
    if (*result == 2)
    {
      *(a1 + 480) &= ~*(result + 1);
      if (*(result + 4))
      {
        v3 = 0;
        goto LABEL_8;
      }
    }

    else if (*result == 1)
    {
      *(a1 + 480) |= *(result + 1);
      if (*(result + 4))
      {
        v3 = 1;
LABEL_8:
        *(a1 + 200) = v3;
      }
    }

    v4 = *(result + 1);
    if (v4)
    {
      dispatch_semaphore_signal(v4);
    }

    _VCAudioMachineLearningCoordinator_DestroyControlEvent(v5);
    result = CMSimpleQueueDequeue(*(a1 + 472));
  }

  return result;
}

void _VCAudioMachineLearningCoordinator_DestroyControlEvent(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      if (v3)
      {
        dispatch_release(v3);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

void sub_1DB722560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB722A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB72396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VCAudioMachineLearningCoordinator_PushAudioSamplesToRecognizer(void *a1, uint64_t a2)
{
  Buffer = VCAudioCaptionsBufferInfo_GetBuffer(a2);
  [a1 pushAudioSamples:Buffer];
  SampleCount = VCAudioBufferList_GetSampleCount(Buffer);

  return VCAudioBufferList_Shift(Buffer, SampleCount);
}

uint64_t _VCAudioMachineLearningCoordinator_StartCaptioning(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 432);
  *&v24[0] = -1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v24 + 8) = v5;
  *(&v24[1] + 8) = v5;
  if (a2)
  {
    [a2 format];
  }

  else
  {
    memset(v24, 0, 40);
  }

  *(a1 + 208) = [a2 token];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v6 = [a2 token];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___VCAudioMachineLearningCoordinator_StartCaptioning_block_invoke;
  v19[3] = &unk_1E85F6418;
  v19[4] = v4;
  v19[5] = a2;
  v19[6] = a1;
  v19[7] = &v20;
  [v4 start:v24 forToken:v6 withCompletionHandler:v19];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      v10 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v26 = v8;
          v27 = 2080;
          v28 = "_VCAudioMachineLearningCoordinator_StartCaptioning";
          v29 = 1024;
          v30 = 1116;
          v11 = " [%s] %s:%d Waiting for captions to start...";
          v12 = v9;
          v13 = 28;
LABEL_16:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        _VCAudioMachineLearningCoordinator_StartCaptioning_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v26 = v14;
          v27 = 2080;
          v28 = "_VCAudioMachineLearningCoordinator_StartCaptioning";
          v29 = 1024;
          v30 = 1116;
          v31 = 2112;
          v32 = v7;
          v33 = 2048;
          v34 = a1;
          v11 = " [%s] %s:%d %@(%p) Waiting for captions to start...";
          v12 = v15;
          v13 = 48;
          goto LABEL_16;
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v26 = v14;
        v27 = 2080;
        v28 = "_VCAudioMachineLearningCoordinator_StartCaptioning";
        v29 = 1024;
        v30 = 1116;
        v31 = 2112;
        v32 = v7;
        v33 = 2048;
        v34 = a1;
        _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) Waiting for captions to start...", buf, 0x30u);
      }
    }
  }

  dispatch_semaphore_wait(*(a1 + 240), 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 200) = 2;
  v17 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v17;
}

void sub_1DB7244D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VCAudioMachineLearningCoordinator_StopCaptioning(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = *(a1 + 432);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___VCAudioMachineLearningCoordinator_StopCaptioning_block_invoke;
  v15[3] = &unk_1E85F6440;
  v15[4] = a1;
  v15[5] = &v16;
  [v2 stopWithCompletionHandler:v15];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v21 = v4;
          v22 = 2080;
          v23 = "_VCAudioMachineLearningCoordinator_StopCaptioning";
          v24 = 1024;
          v25 = 1134;
          v7 = " [%s] %s:%d Waiting for captions to stop...";
          v8 = v5;
          v9 = 28;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        _VCAudioMachineLearningCoordinator_StopCaptioning_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v21 = v10;
          v22 = 2080;
          v23 = "_VCAudioMachineLearningCoordinator_StopCaptioning";
          v24 = 1024;
          v25 = 1134;
          v26 = 2112;
          v27 = v3;
          v28 = 2048;
          v29 = a1;
          v7 = " [%s] %s:%d %@(%p) Waiting for captions to stop...";
          v8 = v11;
          v9 = 48;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v21 = v10;
        v22 = 2080;
        v23 = "_VCAudioMachineLearningCoordinator_StopCaptioning";
        v24 = 1024;
        v25 = 1134;
        v26 = 2112;
        v27 = v3;
        v28 = 2048;
        v29 = a1;
        _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) Waiting for captions to stop...", buf, 0x30u);
      }
    }
  }

  dispatch_semaphore_wait(*(a1 + 240), 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 200) = 1;
  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v13;
}

BOOL _VCAudioMachineLearningCoordinator_ShouldStopCaptioning(uint64_t a1, void *a2, char a3)
{
  result = 0;
  v10 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x80) == 0)
  {
    v5 = *(a1 + 328);
    if (*(a1 + 440))
    {
      return 0;
    }

    else
    {
      *v9 = -1;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v9[8] = v7;
      *&v9[24] = v7;
      if (a2)
      {
        [a2 format];
        v8 = NAN;
      }

      else
      {
        memset(v9, 0, sizeof(v9));
        v8 = 0.0;
      }

      return [a2 countOfLowPrioritySamples] >= (v5 * v8);
    }
  }

  return result;
}

uint64_t VCAudioMachineLearningCoordinator_SetReadyForCaptioning(uint64_t result, char a2)
{
  if (result)
  {
    if ((*(result + 236) & 1) == 0)
    {
      *(result + 392) = a2;
    }
  }

  return result;
}

void _VCAudioMachineLearningCoordinator_LockedUpdateVoiceActivityDetector(float **a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 256) == 1)
  {
    v4 = a1 + 33;
    if ((a1[34] & 1) == 0)
    {
      SampleFormat = VCAudioBufferList_GetSampleFormat(a2);
      SampleCount = VCAudioBufferList_GetSampleCount(a2);
      v7 = *(SampleFormat + 32);
      v8 = *(SampleFormat + 16);
      *(v4 + 1) = *SampleFormat;
      *(v4 + 2) = v8;
      v4[6] = v7;
      *(v4 + 14) = SampleCount;
      VCVoiceDetector_Start(*v4, (v4 + 2));
      *(v4 + 8) = 1;
    }

    v9 = *v4;
    if (VCAudioBufferList_GetVoiceActivity(a2) || *(a1 + 336) == 1)
    {
      if (objc_opt_class() == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          v13 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] != 1)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              _VCAudioMachineLearningCoordinator_LockedUpdateVoiceActivityDetector_cold_2();
            }

            goto LABEL_26;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v30 = 136315650;
            v31 = v11;
            v32 = 2080;
            v33 = "_VCAudioMachineLearningCoordinator_SetOneToOneVoicePriority";
            v34 = 1024;
            v35 = 1164;
            v14 = " [%s] %s:%d Running sample through voice detector";
            v15 = v12;
            v16 = 28;
LABEL_18:
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v30, v16);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v10 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_26;
        }

        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        v19 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v30 = 136316162;
            v31 = v17;
            v32 = 2080;
            v33 = "_VCAudioMachineLearningCoordinator_SetOneToOneVoicePriority";
            v34 = 1024;
            v35 = 1164;
            v36 = 2112;
            v37 = v10;
            v38 = 2048;
            v39 = a1;
            _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) Running sample through voice detector", &v30, 0x30u);
          }

          goto LABEL_26;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 136316162;
          v31 = v17;
          v32 = 2080;
          v33 = "_VCAudioMachineLearningCoordinator_SetOneToOneVoicePriority";
          v34 = 1024;
          v35 = 1164;
          v36 = 2112;
          v37 = v10;
          v38 = 2048;
          v39 = a1;
          v14 = " [%s] %s:%d %@(%p) Running sample through voice detector";
          v15 = v18;
          v16 = 48;
          goto LABEL_18;
        }
      }

LABEL_26:
      VCVoiceDetector_ProcessSampleBuffer(v9, a2, 0);
      return;
    }

    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        v23 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            _VCAudioMachineLearningCoordinator_LockedUpdateVoiceActivityDetector_cold_1();
          }

          goto LABEL_42;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 136315650;
          v31 = v21;
          v32 = 2080;
          v33 = "_VCAudioMachineLearningCoordinator_SetOneToOneVoicePriority";
          v34 = 1024;
          v35 = 1167;
          v24 = " [%s] %s:%d Not running voice detector";
          v25 = v22;
          v26 = 28;
LABEL_37:
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, &v30, v26);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        v29 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v30 = 136316162;
            v31 = v27;
            v32 = 2080;
            v33 = "_VCAudioMachineLearningCoordinator_SetOneToOneVoicePriority";
            v34 = 1024;
            v35 = 1167;
            v36 = 2112;
            v37 = v20;
            v38 = 2048;
            v39 = a1;
            _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) Not running voice detector", &v30, 0x30u);
          }

          goto LABEL_42;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 136316162;
          v31 = v27;
          v32 = 2080;
          v33 = "_VCAudioMachineLearningCoordinator_SetOneToOneVoicePriority";
          v34 = 1024;
          v35 = 1167;
          v36 = 2112;
          v37 = v20;
          v38 = 2048;
          v39 = a1;
          v24 = " [%s] %s:%d %@(%p) Not running voice detector";
          v25 = v28;
          v26 = 48;
          goto LABEL_37;
        }
      }
    }

LABEL_42:
    VCAudioBufferList_SetPriority(a2, 1);
  }
}

BOOL OUTLINED_FUNCTION_46_1()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_47_0()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

double OUTLINED_FUNCTION_50()
{

  return VCAudioBufferList_GetHostTime(v0);
}

void OUTLINED_FUNCTION_3_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

CFTypeRef VCConnectionSelector_CopyPrimaryConnection(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0)
  {
    return CFRetain(v1);
  }

  else
  {
    return 0;
  }
}

void VCConnectionSelector_SetPrimaryConnection(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2 != cf)
    {
      *(a1 + 8) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v2)
      {

        CFRelease(v2);
      }
    }
  }
}

void VCConnectionSelector_UpdateConnectionForDuplication(uint64_t a1, int a2, int a3, int a4, int a5, const __CFArray *a6)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCConnectionSelector_UpdateConnectionForDuplication_cold_2();
    return;
  }

  if ((*(a1 + 64) & 1) != 0 || VCConnection_IsRelay(*(a1 + 72)))
  {
    v13 = (a1 + 88);
    v12 = *(a1 + 88);
    v14 = *(a1 + 72);
    if (v12 == v14)
    {
      goto LABEL_12;
    }

    *v13 = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (!v12)
    {
LABEL_12:
      v16 = (a1 + 80);
      v15 = *(a1 + 80);
      if (v15 != v14)
      {
        *v16 = v14;
        if (v14)
        {
          CFRetain(v14);
        }

        if (v15)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_17;
    }

LABEL_11:
    CFRelease(v12);
    goto LABEL_12;
  }

  v13 = (a1 + 88);
  v12 = *(a1 + 88);
  if (v12)
  {
    v14 = 0;
    *v13 = 0;
    goto LABEL_11;
  }

  v16 = (a1 + 80);
  v15 = *(a1 + 80);
  if (v15)
  {
    *v16 = 0;
LABEL_16:
    CFRelease(v15);
  }

LABEL_17:
  v17 = *(a1 + 24);
  v51 = v13;
  v52 = v16;
  if (v17)
  {
    v58 = CFArrayGetCount(v17) != 0;
  }

  else
  {
    v58 = 0;
  }

  theArray = v17;
  IsLocalOnWiFiOrWired = a4 == 0;
  IsRemoteOnWiFiOrWired = a5 == 0;
  v18 = VCConnection_CopyDescription(*(a1 + 72));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317186;
      v61 = v19;
      v62 = 2080;
      v63 = "VCConnectionSelector_UpdateConnectionForDuplication";
      v64 = 1024;
      v65 = 133;
      v66 = 1024;
      *v67 = a4 == 0;
      *&v67[4] = 1024;
      *&v67[6] = a5 == 0;
      *v68 = 1024;
      *&v68[2] = a3;
      v69 = 1024;
      v70 = a2;
      v71 = 1024;
      v72 = v58;
      v73 = 2112;
      v74 = v18;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: updateConnectionForDuplication isLocalPreferWiFi %d isRemotePreferWiFi: %d duplicationEnhancementEnabled: %d duplicationReason: %d useLinkPriorityForSelection: %d secondary connection %@", buf, 0x44u);
    }
  }

  v21 = a2 - 1;
  if ((a2 - 1) < 2)
  {
    v22 = a3;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1)
  {
    if (!v58)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v44 = VRTraceErrorLogLevelToCSTR();
        v45 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v61 = v44;
          v62 = 2080;
          v63 = "VCConnectionSelector_UpdateConnectionForDuplication";
          v64 = 1024;
          v65 = 137;
          v66 = 2112;
          *v67 = v18;
          _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Duplication active due to missing packets - updateConnectionForDuplication forces to use secondary connection %@", buf, 0x26u);
        }
      }

      if (v18)
      {
        v46 = v18;
        goto LABEL_88;
      }

      return;
    }

    v23 = *(a1 + 72);
    if (v23)
    {
      IsLocalOnWiFiOrWired = VCConnection_IsLocalOnWiFiOrWired(v23);
      IsRemoteOnWiFiOrWired = VCConnection_IsRemoteOnWiFiOrWired(*(a1 + 72));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v61 = v24;
          v62 = 2080;
          v63 = "VCConnectionSelector_UpdateConnectionForDuplication";
          v64 = 1024;
          v65 = 143;
          v66 = 1024;
          *v67 = IsLocalOnWiFiOrWired;
          *&v67[4] = 1024;
          *&v67[6] = IsRemoteOnWiFiOrWired;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Duplication active due to missing packets - updateConnectionForDuplication forces to use secondary connection interface preferences - isLocalPreferWiFi(updated): %d isRemotePreferWiFi(updated): %d", buf, 0x28u);
        }
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (!a6)
  {
    VCConnectionSelector_UpdateConnectionForDuplication_cold_1();
    return;
  }

  Count = CFArrayGetCount(a6);
  if (Count >= 1)
  {
    v27 = Count;
    v28 = 0;
    v29 = v22 ^ 1;
    v30 = v58;
    if (v21 >= 2)
    {
      v30 = 0;
    }

    v56 = v30;
    allocator = *MEMORY[0x1E695E480];
    v53 = 0xFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a6, v28);
      v32 = ValueAtIndex;
      if ((*(a1 + 64) & 1) == 0 && !VCConnection_IsRelay(ValueAtIndex))
      {
        goto LABEL_48;
      }

      v33 = VCConnection_CopyDescription(v32);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v61 = v34;
          v62 = 2080;
          v63 = "VCConnectionSelector_UpdateConnectionForDuplication";
          v64 = 1024;
          v65 = 157;
          v66 = 2112;
          *v67 = v33;
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: updateConnectionForDuplication check connection %@", buf, 0x26u);
        }
      }

      if ((VCConnection_Priority(v32) & 0xFFFFFFFE) == 2)
      {
        break;
      }

      if (VCConnection_IsOnSameInterfacesWithConnection(v32))
      {
        break;
      }

      if (*(a1 + 16) == 1)
      {
        IsEndToEndLink = VCConnection_IsEndToEndLink(v32);
        if (IsEndToEndLink != VCConnection_IsEndToEndLink(*(a1 + 8)))
        {
          break;
        }
      }

      if (IsLocalOnWiFiOrWired == VCConnection_IsLocalOnWiFiOrWired(v32))
      {
        if (!(v56 | (((IsRemoteOnWiFiOrWired ^ VCConnection_IsRemoteOnWiFiOrWired(v32)) & 1) == 0)))
        {
          break;
        }
      }

      else if (!v56)
      {
        break;
      }

      if (v29)
      {
        v37 = *v51;
        if (*v51 != v32)
        {
          *v51 = v32;
          if (v32)
          {
            CFRetain(v32);
          }

          if (v37)
          {
            CFRelease(v37);
          }
        }
      }

      if (!v58)
      {
        v47 = *v52;
        if (*v52 != v32)
        {
          *v52 = v32;
          if (v32)
          {
            CFRetain(v32);
          }

          if (v47)
          {
            CFRelease(v47);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v61 = v48;
            v62 = 2080;
            v63 = "VCConnectionSelector_UpdateConnectionForDuplication";
            v64 = 1024;
            v65 = 182;
            v66 = 2112;
            *v67 = v33;
            _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: updateConnectionForDuplication picks connection %@", buf, 0x26u);
          }
        }

        if (v33)
        {
          v46 = v33;
LABEL_88:
          CFRelease(v46);
        }

        return;
      }

      FirstIndexOfValue = theArray;
      if (theArray)
      {
        v39 = CFArrayGetCount(theArray);
      }

      else
      {
        v39 = 0;
      }

      valuePtr = VCConnection_ConnectionID(v32);
      v40 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
      if (theArray)
      {
        v76.location = 0;
        v76.length = v39;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v76, v40);
      }

      if (v40)
      {
        CFRelease(v40);
      }

      if (FirstIndexOfValue <= v53)
      {
        v41 = *v52;
        if (*v52 != v32)
        {
          *v52 = v32;
          if (v32)
          {
            CFRetain(v32);
          }

          if (v41)
          {
            CFRelease(v41);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v61 = v42;
            v62 = 2080;
            v63 = "VCConnectionSelector_UpdateConnectionForDuplication";
            v64 = 1024;
            v65 = 196;
            v66 = 2112;
            *v67 = v33;
            *&v67[8] = 1024;
            *v68 = FirstIndexOfValue;
            _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: updateConnectionForDuplication picks connection %@ selectedConnectionPriority: %d", buf, 0x2Cu);
          }
        }

        v53 = FirstIndexOfValue;
      }

      if (v33)
      {
        CFRelease(v33);
      }

      v29 = 0;
LABEL_48:
      if (v27 == ++v28)
      {
        return;
      }
    }

    if (v33)
    {
      CFRelease(v33);
    }

    goto LABEL_48;
  }
}

CFTypeRef VCConnectionSelector_CopyConnectionForDuplication(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnectionSelector_CopyConnectionForDuplication";
        v9 = 1024;
        v10 = 356;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Passing nil instance", &v5, 0x1Cu);
      }
    }

    return 0;
  }

  v1 = *(a1 + 80);
  if (!v1)
  {
    return 0;
  }

  return CFRetain(v1);
}

void OUTLINED_FUNCTION_5_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void sub_1DB7333D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DB733800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

void freeValueCallback(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

VCMediaControlInfoFaceTimeAudio *VCMediaControlInfoGeneratorCreateControlInfo(uint64_t a1)
{
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaControlInfoGeneratorCreateControlInfo_cold_1(v4, v5);
      }
    }

    return 0;
  }

  ControlInfoFromPool = _VCMediaControlInfo_CreateControlInfoFromPool(a1);
  if (ControlInfoFromPool)
  {
    v3 = ControlInfoFromPool;
    VCMediaControlInfo_SetVersion(ControlInfoFromPool, *(a1 + 96));
LABEL_23:
    _VCMediaControlInfoGenerator_PassMediaControlInfo(a1, v3, 1);
    return v3;
  }

  v6 = *(a1 + 8);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = VCMediaControlInfoIPCamera;
      goto LABEL_21;
    }

    if (v6 == 4)
    {
      v7 = VCMediaControlInfoMultiwayAudio;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = VCMediaControlInfoFaceTimeVideo;
LABEL_21:
      v3 = objc_alloc_init(v7);
      goto LABEL_22;
    }

LABEL_14:
    VCMediaControlInfo_SetVersion(0, *(a1 + 96));
    return 0;
  }

  v8 = objc_alloc_init(VCMediaControlInfoFaceTimeAudio);
  v3 = v8;
  v9 = *(a1 + 100);
  if (v9)
  {
    VCMediaControlInfoFaceTimeAudio_SetVideoEnabled(v8, 1);
    v9 = *(a1 + 100);
  }

  if ((v9 & 2) != 0)
  {
    [(VCMediaControlInfoFaceTimeAudio *)v3 setEcnEnabled:1];
  }

LABEL_22:
  VCMediaControlInfo_SetVersion(v3, *(a1 + 96));
  if (v3)
  {
    goto LABEL_23;
  }

  return v3;
}

uint64_t _VCMediaControlInfoGenerator_PassMediaControlInfo(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock((a1 + 104));
  Count = CFDictionaryGetCount(*(a1 + 16));
  v7 = 8 * Count;
  v8 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = (&v15 - v8);
  if (MEMORY[0x1EEE9AC00](Count))
  {
    v10 = memset(&v15 - v8, 170, v7);
    MEMORY[0x1EEE9AC00](v10);
    v11 = &v15 - v8;
    memset(v11, 170, v7);
  }

  else
  {
    v11 = &v17;
  }

  v16 = _VCMediaControlInfoGenerator_DisposeControlInfo;
  VCMediaControlInfo_SetDelegateAndVTable(a2, a1, &v16);
  CFDictionaryGetKeysAndValues(*(a1 + 16), v9, v11);
  if (Count >= 1)
  {
    do
    {
      v12 = *v11;
      if (a3)
      {
        if (!v12)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (!v12)
        {
          goto LABEL_12;
        }

        v13 = v12[1];
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v13(a1, *v9, a2);
LABEL_12:
      ++v9;
      v11 += 8;
      --Count;
    }

    while (Count);
  }

  return pthread_rwlock_unlock((a1 + 104));
}

void *VCMediaControlInfoGeneratorCreateControlInfoWithBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  ControlInfoFromPool = _VCMediaControlInfo_CreateControlInfoFromPool(a1);
  if (!ControlInfoFromPool)
  {
    v11 = (a1 + 8);
    v10 = *(a1 + 8);
    if (v10 < 5 && ((0x17u >> v10) & 1) != 0)
    {
      v9 = [objc_alloc(off_1E85F6558[v10]->isa) initWithBuffer:a2 length:a3 optionalControlInfo:a4 version:*(a1 + 96)];
      [v9 setFecFeedbackVersion:*(a1 + 97)];
      if (!v9)
      {
        return v9;
      }

      goto LABEL_4;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaControlInfoGeneratorCreateControlInfoWithBuffer_cold_1(v12, v11, v13);
      }
    }

    return 0;
  }

  v9 = ControlInfoFromPool;
  [ControlInfoFromPool setVersion:*(a1 + 96)];
  [v9 configureWithBuffer:a2 length:a3 optionalControlInfo:a4];
  [v9 setFecFeedbackVersion:*(a1 + 97)];
LABEL_4:
  _VCMediaControlInfoGenerator_PassMediaControlInfo(a1, v9, 0);
  return v9;
}

uint64_t VCMediaControlInfoGeneratorCreateWithTypeAndVersion(uint64_t a1, uint64_t a2)
{
  v4 = [VCMediaControlInfoGenerator alloc];

  return [(VCMediaControlInfoGenerator *)v4 initWithType:a1 version:a2];
}

uint64_t VCMediaControlInfoGeneratorCreateWithType(uint64_t a1)
{
  v2 = [VCMediaControlInfoGenerator alloc];

  return [(VCMediaControlInfoGenerator *)v2 initWithType:a1 version:1];
}

uint64_t VCMediaControlInfoGeneratorGetSerializedSizeWithConfig(unsigned int *a1, uint64_t *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = [[VCMediaControlInfoGenerator alloc] initWithType:*a1 version:*(a1 + 4)];
    ControlInfo = VCMediaControlInfoGeneratorCreateControlInfo(v5);
    *a2 = VCMediaControlInfoGetSize(ControlInfo);
    VCMediaControlInfoDispose(ControlInfo);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  return result;
}

void _VCMediaControlInfoGenerator_DisposeControlInfo(uint64_t a1, const void **a2)
{
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;
    VCMediaControlInfo_Invalidate(v3);
    if (v3)
    {
      pthread_mutex_lock((a1 + 32));
      v4 = *(a1 + 24);
      if (v4)
      {
        CFArrayAppendValue(v4, v3);
      }

      pthread_mutex_unlock((a1 + 32));

      CFRelease(v3);
    }
  }
}

void *_VCMediaControlInfo_CreateControlInfoFromPool(uint64_t a1)
{
  pthread_mutex_lock((a1 + 32));
  if ([*(a1 + 24) count])
  {
    v2 = *(a1 + 24);
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    v4 = ValueAtIndex;
    CFArrayRemoveValueAtIndex(v2, 0);
  }

  else
  {
    ValueAtIndex = 0;
  }

  pthread_mutex_unlock((a1 + 32));
  return ValueAtIndex;
}

uint64_t _VCAudioPowerSpectrumMeter_CompareListEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

const void *_VCAudioPowerSpectrumMeter_ProcessEventQueue(uint64_t a1, int a2)
{
  v48 = *MEMORY[0x1E69E9840];
  result = CMSimpleQueueDequeue(*(a1 + 32));
  v35 = result;
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x1E6986650];
    *&v5 = 136316674;
    v34 = v5;
    do
    {
      v8 = *(v6 + 76);
      switch(v8)
      {
        case 3:
          v36 = v6;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *(a1 + 88);
              *buf = 136315906;
              *&buf[4] = v20;
              v38 = 2080;
              v39 = "_VCAudioPowerSpectrumMeter_RemoveAllStream";
              v40 = 1024;
              v41 = 176;
              v42 = 2048;
              *v43 = v22;
              _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPowerSpectrumMeter=%p", buf, 0x26u);
            }
          }

          while (1)
          {
            v23 = VCSingleLinkedListPop(a1);
            *buf = v23;
            if (!v23)
            {
              break;
            }

            VCAudioPowerSpectrumSource_UnregisterAudioPowerSpectrumSink(v23[3], v23[6]);
            _VCAudioPowerSpectrumMeter_FreeStream(buf);
          }

          break;
        case 2:
          *buf = v6;
          v17 = VCSingleLinkedListRemove(a1, v6);
          v36 = v17;
          if (v17)
          {
            v18 = v17;
            VCAudioPowerSpectrumSource_UnregisterAudioPowerSpectrumSink(v17[3], v17[6]);
            CFDictionaryRemoveValue(*(a1 + 72), v18[2]);
            _VCAudioPowerSpectrumMeter_FreeStream(&v36);
          }

          v19 = buf;
          goto LABEL_24;
        case 1:
          v36 = v6;
          v9 = *(v6 + 40);
          VCAudioPowerSpectrumSource_UnregisterAudioPowerSpectrumSink([v9 realtimeContext], a1);
          v10 = VCSingleLinkedListPush(a1, v6);
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (v10)
          {
            if (ErrorLogLevelForModule >= 8)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *v7;
              v14 = *v7;
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = *(v6 + 8);
                  v16 = *(v6 + 56);
                  *buf = v34;
                  *&buf[4] = v12;
                  v38 = 2080;
                  v39 = "_VCAudioPowerSpectrumMeter_AddStream";
                  v40 = 1024;
                  v41 = 155;
                  v42 = 1024;
                  *v43 = 155;
                  *&v43[4] = 1024;
                  *&v43[6] = v15;
                  v44 = 2048;
                  v45 = v9;
                  v46 = 2048;
                  v47 = v16;
                  _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioPowerSpectrumMeter.m:%d: streamToken %d is registered to source %p with spectrum %p", buf, 0x3Cu);
                }
              }

              else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                v32 = *(v6 + 8);
                v33 = *(v6 + 56);
                *buf = v34;
                *&buf[4] = v12;
                v38 = 2080;
                v39 = "_VCAudioPowerSpectrumMeter_AddStream";
                v40 = 1024;
                v41 = 155;
                v42 = 1024;
                *v43 = 155;
                *&v43[4] = 1024;
                *&v43[6] = v32;
                v44 = 2048;
                v45 = v9;
                v46 = 2048;
                v47 = v33;
                _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioPowerSpectrumMeter.m:%d: streamToken %d is registered to source %p with spectrum %p", buf, 0x3Cu);
              }
            }

            v29 = [v9 realtimeContext];
            if (a2)
            {
              v30 = *(a1 + 88);
            }

            else
            {
              v30 = 0;
            }

            VCAudioPowerSpectrumSource_RegisterAudioPowerSpectrumSink(v29, *(v6 + 48), *(v6 + 56), v30, VCAudioPowerSpectrum_PushAudioSamples);
            goto LABEL_25;
          }

          if (ErrorLogLevelForModule >= 3)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
            {
              v28 = *(v6 + 8);
              *buf = 136315906;
              *&buf[4] = v26;
              v38 = 2080;
              v39 = "_VCAudioPowerSpectrumMeter_AddStream";
              v40 = 1024;
              v41 = 159;
              v42 = 1024;
              *v43 = v28;
              _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d error VCAudioPowerSpectrum already exists for streamToken[%d]", buf, 0x22u);
            }
          }

          break;
        default:
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v24 = VRTraceErrorLogLevelToCSTR();
            v25 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
            {
              v31 = *(v6 + 76);
              *buf = 136315906;
              *&buf[4] = v24;
              v38 = 2080;
              v39 = "_VCAudioPowerSpectrumMeter_ProcessEventQueue";
              v40 = 1024;
              v41 = 198;
              v42 = 1024;
              *v43 = v31;
              _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid operation: %d", buf, 0x22u);
            }
          }

          v19 = &v35;
          goto LABEL_24;
      }

      v19 = &v36;
LABEL_24:
      _VCAudioPowerSpectrumMeter_FreeStream(v19);
LABEL_25:
      result = CMSimpleQueueDequeue(*(a1 + 32));
      v6 = result;
      v35 = result;
    }

    while (result);
  }

  return result;
}

void _VCAudioPowerSpectrumMeter_FreeStream(void **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v1[7];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v1[8];
    if (v6)
    {
      CFRelease(v6);
    }

    free(v1);
  }
}

void VCAudioPowerSpectrumMeter_ProcessOutput(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if ((atomic_exchange((a1 + 56), 1u) & 1) == 0)
  {
    _VCAudioPowerSpectrumMeter_ProcessEventQueue(a1, 1);
    HostTime = VCAudioBufferList_GetHostTime(a2);
    if (HostTime - *(a1 + 64) >= 0.0)
    {
      v5 = *a1;
      if (*a1)
      {
        do
        {
          if (*(v5 + 72) == 1)
          {
            VCAudioPowerSpectrum_LogHealth(v5[6]);
          }

          v5 = *v5;
        }

        while (v5);
      }

      *(a1 + 64) = HostTime + 5.0;
    }

    v6 = VCAudioBufferList_GetHostTime(a2);
    v7 = *(a1 + 40);
    if (v6 - v7 >= 0.0)
    {
      v8 = *(a1 + 48);
      v9 = v7 + v8;
      v10 = v6 + v8;
      v11 = v9 <= v6 ? v10 : v9;
      *(a1 + 40) = v11;
      v12 = *a1;
      if (*a1)
      {
        v13 = 0;
        do
        {
          v14 = VCAudioPowerSpectrum_ChannelCount(v12[6]);
          if (v14)
          {
            v15 = v14;
            if ((v12[9] & 1) == 0)
            {
              CFDictionaryAddValue(*(a1 + 72), v12[2], v12[8]);
              *(v12 + 72) = 1;
            }

            ++v13;
            [v12[8] checkNumChannels:v15];
            for (i = 0; i != v15; ++i)
            {
              v20[0] = 0xAAAAAAAAAAAAAAAALL;
              v19 = -1431655766;
              VCAudioPowerSpectrum_GetFrequencyBins(v12[6], v20, &v19, i);
              if (v20[0])
              {
                v17 = v19 == 0;
              }

              else
              {
                v17 = 1;
              }

              if (!v17)
              {
                [v12[8] applyChannelBins:? binCount:? channelID:?];
              }
            }
          }

          v12 = *v12;
        }

        while (v12);
        if (v13)
        {
          v18 = MEMORY[0x1E1289F20](a1 + 80);
          [v18 audioPowerSpectrumMeter:*(a1 + 88) didUpdateAudioPowerSpectrums:*(a1 + 72)];
          if (v18)
          {
            CFRelease(v18);
          }
        }
      }
    }

    atomic_store(0, (a1 + 56));
  }
}

void sub_1DB736620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB7367A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCTimescaleInterface_InitializeWSOLA(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = VCTimescaleWSOLA_Initialize(a1 + 8, a2, a3, a4, a5);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if ((v7 & 0x80000000) != 0)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = v16;
        v21 = 2080;
        v22 = "VCTimescaleInterface_InitializeWSOLA";
        v23 = 1024;
        v24 = 20;
        v13 = " [%s] %s:%d WSOLA initialization failed";
        v14 = v17;
        v15 = 28;
        goto LABEL_8;
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 11592);
      v12 = *(a1 + 11576);
      v19 = 136316418;
      v20 = v9;
      v21 = 2080;
      v22 = "VCTimescaleInterface_InitializeWSOLA";
      v23 = 1024;
      v24 = 18;
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      v13 = " [%s] %s:%d WSOLA is enabled, Sample Rate = %d, Warp Frame Size = %d, Extended Buffer Size = %d";
      v14 = v10;
      v15 = 46;
LABEL_8:
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
    }
  }

  return v7;
}

uint64_t VCTimescaleInterface_InitializePSOLA(uint64_t a1, int a2, unsigned int a3, uint64_t a4, char a5)
{
  v19 = *MEMORY[0x1E69E9840];
  VCTimescalePSOLA_DSPInit(a1 + 8, a2, a3, a5, *(a1 + 34700), *a1);
  v7 = v6;
  if ((v6 & 0x80000000) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "VCTimescaleInterface_InitializePSOLA";
      v15 = 1024;
      v16 = 28;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PSOLA is enabled, Sample Rate = %d, ", &v11, 0x22u);
    }
  }

  return v7;
}

uint64_t VCTimescaleInterface_GetTailSizeWSOLA(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = *MEMORY[0x1E69E9840];
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  return VCTimescaleWSOLA_TailSize(__dst);
}

uint64_t VCTimescaleInterface_ActiveSpeechAdaptPSOLA(uint64_t a1, uint64_t a2, double a3)
{
  *(a2 + 152) = 0;
  if (*(a2 + 4) && (*(a2 + 168) & 1) == 0)
  {
    v5 = a1 + 8;

    return VCTimescalePSOLA_ActiveSpeechAdapt(v5, a2, a3);
  }

  else
  {
    VCTimescalePSOLA_IncFrameScaledGapCount(a1 + 8);
    return 0;
  }
}

uint64_t VCTimescaleInterface_GetWarpFrameSizeWSOLA(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 11592);
  }
}

uint64_t VCTimescaleInterface_GetWarpFrameSizePSOLA(uint64_t a1, double a2, double a3)
{
  LOWORD(a3) = *(a1 + 10);
  v3 = *&a3;
  v4 = 34688;
  if (a2 > 0.0)
  {
    v4 = 34680;
  }

  return (*(a1 + v4) * v3);
}

void OUTLINED_FUNCTION_4_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

uint64_t ParseMessage(void *a1, char *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65 = v4;
  v66 = v4;
  v63 = v4;
  v64 = v4;
  v61 = v4;
  v62 = v4;
  v59 = v4;
  v60 = v4;
  v57 = v4;
  v58 = v4;
  v55 = v4;
  v56 = v4;
  v53 = v4;
  v54 = v4;
  *__s = v4;
  v52 = v4;
  __s2 = 0xAAAAAAAAAAAAAAAALL;
  v49 = -1431655766;
  v5 = malloc_type_calloc(1uLL, 0x400uLL, 0x10F2040E4BCFADAuLL);
  if (v5)
  {
    v6 = v5;
    v7 = strstr(a2, "\r\n");
    if (v7)
    {
      v8 = v7 + 2;
      if (a2)
      {
        if (v7 - a2 >= 255)
        {
          v9 = 255;
        }

        else
        {
          v9 = v7 - a2;
        }

        __strncpy_chk();
        __s[v9] = 0;
        if (*__s == 793790803)
        {
          v6[1] = 2;
          v27 = strchr(__s, 32);
          if (v27)
          {
            *v27 = 0;
            if (*__s == 0x302E322F504953)
            {
              v36 = v27 + 1;
              v37 = strchr(v27 + 1, 32);
              if (v37)
              {
                *v37 = 0;
                v38 = atoi(v36);
                StatusCode = GetStatusCode(v38);
                v6[2] = StatusCode;
                if (!StatusCode)
                {
                  v18 = 2148139039;
                  if (VRTraceGetErrorLogLevelForModule() < 5)
                  {
                    goto LABEL_30;
                  }

                  v47 = VRTraceErrorLogLevelToCSTR();
                  v48 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_30;
                  }

                  *buf = 136316418;
                  v68 = v47;
                  v69 = 2080;
                  v70 = "ParseStatusLine";
                  v71 = 1024;
                  v72 = 123;
                  v73 = 1024;
                  v74 = 123;
                  v75 = 1024;
                  *v76 = v38;
                  *&v76[4] = 2080;
                  *&v76[6] = v36;
                  v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: Invalid status code(%d[%s])";
                  v32 = v48;
                  v33 = 50;
                  goto LABEL_47;
                }

                __strlcpy_chk();
LABEL_54:
                v40 = strstr(v8, "\r\n");
                if (v40)
                {
                  v41 = v40 + 2;
                  do
                  {
                    v42 = v41;
                    v43 = v41 - v8 - 2;
                    if (v43 >= 255)
                    {
                      v44 = 255;
                    }

                    else
                    {
                      v44 = v43;
                    }

                    __strncpy_chk();
                    __s[v44] = 0;
                    if ((ParseHeader(&__s2, &v49, __s, 0) & 0x80000000) == 0 && __s2)
                    {
                      AssignHeader(v6, v49, __s2);
                    }

                    v45 = strstr(v42, "\r\n");
                    v41 = v45 + 2;
                    if (!v45)
                    {
                      break;
                    }

                    LODWORD(v8) = v42;
                  }

                  while (v42);
                }

                v18 = 0;
                *a1 = v6;
                return v18;
              }

              v18 = 2148139039;
              if (VRTraceGetErrorLogLevelForModule() < 5)
              {
                goto LABEL_30;
              }

              v46 = VRTraceErrorLogLevelToCSTR();
              v20 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_30;
              }

              *buf = 136316162;
              v68 = v46;
              v69 = 2080;
              v70 = "ParseStatusLine";
              v71 = 1024;
              v72 = 116;
              v73 = 1024;
              v74 = 116;
              v75 = 2080;
              *v76 = __s;
              v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: No status code found in Status-Line[%s]";
            }

            else
            {
              v18 = 2148139039;
              if (VRTraceGetErrorLogLevelForModule() < 5)
              {
                goto LABEL_30;
              }

              v28 = VRTraceErrorLogLevelToCSTR();
              v20 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_30;
              }

              *buf = 136316162;
              v68 = v28;
              v69 = 2080;
              v70 = "ParseStatusLine";
              v71 = 1024;
              v72 = 107;
              v73 = 1024;
              v74 = 107;
              v75 = 2080;
              *v76 = __s;
              v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: Invalid SIP version in Status-Line[%s]";
            }
          }

          else
          {
            v18 = 2148139039;
            if (VRTraceGetErrorLogLevelForModule() < 5)
            {
              goto LABEL_30;
            }

            v31 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }

            *buf = 136316162;
            v68 = v31;
            v69 = 2080;
            v70 = "ParseStatusLine";
            v71 = 1024;
            v72 = 102;
            v73 = 1024;
            v74 = 102;
            v75 = 2080;
            *v76 = __s;
            v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: No SIP Version found in Status-Line[%s]";
          }
        }

        else
        {
          v6[1] = 1;
          v10 = strchr(__s, 32);
          if (v10)
          {
            v11 = v10;
            *v10 = 0;
            v12 = 1;
            while (strcmp(__s, g_apszMethods[v12]))
            {
              if (++v12 == 12)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v13 = VRTraceErrorLogLevelToCSTR();
                  v14 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136316162;
                    v68 = v13;
                    v69 = 2080;
                    v70 = "ParseRequestLine";
                    v71 = 1024;
                    v72 = 66;
                    v73 = 1024;
                    v74 = 66;
                    v75 = 2080;
                    *v76 = __s;
                    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: Extension Method is not supported[%s]", buf, 0x2Cu);
                  }
                }

                LODWORD(v12) = 0;
                break;
              }
            }

            v6[2] = v12;
            v15 = strchr(v11 + 1, 32);
            if (v15)
            {
              v16 = v15;
              *v15 = 0;
              v17 = ParseSipUri((v6 + 3), v11 + 1);
              if ((v17 & 0x80000000) != 0)
              {
                v18 = v17;
                if (VRTraceGetErrorLogLevelForModule() < 5)
                {
                  goto LABEL_30;
                }

                v34 = VRTraceErrorLogLevelToCSTR();
                v35 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_30;
                }

                *buf = 136316162;
                v68 = v34;
                v69 = 2080;
                v70 = "ParseRequestLine";
                v71 = 1024;
                v72 = 81;
                v73 = 1024;
                v74 = 81;
                v75 = 1024;
                *v76 = v18;
                v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: ParseSipUri failed(%08X)";
                v32 = v35;
                v33 = 40;
                goto LABEL_47;
              }

              if (strncmp(v16 + 1, "SIP/2.0", 7uLL))
              {
                v18 = 2148139039;
                if (VRTraceGetErrorLogLevelForModule() < 5)
                {
                  goto LABEL_30;
                }

                v19 = VRTraceErrorLogLevelToCSTR();
                v20 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_30;
                }

                *buf = 136316162;
                v68 = v19;
                v69 = 2080;
                v70 = "ParseRequestLine";
                v71 = 1024;
                v72 = 87;
                v73 = 1024;
                v74 = 87;
                v75 = 2080;
                *v76 = __s;
                v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: Invalid SIP version in Request-Line[%s]";
                goto LABEL_46;
              }

              goto LABEL_54;
            }

            v18 = 2148139039;
            if (VRTraceGetErrorLogLevelForModule() < 5)
            {
              goto LABEL_30;
            }

            v30 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }

            *buf = 136316162;
            v68 = v30;
            v69 = 2080;
            v70 = "ParseRequestLine";
            v71 = 1024;
            v72 = 75;
            v73 = 1024;
            v74 = 75;
            v75 = 2080;
            *v76 = __s;
            v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: No RequestURI found in Request-Line[%s]";
          }

          else
          {
            v18 = 2148139039;
            if (VRTraceGetErrorLogLevelForModule() < 5)
            {
              goto LABEL_30;
            }

            v29 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }

            *buf = 136316162;
            v68 = v29;
            v69 = 2080;
            v70 = "ParseRequestLine";
            v71 = 1024;
            v72 = 54;
            v73 = 1024;
            v74 = 54;
            v75 = 2080;
            *v76 = __s;
            v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: No Method found in Request-Line[%s]";
          }
        }

LABEL_46:
        v32 = v20;
        v33 = 44;
LABEL_47:
        _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, v21, buf, v33);
LABEL_30:
        free(v6);
        return v18;
      }

      a2 = v7 + 2;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v68 = v24;
        v69 = 2080;
        v70 = "ParseMessage";
        v71 = 1024;
        v72 = 150;
        v73 = 1024;
        v74 = 150;
        v75 = 2080;
        *v76 = a2;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipParse.c:%d: No Topline found in the message[%s]", buf, 0x2Cu);
      }
    }

    v18 = 2148139039;
    goto LABEL_30;
  }

  v18 = 2148139011;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ParseMessage_cold_1(v22, v23);
    }
  }

  return v18;
}

char *VCGetDeviceModelString(char *a1, size_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v12[15] = v4;
  *v12 = v4;
  v11 = v4;
  v10 = v4;
  __source = 0;
  __n = 63;
  if (sysctlbyname("hw.machine", &__source, &__n, 0, 0) || (v7 = __n, !memchr(&__source, 44, __n)) || strnstr(&__source, "iProd", v7))
  {
    v5 = 0;
    __n = 0;
  }

  else
  {
    v5 = __n;
  }

  *(&__source + v5) = 0;
  strlcpy(a1, &__source, a2);
  return a1;
}

__CFString *VCCopyDeviceName()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  if (!v0)
  {
LABEL_4:
    v1 = MGCopyAnswer();
    if (!v1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFStringGetTypeID())
  {
    CFRelease(v1);
    goto LABEL_4;
  }

LABEL_5:
  v3 = CFGetTypeID(v1);
  if (v3 == CFStringGetTypeID())
  {
    return v1;
  }

  CFRelease(v1);
LABEL_7:
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v4;
      v9 = 2080;
      v10 = "VCCopyDeviceName";
      v11 = 1024;
      v12 = 120;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No device name found, returning empty string", &v7, 0x1Cu);
    }
  }

  v1 = &stru_1F570E008;
  CFRetain(&stru_1F570E008);
  return v1;
}

uint64_t VCAudioSession_IsDeferredNetworkUplinkClockUpdateSupported(uint64_t a1)
{
  if (a1 && *(a1 + 274) == 1)
  {
    v1 = *(a1 + 273);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL OUTLINED_FUNCTION_4_16()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

uint64_t VCWRMHandler_ShouldForceWRMRecommendationUsingUserDefaults(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [+[VCDefaults sharedInstance](VCDefaults localWRMLinkType];
    if (v2 < 0)
    {
      return 0;
    }

    v3 = v2;
    if (*(a1 + 8) == v2)
    {
      return 0;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315906;
          v8 = v5;
          v9 = 2080;
          v10 = "VCWRMHandler_ShouldForceWRMRecommendationUsingUserDefaults";
          v11 = 1024;
          v12 = 42;
          v13 = 1024;
          v14 = v3;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Defaults settings force local iRATSuggestion to be %d", &v7, 0x22u);
        }
      }

      *(a1 + 8) = v3;
      return 1;
    }
  }

  else
  {
    VCWRMHandler_ShouldForceWRMRecommendationUsingUserDefaults_cold_1(&v7);
    return v7;
  }
}

uint64_t VCWRMHandler_ShouldRequestWRMNotificationWithDuplicationReason(uint64_t a1, int a2, int a3, char a4, double a5)
{
  v27 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316162;
          v18 = v11;
          v19 = 2080;
          v20 = "VCWRMHandler_ShouldRequestWRMNotificationWithDuplicationReason";
          v21 = 1024;
          v22 = 53;
          v23 = 1024;
          v24 = a2;
          v25 = 1024;
          v26 = a3;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: dupe state: %d and enableDuplication %d.", &v17, 0x28u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136316162;
        v18 = v11;
        v19 = 2080;
        v20 = "VCWRMHandler_ShouldRequestWRMNotificationWithDuplicationReason";
        v21 = 1024;
        v22 = 53;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = a3;
        _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d HandoverReport: dupe state: %d and enableDuplication %d.", &v17, 0x28u);
      }
    }

    if ((a2 - 1) > 1)
    {
      result = 0;
      if (a2 == 3 && (a4 & 1) == 0)
      {
        if (a5 - *(a1 + 32) <= 20.0 || a5 - *(a1 + 40) <= 60.0)
        {
          return 0;
        }

        else
        {
          *(a1 + 40) = a5;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v17 = 136315650;
              v18 = v15;
              v19 = 2080;
              v20 = "VCWRMHandler_ShouldRequestWRMNotificationWithDuplicationReason";
              v21 = 1024;
              v22 = 64;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: actively request for the latest iRAT recommendation from WRM.", &v17, 0x1Cu);
            }
          }

          return 1;
        }
      }
    }

    else
    {
      result = 0;
      *(a1 + 32) = a5;
    }
  }

  else
  {
    VCWRMHandler_ShouldRequestWRMNotificationWithDuplicationReason_cold_1(ErrorLogLevelForModule, &v17);
    return v17;
  }

  return result;
}

void VCWRMHandler_UpdateWRMNotificationRequestTime(uint64_t a1, double a2)
{
  if (a1)
  {
    *(a1 + 40) = a2;
  }

  else
  {
    VCWRMHandler_UpdateWRMNotificationRequestTime_cold_1();
  }
}

uint64_t VCWRMHandler_ProcessLocalWRMNotification(uint64_t a1, _DWORD *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 && (v3 = a2[1], v3 <= 1) && (*a2 - 1) <= 1)
    {
      result = 1;
      if (a3)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      if (*a2 != v6)
      {
        if (*(a1 + 8) != v3)
        {
          *(a1 + 8) = v3;
          *(a1 + 24) = micro();
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v7 = VRTraceErrorLogLevelToCSTR();
            v8 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(a1 + 8);
              v11 = 136315906;
              if (v9)
              {
                v10 = "WiFi";
              }

              else
              {
                v10 = "Cellular";
              }

              v12 = v7;
              v13 = 2080;
              v14 = "VCWRMHandler_ProcessLocalWRMNotification";
              v15 = 1024;
              v16 = 99;
              v17 = 2080;
              v18 = v10;
              _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Receive and cache local iRAT suggestion to %s.", &v11, 0x26u);
            }
          }
        }

        return 2;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    VCWRMHandler_ProcessLocalWRMNotification_cold_1(&v11);
    return v11;
  }

  return result;
}

uint64_t _VCJBTargetEstimatorSynchronizer_Configure(_OWORD *a1, _OWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a2 >= 4u)
  {
    _VCJBTargetEstimatorSynchronizer_Configure_cold_1(a2, &v13);
    return v13;
  }

  else
  {
    result = 0;
    a1[22] = *a2;
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[4];
    a1[25] = a2[3];
    a1[26] = v6;
    a1[23] = v4;
    a1[24] = v5;
    v7 = a2[5];
    v8 = a2[6];
    v9 = a2[8];
    a1[29] = a2[7];
    a1[30] = v9;
    a1[27] = v7;
    a1[28] = v8;
    v10 = a2[9];
    v11 = a2[10];
    v12 = a2[11];
    *(a1 + 540) = *(a2 + 188);
    a1[32] = v11;
    a1[33] = v12;
    a1[31] = v10;
  }

  return result;
}

uint64_t _VCJBTargetEstimatorSynchronizer_StoreCurrentSize(uint64_t result, int a2, float a3, double a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((result + 344));
  if (v4 <= a2)
  {
    _VCJBTargetEstimatorSynchronizer_StoreCurrentSize_cold_1(a2, v4, &v7);
    return v7;
  }

  else
  {
    v5 = (result + 96 + 24 * a2);
    if (v5 < result + 336 && v5 >= result + 96)
    {
      result = 0;
      atomic_store((a3 * 100000.0), v5);
      atomic_store((a4 * 100000.0), v5 + 1);
    }

    else
    {
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t _VCJBTargetEstimatorSynchronizerClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCJBTargetEstimatorSynchronizer_Create(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCJBTargetEstimatorSynchronizer_Create_cold_5();
    return v13;
  }

  if (!a3)
  {
    VCJBTargetEstimatorSynchronizer_Create_cold_4();
    return v13;
  }

  if (_MergedGlobals_3 != -1)
  {
    VCJBTargetEstimatorSynchronizer_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!Instance)
  {
    VCJBTargetEstimatorSynchronizer_Create_cold_3(ErrorLogLevelForModule);
    return v13;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a3;
      v13 = 136316418;
      v14 = v7;
      v15 = 2080;
      v16 = "VCJBTargetEstimatorSynchronizer_Create";
      v17 = 1024;
      v18 = 286;
      v19 = 2048;
      v20 = Instance;
      v21 = 1024;
      v22 = v9;
      v23 = 2080;
      v24 = a3 + 4;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d targetSynchronizer[%p] config.policy=%d dumpNamePrefix=%s", &v13, 0x36u);
    }
  }

  v10 = 96;
  v11 = vnegq_f64(0);
  do
  {
    *(Instance + v10) = v11;
    v10 += 24;
  }

  while (v10 != 336);
  *(Instance + 336) = 0;
  *(Instance + 344) = 0;
  pthread_mutex_init((Instance + 32), 0);
  result = _VCJBTargetEstimatorSynchronizer_Configure(Instance, a3);
  if (result)
  {
    VCJBTargetEstimatorSynchronizer_Create_cold_2(Instance);
    return 2151874561;
  }

  else
  {
    *a2 = Instance;
  }

  return result;
}

uint64_t VCJBTargetEstimatorSynchronizer_RegisterClient(uint64_t a1, _BYTE *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = pthread_mutex_lock((a1 + 32));
    v7 = 0;
    v8 = (a1 + 112);
    do
    {
      v9 = atomic_load((a1 + 344));
      if (v7 >= v9)
      {
        break;
      }

      if (*v8 == a3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v25 = 136316162;
            v26 = v22;
            v27 = 2080;
            v28 = "VCJBTargetEstimatorSynchronizer_RegisterClient";
            v29 = 1024;
            v30 = 310;
            v31 = 2080;
            *v32 = FourccToCStr(a3);
            *&v32[8] = 1024;
            *&v32[10] = v7;
            _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Previously registered client for streamGroupID=%s with currentClientID=%d", &v25, 0x2Cu);
          }
        }

        *a2 = v7;
        goto LABEL_28;
      }

      ++v7;
      v8 += 6;
    }

    while (v7 != 10);
    v10 = atomic_load((a1 + 344));
    do
    {
      v11 = v10;
      if (v10 > 9)
      {
        break;
      }

      atomic_compare_exchange_strong((a1 + 344), &v10, v10 + 1);
    }

    while (v10 != v11);
    v12 = a1 + 96 + 24 * v11;
    if (v12 >= a1 + 336 || v12 < a1 + 96)
    {
      __break(0x5519u);
      return result;
    }

    *(v12 + 16) = a3;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v15 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316418;
        v26 = v16;
        v27 = 2080;
        v28 = "VCJBTargetEstimatorSynchronizer_RegisterClient";
        v29 = 1024;
        v30 = 326;
        v31 = 2048;
        *v32 = a1;
        *&v32[8] = 1024;
        *&v32[10] = v11;
        v33 = 2080;
        v34 = FourccToCStr(a3);
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d targetSynchronizer[%p] currentClientID=%d streamGroupID=%s", &v25, 0x36u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() > 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v15;
      v20 = *v15;
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = FourccToCStr(a3);
          v25 = 136316162;
          v26 = v18;
          v27 = 2080;
          v28 = "VCJBTargetEstimatorSynchronizer_RegisterClient";
          v29 = 1024;
          v30 = 329;
          v31 = 1024;
          *v32 = v11;
          *&v32[4] = 2080;
          *&v32[6] = v21;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Succesfully registered Client ID currentClientID=%d streamGroupID=%s", &v25, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v24 = FourccToCStr(a3);
        v25 = 136316162;
        v26 = v18;
        v27 = 2080;
        v28 = "VCJBTargetEstimatorSynchronizer_RegisterClient";
        v29 = 1024;
        v30 = 329;
        v31 = 1024;
        *v32 = v11;
        *&v32[4] = 2080;
        *&v32[6] = v24;
        _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Succesfully registered Client ID currentClientID=%d streamGroupID=%s", &v25, 0x2Cu);
      }
    }

    *a2 = v11;
LABEL_28:
    pthread_mutex_unlock((a1 + 32));
    return 0;
  }

  else
  {
    VCJBTargetEstimatorSynchronizer_RegisterClient_cold_1();
    return v25;
  }
}

uint64_t VCJBTargetEstimatorSynchronizer_SetPolicy(uint64_t a1, int a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 352) = a2;
  }

  else
  {
    VCJBTargetEstimatorSynchronizer_SetPolicy_cold_1();
    return v4;
  }

  return result;
}

int64_t VCJBTargetEstimatorSynchronizer_GetSyncTarget(uint64_t a1, unsigned int a2, float *a3, float a4, float a5)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCJBTargetEstimatorSynchronizer_GetSyncTarget_cold_4();
    return *buf;
  }

  v10 = a5;
  if ((_VCJBTargetEstimatorSynchronizer_StoreCurrentSize(a1, a2, a4, a5) & 0x80000000) != 0)
  {
    VCJBTargetEstimatorSynchronizer_GetSyncTarget_cold_3();
    return *buf;
  }

  v11 = atomic_load((a1 + 344));
  if (v11 <= 1)
  {
    *a3 = a4;
    goto LABEL_43;
  }

  result = (a4 * 100000.0);
  v13 = *(a1 + 352);
  if (v13 <= 1)
  {
    if (!v13)
    {
      goto LABEL_26;
    }

    if (v13 == 1)
    {
      v14 = result;
      v15 = a1;
      v16 = a5;
      v17 = 1;
LABEL_25:
      result = _VCJBTargetEstimatorSynchronizer_ApplyPolicy_MinMax(v15, v17, v14, v16);
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v13 == 2)
  {
    v14 = result;
    v15 = a1;
    v16 = a5;
    v17 = 0;
    goto LABEL_25;
  }

  if (v13 != 3)
  {
LABEL_18:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJBTargetEstimatorSynchronizer_GetSyncTarget_cold_1(v22);
      }
    }

    v23 = 2151874581;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJBTargetEstimatorSynchronizer_GetSyncTarget_cold_2(v24);
      }
    }

    return v23;
  }

  v18 = atomic_load((a1 + 348));
  v19 = (a1 + 96 + 24 * v18);
  if (v19 >= a1 + 336 || v19 < a1 + 96)
  {
    goto LABEL_55;
  }

  v21 = atomic_load(v19);
  if (v21 == 0x8000000000000000)
  {
    result = result;
  }

  else
  {
    result = v21;
  }

LABEL_26:
  atomic_store(result, (a1 + 336));
  *a3 = result / 100000.0;
  if ((*(a1 + 16) & 1) == 0)
  {
    v25 = arc4random();
    *(a1 + 20) = v25;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v64 = v26;
    v65 = v26;
    v62 = v26;
    v63 = v26;
    v60 = v26;
    v61 = v26;
    v58 = v26;
    v59 = v26;
    v56 = v26;
    v57 = v26;
    *__str = v26;
    v55 = v26;
    snprintf(__str, 0xC8uLL, "%010u-%s", v25, (a1 + 356));
    v27 = VCBoundsSafety_IndexableToNulTerminated(__str, 0xC8uLL);
    *(a1 + 24) = LogDump_OpenLog(v27, "avconference", ".jbsyncdump", "", 9, "");
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 24);
        *buf = 136316418;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = "_VCJBTargetEstimatorSynchronizer_CheckIfDumpIsInitialized";
        *&buf[22] = 1024;
        *&buf[24] = 163;
        *&buf[28] = 2048;
        *&buf[30] = a1;
        *&buf[38] = 2048;
        *&buf[40] = v30;
        *&buf[48] = 2080;
        *&buf[50] = __str;
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d synchronizer[%p] _logDump=%p dumpIDString=%s", buf, 0x3Au);
      }
    }

    *(a1 + 16) = 1;
    if (*(a1 + 24))
    {
      memcpy(buf, "Time\tClientID\tstreamGroupID\t", 0x190uLL);
        ;
      }

      __sprintf_chk(buf, 0, 0x190uLL, "%sSyncTarget\t", buf);
      VRLogfilePrintSync(*(a1 + 24), "%s\n", v32, v33, v34, v35, v36, v37, buf);
      if ((*(a1 + 16) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  if (!*(a1 + 24))
  {
    goto LABEL_43;
  }

  memset(buf, 0, 400);
  result = __sprintf_chk(buf, 0, 0x190uLL, "%s%d\t", buf, a2);
  v38 = a1 + 96;
  v39 = a1 + 96 + 24 * a2;
  if (v39 < a1 + 336 && v39 >= v38)
  {
    __sprintf_chk(buf, 0, 0x190uLL, "%s%d\t", buf, *(v39 + 16));
    for (j = 0; j != 240; j += 24)
    {
      v41 = atomic_load((v38 + j));
      if ((v41 / 100000.0) >= 0.0)
      {
        __sprintf_chk(buf, 0, 0x190uLL, "%s%.4f\t");
      }

      else
      {
        __sprintf_chk(buf, 0, 0x190uLL, "%s%c\t");
      }
    }

    v42 = atomic_load((a1 + 336));
    __sprintf_chk(buf, 0, 0x190uLL, "%s%.4f\t", buf, v42 / 100000.0);
    VRLogfilePrintWithTimestamp(*(a1 + 24), "%s\n", v43, v44, v45, v46, v47, v48, buf);
LABEL_43:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      v51 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *a3;
          *buf = 136316930;
          *&buf[4] = v49;
          *&buf[12] = 2080;
          *&buf[14] = "VCJBTargetEstimatorSynchronizer_GetSyncTarget";
          *&buf[22] = 1024;
          *&buf[24] = 384;
          *&buf[28] = 2048;
          *&buf[30] = a1;
          *&buf[38] = 1024;
          *&buf[40] = a2;
          *&buf[44] = 2048;
          *&buf[46] = a4;
          *&buf[54] = 2048;
          *&buf[56] = v10;
          *&buf[64] = 2048;
          *&buf[66] = v52;
          _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d targetSynchronizer[%p] clientID=%d currentTargetSize=%4.4f arrivalTime=%4.4f syncTargetSize=%4.4f", buf, 0x4Au);
        }
      }

      else if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v53 = *a3;
        *buf = 136316930;
        *&buf[4] = v49;
        *&buf[12] = 2080;
        *&buf[14] = "VCJBTargetEstimatorSynchronizer_GetSyncTarget";
        *&buf[22] = 1024;
        *&buf[24] = 384;
        *&buf[28] = 2048;
        *&buf[30] = a1;
        *&buf[38] = 1024;
        *&buf[40] = a2;
        *&buf[44] = 2048;
        *&buf[46] = a4;
        *&buf[54] = 2048;
        *&buf[56] = v10;
        *&buf[64] = 2048;
        *&buf[66] = v53;
        _os_log_debug_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEBUG, " [%s] %s:%d targetSynchronizer[%p] clientID=%d currentTargetSize=%4.4f arrivalTime=%4.4f syncTargetSize=%4.4f", buf, 0x4Au);
      }
    }

    return 0;
  }

LABEL_55:
  __break(0x5519u);
  return result;
}

uint64_t _VCJBTargetEstimatorSynchronizer_Finalize(unint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "_VCJBTargetEstimatorSynchronizer_Finalize";
      v10 = 1024;
      v11 = 73;
      v12 = 2048;
      v13 = a1;
      v14 = 2080;
      v15 = a1 + 356;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d targetSynchronizer[%p] dumpNamePrefix=%s", &v6, 0x30u);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    LogDump_CloseLog(v4);
    *(a1 + 24) = 0;
  }

  if (a1 + 560 <= a1)
  {
    __break(0x5519u);
  }

  return pthread_mutex_destroy((a1 + 32));
}

uint64_t _VCJBTargetEstimatorSynchronizer_ApplyPolicy_MinMax(uint64_t a1, int a2, float a3, float a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((a1 + 344));
  v25 = a3;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1 + 96;
    v8 = (a1 + 336);
    v9 = (a4 * 100000.0);
    v10 = "";
    v11 = (a1 + 96);
    v27 = a3;
    do
    {
      if (v11 >= v8 || v11 < v7)
      {
        __break(0x5519u);
      }

      v12 = atomic_load(v11 + 1);
      v13 = v9 - v12;
      if ((v9 - v12) < 200001)
      {
        v20 = atomic_load(v11);
        if (v20 != 0x8000000000000000)
        {
          v21 = v27;
          v22 = v27 >= v20;
          if (!a2)
          {
            v22 = v27 <= v20;
          }

          if ((v6 & v22 & 1) == 0)
          {
            v21 = v20;
          }

          v27 = v21;
          v6 = 1;
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v14 = v6;
        v15 = v10;
        v16 = v13;
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        v19 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v29 = v17;
            v30 = 2080;
            v31 = "_VCJBTargetEstimatorSynchronizer_ApplyPolicy_MinMax";
            v32 = 1024;
            v33 = 198;
            v34 = 1024;
            v35 = v5;
            v36 = 2048;
            v37 = v16 / 200000.0;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Ignoring old jitter values i=%d timeDiff=%4.2f", buf, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          v29 = v17;
          v30 = 2080;
          v31 = "_VCJBTargetEstimatorSynchronizer_ApplyPolicy_MinMax";
          v32 = 1024;
          v33 = 198;
          v34 = 1024;
          v35 = v5;
          v36 = 2048;
          v37 = v16 / 200000.0;
          _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Ignoring old jitter values i=%d timeDiff=%4.2f", buf, 0x2Cu);
        }

        v10 = v15;
        v6 = v14;
      }

      ++v5;
      v11 += 3;
    }

    while (v4 != v5);
    if (v6)
    {
      v23 = v27;
      atomic_store(v27, v8);
      return v23;
    }
  }

  return v25;
}

unint64_t _VCOverlayManager_configurationFromCurrentDefaults()
{
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableInfoOverlay", 0);
  StoredValue = _VCOverlayManager_getStoredValue(@"overlayAudioVerbosity", 2);
  v2 = _VCOverlayManager_getStoredValue(@"overlayVideoVerbosity", 2);
  v3 = _VCOverlayManager_getStoredValue(@"overlayNetworkVerbosity", 2);
  return (v3 << 24) | (_VCOverlayManager_getStoredValue(@"overlayFixedFontSize", 0) << 32) | (v2 << 16) | (StoredValue << 8) | BoolValueForKey;
}

uint64_t _VCOverlayInfo_copyOverlayInfoForToken(uint64_t a1)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  valuePtr[0] = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (_VCOverlayManager_sharedOverlay_onceToken != -1)
  {
    _VCOverlayInfo_copyOverlayInfoForToken_cold_1();
  }

  v1 = _VCOverlayManager_sharedOverlay__overlayManager;
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, valuePtr);
  if (v2)
  {
    v3 = *(v1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCOverlayInfo_copyOverlayInfoForToken_block_invoke;
    block[3] = &unk_1E85F6678;
    block[4] = &v7;
    block[5] = v1;
    block[6] = v2;
    dispatch_sync(v3, block);
    CFRelease(v2);
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

BOOL _VCOverlayManager_AddSourceToDictionary(const __CFDictionary *a1, const __CFString *a2, int a3, char a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = v8;
      v23 = 2080;
      v24 = "_VCOverlayManager_AddSourceToDictionary";
      v25 = 1024;
      v26 = 56;
      v27 = 2080;
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] key=%s", buf, 0x26u);
    }
  }

  if (_VCOverlayManager_sharedOverlay_onceToken != -1)
  {
    _VCOverlayInfo_copyOverlayInfoForToken_cold_1();
  }

  dispatch_assert_queue_V2(*(_VCOverlayManager_sharedOverlay__overlayManager + 8));
  if (CFDictionaryContainsKey(a1, a2))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = CFStringGetCStringPtr(a2, 0x8000100u);
        *buf = 136315906;
        v22 = v10;
        v23 = 2080;
        v24 = "_VCOverlayManager_AddSourceToDictionary";
        v25 = 1024;
        v26 = 61;
        v27 = 2080;
        CStringPtr = v12;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] source type already exists for key=%s", buf, 0x26u);
      }
    }

    return 0;
  }

  value = 0;
  if ((VCOverlaySource_Create(*MEMORY[0x1E695E480], &value) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = micro();
  v14 = value;
  *(value + 2) = v13;
  v14[6] = a3;
  *(v14 + 28) = a4;
  CFDictionaryAddValue(a1, a2, v14);
  v15 = CFDictionaryContainsKey(a1, a2) != 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = CFStringGetCStringPtr(a2, 0x8000100u);
      *buf = 136315906;
      v22 = v16;
      v23 = 2080;
      v24 = "_VCOverlayManager_AddSourceToDictionary";
      v25 = 1024;
      v26 = 72;
      v27 = 2080;
      CStringPtr = v18;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] source successfully added for key=%s", buf, 0x26u);
    }
  }

  CFRelease(value);
  return v15;
}

CFMutableDictionaryRef VCOverlayManager_registerOverlayForToken(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  if (!a1)
  {
    return 0;
  }

  if (_VCOverlayManager_sharedOverlay_onceToken != -1)
  {
    VCOverlayManager_registerOverlayForToken_cold_1();
  }

  v1 = _VCOverlayManager_sharedOverlay__overlayManager;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  if (v3)
  {
    v6 = Mutable == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = "VCOverlayManager_registerOverlayForToken";
        *&buf[22] = 1024;
        v20 = 115;
        v21 = 2048;
        v22 = valuePtr;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] error allocating overlayInfo token=%ld", buf, 0x26u);
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v5)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v20) = 0;
    v9 = *(v1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCOverlayManager_registerOverlayForToken_block_invoke;
    block[3] = &unk_1E85F66A0;
    block[6] = v1;
    block[7] = v3;
    block[8] = valuePtr;
    block[9] = v5;
    block[4] = &v12;
    block[5] = buf;
    dispatch_sync(v9, block);
    CFRelease(v3);
    CFRelease(v5);
    v5 = v13[5];
    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_1DB7448F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCOverlayManager_unregisterOverlayForToken(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (_VCOverlayManager_sharedOverlay_onceToken != -1)
  {
    _VCOverlayInfo_copyOverlayInfoForToken_cold_1();
  }

  v2 = *(_VCOverlayManager_sharedOverlay__overlayManager + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VCOverlayManager_unregisterOverlayForToken_block_invoke;
  v5[3] = &unk_1E85F6678;
  v5[5] = a1;
  v5[6] = _VCOverlayManager_sharedOverlay__overlayManager;
  v5[4] = &v6;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t VCOverlayManager_createOverlaySourceForToken(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = "VCOverlayManager_createOverlaySourceForToken";
      *&buf[22] = 1024;
      *v14 = 165;
      *&v14[4] = 2048;
      *&v14[6] = a1;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [VCOverlayManager] token=%ld and type=%d", buf, 0x2Cu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *v14 = 0;
  v6 = _VCOverlayInfo_copyOverlayInfoForToken(a1);
  if (v6)
  {
    if (a2 > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E85F6710[a2];
    }

    if (_VCOverlayManager_sharedOverlay_onceToken != -1)
    {
      _VCOverlayInfo_copyOverlayInfoForToken_cold_1();
    }

    v9 = *(_VCOverlayManager_sharedOverlay__overlayManager + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCOverlayManager_createOverlaySourceForToken_block_invoke;
    block[3] = &unk_1E85F66C8;
    block[6] = v7;
    block[7] = a1;
    v12 = a2;
    block[4] = buf;
    block[5] = v6;
    dispatch_sync(v9, block);
    CFRelease(v6);
    v8 = *(*&buf[8] + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v8;
}

uint64_t VCOverlayManager_releaseOverlaySourceWithToken(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _VCOverlayInfo_copyOverlayInfoForToken(a1);
  if (v3)
  {
    v4 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    if (a2 <= 2)
    {
      v4 = off_1E85F6710[a2];
    }

    if (_VCOverlayManager_sharedOverlay_onceToken != -1)
    {
      _VCOverlayInfo_copyOverlayInfoForToken_cold_1();
    }

    v5 = *(_VCOverlayManager_sharedOverlay__overlayManager + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __VCOverlayManager_releaseOverlaySourceWithToken_block_invoke;
    v7[3] = &unk_1E85F6678;
    v7[5] = v3;
    v7[6] = v4;
    v7[4] = &v8;
    dispatch_sync(v5, v7);
    CFRelease(v3);
    LOBYTE(v3) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v3 & 1;
}

uint64_t VCOverlayManager_isOverlayEnabled()
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (_VCOverlayManager_sharedOverlay_onceToken != -1)
  {
    _VCOverlayInfo_copyOverlayInfoForToken_cold_1();
  }

  v0 = *(_VCOverlayManager_sharedOverlay__overlayManager + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __VCOverlayManager_isOverlayEnabled_block_invoke;
  block[3] = &unk_1E85F66F0;
  block[4] = &v4;
  block[5] = _VCOverlayManager_sharedOverlay__overlayManager;
  dispatch_sync(v0, block);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t _VCOverlayManager_getStoredValue(const __CFString *a1, uint64_t a2)
{
  v3 = CFPreferencesCopyAppValue(a1, @"com.apple.VideoConference");
  if (v3)
  {
    v4 = v3;
    a2 = [v3 intValue];
    CFRelease(v4);
  }

  return a2;
}

void VCOverlayManager_updateOverlayState(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_VCOverlayManager_sharedOverlay_onceToken != -1)
  {
    VCOverlayManager_registerOverlayForToken_cold_1();
  }

  v2 = _VCOverlayManager_sharedOverlay__overlayManager;
  if (a1)
  {
    LOBYTE(v3) = *a1;
    LOBYTE(v4) = *(a1 + 1);
    LOBYTE(v5) = *(a1 + 2);
    LOBYTE(v6) = *(a1 + 3);
    LODWORD(v7) = *(a1 + 4);
  }

  else
  {
    v3 = _VCOverlayManager_configurationFromCurrentDefaults();
    v4 = v3 >> 8;
    v5 = v3 >> 16;
    v6 = v3 >> 24;
    v7 = HIDWORD(v3);
  }

  v8 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __VCOverlayManager_updateOverlayState_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  dispatch_sync(v8, block);
}

uint64_t _VCOverlayManager_updatePixelBufferOverlaySettings(int a1, CFDictionaryRef theDict, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"vcpixelbufferoverlay");
  objc_sync_enter(Value);
  v9 = xmmword_1DBD48FE8;
  v10 = xmmword_1DBD48FF8;
  v11 = xmmword_1DBD49008;
  v8[0] = xmmword_1DBD48FC8;
  v8[1] = xmmword_1DBD48FD8;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (Value)
  {
    [Value currentDetails];
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    memset(v8, 0, sizeof(v8));
  }

  *(v8 + 12) = *a3;
  v6[2] = v9;
  v6[3] = v10;
  v6[4] = v11;
  v7 = v12;
  v6[0] = v8[0];
  v6[1] = v8[1];
  [Value setCurrentDetails:v6];
  return objc_sync_exit(Value);
}

uint64_t _VCOverlaySourceClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCOverlaySource_Create(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCOverlaySource_Create_cold_6(&v10);
    return v10;
  }

  if (_MergedGlobals_4 != -1)
  {
    VCOverlaySource_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCOverlaySource_Create_cold_5(&v10);
    return v10;
  }

  v4 = Instance;
  v5 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10620403D7EC478uLL);
  if (v5)
  {
    *(v4 + 48) = v5;
    v6 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10620403D7EC478uLL);
    if (v6)
    {
      *(v4 + 40) = v6;
      v7 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10620403D7EC478uLL);
      if (v7)
      {
        v8 = v7;
        result = 0;
        *(v4 + 56) = v8;
        *(v4 + 32) = 0;
        *a2 = v4;
        return result;
      }

      VCOverlaySource_Create_cold_2((v4 + 48), (v4 + 40));
    }

    else
    {
      VCOverlaySource_Create_cold_3((v4 + 48));
    }
  }

  else
  {
    VCOverlaySource_Create_cold_4();
  }

  CFRelease(v4);
  return 2;
}

uint64_t VCOverlaySource_Write(uint64_t result)
{
  v1 = *(result + 32) + 1;
  *(result + 32) = v1;
  v2 = *(result + 40);
  *v2 = v1;
  do
  {
    v3 = *(result + 56);
    v4 = v3;
    atomic_compare_exchange_strong_explicit((result + 56), &v4, v2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v4 != v3);
  *(result + 40) = v3;
  return result;
}

uint64_t VCOverlaySource_Read(uint64_t result)
{
  v1 = *(result + 32) - *(result + 36);
  if (v1)
  {
    v2 = v1 > 0x7FFFFFFE;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(result + 48);
    do
    {
      v4 = *(result + 56);
      v5 = v4;
      atomic_compare_exchange_strong_explicit((result + 56), &v5, v3, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    *(result + 48) = v4;
    *(result + 36) = *v4;
  }

  return result;
}

void VCOverlaySource_SetParticipantID(void *a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = a1[5];
    v5 = *(v4 + 16);
    *(v4 + 16) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[6];
    v7 = *(v6 + 16);
    *(v6 + 16) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[7];
    v9 = *(v8 + 16);
    *(v8 + 16) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

double _VCOverlaySource_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void _VCOverlaySource_Finalize(uint64_t a1)
{
  free(*(a1 + 40));
  free(*(a1 + 48));
  v2 = *(a1 + 56);

  free(v2);
}

void _VCOverlaySourceTextHelper_appendLinkStateToString(__CFString *a1, unsigned __int8 *a2)
{
  v2 = 4;
  if (!a2[3])
  {
    v2 = 0;
  }

  v3 = a2 + 5;
  if (!a2[3])
  {
    v3 = a2 + 1;
  }

  v4 = 2;
  if (a2[3])
  {
    v4 = 6;
  }

  v5 = a2[v4];
  v6 = a2[v2];
  v7 = *v3;
  v8 = "";
  if (a2[3])
  {
    v8 = ":D";
  }

  v9 = v5 == 0;
  v10 = 80;
  if (!v9)
  {
    v10 = 82;
  }

  if (v7)
  {
    v11 = 67;
  }

  else
  {
    v11 = 87;
  }

  if (v6)
  {
    v12 = 67;
  }

  else
  {
    v12 = 87;
  }

  CFStringAppendFormat(a1, 0, @"%sActive - %c:%c:%c%s\n", "  ", v12, v11, v10, v8);
}

void VCOverlaySourceTextHelper_appendHeaderTextToString(uint64_t a1)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFStringAppendFormat(v2, 0, @"\n\n\n");
      if (*(a1 + 9))
      {
        _VCOverlaySourceTextHelper_appendLinkStateToString(*a1, (a1 + 10));
      }

      *v15 = 0;
      v16 = 0;
      memset(v17, 0, sizeof(v17));
      v3 = *(a1 + 32);
      if (v3)
      {
        v18[0] = *(a1 + 40) - v3;
        v4 = gmtime(v18);
        strftime(v15, 0x1EuLL, "%Hm%Mm%Ss", v4);
      }

      *v12 = 0;
      v13 = 0;
      memset(v14, 0, sizeof(v14));
      memset(v18, 0, 30);
      __str = 0;
      *&v9.tv_usec = 0;
      v10 = 0;
      v9.tv_sec = 0;
      gettimeofday(&v9, &v10);
      v5 = localtime(&v9.tv_sec);
      strftime(v18, 0x1EuLL, "%T", v5);
      snprintf(&__str, 1uLL, ".%d", v9.tv_usec);
      snprintf(v12, 0x1EuLL, "%s%s", v18, &__str);
      CFStringAppendFormat(*a1, 0, @"%s%s (%s)\n", "  ", v12, v15);
      v6 = *(a1 + 24);
      if (v6)
      {
        v7 = *a1;
        CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
        CFStringAppendFormat(v7, 0, @"%sID: %.8s...\n", "  ", CStringPtr);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCOverlaySourceTextHelper_appendHeaderTextToString_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCOverlaySourceTextHelper_appendHeaderTextToString_cold_2();
    }
  }
}

void VCOverlaySourceTextHelper_appendVideoTextToString(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        if (v3 == 1)
        {
          CFStringAppendFormat(v2, 0, @"%s%dx%d\n%s%.01ffps\n", "  ", *(a1 + 208), *(a1 + 216), "  ", *(a1 + 240));
        }

        else if (v3 == 2)
        {

          _VCOverlaySourceTextHelper_appendLowVerbosityVideoTextToString(a1);
        }
      }

      else
      {
        switch(v3)
        {
          case 3u:
            _VCOverlaySourceTextHelper_appendLowVerbosityVideoTextToString(a1);

            _VCOverlaySourceTextHelper_appendMediumVerbosityVideoTextToString(a1);
            break;
          case 4u:
            _VCOverlaySourceTextHelper_appendLowVerbosityVideoTextToString(a1);
            _VCOverlaySourceTextHelper_appendMediumVerbosityVideoTextToString(a1);
            CFStringAppendFormat(*a1, 0, @"%sJQ Size(ms): %0.1f (%0.1f avg)\n%sTotal Stall: %0.1fms\n%sStalls: %d\n%sErasures: %d\n%sFIRs: %d\n%sOffset: %0.2fms\n%sFEC Overhead: %0.2f", "  ", *(a1 + 172), *(a1 + 180), "  ", *(a1 + 164), "  ", *(a1 + 168), "  ", *(a1 + 184), "  ", *(a1 + 196), "  ", *(a1 + 200), "  ", *(a1 + 112));
            break;
          case 5u:
            CFStringAppendFormat(v2, 0, @"\n%s🎥Video Rx\n%sAvg FPS: %0.1ffps\n%sBR T/M/FEC kbps: %-4d/%-4d/%-4d\n%sPLR: %d%%\n%sJQ Size(ms): %0.1f (%0.1f avg)\n%sTotal Stall: %0.1fms\n%sStalls: %d\n", "  ", "  ", *(a1 + 136), "  ", *(a1 + 100), (*(a1 + 100) - *(a1 + 108)), *(a1 + 108), "  ", *(a1 + 116), "  ", *(a1 + 172), *(a1 + 180), "  ", *(a1 + 164), "  ", *(a1 + 168));
            break;
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCOverlaySourceTextHelper_appendVideoTextToString_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCOverlaySourceTextHelper_appendVideoTextToString_cold_2();
    }
  }
}

void VCOverlaySourceTextHelper_appendAudioTextToString(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(a1 + 8);
      if ((v2 - 1) >= 3)
      {
        if (v2 == 4)
        {
          _VCOverlaySourceTextHelper_appendLowVerbosityAudioTextToString(a1);
          CFStringAppendFormat(*a1, 0, @"%sPacket Bytes: %d\n%sCodec Payload: %d\n%sErasure Count: %d\n%sStall Time: %0.2f", "  ", *(a1 + 36), "  ", *(a1 + 72), "  ", *(a1 + 60), "  ", *(a1 + 64));
        }
      }

      else
      {

        _VCOverlaySourceTextHelper_appendLowVerbosityAudioTextToString(a1);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCOverlaySourceTextHelper_appendAudioTextToString_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCOverlaySourceTextHelper_appendAudioTextToString_cold_2();
    }
  }
}

void _VCOverlaySourceTextHelper_appendLowVerbosityVideoTextToString(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *a1;
  v4 = *(a1 + 208);
  v5 = *(a1 + 216);
  v6 = *(a1 + 224);
  v7 = *(a1 + 232);
  if (v2)
  {
    CFStringAppendFormat(v3, 0, @"\n%s🎥Video Rx\n%s(streamID: %d)\n%s%dx%d (VRA: %dx%d)\n", "  ", "  ", v2, "  ", v4, v5, v6, v7);
  }

  else
  {
    CFStringAppendFormat(v3, 0, @"\n%s🎥Video Rx\n%s%dx%d (VRA: %dx%d)\n", "  ", "  ", v4, v5, v6, v7);
  }
}

void _VCOverlaySourceTextHelper_appendMediumVerbosityVideoTextToString(uint64_t a1)
{
  v2 = *a1;
  v3 = FourccToCStr(*(a1 + 36));
  CFStringAppendFormat(v2, 0, @"%sCodec: %s\n%sAvg FPS: %0.1ffps\n%sBR T/M/FEC kbps: %-4d/%-4d/%-4d\n%sPLR: %d%%\n", "  ", v3, "  ", *(a1 + 136), "  ", *(a1 + 100), (*(a1 + 100) - *(a1 + 108)), *(a1 + 108), "  ", *(a1 + 116));
}

void _VCOverlaySourceTextHelper_appendLowVerbosityAudioTextToString(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = FourccToCStr(*(a1 + 28));
  if (v3)
  {
    CFStringAppendFormat(v2, 0, @"\n%s🔊Audio Rx\n%sCodec: %s\n%s(streamID: %d)\n%sBR T/M kbps: %-4d/%-4d\n", "  ", "  ", v4, "  ", *(a1 + 24), "  ", *(a1 + 40), *(a1 + 68));
  }

  else
  {
    CFStringAppendFormat(v2, 0, @"\n%s🔊Audio Rx\n%sCodec: %s\n%sBR T/M kbps: %-4d/%-4d\n", "  ", "  ", v4, "  ", *(a1 + 40), *(a1 + 68));
  }
}

uint64_t VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeaturesReadFrom(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
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
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        Data = PBReaderReadData();

        *(a1 + 8) = Data;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v22 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v22 & 0x7F) << v12;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_34;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_34:
        *(a1 + 16) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NetworkReceiveProc(void *a1)
{
  if (a1)
  {
    return [a1 networkReceivePackets];
  }

  else
  {
    return -2145452030;
  }
}

void decoderFrameCallback(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        decoderFrameCallback_cold_1();
      }
    }
  }

  else if (a5)
  {
    v6 = *a6;
    v7 = *(a6 + 2);
    [a1 showDecodedFrame:a5 atTime:&v6];
  }
}

void sub_1DB75DE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return objc_opt_respondsToSelector();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return [v10 countByEnumeratingWithState:v11 - 144 objects:va count:16];
}

void VCVideoReceiver_SetExternalOutputVideoLatency(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);

    v1();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCVideoReceiver_SetExternalOutputVideoLatency";
      v8 = 1024;
      v9 = 169;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoReceiver is NULL", &v4, 0x1Cu);
    }
  }
}

uint64_t VCAllocatorMultiQueue_Create(const __CFAllocator *a1, uint64_t a2, unsigned int a3, unint64_t *a4, CFAllocatorRef *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (!a3)
  {
    VCAllocatorMultiQueue_Create_cold_9();
LABEL_27:
    v11 = v23;
    v19 = v24;
    goto LABEL_23;
  }

  v5 = a4;
  if (!a4)
  {
    VCAllocatorMultiQueue_Create_cold_8();
    goto LABEL_27;
  }

  if (!a5)
  {
    VCAllocatorMultiQueue_Create_cold_7();
    goto LABEL_27;
  }

  LODWORD(v7) = a3;
  v21 = *byte_1F570D6D0;
  v10 = MEMORY[0x1E1288880](a1, 48 * a3 + 112, 0x1060040F737A2B1, 0);
  if (v10)
  {
    v11 = v10;
    v7 = v7;
    __strlcpy_chk();
    v22 = v11;
    *(v11 + 16) = v7;
    if (a1)
    {
      Default = a1;
    }

    else
    {
      Default = CFAllocatorGetDefault();
    }

    v13 = CFRetain(Default);
    v14 = 0;
    v15 = 0;
    *v11 = v13;
    *(v11 + 8) = 0;
    *(v11 + 104) = 0;
    *(v11 + 96) = 0;
    *(v11 + 100) = 0;
    while (1)
    {
      v16 = *v5;
      if (v15 >= *v5)
      {
        break;
      }

      v17 = v11 + v14;
      v23 = 0uLL;
      *(v17 + 144) = 0uLL;
      *(v17 + 120) = 0;
      *(v17 + 124) = 0;
      *(v17 + 112) = v16;
      *(v17 + 128) = 0;
      *(v17 + 136) = 1;
      ++v5;
      v14 += 48;
      v15 = v16;
      if (!--v7)
      {
        v21.info = v11;
        v18 = CFAllocatorCreate(a1, &v21);
        if (v18)
        {
          v19 = 0;
          *a5 = v18;
        }

        else
        {
          VCAllocatorMultiQueue_Create_cold_4(a2, &v23);
          return v23;
        }

        return v19;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAllocatorMultiQueue_Create_cold_1();
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAllocatorMultiQueue_Create_cold_2();
      }
    }

    _VCAllocatorMultiQueue_FinalizeInfo(v11);
    if (VRTraceGetErrorLogLevelForModule() > 2 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      v19 = 1936683620;
      VCAllocatorMultiQueue_Create_cold_3();
    }

    else
    {
      v19 = 1936683620;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAllocatorMultiQueue_Create_cold_5();
      }
    }

    v19 = 1852663149;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAllocatorMultiQueue_Create_cold_6();
      }
    }

    v11 = 0;
  }

LABEL_23:
  _VCAllocatorMultiQueue_FinalizeInfo(v11);
  _VCAllocatorMultiQueue_ReleaseInfo(&v22);
  return v19;
}

void _VCAllocatorMultiQueueCallback_Release(uint64_t a1)
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = a1;
  if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    _VCAllocatorMultiQueue_FinalizeInfo(a1);
    _VCAllocatorMultiQueue_ReleaseInfo(v1);
  }
}

void *_VCAllocatorMultiQueueCallback_Alloc(unint64_t a1, uint64_t a2, atomic_uint *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 2);
  if (!v5)
  {
LABEL_5:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = v10;
        v25 = 2080;
        v26 = "_VCAllocatorMultiQueue_FindBufferQueue";
        v27 = 1024;
        v28 = 172;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unable to allocate buffer!", &v23, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136316162;
        v24 = v12;
        v25 = 2080;
        v26 = "_VCAllocatorMultiQueueCallback_Alloc";
        v27 = 1024;
        v28 = 218;
        v29 = 2080;
        v30 = a3 + 6;
        v31 = 1024;
        v32 = a1;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Allocator[%s] was unable to find a relevant buffer queue. Requested size:%d", &v23, 0x2Cu);
      }
    }

    v14 = MEMORY[0x1E1288880](*a3, a1 + 8, 0x2004093837F09, 0);
    if (v14)
    {
      atomic_fetch_add_explicit(a3 + 25, 1u, memory_order_relaxed);
      atomic_fetch_add_explicit(a3 + 24, 1u, memory_order_relaxed);
      *v14 = 0;
      return v14 + 1;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v23 = 136316162;
    v24 = v20;
    v25 = 2080;
    v26 = "_VCAllocatorMultiQueueCallback_Alloc";
    v27 = 1024;
    v28 = 226;
    v29 = 2080;
    v30 = a3 + 6;
    v31 = 1024;
    v32 = a1;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = &a3[v6];
    if (*&a3[v6 + 28] >= a1)
    {
      break;
    }

    v6 += 12;
    if (v5 <= v7++)
    {
      goto LABEL_5;
    }
  }

  v16 = OSAtomicDequeue(v8 + 9, 0);
  v17 = v8 + 7;
  if (!v16)
  {
    v16 = MEMORY[0x1E1288880](*a3, v17->opaque1 + 8, 0x2004093837F09, 0);
    atomic_fetch_add_explicit(&a3[v6 + 30], 1u, memory_order_relaxed);
    if (!v16)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v23 = 136316162;
      v24 = v22;
      v25 = 2080;
      v26 = "_VCAllocatorMultiQueueCallback_Alloc";
      v27 = 1024;
      v28 = 245;
      v29 = 2080;
      v30 = a3 + 6;
      v31 = 1024;
      v32 = a1;
LABEL_26:
      _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d Allocator[%s] Failed to allocate memory. Size:%d", &v23, 0x2Cu);
      return 0;
    }
  }

  *v16 = v17;
  result = v16 + 1;
  v18 = (atomic_fetch_add_explicit(&a3[v6 + 31], 1u, memory_order_relaxed) + 1);
  v19 = *&a3[v6 + 32];
  if (v19 > v18)
  {
    v18 = v18 * 0.0196078431 + v19 * 0.980392157;
  }

  *&a3[v6 + 32] = v18;
  return result;
}

void *_VCAllocatorMultiQueueCallback_Realloc(void *a1, unint64_t a2, uint64_t a3, atomic_uint *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = (a1 - 1);
  v7 = *(a1 - 1);
  if (v7)
  {
    if (*v7 <= a2)
    {
      v11 = _VCAllocatorMultiQueueCallback_Alloc(a2, v6, a4);
      v9 = v11;
      if (v11)
      {
        memcpy(v11, a1, *v7);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v15 = 136316162;
          v16 = v12;
          v17 = 2080;
          v18 = "_VCAllocatorMultiQueueCallback_Realloc";
          v19 = 1024;
          v20 = 265;
          v21 = 2080;
          v22 = a4 + 6;
          v23 = 1024;
          v24 = a2;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Allocator[%s] Memory reallocation failed. Size:%d", &v15, 0x2Cu);
        }
      }

      _VCAllocatorMultiQueueCallback_Dealloc(a1, a4);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v10 = MEMORY[0x1E12888C0](*a4, v6, a2 + 8, 0x2004093837F09, 0);
    if (v10)
    {
      return (v10 + 8);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

void _VCAllocatorMultiQueueCallback_Dealloc(void *__new, uint64_t a2)
{
  v2 = (__new - 1);
  v3 = *(__new - 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (*(a2 + 104) != 1 || (v4 = ceil(*(v3 + 16)), v4 + v4 >= *(v3 + 8)))
    {
      OSAtomicEnqueue((v3 + 32), v2, 0);
      return;
    }

    v5 = (v3 + 8);
  }

  else
  {
    v5 = (a2 + 100);
  }

  atomic_fetch_add_explicit(v5, 0xFFFFFFFF, memory_order_relaxed);
  CFAllocatorDeallocate(*a2, v2);
}

void _VCAllocatorMultiQueue_FinalizeInfo(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 16))
    {
      v2 = 0;
      v3 = 0;
      v15 = a1 + 24;
      v4 = MEMORY[0x1E6986650];
      do
      {
        v5 = a1 + 112 + 48 * v2;
        if (*(v5 + 24) == 1)
        {
          v6 = OSAtomicDequeue((v5 + 32), 0);
          if (v6)
          {
            v7 = v6;
            do
            {
              atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_relaxed);
              CFAllocatorDeallocate(*a1, v7);
              v7 = OSAtomicDequeue((v5 + 32), 0);
            }

            while (v7);
          }

          if (*(v5 + 8))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v8 = VRTraceErrorLogLevelToCSTR();
              v9 = *v4;
              if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
              {
                v10 = *(v5 + 8);
                v11 = *v5;
                *buf = 136316418;
                v17 = v8;
                v18 = 2080;
                v19 = "_VCAllocatorMultiQueue_CleanupQueue";
                v20 = 1024;
                v21 = 62;
                v22 = 2080;
                v23 = v15;
                v24 = 1024;
                v25 = v10;
                v26 = 2048;
                v27 = v11;
                _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Allocator=%s. %d buffer leak(s) detected queue with size[%zu]", buf, 0x36u);
              }
            }
          }
        }

        v2 = ++v3;
      }

      while (*(a1 + 16) > v3);
    }

    if (*(a1 + 100))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 100);
          *buf = 136316162;
          v17 = v12;
          v18 = 2080;
          v19 = "_VCAllocatorMultiQueue_FinalizeInfo";
          v20 = 1024;
          v21 = 73;
          v22 = 2080;
          v23 = a1 + 24;
          v24 = 1024;
          v25 = v14;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Allocator=%s. %d buffer leak(s) not associated with a queue", buf, 0x2Cu);
        }
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = 0;
  }
}

void _VCAllocatorMultiQueue_ReleaseInfo(CFAllocatorRef **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *v2;
      CFAllocatorDeallocate(*v2, v2);
      if (v3)
      {
        CFRelease(v3);
      }

      *a1 = 0;
    }
  }
}

void OUTLINED_FUNCTION_10_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

char *CopyRemoteDisplayWithoutQuotes(char *__dst, char *a2, char *a3, char *__source)
{
  if (!*a2)
  {
    if (*a3)
    {
      a2 = a3;
    }

    else
    {
      a2 = __source;
    }

    goto LABEL_9;
  }

  if (*a2 != 34)
  {
LABEL_9:
    strlcpy(__dst, a2, 0x56uLL);
    return __dst;
  }

  strlcpy(__dst, a2 + 1, 0x56uLL);
  v5 = strlen(__dst) - 1;
  if (__dst[v5] == 34)
  {
    __dst[v5] = 0;
  }

  return __dst;
}

uint64_t SIPSetMessageDelegateForCallID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CheckInHandleDebug();
  if (v5)
  {
    SIPClientDictionaryCInterface_SetObjectForKey(*(v5 + 136), @"SIPMessageReceivedHandler", a3, a2);
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v6 = 2148139010;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPSetMessageDelegateForCallID_cold_1();
      }
    }
  }

  return v6;
}

uint64_t SIPSetCellConditionChangeHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CheckInHandleDebug();
  if (v5)
  {
    TPSetCellConditionChangeHandler(*(v5 + 24), a2, a3);
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v6 = 2148139009;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPSetCellConditionChangeHandler_cold_1();
      }
    }
  }

  return v6;
}

uint64_t SIPCreateHandle(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    if (a4 < 2)
    {
      v9 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040338A4F97uLL);
      if (v9)
      {
        v10 = v9;
        v9[3] = 1;
        *v9 = 0;
        v9[5] = VCUniqueIDGenerator_GenerateID();
        pthread_mutex_init(v10 + 1, 0);
        *(v10 + 4) = a2;
        *(v10 + 5) = a3;
        v11 = SIPClientDictionaryCInterface_Create();
        v12 = "TCP";
        *(v10 + 17) = v11;
        if (!a4)
        {
          v12 = "UDP";
        }

        DEFAULT_TRANSPORT = v12;
        Handle = CreateHandle();
        *a1 = Handle;
        if (Handle == 0xFFFFFFFFLL)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SIPCreateHandle_cold_2();
            }
          }

          pthread_mutex_destroy(v10 + 1);
          free(v10);
          return 2148139013;
        }

        else
        {
          v14 = TPCreateHandle(v10 + 3, a4, TUMsgCallback, a1, 0, 0, 0, 0, 0, 0, 0);
          if ((v14 & 0x80000000) != 0)
          {
            v5 = v14;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                SIPCreateHandle_cold_1();
              }
            }

            CheckOutHandleDebug();
            pthread_mutex_destroy(v10 + 1);
            free(v10);
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = 2148139011;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPCreateHandle_cold_3();
          }
        }
      }
    }

    else
    {
      v5 = 2147549185;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPCreateHandle_cold_4();
        }
      }
    }
  }

  else
  {
    v5 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPCreateHandle_cold_5();
      }
    }
  }

  return v5;
}

uint64_t TUMsgCallback(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a1;
  pthread_setname_np("com.apple.AVConference.SIP.tuMessageCallbackProc");
  if (a2)
  {
    v5 = CheckInHandleDebug();
    if (v5)
    {
      v6 = v5;
      if (!*(a2 + 1008))
      {
        UpdateCompressionMethodForMsg(a2, *(v5 + 16));
      }

      if (*(a2 + 572))
      {
        v7 = 0;
      }

      else
      {
        v7 = DLFindWithSipMsgAndLock(&v32, a2);
        if ((v7 & 0x80000000) == 0)
        {
          DLGetCallID(v32, (a2 + 572));
          DLUnlock();
        }
      }

      if (*(a2 + 4) != 1)
      {
        goto LABEL_32;
      }

      v9 = *(a2 + 8);
      v10 = SIPCancelProc;
      if (v9 <= 3)
      {
        if (v9 == 1)
        {
          v15 = DLFindWithSipMsgAndLock(&v32, a2);
          v10 = SIPNewCallProc;
          if ((v15 & 0x80000000) == 0)
          {
            v7 = DLPutMsg(v32, a2, 0);
            if ((v7 & 0x80000000) != 0)
            {
              FreeSipMsg(a2);
            }

            DLUnlock();
            goto LABEL_60;
          }

          goto LABEL_53;
        }

        if (v9 == 2)
        {
          goto LABEL_32;
        }
      }

      else
      {
        switch(v9)
        {
          case 4:
            v10 = SIPHangupProc;
            goto LABEL_54;
          case 5:
            goto LABEL_54;
          case 7:
            v11 = *(a2 + 528);
            v10 = SIPMessageProc;
            if (!v11)
            {
              goto LABEL_54;
            }

            v12 = *v11;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.__sig) = 136315906;
                *(&buf.__sig + 4) = v13;
                *&buf.__opaque[4] = 2080;
                *&buf.__opaque[6] = "TUMsgCallback";
                *&buf.__opaque[14] = 1024;
                *&buf.__opaque[16] = 1555;
                *&buf.__opaque[20] = 2048;
                *&buf.__opaque[22] = v12;
                _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d()()()()() SKE msg recved (%lu)", &buf, 0x26u);
              }
            }

            v15 = DLFindWithSipMsgAndLock(&v32, a2);
            v10 = SIPMessageProc;
            if ((v15 & 0x80000000) == 0)
            {
              LODWORD(v31) = 0;
              v7 = DLGetDoingKeyExchange(v32, &v31);
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v16 = VRTraceErrorLogLevelToCSTR();
                v17 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf.__sig) = 136315906;
                  *(&buf.__sig + 4) = v16;
                  *&buf.__opaque[4] = 2080;
                  *&buf.__opaque[6] = "TUMsgCallback";
                  *&buf.__opaque[14] = 1024;
                  *&buf.__opaque[16] = 1562;
                  *&buf.__opaque[20] = 1024;
                  *&buf.__opaque[22] = v31;
                  _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d()()()()() SKE flag = %d", &buf, 0x22u);
                }
              }

              if (v31)
              {
                v7 = DLPutMsg(v32, a2, 0);
                if ((v7 & 0x80000000) != 0)
                {
                  FreeSipMsg(a2);
                }

                DLUnlock();
                goto LABEL_60;
              }

              if (v12 == 1)
              {
                DLSetDoingKeyExchange(v32, 1);
                DLUnlock();
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v28 = VRTraceErrorLogLevelToCSTR();
                  v29 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf.__sig) = 136315650;
                    *(&buf.__sig + 4) = v28;
                    *&buf.__opaque[4] = 2080;
                    *&buf.__opaque[6] = "TUMsgCallback";
                    *&buf.__opaque[14] = 1024;
                    *&buf.__opaque[16] = 1574;
                    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKE received??? - ignoring anyway", &buf, 0x1Cu);
                  }
                }

                v10 = SIPKeyExchangeProc;
LABEL_54:
                v24 = v10;
                v31 = 0xAAAAAAAAAAAAAAAALL;
                *&v25 = 0xAAAAAAAAAAAAAAAALL;
                *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *&buf.__opaque[24] = v25;
                *&buf.__opaque[40] = v25;
                *&buf.__sig = v25;
                *&buf.__opaque[8] = v25;
                *(a2 + 1000) = a1;
                pthread_attr_init(&buf);
                pthread_attr_setscope(&buf, 1);
                pthread_attr_setdetachstate(&buf, 2);
                v26 = pthread_create(&v31, &buf, v24, a2);
                pthread_attr_destroy(&buf);
                if (v26)
                {
                  v7 = v26 | 0xC00A0000;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      TUMsgCallback_cold_1();
                    }
                  }

                  SendTPStatus(*(v6 + 24), a2, 42, 0, 0, *(v6 + 8));
                  goto LABEL_59;
                }

                goto LABEL_60;
              }

              DLUnlock();
LABEL_32:
              v18 = DLFindWithSipMsgAndLock(&v32, a2);
              if ((v18 & 0x80000000) != 0)
              {
                v7 = v18;
                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v22 = VRTraceErrorLogLevelToCSTR();
                  v23 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf.__sig) = 136316162;
                    *(&buf.__sig + 4) = v22;
                    *&buf.__opaque[4] = 2080;
                    *&buf.__opaque[6] = "TUMsgCallback";
                    *&buf.__opaque[14] = 1024;
                    *&buf.__opaque[16] = 1626;
                    *&buf.__opaque[20] = 1024;
                    *&buf.__opaque[22] = 1626;
                    *&buf.__opaque[26] = 1024;
                    *&buf.__opaque[28] = v7;
                    _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Found no-match: Discard message(%08X)", &buf, 0x28u);
                  }
                }

                goto LABEL_59;
              }

              if (*(a2 + 4) == 2)
              {
                buf.__sig = 0;
                v19 = *(a2 + 272);
                DLGetAck(v32, &buf);
                v20 = *(a2 + 8);
                if (v20 == 6)
                {
                  if (*(v19 + 8) == 1 && buf.__sig)
                  {
                    v7 = TPSend(*(v6 + 24));
                    v21 = *(a2 + 208);
                    v30 = 0;
                    LODWORD(v31) = 12;
                    if (v21)
                    {
                      (*(v6 + 32))(v4, *(v6 + 40), 15, *(a2 + 572), v21, 0, &v31, &v30);
                    }

                    FreeSipMsg(a2);
                    DLUnlock();
                    goto LABEL_60;
                  }
                }

                else if ((v20 - 2) > 5)
                {
                  goto LABEL_45;
                }

                DLUpdate(v32, a2);
              }

LABEL_45:
              DLUnlock();
              v7 = DLPutMsg(v32, a2, 0);
              if ((v7 & 0x80000000) != 0)
              {
LABEL_59:
                FreeSipMsg(a2);
              }

LABEL_60:
              CheckOutHandleDebug();
              return v7;
            }

LABEL_53:
            v7 = v15;
            goto LABEL_54;
        }
      }

      SendTPStatus(*(v6 + 24), a2, 13, 0, 0, *(v6 + 8));
      FreeSipMsg(a2);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      v7 = 2148139010;
      FreeSipMsg(a2);
    }
  }

  else
  {
    LODWORD(v31) = -1431655766;
    buf.__sig = 0;
    active = DLFindActiveDialogs(&v31, &buf);
    free(buf.__sig);
    v7 = 2148139030;
    if ((active & 0x80000000) == 0 && v31 >= 1)
    {
      return SIPSendMessageAll(a1, 0, "PING");
    }
  }

  return v7;
}

uint64_t SIPCloseHandle()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2148139010;
  }

  v1 = v0;
  TPCloseHandle();
  DLCloseHandleAll();
  CheckOutHandleDebug();
  v2 = *(v1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 48) = 0;
  SIPClientDictionaryCInterface_Release(*(v1 + 136));
  pthread_mutex_destroy((v1 + 64));
  free(v1);
  return 0;
}

uint64_t SIPSetPacketMultiplexMode(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148139010;
  }

  v4 = *(v3 + 24);
  if ((a2 - 1) >= 2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPSetPacketMultiplexMode_cold_1();
      }
    }

    a2 = 0;
  }

  TPSetPacketMultiplexMode(v4, a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t SIPStartListen(uint64_t a1, int a2, const unsigned __int8 *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = 2148139010;
  v6 = CheckInHandleDebug();
  if (v6)
  {
    v7 = v6;
    if (a2 != 1)
    {
      if (a2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPStartListen_cold_4();
          }
        }

        v5 = 0;
        goto LABEL_26;
      }

      v8 = *v6;
      if (*v6)
      {
        v5 = 0;
LABEL_6:
        *v7 = v8 + 1;
LABEL_26:
        CheckOutHandleDebug();
        return v5;
      }

      v23 = 0;
      memset(v22, 0, sizeof(v22));
      v10 = CheckInHandleDebug();
      if (v10)
      {
        v21 = 16402;
        v5 = TPListenOnPhysicalInterface(*(v10 + 24), &v21, 1, v22, a3);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if ((v5 & 0x80000000) == 0)
        {
          if (ErrorLogLevelForModule >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v25 = v12;
              v26 = 2080;
              v27 = "SIPListenOnPhysicalInterface";
              v28 = 1024;
              v29 = 1908;
              v30 = 1024;
              v31 = v21;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPListenOnPhysicalInterface on port %d", buf, 0x22u);
            }
          }

          CheckOutHandleDebug();
          v8 = *v7;
          goto LABEL_6;
        }

        if (ErrorLogLevelForModule >= 7)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v25 = v19;
            v26 = 2080;
            v27 = "SIPListenOnPhysicalInterface";
            v28 = 1024;
            v29 = 1904;
            v30 = 1024;
            v31 = v5;
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPListenOnPhysicalInterface failed(%08X)", buf, 0x22u);
          }
        }

        CheckOutHandleDebug();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPStartListen_cold_3();
        }
      }

      goto LABEL_26;
    }

    v9 = v6[1];
    if (v9)
    {
      v5 = 0;
LABEL_25:
      v7[1] = v9 + 1;
      goto LABEL_26;
    }

    v14 = CheckInHandleDebug();
    if (v14)
    {
      v5 = TPListenVirtualInterface(*(v14 + 24));
      v15 = VRTraceGetErrorLogLevelForModule();
      if ((v5 & 0x80000000) == 0)
      {
        if (v15 >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 136315650;
            *&v22[4] = v16;
            *&v22[12] = 2080;
            *&v22[14] = "SIPListenOnVirtualInterface";
            *&v22[22] = 1024;
            *&v22[24] = 1868;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPListenOnVirtualInterface succeeded", v22, 0x1Cu);
          }
        }

        CheckOutHandleDebug();
        v9 = v7[1];
        goto LABEL_25;
      }

      SIPStartListen_cold_1(v15 > 6, v5);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPStartListen_cold_2();
      }
    }

    goto LABEL_26;
  }

  return v5;
}

uint64_t SIPStopListen(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (v4)
  {
    if (a2 == 1)
    {
      v8 = v4[1];
      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (v10 < 0 != v9)
      {
        goto LABEL_18;
      }

      v4[1] = v10;
      if (v10)
      {
        goto LABEL_18;
      }

      v11 = SIPStopListenOnInterface(a1, 1);
      v7 = v11;
      if ((v11 & 0x80000000) != 0)
      {
        SIPStopListen_cold_1(v11, &v13);
        goto LABEL_14;
      }
    }

    else
    {
      if (a2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPStopListen_cold_3();
          }
        }

        goto LABEL_18;
      }

      v5 = *v4 == 1;
      if (*v4 < 1 || (--*v4, !v5))
      {
LABEL_18:
        v7 = 0;
        goto LABEL_19;
      }

      v6 = SIPStopListenOnInterface(a1, 0);
      v7 = v6;
      if ((v6 & 0x80000000) != 0)
      {
        SIPStopListen_cold_2(v6, &v13);
LABEL_14:
        v7 = v13;
      }
    }

LABEL_19:
    CheckOutHandleDebug();
    return v7;
  }

  return 2148139010;
}

uint64_t SIPStopListenOnInterface(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148139010;
  }

  v4 = TPStopListen(*(v3 + 24), a2);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if ((v4 & 0x80000000) != 0)
  {
    SIPStopListenOnInterface_cold_1(ErrorLogLevelForModule > 6, v4);
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = "physical";
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      if (a2)
      {
        v8 = "virtual";
      }

      v13 = "SIPStopListenOnInterface";
      v14 = 1024;
      v15 = 1885;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPStopListenOnInterface %s succeeded", &v10, 0x26u);
    }
  }

  CheckOutHandleDebug();
  return v4;
}

uint64_t SIPConnectIPPort(uint64_t *a1, uint64_t a2, int a3, const char *a4, const char *a5, char *a6, char *a7, _OWORD *a8, int a9, int a10)
{
  v76 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v75 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v74[0] = v16;
  v74[1] = v16;
  v73 = 0xAAAAAAAAAAAAAAAALL;
  v72[0] = v16;
  v72[1] = v16;
  v71 = 0xAAAAAAAAAAAAAAAALL;
  v69 = v16;
  v70 = v16;
  v63 = 0xFFFFFFFFLL;
  memset(v64, 170, sizeof(v64));
  v61 = 0xFFFFFFFFLL;
  v62 = 0xFFFFFFFFLL;
  v60 = -1431655766;
  v17 = *a1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = "SIPConnectIPPort";
      *&buf[22] = 1024;
      *&buf[24] = 1929;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPConnect start...", buf, 0x1Cu);
    }
  }

  Ack = 2148139025;
  v21 = CheckInHandleDebug();
  if (!v21)
  {
    return 2148139010;
  }

  v22 = v21;
  if (!*v21 && !v21[1])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = "SIPConnectIPPort";
        *&buf[22] = 1024;
        *&buf[24] = 1937;
        *&buf[28] = 1024;
        *&buf[30] = 1937;
        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call SIPStartListen first.", buf, 0x22u);
      }
    }

    goto LABEL_73;
  }

  v55 = v17;
  MakeIPPORT();
  MakeIPPORT();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  active = DLCountActiveDialogs(&v65);
  if ((active & 0x80000000) != 0)
  {
    v40 = active;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPConnectIPPort_cold_11();
      }
    }

    goto LABEL_67;
  }

  v24 = CreateInvite(&v64[2], a2, a3, v74, v72, v74, v72, &v69, 0, 0, a4, a5, a6, v22[3], v65 != 0, v22[4]);
  if ((v24 & 0x80000000) != 0)
  {
    v40 = v24;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPConnectIPPort_cold_10();
      }
    }

    goto LABEL_67;
  }

  if (a8)
  {
    *(v64[2] + 61) = *a8;
  }

  (*(v22 + 4))(v17, *(v22 + 5), 12, a2, 0, 0, &v60, 0);
  v25 = DLCreateHandle(&v63, a2, v64[2], 0, v60, a9, DLIsFinishedCallback, v17);
  if ((v25 & 0x80000000) != 0)
  {
    v40 = v25;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPConnectIPPort_cold_9();
      }
    }

    goto LABEL_65;
  }

  v26 = TACreateHandle(&v62, 0, *(v22 + 3), v64[2], v63, TUMsgCallback, a1);
  if ((v26 & 0x80000000) != 0)
  {
    v40 = v26;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPConnectIPPort_cold_8();
      }
    }

LABEL_65:
    v43 = v64[2];
    goto LABEL_66;
  }

  v59 = a2;
  TASetRTT(v62, a10, TUGenericLogCallback, &v59);
  v27 = TAStart(v62);
  if ((v27 & 0x80000000) != 0)
  {
    v40 = v27;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPConnectIPPort_cold_7();
      }
    }

    goto LABEL_67;
  }

  v28 = v64[2];
  v29 = *(v64[2] + 26);
  v57 = 0;
  v58 = 11;
  if (v29)
  {
    (*(v22 + 4))(v17, *(v22 + 5), 15, a2, v29, 0, &v58, &v57);
    v28 = v64[2];
  }

  v30 = DLGetMsg(v63, v64, 0xFFFFFFFFuLL, 1, v28, -1);
  if ((v30 & 0x80000000) != 0)
  {
LABEL_58:
    v40 = v30;
LABEL_59:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPConnectIPPort_cold_6();
      }
    }

    goto LABEL_67;
  }

  v31 = 0;
  v32 = 1;
  while (1)
  {
    while (1)
    {
      v33 = v64[0];
      v34 = *(v64[0] + 1);
      if (*v64[0] != 1 || v34 != 1)
      {
        break;
      }

      if (*(v64[0] + 2) != 5)
      {
        goto LABEL_27;
      }

      FreeSipMsg(v64[0]);
      if (v32)
      {
        if (!v31)
        {
          v40 = 2148139038;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v49 = VRTraceErrorLogLevelToCSTR();
            v50 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = v49;
              *&buf[12] = 2080;
              *&buf[14] = "SIPConnectIPPort";
              *&buf[22] = 1024;
              *&buf[24] = 2044;
              _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Call request cancelled before receiving any response\n", buf, 0x1Cu);
              v40 = 2148139038;
            }
          }

          goto LABEL_68;
        }

        Cancel = CreateCancel(&v64[1], v64[2]);
        if ((Cancel & 0x80000000) != 0)
        {
          v40 = Cancel;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SIPConnectIPPort_cold_5();
            }
          }
        }

        else
        {
          v38 = TACreateHandle(&v61, 1, *(v22 + 3), v64[1], 0xFFFFFFFFLL, TUMsgCallback, a1);
          if ((v38 & 0x80000000) != 0)
          {
            v40 = v38;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                SIPConnectIPPort_cold_4();
              }
            }

            v43 = v64[1];
LABEL_66:
            FreeSipMsg(v43);
          }

          else
          {
            v39 = TAStart(v61);
            if ((v39 & 0x80000000) == 0)
            {
              v31 = 1;
              goto LABEL_36;
            }

            v40 = v39;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                SIPConnectIPPort_cold_3();
              }
            }
          }
        }

LABEL_67:
        if ((v40 & 0x10000000) != 0)
        {
LABEL_69:
          DLCloseHandle();
          Ack = v40;
          goto LABEL_70;
        }

LABEL_68:
        TACancel();
        TACancel();
        goto LABEL_69;
      }

LABEL_36:
      v40 = DLGetMsg(v63, v64, 0xFFFFFFFFuLL, 1, v64[2], -1);
      v32 = 0;
      if ((v40 & 0x80000000) != 0)
      {
        goto LABEL_59;
      }
    }

    if (v34 != 2 || *(*(v64[0] + 34) + 8) == 5)
    {
LABEL_27:
      FreeSipMsg(v64[0]);
      goto LABEL_28;
    }

    v36 = *(v64[0] + 2);
    if ((v36 - 1) <= 4)
    {
      (*(v22 + 4))(v55, *(v22 + 5), 4, a2, v64[0] + 12, 0, 0, 0);
      FreeSipMsg(v64[0]);
      v31 = 1;
      goto LABEL_28;
    }

    if ((v36 & 0xFFFFFFFE) == 6)
    {
      break;
    }

    if ((v36 - 8) <= 0x2C)
    {
      if (v36 == 10)
      {
        v41 = *(v64[0] + 28);
        if (v41)
        {
          *&v42 = 0xAAAAAAAAAAAAAAAALL;
          *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v68 = v42;
          *&buf[32] = v42;
          v67 = v42;
          *buf = v42;
          *&buf[16] = v42;
          ConstructUri(buf, (v41 + 44));
          (*(v22 + 4))(v55, *(v22 + 5), 10, a2, a5, v41, buf, 0);
          v33 = v64[0];
        }
      }

      v40 = v36 | 0x900A0000;
      v43 = v33;
      goto LABEL_66;
    }

LABEL_28:
    v30 = DLGetMsg(v63, v64, 0xFFFFFFFFuLL, 1, v64[2], -1);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_58;
    }
  }

  *buf = 0xAAAAAAAAAAAAAAAALL;
  v51 = *(v64[0] + 28);
  v52 = (!v51 || !*(v51 + 156)) && v22[3];
  v22[2] = v52;
  v53 = *(v33 + 69);
  if (v53)
  {
    strlcpy(a7, v53, 0xA8CuLL);
    v33 = v64[0];
  }

  else
  {
    *a7 = 0;
  }

  Ack = CreateAck(buf, v64[2], v33);
  FreeSipMsg(v64[0]);
  if ((Ack & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPConnectIPPort_cold_2();
      }
    }

    goto LABEL_111;
  }

  Ack = TPSend(*(v22 + 3));
  if ((Ack & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPConnectIPPort_cold_1();
      }
    }

    FreeSipMsg(*buf);
LABEL_111:
    v40 = Ack;
    goto LABEL_67;
  }

  v57 = 0;
  v58 = 12;
  if (v29)
  {
    (*(v22 + 4))(v55, *(v22 + 5), 15, a2, v29, 0, &v58, &v57);
  }

  DLSetAck(v63, *buf);
LABEL_70:
  TACloseHandle();
  TACloseHandle();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v46 = VRTraceErrorLogLevelToCSTR();
    v47 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = "SIPConnectIPPort";
      *&buf[22] = 1024;
      *&buf[24] = 2159;
      *&buf[28] = 1024;
      *&buf[30] = Ack;
      _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPConnect stop(%X)...", buf, 0x22u);
    }
  }

LABEL_73:
  CheckOutHandleDebug();
  return Ack;
}

uint64_t DLIsFinishedCallback(uint64_t a1, int a2)
{
  result = CheckInHandleDebug();
  if (result)
  {
    TPRemovePreservedPortBindForCallID(*(result + 24), a2);

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t TUGenericLogCallback(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2148139010;
  }

  (*(v6 + 32))(a1, *(v6 + 40), 16, *a2, a3, 0, 0, 0);
  CheckOutHandleDebug();
  return 0;
}

uint64_t SIPKeyExchange(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  if (a4)
  {
    return SIPDoKeyExchange(a1, a2, a3, a4, a5);
  }

  else
  {
    return 2148139009;
  }
}

uint64_t SIPDoKeyExchange(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v210 = *MEMORY[0x1E69E9840];
  v198 = -1431655766;
  v199 = a5;
  v196 = 0xFFFFFFFFLL;
  v197 = 0;
  v194 = 0;
  v195 = 0xFFFFFFFFLL;
  v8 = *a1;
  v193 = 0;
  v192 = -1;
  v191 = 0;
  v190 = 0;
  v188 = 0;
  v189 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v201 = v9;
      v202 = 2080;
      v203 = "SIPDoKeyExchange";
      v204 = 1024;
      v205 = 2207;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoKeyExchange start...", buf, 0x1Cu);
    }
  }

  *a4 = 0;
  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return 2148139010;
  }

  v12 = v11;
  if (!*v11 && !v11[1])
  {
    v13 = 2148139025;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_204;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_204;
    }

    *buf = 136315906;
    v201 = v26;
    v202 = 2080;
    v203 = "SIPDoKeyExchange";
    v204 = 1024;
    v205 = 2217;
    v206 = 1024;
    *v207 = 2217;
    v16 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call SIPStartListen first.";
    v17 = v27;
    v18 = 34;
LABEL_28:
    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_204;
  }

  if (!a2)
  {
    v13 = 2148139009;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_204;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_204;
    }

    *buf = 136316162;
    v201 = v14;
    v202 = 2080;
    v203 = "SIPDoKeyExchange";
    v204 = 1024;
    v205 = 2223;
    v206 = 1024;
    *v207 = 2223;
    *&v207[4] = 1024;
    *&v207[6] = 0;
    v16 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: CallID(%d) is invalid";
    v17 = v15;
    v18 = 40;
    goto LABEL_28;
  }

  v13 = DLFindWithCallIDAndLock(&v196);
  if ((v13 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_204;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_204;
    }

    *buf = 136316162;
    v201 = v19;
    v202 = 2080;
    v203 = "SIPDoKeyExchange";
    v204 = 1024;
    v205 = 2230;
    v206 = 1024;
    *v207 = 2230;
    *&v207[4] = 1024;
    *&v207[6] = a2;
    v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Cannot find call ID(%d)";
    v22 = v20;
    v23 = 40;
LABEL_24:
    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_204;
  }

  DLSetDoingKeyExchange(v196, 1);
  DLGetState(v196, &v198);
  DLUnlock();
  if (v198 != 3)
  {
    v13 = 2148139025;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_204;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_204;
    }

    *buf = 136316418;
    v201 = v24;
    v202 = 2080;
    v203 = "SIPDoKeyExchange";
    v204 = 1024;
    v205 = 2239;
    v206 = 1024;
    *v207 = 2239;
    *&v207[4] = 1024;
    *&v207[6] = a2;
    *v208 = 1024;
    *&v208[2] = v198;
    v21 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call(%d) is in state %d";
    v22 = v25;
    v23 = 46;
    goto LABEL_24;
  }

  if (SecKeyExchangeNodeCreateAsInitiator())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPDoKeyExchange_cold_1();
      }
    }

    goto LABEL_204;
  }

  v13 = SKE_FormMessageS(v194, &v191, &v189, &v190, &v188);
  CFRelease(v194);
  if ((v13 & 0x80000000) != 0)
  {
    SIPReportSKError(v8, v12, a2, v199, 8, 2262, "Out of Memory");
    goto LABEL_204;
  }

  v176 = 0;
  v172 = 0;
  ptr = 0;
  v171 = 0;
  v182 = 0;
  bytesDeallocator = *MEMORY[0x1E695E498];
  v183 = -1;
  v175 = 1;
LABEL_31:
  v174 = 1;
LABEL_32:
  v178 = 0;
  v173 = 0;
  v28 = v189;
  while (1)
  {
    v29 = v190;
    v30 = v28 - v190;
    if (v28 - v190 >= 900)
    {
      v30 = 900;
    }

    v179 = v30;
    ++v182;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (v28 == v29)
        {
          v33 = -1;
          v34 = -1;
          v35 = v179;
        }

        else
        {
          v33 = *v191;
          v35 = v179;
          v34 = v191[v179 - 1];
        }

        *buf = 136316674;
        v201 = v31;
        v202 = 2080;
        v203 = "SIPDoKeyExchange";
        v204 = 1024;
        v205 = 2594;
        v206 = 2048;
        *v207 = v182;
        *&v207[8] = 1024;
        *v208 = v35;
        *&v208[4] = 1024;
        *&v208[6] = v33;
        *&v208[10] = 1024;
        v209 = v34;
        _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: (%lu) send (%d) [%02X..%02X]", buf, 0x38u);
      }
    }

    if (v197)
    {
      FreeSipMsg(v197);
      v197 = 0;
    }

    v36 = v28 == v29 ? 0 : &v191[v29];
    v37 = v28 == v29 ? 0 : (v28 + ~v29) / 900;
    SKEMessageInDialog = CreateSKEMessageInDialog(&v197, v196, v36, v179, v182, v37, *(v12 + 16));
    if ((SKEMessageInDialog & 0x80000000) != 0)
    {
      break;
    }

    TACloseHandle();
    v195 = 0xFFFFFFFFLL;
    v39 = TACreateHandle(&v195, 1, *(v12 + 24), v197, 0xFFFFFFFFLL, TUMsgCallback, a1);
    if (v39 < 0)
    {
      LODWORD(v13) = v39;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPDoKeyExchange_cold_8();
        }
      }

      goto LABEL_269;
    }

    v40 = TASetRetransmitTimeoutCap(v195, 2000);
    if (v40 < 0)
    {
      LODWORD(v13) = v40;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPDoKeyExchange_cold_7();
        }
      }

      goto LABEL_269;
    }

    v41 = TAStart(v195);
    LODWORD(v13) = v41;
    v42 = v197[34];
    if (v42)
    {
      v183 = *v42;
    }

    v197 = 0;
    if (v41 < 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPDoKeyExchange_cold_6();
        }
      }

      goto LABEL_269;
    }

    if (v28 != v29)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v168 = VRTraceErrorLogLevelToCSTR();
        v169 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v201 = v168;
          v202 = 2080;
          v203 = "SIPDoKeyExchange";
          v204 = 1024;
          v205 = 2638;
          v206 = 1024;
          *v207 = v179;
          *&v207[4] = 1024;
          *&v207[6] = v28;
          *v208 = 1024;
          *&v208[2] = v29;
          _os_log_impl(&dword_1DB56E000, v169, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: sent %d of %d at %d", buf, 0x2Eu);
        }
      }

      v190 = v179 + v29;
      if (v179 + v29 == v28)
      {
        v189 = 0;
        v190 = 0;
      }
    }

    v44 = v28 != v29 || v192 != 0;
    if ((v44 & v174) != 1)
    {
      goto LABEL_269;
    }

    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v45 = VRTraceErrorLogLevelToCSTR();
                v46 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v201 = v45;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2270;
                  v206 = 1024;
                  *v207 = v182;
                  _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE TOP (%d)...", buf, 0x22u);
                }
              }

              v47 = v197;
              v197 = 0;
              LODWORD(v13) = DLGetMsg(v196, &v197, 0x7530uLL, 7, v47, v183);
              v198 = 0;
              if ((DLGetState(v196, &v198) & 0x80000000) != 0 || v198 != 3)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v132 = VRTraceErrorLogLevelToCSTR();
                  v133 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v201 = v132;
                    v202 = 2080;
                    v203 = "SIPDoKeyExchange";
                    v204 = 1024;
                    v205 = 2281;
                    v206 = 1024;
                    *v207 = v198;
                    _os_log_impl(&dword_1DB56E000, v133, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: terminated by remote party (%d)", buf, 0x22u);
                  }
                }

                if (v47)
                {
                  FreeSipMsg(v47);
                }

LABEL_268:
                LODWORD(v13) = -2146828235;
LABEL_269:
                v146 = ptr;
                v149 = v175;
                v148 = v176;
                goto LABEL_270;
              }

              if ((v13 & 0x80000000) != 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
                {
                  SIPDoKeyExchange_cold_5();
                  if (v47)
                  {
LABEL_232:
                    FreeSipMsg(v47);
                  }
                }

                else if (v47)
                {
                  goto LABEL_232;
                }

                v134 = v199;
                v135 = "Dialog Timeout";
                v136 = v8;
                v137 = v12;
                v138 = a2;
                v139 = 1;
                v140 = 2296;
LABEL_242:
                SIPReportSKError(v136, v137, v138, v134, v139, v140, v135);
                goto LABEL_269;
              }

              if (v47)
              {
                FreeSipMsg(v47);
              }

              v48 = v197;
              ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
              if (!v48)
              {
                if (ErrorLogLevelForModule >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    SIPDoKeyExchange_cold_4();
                  }
                }

                v134 = v199;
                v135 = "NULL Message";
                v136 = v8;
                v137 = v12;
                v138 = a2;
                v139 = 2;
                v140 = 2307;
                goto LABEL_242;
              }

              if (ErrorLogLevelForModule >= 7)
              {
                v50 = VRTraceErrorLogLevelToCSTR();
                v51 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v201 = v50;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2311;
                  v206 = 2048;
                  *v207 = v197;
                  _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: got msg %p", buf, 0x26u);
                }
              }

              if (*(v197 + 1) == 2)
              {
                break;
              }

              if (*(v197 + 2) == 5)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v141 = VRTraceErrorLogLevelToCSTR();
                  v142 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v201 = v141;
                    v202 = 2080;
                    v203 = "SIPDoKeyExchange";
                    v204 = 1024;
                    v205 = 2316;
                    _os_log_impl(&dword_1DB56E000, v142, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: cancelled", buf, 0x1Cu);
                  }
                }

                v134 = v199;
                v135 = "Cancelled";
                v136 = v8;
                v137 = v12;
                v138 = a2;
                v139 = 5;
                v140 = 2317;
                goto LABEL_242;
              }

              if ((DLPutMsg(v196, v197, 1) & 0x80000000) != 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v143 = VRTraceErrorLogLevelToCSTR();
                  v144 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_268;
                  }

                  *buf = 136315650;
                  v201 = v143;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2323;
LABEL_267:
                  _os_log_impl(&dword_1DB56E000, v144, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: terminated by remote party", buf, 0x1Cu);
                  goto LABEL_268;
                }

LABEL_275:
                LODWORD(v13) = -2146828235;
                goto LABEL_269;
              }

              v197 = 0;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v59 = VRTraceErrorLogLevelToCSTR();
                v60 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v201 = v59;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2329;
                  v57 = v60;
                  v58 = "SIP [%s] %s:%d SIPDoSKE: skip msg";
                  goto LABEL_102;
                }
              }
            }

            if (*(v197[34] + 8) == 7)
            {
              break;
            }

            v61 = DLPutMsg(v196, v197, 1);
            v62 = VRTraceGetErrorLogLevelForModule();
            if (v61 < 0)
            {
              if (v62 >= 7)
              {
                v145 = VRTraceErrorLogLevelToCSTR();
                v144 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_268;
                }

                *buf = 136315650;
                v201 = v145;
                v202 = 2080;
                v203 = "SIPDoKeyExchange";
                v204 = 1024;
                v205 = 2336;
                goto LABEL_267;
              }

              goto LABEL_275;
            }

            if (v62 >= 7)
            {
              v63 = VRTraceErrorLogLevelToCSTR();
              v64 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v201 = v63;
                v202 = 2080;
                v203 = "SIPDoKeyExchange";
                v204 = 1024;
                v205 = 2341;
                v57 = v64;
                v58 = "SIP [%s] %s:%d SIPDoSKE: not MT_MESSAGE";
                goto LABEL_102;
              }
            }
          }

          v52 = *(v197 + 2);
          if (v52 > 0x34 || ((1 << v52) & 0x100000000000C0) == 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v150 = VRTraceErrorLogLevelToCSTR();
              v151 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v201 = v150;
                v202 = 2080;
                v203 = "SIPDoKeyExchange";
                v204 = 1024;
                v205 = 2349;
                _os_log_impl(&dword_1DB56E000, v151, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: SKE unsuccessful", buf, 0x1Cu);
              }
            }

            LODWORD(v13) = v52 | 0x900A0000;
            SIPReportSKError(v8, v12, a2, v199, 9, 2351, "Unsuccessful");
            goto LABEL_269;
          }

          v53 = v197[66];
          if (v53)
          {
            break;
          }

          v65 = DLPutMsg(v196, v197, 1);
          v66 = VRTraceGetErrorLogLevelForModule();
          if (v65 < 0)
          {
            if (v66 >= 7)
            {
              v147 = VRTraceErrorLogLevelToCSTR();
              v144 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_268;
              }

              *buf = 136315650;
              v201 = v147;
              v202 = 2080;
              v203 = "SIPDoKeyExchange";
              v204 = 1024;
              v205 = 2358;
              goto LABEL_267;
            }

            goto LABEL_275;
          }

          if (v66 >= 7)
          {
            v67 = VRTraceErrorLogLevelToCSTR();
            v68 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v201 = v67;
              v202 = 2080;
              v203 = "SIPDoKeyExchange";
              v204 = 1024;
              v205 = 2363;
              v57 = v68;
              v58 = "SIP [%s] %s:%d SIPDoSKE: message doesn't have SKESeq";
LABEL_102:
              _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, 0x1Cu);
            }
          }
        }

        v54 = *v53;
        if (*v53 >= v182)
        {
          break;
        }

        FreeSipMsg(v197);
        v197 = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v55 = VRTraceErrorLogLevelToCSTR();
          v56 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v201 = v55;
            v202 = 2080;
            v203 = "SIPDoKeyExchange";
            v204 = 1024;
            v205 = 2376;
            v57 = v56;
            v58 = "SIP [%s] %s:%d SIPDoSKE: SKESeq old";
            goto LABEL_102;
          }
        }
      }

      if (*v53 > v182)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v152 = VRTraceErrorLogLevelToCSTR();
          v153 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v201 = v152;
            v202 = 2080;
            v203 = "SIPDoKeyExchange";
            v204 = 1024;
            v205 = 2381;
            v206 = 1024;
            *v207 = v54;
            _os_log_impl(&dword_1DB56E000, v153, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: SKESeq (%d) unexpected", buf, 0x22u);
          }
        }

        SIPReportSKError(v8, v12, a2, v199, 6, 2383, "Out Of Sequence");
        LODWORD(v13) = -1073086451;
        goto LABEL_269;
      }

      v69 = *(v53 + 2);
      v70 = !v178 || v178 - 1 == v69;
      v71 = v70;
      if ((v69 & 0x80000000) == 0 && v71)
      {
        break;
      }

      v72 = v69;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v73 = VRTraceErrorLogLevelToCSTR();
        v74 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v201 = v73;
          v202 = 2080;
          v203 = "SIPDoKeyExchange";
          v204 = 1024;
          v205 = 2392;
          v206 = 1024;
          *v207 = v182;
          *&v207[4] = 1024;
          *&v207[6] = v72;
          _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: SKESeq (%d,%d)", buf, 0x28u);
        }
      }
    }

    v75 = *(v197 + 140);
    if (v75 < 1 || !v197[69])
    {
      goto LABEL_129;
    }

    v180 = v69;
    if (!ptr)
    {
      v172 = v75 + 2000;
      v78 = malloc_type_malloc(v75 + 2000, 0x100004077774924uLL);
      if (v78)
      {
        goto LABEL_123;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPDoKeyExchange_cold_3();
        }
      }

      LODWORD(v13) = -1073086461;
      SIPReportSKError(v8, v12, a2, v199, 8, 2408, "Out of Memory");
      v146 = 0;
LABEL_295:
      v149 = v175;
      v148 = v176;
LABEL_270:
      if (v149)
      {
        v13 = v13;
      }

      else
      {
        v13 = v148;
      }

      if (v146)
      {
LABEL_274:
        free(v146);
      }

      goto LABEL_204;
    }

    v76 = v173;
    v77 = v75 + v173;
    if (v172 >= v77)
    {
      v78 = ptr;
    }

    else
    {
      v78 = malloc_type_realloc(ptr, (v77 + 2000), 0x100004077774924uLL);
      if (!v78)
      {
        v154 = VRTraceGetErrorLogLevelForModule();
        if (v154 >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPDoKeyExchange_cold_2();
          }
        }

        LODWORD(v13) = -1073086461;
        SIPReportSKError(v8, v12, a2, v199, 8, 2417, "Out of Memory");
        goto LABEL_294;
      }

LABEL_123:
      v76 = v173;
    }

    ptr = v78;
    memcpy(&v78[v76], v197[69], *(v197 + 140));
    v173 = *(v197 + 140) + v76;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v79 = VRTraceErrorLogLevelToCSTR();
      v80 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v81 = *(v197 + 140);
        v82 = v197[69];
        v83 = *v82;
        LODWORD(v82) = v82[v81 - 1];
        *buf = 136316674;
        v201 = v79;
        v202 = 2080;
        v203 = "SIPDoKeyExchange";
        v204 = 1024;
        v205 = 2430;
        v206 = 1024;
        *v207 = v182;
        *&v207[4] = 1024;
        *&v207[6] = v81;
        *v208 = 1024;
        *&v208[2] = v83;
        *&v208[6] = 1024;
        *&v208[8] = v82;
        _os_log_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: Got msg (%d) - (%d) [%02X...%02X]", buf, 0x34u);
      }
    }

    v69 = v180;
LABEL_129:
    if (v69)
    {
      v28 = 0;
      v189 = 0;
      v190 = 0;
      v174 = 1;
      v178 = v69;
      continue;
    }

    v181 = v52;
    v28 = v189;
    v174 = 1;
    v178 = 0;
    if (v189 <= 0)
    {
      v84 = CFDataCreateWithBytesNoCopy(0, ptr, v173, bytesDeallocator);
      v85 = SecKeyExchangeUpdate();
      if (v85)
      {
        v155 = v85;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v156 = VRTraceErrorLogLevelToCSTR();
          v157 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v201 = v156;
            v202 = 2080;
            v203 = "SIPDoKeyExchange";
            v204 = 1024;
            v205 = 2452;
            v206 = 1024;
            *v207 = v155;
            _os_log_impl(&dword_1DB56E000, v157, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SecKeyExchangeUpdate failed (%d)", buf, 0x22u);
          }
        }

        SIPReportSKError(v8, v12, a2, v199, 10, 2453, "Update Failed");
        CFRelease(v84);
      }

      else
      {
        CFRelease(v84);
        v13 = SKE_FormMessageS(v194, &v191, &v189, &v190, &v188);
        if (v194)
        {
          CFRelease(v194);
        }

        if ((v13 & 0x80000000) != 0)
        {
          v158 = v199;
          v159 = v8;
          v160 = v12;
          v161 = a2;
          v162 = 2464;
          goto LABEL_301;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v86 = VRTraceErrorLogLevelToCSTR();
          v87 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v201 = v86;
            v202 = 2080;
            v203 = "SIPDoKeyExchange";
            v204 = 1024;
            v205 = 2468;
            v206 = 1024;
            *v207 = 0;
            *&v207[4] = 1024;
            *&v207[6] = v192;
            *v208 = 2048;
            *&v208[2] = v194;
            _os_log_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: u= %d,%d,[%p]", buf, 0x32u);
          }
        }

        if (v192 == 2)
        {
          LODWORD(cf) = -1431655766;
          v187 = -1431655766;
          PeerAbortReason = SecKeyExchangeGetPeerAbortReason();
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v164 = VRTraceErrorLogLevelToCSTR();
            v165 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              v201 = v164;
              v202 = 2080;
              v203 = "SIPDoKeyExchange";
              v204 = 1024;
              v205 = 2475;
              v206 = 1024;
              *v207 = v187;
              *&v207[4] = 1024;
              *&v207[6] = cf;
              *v208 = 1024;
              *&v208[2] = PeerAbortReason;
              _os_log_impl(&dword_1DB56E000, v165, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: aborted by remote: %d (%d %d)", buf, 0x2Eu);
            }
          }

          SIPReportSKError(v8, v12, a2, v199, 12, 2477, "Aborted");
          LODWORD(v13) = -1073086434;
        }

        else
        {
          if (v192 < 2)
          {
            if (!*(v12 + 48) || v171)
            {
              goto LABEL_185;
            }

            v186 = -1431655766;
            v187 = -1431655766;
            cf = 0;
            PeerCertStatus = SecKeyExchangeGetPeerCertStatus();
            if (PeerCertStatus)
            {
              v89 = PeerCertStatus;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v90 = VRTraceErrorLogLevelToCSTR();
                v91 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v201 = v90;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2499;
                  v206 = 1024;
                  *v207 = v89;
                  v92 = v91;
                  v93 = "SIP [%s] %s:%d SKE peerCertStatus failed (%d)";
                  goto LABEL_147;
                }
              }

LABEL_184:
              v171 = 0;
LABEL_185:
              if (v181 == 52)
              {
                v174 = 0;
                v175 = 0;
                *a4 = 0;
                v176 = -1878392780;
              }

              else
              {
                v174 = 1;
                if (!v192)
                {
                  v111 = SecKeyExchangeCopySharedSecret();
                  v174 = 1;
                  if (v111)
                  {
                    v112 = v111;
                    v174 = 1;
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v113 = VRTraceErrorLogLevelToCSTR();
                      v114 = *MEMORY[0x1E6986650];
                      v174 = 1;
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315906;
                        v201 = v113;
                        v202 = 2080;
                        v203 = "SIPDoKeyExchange";
                        v204 = 1024;
                        v205 = 2580;
                        v206 = 1024;
                        *v207 = v112;
                        _os_log_impl(&dword_1DB56E000, v114, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SecKeyExchangeCopySharedSecret error %d", buf, 0x22u);
                        goto LABEL_31;
                      }
                    }
                  }
                }
              }

              goto LABEL_32;
            }

            if (v186)
            {
              if (v186 != 2)
              {
                if (v186 == 1)
                {
                  if (VRTraceGetErrorLogLevelForModule() < 7)
                  {
                    goto LABEL_184;
                  }

                  v95 = VRTraceErrorLogLevelToCSTR();
                  v96 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_184;
                  }

                  *buf = 136315650;
                  v201 = v95;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2502;
                  v92 = v96;
                  v93 = "SIP [%s] %s:%d SKE peerCertStatus not yet valid";
                }

                else
                {
                  if (VRTraceGetErrorLogLevelForModule() < 7)
                  {
                    goto LABEL_184;
                  }

                  v109 = VRTraceErrorLogLevelToCSTR();
                  v110 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_184;
                  }

                  *buf = 136315650;
                  v201 = v109;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2509;
                  v92 = v110;
                  v93 = "SIP [%s] %s:%d SKE peerCertStatus not ready";
                }

                goto LABEL_182;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v97 = VRTraceErrorLogLevelToCSTR();
                v98 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v201 = v97;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2505;
                  v99 = v98;
                  v100 = "SIP [%s] %s:%d SKE peerCertStatus no value";
                  goto LABEL_161;
                }
              }

              goto LABEL_162;
            }

            if (v187 != 1)
            {
              v115 = SecKeyExchangeCopyPeerCert();
              if (v115)
              {
                v116 = v115;
                if (VRTraceGetErrorLogLevelForModule() < 7)
                {
                  goto LABEL_184;
                }

                v117 = VRTraceErrorLogLevelToCSTR();
                v118 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_184;
                }

                *buf = 136315906;
                v201 = v117;
                v202 = 2080;
                v203 = "SIPDoKeyExchange";
                v204 = 1024;
                v205 = 2519;
                v206 = 1024;
                *v207 = v116;
                v92 = v118;
                v93 = "SIP [%s] %s:%d SKE CopyCert failed (%d)";
LABEL_147:
                v94 = 34;
              }

              else
              {
                v119 = v186;
                v120 = VRTraceGetErrorLogLevelForModule();
                if (v119 != 1)
                {
                  if (v120 >= 7)
                  {
                    v123 = VRTraceErrorLogLevelToCSTR();
                    v124 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      v201 = v123;
                      v202 = 2080;
                      v203 = "SIPDoKeyExchange";
                      v204 = 1024;
                      v205 = 2525;
                      _os_log_impl(&dword_1DB56E000, v124, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKE CopyCert succeeded", buf, 0x1Cu);
                    }
                  }

                  goto LABEL_163;
                }

                if (v120 < 7)
                {
                  goto LABEL_184;
                }

                v121 = VRTraceErrorLogLevelToCSTR();
                v122 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_184;
                }

                *buf = 136315650;
                v201 = v121;
                v202 = 2080;
                v203 = "SIPDoKeyExchange";
                v204 = 1024;
                v205 = 2522;
                v92 = v122;
                v93 = "SIP [%s] %s:%d SKE CopyCert not yet valid";
LABEL_182:
                v94 = 28;
              }

              _os_log_impl(&dword_1DB56E000, v92, OS_LOG_TYPE_DEFAULT, v93, buf, v94);
              goto LABEL_184;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v101 = VRTraceErrorLogLevelToCSTR();
              v102 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v201 = v101;
                v202 = 2080;
                v203 = "SIPDoKeyExchange";
                v204 = 1024;
                v205 = 2512;
                v99 = v102;
                v100 = "SIP [%s] %s:%d SKE no cert";
LABEL_161:
                _os_log_impl(&dword_1DB56E000, v99, OS_LOG_TYPE_DEFAULT, v100, buf, 0x1Cu);
              }
            }

LABEL_162:
            cf = 0;
LABEL_163:
            v184 = 0;
            (*(v12 + 32))(v8, *(v12 + 40), 6, a2, "SKECheckRemoteCert", &v184, cf, &v199);
            if (cf)
            {
              CFRelease(cf);
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v103 = VRTraceErrorLogLevelToCSTR();
              v104 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v201 = v103;
                v202 = 2080;
                v203 = "SIPDoKeyExchange";
                v204 = 1024;
                v205 = 2540;
                v206 = 1024;
                *v207 = v184;
                _os_log_impl(&dword_1DB56E000, v104, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ~_~ SIPDoSKE isValid = %d", buf, 0x22u);
              }
            }

            if (v184)
            {
LABEL_178:
              v171 = 1;
              goto LABEL_185;
            }

            if (!v192)
            {
              goto LABEL_177;
            }

            v105 = SecKeyExchangeAbortSession();
            if (v105)
            {
              v106 = v105;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v107 = VRTraceErrorLogLevelToCSTR();
                v108 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v201 = v107;
                  v202 = 2080;
                  v203 = "SIPDoKeyExchange";
                  v204 = 1024;
                  v205 = 2549;
                  v206 = 1024;
                  *v207 = v106;
                  _os_log_impl(&dword_1DB56E000, v108, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKE abort error %d", buf, 0x22u);
                }
              }
            }

            v13 = SKE_FormMessageS(v194, &v191, &v189, &v190, &v188);
            if (v194)
            {
              CFRelease(v194);
            }

            if ((v13 & 0x80000000) == 0)
            {
LABEL_177:
              v181 = 52;
              goto LABEL_178;
            }

            v158 = v199;
            v159 = v8;
            v160 = v12;
            v161 = a2;
            v162 = 2555;
LABEL_301:
            SIPReportSKError(v159, v160, v161, v158, 8, v162, "Out of Memory");
LABEL_302:
            v146 = ptr;
            if (ptr)
            {
              goto LABEL_274;
            }

            goto LABEL_204;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v166 = VRTraceErrorLogLevelToCSTR();
            v167 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v201 = v166;
              v202 = 2080;
              v203 = "SIPDoKeyExchange";
              v204 = 1024;
              v205 = 2482;
              v206 = 1024;
              *v207 = v192;
              _os_log_impl(&dword_1DB56E000, v167, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: error while SKEUpdate (%d)", buf, 0x22u);
            }
          }

          SIPReportSKError(v8, v12, a2, v199, 11, 2484, "Update Error");
          LODWORD(v13) = -1073086460;
        }
      }

LABEL_294:
      v146 = ptr;
      goto LABEL_295;
    }
  }

  v13 = SKEMessageInDialog;
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_302;
  }

  VRTraceErrorLogLevelToCSTR();
  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    SIPDoKeyExchange_cold_9();
  }

  v146 = ptr;
  if (ptr)
  {
    goto LABEL_274;
  }

LABEL_204:
  if (v191)
  {
    free(v191);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v125 = VRTraceErrorLogLevelToCSTR();
    v126 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v201 = v125;
      v202 = 2080;
      v203 = "SIPDoKeyExchange";
      v204 = 1024;
      v205 = 2668;
      _os_log_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoKeyExchange Done:", buf, 0x1Cu);
    }
  }

  if ((DLSetDoingKeyExchange(v196, 0) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v127 = VRTraceErrorLogLevelToCSTR();
      v128 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v201 = v127;
        v202 = 2080;
        v203 = "SIPDoKeyExchange";
        v204 = 1024;
        v205 = 2671;
        _os_log_impl(&dword_1DB56E000, v128, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoSKE: terminated by remote party", buf, 0x1Cu);
      }
    }

    v13 = 2148139061;
  }

  if (v193)
  {
    SecKeyExchangeNodeRelease();
  }

  if ((v13 & 0x90000000) == 0x80000000)
  {
    TACancel();
  }

  if (v197)
  {
    FreeSipMsg(v197);
  }

  TACloseHandle();
  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v129 = VRTraceErrorLogLevelToCSTR();
    v130 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v201 = v129;
      v202 = 2080;
      v203 = "SIPDoKeyExchange";
      v204 = 1024;
      v205 = 2693;
      v206 = 1024;
      *v207 = v13;
      _os_log_impl(&dword_1DB56E000, v130, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPDoKeyExchange stop(%X)...", buf, 0x22u);
    }
  }

  return v13;
}

uint64_t SIPCancel(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = v3;
      v24 = 2080;
      v25 = "SIPCancel";
      v26 = 1024;
      v27 = 2717;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPCancel start...", buf, 0x1Cu);
    }
  }

  v5 = 2148139025;
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2148139010;
  }

  if (*v6 || v6[1])
  {
    v7 = DLFindWithCallIDAndLock(&v20);
    if ((v7 & 0x80000000) == 0)
    {
      DLUnlock();
      v8 = CreateCancel(&v21, 0);
      if ((v8 & 0x80000000) != 0)
      {
        v5 = v8;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPCancel_cold_2();
          }
        }
      }

      else
      {
        v9 = v21;
        *v21 = 1;
        v5 = DLPutMsg(v20, v9, 0);
        if ((v5 & 0x80000000) != 0)
        {
          FreeSipMsg(v21);
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SIPCancel_cold_1();
            }
          }
        }
      }

      goto LABEL_24;
    }

    v5 = v7;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v23 = v10;
        v24 = 2080;
        v25 = "SIPCancel";
        v26 = 1024;
        v27 = 2732;
        v28 = 1024;
        v29 = 2732;
        v30 = 1024;
        v31 = a2;
        v12 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Cannot find call ID(%d)";
        v13 = v11;
        v14 = 40;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v23 = v15;
      v24 = 2080;
      v25 = "SIPCancel";
      v26 = 1024;
      v27 = 2725;
      v28 = 1024;
      v29 = 2725;
      v12 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call SIPStartListen first.";
      v13 = v16;
      v14 = 34;
      goto LABEL_23;
    }
  }

LABEL_24:
  TPDiscardConnectionResult();
  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v23 = v17;
      v24 = 2080;
      v25 = "SIPCancel";
      v26 = 1024;
      v27 = 2756;
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPCancel stop(%X)...", buf, 0x22u);
    }
  }

  return v5;
}

uint64_t SIPHangupWithTimeout(uint64_t *a1, uint64_t a2, unint64_t a3, int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v34 = -1431655766;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  v30 = 0xFFFFFFFFLL;
  v31 = 0xFFFFFFFFLL;
  v8 = *a1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v36 = v9;
      v37 = 2080;
      v38 = "SIPHangupWithTimeout";
      v39 = 1024;
      v40 = 2780;
      v41 = 1024;
      v42 = a4;
      v43 = 2080;
      v44[0] = "Remote Hang Up";
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPHangup start with detailed code (%u), Reason:(%s)", buf, 0x2Cu);
    }
  }

  v11 = 2148139025;
  v12 = CheckInHandleDebug();
  if (!v12)
  {
    return 2148139010;
  }

  v13 = v12;
  if (*v12 || v12[1])
  {
    v14 = DLFindWithCallIDAndLock(&v31);
    if ((v14 & 0x80000000) != 0)
    {
      v20 = v14;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v36 = v21;
          v37 = 2080;
          v38 = "SIPHangupWithTimeout";
          v39 = 1024;
          v40 = 2795;
          v41 = 1024;
          v42 = 2795;
          v43 = 1024;
          LODWORD(v44[0]) = a2;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Cannot find call ID(%d)", buf, 0x28u);
        }
      }

      v11 = v20;
    }

    else
    {
      DLGetData(v31, __b);
      DLGetState(v31, &v34);
      if (v34 == 3)
      {
        DLSetState(v31, 5);
        DLUnlock();
        Bye = CreateBye(&v33, v31, a4, "Remote Hang Up", v13[4]);
        if ((Bye & 0x80000000) != 0)
        {
          v11 = Bye;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SIPHangupWithTimeout_cold_4();
            }
          }
        }

        else
        {
          v16 = TACreateHandle(&v30, 1, *(v13 + 3), v33, 0xFFFFFFFFLL, TUMsgCallback, a1);
          if ((v16 & 0x80000000) != 0)
          {
            v11 = v16;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                SIPHangupWithTimeout_cold_3();
              }
            }

            v18 = v33;
LABEL_39:
            FreeSipMsg(v18);
          }

          else
          {
            v17 = TAStart(v30);
            if ((v17 & 0x80000000) == 0)
            {
              while (1)
              {
                while (1)
                {
                  v11 = DLGetMsg(v31, &v32, a3, 4, v33, -1);
                  if ((v11 & 0x80000000) != 0)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        SIPHangupWithTimeout_cold_1();
                      }
                    }

                    goto LABEL_46;
                  }

                  v18 = v32;
                  if (*(v32 + 1) == 2)
                  {
                    break;
                  }

LABEL_16:
                  FreeSipMsg(v18);
                }

                v19 = *(v32 + 2);
                if ((v19 - 1) <= 4)
                {
                  (*(v13 + 4))(v8, *(v13 + 5), 4, a2, v32 + 12, 0, 0, 0);
                  v18 = v32;
                  goto LABEL_16;
                }

                if ((v19 & 0xFFFFFFFE) == 6)
                {
                  goto LABEL_39;
                }

                if ((v19 - 8) <= 0x2C)
                {
                  v11 = (v19 - 1878392832);
                  goto LABEL_39;
                }
              }
            }

            v11 = v17;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                SIPHangupWithTimeout_cold_2();
              }
            }
          }
        }
      }

      else
      {
        DLUnlock();
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v36 = v23;
            v37 = 2080;
            v38 = "SIPHangupWithTimeout";
            v39 = 1024;
            v40 = 2804;
            v41 = 1024;
            v42 = 2804;
            v43 = 1024;
            LODWORD(v44[0]) = a2;
            WORD2(v44[0]) = 1024;
            *(v44 + 6) = v34;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call(%d) is in state %d", buf, 0x2Eu);
          }
        }

        v31 = 0xFFFFFFFFLL;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = v25;
      v37 = 2080;
      v38 = "SIPHangupWithTimeout";
      v39 = 1024;
      v40 = 2788;
      v41 = 1024;
      v42 = 2788;
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call SIPStartListen first.", buf, 0x22u);
    }
  }

LABEL_46:
  TPDiscardConnectionResult();
  if ((v11 & 0x90000000) == 0x80000000)
  {
    TACancel();
  }

  DLCloseHandle();
  TACloseHandle();
  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = v27;
      v37 = 2080;
      v38 = "SIPHangupWithTimeout";
      v39 = 1024;
      v40 = 2873;
      v41 = 1024;
      v42 = v11;
      _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPHangup stop(%X)...", buf, 0x22u);
    }
  }

  return v11;
}