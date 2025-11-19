uint64_t PSVR2Factory(uint64_t a1, const __CFUUID *a2)
{
  v3 = sub_F0C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v14 = CFUUIDGetUUIDBytes(a2);
    v5 = sub_F0C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_73B0(&v14, v5);
    }
  }

  *&v14.byte0 = 0;
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x21u, 0x7Du, 0x5Bu, 0xADu, 0xABu, 0x5Eu, 0x43u, 0x23u, 0x9Cu, 0, 0x2Au, 0xE4u, 0x88u, 0xD5u, 0xDAu, 0x87u);
  if (CFEqual(a2, v6))
  {
    v7 = off_10288;
LABEL_9:
    v9 = *v7;
    v10 = objc_opt_new();
    v11 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v12 = CFUUIDGetUUIDBytes(v11);
    [v10 queryInterface:*&v12.byte0 outInterface:{*&v12.byte8, &v14}];

    return *&v14.byte0;
  }

  v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xF2u, 0x5Fu, 0xF3u, 0xC2u, 0x33u, 0xFu, 0x4Bu, 0x52u, 0x82u, 7u, 0xA0u, 0xD6u, 0xF2u, 0x3Du, 0xF0u, 0xCDu);
  if (CFEqual(a2, v8))
  {
    v7 = off_10290;
    goto LABEL_9;
  }

  return *&v14.byte0;
}

os_log_t sub_F0C()
{
  result = qword_165D8;
  if (!qword_165D8)
  {
    result = os_log_create("com.apple.gamecontroller.driver", "PSVR2");
    qword_165D8 = result;
  }

  return result;
}

uint64_t sub_12AC(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    result = IOObjectRelease(result);
    *(*(a1 + 32) + 32) = 0;
  }

  return result;
}

uint64_t sub_1404(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    IOServiceClose(v3);
    *(*(a1 + 32) + 48) = 0;
  }

  else
  {
    v4 = *(v2 + 56);
    if (v4)
    {
      [v4 invalidate];
      *(*(a1 + 32) + 56) = 0;
    }
  }

  result = *(*(a1 + 32) + 32);
  if (result)
  {
    result = IOObjectRelease(result);
    *(*(a1 + 32) + 32) = 0;
  }

  return result;
}

void sub_1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A48(uint64_t a1)
{
  connect = 0;
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(v2 + 32);
  if (v4)
  {
    if (!*(v2 + 48) && !*(v2 + 56))
    {
      v5 = IOServiceOpen(v4, mach_task_self_, 1u, &connect);
      v7 = *(a1 + 40);
      v6 = a1 + 40;
      *(*(v7 + 8) + 24) = v5;
      v8 = *(*v6 + 8);
      LODWORD(v7) = *(v8 + 24);
      v9 = v8 + 24;
      v10 = v7;
      if (v7 != -536870174 && v10 != 0)
      {
        v15 = sub_F0C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_810C(v3, v6);
        }

        v17 = 0;
        goto LABEL_23;
      }

      if (v10 == -536870174)
      {
        v12 = [IOGCFastPathProxyConnection connectTo:*(*v3 + 32) withProxyService:@"com.apple.GameController.gamecontrollerd" error:v9];
        if (v12)
        {
          v13 = v12;
          *(*(*v6 + 8) + 24) = [v12 mapSharedMemoryAt:*v3 + 72 ofSize:*v3 + 80 options:1];
          if (!*(*(*v6 + 8) + 24))
          {
            *(*v3 + 56) = v13;
            *(*v3 + 64) = [*(*v3 + 56) clientID];
            goto LABEL_15;
          }

          sub_7DE8();
        }

        else
        {
          sub_806C();
        }
      }

      else
      {
        *(*(*v6 + 8) + 24) = IOConnectMapMemory64(connect, 0, mach_task_self_, (*v3 + 72), (*v3 + 80), 1u);
        if (!*(*(*v6 + 8) + 24))
        {
          *(*v3 + 48) = connect;
          IORegistryEntryGetRegistryEntryID(*(*v3 + 48), (*v3 + 64));
          v13 = 0;
LABEL_15:
          *(*v3 + 88) = *(*v3 + 72);
          v14 = sub_F0C();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_7E90(v3, v14);
          }

          if (v10 == -536870174)
          {
            *(*(*v6 + 8) + 24) = [v13 open];
            if (!*(*(*v6 + 8) + 24))
            {
              return;
            }

            sub_7FC4();
          }

          else
          {
            *(*(*v6 + 8) + 24) = sub_75C0(*v3, 0);
            if (!*(*(*v6 + 8) + 24))
            {
              return;
            }

            sub_7F24();
          }

          goto LABEL_42;
        }

        sub_7D48();
      }

LABEL_42:
      v17 = v21;
      goto LABEL_23;
    }

    v17 = 0;
    v18 = *(*(a1 + 40) + 8);
    v19 = -536870187;
  }

  else
  {
    v17 = 0;
    v18 = *(*(a1 + 40) + 8);
    v19 = -536870184;
  }

  *(v18 + 24) = v19;
LABEL_23:
  if (*(*v3 + 72))
  {
    *(*v3 + 88) = 0;
    if (v17)
    {
      [v17 unmapSharedMemoryAt:*(*v3 + 72)];
    }

    else
    {
      IOConnectUnmapMemory64(connect, 0, mach_task_self_, *(*v3 + 72));
    }

    *(*v3 + 72) = 0;
    *(*v3 + 80) = 0;
  }

  if (v17)
  {
    [v17 invalidate];

    *(*v3 + 56) = 0;
  }

  else if (connect)
  {
    IOServiceClose(connect);
    *(*v3 + 48) = 0;
  }

  *(*v3 + 64) = 0;
}

