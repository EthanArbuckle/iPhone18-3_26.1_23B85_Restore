id awQueue(int a1)
{
  if (a1)
  {
    if (awQueue_onceToken != -1)
    {
      dispatch_once(&awQueue_onceToken, &__block_literal_global_151);
    }

    v1 = &awQueue_queue;
  }

  else
  {
    if (awQueue_onceToken_154 != -1)
    {
      dispatch_once(&awQueue_onceToken_154, &__block_literal_global_156);
    }

    v1 = &awQueue_queue_153;
  }

  v2 = *v1;

  return v2;
}

unint64_t absTimeNS()
{
  v0 = mach_absolute_time();
  if (machTimeToNS_onceToken != -1)
  {
    dispatch_once(&machTimeToNS_onceToken, &__block_literal_global_714);
  }

  return v0 * machTimeToNS_timebase / *algn_1EDC169DC;
}

id _AALog()
{
  if (_AALog_onceToken != -1)
  {
    dispatch_once(&_AALog_onceToken, &__block_literal_global_869);
  }

  v1 = _AALog_log;

  return v1;
}

uint64_t decodeUInt64(void *a1, _BYTE *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1;
  v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:v5];

  if (v7)
  {
    v8 = [v7 unsignedLongLongValue];
  }

  else
  {
    if (currentLogLevel >= 3)
    {
      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = absTimeNS();
        if (v12 == -1)
        {
          v13 = INFINITY;
        }

        else
        {
          v13 = v12 / 1000000000.0;
        }

        v14 = 134218242;
        v15 = v13;
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", &v14, 0x16u);
      }
    }

    v8 = 0;
    *a2 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

double decodeDouble(void *a1, _BYTE *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1;
  v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:v5];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    if (currentLogLevel >= 3)
    {
      v10 = _AALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = absTimeNS();
        if (v13 == -1)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = v13 / 1000000000.0;
        }

        v15 = 134218242;
        v16 = v14;
        v17 = 2112;
        v18 = v5;
        _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", &v15, 0x16u);
      }
    }

    *a2 = 1;
    v9 = 0.0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

id tagDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"tagIndex %llu", a1];
  }

  else if (isEventFilterProcess == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"tagIndex %llu (tag not present in server)", a1];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"tagIndex %llu (nil tag)", a1];
  }
  v4 = ;

  return v4;
}

__CFString *getEventMaskDescription(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"AttentionLost|"];
    a1 &= ~1uLL;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:@"Button|"];
  a1 &= ~2uLL;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 appendString:@"Keyboard|"];
  a1 &= ~4uLL;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 appendString:@"Digitizer|"];
  a1 &= ~8uLL;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 appendString:@"Pointer|"];
  a1 &= ~0x10uLL;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 appendString:@"Remote|"];
  a1 &= ~0x20uLL;
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 appendString:@"GameController|"];
  a1 &= ~0x40uLL;
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 appendString:@"FaceDetect|"];
  a1 &= ~0x80uLL;
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 appendString:@"DigitalCrown|"];
  a1 &= ~0x100uLL;
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 appendString:@"MesaTouch|"];
  a1 &= ~0x200uLL;
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 appendString:@"RemoteProximity|"];
  a1 &= ~0x400uLL;
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  [v3 appendString:@"GenericGesture|"];
  a1 &= ~0x800uLL;
  if (a1)
  {
LABEL_14:
    [v3 appendFormat:@"UNKNOWN EVENT MASK 0x%016llx|", a1];
  }

LABEL_15:
  v4 = [v3 length];
  if (v4)
  {
    [v3 deleteCharactersInRange:{v4 - 1, 1}];
    v5 = v3;
  }

  else
  {
    v5 = @"NONE";
  }

  return v5;
}

__CFString *getNotificationMaskDescription(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"FaceDetectWasInterrupted|"];
    a1 &= ~1uLL;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:@"FaceDetectInterruptionDidEnd|"];
  a1 &= ~2uLL;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 appendString:@"FaceDetectWasDisabled|"];
  a1 &= ~4uLL;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 appendString:@"MotionDetectWasInterrupted|"];
  a1 &= ~8uLL;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  [v3 appendString:@"MotionDetectInterruptionDidEnd|"];
  a1 &= ~0x10uLL;
  if (a1)
  {
LABEL_7:
    [v3 appendFormat:@"UNKNOWN NOTIFICATION MASK 0x%016llx|", a1];
  }

