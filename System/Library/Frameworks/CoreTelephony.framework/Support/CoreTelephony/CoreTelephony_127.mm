uint64_t sub_1011583EC(unsigned int *a1, unint64_t *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = sub_101158300(a1, &v8, 0);
  if (!result)
  {
    v6 = v8;
    *a2 = v8;
    if (v6 >> 1 == 0x1000000000000008)
    {
      result = 0;
      v7 = v9 + v10;
      *a3 = v9;
      a3[1] = v7;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_101158464(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 >= v5)
  {
    return 1;
  }

  v9[4] = v2;
  v9[5] = v3;
  v9[0] = v4;
  v9[1] = (v5 - v4);
  result = sub_101158300(v9, a2, 0);
  if (!result)
  {
    *a1 = *(a2 + 8) + *(a2 + 16);
  }

  return result;
}

uint64_t sub_1011584D4(uint64_t a1, unsigned int a2, uint64_t a3, char *a4, unsigned int a5)
{
  if (a5)
  {
    bzero(a4, a5);
  }

  v9 = *a1 + *(a1 + 8);
  v23[0] = *a1;
  v23[1] = v9;
  if (!a2)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    v21 = 0;
    v22 = 0uLL;
    v11 = v23[0];
    result = sub_101158464(v23, &v21);
    if (result)
    {
      break;
    }

    if (v10 >= a2)
    {
      return 2;
    }

    v13 = v10;
    v14 = (a3 + 16 + 24 * v10);
    while (1)
    {
      v15 = *v14;
      if ((*v14 & 2) != 0 || v21 == *(v14 - 1))
      {
        break;
      }

      result = 2;
      if (v15)
      {
        ++v13;
        v14 += 12;
        if (v13 < a2)
        {
          continue;
        }
      }

      return result;
    }

    if ((v15 & 4) == 0)
    {
      v16 = &a4[*(v14 - 4)];
      *v16 = v22;
      if ((v15 & 8) != 0)
      {
        *v16 = v11;
        *(v16 + 2) += v22 - v11;
      }
    }

    v10 = v13 + 1;
    if (v10 == a2 || v10 >= a2)
    {
      return 0;
    }
  }

  if (result != 1)
  {
    return result;
  }

  if (v10 >= a2)
  {
    return 0;
  }

  v17 = (a3 + 24 * v10 + 16);
  v18 = v10 + 1;
  while (1)
  {
    v19 = *v17;
    v17 += 12;
    if ((v19 & 1) == 0)
    {
      break;
    }

    result = 0;
    if (a2 == v18++)
    {
      return result;
    }
  }

  return 5;
}

void sub_10115865C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_1011586E8(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 8);
  v7[0] = off_101F12930;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_101158780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101158794(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F129B0;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_101158828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_1011588F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_10115890C(uint64_t a1, void *a2, ctu **a3, ctu **a4)
{
  v9 = a2;
  v8 = 0;
  ctu::xpc_to_cf(&v7, *a3, a2);
  sub_100010180(&v8, &v7);
  sub_10000A1EC(&v7);
  v7 = 0;
  ctu::xpc_to_cf(&v6, *a4, v5);
  sub_100010180(&v7, &v6);
  sub_10000A1EC(&v6);
  v10 = 0;
  operator new();
}

void sub_101158A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  sub_10002B210(va2);
  sub_10001021C(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_101158B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101158B50(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F12BB0;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_101158BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101158BF8(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F12C30;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_101158C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101158CA0(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 8);
  v7[0] = off_101F12CB0;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_101158D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101158D4C(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F12D30;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_101158DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101158DF4(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F12DB0;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_101158E88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101158E9C(uint64_t a1, int a2, char a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v10 = a2;
  v9 = a3;
  v7 = a5;
  v8 = a4;
  v6 = a6;
  operator new();
}

void sub_101158F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101158F88(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v11 = a3;
  v12 = a2;
  v9 = a5;
  v10 = a4;
  v7 = a7;
  v8 = a6;
  operator new();
}

void sub_101159058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_10115906C(uint64_t a1, int a2, char a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v10 = a2;
  v9 = a3;
  v7 = a5;
  v8 = a4;
  v6 = a6;
  operator new();
}

void sub_101159144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101159158(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v5 = a5;
  operator new();
}

void sub_101159228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_10115923C(uint64_t a1, int a2, int a3, char a4, char a5, char a6)
{
  v9 = a3;
  v10 = a2;
  v8 = a4;
  v7 = a5;
  v6 = a6;
  operator new();
}

void sub_101159308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10115931C(uint64_t a1, int a2, uint64_t a3)
{
  v8 = a2;
  v5 = *(a1 + 8);
  v10[0] = off_101F130B0;
  v10[1] = a3;
  v10[2] = &v8;
  v10[3] = v10;
  sub_100125DF8(v5, v10);
  sub_10002B210(v10);
  v6 = *(a1 + 8);
  v9[0] = off_101F13130;
  v9[1] = a3;
  v9[2] = &v8;
  v9[3] = v9;
  sub_100125DF8(v6, v9);
  return sub_10002B210(v9);
}

void sub_1011593F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101159414(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v5 = *(a3 + 16);
  }

  v6 = a2;
  v7 = 0;
  operator new();
}

void sub_101159528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  operator delete(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10115956C(CTXPCSMSNotificationInterface *this)
{
  *this = off_101F127F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCSMSNotificationInterface::~CTXPCSMSNotificationInterface(this);
}

void sub_1011595C8(CTXPCSMSNotificationInterface *this)
{
  *this = off_101F127F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCSMSNotificationInterface::~CTXPCSMSNotificationInterface(this);

  operator delete();
}

void sub_1011596A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 144))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011596DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101159714(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 144))();
  }

  return result;
}

uint64_t sub_101159744(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011597F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12930;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101159828(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 smsReadyStateChanged:v3 info:**(a1 + 16)];
}

uint64_t sub_1011598C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101159984(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F129B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1011599B4(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 smsConditionsChanged:v3 changeMask:**(a1 + 16)];
}

uint64_t sub_101159A50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101159B18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12A30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101159B50(uint64_t a1, id *a2)
{
  v8 = *a2;
  v3 = *(a1 + 8);
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v4 = [NSString stringWithUTF8String:v3];
  v5 = *(a1 + 16);
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [CTXPCPlaceholder simSlot:**(a1 + 24)];
  [v8 smsMessageClass0Received:v7 body:v4 address:v6];
}

void sub_101159C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_101159C5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101159D24(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12AB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101159D5C(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 smsMessageCellBroadcastReceived:v3 notificationDict:**(a1 + 16) additionalDict:**(a1 + 24)];
}

uint64_t sub_101159DFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101159EC4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12B30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101159EFC(uint64_t a1, id *a2)
{
  v8 = *a2;
  v3 = *(a1 + 8);
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v4 = [NSString stringWithUTF8String:v3];
  v5 = *(a1 + 16);
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [CTXPCPlaceholder simSlot:**(a1 + 24)];
  [v8 smsMessageTestMessageReceived:v7 body:v4 address:v6];
}

void sub_101159FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_10115A008(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115A0C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12BB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10115A0F8(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 smsMessageReceived:v3 msgID:**(a1 + 16)];
}

uint64_t sub_10115A194(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115A254(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12C30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10115A284(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 mmsMessageReceived:v3 msgID:**(a1 + 16)];
}

uint64_t sub_10115A320(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115A3E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12CB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10115A410(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 mmsConfigurationChangedNotification:v3 changed:**(a1 + 16)];
}

uint64_t sub_10115A4AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115A56C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12D30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10115A59C(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 smsMessageReceivedDeferred:v3 msgID:**(a1 + 16)];
}

uint64_t sub_10115A638(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115A6F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12DB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10115A728(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 mmsMessageReceivedDeferred:v3 msgID:**(a1 + 16)];
}

uint64_t sub_10115A7C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115A894(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12E30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_10115A8D4(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 postSMSMessageSent:v3 success:**(a1 + 16) messageID:**(a1 + 24) err1:**(a1 + 32) err2:**(a1 + 40)];
}

uint64_t sub_10115A980(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115AA50(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12EB0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_10115AA90(unsigned int **a1, id *a2)
{
  v10 = *a2;
  v3 = *a1[1];
  v4 = objc_opt_new();
  v5 = v4;
  if (*a1[2] < 4)
  {
    [v4 setStatusType:?];
  }

  v6 = [NSNumber numberWithInt:*a1[3]];
  [v5 setRecommendedRetryDelayInSeconds:v6];

  v7 = [NSNumber numberWithInt:*a1[4]];
  [v5 setError1:v7];

  v8 = [NSNumber numberWithInt:*a1[5]];
  [v5 setError2:v8];

  v9 = [CTXPCPlaceholder simSlot:*a1[6]];
  [v10 smsSent:v9 messageID:v3 info:v5];
}

uint64_t sub_10115AC0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115ACDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12F30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_10115AD1C(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 postMMSMessageSent:v3 success:**(a1 + 16) messageID:**(a1 + 24) err1:**(a1 + 32) err2:**(a1 + 40)];
}

uint64_t sub_10115ADC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115AE90(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12FB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10115AEC8(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 postMessageProgressNotification:v3 messageID:**(a1 + 16) totalBytesSent:**(a1 + 24) dataLength:**(a1 + 32)];
}

uint64_t sub_10115AF70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115B040(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F13030;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_10115B080(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = objc_opt_new();
  [v3 setActivationForMms:**(a1 + 8)];
  [v3 setIsDataAttached:**(a1 + 16)];
  [v3 setDataActive:**(a1 + 24)];
  v4 = [NSNumber numberWithInt:**(a1 + 32)];
  [v3 setPdpContextId:v4];

  v5 = [CTXPCPlaceholder simSlot:**(a1 + 40)];
  [v6 postMmsDataActivationFailed:v5 failureNotification:v3];
}

void sub_10115B16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_10115B1A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115B268(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F130B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10115B298(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = *(a1 + 8);
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v3, +[NSString defaultCStringEncoding]);
  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 postSUPLInitNotification:v5 body:v4];
}

uint64_t sub_10115B380(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10115B440(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F13130;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10115B470(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v3 = *v3;
    v4 = *(*(a1 + 8) + 8);
  }

  v5 = [NSData dataWithBytes:v3 length:v4];
  v6 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v7 postSUPLInitNotification:v6 data:v5];
}

void sub_10115B510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_10115B540(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10115B58C(uint64_t a1)
{
  *a1 = off_101F131B0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_10115B5DC(uint64_t a1)
{
  *a1 = off_101F131B0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

_BYTE *sub_10115B6E8(uint64_t a1, void *a2)
{
  *a2 = off_101F131B0;
  result = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    result = sub_100005F2C(result, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *result = v5;
  }

  a2[4] = *(a1 + 32);
  return result;
}

void sub_10115B758(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_10115B76C(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void sub_10115B7B0(uint64_t a1, id *a2)
{
  v9 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 31);
  v5 = +[NSString defaultCStringEncoding];
  if (v4 >= 0)
  {
    v6 = a1 + 8;
  }

  else
  {
    v6 = v3;
  }

  v7 = [NSString stringWithCString:v6 encoding:v5];
  v8 = [CTXPCPlaceholder simSlot:*(a1 + 32)];
  [v9 postSmscAddressAvailable:v8 smsc:v7];
}

void sub_10115B870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_10115B8A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10115B8EC(Registry **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v14 = ServiceMap;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  v23 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v23);
  if (!v19)
  {
    v20 = 0;
LABEL_9:
    std::mutex::unlock(v14);
    v21 = 0;
    v22 = 1;
    if (!v20)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v20 = v19[3];
  v21 = v19[4];
  if (!v21)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v22 = 0;
  if (v20)
  {
LABEL_10:
    (*(*v20 + 104))(v20, a2, a3, a4, a5, a6);
  }

LABEL_11:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if (!v20)
  {
    *a7 = 0;
  }
}

void sub_10115BA40(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10115BA5C(Registry **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v15 = 0;
  v16 = a4;
  __p = 0;
  v14 = 0;
  sub_10005B328(&__p, &v16, &v17, 1uLL);
  sub_10115B8EC(a1, a2, a3, &__p, a5, a6, a7);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_10115BB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10115BB48(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C398(&v2, &v1, "kPostponementGetStatus", sub_10115BC40, 5);
}

void sub_10115BC40(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
  if (!v12)
  {
    std::mutex::unlock(v7);
    return;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    std::mutex::unlock(v7);
    if (!v14)
    {
      return;
    }

LABEL_10:
    v20 = 0;
    (*(*v14 + 16))(&v20, v14);
    if (!v20)
    {
      goto LABEL_16;
    }

    v15 = _CFXPCCreateXPCObjectFromCFObject();
    v16 = v15;
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v16 = xpc_null_create();
      v18 = v16;
      if (!v16)
      {
        v16 = 0;
        v18 = xpc_null_create();
        goto LABEL_15;
      }
    }

    xpc_retain(v16);
LABEL_15:
    v17[0] = *a5;
    v17[1] = "kPostponementInfoDictionary";
    sub_10000F688(v17, &v18, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v18);
    v18 = 0;
    xpc_release(v16);
LABEL_16:
    sub_10001021C(&v20);
    if (!v13)
    {
      return;
    }

    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_17:
  sub_100004A34(v13);
}

void sub_10115BDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10001021C(va);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

const void **sub_10115BE20(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  sub_10002071C();
  v8 = qword_101FC8CA0;
  if (os_log_type_enabled(qword_101FC8CA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Setting postponement ticket", buf, 2u);
  }

  cf = 0;
  xpc_dictionary_get_value(*a4, "kPostponementTicket");
  *buf = _CFXPCCreateCFObjectFromXPCObject();
  sub_100138C38(&cf, buf);
  if (!cf)
  {
    sub_10002071C();
    v20 = qword_101FC8CA0;
    if (os_log_type_enabled(qword_101FC8CA0, OS_LOG_TYPE_ERROR))
    {
      sub_100A6024C(a4, buf);
      v21 = v30 >= 0 ? buf : *buf;
      *v32 = 136315138;
      v33 = v21;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Missing postponement ticket in request from client %s", v32, 0xCu);
      if (v30 < 0)
      {
        operator delete(*buf);
      }
    }

    return sub_10001021C(&cf);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (!v15)
  {
    v17 = 0;
LABEL_23:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
LABEL_10:
      sub_10002071C();
      v19 = qword_101FC8CA0;
      if (os_log_type_enabled(qword_101FC8CA0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Cannot set ticket without an ActivationInterface!", buf, 2u);
      }

      v23 = xpc_BOOL_create(0);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      *buf = *a5;
      v29 = "kPostponementTicketSet";
      sub_10000F688(buf, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      if (v18)
      {
        return sub_10001021C(&cf);
      }

LABEL_29:
      sub_100004A34(v16);
      return sub_10001021C(&cf);
    }

    goto LABEL_24;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_24:
  v27 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  (*(*v17 + 32))(v17, &v27);
  sub_10001021C(&v27);
  v25 = xpc_BOOL_create(1);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  *buf = *a5;
  v29 = "kPostponementTicketSet";
  sub_10000F688(buf, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  if ((v18 & 1) == 0)
  {
    goto LABEL_29;
  }

  return sub_10001021C(&cf);
}

void sub_10115C168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10115C1E8(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  sub_10002071C();
  v7 = qword_101FC8CA0;
  if (os_log_type_enabled(qword_101FC8CA0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Locking postponement ticket", v19, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v19[0] = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v19);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
LABEL_9:
    sub_10002071C();
    v18 = qword_101FC8CA0;
    if (os_log_type_enabled(qword_101FC8CA0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Cannot lock ticket without an Activation service!", v19, 2u);
    }

    goto LABEL_16;
  }

LABEL_13:
  (*(*v16 + 40))(v16);
  v20 = xpc_BOOL_create(1);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v19[0] = *a5;
  v19[1] = "kPostponementTicketLocked";
  sub_10000F688(v19, &v20, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v20);
  v20 = 0;
LABEL_16:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_10115C3D8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10115C404(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  sub_10002071C();
  v7 = qword_101FC8CA0;
  if (os_log_type_enabled(qword_101FC8CA0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Unlocking postponement ticket", v19, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v19[0] = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v19);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
LABEL_9:
    sub_10002071C();
    v18 = qword_101FC8CA0;
    if (os_log_type_enabled(qword_101FC8CA0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Cannot unlock ticket without an Activation service!", v19, 2u);
    }

    goto LABEL_16;
  }

LABEL_13:
  (*(*v16 + 48))(v16);
  v20 = xpc_BOOL_create(0);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v19[0] = *a5;
  v19[1] = "kPostponementTicketLocked";
  sub_10000F688(v19, &v20, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v20);
  v20 = 0;
LABEL_16:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_10115C5F4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

wis::MetricContainer **sub_10115C64C(wis::MetricFactory *a1)
{
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x8007Eu);
  if (v5)
  {
    v3 = 0;
    v4 = 0;
    sub_10001C610(&v3);
    if (v3)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  return sub_10001C0A0(&v5);
}

void sub_10115C7A0(_Unwind_Exception *a1)
{
  v3 = *(v1 - 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0((v1 - 24));
  _Unwind_Resume(a1);
}

std::string *sub_10115C820(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Submitting cellular data blocked metric for bundle: %s ,with user response was: %d", &v10, 0x12u);
  }

  v7 = *(a1 + 40);
  *(a2 + 32) |= 2u;
  v8 = *(a2 + 16);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  result = std::string::operator=(v8, v7);
  *(a2 + 32) |= 4u;
  *(a2 + 24) = v4;
  return result;
}

void sub_10115CBC4(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  if (capabilities::ct::supportsP2P(a1))
  {
    goto LABEL_13;
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v14.var0 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_10:
  isWatch = GestaltUtilityInterface::isWatch(v12);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (isWatch)
  {
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_10115D020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, std::__shared_weak_count *a18)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_10115D180(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10115D288(uint64_t a1)
{
  v1 = a1;
  v48 = [*(a1 + 48) linkedDevicesWithRelationship:3];
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = [v48 count];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %lu linked devices", buf, 0xCu);
  }

  __p = 0;
  v62 = 0;
  v63 = 0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v48;
  v3 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v3)
  {
    v52 = *v58;
    v51 = NRDevicePropertyGreenTeaDevice;
    v50 = v1;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v58 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v57 + 1) + 8 * i);
        v6 = [v5 uniqueIDOverride];
        if (v6)
        {
          v7 = +[NRPairedDeviceRegistry sharedInstance];
          v8 = [v7 deviceForIDSDevice:v5];

          v9 = [v8 valueForProperty:v51];
          v10 = [v9 BOOLValue];

          v11 = *(v1 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v6;
            v13 = [v6 UTF8String];
            v14 = CSIBOOLAsString([v5 isConnected]);
            v15 = CSIBOOLAsString(([v5 relationship] >> 1) & 1);
            v16 = CSIBOOLAsString(v10);
            *buf = 136315906;
            *&buf[4] = v13;
            *&buf[12] = 2080;
            *&buf[14] = v14;
            *&buf[22] = 2080;
            *&buf[24] = v15;
            LOWORD(v67) = 2080;
            *(&v67 + 2) = v16;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I paired device %s, connected %s, tinker %s, green tea %s", buf, 0x2Au);
            v1 = v50;
          }

          v17 = v6;
          sub_10000501C(v53, [v6 UTF8String]);
          LOBYTE(v55) = [v5 isConnected];
          HIBYTE(v55) = ([v5 relationship] & 2) != 0;
          v56 = v10;
          v18 = v62;
          if (v62 >= v63)
          {
            v21 = (v62 - __p) >> 5;
            v22 = v21 + 1;
            if ((v21 + 1) >> 59)
            {
              sub_1000CE3D4();
            }

            v23 = v63 - __p;
            if ((v63 - __p) >> 4 > v22)
            {
              v22 = v23 >> 4;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFE0)
            {
              v24 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              sub_10115DB00(v24);
            }

            v25 = 32 * v21;
            v26 = *v53;
            *(v25 + 16) = v54;
            *v25 = v26;
            v53[1] = 0;
            v54 = 0;
            v53[0] = 0;
            v27 = v55;
            *(v25 + 26) = v56;
            *(v25 + 24) = v27;
            v29 = __p;
            v28 = v62;
            *buf = &__p;
            *&buf[8] = &v64;
            *&buf[16] = &v65;
            *&buf[24] = 0;
            v30 = __p;
            v31 = (v25 + __p - v62);
            v64 = v31;
            v65 = v31;
            v32 = v31;
            if (__p == v62)
            {
              buf[24] = 1;
            }

            else
            {
              do
              {
                v33 = *v30;
                *(v32 + 2) = v30[2];
                *v32 = v33;
                v30[1] = 0;
                v30[2] = 0;
                *v30 = 0;
                v34 = *(v30 + 12);
                v32[26] = *(v30 + 26);
                *(v32 + 12) = v34;
                v30 += 4;
                v32 += 32;
              }

              while (v30 != v28);
              v65 = v32;
              buf[24] = 1;
              do
              {
                if (*(v29 + 23) < 0)
                {
                  operator delete(*v29);
                }

                v29 += 4;
              }

              while (v29 != v28);
            }

            sub_100F14C18(buf);
            v35 = __p;
            __p = v31;
            v62 = (v25 + 32);
            v63 = 0;
            if (v35)
            {
              operator delete(v35);
            }

            v62 = (v25 + 32);
            v1 = v50;
            if (SHIBYTE(v54) < 0)
            {
              operator delete(v53[0]);
            }
          }

          else
          {
            v19 = *v53;
            v62[2] = v54;
            *v18 = v19;
            v53[1] = 0;
            v54 = 0;
            v53[0] = 0;
            v20 = v56;
            *(v18 + 12) = v55;
            *(v18 + 26) = v20;
            v62 = v18 + 4;
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v3);
  }

  *&buf[16] = 0u;
  v67 = 0u;
  *buf = 1;
  *&buf[8] = v1 + 96;
  if (*(v1 + 152) == 1)
  {
    *&buf[16] = 0;
    *&buf[24] = 0;
    *&v67 = 0;
    sub_10115DC58(&buf[16], *(v1 + 128), *(v1 + 136), (*(v1 + 136) - *(v1 + 128)) >> 5);
    BYTE8(v67) = 1;
    v37 = __p;
    v36 = v62;
    v38 = v62 - __p;
    v39 = *&buf[16];
    if (v67 - *&buf[16] < (v62 - __p))
    {
      v40 = v38 >> 5;
      sub_1008F0F98(&buf[16]);
      if (!(v40 >> 59))
      {
        v41 = (v67 - *&buf[16]) >> 4;
        if (v41 <= v40)
        {
          v41 = v40;
        }

        if (v67 - *&buf[16] >= 0x7FFFFFFFFFFFFFE0uLL)
        {
          v42 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (!(v42 >> 59))
        {
          sub_10115DB00(v42);
        }
      }

      sub_1000CE3D4();
    }

    v43 = *&buf[24];
    if (*&buf[24] - *&buf[16] >= v38)
    {
      if (__p != v62)
      {
        do
        {
          std::string::operator=(v39, v37);
          data = v37[1].__r_.__value_.__l.__data_;
          *(v39 + 26) = v37[1].__r_.__value_.__s.__data_[2];
          *(v39 + 24) = data;
          v37 = (v37 + 32);
          v39 += 32;
        }

        while (v37 != v36);
        v43 = *&buf[24];
      }

      while (v43 != v39)
      {
        v47 = *(v43 - 9);
        v43 -= 4;
        if (v47 < 0)
        {
          operator delete(*v43);
        }
      }

      *&buf[24] = v39;
    }

    else
    {
      v44 = (__p + *&buf[24] - *&buf[16]);
      if (*&buf[24] != *&buf[16])
      {
        do
        {
          std::string::operator=(v39, v37);
          v45 = v37[1].__r_.__value_.__l.__data_;
          *(v39 + 26) = v37[1].__r_.__value_.__s.__data_[2];
          *(v39 + 24) = v45;
          v37 = (v37 + 32);
          v39 += 32;
        }

        while (v37 != v44);
        v43 = *&buf[24];
      }

      *&buf[24] = sub_10115DB88(&buf[16], v44, v36, v43);
    }
  }

  else
  {
    *&buf[16] = 0;
    *&buf[24] = 0;
    *&v67 = 0;
    sub_10115DC58(&buf[16], __p, v62, (v62 - __p) >> 5);
    BYTE8(v67) = 1;
  }

  sub_10115E820(buf);
  *buf = &__p;
  sub_10003CA58(buf);
}

void sub_10115D908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_10115E820(&a38);
  a38 = &a33;
  sub_10003CA58(&a38);

  _Unwind_Resume(a1);
}

void sub_10115D9FC(uint64_t a1)
{
  sub_10115DCE0(a1);

  operator delete();
}

uint64_t sub_10115DA34(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3 = (a1 + 32);
    sub_10003CA58(&v3);
  }

  return sub_10115DA80(a1);
}

uint64_t sub_10115DA80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10115DB00(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

void sub_10115DB48(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_10115DB00(a2);
  }

  sub_1000CE3D4();
}

void *sub_10115DB88(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 12);
      *(v4 + 26) = *(v6 + 26);
      *(v4 + 12) = v9;
      v6 += 2;
      v4 = v8 + 4;
      v14 = v8 + 4;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  sub_100F14C18(v11);
  return v4;
}

uint64_t sub_10115DC58(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10115DB48(result, a4);
  }

  return result;
}

void sub_10115DCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10003CA58(&a9);
  _Unwind_Resume(a1);
}

void sub_10115DCE0(uint64_t a1)
{
  *a1 = off_101F13250;
  sub_10115DA34(a1 + 96);
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  IDSServiceWrapper::~IDSServiceWrapper(a1);
}

void sub_10115DD8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F13320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10115DE08(ServiceManager::Service *this)
{
  *this = off_101F13370;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10115DE64(ServiceManager::Service *this)
{
  *this = off_101F13370;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10115DEE4@<X0>(void *a1@<X8>)
{
  v2 = 1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10115DF28(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10115D180(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10115D180(v4, 0);
}

void sub_10115DFC8(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10115E0A8(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10115E22C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F133F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10115E260(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10115E2AC(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  Registry::createRestModuleOneTimeUseConnection(&v9, *(*v1 + 64));
  ctu::RestModule::connect();
  if (v10)
  {
    sub_100004A34(v10);
  }

  v3 = v2 + 12;
  v11[0] = off_101F13470;
  v11[1] = v2 + 10;
  v12 = v11;
  if (v11 != v2 + 12)
  {
    v4 = v2[15];
    if (v4 == v3)
    {
      v13[1] = v2 + 10;
      v13[2] = 0;
      v12 = 0;
      v13[0] = off_101F13470;
      (*(*v4 + 24))(v4, v11);
      (*(*v2[15] + 32))(v2[15]);
      v2[15] = 0;
      v12 = v11;
      (*(v13[0] + 24))(v13, v2 + 12);
      (*(v13[0] + 32))(v13);
    }

    else
    {
      v2[12] = off_101F13470;
      v2[13] = v2 + 10;
      v12 = v4;
    }

    v2[15] = v3;
  }

  sub_10115DA80(v11);
  v5 = v2[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, v2 + 16);
  }

  sub_1000FF844(&v8);
  return sub_1000049E0(&v7);
}

void sub_10115E4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10115E56C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F13470;
  a2[1] = v2;
  return result;
}

void sub_10115E598(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (*(a2 + 24) == 1)
  {
    rest::write_rest_value();
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/paired_device");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_10115E658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10115E69C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10115E6E8(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I paired device monitor is starting", buf, 2u);
  }

  [*(v1 + 48) addDelegate:*(v1 + 56) queue:*(v1 + 24)];
  sub_10115D288(v1);
  operator delete();
}

uint64_t *sub_10115E7B4(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  [*(*v1 + 48) removeDelegate:{*(*v1 + 56), a1, v1}];
  ctu::RestModule::disconnect((v2 + 80));
  sub_1000FF844(&v5);
  return sub_1000049E0(&v4);
}

void sub_10115E804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10115E820(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 56);
    v4 = *(a1 + 40);
    if (v3 != v4 || v3 == 0)
    {
      if (v3 == v4)
      {
        goto LABEL_35;
      }

      v6 = (v2 + 32);
      if (v3)
      {
        v20 = (v2 + 32);
        sub_10003CA58(&v20);
        *(v2 + 56) = 0;
      }

      else
      {
        *v6 = 0;
        *(v2 + 40) = 0;
        *(v2 + 48) = 0;
        *(v2 + 32) = *(a1 + 16);
        *(v2 + 48) = *(a1 + 32);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(v2 + 56) = 1;
      }
    }

    else
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      v6 = (v2 + 32);
      v9 = *(a1 + 16);
      if (v8 - v7 == *(a1 + 24) - v9)
      {
        if (v7 == v8)
        {
          goto LABEL_35;
        }

        v10 = 0;
        while (1)
        {
          v11 = v9 + v10;
          v12 = *(v7 + v10 + 23);
          if (v12 >= 0)
          {
            v13 = *(v7 + v10 + 23);
          }

          else
          {
            v13 = *(v7 + v10 + 8);
          }

          v14 = *(v11 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v11 + 8);
          }

          if (v13 != v14)
          {
            break;
          }

          v16 = v12 >= 0 ? (v7 + v10) : *(v7 + v10);
          v17 = v15 >= 0 ? (v9 + v10) : *v11;
          if (memcmp(v16, v17, v13) || *(v7 + v10 + 24) != *(v9 + v10 + 24) || *(v7 + v10 + 25) != *(v9 + v10 + 25) || *(v7 + v10 + 26) != *(v9 + v10 + 26))
          {
            break;
          }

          v10 += 32;
          if (v7 + v10 == v8)
          {
            goto LABEL_35;
          }
        }
      }

      sub_1008F0F98(v2 + 32);
      *(v2 + 32) = *(a1 + 16);
      *(v2 + 48) = *(a1 + 32);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }

    v18 = *(v2 + 24);
    if (v18)
    {
      (*(*v18 + 48))(v18, v6);
    }
  }

LABEL_35:
  if (*(a1 + 40) == 1)
  {
    v20 = (a1 + 16);
    sub_10003CA58(&v20);
  }

  return a1;
}

void sub_10115EA1C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10115ED4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_10115EEC8(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, a1);
  operator new();
}

uint64_t sub_10115EFBC(uint64_t a1)
{
  v2 = (*(**(a1 + 72) + 32))(*(a1 + 72));
  if ((v2 & 0x100) == 0)
  {
    *(a1 + 144) = 0;
    v3 = a1 + 144;
    result = *(v3 - 8);
    if (!result)
    {
      return result;
    }

    (*(*result + 48))(result, v3);
    return 0;
  }

  v5 = *(a1 + 144);
  if (v2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *(a1 + 144) = v6;
  v7 = *(a1 + 136);
  if (v7)
  {
    (*(*v7 + 48))(v7, a1 + 144);
    v6 = *(a1 + 144);
  }

  if (v5 == v6)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = asString();
    v11 = 2080;
    v12 = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N User airplane mode preference changing from %s to %s", &v9, 0x16u);
  }

  return 1;
}

BOOL sub_10115F148(void *a1, int a2)
{
  v4 = a1[11];
  v5 = a1[4];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = CSIBOOLAsString(a2);
    v8 = *(a1[11] + 68);
    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8 == 2;
    *&buf[18] = 1024;
    *&buf[20] = v8 == 0;
    v9 = "#I AirplaneMode status: %s (held: acquired=%d, revoked=%d)";
    v10 = v5;
    v11 = 24;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    *&buf[4] = CSIBOOLAsString(a2);
    v9 = "#I AirplaneMode status: %s (not held)";
    v10 = v5;
    v11 = 12;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:
  if (a2)
  {
    if (!a1[11])
    {
      sub_10000501C(buf, "/cc/assertions/airplane_mode");
      ctu::rest::AssertionHandle::create();
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v12 = a1[12];
      *(a1 + 11) = v15;
      if (v12)
      {
        sub_100004A34(v12);
      }

      *buf = off_101F137F0;
      *&buf[8] = a1;
      v17 = buf;
      ctu::rest::AssertionHandle::setHandler_impl();
      sub_10000FF50(buf);
    }
  }

  else
  {
    v13 = a1[12];
    a1[11] = 0;
    a1[12] = 0;
    if (v13)
    {
      sub_100004A34(v13);
    }
  }

  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_1015028EC;
  v17 = &unk_101F463F8;
  v18 = a2;
  return sub_101502740(0x80014);
}

uint64_t sub_10115F3A8(uint64_t a1)
{
  result = (*(**(a1 + 72) + 48))(*(a1 + 72));
  v3 = result;
  v6 = result;
  v4 = *(a1 + 185);
  if (v4 == BYTE1(result) && (result & 0x100) != 0)
  {
    if (*(a1 + 184) == result)
    {
      return result;
    }
  }

  else if (v4 == (result & 0xFF00) >> 8)
  {
    return result;
  }

  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = printers::asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Telephony enabled changed to: %s", buf, 0xCu);
    v3 = v6;
  }

  *(a1 + 184) = v3;
  result = *(a1 + 176);
  if (result)
  {
    return (*(*result + 48))(result, a1 + 184);
  }

  return result;
}

void sub_10115F4F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = printers::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Restricted power mode: %s", &v13, 0xCu);
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 88);
  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = CSIBOOLAsString(*(v3 + 68) == 2);
    v6 = CSIBOOLAsString(*(*(a1 + 88) + 68) == 0);
    v13 = 136315394;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    v7 = "#I Assertion granted (%s) revoked (%s)";
    v8 = v2;
    v9 = 22;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    LOWORD(v13) = 0;
    v7 = "#I Assertion not held";
    v8 = v2;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
LABEL_9:
  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asString();
    v13 = 136315138;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Airplane mode user preference: %s", &v13, 0xCu);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = printers::asString();
    v13 = 136315138;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Telephony enabled: %s", &v13, 0xCu);
  }
}

uint64_t sub_10115F6E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10115F768(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10115F7BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10115F7FC(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1003336BC((result + 19));
    sub_10115F6E4((v1 + 14));
    v2 = v1[12];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[10];
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = v1[8];
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = v1[6];
    if (v5)
    {
      sub_100004A34(v5);
    }

    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_10115F894(ServiceManager::Service *this)
{
  *this = off_101F13560;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10115F8F0(ServiceManager::Service *this)
{
  *this = off_101F13560;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10115F970@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10115F9B4(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10115EEC8(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10115EEC8(v4, 0);
}

void sub_10115FA54(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, v1);
  operator new();
}

void sub_10115FB30(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, v3);
  operator new();
}

uint64_t *sub_10115FC40(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 56));
  (*(**(v2 + 72) + 24))(*(v2 + 72));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10115FCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10115FD08(void *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  sub_100004AA0(buf, v2);
  v4 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v5 = v2[2];
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  operator new();
}

void sub_101160024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, dispatch_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1000062D4(&a24);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1011600C8(void *a1)
{
  *a1 = off_101F135E0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101160114(void *a1)
{
  *a1 = off_101F135E0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1011601F4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F135E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101160234(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101160244(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101160284(void *a1)
{
  v2 = a1[3];
  if (!v2)
  {
    return;
  }

  v3 = a1[1];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (a1[2])
  {
    v6 = sub_10115EFBC(v3);
    v7 = (*(**(v3 + 72) + 40))(*(v3 + 72));
    v8 = v7 & 0x100 | (v7 & ((v7 << 7) >> 15));
    if ((v7 & 0x100) == 0 || *(v3 + 105) == 1 && *(v3 + 104) == v7)
    {
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = *(v3 + 32);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = "Low Power";
        v15 = 2080;
        v16 = printers::asString();
        v17 = 2080;
        v18 = printers::asString();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N %s mode is changing from %s to %s", buf, 0x20u);
      }

      *(v3 + 104) = v8;
    }

    v10 = *(v3 + 144);
    if (v10 == 2)
    {
      v11 = 1;
    }

    else if (*(v3 + 105) == 1)
    {
      v11 = *(v3 + 104);
    }

    else
    {
      if (v10 != 1)
      {
        v12 = *(v3 + 32);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not determine if airplane mode is enabled or not!", buf, 2u);
        }

        goto LABEL_20;
      }

      v11 = 0;
    }

    sub_10115F148(v3, v11 & 1);
LABEL_20:
    sub_10115F3A8(v3);
  }

  sub_100004A34(v5);
}

uint64_t sub_1011604CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101160594(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F13660;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011605CC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1011605F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011606B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F136E0;
  a2[1] = v2;
  return result;
}

void sub_1011606DC(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/props/airplane_mode_user_preference");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_101160790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1011607D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101160820(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_101160A80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_101160AFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F13770;
  a2[1] = v2;
  return result;
}

void sub_101160B28(uint64_t a1, _BYTE *a2)
{
  if (a2[1] != 1 || (v2 = xpc_BOOL_create(*a2 & 1)) == 0)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/telephony_enabled");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_101160BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_101160C3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101160C88(uint64_t **a1)
{
  v6 = a1;
  v1 = **a1;
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  v3 = (*(**(v1 + 72) + 40))(*(v1 + 72));
  *(v1 + 104) = v3 & 0x100 | (v3 & ((v3 << 7) >> 15));
  sub_10115EFBC(v1);
  v4 = *(v1 + 144);
  if (v4 == 2)
  {
    v5 = 1;
  }

  else if (*(v1 + 105) == 1)
  {
    v5 = *(v1 + 104);
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_10;
    }

    v5 = 0;
  }

  sub_10115F148(v1, v5 & 1);
LABEL_10:
  sub_10115F3A8(v1);
  operator delete();
}

uint64_t sub_101160E48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F137F0;
  a2[1] = v2;
  return result;
}

void sub_101160E74(uint64_t a1, _BYTE *a2)
{
  v3 = *(*(a1 + 8) + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v4 = "is";
    }

    else
    {
      v4 = "is NOT";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Airplane mode assertion %s granted", &v5, 0xCu);
  }
}

uint64_t sub_101160F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101160F7C(uint64_t a1, void *a2, const void **a3, const void **a4)
{
  ctu::OsLogContext::OsLogContext(&keys, kCtLoggingSystemName, "cb.update.country.match");
  ctu::OsLogLogger::OsLogLogger(&values, &keys);
  ctu::OsLogLogger::OsLogLogger(a1, &values);
  ctu::OsLogLogger::~OsLogLogger(&values);
  ctu::OsLogContext::~OsLogContext(&keys);
  *(a1 + 8) = *a2;
  v8 = a2[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10005C7A4((a1 + 24), a4);
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 32) = 0;
  v9 = (a1 + 32);
  *(a1 + 40) = 0;
  v10 = (a1 + 40);
  *(a1 + 48) = 0;
  v11 = (a1 + 48);
  *(a1 + 72) = 0;
  v12 = *(a1 + 16);
  v37 = *(a1 + 8);
  v38 = v12;
  cf = 0;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v36, a3);
  sub_1010AF8CC(a1, &v37, &v36, &cf);
  sub_10001021C(&v36);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (cf)
  {
    theDict = cf;
    CFRetain(cf);
    Value = CFDictionaryGetValue(theDict, @"CountryId");
    v14 = Value;
    if (Value && (v15 = CFGetTypeID(Value), v15 == CFDictionaryGetTypeID()))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      Count = CFDictionaryGetCount(v14);
      keys.var0 = 0;
      keys.var1.fRef = 0;
      v44 = 0;
      sub_10007D780(&keys, Count);
      values = 0;
      v41 = 0;
      v42 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(v14, keys.var0, values);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v18 = *&keys.var0[8 * i];
          if (v18)
          {
            v19 = CFGetTypeID(*&keys.var0[8 * i]);
            if (v19 != CFStringGetTypeID())
            {
              v18 = 0;
            }
          }

          v20 = values[i];
          if (v20)
          {
            v21 = CFGetTypeID(values[i]);
            if (v21 == CFDictionaryGetTypeID())
            {
              v22 = CFDictionaryGetValue(v20, @"BundleMapKey");
              v23 = v22;
              if (v22)
              {
                v24 = CFGetTypeID(v22);
                if (v24 == CFStringGetTypeID())
                {
                  CFDictionarySetValue(Mutable, v18, v23);
                }
              }
            }
          }
        }
      }

      sub_100010180(&v35, &Mutable);
      if (values)
      {
        v41 = values;
        operator delete(values);
      }

      if (keys.var0)
      {
        keys.var1.fRef = keys.var0;
        operator delete(keys.var0);
      }

      sub_1000296E0(&Mutable);
    }

    else
    {
      v35 = 0;
    }

    if (v9 != &v35)
    {
      keys.var0 = *v9;
      *v9 = v35;
      v35 = 0;
      sub_10001021C(&keys.var0);
    }

    sub_10001021C(&v35);
    sub_10001021C(&theDict);
    values = CFDictionaryGetValue(cf, @"BundleMappings");
    keys.var0 = 0;
    sub_100010180(&keys, &values);
    v25 = *v11;
    *v11 = keys.var0;
    keys.var0 = v25;
    sub_10001021C(&keys.var0);
    v26 = cf;
    v33 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v27 = CFDictionaryGetValue(v26, @"Bundles");
    v28 = v27;
    if (v27 && (v29 = CFGetTypeID(v27), v29 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryGetCount(v28))
      {
        values = v28;
        CFRetain(v28);
LABEL_39:
        if (v10 != &values)
        {
          keys.var0 = *v10;
          *v10 = v28;
          values = 0;
          sub_10001021C(&keys.var0);
        }

        sub_10001021C(&values);
        sub_10001021C(&v33);
        goto LABEL_42;
      }

      v30 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(keys.var0) = 0;
        v31 = "#I Bundles has 0 elements";
        goto LABEL_37;
      }
    }

    else
    {
      v30 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(keys.var0) = 0;
        v31 = "#I Bundles is not found in version.xml";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, &keys, 2u);
      }
    }

    v28 = 0;
    values = 0;
    goto LABEL_39;
  }

LABEL_42:
  sub_10001021C(&cf);
  return a1;
}

void sub_1011613CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, const void *a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1000296E0((v25 - 88));
  sub_10001021C(&a10);
  sub_10001021C(&a15);
  sub_100009970(v23, *(v20 + 64));
  sub_10001021C(v24);
  sub_10001021C(v21);
  sub_10001021C(v22);
  sub_100005978((v20 + 24));
  v27 = *(v20 + 16);
  if (v27)
  {
    sub_100004A34(v27);
  }

  ctu::OsLogLogger::~OsLogLogger(v20);
  _Unwind_Resume(a1);
}

const void **sub_1011614D0@<X0>(uint64_t a1@<X0>, CFDictionaryRef *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 32);
  if (!*(a1 + 32) || !*(a1 + 48) || !*(a1 + 40))
  {
    *a3 = 3;
    *(a3 + 8) = 0;
    *&buf = 0;
    return sub_10001021C(&buf);
  }

  Value = CFDictionaryGetValue(*a2, @"kUpdateBundleType");
  v8 = Value;
  LODWORD(buf) = 0;
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&buf, v8, v10);
      LODWORD(v8) = buf;
    }

    else
    {
      LODWORD(v8) = 0;
    }
  }

  v12 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v13 = asString();
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Checking update for %s", &buf, 0xCu);
  }

  if (v8 == 3)
  {
    sub_100010024(&v54, a2);
    sub_100AB13E4(&v54, __p);
    if (__p != a2)
    {
      *&buf = *a2;
      *a2 = __p[0];
      __p[0] = 0;
      sub_10001021C(&buf);
    }

    sub_10001021C(__p);
    sub_10001021C(&v54);
  }

  key = 0;
  v53 = 0;
  sub_100010024(&v51, v4);
  sub_1010AEEFC(a1, (a1 + 8), &v51, *a2, __p);
  *&buf = key;
  key = __p[0];
  __p[0] = 0;
  sub_100005978(&buf);
  sub_100005978(__p);
  sub_10001021C(&v51);
  if (!key)
  {
    v16 = *a1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N Did not get the bundle Map key to look for the update", &buf, 2u);
    }

    *a3 = 3;
    *(a3 + 8) = 0;
    *&buf = 0;
    sub_10001021C(&buf);
    goto LABEL_56;
  }

  v14 = *a2;
  __p[0] = v14;
  if (v14)
  {
    CFRetain(v14);
    v15 = __p[0];
  }

  else
  {
    v15 = 0;
  }

  *&buf = v53;
  v53 = v15;
  __p[0] = 0;
  sub_10000A1EC(&buf);
  sub_10000A1EC(__p);
  v17 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    buf = 0uLL;
    v59 = 0;
    ctu::cf::assign();
    *__p = buf;
    v56 = v59;
    v18 = buf;
    if (v59 >= 0)
    {
      v18 = __p;
    }

    *v57 = 136446210;
    *&v57[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N The best match found from the version.xml is %{public}s", v57, 0xCu);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p[0]);
    }
  }

  buf = 0uLL;
  v59 = 0;
  sub_10082F9B4(&buf);
  sub_100005BA0(a1 + 56, &buf);
  if ((v19 & 1) == 0)
  {
    v34 = *a1;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      p_buf = &buf;
      if (v59 < 0)
      {
        p_buf = buf;
      }

      LODWORD(__p[0]) = 136446210;
      *(__p + 4) = p_buf;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#N %{public}s is already covered", __p, 0xCu);
    }

    *a3 = 3;
    *(a3 + 8) = 0;
    __p[0] = 0;
    sub_10001021C(__p);
    goto LABEL_54;
  }

  v50 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v21 = v50;
    v50 = Mutable;
    __p[0] = v21;
    sub_1000296E0(__p);
  }

  sub_1001768B8(v50, @"BundleID", key);
  cf = 0;
  v22 = CFDictionaryGetValue(*(a1 + 48), key);
  v23 = v22;
  if (!v22 || (v24 = CFGetTypeID(v22), v24 != CFDictionaryGetTypeID()))
  {
    cf = 0;
    goto LABEL_49;
  }

  cf = v23;
  CFRetain(v23);
  if (!v23)
  {
LABEL_49:
    v36 = *a1;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = &buf;
      if (v59 < 0)
      {
        v39 = buf;
      }

      LODWORD(__p[0]) = 136446210;
      *(__p + 4) = v39;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "No entry for bundle Map key %{public}s in BundleMappings", __p, 0xCu);
    }

    LOBYTE(__p[0]) = 3;
    __p[1] = v50;
    if (v50)
    {
      CFRetain(v50);
    }

    *a3 = 3;
    sub_100010180((a3 + 8), &__p[1]);
    sub_1000296E0(&__p[1]);
    goto LABEL_53;
  }

  v47 = cf;
  *type = 0;
  CFRetain(v23);
  sub_101161EB0(type, a1, &v47);
  sub_10001021C(&v47);
  if (!*type)
  {
    v38 = *a1;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#N No bundleMatchEntry in BundleMap", __p, 2u);
    }

    LOBYTE(__p[0]) = 3;
    __p[1] = v50;
    if (v50)
    {
      CFRetain(v50);
    }

    *a3 = 3;
    sub_100010180((a3 + 8), &__p[1]);
    sub_1000296E0(&__p[1]);
    goto LABEL_68;
  }

  v46 = 0;
  v25 = CFDictionaryGetValue(*(a1 + 40), *type);
  v26 = v25;
  if (!v25 || (v27 = CFGetTypeID(v25), v27 != CFDictionaryGetTypeID()))
  {
    v46 = 0;
LABEL_59:
    v37 = *a1;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10082F9B4(__p);
      v41 = v56 >= 0 ? __p : __p[0];
      *v57 = 136446210;
      *&v57[4] = v41;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "No dict under bundles with key %{public}s ", v57, 0xCu);
      if (SHIBYTE(v56) < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(__p[0]) = 3;
    sub_100029714(&__p[1], &v50);
    *a3 = __p[0];
    sub_100010180((a3 + 8), &__p[1]);
    goto LABEL_61;
  }

  v46 = v26;
  CFRetain(v26);
  if (!v26)
  {
    goto LABEL_59;
  }

  v45 = v46;
  CFRetain(v26);
  sub_100010024(&v44, a2);
  v28 = sub_10116293C(a1, &v45, &v44);
  sub_10001021C(&v44);
  sub_10001021C(&v45);
  if (v28)
  {
    *v43 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v46);
    *v57 = 0;
    __p[0] = v8;
    v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, __p);
    if (v29)
    {
      v30 = *v57;
      *v57 = v29;
      __p[0] = v30;
      sub_100029A48(__p);
    }

    v31 = *v57;
    v42 = *v57;
    *v57 = 0;
    sub_100029A48(v57);
    sub_100209DF4(*v43, @"kUpdateBundleType", v31);
    sub_100029A48(&v42);
    v32 = *a1;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 138543362;
      *(__p + 4) = *v43;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Updated bundle available. Printing dict %{public}@", __p, 0xCu);
    }

    LOBYTE(__p[0]) = 4;
    sub_100029714(&__p[1], v43);
    *a3 = __p[0];
    sub_100010180((a3 + 8), &__p[1]);
    sub_1000296E0(&__p[1]);
    v33 = v43;
    goto LABEL_62;
  }

  v40 = *a1;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Not a new bundle, nothing to download", __p, 2u);
  }

  LOBYTE(__p[0]) = 3;
  sub_100029714(&__p[1], &v50);
  *a3 = __p[0];
  sub_100010180((a3 + 8), &__p[1]);