void sub_1E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1EA8(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    if ([*(v2 + 56) close])
    {
      sub_8200();
    }
  }

  else if (sub_75F0(v2, 0))
  {
    sub_8298();
  }

  v4 = *v3;
  if (*(*v3 + 72))
  {
    *(v4 + 88) = 0;
    v5 = *v3;
    v6 = *(*v3 + 56);
    if (v6)
    {
      if ([v6 unmapSharedMemoryAt:*(v5 + 72)])
      {
        sub_8330();
      }
    }

    else if (IOConnectUnmapMemory64(*(v5 + 48), 0, mach_task_self_, *(v5 + 72)))
    {
      sub_83C4();
    }

    *(*v3 + 72) = 0;
    *(*v3 + 80) = 0;
    v4 = *v3;
  }

  v7 = *(v4 + 56);
  if (v7)
  {
    [v7 invalidate];

    *(*v3 + 56) = 0;
  }

  else
  {
    v8 = *(v4 + 48);
    if (v8)
    {
      v9 = IOServiceClose(v8);
      *(*v3 + 48) = 0;
      if (v9)
      {
        sub_8458();
      }
    }
  }

  *(*(a1 + 32) + 64) = 0;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_21CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = -536870184;
    goto LABEL_15;
  }

  if (!*(v2 + 48))
  {
    v5 = *(v2 + 56);
    v6 = *(*(a1 + 56) + 8);
    if (!v5)
    {
      v7 = -536870185;
LABEL_15:
      *(v6 + 24) = v7;
      return;
    }

LABEL_14:
    v7 = -536870201;
    goto LABEL_15;
  }

  v3 = [*(a1 + 40) unsignedIntValue];
  if (v3 != 4)
  {
    if (v3 == 5)
    {
      v4 = off_102A0;
      goto LABEL_9;
    }

    v6 = *(*(a1 + 56) + 8);
    goto LABEL_14;
  }

  v4 = &off_102B0;
LABEL_9:
  v8 = [objc_alloc(*v4) initWithClient:*(a1 + 32) options:*(a1 + 48)];
  if (!v8)
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = -536870199;
    goto LABEL_15;
  }

  v11 = v8;
  v9 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  v10 = CFUUIDGetUUIDBytes(v9);
  *(*(*(a1 + 56) + 8) + 24) = [v11 queryInterface:*&v10.byte0 outInterface:{*&v10.byte8, *(a1 + 64)}];
}

void sub_266C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2684(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = -536870184;
    goto LABEL_13;
  }

  if (!*(v2 + 48) && !*(v2 + 56))
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = -536870185;
    goto LABEL_13;
  }

  v3 = [*(a1 + 40) unsignedIntValue];
  if (v3)
  {
    if (v3 == 255)
    {
      v4 = off_10298;
      goto LABEL_8;
    }

    v8 = *(*(a1 + 56) + 8);
    v9 = -536870201;
LABEL_13:
    *(v8 + 24) = v9;
    return;
  }

  v4 = off_102A8;
LABEL_8:
  v5 = [objc_alloc(*v4) initWithClient:*(a1 + 32) options:*(a1 + 48)];
  if (!v5)
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = -536870199;
    goto LABEL_13;
  }

  v10 = v5;
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  v7 = CFUUIDGetUUIDBytes(v6);
  *(*(*(a1 + 56) + 8) + 24) = [v10 queryInterface:*&v7.byte0 outInterface:{*&v7.byte8, *(a1 + 64)}];
}

uint64_t sub_2DFC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = IOGCCircularControlQueueEntryModify();
  _Block_object_dispose(v6, 8);
  return v4;
}

void sub_2EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2ECC(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_3134(uint64_t a1, uint64_t a2)
{
  result = 3758097126;
  if (*(a1 + 56) != 35)
  {
    return 3758097136;
  }

  if (*(a1 + 60) == 1 && !*(a1 + 64))
  {
    v4 = *(a1 + 40);
    **(a1 + 32) = *(a2 + 8);
    if (v4)
    {
      *v4 = *(a2 + 16);
    }

    v5 = *(a1 + 48);
    result = 0;
    if (v5)
    {
      *v5 = *(a2 + 4);
    }
  }

  return result;
}

uint64_t sub_3220(uint64_t a1, uint64_t a2)
{
  result = 3758097126;
  if (*(a1 + 48) != 35)
  {
    return 3758097136;
  }

  if (*(a1 + 52) == 1)
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      result = 0;
      *(a2 + 4) = v4 & 0xF00;
      *(a2 + 8) = *(a1 + 32);
      *(a2 + 16) = *(a1 + 40);
    }
  }

  return result;
}

uint64_t sub_32F0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 3758097126;
  v3 = *(a1 + 40);
  switch(v3)
  {
    case '\'':
      if (*(a1 + 44))
      {
        v4 = *a2;
        goto LABEL_10;
      }

      break;
    case '&':
      if (*(a1 + 44))
      {
        v4 = *(a2 + 4);
        goto LABEL_10;
      }

      break;
    case '%':
      if (*(a1 + 44))
      {
        v4 = *(a2 + 3);
LABEL_10:
        v2 = 0;
        **(a1 + 32) = v4;
      }

      break;
    default:
      return 3758097136;
  }

  return v2;
}

uint64_t sub_33D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == 37)
  {
    v3 = 50000000;
    v4 = 24;
  }

  else
  {
    if (v2 != 38)
    {
      return 3758097136;
    }

    v3 = 3000000000;
    v4 = 32;
  }

  v5 = 0;
  **(a1 + 32) = (*(a2 + v4) * v3);
  return v5;
}

uint64_t sub_34A0(uint64_t a1, uint64_t a2)
{
  result = 3758097126;
  v4 = *(a1 + 40);
  switch(v4)
  {
    case '\'':
      if (*(a1 + 44))
      {
        result = 0;
        *a2 = *(a1 + 32);
      }

      break;
    case '&':
      if (*(a1 + 44))
      {
        result = 0;
        *(a2 + 32) = *(a1 + 32);
      }

      break;
    case '%':
      if (*(a1 + 44))
      {
        result = 0;
        *(a2 + 24) = *(a1 + 32);
      }

      break;
    default:
      return 3758097136;
  }

  return result;
}

