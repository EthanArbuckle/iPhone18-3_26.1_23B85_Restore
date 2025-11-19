void sub_10010CF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, xpc_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, xpc_object_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  pthread_mutex_unlock(&stru_1002D4F28);
  if (v36)
  {
    sub_100008350(v36);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    sub_100008350(v35);
  }

  _Unwind_Resume(a1);
}

void sub_10010D184(xpc_connection_t *a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a1) == &_xpc_type_connection && xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(*a2);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (xpc_get_type(reply) == &_xpc_type_dictionary)
      {
        xpc_retain(reply);
        v5 = reply;
      }

      else
      {
        v5 = xpc_null_create();
      }
    }

    else
    {
      v5 = xpc_null_create();
      reply = 0;
    }

    xpc_release(reply);
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      if (!xpc_dictionary_get_value(*a2, "enabled") && xpc_dictionary_get_value(*a2, "analyticsShim"))
      {
        v10[0] = a2;
        v10[1] = "analyticsShim";
        sub_100007DA4(v10, &object);
        v7 = xpc::dyn_cast_or_default(&object, 0, v6);
        xpc_release(object);
        pthread_mutex_lock(&stru_1002D4A58);
        v8 = xmmword_1002D4A98;
        if (!xmmword_1002D4A98)
        {
          sub_1000927A0();
        }

        if (*(&xmmword_1002D4A98 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&stru_1002D4A58);
        sub_1000DF8C8(v8, v7);
      }

      xpc_connection_send_message(*a1, v5);
    }

    xpc_release(v5);
  }
}

void sub_10010D3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  pthread_mutex_unlock(&stru_1002D4CC0);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void sub_10010D48C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10010D48C(a1, *a2);
    sub_10010D48C(a1, a2[1]);
    sub_100067F44((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_10010D4E8()
{
  if ((byte_1002D4B58 & 1) == 0)
  {
    byte_1002D4B58 = 1;
    return __cxa_atexit(sub_10004F8E8, &stru_1002D4B08, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10010D524()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10010D560()
{
  if ((byte_1002D4F78 & 1) == 0)
  {
    byte_1002D4F78 = 1;
    return __cxa_atexit(sub_10004F918, &stru_1002D4F28, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10010D59C()
{
  if ((byte_1002D4D10 & 1) == 0)
  {
    byte_1002D4D10 = 1;
    return __cxa_atexit(sub_10004F8FC, &stru_1002D4CC0, &_mh_execute_header);
  }

  return result;
}

void sub_10010D950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10010D970(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10010D988(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 objectForKeyedSubscript:kCTCellMonitorCellType];
    v8 = [WISTelephonyUtils isServingCell:v7];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_10010E970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10010E99C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0;
    v8 = [WISTelephonyUtils extractCellInfoValue:v7 key:kCTCellMonitorCellType expectedClass:objc_opt_class() error:&v16];
    v9 = v16;
    if (!v9)
    {
      v15 = 0;
      v10 = [WISTelephonyUtils extractCellInfoValue:v7 key:kCTCellMonitorNeighborType expectedClass:objc_opt_class() error:&v15];
      v9 = v15;
      if (!v9)
      {
        v14 = 0;
        v11 = [WISTelephonyUtils extractCellInfoValue:v7 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:&v14];
        v9 = v14;
        if (!v9)
        {
          if ([v8 isEqualToString:kCTCellMonitorCellTypeNeighbor])
          {
            if ([WISTelephonyUtils isNrRat:v11])
            {
              v12 = [NSNumber numberWithInteger:1];
              v13 = [v10 isEqualToNumber:v12];

              if (v13)
              {
                objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
                *a4 = 1;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10010F4F0()
{
  if (qword_1002DBEC0)
  {
    (*(*qword_1002DBEC0 + 8))(qword_1002DBEC0);
  }

  if (qword_1002DBEC8)
  {
    (*(*qword_1002DBEC8 + 8))(qword_1002DBEC8);
  }

  if (qword_1002DBED0)
  {
    (*(*qword_1002DBED0 + 8))(qword_1002DBED0);
  }

  if (qword_1002DBED8)
  {
    (*(*qword_1002DBED8 + 8))(qword_1002DBED8);
  }

  if (qword_1002DBEE0)
  {
    (*(*qword_1002DBEE0 + 8))(qword_1002DBEE0);
  }

  if (qword_1002DBEE8)
  {
    (*(*qword_1002DBEE8 + 8))(qword_1002DBEE8);
  }

  if (qword_1002DBEF0)
  {
    (*(*qword_1002DBEF0 + 8))(qword_1002DBEF0);
  }

  result = qword_1002DBEF8;
  if (qword_1002DBEF8)
  {
    v1 = *(*qword_1002DBEF8 + 8);

    return v1();
  }

  return result;
}

void sub_10010F698(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessInsightsExecutables/Generated/Insights/InsightsDefinitions.pb.cc", a4);
  sub_1000C67A0();
  operator new();
}

uint64_t sub_10010F9C0(uint64_t result)
{
  *result = off_1002B28C8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10010F9E8(uint64_t a1)
{
  *a1 = off_1002B29B8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void *sub_10010FA34(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1002B2940;
  *(result + 21) = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

uint64_t sub_10010FA60(uint64_t result)
{
  *(result + 96) = 0;
  *(result + 92) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *result = off_1002B2AA8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  return result;
}

double sub_10010FAA4(uint64_t a1)
{
  *a1 = off_1002B2A30;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  return result;
}

void *sub_10010FADC(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1002B2B20;
  return result;
}

double sub_10010FB00(uint64_t a1)
{
  *a1 = off_1002B2C10;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  return result;
}

void sub_10010FB34()
{
  v0 = qword_1002DBF00;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[1] = sub_10010F698;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_10010FBB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10010FBCC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 20);
    *(a1 + 32) |= 4u;
    *(a1 + 20) = v8;
    if ((*(a2 + 32) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 24);
    *(a1 + 32) |= 8u;
    *(a1 + 24) = v5;
  }
}

void sub_10010FCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10010FCD8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B28C8;
  sub_10010FB34();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10010FD34(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10010FCD8(a1);

  operator delete();
}

uint64_t sub_10010FDBC(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_10010FDD4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v12;
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 32) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v15;
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 32) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 20) = v17;
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 32) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            if (v10 >= v8 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 24) = v19;
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 32) |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100110038(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], v4, a4);
      if ((v5[8] & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], v4, a4);
  v6 = v5[8];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, v4, a4);
}

uint64_t sub_1001100E0(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 32);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v7 = *(a1 + 20);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_18:
    v9 = *(a1 + 24);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_22:
  *(a1 + 28) = v4;
  return v4;
}

void sub_1001101D0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 8);
      *(a1 + 44) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 44);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    *(a1 + 44) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(a2 + 16);
    *(a1 + 44) |= 4u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 44);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 20);
    *(a1 + 44) |= 8u;
    *(a1 + 20) = v9;
    v4 = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 24);
    *(a1 + 44) |= 0x10u;
    *(a1 + 24) = v10;
    v4 = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 28);
    *(a1 + 44) |= 0x20u;
    *(a1 + 28) = v11;
    v4 = *(a2 + 44);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_20:
    v12 = *(a2 + 32);
    *(a1 + 44) |= 0x40u;
    *(a1 + 32) = v12;
    if ((*(a2 + 44) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 0x80u;
    *(a1 + 36) = v5;
  }
}

void sub_100110344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011035C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B2940;
  sub_10010FB34();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1001103B8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10011035C(a1);

  operator delete();
}

uint64_t sub_100110444(uint64_t result)
{
  if (*(result + 44))
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 21) = 0;
  }

  *(result + 44) = 0;
  return result;
}