LABEL_8:
  v4 = [v3 length];
  if (v4)
  {
    [v3 deleteCharactersInRange:{v4 - 1, 1}];
    v5 = v3;
  }

  else
  {
    v5 = @"NONE";
  }

  return v5;
}

id decodeString(void *a1, _BYTE *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (([v5 containsValueForKey:v6] & 1) == 0)
  {
    if (currentLogLevel >= 3)
    {
      v10 = _AALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = absTimeNS();
        if (v13 == -1)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = v13 / 1000000000.0;
        }

        v15 = 134218242;
        v16 = v14;
        v17 = 2112;
        v18 = v6;
        _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", &v15, 0x16u);
      }
    }

    *a2 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

id decodeStringSet(void *a1, _BYTE *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v5 decodeObjectOfClasses:v9 forKey:v6];
  if (!v10)
  {
    if ([v5 containsValueForKey:v6])
    {
      v17 = 0;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_15:
    if (currentLogLevel >= 3)
    {
      v18 = _AALog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = absTimeNS();
        if (v21 == -1)
        {
          v22 = INFINITY;
        }

        else
        {
          v22 = v21 / 1000000000.0;
        }

        *buf = 134218242;
        v29 = v22;
        v30 = 2112;
        v31 = v6;
        _os_log_error_impl(&dword_1BB2EF000, v18, OS_LOG_TYPE_ERROR, "%13.5f: Failed to decode %@", buf, 0x16u);
      }
    }

    v17 = 0;
    *a2 = 1;
    goto LABEL_19;
  }

  v23 = a2;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          a2 = v23;
          goto LABEL_15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = v11;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

void sub_1BB2F244C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB2F263C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void updateDeadline(unint64_t *a1, unint64_t a2, void *a3, uint64_t a4, int a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (*a1 <= a2)
  {
    if (currentLogLevel < 7)
    {
      goto LABEL_41;
    }

    v13 = _AALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v14 = i;
        }

        else if (!*(i - 1))
        {
          v18 = absTimeNS();
          if (v18 == -1)
          {
            v19 = INFINITY;
          }

          else
          {
            v19 = v18 / 1000000000.0;
          }

          if (*a1 == -1)
          {
            v21 = INFINITY;
          }

          else
          {
            v21 = *a1 / 1000000000.0;
          }

          if (a2 == -1)
          {
            v23 = INFINITY;
          }

          else
          {
            v23 = a2 / 1000000000.0;
          }

          v25 = 136316930;
          v26 = v14;
          v27 = 1024;
          v28 = 1289;
          v29 = 2048;
          v30 = v19;
          v31 = 2112;
          v32 = v9;
          v33 = 2048;
          v34 = v21;
          v35 = 2048;
          v36 = v23;
          v37 = 2080;
          v38 = a4;
          v39 = 1024;
          v40 = a5;
          _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ ignoring updating from %13.5f to %13.5f (%s, line %d)", &v25, 0x4Au);
          break;
        }
      }
    }

    goto LABEL_41;
  }

  if (currentLogLevel < 7)
  {
    goto LABEL_37;
  }

  v10 = _AALog();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_36;
  }

  v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(j - 1) == 47; ++j)
  {
    v11 = j;
LABEL_9:
    ;
  }

  if (*(j - 1))
  {
    goto LABEL_9;
  }

  v16 = absTimeNS();
  if (v16 == -1)
  {
    v17 = INFINITY;
  }

  else
  {
    v17 = v16 / 1000000000.0;
  }

  if (*a1 == -1)
  {
    v20 = INFINITY;
  }

  else
  {
    v20 = *a1 / 1000000000.0;
  }

  if (a2 == -1)
  {
    v22 = INFINITY;
  }

  else
  {
    v22 = a2 / 1000000000.0;
  }

  v25 = 136316930;
  v26 = v11;
  v27 = 1024;
  v28 = 1284;
  v29 = 2048;
  v30 = v17;
  v31 = 2112;
  v32 = v9;
  v33 = 2048;
  v34 = v20;
  v35 = 2048;
  v36 = v22;
  v37 = 2080;
  v38 = a4;
  v39 = 1024;
  v40 = a5;
  _os_log_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ updating from %13.5f to %13.5f (%s, line %d)", &v25, 0x4Au);
LABEL_36:

LABEL_37:
  *a1 = a2;
LABEL_41:

  v24 = *MEMORY[0x1E69E9840];
}

