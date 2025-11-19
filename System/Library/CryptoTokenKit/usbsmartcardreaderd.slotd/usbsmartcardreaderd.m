id sub_100001170()
{
  if (qword_10002BFA0 != -1)
  {
    sub_100014278();
  }

  v1 = qword_10002BFA8;

  return v1;
}

id sub_1000013B0(id result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return [IOKitNotificationPort callbackWithContext:result iterator:a2];
    }
  }

  return result;
}

CFMutableDictionaryRef sub_100001B80(uint64_t a1)
{
  v1 = IORegistryEntryIDMatching(a1);

  return v1;
}

uint64_t sub_100001BA8(void *a1)
{
  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID([a1 holder], &entryID))
  {
    v1 = sub_100001170();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000144DC();
    }
  }

  return entryID;
}

IOKitObjectHolder *sub_100001C0C(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = [IOKitObjectHolder alloc];
  v5 = v3;
  v6 = [(IOKitObjectHolder *)v4 initWithRetainedObject:IOServiceGetMatchingService(kIOMainPortDefault, v5)];
  v7 = v6;
  if (a2 > 0x18 || v6)
  {
    if (!v6)
    {
      v10 = sub_100001170();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100014518();
      }
    }

    v9 = v7;
  }

  else
  {
    v8 = sub_100001170();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100014588();
    }

    [NSThread sleepForTimeInterval:0.01];
    v9 = sub_100001C0C(v5, a2 + 1);
  }

  v11 = v9;

  return v11;
}

void sub_100001D38(id a1)
{
  qword_10002BFA8 = os_log_create("com.apple.CryptoTokenKit", "ccid");

  _objc_release_x1();
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_1000244C8);
  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_100001DEC(id a1, OS_xpc_object *a2)
{
  uint64 = xpc_dictionary_get_uint64(a2, "IOMatchLaunchServiceID");
  v3 = sub_100001EFC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000145F8(uint64, v3);
  }

  v4 = sub_100001B80(uint64);
  v5 = sub_100001EFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100014670(v4, v5);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001F40;
  v7[3] = &unk_1000244F0;
  v8 = v4;
  v6 = v4;
  [Synchronize sync:v7];
}

id sub_100001EFC()
{
  if (qword_10002BFB0 != -1)
  {
    sub_1000146E8();
  }

  v1 = qword_10002BFB8;

  return v1;
}

void sub_100001F40(uint64_t a1)
{
  v1 = sub_100001D30(*(a1 + 32));
  [Device registerService:v1];
}

void sub_100001F90(id a1)
{
  qword_10002BFB8 = os_log_create("com.apple.CryptoTokenKit", "ccid");

  _objc_release_x1();
}

id sub_100002360(uint64_t a1)
{
  v10[0] = @"productId";
  v2 = [*(a1 + 32) device];
  v3 = [v2 productId];
  v11[0] = v3;
  v10[1] = @"vendorId";
  v4 = [*(a1 + 32) device];
  v5 = [v4 vendorId];
  v6 = v5;
  v10[2] = @"failureType";
  v7 = *(a1 + 40);
  if (!v7)
  {
    v7 = @"Unknown";
  }

  v11[1] = v5;
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

id sub_100002620()
{
  if (qword_10002BFC0 != -1)
  {
    sub_10001481C();
  }

  v1 = qword_10002BFC8;

  return v1;
}

void sub_100002EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002ED4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002EEC(uint64_t a1)
{
  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100014C20();
  }

  if ([*(a1 + 32) cardPresent])
  {
    v3 = *(a1 + 32);
    if (v3[9])
    {
      [v3 warmResetCard];
    }

    else
    {
      [v3 coldResetCard];
    }
    v4 = ;
    v6 = *(*(a1 + 40) + 8);
    v5 = *(v6 + 40);
    *(v6 + 40) = v4;
  }

  else
  {
    v5 = sub_100002620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100014C5C();
    }
  }
}

int64_t sub_100003278(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a3;
  LODWORD(a2) = [(NSNumber *)a2 unsignedIntValue];
  v5 = [(NSNumber *)v4 unsignedIntValue];

  return a2 < v5;
}

int64_t sub_1000035A4(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a3;
  LODWORD(a2) = [(NSNumber *)a2 unsignedIntValue];
  v5 = [(NSNumber *)v4 unsignedIntValue];

  return a2 < v5;
}