uint64_t sub_358C(uint64_t a1, uint64_t a2)
{
  result = 3758097090;
  if (*(a1 + 40))
  {
    return result;
  }

  v4 = *(a1 + 44);
  if (v4 == 38)
  {
    v5 = (*(a1 + 32) * 1000000000.0 * 3.0);
    if (HIDWORD(v5))
    {
      return result;
    }

    v6 = 32;
LABEL_9:
    result = 0;
    *(a2 + v6) = v5;
    return result;
  }

  if (v4 != 37)
  {
    return 3758097136;
  }

  v5 = (*(a1 + 32) * 1000000.0 / 50.0);
  if (v5 <= 0x34)
  {
    v6 = 24;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_3D40(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = IOGCCircularControlQueueEntryModify();
  _Block_object_dispose(v6, 8);
  return v4;
}

void sub_3DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3E10(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_4078(uint64_t a1, void *a2)
{
  result = 3758097126;
  if (*(a1 + 56) != 40)
  {
    return 3758097136;
  }

  if (*(a1 + 60) == 1 && !*(a1 + 64))
  {
    v4 = *(a1 + 40);
    **(a1 + 32) = *a2;
    if (v4)
    {
      *v4 = 0;
    }

    v5 = *(a1 + 48);
    result = 0;
    if (v5)
    {
      *v5 = 0;
    }
  }

  return result;
}

uint64_t sub_4158(uint64_t a1, void *a2)
{
  result = 3758097126;
  if (*(a1 + 40) != 40)
  {
    return 3758097136;
  }

  if (*(a1 + 44) == 1 && !*(a1 + 48))
  {
    result = 0;
    *a2 = *(a1 + 32);
  }

  return result;
}

uint64_t sub_4214(uint64_t a1, uint64_t a2)
{
  v2 = 3758097126;
  v3 = *(a1 + 40);
  switch(v3)
  {
    case ',':
      if (*(a1 + 44))
      {
        v4 = 11;
        goto LABEL_10;
      }

      break;
    case '+':
      if (*(a1 + 44))
      {
        v4 = 10;
        goto LABEL_10;
      }

      break;
    case '*':
      if (*(a1 + 44))
      {
        v4 = 9;
LABEL_10:
        v2 = 0;
        **(a1 + 32) = *(a2 + v4);
      }

      break;
    default:
      return 3758097136;
  }

  return v2;
}

uint64_t sub_42F8(uint64_t a1, uint64_t a2, double a3)
{
  result = 3758097126;
  if (*(a1 + 40) != 44)
  {
    return 3758097136;
  }

  if ((*(a1 + 44) & 1) == 0)
  {
    result = 0;
    LOBYTE(a3) = *(a2 + 11);
    **(a1 + 32) = *&a3 / 255.0;
  }

  return result;
}

uint64_t sub_43B8(uint64_t a1, _BYTE *a2)
{
  result = 3758097126;
  v4 = *(a1 + 40);
  switch(v4)
  {
    case ',':
      if (*(a1 + 44))
      {
        result = 0;
        a2[11] = *(a1 + 32);
      }

      break;
    case '+':
      if (*(a1 + 44))
      {
        result = 0;
        a2[10] = *(a1 + 32);
      }

      break;
    case '*':
      if (*(a1 + 44))
      {
        result = 0;
        a2[9] = *(a1 + 32);
      }

      break;
    default:
      return 3758097136;
  }

  return result;
}

uint64_t sub_44A4(uint64_t a1, uint64_t a2)
{
  result = 3758097126;
  if (*(a1 + 40) != 44)
  {
    return 3758097136;
  }

  if ((*(a1 + 44) & 1) == 0)
  {
    result = 0;
    *(a2 + 11) = (*(a1 + 32) * 255.0);
  }

  return result;
}

uint64_t sub_5098(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a2 != a1 + 16)
  {
    return 3758097090;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = *(*(a1 + 24) + 96);
  v3 = IOCircularDataQueueCursorAccess();
  if (!v3)
  {
    v3 = *(v6 + 6);
  }

  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_5178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5190(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_5248(uint64_t a1)
{
  **(a1 + 40) = *(*(a1 + 32) + 24);
  v1 = *(a1 + 48);
  if (v1)
  {
    *v1 = -1;
  }

  return 0;
}

uint64_t sub_5460(uint64_t a1, uint64_t a2)
{
  v2 = 3758097126;
  v3 = *(a1 + 64);
  if (v3 == 1)
  {
    v7 = *(a1 + 68);
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return v2;
      }

      v5 = *(a2 + 47);
      goto LABEL_15;
    }

    v9 = *(a2 + 47);
LABEL_21:
    v5 = *(*(*(*(a1 + 32) + 24) + 40) + 2448) + v9;
    v8 = *(a1 + 72);
    if (v8 == 2)
    {
      v5 /= 3uLL;
      goto LABEL_30;
    }

    if (v8 == 1)
    {
      v5 *= 333;
      goto LABEL_30;
    }

LABEL_23:
    if (v8)
    {
      return v2;
    }

    goto LABEL_30;
  }

  if (v3 == 20)
  {
    v6 = *(a1 + 68);
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return v2;
      }

      v5 = *(a2 + 27);
LABEL_15:
      v8 = *(a1 + 72);
      if (v8 == 2)
      {
        v5 = v5 / 3uLL;
        goto LABEL_30;
      }

      if (v8 == 1)
      {
        v5 = 333 * v5;
LABEL_30:
        v10 = *(a1 + 48);
        **(a1 + 40) = v5;
        if (v10)
        {
          *v10 = 0;
        }

        v11 = *(a1 + 56);
        v2 = 0;
        if (v11)
        {
          *v11 = 0;
        }

        return v2;
      }

      goto LABEL_23;
    }

    v9 = *(a2 + 27);
    goto LABEL_21;
  }

  if (v3 != 3)
  {
    return 3758097136;
  }

  if (*(a1 + 68) == 1)
  {
    v4 = *(a1 + 72);
    if (v4 == 2)
    {
      v5 = *(a2 + 64) * dword_165E0 / dword_165E4 / 0x3E8;
    }

    else if (v4 == 1)
    {
      v5 = *(a2 + 64) * dword_165E0 / dword_165E4;
    }

    else
    {
      if (*(a1 + 72))
      {
        return v2;
      }

      v5 = *(a2 + 64);
    }

    goto LABEL_30;
  }

  return v2;
}

uint64_t sub_567C(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 48);
  v4 = 3758097136;
  if (v3 > 10)
  {
    if (v3 > 13)
    {
      switch(v3)
      {
        case 14:
          v4 = 3758097126;
          if (*(a1 + 52))
          {
            v5 = *(a2 + 3);
            goto LABEL_60;
          }

          break;
        case 24:
          v4 = 3758097126;
          if (*(a1 + 52))
          {
            v5 = *(a2 + 31);
            goto LABEL_60;
          }

          break;
        case 50:
          v4 = 3758097126;
          if (!*(a1 + 52))
          {
            v5 = *(a2 + 88);
            goto LABEL_60;
          }

          break;
      }
    }

    else
    {
      if (v3 == 11)
      {
        v9 = *(*(a1 + 32) + 24);
        v10 = *(a2 + 7);
        if (*(v9 + 32) == 1)
        {
          v11 = 4;
          if ((v10 & 1) == 0)
          {
            v11 = 0;
          }

          v12 = v11 | v10 & 0x18;
          if ((v10 & 0x40) != 0)
          {
            if (*(a1 + 52))
            {
              v12 |= 0x20uLL;
            }

            else
            {
              LOBYTE(a3) = *(a2 + 2);
              v13 = *&a3 / 255.0;
              v14 = *(*(v9 + 40) + 26024);
              if (v13 > v14 && fmax(fmin(v13 * (v13 - v14) / (1.0 - v14), 1.0), 0.0) > 0.0)
              {
                v12 |= 0x20uLL;
              }
            }
          }

          v18 = (v10 >> 1) & 0x80;
          v19 = (v10 >> 4) & 0x140;
        }

        else
        {
          v12 = (v10 >> 1) & 0x13;
          if ((v10 & 0x80) != 0)
          {
            if (*(a1 + 52))
            {
              v12 |= 0x20uLL;
            }

            else
            {
              LOBYTE(a3) = *(a2 + 2);
              v16 = *&a3 / 255.0;
              v17 = *(*(v9 + 40) + 26024);
              if (v16 > v17 && fmax(fmin(v16 * (v16 - v17) / (1.0 - v17), 1.0), 0.0) > 0.0)
              {
                v12 |= 0x20uLL;
              }
            }
          }

          v20 = (v10 >> 5) & 0x40;
          v21 = (v10 >> 2) & 0x80;
          v19 = (v10 >> 4) & 0x100;
          v18 = v21 | v20;
        }

        v5 = v12 | v18 | v19;
        goto LABEL_60;
      }

      if (v3 == 12)
      {
        v4 = 3758097126;
        if (*(a1 + 52))
        {
          v5 = *(a2 + 2);
          goto LABEL_60;
        }
      }

      else
      {
        v4 = 3758097126;
        if (*(a1 + 52))
        {
          v5 = *(a2 + 4);
          goto LABEL_60;
        }
      }
    }
  }

  else if (v3 > 7)
  {
    if (v3 != 8)
    {
      if (v3 == 9)
      {
        v5 = *(a2 + 41) >> 15;
      }

      else
      {
        v6 = *(a2 + 9);
        if (*(*(*(a1 + 32) + 24) + 32) == 1)
        {
          v7 = v6 >> 2;
          v8 = v6 >> 3;
          if (v6)
          {
            v6 = (4 * ((v6 >> 1) & 1)) | 8;
          }

          else
          {
            LOBYTE(v6) = (2 * v6) & 4;
          }
        }

        else
        {
          v7 = v6 >> 2;
          v8 = v6 >> 3;
          if (v6)
          {
            v6 = (v6 >> 1) & 1 | 2;
          }

          else
          {
            v6 = (v6 >> 1) & 1;
          }
        }

        v15 = v6 & 0xEF | (16 * (v8 & 1));
        if (*(a2 + 7) < 0)
        {
          v15 |= 0x20u;
        }

        v5 = v15 & 0xBF | ((v7 & 1u) << 6);
      }

      goto LABEL_60;
    }

    v4 = 3758097126;
    if (*(a1 + 52))
    {
      v5 = *(a2 + 41) & 0xFLL;
      goto LABEL_60;
    }
  }

  else
  {
    switch(v3)
    {
      case 5:
        v5 = (*(a2 + 41) >> 14) & 1;
        goto LABEL_60;
      case 6:
        v5 = (*(a2 + 41) >> 11) & 7;
        goto LABEL_60;
      case 7:
        v5 = *(a2 + 41) >> 4;
LABEL_60:
        v4 = 0;
        **(a1 + 40) = v5;
        break;
    }
  }

  return v4;
}