uint64_t sub_100110460(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_85;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_93;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_69;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_77;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_51;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_61;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v14 = *(this + 1);
      v8 = *(this + 2);
      if (v14 >= v8 || (v15 = *v14, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v15;
        v16 = v14 + 1;
        *(this + 1) = v16;
      }

      *(a1 + 44) |= 1u;
      if (v16 < v8 && *v16 == 16)
      {
        v9 = v16 + 1;
        *(this + 1) = v9;
LABEL_43:
        if (v9 >= v8 || (v20 = *v9, v20 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v21 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v20;
          v21 = v9 + 1;
          *(this + 1) = v21;
        }

        *(a1 + 44) |= 2u;
        if (v21 < v8 && *v21 == 24)
        {
          v18 = v21 + 1;
          *(this + 1) = v18;
LABEL_51:
          v35 = 0;
          if (v18 >= v8 || (v22 = *v18, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35);
            if (!result)
            {
              return result;
            }

            v22 = v35;
          }

          else
          {
            *(this + 1) = v18 + 1;
          }

          if (v22 <= 8)
          {
            *(a1 + 44) |= 4u;
            *(a1 + 16) = v22;
          }

          v23 = *(this + 1);
          v10 = *(this + 2);
          if (v23 < v10 && *v23 == 32)
          {
            v12 = v23 + 1;
            *(this + 1) = v12;
LABEL_61:
            if (v12 >= v10 || (v24 = *v12, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
              if (!result)
              {
                return result;
              }

              v25 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 20) = v24;
              v25 = v12 + 1;
              *(this + 1) = v25;
            }

            *(a1 + 44) |= 8u;
            if (v25 < v10 && *v25 == 40)
            {
              v17 = v25 + 1;
              *(this + 1) = v17;
LABEL_69:
              if (v17 >= v10 || (v26 = *v17, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
                if (!result)
                {
                  return result;
                }

                v27 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 24) = v26;
                v27 = v17 + 1;
                *(this + 1) = v27;
              }

              *(a1 + 44) |= 0x10u;
              if (v27 < v10 && *v27 == 48)
              {
                v11 = v27 + 1;
                *(this + 1) = v11;
LABEL_77:
                v36 = 0;
                if (v11 >= v10 || (v28 = *v11, (v28 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36);
                  if (!result)
                  {
                    return result;
                  }

                  v28 = v36;
                  v29 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  v29 = v11 + 1;
                  *(this + 1) = v29;
                }

                *(a1 + 28) = v28 != 0;
                *(a1 + 44) |= 0x20u;
                if (v29 < v10 && *v29 == 56)
                {
                  v19 = v29 + 1;
                  *(this + 1) = v19;
LABEL_85:
                  if (v19 >= v10 || (v30 = *v19, v30 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                    if (!result)
                    {
                      return result;
                    }

                    v31 = *(this + 1);
                    v10 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 32) = v30;
                    v31 = v19 + 1;
                    *(this + 1) = v31;
                  }

                  *(a1 + 44) |= 0x40u;
                  if (v31 < v10 && *v31 == 64)
                  {
                    v13 = v31 + 1;
                    *(this + 1) = v13;
LABEL_93:
                    v34 = 0;
                    if (v13 >= v10 || (v32 = *v13, (v32 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
                      if (!result)
                      {
                        return result;
                      }

                      v32 = v34;
                    }

                    else
                    {
                      *(this + 1) = v13 + 1;
                    }

                    if (v32 <= 2)
                    {
                      *(a1 + 44) |= 0x80u;
                      *(a1 + 36) = v32;
                    }

                    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                    {
                      *(this + 8) = 0;
                      result = 1;
                      *(this + 36) = 1;
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_43;
    }

LABEL_34:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1001108CC(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v7 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, v7, a2, a4);
}

uint64_t sub_1001109E4(unsigned int *a1, unsigned int a2)
{
  v3 = a1[11];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_44;
  }

  if (v3)
  {
    v6 = a1[2];
    if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = a1[11];
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v7 = a1[3];
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = a1[11];
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_14:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v11 = a1[5];
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = a1[11];
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v9 = a1[4];
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = a1[11];
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v3 & 0x10) != 0)
  {
LABEL_28:
    v13 = a1[6];
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = a1[11];
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_32:
  v5 = ((v3 >> 4) & 2) + v4;
  if ((v3 & 0x40) != 0)
  {
    v15 = a1[8];
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = a1[11];
    }

    else
    {
      v16 = 2;
    }

    v5 = (v16 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    v17 = a1[9];
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_44:
  a1[10] = v5;
  return v5;
}

void sub_100110B8C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), *(a2 + 80) + *(a1 + 80));
  if (*(a2 + 80) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 72) + 8 * v4);
      v6 = *(a1 + 84);
      v7 = *(a1 + 80);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 88))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v6 + 1);
          v6 = *(a1 + 84);
        }

        *(a1 + 84) = v6 + 1;
        operator new();
      }

      v8 = *(a1 + 72);
      *(a1 + 80) = v7 + 1;
      sub_1001101D0(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 80));
  }

  v9 = *(a2 + 100);
  if (!v9)
  {
    goto LABEL_21;
  }

  if (v9)
  {
    v12 = *(a2 + 8);
    *(a1 + 100) |= 1u;
    *(a1 + 8) = v12;
    v9 = *(a2 + 100);
    if ((v9 & 2) == 0)
    {
LABEL_14:
      if ((v9 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(a2 + 12);
  *(a1 + 100) |= 2u;
  *(a1 + 12) = v13;
  v9 = *(a2 + 100);
  if ((v9 & 4) == 0)
  {
LABEL_15:
    if ((v9 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_33:
  v14 = *(a2 + 16);
  *(a1 + 100) |= 4u;
  v15 = *(a1 + 16);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v9 = *(a2 + 100);
  if ((v9 & 8) == 0)
  {
LABEL_16:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = *(a2 + 24);
  *(a1 + 100) |= 8u;
  *(a1 + 24) = v16;
  v9 = *(a2 + 100);
  if ((v9 & 0x10) == 0)
  {
LABEL_17:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_38:
    v18 = *(a2 + 32);
    *(a1 + 100) |= 0x20u;
    *(a1 + 32) = v18;
    v9 = *(a2 + 100);
    if ((v9 & 0x40) == 0)
    {
LABEL_19:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_37:
  v17 = *(a2 + 28);
  *(a1 + 100) |= 0x10u;
  *(a1 + 28) = v17;
  v9 = *(a2 + 100);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_18:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_39:
  v19 = *(a2 + 36);
  *(a1 + 100) |= 0x40u;
  *(a1 + 36) = v19;
  v9 = *(a2 + 100);
  if ((v9 & 0x80) != 0)
  {
LABEL_20:
    v10 = *(a2 + 40);
    *(a1 + 100) |= 0x80u;
    *(a1 + 40) = v10;
    v9 = *(a2 + 100);
  }

LABEL_21:
  if ((v9 & 0xFF00) == 0)
  {
    return;
  }

  if ((v9 & 0x100) != 0)
  {
    v20 = *(a2 + 44);
    *(a1 + 100) |= 0x100u;
    *(a1 + 44) = v20;
    v9 = *(a2 + 100);
    if ((v9 & 0x200) == 0)
    {
LABEL_24:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_43;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v21 = *(a2 + 48);
  *(a1 + 100) |= 0x200u;
  *(a1 + 48) = v21;
  v9 = *(a2 + 100);
  if ((v9 & 0x400) == 0)
  {
LABEL_25:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = *(a2 + 52);
  *(a1 + 100) |= 0x400u;
  *(a1 + 52) = v22;
  v9 = *(a2 + 100);
  if ((v9 & 0x800) == 0)
  {
LABEL_26:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

LABEL_44:
  v23 = *(a2 + 56);
  *(a1 + 100) |= 0x800u;
  *(a1 + 56) = v23;
  v9 = *(a2 + 100);
  if ((v9 & 0x1000) == 0)
  {
LABEL_27:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_46;
  }

LABEL_45:
  v24 = *(a2 + 60);
  *(a1 + 100) |= 0x1000u;
  *(a1 + 60) = v24;
  v9 = *(a2 + 100);
  if ((v9 & 0x2000) == 0)
  {
LABEL_28:
    if ((v9 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_46:
  v25 = *(a2 + 64);
  *(a1 + 100) |= 0x2000u;
  *(a1 + 64) = v25;
  if ((*(a2 + 100) & 0x4000) == 0)
  {
    return;
  }

LABEL_29:
  v11 = *(a2 + 68);
  *(a1 + 100) |= 0x4000u;
  *(a1 + 68) = v11;
}

void sub_100110F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100110F34(uint64_t *a1)
{
  *a1 = off_1002B29B8;
  sub_100110F98(a1);
  sub_1000C8650(a1 + 9);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100110F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  sub_10010FB34();
}

void sub_100111008(uint64_t *a1)
{
  sub_100110F34(a1);

  operator delete();
}

uint64_t sub_1001110B4(uint64_t a1)
{
  v2 = *(a1 + 100);
  if (v2)
  {
    *(a1 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 16);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v2 = *(a1 + 100);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 52) = 0;
    *(a1 + 44) = 0;
    *(a1 + 68) = 0;
    *(a1 + 60) = 0;
  }

  result = sub_1000C85E0(a1 + 72);
  *(a1 + 100) = 0;
  return result;
}

uint64_t sub_10011114C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2))
    {
      break;
    }

    TagFallback = *v5;
    if ((TagFallback & 0x80000000) != 0)
    {
      break;
    }

    *(this + 8) = TagFallback;
    *(this + 1) = v5 + 1;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v9 = *(this + 1);
        v8 = *(this + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v11 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v10;
          v11 = v9 + 1;
          *(this + 1) = v11;
        }

        *(a1 + 100) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v21 = v11 + 1;
          *(this + 1) = v21;
          goto LABEL_49;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v21 = *(this + 1);
        v8 = *(this + 2);
LABEL_49:
        v69 = 0;
        if (v21 >= v8 || (v28 = *v21, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
          if (!result)
          {
            return result;
          }

          v28 = v69;
        }

        else
        {
          *(this + 1) = v21 + 1;
        }

        if (v28 <= 8)
        {
          *(a1 + 100) |= 2u;
          *(a1 + 12) = v28;
        }

        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 26)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_59:
        *(a1 + 100) |= 4u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v30 = *(this + 1);
        v15 = *(this + 2);
        if (v30 >= v15 || *v30 != 32)
        {
          continue;
        }

        v19 = v30 + 1;
        *(this + 1) = v19;
LABEL_65:
        if (v19 >= v15 || (v31 = *v19, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v31;
          v32 = v19 + 1;
          *(this + 1) = v32;
        }

        *(a1 + 100) |= 8u;
        if (v32 >= v15 || *v32 != 40)
        {
          continue;
        }

        v16 = v32 + 1;
        *(this + 1) = v16;
LABEL_73:
        if (v16 >= v15 || (v33 = *v16, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v33;
          v34 = v16 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 100) |= 0x10u;
        if (v34 >= v15 || *v34 != 48)
        {
          continue;
        }

        v22 = v34 + 1;
        *(this + 1) = v22;
LABEL_81:
        if (v22 >= v15 || (v35 = *v22, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v35;
          v36 = v22 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 100) |= 0x20u;
        if (v36 >= v15 || *v36 != 56)
        {
          continue;
        }

        v24 = v36 + 1;
        *(this + 1) = v24;
LABEL_89:
        if (v24 >= v15 || (v37 = *v24, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v37;
          v38 = v24 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 100) |= 0x40u;
        if (v38 >= v15 || *v38 != 64)
        {
          continue;
        }

        v20 = v38 + 1;
        *(this + 1) = v20;
LABEL_97:
        v68 = 0;
        if (v20 >= v15 || (v39 = *v20, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v68);
          if (!result)
          {
            return result;
          }

          v39 = v68;
        }

        else
        {
          *(this + 1) = v20 + 1;
        }

        if (v39 <= 2)
        {
          *(a1 + 100) |= 0x80u;
          *(a1 + 40) = v39;
        }

        v40 = *(this + 1);
        v12 = *(this + 2);
        if (v40 >= v12 || *v40 != 72)
        {
          continue;
        }

        v26 = v40 + 1;
        *(this + 1) = v26;
LABEL_107:
        if (v26 >= v12 || (v41 = *v26, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v42 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v41;
          v42 = v26 + 1;
          *(this + 1) = v42;
        }

        *(a1 + 100) |= 0x100u;
        if (v42 >= v12 || *v42 != 80)
        {
          continue;
        }

        v18 = v42 + 1;
        *(this + 1) = v18;
LABEL_115:
        if (v18 >= v12 || (v43 = *v18, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v44 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v43;
          v44 = v18 + 1;
          *(this + 1) = v44;
        }

        *(a1 + 100) |= 0x200u;
        if (v44 >= v12 || *v44 != 88)
        {
          continue;
        }

        v25 = v44 + 1;
        *(this + 1) = v25;
LABEL_123:
        if (v25 >= v12 || (v45 = *v25, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v46 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v45;
          v46 = v25 + 1;
          *(this + 1) = v46;
        }

        *(a1 + 100) |= 0x400u;
        if (v46 >= v12 || *v46 != 96)
        {
          continue;
        }

        v14 = v46 + 1;
        *(this + 1) = v14;
LABEL_131:
        if (v14 >= v12 || (v47 = *v14, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v48 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v47;
          v48 = v14 + 1;
          *(this + 1) = v48;
        }

        *(a1 + 100) |= 0x800u;
        if (v48 >= v12 || *v48 != 104)
        {
          continue;
        }

        v17 = v48 + 1;
        *(this + 1) = v17;
LABEL_139:
        if (v17 >= v12 || (v49 = *v17, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
          if (!result)
          {
            return result;
          }

          v50 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 60) = v49;
          v50 = v17 + 1;
          *(this + 1) = v50;
        }

        *(a1 + 100) |= 0x1000u;
        if (v50 >= v12 || *v50 != 112)
        {
          continue;
        }

        v23 = v50 + 1;
        *(this + 1) = v23;
LABEL_147:
        if (v23 >= v12 || (v51 = *v23, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v52 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v51;
          v52 = v23 + 1;
          *(this + 1) = v52;
        }

        *(a1 + 100) |= 0x2000u;
        if (v52 >= v12 || *v52 != 120)
        {
          continue;
        }

        v13 = v52 + 1;
        *(this + 1) = v13;
LABEL_155:
        if (v13 >= v12 || (v53 = *v13, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
          if (!result)
          {
            return result;
          }

          v54 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 68) = v53;
          v54 = (v13 + 1);
          *(this + 1) = v54;
        }

        *(a1 + 100) |= 0x4000u;
        if (v12 - v54 < 2 || *v54 != 130 || v54[1] != 1)
        {
          continue;
        }

        break;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_59;
        }

        goto LABEL_40;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_65;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_73;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v22 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_81;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v24 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_89;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v20 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_97;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v26 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_107;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v18 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_115;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v25 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_123;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v14 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_131;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_139;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v23 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_147;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_155;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_164;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    do
    {
      *(this + 1) = v54 + 2;
LABEL_164:
      v55 = *(a1 + 84);
      v56 = *(a1 + 80);
      if (v56 >= v55)
      {
        if (v55 == *(a1 + 88))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v55 + 1);
          v55 = *(a1 + 84);
        }

        *(a1 + 84) = v55 + 1;
        operator new();
      }

      v57 = *(a1 + 72);
      *(a1 + 80) = v56 + 1;
      v58 = *(v57 + 8 * v56);
      v70 = 0;
      v59 = *(this + 1);
      if (v59 >= *(this + 2) || *v59 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
        {
          return 0;
        }
      }

      else
      {
        v70 = *v59;
        *(this + 1) = v59 + 1;
      }

      v60 = *(this + 14);
      v61 = *(this + 15);
      *(this + 14) = v60 + 1;
      if (v60 >= v61)
      {
        return 0;
      }

      v62 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v70);
      if (!sub_100110460(v58, this, v63) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v62);
      v64 = *(this + 14);
      v65 = __OFSUB__(v64, 1);
      v66 = v64 - 1;
      if (v66 < 0 == v65)
      {
        *(this + 14) = v66;
      }

      v54 = *(this + 1);
      v67 = *(this + 2);
    }

    while (v67 - v54 > 1 && *v54 == 130 && v54[1] == 1);
    if (v54 == v67 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
  *(this + 8) = TagFallback;
  if (TagFallback)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_100111A20(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 100);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(v5 + 16);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  if ((*(v5 + 100) & 0x4000) != 0)
  {
LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  }

LABEL_17:
  if (*(v5 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 72) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 80));
  }

  return result;
}

uint64_t sub_100111C24(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 100);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (v3)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 100);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
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
    v3 = *(a1 + 100);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v3 = *(a1 + 100);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v4 += v13 + v9 + 1;
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(a1 + 24);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_36:
  v16 = *(a1 + 28);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_40:
  v18 = *(a1 + 32);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v19 = 2;
  }

  v4 += v19;
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_44:
  v20 = *(a1 + 36);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v21 = 2;
  }

  v4 += v21;
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v22 = *(a1 + 40);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v23 = 2;
    }

    v4 += v23;
  }

LABEL_54:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_91;
  }

  if ((v3 & 0x100) != 0)
  {
    v24 = *(a1 + 44);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v25 = 2;
    }

    v4 += v25;
    if ((v3 & 0x200) == 0)
    {
LABEL_57:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_71;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v26 = *(a1 + 48);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v27 = 2;
  }

  v4 += v27;
  if ((v3 & 0x400) == 0)
  {
LABEL_58:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_75;
  }

LABEL_71:
  v28 = *(a1 + 52);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v29 = 2;
  }

  v4 += v29;
  if ((v3 & 0x800) == 0)
  {
LABEL_59:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_79;
  }

LABEL_75:
  v30 = *(a1 + 56);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v31 = 2;
  }

  v4 += v31;
  if ((v3 & 0x1000) == 0)
  {
LABEL_60:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_83;
  }

LABEL_79:
  v32 = *(a1 + 60);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v33 = 2;
  }

  v4 += v33;
  if ((v3 & 0x2000) == 0)
  {
LABEL_61:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_87;
  }

LABEL_83:
  v34 = *(a1 + 64);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v35 = 2;
  }

  v4 += v35;
  if ((v3 & 0x4000) != 0)
  {
LABEL_87:
    v36 = *(a1 + 68);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 1;
    }

    else
    {
      v37 = 2;
    }

    v4 += v37;
  }

LABEL_91:
  v38 = *(a1 + 80);
  v39 = (v4 + 2 * v38);
  if (v38 >= 1)
  {
    v40 = 0;
    do
    {
      v41 = sub_1001109E4(*(*(a1 + 72) + 8 * v40), a2);
      v42 = v41;
      if (v41 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2);
      }

      else
      {
        v43 = 1;
      }

      v39 = (v42 + v39 + v43);
      ++v40;
    }

    while (v40 < *(a1 + 80));
  }

  *(a1 + 96) = v39;
  return v39;
}

void sub_100111FBC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a2 + 80);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 80) |= 1u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 12);
  *(a1 + 80) |= 2u;
  *(a1 + 12) = v8;
  v4 = *(a2 + 80);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 16);
  *(a1 + 80) |= 4u;
  *(a1 + 16) = v9;
  v4 = *(a2 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(a2 + 24);
  *(a1 + 80) |= 8u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    v12 = *(a2 + 32);
    *(a1 + 80) |= 0x20u;
    *(a1 + 32) = v12;
    v4 = *(a2 + 80);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_28:
  v11 = *(a2 + 28);
  *(a1 + 80) |= 0x10u;
  *(a1 + 28) = v11;
  v4 = *(a2 + 80);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_30:
  v13 = *(a2 + 36);
  *(a1 + 80) |= 0x40u;
  *(a1 + 36) = v13;
  v4 = *(a2 + 80);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 40);
    *(a1 + 80) |= 0x80u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 80);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 44);
    *(a1 + 80) |= 0x100u;
    *(a1 + 44) = v14;
    v4 = *(a2 + 80);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 48);
  *(a1 + 80) |= 0x200u;
  *(a1 + 48) = v15;
  v4 = *(a2 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = *(a2 + 52);
  *(a1 + 80) |= 0x400u;
  *(a1 + 52) = v16;
  v4 = *(a2 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = *(a2 + 56);
  *(a1 + 80) |= 0x800u;
  *(a1 + 56) = v17;
  v4 = *(a2 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = *(a2 + 60);
  *(a1 + 80) |= 0x1000u;
  *(a1 + 60) = v18;
  v4 = *(a2 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = *(a2 + 64);
  *(a1 + 80) |= 0x2000u;
  *(a1 + 64) = v19;
  v4 = *(a2 + 80);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_38:
  v20 = *(a2 + 68);
  *(a1 + 80) |= 0x4000u;
  *(a1 + 68) = v20;
  if ((*(a2 + 80) & 0x8000) == 0)
  {
    return;
  }

LABEL_22:
  v6 = *(a2 + 72);
  *(a1 + 80) |= 0x8000u;
  *(a1 + 72) = v6;
}

void sub_10011223C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100112254(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B2A30;
  sub_10010FB34();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1001122B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100112254(a1);

  operator delete();
}

uint64_t sub_100112348(uint64_t result)
{
  v1 = *(result + 80);
  if (v1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 60) = 0u;
    *(result + 44) = 0u;
  }

  *(result + 80) = 0;
  return result;
}

uint64_t sub_100112380(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v57 = 0;
        v7 = *(this + 1);
        if (v7 < *(this + 2))
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            *(this + 1) = v7 + 1;
            goto LABEL_46;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v57);
        if (result)
        {
          v8 = v57;
LABEL_46:
          if (v8 <= 0xC)
          {
            *(a1 + 80) |= 1u;
            *(a1 + 8) = v8;
          }

          v25 = *(this + 1);
          v9 = *(this + 2);
          if (v25 < v9 && *v25 == 16)
          {
            v19 = v25 + 1;
            *(this + 1) = v19;
            goto LABEL_51;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(this + 1);
        v9 = *(this + 2);
LABEL_51:
        if (v19 >= v9 || (v26 = *v19, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 12) = v26;
          v27 = v19 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 80) |= 2u;
        if (v27 >= v9 || *v27 != 24)
        {
          continue;
        }

        v15 = v27 + 1;
        *(this + 1) = v15;
LABEL_59:
        if (v15 >= v9 || (v28 = *v15, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v28;
          v29 = v15 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 80) |= 4u;
        if (v29 >= v9 || *v29 != 32)
        {
          continue;
        }

        v17 = v29 + 1;
        *(this + 1) = v17;
LABEL_67:
        if (v17 >= v9 || (v30 = *v17, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v30;
          v31 = v17 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 80) |= 8u;
        if (v31 >= v9 || *v31 != 40)
        {
          continue;
        }

        v12 = v31 + 1;
        *(this + 1) = v12;
LABEL_75:
        if (v12 >= v9 || (v32 = *v12, v32 < 0))
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
          v33 = v12 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 80) |= 0x10u;
        if (v33 >= v9 || *v33 != 48)
        {
          continue;
        }

        v20 = v33 + 1;
        *(this + 1) = v20;
LABEL_83:
        if (v20 >= v9 || (v34 = *v20, v34 < 0))
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
          v35 = v20 + 1;
          *(this + 1) = v35;
        }

        *(a1 + 80) |= 0x20u;
        if (v35 >= v9 || *v35 != 56)
        {
          continue;
        }

        v22 = v35 + 1;
        *(this + 1) = v22;
LABEL_91:
        if (v22 >= v9 || (v36 = *v22, v36 < 0))
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
          v37 = v22 + 1;
          *(this + 1) = v37;
        }

        *(a1 + 80) |= 0x40u;
        if (v37 >= v9 || *v37 != 64)
        {
          continue;
        }

        v18 = v37 + 1;
        *(this + 1) = v18;
LABEL_99:
        if (v18 >= v9 || (v38 = *v18, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v39 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v38;
          v39 = v18 + 1;
          *(this + 1) = v39;
        }

        *(a1 + 80) |= 0x80u;
        if (v39 >= v9 || *v39 != 72)
        {
          continue;
        }

        v24 = v39 + 1;
        *(this + 1) = v24;
LABEL_107:
        if (v24 >= v9 || (v40 = *v24, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 44) = v40;
          v41 = v24 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 80) |= 0x100u;
        if (v41 >= v9 || *v41 != 80)
        {
          continue;
        }

        v14 = v41 + 1;
        *(this + 1) = v14;
LABEL_115:
        if (v14 >= v9 || (v42 = *v14, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v42;
          v43 = v14 + 1;
          *(this + 1) = v43;
        }

        *(a1 + 80) |= 0x200u;
        if (v43 >= v9 || *v43 != 88)
        {
          continue;
        }

        v23 = v43 + 1;
        *(this + 1) = v23;
LABEL_123:
        if (v23 >= v9 || (v44 = *v23, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v45 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v44;
          v45 = v23 + 1;
          *(this + 1) = v45;
        }

        *(a1 + 80) |= 0x400u;
        if (v45 >= v9 || *v45 != 96)
        {
          continue;
        }

        v11 = v45 + 1;
        *(this + 1) = v11;
LABEL_131:
        if (v11 >= v9 || (v46 = *v11, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v47 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v46;
          v47 = v11 + 1;
          *(this + 1) = v47;
        }

        *(a1 + 80) |= 0x800u;
        if (v47 >= v9 || *v47 != 104)
        {
          continue;
        }

        v13 = v47 + 1;
        *(this + 1) = v13;
LABEL_139:
        if (v13 >= v9 || (v48 = *v13, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
          if (!result)
          {
            return result;
          }

          v49 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 60) = v48;
          v49 = v13 + 1;
          *(this + 1) = v49;
        }

        *(a1 + 80) |= 0x1000u;
        if (v49 >= v9 || *v49 != 112)
        {
          continue;
        }

        v21 = v49 + 1;
        *(this + 1) = v21;
LABEL_147:
        if (v21 >= v9 || (v50 = *v21, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v51 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v50;
          v51 = v21 + 1;
          *(this + 1) = v51;
        }

        *(a1 + 80) |= 0x2000u;
        if (v51 >= v9 || *v51 != 120)
        {
          continue;
        }

        v10 = v51 + 1;
        *(this + 1) = v10;
LABEL_155:
        if (v10 >= v9 || (v52 = *v10, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
          if (!result)
          {
            return result;
          }

          v53 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 68) = v52;
          v53 = (v10 + 1);
          *(this + 1) = v53;
        }

        *(a1 + 80) |= 0x4000u;
        if (v9 - v53 < 2 || *v53 != 128 || v53[1] != 1)
        {
          continue;
        }

        v16 = (v53 + 2);
        *(this + 1) = v16;
LABEL_164:
        if (v16 >= v9 || (v54 = *v16, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v55 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v54;
          v55 = v16 + 1;
          *(this + 1) = v55;
        }

        *(a1 + 80) |= 0x8000u;
        if (v55 != v9 || !*(this + 11) && *(this + 6) != *(this + 10))
        {
          continue;
        }

        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_59;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_67;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_75;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_83;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v22 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_91;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v18 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_99;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v24 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_107;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_115;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v23 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_123;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_131;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_139;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v21 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_147;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_155;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_164;
      default:
LABEL_40:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t sub_100112AF0(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 80);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
    if ((*(v5 + 80) & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v6 & 0x8000) == 0)
  {
    return result;
  }

LABEL_33:
  v7 = *(v5 + 72);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v7, a2, a4);
}

uint64_t sub_100112CE8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (v3)
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 80);
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 80);
    if ((v3 & 8) == 0)
    {
LABEL_19:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(a1 + 24);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_20:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_29:
  v10 = *(a1 + 28);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_21:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_33:
  v12 = *(a1 + 32);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_22:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v14 = *(a1 + 36);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_41:
    v16 = *(a1 + 40);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 80);
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
  }

LABEL_45:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_87;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(a1 + 44);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(a1 + 80);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_48:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_63;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v20 = *(a1 + 48);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_49:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_67;
  }

LABEL_63:
  v22 = *(a1 + 52);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_50:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_67:
  v24 = *(a1 + 56);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v25 = 2;
  }

  v4 = (v25 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_51:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_75;
  }

LABEL_71:
  v26 = *(a1 + 60);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_52:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_79;
  }

LABEL_75:
  v28 = *(a1 + 64);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v29 = 2;
  }

  v4 = (v29 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_53:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_83;
  }

