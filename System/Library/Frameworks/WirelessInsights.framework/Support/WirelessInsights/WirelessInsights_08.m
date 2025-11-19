void sub_1000C5950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C597C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = *(a1 + 68);
  if ((~v4 & 3) != 0)
  {
    if ((v4 & 4) == 0)
    {
      return;
    }

    sub_1000C5AC0(a1, &v6);
  }

  else
  {
    sub_1000C5A84(a1, &v6);
  }

  v5 = v6;
  *a2 = v6;
  if (v5 && (*(a1 + 68) & 8) != 0 && *(a1 + 28) == 1)
  {
    operator new();
  }
}

void sub_1000C5A3C(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1000C5A84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 68);
  if ((v2 & 0x20) != 0)
  {
    if ((v2 & 0x40) != 0)
    {
      sub_1000F64D8(a1, a2);
    }

    else
    {
      sub_1000F67F4(a1, a2);
    }
  }

  else if ((v2 & 0x40) != 0)
  {
    sub_1000F6A08(a1, a2);
  }

  else if ((v2 & 0x80) != 0)
  {
    sub_1000E77F8(a1, a2);
  }

  else
  {
    if ((v2 & 0x200) != 0)
    {
      sub_1001162E8(a1);
    }

    if ((v2 & 0x100) != 0)
    {
      sub_100144050(a1);
    }

    *a2 = 0;
  }
}