uint64_t sub_5A08(uint64_t a1, _BYTE *a2, float a3)
{
  result = 3758097126;
  v5 = *(a1 + 48);
  switch(v5)
  {
    case 24:
      if (*(a1 + 52))
      {
        return result;
      }

      result = 0;
      v6 = vcvtd_n_f64_u32(a2[31], 1uLL) + 23.0;
      goto LABEL_13;
    case 12:
      v7 = *(a1 + 52);
      if ((v7 & 1) == 0)
      {
        LOBYTE(a3) = a2[2];
        v8 = (LODWORD(a3) / 255.0);
        v9 = *(a1 + 40);
        *v9 = v8;
        if ((v7 & 2) != 0)
        {
          return 0;
        }

        else
        {
          v10 = *(*(*(*(a1 + 32) + 24) + 40) + 26024);
          v11 = 0.0;
          if (v10 < v8)
          {
            v11 = fmax(fmin((v8 - v10) * v8 / (1.0 - v10), 1.0), 0.0);
          }

          result = 0;
          *v9 = v11;
        }
      }

      break;
    case 8:
      if ((*(a1 + 52) & 1) == 0)
      {
        result = 0;
        v6 = fmin((a2[41] & 0xF) / 10.0, 1.0);
LABEL_13:
        **(a1 + 40) = v6;
      }

      break;
    default:
      return 3758097136;
  }

  return result;
}