LABEL_79:
  v30 = *(a1 + 68);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v31 = 2;
  }

  v4 = (v31 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_83:
    v32 = *(a1 + 72);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 2;
    }

    else
    {
      v33 = 3;
    }

    v4 = (v33 + v4);
  }

LABEL_87:
  *(a1 + 76) = v4;
  return v4;
}

void sub_100112FF0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    (*(*a1 + 32))(a1);

    sub_100111FBC(a1, a2);
  }
}

void sub_100113074(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 16) + 8 * v4);
      v6 = *(a1 + 28);
      v7 = *(a1 + 24);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v6 + 1);
          v6 = *(a1 + 28);
        }

        *(a1 + 28) = v6 + 1;
        operator new();
      }

      v8 = *(a1 + 16);
      *(a1 + 24) = v7 + 1;
      sub_100111FBC(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 24));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), *(a2 + 56) + *(a1 + 56));
  if (*(a2 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v9);
      v11 = *(a1 + 60);
      v12 = *(a1 + 56);
      if (v12 >= v11)
      {
        if (v11 == *(a1 + 64))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v11 + 1);
          v11 = *(a1 + 60);
        }

        *(a1 + 60) = v11 + 1;
        operator new();
      }

      v13 = *(a1 + 48);
      *(a1 + 56) = v12 + 1;
      sub_100111FBC(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 56));
  }

  v14 = *(a2 + 100);
  if (!v14)
  {
    goto LABEL_27;
  }

  if (v14)
  {
    v17 = *(a2 + 8);
    *(a1 + 100) |= 1u;
    *(a1 + 8) = v17;
    v14 = *(a2 + 100);
    if ((v14 & 2) == 0)
    {
LABEL_22:
      if ((v14 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_22;
  }

  v18 = *(a2 + 12);
  *(a1 + 100) |= 2u;
  *(a1 + 12) = v18;
  v14 = *(a2 + 100);
  if ((v14 & 4) == 0)
  {
LABEL_23:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_24;
    }

LABEL_36:
    v20 = *(a2 + 44);
    *(a1 + 100) |= 0x10u;
    *(a1 + 44) = v20;
    v14 = *(a2 + 100);
    if ((v14 & 0x40) == 0)
    {
LABEL_25:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_35:
  v19 = *(a2 + 40);
  *(a1 + 100) |= 4u;
  *(a1 + 40) = v19;
  v14 = *(a2 + 100);
  if ((v14 & 0x10) != 0)
  {
    goto LABEL_36;
  }

LABEL_24:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_37:
  v21 = *(a2 + 72);
  *(a1 + 100) |= 0x40u;
  *(a1 + 72) = v21;
  v14 = *(a2 + 100);
  if ((v14 & 0x80) != 0)
  {
LABEL_26:
    v15 = *(a2 + 76);
    *(a1 + 100) |= 0x80u;
    *(a1 + 76) = v15;
    v14 = *(a2 + 100);
  }

LABEL_27:
  if ((v14 & 0xFF00) == 0)
  {
    return;
  }

  if ((v14 & 0x100) != 0)
  {
    v22 = *(a2 + 88);
    *(a1 + 100) |= 0x100u;
    *(a1 + 88) = v22;
    v14 = *(a2 + 100);
    if ((v14 & 0x200) == 0)
    {
LABEL_30:
      if ((v14 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_31;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_30;
  }

  *(a1 + 100) |= 0x200u;
  v23 = *(a1 + 80);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 80);
  if (!v24)
  {
    sub_10010FB34();
    v24 = *(qword_1002DBED8 + 80);
  }

  sub_100111FBC(v23, v24);
  if ((*(a2 + 100) & 0x400) != 0)
  {
LABEL_31:
    v16 = *(a2 + 92);
    *(a1 + 100) |= 0x400u;
    *(a1 + 92) = v16;
  }
}

void sub_10011345C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100113474(uint64_t *a1)
{
  *a1 = off_1002B2AA8;
  sub_1001134E4(a1);
  sub_1000C8650(a1 + 6);
  sub_1000C8650(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1001134E4(uint64_t a1)
{
  sub_10010FB34();
  if (qword_1002DBED8 != a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void sub_100113560(uint64_t *a1)
{
  sub_100113474(a1);

  operator delete();
}

uint64_t sub_100113604(uint64_t a1)
{
  v2 = *(a1 + 100);
  if (v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 40) = 0;
    *(a1 + 72) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 88) = 0;
    if ((v2 & 0x200) != 0)
    {
      v3 = *(a1 + 80);
      if (v3)
      {
        v4 = *(v3 + 80);
        if (v4)
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        if ((v4 & 0xFF00) != 0)
        {
          *(v3 + 60) = 0u;
          *(v3 + 44) = 0u;
        }

        *(v3 + 80) = 0;
      }
    }

    *(a1 + 92) = 0;
  }

  sub_1000C85E0(a1 + 16);
  result = sub_1000C85E0(a1 + 48);
  *(a1 + 100) = 0;
  return result;
}

uint64_t sub_1001136A4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
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
            if (TagFallback >> 3 <= 5)
            {
              break;
            }

            if (TagFallback >> 3 > 8)
            {
              if (v7 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v24 = *(this + 1);
                  v9 = *(this + 2);
                  goto LABEL_130;
                }

                goto LABEL_43;
              }

              if (v7 != 10)
              {
                if (v7 == 11 && (TagFallback & 7) == 0)
                {
                  v14 = *(this + 1);
                  v13 = *(this + 2);
                  goto LABEL_152;
                }

                goto LABEL_43;
              }

              if (v8 != 2)
              {
                goto LABEL_43;
              }

              v21 = *(a1 + 100);
LABEL_138:
              *(a1 + 100) = v21 | 0x200;
              v63 = *(a1 + 80);
              if (!v63)
              {
                operator new();
              }

              v74 = 0;
              v64 = *(this + 1);
              if (v64 >= *(this + 2) || *v64 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
                {
                  return 0;
                }
              }

              else
              {
                v74 = *v64;
                *(this + 1) = v64 + 1;
              }

              v65 = *(this + 14);
              v66 = *(this + 15);
              *(this + 14) = v65 + 1;
              if (v65 >= v66)
              {
                return 0;
              }

              v67 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v74);
              if (!sub_100112380(v63, this, v68) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v67);
              v69 = *(this + 14);
              v40 = __OFSUB__(v69, 1);
              v70 = v69 - 1;
              if (v70 < 0 == v40)
              {
                *(this + 14) = v70;
              }

              v71 = *(this + 1);
              v13 = *(this + 2);
              if (v71 < v13 && *v71 == 88)
              {
                v14 = v71 + 1;
                *(this + 1) = v14;
LABEL_152:
                if (v14 >= v13 || (v72 = *v14, v72 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 92));
                  if (!result)
                  {
                    return result;
                  }

                  v73 = *(this + 1);
                  v13 = *(this + 2);
                }

                else
                {
                  *(a1 + 92) = v72;
                  v73 = v14 + 1;
                  *(this + 1) = v73;
                }

                *(a1 + 100) |= 0x400u;
                if (v73 == v13 && (*(this + 11) || *(this + 6) == *(this + 10)))
                {
                  *(this + 8) = 0;
                  result = 1;
                  *(this + 36) = 1;
                  return result;
                }
              }
            }

            else
            {
              if (v7 == 6)
              {
                if (v8 != 2)
                {
                  goto LABEL_43;
                }

                goto LABEL_96;
              }

              if (v7 != 7)
              {
                if (v7 == 8 && (TagFallback & 7) == 0)
                {
                  v10 = *(this + 1);
                  v9 = *(this + 2);
                  goto LABEL_122;
                }

                goto LABEL_43;
              }

              if ((TagFallback & 7) != 0)
              {
                goto LABEL_43;
              }

              v20 = *(this + 1);
              v9 = *(this + 2);
LABEL_114:
              if (v20 >= v9 || (v57 = *v20, v57 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                if (!result)
                {
                  return result;
                }

                v58 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 72) = v57;
                v58 = v20 + 1;
                *(this + 1) = v58;
              }

              *(a1 + 100) |= 0x40u;
              if (v58 < v9 && *v58 == 64)
              {
                v10 = v58 + 1;
                *(this + 1) = v10;
LABEL_122:
                if (v10 >= v9 || (v59 = *v10, v59 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
                  if (!result)
                  {
                    return result;
                  }

                  v60 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 76) = v59;
                  v60 = v10 + 1;
                  *(this + 1) = v60;
                }

                *(a1 + 100) |= 0x80u;
                if (v60 < v9 && *v60 == 72)
                {
                  v24 = v60 + 1;
                  *(this + 1) = v24;
LABEL_130:
                  v74 = 0;
                  if (v24 >= v9 || (v61 = *v24, (v61 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74);
                    if (!result)
                    {
                      return result;
                    }

                    v61 = v74;
                    v62 = *(this + 1);
                    v9 = *(this + 2);
                  }

                  else
                  {
                    v62 = v24 + 1;
                    *(this + 1) = v62;
                  }

                  *(a1 + 88) = v61 != 0;
                  v21 = *(a1 + 100) | 0x100;
                  *(a1 + 100) = v21;
                  if (v62 < v9 && *v62 == 82)
                  {
                    *(this + 1) = v62 + 1;
                    goto LABEL_138;
                  }
                }
              }
            }
          }

          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v16 = *(this + 1);
            v15 = *(this + 2);
            goto LABEL_52;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v17 = *(this + 1);
          v15 = *(this + 2);
          if (v17 >= v15 || (v18 = *v17, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            v15 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v18;
            v19 = v17 + 1;
            *(this + 1) = v19;
          }

          *(a1 + 100) |= 1u;
          if (v19 < v15 && *v19 == 16)
          {
            v16 = v19 + 1;
            *(this + 1) = v16;
LABEL_52:
            v74 = 0;
            if (v16 >= v15 || (v26 = *v16, (v26 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74);
              if (!result)
              {
                return result;
              }

              v26 = v74;
            }

            else
            {
              *(this + 1) = v16 + 1;
            }

            if (v26 <= 2)
            {
              *(a1 + 100) |= 2u;
              *(a1 + 12) = v26;
            }

            v27 = *(this + 1);
            v22 = *(this + 2);
            if (v27 < v22 && *v27 == 24)
            {
              v23 = v27 + 1;
              *(this + 1) = v23;
              goto LABEL_62;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
LABEL_62:
        if (v23 >= v22 || (v28 = *v23, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v22 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v28;
          v29 = v23 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 100) |= 4u;
        if (v29 < v22 && *v29 == 34)
        {
          while (1)
          {
            *(this + 1) = v29 + 1;
LABEL_70:
            v30 = *(a1 + 28);
            v31 = *(a1 + 24);
            if (v31 >= v30)
            {
              if (v30 == *(a1 + 32))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v30 + 1);
                v30 = *(a1 + 28);
              }

              *(a1 + 28) = v30 + 1;
              operator new();
            }

            v32 = *(a1 + 16);
            *(a1 + 24) = v31 + 1;
            v33 = *(v32 + 8 * v31);
            v74 = 0;
            v34 = *(this + 1);
            if (v34 >= *(this + 2) || *v34 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
              {
                return 0;
              }
            }

            else
            {
              v74 = *v34;
              *(this + 1) = v34 + 1;
            }

            v35 = *(this + 14);
            v36 = *(this + 15);
            *(this + 14) = v35 + 1;
            if (v35 >= v36)
            {
              return 0;
            }

            v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v74);
            if (!sub_100112380(v33, this, v38) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
            v39 = *(this + 14);
            v40 = __OFSUB__(v39, 1);
            v41 = v39 - 1;
            if (v41 < 0 == v40)
            {
              *(this + 14) = v41;
            }

            v29 = *(this + 1);
            v11 = *(this + 2);
            if (v29 >= v11)
            {
              break;
            }

            v42 = *v29;
            if (v42 != 34)
            {
              if (v42 != 40)
              {
                goto LABEL_1;
              }

              v12 = v29 + 1;
              *(this + 1) = v12;
              goto LABEL_88;
            }
          }
        }
      }

      if (v7 == 4)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_70;
      }

      if (v7 != 5 || (TagFallback & 7) != 0)
      {
        break;
      }

      v12 = *(this + 1);
      v11 = *(this + 2);
LABEL_88:
      if (v12 >= v11 || (v43 = *v12, v43 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
        if (!result)
        {
          return result;
        }

        v44 = *(this + 1);
        v11 = *(this + 2);
      }

      else
      {
        *(a1 + 44) = v43;
        v44 = v12 + 1;
        *(this + 1) = v44;
      }

      *(a1 + 100) |= 0x10u;
      if (v44 < v11 && *v44 == 50)
      {
        while (1)
        {
          *(this + 1) = v44 + 1;
LABEL_96:
          v45 = *(a1 + 60);
          v46 = *(a1 + 56);
          if (v46 >= v45)
          {
            if (v45 == *(a1 + 64))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v45 + 1);
              v45 = *(a1 + 60);
            }

            *(a1 + 60) = v45 + 1;
            operator new();
          }

          v47 = *(a1 + 48);
          *(a1 + 56) = v46 + 1;
          v48 = *(v47 + 8 * v46);
          v74 = 0;
          v49 = *(this + 1);
          if (v49 >= *(this + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v74))
            {
              return 0;
            }
          }

          else
          {
            v74 = *v49;
            *(this + 1) = v49 + 1;
          }

          v50 = *(this + 14);
          v51 = *(this + 15);
          *(this + 14) = v50 + 1;
          if (v50 >= v51)
          {
            return 0;
          }

          v52 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v74);
          if (!sub_100112380(v48, this, v53) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v52);
          v54 = *(this + 14);
          v40 = __OFSUB__(v54, 1);
          v55 = v54 - 1;
          if (v55 < 0 == v40)
          {
            *(this + 14) = v55;
          }

          v44 = *(this + 1);
          v9 = *(this + 2);
          if (v44 >= v9)
          {
            break;
          }

          v56 = *v44;
          if (v56 != 50)
          {
            if (v56 != 56)
            {
              goto LABEL_1;
            }

            v20 = v44 + 1;
            *(this + 1) = v20;
            goto LABEL_114;
          }
        }
      }
    }

LABEL_43:
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

uint64_t sub_100113F24(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 100);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 100) & 4) != 0)
  {
LABEL_4:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  }