LABEL_61:
  v33 = &__p[1];
LABEL_62:
  sub_1000296E0(v33);
  sub_10001021C(&v46);
LABEL_68:
  sub_100005978(type);
LABEL_53:
  sub_10001021C(&cf);
  sub_1000296E0(&v50);
LABEL_54:
  if (SHIBYTE(v59) < 0)
  {
    operator delete(buf);
  }

LABEL_56:
  sub_100005978(&key);
  return sub_10000A1EC(&v53);
}

void sub_101161D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va6, a3);
  va_start(va5, a3);
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v15 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v17 = va_arg(va5, const void *);
  v19 = va_arg(va5, void);
  va_copy(va6, va5);
  v20 = va_arg(va6, const void *);
  sub_1000296E0((v3 + 8));
  sub_1000296E0(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  sub_10001021C(va3);
  sub_1000296E0(va4);
  if (*(v4 - 89) < 0)
  {
    operator delete(*(v4 - 112));
  }

  sub_100005978(va5);
  sub_10000A1EC(va6);
  _Unwind_Resume(a1);
}

void sub_101161EB0(const void **a1, uint64_t a2, CFDictionaryRef *a3)
{
  *a1 = 0;
  if (*a3)
  {
    v98 = 0;
    ServiceMap = Registry::getServiceMap(*(a2 + 8));
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    buf.__r_.__value_.__r.__words[0] = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &buf);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    (*(*v13 + 120))(&v98, v13);
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    if (!v98)
    {
      v19 = *a2;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "currentOSVersion is missing.", &buf, 2u);
      }