uint64_t sub_5B98(uint64_t a1, unsigned __int8 *a2)
{
  result = 3758097126;
  if (*(a1 + 56) != 15)
  {
    return 3758097136;
  }

  if (*(a1 + 60))
  {
    result = 0;
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    *v5 = *a2;
    *v4 = a2[1];
  }

  return result;
}

uint64_t sub_5C54(uint64_t a1, unsigned __int8 *a2, float64x2_t a3, double a4, float64x2_t a5)
{
  v5 = 3758097126;
  if (*(a1 + 56) != 15)
  {
    return 3758097136;
  }

  v6 = *(a1 + 60);
  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *v7 = vcvts_n_f32_s32(*a2 - 128, 7uLL);
    v9 = a2[1] - 128;
    *v8 = (v9 * -0.0078125);
    if ((v6 & 2) != 0)
    {
      return 0;
    }

    else
    {
      v10.i64[0] = *v7;
      a5.f64[0] = fabs(*v7);
      *&v10.i64[1] = (v9 * -0.0078125);
      v11 = *(*(*(a1 + 32) + 24) + 40);
      a3.f64[0] = v11[3252];
      v12 = vdupq_lane_s64(vcgtq_f64(a3, a5).i64[0], 0);
      v13.i64[1] = v10.i64[1];
      v13.i64[0] = 0;
      v14 = vbslq_s8(v12, v13, v10);
      v12.f64[0] = fabs(*&v14.i64[1]);
      v15 = vdupq_lane_s64(vcgtq_f64(a3, v12).i64[0], 0);
      v16 = v11[3250];
      v17 = vbslq_s8(v15, v14.u64[0], v14);
      v18 = sqrt(vaddvq_f64(vmulq_f64(v17, v17)));
      *v13.i32 = v18;
      v19 = *v13.i32;
      v20 = 0uLL;
      if (v16 < v19)
      {
        v21 = vdivq_f64(vmulq_n_f64(vmulq_n_f64(v17, 1.0 / v18), v19 - v16), vdupq_lane_s64(COERCE__INT64(1.0 - v16 + v11[3251] + -1.0), 0));
        __asm { FMOV            V1.2D, #1.0 }

        v27 = vminnmq_f64(v21, _Q1);
        __asm { FMOV            V1.2D, #-1.0 }

        v20 = vmaxnmq_f64(v27, _Q1);
      }

      v5 = 0;
      *v7 = v20;
    }
  }

  return v5;
}

uint64_t sub_5E10(uint64_t a1, uint64_t a2)
{
  v2 = 3758097126;
  v3 = *(a1 + 56);
  if (v3 == 26)
  {
    if (*(a1 + 60))
    {
      v4 = 19;
      v5 = 17;
      v6 = 15;
      goto LABEL_7;
    }
  }

  else
  {
    if (v3 != 25)
    {
      return 3758097136;
    }

    if (*(a1 + 60))
    {
      v4 = 25;
      v5 = 23;
      v6 = 21;
LABEL_7:
      v2 = 0;
      v7 = *(a2 + v5);
      v8 = *(a1 + 40);
      **(a1 + 32) = *(a2 + v6);
      *v8 = v7;
      **(a1 + 48) = *(a2 + v4);
    }
  }

  return v2;
}

uint64_t sub_5F08(uint64_t a1, uint64_t a2)
{
  v2 = 3758097126;
  v3 = *(a1 + 64);
  if (v3 == 26)
  {
    if ((*(a1 + 68) & 1) == 0)
    {
      v14 = *(*(*(a1 + 32) + 24) + 48);
      v15 = vcvtd_n_f64_s32(v14[40] + v14[39], 1uLL) * 3.14159265 / 180.0;
      v16 = v14[19];
      v17 = v14[20];
      v18 = v15 / ((fabs((v14[28] - v16)) + fabs((v14[31] - v16))) * 0.5);
      v19 = v15 / ((fabs((v14[35] - v17)) + fabs((v14[38] - v17))) * 0.5);
      v11 = v15 / ((fabs((v14[21] - v14[18])) + fabs((v14[24] - v14[18]))) * 0.5) * (*(a2 + 15) - v14[18]);
      v12 = v18 * (*(a2 + 17) - v16);
      v13 = v19 * (*(a2 + 19) - v17);
      goto LABEL_7;
    }
  }

  else
  {
    if (v3 != 25)
    {
      return 3758097136;
    }

    if ((*(a1 + 68) & 1) == 0)
    {
      v4 = *(*(*(a1 + 32) + 24) + 48);
      v5 = *v4;
      v6 = fabs(v5) + fabs(v4[3]);
      v7 = v4[7];
      v8 = v4[14];
      v9 = fabs(v7) + fabs(v4[10]);
      v10 = fabs(v8) + fabs(v4[17]);
      v11 = 2.0 / v6 * (v6 * 0.5 - v5 + *(a2 + 21));
      v12 = 2.0 / v9 * (v9 * 0.5 - v7 + *(a2 + 23));
      v13 = 2.0 / v10 * (v10 * 0.5 - v8 + *(a2 + 25));
LABEL_7:
      v2 = 0;
      v20 = v11;
      v21 = v12;
      v22 = v13;
      v23 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_A6B0, v20), xmmword_A6C0, v21), xmmword_A6D0, v22);
      v24 = *(a1 + 48);
      **(a1 + 40) = v23.f32[0];
      *v24 = v23.f32[1];
      **(a1 + 56) = v23.f32[2];
    }
  }

  return v2;
}