LABEL_5:
  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if ((*(v5 + 100) & 0x10) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 44), a2, a4);
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 48) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  v9 = *(v5 + 100);
  if ((v9 & 0x40) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 72), a2, a4);
    v9 = *(v5 + 100);
    if ((v9 & 0x80) == 0)
    {
LABEL_15:
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 76), a2, a4);
  v9 = *(v5 + 100);
  if ((v9 & 0x100) == 0)
  {
LABEL_16:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 88), a2, a4);
  v9 = *(v5 + 100);
  if ((v9 & 0x200) == 0)
  {
LABEL_17:
    if ((v9 & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_25:
  v10 = *(v5 + 80);
  if (!v10)
  {
    sub_10010FB34();
    v10 = *(qword_1002DBED8 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v10, a2, a4);
  if ((*(v5 + 100) & 0x400) != 0)
  {
LABEL_28:
    v11 = *(v5 + 92);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v11, a2, a4);
  }

  return result;
}

uint64_t sub_1001140DC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 100);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_37;
  }

  if (v3)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 100);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
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
    v3 = *(a1 + 100);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 40);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 0x10) == 0)
    {
LABEL_18:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(a1 + 44);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(a1 + 72);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 100);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x80) != 0)
  {
LABEL_33:
    v14 = *(a1 + 76);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_37:
  if ((v3 & 0xFF00) != 0)
  {
    v4 += (v3 >> 7) & 2;
    if ((v3 & 0x200) != 0)
    {
      v16 = *(a1 + 80);
      if (!v16)
      {
        sub_10010FB34();
        v16 = *(qword_1002DBED8 + 80);
      }

      v17 = sub_100112CE8(v16, a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      }

      else
      {
        v19 = 1;
      }

      v4 += v18 + v19 + 1;
      v3 = *(a1 + 100);
    }

    if ((v3 & 0x400) != 0)
    {
      v20 = *(a1 + 92);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      }

      else
      {
        v21 = 2;
      }

      v4 += v21;
    }
  }

  v22 = *(a1 + 24);
  v23 = v22 + v4;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = sub_100112CE8(*(*(a1 + 16) + 8 * v24), a2);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      }

      else
      {
        v27 = 1;
      }

      v23 += v26 + v27;
      ++v24;
    }

    while (v24 < *(a1 + 24));
  }

  v28 = *(a1 + 56);
  v29 = (v28 + v23);
  if (v28 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = sub_100112CE8(*(*(a1 + 48) + 8 * v30), a2);
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
      }

      else
      {
        v33 = 1;
      }

      v29 = (v32 + v29 + v33);
      ++v30;
    }

    while (v30 < *(a1 + 56));
  }

  *(a1 + 96) = v29;
  return v29;
}

