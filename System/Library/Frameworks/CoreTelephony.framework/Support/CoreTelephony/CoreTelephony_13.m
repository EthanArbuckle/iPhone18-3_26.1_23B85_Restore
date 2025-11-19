void awd::metrics::MetricCCCarrierBundleChange::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  LOBYTE(v5) = *(lpsrc + 64);
  if (!v5)
  {
    return;
  }

  v6 = MEMORY[0x277D82C30];
  if (lpsrc[8])
  {
    v8 = lpsrc[1];
    *(this + 16) |= 1u;
    v9 = this[1];
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v5 = *(lpsrc + 16);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((lpsrc[8] & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = lpsrc[2];
  *(this + 16) |= 2u;
  v11 = this[2];
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v5 = *(lpsrc + 16);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_21:
  v12 = lpsrc[3];
  *(this + 16) |= 4u;
  v13 = this[3];
  if (v13 == v6)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v5 = *(lpsrc + 16);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_24:
  v14 = lpsrc[4];
  *(this + 16) |= 8u;
  v15 = this[4];
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v5 = *(lpsrc + 16);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_30:
    v18 = *(lpsrc + 56);
    *(this + 16) |= 0x20u;
    *(this + 56) = v18;
    v5 = *(lpsrc + 16);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_27:
  v16 = lpsrc[5];
  *(this + 16) |= 0x10u;
  v17 = this[5];
  if (v17 == v6)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v5 = *(lpsrc + 16);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_31:
  v19 = *(lpsrc + 57);
  *(this + 16) |= 0x40u;
  *(this + 57) = v19;
  if ((lpsrc[8] & 0x80) != 0)
  {
LABEL_13:
    v7 = lpsrc[6];
    *(this + 16) |= 0x80u;
    this[6] = v7;
  }
}

void sub_2373A274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricCCCarrierBundleUpdateOTADeclined::~MetricCCCarrierBundleUpdateOTADeclined(awd::metrics::MetricCCCarrierBundleUpdateOTADeclined *this)
{
  *this = &unk_284A5DFA8;
  awd::metrics::MetricCCCarrierBundleChange::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5DFA8;
  awd::metrics::MetricCCCarrierBundleChange::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MetricCCCarrierBundleUpdateOTADeclined::Clear(uint64_t this)
{
  if (*(this + 60))
  {
    v1 = MEMORY[0x277D82C30];
    if (*(this + 60))
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(this + 60) & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
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

    if ((*(this + 60) & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v1)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 60) & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v1)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(this + 60) & 0x10) != 0)
    {
      v6 = *(this + 40);
      if (v6 != v1)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    *(this + 48) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::MetricCCCarrierBundleUpdateOTADeclined::MergePartialFromCodedStream(awd::metrics::MetricCCCarrierBundleUpdateOTADeclined *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_40;
            }
          }

          else if (v7 == 5)
          {
            if (v8 == 2)
            {
              goto LABEL_50;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_56;
          }

          goto LABEL_47;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_47;
        }

        *(this + 15) |= 1u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_28;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_47;
      }

LABEL_28:
      *(this + 15) |= 2u;
      if (*(this + 2) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v13 = *(a2 + 1);
      if (v13 < *(a2 + 2) && *v13 == 26)
      {
        *(a2 + 1) = v13 + 1;
LABEL_34:
        *(this + 15) |= 4u;
        if (*(this + 3) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 34)
        {
          *(a2 + 1) = v14 + 1;
LABEL_40:
          *(this + 15) |= 8u;
          if (*(this + 4) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 42)
          {
            *(a2 + 1) = v15 + 1;
LABEL_50:
            *(this + 15) |= 0x10u;
            if (*(this + 5) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v16 < v9 && *v16 == 48)
            {
              v10 = v16 + 1;
              *(a2 + 1) = v10;
LABEL_56:
              if (v10 >= v9 || (v17 = *v10, v17 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v17;
                v18 = v10 + 1;
                *(a2 + 1) = v18;
              }

              *(this + 15) |= 0x20u;
              if (v18 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_34;
    }

LABEL_47:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::MetricCCCarrierBundleUpdateOTADeclined::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 60);
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

  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 60);
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
  v9 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v11 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 60) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v10 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 60);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v12 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, v12, a2, a4);
}

uint64_t awd::metrics::MetricCCCarrierBundleUpdateOTADeclined::ByteSize(awd::metrics::MetricCCCarrierBundleUpdateOTADeclined *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_29;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 1);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 15);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v9 + v5);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v2 = *(this + 15);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 = (v3 + v16 + v12 + 1);
  }

LABEL_24:
  if ((v2 & 4) != 0)
  {
    v18 = *(this + 3);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v2 = *(this + 15);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v3 = (v3 + v23 + v19 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_26:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_27;
      }

LABEL_48:
      v30 = *(this + 5);
      v31 = *(v30 + 23);
      v32 = v31;
      v33 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v34 = *(v30 + 23);
      }

      else
      {
        v34 = v33;
      }

      if (v34 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
        v31 = *(v30 + 23);
        v33 = *(v30 + 8);
        v2 = *(this + 15);
        v32 = *(v30 + 23);
      }

      else
      {
        v35 = 1;
      }

      if (v32 < 0)
      {
        v31 = v33;
      }

      v3 = (v3 + v35 + v31 + 1);
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_26;
  }

  v24 = *(this + 4);
  v25 = *(v24 + 23);
  v26 = v25;
  v27 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v28 = *(v24 + 23);
  }

  else
  {
    v28 = v27;
  }

  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    v25 = *(v24 + 23);
    v27 = *(v24 + 8);
    v2 = *(this + 15);
    v26 = *(v24 + 23);
  }

  else
  {
    v29 = 1;
  }

  if (v26 < 0)
  {
    v25 = v27;
  }

  v3 = (v3 + v29 + v25 + 1);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_48;
  }

LABEL_27:
  if ((v2 & 0x20) != 0)
  {
LABEL_28:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  }

LABEL_29:
  *(this + 14) = v3;
  return v3;
}