LABEL_131:
      sub_100005978(&v98);
      return;
    }

    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    __str = buf;
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    p_str = &__str;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (!size)
    {
      goto LABEL_27;
    }

    v18 = 0;
    while (p_str->__r_.__value_.__s.__data_[v18] != 46)
    {
      if (size == ++v18)
      {
        goto LABEL_27;
      }
    }

    if (size == v18)
    {
LABEL_27:
      v95[0] = 0;
      v95[1] = 0;
      v96 = 0;
    }

    else
    {
      v95[0] = 0;
      v95[1] = 0;
      v96 = 0;
      if (v18 != -1)
      {
        std::string::basic_string(&buf, &__str, 0, v18, &keys);
LABEL_31:
        v20 = std::string::append(&buf, ".0", 2uLL);
        v21 = *&v20->__r_.__value_.__l.__data_;
        v96 = v20->__r_.__value_.__r.__words[2];
        *v95 = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v94 = 0;
        if (v96 >= 0)
        {
          v22 = v95;
        }

        else
        {
          v22 = v95[0];
        }

        v94 = CFStringCreateWithCString(kCFAllocatorDefault, v22, 0x8000100u);
        Count = CFDictionaryGetCount(*a3);
        keys = 0;
        v92 = 0;
        v93 = 0;
        sub_10007D780(&keys, Count);
        values = 0;
        v89 = 0;
        v90 = 0;
        sub_10007D780(&values, Count);
        __p[0] = 0;
        __p[1] = 0;
        v87 = 0;
        CFDictionaryGetKeysAndValues(*a3, keys, values);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v25 = values[i];
            if (v25 && (v26 = CFGetTypeID(values[i]), v26 == CFDictionaryGetTypeID()))
            {
              Value = CFDictionaryGetValue(v25, @"OS");
              v28 = Value;
              if (Value && (v29 = CFGetTypeID(Value), v29 == CFDictionaryGetTypeID()))
              {
                v30 = CFDictionaryGetValue(v28, @"Min");
                v31 = v30;
                if (v30)
                {
                  v32 = CFGetTypeID(v30);
                  if (v32 != CFStringGetTypeID())
                  {
                    v31 = 0;
                  }
                }

                v33 = CFDictionaryGetValue(v28, @"Max");
                v34 = v33;
                if (v33)
                {
                  v35 = CFGetTypeID(v33);
                  if (v35 != CFStringGetTypeID())
                  {
                    v34 = 0;
                  }
                }

                if (!v31)
                {
                  v47 = *a2;
                  if (!os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
                  {
                    continue;
                  }

                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  v44 = v47;
                  v45 = "OS Dict is missing min OS entry. This is a mandatory key. Skipping";
                  goto LABEL_63;
                }

                if (_CompareBundleVersionStrings(v31, v94) != -1 && _CompareBundleVersionStrings(v31, v98) != 1 && (!v34 || _CompareBundleVersionStrings(v98, v34) != 1))
                {
                  v36 = CFDictionaryGetValue(v25, @"Device");
                  v37 = v36;
                  if (!v36)
                  {
                    goto LABEL_88;
                  }

                  v38 = CFGetTypeID(v36);
                  if (v38 != CFDictionaryGetTypeID())
                  {
                    goto LABEL_88;
                  }

                  v39 = CFDictionaryGetValue(v37, @"Supported");
                  v40 = v39;
                  if (v39)
                  {
                    v41 = CFGetTypeID(v39);
                    if (v41 == CFArrayGetTypeID())
                    {
                      v42 = v40;
                    }

                    else
                    {
                      v42 = 0;
                    }
                  }

                  else
                  {
                    v42 = 0;
                  }

                  v48 = CFDictionaryGetValue(v37, @"UnSupported");
                  v49 = v48;
                  if (v48)
                  {
                    v50 = CFGetTypeID(v48);
                    if (v50 == CFArrayGetTypeID())
                    {
                      v51 = v49;
                    }

                    else
                    {
                      v51 = 0;
                    }

                    if (!v42)
                    {
                      if (v51)
                      {
                        v52 = CFArrayGetCount(v51);
                        if (v52 >= 1)
                        {
                          v53 = 0;
                          while (1)
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(v51, v53);
                            v55 = ValueAtIndex;
                            if (ValueAtIndex)
                            {
                              v56 = CFGetTypeID(ValueAtIndex);
                              if (v56 == CFStringGetTypeID() && CFStringCompare(v55, *(a2 + 24), 0) == kCFCompareEqualTo)
                              {
                                goto LABEL_104;
                              }
                            }

                            if (v52 == ++v53)
                            {
                              goto LABEL_88;
                            }
                          }
                        }
                      }

                      goto LABEL_88;
                    }
                  }

                  else if (!v42)
                  {
                    goto LABEL_88;
                  }

                  v57 = CFArrayGetCount(v42);
                  if (v57 >= 1)
                  {
                    v58 = 0;
                    while (1)
                    {
                      v59 = CFArrayGetValueAtIndex(v42, v58);
                      v60 = v59;
                      if (v59)
                      {
                        v61 = CFGetTypeID(v59);
                        if (v61 == CFStringGetTypeID() && CFStringCompare(v60, *(a2 + 24), 0) == kCFCompareEqualTo)
                        {
                          break;
                        }
                      }

                      if (v57 == ++v58)
                      {
                        goto LABEL_104;
                      }
                    }

LABEL_88:
                    v62 = keys[i];
                    if (v62)
                    {
                      v63 = CFGetTypeID(keys[i]);
                      if (v63 != CFStringGetTypeID())
                      {
                        v62 = 0;
                      }
                    }

                    v64 = __p[1];
                    if (__p[1] >= v87)
                    {
                      v66 = (__p[1] - __p[0]) >> 3;
                      if ((v66 + 1) >> 61)
                      {
                        sub_1000CE3D4();
                      }

                      v67 = (v87 - __p[0]) >> 2;
                      if (v67 <= v66 + 1)
                      {
                        v67 = v66 + 1;
                      }

                      if (v87 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v68 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v68 = v67;
                      }

                      if (v68)
                      {
                        sub_10005B2E0(__p, v68);
                      }

                      v69 = (8 * v66);
                      *v69 = v62;
                      v65 = (8 * v66 + 8);
                      v70 = v69 - (__p[1] - __p[0]);
                      memcpy(v70, __p[0], __p[1] - __p[0]);
                      v71 = __p[0];
                      __p[0] = v70;
                      __p[1] = v65;
                      v87 = 0;
                      if (v71)
                      {
                        operator delete(v71);
                      }
                    }

                    else
                    {
                      *__p[1] = v62;
                      v65 = v64 + 8;
                    }

                    __p[1] = v65;
                  }
                }
              }

              else
              {
                v46 = *a2;
                if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  v44 = v46;
                  v45 = "OS Dict is missing. Not a valid config. Skipping";
                  goto LABEL_63;
                }
              }
            }

            else
            {
              v43 = *a2;
              if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                v44 = v43;
                v45 = "criteriaDict is empty";
LABEL_63:
                _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v45, &buf, 2u);
              }
            }