__IOHIDService *AttentionServiceEventFilter::filter(id *this, void *a2, __IOHIDService *a3, __IOHIDEvent *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  IntegerValue = IOHIDEventGetIntegerValue();
  v8 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 65289 && v8 == 2)
  {
    v11 = IOHIDEventGetIntegerValue() == 1;
    isSmartCoverEvent_flap1SensorIsEngaged = v11;
    v10 = isSmartCoverEvent_openSensorIsEngaged;
    goto LABEL_9;
  }

  if (IntegerValue == 65289 && v8 == 1)
  {
    v10 = IOHIDEventGetIntegerValue() == 1;
    isSmartCoverEvent_openSensorIsEngaged = v10;
    v11 = isSmartCoverEvent_flap1SensorIsEngaged;
LABEL_9:
    [this[3] setSmartCoverClosed:v11 & v10 & 1];
  }

  if (![this[3] clientCount] || (IOHIDEventGetEventFlags() & 0x800000) != 0)
  {
    goto LABEL_64;
  }

  Type = IOHIDEventGetType();
  v13 = 2;
  if (Type > 28)
  {
    if (Type > 38)
    {
      if (Type == 39)
      {
        v13 = 2048;
        goto LABEL_45;
      }

      if (Type == 42)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (Type == 29)
      {
        v13 = 512;
        goto LABEL_45;
      }

      if (Type == 35)
      {
        v13 = 64;
        goto LABEL_45;
      }
    }
  }

  else if (Type > 10)
  {
    if (Type == 11)
    {
      v13 = 8;
      goto LABEL_45;
    }

    if (Type == 17)
    {
      v13 = 16;
      goto LABEL_45;
    }
  }

  else
  {
    if (Type == 2)
    {
      goto LABEL_45;
    }

    if (Type == 3)
    {
      v13 = 4;
      if (IOHIDEventGetIntegerValue())
      {
        v13 = 2;
      }

LABEL_45:
      v18 = mach_absolute_time();
      TimeStamp = IOHIDEventGetTimeStamp();
      if (machTimeToNS_onceToken != -1)
      {
        dispatch_once(&machTimeToNS_onceToken, &__block_literal_global_714);
      }

      v20 = v18 * machTimeToNS_timebase / *algn_1EDC169DC;
      v21 = TimeStamp * machTimeToNS_timebase / *algn_1EDC169DC;
      v22 = v20 - v21;
      if (v20 >= v21)
      {
        if (v22 < 0x2540BE401)
        {
          v15 = 0;
LABEL_62:
          [this[3] processHIDEvent:a3 mask:v13 timestamp:v21 senderID:a2];
          goto LABEL_63;
        }

        v23 = MEMORY[0x1E696AEC0];
        if (v22 != -1)
        {
          v24 = v22 / 1000000000.0;
          v25 = @"%13.5f seconds in the past";
          goto LABEL_57;
        }

        v25 = @"%13.5f seconds in the past";
      }

      else
      {
        v23 = MEMORY[0x1E696AEC0];
        if (v21 - v20 != -1)
        {
          v24 = (v21 - v20) / 1000000000.0;
          v25 = @"%13.5f seconds in the future";
          goto LABEL_57;
        }

        v25 = @"%13.5f seconds in the future";
      }

      v24 = INFINITY;
LABEL_57:
      v15 = [v23 stringWithFormat:v25, *&v24];
      if (v15)
      {
        if (currentLogLevel >= 3)
        {
          v26 = _AALog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v29 = absTimeNS();
            if (v29 == -1)
            {
              v30 = INFINITY;
            }

            else
            {
              v30 = v29 / 1000000000.0;
            }

            v31 = IOHIDEventGetType();
            if (v20 == -1)
            {
              v32 = INFINITY;
            }

            else
            {
              v32 = v20 / 1000000000.0;
            }

            if (v21 == -1)
            {
              v33 = INFINITY;
            }

            else
            {
              v33 = v21 / 1000000000.0;
            }

            *buf = 134219522;
            v37 = v30;
            v38 = 1024;
            v39 = v31;
            v40 = 2112;
            v41 = *&v15;
            v42 = 2048;
            *v43 = v18;
            *&v43[8] = 2048;
            *&v43[10] = v32;
            *&v43[18] = 2048;
            *&v43[20] = TimeStamp;
            v44 = 2048;
            v45 = v33;
            _os_log_error_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_ERROR, "%13.5f: EventType %u from %@ (now %llu (%13.5f), event timestamp %llu (%13.5f))", buf, 0x44u);
          }
        }

        v21 = v20;
      }

      goto LABEL_62;
    }
  }

  if (currentLogLevel >= 7)
  {
    v14 = 0;
    if (Type <= 0x19)
    {
      if (((1 << Type) & 0x210F000) != 0)
      {
        goto LABEL_64;
      }

      if (Type == 1)
      {
        v14 = IOHIDEventGetIntegerValue() == 65292;
      }
    }

    if (!v14 && currentLogLevel >= 7)
    {
      v15 = _AALog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v16 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/EventFilter/EventFilter.mm";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/EventFilter/EventFilter.mm"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v16 = i;
        }

        else if (!*(i - 1))
        {
          v34 = absTimeNS();
          if (v34 == -1)
          {
            v35 = INFINITY;
          }

          else
          {
            v35 = v34 / 1000000000.0;
          }

          *buf = 136316418;
          v37 = *&v16;
          v38 = 1024;
          v39 = 142;
          v40 = 2048;
          v41 = v35;
          v42 = 1024;
          *v43 = IOHIDEventGetType();
          *&v43[4] = 2112;
          *&v43[6] = a3;
          *&v43[14] = 2112;
          *&v43[16] = a2;
          _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: unknown event type %u : %@ from sender %@", buf, 0x36u);
LABEL_63:

          break;
        }
      }
    }
  }