void sub_6230(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_6278(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_62B4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

__n128 sub_62F0()
{
  v0->n128_u64[0] = v1[1].n128_u64;
  v0->n128_u64[1] = v1[1].n128_u64[1];
  result = v1[2];
  v0[1] = result;
  return result;
}

BOOL sub_634C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_6380(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_63C8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_640C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

void sub_642C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x12u);
}

void sub_644C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t sub_6AE4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a2 != a1 + 16)
  {
    return 3758097090;
  }

  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v2 = *(a1 + 72);
  v3 = IOCircularDataQueueCursorAccess();
  _Block_object_dispose(v5, 8);
  return v3;
}

void sub_6BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6BCC(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_6C84(uint64_t a1)
{
  **(a1 + 40) = *(*(a1 + 32) + 24);
  v1 = *(a1 + 48);
  if (v1)
  {
    *v1 = -1;
  }

  return 0;
}

uint64_t sub_6E90(uint64_t a1, void *a2)
{
  v2 = 3758097126;
  if (*(a1 + 64) != 58)
  {
    return 3758097136;
  }

  v3 = *(a1 + 68) & 0xF00;
  if (v3 == 768)
  {
    v9 = *(a1 + 72);
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return v2;
      }

      v10 = *(a1 + 68);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          v16 = a2[10];
          goto LABEL_37;
        }

        if (*(a1 + 68))
        {
          return v2;
        }
      }

      v5 = a2[10];
      goto LABEL_39;
    }

    v11 = a2[10];
  }

  else
  {
    if (v3 != 512)
    {
      if (v3 != 256 || *(a1 + 72) != 1)
      {
        return v2;
      }

      v4 = *(a1 + 68);
      if (v4 <= 1)
      {
        if (*(a1 + 68))
        {
          v5 = a2[2] * dword_165E8 / dword_165EC;
        }

        else
        {
          v5 = a2[2];
        }

        goto LABEL_39;
      }

      if (v4 != 2)
      {
        if (v4 != 3)
        {
          return v2;
        }

        v5 = a2[3];
LABEL_39:
        v14 = *(a1 + 48);
        **(a1 + 40) = v5;
        if (!v14)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v16 = a2[3];
      goto LABEL_37;
    }

    v7 = *(a1 + 72);
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return v2;
      }

      v8 = *(a1 + 68);
      if (v8 == 3)
      {
        goto LABEL_16;
      }

      if (v8 != 2)
      {
        if (*(a1 + 68))
        {
          return v2;
        }

LABEL_16:
        v5 = a2[9];
        goto LABEL_39;
      }

      v16 = a2[9];
LABEL_37:
      v15 = (v16 * 0xAAAAAAAAAAAAAAABLL) >> 64;
      goto LABEL_38;
    }

    v11 = a2[9];
  }

  v12 = *(*(*(a1 + 32) + 32) + 2448) + v11;
  v13 = *(a1 + 68);
  if (v13 == 2)
  {
    v15 = (v12 * 0xAAAAAAAAAAAAAAABLL) >> 64;
LABEL_38:
    v5 = v15 >> 1;
    goto LABEL_39;
  }

  if (v13 != 3)
  {
    return v2;
  }

  v14 = *(a1 + 48);
  **(a1 + 40) = v12;
  if (!v14)
  {
    goto LABEL_41;
  }

LABEL_40:
  *v14 = 0;
LABEL_41:
  v17 = *(a1 + 56);
  v2 = 0;
  if (v17)
  {
    *v17 = 0;
  }

  return v2;
}

uint64_t sub_70B8(uint64_t a1, unsigned int *a2)
{
  v2 = 3758097126;
  v3 = *(a1 + 40);
  v4 = 3758097136;
  if (v3 > 58)
  {
    if (v3 == 59)
    {
      v8 = *(a1 + 44) & 0xF00;
      if (v8 == 512)
      {
        v2 = 0;
        v6 = *(a2 + 8);
        goto LABEL_21;
      }

      v4 = 3758097126;
      if (v8 == 256)
      {
        v2 = 0;
        v6 = *(a2 + 1);
        goto LABEL_21;
      }
    }

    else if (v3 == 62)
    {
      if (!*(a1 + 44))
      {
        v6 = *a2;
        goto LABEL_21;
      }

      return 3758097126;
    }
  }

  else if (v3 == 56)
  {
    v7 = *(a1 + 44) & 0xF00;
    if (v7 == 512)
    {
      v2 = 0;
      v6 = *(a2 + 113);
      goto LABEL_21;
    }

    v4 = 3758097126;
    if (v7 == 256)
    {
      v2 = 0;
      v6 = *(a2 + 112);
      goto LABEL_21;
    }
  }

  else if (v3 == 58)
  {
    v5 = *(a1 + 44) & 0xF00;
    if (v5 == 512)
    {
      v2 = 0;
      v6 = *(a2 + 9);
      goto LABEL_21;
    }

    v4 = 3758097126;
    if (v5 == 256)
    {
      v2 = 0;
      v6 = *(a2 + 3);
LABEL_21:
      **(a1 + 32) = v6;
      return v2;
    }
  }

  return v4;
}

double sub_7238(uint64_t a1, uint64_t a2, double result)
{
  if (*(a1 + 40) == 57)
  {
    if ((*(a1 + 44) & 0xF00) == 0x100)
    {
      v3 = 92;
      goto LABEL_7;
    }

    if ((*(a1 + 44) & 0xF00) == 0x200)
    {
      v3 = 104;
LABEL_7:
      LODWORD(result) = *(a2 + v3);
      result = *&result / 3000000.0;
      **(a1 + 32) = result;
    }
  }

  return result;
}