LABEL_104:
            ;
          }
        }

        v72 = __p[0];
        if (__p[0] != __p[1])
        {
          buf.__r_.__value_.__r.__words[0] = sub_1010AF0F8;
          sub_100F1D2A8(__p[0], __p[1], &buf, 126 - 2 * __clz((__p[1] - __p[0]) >> 3), 1);
          v85 = 0;
          v73 = CFDictionaryGetValue(*a3, *(__p[1] - 1));
          v74 = v73;
          if (v73 && (v75 = CFGetTypeID(v73), v75 == CFDictionaryGetTypeID()))
          {
            v85 = v74;
            CFRetain(v74);
            v76 = v74;
          }

          else
          {
            v76 = 0;
            v85 = 0;
          }

          v77 = CFDictionaryGetValue(v76, @"BundleMatchEntry");
          v78 = v77;
          if (v77)
          {
            v79 = CFGetTypeID(v77);
            if (v79 == CFStringGetTypeID())
            {
              v80 = v78;
            }

            else
            {
              v80 = 0;
            }
          }

          else
          {
            v80 = 0;
          }

          buf.__r_.__value_.__r.__words[0] = v80;
          sub_10021D11C(a1, &buf.__r_.__value_.__l.__data_);
          v81 = *a2;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            memset(&buf, 0, sizeof(buf));
            ctu::cf::assign();
            v84 = buf;
            v82 = &v84;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v82 = v84.__r_.__value_.__r.__words[0];
            }

            *v100 = 136446210;
            v101 = v82;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I Matched bundle entry from BundleMap dict is %{public}s", v100, 0xCu);
            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v84.__r_.__value_.__l.__data_);
            }
          }

          sub_10001021C(&v85);
          v72 = __p[0];
        }

        if (v72)
        {
          __p[1] = v72;
          operator delete(v72);
        }

        if (values)
        {
          v89 = values;
          operator delete(values);
        }

        if (keys)
        {
          v92 = keys;
          operator delete(keys);
        }

        sub_100005978(&v94);
        if (SHIBYTE(v96) < 0)
        {
          operator delete(v95[0]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_131;
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __str;
    }

    goto LABEL_31;
  }

  v15 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N bundleMap empty.", &buf, 2u);
  }
}

void sub_1011627E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void **a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, const void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  sub_100005978(&a24);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_100005978((v37 - 152));
  sub_100005978(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10116293C(os_log_t *a1, CFDictionaryRef *a2, CFDictionaryRef *a3)
{
  Value = CFDictionaryGetValue(*a3, @"BundleIDOnTheDevice");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 != CFStringGetTypeID())
    {
      v7 = 0;
    }
  }

  v9 = CFDictionaryGetValue(*a3, @"BundleVersionOnTheDevice");
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 != CFStringGetTypeID())
    {
      v10 = 0;
    }
  }

  v12 = CFDictionaryGetValue(*a2, @"BundleVersion");
  v13 = v12;
  if (v12)
  {
    v14 = CFGetTypeID(v12);
    if (v14 != CFStringGetTypeID())
    {
      v13 = 0;
    }
  }

  v15 = CFDictionaryGetValue(*a2, @"BundleID");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFStringGetTypeID())
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  cf2 = v18;
  sub_1000481D4(&v42);
  v19 = std::string::insert(&v42, 0, "com.apple.", 0xAuLL);
  v20 = v19->__r_.__value_.__r.__words[0];
  v21 = SHIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__r.__words[0] = 0;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v22 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v21;
    ctu::cf::assign();
    *v37 = 0u;
    v38 = 0;
    v40 = 0uLL;
    ctu::cf::assign();
    *v35 = 0uLL;
    v36 = 0;
    v40 = 0uLL;
    v41 = 0;
    ctu::cf::assign();
    v34 = v41;
    *v33 = v40;
    v23 = SHIBYTE(v41);
    v24 = v40;
    v40 = 0uLL;
    v41 = 0;
    ctu::cf::assign();
    v25 = v33;
    if (v23 < 0)
    {
      v25 = v24;
    }

    *__p = v40;
    v32 = v41;
    v26 = __p;
    if (v41 < 0)
    {
      v26 = __p[0];
    }

    LODWORD(v42.__r_.__value_.__l.__data_) = 136446978;
    *(v42.__r_.__value_.__r.__words + 4) = v37;
    WORD2(v42.__r_.__value_.__r.__words[1]) = 2082;
    *(&v42.__r_.__value_.__r.__words[1] + 6) = v35;
    HIWORD(v42.__r_.__value_.__r.__words[2]) = 2082;
    v43 = v25;
    v44 = 2082;
    v45 = v26;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Current bundle ID %{public}s and version %{public}s, Available bundle ID: %{public}s and version %{public}s", &v42, 0x2Au);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    v21 = v30;
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[0]);
    }
  }

  v27 = sub_1010AF140(a1, v7, v10, cf2, v13);
  if ((v27 & 1) == 0)
  {
    v28 = *a1;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v42.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Not a new bundle, nothing to download", &v42, 2u);
    }
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  return v27;
}

void sub_101162CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a11 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_101162EB4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101162ECC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v7 = 0;
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_13;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_12;
  }

  ServiceMap = Registry::getServiceMap(v8);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v19 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v19);
  if (!v15)
  {
    v17 = 0;
LABEL_17:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_19;
  }

LABEL_18:
  (*(*v17 + 24))(v17, a2);
LABEL_19:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

LABEL_13:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101163024(_Unwind_Exception *a1)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_101163050(IMSClientFactory *this)
{
  *this = off_101F13918;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  IMSClientFactory::~IMSClientFactory(this);
}

void sub_1011630AC(IMSClientFactory *this)
{
  *this = off_101F13918;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  IMSClientFactory::~IMSClientFactory(this);

  operator delete();
}