LABEL_64:
  v27 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t connectionHasEntitlement(void *a1, uint64_t a2)
{
  v2 = [a1 valueForEntitlement:a2];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v4 = [v2 isEqual:v3];

  return v4;
}

char *getAttentionSamplerStateDescription(unsigned int a1)
{
  if (a1 < 6)
  {
    return off_1E7F37978[a1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown AWAttentionSamplerState %llu", a1];
  v3 = [v2 UTF8String];

  return v3;
}

id getPearlDevice()
{
  if (getPearlDevice_onceToken != -1)
  {
    dispatch_once(&getPearlDevice_onceToken, &__block_literal_global_302);
  }

  v1 = getPearlDevice_result;

  return v1;
}

char *getDeviceStateDescription(uint64_t a1)
{
  if ((a1 - 1) < 5)
  {
    return off_1E7F374A8[a1 - 1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown BKPearlDeviceState %llu", a1];
  v3 = [v2 UTF8String];

  return v3;
}

char *getDeviceEventDescription(uint64_t a1)
{
  if ((a1 - 1) < 0xC)
  {
    return off_1E7F37448[a1 - 1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown BKPearlDeviceEvent %llu", a1];
  v3 = [v2 UTF8String];

  return v3;
}

char *getOperationStateDescription(uint64_t a1)
{
  if ((a1 - 1) < 5)
  {
    return off_1E7F374D0[a1 - 1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown BKOperationState %llu", a1];
  v3 = [v2 UTF8String];

  return v3;
}

uint64_t deviceSupportsPearl()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6986E48];
  result = AVGestaltGetBoolAnswer();
  if (!result)
  {
    goto LABEL_22;
  }

  bzero(__s1, 0x800uLL);
  v10 = 2048;
  sysctlbyname("kern.bootargs", __s1, &v10, 0, 0);
  v2 = strstr(__s1, "disable-attention-checks");
  if (v2 && strtol(v2 + 25, 0, 0))
  {
    goto LABEL_21;
  }

  if (isPearlDisabledViaAccessibility_onceToken != -1)
  {
    dispatch_once(&isPearlDisabledViaAccessibility_onceToken, &__block_literal_global_312);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  *__s1 = MEMORY[0x1E69E9820];
  *&__s1[8] = 3221225472;
  *&__s1[16] = __isPearlDisabledViaAccessibility_block_invoke_319;
  *&__s1[24] = &unk_1E7F37710;
  v15 = &v10;
  dispatch_sync(isPearlDisabledViaAccessibility_queue, __s1);
  v3 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  if (v3 != 1)
  {
    result = 1;
    goto LABEL_22;
  }

  if (currentLogLevel < 7)
  {
    goto LABEL_21;
  }

  v4 = _AALog();
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m"; *(i - 1) == 47; ++i)
  {
    v5 = i;
LABEL_14:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_14;
  }

  v7 = absTimeNS();
  if (v7 == -1)
  {
    v8 = INFINITY;
  }

  else
  {
    v8 = v7 / 1000000000.0;
  }

  *__s1 = 136315650;
  *&__s1[4] = v5;
  *&__s1[12] = 1024;
  *&__s1[14] = 673;
  *&__s1[18] = 2048;
  *&__s1[20] = v8;
  _os_log_impl(&dword_1BB2EF000, v4, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: Pearl disabled via accessibility; disabling FaceDetect", __s1, 0x1Cu);
LABEL_20:

LABEL_21:
  result = 0;
LABEL_22:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BB2F6714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB2F6960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *getEndReasonDescriptions(uint64_t a1)
{
  if ((a1 - 1) < 4)
  {
    return off_1E7F37428[a1 - 1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown BKOperationEndReason %llu", a1];
  v3 = [v2 UTF8String];

  return v3;
}

void sub_1BB2FC99C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

uint64_t AttentionServiceEventFilter::Release(AttentionServiceEventFilter *this, void *a2)
{
  v2 = *(this + 2);
  v3 = (v2 - 1);
  *(this + 2) = v3;
  if (v2 == 1)
  {
    CFPlugInRemoveInstanceForFactory(*(this + 2));
    CFRelease(*(this + 2));

    MEMORY[0x1BFB0CB20](this, 0x10E0C406288F30FLL);
  }

  return v3;
}

uint64_t AttentionServiceEventFilter::AddRef(AttentionServiceEventFilter *this, void *a2)
{
  v2 = (*(this + 2) + 1);
  *(this + 2) = v2;
  return v2;
}

uint64_t _AWAttentionServiceEventFilterFactory(uint64_t a1, const void *a2)
{
  isEventFilterProcess = 1;
  v4 = *MEMORY[0x1E695E4A8];
  v5 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  if (!CFEqual(a2, v5))
  {
    return 0;
  }

  v6 = MEMORY[0x1BFB0C900](a1, 32, 0x10E00406288F30FLL, 0);
  v7 = CFUUIDGetConstantUUIDWithBytes(v4, 0xE9u, 0xC1u, 0x6Bu, 0x10u, 0x46u, 0xD0u, 0x46u, 0x2Cu, 0x86u, 0xDDu, 0x34u, 0x46u, 0x45u, 0x10u, 0x56u, 0xAAu);
  *v6 = &AttentionServiceEventFilter::functionTable;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  CFPlugInAddInstanceForFactory(v7);
  *(v6 + 16) = CFRetain(v7);
  v8 = +[AWAttentionAwareService sharedAttentionService];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  return v6;
}

void sub_1BB301C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB303240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB303A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__585(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB303D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *getPollEventTypeDescription(uint64_t a1)
{
  if ((a1 - 1) < 5)
  {
    return off_1E7F37628[a1 - 1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown AWAttentionPollEventType %llu", a1];
  v3 = [v2 UTF8String];

  return v3;
}

void sub_1BB3075A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __registerForPrefsChange_block_invoke_284(uint64_t a1, void *a2)
{
  if (!a2 || (v3 = *(a1 + 40), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x1EEE66BE0]();
}

void __registerForPrefsChange_block_invoke_2_287(uint64_t a1)
{
  v7 = [registerForPrefsChange_notifyBlocks objectForKeyedSubscript:*(a1 + 32)];
  if (!v7)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v3 = *(a1 + 32);
    v7 = v2;
    [registerForPrefsChange_notifyBlocks setObject:? forKeyedSubscript:?];
  }

  v4 = MEMORY[0x1BFB0D030](*(a1 + 40));
  [v7 addObject:v4];

  v5 = *(a1 + 40);
  v6 = [registerForPrefsChange_curPrefs objectForKeyedSubscript:*(a1 + 32)];
  (*(v5 + 16))(v5, v6);
}

uint64_t __registerForPrefsChange_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = registerForPrefsChange_notifyBlocks;
  registerForPrefsChange_notifyBlocks = v0;

  v2 = dispatch_queue_create("com.apple.AttentionAwareness.PreferencesChanged", 0);
  v3 = registerForPrefsChange_queue;
  registerForPrefsChange_queue = v2;

  v4 = getPreferences();
  v5 = registerForPrefsChange_curPrefs;
  registerForPrefsChange_curPrefs = v4;

  out_token = 0;
  return notify_register_dispatch("com.apple.AttentionAwareness.PreferencesChanged", &out_token, registerForPrefsChange_queue, &__block_literal_global_282);
}

id getPreferences()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__716;
  v10 = __Block_byref_object_dispose__717;
  v11 = 0;
  if (isEventFilterProcess == 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.AttentionAwareness");
    v0 = CFPreferencesCopyMultiple(0, @"com.apple.AttentionAwareness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v1 = v7[5];
    v7[5] = v0;
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getPreferences_block_invoke;
    v5[3] = &unk_1E7F376E8;
    v5[4] = &v6;
    v2 = [AWServiceManager invokeWithService:v5];
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_1BB309054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __registerForPrefsChange_block_invoke_2()
{
  v60 = *MEMORY[0x1E69E9840];
  v0 = getPreferences();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [registerForPrefsChange_notifyBlocks allKeys];
  v1 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v1)
  {
    v3 = v1;
    v4 = *v49;
    *&v2 = 136316418;
    v42 = v2;
    do
    {
      v5 = 0;
      do
      {
        if (*v49 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v48 + 1) + 8 * v5);
        v7 = [registerForPrefsChange_curPrefs objectForKeyedSubscript:{v6, v42}];
        v8 = [v0 objectForKeyedSubscript:v6];
        v9 = v8;
        if (v7 | v8)
        {
          if (v7)
          {
            v10 = v8 == 0;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            if (currentLogLevel != 5)
            {
              if (currentLogLevel < 6)
              {
                goto LABEL_73;
              }

              v12 = _AALog();
              if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_72;
              }

              v19 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m";
              for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m"; ; ++i)
              {
                if (*(i - 1) == 47)
                {
                  v19 = i;
                }

                else if (!*(i - 1))
                {
                  v25 = absTimeNS();
                  if (v25 == -1)
                  {
                    v26 = INFINITY;
                  }

                  else
                  {
                    v26 = v25 / 1000000000.0;
                  }

                  *buf = 136316162;
                  v54 = *&v19;
                  v55 = 1024;
                  *v56 = 515;
                  *&v56[4] = 2048;
                  *&v56[6] = v26;
                  *&v56[14] = 2112;
                  *&v56[16] = v6;
                  *&v56[24] = 2112;
                  *&v56[26] = v7;
                  v27 = v12;
                  v28 = "%30s:%-4d: %13.5f: preference %@ removed (was %@)";
LABEL_70:
                  v31 = 48;
LABEL_71:
                  _os_log_impl(&dword_1BB2EF000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v31);
LABEL_72:

                  goto LABEL_73;
                }
              }
            }

            v12 = _AALog();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            v15 = absTimeNS();
            if (v15 == -1)
            {
              v16 = INFINITY;
            }

            else
            {
              v16 = v15 / 1000000000.0;
            }

            *buf = 134218498;
            v54 = v16;
            v55 = 2112;
            *v56 = v6;
            *&v56[8] = 2112;
            *&v56[10] = v7;
            v27 = v12;
            v28 = "%13.5f: preference %@ removed (was %@)";
LABEL_61:
            v31 = 32;
            goto LABEL_71;
          }

          if (v7)
          {
            v11 = 1;
          }

          else
          {
            v11 = v8 == 0;
          }

          if (!v11)
          {
            if (currentLogLevel != 5)
            {
              if (currentLogLevel >= 6)
              {
                v12 = _AALog();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m";
                  for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m"; ; ++j)
                  {
                    if (*(j - 1) == 47)
                    {
                      v21 = j;
                    }

                    else if (!*(j - 1))
                    {
                      v29 = absTimeNS();
                      if (v29 == -1)
                      {
                        v30 = INFINITY;
                      }

                      else
                      {
                        v30 = v29 / 1000000000.0;
                      }

                      *buf = 136316162;
                      v54 = *&v21;
                      v55 = 1024;
                      *v56 = 519;
                      *&v56[4] = 2048;
                      *&v56[6] = v30;
                      *&v56[14] = 2112;
                      *&v56[16] = v6;
                      *&v56[24] = 2112;
                      *&v56[26] = v9;
                      v27 = v12;
                      v28 = "%30s:%-4d: %13.5f: preference %@ set to %@";
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_72;
              }

              goto LABEL_73;
            }

            v12 = _AALog();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            v17 = absTimeNS();
            if (v17 == -1)
            {
              v18 = INFINITY;
            }

            else
            {
              v18 = v17 / 1000000000.0;
            }

            *buf = 134218498;
            v54 = v18;
            v55 = 2112;
            *v56 = v6;
            *&v56[8] = 2112;
            *&v56[10] = v9;
            v27 = v12;
            v28 = "%13.5f: preference %@ set to %@";
            goto LABEL_61;
          }

          if (([v7 isEqual:v8] & 1) == 0)
          {
            if (currentLogLevel == 5)
            {
              v12 = _AALog();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = absTimeNS();
                if (v13 == -1)
                {
                  v14 = INFINITY;
                }

                else
                {
                  v14 = v13 / 1000000000.0;
                }

                *buf = 134218754;
                v54 = v14;
                v55 = 2112;
                *v56 = v6;
                *&v56[8] = 2112;
                *&v56[10] = v7;
                *&v56[18] = 2112;
                *&v56[20] = v9;
                v27 = v12;
                v28 = "%13.5f: preference %@ changed from %@ to %@";
                v31 = 42;
                goto LABEL_71;
              }

              goto LABEL_72;
            }

            if (currentLogLevel >= 6)
            {
              v12 = _AALog();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v23 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m";
                for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m"; ; ++k)
                {
                  if (*(k - 1) == 47)
                  {
                    v23 = k;
                  }

                  else if (!*(k - 1))
                  {
                    v32 = absTimeNS();
                    if (v32 == -1)
                    {
                      v33 = INFINITY;
                    }

                    else
                    {
                      v33 = v32 / 1000000000.0;
                    }

                    *buf = v42;
                    v54 = *&v23;
                    v55 = 1024;
                    *v56 = 523;
                    *&v56[4] = 2048;
                    *&v56[6] = v33;
                    *&v56[14] = 2112;
                    *&v56[16] = v6;
                    *&v56[24] = 2112;
                    *&v56[26] = v7;
                    v57 = 2112;
                    v58 = v9;
                    v27 = v12;
                    v28 = "%30s:%-4d: %13.5f: preference %@ changed from %@ to %@";
                    v31 = 58;
                    goto LABEL_71;
                  }
                }
              }

              goto LABEL_72;
            }

LABEL_73:
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v34 = [registerForPrefsChange_notifyBlocks objectForKeyedSubscript:v6];
            v35 = [v34 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v45;
              do
              {
                for (m = 0; m != v36; ++m)
                {
                  if (*v45 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  (*(*(*(&v44 + 1) + 8 * m) + 16))();
                }

                v36 = [v34 countByEnumeratingWithState:&v44 objects:v52 count:16];
              }

              while (v36);
            }
          }
        }

        ++v5;
      }

      while (v5 != v3);
      v39 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
      v3 = v39;
    }

    while (v39);
  }

  v40 = registerForPrefsChange_curPrefs;
  registerForPrefsChange_curPrefs = v0;

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__716(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __getPreferences_block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __getPreferences_block_invoke_2;
  v3[3] = &unk_1E7F376C0;
  v3[4] = *(a1 + 32);
  [a2 getDebugPreferences:v3];
  return 0;
}

__CFString *getFaceDetectOrientationDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown AWFaceDetectOrientation %llu", a1];
  }

  else
  {
    v2 = off_1E7F37730[a1];
  }

  return v2;
}

__CFString *getEyeReliefFaceStateDescription(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown AWEyeReliefFaceState %llu", a1];
  }

  else
  {
    v2 = off_1E7F37758[a1];
  }

  return v2;
}

__CFString *getMotionEventTypeDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown AWAttentionMotionEventType %llu", a1];
  }

  else
  {
    v2 = off_1E7F377B8[a1];
  }

  return v2;
}

uint64_t __awQueue_block_invoke_2()
{
  v0 = dispatch_queue_create("com.apple.AttentionAwareness.Framework", 0);
  v1 = awQueue_queue_153;
  awQueue_queue_153 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __awQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.AttentionAwareness.Server", 0);
  v1 = awQueue_queue;
  awQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id xpcInterfaceForScheduler()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3962B08];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F39671F8];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F39630D0];
  [v0 setInterface:v1 forSelector:sel_addClient_clientConfig_clientIndex_clientId_unitTestMode_reply_subscribeForStreamingEvents_ argumentIndex:0 ofReply:0];
  [v0 setInterface:v2 forSelector:sel_addClient_clientConfig_clientIndex_clientId_unitTestMode_reply_subscribeForStreamingEvents_ argumentIndex:0 ofReply:1];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3964A98];

  [v0 setInterface:v3 forSelector:sel_getUnitTestSamplerWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

void __getPearlDevice_block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E698F380] availableDevices];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v0 = v17 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v15;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v14 + 1) + 8 * i);
        if ([v5 type] == 2)
        {
          v13 = 0;
          v6 = [MEMORY[0x1E698F368] deviceWithDescriptor:v5 error:&v13];
          v7 = v13;
          v8 = getPearlDevice_result;
          getPearlDevice_result = v6;

          if (v7 && currentLogLevel >= 3)
          {
            v9 = _AALog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v11 = absTimeNS();
              if (v11 == -1)
              {
                v12 = INFINITY;
              }

              else
              {
                v12 = v11 / 1000000000.0;
              }

              *buf = 134218242;
              v19 = v12;
              v20 = 2112;
              v21 = v7;
              _os_log_error_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_ERROR, "%13.5f: Failed to get pearl device: %@", buf, 0x16u);
            }
          }

          goto LABEL_15;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __isPearlDisabledViaAccessibility_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.AttentionAwareness.pearlAccessibilitySettingsChanged", 0);
  v1 = isPearlDisabledViaAccessibility_queue;
  isPearlDisabledViaAccessibility_queue = v0;

  isPearlDisabledViaAccessibility_accessibilityValue = _AXSAttentionAwarenessFeaturesEnabled() == 0;
  out_token = 0;
  v2 = [*MEMORY[0x1E69E4C80] UTF8String];
  return notify_register_dispatch(v2, &out_token, isPearlDisabledViaAccessibility_queue, &__block_literal_global_315);
}

uint64_t __isPearlDisabledViaAccessibility_block_invoke_2()
{
  v20 = *MEMORY[0x1E69E9840];
  result = _AXSAttentionAwarenessFeaturesEnabled();
  if (isPearlDisabledViaAccessibility_accessibilityValue != (result == 0))
  {
    isPearlDisabledViaAccessibility_accessibilityValue = result == 0;
    if (currentLogLevel == 5)
    {
      v1 = _AALog();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v2 = absTimeNS();
        if (v2 == -1)
        {
          v3 = INFINITY;
        }

        else
        {
          v3 = v2 / 1000000000.0;
        }

        v8 = "ON";
        if (isPearlDisabledViaAccessibility_accessibilityValue)
        {
          v8 = "OFF";
        }

        v14 = 134218242;
        v15 = v3;
        v16 = 2080;
        *v17 = v8;
        v9 = "%13.5f: Attention Aware Features set to %s";
        v10 = v1;
        v11 = 22;
LABEL_25:
        _os_log_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_27:
        result = notify_post("com.apple.AttentionAwareness.SupportedEventsChanged");
        goto LABEL_28;
      }

      v1 = _AALog();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Shared/Utils.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v4 = i;
          }

          else if (!*(i - 1))
          {
            v6 = absTimeNS();
            if (v6 == -1)
            {
              v7 = INFINITY;
            }

            else
            {
              v7 = v6 / 1000000000.0;
            }

            v14 = 136315906;
            if (isPearlDisabledViaAccessibility_accessibilityValue)
            {
              v12 = "OFF";
            }

            else
            {
              v12 = "ON";
            }

            v15 = *&v4;
            v16 = 1024;
            *v17 = 611;
            *&v17[4] = 2048;
            *&v17[6] = v7;
            v18 = 2080;
            v19 = v12;
            v9 = "%30s:%-4d: %13.5f: Attention Aware Features set to %s";
            v10 = v1;
            v11 = 38;
            goto LABEL_25;
          }
        }
      }
    }

    goto LABEL_27;
  }