void sub_1000C5AC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 68);
  if ((v5 & 0x20) != 0)
  {
    v6 = *(a1 + 32);
    if ((v5 & 0x40) != 0)
    {
      if (!v6)
      {
        a1 = awd::profile::Condition::default_instance(a1);
        v6 = *(a1 + 32);
      }

      v8 = *(v2 + 40);
      if (!v8)
      {
        v8 = *(awd::profile::Condition::default_instance(a1) + 40);
      }

      sub_1000F6C1C(v6, v8, a2);
    }

    else
    {
      if (!v6)
      {
        v6 = *(awd::profile::Condition::default_instance(a1) + 32);
      }

      sub_1000F6F70(v6, a2);
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      v7 = *(awd::profile::Condition::default_instance(a1) + 40);
    }

    sub_1000F7008(v7, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1000C5BC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __src[0] = 0;
    __src[1] = 0;
    v4 = 8 * v3;
    v18 = 0;
    v5 = *(a1 + 8);
    do
    {
      sub_1000C597C(*v5, &v19);
      v6 = v19;
      if (v19)
      {
        v7 = __src[1];
        if (__src[1] >= v18)
        {
          v9 = __src[0];
          v10 = __src[1] - __src[0];
          v11 = (__src[1] - __src[0]) >> 3;
          v12 = v11 + 1;
          if ((v11 + 1) >> 61)
          {
            sub_100033FD0();
          }

          v13 = v18 - __src[0];
          if ((v18 - __src[0]) >> 2 > v12)
          {
            v12 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          v20[4] = __src;
          if (v14)
          {
            sub_1000C63BC(__src, v14);
          }

          v19 = 0;
          *(8 * v11) = v6;
          v8 = (8 * v11 + 8);
          memcpy(0, v9, v10);
          v15 = __src[0];
          v16 = v18;
          __src[0] = 0;
          __src[1] = v8;
          v18 = 0;
          v20[2] = v15;
          v20[3] = v16;
          v20[0] = v15;
          v20[1] = v15;
          sub_1000C6404(v20);
        }

        else
        {
          *__src[1] = v19;
          v8 = v7 + 8;
        }

        __src[1] = v8;
      }

      ++v5;
      v4 -= 8;
    }

    while (v4);
    if (__src[0] != __src[1])
    {
      operator new();
    }

    *a2 = 0;
    v20[0] = __src;
    sub_1000C6088(v20);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1000C5D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a9;
  sub_1000C6088(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5DD8(uint64_t a1)
{
  *a1 = off_1002AF6A8;
  v3 = (a1 + 8);
  sub_1000C6088(&v3);
  return a1;
}

void sub_1000C5E30(uint64_t a1)
{
  *a1 = off_1002AF6A8;
  v1 = (a1 + 8);
  sub_1000C6088(&v1);
  operator delete();
}

BOOL sub_1000C5E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    while ((*(**v3 + 16))(*v3, a2, a3))
    {
      if (++v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = *(a1 + 16);
  }

  return v3 == v4;
}

uint64_t sub_1000C5F30(uint64_t a1)
{
  *a1 = off_1002AF6E8;
  v3 = (a1 + 8);
  sub_1000C6088(&v3);
  return a1;
}

void sub_1000C5F88(uint64_t a1)
{
  *a1 = off_1002AF6E8;
  v1 = (a1 + 8);
  sub_1000C6088(&v1);
  operator delete();
}

BOOL sub_1000C5FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    while (((*(**v3 + 16))(*v3, a2, a3) & 1) == 0)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = *(a1 + 16);
  }

  return v3 != v4;
}

void sub_1000C6088(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000C60DC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1000C60DC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_1000C6148(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000C6148(a1, *a2);
    sub_1000C6148(a1, a2[1]);
    v4 = a2[6];
    a2[6] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void *sub_1000C6284(void *a1)
{
  v2 = a1[1];
  *a1 = off_1002AF728;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1000C62F0(void *a1)
{
  v2 = a1[1];
  *a1 = off_1002AF728;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

void sub_1000C63BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_1000C6404(uint64_t a1)
{
  sub_1000C643C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000C643C(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

const char *sub_1000C64B0(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_1002AF768[a1];
  }
}

const char *sub_1000C64D4(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_1002AF780[a1];
  }
}

uint64_t sub_1000C64F8()
{
  if (qword_1002DBEA0)
  {
    (*(*qword_1002DBEA0 + 8))(qword_1002DBEA0);
  }

  if (qword_1002DBEA8)
  {
    (*(*qword_1002DBEA8 + 8))(qword_1002DBEA8);
  }

  result = qword_1002DBEB0;
  if (qword_1002DBEB0)
  {
    v1 = *(*qword_1002DBEB0 + 8);

    return v1();
  }

  return result;
}

double sub_1000C6700(uint64_t a1)
{
  *a1 = off_1002AF7A8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *&result = 0x100000001;
  *(a1 + 8) = 0x100000001;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1000C6738(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1002AF820;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_1000C6768(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002AF898;
  *(a1 + 24) = 0;
  *&result = 0x100000000;
  *(a1 + 32) = xmmword_1002438E0;
  *(a1 + 48) = 0;
  return result;
}

void sub_1000C67A0()
{
  v0 = qword_1002DBEB8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[1] = sub_1000C65B0;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_1000C6824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000C6838(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    sub_10001C3A0((a1 + 40), *(a1 + 48) + v4);
    memcpy((*(a1 + 40) + 4 * *(a1 + 48)), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v5 = *(a2 + 64);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v8 = *(a2 + 8);
    *(a1 + 64) |= 1u;
    *(a1 + 8) = v8;
    v5 = *(a2 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 12);
  *(a1 + 64) |= 2u;
  *(a1 + 12) = v9;
  v5 = *(a2 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 16);
  *(a1 + 64) |= 4u;
  *(a1 + 16) = v10;
  v5 = *(a2 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 20);
  *(a1 + 64) |= 8u;
  *(a1 + 20) = v11;
  v5 = *(a2 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = *(a2 + 28);
    *(a1 + 64) |= 0x20u;
    *(a1 + 28) = v13;
    v5 = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_22:
  v12 = *(a2 + 24);
  *(a1 + 64) |= 0x10u;
  *(a1 + 24) = v12;
  v5 = *(a2 + 64);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_24:
  v14 = *(a2 + 32);
  *(a1 + 64) |= 0x40u;
  *(a1 + 32) = v14;
  v5 = *(a2 + 64);
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 36);
    *(a1 + 64) |= 0x80u;
    *(a1 + 36) = v6;
    v5 = *(a2 + 64);
  }

LABEL_15:
  if ((v5 & 0x200) != 0)
  {
    v7 = *(a2 + 56);
    *(a1 + 64) |= 0x200u;
    *(a1 + 56) = v7;
  }
}

void sub_1000C6A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000C6A28(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002AF7A8;
  sub_1000C67A0();
  if (*(a1 + 5))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1000C6AA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000C6A28(a1);

  operator delete();
}

uint64_t sub_1000C6B38(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    *(result + 8) = 0x100000001;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
  }

  if ((v1 & 0x1FE00) != 0)
  {
    *(result + 56) = 0;
  }

  *(result + 48) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_1000C6B6C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_41;
              }

              v13 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_54;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_41;
            }

            v51 = 0;
            v15 = *(this + 1);
            if (v15 >= *(this + 2) || (v16 = *v15, (v16 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
              if (!result)
              {
                return result;
              }

              v16 = v51;
            }

            else
            {
              *(this + 1) = v15 + 1;
            }

            if (v16 - 1 <= 1)
            {
              *(a1 + 64) |= 1u;
              *(a1 + 8) = v16;
            }

            v23 = *(this + 1);
            v12 = *(this + 2);
            if (v23 < v12 && *v23 == 16)
            {
              v13 = v23 + 1;
              *(this + 1) = v13;
LABEL_54:
              v51 = 0;
              if (v13 >= v12 || (v24 = *v13, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
                if (!result)
                {
                  return result;
                }

                v24 = v51;
              }

              else
              {
                *(this + 1) = v13 + 1;
              }

              if (v24 - 1 <= 9)
              {
                *(a1 + 64) |= 2u;
                *(a1 + 12) = v24;
              }

              v25 = *(this + 1);
              v18 = *(this + 2);
              if (v25 < v18 && *v25 == 24)
              {
                v19 = v25 + 1;
                *(this + 1) = v19;
LABEL_64:
                v51 = 0;
                if (v19 >= v18 || (v26 = *v19, (v26 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = v51;
                }

                else
                {
                  *(this + 1) = v19 + 1;
                }

                if (v26 <= 0xB)
                {
                  *(a1 + 64) |= 4u;
                  *(a1 + 16) = v26;
                }

                v27 = *(this + 1);
                v9 = *(this + 2);
                if (v27 < v9 && *v27 == 32)
                {
                  v21 = v27 + 1;
                  *(this + 1) = v21;
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_41;
              }

              v19 = *(this + 1);
              v18 = *(this + 2);
              goto LABEL_64;
            }

            if (v7 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_41;
              }

              v21 = *(this + 1);
              v9 = *(this + 2);
LABEL_74:
              v51 = 0;
              if (v21 >= v9 || (v28 = *v21, (v28 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
                if (!result)
                {
                  return result;
                }

                v28 = v51;
                v29 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                v29 = v21 + 1;
                *(this + 1) = v29;
              }

              *(a1 + 20) = v28;
              *(a1 + 64) |= 8u;
              if (v29 < v9 && *v29 == 40)
              {
                v10 = v29 + 1;
                *(this + 1) = v10;
LABEL_82:
                v51 = 0;
                if (v10 >= v9 || (v30 = *v10, (v30 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
                  if (!result)
                  {
                    return result;
                  }

                  v30 = v51;
                  v31 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  v31 = v10 + 1;
                  *(this + 1) = v31;
                }

                *(a1 + 24) = v30;
                *(a1 + 64) |= 0x10u;
                if (v31 < v9 && *v31 == 48)
                {
                  v17 = v31 + 1;
                  *(this + 1) = v17;
LABEL_90:
                  if (v17 >= v9 || (v32 = *v17, v32 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
                    if (!result)
                    {
                      return result;
                    }

                    v33 = *(this + 1);
                    v9 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 28) = v32;
                    v33 = v17 + 1;
                    *(this + 1) = v33;
                  }

                  *(a1 + 64) |= 0x20u;
                  if (v33 < v9 && *v33 == 56)
                  {
                    v14 = v33 + 1;
                    *(this + 1) = v14;
LABEL_98:
                    if (v14 >= v9 || (v34 = *v14, v34 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                      if (!result)
                      {
                        return result;
                      }

                      v35 = *(this + 1);
                      v9 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 32) = v34;
                      v35 = v14 + 1;
                      *(this + 1) = v35;
                    }

                    *(a1 + 64) |= 0x40u;
                    if (v35 < v9 && *v35 == 64)
                    {
                      v20 = v35 + 1;
                      *(this + 1) = v20;
                      goto LABEL_106;
                    }
                  }
                }
              }
            }

            else
            {
              if (v7 == 5 && (TagFallback & 7) == 0)
              {
                v10 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_82;
              }

LABEL_41:
              if (v8 == 4)
              {
                return 1;
              }

              if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
              {
                return 0;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_90;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_98;
          }

          goto LABEL_41;
        }

        if (v7 != 8)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
LABEL_106:
        if (v20 >= v9 || (v36 = *v20, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v36;
          v37 = (v20 + 1);
          *(this + 1) = v37;
        }

        *(a1 + 64) |= 0x80u;
        if (v37 < v9)
        {
          v38 = *v37;
          goto LABEL_113;
        }
      }

      if (v7 == 9)
      {
        break;
      }

      if (v7 != 10 || (TagFallback & 7) != 0)
      {
        goto LABEL_41;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
LABEL_135:
      v51 = 0;
      if (v11 >= v9 || (v48 = *v11, (v48 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
        if (!result)
        {
          return result;
        }

        v48 = v51;
        v49 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v49 = v11 + 1;
        *(this + 1) = v49;
      }

      *(a1 + 56) = v48;
      *(a1 + 64) |= 0x200u;
      if (v49 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v22 = *(this + 1);
    v9 = *(this + 2);
    while (1)
    {
      v51 = 0;
      if (v22 >= v9 || (v39 = *v22, (v39 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
        if (!result)
        {
          return result;
        }

        v39 = v51;
      }

      else
      {
        *(this + 1) = v22 + 1;
      }

      v40 = *(a1 + 48);
      if (v40 == *(a1 + 52))
      {
        sub_10001C3A0((a1 + 40), v40 + 1);
        v40 = *(a1 + 48);
      }

      v41 = *(a1 + 40);
      *(a1 + 48) = v40 + 1;
      *(v41 + 4 * v40) = v39;
      v42 = *(a1 + 52) - *(a1 + 48);
      if (v42 >= 1)
      {
        v43 = v42 + 1;
        do
        {
          v44 = *(this + 1);
          v45 = *(this + 2);
          if (v44 >= v45 || *v44 != 72)
          {
            break;
          }

          *(this + 1) = v44 + 1;
          v51 = 0;
          if ((v44 + 1) >= v45 || (v46 = v44[1], (v46 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51);
            if (!result)
            {
              return result;
            }

            v46 = v51;
            v41 = *(a1 + 40);
          }

          else
          {
            *(this + 1) = v44 + 2;
          }

          v47 = *(a1 + 48);
          *(a1 + 48) = v47 + 1;
          *(v41 + 4 * v47) = v46;
          --v43;
        }

        while (v43 > 1);
      }

LABEL_132:
      v37 = *(this + 1);
      v9 = *(this + 2);
      if (v37 >= v9)
      {
        break;
      }

      v38 = *v37;
      if (v38 == 80)
      {
        v11 = (v37 + 1);
        *(this + 1) = v11;
        goto LABEL_135;
      }

LABEL_113:
      if (v38 != 72)
      {
        goto LABEL_1;
      }

      v22 = (v37 + 1);
      *(this + 1) = v22;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_41;
  }

  result = sub_1000C71A8(this, a1 + 40);
  if (result)
  {
    goto LABEL_132;
  }

  return result;
}

uint64_t sub_1000C71A8(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v12 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
    if (!result)
    {
      return result;
    }

    v5 = v12;
  }

  else
  {
    v12 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v13 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v9 = v13;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      v10 = *(a2 + 8);
      if (v10 == *(a2 + 12))
      {
        sub_10001C3A0(a2, v10 + 1);
        v10 = *(a2 + 8);
      }

      v11 = *a2;
      *(a2 + 8) = v10 + 1;
      *(v11 + 4 * v10) = v9;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_1000C72B8(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  if ((*(v5 + 64) & 0x80) != 0)
  {
LABEL_9:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  }

LABEL_10:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(*(v5 + 40) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  if ((*(v5 + 65) & 2) != 0)
  {
    v8 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, v8, a2, a4);
  }

  return result;
}

uint64_t sub_1000C742C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

  if (v3)
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 64);
      if ((v3 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_20:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_22:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_22;
  }

  v10 = *(a1 + 20);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_23:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_40:
  v12 = *(a1 + 24);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x20) == 0)
  {
LABEL_24:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_46:
  v14 = *(a1 + 28);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x40) == 0)
  {
LABEL_25:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_50:
  v16 = *(a1 + 32);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x80) == 0)
  {
LABEL_26:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

LABEL_54:
  v18 = *(a1 + 36);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v19 = 2;
  }

  v4 += v19;
  if ((v3 & 0x200) != 0)
  {
LABEL_58:
    v20 = *(a1 + 56);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    }

    else
    {
      v21 = 2;
    }

    v4 += v21;
  }

LABEL_64:
  v22 = *(a1 + 48);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(a1 + 40) + 4 * v23);
      if ((v25 & 0x80000000) != 0)
      {
        v26 = 10;
      }

      else if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
        v22 = *(a1 + 48);
      }

      else
      {
        v26 = 1;
      }

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  result = (v24 + v4 + v22);
  *(a1 + 60) = result;
  return result;
}

void sub_1000C76C4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_1000C86F4((a1 + 2), a2 + 8);
  if ((*(a2 + 40) & 2) != 0)
  {
    v4 = *(a2 + 32);
    a1[10] |= 2u;
    a1[8] = v4;
  }
}

void sub_1000C775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000C7774(uint64_t *a1)
{
  *a1 = off_1002AF820;
  sub_1000C67A0();
  sub_1000C8650(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1000C77DC(uint64_t *a1)
{
  sub_1000C7774(a1);

  operator delete();
}

uint64_t sub_1000C786C(uint64_t a1)
{
  if ((*(a1 + 40) & 0x1FE) != 0)
  {
    *(a1 + 32) = 0;
  }

  result = sub_1000C85E0(a1 + 8);
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1000C78A8(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
LABEL_1:
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v23 = *(this + 1);
      v20 = *(this + 2);
LABEL_34:
      v27 = 0;
      if (v23 >= v20 || (v24 = *v23, (v24 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
        if (!result)
        {
          return result;
        }

        v24 = v27;
        v25 = *(this + 1);
        v20 = *(this + 2);
      }

      else
      {
        v25 = v23 + 1;
        *(this + 1) = v25;
      }

      a1[8] = v24;
      a1[10] |= 2u;
      if (v25 == v20 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (TagFallback >> 3 == 1 && v7 == 2)
    {
      while (1)
      {
        v8 = a1[5];
        v9 = a1[4];
        if (v9 >= v8)
        {
          if (v8 == a1[6])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v8 + 1);
            v8 = a1[5];
          }

          a1[5] = v8 + 1;
          operator new();
        }

        v10 = *(a1 + 1);
        a1[4] = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v28 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
          {
            return 0;
          }
        }

        else
        {
          v28 = *v12;
          *(this + 1) = v12 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28);
        if (!sub_1000C6B6C(v11, this, v16) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
        v17 = *(this + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(this + 14) = v19;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        if (v21 >= v20)
        {
          goto LABEL_1;
        }

        v22 = *v21;
        if (v22 != 10)
        {
          if (v22 != 16)
          {
            goto LABEL_1;
          }

          v23 = (v21 + 1);
          *(this + 1) = v23;
          goto LABEL_34;
        }

        *(this + 1) = v21 + 1;
      }
    }

LABEL_30:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000C7B68(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if ((*(v5 + 40) & 2) != 0)
  {
    v7 = *(v5 + 32);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1000C7BFC(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    v4 = *(a1 + 32);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 16);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_1000C742C(*(*(a1 + 8) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  *(a1 + 36) = v6;
  return v6;
}

void sub_1000C7CD4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), *(a2 + 16) + a1[4]);
  if (*(a2 + 16) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 8) + 8 * v4);
      v6 = a1[5];
      v7 = a1[4];
      if (v7 >= v6)
      {
        if (v6 == a1[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v6 + 1);
          v6 = a1[5];
        }

        a1[5] = v6 + 1;
        operator new();
      }

      v8 = *(a1 + 1);
      a1[4] = v7 + 1;
      sub_1000C76C4(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 16));
  }

  v9 = *(a2 + 48);
  if ((v9 & 0x1FE) != 0)
  {
    if ((v9 & 2) != 0)
    {
      v11 = *(a2 + 32);
      a1[12] |= 2u;
      a1[8] = v11;
      v9 = *(a2 + 48);
      if ((v9 & 4) == 0)
      {
LABEL_14:
        if ((v9 & 8) == 0)
        {
          return;
        }

        goto LABEL_15;
      }
    }

    else if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

    v12 = *(a2 + 36);
    a1[12] |= 4u;
    a1[9] = v12;
    if ((*(a2 + 48) & 8) == 0)
    {
      return;
    }

LABEL_15:
    v10 = *(a2 + 40);
    a1[12] |= 8u;
    a1[10] = v10;
  }
}

void sub_1000C7EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000C7EBC(uint64_t *a1)
{
  *a1 = off_1002AF898;
  sub_1000C67A0();
  sub_1000C8650(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1000C7F24(uint64_t *a1)
{
  sub_1000C7EBC(a1);

  operator delete();
}

uint64_t sub_1000C7FBC(uint64_t a1)
{
  if ((*(a1 + 48) & 0x1FE) != 0)
  {
    *(a1 + 32) = &_mh_execute_header;
    *(a1 + 40) = 0;
  }

  result = sub_1000C85E0(a1 + 8);
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1000C8004(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
LABEL_1:
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v7 == 1)
      {
        if (v8 == 2)
        {
          while (1)
          {
            v15 = a1[5];
            v16 = a1[4];
            if (v16 >= v15)
            {
              if (v15 == a1[6])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 2), v15 + 1);
                v15 = a1[5];
              }

              a1[5] = v15 + 1;
              operator new();
            }

            v17 = *(a1 + 1);
            a1[4] = v16 + 1;
            v18 = *(v17 + 8 * v16);
            v37 = 0;
            v19 = *(this + 1);
            if (v19 >= *(this + 2) || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
              {
                return 0;
              }
            }

            else
            {
              v37 = *v19;
              *(this + 1) = v19 + 1;
            }

            v20 = *(this + 14);
            v21 = *(this + 15);
            *(this + 14) = v20 + 1;
            if (v20 >= v21)
            {
              return 0;
            }

            v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v37);
            if (!sub_1000C78A8(v18, this, v23) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
            v24 = *(this + 14);
            v25 = __OFSUB__(v24, 1);
            v26 = v24 - 1;
            if (v26 < 0 == v25)
            {
              *(this + 14) = v26;
            }

            v27 = *(this + 1);
            v9 = *(this + 2);
            if (v27 >= v9)
            {
              goto LABEL_1;
            }

            v28 = *v27;
            if (v28 != 10)
            {
              if (v28 != 16)
              {
                goto LABEL_1;
              }

              v10 = (v27 + 1);
              *(this + 1) = v10;
              goto LABEL_11;
            }

            *(this + 1) = v27 + 1;
          }
        }

        goto LABEL_40;
      }

      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
LABEL_11:
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 8);
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        a1[8] = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      a1[12] |= 2u;
      if (v12 < v9 && *v12 == 24)
      {
        v29 = v12 + 1;
        *(this + 1) = v29;
LABEL_49:
        v35 = 0;
        if (v29 >= v9 || (v31 = *v29, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35);
          if (!result)
          {
            return result;
          }

          v31 = v35;
        }

        else
        {
          *(this + 1) = v29 + 1;
        }

        if (v31 - 1 <= 9)
        {
          a1[12] |= 4u;
          a1[9] = v31;
        }

        v32 = *(this + 1);
        v13 = *(this + 2);
        if (v32 < v13 && *v32 == 32)
        {
          v14 = v32 + 1;
          *(this + 1) = v14;
LABEL_59:
          v36 = 0;
          if (v14 >= v13 || (v33 = *v14, (v33 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36);
            if (!result)
            {
              return result;
            }

            v33 = v36;
            v34 = *(this + 1);
            v13 = *(this + 2);
          }

          else
          {
            v34 = v14 + 1;
            *(this + 1) = v34;
          }

          a1[10] = v33;
          a1[12] |= 8u;
          if (v34 == v13 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v7 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v29 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_49;
      }
    }

    else if (v7 == 4 && (TagFallback & 7) == 0)
    {
      v14 = *(this + 1);
      v13 = *(this + 2);
      goto LABEL_59;
    }

LABEL_40:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000C83B0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 48);
  if ((v7 & 2) == 0)
  {
    if ((v7 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 36), a2, a4);
    if ((*(v5 + 48) & 8) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
  v7 = *(v5 + 48);
  if ((v7 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((v7 & 8) == 0)
  {
    return result;
  }

LABEL_10:
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v8, a2, a4);
}

uint64_t sub_1000C847C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 48);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 32);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 48);
      if ((v3 & 4) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 4) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 36);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_16:
  if ((v3 & 8) != 0)
  {
    v8 = *(a1 + 40);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
  }

LABEL_23:
  v10 = *(a1 + 16);
  v11 = (v10 + v4);
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = sub_1000C7BFC(*(*(a1 + 8) + 8 * v12), a2);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      }

      else
      {
        v15 = 1;
      }

      v11 = (v14 + v11 + v15);
      ++v12;
    }

    while (v12 < *(a1 + 16));
  }

  *(a1 + 44) = v11;
  return v11;
}

uint64_t sub_1000C85E0(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_1000C8650(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    operator delete[]();
  }

  return result;
}

void sub_1000C86F4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*a2 + 8 * v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      sub_1000C6838(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

WISWiFiToCellTransitionMonitor **sub_1000C8954(WISWiFiToCellTransitionMonitor **a1)
{
  *a1 = 0;
  v2 = objc_alloc_init(WISWiFiToCellTransitionMonitor);
  v3 = *a1;
  *a1 = v2;

  return a1;
}

void sub_1000C8CAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000C8D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = FMModel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000C8E9C(uint64_t a1)
{
  v15 = [*(a1 + 32) findContextUuidsToDelete:*(a1 + 40)];
  v2 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1002070B8(v23, [v15 count], objc_msgSend(*(a1 + 40), "count"), v2);
  }

  v3 = [*(a1 + 32) contextUUIDToStateMap];
  [v3 removeObjectsForKeys:v15];

  v4 = +[NSDate now];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [*(a1 + 32) contextUUIDToStateMap];
        v11 = [v9 uuid];
        v12 = [v10 objectForKey:v11];

        v13 = *(qword_1002DBE98 + 136);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            *buf = 138412290;
            v21 = v9;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMModel]:#D Updating existing context %@", buf, 0xCu);
          }

          [*(a1 + 32) _updateStateForContext:v9 atTime:v4 withExistingState:v12];
        }

        else
        {
          if (v14)
          {
            *buf = 138412290;
            v21 = v9;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMModel]:#D Initializing data for new context %@", buf, 0xCu);
          }

          [*(a1 + 32) _initializeStateForContext:v9 atTime:v4];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }
}

void sub_1000CA178(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

const char *sub_1000CA194(unsigned int a1)
{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return (&off_1002AF970)[a1];
  }
}

unint64_t sub_1000CA1B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = *v1;
  v3 = v1[1];
  v5 = *v1 >> 8;
  v6 = HIDWORD(*v1);
  v7 = *v1 >> 40;
  do
  {
    if (*(v1 + 12) == 1 && ((v3 & 0x100000000) == 0 || *(v1 + 2) > v3))
    {
      v4 = *v1;
      v3 = v1[1];
      v5 = *v1 >> 8;
      v6 = HIDWORD(*v1);
      v7 = *v1 >> 40;
    }

    v1 += 2;
  }

  while (v1 != v2);
  return (v6 << 32) | (v7 << 40) | ((v5 & 0xFFFFFF) << 8) | v4;
}

uint64_t sub_1000CA230(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  v5 = a1 + 16;
  *(a1 + 32) = 0;
  *a1 = *(a2 + 8);
  v6 = *(a2 + 24);
  if (!v6)
  {
    v6 = *(sub_100142C48() + 24);
  }

  v8 = *a3;
  for (i = a3[1]; v8 != i; ++v8)
  {
    v11 = *v8;
    sub_1000CA334(v11, v6, v10);
    if (v10[1] != v10[0])
    {
      sub_1000CC7C8(v5, &v11);
    }

    v12 = v10;
    sub_1000CC710(&v12);
  }

  return a1;
}

void sub_1000CA334(int a1@<W1>, void *a2@<X2>, void *a3@<X8>)
{
  if (a1 - 1) < 8u && ((0xA3u >> (a1 - 1)))
  {
    v4 = *(a2 + qword_100243968[(a1 - 1)]);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (a1 > 5)
        {
          if (a1 == 6)
          {
            v20 = *(a2[7] + 8 * i);
            v21 = v20[2];
            v22 = v20[3];
            v24 = v20[4];
            v23 = v20[5];
            operator new();
          }

          if (a1 == 8)
          {
            v11 = *(a2[10] + 8 * i);
            v12 = v11[2];
            v13 = v11[3];
            v15 = v11[4];
            v14 = v11[5];
            operator new();
          }
        }

        else
        {
          if (a1 == 1)
          {
            v16 = *(a2[1] + 8 * i);
            v17 = v16[2];
            v18 = v16[3];
            v19 = v16[4];
            operator new();
          }

          if (a1 == 2)
          {
            v6 = *(a2[4] + 8 * i);
            v7 = v6[2];
            v8 = v6[3];
            v10 = v6[4];
            v9 = v6[5];
            operator new();
          }
        }
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1000CA814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  v18 = a15;
  a15 = 0;
  if (v18)
  {
    sub_1000CC8B0(&a15, v18);
  }

  a15 = a11;
  sub_1000CC710(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA878(uint64_t a1, unsigned int a2)
{
  v13 = a2;
  v2 = a1 + 24;
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 16;
  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v2)
  {
    return 0;
  }

  if (*(v5 + 32) > a2)
  {
    return 0;
  }

  v14 = &v13;
  v9 = sub_1000CCB44(v4, &v13);
  v10 = v9[5];
  v11 = v9[6];
  if (v10 == v11)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*(*v10 + 28) == 1)
    {
      result = (*(*v10 + 24) + result);
    }

    v10 += 8;
  }

  while (v10 != v11);
  return result;
}

unint64_t sub_1000CA934(uint64_t a1, unsigned int a2)
{
  v21 = a2;
  if (a2 != 1)
  {
    v6 = a1 + 24;
    v3 = *(a1 + 24);
    if (!v3)
    {
      v2 = 0;
      goto LABEL_3;
    }

    v7 = a1 + 16;
    v8 = v6;
    do
    {
      v9 = *(v3 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v3;
      }

      v3 = *(v3 + 8 * v11);
    }

    while (v3);
    if (v8 != v6 && *(v8 + 32) <= a2)
    {
      v22 = &v21;
      v12 = sub_1000CCB44(v7, &v21);
      v13 = v12[5];
      v14 = v12[6];
      if (v13 != v14)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = *v13;
          if (*(*v13 + 28) == 1)
          {
            v18 = *(v17 + 24);
          }

          else
          {
            v18 = 0;
          }

          if (*(v17 + 20) == 1)
          {
            v19 = *(v17 + 16);
          }

          else
          {
            v19 = 0;
          }

          v16 += v18;
          v15 += v19 * v18;
          v13 += 8;
        }

        while (v13 != v14);
        if (v16)
        {
          v20 = v15 / v16;
          v4 = (v15 / v16) & 0xFFFFFF00;
          LODWORD(v3) = v20;
          v2 = &_mh_execute_header;
          return v2 | v4 | v3;
        }
      }
    }
  }

  v2 = 0;
  LODWORD(v3) = 0;
LABEL_3:
  v4 = 0;
  return v2 | v4 | v3;
}

void sub_1000CAA4C(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  *a2 = v5;
LABEL_9:
  xpc_release(v4);
  v75 = xpc_int64_create(*a1);
  if (!v75)
  {
    v75 = xpc_null_create();
  }

  *&v66 = a2;
  *(&v66 + 1) = "mcc";
  sub_10000F50C(&v66, &v75, &v76);
  xpc_release(v76);
  v76 = 0;
  xpc_release(v75);
  v75 = 0;
  v73 = xpc_int64_create(a1[1]);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  *&v66 = a2;
  *(&v66 + 1) = "mnc";
  sub_10000F50C(&v66, &v73, &v74);
  xpc_release(v74);
  v74 = 0;
  xpc_release(v73);
  v73 = 0;
  v71 = xpc_int64_create(a1[3]);
  if (!v71)
  {
    v71 = xpc_null_create();
  }

  *&v66 = a2;
  *(&v66 + 1) = "InServiceCount";
  sub_10000F50C(&v66, &v71, &v72);
  xpc_release(v72);
  v72 = 0;
  xpc_release(v71);
  v71 = 0;
  v69 = xpc_int64_create(a1[2]);
  if (!v69)
  {
    v69 = xpc_null_create();
  }

  *&v66 = a2;
  *(&v66 + 1) = "mLimitedServiceCount";
  sub_10000F50C(&v66, &v69, &v70);
  xpc_release(v70);
  v70 = 0;
  xpc_release(v69);
  v69 = 0;
  v6 = *(a1 + 2);
  if (v6 != a1 + 6)
  {
    do
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v7)
      {
        v68 = v7;
      }

      else
      {
        v8 = xpc_null_create();
        v68 = v8;
        if (!v8)
        {
          v9 = xpc_null_create();
          v8 = 0;
          goto LABEL_25;
        }
      }

      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        xpc_retain(v8);
        goto LABEL_26;
      }

      v9 = xpc_null_create();
LABEL_25:
      v68 = v9;
LABEL_26:
      xpc_release(v8);
      if (*(v6 + 6) != *(v6 + 5))
      {
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          std::to_string(&v65, v10 + 1);
          v12 = std::string::insert(&v65, 0, "Cell_");
          v13 = *&v12->__r_.__value_.__l.__data_;
          v67 = v12->__r_.__value_.__r.__words[2];
          v66 = v13;
          v12->__r_.__value_.__l.__size_ = 0;
          v12->__r_.__value_.__r.__words[2] = 0;
          v12->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          v14 = *(v6 + 5);
          if (v10 >= (*(v6 + 6) - v14) >> 3)
          {
            sub_1000CCC1C();
          }

          v15 = xpc_dictionary_create(0, 0, 0);
          v16 = v15;
          if (v15)
          {
            v64 = v15;
          }

          else
          {
            v16 = xpc_null_create();
            v64 = v16;
            if (!v16)
            {
              v17 = xpc_null_create();
              v16 = 0;
              goto LABEL_38;
            }
          }

          if (xpc_get_type(v16) == &_xpc_type_dictionary)
          {
            xpc_retain(v16);
            goto LABEL_39;
          }

          v17 = xpc_null_create();
LABEL_38:
          v64 = v17;
LABEL_39:
          xpc_release(v16);
          v18 = *(v14 + 8 * v10);
          if (*(v18 + 4) == 1)
          {
            std::to_string(&v65, *v18);
          }

          else
          {
            sub_100007ECC(&v65, "");
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v65;
          }

          else
          {
            v19 = v65.__r_.__value_.__r.__words[0];
          }

          v62 = xpc_string_create(v19);
          if (!v62)
          {
            v62 = xpc_null_create();
          }

          p_value = &v64;
          v61 = "arfcn";
          sub_10000F50C(&p_value, &v62, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v62);
          v62 = 0;
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          v20 = *(v14 + 8 * v10);
          if (*(v20 + 12) == 1)
          {
            std::to_string(&v65, *(v20 + 8));
          }

          else
          {
            sub_100007ECC(&v65, "");
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &v65;
          }

          else
          {
            v21 = v65.__r_.__value_.__r.__words[0];
          }

          v58 = xpc_string_create(v21);
          if (!v58)
          {
            v58 = xpc_null_create();
          }

          p_value = &v64;
          v61 = "band";
          sub_10000F50C(&p_value, &v58, &v59);
          xpc_release(v59);
          v59 = 0;
          xpc_release(v58);
          v58 = 0;
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          v22 = *(v14 + 8 * v10);
          if (*(v22 + 20) == 1)
          {
            std::to_string(&v65, *(v22 + 16));
          }

          else
          {
            sub_100007ECC(&v65, "");
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v65;
          }

          else
          {
            v23 = v65.__r_.__value_.__r.__words[0];
          }

          v56 = xpc_string_create(v23);
          if (!v56)
          {
            v56 = xpc_null_create();
          }

          p_value = &v64;
          v61 = "rsrp";
          sub_10000F50C(&p_value, &v56, &v57);
          xpc_release(v57);
          v57 = 0;
          xpc_release(v56);
          v56 = 0;
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          v24 = *(v14 + 8 * v10);
          if (*(v24 + 28) == 1)
          {
            std::to_string(&v65, *(v24 + 24));
          }

          else
          {
            sub_100007ECC(&v65, "");
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v65;
          }

          else
          {
            v25 = v65.__r_.__value_.__r.__words[0];
          }

          v54 = xpc_string_create(v25);
          if (!v54)
          {
            v54 = xpc_null_create();
          }

          p_value = &v64;
          v61 = "count";
          sub_10000F50C(&p_value, &v54, &v55);
          xpc_release(v55);
          v55 = 0;
          xpc_release(v54);
          v54 = 0;
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          v52 = v64;
          if (v64)
          {
            xpc_retain(v64);
          }

          else
          {
            v52 = xpc_null_create();
          }

          v26 = &v66;
          if (v67 < 0)
          {
            v26 = v66;
          }

          v65.__r_.__value_.__r.__words[0] = &v68;
          v65.__r_.__value_.__l.__size_ = v26;
          sub_1000CB5E8(&v65, &v52, &v53);
          xpc_release(v53);
          v53 = 0;
          xpc_release(v52);
          v52 = 0;
          v27 = *(v14 + 8 * v10);
          if (*(v27 + 40) != *(v27 + 32))
          {
            v28 = xpc_array_create(0, 0);
            if (v28 || (v28 = xpc_null_create()) != 0)
            {
              if (xpc_get_type(v28) == &_xpc_type_array)
              {
                xpc_retain(v28);
                v29 = v28;
              }

              else
              {
                v29 = xpc_null_create();
              }
            }

            else
            {
              v29 = xpc_null_create();
              v28 = 0;
            }

            xpc_release(v28);
            v30 = *(v27 + 32);
            v31 = *(v27 + 40);
            while (1)
            {
              if (v30 == v31)
              {
                v45 = v29;
                if (v29)
                {
                  xpc_retain(v29);
                }

                else
                {
                  v45 = xpc_null_create();
                }

                v65.__r_.__value_.__r.__words[0] = &v64;
                v65.__r_.__value_.__l.__size_ = "redCapInfo";
                sub_1000947D8(&v65, &v45, &v46);
                xpc_release(v46);
                v46 = 0;
                xpc_release(v45);
                v45 = 0;
                xpc_release(v29);
                break;
              }

              v32 = xpc_dictionary_create(0, 0, 0);
              v33 = v32;
              if (v32)
              {
                value = v32;
              }

              else
              {
                v33 = xpc_null_create();
                value = v33;
                if (!v33)
                {
                  v34 = xpc_null_create();
                  v33 = 0;
                  goto LABEL_100;
                }
              }

              if (xpc_get_type(v33) == &_xpc_type_dictionary)
              {
                xpc_retain(v33);
                goto LABEL_101;
              }

              v34 = xpc_null_create();
LABEL_100:
              value = v34;
LABEL_101:
              xpc_release(v33);
              if (*(v30 + 12) == 1)
              {
                std::to_string(&v65, *(v30 + 8));
              }

              else
              {
                sub_100007ECC(&v65, "");
              }

              if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v35 = &v65;
              }

              else
              {
                v35 = v65.__r_.__value_.__r.__words[0];
              }

              v49 = xpc_string_create(v35);
              if (!v49)
              {
                v49 = xpc_null_create();
              }

              p_value = &value;
              v61 = "red_cap_count";
              sub_10000F50C(&p_value, &v49, &v50);
              xpc_release(v50);
              v50 = 0;
              xpc_release(v49);
              v49 = 0;
              if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v65.__r_.__value_.__l.__data_);
              }

              if (*(v30 + 4) == 1)
              {
                std::to_string(&v65, *v30);
              }

              else
              {
                sub_100007ECC(&v65, "");
              }

              if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v36 = &v65;
              }

              else
              {
                v36 = v65.__r_.__value_.__r.__words[0];
              }

              v47 = xpc_string_create(v36);
              if (!v47)
              {
                v47 = xpc_null_create();
              }

              p_value = &value;
              v61 = "red_cap_config";
              sub_10000F50C(&p_value, &v47, &v48);
              xpc_release(v48);
              v48 = 0;
              xpc_release(v47);
              v47 = 0;
              if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v65.__r_.__value_.__l.__data_);
              }

              xpc_array_append_value(v29, value);
              xpc_release(value);
              v30 += 16;
            }
          }

          xpc_release(v64);
          if (SHIBYTE(v67) < 0)
          {
            operator delete(v66);
          }

          v10 = v11;
        }

        while (v11 < (*(v6 + 6) - *(v6 + 5)) >> 3);
      }

      v37 = sub_1000CA194(*(v6 + 32));
      sub_100007ECC(&v66, v37);
      v43 = v68;
      if (v68)
      {
        xpc_retain(v68);
      }

      else
      {
        v43 = xpc_null_create();
      }

      v38 = &v66;
      if (v67 < 0)
      {
        v38 = v66;
      }

      v65.__r_.__value_.__r.__words[0] = a2;
      v65.__r_.__value_.__l.__size_ = v38;
      sub_1000CB5E8(&v65, &v43, &v44);
      xpc_release(v44);
      v44 = 0;
      xpc_release(v43);
      v43 = 0;
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      xpc_release(v68);
      v39 = *(v6 + 1);
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = *(v6 + 2);
          v41 = *v40 == v6;
          v6 = v40;
        }

        while (!v41);
      }

      v6 = v40;
    }

    while (v40 != a1 + 6);
  }
}