void sub_10116313C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F13958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011631B8(IMSClientFactory *this)
{
  *this = off_101F13918;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  IMSClientFactory::~IMSClientFactory(this);
}

void sub_101163214(IMSClientFactory *this)
{
  *this = off_101F13918;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  IMSClientFactory::~IMSClientFactory(this);

  operator delete();
}

void sub_101163454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1011634C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleGPSSatsVisibility:v6 error:v5];
}

void *sub_101163AB8(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_101F13A10;
  v8 = [CTCLGPSSatsVisibilityAssertion alloc];
  v9 = sub_100032AC8(a2);
  a1[1] = [(CTCLGPSSatsVisibilityAssertion *)v8 initWithQueue:v9 bundleType:a3 callback:a4];

  return a1;
}

void sub_101163B70(id *a1)
{

  CTGPSSatsVisibilityProviderInterface::~CTGPSSatsVisibilityProviderInterface(a1);
}

void sub_101163BAC(id *a1)
{
  CTGPSSatsVisibilityProviderInterface::~CTGPSSatsVisibilityProviderInterface(a1);

  operator delete();
}

void sub_101163BFC(void *a1)
{
  if (!*a1)
  {
    __TUAssertTrigger();
  }

  sub_101163C6C();
}

void *sub_101163CF0(void *a1, id *a2, unsigned int *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F13A48;
  sub_101163AB8(a1 + 3, a2, *a3, a4);
  return a1;
}

void sub_101163D70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F13A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011641E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a30 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if ((a11 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(a1);
}

void sub_101164510(_Unwind_Exception *a1)
{
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1011648E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(a1);
}

void sub_101164C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101164C98(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseSuccess])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseSuccessNoIcon])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseCancelled])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseBack])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseTimeout])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseHelp])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseBusy])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseRefused])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:kCTSIMToolkitNotificationResponseNotSupported])
  {
    v2 = 9;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

void sub_101165094(_Unwind_Exception *a1)
{
  if ((v7 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_101165474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_101165838(_Unwind_Exception *a1)
{
  if ((v7 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_101165A98(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_101165CE8(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_101166038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1011664D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  if ((v35 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  _Unwind_Resume(a1);
}

void sub_10116673C(_Unwind_Exception *a1)
{
  v5 = v3;
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_101166780(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C2CC(&v2, &v1, "kCDPSetWebsheetVisibility", sub_1011667F8, 3);
}

void sub_1011667F8(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  *buf = 4096;
  if (IsTelephonyRunningExtended(buf) && xpc_dictionary_get_value(*a4, "kCDPSetWebsheetVisibility"))
  {
    *buf = a4;
    *&buf[8] = "kCDPSetWebsheetVisibility";
    sub_100006354(buf, &object);
    v7 = xpc::dyn_cast_or_default(&object, 0, v6);
    xpc_release(object);
    if ((atomic_load_explicit(&qword_101FC8CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FC8CC0))
    {
      LogGroupName = sGetLogGroupName();
      ctu::OsLogLogger::OsLogLogger(&qword_101FC8CB8, kCtLoggingSystemName, LogGroupName);
      __cxa_guard_release(&qword_101FC8CC0);
    }

    v8 = qword_101FC8CB8;
    if (os_log_type_enabled(qword_101FC8CB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I XPC SetDataPlanWebSheetVisibility %d", buf, 8u);
    }

    *buf = 0;
    *&buf[8] = 0;
    v9.n128_f64[0] = sub_10006C5D0(buf);
    if (!*buf)
    {
      goto LABEL_19;
    }

    v10 = v7;
    (*(**buf + 48))(v9);
    ServiceMap = Registry::getServiceMap(*a1);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    object = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, &object);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        if (!v19)
        {
LABEL_17:
          if ((v20 & 1) == 0)
          {
            sub_100004A34(v18);
          }

LABEL_19:
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          return;
        }

LABEL_16:
        (*(*v19 + 160))(v19, v10 != 0);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }
}

uint64_t sub_101166B14(uint64_t a1)
{
  *(a1 + 27) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 44) = 8;
  *(a1 + 48) = 0;
  *(a1 + 76) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  CSIPhoneNumber::CSIPhoneNumber((a1 + 80));
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 280) = 255;
  *(a1 + 284) = 0;
  *(a1 + 288) = -1;
  *(a1 + 320) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 336) = 1;
  *(a1 + 408) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  MCCAndMNC::MCCAndMNC((a1 + 416));
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 536) = a1 + 544;
  *(a1 + 568) = 0;
  *(a1 + 584) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = a1 + 568;
  *(a1 + 600) = 0;
  *(a1 + 592) = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  return a1;
}

void sub_101166C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 415) < 0)
  {
    operator delete(*(v10 + 392));
  }

  v15 = *(v10 + 368);
  if (v15)
  {
    *(v10 + 376) = v15;
    operator delete(v15);
  }

  if (*(v10 + 367) < 0)
  {
    operator delete(*v13);
  }

  v16 = *(v10 + 328);
  *(v10 + 328) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(v10 + 320);
  *(v10 + 320) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  sub_1000212F4(&a10);
  sub_10006DCAC(v10 + 256, *v12);
  sub_10034F8E8(v10 + 80);
  if (*(v10 + 71) < 0)
  {
    operator delete(*v11);
  }

  v18 = *(v10 + 32);
  if (v18)
  {
    sub_100004A34(v18);
  }

  a10 = v10;
  sub_1000212F4(&a10);
  _Unwind_Resume(a1);
}

void sub_101166D14(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_100074920(a2, a1 + 536);
  v4 = *(a1 + 560);
  v5 = (a1 + 568);
  if (v4 != v5)
  {
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v10 = 0;
      if (*(v4 + 55) < 0)
      {
        sub_100005F2C(__p, v4[4], v4[5]);
      }

      else
      {
        *__p = *(v4 + 2);
        v10 = v4[6];
      }

      sub_100005BA0(a2, __p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }
}

std::string *sub_101166E24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 23) = 11;
  *(a2 + 7) = 542842979;
  *a2 = *" dynamic [ ";
  v4 = a1[70];
  v5 = a1 + 71;
  if (v4 != a1 + 71)
  {
    do
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v28 = 0;
      if (*(v4 + 55) < 0)
      {
        sub_100005F2C(__dst, v4[4], v4[5]);
      }

      else
      {
        *__dst = *(v4 + 2);
        v28 = v4[6];
      }

      if (v28 >= 0)
      {
        v6 = HIBYTE(v28);
      }

      else
      {
        v6 = __dst[1];
      }

      v25 = 0;
      v26 = 0;
      __p = 0;
      sub_1000677C4(&__p, v6 + 1);
      if (v26 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v6)
      {
        if (v28 >= 0)
        {
          v8 = __dst;
        }

        else
        {
          v8 = __dst[0];
        }

        memmove(p_p, v8, v6);
      }

      *&p_p[v6] = 32;
      if (v26 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      if (v26 >= 0)
      {
        v10 = HIBYTE(v26);
      }

      else
      {
        v10 = v25;
      }

      std::string::append(a2, v9, v10);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst[0]);
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }

  std::string::append(a2, "] bundle [ ", 0xBuLL);
  v14 = a1[67];
  v15 = a1 + 68;
  if (v14 != a1 + 68)
  {
    do
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v28 = 0;
      if (*(v14 + 55) < 0)
      {
        sub_100005F2C(__dst, v14[4], v14[5]);
      }

      else
      {
        *__dst = *(v14 + 2);
        v28 = v14[6];
      }

      if (v28 >= 0)
      {
        v16 = HIBYTE(v28);
      }

      else
      {
        v16 = __dst[1];
      }

      v25 = 0;
      v26 = 0;
      __p = 0;
      sub_1000677C4(&__p, v16 + 1);
      if (v26 >= 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p;
      }

      if (v16)
      {
        if (v28 >= 0)
        {
          v18 = __dst;
        }

        else
        {
          v18 = __dst[0];
        }

        memmove(v17, v18, v16);
      }

      *&v17[v16] = 32;
      if (v26 >= 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p;
      }

      if (v26 >= 0)
      {
        v20 = HIBYTE(v26);
      }

      else
      {
        v20 = v25;
      }

      std::string::append(a2, v19, v20);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst[0]);
      }

      v21 = v14[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v14[2];
          v13 = *v22 == v14;
          v14 = v22;
        }

        while (!v13);
      }

      v14 = v22;
    }

    while (v22 != v15);
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_101167108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101167164(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t sub_1011674A8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4 = 0;
  (*(*v1 + 16))(v1, v3);
  return sub_100296578(v3);
}

void sub_10116753C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100296578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101167550(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4 = 0;
  (*(*v1 + 16))(v1, v3);
  return sub_100296578(v3);
}

void sub_1011675E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100296578(va);
  _Unwind_Resume(a1);
}

void sub_101167668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AKRemoteDeviceObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_101167730(void *a1)
{
  *a1 = off_101F13A98;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  AKRemoteDeviceServiceInterface::~AKRemoteDeviceServiceInterface(a1);
}

void sub_1011677A0(void *a1)
{
  sub_101167730(a1);

  operator delete();
}

void sub_1011677D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1011678B8(Registry **a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  __p = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &__p);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_8:
    std::mutex::unlock(v4);
    v10 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v13 = 0;
LABEL_9:
  if ((capabilities::ct::supportsSequoia(v12) & 1) != 0 || GestaltUtilityInterface::isIPhone(v11))
  {
    *a2 = 0;
    a2[1] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_101167DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v18);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(a1);
}

void sub_101167F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10116808C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_10116B520(&v5, a2);
  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1011681BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011681D4(uint64_t a1)
{
  *a1 = off_101F13AC8;
  *(a1 + 8) = off_101F13AF8;
  if (*(a1 + 224) == 1)
  {
    v4 = (a1 + 200);
    sub_1003E9950(&v4);
  }

  sub_10116A4D4(a1 + 168);
  if (*(a1 + 160) == 1)
  {
    sub_10028B908(a1 + 136, *(a1 + 144));
  }

  sub_10116A554(a1 + 104);

  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));

  AKRemoteDeviceServiceInterface::~AKRemoteDeviceServiceInterface(a1);
}

void sub_1011682CC(uint64_t a1)
{
  sub_1011681D4(a1);

  operator delete();
}

void sub_101168304(uint64_t a1)
{
  sub_1011681D4(a1 - 8);

  operator delete();
}

void sub_101168340(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v19 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  memset(v20, 0, sizeof(v20));
  sub_10116BE4C(v20, a2);
  v5 = *(a1 + 96);
  v6 = *(a1 + 48);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Fetching Authkit devices", buf, 2u);
    }

    v8 = objc_alloc_init(ACAccountStore);
    if (v8)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3321888768;
      v16[2] = sub_1011688B8;
      v16[3] = &unk_101F13B78;
      v16[4] = a1;
      object = v19;
      if (v19)
      {
        dispatch_retain(v19);
      }

      sub_10116B520(v18, v20);
      [v8 aa_primaryAppleAccountWithCompletion:v16];
      sub_100296578(v18);
      if (object)
      {
        dispatch_release(object);
      }
    }

    else
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid account store", buf, 2u);
      }

      sub_1011687B8(a1);
      v11[0] = 0;
      v11[1] = 0;
      v10 = v11;
      sub_101168654(&v19, 1, &v10);
      sub_10028B908(&v10, v11[0]);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Not signed into iCloud. Skipping fetch.", buf, 2u);
    }

    v15[0] = 0;
    v15[1] = 0;
    *buf = v15;
    if (sub_10116BECC(a1 + 136, v15, 0))
    {
      sub_10116C000(a1 + 104, buf);
    }

    sub_10028B908(buf, v15[0]);
    v13[0] = 0;
    v13[1] = 0;
    v12 = v13;
    sub_101168654(&v19, 6, &v12);
    sub_10028B908(&v12, v13[0]);
  }

  sub_100296578(v20);
  if (v19)
  {
    dispatch_release(v19);
  }
}

void sub_1011685D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, dispatch_object_t object)
{
  sub_10028B908(&a9, a10);

  sub_10116A330((v25 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_101168654(uint64_t result, char a2, void *a3)
{
  if (*(result + 32))
  {
    sub_10116B520(v7, result + 8);
    v7[32] = a2;
    v5 = a3 + 1;
    v6 = a3[1];
    v8 = *a3;
    v9 = v6;
    if (a3[2])
    {
      *(v6 + 16) = &v9;
      *a3 = v5;
      *v5 = 0;
      a3[2] = 0;
    }

    else
    {
      v8 = &v9;
    }

    operator new();
  }

  return result;
}

void sub_1011687AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1011687B8(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v3 = &v4;
  if (sub_10116BECC(a1 + 136, &v4, 0))
  {
    sub_10116C000(a1 + 104, &v3);
  }

  sub_10028B908(&v3, v4);
  v3 = 0;
  v4 = 0;
  v5 = 0;
  if (sub_10116C070((a1 + 200), 0, 0))
  {
    sub_1003F1F98(a1 + 200, &v3);
    v2 = *(a1 + 192);
    if (v2)
    {
      (*(*v2 + 48))(v2, a1 + 200);
    }
  }

  v6 = &v3;
  sub_1003E9950(&v6);
}

void sub_1011688B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_101168A20;
  block[3] = &unk_101F13B18;
  v15 = v7;
  v9 = v6;
  v13 = v9;
  v10 = v5;
  v11 = *(a1 + 40);
  v14 = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  sub_10116B520(v17, a1 + 48);
  dispatch_async(v8, block);
  sub_100296578(v17);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1011689E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_101168A20(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v3 = *(v2 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid account", buf, 2u);
    }

    sub_1011687B8(v2);
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    sub_101168654(a1 + 56, 2, &v18);
    sub_10028B908(&v18, v19[0]);
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v4 = qword_101FC8CD0;
    v28 = qword_101FC8CD0;
    if (!qword_101FC8CD0)
    {
      *buf = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_10116A6E4;
      v23 = &unk_101E2DBB0;
      v24 = &v25;
      sub_10116A6E4(buf);
      v4 = v26[3];
    }

    v5 = v4;
    _Block_object_dispose(&v25, 8);
    v6 = objc_opt_new();
    if (v6)
    {
      v7 = [*(a1 + 40) aa_altDSID];
      [v6 setAltDSID:v7];

      v25 = 0;
      v26 = &v25;
      v27 = 0x2050000000;
      v8 = qword_101FC8CD8;
      v28 = qword_101FC8CD8;
      if (!qword_101FC8CD8)
      {
        *buf = _NSConcreteStackBlock;
        v21 = 3221225472;
        v22 = sub_10116A9B8;
        v23 = &unk_101E2DBB0;
        v24 = &v25;
        sub_10116A9B8(buf);
        v8 = v26[3];
      }

      v9 = v8;
      _Block_object_dispose(&v25, 8);
      v10 = objc_opt_new();
      if (v10)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3321888768;
        v29[2] = sub_101168EA8;
        v29[3] = &unk_101F13B48;
        v11 = *(a1 + 56);
        v29[4] = v2;
        object = v11;
        if (v11)
        {
          dispatch_retain(v11);
        }

        sub_10116B520(v31, a1 + 64);
        [v10 deviceListWithContext:v6 completion:v29];
        sub_100296578(v31);
        if (object)
        {
          dispatch_release(object);
        }
      }

      else
      {
        v13 = *(v2 + 48);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid controller", buf, 2u);
        }

        sub_1011687B8(v2);
        v15[0] = 0;
        v15[1] = 0;
        v14 = v15;
        sub_101168654(a1 + 56, 4, &v14);
        sub_10028B908(&v14, v15[0]);
      }
    }

    else
    {
      v12 = *(v2 + 48);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid request context", buf, 2u);
      }

      sub_1011687B8(v2);
      v17[0] = 0;
      v17[1] = 0;
      v16 = v17;
      sub_101168654(a1 + 56, 3, &v16);
      sub_10028B908(&v16, v17[0]);
    }
  }
}