void sub_100114380(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    *(a1 + 20) |= 1u;
    v4 = *(a1 + 8);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 8);
    if (!v5)
    {
      sub_10010FB34();
      v5 = *(qword_1002DBEE8 + 8);
    }

    sub_1000C7CD4(v4, v5);
  }
}

void sub_100114488(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B2B20;
  sub_1001144E0(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1001144E0(uint64_t a1)
{
  sub_10010FB34();
  if (qword_1002DBEE8 != a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void sub_10011455C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100114488(a1);

  operator delete();
}

uint64_t sub_1001145E0(uint64_t result)
{
  v1 = result;
  if (*(result + 20))
  {
    result = *(result + 8);
    if (result)
    {
      result = sub_1000C7FBC(result);
    }
  }

  *(v1 + 20) = 0;
  return result;
}

uint64_t sub_100114618(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v17 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17))
        {
          return 0;
        }
      }

      else
      {
        v17 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(this + 14);
      v10 = *(this + 15);
      *(this + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v17);
      if (!sub_1000C8004(v7, this, v12) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v11);
      v13 = *(this + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(this + 14) = v15;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1001147D8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      sub_10010FB34();
      v6 = *(qword_1002DBEE8 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return result;
}

uint64_t sub_100114834(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      sub_10010FB34();
      v4 = *(qword_1002DBEE8 + 8);
    }

    v5 = sub_1000C847C(v4, a2);
    v7 = v5;
    if (v5 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, v6);
    }

    else
    {
      v8 = 1;
    }

    result = (v7 + v8 + 1);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_1001148C4(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 8);
      a1[9] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[9] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = *(a2 + 16);
    a1[9] |= 4u;
    a1[4] = v8;
    v4 = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 20);
    a1[9] |= 8u;
    a1[5] = v9;
    v4 = *(a2 + 36);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 24);
    a1[9] |= 0x10u;
    a1[6] = v10;
    if ((*(a2 + 36) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 28);
    a1[9] |= 0x20u;
    a1[7] = v5;
  }
}

void sub_1001149F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100114A10(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B2B98;
  sub_10010FB34();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100114A6C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100114A10(a1);

  operator delete();
}

uint64_t sub_100114AF8(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_100114B10(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_51;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_67;
          }

          goto LABEL_26;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
        if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          a1[2] = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        a1[9] |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
          goto LABEL_35;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v15 = *(this + 1);
      v8 = *(this + 2);
LABEL_35:
      v28 = 0;
      if (v15 >= v8 || (v17 = *v15, (v17 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
        if (!result)
        {
          return result;
        }

        v17 = v28;
        v18 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v18 = v15 + 1;
        *(this + 1) = v18;
      }

      a1[3] = v17;
      a1[9] |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(this + 1) = v9;
LABEL_43:
        v28 = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
          v20 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(this + 1) = v20;
        }

        a1[4] = v19;
        a1[9] |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(this + 1) = v14;
LABEL_51:
          v28 = 0;
          if (v14 >= v8 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
            if (!result)
            {
              return result;
            }

            v21 = v28;
            v22 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v22 = v14 + 1;
            *(this + 1) = v22;
          }

          a1[5] = v21;
          a1[9] |= 8u;
          if (v22 < v8 && *v22 == 40)
          {
            v16 = v22 + 1;
            *(this + 1) = v16;
LABEL_59:
            v28 = 0;
            if (v16 >= v8 || (v23 = *v16, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
              if (!result)
              {
                return result;
              }

              v23 = v28;
              v24 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v24 = v16 + 1;
              *(this + 1) = v24;
            }

            a1[6] = v23;
            a1[9] |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(this + 1) = v10;
LABEL_67:
              if (v10 >= v8 || (v25 = *v10, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
                if (!result)
                {
                  return result;
                }

                v26 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                a1[7] = v25;
                v26 = v10 + 1;
                *(this + 1) = v26;
              }

              a1[9] |= 0x20u;
              if (v26 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }
        }
      }
    }

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_43;
    }

LABEL_26:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

int *sub_100114E7C(int *result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[9];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[9];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[6], a2, a4);
    if ((v5[9] & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[5], a2, a4);
  v6 = v5[9];
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t sub_100114F5C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_43;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_16;
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
    v3 = *(a1 + 36);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
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
      v3 = *(a1 + 36);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(a1 + 20);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

LABEL_33:
  v12 = *(a1 + 24);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) != 0)
  {
LABEL_39:
    v14 = *(a1 + 28);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_43:
  *(a1 + 32) = v4;
  return v4;
}

void sub_1001150E8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 8);
    *(a1 + 64) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 64);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 64) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 56);
  *(a1 + 64) |= 2u;
  *(a1 + 56) = v6;
  v4 = *(a2 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_14:
  *(a1 + 64) |= 4u;
  v7 = *(a1 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    sub_10010FB34();
    v8 = *(qword_1002DBEF8 + 16);
  }

  sub_10010FBCC(v7, v8);
  v4 = *(a2 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    *(a1 + 64) |= 0x10u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      sub_10010FB34();
      v12 = *(qword_1002DBEF8 + 32);
    }

    sub_100113074(v11, v12);
    v4 = *(a2 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_34;
    }

    goto LABEL_29;
  }