void sub_100003810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003828(uint64_t a1)
{
  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100014EF0(a1);
  }

  if ([*(a1 + 32) cardPresent])
  {
    v3 = *(a1 + 32);
    v4 = [CCIDMessageView create:99];
    v5 = [v3 transmitAndReceive:v4 maxPayload:10 transmitted:0];

    [NSThread sleepForTimeInterval:0.01];
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;

    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) physicalCardNotify:0];
    }

    if (-[NSObject messageType](v5, "messageType") == 129 || (-[NSObject status](v5, "status"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 bmCommandStatus], v8, !v9))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    v5 = sub_100002620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100014C5C();
    }
  }
}

void sub_100005E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005E74(uint64_t a1)
{
  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000158E8(a1);
  }

  v3 = (a1 + 32);
  if ([*(a1 + 32) cardPresent])
  {
    v4 = *(a1 + 48);
    if ((v4 & 2) != 0)
    {
      v5 = [*v3 device];
      v6 = [v5 CCIDDescriptor];
      v7 = 2;
      v8 = [v6 isSupported:2];

      if (v8)
      {
LABEL_9:
        *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) setProtocol:v7];
        return;
      }

      v4 = *(a1 + 48);
    }

    if (v4)
    {
      v9 = [*v3 device];
      v10 = [v9 CCIDDescriptor];
      v7 = 1;
      v11 = [v10 isSupported:1];

      if (v11)
      {
        goto LABEL_9;
      }
    }

    v12 = sub_100002620();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015960(v3, v12);
    }
  }

  else
  {
    v12 = sub_100002620();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100014C5C();
    }
  }
}

void sub_100006114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000612C(uint64_t a1)
{
  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100015A50();
  }

  if ([*(a1 + 32) cardPresent])
  {
    v3 = [*(*(a1 + 32) + 88) transmit:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v5 = sub_100002620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100014C5C();
    }
  }
}

void sub_10000631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006334(uint64_t a1)
{
  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100015A8C();
  }

  v3 = [*(a1 + 32) escapeCommand:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_100006424(uint64_t a1)
{
  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100015AC8();
  }

  return [*(a1 + 32) physicalCardNotify:0];
}

void sub_100006500(uint64_t a1)
{
  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100015B04();
  }

  v3 = *(a1 + 32);
  v4 = [CCIDMessageView create:101];
  v5 = [v3 transmitAndReceive:v4 maxPayload:10 transmitted:0];

  if ([v5 messageType] == 129)
  {
    v6 = [v5 status];
    if ([v6 bmCommandStatus])
    {
      v7 = [v5 bError];

      if (v7 != -2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = *(a1 + 32);
    v9 = [v5 status];
    [v8 physicalCardNotify:{objc_msgSend(v9, "bmICCStatus") != 2}];
  }

LABEL_9:
}

void sub_100006750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006768(uint64_t a1)
{
  v2 = sub_100002620();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100015B40();
  }

  if ([*(a1 + 32) cardPresent])
  {
    v3 = (a1 + 40);
    v4 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [*(a1 + 32) verifyPINSecure:*(a1 + 40) error:*(a1 + 56)];
LABEL_10:
      v8 = *(*(a1 + 48) + 8);
      v6 = *(v8 + 40);
      *(v8 + 40) = v5;
      goto LABEL_15;
    }

    v7 = *v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [*(a1 + 32) changePINSecure:*(a1 + 40) error:*(a1 + 56)];
      goto LABEL_10;
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = [NSError errorWithDomain:TKErrorDomain code:-1 userInfo:0];
    }

    v6 = sub_100002620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100015B7C(v3);
    }
  }

  else
  {
    v6 = sub_100002620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100014C5C();
    }
  }

LABEL_15:
}

void sub_100006A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 72));
  _Unwind_Resume(a1);
}

void sub_100006AB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[106] == 1 && [WeakRetained cardPresent])
  {
    v4 = sub_100002620();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100015C10();
    }

    [v3 cardNotify:0];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

void sub_100006B58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 106) == 1)
  {
    v3 = sub_100002620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100015C4C();
    }

    [v2 cardNotify:1];
  }
}

int64_t sub_1000073CC(id a1, CCIDFiAndDi *a2, CCIDFiAndDi *a3)
{
  v4 = a3;
  LODWORD(a2) = [(CCIDFiAndDi *)a2 bpsMax];
  v5 = [(CCIDFiAndDi *)v4 bpsMax];

  return a2 < v5;
}