void sub_101168DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, dispatch_object_t object)
{
  sub_10028B908(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_101168EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_101169008;
  block[3] = &unk_101F13B18;
  v15 = v7;
  v9 = v6;
  v10 = *(a1 + 40);
  v13 = v9;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  sub_10116B520(v17, a1 + 48);
  v11 = v5;
  v14 = v11;
  dispatch_async(v8, block);

  sub_100296578(v17);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_101168FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_101169008(void *a1)
{
  v3 = a1[6];
  if (a1[4])
  {
    v5 = *(v3 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v131 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Fetch failure", v131, 2u);
    }

    sub_1011687B8(v3);
    v122[0] = 0;
    v122[1] = 0;
    v121 = v122;
    sub_101168654((a1 + 7), 5, &v121);
    v6 = v122[0];
    v7 = &v121;
    goto LABEL_5;
  }

  v8 = a1[5];
  if (!v8 || (v92 = v3, v88 = a1, [v8 deviceList], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v68 = *(v3 + 48);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *v131 = 0;
      _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "No AuthKit device list", v131, 2u);
    }

    sub_1011687B8(v3);
    return;
  }

  v119 = 0;
  v120 = 0;
  v118 = &v119;
  v116 = 0;
  v117 = 0uLL;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = [v88[5] deviceList];
  v10 = [obj countByEnumeratingWithState:&v112 objects:v136 count:16];
  if (!v10)
  {
    goto LABEL_96;
  }

  v90 = *v113;
  do
  {
    v11 = 0;
    v91 = v10;
    do
    {
      if (*v113 != v90)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v112 + 1) + 8 * v11);
      *v134 = 0u;
      v135 = 0u;
      memset(v133, 0, sizeof(v133));
      *v132 = 0u;
      memset(v131, 0, sizeof(v131));
      v131[24] = [v12 trusted];
      v13 = [v12 name];
      if (v13)
      {
        v95 = [v12 name];
        v14 = v95;
        v3 = v95;
        v15 = [v95 UTF8String];
      }

      else
      {
        v15 = "";
      }

      v96 = v3;
      sub_10000501C(v132, v15);
      v16 = [v12 model];
      if (v16)
      {
        v94 = [v12 model];
        v17 = v94;
        v18 = [v94 UTF8String];
      }

      else
      {
        v18 = "";
      }

      sub_10000501C(&v133[1], v18);
      v19 = [v12 serialNumber];
      if (v19)
      {
        v93 = [v12 serialNumber];
        v20 = v93;
        v21 = [v93 UTF8String];
      }

      else
      {
        v21 = "";
      }

      sub_10000501C(v134, v21);
      v22 = [v12 lastUpdatedDate];
      [v22 timeIntervalSinceReferenceDate];
      *(&v135 + 1) = v23;

      if (v19)
      {
      }

      if (v16)
      {
      }

      if (v13)
      {
      }

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v24 = [v12 additionalInfo];
      v97 = [v24 objectForKey:@"phones"];

      v25 = [v97 countByEnumeratingWithState:&v108 objects:v130 count:16];
      if (!v25)
      {

        v50 = v92;
LABEL_76:
        v51 = *(v50 + 48);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I ignore device without IMEIs: %@", buf, 0xCu);
        }

        goto LABEL_78;
      }

      v26 = 0;
      v98 = *v109;
      do
      {
        v99 = v25;
        for (i = 0; i != v99; i = i + 1)
        {
          if (*v109 != v98)
          {
            objc_enumerationMutation(v97);
          }

          v28 = *(*(&v108 + 1) + 8 * i);
          v106[0] = 0;
          v106[1] = 0;
          v107 = 0;
          v29 = [v28 objectForKey:@"imei"];
          if (v29)
          {
            v1 = [v28 objectForKey:@"imei"];
            v30 = v1;
            v31 = [v1 UTF8String];
          }

          else
          {
            v31 = "";
          }

          sub_10000501C(v106, v31);
          if (v29)
          {
          }

          v32 = HIBYTE(v107);
          v33 = HIBYTE(v107);
          if (v107 < 0)
          {
            v32 = v106[1];
          }

          if (v32)
          {
            sub_100005308(v131, v106);
            buf[0] = [v12 trusted];
            v34 = [v12 name];
            if (v34)
            {
              v35 = [v12 name];
              v36 = v35;
              v37 = [v35 UTF8String];
            }

            else
            {
              v37 = "";
              v35 = v103;
            }

            sub_10000501C(&buf[8], v37);
            v103 = v35;
            v38 = [v12 model];
            if (v38)
            {
              v39 = [v12 model];
              v40 = v39;
              v41 = [v39 UTF8String];
            }

            else
            {
              v41 = "";
              v39 = v102;
            }

            sub_10000501C(&__p, v41);
            v102 = v39;
            v42 = [v12 serialNumber];
            if (v42)
            {
              v43 = [v12 serialNumber];
              v44 = v43;
              v45 = [v43 UTF8String];
            }

            else
            {
              v45 = "";
              v43 = v101;
            }

            sub_10000501C(&v127, v45);
            v101 = v43;
            v46 = [v12 lastUpdatedDate];
            [v46 timeIntervalSinceReferenceDate];
            v129 = v47;
            v123 = 0;
            v48 = *sub_100005C2C(&v118, &v123, v106);
            if (!v48)
            {
              operator new();
            }

            *(v48 + 56) = buf[0];
            if (*(v48 + 87) < 0)
            {
              operator delete(*(v48 + 64));
            }

            *(v48 + 64) = *&buf[8];
            *(v48 + 80) = *&buf[24];
            buf[31] = 0;
            buf[8] = 0;
            if (*(v48 + 111) < 0)
            {
              operator delete(*(v48 + 88));
            }

            *(v48 + 88) = __p;
            *(v48 + 104) = v126;
            HIBYTE(v126) = 0;
            LOBYTE(__p) = 0;
            if (*(v48 + 135) < 0)
            {
              operator delete(*(v48 + 112));
              v49 = SHIBYTE(v126);
              *(v48 + 112) = v127;
              *(v48 + 128) = v128;
              HIBYTE(v128) = 0;
              LOBYTE(v127) = 0;
              *(v48 + 136) = v129;
              if (v49 < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              *(v48 + 112) = v127;
              *(v48 + 128) = v128;
              HIBYTE(v128) = 0;
              LOBYTE(v127) = 0;
              *(v48 + 136) = v129;
            }

            if ((buf[31] & 0x80000000) != 0)
            {
              operator delete(*&buf[8]);
            }

            if (v42)
            {
            }

            if (v38)
            {
            }

            if (v34)
            {
            }

            v26 = 1;
            v33 = HIBYTE(v107);
          }

          if (v33 < 0)
          {
            operator delete(v106[0]);
          }
        }

        v25 = [v97 countByEnumeratingWithState:&v108 objects:v130 count:16];
      }

      while (v25);

      v50 = v92;
      if ((v26 & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_78:
      v52 = v117;
      if (v117 >= *(&v117 + 1))
      {
        v57 = 0x6DB6DB6DB6DB6DB7 * ((v117 - v116) >> 4);
        v58 = v57 + 1;
        v56 = v91;
        if ((v57 + 1) > 0x249249249249249)
        {
          sub_1000CE3D4();
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((*(&v117 + 1) - v116) >> 4) > v58)
        {
          v58 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v117 + 1) - v116) >> 4);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((*(&v117 + 1) - v116) >> 4)) >= 0x124924924924924)
        {
          v59 = 0x249249249249249;
        }

        else
        {
          v59 = v58;
        }

        *&__p = &v116;
        v3 = v96;
        if (v59)
        {
          sub_1003F23D0(&v116, v59);
        }

        v60 = 16 * ((v117 - v116) >> 4);
        *buf = 0;
        *&buf[8] = v60;
        *&buf[24] = 0;
        *v60 = 0;
        *(v60 + 8) = 0;
        *(v60 + 16) = 0;
        *v60 = *v131;
        *(v60 + 16) = *&v131[16];
        memset(v131, 0, 24);
        *(v60 + 24) = v131[24];
        v61 = *v132;
        *(v60 + 48) = v133[0];
        *(v60 + 32) = v61;
        v132[1] = 0;
        v133[0] = 0;
        v132[0] = 0;
        v62 = *&v133[1];
        *(v60 + 72) = v133[3];
        *(v60 + 56) = v62;
        memset(&v133[1], 0, 24);
        v63 = *v134;
        *(v60 + 96) = v135;
        *(v60 + 80) = v63;
        v134[1] = 0;
        *&v135 = 0;
        v134[0] = 0;
        *(v60 + 104) = *(&v135 + 1);
        *&buf[16] = 112 * v57 + 112;
        v64 = 112 * v57 + v116 - v117;
        sub_1003F242C(&v116, v116, v117, v60 + v116 - v117);
        v65 = v116;
        v66 = *(&v117 + 1);
        v116 = v64;
        v100 = *&buf[16];
        v117 = *&buf[16];
        *&buf[16] = v65;
        *&buf[24] = v66;
        *buf = v65;
        *&buf[8] = v65;
        sub_1003F25E4(buf);
        *&v117 = v100;
        if (SBYTE7(v135) < 0)
        {
          operator delete(v134[0]);
        }
      }

      else
      {
        *v117 = 0;
        *(v52 + 8) = 0;
        *(v52 + 16) = 0;
        *v52 = *v131;
        *(v52 + 16) = *&v131[16];
        memset(v131, 0, 24);
        *(v52 + 24) = v131[24];
        v53 = *v132;
        *(v52 + 48) = v133[0];
        *(v52 + 32) = v53;
        v132[0] = 0;
        v132[1] = 0;
        v54 = *&v133[1];
        *(v52 + 72) = v133[3];
        *(v52 + 56) = v54;
        memset(v133, 0, sizeof(v133));
        v55 = *v134;
        *(v52 + 96) = v135;
        *(v52 + 80) = v55;
        v134[1] = 0;
        *&v135 = 0;
        v134[0] = 0;
        *(v52 + 104) = *(&v135 + 1);
        *&v117 = v52 + 112;
        v3 = v96;
        v56 = v91;
      }

      if (SHIBYTE(v133[3]) < 0)
      {
        operator delete(v133[1]);
      }

      if (SHIBYTE(v133[0]) < 0)
      {
        operator delete(v132[0]);
      }

      *buf = v131;
      sub_1000087B4(buf);
      v11 = v11 + 1;
    }

    while (v11 != v56);
    v10 = [obj countByEnumeratingWithState:&v112 objects:v136 count:16];
  }

  while (v10);
LABEL_96:

  v67 = (v92 + 136);
  if (sub_10116BECC(v92 + 136, v118, v120))
  {
    if (*(v92 + 160) == 1)
    {
      if (v67 != &v118)
      {
        sub_10028B6C8(v67, v118, &v119);
      }
    }

    else
    {
      sub_100296408(v67, &v118);
      *(v92 + 160) = 1;
    }

    v69 = *(v92 + 128);
    if (v69)
    {
      (*(*v69 + 48))(v69, v67);
    }
  }

  v70 = *(v92 + 48);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *v131 = 134217984;
    *&v131[4] = 0x6DB6DB6DB6DB6DB7 * ((v117 - v116) >> 4);
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I Detected %zu devices on account", v131, 0xCu);
  }

  v72 = v116;
  v71 = v117;
  if (v117 != v116)
  {
    v73 = 0;
    v74 = 0;
    do
    {
      v75 = *(v92 + 48);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = (v72 + v73 + 56);
        if (*(v72 + v73 + 79) < 0)
        {
          v76 = *v76;
        }

        *v131 = 134218242;
        *&v131[4] = v74;
        *&v131[12] = 2080;
        *&v131[14] = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I %2zu. model:%s", v131, 0x16u);
        v72 = v116;
        v71 = v117;
      }

      ++v74;
      v73 += 112;
    }

    while (v74 < 0x6DB6DB6DB6DB6DB7 * ((v71 - v72) >> 4));
  }

  v77 = (v92 + 200);
  if (sub_10116C070((v92 + 200), v72, v71))
  {
    if (*(v92 + 224) == 1)
    {
      if (v77 != &v116)
      {
        v79 = v116;
        v78 = v117;
        v80 = v117 - v116;
        v81 = *(v92 + 200);
        if (*(v92 + 216) - v81 < (v117 - v116))
        {
          v82 = 0x6DB6DB6DB6DB6DB7 * (v80 >> 4);
          sub_1003F2250(v77);
          if (v82 <= 0x249249249249249)
          {
            v83 = 0xDB6DB6DB6DB6DB6ELL * ((*(v92 + 216) - *(v92 + 200)) >> 4);
            if (v83 <= v82)
            {
              v83 = v82;
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((*(v92 + 216) - *(v92 + 200)) >> 4)) >= 0x124924924924924)
            {
              v84 = 0x249249249249249;
            }

            else
            {
              v84 = v83;
            }

            sub_10116C274(v77, v84);
          }

          sub_1000CE3D4();
        }

        v85 = *(v92 + 208) - v81;
        if (v85 >= v80)
        {
          v86 = sub_10116C460(v116, v117, v81);
          sub_1003E99A4(v77, v86);
        }

        else
        {
          sub_10116C460(v116, v116 + v85, v81);
          *(v92 + 208) = sub_10116C2C4(v77, v79 + v85, v78, *(v92 + 208));
        }
      }
    }

    else
    {
      *v77 = 0;
      *(v92 + 208) = 0;
      *(v92 + 216) = 0;
      *v131 = v92 + 200;
      if (v117 != v116)
      {
        *&v131[8] = 0;
        sub_10116C274(v77, 0x6DB6DB6DB6DB6DB7 * ((v117 - v116) >> 4));
      }

      *(v92 + 224) = 1;
    }

    v87 = *(v92 + 192);
    if (v87)
    {
      (*(*v87 + 48))(v87, v77);
    }
  }

  v104 = v118;
  v105[0] = v119;
  v105[1] = v120;
  if (v120)
  {
    *(v119 + 16) = v105;
    v118 = &v119;
    v119 = 0;
    v120 = 0;
  }

  else
  {
    v104 = v105;
  }

  sub_101168654((v88 + 7), 0, &v104);
  sub_10028B908(&v104, v105[0]);
  *v131 = &v116;
  sub_1003E9950(v131);
  v6 = v119;
  v7 = &v118;
LABEL_5:
  sub_10028B908(v7, v6);
}

void sub_101169EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56)
{
  *(v57 + 208) = v56;
  STACK[0x2A0] = &a52;
  sub_1003E9950(&STACK[0x2A0]);
  sub_10028B908(&a55, a56);
  _Unwind_Resume(a1);
}

uint64_t sub_10116A28C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  return sub_10116B520(a1 + 64, a2 + 64);
}

void sub_10116A2CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10116A2E4(uint64_t a1)
{
  sub_100296578(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    dispatch_release(v2);
  }
}

dispatch_object_t *sub_10116A330(dispatch_object_t *a1)
{
  sub_100296578((a1 + 1));
  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

uint64_t sub_10116A368(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  return sub_10116B520(a1 + 48, a2 + 48);
}

void sub_10116A3A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10116A3C0(uint64_t a1)
{
  sub_100296578(a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    dispatch_release(v2);
  }
}

void sub_10116A414(uint64_t a1, char a2)
{
  if (a2)
  {
    *(a1 + 96) = 1;
    v3 = 0;
    sub_101168340(a1, v2);
    sub_100296578(v2);
  }

  else
  {
    *(a1 + 96) = 0;

    sub_1011687B8(a1);
  }
}

void sub_10116A4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100296578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10116A4D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10116A554(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_10116A5D4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10028B908(v1 + 40, *(v1 + 48));
    sub_100296578(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_10116A62C(uint64_t a1)
{
  v5 = a1;
  v2 = *(a1 + 32);
  sub_100296408(v6, a1 + 40);
  v3 = *(a1 + 24);
  v7 = v2;
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v7, v6);
  sub_10028B908(v6, v6[1]);
  return sub_10116A5D4(&v5);
}

void sub_10116A6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10116A5D4(va);
  _Unwind_Resume(a1);
}

void sub_10116A6E4(uint64_t a1)
{
  sub_10116A7C8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AKDeviceListRequestContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_101FC8CD0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getAKDeviceListRequestContextClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AKRemoteDeviceService.mm" lineNumber:24 description:{@"Unable to find class %s", "AKDeviceListRequestContext"}];

    __break(1u);
  }
}