void sub_73B0(uint64_t a1, NSObject *a2)
{
  v2[0] = 68289026;
  v2[1] = 16;
  v3 = 2098;
  v4 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "PSVR2Factory() construct type for ID %{public, uuid_t}.16P", v2, 0x12u);
}

uint64_t sub_7438(uint64_t result)
{
  v1 = result;
  if (*(*(result + 32) + 32))
  {
    *(*(*(result + 40) + 8) + 24) = -536870187;
  }

  else
  {
    result = IOObjectRetain(*(result + 48));
    *(*(*(v1 + 40) + 8) + 24) = result;
    if (!*(*(*(v1 + 40) + 8) + 24))
    {
      *(*(v1 + 32) + 32) = *(v1 + 48);
    }
  }

  return result;
}

uint64_t sub_74AC(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    CFProperty = IORegistryEntryCreateCFProperty(result, *(a1 + 40), kCFAllocatorDefault, 0);
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = CFProperty;

    return _objc_release_x1();
  }

  return result;
}

uint64_t sub_751C(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t sub_7528(uint64_t result)
{
  v1 = result;
  if (*(*(result + 32) + 32))
  {
    *(*(*(result + 40) + 8) + 24) = -536870187;
  }

  else
  {
    result = IOObjectRetain(*(result + 48));
    *(*(*(v1 + 40) + 8) + 24) = result;
    if (!*(*(*(v1 + 40) + 8) + 24))
    {
      *(*(v1 + 32) + 32) = *(v1 + 48);
      v2 = *(v1 + 32);
      v3 = *(v2 + 32);

      return IORegistryEntryGetRegistryEntryID(v3, (v2 + 40));
    }
  }

  return result;
}

uint64_t sub_75C0(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = sub_6260(result, a2);
    return sub_62B4(v2, 0, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_75F0(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = sub_6260(result, a2);
    return sub_62B4(v2, 1u, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return result;
}

CFTypeRef sub_7620(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    result = [v3 getProperty:*(a1 + 40)];
  }

  else
  {
    result = *(v2 + 32);
    if (!result)
    {
      return result;
    }

    result = IORegistryEntryCreateCFProperty(result, *(a1 + 40), kCFAllocatorDefault, 0);
  }

  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

uint64_t sub_7688(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 56))
  {
    *(*(*(result + 56) + 8) + 24) = 0;
  }

  else
  {
    result = *(v2 + 48);
    if (result)
    {
      result = IOConnectSetCFProperty(result, *(v1 + 40), *(v1 + 48));
      *(*(*(v1 + 56) + 8) + 24) = result == 0;
    }
  }

  return result;
}

uint64_t sub_76E8(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    sub_63B0();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = &__NSDictionary0__struct;
    }

    v5 = IOCFSerialize(v4, 0);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 48);
      BytePtr = CFDataGetBytePtr(v5);
      CFDataGetLength(v6);
      v9 = sub_6330();
      v2 = IOConnectCallMethod(v9, 2u, v10, 1u, BytePtr, v11, v12, v13, v15, v16);
      if (!v2 && v17)
      {
        *v1 = v17;
      }

      CFRelease(v6);
    }

    else
    {
      return 3758097097;
    }
  }

  return v2;
}

uint64_t sub_7794(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    sub_63B0();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = &__NSDictionary0__struct;
    }

    v5 = IOCFSerialize(v4, 0);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 48);
      BytePtr = CFDataGetBytePtr(v5);
      CFDataGetLength(v6);
      v9 = sub_6330();
      v2 = IOConnectCallMethod(v9, 3u, v10, 1u, BytePtr, v11, v12, v13, v15, v16);
      if (!v2 && v17)
      {
        *v1 = v17;
      }

      CFRelease(v6);
    }

    else
    {
      return 3758097097;
    }
  }

  return v2;
}