LABEL_19:
  *(a1 + 64) |= 8u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    sub_10010FB34();
    v10 = *(qword_1002DBEF8 + 24);
  }

  sub_100110B8C(v9, v10);
  v4 = *(a2 + 64);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_29:
  *(a1 + 64) |= 0x20u;
  v13 = *(a1 + 40);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 40);
  if (!v14)
  {
    sub_10010FB34();
    v14 = *(qword_1002DBEF8 + 40);
  }

  sub_100114380(v13, v14);
  if ((*(a2 + 64) & 0x40) != 0)
  {
LABEL_34:
    *(a1 + 64) |= 0x40u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 48);
    if (!v16)
    {
      sub_10010FB34();
      v16 = *(qword_1002DBEF8 + 48);
    }

    sub_1001148C4(v15, v16);
  }
}

void sub_100115478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100115490(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1002B2C10;
  sub_1001154E8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1001154E8(void *a1)
{
  sub_10010FB34();
  if (qword_1002DBEF8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[6];
    if (v6)
    {
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

void sub_100115614(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100115490(a1);

  operator delete();
}

uint64_t sub_1001156A8(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 64);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 56) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(result + 64);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_1001110B4(result);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_100113604(result);
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v4 = *(v1 + 40);
      if (v4)
      {
        if (*(v4 + 20))
        {
          result = *(v4 + 8);
          if (result)
          {
            result = sub_1000C7FBC(result);
          }
        }

        *(v4 + 20) = 0;
        v2 = *(v1 + 64);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = *(v1 + 48);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
      }
    }
  }

  *(v1 + 64) = 0;
  return result;
}

uint64_t sub_100115770(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
              if (!result)
              {
                return result;
              }

              v13 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 8) = v12;
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            *(a1 + 64) |= 1u;
            if (v13 < v10 && *v13 == 16)
            {
              v14 = v13 + 1;
              *(this + 1) = v14;
              goto LABEL_39;
            }
          }

          else
          {
            if (v7 != 2)
            {
              if (v7 != 3 || v8 != 2)
              {
                goto LABEL_30;
              }

              v9 = *(a1 + 64);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v14 = *(this + 1);
            v10 = *(this + 2);
LABEL_39:
            if (v14 >= v10 || (v16 = *v14, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 56) = v16;
              v17 = v14 + 1;
              *(this + 1) = v17;
            }

            v9 = *(a1 + 64) | 2;
            *(a1 + 64) = v9;
            if (v17 < v10 && *v17 == 26)
            {
              *(this + 1) = v17 + 1;
LABEL_47:
              *(a1 + 64) = v9 | 4;
              v18 = *(a1 + 16);
              if (!v18)
              {
                operator new();
              }

              v63 = 0;
              v19 = *(this + 1);
              if (v19 >= *(this + 2) || *v19 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
                {
                  return 0;
                }
              }

              else
              {
                v63 = *v19;
                *(this + 1) = v19 + 1;
              }

              v20 = *(this + 14);
              v21 = *(this + 15);
              *(this + 14) = v20 + 1;
              if (v20 >= v21)
              {
                return 0;
              }

              v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v63);
              if (!sub_10010FDD4(v18, this, v23) || *(this + 36) != 1)
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
              if (v27 < *(this + 2) && *v27 == 34)
              {
                *(this + 1) = v27 + 1;
                goto LABEL_61;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v7 == 6)
        {
          if (v8 == 2)
          {
            goto LABEL_89;
          }

          goto LABEL_30;
        }

        if (v7 != 7 || v8 != 2)
        {
          goto LABEL_30;
        }

LABEL_103:
        *(a1 + 64) |= 0x40u;
        v55 = *(a1 + 48);
        if (!v55)
        {
          operator new();
        }

        v63 = 0;
        v56 = *(this + 1);
        if (v56 >= *(this + 2) || *v56 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
          {
            return 0;
          }
        }

        else
        {
          v63 = *v56;
          *(this + 1) = v56 + 1;
        }

        v57 = *(this + 14);
        v58 = *(this + 15);
        *(this + 14) = v57 + 1;
        if (v57 >= v58)
        {
          return 0;
        }

        v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v63);
        if (!sub_100114B10(v55, this, v60) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
        v61 = *(this + 14);
        v25 = __OFSUB__(v61, 1);
        v62 = v61 - 1;
        if (v62 < 0 == v25)
        {
          *(this + 14) = v62;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

LABEL_61:
      *(a1 + 64) |= 8u;
      v28 = *(a1 + 24);
      if (!v28)
      {
        operator new();
      }

      v63 = 0;
      v29 = *(this + 1);
      if (v29 >= *(this + 2) || *v29 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
        {
          return 0;
        }
      }

      else
      {
        v63 = *v29;
        *(this + 1) = v29 + 1;
      }

      v30 = *(this + 14);
      v31 = *(this + 15);
      *(this + 14) = v30 + 1;
      if (v30 >= v31)
      {
        return 0;
      }

      v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v63);
      if (!sub_10011114C(v28, this, v33) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
      v34 = *(this + 14);
      v25 = __OFSUB__(v34, 1);
      v35 = v34 - 1;
      if (v35 < 0 == v25)
      {
        *(this + 14) = v35;
      }

      v36 = *(this + 1);
      if (v36 < *(this + 2) && *v36 == 42)
      {
        *(this + 1) = v36 + 1;
LABEL_75:
        *(a1 + 64) |= 0x10u;
        v37 = *(a1 + 32);
        if (!v37)
        {
          operator new();
        }

        v63 = 0;
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
          {
            return 0;
          }
        }

        else
        {
          v63 = *v38;
          *(this + 1) = v38 + 1;
        }

        v39 = *(this + 14);
        v40 = *(this + 15);
        *(this + 14) = v39 + 1;
        if (v39 >= v40)
        {
          return 0;
        }

        v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v63);
        if (!sub_1001136A4(v37, this, v42) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
        v43 = *(this + 14);
        v25 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v25)
        {
          *(this + 14) = v44;
        }

        v45 = *(this + 1);
        if (v45 < *(this + 2) && *v45 == 50)
        {
          *(this + 1) = v45 + 1;
LABEL_89:
          *(a1 + 64) |= 0x20u;
          v46 = *(a1 + 40);
          if (!v46)
          {
            operator new();
          }

          v63 = 0;
          v47 = *(this + 1);
          if (v47 >= *(this + 2) || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v63))
            {
              return 0;
            }
          }

          else
          {
            v63 = *v47;
            *(this + 1) = v47 + 1;
          }

          v48 = *(this + 14);
          v49 = *(this + 15);
          *(this + 14) = v48 + 1;
          if (v48 >= v49)
          {
            return 0;
          }

          v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v63);
          if (!sub_100114618(v46, this, v51) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
          v52 = *(this + 14);
          v25 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v25)
          {
            *(this + 14) = v53;
          }

          v54 = *(this + 1);
          if (v54 < *(this + 2) && *v54 == 58)
          {
            *(this + 1) = v54 + 1;
            goto LABEL_103;
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_75;
    }

LABEL_30:
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

uint64_t sub_100115F18(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_10010FB34();
    v7 = *(qword_1002DBEF8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v5 + 24);
  if (!v8)
  {
    sub_10010FB34();
    v8 = *(qword_1002DBEF8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
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

LABEL_17:
  v9 = *(v5 + 32);
  if (!v9)
  {
    sub_10010FB34();
    v9 = *(qword_1002DBEF8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_20:
  v10 = *(v5 + 40);
  if (!v10)
  {
    sub_10010FB34();
    v10 = *(qword_1002DBEF8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  if ((*(v5 + 64) & 0x40) != 0)
  {
LABEL_23:
    v11 = *(v5 + 48);
    if (!v11)
    {
      sub_10010FB34();
      v11 = *(qword_1002DBEF8 + 48);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  }

  return result;
}

uint64_t sub_100116078(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (*(a1 + 64))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 64);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 64) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 56);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      sub_10010FB34();
      v7 = *(qword_1002DBEF8 + 16);
    }

    v8 = sub_1001100E0(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    }

    else
    {
      v10 = 1;
    }

    v4 = (v4 + v9 + v10 + 1);
    v3 = *(a1 + 64);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    sub_10010FB34();
    v11 = *(qword_1002DBEF8 + 24);
  }

  v12 = sub_100111C24(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v4 = (v4 + v13 + v14 + 1);
  v3 = *(a1 + 64);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_29:
  v15 = *(a1 + 32);
  if (!v15)
  {
    sub_10010FB34();
    v15 = *(qword_1002DBEF8 + 32);
  }

  v16 = sub_1001140DC(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
  v3 = *(a1 + 64);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

LABEL_35:
  v19 = *(a1 + 40);
  if (!v19)
  {
    sub_10010FB34();
    v19 = *(qword_1002DBEF8 + 40);
  }

  v20 = sub_100114834(v19, a2);
  v21 = v20;
  if (v20 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
  }

  else
  {
    v22 = 1;
  }

  v4 = (v4 + v21 + v22 + 1);
  if ((*(a1 + 64) & 0x40) != 0)
  {
LABEL_41:
    v23 = *(a1 + 48);
    if (!v23)
    {
      sub_10010FB34();
      v23 = *(qword_1002DBEF8 + 48);
    }

    v24 = sub_100114F5C(v23, a2);
    v26 = v24;
    if (v24 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, v25);
    }

    else
    {
      v27 = 1;
    }

    v4 = (v4 + v26 + v27 + 1);
  }

LABEL_47:
  *(a1 + 60) = v4;
  return v4;
}

void sub_1001163D0(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000690B8(va);
  operator delete();
}

void *sub_1001163F0(void *a1)
{
  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_100116434(void *a1)
{
  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

uint64_t sub_10011650C(uint64_t result, uint64_t a2)
{
  *a2 = off_1002B2D88;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL sub_10011653C(uint64_t a1, uint64_t a2, int a3, wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  v6 = *(*a2 + 12);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (TagFallback = *v8, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          continue;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v8 + 1;
        if (!TagFallback)
        {
          continue;
        }
      }

      v10 = wis::reflect::decodeTag(TagFallback, v7);
      v11 = HIDWORD(v10);
      if (v10 > 1u)
      {
        if (v10 == 2)
        {
          v22[0] = 0;
          v13 = *(this + 1);
          if (v13 >= *(this + 2) || (v14 = *v13, v14 < 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22))
            {
              continue;
            }

            v14 = v22[0];
          }

          else
          {
            v22[0] = *v13;
            *(this + 1) = v13 + 1;
          }

          v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v14);
          ++*(this + 14);
          v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, v16);
          v17 = *(this + 14);
          v18 = __OFSUB__(v17, 1);
          v19 = v17 - 1;
          if (v19 < 0 == v18)
          {
            *(this + 14) = v19;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
        }

        else
        {
          if (v10 != 5)
          {
            continue;
          }

          v22[0] = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v22))
          {
            continue;
          }
        }
      }

      else if (v10)
      {
        if (v10 != 1)
        {
          continue;
        }

        *v22 = 0;
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v22))
        {
          continue;
        }
      }

      else
      {
        *v22 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v22))
          {
            continue;
          }
        }

        else
        {
          *(this + 1) = v12 + 1;
        }
      }

      if (v6 == v11)
      {
        v20 = 1;
        return *(a1 + 8) == v20;
      }
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  v20 = 0;
  return *(a1 + 8) == v20;
}

uint64_t sub_10011671C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100116804(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    operator new();
  }

  *&result = sub_10000A910(v2, a2).n128_u64[0];
  return result;
}

double sub_1001168AC(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    *&result = sub_10000A910(*(*a1 + 8), v1).n128_u64[0];
  }

  return result;
}

uint64_t *sub_1001168C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 0uLL;
    v6 = 0;
    sub_10000A964(&v5, *result, result[1], (result[1] - *result) >> 2);
    v7 = a2;
    *(a3 + 24) = 0;
    operator new();
  }

  *(a3 + 24) = 0;
  return result;
}