int64_t sub_1000078C8(id a1, CCIDFiAndDi *a2, CCIDFiAndDi *a3)
{
  v4 = a3;
  LODWORD(a2) = [(CCIDFiAndDi *)a2 bpsMax];
  v5 = [(CCIDFiAndDi *)v4 bpsMax];

  return a2 < v5;
}

id sub_100007EE4(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = sub_100002620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001613C();
    }
  }

  else
  {
    v4 = [*(a1 + 32) device];
    v5 = [v4 CCIDDescriptor];
    v2 = [v5 dwMaxCCIDMessageLength];

    v3 = sub_100002620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000161AC();
    }
  }

  [*(a1 + 40) setBSlot:{objc_msgSend(*(a1 + 32), "slotNumber")}];
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [v6 unsignedCharValue];
    [*(a1 + 40) setBSeq:v7];
  }

  else
  {
    v8 = [*(a1 + 32) device];
    v7 = [v8 messageSequenceNumber];
    [*(a1 + 40) setBSeq:v7];
  }

  v9 = sub_100002620();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001621C((a1 + 40));
  }

  v10 = *(*(a1 + 32) + 64);
  v11 = [*(a1 + 40) buffer];
  v12 = [v10 send:v11 timeout:*(a1 + 56)];

  v13 = [*(a1 + 40) buffer];
  v14 = [v13 length];

  if (v12 == v14)
  {
    v15 = *(a1 + 72);
    if (v15)
    {
      (*(v15 + 16))();
    }

    v16 = [*(a1 + 32) receiveMessageWitMaxPayload:v2 sequenceNumber:v7 duplicateMessage:0 timeout:*(a1 + 64)];
    v17 = sub_100002620();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000162D0();
    }
  }

  else
  {
    v18 = sub_100002620();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100016294();
    }

    [*(a1 + 32) sendAnalyticsFailure:2];
    v16 = 0;
  }

  return v16;
}

void sub_10000849C(id a1)
{
  qword_10002BFC8 = os_log_create("com.apple.CryptoTokenKit", "ccid");

  _objc_release_x1();
}

void sub_100008538(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

id sub_100008B80()
{
  if (qword_10002BFD0 != -1)
  {
    sub_100016430();
  }

  v1 = qword_10002BFD8;

  return v1;
}

id sub_10000AECC(uint64_t a1)
{
  [*(a1 + 32) setLength:0];
  [*(a1 + 40) dequeueAllBlocks];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = v2[25];

  return [v2 fillQueue:v3 request:v4 ifs:v5];
}

id sub_10000AF24(uint64_t a1)
{
  *(*(a1 + 32) + 23) = 0;
  *(*(a1 + 32) + 21) = 0;
  result = [*(a1 + 40) resetSequence];
  *(*(a1 + 32) + 20) = result;
  return result;
}

uint64_t sub_10000AF7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) uint8Value];

    return [v4 waitingTime:v5];
  }

  return result;
}

void sub_10000B334(id a1)
{
  qword_10002BFD8 = os_log_create("com.apple.CryptoTokenKit", "ccid");

  _objc_release_x1();
}

void sub_10000B378(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

_BYTE *sub_10000B394(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10000B3A4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void sub_10000B3C0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_10000B4A0(id a1)
{
  qword_10002BFE8 = dispatch_queue_create("", 0);

  _objc_release_x1();
}

id sub_10000BF14()
{
  if (qword_10002BFF0 != -1)
  {
    sub_100016AF8();
  }

  v1 = qword_10002BFF8;

  return v1;
}

void sub_10000D158(id a1)
{
  qword_10002BFF8 = os_log_create("com.apple.CryptoTokenKit", "ccid");

  _objc_release_x1();
}

id sub_10000D560()
{
  if (qword_10002C020 != -1)
  {
    sub_100016FEC();
  }

  v1 = qword_10002C028;

  return v1;
}

void sub_10000D698(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(a1 + 32) + 24))
  {
    v2 = sub_10000D560();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100017000(v1);
    }

    [*(*v1 + 24) terminate];
    v3 = *(*v1 + 24);
    *(*v1 + 24) = 0;
  }
}