void sub_10116A7C8()
{
  v3[0] = 0;
  if (!qword_101FC8CC8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10116A944;
    v3[4] = &unk_101E26008;
    v3[5] = v3;
    v4 = off_101F13D40;
    v5 = 0;
    qword_101FC8CC8 = _sl_dlopen();
  }

  if (!qword_101FC8CC8)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *AuthKitLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"AKRemoteDeviceService.mm" lineNumber:22 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10116A944()
{
  result = _sl_dlopen();
  qword_101FC8CC8 = result;
  return result;
}

void sub_10116A9B8(uint64_t a1)
{
  sub_10116A7C8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AKAppleIDAuthenticationController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_101FC8CD8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getAKAppleIDAuthenticationControllerClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AKRemoteDeviceService.mm" lineNumber:25 description:{@"Unable to find class %s", "AKAppleIDAuthenticationController"}];

    __break(1u);
  }
}

void sub_10116AABC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F13D68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10116AB38(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing...", buf, 2u);
  }

  v3 = *(v1 + 48);
  Registry::createRestModuleOneTimeUseConnection(&v18, *(v3 + 56));
  v4 = v3 + 72;
  ctu::RestModule::connect();
  if (v19)
  {
    sub_100004A34(v19);
  }

  v5 = (v3 + 104);
  *buf = off_101F13EB0;
  v21 = (v3 + 72);
  v22 = buf;
  if (buf != (v3 + 104))
  {
    v6 = *(v3 + 128);
    if (v6 == v5)
    {
      v24 = v3 + 72;
      v25 = 0;
      v22 = 0;
      v23 = off_101F13EB0;
      (*(*v6 + 24))(v6, buf);
      (*(**(v3 + 128) + 32))(*(v3 + 128));
      *(v3 + 128) = 0;
      v22 = buf;
      (v23[3])(&v23, v3 + 104);
      (v23[4])(&v23);
    }

    else
    {
      *(v3 + 104) = off_101F13EB0;
      *(v3 + 112) = v4;
      v22 = v6;
    }

    *(v3 + 128) = v5;
  }

  sub_10116A554(buf);
  v7 = *(v3 + 128);
  if (v7)
  {
    (*(*v7 + 48))(v7, v3 + 136);
  }

  v8 = (v3 + 168);
  *buf = off_101F13F40;
  v21 = (v3 + 72);
  v22 = buf;
  if (buf != (v3 + 168))
  {
    v9 = *(v3 + 192);
    if (v9 == v8)
    {
      v24 = v3 + 72;
      v25 = 0;
      v22 = 0;
      v23 = off_101F13F40;
      (*(*v9 + 24))(v9, buf);
      (*(**(v3 + 192) + 32))(*(v3 + 192));
      *(v3 + 192) = 0;
      v22 = buf;
      (v23[3])(&v23, v3 + 168);
      (v23[4])(&v23);
    }

    else
    {
      *(v3 + 168) = off_101F13F40;
      *(v3 + 176) = v4;
      v22 = v9;
    }

    *(v3 + 192) = v8;
  }

  sub_10116A4D4(buf);
  v10 = *(v3 + 192);
  if (v10)
  {
    (*(*v10 + 48))(v10, v3 + 200);
  }

  v11 = [AKRemoteDeviceObserver alloc];
  v12 = *(v3 + 24);
  if (v12)
  {
    v13 = *(v3 + 16);
    v14 = std::__shared_weak_count::lock(v12);
    if (v14)
    {
      v15 = v13 + 8;
      if (!v13)
      {
        v15 = 0;
      }

      *buf = v15;
      v21 = v14;
      v16 = [(AKRemoteDeviceObserver *)v11 initWithQueue:v3 + 32 delegate:buf];
      v17 = *(v3 + 88);
      *(v3 + 88) = v16;

      if (v21)
      {
        sub_100004A34(v21);
      }

      operator delete();
    }
  }

  sub_100013CC4();
}

void sub_10116AF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10116AFE4(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shutting down...", buf, 2u);
  }

  v3 = *(v1 + 48);
  v4 = v3[11];
  v3[11] = 0;

  v5 = v3[16];
  v3[16] = 0;
  if (v5 == v3 + 13)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = v3[24];
  v3[24] = 0;
  if (v6 == v3 + 21)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  operator delete();
}

void sub_10116B154(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10116B18C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10116B1BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10116B1FC(ServiceManager::Service *this)
{
  *this = off_101F13E30;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10116B258(ServiceManager::Service *this)
{
  *this = off_101F13E30;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10116B2D8@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10116B318(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1011677D8(v2);
  }

  v4 = *(a1 + 8);

  sub_1011677D8(v4);
}

void sub_10116B3B4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10116B494(uint64_t *a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = *(**a1 + 48);
  if (v2)
  {
    sub_10116A414(v2, *(v1 + 8));
  }

  operator delete();
}

uint64_t sub_10116B520(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *sub_10116B5B8(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 48);
  if (v2)
  {
    sub_10116B520(v6, v1 + 8);
    sub_101168340(v2, v6);
    sub_100296578(v6);
  }

  sub_10116B678(&v5);
  return sub_1000049E0(&v4);
}

void sub_10116B64C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_100296578(va2);
  sub_10116B678(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10116B678(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100296578(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_10116B738(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F13EB0;
  a2[1] = v2;
  return result;
}

void sub_10116B764(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v3 = xpc_array_create(0, 0);
    if (v3 || (v3 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v3) == &_xpc_type_array)
      {
        xpc_retain(v3);
        v4 = v3;
      }

      else
      {
        v4 = xpc_null_create();
      }
    }

    else
    {
      v4 = xpc_null_create();
      v3 = 0;
    }

    xpc_release(v3);
    v8 = *a2;
    v6 = (a2 + 8);
    v7 = v8;
    if (v8 != v6)
    {
      do
      {
        v9 = xpc_dictionary_create(0, 0, 0);
        v10 = v9;
        if (v9)
        {
          v24 = v9;
        }

        else
        {
          v10 = xpc_null_create();
          v24 = v10;
          if (!v10)
          {
            v11 = xpc_null_create();
            v10 = 0;
            goto LABEL_17;
          }
        }

        if (xpc_get_type(v10) != &_xpc_type_dictionary)
        {
          v11 = xpc_null_create();
LABEL_17:
          v24 = v11;
          goto LABEL_18;
        }

        xpc_retain(v10);
LABEL_18:
        xpc_release(v10);
        if (*(v7 + 55) >= 0)
        {
          v12 = (v7 + 4);
        }

        else
        {
          v12 = v7[4];
        }

        v22 = xpc_string_create(v12);
        if (!v22)
        {
          v22 = xpc_null_create();
        }

        __p = &v24;
        v18 = "first";
        sub_10000F688(&__p, &v22, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v22);
        v22 = 0;
        sub_10080769C((v7 + 7), &v20);
        __p = &v24;
        v18 = "second";
        sub_10000F688(&__p, &v20, &v21);
        xpc_release(v21);
        v21 = 0;
        xpc_release(v20);
        v20 = 0;
        v13 = v24;
        if (v24)
        {
          xpc_retain(v24);
        }

        else
        {
          v13 = xpc_null_create();
        }

        xpc_release(v24);
        xpc_array_append_value(v4, v13);
        xpc_release(v13);
        v14 = v7[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v7[2];
            v16 = *v15 == v7;
            v7 = v15;
          }

          while (!v16);
        }

        v7 = v15;
      }

      while (v15 != v6);
    }

    if (v4)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }

    xpc_release(v4);
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/imei_to_ak_remote_device_info");
  v24 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v24 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v24);
  v24 = 0;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_10116BA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10116BB14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10116BBD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F13F40;
  a2[1] = v2;
  return result;
}

void sub_10116BBFC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v3 = xpc_array_create(0, 0);
    if (v3 || (v3 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v3) == &_xpc_type_array)
      {
        xpc_retain(v3);
        v4 = v3;
      }

      else
      {
        v4 = xpc_null_create();
      }
    }

    else
    {
      v4 = xpc_null_create();
      v3 = 0;
    }

    xpc_release(v3);
    v7 = *a2;
    v6 = *(a2 + 8);
    while (v7 != v6)
    {
      sub_100807CF4(v7, value);
      xpc_array_append_value(v4, value[0]);
      xpc_release(value[0]);
      v7 += 14;
    }

    if (v4)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }

    xpc_release(v4);
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_10000501C(value, "/cc/props/ak_remote_device_info_list");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v10 < 0)
  {
    operator delete(value[0]);
  }

  xpc_release(v5);
}

void sub_10116BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10116BE00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10116BE4C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_10116BECC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 24) == 1 && *(a1 + 16) == a3;
  if (!v3)
  {
    return 1;
  }

  v5 = (a1 + 8);
  v6 = *a1;
  if (*a1 == a1 + 8)
  {
    return 0;
  }

  while (1)
  {
    v8 = v6[55];
    if (v8 >= 0)
    {
      v9 = v6[55];
    }

    else
    {
      v9 = *(v6 + 5);
    }

    v10 = a2[55];
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 5);
    }

    if (v9 != v10)
    {
      break;
    }

    v12 = v8 >= 0 ? v6 + 32 : *(v6 + 4);
    v13 = v11 >= 0 ? a2 + 32 : *(a2 + 4);
    if (memcmp(v12, v13, v9) || !sub_1008A165C(v6 + 56, a2 + 56))
    {
      break;
    }

    v14 = *(v6 + 1);
    v15 = v6;
    if (v14)
    {
      do
      {
        v6 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v6 = *(v15 + 2);
        v3 = *v6 == v15;
        v15 = v6;
      }

      while (!v3);
    }

    v16 = *(a2 + 1);
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = *(a2 + 2);
        v3 = *v17 == a2;
        a2 = v17;
      }

      while (!v3);
    }

    a2 = v17;
    if (v6 == v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10116C000(uint64_t a1, void *a2)
{
  sub_1008A5288(a1 + 32, a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t sub_10116C070(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) != 1)
  {
    return 1;
  }

  v34 = v3;
  v35 = v4;
  v5 = a2;
  v7 = *a1;
  v6 = a1[1];
  if (v6 - *a1 != a3 - a2)
  {
    return 1;
  }

  if (v7 == v6)
  {
    return 0;
  }

  while (1)
  {
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *v5;
    if ((v9 - *v7) != (*(v5 + 8) - *v5))
    {
      break;
    }

    while (v8 != v9)
    {
      if (!sub_100022D3C(&v33, v8, v10))
      {
        return 1;
      }

      v8 += 3;
      v10 += 3;
    }

    if (*(v7 + 24) != *(v5 + 24))
    {
      break;
    }

    v11 = *(v7 + 55);
    if (v11 >= 0)
    {
      v12 = *(v7 + 55);
    }

    else
    {
      v12 = *(v7 + 40);
    }

    v13 = *(v5 + 55);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v5 + 40);
    }

    if (v12 != v13)
    {
      break;
    }

    v15 = v11 >= 0 ? (v7 + 32) : *(v7 + 32);
    v16 = v14 >= 0 ? (v5 + 32) : *(v5 + 32);
    if (memcmp(v15, v16, v12))
    {
      break;
    }

    v17 = *(v7 + 79);
    if (v17 >= 0)
    {
      v18 = *(v7 + 79);
    }

    else
    {
      v18 = *(v7 + 64);
    }

    v19 = *(v5 + 79);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v5 + 64);
    }

    if (v18 != v19)
    {
      break;
    }

    v21 = v17 >= 0 ? (v7 + 56) : *(v7 + 56);
    v22 = v20 >= 0 ? (v5 + 56) : *(v5 + 56);
    if (memcmp(v21, v22, v18))
    {
      break;
    }

    v23 = *(v7 + 103);
    if (v23 >= 0)
    {
      v24 = *(v7 + 103);
    }

    else
    {
      v24 = *(v7 + 88);
    }

    v25 = *(v5 + 103);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v5 + 88);
    }

    if (v24 != v25)
    {
      break;
    }

    v27 = v23 >= 0 ? (v7 + 80) : *(v7 + 80);
    v28 = v26 >= 0 ? (v5 + 80) : *(v5 + 80);
    if (memcmp(v27, v28, v24))
    {
      break;
    }

    v29 = *(v7 + 104);
    v30 = *(v5 + 104);
    v31 = v29 == v30;
    if (v29 == v30)
    {
      v7 += 112;
      v5 += 112;
      if (v7 != v6)
      {
        continue;
      }
    }

    return !v31;
  }

  v31 = 0;
  return !v31;
}

void sub_10116C274(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_1003F23D0(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_10116C2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 56);
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v7 = v6 - 56;
      sub_10004EFD0(v4, *(v6 - 7), *(v6 - 6), 0xAAAAAAAAAAAAAAABLL * ((*(v6 - 6) - *(v6 - 7)) >> 3));
      *(v4 + 24) = *(v6 - 32);
      if (*(v6 - 1) < 0)
      {
        sub_100005F2C((v4 + 32), *(v6 - 3), *(v6 - 2));
      }

      else
      {
        v8 = *(v6 - 24);
        *(v4 + 48) = *(v6 - 1);
        *(v4 + 32) = v8;
      }

      if (*(v6 + 23) < 0)
      {
        sub_100005F2C((v4 + 56), *v6, *(v6 + 1));
      }

      else
      {
        v9 = *v6;
        *(v4 + 72) = *(v6 + 2);
        *(v4 + 56) = v9;
      }

      if (*(v6 + 47) < 0)
      {
        sub_100005F2C((v4 + 80), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v10 = *(v6 + 24);
        *(v4 + 96) = *(v6 + 5);
        *(v4 + 80) = v10;
      }

      *(v4 + 104) = *(v6 + 6);
      v4 = v15 + 112;
      v15 += 112;
      v6 += 7;
    }

    while (v7 + 112 != a3);
  }

  LOBYTE(v13) = 1;
  sub_1003F2558(v12);
  return v4;
}