void sub_100116968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100116984@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 0uLL;
    v6 = 0;
    sub_10000A964(&v5, *result, result[1], (result[1] - *result) >> 2);
    v7 = a2;
    *(a3 + 24) = 0;
    operator new();
  }

  *(a3 + 24) = 0;
  return result;
}

void sub_100116A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100116A4C(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = 0uLL;
  v6 = 0;
  sub_10000A964(&v5, *a1, a1[1], (a1[1] - *a1) >> 2);
  v7 = a3;
  *(a2 + 24) = 0;
  operator new();
}

void sub_100116AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100116B10@<X0>(uint64_t *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = 0uLL;
    v5 = 0;
    sub_10000A964(&v4, *result, result[1], (result[1] - *result) >> 2);
    *(a3 + 24) = 0;
    operator new();
  }

  *(a3 + 24) = 0;
  return result;
}

void sub_100116BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100116BC8@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 - 458752) > 0xFFFEFFFF)
  {
    v5 = 0uLL;
    v6 = 0;
    sub_10000A964(&v5, *result, result[1], (result[1] - *result) >> 2);
    v7 = a2;
    *(a3 + 24) = 0;
    operator new();
  }

  *(a3 + 24) = 0;
  return result;
}

void sub_100116C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100116C9C(void *a1)
{
  *a1 = off_1002B2E08;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100116CEC(void *a1)
{
  *a1 = off_1002B2E08;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100116DEC(uint64_t *a1, void *a2)
{
  *a2 = off_1002B2E08;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  result = sub_10000A964((a2 + 1), a1[1], a1[2], (a1[2] - a1[1]) >> 2);
  a2[4] = a1[4];
  return result;
}

void sub_100116E50(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_100116E68(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t sub_100116EAC(uint64_t a1, void *a2)
{
  v25 = 0uLL;
  v26 = 0;
  v3 = a2[1];
  if (!v3)
  {
    v3 = *(*a2 + 8);
  }

  v4 = *v3;
  v5 = v3[1] - *v3;
  v16[0] = 0;
  v16[1] = v4;
  v16[2] = v4 + v5;
  v17 = v5;
  v18 = 0;
  v19 = 0;
  v21 = xmmword_100240B70;
  v20 = v5;
  v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v23 = 0;
  v24 = 0;
  v6 = *(a1 + 32);
  sub_1001178F0(v11, (a2 + 2), &v25, a1 + 8);
  v15 = v6;
  v10[0] = 0;
  v10[1] = 0;
  v10[2] = 0xFFFFFFFFLL;
  if (sub_1001170B8(v16, v10, v11))
  {
    v7 = v14[64];
    sub_1000447B8(v14);
    if (v13)
    {
      sub_100008350(v13);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v12);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v11);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v16);
    if (v7)
    {
      sub_100116804(a2, &v25);
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000447B8(v14);
    if (v13)
    {
      sub_100008350(v13);
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v12);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v11);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v16);
  }

  v8 = 0;
LABEL_12:
  if (v25.n128_u64[0])
  {
    v25.n128_u64[1] = v25.n128_u64[0];
    operator delete(v25.n128_u64[0]);
  }

  return v8;
}

void sub_100117010(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011702C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100044768(va);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream((v5 - 136));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x100116FE4);
  }

  JUMPOUT(0x100117014);
}

uint64_t sub_10011706C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001170B8(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (*(this + 36))
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback, a2);
  v9 = v8;
  v51 = HIDWORD(v8);
  *__p = *a2;
  v48 = *(a2 + 16);
  MetricFileMetadataHelper::getSubfieldType();
  *__p = v49;
  v48 = v50;
  BuiltinType = MetadataHelper::getBuiltinType();
  v46 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType();
  v12 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      __p[0] = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p) & 1) == 0)
          {
            if (!v51 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

LABEL_12:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, __p) & 1) == 0)
            {
              if (!v51 && (*(this + 36) & 1) != 0)
              {
                goto LABEL_47;
              }

              goto LABEL_12;
            }
          }

          else
          {
            __p[0] = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_77;
      }

      if (v9 != 2)
      {
        if (v9 == 5)
        {
          v43[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43) & 1) == 0)
          {
            if (!v51 && (*(this + 36) & 1) != 0)
            {
              goto LABEL_47;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parsing failed in metric");
            goto LABEL_113;
          }

          __p[0] = v43[0];
        }

LABEL_77:
        v33 = sub_100117978(BuiltinType, __p[0], a3, a2, &v51, &v46);
LABEL_78:
        LOBYTE(BuiltinType) = v33;
        return BuiltinType & 1;
      }

      if (!v51 && (*(this + 36) & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Parsing failed in metric");
      goto LABEL_113;
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_45;
      }

      v41[0] = 0;
      v23 = *(this + 1);
      if (v23 >= *(this + 2) || *v23 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41[0] = *v23;
        *(this + 1) = v23 + 1;
      }

      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        *v43 = *a2;
        v44 = *(a2 + 16);
        LOBYTE(BuiltinType) = sub_100118374(a3, __p);
      }

      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v35 = __p[0];
      goto LABEL_103;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        *v43 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v48 = *(a2 + 16);
        v28 = v51;
        v29 = a3;
        v30 = 1;
      }

      else
      {
        *v43 = 0;
        if (!sub_1000448B4(this, v43))
        {
          goto LABEL_45;
        }

        v27 = *v43;
        *__p = *a2;
        v48 = *(a2 + 16);
        v28 = v51;
        v29 = a3;
        v30 = 0;
      }

LABEL_108:
      v33 = sub_100118684(v29, v27, __p, v28, v30);
      goto LABEL_78;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_45;
      }

      v43[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v43))
      {
        goto LABEL_45;
      }

      v27 = v43[0];
      *__p = *a2;
      v48 = *(a2 + 16);
      v28 = v51;
      v29 = a3;
      v30 = 5;
      goto LABEL_108;
    }

    v41[0] = 0;
    if ((sub_1000448E0(this, v41) & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_100045794(__p, v41[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
LABEL_101:
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_104;
      }

      __p[1] = __p[0];
LABEL_103:
      operator delete(v35);
LABEL_104:
      if ((String & 1) == 0)
      {
        goto LABEL_45;
      }

      return BuiltinType & 1;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001187A8(a3, __p[0], __p[1] - __p[0]);
LABEL_100:
    LOBYTE(BuiltinType) = v39;
    goto LABEL_101;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_45;
      }

      UnpackedType = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || (v25 = *v24, (v25 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &UnpackedType))
        {
          goto LABEL_45;
        }

        v25 = UnpackedType;
      }

      else
      {
        UnpackedType = *v24;
        *(this + 1) = v24 + 1;
      }

      *v41 = this;
      v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
      ++*(this + 14);
      *v40 = this;
      *__p = *a2;
      v48 = *(a2 + 16);
      *v43 = v49;
      v44 = v50;
      LOBYTE(BuiltinType) = sub_10011846C(a3, this, __p, v51, v43);
      sub_10011A240(v40);
      v36 = *(this + 14);
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v38 < 0 == v37)
      {
        *(this + 14) = v38;
      }

      sub_100045760(v41);
      return BuiltinType & 1;
    }

    v41[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v41))
      {
        goto LABEL_45;
      }

      v32 = v41[0];
    }

    else
    {
      v41[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    sub_100045794(__p, v32);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __p[0], v41[0]);
    if ((String & 1) == 0)
    {
      goto LABEL_101;
    }

    *v43 = *a2;
    v44 = *(a2 + 16);
    v39 = sub_1001183F8(a3, __p);
    goto LABEL_100;
  }

  v40[0] = 0;
  v14 = *(this + 1);
  if (v14 >= *(this + 2) || *v14 < 0)
  {
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v40) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v40[0] = *v14;
    *(this + 1) = v14 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType();
  WireTypeForType = wis::reflect::getWireTypeForType();
  *v43 = this;
  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40[0]);
  v43[2] = v16;
  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  while (1)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if (v17 < 1)
    {
      break;
    }

    *v41 = 0;
    sub_10004490C(__p, v41);
    if (WireTypeForType > 1)
    {
      if (WireTypeForType == 5)
      {
        v41[0] = 0;
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v41);
        *(__p[1] - 1) = v41[0];
        goto LABEL_39;
      }

      if (WireTypeForType == 2)
      {
        goto LABEL_42;
      }
    }

    else if (WireTypeForType)
    {
      if (WireTypeForType == 1)
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, __p[1] - 1);
LABEL_39:
        if ((LittleEndian32Fallback & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = (__p[1] - 8);
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
      {
        LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v19);
        goto LABEL_39;
      }

      *v19 = v21;
      *(this + 1) = v20 + 1;
    }
  }

  LOBYTE(BuiltinType) = sub_100117C38(v12, __p, a3, a2, &v51, &UnpackedType);
LABEL_42:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
  if (v17 > 0)
  {
LABEL_45:
    if (!v51 && (*(this + 36) & 1) != 0)
    {
LABEL_47:
      LOBYTE(BuiltinType) = 1;
      return BuiltinType & 1;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
LABEL_113:
  }

  return BuiltinType & 1;
}

void sub_100117844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001178F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (sub_10000BA58(a1, a3) + 2);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v6, a1);
  *(a1 + 48) = v6;
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a4;
  return a1;
}

void sub_100117954(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100117978(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  switch(a1)
  {
    case 1:
    case 15:
      wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
      v17 = *a5;
      v18 = *a6;
      v19 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v20 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v19, v20);
      v15 = *(a3 + 48);
      v16 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::encode();
      goto LABEL_7;
    case 2:
    case 16:
      wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
      v11 = *a5;
      v12 = *a6;
      v13 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a3 + 48);
      v16 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::encode();
LABEL_7:
      v21 = v16;
      goto LABEL_14;
    case 3:
    case 11:
    case 17:
    case 25:
      v31 = a2;
      goto LABEL_10;
    case 4:
    case 10:
    case 18:
    case 24:
      v29 = *a4;
      v30 = *(a4 + 16);
      v31 = a2;
      return sub_100118818(a3, &v31, &v29, *a5, *a6);
    case 5:
    case 19:
      v31 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
LABEL_10:
      v29 = *a4;
      v30 = *(a4 + 16);
      return sub_100118A18(a3, &v31, &v29, *a5, *a6);
    case 6:
    case 20:
      LODWORD(v31) = a2;
      goto LABEL_12;
    case 7:
    case 9:
    case 21:
    case 23:
      LODWORD(v31) = a2;
      v29 = *a4;
      v30 = *(a4 + 16);
      return sub_100118918(a3, &v31, &v29, *a5, *a6);
    case 8:
    case 22:
      LODWORD(v31) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
LABEL_12:
      v29 = *a4;
      v30 = *(a4 + 16);
      result = sub_100118B08(a3, &v31, &v29, *a5, *a6);
      break;
    case 12:
    case 26:
      v22 = a2 != 0;
      v23 = *a5;
      v24 = *a6;
      v25 = *(a3 + 48);
      wis::reflect::getWireTypeForType();
      v26 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v25, v26);
      v15 = *(a3 + 48);
      v21 = sub_100047554(v24, v22);
LABEL_14:
      WireTypeForType = wis::reflect::getWireTypeForType();
      switch(WireTypeForType)
      {
        case 5:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v15, v21);
          break;
        case 1:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v15, v21);
          break;
        case 0:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, v21);
          break;
      }

      result = 1;
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
  }

  return result;
}