LABEL_28:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BB30B0F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_1BB30C0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Block_object_dispose((v49 - 208), 8);
  _Block_object_dispose((v49 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1031(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB30DA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __schedulerQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.AttentionAwareness.Scheduler", 0);
  v1 = schedulerQueue_queue;
  schedulerQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void _AWStartStandaloneServer()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  v1 = *_AWAttentionServiceEventFilterFactory(0, v0);
  v2 = IOHIDEventSystemClientCreateWithType();
  if (!IOHIDEventSystemClientSetProperty(v2, @"ClientEventFilter", &unk_1F39608B0) && currentLogLevel >= 3)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      *buf = 134217984;
      v9 = v7;
      _os_log_error_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_ERROR, "%13.5f: IOHIDEventSystemClientSetProperty failed", buf, 0xCu);
    }
  }

  IOHIDEventSystemClientRegisterEventBlock();
  v4 = dispatch_queue_create("com.apple.AttentionAwareness.StandaloneServerQueue", 0);
  IOHIDEventSystemClientScheduleWithDispatchQueue();

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1BB3111A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1BB311E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB312130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB312464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB312780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB312A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB312DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB313128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB313780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB316530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2045(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB31E2B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BB321ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2313(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB322E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB323160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB32338C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB3236B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB323918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

void sub_1BB323CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB323EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB324488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB3245A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB324D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB325000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1BB32530C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void operator delete()
{
    ;
  }
}