void sub_1000CB47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, xpc_object_t object, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  xpc_release(*(v39 - 160));
  xpc_release(*a11);
  *a11 = 0;
  _Unwind_Resume(a1);
}

xpc_object_t sub_1000CB5E8@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t sub_1000CB634(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  __src = 134350337;
  sub_1000842BC((a1 + 56), &__src, &v4, 4uLL);
  return a1;
}

void sub_1000CB6C4(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v6;
    operator delete(v6);
  }

  sub_1000CCC34(v2, *v4);
  _Unwind_Resume(a1);
}

void sub_1000CB6F0(uint64_t a1, int32x2_t **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 24);
  sub_1000CCC34(a1 + 16, *(a1 + 24));
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *v4 = 0;
  v5 = *a2;
  if (*a2)
  {
    *a1 = vrev64_s32(v5[1]);
    *(a1 + 8) = v5[5].i32[0];
    if (v5[3].i32[0] >= 1)
    {
      v6 = **&(*a2)[2];
      operator new();
    }

    sub_1000CB874(a1);
  }
}

uint64_t *sub_1000CB820(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000CC6B0(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

void sub_1000CB874(unsigned int *a1)
{
  sub_1000CC0B8(a1, &object);
  v1 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(v2, &object);
    sub_1002076A0(v2, buf, v1);
  }

  xpc_release(object);
}

uint64_t sub_1000CB940(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  sub_1000CCC34(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_1000CB984(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 == (a1 + 24))
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v4[5];
      v10 = *(v9 + 16);
      if (v10 != (v9 + 24))
      {
        do
        {
          for (i = v10[5]; i != v10[6]; i += 8)
          {
            if (*(*i + 28) == 1 && *(*i + 24) > v5)
            {
              v6 = *v9;
              v7 = *(v9 + 4);
              v5 = *(*i + 24);
              v8 = *(v10 + 32);
            }
          }

          v12 = v10[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v10[2];
              v14 = *v13 == v10;
              v10 = v13;
            }

            while (!v14);
          }

          v10 = v13;
        }

        while (v13 != (v9 + 24));
      }

      v15 = v4[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v4[2];
          v14 = *v16 == v4;
          v4 = v16;
        }

        while (!v14);
      }

      v4 = v16;
    }

    while (v16 != (a1 + 24));
  }

  v17 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18[0] = 67109890;
    v18[1] = v6;
    v19 = 1024;
    v20 = v7;
    v21 = 2080;
    v22 = sub_1000CA194(v8);
    v23 = 1024;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "insight_config:#I Crowdsourced learnings PLMN (MCC = %u, MNC = %u) for %s RAT has the highest count = %u", v18, 0x1Eu);
  }

  sub_1000CBB78(a1, v6, v7, a2);
}

void sub_1000CBB78(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(qword_1002DBE98 + 128);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    LODWORD(v41[0]) = a2;
    WORD2(v41[0]) = 1024;
    *(v41 + 6) = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "insight_config:#I Getting the OOS characteristics for the  MCC = %d, MNC = %d", buf, 0xEu);
  }

  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  *(a4 + 20) = 0;
  *(a4 + 24) = 0;
  *(a4 + 28) = 0;
  *(a4 + 32) = 0;
  *(a4 + 36) = 0;
  *(a4 + 40) = 0;
  *(a4 + 44) = 0;
  *(a4 + 48) = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  v39[0] = a2;
  v39[1] = a3;
  v9 = sub_1000CCE18(a1 + 16, v39);
  if ((a1 + 24) == v9)
  {
    v32 = *(qword_1002DBE98 + 128);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "insight_config:#I Could not find the OOS characteristics for the Home PLMN", buf, 2u);
    }
  }

  else
  {
    v10 = v9;
    v11 = *(qword_1002DBE98 + 128);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100207714(v10 + 5, v11);
    }

    v12 = v10[5];
    v13 = *(v12 + 16);
    v33 = (v12 + 24);
    if (v13 != (v12 + 24))
    {
      v35 = __PAIR64__(a3, a2);
      v36 = 0;
      v14 = 0;
      v15 = 0;
      LOBYTE(v16) = 0;
      v34 = 0;
      while (1)
      {
        v17 = *(qword_1002DBE98 + 128);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = sub_1000CA194(*(v13 + 32));
          *buf = 136315138;
          v41[0] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "insight_config:#I Crowdsourced learnings RAT: %s", buf, 0xCu);
        }

        v19 = v13[5];
        v20 = v13[6];
        while (v19 != v20)
        {
          v21 = *v19;
          v22 = *(qword_1002DBE98 + 128);
          if (*(*v19 + 28) != 1)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1002077B0(&v37, v38, v22);
            }