void awd::metrics::MetricCCCarrierBundleUpdateOTADeclined::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  LOBYTE(v5) = *(lpsrc + 60);
  if (!v5)
  {
    return;
  }

  v6 = MEMORY[0x277D82C30];
  if (*(lpsrc + 60))
  {
    v8 = lpsrc[1];
    *(this + 15) |= 1u;
    v9 = this[1];
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v5 = *(lpsrc + 15);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((*(lpsrc + 60) & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = lpsrc[2];
  *(this + 15) |= 2u;
  v11 = this[2];
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v5 = *(lpsrc + 15);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    v14 = lpsrc[4];
    *(this + 15) |= 8u;
    v15 = this[4];
    if (v15 == v6)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v5 = *(lpsrc + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_10:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_19:
  v12 = lpsrc[3];
  *(this + 15) |= 4u;
  v13 = this[3];
  if (v13 == v6)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v5 = *(lpsrc + 15);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_25:
  v16 = lpsrc[5];
  *(this + 15) |= 0x10u;
  v17 = this[5];
  if (v17 == v6)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  if ((*(lpsrc + 15) & 0x20) != 0)
  {
LABEL_11:
    v7 = lpsrc[6];
    *(this + 15) |= 0x20u;
    this[6] = v7;
  }
}

void sub_2373A32DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterPDPContextStateChangeV4::~CommCenterPDPContextStateChangeV4(awd::metrics::CommCenterPDPContextStateChangeV4 *this)
{
  *this = &unk_284A5E020;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E020;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterPDPContextStateChangeV4::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 24);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPDPContextStateChangeV4::MergePartialFromCodedStream(awd::metrics::CommCenterPDPContextStateChangeV4 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
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

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_22;
          }

          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v15 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v15 >= v11 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 10) |= 1u;
        if (v17 < v11 && *v17 == 16)
        {
          v12 = v17 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v11 || (v18 = *v12, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v18;
            v19 = v12 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 10) |= 2u;
          if (v19 < v11 && *v19 == 24)
          {
            v13 = v19 + 1;
            *(a2 + 1) = v13;
LABEL_41:
            if (v13 >= v11 || (v20 = *v13, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v20;
              v21 = v13 + 1;
              *(a2 + 1) = v21;
            }

            v14 = *(this + 10) | 4;
            *(this + 10) = v14;
            if (v21 < v11 && *v21 == 34)
            {
              *(a2 + 1) = v21 + 1;
              goto LABEL_49;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_41;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      v14 = *(this + 10);
LABEL_49:
      *(this + 10) = v14 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v22 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v22 < v9 && *v22 == 40)
      {
        v10 = v22 + 1;
        *(a2 + 1) = v10;
LABEL_55:
        if (v10 >= v9 || (v23 = *v10, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v23;
          v24 = v10 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 10) |= 0x10u;
        if (v24 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_55;
    }

LABEL_22:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterPDPContextStateChangeV4::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterPDPContextStateChangeV4::ByteSize(awd::metrics::CommCenterPDPContextStateChangeV4 *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if (*(this + 40))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 3);
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
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
    v2 = *(this + 10);
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

  v3 = (v3 + v13 + v9 + 1);
  if ((v2 & 0x10) != 0)
  {
LABEL_28:
    v14 = *(this + 8);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v3 = (v15 + v3);
  }

LABEL_32:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::CommCenterPDPContextStateChangeV4::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(lpsrc + 40);
  if (!v5)
  {
    return;
  }

  if (lpsrc[5])
  {
    v7 = lpsrc[1];
    *(this + 10) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 10);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = *(lpsrc + 5);
      *(this + 10) |= 4u;
      *(this + 5) = v9;
      v5 = *(lpsrc + 10);
      if ((v5 & 8) == 0)
      {
LABEL_9:
        if ((v5 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((lpsrc[5] & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 4);
  *(this + 10) |= 2u;
  *(this + 4) = v8;
  v5 = *(lpsrc + 10);
  if ((v5 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v5 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = lpsrc[3];
  *(this + 10) |= 8u;
  v11 = this[3];
  if (v11 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((lpsrc[5] & 0x10) != 0)
  {
LABEL_10:
    v6 = *(lpsrc + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v6;
  }
}

void sub_2373A3B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterPDPContextStateChangeV6::~CommCenterPDPContextStateChangeV6(awd::metrics::CommCenterPDPContextStateChangeV6 *this)
{
  *this = &unk_284A5E098;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E098;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterPDPContextStateChangeV6::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 24);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPDPContextStateChangeV6::MergePartialFromCodedStream(awd::metrics::CommCenterPDPContextStateChangeV6 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
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

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_22;
          }

          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v15 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v15 >= v11 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 10) |= 1u;
        if (v17 < v11 && *v17 == 16)
        {
          v12 = v17 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v11 || (v18 = *v12, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v18;
            v19 = v12 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 10) |= 2u;
          if (v19 < v11 && *v19 == 24)
          {
            v13 = v19 + 1;
            *(a2 + 1) = v13;
LABEL_41:
            if (v13 >= v11 || (v20 = *v13, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v20;
              v21 = v13 + 1;
              *(a2 + 1) = v21;
            }

            v14 = *(this + 10) | 4;
            *(this + 10) = v14;
            if (v21 < v11 && *v21 == 34)
            {
              *(a2 + 1) = v21 + 1;
              goto LABEL_49;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_41;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      v14 = *(this + 10);
LABEL_49:
      *(this + 10) = v14 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v22 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v22 < v9 && *v22 == 40)
      {
        v10 = v22 + 1;
        *(a2 + 1) = v10;
LABEL_55:
        if (v10 >= v9 || (v23 = *v10, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v23;
          v24 = v10 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 10) |= 0x10u;
        if (v24 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_55;
    }

LABEL_22:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterPDPContextStateChangeV6::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterPDPContextStateChangeV6::ByteSize(awd::metrics::CommCenterPDPContextStateChangeV6 *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if (*(this + 40))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 3);
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
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
    v2 = *(this + 10);
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

  v3 = (v3 + v13 + v9 + 1);
  if ((v2 & 0x10) != 0)
  {
LABEL_28:
    v14 = *(this + 8);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v3 = (v15 + v3);
  }

LABEL_32:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::CommCenterPDPContextStateChangeV6::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(lpsrc + 40);
  if (!v5)
  {
    return;
  }

  if (lpsrc[5])
  {
    v7 = lpsrc[1];
    *(this + 10) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 10);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = *(lpsrc + 5);
      *(this + 10) |= 4u;
      *(this + 5) = v9;
      v5 = *(lpsrc + 10);
      if ((v5 & 8) == 0)
      {
LABEL_9:
        if ((v5 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((lpsrc[5] & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 4);
  *(this + 10) |= 2u;
  *(this + 4) = v8;
  v5 = *(lpsrc + 10);
  if ((v5 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v5 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = lpsrc[3];
  *(this + 10) |= 8u;
  v11 = this[3];
  if (v11 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((lpsrc[5] & 0x10) != 0)
  {
LABEL_10:
    v6 = *(lpsrc + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v6;
  }
}

void sub_2373A4384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterPDPContextPreActivateState::~CommCenterPDPContextPreActivateState(awd::metrics::CommCenterPDPContextPreActivateState *this)
{
  *this = &unk_284A5E110;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E110;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterPDPContextPreActivateState::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPDPContextPreActivateState::MergePartialFromCodedStream(awd::metrics::CommCenterPDPContextPreActivateState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 7) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 7) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 7) |= 4u;
          if (v16 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterPDPContextPreActivateState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterPDPContextPreActivateState::ByteSize(awd::metrics::CommCenterPDPContextPreActivateState *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 28))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 7);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
  }

LABEL_16:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::CommCenterPDPContextPreActivateState::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(lpsrc + 28);
  if (v5)
  {
    if (*(lpsrc + 28))
    {
      v7 = lpsrc[1];
      *(this + 7) |= 1u;
      this[1] = v7;
      v5 = *(lpsrc + 7);
      if ((v5 & 2) == 0)
      {
LABEL_7:
        if ((v5 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 28) & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = *(lpsrc + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v8;
    if ((*(lpsrc + 7) & 4) != 0)
    {
LABEL_8:
      v6 = *(lpsrc + 5);
      *(this + 7) |= 4u;
      *(this + 5) = v6;
    }
  }
}

void sub_2373A48E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::CommCenterPDPContextHandover::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 40);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 48);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::CommCenterPDPContextHandover::~CommCenterPDPContextHandover(awd::metrics::CommCenterPDPContextHandover *this)
{
  *this = &unk_284A5E188;
  awd::metrics::CommCenterPDPContextHandover::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E188;
  awd::metrics::CommCenterPDPContextHandover::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterPDPContextHandover::Clear(uint64_t this)
{
  v1 = *(this + 84);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x277D82C30])
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

    *(this + 36) = 0;
    *(this + 28) = 0;
    if ((*(this + 84) & 0x80) != 0)
    {
      v4 = *(this + 40);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }
  }

  v5 = *(this + 84);
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      v6 = *(this + 48);
      if (v6 != MEMORY[0x277D82C30])
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    *(this + 38) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    *(this + 56) = 0;
  }

  *(this + 84) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPDPContextHandover::MergePartialFromCodedStream(awd::metrics::CommCenterPDPContextHandover *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_44:
            *(this + 21) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v22 = v11 + 1;
              *(a2 + 1) = v22;
              goto LABEL_47;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_44;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_47:
        if (v22 >= v8 || (v27 = *v22, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v22 + 1;
          *(a2 + 1) = v28;
        }

        v19 = *(this + 21) | 2;
        *(this + 21) = v19;
        if (v28 >= v8 || *v28 != 26)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_55:
        *(this + 21) = v19 | 4;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v29 >= v15 || *v29 != 32)
        {
          continue;
        }

        v20 = v29 + 1;
        *(a2 + 1) = v20;
LABEL_61:
        if (v20 >= v15 || (v30 = *v20, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v30;
          v31 = v20 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 21) |= 8u;
        if (v31 >= v15 || *v31 != 40)
        {
          continue;
        }

        v16 = v31 + 1;
        *(a2 + 1) = v16;
LABEL_69:
        v55 = 0;
        if (v16 >= v15 || (v32 = *v16, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55);
          if (!result)
          {
            return result;
          }

          v32 = v55;
          v33 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v33 = v16 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 36) = v32 != 0;
        *(this + 21) |= 0x10u;
        if (v33 >= v15 || *v33 != 48)
        {
          continue;
        }

        v23 = v33 + 1;
        *(a2 + 1) = v23;
LABEL_77:
        if (v23 >= v15 || (v34 = *v23, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v34;
          v35 = v23 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 21) |= 0x20u;
        if (v35 >= v15 || *v35 != 56)
        {
          continue;
        }

        v25 = v35 + 1;
        *(a2 + 1) = v25;
LABEL_85:
        v54 = 0;
        if (v25 >= v15 || (v36 = *v25, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
          if (!result)
          {
            return result;
          }

          v36 = v54;
          v37 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v37 = v25 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 37) = v36 != 0;
        v21 = *(this + 21) | 0x40;
        *(this + 21) = v21;
        if (v37 >= v15 || *v37 != 66)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_93:
        *(this + 21) = v21 | 0x80;
        if (*(this + 5) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 74)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_99:
        *(this + 21) |= 0x100u;
        if (*(this + 6) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v39 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v39 >= v12 || *v39 != 80)
        {
          continue;
        }

        v18 = v39 + 1;
        *(a2 + 1) = v18;
LABEL_105:
        if (v18 >= v12 || (v40 = *v18, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v40;
          v41 = v18 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 21) |= 0x200u;
        if (v41 >= v12 || *v41 != 88)
        {
          continue;
        }

        v26 = v41 + 1;
        *(a2 + 1) = v26;
LABEL_113:
        if (v26 >= v12 || (v42 = *v26, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v42;
          v43 = v26 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 21) |= 0x400u;
        if (v43 >= v12 || *v43 != 96)
        {
          continue;
        }

        v14 = v43 + 1;
        *(a2 + 1) = v14;
LABEL_121:
        if (v14 >= v12 || (v44 = *v14, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v44;
          v45 = v14 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 21) |= 0x800u;
        if (v45 >= v12 || *v45 != 104)
        {
          continue;
        }

        v17 = v45 + 1;
        *(a2 + 1) = v17;
LABEL_129:
        if (v17 >= v12 || (v46 = *v17, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v46;
          v47 = v17 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 21) |= 0x1000u;
        if (v47 >= v12 || *v47 != 112)
        {
          continue;
        }

        v24 = v47 + 1;
        *(a2 + 1) = v24;
LABEL_137:
        v53 = 0;
        if (v24 >= v12 || (v48 = *v24, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v48 = v53;
          v49 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v49 = v24 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 38) = v48 != 0;
        *(this + 21) |= 0x2000u;
        if (v49 >= v12 || *v49 != 120)
        {
          continue;
        }

        v13 = v49 + 1;
        *(a2 + 1) = v13;
LABEL_145:
        if (v13 >= v12 || (v50 = *v13, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v50;
          v51 = v13 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 21) |= 0x4000u;
        if (v51 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_39;
        }

        v19 = *(this + 21);
        goto LABEL_55;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v20 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v23 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v25 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_85;
      case 8u:
        if (v7 != 2)
        {
          goto LABEL_39;
        }

        v21 = *(this + 21);
        goto LABEL_93;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_39;
        }

        goto LABEL_99;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_105;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_113;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_121;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_129;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_137;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_145;
      default:
LABEL_39:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::CommCenterPDPContextHandover::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 37), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 38), a2, a4);
    if ((*(v5 + 84) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 72), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return this;
  }

LABEL_31:
  v10 = *(v5 + 76);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v10, a2, a4);
}

uint64_t awd::metrics::CommCenterPDPContextHandover::ByteSize(awd::metrics::CommCenterPDPContextHandover *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 21);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 21);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v2 = *(this + 21);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v3 += v12 + v8 + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if ((v2 & 8) != 0)
  {
LABEL_23:
    v13 = *(this + 7);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 21);
    }

    else
    {
      v14 = 2;
    }

    v3 += v14;
  }

LABEL_27:
  v15 = ((v2 >> 3) & 2) + v3;
  if ((v2 & 0x20) != 0)
  {
    v16 = *(this + 8);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 21);
    }

    else
    {
      v17 = 2;
    }

    v15 += v17;
  }

  v4 = ((v2 >> 5) & 2) + v15;
  if ((v2 & 0x80) != 0)
  {
    v18 = *(this + 5);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v2 = *(this + 21);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v4 = (v4 + v23 + v19 + 1);
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_76;
  }

  if ((v2 & 0x100) != 0)
  {
    v24 = *(this + 6);
    v25 = *(v24 + 23);
    v26 = v25;
    v27 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v28 = *(v24 + 23);
    }

    else
    {
      v28 = v27;
    }

    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
      v25 = *(v24 + 23);
      v27 = *(v24 + 8);
      v2 = *(this + 21);
      v26 = *(v24 + 23);
    }

    else
    {
      v29 = 1;
    }

    if (v26 < 0)
    {
      v25 = v27;
    }

    LODWORD(v4) = v4 + v29 + v25 + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v30 = *(this + 14);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 21);
  }

  else
  {
    v31 = 2;
  }

  LODWORD(v4) = v31 + v4;
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_66;
  }

LABEL_62:
  v32 = *(this + 15);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v2 = *(this + 21);
  }

  else
  {
    v33 = 2;
  }

  LODWORD(v4) = v33 + v4;
  if ((v2 & 0x800) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

LABEL_66:
  LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
  v2 = *(this + 21);
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v34 = *(this + 18);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 1;
    v2 = *(this + 21);
  }

  else
  {
    v35 = 2;
  }

  LODWORD(v4) = v35 + v4;
LABEL_71:
  v4 = ((v2 >> 12) & 2) + v4;
  if ((v2 & 0x4000) != 0)
  {
    v36 = *(this + 19);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 1;
    }

    else
    {
      v37 = 2;
    }

    v4 = (v37 + v4);
  }

LABEL_76:
  *(this + 20) = v4;
  return v4;
}

void awd::metrics::CommCenterPDPContextHandover::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v5 = *(lpsrc + 21);
  if (v5)
  {
    if (v5)
    {
      v6 = lpsrc[1];
      *(this + 21) |= 1u;
      this[1] = v6;
      v5 = *(lpsrc + 21);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(lpsrc + 6);
      *(this + 21) |= 2u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 21);
    }

    v8 = MEMORY[0x277D82C30];
    if ((v5 & 4) != 0)
    {
      v9 = lpsrc[2];
      *(this + 21) |= 4u;
      v10 = this[2];
      if (v10 == v8)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      v5 = *(lpsrc + 21);
      if ((v5 & 8) == 0)
      {
LABEL_11:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    v11 = *(lpsrc + 7);
    *(this + 21) |= 8u;
    *(this + 7) = v11;
    v5 = *(lpsrc + 21);
    if ((v5 & 0x10) == 0)
    {
LABEL_12:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

LABEL_20:
    v12 = *(lpsrc + 36);
    *(this + 21) |= 0x10u;
    *(this + 36) = v12;
    v5 = *(lpsrc + 21);
    if ((v5 & 0x20) == 0)
    {
LABEL_13:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }

LABEL_21:
    v13 = *(lpsrc + 8);
    *(this + 21) |= 0x20u;
    *(this + 8) = v13;
    v5 = *(lpsrc + 21);
    if ((v5 & 0x40) == 0)
    {
LABEL_14:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

LABEL_22:
    v14 = *(lpsrc + 37);
    *(this + 21) |= 0x40u;
    *(this + 37) = v14;
    v5 = *(lpsrc + 21);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_26;
    }

LABEL_23:
    v15 = lpsrc[5];
    *(this + 21) |= 0x80u;
    v16 = this[5];
    if (v16 == v8)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v5 = *(lpsrc + 21);
  }

LABEL_26:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    v18 = lpsrc[6];
    *(this + 21) |= 0x100u;
    v19 = this[6];
    if (v19 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v5 = *(lpsrc + 21);
    if ((v5 & 0x200) == 0)
    {
LABEL_29:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_29;
  }

  v20 = *(lpsrc + 14);
  *(this + 21) |= 0x200u;
  *(this + 14) = v20;
  v5 = *(lpsrc + 21);
  if ((v5 & 0x400) == 0)
  {
LABEL_30:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = *(lpsrc + 15);
  *(this + 21) |= 0x400u;
  *(this + 15) = v21;
  v5 = *(lpsrc + 21);
  if ((v5 & 0x800) == 0)
  {
LABEL_31:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_42;
  }

LABEL_41:
  v22 = lpsrc[8];
  *(this + 21) |= 0x800u;
  this[8] = v22;
  v5 = *(lpsrc + 21);
  if ((v5 & 0x1000) == 0)
  {
LABEL_32:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_43;
  }

LABEL_42:
  v23 = *(lpsrc + 18);
  *(this + 21) |= 0x1000u;
  *(this + 18) = v23;
  v5 = *(lpsrc + 21);
  if ((v5 & 0x2000) == 0)
  {
LABEL_33:
    if ((v5 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_34;
  }

LABEL_43:
  v24 = *(lpsrc + 38);
  *(this + 21) |= 0x2000u;
  *(this + 38) = v24;
  if ((*(lpsrc + 21) & 0x4000) != 0)
  {
LABEL_34:
    v17 = *(lpsrc + 19);
    *(this + 21) |= 0x4000u;
    *(this + 19) = v17;
  }
}

void sub_2373A5B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::CommCenterMobikeResult::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 40);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::CommCenterMobikeResult::~CommCenterMobikeResult(awd::metrics::CommCenterMobikeResult *this)
{
  *this = &unk_284A5E200;
  awd::metrics::CommCenterMobikeResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E200;
  awd::metrics::CommCenterMobikeResult::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterMobikeResult::Clear(uint64_t this)
{
  v1 = *(this + 68);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x277D82C30])
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

    *(this + 28) = 0;
    *(this + 32) = 0;
    *(this + 48) = 0;
    if ((*(this + 68) & 0x40) != 0)
    {
      v4 = *(this + 40);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(this + 36) = 0;
    v1 = *(this + 68);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 60) = 0;
    *(this + 49) = 0;
  }

  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterMobikeResult::MergePartialFromCodedStream(awd::metrics::CommCenterMobikeResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_43:
            *(this + 17) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v21 = v11 + 1;
              *(a2 + 1) = v21;
              goto LABEL_46;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_43;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_46:
        if (v21 >= v8 || (v27 = *v21, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v27;
          v28 = v21 + 1;
          *(a2 + 1) = v28;
        }

        v18 = *(this + 17) | 2;
        *(this + 17) = v18;
        if (v28 >= v8 || *v28 != 26)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_54:
        *(this + 17) = v18 | 4;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v29 >= v14 || *v29 != 32)
        {
          continue;
        }

        v19 = v29 + 1;
        *(a2 + 1) = v19;
LABEL_60:
        if (v19 >= v14 || (v30 = *v19, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v30;
          v31 = v19 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 17) |= 8u;
        if (v31 >= v14 || *v31 != 40)
        {
          continue;
        }

        v15 = v31 + 1;
        *(a2 + 1) = v15;
LABEL_68:
        if (v15 >= v14 || (v32 = *v15, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v32;
          v33 = v15 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 17) |= 0x10u;
        if (v33 >= v14 || *v33 != 48)
        {
          continue;
        }

        v22 = v33 + 1;
        *(a2 + 1) = v22;
LABEL_76:
        v52 = 0;
        if (v22 >= v14 || (v34 = *v22, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v34 = v52;
          v35 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v35 = v22 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 48) = v34 != 0;
        v24 = *(this + 17) | 0x20;
        *(this + 17) = v24;
        if (v35 >= v14 || *v35 != 58)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_84:
        *(this + 17) = v24 | 0x40;
        if (*(this + 5) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v36 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v36 >= v12 || *v36 != 64)
        {
          continue;
        }

        v20 = v36 + 1;
        *(a2 + 1) = v20;
LABEL_90:
        if (v20 >= v12 || (v37 = *v20, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v37;
          v38 = v20 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 17) |= 0x80u;
        if (v38 >= v12 || *v38 != 72)
        {
          continue;
        }

        v26 = v38 + 1;
        *(a2 + 1) = v26;
LABEL_98:
        v52 = 0;
        if (v26 >= v12 || (v39 = *v26, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v39 = v52;
          v40 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v40 = v26 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 49) = v39 != 0;
        *(this + 17) |= 0x100u;
        if (v40 >= v12 || *v40 != 80)
        {
          continue;
        }

        v17 = v40 + 1;
        *(a2 + 1) = v17;
LABEL_106:
        if (v17 >= v12 || (v41 = *v17, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v41;
          v42 = v17 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 17) |= 0x200u;
        if (v42 >= v12 || *v42 != 88)
        {
          continue;
        }

        v25 = v42 + 1;
        *(a2 + 1) = v25;
LABEL_114:
        v52 = 0;
        if (v25 >= v12 || (v43 = *v25, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v43 = v52;
          v44 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v44 = v25 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 50) = v43 != 0;
        *(this + 17) |= 0x400u;
        if (v44 >= v12 || *v44 != 96)
        {
          continue;
        }

        v13 = v44 + 1;
        *(a2 + 1) = v13;
LABEL_122:
        v52 = 0;
        if (v13 >= v12 || (v45 = *v13, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v45 = v52;
          v46 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v46 = v13 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 51) = v45 != 0;
        *(this + 17) |= 0x800u;
        if (v46 >= v12 || *v46 != 104)
        {
          continue;
        }

        v16 = v46 + 1;
        *(a2 + 1) = v16;
LABEL_130:
        v52 = 0;
        if (v16 >= v12 || (v47 = *v16, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v47 = v52;
          v48 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v48 = v16 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 56) = v47 != 0;
        *(this + 17) |= 0x1000u;
        if (v48 >= v12 || *v48 != 112)
        {
          continue;
        }

        v23 = v48 + 1;
        *(a2 + 1) = v23;
LABEL_138:
        if (v23 >= v12 || (v49 = *v23, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v49;
          v50 = v23 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 17) |= 0x2000u;
        if (v50 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_37;
        }

        v18 = *(this + 17);
        goto LABEL_54;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v19 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_60;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_68;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_76;
      case 7u:
        if (v7 != 2)
        {
          goto LABEL_37;
        }

        v24 = *(this + 17);
        goto LABEL_84;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_90;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_98;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_106;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_114;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_122;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_130;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_138;
      default:
LABEL_37:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::CommCenterMobikeResult::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 49), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 50), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 56), a2, a4);
    if ((*(v5 + 68) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 51), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v9 = *(v5 + 60);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v9, a2, a4);
}

uint64_t awd::metrics::CommCenterMobikeResult::ByteSize(awd::metrics::CommCenterMobikeResult *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 17);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_11:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_24:
    v13 = *(this + 7);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v14 = 2;
    }

    v3 += v14;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v7 = *(this + 2);
  v8 = *(v7 + 23);
  v9 = v8;
  v10 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    v8 = *(v7 + 23);
    v10 = *(v7 + 8);
    v2 = *(this + 17);
    v9 = *(v7 + 23);
  }

  else
  {
    v12 = 1;
  }

  if (v9 < 0)
  {
    v8 = v10;
  }

  v3 += v12 + v8 + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  if ((v2 & 0x10) != 0)
  {
LABEL_28:
    v15 = *(this + 8);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v16 = 2;
    }

    v3 += v16;
  }

LABEL_32:
  v4 = ((v2 >> 4) & 2) + v3;
  if ((v2 & 0x40) != 0)
  {
    v17 = *(this + 5);
    v18 = *(v17 + 23);
    v19 = v18;
    v20 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = v20;
    }

    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      v18 = *(v17 + 23);
      v20 = *(v17 + 8);
      v2 = *(this + 17);
      v19 = *(v17 + 23);
    }

    else
    {
      v22 = 1;
    }

    if (v19 < 0)
    {
      v18 = v20;
    }

    v4 = (v4 + v22 + v18 + 1);
  }

  if ((v2 & 0x80) != 0)
  {
    v23 = *(this + 9);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v24 = 2;
    }

    v4 = (v24 + v4);
  }

LABEL_47:
  if ((v2 & 0xFF00) != 0)
  {
    v25 = ((v2 >> 7) & 2) + v4;
    if ((v2 & 0x200) != 0)
    {
      v26 = *(this + 13);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
        v2 = *(this + 17);
      }

      else
      {
        v27 = 2;
      }

      v25 += v27;
    }

    v4 = ((v2 >> 9) & 2) + ((v2 >> 10) & 2) + v25 + ((v2 >> 11) & 2);
    if ((v2 & 0x2000) != 0)
    {
      v28 = *(this + 15);
      if (v28 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
      }

      else
      {
        v29 = 2;
      }

      v4 = (v29 + v4);
    }
  }

  *(this + 16) = v4;
  return v4;
}

void awd::metrics::CommCenterMobikeResult::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v5 = *(lpsrc + 17);
  if (!v5)
  {
    goto LABEL_16;
  }

  if (v5)
  {
    v6 = lpsrc[1];
    *(this + 17) |= 1u;
    this[1] = v6;
    v5 = *(lpsrc + 17);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(lpsrc + 6);
    *(this + 17) |= 2u;
    *(this + 6) = v7;
    v5 = *(lpsrc + 17);
  }

  v8 = MEMORY[0x277D82C30];
  if ((v5 & 4) != 0)
  {
    v11 = lpsrc[2];
    *(this + 17) |= 4u;
    v12 = this[2];
    if (v12 == v8)
    {
      operator new();
    }

    std::string::operator=(v12, v11);
    v5 = *(lpsrc + 17);
    if ((v5 & 8) == 0)
    {
LABEL_11:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_11;
  }

  v13 = *(lpsrc + 7);
  *(this + 17) |= 8u;
  *(this + 7) = v13;
  v5 = *(lpsrc + 17);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_30:
    v15 = *(lpsrc + 48);
    *(this + 17) |= 0x20u;
    *(this + 48) = v15;
    v5 = *(lpsrc + 17);
    if ((v5 & 0x40) == 0)
    {
LABEL_14:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_29:
  v14 = *(lpsrc + 8);
  *(this + 17) |= 0x10u;
  *(this + 8) = v14;
  v5 = *(lpsrc + 17);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_31:
  v16 = lpsrc[5];
  *(this + 17) |= 0x40u;
  v17 = this[5];
  if (v17 == v8)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v5 = *(lpsrc + 17);
  if ((v5 & 0x80) != 0)
  {
LABEL_15:
    v9 = *(lpsrc + 9);
    *(this + 17) |= 0x80u;
    *(this + 9) = v9;
    v5 = *(lpsrc + 17);
  }

LABEL_16:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    v18 = *(lpsrc + 49);
    *(this + 17) |= 0x100u;
    *(this + 49) = v18;
    v5 = *(lpsrc + 17);
    if ((v5 & 0x200) == 0)
    {
LABEL_19:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v19 = *(lpsrc + 13);
  *(this + 17) |= 0x200u;
  *(this + 13) = v19;
  v5 = *(lpsrc + 17);
  if ((v5 & 0x400) == 0)
  {
LABEL_20:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v20 = *(lpsrc + 50);
  *(this + 17) |= 0x400u;
  *(this + 50) = v20;
  v5 = *(lpsrc + 17);
  if ((v5 & 0x800) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v21 = *(lpsrc + 51);
  *(this + 17) |= 0x800u;
  *(this + 51) = v21;
  v5 = *(lpsrc + 17);
  if ((v5 & 0x1000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_39:
  v22 = *(lpsrc + 56);
  *(this + 17) |= 0x1000u;
  *(this + 56) = v22;
  if ((*(lpsrc + 17) & 0x2000) != 0)
  {
LABEL_23:
    v10 = *(lpsrc + 15);
    *(this + 17) |= 0x2000u;
    *(this + 15) = v10;
  }
}

void sub_2373A6C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterShortDeadPeerDetectionReport::~CommCenterShortDeadPeerDetectionReport(awd::metrics::CommCenterShortDeadPeerDetectionReport *this)
{
  *this = &unk_284A5E278;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E278;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterShortDeadPeerDetectionReport::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterShortDeadPeerDetectionReport::MergePartialFromCodedStream(awd::metrics::CommCenterShortDeadPeerDetectionReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 8) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v14 = *v8, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v7 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            if (v9 >= v7 || (v18 = *v9, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v18;
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 8) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterShortDeadPeerDetectionReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterShortDeadPeerDetectionReport::ByteSize(awd::metrics::CommCenterShortDeadPeerDetectionReport *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (*(this + 32))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v6 = *(this + 5);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_18:
    v8 = *(this + 6);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_22:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::CommCenterShortDeadPeerDetectionReport::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(lpsrc + 32);
  if (!v5)
  {
    return;
  }

  if ((lpsrc[4] & 1) == 0)
  {
    if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    v8 = *(lpsrc + 4);
    *(this + 8) |= 2u;
    *(this + 4) = v8;
    v5 = *(lpsrc + 8);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v7 = lpsrc[1];
  *(this + 8) |= 1u;
  this[1] = v7;
  v5 = *(lpsrc + 8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v9 = *(lpsrc + 5);
  *(this + 8) |= 4u;
  *(this + 5) = v9;
  if ((lpsrc[4] & 8) != 0)
  {
LABEL_9:
    v6 = *(lpsrc + 6);
    *(this + 8) |= 8u;
    *(this + 6) = v6;
  }
}

void sub_2373A728C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterIPv6APNFallback::~CommCenterIPv6APNFallback(awd::metrics::CommCenterIPv6APNFallback *this)
{
  *this = &unk_284A5E2F0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E2F0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterIPv6APNFallback::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(this + 24);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterIPv6APNFallback::MergePartialFromCodedStream(awd::metrics::CommCenterIPv6APNFallback *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_52;
            }

            goto LABEL_27;
          }

          if (v7 != 5)
          {
            if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_66;
            }

            goto LABEL_27;
          }

          if (v8 != 2)
          {
            goto LABEL_27;
          }

          v18 = *(this + 10);
LABEL_60:
          *(this + 10) = v18 | 0x10;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v25 < v11 && *v25 == 48)
          {
            v12 = v25 + 1;
            *(a2 + 1) = v12;
LABEL_66:
            if (v12 >= v11 || (v26 = *v12, v26 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v27 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v26;
              v27 = v12 + 1;
              *(a2 + 1) = v27;
            }

            *(this + 10) |= 0x20u;
            if (v27 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v13 >= v9 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 10) |= 1u;
        if (v15 < v9 && *v15 == 16)
        {
          v17 = v15 + 1;
          *(a2 + 1) = v17;
          goto LABEL_36;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_27;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_36:
      v30 = 0;
      if (v17 >= v9 || (v19 = *v17, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
        if (!result)
        {
          return result;
        }

        v19 = v30;
        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v20 = v17 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 16) = v19 != 0;
      *(this + 10) |= 2u;
      if (v20 < v9 && *v20 == 24)
      {
        v10 = v20 + 1;
        *(a2 + 1) = v10;
LABEL_44:
        v29 = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v21 = v29;
          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 17) = v21 != 0;
        *(this + 10) |= 4u;
        if (v22 < v9 && *v22 == 32)
        {
          v16 = v22 + 1;
          *(a2 + 1) = v16;
LABEL_52:
          if (v16 >= v9 || (v23 = *v16, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v24 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v23;
            v24 = v16 + 1;
            *(a2 + 1) = v24;
          }

          v18 = *(this + 10) | 8;
          *(this + 10) = v18;
          if (v24 < v9 && *v24 == 42)
          {
            *(a2 + 1) = v24 + 1;
            goto LABEL_60;
          }
        }
      }
    }

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_44;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterIPv6APNFallback::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 17), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterIPv6APNFallback::ByteSize(awd::metrics::CommCenterIPv6APNFallback *this)
{
  v2 = *(this + 10);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2 & 2) + v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v5 = *(this + 5);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(this + 3);
  v8 = *(v7 + 23);
  v9 = v8;
  v10 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    v8 = *(v7 + 23);
    v10 = *(v7 + 8);
    v2 = *(this + 10);
    v9 = *(v7 + 23);
  }

  else
  {
    v12 = 1;
  }

  if (v9 < 0)
  {
    v8 = v10;
  }

  v4 = (v4 + v12 + v8 + 1);
  if ((v2 & 0x20) != 0)
  {
LABEL_23:
    v13 = *(this + 8);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
  }

LABEL_27:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::CommCenterIPv6APNFallback::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(lpsrc + 40);
  if (!v5)
  {
    return;
  }

  if (lpsrc[5])
  {
    v7 = lpsrc[1];
    *(this + 10) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 10);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((lpsrc[5] & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 16);
  *(this + 10) |= 2u;
  *(this + 16) = v8;
  v5 = *(lpsrc + 10);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v10 = *(lpsrc + 5);
    *(this + 10) |= 8u;
    *(this + 5) = v10;
    v5 = *(lpsrc + 10);
    if ((v5 & 0x10) == 0)
    {
LABEL_10:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_15:
  v9 = *(lpsrc + 17);
  *(this + 10) |= 4u;
  *(this + 17) = v9;
  v5 = *(lpsrc + 10);
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_17:
  v11 = lpsrc[3];
  *(this + 10) |= 0x10u;
  v12 = this[3];
  if (v12 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((lpsrc[5] & 0x20) != 0)
  {
LABEL_11:
    v6 = *(lpsrc + 8);
    *(this + 10) |= 0x20u;
    *(this + 8) = v6;
  }
}

void sub_2373A7BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterIPSetupFailure::~CommCenterIPSetupFailure(awd::metrics::CommCenterIPSetupFailure *this)
{
  *this = &unk_284A5E368;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E368;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterIPSetupFailure::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 28) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterIPSetupFailure::MergePartialFromCodedStream(awd::metrics::CommCenterIPSetupFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 9) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v15;
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 9) |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      v24 = 0;
      if (v11 >= v7 || (v19 = *v11, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
        if (!result)
        {
          return result;
        }

        v19 = v24;
        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 24) = v19 != 0;
      *(this + 9) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v21;
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 9) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterIPSetupFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 24), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterIPSetupFailure::ByteSize(awd::metrics::CommCenterIPSetupFailure *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(this + 4);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 9);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
  }

  v4 = ((v2 >> 2) & 2) + v3;
  if ((v2 & 0x10) != 0)
  {
    v9 = *(this + 7);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_21:
  *(this + 8) = v4;
  return v4;
}

void awd::metrics::CommCenterIPSetupFailure::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(lpsrc + 36);
  if (!v5)
  {
    return;
  }

  if (*(lpsrc + 36))
  {
    v7 = lpsrc[1];
    *(this + 9) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 9);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = *(lpsrc + 5);
      *(this + 9) |= 4u;
      *(this + 5) = v9;
      v5 = *(lpsrc + 9);
      if ((v5 & 8) == 0)
      {
LABEL_9:
        if ((v5 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*(lpsrc + 36) & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 4);
  *(this + 9) |= 2u;
  *(this + 4) = v8;
  v5 = *(lpsrc + 9);
  if ((v5 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v5 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = *(lpsrc + 24);
  *(this + 9) |= 8u;
  *(this + 24) = v10;
  if ((*(lpsrc + 9) & 0x10) != 0)
  {
LABEL_10:
    v6 = *(lpsrc + 7);
    *(this + 9) |= 0x10u;
    *(this + 7) = v6;
  }
}

void sub_2373A82CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterIPv6SetupStatic::~CommCenterIPv6SetupStatic(awd::metrics::CommCenterIPv6SetupStatic *this)
{
  *this = &unk_284A5E3E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E3E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterIPv6SetupStatic::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterIPv6SetupStatic::MergePartialFromCodedStream(awd::metrics::CommCenterIPv6SetupStatic *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 7) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 7) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 7) |= 4u;
          if (v16 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterIPv6SetupStatic::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterIPv6SetupStatic::ByteSize(awd::metrics::CommCenterIPv6SetupStatic *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 28))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 7);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
  }

LABEL_16:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::CommCenterIPv6SetupStatic::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(lpsrc + 28);
  if (v5)
  {
    if (*(lpsrc + 28))
    {
      v7 = lpsrc[1];
      *(this + 7) |= 1u;
      this[1] = v7;
      v5 = *(lpsrc + 7);
      if ((v5 & 2) == 0)
      {
LABEL_7:
        if ((v5 & 4) == 0)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 28) & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = *(lpsrc + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v8;
    if ((*(lpsrc + 7) & 4) != 0)
    {
LABEL_8:
      v6 = *(lpsrc + 5);
      *(this + 7) |= 4u;
      *(this + 5) = v6;
    }
  }
}

void sub_2373A8828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_CCMetricsPDPContext_pb_cc(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((_MergedGlobals_9 & 1) == 0)
  {
    _MergedGlobals_9 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreTelephony/CommCenter/Source/AWDMetrics/cpp/CCMetricsPDPContext.pb.cc", a4);
    operator new();
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsCP_2eproto(awd::metrics *this)
{
  if (qword_2810D8768)
  {
    (*(*qword_2810D8768 + 8))(qword_2810D8768);
  }

  if (qword_2810D8770)
  {
    (*(*qword_2810D8770 + 8))(qword_2810D8770);
  }

  if (qword_2810D8778)
  {
    (*(*qword_2810D8778 + 8))(qword_2810D8778);
  }

  if (qword_2810D8780)
  {
    (*(*qword_2810D8780 + 8))(qword_2810D8780);
  }

  if (qword_2810D8788)
  {
    (*(*qword_2810D8788 + 8))(qword_2810D8788);
  }

  if (qword_2810D8790)
  {
    (*(*qword_2810D8790 + 8))(qword_2810D8790);
  }

  if (qword_2810D8798)
  {
    (*(*qword_2810D8798 + 8))(qword_2810D8798);
  }

  if (qword_2810D87A0)
  {
    (*(*qword_2810D87A0 + 8))(qword_2810D87A0);
  }

  if (qword_2810D87A8)
  {
    (*(*qword_2810D87A8 + 8))(qword_2810D87A8);
  }

  if (qword_2810D87B0)
  {
    (*(*qword_2810D87B0 + 8))(qword_2810D87B0);
  }

  if (qword_2810D87B8)
  {
    (*(*qword_2810D87B8 + 8))(qword_2810D87B8);
  }

  if (qword_2810D87C0)
  {
    (*(*qword_2810D87C0 + 8))(qword_2810D87C0);
  }

  if (qword_2810D87C8)
  {
    (*(*qword_2810D87C8 + 8))(qword_2810D87C8);
  }

  if (qword_2810D87D0)
  {
    (*(*qword_2810D87D0 + 8))(qword_2810D87D0);
  }

  if (qword_2810D87D8)
  {
    (*(*qword_2810D87D8 + 8))(qword_2810D87D8);
  }

  if (qword_2810D87E0)
  {
    (*(*qword_2810D87E0 + 8))(qword_2810D87E0);
  }

  if (qword_2810D87E8)
  {
    (*(*qword_2810D87E8 + 8))(qword_2810D87E8);
  }

  if (qword_2810D87F0)
  {
    (*(*qword_2810D87F0 + 8))(qword_2810D87F0);
  }

  if (qword_2810D87F8)
  {
    (*(*qword_2810D87F8 + 8))(qword_2810D87F8);
  }

  if (qword_2810D8800)
  {
    (*(*qword_2810D8800 + 8))(qword_2810D8800);
  }

  if (qword_2810D8808)
  {
    (*(*qword_2810D8808 + 8))(qword_2810D8808);
  }

  if (qword_2810D8810)
  {
    (*(*qword_2810D8810 + 8))(qword_2810D8810);
  }

  if (qword_2810D8818)
  {
    (*(*qword_2810D8818 + 8))(qword_2810D8818);
  }

  if (qword_2810D8820)
  {
    (*(*qword_2810D8820 + 8))(qword_2810D8820);
  }

  if (qword_2810D8828)
  {
    (*(*qword_2810D8828 + 8))(qword_2810D8828);
  }

  if (qword_2810D8830)
  {
    (*(*qword_2810D8830 + 8))(qword_2810D8830);
  }

  if (qword_2810D8838)
  {
    (*(*qword_2810D8838 + 8))(qword_2810D8838);
  }

  if (qword_2810D8840)
  {
    (*(*qword_2810D8840 + 8))(qword_2810D8840);
  }

  if (qword_2810D8848)
  {
    (*(*qword_2810D8848 + 8))(qword_2810D8848);
  }

  result = qword_2810D8850;
  if (qword_2810D8850)
  {
    v2 = *(*qword_2810D8850 + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_CCMetricsCP_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((_MergedGlobals_10 & 1) == 0)
  {
    _MergedGlobals_10 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreTelephony/CommCenter/Source/AWDMetrics/cpp/CCMetricsCP.pb.cc", a4);
    operator new();
  }
}

uint64_t awd::metrics::CommCenterCellularProfile::CommCenterCellularProfile(uint64_t this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_284A5E620;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = v1;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseEvent::CommCenterCellularPlanPurchaseEvent(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 20) = 0;
  *this = &unk_284A5E698;
  *(this + 8) = 0;
  *(this + 15) = 0;
  return this;
}

void *awd::metrics::CommCenterCellularPlanPurchaseComplete::CommCenterCellularPlanPurchaseComplete(void *this)
{
  *this = &unk_284A5E788;
  this[1] = 0;
  v1 = MEMORY[0x277D82C30];
  this[3] = 0;
  this[4] = 0;
  this[2] = v1;
  return this;
}

double awd::metrics::CommCenterCellularPlanProfileSwitch::CommCenterCellularPlanProfileSwitch(awd::metrics::CommCenterCellularPlanProfileSwitch *this)
{
  *this = &unk_284A5E800;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 84) = 0;
  *(this + 80) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

void *awd::metrics::CommCenterCellularPlanPlanExpired::CommCenterCellularPlanPlanExpired(void *this)
{
  *this = &unk_284A5E878;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double awd::metrics::CommCenterCellularPlanBootstrapDataUsage::CommCenterCellularPlanBootstrapDataUsage(awd::metrics::CommCenterCellularPlanBootstrapDataUsage *this)
{
  *this = &unk_284A5E8F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t awd::metrics::CommCenterCellularPlanFailure::CommCenterCellularPlanFailure(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 32) = 0;
  *this = &unk_284A5E968;
  *(this + 8) = 0;
  *(this + 15) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::CommCenterCellularPlanBootstrapProvisioning(uint64_t this)
{
  *this = &unk_284A5E9E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::CommCenterRemoteCellularPlanSignUpFlow(uint64_t this)
{
  *this = &unk_284A5EA58;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = MEMORY[0x277D82C30];
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::CommCenterRemoteCellularPlanProfilesStatus(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_284A5EB48;
  *(this + 8) = 0;
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo(uint64_t this)
{
  *this = &unk_284A5EAD0;
  *(this + 8) = 0;
  *(this + 28) = 0;
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterManageAccount::CommCenterManageAccount(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A5EBC0;
  *(this + 24) = 0;
  return this;
}

void *awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::CommCenterRemoteCellularPlanSignUpCallBackReceived(void *this)
{
  this[4] = 0;
  *this = &unk_284A5EC38;
  this[1] = 0;
  this[2] = MEMORY[0x277D82C30];
  this[3] = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::CommCenterCellularPlanProfilesStatus(uint64_t this)
{
  *this = &unk_284A5ECB0;
  *(this + 8) = 0;
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

double awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::CommCenterCellularPlanProvisioningOperationDetails(awd::metrics::CommCenterCellularPlanProvisioningOperationDetails *this)
{
  *this = &unk_284A5ED28;
  *(this + 1) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 2) = 0;
  *(this + 3) = v1;
  result = 0.0;
  *(this + 4) = 0;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 7) = v1;
  *(this + 8) = v1;
  *(this + 20) = 0;
  *(this + 9) = v1;
  *(this + 12) = 0;
  *(this + 84) = 0;
  *(this + 46) = 0;
  return result;
}

awd::metrics::CommCenterCellularPlanProfileTransferDetails *awd::metrics::CommCenterCellularPlanProfileTransferDetails::CommCenterCellularPlanProfileTransferDetails(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this)
{
  *this = &unk_284A5EE18;
  awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedCtor(this);
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo(uint64_t this)
{
  *this = &unk_284A5EDA0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

double awd::metrics::CommCenterCellularPlanTransferDurations::CommCenterCellularPlanTransferDurations(awd::metrics::CommCenterCellularPlanTransferDurations *this)
{
  *(this + 11) = 0;
  *this = &unk_284A5EE90;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x277D82C30];
  *(this + 12) = 0;
  result = 0.0;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 72) = 0u;
  return result;
}

awd::metrics::CommCenterCellularPlanSourceTransferDetail *awd::metrics::CommCenterCellularPlanSourceTransferDetail::CommCenterCellularPlanSourceTransferDetail(awd::metrics::CommCenterCellularPlanSourceTransferDetail *this)
{
  *this = &unk_284A5EF08;
  awd::metrics::CommCenterCellularPlanSourceTransferDetail::SharedCtor(this);
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanIDSError::CommCenterCellularPlanIDSError(uint64_t this)
{
  *this = &unk_284A5EF80;
  *(this + 8) = 0;
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPendingProfileReleased::CommCenterCellularPlanPendingProfileReleased(uint64_t this)
{
  *(this + 36) = 0;
  *this = &unk_284A5EFF8;
  *(this + 8) = 0;
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanMonitorModeCompleted::CommCenterCellularPlanMonitorModeCompleted(uint64_t this)
{
  *this = &unk_284A5F070;
  *(this + 8) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 44) = 0;
  *(this + 52) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  return this;
}

void *awd::metrics::CommCenterCellularPlanEntitlementPushNotification::CommCenterCellularPlanEntitlementPushNotification(void *this)
{
  this[4] = 0;
  *this = &unk_284A5F0E8;
  this[1] = 0;
  this[2] = MEMORY[0x277D82C30];
  this[3] = 0;
  return this;
}

void *awd::metrics::CommCenterCellularPlanSimProvisioningPushNotification::CommCenterCellularPlanSimProvisioningPushNotification(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_284A5F160;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanCloudUploadDetails::CommCenterCellularPlanCloudUploadDetails(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_284A5F1D8;
  *(this + 24) = 0;
  *(this + 36) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterSubscriptionImeiChange::CommCenterSubscriptionImeiChange(uint64_t this)
{
  *this = &unk_284A5F250;
  *(this + 8) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 40) = v1;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanSimSetupUsage::CommCenterCellularPlanSimSetupUsage(uint64_t this)
{
  *(this + 96) = 0;
  *this = &unk_284A5F2C8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 36) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 40) = MEMORY[0x277D82C30];
  *(this + 48) = v1;
  *(this + 56) = v1;
  *(this + 64) = v1;
  *(this + 72) = v1;
  *(this + 80) = v1;
  *(this + 88) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::CommCenterTransferPlanListingStatus(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *this = &unk_284A5F3B8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::CommCenterTransferPlanListingStatus_ListingInfo(uint64_t this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_284A5F340;
  *(this + 8) = v1;
  *(this + 40) = v1;
  *(this + 48) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 56) = 0;
  return this;
}

void awd::metrics::CommCenterCellularProfile::MergeFrom(awd::metrics::CommCenterCellularProfile *this, const awd::metrics::CommCenterCellularProfile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  v5 = MEMORY[0x277D82C30];
  if (*(a2 + 48))
  {
    v6 = *(a2 + 1);
    *(this + 12) |= 1u;
    v7 = *(this + 1);
    if (v7 == v5)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 12);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 12) |= 2u;
  v9 = *(this + 2);
  if (v9 == v5)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 24);
  *(this + 12) |= 4u;
  *(this + 24) = v10;
  v4 = *(a2 + 12);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v12 = *(a2 + 7);
    *(this + 12) |= 0x10u;
    *(this + 7) = v12;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_19:
  v11 = *(a2 + 25);
  *(this + 12) |= 8u;
  *(this + 25) = v11;
  v4 = *(a2 + 12);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_21:
  v13 = *(a2 + 4);
  *(this + 12) |= 0x20u;
  v14 = *(this + 4);
  if (v14 == v5)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  if ((*(a2 + 12) & 0x40) != 0)
  {
LABEL_24:
    v15 = *(a2 + 10);
    if (v15 >= 3)
    {
      __assert_rtn("set_sim_type", "CCMetricsCP.pb.h", 5360, "::awd::metrics::CommCenterCellularSimType_IsValid(value)");
    }

    *(this + 12) |= 0x40u;
    *(this + 10) = v15;
  }
}

void sub_2373AA68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularProfile::~CommCenterCellularProfile(awd::metrics::CommCenterCellularProfile *this)
{
  *this = &unk_284A5E620;
  awd::metrics::CommCenterDataUsageWhileOnCall_AppUsage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E620;
  awd::metrics::CommCenterDataUsageWhileOnCall_AppUsage::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularProfile::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    v1 = MEMORY[0x277D82C30];
    if (*(this + 48))
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(this + 48) & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
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

    *(this + 24) = 0;
    *(this + 28) = 0;
    if ((*(this + 48) & 0x20) != 0)
    {
      v4 = *(this + 32);
      if (v4 != v1)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(awd::metrics::CommCenterCellularProfile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
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
            if (v8 != 2)
            {
              goto LABEL_34;
            }

            *(this + 12) |= 1u;
            if (*(this + 1) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 18)
            {
              *(a2 + 1) = v15 + 1;
              goto LABEL_37;
            }
          }

          else
          {
            if (v7 != 2)
            {
              if (v7 != 3 || (TagFallback & 7) != 0)
              {
                goto LABEL_34;
              }

              v11 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_43;
            }

            if (v8 != 2)
            {
              goto LABEL_34;
            }

LABEL_37:
            *(this + 12) |= 2u;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v18 < v9 && *v18 == 24)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
LABEL_43:
              v28 = 0;
              if (v11 >= v9 || (v19 = *v11, (v19 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
                if (!result)
                {
                  return result;
                }

                v19 = v28;
                v20 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v20 = v11 + 1;
                *(a2 + 1) = v20;
              }

              *(this + 24) = v19 != 0;
              *(this + 12) |= 4u;
              if (v20 < v9 && *v20 == 32)
              {
                v16 = v20 + 1;
                *(a2 + 1) = v16;
                goto LABEL_51;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 0x11)
        {
          break;
        }

        if (v7 != 18)
        {
          if (v7 == 19 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_76;
          }

          goto LABEL_34;
        }

        if (v8 != 2)
        {
          goto LABEL_34;
        }

        v17 = *(this + 12);
LABEL_69:
        *(this + 12) = v17 | 0x20;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v25 >= 2 && *v25 == 152 && v25[1] == 1)
        {
          v13 = (v25 + 2);
          *(a2 + 1) = v13;
LABEL_76:
          v29 = 0;
          if (v13 >= v12 || (v26 = *v13, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
            if (!result)
            {
              return result;
            }

            v26 = v29;
          }

          else
          {
            *(a2 + 1) = v13 + 1;
          }

          if (v26 <= 2)
          {
            *(this + 12) |= 0x40u;
            *(this + 10) = v26;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v16 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_51:
      v27 = 0;
      if (v16 >= v9 || (v21 = *v16, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!result)
        {
          return result;
        }

        v21 = v27;
        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v22 = (v16 + 1);
        *(a2 + 1) = v22;
      }

      *(this + 25) = v21 != 0;
      *(this + 12) |= 8u;
      if (v9 - v22 >= 2 && *v22 == 136 && v22[1] == 1)
      {
        v10 = (v22 + 2);
        *(a2 + 1) = v10;
LABEL_60:
        if (v10 >= v9 || (v23 = *v10, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v23;
          v24 = (v10 + 1);
          *(a2 + 1) = v24;
        }

        v17 = *(this + 12) | 0x10;
        *(this + 12) = v17;
        if (v9 - v24 >= 2 && *v24 == 146 && v24[1] == 1)
        {
          *(a2 + 1) = v24 + 2;
          goto LABEL_69;
        }
      }
    }

    if (v7 == 17 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_60;
    }

LABEL_34:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterCellularProfile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 48);
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

  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 25), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 48) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 28), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v10 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, v10, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularProfile::ByteSize(awd::metrics::CommCenterCellularProfile *this)
{
  v2 = *(this + 12);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v2 = *(this + 12);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = v10 + v6;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v2 = *(this + 12);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v3 += v17 + v13 + 1;
  }

LABEL_24:
  v4 = ((v2 >> 1) & 2) + v3 + ((v2 >> 2) & 2);
  if ((v2 & 0x10) != 0)
  {
    v18 = *(this + 7);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 2;
      v2 = *(this + 12);
    }

    else
    {
      v19 = 3;
    }

    v4 = (v19 + v4);
    if ((v2 & 0x20) == 0)
    {
LABEL_26:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  v20 = *(this + 4);
  v21 = *(v20 + 23);
  v22 = v21;
  v23 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v23;
  }

  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    v21 = *(v20 + 23);
    v23 = *(v20 + 8);
    v2 = *(this + 12);
    v22 = *(v20 + 23);
  }

  else
  {
    v25 = 1;
  }

  if (v22 < 0)
  {
    v21 = v23;
  }

  v4 = (v4 + v25 + v21 + 2);
  if ((v2 & 0x40) != 0)
  {
LABEL_41:
    v26 = *(this + 10);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 12;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 2;
    }

    else
    {
      v27 = 3;
    }

    v4 = (v27 + v4);
  }

LABEL_47:
  *(this + 11) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularProfile::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularProfile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterCellularProfile::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenterCellularPlanPurchaseEvent::~CommCenterCellularPlanPurchaseEvent(awd::metrics::CommCenterCellularPlanPurchaseEvent *this)
{
  *this = &unk_284A5E698;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E698;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseEvent::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 20) = 0;
    *(this + 8) = 0;
    *(this + 15) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseEvent::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanPurchaseEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 7) |= 1u;
        if (v14 < v7 && *v14 == 48)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          v26 = 0;
          if (v9 >= v7 || (v15 = *v9, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
            if (!result)
            {
              return result;
            }

            v15 = v26;
            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 16) = v15 != 0;
          *(this + 7) |= 2u;
          if (v16 < v7 && *v16 == 56)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            v25 = 0;
            if (v10 >= v7 || (v17 = *v10, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v17 = v25;
              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 17) = v17 != 0;
            *(this + 7) |= 4u;
            if (v18 < v7 && *v18 == 64)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      v24 = 0;
      if (v11 >= v7 || (v19 = *v11, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
        if (!result)
        {
          return result;
        }

        v19 = v24;
        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v20 = (v11 + 1);
        *(a2 + 1) = v20;
      }

      *(this + 18) = v19 != 0;
      *(this + 7) |= 8u;
      if (v7 - v20 >= 2 && *v20 == 136 && v20[1] == 1)
      {
        v8 = (v20 + 2);
        *(a2 + 1) = v8;
LABEL_57:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v21;
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 7) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 17 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_57;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 16), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 18), a2, a4);
    if ((*(v5 + 28) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 17), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseEvent::ByteSize(awd::metrics::CommCenterCellularPlanPurchaseEvent *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    if (v2)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 7);
    }

    else
    {
      v3 = 0;
    }

    v4 = (v2 & 2) + v3 + ((v2 >> 1) & 2) + ((v2 >> 2) & 2);
    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 5);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 2;
      }

      else
      {
        v6 = 3;
      }

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 6) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanPurchaseEvent::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(lpsrc + 28);
  if (!v5)
  {
    return;
  }

  if (*(lpsrc + 28))
  {
    v7 = lpsrc[1];
    *(this + 7) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 7);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = *(lpsrc + 17);
      *(this + 7) |= 4u;
      *(this + 17) = v9;
      v5 = *(lpsrc + 7);
      if ((v5 & 8) == 0)
      {
LABEL_9:
        if ((v5 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*(lpsrc + 28) & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(lpsrc + 16);
  *(this + 7) |= 2u;
  *(this + 16) = v8;
  v5 = *(lpsrc + 7);
  if ((v5 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v5 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = *(lpsrc + 18);
  *(this + 7) |= 8u;
  *(this + 18) = v10;
  if ((*(lpsrc + 7) & 0x10) != 0)
  {
LABEL_10:
    v6 = *(lpsrc + 5);
    *(this + 7) |= 0x10u;
    *(this + 5) = v6;
  }
}

void sub_2373AB734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanPurchaseFetch::~CommCenterCellularPlanPurchaseFetch(awd::metrics::CommCenterCellularPlanPurchaseFetch *this)
{
  *this = &unk_284A5E710;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E710;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseFetch::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseFetch::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanPurchaseFetch *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseFetch::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseFetch::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::CommCenterCellularPlanPurchaseFetch::CheckTypeAndMergeFrom(char **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(lpsrc + 20))
  {
    v5 = lpsrc[1];
    *(this + 5) |= 1u;
    this[1] = v5;
  }
}

void sub_2373ABA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanPurchaseComplete::~CommCenterCellularPlanPurchaseComplete(awd::metrics::CommCenterCellularPlanPurchaseComplete *this)
{
  *this = &unk_284A5E788;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E788;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseComplete::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseComplete::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanPurchaseComplete *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
          }

          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v14 >= v13 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v15;
            v16 = v14 + 1;
            *(a2 + 1) = v16;
          }

          v19 = *(this + 9) | 1;
          *(this + 9) = v19;
          if (v16 < v13 && *v16 == 34)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 4)
          {
            if (v7 != 6 || (TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_46;
          }

          if (v8 != 2)
          {
            goto LABEL_31;
          }

          v19 = *(this + 9);
LABEL_40:
          *(this + 9) = v19 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v20 < v9 && *v20 == 48)
          {
            v11 = v20 + 1;
            *(a2 + 1) = v11;
LABEL_46:
            v32 = 0;
            if (v11 >= v9 || (v21 = *v11, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
              if (!result)
              {
                return result;
              }

              v21 = v32;
              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v22 = v11 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 24) = v21 != 0;
            *(this + 9) |= 4u;
            if (v22 < v9 && *v22 == 56)
            {
              v17 = v22 + 1;
              *(a2 + 1) = v17;
              goto LABEL_54;
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_70;
          }
        }

        else if (v7 == 17 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_79;
        }

        goto LABEL_31;
      }

      if (v7 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_31;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_54:
      v32 = 0;
      if (v17 >= v9 || (v23 = *v17, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
        if (!result)
        {
          return result;
        }

        v23 = v32;
        v24 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v24 = v17 + 1;
        *(a2 + 1) = v24;
      }

      *(this + 25) = v23 != 0;
      *(this + 9) |= 8u;
      if (v24 < v9 && *v24 == 64)
      {
        v10 = v24 + 1;
        *(a2 + 1) = v10;
LABEL_62:
        v32 = 0;
        if (v10 >= v9 || (v25 = *v10, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
          if (!result)
          {
            return result;
          }

          v25 = v32;
          v26 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v26 = v10 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 26) = v25 != 0;
        *(this + 9) |= 0x10u;
        if (v26 < v9 && *v26 == 72)
        {
          v18 = v26 + 1;
          *(a2 + 1) = v18;
LABEL_70:
          v32 = 0;
          if (v18 >= v9 || (v27 = *v18, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
            if (!result)
            {
              return result;
            }

            v27 = v32;
            v28 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v28 = (v18 + 1);
            *(a2 + 1) = v28;
          }

          *(this + 27) = v27 != 0;
          *(this + 9) |= 0x20u;
          if (v9 - v28 >= 2 && *v28 == 136 && v28[1] == 1)
          {
            v12 = (v28 + 2);
            *(a2 + 1) = v12;
LABEL_79:
            if (v12 >= v9 || (v29 = *v12, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v30 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v29;
              v30 = v12 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 9) |= 0x40u;
            if (v30 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 8 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_31:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseComplete::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 25), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 27), a2, a4);
    if ((*(v5 + 36) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 26), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v8 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanPurchaseComplete::ByteSize(awd::metrics::CommCenterCellularPlanPurchaseComplete *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
    v5 = *(this + 2);
    v6 = *(v5 + 23);
    v7 = v6;
    v8 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v2 = *(this + 9);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 += v10 + v6 + 1;
    goto LABEL_16;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v11.i64[0] = 0x200000002;
  v11.i64[1] = 0x200000002;
  v4 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2373DF0D0), v11)) + v3);
  if ((v2 & 0x40) != 0)
  {
    v12 = *(this + 7);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 2;
    }

    else
    {
      v13 = 3;
    }

    v4 = (v13 + v4);
  }

LABEL_21:
  *(this + 8) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanPurchaseComplete::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v5) = *(lpsrc + 36);
  if (!v5)
  {
    return;
  }

  if (*(lpsrc + 36))
  {
    v7 = lpsrc[1];
    *(this + 9) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 9);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*(lpsrc + 36) & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = lpsrc[2];
  *(this + 9) |= 2u;
  v9 = this[2];
  if (v9 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v5 = *(lpsrc + 9);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(lpsrc + 24);
  *(this + 9) |= 4u;
  *(this + 24) = v10;
  v5 = *(lpsrc + 9);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v12 = *(lpsrc + 26);
    *(this + 9) |= 0x10u;
    *(this + 26) = v12;
    v5 = *(lpsrc + 9);
    if ((v5 & 0x20) == 0)
    {
LABEL_11:
      if ((v5 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  v11 = *(lpsrc + 25);
  *(this + 9) |= 8u;
  *(this + 25) = v11;
  v5 = *(lpsrc + 9);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  v13 = *(lpsrc + 27);
  *(this + 9) |= 0x20u;
  *(this + 27) = v13;
  if ((*(lpsrc + 9) & 0x40) != 0)
  {
LABEL_12:
    v6 = *(lpsrc + 7);
    *(this + 9) |= 0x40u;
    *(this + 7) = v6;
  }
}