void sub_10000D9D4(id a1)
{
  qword_10002C000 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000DA54(id a1)
{
  qword_10002C010 = [[Synchronize alloc] initWithQueueName:@"com.apple.ctk.ccid.device"];

  _objc_release_x1();
}

void sub_10000DD7C(uint64_t a1)
{
  if (a1 > -536870353)
  {
    if (a1 > -536870257)
    {
      if (a1 <= -536870113)
      {
        switch(a1)
        {
          case 0xE0000290:
            v1 = @"kIOMessageSystemWillNotSleep";
            goto LABEL_69;
          case 0xE0000300:
            v1 = @"kIOMessageSystemHasPoweredOn";
            goto LABEL_69;
          case 0xE0000310:
            v1 = @"kIOMessageSystemWillRestart";
            goto LABEL_69;
        }
      }

      else if (a1 > -536870081)
      {
        if (a1 == -536870080)
        {
          v1 = @"kIOMessageSystemCapabilityChange";
          goto LABEL_69;
        }

        if (a1 == -536870064)
        {
          v1 = @"kIOMessageDeviceSignaledWakeup";
          goto LABEL_69;
        }
      }

      else
      {
        if (a1 == -536870112)
        {
          v1 = @"kIOMessageSystemWillPowerOn";
          goto LABEL_69;
        }

        if (a1 == -536870096)
        {
          v1 = @"kIOMessageCopyClientID";
          goto LABEL_69;
        }
      }
    }

    else if (a1 <= -536870316)
    {
      switch(a1)
      {
        case 0xE0000230:
          v1 = @"kIOMessageDeviceHasPoweredOn";
          goto LABEL_69;
        case 0xE0000240:
          v1 = @"kIOMessageCanSystemPowerOff";
          goto LABEL_69;
        case 0xE0000250:
          v1 = @"kIOMessageSystemWillPowerOff";
          goto LABEL_69;
      }
    }

    else if (a1 > -536870289)
    {
      if (a1 == -536870288)
      {
        v1 = @"kIOMessageCanSystemSleep";
        goto LABEL_69;
      }

      if (a1 == -536870272)
      {
        v1 = @"kIOMessageSystemWillSleep";
        goto LABEL_69;
      }
    }

    else
    {
      if (a1 == -536870315)
      {
        v1 = @"kIOMessageSystemPagingOff";
        goto LABEL_69;
      }

      if (a1 == -536870304)
      {
        v1 = @"kIOMessageSystemWillNotPowerOff";
        goto LABEL_69;
      }
    }
  }

  else if (a1 > -536870617)
  {
    if (a1 <= -536870385)
    {
      switch(a1)
      {
        case 0xE0000128:
          v1 = @"kIOMessageConsoleSecurityChange";
          goto LABEL_69;
        case 0xE0000130:
          v1 = @"kIOMessageServicePropertyChange";
          goto LABEL_69;
        case 0xE0000200:
          v1 = @"kIOMessageCanDevicePowerOff";
          goto LABEL_69;
      }
    }

    else if (a1 > -536870369)
    {
      if (a1 == -536870368)
      {
        v1 = @"kIOMessageDeviceWillNotPowerOff";
        goto LABEL_69;
      }

      if (a1 == -536870363)
      {
        v1 = @"kIOMessageDeviceHasPoweredOff";
        goto LABEL_69;
      }
    }

    else
    {
      if (a1 == -536870384)
      {
        v1 = @"kIOMessageDeviceWillPowerOff";
        goto LABEL_69;
      }

      if (a1 == -536870379)
      {
        v1 = @"kIOMessageDeviceWillPowerOn";
        goto LABEL_69;
      }
    }
  }

  else if (a1 <= -536870657)
  {
    switch(a1)
    {
      case 0xE0000010:
        v1 = @"kIOMessageServiceIsTerminated";
        goto LABEL_69;
      case 0xE0000020:
        v1 = @"kIOMessageServiceIsSuspended";
        goto LABEL_69;
      case 0xE0000030:
        v1 = @"kIOMessageServiceIsResumed";
        goto LABEL_69;
    }
  }

  else if (a1 > -536870641)
  {
    if (a1 == -536870640)
    {
      v1 = @"kIOMessageServiceWasClosed";
      goto LABEL_69;
    }

    if (a1 == -536870624)
    {
      v1 = @"kIOMessageServiceBusyStateChange";
      goto LABEL_69;
    }
  }

  else
  {
    if (a1 == -536870656)
    {
      v1 = @"kIOMessageServiceIsRequestingClose";
      goto LABEL_69;
    }

    if (a1 == -536870655)
    {
      v1 = @"kIOMessageServiceIsAttemptingOpen";
      goto LABEL_69;
    }
  }

  v1 = [NSString stringWithFormat:@"unknown message: %x", a1];
LABEL_69:
  v2 = sub_10000D560();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001719C(v1, v2);
  }
}