LABEL_22:
            v23 = v15;
            goto LABEL_25;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(v21 + 24);
            *buf = 67109120;
            LODWORD(v41[0]) = v26;
            _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "insight_config:#D Crowdsourced learnings Count: %d", buf, 8u);
            v21 = *v19;
          }

          v23 = *(v21 + 24);
          if (v23 <= v14)
          {
            goto LABEL_22;
          }

          v16 = *(v13 + 32);
          *(a4 + 8) = *(v21 + 8);
          *(a4 + 12) = *(v21 + 12);
          *(a4 + 16) = *v21;
          *(a4 + 20) = *(v21 + 4);
          *(a4 + 24) = *(v21 + 16);
          *(a4 + 28) = *(v21 + 20);
          v24 = sub_1000CA1B8(v21);
          if (v16 == 8)
          {
            if ((v25 & 0x100000000) != 0)
            {
              v34 = v25 != 0;
              *(a4 + 44) = v24;
              *(a4 + 48) = BYTE4(v24);
              LOBYTE(v16) = 8;
            }

            v36 = v35;
          }

          else
          {
            v36 = v35;
          }

          v14 = v23;
LABEL_25:
          ++v19;
          v15 = v23;
        }

        v27 = v13[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v13[2];
            v29 = *v28 == v13;
            v13 = v28;
          }

          while (!v29);
        }

        v13 = v28;
        if (v28 == v33)
        {
          v30 = v36;
          *(a4 + 4) = HIDWORD(v36);
          v31 = v34;
          goto LABEL_36;
        }
      }
    }

    v31 = 0;
    LOBYTE(v16) = 0;
    LODWORD(v15) = 0;
    v30 = 0;
LABEL_36:
    *a4 = v30;
    *(a4 + 36) = v15;
    *(a4 + 32) = v16;
    *(a4 + 40) = v31;
  }
}

uint64_t sub_1000CBF78(unsigned int *a1)
{
  v1 = a1[1] + *a1 + a1[2];
  if (v1)
  {
    v2 = ((*a1 / v1) * 100.0);
    v1 = 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 | (v1 << 8);
}

uint64_t sub_1000CBFBC(unsigned int *a1)
{
  v1 = a1[1];
  v2 = v1 + *a1 + a1[2];
  if (v2)
  {
    v3 = (((*a1 + v1) / v2) * 100.0);
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3 | (v4 << 8);
}

uint64_t sub_1000CC00C(_DWORD *a1)
{
  v1 = a1[1];
  v2 = v1 + *a1 + a1[2];
  if (v2)
  {
    v3 = ((v1 / v2) * 100.0);
    v2 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 | (v2 << 8);
}

unint64_t sub_1000CC050(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v8 = a2 | (a3 << 32);
  v6 = sub_1000CCE18(a1 + 16, &v8);
  if ((a1 + 24) == v6)
  {
    return 0;
  }

  else
  {
    return sub_1000CA934(v6[5], a4) & 0xFFFFFFFFFFLL;
  }
}

void sub_1000CC0B8(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v31 = xpc_double_create(*(a1 + 5));
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  __p[0] = a2;
  __p[1] = "latitude";
  sub_10000F50C(__p, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  v29 = xpc_double_create(*(a1 + 6));
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  __p[0] = a2;
  __p[1] = "longitude";
  sub_10000F50C(__p, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  v27 = xpc_int64_create(*a1);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  __p[0] = a2;
  __p[1] = "NoServiceCount";
  sub_10000F50C(__p, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  object = xpc_int64_create(a1[1]);
  if (!object)
  {
    object = xpc_null_create();
  }

  __p[0] = a2;
  __p[1] = "LimitedServiceCount";
  sub_10000F50C(__p, &object, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(object);
  object = 0;
  v23 = xpc_int64_create(a1[2]);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  __p[0] = a2;
  __p[1] = "InServiceCount";
  sub_10000F50C(__p, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  v21 = xpc_int64_create(*(a1 + 4));
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  __p[0] = a2;
  __p[1] = "NumberofPLMNs";
  sub_10000F50C(__p, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v7 = *(a1 + 2);
  v8 = a1 + 6;
  if (v7 != a1 + 6)
  {
    v9 = 0;
    do
    {
      std::to_string(&v18, ++v9);
      v10 = std::string::insert(&v18, 0, "PLMN_");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v20 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      sub_1000CAA4C(*(v7 + 5), &v16);
      if (v20 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v18.__r_.__value_.__r.__words[0] = a2;
      v18.__r_.__value_.__l.__size_ = v12;
      sub_1000CB5E8(&v18, &v16, &v17);
      xpc_release(v17);
      v17 = 0;
      xpc_release(v16);
      v16 = 0;
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      v13 = *(v7 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v7 + 2);
          v15 = *v14 == v7;
          v7 = v14;
        }

        while (!v15);
      }

      v7 = v14;
    }

    while (v14 != v8);
  }
}

double sub_1000CC520(void *a1, __n128 a2, __n128 a3)
{
  v3 = a1[7];
  v4 = a1[8];
  if (v3 == v4)
  {
    v19 = 0;
    a3.n128_u64[0] = 0;
    v18 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a1 + 3;
    v28 = a2;
    v27 = a2;
    do
    {
      v8 = a1[2];
      if (v8 == v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          v10 = sub_1000CA878(v8[5], *v3);
          v11 = v8[1];
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
              v12 = v8[2];
              v13 = *v12 == v8;
              v8 = v12;
            }

            while (!v13);
          }

          v9 += v10;
          v8 = v12;
        }

        while (v12 != v7);
      }

      v14 = *v3;
      if (v14 > 5)
      {
        v16 = v27;
        v15 = v28;
        a3.n128_u64[0] = __PAIR64__(v9, v28.n128_u32[0]);
        if (v14 != 8)
        {
          a3.n128_f64[0] = v28.n128_f64[0];
        }

        if (v14 == 6)
        {
          v16.n128_f64[0] = COERCE_DOUBLE(__PAIR64__(v9, v27.n128_u32[0]));
        }

        else
        {
          v15.n128_f64[0] = a3.n128_f64[0];
        }

        v27 = v16;
        v28 = v15;
      }

      else if (v14 == 1)
      {
        v17 = v27;
        v17.n128_u32[0] = v9;
        v27 = v17;
      }

      else
      {
        a3 = v28;
        if (v14 == 2)
        {
          a3.n128_f64[0] = COERCE_DOUBLE(__PAIR64__(v28.n128_u32[1], v9));
        }

        v28 = a3;
      }

      v6 += v9;
      ++v3;
    }

    while (v3 != v4);
    a3.n128_f32[0] = v6;
    v18 = vcvt_f32_u32(v27.n128_u64[0]);
    v19 = vcvt_f32_u32(v28.n128_u64[0]);
  }

  v20 = vdup_lane_s32(a3.n128_u64[0], 0);
  v21 = vdiv_f32(v18, v20);
  v22 = vdiv_f32(v19, v20);
  v23 = vdup_n_s32(0x42C80000u);
  v24 = vcvt_u32_f32(vmul_f32(v21, v23));
  v25.i64[0] = v24.u32[0];
  v25.i64[1] = v24.u32[1];
  *&result = vorrq_s8(vshll_n_s32(vcvt_u32_f32(vmul_f32(v22, v23)), 0x20uLL), v25).u64[0];
  return result;
}

void sub_1000CC6B0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1000CC6B0(a1, *a2);
    sub_1000CC6B0(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1000CC710(&v4);
    operator delete(a2);
  }
}

void sub_1000CC710(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000CC764(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000CC764(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_1000CC8B0(v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t *sub_1000CC7C8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1000CC8B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2)
    {
      *(a2 + 40) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_1000CC90C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100033BCC();
}

void *sub_1000CC954(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000CCA80(v6, v10);
    }

    sub_100033FD0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1000CCA80(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000CC90C(a1, a2);
  }

  sub_100033FD0();
}

uint64_t sub_1000CCABC(uint64_t a1)
{
  sub_1000CCAF4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000CCAF4(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      sub_1000CC8B0(result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

uint64_t *sub_1000CCB44(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1000CCC34(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000CCC34(a1, *a2);
    sub_1000CCC34(a1, a2[1]);
    sub_1000CB820(a2 + 5);

    operator delete(a2);
  }
}

void sub_1000CCD54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000CCDCC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000CCD68(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 8);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 9);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_1000CCDCC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000CB820(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1000CCE18(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 8);
    if (v8 >= v6)
    {
      if (v6 >= v8)
      {
        v9 = *(v3 + 9);
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 8);
  if (v6 < v12 || v12 >= v6 && v5 < *(v7 + 9))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_1000CCEA0(int a1)
{
  if (DiagnosticLogSubmissionEnabled())
  {
    v2 = *(qword_1002DBE98 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v3 = "submit:#I Diagnostics mode: kEnabled";
      v4 = 2;
      v5 = &v12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, v5, 2u);
      return v4;
    }

    return 2;
  }

  if (!a1 || (DiagnosticLogSubmissionEnabled() & 1) != 0)
  {
    v6 = BYSetupAssistantNeedsToRun();
    v2 = *(qword_1002DBE98 + 104);
    v7 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
    if (!v6)
    {
      if (!v7)
      {
        return 1;
      }

      v9 = 0;
      v3 = "submit:#I Diagnostics mode: kDiagnosticsOnly by default";
      v4 = 1;
      v5 = &v9;
      goto LABEL_14;
    }

    if (v7)
    {
      v10 = 0;
      v3 = "submit:#I Diagnostics mode: kEnabled because BYSetupAssistantNeedsToRun";
      v4 = 2;
      v5 = &v10;
      goto LABEL_14;
    }

    return 2;
  }

  v2 = *(qword_1002DBE98 + 104);
  v4 = 1;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v3 = "submit:#I Diagnostics mode: kDiagnosticsOnly";
    v5 = buf;
    goto LABEL_14;
  }

  return v4;
}

void sub_1000CCFF8(int a1, uint64_t a2, void *a3)
{
  sub_1000A6AC0(a1, a3, v46);
  v5 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v5 = v46[1];
  }

  if (!v5)
  {
    v14 = *(qword_1002DBE98 + 104);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1002078EC(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_42;
  }

  if ((a1 & 0xFE) == 2 && sub_100085004())
  {
    sub_1000A6AC0(0, a3, &__p);
    v6 = v49;
    v7 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v6 = *(&__p + 1);
    }

    if (!v6)
    {
      v8 = *(qword_1002DBE98 + 104);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v45 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "submit:Submission did not generate a path; AC file not submitted OTA!", v45, 2u);
        if ((v49 & 0x80) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    if ((v7 & 0x80) != 0)
    {
LABEL_11:
      operator delete(__p);
    }
  }

LABEL_12:
  if (OSAInMultiUserMode())
  {
    if ((a1 & 0xFE) == 2)
    {
      goto LABEL_42;
    }

    v9 = objc_autoreleasePoolPush();
    if ((v47 & 0x80u) == 0)
    {
      v10 = v46;
    }

    else
    {
      v10 = v46[0];
    }

    v11 = [NSString stringWithUTF8String:v10];
    v12 = [NSURL fileURLWithPath:v11 isDirectory:0];

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_34;
      }

      v13 = &kOSAProblemTypeAWDAnonymous;
    }

    else
    {
      v13 = &kOSAProblemTypeAWDPrimary;
    }

    v24 = *v13;
    if (v24)
    {
      v25 = v24;
      if (DiagnosticLogSubmissionEnabled())
      {
        v26 = OSAMoveFileForSubmissions();
        v27 = *(qword_1002DBE98 + 104);
        if (v26)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 104), OS_LOG_TYPE_INFO))
          {
            v28 = v46;
            if ((v47 & 0x80u) != 0)
            {
              v28 = v46[0];
            }

            LODWORD(__p) = 136315138;
            *(&__p + 4) = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "submit:#I OSAMoveFileForSubmission completed for file '%s'", &__p, 0xCu);
          }
        }

        else if (os_log_type_enabled(*(qword_1002DBE98 + 104), OS_LOG_TYPE_ERROR))
        {
          sub_100207828(&v47, v46, v27);
        }
      }

      else
      {
        v37 = *(qword_1002DBE98 + 104);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_1002077F0(v37, v38, v39, v40, v41, v42, v43, v44);
        }
      }

LABEL_41:

      objc_autoreleasePoolPop(v9);
      goto LABEL_42;
    }

LABEL_34:
    v29 = *(qword_1002DBE98 + 104);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1002078B4(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    v25 = 0;
    goto LABEL_41;
  }

  v22 = *(qword_1002DBE98 + 104);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = v46;
    if ((v47 & 0x80u) != 0)
    {
      v23 = v46[0];
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "submit:#I OSAMoveFileForSubmission skipped for file '%s'", &__p, 0xCu);
  }

LABEL_42:
  if (v47 < 0)
  {
    operator delete(v46[0]);
  }
}

void sub_1000CD384(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_1000CD390(int *a1)
{
  v2 = dispatch_queue_create("com.apple.wirelessinsightsd.BatteryChangeMonitor", 0);
  notify_register_dispatch("com.apple.system.powersources.source", a1, v2, &stru_1002AF9D8);
  if (IOPSGetTimeRemainingEstimate() == -2.0)
  {
    v3 = 1;
    byte_1002D53A9 = 1;
  }

  else
  {
    v3 = 0;
  }

  byte_1002D53A8 = v3;
}

void sub_1000CD408(id a1, int a2)
{
  if (IOPSGetTimeRemainingEstimate() == -2.0)
  {
    v2 = 1;
    byte_1002D53A9 = 1;
  }

  else
  {
    v2 = 0;
  }

  byte_1002D53A8 = v2;
}

void sub_1000CD448()
{
  if (!dword_1002D53AC)
  {
    sub_1000CD390(&dword_1002D53AC);
  }

  v0 = CFStringCreateWithCString(kCFAllocatorDefault, "AppleRawMaxCapacity", 0x600u);
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, "AppleRawCurrentCapacity", 0x600u);
  v2 = sub_1000CDAF4(v0, v1);
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v3 = llround(sub_1000CDAF4(@"MaxCapacity", @"CurrentCapacity"));
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, "AppleRawCurrentCapacity", 0x600u);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = sub_1000CDA64(v4);
  if (!v6)
  {
    CFRelease(v5);
LABEL_15:
    v11 = -1;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 == CFNumberGetTypeID() && (LODWORD(v36) = -1, v9 = CFGetTypeID(v7), v9 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&v36, v7, v10);
    v11 = v36;
  }

  else
  {
    v11 = -1;
  }

  CFRelease(v5);
  CFRelease(v7);