uint64_t sub_7840(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = sub_6260(result, a2);
    return sub_62B4(v2, 4u, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_7870(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  address = 0;
  input[0] = a2;
  errorString = 0;
  size = -3;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = sub_640C(v7, v8);
  if (v9)
  {
    v10 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        v12 = [v7 setObject:+[NSNull null](NSNull forKey:{"null"), *(8 * i)}];
      }

      v10 = sub_640C(v12, v13);
    }

    while (v10);
  }

  v14 = 3758097097;
  v15 = IOCFSerialize(v7, 0);
  v16 = v15;
  if (v15)
  {
    v17 = *(a1 + 48);
    BytePtr = CFDataGetBytePtr(v15);
    Length = CFDataGetLength(v16);
    v20 = IOConnectCallMethod(v17, 5u, input, 1u, BytePtr, Length, 0, 0, &address, &size);
    if (v20)
    {
      v21 = 0;
      v14 = v20;
    }

    else
    {
      v21 = IOCFUnserializeBinary(address, size, kCFAllocatorDefault, 0, &errorString);
      if (v21)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = 0;
          *a4 = v21;
        }
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if (address)
  {
    mach_vm_deallocate(mach_task_self_, address, size);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t sub_7AB0(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_7ABC(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void sub_7D48()
{
  sub_6250();
  v1 = sub_F0C();
  if (sub_634C(v1))
  {
    sub_62A0();
    sub_61CC();
    sub_61E0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *v0 = 0;
}

void sub_7DE8()
{
  sub_63E4();
  v2 = sub_F0C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_63F8();
    sub_61CC();
    sub_644C(&dword_0, v3, v4, "%@ (PROXY) IOConnectMapMemory64 failed: %{mach.errno}d", v5, v6, v7, v8, v9);
  }

  *v0 = v1;
}

void sub_7E90(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v5 = 138412802;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  v9 = 2048;
  v10 = v4;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%@ Shared page mapped at %p / %llu", &v5, 0x20u);
}

void sub_7F24()
{
  sub_6250();
  v1 = sub_F0C();
  if (sub_634C(v1))
  {
    sub_62A0();
    sub_61CC();
    sub_61E0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *v0 = 0;
}

void sub_7FC4()
{
  sub_63E4();
  v2 = sub_F0C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_63F8();
    sub_61CC();
    sub_644C(&dword_0, v3, v4, "%@ (PROXY) Open failed: %{mach.errno}d", v5, v6, v7, v8, v9);
  }

  *v0 = v1;
}

void sub_806C()
{
  sub_6250();
  v1 = sub_F0C();
  if (sub_634C(v1))
  {
    sub_62A0();
    sub_61CC();
    sub_61E0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *v0 = 0;
}

void sub_810C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(*a2 + 8) + 24);
  sub_61CC();
  v7 = v4;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%@ IOServiceOpen failed: %{mach.errno}d", v6, 0x12u);
}

void sub_8200()
{
  sub_62E4();
  v1 = sub_F0C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *v0;
    sub_61CC();
    sub_642C(&dword_0, v3, v4, "%@ #WARNING (PROXY) Close failed: %{mach.errno}d", v5, v6, v7, v8, v9);
  }
}

void sub_8298()
{
  sub_62E4();
  v1 = sub_F0C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *v0;
    sub_61CC();
    sub_642C(&dword_0, v3, v4, "%@ #WARNING Close failed: %{mach.errno}d", v5, v6, v7, v8, v9);
  }
}

void sub_8330()
{
  sub_62E4();
  v1 = sub_F0C();
  if (sub_6380(v1))
  {
    v2 = *v0;
    sub_61CC();
    sub_6230(&dword_0, v3, v4, "%@ #WARNING (PROXY) IOConnectUnmapMemory64 failed: %{mach.errno}d", v5, v6, v7, v8, v9);
  }
}

void sub_83C4()
{
  sub_62E4();
  v1 = sub_F0C();
  if (sub_6380(v1))
  {
    v2 = *v0;
    sub_61CC();
    sub_6230(&dword_0, v3, v4, "%@ #WARNING IOConnectUnmapMemory64 failed: %{mach.errno}d", v5, v6, v7, v8, v9);
  }
}

void sub_8458()
{
  sub_62E4();
  v1 = sub_F0C();
  if (sub_6380(v1))
  {
    v2 = *v0;
    sub_61CC();
    sub_6230(&dword_0, v3, v4, "%@ #WARNING IOServiceClose failed: %{mach.errno}d", v5, v6, v7, v8, v9);
  }
}

void sub_84EC()
{
  sub_6250();
  v1 = sub_F0C();
  if (sub_634C(v1))
  {
    sub_6218();
    sub_61E0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }
}

void sub_8584()
{
  sub_6250();
  v1 = sub_F0C();
  if (sub_634C(v1))
  {
    sub_6218();
    sub_61E0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }
}

void sub_861C()
{
  sub_62E4();
  v0 = sub_F0C();
  if (sub_6380(v0))
  {
    sub_62D8();
    sub_61F0();
    sub_6230(&dword_0, v1, v2, "%@ GetProperties failed: %{mach.errno}d", v3, v4, v5, v6, v7);
  }
}

void sub_87E4()
{
  sub_62E4();
  v0 = sub_F0C();
  if (sub_6380(v0))
  {
    sub_62D8();
    sub_61F0();
    sub_6230(&dword_0, v1, v2, "%@ Create Queue Client failed: %{mach.errno}d", v3, v4, v5, v6, v7);
  }
}

uint64_t sub_8874(uint64_t a1, unsigned int a2, mach_port_name_t *a3)
{
  sub_7840(*(a1 + 24), a2);
  result = mach_port_deallocate(mach_task_self_, *a3);
  *a3 = 0;
  return result;
}

void sub_891C()
{
  sub_6250();
  v2 = sub_F0C();
  if (sub_634C(v2))
  {
    v3 = *v1;
    sub_6200();
    sub_61E0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

void sub_89B8()
{
  sub_6250();
  v2 = sub_F0C();
  if (sub_634C(v2))
  {
    v3 = *v1;
    sub_6200();
    sub_61E0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

void sub_8A54()
{
  sub_6250();
  v2 = sub_F0C();
  if (sub_634C(v2))
  {
    v3 = *v1;
    sub_6200();
    sub_61E0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

void sub_8AF0()
{
  sub_6250();
  v2 = sub_F0C();
  if (sub_634C(v2))
  {
    v3 = *v1;
    sub_6200();
    sub_61E0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

void sub_8B8C(unsigned int *a1)
{
  v2 = sub_F0C();
  if (sub_6380(v2))
  {
    v3 = *a1;
    sub_6398();
    sub_6230(&dword_0, v4, v5, "%@ (PROXY) GetProperties failed: %{mach.errno}d", v6, v7, v8, v9, v10);
  }
}

void sub_8C20(unsigned int *a1)
{
  v2 = sub_F0C();
  if (sub_6380(v2))
  {
    v3 = *a1;
    sub_6398();
    sub_6230(&dword_0, v4, v5, "%@ GetProperties failed: %{mach.errno}d", v6, v7, v8, v9, v10);
  }
}

void sub_8CB4(uint64_t a1, void *a2)
{
  v3 = sub_F0C();
  if (sub_634C(v3))
  {
    sub_62D8();
    sub_61E0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

uint64_t sub_8D50(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void sub_8E0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_F0C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_6218();
    sub_61E0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  }
}

void sub_8EB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_F0C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_6218();
    sub_61E0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  }
}

void sub_8F5C(uint64_t a1, int a2)
{
  v4 = sub_F0C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = a1;
    v7 = 1024;
    v8 = a2;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%@ GetProperties failed: %{mach.errno}d", &v5, 0x12u);
  }
}

void sub_9158(uint64_t a1, void *a2)
{
  v3 = sub_F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_61E0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}