void sub_10000E75C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_10000E780(uint64_t a1)
{
  state64 = 0;
  if (notify_get_state(*(*(a1 + 32) + 48), &state64))
  {
    v1 = sub_10000D560();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100017334();
    }
  }

  if (!state64)
  {
    return 0;
  }

  v2 = sub_10000D560();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100017368();
  }

  return state64;
}

void sub_10000E820(uint64_t a1)
{
  v2 = sub_10000D560();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received kACCEASessionStatusChangedNotification", v4, 2u);
  }

  if ((*(*(a1 + 32) + 16))())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained terminate];
  }
}

void sub_10000F328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F39C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10000DD7C(a3);
  if (a3 == -536870640)
  {
    v6 = +[Device synchronize];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000F484;
    v7[3] = &unk_1000246D8;
    objc_copyWeak(&v8, (a1 + 32));
    [v6 sync:v7];

    objc_destroyWeak(&v8);
  }
}

void sub_10000F484(uint64_t a1)
{
  v2 = sub_10000D560();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000176A0();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained terminate];
}

void sub_10000F5E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained CCIDDescriptor];
  v4 = [v3 bMaxSlotIndex] >> 2;

  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  v6 = [*(a1 + 32) receive:(v5 + 1) timeout:&off_100027340];
  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 48));
    [v7 watchInterruptPipe:*(a1 + 32)];

    if ([v6 length] >= 2 && *objc_msgSend(v6, "bytes") == 80 && objc_msgSend(*(*(a1 + 40) + 24), "count"))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (v9 >> 2) + 1;
        if (v10 >= [v6 length])
        {
          break;
        }

        v11 = (*([v6 bytes] + v10) >> (v8 & 6)) & 3;
        if (v11 >= 2)
        {
          v12 = [*(*(a1 + 40) + 24) objectAtIndexedSubscript:v9];
          v13 = [v12 synchronize];
          v14 = [v13 queue];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10000F7E0;
          v16[3] = &unk_100024A20;
          v17 = v12;
          v18 = v11;
          v15 = v12;
          dispatch_async(v14, v16);
        }

        ++v9;
        v8 += 2;
      }

      while (v9 < [*(*(a1 + 40) + 24) count]);
    }
  }
}

void sub_10000F8A0(uint64_t a1)
{
  v1 = [[Device alloc] initWithService:*(a1 + 32)];
  if (v1)
  {
    v2 = +[Device devices];
    v3 = [NSNumber numberWithUnsignedLongLong:[(Device *)v1 entryID]];
    [v2 setObject:v1 forKeyedSubscript:v3];
  }

  else
  {
    v2 = sub_10000D560();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1000176DC();
    }
  }
}

void sub_10000FA84(id a1)
{
  qword_10002C028 = os_log_create("com.apple.CryptoTokenKit", "ccid");

  _objc_release_x1();
}

void sub_10000FAC8(id a1)
{
  v1 = CFPreferencesCopyValue(@"SlotNameWithUSBLocation", @"com.apple.security.smartcard", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      byte_10002C030 = [v1 BOOLValue];
    }
  }
}