LABEL_16:
  v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v13 = qword_1002D53B0;
  if (qword_1002D53B0 == -1 || (v14 = *&qword_1002D53B8, *&qword_1002D53B8 == -1.0) || (v15 = qword_1002D53C0, qword_1002D53C0 == -1) || !qword_1002D53C8 || v12 < qword_1002D53C8)
  {
    qword_1002D53B0 = v3;
    qword_1002D53B8 = *&v2;
    qword_1002D53C0 = v11;
    qword_1002D53C8 = v12;
    return;
  }

  if (v12 - qword_1002D53C8 < 0x1A3185C5000)
  {
    return;
  }

  v16 = byte_1002D53A9;
  qword_1002D53B0 = v3;
  qword_1002D53B8 = *&v2;
  qword_1002D53C0 = v11;
  qword_1002D53C8 = v12;
  byte_1002D53A9 = byte_1002D53A8;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v40 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v40 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_30;
    }
  }

  if (xpc_get_type(v18) != &_xpc_type_dictionary)
  {
    v19 = xpc_null_create();
LABEL_30:
    v40 = v19;
    goto LABEL_31;
  }

  xpc_retain(v18);
LABEL_31:
  xpc_release(v18);
  v38 = xpc_int64_create(v3);
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v36 = &v40;
  v37 = "currentBatteryCapacity";
  sub_10000F50C(&v36, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  v34 = xpc_int64_create(v3 - v13);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v36 = &v40;
  v37 = "batteryCapacityChange";
  sub_10000F50C(&v36, &v34, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v34);
  v34 = 0;
  v32 = xpc_double_create(round(v2 * 10.0) / 10.0);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v36 = &v40;
  v37 = "rawCurrentBatteryCapacity";
  sub_10000F50C(&v36, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v20 = round((v2 - v14) * 10.0) / 10.0;
  v32 = 0;
  v30 = xpc_double_create(v20);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v36 = &v40;
  v37 = "rawBatteryCapacityChange";
  sub_10000F50C(&v36, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v28 = xpc_BOOL_create(v16);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v36 = &v40;
  v37 = "wasCharged";
  sub_10000F50C(&v36, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_double_create(fabs(v20));
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v36 = &v40;
  v37 = "absoluteRawBatteryCapacityChange";
  sub_10000F50C(&v36, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_BOOL_create(v20 >= 0.0);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v36 = &v40;
  v37 = "absoluteRawBatteryCapacityChangePositive";
  sub_10000F50C(&v36, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if ((v16 & 1) == 0)
  {
    v22 = xpc_int64_create(v15 - v11);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    v36 = &v40;
    v37 = "rawBatteryCapacityDrain_mAh";
    sub_10000F50C(&v36, &v22, &v23);
    xpc_release(v23);
    v23 = 0;
    xpc_release(v22);
    v22 = 0;
  }

  v21 = v40;
  if (v40)
  {
    xpc_retain(v40);
  }

  else
  {
    v21 = xpc_null_create();
  }

  sub_1000CEAB8("com.apple.Telephony.batteryLevelReport", &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v40);
}

void sub_1000CD9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v9 - 72));
  _Unwind_Resume(a1);
}

CFTypeRef sub_1000CDA64(const __CFString *a1)
{
  v2 = IOServiceMatching("IOPMPowerSource");
  if (!v2)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (!MatchingService)
  {
    return 0;
  }

  v4 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, a1, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  return CFProperty;
}

double sub_1000CDAF4(const __CFString *a1, const __CFString *a2)
{
  v2 = -1.0;
  if (a1 && a2)
  {
    v4 = sub_1000CDA64(a1);
    v5 = sub_1000CDA64(a2);
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        if (v5)
        {
          v7 = CFGetTypeID(v5);
          if (v7 == CFNumberGetTypeID())
          {
            v15 = -1;
            v8 = CFGetTypeID(v4);
            v10 = -1;
            if (v8 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v15, v4, v9);
              v10 = v15;
            }

            v14 = -1;
            v11 = CFGetTypeID(v5);
            if (v11 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v14, v5, v12);
              if (v10 >= 1 && (v14 & 0x80000000) == 0)
              {
                v2 = v14 * 100.0 / v10;
              }
            }
          }
        }
      }

      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v2;
}

void sub_1000CE360(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008350(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1000CE3E0(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = +[WISXPCServer shared];
  v3 = qword_1002D85A8;
  qword_1002D85A8 = v2;

  v4 = 0;
  [qword_1002D85A8 startAndReturnError:&v4];
  objc_autoreleasePoolPop(v1);
}

void *sub_1000CE444(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

void sub_1000CE4E8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v4, a1);
  sub_1000CE554(a3, &v4, &stru_1002AFA18);
  if (v5)
  {
    sub_100008350(v5);
  }
}

void sub_1000CE53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CE554(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1000CEA40;
  v9[3] = &unk_1002AFB30;
  v7 = *a2;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5;
  v10 = v8;
  sub_100160D80(a1, (v7 + 16), v9);

  if (v12)
  {
    sub_100008350(v12);
  }
}

void sub_1000CE61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008350(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1000CE6C8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1000CE79C);
  __cxa_rethrow();
}

void sub_1000CE708(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000CE75C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1000CE79C(void *result)
{
  if (result)
  {
    v1 = result;
    ctu::OsLogLogger::~OsLogLogger((result + 4));
    sub_100032AD8(v1);

    operator delete();
  }

  return result;
}

void sub_1000CE7F4(void *a1, void *a2)
{
  v3 = a2;
  sub_1000081C8(&v10, a1);
  v4 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000CE8D0;
  block[3] = &unk_1002AFAA0;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    sub_100008350(v9);
  }

  if (v11)
  {
    sub_100008350(v11);
  }
}

uint64_t sub_1000CE8E0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000CE8FC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000CE90C(void *a1)
{
  *a1 = off_1002AFAE0;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000CE958(void *a1)
{
  *a1 = off_1002AFAE0;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_1000CE9F0@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

uint64_t sub_1000CEA50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000CEA6C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

uint64_t sub_1000CEA7C()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

void sub_1000CEAB8(uint64_t a1, void **a2)
{
  v3 = xpc_null_create();
  v4 = *a2;
  *a2 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v14 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v14 = v7;
LABEL_9:
  xpc_release(v6);
  sub_100007ECC(__p, CASendEventOptionKeyLogPayload);
  v10 = xpc_BOOL_create(1);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v8 = __p;
  if (v13 < 0)
  {
    v8 = __p[0];
  }

  v9[0] = &v14;
  v9[1] = v8;
  sub_10000F50C(v9, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  analytics_send_event_with_options();
  xpc_release(v4);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v14);
}

unint64_t sub_1000CED34(int a1, void *a2)
{
  v3 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    v7 = a2[1];
    if (v7 != 19)
    {
      if (v7 == 25)
      {
        goto LABEL_36;
      }

LABEL_17:
      if (v7 <= 17)
      {
        if (v7 == 11)
        {
          v9 = *a2;
        }

        else
        {
          if (v7 != 16)
          {
            goto LABEL_95;
          }

          if (**a2 == 0x414E455F32424953 && *(*a2 + 8) == 0x4D41513436454C42)
          {
            goto LABEL_90;
          }

          v9 = a2;
          if (v3 != 11)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_91;
      }

      if (v7 != 18)
      {
        if (v7 != 21)
        {
          goto LABEL_95;
        }

        if (**a2 == 0x4552505F32424953 && *(*a2 + 8) == 0x415254454C424D41 && *(*a2 + 13) == 0x58414D534E415254)
        {
          goto LABEL_73;
        }

        if ((v3 & 0x80) != 0)
        {
          goto LABEL_95;
        }

LABEL_61:
        v9 = a2;
        if (v3 != 11)
        {
          if (v3 != 16)
          {
            if (v3 != 18)
            {
              goto LABEL_95;
            }

LABEL_64:
            if (*a2 != 0x58414D5F32424953 || a2[1] != 0x3347534D51524148 || *(a2 + 8) != 22612)
            {
              goto LABEL_95;
            }

LABEL_104:
            v18 = &_mh_execute_header;
            v19 = 3;
            return v19 | v18;
          }

          goto LABEL_85;
        }

        goto LABEL_91;
      }

      if (**a2 == 0x58414D5F32424953 && *(*a2 + 8) == 0x3347534D51524148 && *(*a2 + 16) == 22612)
      {
        goto LABEL_104;
      }

      if ((v3 & 0x80) != 0)
      {
        goto LABEL_95;
      }

LABEL_83:
      v9 = a2;
      if (v3 != 11)
      {
        if (v3 != 16)
        {
          goto LABEL_95;
        }

LABEL_85:
        if (*a2 != 0x414E455F32424953 || a2[1] != 0x4D41513436454C42)
        {
          goto LABEL_95;
        }

LABEL_90:
        v18 = &_mh_execute_header;
        v19 = 4;
        return v19 | v18;
      }

LABEL_91:
      v27 = *v9;
      v28 = *(v9 + 3);
      if (v27 == 0x4846535F33424953 && v28 == 0x4847494846535F33)
      {
        v18 = &_mh_execute_header;
        v19 = 5;
        return v19 | v18;
      }

      goto LABEL_95;
    }

    v4 = *a2;
  }

  else
  {
    if (*(a2 + 23) <= 0x11u)
    {
      goto LABEL_83;
    }

    if (v3 == 18)
    {
      goto LABEL_64;
    }

    v4 = a2;
    if (v3 != 19)
    {
      if (v3 != 21)
      {
        goto LABEL_95;
      }

      v5 = *a2 == 0x4552505F32424953 && a2[1] == 0x415254454C424D41;
      if (!v5 || *(a2 + 13) != 0x58414D534E415254)
      {
        goto LABEL_95;
      }

LABEL_73:
      v18 = &_mh_execute_header;
      v19 = 2;
      return v19 | v18;
    }
  }

  v10 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 11);
  if (v10 == 0x4E30505F32424953 && v11 == 0x55504C414E494D4FLL && v12 == 0x48435355504C414ELL)
  {
    v19 = 0;
    v18 = &_mh_execute_header;
    return v19 | v18;
  }

  v7 = a2[1];
  if ((v3 & 0x80) == 0 || v7 != 25)
  {
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_17;
  }

LABEL_36:
  if (**a2 == 0x4645525F32424953 && *(*a2 + 8) == 0x495345434E455245 && *(*a2 + 16) == 0x45574F504C414E47 && *(*a2 + 24) == 82)
  {
    v18 = &_mh_execute_header;
    v19 = 1;
    return v19 | v18;
  }

LABEL_95:
  if (sub_1000B06AC(a2, "SIB3_SFMED"))
  {
    v18 = &_mh_execute_header;
    v19 = 6;
  }

  else if (sub_1000B06AC(a2, "SIB2_P0NOMINALPUCCH"))
  {
    v18 = &_mh_execute_header;
    v19 = 7;
  }

  else if (sub_1000B06AC(a2, "SIB2_PRACHCONFIGINDEX"))
  {
    v18 = &_mh_execute_header;
    v19 = 8;
  }

  else if (sub_1000B06AC(a2, "SIB2_NSB"))
  {
    v18 = &_mh_execute_header;
    v19 = 9;
  }

  else
  {
    v18 = &_mh_execute_header;
    if (sub_1000B06AC(a2, "SIB2_DELTAPUCCHFORMAT"))
    {
      v19 = 10;
    }

    else
    {
      v30 = sub_1000B06AC(a2, "SIB2_ULI");
      if (!v30)
      {
        v18 = 0;
      }

      v19 = 11;
      if (!v30)
      {
        v19 = 0;
      }
    }
  }

  return v19 | v18;
}

unint64_t sub_1000CF188(int a1, void *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (a2[1] != 5 || (**a2 == 1197428815 ? (v6 = *(*a2 + 4) == 84) : (v6 = 0), !v6))
    {
      if (a2[1] != 5 || (**a2 == 1281314895 ? (v7 = *(*a2 + 4) == 84) : (v7 = 0), !v7))
      {
        if (a2[1] == 6 && **a2 == 1163874383 && *(*a2 + 4) == 21841)
        {
          goto LABEL_55;
        }

        if (a2[1] != 5 || (**a2 == 1197428815 ? (v9 = *(*a2 + 4) == 69) : (v9 = 0), !v9))
        {
          if (a2[1] != 5 || (**a2 == 1281314895 ? (v10 = *(*a2 + 4) == 69) : (v10 = 0), !v10))
          {
            if (a2[1] == 6)
            {
              v5 = *a2;
              goto LABEL_46;
            }

            goto LABEL_50;
          }

LABEL_74:
          v16 = &_mh_execute_header;
          v17 = 5;
          return v17 | v16;
        }

LABEL_73:
        v16 = &_mh_execute_header;
        v17 = 4;
        return v17 | v16;
      }

LABEL_58:
      v16 = &_mh_execute_header;
      v17 = 2;
      return v17 | v16;
    }

LABEL_54:
    v16 = &_mh_execute_header;
    v17 = 1;
    return v17 | v16;
  }

  v3 = *(a2 + 23);
  if (v3 == 5)
  {
    if (*a2 != 1197428815 || *(a2 + 4) != 84)
    {
      if (*a2 != 1281314895 || *(a2 + 4) != 84)
      {
        if (*a2 != 1197428815 || *(a2 + 4) != 69)
        {
          if (*a2 != 1281314895 || *(a2 + 4) != 69)
          {
            goto LABEL_50;
          }

          goto LABEL_74;
        }

        goto LABEL_73;
      }

      goto LABEL_58;
    }

    goto LABEL_54;
  }

  if (v3 == 6)
  {
    v4 = *a2 == 1163874383 && *(a2 + 2) == 21841;
    v5 = a2;
    if (!v4)
    {
LABEL_46:
      v13 = *v5;
      v14 = *(v5 + 2);
      if (v13 == 1314869327 && v14 == 20805)
      {
        v16 = &_mh_execute_header;
        v17 = 6;
        return v17 | v16;
      }

      goto LABEL_50;
    }

LABEL_55:
    v16 = &_mh_execute_header;
    v17 = 3;
    return v17 | v16;
  }

LABEL_50:
  if (sub_1000B06AC(a2, "OP_NOT"))
  {
    v16 = &_mh_execute_header;
    v17 = 7;
  }

  else if (sub_1000B06AC(a2, "OP_IS_TRUE"))
  {
    v16 = &_mh_execute_header;
    v17 = 8;
  }

  else
  {
    v16 = &_mh_execute_header;
    if (sub_1000B06AC(a2, "OP_IN"))
    {
      v17 = 9;
    }

    else
    {
      v18 = sub_1000B06AC(a2, "OP_NOT_IN");
      if (!v18)
      {
        v16 = 0;
      }

      v17 = 10;
      if (!v18)
      {
        v17 = 0;
      }
    }
  }

  return v17 | v16;
}