void sub_10116C408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  if (*(v16 + 55) < 0)
  {
    operator delete(*(v16 + 32));
  }

  a16 = v16;
  sub_1000087B4(&a16);
  sub_1003F2558(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10116C460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      if (a1 != a3)
      {
        sub_100008234((a3 + v6), *(a1 + v6), *(a1 + v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + v6 + 8) - *(a1 + v6)) >> 3));
      }

      *(v7 + 24) = *(a1 + v6 + 24);
      std::string::operator=((v7 + 32), (a1 + v6 + 32));
      std::string::operator=((v7 + 56), (a1 + v6 + 56));
      std::string::operator=((v7 + 80), (a1 + v6 + 80));
      *(v7 + 104) = *(a1 + v6 + 104);
      v6 += 112;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void *sub_10116C52C(void *a1, void *a2)
{
  *a1 = &off_101F1A478;
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "app.auth.model");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger((a1 + 1), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101F13FD0;
  v4 = a2[1];
  a1[2] = *a2;
  a1[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_10116C5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void *sub_10116C614(void *a1)
{
  *a1 = off_101F13FD0;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_10116C66C(void *a1)
{
  sub_10116C614(a1);

  operator delete();
}

void sub_10116C6A4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 16));
    v5 = ServiceMap;
    if (v6 < 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    *buf = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, buf);
    if (v10)
    {
      v11 = v10[3];
      v12 = v10[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v13 = 0;
        if (!v11)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
    }

    std::mutex::unlock(v5);
    v12 = 0;
    v13 = 1;
    if (!v11)
    {
LABEL_8:
      v14 = *(a1 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
      }

LABEL_43:
      if ((v13 & 1) == 0)
      {
        sub_100004A34(v12);
      }

      return;
    }

LABEL_14:
    v44 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v38 = v13;
    if (Mutable)
    {
      v17 = v44;
      v44 = Mutable;
      *buf = v17;
      sub_1000296E0(buf);
    }

    v20 = *a2;
    v18 = (a2 + 8);
    v19 = v20;
    if (v20 != v18)
    {
      do
      {
        v43 = 0;
        v21 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v21)
        {
          v22 = v43;
          v43 = v21;
          *buf = v22;
          sub_1000296E0(buf);
        }

        v23 = v19[7];
        if (v23 != (v19 + 8))
        {
          do
          {
            v24 = v23 + 32;
            v42 = 0;
            if (v23[55] < 0)
            {
              v24 = *v24;
            }

            v25 = CFStringCreateWithCString(kCFAllocatorDefault, v24, 0x8000100u);
            v26 = v23 + 56;
            v41 = 0;
            v42 = v25;
            if (v23[79] < 0)
            {
              v26 = *v26;
            }

            v27 = CFStringCreateWithCString(kCFAllocatorDefault, v26, 0x8000100u);
            v40 = 0;
            v41 = v27;
            v28 = v23 + 80;
            if (v23[103] < 0)
            {
              v28 = *v28;
            }

            v29 = CFStringCreateWithCString(kCFAllocatorDefault, v28, 0x8000100u);
            v39 = 0;
            v40 = v29;
            v30 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v30)
            {
              v31 = v39;
              v39 = v30;
              *buf = v31;
              sub_1000296E0(buf);
            }

            sub_1001768B8(v39, @"Iccid", v41);
            sub_1001768B8(v39, @"PhoneNumber", v40);
            sub_10043B768(v43, v42, v39);
            sub_1000296E0(&v39);
            sub_100005978(&v40);
            sub_100005978(&v41);
            sub_100005978(&v42);
            v32 = *(v23 + 1);
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = *(v23 + 2);
                v34 = *v33 == v23;
                v23 = v33;
              }

              while (!v34);
            }

            v23 = v33;
          }

          while (v33 != v19 + 8);
        }

        v35 = (v19 + 4);
        *buf = 0;
        if (*(v19 + 55) < 0)
        {
          v35 = *v35;
        }

        *buf = CFStringCreateWithCString(kCFAllocatorDefault, v35, 0x8000100u);
        sub_10043B768(v44, *buf, v43);
        sub_100005978(buf);
        sub_1000296E0(&v43);
        v36 = v19[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v19[2];
            v34 = *v37 == v19;
            v19 = v37;
          }

          while (!v34);
        }

        v19 = v37;
      }

      while (v37 != v18);
    }

    v13 = v38;
    (*(*v11 + 16))(v11, @"BundleTokenIdentifiersMap", v44, @"no_backup/com.apple.commcenter.app.auth.tokens", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*v11 + 48))(v11, @"no_backup/com.apple.commcenter.app.auth.tokens", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1000296E0(&v44);
    goto LABEL_43;
  }

  v15 = *(a1 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Empty token map to save", buf, 2u);
  }
}

void sub_10116CB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000296E0(va);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10116CBD0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  __str[0].__r_.__value_.__r.__words[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, __str);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v3);
  v10 = 0;
  v11 = 1;
LABEL_9:
  v12 = a2;
  if (v9)
  {
    v71[0] = 0;
    (*(*v9 + 40))(__str, v9, @"BundleTokenIdentifiersMap", @"no_backup/com.apple.commcenter.app.auth.tokens", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100010180(v71, &__str[0].__r_.__value_.__l.__data_);
    sub_10000A1EC(&__str[0].__r_.__value_.__l.__data_);
    if (v71[0])
    {
      v69 = 0;
      v70 = 0;
      v68 = &v69;
      Count = CFDictionaryGetCount(v71[0]);
      if (Count)
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        sub_10007D780(&v65, Count);
        values = 0;
        v63 = 0;
        v64 = 0;
        sub_10007D780(&values, Count);
        CFDictionaryGetKeysAndValues(v71[0], v65, values);
        if (Count >= 1)
        {
          v14 = 0;
          v45 = v10;
          v44 = v11;
          while (1)
          {
            memset(&v61, 0, sizeof(v61));
            memset(__str, 0, 24);
            ctu::cf::assign();
            v61 = __str[0];
            size = __str[0].__r_.__value_.__l.__size_;
            if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
            }

            if (size)
            {
              break;
            }

            v33 = *(a1 + 8);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              LOWORD(__str[0].__r_.__value_.__l.__data_) = 0;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Could not retrieve bundleID", __str, 2u);
            }

            *v12 = 0;
            v12[24] = 0;
            v32 = 1;
LABEL_64:
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }

            if (v32 != 10 && v32)
            {
              goto LABEL_101;
            }

            if (++v14 == Count)
            {
              goto LABEL_94;
            }
          }

          theDict = 0;
          v16 = values[v14];
          if (v16 && (v17 = CFGetTypeID(values[v14]), v17 == CFDictionaryGetTypeID()))
          {
            theDict = v16;
            CFRetain(v16);
            if (theDict)
            {
              v59[0] = 0;
              v59[1] = 0;
              v58 = v59;
              v18 = CFDictionaryGetCount(theDict);
              if (v18)
              {
                keys = 0;
                v56 = 0;
                v57 = 0;
                sub_10007D780(&keys, v18);
                v52 = 0;
                v53 = 0;
                v54 = 0;
                sub_10007D780(&v52, v18);
                CFDictionaryGetKeysAndValues(theDict, keys, v52);
                if (v18 >= 1)
                {
                  for (i = 0; v18 != i; ++i)
                  {
                    memset(&v51, 0, sizeof(v51));
                    memset(__str, 0, 24);
                    ctu::cf::assign();
                    v51 = __str[0];
                    v20 = v52[i];
                    if (v20)
                    {
                      v21 = CFGetTypeID(v52[i]);
                      if (v21 == CFDictionaryGetTypeID())
                      {
                        v22 = v20;
                      }

                      else
                      {
                        v22 = 0;
                      }
                    }

                    else
                    {
                      v22 = 0;
                    }

                    CFDictionaryGetValue(v22, @"Iccid");
                    memset(__str, 0, 24);
                    ctu::cf::assign();
                    v23 = __str[0].__r_.__value_.__l.__size_;
                    __p = __str[0].__r_.__value_.__r.__words[0];
                    *v50 = __str[0].__r_.__value_.__r.__words[2];
                    *&v50[3] = *(&__str[0].__r_.__value_.__r.__words[2] + 3);
                    v24 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
                    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v25 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v25 = __str[0].__r_.__value_.__l.__size_;
                    }

                    if (v25)
                    {
                      CFDictionaryGetValue(v22, @"PhoneNumber");
                      memset(__str, 0, 24);
                      ctu::cf::assign();
                      v26 = *&__str[0].__r_.__value_.__l.__data_;
                      *v49 = __str[0].__r_.__value_.__r.__words[2];
                      *&v49[3] = *(&__str[0].__r_.__value_.__r.__words[2] + 3);
                      v27 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
                      memset(__str, 0, sizeof(__str));
                      if (v24 < 0)
                      {
                        sub_100005F2C(__str, __p, v23);
                      }

                      else
                      {
                        __str[0].__r_.__value_.__r.__words[0] = __p;
                        __str[0].__r_.__value_.__l.__size_ = v23;
                        LODWORD(__str[0].__r_.__value_.__r.__words[2]) = *v50;
                        *(&__str[0].__r_.__value_.__r.__words[2] + 3) = *&v50[3];
                        *(&__str[0].__r_.__value_.__s + 23) = v24;
                      }

                      if (v27 < 0)
                      {
                        sub_100005F2C(&__str[1], v26, *(&v26 + 1));
                      }

                      else
                      {
                        *&__str[1].__r_.__value_.__l.__data_ = v26;
                        LODWORD(__str[1].__r_.__value_.__r.__words[2]) = *v49;
                        *(&__str[1].__r_.__value_.__r.__words[2] + 3) = *&v49[3];
                        *(&__str[1].__r_.__value_.__s + 23) = v27;
                      }

                      v71[2] = &v51;
                      v29 = sub_101039200(&v58, &v51.__r_.__value_.__l.__data_);
                      std::string::operator=((v29 + 56), __str);
                      std::string::operator=((v29 + 80), &__str[1]);
                      if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str[1].__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str[0].__r_.__value_.__l.__data_);
                        if ((v27 & 0x80000000) == 0)
                        {
LABEL_45:
                          if (v24 < 0)
                          {
                            goto LABEL_36;
                          }

                          goto LABEL_46;
                        }
                      }

                      else if ((v27 & 0x80000000) == 0)
                      {
                        goto LABEL_45;
                      }

                      operator delete(v26);
                      if (v24 < 0)
                      {
                        goto LABEL_36;
                      }
                    }

                    else
                    {
                      v28 = *(a1 + 8);
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                      {
                        v30 = &v61;
                        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v30 = v61.__r_.__value_.__r.__words[0];
                        }

                        LODWORD(__str[0].__r_.__value_.__l.__data_) = 136315138;
                        *(__str[0].__r_.__value_.__r.__words + 4) = v30;
                        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to load iccid for bundleID: %s", __str, 0xCu);
                      }

                      *a2 = 0;
                      a2[24] = 0;
                      if (v24 < 0)
                      {
LABEL_36:
                        operator delete(__p);
                      }
                    }

LABEL_46:
                    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v51.__r_.__value_.__l.__data_);
                    }

                    if (!v25)
                    {
                      v32 = 1;
                      v11 = v44;
                      v12 = a2;
                      goto LABEL_79;
                    }
                  }
                }

                __str[0].__r_.__value_.__r.__words[0] = &v61;
                v11 = v44;
                v12 = a2;
                v34 = (sub_101038798(&v68, &v61.__r_.__value_.__l.__data_) + 56);
                if (v34 != &v58)
                {
                  sub_1010388F0(v34, v58, v59);
                }

                v32 = 0;
LABEL_79:
                v10 = v45;
                if (v52)
                {
                  v53 = v52;
                  operator delete(v52);
                }

                if (keys)
                {
                  v56 = keys;
                  operator delete(keys);
                }
              }

              else
              {
                v35 = *(a1 + 8);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v37 = &v61;
                  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v37 = v61.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(__str[0].__r_.__value_.__l.__data_) = 136315138;
                  *(__str[0].__r_.__value_.__r.__words + 4) = v37;
                  _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Empty count in tokenIDsDict for bundleID: %s", __str, 0xCu);
                }

                v32 = 10;
                v10 = v45;
              }

              sub_1008F0650(&v58, v59[0]);
              goto LABEL_60;
            }
          }

          else
          {
            theDict = 0;
          }

          v31 = *(a1 + 8);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v36 = &v61;
            if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v36 = v61.__r_.__value_.__r.__words[0];
            }

            LODWORD(__str[0].__r_.__value_.__l.__data_) = 136315138;
            *(__str[0].__r_.__value_.__r.__words + 4) = v36;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s is missing tokenIDsDict", __str, 0xCu);
          }

          *v12 = 0;
          v12[24] = 0;
          v32 = 1;
LABEL_60:
          sub_10001021C(&theDict);
          goto LABEL_64;
        }

LABEL_94:
        v40 = v69;
        *v12 = v68;
        *(v12 + 1) = v40;
        v41 = v12 + 8;
        v42 = v70;
        *(v12 + 2) = v70;
        if (v42)
        {
          v40[2] = v41;
          v68 = &v69;
          v69 = 0;
          v70 = 0;
        }

        else
        {
          *v12 = v41;
        }

        v12[24] = 1;
LABEL_101:
        if (values)
        {
          v63 = values;
          operator delete(values);
        }

        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }
      }

      else
      {
        v43 = *(a1 + 8);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__str[0].__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Empty count in bundleTokenIdentifiersDict", __str, 2u);
        }

        *a2 = 0;
        a2[24] = 0;
      }

      sub_100D237B8(&v68, v69);
    }

    else
    {
      v39 = *(a1 + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__str[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I BundleTokenIdentifiersMap is empty", __str, 2u);
      }

      *a2 = 0;
      a2[24] = 0;
    }

    sub_10001021C(v71);
    if ((v11 & 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v38 = *(a1 + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__str[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Could not get preferences", __str, 2u);
    }

    *a2 = 0;
    a2[24] = 0;
    if ((v11 & 1) == 0)
    {
LABEL_107:
      sub_100004A34(v10);
    }
  }
}

void sub_10116D4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50)
{
  if (__p)
  {
    operator delete(__p);
  }

  v54 = *(v52 - 232);
  if (v54)
  {
    *(v52 - 224) = v54;
    operator delete(v54);
  }

  sub_100D237B8(v52 - 208, *(v52 - 200));
  sub_10001021C((v52 - 184));
  if ((v50 & 1) == 0)
  {
    sub_100004A34(v51);
  }

  _Unwind_Resume(a1);
}

void sub_10116D6A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v22 = 0u;
  v23 = 0u;
  sub_10116CBD0(a1, &v22);
  if (BYTE8(v23) != 1)
  {
    *a4 = 0;
    *(a4 + 24) = 0;
    return;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = sub_1000E20F0(&v22, a2);
  sub_10103669C(&v19, v8);
  v9 = v20;
  if (!v20)
  {
LABEL_7:
    v10 = *(a1 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      if (*(a3 + 23) >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      *buf = 136315394;
      *&buf[4] = v11;
      v26 = 2080;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Cannot find ICCID for bundleID: %s with token: %s", buf, 0x16u);
    }

    v13 = 0;
    *a4 = 0;
    goto LABEL_25;
  }

  while ((sub_1000068BC(a3, v9 + 4) & 0x80) != 0)
  {
LABEL_6:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if ((sub_1000068BC(v9 + 4, a3) & 0x80) != 0)
  {
    v9 += 8;
    goto LABEL_6;
  }

  v14 = *(a1 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a3;
    v15 = sub_101039200(&v19, a3);
    v16 = (v15 + 56);
    if (*(v15 + 79) < 0)
    {
      v16 = *v16;
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Found token matching iccid: %s", buf, 0xCu);
  }

  *buf = a3;
  v17 = sub_101039200(&v19, a3);
  if (*(v17 + 79) < 0)
  {
    sub_100005F2C(a4, *(v17 + 56), *(v17 + 64));
  }

  else
  {
    v18 = *(v17 + 56);
    *(a4 + 16) = *(v17 + 72);
    *a4 = v18;
  }

  v13 = 1;
LABEL_25:
  *(a4 + 24) = v13;
  sub_1008F0650(&v19, v20);
  if (BYTE8(v23))
  {
    sub_100D237B8(&v22, *(&v22 + 1));
  }
}

void sub_10116D8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16)
{
  sub_1008F0650(&a10, a11);
  if (a16 == 1)
  {
    sub_100D237B8(&a13, a14);
  }

  _Unwind_Resume(a1);
}

void sub_10116D938(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = 0u;
  v19 = 0u;
  sub_10116CBD0(a1, &v18);
  if (BYTE8(v19) == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v8 = sub_1000E20F0(&v18, a2);
    sub_10103669C(&v15, v8);
    if (v17)
    {
      *buf = a3;
      v9 = sub_101039200(&v15, a3);
      if (*(v9 + 103) < 0)
      {
        sub_100005F2C(a4, *(v9 + 80), *(v9 + 88));
      }

      else
      {
        v10 = *(v9 + 80);
        *(a4 + 16) = *(v9 + 96);
        *a4 = v10;
      }

      v14 = 1;
    }

    else
    {
      v11 = *(a1 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = *a2;
        }

        if (*(a3 + 23) >= 0)
        {
          v13 = a3;
        }

        else
        {
          v13 = *a3;
        }

        *buf = 136315394;
        *&buf[4] = v12;
        v21 = 2080;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Cannot find phone number for bundleID: %s with token: %s", buf, 0x16u);
      }

      v14 = 0;
      *a4 = 0;
    }

    *(a4 + 24) = v14;
    sub_1008F0650(&v15, v16);
    if (BYTE8(v19))
    {
      sub_100D237B8(&v18, *(&v18 + 1));
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 24) = 0;
  }
}