void sub_10000FB58(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_10000FB74(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000124F8(id a1)
{
  v3[0] = &off_100026F88;
  v3[1] = &off_100026FD0;
  v4[0] = &off_100027458;
  v4[1] = &off_100027470;
  v3[2] = &off_100027000;
  v3[3] = &off_100027048;
  v4[2] = &off_100027488;
  v4[3] = &off_1000274A0;
  v3[4] = &off_100027090;
  v3[5] = &off_1000270D8;
  v4[4] = &off_1000274B8;
  v4[5] = &off_1000274D0;
  v3[6] = &off_100027120;
  v3[7] = &off_100027168;
  v4[6] = &off_1000274E8;
  v4[7] = &off_100027500;
  v3[8] = &off_100027198;
  v3[9] = &off_1000271E0;
  v4[8] = &off_100027518;
  v4[9] = &off_100027530;
  v3[10] = &off_100027228;
  v3[11] = &off_100027270;
  v4[10] = &off_100027548;
  v4[11] = &off_100027560;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
  v2 = qword_10002C040;
  qword_10002C040 = v1;
}

void sub_1000126A0(id a1)
{
  v3[0] = &off_100026FD0;
  v3[1] = &off_100027000;
  v4[0] = &off_100026FD0;
  v4[1] = &off_100027000;
  v3[2] = &off_100027048;
  v3[3] = &off_100027090;
  v4[2] = &off_100027090;
  v4[3] = &off_1000272A0;
  v3[4] = &off_1000270D8;
  v3[5] = &off_100027120;
  v4[4] = &off_1000272B8;
  v4[5] = &off_1000272D0;
  v3[6] = &off_1000272E8;
  v3[7] = &off_1000272A0;
  v4[6] = &off_100027300;
  v4[7] = &off_100027228;
  v3[8] = &off_100027168;
  v4[8] = &off_100027318;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:9];
  v2 = qword_10002C050;
  qword_10002C050 = v1;
}

id sub_100012974()
{
  if (qword_10002C060 != -1)
  {
    sub_1000177A0();
  }

  v1 = qword_10002C068;

  return v1;
}

void sub_100014180(id a1)
{
  qword_10002C068 = os_log_create("com.apple.CryptoTokenKit", "ccid");

  _objc_release_x1();
}

void sub_1000141D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_100014208()
{
  sub_100001DA0();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10001428C(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification failed with: %d %{public}@", v3, 0x12u);
}

void sub_100014314()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014350()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001438C()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000143FC()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001446C()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000144DC()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014518()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100014588()
{
  sub_100001DA0();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000145F8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IOKit matching EntryId: %llx", &v2, 0xCu);
}

void sub_100014670(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Matching: %@", &v2, 0xCu);
}

void sub_1000146FC()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014738()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014774(id *a1)
{
  v1 = [*a1 bytes];
  v2 = [v1 hexString];
  sub_100001D88();
  sub_1000084E0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100014830()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001486C(void *a1)
{
  v1 = [a1 aPayload];
  v2 = [v1 hexString];
  sub_100001D88();
  sub_1000084E0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100014910()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001494C()
{
  sub_100001DA0();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000149BC()
{
  sub_100001DA0();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100014AA4()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014AE0(uint64_t a1, uint64_t a2)
{
  v5 = [sub_100008518(a1 a2)];
  *v4 = 67109120;
  *v3 = v5;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to select voltage: %d", v4, 8u);
}

void sub_100014B40(void *a1)
{
  v1 = [a1 bytes];
  v2 = [v1 hexString];
  sub_100001D88();
  sub_1000084E0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100014BE4()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014C20()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014C5C()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014C98(void *a1)
{
  v1 = [a1 device];
  v2 = [v1 CCIDDescriptor];
  [v2 bNumDataRatesSupported];
  sub_100001DA0();
  sub_1000084E0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_100014D40()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100014DB0(void *a1)
{
  v1 = [a1 device];
  v2 = [v1 CCIDDescriptor];
  [v2 bNumClockSupported];
  sub_100001DA0();
  sub_1000084E0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_100014E58(uint64_t a1, void *a2)
{
  [a2 slotNumber];
  sub_1000084E0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100014EF0(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_1000084F0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100014F68(void *a1)
{
  v1 = [a1 slotName];
  sub_100001D88();
  sub_1000084E0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100014FF4()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015064(void *a1)
{
  v1 = [a1 buffer];
  v7 = [v1 hexString];
  sub_1000084E0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001511C()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015158()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015194()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015204()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015240()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001527C()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000152EC()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001535C()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015398()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015408()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015444()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000154B4(void *a1)
{
  [a1 fIndexDIndex];
  sub_100001DA0();
  sub_1000084FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100015534()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000155A4()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015614()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015684()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000156F4()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015730()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001576C(unsigned int a1)
{
  sub_10000852C(a1, __stack_chk_guard);
  sub_10000850C();
  sub_1000084F0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000157E8(unsigned int a1)
{
  sub_10000852C(a1, __stack_chk_guard);
  sub_10000850C();
  sub_1000084F0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100015864()
{
  sub_100001D88();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to set frequency and data rate: %{public}@(%{public}@)", v2, 0x16u);
}

void sub_1000158E8(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_1000084F0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100015960(id *a1, NSObject *a2)
{
  v4 = [*a1 device];
  v5 = [v4 vendorName];
  v6 = [*a1 device];
  v7 = [v6 productName];
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "The reader %{public}@ %{public}@ dose not support suggested protocol", &v8, 0x16u);
}

void sub_100015A50()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015A8C()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015AC8()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015B04()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015B40()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015B7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_100001D88();
  sub_1000084FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100015C10()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015C4C()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015C88()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015CC4()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015D00()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015D3C()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015D78()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015DE8(unsigned int a1)
{
  sub_10000852C(a1, __stack_chk_guard);
  sub_10000850C();
  sub_100008538(&_mh_execute_header, v1, v2, "reader fMax %.1f MHz bpsMax %d bits/s", v3, v4);
}

void sub_100015E68()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015ED8(uint64_t a1, uint64_t a2)
{
  v5 = [sub_100008518(a1 a2)];
  *v4 = 134217984;
  *v3 = v5;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Maximum responde length exceeded (%lu)!", v4, 0xCu);
}

void sub_100015F38()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015FA8()
{
  sub_100001D88();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100016018(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Time extension received", buf, 2u);
}

void sub_100016058(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:a1];
  sub_10000850C();
  sub_1000084FC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100016100()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001613C()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000161AC()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001621C(uint64_t *a1)
{
  v6 = *a1;
  sub_1000084F0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100016294()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000162D0()
{
  sub_100001D88();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100016340(uint64_t *a1)
{
  v6 = *a1;
  sub_100001D7C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000163B8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "APDU %{public}@", &v2, 0xCu);
}

void sub_100016444()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100016584()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100016968()
{
  sub_100001D94();
  sub_100001D7C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100016B0C(void *a1)
{
  v2 = [a1 data];
  [v2 length];
  [a1 lengthByte];
  sub_1000084FC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100016BC4(void *a1)
{
  [a1 lengthByte];
  sub_100001DA0();
  sub_1000084FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100016C44(void *a1)
{
  [a1 status];
  sub_100001DA0();
  sub_1000084FC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100016CC4(void *a1)
{
  [a1 lengthByte];
  sub_100001DA0();
  sub_10000B3C0(&_mh_execute_header, v1, v2, "Invalid S-Block, inf field shall be present with a single byte for adjusting IFS and WTX (%d)", v3, v4, v5, v6, v7);
}

void sub_100016D3C(void *a1)
{
  [a1 lengthByte];
  sub_100001DA0();
  sub_10000B3C0(&_mh_execute_header, v1, v2, "Invalid S-Block, inf field shall be absent in an S-Block managing chain abortion or resynchronization (%d)", v3, v4, v5, v6, v7);
}

void sub_100016DB4(void *a1)
{
  [a1 operation];
  sub_100001DA0();
  sub_10000B3C0(&_mh_execute_header, v1, v2, "Invalid S-Block operation %d", v3, v4, v5, v6, v7);
}

void sub_100016E2C(id *a1)
{
  v2 = [*a1 slotParameters];
  [v2 maxOutputLength];
  v3 = [*a1 slotParameters];
  [v3 maxInputLength];
  sub_1000084E0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100016EF8(unsigned __int8 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to register slot : %d", v2, 8u);
}

void sub_100017000(uint64_t a1)
{
  v6 = *(*a1 + 48);
  sub_1000084F0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10001707C(uint64_t a1, unsigned __int8 *a2, os_log_t log)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "slot %d: card status changed: present=%d", v5, 0xEu);
}

void sub_10001719C(uint64_t a1, NSObject *a2)
{
  v3 = [NSString stringWithFormat:@"IOService interest message: %@", a1];
  *buf = 138543362;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
}

void sub_10001724C()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100017288()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000172C4()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100017368()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000173A4(void *a1, void *a2)
{
  [a1 unsignedIntValue];
  [a2 unsignedIntValue];
  sub_1000084E0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_100017484(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Unsupported pipe type.", buf, 2u);
}

void sub_100017520(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to initialize IOUSBHostInterface: %{public}@", &v2, 0xCu);
}

void sub_10001760C(void *a1)
{
  v6 = [a1 CCIDDescriptor];
  sub_1000084E0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000176A0()
{
  sub_100001D94();
  sub_1000084F0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100017934()
{
  sub_1000141F0();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000141FC();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000179A0()
{
  sub_1000141F0();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000141FC();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100017A0C()
{
  sub_1000141F0();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000141FC();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100017A78()
{
  sub_1000141F0();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000141FC();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}