BOOL sub_1000CF460(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v18 = a2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0x8000000000000000;
  v4 = *a2;
  if (*a2)
  {
    if (v4 == 2)
    {
      v6 = *(a2 + 1);
      v20 = *v6;
      v13 = a2;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v7 = v6[1];
      v17 = 0x8000000000000000;
      v15 = v7;
      goto LABEL_14;
    }

    if (v4 == 1)
    {
      v5 = *(a2 + 1);
      v19 = *v5;
      v15 = 0;
      v16 = 0;
      v17 = 0x8000000000000000;
      v13 = a2;
      v14 = v5 + 1;
      goto LABEL_14;
    }

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v13 = a2;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
LABEL_14:
  while (1)
  {
    result = sub_1000D4A5C(&v18, &v13);
    if (result)
    {
      break;
    }

    v8 = sub_1000CF5AC(&v18);
    v9 = a3[5];
    v10 = a3[4];
    if (v10 >= v9)
    {
      if (v9 == a3[6])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 2), v9 + 1);
        v9 = a3[5];
      }

      a3[5] = v9 + 1;
      sub_1000D19EC();
    }

    v11 = *(a3 + 1);
    a3[4] = v10 + 1;
    sub_1000CF6F8(v8, v8, *(v11 + 8 * v10));
    sub_1000CFBAC(&v18);
  }

  return result;
}

_BYTE *sub_1000CF5AC(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_100007ECC(v6, "cannot get value");
    sub_1000D4B64(214, v6, exception);
  }

  if (*(a1 + 32))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_100007ECC(v6, "cannot get value");
    sub_1000D4B64(214, v6, v4);
  }

  return result;
}