uint64_t sub_100117C38(int a1, uint64_t **a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  if (a1 <= 20)
  {
    if (a1 <= 17)
    {
      switch(a1)
      {
        case 15:
          sub_100044BD0(a2, __p);
          v24 = *a6;
          v25 = *(*(a3 + 176) + 8);
          if (*(a3 + 168) == ((v25 - **(a3 + 176)) >> 2) - 1 && *(v25 - 4) == *a5)
          {
            v26 = __p[0];
            if (__p[0] == __p[1])
            {
              goto LABEL_45;
            }
          }

          v27 = *(a3 + 48);
          v28 = wis::reflect::encodeTag();
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v27, v28);
          sub_1000481D0(*(a3 + 48), v24, __p);
          break;
        case 16:
          sub_100044E44(a2, __p);
          v36 = *a6;
          v37 = *(*(a3 + 176) + 8);
          if (*(a3 + 168) == ((v37 - **(a3 + 176)) >> 2) - 1 && *(v37 - 4) == *a5)
          {
            v26 = __p[0];
            if (__p[0] == __p[1])
            {
LABEL_45:
              if (v26)
              {
                __p[1] = v26;
                operator delete(v26);
              }

              return 1;
            }
          }

          v38 = *(a3 + 48);
          v39 = wis::reflect::encodeTag();
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v38, v39);
          sub_100049584(*(a3 + 48), v36, __p);
          break;
        case 17:
          sub_100045004(a2, v48);
          *__p = *a4;
          v50 = *(a4 + 16);
          v10 = *a6;
          v11 = sub_100118E7C(a3, v48, __p, *a5);
          if (v11 != 3)
          {
            if (!v11)
            {
              goto LABEL_56;
            }

            goto LABEL_57;
          }

          goto LABEL_58;
        default:
LABEL_66:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
      }

      v26 = __p[0];
      goto LABEL_45;
    }

    if (a1 != 18)
    {
      if (a1 == 19)
      {
        sub_10004513C(a2, v48);
        *__p = *a4;
        v50 = *(a4 + 16);
        v10 = *a6;
        v41 = sub_100118E7C(a3, v48, __p, *a5);
        if (v41 != 3)
        {
          if (!v41)
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        goto LABEL_58;
      }

      sub_100044D0C(a2, v48);
      *__p = *a4;
      v50 = *(a4 + 16);
      v16 = *a6;
      v17 = sub_100118F24(a3, v48, __p, *a5);
      if (v17 == 3)
      {
        goto LABEL_58;
      }

      if (v17)
      {
        goto LABEL_57;
      }

LABEL_19:
      v18 = *(a3 + 48);
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      sub_10004B5E8(*(a3 + 48), v16, v48);
      goto LABEL_57;
    }

    sub_100044B50(a2, v48);
    *__p = *a4;
    v50 = *(a4 + 16);
    v20 = *a6;
    v30 = sub_100118CF8(a3, v48, __p, *a5);
    if (v30 == 3)
    {
      goto LABEL_58;
    }

    if (v30)
    {
      goto LABEL_57;
    }

LABEL_25:
    v22 = *(a3 + 48);
    v23 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v22, v23);
    sub_100047808(*(a3 + 48), v20, v48);
    goto LABEL_57;
  }

  if (a1 <= 23)
  {
    if (a1 == 21)
    {
      sub_100044D0C(a2, v48);
      *__p = *a4;
      v50 = *(a4 + 16);
      v12 = *a6;
      v29 = sub_100118D6C(a3, v48, __p, *a5);
      if (v29 == 3)
      {
        goto LABEL_58;
      }

      if (v29)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (a1 == 22)
      {
        sub_100045278(a2, v48);
        *__p = *a4;
        v50 = *(a4 + 16);
        v16 = *a6;
        v40 = sub_100118F24(a3, v48, __p, *a5);
        if (v40 == 3)
        {
          goto LABEL_58;
        }

        if (v40)
        {
          goto LABEL_57;
        }

        goto LABEL_19;
      }

      sub_100044D0C(a2, v48);
      *__p = *a4;
      v50 = *(a4 + 16);
      v12 = *a6;
      v13 = sub_100118D6C(a3, v48, __p, *a5);
      if (v13 == 3)
      {
        goto LABEL_58;
      }

      if (v13)
      {
        goto LABEL_57;
      }
    }

    v14 = *(a3 + 48);
    v15 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v14, v15);
    sub_100048BBC(*(a3 + 48), v12, v48);
    goto LABEL_57;
  }

  if (a1 == 26)
  {
    sub_100044F80(a2, v48);
    *__p = *a4;
    v50 = *(a4 + 16);
    v31 = *a6;
    v32 = sub_100118DE0(a3, v48, __p, *a5);
    if (v32 == 3)
    {
      v35 = 0;
    }

    else
    {
      if (!v32)
      {
        v33 = *(a3 + 48);
        v34 = wis::reflect::encodeTag();
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v34);
        sub_100049F70(*(a3 + 48), v31, v48);
      }

      v35 = 1;
    }

    v45 = v48[0];
    if (v48[0])
    {
      goto LABEL_61;
    }

    return v35;
  }

  if (a1 != 25)
  {
    if (a1 != 24)
    {
      goto LABEL_66;
    }

    sub_100044B50(a2, v48);
    *__p = *a4;
    v50 = *(a4 + 16);
    v20 = *a6;
    v21 = sub_100118CF8(a3, v48, __p, *a5);
    if (v21 == 3)
    {
      goto LABEL_58;
    }

    if (v21)
    {
      goto LABEL_57;
    }

    goto LABEL_25;
  }

  sub_100045004(a2, v48);
  *__p = *a4;
  v50 = *(a4 + 16);
  v10 = *a6;
  v42 = sub_100118E7C(a3, v48, __p, *a5);
  if (v42 != 3)
  {
    if (!v42)
    {
LABEL_56:
      v43 = *(a3 + 48);
      v44 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v43, v44);
      sub_10004AC20(*(a3 + 48), v10, v48);
    }

LABEL_57:
    v35 = 1;
    goto LABEL_59;
  }

LABEL_58:
  v35 = 0;
LABEL_59:
  v45 = v48[0];
  if (v48[0])
  {
    v48[1] = v48[0];
LABEL_61:
    operator delete(v45);
  }

  return v35;
}

uint64_t sub_100118374(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  v5 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v4, v5);
  v6 = *(a1 + 48);
  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v6, v8);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v6, a2, v8);
  return 1;
}

uint64_t sub_1001183F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v4, v5);
  v6 = *(a1 + 48);
  v7 = *a2;
  v8 = *(a2 + 8) - *a2;
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v6, v8);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v6, v7, v8);
  return 1;
}

BOOL sub_10011846C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, int a4, __int128 *a5)
{
  v7 = *(a1 + 168);
  v8 = **(a1 + 176);
  if (v7 < (*(*(a1 + 176) + 8) - v8) >> 2 && *(v8 + 4 * v7) == a4)
  {
    *(a1 + 168) = v7 + 1;
    __p = 0;
    v27 = 0;
    v28 = 0;
    sub_10000BA58(v25, &__p);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v24, v25);
    v10 = *(a1 + 48);
    *(a1 + 48) = v24;
    while (1)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
      v12 = v11 < 1;
      if (v11 < 1)
      {
        break;
      }

      v22 = *a5;
      v23 = *(a5 + 2);
      if ((sub_100118FD0(this, &v22, a1) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    --*(a1 + 168);
    *(a1 + 48) = v10;
LABEL_12:
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v24);
    wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v25);
    if (v11 <= 0)
    {
      v18 = *(a1 + 48);
      v19 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v18, v19);
      v20 = *(a1 + 48);
      v21 = __p;
      LODWORD(v18) = v27 - __p;
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v20, v27 - __p);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v20, v21, v18);
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v24[0] = 0;
    LODWORD(__p) = 0;
    wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(this, v24, &__p);
    LODWORD(__p) = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this);
    if ((__p & 0x80000000) == 0)
    {
      v13 = *(a1 + 48);
      v14 = wis::reflect::encodeTag();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
      v15 = *(a1 + 48);
      v16 = v24[0];
      LODWORD(v13) = __p;
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v15, __p);
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v15, v16, v13);
    }

    return 1;
  }

  return v12;
}

void sub_100118640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100118684(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5 != 5)
  {
    if (a5 > 1)
    {
      return 1;
    }

    v7 = *(a1 + 48);
    v8 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v7, v8);
    v9 = *(a1 + 48);
    WireTypeForType = wis::reflect::getWireTypeForType();
    if (WireTypeForType != 5)
    {
      if (WireTypeForType != 1)
      {
        if (!WireTypeForType)
        {
          v11 = v9;
          v12 = a2;
LABEL_11:
          wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
          return 1;
        }

        return 1;
      }

      v16 = v9;
      v12 = a2;
LABEL_15:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v16, v12);
      return 1;
    }

LABEL_12:
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v9, a2);
    return 1;
  }

  v13 = *(a1 + 48);
  v14 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v14);
  v9 = *(a1 + 48);
  v15 = wis::reflect::getWireTypeForType();
  if (v15 == 5)
  {
    goto LABEL_12;
  }

  v12 = a2;
  if (v15 == 1)
  {
    v16 = v9;
    goto LABEL_15;
  }

  if (!v15)
  {
    v11 = v9;
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_1001187A8(uint64_t a1, const void *a2, unint64_t a3)
{
  v6 = *(a1 + 48);
  v7 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v6, v7);
  v8 = *(a1 + 48);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v8, a3);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(v8, a2, a3);
  return 1;
}

uint64_t sub_100118818(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v8 - **(a1 + 176)) >> 2) - 1 && *(v8 - 4) == a4)
  {
    *(a1 + 160) = 1;
    *a2 = *a2 / *(a1 + 184) * *(a1 + 184);
  }

  v9 = *(a1 + 48);
  wis::reflect::getWireTypeForType();
  v10 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
  v11 = *(a1 + 48);
  v12 = sub_100047378(a5, *a2);
  WireTypeForType = wis::reflect::getWireTypeForType();
  switch(WireTypeForType)
  {
    case 5:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
      break;
    case 1:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
      break;
    case 0:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
      break;
  }

  return 1;
}

uint64_t sub_100118918(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(*(a1 + 176) + 8);
  if (*(a1 + 168) == ((v8 - **(a1 + 176)) >> 2) - 1 && *(v8 - 4) == a4)
  {
    *(a1 + 160) = 1;
    *a2 = *a2 / *(a1 + 184) * *(a1 + 184);
  }

  v9 = *(a1 + 48);
  wis::reflect::getWireTypeForType();
  v10 = wis::reflect::encodeTag();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
  v11 = *(a1 + 48);
  v12 = sub_100047468(a5, *a2);
  WireTypeForType = wis::reflect::getWireTypeForType();
  switch(WireTypeForType)
  {
    case 5:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
      break;
    case 1:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
      break;
    case 0:
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
      break;
  }

  return 1;
}

uint64_t sub_100118A18(uint64_t a1, unint64_t *a2, __int128 *a3, int a4, int a5)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v8 = sub_100118BF8(a1, a2, &v15, a4);
  if (v8 == 3)
  {
    return 0;
  }

  if (!v8)
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_10004762C(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}

uint64_t sub_100118B08(uint64_t a1, unsigned int *a2, __int128 *a3, int a4, int a5)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v8 = sub_100118C78(a1, a2, &v15, a4);
  if (v8 == 3)
  {
    return 0;
  }

  if (!v8)
  {
    v9 = *(a1 + 48);
    wis::reflect::getWireTypeForType();
    v10 = wis::reflect::encodeTag();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v9, v10);
    v11 = *(a1 + 48);
    v12 = sub_10004771C(a5, *a2);
    WireTypeForType = wis::reflect::getWireTypeForType();
    switch(WireTypeForType)
    {
      case 5:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v11, v12);
        break;
      case 1:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(v11, v12);
        break;
      case 0:
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(v11, v12);
        break;
    }
  }

  return 1;
}