void sub_1000CF6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CF6F8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D53D0))
    {
      v5 = sub_1000C2128(a2, off_1002D53D0);
      sub_1000D4E30(&__p, v5);
      v25 = 0;
      sub_1000D56A4(&__p, &v25);
      v6 = v25;
      a3[16] |= 0x20u;
      a3[7] = v6;
      sub_1000D3F90(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
    }

    if (*a2 == 1)
    {
      if (*(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D53D8))
      {
        v7 = sub_1000C2128(a2, off_1002D53D8);
        sub_1000D4E30(&__p, v7);
        sub_1000CFC1C(&__p, "STUMP");
      }

      if (*a2 == 1)
      {
        if (*(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D53E0))
        {
          v8 = sub_1000C2128(a2, off_1002D53E0);
          v9 = sub_1000C22F0(v8, &__p);
          v10 = sub_1000CED34(v9, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((v10 & 0x100000000) != 0)
          {
            a3[16] |= 4u;
            a3[4] = v10;
          }
        }

        if (*a2 == 1)
        {
          if (*(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D53E8))
          {
            v11 = sub_1000C2128(a2, off_1002D53E8);
            sub_1000D4E30(&__p, v11);
            v25 = 0;
            sub_1000C3DC4(&__p, &v25);
            v12 = v25;
            a3[16] |= 8u;
            a3[5] = v12;
            sub_1000D3F90(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
          }

          if (*a2 == 1)
          {
            if (*(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D53F0))
            {
              v13 = sub_1000C2128(a2, off_1002D53F0);
              v14 = sub_1000C22F0(v13, &__p);
              v15 = sub_1000CF188(v14, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if ((v15 & 0x100000000) != 0)
              {
                a3[16] |= 2u;
                a3[3] = v15;
              }
            }

            if (*a2 == 1)
            {
              if (*(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D53F8))
              {
                v16 = sub_1000C2128(a2, off_1002D53F8);
                sub_1000D4E30(&__p, v16);
                v25 = 0;
                sub_1000D56A4(&__p, &v25);
                v17 = v25;
                a3[16] |= 0x40u;
                a3[8] = v17;
                sub_1000D3F90(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
              }

              if (*a2 == 1)
              {
                if (*(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D5400))
                {
                  v18 = sub_1000C2128(a2, off_1002D5400);
                  sub_1000D4E30(&__p, v18);
                  v25 = 0;
                  sub_1000D56A4(&__p, &v25);
                  v19 = v25;
                  a3[16] |= 0x80u;
                  a3[9] = v19;
                  sub_1000D3F90(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
                }

                if (*a2 == 1)
                {
                  if (*(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D5408))
                  {
                    v20 = sub_1000C2128(a2, off_1002D5408);
                    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                    sub_1000C3DC4(v20, &__p);
                    data = __p.__r_.__value_.__l.__data_;
                    a3[16] |= 0x10u;
                    a3[6] = data;
                  }

                  if (*a2 == 1 && *(a2 + 8) + 8 != sub_1000D4D64(*(a2 + 8), &off_1002D5410))
                  {
                    v22 = sub_1000C2128(a2, off_1002D5410);
                    sub_1000D4E30(&__p, v22);
                    v25 = 0;
                    sub_1000C3DC4(&__p, &v25);
                    v23 = v25;
                    a3[16] |= 0x200u;
                    a3[14] = v23;
                    sub_1000D3F90(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unsigned __int8 **sub_1000CFBAC(unsigned __int8 **result)
{
  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[4];
  }

  return result;
}

void sub_1000CFC1C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a2;
  v2 = 3;
  sub_1000D5BE8();
}

void sub_1000CFC84(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*a1 != 1)
  {
    if (!*a1)
    {
      if (os_log_type_enabled(**(a1 + 16), OS_LOG_TYPE_ERROR))
      {
        sub_100208110();
      }

LABEL_18:
      *a2 = 0;
      return;
    }

LABEL_16:
    if (os_log_type_enabled(**(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_100208144();
    }

    goto LABEL_18;
  }

  if (*(a1 + 8) + 8 == sub_1000D4D64(*(a1 + 8), &off_1002D5418) || *sub_1000C2128(a1, off_1002D5418) != 2)
  {
    goto LABEL_16;
  }

  if (*a1 != 1 || *(a1 + 8) + 8 == sub_1000D5C44(*(a1 + 8), "decision_forest") || *sub_1000C2128(a1, "decision_forest") != 2)
  {
    if (os_log_type_enabled(**(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_1002080DC();
    }

    goto LABEL_18;
  }

  if (*a1 != 1 || (v4 = sub_1000D4D64(*(a1 + 8), &off_1002D53F0), v5 = *(a1 + 8), v5 + 8 == v4))
  {
    if (os_log_type_enabled(**(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_1002080A8();
    }

    goto LABEL_18;
  }

  if (*a1 != 1 || *(a1 + 8) + 8 == sub_1000D4D64(v5, &off_1002D5420))
  {
    if (os_log_type_enabled(**(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_100208074();
    }

    goto LABEL_18;
  }

  v6 = sub_1000C2128(a1, "decision_forest");
  sub_1000D5CC4(v6, v10);
  v7 = sub_1000C2128(a1, off_1002D5418);
  sub_1000D5CC4(v7, v9);
  if (v10[1] - v10[0] == v9[1] - v9[0])
  {
    operator new();
  }

  if (os_log_type_enabled(**(a1 + 16), OS_LOG_TYPE_ERROR))
  {
    sub_100207FC8();
  }

  *a2 = 0;
  __p = v9;
  sub_1000D551C(&__p);
  v9[0] = v10;
  sub_1000D551C(v9);
}

void sub_1000D00E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  a9 = &a12;
  sub_1000D551C(&a9);
  a12 = &a15;
  sub_1000D551C(&a12);
  _Unwind_Resume(a1);
}

void sub_1000D0424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D05D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000D05EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000D05FC(void *a1)
{
  v2 = sub_1000D0718(a1, "WISSatelliteCellClassifierController", QOS_CLASS_UTILITY, "wis.satellite.classifier");
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  pthread_mutex_lock(&stru_1002D4C10);
  if (!xmmword_1002D4C50)
  {
    sub_10012BF18();
  }

  v3 = *(&xmmword_1002D4C50 + 1);
  a1[8] = xmmword_1002D4C50;
  a1[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4C10);
  a1[10] = 0;
  return a1;
}

void sub_1000D06D0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D4C10);
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 32));
  sub_100032AD8(v1);
  _Unwind_Resume(a1);
}

void *sub_1000D0718(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

void *sub_1000D07BC(uint64_t a1)
{
  sub_1000D63D0((a1 + 80), 0);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100008350(v2);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));

  return sub_100032AD8(a1);
}

void sub_1000D0820(void *a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 2)
  {

    sub_1000D0984(a1);
  }

  else if (!*a2)
  {
    sub_1000081C8(&v7, a1);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = nullsub_31;
    v6[3] = &unk_1002AFB90;
    v6[4] = a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1174405120;
    v9[2] = sub_1000D6434;
    v9[3] = &unk_1002AFDD0;
    v5 = v7;
    v9[5] = v7;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[4] = v6;
    sub_100160E88(a3, (v5 + 16), v9);
    if (v10)
    {
      sub_100008350(v10);
    }

    if (v8)
    {
      sub_100008350(v8);
    }
  }
}

void sub_1000D095C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008350(a22);
  }

  if (a15)
  {
    sub_100008350(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D0984(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#I WISSatelliteCellClassifierController started, BB state = %s", buf, 0xCu);
  }

  pthread_mutex_lock(&stru_1002D4A58);
  v4 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v5 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  if (!v4 && os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100208178();
  }

  sub_1000E17E4(v4, &theData);
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v8 = Length;
    if (Length >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100023410();
    }

    if (Length >= 0x17)
    {
      operator new();
    }

    v19 = Length;
    if (Length)
    {
      memmove(buf, BytePtr, Length);
    }

    buf[v8] = 0;
    v17 = 0;
    sub_1000D0E2C(buf, v16, 1, v13);
    sub_1000D3F10(v16);
    v9 = *(a1 + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#I Setting the Satellite Cell Classification model received from the Persistence", v12, 2u);
    }

    sub_1000D4E30(v10, v13);
    sub_1000D0F50(a1, v10);
    sub_1000D3F90(&v11, v10[0]);
    sub_1000D3F90(&v14, v13[0]);
    if (v19 < 0)
    {
      operator delete(*buf);
    }

    if (theData)
    {
      CFRelease(theData);
    }
  }

  if (v5)
  {
    sub_100008350(v5);
  }
}

void sub_1000D0D20(void *a1, uint64_t a2, NSObject **a3)
{
  sub_100160D30(a3, &group[1]);
  sub_1000081C8(&v5, a1);
  operator new();
}

uint64_t sub_1000D0E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  v7 = *(a1 + 23);
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_1000D76AC(v13, a2);
  if ((v7 & 0x80u) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = v8;
  }

  if ((v7 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  sub_1000D689C(v10, v10 + v11, v13, a3, v14);
  sub_1000D6934(v14, 1, a4);
  sub_1000D7668(&v15);
  sub_1000D3F10(v14);
  return sub_1000D3F10(v13);
}

void sub_1000D0F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_1000D7668(v15 + 40);
  sub_1000D3F10(&a13);
  sub_1000D3F10(&a9);
  sub_1000D3F90(v13, *v14);
  _Unwind_Resume(a1);
}

void sub_1000D0F50(uint64_t a1, char *a2)
{
  v3 = *(a1 + 80);
  v4 = *a2;
  v5 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v6 = *v3;
  *v3 = v4;
  v7 = *(v3 + 1);
  *(v3 + 1) = v5;
  v8 = v7;
  sub_1000D3F90(&v8, v6);
  if ((sub_1000D112C(a1) & 1) == 0 && os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_1002081E0();
  }
}

const void **sub_1000D0FDC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1000D1010(void *a1, unsigned __int8 *a2)
{
  sub_1000D4E30(v3, a2);
  sub_1000081C8(&v4, a1);
  operator new();
}

uint64_t sub_1000D112C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = strlen(abm::kBasebandBootStateIsReady);
  v4 = *(a1 + 63);
  if (v4 < 0)
  {
    if (v3 != *(a1 + 48))
    {
      goto LABEL_8;
    }

    if (v3 == -1)
    {
      sub_1000C3798();
    }

    v2 = *v2;
  }

  else if (v3 != v4)
  {
LABEL_8:
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#I Baseband boot state is not ready, will retry when the state changes.", buf, 2u);
    }

    return 0;
  }

  if (memcmp(v2, abm::kBasebandBootStateIsReady, v3))
  {
    goto LABEL_8;
  }

  sub_1000CFC84(*(a1 + 80), &v7);
  if (v7)
  {
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100208248();
  }

  return 0;
}

void sub_1000D13C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  pthread_mutex_unlock(&stru_1002D4830);
  sub_1000292F4(va);
  sub_1000292AC(va1);
  _Unwind_Resume(a1);
}

void sub_1000D15E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000D0FDC(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  if (os_log_type_enabled(*(v18 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10020827C();
  }

  __cxa_end_catch();
  JUMPOUT(0x1000D15D0);
}

void sub_1000D1684(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1000D17CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D3ED0(va);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

void sub_1000D1814(uint64_t a1, uint64_t a2)
{
  v9[0] = a2;
  v9[1] = abm::kKeyBasebandBootState;
  sub_100007DA4(v9, &object);
  __p = 0uLL;
  v13 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  v3 = (a1 + 40);
  std::string::operator=((a1 + 40), &__str);
  v4 = strlen(abm::kBasebandBootStateIsReady);
  v5 = v4;
  v6 = *(a1 + 63);
  if (v6 < 0)
  {
    if (v4 != *(a1 + 48))
    {
      goto LABEL_15;
    }

    if (v4 == -1)
    {
      sub_1000C3798();
    }

    v7 = *v3;
  }

  else
  {
    v7 = (a1 + 40);
    if (v5 != v6)
    {
      goto LABEL_15;
    }
  }

  if (!memcmp(v7, abm::kBasebandBootStateIsReady, v5))
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if ((v6 & 0x80000000) != 0)
      {
        v3 = *v3;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#I Baseband bootstate changed to %s, sending the Satellite Cell Classifier model", &__p, 0xCu);
    }

    sub_1000D112C(a1);
  }

LABEL_15:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1000D1990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void (****sub_1000D1AB4(void (****result)(void), unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6))(void)
{
  v9 = result;
  v10 = *a2;
  if (v10 > 4)
  {
    if (*a2 <= 6u)
    {
      if (v10 == 5)
      {
        v23 = *(a2 + 1);

        return sub_1000D33D4(result, v23);
      }

      else if (v10 == 6)
      {
        v21 = *(a2 + 1);

        return sub_1000D35BC(result, v21);
      }

      return result;
    }

    if (v10 == 7)
    {
      v30 = *(a2 + 1);

      return sub_1000D370C(result, v30);
    }

    if (v10 != 8)
    {
      if (v10 != 9)
      {
        return result;
      }

      v14 = *result;
      v13 = (**v9)[1];
      goto LABEL_61;
    }

    v32 = *result;
    v33 = (**v9)[1];
    if (!a3)
    {
      v33();
      v39 = **(a2 + 1);
      v40 = *(*(a2 + 1) + 8);
      v41 = **(a2 + 1);
      if (v41 != v40)
      {
        while (v41 != v40 - 1)
        {
          v42 = *v41++;
          sub_1000D32FC(v9, v42);
          (***v9)(*v9, 44);
          v40 = *(*(a2 + 1) + 8);
        }

        sub_1000D32FC(v9, *(v40 - 1));
      }

      ((**v9)[1])(*v9, "],subtype:", 12);
      v50 = *(a2 + 1);
      if (*(v50 + 25) == 1)
      {
        sub_1000D32FC(v9, *(v50 + 24));
        v51 = ***v9;

        return v51();
      }

      v13 = (**v9)[1];
      goto LABEL_61;
    }

    v33();
    v34 = (a6 + a5);
    v35 = v9 + 76;
    v36 = *(v9 + 631);
    if ((v36 & 0x80000000) != 0)
    {
      v52 = v9[77];
      if (v52 >= v34)
      {
        v37 = *v9;
LABEL_66:
        v38 = *v35;
        goto LABEL_67;
      }
    }

    else
    {
      if (v34 <= v36)
      {
        v37 = *v9;
        v38 = v9 + 76;
LABEL_67:
        ((*v37)[1])(v37, v38, v34);
        ((**v9)[1])(*v9, "bytes: [", 10);
        v53 = **(a2 + 1);
        v54 = *(*(a2 + 1) + 8);
        v55 = **(a2 + 1);
        if (v55 != v54)
        {
          for (; v55 != v54 - 1; v54 = *(*(a2 + 1) + 8))
          {
            v56 = *v55++;
            sub_1000D32FC(v9, v56);
            ((**v9)[1])(*v9, ", ", 2);
          }

          sub_1000D32FC(v9, *(v54 - 1));
        }

        ((**v9)[1])(*v9, "],\n", 3);
        v57 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v57 = *v35;
        }

        ((**v9)[1])(*v9, v57, v34);
        ((**v9)[1])(*v9, "subtype: ", 11);
        v58 = *(a2 + 1);
        if (*(v58 + 25) == 1)
        {
          sub_1000D32FC(v9, *(v58 + 24));
        }

        else
        {
          ((**v9)[1])(*v9, "null", 4);
        }

        (***v9)(*v9, 10);
        if (*(v9 + 631) < 0)
        {
          v59 = *v35;
        }

        v60 = (**v9)[1];
        goto LABEL_104;
      }

      v52 = *(v9 + 631);
    }

    std::string::resize((v9 + 76), 2 * v52, 32);
    v37 = *v9;
    v38 = v9 + 76;
    if ((*(v9 + 631) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v15 = *result;
      v16 = **v9;
      if (!*(*(a2 + 1) + 16))
      {
        v43 = v16[1];
        goto LABEL_46;
      }

      if (!a3)
      {
        (*v16)();
        v44 = *(a2 + 1);
        v45 = *v44;
        if (v44[2] == 1)
        {
          v46 = *v44;
        }

        else
        {
          v61 = 0;
          do
          {
            (***v9)(*v9, 34);
            sub_1000D2CB0(v9, v45 + 4, a4);
            ((**v9)[1])(*v9, ":", 2);
            sub_1000D1AB4(v9, v45 + 7, 0, a4, a5, a6);
            (***v9)();
            v62 = v45[1];
            if (v62)
            {
              do
              {
                v46 = v62;
                v62 = *v62;
              }

              while (v62);
            }

            else
            {
              do
              {
                v46 = v45[2];
                v63 = *v46 == v45;
                v45 = v46;
              }

              while (!v63);
            }

            ++v61;
            v45 = v46;
          }

          while (v61 < *(*(a2 + 1) + 16) - 1);
        }

        (***v9)(*v9, 34);
        sub_1000D2CB0(v9, v46 + 4, a4);
        ((**v9)[1])(*v9, ":", 2);
        sub_1000D1AB4(v9, v46 + 7, 0, a4, a5, a6);
        goto LABEL_105;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = v9 + 76;
      v19 = *(v9 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = v9[77];
        if (v20 < v17)
        {
          goto LABEL_120;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(v9 + 631);
LABEL_120:
        std::string::resize((v9 + 76), 2 * v20, 32);
      }

      v64 = *(a2 + 1);
      v65 = *v64;
      if (v64[2] == 1)
      {
        v66 = *v64;
      }

      else
      {
        v67 = 0;
        do
        {
          v68 = v9 + 76;
          if (*(v9 + 631) < 0)
          {
            v68 = *v18;
          }

          ((**v9)[1])(*v9, v68, (a6 + a5));
          (***v9)();
          sub_1000D2CB0(v9, v65 + 4, a4);
          ((**v9)[1])(*v9, ": ", 3);
          sub_1000D1AB4(v9, v65 + 7, 1, a4, a5, (a6 + a5));
          ((**v9)[1])(*v9, ",\n", 2);
          v69 = v65[1];
          if (v69)
          {
            do
            {
              v66 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v66 = v65[2];
              v63 = *v66 == v65;
              v65 = v66;
            }

            while (!v63);
          }

          ++v67;
          v65 = v66;
        }

        while (v67 < *(*(a2 + 1) + 16) - 1);
      }

      v70 = v9 + 76;
      if (*(v9 + 631) < 0)
      {
        v70 = *v18;
      }

      ((**v9)[1])(*v9, v70, (a6 + a5));
      (***v9)();
      sub_1000D2CB0(v9, v66 + 4, a4);
      ((**v9)[1])(*v9, ": ", 3);
      sub_1000D1AB4(v9, v66 + 7, 1, a4, a5, (a6 + a5));
      (***v9)();
      if (*(v9 + 631) < 0)
      {
        v71 = *v18;
      }

      v60 = (**v9)[1];
LABEL_104:
      v60();
LABEL_105:
      v13 = ***v9;
      goto LABEL_117;
    }

    v22 = *result;
    v13 = (**v9)[1];
LABEL_61:

    return v13();
  }

  switch(v10)
  {
    case 2u:
      v24 = *result;
      v25 = **v9;
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        if (!a3)
        {
          (*v25)();
          v47 = *(a2 + 1);
          for (i = *v47; ; i += 16)
          {
            v49 = v47[1];
            if (i == v49 - 16)
            {
              break;
            }

            sub_1000D1AB4(v9, i, 0, a4, a5, a6);
            (***v9)();
            v47 = *(a2 + 1);
          }

          sub_1000D1AB4(v9, v49 - 16, 0, a4, a5, a6);
LABEL_116:
          v13 = ***v9;
LABEL_117:

          return v13();
        }

        v25[1]();
        v26 = a6 + a5;
        v27 = v9 + 76;
        v28 = *(v9 + 631);
        if ((v28 & 0x80000000) != 0)
        {
          v29 = v9[77];
          if (v29 < v26)
          {
            goto LABEL_121;
          }
        }

        else if (v26 > v28)
        {
          v29 = *(v9 + 631);
LABEL_121:
          std::string::resize((v9 + 76), 2 * v29, 32);
        }

        v72 = *(a2 + 1);
        v73 = *v72;
        if (*v72 != v72[1] - 16)
        {
          do
          {
            v74 = v9 + 76;
            if (*(v9 + 631) < 0)
            {
              v74 = *v27;
            }

            ((**v9)[1])(*v9, v74, (a6 + a5));
            sub_1000D1AB4(v9, v73, 1, a4, a5, (a6 + a5));
            ((**v9)[1])(*v9, ",\n", 2);
            v73 += 16;
          }

          while (v73 != *(*(a2 + 1) + 8) - 16);
        }

        v75 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v75 = *v27;
        }

        ((**v9)[1])(*v9, v75, (a6 + a5));
        sub_1000D1AB4(v9, *(*(a2 + 1) + 8) - 16, 1, a4, a5, (a6 + a5));
        (***v9)();
        if (*(v9 + 631) < 0)
        {
          v27 = *v27;
        }

        ((**v9)[1])(*v9, v27, a6);
        goto LABEL_116;
      }

      v43 = v25[1];
LABEL_46:

      return v43();
    case 3u:
      v31 = *result;
      (***v9)();
      sub_1000D2CB0(v9, *(a2 + 1), a4);
      v13 = ***v9;
      goto LABEL_117;
    case 4u:
      v12 = *result;
      v13 = (**v9)[1];
      a2[8];
      goto LABEL_61;
  }

  return result;
}

void sub_1000D2AB4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AFBC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000D2B58(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_1000D2C98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008350(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000D2CB0(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v3 >> 63;
  v15 = result + 90;
  do
  {
    v16 = *a2;
    if ((v14 & 1) == 0)
    {
      v16 = a2;
    }

    v17 = *(v16 + v9);
    if (v12)
    {
      v13 = *(v16 + v9) & 0x3F | (v13 << 6);
    }

    else
    {
      v13 = (0xFFu >> byte_100243C81[v17]) & v17;
    }

    v12 = byte_100243C81[16 * v12 + 256 + byte_100243C81[v17]];
    if (v12 == 1)
    {
      v19 = *(v7 + 158);
      if ((v19 - 1) < 2)
      {
        v9 -= v10 != 0;
        if (v19 != 1)
        {
LABEL_50:
          v12 = 0;
          v10 = 0;
          v8 = v11;
          goto LABEL_51;
        }

        v20 = v15 + v11;
        if (a3)
        {
          *v20 = 1717990748;
          *(v20 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v20 = -16401;
          *(v20 + 2) = -67;
        }

        goto LABEL_48;
      }

      if (!v19)
      {
        v45 = 3;
        *__str = 0;
        snprintf(__str, 3uLL, "%.2X", v17);
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v38, v9);
        v28 = std::string::insert(&v38, 0, "invalid UTF-8 byte at index ");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v39, ": 0x");
        v31 = *&v30->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (v45 >= 0)
        {
          v32 = __str;
        }

        else
        {
          v32 = *__str;
        }

        if (v45 >= 0)
        {
          v33 = v45;
        }

        else
        {
          v33 = v44;
        }

        v34 = std::string::append(&v40, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v42 = v34->__r_.__value_.__r.__words[2];
        v41 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_1000C3840(316, &v41, exception);
      }

      v12 = 1;
    }

    else
    {
      if (!v12)
      {
        if (v13 <= 11)
        {
          switch(v13)
          {
            case 8:
              v18 = 25180;
              goto LABEL_47;
            case 9:
              v18 = 29788;
              goto LABEL_47;
            case 10:
              v18 = 28252;
              goto LABEL_47;
          }
        }

        else if (v13 > 33)
        {
          if (v13 == 34)
          {
            v18 = 8796;
            goto LABEL_47;
          }

          if (v13 == 92)
          {
            v18 = 23644;
            goto LABEL_47;
          }
        }

        else
        {
          if (v13 == 12)
          {
            v18 = 26204;
            goto LABEL_47;
          }

          if (v13 == 13)
          {
            v18 = 29276;
LABEL_47:
            *(v15 + v8) = v18;
            v11 = v8 + 2;
            goto LABEL_48;
          }
        }

        if (v13 > 0x7E)
        {
          v21 = a3;
        }

        else
        {
          v21 = 0;
        }

        if (v13 >= 0x20 && v21 == 0)
        {
          v11 = v8 + 1;
          *(v15 + v8) = *(v16 + v9);
        }

        else if (HIWORD(v13))
        {
          result = snprintf((v15 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v13 >> 10) - 10304), v13 & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v15 + v8), 7uLL, "\\u%04x", v13);
          v11 = v8 + 6;
        }

LABEL_48:
        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v15);
          v12 = 0;
          v11 = 0;
          v10 = 0;
          v8 = 0;
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      if ((a3 & 1) == 0)
      {
        *(v15 + v8++) = *(v16 + v9);
      }

      ++v10;
    }

LABEL_51:
    ++v9;
    v23 = *(a2 + 23);
    v14 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v12)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v15, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v45 = 3;
        *__str = 0;
        v36 = *a2;
        if ((v23 & 0x80000000) == 0)
        {
          v36 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v36 + v24 - 1));
        v37 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        sub_1000C3840(316, &v41, v37);
      default:
        return result;
    }

LABEL_60:

    return v25();
  }

  if (v8)
  {
    v25 = *(**v7 + 8);
    goto LABEL_60;
  }

  return result;
}

void sub_1000D323C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      if (*(v41 - 89) < 0)
      {
        operator delete(*(v41 - 112));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t sub_1000D32FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = *&a00010203040506[2 * (a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = *&a00010203040506[2 * a2];
  return (*(**a1 + 8))();
}

uint64_t sub_1000D33D4(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  v3 = a1 + 2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    *v3 = 45;
    v2 = -v2;
    if (v2 >= 0xA)
    {
      v6 = 4;
      v10 = v2;
      while (1)
      {
        if (v10 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_24;
        }

        if (v10 <= 0x3E7)
        {
          break;
        }

        if (v10 >> 4 < 0x271)
        {
          goto LABEL_24;
        }

        v6 += 4;
        v9 = v10 >= 0x186A0;
        v10 /= 0x2710uLL;
        if (!v9)
        {
          v6 -= 3;
          goto LABEL_24;
        }
      }

      --v6;
    }

    else
    {
      v6 = 1;
    }

LABEL_24:
    v7 = v6 + 1;
  }

  else
  {
    if (v2 < 0xA)
    {
      v4 = a1 + 17;
LABEL_32:
      *(v4 - 1) = v2 | 0x30;
      return (*(**a1 + 8))();
    }

    v7 = 4;
    v8 = v2;
    while (1)
    {
      if (v8 <= 0x63)
      {
        v7 -= 2;
        goto LABEL_25;
      }

      if (v8 <= 0x3E7)
      {
        break;
      }

      if (v8 >> 4 < 0x271)
      {
        goto LABEL_25;
      }

      v7 += 4;
      v9 = v8 >= 0x186A0;
      v8 /= 0x2710uLL;
      if (!v9)
      {
        v7 -= 3;
        goto LABEL_25;
      }
    }

    --v7;
  }

LABEL_25:
  v4 = &v3[v7];
  if (v2 < 0x64)
  {
    v11 = v2;
  }

  else
  {
    do
    {
      v11 = v2 / 0x64;
      *(v4 - 1) = *&a00010203040506[2 * (v2 % 0x64) + 200];
      v4 -= 2;
      v12 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v12 > 0x270);
  }

  if (v11 < 0xA)
  {
    LOBYTE(v2) = v11;
    goto LABEL_32;
  }

  *(v4 - 1) = *&a00010203040506[2 * v11 + 200];
  return (*(**a1 + 8))();
}

uint64_t sub_1000D35BC(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  if (a2 < 0xA)
  {
    v3 = a1 + 17;
LABEL_20:
    *(v3 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  v5 = 4;
  v6 = a2;
  while (1)
  {
    if (v6 <= 0x63)
    {
      v5 -= 2;
      goto LABEL_13;
    }

    if (v6 <= 0x3E7)
    {
      break;
    }

    if (v6 >> 4 < 0x271)
    {
      goto LABEL_13;
    }

    v7 = v6 >> 5;
    v6 /= 0x2710uLL;
    v5 += 4;
    if (v7 <= 0xC34)
    {
      v5 -= 3;
      goto LABEL_13;
    }
  }

  --v5;
LABEL_13:
  v3 = a1 + v5 + 16;
  if (a2 < 0x64)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = v2 / 0x64;
      *(v3 - 2) = *&a00010203040506[2 * (v2 % 0x64) + 400];
      v3 -= 2;
      v9 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v9 > 0x270);
  }

  if (v8 < 0xA)
  {
    LOBYTE(v2) = v8;
    goto LABEL_20;
  }

  *(v3 - 2) = *&a00010203040506[2 * v8 + 400];
  return (*(**a1 + 8))();
}

uint64_t sub_1000D370C(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    sub_1000D37BC(a1 + 16, a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

uint64_t sub_1000D37BC(_BYTE *a1, double a2)
{
  v2 = a1;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    *a1 = 45;
    v2 = a1 + 1;
  }

  if (a2 == 0.0)
  {
    *v2 = 11824;
    result = (v2 + 3);
    v2[2] = 48;
    return result;
  }

  v12 = 0;
  sub_1000D39DC(v2, &v12 + 1, &v12, a2);
  v4 = SHIDWORD(v12);
  v5 = v12 + SHIDWORD(v12);
  if ((v12 & 0x80000000) == 0 && v5 <= 15)
  {
    memset(&v2[SHIDWORD(v12)], 48, v12);
    *&v2[v5] = 12334;
    return &v2[v5 + 2];
  }

  if ((v5 - 16) >= 0xFFFFFFF1)
  {
    v7 = &v2[v5];
    memmove(v7 + 1, v7, SHIDWORD(v12) - v5);
    *v7 = 46;
    return &v2[v4 + 1];
  }

  if (v5 == 0 || v5 >= 0xFFFFFFFD)
  {
    v6 = -v5;
    memmove(&v2[v6 + 2], v2, SHIDWORD(v12));
    *v2 = 11824;
    memset(v2 + 2, 48, v6);
    return &v2[v6 + 2 + v4];
  }

  if (HIDWORD(v12) != 1)
  {
    memmove(v2 + 2, v2 + 1, SHIDWORD(v12) - 1);
    v2[1] = 46;
    v2 += v4;
  }

  v8 = v5 - 1;
  if (v5 >= 1)
  {
    v9 = 43;
  }

  else
  {
    v9 = 45;
  }

  v2[2] = v9;
  v2[1] = 101;
  if (v5 - 1 < 0)
  {
    v8 = 1 - v5;
  }

  if (v8 > 9)
  {
    if (v8 > 0x63)
    {
      v2[3] = v8 / 0x64 + 48;
      v8 %= 0x64u;
      v10 = v2 + 5;
      v2[4] = (v8 / 0xAu) | 0x30;
      LOBYTE(v8) = v8 % 0xAu;
      v11 = 4;
      goto LABEL_25;
    }

    v10 = v2 + 4;
    v2[3] = (v8 / 0xAu) | 0x30;
    LOBYTE(v8) = v8 % 0xAu;
  }

  else
  {
    v10 = v2 + 4;
    v2[3] = 48;
  }

  v11 = 3;
LABEL_25:
  result = &v2[v11 + 2];
  *v10 = v8 | 0x30;
  return result;
}

uint64_t sub_1000D39DC(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  sub_1000D3B04(v20, a4);
  v27 = v20[1];
  v26 = v20[0];
  v25[0] = v21;
  v25[1] = v22;
  if (-61 - v22 <= 0)
  {
    v7 = 78913 * (-61 - v22) / 0x40000;
  }

  else
  {
    v7 = 78913 * (-61 - v22) / 0x40000 + 1;
  }

  v8 = (&unk_100244070 + 16 * (((v7 + 307 + (((v7 + 307) >> 28) & 7)) << 16) >> 19));
  v9 = v8[1];
  v23 = *v8;
  v24 = v9;
  v10 = sub_1000D3BAC(&v26, &v23);
  v12 = v11;
  v13 = sub_1000D3BAC(&v27, &v23);
  v15 = v14;
  v16 = sub_1000D3BAC(v25, &v23);
  *a3 = -HIDWORD(v9);
  return sub_1000D3C0C(a1, a2, a3, v13 + 1, v15, v10, v12, v18, v16 - 1, v17);
}

void sub_1000D3B04(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (*&a2 >> 52)
  {
    v5 = (*&a2 >> 52) + 4294966221;
    v3 = 2 * (v2 | 0x10000000000000);
    v4 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
    v6 = (*&a2 >> 52) - 1076;
    if (*&a2 >> 53 && !v2)
    {
      v7 = (*&a2 >> 52) - 53;
      v8 = 0x3FFFFFFFFFFFFFLL;
      v2 = 0x10000000000000;
      goto LABEL_8;
    }

    v2 |= 0x10000000000000uLL;
  }

  else
  {
    v3 = 2 * *&a2;
    v4 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    LODWORD(v5) = -1074;
    v6 = -1075;
  }

  v8 = v3 - 1;
  v7 = v6;
  do
  {
LABEL_8:
    v4 *= 2;
    --v6;
  }

  while ((v4 & 0x8000000000000000) == 0);
  do
  {
    v2 *= 2;
    LODWORD(v5) = v5 - 1;
  }

  while ((v2 & 0x8000000000000000) == 0);
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8 << (v7 - v6);
  *(a1 + 24) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
}

unint64_t sub_1000D3BAC(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t sub_1000D3C0C(uint64_t result, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int a10)
{
  v10 = a9 - a4;
  v11 = a9 - a6;
  v12 = -a10;
  v13 = 1 << -a10;
  v14 = a9 >> -a10;
  v15 = (v13 - 1) & a9;
  if (v14 <= 0x3B9AC9FF)
  {
    if (v14 <= 0x5F5E0FF)
    {
      if (v14 <= 0x98967F)
      {
        if (v14 <= 0xF423F)
        {
          v18 = v14 >> 5;
          v19 = v14 >> 4;
          if (v14 <= 9)
          {
            v20 = 1;
          }

          else
          {
            v20 = 10;
          }

          if (v14 <= 9)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v14 <= 0x63)
          {
            v22 = v20;
          }

          else
          {
            v22 = 100;
          }

          if (v14 <= 0x63)
          {
            v23 = v21;
          }

          else
          {
            v23 = 3;
          }

          if (v14 <= 0x3E7)
          {
            v24 = v22;
          }

          else
          {
            v24 = 1000;
          }

          if (v14 <= 0x3E7)
          {
            v25 = v23;
          }

          else
          {
            v25 = 4;
          }

          if (v19 <= 0x270)
          {
            v26 = v24;
          }

          else
          {
            v26 = 10000;
          }

          if (v19 <= 0x270)
          {
            v27 = v25;
          }

          else
          {
            v27 = 5;
          }

          v28 = v18 > 0xC34;
          if (v18 > 0xC34)
          {
            v16 = 100000;
          }

          else
          {
            v16 = v26;
          }

          if (v28)
          {
            v17 = 6;
          }

          else
          {
            v17 = v27;
          }
        }

        else
        {
          v16 = 1000000;
          v17 = 7;
        }
      }

      else
      {
        v16 = 10000000;
        v17 = 8;
      }
    }

    else
    {
      v16 = 100000000;
      v17 = 9;
    }
  }

  else
  {
    v16 = 1000000000;
    v17 = 10;
  }

  v29 = result - 1;
  v30 = a6 - a9;
  while (v17 > 0)
  {
    v31 = v14 / v16;
    v14 = v14 % v16;
    v32 = *a2;
    *a2 = v32 + 1;
    *(result + v32) = v31 + 48;
    --v17;
    v33 = (v14 << v12) + v15;
    if (v10 >= v33)
    {
      *a3 += v17;
      v34 = v16 << v12;
      v35 = v33 < v11 && v10 - v33 >= v34;
      if (!v35)
      {
        return result;
      }

      v36 = *a2;
      v37 = v11 - v33;
      v38 = v15 + (v14 << v12) + v34;
      v39 = v10 - v38;
      do
      {
        if (v38 >= v11 && v37 <= v30 + v38)
        {
          break;
        }

        --*(v29 + v36);
        if (v38 >= v11)
        {
          break;
        }

        v37 -= v34;
        v38 += v34;
        v35 = v39 >= v34;
        v39 -= v34;
      }

      while (v35);
    }

    else
    {
      v16 /= 0xAu;
    }

    if (v10 >= v33)
    {
      return result;
    }
  }

  v40 = 0;
  do
  {
    v41 = v10;
    v42 = v11;
    v43 = 5 * v15;
    v44 = *a2;
    *a2 = v44 + 1;
    *(result + v44) = ((2 * v43) >> v12) + 48;
    v10 = 10 * v41;
    v11 *= 10;
    --v40;
    v15 = (v13 - 1) & (2 * v43);
  }

  while (10 * v41 < v15);
  *a3 += v40;
  if (v15 < v11 && 10 * v41 - v15 >= v13)
  {
    v45 = *a2;
    v46 = 10 * v42 - v15;
    v47 = v13 + v15;
    v48 = 10 * v41 - v47;
    v49 = -10 * v42;
    do
    {
      if (v47 >= v11 && v46 <= v49 + v47)
      {
        break;
      }

      --*(v29 + v45);
      if (v47 >= v11)
      {
        break;
      }

      v46 -= v13;
      v47 += v13;
      v35 = v48 >= v13;
      v48 -= v13;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_1000D3ED0(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

uint64_t sub_1000D3F10(uint64_t a1)
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

void sub_1000D3F90(uint64_t *a1, int a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    sub_1000D42D8(&v29, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v30;
      do
      {
        if (v8 >= v31)
        {
          v8 = sub_1000D4654(&v29, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          *(v7 + 56) = 0;
          v7[8] = 0;
          v8 += 16;
        }

        v30 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    sub_1000D42D8(&v29, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      sub_1000D4394(&v29, v4);
      v4 += 16;
    }
  }

  for (i = v30; v29 != v30; i = v30)
  {
    LOBYTE(v27) = *(i - 16);
    v28 = *(i - 8);
    *(i - 16) = 0;
    *(i - 8) = 0;
    v13 = v30 - 16;
    sub_1000D3F90(v30 - 8, *(v30 - 16));
    v30 = v13;
    if (v27 == 1)
    {
      v19 = v28;
      v20 = v28 + 1;
      v21 = *v28;
      if (*v28 != v28 + 1)
      {
        do
        {
          if (v13 >= v31)
          {
            v13 = sub_1000D4654(&v29, (v21 + 7));
          }

          else
          {
            *v13 = *(v21 + 56);
            *(v13 + 8) = v21[8];
            *(v21 + 56) = 0;
            v21[8] = 0;
            v13 += 16;
          }

          v30 = v13;
          v22 = v21[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v21[2];
              v11 = *v23 == v21;
              v21 = v23;
            }

            while (!v11);
          }

          v21 = v23;
        }

        while (v23 != v20);
        v19 = v28;
      }

      sub_1000D476C(v19, *(v19 + 8));
      *v19 = v19 + 8;
      *(v19 + 16) = 0;
      *(v19 + 8) = 0;
    }

    else if (v27 == 2)
    {
      v14 = v28;
      v15 = *v28;
      v16 = v28[1];
      if (*v28 != v16)
      {
        do
        {
          sub_1000D4394(&v29, v15);
          v15 += 16;
        }

        while (v15 != v16);
        v14 = v28;
        v15 = *v28;
        v16 = v28[1];
      }

      if (v16 != v15)
      {
        v17 = v16 - 8;
        do
        {
          v18 = v17 - 8;
          sub_1000D3F90(v17, *(v17 - 8));
          v17 -= 16;
        }

        while (v18 != v15);
      }

      v14[1] = v15;
    }

    sub_1000D3F90(&v28, v27);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v26 = *v24;
        goto LABEL_51;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_54;
      }

      v24 = *a1;
      v25 = **a1;
      if (v25)
      {
        v24[1] = v25;
        v26 = v25;
LABEL_51:
        operator delete(v26);
        goto LABEL_52;
      }
    }

LABEL_53:
    operator delete(v24);
    goto LABEL_54;
  }

  if (a2 == 1)
  {
    sub_1000D476C(*a1, *(*a1 + 8));
    goto LABEL_52;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    sub_1000D551C(&v27);
LABEL_52:
    v24 = *a1;
    goto LABEL_53;
  }

LABEL_54:
  v27 = &v29;
  sub_1000D551C(&v27);
}

void *sub_1000D42D8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1000D44D8(result, a2);
    }

    sub_100033FD0();
  }

  return result;
}

void sub_1000D4380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D4394(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100033FD0();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v20 = result;
    if (v10)
    {
      sub_1000D44D8(result, v10);
    }

    v11 = 16 * v7;
    v17 = 0;
    v18 = v11;
    *(&v19 + 1) = 0;
    *v11 = *a2;
    *(v11 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *&v19 = 16 * v7 + 16;
    v12 = *(result + 8);
    v13 = 16 * v7 + *result - v12;
    sub_1000D4520(result, *result, v12, v13);
    v14 = *v3;
    *v3 = v13;
    v15 = *(v3 + 16);
    v16 = v19;
    *(v3 + 8) = v19;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v17 = v14;
    v18 = v14;
    result = sub_1000D4600(&v17);
    v6 = v16;
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_1000D44C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

void sub_1000D44D8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_1000D4520(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      *(a4 + 8) = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    v6 = a2;
    do
    {
      v7 = *v6;
      v6 += 16;
      result = sub_1000D3F90(a2 + 8, v7);
      a2 = v6;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t sub_1000D4598(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_1000D3F90(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t sub_1000D4600(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_1000D3F90(v4 + 8, v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000D4654(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_1000D44D8(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v17 = 16 * v2 + 16;
  v9 = *(a1 + 8);
  v10 = 16 * v2 + *a1 - v9;
  sub_1000D4520(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1000D4600(&v15);
  return v14;
}

void sub_1000D4758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

void sub_1000D476C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1000D476C(a1, *a2);
    sub_1000D476C(a1, *(a2 + 1));
    sub_1000D3F90(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1000D47DC(uint64_t a1)
{
  sub_1000D3F90((a1 + 32), *(a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *sub_1000D4830(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        sub_1000D4944();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

void sub_1000D49A0(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1000D49F4(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

BOOL sub_1000D4A5C(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_100007ECC(v7, "cannot compare iterators of different containers");
    sub_1000D4B64(212, v7, exception);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[4];
    v4 = a2[4];
  }

  return v3 == v4;
}

void sub_1000D4B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_1000D4B64(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100007ECC(&__p, "invalid_iterator");
  sub_1000C3A00(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_1000C3B84(a3, a1, v11);
  *a3 = off_1002AFCC0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1000D4C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D4CA8(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1000D4CFC(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_1000D4D64(uint64_t a1, const std::string::value_type **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::string::compare((v3 + 32), *a2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), *a2) >= 1)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1000D4DE4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000D47DC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000D4E30(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  if (v3 <= 4)
  {
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v7 = *(a2 + 1);
        sub_1000D4EFC();
      }

      if (v3 == 2)
      {
        v4 = *(a2 + 1);
        sub_1000D5360();
      }

      return a1;
    }

    if (v3 == 3)
    {
      v8 = *(a2 + 1);
      sub_1000D55B8();
    }

    v6 = a2[8];
LABEL_14:
    *(a1 + 8) = v6;
    return a1;
  }

  if (v3 < 8)
  {
    v6 = *(a2 + 1);
    goto LABEL_14;
  }

  if (v3 == 8)
  {
    v5 = *(a2 + 1);
    sub_1000D5634();
  }

  return a1;
}

void *sub_1000D4F58(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000D4FB0(a1, *a2, a2 + 1);
  return a1;
}

void *sub_1000D4FB0(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000D5038(v5, v5 + 1, v4 + 4);
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

    while (v7 != a3);
  }

  return result;
}

const void *sub_1000D5038(void *a1, uint64_t *a2, const void **a3)
{
  v3 = *sub_1000D50CC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_1000D5270();
  }

  return v3;
}

const void **sub_1000D50CC(void *a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_10000FF8C(a1, a5, a2 + 4))
  {
    if (!sub_10000FF8C(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_10000FF8C(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_10000FF8C(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100068404(a1, a3, a5);
}

char *sub_1000D52E8(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_1000D4E30(__dst + 24, a2 + 24);
  return __dst;
}

void sub_1000D5344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000D53CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D5454(result, a4);
  }

  return result;
}

void sub_1000D5434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000D551C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000D5454(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000D44D8(a1, a2);
  }

  sub_100033FD0();
}

uint64_t sub_1000D5490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_1000D4E30(a4, v5);
      v5 += 16;
      a4 = v7 + 16;
      v7 += 16;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1000D551C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 8;
      do
      {
        v7 = (v6 - 8);
        sub_1000D3F90(v6, *(v6 - 8));
        v6 -= 16;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}